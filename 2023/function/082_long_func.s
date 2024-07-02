.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
SHIFT_TABLE:
        .zero   64
.text
.global_0_SHIFT_TABLE:
        .long   SHIFT_TABLE
.global long_func
.type long_func, %function
long_func:
.L1:
	push {r10,fp,lr}                                  
	ldr r10,=6104                                     
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	mov r4,#2                                         	@IRInst:assign	pl	2
	str r4,[fp,#24]                                   	@IRInst:assign	pl	2
	mov r4,#0                                         	@IRInst:assign	pr	0
	str r4,[fp,#28]                                   	@IRInst:assign	pr	0
	mov r4,#1                                         	@IRInst:assign	pres	1
	str r4,[fp,#32]                                   	@IRInst:assign	pres	1
.L3:
	ldr r4,[fp,#28]                                   	@IRInst:bgt	%t10	pr	0
	mov r5,#0                                         	@IRInst:bgt	%t10	pr	0
	cmp r4,r5                                         	@IRInst:bgt	%t10	pr	0
	movgt r6,#1                                       	@IRInst:bgt	%t10	pr	0
	movle r6,#0                                       	@IRInst:bgt	%t10	pr	0
	str r6,[fp,#36]                                   	@IRInst:bgt	%t10	pr	0
	bgt .L4                                           
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#28]                                   	@IRInst:assign	x	pr
	str r4,[fp,#12]                                   	@IRInst:assign	x	pr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L6:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t11	i	16
	mov r5,#16                                        	@IRInst:blt	%t11	i	16
	cmp r4,r5                                         	@IRInst:blt	%t11	i	16
	movlt r6,#1                                       	@IRInst:blt	%t11	i	16
	movge r6,#0                                       	@IRInst:blt	%t11	i	16
	str r6,[fp,#40]                                   	@IRInst:blt	%t11	i	16
	blt .L7                                           
	b .L8                                             
.L7:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t13	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t13	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t13	x	2
	str r6,[fp,#48]                                   	@IRInst:sdiv	%t13	x	2
	ldr r4,[fp,#48]                                   	@IRInst:mul	%t14	%t13	2
	mov r5,#2                                         	@IRInst:mul	%t14	%t13	2
	mul r6,r4,r5                                      	@IRInst:mul	%t14	%t13	2
	str r6,[fp,#52]                                   	@IRInst:mul	%t14	%t13	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t12	x	%t14
	ldr r5,[fp,#52]                                   	@IRInst:sub	%t12	x	%t14
	sub r6,r4,r5                                      	@IRInst:sub	%t12	x	%t14
	str r6,[fp,#44]                                   	@IRInst:sub	%t12	x	%t14
.L12:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t16	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t16	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t16	y	2
	str r6,[fp,#60]                                   	@IRInst:sdiv	%t16	y	2
	ldr r4,[fp,#60]                                   	@IRInst:mul	%t17	%t16	2
	mov r5,#2                                         	@IRInst:mul	%t17	%t16	2
	mul r6,r4,r5                                      	@IRInst:mul	%t17	%t16	2
	str r6,[fp,#64]                                   	@IRInst:mul	%t17	%t16	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t15	y	%t17
	ldr r5,[fp,#64]                                   	@IRInst:sub	%t15	y	%t17
	sub r6,r4,r5                                      	@IRInst:sub	%t15	y	%t17
	str r6,[fp,#56]                                   	@IRInst:sub	%t15	y	%t17
.L9:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t18	i	4
	mov r5,#4                                         	@IRInst:mul	%t18	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t18	i	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t18	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t19	SHIFT_TABLE	%t18
	ldr r5,[fp,#68]                                   	@IRInst:add	%t19	SHIFT_TABLE	%t18
	add r6,r4,r5                                      	@IRInst:add	%t19	SHIFT_TABLE	%t18
	str r6,[fp,#72]                                   	@IRInst:add	%t19	SHIFT_TABLE	%t18
	ldr r4,[fp,#72]                                   	@IRInst:assign	%t20	%t19
	ldr r4,[r4]                                       	@IRInst:assign	%t20	%t19
	str r4,[fp,#76]                                   	@IRInst:assign	%t20	%t19
	mov r4,#1                                         	@IRInst:mul	%t21	1	%t20
	ldr r5,[fp,#76]                                   	@IRInst:mul	%t21	1	%t20
	mul r6,r4,r5                                      	@IRInst:mul	%t21	1	%t20
	str r6,[fp,#80]                                   	@IRInst:mul	%t21	1	%t20
	ldr r4,[fp,#4]                                    	@IRInst:add	%t22	ans	%t21
	ldr r5,[fp,#80]                                   	@IRInst:add	%t22	ans	%t21
	add r6,r4,r5                                      	@IRInst:add	%t22	ans	%t21
	str r6,[fp,#84]                                   	@IRInst:add	%t22	ans	%t21
	ldr r4,[fp,#84]                                   	@IRInst:assign	ans	%t22
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t22
.L10:
.L11:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t23	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t23	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t23	x	2
	str r6,[fp,#88]                                   	@IRInst:sdiv	%t23	x	2
	ldr r4,[fp,#88]                                   	@IRInst:assign	x	%t23
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t23
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t24	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t24	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t24	y	2
	str r6,[fp,#92]                                   	@IRInst:sdiv	%t24	y	2
	ldr r4,[fp,#92]                                   	@IRInst:assign	y	%t24
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t24
	ldr r4,[fp,#8]                                    	@IRInst:add	%t25	i	1
	mov r5,#1                                         	@IRInst:add	%t25	i	1
	add r6,r4,r5                                      	@IRInst:add	%t25	i	1
	str r6,[fp,#96]                                   	@IRInst:add	%t25	i	1
	ldr r4,[fp,#96]                                   	@IRInst:assign	i	%t25
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t25
	b .L6                                             
.L8:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t26	ans
	str r4,[fp,#100]                                  	@IRInst:assign	%t26	ans
	ldr r4,[fp,#100]                                  	@IRInst:not_zero	%t27	%t26	0
	mov r5,#0                                         	@IRInst:not_zero	%t27	%t26	0
	cmp r4,r5                                         	@IRInst:not_zero	%t27	%t26	0
	moveq r6,#0                                       	@IRInst:not_zero	%t27	%t26	0
	movne r6,#1                                       	@IRInst:not_zero	%t27	%t26	0
	str r6,[fp,#104]                                  	@IRInst:not_zero	%t27	%t26	0
	beq .L14                                          
	b .L13                                            
.L13:
	ldr r4,[fp,#32]                                   	@IRInst:assign	ml	pres
	str r4,[fp,#108]                                  	@IRInst:assign	ml	pres
	ldr r4,[fp,#24]                                   	@IRInst:assign	mr	pl
	str r4,[fp,#112]                                  	@IRInst:assign	mr	pl
	mov r4,#0                                         	@IRInst:assign	mres	0
	str r4,[fp,#116]                                  	@IRInst:assign	mres	0
.L16:
	ldr r4,[fp,#112]                                  	@IRInst:assign	%t31	mr
	str r4,[fp,#120]                                  	@IRInst:assign	%t31	mr
	ldr r4,[fp,#120]                                  	@IRInst:not_zero	%t32	%t31	0
	mov r5,#0                                         	@IRInst:not_zero	%t32	%t31	0
	cmp r4,r5                                         	@IRInst:not_zero	%t32	%t31	0
	moveq r6,#0                                       	@IRInst:not_zero	%t32	%t31	0
	movne r6,#1                                       	@IRInst:not_zero	%t32	%t31	0
	str r6,[fp,#124]                                  	@IRInst:not_zero	%t32	%t31	0
	beq .L18                                          
	b .L17                                            
.L17:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#112]                                  	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L19:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t33	i	16
	mov r5,#16                                        	@IRInst:blt	%t33	i	16
	cmp r4,r5                                         	@IRInst:blt	%t33	i	16
	movlt r6,#1                                       	@IRInst:blt	%t33	i	16
	movge r6,#0                                       	@IRInst:blt	%t33	i	16
	str r6,[fp,#128]                                  	@IRInst:blt	%t33	i	16
	blt .L20                                          
	b .L21                                            
.L20:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t35	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t35	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t35	x	2
	str r6,[fp,#136]                                  	@IRInst:sdiv	%t35	x	2
	ldr r4,[fp,#136]                                  	@IRInst:mul	%t36	%t35	2
	mov r5,#2                                         	@IRInst:mul	%t36	%t35	2
	mul r6,r4,r5                                      	@IRInst:mul	%t36	%t35	2
	str r6,[fp,#140]                                  	@IRInst:mul	%t36	%t35	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t34	x	%t36
	ldr r5,[fp,#140]                                  	@IRInst:sub	%t34	x	%t36
	sub r6,r4,r5                                      	@IRInst:sub	%t34	x	%t36
	str r6,[fp,#132]                                  	@IRInst:sub	%t34	x	%t36
.L25:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t38	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t38	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t38	y	2
	str r6,[fp,#148]                                  	@IRInst:sdiv	%t38	y	2
	ldr r4,[fp,#148]                                  	@IRInst:mul	%t39	%t38	2
	mov r5,#2                                         	@IRInst:mul	%t39	%t38	2
	mul r6,r4,r5                                      	@IRInst:mul	%t39	%t38	2
	str r6,[fp,#152]                                  	@IRInst:mul	%t39	%t38	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t37	y	%t39
	ldr r5,[fp,#152]                                  	@IRInst:sub	%t37	y	%t39
	sub r6,r4,r5                                      	@IRInst:sub	%t37	y	%t39
	str r6,[fp,#144]                                  	@IRInst:sub	%t37	y	%t39
.L22:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t40	i	4
	mov r5,#4                                         	@IRInst:mul	%t40	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t40	i	4
	str r6,[fp,#156]                                  	@IRInst:mul	%t40	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t41	SHIFT_TABLE	%t40
	ldr r5,[fp,#156]                                  	@IRInst:add	%t41	SHIFT_TABLE	%t40
	add r6,r4,r5                                      	@IRInst:add	%t41	SHIFT_TABLE	%t40
	str r6,[fp,#160]                                  	@IRInst:add	%t41	SHIFT_TABLE	%t40
	ldr r4,[fp,#160]                                  	@IRInst:assign	%t42	%t41
	ldr r4,[r4]                                       	@IRInst:assign	%t42	%t41
	str r4,[fp,#164]                                  	@IRInst:assign	%t42	%t41
	mov r4,#1                                         	@IRInst:mul	%t43	1	%t42
	ldr r5,[fp,#164]                                  	@IRInst:mul	%t43	1	%t42
	mul r6,r4,r5                                      	@IRInst:mul	%t43	1	%t42
	str r6,[fp,#168]                                  	@IRInst:mul	%t43	1	%t42
	ldr r4,[fp,#4]                                    	@IRInst:add	%t44	ans	%t43
	ldr r5,[fp,#168]                                  	@IRInst:add	%t44	ans	%t43
	add r6,r4,r5                                      	@IRInst:add	%t44	ans	%t43
	str r6,[fp,#172]                                  	@IRInst:add	%t44	ans	%t43
	ldr r4,[fp,#172]                                  	@IRInst:assign	ans	%t44
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t44
.L23:
.L24:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t45	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t45	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t45	x	2
	str r6,[fp,#176]                                  	@IRInst:sdiv	%t45	x	2
	ldr r4,[fp,#176]                                  	@IRInst:assign	x	%t45
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t45
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t46	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t46	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t46	y	2
	str r6,[fp,#180]                                  	@IRInst:sdiv	%t46	y	2
	ldr r4,[fp,#180]                                  	@IRInst:assign	y	%t46
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t46
	ldr r4,[fp,#8]                                    	@IRInst:add	%t47	i	1
	mov r5,#1                                         	@IRInst:add	%t47	i	1
	add r6,r4,r5                                      	@IRInst:add	%t47	i	1
	str r6,[fp,#184]                                  	@IRInst:add	%t47	i	1
	ldr r4,[fp,#184]                                  	@IRInst:assign	i	%t47
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t47
	b .L19                                            
.L21:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t48	ans
	str r4,[fp,#188]                                  	@IRInst:assign	%t48	ans
	ldr r4,[fp,#188]                                  	@IRInst:not_zero	%t49	%t48	0
	mov r5,#0                                         	@IRInst:not_zero	%t49	%t48	0
	cmp r4,r5                                         	@IRInst:not_zero	%t49	%t48	0
	moveq r6,#0                                       	@IRInst:not_zero	%t49	%t48	0
	movne r6,#1                                       	@IRInst:not_zero	%t49	%t48	0
	str r6,[fp,#192]                                  	@IRInst:not_zero	%t49	%t48	0
	beq .L27                                          
	b .L26                                            
.L26:
	ldr r4,[fp,#116]                                  	@IRInst:assign	al	mres
	str r4,[fp,#196]                                  	@IRInst:assign	al	mres
	ldr r4,[fp,#108]                                  	@IRInst:assign	c	ml
	str r4,[fp,#200]                                  	@IRInst:assign	c	ml
.L29:
	ldr r4,[fp,#200]                                  	@IRInst:assign	%t53	c
	str r4,[fp,#208]                                  	@IRInst:assign	%t53	c
	ldr r4,[fp,#208]                                  	@IRInst:not_zero	%t54	%t53	0
	mov r5,#0                                         	@IRInst:not_zero	%t54	%t53	0
	cmp r4,r5                                         	@IRInst:not_zero	%t54	%t53	0
	moveq r6,#0                                       	@IRInst:not_zero	%t54	%t53	0
	movne r6,#1                                       	@IRInst:not_zero	%t54	%t53	0
	str r6,[fp,#212]                                  	@IRInst:not_zero	%t54	%t53	0
	beq .L31                                          
	b .L30                                            
.L30:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#196]                                  	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#200]                                  	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L32:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t55	i	16
	mov r5,#16                                        	@IRInst:blt	%t55	i	16
	cmp r4,r5                                         	@IRInst:blt	%t55	i	16
	movlt r6,#1                                       	@IRInst:blt	%t55	i	16
	movge r6,#0                                       	@IRInst:blt	%t55	i	16
	str r6,[fp,#216]                                  	@IRInst:blt	%t55	i	16
	blt .L33                                          
	b .L34                                            
.L33:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t57	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t57	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t57	x	2
	str r6,[fp,#224]                                  	@IRInst:sdiv	%t57	x	2
	ldr r4,[fp,#224]                                  	@IRInst:mul	%t58	%t57	2
	mov r5,#2                                         	@IRInst:mul	%t58	%t57	2
	mul r6,r4,r5                                      	@IRInst:mul	%t58	%t57	2
	str r6,[fp,#228]                                  	@IRInst:mul	%t58	%t57	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t56	x	%t58
	ldr r5,[fp,#228]                                  	@IRInst:sub	%t56	x	%t58
	sub r6,r4,r5                                      	@IRInst:sub	%t56	x	%t58
	str r6,[fp,#220]                                  	@IRInst:sub	%t56	x	%t58
.L35:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t60	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t60	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t60	y	2
	str r6,[fp,#236]                                  	@IRInst:sdiv	%t60	y	2
	ldr r4,[fp,#236]                                  	@IRInst:mul	%t61	%t60	2
	mov r5,#2                                         	@IRInst:mul	%t61	%t60	2
	mul r6,r4,r5                                      	@IRInst:mul	%t61	%t60	2
	str r6,[fp,#240]                                  	@IRInst:mul	%t61	%t60	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t59	y	%t61
	ldr r5,[fp,#240]                                  	@IRInst:sub	%t59	y	%t61
	sub r6,r4,r5                                      	@IRInst:sub	%t59	y	%t61
	str r6,[fp,#232]                                  	@IRInst:sub	%t59	y	%t61
	ldr r4,[fp,#232]                                  	@IRInst:beq	%t62	%t59	0
	mov r5,#0                                         	@IRInst:beq	%t62	%t59	0
	cmp r4,r5                                         	@IRInst:beq	%t62	%t59	0
	moveq r6,#1                                       	@IRInst:beq	%t62	%t59	0
	movne r6,#0                                       	@IRInst:beq	%t62	%t59	0
	str r6,[fp,#244]                                  	@IRInst:beq	%t62	%t59	0
	beq .L38                                          
	b .L39                                            
.L38:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t63	i	4
	mov r5,#4                                         	@IRInst:mul	%t63	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t63	i	4
	str r6,[fp,#248]                                  	@IRInst:mul	%t63	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t64	SHIFT_TABLE	%t63
	ldr r5,[fp,#248]                                  	@IRInst:add	%t64	SHIFT_TABLE	%t63
	add r6,r4,r5                                      	@IRInst:add	%t64	SHIFT_TABLE	%t63
	str r6,[fp,#252]                                  	@IRInst:add	%t64	SHIFT_TABLE	%t63
	ldr r4,[fp,#252]                                  	@IRInst:assign	%t65	%t64
	ldr r4,[r4]                                       	@IRInst:assign	%t65	%t64
	str r4,[fp,#256]                                  	@IRInst:assign	%t65	%t64
	mov r4,#1                                         	@IRInst:mul	%t66	1	%t65
	ldr r5,[fp,#256]                                  	@IRInst:mul	%t66	1	%t65
	mul r6,r4,r5                                      	@IRInst:mul	%t66	1	%t65
	str r6,[fp,#260]                                  	@IRInst:mul	%t66	1	%t65
	ldr r4,[fp,#4]                                    	@IRInst:add	%t67	ans	%t66
	ldr r5,[fp,#260]                                  	@IRInst:add	%t67	ans	%t66
	add r6,r4,r5                                      	@IRInst:add	%t67	ans	%t66
	str r6,[fp,#264]                                  	@IRInst:add	%t67	ans	%t66
	ldr r4,[fp,#264]                                  	@IRInst:assign	ans	%t67
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t67
.L39:
.L40:
	b .L37                                            
.L36:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t69	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t69	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t69	y	2
	str r6,[fp,#272]                                  	@IRInst:sdiv	%t69	y	2
	ldr r4,[fp,#272]                                  	@IRInst:mul	%t70	%t69	2
	mov r5,#2                                         	@IRInst:mul	%t70	%t69	2
	mul r6,r4,r5                                      	@IRInst:mul	%t70	%t69	2
	str r6,[fp,#276]                                  	@IRInst:mul	%t70	%t69	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t68	y	%t70
	ldr r5,[fp,#276]                                  	@IRInst:sub	%t68	y	%t70
	sub r6,r4,r5                                      	@IRInst:sub	%t68	y	%t70
	str r6,[fp,#268]                                  	@IRInst:sub	%t68	y	%t70
.L41:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t71	i	4
	mov r5,#4                                         	@IRInst:mul	%t71	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t71	i	4
	str r6,[fp,#280]                                  	@IRInst:mul	%t71	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t72	SHIFT_TABLE	%t71
	ldr r5,[fp,#280]                                  	@IRInst:add	%t72	SHIFT_TABLE	%t71
	add r6,r4,r5                                      	@IRInst:add	%t72	SHIFT_TABLE	%t71
	str r6,[fp,#284]                                  	@IRInst:add	%t72	SHIFT_TABLE	%t71
	ldr r4,[fp,#284]                                  	@IRInst:assign	%t73	%t72
	ldr r4,[r4]                                       	@IRInst:assign	%t73	%t72
	str r4,[fp,#288]                                  	@IRInst:assign	%t73	%t72
	mov r4,#1                                         	@IRInst:mul	%t74	1	%t73
	ldr r5,[fp,#288]                                  	@IRInst:mul	%t74	1	%t73
	mul r6,r4,r5                                      	@IRInst:mul	%t74	1	%t73
	str r6,[fp,#292]                                  	@IRInst:mul	%t74	1	%t73
	ldr r4,[fp,#4]                                    	@IRInst:add	%t75	ans	%t74
	ldr r5,[fp,#292]                                  	@IRInst:add	%t75	ans	%t74
	add r6,r4,r5                                      	@IRInst:add	%t75	ans	%t74
	str r6,[fp,#296]                                  	@IRInst:add	%t75	ans	%t74
	ldr r4,[fp,#296]                                  	@IRInst:assign	ans	%t75
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t75
.L42:
.L43:
.L37:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t76	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t76	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t76	x	2
	str r6,[fp,#300]                                  	@IRInst:sdiv	%t76	x	2
	ldr r4,[fp,#300]                                  	@IRInst:assign	x	%t76
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t76
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t77	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t77	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t77	y	2
	str r6,[fp,#304]                                  	@IRInst:sdiv	%t77	y	2
	ldr r4,[fp,#304]                                  	@IRInst:assign	y	%t77
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t77
	ldr r4,[fp,#8]                                    	@IRInst:add	%t78	i	1
	mov r5,#1                                         	@IRInst:add	%t78	i	1
	add r6,r4,r5                                      	@IRInst:add	%t78	i	1
	str r6,[fp,#308]                                  	@IRInst:add	%t78	i	1
	ldr r4,[fp,#308]                                  	@IRInst:assign	i	%t78
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t78
	b .L32                                            
.L34:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#204]                                  	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#196]                                  	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#200]                                  	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L44:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t79	i	16
	mov r5,#16                                        	@IRInst:blt	%t79	i	16
	cmp r4,r5                                         	@IRInst:blt	%t79	i	16
	movlt r6,#1                                       	@IRInst:blt	%t79	i	16
	movge r6,#0                                       	@IRInst:blt	%t79	i	16
	str r6,[fp,#312]                                  	@IRInst:blt	%t79	i	16
	blt .L45                                          
	b .L46                                            
.L45:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t81	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t81	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t81	x	2
	str r6,[fp,#320]                                  	@IRInst:sdiv	%t81	x	2
	ldr r4,[fp,#320]                                  	@IRInst:mul	%t82	%t81	2
	mov r5,#2                                         	@IRInst:mul	%t82	%t81	2
	mul r6,r4,r5                                      	@IRInst:mul	%t82	%t81	2
	str r6,[fp,#324]                                  	@IRInst:mul	%t82	%t81	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t80	x	%t82
	ldr r5,[fp,#324]                                  	@IRInst:sub	%t80	x	%t82
	sub r6,r4,r5                                      	@IRInst:sub	%t80	x	%t82
	str r6,[fp,#316]                                  	@IRInst:sub	%t80	x	%t82
.L50:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t84	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t84	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t84	y	2
	str r6,[fp,#332]                                  	@IRInst:sdiv	%t84	y	2
	ldr r4,[fp,#332]                                  	@IRInst:mul	%t85	%t84	2
	mov r5,#2                                         	@IRInst:mul	%t85	%t84	2
	mul r6,r4,r5                                      	@IRInst:mul	%t85	%t84	2
	str r6,[fp,#336]                                  	@IRInst:mul	%t85	%t84	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t83	y	%t85
	ldr r5,[fp,#336]                                  	@IRInst:sub	%t83	y	%t85
	sub r6,r4,r5                                      	@IRInst:sub	%t83	y	%t85
	str r6,[fp,#328]                                  	@IRInst:sub	%t83	y	%t85
.L47:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t86	i	4
	mov r5,#4                                         	@IRInst:mul	%t86	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t86	i	4
	str r6,[fp,#340]                                  	@IRInst:mul	%t86	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t87	SHIFT_TABLE	%t86
	ldr r5,[fp,#340]                                  	@IRInst:add	%t87	SHIFT_TABLE	%t86
	add r6,r4,r5                                      	@IRInst:add	%t87	SHIFT_TABLE	%t86
	str r6,[fp,#344]                                  	@IRInst:add	%t87	SHIFT_TABLE	%t86
	ldr r4,[fp,#344]                                  	@IRInst:assign	%t88	%t87
	ldr r4,[r4]                                       	@IRInst:assign	%t88	%t87
	str r4,[fp,#348]                                  	@IRInst:assign	%t88	%t87
	mov r4,#1                                         	@IRInst:mul	%t89	1	%t88
	ldr r5,[fp,#348]                                  	@IRInst:mul	%t89	1	%t88
	mul r6,r4,r5                                      	@IRInst:mul	%t89	1	%t88
	str r6,[fp,#352]                                  	@IRInst:mul	%t89	1	%t88
	ldr r4,[fp,#4]                                    	@IRInst:add	%t90	ans	%t89
	ldr r5,[fp,#352]                                  	@IRInst:add	%t90	ans	%t89
	add r6,r4,r5                                      	@IRInst:add	%t90	ans	%t89
	str r6,[fp,#356]                                  	@IRInst:add	%t90	ans	%t89
	ldr r4,[fp,#356]                                  	@IRInst:assign	ans	%t90
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t90
.L48:
.L49:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t91	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t91	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t91	x	2
	str r6,[fp,#360]                                  	@IRInst:sdiv	%t91	x	2
	ldr r4,[fp,#360]                                  	@IRInst:assign	x	%t91
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t91
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t92	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t92	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t92	y	2
	str r6,[fp,#364]                                  	@IRInst:sdiv	%t92	y	2
	ldr r4,[fp,#364]                                  	@IRInst:assign	y	%t92
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t92
	ldr r4,[fp,#8]                                    	@IRInst:add	%t93	i	1
	mov r5,#1                                         	@IRInst:add	%t93	i	1
	add r6,r4,r5                                      	@IRInst:add	%t93	i	1
	str r6,[fp,#368]                                  	@IRInst:add	%t93	i	1
	ldr r4,[fp,#368]                                  	@IRInst:assign	i	%t93
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t93
	b .L44                                            
.L46:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#200]                                  	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t94	1	15
	mov r5,#15                                        	@IRInst:bgt	%t94	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t94	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t94	1	15
	movle r6,#0                                       	@IRInst:bgt	%t94	1	15
	str r6,[fp,#372]                                  	@IRInst:bgt	%t94	1	15
	bgt .L51                                          
	b .L52                                            
.L51:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L53                                            
.L52:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t95	1	4
	mov r5,#4                                         	@IRInst:mul	%t95	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t95	1	4
	str r6,[fp,#376]                                  	@IRInst:mul	%t95	1	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t96	SHIFT_TABLE	%t95
	ldr r5,[fp,#376]                                  	@IRInst:add	%t96	SHIFT_TABLE	%t95
	add r6,r4,r5                                      	@IRInst:add	%t96	SHIFT_TABLE	%t95
	str r6,[fp,#380]                                  	@IRInst:add	%t96	SHIFT_TABLE	%t95
	ldr r4,[fp,#380]                                  	@IRInst:assign	%t97	%t96
	ldr r4,[r4]                                       	@IRInst:assign	%t97	%t96
	str r4,[fp,#384]                                  	@IRInst:assign	%t97	%t96
	ldr r4,[fp,#200]                                  	@IRInst:mul	%t98	c	%t97
	ldr r5,[fp,#384]                                  	@IRInst:mul	%t98	c	%t97
	mul r6,r4,r5                                      	@IRInst:mul	%t98	c	%t97
	str r6,[fp,#388]                                  	@IRInst:mul	%t98	c	%t97
	ldr r4,[fp,#388]                                  	@IRInst:assign	x	%t98
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t98
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L54:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t99	i	16
	mov r5,#16                                        	@IRInst:blt	%t99	i	16
	cmp r4,r5                                         	@IRInst:blt	%t99	i	16
	movlt r6,#1                                       	@IRInst:blt	%t99	i	16
	movge r6,#0                                       	@IRInst:blt	%t99	i	16
	str r6,[fp,#392]                                  	@IRInst:blt	%t99	i	16
	blt .L55                                          
	b .L56                                            
.L55:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t101	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t101	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t101	x	2
	str r6,[fp,#400]                                  	@IRInst:sdiv	%t101	x	2
	ldr r4,[fp,#400]                                  	@IRInst:mul	%t102	%t101	2
	mov r5,#2                                         	@IRInst:mul	%t102	%t101	2
	mul r6,r4,r5                                      	@IRInst:mul	%t102	%t101	2
	str r6,[fp,#404]                                  	@IRInst:mul	%t102	%t101	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t100	x	%t102
	ldr r5,[fp,#404]                                  	@IRInst:sub	%t100	x	%t102
	sub r6,r4,r5                                      	@IRInst:sub	%t100	x	%t102
	str r6,[fp,#396]                                  	@IRInst:sub	%t100	x	%t102
.L60:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t104	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t104	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t104	y	2
	str r6,[fp,#412]                                  	@IRInst:sdiv	%t104	y	2
	ldr r4,[fp,#412]                                  	@IRInst:mul	%t105	%t104	2
	mov r5,#2                                         	@IRInst:mul	%t105	%t104	2
	mul r6,r4,r5                                      	@IRInst:mul	%t105	%t104	2
	str r6,[fp,#416]                                  	@IRInst:mul	%t105	%t104	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t103	y	%t105
	ldr r5,[fp,#416]                                  	@IRInst:sub	%t103	y	%t105
	sub r6,r4,r5                                      	@IRInst:sub	%t103	y	%t105
	str r6,[fp,#408]                                  	@IRInst:sub	%t103	y	%t105
.L57:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t106	i	4
	mov r5,#4                                         	@IRInst:mul	%t106	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t106	i	4
	str r6,[fp,#420]                                  	@IRInst:mul	%t106	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t107	SHIFT_TABLE	%t106
	ldr r5,[fp,#420]                                  	@IRInst:add	%t107	SHIFT_TABLE	%t106
	add r6,r4,r5                                      	@IRInst:add	%t107	SHIFT_TABLE	%t106
	str r6,[fp,#424]                                  	@IRInst:add	%t107	SHIFT_TABLE	%t106
	ldr r4,[fp,#424]                                  	@IRInst:assign	%t108	%t107
	ldr r4,[r4]                                       	@IRInst:assign	%t108	%t107
	str r4,[fp,#428]                                  	@IRInst:assign	%t108	%t107
	mov r4,#1                                         	@IRInst:mul	%t109	1	%t108
	ldr r5,[fp,#428]                                  	@IRInst:mul	%t109	1	%t108
	mul r6,r4,r5                                      	@IRInst:mul	%t109	1	%t108
	str r6,[fp,#432]                                  	@IRInst:mul	%t109	1	%t108
	ldr r4,[fp,#4]                                    	@IRInst:add	%t110	ans	%t109
	ldr r5,[fp,#432]                                  	@IRInst:add	%t110	ans	%t109
	add r6,r4,r5                                      	@IRInst:add	%t110	ans	%t109
	str r6,[fp,#436]                                  	@IRInst:add	%t110	ans	%t109
	ldr r4,[fp,#436]                                  	@IRInst:assign	ans	%t110
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t110
.L58:
.L59:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t111	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t111	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t111	x	2
	str r6,[fp,#440]                                  	@IRInst:sdiv	%t111	x	2
	ldr r4,[fp,#440]                                  	@IRInst:assign	x	%t111
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t111
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t112	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t112	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t112	y	2
	str r6,[fp,#444]                                  	@IRInst:sdiv	%t112	y	2
	ldr r4,[fp,#444]                                  	@IRInst:assign	y	%t112
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t112
	ldr r4,[fp,#8]                                    	@IRInst:add	%t113	i	1
	mov r5,#1                                         	@IRInst:add	%t113	i	1
	add r6,r4,r5                                      	@IRInst:add	%t113	i	1
	str r6,[fp,#448]                                  	@IRInst:add	%t113	i	1
	ldr r4,[fp,#448]                                  	@IRInst:assign	i	%t113
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t113
	b .L54                                            
.L56:
.L53:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#200]                                  	@IRInst:assign	c	ans
	ldr r4,[fp,#204]                                  	@IRInst:assign	al	sum
	str r4,[fp,#196]                                  	@IRInst:assign	al	sum
	b .L29                                            
.L31:
	ldr r4,[fp,#196]                                  	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	mres	ans
	str r4,[fp,#116]                                  	@IRInst:assign	mres	ans
.L27:
.L28:
	ldr r4,[fp,#108]                                  	@IRInst:assign	al	ml
	str r4,[fp,#452]                                  	@IRInst:assign	al	ml
	ldr r4,[fp,#108]                                  	@IRInst:assign	c	ml
	str r4,[fp,#456]                                  	@IRInst:assign	c	ml
.L61:
	ldr r4,[fp,#456]                                  	@IRInst:assign	%t117	c
	str r4,[fp,#464]                                  	@IRInst:assign	%t117	c
	ldr r4,[fp,#464]                                  	@IRInst:not_zero	%t118	%t117	0
	mov r5,#0                                         	@IRInst:not_zero	%t118	%t117	0
	cmp r4,r5                                         	@IRInst:not_zero	%t118	%t117	0
	moveq r6,#0                                       	@IRInst:not_zero	%t118	%t117	0
	movne r6,#1                                       	@IRInst:not_zero	%t118	%t117	0
	str r6,[fp,#468]                                  	@IRInst:not_zero	%t118	%t117	0
	beq .L63                                          
	b .L62                                            
.L62:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#452]                                  	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#456]                                  	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L64:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t119	i	16
	mov r5,#16                                        	@IRInst:blt	%t119	i	16
	cmp r4,r5                                         	@IRInst:blt	%t119	i	16
	movlt r6,#1                                       	@IRInst:blt	%t119	i	16
	movge r6,#0                                       	@IRInst:blt	%t119	i	16
	str r6,[fp,#472]                                  	@IRInst:blt	%t119	i	16
	blt .L65                                          
	b .L66                                            
.L65:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t121	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t121	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t121	x	2
	str r6,[fp,#480]                                  	@IRInst:sdiv	%t121	x	2
	ldr r4,[fp,#480]                                  	@IRInst:mul	%t122	%t121	2
	mov r5,#2                                         	@IRInst:mul	%t122	%t121	2
	mul r6,r4,r5                                      	@IRInst:mul	%t122	%t121	2
	str r6,[fp,#484]                                  	@IRInst:mul	%t122	%t121	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t120	x	%t122
	ldr r5,[fp,#484]                                  	@IRInst:sub	%t120	x	%t122
	sub r6,r4,r5                                      	@IRInst:sub	%t120	x	%t122
	str r6,[fp,#476]                                  	@IRInst:sub	%t120	x	%t122
.L67:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t124	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t124	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t124	y	2
	str r6,[fp,#492]                                  	@IRInst:sdiv	%t124	y	2
	ldr r4,[fp,#492]                                  	@IRInst:mul	%t125	%t124	2
	mov r5,#2                                         	@IRInst:mul	%t125	%t124	2
	mul r6,r4,r5                                      	@IRInst:mul	%t125	%t124	2
	str r6,[fp,#496]                                  	@IRInst:mul	%t125	%t124	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t123	y	%t125
	ldr r5,[fp,#496]                                  	@IRInst:sub	%t123	y	%t125
	sub r6,r4,r5                                      	@IRInst:sub	%t123	y	%t125
	str r6,[fp,#488]                                  	@IRInst:sub	%t123	y	%t125
	ldr r4,[fp,#488]                                  	@IRInst:beq	%t126	%t123	0
	mov r5,#0                                         	@IRInst:beq	%t126	%t123	0
	cmp r4,r5                                         	@IRInst:beq	%t126	%t123	0
	moveq r6,#1                                       	@IRInst:beq	%t126	%t123	0
	movne r6,#0                                       	@IRInst:beq	%t126	%t123	0
	str r6,[fp,#500]                                  	@IRInst:beq	%t126	%t123	0
	beq .L70                                          
	b .L71                                            
.L70:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t127	i	4
	mov r5,#4                                         	@IRInst:mul	%t127	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t127	i	4
	str r6,[fp,#504]                                  	@IRInst:mul	%t127	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t128	SHIFT_TABLE	%t127
	ldr r5,[fp,#504]                                  	@IRInst:add	%t128	SHIFT_TABLE	%t127
	add r6,r4,r5                                      	@IRInst:add	%t128	SHIFT_TABLE	%t127
	str r6,[fp,#508]                                  	@IRInst:add	%t128	SHIFT_TABLE	%t127
	ldr r4,[fp,#508]                                  	@IRInst:assign	%t129	%t128
	ldr r4,[r4]                                       	@IRInst:assign	%t129	%t128
	str r4,[fp,#512]                                  	@IRInst:assign	%t129	%t128
	mov r4,#1                                         	@IRInst:mul	%t130	1	%t129
	ldr r5,[fp,#512]                                  	@IRInst:mul	%t130	1	%t129
	mul r6,r4,r5                                      	@IRInst:mul	%t130	1	%t129
	str r6,[fp,#516]                                  	@IRInst:mul	%t130	1	%t129
	ldr r4,[fp,#4]                                    	@IRInst:add	%t131	ans	%t130
	ldr r5,[fp,#516]                                  	@IRInst:add	%t131	ans	%t130
	add r6,r4,r5                                      	@IRInst:add	%t131	ans	%t130
	str r6,[fp,#520]                                  	@IRInst:add	%t131	ans	%t130
	ldr r4,[fp,#520]                                  	@IRInst:assign	ans	%t131
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t131
.L71:
.L72:
	b .L69                                            
.L68:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t133	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t133	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t133	y	2
	str r6,[fp,#528]                                  	@IRInst:sdiv	%t133	y	2
	ldr r4,[fp,#528]                                  	@IRInst:mul	%t134	%t133	2
	mov r5,#2                                         	@IRInst:mul	%t134	%t133	2
	mul r6,r4,r5                                      	@IRInst:mul	%t134	%t133	2
	str r6,[fp,#532]                                  	@IRInst:mul	%t134	%t133	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t132	y	%t134
	ldr r5,[fp,#532]                                  	@IRInst:sub	%t132	y	%t134
	sub r6,r4,r5                                      	@IRInst:sub	%t132	y	%t134
	str r6,[fp,#524]                                  	@IRInst:sub	%t132	y	%t134
.L73:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t135	i	4
	mov r5,#4                                         	@IRInst:mul	%t135	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t135	i	4
	str r6,[fp,#536]                                  	@IRInst:mul	%t135	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t136	SHIFT_TABLE	%t135
	ldr r5,[fp,#536]                                  	@IRInst:add	%t136	SHIFT_TABLE	%t135
	add r6,r4,r5                                      	@IRInst:add	%t136	SHIFT_TABLE	%t135
	str r6,[fp,#540]                                  	@IRInst:add	%t136	SHIFT_TABLE	%t135
	ldr r4,[fp,#540]                                  	@IRInst:assign	%t137	%t136
	ldr r4,[r4]                                       	@IRInst:assign	%t137	%t136
	str r4,[fp,#544]                                  	@IRInst:assign	%t137	%t136
	mov r4,#1                                         	@IRInst:mul	%t138	1	%t137
	ldr r5,[fp,#544]                                  	@IRInst:mul	%t138	1	%t137
	mul r6,r4,r5                                      	@IRInst:mul	%t138	1	%t137
	str r6,[fp,#548]                                  	@IRInst:mul	%t138	1	%t137
	ldr r4,[fp,#4]                                    	@IRInst:add	%t139	ans	%t138
	ldr r5,[fp,#548]                                  	@IRInst:add	%t139	ans	%t138
	add r6,r4,r5                                      	@IRInst:add	%t139	ans	%t138
	str r6,[fp,#552]                                  	@IRInst:add	%t139	ans	%t138
	ldr r4,[fp,#552]                                  	@IRInst:assign	ans	%t139
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t139
.L74:
.L75:
.L69:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t140	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t140	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t140	x	2
	str r6,[fp,#556]                                  	@IRInst:sdiv	%t140	x	2
	ldr r4,[fp,#556]                                  	@IRInst:assign	x	%t140
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t140
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t141	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t141	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t141	y	2
	str r6,[fp,#560]                                  	@IRInst:sdiv	%t141	y	2
	ldr r4,[fp,#560]                                  	@IRInst:assign	y	%t141
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t141
	ldr r4,[fp,#8]                                    	@IRInst:add	%t142	i	1
	mov r5,#1                                         	@IRInst:add	%t142	i	1
	add r6,r4,r5                                      	@IRInst:add	%t142	i	1
	str r6,[fp,#564]                                  	@IRInst:add	%t142	i	1
	ldr r4,[fp,#564]                                  	@IRInst:assign	i	%t142
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t142
	b .L64                                            
.L66:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#460]                                  	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#452]                                  	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#456]                                  	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L76:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t143	i	16
	mov r5,#16                                        	@IRInst:blt	%t143	i	16
	cmp r4,r5                                         	@IRInst:blt	%t143	i	16
	movlt r6,#1                                       	@IRInst:blt	%t143	i	16
	movge r6,#0                                       	@IRInst:blt	%t143	i	16
	str r6,[fp,#568]                                  	@IRInst:blt	%t143	i	16
	blt .L77                                          
	b .L78                                            
.L77:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t145	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t145	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t145	x	2
	str r6,[fp,#576]                                  	@IRInst:sdiv	%t145	x	2
	ldr r4,[fp,#576]                                  	@IRInst:mul	%t146	%t145	2
	mov r5,#2                                         	@IRInst:mul	%t146	%t145	2
	mul r6,r4,r5                                      	@IRInst:mul	%t146	%t145	2
	str r6,[fp,#580]                                  	@IRInst:mul	%t146	%t145	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t144	x	%t146
	ldr r5,[fp,#580]                                  	@IRInst:sub	%t144	x	%t146
	sub r6,r4,r5                                      	@IRInst:sub	%t144	x	%t146
	str r6,[fp,#572]                                  	@IRInst:sub	%t144	x	%t146
.L82:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t148	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t148	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t148	y	2
	str r6,[fp,#588]                                  	@IRInst:sdiv	%t148	y	2
	ldr r4,[fp,#588]                                  	@IRInst:mul	%t149	%t148	2
	mov r5,#2                                         	@IRInst:mul	%t149	%t148	2
	mul r6,r4,r5                                      	@IRInst:mul	%t149	%t148	2
	str r6,[fp,#592]                                  	@IRInst:mul	%t149	%t148	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t147	y	%t149
	ldr r5,[fp,#592]                                  	@IRInst:sub	%t147	y	%t149
	sub r6,r4,r5                                      	@IRInst:sub	%t147	y	%t149
	str r6,[fp,#584]                                  	@IRInst:sub	%t147	y	%t149
.L79:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t150	i	4
	mov r5,#4                                         	@IRInst:mul	%t150	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t150	i	4
	str r6,[fp,#596]                                  	@IRInst:mul	%t150	i	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t151	SHIFT_TABLE	%t150
	ldr r5,[fp,#596]                                  	@IRInst:add	%t151	SHIFT_TABLE	%t150
	add r6,r4,r5                                      	@IRInst:add	%t151	SHIFT_TABLE	%t150
	str r6,[fp,#600]                                  	@IRInst:add	%t151	SHIFT_TABLE	%t150
	ldr r4,[fp,#600]                                  	@IRInst:assign	%t152	%t151
	ldr r4,[r4]                                       	@IRInst:assign	%t152	%t151
	str r4,[fp,#604]                                  	@IRInst:assign	%t152	%t151
	mov r4,#1                                         	@IRInst:mul	%t153	1	%t152
	ldr r5,[fp,#604]                                  	@IRInst:mul	%t153	1	%t152
	mul r6,r4,r5                                      	@IRInst:mul	%t153	1	%t152
	str r6,[fp,#608]                                  	@IRInst:mul	%t153	1	%t152
	ldr r4,[fp,#4]                                    	@IRInst:add	%t154	ans	%t153
	ldr r5,[fp,#608]                                  	@IRInst:add	%t154	ans	%t153
	add r6,r4,r5                                      	@IRInst:add	%t154	ans	%t153
	str r6,[fp,#612]                                  	@IRInst:add	%t154	ans	%t153
	ldr r4,[fp,#612]                                  	@IRInst:assign	ans	%t154
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t154
.L80:
.L81:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t155	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t155	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t155	x	2
	str r6,[fp,#616]                                  	@IRInst:sdiv	%t155	x	2
	ldr r4,[fp,#616]                                  	@IRInst:assign	x	%t155
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t155
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t156	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t156	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t156	y	2
	str r6,[fp,#620]                                  	@IRInst:sdiv	%t156	y	2
	ldr r4,[fp,#620]                                  	@IRInst:assign	y	%t156
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t156
	ldr r4,[fp,#8]                                    	@IRInst:add	%t157	i	1
	mov r5,#1                                         	@IRInst:add	%t157	i	1
	add r6,r4,r5                                      	@IRInst:add	%t157	i	1
	str r6,[fp,#624]                                  	@IRInst:add	%t157	i	1
	ldr r4,[fp,#624]                                  	@IRInst:assign	i	%t157
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t157
	b .L76                                            
.L78:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#456]                                  	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t158	1	15
	mov r5,#15                                        	@IRInst:bgt	%t158	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t158	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t158	1	15
	movle r6,#0                                       	@IRInst:bgt	%t158	1	15
	str r6,[fp,#628]                                  	@IRInst:bgt	%t158	1	15
	bgt .L83                                          
	b .L84                                            
.L83:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L85                                            
.L84:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t159	1	4
	mov r5,#4                                         	@IRInst:mul	%t159	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t159	1	4
	str r6,[fp,#632]                                  	@IRInst:mul	%t159	1	4
	ldr r4,.global_0_SHIFT_TABLE                      	@IRInst:add	%t160	SHIFT_TABLE	%t159
	ldr r5,[fp,#632]                                  	@IRInst:add	%t160	SHIFT_TABLE	%t159
	add r6,r4,r5                                      	@IRInst:add	%t160	SHIFT_TABLE	%t159
	str r6,[fp,#636]                                  	@IRInst:add	%t160	SHIFT_TABLE	%t159
	ldr r4,[fp,#636]                                  	@IRInst:assign	%t161	%t160
	ldr r4,[r4]                                       	@IRInst:assign	%t161	%t160
	str r4,[fp,#640]                                  	@IRInst:assign	%t161	%t160
	ldr r4,[fp,#456]                                  	@IRInst:mul	%t162	c	%t161
	ldr r5,[fp,#640]                                  	@IRInst:mul	%t162	c	%t161
	mul r6,r4,r5                                      	@IRInst:mul	%t162	c	%t161
	str r6,[fp,#644]                                  	@IRInst:mul	%t162	c	%t161
	ldr r4,[fp,#644]                                  	@IRInst:assign	x	%t162
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t162
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L86:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t163	i	16
	mov r5,#16                                        	@IRInst:blt	%t163	i	16
	cmp r4,r5                                         	@IRInst:blt	%t163	i	16
	movlt r6,#1                                       	@IRInst:blt	%t163	i	16
	movge r6,#0                                       	@IRInst:blt	%t163	i	16
	str r6,[fp,#648]                                  	@IRInst:blt	%t163	i	16
	blt .L87                                          
	b .L88                                            
.L87:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t165	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t165	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t165	x	2
	str r6,[fp,#656]                                  	@IRInst:sdiv	%t165	x	2
	ldr r4,[fp,#656]                                  	@IRInst:mul	%t166	%t165	2
	mov r5,#2                                         	@IRInst:mul	%t166	%t165	2
	mul r6,r4,r5                                      	@IRInst:mul	%t166	%t165	2
	str r6,[fp,#660]                                  	@IRInst:mul	%t166	%t165	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t164	x	%t166
	ldr r5,[fp,#660]                                  	@IRInst:sub	%t164	x	%t166
	sub r6,r4,r5                                      	@IRInst:sub	%t164	x	%t166
	str r6,[fp,#652]                                  	@IRInst:sub	%t164	x	%t166
.global_1_SHIFT_TABLE:
        .long   SHIFT_TABLE
.L92:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t168	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t168	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t168	y	2
	str r6,[fp,#668]                                  	@IRInst:sdiv	%t168	y	2
	ldr r4,[fp,#668]                                  	@IRInst:mul	%t169	%t168	2
	mov r5,#2                                         	@IRInst:mul	%t169	%t168	2
	mul r6,r4,r5                                      	@IRInst:mul	%t169	%t168	2
	str r6,[fp,#672]                                  	@IRInst:mul	%t169	%t168	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t167	y	%t169
	ldr r5,[fp,#672]                                  	@IRInst:sub	%t167	y	%t169
	sub r6,r4,r5                                      	@IRInst:sub	%t167	y	%t169
	str r6,[fp,#664]                                  	@IRInst:sub	%t167	y	%t169
.L89:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t170	i	4
	mov r5,#4                                         	@IRInst:mul	%t170	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t170	i	4
	str r6,[fp,#676]                                  	@IRInst:mul	%t170	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t171	SHIFT_TABLE	%t170
	ldr r5,[fp,#676]                                  	@IRInst:add	%t171	SHIFT_TABLE	%t170
	add r6,r4,r5                                      	@IRInst:add	%t171	SHIFT_TABLE	%t170
	str r6,[fp,#680]                                  	@IRInst:add	%t171	SHIFT_TABLE	%t170
	ldr r4,[fp,#680]                                  	@IRInst:assign	%t172	%t171
	ldr r4,[r4]                                       	@IRInst:assign	%t172	%t171
	str r4,[fp,#684]                                  	@IRInst:assign	%t172	%t171
	mov r4,#1                                         	@IRInst:mul	%t173	1	%t172
	ldr r5,[fp,#684]                                  	@IRInst:mul	%t173	1	%t172
	mul r6,r4,r5                                      	@IRInst:mul	%t173	1	%t172
	str r6,[fp,#688]                                  	@IRInst:mul	%t173	1	%t172
	ldr r4,[fp,#4]                                    	@IRInst:add	%t174	ans	%t173
	ldr r5,[fp,#688]                                  	@IRInst:add	%t174	ans	%t173
	add r6,r4,r5                                      	@IRInst:add	%t174	ans	%t173
	str r6,[fp,#692]                                  	@IRInst:add	%t174	ans	%t173
	ldr r4,[fp,#692]                                  	@IRInst:assign	ans	%t174
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t174
.L90:
.L91:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t175	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t175	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t175	x	2
	str r6,[fp,#696]                                  	@IRInst:sdiv	%t175	x	2
	ldr r4,[fp,#696]                                  	@IRInst:assign	x	%t175
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t175
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t176	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t176	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t176	y	2
	str r6,[fp,#700]                                  	@IRInst:sdiv	%t176	y	2
	ldr r4,[fp,#700]                                  	@IRInst:assign	y	%t176
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t176
	ldr r4,[fp,#8]                                    	@IRInst:add	%t177	i	1
	mov r5,#1                                         	@IRInst:add	%t177	i	1
	add r6,r4,r5                                      	@IRInst:add	%t177	i	1
	str r6,[fp,#704]                                  	@IRInst:add	%t177	i	1
	ldr r4,[fp,#704]                                  	@IRInst:assign	i	%t177
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t177
	b .L86                                            
.L88:
.L85:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#456]                                  	@IRInst:assign	c	ans
	ldr r4,[fp,#460]                                  	@IRInst:assign	al	sum
	str r4,[fp,#452]                                  	@IRInst:assign	al	sum
	b .L61                                            
.L63:
	ldr r4,[fp,#452]                                  	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	ml	ans
	str r4,[fp,#108]                                  	@IRInst:assign	ml	ans
	ldr r4,[fp,#112]                                  	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t178	y	15
	mov r5,#15                                        	@IRInst:bge	%t178	y	15
	cmp r4,r5                                         	@IRInst:bge	%t178	y	15
	movge r6,#1                                       	@IRInst:bge	%t178	y	15
	movlt r6,#0                                       	@IRInst:bge	%t178	y	15
	str r6,[fp,#708]                                  	@IRInst:bge	%t178	y	15
	bge .L93                                          
	b .L94                                            
.L93:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t179	x	0
	mov r5,#0                                         	@IRInst:blt	%t179	x	0
	cmp r4,r5                                         	@IRInst:blt	%t179	x	0
	movlt r6,#1                                       	@IRInst:blt	%t179	x	0
	movge r6,#0                                       	@IRInst:blt	%t179	x	0
	str r6,[fp,#712]                                  	@IRInst:blt	%t179	x	0
	blt .L96                                          
	b .L97                                            
.L96:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L98                                            
.L97:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L98:
	b .L95                                            
.L94:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t180	y	0
	mov r5,#0                                         	@IRInst:bgt	%t180	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t180	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t180	y	0
	movle r6,#0                                       	@IRInst:bgt	%t180	y	0
	str r6,[fp,#716]                                  	@IRInst:bgt	%t180	y	0
	bgt .L99                                          
	b .L100                                           
.L99:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t181	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t181	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t181	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t181	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t181	x	32767
	str r6,[fp,#720]                                  	@IRInst:bgt	%t181	x	32767
	bgt .L102                                         
	b .L103                                           
.L102:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t182	y	4
	mov r5,#4                                         	@IRInst:mul	%t182	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t182	y	4
	str r6,[fp,#724]                                  	@IRInst:mul	%t182	y	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t183	SHIFT_TABLE	%t182
	ldr r5,[fp,#724]                                  	@IRInst:add	%t183	SHIFT_TABLE	%t182
	add r6,r4,r5                                      	@IRInst:add	%t183	SHIFT_TABLE	%t182
	str r6,[fp,#728]                                  	@IRInst:add	%t183	SHIFT_TABLE	%t182
	ldr r4,[fp,#728]                                  	@IRInst:assign	%t184	%t183
	ldr r4,[r4]                                       	@IRInst:assign	%t184	%t183
	str r4,[fp,#732]                                  	@IRInst:assign	%t184	%t183
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t185	x	%t184
	ldr r5,[fp,#732]                                  	@IRInst:sdiv	%t185	x	%t184
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t185	x	%t184
	str r6,[fp,#736]                                  	@IRInst:sdiv	%t185	x	%t184
	ldr r4,[fp,#736]                                  	@IRInst:assign	x	%t185
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t185
	ldr r4,[fp,#12]                                   	@IRInst:add	%t186	x	65536
	mov r5,#65536                                     	@IRInst:add	%t186	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t186	x	65536
	str r6,[fp,#740]                                  	@IRInst:add	%t186	x	65536
	mov r4,#15                                        	@IRInst:sub	%t188	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t188	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t188	15	y
	str r6,[fp,#748]                                  	@IRInst:sub	%t188	15	y
	ldr r4,[fp,#748]                                  	@IRInst:add	%t189	%t188	1
	mov r5,#1                                         	@IRInst:add	%t189	%t188	1
	add r6,r4,r5                                      	@IRInst:add	%t189	%t188	1
	str r6,[fp,#752]                                  	@IRInst:add	%t189	%t188	1
	ldr r4,[fp,#752]                                  	@IRInst:mul	%t187	%t189	4
	mov r5,#4                                         	@IRInst:mul	%t187	%t189	4
	mul r6,r4,r5                                      	@IRInst:mul	%t187	%t189	4
	str r6,[fp,#744]                                  	@IRInst:mul	%t187	%t189	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t190	SHIFT_TABLE	%t187
	ldr r5,[fp,#744]                                  	@IRInst:add	%t190	SHIFT_TABLE	%t187
	add r6,r4,r5                                      	@IRInst:add	%t190	SHIFT_TABLE	%t187
	str r6,[fp,#756]                                  	@IRInst:add	%t190	SHIFT_TABLE	%t187
	ldr r4,[fp,#756]                                  	@IRInst:assign	%t191	%t190
	ldr r4,[r4]                                       	@IRInst:assign	%t191	%t190
	str r4,[fp,#760]                                  	@IRInst:assign	%t191	%t190
	ldr r4,[fp,#740]                                  	@IRInst:sub	%t192	%t186	%t191
	ldr r5,[fp,#760]                                  	@IRInst:sub	%t192	%t186	%t191
	sub r6,r4,r5                                      	@IRInst:sub	%t192	%t186	%t191
	str r6,[fp,#764]                                  	@IRInst:sub	%t192	%t186	%t191
	ldr r4,[fp,#764]                                  	@IRInst:assign	ans	%t192
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t192
	b .L104                                           
.L103:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t193	y	4
	mov r5,#4                                         	@IRInst:mul	%t193	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t193	y	4
	str r6,[fp,#768]                                  	@IRInst:mul	%t193	y	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t194	SHIFT_TABLE	%t193
	ldr r5,[fp,#768]                                  	@IRInst:add	%t194	SHIFT_TABLE	%t193
	add r6,r4,r5                                      	@IRInst:add	%t194	SHIFT_TABLE	%t193
	str r6,[fp,#772]                                  	@IRInst:add	%t194	SHIFT_TABLE	%t193
	ldr r4,[fp,#772]                                  	@IRInst:assign	%t195	%t194
	ldr r4,[r4]                                       	@IRInst:assign	%t195	%t194
	str r4,[fp,#776]                                  	@IRInst:assign	%t195	%t194
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t196	x	%t195
	ldr r5,[fp,#776]                                  	@IRInst:sdiv	%t196	x	%t195
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t196	x	%t195
	str r6,[fp,#780]                                  	@IRInst:sdiv	%t196	x	%t195
	ldr r4,[fp,#780]                                  	@IRInst:assign	ans	%t196
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t196
.L104:
	b .L101                                           
.L100:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L101:
.L95:
	ldr r4,[fp,#4]                                    	@IRInst:assign	mr	ans
	str r4,[fp,#112]                                  	@IRInst:assign	mr	ans
	b .L16                                            
.L18:
	ldr r4,[fp,#116]                                  	@IRInst:assign	ans	mres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	mres
	ldr r4,[fp,#4]                                    	@IRInst:assign	pres	ans
	str r4,[fp,#32]                                   	@IRInst:assign	pres	ans
.L14:
.L15:
	ldr r4,[fp,#24]                                   	@IRInst:assign	ml	pl
	str r4,[fp,#784]                                  	@IRInst:assign	ml	pl
	ldr r4,[fp,#24]                                   	@IRInst:assign	mr	pl
	str r4,[fp,#788]                                  	@IRInst:assign	mr	pl
	mov r4,#0                                         	@IRInst:assign	mres	0
	str r4,[fp,#792]                                  	@IRInst:assign	mres	0
.L105:
	ldr r4,[fp,#788]                                  	@IRInst:assign	%t200	mr
	str r4,[fp,#796]                                  	@IRInst:assign	%t200	mr
	ldr r4,[fp,#796]                                  	@IRInst:not_zero	%t201	%t200	0
	mov r5,#0                                         	@IRInst:not_zero	%t201	%t200	0
	cmp r4,r5                                         	@IRInst:not_zero	%t201	%t200	0
	moveq r6,#0                                       	@IRInst:not_zero	%t201	%t200	0
	movne r6,#1                                       	@IRInst:not_zero	%t201	%t200	0
	str r6,[fp,#800]                                  	@IRInst:not_zero	%t201	%t200	0
	beq .L107                                         
	b .L106                                           
.L106:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#788]                                  	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L108:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t202	i	16
	mov r5,#16                                        	@IRInst:blt	%t202	i	16
	cmp r4,r5                                         	@IRInst:blt	%t202	i	16
	movlt r6,#1                                       	@IRInst:blt	%t202	i	16
	movge r6,#0                                       	@IRInst:blt	%t202	i	16
	str r6,[fp,#804]                                  	@IRInst:blt	%t202	i	16
	blt .L109                                         
	b .L110                                           
.L109:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t204	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t204	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t204	x	2
	str r6,[fp,#812]                                  	@IRInst:sdiv	%t204	x	2
	ldr r4,[fp,#812]                                  	@IRInst:mul	%t205	%t204	2
	mov r5,#2                                         	@IRInst:mul	%t205	%t204	2
	mul r6,r4,r5                                      	@IRInst:mul	%t205	%t204	2
	str r6,[fp,#816]                                  	@IRInst:mul	%t205	%t204	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t203	x	%t205
	ldr r5,[fp,#816]                                  	@IRInst:sub	%t203	x	%t205
	sub r6,r4,r5                                      	@IRInst:sub	%t203	x	%t205
	str r6,[fp,#808]                                  	@IRInst:sub	%t203	x	%t205
.L114:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t207	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t207	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t207	y	2
	str r6,[fp,#824]                                  	@IRInst:sdiv	%t207	y	2
	ldr r4,[fp,#824]                                  	@IRInst:mul	%t208	%t207	2
	mov r5,#2                                         	@IRInst:mul	%t208	%t207	2
	mul r6,r4,r5                                      	@IRInst:mul	%t208	%t207	2
	str r6,[fp,#828]                                  	@IRInst:mul	%t208	%t207	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t206	y	%t208
	ldr r5,[fp,#828]                                  	@IRInst:sub	%t206	y	%t208
	sub r6,r4,r5                                      	@IRInst:sub	%t206	y	%t208
	str r6,[fp,#820]                                  	@IRInst:sub	%t206	y	%t208
.L111:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t209	i	4
	mov r5,#4                                         	@IRInst:mul	%t209	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t209	i	4
	str r6,[fp,#832]                                  	@IRInst:mul	%t209	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t210	SHIFT_TABLE	%t209
	ldr r5,[fp,#832]                                  	@IRInst:add	%t210	SHIFT_TABLE	%t209
	add r6,r4,r5                                      	@IRInst:add	%t210	SHIFT_TABLE	%t209
	str r6,[fp,#836]                                  	@IRInst:add	%t210	SHIFT_TABLE	%t209
	ldr r4,[fp,#836]                                  	@IRInst:assign	%t211	%t210
	ldr r4,[r4]                                       	@IRInst:assign	%t211	%t210
	str r4,[fp,#840]                                  	@IRInst:assign	%t211	%t210
	mov r4,#1                                         	@IRInst:mul	%t212	1	%t211
	ldr r5,[fp,#840]                                  	@IRInst:mul	%t212	1	%t211
	mul r6,r4,r5                                      	@IRInst:mul	%t212	1	%t211
	str r6,[fp,#844]                                  	@IRInst:mul	%t212	1	%t211
	ldr r4,[fp,#4]                                    	@IRInst:add	%t213	ans	%t212
	ldr r5,[fp,#844]                                  	@IRInst:add	%t213	ans	%t212
	add r6,r4,r5                                      	@IRInst:add	%t213	ans	%t212
	str r6,[fp,#848]                                  	@IRInst:add	%t213	ans	%t212
	ldr r4,[fp,#848]                                  	@IRInst:assign	ans	%t213
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t213
.L112:
.L113:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t214	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t214	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t214	x	2
	str r6,[fp,#852]                                  	@IRInst:sdiv	%t214	x	2
	ldr r4,[fp,#852]                                  	@IRInst:assign	x	%t214
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t214
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t215	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t215	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t215	y	2
	str r6,[fp,#856]                                  	@IRInst:sdiv	%t215	y	2
	ldr r4,[fp,#856]                                  	@IRInst:assign	y	%t215
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t215
	ldr r4,[fp,#8]                                    	@IRInst:add	%t216	i	1
	mov r5,#1                                         	@IRInst:add	%t216	i	1
	add r6,r4,r5                                      	@IRInst:add	%t216	i	1
	str r6,[fp,#860]                                  	@IRInst:add	%t216	i	1
	ldr r4,[fp,#860]                                  	@IRInst:assign	i	%t216
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t216
	b .L108                                           
.L110:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t217	ans
	str r4,[fp,#864]                                  	@IRInst:assign	%t217	ans
	ldr r4,[fp,#864]                                  	@IRInst:not_zero	%t218	%t217	0
	mov r5,#0                                         	@IRInst:not_zero	%t218	%t217	0
	cmp r4,r5                                         	@IRInst:not_zero	%t218	%t217	0
	moveq r6,#0                                       	@IRInst:not_zero	%t218	%t217	0
	movne r6,#1                                       	@IRInst:not_zero	%t218	%t217	0
	str r6,[fp,#868]                                  	@IRInst:not_zero	%t218	%t217	0
	beq .L116                                         
	b .L115                                           
.L115:
	ldr r4,[fp,#792]                                  	@IRInst:assign	al	mres
	str r4,[fp,#872]                                  	@IRInst:assign	al	mres
	ldr r4,[fp,#784]                                  	@IRInst:assign	c	ml
	str r4,[fp,#876]                                  	@IRInst:assign	c	ml
.L118:
	ldr r4,[fp,#876]                                  	@IRInst:assign	%t222	c
	str r4,[fp,#884]                                  	@IRInst:assign	%t222	c
	ldr r4,[fp,#884]                                  	@IRInst:not_zero	%t223	%t222	0
	mov r5,#0                                         	@IRInst:not_zero	%t223	%t222	0
	cmp r4,r5                                         	@IRInst:not_zero	%t223	%t222	0
	moveq r6,#0                                       	@IRInst:not_zero	%t223	%t222	0
	movne r6,#1                                       	@IRInst:not_zero	%t223	%t222	0
	str r6,[fp,#888]                                  	@IRInst:not_zero	%t223	%t222	0
	beq .L120                                         
	b .L119                                           
.L119:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#872]                                  	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#876]                                  	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L121:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t224	i	16
	mov r5,#16                                        	@IRInst:blt	%t224	i	16
	cmp r4,r5                                         	@IRInst:blt	%t224	i	16
	movlt r6,#1                                       	@IRInst:blt	%t224	i	16
	movge r6,#0                                       	@IRInst:blt	%t224	i	16
	str r6,[fp,#892]                                  	@IRInst:blt	%t224	i	16
	blt .L122                                         
	b .L123                                           
.L122:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t226	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t226	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t226	x	2
	str r6,[fp,#900]                                  	@IRInst:sdiv	%t226	x	2
	ldr r4,[fp,#900]                                  	@IRInst:mul	%t227	%t226	2
	mov r5,#2                                         	@IRInst:mul	%t227	%t226	2
	mul r6,r4,r5                                      	@IRInst:mul	%t227	%t226	2
	str r6,[fp,#904]                                  	@IRInst:mul	%t227	%t226	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t225	x	%t227
	ldr r5,[fp,#904]                                  	@IRInst:sub	%t225	x	%t227
	sub r6,r4,r5                                      	@IRInst:sub	%t225	x	%t227
	str r6,[fp,#896]                                  	@IRInst:sub	%t225	x	%t227
.L124:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t229	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t229	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t229	y	2
	str r6,[fp,#912]                                  	@IRInst:sdiv	%t229	y	2
	ldr r4,[fp,#912]                                  	@IRInst:mul	%t230	%t229	2
	mov r5,#2                                         	@IRInst:mul	%t230	%t229	2
	mul r6,r4,r5                                      	@IRInst:mul	%t230	%t229	2
	str r6,[fp,#916]                                  	@IRInst:mul	%t230	%t229	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t228	y	%t230
	ldr r5,[fp,#916]                                  	@IRInst:sub	%t228	y	%t230
	sub r6,r4,r5                                      	@IRInst:sub	%t228	y	%t230
	str r6,[fp,#908]                                  	@IRInst:sub	%t228	y	%t230
	ldr r4,[fp,#908]                                  	@IRInst:beq	%t231	%t228	0
	mov r5,#0                                         	@IRInst:beq	%t231	%t228	0
	cmp r4,r5                                         	@IRInst:beq	%t231	%t228	0
	moveq r6,#1                                       	@IRInst:beq	%t231	%t228	0
	movne r6,#0                                       	@IRInst:beq	%t231	%t228	0
	str r6,[fp,#920]                                  	@IRInst:beq	%t231	%t228	0
	beq .L127                                         
	b .L128                                           
.L127:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t232	i	4
	mov r5,#4                                         	@IRInst:mul	%t232	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t232	i	4
	str r6,[fp,#924]                                  	@IRInst:mul	%t232	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t233	SHIFT_TABLE	%t232
	ldr r5,[fp,#924]                                  	@IRInst:add	%t233	SHIFT_TABLE	%t232
	add r6,r4,r5                                      	@IRInst:add	%t233	SHIFT_TABLE	%t232
	str r6,[fp,#928]                                  	@IRInst:add	%t233	SHIFT_TABLE	%t232
	ldr r4,[fp,#928]                                  	@IRInst:assign	%t234	%t233
	ldr r4,[r4]                                       	@IRInst:assign	%t234	%t233
	str r4,[fp,#932]                                  	@IRInst:assign	%t234	%t233
	mov r4,#1                                         	@IRInst:mul	%t235	1	%t234
	ldr r5,[fp,#932]                                  	@IRInst:mul	%t235	1	%t234
	mul r6,r4,r5                                      	@IRInst:mul	%t235	1	%t234
	str r6,[fp,#936]                                  	@IRInst:mul	%t235	1	%t234
	ldr r4,[fp,#4]                                    	@IRInst:add	%t236	ans	%t235
	ldr r5,[fp,#936]                                  	@IRInst:add	%t236	ans	%t235
	add r6,r4,r5                                      	@IRInst:add	%t236	ans	%t235
	str r6,[fp,#940]                                  	@IRInst:add	%t236	ans	%t235
	ldr r4,[fp,#940]                                  	@IRInst:assign	ans	%t236
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t236
.L128:
.L129:
	b .L126                                           
.L125:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t238	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t238	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t238	y	2
	str r6,[fp,#948]                                  	@IRInst:sdiv	%t238	y	2
	ldr r4,[fp,#948]                                  	@IRInst:mul	%t239	%t238	2
	mov r5,#2                                         	@IRInst:mul	%t239	%t238	2
	mul r6,r4,r5                                      	@IRInst:mul	%t239	%t238	2
	str r6,[fp,#952]                                  	@IRInst:mul	%t239	%t238	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t237	y	%t239
	ldr r5,[fp,#952]                                  	@IRInst:sub	%t237	y	%t239
	sub r6,r4,r5                                      	@IRInst:sub	%t237	y	%t239
	str r6,[fp,#944]                                  	@IRInst:sub	%t237	y	%t239
.L130:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t240	i	4
	mov r5,#4                                         	@IRInst:mul	%t240	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t240	i	4
	str r6,[fp,#956]                                  	@IRInst:mul	%t240	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t241	SHIFT_TABLE	%t240
	ldr r5,[fp,#956]                                  	@IRInst:add	%t241	SHIFT_TABLE	%t240
	add r6,r4,r5                                      	@IRInst:add	%t241	SHIFT_TABLE	%t240
	str r6,[fp,#960]                                  	@IRInst:add	%t241	SHIFT_TABLE	%t240
	ldr r4,[fp,#960]                                  	@IRInst:assign	%t242	%t241
	ldr r4,[r4]                                       	@IRInst:assign	%t242	%t241
	str r4,[fp,#964]                                  	@IRInst:assign	%t242	%t241
	mov r4,#1                                         	@IRInst:mul	%t243	1	%t242
	ldr r5,[fp,#964]                                  	@IRInst:mul	%t243	1	%t242
	mul r6,r4,r5                                      	@IRInst:mul	%t243	1	%t242
	str r6,[fp,#968]                                  	@IRInst:mul	%t243	1	%t242
	ldr r4,[fp,#4]                                    	@IRInst:add	%t244	ans	%t243
	ldr r5,[fp,#968]                                  	@IRInst:add	%t244	ans	%t243
	add r6,r4,r5                                      	@IRInst:add	%t244	ans	%t243
	str r6,[fp,#972]                                  	@IRInst:add	%t244	ans	%t243
	ldr r4,[fp,#972]                                  	@IRInst:assign	ans	%t244
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t244
.L131:
.L132:
.L126:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t245	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t245	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t245	x	2
	str r6,[fp,#976]                                  	@IRInst:sdiv	%t245	x	2
	ldr r4,[fp,#976]                                  	@IRInst:assign	x	%t245
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t245
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t246	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t246	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t246	y	2
	str r6,[fp,#980]                                  	@IRInst:sdiv	%t246	y	2
	ldr r4,[fp,#980]                                  	@IRInst:assign	y	%t246
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t246
	ldr r4,[fp,#8]                                    	@IRInst:add	%t247	i	1
	mov r5,#1                                         	@IRInst:add	%t247	i	1
	add r6,r4,r5                                      	@IRInst:add	%t247	i	1
	str r6,[fp,#984]                                  	@IRInst:add	%t247	i	1
	ldr r4,[fp,#984]                                  	@IRInst:assign	i	%t247
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t247
	b .L121                                           
.L123:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#880]                                  	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#872]                                  	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#876]                                  	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L133:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t248	i	16
	mov r5,#16                                        	@IRInst:blt	%t248	i	16
	cmp r4,r5                                         	@IRInst:blt	%t248	i	16
	movlt r6,#1                                       	@IRInst:blt	%t248	i	16
	movge r6,#0                                       	@IRInst:blt	%t248	i	16
	str r6,[fp,#988]                                  	@IRInst:blt	%t248	i	16
	blt .L134                                         
	b .L135                                           
.L134:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t250	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t250	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t250	x	2
	str r6,[fp,#996]                                  	@IRInst:sdiv	%t250	x	2
	ldr r4,[fp,#996]                                  	@IRInst:mul	%t251	%t250	2
	mov r5,#2                                         	@IRInst:mul	%t251	%t250	2
	mul r6,r4,r5                                      	@IRInst:mul	%t251	%t250	2
	str r6,[fp,#1000]                                 	@IRInst:mul	%t251	%t250	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t249	x	%t251
	ldr r5,[fp,#1000]                                 	@IRInst:sub	%t249	x	%t251
	sub r6,r4,r5                                      	@IRInst:sub	%t249	x	%t251
	str r6,[fp,#992]                                  	@IRInst:sub	%t249	x	%t251
.L139:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t253	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t253	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t253	y	2
	str r6,[fp,#1008]                                 	@IRInst:sdiv	%t253	y	2
	ldr r4,[fp,#1008]                                 	@IRInst:mul	%t254	%t253	2
	mov r5,#2                                         	@IRInst:mul	%t254	%t253	2
	mul r6,r4,r5                                      	@IRInst:mul	%t254	%t253	2
	str r6,[fp,#1012]                                 	@IRInst:mul	%t254	%t253	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t252	y	%t254
	ldr r5,[fp,#1012]                                 	@IRInst:sub	%t252	y	%t254
	sub r6,r4,r5                                      	@IRInst:sub	%t252	y	%t254
	str r6,[fp,#1004]                                 	@IRInst:sub	%t252	y	%t254
.L136:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t255	i	4
	mov r5,#4                                         	@IRInst:mul	%t255	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t255	i	4
	str r6,[fp,#1016]                                 	@IRInst:mul	%t255	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t256	SHIFT_TABLE	%t255
	ldr r5,[fp,#1016]                                 	@IRInst:add	%t256	SHIFT_TABLE	%t255
	add r6,r4,r5                                      	@IRInst:add	%t256	SHIFT_TABLE	%t255
	str r6,[fp,#1020]                                 	@IRInst:add	%t256	SHIFT_TABLE	%t255
	ldr r4,[fp,#1020]                                 	@IRInst:assign	%t257	%t256
	ldr r4,[r4]                                       	@IRInst:assign	%t257	%t256
	str r4,[fp,#1024]                                 	@IRInst:assign	%t257	%t256
	mov r4,#1                                         	@IRInst:mul	%t258	1	%t257
	ldr r5,[fp,#1024]                                 	@IRInst:mul	%t258	1	%t257
	mul r6,r4,r5                                      	@IRInst:mul	%t258	1	%t257
	str r6,[fp,#1028]                                 	@IRInst:mul	%t258	1	%t257
	ldr r4,[fp,#4]                                    	@IRInst:add	%t259	ans	%t258
	ldr r5,[fp,#1028]                                 	@IRInst:add	%t259	ans	%t258
	add r6,r4,r5                                      	@IRInst:add	%t259	ans	%t258
	str r6,[fp,#1032]                                 	@IRInst:add	%t259	ans	%t258
	ldr r4,[fp,#1032]                                 	@IRInst:assign	ans	%t259
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t259
.L137:
.L138:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t260	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t260	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t260	x	2
	str r6,[fp,#1036]                                 	@IRInst:sdiv	%t260	x	2
	ldr r4,[fp,#1036]                                 	@IRInst:assign	x	%t260
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t260
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t261	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t261	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t261	y	2
	str r6,[fp,#1040]                                 	@IRInst:sdiv	%t261	y	2
	ldr r4,[fp,#1040]                                 	@IRInst:assign	y	%t261
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t261
	ldr r4,[fp,#8]                                    	@IRInst:add	%t262	i	1
	mov r5,#1                                         	@IRInst:add	%t262	i	1
	add r6,r4,r5                                      	@IRInst:add	%t262	i	1
	str r6,[fp,#1044]                                 	@IRInst:add	%t262	i	1
	ldr r4,[fp,#1044]                                 	@IRInst:assign	i	%t262
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t262
	b .L133                                           
.L135:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#876]                                  	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t263	1	15
	mov r5,#15                                        	@IRInst:bgt	%t263	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t263	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t263	1	15
	movle r6,#0                                       	@IRInst:bgt	%t263	1	15
	str r6,[fp,#1048]                                 	@IRInst:bgt	%t263	1	15
	bgt .L140                                         
	b .L141                                           
.L140:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L142                                           
.L141:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t264	1	4
	mov r5,#4                                         	@IRInst:mul	%t264	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t264	1	4
	str r6,[fp,#1052]                                 	@IRInst:mul	%t264	1	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t265	SHIFT_TABLE	%t264
	ldr r5,[fp,#1052]                                 	@IRInst:add	%t265	SHIFT_TABLE	%t264
	add r6,r4,r5                                      	@IRInst:add	%t265	SHIFT_TABLE	%t264
	str r6,[fp,#1056]                                 	@IRInst:add	%t265	SHIFT_TABLE	%t264
	ldr r4,[fp,#1056]                                 	@IRInst:assign	%t266	%t265
	ldr r4,[r4]                                       	@IRInst:assign	%t266	%t265
	str r4,[fp,#1060]                                 	@IRInst:assign	%t266	%t265
	ldr r4,[fp,#876]                                  	@IRInst:mul	%t267	c	%t266
	ldr r5,[fp,#1060]                                 	@IRInst:mul	%t267	c	%t266
	mul r6,r4,r5                                      	@IRInst:mul	%t267	c	%t266
	str r6,[fp,#1064]                                 	@IRInst:mul	%t267	c	%t266
	ldr r4,[fp,#1064]                                 	@IRInst:assign	x	%t267
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t267
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L143:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t268	i	16
	mov r5,#16                                        	@IRInst:blt	%t268	i	16
	cmp r4,r5                                         	@IRInst:blt	%t268	i	16
	movlt r6,#1                                       	@IRInst:blt	%t268	i	16
	movge r6,#0                                       	@IRInst:blt	%t268	i	16
	str r6,[fp,#1068]                                 	@IRInst:blt	%t268	i	16
	blt .L144                                         
	b .L145                                           
.L144:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t270	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t270	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t270	x	2
	str r6,[fp,#1076]                                 	@IRInst:sdiv	%t270	x	2
	ldr r4,[fp,#1076]                                 	@IRInst:mul	%t271	%t270	2
	mov r5,#2                                         	@IRInst:mul	%t271	%t270	2
	mul r6,r4,r5                                      	@IRInst:mul	%t271	%t270	2
	str r6,[fp,#1080]                                 	@IRInst:mul	%t271	%t270	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t269	x	%t271
	ldr r5,[fp,#1080]                                 	@IRInst:sub	%t269	x	%t271
	sub r6,r4,r5                                      	@IRInst:sub	%t269	x	%t271
	str r6,[fp,#1072]                                 	@IRInst:sub	%t269	x	%t271
.L149:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t273	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t273	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t273	y	2
	str r6,[fp,#1088]                                 	@IRInst:sdiv	%t273	y	2
	ldr r4,[fp,#1088]                                 	@IRInst:mul	%t274	%t273	2
	mov r5,#2                                         	@IRInst:mul	%t274	%t273	2
	mul r6,r4,r5                                      	@IRInst:mul	%t274	%t273	2
	str r6,[fp,#1092]                                 	@IRInst:mul	%t274	%t273	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t272	y	%t274
	ldr r5,[fp,#1092]                                 	@IRInst:sub	%t272	y	%t274
	sub r6,r4,r5                                      	@IRInst:sub	%t272	y	%t274
	str r6,[fp,#1084]                                 	@IRInst:sub	%t272	y	%t274
.L146:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t275	i	4
	mov r5,#4                                         	@IRInst:mul	%t275	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t275	i	4
	str r6,[fp,#1096]                                 	@IRInst:mul	%t275	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t276	SHIFT_TABLE	%t275
	ldr r5,[fp,#1096]                                 	@IRInst:add	%t276	SHIFT_TABLE	%t275
	add r6,r4,r5                                      	@IRInst:add	%t276	SHIFT_TABLE	%t275
	str r6,[fp,#1100]                                 	@IRInst:add	%t276	SHIFT_TABLE	%t275
	ldr r4,[fp,#1100]                                 	@IRInst:assign	%t277	%t276
	ldr r4,[r4]                                       	@IRInst:assign	%t277	%t276
	str r4,[fp,#1104]                                 	@IRInst:assign	%t277	%t276
	mov r4,#1                                         	@IRInst:mul	%t278	1	%t277
	ldr r5,[fp,#1104]                                 	@IRInst:mul	%t278	1	%t277
	mul r6,r4,r5                                      	@IRInst:mul	%t278	1	%t277
	str r6,[fp,#1108]                                 	@IRInst:mul	%t278	1	%t277
	ldr r4,[fp,#4]                                    	@IRInst:add	%t279	ans	%t278
	ldr r5,[fp,#1108]                                 	@IRInst:add	%t279	ans	%t278
	add r6,r4,r5                                      	@IRInst:add	%t279	ans	%t278
	str r6,[fp,#1112]                                 	@IRInst:add	%t279	ans	%t278
	ldr r4,[fp,#1112]                                 	@IRInst:assign	ans	%t279
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t279
.L147:
.L148:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t280	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t280	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t280	x	2
	str r6,[fp,#1116]                                 	@IRInst:sdiv	%t280	x	2
	ldr r4,[fp,#1116]                                 	@IRInst:assign	x	%t280
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t280
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t281	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t281	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t281	y	2
	str r6,[fp,#1120]                                 	@IRInst:sdiv	%t281	y	2
	ldr r4,[fp,#1120]                                 	@IRInst:assign	y	%t281
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t281
	ldr r4,[fp,#8]                                    	@IRInst:add	%t282	i	1
	mov r5,#1                                         	@IRInst:add	%t282	i	1
	add r6,r4,r5                                      	@IRInst:add	%t282	i	1
	str r6,[fp,#1124]                                 	@IRInst:add	%t282	i	1
	ldr r4,[fp,#1124]                                 	@IRInst:assign	i	%t282
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t282
	b .L143                                           
.L145:
.L142:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#876]                                  	@IRInst:assign	c	ans
	ldr r4,[fp,#880]                                  	@IRInst:assign	al	sum
	str r4,[fp,#872]                                  	@IRInst:assign	al	sum
	b .L118                                           
.L120:
	ldr r4,[fp,#872]                                  	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	mres	ans
	str r4,[fp,#792]                                  	@IRInst:assign	mres	ans
.L116:
.L117:
	ldr r4,[fp,#784]                                  	@IRInst:assign	al	ml
	str r4,[fp,#1128]                                 	@IRInst:assign	al	ml
	ldr r4,[fp,#784]                                  	@IRInst:assign	c	ml
	str r4,[fp,#1132]                                 	@IRInst:assign	c	ml
.L150:
	ldr r4,[fp,#1132]                                 	@IRInst:assign	%t286	c
	str r4,[fp,#1140]                                 	@IRInst:assign	%t286	c
	ldr r4,[fp,#1140]                                 	@IRInst:not_zero	%t287	%t286	0
	mov r5,#0                                         	@IRInst:not_zero	%t287	%t286	0
	cmp r4,r5                                         	@IRInst:not_zero	%t287	%t286	0
	moveq r6,#0                                       	@IRInst:not_zero	%t287	%t286	0
	movne r6,#1                                       	@IRInst:not_zero	%t287	%t286	0
	str r6,[fp,#1144]                                 	@IRInst:not_zero	%t287	%t286	0
	beq .L152                                         
	b .L151                                           
.L151:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#1128]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#1132]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L153:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t288	i	16
	mov r5,#16                                        	@IRInst:blt	%t288	i	16
	cmp r4,r5                                         	@IRInst:blt	%t288	i	16
	movlt r6,#1                                       	@IRInst:blt	%t288	i	16
	movge r6,#0                                       	@IRInst:blt	%t288	i	16
	str r6,[fp,#1148]                                 	@IRInst:blt	%t288	i	16
	blt .L154                                         
	b .L155                                           
.L154:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t290	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t290	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t290	x	2
	str r6,[fp,#1156]                                 	@IRInst:sdiv	%t290	x	2
	ldr r4,[fp,#1156]                                 	@IRInst:mul	%t291	%t290	2
	mov r5,#2                                         	@IRInst:mul	%t291	%t290	2
	mul r6,r4,r5                                      	@IRInst:mul	%t291	%t290	2
	str r6,[fp,#1160]                                 	@IRInst:mul	%t291	%t290	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t289	x	%t291
	ldr r5,[fp,#1160]                                 	@IRInst:sub	%t289	x	%t291
	sub r6,r4,r5                                      	@IRInst:sub	%t289	x	%t291
	str r6,[fp,#1152]                                 	@IRInst:sub	%t289	x	%t291
.L156:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t293	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t293	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t293	y	2
	str r6,[fp,#1168]                                 	@IRInst:sdiv	%t293	y	2
	ldr r4,[fp,#1168]                                 	@IRInst:mul	%t294	%t293	2
	mov r5,#2                                         	@IRInst:mul	%t294	%t293	2
	mul r6,r4,r5                                      	@IRInst:mul	%t294	%t293	2
	str r6,[fp,#1172]                                 	@IRInst:mul	%t294	%t293	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t292	y	%t294
	ldr r5,[fp,#1172]                                 	@IRInst:sub	%t292	y	%t294
	sub r6,r4,r5                                      	@IRInst:sub	%t292	y	%t294
	str r6,[fp,#1164]                                 	@IRInst:sub	%t292	y	%t294
	ldr r4,[fp,#1164]                                 	@IRInst:beq	%t295	%t292	0
	mov r5,#0                                         	@IRInst:beq	%t295	%t292	0
	cmp r4,r5                                         	@IRInst:beq	%t295	%t292	0
	moveq r6,#1                                       	@IRInst:beq	%t295	%t292	0
	movne r6,#0                                       	@IRInst:beq	%t295	%t292	0
	str r6,[fp,#1176]                                 	@IRInst:beq	%t295	%t292	0
	beq .L159                                         
	b .L160                                           
.L159:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t296	i	4
	mov r5,#4                                         	@IRInst:mul	%t296	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t296	i	4
	str r6,[fp,#1180]                                 	@IRInst:mul	%t296	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t297	SHIFT_TABLE	%t296
	ldr r5,[fp,#1180]                                 	@IRInst:add	%t297	SHIFT_TABLE	%t296
	add r6,r4,r5                                      	@IRInst:add	%t297	SHIFT_TABLE	%t296
	str r6,[fp,#1184]                                 	@IRInst:add	%t297	SHIFT_TABLE	%t296
	ldr r4,[fp,#1184]                                 	@IRInst:assign	%t298	%t297
	ldr r4,[r4]                                       	@IRInst:assign	%t298	%t297
	str r4,[fp,#1188]                                 	@IRInst:assign	%t298	%t297
	mov r4,#1                                         	@IRInst:mul	%t299	1	%t298
	ldr r5,[fp,#1188]                                 	@IRInst:mul	%t299	1	%t298
	mul r6,r4,r5                                      	@IRInst:mul	%t299	1	%t298
	str r6,[fp,#1192]                                 	@IRInst:mul	%t299	1	%t298
	ldr r4,[fp,#4]                                    	@IRInst:add	%t300	ans	%t299
	ldr r5,[fp,#1192]                                 	@IRInst:add	%t300	ans	%t299
	add r6,r4,r5                                      	@IRInst:add	%t300	ans	%t299
	str r6,[fp,#1196]                                 	@IRInst:add	%t300	ans	%t299
	ldr r4,[fp,#1196]                                 	@IRInst:assign	ans	%t300
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t300
.L160:
.L161:
	b .L158                                           
.L157:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t302	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t302	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t302	y	2
	str r6,[fp,#1204]                                 	@IRInst:sdiv	%t302	y	2
	ldr r4,[fp,#1204]                                 	@IRInst:mul	%t303	%t302	2
	mov r5,#2                                         	@IRInst:mul	%t303	%t302	2
	mul r6,r4,r5                                      	@IRInst:mul	%t303	%t302	2
	str r6,[fp,#1208]                                 	@IRInst:mul	%t303	%t302	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t301	y	%t303
	ldr r5,[fp,#1208]                                 	@IRInst:sub	%t301	y	%t303
	sub r6,r4,r5                                      	@IRInst:sub	%t301	y	%t303
	str r6,[fp,#1200]                                 	@IRInst:sub	%t301	y	%t303
.L162:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t304	i	4
	mov r5,#4                                         	@IRInst:mul	%t304	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t304	i	4
	str r6,[fp,#1212]                                 	@IRInst:mul	%t304	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t305	SHIFT_TABLE	%t304
	ldr r5,[fp,#1212]                                 	@IRInst:add	%t305	SHIFT_TABLE	%t304
	add r6,r4,r5                                      	@IRInst:add	%t305	SHIFT_TABLE	%t304
	str r6,[fp,#1216]                                 	@IRInst:add	%t305	SHIFT_TABLE	%t304
	ldr r4,[fp,#1216]                                 	@IRInst:assign	%t306	%t305
	ldr r4,[r4]                                       	@IRInst:assign	%t306	%t305
	str r4,[fp,#1220]                                 	@IRInst:assign	%t306	%t305
	mov r4,#1                                         	@IRInst:mul	%t307	1	%t306
	ldr r5,[fp,#1220]                                 	@IRInst:mul	%t307	1	%t306
	mul r6,r4,r5                                      	@IRInst:mul	%t307	1	%t306
	str r6,[fp,#1224]                                 	@IRInst:mul	%t307	1	%t306
	ldr r4,[fp,#4]                                    	@IRInst:add	%t308	ans	%t307
	ldr r5,[fp,#1224]                                 	@IRInst:add	%t308	ans	%t307
	add r6,r4,r5                                      	@IRInst:add	%t308	ans	%t307
	str r6,[fp,#1228]                                 	@IRInst:add	%t308	ans	%t307
	ldr r4,[fp,#1228]                                 	@IRInst:assign	ans	%t308
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t308
.L163:
.L164:
.L158:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t309	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t309	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t309	x	2
	str r6,[fp,#1232]                                 	@IRInst:sdiv	%t309	x	2
	ldr r4,[fp,#1232]                                 	@IRInst:assign	x	%t309
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t309
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t310	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t310	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t310	y	2
	str r6,[fp,#1236]                                 	@IRInst:sdiv	%t310	y	2
	ldr r4,[fp,#1236]                                 	@IRInst:assign	y	%t310
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t310
	ldr r4,[fp,#8]                                    	@IRInst:add	%t311	i	1
	mov r5,#1                                         	@IRInst:add	%t311	i	1
	add r6,r4,r5                                      	@IRInst:add	%t311	i	1
	str r6,[fp,#1240]                                 	@IRInst:add	%t311	i	1
	ldr r4,[fp,#1240]                                 	@IRInst:assign	i	%t311
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t311
	b .L153                                           
.L155:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#1136]                                 	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#1128]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#1132]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L165:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t312	i	16
	mov r5,#16                                        	@IRInst:blt	%t312	i	16
	cmp r4,r5                                         	@IRInst:blt	%t312	i	16
	movlt r6,#1                                       	@IRInst:blt	%t312	i	16
	movge r6,#0                                       	@IRInst:blt	%t312	i	16
	str r6,[fp,#1244]                                 	@IRInst:blt	%t312	i	16
	blt .L166                                         
	b .L167                                           
.L166:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t314	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t314	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t314	x	2
	str r6,[fp,#1252]                                 	@IRInst:sdiv	%t314	x	2
	ldr r4,[fp,#1252]                                 	@IRInst:mul	%t315	%t314	2
	mov r5,#2                                         	@IRInst:mul	%t315	%t314	2
	mul r6,r4,r5                                      	@IRInst:mul	%t315	%t314	2
	str r6,[fp,#1256]                                 	@IRInst:mul	%t315	%t314	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t313	x	%t315
	ldr r5,[fp,#1256]                                 	@IRInst:sub	%t313	x	%t315
	sub r6,r4,r5                                      	@IRInst:sub	%t313	x	%t315
	str r6,[fp,#1248]                                 	@IRInst:sub	%t313	x	%t315
.L171:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t317	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t317	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t317	y	2
	str r6,[fp,#1264]                                 	@IRInst:sdiv	%t317	y	2
	ldr r4,[fp,#1264]                                 	@IRInst:mul	%t318	%t317	2
	mov r5,#2                                         	@IRInst:mul	%t318	%t317	2
	mul r6,r4,r5                                      	@IRInst:mul	%t318	%t317	2
	str r6,[fp,#1268]                                 	@IRInst:mul	%t318	%t317	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t316	y	%t318
	ldr r5,[fp,#1268]                                 	@IRInst:sub	%t316	y	%t318
	sub r6,r4,r5                                      	@IRInst:sub	%t316	y	%t318
	str r6,[fp,#1260]                                 	@IRInst:sub	%t316	y	%t318
.L168:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t319	i	4
	mov r5,#4                                         	@IRInst:mul	%t319	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t319	i	4
	str r6,[fp,#1272]                                 	@IRInst:mul	%t319	i	4
	ldr r4,.global_1_SHIFT_TABLE                      	@IRInst:add	%t320	SHIFT_TABLE	%t319
	ldr r5,[fp,#1272]                                 	@IRInst:add	%t320	SHIFT_TABLE	%t319
	add r6,r4,r5                                      	@IRInst:add	%t320	SHIFT_TABLE	%t319
	str r6,[fp,#1276]                                 	@IRInst:add	%t320	SHIFT_TABLE	%t319
	ldr r4,[fp,#1276]                                 	@IRInst:assign	%t321	%t320
	ldr r4,[r4]                                       	@IRInst:assign	%t321	%t320
	str r4,[fp,#1280]                                 	@IRInst:assign	%t321	%t320
	mov r4,#1                                         	@IRInst:mul	%t322	1	%t321
	ldr r5,[fp,#1280]                                 	@IRInst:mul	%t322	1	%t321
	mul r6,r4,r5                                      	@IRInst:mul	%t322	1	%t321
	str r6,[fp,#1284]                                 	@IRInst:mul	%t322	1	%t321
	ldr r4,[fp,#4]                                    	@IRInst:add	%t323	ans	%t322
	ldr r5,[fp,#1284]                                 	@IRInst:add	%t323	ans	%t322
	add r6,r4,r5                                      	@IRInst:add	%t323	ans	%t322
	str r6,[fp,#1288]                                 	@IRInst:add	%t323	ans	%t322
.global_2_SHIFT_TABLE:
        .long   SHIFT_TABLE
	ldr r4,[fp,#1288]                                 	@IRInst:assign	ans	%t323
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t323
.L169:
.L170:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t324	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t324	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t324	x	2
	str r6,[fp,#1292]                                 	@IRInst:sdiv	%t324	x	2
	ldr r4,[fp,#1292]                                 	@IRInst:assign	x	%t324
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t324
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t325	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t325	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t325	y	2
	str r6,[fp,#1296]                                 	@IRInst:sdiv	%t325	y	2
	ldr r4,[fp,#1296]                                 	@IRInst:assign	y	%t325
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t325
	ldr r4,[fp,#8]                                    	@IRInst:add	%t326	i	1
	mov r5,#1                                         	@IRInst:add	%t326	i	1
	add r6,r4,r5                                      	@IRInst:add	%t326	i	1
	str r6,[fp,#1300]                                 	@IRInst:add	%t326	i	1
	ldr r4,[fp,#1300]                                 	@IRInst:assign	i	%t326
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t326
	b .L165                                           
.L167:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#1132]                                 	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t327	1	15
	mov r5,#15                                        	@IRInst:bgt	%t327	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t327	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t327	1	15
	movle r6,#0                                       	@IRInst:bgt	%t327	1	15
	str r6,[fp,#1304]                                 	@IRInst:bgt	%t327	1	15
	bgt .L172                                         
	b .L173                                           
.L172:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L174                                           
.L173:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t328	1	4
	mov r5,#4                                         	@IRInst:mul	%t328	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t328	1	4
	str r6,[fp,#1308]                                 	@IRInst:mul	%t328	1	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t329	SHIFT_TABLE	%t328
	ldr r5,[fp,#1308]                                 	@IRInst:add	%t329	SHIFT_TABLE	%t328
	add r6,r4,r5                                      	@IRInst:add	%t329	SHIFT_TABLE	%t328
	str r6,[fp,#1312]                                 	@IRInst:add	%t329	SHIFT_TABLE	%t328
	ldr r4,[fp,#1312]                                 	@IRInst:assign	%t330	%t329
	ldr r4,[r4]                                       	@IRInst:assign	%t330	%t329
	str r4,[fp,#1316]                                 	@IRInst:assign	%t330	%t329
	ldr r4,[fp,#1132]                                 	@IRInst:mul	%t331	c	%t330
	ldr r5,[fp,#1316]                                 	@IRInst:mul	%t331	c	%t330
	mul r6,r4,r5                                      	@IRInst:mul	%t331	c	%t330
	str r6,[fp,#1320]                                 	@IRInst:mul	%t331	c	%t330
	ldr r4,[fp,#1320]                                 	@IRInst:assign	x	%t331
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t331
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L175:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t332	i	16
	mov r5,#16                                        	@IRInst:blt	%t332	i	16
	cmp r4,r5                                         	@IRInst:blt	%t332	i	16
	movlt r6,#1                                       	@IRInst:blt	%t332	i	16
	movge r6,#0                                       	@IRInst:blt	%t332	i	16
	str r6,[fp,#1324]                                 	@IRInst:blt	%t332	i	16
	blt .L176                                         
	b .L177                                           
.L176:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t334	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t334	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t334	x	2
	str r6,[fp,#1332]                                 	@IRInst:sdiv	%t334	x	2
	ldr r4,[fp,#1332]                                 	@IRInst:mul	%t335	%t334	2
	mov r5,#2                                         	@IRInst:mul	%t335	%t334	2
	mul r6,r4,r5                                      	@IRInst:mul	%t335	%t334	2
	str r6,[fp,#1336]                                 	@IRInst:mul	%t335	%t334	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t333	x	%t335
	ldr r5,[fp,#1336]                                 	@IRInst:sub	%t333	x	%t335
	sub r6,r4,r5                                      	@IRInst:sub	%t333	x	%t335
	str r6,[fp,#1328]                                 	@IRInst:sub	%t333	x	%t335
.L181:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t337	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t337	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t337	y	2
	str r6,[fp,#1344]                                 	@IRInst:sdiv	%t337	y	2
	ldr r4,[fp,#1344]                                 	@IRInst:mul	%t338	%t337	2
	mov r5,#2                                         	@IRInst:mul	%t338	%t337	2
	mul r6,r4,r5                                      	@IRInst:mul	%t338	%t337	2
	str r6,[fp,#1348]                                 	@IRInst:mul	%t338	%t337	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t336	y	%t338
	ldr r5,[fp,#1348]                                 	@IRInst:sub	%t336	y	%t338
	sub r6,r4,r5                                      	@IRInst:sub	%t336	y	%t338
	str r6,[fp,#1340]                                 	@IRInst:sub	%t336	y	%t338
.L178:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t339	i	4
	mov r5,#4                                         	@IRInst:mul	%t339	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t339	i	4
	str r6,[fp,#1352]                                 	@IRInst:mul	%t339	i	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t340	SHIFT_TABLE	%t339
	ldr r5,[fp,#1352]                                 	@IRInst:add	%t340	SHIFT_TABLE	%t339
	add r6,r4,r5                                      	@IRInst:add	%t340	SHIFT_TABLE	%t339
	str r6,[fp,#1356]                                 	@IRInst:add	%t340	SHIFT_TABLE	%t339
	ldr r4,[fp,#1356]                                 	@IRInst:assign	%t341	%t340
	ldr r4,[r4]                                       	@IRInst:assign	%t341	%t340
	str r4,[fp,#1360]                                 	@IRInst:assign	%t341	%t340
	mov r4,#1                                         	@IRInst:mul	%t342	1	%t341
	ldr r5,[fp,#1360]                                 	@IRInst:mul	%t342	1	%t341
	mul r6,r4,r5                                      	@IRInst:mul	%t342	1	%t341
	str r6,[fp,#1364]                                 	@IRInst:mul	%t342	1	%t341
	ldr r4,[fp,#4]                                    	@IRInst:add	%t343	ans	%t342
	ldr r5,[fp,#1364]                                 	@IRInst:add	%t343	ans	%t342
	add r6,r4,r5                                      	@IRInst:add	%t343	ans	%t342
	str r6,[fp,#1368]                                 	@IRInst:add	%t343	ans	%t342
	ldr r4,[fp,#1368]                                 	@IRInst:assign	ans	%t343
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t343
.L179:
.L180:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t344	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t344	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t344	x	2
	str r6,[fp,#1372]                                 	@IRInst:sdiv	%t344	x	2
	ldr r4,[fp,#1372]                                 	@IRInst:assign	x	%t344
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t344
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t345	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t345	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t345	y	2
	str r6,[fp,#1376]                                 	@IRInst:sdiv	%t345	y	2
	ldr r4,[fp,#1376]                                 	@IRInst:assign	y	%t345
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t345
	ldr r4,[fp,#8]                                    	@IRInst:add	%t346	i	1
	mov r5,#1                                         	@IRInst:add	%t346	i	1
	add r6,r4,r5                                      	@IRInst:add	%t346	i	1
	str r6,[fp,#1380]                                 	@IRInst:add	%t346	i	1
	ldr r4,[fp,#1380]                                 	@IRInst:assign	i	%t346
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t346
	b .L175                                           
.L177:
.L174:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#1132]                                 	@IRInst:assign	c	ans
	ldr r4,[fp,#1136]                                 	@IRInst:assign	al	sum
	str r4,[fp,#1128]                                 	@IRInst:assign	al	sum
	b .L150                                           
.L152:
	ldr r4,[fp,#1128]                                 	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	ml	ans
	str r4,[fp,#784]                                  	@IRInst:assign	ml	ans
	ldr r4,[fp,#788]                                  	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t347	y	15
	mov r5,#15                                        	@IRInst:bge	%t347	y	15
	cmp r4,r5                                         	@IRInst:bge	%t347	y	15
	movge r6,#1                                       	@IRInst:bge	%t347	y	15
	movlt r6,#0                                       	@IRInst:bge	%t347	y	15
	str r6,[fp,#1384]                                 	@IRInst:bge	%t347	y	15
	bge .L182                                         
	b .L183                                           
.L182:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t348	x	0
	mov r5,#0                                         	@IRInst:blt	%t348	x	0
	cmp r4,r5                                         	@IRInst:blt	%t348	x	0
	movlt r6,#1                                       	@IRInst:blt	%t348	x	0
	movge r6,#0                                       	@IRInst:blt	%t348	x	0
	str r6,[fp,#1388]                                 	@IRInst:blt	%t348	x	0
	blt .L185                                         
	b .L186                                           
.L185:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L187                                           
.L186:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L187:
	b .L184                                           
.L183:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t349	y	0
	mov r5,#0                                         	@IRInst:bgt	%t349	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t349	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t349	y	0
	movle r6,#0                                       	@IRInst:bgt	%t349	y	0
	str r6,[fp,#1392]                                 	@IRInst:bgt	%t349	y	0
	bgt .L188                                         
	b .L189                                           
.L188:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t350	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t350	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t350	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t350	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t350	x	32767
	str r6,[fp,#1396]                                 	@IRInst:bgt	%t350	x	32767
	bgt .L191                                         
	b .L192                                           
.L191:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t351	y	4
	mov r5,#4                                         	@IRInst:mul	%t351	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t351	y	4
	str r6,[fp,#1400]                                 	@IRInst:mul	%t351	y	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t352	SHIFT_TABLE	%t351
	ldr r5,[fp,#1400]                                 	@IRInst:add	%t352	SHIFT_TABLE	%t351
	add r6,r4,r5                                      	@IRInst:add	%t352	SHIFT_TABLE	%t351
	str r6,[fp,#1404]                                 	@IRInst:add	%t352	SHIFT_TABLE	%t351
	ldr r4,[fp,#1404]                                 	@IRInst:assign	%t353	%t352
	ldr r4,[r4]                                       	@IRInst:assign	%t353	%t352
	str r4,[fp,#1408]                                 	@IRInst:assign	%t353	%t352
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t354	x	%t353
	ldr r5,[fp,#1408]                                 	@IRInst:sdiv	%t354	x	%t353
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t354	x	%t353
	str r6,[fp,#1412]                                 	@IRInst:sdiv	%t354	x	%t353
	ldr r4,[fp,#1412]                                 	@IRInst:assign	x	%t354
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t354
	ldr r4,[fp,#12]                                   	@IRInst:add	%t355	x	65536
	mov r5,#65536                                     	@IRInst:add	%t355	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t355	x	65536
	str r6,[fp,#1416]                                 	@IRInst:add	%t355	x	65536
	mov r4,#15                                        	@IRInst:sub	%t357	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t357	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t357	15	y
	str r6,[fp,#1424]                                 	@IRInst:sub	%t357	15	y
	ldr r4,[fp,#1424]                                 	@IRInst:add	%t358	%t357	1
	mov r5,#1                                         	@IRInst:add	%t358	%t357	1
	add r6,r4,r5                                      	@IRInst:add	%t358	%t357	1
	str r6,[fp,#1428]                                 	@IRInst:add	%t358	%t357	1
	ldr r4,[fp,#1428]                                 	@IRInst:mul	%t356	%t358	4
	mov r5,#4                                         	@IRInst:mul	%t356	%t358	4
	mul r6,r4,r5                                      	@IRInst:mul	%t356	%t358	4
	str r6,[fp,#1420]                                 	@IRInst:mul	%t356	%t358	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t359	SHIFT_TABLE	%t356
	ldr r5,[fp,#1420]                                 	@IRInst:add	%t359	SHIFT_TABLE	%t356
	add r6,r4,r5                                      	@IRInst:add	%t359	SHIFT_TABLE	%t356
	str r6,[fp,#1432]                                 	@IRInst:add	%t359	SHIFT_TABLE	%t356
	ldr r4,[fp,#1432]                                 	@IRInst:assign	%t360	%t359
	ldr r4,[r4]                                       	@IRInst:assign	%t360	%t359
	str r4,[fp,#1436]                                 	@IRInst:assign	%t360	%t359
	ldr r4,[fp,#1416]                                 	@IRInst:sub	%t361	%t355	%t360
	ldr r5,[fp,#1436]                                 	@IRInst:sub	%t361	%t355	%t360
	sub r6,r4,r5                                      	@IRInst:sub	%t361	%t355	%t360
	str r6,[fp,#1440]                                 	@IRInst:sub	%t361	%t355	%t360
	ldr r4,[fp,#1440]                                 	@IRInst:assign	ans	%t361
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t361
	b .L193                                           
.L192:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t362	y	4
	mov r5,#4                                         	@IRInst:mul	%t362	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t362	y	4
	str r6,[fp,#1444]                                 	@IRInst:mul	%t362	y	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t363	SHIFT_TABLE	%t362
	ldr r5,[fp,#1444]                                 	@IRInst:add	%t363	SHIFT_TABLE	%t362
	add r6,r4,r5                                      	@IRInst:add	%t363	SHIFT_TABLE	%t362
	str r6,[fp,#1448]                                 	@IRInst:add	%t363	SHIFT_TABLE	%t362
	ldr r4,[fp,#1448]                                 	@IRInst:assign	%t364	%t363
	ldr r4,[r4]                                       	@IRInst:assign	%t364	%t363
	str r4,[fp,#1452]                                 	@IRInst:assign	%t364	%t363
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t365	x	%t364
	ldr r5,[fp,#1452]                                 	@IRInst:sdiv	%t365	x	%t364
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t365	x	%t364
	str r6,[fp,#1456]                                 	@IRInst:sdiv	%t365	x	%t364
	ldr r4,[fp,#1456]                                 	@IRInst:assign	ans	%t365
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t365
.L193:
	b .L190                                           
.L189:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L190:
.L184:
	ldr r4,[fp,#4]                                    	@IRInst:assign	mr	ans
	str r4,[fp,#788]                                  	@IRInst:assign	mr	ans
	b .L105                                           
.L107:
	ldr r4,[fp,#792]                                  	@IRInst:assign	ans	mres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	mres
	ldr r4,[fp,#4]                                    	@IRInst:assign	pl	ans
	str r4,[fp,#24]                                   	@IRInst:assign	pl	ans
	ldr r4,[fp,#28]                                   	@IRInst:assign	x	pr
	str r4,[fp,#12]                                   	@IRInst:assign	x	pr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t366	y	15
	mov r5,#15                                        	@IRInst:bge	%t366	y	15
	cmp r4,r5                                         	@IRInst:bge	%t366	y	15
	movge r6,#1                                       	@IRInst:bge	%t366	y	15
	movlt r6,#0                                       	@IRInst:bge	%t366	y	15
	str r6,[fp,#1460]                                 	@IRInst:bge	%t366	y	15
	bge .L194                                         
	b .L195                                           
.L194:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t367	x	0
	mov r5,#0                                         	@IRInst:blt	%t367	x	0
	cmp r4,r5                                         	@IRInst:blt	%t367	x	0
	movlt r6,#1                                       	@IRInst:blt	%t367	x	0
	movge r6,#0                                       	@IRInst:blt	%t367	x	0
	str r6,[fp,#1464]                                 	@IRInst:blt	%t367	x	0
	blt .L197                                         
	b .L198                                           
.L197:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L199                                           
.L198:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L199:
	b .L196                                           
.L195:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t368	y	0
	mov r5,#0                                         	@IRInst:bgt	%t368	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t368	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t368	y	0
	movle r6,#0                                       	@IRInst:bgt	%t368	y	0
	str r6,[fp,#1468]                                 	@IRInst:bgt	%t368	y	0
	bgt .L200                                         
	b .L201                                           
.L200:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t369	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t369	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t369	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t369	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t369	x	32767
	str r6,[fp,#1472]                                 	@IRInst:bgt	%t369	x	32767
	bgt .L203                                         
	b .L204                                           
.L203:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t370	y	4
	mov r5,#4                                         	@IRInst:mul	%t370	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t370	y	4
	str r6,[fp,#1476]                                 	@IRInst:mul	%t370	y	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t371	SHIFT_TABLE	%t370
	ldr r5,[fp,#1476]                                 	@IRInst:add	%t371	SHIFT_TABLE	%t370
	add r6,r4,r5                                      	@IRInst:add	%t371	SHIFT_TABLE	%t370
	str r6,[fp,#1480]                                 	@IRInst:add	%t371	SHIFT_TABLE	%t370
	ldr r4,[fp,#1480]                                 	@IRInst:assign	%t372	%t371
	ldr r4,[r4]                                       	@IRInst:assign	%t372	%t371
	str r4,[fp,#1484]                                 	@IRInst:assign	%t372	%t371
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t373	x	%t372
	ldr r5,[fp,#1484]                                 	@IRInst:sdiv	%t373	x	%t372
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t373	x	%t372
	str r6,[fp,#1488]                                 	@IRInst:sdiv	%t373	x	%t372
	ldr r4,[fp,#1488]                                 	@IRInst:assign	x	%t373
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t373
	ldr r4,[fp,#12]                                   	@IRInst:add	%t374	x	65536
	mov r5,#65536                                     	@IRInst:add	%t374	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t374	x	65536
	str r6,[fp,#1492]                                 	@IRInst:add	%t374	x	65536
	mov r4,#15                                        	@IRInst:sub	%t376	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t376	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t376	15	y
	str r6,[fp,#1500]                                 	@IRInst:sub	%t376	15	y
	ldr r4,[fp,#1500]                                 	@IRInst:add	%t377	%t376	1
	mov r5,#1                                         	@IRInst:add	%t377	%t376	1
	add r6,r4,r5                                      	@IRInst:add	%t377	%t376	1
	str r6,[fp,#1504]                                 	@IRInst:add	%t377	%t376	1
	ldr r4,[fp,#1504]                                 	@IRInst:mul	%t375	%t377	4
	mov r5,#4                                         	@IRInst:mul	%t375	%t377	4
	mul r6,r4,r5                                      	@IRInst:mul	%t375	%t377	4
	str r6,[fp,#1496]                                 	@IRInst:mul	%t375	%t377	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t378	SHIFT_TABLE	%t375
	ldr r5,[fp,#1496]                                 	@IRInst:add	%t378	SHIFT_TABLE	%t375
	add r6,r4,r5                                      	@IRInst:add	%t378	SHIFT_TABLE	%t375
	str r6,[fp,#1508]                                 	@IRInst:add	%t378	SHIFT_TABLE	%t375
	ldr r4,[fp,#1508]                                 	@IRInst:assign	%t379	%t378
	ldr r4,[r4]                                       	@IRInst:assign	%t379	%t378
	str r4,[fp,#1512]                                 	@IRInst:assign	%t379	%t378
	ldr r4,[fp,#1492]                                 	@IRInst:sub	%t380	%t374	%t379
	ldr r5,[fp,#1512]                                 	@IRInst:sub	%t380	%t374	%t379
	sub r6,r4,r5                                      	@IRInst:sub	%t380	%t374	%t379
	str r6,[fp,#1516]                                 	@IRInst:sub	%t380	%t374	%t379
	ldr r4,[fp,#1516]                                 	@IRInst:assign	ans	%t380
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t380
	b .L205                                           
.L204:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t381	y	4
	mov r5,#4                                         	@IRInst:mul	%t381	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t381	y	4
	str r6,[fp,#1520]                                 	@IRInst:mul	%t381	y	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t382	SHIFT_TABLE	%t381
	ldr r5,[fp,#1520]                                 	@IRInst:add	%t382	SHIFT_TABLE	%t381
	add r6,r4,r5                                      	@IRInst:add	%t382	SHIFT_TABLE	%t381
	str r6,[fp,#1524]                                 	@IRInst:add	%t382	SHIFT_TABLE	%t381
	ldr r4,[fp,#1524]                                 	@IRInst:assign	%t383	%t382
	ldr r4,[r4]                                       	@IRInst:assign	%t383	%t382
	str r4,[fp,#1528]                                 	@IRInst:assign	%t383	%t382
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t384	x	%t383
	ldr r5,[fp,#1528]                                 	@IRInst:sdiv	%t384	x	%t383
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t384	x	%t383
	str r6,[fp,#1532]                                 	@IRInst:sdiv	%t384	x	%t383
	ldr r4,[fp,#1532]                                 	@IRInst:assign	ans	%t384
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t384
.L205:
	b .L202                                           
.L201:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L202:
.L196:
	ldr r4,[fp,#4]                                    	@IRInst:assign	pr	ans
	str r4,[fp,#28]                                   	@IRInst:assign	pr	ans
	b .L3                                             
.L5:
	ldr r4,[fp,#32]                                   	@IRInst:assign	ans	pres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	pres
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	ans
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#2                                         	@IRInst:assign	pl	2
	str r4,[fp,#1536]                                 	@IRInst:assign	pl	2
	mov r4,#1                                         	@IRInst:assign	pr	1
	str r4,[fp,#1540]                                 	@IRInst:assign	pr	1
	mov r4,#1                                         	@IRInst:assign	pres	1
	str r4,[fp,#1544]                                 	@IRInst:assign	pres	1
.L206:
	ldr r4,[fp,#1540]                                 	@IRInst:bgt	%t388	pr	0
	mov r5,#0                                         	@IRInst:bgt	%t388	pr	0
	cmp r4,r5                                         	@IRInst:bgt	%t388	pr	0
	movgt r6,#1                                       	@IRInst:bgt	%t388	pr	0
	movle r6,#0                                       	@IRInst:bgt	%t388	pr	0
	str r6,[fp,#1548]                                 	@IRInst:bgt	%t388	pr	0
	bgt .L207                                         
	b .L208                                           
.L207:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#1540]                                 	@IRInst:assign	x	pr
	str r4,[fp,#12]                                   	@IRInst:assign	x	pr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L209:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t389	i	16
	mov r5,#16                                        	@IRInst:blt	%t389	i	16
	cmp r4,r5                                         	@IRInst:blt	%t389	i	16
	movlt r6,#1                                       	@IRInst:blt	%t389	i	16
	movge r6,#0                                       	@IRInst:blt	%t389	i	16
	str r6,[fp,#1552]                                 	@IRInst:blt	%t389	i	16
	blt .L210                                         
	b .L211                                           
.L210:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t391	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t391	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t391	x	2
	str r6,[fp,#1560]                                 	@IRInst:sdiv	%t391	x	2
	ldr r4,[fp,#1560]                                 	@IRInst:mul	%t392	%t391	2
	mov r5,#2                                         	@IRInst:mul	%t392	%t391	2
	mul r6,r4,r5                                      	@IRInst:mul	%t392	%t391	2
	str r6,[fp,#1564]                                 	@IRInst:mul	%t392	%t391	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t390	x	%t392
	ldr r5,[fp,#1564]                                 	@IRInst:sub	%t390	x	%t392
	sub r6,r4,r5                                      	@IRInst:sub	%t390	x	%t392
	str r6,[fp,#1556]                                 	@IRInst:sub	%t390	x	%t392
.L215:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t394	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t394	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t394	y	2
	str r6,[fp,#1572]                                 	@IRInst:sdiv	%t394	y	2
	ldr r4,[fp,#1572]                                 	@IRInst:mul	%t395	%t394	2
	mov r5,#2                                         	@IRInst:mul	%t395	%t394	2
	mul r6,r4,r5                                      	@IRInst:mul	%t395	%t394	2
	str r6,[fp,#1576]                                 	@IRInst:mul	%t395	%t394	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t393	y	%t395
	ldr r5,[fp,#1576]                                 	@IRInst:sub	%t393	y	%t395
	sub r6,r4,r5                                      	@IRInst:sub	%t393	y	%t395
	str r6,[fp,#1568]                                 	@IRInst:sub	%t393	y	%t395
.L212:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t396	i	4
	mov r5,#4                                         	@IRInst:mul	%t396	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t396	i	4
	str r6,[fp,#1580]                                 	@IRInst:mul	%t396	i	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t397	SHIFT_TABLE	%t396
	ldr r5,[fp,#1580]                                 	@IRInst:add	%t397	SHIFT_TABLE	%t396
	add r6,r4,r5                                      	@IRInst:add	%t397	SHIFT_TABLE	%t396
	str r6,[fp,#1584]                                 	@IRInst:add	%t397	SHIFT_TABLE	%t396
	ldr r4,[fp,#1584]                                 	@IRInst:assign	%t398	%t397
	ldr r4,[r4]                                       	@IRInst:assign	%t398	%t397
	str r4,[fp,#1588]                                 	@IRInst:assign	%t398	%t397
	mov r4,#1                                         	@IRInst:mul	%t399	1	%t398
	ldr r5,[fp,#1588]                                 	@IRInst:mul	%t399	1	%t398
	mul r6,r4,r5                                      	@IRInst:mul	%t399	1	%t398
	str r6,[fp,#1592]                                 	@IRInst:mul	%t399	1	%t398
	ldr r4,[fp,#4]                                    	@IRInst:add	%t400	ans	%t399
	ldr r5,[fp,#1592]                                 	@IRInst:add	%t400	ans	%t399
	add r6,r4,r5                                      	@IRInst:add	%t400	ans	%t399
	str r6,[fp,#1596]                                 	@IRInst:add	%t400	ans	%t399
	ldr r4,[fp,#1596]                                 	@IRInst:assign	ans	%t400
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t400
.L213:
.L214:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t401	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t401	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t401	x	2
	str r6,[fp,#1600]                                 	@IRInst:sdiv	%t401	x	2
	ldr r4,[fp,#1600]                                 	@IRInst:assign	x	%t401
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t401
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t402	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t402	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t402	y	2
	str r6,[fp,#1604]                                 	@IRInst:sdiv	%t402	y	2
	ldr r4,[fp,#1604]                                 	@IRInst:assign	y	%t402
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t402
	ldr r4,[fp,#8]                                    	@IRInst:add	%t403	i	1
	mov r5,#1                                         	@IRInst:add	%t403	i	1
	add r6,r4,r5                                      	@IRInst:add	%t403	i	1
	str r6,[fp,#1608]                                 	@IRInst:add	%t403	i	1
	ldr r4,[fp,#1608]                                 	@IRInst:assign	i	%t403
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t403
	b .L209                                           
.L211:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t404	ans
	str r4,[fp,#1612]                                 	@IRInst:assign	%t404	ans
	ldr r4,[fp,#1612]                                 	@IRInst:not_zero	%t405	%t404	0
	mov r5,#0                                         	@IRInst:not_zero	%t405	%t404	0
	cmp r4,r5                                         	@IRInst:not_zero	%t405	%t404	0
	moveq r6,#0                                       	@IRInst:not_zero	%t405	%t404	0
	movne r6,#1                                       	@IRInst:not_zero	%t405	%t404	0
	str r6,[fp,#1616]                                 	@IRInst:not_zero	%t405	%t404	0
	beq .L217                                         
	b .L216                                           
.L216:
	ldr r4,[fp,#1544]                                 	@IRInst:assign	ml	pres
	str r4,[fp,#1620]                                 	@IRInst:assign	ml	pres
	ldr r4,[fp,#1536]                                 	@IRInst:assign	mr	pl
	str r4,[fp,#1624]                                 	@IRInst:assign	mr	pl
	mov r4,#0                                         	@IRInst:assign	mres	0
	str r4,[fp,#1628]                                 	@IRInst:assign	mres	0
.L219:
	ldr r4,[fp,#1624]                                 	@IRInst:assign	%t409	mr
	str r4,[fp,#1632]                                 	@IRInst:assign	%t409	mr
	ldr r4,[fp,#1632]                                 	@IRInst:not_zero	%t410	%t409	0
	mov r5,#0                                         	@IRInst:not_zero	%t410	%t409	0
	cmp r4,r5                                         	@IRInst:not_zero	%t410	%t409	0
	moveq r6,#0                                       	@IRInst:not_zero	%t410	%t409	0
	movne r6,#1                                       	@IRInst:not_zero	%t410	%t409	0
	str r6,[fp,#1636]                                 	@IRInst:not_zero	%t410	%t409	0
	beq .L221                                         
	b .L220                                           
.L220:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#1624]                                 	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L222:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t411	i	16
	mov r5,#16                                        	@IRInst:blt	%t411	i	16
	cmp r4,r5                                         	@IRInst:blt	%t411	i	16
	movlt r6,#1                                       	@IRInst:blt	%t411	i	16
	movge r6,#0                                       	@IRInst:blt	%t411	i	16
	str r6,[fp,#1640]                                 	@IRInst:blt	%t411	i	16
	blt .L223                                         
	b .L224                                           
.L223:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t413	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t413	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t413	x	2
	str r6,[fp,#1648]                                 	@IRInst:sdiv	%t413	x	2
	ldr r4,[fp,#1648]                                 	@IRInst:mul	%t414	%t413	2
	mov r5,#2                                         	@IRInst:mul	%t414	%t413	2
	mul r6,r4,r5                                      	@IRInst:mul	%t414	%t413	2
	str r6,[fp,#1652]                                 	@IRInst:mul	%t414	%t413	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t412	x	%t414
	ldr r5,[fp,#1652]                                 	@IRInst:sub	%t412	x	%t414
	sub r6,r4,r5                                      	@IRInst:sub	%t412	x	%t414
	str r6,[fp,#1644]                                 	@IRInst:sub	%t412	x	%t414
.L228:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t416	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t416	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t416	y	2
	str r6,[fp,#1660]                                 	@IRInst:sdiv	%t416	y	2
	ldr r4,[fp,#1660]                                 	@IRInst:mul	%t417	%t416	2
	mov r5,#2                                         	@IRInst:mul	%t417	%t416	2
	mul r6,r4,r5                                      	@IRInst:mul	%t417	%t416	2
	str r6,[fp,#1664]                                 	@IRInst:mul	%t417	%t416	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t415	y	%t417
	ldr r5,[fp,#1664]                                 	@IRInst:sub	%t415	y	%t417
	sub r6,r4,r5                                      	@IRInst:sub	%t415	y	%t417
	str r6,[fp,#1656]                                 	@IRInst:sub	%t415	y	%t417
.L225:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t418	i	4
	mov r5,#4                                         	@IRInst:mul	%t418	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t418	i	4
	str r6,[fp,#1668]                                 	@IRInst:mul	%t418	i	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t419	SHIFT_TABLE	%t418
	ldr r5,[fp,#1668]                                 	@IRInst:add	%t419	SHIFT_TABLE	%t418
	add r6,r4,r5                                      	@IRInst:add	%t419	SHIFT_TABLE	%t418
	str r6,[fp,#1672]                                 	@IRInst:add	%t419	SHIFT_TABLE	%t418
	ldr r4,[fp,#1672]                                 	@IRInst:assign	%t420	%t419
	ldr r4,[r4]                                       	@IRInst:assign	%t420	%t419
	str r4,[fp,#1676]                                 	@IRInst:assign	%t420	%t419
	mov r4,#1                                         	@IRInst:mul	%t421	1	%t420
	ldr r5,[fp,#1676]                                 	@IRInst:mul	%t421	1	%t420
	mul r6,r4,r5                                      	@IRInst:mul	%t421	1	%t420
	str r6,[fp,#1680]                                 	@IRInst:mul	%t421	1	%t420
	ldr r4,[fp,#4]                                    	@IRInst:add	%t422	ans	%t421
	ldr r5,[fp,#1680]                                 	@IRInst:add	%t422	ans	%t421
	add r6,r4,r5                                      	@IRInst:add	%t422	ans	%t421
	str r6,[fp,#1684]                                 	@IRInst:add	%t422	ans	%t421
	ldr r4,[fp,#1684]                                 	@IRInst:assign	ans	%t422
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t422
.L226:
.L227:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t423	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t423	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t423	x	2
	str r6,[fp,#1688]                                 	@IRInst:sdiv	%t423	x	2
	ldr r4,[fp,#1688]                                 	@IRInst:assign	x	%t423
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t423
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t424	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t424	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t424	y	2
	str r6,[fp,#1692]                                 	@IRInst:sdiv	%t424	y	2
	ldr r4,[fp,#1692]                                 	@IRInst:assign	y	%t424
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t424
	ldr r4,[fp,#8]                                    	@IRInst:add	%t425	i	1
	mov r5,#1                                         	@IRInst:add	%t425	i	1
	add r6,r4,r5                                      	@IRInst:add	%t425	i	1
	str r6,[fp,#1696]                                 	@IRInst:add	%t425	i	1
	ldr r4,[fp,#1696]                                 	@IRInst:assign	i	%t425
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t425
	b .L222                                           
.L224:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t426	ans
	str r4,[fp,#1700]                                 	@IRInst:assign	%t426	ans
	ldr r4,[fp,#1700]                                 	@IRInst:not_zero	%t427	%t426	0
	mov r5,#0                                         	@IRInst:not_zero	%t427	%t426	0
	cmp r4,r5                                         	@IRInst:not_zero	%t427	%t426	0
	moveq r6,#0                                       	@IRInst:not_zero	%t427	%t426	0
	movne r6,#1                                       	@IRInst:not_zero	%t427	%t426	0
	str r6,[fp,#1704]                                 	@IRInst:not_zero	%t427	%t426	0
	beq .L230                                         
	b .L229                                           
.L229:
	ldr r4,[fp,#1628]                                 	@IRInst:assign	al	mres
	str r4,[fp,#1708]                                 	@IRInst:assign	al	mres
	ldr r4,[fp,#1620]                                 	@IRInst:assign	c	ml
	str r4,[fp,#1712]                                 	@IRInst:assign	c	ml
.L232:
	ldr r4,[fp,#1712]                                 	@IRInst:assign	%t431	c
	str r4,[fp,#1720]                                 	@IRInst:assign	%t431	c
	ldr r4,[fp,#1720]                                 	@IRInst:not_zero	%t432	%t431	0
	mov r5,#0                                         	@IRInst:not_zero	%t432	%t431	0
	cmp r4,r5                                         	@IRInst:not_zero	%t432	%t431	0
	moveq r6,#0                                       	@IRInst:not_zero	%t432	%t431	0
	movne r6,#1                                       	@IRInst:not_zero	%t432	%t431	0
	str r6,[fp,#1724]                                 	@IRInst:not_zero	%t432	%t431	0
	beq .L234                                         
	b .L233                                           
.L233:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#1708]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#1712]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L235:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t433	i	16
	mov r5,#16                                        	@IRInst:blt	%t433	i	16
	cmp r4,r5                                         	@IRInst:blt	%t433	i	16
	movlt r6,#1                                       	@IRInst:blt	%t433	i	16
	movge r6,#0                                       	@IRInst:blt	%t433	i	16
	str r6,[fp,#1728]                                 	@IRInst:blt	%t433	i	16
	blt .L236                                         
	b .L237                                           
.L236:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t435	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t435	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t435	x	2
	str r6,[fp,#1736]                                 	@IRInst:sdiv	%t435	x	2
	ldr r4,[fp,#1736]                                 	@IRInst:mul	%t436	%t435	2
	mov r5,#2                                         	@IRInst:mul	%t436	%t435	2
	mul r6,r4,r5                                      	@IRInst:mul	%t436	%t435	2
	str r6,[fp,#1740]                                 	@IRInst:mul	%t436	%t435	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t434	x	%t436
	ldr r5,[fp,#1740]                                 	@IRInst:sub	%t434	x	%t436
	sub r6,r4,r5                                      	@IRInst:sub	%t434	x	%t436
	str r6,[fp,#1732]                                 	@IRInst:sub	%t434	x	%t436
.L238:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t438	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t438	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t438	y	2
	str r6,[fp,#1748]                                 	@IRInst:sdiv	%t438	y	2
	ldr r4,[fp,#1748]                                 	@IRInst:mul	%t439	%t438	2
	mov r5,#2                                         	@IRInst:mul	%t439	%t438	2
	mul r6,r4,r5                                      	@IRInst:mul	%t439	%t438	2
	str r6,[fp,#1752]                                 	@IRInst:mul	%t439	%t438	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t437	y	%t439
	ldr r5,[fp,#1752]                                 	@IRInst:sub	%t437	y	%t439
	sub r6,r4,r5                                      	@IRInst:sub	%t437	y	%t439
	str r6,[fp,#1744]                                 	@IRInst:sub	%t437	y	%t439
	ldr r4,[fp,#1744]                                 	@IRInst:beq	%t440	%t437	0
	mov r5,#0                                         	@IRInst:beq	%t440	%t437	0
	cmp r4,r5                                         	@IRInst:beq	%t440	%t437	0
	moveq r6,#1                                       	@IRInst:beq	%t440	%t437	0
	movne r6,#0                                       	@IRInst:beq	%t440	%t437	0
	str r6,[fp,#1756]                                 	@IRInst:beq	%t440	%t437	0
	beq .L241                                         
	b .L242                                           
.L241:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t441	i	4
	mov r5,#4                                         	@IRInst:mul	%t441	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t441	i	4
	str r6,[fp,#1760]                                 	@IRInst:mul	%t441	i	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t442	SHIFT_TABLE	%t441
	ldr r5,[fp,#1760]                                 	@IRInst:add	%t442	SHIFT_TABLE	%t441
	add r6,r4,r5                                      	@IRInst:add	%t442	SHIFT_TABLE	%t441
	str r6,[fp,#1764]                                 	@IRInst:add	%t442	SHIFT_TABLE	%t441
	ldr r4,[fp,#1764]                                 	@IRInst:assign	%t443	%t442
	ldr r4,[r4]                                       	@IRInst:assign	%t443	%t442
	str r4,[fp,#1768]                                 	@IRInst:assign	%t443	%t442
	mov r4,#1                                         	@IRInst:mul	%t444	1	%t443
	ldr r5,[fp,#1768]                                 	@IRInst:mul	%t444	1	%t443
	mul r6,r4,r5                                      	@IRInst:mul	%t444	1	%t443
	str r6,[fp,#1772]                                 	@IRInst:mul	%t444	1	%t443
	ldr r4,[fp,#4]                                    	@IRInst:add	%t445	ans	%t444
	ldr r5,[fp,#1772]                                 	@IRInst:add	%t445	ans	%t444
	add r6,r4,r5                                      	@IRInst:add	%t445	ans	%t444
	str r6,[fp,#1776]                                 	@IRInst:add	%t445	ans	%t444
	ldr r4,[fp,#1776]                                 	@IRInst:assign	ans	%t445
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t445
.L242:
.L243:
	b .L240                                           
.L239:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t447	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t447	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t447	y	2
	str r6,[fp,#1784]                                 	@IRInst:sdiv	%t447	y	2
	ldr r4,[fp,#1784]                                 	@IRInst:mul	%t448	%t447	2
	mov r5,#2                                         	@IRInst:mul	%t448	%t447	2
	mul r6,r4,r5                                      	@IRInst:mul	%t448	%t447	2
	str r6,[fp,#1788]                                 	@IRInst:mul	%t448	%t447	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t446	y	%t448
	ldr r5,[fp,#1788]                                 	@IRInst:sub	%t446	y	%t448
	sub r6,r4,r5                                      	@IRInst:sub	%t446	y	%t448
	str r6,[fp,#1780]                                 	@IRInst:sub	%t446	y	%t448
.L244:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t449	i	4
	mov r5,#4                                         	@IRInst:mul	%t449	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t449	i	4
	str r6,[fp,#1792]                                 	@IRInst:mul	%t449	i	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t450	SHIFT_TABLE	%t449
	ldr r5,[fp,#1792]                                 	@IRInst:add	%t450	SHIFT_TABLE	%t449
	add r6,r4,r5                                      	@IRInst:add	%t450	SHIFT_TABLE	%t449
	str r6,[fp,#1796]                                 	@IRInst:add	%t450	SHIFT_TABLE	%t449
	ldr r4,[fp,#1796]                                 	@IRInst:assign	%t451	%t450
	ldr r4,[r4]                                       	@IRInst:assign	%t451	%t450
	str r4,[fp,#1800]                                 	@IRInst:assign	%t451	%t450
	mov r4,#1                                         	@IRInst:mul	%t452	1	%t451
	ldr r5,[fp,#1800]                                 	@IRInst:mul	%t452	1	%t451
	mul r6,r4,r5                                      	@IRInst:mul	%t452	1	%t451
	str r6,[fp,#1804]                                 	@IRInst:mul	%t452	1	%t451
	ldr r4,[fp,#4]                                    	@IRInst:add	%t453	ans	%t452
	ldr r5,[fp,#1804]                                 	@IRInst:add	%t453	ans	%t452
	add r6,r4,r5                                      	@IRInst:add	%t453	ans	%t452
	str r6,[fp,#1808]                                 	@IRInst:add	%t453	ans	%t452
	ldr r4,[fp,#1808]                                 	@IRInst:assign	ans	%t453
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t453
.L245:
.L246:
.L240:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t454	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t454	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t454	x	2
	str r6,[fp,#1812]                                 	@IRInst:sdiv	%t454	x	2
	ldr r4,[fp,#1812]                                 	@IRInst:assign	x	%t454
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t454
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t455	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t455	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t455	y	2
	str r6,[fp,#1816]                                 	@IRInst:sdiv	%t455	y	2
	ldr r4,[fp,#1816]                                 	@IRInst:assign	y	%t455
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t455
	ldr r4,[fp,#8]                                    	@IRInst:add	%t456	i	1
	mov r5,#1                                         	@IRInst:add	%t456	i	1
	add r6,r4,r5                                      	@IRInst:add	%t456	i	1
	str r6,[fp,#1820]                                 	@IRInst:add	%t456	i	1
	ldr r4,[fp,#1820]                                 	@IRInst:assign	i	%t456
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t456
	b .L235                                           
.L237:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#1716]                                 	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#1708]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#1712]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L247:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t457	i	16
	mov r5,#16                                        	@IRInst:blt	%t457	i	16
	cmp r4,r5                                         	@IRInst:blt	%t457	i	16
	movlt r6,#1                                       	@IRInst:blt	%t457	i	16
	movge r6,#0                                       	@IRInst:blt	%t457	i	16
	str r6,[fp,#1824]                                 	@IRInst:blt	%t457	i	16
	blt .L248                                         
	b .L249                                           
.L248:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t459	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t459	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t459	x	2
	str r6,[fp,#1832]                                 	@IRInst:sdiv	%t459	x	2
	ldr r4,[fp,#1832]                                 	@IRInst:mul	%t460	%t459	2
	mov r5,#2                                         	@IRInst:mul	%t460	%t459	2
	mul r6,r4,r5                                      	@IRInst:mul	%t460	%t459	2
	str r6,[fp,#1836]                                 	@IRInst:mul	%t460	%t459	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t458	x	%t460
	ldr r5,[fp,#1836]                                 	@IRInst:sub	%t458	x	%t460
	sub r6,r4,r5                                      	@IRInst:sub	%t458	x	%t460
	str r6,[fp,#1828]                                 	@IRInst:sub	%t458	x	%t460
.L253:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t462	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t462	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t462	y	2
	str r6,[fp,#1844]                                 	@IRInst:sdiv	%t462	y	2
	ldr r4,[fp,#1844]                                 	@IRInst:mul	%t463	%t462	2
	mov r5,#2                                         	@IRInst:mul	%t463	%t462	2
	mul r6,r4,r5                                      	@IRInst:mul	%t463	%t462	2
	str r6,[fp,#1848]                                 	@IRInst:mul	%t463	%t462	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t461	y	%t463
	ldr r5,[fp,#1848]                                 	@IRInst:sub	%t461	y	%t463
	sub r6,r4,r5                                      	@IRInst:sub	%t461	y	%t463
	str r6,[fp,#1840]                                 	@IRInst:sub	%t461	y	%t463
.L250:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t464	i	4
	mov r5,#4                                         	@IRInst:mul	%t464	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t464	i	4
	str r6,[fp,#1852]                                 	@IRInst:mul	%t464	i	4
	ldr r4,.global_2_SHIFT_TABLE                      	@IRInst:add	%t465	SHIFT_TABLE	%t464
	ldr r5,[fp,#1852]                                 	@IRInst:add	%t465	SHIFT_TABLE	%t464
	add r6,r4,r5                                      	@IRInst:add	%t465	SHIFT_TABLE	%t464
	str r6,[fp,#1856]                                 	@IRInst:add	%t465	SHIFT_TABLE	%t464
	ldr r4,[fp,#1856]                                 	@IRInst:assign	%t466	%t465
	ldr r4,[r4]                                       	@IRInst:assign	%t466	%t465
	str r4,[fp,#1860]                                 	@IRInst:assign	%t466	%t465
	mov r4,#1                                         	@IRInst:mul	%t467	1	%t466
	ldr r5,[fp,#1860]                                 	@IRInst:mul	%t467	1	%t466
	mul r6,r4,r5                                      	@IRInst:mul	%t467	1	%t466
	str r6,[fp,#1864]                                 	@IRInst:mul	%t467	1	%t466
	ldr r4,[fp,#4]                                    	@IRInst:add	%t468	ans	%t467
	ldr r5,[fp,#1864]                                 	@IRInst:add	%t468	ans	%t467
	add r6,r4,r5                                      	@IRInst:add	%t468	ans	%t467
	str r6,[fp,#1868]                                 	@IRInst:add	%t468	ans	%t467
	ldr r4,[fp,#1868]                                 	@IRInst:assign	ans	%t468
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t468
.L251:
.L252:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t469	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t469	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t469	x	2
	str r6,[fp,#1872]                                 	@IRInst:sdiv	%t469	x	2
	ldr r4,[fp,#1872]                                 	@IRInst:assign	x	%t469
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t469
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t470	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t470	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t470	y	2
	str r6,[fp,#1876]                                 	@IRInst:sdiv	%t470	y	2
	ldr r4,[fp,#1876]                                 	@IRInst:assign	y	%t470
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t470
	ldr r4,[fp,#8]                                    	@IRInst:add	%t471	i	1
	mov r5,#1                                         	@IRInst:add	%t471	i	1
	add r6,r4,r5                                      	@IRInst:add	%t471	i	1
	str r6,[fp,#1880]                                 	@IRInst:add	%t471	i	1
	ldr r4,[fp,#1880]                                 	@IRInst:assign	i	%t471
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t471
	b .L247                                           
.L249:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#1712]                                 	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t472	1	15
	mov r5,#15                                        	@IRInst:bgt	%t472	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t472	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t472	1	15
	movle r6,#0                                       	@IRInst:bgt	%t472	1	15
	str r6,[fp,#1884]                                 	@IRInst:bgt	%t472	1	15
	bgt .L254                                         
	b .L255                                           
.L254:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L256                                           
.L255:
.global_3_SHIFT_TABLE:
        .long   SHIFT_TABLE
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t473	1	4
	mov r5,#4                                         	@IRInst:mul	%t473	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t473	1	4
	str r6,[fp,#1888]                                 	@IRInst:mul	%t473	1	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t474	SHIFT_TABLE	%t473
	ldr r5,[fp,#1888]                                 	@IRInst:add	%t474	SHIFT_TABLE	%t473
	add r6,r4,r5                                      	@IRInst:add	%t474	SHIFT_TABLE	%t473
	str r6,[fp,#1892]                                 	@IRInst:add	%t474	SHIFT_TABLE	%t473
	ldr r4,[fp,#1892]                                 	@IRInst:assign	%t475	%t474
	ldr r4,[r4]                                       	@IRInst:assign	%t475	%t474
	str r4,[fp,#1896]                                 	@IRInst:assign	%t475	%t474
	ldr r4,[fp,#1712]                                 	@IRInst:mul	%t476	c	%t475
	ldr r5,[fp,#1896]                                 	@IRInst:mul	%t476	c	%t475
	mul r6,r4,r5                                      	@IRInst:mul	%t476	c	%t475
	str r6,[fp,#1900]                                 	@IRInst:mul	%t476	c	%t475
	ldr r4,[fp,#1900]                                 	@IRInst:assign	x	%t476
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t476
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L257:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t477	i	16
	mov r5,#16                                        	@IRInst:blt	%t477	i	16
	cmp r4,r5                                         	@IRInst:blt	%t477	i	16
	movlt r6,#1                                       	@IRInst:blt	%t477	i	16
	movge r6,#0                                       	@IRInst:blt	%t477	i	16
	str r6,[fp,#1904]                                 	@IRInst:blt	%t477	i	16
	blt .L258                                         
	b .L259                                           
.L258:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t479	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t479	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t479	x	2
	str r6,[fp,#1912]                                 	@IRInst:sdiv	%t479	x	2
	ldr r4,[fp,#1912]                                 	@IRInst:mul	%t480	%t479	2
	mov r5,#2                                         	@IRInst:mul	%t480	%t479	2
	mul r6,r4,r5                                      	@IRInst:mul	%t480	%t479	2
	str r6,[fp,#1916]                                 	@IRInst:mul	%t480	%t479	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t478	x	%t480
	ldr r5,[fp,#1916]                                 	@IRInst:sub	%t478	x	%t480
	sub r6,r4,r5                                      	@IRInst:sub	%t478	x	%t480
	str r6,[fp,#1908]                                 	@IRInst:sub	%t478	x	%t480
.L263:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t482	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t482	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t482	y	2
	str r6,[fp,#1924]                                 	@IRInst:sdiv	%t482	y	2
	ldr r4,[fp,#1924]                                 	@IRInst:mul	%t483	%t482	2
	mov r5,#2                                         	@IRInst:mul	%t483	%t482	2
	mul r6,r4,r5                                      	@IRInst:mul	%t483	%t482	2
	str r6,[fp,#1928]                                 	@IRInst:mul	%t483	%t482	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t481	y	%t483
	ldr r5,[fp,#1928]                                 	@IRInst:sub	%t481	y	%t483
	sub r6,r4,r5                                      	@IRInst:sub	%t481	y	%t483
	str r6,[fp,#1920]                                 	@IRInst:sub	%t481	y	%t483
.L260:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t484	i	4
	mov r5,#4                                         	@IRInst:mul	%t484	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t484	i	4
	str r6,[fp,#1932]                                 	@IRInst:mul	%t484	i	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t485	SHIFT_TABLE	%t484
	ldr r5,[fp,#1932]                                 	@IRInst:add	%t485	SHIFT_TABLE	%t484
	add r6,r4,r5                                      	@IRInst:add	%t485	SHIFT_TABLE	%t484
	str r6,[fp,#1936]                                 	@IRInst:add	%t485	SHIFT_TABLE	%t484
	ldr r4,[fp,#1936]                                 	@IRInst:assign	%t486	%t485
	ldr r4,[r4]                                       	@IRInst:assign	%t486	%t485
	str r4,[fp,#1940]                                 	@IRInst:assign	%t486	%t485
	mov r4,#1                                         	@IRInst:mul	%t487	1	%t486
	ldr r5,[fp,#1940]                                 	@IRInst:mul	%t487	1	%t486
	mul r6,r4,r5                                      	@IRInst:mul	%t487	1	%t486
	str r6,[fp,#1944]                                 	@IRInst:mul	%t487	1	%t486
	ldr r4,[fp,#4]                                    	@IRInst:add	%t488	ans	%t487
	ldr r5,[fp,#1944]                                 	@IRInst:add	%t488	ans	%t487
	add r6,r4,r5                                      	@IRInst:add	%t488	ans	%t487
	str r6,[fp,#1948]                                 	@IRInst:add	%t488	ans	%t487
	ldr r4,[fp,#1948]                                 	@IRInst:assign	ans	%t488
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t488
.L261:
.L262:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t489	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t489	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t489	x	2
	str r6,[fp,#1952]                                 	@IRInst:sdiv	%t489	x	2
	ldr r4,[fp,#1952]                                 	@IRInst:assign	x	%t489
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t489
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t490	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t490	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t490	y	2
	str r6,[fp,#1956]                                 	@IRInst:sdiv	%t490	y	2
	ldr r4,[fp,#1956]                                 	@IRInst:assign	y	%t490
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t490
	ldr r4,[fp,#8]                                    	@IRInst:add	%t491	i	1
	mov r5,#1                                         	@IRInst:add	%t491	i	1
	add r6,r4,r5                                      	@IRInst:add	%t491	i	1
	str r6,[fp,#1960]                                 	@IRInst:add	%t491	i	1
	ldr r4,[fp,#1960]                                 	@IRInst:assign	i	%t491
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t491
	b .L257                                           
.L259:
.L256:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#1712]                                 	@IRInst:assign	c	ans
	ldr r4,[fp,#1716]                                 	@IRInst:assign	al	sum
	str r4,[fp,#1708]                                 	@IRInst:assign	al	sum
	b .L232                                           
.L234:
	ldr r4,[fp,#1708]                                 	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	mres	ans
	str r4,[fp,#1628]                                 	@IRInst:assign	mres	ans
.L230:
.L231:
	ldr r4,[fp,#1620]                                 	@IRInst:assign	al	ml
	str r4,[fp,#1964]                                 	@IRInst:assign	al	ml
	ldr r4,[fp,#1620]                                 	@IRInst:assign	c	ml
	str r4,[fp,#1968]                                 	@IRInst:assign	c	ml
.L264:
	ldr r4,[fp,#1968]                                 	@IRInst:assign	%t495	c
	str r4,[fp,#1976]                                 	@IRInst:assign	%t495	c
	ldr r4,[fp,#1976]                                 	@IRInst:not_zero	%t496	%t495	0
	mov r5,#0                                         	@IRInst:not_zero	%t496	%t495	0
	cmp r4,r5                                         	@IRInst:not_zero	%t496	%t495	0
	moveq r6,#0                                       	@IRInst:not_zero	%t496	%t495	0
	movne r6,#1                                       	@IRInst:not_zero	%t496	%t495	0
	str r6,[fp,#1980]                                 	@IRInst:not_zero	%t496	%t495	0
	beq .L266                                         
	b .L265                                           
.L265:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#1964]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#1968]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L267:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t497	i	16
	mov r5,#16                                        	@IRInst:blt	%t497	i	16
	cmp r4,r5                                         	@IRInst:blt	%t497	i	16
	movlt r6,#1                                       	@IRInst:blt	%t497	i	16
	movge r6,#0                                       	@IRInst:blt	%t497	i	16
	str r6,[fp,#1984]                                 	@IRInst:blt	%t497	i	16
	blt .L268                                         
	b .L269                                           
.L268:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t499	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t499	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t499	x	2
	str r6,[fp,#1992]                                 	@IRInst:sdiv	%t499	x	2
	ldr r4,[fp,#1992]                                 	@IRInst:mul	%t500	%t499	2
	mov r5,#2                                         	@IRInst:mul	%t500	%t499	2
	mul r6,r4,r5                                      	@IRInst:mul	%t500	%t499	2
	str r6,[fp,#1996]                                 	@IRInst:mul	%t500	%t499	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t498	x	%t500
	ldr r5,[fp,#1996]                                 	@IRInst:sub	%t498	x	%t500
	sub r6,r4,r5                                      	@IRInst:sub	%t498	x	%t500
	str r6,[fp,#1988]                                 	@IRInst:sub	%t498	x	%t500
.L270:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t502	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t502	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t502	y	2
	str r6,[fp,#2004]                                 	@IRInst:sdiv	%t502	y	2
	ldr r4,[fp,#2004]                                 	@IRInst:mul	%t503	%t502	2
	mov r5,#2                                         	@IRInst:mul	%t503	%t502	2
	mul r6,r4,r5                                      	@IRInst:mul	%t503	%t502	2
	str r6,[fp,#2008]                                 	@IRInst:mul	%t503	%t502	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t501	y	%t503
	ldr r5,[fp,#2008]                                 	@IRInst:sub	%t501	y	%t503
	sub r6,r4,r5                                      	@IRInst:sub	%t501	y	%t503
	str r6,[fp,#2000]                                 	@IRInst:sub	%t501	y	%t503
	ldr r4,[fp,#2000]                                 	@IRInst:beq	%t504	%t501	0
	mov r5,#0                                         	@IRInst:beq	%t504	%t501	0
	cmp r4,r5                                         	@IRInst:beq	%t504	%t501	0
	moveq r6,#1                                       	@IRInst:beq	%t504	%t501	0
	movne r6,#0                                       	@IRInst:beq	%t504	%t501	0
	str r6,[fp,#2012]                                 	@IRInst:beq	%t504	%t501	0
	beq .L273                                         
	b .L274                                           
.L273:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t505	i	4
	mov r5,#4                                         	@IRInst:mul	%t505	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t505	i	4
	str r6,[fp,#2016]                                 	@IRInst:mul	%t505	i	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t506	SHIFT_TABLE	%t505
	ldr r5,[fp,#2016]                                 	@IRInst:add	%t506	SHIFT_TABLE	%t505
	add r6,r4,r5                                      	@IRInst:add	%t506	SHIFT_TABLE	%t505
	str r6,[fp,#2020]                                 	@IRInst:add	%t506	SHIFT_TABLE	%t505
	ldr r4,[fp,#2020]                                 	@IRInst:assign	%t507	%t506
	ldr r4,[r4]                                       	@IRInst:assign	%t507	%t506
	str r4,[fp,#2024]                                 	@IRInst:assign	%t507	%t506
	mov r4,#1                                         	@IRInst:mul	%t508	1	%t507
	ldr r5,[fp,#2024]                                 	@IRInst:mul	%t508	1	%t507
	mul r6,r4,r5                                      	@IRInst:mul	%t508	1	%t507
	str r6,[fp,#2028]                                 	@IRInst:mul	%t508	1	%t507
	ldr r4,[fp,#4]                                    	@IRInst:add	%t509	ans	%t508
	ldr r5,[fp,#2028]                                 	@IRInst:add	%t509	ans	%t508
	add r6,r4,r5                                      	@IRInst:add	%t509	ans	%t508
	str r6,[fp,#2032]                                 	@IRInst:add	%t509	ans	%t508
	ldr r4,[fp,#2032]                                 	@IRInst:assign	ans	%t509
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t509
.L274:
.L275:
	b .L272                                           
.L271:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t511	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t511	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t511	y	2
	str r6,[fp,#2040]                                 	@IRInst:sdiv	%t511	y	2
	ldr r4,[fp,#2040]                                 	@IRInst:mul	%t512	%t511	2
	mov r5,#2                                         	@IRInst:mul	%t512	%t511	2
	mul r6,r4,r5                                      	@IRInst:mul	%t512	%t511	2
	str r6,[fp,#2044]                                 	@IRInst:mul	%t512	%t511	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t510	y	%t512
	ldr r5,[fp,#2044]                                 	@IRInst:sub	%t510	y	%t512
	sub r6,r4,r5                                      	@IRInst:sub	%t510	y	%t512
	str r6,[fp,#2036]                                 	@IRInst:sub	%t510	y	%t512
.L276:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t513	i	4
	mov r5,#4                                         	@IRInst:mul	%t513	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t513	i	4
	str r6,[fp,#2048]                                 	@IRInst:mul	%t513	i	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t514	SHIFT_TABLE	%t513
	ldr r5,[fp,#2048]                                 	@IRInst:add	%t514	SHIFT_TABLE	%t513
	add r6,r4,r5                                      	@IRInst:add	%t514	SHIFT_TABLE	%t513
	str r6,[fp,#2052]                                 	@IRInst:add	%t514	SHIFT_TABLE	%t513
	ldr r4,[fp,#2052]                                 	@IRInst:assign	%t515	%t514
	ldr r4,[r4]                                       	@IRInst:assign	%t515	%t514
	str r4,[fp,#2056]                                 	@IRInst:assign	%t515	%t514
	mov r4,#1                                         	@IRInst:mul	%t516	1	%t515
	ldr r5,[fp,#2056]                                 	@IRInst:mul	%t516	1	%t515
	mul r6,r4,r5                                      	@IRInst:mul	%t516	1	%t515
	str r6,[fp,#2060]                                 	@IRInst:mul	%t516	1	%t515
	ldr r4,[fp,#4]                                    	@IRInst:add	%t517	ans	%t516
	ldr r5,[fp,#2060]                                 	@IRInst:add	%t517	ans	%t516
	add r6,r4,r5                                      	@IRInst:add	%t517	ans	%t516
	str r6,[fp,#2064]                                 	@IRInst:add	%t517	ans	%t516
	ldr r4,[fp,#2064]                                 	@IRInst:assign	ans	%t517
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t517
.L277:
.L278:
.L272:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t518	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t518	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t518	x	2
	str r6,[fp,#2068]                                 	@IRInst:sdiv	%t518	x	2
	ldr r4,[fp,#2068]                                 	@IRInst:assign	x	%t518
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t518
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t519	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t519	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t519	y	2
	str r6,[fp,#2072]                                 	@IRInst:sdiv	%t519	y	2
	ldr r4,[fp,#2072]                                 	@IRInst:assign	y	%t519
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t519
	ldr r4,[fp,#8]                                    	@IRInst:add	%t520	i	1
	mov r5,#1                                         	@IRInst:add	%t520	i	1
	add r6,r4,r5                                      	@IRInst:add	%t520	i	1
	str r6,[fp,#2076]                                 	@IRInst:add	%t520	i	1
	ldr r4,[fp,#2076]                                 	@IRInst:assign	i	%t520
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t520
	b .L267                                           
.L269:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#1972]                                 	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#1964]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#1968]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L279:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t521	i	16
	mov r5,#16                                        	@IRInst:blt	%t521	i	16
	cmp r4,r5                                         	@IRInst:blt	%t521	i	16
	movlt r6,#1                                       	@IRInst:blt	%t521	i	16
	movge r6,#0                                       	@IRInst:blt	%t521	i	16
	str r6,[fp,#2080]                                 	@IRInst:blt	%t521	i	16
	blt .L280                                         
	b .L281                                           
.L280:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t523	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t523	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t523	x	2
	str r6,[fp,#2088]                                 	@IRInst:sdiv	%t523	x	2
	ldr r4,[fp,#2088]                                 	@IRInst:mul	%t524	%t523	2
	mov r5,#2                                         	@IRInst:mul	%t524	%t523	2
	mul r6,r4,r5                                      	@IRInst:mul	%t524	%t523	2
	str r6,[fp,#2092]                                 	@IRInst:mul	%t524	%t523	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t522	x	%t524
	ldr r5,[fp,#2092]                                 	@IRInst:sub	%t522	x	%t524
	sub r6,r4,r5                                      	@IRInst:sub	%t522	x	%t524
	str r6,[fp,#2084]                                 	@IRInst:sub	%t522	x	%t524
.L285:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t526	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t526	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t526	y	2
	str r6,[fp,#2100]                                 	@IRInst:sdiv	%t526	y	2
	ldr r4,[fp,#2100]                                 	@IRInst:mul	%t527	%t526	2
	mov r5,#2                                         	@IRInst:mul	%t527	%t526	2
	mul r6,r4,r5                                      	@IRInst:mul	%t527	%t526	2
	str r6,[fp,#2104]                                 	@IRInst:mul	%t527	%t526	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t525	y	%t527
	ldr r5,[fp,#2104]                                 	@IRInst:sub	%t525	y	%t527
	sub r6,r4,r5                                      	@IRInst:sub	%t525	y	%t527
	str r6,[fp,#2096]                                 	@IRInst:sub	%t525	y	%t527
.L282:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t528	i	4
	mov r5,#4                                         	@IRInst:mul	%t528	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t528	i	4
	str r6,[fp,#2108]                                 	@IRInst:mul	%t528	i	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t529	SHIFT_TABLE	%t528
	ldr r5,[fp,#2108]                                 	@IRInst:add	%t529	SHIFT_TABLE	%t528
	add r6,r4,r5                                      	@IRInst:add	%t529	SHIFT_TABLE	%t528
	str r6,[fp,#2112]                                 	@IRInst:add	%t529	SHIFT_TABLE	%t528
	ldr r4,[fp,#2112]                                 	@IRInst:assign	%t530	%t529
	ldr r4,[r4]                                       	@IRInst:assign	%t530	%t529
	str r4,[fp,#2116]                                 	@IRInst:assign	%t530	%t529
	mov r4,#1                                         	@IRInst:mul	%t531	1	%t530
	ldr r5,[fp,#2116]                                 	@IRInst:mul	%t531	1	%t530
	mul r6,r4,r5                                      	@IRInst:mul	%t531	1	%t530
	str r6,[fp,#2120]                                 	@IRInst:mul	%t531	1	%t530
	ldr r4,[fp,#4]                                    	@IRInst:add	%t532	ans	%t531
	ldr r5,[fp,#2120]                                 	@IRInst:add	%t532	ans	%t531
	add r6,r4,r5                                      	@IRInst:add	%t532	ans	%t531
	str r6,[fp,#2124]                                 	@IRInst:add	%t532	ans	%t531
	ldr r4,[fp,#2124]                                 	@IRInst:assign	ans	%t532
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t532
.L283:
.L284:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t533	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t533	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t533	x	2
	str r6,[fp,#2128]                                 	@IRInst:sdiv	%t533	x	2
	ldr r4,[fp,#2128]                                 	@IRInst:assign	x	%t533
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t533
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t534	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t534	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t534	y	2
	str r6,[fp,#2132]                                 	@IRInst:sdiv	%t534	y	2
	ldr r4,[fp,#2132]                                 	@IRInst:assign	y	%t534
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t534
	ldr r4,[fp,#8]                                    	@IRInst:add	%t535	i	1
	mov r5,#1                                         	@IRInst:add	%t535	i	1
	add r6,r4,r5                                      	@IRInst:add	%t535	i	1
	str r6,[fp,#2136]                                 	@IRInst:add	%t535	i	1
	ldr r4,[fp,#2136]                                 	@IRInst:assign	i	%t535
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t535
	b .L279                                           
.L281:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#1968]                                 	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t536	1	15
	mov r5,#15                                        	@IRInst:bgt	%t536	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t536	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t536	1	15
	movle r6,#0                                       	@IRInst:bgt	%t536	1	15
	str r6,[fp,#2140]                                 	@IRInst:bgt	%t536	1	15
	bgt .L286                                         
	b .L287                                           
.L286:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L288                                           
.L287:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t537	1	4
	mov r5,#4                                         	@IRInst:mul	%t537	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t537	1	4
	str r6,[fp,#2144]                                 	@IRInst:mul	%t537	1	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t538	SHIFT_TABLE	%t537
	ldr r5,[fp,#2144]                                 	@IRInst:add	%t538	SHIFT_TABLE	%t537
	add r6,r4,r5                                      	@IRInst:add	%t538	SHIFT_TABLE	%t537
	str r6,[fp,#2148]                                 	@IRInst:add	%t538	SHIFT_TABLE	%t537
	ldr r4,[fp,#2148]                                 	@IRInst:assign	%t539	%t538
	ldr r4,[r4]                                       	@IRInst:assign	%t539	%t538
	str r4,[fp,#2152]                                 	@IRInst:assign	%t539	%t538
	ldr r4,[fp,#1968]                                 	@IRInst:mul	%t540	c	%t539
	ldr r5,[fp,#2152]                                 	@IRInst:mul	%t540	c	%t539
	mul r6,r4,r5                                      	@IRInst:mul	%t540	c	%t539
	str r6,[fp,#2156]                                 	@IRInst:mul	%t540	c	%t539
	ldr r4,[fp,#2156]                                 	@IRInst:assign	x	%t540
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t540
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L289:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t541	i	16
	mov r5,#16                                        	@IRInst:blt	%t541	i	16
	cmp r4,r5                                         	@IRInst:blt	%t541	i	16
	movlt r6,#1                                       	@IRInst:blt	%t541	i	16
	movge r6,#0                                       	@IRInst:blt	%t541	i	16
	str r6,[fp,#2160]                                 	@IRInst:blt	%t541	i	16
	blt .L290                                         
	b .L291                                           
.L290:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t543	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t543	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t543	x	2
	str r6,[fp,#2168]                                 	@IRInst:sdiv	%t543	x	2
	ldr r4,[fp,#2168]                                 	@IRInst:mul	%t544	%t543	2
	mov r5,#2                                         	@IRInst:mul	%t544	%t543	2
	mul r6,r4,r5                                      	@IRInst:mul	%t544	%t543	2
	str r6,[fp,#2172]                                 	@IRInst:mul	%t544	%t543	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t542	x	%t544
	ldr r5,[fp,#2172]                                 	@IRInst:sub	%t542	x	%t544
	sub r6,r4,r5                                      	@IRInst:sub	%t542	x	%t544
	str r6,[fp,#2164]                                 	@IRInst:sub	%t542	x	%t544
.L295:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t546	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t546	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t546	y	2
	str r6,[fp,#2180]                                 	@IRInst:sdiv	%t546	y	2
	ldr r4,[fp,#2180]                                 	@IRInst:mul	%t547	%t546	2
	mov r5,#2                                         	@IRInst:mul	%t547	%t546	2
	mul r6,r4,r5                                      	@IRInst:mul	%t547	%t546	2
	str r6,[fp,#2184]                                 	@IRInst:mul	%t547	%t546	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t545	y	%t547
	ldr r5,[fp,#2184]                                 	@IRInst:sub	%t545	y	%t547
	sub r6,r4,r5                                      	@IRInst:sub	%t545	y	%t547
	str r6,[fp,#2176]                                 	@IRInst:sub	%t545	y	%t547
.L292:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t548	i	4
	mov r5,#4                                         	@IRInst:mul	%t548	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t548	i	4
	str r6,[fp,#2188]                                 	@IRInst:mul	%t548	i	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t549	SHIFT_TABLE	%t548
	ldr r5,[fp,#2188]                                 	@IRInst:add	%t549	SHIFT_TABLE	%t548
	add r6,r4,r5                                      	@IRInst:add	%t549	SHIFT_TABLE	%t548
	str r6,[fp,#2192]                                 	@IRInst:add	%t549	SHIFT_TABLE	%t548
	ldr r4,[fp,#2192]                                 	@IRInst:assign	%t550	%t549
	ldr r4,[r4]                                       	@IRInst:assign	%t550	%t549
	str r4,[fp,#2196]                                 	@IRInst:assign	%t550	%t549
	mov r4,#1                                         	@IRInst:mul	%t551	1	%t550
	ldr r5,[fp,#2196]                                 	@IRInst:mul	%t551	1	%t550
	mul r6,r4,r5                                      	@IRInst:mul	%t551	1	%t550
	str r6,[fp,#2200]                                 	@IRInst:mul	%t551	1	%t550
	ldr r4,[fp,#4]                                    	@IRInst:add	%t552	ans	%t551
	ldr r5,[fp,#2200]                                 	@IRInst:add	%t552	ans	%t551
	add r6,r4,r5                                      	@IRInst:add	%t552	ans	%t551
	str r6,[fp,#2204]                                 	@IRInst:add	%t552	ans	%t551
	ldr r4,[fp,#2204]                                 	@IRInst:assign	ans	%t552
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t552
.L293:
.L294:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t553	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t553	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t553	x	2
	str r6,[fp,#2208]                                 	@IRInst:sdiv	%t553	x	2
	ldr r4,[fp,#2208]                                 	@IRInst:assign	x	%t553
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t553
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t554	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t554	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t554	y	2
	str r6,[fp,#2212]                                 	@IRInst:sdiv	%t554	y	2
	ldr r4,[fp,#2212]                                 	@IRInst:assign	y	%t554
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t554
	ldr r4,[fp,#8]                                    	@IRInst:add	%t555	i	1
	mov r5,#1                                         	@IRInst:add	%t555	i	1
	add r6,r4,r5                                      	@IRInst:add	%t555	i	1
	str r6,[fp,#2216]                                 	@IRInst:add	%t555	i	1
	ldr r4,[fp,#2216]                                 	@IRInst:assign	i	%t555
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t555
	b .L289                                           
.L291:
.L288:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#1968]                                 	@IRInst:assign	c	ans
	ldr r4,[fp,#1972]                                 	@IRInst:assign	al	sum
	str r4,[fp,#1964]                                 	@IRInst:assign	al	sum
	b .L264                                           
.L266:
	ldr r4,[fp,#1964]                                 	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	ml	ans
	str r4,[fp,#1620]                                 	@IRInst:assign	ml	ans
	ldr r4,[fp,#1624]                                 	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t556	y	15
	mov r5,#15                                        	@IRInst:bge	%t556	y	15
	cmp r4,r5                                         	@IRInst:bge	%t556	y	15
	movge r6,#1                                       	@IRInst:bge	%t556	y	15
	movlt r6,#0                                       	@IRInst:bge	%t556	y	15
	str r6,[fp,#2220]                                 	@IRInst:bge	%t556	y	15
	bge .L296                                         
	b .L297                                           
.L296:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t557	x	0
	mov r5,#0                                         	@IRInst:blt	%t557	x	0
	cmp r4,r5                                         	@IRInst:blt	%t557	x	0
	movlt r6,#1                                       	@IRInst:blt	%t557	x	0
	movge r6,#0                                       	@IRInst:blt	%t557	x	0
	str r6,[fp,#2224]                                 	@IRInst:blt	%t557	x	0
	blt .L299                                         
	b .L300                                           
.L299:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L301                                           
.L300:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L301:
	b .L298                                           
.L297:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t558	y	0
	mov r5,#0                                         	@IRInst:bgt	%t558	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t558	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t558	y	0
	movle r6,#0                                       	@IRInst:bgt	%t558	y	0
	str r6,[fp,#2228]                                 	@IRInst:bgt	%t558	y	0
	bgt .L302                                         
	b .L303                                           
.L302:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t559	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t559	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t559	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t559	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t559	x	32767
	str r6,[fp,#2232]                                 	@IRInst:bgt	%t559	x	32767
	bgt .L305                                         
	b .L306                                           
.L305:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t560	y	4
	mov r5,#4                                         	@IRInst:mul	%t560	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t560	y	4
	str r6,[fp,#2236]                                 	@IRInst:mul	%t560	y	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t561	SHIFT_TABLE	%t560
	ldr r5,[fp,#2236]                                 	@IRInst:add	%t561	SHIFT_TABLE	%t560
	add r6,r4,r5                                      	@IRInst:add	%t561	SHIFT_TABLE	%t560
	str r6,[fp,#2240]                                 	@IRInst:add	%t561	SHIFT_TABLE	%t560
	ldr r4,[fp,#2240]                                 	@IRInst:assign	%t562	%t561
	ldr r4,[r4]                                       	@IRInst:assign	%t562	%t561
	str r4,[fp,#2244]                                 	@IRInst:assign	%t562	%t561
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t563	x	%t562
	ldr r5,[fp,#2244]                                 	@IRInst:sdiv	%t563	x	%t562
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t563	x	%t562
	str r6,[fp,#2248]                                 	@IRInst:sdiv	%t563	x	%t562
	ldr r4,[fp,#2248]                                 	@IRInst:assign	x	%t563
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t563
	ldr r4,[fp,#12]                                   	@IRInst:add	%t564	x	65536
	mov r5,#65536                                     	@IRInst:add	%t564	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t564	x	65536
	str r6,[fp,#2252]                                 	@IRInst:add	%t564	x	65536
	mov r4,#15                                        	@IRInst:sub	%t566	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t566	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t566	15	y
	str r6,[fp,#2260]                                 	@IRInst:sub	%t566	15	y
	ldr r4,[fp,#2260]                                 	@IRInst:add	%t567	%t566	1
	mov r5,#1                                         	@IRInst:add	%t567	%t566	1
	add r6,r4,r5                                      	@IRInst:add	%t567	%t566	1
	str r6,[fp,#2264]                                 	@IRInst:add	%t567	%t566	1
	ldr r4,[fp,#2264]                                 	@IRInst:mul	%t565	%t567	4
	mov r5,#4                                         	@IRInst:mul	%t565	%t567	4
	mul r6,r4,r5                                      	@IRInst:mul	%t565	%t567	4
	str r6,[fp,#2256]                                 	@IRInst:mul	%t565	%t567	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t568	SHIFT_TABLE	%t565
	ldr r5,[fp,#2256]                                 	@IRInst:add	%t568	SHIFT_TABLE	%t565
	add r6,r4,r5                                      	@IRInst:add	%t568	SHIFT_TABLE	%t565
	str r6,[fp,#2268]                                 	@IRInst:add	%t568	SHIFT_TABLE	%t565
	ldr r4,[fp,#2268]                                 	@IRInst:assign	%t569	%t568
	ldr r4,[r4]                                       	@IRInst:assign	%t569	%t568
	str r4,[fp,#2272]                                 	@IRInst:assign	%t569	%t568
	ldr r4,[fp,#2252]                                 	@IRInst:sub	%t570	%t564	%t569
	ldr r5,[fp,#2272]                                 	@IRInst:sub	%t570	%t564	%t569
	sub r6,r4,r5                                      	@IRInst:sub	%t570	%t564	%t569
	str r6,[fp,#2276]                                 	@IRInst:sub	%t570	%t564	%t569
	ldr r4,[fp,#2276]                                 	@IRInst:assign	ans	%t570
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t570
	b .L307                                           
.L306:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t571	y	4
	mov r5,#4                                         	@IRInst:mul	%t571	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t571	y	4
	str r6,[fp,#2280]                                 	@IRInst:mul	%t571	y	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t572	SHIFT_TABLE	%t571
	ldr r5,[fp,#2280]                                 	@IRInst:add	%t572	SHIFT_TABLE	%t571
	add r6,r4,r5                                      	@IRInst:add	%t572	SHIFT_TABLE	%t571
	str r6,[fp,#2284]                                 	@IRInst:add	%t572	SHIFT_TABLE	%t571
	ldr r4,[fp,#2284]                                 	@IRInst:assign	%t573	%t572
	ldr r4,[r4]                                       	@IRInst:assign	%t573	%t572
	str r4,[fp,#2288]                                 	@IRInst:assign	%t573	%t572
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t574	x	%t573
	ldr r5,[fp,#2288]                                 	@IRInst:sdiv	%t574	x	%t573
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t574	x	%t573
	str r6,[fp,#2292]                                 	@IRInst:sdiv	%t574	x	%t573
	ldr r4,[fp,#2292]                                 	@IRInst:assign	ans	%t574
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t574
.L307:
	b .L304                                           
.L303:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L304:
.L298:
	ldr r4,[fp,#4]                                    	@IRInst:assign	mr	ans
	str r4,[fp,#1624]                                 	@IRInst:assign	mr	ans
	b .L219                                           
.L221:
	ldr r4,[fp,#1628]                                 	@IRInst:assign	ans	mres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	mres
	ldr r4,[fp,#4]                                    	@IRInst:assign	pres	ans
	str r4,[fp,#1544]                                 	@IRInst:assign	pres	ans
.L217:
.L218:
	ldr r4,[fp,#1536]                                 	@IRInst:assign	ml	pl
	str r4,[fp,#2296]                                 	@IRInst:assign	ml	pl
	ldr r4,[fp,#1536]                                 	@IRInst:assign	mr	pl
	str r4,[fp,#2300]                                 	@IRInst:assign	mr	pl
	mov r4,#0                                         	@IRInst:assign	mres	0
	str r4,[fp,#2304]                                 	@IRInst:assign	mres	0
.L308:
	ldr r4,[fp,#2300]                                 	@IRInst:assign	%t578	mr
	str r4,[fp,#2308]                                 	@IRInst:assign	%t578	mr
	ldr r4,[fp,#2308]                                 	@IRInst:not_zero	%t579	%t578	0
	mov r5,#0                                         	@IRInst:not_zero	%t579	%t578	0
	cmp r4,r5                                         	@IRInst:not_zero	%t579	%t578	0
	moveq r6,#0                                       	@IRInst:not_zero	%t579	%t578	0
	movne r6,#1                                       	@IRInst:not_zero	%t579	%t578	0
	str r6,[fp,#2312]                                 	@IRInst:not_zero	%t579	%t578	0
	beq .L310                                         
	b .L309                                           
.L309:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#2300]                                 	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L311:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t580	i	16
	mov r5,#16                                        	@IRInst:blt	%t580	i	16
	cmp r4,r5                                         	@IRInst:blt	%t580	i	16
	movlt r6,#1                                       	@IRInst:blt	%t580	i	16
	movge r6,#0                                       	@IRInst:blt	%t580	i	16
	str r6,[fp,#2316]                                 	@IRInst:blt	%t580	i	16
	blt .L312                                         
	b .L313                                           
.L312:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t582	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t582	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t582	x	2
	str r6,[fp,#2324]                                 	@IRInst:sdiv	%t582	x	2
	ldr r4,[fp,#2324]                                 	@IRInst:mul	%t583	%t582	2
	mov r5,#2                                         	@IRInst:mul	%t583	%t582	2
	mul r6,r4,r5                                      	@IRInst:mul	%t583	%t582	2
	str r6,[fp,#2328]                                 	@IRInst:mul	%t583	%t582	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t581	x	%t583
	ldr r5,[fp,#2328]                                 	@IRInst:sub	%t581	x	%t583
	sub r6,r4,r5                                      	@IRInst:sub	%t581	x	%t583
	str r6,[fp,#2320]                                 	@IRInst:sub	%t581	x	%t583
.L317:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t585	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t585	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t585	y	2
	str r6,[fp,#2336]                                 	@IRInst:sdiv	%t585	y	2
	ldr r4,[fp,#2336]                                 	@IRInst:mul	%t586	%t585	2
	mov r5,#2                                         	@IRInst:mul	%t586	%t585	2
	mul r6,r4,r5                                      	@IRInst:mul	%t586	%t585	2
	str r6,[fp,#2340]                                 	@IRInst:mul	%t586	%t585	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t584	y	%t586
	ldr r5,[fp,#2340]                                 	@IRInst:sub	%t584	y	%t586
	sub r6,r4,r5                                      	@IRInst:sub	%t584	y	%t586
	str r6,[fp,#2332]                                 	@IRInst:sub	%t584	y	%t586
.L314:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t587	i	4
	mov r5,#4                                         	@IRInst:mul	%t587	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t587	i	4
	str r6,[fp,#2344]                                 	@IRInst:mul	%t587	i	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t588	SHIFT_TABLE	%t587
	ldr r5,[fp,#2344]                                 	@IRInst:add	%t588	SHIFT_TABLE	%t587
	add r6,r4,r5                                      	@IRInst:add	%t588	SHIFT_TABLE	%t587
	str r6,[fp,#2348]                                 	@IRInst:add	%t588	SHIFT_TABLE	%t587
	ldr r4,[fp,#2348]                                 	@IRInst:assign	%t589	%t588
	ldr r4,[r4]                                       	@IRInst:assign	%t589	%t588
	str r4,[fp,#2352]                                 	@IRInst:assign	%t589	%t588
	mov r4,#1                                         	@IRInst:mul	%t590	1	%t589
	ldr r5,[fp,#2352]                                 	@IRInst:mul	%t590	1	%t589
	mul r6,r4,r5                                      	@IRInst:mul	%t590	1	%t589
	str r6,[fp,#2356]                                 	@IRInst:mul	%t590	1	%t589
	ldr r4,[fp,#4]                                    	@IRInst:add	%t591	ans	%t590
	ldr r5,[fp,#2356]                                 	@IRInst:add	%t591	ans	%t590
	add r6,r4,r5                                      	@IRInst:add	%t591	ans	%t590
	str r6,[fp,#2360]                                 	@IRInst:add	%t591	ans	%t590
	ldr r4,[fp,#2360]                                 	@IRInst:assign	ans	%t591
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t591
.L315:
.L316:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t592	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t592	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t592	x	2
	str r6,[fp,#2364]                                 	@IRInst:sdiv	%t592	x	2
	ldr r4,[fp,#2364]                                 	@IRInst:assign	x	%t592
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t592
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t593	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t593	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t593	y	2
	str r6,[fp,#2368]                                 	@IRInst:sdiv	%t593	y	2
	ldr r4,[fp,#2368]                                 	@IRInst:assign	y	%t593
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t593
	ldr r4,[fp,#8]                                    	@IRInst:add	%t594	i	1
	mov r5,#1                                         	@IRInst:add	%t594	i	1
	add r6,r4,r5                                      	@IRInst:add	%t594	i	1
	str r6,[fp,#2372]                                 	@IRInst:add	%t594	i	1
	ldr r4,[fp,#2372]                                 	@IRInst:assign	i	%t594
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t594
	b .L311                                           
.L313:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t595	ans
	str r4,[fp,#2376]                                 	@IRInst:assign	%t595	ans
	ldr r4,[fp,#2376]                                 	@IRInst:not_zero	%t596	%t595	0
	mov r5,#0                                         	@IRInst:not_zero	%t596	%t595	0
	cmp r4,r5                                         	@IRInst:not_zero	%t596	%t595	0
	moveq r6,#0                                       	@IRInst:not_zero	%t596	%t595	0
	movne r6,#1                                       	@IRInst:not_zero	%t596	%t595	0
	str r6,[fp,#2380]                                 	@IRInst:not_zero	%t596	%t595	0
	beq .L319                                         
	b .L318                                           
.L318:
	ldr r4,[fp,#2304]                                 	@IRInst:assign	al	mres
	str r4,[fp,#2384]                                 	@IRInst:assign	al	mres
	ldr r4,[fp,#2296]                                 	@IRInst:assign	c	ml
	str r4,[fp,#2388]                                 	@IRInst:assign	c	ml
.L321:
	ldr r4,[fp,#2388]                                 	@IRInst:assign	%t600	c
	str r4,[fp,#2396]                                 	@IRInst:assign	%t600	c
	ldr r4,[fp,#2396]                                 	@IRInst:not_zero	%t601	%t600	0
	mov r5,#0                                         	@IRInst:not_zero	%t601	%t600	0
	cmp r4,r5                                         	@IRInst:not_zero	%t601	%t600	0
	moveq r6,#0                                       	@IRInst:not_zero	%t601	%t600	0
	movne r6,#1                                       	@IRInst:not_zero	%t601	%t600	0
	str r6,[fp,#2400]                                 	@IRInst:not_zero	%t601	%t600	0
	beq .L323                                         
	b .L322                                           
.L322:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#2384]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#2388]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L324:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t602	i	16
	mov r5,#16                                        	@IRInst:blt	%t602	i	16
	cmp r4,r5                                         	@IRInst:blt	%t602	i	16
	movlt r6,#1                                       	@IRInst:blt	%t602	i	16
	movge r6,#0                                       	@IRInst:blt	%t602	i	16
	str r6,[fp,#2404]                                 	@IRInst:blt	%t602	i	16
	blt .L325                                         
	b .L326                                           
.L325:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t604	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t604	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t604	x	2
	str r6,[fp,#2412]                                 	@IRInst:sdiv	%t604	x	2
	ldr r4,[fp,#2412]                                 	@IRInst:mul	%t605	%t604	2
	mov r5,#2                                         	@IRInst:mul	%t605	%t604	2
	mul r6,r4,r5                                      	@IRInst:mul	%t605	%t604	2
	str r6,[fp,#2416]                                 	@IRInst:mul	%t605	%t604	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t603	x	%t605
	ldr r5,[fp,#2416]                                 	@IRInst:sub	%t603	x	%t605
	sub r6,r4,r5                                      	@IRInst:sub	%t603	x	%t605
	str r6,[fp,#2408]                                 	@IRInst:sub	%t603	x	%t605
.L327:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t607	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t607	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t607	y	2
	str r6,[fp,#2424]                                 	@IRInst:sdiv	%t607	y	2
	ldr r4,[fp,#2424]                                 	@IRInst:mul	%t608	%t607	2
	mov r5,#2                                         	@IRInst:mul	%t608	%t607	2
	mul r6,r4,r5                                      	@IRInst:mul	%t608	%t607	2
	str r6,[fp,#2428]                                 	@IRInst:mul	%t608	%t607	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t606	y	%t608
	ldr r5,[fp,#2428]                                 	@IRInst:sub	%t606	y	%t608
	sub r6,r4,r5                                      	@IRInst:sub	%t606	y	%t608
	str r6,[fp,#2420]                                 	@IRInst:sub	%t606	y	%t608
	ldr r4,[fp,#2420]                                 	@IRInst:beq	%t609	%t606	0
	mov r5,#0                                         	@IRInst:beq	%t609	%t606	0
	cmp r4,r5                                         	@IRInst:beq	%t609	%t606	0
	moveq r6,#1                                       	@IRInst:beq	%t609	%t606	0
	movne r6,#0                                       	@IRInst:beq	%t609	%t606	0
	str r6,[fp,#2432]                                 	@IRInst:beq	%t609	%t606	0
	beq .L330                                         
	b .L331                                           
.L330:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t610	i	4
	mov r5,#4                                         	@IRInst:mul	%t610	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t610	i	4
	str r6,[fp,#2436]                                 	@IRInst:mul	%t610	i	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t611	SHIFT_TABLE	%t610
	ldr r5,[fp,#2436]                                 	@IRInst:add	%t611	SHIFT_TABLE	%t610
	add r6,r4,r5                                      	@IRInst:add	%t611	SHIFT_TABLE	%t610
	str r6,[fp,#2440]                                 	@IRInst:add	%t611	SHIFT_TABLE	%t610
	ldr r4,[fp,#2440]                                 	@IRInst:assign	%t612	%t611
	ldr r4,[r4]                                       	@IRInst:assign	%t612	%t611
	str r4,[fp,#2444]                                 	@IRInst:assign	%t612	%t611
	mov r4,#1                                         	@IRInst:mul	%t613	1	%t612
	ldr r5,[fp,#2444]                                 	@IRInst:mul	%t613	1	%t612
	mul r6,r4,r5                                      	@IRInst:mul	%t613	1	%t612
	str r6,[fp,#2448]                                 	@IRInst:mul	%t613	1	%t612
	ldr r4,[fp,#4]                                    	@IRInst:add	%t614	ans	%t613
	ldr r5,[fp,#2448]                                 	@IRInst:add	%t614	ans	%t613
	add r6,r4,r5                                      	@IRInst:add	%t614	ans	%t613
	str r6,[fp,#2452]                                 	@IRInst:add	%t614	ans	%t613
	ldr r4,[fp,#2452]                                 	@IRInst:assign	ans	%t614
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t614
.L331:
.L332:
	b .L329                                           
.L328:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t616	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t616	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t616	y	2
	str r6,[fp,#2460]                                 	@IRInst:sdiv	%t616	y	2
	ldr r4,[fp,#2460]                                 	@IRInst:mul	%t617	%t616	2
	mov r5,#2                                         	@IRInst:mul	%t617	%t616	2
	mul r6,r4,r5                                      	@IRInst:mul	%t617	%t616	2
	str r6,[fp,#2464]                                 	@IRInst:mul	%t617	%t616	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t615	y	%t617
	ldr r5,[fp,#2464]                                 	@IRInst:sub	%t615	y	%t617
	sub r6,r4,r5                                      	@IRInst:sub	%t615	y	%t617
	str r6,[fp,#2456]                                 	@IRInst:sub	%t615	y	%t617
.L333:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t618	i	4
	mov r5,#4                                         	@IRInst:mul	%t618	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t618	i	4
	str r6,[fp,#2468]                                 	@IRInst:mul	%t618	i	4
	ldr r4,.global_3_SHIFT_TABLE                      	@IRInst:add	%t619	SHIFT_TABLE	%t618
	ldr r5,[fp,#2468]                                 	@IRInst:add	%t619	SHIFT_TABLE	%t618
	add r6,r4,r5                                      	@IRInst:add	%t619	SHIFT_TABLE	%t618
	str r6,[fp,#2472]                                 	@IRInst:add	%t619	SHIFT_TABLE	%t618
	ldr r4,[fp,#2472]                                 	@IRInst:assign	%t620	%t619
	ldr r4,[r4]                                       	@IRInst:assign	%t620	%t619
	str r4,[fp,#2476]                                 	@IRInst:assign	%t620	%t619
	mov r4,#1                                         	@IRInst:mul	%t621	1	%t620
	ldr r5,[fp,#2476]                                 	@IRInst:mul	%t621	1	%t620
	mul r6,r4,r5                                      	@IRInst:mul	%t621	1	%t620
	str r6,[fp,#2480]                                 	@IRInst:mul	%t621	1	%t620
	ldr r4,[fp,#4]                                    	@IRInst:add	%t622	ans	%t621
	ldr r5,[fp,#2480]                                 	@IRInst:add	%t622	ans	%t621
	add r6,r4,r5                                      	@IRInst:add	%t622	ans	%t621
	str r6,[fp,#2484]                                 	@IRInst:add	%t622	ans	%t621
	ldr r4,[fp,#2484]                                 	@IRInst:assign	ans	%t622
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t622
.L334:
.L335:
.L329:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t623	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t623	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t623	x	2
	str r6,[fp,#2488]                                 	@IRInst:sdiv	%t623	x	2
	ldr r4,[fp,#2488]                                 	@IRInst:assign	x	%t623
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t623
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t624	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t624	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t624	y	2
	str r6,[fp,#2492]                                 	@IRInst:sdiv	%t624	y	2
	ldr r4,[fp,#2492]                                 	@IRInst:assign	y	%t624
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t624
	ldr r4,[fp,#8]                                    	@IRInst:add	%t625	i	1
	mov r5,#1                                         	@IRInst:add	%t625	i	1
	add r6,r4,r5                                      	@IRInst:add	%t625	i	1
	str r6,[fp,#2496]                                 	@IRInst:add	%t625	i	1
	ldr r4,[fp,#2496]                                 	@IRInst:assign	i	%t625
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t625
	b .L324                                           
.L326:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#2392]                                 	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#2384]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#2388]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L336:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t626	i	16
	mov r5,#16                                        	@IRInst:blt	%t626	i	16
	cmp r4,r5                                         	@IRInst:blt	%t626	i	16
	movlt r6,#1                                       	@IRInst:blt	%t626	i	16
	movge r6,#0                                       	@IRInst:blt	%t626	i	16
	str r6,[fp,#2500]                                 	@IRInst:blt	%t626	i	16
	blt .L337                                         
	b .L338                                           
.L337:
.global_4_SHIFT_TABLE:
        .long   SHIFT_TABLE
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t628	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t628	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t628	x	2
	str r6,[fp,#2508]                                 	@IRInst:sdiv	%t628	x	2
	ldr r4,[fp,#2508]                                 	@IRInst:mul	%t629	%t628	2
	mov r5,#2                                         	@IRInst:mul	%t629	%t628	2
	mul r6,r4,r5                                      	@IRInst:mul	%t629	%t628	2
	str r6,[fp,#2512]                                 	@IRInst:mul	%t629	%t628	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t627	x	%t629
	ldr r5,[fp,#2512]                                 	@IRInst:sub	%t627	x	%t629
	sub r6,r4,r5                                      	@IRInst:sub	%t627	x	%t629
	str r6,[fp,#2504]                                 	@IRInst:sub	%t627	x	%t629
.L342:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t631	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t631	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t631	y	2
	str r6,[fp,#2520]                                 	@IRInst:sdiv	%t631	y	2
	ldr r4,[fp,#2520]                                 	@IRInst:mul	%t632	%t631	2
	mov r5,#2                                         	@IRInst:mul	%t632	%t631	2
	mul r6,r4,r5                                      	@IRInst:mul	%t632	%t631	2
	str r6,[fp,#2524]                                 	@IRInst:mul	%t632	%t631	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t630	y	%t632
	ldr r5,[fp,#2524]                                 	@IRInst:sub	%t630	y	%t632
	sub r6,r4,r5                                      	@IRInst:sub	%t630	y	%t632
	str r6,[fp,#2516]                                 	@IRInst:sub	%t630	y	%t632
.L339:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t633	i	4
	mov r5,#4                                         	@IRInst:mul	%t633	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t633	i	4
	str r6,[fp,#2528]                                 	@IRInst:mul	%t633	i	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t634	SHIFT_TABLE	%t633
	ldr r5,[fp,#2528]                                 	@IRInst:add	%t634	SHIFT_TABLE	%t633
	add r6,r4,r5                                      	@IRInst:add	%t634	SHIFT_TABLE	%t633
	str r6,[fp,#2532]                                 	@IRInst:add	%t634	SHIFT_TABLE	%t633
	ldr r4,[fp,#2532]                                 	@IRInst:assign	%t635	%t634
	ldr r4,[r4]                                       	@IRInst:assign	%t635	%t634
	str r4,[fp,#2536]                                 	@IRInst:assign	%t635	%t634
	mov r4,#1                                         	@IRInst:mul	%t636	1	%t635
	ldr r5,[fp,#2536]                                 	@IRInst:mul	%t636	1	%t635
	mul r6,r4,r5                                      	@IRInst:mul	%t636	1	%t635
	str r6,[fp,#2540]                                 	@IRInst:mul	%t636	1	%t635
	ldr r4,[fp,#4]                                    	@IRInst:add	%t637	ans	%t636
	ldr r5,[fp,#2540]                                 	@IRInst:add	%t637	ans	%t636
	add r6,r4,r5                                      	@IRInst:add	%t637	ans	%t636
	str r6,[fp,#2544]                                 	@IRInst:add	%t637	ans	%t636
	ldr r4,[fp,#2544]                                 	@IRInst:assign	ans	%t637
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t637
.L340:
.L341:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t638	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t638	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t638	x	2
	str r6,[fp,#2548]                                 	@IRInst:sdiv	%t638	x	2
	ldr r4,[fp,#2548]                                 	@IRInst:assign	x	%t638
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t638
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t639	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t639	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t639	y	2
	str r6,[fp,#2552]                                 	@IRInst:sdiv	%t639	y	2
	ldr r4,[fp,#2552]                                 	@IRInst:assign	y	%t639
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t639
	ldr r4,[fp,#8]                                    	@IRInst:add	%t640	i	1
	mov r5,#1                                         	@IRInst:add	%t640	i	1
	add r6,r4,r5                                      	@IRInst:add	%t640	i	1
	str r6,[fp,#2556]                                 	@IRInst:add	%t640	i	1
	ldr r4,[fp,#2556]                                 	@IRInst:assign	i	%t640
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t640
	b .L336                                           
.L338:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#2388]                                 	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t641	1	15
	mov r5,#15                                        	@IRInst:bgt	%t641	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t641	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t641	1	15
	movle r6,#0                                       	@IRInst:bgt	%t641	1	15
	str r6,[fp,#2560]                                 	@IRInst:bgt	%t641	1	15
	bgt .L343                                         
	b .L344                                           
.L343:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L345                                           
.L344:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t642	1	4
	mov r5,#4                                         	@IRInst:mul	%t642	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t642	1	4
	str r6,[fp,#2564]                                 	@IRInst:mul	%t642	1	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t643	SHIFT_TABLE	%t642
	ldr r5,[fp,#2564]                                 	@IRInst:add	%t643	SHIFT_TABLE	%t642
	add r6,r4,r5                                      	@IRInst:add	%t643	SHIFT_TABLE	%t642
	str r6,[fp,#2568]                                 	@IRInst:add	%t643	SHIFT_TABLE	%t642
	ldr r4,[fp,#2568]                                 	@IRInst:assign	%t644	%t643
	ldr r4,[r4]                                       	@IRInst:assign	%t644	%t643
	str r4,[fp,#2572]                                 	@IRInst:assign	%t644	%t643
	ldr r4,[fp,#2388]                                 	@IRInst:mul	%t645	c	%t644
	ldr r5,[fp,#2572]                                 	@IRInst:mul	%t645	c	%t644
	mul r6,r4,r5                                      	@IRInst:mul	%t645	c	%t644
	str r6,[fp,#2576]                                 	@IRInst:mul	%t645	c	%t644
	ldr r4,[fp,#2576]                                 	@IRInst:assign	x	%t645
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t645
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L346:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t646	i	16
	mov r5,#16                                        	@IRInst:blt	%t646	i	16
	cmp r4,r5                                         	@IRInst:blt	%t646	i	16
	movlt r6,#1                                       	@IRInst:blt	%t646	i	16
	movge r6,#0                                       	@IRInst:blt	%t646	i	16
	str r6,[fp,#2580]                                 	@IRInst:blt	%t646	i	16
	blt .L347                                         
	b .L348                                           
.L347:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t648	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t648	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t648	x	2
	str r6,[fp,#2588]                                 	@IRInst:sdiv	%t648	x	2
	ldr r4,[fp,#2588]                                 	@IRInst:mul	%t649	%t648	2
	mov r5,#2                                         	@IRInst:mul	%t649	%t648	2
	mul r6,r4,r5                                      	@IRInst:mul	%t649	%t648	2
	str r6,[fp,#2592]                                 	@IRInst:mul	%t649	%t648	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t647	x	%t649
	ldr r5,[fp,#2592]                                 	@IRInst:sub	%t647	x	%t649
	sub r6,r4,r5                                      	@IRInst:sub	%t647	x	%t649
	str r6,[fp,#2584]                                 	@IRInst:sub	%t647	x	%t649
.L352:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t651	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t651	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t651	y	2
	str r6,[fp,#2600]                                 	@IRInst:sdiv	%t651	y	2
	ldr r4,[fp,#2600]                                 	@IRInst:mul	%t652	%t651	2
	mov r5,#2                                         	@IRInst:mul	%t652	%t651	2
	mul r6,r4,r5                                      	@IRInst:mul	%t652	%t651	2
	str r6,[fp,#2604]                                 	@IRInst:mul	%t652	%t651	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t650	y	%t652
	ldr r5,[fp,#2604]                                 	@IRInst:sub	%t650	y	%t652
	sub r6,r4,r5                                      	@IRInst:sub	%t650	y	%t652
	str r6,[fp,#2596]                                 	@IRInst:sub	%t650	y	%t652
.L349:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t653	i	4
	mov r5,#4                                         	@IRInst:mul	%t653	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t653	i	4
	str r6,[fp,#2608]                                 	@IRInst:mul	%t653	i	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t654	SHIFT_TABLE	%t653
	ldr r5,[fp,#2608]                                 	@IRInst:add	%t654	SHIFT_TABLE	%t653
	add r6,r4,r5                                      	@IRInst:add	%t654	SHIFT_TABLE	%t653
	str r6,[fp,#2612]                                 	@IRInst:add	%t654	SHIFT_TABLE	%t653
	ldr r4,[fp,#2612]                                 	@IRInst:assign	%t655	%t654
	ldr r4,[r4]                                       	@IRInst:assign	%t655	%t654
	str r4,[fp,#2616]                                 	@IRInst:assign	%t655	%t654
	mov r4,#1                                         	@IRInst:mul	%t656	1	%t655
	ldr r5,[fp,#2616]                                 	@IRInst:mul	%t656	1	%t655
	mul r6,r4,r5                                      	@IRInst:mul	%t656	1	%t655
	str r6,[fp,#2620]                                 	@IRInst:mul	%t656	1	%t655
	ldr r4,[fp,#4]                                    	@IRInst:add	%t657	ans	%t656
	ldr r5,[fp,#2620]                                 	@IRInst:add	%t657	ans	%t656
	add r6,r4,r5                                      	@IRInst:add	%t657	ans	%t656
	str r6,[fp,#2624]                                 	@IRInst:add	%t657	ans	%t656
	ldr r4,[fp,#2624]                                 	@IRInst:assign	ans	%t657
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t657
.L350:
.L351:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t658	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t658	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t658	x	2
	str r6,[fp,#2628]                                 	@IRInst:sdiv	%t658	x	2
	ldr r4,[fp,#2628]                                 	@IRInst:assign	x	%t658
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t658
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t659	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t659	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t659	y	2
	str r6,[fp,#2632]                                 	@IRInst:sdiv	%t659	y	2
	ldr r4,[fp,#2632]                                 	@IRInst:assign	y	%t659
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t659
	ldr r4,[fp,#8]                                    	@IRInst:add	%t660	i	1
	mov r5,#1                                         	@IRInst:add	%t660	i	1
	add r6,r4,r5                                      	@IRInst:add	%t660	i	1
	str r6,[fp,#2636]                                 	@IRInst:add	%t660	i	1
	ldr r4,[fp,#2636]                                 	@IRInst:assign	i	%t660
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t660
	b .L346                                           
.L348:
.L345:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#2388]                                 	@IRInst:assign	c	ans
	ldr r4,[fp,#2392]                                 	@IRInst:assign	al	sum
	str r4,[fp,#2384]                                 	@IRInst:assign	al	sum
	b .L321                                           
.L323:
	ldr r4,[fp,#2384]                                 	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	mres	ans
	str r4,[fp,#2304]                                 	@IRInst:assign	mres	ans
.L319:
.L320:
	ldr r4,[fp,#2296]                                 	@IRInst:assign	al	ml
	str r4,[fp,#2640]                                 	@IRInst:assign	al	ml
	ldr r4,[fp,#2296]                                 	@IRInst:assign	c	ml
	str r4,[fp,#2644]                                 	@IRInst:assign	c	ml
.L353:
	ldr r4,[fp,#2644]                                 	@IRInst:assign	%t664	c
	str r4,[fp,#2652]                                 	@IRInst:assign	%t664	c
	ldr r4,[fp,#2652]                                 	@IRInst:not_zero	%t665	%t664	0
	mov r5,#0                                         	@IRInst:not_zero	%t665	%t664	0
	cmp r4,r5                                         	@IRInst:not_zero	%t665	%t664	0
	moveq r6,#0                                       	@IRInst:not_zero	%t665	%t664	0
	movne r6,#1                                       	@IRInst:not_zero	%t665	%t664	0
	str r6,[fp,#2656]                                 	@IRInst:not_zero	%t665	%t664	0
	beq .L355                                         
	b .L354                                           
.L354:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#2640]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#2644]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L356:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t666	i	16
	mov r5,#16                                        	@IRInst:blt	%t666	i	16
	cmp r4,r5                                         	@IRInst:blt	%t666	i	16
	movlt r6,#1                                       	@IRInst:blt	%t666	i	16
	movge r6,#0                                       	@IRInst:blt	%t666	i	16
	str r6,[fp,#2660]                                 	@IRInst:blt	%t666	i	16
	blt .L357                                         
	b .L358                                           
.L357:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t668	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t668	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t668	x	2
	str r6,[fp,#2668]                                 	@IRInst:sdiv	%t668	x	2
	ldr r4,[fp,#2668]                                 	@IRInst:mul	%t669	%t668	2
	mov r5,#2                                         	@IRInst:mul	%t669	%t668	2
	mul r6,r4,r5                                      	@IRInst:mul	%t669	%t668	2
	str r6,[fp,#2672]                                 	@IRInst:mul	%t669	%t668	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t667	x	%t669
	ldr r5,[fp,#2672]                                 	@IRInst:sub	%t667	x	%t669
	sub r6,r4,r5                                      	@IRInst:sub	%t667	x	%t669
	str r6,[fp,#2664]                                 	@IRInst:sub	%t667	x	%t669
.L359:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t671	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t671	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t671	y	2
	str r6,[fp,#2680]                                 	@IRInst:sdiv	%t671	y	2
	ldr r4,[fp,#2680]                                 	@IRInst:mul	%t672	%t671	2
	mov r5,#2                                         	@IRInst:mul	%t672	%t671	2
	mul r6,r4,r5                                      	@IRInst:mul	%t672	%t671	2
	str r6,[fp,#2684]                                 	@IRInst:mul	%t672	%t671	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t670	y	%t672
	ldr r5,[fp,#2684]                                 	@IRInst:sub	%t670	y	%t672
	sub r6,r4,r5                                      	@IRInst:sub	%t670	y	%t672
	str r6,[fp,#2676]                                 	@IRInst:sub	%t670	y	%t672
	ldr r4,[fp,#2676]                                 	@IRInst:beq	%t673	%t670	0
	mov r5,#0                                         	@IRInst:beq	%t673	%t670	0
	cmp r4,r5                                         	@IRInst:beq	%t673	%t670	0
	moveq r6,#1                                       	@IRInst:beq	%t673	%t670	0
	movne r6,#0                                       	@IRInst:beq	%t673	%t670	0
	str r6,[fp,#2688]                                 	@IRInst:beq	%t673	%t670	0
	beq .L362                                         
	b .L363                                           
.L362:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t674	i	4
	mov r5,#4                                         	@IRInst:mul	%t674	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t674	i	4
	str r6,[fp,#2692]                                 	@IRInst:mul	%t674	i	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t675	SHIFT_TABLE	%t674
	ldr r5,[fp,#2692]                                 	@IRInst:add	%t675	SHIFT_TABLE	%t674
	add r6,r4,r5                                      	@IRInst:add	%t675	SHIFT_TABLE	%t674
	str r6,[fp,#2696]                                 	@IRInst:add	%t675	SHIFT_TABLE	%t674
	ldr r4,[fp,#2696]                                 	@IRInst:assign	%t676	%t675
	ldr r4,[r4]                                       	@IRInst:assign	%t676	%t675
	str r4,[fp,#2700]                                 	@IRInst:assign	%t676	%t675
	mov r4,#1                                         	@IRInst:mul	%t677	1	%t676
	ldr r5,[fp,#2700]                                 	@IRInst:mul	%t677	1	%t676
	mul r6,r4,r5                                      	@IRInst:mul	%t677	1	%t676
	str r6,[fp,#2704]                                 	@IRInst:mul	%t677	1	%t676
	ldr r4,[fp,#4]                                    	@IRInst:add	%t678	ans	%t677
	ldr r5,[fp,#2704]                                 	@IRInst:add	%t678	ans	%t677
	add r6,r4,r5                                      	@IRInst:add	%t678	ans	%t677
	str r6,[fp,#2708]                                 	@IRInst:add	%t678	ans	%t677
	ldr r4,[fp,#2708]                                 	@IRInst:assign	ans	%t678
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t678
.L363:
.L364:
	b .L361                                           
.L360:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t680	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t680	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t680	y	2
	str r6,[fp,#2716]                                 	@IRInst:sdiv	%t680	y	2
	ldr r4,[fp,#2716]                                 	@IRInst:mul	%t681	%t680	2
	mov r5,#2                                         	@IRInst:mul	%t681	%t680	2
	mul r6,r4,r5                                      	@IRInst:mul	%t681	%t680	2
	str r6,[fp,#2720]                                 	@IRInst:mul	%t681	%t680	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t679	y	%t681
	ldr r5,[fp,#2720]                                 	@IRInst:sub	%t679	y	%t681
	sub r6,r4,r5                                      	@IRInst:sub	%t679	y	%t681
	str r6,[fp,#2712]                                 	@IRInst:sub	%t679	y	%t681
.L365:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t682	i	4
	mov r5,#4                                         	@IRInst:mul	%t682	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t682	i	4
	str r6,[fp,#2724]                                 	@IRInst:mul	%t682	i	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t683	SHIFT_TABLE	%t682
	ldr r5,[fp,#2724]                                 	@IRInst:add	%t683	SHIFT_TABLE	%t682
	add r6,r4,r5                                      	@IRInst:add	%t683	SHIFT_TABLE	%t682
	str r6,[fp,#2728]                                 	@IRInst:add	%t683	SHIFT_TABLE	%t682
	ldr r4,[fp,#2728]                                 	@IRInst:assign	%t684	%t683
	ldr r4,[r4]                                       	@IRInst:assign	%t684	%t683
	str r4,[fp,#2732]                                 	@IRInst:assign	%t684	%t683
	mov r4,#1                                         	@IRInst:mul	%t685	1	%t684
	ldr r5,[fp,#2732]                                 	@IRInst:mul	%t685	1	%t684
	mul r6,r4,r5                                      	@IRInst:mul	%t685	1	%t684
	str r6,[fp,#2736]                                 	@IRInst:mul	%t685	1	%t684
	ldr r4,[fp,#4]                                    	@IRInst:add	%t686	ans	%t685
	ldr r5,[fp,#2736]                                 	@IRInst:add	%t686	ans	%t685
	add r6,r4,r5                                      	@IRInst:add	%t686	ans	%t685
	str r6,[fp,#2740]                                 	@IRInst:add	%t686	ans	%t685
	ldr r4,[fp,#2740]                                 	@IRInst:assign	ans	%t686
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t686
.L366:
.L367:
.L361:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t687	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t687	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t687	x	2
	str r6,[fp,#2744]                                 	@IRInst:sdiv	%t687	x	2
	ldr r4,[fp,#2744]                                 	@IRInst:assign	x	%t687
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t687
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t688	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t688	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t688	y	2
	str r6,[fp,#2748]                                 	@IRInst:sdiv	%t688	y	2
	ldr r4,[fp,#2748]                                 	@IRInst:assign	y	%t688
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t688
	ldr r4,[fp,#8]                                    	@IRInst:add	%t689	i	1
	mov r5,#1                                         	@IRInst:add	%t689	i	1
	add r6,r4,r5                                      	@IRInst:add	%t689	i	1
	str r6,[fp,#2752]                                 	@IRInst:add	%t689	i	1
	ldr r4,[fp,#2752]                                 	@IRInst:assign	i	%t689
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t689
	b .L356                                           
.L358:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#2648]                                 	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#2640]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#2644]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L368:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t690	i	16
	mov r5,#16                                        	@IRInst:blt	%t690	i	16
	cmp r4,r5                                         	@IRInst:blt	%t690	i	16
	movlt r6,#1                                       	@IRInst:blt	%t690	i	16
	movge r6,#0                                       	@IRInst:blt	%t690	i	16
	str r6,[fp,#2756]                                 	@IRInst:blt	%t690	i	16
	blt .L369                                         
	b .L370                                           
.L369:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t692	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t692	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t692	x	2
	str r6,[fp,#2764]                                 	@IRInst:sdiv	%t692	x	2
	ldr r4,[fp,#2764]                                 	@IRInst:mul	%t693	%t692	2
	mov r5,#2                                         	@IRInst:mul	%t693	%t692	2
	mul r6,r4,r5                                      	@IRInst:mul	%t693	%t692	2
	str r6,[fp,#2768]                                 	@IRInst:mul	%t693	%t692	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t691	x	%t693
	ldr r5,[fp,#2768]                                 	@IRInst:sub	%t691	x	%t693
	sub r6,r4,r5                                      	@IRInst:sub	%t691	x	%t693
	str r6,[fp,#2760]                                 	@IRInst:sub	%t691	x	%t693
.L374:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t695	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t695	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t695	y	2
	str r6,[fp,#2776]                                 	@IRInst:sdiv	%t695	y	2
	ldr r4,[fp,#2776]                                 	@IRInst:mul	%t696	%t695	2
	mov r5,#2                                         	@IRInst:mul	%t696	%t695	2
	mul r6,r4,r5                                      	@IRInst:mul	%t696	%t695	2
	str r6,[fp,#2780]                                 	@IRInst:mul	%t696	%t695	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t694	y	%t696
	ldr r5,[fp,#2780]                                 	@IRInst:sub	%t694	y	%t696
	sub r6,r4,r5                                      	@IRInst:sub	%t694	y	%t696
	str r6,[fp,#2772]                                 	@IRInst:sub	%t694	y	%t696
.L371:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t697	i	4
	mov r5,#4                                         	@IRInst:mul	%t697	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t697	i	4
	str r6,[fp,#2784]                                 	@IRInst:mul	%t697	i	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t698	SHIFT_TABLE	%t697
	ldr r5,[fp,#2784]                                 	@IRInst:add	%t698	SHIFT_TABLE	%t697
	add r6,r4,r5                                      	@IRInst:add	%t698	SHIFT_TABLE	%t697
	str r6,[fp,#2788]                                 	@IRInst:add	%t698	SHIFT_TABLE	%t697
	ldr r4,[fp,#2788]                                 	@IRInst:assign	%t699	%t698
	ldr r4,[r4]                                       	@IRInst:assign	%t699	%t698
	str r4,[fp,#2792]                                 	@IRInst:assign	%t699	%t698
	mov r4,#1                                         	@IRInst:mul	%t700	1	%t699
	ldr r5,[fp,#2792]                                 	@IRInst:mul	%t700	1	%t699
	mul r6,r4,r5                                      	@IRInst:mul	%t700	1	%t699
	str r6,[fp,#2796]                                 	@IRInst:mul	%t700	1	%t699
	ldr r4,[fp,#4]                                    	@IRInst:add	%t701	ans	%t700
	ldr r5,[fp,#2796]                                 	@IRInst:add	%t701	ans	%t700
	add r6,r4,r5                                      	@IRInst:add	%t701	ans	%t700
	str r6,[fp,#2800]                                 	@IRInst:add	%t701	ans	%t700
	ldr r4,[fp,#2800]                                 	@IRInst:assign	ans	%t701
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t701
.L372:
.L373:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t702	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t702	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t702	x	2
	str r6,[fp,#2804]                                 	@IRInst:sdiv	%t702	x	2
	ldr r4,[fp,#2804]                                 	@IRInst:assign	x	%t702
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t702
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t703	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t703	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t703	y	2
	str r6,[fp,#2808]                                 	@IRInst:sdiv	%t703	y	2
	ldr r4,[fp,#2808]                                 	@IRInst:assign	y	%t703
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t703
	ldr r4,[fp,#8]                                    	@IRInst:add	%t704	i	1
	mov r5,#1                                         	@IRInst:add	%t704	i	1
	add r6,r4,r5                                      	@IRInst:add	%t704	i	1
	str r6,[fp,#2812]                                 	@IRInst:add	%t704	i	1
	ldr r4,[fp,#2812]                                 	@IRInst:assign	i	%t704
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t704
	b .L368                                           
.L370:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#2644]                                 	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t705	1	15
	mov r5,#15                                        	@IRInst:bgt	%t705	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t705	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t705	1	15
	movle r6,#0                                       	@IRInst:bgt	%t705	1	15
	str r6,[fp,#2816]                                 	@IRInst:bgt	%t705	1	15
	bgt .L375                                         
	b .L376                                           
.L375:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L377                                           
.L376:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t706	1	4
	mov r5,#4                                         	@IRInst:mul	%t706	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t706	1	4
	str r6,[fp,#2820]                                 	@IRInst:mul	%t706	1	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t707	SHIFT_TABLE	%t706
	ldr r5,[fp,#2820]                                 	@IRInst:add	%t707	SHIFT_TABLE	%t706
	add r6,r4,r5                                      	@IRInst:add	%t707	SHIFT_TABLE	%t706
	str r6,[fp,#2824]                                 	@IRInst:add	%t707	SHIFT_TABLE	%t706
	ldr r4,[fp,#2824]                                 	@IRInst:assign	%t708	%t707
	ldr r4,[r4]                                       	@IRInst:assign	%t708	%t707
	str r4,[fp,#2828]                                 	@IRInst:assign	%t708	%t707
	ldr r4,[fp,#2644]                                 	@IRInst:mul	%t709	c	%t708
	ldr r5,[fp,#2828]                                 	@IRInst:mul	%t709	c	%t708
	mul r6,r4,r5                                      	@IRInst:mul	%t709	c	%t708
	str r6,[fp,#2832]                                 	@IRInst:mul	%t709	c	%t708
	ldr r4,[fp,#2832]                                 	@IRInst:assign	x	%t709
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t709
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L378:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t710	i	16
	mov r5,#16                                        	@IRInst:blt	%t710	i	16
	cmp r4,r5                                         	@IRInst:blt	%t710	i	16
	movlt r6,#1                                       	@IRInst:blt	%t710	i	16
	movge r6,#0                                       	@IRInst:blt	%t710	i	16
	str r6,[fp,#2836]                                 	@IRInst:blt	%t710	i	16
	blt .L379                                         
	b .L380                                           
.L379:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t712	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t712	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t712	x	2
	str r6,[fp,#2844]                                 	@IRInst:sdiv	%t712	x	2
	ldr r4,[fp,#2844]                                 	@IRInst:mul	%t713	%t712	2
	mov r5,#2                                         	@IRInst:mul	%t713	%t712	2
	mul r6,r4,r5                                      	@IRInst:mul	%t713	%t712	2
	str r6,[fp,#2848]                                 	@IRInst:mul	%t713	%t712	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t711	x	%t713
	ldr r5,[fp,#2848]                                 	@IRInst:sub	%t711	x	%t713
	sub r6,r4,r5                                      	@IRInst:sub	%t711	x	%t713
	str r6,[fp,#2840]                                 	@IRInst:sub	%t711	x	%t713
.L384:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t715	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t715	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t715	y	2
	str r6,[fp,#2856]                                 	@IRInst:sdiv	%t715	y	2
	ldr r4,[fp,#2856]                                 	@IRInst:mul	%t716	%t715	2
	mov r5,#2                                         	@IRInst:mul	%t716	%t715	2
	mul r6,r4,r5                                      	@IRInst:mul	%t716	%t715	2
	str r6,[fp,#2860]                                 	@IRInst:mul	%t716	%t715	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t714	y	%t716
	ldr r5,[fp,#2860]                                 	@IRInst:sub	%t714	y	%t716
	sub r6,r4,r5                                      	@IRInst:sub	%t714	y	%t716
	str r6,[fp,#2852]                                 	@IRInst:sub	%t714	y	%t716
.L381:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t717	i	4
	mov r5,#4                                         	@IRInst:mul	%t717	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t717	i	4
	str r6,[fp,#2864]                                 	@IRInst:mul	%t717	i	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t718	SHIFT_TABLE	%t717
	ldr r5,[fp,#2864]                                 	@IRInst:add	%t718	SHIFT_TABLE	%t717
	add r6,r4,r5                                      	@IRInst:add	%t718	SHIFT_TABLE	%t717
	str r6,[fp,#2868]                                 	@IRInst:add	%t718	SHIFT_TABLE	%t717
	ldr r4,[fp,#2868]                                 	@IRInst:assign	%t719	%t718
	ldr r4,[r4]                                       	@IRInst:assign	%t719	%t718
	str r4,[fp,#2872]                                 	@IRInst:assign	%t719	%t718
	mov r4,#1                                         	@IRInst:mul	%t720	1	%t719
	ldr r5,[fp,#2872]                                 	@IRInst:mul	%t720	1	%t719
	mul r6,r4,r5                                      	@IRInst:mul	%t720	1	%t719
	str r6,[fp,#2876]                                 	@IRInst:mul	%t720	1	%t719
	ldr r4,[fp,#4]                                    	@IRInst:add	%t721	ans	%t720
	ldr r5,[fp,#2876]                                 	@IRInst:add	%t721	ans	%t720
	add r6,r4,r5                                      	@IRInst:add	%t721	ans	%t720
	str r6,[fp,#2880]                                 	@IRInst:add	%t721	ans	%t720
	ldr r4,[fp,#2880]                                 	@IRInst:assign	ans	%t721
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t721
.L382:
.L383:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t722	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t722	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t722	x	2
	str r6,[fp,#2884]                                 	@IRInst:sdiv	%t722	x	2
	ldr r4,[fp,#2884]                                 	@IRInst:assign	x	%t722
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t722
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t723	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t723	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t723	y	2
	str r6,[fp,#2888]                                 	@IRInst:sdiv	%t723	y	2
	ldr r4,[fp,#2888]                                 	@IRInst:assign	y	%t723
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t723
	ldr r4,[fp,#8]                                    	@IRInst:add	%t724	i	1
	mov r5,#1                                         	@IRInst:add	%t724	i	1
	add r6,r4,r5                                      	@IRInst:add	%t724	i	1
	str r6,[fp,#2892]                                 	@IRInst:add	%t724	i	1
	ldr r4,[fp,#2892]                                 	@IRInst:assign	i	%t724
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t724
	b .L378                                           
.L380:
.L377:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#2644]                                 	@IRInst:assign	c	ans
	ldr r4,[fp,#2648]                                 	@IRInst:assign	al	sum
	str r4,[fp,#2640]                                 	@IRInst:assign	al	sum
	b .L353                                           
.L355:
	ldr r4,[fp,#2640]                                 	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	ml	ans
	str r4,[fp,#2296]                                 	@IRInst:assign	ml	ans
	ldr r4,[fp,#2300]                                 	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t725	y	15
	mov r5,#15                                        	@IRInst:bge	%t725	y	15
	cmp r4,r5                                         	@IRInst:bge	%t725	y	15
	movge r6,#1                                       	@IRInst:bge	%t725	y	15
	movlt r6,#0                                       	@IRInst:bge	%t725	y	15
	str r6,[fp,#2896]                                 	@IRInst:bge	%t725	y	15
	bge .L385                                         
	b .L386                                           
.L385:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t726	x	0
	mov r5,#0                                         	@IRInst:blt	%t726	x	0
	cmp r4,r5                                         	@IRInst:blt	%t726	x	0
	movlt r6,#1                                       	@IRInst:blt	%t726	x	0
	movge r6,#0                                       	@IRInst:blt	%t726	x	0
	str r6,[fp,#2900]                                 	@IRInst:blt	%t726	x	0
	blt .L388                                         
	b .L389                                           
.L388:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L390                                           
.L389:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L390:
	b .L387                                           
.L386:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t727	y	0
	mov r5,#0                                         	@IRInst:bgt	%t727	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t727	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t727	y	0
	movle r6,#0                                       	@IRInst:bgt	%t727	y	0
	str r6,[fp,#2904]                                 	@IRInst:bgt	%t727	y	0
	bgt .L391                                         
	b .L392                                           
.L391:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t728	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t728	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t728	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t728	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t728	x	32767
	str r6,[fp,#2908]                                 	@IRInst:bgt	%t728	x	32767
	bgt .L394                                         
	b .L395                                           
.L394:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t729	y	4
	mov r5,#4                                         	@IRInst:mul	%t729	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t729	y	4
	str r6,[fp,#2912]                                 	@IRInst:mul	%t729	y	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t730	SHIFT_TABLE	%t729
	ldr r5,[fp,#2912]                                 	@IRInst:add	%t730	SHIFT_TABLE	%t729
	add r6,r4,r5                                      	@IRInst:add	%t730	SHIFT_TABLE	%t729
	str r6,[fp,#2916]                                 	@IRInst:add	%t730	SHIFT_TABLE	%t729
	ldr r4,[fp,#2916]                                 	@IRInst:assign	%t731	%t730
	ldr r4,[r4]                                       	@IRInst:assign	%t731	%t730
	str r4,[fp,#2920]                                 	@IRInst:assign	%t731	%t730
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t732	x	%t731
	ldr r5,[fp,#2920]                                 	@IRInst:sdiv	%t732	x	%t731
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t732	x	%t731
	str r6,[fp,#2924]                                 	@IRInst:sdiv	%t732	x	%t731
	ldr r4,[fp,#2924]                                 	@IRInst:assign	x	%t732
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t732
	ldr r4,[fp,#12]                                   	@IRInst:add	%t733	x	65536
	mov r5,#65536                                     	@IRInst:add	%t733	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t733	x	65536
	str r6,[fp,#2928]                                 	@IRInst:add	%t733	x	65536
	mov r4,#15                                        	@IRInst:sub	%t735	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t735	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t735	15	y
	str r6,[fp,#2936]                                 	@IRInst:sub	%t735	15	y
	ldr r4,[fp,#2936]                                 	@IRInst:add	%t736	%t735	1
	mov r5,#1                                         	@IRInst:add	%t736	%t735	1
	add r6,r4,r5                                      	@IRInst:add	%t736	%t735	1
	str r6,[fp,#2940]                                 	@IRInst:add	%t736	%t735	1
	ldr r4,[fp,#2940]                                 	@IRInst:mul	%t734	%t736	4
	mov r5,#4                                         	@IRInst:mul	%t734	%t736	4
	mul r6,r4,r5                                      	@IRInst:mul	%t734	%t736	4
	str r6,[fp,#2932]                                 	@IRInst:mul	%t734	%t736	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t737	SHIFT_TABLE	%t734
	ldr r5,[fp,#2932]                                 	@IRInst:add	%t737	SHIFT_TABLE	%t734
	add r6,r4,r5                                      	@IRInst:add	%t737	SHIFT_TABLE	%t734
	str r6,[fp,#2944]                                 	@IRInst:add	%t737	SHIFT_TABLE	%t734
	ldr r4,[fp,#2944]                                 	@IRInst:assign	%t738	%t737
	ldr r4,[r4]                                       	@IRInst:assign	%t738	%t737
	str r4,[fp,#2948]                                 	@IRInst:assign	%t738	%t737
	ldr r4,[fp,#2928]                                 	@IRInst:sub	%t739	%t733	%t738
	ldr r5,[fp,#2948]                                 	@IRInst:sub	%t739	%t733	%t738
	sub r6,r4,r5                                      	@IRInst:sub	%t739	%t733	%t738
	str r6,[fp,#2952]                                 	@IRInst:sub	%t739	%t733	%t738
	ldr r4,[fp,#2952]                                 	@IRInst:assign	ans	%t739
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t739
	b .L396                                           
.L395:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t740	y	4
	mov r5,#4                                         	@IRInst:mul	%t740	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t740	y	4
	str r6,[fp,#2956]                                 	@IRInst:mul	%t740	y	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t741	SHIFT_TABLE	%t740
	ldr r5,[fp,#2956]                                 	@IRInst:add	%t741	SHIFT_TABLE	%t740
	add r6,r4,r5                                      	@IRInst:add	%t741	SHIFT_TABLE	%t740
	str r6,[fp,#2960]                                 	@IRInst:add	%t741	SHIFT_TABLE	%t740
	ldr r4,[fp,#2960]                                 	@IRInst:assign	%t742	%t741
	ldr r4,[r4]                                       	@IRInst:assign	%t742	%t741
	str r4,[fp,#2964]                                 	@IRInst:assign	%t742	%t741
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t743	x	%t742
	ldr r5,[fp,#2964]                                 	@IRInst:sdiv	%t743	x	%t742
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t743	x	%t742
	str r6,[fp,#2968]                                 	@IRInst:sdiv	%t743	x	%t742
	ldr r4,[fp,#2968]                                 	@IRInst:assign	ans	%t743
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t743
.L396:
	b .L393                                           
.L392:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L393:
.L387:
	ldr r4,[fp,#4]                                    	@IRInst:assign	mr	ans
	str r4,[fp,#2300]                                 	@IRInst:assign	mr	ans
	b .L308                                           
.L310:
	ldr r4,[fp,#2304]                                 	@IRInst:assign	ans	mres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	mres
	ldr r4,[fp,#4]                                    	@IRInst:assign	pl	ans
	str r4,[fp,#1536]                                 	@IRInst:assign	pl	ans
	ldr r4,[fp,#1540]                                 	@IRInst:assign	x	pr
	str r4,[fp,#12]                                   	@IRInst:assign	x	pr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t744	y	15
	mov r5,#15                                        	@IRInst:bge	%t744	y	15
	cmp r4,r5                                         	@IRInst:bge	%t744	y	15
	movge r6,#1                                       	@IRInst:bge	%t744	y	15
	movlt r6,#0                                       	@IRInst:bge	%t744	y	15
	str r6,[fp,#2972]                                 	@IRInst:bge	%t744	y	15
	bge .L397                                         
	b .L398                                           
.L397:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t745	x	0
	mov r5,#0                                         	@IRInst:blt	%t745	x	0
	cmp r4,r5                                         	@IRInst:blt	%t745	x	0
	movlt r6,#1                                       	@IRInst:blt	%t745	x	0
	movge r6,#0                                       	@IRInst:blt	%t745	x	0
	str r6,[fp,#2976]                                 	@IRInst:blt	%t745	x	0
	blt .L400                                         
	b .L401                                           
.L400:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L402                                           
.L401:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L402:
	b .L399                                           
.L398:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t746	y	0
	mov r5,#0                                         	@IRInst:bgt	%t746	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t746	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t746	y	0
	movle r6,#0                                       	@IRInst:bgt	%t746	y	0
	str r6,[fp,#2980]                                 	@IRInst:bgt	%t746	y	0
	bgt .L403                                         
	b .L404                                           
.L403:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t747	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t747	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t747	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t747	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t747	x	32767
	str r6,[fp,#2984]                                 	@IRInst:bgt	%t747	x	32767
	bgt .L406                                         
	b .L407                                           
.L406:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t748	y	4
	mov r5,#4                                         	@IRInst:mul	%t748	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t748	y	4
	str r6,[fp,#2988]                                 	@IRInst:mul	%t748	y	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t749	SHIFT_TABLE	%t748
	ldr r5,[fp,#2988]                                 	@IRInst:add	%t749	SHIFT_TABLE	%t748
	add r6,r4,r5                                      	@IRInst:add	%t749	SHIFT_TABLE	%t748
	str r6,[fp,#2992]                                 	@IRInst:add	%t749	SHIFT_TABLE	%t748
	ldr r4,[fp,#2992]                                 	@IRInst:assign	%t750	%t749
	ldr r4,[r4]                                       	@IRInst:assign	%t750	%t749
	str r4,[fp,#2996]                                 	@IRInst:assign	%t750	%t749
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t751	x	%t750
	ldr r5,[fp,#2996]                                 	@IRInst:sdiv	%t751	x	%t750
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t751	x	%t750
	str r6,[fp,#3000]                                 	@IRInst:sdiv	%t751	x	%t750
	ldr r4,[fp,#3000]                                 	@IRInst:assign	x	%t751
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t751
	ldr r4,[fp,#12]                                   	@IRInst:add	%t752	x	65536
	mov r5,#65536                                     	@IRInst:add	%t752	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t752	x	65536
	str r6,[fp,#3004]                                 	@IRInst:add	%t752	x	65536
	mov r4,#15                                        	@IRInst:sub	%t754	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t754	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t754	15	y
	str r6,[fp,#3012]                                 	@IRInst:sub	%t754	15	y
	ldr r4,[fp,#3012]                                 	@IRInst:add	%t755	%t754	1
	mov r5,#1                                         	@IRInst:add	%t755	%t754	1
	add r6,r4,r5                                      	@IRInst:add	%t755	%t754	1
	str r6,[fp,#3016]                                 	@IRInst:add	%t755	%t754	1
	ldr r4,[fp,#3016]                                 	@IRInst:mul	%t753	%t755	4
	mov r5,#4                                         	@IRInst:mul	%t753	%t755	4
	mul r6,r4,r5                                      	@IRInst:mul	%t753	%t755	4
	str r6,[fp,#3008]                                 	@IRInst:mul	%t753	%t755	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t756	SHIFT_TABLE	%t753
	ldr r5,[fp,#3008]                                 	@IRInst:add	%t756	SHIFT_TABLE	%t753
	add r6,r4,r5                                      	@IRInst:add	%t756	SHIFT_TABLE	%t753
	str r6,[fp,#3020]                                 	@IRInst:add	%t756	SHIFT_TABLE	%t753
	ldr r4,[fp,#3020]                                 	@IRInst:assign	%t757	%t756
	ldr r4,[r4]                                       	@IRInst:assign	%t757	%t756
	str r4,[fp,#3024]                                 	@IRInst:assign	%t757	%t756
	ldr r4,[fp,#3004]                                 	@IRInst:sub	%t758	%t752	%t757
	ldr r5,[fp,#3024]                                 	@IRInst:sub	%t758	%t752	%t757
	sub r6,r4,r5                                      	@IRInst:sub	%t758	%t752	%t757
	str r6,[fp,#3028]                                 	@IRInst:sub	%t758	%t752	%t757
	ldr r4,[fp,#3028]                                 	@IRInst:assign	ans	%t758
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t758
	b .L408                                           
.L407:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t759	y	4
	mov r5,#4                                         	@IRInst:mul	%t759	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t759	y	4
	str r6,[fp,#3032]                                 	@IRInst:mul	%t759	y	4
	ldr r4,.global_4_SHIFT_TABLE                      	@IRInst:add	%t760	SHIFT_TABLE	%t759
	ldr r5,[fp,#3032]                                 	@IRInst:add	%t760	SHIFT_TABLE	%t759
	add r6,r4,r5                                      	@IRInst:add	%t760	SHIFT_TABLE	%t759
	str r6,[fp,#3036]                                 	@IRInst:add	%t760	SHIFT_TABLE	%t759
	ldr r4,[fp,#3036]                                 	@IRInst:assign	%t761	%t760
	ldr r4,[r4]                                       	@IRInst:assign	%t761	%t760
	str r4,[fp,#3040]                                 	@IRInst:assign	%t761	%t760
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t762	x	%t761
	ldr r5,[fp,#3040]                                 	@IRInst:sdiv	%t762	x	%t761
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t762	x	%t761
	str r6,[fp,#3044]                                 	@IRInst:sdiv	%t762	x	%t761
	ldr r4,[fp,#3044]                                 	@IRInst:assign	ans	%t762
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t762
.L408:
	b .L405                                           
.L404:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L405:
.L399:
	ldr r4,[fp,#4]                                    	@IRInst:assign	pr	ans
	str r4,[fp,#1540]                                 	@IRInst:assign	pr	ans
	b .L206                                           
.L208:
	ldr r4,[fp,#1544]                                 	@IRInst:assign	ans	pres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	pres
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	ans
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#2                                         	@IRInst:assign	cur	2
	str r4,[fp,#20]                                   	@IRInst:assign	cur	2
.L409:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t763	cur	16
	mov r5,#16                                        	@IRInst:blt	%t763	cur	16
	cmp r4,r5                                         	@IRInst:blt	%t763	cur	16
	movlt r6,#1                                       	@IRInst:blt	%t763	cur	16
	movge r6,#0                                       	@IRInst:blt	%t763	cur	16
	str r6,[fp,#3048]                                 	@IRInst:blt	%t763	cur	16
	blt .L410                                         
	b .L411                                           
.L410:
	mov r4,#2                                         	@IRInst:assign	pl	2
	str r4,[fp,#3052]                                 	@IRInst:assign	pl	2
	ldr r4,[fp,#20]                                   	@IRInst:assign	pr	cur
	str r4,[fp,#3056]                                 	@IRInst:assign	pr	cur
	mov r4,#1                                         	@IRInst:assign	pres	1
	str r4,[fp,#3060]                                 	@IRInst:assign	pres	1
.L412:
	ldr r4,[fp,#3056]                                 	@IRInst:bgt	%t767	pr	0
	mov r5,#0                                         	@IRInst:bgt	%t767	pr	0
	cmp r4,r5                                         	@IRInst:bgt	%t767	pr	0
	movgt r6,#1                                       	@IRInst:bgt	%t767	pr	0
	movle r6,#0                                       	@IRInst:bgt	%t767	pr	0
	str r6,[fp,#3064]                                 	@IRInst:bgt	%t767	pr	0
	bgt .L413                                         
	b .L414                                           
.L413:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3056]                                 	@IRInst:assign	x	pr
	str r4,[fp,#12]                                   	@IRInst:assign	x	pr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L415:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t768	i	16
	mov r5,#16                                        	@IRInst:blt	%t768	i	16
	cmp r4,r5                                         	@IRInst:blt	%t768	i	16
	movlt r6,#1                                       	@IRInst:blt	%t768	i	16
	movge r6,#0                                       	@IRInst:blt	%t768	i	16
	str r6,[fp,#3068]                                 	@IRInst:blt	%t768	i	16
	blt .L416                                         
	b .L417                                           
.L416:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t770	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t770	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t770	x	2
	str r6,[fp,#3076]                                 	@IRInst:sdiv	%t770	x	2
	ldr r4,[fp,#3076]                                 	@IRInst:mul	%t771	%t770	2
	mov r5,#2                                         	@IRInst:mul	%t771	%t770	2
	mul r6,r4,r5                                      	@IRInst:mul	%t771	%t770	2
	str r6,[fp,#3080]                                 	@IRInst:mul	%t771	%t770	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t769	x	%t771
	ldr r5,[fp,#3080]                                 	@IRInst:sub	%t769	x	%t771
	sub r6,r4,r5                                      	@IRInst:sub	%t769	x	%t771
	str r6,[fp,#3072]                                 	@IRInst:sub	%t769	x	%t771
.L421:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t773	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t773	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t773	y	2
	str r6,[fp,#3088]                                 	@IRInst:sdiv	%t773	y	2
	ldr r4,[fp,#3088]                                 	@IRInst:mul	%t774	%t773	2
	mov r5,#2                                         	@IRInst:mul	%t774	%t773	2
	mul r6,r4,r5                                      	@IRInst:mul	%t774	%t773	2
	str r6,[fp,#3092]                                 	@IRInst:mul	%t774	%t773	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t772	y	%t774
	ldr r5,[fp,#3092]                                 	@IRInst:sub	%t772	y	%t774
	sub r6,r4,r5                                      	@IRInst:sub	%t772	y	%t774
	str r6,[fp,#3084]                                 	@IRInst:sub	%t772	y	%t774
.L418:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t775	i	4
	mov r5,#4                                         	@IRInst:mul	%t775	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t775	i	4
	str r6,[fp,#3096]                                 	@IRInst:mul	%t775	i	4
.global_5_SHIFT_TABLE:
        .long   SHIFT_TABLE
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t776	SHIFT_TABLE	%t775
	ldr r5,[fp,#3096]                                 	@IRInst:add	%t776	SHIFT_TABLE	%t775
	add r6,r4,r5                                      	@IRInst:add	%t776	SHIFT_TABLE	%t775
	str r6,[fp,#3100]                                 	@IRInst:add	%t776	SHIFT_TABLE	%t775
	ldr r4,[fp,#3100]                                 	@IRInst:assign	%t777	%t776
	ldr r4,[r4]                                       	@IRInst:assign	%t777	%t776
	str r4,[fp,#3104]                                 	@IRInst:assign	%t777	%t776
	mov r4,#1                                         	@IRInst:mul	%t778	1	%t777
	ldr r5,[fp,#3104]                                 	@IRInst:mul	%t778	1	%t777
	mul r6,r4,r5                                      	@IRInst:mul	%t778	1	%t777
	str r6,[fp,#3108]                                 	@IRInst:mul	%t778	1	%t777
	ldr r4,[fp,#4]                                    	@IRInst:add	%t779	ans	%t778
	ldr r5,[fp,#3108]                                 	@IRInst:add	%t779	ans	%t778
	add r6,r4,r5                                      	@IRInst:add	%t779	ans	%t778
	str r6,[fp,#3112]                                 	@IRInst:add	%t779	ans	%t778
	ldr r4,[fp,#3112]                                 	@IRInst:assign	ans	%t779
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t779
.L419:
.L420:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t780	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t780	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t780	x	2
	str r6,[fp,#3116]                                 	@IRInst:sdiv	%t780	x	2
	ldr r4,[fp,#3116]                                 	@IRInst:assign	x	%t780
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t780
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t781	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t781	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t781	y	2
	str r6,[fp,#3120]                                 	@IRInst:sdiv	%t781	y	2
	ldr r4,[fp,#3120]                                 	@IRInst:assign	y	%t781
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t781
	ldr r4,[fp,#8]                                    	@IRInst:add	%t782	i	1
	mov r5,#1                                         	@IRInst:add	%t782	i	1
	add r6,r4,r5                                      	@IRInst:add	%t782	i	1
	str r6,[fp,#3124]                                 	@IRInst:add	%t782	i	1
	ldr r4,[fp,#3124]                                 	@IRInst:assign	i	%t782
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t782
	b .L415                                           
.L417:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t783	ans
	str r4,[fp,#3128]                                 	@IRInst:assign	%t783	ans
	ldr r4,[fp,#3128]                                 	@IRInst:not_zero	%t784	%t783	0
	mov r5,#0                                         	@IRInst:not_zero	%t784	%t783	0
	cmp r4,r5                                         	@IRInst:not_zero	%t784	%t783	0
	moveq r6,#0                                       	@IRInst:not_zero	%t784	%t783	0
	movne r6,#1                                       	@IRInst:not_zero	%t784	%t783	0
	str r6,[fp,#3132]                                 	@IRInst:not_zero	%t784	%t783	0
	beq .L423                                         
	b .L422                                           
.L422:
	ldr r4,[fp,#3060]                                 	@IRInst:assign	ml	pres
	str r4,[fp,#3136]                                 	@IRInst:assign	ml	pres
	ldr r4,[fp,#3052]                                 	@IRInst:assign	mr	pl
	str r4,[fp,#3140]                                 	@IRInst:assign	mr	pl
	mov r4,#0                                         	@IRInst:assign	mres	0
	str r4,[fp,#3144]                                 	@IRInst:assign	mres	0
.L425:
	ldr r4,[fp,#3140]                                 	@IRInst:assign	%t788	mr
	str r4,[fp,#3148]                                 	@IRInst:assign	%t788	mr
	ldr r4,[fp,#3148]                                 	@IRInst:not_zero	%t789	%t788	0
	mov r5,#0                                         	@IRInst:not_zero	%t789	%t788	0
	cmp r4,r5                                         	@IRInst:not_zero	%t789	%t788	0
	moveq r6,#0                                       	@IRInst:not_zero	%t789	%t788	0
	movne r6,#1                                       	@IRInst:not_zero	%t789	%t788	0
	str r6,[fp,#3152]                                 	@IRInst:not_zero	%t789	%t788	0
	beq .L427                                         
	b .L426                                           
.L426:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3140]                                 	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L428:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t790	i	16
	mov r5,#16                                        	@IRInst:blt	%t790	i	16
	cmp r4,r5                                         	@IRInst:blt	%t790	i	16
	movlt r6,#1                                       	@IRInst:blt	%t790	i	16
	movge r6,#0                                       	@IRInst:blt	%t790	i	16
	str r6,[fp,#3156]                                 	@IRInst:blt	%t790	i	16
	blt .L429                                         
	b .L430                                           
.L429:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t792	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t792	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t792	x	2
	str r6,[fp,#3164]                                 	@IRInst:sdiv	%t792	x	2
	ldr r4,[fp,#3164]                                 	@IRInst:mul	%t793	%t792	2
	mov r5,#2                                         	@IRInst:mul	%t793	%t792	2
	mul r6,r4,r5                                      	@IRInst:mul	%t793	%t792	2
	str r6,[fp,#3168]                                 	@IRInst:mul	%t793	%t792	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t791	x	%t793
	ldr r5,[fp,#3168]                                 	@IRInst:sub	%t791	x	%t793
	sub r6,r4,r5                                      	@IRInst:sub	%t791	x	%t793
	str r6,[fp,#3160]                                 	@IRInst:sub	%t791	x	%t793
.L434:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t795	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t795	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t795	y	2
	str r6,[fp,#3176]                                 	@IRInst:sdiv	%t795	y	2
	ldr r4,[fp,#3176]                                 	@IRInst:mul	%t796	%t795	2
	mov r5,#2                                         	@IRInst:mul	%t796	%t795	2
	mul r6,r4,r5                                      	@IRInst:mul	%t796	%t795	2
	str r6,[fp,#3180]                                 	@IRInst:mul	%t796	%t795	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t794	y	%t796
	ldr r5,[fp,#3180]                                 	@IRInst:sub	%t794	y	%t796
	sub r6,r4,r5                                      	@IRInst:sub	%t794	y	%t796
	str r6,[fp,#3172]                                 	@IRInst:sub	%t794	y	%t796
.L431:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t797	i	4
	mov r5,#4                                         	@IRInst:mul	%t797	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t797	i	4
	str r6,[fp,#3184]                                 	@IRInst:mul	%t797	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t798	SHIFT_TABLE	%t797
	ldr r5,[fp,#3184]                                 	@IRInst:add	%t798	SHIFT_TABLE	%t797
	add r6,r4,r5                                      	@IRInst:add	%t798	SHIFT_TABLE	%t797
	str r6,[fp,#3188]                                 	@IRInst:add	%t798	SHIFT_TABLE	%t797
	ldr r4,[fp,#3188]                                 	@IRInst:assign	%t799	%t798
	ldr r4,[r4]                                       	@IRInst:assign	%t799	%t798
	str r4,[fp,#3192]                                 	@IRInst:assign	%t799	%t798
	mov r4,#1                                         	@IRInst:mul	%t800	1	%t799
	ldr r5,[fp,#3192]                                 	@IRInst:mul	%t800	1	%t799
	mul r6,r4,r5                                      	@IRInst:mul	%t800	1	%t799
	str r6,[fp,#3196]                                 	@IRInst:mul	%t800	1	%t799
	ldr r4,[fp,#4]                                    	@IRInst:add	%t801	ans	%t800
	ldr r5,[fp,#3196]                                 	@IRInst:add	%t801	ans	%t800
	add r6,r4,r5                                      	@IRInst:add	%t801	ans	%t800
	str r6,[fp,#3200]                                 	@IRInst:add	%t801	ans	%t800
	ldr r4,[fp,#3200]                                 	@IRInst:assign	ans	%t801
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t801
.L432:
.L433:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t802	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t802	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t802	x	2
	str r6,[fp,#3204]                                 	@IRInst:sdiv	%t802	x	2
	ldr r4,[fp,#3204]                                 	@IRInst:assign	x	%t802
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t802
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t803	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t803	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t803	y	2
	str r6,[fp,#3208]                                 	@IRInst:sdiv	%t803	y	2
	ldr r4,[fp,#3208]                                 	@IRInst:assign	y	%t803
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t803
	ldr r4,[fp,#8]                                    	@IRInst:add	%t804	i	1
	mov r5,#1                                         	@IRInst:add	%t804	i	1
	add r6,r4,r5                                      	@IRInst:add	%t804	i	1
	str r6,[fp,#3212]                                 	@IRInst:add	%t804	i	1
	ldr r4,[fp,#3212]                                 	@IRInst:assign	i	%t804
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t804
	b .L428                                           
.L430:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t805	ans
	str r4,[fp,#3216]                                 	@IRInst:assign	%t805	ans
	ldr r4,[fp,#3216]                                 	@IRInst:not_zero	%t806	%t805	0
	mov r5,#0                                         	@IRInst:not_zero	%t806	%t805	0
	cmp r4,r5                                         	@IRInst:not_zero	%t806	%t805	0
	moveq r6,#0                                       	@IRInst:not_zero	%t806	%t805	0
	movne r6,#1                                       	@IRInst:not_zero	%t806	%t805	0
	str r6,[fp,#3220]                                 	@IRInst:not_zero	%t806	%t805	0
	beq .L436                                         
	b .L435                                           
.L435:
	ldr r4,[fp,#3144]                                 	@IRInst:assign	al	mres
	str r4,[fp,#3224]                                 	@IRInst:assign	al	mres
	ldr r4,[fp,#3136]                                 	@IRInst:assign	c	ml
	str r4,[fp,#3228]                                 	@IRInst:assign	c	ml
.L438:
	ldr r4,[fp,#3228]                                 	@IRInst:assign	%t810	c
	str r4,[fp,#3236]                                 	@IRInst:assign	%t810	c
	ldr r4,[fp,#3236]                                 	@IRInst:not_zero	%t811	%t810	0
	mov r5,#0                                         	@IRInst:not_zero	%t811	%t810	0
	cmp r4,r5                                         	@IRInst:not_zero	%t811	%t810	0
	moveq r6,#0                                       	@IRInst:not_zero	%t811	%t810	0
	movne r6,#1                                       	@IRInst:not_zero	%t811	%t810	0
	str r6,[fp,#3240]                                 	@IRInst:not_zero	%t811	%t810	0
	beq .L440                                         
	b .L439                                           
.L439:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3224]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#3228]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L441:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t812	i	16
	mov r5,#16                                        	@IRInst:blt	%t812	i	16
	cmp r4,r5                                         	@IRInst:blt	%t812	i	16
	movlt r6,#1                                       	@IRInst:blt	%t812	i	16
	movge r6,#0                                       	@IRInst:blt	%t812	i	16
	str r6,[fp,#3244]                                 	@IRInst:blt	%t812	i	16
	blt .L442                                         
	b .L443                                           
.L442:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t814	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t814	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t814	x	2
	str r6,[fp,#3252]                                 	@IRInst:sdiv	%t814	x	2
	ldr r4,[fp,#3252]                                 	@IRInst:mul	%t815	%t814	2
	mov r5,#2                                         	@IRInst:mul	%t815	%t814	2
	mul r6,r4,r5                                      	@IRInst:mul	%t815	%t814	2
	str r6,[fp,#3256]                                 	@IRInst:mul	%t815	%t814	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t813	x	%t815
	ldr r5,[fp,#3256]                                 	@IRInst:sub	%t813	x	%t815
	sub r6,r4,r5                                      	@IRInst:sub	%t813	x	%t815
	str r6,[fp,#3248]                                 	@IRInst:sub	%t813	x	%t815
.L444:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t817	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t817	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t817	y	2
	str r6,[fp,#3264]                                 	@IRInst:sdiv	%t817	y	2
	ldr r4,[fp,#3264]                                 	@IRInst:mul	%t818	%t817	2
	mov r5,#2                                         	@IRInst:mul	%t818	%t817	2
	mul r6,r4,r5                                      	@IRInst:mul	%t818	%t817	2
	str r6,[fp,#3268]                                 	@IRInst:mul	%t818	%t817	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t816	y	%t818
	ldr r5,[fp,#3268]                                 	@IRInst:sub	%t816	y	%t818
	sub r6,r4,r5                                      	@IRInst:sub	%t816	y	%t818
	str r6,[fp,#3260]                                 	@IRInst:sub	%t816	y	%t818
	ldr r4,[fp,#3260]                                 	@IRInst:beq	%t819	%t816	0
	mov r5,#0                                         	@IRInst:beq	%t819	%t816	0
	cmp r4,r5                                         	@IRInst:beq	%t819	%t816	0
	moveq r6,#1                                       	@IRInst:beq	%t819	%t816	0
	movne r6,#0                                       	@IRInst:beq	%t819	%t816	0
	str r6,[fp,#3272]                                 	@IRInst:beq	%t819	%t816	0
	beq .L447                                         
	b .L448                                           
.L447:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t820	i	4
	mov r5,#4                                         	@IRInst:mul	%t820	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t820	i	4
	str r6,[fp,#3276]                                 	@IRInst:mul	%t820	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t821	SHIFT_TABLE	%t820
	ldr r5,[fp,#3276]                                 	@IRInst:add	%t821	SHIFT_TABLE	%t820
	add r6,r4,r5                                      	@IRInst:add	%t821	SHIFT_TABLE	%t820
	str r6,[fp,#3280]                                 	@IRInst:add	%t821	SHIFT_TABLE	%t820
	ldr r4,[fp,#3280]                                 	@IRInst:assign	%t822	%t821
	ldr r4,[r4]                                       	@IRInst:assign	%t822	%t821
	str r4,[fp,#3284]                                 	@IRInst:assign	%t822	%t821
	mov r4,#1                                         	@IRInst:mul	%t823	1	%t822
	ldr r5,[fp,#3284]                                 	@IRInst:mul	%t823	1	%t822
	mul r6,r4,r5                                      	@IRInst:mul	%t823	1	%t822
	str r6,[fp,#3288]                                 	@IRInst:mul	%t823	1	%t822
	ldr r4,[fp,#4]                                    	@IRInst:add	%t824	ans	%t823
	ldr r5,[fp,#3288]                                 	@IRInst:add	%t824	ans	%t823
	add r6,r4,r5                                      	@IRInst:add	%t824	ans	%t823
	str r6,[fp,#3292]                                 	@IRInst:add	%t824	ans	%t823
	ldr r4,[fp,#3292]                                 	@IRInst:assign	ans	%t824
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t824
.L448:
.L449:
	b .L446                                           
.L445:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t826	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t826	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t826	y	2
	str r6,[fp,#3300]                                 	@IRInst:sdiv	%t826	y	2
	ldr r4,[fp,#3300]                                 	@IRInst:mul	%t827	%t826	2
	mov r5,#2                                         	@IRInst:mul	%t827	%t826	2
	mul r6,r4,r5                                      	@IRInst:mul	%t827	%t826	2
	str r6,[fp,#3304]                                 	@IRInst:mul	%t827	%t826	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t825	y	%t827
	ldr r5,[fp,#3304]                                 	@IRInst:sub	%t825	y	%t827
	sub r6,r4,r5                                      	@IRInst:sub	%t825	y	%t827
	str r6,[fp,#3296]                                 	@IRInst:sub	%t825	y	%t827
.L450:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t828	i	4
	mov r5,#4                                         	@IRInst:mul	%t828	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t828	i	4
	str r6,[fp,#3308]                                 	@IRInst:mul	%t828	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t829	SHIFT_TABLE	%t828
	ldr r5,[fp,#3308]                                 	@IRInst:add	%t829	SHIFT_TABLE	%t828
	add r6,r4,r5                                      	@IRInst:add	%t829	SHIFT_TABLE	%t828
	str r6,[fp,#3312]                                 	@IRInst:add	%t829	SHIFT_TABLE	%t828
	ldr r4,[fp,#3312]                                 	@IRInst:assign	%t830	%t829
	ldr r4,[r4]                                       	@IRInst:assign	%t830	%t829
	str r4,[fp,#3316]                                 	@IRInst:assign	%t830	%t829
	mov r4,#1                                         	@IRInst:mul	%t831	1	%t830
	ldr r5,[fp,#3316]                                 	@IRInst:mul	%t831	1	%t830
	mul r6,r4,r5                                      	@IRInst:mul	%t831	1	%t830
	str r6,[fp,#3320]                                 	@IRInst:mul	%t831	1	%t830
	ldr r4,[fp,#4]                                    	@IRInst:add	%t832	ans	%t831
	ldr r5,[fp,#3320]                                 	@IRInst:add	%t832	ans	%t831
	add r6,r4,r5                                      	@IRInst:add	%t832	ans	%t831
	str r6,[fp,#3324]                                 	@IRInst:add	%t832	ans	%t831
	ldr r4,[fp,#3324]                                 	@IRInst:assign	ans	%t832
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t832
.L451:
.L452:
.L446:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t833	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t833	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t833	x	2
	str r6,[fp,#3328]                                 	@IRInst:sdiv	%t833	x	2
	ldr r4,[fp,#3328]                                 	@IRInst:assign	x	%t833
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t833
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t834	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t834	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t834	y	2
	str r6,[fp,#3332]                                 	@IRInst:sdiv	%t834	y	2
	ldr r4,[fp,#3332]                                 	@IRInst:assign	y	%t834
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t834
	ldr r4,[fp,#8]                                    	@IRInst:add	%t835	i	1
	mov r5,#1                                         	@IRInst:add	%t835	i	1
	add r6,r4,r5                                      	@IRInst:add	%t835	i	1
	str r6,[fp,#3336]                                 	@IRInst:add	%t835	i	1
	ldr r4,[fp,#3336]                                 	@IRInst:assign	i	%t835
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t835
	b .L441                                           
.L443:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#3232]                                 	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3224]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#3228]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L453:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t836	i	16
	mov r5,#16                                        	@IRInst:blt	%t836	i	16
	cmp r4,r5                                         	@IRInst:blt	%t836	i	16
	movlt r6,#1                                       	@IRInst:blt	%t836	i	16
	movge r6,#0                                       	@IRInst:blt	%t836	i	16
	str r6,[fp,#3340]                                 	@IRInst:blt	%t836	i	16
	blt .L454                                         
	b .L455                                           
.L454:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t838	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t838	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t838	x	2
	str r6,[fp,#3348]                                 	@IRInst:sdiv	%t838	x	2
	ldr r4,[fp,#3348]                                 	@IRInst:mul	%t839	%t838	2
	mov r5,#2                                         	@IRInst:mul	%t839	%t838	2
	mul r6,r4,r5                                      	@IRInst:mul	%t839	%t838	2
	str r6,[fp,#3352]                                 	@IRInst:mul	%t839	%t838	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t837	x	%t839
	ldr r5,[fp,#3352]                                 	@IRInst:sub	%t837	x	%t839
	sub r6,r4,r5                                      	@IRInst:sub	%t837	x	%t839
	str r6,[fp,#3344]                                 	@IRInst:sub	%t837	x	%t839
.L459:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t841	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t841	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t841	y	2
	str r6,[fp,#3360]                                 	@IRInst:sdiv	%t841	y	2
	ldr r4,[fp,#3360]                                 	@IRInst:mul	%t842	%t841	2
	mov r5,#2                                         	@IRInst:mul	%t842	%t841	2
	mul r6,r4,r5                                      	@IRInst:mul	%t842	%t841	2
	str r6,[fp,#3364]                                 	@IRInst:mul	%t842	%t841	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t840	y	%t842
	ldr r5,[fp,#3364]                                 	@IRInst:sub	%t840	y	%t842
	sub r6,r4,r5                                      	@IRInst:sub	%t840	y	%t842
	str r6,[fp,#3356]                                 	@IRInst:sub	%t840	y	%t842
.L456:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t843	i	4
	mov r5,#4                                         	@IRInst:mul	%t843	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t843	i	4
	str r6,[fp,#3368]                                 	@IRInst:mul	%t843	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t844	SHIFT_TABLE	%t843
	ldr r5,[fp,#3368]                                 	@IRInst:add	%t844	SHIFT_TABLE	%t843
	add r6,r4,r5                                      	@IRInst:add	%t844	SHIFT_TABLE	%t843
	str r6,[fp,#3372]                                 	@IRInst:add	%t844	SHIFT_TABLE	%t843
	ldr r4,[fp,#3372]                                 	@IRInst:assign	%t845	%t844
	ldr r4,[r4]                                       	@IRInst:assign	%t845	%t844
	str r4,[fp,#3376]                                 	@IRInst:assign	%t845	%t844
	mov r4,#1                                         	@IRInst:mul	%t846	1	%t845
	ldr r5,[fp,#3376]                                 	@IRInst:mul	%t846	1	%t845
	mul r6,r4,r5                                      	@IRInst:mul	%t846	1	%t845
	str r6,[fp,#3380]                                 	@IRInst:mul	%t846	1	%t845
	ldr r4,[fp,#4]                                    	@IRInst:add	%t847	ans	%t846
	ldr r5,[fp,#3380]                                 	@IRInst:add	%t847	ans	%t846
	add r6,r4,r5                                      	@IRInst:add	%t847	ans	%t846
	str r6,[fp,#3384]                                 	@IRInst:add	%t847	ans	%t846
	ldr r4,[fp,#3384]                                 	@IRInst:assign	ans	%t847
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t847
.L457:
.L458:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t848	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t848	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t848	x	2
	str r6,[fp,#3388]                                 	@IRInst:sdiv	%t848	x	2
	ldr r4,[fp,#3388]                                 	@IRInst:assign	x	%t848
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t848
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t849	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t849	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t849	y	2
	str r6,[fp,#3392]                                 	@IRInst:sdiv	%t849	y	2
	ldr r4,[fp,#3392]                                 	@IRInst:assign	y	%t849
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t849
	ldr r4,[fp,#8]                                    	@IRInst:add	%t850	i	1
	mov r5,#1                                         	@IRInst:add	%t850	i	1
	add r6,r4,r5                                      	@IRInst:add	%t850	i	1
	str r6,[fp,#3396]                                 	@IRInst:add	%t850	i	1
	ldr r4,[fp,#3396]                                 	@IRInst:assign	i	%t850
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t850
	b .L453                                           
.L455:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#3228]                                 	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t851	1	15
	mov r5,#15                                        	@IRInst:bgt	%t851	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t851	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t851	1	15
	movle r6,#0                                       	@IRInst:bgt	%t851	1	15
	str r6,[fp,#3400]                                 	@IRInst:bgt	%t851	1	15
	bgt .L460                                         
	b .L461                                           
.L460:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L462                                           
.L461:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t852	1	4
	mov r5,#4                                         	@IRInst:mul	%t852	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t852	1	4
	str r6,[fp,#3404]                                 	@IRInst:mul	%t852	1	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t853	SHIFT_TABLE	%t852
	ldr r5,[fp,#3404]                                 	@IRInst:add	%t853	SHIFT_TABLE	%t852
	add r6,r4,r5                                      	@IRInst:add	%t853	SHIFT_TABLE	%t852
	str r6,[fp,#3408]                                 	@IRInst:add	%t853	SHIFT_TABLE	%t852
	ldr r4,[fp,#3408]                                 	@IRInst:assign	%t854	%t853
	ldr r4,[r4]                                       	@IRInst:assign	%t854	%t853
	str r4,[fp,#3412]                                 	@IRInst:assign	%t854	%t853
	ldr r4,[fp,#3228]                                 	@IRInst:mul	%t855	c	%t854
	ldr r5,[fp,#3412]                                 	@IRInst:mul	%t855	c	%t854
	mul r6,r4,r5                                      	@IRInst:mul	%t855	c	%t854
	str r6,[fp,#3416]                                 	@IRInst:mul	%t855	c	%t854
	ldr r4,[fp,#3416]                                 	@IRInst:assign	x	%t855
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t855
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L463:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t856	i	16
	mov r5,#16                                        	@IRInst:blt	%t856	i	16
	cmp r4,r5                                         	@IRInst:blt	%t856	i	16
	movlt r6,#1                                       	@IRInst:blt	%t856	i	16
	movge r6,#0                                       	@IRInst:blt	%t856	i	16
	str r6,[fp,#3420]                                 	@IRInst:blt	%t856	i	16
	blt .L464                                         
	b .L465                                           
.L464:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t858	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t858	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t858	x	2
	str r6,[fp,#3428]                                 	@IRInst:sdiv	%t858	x	2
	ldr r4,[fp,#3428]                                 	@IRInst:mul	%t859	%t858	2
	mov r5,#2                                         	@IRInst:mul	%t859	%t858	2
	mul r6,r4,r5                                      	@IRInst:mul	%t859	%t858	2
	str r6,[fp,#3432]                                 	@IRInst:mul	%t859	%t858	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t857	x	%t859
	ldr r5,[fp,#3432]                                 	@IRInst:sub	%t857	x	%t859
	sub r6,r4,r5                                      	@IRInst:sub	%t857	x	%t859
	str r6,[fp,#3424]                                 	@IRInst:sub	%t857	x	%t859
.L469:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t861	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t861	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t861	y	2
	str r6,[fp,#3440]                                 	@IRInst:sdiv	%t861	y	2
	ldr r4,[fp,#3440]                                 	@IRInst:mul	%t862	%t861	2
	mov r5,#2                                         	@IRInst:mul	%t862	%t861	2
	mul r6,r4,r5                                      	@IRInst:mul	%t862	%t861	2
	str r6,[fp,#3444]                                 	@IRInst:mul	%t862	%t861	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t860	y	%t862
	ldr r5,[fp,#3444]                                 	@IRInst:sub	%t860	y	%t862
	sub r6,r4,r5                                      	@IRInst:sub	%t860	y	%t862
	str r6,[fp,#3436]                                 	@IRInst:sub	%t860	y	%t862
.L466:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t863	i	4
	mov r5,#4                                         	@IRInst:mul	%t863	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t863	i	4
	str r6,[fp,#3448]                                 	@IRInst:mul	%t863	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t864	SHIFT_TABLE	%t863
	ldr r5,[fp,#3448]                                 	@IRInst:add	%t864	SHIFT_TABLE	%t863
	add r6,r4,r5                                      	@IRInst:add	%t864	SHIFT_TABLE	%t863
	str r6,[fp,#3452]                                 	@IRInst:add	%t864	SHIFT_TABLE	%t863
	ldr r4,[fp,#3452]                                 	@IRInst:assign	%t865	%t864
	ldr r4,[r4]                                       	@IRInst:assign	%t865	%t864
	str r4,[fp,#3456]                                 	@IRInst:assign	%t865	%t864
	mov r4,#1                                         	@IRInst:mul	%t866	1	%t865
	ldr r5,[fp,#3456]                                 	@IRInst:mul	%t866	1	%t865
	mul r6,r4,r5                                      	@IRInst:mul	%t866	1	%t865
	str r6,[fp,#3460]                                 	@IRInst:mul	%t866	1	%t865
	ldr r4,[fp,#4]                                    	@IRInst:add	%t867	ans	%t866
	ldr r5,[fp,#3460]                                 	@IRInst:add	%t867	ans	%t866
	add r6,r4,r5                                      	@IRInst:add	%t867	ans	%t866
	str r6,[fp,#3464]                                 	@IRInst:add	%t867	ans	%t866
	ldr r4,[fp,#3464]                                 	@IRInst:assign	ans	%t867
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t867
.L467:
.L468:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t868	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t868	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t868	x	2
	str r6,[fp,#3468]                                 	@IRInst:sdiv	%t868	x	2
	ldr r4,[fp,#3468]                                 	@IRInst:assign	x	%t868
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t868
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t869	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t869	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t869	y	2
	str r6,[fp,#3472]                                 	@IRInst:sdiv	%t869	y	2
	ldr r4,[fp,#3472]                                 	@IRInst:assign	y	%t869
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t869
	ldr r4,[fp,#8]                                    	@IRInst:add	%t870	i	1
	mov r5,#1                                         	@IRInst:add	%t870	i	1
	add r6,r4,r5                                      	@IRInst:add	%t870	i	1
	str r6,[fp,#3476]                                 	@IRInst:add	%t870	i	1
	ldr r4,[fp,#3476]                                 	@IRInst:assign	i	%t870
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t870
	b .L463                                           
.L465:
.L462:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#3228]                                 	@IRInst:assign	c	ans
	ldr r4,[fp,#3232]                                 	@IRInst:assign	al	sum
	str r4,[fp,#3224]                                 	@IRInst:assign	al	sum
	b .L438                                           
.L440:
	ldr r4,[fp,#3224]                                 	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	mres	ans
	str r4,[fp,#3144]                                 	@IRInst:assign	mres	ans
.L436:
.L437:
	ldr r4,[fp,#3136]                                 	@IRInst:assign	al	ml
	str r4,[fp,#3480]                                 	@IRInst:assign	al	ml
	ldr r4,[fp,#3136]                                 	@IRInst:assign	c	ml
	str r4,[fp,#3484]                                 	@IRInst:assign	c	ml
.L470:
	ldr r4,[fp,#3484]                                 	@IRInst:assign	%t874	c
	str r4,[fp,#3492]                                 	@IRInst:assign	%t874	c
	ldr r4,[fp,#3492]                                 	@IRInst:not_zero	%t875	%t874	0
	mov r5,#0                                         	@IRInst:not_zero	%t875	%t874	0
	cmp r4,r5                                         	@IRInst:not_zero	%t875	%t874	0
	moveq r6,#0                                       	@IRInst:not_zero	%t875	%t874	0
	movne r6,#1                                       	@IRInst:not_zero	%t875	%t874	0
	str r6,[fp,#3496]                                 	@IRInst:not_zero	%t875	%t874	0
	beq .L472                                         
	b .L471                                           
.L471:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3480]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#3484]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L473:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t876	i	16
	mov r5,#16                                        	@IRInst:blt	%t876	i	16
	cmp r4,r5                                         	@IRInst:blt	%t876	i	16
	movlt r6,#1                                       	@IRInst:blt	%t876	i	16
	movge r6,#0                                       	@IRInst:blt	%t876	i	16
	str r6,[fp,#3500]                                 	@IRInst:blt	%t876	i	16
	blt .L474                                         
	b .L475                                           
.L474:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t878	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t878	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t878	x	2
	str r6,[fp,#3508]                                 	@IRInst:sdiv	%t878	x	2
	ldr r4,[fp,#3508]                                 	@IRInst:mul	%t879	%t878	2
	mov r5,#2                                         	@IRInst:mul	%t879	%t878	2
	mul r6,r4,r5                                      	@IRInst:mul	%t879	%t878	2
	str r6,[fp,#3512]                                 	@IRInst:mul	%t879	%t878	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t877	x	%t879
	ldr r5,[fp,#3512]                                 	@IRInst:sub	%t877	x	%t879
	sub r6,r4,r5                                      	@IRInst:sub	%t877	x	%t879
	str r6,[fp,#3504]                                 	@IRInst:sub	%t877	x	%t879
.L476:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t881	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t881	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t881	y	2
	str r6,[fp,#3520]                                 	@IRInst:sdiv	%t881	y	2
	ldr r4,[fp,#3520]                                 	@IRInst:mul	%t882	%t881	2
	mov r5,#2                                         	@IRInst:mul	%t882	%t881	2
	mul r6,r4,r5                                      	@IRInst:mul	%t882	%t881	2
	str r6,[fp,#3524]                                 	@IRInst:mul	%t882	%t881	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t880	y	%t882
	ldr r5,[fp,#3524]                                 	@IRInst:sub	%t880	y	%t882
	sub r6,r4,r5                                      	@IRInst:sub	%t880	y	%t882
	str r6,[fp,#3516]                                 	@IRInst:sub	%t880	y	%t882
	ldr r4,[fp,#3516]                                 	@IRInst:beq	%t883	%t880	0
	mov r5,#0                                         	@IRInst:beq	%t883	%t880	0
	cmp r4,r5                                         	@IRInst:beq	%t883	%t880	0
	moveq r6,#1                                       	@IRInst:beq	%t883	%t880	0
	movne r6,#0                                       	@IRInst:beq	%t883	%t880	0
	str r6,[fp,#3528]                                 	@IRInst:beq	%t883	%t880	0
	beq .L479                                         
	b .L480                                           
.L479:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t884	i	4
	mov r5,#4                                         	@IRInst:mul	%t884	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t884	i	4
	str r6,[fp,#3532]                                 	@IRInst:mul	%t884	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t885	SHIFT_TABLE	%t884
	ldr r5,[fp,#3532]                                 	@IRInst:add	%t885	SHIFT_TABLE	%t884
	add r6,r4,r5                                      	@IRInst:add	%t885	SHIFT_TABLE	%t884
	str r6,[fp,#3536]                                 	@IRInst:add	%t885	SHIFT_TABLE	%t884
	ldr r4,[fp,#3536]                                 	@IRInst:assign	%t886	%t885
	ldr r4,[r4]                                       	@IRInst:assign	%t886	%t885
	str r4,[fp,#3540]                                 	@IRInst:assign	%t886	%t885
	mov r4,#1                                         	@IRInst:mul	%t887	1	%t886
	ldr r5,[fp,#3540]                                 	@IRInst:mul	%t887	1	%t886
	mul r6,r4,r5                                      	@IRInst:mul	%t887	1	%t886
	str r6,[fp,#3544]                                 	@IRInst:mul	%t887	1	%t886
	ldr r4,[fp,#4]                                    	@IRInst:add	%t888	ans	%t887
	ldr r5,[fp,#3544]                                 	@IRInst:add	%t888	ans	%t887
	add r6,r4,r5                                      	@IRInst:add	%t888	ans	%t887
	str r6,[fp,#3548]                                 	@IRInst:add	%t888	ans	%t887
	ldr r4,[fp,#3548]                                 	@IRInst:assign	ans	%t888
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t888
.L480:
.L481:
	b .L478                                           
.L477:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t890	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t890	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t890	y	2
	str r6,[fp,#3556]                                 	@IRInst:sdiv	%t890	y	2
	ldr r4,[fp,#3556]                                 	@IRInst:mul	%t891	%t890	2
	mov r5,#2                                         	@IRInst:mul	%t891	%t890	2
	mul r6,r4,r5                                      	@IRInst:mul	%t891	%t890	2
	str r6,[fp,#3560]                                 	@IRInst:mul	%t891	%t890	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t889	y	%t891
	ldr r5,[fp,#3560]                                 	@IRInst:sub	%t889	y	%t891
	sub r6,r4,r5                                      	@IRInst:sub	%t889	y	%t891
	str r6,[fp,#3552]                                 	@IRInst:sub	%t889	y	%t891
.L482:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t892	i	4
	mov r5,#4                                         	@IRInst:mul	%t892	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t892	i	4
	str r6,[fp,#3564]                                 	@IRInst:mul	%t892	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t893	SHIFT_TABLE	%t892
	ldr r5,[fp,#3564]                                 	@IRInst:add	%t893	SHIFT_TABLE	%t892
	add r6,r4,r5                                      	@IRInst:add	%t893	SHIFT_TABLE	%t892
	str r6,[fp,#3568]                                 	@IRInst:add	%t893	SHIFT_TABLE	%t892
	ldr r4,[fp,#3568]                                 	@IRInst:assign	%t894	%t893
	ldr r4,[r4]                                       	@IRInst:assign	%t894	%t893
	str r4,[fp,#3572]                                 	@IRInst:assign	%t894	%t893
	mov r4,#1                                         	@IRInst:mul	%t895	1	%t894
	ldr r5,[fp,#3572]                                 	@IRInst:mul	%t895	1	%t894
	mul r6,r4,r5                                      	@IRInst:mul	%t895	1	%t894
	str r6,[fp,#3576]                                 	@IRInst:mul	%t895	1	%t894
	ldr r4,[fp,#4]                                    	@IRInst:add	%t896	ans	%t895
	ldr r5,[fp,#3576]                                 	@IRInst:add	%t896	ans	%t895
	add r6,r4,r5                                      	@IRInst:add	%t896	ans	%t895
	str r6,[fp,#3580]                                 	@IRInst:add	%t896	ans	%t895
	ldr r4,[fp,#3580]                                 	@IRInst:assign	ans	%t896
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t896
.L483:
.L484:
.L478:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t897	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t897	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t897	x	2
	str r6,[fp,#3584]                                 	@IRInst:sdiv	%t897	x	2
	ldr r4,[fp,#3584]                                 	@IRInst:assign	x	%t897
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t897
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t898	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t898	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t898	y	2
	str r6,[fp,#3588]                                 	@IRInst:sdiv	%t898	y	2
	ldr r4,[fp,#3588]                                 	@IRInst:assign	y	%t898
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t898
	ldr r4,[fp,#8]                                    	@IRInst:add	%t899	i	1
	mov r5,#1                                         	@IRInst:add	%t899	i	1
	add r6,r4,r5                                      	@IRInst:add	%t899	i	1
	str r6,[fp,#3592]                                 	@IRInst:add	%t899	i	1
	ldr r4,[fp,#3592]                                 	@IRInst:assign	i	%t899
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t899
	b .L473                                           
.L475:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#3488]                                 	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3480]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#3484]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L485:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t900	i	16
	mov r5,#16                                        	@IRInst:blt	%t900	i	16
	cmp r4,r5                                         	@IRInst:blt	%t900	i	16
	movlt r6,#1                                       	@IRInst:blt	%t900	i	16
	movge r6,#0                                       	@IRInst:blt	%t900	i	16
	str r6,[fp,#3596]                                 	@IRInst:blt	%t900	i	16
	blt .L486                                         
	b .L487                                           
.L486:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t902	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t902	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t902	x	2
	str r6,[fp,#3604]                                 	@IRInst:sdiv	%t902	x	2
	ldr r4,[fp,#3604]                                 	@IRInst:mul	%t903	%t902	2
	mov r5,#2                                         	@IRInst:mul	%t903	%t902	2
	mul r6,r4,r5                                      	@IRInst:mul	%t903	%t902	2
	str r6,[fp,#3608]                                 	@IRInst:mul	%t903	%t902	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t901	x	%t903
	ldr r5,[fp,#3608]                                 	@IRInst:sub	%t901	x	%t903
	sub r6,r4,r5                                      	@IRInst:sub	%t901	x	%t903
	str r6,[fp,#3600]                                 	@IRInst:sub	%t901	x	%t903
.L491:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t905	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t905	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t905	y	2
	str r6,[fp,#3616]                                 	@IRInst:sdiv	%t905	y	2
	ldr r4,[fp,#3616]                                 	@IRInst:mul	%t906	%t905	2
	mov r5,#2                                         	@IRInst:mul	%t906	%t905	2
	mul r6,r4,r5                                      	@IRInst:mul	%t906	%t905	2
	str r6,[fp,#3620]                                 	@IRInst:mul	%t906	%t905	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t904	y	%t906
	ldr r5,[fp,#3620]                                 	@IRInst:sub	%t904	y	%t906
	sub r6,r4,r5                                      	@IRInst:sub	%t904	y	%t906
	str r6,[fp,#3612]                                 	@IRInst:sub	%t904	y	%t906
.L488:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t907	i	4
	mov r5,#4                                         	@IRInst:mul	%t907	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t907	i	4
	str r6,[fp,#3624]                                 	@IRInst:mul	%t907	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t908	SHIFT_TABLE	%t907
	ldr r5,[fp,#3624]                                 	@IRInst:add	%t908	SHIFT_TABLE	%t907
	add r6,r4,r5                                      	@IRInst:add	%t908	SHIFT_TABLE	%t907
	str r6,[fp,#3628]                                 	@IRInst:add	%t908	SHIFT_TABLE	%t907
	ldr r4,[fp,#3628]                                 	@IRInst:assign	%t909	%t908
	ldr r4,[r4]                                       	@IRInst:assign	%t909	%t908
	str r4,[fp,#3632]                                 	@IRInst:assign	%t909	%t908
	mov r4,#1                                         	@IRInst:mul	%t910	1	%t909
	ldr r5,[fp,#3632]                                 	@IRInst:mul	%t910	1	%t909
	mul r6,r4,r5                                      	@IRInst:mul	%t910	1	%t909
	str r6,[fp,#3636]                                 	@IRInst:mul	%t910	1	%t909
	ldr r4,[fp,#4]                                    	@IRInst:add	%t911	ans	%t910
	ldr r5,[fp,#3636]                                 	@IRInst:add	%t911	ans	%t910
	add r6,r4,r5                                      	@IRInst:add	%t911	ans	%t910
	str r6,[fp,#3640]                                 	@IRInst:add	%t911	ans	%t910
	ldr r4,[fp,#3640]                                 	@IRInst:assign	ans	%t911
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t911
.L489:
.L490:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t912	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t912	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t912	x	2
	str r6,[fp,#3644]                                 	@IRInst:sdiv	%t912	x	2
	ldr r4,[fp,#3644]                                 	@IRInst:assign	x	%t912
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t912
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t913	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t913	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t913	y	2
	str r6,[fp,#3648]                                 	@IRInst:sdiv	%t913	y	2
	ldr r4,[fp,#3648]                                 	@IRInst:assign	y	%t913
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t913
	ldr r4,[fp,#8]                                    	@IRInst:add	%t914	i	1
	mov r5,#1                                         	@IRInst:add	%t914	i	1
	add r6,r4,r5                                      	@IRInst:add	%t914	i	1
	str r6,[fp,#3652]                                 	@IRInst:add	%t914	i	1
	ldr r4,[fp,#3652]                                 	@IRInst:assign	i	%t914
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t914
	b .L485                                           
.L487:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#3484]                                 	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t915	1	15
	mov r5,#15                                        	@IRInst:bgt	%t915	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t915	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t915	1	15
	movle r6,#0                                       	@IRInst:bgt	%t915	1	15
	str r6,[fp,#3656]                                 	@IRInst:bgt	%t915	1	15
	bgt .L492                                         
	b .L493                                           
.L492:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L494                                           
.L493:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t916	1	4
	mov r5,#4                                         	@IRInst:mul	%t916	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t916	1	4
	str r6,[fp,#3660]                                 	@IRInst:mul	%t916	1	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t917	SHIFT_TABLE	%t916
	ldr r5,[fp,#3660]                                 	@IRInst:add	%t917	SHIFT_TABLE	%t916
	add r6,r4,r5                                      	@IRInst:add	%t917	SHIFT_TABLE	%t916
	str r6,[fp,#3664]                                 	@IRInst:add	%t917	SHIFT_TABLE	%t916
	ldr r4,[fp,#3664]                                 	@IRInst:assign	%t918	%t917
	ldr r4,[r4]                                       	@IRInst:assign	%t918	%t917
	str r4,[fp,#3668]                                 	@IRInst:assign	%t918	%t917
	ldr r4,[fp,#3484]                                 	@IRInst:mul	%t919	c	%t918
	ldr r5,[fp,#3668]                                 	@IRInst:mul	%t919	c	%t918
	mul r6,r4,r5                                      	@IRInst:mul	%t919	c	%t918
	str r6,[fp,#3672]                                 	@IRInst:mul	%t919	c	%t918
	ldr r4,[fp,#3672]                                 	@IRInst:assign	x	%t919
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t919
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L495:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t920	i	16
	mov r5,#16                                        	@IRInst:blt	%t920	i	16
	cmp r4,r5                                         	@IRInst:blt	%t920	i	16
	movlt r6,#1                                       	@IRInst:blt	%t920	i	16
	movge r6,#0                                       	@IRInst:blt	%t920	i	16
	str r6,[fp,#3676]                                 	@IRInst:blt	%t920	i	16
	blt .L496                                         
	b .L497                                           
.L496:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t922	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t922	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t922	x	2
	str r6,[fp,#3684]                                 	@IRInst:sdiv	%t922	x	2
	ldr r4,[fp,#3684]                                 	@IRInst:mul	%t923	%t922	2
	mov r5,#2                                         	@IRInst:mul	%t923	%t922	2
	mul r6,r4,r5                                      	@IRInst:mul	%t923	%t922	2
	str r6,[fp,#3688]                                 	@IRInst:mul	%t923	%t922	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t921	x	%t923
	ldr r5,[fp,#3688]                                 	@IRInst:sub	%t921	x	%t923
	sub r6,r4,r5                                      	@IRInst:sub	%t921	x	%t923
	str r6,[fp,#3680]                                 	@IRInst:sub	%t921	x	%t923
.L501:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t925	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t925	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t925	y	2
	str r6,[fp,#3696]                                 	@IRInst:sdiv	%t925	y	2
	ldr r4,[fp,#3696]                                 	@IRInst:mul	%t926	%t925	2
	mov r5,#2                                         	@IRInst:mul	%t926	%t925	2
	mul r6,r4,r5                                      	@IRInst:mul	%t926	%t925	2
	str r6,[fp,#3700]                                 	@IRInst:mul	%t926	%t925	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t924	y	%t926
	ldr r5,[fp,#3700]                                 	@IRInst:sub	%t924	y	%t926
	sub r6,r4,r5                                      	@IRInst:sub	%t924	y	%t926
	str r6,[fp,#3692]                                 	@IRInst:sub	%t924	y	%t926
.L498:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t927	i	4
	mov r5,#4                                         	@IRInst:mul	%t927	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t927	i	4
	str r6,[fp,#3704]                                 	@IRInst:mul	%t927	i	4
	ldr r4,.global_5_SHIFT_TABLE                      	@IRInst:add	%t928	SHIFT_TABLE	%t927
	ldr r5,[fp,#3704]                                 	@IRInst:add	%t928	SHIFT_TABLE	%t927
	add r6,r4,r5                                      	@IRInst:add	%t928	SHIFT_TABLE	%t927
	str r6,[fp,#3708]                                 	@IRInst:add	%t928	SHIFT_TABLE	%t927
	ldr r4,[fp,#3708]                                 	@IRInst:assign	%t929	%t928
	ldr r4,[r4]                                       	@IRInst:assign	%t929	%t928
	str r4,[fp,#3712]                                 	@IRInst:assign	%t929	%t928
	mov r4,#1                                         	@IRInst:mul	%t930	1	%t929
	ldr r5,[fp,#3712]                                 	@IRInst:mul	%t930	1	%t929
	mul r6,r4,r5                                      	@IRInst:mul	%t930	1	%t929
	str r6,[fp,#3716]                                 	@IRInst:mul	%t930	1	%t929
	ldr r4,[fp,#4]                                    	@IRInst:add	%t931	ans	%t930
	ldr r5,[fp,#3716]                                 	@IRInst:add	%t931	ans	%t930
	add r6,r4,r5                                      	@IRInst:add	%t931	ans	%t930
	str r6,[fp,#3720]                                 	@IRInst:add	%t931	ans	%t930
	ldr r4,[fp,#3720]                                 	@IRInst:assign	ans	%t931
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t931
.L499:
.L500:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t932	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t932	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t932	x	2
	str r6,[fp,#3724]                                 	@IRInst:sdiv	%t932	x	2
	ldr r4,[fp,#3724]                                 	@IRInst:assign	x	%t932
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t932
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t933	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t933	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t933	y	2
	str r6,[fp,#3728]                                 	@IRInst:sdiv	%t933	y	2
	ldr r4,[fp,#3728]                                 	@IRInst:assign	y	%t933
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t933
	ldr r4,[fp,#8]                                    	@IRInst:add	%t934	i	1
	mov r5,#1                                         	@IRInst:add	%t934	i	1
	add r6,r4,r5                                      	@IRInst:add	%t934	i	1
	str r6,[fp,#3732]                                 	@IRInst:add	%t934	i	1
	ldr r4,[fp,#3732]                                 	@IRInst:assign	i	%t934
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t934
	b .L495                                           
.L497:
.L494:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#3484]                                 	@IRInst:assign	c	ans
	ldr r4,[fp,#3488]                                 	@IRInst:assign	al	sum
	str r4,[fp,#3480]                                 	@IRInst:assign	al	sum
.global_6_SHIFT_TABLE:
        .long   SHIFT_TABLE
	b .L470                                           
.L472:
	ldr r4,[fp,#3480]                                 	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	ml	ans
	str r4,[fp,#3136]                                 	@IRInst:assign	ml	ans
	ldr r4,[fp,#3140]                                 	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t935	y	15
	mov r5,#15                                        	@IRInst:bge	%t935	y	15
	cmp r4,r5                                         	@IRInst:bge	%t935	y	15
	movge r6,#1                                       	@IRInst:bge	%t935	y	15
	movlt r6,#0                                       	@IRInst:bge	%t935	y	15
	str r6,[fp,#3736]                                 	@IRInst:bge	%t935	y	15
	bge .L502                                         
	b .L503                                           
.L502:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t936	x	0
	mov r5,#0                                         	@IRInst:blt	%t936	x	0
	cmp r4,r5                                         	@IRInst:blt	%t936	x	0
	movlt r6,#1                                       	@IRInst:blt	%t936	x	0
	movge r6,#0                                       	@IRInst:blt	%t936	x	0
	str r6,[fp,#3740]                                 	@IRInst:blt	%t936	x	0
	blt .L505                                         
	b .L506                                           
.L505:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L507                                           
.L506:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L507:
	b .L504                                           
.L503:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t937	y	0
	mov r5,#0                                         	@IRInst:bgt	%t937	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t937	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t937	y	0
	movle r6,#0                                       	@IRInst:bgt	%t937	y	0
	str r6,[fp,#3744]                                 	@IRInst:bgt	%t937	y	0
	bgt .L508                                         
	b .L509                                           
.L508:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t938	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t938	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t938	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t938	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t938	x	32767
	str r6,[fp,#3748]                                 	@IRInst:bgt	%t938	x	32767
	bgt .L511                                         
	b .L512                                           
.L511:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t939	y	4
	mov r5,#4                                         	@IRInst:mul	%t939	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t939	y	4
	str r6,[fp,#3752]                                 	@IRInst:mul	%t939	y	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t940	SHIFT_TABLE	%t939
	ldr r5,[fp,#3752]                                 	@IRInst:add	%t940	SHIFT_TABLE	%t939
	add r6,r4,r5                                      	@IRInst:add	%t940	SHIFT_TABLE	%t939
	str r6,[fp,#3756]                                 	@IRInst:add	%t940	SHIFT_TABLE	%t939
	ldr r4,[fp,#3756]                                 	@IRInst:assign	%t941	%t940
	ldr r4,[r4]                                       	@IRInst:assign	%t941	%t940
	str r4,[fp,#3760]                                 	@IRInst:assign	%t941	%t940
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t942	x	%t941
	ldr r5,[fp,#3760]                                 	@IRInst:sdiv	%t942	x	%t941
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t942	x	%t941
	str r6,[fp,#3764]                                 	@IRInst:sdiv	%t942	x	%t941
	ldr r4,[fp,#3764]                                 	@IRInst:assign	x	%t942
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t942
	ldr r4,[fp,#12]                                   	@IRInst:add	%t943	x	65536
	mov r5,#65536                                     	@IRInst:add	%t943	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t943	x	65536
	str r6,[fp,#3768]                                 	@IRInst:add	%t943	x	65536
	mov r4,#15                                        	@IRInst:sub	%t945	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t945	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t945	15	y
	str r6,[fp,#3776]                                 	@IRInst:sub	%t945	15	y
	ldr r4,[fp,#3776]                                 	@IRInst:add	%t946	%t945	1
	mov r5,#1                                         	@IRInst:add	%t946	%t945	1
	add r6,r4,r5                                      	@IRInst:add	%t946	%t945	1
	str r6,[fp,#3780]                                 	@IRInst:add	%t946	%t945	1
	ldr r4,[fp,#3780]                                 	@IRInst:mul	%t944	%t946	4
	mov r5,#4                                         	@IRInst:mul	%t944	%t946	4
	mul r6,r4,r5                                      	@IRInst:mul	%t944	%t946	4
	str r6,[fp,#3772]                                 	@IRInst:mul	%t944	%t946	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t947	SHIFT_TABLE	%t944
	ldr r5,[fp,#3772]                                 	@IRInst:add	%t947	SHIFT_TABLE	%t944
	add r6,r4,r5                                      	@IRInst:add	%t947	SHIFT_TABLE	%t944
	str r6,[fp,#3784]                                 	@IRInst:add	%t947	SHIFT_TABLE	%t944
	ldr r4,[fp,#3784]                                 	@IRInst:assign	%t948	%t947
	ldr r4,[r4]                                       	@IRInst:assign	%t948	%t947
	str r4,[fp,#3788]                                 	@IRInst:assign	%t948	%t947
	ldr r4,[fp,#3768]                                 	@IRInst:sub	%t949	%t943	%t948
	ldr r5,[fp,#3788]                                 	@IRInst:sub	%t949	%t943	%t948
	sub r6,r4,r5                                      	@IRInst:sub	%t949	%t943	%t948
	str r6,[fp,#3792]                                 	@IRInst:sub	%t949	%t943	%t948
	ldr r4,[fp,#3792]                                 	@IRInst:assign	ans	%t949
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t949
	b .L513                                           
.L512:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t950	y	4
	mov r5,#4                                         	@IRInst:mul	%t950	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t950	y	4
	str r6,[fp,#3796]                                 	@IRInst:mul	%t950	y	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t951	SHIFT_TABLE	%t950
	ldr r5,[fp,#3796]                                 	@IRInst:add	%t951	SHIFT_TABLE	%t950
	add r6,r4,r5                                      	@IRInst:add	%t951	SHIFT_TABLE	%t950
	str r6,[fp,#3800]                                 	@IRInst:add	%t951	SHIFT_TABLE	%t950
	ldr r4,[fp,#3800]                                 	@IRInst:assign	%t952	%t951
	ldr r4,[r4]                                       	@IRInst:assign	%t952	%t951
	str r4,[fp,#3804]                                 	@IRInst:assign	%t952	%t951
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t953	x	%t952
	ldr r5,[fp,#3804]                                 	@IRInst:sdiv	%t953	x	%t952
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t953	x	%t952
	str r6,[fp,#3808]                                 	@IRInst:sdiv	%t953	x	%t952
	ldr r4,[fp,#3808]                                 	@IRInst:assign	ans	%t953
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t953
.L513:
	b .L510                                           
.L509:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L510:
.L504:
	ldr r4,[fp,#4]                                    	@IRInst:assign	mr	ans
	str r4,[fp,#3140]                                 	@IRInst:assign	mr	ans
	b .L425                                           
.L427:
	ldr r4,[fp,#3144]                                 	@IRInst:assign	ans	mres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	mres
	ldr r4,[fp,#4]                                    	@IRInst:assign	pres	ans
	str r4,[fp,#3060]                                 	@IRInst:assign	pres	ans
.L423:
.L424:
	ldr r4,[fp,#3052]                                 	@IRInst:assign	ml	pl
	str r4,[fp,#3812]                                 	@IRInst:assign	ml	pl
	ldr r4,[fp,#3052]                                 	@IRInst:assign	mr	pl
	str r4,[fp,#3816]                                 	@IRInst:assign	mr	pl
	mov r4,#0                                         	@IRInst:assign	mres	0
	str r4,[fp,#3820]                                 	@IRInst:assign	mres	0
.L514:
	ldr r4,[fp,#3816]                                 	@IRInst:assign	%t957	mr
	str r4,[fp,#3824]                                 	@IRInst:assign	%t957	mr
	ldr r4,[fp,#3824]                                 	@IRInst:not_zero	%t958	%t957	0
	mov r5,#0                                         	@IRInst:not_zero	%t958	%t957	0
	cmp r4,r5                                         	@IRInst:not_zero	%t958	%t957	0
	moveq r6,#0                                       	@IRInst:not_zero	%t958	%t957	0
	movne r6,#1                                       	@IRInst:not_zero	%t958	%t957	0
	str r6,[fp,#3828]                                 	@IRInst:not_zero	%t958	%t957	0
	beq .L516                                         
	b .L515                                           
.L515:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3816]                                 	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L517:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t959	i	16
	mov r5,#16                                        	@IRInst:blt	%t959	i	16
	cmp r4,r5                                         	@IRInst:blt	%t959	i	16
	movlt r6,#1                                       	@IRInst:blt	%t959	i	16
	movge r6,#0                                       	@IRInst:blt	%t959	i	16
	str r6,[fp,#3832]                                 	@IRInst:blt	%t959	i	16
	blt .L518                                         
	b .L519                                           
.L518:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t961	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t961	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t961	x	2
	str r6,[fp,#3840]                                 	@IRInst:sdiv	%t961	x	2
	ldr r4,[fp,#3840]                                 	@IRInst:mul	%t962	%t961	2
	mov r5,#2                                         	@IRInst:mul	%t962	%t961	2
	mul r6,r4,r5                                      	@IRInst:mul	%t962	%t961	2
	str r6,[fp,#3844]                                 	@IRInst:mul	%t962	%t961	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t960	x	%t962
	ldr r5,[fp,#3844]                                 	@IRInst:sub	%t960	x	%t962
	sub r6,r4,r5                                      	@IRInst:sub	%t960	x	%t962
	str r6,[fp,#3836]                                 	@IRInst:sub	%t960	x	%t962
.L523:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t964	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t964	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t964	y	2
	str r6,[fp,#3852]                                 	@IRInst:sdiv	%t964	y	2
	ldr r4,[fp,#3852]                                 	@IRInst:mul	%t965	%t964	2
	mov r5,#2                                         	@IRInst:mul	%t965	%t964	2
	mul r6,r4,r5                                      	@IRInst:mul	%t965	%t964	2
	str r6,[fp,#3856]                                 	@IRInst:mul	%t965	%t964	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t963	y	%t965
	ldr r5,[fp,#3856]                                 	@IRInst:sub	%t963	y	%t965
	sub r6,r4,r5                                      	@IRInst:sub	%t963	y	%t965
	str r6,[fp,#3848]                                 	@IRInst:sub	%t963	y	%t965
.L520:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t966	i	4
	mov r5,#4                                         	@IRInst:mul	%t966	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t966	i	4
	str r6,[fp,#3860]                                 	@IRInst:mul	%t966	i	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t967	SHIFT_TABLE	%t966
	ldr r5,[fp,#3860]                                 	@IRInst:add	%t967	SHIFT_TABLE	%t966
	add r6,r4,r5                                      	@IRInst:add	%t967	SHIFT_TABLE	%t966
	str r6,[fp,#3864]                                 	@IRInst:add	%t967	SHIFT_TABLE	%t966
	ldr r4,[fp,#3864]                                 	@IRInst:assign	%t968	%t967
	ldr r4,[r4]                                       	@IRInst:assign	%t968	%t967
	str r4,[fp,#3868]                                 	@IRInst:assign	%t968	%t967
	mov r4,#1                                         	@IRInst:mul	%t969	1	%t968
	ldr r5,[fp,#3868]                                 	@IRInst:mul	%t969	1	%t968
	mul r6,r4,r5                                      	@IRInst:mul	%t969	1	%t968
	str r6,[fp,#3872]                                 	@IRInst:mul	%t969	1	%t968
	ldr r4,[fp,#4]                                    	@IRInst:add	%t970	ans	%t969
	ldr r5,[fp,#3872]                                 	@IRInst:add	%t970	ans	%t969
	add r6,r4,r5                                      	@IRInst:add	%t970	ans	%t969
	str r6,[fp,#3876]                                 	@IRInst:add	%t970	ans	%t969
	ldr r4,[fp,#3876]                                 	@IRInst:assign	ans	%t970
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t970
.L521:
.L522:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t971	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t971	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t971	x	2
	str r6,[fp,#3880]                                 	@IRInst:sdiv	%t971	x	2
	ldr r4,[fp,#3880]                                 	@IRInst:assign	x	%t971
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t971
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t972	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t972	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t972	y	2
	str r6,[fp,#3884]                                 	@IRInst:sdiv	%t972	y	2
	ldr r4,[fp,#3884]                                 	@IRInst:assign	y	%t972
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t972
	ldr r4,[fp,#8]                                    	@IRInst:add	%t973	i	1
	mov r5,#1                                         	@IRInst:add	%t973	i	1
	add r6,r4,r5                                      	@IRInst:add	%t973	i	1
	str r6,[fp,#3888]                                 	@IRInst:add	%t973	i	1
	ldr r4,[fp,#3888]                                 	@IRInst:assign	i	%t973
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t973
	b .L517                                           
.L519:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t974	ans
	str r4,[fp,#3892]                                 	@IRInst:assign	%t974	ans
	ldr r4,[fp,#3892]                                 	@IRInst:not_zero	%t975	%t974	0
	mov r5,#0                                         	@IRInst:not_zero	%t975	%t974	0
	cmp r4,r5                                         	@IRInst:not_zero	%t975	%t974	0
	moveq r6,#0                                       	@IRInst:not_zero	%t975	%t974	0
	movne r6,#1                                       	@IRInst:not_zero	%t975	%t974	0
	str r6,[fp,#3896]                                 	@IRInst:not_zero	%t975	%t974	0
	beq .L525                                         
	b .L524                                           
.L524:
	ldr r4,[fp,#3820]                                 	@IRInst:assign	al	mres
	str r4,[fp,#3900]                                 	@IRInst:assign	al	mres
	ldr r4,[fp,#3812]                                 	@IRInst:assign	c	ml
	str r4,[fp,#3904]                                 	@IRInst:assign	c	ml
.L527:
	ldr r4,[fp,#3904]                                 	@IRInst:assign	%t979	c
	str r4,[fp,#3912]                                 	@IRInst:assign	%t979	c
	ldr r4,[fp,#3912]                                 	@IRInst:not_zero	%t980	%t979	0
	mov r5,#0                                         	@IRInst:not_zero	%t980	%t979	0
	cmp r4,r5                                         	@IRInst:not_zero	%t980	%t979	0
	moveq r6,#0                                       	@IRInst:not_zero	%t980	%t979	0
	movne r6,#1                                       	@IRInst:not_zero	%t980	%t979	0
	str r6,[fp,#3916]                                 	@IRInst:not_zero	%t980	%t979	0
	beq .L529                                         
	b .L528                                           
.L528:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3900]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#3904]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L530:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t981	i	16
	mov r5,#16                                        	@IRInst:blt	%t981	i	16
	cmp r4,r5                                         	@IRInst:blt	%t981	i	16
	movlt r6,#1                                       	@IRInst:blt	%t981	i	16
	movge r6,#0                                       	@IRInst:blt	%t981	i	16
	str r6,[fp,#3920]                                 	@IRInst:blt	%t981	i	16
	blt .L531                                         
	b .L532                                           
.L531:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t983	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t983	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t983	x	2
	str r6,[fp,#3928]                                 	@IRInst:sdiv	%t983	x	2
	ldr r4,[fp,#3928]                                 	@IRInst:mul	%t984	%t983	2
	mov r5,#2                                         	@IRInst:mul	%t984	%t983	2
	mul r6,r4,r5                                      	@IRInst:mul	%t984	%t983	2
	str r6,[fp,#3932]                                 	@IRInst:mul	%t984	%t983	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t982	x	%t984
	ldr r5,[fp,#3932]                                 	@IRInst:sub	%t982	x	%t984
	sub r6,r4,r5                                      	@IRInst:sub	%t982	x	%t984
	str r6,[fp,#3924]                                 	@IRInst:sub	%t982	x	%t984
.L533:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t986	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t986	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t986	y	2
	str r6,[fp,#3940]                                 	@IRInst:sdiv	%t986	y	2
	ldr r4,[fp,#3940]                                 	@IRInst:mul	%t987	%t986	2
	mov r5,#2                                         	@IRInst:mul	%t987	%t986	2
	mul r6,r4,r5                                      	@IRInst:mul	%t987	%t986	2
	str r6,[fp,#3944]                                 	@IRInst:mul	%t987	%t986	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t985	y	%t987
	ldr r5,[fp,#3944]                                 	@IRInst:sub	%t985	y	%t987
	sub r6,r4,r5                                      	@IRInst:sub	%t985	y	%t987
	str r6,[fp,#3936]                                 	@IRInst:sub	%t985	y	%t987
	ldr r4,[fp,#3936]                                 	@IRInst:beq	%t988	%t985	0
	mov r5,#0                                         	@IRInst:beq	%t988	%t985	0
	cmp r4,r5                                         	@IRInst:beq	%t988	%t985	0
	moveq r6,#1                                       	@IRInst:beq	%t988	%t985	0
	movne r6,#0                                       	@IRInst:beq	%t988	%t985	0
	str r6,[fp,#3948]                                 	@IRInst:beq	%t988	%t985	0
	beq .L536                                         
	b .L537                                           
.L536:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t989	i	4
	mov r5,#4                                         	@IRInst:mul	%t989	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t989	i	4
	str r6,[fp,#3952]                                 	@IRInst:mul	%t989	i	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t990	SHIFT_TABLE	%t989
	ldr r5,[fp,#3952]                                 	@IRInst:add	%t990	SHIFT_TABLE	%t989
	add r6,r4,r5                                      	@IRInst:add	%t990	SHIFT_TABLE	%t989
	str r6,[fp,#3956]                                 	@IRInst:add	%t990	SHIFT_TABLE	%t989
	ldr r4,[fp,#3956]                                 	@IRInst:assign	%t991	%t990
	ldr r4,[r4]                                       	@IRInst:assign	%t991	%t990
	str r4,[fp,#3960]                                 	@IRInst:assign	%t991	%t990
	mov r4,#1                                         	@IRInst:mul	%t992	1	%t991
	ldr r5,[fp,#3960]                                 	@IRInst:mul	%t992	1	%t991
	mul r6,r4,r5                                      	@IRInst:mul	%t992	1	%t991
	str r6,[fp,#3964]                                 	@IRInst:mul	%t992	1	%t991
	ldr r4,[fp,#4]                                    	@IRInst:add	%t993	ans	%t992
	ldr r5,[fp,#3964]                                 	@IRInst:add	%t993	ans	%t992
	add r6,r4,r5                                      	@IRInst:add	%t993	ans	%t992
	str r6,[fp,#3968]                                 	@IRInst:add	%t993	ans	%t992
	ldr r4,[fp,#3968]                                 	@IRInst:assign	ans	%t993
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t993
.L537:
.L538:
	b .L535                                           
.L534:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t995	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t995	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t995	y	2
	str r6,[fp,#3976]                                 	@IRInst:sdiv	%t995	y	2
	ldr r4,[fp,#3976]                                 	@IRInst:mul	%t996	%t995	2
	mov r5,#2                                         	@IRInst:mul	%t996	%t995	2
	mul r6,r4,r5                                      	@IRInst:mul	%t996	%t995	2
	str r6,[fp,#3980]                                 	@IRInst:mul	%t996	%t995	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t994	y	%t996
	ldr r5,[fp,#3980]                                 	@IRInst:sub	%t994	y	%t996
	sub r6,r4,r5                                      	@IRInst:sub	%t994	y	%t996
	str r6,[fp,#3972]                                 	@IRInst:sub	%t994	y	%t996
.L539:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t997	i	4
	mov r5,#4                                         	@IRInst:mul	%t997	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t997	i	4
	str r6,[fp,#3984]                                 	@IRInst:mul	%t997	i	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t998	SHIFT_TABLE	%t997
	ldr r5,[fp,#3984]                                 	@IRInst:add	%t998	SHIFT_TABLE	%t997
	add r6,r4,r5                                      	@IRInst:add	%t998	SHIFT_TABLE	%t997
	str r6,[fp,#3988]                                 	@IRInst:add	%t998	SHIFT_TABLE	%t997
	ldr r4,[fp,#3988]                                 	@IRInst:assign	%t999	%t998
	ldr r4,[r4]                                       	@IRInst:assign	%t999	%t998
	str r4,[fp,#3992]                                 	@IRInst:assign	%t999	%t998
	mov r4,#1                                         	@IRInst:mul	%t1000	1	%t999
	ldr r5,[fp,#3992]                                 	@IRInst:mul	%t1000	1	%t999
	mul r6,r4,r5                                      	@IRInst:mul	%t1000	1	%t999
	str r6,[fp,#3996]                                 	@IRInst:mul	%t1000	1	%t999
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1001	ans	%t1000
	ldr r5,[fp,#3996]                                 	@IRInst:add	%t1001	ans	%t1000
	add r6,r4,r5                                      	@IRInst:add	%t1001	ans	%t1000
	str r6,[fp,#4000]                                 	@IRInst:add	%t1001	ans	%t1000
	ldr r4,[fp,#4000]                                 	@IRInst:assign	ans	%t1001
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1001
.L540:
.L541:
.L535:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1002	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1002	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1002	x	2
	str r6,[fp,#4004]                                 	@IRInst:sdiv	%t1002	x	2
	ldr r4,[fp,#4004]                                 	@IRInst:assign	x	%t1002
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1002
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1003	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1003	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1003	y	2
	str r6,[fp,#4008]                                 	@IRInst:sdiv	%t1003	y	2
	ldr r4,[fp,#4008]                                 	@IRInst:assign	y	%t1003
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1003
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1004	i	1
	mov r5,#1                                         	@IRInst:add	%t1004	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1004	i	1
	str r6,[fp,#4012]                                 	@IRInst:add	%t1004	i	1
	ldr r4,[fp,#4012]                                 	@IRInst:assign	i	%t1004
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1004
	b .L530                                           
.L532:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	str r4,[fp,#3908]                                 	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,[fp,#3900]                                 	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,[fp,#3904]                                 	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L542:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1005	i	16
	mov r5,#16                                        	@IRInst:blt	%t1005	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1005	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1005	i	16
	movge r6,#0                                       	@IRInst:blt	%t1005	i	16
	str r6,[fp,#4016]                                 	@IRInst:blt	%t1005	i	16
	blt .L543                                         
	b .L544                                           
.L543:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1007	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1007	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1007	x	2
	str r6,[fp,#4024]                                 	@IRInst:sdiv	%t1007	x	2
	ldr r4,[fp,#4024]                                 	@IRInst:mul	%t1008	%t1007	2
	mov r5,#2                                         	@IRInst:mul	%t1008	%t1007	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1008	%t1007	2
	str r6,[fp,#4028]                                 	@IRInst:mul	%t1008	%t1007	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1006	x	%t1008
	ldr r5,[fp,#4028]                                 	@IRInst:sub	%t1006	x	%t1008
	sub r6,r4,r5                                      	@IRInst:sub	%t1006	x	%t1008
	str r6,[fp,#4020]                                 	@IRInst:sub	%t1006	x	%t1008
.L548:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1010	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1010	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1010	y	2
	str r6,[fp,#4036]                                 	@IRInst:sdiv	%t1010	y	2
	ldr r4,[fp,#4036]                                 	@IRInst:mul	%t1011	%t1010	2
	mov r5,#2                                         	@IRInst:mul	%t1011	%t1010	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1011	%t1010	2
	str r6,[fp,#4040]                                 	@IRInst:mul	%t1011	%t1010	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1009	y	%t1011
	ldr r5,[fp,#4040]                                 	@IRInst:sub	%t1009	y	%t1011
	sub r6,r4,r5                                      	@IRInst:sub	%t1009	y	%t1011
	str r6,[fp,#4032]                                 	@IRInst:sub	%t1009	y	%t1011
.L545:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1012	i	4
	mov r5,#4                                         	@IRInst:mul	%t1012	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1012	i	4
	str r6,[fp,#4044]                                 	@IRInst:mul	%t1012	i	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t1013	SHIFT_TABLE	%t1012
	ldr r5,[fp,#4044]                                 	@IRInst:add	%t1013	SHIFT_TABLE	%t1012
	add r6,r4,r5                                      	@IRInst:add	%t1013	SHIFT_TABLE	%t1012
	str r6,[fp,#4048]                                 	@IRInst:add	%t1013	SHIFT_TABLE	%t1012
	ldr r4,[fp,#4048]                                 	@IRInst:assign	%t1014	%t1013
	ldr r4,[r4]                                       	@IRInst:assign	%t1014	%t1013
	str r4,[fp,#4052]                                 	@IRInst:assign	%t1014	%t1013
	mov r4,#1                                         	@IRInst:mul	%t1015	1	%t1014
	ldr r5,[fp,#4052]                                 	@IRInst:mul	%t1015	1	%t1014
	mul r6,r4,r5                                      	@IRInst:mul	%t1015	1	%t1014
	str r6,[fp,#4056]                                 	@IRInst:mul	%t1015	1	%t1014
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1016	ans	%t1015
	ldr r5,[fp,#4056]                                 	@IRInst:add	%t1016	ans	%t1015
	add r6,r4,r5                                      	@IRInst:add	%t1016	ans	%t1015
	str r6,[fp,#4060]                                 	@IRInst:add	%t1016	ans	%t1015
	ldr r4,[fp,#4060]                                 	@IRInst:assign	ans	%t1016
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1016
.L546:
.L547:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1017	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1017	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1017	x	2
	str r6,[fp,#4064]                                 	@IRInst:sdiv	%t1017	x	2
	ldr r4,[fp,#4064]                                 	@IRInst:assign	x	%t1017
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1017
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1018	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1018	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1018	y	2
	str r6,[fp,#4068]                                 	@IRInst:sdiv	%t1018	y	2
	ldr r4,[fp,#4068]                                 	@IRInst:assign	y	%t1018
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1018
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1019	i	1
	mov r5,#1                                         	@IRInst:add	%t1019	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1019	i	1
	str r6,[fp,#4072]                                 	@IRInst:add	%t1019	i	1
	ldr r4,[fp,#4072]                                 	@IRInst:assign	i	%t1019
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1019
	b .L542                                           
.L544:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#3904]                                 	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t1020	1	15
	mov r5,#15                                        	@IRInst:bgt	%t1020	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t1020	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t1020	1	15
	movle r6,#0                                       	@IRInst:bgt	%t1020	1	15
	str r6,[fp,#4076]                                 	@IRInst:bgt	%t1020	1	15
	bgt .L549                                         
	b .L550                                           
.L549:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L551                                           
.L550:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t1021	1	4
	mov r5,#4                                         	@IRInst:mul	%t1021	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1021	1	4
	str r6,[fp,#4080]                                 	@IRInst:mul	%t1021	1	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t1022	SHIFT_TABLE	%t1021
	ldr r5,[fp,#4080]                                 	@IRInst:add	%t1022	SHIFT_TABLE	%t1021
	add r6,r4,r5                                      	@IRInst:add	%t1022	SHIFT_TABLE	%t1021
	str r6,[fp,#4084]                                 	@IRInst:add	%t1022	SHIFT_TABLE	%t1021
	ldr r4,[fp,#4084]                                 	@IRInst:assign	%t1023	%t1022
	ldr r4,[r4]                                       	@IRInst:assign	%t1023	%t1022
	str r4,[fp,#4088]                                 	@IRInst:assign	%t1023	%t1022
	ldr r4,[fp,#3904]                                 	@IRInst:mul	%t1024	c	%t1023
	ldr r5,[fp,#4088]                                 	@IRInst:mul	%t1024	c	%t1023
	mul r6,r4,r5                                      	@IRInst:mul	%t1024	c	%t1023
	str r6,[fp,#4092]                                 	@IRInst:mul	%t1024	c	%t1023
	ldr r4,[fp,#4092]                                 	@IRInst:assign	x	%t1024
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1024
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L552:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1025	i	16
	mov r5,#16                                        	@IRInst:blt	%t1025	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1025	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1025	i	16
	movge r6,#0                                       	@IRInst:blt	%t1025	i	16
	mov r10,#4096                                     	@IRInst:blt	%t1025	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1025	i	16
	blt .L553                                         
	b .L554                                           
.L553:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1027	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1027	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1027	x	2
	ldr r5,=4104                                      	@IRInst:sdiv	%t1027	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1027	x	2
	ldr r4,=4104                                      	@IRInst:mul	%t1028	%t1027	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1028	%t1027	2
	mov r5,#2                                         	@IRInst:mul	%t1028	%t1027	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1028	%t1027	2
	ldr r5,=4108                                      	@IRInst:mul	%t1028	%t1027	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1028	%t1027	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1026	x	%t1028
	ldr r5,=4108                                      	@IRInst:sub	%t1026	x	%t1028
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1026	x	%t1028
	sub r6,r4,r5                                      	@IRInst:sub	%t1026	x	%t1028
	ldr r5,=4100                                      	@IRInst:sub	%t1026	x	%t1028
	str r6,[fp,r5]                                    	@IRInst:sub	%t1026	x	%t1028
.L558:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1030	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1030	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1030	y	2
	ldr r5,=4116                                      	@IRInst:sdiv	%t1030	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1030	y	2
	ldr r4,=4116                                      	@IRInst:mul	%t1031	%t1030	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1031	%t1030	2
	mov r5,#2                                         	@IRInst:mul	%t1031	%t1030	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1031	%t1030	2
	ldr r5,=4120                                      	@IRInst:mul	%t1031	%t1030	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1031	%t1030	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1029	y	%t1031
	ldr r5,=4120                                      	@IRInst:sub	%t1029	y	%t1031
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1029	y	%t1031
	sub r6,r4,r5                                      	@IRInst:sub	%t1029	y	%t1031
	ldr r5,=4112                                      	@IRInst:sub	%t1029	y	%t1031
	str r6,[fp,r5]                                    	@IRInst:sub	%t1029	y	%t1031
.L555:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1032	i	4
	mov r5,#4                                         	@IRInst:mul	%t1032	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1032	i	4
	ldr r5,=4124                                      	@IRInst:mul	%t1032	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1032	i	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t1033	SHIFT_TABLE	%t1032
	ldr r5,=4124                                      	@IRInst:add	%t1033	SHIFT_TABLE	%t1032
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1033	SHIFT_TABLE	%t1032
	add r6,r4,r5                                      	@IRInst:add	%t1033	SHIFT_TABLE	%t1032
	ldr r5,=4128                                      	@IRInst:add	%t1033	SHIFT_TABLE	%t1032
	str r6,[fp,r5]                                    	@IRInst:add	%t1033	SHIFT_TABLE	%t1032
	ldr r4,=4128                                      	@IRInst:assign	%t1034	%t1033
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1034	%t1033
	ldr r4,[r4]                                       	@IRInst:assign	%t1034	%t1033
	ldr r9,=4132                                      	@IRInst:assign	%t1034	%t1033
	str r4,[fp,r9]                                    	@IRInst:assign	%t1034	%t1033
	mov r4,#1                                         	@IRInst:mul	%t1035	1	%t1034
	ldr r5,=4132                                      	@IRInst:mul	%t1035	1	%t1034
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1035	1	%t1034
	mul r6,r4,r5                                      	@IRInst:mul	%t1035	1	%t1034
	ldr r5,=4136                                      	@IRInst:mul	%t1035	1	%t1034
	str r6,[fp,r5]                                    	@IRInst:mul	%t1035	1	%t1034
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1036	ans	%t1035
	ldr r5,=4136                                      	@IRInst:add	%t1036	ans	%t1035
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1036	ans	%t1035
	add r6,r4,r5                                      	@IRInst:add	%t1036	ans	%t1035
	ldr r5,=4140                                      	@IRInst:add	%t1036	ans	%t1035
	str r6,[fp,r5]                                    	@IRInst:add	%t1036	ans	%t1035
	ldr r4,=4140                                      	@IRInst:assign	ans	%t1036
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1036
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1036
.L556:
.L557:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1037	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1037	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1037	x	2
	ldr r5,=4144                                      	@IRInst:sdiv	%t1037	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1037	x	2
	ldr r4,=4144                                      	@IRInst:assign	x	%t1037
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1037
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1037
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1038	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1038	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1038	y	2
	ldr r5,=4148                                      	@IRInst:sdiv	%t1038	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1038	y	2
	ldr r4,=4148                                      	@IRInst:assign	y	%t1038
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1038
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1038
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1039	i	1
	mov r5,#1                                         	@IRInst:add	%t1039	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1039	i	1
	ldr r5,=4152                                      	@IRInst:add	%t1039	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1039	i	1
	ldr r4,=4152                                      	@IRInst:assign	i	%t1039
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1039
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1039
	b .L552                                           
.L554:
.L551:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	str r4,[fp,#3904]                                 	@IRInst:assign	c	ans
	ldr r4,[fp,#3908]                                 	@IRInst:assign	al	sum
	str r4,[fp,#3900]                                 	@IRInst:assign	al	sum
	b .L527                                           
.L529:
	ldr r4,[fp,#3900]                                 	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	mres	ans
	str r4,[fp,#3820]                                 	@IRInst:assign	mres	ans
.L525:
.L526:
	ldr r4,[fp,#3812]                                 	@IRInst:assign	al	ml
	ldr r9,=4156                                      	@IRInst:assign	al	ml
	str r4,[fp,r9]                                    	@IRInst:assign	al	ml
	ldr r4,[fp,#3812]                                 	@IRInst:assign	c	ml
	mov r9,#4160                                      	@IRInst:assign	c	ml
	str r4,[fp,r9]                                    	@IRInst:assign	c	ml
.L559:
	mov r4,#4160                                      	@IRInst:assign	%t1043	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1043	c
	ldr r9,=4168                                      	@IRInst:assign	%t1043	c
	str r4,[fp,r9]                                    	@IRInst:assign	%t1043	c
	ldr r4,=4168                                      	@IRInst:not_zero	%t1044	%t1043	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1044	%t1043	0
	mov r5,#0                                         	@IRInst:not_zero	%t1044	%t1043	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1044	%t1043	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1044	%t1043	0
	movne r6,#1                                       	@IRInst:not_zero	%t1044	%t1043	0
	ldr r10,=4172                                     	@IRInst:not_zero	%t1044	%t1043	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1044	%t1043	0
	beq .L561                                         
	b .L560                                           
.L560:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=4156                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	mov r4,#4160                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L562:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1045	i	16
	mov r5,#16                                        	@IRInst:blt	%t1045	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1045	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1045	i	16
	movge r6,#0                                       	@IRInst:blt	%t1045	i	16
	ldr r10,=4176                                     	@IRInst:blt	%t1045	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1045	i	16
	blt .L563                                         
	b .L564                                           
.L563:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1047	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1047	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1047	x	2
	ldr r5,=4184                                      	@IRInst:sdiv	%t1047	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1047	x	2
	ldr r4,=4184                                      	@IRInst:mul	%t1048	%t1047	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1048	%t1047	2
	mov r5,#2                                         	@IRInst:mul	%t1048	%t1047	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1048	%t1047	2
	ldr r5,=4188                                      	@IRInst:mul	%t1048	%t1047	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1048	%t1047	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1046	x	%t1048
	ldr r5,=4188                                      	@IRInst:sub	%t1046	x	%t1048
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1046	x	%t1048
	sub r6,r4,r5                                      	@IRInst:sub	%t1046	x	%t1048
	ldr r5,=4180                                      	@IRInst:sub	%t1046	x	%t1048
	str r6,[fp,r5]                                    	@IRInst:sub	%t1046	x	%t1048
.L565:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1050	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1050	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1050	y	2
	ldr r5,=4196                                      	@IRInst:sdiv	%t1050	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1050	y	2
	ldr r4,=4196                                      	@IRInst:mul	%t1051	%t1050	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1051	%t1050	2
	mov r5,#2                                         	@IRInst:mul	%t1051	%t1050	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1051	%t1050	2
	ldr r5,=4200                                      	@IRInst:mul	%t1051	%t1050	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1051	%t1050	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1049	y	%t1051
	ldr r5,=4200                                      	@IRInst:sub	%t1049	y	%t1051
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1049	y	%t1051
	sub r6,r4,r5                                      	@IRInst:sub	%t1049	y	%t1051
	ldr r5,=4192                                      	@IRInst:sub	%t1049	y	%t1051
	str r6,[fp,r5]                                    	@IRInst:sub	%t1049	y	%t1051
	ldr r4,=4192                                      	@IRInst:beq	%t1052	%t1049	0
	ldr r4,[fp,r4]                                    	@IRInst:beq	%t1052	%t1049	0
	mov r5,#0                                         	@IRInst:beq	%t1052	%t1049	0
	cmp r4,r5                                         	@IRInst:beq	%t1052	%t1049	0
	moveq r6,#1                                       	@IRInst:beq	%t1052	%t1049	0
	movne r6,#0                                       	@IRInst:beq	%t1052	%t1049	0
	ldr r10,=4204                                     	@IRInst:beq	%t1052	%t1049	0
	str r6,[fp,r10]                                   	@IRInst:beq	%t1052	%t1049	0
	beq .L568                                         
	b .L569                                           
.L568:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1053	i	4
	mov r5,#4                                         	@IRInst:mul	%t1053	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1053	i	4
	ldr r5,=4208                                      	@IRInst:mul	%t1053	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1053	i	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t1054	SHIFT_TABLE	%t1053
	ldr r5,=4208                                      	@IRInst:add	%t1054	SHIFT_TABLE	%t1053
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1054	SHIFT_TABLE	%t1053
	add r6,r4,r5                                      	@IRInst:add	%t1054	SHIFT_TABLE	%t1053
	ldr r5,=4212                                      	@IRInst:add	%t1054	SHIFT_TABLE	%t1053
	str r6,[fp,r5]                                    	@IRInst:add	%t1054	SHIFT_TABLE	%t1053
	ldr r4,=4212                                      	@IRInst:assign	%t1055	%t1054
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1055	%t1054
	ldr r4,[r4]                                       	@IRInst:assign	%t1055	%t1054
	ldr r9,=4216                                      	@IRInst:assign	%t1055	%t1054
	str r4,[fp,r9]                                    	@IRInst:assign	%t1055	%t1054
	mov r4,#1                                         	@IRInst:mul	%t1056	1	%t1055
	ldr r5,=4216                                      	@IRInst:mul	%t1056	1	%t1055
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1056	1	%t1055
	mul r6,r4,r5                                      	@IRInst:mul	%t1056	1	%t1055
	ldr r5,=4220                                      	@IRInst:mul	%t1056	1	%t1055
	str r6,[fp,r5]                                    	@IRInst:mul	%t1056	1	%t1055
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1057	ans	%t1056
	ldr r5,=4220                                      	@IRInst:add	%t1057	ans	%t1056
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1057	ans	%t1056
	add r6,r4,r5                                      	@IRInst:add	%t1057	ans	%t1056
	mov r5,#4224                                      	@IRInst:add	%t1057	ans	%t1056
	str r6,[fp,r5]                                    	@IRInst:add	%t1057	ans	%t1056
	mov r4,#4224                                      	@IRInst:assign	ans	%t1057
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1057
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1057
.L569:
.L570:
	b .L567                                           
.L566:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1059	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1059	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1059	y	2
	ldr r5,=4232                                      	@IRInst:sdiv	%t1059	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1059	y	2
	ldr r4,=4232                                      	@IRInst:mul	%t1060	%t1059	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1060	%t1059	2
	mov r5,#2                                         	@IRInst:mul	%t1060	%t1059	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1060	%t1059	2
	ldr r5,=4236                                      	@IRInst:mul	%t1060	%t1059	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1060	%t1059	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1058	y	%t1060
	ldr r5,=4236                                      	@IRInst:sub	%t1058	y	%t1060
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1058	y	%t1060
	sub r6,r4,r5                                      	@IRInst:sub	%t1058	y	%t1060
	ldr r5,=4228                                      	@IRInst:sub	%t1058	y	%t1060
	str r6,[fp,r5]                                    	@IRInst:sub	%t1058	y	%t1060
.L571:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1061	i	4
	mov r5,#4                                         	@IRInst:mul	%t1061	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1061	i	4
	ldr r5,=4240                                      	@IRInst:mul	%t1061	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1061	i	4
	ldr r4,.global_6_SHIFT_TABLE                      	@IRInst:add	%t1062	SHIFT_TABLE	%t1061
	ldr r5,=4240                                      	@IRInst:add	%t1062	SHIFT_TABLE	%t1061
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1062	SHIFT_TABLE	%t1061
	add r6,r4,r5                                      	@IRInst:add	%t1062	SHIFT_TABLE	%t1061
	ldr r5,=4244                                      	@IRInst:add	%t1062	SHIFT_TABLE	%t1061
	str r6,[fp,r5]                                    	@IRInst:add	%t1062	SHIFT_TABLE	%t1061
	ldr r4,=4244                                      	@IRInst:assign	%t1063	%t1062
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1063	%t1062
	ldr r4,[r4]                                       	@IRInst:assign	%t1063	%t1062
	ldr r9,=4248                                      	@IRInst:assign	%t1063	%t1062
	str r4,[fp,r9]                                    	@IRInst:assign	%t1063	%t1062
	mov r4,#1                                         	@IRInst:mul	%t1064	1	%t1063
	ldr r5,=4248                                      	@IRInst:mul	%t1064	1	%t1063
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1064	1	%t1063
	mul r6,r4,r5                                      	@IRInst:mul	%t1064	1	%t1063
	ldr r5,=4252                                      	@IRInst:mul	%t1064	1	%t1063
	str r6,[fp,r5]                                    	@IRInst:mul	%t1064	1	%t1063
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1065	ans	%t1064
	ldr r5,=4252                                      	@IRInst:add	%t1065	ans	%t1064
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1065	ans	%t1064
	add r6,r4,r5                                      	@IRInst:add	%t1065	ans	%t1064
	ldr r5,=4256                                      	@IRInst:add	%t1065	ans	%t1064
	str r6,[fp,r5]                                    	@IRInst:add	%t1065	ans	%t1064
	ldr r4,=4256                                      	@IRInst:assign	ans	%t1065
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1065
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1065
.L572:
.L573:
.L567:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1066	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1066	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1066	x	2
	ldr r5,=4260                                      	@IRInst:sdiv	%t1066	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1066	x	2
	ldr r4,=4260                                      	@IRInst:assign	x	%t1066
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1066
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1066
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1067	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1067	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1067	y	2
	ldr r5,=4264                                      	@IRInst:sdiv	%t1067	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1067	y	2
	ldr r4,=4264                                      	@IRInst:assign	y	%t1067
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1067
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1067
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1068	i	1
	mov r5,#1                                         	@IRInst:add	%t1068	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1068	i	1
	ldr r5,=4268                                      	@IRInst:add	%t1068	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1068	i	1
	ldr r4,=4268                                      	@IRInst:assign	i	%t1068
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1068
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1068
	b .L562                                           
.L564:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	ldr r9,=4164                                      	@IRInst:assign	sum	ans
	str r4,[fp,r9]                                    	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=4156                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	mov r4,#4160                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L574:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1069	i	16
	mov r5,#16                                        	@IRInst:blt	%t1069	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1069	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1069	i	16
	movge r6,#0                                       	@IRInst:blt	%t1069	i	16
	ldr r10,=4272                                     	@IRInst:blt	%t1069	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1069	i	16
	blt .L575                                         
	b .L576                                           
.L575:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1071	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1071	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1071	x	2
	ldr r5,=4280                                      	@IRInst:sdiv	%t1071	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1071	x	2
	ldr r4,=4280                                      	@IRInst:mul	%t1072	%t1071	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1072	%t1071	2
	mov r5,#2                                         	@IRInst:mul	%t1072	%t1071	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1072	%t1071	2
	ldr r5,=4284                                      	@IRInst:mul	%t1072	%t1071	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1072	%t1071	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1070	x	%t1072
	ldr r5,=4284                                      	@IRInst:sub	%t1070	x	%t1072
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1070	x	%t1072
	sub r6,r4,r5                                      	@IRInst:sub	%t1070	x	%t1072
	ldr r5,=4276                                      	@IRInst:sub	%t1070	x	%t1072
	str r6,[fp,r5]                                    	@IRInst:sub	%t1070	x	%t1072
.L580:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1074	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1074	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1074	y	2
	ldr r5,=4292                                      	@IRInst:sdiv	%t1074	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1074	y	2
	ldr r4,=4292                                      	@IRInst:mul	%t1075	%t1074	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1075	%t1074	2
	mov r5,#2                                         	@IRInst:mul	%t1075	%t1074	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1075	%t1074	2
	ldr r5,=4296                                      	@IRInst:mul	%t1075	%t1074	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1075	%t1074	2
.global_7_SHIFT_TABLE:
        .long   SHIFT_TABLE
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1073	y	%t1075
	ldr r5,=4296                                      	@IRInst:sub	%t1073	y	%t1075
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1073	y	%t1075
	sub r6,r4,r5                                      	@IRInst:sub	%t1073	y	%t1075
	mov r5,#4288                                      	@IRInst:sub	%t1073	y	%t1075
	str r6,[fp,r5]                                    	@IRInst:sub	%t1073	y	%t1075
.L577:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1076	i	4
	mov r5,#4                                         	@IRInst:mul	%t1076	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1076	i	4
	ldr r5,=4300                                      	@IRInst:mul	%t1076	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1076	i	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1077	SHIFT_TABLE	%t1076
	ldr r5,=4300                                      	@IRInst:add	%t1077	SHIFT_TABLE	%t1076
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1077	SHIFT_TABLE	%t1076
	add r6,r4,r5                                      	@IRInst:add	%t1077	SHIFT_TABLE	%t1076
	ldr r5,=4304                                      	@IRInst:add	%t1077	SHIFT_TABLE	%t1076
	str r6,[fp,r5]                                    	@IRInst:add	%t1077	SHIFT_TABLE	%t1076
	ldr r4,=4304                                      	@IRInst:assign	%t1078	%t1077
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1078	%t1077
	ldr r4,[r4]                                       	@IRInst:assign	%t1078	%t1077
	ldr r9,=4308                                      	@IRInst:assign	%t1078	%t1077
	str r4,[fp,r9]                                    	@IRInst:assign	%t1078	%t1077
	mov r4,#1                                         	@IRInst:mul	%t1079	1	%t1078
	ldr r5,=4308                                      	@IRInst:mul	%t1079	1	%t1078
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1079	1	%t1078
	mul r6,r4,r5                                      	@IRInst:mul	%t1079	1	%t1078
	ldr r5,=4312                                      	@IRInst:mul	%t1079	1	%t1078
	str r6,[fp,r5]                                    	@IRInst:mul	%t1079	1	%t1078
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1080	ans	%t1079
	ldr r5,=4312                                      	@IRInst:add	%t1080	ans	%t1079
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1080	ans	%t1079
	add r6,r4,r5                                      	@IRInst:add	%t1080	ans	%t1079
	ldr r5,=4316                                      	@IRInst:add	%t1080	ans	%t1079
	str r6,[fp,r5]                                    	@IRInst:add	%t1080	ans	%t1079
	ldr r4,=4316                                      	@IRInst:assign	ans	%t1080
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1080
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1080
.L578:
.L579:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1081	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1081	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1081	x	2
	ldr r5,=4320                                      	@IRInst:sdiv	%t1081	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1081	x	2
	ldr r4,=4320                                      	@IRInst:assign	x	%t1081
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1081
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1081
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1082	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1082	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1082	y	2
	ldr r5,=4324                                      	@IRInst:sdiv	%t1082	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1082	y	2
	ldr r4,=4324                                      	@IRInst:assign	y	%t1082
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1082
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1082
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1083	i	1
	mov r5,#1                                         	@IRInst:add	%t1083	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1083	i	1
	ldr r5,=4328                                      	@IRInst:add	%t1083	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1083	i	1
	ldr r4,=4328                                      	@IRInst:assign	i	%t1083
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1083
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1083
	b .L574                                           
.L576:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	mov r9,#4160                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t1084	1	15
	mov r5,#15                                        	@IRInst:bgt	%t1084	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t1084	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t1084	1	15
	movle r6,#0                                       	@IRInst:bgt	%t1084	1	15
	ldr r10,=4332                                     	@IRInst:bgt	%t1084	1	15
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1084	1	15
	bgt .L581                                         
	b .L582                                           
.L581:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L583                                           
.L582:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t1085	1	4
	mov r5,#4                                         	@IRInst:mul	%t1085	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1085	1	4
	ldr r5,=4336                                      	@IRInst:mul	%t1085	1	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1085	1	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1086	SHIFT_TABLE	%t1085
	ldr r5,=4336                                      	@IRInst:add	%t1086	SHIFT_TABLE	%t1085
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1086	SHIFT_TABLE	%t1085
	add r6,r4,r5                                      	@IRInst:add	%t1086	SHIFT_TABLE	%t1085
	ldr r5,=4340                                      	@IRInst:add	%t1086	SHIFT_TABLE	%t1085
	str r6,[fp,r5]                                    	@IRInst:add	%t1086	SHIFT_TABLE	%t1085
	ldr r4,=4340                                      	@IRInst:assign	%t1087	%t1086
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1087	%t1086
	ldr r4,[r4]                                       	@IRInst:assign	%t1087	%t1086
	ldr r9,=4344                                      	@IRInst:assign	%t1087	%t1086
	str r4,[fp,r9]                                    	@IRInst:assign	%t1087	%t1086
	mov r4,#4160                                      	@IRInst:mul	%t1088	c	%t1087
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1088	c	%t1087
	ldr r5,=4344                                      	@IRInst:mul	%t1088	c	%t1087
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1088	c	%t1087
	mul r6,r4,r5                                      	@IRInst:mul	%t1088	c	%t1087
	ldr r5,=4348                                      	@IRInst:mul	%t1088	c	%t1087
	str r6,[fp,r5]                                    	@IRInst:mul	%t1088	c	%t1087
	ldr r4,=4348                                      	@IRInst:assign	x	%t1088
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1088
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1088
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L584:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1089	i	16
	mov r5,#16                                        	@IRInst:blt	%t1089	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1089	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1089	i	16
	movge r6,#0                                       	@IRInst:blt	%t1089	i	16
	mov r10,#4352                                     	@IRInst:blt	%t1089	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1089	i	16
	blt .L585                                         
	b .L586                                           
.L585:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1091	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1091	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1091	x	2
	ldr r5,=4360                                      	@IRInst:sdiv	%t1091	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1091	x	2
	ldr r4,=4360                                      	@IRInst:mul	%t1092	%t1091	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1092	%t1091	2
	mov r5,#2                                         	@IRInst:mul	%t1092	%t1091	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1092	%t1091	2
	ldr r5,=4364                                      	@IRInst:mul	%t1092	%t1091	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1092	%t1091	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1090	x	%t1092
	ldr r5,=4364                                      	@IRInst:sub	%t1090	x	%t1092
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1090	x	%t1092
	sub r6,r4,r5                                      	@IRInst:sub	%t1090	x	%t1092
	ldr r5,=4356                                      	@IRInst:sub	%t1090	x	%t1092
	str r6,[fp,r5]                                    	@IRInst:sub	%t1090	x	%t1092
.L590:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1094	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1094	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1094	y	2
	ldr r5,=4372                                      	@IRInst:sdiv	%t1094	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1094	y	2
	ldr r4,=4372                                      	@IRInst:mul	%t1095	%t1094	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1095	%t1094	2
	mov r5,#2                                         	@IRInst:mul	%t1095	%t1094	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1095	%t1094	2
	ldr r5,=4376                                      	@IRInst:mul	%t1095	%t1094	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1095	%t1094	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1093	y	%t1095
	ldr r5,=4376                                      	@IRInst:sub	%t1093	y	%t1095
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1093	y	%t1095
	sub r6,r4,r5                                      	@IRInst:sub	%t1093	y	%t1095
	ldr r5,=4368                                      	@IRInst:sub	%t1093	y	%t1095
	str r6,[fp,r5]                                    	@IRInst:sub	%t1093	y	%t1095
.L587:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1096	i	4
	mov r5,#4                                         	@IRInst:mul	%t1096	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1096	i	4
	ldr r5,=4380                                      	@IRInst:mul	%t1096	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1096	i	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1097	SHIFT_TABLE	%t1096
	ldr r5,=4380                                      	@IRInst:add	%t1097	SHIFT_TABLE	%t1096
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1097	SHIFT_TABLE	%t1096
	add r6,r4,r5                                      	@IRInst:add	%t1097	SHIFT_TABLE	%t1096
	ldr r5,=4384                                      	@IRInst:add	%t1097	SHIFT_TABLE	%t1096
	str r6,[fp,r5]                                    	@IRInst:add	%t1097	SHIFT_TABLE	%t1096
	ldr r4,=4384                                      	@IRInst:assign	%t1098	%t1097
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1098	%t1097
	ldr r4,[r4]                                       	@IRInst:assign	%t1098	%t1097
	ldr r9,=4388                                      	@IRInst:assign	%t1098	%t1097
	str r4,[fp,r9]                                    	@IRInst:assign	%t1098	%t1097
	mov r4,#1                                         	@IRInst:mul	%t1099	1	%t1098
	ldr r5,=4388                                      	@IRInst:mul	%t1099	1	%t1098
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1099	1	%t1098
	mul r6,r4,r5                                      	@IRInst:mul	%t1099	1	%t1098
	ldr r5,=4392                                      	@IRInst:mul	%t1099	1	%t1098
	str r6,[fp,r5]                                    	@IRInst:mul	%t1099	1	%t1098
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1100	ans	%t1099
	ldr r5,=4392                                      	@IRInst:add	%t1100	ans	%t1099
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1100	ans	%t1099
	add r6,r4,r5                                      	@IRInst:add	%t1100	ans	%t1099
	ldr r5,=4396                                      	@IRInst:add	%t1100	ans	%t1099
	str r6,[fp,r5]                                    	@IRInst:add	%t1100	ans	%t1099
	ldr r4,=4396                                      	@IRInst:assign	ans	%t1100
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1100
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1100
.L588:
.L589:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1101	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1101	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1101	x	2
	ldr r5,=4400                                      	@IRInst:sdiv	%t1101	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1101	x	2
	ldr r4,=4400                                      	@IRInst:assign	x	%t1101
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1101
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1101
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1102	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1102	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1102	y	2
	ldr r5,=4404                                      	@IRInst:sdiv	%t1102	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1102	y	2
	ldr r4,=4404                                      	@IRInst:assign	y	%t1102
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1102
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1102
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1103	i	1
	mov r5,#1                                         	@IRInst:add	%t1103	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1103	i	1
	ldr r5,=4408                                      	@IRInst:add	%t1103	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1103	i	1
	ldr r4,=4408                                      	@IRInst:assign	i	%t1103
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1103
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1103
	b .L584                                           
.L586:
.L583:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	mov r9,#4160                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	ldr r4,=4164                                      	@IRInst:assign	al	sum
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	sum
	ldr r9,=4156                                      	@IRInst:assign	al	sum
	str r4,[fp,r9]                                    	@IRInst:assign	al	sum
	b .L559                                           
.L561:
	ldr r4,=4156                                      	@IRInst:assign	ans	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	ml	ans
	str r4,[fp,#3812]                                 	@IRInst:assign	ml	ans
	ldr r4,[fp,#3816]                                 	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t1104	y	15
	mov r5,#15                                        	@IRInst:bge	%t1104	y	15
	cmp r4,r5                                         	@IRInst:bge	%t1104	y	15
	movge r6,#1                                       	@IRInst:bge	%t1104	y	15
	movlt r6,#0                                       	@IRInst:bge	%t1104	y	15
	ldr r10,=4412                                     	@IRInst:bge	%t1104	y	15
	str r6,[fp,r10]                                   	@IRInst:bge	%t1104	y	15
	bge .L591                                         
	b .L592                                           
.L591:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t1105	x	0
	mov r5,#0                                         	@IRInst:blt	%t1105	x	0
	cmp r4,r5                                         	@IRInst:blt	%t1105	x	0
	movlt r6,#1                                       	@IRInst:blt	%t1105	x	0
	movge r6,#0                                       	@IRInst:blt	%t1105	x	0
	mov r10,#4416                                     	@IRInst:blt	%t1105	x	0
	str r6,[fp,r10]                                   	@IRInst:blt	%t1105	x	0
	blt .L594                                         
	b .L595                                           
.L594:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L596                                           
.L595:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L596:
	b .L593                                           
.L592:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t1106	y	0
	mov r5,#0                                         	@IRInst:bgt	%t1106	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t1106	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t1106	y	0
	movle r6,#0                                       	@IRInst:bgt	%t1106	y	0
	ldr r10,=4420                                     	@IRInst:bgt	%t1106	y	0
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1106	y	0
	bgt .L597                                         
	b .L598                                           
.L597:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t1107	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t1107	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t1107	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t1107	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t1107	x	32767
	ldr r10,=4424                                     	@IRInst:bgt	%t1107	x	32767
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1107	x	32767
	bgt .L600                                         
	b .L601                                           
.L600:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1108	y	4
	mov r5,#4                                         	@IRInst:mul	%t1108	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1108	y	4
	ldr r5,=4428                                      	@IRInst:mul	%t1108	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1108	y	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1109	SHIFT_TABLE	%t1108
	ldr r5,=4428                                      	@IRInst:add	%t1109	SHIFT_TABLE	%t1108
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1109	SHIFT_TABLE	%t1108
	add r6,r4,r5                                      	@IRInst:add	%t1109	SHIFT_TABLE	%t1108
	ldr r5,=4432                                      	@IRInst:add	%t1109	SHIFT_TABLE	%t1108
	str r6,[fp,r5]                                    	@IRInst:add	%t1109	SHIFT_TABLE	%t1108
	ldr r4,=4432                                      	@IRInst:assign	%t1110	%t1109
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1110	%t1109
	ldr r4,[r4]                                       	@IRInst:assign	%t1110	%t1109
	ldr r9,=4436                                      	@IRInst:assign	%t1110	%t1109
	str r4,[fp,r9]                                    	@IRInst:assign	%t1110	%t1109
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1111	x	%t1110
	ldr r5,=4436                                      	@IRInst:sdiv	%t1111	x	%t1110
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1111	x	%t1110
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1111	x	%t1110
	ldr r5,=4440                                      	@IRInst:sdiv	%t1111	x	%t1110
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1111	x	%t1110
	ldr r4,=4440                                      	@IRInst:assign	x	%t1111
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1111
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1111
	ldr r4,[fp,#12]                                   	@IRInst:add	%t1112	x	65536
	mov r5,#65536                                     	@IRInst:add	%t1112	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t1112	x	65536
	ldr r5,=4444                                      	@IRInst:add	%t1112	x	65536
	str r6,[fp,r5]                                    	@IRInst:add	%t1112	x	65536
	mov r4,#15                                        	@IRInst:sub	%t1114	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t1114	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t1114	15	y
	ldr r5,=4452                                      	@IRInst:sub	%t1114	15	y
	str r6,[fp,r5]                                    	@IRInst:sub	%t1114	15	y
	ldr r4,=4452                                      	@IRInst:add	%t1115	%t1114	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t1115	%t1114	1
	mov r5,#1                                         	@IRInst:add	%t1115	%t1114	1
	add r6,r4,r5                                      	@IRInst:add	%t1115	%t1114	1
	ldr r5,=4456                                      	@IRInst:add	%t1115	%t1114	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1115	%t1114	1
	ldr r4,=4456                                      	@IRInst:mul	%t1113	%t1115	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1113	%t1115	4
	mov r5,#4                                         	@IRInst:mul	%t1113	%t1115	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1113	%t1115	4
	ldr r5,=4448                                      	@IRInst:mul	%t1113	%t1115	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1113	%t1115	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1116	SHIFT_TABLE	%t1113
	ldr r5,=4448                                      	@IRInst:add	%t1116	SHIFT_TABLE	%t1113
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1116	SHIFT_TABLE	%t1113
	add r6,r4,r5                                      	@IRInst:add	%t1116	SHIFT_TABLE	%t1113
	ldr r5,=4460                                      	@IRInst:add	%t1116	SHIFT_TABLE	%t1113
	str r6,[fp,r5]                                    	@IRInst:add	%t1116	SHIFT_TABLE	%t1113
	ldr r4,=4460                                      	@IRInst:assign	%t1117	%t1116
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1117	%t1116
	ldr r4,[r4]                                       	@IRInst:assign	%t1117	%t1116
	ldr r9,=4464                                      	@IRInst:assign	%t1117	%t1116
	str r4,[fp,r9]                                    	@IRInst:assign	%t1117	%t1116
	ldr r4,=4444                                      	@IRInst:sub	%t1118	%t1112	%t1117
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t1118	%t1112	%t1117
	ldr r5,=4464                                      	@IRInst:sub	%t1118	%t1112	%t1117
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1118	%t1112	%t1117
	sub r6,r4,r5                                      	@IRInst:sub	%t1118	%t1112	%t1117
	ldr r5,=4468                                      	@IRInst:sub	%t1118	%t1112	%t1117
	str r6,[fp,r5]                                    	@IRInst:sub	%t1118	%t1112	%t1117
	ldr r4,=4468                                      	@IRInst:assign	ans	%t1118
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1118
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1118
	b .L602                                           
.L601:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1119	y	4
	mov r5,#4                                         	@IRInst:mul	%t1119	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1119	y	4
	ldr r5,=4472                                      	@IRInst:mul	%t1119	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1119	y	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1120	SHIFT_TABLE	%t1119
	ldr r5,=4472                                      	@IRInst:add	%t1120	SHIFT_TABLE	%t1119
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1120	SHIFT_TABLE	%t1119
	add r6,r4,r5                                      	@IRInst:add	%t1120	SHIFT_TABLE	%t1119
	ldr r5,=4476                                      	@IRInst:add	%t1120	SHIFT_TABLE	%t1119
	str r6,[fp,r5]                                    	@IRInst:add	%t1120	SHIFT_TABLE	%t1119
	ldr r4,=4476                                      	@IRInst:assign	%t1121	%t1120
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1121	%t1120
	ldr r4,[r4]                                       	@IRInst:assign	%t1121	%t1120
	mov r9,#4480                                      	@IRInst:assign	%t1121	%t1120
	str r4,[fp,r9]                                    	@IRInst:assign	%t1121	%t1120
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1122	x	%t1121
	mov r5,#4480                                      	@IRInst:sdiv	%t1122	x	%t1121
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1122	x	%t1121
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1122	x	%t1121
	ldr r5,=4484                                      	@IRInst:sdiv	%t1122	x	%t1121
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1122	x	%t1121
	ldr r4,=4484                                      	@IRInst:assign	ans	%t1122
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1122
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1122
.L602:
	b .L599                                           
.L598:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L599:
.L593:
	ldr r4,[fp,#4]                                    	@IRInst:assign	mr	ans
	str r4,[fp,#3816]                                 	@IRInst:assign	mr	ans
	b .L514                                           
.L516:
	ldr r4,[fp,#3820]                                 	@IRInst:assign	ans	mres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	mres
	ldr r4,[fp,#4]                                    	@IRInst:assign	pl	ans
	str r4,[fp,#3052]                                 	@IRInst:assign	pl	ans
	ldr r4,[fp,#3056]                                 	@IRInst:assign	x	pr
	str r4,[fp,#12]                                   	@IRInst:assign	x	pr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t1123	y	15
	mov r5,#15                                        	@IRInst:bge	%t1123	y	15
	cmp r4,r5                                         	@IRInst:bge	%t1123	y	15
	movge r6,#1                                       	@IRInst:bge	%t1123	y	15
	movlt r6,#0                                       	@IRInst:bge	%t1123	y	15
	ldr r10,=4488                                     	@IRInst:bge	%t1123	y	15
	str r6,[fp,r10]                                   	@IRInst:bge	%t1123	y	15
	bge .L603                                         
	b .L604                                           
.L603:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t1124	x	0
	mov r5,#0                                         	@IRInst:blt	%t1124	x	0
	cmp r4,r5                                         	@IRInst:blt	%t1124	x	0
	movlt r6,#1                                       	@IRInst:blt	%t1124	x	0
	movge r6,#0                                       	@IRInst:blt	%t1124	x	0
	ldr r10,=4492                                     	@IRInst:blt	%t1124	x	0
	str r6,[fp,r10]                                   	@IRInst:blt	%t1124	x	0
	blt .L606                                         
	b .L607                                           
.L606:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L608                                           
.L607:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L608:
	b .L605                                           
.L604:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t1125	y	0
	mov r5,#0                                         	@IRInst:bgt	%t1125	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t1125	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t1125	y	0
	movle r6,#0                                       	@IRInst:bgt	%t1125	y	0
	ldr r10,=4496                                     	@IRInst:bgt	%t1125	y	0
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1125	y	0
	bgt .L609                                         
	b .L610                                           
.L609:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t1126	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t1126	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t1126	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t1126	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t1126	x	32767
	ldr r10,=4500                                     	@IRInst:bgt	%t1126	x	32767
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1126	x	32767
	bgt .L612                                         
	b .L613                                           
.L612:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1127	y	4
	mov r5,#4                                         	@IRInst:mul	%t1127	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1127	y	4
	ldr r5,=4504                                      	@IRInst:mul	%t1127	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1127	y	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1128	SHIFT_TABLE	%t1127
	ldr r5,=4504                                      	@IRInst:add	%t1128	SHIFT_TABLE	%t1127
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1128	SHIFT_TABLE	%t1127
	add r6,r4,r5                                      	@IRInst:add	%t1128	SHIFT_TABLE	%t1127
	ldr r5,=4508                                      	@IRInst:add	%t1128	SHIFT_TABLE	%t1127
	str r6,[fp,r5]                                    	@IRInst:add	%t1128	SHIFT_TABLE	%t1127
	ldr r4,=4508                                      	@IRInst:assign	%t1129	%t1128
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1129	%t1128
	ldr r4,[r4]                                       	@IRInst:assign	%t1129	%t1128
	ldr r9,=4512                                      	@IRInst:assign	%t1129	%t1128
	str r4,[fp,r9]                                    	@IRInst:assign	%t1129	%t1128
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1130	x	%t1129
	ldr r5,=4512                                      	@IRInst:sdiv	%t1130	x	%t1129
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1130	x	%t1129
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1130	x	%t1129
	ldr r5,=4516                                      	@IRInst:sdiv	%t1130	x	%t1129
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1130	x	%t1129
	ldr r4,=4516                                      	@IRInst:assign	x	%t1130
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1130
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1130
	ldr r4,[fp,#12]                                   	@IRInst:add	%t1131	x	65536
	mov r5,#65536                                     	@IRInst:add	%t1131	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t1131	x	65536
	ldr r5,=4520                                      	@IRInst:add	%t1131	x	65536
	str r6,[fp,r5]                                    	@IRInst:add	%t1131	x	65536
	mov r4,#15                                        	@IRInst:sub	%t1133	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t1133	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t1133	15	y
	ldr r5,=4528                                      	@IRInst:sub	%t1133	15	y
	str r6,[fp,r5]                                    	@IRInst:sub	%t1133	15	y
	ldr r4,=4528                                      	@IRInst:add	%t1134	%t1133	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t1134	%t1133	1
	mov r5,#1                                         	@IRInst:add	%t1134	%t1133	1
	add r6,r4,r5                                      	@IRInst:add	%t1134	%t1133	1
	ldr r5,=4532                                      	@IRInst:add	%t1134	%t1133	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1134	%t1133	1
	ldr r4,=4532                                      	@IRInst:mul	%t1132	%t1134	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1132	%t1134	4
	mov r5,#4                                         	@IRInst:mul	%t1132	%t1134	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1132	%t1134	4
	ldr r5,=4524                                      	@IRInst:mul	%t1132	%t1134	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1132	%t1134	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1135	SHIFT_TABLE	%t1132
	ldr r5,=4524                                      	@IRInst:add	%t1135	SHIFT_TABLE	%t1132
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1135	SHIFT_TABLE	%t1132
	add r6,r4,r5                                      	@IRInst:add	%t1135	SHIFT_TABLE	%t1132
	ldr r5,=4536                                      	@IRInst:add	%t1135	SHIFT_TABLE	%t1132
	str r6,[fp,r5]                                    	@IRInst:add	%t1135	SHIFT_TABLE	%t1132
	ldr r4,=4536                                      	@IRInst:assign	%t1136	%t1135
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1136	%t1135
	ldr r4,[r4]                                       	@IRInst:assign	%t1136	%t1135
	ldr r9,=4540                                      	@IRInst:assign	%t1136	%t1135
	str r4,[fp,r9]                                    	@IRInst:assign	%t1136	%t1135
	ldr r4,=4520                                      	@IRInst:sub	%t1137	%t1131	%t1136
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t1137	%t1131	%t1136
	ldr r5,=4540                                      	@IRInst:sub	%t1137	%t1131	%t1136
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1137	%t1131	%t1136
	sub r6,r4,r5                                      	@IRInst:sub	%t1137	%t1131	%t1136
	mov r5,#4544                                      	@IRInst:sub	%t1137	%t1131	%t1136
	str r6,[fp,r5]                                    	@IRInst:sub	%t1137	%t1131	%t1136
	mov r4,#4544                                      	@IRInst:assign	ans	%t1137
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1137
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1137
	b .L614                                           
.L613:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1138	y	4
	mov r5,#4                                         	@IRInst:mul	%t1138	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1138	y	4
	ldr r5,=4548                                      	@IRInst:mul	%t1138	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1138	y	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1139	SHIFT_TABLE	%t1138
	ldr r5,=4548                                      	@IRInst:add	%t1139	SHIFT_TABLE	%t1138
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1139	SHIFT_TABLE	%t1138
	add r6,r4,r5                                      	@IRInst:add	%t1139	SHIFT_TABLE	%t1138
	ldr r5,=4552                                      	@IRInst:add	%t1139	SHIFT_TABLE	%t1138
	str r6,[fp,r5]                                    	@IRInst:add	%t1139	SHIFT_TABLE	%t1138
	ldr r4,=4552                                      	@IRInst:assign	%t1140	%t1139
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1140	%t1139
	ldr r4,[r4]                                       	@IRInst:assign	%t1140	%t1139
	ldr r9,=4556                                      	@IRInst:assign	%t1140	%t1139
	str r4,[fp,r9]                                    	@IRInst:assign	%t1140	%t1139
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1141	x	%t1140
	ldr r5,=4556                                      	@IRInst:sdiv	%t1141	x	%t1140
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1141	x	%t1140
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1141	x	%t1140
	ldr r5,=4560                                      	@IRInst:sdiv	%t1141	x	%t1140
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1141	x	%t1140
	ldr r4,=4560                                      	@IRInst:assign	ans	%t1141
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1141
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1141
.L614:
	b .L611                                           
.L610:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L611:
.L605:
	ldr r4,[fp,#4]                                    	@IRInst:assign	pr	ans
	str r4,[fp,#3056]                                 	@IRInst:assign	pr	ans
	b .L412                                           
.L414:
	ldr r4,[fp,#3060]                                 	@IRInst:assign	ans	pres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	pres
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	ans
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,[fp,#20]                                   	@IRInst:add	%t1142	cur	1
	mov r5,#1                                         	@IRInst:add	%t1142	cur	1
	add r6,r4,r5                                      	@IRInst:add	%t1142	cur	1
	ldr r5,=4564                                      	@IRInst:add	%t1142	cur	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1142	cur	1
	ldr r4,=4564                                      	@IRInst:assign	cur	%t1142
	ldr r4,[fp,r4]                                    	@IRInst:assign	cur	%t1142
	str r4,[fp,#20]                                   	@IRInst:assign	cur	%t1142
	b .L409                                           
.L411:
	mov r4,#0                                         	@IRInst:assign	cur	0
	str r4,[fp,#20]                                   	@IRInst:assign	cur	0
.L615:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t1143	cur	16
	mov r5,#16                                        	@IRInst:blt	%t1143	cur	16
	cmp r4,r5                                         	@IRInst:blt	%t1143	cur	16
	movlt r6,#1                                       	@IRInst:blt	%t1143	cur	16
	movge r6,#0                                       	@IRInst:blt	%t1143	cur	16
	ldr r10,=4568                                     	@IRInst:blt	%t1143	cur	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1143	cur	16
	blt .L616                                         
	b .L617                                           
.L616:
	mov r4,#2                                         	@IRInst:assign	pl	2
	ldr r9,=4572                                      	@IRInst:assign	pl	2
	str r4,[fp,r9]                                    	@IRInst:assign	pl	2
	ldr r4,[fp,#20]                                   	@IRInst:assign	pr	cur
	ldr r9,=4576                                      	@IRInst:assign	pr	cur
	str r4,[fp,r9]                                    	@IRInst:assign	pr	cur
	mov r4,#1                                         	@IRInst:assign	pres	1
	ldr r9,=4580                                      	@IRInst:assign	pres	1
	str r4,[fp,r9]                                    	@IRInst:assign	pres	1
.L618:
	ldr r4,=4576                                      	@IRInst:bgt	%t1147	pr	0
	ldr r4,[fp,r4]                                    	@IRInst:bgt	%t1147	pr	0
	mov r5,#0                                         	@IRInst:bgt	%t1147	pr	0
	cmp r4,r5                                         	@IRInst:bgt	%t1147	pr	0
	movgt r6,#1                                       	@IRInst:bgt	%t1147	pr	0
	movle r6,#0                                       	@IRInst:bgt	%t1147	pr	0
	ldr r10,=4584                                     	@IRInst:bgt	%t1147	pr	0
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1147	pr	0
	bgt .L619                                         
	b .L620                                           
.L619:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=4576                                      	@IRInst:assign	x	pr
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	pr
	str r4,[fp,#12]                                   	@IRInst:assign	x	pr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L621:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1148	i	16
	mov r5,#16                                        	@IRInst:blt	%t1148	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1148	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1148	i	16
	movge r6,#0                                       	@IRInst:blt	%t1148	i	16
	ldr r10,=4588                                     	@IRInst:blt	%t1148	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1148	i	16
	blt .L622                                         
	b .L623                                           
.L622:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1150	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1150	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1150	x	2
	ldr r5,=4596                                      	@IRInst:sdiv	%t1150	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1150	x	2
	ldr r4,=4596                                      	@IRInst:mul	%t1151	%t1150	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1151	%t1150	2
	mov r5,#2                                         	@IRInst:mul	%t1151	%t1150	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1151	%t1150	2
	ldr r5,=4600                                      	@IRInst:mul	%t1151	%t1150	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1151	%t1150	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1149	x	%t1151
	ldr r5,=4600                                      	@IRInst:sub	%t1149	x	%t1151
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1149	x	%t1151
	sub r6,r4,r5                                      	@IRInst:sub	%t1149	x	%t1151
	ldr r5,=4592                                      	@IRInst:sub	%t1149	x	%t1151
	str r6,[fp,r5]                                    	@IRInst:sub	%t1149	x	%t1151
.L627:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1153	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1153	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1153	y	2
	mov r5,#4608                                      	@IRInst:sdiv	%t1153	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1153	y	2
	mov r4,#4608                                      	@IRInst:mul	%t1154	%t1153	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1154	%t1153	2
	mov r5,#2                                         	@IRInst:mul	%t1154	%t1153	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1154	%t1153	2
	ldr r5,=4612                                      	@IRInst:mul	%t1154	%t1153	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1154	%t1153	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1152	y	%t1154
	ldr r5,=4612                                      	@IRInst:sub	%t1152	y	%t1154
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1152	y	%t1154
	sub r6,r4,r5                                      	@IRInst:sub	%t1152	y	%t1154
	ldr r5,=4604                                      	@IRInst:sub	%t1152	y	%t1154
	str r6,[fp,r5]                                    	@IRInst:sub	%t1152	y	%t1154
.L624:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1155	i	4
	mov r5,#4                                         	@IRInst:mul	%t1155	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1155	i	4
	ldr r5,=4616                                      	@IRInst:mul	%t1155	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1155	i	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1156	SHIFT_TABLE	%t1155
	ldr r5,=4616                                      	@IRInst:add	%t1156	SHIFT_TABLE	%t1155
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1156	SHIFT_TABLE	%t1155
	add r6,r4,r5                                      	@IRInst:add	%t1156	SHIFT_TABLE	%t1155
	ldr r5,=4620                                      	@IRInst:add	%t1156	SHIFT_TABLE	%t1155
	str r6,[fp,r5]                                    	@IRInst:add	%t1156	SHIFT_TABLE	%t1155
	ldr r4,=4620                                      	@IRInst:assign	%t1157	%t1156
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1157	%t1156
	ldr r4,[r4]                                       	@IRInst:assign	%t1157	%t1156
	ldr r9,=4624                                      	@IRInst:assign	%t1157	%t1156
	str r4,[fp,r9]                                    	@IRInst:assign	%t1157	%t1156
	mov r4,#1                                         	@IRInst:mul	%t1158	1	%t1157
	ldr r5,=4624                                      	@IRInst:mul	%t1158	1	%t1157
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1158	1	%t1157
	mul r6,r4,r5                                      	@IRInst:mul	%t1158	1	%t1157
	ldr r5,=4628                                      	@IRInst:mul	%t1158	1	%t1157
	str r6,[fp,r5]                                    	@IRInst:mul	%t1158	1	%t1157
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1159	ans	%t1158
	ldr r5,=4628                                      	@IRInst:add	%t1159	ans	%t1158
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1159	ans	%t1158
	add r6,r4,r5                                      	@IRInst:add	%t1159	ans	%t1158
	ldr r5,=4632                                      	@IRInst:add	%t1159	ans	%t1158
	str r6,[fp,r5]                                    	@IRInst:add	%t1159	ans	%t1158
	ldr r4,=4632                                      	@IRInst:assign	ans	%t1159
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1159
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1159
.L625:
.L626:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1160	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1160	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1160	x	2
	ldr r5,=4636                                      	@IRInst:sdiv	%t1160	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1160	x	2
	ldr r4,=4636                                      	@IRInst:assign	x	%t1160
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1160
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1160
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1161	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1161	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1161	y	2
	ldr r5,=4640                                      	@IRInst:sdiv	%t1161	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1161	y	2
	ldr r4,=4640                                      	@IRInst:assign	y	%t1161
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1161
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1161
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1162	i	1
	mov r5,#1                                         	@IRInst:add	%t1162	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1162	i	1
	ldr r5,=4644                                      	@IRInst:add	%t1162	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1162	i	1
	ldr r4,=4644                                      	@IRInst:assign	i	%t1162
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1162
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1162
	b .L621                                           
.L623:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t1163	ans
	ldr r9,=4648                                      	@IRInst:assign	%t1163	ans
	str r4,[fp,r9]                                    	@IRInst:assign	%t1163	ans
	ldr r4,=4648                                      	@IRInst:not_zero	%t1164	%t1163	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1164	%t1163	0
	mov r5,#0                                         	@IRInst:not_zero	%t1164	%t1163	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1164	%t1163	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1164	%t1163	0
	movne r6,#1                                       	@IRInst:not_zero	%t1164	%t1163	0
	ldr r10,=4652                                     	@IRInst:not_zero	%t1164	%t1163	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1164	%t1163	0
	beq .L629                                         
	b .L628                                           
.L628:
	ldr r4,=4580                                      	@IRInst:assign	ml	pres
	ldr r4,[fp,r4]                                    	@IRInst:assign	ml	pres
	ldr r9,=4656                                      	@IRInst:assign	ml	pres
	str r4,[fp,r9]                                    	@IRInst:assign	ml	pres
	ldr r4,=4572                                      	@IRInst:assign	mr	pl
	ldr r4,[fp,r4]                                    	@IRInst:assign	mr	pl
	ldr r9,=4660                                      	@IRInst:assign	mr	pl
	str r4,[fp,r9]                                    	@IRInst:assign	mr	pl
	mov r4,#0                                         	@IRInst:assign	mres	0
	ldr r9,=4664                                      	@IRInst:assign	mres	0
	str r4,[fp,r9]                                    	@IRInst:assign	mres	0
.L631:
	ldr r4,=4660                                      	@IRInst:assign	%t1168	mr
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1168	mr
	ldr r9,=4668                                      	@IRInst:assign	%t1168	mr
	str r4,[fp,r9]                                    	@IRInst:assign	%t1168	mr
	ldr r4,=4668                                      	@IRInst:not_zero	%t1169	%t1168	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1169	%t1168	0
	mov r5,#0                                         	@IRInst:not_zero	%t1169	%t1168	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1169	%t1168	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1169	%t1168	0
	movne r6,#1                                       	@IRInst:not_zero	%t1169	%t1168	0
	mov r10,#4672                                     	@IRInst:not_zero	%t1169	%t1168	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1169	%t1168	0
	beq .L633                                         
	b .L632                                           
.L632:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=4660                                      	@IRInst:assign	x	mr
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L634:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1170	i	16
	mov r5,#16                                        	@IRInst:blt	%t1170	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1170	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1170	i	16
	movge r6,#0                                       	@IRInst:blt	%t1170	i	16
	ldr r10,=4676                                     	@IRInst:blt	%t1170	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1170	i	16
	blt .L635                                         
	b .L636                                           
.L635:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1172	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1172	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1172	x	2
	ldr r5,=4684                                      	@IRInst:sdiv	%t1172	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1172	x	2
	ldr r4,=4684                                      	@IRInst:mul	%t1173	%t1172	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1173	%t1172	2
	mov r5,#2                                         	@IRInst:mul	%t1173	%t1172	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1173	%t1172	2
	ldr r5,=4688                                      	@IRInst:mul	%t1173	%t1172	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1173	%t1172	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1171	x	%t1173
	ldr r5,=4688                                      	@IRInst:sub	%t1171	x	%t1173
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1171	x	%t1173
	sub r6,r4,r5                                      	@IRInst:sub	%t1171	x	%t1173
	ldr r5,=4680                                      	@IRInst:sub	%t1171	x	%t1173
	str r6,[fp,r5]                                    	@IRInst:sub	%t1171	x	%t1173
.L640:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1175	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1175	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1175	y	2
	ldr r5,=4696                                      	@IRInst:sdiv	%t1175	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1175	y	2
	ldr r4,=4696                                      	@IRInst:mul	%t1176	%t1175	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1176	%t1175	2
	mov r5,#2                                         	@IRInst:mul	%t1176	%t1175	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1176	%t1175	2
	ldr r5,=4700                                      	@IRInst:mul	%t1176	%t1175	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1176	%t1175	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1174	y	%t1176
	ldr r5,=4700                                      	@IRInst:sub	%t1174	y	%t1176
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1174	y	%t1176
	sub r6,r4,r5                                      	@IRInst:sub	%t1174	y	%t1176
	ldr r5,=4692                                      	@IRInst:sub	%t1174	y	%t1176
	str r6,[fp,r5]                                    	@IRInst:sub	%t1174	y	%t1176
.L637:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1177	i	4
	mov r5,#4                                         	@IRInst:mul	%t1177	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1177	i	4
	ldr r5,=4704                                      	@IRInst:mul	%t1177	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1177	i	4
	ldr r4,.global_7_SHIFT_TABLE                      	@IRInst:add	%t1178	SHIFT_TABLE	%t1177
	ldr r5,=4704                                      	@IRInst:add	%t1178	SHIFT_TABLE	%t1177
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1178	SHIFT_TABLE	%t1177
	add r6,r4,r5                                      	@IRInst:add	%t1178	SHIFT_TABLE	%t1177
	ldr r5,=4708                                      	@IRInst:add	%t1178	SHIFT_TABLE	%t1177
	str r6,[fp,r5]                                    	@IRInst:add	%t1178	SHIFT_TABLE	%t1177
	ldr r4,=4708                                      	@IRInst:assign	%t1179	%t1178
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1179	%t1178
	ldr r4,[r4]                                       	@IRInst:assign	%t1179	%t1178
	ldr r9,=4712                                      	@IRInst:assign	%t1179	%t1178
	str r4,[fp,r9]                                    	@IRInst:assign	%t1179	%t1178
	mov r4,#1                                         	@IRInst:mul	%t1180	1	%t1179
	ldr r5,=4712                                      	@IRInst:mul	%t1180	1	%t1179
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1180	1	%t1179
	mul r6,r4,r5                                      	@IRInst:mul	%t1180	1	%t1179
	ldr r5,=4716                                      	@IRInst:mul	%t1180	1	%t1179
	str r6,[fp,r5]                                    	@IRInst:mul	%t1180	1	%t1179
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1181	ans	%t1180
	ldr r5,=4716                                      	@IRInst:add	%t1181	ans	%t1180
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1181	ans	%t1180
	add r6,r4,r5                                      	@IRInst:add	%t1181	ans	%t1180
	ldr r5,=4720                                      	@IRInst:add	%t1181	ans	%t1180
	str r6,[fp,r5]                                    	@IRInst:add	%t1181	ans	%t1180
	ldr r4,=4720                                      	@IRInst:assign	ans	%t1181
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1181
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1181
.L638:
.L639:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1182	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1182	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1182	x	2
	ldr r5,=4724                                      	@IRInst:sdiv	%t1182	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1182	x	2
	ldr r4,=4724                                      	@IRInst:assign	x	%t1182
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1182
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1182
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1183	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1183	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1183	y	2
	ldr r5,=4728                                      	@IRInst:sdiv	%t1183	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1183	y	2
	ldr r4,=4728                                      	@IRInst:assign	y	%t1183
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1183
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1183
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1184	i	1
	mov r5,#1                                         	@IRInst:add	%t1184	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1184	i	1
	ldr r5,=4732                                      	@IRInst:add	%t1184	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1184	i	1
	ldr r4,=4732                                      	@IRInst:assign	i	%t1184
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1184
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1184
	b .L634                                           
.L636:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t1185	ans
	mov r9,#4736                                      	@IRInst:assign	%t1185	ans
	str r4,[fp,r9]                                    	@IRInst:assign	%t1185	ans
	mov r4,#4736                                      	@IRInst:not_zero	%t1186	%t1185	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1186	%t1185	0
	mov r5,#0                                         	@IRInst:not_zero	%t1186	%t1185	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1186	%t1185	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1186	%t1185	0
	movne r6,#1                                       	@IRInst:not_zero	%t1186	%t1185	0
	ldr r10,=4740                                     	@IRInst:not_zero	%t1186	%t1185	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1186	%t1185	0
	beq .L642                                         
	b .L641                                           
.L641:
	ldr r4,=4664                                      	@IRInst:assign	al	mres
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	mres
	ldr r9,=4744                                      	@IRInst:assign	al	mres
	str r4,[fp,r9]                                    	@IRInst:assign	al	mres
.global_8_SHIFT_TABLE:
        .long   SHIFT_TABLE
	ldr r4,=4656                                      	@IRInst:assign	c	ml
	ldr r4,[fp,r4]                                    	@IRInst:assign	c	ml
	ldr r9,=4748                                      	@IRInst:assign	c	ml
	str r4,[fp,r9]                                    	@IRInst:assign	c	ml
.L644:
	ldr r4,=4748                                      	@IRInst:assign	%t1190	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1190	c
	ldr r9,=4756                                      	@IRInst:assign	%t1190	c
	str r4,[fp,r9]                                    	@IRInst:assign	%t1190	c
	ldr r4,=4756                                      	@IRInst:not_zero	%t1191	%t1190	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1191	%t1190	0
	mov r5,#0                                         	@IRInst:not_zero	%t1191	%t1190	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1191	%t1190	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1191	%t1190	0
	movne r6,#1                                       	@IRInst:not_zero	%t1191	%t1190	0
	ldr r10,=4760                                     	@IRInst:not_zero	%t1191	%t1190	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1191	%t1190	0
	beq .L646                                         
	b .L645                                           
.L645:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=4744                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,=4748                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L647:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1192	i	16
	mov r5,#16                                        	@IRInst:blt	%t1192	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1192	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1192	i	16
	movge r6,#0                                       	@IRInst:blt	%t1192	i	16
	ldr r10,=4764                                     	@IRInst:blt	%t1192	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1192	i	16
	blt .L648                                         
	b .L649                                           
.L648:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1194	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1194	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1194	x	2
	ldr r5,=4772                                      	@IRInst:sdiv	%t1194	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1194	x	2
	ldr r4,=4772                                      	@IRInst:mul	%t1195	%t1194	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1195	%t1194	2
	mov r5,#2                                         	@IRInst:mul	%t1195	%t1194	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1195	%t1194	2
	ldr r5,=4776                                      	@IRInst:mul	%t1195	%t1194	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1195	%t1194	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1193	x	%t1195
	ldr r5,=4776                                      	@IRInst:sub	%t1193	x	%t1195
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1193	x	%t1195
	sub r6,r4,r5                                      	@IRInst:sub	%t1193	x	%t1195
	ldr r5,=4768                                      	@IRInst:sub	%t1193	x	%t1195
	str r6,[fp,r5]                                    	@IRInst:sub	%t1193	x	%t1195
.L650:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1197	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1197	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1197	y	2
	ldr r5,=4784                                      	@IRInst:sdiv	%t1197	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1197	y	2
	ldr r4,=4784                                      	@IRInst:mul	%t1198	%t1197	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1198	%t1197	2
	mov r5,#2                                         	@IRInst:mul	%t1198	%t1197	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1198	%t1197	2
	ldr r5,=4788                                      	@IRInst:mul	%t1198	%t1197	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1198	%t1197	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1196	y	%t1198
	ldr r5,=4788                                      	@IRInst:sub	%t1196	y	%t1198
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1196	y	%t1198
	sub r6,r4,r5                                      	@IRInst:sub	%t1196	y	%t1198
	ldr r5,=4780                                      	@IRInst:sub	%t1196	y	%t1198
	str r6,[fp,r5]                                    	@IRInst:sub	%t1196	y	%t1198
	ldr r4,=4780                                      	@IRInst:beq	%t1199	%t1196	0
	ldr r4,[fp,r4]                                    	@IRInst:beq	%t1199	%t1196	0
	mov r5,#0                                         	@IRInst:beq	%t1199	%t1196	0
	cmp r4,r5                                         	@IRInst:beq	%t1199	%t1196	0
	moveq r6,#1                                       	@IRInst:beq	%t1199	%t1196	0
	movne r6,#0                                       	@IRInst:beq	%t1199	%t1196	0
	ldr r10,=4792                                     	@IRInst:beq	%t1199	%t1196	0
	str r6,[fp,r10]                                   	@IRInst:beq	%t1199	%t1196	0
	beq .L653                                         
	b .L654                                           
.L653:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1200	i	4
	mov r5,#4                                         	@IRInst:mul	%t1200	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1200	i	4
	ldr r5,=4796                                      	@IRInst:mul	%t1200	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1200	i	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1201	SHIFT_TABLE	%t1200
	ldr r5,=4796                                      	@IRInst:add	%t1201	SHIFT_TABLE	%t1200
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1201	SHIFT_TABLE	%t1200
	add r6,r4,r5                                      	@IRInst:add	%t1201	SHIFT_TABLE	%t1200
	mov r5,#4800                                      	@IRInst:add	%t1201	SHIFT_TABLE	%t1200
	str r6,[fp,r5]                                    	@IRInst:add	%t1201	SHIFT_TABLE	%t1200
	mov r4,#4800                                      	@IRInst:assign	%t1202	%t1201
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1202	%t1201
	ldr r4,[r4]                                       	@IRInst:assign	%t1202	%t1201
	ldr r9,=4804                                      	@IRInst:assign	%t1202	%t1201
	str r4,[fp,r9]                                    	@IRInst:assign	%t1202	%t1201
	mov r4,#1                                         	@IRInst:mul	%t1203	1	%t1202
	ldr r5,=4804                                      	@IRInst:mul	%t1203	1	%t1202
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1203	1	%t1202
	mul r6,r4,r5                                      	@IRInst:mul	%t1203	1	%t1202
	ldr r5,=4808                                      	@IRInst:mul	%t1203	1	%t1202
	str r6,[fp,r5]                                    	@IRInst:mul	%t1203	1	%t1202
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1204	ans	%t1203
	ldr r5,=4808                                      	@IRInst:add	%t1204	ans	%t1203
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1204	ans	%t1203
	add r6,r4,r5                                      	@IRInst:add	%t1204	ans	%t1203
	ldr r5,=4812                                      	@IRInst:add	%t1204	ans	%t1203
	str r6,[fp,r5]                                    	@IRInst:add	%t1204	ans	%t1203
	ldr r4,=4812                                      	@IRInst:assign	ans	%t1204
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1204
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1204
.L654:
.L655:
	b .L652                                           
.L651:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1206	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1206	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1206	y	2
	ldr r5,=4820                                      	@IRInst:sdiv	%t1206	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1206	y	2
	ldr r4,=4820                                      	@IRInst:mul	%t1207	%t1206	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1207	%t1206	2
	mov r5,#2                                         	@IRInst:mul	%t1207	%t1206	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1207	%t1206	2
	ldr r5,=4824                                      	@IRInst:mul	%t1207	%t1206	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1207	%t1206	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1205	y	%t1207
	ldr r5,=4824                                      	@IRInst:sub	%t1205	y	%t1207
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1205	y	%t1207
	sub r6,r4,r5                                      	@IRInst:sub	%t1205	y	%t1207
	ldr r5,=4816                                      	@IRInst:sub	%t1205	y	%t1207
	str r6,[fp,r5]                                    	@IRInst:sub	%t1205	y	%t1207
.L656:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1208	i	4
	mov r5,#4                                         	@IRInst:mul	%t1208	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1208	i	4
	ldr r5,=4828                                      	@IRInst:mul	%t1208	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1208	i	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1209	SHIFT_TABLE	%t1208
	ldr r5,=4828                                      	@IRInst:add	%t1209	SHIFT_TABLE	%t1208
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1209	SHIFT_TABLE	%t1208
	add r6,r4,r5                                      	@IRInst:add	%t1209	SHIFT_TABLE	%t1208
	ldr r5,=4832                                      	@IRInst:add	%t1209	SHIFT_TABLE	%t1208
	str r6,[fp,r5]                                    	@IRInst:add	%t1209	SHIFT_TABLE	%t1208
	ldr r4,=4832                                      	@IRInst:assign	%t1210	%t1209
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1210	%t1209
	ldr r4,[r4]                                       	@IRInst:assign	%t1210	%t1209
	ldr r9,=4836                                      	@IRInst:assign	%t1210	%t1209
	str r4,[fp,r9]                                    	@IRInst:assign	%t1210	%t1209
	mov r4,#1                                         	@IRInst:mul	%t1211	1	%t1210
	ldr r5,=4836                                      	@IRInst:mul	%t1211	1	%t1210
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1211	1	%t1210
	mul r6,r4,r5                                      	@IRInst:mul	%t1211	1	%t1210
	ldr r5,=4840                                      	@IRInst:mul	%t1211	1	%t1210
	str r6,[fp,r5]                                    	@IRInst:mul	%t1211	1	%t1210
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1212	ans	%t1211
	ldr r5,=4840                                      	@IRInst:add	%t1212	ans	%t1211
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1212	ans	%t1211
	add r6,r4,r5                                      	@IRInst:add	%t1212	ans	%t1211
	ldr r5,=4844                                      	@IRInst:add	%t1212	ans	%t1211
	str r6,[fp,r5]                                    	@IRInst:add	%t1212	ans	%t1211
	ldr r4,=4844                                      	@IRInst:assign	ans	%t1212
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1212
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1212
.L657:
.L658:
.L652:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1213	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1213	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1213	x	2
	ldr r5,=4848                                      	@IRInst:sdiv	%t1213	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1213	x	2
	ldr r4,=4848                                      	@IRInst:assign	x	%t1213
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1213
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1213
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1214	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1214	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1214	y	2
	ldr r5,=4852                                      	@IRInst:sdiv	%t1214	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1214	y	2
	ldr r4,=4852                                      	@IRInst:assign	y	%t1214
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1214
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1214
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1215	i	1
	mov r5,#1                                         	@IRInst:add	%t1215	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1215	i	1
	ldr r5,=4856                                      	@IRInst:add	%t1215	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1215	i	1
	ldr r4,=4856                                      	@IRInst:assign	i	%t1215
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1215
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1215
	b .L647                                           
.L649:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	ldr r9,=4752                                      	@IRInst:assign	sum	ans
	str r4,[fp,r9]                                    	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=4744                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,=4748                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L659:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1216	i	16
	mov r5,#16                                        	@IRInst:blt	%t1216	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1216	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1216	i	16
	movge r6,#0                                       	@IRInst:blt	%t1216	i	16
	ldr r10,=4860                                     	@IRInst:blt	%t1216	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1216	i	16
	blt .L660                                         
	b .L661                                           
.L660:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1218	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1218	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1218	x	2
	ldr r5,=4868                                      	@IRInst:sdiv	%t1218	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1218	x	2
	ldr r4,=4868                                      	@IRInst:mul	%t1219	%t1218	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1219	%t1218	2
	mov r5,#2                                         	@IRInst:mul	%t1219	%t1218	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1219	%t1218	2
	ldr r5,=4872                                      	@IRInst:mul	%t1219	%t1218	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1219	%t1218	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1217	x	%t1219
	ldr r5,=4872                                      	@IRInst:sub	%t1217	x	%t1219
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1217	x	%t1219
	sub r6,r4,r5                                      	@IRInst:sub	%t1217	x	%t1219
	mov r5,#4864                                      	@IRInst:sub	%t1217	x	%t1219
	str r6,[fp,r5]                                    	@IRInst:sub	%t1217	x	%t1219
.L665:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1221	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1221	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1221	y	2
	ldr r5,=4880                                      	@IRInst:sdiv	%t1221	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1221	y	2
	ldr r4,=4880                                      	@IRInst:mul	%t1222	%t1221	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1222	%t1221	2
	mov r5,#2                                         	@IRInst:mul	%t1222	%t1221	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1222	%t1221	2
	ldr r5,=4884                                      	@IRInst:mul	%t1222	%t1221	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1222	%t1221	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1220	y	%t1222
	ldr r5,=4884                                      	@IRInst:sub	%t1220	y	%t1222
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1220	y	%t1222
	sub r6,r4,r5                                      	@IRInst:sub	%t1220	y	%t1222
	ldr r5,=4876                                      	@IRInst:sub	%t1220	y	%t1222
	str r6,[fp,r5]                                    	@IRInst:sub	%t1220	y	%t1222
.L662:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1223	i	4
	mov r5,#4                                         	@IRInst:mul	%t1223	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1223	i	4
	ldr r5,=4888                                      	@IRInst:mul	%t1223	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1223	i	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1224	SHIFT_TABLE	%t1223
	ldr r5,=4888                                      	@IRInst:add	%t1224	SHIFT_TABLE	%t1223
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1224	SHIFT_TABLE	%t1223
	add r6,r4,r5                                      	@IRInst:add	%t1224	SHIFT_TABLE	%t1223
	ldr r5,=4892                                      	@IRInst:add	%t1224	SHIFT_TABLE	%t1223
	str r6,[fp,r5]                                    	@IRInst:add	%t1224	SHIFT_TABLE	%t1223
	ldr r4,=4892                                      	@IRInst:assign	%t1225	%t1224
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1225	%t1224
	ldr r4,[r4]                                       	@IRInst:assign	%t1225	%t1224
	ldr r9,=4896                                      	@IRInst:assign	%t1225	%t1224
	str r4,[fp,r9]                                    	@IRInst:assign	%t1225	%t1224
	mov r4,#1                                         	@IRInst:mul	%t1226	1	%t1225
	ldr r5,=4896                                      	@IRInst:mul	%t1226	1	%t1225
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1226	1	%t1225
	mul r6,r4,r5                                      	@IRInst:mul	%t1226	1	%t1225
	ldr r5,=4900                                      	@IRInst:mul	%t1226	1	%t1225
	str r6,[fp,r5]                                    	@IRInst:mul	%t1226	1	%t1225
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1227	ans	%t1226
	ldr r5,=4900                                      	@IRInst:add	%t1227	ans	%t1226
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1227	ans	%t1226
	add r6,r4,r5                                      	@IRInst:add	%t1227	ans	%t1226
	ldr r5,=4904                                      	@IRInst:add	%t1227	ans	%t1226
	str r6,[fp,r5]                                    	@IRInst:add	%t1227	ans	%t1226
	ldr r4,=4904                                      	@IRInst:assign	ans	%t1227
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1227
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1227
.L663:
.L664:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1228	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1228	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1228	x	2
	ldr r5,=4908                                      	@IRInst:sdiv	%t1228	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1228	x	2
	ldr r4,=4908                                      	@IRInst:assign	x	%t1228
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1228
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1228
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1229	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1229	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1229	y	2
	ldr r5,=4912                                      	@IRInst:sdiv	%t1229	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1229	y	2
	ldr r4,=4912                                      	@IRInst:assign	y	%t1229
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1229
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1229
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1230	i	1
	mov r5,#1                                         	@IRInst:add	%t1230	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1230	i	1
	ldr r5,=4916                                      	@IRInst:add	%t1230	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1230	i	1
	ldr r4,=4916                                      	@IRInst:assign	i	%t1230
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1230
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1230
	b .L659                                           
.L661:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	ldr r9,=4748                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t1231	1	15
	mov r5,#15                                        	@IRInst:bgt	%t1231	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t1231	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t1231	1	15
	movle r6,#0                                       	@IRInst:bgt	%t1231	1	15
	ldr r10,=4920                                     	@IRInst:bgt	%t1231	1	15
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1231	1	15
	bgt .L666                                         
	b .L667                                           
.L666:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L668                                           
.L667:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t1232	1	4
	mov r5,#4                                         	@IRInst:mul	%t1232	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1232	1	4
	ldr r5,=4924                                      	@IRInst:mul	%t1232	1	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1232	1	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1233	SHIFT_TABLE	%t1232
	ldr r5,=4924                                      	@IRInst:add	%t1233	SHIFT_TABLE	%t1232
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1233	SHIFT_TABLE	%t1232
	add r6,r4,r5                                      	@IRInst:add	%t1233	SHIFT_TABLE	%t1232
	mov r5,#4928                                      	@IRInst:add	%t1233	SHIFT_TABLE	%t1232
	str r6,[fp,r5]                                    	@IRInst:add	%t1233	SHIFT_TABLE	%t1232
	mov r4,#4928                                      	@IRInst:assign	%t1234	%t1233
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1234	%t1233
	ldr r4,[r4]                                       	@IRInst:assign	%t1234	%t1233
	ldr r9,=4932                                      	@IRInst:assign	%t1234	%t1233
	str r4,[fp,r9]                                    	@IRInst:assign	%t1234	%t1233
	ldr r4,=4748                                      	@IRInst:mul	%t1235	c	%t1234
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1235	c	%t1234
	ldr r5,=4932                                      	@IRInst:mul	%t1235	c	%t1234
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1235	c	%t1234
	mul r6,r4,r5                                      	@IRInst:mul	%t1235	c	%t1234
	ldr r5,=4936                                      	@IRInst:mul	%t1235	c	%t1234
	str r6,[fp,r5]                                    	@IRInst:mul	%t1235	c	%t1234
	ldr r4,=4936                                      	@IRInst:assign	x	%t1235
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1235
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1235
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L669:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1236	i	16
	mov r5,#16                                        	@IRInst:blt	%t1236	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1236	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1236	i	16
	movge r6,#0                                       	@IRInst:blt	%t1236	i	16
	ldr r10,=4940                                     	@IRInst:blt	%t1236	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1236	i	16
	blt .L670                                         
	b .L671                                           
.L670:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1238	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1238	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1238	x	2
	ldr r5,=4948                                      	@IRInst:sdiv	%t1238	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1238	x	2
	ldr r4,=4948                                      	@IRInst:mul	%t1239	%t1238	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1239	%t1238	2
	mov r5,#2                                         	@IRInst:mul	%t1239	%t1238	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1239	%t1238	2
	ldr r5,=4952                                      	@IRInst:mul	%t1239	%t1238	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1239	%t1238	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1237	x	%t1239
	ldr r5,=4952                                      	@IRInst:sub	%t1237	x	%t1239
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1237	x	%t1239
	sub r6,r4,r5                                      	@IRInst:sub	%t1237	x	%t1239
	ldr r5,=4944                                      	@IRInst:sub	%t1237	x	%t1239
	str r6,[fp,r5]                                    	@IRInst:sub	%t1237	x	%t1239
.L675:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1241	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1241	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1241	y	2
	ldr r5,=4960                                      	@IRInst:sdiv	%t1241	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1241	y	2
	ldr r4,=4960                                      	@IRInst:mul	%t1242	%t1241	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1242	%t1241	2
	mov r5,#2                                         	@IRInst:mul	%t1242	%t1241	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1242	%t1241	2
	ldr r5,=4964                                      	@IRInst:mul	%t1242	%t1241	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1242	%t1241	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1240	y	%t1242
	ldr r5,=4964                                      	@IRInst:sub	%t1240	y	%t1242
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1240	y	%t1242
	sub r6,r4,r5                                      	@IRInst:sub	%t1240	y	%t1242
	ldr r5,=4956                                      	@IRInst:sub	%t1240	y	%t1242
	str r6,[fp,r5]                                    	@IRInst:sub	%t1240	y	%t1242
.L672:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1243	i	4
	mov r5,#4                                         	@IRInst:mul	%t1243	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1243	i	4
	ldr r5,=4968                                      	@IRInst:mul	%t1243	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1243	i	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1244	SHIFT_TABLE	%t1243
	ldr r5,=4968                                      	@IRInst:add	%t1244	SHIFT_TABLE	%t1243
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1244	SHIFT_TABLE	%t1243
	add r6,r4,r5                                      	@IRInst:add	%t1244	SHIFT_TABLE	%t1243
	ldr r5,=4972                                      	@IRInst:add	%t1244	SHIFT_TABLE	%t1243
	str r6,[fp,r5]                                    	@IRInst:add	%t1244	SHIFT_TABLE	%t1243
	ldr r4,=4972                                      	@IRInst:assign	%t1245	%t1244
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1245	%t1244
	ldr r4,[r4]                                       	@IRInst:assign	%t1245	%t1244
	ldr r9,=4976                                      	@IRInst:assign	%t1245	%t1244
	str r4,[fp,r9]                                    	@IRInst:assign	%t1245	%t1244
	mov r4,#1                                         	@IRInst:mul	%t1246	1	%t1245
	ldr r5,=4976                                      	@IRInst:mul	%t1246	1	%t1245
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1246	1	%t1245
	mul r6,r4,r5                                      	@IRInst:mul	%t1246	1	%t1245
	ldr r5,=4980                                      	@IRInst:mul	%t1246	1	%t1245
	str r6,[fp,r5]                                    	@IRInst:mul	%t1246	1	%t1245
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1247	ans	%t1246
	ldr r5,=4980                                      	@IRInst:add	%t1247	ans	%t1246
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1247	ans	%t1246
	add r6,r4,r5                                      	@IRInst:add	%t1247	ans	%t1246
	ldr r5,=4984                                      	@IRInst:add	%t1247	ans	%t1246
	str r6,[fp,r5]                                    	@IRInst:add	%t1247	ans	%t1246
	ldr r4,=4984                                      	@IRInst:assign	ans	%t1247
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1247
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1247
.L673:
.L674:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1248	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1248	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1248	x	2
	ldr r5,=4988                                      	@IRInst:sdiv	%t1248	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1248	x	2
	ldr r4,=4988                                      	@IRInst:assign	x	%t1248
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1248
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1248
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1249	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1249	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1249	y	2
	mov r5,#4992                                      	@IRInst:sdiv	%t1249	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1249	y	2
	mov r4,#4992                                      	@IRInst:assign	y	%t1249
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1249
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1249
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1250	i	1
	mov r5,#1                                         	@IRInst:add	%t1250	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1250	i	1
	ldr r5,=4996                                      	@IRInst:add	%t1250	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1250	i	1
	ldr r4,=4996                                      	@IRInst:assign	i	%t1250
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1250
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1250
	b .L669                                           
.L671:
.L668:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	ldr r9,=4748                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	ldr r4,=4752                                      	@IRInst:assign	al	sum
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	sum
	ldr r9,=4744                                      	@IRInst:assign	al	sum
	str r4,[fp,r9]                                    	@IRInst:assign	al	sum
	b .L644                                           
.L646:
	ldr r4,=4744                                      	@IRInst:assign	ans	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	mres	ans
	ldr r9,=4664                                      	@IRInst:assign	mres	ans
	str r4,[fp,r9]                                    	@IRInst:assign	mres	ans
.L642:
.L643:
	ldr r4,=4656                                      	@IRInst:assign	al	ml
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	ml
	ldr r9,=5000                                      	@IRInst:assign	al	ml
	str r4,[fp,r9]                                    	@IRInst:assign	al	ml
	ldr r4,=4656                                      	@IRInst:assign	c	ml
	ldr r4,[fp,r4]                                    	@IRInst:assign	c	ml
	ldr r9,=5004                                      	@IRInst:assign	c	ml
	str r4,[fp,r9]                                    	@IRInst:assign	c	ml
.L676:
	ldr r4,=5004                                      	@IRInst:assign	%t1254	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1254	c
	ldr r9,=5012                                      	@IRInst:assign	%t1254	c
	str r4,[fp,r9]                                    	@IRInst:assign	%t1254	c
	ldr r4,=5012                                      	@IRInst:not_zero	%t1255	%t1254	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1255	%t1254	0
	mov r5,#0                                         	@IRInst:not_zero	%t1255	%t1254	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1255	%t1254	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1255	%t1254	0
	movne r6,#1                                       	@IRInst:not_zero	%t1255	%t1254	0
	ldr r10,=5016                                     	@IRInst:not_zero	%t1255	%t1254	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1255	%t1254	0
	beq .L678                                         
	b .L677                                           
.L677:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=5000                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,=5004                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L679:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1256	i	16
	mov r5,#16                                        	@IRInst:blt	%t1256	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1256	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1256	i	16
	movge r6,#0                                       	@IRInst:blt	%t1256	i	16
	ldr r10,=5020                                     	@IRInst:blt	%t1256	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1256	i	16
	blt .L680                                         
	b .L681                                           
.L680:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1258	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1258	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1258	x	2
	ldr r5,=5028                                      	@IRInst:sdiv	%t1258	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1258	x	2
	ldr r4,=5028                                      	@IRInst:mul	%t1259	%t1258	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1259	%t1258	2
	mov r5,#2                                         	@IRInst:mul	%t1259	%t1258	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1259	%t1258	2
	ldr r5,=5032                                      	@IRInst:mul	%t1259	%t1258	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1259	%t1258	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1257	x	%t1259
	ldr r5,=5032                                      	@IRInst:sub	%t1257	x	%t1259
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1257	x	%t1259
	sub r6,r4,r5                                      	@IRInst:sub	%t1257	x	%t1259
	ldr r5,=5024                                      	@IRInst:sub	%t1257	x	%t1259
	str r6,[fp,r5]                                    	@IRInst:sub	%t1257	x	%t1259
.L682:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1261	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1261	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1261	y	2
	ldr r5,=5040                                      	@IRInst:sdiv	%t1261	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1261	y	2
	ldr r4,=5040                                      	@IRInst:mul	%t1262	%t1261	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1262	%t1261	2
	mov r5,#2                                         	@IRInst:mul	%t1262	%t1261	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1262	%t1261	2
	ldr r5,=5044                                      	@IRInst:mul	%t1262	%t1261	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1262	%t1261	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1260	y	%t1262
	ldr r5,=5044                                      	@IRInst:sub	%t1260	y	%t1262
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1260	y	%t1262
	sub r6,r4,r5                                      	@IRInst:sub	%t1260	y	%t1262
	ldr r5,=5036                                      	@IRInst:sub	%t1260	y	%t1262
	str r6,[fp,r5]                                    	@IRInst:sub	%t1260	y	%t1262
	ldr r4,=5036                                      	@IRInst:beq	%t1263	%t1260	0
	ldr r4,[fp,r4]                                    	@IRInst:beq	%t1263	%t1260	0
	mov r5,#0                                         	@IRInst:beq	%t1263	%t1260	0
	cmp r4,r5                                         	@IRInst:beq	%t1263	%t1260	0
	moveq r6,#1                                       	@IRInst:beq	%t1263	%t1260	0
	movne r6,#0                                       	@IRInst:beq	%t1263	%t1260	0
	ldr r10,=5048                                     	@IRInst:beq	%t1263	%t1260	0
	str r6,[fp,r10]                                   	@IRInst:beq	%t1263	%t1260	0
	beq .L685                                         
	b .L686                                           
.L685:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1264	i	4
	mov r5,#4                                         	@IRInst:mul	%t1264	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1264	i	4
	ldr r5,=5052                                      	@IRInst:mul	%t1264	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1264	i	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1265	SHIFT_TABLE	%t1264
	ldr r5,=5052                                      	@IRInst:add	%t1265	SHIFT_TABLE	%t1264
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1265	SHIFT_TABLE	%t1264
	add r6,r4,r5                                      	@IRInst:add	%t1265	SHIFT_TABLE	%t1264
	mov r5,#5056                                      	@IRInst:add	%t1265	SHIFT_TABLE	%t1264
	str r6,[fp,r5]                                    	@IRInst:add	%t1265	SHIFT_TABLE	%t1264
	mov r4,#5056                                      	@IRInst:assign	%t1266	%t1265
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1266	%t1265
	ldr r4,[r4]                                       	@IRInst:assign	%t1266	%t1265
	ldr r9,=5060                                      	@IRInst:assign	%t1266	%t1265
	str r4,[fp,r9]                                    	@IRInst:assign	%t1266	%t1265
	mov r4,#1                                         	@IRInst:mul	%t1267	1	%t1266
	ldr r5,=5060                                      	@IRInst:mul	%t1267	1	%t1266
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1267	1	%t1266
	mul r6,r4,r5                                      	@IRInst:mul	%t1267	1	%t1266
	ldr r5,=5064                                      	@IRInst:mul	%t1267	1	%t1266
	str r6,[fp,r5]                                    	@IRInst:mul	%t1267	1	%t1266
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1268	ans	%t1267
	ldr r5,=5064                                      	@IRInst:add	%t1268	ans	%t1267
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1268	ans	%t1267
	add r6,r4,r5                                      	@IRInst:add	%t1268	ans	%t1267
	ldr r5,=5068                                      	@IRInst:add	%t1268	ans	%t1267
	str r6,[fp,r5]                                    	@IRInst:add	%t1268	ans	%t1267
	ldr r4,=5068                                      	@IRInst:assign	ans	%t1268
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1268
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1268
.L686:
.L687:
	b .L684                                           
.L683:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1270	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1270	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1270	y	2
	ldr r5,=5076                                      	@IRInst:sdiv	%t1270	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1270	y	2
	ldr r4,=5076                                      	@IRInst:mul	%t1271	%t1270	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1271	%t1270	2
	mov r5,#2                                         	@IRInst:mul	%t1271	%t1270	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1271	%t1270	2
	ldr r5,=5080                                      	@IRInst:mul	%t1271	%t1270	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1271	%t1270	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1269	y	%t1271
	ldr r5,=5080                                      	@IRInst:sub	%t1269	y	%t1271
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1269	y	%t1271
	sub r6,r4,r5                                      	@IRInst:sub	%t1269	y	%t1271
	ldr r5,=5072                                      	@IRInst:sub	%t1269	y	%t1271
	str r6,[fp,r5]                                    	@IRInst:sub	%t1269	y	%t1271
.L688:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1272	i	4
	mov r5,#4                                         	@IRInst:mul	%t1272	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1272	i	4
	ldr r5,=5084                                      	@IRInst:mul	%t1272	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1272	i	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1273	SHIFT_TABLE	%t1272
	ldr r5,=5084                                      	@IRInst:add	%t1273	SHIFT_TABLE	%t1272
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1273	SHIFT_TABLE	%t1272
	add r6,r4,r5                                      	@IRInst:add	%t1273	SHIFT_TABLE	%t1272
	ldr r5,=5088                                      	@IRInst:add	%t1273	SHIFT_TABLE	%t1272
	str r6,[fp,r5]                                    	@IRInst:add	%t1273	SHIFT_TABLE	%t1272
	ldr r4,=5088                                      	@IRInst:assign	%t1274	%t1273
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1274	%t1273
	ldr r4,[r4]                                       	@IRInst:assign	%t1274	%t1273
	ldr r9,=5092                                      	@IRInst:assign	%t1274	%t1273
	str r4,[fp,r9]                                    	@IRInst:assign	%t1274	%t1273
	mov r4,#1                                         	@IRInst:mul	%t1275	1	%t1274
	ldr r5,=5092                                      	@IRInst:mul	%t1275	1	%t1274
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1275	1	%t1274
	mul r6,r4,r5                                      	@IRInst:mul	%t1275	1	%t1274
	ldr r5,=5096                                      	@IRInst:mul	%t1275	1	%t1274
	str r6,[fp,r5]                                    	@IRInst:mul	%t1275	1	%t1274
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1276	ans	%t1275
	ldr r5,=5096                                      	@IRInst:add	%t1276	ans	%t1275
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1276	ans	%t1275
	add r6,r4,r5                                      	@IRInst:add	%t1276	ans	%t1275
	ldr r5,=5100                                      	@IRInst:add	%t1276	ans	%t1275
	str r6,[fp,r5]                                    	@IRInst:add	%t1276	ans	%t1275
	ldr r4,=5100                                      	@IRInst:assign	ans	%t1276
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1276
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1276
.L689:
.L690:
.L684:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1277	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1277	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1277	x	2
	ldr r5,=5104                                      	@IRInst:sdiv	%t1277	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1277	x	2
	ldr r4,=5104                                      	@IRInst:assign	x	%t1277
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1277
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1277
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1278	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1278	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1278	y	2
	ldr r5,=5108                                      	@IRInst:sdiv	%t1278	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1278	y	2
	ldr r4,=5108                                      	@IRInst:assign	y	%t1278
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1278
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1278
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1279	i	1
	mov r5,#1                                         	@IRInst:add	%t1279	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1279	i	1
	ldr r5,=5112                                      	@IRInst:add	%t1279	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1279	i	1
	ldr r4,=5112                                      	@IRInst:assign	i	%t1279
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1279
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1279
	b .L679                                           
.L681:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	ldr r9,=5008                                      	@IRInst:assign	sum	ans
	str r4,[fp,r9]                                    	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=5000                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,=5004                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L691:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1280	i	16
	mov r5,#16                                        	@IRInst:blt	%t1280	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1280	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1280	i	16
	movge r6,#0                                       	@IRInst:blt	%t1280	i	16
	ldr r10,=5116                                     	@IRInst:blt	%t1280	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1280	i	16
	blt .L692                                         
	b .L693                                           
.L692:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1282	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1282	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1282	x	2
	ldr r5,=5124                                      	@IRInst:sdiv	%t1282	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1282	x	2
	ldr r4,=5124                                      	@IRInst:mul	%t1283	%t1282	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1283	%t1282	2
	mov r5,#2                                         	@IRInst:mul	%t1283	%t1282	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1283	%t1282	2
	ldr r5,=5128                                      	@IRInst:mul	%t1283	%t1282	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1283	%t1282	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1281	x	%t1283
	ldr r5,=5128                                      	@IRInst:sub	%t1281	x	%t1283
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1281	x	%t1283
	sub r6,r4,r5                                      	@IRInst:sub	%t1281	x	%t1283
	mov r5,#5120                                      	@IRInst:sub	%t1281	x	%t1283
	str r6,[fp,r5]                                    	@IRInst:sub	%t1281	x	%t1283
.L697:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1285	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1285	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1285	y	2
	ldr r5,=5136                                      	@IRInst:sdiv	%t1285	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1285	y	2
	ldr r4,=5136                                      	@IRInst:mul	%t1286	%t1285	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1286	%t1285	2
	mov r5,#2                                         	@IRInst:mul	%t1286	%t1285	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1286	%t1285	2
	ldr r5,=5140                                      	@IRInst:mul	%t1286	%t1285	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1286	%t1285	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1284	y	%t1286
	ldr r5,=5140                                      	@IRInst:sub	%t1284	y	%t1286
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1284	y	%t1286
	sub r6,r4,r5                                      	@IRInst:sub	%t1284	y	%t1286
	ldr r5,=5132                                      	@IRInst:sub	%t1284	y	%t1286
	str r6,[fp,r5]                                    	@IRInst:sub	%t1284	y	%t1286
.L694:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1287	i	4
	mov r5,#4                                         	@IRInst:mul	%t1287	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1287	i	4
	ldr r5,=5144                                      	@IRInst:mul	%t1287	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1287	i	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1288	SHIFT_TABLE	%t1287
	ldr r5,=5144                                      	@IRInst:add	%t1288	SHIFT_TABLE	%t1287
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1288	SHIFT_TABLE	%t1287
	add r6,r4,r5                                      	@IRInst:add	%t1288	SHIFT_TABLE	%t1287
	ldr r5,=5148                                      	@IRInst:add	%t1288	SHIFT_TABLE	%t1287
	str r6,[fp,r5]                                    	@IRInst:add	%t1288	SHIFT_TABLE	%t1287
	ldr r4,=5148                                      	@IRInst:assign	%t1289	%t1288
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1289	%t1288
	ldr r4,[r4]                                       	@IRInst:assign	%t1289	%t1288
	ldr r9,=5152                                      	@IRInst:assign	%t1289	%t1288
	str r4,[fp,r9]                                    	@IRInst:assign	%t1289	%t1288
	mov r4,#1                                         	@IRInst:mul	%t1290	1	%t1289
	ldr r5,=5152                                      	@IRInst:mul	%t1290	1	%t1289
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1290	1	%t1289
	mul r6,r4,r5                                      	@IRInst:mul	%t1290	1	%t1289
	ldr r5,=5156                                      	@IRInst:mul	%t1290	1	%t1289
	str r6,[fp,r5]                                    	@IRInst:mul	%t1290	1	%t1289
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1291	ans	%t1290
	ldr r5,=5156                                      	@IRInst:add	%t1291	ans	%t1290
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1291	ans	%t1290
	add r6,r4,r5                                      	@IRInst:add	%t1291	ans	%t1290
	ldr r5,=5160                                      	@IRInst:add	%t1291	ans	%t1290
	str r6,[fp,r5]                                    	@IRInst:add	%t1291	ans	%t1290
	ldr r4,=5160                                      	@IRInst:assign	ans	%t1291
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1291
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1291
.L695:
.L696:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1292	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1292	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1292	x	2
	ldr r5,=5164                                      	@IRInst:sdiv	%t1292	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1292	x	2
	ldr r4,=5164                                      	@IRInst:assign	x	%t1292
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1292
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1292
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1293	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1293	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1293	y	2
	ldr r5,=5168                                      	@IRInst:sdiv	%t1293	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1293	y	2
	ldr r4,=5168                                      	@IRInst:assign	y	%t1293
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1293
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1293
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1294	i	1
	mov r5,#1                                         	@IRInst:add	%t1294	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1294	i	1
	ldr r5,=5172                                      	@IRInst:add	%t1294	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1294	i	1
	ldr r4,=5172                                      	@IRInst:assign	i	%t1294
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1294
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1294
	b .L691                                           
.L693:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	ldr r9,=5004                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t1295	1	15
	mov r5,#15                                        	@IRInst:bgt	%t1295	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t1295	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t1295	1	15
	movle r6,#0                                       	@IRInst:bgt	%t1295	1	15
	ldr r10,=5176                                     	@IRInst:bgt	%t1295	1	15
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1295	1	15
	bgt .L698                                         
	b .L699                                           
.L698:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L700                                           
.L699:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t1296	1	4
	mov r5,#4                                         	@IRInst:mul	%t1296	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1296	1	4
	ldr r5,=5180                                      	@IRInst:mul	%t1296	1	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1296	1	4
	ldr r4,.global_8_SHIFT_TABLE                      	@IRInst:add	%t1297	SHIFT_TABLE	%t1296
	ldr r5,=5180                                      	@IRInst:add	%t1297	SHIFT_TABLE	%t1296
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1297	SHIFT_TABLE	%t1296
	add r6,r4,r5                                      	@IRInst:add	%t1297	SHIFT_TABLE	%t1296
	mov r5,#5184                                      	@IRInst:add	%t1297	SHIFT_TABLE	%t1296
	str r6,[fp,r5]                                    	@IRInst:add	%t1297	SHIFT_TABLE	%t1296
	mov r4,#5184                                      	@IRInst:assign	%t1298	%t1297
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1298	%t1297
	ldr r4,[r4]                                       	@IRInst:assign	%t1298	%t1297
	ldr r9,=5188                                      	@IRInst:assign	%t1298	%t1297
	str r4,[fp,r9]                                    	@IRInst:assign	%t1298	%t1297
	ldr r4,=5004                                      	@IRInst:mul	%t1299	c	%t1298
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1299	c	%t1298
	ldr r5,=5188                                      	@IRInst:mul	%t1299	c	%t1298
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1299	c	%t1298
	mul r6,r4,r5                                      	@IRInst:mul	%t1299	c	%t1298
	ldr r5,=5192                                      	@IRInst:mul	%t1299	c	%t1298
	str r6,[fp,r5]                                    	@IRInst:mul	%t1299	c	%t1298
	ldr r4,=5192                                      	@IRInst:assign	x	%t1299
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1299
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1299
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L701:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1300	i	16
	mov r5,#16                                        	@IRInst:blt	%t1300	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1300	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1300	i	16
	movge r6,#0                                       	@IRInst:blt	%t1300	i	16
	ldr r10,=5196                                     	@IRInst:blt	%t1300	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1300	i	16
	blt .L702                                         
	b .L703                                           
.L702:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1302	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1302	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1302	x	2
	ldr r5,=5204                                      	@IRInst:sdiv	%t1302	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1302	x	2
	ldr r4,=5204                                      	@IRInst:mul	%t1303	%t1302	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1303	%t1302	2
	mov r5,#2                                         	@IRInst:mul	%t1303	%t1302	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1303	%t1302	2
	ldr r5,=5208                                      	@IRInst:mul	%t1303	%t1302	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1303	%t1302	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1301	x	%t1303
	ldr r5,=5208                                      	@IRInst:sub	%t1301	x	%t1303
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1301	x	%t1303
	sub r6,r4,r5                                      	@IRInst:sub	%t1301	x	%t1303
	ldr r5,=5200                                      	@IRInst:sub	%t1301	x	%t1303
	str r6,[fp,r5]                                    	@IRInst:sub	%t1301	x	%t1303
.L707:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1305	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1305	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1305	y	2
	ldr r5,=5216                                      	@IRInst:sdiv	%t1305	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1305	y	2
.global_9_SHIFT_TABLE:
        .long   SHIFT_TABLE
	ldr r4,=5216                                      	@IRInst:mul	%t1306	%t1305	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1306	%t1305	2
	mov r5,#2                                         	@IRInst:mul	%t1306	%t1305	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1306	%t1305	2
	ldr r5,=5220                                      	@IRInst:mul	%t1306	%t1305	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1306	%t1305	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1304	y	%t1306
	ldr r5,=5220                                      	@IRInst:sub	%t1304	y	%t1306
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1304	y	%t1306
	sub r6,r4,r5                                      	@IRInst:sub	%t1304	y	%t1306
	ldr r5,=5212                                      	@IRInst:sub	%t1304	y	%t1306
	str r6,[fp,r5]                                    	@IRInst:sub	%t1304	y	%t1306
.L704:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1307	i	4
	mov r5,#4                                         	@IRInst:mul	%t1307	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1307	i	4
	ldr r5,=5224                                      	@IRInst:mul	%t1307	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1307	i	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1308	SHIFT_TABLE	%t1307
	ldr r5,=5224                                      	@IRInst:add	%t1308	SHIFT_TABLE	%t1307
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1308	SHIFT_TABLE	%t1307
	add r6,r4,r5                                      	@IRInst:add	%t1308	SHIFT_TABLE	%t1307
	ldr r5,=5228                                      	@IRInst:add	%t1308	SHIFT_TABLE	%t1307
	str r6,[fp,r5]                                    	@IRInst:add	%t1308	SHIFT_TABLE	%t1307
	ldr r4,=5228                                      	@IRInst:assign	%t1309	%t1308
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1309	%t1308
	ldr r4,[r4]                                       	@IRInst:assign	%t1309	%t1308
	ldr r9,=5232                                      	@IRInst:assign	%t1309	%t1308
	str r4,[fp,r9]                                    	@IRInst:assign	%t1309	%t1308
	mov r4,#1                                         	@IRInst:mul	%t1310	1	%t1309
	ldr r5,=5232                                      	@IRInst:mul	%t1310	1	%t1309
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1310	1	%t1309
	mul r6,r4,r5                                      	@IRInst:mul	%t1310	1	%t1309
	ldr r5,=5236                                      	@IRInst:mul	%t1310	1	%t1309
	str r6,[fp,r5]                                    	@IRInst:mul	%t1310	1	%t1309
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1311	ans	%t1310
	ldr r5,=5236                                      	@IRInst:add	%t1311	ans	%t1310
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1311	ans	%t1310
	add r6,r4,r5                                      	@IRInst:add	%t1311	ans	%t1310
	ldr r5,=5240                                      	@IRInst:add	%t1311	ans	%t1310
	str r6,[fp,r5]                                    	@IRInst:add	%t1311	ans	%t1310
	ldr r4,=5240                                      	@IRInst:assign	ans	%t1311
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1311
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1311
.L705:
.L706:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1312	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1312	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1312	x	2
	ldr r5,=5244                                      	@IRInst:sdiv	%t1312	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1312	x	2
	ldr r4,=5244                                      	@IRInst:assign	x	%t1312
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1312
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1312
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1313	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1313	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1313	y	2
	mov r5,#5248                                      	@IRInst:sdiv	%t1313	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1313	y	2
	mov r4,#5248                                      	@IRInst:assign	y	%t1313
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1313
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1313
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1314	i	1
	mov r5,#1                                         	@IRInst:add	%t1314	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1314	i	1
	ldr r5,=5252                                      	@IRInst:add	%t1314	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1314	i	1
	ldr r4,=5252                                      	@IRInst:assign	i	%t1314
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1314
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1314
	b .L701                                           
.L703:
.L700:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	ldr r9,=5004                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	ldr r4,=5008                                      	@IRInst:assign	al	sum
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	sum
	ldr r9,=5000                                      	@IRInst:assign	al	sum
	str r4,[fp,r9]                                    	@IRInst:assign	al	sum
	b .L676                                           
.L678:
	ldr r4,=5000                                      	@IRInst:assign	ans	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	ml	ans
	ldr r9,=4656                                      	@IRInst:assign	ml	ans
	str r4,[fp,r9]                                    	@IRInst:assign	ml	ans
	ldr r4,=4660                                      	@IRInst:assign	x	mr
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t1315	y	15
	mov r5,#15                                        	@IRInst:bge	%t1315	y	15
	cmp r4,r5                                         	@IRInst:bge	%t1315	y	15
	movge r6,#1                                       	@IRInst:bge	%t1315	y	15
	movlt r6,#0                                       	@IRInst:bge	%t1315	y	15
	ldr r10,=5256                                     	@IRInst:bge	%t1315	y	15
	str r6,[fp,r10]                                   	@IRInst:bge	%t1315	y	15
	bge .L708                                         
	b .L709                                           
.L708:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t1316	x	0
	mov r5,#0                                         	@IRInst:blt	%t1316	x	0
	cmp r4,r5                                         	@IRInst:blt	%t1316	x	0
	movlt r6,#1                                       	@IRInst:blt	%t1316	x	0
	movge r6,#0                                       	@IRInst:blt	%t1316	x	0
	ldr r10,=5260                                     	@IRInst:blt	%t1316	x	0
	str r6,[fp,r10]                                   	@IRInst:blt	%t1316	x	0
	blt .L711                                         
	b .L712                                           
.L711:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L713                                           
.L712:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L713:
	b .L710                                           
.L709:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t1317	y	0
	mov r5,#0                                         	@IRInst:bgt	%t1317	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t1317	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t1317	y	0
	movle r6,#0                                       	@IRInst:bgt	%t1317	y	0
	ldr r10,=5264                                     	@IRInst:bgt	%t1317	y	0
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1317	y	0
	bgt .L714                                         
	b .L715                                           
.L714:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t1318	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t1318	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t1318	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t1318	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t1318	x	32767
	ldr r10,=5268                                     	@IRInst:bgt	%t1318	x	32767
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1318	x	32767
	bgt .L717                                         
	b .L718                                           
.L717:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1319	y	4
	mov r5,#4                                         	@IRInst:mul	%t1319	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1319	y	4
	ldr r5,=5272                                      	@IRInst:mul	%t1319	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1319	y	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1320	SHIFT_TABLE	%t1319
	ldr r5,=5272                                      	@IRInst:add	%t1320	SHIFT_TABLE	%t1319
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1320	SHIFT_TABLE	%t1319
	add r6,r4,r5                                      	@IRInst:add	%t1320	SHIFT_TABLE	%t1319
	ldr r5,=5276                                      	@IRInst:add	%t1320	SHIFT_TABLE	%t1319
	str r6,[fp,r5]                                    	@IRInst:add	%t1320	SHIFT_TABLE	%t1319
	ldr r4,=5276                                      	@IRInst:assign	%t1321	%t1320
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1321	%t1320
	ldr r4,[r4]                                       	@IRInst:assign	%t1321	%t1320
	ldr r9,=5280                                      	@IRInst:assign	%t1321	%t1320
	str r4,[fp,r9]                                    	@IRInst:assign	%t1321	%t1320
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1322	x	%t1321
	ldr r5,=5280                                      	@IRInst:sdiv	%t1322	x	%t1321
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1322	x	%t1321
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1322	x	%t1321
	ldr r5,=5284                                      	@IRInst:sdiv	%t1322	x	%t1321
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1322	x	%t1321
	ldr r4,=5284                                      	@IRInst:assign	x	%t1322
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1322
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1322
	ldr r4,[fp,#12]                                   	@IRInst:add	%t1323	x	65536
	mov r5,#65536                                     	@IRInst:add	%t1323	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t1323	x	65536
	ldr r5,=5288                                      	@IRInst:add	%t1323	x	65536
	str r6,[fp,r5]                                    	@IRInst:add	%t1323	x	65536
	mov r4,#15                                        	@IRInst:sub	%t1325	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t1325	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t1325	15	y
	ldr r5,=5296                                      	@IRInst:sub	%t1325	15	y
	str r6,[fp,r5]                                    	@IRInst:sub	%t1325	15	y
	ldr r4,=5296                                      	@IRInst:add	%t1326	%t1325	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t1326	%t1325	1
	mov r5,#1                                         	@IRInst:add	%t1326	%t1325	1
	add r6,r4,r5                                      	@IRInst:add	%t1326	%t1325	1
	ldr r5,=5300                                      	@IRInst:add	%t1326	%t1325	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1326	%t1325	1
	ldr r4,=5300                                      	@IRInst:mul	%t1324	%t1326	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1324	%t1326	4
	mov r5,#4                                         	@IRInst:mul	%t1324	%t1326	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1324	%t1326	4
	ldr r5,=5292                                      	@IRInst:mul	%t1324	%t1326	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1324	%t1326	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1327	SHIFT_TABLE	%t1324
	ldr r5,=5292                                      	@IRInst:add	%t1327	SHIFT_TABLE	%t1324
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1327	SHIFT_TABLE	%t1324
	add r6,r4,r5                                      	@IRInst:add	%t1327	SHIFT_TABLE	%t1324
	ldr r5,=5304                                      	@IRInst:add	%t1327	SHIFT_TABLE	%t1324
	str r6,[fp,r5]                                    	@IRInst:add	%t1327	SHIFT_TABLE	%t1324
	ldr r4,=5304                                      	@IRInst:assign	%t1328	%t1327
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1328	%t1327
	ldr r4,[r4]                                       	@IRInst:assign	%t1328	%t1327
	ldr r9,=5308                                      	@IRInst:assign	%t1328	%t1327
	str r4,[fp,r9]                                    	@IRInst:assign	%t1328	%t1327
	ldr r4,=5288                                      	@IRInst:sub	%t1329	%t1323	%t1328
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t1329	%t1323	%t1328
	ldr r5,=5308                                      	@IRInst:sub	%t1329	%t1323	%t1328
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1329	%t1323	%t1328
	sub r6,r4,r5                                      	@IRInst:sub	%t1329	%t1323	%t1328
	mov r5,#5312                                      	@IRInst:sub	%t1329	%t1323	%t1328
	str r6,[fp,r5]                                    	@IRInst:sub	%t1329	%t1323	%t1328
	mov r4,#5312                                      	@IRInst:assign	ans	%t1329
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1329
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1329
	b .L719                                           
.L718:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1330	y	4
	mov r5,#4                                         	@IRInst:mul	%t1330	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1330	y	4
	ldr r5,=5316                                      	@IRInst:mul	%t1330	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1330	y	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1331	SHIFT_TABLE	%t1330
	ldr r5,=5316                                      	@IRInst:add	%t1331	SHIFT_TABLE	%t1330
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1331	SHIFT_TABLE	%t1330
	add r6,r4,r5                                      	@IRInst:add	%t1331	SHIFT_TABLE	%t1330
	ldr r5,=5320                                      	@IRInst:add	%t1331	SHIFT_TABLE	%t1330
	str r6,[fp,r5]                                    	@IRInst:add	%t1331	SHIFT_TABLE	%t1330
	ldr r4,=5320                                      	@IRInst:assign	%t1332	%t1331
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1332	%t1331
	ldr r4,[r4]                                       	@IRInst:assign	%t1332	%t1331
	ldr r9,=5324                                      	@IRInst:assign	%t1332	%t1331
	str r4,[fp,r9]                                    	@IRInst:assign	%t1332	%t1331
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1333	x	%t1332
	ldr r5,=5324                                      	@IRInst:sdiv	%t1333	x	%t1332
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1333	x	%t1332
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1333	x	%t1332
	ldr r5,=5328                                      	@IRInst:sdiv	%t1333	x	%t1332
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1333	x	%t1332
	ldr r4,=5328                                      	@IRInst:assign	ans	%t1333
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1333
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1333
.L719:
	b .L716                                           
.L715:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L716:
.L710:
	ldr r4,[fp,#4]                                    	@IRInst:assign	mr	ans
	ldr r9,=4660                                      	@IRInst:assign	mr	ans
	str r4,[fp,r9]                                    	@IRInst:assign	mr	ans
	b .L631                                           
.L633:
	ldr r4,=4664                                      	@IRInst:assign	ans	mres
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	mres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	mres
	ldr r4,[fp,#4]                                    	@IRInst:assign	pres	ans
	ldr r9,=4580                                      	@IRInst:assign	pres	ans
	str r4,[fp,r9]                                    	@IRInst:assign	pres	ans
.L629:
.L630:
	ldr r4,=4572                                      	@IRInst:assign	ml	pl
	ldr r4,[fp,r4]                                    	@IRInst:assign	ml	pl
	ldr r9,=5332                                      	@IRInst:assign	ml	pl
	str r4,[fp,r9]                                    	@IRInst:assign	ml	pl
	ldr r4,=4572                                      	@IRInst:assign	mr	pl
	ldr r4,[fp,r4]                                    	@IRInst:assign	mr	pl
	ldr r9,=5336                                      	@IRInst:assign	mr	pl
	str r4,[fp,r9]                                    	@IRInst:assign	mr	pl
	mov r4,#0                                         	@IRInst:assign	mres	0
	ldr r9,=5340                                      	@IRInst:assign	mres	0
	str r4,[fp,r9]                                    	@IRInst:assign	mres	0
.L720:
	ldr r4,=5336                                      	@IRInst:assign	%t1337	mr
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1337	mr
	ldr r9,=5344                                      	@IRInst:assign	%t1337	mr
	str r4,[fp,r9]                                    	@IRInst:assign	%t1337	mr
	ldr r4,=5344                                      	@IRInst:not_zero	%t1338	%t1337	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1338	%t1337	0
	mov r5,#0                                         	@IRInst:not_zero	%t1338	%t1337	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1338	%t1337	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1338	%t1337	0
	movne r6,#1                                       	@IRInst:not_zero	%t1338	%t1337	0
	ldr r10,=5348                                     	@IRInst:not_zero	%t1338	%t1337	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1338	%t1337	0
	beq .L722                                         
	b .L721                                           
.L721:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=5336                                      	@IRInst:assign	x	mr
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
.L723:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1339	i	16
	mov r5,#16                                        	@IRInst:blt	%t1339	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1339	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1339	i	16
	movge r6,#0                                       	@IRInst:blt	%t1339	i	16
	ldr r10,=5352                                     	@IRInst:blt	%t1339	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1339	i	16
	blt .L724                                         
	b .L725                                           
.L724:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1341	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1341	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1341	x	2
	ldr r5,=5360                                      	@IRInst:sdiv	%t1341	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1341	x	2
	ldr r4,=5360                                      	@IRInst:mul	%t1342	%t1341	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1342	%t1341	2
	mov r5,#2                                         	@IRInst:mul	%t1342	%t1341	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1342	%t1341	2
	ldr r5,=5364                                      	@IRInst:mul	%t1342	%t1341	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1342	%t1341	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1340	x	%t1342
	ldr r5,=5364                                      	@IRInst:sub	%t1340	x	%t1342
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1340	x	%t1342
	sub r6,r4,r5                                      	@IRInst:sub	%t1340	x	%t1342
	ldr r5,=5356                                      	@IRInst:sub	%t1340	x	%t1342
	str r6,[fp,r5]                                    	@IRInst:sub	%t1340	x	%t1342
.L729:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1344	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1344	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1344	y	2
	ldr r5,=5372                                      	@IRInst:sdiv	%t1344	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1344	y	2
	ldr r4,=5372                                      	@IRInst:mul	%t1345	%t1344	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1345	%t1344	2
	mov r5,#2                                         	@IRInst:mul	%t1345	%t1344	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1345	%t1344	2
	mov r5,#5376                                      	@IRInst:mul	%t1345	%t1344	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1345	%t1344	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1343	y	%t1345
	mov r5,#5376                                      	@IRInst:sub	%t1343	y	%t1345
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1343	y	%t1345
	sub r6,r4,r5                                      	@IRInst:sub	%t1343	y	%t1345
	ldr r5,=5368                                      	@IRInst:sub	%t1343	y	%t1345
	str r6,[fp,r5]                                    	@IRInst:sub	%t1343	y	%t1345
.L726:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1346	i	4
	mov r5,#4                                         	@IRInst:mul	%t1346	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1346	i	4
	ldr r5,=5380                                      	@IRInst:mul	%t1346	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1346	i	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1347	SHIFT_TABLE	%t1346
	ldr r5,=5380                                      	@IRInst:add	%t1347	SHIFT_TABLE	%t1346
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1347	SHIFT_TABLE	%t1346
	add r6,r4,r5                                      	@IRInst:add	%t1347	SHIFT_TABLE	%t1346
	ldr r5,=5384                                      	@IRInst:add	%t1347	SHIFT_TABLE	%t1346
	str r6,[fp,r5]                                    	@IRInst:add	%t1347	SHIFT_TABLE	%t1346
	ldr r4,=5384                                      	@IRInst:assign	%t1348	%t1347
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1348	%t1347
	ldr r4,[r4]                                       	@IRInst:assign	%t1348	%t1347
	ldr r9,=5388                                      	@IRInst:assign	%t1348	%t1347
	str r4,[fp,r9]                                    	@IRInst:assign	%t1348	%t1347
	mov r4,#1                                         	@IRInst:mul	%t1349	1	%t1348
	ldr r5,=5388                                      	@IRInst:mul	%t1349	1	%t1348
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1349	1	%t1348
	mul r6,r4,r5                                      	@IRInst:mul	%t1349	1	%t1348
	ldr r5,=5392                                      	@IRInst:mul	%t1349	1	%t1348
	str r6,[fp,r5]                                    	@IRInst:mul	%t1349	1	%t1348
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1350	ans	%t1349
	ldr r5,=5392                                      	@IRInst:add	%t1350	ans	%t1349
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1350	ans	%t1349
	add r6,r4,r5                                      	@IRInst:add	%t1350	ans	%t1349
	ldr r5,=5396                                      	@IRInst:add	%t1350	ans	%t1349
	str r6,[fp,r5]                                    	@IRInst:add	%t1350	ans	%t1349
	ldr r4,=5396                                      	@IRInst:assign	ans	%t1350
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1350
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1350
.L727:
.L728:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1351	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1351	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1351	x	2
	ldr r5,=5400                                      	@IRInst:sdiv	%t1351	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1351	x	2
	ldr r4,=5400                                      	@IRInst:assign	x	%t1351
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1351
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1351
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1352	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1352	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1352	y	2
	ldr r5,=5404                                      	@IRInst:sdiv	%t1352	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1352	y	2
	ldr r4,=5404                                      	@IRInst:assign	y	%t1352
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1352
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1352
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1353	i	1
	mov r5,#1                                         	@IRInst:add	%t1353	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1353	i	1
	ldr r5,=5408                                      	@IRInst:add	%t1353	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1353	i	1
	ldr r4,=5408                                      	@IRInst:assign	i	%t1353
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1353
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1353
	b .L723                                           
.L725:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t1354	ans
	ldr r9,=5412                                      	@IRInst:assign	%t1354	ans
	str r4,[fp,r9]                                    	@IRInst:assign	%t1354	ans
	ldr r4,=5412                                      	@IRInst:not_zero	%t1355	%t1354	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1355	%t1354	0
	mov r5,#0                                         	@IRInst:not_zero	%t1355	%t1354	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1355	%t1354	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1355	%t1354	0
	movne r6,#1                                       	@IRInst:not_zero	%t1355	%t1354	0
	ldr r10,=5416                                     	@IRInst:not_zero	%t1355	%t1354	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1355	%t1354	0
	beq .L731                                         
	b .L730                                           
.L730:
	ldr r4,=5340                                      	@IRInst:assign	al	mres
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	mres
	ldr r9,=5420                                      	@IRInst:assign	al	mres
	str r4,[fp,r9]                                    	@IRInst:assign	al	mres
	ldr r4,=5332                                      	@IRInst:assign	c	ml
	ldr r4,[fp,r4]                                    	@IRInst:assign	c	ml
	ldr r9,=5424                                      	@IRInst:assign	c	ml
	str r4,[fp,r9]                                    	@IRInst:assign	c	ml
.L733:
	ldr r4,=5424                                      	@IRInst:assign	%t1359	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1359	c
	ldr r9,=5432                                      	@IRInst:assign	%t1359	c
	str r4,[fp,r9]                                    	@IRInst:assign	%t1359	c
	ldr r4,=5432                                      	@IRInst:not_zero	%t1360	%t1359	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1360	%t1359	0
	mov r5,#0                                         	@IRInst:not_zero	%t1360	%t1359	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1360	%t1359	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1360	%t1359	0
	movne r6,#1                                       	@IRInst:not_zero	%t1360	%t1359	0
	ldr r10,=5436                                     	@IRInst:not_zero	%t1360	%t1359	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1360	%t1359	0
	beq .L735                                         
	b .L734                                           
.L734:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=5420                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,=5424                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L736:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1361	i	16
	mov r5,#16                                        	@IRInst:blt	%t1361	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1361	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1361	i	16
	movge r6,#0                                       	@IRInst:blt	%t1361	i	16
	mov r10,#5440                                     	@IRInst:blt	%t1361	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1361	i	16
	blt .L737                                         
	b .L738                                           
.L737:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1363	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1363	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1363	x	2
	ldr r5,=5448                                      	@IRInst:sdiv	%t1363	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1363	x	2
	ldr r4,=5448                                      	@IRInst:mul	%t1364	%t1363	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1364	%t1363	2
	mov r5,#2                                         	@IRInst:mul	%t1364	%t1363	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1364	%t1363	2
	ldr r5,=5452                                      	@IRInst:mul	%t1364	%t1363	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1364	%t1363	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1362	x	%t1364
	ldr r5,=5452                                      	@IRInst:sub	%t1362	x	%t1364
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1362	x	%t1364
	sub r6,r4,r5                                      	@IRInst:sub	%t1362	x	%t1364
	ldr r5,=5444                                      	@IRInst:sub	%t1362	x	%t1364
	str r6,[fp,r5]                                    	@IRInst:sub	%t1362	x	%t1364
.L739:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1366	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1366	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1366	y	2
	ldr r5,=5460                                      	@IRInst:sdiv	%t1366	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1366	y	2
	ldr r4,=5460                                      	@IRInst:mul	%t1367	%t1366	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1367	%t1366	2
	mov r5,#2                                         	@IRInst:mul	%t1367	%t1366	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1367	%t1366	2
	ldr r5,=5464                                      	@IRInst:mul	%t1367	%t1366	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1367	%t1366	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1365	y	%t1367
	ldr r5,=5464                                      	@IRInst:sub	%t1365	y	%t1367
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1365	y	%t1367
	sub r6,r4,r5                                      	@IRInst:sub	%t1365	y	%t1367
	ldr r5,=5456                                      	@IRInst:sub	%t1365	y	%t1367
	str r6,[fp,r5]                                    	@IRInst:sub	%t1365	y	%t1367
	ldr r4,=5456                                      	@IRInst:beq	%t1368	%t1365	0
	ldr r4,[fp,r4]                                    	@IRInst:beq	%t1368	%t1365	0
	mov r5,#0                                         	@IRInst:beq	%t1368	%t1365	0
	cmp r4,r5                                         	@IRInst:beq	%t1368	%t1365	0
	moveq r6,#1                                       	@IRInst:beq	%t1368	%t1365	0
	movne r6,#0                                       	@IRInst:beq	%t1368	%t1365	0
	ldr r10,=5468                                     	@IRInst:beq	%t1368	%t1365	0
	str r6,[fp,r10]                                   	@IRInst:beq	%t1368	%t1365	0
	beq .L742                                         
	b .L743                                           
.L742:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1369	i	4
	mov r5,#4                                         	@IRInst:mul	%t1369	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1369	i	4
	ldr r5,=5472                                      	@IRInst:mul	%t1369	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1369	i	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1370	SHIFT_TABLE	%t1369
	ldr r5,=5472                                      	@IRInst:add	%t1370	SHIFT_TABLE	%t1369
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1370	SHIFT_TABLE	%t1369
	add r6,r4,r5                                      	@IRInst:add	%t1370	SHIFT_TABLE	%t1369
	ldr r5,=5476                                      	@IRInst:add	%t1370	SHIFT_TABLE	%t1369
	str r6,[fp,r5]                                    	@IRInst:add	%t1370	SHIFT_TABLE	%t1369
	ldr r4,=5476                                      	@IRInst:assign	%t1371	%t1370
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1371	%t1370
	ldr r4,[r4]                                       	@IRInst:assign	%t1371	%t1370
	ldr r9,=5480                                      	@IRInst:assign	%t1371	%t1370
	str r4,[fp,r9]                                    	@IRInst:assign	%t1371	%t1370
	mov r4,#1                                         	@IRInst:mul	%t1372	1	%t1371
	ldr r5,=5480                                      	@IRInst:mul	%t1372	1	%t1371
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1372	1	%t1371
	mul r6,r4,r5                                      	@IRInst:mul	%t1372	1	%t1371
	ldr r5,=5484                                      	@IRInst:mul	%t1372	1	%t1371
	str r6,[fp,r5]                                    	@IRInst:mul	%t1372	1	%t1371
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1373	ans	%t1372
	ldr r5,=5484                                      	@IRInst:add	%t1373	ans	%t1372
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1373	ans	%t1372
	add r6,r4,r5                                      	@IRInst:add	%t1373	ans	%t1372
	ldr r5,=5488                                      	@IRInst:add	%t1373	ans	%t1372
	str r6,[fp,r5]                                    	@IRInst:add	%t1373	ans	%t1372
	ldr r4,=5488                                      	@IRInst:assign	ans	%t1373
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1373
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1373
.L743:
.L744:
	b .L741                                           
.L740:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1375	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1375	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1375	y	2
	ldr r5,=5496                                      	@IRInst:sdiv	%t1375	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1375	y	2
	ldr r4,=5496                                      	@IRInst:mul	%t1376	%t1375	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1376	%t1375	2
	mov r5,#2                                         	@IRInst:mul	%t1376	%t1375	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1376	%t1375	2
	ldr r5,=5500                                      	@IRInst:mul	%t1376	%t1375	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1376	%t1375	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1374	y	%t1376
	ldr r5,=5500                                      	@IRInst:sub	%t1374	y	%t1376
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1374	y	%t1376
	sub r6,r4,r5                                      	@IRInst:sub	%t1374	y	%t1376
	ldr r5,=5492                                      	@IRInst:sub	%t1374	y	%t1376
	str r6,[fp,r5]                                    	@IRInst:sub	%t1374	y	%t1376
.L745:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1377	i	4
	mov r5,#4                                         	@IRInst:mul	%t1377	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1377	i	4
	mov r5,#5504                                      	@IRInst:mul	%t1377	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1377	i	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1378	SHIFT_TABLE	%t1377
	mov r5,#5504                                      	@IRInst:add	%t1378	SHIFT_TABLE	%t1377
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1378	SHIFT_TABLE	%t1377
	add r6,r4,r5                                      	@IRInst:add	%t1378	SHIFT_TABLE	%t1377
	ldr r5,=5508                                      	@IRInst:add	%t1378	SHIFT_TABLE	%t1377
	str r6,[fp,r5]                                    	@IRInst:add	%t1378	SHIFT_TABLE	%t1377
	ldr r4,=5508                                      	@IRInst:assign	%t1379	%t1378
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1379	%t1378
	ldr r4,[r4]                                       	@IRInst:assign	%t1379	%t1378
	ldr r9,=5512                                      	@IRInst:assign	%t1379	%t1378
	str r4,[fp,r9]                                    	@IRInst:assign	%t1379	%t1378
	mov r4,#1                                         	@IRInst:mul	%t1380	1	%t1379
	ldr r5,=5512                                      	@IRInst:mul	%t1380	1	%t1379
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1380	1	%t1379
	mul r6,r4,r5                                      	@IRInst:mul	%t1380	1	%t1379
	ldr r5,=5516                                      	@IRInst:mul	%t1380	1	%t1379
	str r6,[fp,r5]                                    	@IRInst:mul	%t1380	1	%t1379
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1381	ans	%t1380
	ldr r5,=5516                                      	@IRInst:add	%t1381	ans	%t1380
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1381	ans	%t1380
	add r6,r4,r5                                      	@IRInst:add	%t1381	ans	%t1380
	ldr r5,=5520                                      	@IRInst:add	%t1381	ans	%t1380
	str r6,[fp,r5]                                    	@IRInst:add	%t1381	ans	%t1380
	ldr r4,=5520                                      	@IRInst:assign	ans	%t1381
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1381
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1381
.L746:
.L747:
.L741:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1382	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1382	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1382	x	2
	ldr r5,=5524                                      	@IRInst:sdiv	%t1382	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1382	x	2
	ldr r4,=5524                                      	@IRInst:assign	x	%t1382
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1382
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1382
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1383	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1383	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1383	y	2
	ldr r5,=5528                                      	@IRInst:sdiv	%t1383	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1383	y	2
	ldr r4,=5528                                      	@IRInst:assign	y	%t1383
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1383
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1383
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1384	i	1
	mov r5,#1                                         	@IRInst:add	%t1384	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1384	i	1
	ldr r5,=5532                                      	@IRInst:add	%t1384	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1384	i	1
	ldr r4,=5532                                      	@IRInst:assign	i	%t1384
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1384
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1384
	b .L736                                           
.L738:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	ldr r9,=5428                                      	@IRInst:assign	sum	ans
	str r4,[fp,r9]                                    	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=5420                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,=5424                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L748:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1385	i	16
	mov r5,#16                                        	@IRInst:blt	%t1385	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1385	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1385	i	16
	movge r6,#0                                       	@IRInst:blt	%t1385	i	16
	ldr r10,=5536                                     	@IRInst:blt	%t1385	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1385	i	16
	blt .L749                                         
	b .L750                                           
.L749:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1387	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1387	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1387	x	2
	ldr r5,=5544                                      	@IRInst:sdiv	%t1387	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1387	x	2
	ldr r4,=5544                                      	@IRInst:mul	%t1388	%t1387	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1388	%t1387	2
	mov r5,#2                                         	@IRInst:mul	%t1388	%t1387	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1388	%t1387	2
	ldr r5,=5548                                      	@IRInst:mul	%t1388	%t1387	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1388	%t1387	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1386	x	%t1388
	ldr r5,=5548                                      	@IRInst:sub	%t1386	x	%t1388
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1386	x	%t1388
	sub r6,r4,r5                                      	@IRInst:sub	%t1386	x	%t1388
	ldr r5,=5540                                      	@IRInst:sub	%t1386	x	%t1388
	str r6,[fp,r5]                                    	@IRInst:sub	%t1386	x	%t1388
.L754:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1390	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1390	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1390	y	2
	ldr r5,=5556                                      	@IRInst:sdiv	%t1390	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1390	y	2
	ldr r4,=5556                                      	@IRInst:mul	%t1391	%t1390	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1391	%t1390	2
	mov r5,#2                                         	@IRInst:mul	%t1391	%t1390	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1391	%t1390	2
	ldr r5,=5560                                      	@IRInst:mul	%t1391	%t1390	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1391	%t1390	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1389	y	%t1391
	ldr r5,=5560                                      	@IRInst:sub	%t1389	y	%t1391
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1389	y	%t1391
	sub r6,r4,r5                                      	@IRInst:sub	%t1389	y	%t1391
	ldr r5,=5552                                      	@IRInst:sub	%t1389	y	%t1391
	str r6,[fp,r5]                                    	@IRInst:sub	%t1389	y	%t1391
.L751:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1392	i	4
	mov r5,#4                                         	@IRInst:mul	%t1392	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1392	i	4
	ldr r5,=5564                                      	@IRInst:mul	%t1392	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1392	i	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1393	SHIFT_TABLE	%t1392
	ldr r5,=5564                                      	@IRInst:add	%t1393	SHIFT_TABLE	%t1392
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1393	SHIFT_TABLE	%t1392
	add r6,r4,r5                                      	@IRInst:add	%t1393	SHIFT_TABLE	%t1392
	mov r5,#5568                                      	@IRInst:add	%t1393	SHIFT_TABLE	%t1392
	str r6,[fp,r5]                                    	@IRInst:add	%t1393	SHIFT_TABLE	%t1392
	mov r4,#5568                                      	@IRInst:assign	%t1394	%t1393
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1394	%t1393
	ldr r4,[r4]                                       	@IRInst:assign	%t1394	%t1393
	ldr r9,=5572                                      	@IRInst:assign	%t1394	%t1393
	str r4,[fp,r9]                                    	@IRInst:assign	%t1394	%t1393
	mov r4,#1                                         	@IRInst:mul	%t1395	1	%t1394
	ldr r5,=5572                                      	@IRInst:mul	%t1395	1	%t1394
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1395	1	%t1394
	mul r6,r4,r5                                      	@IRInst:mul	%t1395	1	%t1394
	ldr r5,=5576                                      	@IRInst:mul	%t1395	1	%t1394
	str r6,[fp,r5]                                    	@IRInst:mul	%t1395	1	%t1394
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1396	ans	%t1395
	ldr r5,=5576                                      	@IRInst:add	%t1396	ans	%t1395
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1396	ans	%t1395
	add r6,r4,r5                                      	@IRInst:add	%t1396	ans	%t1395
	ldr r5,=5580                                      	@IRInst:add	%t1396	ans	%t1395
	str r6,[fp,r5]                                    	@IRInst:add	%t1396	ans	%t1395
	ldr r4,=5580                                      	@IRInst:assign	ans	%t1396
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1396
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1396
.L752:
.L753:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1397	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1397	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1397	x	2
	ldr r5,=5584                                      	@IRInst:sdiv	%t1397	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1397	x	2
	ldr r4,=5584                                      	@IRInst:assign	x	%t1397
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1397
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1397
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1398	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1398	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1398	y	2
	ldr r5,=5588                                      	@IRInst:sdiv	%t1398	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1398	y	2
	ldr r4,=5588                                      	@IRInst:assign	y	%t1398
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1398
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1398
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1399	i	1
	mov r5,#1                                         	@IRInst:add	%t1399	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1399	i	1
	ldr r5,=5592                                      	@IRInst:add	%t1399	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1399	i	1
	ldr r4,=5592                                      	@IRInst:assign	i	%t1399
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1399
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1399
	b .L748                                           
.L750:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	ldr r9,=5424                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t1400	1	15
	mov r5,#15                                        	@IRInst:bgt	%t1400	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t1400	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t1400	1	15
	movle r6,#0                                       	@IRInst:bgt	%t1400	1	15
	ldr r10,=5596                                     	@IRInst:bgt	%t1400	1	15
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1400	1	15
	bgt .L755                                         
	b .L756                                           
.L755:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L757                                           
.L756:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t1401	1	4
	mov r5,#4                                         	@IRInst:mul	%t1401	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1401	1	4
	ldr r5,=5600                                      	@IRInst:mul	%t1401	1	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1401	1	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1402	SHIFT_TABLE	%t1401
	ldr r5,=5600                                      	@IRInst:add	%t1402	SHIFT_TABLE	%t1401
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1402	SHIFT_TABLE	%t1401
	add r6,r4,r5                                      	@IRInst:add	%t1402	SHIFT_TABLE	%t1401
	ldr r5,=5604                                      	@IRInst:add	%t1402	SHIFT_TABLE	%t1401
	str r6,[fp,r5]                                    	@IRInst:add	%t1402	SHIFT_TABLE	%t1401
	ldr r4,=5604                                      	@IRInst:assign	%t1403	%t1402
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1403	%t1402
	ldr r4,[r4]                                       	@IRInst:assign	%t1403	%t1402
	ldr r9,=5608                                      	@IRInst:assign	%t1403	%t1402
	str r4,[fp,r9]                                    	@IRInst:assign	%t1403	%t1402
	ldr r4,=5424                                      	@IRInst:mul	%t1404	c	%t1403
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1404	c	%t1403
	ldr r5,=5608                                      	@IRInst:mul	%t1404	c	%t1403
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1404	c	%t1403
	mul r6,r4,r5                                      	@IRInst:mul	%t1404	c	%t1403
	ldr r5,=5612                                      	@IRInst:mul	%t1404	c	%t1403
	str r6,[fp,r5]                                    	@IRInst:mul	%t1404	c	%t1403
	ldr r4,=5612                                      	@IRInst:assign	x	%t1404
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1404
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1404
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L758:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1405	i	16
	mov r5,#16                                        	@IRInst:blt	%t1405	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1405	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1405	i	16
	movge r6,#0                                       	@IRInst:blt	%t1405	i	16
	ldr r10,=5616                                     	@IRInst:blt	%t1405	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1405	i	16
	blt .L759                                         
	b .L760                                           
.L759:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1407	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1407	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1407	x	2
	ldr r5,=5624                                      	@IRInst:sdiv	%t1407	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1407	x	2
	ldr r4,=5624                                      	@IRInst:mul	%t1408	%t1407	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1408	%t1407	2
	mov r5,#2                                         	@IRInst:mul	%t1408	%t1407	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1408	%t1407	2
	ldr r5,=5628                                      	@IRInst:mul	%t1408	%t1407	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1408	%t1407	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1406	x	%t1408
	ldr r5,=5628                                      	@IRInst:sub	%t1406	x	%t1408
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1406	x	%t1408
	sub r6,r4,r5                                      	@IRInst:sub	%t1406	x	%t1408
	ldr r5,=5620                                      	@IRInst:sub	%t1406	x	%t1408
	str r6,[fp,r5]                                    	@IRInst:sub	%t1406	x	%t1408
.L764:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1410	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1410	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1410	y	2
	ldr r5,=5636                                      	@IRInst:sdiv	%t1410	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1410	y	2
	ldr r4,=5636                                      	@IRInst:mul	%t1411	%t1410	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1411	%t1410	2
	mov r5,#2                                         	@IRInst:mul	%t1411	%t1410	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1411	%t1410	2
	ldr r5,=5640                                      	@IRInst:mul	%t1411	%t1410	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1411	%t1410	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1409	y	%t1411
	ldr r5,=5640                                      	@IRInst:sub	%t1409	y	%t1411
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1409	y	%t1411
	sub r6,r4,r5                                      	@IRInst:sub	%t1409	y	%t1411
	mov r5,#5632                                      	@IRInst:sub	%t1409	y	%t1411
	str r6,[fp,r5]                                    	@IRInst:sub	%t1409	y	%t1411
.L761:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1412	i	4
	mov r5,#4                                         	@IRInst:mul	%t1412	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1412	i	4
	ldr r5,=5644                                      	@IRInst:mul	%t1412	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1412	i	4
	ldr r4,.global_9_SHIFT_TABLE                      	@IRInst:add	%t1413	SHIFT_TABLE	%t1412
	ldr r5,=5644                                      	@IRInst:add	%t1413	SHIFT_TABLE	%t1412
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1413	SHIFT_TABLE	%t1412
	add r6,r4,r5                                      	@IRInst:add	%t1413	SHIFT_TABLE	%t1412
	ldr r5,=5648                                      	@IRInst:add	%t1413	SHIFT_TABLE	%t1412
	str r6,[fp,r5]                                    	@IRInst:add	%t1413	SHIFT_TABLE	%t1412
	ldr r4,=5648                                      	@IRInst:assign	%t1414	%t1413
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1414	%t1413
	ldr r4,[r4]                                       	@IRInst:assign	%t1414	%t1413
	ldr r9,=5652                                      	@IRInst:assign	%t1414	%t1413
	str r4,[fp,r9]                                    	@IRInst:assign	%t1414	%t1413
	mov r4,#1                                         	@IRInst:mul	%t1415	1	%t1414
	ldr r5,=5652                                      	@IRInst:mul	%t1415	1	%t1414
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1415	1	%t1414
	mul r6,r4,r5                                      	@IRInst:mul	%t1415	1	%t1414
	ldr r5,=5656                                      	@IRInst:mul	%t1415	1	%t1414
	str r6,[fp,r5]                                    	@IRInst:mul	%t1415	1	%t1414
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1416	ans	%t1415
	ldr r5,=5656                                      	@IRInst:add	%t1416	ans	%t1415
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1416	ans	%t1415
	add r6,r4,r5                                      	@IRInst:add	%t1416	ans	%t1415
	ldr r5,=5660                                      	@IRInst:add	%t1416	ans	%t1415
	str r6,[fp,r5]                                    	@IRInst:add	%t1416	ans	%t1415
	ldr r4,=5660                                      	@IRInst:assign	ans	%t1416
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1416
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1416
.L762:
.L763:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1417	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1417	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1417	x	2
	ldr r5,=5664                                      	@IRInst:sdiv	%t1417	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1417	x	2
	ldr r4,=5664                                      	@IRInst:assign	x	%t1417
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1417
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1417
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1418	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1418	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1418	y	2
	ldr r5,=5668                                      	@IRInst:sdiv	%t1418	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1418	y	2
	ldr r4,=5668                                      	@IRInst:assign	y	%t1418
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1418
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1418
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1419	i	1
	mov r5,#1                                         	@IRInst:add	%t1419	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1419	i	1
	ldr r5,=5672                                      	@IRInst:add	%t1419	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1419	i	1
	ldr r4,=5672                                      	@IRInst:assign	i	%t1419
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1419
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1419
	b .L758                                           
.L760:
.L757:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	ldr r9,=5424                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	ldr r4,=5428                                      	@IRInst:assign	al	sum
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	sum
	ldr r9,=5420                                      	@IRInst:assign	al	sum
	str r4,[fp,r9]                                    	@IRInst:assign	al	sum
.global_10_SHIFT_TABLE:
        .long   SHIFT_TABLE
	b .L733                                           
.L735:
	ldr r4,=5420                                      	@IRInst:assign	ans	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	mres	ans
	ldr r9,=5340                                      	@IRInst:assign	mres	ans
	str r4,[fp,r9]                                    	@IRInst:assign	mres	ans
.L731:
.L732:
	ldr r4,=5332                                      	@IRInst:assign	al	ml
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	ml
	ldr r9,=5676                                      	@IRInst:assign	al	ml
	str r4,[fp,r9]                                    	@IRInst:assign	al	ml
	ldr r4,=5332                                      	@IRInst:assign	c	ml
	ldr r4,[fp,r4]                                    	@IRInst:assign	c	ml
	ldr r9,=5680                                      	@IRInst:assign	c	ml
	str r4,[fp,r9]                                    	@IRInst:assign	c	ml
.L765:
	ldr r4,=5680                                      	@IRInst:assign	%t1423	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1423	c
	ldr r9,=5688                                      	@IRInst:assign	%t1423	c
	str r4,[fp,r9]                                    	@IRInst:assign	%t1423	c
	ldr r4,=5688                                      	@IRInst:not_zero	%t1424	%t1423	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t1424	%t1423	0
	mov r5,#0                                         	@IRInst:not_zero	%t1424	%t1423	0
	cmp r4,r5                                         	@IRInst:not_zero	%t1424	%t1423	0
	moveq r6,#0                                       	@IRInst:not_zero	%t1424	%t1423	0
	movne r6,#1                                       	@IRInst:not_zero	%t1424	%t1423	0
	ldr r10,=5692                                     	@IRInst:not_zero	%t1424	%t1423	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t1424	%t1423	0
	beq .L767                                         
	b .L766                                           
.L766:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=5676                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,=5680                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L768:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1425	i	16
	mov r5,#16                                        	@IRInst:blt	%t1425	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1425	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1425	i	16
	movge r6,#0                                       	@IRInst:blt	%t1425	i	16
	mov r10,#5696                                     	@IRInst:blt	%t1425	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1425	i	16
	blt .L769                                         
	b .L770                                           
.L769:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1427	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1427	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1427	x	2
	ldr r5,=5704                                      	@IRInst:sdiv	%t1427	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1427	x	2
	ldr r4,=5704                                      	@IRInst:mul	%t1428	%t1427	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1428	%t1427	2
	mov r5,#2                                         	@IRInst:mul	%t1428	%t1427	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1428	%t1427	2
	ldr r5,=5708                                      	@IRInst:mul	%t1428	%t1427	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1428	%t1427	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1426	x	%t1428
	ldr r5,=5708                                      	@IRInst:sub	%t1426	x	%t1428
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1426	x	%t1428
	sub r6,r4,r5                                      	@IRInst:sub	%t1426	x	%t1428
	ldr r5,=5700                                      	@IRInst:sub	%t1426	x	%t1428
	str r6,[fp,r5]                                    	@IRInst:sub	%t1426	x	%t1428
.L771:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1430	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1430	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1430	y	2
	ldr r5,=5716                                      	@IRInst:sdiv	%t1430	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1430	y	2
	ldr r4,=5716                                      	@IRInst:mul	%t1431	%t1430	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1431	%t1430	2
	mov r5,#2                                         	@IRInst:mul	%t1431	%t1430	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1431	%t1430	2
	ldr r5,=5720                                      	@IRInst:mul	%t1431	%t1430	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1431	%t1430	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1429	y	%t1431
	ldr r5,=5720                                      	@IRInst:sub	%t1429	y	%t1431
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1429	y	%t1431
	sub r6,r4,r5                                      	@IRInst:sub	%t1429	y	%t1431
	ldr r5,=5712                                      	@IRInst:sub	%t1429	y	%t1431
	str r6,[fp,r5]                                    	@IRInst:sub	%t1429	y	%t1431
	ldr r4,=5712                                      	@IRInst:beq	%t1432	%t1429	0
	ldr r4,[fp,r4]                                    	@IRInst:beq	%t1432	%t1429	0
	mov r5,#0                                         	@IRInst:beq	%t1432	%t1429	0
	cmp r4,r5                                         	@IRInst:beq	%t1432	%t1429	0
	moveq r6,#1                                       	@IRInst:beq	%t1432	%t1429	0
	movne r6,#0                                       	@IRInst:beq	%t1432	%t1429	0
	ldr r10,=5724                                     	@IRInst:beq	%t1432	%t1429	0
	str r6,[fp,r10]                                   	@IRInst:beq	%t1432	%t1429	0
	beq .L774                                         
	b .L775                                           
.L774:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1433	i	4
	mov r5,#4                                         	@IRInst:mul	%t1433	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1433	i	4
	ldr r5,=5728                                      	@IRInst:mul	%t1433	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1433	i	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1434	SHIFT_TABLE	%t1433
	ldr r5,=5728                                      	@IRInst:add	%t1434	SHIFT_TABLE	%t1433
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1434	SHIFT_TABLE	%t1433
	add r6,r4,r5                                      	@IRInst:add	%t1434	SHIFT_TABLE	%t1433
	ldr r5,=5732                                      	@IRInst:add	%t1434	SHIFT_TABLE	%t1433
	str r6,[fp,r5]                                    	@IRInst:add	%t1434	SHIFT_TABLE	%t1433
	ldr r4,=5732                                      	@IRInst:assign	%t1435	%t1434
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1435	%t1434
	ldr r4,[r4]                                       	@IRInst:assign	%t1435	%t1434
	ldr r9,=5736                                      	@IRInst:assign	%t1435	%t1434
	str r4,[fp,r9]                                    	@IRInst:assign	%t1435	%t1434
	mov r4,#1                                         	@IRInst:mul	%t1436	1	%t1435
	ldr r5,=5736                                      	@IRInst:mul	%t1436	1	%t1435
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1436	1	%t1435
	mul r6,r4,r5                                      	@IRInst:mul	%t1436	1	%t1435
	ldr r5,=5740                                      	@IRInst:mul	%t1436	1	%t1435
	str r6,[fp,r5]                                    	@IRInst:mul	%t1436	1	%t1435
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1437	ans	%t1436
	ldr r5,=5740                                      	@IRInst:add	%t1437	ans	%t1436
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1437	ans	%t1436
	add r6,r4,r5                                      	@IRInst:add	%t1437	ans	%t1436
	ldr r5,=5744                                      	@IRInst:add	%t1437	ans	%t1436
	str r6,[fp,r5]                                    	@IRInst:add	%t1437	ans	%t1436
	ldr r4,=5744                                      	@IRInst:assign	ans	%t1437
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1437
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1437
.L775:
.L776:
	b .L773                                           
.L772:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1439	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1439	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1439	y	2
	ldr r5,=5752                                      	@IRInst:sdiv	%t1439	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1439	y	2
	ldr r4,=5752                                      	@IRInst:mul	%t1440	%t1439	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1440	%t1439	2
	mov r5,#2                                         	@IRInst:mul	%t1440	%t1439	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1440	%t1439	2
	ldr r5,=5756                                      	@IRInst:mul	%t1440	%t1439	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1440	%t1439	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1438	y	%t1440
	ldr r5,=5756                                      	@IRInst:sub	%t1438	y	%t1440
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1438	y	%t1440
	sub r6,r4,r5                                      	@IRInst:sub	%t1438	y	%t1440
	ldr r5,=5748                                      	@IRInst:sub	%t1438	y	%t1440
	str r6,[fp,r5]                                    	@IRInst:sub	%t1438	y	%t1440
.L777:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1441	i	4
	mov r5,#4                                         	@IRInst:mul	%t1441	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1441	i	4
	mov r5,#5760                                      	@IRInst:mul	%t1441	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1441	i	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1442	SHIFT_TABLE	%t1441
	mov r5,#5760                                      	@IRInst:add	%t1442	SHIFT_TABLE	%t1441
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1442	SHIFT_TABLE	%t1441
	add r6,r4,r5                                      	@IRInst:add	%t1442	SHIFT_TABLE	%t1441
	ldr r5,=5764                                      	@IRInst:add	%t1442	SHIFT_TABLE	%t1441
	str r6,[fp,r5]                                    	@IRInst:add	%t1442	SHIFT_TABLE	%t1441
	ldr r4,=5764                                      	@IRInst:assign	%t1443	%t1442
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1443	%t1442
	ldr r4,[r4]                                       	@IRInst:assign	%t1443	%t1442
	ldr r9,=5768                                      	@IRInst:assign	%t1443	%t1442
	str r4,[fp,r9]                                    	@IRInst:assign	%t1443	%t1442
	mov r4,#1                                         	@IRInst:mul	%t1444	1	%t1443
	ldr r5,=5768                                      	@IRInst:mul	%t1444	1	%t1443
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1444	1	%t1443
	mul r6,r4,r5                                      	@IRInst:mul	%t1444	1	%t1443
	ldr r5,=5772                                      	@IRInst:mul	%t1444	1	%t1443
	str r6,[fp,r5]                                    	@IRInst:mul	%t1444	1	%t1443
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1445	ans	%t1444
	ldr r5,=5772                                      	@IRInst:add	%t1445	ans	%t1444
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1445	ans	%t1444
	add r6,r4,r5                                      	@IRInst:add	%t1445	ans	%t1444
	ldr r5,=5776                                      	@IRInst:add	%t1445	ans	%t1444
	str r6,[fp,r5]                                    	@IRInst:add	%t1445	ans	%t1444
	ldr r4,=5776                                      	@IRInst:assign	ans	%t1445
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1445
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1445
.L778:
.L779:
.L773:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1446	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1446	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1446	x	2
	ldr r5,=5780                                      	@IRInst:sdiv	%t1446	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1446	x	2
	ldr r4,=5780                                      	@IRInst:assign	x	%t1446
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1446
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1446
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1447	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1447	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1447	y	2
	ldr r5,=5784                                      	@IRInst:sdiv	%t1447	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1447	y	2
	ldr r4,=5784                                      	@IRInst:assign	y	%t1447
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1447
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1447
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1448	i	1
	mov r5,#1                                         	@IRInst:add	%t1448	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1448	i	1
	ldr r5,=5788                                      	@IRInst:add	%t1448	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1448	i	1
	ldr r4,=5788                                      	@IRInst:assign	i	%t1448
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1448
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1448
	b .L768                                           
.L770:
	ldr r4,[fp,#4]                                    	@IRInst:assign	sum	ans
	ldr r9,=5684                                      	@IRInst:assign	sum	ans
	str r4,[fp,r9]                                    	@IRInst:assign	sum	ans
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	ldr r4,=5676                                      	@IRInst:assign	x	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	al
	str r4,[fp,#12]                                   	@IRInst:assign	x	al
	ldr r4,=5680                                      	@IRInst:assign	y	c
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	c
	str r4,[fp,#16]                                   	@IRInst:assign	y	c
.L780:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1449	i	16
	mov r5,#16                                        	@IRInst:blt	%t1449	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1449	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1449	i	16
	movge r6,#0                                       	@IRInst:blt	%t1449	i	16
	ldr r10,=5792                                     	@IRInst:blt	%t1449	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1449	i	16
	blt .L781                                         
	b .L782                                           
.L781:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1451	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1451	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1451	x	2
	ldr r5,=5800                                      	@IRInst:sdiv	%t1451	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1451	x	2
	ldr r4,=5800                                      	@IRInst:mul	%t1452	%t1451	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1452	%t1451	2
	mov r5,#2                                         	@IRInst:mul	%t1452	%t1451	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1452	%t1451	2
	ldr r5,=5804                                      	@IRInst:mul	%t1452	%t1451	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1452	%t1451	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1450	x	%t1452
	ldr r5,=5804                                      	@IRInst:sub	%t1450	x	%t1452
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1450	x	%t1452
	sub r6,r4,r5                                      	@IRInst:sub	%t1450	x	%t1452
	ldr r5,=5796                                      	@IRInst:sub	%t1450	x	%t1452
	str r6,[fp,r5]                                    	@IRInst:sub	%t1450	x	%t1452
.L786:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1454	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1454	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1454	y	2
	ldr r5,=5812                                      	@IRInst:sdiv	%t1454	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1454	y	2
	ldr r4,=5812                                      	@IRInst:mul	%t1455	%t1454	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1455	%t1454	2
	mov r5,#2                                         	@IRInst:mul	%t1455	%t1454	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1455	%t1454	2
	ldr r5,=5816                                      	@IRInst:mul	%t1455	%t1454	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1455	%t1454	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1453	y	%t1455
	ldr r5,=5816                                      	@IRInst:sub	%t1453	y	%t1455
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1453	y	%t1455
	sub r6,r4,r5                                      	@IRInst:sub	%t1453	y	%t1455
	ldr r5,=5808                                      	@IRInst:sub	%t1453	y	%t1455
	str r6,[fp,r5]                                    	@IRInst:sub	%t1453	y	%t1455
.L783:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1456	i	4
	mov r5,#4                                         	@IRInst:mul	%t1456	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1456	i	4
	ldr r5,=5820                                      	@IRInst:mul	%t1456	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1456	i	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1457	SHIFT_TABLE	%t1456
	ldr r5,=5820                                      	@IRInst:add	%t1457	SHIFT_TABLE	%t1456
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1457	SHIFT_TABLE	%t1456
	add r6,r4,r5                                      	@IRInst:add	%t1457	SHIFT_TABLE	%t1456
	mov r5,#5824                                      	@IRInst:add	%t1457	SHIFT_TABLE	%t1456
	str r6,[fp,r5]                                    	@IRInst:add	%t1457	SHIFT_TABLE	%t1456
	mov r4,#5824                                      	@IRInst:assign	%t1458	%t1457
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1458	%t1457
	ldr r4,[r4]                                       	@IRInst:assign	%t1458	%t1457
	ldr r9,=5828                                      	@IRInst:assign	%t1458	%t1457
	str r4,[fp,r9]                                    	@IRInst:assign	%t1458	%t1457
	mov r4,#1                                         	@IRInst:mul	%t1459	1	%t1458
	ldr r5,=5828                                      	@IRInst:mul	%t1459	1	%t1458
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1459	1	%t1458
	mul r6,r4,r5                                      	@IRInst:mul	%t1459	1	%t1458
	ldr r5,=5832                                      	@IRInst:mul	%t1459	1	%t1458
	str r6,[fp,r5]                                    	@IRInst:mul	%t1459	1	%t1458
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1460	ans	%t1459
	ldr r5,=5832                                      	@IRInst:add	%t1460	ans	%t1459
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1460	ans	%t1459
	add r6,r4,r5                                      	@IRInst:add	%t1460	ans	%t1459
	ldr r5,=5836                                      	@IRInst:add	%t1460	ans	%t1459
	str r6,[fp,r5]                                    	@IRInst:add	%t1460	ans	%t1459
	ldr r4,=5836                                      	@IRInst:assign	ans	%t1460
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1460
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1460
.L784:
.L785:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1461	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1461	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1461	x	2
	ldr r5,=5840                                      	@IRInst:sdiv	%t1461	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1461	x	2
	ldr r4,=5840                                      	@IRInst:assign	x	%t1461
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1461
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1461
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1462	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1462	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1462	y	2
	ldr r5,=5844                                      	@IRInst:sdiv	%t1462	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1462	y	2
	ldr r4,=5844                                      	@IRInst:assign	y	%t1462
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1462
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1462
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1463	i	1
	mov r5,#1                                         	@IRInst:add	%t1463	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1463	i	1
	ldr r5,=5848                                      	@IRInst:add	%t1463	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1463	i	1
	ldr r4,=5848                                      	@IRInst:assign	i	%t1463
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1463
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1463
	b .L780                                           
.L782:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	ldr r9,=5680                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	mov r4,#1                                         	@IRInst:bgt	%t1464	1	15
	mov r5,#15                                        	@IRInst:bgt	%t1464	1	15
	cmp r4,r5                                         	@IRInst:bgt	%t1464	1	15
	movgt r6,#1                                       	@IRInst:bgt	%t1464	1	15
	movle r6,#0                                       	@IRInst:bgt	%t1464	1	15
	ldr r10,=5852                                     	@IRInst:bgt	%t1464	1	15
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1464	1	15
	bgt .L787                                         
	b .L788                                           
.L787:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	b .L789                                           
.L788:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
	mov r4,#1                                         	@IRInst:mul	%t1465	1	4
	mov r5,#4                                         	@IRInst:mul	%t1465	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1465	1	4
	ldr r5,=5856                                      	@IRInst:mul	%t1465	1	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1465	1	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1466	SHIFT_TABLE	%t1465
	ldr r5,=5856                                      	@IRInst:add	%t1466	SHIFT_TABLE	%t1465
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1466	SHIFT_TABLE	%t1465
	add r6,r4,r5                                      	@IRInst:add	%t1466	SHIFT_TABLE	%t1465
	ldr r5,=5860                                      	@IRInst:add	%t1466	SHIFT_TABLE	%t1465
	str r6,[fp,r5]                                    	@IRInst:add	%t1466	SHIFT_TABLE	%t1465
	ldr r4,=5860                                      	@IRInst:assign	%t1467	%t1466
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1467	%t1466
	ldr r4,[r4]                                       	@IRInst:assign	%t1467	%t1466
	ldr r9,=5864                                      	@IRInst:assign	%t1467	%t1466
	str r4,[fp,r9]                                    	@IRInst:assign	%t1467	%t1466
	ldr r4,=5680                                      	@IRInst:mul	%t1468	c	%t1467
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1468	c	%t1467
	ldr r5,=5864                                      	@IRInst:mul	%t1468	c	%t1467
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1468	c	%t1467
	mul r6,r4,r5                                      	@IRInst:mul	%t1468	c	%t1467
	ldr r5,=5868                                      	@IRInst:mul	%t1468	c	%t1467
	str r6,[fp,r5]                                    	@IRInst:mul	%t1468	c	%t1467
	ldr r4,=5868                                      	@IRInst:assign	x	%t1468
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1468
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1468
	ldr r4,=65535                                     	@IRInst:assign	y	65535
	str r4,[fp,#16]                                   	@IRInst:assign	y	65535
.L790:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t1469	i	16
	mov r5,#16                                        	@IRInst:blt	%t1469	i	16
	cmp r4,r5                                         	@IRInst:blt	%t1469	i	16
	movlt r6,#1                                       	@IRInst:blt	%t1469	i	16
	movge r6,#0                                       	@IRInst:blt	%t1469	i	16
	ldr r10,=5872                                     	@IRInst:blt	%t1469	i	16
	str r6,[fp,r10]                                   	@IRInst:blt	%t1469	i	16
	blt .L791                                         
	b .L792                                           
.L791:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1471	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1471	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1471	x	2
	ldr r5,=5880                                      	@IRInst:sdiv	%t1471	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1471	x	2
	ldr r4,=5880                                      	@IRInst:mul	%t1472	%t1471	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1472	%t1471	2
	mov r5,#2                                         	@IRInst:mul	%t1472	%t1471	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1472	%t1471	2
	ldr r5,=5884                                      	@IRInst:mul	%t1472	%t1471	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1472	%t1471	2
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t1470	x	%t1472
	ldr r5,=5884                                      	@IRInst:sub	%t1470	x	%t1472
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1470	x	%t1472
	sub r6,r4,r5                                      	@IRInst:sub	%t1470	x	%t1472
	ldr r5,=5876                                      	@IRInst:sub	%t1470	x	%t1472
	str r6,[fp,r5]                                    	@IRInst:sub	%t1470	x	%t1472
.L796:
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1474	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1474	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1474	y	2
	ldr r5,=5892                                      	@IRInst:sdiv	%t1474	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1474	y	2
	ldr r4,=5892                                      	@IRInst:mul	%t1475	%t1474	2
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1475	%t1474	2
	mov r5,#2                                         	@IRInst:mul	%t1475	%t1474	2
	mul r6,r4,r5                                      	@IRInst:mul	%t1475	%t1474	2
	ldr r5,=5896                                      	@IRInst:mul	%t1475	%t1474	2
	str r6,[fp,r5]                                    	@IRInst:mul	%t1475	%t1474	2
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t1473	y	%t1475
	ldr r5,=5896                                      	@IRInst:sub	%t1473	y	%t1475
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1473	y	%t1475
	sub r6,r4,r5                                      	@IRInst:sub	%t1473	y	%t1475
	mov r5,#5888                                      	@IRInst:sub	%t1473	y	%t1475
	str r6,[fp,r5]                                    	@IRInst:sub	%t1473	y	%t1475
.L793:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t1476	i	4
	mov r5,#4                                         	@IRInst:mul	%t1476	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1476	i	4
	ldr r5,=5900                                      	@IRInst:mul	%t1476	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1476	i	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1477	SHIFT_TABLE	%t1476
	ldr r5,=5900                                      	@IRInst:add	%t1477	SHIFT_TABLE	%t1476
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1477	SHIFT_TABLE	%t1476
	add r6,r4,r5                                      	@IRInst:add	%t1477	SHIFT_TABLE	%t1476
	ldr r5,=5904                                      	@IRInst:add	%t1477	SHIFT_TABLE	%t1476
	str r6,[fp,r5]                                    	@IRInst:add	%t1477	SHIFT_TABLE	%t1476
	ldr r4,=5904                                      	@IRInst:assign	%t1478	%t1477
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1478	%t1477
	ldr r4,[r4]                                       	@IRInst:assign	%t1478	%t1477
	ldr r9,=5908                                      	@IRInst:assign	%t1478	%t1477
	str r4,[fp,r9]                                    	@IRInst:assign	%t1478	%t1477
	mov r4,#1                                         	@IRInst:mul	%t1479	1	%t1478
	ldr r5,=5908                                      	@IRInst:mul	%t1479	1	%t1478
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t1479	1	%t1478
	mul r6,r4,r5                                      	@IRInst:mul	%t1479	1	%t1478
	ldr r5,=5912                                      	@IRInst:mul	%t1479	1	%t1478
	str r6,[fp,r5]                                    	@IRInst:mul	%t1479	1	%t1478
	ldr r4,[fp,#4]                                    	@IRInst:add	%t1480	ans	%t1479
	ldr r5,=5912                                      	@IRInst:add	%t1480	ans	%t1479
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1480	ans	%t1479
	add r6,r4,r5                                      	@IRInst:add	%t1480	ans	%t1479
	ldr r5,=5916                                      	@IRInst:add	%t1480	ans	%t1479
	str r6,[fp,r5]                                    	@IRInst:add	%t1480	ans	%t1479
	ldr r4,=5916                                      	@IRInst:assign	ans	%t1480
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1480
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1480
.L794:
.L795:
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1481	x	2
	mov r5,#2                                         	@IRInst:sdiv	%t1481	x	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1481	x	2
	ldr r5,=5920                                      	@IRInst:sdiv	%t1481	x	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1481	x	2
	ldr r4,=5920                                      	@IRInst:assign	x	%t1481
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1481
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1481
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t1482	y	2
	mov r5,#2                                         	@IRInst:sdiv	%t1482	y	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1482	y	2
	ldr r5,=5924                                      	@IRInst:sdiv	%t1482	y	2
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1482	y	2
	ldr r4,=5924                                      	@IRInst:assign	y	%t1482
	ldr r4,[fp,r4]                                    	@IRInst:assign	y	%t1482
	str r4,[fp,#16]                                   	@IRInst:assign	y	%t1482
	ldr r4,[fp,#8]                                    	@IRInst:add	%t1483	i	1
	mov r5,#1                                         	@IRInst:add	%t1483	i	1
	add r6,r4,r5                                      	@IRInst:add	%t1483	i	1
	ldr r5,=5928                                      	@IRInst:add	%t1483	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1483	i	1
	ldr r4,=5928                                      	@IRInst:assign	i	%t1483
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t1483
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t1483
	b .L790                                           
.L792:
.L789:
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	ans
	ldr r9,=5680                                      	@IRInst:assign	c	ans
	str r4,[fp,r9]                                    	@IRInst:assign	c	ans
	ldr r4,=5684                                      	@IRInst:assign	al	sum
	ldr r4,[fp,r4]                                    	@IRInst:assign	al	sum
	ldr r9,=5676                                      	@IRInst:assign	al	sum
	str r4,[fp,r9]                                    	@IRInst:assign	al	sum
	b .L765                                           
.L767:
	ldr r4,=5676                                      	@IRInst:assign	ans	al
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	al
	str r4,[fp,#4]                                    	@IRInst:assign	ans	al
	ldr r4,[fp,#4]                                    	@IRInst:assign	ml	ans
	ldr r9,=5332                                      	@IRInst:assign	ml	ans
	str r4,[fp,r9]                                    	@IRInst:assign	ml	ans
	ldr r4,=5336                                      	@IRInst:assign	x	mr
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	mr
	str r4,[fp,#12]                                   	@IRInst:assign	x	mr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t1484	y	15
	mov r5,#15                                        	@IRInst:bge	%t1484	y	15
	cmp r4,r5                                         	@IRInst:bge	%t1484	y	15
	movge r6,#1                                       	@IRInst:bge	%t1484	y	15
	movlt r6,#0                                       	@IRInst:bge	%t1484	y	15
	ldr r10,=5932                                     	@IRInst:bge	%t1484	y	15
	str r6,[fp,r10]                                   	@IRInst:bge	%t1484	y	15
	bge .L797                                         
	b .L798                                           
.L797:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t1485	x	0
	mov r5,#0                                         	@IRInst:blt	%t1485	x	0
	cmp r4,r5                                         	@IRInst:blt	%t1485	x	0
	movlt r6,#1                                       	@IRInst:blt	%t1485	x	0
	movge r6,#0                                       	@IRInst:blt	%t1485	x	0
	ldr r10,=5936                                     	@IRInst:blt	%t1485	x	0
	str r6,[fp,r10]                                   	@IRInst:blt	%t1485	x	0
	blt .L800                                         
	b .L801                                           
.L800:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L802                                           
.L801:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L802:
	b .L799                                           
.L798:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t1486	y	0
	mov r5,#0                                         	@IRInst:bgt	%t1486	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t1486	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t1486	y	0
	movle r6,#0                                       	@IRInst:bgt	%t1486	y	0
	ldr r10,=5940                                     	@IRInst:bgt	%t1486	y	0
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1486	y	0
	bgt .L803                                         
	b .L804                                           
.L803:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t1487	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t1487	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t1487	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t1487	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t1487	x	32767
	ldr r10,=5944                                     	@IRInst:bgt	%t1487	x	32767
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1487	x	32767
	bgt .L806                                         
	b .L807                                           
.L806:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1488	y	4
	mov r5,#4                                         	@IRInst:mul	%t1488	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1488	y	4
	ldr r5,=5948                                      	@IRInst:mul	%t1488	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1488	y	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1489	SHIFT_TABLE	%t1488
	ldr r5,=5948                                      	@IRInst:add	%t1489	SHIFT_TABLE	%t1488
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1489	SHIFT_TABLE	%t1488
	add r6,r4,r5                                      	@IRInst:add	%t1489	SHIFT_TABLE	%t1488
	mov r5,#5952                                      	@IRInst:add	%t1489	SHIFT_TABLE	%t1488
	str r6,[fp,r5]                                    	@IRInst:add	%t1489	SHIFT_TABLE	%t1488
	mov r4,#5952                                      	@IRInst:assign	%t1490	%t1489
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1490	%t1489
	ldr r4,[r4]                                       	@IRInst:assign	%t1490	%t1489
	ldr r9,=5956                                      	@IRInst:assign	%t1490	%t1489
	str r4,[fp,r9]                                    	@IRInst:assign	%t1490	%t1489
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1491	x	%t1490
	ldr r5,=5956                                      	@IRInst:sdiv	%t1491	x	%t1490
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1491	x	%t1490
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1491	x	%t1490
	ldr r5,=5960                                      	@IRInst:sdiv	%t1491	x	%t1490
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1491	x	%t1490
	ldr r4,=5960                                      	@IRInst:assign	x	%t1491
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1491
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1491
	ldr r4,[fp,#12]                                   	@IRInst:add	%t1492	x	65536
	mov r5,#65536                                     	@IRInst:add	%t1492	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t1492	x	65536
	ldr r5,=5964                                      	@IRInst:add	%t1492	x	65536
	str r6,[fp,r5]                                    	@IRInst:add	%t1492	x	65536
	mov r4,#15                                        	@IRInst:sub	%t1494	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t1494	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t1494	15	y
	ldr r5,=5972                                      	@IRInst:sub	%t1494	15	y
	str r6,[fp,r5]                                    	@IRInst:sub	%t1494	15	y
	ldr r4,=5972                                      	@IRInst:add	%t1495	%t1494	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t1495	%t1494	1
	mov r5,#1                                         	@IRInst:add	%t1495	%t1494	1
	add r6,r4,r5                                      	@IRInst:add	%t1495	%t1494	1
	ldr r5,=5976                                      	@IRInst:add	%t1495	%t1494	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1495	%t1494	1
	ldr r4,=5976                                      	@IRInst:mul	%t1493	%t1495	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1493	%t1495	4
	mov r5,#4                                         	@IRInst:mul	%t1493	%t1495	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1493	%t1495	4
	ldr r5,=5968                                      	@IRInst:mul	%t1493	%t1495	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1493	%t1495	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1496	SHIFT_TABLE	%t1493
	ldr r5,=5968                                      	@IRInst:add	%t1496	SHIFT_TABLE	%t1493
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1496	SHIFT_TABLE	%t1493
	add r6,r4,r5                                      	@IRInst:add	%t1496	SHIFT_TABLE	%t1493
	ldr r5,=5980                                      	@IRInst:add	%t1496	SHIFT_TABLE	%t1493
	str r6,[fp,r5]                                    	@IRInst:add	%t1496	SHIFT_TABLE	%t1493
	ldr r4,=5980                                      	@IRInst:assign	%t1497	%t1496
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1497	%t1496
	ldr r4,[r4]                                       	@IRInst:assign	%t1497	%t1496
	ldr r9,=5984                                      	@IRInst:assign	%t1497	%t1496
	str r4,[fp,r9]                                    	@IRInst:assign	%t1497	%t1496
	ldr r4,=5964                                      	@IRInst:sub	%t1498	%t1492	%t1497
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t1498	%t1492	%t1497
	ldr r5,=5984                                      	@IRInst:sub	%t1498	%t1492	%t1497
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1498	%t1492	%t1497
	sub r6,r4,r5                                      	@IRInst:sub	%t1498	%t1492	%t1497
	ldr r5,=5988                                      	@IRInst:sub	%t1498	%t1492	%t1497
	str r6,[fp,r5]                                    	@IRInst:sub	%t1498	%t1492	%t1497
	ldr r4,=5988                                      	@IRInst:assign	ans	%t1498
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1498
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1498
	b .L808                                           
.L807:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1499	y	4
	mov r5,#4                                         	@IRInst:mul	%t1499	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1499	y	4
	ldr r5,=5992                                      	@IRInst:mul	%t1499	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1499	y	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1500	SHIFT_TABLE	%t1499
	ldr r5,=5992                                      	@IRInst:add	%t1500	SHIFT_TABLE	%t1499
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1500	SHIFT_TABLE	%t1499
	add r6,r4,r5                                      	@IRInst:add	%t1500	SHIFT_TABLE	%t1499
	ldr r5,=5996                                      	@IRInst:add	%t1500	SHIFT_TABLE	%t1499
	str r6,[fp,r5]                                    	@IRInst:add	%t1500	SHIFT_TABLE	%t1499
	ldr r4,=5996                                      	@IRInst:assign	%t1501	%t1500
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1501	%t1500
	ldr r4,[r4]                                       	@IRInst:assign	%t1501	%t1500
	ldr r9,=6000                                      	@IRInst:assign	%t1501	%t1500
	str r4,[fp,r9]                                    	@IRInst:assign	%t1501	%t1500
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1502	x	%t1501
	ldr r5,=6000                                      	@IRInst:sdiv	%t1502	x	%t1501
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1502	x	%t1501
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1502	x	%t1501
	ldr r5,=6004                                      	@IRInst:sdiv	%t1502	x	%t1501
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1502	x	%t1501
	ldr r4,=6004                                      	@IRInst:assign	ans	%t1502
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1502
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1502
.L808:
	b .L805                                           
.L804:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L805:
.L799:
	ldr r4,[fp,#4]                                    	@IRInst:assign	mr	ans
	ldr r9,=5336                                      	@IRInst:assign	mr	ans
	str r4,[fp,r9]                                    	@IRInst:assign	mr	ans
	b .L720                                           
.L722:
	ldr r4,=5340                                      	@IRInst:assign	ans	mres
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	mres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	mres
	ldr r4,[fp,#4]                                    	@IRInst:assign	pl	ans
	ldr r9,=4572                                      	@IRInst:assign	pl	ans
	str r4,[fp,r9]                                    	@IRInst:assign	pl	ans
	ldr r4,=4576                                      	@IRInst:assign	x	pr
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	pr
	str r4,[fp,#12]                                   	@IRInst:assign	x	pr
	mov r4,#1                                         	@IRInst:assign	y	1
	str r4,[fp,#16]                                   	@IRInst:assign	y	1
	ldr r4,[fp,#16]                                   	@IRInst:bge	%t1503	y	15
	mov r5,#15                                        	@IRInst:bge	%t1503	y	15
	cmp r4,r5                                         	@IRInst:bge	%t1503	y	15
	movge r6,#1                                       	@IRInst:bge	%t1503	y	15
	movlt r6,#0                                       	@IRInst:bge	%t1503	y	15
	ldr r10,=6008                                     	@IRInst:bge	%t1503	y	15
	str r6,[fp,r10]                                   	@IRInst:bge	%t1503	y	15
	bge .L809                                         
	b .L810                                           
.L809:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t1504	x	0
	mov r5,#0                                         	@IRInst:blt	%t1504	x	0
	cmp r4,r5                                         	@IRInst:blt	%t1504	x	0
	movlt r6,#1                                       	@IRInst:blt	%t1504	x	0
	movge r6,#0                                       	@IRInst:blt	%t1504	x	0
	ldr r10,=6012                                     	@IRInst:blt	%t1504	x	0
	str r6,[fp,r10]                                   	@IRInst:blt	%t1504	x	0
	blt .L812                                         
	b .L813                                           
.L812:
	ldr r4,=65535                                     	@IRInst:assign	ans	65535
	str r4,[fp,#4]                                    	@IRInst:assign	ans	65535
	b .L814                                           
.L813:
	mov r4,#0                                         	@IRInst:assign	ans	0
	str r4,[fp,#4]                                    	@IRInst:assign	ans	0
.L814:
	b .L811                                           
.L810:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t1505	y	0
	mov r5,#0                                         	@IRInst:bgt	%t1505	y	0
	cmp r4,r5                                         	@IRInst:bgt	%t1505	y	0
	movgt r6,#1                                       	@IRInst:bgt	%t1505	y	0
	movle r6,#0                                       	@IRInst:bgt	%t1505	y	0
	mov r10,#6016                                     	@IRInst:bgt	%t1505	y	0
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1505	y	0
	bgt .L815                                         
	b .L816                                           
.L815:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t1506	x	32767
	ldr r5,=32767                                     	@IRInst:bgt	%t1506	x	32767
	cmp r4,r5                                         	@IRInst:bgt	%t1506	x	32767
	movgt r6,#1                                       	@IRInst:bgt	%t1506	x	32767
	movle r6,#0                                       	@IRInst:bgt	%t1506	x	32767
	ldr r10,=6020                                     	@IRInst:bgt	%t1506	x	32767
	str r6,[fp,r10]                                   	@IRInst:bgt	%t1506	x	32767
	bgt .L818                                         
	b .L819                                           
.L818:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1507	y	4
	mov r5,#4                                         	@IRInst:mul	%t1507	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1507	y	4
	ldr r5,=6024                                      	@IRInst:mul	%t1507	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1507	y	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1508	SHIFT_TABLE	%t1507
	ldr r5,=6024                                      	@IRInst:add	%t1508	SHIFT_TABLE	%t1507
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1508	SHIFT_TABLE	%t1507
	add r6,r4,r5                                      	@IRInst:add	%t1508	SHIFT_TABLE	%t1507
	ldr r5,=6028                                      	@IRInst:add	%t1508	SHIFT_TABLE	%t1507
	str r6,[fp,r5]                                    	@IRInst:add	%t1508	SHIFT_TABLE	%t1507
	ldr r4,=6028                                      	@IRInst:assign	%t1509	%t1508
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1509	%t1508
	ldr r4,[r4]                                       	@IRInst:assign	%t1509	%t1508
	ldr r9,=6032                                      	@IRInst:assign	%t1509	%t1508
	str r4,[fp,r9]                                    	@IRInst:assign	%t1509	%t1508
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1510	x	%t1509
	ldr r5,=6032                                      	@IRInst:sdiv	%t1510	x	%t1509
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1510	x	%t1509
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1510	x	%t1509
	ldr r5,=6036                                      	@IRInst:sdiv	%t1510	x	%t1509
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1510	x	%t1509
	ldr r4,=6036                                      	@IRInst:assign	x	%t1510
	ldr r4,[fp,r4]                                    	@IRInst:assign	x	%t1510
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t1510
	ldr r4,[fp,#12]                                   	@IRInst:add	%t1511	x	65536
	mov r5,#65536                                     	@IRInst:add	%t1511	x	65536
	add r6,r4,r5                                      	@IRInst:add	%t1511	x	65536
	ldr r5,=6040                                      	@IRInst:add	%t1511	x	65536
	str r6,[fp,r5]                                    	@IRInst:add	%t1511	x	65536
	mov r4,#15                                        	@IRInst:sub	%t1513	15	y
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t1513	15	y
	sub r6,r4,r5                                      	@IRInst:sub	%t1513	15	y
	ldr r5,=6048                                      	@IRInst:sub	%t1513	15	y
	str r6,[fp,r5]                                    	@IRInst:sub	%t1513	15	y
	ldr r4,=6048                                      	@IRInst:add	%t1514	%t1513	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t1514	%t1513	1
	mov r5,#1                                         	@IRInst:add	%t1514	%t1513	1
	add r6,r4,r5                                      	@IRInst:add	%t1514	%t1513	1
	ldr r5,=6052                                      	@IRInst:add	%t1514	%t1513	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1514	%t1513	1
	ldr r4,=6052                                      	@IRInst:mul	%t1512	%t1514	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t1512	%t1514	4
	mov r5,#4                                         	@IRInst:mul	%t1512	%t1514	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1512	%t1514	4
	ldr r5,=6044                                      	@IRInst:mul	%t1512	%t1514	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1512	%t1514	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1515	SHIFT_TABLE	%t1512
	ldr r5,=6044                                      	@IRInst:add	%t1515	SHIFT_TABLE	%t1512
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1515	SHIFT_TABLE	%t1512
	add r6,r4,r5                                      	@IRInst:add	%t1515	SHIFT_TABLE	%t1512
	ldr r5,=6056                                      	@IRInst:add	%t1515	SHIFT_TABLE	%t1512
	str r6,[fp,r5]                                    	@IRInst:add	%t1515	SHIFT_TABLE	%t1512
	ldr r4,=6056                                      	@IRInst:assign	%t1516	%t1515
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1516	%t1515
	ldr r4,[r4]                                       	@IRInst:assign	%t1516	%t1515
	ldr r9,=6060                                      	@IRInst:assign	%t1516	%t1515
	str r4,[fp,r9]                                    	@IRInst:assign	%t1516	%t1515
	ldr r4,=6040                                      	@IRInst:sub	%t1517	%t1511	%t1516
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t1517	%t1511	%t1516
	ldr r5,=6060                                      	@IRInst:sub	%t1517	%t1511	%t1516
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t1517	%t1511	%t1516
	sub r6,r4,r5                                      	@IRInst:sub	%t1517	%t1511	%t1516
	ldr r5,=6064                                      	@IRInst:sub	%t1517	%t1511	%t1516
	str r6,[fp,r5]                                    	@IRInst:sub	%t1517	%t1511	%t1516
	ldr r4,=6064                                      	@IRInst:assign	ans	%t1517
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1517
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1517
	b .L820                                           
.L819:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t1518	y	4
	mov r5,#4                                         	@IRInst:mul	%t1518	y	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1518	y	4
	ldr r5,=6068                                      	@IRInst:mul	%t1518	y	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1518	y	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1519	SHIFT_TABLE	%t1518
	ldr r5,=6068                                      	@IRInst:add	%t1519	SHIFT_TABLE	%t1518
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1519	SHIFT_TABLE	%t1518
	add r6,r4,r5                                      	@IRInst:add	%t1519	SHIFT_TABLE	%t1518
	ldr r5,=6072                                      	@IRInst:add	%t1519	SHIFT_TABLE	%t1518
	str r6,[fp,r5]                                    	@IRInst:add	%t1519	SHIFT_TABLE	%t1518
	ldr r4,=6072                                      	@IRInst:assign	%t1520	%t1519
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1520	%t1519
	ldr r4,[r4]                                       	@IRInst:assign	%t1520	%t1519
	ldr r9,=6076                                      	@IRInst:assign	%t1520	%t1519
	str r4,[fp,r9]                                    	@IRInst:assign	%t1520	%t1519
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t1521	x	%t1520
	ldr r5,=6076                                      	@IRInst:sdiv	%t1521	x	%t1520
	ldr r5,[fp,r5]                                    	@IRInst:sdiv	%t1521	x	%t1520
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t1521	x	%t1520
	mov r5,#6080                                      	@IRInst:sdiv	%t1521	x	%t1520
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t1521	x	%t1520
	mov r4,#6080                                      	@IRInst:assign	ans	%t1521
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t1521
	str r4,[fp,#4]                                    	@IRInst:assign	ans	%t1521
.L820:
	b .L817                                           
.L816:
	ldr r4,[fp,#12]                                   	@IRInst:assign	ans	x
	str r4,[fp,#4]                                    	@IRInst:assign	ans	x
.L817:
.L811:
	ldr r4,[fp,#4]                                    	@IRInst:assign	pr	ans
	ldr r9,=4576                                      	@IRInst:assign	pr	ans
	str r4,[fp,r9]                                    	@IRInst:assign	pr	ans
	b .L618                                           
.L620:
	ldr r4,=4580                                      	@IRInst:assign	ans	pres
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	pres
	str r4,[fp,#4]                                    	@IRInst:assign	ans	pres
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t1522	cur	4
	mov r5,#4                                         	@IRInst:mul	%t1522	cur	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1522	cur	4
	ldr r5,=6084                                      	@IRInst:mul	%t1522	cur	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t1522	cur	4
	ldr r4,.global_10_SHIFT_TABLE                     	@IRInst:add	%t1523	SHIFT_TABLE	%t1522
	ldr r5,=6084                                      	@IRInst:add	%t1523	SHIFT_TABLE	%t1522
	ldr r5,[fp,r5]                                    	@IRInst:add	%t1523	SHIFT_TABLE	%t1522
	add r6,r4,r5                                      	@IRInst:add	%t1523	SHIFT_TABLE	%t1522
	ldr r5,=6088                                      	@IRInst:add	%t1523	SHIFT_TABLE	%t1522
	str r6,[fp,r5]                                    	@IRInst:add	%t1523	SHIFT_TABLE	%t1522
	ldr r4,=6088                                      	@IRInst:assign	%t1524	%t1523
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t1524	%t1523
	ldr r4,[r4]                                       	@IRInst:assign	%t1524	%t1523
	ldr r9,=6092                                      	@IRInst:assign	%t1524	%t1523
	str r4,[fp,r9]                                    	@IRInst:assign	%t1524	%t1523
	ldr r4,=6092                                      	@IRInst:beq	%t1525	%t1524	ans
	ldr r4,[fp,r4]                                    	@IRInst:beq	%t1525	%t1524	ans
	ldr r5,[fp,#4]                                    	@IRInst:beq	%t1525	%t1524	ans
	cmp r4,r5                                         	@IRInst:beq	%t1525	%t1524	ans
	moveq r6,#1                                       	@IRInst:beq	%t1525	%t1524	ans
	movne r6,#0                                       	@IRInst:beq	%t1525	%t1524	ans
	ldr r10,=6096                                     	@IRInst:beq	%t1525	%t1524	ans
	str r6,[fp,r10]                                   	@IRInst:beq	%t1525	%t1524	ans
	beq .L822                                         
	b .L821                                           
.L821:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L2                                             
.L822:
.L823:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t1526	cur	1
	mov r5,#1                                         	@IRInst:add	%t1526	cur	1
	add r6,r4,r5                                      	@IRInst:add	%t1526	cur	1
	ldr r5,=6100                                      	@IRInst:add	%t1526	cur	1
	str r6,[fp,r5]                                    	@IRInst:add	%t1526	cur	1
	ldr r4,=6100                                      	@IRInst:assign	cur	%t1526
	ldr r4,[fp,r4]                                    	@IRInst:assign	cur	%t1526
	str r4,[fp,#20]                                   	@IRInst:assign	cur	%t1526
	b .L615                                           
.L617:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#984                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_11_SHIFT_TABLE:
        .long   SHIFT_TABLE
.global main
.type main, %function
main:
.L824:
	push {r10,fp,lr}                                  
	sub sp,sp,#136                                    
	add fp,sp,#0                                      
	mov r4,#0                                         	@IRInst:mul	%t1528	0	4
	mov r5,#4                                         	@IRInst:mul	%t1528	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1528	0	4
	str r6,[fp,#4]                                    	@IRInst:mul	%t1528	0	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1529	SHIFT_TABLE	%t1528
	ldr r5,[fp,#4]                                    	@IRInst:add	%t1529	SHIFT_TABLE	%t1528
	add r6,r4,r5                                      	@IRInst:add	%t1529	SHIFT_TABLE	%t1528
	str r6,[fp,#8]                                    	@IRInst:add	%t1529	SHIFT_TABLE	%t1528
	ldr r5,[fp,#8]                                    	@IRInst:assign	%t1529	1
	mov r4,#1                                         	@IRInst:assign	%t1529	1
	str r4,[r5]                                       	@IRInst:assign	%t1529	1
	mov r4,#1                                         	@IRInst:mul	%t1530	1	4
	mov r5,#4                                         	@IRInst:mul	%t1530	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1530	1	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t1530	1	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1531	SHIFT_TABLE	%t1530
	ldr r5,[fp,#12]                                   	@IRInst:add	%t1531	SHIFT_TABLE	%t1530
	add r6,r4,r5                                      	@IRInst:add	%t1531	SHIFT_TABLE	%t1530
	str r6,[fp,#16]                                   	@IRInst:add	%t1531	SHIFT_TABLE	%t1530
	ldr r5,[fp,#16]                                   	@IRInst:assign	%t1531	2
	mov r4,#2                                         	@IRInst:assign	%t1531	2
	str r4,[r5]                                       	@IRInst:assign	%t1531	2
	mov r4,#2                                         	@IRInst:mul	%t1532	2	4
	mov r5,#4                                         	@IRInst:mul	%t1532	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1532	2	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t1532	2	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1533	SHIFT_TABLE	%t1532
	ldr r5,[fp,#20]                                   	@IRInst:add	%t1533	SHIFT_TABLE	%t1532
	add r6,r4,r5                                      	@IRInst:add	%t1533	SHIFT_TABLE	%t1532
	str r6,[fp,#24]                                   	@IRInst:add	%t1533	SHIFT_TABLE	%t1532
	ldr r5,[fp,#24]                                   	@IRInst:assign	%t1533	4
	mov r4,#4                                         	@IRInst:assign	%t1533	4
	str r4,[r5]                                       	@IRInst:assign	%t1533	4
	mov r4,#3                                         	@IRInst:mul	%t1534	3	4
	mov r5,#4                                         	@IRInst:mul	%t1534	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1534	3	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t1534	3	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1535	SHIFT_TABLE	%t1534
	ldr r5,[fp,#28]                                   	@IRInst:add	%t1535	SHIFT_TABLE	%t1534
	add r6,r4,r5                                      	@IRInst:add	%t1535	SHIFT_TABLE	%t1534
	str r6,[fp,#32]                                   	@IRInst:add	%t1535	SHIFT_TABLE	%t1534
	ldr r5,[fp,#32]                                   	@IRInst:assign	%t1535	8
	mov r4,#8                                         	@IRInst:assign	%t1535	8
	str r4,[r5]                                       	@IRInst:assign	%t1535	8
	mov r4,#4                                         	@IRInst:mul	%t1536	4	4
	mov r5,#4                                         	@IRInst:mul	%t1536	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1536	4	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t1536	4	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1537	SHIFT_TABLE	%t1536
	ldr r5,[fp,#36]                                   	@IRInst:add	%t1537	SHIFT_TABLE	%t1536
	add r6,r4,r5                                      	@IRInst:add	%t1537	SHIFT_TABLE	%t1536
	str r6,[fp,#40]                                   	@IRInst:add	%t1537	SHIFT_TABLE	%t1536
	ldr r5,[fp,#40]                                   	@IRInst:assign	%t1537	16
	mov r4,#16                                        	@IRInst:assign	%t1537	16
	str r4,[r5]                                       	@IRInst:assign	%t1537	16
	mov r4,#5                                         	@IRInst:mul	%t1538	5	4
	mov r5,#4                                         	@IRInst:mul	%t1538	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1538	5	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t1538	5	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1539	SHIFT_TABLE	%t1538
	ldr r5,[fp,#44]                                   	@IRInst:add	%t1539	SHIFT_TABLE	%t1538
	add r6,r4,r5                                      	@IRInst:add	%t1539	SHIFT_TABLE	%t1538
	str r6,[fp,#48]                                   	@IRInst:add	%t1539	SHIFT_TABLE	%t1538
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t1539	32
	mov r4,#32                                        	@IRInst:assign	%t1539	32
	str r4,[r5]                                       	@IRInst:assign	%t1539	32
	mov r4,#6                                         	@IRInst:mul	%t1540	6	4
	mov r5,#4                                         	@IRInst:mul	%t1540	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1540	6	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t1540	6	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1541	SHIFT_TABLE	%t1540
	ldr r5,[fp,#52]                                   	@IRInst:add	%t1541	SHIFT_TABLE	%t1540
	add r6,r4,r5                                      	@IRInst:add	%t1541	SHIFT_TABLE	%t1540
	str r6,[fp,#56]                                   	@IRInst:add	%t1541	SHIFT_TABLE	%t1540
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t1541	64
	mov r4,#64                                        	@IRInst:assign	%t1541	64
	str r4,[r5]                                       	@IRInst:assign	%t1541	64
	mov r4,#7                                         	@IRInst:mul	%t1542	7	4
	mov r5,#4                                         	@IRInst:mul	%t1542	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1542	7	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t1542	7	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1543	SHIFT_TABLE	%t1542
	ldr r5,[fp,#60]                                   	@IRInst:add	%t1543	SHIFT_TABLE	%t1542
	add r6,r4,r5                                      	@IRInst:add	%t1543	SHIFT_TABLE	%t1542
	str r6,[fp,#64]                                   	@IRInst:add	%t1543	SHIFT_TABLE	%t1542
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t1543	128
	mov r4,#128                                       	@IRInst:assign	%t1543	128
	str r4,[r5]                                       	@IRInst:assign	%t1543	128
	mov r4,#8                                         	@IRInst:mul	%t1544	8	4
	mov r5,#4                                         	@IRInst:mul	%t1544	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1544	8	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t1544	8	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1545	SHIFT_TABLE	%t1544
	ldr r5,[fp,#68]                                   	@IRInst:add	%t1545	SHIFT_TABLE	%t1544
	add r6,r4,r5                                      	@IRInst:add	%t1545	SHIFT_TABLE	%t1544
	str r6,[fp,#72]                                   	@IRInst:add	%t1545	SHIFT_TABLE	%t1544
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t1545	256
	mov r4,#256                                       	@IRInst:assign	%t1545	256
	str r4,[r5]                                       	@IRInst:assign	%t1545	256
	mov r4,#9                                         	@IRInst:mul	%t1546	9	4
	mov r5,#4                                         	@IRInst:mul	%t1546	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1546	9	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t1546	9	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1547	SHIFT_TABLE	%t1546
	ldr r5,[fp,#76]                                   	@IRInst:add	%t1547	SHIFT_TABLE	%t1546
	add r6,r4,r5                                      	@IRInst:add	%t1547	SHIFT_TABLE	%t1546
	str r6,[fp,#80]                                   	@IRInst:add	%t1547	SHIFT_TABLE	%t1546
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t1547	512
	mov r4,#512                                       	@IRInst:assign	%t1547	512
	str r4,[r5]                                       	@IRInst:assign	%t1547	512
	mov r4,#10                                        	@IRInst:mul	%t1548	10	4
	mov r5,#4                                         	@IRInst:mul	%t1548	10	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1548	10	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t1548	10	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1549	SHIFT_TABLE	%t1548
	ldr r5,[fp,#84]                                   	@IRInst:add	%t1549	SHIFT_TABLE	%t1548
	add r6,r4,r5                                      	@IRInst:add	%t1549	SHIFT_TABLE	%t1548
	str r6,[fp,#88]                                   	@IRInst:add	%t1549	SHIFT_TABLE	%t1548
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t1549	1024
	mov r4,#1024                                      	@IRInst:assign	%t1549	1024
	str r4,[r5]                                       	@IRInst:assign	%t1549	1024
	mov r4,#11                                        	@IRInst:mul	%t1550	11	4
	mov r5,#4                                         	@IRInst:mul	%t1550	11	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1550	11	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t1550	11	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1551	SHIFT_TABLE	%t1550
	ldr r5,[fp,#92]                                   	@IRInst:add	%t1551	SHIFT_TABLE	%t1550
	add r6,r4,r5                                      	@IRInst:add	%t1551	SHIFT_TABLE	%t1550
	str r6,[fp,#96]                                   	@IRInst:add	%t1551	SHIFT_TABLE	%t1550
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t1551	2048
	mov r4,#2048                                      	@IRInst:assign	%t1551	2048
	str r4,[r5]                                       	@IRInst:assign	%t1551	2048
	mov r4,#12                                        	@IRInst:mul	%t1552	12	4
	mov r5,#4                                         	@IRInst:mul	%t1552	12	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1552	12	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t1552	12	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1553	SHIFT_TABLE	%t1552
	ldr r5,[fp,#100]                                  	@IRInst:add	%t1553	SHIFT_TABLE	%t1552
	add r6,r4,r5                                      	@IRInst:add	%t1553	SHIFT_TABLE	%t1552
	str r6,[fp,#104]                                  	@IRInst:add	%t1553	SHIFT_TABLE	%t1552
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t1553	4096
	mov r4,#4096                                      	@IRInst:assign	%t1553	4096
	str r4,[r5]                                       	@IRInst:assign	%t1553	4096
	mov r4,#13                                        	@IRInst:mul	%t1554	13	4
	mov r5,#4                                         	@IRInst:mul	%t1554	13	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1554	13	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t1554	13	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1555	SHIFT_TABLE	%t1554
	ldr r5,[fp,#108]                                  	@IRInst:add	%t1555	SHIFT_TABLE	%t1554
	add r6,r4,r5                                      	@IRInst:add	%t1555	SHIFT_TABLE	%t1554
	str r6,[fp,#112]                                  	@IRInst:add	%t1555	SHIFT_TABLE	%t1554
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t1555	8192
	mov r4,#8192                                      	@IRInst:assign	%t1555	8192
	str r4,[r5]                                       	@IRInst:assign	%t1555	8192
	mov r4,#14                                        	@IRInst:mul	%t1556	14	4
	mov r5,#4                                         	@IRInst:mul	%t1556	14	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1556	14	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t1556	14	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1557	SHIFT_TABLE	%t1556
	ldr r5,[fp,#116]                                  	@IRInst:add	%t1557	SHIFT_TABLE	%t1556
	add r6,r4,r5                                      	@IRInst:add	%t1557	SHIFT_TABLE	%t1556
	str r6,[fp,#120]                                  	@IRInst:add	%t1557	SHIFT_TABLE	%t1556
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t1557	16384
	mov r4,#16384                                     	@IRInst:assign	%t1557	16384
	str r4,[r5]                                       	@IRInst:assign	%t1557	16384
	mov r4,#15                                        	@IRInst:mul	%t1558	15	4
	mov r5,#4                                         	@IRInst:mul	%t1558	15	4
	mul r6,r4,r5                                      	@IRInst:mul	%t1558	15	4
	str r6,[fp,#124]                                  	@IRInst:mul	%t1558	15	4
	ldr r4,.global_11_SHIFT_TABLE                     	@IRInst:add	%t1559	SHIFT_TABLE	%t1558
	ldr r5,[fp,#124]                                  	@IRInst:add	%t1559	SHIFT_TABLE	%t1558
	add r6,r4,r5                                      	@IRInst:add	%t1559	SHIFT_TABLE	%t1558
	str r6,[fp,#128]                                  	@IRInst:add	%t1559	SHIFT_TABLE	%t1558
	ldr r5,[fp,#128]                                  	@IRInst:assign	%t1559	32768
	mov r4,#32768                                     	@IRInst:assign	%t1559	32768
	str r4,[r5]                                       	@IRInst:assign	%t1559	32768
	bl long_func                                      
	str r0,[fp,#132]                                  	@IRInst:assign	%t1560	r0
	ldr r4,[fp,#132]                                  	@IRInst:assign		%t1560
	str r4,[fp]                                       	@IRInst:assign		%t1560
	b .L825                                           
.L825:
	ldr r0,[fp]                                       
	add fp,fp,#136                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
