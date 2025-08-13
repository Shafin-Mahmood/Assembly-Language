.MODEL SMALL
.STACK 100H
.DATA
 M1 DB 'ENTER AN INPUT: $'
 M2 DB 10,13,'VAWEL $'
 M3 DB 10,13,'NOT VAWEL $' 
 M4 DB 10,13,'INVALID INPUT... TRY AGAIN!! $'
.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    MOV CX, 5
    
    INPUT:
    MOV AH, 9
    LEA DX, M1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH, AL
    
    CMP BH, 41H ;A
    JL ERR
    CMP BH, 5AH ;Z
    JLE OKAY

    CMP BH, 61H
    JL ERR
    CMP BH, 7AH
    JG ERR 
    
    OKAY:   
    CMP BH, 'A'
    JE PRINT
    CMP BH, 'E'
    JE PRINT
    CMP BH, 'I'
    JE PRINT
    CMP BH, 'O'
    JE PRINT
    CMP BH, 'U'
    JE PRINT
    
    CMP BH, 'a'
    JE PRINT
    CMP BH, 'e'
    JE PRINT
    CMP BH, 'i'
    JE PRINT
    CMP BH, 'o'
    JE PRINT
    CMP BH, 'u'
    JE PRINT
    
    MOV AH, 9
    LEA DX, M3
    INT 21H
    
    JMP EXIT
    
    PRINT:
    MOV AH, 9
    LEA DX, M2
    INT 21H
    
    ERR:
    MOV AH, 9
    LEA DX, M4
    INT 21H
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    JMP INPUT 
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
    
    




