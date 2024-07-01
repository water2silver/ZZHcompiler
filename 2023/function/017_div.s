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
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	a	10
	str r4,[fp,#4]                                    	@IRInst:assign	a	10
	mov r4,#5                                         	@IRInst:assign	b	5
	str r4,[fp,#8]                                    	@IRInst:assign	b	5
	ldr r4,[fp,#4]                                    	@IRInst:sdiv	%t3	a	b
	ldr r5,[fp,#8]                                    	@IRInst:sdiv	%t3	a	b
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t3	a	b
	str r6,[fp,#12]                                   	@IRInst:sdiv	%t3	a	b
	ldr r4,[fp,#12]                                   	@IRInst:assign		%t3
	str r4,[fp]                                       	@IRInst:assign		%t3
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
