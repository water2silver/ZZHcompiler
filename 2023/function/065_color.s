.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
dp:
        .zero   0
list:
        .zero   800
cns:
        .zero   80
.text
.global_0_dp:
        .long   dp
.global_0_list:
        .long   list
.global_0_cns:
        .long   cns
.global equal
.type equal, %function
equal:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	a	r0
	str r1,[fp,#8]                                    	@IRInst:assign	b	r1
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t8	a	b
	ldr r5,[fp,#8]                                    	@IRInst:beq	%t8	a	b
	cmp r4,r5                                         	@IRInst:beq	%t8	a	b
	beq .L3                                           
	b .L4                                             
.L3:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L2                                             
.L4:
.L5:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_dp:
        .long   dp
.global_1_list:
        .long   list
.global_1_cns:
        .long   cns
.global dfs
.type dfs, %function
dfs:
.L6:
	push {r10,fp,lr}                                  
	sub sp,sp,#512                                    
	add fp,sp,#8                                      
	str r0,[fp,#4]                                    	@IRInst:assign	a	r0
	str r1,[fp,#8]                                    	@IRInst:assign	b	r1
	str r2,[fp,#12]                                   	@IRInst:assign	c	r2
	str r3,[fp,#16]                                   	@IRInst:assign	d	r3
	ldr r4,[fp,#516]                                  	@IRInst:assign	e	%m209
	str r4,[fp,#20]                                   	@IRInst:assign	e	%m209
	ldr r4,[fp,#520]                                  	@IRInst:assign	last	%m210
	str r4,[fp,#24]                                   	@IRInst:assign	last	%m210
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t22	a	0
	mov r5,#0                                         	@IRInst:mul	%t22	a	0
	mul r6,r4,r5                                      	@IRInst:mul	%t22	a	0
	str r6,[fp,#28]                                   	@IRInst:mul	%t22	a	0
	ldr r4,[fp,#28]                                   	@IRInst:add	%t23	%t22	b
	ldr r5,[fp,#8]                                    	@IRInst:add	%t23	%t22	b
	add r6,r4,r5                                      	@IRInst:add	%t23	%t22	b
	str r6,[fp,#32]                                   	@IRInst:add	%t23	%t22	b
	ldr r4,[fp,#32]                                   	@IRInst:mul	%t24	%t23	0
	mov r5,#0                                         	@IRInst:mul	%t24	%t23	0
	mul r6,r4,r5                                      	@IRInst:mul	%t24	%t23	0
	str r6,[fp,#36]                                   	@IRInst:mul	%t24	%t23	0
	ldr r4,[fp,#36]                                   	@IRInst:add	%t25	%t24	c
	ldr r5,[fp,#12]                                   	@IRInst:add	%t25	%t24	c
	add r6,r4,r5                                      	@IRInst:add	%t25	%t24	c
	str r6,[fp,#40]                                   	@IRInst:add	%t25	%t24	c
	ldr r4,[fp,#40]                                   	@IRInst:mul	%t26	%t25	0
	mov r5,#0                                         	@IRInst:mul	%t26	%t25	0
	mul r6,r4,r5                                      	@IRInst:mul	%t26	%t25	0
	str r6,[fp,#44]                                   	@IRInst:mul	%t26	%t25	0
	ldr r4,[fp,#44]                                   	@IRInst:add	%t27	%t26	d
	ldr r5,[fp,#16]                                   	@IRInst:add	%t27	%t26	d
	add r6,r4,r5                                      	@IRInst:add	%t27	%t26	d
	str r6,[fp,#48]                                   	@IRInst:add	%t27	%t26	d
	ldr r4,[fp,#48]                                   	@IRInst:mul	%t28	%t27	0
	mov r5,#0                                         	@IRInst:mul	%t28	%t27	0
	mul r6,r4,r5                                      	@IRInst:mul	%t28	%t27	0
	str r6,[fp,#52]                                   	@IRInst:mul	%t28	%t27	0
	ldr r4,[fp,#52]                                   	@IRInst:add	%t29	%t28	e
	ldr r5,[fp,#20]                                   	@IRInst:add	%t29	%t28	e
	add r6,r4,r5                                      	@IRInst:add	%t29	%t28	e
	str r6,[fp,#56]                                   	@IRInst:add	%t29	%t28	e
	ldr r4,[fp,#56]                                   	@IRInst:mul	%t30	%t29	7
	mov r5,#7                                         	@IRInst:mul	%t30	%t29	7
	mul r6,r4,r5                                      	@IRInst:mul	%t30	%t29	7
	str r6,[fp,#60]                                   	@IRInst:mul	%t30	%t29	7
	ldr r4,[fp,#60]                                   	@IRInst:add	%t31	%t30	last
	ldr r5,[fp,#24]                                   	@IRInst:add	%t31	%t30	last
	add r6,r4,r5                                      	@IRInst:add	%t31	%t30	last
	str r6,[fp,#64]                                   	@IRInst:add	%t31	%t30	last
	ldr r4,[fp,#64]                                   	@IRInst:mul	%t32	%t31	4
	mov r5,#4                                         	@IRInst:mul	%t32	%t31	4
	mul r6,r4,r5                                      	@IRInst:mul	%t32	%t31	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t32	%t31	4
	ldr r4,.global_1_dp                               	@IRInst:add	%t33	dp	%t32
	ldr r5,[fp,#68]                                   	@IRInst:add	%t33	dp	%t32
	add r6,r4,r5                                      	@IRInst:add	%t33	dp	%t32
	str r6,[fp,#72]                                   	@IRInst:add	%t33	dp	%t32
	ldr r4,[fp,#72]                                   	@IRInst:assign	%t34	%t33
	ldr r4,[r4]                                       	@IRInst:assign	%t34	%t33
	str r4,[fp,#76]                                   	@IRInst:assign	%t34	%t33
	ldr r4,[fp,#76]                                   	@IRInst:beq	%t35	%t34	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t35	%t34	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t35	%t34	18446744073709551615
	beq .L9                                           
	b .L8                                             
.L8:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t36	a	0
	mov r5,#0                                         	@IRInst:mul	%t36	a	0
	mul r6,r4,r5                                      	@IRInst:mul	%t36	a	0
	str r6,[fp,#84]                                   	@IRInst:mul	%t36	a	0
	ldr r4,[fp,#84]                                   	@IRInst:add	%t37	%t36	b
	ldr r5,[fp,#8]                                    	@IRInst:add	%t37	%t36	b
	add r6,r4,r5                                      	@IRInst:add	%t37	%t36	b
	str r6,[fp,#88]                                   	@IRInst:add	%t37	%t36	b
	ldr r4,[fp,#88]                                   	@IRInst:mul	%t38	%t37	0
	mov r5,#0                                         	@IRInst:mul	%t38	%t37	0
	mul r6,r4,r5                                      	@IRInst:mul	%t38	%t37	0
	str r6,[fp,#92]                                   	@IRInst:mul	%t38	%t37	0
	ldr r4,[fp,#92]                                   	@IRInst:add	%t39	%t38	c
	ldr r5,[fp,#12]                                   	@IRInst:add	%t39	%t38	c
	add r6,r4,r5                                      	@IRInst:add	%t39	%t38	c
	str r6,[fp,#96]                                   	@IRInst:add	%t39	%t38	c
	ldr r4,[fp,#96]                                   	@IRInst:mul	%t40	%t39	0
	mov r5,#0                                         	@IRInst:mul	%t40	%t39	0
	mul r6,r4,r5                                      	@IRInst:mul	%t40	%t39	0
	str r6,[fp,#100]                                  	@IRInst:mul	%t40	%t39	0
	ldr r4,[fp,#100]                                  	@IRInst:add	%t41	%t40	d
	ldr r5,[fp,#16]                                   	@IRInst:add	%t41	%t40	d
	add r6,r4,r5                                      	@IRInst:add	%t41	%t40	d
	str r6,[fp,#104]                                  	@IRInst:add	%t41	%t40	d
	ldr r4,[fp,#104]                                  	@IRInst:mul	%t42	%t41	0
	mov r5,#0                                         	@IRInst:mul	%t42	%t41	0
	mul r6,r4,r5                                      	@IRInst:mul	%t42	%t41	0
	str r6,[fp,#108]                                  	@IRInst:mul	%t42	%t41	0
	ldr r4,[fp,#108]                                  	@IRInst:add	%t43	%t42	e
	ldr r5,[fp,#20]                                   	@IRInst:add	%t43	%t42	e
	add r6,r4,r5                                      	@IRInst:add	%t43	%t42	e
	str r6,[fp,#112]                                  	@IRInst:add	%t43	%t42	e
	ldr r4,[fp,#112]                                  	@IRInst:mul	%t44	%t43	7
	mov r5,#7                                         	@IRInst:mul	%t44	%t43	7
	mul r6,r4,r5                                      	@IRInst:mul	%t44	%t43	7
	str r6,[fp,#116]                                  	@IRInst:mul	%t44	%t43	7
	ldr r4,[fp,#116]                                  	@IRInst:add	%t45	%t44	last
	ldr r5,[fp,#24]                                   	@IRInst:add	%t45	%t44	last
	add r6,r4,r5                                      	@IRInst:add	%t45	%t44	last
	str r6,[fp,#120]                                  	@IRInst:add	%t45	%t44	last
	ldr r4,[fp,#120]                                  	@IRInst:mul	%t46	%t45	4
	mov r5,#4                                         	@IRInst:mul	%t46	%t45	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	%t45	4
	str r6,[fp,#124]                                  	@IRInst:mul	%t46	%t45	4
	ldr r4,.global_1_dp                               	@IRInst:add	%t47	dp	%t46
	ldr r5,[fp,#124]                                  	@IRInst:add	%t47	dp	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	dp	%t46
	str r6,[fp,#128]                                  	@IRInst:add	%t47	dp	%t46
	ldr r4,[fp,#128]                                  	@IRInst:assign	%t48	%t47
	ldr r4,[r4]                                       	@IRInst:assign	%t48	%t47
	str r4,[fp,#132]                                  	@IRInst:assign	%t48	%t47
	ldr r4,[fp,#132]                                  	@IRInst:assign		%t48
	str r4,[fp]                                       	@IRInst:assign		%t48
	b .L7                                             
.L9:
.L10:
	ldr r4,[fp,#4]                                    	@IRInst:add	%t49	a	b
	ldr r5,[fp,#8]                                    	@IRInst:add	%t49	a	b
	add r6,r4,r5                                      	@IRInst:add	%t49	a	b
	str r6,[fp,#136]                                  	@IRInst:add	%t49	a	b
	ldr r4,[fp,#136]                                  	@IRInst:add	%t50	%t49	c
	ldr r5,[fp,#12]                                   	@IRInst:add	%t50	%t49	c
	add r6,r4,r5                                      	@IRInst:add	%t50	%t49	c
	str r6,[fp,#140]                                  	@IRInst:add	%t50	%t49	c
	ldr r4,[fp,#140]                                  	@IRInst:add	%t51	%t50	d
	ldr r5,[fp,#16]                                   	@IRInst:add	%t51	%t50	d
	add r6,r4,r5                                      	@IRInst:add	%t51	%t50	d
	str r6,[fp,#144]                                  	@IRInst:add	%t51	%t50	d
	ldr r4,[fp,#144]                                  	@IRInst:add	%t52	%t51	e
	ldr r5,[fp,#20]                                   	@IRInst:add	%t52	%t51	e
	add r6,r4,r5                                      	@IRInst:add	%t52	%t51	e
	str r6,[fp,#148]                                  	@IRInst:add	%t52	%t51	e
	ldr r4,[fp,#148]                                  	@IRInst:beq	%t53	%t52	0
	mov r5,#0                                         	@IRInst:beq	%t53	%t52	0
	cmp r4,r5                                         	@IRInst:beq	%t53	%t52	0
	beq .L11                                          
	b .L12                                            
.L11:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L7                                             
.L12:
.L13:
	mov r4,#0                                         
	str r4,[fp,#156]                                  
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t55	a
	str r4,[fp,#160]                                  	@IRInst:assign	%t55	a
	ldr r4,[fp,#160]                                  	@IRInst:not_zero	%t56	%t55	0
	mov r5,#0                                         	@IRInst:not_zero	%t56	%t55	0
	cmp r4,r5                                         	@IRInst:not_zero	%t56	%t55	0
	moveq r6,#0                                       	@IRInst:not_zero	%t56	%t55	0
	str r6,[fp,#164]                                  	@IRInst:not_zero	%t56	%t55	0
	beq .L15                                          
	b .L14                                            
.L14:
	ldr r0,[fp,#24]                                   	@IRInst:assign	r0	last
	mov r1,#2                                         	@IRInst:assign	r1	2
	bl equal                                          
	str r0,[fp,#168]                                  	@IRInst:assign	%t57	r0
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t58	a	%t57
	ldr r5,[fp,#168]                                  	@IRInst:sub	%t58	a	%t57
	sub r6,r4,r5                                      	@IRInst:sub	%t58	a	%t57
	str r6,[fp,#172]                                  	@IRInst:sub	%t58	a	%t57
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t59	a	1
	mov r5,#1                                         	@IRInst:sub	%t59	a	1
	sub r6,r4,r5                                      	@IRInst:sub	%t59	a	1
	str r6,[fp,#176]                                  	@IRInst:sub	%t59	a	1
	ldr r4,[fp,#20]                                   	@IRInst:assign	%m211	e
	str r4,[sp]                                       	@IRInst:assign	%m211	e
	mov r4,#1                                         	@IRInst:assign	%m212	1
	str r4,[sp,#4]                                    	@IRInst:assign	%m212	1
	ldr r0,[fp,#176]                                  	@IRInst:assign	r0	%t59
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	b
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	c
	ldr r3,[fp,#16]                                   	@IRInst:assign	r3	d
	bl dfs                                            
	str r0,[fp,#180]                                  	@IRInst:assign	%t60	r0
	ldr r4,[fp,#172]                                  	@IRInst:mul	%t61	%t58	%t60
	ldr r5,[fp,#180]                                  	@IRInst:mul	%t61	%t58	%t60
	mul r6,r4,r5                                      	@IRInst:mul	%t61	%t58	%t60
	str r6,[fp,#184]                                  	@IRInst:mul	%t61	%t58	%t60
	ldr r4,[fp,#156]                                  	@IRInst:add	%t62	ans	%t61
	ldr r5,[fp,#184]                                  	@IRInst:add	%t62	ans	%t61
	add r6,r4,r5                                      	@IRInst:add	%t62	ans	%t61
	str r6,[fp,#188]                                  	@IRInst:add	%t62	ans	%t61
	ldr r4,[fp,#188]                                  	@IRInst:sdiv	%t65	%t62	mod
	ldr r5,[fp,#192]                                  	@IRInst:sdiv	%t65	%t62	mod
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t65	%t62	mod
	str r6,[fp,#200]                                  	@IRInst:sdiv	%t65	%t62	mod
	ldr r4,[fp,#200]                                  	@IRInst:mul	%t66	%t65	mod
	ldr r5,[fp,#192]                                  	@IRInst:mul	%t66	%t65	mod
	mul r6,r4,r5                                      	@IRInst:mul	%t66	%t65	mod
	str r6,[fp,#204]                                  	@IRInst:mul	%t66	%t65	mod
	ldr r4,[fp,#188]                                  	@IRInst:sub	%t64	%t62	%t66
	ldr r5,[fp,#204]                                  	@IRInst:sub	%t64	%t62	%t66
	sub r6,r4,r5                                      	@IRInst:sub	%t64	%t62	%t66
	str r6,[fp,#196]                                  	@IRInst:sub	%t64	%t62	%t66
	ldr r4,[fp,#196]                                  	@IRInst:assign	ans	%t64
	str r4,[fp,#156]                                  	@IRInst:assign	ans	%t64
.L15:
.L16:
	ldr r4,[fp,#8]                                    	@IRInst:assign	%t67	b
	str r4,[fp,#208]                                  	@IRInst:assign	%t67	b
	ldr r4,[fp,#208]                                  	@IRInst:not_zero	%t68	%t67	0
	mov r5,#0                                         	@IRInst:not_zero	%t68	%t67	0
	cmp r4,r5                                         	@IRInst:not_zero	%t68	%t67	0
	moveq r6,#0                                       	@IRInst:not_zero	%t68	%t67	0
	str r6,[fp,#212]                                  	@IRInst:not_zero	%t68	%t67	0
	beq .L18                                          
	b .L17                                            
.L17:
	ldr r0,[fp,#24]                                   	@IRInst:assign	r0	last
	mov r1,#3                                         	@IRInst:assign	r1	3
	bl equal                                          
	str r0,[fp,#216]                                  	@IRInst:assign	%t69	r0
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t70	b	%t69
	ldr r5,[fp,#216]                                  	@IRInst:sub	%t70	b	%t69
	sub r6,r4,r5                                      	@IRInst:sub	%t70	b	%t69
	str r6,[fp,#220]                                  	@IRInst:sub	%t70	b	%t69
	ldr r4,[fp,#4]                                    	@IRInst:add	%t71	a	1
	mov r5,#1                                         	@IRInst:add	%t71	a	1
	add r6,r4,r5                                      	@IRInst:add	%t71	a	1
	str r6,[fp,#224]                                  	@IRInst:add	%t71	a	1
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t72	b	1
	mov r5,#1                                         	@IRInst:sub	%t72	b	1
	sub r6,r4,r5                                      	@IRInst:sub	%t72	b	1
	str r6,[fp,#228]                                  	@IRInst:sub	%t72	b	1
	ldr r4,[fp,#20]                                   	@IRInst:assign	%m213	e
	str r4,[sp]                                       	@IRInst:assign	%m213	e
	mov r4,#2                                         	@IRInst:assign	%m214	2
	str r4,[sp,#4]                                    	@IRInst:assign	%m214	2
	ldr r0,[fp,#224]                                  	@IRInst:assign	r0	%t71
	ldr r1,[fp,#228]                                  	@IRInst:assign	r1	%t72
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	c
	ldr r3,[fp,#16]                                   	@IRInst:assign	r3	d
	bl dfs                                            
	str r0,[fp,#232]                                  	@IRInst:assign	%t73	r0
	ldr r4,[fp,#220]                                  	@IRInst:mul	%t74	%t70	%t73
	ldr r5,[fp,#232]                                  	@IRInst:mul	%t74	%t70	%t73
	mul r6,r4,r5                                      	@IRInst:mul	%t74	%t70	%t73
	str r6,[fp,#236]                                  	@IRInst:mul	%t74	%t70	%t73
	ldr r4,[fp,#156]                                  	@IRInst:add	%t75	ans	%t74
	ldr r5,[fp,#236]                                  	@IRInst:add	%t75	ans	%t74
	add r6,r4,r5                                      	@IRInst:add	%t75	ans	%t74
	str r6,[fp,#240]                                  	@IRInst:add	%t75	ans	%t74
	ldr r4,[fp,#240]                                  	@IRInst:sdiv	%t77	%t75	mod
	ldr r5,[fp,#192]                                  	@IRInst:sdiv	%t77	%t75	mod
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t77	%t75	mod
	str r6,[fp,#248]                                  	@IRInst:sdiv	%t77	%t75	mod
	ldr r4,[fp,#248]                                  	@IRInst:mul	%t78	%t77	mod
	ldr r5,[fp,#192]                                  	@IRInst:mul	%t78	%t77	mod
	mul r6,r4,r5                                      	@IRInst:mul	%t78	%t77	mod
	str r6,[fp,#252]                                  	@IRInst:mul	%t78	%t77	mod
	ldr r4,[fp,#240]                                  	@IRInst:sub	%t76	%t75	%t78
	ldr r5,[fp,#252]                                  	@IRInst:sub	%t76	%t75	%t78
	sub r6,r4,r5                                      	@IRInst:sub	%t76	%t75	%t78
	str r6,[fp,#244]                                  	@IRInst:sub	%t76	%t75	%t78
	ldr r4,[fp,#244]                                  	@IRInst:assign	ans	%t76
	str r4,[fp,#156]                                  	@IRInst:assign	ans	%t76
.L18:
.L19:
	ldr r4,[fp,#12]                                   	@IRInst:assign	%t79	c
	str r4,[fp,#256]                                  	@IRInst:assign	%t79	c
	ldr r4,[fp,#256]                                  	@IRInst:not_zero	%t80	%t79	0
	mov r5,#0                                         	@IRInst:not_zero	%t80	%t79	0
	cmp r4,r5                                         	@IRInst:not_zero	%t80	%t79	0
	moveq r6,#0                                       	@IRInst:not_zero	%t80	%t79	0
	str r6,[fp,#260]                                  	@IRInst:not_zero	%t80	%t79	0
	beq .L21                                          
	b .L20                                            
.L20:
	ldr r0,[fp,#24]                                   	@IRInst:assign	r0	last
	mov r1,#4                                         	@IRInst:assign	r1	4
	bl equal                                          
	str r0,[fp,#264]                                  	@IRInst:assign	%t81	r0
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t82	c	%t81
	ldr r5,[fp,#264]                                  	@IRInst:sub	%t82	c	%t81
	sub r6,r4,r5                                      	@IRInst:sub	%t82	c	%t81
	str r6,[fp,#268]                                  	@IRInst:sub	%t82	c	%t81
	ldr r4,[fp,#8]                                    	@IRInst:add	%t83	b	1
	mov r5,#1                                         	@IRInst:add	%t83	b	1
	add r6,r4,r5                                      	@IRInst:add	%t83	b	1
	str r6,[fp,#272]                                  	@IRInst:add	%t83	b	1
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t84	c	1
	mov r5,#1                                         	@IRInst:sub	%t84	c	1
	sub r6,r4,r5                                      	@IRInst:sub	%t84	c	1
	str r6,[fp,#276]                                  	@IRInst:sub	%t84	c	1
	ldr r4,[fp,#20]                                   	@IRInst:assign	%m215	e
	str r4,[sp]                                       	@IRInst:assign	%m215	e
	mov r4,#3                                         	@IRInst:assign	%m216	3
	str r4,[sp,#4]                                    	@IRInst:assign	%m216	3
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	a
	ldr r1,[fp,#272]                                  	@IRInst:assign	r1	%t83
	ldr r2,[fp,#276]                                  	@IRInst:assign	r2	%t84
	ldr r3,[fp,#16]                                   	@IRInst:assign	r3	d
	bl dfs                                            
	str r0,[fp,#280]                                  	@IRInst:assign	%t85	r0
	ldr r4,[fp,#268]                                  	@IRInst:mul	%t86	%t82	%t85
	ldr r5,[fp,#280]                                  	@IRInst:mul	%t86	%t82	%t85
	mul r6,r4,r5                                      	@IRInst:mul	%t86	%t82	%t85
	str r6,[fp,#284]                                  	@IRInst:mul	%t86	%t82	%t85
	ldr r4,[fp,#156]                                  	@IRInst:add	%t87	ans	%t86
	ldr r5,[fp,#284]                                  	@IRInst:add	%t87	ans	%t86
	add r6,r4,r5                                      	@IRInst:add	%t87	ans	%t86
	str r6,[fp,#288]                                  	@IRInst:add	%t87	ans	%t86
	ldr r4,[fp,#288]                                  	@IRInst:sdiv	%t89	%t87	mod
	ldr r5,[fp,#192]                                  	@IRInst:sdiv	%t89	%t87	mod
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t89	%t87	mod
	str r6,[fp,#296]                                  	@IRInst:sdiv	%t89	%t87	mod
	ldr r4,[fp,#296]                                  	@IRInst:mul	%t90	%t89	mod
	ldr r5,[fp,#192]                                  	@IRInst:mul	%t90	%t89	mod
	mul r6,r4,r5                                      	@IRInst:mul	%t90	%t89	mod
	str r6,[fp,#300]                                  	@IRInst:mul	%t90	%t89	mod
	ldr r4,[fp,#288]                                  	@IRInst:sub	%t88	%t87	%t90
	ldr r5,[fp,#300]                                  	@IRInst:sub	%t88	%t87	%t90
	sub r6,r4,r5                                      	@IRInst:sub	%t88	%t87	%t90
	str r6,[fp,#292]                                  	@IRInst:sub	%t88	%t87	%t90
	ldr r4,[fp,#292]                                  	@IRInst:assign	ans	%t88
	str r4,[fp,#156]                                  	@IRInst:assign	ans	%t88
.L21:
.L22:
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t91	d
	str r4,[fp,#304]                                  	@IRInst:assign	%t91	d
	ldr r4,[fp,#304]                                  	@IRInst:not_zero	%t92	%t91	0
	mov r5,#0                                         	@IRInst:not_zero	%t92	%t91	0
	cmp r4,r5                                         	@IRInst:not_zero	%t92	%t91	0
	moveq r6,#0                                       	@IRInst:not_zero	%t92	%t91	0
	str r6,[fp,#308]                                  	@IRInst:not_zero	%t92	%t91	0
	beq .L24                                          
	b .L23                                            
.L23:
	ldr r0,[fp,#24]                                   	@IRInst:assign	r0	last
	mov r1,#5                                         	@IRInst:assign	r1	5
	bl equal                                          
	str r0,[fp,#312]                                  	@IRInst:assign	%t93	r0
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t94	d	%t93
	ldr r5,[fp,#312]                                  	@IRInst:sub	%t94	d	%t93
	sub r6,r4,r5                                      	@IRInst:sub	%t94	d	%t93
	str r6,[fp,#316]                                  	@IRInst:sub	%t94	d	%t93
	ldr r4,[fp,#12]                                   	@IRInst:add	%t95	c	1
	mov r5,#1                                         	@IRInst:add	%t95	c	1
	add r6,r4,r5                                      	@IRInst:add	%t95	c	1
	str r6,[fp,#320]                                  	@IRInst:add	%t95	c	1
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t96	d	1
	mov r5,#1                                         	@IRInst:sub	%t96	d	1
	sub r6,r4,r5                                      	@IRInst:sub	%t96	d	1
	str r6,[fp,#324]                                  	@IRInst:sub	%t96	d	1
	ldr r4,[fp,#20]                                   	@IRInst:assign	%m217	e
	str r4,[sp]                                       	@IRInst:assign	%m217	e
	mov r4,#4                                         	@IRInst:assign	%m218	4
	str r4,[sp,#4]                                    	@IRInst:assign	%m218	4
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	a
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	b
	ldr r2,[fp,#320]                                  	@IRInst:assign	r2	%t95
	ldr r3,[fp,#324]                                  	@IRInst:assign	r3	%t96
	bl dfs                                            
	str r0,[fp,#328]                                  	@IRInst:assign	%t97	r0
	ldr r4,[fp,#316]                                  	@IRInst:mul	%t98	%t94	%t97
	ldr r5,[fp,#328]                                  	@IRInst:mul	%t98	%t94	%t97
	mul r6,r4,r5                                      	@IRInst:mul	%t98	%t94	%t97
	str r6,[fp,#332]                                  	@IRInst:mul	%t98	%t94	%t97
	ldr r4,[fp,#156]                                  	@IRInst:add	%t99	ans	%t98
	ldr r5,[fp,#332]                                  	@IRInst:add	%t99	ans	%t98
	add r6,r4,r5                                      	@IRInst:add	%t99	ans	%t98
	str r6,[fp,#336]                                  	@IRInst:add	%t99	ans	%t98
	ldr r4,[fp,#336]                                  	@IRInst:sdiv	%t101	%t99	mod
	ldr r5,[fp,#192]                                  	@IRInst:sdiv	%t101	%t99	mod
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t101	%t99	mod
	str r6,[fp,#344]                                  	@IRInst:sdiv	%t101	%t99	mod
	ldr r4,[fp,#344]                                  	@IRInst:mul	%t102	%t101	mod
	ldr r5,[fp,#192]                                  	@IRInst:mul	%t102	%t101	mod
	mul r6,r4,r5                                      	@IRInst:mul	%t102	%t101	mod
	str r6,[fp,#348]                                  	@IRInst:mul	%t102	%t101	mod
	ldr r4,[fp,#336]                                  	@IRInst:sub	%t100	%t99	%t102
	ldr r5,[fp,#348]                                  	@IRInst:sub	%t100	%t99	%t102
	sub r6,r4,r5                                      	@IRInst:sub	%t100	%t99	%t102
	str r6,[fp,#340]                                  	@IRInst:sub	%t100	%t99	%t102
	ldr r4,[fp,#340]                                  	@IRInst:assign	ans	%t100
	str r4,[fp,#156]                                  	@IRInst:assign	ans	%t100
.L24:
.L25:
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t103	e
	str r4,[fp,#352]                                  	@IRInst:assign	%t103	e
	ldr r4,[fp,#352]                                  	@IRInst:not_zero	%t104	%t103	0
	mov r5,#0                                         	@IRInst:not_zero	%t104	%t103	0
	cmp r4,r5                                         	@IRInst:not_zero	%t104	%t103	0
	moveq r6,#0                                       	@IRInst:not_zero	%t104	%t103	0
	str r6,[fp,#356]                                  	@IRInst:not_zero	%t104	%t103	0
	beq .L27                                          
	b .L26                                            
.L26:
	ldr r4,[fp,#16]                                   	@IRInst:add	%t105	d	1
	mov r5,#1                                         	@IRInst:add	%t105	d	1
	add r6,r4,r5                                      	@IRInst:add	%t105	d	1
	str r6,[fp,#360]                                  	@IRInst:add	%t105	d	1
	ldr r4,[fp,#20]                                   	@IRInst:sub	%t106	e	1
	mov r5,#1                                         	@IRInst:sub	%t106	e	1
	sub r6,r4,r5                                      	@IRInst:sub	%t106	e	1
	str r6,[fp,#364]                                  	@IRInst:sub	%t106	e	1
	ldr r4,[fp,#364]                                  	@IRInst:assign	%m219	%t106
	str r4,[sp]                                       	@IRInst:assign	%m219	%t106
	mov r4,#5                                         	@IRInst:assign	%m220	5
	str r4,[sp,#4]                                    	@IRInst:assign	%m220	5
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	a
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	b
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	c
	ldr r3,[fp,#360]                                  	@IRInst:assign	r3	%t105
	bl dfs                                            
	str r0,[fp,#368]                                  	@IRInst:assign	%t107	r0
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t108	e	%t107
	ldr r5,[fp,#368]                                  	@IRInst:mul	%t108	e	%t107
	mul r6,r4,r5                                      	@IRInst:mul	%t108	e	%t107
	str r6,[fp,#372]                                  	@IRInst:mul	%t108	e	%t107
	ldr r4,[fp,#156]                                  	@IRInst:add	%t109	ans	%t108
	ldr r5,[fp,#372]                                  	@IRInst:add	%t109	ans	%t108
	add r6,r4,r5                                      	@IRInst:add	%t109	ans	%t108
	str r6,[fp,#376]                                  	@IRInst:add	%t109	ans	%t108
	ldr r4,[fp,#376]                                  	@IRInst:sdiv	%t111	%t109	mod
	ldr r5,[fp,#192]                                  	@IRInst:sdiv	%t111	%t109	mod
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t111	%t109	mod
	str r6,[fp,#384]                                  	@IRInst:sdiv	%t111	%t109	mod
	ldr r4,[fp,#384]                                  	@IRInst:mul	%t112	%t111	mod
	ldr r5,[fp,#192]                                  	@IRInst:mul	%t112	%t111	mod
	mul r6,r4,r5                                      	@IRInst:mul	%t112	%t111	mod
	str r6,[fp,#388]                                  	@IRInst:mul	%t112	%t111	mod
	ldr r4,[fp,#376]                                  	@IRInst:sub	%t110	%t109	%t112
	ldr r5,[fp,#388]                                  	@IRInst:sub	%t110	%t109	%t112
	sub r6,r4,r5                                      	@IRInst:sub	%t110	%t109	%t112
	str r6,[fp,#380]                                  	@IRInst:sub	%t110	%t109	%t112
	ldr r4,[fp,#380]                                  	@IRInst:assign	ans	%t110
	str r4,[fp,#156]                                  	@IRInst:assign	ans	%t110
.L27:
.L28:
	ldr r4,[fp,#156]                                  	@IRInst:sdiv	%t126	ans	mod
	ldr r5,[fp,#192]                                  	@IRInst:sdiv	%t126	ans	mod
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t126	ans	mod
	str r6,[fp,#444]                                  	@IRInst:sdiv	%t126	ans	mod
	ldr r4,[fp,#444]                                  	@IRInst:mul	%t127	%t126	mod
	ldr r5,[fp,#192]                                  	@IRInst:mul	%t127	%t126	mod
	mul r6,r4,r5                                      	@IRInst:mul	%t127	%t126	mod
	str r6,[fp,#448]                                  	@IRInst:mul	%t127	%t126	mod
	ldr r4,[fp,#156]                                  	@IRInst:sub	%t125	ans	%t127
	ldr r5,[fp,#448]                                  	@IRInst:sub	%t125	ans	%t127
	sub r6,r4,r5                                      	@IRInst:sub	%t125	ans	%t127
	str r6,[fp,#440]                                  	@IRInst:sub	%t125	ans	%t127
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t113	a	0
	mov r5,#0                                         	@IRInst:mul	%t113	a	0
	mul r6,r4,r5                                      	@IRInst:mul	%t113	a	0
	str r6,[fp,#392]                                  	@IRInst:mul	%t113	a	0
	ldr r4,[fp,#392]                                  	@IRInst:add	%t114	%t113	b
	ldr r5,[fp,#8]                                    	@IRInst:add	%t114	%t113	b
	add r6,r4,r5                                      	@IRInst:add	%t114	%t113	b
	str r6,[fp,#396]                                  	@IRInst:add	%t114	%t113	b
	ldr r4,[fp,#396]                                  	@IRInst:mul	%t115	%t114	0
	mov r5,#0                                         	@IRInst:mul	%t115	%t114	0
	mul r6,r4,r5                                      	@IRInst:mul	%t115	%t114	0
	str r6,[fp,#400]                                  	@IRInst:mul	%t115	%t114	0
	ldr r4,[fp,#400]                                  	@IRInst:add	%t116	%t115	c
	ldr r5,[fp,#12]                                   	@IRInst:add	%t116	%t115	c
	add r6,r4,r5                                      	@IRInst:add	%t116	%t115	c
	str r6,[fp,#404]                                  	@IRInst:add	%t116	%t115	c
	ldr r4,[fp,#404]                                  	@IRInst:mul	%t117	%t116	0
	mov r5,#0                                         	@IRInst:mul	%t117	%t116	0
	mul r6,r4,r5                                      	@IRInst:mul	%t117	%t116	0
	str r6,[fp,#408]                                  	@IRInst:mul	%t117	%t116	0
	ldr r4,[fp,#408]                                  	@IRInst:add	%t118	%t117	d
	ldr r5,[fp,#16]                                   	@IRInst:add	%t118	%t117	d
	add r6,r4,r5                                      	@IRInst:add	%t118	%t117	d
	str r6,[fp,#412]                                  	@IRInst:add	%t118	%t117	d
	ldr r4,[fp,#412]                                  	@IRInst:mul	%t119	%t118	0
	mov r5,#0                                         	@IRInst:mul	%t119	%t118	0
	mul r6,r4,r5                                      	@IRInst:mul	%t119	%t118	0
	str r6,[fp,#416]                                  	@IRInst:mul	%t119	%t118	0
	ldr r4,[fp,#416]                                  	@IRInst:add	%t120	%t119	e
	ldr r5,[fp,#20]                                   	@IRInst:add	%t120	%t119	e
	add r6,r4,r5                                      	@IRInst:add	%t120	%t119	e
	str r6,[fp,#420]                                  	@IRInst:add	%t120	%t119	e
	ldr r4,[fp,#420]                                  	@IRInst:mul	%t121	%t120	7
	mov r5,#7                                         	@IRInst:mul	%t121	%t120	7
	mul r6,r4,r5                                      	@IRInst:mul	%t121	%t120	7
	str r6,[fp,#424]                                  	@IRInst:mul	%t121	%t120	7
	ldr r4,[fp,#424]                                  	@IRInst:add	%t122	%t121	last
	ldr r5,[fp,#24]                                   	@IRInst:add	%t122	%t121	last
	add r6,r4,r5                                      	@IRInst:add	%t122	%t121	last
	str r6,[fp,#428]                                  	@IRInst:add	%t122	%t121	last
	ldr r4,[fp,#428]                                  	@IRInst:mul	%t123	%t122	4
	mov r5,#4                                         	@IRInst:mul	%t123	%t122	4
	mul r6,r4,r5                                      	@IRInst:mul	%t123	%t122	4
	str r6,[fp,#432]                                  	@IRInst:mul	%t123	%t122	4
	ldr r4,.global_1_dp                               	@IRInst:add	%t124	dp	%t123
	ldr r5,[fp,#432]                                  	@IRInst:add	%t124	dp	%t123
	add r6,r4,r5                                      	@IRInst:add	%t124	dp	%t123
	str r6,[fp,#436]                                  	@IRInst:add	%t124	dp	%t123
	ldr r5,[fp,#436]                                  	@IRInst:assign	%t124	%t125
	ldr r4,[fp,#440]                                  	@IRInst:assign	%t124	%t125
	str r4,[r5]                                       	@IRInst:assign	%t124	%t125
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t128	a	0
	mov r5,#0                                         	@IRInst:mul	%t128	a	0
	mul r6,r4,r5                                      	@IRInst:mul	%t128	a	0
	str r6,[fp,#452]                                  	@IRInst:mul	%t128	a	0
	ldr r4,[fp,#452]                                  	@IRInst:add	%t129	%t128	b
	ldr r5,[fp,#8]                                    	@IRInst:add	%t129	%t128	b
	add r6,r4,r5                                      	@IRInst:add	%t129	%t128	b
	str r6,[fp,#456]                                  	@IRInst:add	%t129	%t128	b
	ldr r4,[fp,#456]                                  	@IRInst:mul	%t130	%t129	0
	mov r5,#0                                         	@IRInst:mul	%t130	%t129	0
	mul r6,r4,r5                                      	@IRInst:mul	%t130	%t129	0
	str r6,[fp,#460]                                  	@IRInst:mul	%t130	%t129	0
	ldr r4,[fp,#460]                                  	@IRInst:add	%t131	%t130	c
	ldr r5,[fp,#12]                                   	@IRInst:add	%t131	%t130	c
	add r6,r4,r5                                      	@IRInst:add	%t131	%t130	c
	str r6,[fp,#464]                                  	@IRInst:add	%t131	%t130	c
	ldr r4,[fp,#464]                                  	@IRInst:mul	%t132	%t131	0
	mov r5,#0                                         	@IRInst:mul	%t132	%t131	0
	mul r6,r4,r5                                      	@IRInst:mul	%t132	%t131	0
	str r6,[fp,#468]                                  	@IRInst:mul	%t132	%t131	0
	ldr r4,[fp,#468]                                  	@IRInst:add	%t133	%t132	d
	ldr r5,[fp,#16]                                   	@IRInst:add	%t133	%t132	d
	add r6,r4,r5                                      	@IRInst:add	%t133	%t132	d
	str r6,[fp,#472]                                  	@IRInst:add	%t133	%t132	d
	ldr r4,[fp,#472]                                  	@IRInst:mul	%t134	%t133	0
	mov r5,#0                                         	@IRInst:mul	%t134	%t133	0
	mul r6,r4,r5                                      	@IRInst:mul	%t134	%t133	0
	str r6,[fp,#476]                                  	@IRInst:mul	%t134	%t133	0
	ldr r4,[fp,#476]                                  	@IRInst:add	%t135	%t134	e
	ldr r5,[fp,#20]                                   	@IRInst:add	%t135	%t134	e
	add r6,r4,r5                                      	@IRInst:add	%t135	%t134	e
	str r6,[fp,#480]                                  	@IRInst:add	%t135	%t134	e
	ldr r4,[fp,#480]                                  	@IRInst:mul	%t136	%t135	7
	mov r5,#7                                         	@IRInst:mul	%t136	%t135	7
	mul r6,r4,r5                                      	@IRInst:mul	%t136	%t135	7
	str r6,[fp,#484]                                  	@IRInst:mul	%t136	%t135	7
	ldr r4,[fp,#484]                                  	@IRInst:add	%t137	%t136	last
	ldr r5,[fp,#24]                                   	@IRInst:add	%t137	%t136	last
	add r6,r4,r5                                      	@IRInst:add	%t137	%t136	last
	str r6,[fp,#488]                                  	@IRInst:add	%t137	%t136	last
	ldr r4,[fp,#488]                                  	@IRInst:mul	%t138	%t137	4
	mov r5,#4                                         	@IRInst:mul	%t138	%t137	4
	mul r6,r4,r5                                      	@IRInst:mul	%t138	%t137	4
	str r6,[fp,#492]                                  	@IRInst:mul	%t138	%t137	4
	ldr r4,.global_1_dp                               	@IRInst:add	%t139	dp	%t138
	ldr r5,[fp,#492]                                  	@IRInst:add	%t139	dp	%t138
	add r6,r4,r5                                      	@IRInst:add	%t139	dp	%t138
	str r6,[fp,#496]                                  	@IRInst:add	%t139	dp	%t138
	ldr r4,[fp,#496]                                  	@IRInst:assign	%t140	%t139
	ldr r4,[r4]                                       	@IRInst:assign	%t140	%t139
	str r4,[fp,#500]                                  	@IRInst:assign	%t140	%t139
	ldr r4,[fp,#500]                                  	@IRInst:assign		%t140
	str r4,[fp]                                       	@IRInst:assign		%t140
	b .L7                                             
.L7:
	ldr r0,[fp]                                       
	add fp,fp,#504                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_2_dp:
        .long   dp
.global_2_list:
        .long   list
.global_2_cns:
        .long   cns
.global main
.type main, %function
main:
.L29:
	push {r10,fp,lr}                                  
	sub sp,sp,#276                                    
	add fp,sp,#8                                      
	bl getint                                         
	str r0,[fp,#8]                                    	@IRInst:assign	%t144	r0
	ldr r4,[fp,#8]                                    
	str r4,[fp,#4]                                    
	mov r4,#0                                         
	str r4,[fp,#12]                                   
.L31:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t146	i	maxn
	ldr r5                                            	@IRInst:blt	%t146	i	maxn
	ldr r5,[r5]                                       	@IRInst:blt	%t146	i	maxn
	cmp r4,r5                                         	@IRInst:blt	%t146	i	maxn
	blt .L32                                          
	b .L33                                            
.L32:
	mov r4,#0                                         
	str r4,[fp,#20]                                   
.L34:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t148	j	maxn
	ldr r5                                            	@IRInst:blt	%t148	j	maxn
	ldr r5,[r5]                                       	@IRInst:blt	%t148	j	maxn
	cmp r4,r5                                         	@IRInst:blt	%t148	j	maxn
	blt .L35                                          
	b .L36                                            
.L35:
	mov r4,#0                                         
	str r4,[fp,#28]                                   
.L37:
	ldr r4,[fp,#28]                                   	@IRInst:blt	%t150	k	maxn
	ldr r5                                            	@IRInst:blt	%t150	k	maxn
	ldr r5,[r5]                                       	@IRInst:blt	%t150	k	maxn
	cmp r4,r5                                         	@IRInst:blt	%t150	k	maxn
	blt .L38                                          
	b .L39                                            
.L38:
	mov r4,#0                                         
	str r4,[fp,#36]                                   
.L40:
	ldr r4,[fp,#36]                                   	@IRInst:blt	%t152	l	maxn
	ldr r5                                            	@IRInst:blt	%t152	l	maxn
	ldr r5,[r5]                                       	@IRInst:blt	%t152	l	maxn
	cmp r4,r5                                         	@IRInst:blt	%t152	l	maxn
	blt .L41                                          
	b .L42                                            
.L41:
	mov r4,#0                                         
	str r4,[fp,#44]                                   
.L43:
	ldr r4,[fp,#44]                                   	@IRInst:blt	%t154	m	maxn
	ldr r5                                            	@IRInst:blt	%t154	m	maxn
	ldr r5,[r5]                                       	@IRInst:blt	%t154	m	maxn
	cmp r4,r5                                         	@IRInst:blt	%t154	m	maxn
	blt .L44                                          
	b .L45                                            
.L44:
	mov r4,#0                                         
	str r4,[fp,#52]                                   
.L46:
	ldr r4,[fp,#52]                                   	@IRInst:blt	%t156	h	7
	mov r5,#7                                         	@IRInst:blt	%t156	h	7
	cmp r4,r5                                         	@IRInst:blt	%t156	h	7
	blt .L47                                          
	b .L48                                            
.L47:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t157	i	0
	mov r5,#0                                         	@IRInst:mul	%t157	i	0
	mul r6,r4,r5                                      	@IRInst:mul	%t157	i	0
	str r6,[fp,#60]                                   	@IRInst:mul	%t157	i	0
	ldr r4,[fp,#60]                                   	@IRInst:add	%t158	%t157	j
	ldr r5,[fp,#20]                                   	@IRInst:add	%t158	%t157	j
	add r6,r4,r5                                      	@IRInst:add	%t158	%t157	j
	str r6,[fp,#64]                                   	@IRInst:add	%t158	%t157	j
	ldr r4,[fp,#64]                                   	@IRInst:mul	%t159	%t158	0
	mov r5,#0                                         	@IRInst:mul	%t159	%t158	0
	mul r6,r4,r5                                      	@IRInst:mul	%t159	%t158	0
	str r6,[fp,#68]                                   	@IRInst:mul	%t159	%t158	0
	ldr r4,[fp,#68]                                   	@IRInst:add	%t160	%t159	k
	ldr r5,[fp,#28]                                   	@IRInst:add	%t160	%t159	k
	add r6,r4,r5                                      	@IRInst:add	%t160	%t159	k
	str r6,[fp,#72]                                   	@IRInst:add	%t160	%t159	k
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t161	%t160	0
	mov r5,#0                                         	@IRInst:mul	%t161	%t160	0
	mul r6,r4,r5                                      	@IRInst:mul	%t161	%t160	0
	str r6,[fp,#76]                                   	@IRInst:mul	%t161	%t160	0
	ldr r4,[fp,#76]                                   	@IRInst:add	%t162	%t161	l
	ldr r5,[fp,#36]                                   	@IRInst:add	%t162	%t161	l
	add r6,r4,r5                                      	@IRInst:add	%t162	%t161	l
	str r6,[fp,#80]                                   	@IRInst:add	%t162	%t161	l
	ldr r4,[fp,#80]                                   	@IRInst:mul	%t163	%t162	0
	mov r5,#0                                         	@IRInst:mul	%t163	%t162	0
	mul r6,r4,r5                                      	@IRInst:mul	%t163	%t162	0
	str r6,[fp,#84]                                   	@IRInst:mul	%t163	%t162	0
	ldr r4,[fp,#84]                                   	@IRInst:add	%t164	%t163	m
	ldr r5,[fp,#44]                                   	@IRInst:add	%t164	%t163	m
	add r6,r4,r5                                      	@IRInst:add	%t164	%t163	m
	str r6,[fp,#88]                                   	@IRInst:add	%t164	%t163	m
	ldr r4,[fp,#88]                                   	@IRInst:mul	%t165	%t164	7
	mov r5,#7                                         	@IRInst:mul	%t165	%t164	7
	mul r6,r4,r5                                      	@IRInst:mul	%t165	%t164	7
	str r6,[fp,#92]                                   	@IRInst:mul	%t165	%t164	7
	ldr r4,[fp,#92]                                   	@IRInst:add	%t166	%t165	h
	ldr r5,[fp,#52]                                   	@IRInst:add	%t166	%t165	h
	add r6,r4,r5                                      	@IRInst:add	%t166	%t165	h
	str r6,[fp,#96]                                   	@IRInst:add	%t166	%t165	h
	ldr r4,[fp,#96]                                   	@IRInst:mul	%t167	%t166	4
	mov r5,#4                                         	@IRInst:mul	%t167	%t166	4
	mul r6,r4,r5                                      	@IRInst:mul	%t167	%t166	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t167	%t166	4
	ldr r4,.global_2_dp                               	@IRInst:add	%t168	dp	%t167
	ldr r5,[fp,#100]                                  	@IRInst:add	%t168	dp	%t167
	add r6,r4,r5                                      	@IRInst:add	%t168	dp	%t167
	str r6,[fp,#104]                                  	@IRInst:add	%t168	dp	%t167
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t168	18446744073709551615
	mov r4,#-1                                        	@IRInst:assign	%t168	18446744073709551615
	str r4,[r5]                                       	@IRInst:assign	%t168	18446744073709551615
	ldr r4,[fp,#52]                                   	@IRInst:add	%t169	h	1
	mov r5,#1                                         	@IRInst:add	%t169	h	1
	add r6,r4,r5                                      	@IRInst:add	%t169	h	1
	str r6,[fp,#108]                                  	@IRInst:add	%t169	h	1
	ldr r4,[fp,#108]                                  	@IRInst:assign	h	%t169
	str r4,[fp,#52]                                   	@IRInst:assign	h	%t169
	b .L46                                            
.L48:
	ldr r4,[fp,#44]                                   	@IRInst:add	%t170	m	1
	mov r5,#1                                         	@IRInst:add	%t170	m	1
	add r6,r4,r5                                      	@IRInst:add	%t170	m	1
	str r6,[fp,#112]                                  	@IRInst:add	%t170	m	1
	ldr r4,[fp,#112]                                  	@IRInst:assign	m	%t170
	str r4,[fp,#44]                                   	@IRInst:assign	m	%t170
	b .L43                                            
.L45:
	ldr r4,[fp,#36]                                   	@IRInst:add	%t171	l	1
	mov r5,#1                                         	@IRInst:add	%t171	l	1
	add r6,r4,r5                                      	@IRInst:add	%t171	l	1
	str r6,[fp,#116]                                  	@IRInst:add	%t171	l	1
	ldr r4,[fp,#116]                                  	@IRInst:assign	l	%t171
	str r4,[fp,#36]                                   	@IRInst:assign	l	%t171
	b .L40                                            
.L42:
	ldr r4,[fp,#28]                                   	@IRInst:add	%t172	k	1
	mov r5,#1                                         	@IRInst:add	%t172	k	1
	add r6,r4,r5                                      	@IRInst:add	%t172	k	1
	str r6,[fp,#120]                                  	@IRInst:add	%t172	k	1
	ldr r4,[fp,#120]                                  	@IRInst:assign	k	%t172
	str r4,[fp,#28]                                   	@IRInst:assign	k	%t172
	b .L37                                            
.L39:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t173	j	1
	mov r5,#1                                         	@IRInst:add	%t173	j	1
	add r6,r4,r5                                      	@IRInst:add	%t173	j	1
	str r6,[fp,#124]                                  	@IRInst:add	%t173	j	1
	ldr r4,[fp,#124]                                  	@IRInst:assign	j	%t173
	str r4,[fp,#20]                                   	@IRInst:assign	j	%t173
	b .L34                                            
.L36:
	ldr r4,[fp,#12]                                   	@IRInst:add	%t174	i	1
	mov r5,#1                                         	@IRInst:add	%t174	i	1
	add r6,r4,r5                                      	@IRInst:add	%t174	i	1
	str r6,[fp,#128]                                  	@IRInst:add	%t174	i	1
	ldr r4,[fp,#128]                                  	@IRInst:assign	i	%t174
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t174
	b .L31                                            
.L33:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#12]                                   	@IRInst:assign	i	0
.L49:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t175	i	n
	ldr r5,[fp,#4]                                    	@IRInst:blt	%t175	i	n
	cmp r4,r5                                         	@IRInst:blt	%t175	i	n
	blt .L50                                          
	b .L51                                            
.L50:
	bl getint                                         
	str r0,[fp,#144]                                  	@IRInst:assign	%t178	r0
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t176	i	4
	mov r5,#4                                         	@IRInst:mul	%t176	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t176	i	4
	str r6,[fp,#136]                                  	@IRInst:mul	%t176	i	4
	ldr r4,.global_2_list                             	@IRInst:add	%t177	list	%t176
	ldr r5,[fp,#136]                                  	@IRInst:add	%t177	list	%t176
	add r6,r4,r5                                      	@IRInst:add	%t177	list	%t176
	str r6,[fp,#140]                                  	@IRInst:add	%t177	list	%t176
	ldr r5,[fp,#140]                                  	@IRInst:assign	%t177	%t178
	ldr r4,[fp,#144]                                  	@IRInst:assign	%t177	%t178
	str r4,[r5]                                       	@IRInst:assign	%t177	%t178
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t185	i	4
	mov r5,#4                                         	@IRInst:mul	%t185	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t185	i	4
	str r6,[fp,#172]                                  	@IRInst:mul	%t185	i	4
	ldr r4,.global_2_list                             	@IRInst:add	%t186	list	%t185
	ldr r5,[fp,#172]                                  	@IRInst:add	%t186	list	%t185
	add r6,r4,r5                                      	@IRInst:add	%t186	list	%t185
	str r6,[fp,#176]                                  	@IRInst:add	%t186	list	%t185
	ldr r4,[fp,#176]                                  	@IRInst:assign	%t187	%t186
	ldr r4,[r4]                                       	@IRInst:assign	%t187	%t186
	str r4,[fp,#180]                                  	@IRInst:assign	%t187	%t186
	ldr r4,[fp,#180]                                  	@IRInst:mul	%t184	%t187	4
	mov r5,#4                                         	@IRInst:mul	%t184	%t187	4
	mul r6,r4,r5                                      	@IRInst:mul	%t184	%t187	4
	str r6,[fp,#168]                                  	@IRInst:mul	%t184	%t187	4
	ldr r4,.global_2_cns                              	@IRInst:add	%t188	cns	%t184
	ldr r5,[fp,#168]                                  	@IRInst:add	%t188	cns	%t184
	add r6,r4,r5                                      	@IRInst:add	%t188	cns	%t184
	str r6,[fp,#184]                                  	@IRInst:add	%t188	cns	%t184
	ldr r4,[fp,#184]                                  	@IRInst:assign	%t189	%t188
	ldr r4,[r4]                                       	@IRInst:assign	%t189	%t188
	str r4,[fp,#188]                                  	@IRInst:assign	%t189	%t188
	ldr r4,[fp,#188]                                  	@IRInst:add	%t190	%t189	1
	mov r5,#1                                         	@IRInst:add	%t190	%t189	1
	add r6,r4,r5                                      	@IRInst:add	%t190	%t189	1
	str r6,[fp,#192]                                  	@IRInst:add	%t190	%t189	1
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t180	i	4
	mov r5,#4                                         	@IRInst:mul	%t180	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t180	i	4
	str r6,[fp,#152]                                  	@IRInst:mul	%t180	i	4
	ldr r4,.global_2_list                             	@IRInst:add	%t181	list	%t180
	ldr r5,[fp,#152]                                  	@IRInst:add	%t181	list	%t180
	add r6,r4,r5                                      	@IRInst:add	%t181	list	%t180
	str r6,[fp,#156]                                  	@IRInst:add	%t181	list	%t180
	ldr r4,[fp,#156]                                  	@IRInst:assign	%t182	%t181
	ldr r4,[r4]                                       	@IRInst:assign	%t182	%t181
	str r4,[fp,#160]                                  	@IRInst:assign	%t182	%t181
	ldr r4,[fp,#160]                                  	@IRInst:mul	%t179	%t182	4
	mov r5,#4                                         	@IRInst:mul	%t179	%t182	4
	mul r6,r4,r5                                      	@IRInst:mul	%t179	%t182	4
	str r6,[fp,#148]                                  	@IRInst:mul	%t179	%t182	4
	ldr r4,.global_2_cns                              	@IRInst:add	%t183	cns	%t179
	ldr r5,[fp,#148]                                  	@IRInst:add	%t183	cns	%t179
	add r6,r4,r5                                      	@IRInst:add	%t183	cns	%t179
	str r6,[fp,#164]                                  	@IRInst:add	%t183	cns	%t179
	ldr r5,[fp,#164]                                  	@IRInst:assign	%t183	%t190
	ldr r4,[fp,#192]                                  	@IRInst:assign	%t183	%t190
	str r4,[r5]                                       	@IRInst:assign	%t183	%t190
	ldr r4,[fp,#12]                                   	@IRInst:add	%t191	i	1
	mov r5,#1                                         	@IRInst:add	%t191	i	1
	add r6,r4,r5                                      	@IRInst:add	%t191	i	1
	str r6,[fp,#196]                                  	@IRInst:add	%t191	i	1
	ldr r4,[fp,#196]                                  	@IRInst:assign	i	%t191
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t191
	b .L49                                            
.L51:
	mov r4,#1                                         	@IRInst:mul	%t193	1	4
	mov r5,#4                                         	@IRInst:mul	%t193	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t193	1	4
	str r6,[fp,#204]                                  	@IRInst:mul	%t193	1	4
	ldr r4,.global_2_cns                              	@IRInst:add	%t194	cns	%t193
	ldr r5,[fp,#204]                                  	@IRInst:add	%t194	cns	%t193
	add r6,r4,r5                                      	@IRInst:add	%t194	cns	%t193
	str r6,[fp,#208]                                  	@IRInst:add	%t194	cns	%t193
	ldr r4,[fp,#208]                                  	@IRInst:assign	%t195	%t194
	ldr r4,[r4]                                       	@IRInst:assign	%t195	%t194
	str r4,[fp,#212]                                  	@IRInst:assign	%t195	%t194
	mov r4,#2                                         	@IRInst:mul	%t196	2	4
	mov r5,#4                                         	@IRInst:mul	%t196	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t196	2	4
	str r6,[fp,#216]                                  	@IRInst:mul	%t196	2	4
	ldr r4,.global_2_cns                              	@IRInst:add	%t197	cns	%t196
	ldr r5,[fp,#216]                                  	@IRInst:add	%t197	cns	%t196
	add r6,r4,r5                                      	@IRInst:add	%t197	cns	%t196
	str r6,[fp,#220]                                  	@IRInst:add	%t197	cns	%t196
	ldr r4,[fp,#220]                                  	@IRInst:assign	%t198	%t197
	ldr r4,[r4]                                       	@IRInst:assign	%t198	%t197
	str r4,[fp,#224]                                  	@IRInst:assign	%t198	%t197
	mov r4,#3                                         	@IRInst:mul	%t199	3	4
	mov r5,#4                                         	@IRInst:mul	%t199	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t199	3	4
	str r6,[fp,#228]                                  	@IRInst:mul	%t199	3	4
	ldr r4,.global_2_cns                              	@IRInst:add	%t200	cns	%t199
	ldr r5,[fp,#228]                                  	@IRInst:add	%t200	cns	%t199
	add r6,r4,r5                                      	@IRInst:add	%t200	cns	%t199
	str r6,[fp,#232]                                  	@IRInst:add	%t200	cns	%t199
	ldr r4,[fp,#232]                                  	@IRInst:assign	%t201	%t200
	ldr r4,[r4]                                       	@IRInst:assign	%t201	%t200
	str r4,[fp,#236]                                  	@IRInst:assign	%t201	%t200
	mov r4,#4                                         	@IRInst:mul	%t202	4	4
	mov r5,#4                                         	@IRInst:mul	%t202	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t202	4	4
	str r6,[fp,#240]                                  	@IRInst:mul	%t202	4	4
	ldr r4,.global_2_cns                              	@IRInst:add	%t203	cns	%t202
	ldr r5,[fp,#240]                                  	@IRInst:add	%t203	cns	%t202
	add r6,r4,r5                                      	@IRInst:add	%t203	cns	%t202
	str r6,[fp,#244]                                  	@IRInst:add	%t203	cns	%t202
	ldr r4,[fp,#244]                                  	@IRInst:assign	%t204	%t203
	ldr r4,[r4]                                       	@IRInst:assign	%t204	%t203
	str r4,[fp,#248]                                  	@IRInst:assign	%t204	%t203
	mov r4,#5                                         	@IRInst:mul	%t205	5	4
	mov r5,#4                                         	@IRInst:mul	%t205	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t205	5	4
	str r6,[fp,#252]                                  	@IRInst:mul	%t205	5	4
	ldr r4,.global_2_cns                              	@IRInst:add	%t206	cns	%t205
	ldr r5,[fp,#252]                                  	@IRInst:add	%t206	cns	%t205
	add r6,r4,r5                                      	@IRInst:add	%t206	cns	%t205
	str r6,[fp,#256]                                  	@IRInst:add	%t206	cns	%t205
	ldr r4,[fp,#256]                                  	@IRInst:assign	%t207	%t206
	ldr r4,[r4]                                       	@IRInst:assign	%t207	%t206
	str r4,[fp,#260]                                  	@IRInst:assign	%t207	%t206
	ldr r4,[fp,#260]                                  	@IRInst:assign	%m221	%t207
	str r4,[sp]                                       	@IRInst:assign	%m221	%t207
	mov r4,#0                                         	@IRInst:assign	%m222	0
	str r4,[sp,#4]                                    	@IRInst:assign	%m222	0
	ldr r0,[fp,#212]                                  	@IRInst:assign	r0	%t195
	ldr r1,[fp,#224]                                  	@IRInst:assign	r1	%t198
	ldr r2,[fp,#236]                                  	@IRInst:assign	r2	%t201
	ldr r3,[fp,#248]                                  	@IRInst:assign	r3	%t204
	bl dfs                                            
	str r0,[fp,#264]                                  	@IRInst:assign	%t208	r0
	ldr r4,[fp,#264]                                  
	str r4,[fp,#200]                                  
	ldr r0,[fp,#200]                                  	@IRInst:assign	r0	ans
	bl putint                                         
	ldr r4,[fp,#200]                                  	@IRInst:assign		ans
	str r4,[fp]                                       	@IRInst:assign		ans
	b .L30                                            
.L30:
	ldr r0,[fp]                                       
	add fp,fp,#268                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
