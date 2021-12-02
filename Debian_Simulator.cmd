@echo off
:RELOAD_SCRIPT
cls
:: версии раньше XP неподдерживаются
ver|find "5.1" >nul
if '%errorlevel%'=='0' set WV=Windows XP
ver|find "6.0" >nul
if '%errorlevel%'=='0' set WV=Windows Vista
ver|find "6.1" >nul
if '%errorlevel%'=='0' set WV=Windows 7
ver|find "6.3" >nul
if '%errorlevel%'=='0' set WV=Windows 8.1
ver|find "10" >nul
if '%errorlevel%'=='0' set WV=Windows 10
set ver=1.3
set codename=Eminem
set vermenu=2.4 DOLBAEBCLOUN
set makedate=2028
set maketime=010721
if exist %systemdrive%\Users set uservar=%Username%     
:: что ты тут делаешь вообще?
goto :Title
                      :start
Title Starting Debian %ver%
cls
echo [%time%] piix4_smbus 0000:00:07.3: SMBus Host Controller not enabled!
echo [%time%] sd 2:0:0:0: [sda] ASSuming drive chacle: write through
echo /dev/sda1: clean, 212840/212840 files, 289307/312831 blocks
ping localhost -n 5 >nul
call :color 8
call :echo "[ INFO ] " / 
echo Safe start is enabled, some functions may not work.
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo Network Time Synchronization
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo Update UTMP about System Boot/Shutdown
call :color 2
call :echo "[  OK  ] " /
call :color 8
call :echo "Found device " / 
echo Seagate barracuda 8100
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Reached target " / 
echo System initalization
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo Ataka na pentagon
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo D-Bus System message Bus.
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Starting " / 
echo disk manager...
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Starting " / 
echo Modem manager...
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo Login service
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo CUPS Scheduler.
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo Starting accounts Service...
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo Daily Cleanup of Teaporary Directories.
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo HPA supplicant.
call :color 4
call :echo "[FAILED] " / 
call :color 8
call :echo "Start " / 
echo X.org
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Starting " / 
echo Permit User Sessions...
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Reached target " / 
echo Sound Card.
call :color 4
call :echo "[FAILED] " / 
call :color 8
call :echo "Start " / 
echo GNDME Display Manager...
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Setting up " / 
echo UTF-8 ru_RU locale.
call :color 2
call :echo "[  OK  ] " / 
call :color 8
call :echo "Started " / 
echo Authorization Manager.
call :color 4
call :echo "[FAILED] " / 
call :color 8
call :echo "Start " / 
echo SNDME Display Manager.
ping localhost -n 4 >nul
if exist %systemdrive%\mnt\linux\etc\passwrd.user goto DebianCode


:CreateUser
cls
if not exist %SD%\mnt\linux\etc (mkdir %SD%\mnt\linux\etc)
echo Вы попали в debian, для продолжение создайте аккаунт
echo Введите название юзера:
call :color 2
call :echo "[Root@DebianLiveCD]" /
set /p userProfile=:~$_ 
echo %userProfile% > %systemdrive%\mnt\linux\etc\user.user
echo введите пароль юзера:
call :color 2
call :echo "[Root@DebianLiveCD]" /
set /p userpASS=:~$_ 
echo %userpASS% > %systemdrive%\mnt\linux\etc\passwrd.user

:debianCode
Title Debian %ver%
cls
ping localhost -n 4 >nul
call :echo "[  ERROR  ] " / 
echo X.org crashed. Gnome won't work until x.org is up and running.
ping localhost -n 1 >nul
cls

:Login
set logintime=%time%
echo Пожалуйста, войдите
echo Или сбросте систему (reset)
set /p USER=Пользователь:
if %USER% EQU reset rd %systemdrive%\mnt\linux\etc\ /S /Q & goto RELOAD_SCRIPT
if %USER% EQU 21062021 goto DebianSystem
set /p PASSWRD=Пароль:
if %PASSWRD% EQU reset rd %systemdrive%\mnt\linux\etc\ /S /Q & goto RELOAD_SCRIPT
cd %systemdrive%\mnt\linux\etc
set /p USERinstall=<user.user
set /p PASSWRDinstall=<passwrd.user
if %USER% NEQ %USERinstall% cls & echo. & echo this user doesn't exist. & echo. & goto Login
if %PASSWRD% NEQ %PASSWRDinstall% cls & echo. & echo Неправильный пароль! & echo. & goto Login
ping localhost -n 2 >nul

:AfterLogin
cls
echo Debian GNU/Linux 10 debian tty1
echo.
echo помощь командой helpdb
echo для переходов папках сначала введите cd
echo.
ping localhost -n 1 >nul
                                                                          :DebianSystem
call :color 2
call :echo "[root@debian]" /
set /p a=:~$_ 
if %a% == exit exit
if %a% == startx goto POXuiDE
if %a% == w goto w
if %a% == logout goto :login
if %a% == cd goto DIR
if %a% == cmd goto PRECMD
if %a% == reboot goto RELOAD_SCRIPT
if %a% == "uname -a" echo %WV% 5.8.0-43-generic #49-debian SMP Fri Feb 5 03:01:28 UTC 2021 x86_64 GNU/Linux & goto DebianSystem
if %a% == whoami echo %USERinstall% (%username%) & goto :DebianSystem
if %a% == lsb_release goto ver
if %a% == clear cls & goto DebianSystem
if %a% == neofetch goto Neofetch
if %a% == screenfetch goto screenfetch
if %a% == helpdb goto AnavibleCommands
echo bash: %a%: команда не найдена
goto DebianSystem

:AnavibleCommands
echo.
echo w, cd, cmd, exit, reboot, logout, "uname -a", whoami, lsb_release, clear, neofetch, screenfetch, helpdb, startx
echo.
goto DebianSystem

:DIR
set %systemdrive%=%SD%
mkdir %SD%\mnt\linux
mkdir %SD%\mnt\linux\home
mkdir %SD%\mnt\linux\home\%username%
mkdir %SD%\mnt\linux\boot
mkdir %SD%\mnt\linux\boot\BCD
mkdir %SD%\mnt\linux\dev
mkdir %SD%\mnt\linux\bin
mkdir %SD%\mnt\linux\sbin
mkdir %SD%\mnt\linux\etc
mkdir %SD%\mnt\linux\lib
mkdir %SD%\mnt\linux\media
mkdir %SD%\mnt\linux\mnt
mkdir %SD%\mnt\linux\opt
mkdir %SD%\mnt\linux\proc
mkdir %SD%\mnt\linux\root
mkdir %SD%\mnt\linux\sbin
mkdir %SD%\mnt\linux\srv
mkdir %SD%\mnt\linux\tmp
mkdir %SD%\mnt\linux\usr
mkdir %SD%\mnt\linux\var
:FILES
echo https://www.youtube.com/watch?v=dQw4w9WgXcQ>%SD%\mnt\linux\dev\sda1
echo https://www.youtube.com/watch?v=dQw4w9WgXcQ>%SD%\mnt\linux\dev\sda2
echo https://www.youtube.com/watch?v=dQw4w9WgXcQ>%SD%\mnt\linux\dev\sda3
echo https://www.youtube.com/watch?v=dQw4w9WgXcQ>%SD%\mnt\linux\dev\sda4
echo https://www.youtube.com/watch?v=dQw4w9WgXcQ>%SD%\mnt\linux\boot\kernel
echo https://www.youtube.com/watch?v=dQw4w9WgXcQ>%SD%\mnt\linux\boot\initrd
echo https://www.youtube.com/watch?v=dQw4w9WgXcQ>%SD%\mnt\linux\boot\vmlinuz
echo https://www.youtube.com/watch?v=dQw4w9WgXcQ>%SD%\mnt\linux\boot\BCD\
cd %userprofile% & cd Desktop & rd PC
cd ../../../../../../../../../.. & cd mnt & cd linux
cls
echo для выхода напишите exit
setlocal EnableDelayedExpansion
:CD
echo.
set "UserInput=Nothing^!"
set /P "UserInput=%CD%: "
if /I "!UserInput!" == "exit" goto DebianSystem
!UserInput!
goto CD

:PRECMD
echo что-бы выйти напишите exit
setlocal EnableDelayedExpansion
:CMDEMULATOR
echo.
set "UserInput=Nothing^!"
set /P "UserInput=%CD%: "
if /I "!UserInput!" == "exit" goto DebianSystem
!UserInput!
goto CMDEMULATOR

:w
echo USER                   TTY    FROM     LOGIN         IDLE   JCPU     PCPU
echo cant reach user name   tty1   tty1     %logintime%    ?     0.07s    0.06s
goto DebianSystem

:ver
cls
Title Debian %ver%
echo     .LM@ME81v.              .             ,        .2:                       
echo   .MBOv.  .ik@M:          u@B          .B@@        MB@.                      
echo  :@u          @B.         .B@           @@O         .                        
echo .@.    .i:.    @      iP8kS@@    uGMu.  B@u r01i   ..v   r5G8qr    :i7 YGq7  
echo Sj    :i       B,   :B@B1u@@@  S@B7v@Bj MB5G@B@B@  O@B  @B@NPB@@:  B@BMOGB@B 
echo F:    Y:      :O    B@7   .@B :@@    @B 0@B:  .@@2 r@@        B@X  PB@   .B@ 
echo 5i    .1:   .r1    i@B    iB@ OB@71UFB@ q@@    B@M :@B   .FMMS@BF  U@B    @B 
echo ,@      7vir;:     7B@    i@B O@BL1k1Lv G@Z    @BG iB@  B@Bi. M@j  2B@   .B@ 
echo  q@                .@B,   rB@ 5B@       @BG    B@: i@B :@B    @Bj  1@@   .@B 
echo   SZ                B@B, .B@B  @@M      B@Z   0@B  LB@ ,B@:  EB@1  ZB@   ,B@ 
echo    iP7               O@B@B1B@:  GB@B@B@ @B@B@B@L   G@B  PB@@@iO@@  B@B   7@B.
echo      :r:.                          ,,,     :,                                
echo                                 SIMULATOR FOR CMD
echo.
echo версия=%ver% %codename%
echo версия меню=%vermenu%
echo Дата сборки=%makedate%
echo Время сборки (МСК)=%maketime%
echo.
ver
echo.
pause
cls
goto DebianSystem
:Title
cls
Title Debian simulator %ver%
echo     .LM@ME81v.              .             ,        .2:                       
echo   .MBOv.  .ik@M:          u@B          .B@@        MB@.                      
echo  :@u          @B.         .B@           @@O         .                        
echo .@.    .i:.    @      iP8kS@@    uGMu.  B@u r01i   ..v   r5G8qr    :i7 YGq7  
echo Sj    :i       B,   :B@B1u@@@  S@B7v@Bj MB5G@B@B@  O@B  @B@NPB@@:  B@BMOGB@B 
echo F:    Y:      :O    B@7   .@B :@@    @B 0@B:  .@@2 r@@        B@X  PB@   .B@ 
echo 5i    .1:   .r1    i@B    iB@ OB@71UFB@ q@@    B@M :@B   .FMMS@BF  U@B    @B 
echo ,@      7vir;:     7B@    i@B O@BL1k1Lv G@Z    @BG iB@  B@Bi. M@j  2B@   .B@ 
echo  q@                .@B,   rB@ 5B@       @BG    B@: i@B :@B    @Bj  1@@   .@B 
echo   SZ                B@B, .B@B  @@M      B@Z   0@B  LB@ ,B@:  EB@1  ZB@   ,B@ 
echo    iP7               O@B@B1B@:  GB@B@B@ @B@B@B@L   G@B  PB@@@iO@@  B@B   7@B.
echo      :r:.                          ,,,     :,                                
echo                                 SIMULATOR FOR CMD
ping localhost -n 3 >nul
goto start

:Neofetch
echo        _,met$$$$$gg.          "%Username%"@TaichiOS
echo     ,g$$$$$$$$$$$$$$$P.       ----------------------- 
echo   ,g$$P"     """Y$$.".        OS: Debian 10.4 i386
echo  ,$$P'              `$$$.     Host: Windows unknown version
echo ',$$P       ,ggs.     `$$b:   Kernel: 5.8.0-43-generic 
echo `d$$'     ,$P"'   .    $$$    Uptime: -1 mins 
echo  $$P      d$'     ,    $$P    Packages: 1 (dpkg), 420 (snap) 
echo  $$:      $$.   -    ,d$$'    Shell: bash 9.9.99
echo  $$;      Y$b._   _,d$P'      Resolution: 15360x8640 
echo  Y$$.    `.`"Y$$$$P"'         DE: POXui DE Beta 0.31
echo  `$$b      "-.__              WM: Mir
echo   `Y$$                        WM Theme: Adwaita
echo    `Y$$.                      Theme: Land [GTK2/3]
echo      `$$b.                    Icons: Land [GTK2/3]
echo        `Y$$b.                 Terminal: cmd.exe
echo           `"Y$b._             CPU: Intel i386 @ 8.667GHz (RAZGON)
echo               `"""            GPU: NVIDIA RTX 10090 TI
echo                               GPU: Intel Core Processor 
echo                               Memory: 10MiB / 524288MiB 
goto DebianSystem
:screenfetch
echo        _,met$$$$$gg.         "%Username%"@TaichiOS
echo     ,g$$$$$$$$$$$$$$$P.      OS: Debian 
echo   ,g$$P""       """Y$$.".    Kernel: x666_64 Linux 5.8.0-43-generic
echo  ,$$P'              `$$$.    Uptime: -1 min
echo ',$$P       ,ggs.     `$$b:  Packages: 419 - 420
echo `d$$'     ,$P"'   .    $$$   Shell: net, blyat, gazprom
echo  $$P      d$'     ,    $$P   Resolution: 1x1
echo  $$:      $$.   -    ,d$$'   DE: POXui DE Beta 0.31
echo  $$\;      Y$b._   _,d$P'    WM: Mutter
echo  Y$$.    `.`"Y$$$$P"'        WM Theme: Adwaitaminute
echo  `$$b      "-.__             GTK Theme: Land [GTK2/3]
echo   `Y$$                       Icon Theme: Land
echo    `Y$$.                     Font: Ubuntu 21.04
echo      `$$b.                   Disk: 28G / 00G (ERROR DISK INITIALIZATION)
echo        `Y$$b.                CPU: AMD RAZGON OT GEVOGLOTA, PIZDEC KAK MNOGO GHz
echo           `"Y$b._            GPU: RTX 0040 TI
echo               `""""          RAM: 420MiB / 52428MiB
goto DebianSystem

:color
 set c=%1& exit/b
:echo
 for /f %%i in ('"prompt $h& for %%i in (.) do rem"') do (
  pushd "%~dp0"& <nul>"%~1_" set/p="%%i%%i  "& findstr/a:%c% . "%~1_*"
  (if "%~2" neq "/" echo.)& del "%~1_"& popd& set c=& exit/b
 )

:POXuiDE
title POXuiDE 
mode con: cols=120 lines=30
set verd=2i
set vermenud=3
set maketimed=17:39
set makedated=05.05.21
if '%recovery%'=='1' goto RECOVERY
cd %systemdrive%\POXuiDE_FILES
if exist POXuiDE_installed.delete_this_if_u_want_delete_POXuiDE goto POXuisystem


:installPOXui
title POXuiDE v%verd%% installer
cls
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         POXui Installation                                                                     (part 1 of 5)
echo        ______________________________________________________________________________________________________
echo.      
echo.
echo        Welcome to the first boot of POXuiDE! 
echo.
echo        We need to set some settings before you start using it. 
echo        This setup program will prepare POXuiDE to run on your computer.
echo.
echo         - Press ENTER to continue
echo         - Close the window to quit the setup
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.       POXuiDE v%verd% & pause >nul
del %systemdrive%\POXuiDE_FILES\username.user /F /Q
del %systemdrive%\POXuiDE_FILES\userpassword.password /F /Q
:installpart1
cls
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         POXui Installation                                                                     (part 2 of 5)
echo        ______________________________________________________________________________________________________
echo.
echo.
echo.
echo       Please choice your disck to install POXuiDE:
echo       1. Seagate Barracuda 8100 (250GB)
echo       2. Exit
echo.
echo.
set /p POXuiinstall=POXui installer:
if '%POXuiinstall%'=='1' goto installpart2
if '%POXuiinstall%'=='2' exit /B
echo this volume does not exist
:installpart2
cls
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         POXui Installation                                                                     (part 3 of 5)
echo        ______________________________________________________________________________________________________
echo.
echo.
echo.
echo        Please agree with ELUA:
echo.
echo        1. You pidor
echo.
echo        Type "micronanoelectromoniculator" if you agree
echo.
echo.
set /p POXuiinstall=POXui installer:
if '%POXuiinstall%'=='micronanoelectromoniculator' goto installpart3
if '%POXuiinstall%'=='ximitop' goto installpart3
if '%POXuiinstall%'=='exit' exit /B
goto installpart2
:installpart3
cls
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         POXui Installation                                                                     (part 4 of 5)
echo        ______________________________________________________________________________________________________
echo.
echo.
echo.
echo        Please create your account:
echo.
echo.
set /p USER=User:
set /p PASSWRD=Password:
echo.
echo.
echo.
echo your nickname: %USER%, password: %PASSWRD%
md %systemdrive%\POXuiDE_FILES > nul
echo %user% > %systemdrive%\POXuiDE_FILES\username.user
echo %passwrd% > %systemdrive%\POXuiDE_FILES\userpassword.password
ping localhost -n 4 >nul
goto installpart4
:installpart4
cls
echo.
echo        ______________________________________________________________________________________________________
echo.      
echo         POXui Installation                                                                     (part 5 of 5)
echo        ______________________________________________________________________________________________________
echo.
echo        We installing POXuiDE to your cumputer
echo.
echo        Please wait about 20 sec
echo.
echo.
echo.
ping localhost -n 22 >nul
echo.
echo       System installed, we need 10 sec to finish.
ping localhost -n 8 >nul
echo.
echo       POXuiDE installed >%systemdrive%\POXuiDE_FILES\POXuiDE_installed.delete_this_if_u_want_delete_POXuiDE
echo       POXuiDE is installed to your seagate barracuda HDD.
echo.
echo       Thanks for using POXuiDE.
echo.
echo       Rebooting in 5 seconds...
ping localhost -n 5 >nul
goto RELOAD_SCRIPT

:RECOVERY
cls
echo.
echo        ______________________________________________________________________________________________________
echo.
echo         POXuiDE recovery mode                                                                     (Recovery)
echo        ______________________________________________________________________________________________________
echo.
echo.       Hello, %USER%.
echo.
echo.       Your system has been broken.
echo.
echo.       Wait 15 seconds for the system to recover.
echo.
echo.       DO NOT TURN OFF YOUR CUMPUTER!!!
echo.
ping localhost -n 15 >nul
echo.       All right. Rebooting...
ping localhost -n 5 >nul
set recovery=systemOK
goto RELOAD_SCRIPT

:POXuisystem
cls
title Starting POXuiDE %verd%
COLOR 2
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
for %%d in ( A B C Є D E F G H CH I J K L M N O P Q R S T U V W X Y Z A B C Є D E F G H CH I J K L M N O P Q R S T a U V W X Y Z A A A A B C Є D E F G H CH I J K L M N O P Q R S T U V W X Y Z A B C Є D E F G H CH I J K L M N O P Q R S T U V W X Y Z A A A ) do echo.|set /p=#
echo.
for %%d in ( A B C Є D E F G H CH I J K L M N O P Q R S T U V W X Y Z A B C Є D E F G H CH I A A A A A A A A A A A A A A A A A) do echo|set /p=-
for %%d in ( A ) do echo.|set /p=P
for %%d in ( A ) do echo.|set /p=O
for %%d in ( A ) do echo.|set /p=X
for %%d in ( A ) do echo.|set /p=u
for %%d in ( A ) do echo.|set /p=i
for %%d in ( A ) do echo.|set /p=-
for %%d in ( A B C Є D E F G H CH I J K L M N O P Q R S T U V W X Y Z A B C Є D E F G H CH I A A A A A A A A A A A A A A A A a A) do echo|set /p=-
echo.
for %%d in ( A B C Є D E F G H CH I J K L M N O P Q R S T U V W X Y Z A B C Є D E F G H CH I J K L M N O P Q R S T a U V W X Y Z A A A A B C Є D E F G H CH I J K L M N O P Q R S T U V W X Y Z A B C Є D E F G H CH I J K L M N O P Q R S T U V W X Y Z A A A ) do echo.|set /p=#
ping localhost -n 5 >nul
cls
:PASSWORDSYSTEM
color 07
title POXuiDE %verd%
echo Please type your User/password:
echo Or reset your system (reset)
set /p USER=User:
if %USER% EQU reset rd %systemdrive%\POXuiDE_FILES /S /Q & goto RELOAD_SCRIPT
set /p PASSWRD=Password:
if %PASSWRD% EQU reset rd %systemdrive%\POXuiDE_FILES /S /Q & goto RELOAD_SCRIPT
cd %systemdrive%\POXuiDE_FILES
set /p USERinstall=<username.user
set /p PASSWRDinstall=<userpassword.password
if %USER% NEQ %USERinstall% cls & echo. & echo this user doesn't exist. & echo. & goto PASSWORDSYSTEM
if %PASSWRD% NEQ %PASSWRDinstall% cls & echo. & echo Incorrect password! & echo. & goto PASSWORDSYSTEM
:system
cls
echo Logining...
ping localhost -n 4 >nul
cls
set /a error=(100 * %random%) / 32768 + 1
if '%error%'=='1' color 17 & echo ERROR 0x0AA5B3! Can't start up POXui DE 12.0.2, rebooting into recovery.. & pause & set recovery=1& color 07 & goto RELOAD_SCRIPT
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                        Hello, %USER%!
ping localhost -n 3 >nul
:POXuiDE
cls
echo 1 settings    $    2 terminal    $    3 version    $    4 restart system    $    5 shutdown   $     POXui DE v%vermenud%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ...       ,..               .                                                             ii.
echo   7B@BF.   :0B@8;  uS   5v.   :Oi   7S.                       7v:          .               .5Mk,
echo   U@: S@. iBS,,5Mv JB: iBv    :@7   u@,                       UX:         7N               :q7  
echo   1O  :@i OP.   XB  k0U2S     :B7   uB, ,1PL:  ;FEj  ,uYGL    5k, rjYkS. ;@BM.  vE0i  r7uPrF@O:.uXOk:   jBG7  ijPS: 
echo   u@  v@.:B:    i@,  @BX      :@r   JB. u@Fr. iNvuOk 7B@ML    uS  B@Y5Bq iB@0. 2uuS@: 0@OX;FB@i,vuSOS  JMMNY .SULOX:
echo   2BvrO1 i@.    rB:  Z@S      :Br   JM. uq:   0E  PB i@r      U5  @8  F@  vG  iB7 .B1 kG:  :q:     iB,.B7   .Yq, i@u
echo   u@Ji:  7Bi    ;@, .M@E.     :@r   L@. .EBu .O@5uMN 7M.      uF  BN  UM  LM  i@BYS@i Su   i0i  r11OB..@i   .ZBEUN0i
echo   2B,    :@F    FO .P7iUO.    :@u   FB.   :Xq.SE     J@.      1S  @N  kM  UB  iB7     Eu   iOi :@i i@,.@;   .2N,    
echo   X@      r@@XX@E: qB. i@X     LBMUNB1 .7LU@F rMJvr, FB:     .kG. BB  E@. u@8..8qL7v  MN.  vBv ;BGikB; PBG2Y.:OPrvi.
echo   rJ       7EEGN;  7L   u7.     JZNZY  .jXNL.  LqXFi :J       rr  U7  rL  :GO, ,5NP5, 7;   ,Y,  5q2u1. .SMqL  LkXSY.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo [POXui] ################################################################################################## [%time%]
echo.
set /p poxuichoice=)
if '%poxuichoice%'=='1' goto settings
if '%poxuichoice%'=='2' cd %systemdrive%\Windows\system32\ & start cmd.exe & goto POXuiDE
if '%poxuichoice%'=='3' goto version
if '%poxuichoice%'=='4' cls & echo Good night, POXuiDE & ping localhost -n 2 >nul & goto RELOAD_SCRIPT
if '%poxuichoice%'=='5' cls & echo Good night, POXuiDE & ping localhost -n 2 >nul & cls & goto DebianSystem



:settings
cls
echo 1 settings    $    2 terminal    $    3 version    $    4 restart system    $    5 shutdown   $     POXui DE v%vermenud%
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo    ...       ,..               .                                                             ii.
echo   7B@BF.   :0B@8;  uS   5v.   :Oi   7S.                       7v:          .               .5Mk,
echo   U@: S@. iBS,,5Mv JB: iBv    :@7   u@,                       UX:         7N               :q7  
echo   1O  :@i OP.   XB  k0U2S     :B7   uB, ,1PL:  ;FEj  ,uYGL    5k, rjYkS. ;@BM.  vE0i  r7uPrF@O:.uXOk:   jBG7  ijPS: 
echo   u@  v@.:B:    i@,  @BX      :@r   JB. u@Fr. iNvuOk 7B@ML    uS  B@Y5Bq iB@0. 2uuS@: 0@OX;FB@i,vuSOS  JMMNY .SULOX:
echo   2BvrO1 i@.    rB:  Z@S      :Br   JM. uq:   0E  PB i@r      U5  @8  F@  vG  iB7 .B1 kG:  :q:     iB,.B7   .Yq, i@u
echo   u@Ji:  7Bi    ;@, .M@E.     :@r   L@. .EBu .O@5uMN 7M.      uF  BN  UM  LM  i@BYS@i Su   i0i  r11OB..@i   .ZBEUN0i
echo   2B,    :@F    FO .P7iUO.    :@u   FB.   :Xq.SE     J@.      1S  @N  kM  UB  iB7     Eu   iOi :@i i@,.@;   .2N,    
echo   X@      r@@XX@E: qB. i@X     LBMUNB1 .7LU@F rMJvr, FB:     .kG. BB  E@. u@8..8qL7v  MN.  vBv ;BGikB; PBG2Y.:OPrvi.
echo                         u7.     JZNZY  .jXNL.  LqXFi :J       rr  U7  rL  :GO, ,5NP5, 7;   ,Y,  5q2u1. .SMqL  LkXSY.
echo $$$$$[settings]$$$$$ 
echo $                  $
echo $[A] themes        $
echo $[B] debug         $
echo $[C] delete system $
echo $[D] exit to DE    $
echo $                  $
echo $                  $
echo [POXui] ################################################################################################## [%time%]
echo.
set /p poxuichoice=)
if '%poxuichoice%'=='d' goto POXuiDE
if '%poxuichoice%'=='a' goto theme
if '%poxuichoice%'=='b' goto debug
if '%poxuichoice%'=='c' rd %systemdrive%\POXuiDE_FILES /S /Q & goto RELOAD_SCRIPT
if '%poxuichoice%'=='1' goto POXuiDE
if '%poxuichoice%'=='2' cd %systemdrive%\Windows\system32\ & start cmd.exe & goto POXuiDE
if '%poxuichoice%'=='3' goto version
if '%poxuichoice%'=='4' cls & echo Good night, POXuiDE & ping localhost -n 2 >nul & goto RELOAD_SCRIPT
if '%poxuichoice%'=='5' cls & echo Good night, POXuiDE & ping localhost -n 2 >nul & cls & goto DebianSystem

:theme
cls
echo A settings    $    B terminal    $    C version    $    R restart system    $    E shutdown   $     POXui DE v%vermenud%
echo.
echo.
echo.
echo.             $[Settings]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$[-]$[#]$[X]$$
echo.             $ Изменение темы                                                             $
echo.             $ Первая цифра - фон, вторая - текст         [w] - вызов справки             $
echo.             $                                                                            $
echo.             $ 0 = Чёрный      8 = серый                                                  $
echo.             $ 1 = Синий       9 = светлый синий                                          $
echo.             $ 2 = Зелёный     A = светлый зелёный                                        $
echo.             $ 3 = голубой     B = светлый голубой                                        $
echo.             $ 4 = красный     C = светлый красный                                        $
echo.             $ 5 = пурпурный   D = светлый пурпурный                                      $
echo.             $ 6 = жёлтый      E = светлый жёлтый                                         $
echo.             $ 7 = белый       F = светлый белый                                          $
echo.             $                                                                            $
echo.             $ [l] - Светлая тема                                                         $
echo.             $ [d] - Тёмная тема                                                          $
echo.             $                                                                            $
echo.             $                                                                            $
echo.             $                                                                            $
echo.             $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo [POXui] ################################################################################################## [%time%]
echo.
call :color 2
call :echo "[color]" /
set /p color=:
if '%Color%'=='x' goto settings
if '%Color%'=='-' goto POXuiDE
if '%Color%'=='d' color 0f & goto settings
if '%Color%'=='l' color f0 & goto settings
if '%Color%'=='w' cls & color /? & timeout /t -1 & goto theme
if '%Color%'=='a' goto settings
if '%Color%'=='b' cd %systemdrive%\Windows\system32\ & start cmd.exe & goto POXuiDE
if '%Color%'=='c' goto version
if '%Color%'=='r' cls & echo Good night, POXuiDE & ping localhost -n 2 >nul & goto RELOAD_SCRIPT
if '%Color%'=='e' cls & echo Good night, POXuiDE & ping localhost -n 2 >nul & cls & goto DebianSystem
color %ch%
goto :theme
:debug
cls
echo A settings    $    B terminal    $    C version    $    R restart system    $    E shutdown   $     POXui DE v%vermenud%
echo.
echo.
echo.
echo.           $[DEBUG MENU]$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$[-]$[#]$[X]$$$$$$
echo.           $                                                                                $
echo.           $                             errorlevel=%errorlevel%                                       $
echo.           $                                                                                $
echo.           $ [1]:RELOAD_SCRIPT                                                              $
echo.           $ [2]:title                                                                      $
echo.           $ [3]:version                                                                    $
echo.           $ [4]:POXuiDE                                                                    $
echo.           $ [on] Включить откладку                                                         $
echo.           $ [off] Выключить откладку                                                       $
echo.           $                                                                                $
echo.           $                                                                                $
echo.           $                                                                                $
echo.           $                                                                                $
echo.           $                                                                                $
echo.           $                                                                                $
echo.           $                                         POXuiDE with POXuiDE by Russanandres   $
echo.           $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
echo.
echo.
echo.
echo.
echo [POXui] ################################################################################################## [%time%]
echo.
set /p Ch=)
if '%Ch%'=='1' goto RELOAD_SCRIPT
if '%Ch%'=='2' goto :title
if '%Ch%'=='3' goto :version
if '%Ch%'=='4' goto :POXuiDE
if '%Ch%'=='on' @echo on & ping localhost -n 2 >nul & goto RELOAD_SCRIPT
if '%Ch%'=='off' @echo off & ping localhost -n 2 >nul & goto RELOAD_SCRIPT
if '%Ch%'=='a' goto settings
if '%Ch%'=='b' cd %systemdrive%\Windows\system32\ & start cmd.exe & goto POXuiDE
if '%Ch%'=='c' goto version
if '%Ch%'=='r' cls & echo Good night, POXuiDE & ping localhost -n 2 >nul & goto RELOAD_SCRIPT
if '%Ch%'=='e' cls & echo Good night, POXuiDE & ping localhost -n 2 >nul & cls & goto DebianSystem

:version
cls
echo.                                                                      
echo       85          78888884    78888880    488888       78888885    088888 
echo   77  87          78     88  287     88  78           987     88  48      
echo 78840887 88    80 78      88 80       87  887         82      78  788     
echo --------------------------------------------------------------------------
echo 8     87 88    84 78      88 84       87      282     87      78       48 
echo 80   787 08    85 78     88  087     88        84     88      88        87
echo 78888482  8888089 78888889    28888884   4888885       58888882   8888882 
echo.
echo. NO Its now POXuiDE
echo.
echo POXuiDE version: %verd%
echo POXuiDE version: %vermenud%
echo POXuiDE maketime: %maketimed%
echo POXuiDE makedate: %makedated%
echo.
ver
echo.
pause
goto POXuiDE