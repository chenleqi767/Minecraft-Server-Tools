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
@ echo.      �ü��±��� �� ������1
@ echo.
@ echo.      ���ع����� �� ������2
@ echo.
set /p xj= �������ְ��س���
if /i "%xj%"=="1" Goto hard disk
if /i "%xj%"=="2" Goto EXIT

@ echo.
echo      ѡ����Ч������������
goto menu
:hard disk
start notepad.exe server.properties
chagefiles.bat



:EXIT
����������.bat