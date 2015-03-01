@set /p round=Enter The Round Number :
@echo %round%> temp.txt
@C:
@cd C:/CF/dist
@ini.exe<temp.txt
@subl ./%round%
@cd C:/CF/dist/%round%/A/
@subl aprog.cpp
@start http://codeforces.com/contest/%round%/problems