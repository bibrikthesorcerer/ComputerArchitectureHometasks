.text
main:
li $v0, 31
li $a0, 60
li $a1, 1000 #or negative
li $a2, 20
li $a3, 127
syscall

#difference between MIDI_out and MIDI_out_sync is that MIDI_out_sync waits $a1 milliseconds after return
#it combines MIDI_out syscall and sleep syscall

# Exit the program
li $v0 , 10 # Exit the program
syscall
