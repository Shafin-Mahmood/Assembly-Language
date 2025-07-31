.MODEL SMALL 
.STACK 100H 
.DATA
 M1 DB 'ENTER A DIGIT: $'
 M2 DB 10,13,'ENTER ANOTHER DIGIT: $' 
 M3 DB 10,13,'YOUR ID IS:  $' 
 M4 DB '-$'
 
 NEW DB 0AH,13,'$'
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,9 
    LEA DX,M1
    INT 21H
    
    MOV AH,1     ;INPUT X
    INT 21H
    MOV BH,AL 
    
    MOV AH,9 
    LEA DX,M2
    INT 21H 
    
    MOV AH,1     ;INPUT Y
    INT 21H
    MOV BL,AL 
    
    MOV AH,9 
    LEA DX,M3    ;YOUR ID IS
    INT 21H 
    
    MOV AH,2     ;X
    MOV DL,BH
    INT 21H
    
    MOV AH,2     ;X
    MOV DL,BH
    INT 21H
    
    MOV AH,9 
    LEA DX,M4    ;-
    INT 21H
    
    MOV AH,2     ;Y
    MOV DL,BL
    INT 21H
    
    MOV AH,2     ;Y
    MOV DL,BL
    INT 21H
    
    MOV AH,2     ;Y
    MOV DL,BL
    INT 21H
    
    MOV AH,2     ;Y
    MOV DL,BL
    INT 21H
    
    MOV AH,2     ;Y
    MOV DL,BL
    INT 21H
    
    MOV AH,9 
    LEA DX,M4    ;-
    INT 21H
    
    MOV AH,2     ;X
    MOV DL,BH
    INT 21H
    
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END MAIN
    




