section .text
    global ft_isprint

ft_isprint:
    cmp rdi, 32 ;Check if between 32 and 126. If not, result is false.
    jl false
    cmp rdi, 126
    jg false
true:
    mov rax, 1
    ret
false:
    mov rax, 0
    ret