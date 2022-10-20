# pow.asm program
#

# C++ (NON-RECURSIVE) code snippet of pow(x,n):
#   int x, n, pow=1; 
#   cout << "Enter a number x:\n"; 
#   cin >> x;
#   cout << "Enter the exponent n:\n"; 
#   cin >> n; 
#   for (int i = 1; i <= n; i++) { 
#   	pow = pow * x; 
#   } 
#   cout << "Power(x,n) is:\n" << pow << "\n";
#
# Assembly (NON-RECURSIVE) code version of pow(x,n):
#
.data
    number: .asciiz "Enter a number x:\n"
    power: .asciiz "Enter the exponent n:\n"
    respond: .asciiz "Power(x,n) is:\n"
	# TODO: Write your initializations here

#Text Area (i.e. instructions)
.text
main:
	li $v0 4
    la $a0 number
    syscall
    li $v0 5
    syscall
    move $t0 $v0
    li $v0 4
    la $a0 power
    syscall
    li $v0 5
    syscall
    move $t1 $v0
    loop:
    beq $t1 1 exit
    mult $t0 $t0
    mflo $t0
    sub $t1 $t1 1
    j loop
	# TODO: Write your code here

exit:
    li $v0 4
    la $a0 respond
    syscall
    li $v0 1
    move $a0 $t0
    syscall
    li $v0 10
    syscall
	# TODO: Write code to properly exit a SPIM simulation
