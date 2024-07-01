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
	push {r10,fp,lr}                                  
	sub sp,sp,#48                                     
	add fp,sp,#0                                      
	mov r4,#56                                        	@IRInst:assign	a	56
	str r4,[fp,#4]                                    	@IRInst:assign	a	56
	mov r4,#4                                         	@IRInst:assign	b	4
	str r4,[fp,#8]                                    	@IRInst:assign	b	4
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t3	a	18446744073709551612
	mov r5,#-4                                        	@IRInst:sub	%t3	a	18446744073709551612
	sub r6,r4,r5                                      	@IRInst:sub	%t3	a	18446744073709551612
	str r6,[fp,#12]                                   	@IRInst:sub	%t3	a	18446744073709551612
	ldr r4,[fp,#12]                                   	@IRInst:add	%t5	%t3	%t4
	ldr r5,[fp,#16]                                   	@IRInst:add	%t5	%t3	%t4
	add r6,r4,r5                                      	@IRInst:add	%t5	%t3	%t4
	str r6,[fp,#20]                                   	@IRInst:add	%t5	%t3	%t4
	ldr r4,[fp,#20]                                   	@IRInst:assign	a	%t5
	str r4,[fp,#4]                                    	@IRInst:assign	a	%t5
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t6	a
	str r4,[fp,#24]                                   	@IRInst:assign	%t6	a
	ldr r4,[fp,#24]                                   	@IRInst:not_zero	%t7	%t6	0
	mov r5,#0                                         	@IRInst:not_zero	%t7	%t6	0
	cmp r4,r5                                         	@IRInst:not_zero	%t7	%t6	0
	moveq r6,#0                                       	@IRInst:not_zero	%t7	%t6	0
	str r6,[fp,#28]                                   	@IRInst:not_zero	%t7	%t6	0
	ldr r4,[fp,#28]                                   	@IRInst:rsb	%t8	%t7	0
	mov r5,#0                                         	@IRInst:rsb	%t8	%t7	0
	rsb r6,r4,r5                                      	@IRInst:rsb	%t8	%t7	0
	str r6,[fp,#32]                                   	@IRInst:rsb	%t8	%t7	0
.L3:
	mov r4,#-1                                        	@IRInst:assign	a	18446744073709551615
	str r4,[fp,#4]                                    	@IRInst:assign	a	18446744073709551615
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:add	%t11	0	%t10
	ldr r5,[fp,#40]                                   	@IRInst:add	%t11	0	%t10
	add r6,r4,r5                                      	@IRInst:add	%t11	0	%t10
	str r6,[fp,#44]                                   	@IRInst:add	%t11	0	%t10
	ldr r4,[fp,#44]                                   	@IRInst:assign	a	%t11
	str r4,[fp,#4]                                    	@IRInst:assign	a	%t11
.L5:
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	a
	bl putint                                         
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#48                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
