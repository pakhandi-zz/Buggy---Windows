@set /p round=Enter The Round Number :
@echo %round%
@echo %round%> temp.txt
@pause
@ini.exe < temp.txt
@pause
@IF EXIST %round% (
 @subl ./%round%
 @cd C:/CF/dist/%round%/A/
 @subl aprog.cpp
 @start http://codeforces.com/contest/%round%/problems
 @exit
) ELSE (
exit
)
@pause
