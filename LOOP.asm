.MODEL SMALL
.STACK 100H
.DATA
 M1 DB 'LABIB' ,10,13,'$'
.CODE

MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH, 9
    MOV CX, 5
    
    PRINT_LOOP:
    LEA DX,M1
    INT 21H
    DEC CX
    JNZ PRINT_LOOP
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN





