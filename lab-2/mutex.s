	.syntax unified
	.arch armv7-a
	.text

	.equ locked, 1
	.equ unlocked, 0

	.global lock_mutex
	.type lock_mutex, function
lock_mutex:
        @ INSERT CODE BELOW
	
	cmp r0,#1
	beq lock_mutex
	mov r0,#1
        @ END CODE INSERT
	bx lr

	.size lock_mutex, .-lock_mutex

	.global unlock_mutex
	.type unlock_mutex, function
unlock_mutex:
	@ INSERT CODE BELOW
        mov r0,#0
        @ END CODE INSERT
	bx lr
	.size unlock_mutex, .-unlock_mutex

	.end
