.MODEL SMALL
.STACK 100H
.DATA
   M1 DB 'NAME - SHAFIN MAHMOOD$'
   M2 DB 10,13,'ID -22-46665-1$'
   M3 DB 10,13,'CSE DEPT$';FOR STRING END MARKAER WE USE DOLLAR SIGN;
   
.CODE
  
MAIN PROC
    MOV AX,@DATA 
    MOV DS,AX  
    
    ;AH=1 ; SINGLE INPUT
    ;AH=2 ; SINGLE OUTPUT
    ;AH=9 ; STRING OUTPUT  
    
    MOV AH,9 
    LEA DX,M1  ;LEA = LOAD EFFECTIVE ADDRESS   
    INT 21H    ;FOR CONSOLE
    
 
    MOV AH,9                   
    LEA DX,M2
    INT 21H 
   
    
    MOV AH,9
    LEA DX,M3
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
                       
                       