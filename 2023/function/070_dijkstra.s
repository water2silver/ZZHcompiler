.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
INF:
        .long   65535
e:
        .zero   1024
book:
        .zero   64
dis:
        .zero   64
n:
        .long   0
m:
        .long   0
v1:
        .long   0
v2:
        .long   0
w:
        .long   0
.text
.global_0_INF:
        .long   INF
.global_0_e:
        .long   e
.global_0_book:
        .long   book
.global_0_dis:
        .long   dis
.global_0_n:
        .long   n
.global_0_m:
        .long   m
.global_0_v1:
        .long   v1
.global_0_v2:
        .long   v2
.global_0_w:
        .long   w
.global Dijkstra
.type Dijkstra, %function
Dijkstra:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#276                                    
	add fp,sp,#0                                      
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp]                                       	@IRInst:assign	i	1
.L3:
	ldr r4,[fp]                                       	@IRInst:ble	%t12	i	n
	ldr r5,.global_0_n                                	@IRInst:ble	%t12	i	n
	ldr r5,[r5]                                       	@IRInst:ble	%t12	i	n
	cmp r4,r5                                         	@IRInst:ble	%t12	i	n
	movle r6,#1                                       	@IRInst:ble	%t12	i	n
	movgt r6,#0                                       	@IRInst:ble	%t12	i	n
	str r6,[fp,#8]                                    	@IRInst:ble	%t12	i	n
	ble .L4                                           
	b .L5                                             
.L4:
	mov r4,#1                                         	@IRInst:mul	%t15	1	16
	mov r5,#16                                        	@IRInst:mul	%t15	1	16
	mul r6,r4,r5                                      	@IRInst:mul	%t15	1	16
	str r6,[fp,#20]                                   	@IRInst:mul	%t15	1	16
	ldr r4,[fp,#20]                                   	@IRInst:add	%t16	%t15	i
	ldr r5,[fp]                                       	@IRInst:add	%t16	%t15	i
	add r6,r4,r5                                      	@IRInst:add	%t16	%t15	i
	str r6,[fp,#24]                                   	@IRInst:add	%t16	%t15	i
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t17	%t16	4
	mov r5,#4                                         	@IRInst:mul	%t17	%t16	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	%t16	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t17	%t16	4
	ldr r4,.global_0_e                                	@IRInst:add	%t18	e	%t17
	ldr r5,[fp,#28]                                   	@IRInst:add	%t18	e	%t17
	add r6,r4,r5                                      	@IRInst:add	%t18	e	%t17
	str r6,[fp,#32]                                   	@IRInst:add	%t18	e	%t17
	ldr r4,[fp,#32]                                   	@IRInst:assign	%t19	%t18
	ldr r4,[r4]                                       	@IRInst:assign	%t19	%t18
	str r4,[fp,#36]                                   	@IRInst:assign	%t19	%t18
	ldr r4,[fp]                                       	@IRInst:mul	%t13	i	4
	mov r5,#4                                         	@IRInst:mul	%t13	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t13	i	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t13	i	4
	ldr r4,.global_0_dis                              	@IRInst:add	%t14	dis	%t13
	ldr r5,[fp,#12]                                   	@IRInst:add	%t14	dis	%t13
	add r6,r4,r5                                      	@IRInst:add	%t14	dis	%t13
	str r6,[fp,#16]                                   	@IRInst:add	%t14	dis	%t13
	ldr r5,[fp,#16]                                   	@IRInst:assign	%t14	%t19
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t14	%t19
	str r4,[r5]                                       	@IRInst:assign	%t14	%t19
	ldr r4,[fp]                                       	@IRInst:mul	%t20	i	4
	mov r5,#4                                         	@IRInst:mul	%t20	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t20	i	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t20	i	4
	ldr r4,.global_0_book                             	@IRInst:add	%t21	book	%t20
	ldr r5,[fp,#40]                                   	@IRInst:add	%t21	book	%t20
	add r6,r4,r5                                      	@IRInst:add	%t21	book	%t20
	str r6,[fp,#44]                                   	@IRInst:add	%t21	book	%t20
	ldr r5,[fp,#44]                                   	@IRInst:assign	%t21	0
	mov r4,#0                                         	@IRInst:assign	%t21	0
	str r4,[r5]                                       	@IRInst:assign	%t21	0
	ldr r4,[fp]                                       	@IRInst:add	%t22	i	1
	mov r5,#1                                         	@IRInst:add	%t22	i	1
	add r6,r4,r5                                      	@IRInst:add	%t22	i	1
	str r6,[fp,#48]                                   	@IRInst:add	%t22	i	1
	ldr r4,[fp,#48]                                   	@IRInst:assign	i	%t22
	str r4,[fp]                                       	@IRInst:assign	i	%t22
	b .L3                                             
.L5:
	mov r4,#1                                         	@IRInst:mul	%t23	1	4
	mov r5,#4                                         	@IRInst:mul	%t23	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t23	1	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t23	1	4
	ldr r4,.global_0_book                             	@IRInst:add	%t24	book	%t23
	ldr r5,[fp,#52]                                   	@IRInst:add	%t24	book	%t23
	add r6,r4,r5                                      	@IRInst:add	%t24	book	%t23
	str r6,[fp,#56]                                   	@IRInst:add	%t24	book	%t23
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t24	1
	mov r4,#1                                         	@IRInst:assign	%t24	1
	str r4,[r5]                                       	@IRInst:assign	%t24	1
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp]                                       	@IRInst:assign	i	1
.L6:
	ldr r4,.global_0_n                                	@IRInst:sub	%t25	n	1
	ldr r4,[r4]                                       	@IRInst:sub	%t25	n	1
	mov r5,#1                                         	@IRInst:sub	%t25	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t25	n	1
	str r6,[fp,#60]                                   	@IRInst:sub	%t25	n	1
	ldr r4,[fp]                                       	@IRInst:ble	%t26	i	%t25
	ldr r5,[fp,#60]                                   	@IRInst:ble	%t26	i	%t25
	cmp r4,r5                                         	@IRInst:ble	%t26	i	%t25
	movle r6,#1                                       	@IRInst:ble	%t26	i	%t25
	movgt r6,#0                                       	@IRInst:ble	%t26	i	%t25
	str r6,[fp,#64]                                   	@IRInst:ble	%t26	i	%t25
	ble .L7                                           
	b .L8                                             
.L7:
	ldr r4,=65535                                     	@IRInst:assign	min_num	INF
.ltorg	@IRInst:assign	min_num	INF
	str r4,[fp,#68]                                   	@IRInst:assign	min_num	INF
	mov r4,#0                                         	@IRInst:assign	min_index	0
	str r4,[fp,#72]                                   	@IRInst:assign	min_index	0
	mov r4,#1                                         	@IRInst:assign	k	1
	str r4,[fp,#76]                                   	@IRInst:assign	k	1
.L9:
	ldr r4,[fp,#76]                                   	@IRInst:ble	%t30	k	n
	ldr r5,.global_0_n                                	@IRInst:ble	%t30	k	n
	ldr r5,[r5]                                       	@IRInst:ble	%t30	k	n
	cmp r4,r5                                         	@IRInst:ble	%t30	k	n
	movle r6,#1                                       	@IRInst:ble	%t30	k	n
	movgt r6,#0                                       	@IRInst:ble	%t30	k	n
	str r6,[fp,#80]                                   	@IRInst:ble	%t30	k	n
	ble .L10                                          
	b .L11                                            
.L10:
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t31	k	4
	mov r5,#4                                         	@IRInst:mul	%t31	k	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	k	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t31	k	4
	ldr r4,.global_0_dis                              	@IRInst:add	%t32	dis	%t31
	ldr r5,[fp,#84]                                   	@IRInst:add	%t32	dis	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	dis	%t31
	str r6,[fp,#88]                                   	@IRInst:add	%t32	dis	%t31
	ldr r4,[fp,#88]                                   	@IRInst:assign	%t33	%t32
	ldr r4,[r4]                                       	@IRInst:assign	%t33	%t32
	str r4,[fp,#92]                                   	@IRInst:assign	%t33	%t32
	ldr r4,[fp,#68]                                   	@IRInst:bgt	%t34	min_num	%t33
	ldr r5,[fp,#92]                                   	@IRInst:bgt	%t34	min_num	%t33
	cmp r4,r5                                         	@IRInst:bgt	%t34	min_num	%t33
	movgt r6,#1                                       	@IRInst:bgt	%t34	min_num	%t33
	movle r6,#0                                       	@IRInst:bgt	%t34	min_num	%t33
	str r6,[fp,#96]                                   	@IRInst:bgt	%t34	min_num	%t33
	bgt .L15                                          
	b .L13                                            
.L15:
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t35	k	4
	mov r5,#4                                         	@IRInst:mul	%t35	k	4
	mul r6,r4,r5                                      	@IRInst:mul	%t35	k	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t35	k	4
	ldr r4,.global_0_book                             	@IRInst:add	%t36	book	%t35
	ldr r5,[fp,#100]                                  	@IRInst:add	%t36	book	%t35
	add r6,r4,r5                                      	@IRInst:add	%t36	book	%t35
	str r6,[fp,#104]                                  	@IRInst:add	%t36	book	%t35
	ldr r4,[fp,#104]                                  	@IRInst:assign	%t37	%t36
	ldr r4,[r4]                                       	@IRInst:assign	%t37	%t36
	str r4,[fp,#108]                                  	@IRInst:assign	%t37	%t36
	ldr r4,[fp,#108]                                  	@IRInst:beq	%t38	%t37	0
	mov r5,#0                                         	@IRInst:beq	%t38	%t37	0
	cmp r4,r5                                         	@IRInst:beq	%t38	%t37	0
	moveq r6,#1                                       	@IRInst:beq	%t38	%t37	0
	movne r6,#0                                       	@IRInst:beq	%t38	%t37	0
	str r6,[fp,#112]                                  	@IRInst:beq	%t38	%t37	0
	beq .L12                                          
	b .L13                                            
.L12:
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t39	k	4
	mov r5,#4                                         	@IRInst:mul	%t39	k	4
	mul r6,r4,r5                                      	@IRInst:mul	%t39	k	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t39	k	4
	ldr r4,.global_0_dis                              	@IRInst:add	%t40	dis	%t39
	ldr r5,[fp,#116]                                  	@IRInst:add	%t40	dis	%t39
	add r6,r4,r5                                      	@IRInst:add	%t40	dis	%t39
	str r6,[fp,#120]                                  	@IRInst:add	%t40	dis	%t39
	ldr r4,[fp,#120]                                  	@IRInst:assign	%t41	%t40
	ldr r4,[r4]                                       	@IRInst:assign	%t41	%t40
	str r4,[fp,#124]                                  	@IRInst:assign	%t41	%t40
	ldr r4,[fp,#124]                                  	@IRInst:assign	min_num	%t41
	str r4,[fp,#68]                                   	@IRInst:assign	min_num	%t41
	ldr r4,[fp,#76]                                   	@IRInst:assign	min_index	k
	str r4,[fp,#72]                                   	@IRInst:assign	min_index	k
.L13:
.L14:
	ldr r4,[fp,#76]                                   	@IRInst:add	%t42	k	1
	mov r5,#1                                         	@IRInst:add	%t42	k	1
	add r6,r4,r5                                      	@IRInst:add	%t42	k	1
	str r6,[fp,#128]                                  	@IRInst:add	%t42	k	1
	ldr r4,[fp,#128]                                  	@IRInst:assign	k	%t42
	str r4,[fp,#76]                                   	@IRInst:assign	k	%t42
	b .L9                                             
.L11:
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t43	min_index	4
	mov r5,#4                                         	@IRInst:mul	%t43	min_index	4
	mul r6,r4,r5                                      	@IRInst:mul	%t43	min_index	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t43	min_index	4
	ldr r4,.global_0_book                             	@IRInst:add	%t44	book	%t43
	ldr r5,[fp,#132]                                  	@IRInst:add	%t44	book	%t43
	add r6,r4,r5                                      	@IRInst:add	%t44	book	%t43
	str r6,[fp,#136]                                  	@IRInst:add	%t44	book	%t43
	ldr r5,[fp,#136]                                  	@IRInst:assign	%t44	1
	mov r4,#1                                         	@IRInst:assign	%t44	1
	str r4,[r5]                                       	@IRInst:assign	%t44	1
	mov r4,#1                                         	@IRInst:assign	j	1
	str r4,[fp,#140]                                  	@IRInst:assign	j	1
.L16:
	ldr r4,[fp,#140]                                  	@IRInst:ble	%t46	j	n
	ldr r5,.global_0_n                                	@IRInst:ble	%t46	j	n
	ldr r5,[r5]                                       	@IRInst:ble	%t46	j	n
	cmp r4,r5                                         	@IRInst:ble	%t46	j	n
	movle r6,#1                                       	@IRInst:ble	%t46	j	n
	movgt r6,#0                                       	@IRInst:ble	%t46	j	n
	str r6,[fp,#144]                                  	@IRInst:ble	%t46	j	n
	ble .L17                                          
	b .L18                                            
.L17:
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t47	min_index	16
	mov r5,#16                                        	@IRInst:mul	%t47	min_index	16
	mul r6,r4,r5                                      	@IRInst:mul	%t47	min_index	16
	str r6,[fp,#148]                                  	@IRInst:mul	%t47	min_index	16
	ldr r4,[fp,#148]                                  	@IRInst:add	%t48	%t47	j
	ldr r5,[fp,#140]                                  	@IRInst:add	%t48	%t47	j
	add r6,r4,r5                                      	@IRInst:add	%t48	%t47	j
	str r6,[fp,#152]                                  	@IRInst:add	%t48	%t47	j
	ldr r4,[fp,#152]                                  	@IRInst:mul	%t49	%t48	4
	mov r5,#4                                         	@IRInst:mul	%t49	%t48	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t48	4
	str r6,[fp,#156]                                  	@IRInst:mul	%t49	%t48	4
	ldr r4,.global_0_e                                	@IRInst:add	%t50	e	%t49
	ldr r5,[fp,#156]                                  	@IRInst:add	%t50	e	%t49
	add r6,r4,r5                                      	@IRInst:add	%t50	e	%t49
	str r6,[fp,#160]                                  	@IRInst:add	%t50	e	%t49
	ldr r4,[fp,#160]                                  	@IRInst:assign	%t51	%t50
	ldr r4,[r4]                                       	@IRInst:assign	%t51	%t50
	str r4,[fp,#164]                                  	@IRInst:assign	%t51	%t50
	ldr r4,[fp,#164]                                  	@IRInst:blt	%t52	%t51	INF
	ldr r5,=65535                                     	@IRInst:blt	%t52	%t51	INF
.ltorg	@IRInst:blt	%t52	%t51	INF
	cmp r4,r5                                         	@IRInst:blt	%t52	%t51	INF
	movlt r6,#1                                       	@IRInst:blt	%t52	%t51	INF
	movge r6,#0                                       	@IRInst:blt	%t52	%t51	INF
	str r6,[fp,#168]                                  	@IRInst:blt	%t52	%t51	INF
	blt .L19                                          
	b .L20                                            
.L19:
	ldr r4,[fp,#140]                                  	@IRInst:mul	%t53	j	4
	mov r5,#4                                         	@IRInst:mul	%t53	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t53	j	4
	str r6,[fp,#172]                                  	@IRInst:mul	%t53	j	4
	ldr r4,.global_0_dis                              	@IRInst:add	%t54	dis	%t53
	ldr r5,[fp,#172]                                  	@IRInst:add	%t54	dis	%t53
	add r6,r4,r5                                      	@IRInst:add	%t54	dis	%t53
	str r6,[fp,#176]                                  	@IRInst:add	%t54	dis	%t53
	ldr r4,[fp,#176]                                  	@IRInst:assign	%t55	%t54
	ldr r4,[r4]                                       	@IRInst:assign	%t55	%t54
	str r4,[fp,#180]                                  	@IRInst:assign	%t55	%t54
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t56	min_index	4
	mov r5,#4                                         	@IRInst:mul	%t56	min_index	4
	mul r6,r4,r5                                      	@IRInst:mul	%t56	min_index	4
	str r6,[fp,#184]                                  	@IRInst:mul	%t56	min_index	4
	ldr r4,.global_0_dis                              	@IRInst:add	%t57	dis	%t56
	ldr r5,[fp,#184]                                  	@IRInst:add	%t57	dis	%t56
	add r6,r4,r5                                      	@IRInst:add	%t57	dis	%t56
	str r6,[fp,#188]                                  	@IRInst:add	%t57	dis	%t56
	ldr r4,[fp,#188]                                  	@IRInst:assign	%t58	%t57
	ldr r4,[r4]                                       	@IRInst:assign	%t58	%t57
	str r4,[fp,#192]                                  	@IRInst:assign	%t58	%t57
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t59	min_index	16
	mov r5,#16                                        	@IRInst:mul	%t59	min_index	16
	mul r6,r4,r5                                      	@IRInst:mul	%t59	min_index	16
	str r6,[fp,#196]                                  	@IRInst:mul	%t59	min_index	16
	ldr r4,[fp,#196]                                  	@IRInst:add	%t60	%t59	j
	ldr r5,[fp,#140]                                  	@IRInst:add	%t60	%t59	j
	add r6,r4,r5                                      	@IRInst:add	%t60	%t59	j
	str r6,[fp,#200]                                  	@IRInst:add	%t60	%t59	j
	ldr r4,[fp,#200]                                  	@IRInst:mul	%t61	%t60	4
	mov r5,#4                                         	@IRInst:mul	%t61	%t60	4
	mul r6,r4,r5                                      	@IRInst:mul	%t61	%t60	4
	str r6,[fp,#204]                                  	@IRInst:mul	%t61	%t60	4
	ldr r4,.global_0_e                                	@IRInst:add	%t62	e	%t61
	ldr r5,[fp,#204]                                  	@IRInst:add	%t62	e	%t61
	add r6,r4,r5                                      	@IRInst:add	%t62	e	%t61
	str r6,[fp,#208]                                  	@IRInst:add	%t62	e	%t61
	ldr r4,[fp,#208]                                  	@IRInst:assign	%t63	%t62
	ldr r4,[r4]                                       	@IRInst:assign	%t63	%t62
	str r4,[fp,#212]                                  	@IRInst:assign	%t63	%t62
	ldr r4,[fp,#192]                                  	@IRInst:add	%t64	%t58	%t63
	ldr r5,[fp,#212]                                  	@IRInst:add	%t64	%t58	%t63
	add r6,r4,r5                                      	@IRInst:add	%t64	%t58	%t63
	str r6,[fp,#216]                                  	@IRInst:add	%t64	%t58	%t63
	ldr r4,[fp,#180]                                  	@IRInst:bgt	%t65	%t55	%t64
	ldr r5,[fp,#216]                                  	@IRInst:bgt	%t65	%t55	%t64
	cmp r4,r5                                         	@IRInst:bgt	%t65	%t55	%t64
	movgt r6,#1                                       	@IRInst:bgt	%t65	%t55	%t64
	movle r6,#0                                       	@IRInst:bgt	%t65	%t55	%t64
	str r6,[fp,#220]                                  	@IRInst:bgt	%t65	%t55	%t64
	bgt .L22                                          
	b .L23                                            
.L22:
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t68	min_index	4
	mov r5,#4                                         	@IRInst:mul	%t68	min_index	4
	mul r6,r4,r5                                      	@IRInst:mul	%t68	min_index	4
	str r6,[fp,#232]                                  	@IRInst:mul	%t68	min_index	4
	ldr r4,.global_0_dis                              	@IRInst:add	%t69	dis	%t68
	ldr r5,[fp,#232]                                  	@IRInst:add	%t69	dis	%t68
	add r6,r4,r5                                      	@IRInst:add	%t69	dis	%t68
	str r6,[fp,#236]                                  	@IRInst:add	%t69	dis	%t68
	ldr r4,[fp,#236]                                  	@IRInst:assign	%t70	%t69
	ldr r4,[r4]                                       	@IRInst:assign	%t70	%t69
	str r4,[fp,#240]                                  	@IRInst:assign	%t70	%t69
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t71	min_index	16
	mov r5,#16                                        	@IRInst:mul	%t71	min_index	16
	mul r6,r4,r5                                      	@IRInst:mul	%t71	min_index	16
	str r6,[fp,#244]                                  	@IRInst:mul	%t71	min_index	16
	ldr r4,[fp,#244]                                  	@IRInst:add	%t72	%t71	j
	ldr r5,[fp,#140]                                  	@IRInst:add	%t72	%t71	j
	add r6,r4,r5                                      	@IRInst:add	%t72	%t71	j
	str r6,[fp,#248]                                  	@IRInst:add	%t72	%t71	j
	ldr r4,[fp,#248]                                  	@IRInst:mul	%t73	%t72	4
	mov r5,#4                                         	@IRInst:mul	%t73	%t72	4
	mul r6,r4,r5                                      	@IRInst:mul	%t73	%t72	4
	str r6,[fp,#252]                                  	@IRInst:mul	%t73	%t72	4
	ldr r4,.global_0_e                                	@IRInst:add	%t74	e	%t73
	ldr r5,[fp,#252]                                  	@IRInst:add	%t74	e	%t73
	add r6,r4,r5                                      	@IRInst:add	%t74	e	%t73
	str r6,[fp,#256]                                  	@IRInst:add	%t74	e	%t73
	ldr r4,[fp,#256]                                  	@IRInst:assign	%t75	%t74
	ldr r4,[r4]                                       	@IRInst:assign	%t75	%t74
	str r4,[fp,#260]                                  	@IRInst:assign	%t75	%t74
	ldr r4,[fp,#240]                                  	@IRInst:add	%t76	%t70	%t75
	ldr r5,[fp,#260]                                  	@IRInst:add	%t76	%t70	%t75
	add r6,r4,r5                                      	@IRInst:add	%t76	%t70	%t75
	str r6,[fp,#264]                                  	@IRInst:add	%t76	%t70	%t75
	ldr r4,[fp,#140]                                  	@IRInst:mul	%t66	j	4
	mov r5,#4                                         	@IRInst:mul	%t66	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t66	j	4
	str r6,[fp,#224]                                  	@IRInst:mul	%t66	j	4
	ldr r4,.global_0_dis                              	@IRInst:add	%t67	dis	%t66
	ldr r5,[fp,#224]                                  	@IRInst:add	%t67	dis	%t66
	add r6,r4,r5                                      	@IRInst:add	%t67	dis	%t66
	str r6,[fp,#228]                                  	@IRInst:add	%t67	dis	%t66
	ldr r5,[fp,#228]                                  	@IRInst:assign	%t67	%t76
	ldr r4,[fp,#264]                                  	@IRInst:assign	%t67	%t76
	str r4,[r5]                                       	@IRInst:assign	%t67	%t76
.L23:
.L24:
.L20:
.L21:
	ldr r4,[fp,#140]                                  	@IRInst:add	%t77	j	1
	mov r5,#1                                         	@IRInst:add	%t77	j	1
	add r6,r4,r5                                      	@IRInst:add	%t77	j	1
	str r6,[fp,#268]                                  	@IRInst:add	%t77	j	1
	ldr r4,[fp,#268]                                  	@IRInst:assign	j	%t77
	str r4,[fp,#140]                                  	@IRInst:assign	j	%t77
	b .L16                                            
.L18:
	ldr r4,[fp]                                       	@IRInst:add	%t78	i	1
	mov r5,#1                                         	@IRInst:add	%t78	i	1
	add r6,r4,r5                                      	@IRInst:add	%t78	i	1
	str r6,[fp,#272]                                  	@IRInst:add	%t78	i	1
	ldr r4,[fp,#272]                                  	@IRInst:assign	i	%t78
	str r4,[fp]                                       	@IRInst:assign	i	%t78
	b .L6                                             
.L8:
.L2:
	add fp,fp,#276                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_INF:
        .long   INF
.global_1_e:
        .long   e
.global_1_book:
        .long   book
.global_1_dis:
        .long   dis
.global_1_n:
        .long   n
.global_1_m:
        .long   m
.global_1_v1:
        .long   v1
.global_1_v2:
        .long   v2
.global_1_w:
        .long   w
.global main
.type main, %function
main:
.L25:
	push {r10,fp,lr}                                  
	sub sp,sp,#136                                    
	add fp,sp,#0                                      
	bl getint                                         
	str r0,[fp,#8]                                    	@IRInst:assign	%t81	r0
	ldr r4,[fp,#8]                                    	@IRInst:assign	n	%t81
	ldr r9,.global_1_n                                	@IRInst:assign	n	%t81
	str r4,[r9]                                       	@IRInst:assign	n	%t81
	bl getint                                         
	str r0,[fp,#12]                                   	@IRInst:assign	%t82	r0
	ldr r4,[fp,#12]                                   	@IRInst:assign	m	%t82
	ldr r9,.global_1_m                                	@IRInst:assign	m	%t82
	str r4,[r9]                                       	@IRInst:assign	m	%t82
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
.L27:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t83	i	n
	ldr r5,.global_1_n                                	@IRInst:ble	%t83	i	n
	ldr r5,[r5]                                       	@IRInst:ble	%t83	i	n
	cmp r4,r5                                         	@IRInst:ble	%t83	i	n
	movle r6,#1                                       	@IRInst:ble	%t83	i	n
	movgt r6,#0                                       	@IRInst:ble	%t83	i	n
	str r6,[fp,#16]                                   	@IRInst:ble	%t83	i	n
	ble .L28                                          
	b .L29                                            
.L28:
	mov r4,#1                                         	@IRInst:assign	j	1
	str r4,[fp,#20]                                   	@IRInst:assign	j	1
.L30:
	ldr r4,[fp,#20]                                   	@IRInst:ble	%t85	j	n
	ldr r5,.global_1_n                                	@IRInst:ble	%t85	j	n
	ldr r5,[r5]                                       	@IRInst:ble	%t85	j	n
	cmp r4,r5                                         	@IRInst:ble	%t85	j	n
	movle r6,#1                                       	@IRInst:ble	%t85	j	n
	movgt r6,#0                                       	@IRInst:ble	%t85	j	n
	str r6,[fp,#24]                                   	@IRInst:ble	%t85	j	n
	ble .L31                                          
	b .L32                                            
.L31:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t86	i	j
	ldr r5,[fp,#20]                                   	@IRInst:beq	%t86	i	j
	cmp r4,r5                                         	@IRInst:beq	%t86	i	j
	moveq r6,#1                                       	@IRInst:beq	%t86	i	j
	movne r6,#0                                       	@IRInst:beq	%t86	i	j
	str r6,[fp,#28]                                   	@IRInst:beq	%t86	i	j
	beq .L33                                          
	b .L34                                            
.L33:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t87	i	16
	mov r5,#16                                        	@IRInst:mul	%t87	i	16
	mul r6,r4,r5                                      	@IRInst:mul	%t87	i	16
	str r6,[fp,#32]                                   	@IRInst:mul	%t87	i	16
	ldr r4,[fp,#32]                                   	@IRInst:add	%t88	%t87	j
	ldr r5,[fp,#20]                                   	@IRInst:add	%t88	%t87	j
	add r6,r4,r5                                      	@IRInst:add	%t88	%t87	j
	str r6,[fp,#36]                                   	@IRInst:add	%t88	%t87	j
	ldr r4,[fp,#36]                                   	@IRInst:mul	%t89	%t88	4
	mov r5,#4                                         	@IRInst:mul	%t89	%t88	4
	mul r6,r4,r5                                      	@IRInst:mul	%t89	%t88	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t89	%t88	4
	ldr r4,.global_1_e                                	@IRInst:add	%t90	e	%t89
	ldr r5,[fp,#40]                                   	@IRInst:add	%t90	e	%t89
	add r6,r4,r5                                      	@IRInst:add	%t90	e	%t89
	str r6,[fp,#44]                                   	@IRInst:add	%t90	e	%t89
	ldr r5,[fp,#44]                                   	@IRInst:assign	%t90	0
	mov r4,#0                                         	@IRInst:assign	%t90	0
	str r4,[r5]                                       	@IRInst:assign	%t90	0
	b .L35                                            
.L34:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t91	i	16
	mov r5,#16                                        	@IRInst:mul	%t91	i	16
	mul r6,r4,r5                                      	@IRInst:mul	%t91	i	16
	str r6,[fp,#48]                                   	@IRInst:mul	%t91	i	16
	ldr r4,[fp,#48]                                   	@IRInst:add	%t92	%t91	j
	ldr r5,[fp,#20]                                   	@IRInst:add	%t92	%t91	j
	add r6,r4,r5                                      	@IRInst:add	%t92	%t91	j
	str r6,[fp,#52]                                   	@IRInst:add	%t92	%t91	j
	ldr r4,[fp,#52]                                   	@IRInst:mul	%t93	%t92	4
	mov r5,#4                                         	@IRInst:mul	%t93	%t92	4
	mul r6,r4,r5                                      	@IRInst:mul	%t93	%t92	4
	str r6,[fp,#56]                                   	@IRInst:mul	%t93	%t92	4
	ldr r4,.global_1_e                                	@IRInst:add	%t94	e	%t93
	ldr r5,[fp,#56]                                   	@IRInst:add	%t94	e	%t93
	add r6,r4,r5                                      	@IRInst:add	%t94	e	%t93
	str r6,[fp,#60]                                   	@IRInst:add	%t94	e	%t93
	ldr r5,[fp,#60]                                   	@IRInst:assign	%t94	INF
	ldr r4,=65535                                     	@IRInst:assign	%t94	INF
.ltorg	@IRInst:assign	%t94	INF
	str r4,[r5]                                       	@IRInst:assign	%t94	INF
.L35:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t95	j	1
	mov r5,#1                                         	@IRInst:add	%t95	j	1
	add r6,r4,r5                                      	@IRInst:add	%t95	j	1
	str r6,[fp,#64]                                   	@IRInst:add	%t95	j	1
	ldr r4,[fp,#64]                                   	@IRInst:assign	j	%t95
	str r4,[fp,#20]                                   	@IRInst:assign	j	%t95
	b .L30                                            
.L32:
	ldr r4,[fp,#4]                                    	@IRInst:add	%t96	i	1
	mov r5,#1                                         	@IRInst:add	%t96	i	1
	add r6,r4,r5                                      	@IRInst:add	%t96	i	1
	str r6,[fp,#68]                                   	@IRInst:add	%t96	i	1
	ldr r4,[fp,#68]                                   	@IRInst:assign	i	%t96
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t96
	b .L27                                            
.L29:
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
.L36:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t97	i	m
	ldr r5,.global_1_m                                	@IRInst:ble	%t97	i	m
	ldr r5,[r5]                                       	@IRInst:ble	%t97	i	m
	cmp r4,r5                                         	@IRInst:ble	%t97	i	m
	movle r6,#1                                       	@IRInst:ble	%t97	i	m
	movgt r6,#0                                       	@IRInst:ble	%t97	i	m
	str r6,[fp,#72]                                   	@IRInst:ble	%t97	i	m
	ble .L37                                          
	b .L38                                            
.L37:
	bl getint                                         
	str r0,[fp,#80]                                   	@IRInst:assign	%t99	r0
	ldr r4,[fp,#80]                                   	@IRInst:assign	u	%t99
	str r4,[fp,#76]                                   	@IRInst:assign	u	%t99
	bl getint                                         
	str r0,[fp,#88]                                   	@IRInst:assign	%t101	r0
	ldr r4,[fp,#88]                                   	@IRInst:assign	v	%t101
	str r4,[fp,#84]                                   	@IRInst:assign	v	%t101
	bl getint                                         
	str r0,[fp,#108]                                  	@IRInst:assign	%t106	r0
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t102	u	16
	mov r5,#16                                        	@IRInst:mul	%t102	u	16
	mul r6,r4,r5                                      	@IRInst:mul	%t102	u	16
	str r6,[fp,#92]                                   	@IRInst:mul	%t102	u	16
	ldr r4,[fp,#92]                                   	@IRInst:add	%t103	%t102	v
	ldr r5,[fp,#84]                                   	@IRInst:add	%t103	%t102	v
	add r6,r4,r5                                      	@IRInst:add	%t103	%t102	v
	str r6,[fp,#96]                                   	@IRInst:add	%t103	%t102	v
	ldr r4,[fp,#96]                                   	@IRInst:mul	%t104	%t103	4
	mov r5,#4                                         	@IRInst:mul	%t104	%t103	4
	mul r6,r4,r5                                      	@IRInst:mul	%t104	%t103	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t104	%t103	4
	ldr r4,.global_1_e                                	@IRInst:add	%t105	e	%t104
	ldr r5,[fp,#100]                                  	@IRInst:add	%t105	e	%t104
	add r6,r4,r5                                      	@IRInst:add	%t105	e	%t104
	str r6,[fp,#104]                                  	@IRInst:add	%t105	e	%t104
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t105	%t106
	ldr r4,[fp,#108]                                  	@IRInst:assign	%t105	%t106
	str r4,[r5]                                       	@IRInst:assign	%t105	%t106
	ldr r4,[fp,#4]                                    	@IRInst:add	%t107	i	1
	mov r5,#1                                         	@IRInst:add	%t107	i	1
	add r6,r4,r5                                      	@IRInst:add	%t107	i	1
	str r6,[fp,#112]                                  	@IRInst:add	%t107	i	1
	ldr r4,[fp,#112]                                  	@IRInst:assign	i	%t107
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t107
	b .L36                                            
.L38:
	bl Dijkstra                                       
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
.L39:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t108	i	n
	ldr r5,.global_1_n                                	@IRInst:ble	%t108	i	n
	ldr r5,[r5]                                       	@IRInst:ble	%t108	i	n
	cmp r4,r5                                         	@IRInst:ble	%t108	i	n
	movle r6,#1                                       	@IRInst:ble	%t108	i	n
	movgt r6,#0                                       	@IRInst:ble	%t108	i	n
	str r6,[fp,#116]                                  	@IRInst:ble	%t108	i	n
	ble .L40                                          
	b .L41                                            
.L40:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t109	i	4
	mov r5,#4                                         	@IRInst:mul	%t109	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t109	i	4
	str r6,[fp,#120]                                  	@IRInst:mul	%t109	i	4
	ldr r4,.global_1_dis                              	@IRInst:add	%t110	dis	%t109
	ldr r5,[fp,#120]                                  	@IRInst:add	%t110	dis	%t109
	add r6,r4,r5                                      	@IRInst:add	%t110	dis	%t109
	str r6,[fp,#124]                                  	@IRInst:add	%t110	dis	%t109
	ldr r4,[fp,#124]                                  	@IRInst:assign	%t111	%t110
	ldr r4,[r4]                                       	@IRInst:assign	%t111	%t110
	str r4,[fp,#128]                                  	@IRInst:assign	%t111	%t110
	ldr r0,[fp,#128]                                  	@IRInst:assign	r0	%t111
	bl putint                                         
	mov r0,#32                                        	@IRInst:assign	r0	32
	bl putch                                          
	ldr r4,[fp,#4]                                    	@IRInst:add	%t112	i	1
	mov r5,#1                                         	@IRInst:add	%t112	i	1
	add r6,r4,r5                                      	@IRInst:add	%t112	i	1
	str r6,[fp,#132]                                  	@IRInst:add	%t112	i	1
	ldr r4,[fp,#132]                                  	@IRInst:assign	i	%t112
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t112
	b .L39                                            
.L41:
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L26                                            
.L26:
	ldr r0,[fp]                                       
	add fp,fp,#136                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
