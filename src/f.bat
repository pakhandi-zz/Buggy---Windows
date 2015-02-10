@set flag=0
@FOR %%A IN (0 1 2 3 4 5 6 7 8) DO @if EXIST in%%A.txt (
 
 echo Running Test Case %%A
 echo:
 echo INPUT
 type in%%A.txt
 echo:
 @%1 < in%%A.txt > o.txt
 echo YOUR OUTPUT
 @%1 < in%%A.txt
 echo:
 echo:
 echo EXPECTED OUTPUT
 @type out%%A.txt
 echo:
 echo:
 echo VERDICT
 @fc o.txt out%%A.txt > nul
 @if errorlevel 1 (
 	echo Failed.. 
 	set flag=1
 	) else (
 		echo Passed .. 
 	)
 echo ---------------------
 )
@if %flag% EQU 1 (
	@echo Some test cases failed
	) else (
		@echo You are a stud..atleast on sample cases..
	)
 


