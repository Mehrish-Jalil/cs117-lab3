; Mini Calculator in Assembly 
; Performs addition and multiplication of two numbers (4 and 2)

section .data
    num1 db '4'
    num2 db '2'
    msg_add db 'Addition Result: ', 0
    msg_mul db 'Multiplication Result: ', 0
    newline db 10, 0

section .bss
    result resb 4

section .text
    global _start

_start:
    ; ------------------------
    ; Addition (4 + 2)
    ; ------------------------
    mov al, [num1]        ; load '4'
    sub al, '0'           ; convert ASCII → int
    mov bl, [num2]        ; load '2'
    sub bl, '0'
    add al, bl            ; AL = 4 + 2
    add al, '0'           ; convert int → ASCII
    mov [result], al      ; store result as ASCII

    ; Print "Addition Result: X"
    mov eax, 4            ; syscall: write
    mov ebx, 1            ; stdout
    mov ecx, msg_add
    mov edx, 17
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; ------------------------
    ; Multiplication (4 * 2)
    ; ------------------------
    mov al, [num1]
    sub al, '0'
    mov bl, [num2]
    sub bl, '0'
    mul bl                ; AX = AL * BL
    add al, '0'
    mov [result], al

    ; Print "Multiplication Result: X"
    mov eax, 4
    mov ebx, 1
    mov ecx, msg_mul
    mov edx, 25
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80
