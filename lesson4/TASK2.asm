.data
prompt: .asciiz  "Enter number to flip: "
prompt1: .asciiz "Aanswer in decimal: "
prompt2: .asciiz "\nAnswer in hex: "

	
.text
main:
li $v0,4
la $a0, prompt
syscall
	
li $v0, 5
syscall 
move $s0, $v0

li $v0,4
la $a0, prompt1
syscall
	
#Т.к. -1 в двоичном формате представляет собой строку из единиц, то операция XOR
#сработает так:
#если в числе i-ый бит равен 1, то XOR выдаст 0, т.к. у -1 на i-ом месте тоже 1
#если в числе i-ый бит равен 0, то XOR выдаст 1, т.к. у -1 на i-ом месте 1 => биты не совпадают.
xori $s0, $s0, -1
addi $s0, $s0, 1

li $v0, 1
move $a0, $s0
syscall

li $v0, 4
la $a0, prompt2
syscall
	
li $v0, 34
move $a0, $s0
syscall 
	
li $v0,10
syscall