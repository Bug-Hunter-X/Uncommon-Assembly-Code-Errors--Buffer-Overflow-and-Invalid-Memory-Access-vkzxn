section .data
    buffer times 100 db 0 ;allocate buffer of 100 bytes
section .bss
section .text
    global _start

_start:
    ; ... other code ...
    mov ecx, 10 ; ensure ecx is less than buffer size
    mov ebx, buffer
    mov eax, [ebx+ecx*4] ; Check buffer boundary before access
    cmp eax, buffer + 100; check if value in eax is within buffer range
    jg error; jump to error handling if outside of buffer
    mov DWORD PTR [eax], 0 ;writing to a valid memory address
    jmp exit ; jump to exit
error:
    ; Handle error condition (e.g., exit)
    mov eax, 1 ; exit syscall
    xor ebx, ebx ; exit code 0
    int 0x80
exit:
    mov eax, 1 ; exit syscall
    xor ebx, ebx ; exit code 0
    int 0x80