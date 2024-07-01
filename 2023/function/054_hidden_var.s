.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
b:
        .long   5
c:
        .zero   140
.text
.global_0_b:
        .long   b
.global_0_c:
        .long   c
.global main
.type main, %function
main:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#448                                    
	add fp,sp,#0                                      
	mov r4,#0                                         	@IRInst:mul	%t3	0	4
	mov r5,#4                                         	@IRInst:mul	%t3	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t3	0	4
	str r6,[fp,#4]                                    	@IRInst:mul	%t3	0	4
	ldr r4,.global_0_c                                	@IRInst:add	%t4	c	%t3
	ldr r5,[fp,#4]                                    	@IRInst:add	%t4	c	%t3
	add r6,r4,r5                                      	@IRInst:add	%t4	c	%t3
	str r6,[fp,#8]                                    	@IRInst:add	%t4	c	%t3
	ldr r5,[fp,#8]                                    	@IRInst:assign	%t4	6
	mov r4,#6                                         	@IRInst:assign	%t4	6
	str r4,[r5]                                       	@IRInst:assign	%t4	6
	mov r4,#1                                         	@IRInst:mul	%t5	1	4
	mov r5,#4                                         	@IRInst:mul	%t5	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t5	1	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t5	1	4
	ldr r4,.global_0_c                                	@IRInst:add	%t6	c	%t5
	ldr r5,[fp,#12]                                   	@IRInst:add	%t6	c	%t5
	add r6,r4,r5                                      	@IRInst:add	%t6	c	%t5
	str r6,[fp,#16]                                   	@IRInst:add	%t6	c	%t5
	ldr r5,[fp,#16]                                   	@IRInst:assign	%t6	7
	mov r4,#7                                         	@IRInst:assign	%t6	7
	str r4,[r5]                                       	@IRInst:assign	%t6	7
	mov r4,#2                                         	@IRInst:mul	%t7	2	4
	mov r5,#4                                         	@IRInst:mul	%t7	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t7	2	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t7	2	4
	ldr r4,.global_0_c                                	@IRInst:add	%t8	c	%t7
	ldr r5,[fp,#20]                                   	@IRInst:add	%t8	c	%t7
	add r6,r4,r5                                      	@IRInst:add	%t8	c	%t7
	str r6,[fp,#24]                                   	@IRInst:add	%t8	c	%t7
	ldr r5,[fp,#24]                                   	@IRInst:assign	%t8	8
	mov r4,#8                                         	@IRInst:assign	%t8	8
	str r4,[r5]                                       	@IRInst:assign	%t8	8
	mov r4,#3                                         	@IRInst:mul	%t9	3	4
	mov r5,#4                                         	@IRInst:mul	%t9	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t9	3	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t9	3	4
	ldr r4,.global_0_c                                	@IRInst:add	%t10	c	%t9
	ldr r5,[fp,#28]                                   	@IRInst:add	%t10	c	%t9
	add r6,r4,r5                                      	@IRInst:add	%t10	c	%t9
	str r6,[fp,#32]                                   	@IRInst:add	%t10	c	%t9
	ldr r5,[fp,#32]                                   	@IRInst:assign	%t10	9
	mov r4,#9                                         	@IRInst:assign	%t10	9
	str r4,[r5]                                       	@IRInst:assign	%t10	9
	mov r4,#1                                         	@IRInst:assign	a	1
	str r4,[fp,#36]                                   	@IRInst:assign	a	1
	mov r4,#2                                         	@IRInst:assign	a	2
	str r4,[fp,#40]                                   	@IRInst:assign	a	2
	mov r4,#3                                         	@IRInst:assign	a	3
	str r4,[fp,#40]                                   	@IRInst:assign	a	3
	ldr r0,[fp,#40]                                   	@IRInst:assign	r0	a
	bl putint                                         
	ldr r0,[fp,#40]                                   	@IRInst:assign	r0	a
	bl putint                                         
	ldr r0,[fp,#36]                                   	@IRInst:assign	r0	a
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
.L3:
	ldr r4,[fp,#36]                                   	@IRInst:blt	%t13	a	5
	mov r5,#5                                         	@IRInst:blt	%t13	a	5
	cmp r4,r5                                         	@IRInst:blt	%t13	a	5
	movlt r6,#1                                       	@IRInst:blt	%t13	a	5
	movge r6,#0                                       	@IRInst:blt	%t13	a	5
	str r6,[fp,#44]                                   	@IRInst:blt	%t13	a	5
	blt .L4                                           
	b .L5                                             
.L4:
	mov r4,#0                                         
	str r4,[fp,#48]                                   
	ldr r4,[fp,#48]                                   	@IRInst:add	%t15	a	1
	mov r5,#1                                         	@IRInst:add	%t15	a	1
	add r6,r4,r5                                      	@IRInst:add	%t15	a	1
	str r6,[fp,#52]                                   	@IRInst:add	%t15	a	1
	ldr r4,[fp,#52]                                   	@IRInst:assign	a	%t15
	str r4,[fp,#48]                                   	@IRInst:assign	a	%t15
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t16	a
	str r4,[fp,#56]                                   	@IRInst:assign	%t16	a
	ldr r4,[fp,#56]                                   	@IRInst:not_zero	%t17	%t16	0
	mov r5,#0                                         	@IRInst:not_zero	%t17	%t16	0
	cmp r4,r5                                         	@IRInst:not_zero	%t17	%t16	0
	moveq r6,#0                                       	@IRInst:not_zero	%t17	%t16	0
	movne r6,#1                                       	@IRInst:not_zero	%t17	%t16	0
	str r6,[fp,#60]                                   	@IRInst:not_zero	%t17	%t16	0
	beq .L7                                           
	b .L6                                             
.L6:
	b .L5                                             
.L7:
.L8:
	b .L3                                             
.L5:
	ldr r0,[fp,#36]                                   	@IRInst:assign	r0	a
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#2                                         	@IRInst:mul	%t18	2	4
	mov r5,#4                                         	@IRInst:mul	%t18	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t18	2	4
	str r6,[fp,#64]                                   	@IRInst:mul	%t18	2	4
	ldr r4,.global_0_c                                	@IRInst:add	%t19	c	%t18
	ldr r5,[fp,#64]                                   	@IRInst:add	%t19	c	%t18
	add r6,r4,r5                                      	@IRInst:add	%t19	c	%t18
	str r6,[fp,#68]                                   	@IRInst:add	%t19	c	%t18
	ldr r5,[fp,#68]                                   	@IRInst:assign	%t19	1
	mov r4,#1                                         	@IRInst:assign	%t19	1
	str r4,[r5]                                       	@IRInst:assign	%t19	1
	mov r4,#0                                         	@IRInst:mul	%t20	0	8
	mov r5,#8                                         	@IRInst:mul	%t20	0	8
	mul r6,r4,r5                                      	@IRInst:mul	%t20	0	8
	str r6,[fp,#72]                                   	@IRInst:mul	%t20	0	8
	ldr r4,[fp,#72]                                   	@IRInst:add	%t21	%t20	0
	mov r5,#0                                         	@IRInst:add	%t21	%t20	0
	add r6,r4,r5                                      	@IRInst:add	%t21	%t20	0
	str r6,[fp,#76]                                   	@IRInst:add	%t21	%t20	0
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t22	%t21	4
	mov r5,#4                                         	@IRInst:mul	%t22	%t21	4
	mul r6,r4,r5                                      	@IRInst:mul	%t22	%t21	4
	str r6,[fp,#80]                                   	@IRInst:mul	%t22	%t21	4
	ldr r4,.global_0_c                                	@IRInst:add	%t23	c	%t22
	ldr r5,[fp,#80]                                   	@IRInst:add	%t23	c	%t22
	add r6,r4,r5                                      	@IRInst:add	%t23	c	%t22
	str r6,[fp,#84]                                   	@IRInst:add	%t23	c	%t22
	ldr r5,[fp,#84]                                   	@IRInst:assign	%t23	0
	mov r4,#0                                         	@IRInst:assign	%t23	0
	str r4,[r5]                                       	@IRInst:assign	%t23	0
	mov r4,#0                                         	@IRInst:mul	%t24	0	8
	mov r5,#8                                         	@IRInst:mul	%t24	0	8
	mul r6,r4,r5                                      	@IRInst:mul	%t24	0	8
	str r6,[fp,#88]                                   	@IRInst:mul	%t24	0	8
	ldr r4,[fp,#88]                                   	@IRInst:add	%t25	%t24	1
	mov r5,#1                                         	@IRInst:add	%t25	%t24	1
	add r6,r4,r5                                      	@IRInst:add	%t25	%t24	1
	str r6,[fp,#92]                                   	@IRInst:add	%t25	%t24	1
	ldr r4,[fp,#92]                                   	@IRInst:mul	%t26	%t25	4
	mov r5,#4                                         	@IRInst:mul	%t26	%t25	4
	mul r6,r4,r5                                      	@IRInst:mul	%t26	%t25	4
	str r6,[fp,#96]                                   	@IRInst:mul	%t26	%t25	4
	ldr r4,.global_0_c                                	@IRInst:add	%t27	c	%t26
	ldr r5,[fp,#96]                                   	@IRInst:add	%t27	c	%t26
	add r6,r4,r5                                      	@IRInst:add	%t27	c	%t26
	str r6,[fp,#100]                                  	@IRInst:add	%t27	c	%t26
	ldr r5,[fp,#100]                                  	@IRInst:assign	%t27	9
	mov r4,#9                                         	@IRInst:assign	%t27	9
	str r4,[r5]                                       	@IRInst:assign	%t27	9
	mov r4,#1                                         	@IRInst:mul	%t28	1	8
	mov r5,#8                                         	@IRInst:mul	%t28	1	8
	mul r6,r4,r5                                      	@IRInst:mul	%t28	1	8
	str r6,[fp,#104]                                  	@IRInst:mul	%t28	1	8
	ldr r4,[fp,#104]                                  	@IRInst:add	%t29	%t28	0
	mov r5,#0                                         	@IRInst:add	%t29	%t28	0
	add r6,r4,r5                                      	@IRInst:add	%t29	%t28	0
	str r6,[fp,#108]                                  	@IRInst:add	%t29	%t28	0
	ldr r4,[fp,#108]                                  	@IRInst:mul	%t30	%t29	4
	mov r5,#4                                         	@IRInst:mul	%t30	%t29	4
	mul r6,r4,r5                                      	@IRInst:mul	%t30	%t29	4
	str r6,[fp,#112]                                  	@IRInst:mul	%t30	%t29	4
	ldr r4,.global_0_c                                	@IRInst:add	%t31	c	%t30
	ldr r5,[fp,#112]                                  	@IRInst:add	%t31	c	%t30
	add r6,r4,r5                                      	@IRInst:add	%t31	c	%t30
	str r6,[fp,#116]                                  	@IRInst:add	%t31	c	%t30
	ldr r5,[fp,#116]                                  	@IRInst:assign	%t31	8
	mov r4,#8                                         	@IRInst:assign	%t31	8
	str r4,[r5]                                       	@IRInst:assign	%t31	8
	mov r4,#1                                         	@IRInst:mul	%t32	1	8
	mov r5,#8                                         	@IRInst:mul	%t32	1	8
	mul r6,r4,r5                                      	@IRInst:mul	%t32	1	8
	str r6,[fp,#120]                                  	@IRInst:mul	%t32	1	8
	ldr r4,[fp,#120]                                  	@IRInst:add	%t33	%t32	1
	mov r5,#1                                         	@IRInst:add	%t33	%t32	1
	add r6,r4,r5                                      	@IRInst:add	%t33	%t32	1
	str r6,[fp,#124]                                  	@IRInst:add	%t33	%t32	1
	ldr r4,[fp,#124]                                  	@IRInst:mul	%t34	%t33	4
	mov r5,#4                                         	@IRInst:mul	%t34	%t33	4
	mul r6,r4,r5                                      	@IRInst:mul	%t34	%t33	4
	str r6,[fp,#128]                                  	@IRInst:mul	%t34	%t33	4
	ldr r4,.global_0_c                                	@IRInst:add	%t35	c	%t34
	ldr r5,[fp,#128]                                  	@IRInst:add	%t35	c	%t34
	add r6,r4,r5                                      	@IRInst:add	%t35	c	%t34
	str r6,[fp,#132]                                  	@IRInst:add	%t35	c	%t34
	ldr r5,[fp,#132]                                  	@IRInst:assign	%t35	3
	mov r4,#3                                         	@IRInst:assign	%t35	3
	str r4,[r5]                                       	@IRInst:assign	%t35	3
	mov r4,#2                                         
	str r4,[fp,#136]                                  
	mov r4,#2                                         	@IRInst:mul	%t37	2	8
	mov r5,#8                                         	@IRInst:mul	%t37	2	8
	mul r6,r4,r5                                      	@IRInst:mul	%t37	2	8
	str r6,[fp,#140]                                  	@IRInst:mul	%t37	2	8
	ldr r4,[fp,#140]                                  	@IRInst:mul	%t38	%t37	4
	mov r5,#4                                         	@IRInst:mul	%t38	%t37	4
	mul r6,r4,r5                                      	@IRInst:mul	%t38	%t37	4
	str r6,[fp,#144]                                  	@IRInst:mul	%t38	%t37	4
	ldr r4,.global_0_c                                	@IRInst:add	%t39	c	%t38
	ldr r5,[fp,#144]                                  	@IRInst:add	%t39	c	%t38
	add r6,r4,r5                                      	@IRInst:add	%t39	c	%t38
	str r6,[fp,#148]                                  	@IRInst:add	%t39	c	%t38
.L9:
	mov r4,#2                                         	@IRInst:mul	%t40	2	1
	mov r5,#1                                         	@IRInst:mul	%t40	2	1
	mul r6,r4,r5                                      	@IRInst:mul	%t40	2	1
	str r6,[fp,#180]                                  	@IRInst:mul	%t40	2	1
	ldr r4,[fp,#180]                                  	@IRInst:add	%t41	%t40	0
	mov r5,#0                                         	@IRInst:add	%t41	%t40	0
	add r6,r4,r5                                      	@IRInst:add	%t41	%t40	0
	str r6,[fp,#184]                                  	@IRInst:add	%t41	%t40	0
	ldr r4,[fp,#184]                                  	@IRInst:mul	%t42	%t41	5
	mov r5,#5                                         	@IRInst:mul	%t42	%t41	5
	mul r6,r4,r5                                      	@IRInst:mul	%t42	%t41	5
	str r6,[fp,#188]                                  	@IRInst:mul	%t42	%t41	5
	ldr r4,[fp,#188]                                  	@IRInst:add	%t43	%t42	0
	mov r5,#0                                         	@IRInst:add	%t43	%t42	0
	add r6,r4,r5                                      	@IRInst:add	%t43	%t42	0
	str r6,[fp,#192]                                  	@IRInst:add	%t43	%t42	0
	ldr r4,[fp,#192]                                  	@IRInst:mul	%t44	%t43	4
	mov r5,#4                                         	@IRInst:mul	%t44	%t43	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	%t43	4
	str r6,[fp,#196]                                  	@IRInst:mul	%t44	%t43	4
	ldr r4,.global_0_c                                	@IRInst:add	%t45	c	%t44
	ldr r5,[fp,#196]                                  	@IRInst:add	%t45	c	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	c	%t44
	str r6,[fp,#200]                                  	@IRInst:add	%t45	c	%t44
	ldr r5,[fp,#200]                                  	@IRInst:assign	%t45	2
	mov r4,#2                                         	@IRInst:assign	%t45	2
	str r4,[r5]                                       	@IRInst:assign	%t45	2
	mov r4,#2                                         	@IRInst:mul	%t46	2	1
	mov r5,#1                                         	@IRInst:mul	%t46	2	1
	mul r6,r4,r5                                      	@IRInst:mul	%t46	2	1
	str r6,[fp,#204]                                  	@IRInst:mul	%t46	2	1
	ldr r4,[fp,#204]                                  	@IRInst:add	%t47	%t46	0
	mov r5,#0                                         	@IRInst:add	%t47	%t46	0
	add r6,r4,r5                                      	@IRInst:add	%t47	%t46	0
	str r6,[fp,#208]                                  	@IRInst:add	%t47	%t46	0
	ldr r4,[fp,#208]                                  	@IRInst:mul	%t48	%t47	5
	mov r5,#5                                         	@IRInst:mul	%t48	%t47	5
	mul r6,r4,r5                                      	@IRInst:mul	%t48	%t47	5
	str r6,[fp,#212]                                  	@IRInst:mul	%t48	%t47	5
	ldr r4,[fp,#212]                                  	@IRInst:add	%t49	%t48	1
	mov r5,#1                                         	@IRInst:add	%t49	%t48	1
	add r6,r4,r5                                      	@IRInst:add	%t49	%t48	1
	str r6,[fp,#216]                                  	@IRInst:add	%t49	%t48	1
	ldr r4,[fp,#216]                                  	@IRInst:mul	%t50	%t49	4
	mov r5,#4                                         	@IRInst:mul	%t50	%t49	4
	mul r6,r4,r5                                      	@IRInst:mul	%t50	%t49	4
	str r6,[fp,#220]                                  	@IRInst:mul	%t50	%t49	4
	ldr r4,.global_0_c                                	@IRInst:add	%t51	c	%t50
	ldr r5,[fp,#220]                                  	@IRInst:add	%t51	c	%t50
	add r6,r4,r5                                      	@IRInst:add	%t51	c	%t50
	str r6,[fp,#224]                                  	@IRInst:add	%t51	c	%t50
	ldr r5,[fp,#224]                                  	@IRInst:assign	%t51	1
	mov r4,#1                                         	@IRInst:assign	%t51	1
	str r4,[r5]                                       	@IRInst:assign	%t51	1
	mov r4,#2                                         	@IRInst:mul	%t52	2	1
	mov r5,#1                                         	@IRInst:mul	%t52	2	1
	mul r6,r4,r5                                      	@IRInst:mul	%t52	2	1
	str r6,[fp,#228]                                  	@IRInst:mul	%t52	2	1
	ldr r4,[fp,#228]                                  	@IRInst:add	%t53	%t52	0
	mov r5,#0                                         	@IRInst:add	%t53	%t52	0
	add r6,r4,r5                                      	@IRInst:add	%t53	%t52	0
	str r6,[fp,#232]                                  	@IRInst:add	%t53	%t52	0
	ldr r4,[fp,#232]                                  	@IRInst:mul	%t54	%t53	5
	mov r5,#5                                         	@IRInst:mul	%t54	%t53	5
	mul r6,r4,r5                                      	@IRInst:mul	%t54	%t53	5
	str r6,[fp,#236]                                  	@IRInst:mul	%t54	%t53	5
	ldr r4,[fp,#236]                                  	@IRInst:add	%t55	%t54	2
	mov r5,#2                                         	@IRInst:add	%t55	%t54	2
	add r6,r4,r5                                      	@IRInst:add	%t55	%t54	2
	str r6,[fp,#240]                                  	@IRInst:add	%t55	%t54	2
	ldr r4,[fp,#240]                                  	@IRInst:mul	%t56	%t55	4
	mov r5,#4                                         	@IRInst:mul	%t56	%t55	4
	mul r6,r4,r5                                      	@IRInst:mul	%t56	%t55	4
	str r6,[fp,#244]                                  	@IRInst:mul	%t56	%t55	4
	ldr r4,.global_0_c                                	@IRInst:add	%t57	c	%t56
	ldr r5,[fp,#244]                                  	@IRInst:add	%t57	c	%t56
	add r6,r4,r5                                      	@IRInst:add	%t57	c	%t56
	str r6,[fp,#248]                                  	@IRInst:add	%t57	c	%t56
	ldr r5,[fp,#248]                                  	@IRInst:assign	%t57	8
	mov r4,#8                                         	@IRInst:assign	%t57	8
	str r4,[r5]                                       	@IRInst:assign	%t57	8
	ldr r4,[fp,#136]                                  	@IRInst:mul	%t58	b	1
	mov r5,#1                                         	@IRInst:mul	%t58	b	1
	mul r6,r4,r5                                      	@IRInst:mul	%t58	b	1
	str r6,[fp,#252]                                  	@IRInst:mul	%t58	b	1
	ldr r4,[fp,#252]                                  	@IRInst:add	%t59	%t58	0
	mov r5,#0                                         	@IRInst:add	%t59	%t58	0
	add r6,r4,r5                                      	@IRInst:add	%t59	%t58	0
	str r6,[fp,#256]                                  	@IRInst:add	%t59	%t58	0
	ldr r4,[fp,#256]                                  	@IRInst:mul	%t60	%t59	5
	mov r5,#5                                         	@IRInst:mul	%t60	%t59	5
	mul r6,r4,r5                                      	@IRInst:mul	%t60	%t59	5
	str r6,[fp,#260]                                  	@IRInst:mul	%t60	%t59	5
	ldr r4,[fp,#260]                                  	@IRInst:add	%t61	%t60	0
	mov r5,#0                                         	@IRInst:add	%t61	%t60	0
	add r6,r4,r5                                      	@IRInst:add	%t61	%t60	0
	str r6,[fp,#264]                                  	@IRInst:add	%t61	%t60	0
	ldr r4,[fp,#264]                                  	@IRInst:mul	%t62	%t61	4
	mov r5,#4                                         	@IRInst:mul	%t62	%t61	4
	mul r6,r4,r5                                      	@IRInst:mul	%t62	%t61	4
	str r6,[fp,#268]                                  	@IRInst:mul	%t62	%t61	4
	ldr r4,.global_0_c                                	@IRInst:add	%t63	c	%t62
	ldr r5,[fp,#268]                                  	@IRInst:add	%t63	c	%t62
	add r6,r4,r5                                      	@IRInst:add	%t63	c	%t62
	str r6,[fp,#272]                                  	@IRInst:add	%t63	c	%t62
	ldr r4,[fp,#272]                                  	@IRInst:assign	%t64	%t63
	ldr r4,[r4]                                       	@IRInst:assign	%t64	%t63
	str r4,[fp,#276]                                  	@IRInst:assign	%t64	%t63
	ldr r0,[fp,#276]                                  	@IRInst:assign	r0	%t64
	bl putint                                         
	ldr r4,[fp,#136]                                  	@IRInst:mul	%t65	b	1
	mov r5,#1                                         	@IRInst:mul	%t65	b	1
	mul r6,r4,r5                                      	@IRInst:mul	%t65	b	1
	str r6,[fp,#280]                                  	@IRInst:mul	%t65	b	1
	ldr r4,[fp,#280]                                  	@IRInst:add	%t66	%t65	0
	mov r5,#0                                         	@IRInst:add	%t66	%t65	0
	add r6,r4,r5                                      	@IRInst:add	%t66	%t65	0
	str r6,[fp,#284]                                  	@IRInst:add	%t66	%t65	0
	ldr r4,[fp,#284]                                  	@IRInst:mul	%t67	%t66	5
	mov r5,#5                                         	@IRInst:mul	%t67	%t66	5
	mul r6,r4,r5                                      	@IRInst:mul	%t67	%t66	5
	str r6,[fp,#288]                                  	@IRInst:mul	%t67	%t66	5
	ldr r4,[fp,#288]                                  	@IRInst:add	%t68	%t67	1
	mov r5,#1                                         	@IRInst:add	%t68	%t67	1
	add r6,r4,r5                                      	@IRInst:add	%t68	%t67	1
	str r6,[fp,#292]                                  	@IRInst:add	%t68	%t67	1
	ldr r4,[fp,#292]                                  	@IRInst:mul	%t69	%t68	4
	mov r5,#4                                         	@IRInst:mul	%t69	%t68	4
	mul r6,r4,r5                                      	@IRInst:mul	%t69	%t68	4
	str r6,[fp,#296]                                  	@IRInst:mul	%t69	%t68	4
	ldr r4,.global_0_c                                	@IRInst:add	%t70	c	%t69
	ldr r5,[fp,#296]                                  	@IRInst:add	%t70	c	%t69
	add r6,r4,r5                                      	@IRInst:add	%t70	c	%t69
	str r6,[fp,#300]                                  	@IRInst:add	%t70	c	%t69
	ldr r4,[fp,#300]                                  	@IRInst:assign	%t71	%t70
	ldr r4,[r4]                                       	@IRInst:assign	%t71	%t70
	str r4,[fp,#304]                                  	@IRInst:assign	%t71	%t70
	ldr r0,[fp,#304]                                  	@IRInst:assign	r0	%t71
	bl putint                                         
	ldr r4,[fp,#136]                                  	@IRInst:mul	%t72	b	1
	mov r5,#1                                         	@IRInst:mul	%t72	b	1
	mul r6,r4,r5                                      	@IRInst:mul	%t72	b	1
	str r6,[fp,#308]                                  	@IRInst:mul	%t72	b	1
	ldr r4,[fp,#308]                                  	@IRInst:add	%t73	%t72	0
	mov r5,#0                                         	@IRInst:add	%t73	%t72	0
	add r6,r4,r5                                      	@IRInst:add	%t73	%t72	0
	str r6,[fp,#312]                                  	@IRInst:add	%t73	%t72	0
	ldr r4,[fp,#312]                                  	@IRInst:mul	%t74	%t73	5
	mov r5,#5                                         	@IRInst:mul	%t74	%t73	5
	mul r6,r4,r5                                      	@IRInst:mul	%t74	%t73	5
	str r6,[fp,#316]                                  	@IRInst:mul	%t74	%t73	5
	ldr r4,[fp,#316]                                  	@IRInst:add	%t75	%t74	2
	mov r5,#2                                         	@IRInst:add	%t75	%t74	2
	add r6,r4,r5                                      	@IRInst:add	%t75	%t74	2
	str r6,[fp,#320]                                  	@IRInst:add	%t75	%t74	2
	ldr r4,[fp,#320]                                  	@IRInst:mul	%t76	%t75	4
	mov r5,#4                                         	@IRInst:mul	%t76	%t75	4
	mul r6,r4,r5                                      	@IRInst:mul	%t76	%t75	4
	str r6,[fp,#324]                                  	@IRInst:mul	%t76	%t75	4
	ldr r4,.global_0_c                                	@IRInst:add	%t77	c	%t76
	ldr r5,[fp,#324]                                  	@IRInst:add	%t77	c	%t76
	add r6,r4,r5                                      	@IRInst:add	%t77	c	%t76
	str r6,[fp,#328]                                  	@IRInst:add	%t77	c	%t76
	ldr r4,[fp,#328]                                  	@IRInst:assign	%t78	%t77
	ldr r4,[r4]                                       	@IRInst:assign	%t78	%t77
	str r4,[fp,#332]                                  	@IRInst:assign	%t78	%t77
	ldr r0,[fp,#332]                                  	@IRInst:assign	r0	%t78
	bl putint                                         
.L10:
.L11:
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r0,.global_0_b                                	@IRInst:assign	r0	b
	ldr r0,[r0]                                       	@IRInst:assign	r0	b
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:mul	%t79	0	5
	mov r5,#5                                         	@IRInst:mul	%t79	0	5
	mul r6,r4,r5                                      	@IRInst:mul	%t79	0	5
	str r6,[fp,#336]                                  	@IRInst:mul	%t79	0	5
	ldr r4,[fp,#336]                                  	@IRInst:mul	%t80	%t79	4
	mov r5,#4                                         	@IRInst:mul	%t80	%t79	4
	mul r6,r4,r5                                      	@IRInst:mul	%t80	%t79	4
	str r6,[fp,#340]                                  	@IRInst:mul	%t80	%t79	4
	ldr r4,.global_0_c                                	@IRInst:add	%t81	c	%t80
	ldr r5,[fp,#340]                                  	@IRInst:add	%t81	c	%t80
	add r6,r4,r5                                      	@IRInst:add	%t81	c	%t80
	str r6,[fp,#344]                                  	@IRInst:add	%t81	c	%t80
	ldr r0,[fp,#344]                                  	@IRInst:assign	r0	%t81
	bl putint                                         
	mov r4,#1                                         	@IRInst:mul	%t82	1	5
	mov r5,#5                                         	@IRInst:mul	%t82	1	5
	mul r6,r4,r5                                      	@IRInst:mul	%t82	1	5
	str r6,[fp,#364]                                  	@IRInst:mul	%t82	1	5
	ldr r4,[fp,#364]                                  	@IRInst:mul	%t83	%t82	4
	mov r5,#4                                         	@IRInst:mul	%t83	%t82	4
	mul r6,r4,r5                                      	@IRInst:mul	%t83	%t82	4
	str r6,[fp,#368]                                  	@IRInst:mul	%t83	%t82	4
	ldr r4,.global_0_c                                	@IRInst:add	%t84	c	%t83
	ldr r5,[fp,#368]                                  	@IRInst:add	%t84	c	%t83
	add r6,r4,r5                                      	@IRInst:add	%t84	c	%t83
	str r6,[fp,#372]                                  	@IRInst:add	%t84	c	%t83
	ldr r0,[fp,#372]                                  	@IRInst:assign	r0	%t84
	bl putint                                         
	mov r4,#2                                         	@IRInst:mul	%t85	2	5
	mov r5,#5                                         	@IRInst:mul	%t85	2	5
	mul r6,r4,r5                                      	@IRInst:mul	%t85	2	5
	str r6,[fp,#392]                                  	@IRInst:mul	%t85	2	5
	ldr r4,[fp,#392]                                  	@IRInst:mul	%t86	%t85	4
	mov r5,#4                                         	@IRInst:mul	%t86	%t85	4
	mul r6,r4,r5                                      	@IRInst:mul	%t86	%t85	4
	str r6,[fp,#396]                                  	@IRInst:mul	%t86	%t85	4
	ldr r4,.global_0_c                                	@IRInst:add	%t87	c	%t86
	ldr r5,[fp,#396]                                  	@IRInst:add	%t87	c	%t86
	add r6,r4,r5                                      	@IRInst:add	%t87	c	%t86
	str r6,[fp,#400]                                  	@IRInst:add	%t87	c	%t86
	ldr r0,[fp,#400]                                  	@IRInst:assign	r0	%t87
	bl putint                                         
	mov r4,#3                                         	@IRInst:mul	%t88	3	5
	mov r5,#5                                         	@IRInst:mul	%t88	3	5
	mul r6,r4,r5                                      	@IRInst:mul	%t88	3	5
	str r6,[fp,#420]                                  	@IRInst:mul	%t88	3	5
	ldr r4,[fp,#420]                                  	@IRInst:mul	%t89	%t88	4
	mov r5,#4                                         	@IRInst:mul	%t89	%t88	4
	mul r6,r4,r5                                      	@IRInst:mul	%t89	%t88	4
	str r6,[fp,#424]                                  	@IRInst:mul	%t89	%t88	4
	ldr r4,.global_0_c                                	@IRInst:add	%t90	c	%t89
	ldr r5,[fp,#424]                                  	@IRInst:add	%t90	c	%t89
	add r6,r4,r5                                      	@IRInst:add	%t90	c	%t89
	str r6,[fp,#428]                                  	@IRInst:add	%t90	c	%t89
	ldr r0,[fp,#428]                                  	@IRInst:assign	r0	%t90
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#448                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
