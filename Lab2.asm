.MODEL SMALL 
.STACK 100H 
.DATA
 M1 DB 'ENTER FRIST NUMBER: $'
 M2 DB 10,13,'ENTER SECOND NUMBER: $' 
 M3 DB 10,13,'SUMMATION OF $' 
 M4 DB ' AND $'
 M5 DB ' IS $'
 
 NEW DB 0AH,13,'$'
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,9 
    LEA DX,M1
    INT 21H
    
    MOV AH,1     ;INPUT 1
    INT 21H
    MOV BH,AL 
    
    MOV AH,9 
    LEA DX,M2
    INT 21H 
    
    MOV AH,1     ;INPUT 2
    INT 21H
    MOV BL,AL 
    
    MOV AH,9 
    LEA DX,M3    ;SUMMATION OF
    INT 21H 
    
    MOV AH,2     ;2
    MOV DL,BH
    INT 21H
    
    MOV AH,9 
    LEA DX,M4    ;AND
    INT 21H
    
    MOV AH,2     ;5
    MOV DL,BL
    INT 21H
    
    MOV AH,9 
    LEA DX,M5    ;IS
    INT 21H
        
    ADD BH,BL    ;SUM
    SUB BH,30H    
        
    MOV AH,2     ;PRINT
    MOV DL,BH
    INT 21H
    
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN
    




