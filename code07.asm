global _main
extern _printf

section .data
    format db "20 - 5 = %d", 10, 0

section .text
_main:
    ; Store 20 inside AL.
    mov al, 20

    ; Subtract 5.
    sub al, 5

    ; AL now contains 15.
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
