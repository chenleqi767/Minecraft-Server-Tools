@ECHO OFF&PUSHD %~DP0 &TITLE 1.12.2

Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 7&&PAUSE >NUL&&EXIT)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion
:Menu
Cls
@ echo.
@ echo.   ���������򵼣��ڴ棩
@ echo.   ��ʾ
@ echo.   1GB = 1024MB
@ echo.   windows���Ԥ��2GB�ڴ湲ϵͳʹ��
@ echo.   ���õ��ڴ治�ܳ��������ڴ������������޷�����    
@ echo.
set /p nc= �����ڴ��С��MB����
@ echo.���ڿ�����,���Ժ�...
@ echo.�����ĵȴ����������Done����˵�������ɹ�������ʧ�ܣ������ڴ������Ƿ���ϱ�׼�������java�����Ƿ���ȷ
@ echo.ͣ��ʱ����stop���ɱ���浵
java -Xmx%nc%M -Xms%nc%M -jar server.jar nogui 
@ echo.��ͣ���ˣ�����ֹ���
@ echo.��������Ƴ���
pause
����������.bat