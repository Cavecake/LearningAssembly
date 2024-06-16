SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1

section .text
    global _start

_start:
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg1
    mov edx, len1
    int 80h

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg2
    mov edx, len2
    int 80h

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg3
    mov edx, len3
    int 80h

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg4[4]; msg4, msg4[4] and msg4 + 4 working +4 and [4] displaying the fifth element
    mov edx, 1
    int 80h

    mov eax, SYS_EXIT
    int 80h

section .data
    msg1 db 'Hello, programmers!',0xA,0xD
    len1 equ $ - msg1

    msg2 db 'Welcome to the world of,', 0xA,0xD
    len2 equ $ - msg2

    msg3 db 'Linux assembly programming! '
    len3 equ $ - msg3

    msg4 times 9 db "."
    len4 equ $ - msg4 