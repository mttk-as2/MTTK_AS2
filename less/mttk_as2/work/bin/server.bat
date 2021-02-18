@echo off
if "%OS%" == "Windows_NT" setlocal

set SERVER_HOME=..
set JAVA_HOME=..\runtime\jre

rem Check Java Home
if exist "%JAVA_HOME%\bin\java.exe" goto okJavaHome
echo The JAVA_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
goto end
:okJavaHome

rem Check CHUB HOME
if exist "%SERVER_HOME%\bin\server.bat" goto okChubHome
echo The SERVER_HOME environment variable is not defined correctly
echo This environment variable is needed to run this program
goto end
:okChubHome

rem check whether are updated bootstrap.jar
rem bootstrap.jar can not be replaced by upgrade program since it is always in use
if not exist "%SERVER_HOME%\bin\bootstrapNew.jar" goto okUpgrade
	copy  %SERVER_HOME%\bin\bootstrapNew.jar %SERVER_HOME%\bin\bootstrap.jar /Y
	del %SERVER_HOME%\bin\bootstrapNew.jar /f
	echo Updated bootstrap.jar applied
:okUpgrade

rem ---------------------------
rem build class path
rem ---------------------------
set CLASSPATH=%SERVER_HOME%\bin\bootstrap.jar
rem ----- Execute The Requested Command ---------------------------------------

echo Using SERVER_HOME:   %SERVER_HOME%
echo Using JAVA_HOME:  %JAVA_HOME%
%JAVA_HOME%\bin\java -version

set _EXECJAVA=%JAVA_HOME%\bin\java
set MAINCLASS=com.mttk.chub.spoke.startup.Bootstrap
rem if you want to set java vm machine, here is the place
rem set JAVA_OPTS=-server -Xms2048m -Xmx2048m -XX:PermSize=256M -XX:MaxPermSize=512M

%_EXECJAVA% %JAVA_OPTS% -classpath "%CLASSPATH%"  -Dserver.home="%SERVER_HOME%"  -Djava.library.path="%SERVER_HOME%\lib\native" -Djava.net.preferIPv4Stack=true  %MAINCLASS% %1 %2 %3 %4 %5 %6
goto end

:end
