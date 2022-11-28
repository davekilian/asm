
section .data

section .text
    align 8

    global _main

_main:

    mov     rax, 1
    mov     rdx, 1
    mov     rcx, 2

fib:
    mov     r8, rax
    add     rax, rdx
    mov     rdx, r8
    inc     rcx
    cmp     rcx,20
    jne     fib

    mov     rax, 0
    ret
