.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
buf:
        .zero   800
.text
.global_0_buf:
        .long   buf
.global merge_sort
.type merge_sort, %function
merge_sort:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#320                                    
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	l	r0
	str r1,[fp,#4]                                    	@IRInst:assign	r	r1
	ldr r4,[fp]                                       	@IRInst:add	%t6	l	1
	mov r5,#1                                         	@IRInst:add	%t6	l	1
	add r6,r4,r5                                      	@IRInst:add	%t6	l	1
	str r6,[fp,#8]                                    	@IRInst:add	%t6	l	1
	ldr r4,[fp,#8]                                    	@IRInst:bge	%t7	%t6	r
	ldr r5,[fp,#4]                                    	@IRInst:bge	%t7	%t6	r
	cmp r4,r5                                         	@IRInst:bge	%t7	%t6	r
	bge .L3                                           
	b .L4                                             
.L3:
	b .L2                                             
.L4:
.L5:
	ldr r4,[fp]                                       	@IRInst:add	%t9	l	r
	ldr r5,[fp,#4]                                    	@IRInst:add	%t9	l	r
	add r6,r4,r5                                      	@IRInst:add	%t9	l	r
	str r6,[fp,#20]                                   	@IRInst:add	%t9	l	r
	ldr r4,[fp,#20]                                   	@IRInst:sdiv	%t10	%t9	2
	mov r5,#2                                         	@IRInst:sdiv	%t10	%t9	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t10	%t9	2
	str r6,[fp,#24]                                   	@IRInst:sdiv	%t10	%t9	2
	ldr r4,[fp,#24]                                   
	str r4,[fp,#16]                                   
	ldr r0,[fp]                                       	@IRInst:assign	r0	l
	ldr r1,[fp,#16]                                   	@IRInst:assign	r1	mid
	bl merge_sort                                     
	ldr r0,[fp,#16]                                   	@IRInst:assign	r0	mid
	ldr r1,[fp,#4]                                    	@IRInst:assign	r1	r
	bl merge_sort                                     
	ldr r4,[fp,#32]                                   
	str r4,[fp,#28]                                   
	ldr r4,[fp,#16]                                   
	str r4,[fp,#36]                                   
	ldr r4,[fp,#32]                                   
	str r4,[fp,#40]                                   
.L6:
	ldr r4,[fp,#28]                                   	@IRInst:blt	%t15	i	mid
	ldr r5,[fp,#16]                                   	@IRInst:blt	%t15	i	mid
	cmp r4,r5                                         	@IRInst:blt	%t15	i	mid
	blt .L9                                           
	b .L8                                             
.L9:
	ldr r4,[fp,#36]                                   	@IRInst:blt	%t16	j	r
	ldr r5,[fp,#4]                                    	@IRInst:blt	%t16	j	r
	cmp r4,r5                                         	@IRInst:blt	%t16	j	r
	blt .L7                                           
	b .L8                                             
.L7:
	mov r4,#0                                         	@IRInst:mul	%t17	0	100
	mov r5,#100                                       	@IRInst:mul	%t17	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t17	0	100
	str r6,[fp,#52]                                   	@IRInst:mul	%t17	0	100
	ldr r4,[fp,#52]                                   	@IRInst:add	%t18	%t17	i
	ldr r5,[fp,#28]                                   	@IRInst:add	%t18	%t17	i
	add r6,r4,r5                                      	@IRInst:add	%t18	%t17	i
	str r6,[fp,#56]                                   	@IRInst:add	%t18	%t17	i
	ldr r4,[fp,#56]                                   	@IRInst:mul	%t19	%t18	4
	mov r5,#4                                         	@IRInst:mul	%t19	%t18	4
	mul r6,r4,r5                                      	@IRInst:mul	%t19	%t18	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t19	%t18	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t20	buf	%t19
	ldr r5,[fp,#60]                                   	@IRInst:add	%t20	buf	%t19
	add r6,r4,r5                                      	@IRInst:add	%t20	buf	%t19
	str r6,[fp,#64]                                   	@IRInst:add	%t20	buf	%t19
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t21	%t20
	ldr r4,[r4]                                       	@IRInst:assign	%t21	%t20
	str r4,[fp,#68]                                   	@IRInst:assign	%t21	%t20
	mov r4,#0                                         	@IRInst:mul	%t22	0	100
	mov r5,#100                                       	@IRInst:mul	%t22	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t22	0	100
	str r6,[fp,#72]                                   	@IRInst:mul	%t22	0	100
	ldr r4,[fp,#72]                                   	@IRInst:add	%t23	%t22	j
	ldr r5,[fp,#36]                                   	@IRInst:add	%t23	%t22	j
	add r6,r4,r5                                      	@IRInst:add	%t23	%t22	j
	str r6,[fp,#76]                                   	@IRInst:add	%t23	%t22	j
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t24	%t23	4
	mov r5,#4                                         	@IRInst:mul	%t24	%t23	4
	mul r6,r4,r5                                      	@IRInst:mul	%t24	%t23	4
	str r6,[fp,#80]                                   	@IRInst:mul	%t24	%t23	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t25	buf	%t24
	ldr r5,[fp,#80]                                   	@IRInst:add	%t25	buf	%t24
	add r6,r4,r5                                      	@IRInst:add	%t25	buf	%t24
	str r6,[fp,#84]                                   	@IRInst:add	%t25	buf	%t24
	ldr r4,[fp,#84]                                   	@IRInst:assign	%t26	%t25
	ldr r4,[r4]                                       	@IRInst:assign	%t26	%t25
	str r4,[fp,#88]                                   	@IRInst:assign	%t26	%t25
	ldr r4,[fp,#68]                                   	@IRInst:blt	%t27	%t21	%t26
	ldr r5,[fp,#88]                                   	@IRInst:blt	%t27	%t21	%t26
	cmp r4,r5                                         	@IRInst:blt	%t27	%t21	%t26
	blt .L10                                          
	b .L11                                            
.L10:
	mov r4,#0                                         	@IRInst:mul	%t32	0	100
	mov r5,#100                                       	@IRInst:mul	%t32	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t32	0	100
	str r6,[fp,#112]                                  	@IRInst:mul	%t32	0	100
	ldr r4,[fp,#112]                                  	@IRInst:add	%t33	%t32	i
	ldr r5,[fp,#28]                                   	@IRInst:add	%t33	%t32	i
	add r6,r4,r5                                      	@IRInst:add	%t33	%t32	i
	str r6,[fp,#116]                                  	@IRInst:add	%t33	%t32	i
	ldr r4,[fp,#116]                                  	@IRInst:mul	%t34	%t33	4
	mov r5,#4                                         	@IRInst:mul	%t34	%t33	4
	mul r6,r4,r5                                      	@IRInst:mul	%t34	%t33	4
	str r6,[fp,#120]                                  	@IRInst:mul	%t34	%t33	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t35	buf	%t34
	ldr r5,[fp,#120]                                  	@IRInst:add	%t35	buf	%t34
	add r6,r4,r5                                      	@IRInst:add	%t35	buf	%t34
	str r6,[fp,#124]                                  	@IRInst:add	%t35	buf	%t34
	ldr r4,[fp,#124]                                  	@IRInst:assign	%t36	%t35
	ldr r4,[r4]                                       	@IRInst:assign	%t36	%t35
	str r4,[fp,#128]                                  	@IRInst:assign	%t36	%t35
	mov r4,#1                                         	@IRInst:mul	%t28	1	100
	mov r5,#100                                       	@IRInst:mul	%t28	1	100
	mul r6,r4,r5                                      	@IRInst:mul	%t28	1	100
	str r6,[fp,#96]                                   	@IRInst:mul	%t28	1	100
	ldr r4,[fp,#96]                                   	@IRInst:add	%t29	%t28	k
	ldr r5,[fp,#40]                                   	@IRInst:add	%t29	%t28	k
	add r6,r4,r5                                      	@IRInst:add	%t29	%t28	k
	str r6,[fp,#100]                                  	@IRInst:add	%t29	%t28	k
	ldr r4,[fp,#100]                                  	@IRInst:mul	%t30	%t29	4
	mov r5,#4                                         	@IRInst:mul	%t30	%t29	4
	mul r6,r4,r5                                      	@IRInst:mul	%t30	%t29	4
	str r6,[fp,#104]                                  	@IRInst:mul	%t30	%t29	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t31	buf	%t30
	ldr r5,[fp,#104]                                  	@IRInst:add	%t31	buf	%t30
	add r6,r4,r5                                      	@IRInst:add	%t31	buf	%t30
	str r6,[fp,#108]                                  	@IRInst:add	%t31	buf	%t30
	ldr r5,[fp,#108]                                  	@IRInst:assign	%t31	%t36
	ldr r4,[fp,#128]                                  	@IRInst:assign	%t31	%t36
	str r4,[r5]                                       	@IRInst:assign	%t31	%t36
	ldr r4,[fp,#28]                                   	@IRInst:add	%t37	i	1
	mov r5,#1                                         	@IRInst:add	%t37	i	1
	add r6,r4,r5                                      	@IRInst:add	%t37	i	1
	str r6,[fp,#132]                                  	@IRInst:add	%t37	i	1
	ldr r4,[fp,#132]                                  	@IRInst:assign	i	%t37
	str r4,[fp,#28]                                   	@IRInst:assign	i	%t37
	b .L12                                            
.L11:
	mov r4,#0                                         	@IRInst:mul	%t42	0	100
	mov r5,#100                                       	@IRInst:mul	%t42	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t42	0	100
	str r6,[fp,#152]                                  	@IRInst:mul	%t42	0	100
	ldr r4,[fp,#152]                                  	@IRInst:add	%t43	%t42	j
	ldr r5,[fp,#36]                                   	@IRInst:add	%t43	%t42	j
	add r6,r4,r5                                      	@IRInst:add	%t43	%t42	j
	str r6,[fp,#156]                                  	@IRInst:add	%t43	%t42	j
	ldr r4,[fp,#156]                                  	@IRInst:mul	%t44	%t43	4
	mov r5,#4                                         	@IRInst:mul	%t44	%t43	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	%t43	4
	str r6,[fp,#160]                                  	@IRInst:mul	%t44	%t43	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t45	buf	%t44
	ldr r5,[fp,#160]                                  	@IRInst:add	%t45	buf	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	buf	%t44
	str r6,[fp,#164]                                  	@IRInst:add	%t45	buf	%t44
	ldr r4,[fp,#164]                                  	@IRInst:assign	%t46	%t45
	ldr r4,[r4]                                       	@IRInst:assign	%t46	%t45
	str r4,[fp,#168]                                  	@IRInst:assign	%t46	%t45
	mov r4,#1                                         	@IRInst:mul	%t38	1	100
	mov r5,#100                                       	@IRInst:mul	%t38	1	100
	mul r6,r4,r5                                      	@IRInst:mul	%t38	1	100
	str r6,[fp,#136]                                  	@IRInst:mul	%t38	1	100
	ldr r4,[fp,#136]                                  	@IRInst:add	%t39	%t38	k
	ldr r5,[fp,#40]                                   	@IRInst:add	%t39	%t38	k
	add r6,r4,r5                                      	@IRInst:add	%t39	%t38	k
	str r6,[fp,#140]                                  	@IRInst:add	%t39	%t38	k
	ldr r4,[fp,#140]                                  	@IRInst:mul	%t40	%t39	4
	mov r5,#4                                         	@IRInst:mul	%t40	%t39	4
	mul r6,r4,r5                                      	@IRInst:mul	%t40	%t39	4
	str r6,[fp,#144]                                  	@IRInst:mul	%t40	%t39	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t41	buf	%t40
	ldr r5,[fp,#144]                                  	@IRInst:add	%t41	buf	%t40
	add r6,r4,r5                                      	@IRInst:add	%t41	buf	%t40
	str r6,[fp,#148]                                  	@IRInst:add	%t41	buf	%t40
	ldr r5,[fp,#148]                                  	@IRInst:assign	%t41	%t46
	ldr r4,[fp,#168]                                  	@IRInst:assign	%t41	%t46
	str r4,[r5]                                       	@IRInst:assign	%t41	%t46
	ldr r4,[fp,#36]                                   	@IRInst:add	%t47	j	1
	mov r5,#1                                         	@IRInst:add	%t47	j	1
	add r6,r4,r5                                      	@IRInst:add	%t47	j	1
	str r6,[fp,#172]                                  	@IRInst:add	%t47	j	1
	ldr r4,[fp,#172]                                  	@IRInst:assign	j	%t47
	str r4,[fp,#36]                                   	@IRInst:assign	j	%t47
.L12:
	ldr r4,[fp,#40]                                   	@IRInst:add	%t48	k	1
	mov r5,#1                                         	@IRInst:add	%t48	k	1
	add r6,r4,r5                                      	@IRInst:add	%t48	k	1
	str r6,[fp,#176]                                  	@IRInst:add	%t48	k	1
	ldr r4,[fp,#176]                                  	@IRInst:assign	k	%t48
	str r4,[fp,#40]                                   	@IRInst:assign	k	%t48
	b .L6                                             
.L8:
.L13:
	ldr r4,[fp,#28]                                   	@IRInst:blt	%t49	i	mid
	ldr r5,[fp,#16]                                   	@IRInst:blt	%t49	i	mid
	cmp r4,r5                                         	@IRInst:blt	%t49	i	mid
	blt .L14                                          
	b .L15                                            
.L14:
	mov r4,#0                                         	@IRInst:mul	%t54	0	100
	mov r5,#100                                       	@IRInst:mul	%t54	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t54	0	100
	str r6,[fp,#200]                                  	@IRInst:mul	%t54	0	100
	ldr r4,[fp,#200]                                  	@IRInst:add	%t55	%t54	i
	ldr r5,[fp,#28]                                   	@IRInst:add	%t55	%t54	i
	add r6,r4,r5                                      	@IRInst:add	%t55	%t54	i
	str r6,[fp,#204]                                  	@IRInst:add	%t55	%t54	i
	ldr r4,[fp,#204]                                  	@IRInst:mul	%t56	%t55	4
	mov r5,#4                                         	@IRInst:mul	%t56	%t55	4
	mul r6,r4,r5                                      	@IRInst:mul	%t56	%t55	4
	str r6,[fp,#208]                                  	@IRInst:mul	%t56	%t55	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t57	buf	%t56
	ldr r5,[fp,#208]                                  	@IRInst:add	%t57	buf	%t56
	add r6,r4,r5                                      	@IRInst:add	%t57	buf	%t56
	str r6,[fp,#212]                                  	@IRInst:add	%t57	buf	%t56
	ldr r4,[fp,#212]                                  	@IRInst:assign	%t58	%t57
	ldr r4,[r4]                                       	@IRInst:assign	%t58	%t57
	str r4,[fp,#216]                                  	@IRInst:assign	%t58	%t57
	mov r4,#1                                         	@IRInst:mul	%t50	1	100
	mov r5,#100                                       	@IRInst:mul	%t50	1	100
	mul r6,r4,r5                                      	@IRInst:mul	%t50	1	100
	str r6,[fp,#184]                                  	@IRInst:mul	%t50	1	100
	ldr r4,[fp,#184]                                  	@IRInst:add	%t51	%t50	k
	ldr r5,[fp,#40]                                   	@IRInst:add	%t51	%t50	k
	add r6,r4,r5                                      	@IRInst:add	%t51	%t50	k
	str r6,[fp,#188]                                  	@IRInst:add	%t51	%t50	k
	ldr r4,[fp,#188]                                  	@IRInst:mul	%t52	%t51	4
	mov r5,#4                                         	@IRInst:mul	%t52	%t51	4
	mul r6,r4,r5                                      	@IRInst:mul	%t52	%t51	4
	str r6,[fp,#192]                                  	@IRInst:mul	%t52	%t51	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t53	buf	%t52
	ldr r5,[fp,#192]                                  	@IRInst:add	%t53	buf	%t52
	add r6,r4,r5                                      	@IRInst:add	%t53	buf	%t52
	str r6,[fp,#196]                                  	@IRInst:add	%t53	buf	%t52
	ldr r5,[fp,#196]                                  	@IRInst:assign	%t53	%t58
	ldr r4,[fp,#216]                                  	@IRInst:assign	%t53	%t58
	str r4,[r5]                                       	@IRInst:assign	%t53	%t58
	ldr r4,[fp,#28]                                   	@IRInst:add	%t59	i	1
	mov r5,#1                                         	@IRInst:add	%t59	i	1
	add r6,r4,r5                                      	@IRInst:add	%t59	i	1
	str r6,[fp,#220]                                  	@IRInst:add	%t59	i	1
	ldr r4,[fp,#220]                                  	@IRInst:assign	i	%t59
	str r4,[fp,#28]                                   	@IRInst:assign	i	%t59
	ldr r4,[fp,#40]                                   	@IRInst:add	%t60	k	1
	mov r5,#1                                         	@IRInst:add	%t60	k	1
	add r6,r4,r5                                      	@IRInst:add	%t60	k	1
	str r6,[fp,#224]                                  	@IRInst:add	%t60	k	1
	ldr r4,[fp,#224]                                  	@IRInst:assign	k	%t60
	str r4,[fp,#40]                                   	@IRInst:assign	k	%t60
	b .L13                                            
.L15:
.L16:
	ldr r4,[fp,#36]                                   	@IRInst:blt	%t61	j	r
	ldr r5,[fp,#4]                                    	@IRInst:blt	%t61	j	r
	cmp r4,r5                                         	@IRInst:blt	%t61	j	r
	blt .L17                                          
	b .L18                                            
.L17:
	mov r4,#0                                         	@IRInst:mul	%t66	0	100
	mov r5,#100                                       	@IRInst:mul	%t66	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t66	0	100
	str r6,[fp,#248]                                  	@IRInst:mul	%t66	0	100
	ldr r4,[fp,#248]                                  	@IRInst:add	%t67	%t66	j
	ldr r5,[fp,#36]                                   	@IRInst:add	%t67	%t66	j
	add r6,r4,r5                                      	@IRInst:add	%t67	%t66	j
	str r6,[fp,#252]                                  	@IRInst:add	%t67	%t66	j
	ldr r4,[fp,#252]                                  	@IRInst:mul	%t68	%t67	4
	mov r5,#4                                         	@IRInst:mul	%t68	%t67	4
	mul r6,r4,r5                                      	@IRInst:mul	%t68	%t67	4
	str r6,[fp,#256]                                  	@IRInst:mul	%t68	%t67	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t69	buf	%t68
	ldr r5,[fp,#256]                                  	@IRInst:add	%t69	buf	%t68
	add r6,r4,r5                                      	@IRInst:add	%t69	buf	%t68
	str r6,[fp,#260]                                  	@IRInst:add	%t69	buf	%t68
	ldr r4,[fp,#260]                                  	@IRInst:assign	%t70	%t69
	ldr r4,[r4]                                       	@IRInst:assign	%t70	%t69
	str r4,[fp,#264]                                  	@IRInst:assign	%t70	%t69
	mov r4,#1                                         	@IRInst:mul	%t62	1	100
	mov r5,#100                                       	@IRInst:mul	%t62	1	100
	mul r6,r4,r5                                      	@IRInst:mul	%t62	1	100
	str r6,[fp,#232]                                  	@IRInst:mul	%t62	1	100
	ldr r4,[fp,#232]                                  	@IRInst:add	%t63	%t62	k
	ldr r5,[fp,#40]                                   	@IRInst:add	%t63	%t62	k
	add r6,r4,r5                                      	@IRInst:add	%t63	%t62	k
	str r6,[fp,#236]                                  	@IRInst:add	%t63	%t62	k
	ldr r4,[fp,#236]                                  	@IRInst:mul	%t64	%t63	4
	mov r5,#4                                         	@IRInst:mul	%t64	%t63	4
	mul r6,r4,r5                                      	@IRInst:mul	%t64	%t63	4
	str r6,[fp,#240]                                  	@IRInst:mul	%t64	%t63	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t65	buf	%t64
	ldr r5,[fp,#240]                                  	@IRInst:add	%t65	buf	%t64
	add r6,r4,r5                                      	@IRInst:add	%t65	buf	%t64
	str r6,[fp,#244]                                  	@IRInst:add	%t65	buf	%t64
	ldr r5,[fp,#244]                                  	@IRInst:assign	%t65	%t70
	ldr r4,[fp,#264]                                  	@IRInst:assign	%t65	%t70
	str r4,[r5]                                       	@IRInst:assign	%t65	%t70
	ldr r4,[fp,#36]                                   	@IRInst:add	%t71	j	1
	mov r5,#1                                         	@IRInst:add	%t71	j	1
	add r6,r4,r5                                      	@IRInst:add	%t71	j	1
	str r6,[fp,#268]                                  	@IRInst:add	%t71	j	1
	ldr r4,[fp,#268]                                  	@IRInst:assign	j	%t71
	str r4,[fp,#36]                                   	@IRInst:assign	j	%t71
	ldr r4,[fp,#40]                                   	@IRInst:add	%t72	k	1
	mov r5,#1                                         	@IRInst:add	%t72	k	1
	add r6,r4,r5                                      	@IRInst:add	%t72	k	1
	str r6,[fp,#272]                                  	@IRInst:add	%t72	k	1
	ldr r4,[fp,#272]                                  	@IRInst:assign	k	%t72
	str r4,[fp,#40]                                   	@IRInst:assign	k	%t72
	b .L16                                            
.L18:
.L19:
	ldr r4,[fp,#32]                                   	@IRInst:blt	%t73	l	r
	ldr r5,[fp,#4]                                    	@IRInst:blt	%t73	l	r
	cmp r4,r5                                         	@IRInst:blt	%t73	l	r
	blt .L20                                          
	b .L21                                            
.L20:
	mov r4,#1                                         	@IRInst:mul	%t78	1	100
	mov r5,#100                                       	@IRInst:mul	%t78	1	100
	mul r6,r4,r5                                      	@IRInst:mul	%t78	1	100
	str r6,[fp,#296]                                  	@IRInst:mul	%t78	1	100
	ldr r4,[fp,#296]                                  	@IRInst:add	%t79	%t78	l
	ldr r5,[fp,#32]                                   	@IRInst:add	%t79	%t78	l
	add r6,r4,r5                                      	@IRInst:add	%t79	%t78	l
	str r6,[fp,#300]                                  	@IRInst:add	%t79	%t78	l
	ldr r4,[fp,#300]                                  	@IRInst:mul	%t80	%t79	4
	mov r5,#4                                         	@IRInst:mul	%t80	%t79	4
	mul r6,r4,r5                                      	@IRInst:mul	%t80	%t79	4
	str r6,[fp,#304]                                  	@IRInst:mul	%t80	%t79	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t81	buf	%t80
	ldr r5,[fp,#304]                                  	@IRInst:add	%t81	buf	%t80
	add r6,r4,r5                                      	@IRInst:add	%t81	buf	%t80
	str r6,[fp,#308]                                  	@IRInst:add	%t81	buf	%t80
	ldr r4,[fp,#308]                                  	@IRInst:assign	%t82	%t81
	ldr r4,[r4]                                       	@IRInst:assign	%t82	%t81
	str r4,[fp,#312]                                  	@IRInst:assign	%t82	%t81
	mov r4,#0                                         	@IRInst:mul	%t74	0	100
	mov r5,#100                                       	@IRInst:mul	%t74	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t74	0	100
	str r6,[fp,#280]                                  	@IRInst:mul	%t74	0	100
	ldr r4,[fp,#280]                                  	@IRInst:add	%t75	%t74	l
	ldr r5,[fp,#32]                                   	@IRInst:add	%t75	%t74	l
	add r6,r4,r5                                      	@IRInst:add	%t75	%t74	l
	str r6,[fp,#284]                                  	@IRInst:add	%t75	%t74	l
	ldr r4,[fp,#284]                                  	@IRInst:mul	%t76	%t75	4
	mov r5,#4                                         	@IRInst:mul	%t76	%t75	4
	mul r6,r4,r5                                      	@IRInst:mul	%t76	%t75	4
	str r6,[fp,#288]                                  	@IRInst:mul	%t76	%t75	4
	ldr r4,.global_0_buf                              	@IRInst:add	%t77	buf	%t76
	ldr r5,[fp,#288]                                  	@IRInst:add	%t77	buf	%t76
	add r6,r4,r5                                      	@IRInst:add	%t77	buf	%t76
	str r6,[fp,#292]                                  	@IRInst:add	%t77	buf	%t76
	ldr r5,[fp,#292]                                  	@IRInst:assign	%t77	%t82
	ldr r4,[fp,#312]                                  	@IRInst:assign	%t77	%t82
	str r4,[r5]                                       	@IRInst:assign	%t77	%t82
	ldr r4,[fp,#32]                                   	@IRInst:add	%t83	l	1
	mov r5,#1                                         	@IRInst:add	%t83	l	1
	add r6,r4,r5                                      	@IRInst:add	%t83	l	1
	str r6,[fp,#316]                                  	@IRInst:add	%t83	l	1
	ldr r4,[fp,#316]                                  	@IRInst:assign	l	%t83
	str r4,[fp,#32]                                   	@IRInst:assign	l	%t83
	b .L19                                            
.L21:
.L2:
	add fp,fp,#320                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_buf:
        .long   buf
.global main
.type main, %function
main:
.L22:
	push {r10,fp,lr}                                  
	sub sp,sp,#828                                    
	add fp,sp,#0                                      
	mov r4,#0                                         	@IRInst:mul	%t86	0	100
	mov r5,#100                                       	@IRInst:mul	%t86	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t86	0	100
	str r6,[fp,#8]                                    	@IRInst:mul	%t86	0	100
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t87	%t86	4
	mov r5,#4                                         	@IRInst:mul	%t87	%t86	4
	mul r6,r4,r5                                      	@IRInst:mul	%t87	%t86	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t87	%t86	4
	ldr r4,.global_1_buf                              	@IRInst:add	%t88	buf	%t87
	ldr r5,[fp,#12]                                   	@IRInst:add	%t88	buf	%t87
	add r6,r4,r5                                      	@IRInst:add	%t88	buf	%t87
	str r6,[fp,#16]                                   	@IRInst:add	%t88	buf	%t87
	ldr r0,[fp,#16]                                   	@IRInst:assign	r0	%t88
	bl getarray                                       
	str r0,[fp,#416]                                  	@IRInst:assign	%t89	r0
	ldr r4,[fp,#416]                                  
	str r4,[fp,#4]                                    
	mov r0,#0                                         	@IRInst:assign	r0	0
	ldr r1,[fp,#4]                                    	@IRInst:assign	r1	n
	bl merge_sort                                     
	mov r4,#0                                         	@IRInst:mul	%t90	0	100
	mov r5,#100                                       	@IRInst:mul	%t90	0	100
	mul r6,r4,r5                                      	@IRInst:mul	%t90	0	100
	str r6,[fp,#420]                                  	@IRInst:mul	%t90	0	100
	ldr r4,[fp,#420]                                  	@IRInst:mul	%t91	%t90	4
	mov r5,#4                                         	@IRInst:mul	%t91	%t90	4
	mul r6,r4,r5                                      	@IRInst:mul	%t91	%t90	4
	str r6,[fp,#424]                                  	@IRInst:mul	%t91	%t90	4
	ldr r4,.global_1_buf                              	@IRInst:add	%t92	buf	%t91
	ldr r5,[fp,#424]                                  	@IRInst:add	%t92	buf	%t91
	add r6,r4,r5                                      	@IRInst:add	%t92	buf	%t91
	str r6,[fp,#428]                                  	@IRInst:add	%t92	buf	%t91
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	n
	ldr r1,[fp,#428]                                  	@IRInst:assign	r1	%t92
	bl putarray                                       
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L23                                            
.L23:
	ldr r0,[fp]                                       
	add fp,fp,#828                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
