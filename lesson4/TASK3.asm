.data
prompt1: .asciiz "Enter Your first number: "
prompt2: .asciiz "\nEnter Your second number: "
output: .asciiz "\nYour numbers, increased by 202: "
.text
main:
####################Read first integer########################
li $v0 , 4 	
la $a0 , prompt1 
syscall
# Read the integer and save it in $s0
li $v0 , 5	
syscall
move $s0 , $v0	#v0 contains integer read, moving it to s0
####################Read second integer########################
li $v0 , 4 	
la $a0 , prompt2 
syscall
# Read the integer and save it in $s1
li $v0 , 5	
syscall
move $s1 , $v0	#v0 contains integer read, moving it to s1

##################Increase saved numbers######################
addi $s0, $s0, 202
addi $s1, $s1, 202

#################Output the text##############################
li $v0 , 4
la $a0 , output
syscall

################Output 1st number#############################
li $v0 , 1	#type of syscall. 1=printInteger
move $a0 , $s0	#s0 contains integer read. passing as an argument to syscall.
syscall
################Output comma##################################
li $v0 , 11
li $a0, ','
syscall
################Output 2nd number#############################
li $v0 , 1	#type of syscall. 1=printInteger
move $a0 , $s1	#s0 contains integer read. passing as an argument to syscall.
syscall

# Exit the program
li $v0 , 10 # Exit the program
syscall