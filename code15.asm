global _main
extern _printf

section .data
    format db "AL = %d, BL = %d", 10, 0

section .text
_main:
    ; Store 10 in AL.
    mov al, 10

    ; Store 20 in BL.
    mov bl, 20

    ; Before XCHG:
    ; AL = 10
    ; BL = 20
    xchg al, bl

    ; After XCHG:
    ; AL = 20
    ; BL = 10
    movzx ecx, bl
    movzx eax, al

    ; Push printf arguments (right to left).
    push ecx
    push eax
    push format
    call _printf

    ; Three values were pushed.
    ; 3 x 4 = 12 bytes.
    add esp, 12

    ; Return 0.
    xor eax, eax
    ret
