.MODEL SMALL
.STACK 100H
.DATA
 M1 DB 'THE CAPITAL LETTERS ARE: $'
 
.CODE 

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, M1
    INT 21H
    
    MOV AH, 2
    MOV BH, 41H
    
    PRINT:
    MOV DL, BH
    INT 21H
    MOV DL, ' '
    INT 21H
    INC BH
    CMP BH, 5AH
    JLE PRINT
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN




