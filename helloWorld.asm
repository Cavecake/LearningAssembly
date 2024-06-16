section .text
    global _start

_start:
    mov edx,len
    mov ecx,msg
    mov ebx,1
    mov eax,4
    int 0x80 ;call kernel

    mov ebx,0
    mov eax,1
    int 0x80 ;call kernel


section .data
msg db 'Hello World', 0xa
len equ $ - msg ; Setting a constant using equ