@ECHO OFF
:: Program for cerner_2^5_2020 
:: checkIfCorrupt %userprofile%
GOTO:EOF
 
:CheckIfCorrupt
FOR /D %%A IN (%~dpn1.*) DO CALL :DelDeadProfiles %%A %userprofile%
GOTO:EOF
:: cerner_2^5_2020
:DelDeadProfiles
if not [%~f1]==[%~f2] echo Deleting corrupted profile %~nx1 . . .
if not [%~f1]==[%~f2] rd /s /q %1
goto:EOF