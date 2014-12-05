FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	 #   WSJTAppDelegate.applescript    
 �   :     W S J T A p p D e l e g a t e . a p p l e s c r i p t      l     ��  ��       KVASD-installer     �   "     K V A S D - i n s t a l l e r      l     ��������  ��  ��        l     ��  ��    V P    This script is a drag and drop target that expects a WSJT-X app bundle path.     �   �         T h i s   s c r i p t   i s   a   d r a g   a n d   d r o p   t a r g e t   t h a t   e x p e c t s   a   W S J T - X   a p p   b u n d l e   p a t h .      l     ��  ��    U O    It can also be opened with a file list or by dropping a suitable WSJT-X app     �   �         I t   c a n   a l s o   b e   o p e n e d   w i t h   a   f i l e   l i s t   o r   b y   d r o p p i n g   a   s u i t a b l e   W S J T - X   a p p      l     ��   ��    Q K    bundle onto it. Alternatively a target WSJT-X application bundle may be      � ! ! �         b u n d l e   o n t o   i t .   A l t e r n a t i v e l y   a   t a r g e t   W S J T - X   a p p l i c a t i o n   b u n d l e   m a y   b e   " # " l     �� $ %��   $ > 8    selected by clicking the "Choose target ..." button.    % � & & p         s e l e c t e d   b y   c l i c k i n g   t h e   " C h o o s e   t a r g e t   . . . "   b u t t o n . #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + U O    It fetches the KVASD EULA text and displays it in a dialog which the reader    , � - - �         I t   f e t c h e s   t h e   K V A S D   E U L A   t e x t   a n d   d i s p l a y s   i t   i n   a   d i a l o g   w h i c h   t h e   r e a d e r *  . / . l     �� 0 1��   0 U O    must at least scroll to the end before clicking the Agree button which then    1 � 2 2 �         m u s t   a t   l e a s t   s c r o l l   t o   t h e   e n d   b e f o r e   c l i c k i n g   t h e   A g r e e   b u t t o n   w h i c h   t h e n /  3 4 3 l     �� 5 6��   5 V P    downloads the appropriate KVASD executable. The MD5 hash checksum is checked    6 � 7 7 �         d o w n l o a d s   t h e   a p p r o p r i a t e   K V A S D   e x e c u t a b l e .   T h e   M D 5   h a s h   c h e c k s u m   i s   c h e c k e d 4  8 9 8 l     �� : ;��   : "     on the KVASD executable.    ; � < < 8         o n   t h e   K V A S D   e x e c u t a b l e . 9  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A T N    Once the EULA has been accepted the "Install" button is enabled to install    B � C C �         O n c e   t h e   E U L A   h a s   b e e n   a c c e p t e d   t h e   " I n s t a l l "   b u t t o n   i s   e n a b l e d   t o   i n s t a l l @  D E D l     �� F G��   F S M    the KVASD executable into the target WSJT-X application bundle(s) and the    G � H H �         t h e   K V A S D   e x e c u t a b l e   i n t o   t h e   t a r g e t   W S J T - X   a p p l i c a t i o n   b u n d l e ( s )   a n d   t h e E  I J I l     �� K L��   K R L    RPATHs are modified to reference the libgcc support libraries inside the    L � M M �         R P A T H s   a r e   m o d i f i e d   t o   r e f e r e n c e   t h e   l i b g c c   s u p p o r t   l i b r a r i e s   i n s i d e   t h e J  N O N l     �� P Q��   P $     WSJT-X application bundle.    Q � R R <         W S J T - X   a p p l i c a t i o n   b u n d l e . O  S T S l     ��������  ��  ��   T  U V U l     �� W X��   W 9 3  Created by Bill Somerville (G4WJS) on 12/11/2014.    X � Y Y f     C r e a t e d   b y   B i l l   S o m e r v i l l e   ( G 4 W J S )   o n   1 2 / 1 1 / 2 0 1 4 . V  Z [ Z l     ��������  ��  ��   [  \ ] \ l     �� ^ _��   ^ Y S  The author of this work hereby waives all claim of copyright (economic and moral)    _ � ` ` �     T h e   a u t h o r   o f   t h i s   w o r k   h e r e b y   w a i v e s   a l l   c l a i m   o f   c o p y r i g h t   ( e c o n o m i c   a n d   m o r a l ) ]  a b a l     �� c d��   c ^ X  in this work and immediately places it in the public domain; it may be used, distorted    d � e e �     i n   t h i s   w o r k   a n d   i m m e d i a t e l y   p l a c e s   i t   i n   t h e   p u b l i c   d o m a i n ;   i t   m a y   b e   u s e d ,   d i s t o r t e d b  f g f l     �� h i��   h c ]  or destroyed in any manner whatsoever without further attribution or notice to the creator.    i � j j �     o r   d e s t r o y e d   i n   a n y   m a n n e r   w h a t s o e v e r   w i t h o u t   f u r t h e r   a t t r i b u t i o n   o r   n o t i c e   t o   t h e   c r e a t o r . g  k l k l     ��������  ��  ��   l  m n m l     ��������  ��  ��   n  o p o l     �� q r��   q ( " curl wraps cURL to download files    r � s s D   c u r l   w r a p s   c U R L   t o   d o w n l o a d   f i l e s p  t u t h     �� v�� 0 curl   v k       w w  x y x i      z { z I      �� |���� 0 download   |  } ~ } o      ���� 0 url   ~   �  o      ���� 0 filename fileName �  ��� � o      ���� 0 destination  ��  ��   { k     / � �  � � � r      � � � b      � � � o     ���� 0 destination   � o    ���� 0 filename fileName � o      ���� 0 file   �  � � � Q    * � � � � I  	 �� ���
�� .sysoexecTEXT���     TEXT � b   	  � � � b   	  � � � b   	  � � � b   	  � � � m   	 
 � � � � � P c u r l   - - f a i l   - - r e t r y   5   - - s i l e n t   - - o u t p u t   � o   
 ���� 0 file   � m     � � � � �    � o    ���� 0 url   � o    ���� 0 filename fileName��   � R      ������
�� .ascrerr ****      � ****��  ��   � R    *�� ���
�� .ascrerr ****      � **** � b     ) � � � b     ' � � � b     % � � � b     # � � � m     ! � � � � � < A n   e r r o r   o c c u r r e d   d o w n l o a d i n g : � o   ! "��
�� 
ret  � o   # $��
�� 
ret  � o   % &���� 0 url   � o   ' (���� 0 filename fileName��   �  ��� � L   + / � � c   + . � � � o   + ,���� 0 file   � m   , -��
�� 
psxf��   y  � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� 0 downloadmd5 downloadMD5 �  � � � o      ���� 0 url   �  ��� � o      ���� 0 filename fileName��  ��   � k     ) � �  � � � r      � � � m      � � � � �  . m d 5 � o      ���� 0 md5ext md5Ext �  ��� � Q    ) � � � � L     � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � b     � � � b    
 � � � m     � � � � � > c u r l   - - f a i l   - - r e t r y   5   - - s i l e n t   � o    	���� 0 url   � o   
 ���� 0 filename fileName � l 
   ����� � o    ���� 0 md5ext md5Ext��  ��   � m     � � � � � �   |   a w k   ' { m a t c h ( $ 0 , " [ [ : x d i g i t : ] ] { 3 2 } " ) ;   p r i n t   s u b s t r ( $ 0 , R S T A R T , R L E N G T H ) } '��   � R      ������
�� .ascrerr ****      � ****��  ��   � R    )�� ���
�� .ascrerr ****      � **** � b    ( � � � b    & � � � b    $ � � � b    " � � � m      � � � � � : A n   e r r o r   o c c u r r e d   d o w n l o a d i n g � o     !��
�� 
ret  � o   " #��
�� 
ret  � o   $ %���� 0 filename fileName � o   & '���� 0 md5ext md5Ext��  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � A ; kvasd looks after fetching kvasd files from the web source    � � � � v   k v a s d   l o o k s   a f t e r   f e t c h i n g   k v a s d   f i l e s   f r o m   t h e   w e b   s o u r c e �  � � � h    �� ��� 	0 kvasd   � k       � �  � � � j     �� ��� 0 
serverpath 
serverPath � m      � � � � � n h t t p s : / / s v n . c o d e . s f . n e t / p / w s j t / w s j t / t r u n k / k v a s d - b i n a r y / �  � � � j    �� ��� 0 destination   � m     � � � � � 
 / t m p / �  � � � j    �� ��� 0 
targetname 
targetName � m     � � � � � 
 k v a s d �  � � � l     ��������  ��  ��   �  � � � i   	  � � � I      �������� 0 	fetcheula 	fetchEULA��  ��   � L      � � n     � � � I    �� ����� 0 download   �  � � � o    
���� 0 
serverpath 
serverPath �  � � � b   
    o   
 ���� 0 
targetname 
targetName m     �  _ e u l a . t x t � �� o    ���� 0 destination  ��  ��   � o     ���� 0 curl   �  l     ��������  ��  ��    i    	
	 I      �������� 0 fetchbinary fetchBinary��  ��  
 k     i  r      b      o     ���� 0 
serverpath 
serverPath I   ����
�� .sysoexecTEXT���     TEXT b     m     � 4 e c h o   ` u n a m e   - s ` - ` u n a m e   - m ` m     �  /��   o      �� 0 url    r    ! n    I    �~�}�~ 0 downloadmd5 downloadMD5  !  o    �|�| 0 url  ! "�{" o    �z�z 0 
targetname 
targetName�{  �}   o    �y�y 0 curl   o      �x�x 0 md5sum md5Sum #$# r   " 8%&% n  " 6'(' I   ' 6�w)�v�w 0 download  ) *+* o   ' (�u�u 0 url  + ,-, o   ( -�t�t 0 
targetname 
targetName- .�s. o   - 2�r�r 0 destination  �s  �v  ( o   " '�q�q 0 curl  & o      �p�p 0 file  $ /0/ r   9 F121 I  9 D�o3�n
�o .sysoexecTEXT���     TEXT3 b   9 @454 b   9 >676 m   9 :88 �99  m d 5  7 l  : =:�m�l: n   : =;<; 1   ; =�k
�k 
psxp< o   : ;�j�j 0 file  �m  �l  5 m   > ?== �>>     |   c u t   - d '   '   - f 4�n  2 o      �i�i 0 md5calc md5Calc0 ?�h? Z   G i@A�g�f@ >   G JBCB o   G H�e�e 0 md5calc md5CalcC o   H I�d�d 0 md5sum md5SumA R   M e�cDE
�c .ascrerr ****      � ****D b   Q dFGF b   Q bHIH b   Q `JKJ b   Q ^LML b   Q \NON b   Q ZPQP b   Q XRSR b   Q VTUT b   Q TVWV m   Q RXX �YY J K V A S D   d o w n l o a d   c o r r u p t   M D 5   h a s h   c h e c kW o   R S�b
�b 
ret U l 
 T UZ�a�`Z o   T U�_
�_ 
ret �a  �`  S m   V W[[ �\\    e x p e c t e d   [Q o   X Y�^�^ 0 md5sum md5SumO m   Z []] �^^  ]M l 
 \ ]_�]�\_ o   \ ]�[
�[ 
ret �]  �\  K m   ^ _`` �aa        a c t u a l   [I o   ` a�Z�Z 0 md5calc md5CalcG l 	 b cb�Y�Xb m   b ccc �dd  ]�Y  �X  E �We�V
�W 
errne m   O P�U�U��V  �g  �f  �h   fgf l     �T�S�R�T  �S  �R  g hih i    jkj I      �Q�P�O�Q 0 savelicense saveLicense�P  �O  k k     *ll mnm r     opo l 	   q�N�Mq I    �L�Kr
�L .sysostflalis    ��� null�K  r �Jst
�J 
prmps l 	  u�I�Hu m    vv �ww B S p e c i f y   f o l d e r   t o   s a v e   l i c e n s e   t o�I  �H  t �Gx�F
�G 
dflcx l   	y�E�Dy I   	�Cz�B
�C .earsffdralis        afdrz m    �A
�A afdrdocs�B  �E  �D  �F  �N  �M  p o      �@�@ 0 dest  n {�?{ O   *|}| l 	  )~�>�=~ I   )�<�
�< .coreclon****      � **** c    #��� l   !��;�:� b    !��� b    ��� o    �9�9 0 destination  � o    �8�8 0 
targetname 
targetName� m     �� ���  _ e u l a . t x t�;  �:  � m   ! "�7
�7 
psxf� �6��5
�6 
insh� o   $ %�4�4 0 dest  �5  �>  �=  } m    ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  �?  i ��� l     �3�2�1�3  �2  �1  � ��0� i    ��� I      �/�.�-�/ 0 printlicense printLicense�.  �-  � O    ��� l 	  ��,�+� I   �*��)
�* .aevtpdocnull���     obj � c    ��� l   ��(�'� b    ��� b    ��� o    	�&�& 0 destination  � o   	 �%�% 0 
targetname 
targetName� m    �� ���  _ e u l a . t x t�(  �'  � m    �$
�$ 
psxf�)  �,  �+  � m     ���                                                                                  MACS  alis    l  	vbox-os-x                  Π�H+   ��
Finder.app                                                      ���\��        ����  	                CoreServices    Π�      �\�r     �� Hp Hn  3vbox-os-x:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p   	 v b o x - o s - x  &System/Library/CoreServices/Finder.app  / ��  �0   � ��� l     �#�"�!�#  �"  �!  � ��� h    � ��  "0 wsjtappdelegate WSJTAppDelegate� k      �� ��� j     ��
� 
pare� 4     ��
� 
pcls� m    �� ���  N S O b j e c t� ��� l     ����  �  �  � ��� j   	 ��� 0 licenceagreed licenceAgreed� m   	 
�
� boovfals� ��� l     ����  �  �  � ��� j    ��� 0 
mainwindow 
mainWindow� m    �
� 
msng� ��� j    ��� 0 eulatextview eulaTextView� m    �
� 
msng� ��� j    ��� 0 progressbar progressBar� m    �
� 
msng� ��� j    ��� 0 
savebutton 
saveButton� m    �
� 
msng� ��� j    ��� 0 printbutton printButton� m    �
� 
msng� ��� j    ��� 0 agreecheckbox agreeCheckBox� m    �

�
 
msng� ��� j     �	��	 (0 choosetargetbutton chooseTargetButton� m    �
� 
msng� ��� j   ! #��� 0 installbutton installButton� m   ! "�
� 
msng� ��� l     ����  �  �  � ��� j   $ '��� $0 bundlestoprocess bundlesToProcess� J   $ &��  � ��� l     � �����   ��  ��  � ��� p   ( (�� ������ 60 defaultnotificationcentre defaultNotificationCentre��  � ��� l     ��������  ��  ��  � ��� i   ( +��� I      ������� 	0 split  � ��� o      ���� 0 thetext theText� ���� o      ���� 0 thedelimiters theDelimiters��  ��  � k     �� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelimiters oldDelimiters� ��� r    ��� o    ���� 0 thedelimiters theDelimiters� n     ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� l   ������ n    ��� 2   ��
�� 
citm� o    ���� 0 thetext theText��  ��  � o      ���� 0 	theresult 	theResult� ��� r    ��� o    ���� 0 olddelimiters oldDelimiters� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    �� o    ���� 0 	theresult 	theResult��  � ��� l     ��������  ��  ��  � ��� l     ������  �   do the install   � �      d o   t h e   i n s t a l l�  i   , / I      �������� 0 process  ��  ��   X    ��� Q   �	 k   �

  r    ! n    I    ������ "0 bundlewithpath_ bundleWithPath_ �� o    ���� 0 
bundlepath 
bundlePath��  ��   n    o    ���� 0 nsbundle NSBundle m    ��
�� misccura o      ���� 0 wsjtxbundle wsjtxBundle  Z   " H���� G   " 3 =   " % o   " #���� 0 wsjtxbundle wsjtxBundle m   # $��
�� 
msng >   ( 1 c   ( /  n  ( -!"! I   ) -�������� $0 bundleidentifier bundleIdentifier��  ��  " o   ( )���� 0 wsjtxbundle wsjtxBundle  m   - .��
�� 
ctxt m   / 0## �$$  o r g . k 1 j t . w s j t x R   6 D��%&
�� .ascrerr ****      � ****% c   : C'(' b   : A)*) b   : ?+,+ b   : =-.- m   : ;// �00 \ N o t   a n   a p p r o p r i a t e   W S J T - X   a p p l i c a t i o n   b u n d l e :  . o   ; <��
�� 
ret , l 
 = >1����1 o   = >��
�� 
ret ��  ��  * o   ? @���� 0 
bundlepath 
bundlePath( m   A B��
�� 
ctxt& ��2��
�� 
errn2 m   8 9�������  ��  ��   343 r   I R565 c   I P787 n  I N9:9 I   J N�������� 0 
bundlepath 
bundlePath��  ��  : o   I J���� 0 wsjtxbundle wsjtxBundle8 m   N O��
�� 
ctxt6 o      ���� 0 installroot installRoot4 ;<; I  S u��=>
�� .sysodlogaskr        TEXT= b   S \?@? b   S ZABA b   S XCDC m   S VEE �FF H I n s t a l l   K V A S D   i n t o   A p l i c a t i o n   B u n d l eD o   V W��
�� 
ret B l 
 X YG����G o   X Y��
�� 
ret ��  ��  @ l 
 Z [H����H o   Z [���� 0 installroot installRoot��  ��  > ��IJ
�� 
btnsI J   _ gKK LML m   _ bNN �OO  O kM P��P m   b eQQ �RR  S k i p��  J ��S��
�� 
dfltS J   j oTT U��U m   j mVV �WW  O k��  ��  < X��X Z   v�YZ����Y =   v �[\[ n   v }]^] 1   y }��
�� 
bhit^ 1   v y��
�� 
rslt\ m   } �__ �``  O kZ Q   ��abca k   �cdd efe r   � �ghg b   � �iji b   � �klk o   � ����� 0 installroot installRootl m   � �mm �nn   / C o n t e n t s / M a c O S /j n  � �opo o   � ����� 0 
targetname 
targetNamep o   � ����� 	0 kvasd  h o      ���� 
0 target  f qrq I  � ���s��
�� .ascrcmnt****      � ****s I  � ���t��
�� .sysoexecTEXT���     TEXTt b   � �uvu b   � �wxw b   � �yzy b   � �{|{ m   � �}} �~~  m v  | n  � �� o   � ����� 0 destination  � o   � ����� 	0 kvasd  z n  � ���� o   � ����� 0 
targetname 
targetName� o   � ����� 	0 kvasd  x 1   � ���
�� 
spacv o   � ����� 
0 target  ��  ��  r ��� X   �1����� Z   �,������� F   � ���� E   � ���� o   � ����� 0 theline theLine� m   � ��� ���  . d y l i b� H   � ��� E   � ���� o   � ����� 0 theline theLine� m   � ��� ���  l i b S y s t e m� k   �(�� ��� r   ���� n   � ���� 4 � ����
�� 
cobj� m   � ����� � I   � �������� 	0 split  � ��� o   � ����� 0 theline theLine� ���� J   � ��� ��� 1   � ���
�� 
tab � ���� 1   � ���
�� 
spac��  ��  ��  � o      ���� 0 thedylib theDylib� ���� I (�����
�� .ascrcmnt****      � ****� I $�����
�� .sysoexecTEXT���     TEXT� b   ��� b  ��� b  ��� b  ��� b  ��� m  �� ��� 4 i n s t a l l _ n a m e _ t o o l   - c h a n g e  � o  ���� 0 thedylib theDylib� m  
�� ��� $   @ e x e c u t a b l e _ p a t h /� n  ��� 4 ���
�� 
cobj� m  ������� I  ������� 	0 split  � ��� o  ���� 0 thedylib theDylib� ���� J  �� ���� m  �� ���  /��  ��  ��  � 1  �
� 
spac� o  �~�~ 
0 target  ��  ��  ��  ��  ��  �� 0 theline theLine� n   � ���� 2  � ��}
�} 
cpar� l  � ���|�{� I  � ��z��y
�z .sysoexecTEXT���     TEXT� b   � ���� m   � ��� ���  o t o o l   - L  � o   � ��x�x 
0 target  �y  �|  �{  � ��� I 2?�w��v
�w .ascrcmnt****      � ****� I 2;�u��t
�u .sysoexecTEXT���     TEXT� b  27��� m  25�� ���  c h m o d   + x  � o  56�s�s 
0 target  �t  �v  � ��r� I @c�q��
�q .sysodisAaleR        TEXT� b  @I��� b  @G��� b  @E��� m  @C�� ��� P K V A S D   i n s t a l l e d   i n t o   a p p l i c a t i o n   b u n d l e :� o  CD�p
�p 
ret � o  EF�o
�o 
ret � l 
GH��n�m� o  GH�l�l 0 installroot installRoot�n  �m  � �k��
�k 
btns� J  LQ�� ��j� m  LO�� ���  O k�j  � �i��
�i 
dflt� l 	TW��h�g� m  TW�� ���  O k�h  �g  � �f��e
�f 
givu� m  Z]�d�d �e  �r  b R      �c��b
�c .ascrerr ****      � ****� o      �a�a 0 errorstring errorString�b  c R  k��`��_
�` .ascrerr ****      � ****� b  m���� b  m~��� b  mz��� b  mx��� b  mv��� b  mt��� b  mr��� m  mp�� ��� Z F a i l e d   t o   m o v e   K V A S D   i n t o   a p p l i c a t i o n   b u n d l e :� o  pq�^
�^ 
ret � o  rs�]
�] 
ret � l 
tu��\�[� o  tu�Z�Z 0 installroot installRoot�\  �[  � o  vw�Y
�Y 
ret � o  xy�X
�X 
ret � m  z}�� ���  E r r o r :  � o  ~�W�W 0 errorstring errorString�_  ��  ��  ��   R      �V��U
�V .ascrerr ****      � ****� o      �T�T 0 errorstring errorString�U  	 I ���S��
�S .sysodisAaleR        TEXT� o  ���R�R 0 errorstring errorString� �Q 
�Q 
as A  m  ���P
�P EAlTwarN �O
�O 
btns J  �� �N m  �� �  O k�N   �M�L
�M 
dflt m  ��		 �

  O k�L  �� 0 
bundlepath 
bundlePath o    �K�K $0 bundlestoprocess bundlesToProcess  l     �J�I�H�J  �I  �H    l     �G�G   H B execute around handler to display a progress bar during an action    � �   e x e c u t e   a r o u n d   h a n d l e r   t o   d i s p l a y   a   p r o g r e s s   b a r   d u r i n g   a n   a c t i o n  i   0 3 I      �F�E�F  0 progressaction progressAction �D o      �C�C 
0 action  �D  �E   k        n    
 I    
�B�A�B "0 startanimation_ startAnimation_ �@  f    �@  �A   o     �?�? 0 progressbar progressBar   O   !"! I   �>�=�<
�> .aevtoappnull  �   � ****�=  �<  " o    �;�; 
0 action    #�:# n    $%$ I     �9&�8�9  0 stopanimation_ stopAnimation_& '�7'  f    �7  �8  % o    �6�6 0 progressbar progressBar�:   ()( l     �5�4�3�5  �4  �3  ) *+* l     �2�1�0�2  �1  �0  + ,-, l     �/./�/  . %  NSApplicationDelegate Protocol   / �00 >   N S A p p l i c a t i o n D e l e g a t e   P r o t o c o l- 121 l     �.�-�,�.  �-  �,  2 343 i   4 7565 I      �+7�*�+ B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_7 8�)8 o      �(�( 0 anotification aNotification�)  �*  6 Q     }9:;9 k    o<< =>= n   ?@? I    �'A�&�' 40 registerfordraggedtypes_ registerForDraggedTypes_A B�%B J    CC D�$D m    	EE �FF  p u b l i c . f i l e - u r l�$  �%  �&  @ o    �#�# 0 
mainwindow 
mainWindow> GHG l   �"�!� �"  �!  �   H IJI r    KLK n   MNM I    ���� 0 defaultcenter defaultCenter�  �  N n   OPO o    �� ,0 nsnotificationcenter NSNotificationCenterP m    �
� misccuraL o      �� 60 defaultnotificationcentre defaultNotificationCentreJ QRQ n   $STS I    $�U�� 0 seteditable_ setEditable_U V�V m     �
� boovfals�  �  T o    �� 0 eulatextview eulaTextViewR WXW l  % %����  �  �  X YZY h   % ,�[� 0 downloadeula downloadEula[ n    \]\ I    �^�� 0 
setstring_ 
setString_^ _�_ I   �`�
� .rdwrread****        ****` n   aba I   
 ��
�	� 0 	fetcheula 	fetchEULA�
  �	  b o    
�� 	0 kvasd  �  �  �  ] o     �� 0 eulatextview eulaTextViewZ cdc n  - 3efe I   . 3�g��  0 progressaction progressActiong h�h o   . /�� 0 downloadeula downloadEula�  �  f  f   - .d iji n  4 >klk I   9 >�m�� 0 setenabled_ setEnabled_m n� n m   9 :��
�� boovtrue�   �  l o   4 9���� 0 
savebutton 
saveButtonj opo n  ? Iqrq I   D I��s���� 0 setenabled_ setEnabled_s t��t m   D E��
�� boovtrue��  ��  r o   ? D���� 0 printbutton printButtonp uvu l  J J��������  ��  ��  v wxw l  J J��yz��  y < 6 add observers for view port changes on EULA text view   z �{{ l   a d d   o b s e r v e r s   f o r   v i e w   p o r t   c h a n g e s   o n   E U L A   t e x t   v i e wx |}| r   J O~~ n  J M��� o   K M���� F0 !nsviewboundsdidchangenotification !NSViewBoundsDidChangeNotification� m   J K��
�� misccura o      ���� (0 boundschangenotice boundsChangeNotice} ��� r   P U��� n  P S��� o   Q S���� D0  nsviewframedidchangenotification  NSViewFrameDidChangeNotification� m   P Q��
�� misccura� o      ���� &0 framechangenotice frameChangeNotice� ��� n  V a��� I   W a������� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_� ���  f   W X� ��� m   X Y�� ���  v i e w C h a n g e d :� ��� o   Y Z���� (0 boundschangenotice boundsChangeNotice� ���� m   Z [��
�� 
msng��  ��  � o   V W���� 60 defaultnotificationcentre defaultNotificationCentre� ���� n  b o��� I   c o������� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_� ���  f   c d� ��� m   d g�� ���  v i e w C h a n g e d :� ��� o   g h���� &0 framechangenotice frameChangeNotice� ���� m   h i��
�� 
msng��  ��  � o   b c���� 60 defaultnotificationcentre defaultNotificationCentre��  : R      �����
�� .ascrerr ****      � ****� o      ���� 0 errorstring errorString��  ; I   w }������� 	0 abort  � ���� o   x y���� 0 errorstring errorString��  ��  4 ��� l     ��������  ��  ��  � ��� i   8 ;��� I      ������� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_� ���� o      ���� 
0 sender  ��  ��  � L     �� m     ��
�� boovtrue� ��� l     ��������  ��  ��  � ��� i   < ?��� I      ������� :0 applicationshouldterminate_ applicationShouldTerminate_� ���� o      ���� 
0 sender  ��  ��  � k     �� ��� n    ��� I    ������� "0 removeobserver_ removeObserver_� ����  f    ��  ��  � o     ���� 60 defaultnotificationcentre defaultNotificationCentre� ���� L    �� n   ��� o    
����  0 nsterminatenow NSTerminateNow� m    ��
�� misccura��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � N H NSDraggingDestination (NSWindow Delgate) Protocol (Not working on 10.7)   � ��� �   N S D r a g g i n g D e s t i n a t i o n   ( N S W i n d o w   D e l g a t e )   P r o t o c o l   ( N o t   w o r k i n g   o n   1 0 . 7 )� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � ' ! Accept Generic drag&drop sources   � ��� B   A c c e p t   G e n e r i c   d r a g & d r o p   s o u r c e s� ��� l     ������  � %     on draggingEntered_(sender)   � ��� >         o n   d r a g g i n g E n t e r e d _ ( s e n d e r )� ��� l     ������  � A ;        return current application's NSDragOperationGeneric   � ��� v                 r e t u r n   c u r r e n t   a p p l i c a t i o n ' s   N S D r a g O p e r a t i o n G e n e r i c� ��� l     ������  �      end draggingEntered_   � ��� 0         e n d   d r a g g i n g E n t e r e d _� ��� l     ��������  ��  ��  � ��� l     ������  � #  Process a drop on our window   � ��� :   P r o c e s s   a   d r o p   o n   o u r   w i n d o w� ��� l     ������  � * $    on performDragOperation_(sender)   � ��� H         o n   p e r f o r m D r a g O p e r a t i o n _ ( s e n d e r )� ��� l     ������  �          try   � ���                  t r y� ��� l     ������  � 9 3            set pb to sender's draggingPasteboard()   � ��� f                         s e t   p b   t o   s e n d e r ' s   d r a g g i n g P a s t e b o a r d ( )� ��� l     ������  � ] W            if pb's types() as list contains current application's NSURLPboardType then   � ��� �                         i f   p b ' s   t y p e s ( )   a s   l i s t   c o n t a i n s   c u r r e n t   a p p l i c a t i o n ' s   N S U R L P b o a r d T y p e   t h e n� ��� l     �� ��    w q                set options to {NSPasteboardURLReadingContentsConformToTypesKey:{"com.apple.application-bundle"}}    � �                                 s e t   o p t i o n s   t o   { N S P a s t e b o a r d U R L R e a d i n g C o n t e n t s C o n f o r m T o T y p e s K e y : { " c o m . a p p l e . a p p l i c a t i o n - b u n d l e " } }�  l     ����   s m                repeat with u in pb's readObjectsForClasses_options_({current application's |NSURL|},options)    � �                                 r e p e a t   w i t h   u   i n   p b ' s   r e a d O b j e c t s F o r C l a s s e s _ o p t i o n s _ ( { c u r r e n t   a p p l i c a t i o n ' s   | N S U R L | } , o p t i o n s ) 	 l     ��
��  
 D >                    copy u's |path| to end of bundlesToProcess    � |                                         c o p y   u ' s   | p a t h |   t o   e n d   o f   b u n d l e s T o P r o c e s s	  l     ����                     end repeat    � 4                                 e n d   r e p e a t  l     ����   E ?                if bundlesToProcess � {} and licenceAgreed then    � ~                                 i f   b u n d l e s T o P r o c e s s  "`   { }   a n d   l i c e n c e A g r e e d   t h e n  l     ����   ; 5                    installButton's setEnabled_(true)    � j                                         i n s t a l l B u t t o n ' s   s e t E n a b l e d _ ( t r u e )  l     ����                    end if    �   ,                                 e n d   i f !"! l     ��#$��  # !                 return true   $ �%% 6                                 r e t u r n   t r u e" &'& l     ��()��  (              end if   ) �** $                         e n d   i f' +,+ l     ��-.��  - "         on error errorString   . �// 8                 o n   e r r o r   e r r o r S t r i n g, 010 l     ��23��  2 $             abort(errorString)   3 �44 <                         a b o r t ( e r r o r S t r i n g )1 565 l     ��78��  7          end try   8 �99                  e n d   t r y6 :;: l     ��<=��  <          return false   = �>> (                 r e t u r n   f a l s e; ?@? l     ��AB��  A #     end performDragOperation_   B �CC :         e n d   p e r f o r m D r a g O p e r a t i o n _@ DED l     ��������  ��  ��  E FGF l     ��������  ��  ��  G HIH l     ��JK��  J   UI handlers   K �LL    U I   h a n d l e r sI MNM l     ��������  ��  ��  N OPO l     ��������  ��  ��  P QRQ l     ��ST��  S  
 Save EULA   T �UU    S a v e   E U L AR VWV i   @ CXYX I      ��Z���� 0 dosave_ doSave_Z [��[ o      ���� 
0 sender  ��  ��  Y Q     $\]^\ n   _`_ I    �������� 0 savelicense saveLicense��  ��  ` o    ���� 	0 kvasd  ] R      ��ab
�� .ascrerr ****      � ****a o      ���� 0 errorstring errorStringb ��c��
�� 
errnc o      ���� 0 errornumber errorNumber��  ^ Z    $de��fd =   ghg o    ���� 0 errornumber errorNumberh m    ������e l   �ij�  i   just ignore Cancel   j �kk &   j u s t   i g n o r e   C a n c e l��  f I    $�~l�}�~ 	0 abort  l m�|m o     �{�{ 0 errorstring errorString�|  �}  W non l     �z�y�x�z  �y  �x  o pqp l     �wrs�w  r  
 Save EULA   s �tt    S a v e   E U L Aq uvu i   D Gwxw I      �vy�u�v 0 doprint_ doPrint_y z�tz o      �s�s 
0 sender  �t  �u  x Q     ${|}{ n   ~~ I    �r�q�p�r 0 printlicense printLicense�q  �p   o    �o�o 	0 kvasd  | R      �n��
�n .ascrerr ****      � ****� o      �m�m 0 errorstring errorString� �l��k
�l 
errn� o      �j�j 0 errornumber errorNumber�k  } Z    $���i�� =   ��� o    �h�h 0 errornumber errorNumber� m    �g�g��� l   �f���f  �   just ignore Cancel   � ��� &   j u s t   i g n o r e   C a n c e l�i  � I    $�e��d�e 	0 abort  � ��c� o     �b�b 0 errorstring errorString�c  �d  v ��� l     �a�`�_�a  �`  �_  � ��� l     �^���^  �   Agree Button handler   � ��� *   A g r e e   B u t t o n   h a n d l e r� ��� i   H K��� I      �]��\�] 0 doagree_ doAgree_� ��[� o      �Z�Z 
0 sender  �[  �\  � Z     ^���Y�X� c     ��� n    	��� I    	�W�V�U�W 	0 state  �V  �U  � o     �T�T 0 agreecheckbox agreeCheckBox� m   	 
�S
�S 
bool� k    Z�� ��� Q    -���� k    �� ��� h    �R��R 0 downloadkvasd downloadKvasd� n    	��� I    	�Q�P�O�Q 0 fetchbinary fetchBinary�P  �O  � o     �N�N 	0 kvasd  � ��M� n   ��� I    �L��K�L  0 progressaction progressAction� ��J� o    �I�I 0 downloadkvasd downloadKvasd�J  �K  �  f    �M  � R      �H��G
�H .ascrerr ****      � ****� o      �F�F 0 errorstring errorString�G  � I   ' -�E��D�E 	0 abort  � ��C� o   ( )�B�B 0 errorstring errorString�C  �D  � ��� n  . 8��� I   3 8�A��@�A 0 setenabled_ setEnabled_� ��?� m   3 4�>
�> boovfals�?  �@  � o   . 3�=�= 0 agreecheckbox agreeCheckBox� ��� r   9 @��� m   9 :�<
�< boovtrue� o      �;�; 0 licenceagreed licenceAgreed� ��:� Z   A Z���9�8� >   A I��� o   A F�7�7 $0 bundlestoprocess bundlesToProcess� J   F H�6�6  � n  L V��� I   Q V�5��4�5 0 setenabled_ setEnabled_� ��3� m   Q R�2
�2 boovtrue�3  �4  � o   L Q�1�1 0 installbutton installButton�9  �8  �:  �Y  �X  � ��� l     �0�/�.�0  �/  �.  � ��� l     �-���-  � #  Choose target button handler   � ��� :   C h o o s e   t a r g e t   b u t t o n   h a n d l e r� ��� i   L O��� I      �,��+�, "0 dochoosetarget_ doChooseTarget_� ��*� o      �)�) 
0 sender  �*  �+  � Q     c���� k    Z�� ��� X    4��(�� s   % /��� n   % (��� 1   & (�'
�' 
psxp� o   % &�&�& 
0 target  � n      ���  ;   - .� o   ( -�%�% $0 bundlestoprocess bundlesToProcess�( 
0 target  � l 	  ��$�#� I   �"�!�
�" .sysostdfalis    ��� null�!  � � ��
�  
prmp� l 	  	���� m    	�� ��� � C h o o s e   t h e   W S J T - X   a p p l i c a t i o n   b u n d l e   y o u   w i s h   t o   i n s t a l l   K V A S D   i n t o�  �  � ���
� 
ftyp� l 	 
 ���� m   
 �� ��� 8 c o m . a p p l e . a p p l i c a t i o n - b u n d l e�  �  � ���
� 
dflc� l 
  ���� c    ��� c    ��� m    �� ���  / A p p l i c a t i o n s� m    �
� 
psxf� m    �
� 
alis�  �  � ���
� 
lfiv� l 
  ���� m    �
� boovfals�  �  � ���
� 
mlsl� m    �
� boovtrue�  �$  �#  � ��� Z   5 Z����� F   5 I��� >   5 =   o   5 :�� $0 bundlestoprocess bundlesToProcess J   : <�
�
  � o   @ E�	�	 0 licenceagreed licenceAgreed� n  L V I   Q V��� 0 setenabled_ setEnabled_ � m   Q R�
� boovtrue�  �   o   L Q�� 0 installbutton installButton�  �  �  � R      ��
� .ascrerr ****      � ****�   �� 
� 
errn d       m      ���� ��   � l  b b��	
��  	   just ignore Cancel   
 � &   j u s t   i g n o r e   C a n c e l�  l     ��������  ��  ��    l     ����     Install button handler    � .   I n s t a l l   b u t t o n   h a n d l e r  i   P S I      ������ 0 
doinstall_ 
doInstall_ �� o      ���� 
0 sender  ��  ��   Q     * k      I    �������� 0 process  ��  ��     r   	 !"! J   	 ����  " o      ���� $0 bundlestoprocess bundlesToProcess  #��# n   $%$ I    ��&���� 0 setenabled_ setEnabled_& '��' m    ��
�� boovfals��  ��  % o    ���� 0 installbutton installButton��   R      ��(��
�� .ascrerr ****      � ****( o      ���� 0 errorstring errorString��   I   $ *��)���� 	0 abort  ) *��* o   % &���� 0 errorstring errorString��  ��   +,+ l     ��������  ��  ��  , -.- l     ��/0��  / < 6 handler called on eulaTextView scroll or view changes   0 �11 l   h a n d l e r   c a l l e d   o n   e u l a T e x t V i e w   s c r o l l   o r   v i e w   c h a n g e s. 232 l     ��45��  4 > 8 enables agree/install button once the bottom is reached   5 �66 p   e n a b l e s   a g r e e / i n s t a l l   b u t t o n   o n c e   t h e   b o t t o m   i s   r e a c h e d3 787 i   T W9:9 I      ��;���� 0 viewchanged_ viewChanged_; <��< o      ���� 0 anotification aNotification��  ��  : Q     X=>?= k    J@@ ABA r    CDC c    EFE n   
GHG o    
���� 
0 bounds  H o    ���� 0 eulatextview eulaTextViewF m   
 ��
�� 
recoD o      ���� 0 dr  B IJI r    KLK c    MNM n   OPO o    ���� 0 visiblerect visibleRectP o    ���� 0 eulatextview eulaTextViewN m    ��
�� 
recoL o      ���� 0 vdr  J Q��Q Z    JRS����R F    9TUT B   .VWV \    ,XYX n     Z[Z o     ���� 
0 height  [ n    \]\ o    ���� 0 size  ] o    ���� 0 dr  Y l    +^����^ [     +_`_ n     %aba o   # %���� 0 y  b n     #cdc o   ! #���� 
0 origin  d o     !���� 0 vdr  ` n   % *efe o   ( *���� 
0 height  f n   % (ghg o   & (���� 0 size  h o   % &���� 0 vdr  ��  ��  W l 
 , -i����i m   , -����  ��  ��  U H   1 7jj o   1 6���� 0 licenceagreed licenceAgreedS n  < Fklk I   A F��m���� 0 setenabled_ setEnabled_m n��n m   A B��
�� boovtrue��  ��  l o   < A���� 0 agreecheckbox agreeCheckBox��  ��  ��  > R      ��o��
�� .ascrerr ****      � ****o o      ���� 0 errorstring errorString��  ? I   R X��p���� 	0 abort  p q��q o   S T���� 0 errorstring errorString��  ��  8 rsr l     ��������  ��  ��  s tut l     ��vw��  v   Abort handler   w �xx    A b o r t   h a n d l e ru yzy i   X [{|{ I      ��}���� 	0 abort  } ~��~ o      ���� 0 errorstring errorString��  ��  | k      ��� I    ����
�� .sysodisAaleR        TEXT� o     ���� 0 errorstring errorString� ����
�� 
as A� m    ��
�� EAlTcriT� ����
�� 
btns� J    �� ���� m    �� ���  O k��  � �����
�� 
dflt� m    	�� ���  O k��  � ���� I   ������
�� .aevtquitnull��� ��� null��  ��  ��  z ��� l     ��������  ��  ��  � ��� l     ������  �   About menu item   � ���     A b o u t   m e n u   i t e m� ���� i   \ _��� I      ������� 0 doabout_ doAbout_� ���� o      ���� 
0 sender  ��  ��  � I    �����
�� .sysodisAaleR        TEXT� m     �� ��� ( K V A S D - i n s t a l l e r   v 1 . 0��  ��  � ���� l     ��������  ��  ��  ��       ��������  � �������� 0 curl  �� 	0 kvasd  �� "0 wsjtappdelegate WSJTAppDelegate� �� v  ��� 0 curl  �  ���� ������ 0 download  �� 0 downloadmd5 downloadMD5� �� {���������� 0 download  �� ����� �  �������� 0 url  �� 0 filename fileName�� 0 destination  ��  � ��������� 0 url  �� 0 filename fileName�� 0 destination  � 0 file  �  � ��~�}�| ��{�z
�~ .sysoexecTEXT���     TEXT�}  �|  
�{ 
ret 
�z 
psxf�� 0��%E�O �%�%�%�%j W X  )j��%�%�%�%O��&� �y ��x�w���v�y 0 downloadmd5 downloadMD5�x �u��u �  �t�s�t 0 url  �s 0 filename fileName�w  � �r�q�p�r 0 url  �q 0 filename fileName�p 0 md5ext md5Ext�  � � ��o�n�m ��l
�o .sysoexecTEXT���     TEXT�n  �m  
�l 
ret �v *�E�O �%�%�%�%j W X  )j��%�%�%�%� �k �  ��k 	0 kvasd  � 	 � � � ������ �j�i�h�g�f�e�d�j 0 
serverpath 
serverPath�i 0 destination  �h 0 
targetname 
targetName�g 0 	fetcheula 	fetchEULA�f 0 fetchbinary fetchBinary�e 0 savelicense saveLicense�d 0 printlicense printLicense� �c ��b�a���`�c 0 	fetcheula 	fetchEULA�b  �a  �  � �_�_ 0 download  �` b   b   b  �%b  m+ � �^
�]�\���[�^ 0 fetchbinary fetchBinary�]  �\  � �Z�Y�X�W�Z 0 url  �Y 0 md5sum md5Sum�X 0 file  �W 0 md5calc md5Calc� �V�U�T8�S=�R�QX�P[]`c
�V .sysoexecTEXT���     TEXT�U 0 downloadmd5 downloadMD5�T 0 download  
�S 
psxp
�R 
errn�Q�
�P 
ret �[ jb   ��%j %E�Ob   �b  l+ E�Ob   �b  b  m+ E�O��,%�%j E�O�� )��l��%�%�%�%�%�%�%�%�%Y h� �Ok�N�M���L�O 0 savelicense saveLicense�N  �M  � �K�K 0 dest  � �Jv�I�H�G�F�E���D�C�B
�J 
prmp
�I 
dflc
�H afdrdocs
�G .earsffdralis        afdr�F 
�E .sysostflalis    ��� null
�D 
psxf
�C 
insh
�B .coreclon****      � ****�L +*����j � E�O� b  b  %�%�&�l U� �A��@�?���>�A 0 printlicense printLicense�@  �?  �  � ���=�<
�= 
psxf
�< .aevtpdocnull���     obj �> � b  b  %�%�&j U� �;����; "0 wsjtappdelegate WSJTAppDelegate� �� �:�9�
�: misccura
�9 
pcls� ���  N S O b j e c t�  ��8�7�6�5�4�3�2�1�0�/���������������� �.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������
�. 
pare�- 0 licenceagreed licenceAgreed�, 0 
mainwindow 
mainWindow�+ 0 eulatextview eulaTextView�* 0 progressbar progressBar�) 0 
savebutton 
saveButton�( 0 printbutton printButton�' 0 agreecheckbox agreeCheckBox�& (0 choosetargetbutton chooseTargetButton�% 0 installbutton installButton�$ $0 bundlestoprocess bundlesToProcess�# 	0 split  �" 0 process  �!  0 progressaction progressAction�  B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_� :0 applicationshouldterminate_ applicationShouldTerminate_� 0 dosave_ doSave_� 0 doprint_ doPrint_� 0 doagree_ doAgree_� "0 dochoosetarget_ doChooseTarget_� 0 
doinstall_ 
doInstall_� 0 viewchanged_ viewChanged_� 	0 abort  � 0 doabout_ doAbout_�8  
�7 boovfals
�6 
msng
�5 
msng
�4 
msng
�3 
msng
�2 
msng
�1 
msng
�0 
msng
�/ 
msng� ���  �  � �������� 	0 split  � ��� �  ��� 0 thetext theText� 0 thedelimiters theDelimiters�  � ���
�	� 0 thetext theText� 0 thedelimiters theDelimiters�
 0 olddelimiters oldDelimiters�	 0 	theresult 	theResult� ���
� 
ascr
� 
txdl
� 
citm� ��,E�O���,FO��-E�O���,FO�� ������� 0 process  �  �  � �� ����������� 0 
bundlepath 
bundlePath�  0 wsjtxbundle wsjtxBundle�� 0 installroot installRoot�� 
0 target  �� 0 theline theLine�� 0 thedylib theDylib�� 0 errorstring errorString� ;������������������#������/����E��NQ��V��������_m��}������������������������������������������	
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� misccura�� 0 nsbundle NSBundle�� "0 bundlewithpath_ bundleWithPath_
�� 
msng�� $0 bundleidentifier bundleIdentifier
�� 
ctxt
�� 
bool
�� 
errn���
�� 
ret �� 0 
bundlepath 
bundlePath
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 
targetname 
targetName�� 0 destination  
�� 
spac
�� .sysoexecTEXT���     TEXT
�� .ascrcmnt****      � ****
�� 
cpar
�� 
tab �� 	0 split  
�� 
givu�� �� 
�� .sysodisAaleR        TEXT�� 0 errorstring errorString��  
�� 
as A
�� EAlTwarN���b  
[��l kh  s��,�k+ E�O�� 
 �j+ �&��& )��l��%�%�%�&Y hO�j+ �&E�Oa �%�%�%a a a lva a kva  O_ a ,a   �a %b  a ,%E�Oa b  a ,%b  a ,%_ %�%j  j !O qa "�%j  a #-[��l kh �a $	 
�a %�& ?*�_ &_ lvl+ '�l/E�Oa (�%a )%*�a *kvl+ '�i/%_ %�%j  j !Y h[OY��Oa +�%j  j !Oa ,�%�%�%a a -kva a .a /a 0a 1 2W X 3 4)ja 5�%�%�%�%�%a 6%�%Y hW "X 3 4�a 7a 8a a 9kva a :a 1 2[OY�f� ������������  0 progressaction progressAction�� ����� �  ���� 
0 action  ��  � ���� 
0 action  � �������� "0 startanimation_ startAnimation_
�� .aevtoappnull  �   � ****��  0 stopanimation_ stopAnimation_�� !b  )k+  O� *j UOb  )k+ � ��6���������� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�� ����� �  ���� 0 anotification aNotification��  � ������������ 0 anotification aNotification�� 0 downloadeula downloadEula�� (0 boundschangenotice boundsChangeNotice�� &0 framechangenotice frameChangeNotice�� 0 errorstring errorString� E��������������[������������������������� 40 registerfordraggedtypes_ registerForDraggedTypes_
�� misccura�� ,0 nsnotificationcenter NSNotificationCenter�� 0 defaultcenter defaultCenter�� 60 defaultnotificationcentre defaultNotificationCentre�� 0 seteditable_ setEditable_�� 0 downloadeula downloadEula� �����������
�� .ascrinit****      � ****� k     �� ���� i     ��� I      ������
�� .aevtoappnull  �   � ****��  ��  � k     �� ���� l    [������  ��  ��  ��  ��  ��  � ��
�� .aevtoappnull  �   � ****� �� �����������
�� .aevtoappnull  �   � ****��  ��  �  � �������� 0 	fetcheula 	fetchEULA
�� .rdwrread****        ****�� 0 
setstring_ 
setString_�� b  b  j+  j k+ �� L  ��  0 progressaction progressAction�� 0 setenabled_ setEnabled_�� F0 !nsviewboundsdidchangenotification !NSViewBoundsDidChangeNotification�� D0  nsviewframedidchangenotification  NSViewFrameDidChangeNotification
�� 
msng�� �� F0 !addobserver_selector_name_object_ !addObserver_selector_name_object_�� 0 errorstring errorString��  �� 	0 abort  �� ~ qb  �kvk+ O��,j+ E�Ob  fk+ O��K 	S�O)�k+ 
Ob  ek+ Ob  ek+ O��,E�O��,E�O�)��a + O�)a ��a + W X  *�k+ � ������������� d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_�� ����� �  ���� 
0 sender  ��  � ���� 
0 sender  �  �� e� ������������� :0 applicationshouldterminate_ applicationShouldTerminate_�� ����� �  ���� 
0 sender  ��  � ���� 
0 sender  � ���������� 60 defaultnotificationcentre defaultNotificationCentre�� "0 removeobserver_ removeObserver_
�� misccura��  0 nsterminatenow NSTerminateNow�� �)k+ O��,E� ��Y���������� 0 dosave_ doSave_�� ����� �  ���� 
0 sender  ��  � �������� 
0 sender  �� 0 errorstring errorString�� 0 errornumber errorNumber� ���������� 0 savelicense saveLicense�� 0 errorstring errorString� �~�}�|
�~ 
errn�} 0 errornumber errorNumber�|  ����� 	0 abort  �� % b  j+  W X  ��  hY *�k+ � �{x�z�y���x�{ 0 doprint_ doPrint_�z �w��w �  �v�v 
0 sender  �y  � �u�t�s�u 
0 sender  �t 0 errorstring errorString�s 0 errornumber errorNumber� �r�q��p�o�r 0 printlicense printLicense�q 0 errorstring errorString� �n�m�l
�n 
errn�m 0 errornumber errorNumber�l  �p���o 	0 abort  �x % b  j+  W X  ��  hY *�k+ � �k��j�i���h�k 0 doagree_ doAgree_�j �g��g �  �f�f 
0 sender  �i  � �e�d�c�e 
0 sender  �d 0 downloadkvasd downloadKvasd�c 0 errorstring errorString� 
�b�a�`���_�^�]�\�[�b 	0 state  
�a 
bool�` 0 downloadkvasd downloadKvasd� �Z��Y�X���W
�Z .ascrinit****      � ****� k     �� ��V� i        I      �U�T�S
�U .aevtoappnull  �   � ****�T  �S   k     	 �R l    	��Q�P�Q  �P  �R  �V  �Y  �X  � �O
�O .aevtoappnull  �   � ****�  �N�M�L�K
�N .aevtoappnull  �   � ****�M  �L     �J�J 0 fetchbinary fetchBinary�K 
b  j+  �W L  �_  0 progressaction progressAction�^ 0 errorstring errorString�]  �\ 	0 abort  �[ 0 setenabled_ setEnabled_�h _b  j+  �& Q ��K S�O)�k+ W X  *�k+ Ob  fk+ 	OeEc  Ob  
jv b  	ek+ 	Y hY h� �I��H�G�F�I "0 dochoosetarget_ doChooseTarget_�H �E	�E 	  �D�D 
0 sender  �G   �C�B�C 
0 sender  �B 
0 target   �A��@��?��>�=�<�;�:�9�8�7�6�5�4�3�2

�A 
prmp
�@ 
ftyp
�? 
dflc
�> 
psxf
�= 
alis
�< 
lfiv
�; 
mlsl�: 

�9 .sysostdfalis    ��� null
�8 
kocl
�7 
cobj
�6 .corecnte****       ****
�5 
psxp
�4 
bool�3 0 setenabled_ setEnabled_�2  
 �1�0�/
�1 
errn�0���/  �F d \ 0*�������&�&�f�e� [��l kh ��,b  
6G[OY��Ob  
jv	 b  a & b  	ek+ Y hW X  h� �.�-�,�+�. 0 
doinstall_ 
doInstall_�- �*�*   �)�) 
0 sender  �,   �(�'�( 
0 sender  �' 0 errorstring errorString �&�%�$�#�"�& 0 process  �% 0 setenabled_ setEnabled_�$ 0 errorstring errorString�#  �" 	0 abort  �+ + *j+  OjvEc  
Ob  	fk+ W X  *�k+ � �!:� ���! 0 viewchanged_ viewChanged_�  ��   �� 0 anotification aNotification�   ����� 0 anotification aNotification� 0 dr  � 0 vdr  � 0 errorstring errorString ������������� 
0 bounds  
� 
reco� 0 visiblerect visibleRect� 0 size  � 
0 height  � 
0 origin  � 0 y  
� 
bool� 0 setenabled_ setEnabled_� 0 errorstring errorString�  � 	0 abort  � Y Lb  �,�&E�Ob  �,�&E�O��,�,��,�,��,�,j	 
b  �& b  ek+ Y hW X 	 
*�k+ � �|�
�	�� 	0 abort  �
 ��   �� 0 errorstring errorString�	   �� 0 errorstring errorString 	������� ����
� 
as A
� EAlTcriT
� 
btns
� 
dflt�  
�� .sysodisAaleR        TEXT
�� .aevtquitnull��� ��� null� �����kv��� O*j � ����������� 0 doabout_ doAbout_�� ����   ���� 
0 sender  ��   ���� 
0 sender   ���
�� .sysodisAaleR        TEXT�� �j ascr  ��ޭ