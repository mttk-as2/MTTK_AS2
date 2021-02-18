@echo off
cd ..
set WORK_HOME=%cd%
echo work path is %WORK_HOME%
%WORK_HOME%\runtime\mongodb\bin\mongod.exe --remove --serviceName "MongoDB"
echo MongoDB services remove successful
pause 