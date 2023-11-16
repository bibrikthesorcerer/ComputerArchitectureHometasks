.text
main:

li $v0, 5
syscall 
move $s0, $v0

li $v0, 5
syscall 
move $s1, $v0

multu $s0, $s1
mflo $s2

srl $s0, $s0, 31
srl $s1, $s1, 31
srl $s2, $s2, 31
xor $s0, $s0, $s1
xor $s0, $s0, $s2

li $v0, 1
move $a0, $s0
syscall

li $v0,10
syscall