10 REM For Loop Example with subroutine
20 FOR X=1 TO 5 STEP 1
30 PRINT X". number should increase"
35 GOSUB 1000
40 NEXT X
50 END
1000 PRINT "this is a subroutine"
1010 RETURN