			org     00h
			movlw   07h
			movwf   07h
			movwf   1fh
			bsf     03h,5
			clrf    06h
			bsf     05h,0
			bsf     05h,1
			bsf     05h,2
			bcf     03h,5
			clrf    20h

START       movf    05h,0
            movwf   20h
            call    TABLE
 			call    TABLE2
            movwf   06h
            goto    START

TABLE       addwf   02h,1
            
		    retlw   3Fh       ; 0
		    retlw   06h       ; 1
		    retlw   5Bh       ; 2
		    retlw   4Fh       ; 3
		    retlw   66h       ; 4
		    retlw   6Dh       ; 5
		    retlw   7Dh       ; 6
		    retlw   27h       ; 7
		    retlw   7Fh       ; 8
		    retlw   6Fh       ; 9
		    retlw   77h       ; A
		    retlw   7Ch       ; B
		    retlw   39h       ; C
		    retlw   5Eh       ; D
		    retlw   79h       ; E
		    retlw   71h       ; F

TABLE2       decf    21h,1  
            
		    retlw   71h       ; F
			retlw   79h       ; E
			retlw   5Eh       ; D
			retlw   39h       ; C
			retlw   7Ch       ; B
			retlw   77h       ; A
			retlw   6Fh       ; 9
			retlw   7Fh       ; 8
			retlw   27h       ; 7
			retlw   7Dh       ; 6
			retlw   6Dh       ; 5
			retlw   66h       ; 4
			retlw   4Fh       ; 3
			retlw   5Bh       ; 2
			retlw   06h       ; 1
			retlw   3Fh       ; 0

           

            END
      
