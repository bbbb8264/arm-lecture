	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, lr}
	mov r5,r0
	mov r3,#1
	mov r4,#1
loop:	mov r0,r3
	mov r3,r4
	add r4,r3,r0
	sub r5,r5,#1
	cmp r5,#0
	bgt loop
	pop {r3, r4, r5, pc}
	

	.size fibonacci, .-fibonacci
	.end
