section .data
    name db ' Cavecake'

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, 9
    int 0x80

    mov [name], dword 'Ocean'
    ; Labels seem to be pointing to the adress
    ; when using in mov on the left the data is moved to the adress location []
    ; when used on the right, the adress is copied into the label

    mov eax, 4 ; it seems you need to reset the regesters each time
    mov ebx, 1
    mov ecx, name
    mov edx, 9
    int 0x80

    mov eax, 4 ; it seems you need to reset the regesters each time
    mov ebx, 1
    mov ecx, name
    mov edx, 10
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80