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
	sub sp,sp,#4                                      
	add fp,sp,#0                                      
	mov r4,#3                                         	@IRInst:assign		3
	str r4,[fp]                                       	@IRInst:assign		3
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#4                                      
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
