.text
main:
li $v0, 31
li $a0, 69
li $a1, 100
li $a2, 20
li $a3, 127
syscall

li $v0, 32
li $a0, 90
syscall

li $v0, 31
li $a0, 67
li $a1, 150
li $a2, 20
li $a3, 115
syscall

li $v0, 32
li $a0, 90
syscall

li $v0, 31
li $a0, 69
li $a1, 800
li $a2, 20
li $a3, 127
syscall

#difference between MIDI_out and MIDI_out_sync is that MIDI_out_sync waits $a1 milliseconds after return
#it combines MIDI_out syscall and sleep syscall

# Exit the program
li $v0 , 10 # Exit the program
syscall