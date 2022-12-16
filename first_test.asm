section .text
global _start
cpu 386

_start:
    MOV ESI, TABLE_A
    MOV EDI, TABLE_B
    MOV ECX, 3
    REP MOVSB  ; copy ECX bytes from DS:ESI to ES:EDI

    MOV EAX,1  ; call sys_exit, again FIXED to EAX!
    INT 80h

section .data

TABLE_A DB 10, 5, 1
TABLE_B DB 0, 0, 0
