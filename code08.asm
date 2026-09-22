global _main
extern _printf

section .data
    format db "30 - 10 = %d", 10, 0

section .text
_main:
    ; Store 30 inside EAX.
    mov eax, 30

    ; Store 10 inside EBX.
    mov ebx, 10

    ; Calculate EAX - EBX.
    sub eax, ebx

    ; EAX now contains 20.
    push eax
    push format
    call _printf

    ; Two values were pushed.
    ; 2 x 4 = 8 bytes.
    add esp, 8

    ; Return 0.
    xor eax, eax
    ret
