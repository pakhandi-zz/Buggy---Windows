@set flag=0
@FOR %%A IN (0 1 2 3 4 5 6 7 8 9 10 11 12) DO @if EXIST in%%A.txt (
 
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
 echo ---------------------
 )
 


