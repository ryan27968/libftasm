section .text
    global _ft_isascii

_ft_isascii:
    cmp rdi, 0   ; check if between 0 and 127. If not, result is false.
    jl false     ;
    cmp rdi, 127 ;
    jg false     ;

true:
    mov rax, 1 ; return true
    ret        ; end

false:
    mov rax, 0 ; return false
    ret        ; end