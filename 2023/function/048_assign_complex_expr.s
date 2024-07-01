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
	sub sp,sp,#120                                    
	add fp,sp,#0                                      
	mov r4,#5                                         	@IRInst:assign	a	5
	str r4,[fp,#4]                                    	@IRInst:assign	a	5
	mov r4,#5                                         	@IRInst:assign	b	5
	str r4,[fp,#8]                                    	@IRInst:assign	b	5
	mov r4,#1                                         	@IRInst:assign	c	1
	str r4,[fp,#12]                                   	@IRInst:assign	c	1
	mov r4,#-2                                        	@IRInst:assign	d	18446744073709551614
	str r4,[fp,#16]                                   	@IRInst:assign	d	18446744073709551614
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t6	d	1
	mov r5,#1                                         	@IRInst:mul	%t6	d	1
	mul r6,r4,r5                                      	@IRInst:mul	%t6	d	1
	str r6,[fp,#24]                                   	@IRInst:mul	%t6	d	1
	ldr r4,[fp,#24]                                   	@IRInst:sdiv	%t7	%t6	2
	mov r5,#2                                         	@IRInst:sdiv	%t7	%t6	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t7	%t6	2
	str r6,[fp,#28]                                   	@IRInst:sdiv	%t7	%t6	2
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t8	a	b
	ldr r5,[fp,#8]                                    	@IRInst:sub	%t8	a	b
	sub r6,r4,r5                                      	@IRInst:sub	%t8	a	b
	str r6,[fp,#32]                                   	@IRInst:sub	%t8	a	b
	ldr r4,[fp,#28]                                   	@IRInst:add	%t9	%t7	%t8
	ldr r5,[fp,#32]                                   	@IRInst:add	%t9	%t7	%t8
	add r6,r4,r5                                      	@IRInst:add	%t9	%t7	%t8
	str r6,[fp,#36]                                   	@IRInst:add	%t9	%t7	%t8
	ldr r4,[fp,#12]                                   	@IRInst:add	%t10	c	3
	mov r5,#3                                         	@IRInst:add	%t10	c	3
	add r6,r4,r5                                      	@IRInst:add	%t10	c	3
	str r6,[fp,#40]                                   	@IRInst:add	%t10	c	3
	ldr r4,[fp,#40]                                   	@IRInst:rsb	%t11	%t10	0
	mov r5,#0                                         	@IRInst:rsb	%t11	%t10	0
	rsb r6,r4,r5                                      	@IRInst:rsb	%t11	%t10	0
	str r6,[fp,#44]                                   	@IRInst:rsb	%t11	%t10	0
	ldr r4,[fp,#44]                                   	@IRInst:sdiv	%t13	%t11	2
	mov r5,#2                                         	@IRInst:sdiv	%t13	%t11	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t13	%t11	2
	str r6,[fp,#52]                                   	@IRInst:sdiv	%t13	%t11	2
	ldr r4,[fp,#52]                                   	@IRInst:mul	%t14	%t13	2
	mov r5,#2                                         	@IRInst:mul	%t14	%t13	2
	mul r6,r4,r5                                      	@IRInst:mul	%t14	%t13	2
	str r6,[fp,#56]                                   	@IRInst:mul	%t14	%t13	2
	ldr r4,[fp,#44]                                   	@IRInst:sub	%t12	%t11	%t14
	ldr r5,[fp,#56]                                   	@IRInst:sub	%t12	%t11	%t14
	sub r6,r4,r5                                      	@IRInst:sub	%t12	%t11	%t14
	str r6,[fp,#48]                                   	@IRInst:sub	%t12	%t11	%t14
	ldr r4,[fp,#36]                                   	@IRInst:sub	%t15	%t9	%t12
	ldr r5,[fp,#48]                                   	@IRInst:sub	%t15	%t9	%t12
	sub r6,r4,r5                                      	@IRInst:sub	%t15	%t9	%t12
	str r6,[fp,#60]                                   	@IRInst:sub	%t15	%t9	%t12
	ldr r4,[fp,#60]                                   	@IRInst:assign	result	%t15
	str r4,[fp,#20]                                   	@IRInst:assign	result	%t15
	ldr r0,[fp,#20]                                   	@IRInst:assign	r0	result
	bl putint                                         
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t17	d	2
	mov r5,#2                                         	@IRInst:sdiv	%t17	d	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t17	d	2
	str r6,[fp,#68]                                   	@IRInst:sdiv	%t17	d	2
	ldr r4,[fp,#68]                                   	@IRInst:mul	%t18	%t17	2
	mov r5,#2                                         	@IRInst:mul	%t18	%t17	2
	mul r6,r4,r5                                      	@IRInst:mul	%t18	%t17	2
	str r6,[fp,#72]                                   	@IRInst:mul	%t18	%t17	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t16	d	%t18
	ldr r5,[fp,#72]                                   	@IRInst:sub	%t16	d	%t18
	sub r6,r4,r5                                      	@IRInst:sub	%t16	d	%t18
	str r6,[fp,#64]                                   	@IRInst:sub	%t16	d	%t18
	ldr r4,[fp,#64]                                   	@IRInst:add	%t19	%t16	67
	mov r5,#67                                        	@IRInst:add	%t19	%t16	67
	add r6,r4,r5                                      	@IRInst:add	%t19	%t16	67
	str r6,[fp,#76]                                   	@IRInst:add	%t19	%t16	67
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t20	a	b
	ldr r5,[fp,#8]                                    	@IRInst:sub	%t20	a	b
	sub r6,r4,r5                                      	@IRInst:sub	%t20	a	b
	str r6,[fp,#80]                                   	@IRInst:sub	%t20	a	b
	ldr r4,[fp,#80]                                   	@IRInst:rsb	%t21	%t20	0
	mov r5,#0                                         	@IRInst:rsb	%t21	%t20	0
	rsb r6,r4,r5                                      	@IRInst:rsb	%t21	%t20	0
	str r6,[fp,#84]                                   	@IRInst:rsb	%t21	%t20	0
	ldr r4,[fp,#76]                                   	@IRInst:add	%t22	%t19	%t21
	ldr r5,[fp,#84]                                   	@IRInst:add	%t22	%t19	%t21
	add r6,r4,r5                                      	@IRInst:add	%t22	%t19	%t21
	str r6,[fp,#88]                                   	@IRInst:add	%t22	%t19	%t21
	ldr r4,[fp,#12]                                   	@IRInst:add	%t23	c	2
	mov r5,#2                                         	@IRInst:add	%t23	c	2
	add r6,r4,r5                                      	@IRInst:add	%t23	c	2
	str r6,[fp,#92]                                   	@IRInst:add	%t23	c	2
	ldr r4,[fp,#92]                                   	@IRInst:sdiv	%t25	%t23	2
	mov r5,#2                                         	@IRInst:sdiv	%t25	%t23	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t25	%t23	2
	str r6,[fp,#100]                                  	@IRInst:sdiv	%t25	%t23	2
	ldr r4,[fp,#100]                                  	@IRInst:mul	%t26	%t25	2
	mov r5,#2                                         	@IRInst:mul	%t26	%t25	2
	mul r6,r4,r5                                      	@IRInst:mul	%t26	%t25	2
	str r6,[fp,#104]                                  	@IRInst:mul	%t26	%t25	2
	ldr r4,[fp,#92]                                   	@IRInst:sub	%t24	%t23	%t26
	ldr r5,[fp,#104]                                  	@IRInst:sub	%t24	%t23	%t26
	sub r6,r4,r5                                      	@IRInst:sub	%t24	%t23	%t26
	str r6,[fp,#96]                                   	@IRInst:sub	%t24	%t23	%t26
	ldr r4,[fp,#96]                                   	@IRInst:rsb	%t27	%t24	0
	mov r5,#0                                         	@IRInst:rsb	%t27	%t24	0
	rsb r6,r4,r5                                      	@IRInst:rsb	%t27	%t24	0
	str r6,[fp,#108]                                  	@IRInst:rsb	%t27	%t24	0
	ldr r4,[fp,#88]                                   	@IRInst:sub	%t28	%t22	%t27
	ldr r5,[fp,#108]                                  	@IRInst:sub	%t28	%t22	%t27
	sub r6,r4,r5                                      	@IRInst:sub	%t28	%t22	%t27
	str r6,[fp,#112]                                  	@IRInst:sub	%t28	%t22	%t27
	ldr r4,[fp,#112]                                  	@IRInst:assign	result	%t28
	str r4,[fp,#20]                                   	@IRInst:assign	result	%t28
	ldr r4,[fp,#20]                                   	@IRInst:add	%t29	result	3
	mov r5,#3                                         	@IRInst:add	%t29	result	3
	add r6,r4,r5                                      	@IRInst:add	%t29	result	3
	str r6,[fp,#116]                                  	@IRInst:add	%t29	result	3
	ldr r4,[fp,#116]                                  	@IRInst:assign	result	%t29
	str r4,[fp,#20]                                   	@IRInst:assign	result	%t29
	ldr r0,[fp,#20]                                   	@IRInst:assign	r0	result
	bl putint                                         
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#120                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
