; (C) Copyright 2022-2027 Venkatesh Mishra
; Soul Linux boot screen

global _start
section .text

_start:
  mov rax, 1        ; write(
  mov rdi, 1        ;   STDOUT_FILENO,
  mov rsi, msg      ;   "Booting Soul Linux\n",
  mov rdx, msglen   ;   sizeof("Booting Soul Linux\n")
  syscall           ; );

  mov rax, 60       ; exit(
  mov rdi, 0        ;   EXIT_SUCCESS
  syscall           ; );

section .rodata
  msg: db "Booting Soul Linux", 10
  msglen: equ $ - msg
