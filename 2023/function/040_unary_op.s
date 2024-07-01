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
	sub sp,sp,#24                                     
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	a	10
	str r4,[fp,#4]                                    	@IRInst:assign	a	10
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t2	a
	str r4,[fp,#8]                                    	@IRInst:assign	%t2	a
	ldr r4,[fp,#8]                                    	@IRInst:not_zero	%t3	%t2	0
	mov r5,#0                                         	@IRInst:not_zero	%t3	%t2	0
	cmp r4,r5                                         	@IRInst:not_zero	%t3	%t2	0
	moveq r6,#0                                       	@IRInst:not_zero	%t3	%t2	0
	str r6,[fp,#12]                                   	@IRInst:not_zero	%t3	%t2	0
	ldr r4,[fp,#12]                                   	@IRInst:rsb	%t4	%t3	0
	mov r5,#0                                         	@IRInst:rsb	%t4	%t3	0
	rsb r6,r4,r5                                      	@IRInst:rsb	%t4	%t3	0
	str r6,[fp,#16]                                   	@IRInst:rsb	%t4	%t3	0
.L3:
	mov r4,#-1                                        	@IRInst:assign	a	18446744073709551615
	str r4,[fp,#4]                                    	@IRInst:assign	a	18446744073709551615
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:assign	a	0
	str r4,[fp,#4]                                    	@IRInst:assign	a	0
.L5:
	ldr r4,[fp,#4]                                    	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#24                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
