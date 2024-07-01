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
.text
.global_0_a:
        .long   a
.global main
.type main, %function
main:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#12                                     
	add fp,sp,#0                                      
	mov r4,#2                                         	@IRInst:assign	b	2
	str r4,[fp,#4]                                    	@IRInst:assign	b	2
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t3	b	a
	ldr r5,.global_0_a                                	@IRInst:sub	%t3	b	a
	ldr r5,[r5]                                       	@IRInst:sub	%t3	b	a
	sub r6,r4,r5                                      	@IRInst:sub	%t3	b	a
	str r6,[fp,#8]                                    	@IRInst:sub	%t3	b	a
	ldr r4,[fp,#8]                                    	@IRInst:assign		%t3
	str r4,[fp]                                       	@IRInst:assign		%t3
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#12                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
