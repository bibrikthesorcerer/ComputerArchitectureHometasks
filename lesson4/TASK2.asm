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
	
#�.�. -1 � �������� ������� ������������ ����� ������ �� ������, �� �������� XOR
#��������� ���:
#���� � ����� i-�� ��� ����� 1, �� XOR ������ 0, �.�. � -1 �� i-�� ����� ���� 1
#���� � ����� i-�� ��� ����� 0, �� XOR ������ 1, �.�. � -1 �� i-�� ����� 1 => ���� �� ���������.
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