
section .data

    msg:    db  "Hello, world!", 10, 0
    .len:   equ $ - msg

section .text
    align 8

    global _main

_main:
    mov     rax, 0x2000004  ; write
    mov     rdi, 1          ; fd = stdout
    mov     rsi, msg
    mov     rdx, msg.len
    syscall

    mov     rax, 0
    ret
