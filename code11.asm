global _main
extern _printf

section .data
    format db "Result = 0x%02X", 10, 0

section .text
_main:
    ; AA in binary is:
    ; 10101010
    mov al, 0xAA

    ; 0F in binary is:
    ; 00001111
    and al, 0x0F

    ; Result:
    ; 00001010
    ; This is hexadecimal 0A.
    movzx eax, al

    ; Push the result.
    push eax

    ; Push the address of the format string.
    push format

    ; Call printf to display the result.
    call _printf

    ; Remove the two parameters from the stack.
    add esp, 8

    ; Return 0.
    xor eax, eax
    ret
