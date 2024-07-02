.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
a:
        .long   -1
b:
        .long   1
.text
.global_0_a:
        .long   a
.global_0_b:
        .long   b
.global inc_a
.type inc_a, %function
inc_a:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#12                                     
	add fp,sp,#0                                      
	ldr r4,.global_0_a                                	@IRInst:assign	b	a
	ldr r4,[r4]                                       	@IRInst:assign	b	a
	str r4,[fp,#4]                                    	@IRInst:assign	b	a
	ldr r4,[fp,#4]                                    	@IRInst:add	%t4	b	1
	mov r5,#1                                         	@IRInst:add	%t4	b	1
	add r6,r4,r5                                      	@IRInst:add	%t4	b	1
	str r6,[fp,#8]                                    	@IRInst:add	%t4	b	1
	ldr r4,[fp,#8]                                    	@IRInst:assign	b	%t4
	str r4,[fp,#4]                                    	@IRInst:assign	b	%t4
	ldr r4,[fp,#4]                                    	@IRInst:assign	a	b
	ldr r9,.global_0_a                                	@IRInst:assign	a	b
	str r4,[r9]                                       	@IRInst:assign	a	b
	ldr r4,.global_0_a                                	@IRInst:assign		a
	ldr r4,[r4]                                       	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#12                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_a:
        .long   a
.global_1_b:
        .long   b
.global main
.type main, %function
main:
.L3:
	push {r10,fp,lr}                                  
	sub sp,sp,#80                                     
	add fp,sp,#0                                      
	mov r4,#5                                         	@IRInst:assign	k	5
	str r4,[fp,#4]                                    	@IRInst:assign	k	5
.L5:
	ldr r4,[fp,#4]                                    	@IRInst:bge	%t7	k	0
	mov r5,#0                                         	@IRInst:bge	%t7	k	0
	cmp r4,r5                                         	@IRInst:bge	%t7	k	0
	movge r6,#1                                       	@IRInst:bge	%t7	k	0
	movlt r6,#0                                       	@IRInst:bge	%t7	k	0
	str r6,[fp,#8]                                    	@IRInst:bge	%t7	k	0
	bge .L6                                           
	b .L7                                             
.L6:
	bl inc_a                                          
	str r0,[fp,#12]                                   	@IRInst:assign	%t8	r0
	ldr r4,[fp,#12]                                   	@IRInst:not_zero	%t9	%t8	0
	mov r5,#0                                         	@IRInst:not_zero	%t9	%t8	0
	cmp r4,r5                                         	@IRInst:not_zero	%t9	%t8	0
	moveq r6,#0                                       	@IRInst:not_zero	%t9	%t8	0
	movne r6,#1                                       	@IRInst:not_zero	%t9	%t8	0
	str r6,[fp,#16]                                   	@IRInst:not_zero	%t9	%t8	0
	beq .L9                                           
	b .L12                                            
.L12:
	bl inc_a                                          
	str r0,[fp,#20]                                   	@IRInst:assign	%t10	r0
	ldr r4,[fp,#20]                                   	@IRInst:not_zero	%t11	%t10	0
	mov r5,#0                                         	@IRInst:not_zero	%t11	%t10	0
	cmp r4,r5                                         	@IRInst:not_zero	%t11	%t10	0
	moveq r6,#0                                       	@IRInst:not_zero	%t11	%t10	0
	movne r6,#1                                       	@IRInst:not_zero	%t11	%t10	0
	str r6,[fp,#24]                                   	@IRInst:not_zero	%t11	%t10	0
	beq .L9                                           
	b .L11                                            
.L11:
	bl inc_a                                          
	str r0,[fp,#28]                                   	@IRInst:assign	%t12	r0
	ldr r4,[fp,#28]                                   	@IRInst:not_zero	%t13	%t12	0
	mov r5,#0                                         	@IRInst:not_zero	%t13	%t12	0
	cmp r4,r5                                         	@IRInst:not_zero	%t13	%t12	0
	moveq r6,#0                                       	@IRInst:not_zero	%t13	%t12	0
	movne r6,#1                                       	@IRInst:not_zero	%t13	%t12	0
	str r6,[fp,#32]                                   	@IRInst:not_zero	%t13	%t12	0
	beq .L9                                           
	b .L8                                             
.L8:
	ldr r0,.global_1_a                                	@IRInst:assign	r0	a
	ldr r0,[r0]                                       	@IRInst:assign	r0	a
	bl putint                                         
	mov r0,#32                                        	@IRInst:assign	r0	32
	bl putch                                          
	ldr r0,.global_1_b                                	@IRInst:assign	r0	b
	ldr r0,[r0]                                       	@IRInst:assign	r0	b
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
.L9:
.L10:
	bl inc_a                                          
	str r0,[fp,#36]                                   	@IRInst:assign	%t14	r0
	ldr r4,[fp,#36]                                   	@IRInst:blt	%t15	%t14	14
	mov r5,#14                                        	@IRInst:blt	%t15	%t14	14
	cmp r4,r5                                         	@IRInst:blt	%t15	%t14	14
	movlt r6,#1                                       	@IRInst:blt	%t15	%t14	14
	movge r6,#0                                       	@IRInst:blt	%t15	%t14	14
	str r6,[fp,#40]                                   	@IRInst:blt	%t15	%t14	14
	blt .L13                                          
	b .L16                                            
.L16:
	bl inc_a                                          
	str r0,[fp,#44]                                   	@IRInst:assign	%t16	r0
	ldr r4,[fp,#44]                                   	@IRInst:not_zero	%t17	%t16	0
	mov r5,#0                                         	@IRInst:not_zero	%t17	%t16	0
	cmp r4,r5                                         	@IRInst:not_zero	%t17	%t16	0
	moveq r6,#0                                       	@IRInst:not_zero	%t17	%t16	0
	movne r6,#1                                       	@IRInst:not_zero	%t17	%t16	0
	str r6,[fp,#48]                                   	@IRInst:not_zero	%t17	%t16	0
	beq .L14                                          
	b .L17                                            
.L17:
	bl inc_a                                          
	str r0,[fp,#52]                                   	@IRInst:assign	%t18	r0
	bl inc_a                                          
	str r0,[fp,#56]                                   	@IRInst:assign	%t19	r0
	ldr r4,[fp,#52]                                   	@IRInst:sub	%t20	%t18	%t19
	ldr r5,[fp,#56]                                   	@IRInst:sub	%t20	%t18	%t19
	sub r6,r4,r5                                      	@IRInst:sub	%t20	%t18	%t19
	str r6,[fp,#60]                                   	@IRInst:sub	%t20	%t18	%t19
	ldr r4,[fp,#60]                                   	@IRInst:add	%t21	%t20	1
	mov r5,#1                                         	@IRInst:add	%t21	%t20	1
	add r6,r4,r5                                      	@IRInst:add	%t21	%t20	1
	str r6,[fp,#64]                                   	@IRInst:add	%t21	%t20	1
.L13:
	ldr r0,.global_1_a                                	@IRInst:assign	r0	a
	ldr r0,[r0]                                       	@IRInst:assign	r0	a
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,.global_1_b                                	@IRInst:mul	%t22	b	2
	ldr r4,[r4]                                       	@IRInst:mul	%t22	b	2
	mov r5,#2                                         	@IRInst:mul	%t22	b	2
	mul r6,r4,r5                                      	@IRInst:mul	%t22	b	2
	str r6,[fp,#68]                                   	@IRInst:mul	%t22	b	2
	ldr r4,[fp,#68]                                   	@IRInst:assign	b	%t22
	ldr r9,.global_1_b                                	@IRInst:assign	b	%t22
	str r4,[r9]                                       	@IRInst:assign	b	%t22
	b .L15                                            
.L14:
	bl inc_a                                          
	str r0,[fp,#72]                                   	@IRInst:assign	%t23	r0
.L15:
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t24	k	1
	mov r5,#1                                         	@IRInst:sub	%t24	k	1
	sub r6,r4,r5                                      	@IRInst:sub	%t24	k	1
	str r6,[fp,#76]                                   	@IRInst:sub	%t24	k	1
	ldr r4,[fp,#76]                                   	@IRInst:assign	k	%t24
	str r4,[fp,#4]                                    	@IRInst:assign	k	%t24
	b .L5                                             
.L7:
	ldr r0,.global_1_a                                	@IRInst:assign	r0	a
	ldr r0,[r0]                                       	@IRInst:assign	r0	a
	bl putint                                         
	mov r0,#32                                        	@IRInst:assign	r0	32
	bl putch                                          
	ldr r0,.global_1_b                                	@IRInst:assign	r0	b
	ldr r0,[r0]                                       	@IRInst:assign	r0	b
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,.global_1_a                                	@IRInst:assign		a
	ldr r4,[r4]                                       	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L4                                             
.L4:
	ldr r0,[fp]                                       
	add fp,fp,#80                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
