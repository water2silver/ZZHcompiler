.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
a:
        .long   10
b:
        .long   5
.text
.global_0_a:
        .long   a
.global_0_b:
        .long   b
.global main
.type main, %function
main:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#4                                      
	add fp,sp,#0                                      
	ldr r4,.global_0_b                                	@IRInst:assign		b
	ldr r4,[r4]                                       	@IRInst:assign		b
	str r4,[fp]                                       	@IRInst:assign		b
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#4                                      
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
