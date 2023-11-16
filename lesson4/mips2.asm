.text
main :
# Prompt for the integer to enter
li $v0 , 4 	#type of syscall. 4=printString
la $a0 , prompt #arg for syscall, addres of string
syscall

# Read the integer and save it in $s0
li $v0 , 5	#type of syscall 5=readinteger
syscall
move $s0 , $v0	#v0 contains integer read, moving it to s0. s0= savedTemporary0
# Output the text
li $v0 , 4
la $a0 , output
syscall

# Output the number
li $v0 , 1	#type of syscall. 1=printInteger
move $a0 , $s0	#s0 contains integer read. passing as an argument to syscall.
syscall

# Exit the program
li $v0 , 10 # Exit the program
syscall
.data
prompt : .asciiz "Please enter an integer : "
output : .asciiz "\nYou typed the number "
