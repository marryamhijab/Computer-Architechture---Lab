global _main
extern _printf

section .data
    number db 0
    format db "Value loaded into BL = %d", 10, 0

section .text
_main:
    ; Store 42 in memory.
    mov byte [number], 42

    ; Read the byte from memory
    ; and place it inside BL.
    mov bl, [number]

    ; Convert BL to 32 bits for printf.
    movzx eax, bl

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
