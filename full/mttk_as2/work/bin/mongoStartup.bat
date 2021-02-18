@echo off
cd ..
set WORK_HOME=%cd%
echo work path is %WORK_HOME%
echo mongo start successful
%WORK_HOME%\runtime\mongodb\bin\mongod.exe  --logpath %WORK_HOME%\runtime\mongodb\log\mongodb.log --logappend --dbpath %WORK_HOME%\data\db --directoryperdb 



