global _main
extern _printf

section .data
    format db "After DEC, EBX = %d", 10, 0

section .text
_main:
    ; Start with 10.
    mov ebx, 10

    ; DEC means decrease by one.
    dec ebx

    ; EBX now contains 9.
    push ebx
    push format
    call _printf

    ; Two values were pushed.
    ; 2 x 4 = 8 bytes.
    add esp, 8

    ; Return 0.
    xor eax, eax
    ret
