.data
prompt: .asciiz "Enter Your string here:"
prompt1: .asciiz "Your string is: "
input: .space 256
inputSize: .word 255
.text
main:
li $v0, 54
la $a0, prompt
la $a1, input
la $a2, inputSize
syscall

li $v0, 59
la $a0, prompt1
la $a1, input
syscall

li $v0, 10
syscall

