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
	sub sp,sp,#312                                    
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
	mov r4,#2                                         
	str r4,[fp,#72]                                   
	mov r4,#2                                         	@IRInst:mul	%t21	2	8
	mov r5,#8                                         	@IRInst:mul	%t21	2	8
	mul r6,r4,r5                                      	@IRInst:mul	%t21	2	8
	str r6,[fp,#76]                                   	@IRInst:mul	%t21	2	8
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t22	%t21	4
	mov r5,#4                                         	@IRInst:mul	%t22	%t21	4
	mul r6,r4,r5                                      	@IRInst:mul	%t22	%t21	4
	str r6,[fp,#80]                                   	@IRInst:mul	%t22	%t21	4
	ldr r4,.global_0_c                                	@IRInst:add	%t23	c	%t22
	ldr r5,[fp,#80]                                   	@IRInst:add	%t23	c	%t22
	add r6,r4,r5                                      	@IRInst:add	%t23	c	%t22
	str r6,[fp,#84]                                   	@IRInst:add	%t23	c	%t22
.L9:
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t24	b	1
	mov r5,#1                                         	@IRInst:mul	%t24	b	1
	mul r6,r4,r5                                      	@IRInst:mul	%t24	b	1
	str r6,[fp,#116]                                  	@IRInst:mul	%t24	b	1
	ldr r4,[fp,#116]                                  	@IRInst:add	%t25	%t24	0
	mov r5,#0                                         	@IRInst:add	%t25	%t24	0
	add r6,r4,r5                                      	@IRInst:add	%t25	%t24	0
	str r6,[fp,#120]                                  	@IRInst:add	%t25	%t24	0
	ldr r4,[fp,#120]                                  	@IRInst:mul	%t26	%t25	5
	mov r5,#5                                         	@IRInst:mul	%t26	%t25	5
	mul r6,r4,r5                                      	@IRInst:mul	%t26	%t25	5
	str r6,[fp,#124]                                  	@IRInst:mul	%t26	%t25	5
	ldr r4,[fp,#124]                                  	@IRInst:add	%t27	%t26	0
	mov r5,#0                                         	@IRInst:add	%t27	%t26	0
	add r6,r4,r5                                      	@IRInst:add	%t27	%t26	0
	str r6,[fp,#128]                                  	@IRInst:add	%t27	%t26	0
	ldr r4,[fp,#128]                                  	@IRInst:mul	%t28	%t27	4
	mov r5,#4                                         	@IRInst:mul	%t28	%t27	4
	mul r6,r4,r5                                      	@IRInst:mul	%t28	%t27	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t28	%t27	4
	ldr r4,.global_0_c                                	@IRInst:add	%t29	c	%t28
	ldr r5,[fp,#132]                                  	@IRInst:add	%t29	c	%t28
	add r6,r4,r5                                      	@IRInst:add	%t29	c	%t28
	str r6,[fp,#136]                                  	@IRInst:add	%t29	c	%t28
	ldr r4,[fp,#136]                                  	@IRInst:assign	%t30	%t29
	ldr r4,[r4]                                       	@IRInst:assign	%t30	%t29
	str r4,[fp,#140]                                  	@IRInst:assign	%t30	%t29
	ldr r0,[fp,#140]                                  	@IRInst:assign	r0	%t30
	bl putint                                         
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t31	b	1
	mov r5,#1                                         	@IRInst:mul	%t31	b	1
	mul r6,r4,r5                                      	@IRInst:mul	%t31	b	1
	str r6,[fp,#144]                                  	@IRInst:mul	%t31	b	1
	ldr r4,[fp,#144]                                  	@IRInst:add	%t32	%t31	0
	mov r5,#0                                         	@IRInst:add	%t32	%t31	0
	add r6,r4,r5                                      	@IRInst:add	%t32	%t31	0
	str r6,[fp,#148]                                  	@IRInst:add	%t32	%t31	0
	ldr r4,[fp,#148]                                  	@IRInst:mul	%t33	%t32	5
	mov r5,#5                                         	@IRInst:mul	%t33	%t32	5
	mul r6,r4,r5                                      	@IRInst:mul	%t33	%t32	5
	str r6,[fp,#152]                                  	@IRInst:mul	%t33	%t32	5
	ldr r4,[fp,#152]                                  	@IRInst:add	%t34	%t33	1
	mov r5,#1                                         	@IRInst:add	%t34	%t33	1
	add r6,r4,r5                                      	@IRInst:add	%t34	%t33	1
	str r6,[fp,#156]                                  	@IRInst:add	%t34	%t33	1
	ldr r4,[fp,#156]                                  	@IRInst:mul	%t35	%t34	4
	mov r5,#4                                         	@IRInst:mul	%t35	%t34	4
	mul r6,r4,r5                                      	@IRInst:mul	%t35	%t34	4
	str r6,[fp,#160]                                  	@IRInst:mul	%t35	%t34	4
	ldr r4,.global_0_c                                	@IRInst:add	%t36	c	%t35
	ldr r5,[fp,#160]                                  	@IRInst:add	%t36	c	%t35
	add r6,r4,r5                                      	@IRInst:add	%t36	c	%t35
	str r6,[fp,#164]                                  	@IRInst:add	%t36	c	%t35
	ldr r4,[fp,#164]                                  	@IRInst:assign	%t37	%t36
	ldr r4,[r4]                                       	@IRInst:assign	%t37	%t36
	str r4,[fp,#168]                                  	@IRInst:assign	%t37	%t36
	ldr r0,[fp,#168]                                  	@IRInst:assign	r0	%t37
	bl putint                                         
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t38	b	1
	mov r5,#1                                         	@IRInst:mul	%t38	b	1
	mul r6,r4,r5                                      	@IRInst:mul	%t38	b	1
	str r6,[fp,#172]                                  	@IRInst:mul	%t38	b	1
	ldr r4,[fp,#172]                                  	@IRInst:add	%t39	%t38	0
	mov r5,#0                                         	@IRInst:add	%t39	%t38	0
	add r6,r4,r5                                      	@IRInst:add	%t39	%t38	0
	str r6,[fp,#176]                                  	@IRInst:add	%t39	%t38	0
	ldr r4,[fp,#176]                                  	@IRInst:mul	%t40	%t39	5
	mov r5,#5                                         	@IRInst:mul	%t40	%t39	5
	mul r6,r4,r5                                      	@IRInst:mul	%t40	%t39	5
	str r6,[fp,#180]                                  	@IRInst:mul	%t40	%t39	5
	ldr r4,[fp,#180]                                  	@IRInst:add	%t41	%t40	2
	mov r5,#2                                         	@IRInst:add	%t41	%t40	2
	add r6,r4,r5                                      	@IRInst:add	%t41	%t40	2
	str r6,[fp,#184]                                  	@IRInst:add	%t41	%t40	2
	ldr r4,[fp,#184]                                  	@IRInst:mul	%t42	%t41	4
	mov r5,#4                                         	@IRInst:mul	%t42	%t41	4
	mul r6,r4,r5                                      	@IRInst:mul	%t42	%t41	4
	str r6,[fp,#188]                                  	@IRInst:mul	%t42	%t41	4
	ldr r4,.global_0_c                                	@IRInst:add	%t43	c	%t42
	ldr r5,[fp,#188]                                  	@IRInst:add	%t43	c	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	c	%t42
	str r6,[fp,#192]                                  	@IRInst:add	%t43	c	%t42
	ldr r4,[fp,#192]                                  	@IRInst:assign	%t44	%t43
	ldr r4,[r4]                                       	@IRInst:assign	%t44	%t43
	str r4,[fp,#196]                                  	@IRInst:assign	%t44	%t43
	ldr r0,[fp,#196]                                  	@IRInst:assign	r0	%t44
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
	mov r4,#0                                         	@IRInst:mul	%t45	0	5
	mov r5,#5                                         	@IRInst:mul	%t45	0	5
	mul r6,r4,r5                                      	@IRInst:mul	%t45	0	5
	str r6,[fp,#200]                                  	@IRInst:mul	%t45	0	5
	ldr r4,[fp,#200]                                  	@IRInst:mul	%t46	%t45	4
	mov r5,#4                                         	@IRInst:mul	%t46	%t45	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	%t45	4
	str r6,[fp,#204]                                  	@IRInst:mul	%t46	%t45	4
	ldr r4,.global_0_c                                	@IRInst:add	%t47	c	%t46
	ldr r5,[fp,#204]                                  	@IRInst:add	%t47	c	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	c	%t46
	str r6,[fp,#208]                                  	@IRInst:add	%t47	c	%t46
	ldr r0,[fp,#208]                                  	@IRInst:assign	r0	%t47
	bl putint                                         
	mov r4,#1                                         	@IRInst:mul	%t48	1	5
	mov r5,#5                                         	@IRInst:mul	%t48	1	5
	mul r6,r4,r5                                      	@IRInst:mul	%t48	1	5
	str r6,[fp,#228]                                  	@IRInst:mul	%t48	1	5
	ldr r4,[fp,#228]                                  	@IRInst:mul	%t49	%t48	4
	mov r5,#4                                         	@IRInst:mul	%t49	%t48	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t48	4
	str r6,[fp,#232]                                  	@IRInst:mul	%t49	%t48	4
	ldr r4,.global_0_c                                	@IRInst:add	%t50	c	%t49
	ldr r5,[fp,#232]                                  	@IRInst:add	%t50	c	%t49
	add r6,r4,r5                                      	@IRInst:add	%t50	c	%t49
	str r6,[fp,#236]                                  	@IRInst:add	%t50	c	%t49
	ldr r0,[fp,#236]                                  	@IRInst:assign	r0	%t50
	bl putint                                         
	mov r4,#2                                         	@IRInst:mul	%t51	2	5
	mov r5,#5                                         	@IRInst:mul	%t51	2	5
	mul r6,r4,r5                                      	@IRInst:mul	%t51	2	5
	str r6,[fp,#256]                                  	@IRInst:mul	%t51	2	5
	ldr r4,[fp,#256]                                  	@IRInst:mul	%t52	%t51	4
	mov r5,#4                                         	@IRInst:mul	%t52	%t51	4
	mul r6,r4,r5                                      	@IRInst:mul	%t52	%t51	4
	str r6,[fp,#260]                                  	@IRInst:mul	%t52	%t51	4
	ldr r4,.global_0_c                                	@IRInst:add	%t53	c	%t52
	ldr r5,[fp,#260]                                  	@IRInst:add	%t53	c	%t52
	add r6,r4,r5                                      	@IRInst:add	%t53	c	%t52
	str r6,[fp,#264]                                  	@IRInst:add	%t53	c	%t52
	ldr r0,[fp,#264]                                  	@IRInst:assign	r0	%t53
	bl putint                                         
	mov r4,#3                                         	@IRInst:mul	%t54	3	5
	mov r5,#5                                         	@IRInst:mul	%t54	3	5
	mul r6,r4,r5                                      	@IRInst:mul	%t54	3	5
	str r6,[fp,#284]                                  	@IRInst:mul	%t54	3	5
	ldr r4,[fp,#284]                                  	@IRInst:mul	%t55	%t54	4
	mov r5,#4                                         	@IRInst:mul	%t55	%t54	4
	mul r6,r4,r5                                      	@IRInst:mul	%t55	%t54	4
	str r6,[fp,#288]                                  	@IRInst:mul	%t55	%t54	4
	ldr r4,.global_0_c                                	@IRInst:add	%t56	c	%t55
	ldr r5,[fp,#288]                                  	@IRInst:add	%t56	c	%t55
	add r6,r4,r5                                      	@IRInst:add	%t56	c	%t55
	str r6,[fp,#292]                                  	@IRInst:add	%t56	c	%t55
	ldr r0,[fp,#292]                                  	@IRInst:assign	r0	%t56
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#312                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
