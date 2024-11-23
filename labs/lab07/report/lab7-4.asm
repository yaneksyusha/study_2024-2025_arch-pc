%include 'in_out.asm'
SECTION  .data
   msg1: DB 'Введите значение переменной x: ',0h
   msg2: DB 'Введите значение переменной a: ',0h
   ren: DB 'Результат: ',0h
SECTION .bss
   x:  RESB 80
   a:  RESB 80
   res: RESB 80
SECTION  .text
   GLOBAL _start
_start:
   mov eax,msg1
   call sprint
   mov ecx,x
   mov edx,80
   call sread
   mov eax,x
   call atoi
   mov [x],eax
   
   mov eax,msg2
   call sprint
   mov ecx,a
   mov edx,80
   call sread
   mov eax,a
   call atoi
   mov [a],eax
   
   mov ebx, [x]
   cmp ebx, 5
   jg check_A
   mov eax,[a]
   mov ebx,[x]
   mul ebx
   mov edx,eax
   jmp fin
check_A:
   mov ebx,[x]
   sub ebx, 5
   mov edx,ebx
   jmp fin
fin:
   mov eax,ren
   call sprint
   mov eax,edx
   call iprintLF
   call quit
   