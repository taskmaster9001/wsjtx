program wsprlfsim

! Simulate characteristics of a potential "WSPR-LF" mode using LDPC (300,60)
! code, OQPSK modulation, and 5 minute T/R sequences.

! Reception and Demodulation algorithm:
!   1. Compute coarse spectrum; find fc1 = approx carrier freq
!   2. Mix from fc1 to 0; LPF at +/- 0.75*R
!   3. Square, FFT; find peaks near -R/2 and +R/2 to get fc2
!   4. Mix from fc2 to 0
!   5. Fit cb13 (central part of csync) to c -> lag, phase
!   6. Fit complex ploynomial for channel equalization
!   7. Get soft bits from equalized data

  parameter (KK=60)                     !Information bits (50 + CRC10)
  parameter (ND=300)                    !Data symbols: LDPC (300,60), r=1/5
  parameter (NS=109)                    !Sync symbols (2 x 48 + Barker 13)
  parameter (NR=3)                      !Ramp up/down
  parameter (NN=NR+NS+ND)               !Total symbols (412)
  parameter (NSPS=16)                   !Samples per MSK symbol (16)
  parameter (N2=2*NSPS)                 !Samples per OQPSK symbol (32)
  parameter (N13=13*N2)                 !Samples in central sync vector (416)
  parameter (NZ=NSPS*NN)                !Samples in baseband waveform (6592)
  parameter (NFFT1=4*NSPS,NH1=NFFT1/2)

! Q: Would it be better for central Sync array to use both I and Q channels?
  
  character*8 arg
  complex cbb(0:NZ-1)                   !Complex baseband waveform
  complex csync(0:NZ-1)                 !Sync symbols only, from cbb
  complex cb13(0:N13-1)                 !Barker 13 waveform
  complex c(0:NZ-1)                     !Complex waveform
  complex c0(0:NZ-1)                    !Complex waveform
  complex zz(NS+ND)                     !Complex symbol values (intermediate)
  complex z
  real xnoise(0:NZ-1)                   !Generated random noise
  real ynoise(0:NZ-1)                   !Generated random noise
  real rxdata(ND),llr(ND)               !Soft symbols
  real pp(2*NSPS)                       !Shaped pulse for OQPSK
  real a(5)                             !For twkfreq1
  real aa(20),bb(20)                    !Fitted polyco's
  integer id(NS+ND)                     !NRZ values (+/-1) for Sync and Data
  integer ierror(NS+ND)
  integer icw(NN)
  integer*1 msgbits(KK),decoded(KK),apmask(ND),cw(ND)
!  integer*1 codeword(ND)
  data msgbits/0,0,1,0,0,1,1,1,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,0,0,1, &
       1,1,1,0,1,1,1,1,1,1,1,0,0,1,0,0,1,1,0,1,1,0,1,0,1,1,0,0,1,1/
  nargs=iargc()
  if(nargs.ne.6) then
     print*,'Usage:   wsprlfsim f0(Hz) delay(ms) fspread(Hz) maxn iters snr(dB)'
     print*,'Example: wsprlfsim 0 0 0 5 10 -20'
     print*,'Set snr=0 to cycle through a range'
     go to 999
  endif
  call getarg(1,arg)
  read(arg,*) f0                         !Generated carrier frequency
  call getarg(2,arg)
  read(arg,*) delay                      !Delta_t (ms) for Watterson model
  call getarg(3,arg)
  read(arg,*) fspread                    !Fspread (Hz) for Watterson model
  call getarg(4,arg)
  read(arg,*) maxn                       !Max nterms for polyfit
  call getarg(5,arg)
  read(arg,*) iters                      !Iterations at each SNR
  call getarg(6,arg)
  read(arg,*) snrdb                      !Specified SNR_2500

  twopi=8.0*atan(1.0)
  fs=12000.0/540.0                       !Sample rate = 22.2222... Hz
  dt=1.0/fs                              !Sample interval (s)
  tt=NSPS*dt                             !Duration of "itone" symbols (s)
  ts=2*NSPS*dt                           !Duration of OQPSK symbols (s)
  baud=1.0/tt                            !Keying rate for "itone" symbols (baud)
  txt=NZ*dt                              !Transmission length (s)
  bandwidth_ratio=2500.0/(fs/2.0)
  write(*,1000) f0,delay,fspread,maxn,iters,baud,3*baud,txt
1000 format('f0:',f5.1,'  Delay:',f4.1,'  fSpread:',f5.2,'  maxn:',i3,   &
          '  Iters:',i6/'Baud:',f7.3,'  BW:',f5.1,'  TxT:',f5.1,f5.2/)
  write(*,1004)
1004 format(/'  SNR     sync   data   ser     ber    fer   fsigma  tsigma'/60('-'))

  do i=1,N2                              !Half-sine pulse shape
     pp(i)=sin(0.5*(i-1)*twopi/(2*NSPS))
  enddo

  call genwsprlf(msgbits,id,icw,cbb,csync)!Generate baseband waveform and csync
  cb13=csync(3088:3503)                  !Copy the Barker 13 waveform
  a=0.
  a(1)=f0
  call twkfreq1(cbb,NZ,fs,a,cbb)         !Mix to specified frequency

!  write(*,3101) id
!3101 format(20i3)

  isna=-20
  isnb=-40
  if(snrdb.ne.0.0) then
     isna=nint(snrdb)
     isnb=isna
  endif
  do isnr=isna,isnb,-1                   !Loop over SNR range
     if(isna.ne.isnb) snrdb=isnr
     sig=sqrt(bandwidth_ratio) * 10.0**(0.05*snrdb)
     if(snrdb.gt.90.0) sig=1.0
     nhard=0
     nhardsync=0
     nfe=0
     sqf=0.
     sqt=0.
     do iter=1,iters                     !Loop over requested iterations
        c=cbb 
        if(delay.ne.0.0 .or. fspread.ne.0.0) then
           call watterson(c,NZ,fs,delay,fspread)
        endif
        c=sig*c                          !Scale to requested SNR
        if(snrdb.lt.90) then
           do i=0,NZ-1                   !Generate gaussian noise
              xnoise(i)=gran()
              ynoise(i)=gran()
           enddo
           c=c + cmplx(xnoise,ynoise)    !Add AWGN noise
        endif

        call getfc1w(c,fs,fc1)               !First approx for freq
        call getfc2w(c,csync,fs,fc1,fc2,fc3) !Refined freq
        sqf=sqf + (fc1+fc2-f0)**2
        
!NB: Measured performance is about equally good using fc2 or fc3 here:
        a(1)=-(fc1+fc2)
        a(2:5)=0.
        call twkfreq1(c,NZ,fs,a,c)       !Mix c down by fc1+fc2

! The following may not be necessary?
!        z=sum(c(3088:3503)*cb13)/208.0     !Get phase from Barker 13 vector
!        z0=z/abs(z)
!        c=c*conjg(z0)

!---------------------------------------------------------------- DT
! Not presently used:
        amax=0.
        jpk=0
        iaa=0
        ibb=NZ-1
        do j=-20*NSPS,20*NSPS            !Get jpk
!           z=sum(c(3088+j:3503+j)*conjg(cb13))/208.0
           ia=j
           ib=NZ-1+j
           if(ia.lt.0) then
              ia=0
              iaa=-j
           else
              iaa=0
           endif
           if(ib.gt.NZ-1) then
              ib=NZ-1
              ibb=NZ-1-j
           endif
           z=sum(c(ia:ib)*conjg(csync(iaa:ibb)))
           if(abs(z).gt.amax) then
              amax=abs(z)
              jpk=j
           endif
        enddo
        xdt=jpk/fs
        sqt=sqt + xdt**2
!-----------------------------------------------------------------        

        nterms=maxn
        c0=c
        do itry=1,20
           idf=itry/2
           if(mod(itry,2).eq.0) idf=-idf
           nhard0=0
           nhardsync0=0
           ifer=1
           a(1)=idf*0.00085
           a(2:5)=0.
           call twkfreq1(c0,NZ,fs,a,c)       !Mix c0 into c
           call cpolyfitw(c,pp,id,maxn,aa,bb,zz,nhs)
           call msksoftsymw(zz,aa,bb,id,nterms,ierror,rxdata,nhard0,nhardsync0)
           if(nhardsync0.gt.35) cycle
           rxav=sum(rxdata)/ND
           rx2av=sum(rxdata*rxdata)/ND
           rxsig=sqrt(rx2av-rxav*rxav)
           rxdata=rxdata/rxsig
           ss=0.84
           llr=2.0*rxdata/(ss*ss)
           apmask=0
           max_iterations=40
           ifer=0
           call bpdecode300(llr,apmask,max_iterations,decoded,niterations,cw)
           nbadcrc=0
           if(niterations.ge.0) call chkcrc10(decoded,nbadcrc)
           if(niterations.lt.0 .or. count(msgbits.ne.decoded).gt.0 .or.     &
                nbadcrc.ne.0) ifer=1
           if(ifer.eq.0) exit
        enddo                                !Freq dither loop
        nhard=nhard+nhard0
        nhardsync=nhardsync+nhardsync0
        nfe=nfe+ifer
        if(nhardsync0+nhard0+niterations+ifer.gt.0) write(42,1045) snrdb,  &
             nhardsync0,nhard0,niterations,ifer,xdt
1045    format(f6.1,4i6,f8.2)
     enddo

     fsigma=sqrt(sqf/iters)
     tsigma=sqrt(sqt/iters)
     ser=float(nhardsync)/(NS*iters)
     ber=float(nhard)/(ND*iters)
     fer=float(nfe)/iters
     write(*,1050)  snrdb,nhardsync,nhard,ser,ber,fer,fsigma,tsigma
1050 format(f6.1,2i7,2f8.4,f7.3,2f8.2)
  enddo
  write(*,1060) NS*iters,ND*iters
1060 format(60('-')/6x,2i7)

999 end program wsprlfsim
