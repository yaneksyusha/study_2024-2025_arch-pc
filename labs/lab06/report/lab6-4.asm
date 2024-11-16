%include 'in_out.asm'

 SECTION .data
 msg: DB 'Введите x: ',0
 rem: DB 'Результат вычислений: ',0
 
 SECTION .bss
 x:    RESB 80
 SECTION .text
 GLOBAL _start
  _start:
  
  mov eax, msg
  call sprintLF
  
  mov ecx, x
  mov edx, 80
  call sread
  mov eax,x
  call atoi
  
  mov ebx,8
  mul ebx
  sub eax,6
  xor edx,edx
  mov ebx,2
  div ebx
  mov edx,eax
  
  mov eax,rem
  call sprint
  mov eax,edx
  call iprintLF
  
  call quit