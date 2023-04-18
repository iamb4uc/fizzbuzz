section .data
    fizz db "Fizz", 0
    buzz db "Buzz", 0
    fizzbuzz db "FizzBuzz", 0
    fmt db "%s\n", 0
    num_fmt db "%d\n", 0

section .text
global main

main:
    mov ecx, 1

fizzbuzz_loop:
    push ecx

    ; Check for FizzBuzz
    mov eax, ecx
    mov ebx, 15
    xor edx, edx
    div ebx
    mov ecx, fizzbuzz
    cmovz ecx, edx

    ; Check for Fizz
    mov eax, ecx
    mov ebx, 3
    xor edx, edx
    div ebx
    mov ecx, fizz
    cmovz ecx, edx

    ; Check for Buzz
    mov eax, ecx
    mov ebx, 5
    xor edx, edx
    div ebx
    mov ecx, buzz
    cmovz ecx, edx

    ; Print result
    push ecx
    push fmt
    call printf
    add esp, 8

    pop ecx
    add ecx, 1
    cmp ecx, 101
    jne fizzbuzz_loop

    ; Exit
    mov eax, 0
    ret

