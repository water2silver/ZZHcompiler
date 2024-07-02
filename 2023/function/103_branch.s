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
	sub sp,sp,#120                                    
	add fp,sp,#0                                      
	mov r4,#1                                         	@IRInst:assign	a	1
	str r4,[fp,#-1]                                   	@IRInst:assign	a	1
	mov r4,#2                                         	@IRInst:assign	b	2
	str r4,[fp,#-1]                                   	@IRInst:assign	b	2
	mov r4,#3                                         	@IRInst:assign	c	3
	str r4,[fp,#-1]                                   	@IRInst:assign	c	3
	mov r4,#4                                         	@IRInst:assign	d	4
	str r4,[fp,#-1]                                   	@IRInst:assign	d	4
	mov r4,#5                                         	@IRInst:assign	e	5
	str r4,[fp,#-1]                                   	@IRInst:assign	e	5
	mov r4,#6                                         	@IRInst:assign	f	6
	str r4,[fp,#-1]                                   	@IRInst:assign	f	6
	mov r4,#5                                         	@IRInst:blt	%t7	5	6
	mov r5,#6                                         	@IRInst:blt	%t7	5	6
	cmp r4,r5                                         	@IRInst:blt	%t7	5	6
	movlt r6,#1                                       	@IRInst:blt	%t7	5	6
	movge r6,#0                                       	@IRInst:blt	%t7	5	6
	str r6,[fp,#28]                                   	@IRInst:blt	%t7	5	6
	blt .L6                                           
	b .L4                                             
.L6:
	mov r4,#4                                         	@IRInst:beq	%t8	d	0
	mov r5,#0                                         	@IRInst:beq	%t8	d	0
	cmp r4,r5                                         	@IRInst:beq	%t8	d	0
	moveq r6,#1                                       	@IRInst:beq	%t8	d	0
	movne r6,#0                                       	@IRInst:beq	%t8	d	0
	str r6,[fp,#32]                                   	@IRInst:beq	%t8	d	0
	beq .L4                                           
	b .L3                                             
.L3:
	mov r4,#5                                         	@IRInst:assign	%t9	e
	str r4,[fp,#36]                                   	@IRInst:assign	%t9	e
	ldr r4,[fp,#36]                                   	@IRInst:not_zero	%t10	%t9	0
	mov r5,#0                                         	@IRInst:not_zero	%t10	%t9	0
	cmp r4,r5                                         	@IRInst:not_zero	%t10	%t9	0
	moveq r6,#0                                       	@IRInst:not_zero	%t10	%t9	0
	movne r6,#1                                       	@IRInst:not_zero	%t10	%t9	0
	str r6,[fp,#40]                                   	@IRInst:not_zero	%t10	%t9	0
	beq .L10                                          
	b .L7                                             
.L10:
	mov r4,#1                                         	@IRInst:assign	%t11	a
	str r4,[fp,#44]                                   	@IRInst:assign	%t11	a
	ldr r4,[fp,#44]                                   	@IRInst:not_zero	%t12	%t11	0
	mov r5,#0                                         	@IRInst:not_zero	%t12	%t11	0
	cmp r4,r5                                         	@IRInst:not_zero	%t12	%t11	0
	moveq r6,#0                                       	@IRInst:not_zero	%t12	%t11	0
	movne r6,#1                                       	@IRInst:not_zero	%t12	%t11	0
	str r6,[fp,#48]                                   	@IRInst:not_zero	%t12	%t11	0
	ldr r4,[fp,#48]                                   	@IRInst:beq	%t13	%t12	0
	mov r5,#0                                         	@IRInst:beq	%t13	%t12	0
	cmp r4,r5                                         	@IRInst:beq	%t13	%t12	0
	moveq r6,#1                                       	@IRInst:beq	%t13	%t12	0
	movne r6,#0                                       	@IRInst:beq	%t13	%t12	0
	str r6,[fp,#52]                                   	@IRInst:beq	%t13	%t12	0
	ldr r4,[fp,#52]                                   	@IRInst:add	%t14	%t13	0
	mov r5,#0                                         	@IRInst:add	%t14	%t13	0
	add r6,r4,r5                                      	@IRInst:add	%t14	%t13	0
	str r6,[fp,#56]                                   	@IRInst:add	%t14	%t13	0
.L7:
	mov r4,#3                                         	@IRInst:beq	%t15	c	2
	mov r5,#2                                         	@IRInst:beq	%t15	c	2
	cmp r4,r5                                         	@IRInst:beq	%t15	c	2
	moveq r6,#1                                       	@IRInst:beq	%t15	c	2
	movne r6,#0                                       	@IRInst:beq	%t15	c	2
	str r6,[fp,#60]                                   	@IRInst:beq	%t15	c	2
	beq .L14                                          
	b .L12                                            
.L14:
	mov r4,#9                                         	@IRInst:bgt	%t16	9	2
	mov r5,#2                                         	@IRInst:bgt	%t16	9	2
	cmp r4,r5                                         	@IRInst:bgt	%t16	9	2
	movgt r6,#1                                       	@IRInst:bgt	%t16	9	2
	movle r6,#0                                       	@IRInst:bgt	%t16	9	2
	str r6,[fp,#64]                                   	@IRInst:bgt	%t16	9	2
	bgt .L11                                          
	b .L12                                            
.L11:
	mov r4,#3                                         	@IRInst:assign		3
	str r4,[fp]                                       	@IRInst:assign		3
	b .L2                                             
	b .L13                                            
.L12:
	mov r4,#6                                         	@IRInst:sdiv	%t18	f	c
	mov r5,#3                                         	@IRInst:sdiv	%t18	f	c
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t18	f	c
	str r6,[fp,#72]                                   	@IRInst:sdiv	%t18	f	c
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t19	%t18	c
	mov r5,#3                                         	@IRInst:mul	%t19	%t18	c
	mul r6,r4,r5                                      	@IRInst:mul	%t19	%t18	c
	str r6,[fp,#76]                                   	@IRInst:mul	%t19	%t18	c
	mov r4,#6                                         	@IRInst:sub	%t17	f	%t19
	ldr r5,[fp,#76]                                   	@IRInst:sub	%t17	f	%t19
	sub r6,r4,r5                                      	@IRInst:sub	%t17	f	%t19
	str r6,[fp,#68]                                   	@IRInst:sub	%t17	f	%t19
.L18:
	mov r4,#5                                         	@IRInst:assign	%t20	e
	str r4,[fp,#80]                                   	@IRInst:assign	%t20	e
	ldr r4,[fp,#80]                                   	@IRInst:not_zero	%t21	%t20	0
	mov r5,#0                                         	@IRInst:not_zero	%t21	%t20	0
	cmp r4,r5                                         	@IRInst:not_zero	%t21	%t20	0
	moveq r6,#0                                       	@IRInst:not_zero	%t21	%t20	0
	movne r6,#1                                       	@IRInst:not_zero	%t21	%t20	0
	str r6,[fp,#84]                                   	@IRInst:not_zero	%t21	%t20	0
	beq .L16                                          
	b .L15                                            
.L15:
	mov r4,#4                                         	@IRInst:assign		4
	str r4,[fp]                                       	@IRInst:assign		4
	b .L2                                             
	b .L17                                            
.L16:
	mov r4,#3                                         	@IRInst:bge	%t22	3	2
	mov r5,#2                                         	@IRInst:bge	%t22	3	2
	cmp r4,r5                                         	@IRInst:bge	%t22	3	2
	movge r6,#1                                       	@IRInst:bge	%t22	3	2
	movlt r6,#0                                       	@IRInst:bge	%t22	3	2
	str r6,[fp,#88]                                   	@IRInst:bge	%t22	3	2
	bge .L19                                          
	b .L20                                            
.L19:
	mov r4,#-1                                        	@IRInst:bge	%t23	18446744073709551615	0
	mov r5,#0                                         	@IRInst:bge	%t23	18446744073709551615	0
	cmp r4,r5                                         	@IRInst:bge	%t23	18446744073709551615	0
	movge r6,#1                                       	@IRInst:bge	%t23	18446744073709551615	0
	movlt r6,#0                                       	@IRInst:bge	%t23	18446744073709551615	0
	str r6,[fp,#92]                                   	@IRInst:bge	%t23	18446744073709551615	0
	bge .L22                                          
	b .L25                                            
.L25:
	mov r4,#4                                         	@IRInst:bgt	%t24	d	4
	mov r5,#4                                         	@IRInst:bgt	%t24	d	4
	cmp r4,r5                                         	@IRInst:bgt	%t24	d	4
	movgt r6,#1                                       	@IRInst:bgt	%t24	d	4
	movle r6,#0                                       	@IRInst:bgt	%t24	d	4
	str r6,[fp,#96]                                   	@IRInst:bgt	%t24	d	4
	bgt .L22                                          
	b .L23                                            
.L22:
	mov r4,#6                                         	@IRInst:assign		6
	str r4,[fp]                                       	@IRInst:assign		6
	b .L2                                             
	b .L24                                            
.L23:
	mov r4,#3                                         	@IRInst:beq	%t25	c	f
	mov r5,#6                                         	@IRInst:beq	%t25	c	f
	cmp r4,r5                                         	@IRInst:beq	%t25	c	f
	moveq r6,#1                                       	@IRInst:beq	%t25	c	f
	movne r6,#0                                       	@IRInst:beq	%t25	c	f
	str r6,[fp,#100]                                  	@IRInst:beq	%t25	c	f
	beq .L27                                          
	b .L26                                            
.L26:
	mov r4,#22                                        	@IRInst:bgt	%t26	22	10
	mov r5,#10                                        	@IRInst:bgt	%t26	22	10
	cmp r4,r5                                         	@IRInst:bgt	%t26	22	10
	movgt r6,#1                                       	@IRInst:bgt	%t26	22	10
	movle r6,#0                                       	@IRInst:bgt	%t26	22	10
	str r6,[fp,#104]                                  	@IRInst:bgt	%t26	22	10
	bgt .L29                                          
	b .L30                                            
.L29:
	mov r4,#6                                         	@IRInst:assign	%t27	f
	str r4,[fp,#108]                                  	@IRInst:assign	%t27	f
	ldr r4,[fp,#108]                                  	@IRInst:not_zero	%t28	%t27	0
	mov r5,#0                                         	@IRInst:not_zero	%t28	%t27	0
	cmp r4,r5                                         	@IRInst:not_zero	%t28	%t27	0
	moveq r6,#0                                       	@IRInst:not_zero	%t28	%t27	0
	movne r6,#1                                       	@IRInst:not_zero	%t28	%t27	0
	str r6,[fp,#112]                                  	@IRInst:not_zero	%t28	%t27	0
	ldr r4,[fp,#112]                                  	@IRInst:not_zero	%t29	%t28	0
	mov r5,#0                                         	@IRInst:not_zero	%t29	%t28	0
	cmp r4,r5                                         	@IRInst:not_zero	%t29	%t28	0
	moveq r6,#0                                       	@IRInst:not_zero	%t29	%t28	0
	movne r6,#1                                       	@IRInst:not_zero	%t29	%t28	0
	str r6,[fp,#116]                                  	@IRInst:not_zero	%t29	%t28	0
	beq .L32                                          
	b .L33                                            
.L32:
	mov r4,#9                                         	@IRInst:assign		9
	str r4,[fp]                                       	@IRInst:assign		9
	b .L2                                             
	b .L34                                            
.L33:
	mov r4,#10                                        	@IRInst:assign		10
	str r4,[fp]                                       	@IRInst:assign		10
	b .L2                                             
.L34:
	b .L31                                            
.L30:
	mov r4,#8                                         	@IRInst:assign		8
	str r4,[fp]                                       	@IRInst:assign		8
	b .L2                                             
.L31:
	b .L28                                            
.L27:
	mov r4,#7                                         	@IRInst:assign		7
	str r4,[fp]                                       	@IRInst:assign		7
	b .L2                                             
.L28:
.L24:
	b .L21                                            
.L20:
	mov r4,#5                                         	@IRInst:assign		5
	str r4,[fp]                                       	@IRInst:assign		5
	b .L2                                             
.L21:
.L17:
.L13:
	b .L9                                             
.L8:
	mov r4,#2                                         	@IRInst:assign		2
	str r4,[fp]                                       	@IRInst:assign		2
	b .L2                                             
.L9:
	b .L5                                             
.L4:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L2                                             
.L5:
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#120                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
