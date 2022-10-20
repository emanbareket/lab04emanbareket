# min.asm program
#

.data

        # TODO: Complete these declarations / initializations

      prompt:  .asciiz "Enter the next number:\n"
      respond:  .asciiz "Minimum: "
   newline:  .asciiz "\n"

#Text Area (i.e. instructions)
.text

main:

    # TODO: Write your code here
    # You can have other labels expressed here, if you need to
    li $v0 4
    la $a0 prompt
    syscall
    li $v0 5
    move $t0 $v0
    li $v0 4
    la $a0 prompt
    syscall
    li $v0 5
    move $t1 $v0
    li $v0 4
    la $a0 prompt
    syscall
    li $v0 5
    move $t2 $v0
    blt $t0 $t1 zero 
    blt $t1 $t2 one
    blt $t2 $t1 two
    zero:
        blt $t2 $t0 two
        li $v0 1
        move $a0 $t0
        syscall
        j exit
    one:
        li $v0 1
        move $a0 $t1
        syscall
        j exit
    two:
        li $v0 1
        move $a0 $t2
        syscall
        j exit

exit:
    li $v0 10
    syscall
        # TODO: Write code to properly exit a SPIM simulation
