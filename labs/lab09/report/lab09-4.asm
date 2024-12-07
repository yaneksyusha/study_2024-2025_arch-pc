%include 'in_out.asm'
SECTION .data
    msg: DB 'Введите x: ',0
    result: DB '15x-9=',0
SECTION .bss
    x: RESB 80
    res: RESB 80
SECTION .text
GLOBAL _start
    _start:
    mov eax,msg
    call sprint
    mov ecx, x
    mov edx, 80
    call sread
    mov eax,x
    call atoi
    call _calcul
    mov eax,result
    call sprint
    mov eax,[res]
    call iprintLF
    call quit
    _calcul:
        mov ebx,15
        mul ebx
        sub eax,9
        mov [res],eax
        ret