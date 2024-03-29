1 PRINT CHR$(147): V=53248: POKE V+33,0: REM clear screen
2 FOR X=12800 TO 12927: POKE X,0: NEXT X: REM Clear RAM for sprites

10 FOR X=12800 TO 12881: READ Y: POKE X,Y: NEXT X: REM sprite generation
11 POKE 2040,200: POKE 2041,201: POKE 2042,201: POKE V+21,7
12 POKE V+28,6: POKE V+37,15: POKE V+38,2: REM multicolor for sprite 1&2
13 POKE V+39,7: POKE V+40,8: POKE V+41,6: REM sprite color sprite 0&1&2
15 POKE V+23,7: POKE V+29,7: POKE V+16,1: REM sprite properties height, width, x position
16 POKE V+1,133: POKE V+2,170: POKE V+5,115: REM x/y positions

19 REM moving and changing colors
20 FOR X=200 TO 1 STEP -1: POKE V,X: Z=Z+0.61: POKE V+3,Z
21 POKE V+4,(201-X)/2: NEXT X
22 POKE V+16,0: POKE V,255: M=PEEK(V+4)
23 FOR X=255 TO 170 STEP -1: POKE V,X: Z=Z+0.66: POKE V+3,Z
24 POKE V+4,M+(256-X)/1.2: NEXT X
25 FOR X=0 TO 5: FOR Y=1 TO 255: POKE V+37+X,Y: NEXT Y,X
26 POKE V+38,2: POKE V+39,7: POKE V+41,6
27 FOR Y=1 TO 65: POKE V+40,Y: POKE V+37,Y+10
28 FOR Z=0 TO 15: POKE V+39,Y: NEXT Z, Y

29 REM waiting, deleting sprite 0 and fade off 
30 FOR X=0 TO 3000: NEXT X
31 FOR X=0 TO 32: POKE 12832+X,0: POKE 12832-X,0
32 FOR Y=0 TO 100: NEXT Y,X: POKE V+21,0

39 REM SPRITE C64-WIKI.DE (unicolor; sprite 0)
40 DATA 239,81,85,139,81,20,137,81,28,137,81,89,137,213,89,142,85,93,138   
41 DATA 95,85,138,91,85,238,91,85,0,0,0,0,0,0,0,0,0
42 DATA 0,199,0,0,231,0,0,164,0,0,180,0,0,151,0,0,180,0,0,164,0,0,231,0,0,199,0

44 REM multicolor sprite lines (sprite 1&2)
45 DATA 0,255,255,255,170,85,170,170,85,170,85,170,85,85,170,85,255,255,255