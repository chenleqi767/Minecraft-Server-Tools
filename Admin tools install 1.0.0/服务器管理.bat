@ECHO OFF&PUSHD %~DP0 &TITLE ����������̨

Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.���������� �� �� ѡ ��
@ echo.
@ echo.      ��������� �� ������1
@ echo.
@ echo.      �鿴�����Ϣ �� ������2
@ echo.
@ echo.      �޸�������Ϣ �� ������3
@ echo.
@ echo.      ���������ݷ�ʽ �� ������4
@ echo.
@ echo.      �˳� �� ������5
@ echo.
set /p xj= �������ְ��س���
if /i "%xj%"=="1" Goto start
if /i "%xj%"=="2" Goto viewinfo
if /i "%xj%"=="3" Goto chagefiles
if /i "%xj%"=="4" Goto desktop
if /i "%xj%"=="5" Goto Exit
 @ echo.
echo      ѡ����Ч������������
goto menu
:start
start.bat
����������.bat

:viewinfo
view.bat

:chagefiles
chagefiles.bat

:desktop
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\�ҵ�����1.12.2����������̨.lnk""):b.TargetPath=""%~dp0����������.bat"":b.WorkingDirectory=""%~dp0Program"":b.Save:close")
����������.bat

:Exit
Exit