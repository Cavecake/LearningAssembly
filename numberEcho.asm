section .data
    userMsg db 'Please enter a number: '
    lenUserMsg equ $ - userMsg ; equ is for =, $ is the current adress, userMsg the offset
    dispMsg db 'You have entered: '
    lenDispMsg equ $-dispMsg 

section .bss ;Uninitialized data
    num resb 5; resb, resw, resd and resq are used to reservade n time 1,2,4,8 bytes
    ; n is the number afterwards

section .text
    global _start

_start: ; defines a 'function'
    mov eax,4 ; Settings for system calls a defines the cmd 4 = sys_write
    mov ebx,1 ; using stdout as 'file'
    mov ecx, userMsg
    mov edx, lenUserMsg
    int 0x80

    ; Reading user input
    mov eax, 3; Read instruction
    mov ebx, 2
    mov ecx, num ; Target
    mov edx, 1 ; amount of bytes
    int 0x80

    ; Displaying Text
    mov eax, 4
    mov ebx, 1
    mov ecx, dispMsg
    mov edx, lenDispMsg
    int 0x80

    ; Displaying input
    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 5
    int 0x80

    ; exit
    mov eax, 1
    mov ebx, 0
    int 0x80