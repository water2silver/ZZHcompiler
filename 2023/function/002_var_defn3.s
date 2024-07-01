.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global main
.type main, %function
main:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#20                                     
	add fp,sp,#0                                      
	mov r4,#1                                         	@IRInst:assign	a	1
	str r4,[fp,#4]                                    	@IRInst:assign	a	1
	mov r4,#2                                         	@IRInst:assign	b0	2
	str r4,[fp,#8]                                    	@IRInst:assign	b0	2
	mov r4,#3                                         	@IRInst:assign	_c	3
	str r4,[fp,#12]                                   	@IRInst:assign	_c	3
	ldr r4,[fp,#8]                                    	@IRInst:add	%t4	b0	_c
	ldr r5,[fp,#12]                                   	@IRInst:add	%t4	b0	_c
	add r6,r4,r5                                      	@IRInst:add	%t4	b0	_c
	str r6,[fp,#16]                                   	@IRInst:add	%t4	b0	_c
	ldr r4,[fp,#16]                                   	@IRInst:assign		%t4
	str r4,[fp]                                       	@IRInst:assign		%t4
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#20                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
