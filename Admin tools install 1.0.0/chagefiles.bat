@ECHO OFF&PUSHD %~DP0 &TITLE 1.12.2

Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.　　　　　 菜 单 选 项
@ echo.
@ echo.      用记事本打开 → 请输入1
@ echo.
@ echo.      返回管理器 → 请输入2
@ echo.
set /p xj= 输入数字按回车：
if /i "%xj%"=="1" Goto hard disk
if /i "%xj%"=="2" Goto EXIT

@ echo.
echo      选择无效，请重新输入
goto menu
:hard disk
start notepad.exe server.properties
chagefiles.bat



:EXIT
服务器管理.bat