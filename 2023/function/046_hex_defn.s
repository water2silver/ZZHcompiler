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
	sub sp,sp,#8                                      
	add fp,sp,#0                                      
	mov r4,#15                                        	@IRInst:assign	a	15
	str r4,[fp,#4]                                    	@IRInst:assign	a	15
	ldr r4,[fp,#4]                                    	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#8                                      
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
