@ECHO OFF&PUSHD %~DP0 &TITLE 1.12.2

Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.���������� �� �� ѡ ��
@ echo.
@ echo.      ����־�����ļ��� �� ������1
@ echo.
@ echo.      �򿪴浵�����ļ��� �� ������2
@ echo.
@ echo.      ���ع����� �� ������3
@ echo.
set /p xj= �������ְ��س���
if /i "%xj%"=="1" Goto hard
if /i "%xj%"=="2" Goto usb
if /i "%xj%"=="3" Goto EXIT
if /i "%xj%"=="4" Goto 
if /i "%xj%"=="5" Goto 
@ echo.
echo      ѡ����Ч������������
goto menu
:hard
start explorer logs
view.bat

:usb 
start explorer world
view.bat

:EXIT
����������.bat
goto menu