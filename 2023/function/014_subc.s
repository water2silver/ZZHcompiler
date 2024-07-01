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
	sub sp,sp,#12                                     
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	a	10
	str r4,[fp,#4]                                    	@IRInst:assign	a	10
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t2	a	2
	mov r5,#2                                         	@IRInst:sub	%t2	a	2
	sub r6,r4,r5                                      	@IRInst:sub	%t2	a	2
	str r6,[fp,#8]                                    	@IRInst:sub	%t2	a	2
	ldr r4,[fp,#8]                                    	@IRInst:assign		%t2
	str r4,[fp]                                       	@IRInst:assign		%t2
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#12                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
