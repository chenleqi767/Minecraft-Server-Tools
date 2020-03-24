@ECHO OFF&PUSHD %~DP0 &TITLE 1.12.2

Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 7&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.   开服设置向导（内存）
@ echo.   提示
@ echo.   1GB = 1024MB
@ echo.   windows最好预留2GB内存共系统使用
@ echo.   设置的内存不能超过物理内存总数，否则无法开服    
@ echo.
set /p nc= 输入内存大小（MB）：
@ echo.正在开服中,请稍后...
@ echo.请耐心等待，如果出现Done字样说明开服成功，否则失败，请检查内存设置是否符合标准，并检查java配置是否正确
@ echo.停服时输入stop即可保存存档
java -Xmx%nc%M -Xms%nc%M -jar server.jar nogui 
@ echo.您停服了，或出现故障
@ echo.按任意键推出向导
pause
服务器管理.bat