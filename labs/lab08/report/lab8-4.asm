%include  'in_out.asm'
SECTION .data
msg1 db "Функция f(x)=15x-9",0
msg2 db "Результат: ",0
SECTION .text
GLOBAL _start
_start:
   mov eax, msg1
   call sprintLF
   
   pop ecx
   pop edx
   sub ecx,1
   mov esi,0
next:
   cmp ecx,0h
   jz  _end
   pop eax
   call atoi
   
   mov ebx, 15
   mul ebx
   sub eax, 9
   add esi,eax
   loop next
_end:
   mov eax, msg2
   call sprint
   mov eax, esi
   call iprintLF
   call quit