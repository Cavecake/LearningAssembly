SYS_EXIT equ 1
SYS_READ  equ 3
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1

section .data
    msg db "Input a number: "
    len equ $ - msg
    msg_even db "Even number", 0xA, 0xD
    len_even equ $ - msg_even
    msg_odd db "Odd number", 0xA, 0xD 
    len_odd equ $ - msg_odd
section .bss
    buffer resb 1
section .text
    global _start

_start:
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg
    mov edx, len
    int 0x80

    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, buffer
    mov edx, 2
    int 0x80

    
    mov eax, [buffer]
    sub eax, '0'

    test eax, 1
    jz even
odd:
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg_odd
    mov edx, len_odd
    int 0x80
    jmp exit
even:
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg_even
    mov edx, len_even
    int 0x80

exit:
    mov eax, SYS_EXIT
    mov ebx, 0
    int 0x80