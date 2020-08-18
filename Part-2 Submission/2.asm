
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

DATA SEGMENT
    MSG DB 80
             DB 0
             DB 80 DUP(\'$\')
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE,DS:DATA

        MOV AX,DATA
    MOV DS,AX
    MOV AH,0AH
    MOV AX,OFFSET MSG
    INT 21H

    MOV AH,09H
    MOV DX,OFFSET MSG+2
    INT 21H
    MOV AH,4CH
    INT 21H
CODE ENDS
END

ret




