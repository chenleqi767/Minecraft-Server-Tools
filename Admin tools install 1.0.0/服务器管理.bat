@ECHO OFF&PUSHD %~DP0 &TITLE 服务器控制台

Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.　　　　　 菜 单 选 项
@ echo.
@ echo.      开起服务器 → 请输入1
@ echo.
@ echo.      查看相关信息 → 请输入2
@ echo.
@ echo.      修改配置信息 → 请输入3
@ echo.
@ echo.      创建桌面快捷方式 → 请输入4
@ echo.
@ echo.      退出 → 请输入5
@ echo.
set /p xj= 输入数字按回车：
if /i "%xj%"=="1" Goto start
if /i "%xj%"=="2" Goto viewinfo
if /i "%xj%"=="3" Goto chagefiles
if /i "%xj%"=="4" Goto desktop
if /i "%xj%"=="5" Goto Exit
 @ echo.
echo      选择无效，请重新输入
goto menu
:start
start.bat
服务器管理.bat

:viewinfo
view.bat

:chagefiles
chagefiles.bat

:desktop
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\我的世界1.12.2服务器控制台.lnk""):b.TargetPath=""%~dp0服务器管理.bat"":b.WorkingDirectory=""%~dp0Program"":b.Save:close")
服务器管理.bat

:Exit
Exit