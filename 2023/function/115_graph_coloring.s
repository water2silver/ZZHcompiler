.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
V:
        .long   4
space:
        .long   32
LF:
        .long   10
.text
.global_0_V:
        .long   V
.global_0_space:
        .long   space
.global_0_LF:
        .long   LF
.global printSolution
.type printSolution, %function
printSolution:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#28                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	color	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L3:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t7	i	V
	mov r5,#4                                         	@IRInst:blt	%t7	i	V
	cmp r4,r5                                         	@IRInst:blt	%t7	i	V
	movlt r6,#1                                       	@IRInst:blt	%t7	i	V
	movge r6,#0                                       	@IRInst:blt	%t7	i	V
	str r6,[fp,#8]                                    	@IRInst:blt	%t7	i	V
	blt .L4                                           
	b .L5                                             
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t8	i	4
	mov r5,#4                                         	@IRInst:mul	%t8	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t8	i	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t8	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t9	color	%t8
	ldr r5,[fp,#12]                                   	@IRInst:add	%t9	color	%t8
	add r6,r4,r5                                      	@IRInst:add	%t9	color	%t8
	str r6,[fp,#16]                                   	@IRInst:add	%t9	color	%t8
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t10	%t9
	ldr r4,[r4]                                       	@IRInst:assign	%t10	%t9
	str r4,[fp,#20]                                   	@IRInst:assign	%t10	%t9
	ldr r0,[fp,#20]                                   	@IRInst:assign	r0	%t10
	bl putint                                         
	mov r0,#32                                        	@IRInst:assign	r0	space
	bl putch                                          
	ldr r4,[fp,#4]                                    	@IRInst:add	%t11	i	1
	mov r5,#1                                         	@IRInst:add	%t11	i	1
	add r6,r4,r5                                      	@IRInst:add	%t11	i	1
	str r6,[fp,#24]                                   	@IRInst:add	%t11	i	1
	ldr r4,[fp,#24]                                   	@IRInst:assign	i	%t11
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t11
	b .L3                                             
.L5:
	mov r0,#10                                        	@IRInst:assign	r0	LF
	bl putch                                          
.L2:
	add fp,fp,#28                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_V:
        .long   V
.global_1_space:
        .long   space
.global_1_LF:
        .long   LF
.global printMessage
.type printMessage, %function
printMessage:
.L6:
	push {r10,fp,lr}                                  
	mov r0,#78                                        	@IRInst:assign	r0	78
	bl putch                                          
	mov r0,#111                                       	@IRInst:assign	r0	111
	bl putch                                          
	mov r0,#116                                       	@IRInst:assign	r0	116
	bl putch                                          
	mov r0,#32                                        	@IRInst:assign	r0	space
	bl putch                                          
	mov r0,#101                                       	@IRInst:assign	r0	101
	bl putch                                          
	mov r0,#120                                       	@IRInst:assign	r0	120
	bl putch                                          
	mov r0,#105                                       	@IRInst:assign	r0	105
	bl putch                                          
	mov r0,#115                                       	@IRInst:assign	r0	115
	bl putch                                          
	mov r0,#116                                       	@IRInst:assign	r0	116
	bl putch                                          
.L7:
	add fp,fp,#0                                      
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_2_V:
        .long   V
.global_2_space:
        .long   space
.global_2_LF:
        .long   LF
.global isSafe
.type isSafe, %function
isSafe:
.L8:
	push {r10,fp}                                     
	sub sp,sp,#96                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	graph	r0
	str r1,[fp,#8]                                    	@IRInst:assign	color	r1
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#12]                                   	@IRInst:assign	i	0
.L10:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t19	i	V
	mov r5,#4                                         	@IRInst:blt	%t19	i	V
	cmp r4,r5                                         	@IRInst:blt	%t19	i	V
	movlt r6,#1                                       	@IRInst:blt	%t19	i	V
	movge r6,#0                                       	@IRInst:blt	%t19	i	V
	str r6,[fp,#16]                                   	@IRInst:blt	%t19	i	V
	blt .L11                                          
	b .L12                                            
.L11:
	ldr r4,[fp,#12]                                   	@IRInst:add	%t21	i	1
	mov r5,#1                                         	@IRInst:add	%t21	i	1
	add r6,r4,r5                                      	@IRInst:add	%t21	i	1
	str r6,[fp,#24]                                   	@IRInst:add	%t21	i	1
	ldr r4,[fp,#24]                                   	@IRInst:assign	j	%t21
	str r4,[fp,#20]                                   	@IRInst:assign	j	%t21
.L13:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t22	j	V
	mov r5,#4                                         	@IRInst:blt	%t22	j	V
	cmp r4,r5                                         	@IRInst:blt	%t22	j	V
	movlt r6,#1                                       	@IRInst:blt	%t22	j	V
	movge r6,#0                                       	@IRInst:blt	%t22	j	V
	str r6,[fp,#28]                                   	@IRInst:blt	%t22	j	V
	blt .L14                                          
	b .L15                                            
.L14:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t23	i	0
	mov r5,#0                                         	@IRInst:mul	%t23	i	0
	mul r6,r4,r5                                      	@IRInst:mul	%t23	i	0
	str r6,[fp,#32]                                   	@IRInst:mul	%t23	i	0
	ldr r4,[fp,#32]                                   	@IRInst:add	%t24	%t23	j
	ldr r5,[fp,#20]                                   	@IRInst:add	%t24	%t23	j
	add r6,r4,r5                                      	@IRInst:add	%t24	%t23	j
	str r6,[fp,#36]                                   	@IRInst:add	%t24	%t23	j
	ldr r4,[fp,#36]                                   	@IRInst:mul	%t25	%t24	4
	mov r5,#4                                         	@IRInst:mul	%t25	%t24	4
	mul r6,r4,r5                                      	@IRInst:mul	%t25	%t24	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t25	%t24	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t26	graph	%t25
	ldr r5,[fp,#40]                                   	@IRInst:add	%t26	graph	%t25
	add r6,r4,r5                                      	@IRInst:add	%t26	graph	%t25
	str r6,[fp,#44]                                   	@IRInst:add	%t26	graph	%t25
	ldr r4,[fp,#44]                                   	@IRInst:assign	%t27	%t26
	ldr r4,[r4]                                       	@IRInst:assign	%t27	%t26
	str r4,[fp,#48]                                   	@IRInst:assign	%t27	%t26
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t28	%t27
	str r4,[fp,#52]                                   	@IRInst:assign	%t28	%t27
	ldr r4,[fp,#52]                                   	@IRInst:not_zero	%t29	%t28	0
	mov r5,#0                                         	@IRInst:not_zero	%t29	%t28	0
	cmp r4,r5                                         	@IRInst:not_zero	%t29	%t28	0
	moveq r6,#0                                       	@IRInst:not_zero	%t29	%t28	0
	movne r6,#1                                       	@IRInst:not_zero	%t29	%t28	0
	str r6,[fp,#56]                                   	@IRInst:not_zero	%t29	%t28	0
	beq .L17                                          
	b .L19                                            
.L19:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t30	j	4
	mov r5,#4                                         	@IRInst:mul	%t30	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t30	j	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t30	j	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t31	color	%t30
	ldr r5,[fp,#60]                                   	@IRInst:add	%t31	color	%t30
	add r6,r4,r5                                      	@IRInst:add	%t31	color	%t30
	str r6,[fp,#64]                                   	@IRInst:add	%t31	color	%t30
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t32	%t31
	ldr r4,[r4]                                       	@IRInst:assign	%t32	%t31
	str r4,[fp,#68]                                   	@IRInst:assign	%t32	%t31
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t33	i	4
	mov r5,#4                                         	@IRInst:mul	%t33	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t33	i	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t33	i	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t34	color	%t33
	ldr r5,[fp,#72]                                   	@IRInst:add	%t34	color	%t33
	add r6,r4,r5                                      	@IRInst:add	%t34	color	%t33
	str r6,[fp,#76]                                   	@IRInst:add	%t34	color	%t33
	ldr r4,[fp,#76]                                   	@IRInst:assign	%t35	%t34
	ldr r4,[r4]                                       	@IRInst:assign	%t35	%t34
	str r4,[fp,#80]                                   	@IRInst:assign	%t35	%t34
	ldr r4,[fp,#68]                                   	@IRInst:beq	%t36	%t32	%t35
	ldr r5,[fp,#80]                                   	@IRInst:beq	%t36	%t32	%t35
	cmp r4,r5                                         	@IRInst:beq	%t36	%t32	%t35
	moveq r6,#1                                       	@IRInst:beq	%t36	%t32	%t35
	movne r6,#0                                       	@IRInst:beq	%t36	%t32	%t35
	str r6,[fp,#84]                                   	@IRInst:beq	%t36	%t32	%t35
	beq .L16                                          
	b .L17                                            
.L16:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L9                                             
.L17:
.L18:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t37	j	1
	mov r5,#1                                         	@IRInst:add	%t37	j	1
	add r6,r4,r5                                      	@IRInst:add	%t37	j	1
	str r6,[fp,#88]                                   	@IRInst:add	%t37	j	1
	ldr r4,[fp,#88]                                   	@IRInst:assign	j	%t37
	str r4,[fp,#20]                                   	@IRInst:assign	j	%t37
	b .L13                                            
.L15:
	ldr r4,[fp,#12]                                   	@IRInst:add	%t38	i	1
	mov r5,#1                                         	@IRInst:add	%t38	i	1
	add r6,r4,r5                                      	@IRInst:add	%t38	i	1
	str r6,[fp,#92]                                   	@IRInst:add	%t38	i	1
	ldr r4,[fp,#92]                                   	@IRInst:assign	i	%t38
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t38
	b .L10                                            
.L12:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L9                                             
.L9:
	ldr r0,[fp]                                       
	add fp,fp,#96                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_3_V:
        .long   V
.global_3_space:
        .long   space
.global_3_LF:
        .long   LF
.global graphColoring
.type graphColoring, %function
graphColoring:
.L20:
	push {r10,fp,lr}                                  
	sub sp,sp,#72                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	graph	r0
	str r1,[fp,#8]                                    	@IRInst:assign	m	r1
	str r2,[fp,#12]                                   	@IRInst:assign	i	r2
	str r3,[fp,#16]                                   	@IRInst:assign	color	r3
	ldr r4,[fp,#12]                                   	@IRInst:beq	%t48	i	V
	mov r5,#4                                         	@IRInst:beq	%t48	i	V
	cmp r4,r5                                         	@IRInst:beq	%t48	i	V
	moveq r6,#1                                       	@IRInst:beq	%t48	i	V
	movne r6,#0                                       	@IRInst:beq	%t48	i	V
	str r6,[fp,#20]                                   	@IRInst:beq	%t48	i	V
	beq .L22                                          
	b .L23                                            
.L22:
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	graph
	ldr r1,[fp,#16]                                   	@IRInst:assign	r1	color
	bl isSafe                                         
	str r0,[fp,#24]                                   	@IRInst:assign	%t49	r0
	ldr r4,[fp,#24]                                   	@IRInst:not_zero	%t50	%t49	0
	mov r5,#0                                         	@IRInst:not_zero	%t50	%t49	0
	cmp r4,r5                                         	@IRInst:not_zero	%t50	%t49	0
	moveq r6,#0                                       	@IRInst:not_zero	%t50	%t49	0
	movne r6,#1                                       	@IRInst:not_zero	%t50	%t49	0
	str r6,[fp,#28]                                   	@IRInst:not_zero	%t50	%t49	0
	beq .L26                                          
	b .L25                                            
.L25:
	ldr r0,[fp,#16]                                   	@IRInst:assign	r0	color
	bl printSolution                                  
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L21                                            
.L26:
.L27:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L21                                            
.L23:
.L24:
	mov r4,#1                                         	@IRInst:assign	j	1
	str r4,[fp,#32]                                   	@IRInst:assign	j	1
.L28:
	ldr r4,[fp,#32]                                   	@IRInst:ble	%t52	j	m
	ldr r5,[fp,#8]                                    	@IRInst:ble	%t52	j	m
	cmp r4,r5                                         	@IRInst:ble	%t52	j	m
	movle r6,#1                                       	@IRInst:ble	%t52	j	m
	movgt r6,#0                                       	@IRInst:ble	%t52	j	m
	str r6,[fp,#36]                                   	@IRInst:ble	%t52	j	m
	ble .L29                                          
	b .L30                                            
.L29:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t53	i	4
	mov r5,#4                                         	@IRInst:mul	%t53	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t53	i	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t53	i	4
	ldr r4,[fp,#16]                                   	@IRInst:add	%t54	color	%t53
	ldr r5,[fp,#40]                                   	@IRInst:add	%t54	color	%t53
	add r6,r4,r5                                      	@IRInst:add	%t54	color	%t53
	str r6,[fp,#44]                                   	@IRInst:add	%t54	color	%t53
	ldr r5,[fp,#44]                                   	@IRInst:assign	%t54	j
	ldr r4,[fp,#32]                                   	@IRInst:assign	%t54	j
	str r4,[r5]                                       	@IRInst:assign	%t54	j
	ldr r4,[fp,#12]                                   	@IRInst:add	%t55	i	1
	mov r5,#1                                         	@IRInst:add	%t55	i	1
	add r6,r4,r5                                      	@IRInst:add	%t55	i	1
	str r6,[fp,#48]                                   	@IRInst:add	%t55	i	1
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	graph
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	m
	ldr r2,[fp,#48]                                   	@IRInst:assign	r2	%t55
	ldr r3,[fp,#16]                                   	@IRInst:assign	r3	color
	bl graphColoring                                  
	str r0,[fp,#52]                                   	@IRInst:assign	%t56	r0
	ldr r4,[fp,#52]                                   	@IRInst:not_zero	%t57	%t56	0
	mov r5,#0                                         	@IRInst:not_zero	%t57	%t56	0
	cmp r4,r5                                         	@IRInst:not_zero	%t57	%t56	0
	moveq r6,#0                                       	@IRInst:not_zero	%t57	%t56	0
	movne r6,#1                                       	@IRInst:not_zero	%t57	%t56	0
	str r6,[fp,#56]                                   	@IRInst:not_zero	%t57	%t56	0
	beq .L32                                          
	b .L31                                            
.L31:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L21                                            
.L32:
.L33:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t58	i	4
	mov r5,#4                                         	@IRInst:mul	%t58	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t58	i	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t58	i	4
	ldr r4,[fp,#16]                                   	@IRInst:add	%t59	color	%t58
	ldr r5,[fp,#60]                                   	@IRInst:add	%t59	color	%t58
	add r6,r4,r5                                      	@IRInst:add	%t59	color	%t58
	str r6,[fp,#64]                                   	@IRInst:add	%t59	color	%t58
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t59	0
	mov r4,#0                                         	@IRInst:assign	%t59	0
	str r4,[r5]                                       	@IRInst:assign	%t59	0
	ldr r4,[fp,#32]                                   	@IRInst:add	%t60	j	1
	mov r5,#1                                         	@IRInst:add	%t60	j	1
	add r6,r4,r5                                      	@IRInst:add	%t60	j	1
	str r6,[fp,#68]                                   	@IRInst:add	%t60	j	1
	ldr r4,[fp,#68]                                   	@IRInst:assign	j	%t60
	str r4,[fp,#32]                                   	@IRInst:assign	j	%t60
	b .L28                                            
.L30:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L21                                            
.L21:
	ldr r0,[fp]                                       
	add fp,fp,#72                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_4_V:
        .long   V
.global_4_space:
        .long   space
.global_4_LF:
        .long   LF
.global main
.type main, %function
main:
.L34:
	push {r10,fp,lr}                                  
	sub sp,sp,#372                                    
	add fp,sp,#0                                      
	mov r4,#0                                         	@IRInst:mul	%t63	0	4
	mov r5,#4                                         	@IRInst:mul	%t63	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t63	0	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t63	0	4
	ldr r4,[fp,#68]                                   	@IRInst:add	%t64	%t63	0
	mov r5,#0                                         	@IRInst:add	%t64	%t63	0
	add r6,r4,r5                                      	@IRInst:add	%t64	%t63	0
	str r6,[fp,#72]                                   	@IRInst:add	%t64	%t63	0
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t65	%t64	4
	mov r5,#4                                         	@IRInst:mul	%t65	%t64	4
	mul r6,r4,r5                                      	@IRInst:mul	%t65	%t64	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t65	%t64	4
	add r4,fp,#4                                      	@IRInst:add	%t66	graph	%t65
	ldr r5,[fp,#76]                                   	@IRInst:add	%t66	graph	%t65
	add r6,r4,r5                                      	@IRInst:add	%t66	graph	%t65
	str r6,[fp,#80]                                   	@IRInst:add	%t66	graph	%t65
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t66	0
	mov r4,#0                                         	@IRInst:assign	%t66	0
	str r4,[r5]                                       	@IRInst:assign	%t66	0
	mov r4,#0                                         	@IRInst:mul	%t67	0	4
	mov r5,#4                                         	@IRInst:mul	%t67	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t67	0	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t67	0	4
	ldr r4,[fp,#84]                                   	@IRInst:add	%t68	%t67	1
	mov r5,#1                                         	@IRInst:add	%t68	%t67	1
	add r6,r4,r5                                      	@IRInst:add	%t68	%t67	1
	str r6,[fp,#88]                                   	@IRInst:add	%t68	%t67	1
	ldr r4,[fp,#88]                                   	@IRInst:mul	%t69	%t68	4
	mov r5,#4                                         	@IRInst:mul	%t69	%t68	4
	mul r6,r4,r5                                      	@IRInst:mul	%t69	%t68	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t69	%t68	4
	add r4,fp,#4                                      	@IRInst:add	%t70	graph	%t69
	ldr r5,[fp,#92]                                   	@IRInst:add	%t70	graph	%t69
	add r6,r4,r5                                      	@IRInst:add	%t70	graph	%t69
	str r6,[fp,#96]                                   	@IRInst:add	%t70	graph	%t69
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t70	1
	mov r4,#1                                         	@IRInst:assign	%t70	1
	str r4,[r5]                                       	@IRInst:assign	%t70	1
	mov r4,#0                                         	@IRInst:mul	%t71	0	4
	mov r5,#4                                         	@IRInst:mul	%t71	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t71	0	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t71	0	4
	ldr r4,[fp,#100]                                  	@IRInst:add	%t72	%t71	2
	mov r5,#2                                         	@IRInst:add	%t72	%t71	2
	add r6,r4,r5                                      	@IRInst:add	%t72	%t71	2
	str r6,[fp,#104]                                  	@IRInst:add	%t72	%t71	2
	ldr r4,[fp,#104]                                  	@IRInst:mul	%t73	%t72	4
	mov r5,#4                                         	@IRInst:mul	%t73	%t72	4
	mul r6,r4,r5                                      	@IRInst:mul	%t73	%t72	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t73	%t72	4
	add r4,fp,#4                                      	@IRInst:add	%t74	graph	%t73
	ldr r5,[fp,#108]                                  	@IRInst:add	%t74	graph	%t73
	add r6,r4,r5                                      	@IRInst:add	%t74	graph	%t73
	str r6,[fp,#112]                                  	@IRInst:add	%t74	graph	%t73
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t74	1
	mov r4,#1                                         	@IRInst:assign	%t74	1
	str r4,[r5]                                       	@IRInst:assign	%t74	1
	mov r4,#0                                         	@IRInst:mul	%t75	0	4
	mov r5,#4                                         	@IRInst:mul	%t75	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t75	0	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t75	0	4
	ldr r4,[fp,#116]                                  	@IRInst:add	%t76	%t75	3
	mov r5,#3                                         	@IRInst:add	%t76	%t75	3
	add r6,r4,r5                                      	@IRInst:add	%t76	%t75	3
	str r6,[fp,#120]                                  	@IRInst:add	%t76	%t75	3
	ldr r4,[fp,#120]                                  	@IRInst:mul	%t77	%t76	4
	mov r5,#4                                         	@IRInst:mul	%t77	%t76	4
	mul r6,r4,r5                                      	@IRInst:mul	%t77	%t76	4
	str r6,[fp,#124]                                  	@IRInst:mul	%t77	%t76	4
	add r4,fp,#4                                      	@IRInst:add	%t78	graph	%t77
	ldr r5,[fp,#124]                                  	@IRInst:add	%t78	graph	%t77
	add r6,r4,r5                                      	@IRInst:add	%t78	graph	%t77
	str r6,[fp,#128]                                  	@IRInst:add	%t78	graph	%t77
	ldr r5,[fp,#128]                                  	@IRInst:assign	%t78	1
	mov r4,#1                                         	@IRInst:assign	%t78	1
	str r4,[r5]                                       	@IRInst:assign	%t78	1
	mov r4,#1                                         	@IRInst:mul	%t79	1	4
	mov r5,#4                                         	@IRInst:mul	%t79	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t79	1	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t79	1	4
	ldr r4,[fp,#132]                                  	@IRInst:add	%t80	%t79	0
	mov r5,#0                                         	@IRInst:add	%t80	%t79	0
	add r6,r4,r5                                      	@IRInst:add	%t80	%t79	0
	str r6,[fp,#136]                                  	@IRInst:add	%t80	%t79	0
	ldr r4,[fp,#136]                                  	@IRInst:mul	%t81	%t80	4
	mov r5,#4                                         	@IRInst:mul	%t81	%t80	4
	mul r6,r4,r5                                      	@IRInst:mul	%t81	%t80	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t81	%t80	4
	add r4,fp,#4                                      	@IRInst:add	%t82	graph	%t81
	ldr r5,[fp,#140]                                  	@IRInst:add	%t82	graph	%t81
	add r6,r4,r5                                      	@IRInst:add	%t82	graph	%t81
	str r6,[fp,#144]                                  	@IRInst:add	%t82	graph	%t81
	ldr r5,[fp,#144]                                  	@IRInst:assign	%t82	1
	mov r4,#1                                         	@IRInst:assign	%t82	1
	str r4,[r5]                                       	@IRInst:assign	%t82	1
	mov r4,#1                                         	@IRInst:mul	%t83	1	4
	mov r5,#4                                         	@IRInst:mul	%t83	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t83	1	4
	str r6,[fp,#148]                                  	@IRInst:mul	%t83	1	4
	ldr r4,[fp,#148]                                  	@IRInst:add	%t84	%t83	1
	mov r5,#1                                         	@IRInst:add	%t84	%t83	1
	add r6,r4,r5                                      	@IRInst:add	%t84	%t83	1
	str r6,[fp,#152]                                  	@IRInst:add	%t84	%t83	1
	ldr r4,[fp,#152]                                  	@IRInst:mul	%t85	%t84	4
	mov r5,#4                                         	@IRInst:mul	%t85	%t84	4
	mul r6,r4,r5                                      	@IRInst:mul	%t85	%t84	4
	str r6,[fp,#156]                                  	@IRInst:mul	%t85	%t84	4
	add r4,fp,#4                                      	@IRInst:add	%t86	graph	%t85
	ldr r5,[fp,#156]                                  	@IRInst:add	%t86	graph	%t85
	add r6,r4,r5                                      	@IRInst:add	%t86	graph	%t85
	str r6,[fp,#160]                                  	@IRInst:add	%t86	graph	%t85
	ldr r5,[fp,#160]                                  	@IRInst:assign	%t86	0
	mov r4,#0                                         	@IRInst:assign	%t86	0
	str r4,[r5]                                       	@IRInst:assign	%t86	0
	mov r4,#1                                         	@IRInst:mul	%t87	1	4
	mov r5,#4                                         	@IRInst:mul	%t87	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t87	1	4
	str r6,[fp,#164]                                  	@IRInst:mul	%t87	1	4
	ldr r4,[fp,#164]                                  	@IRInst:add	%t88	%t87	2
	mov r5,#2                                         	@IRInst:add	%t88	%t87	2
	add r6,r4,r5                                      	@IRInst:add	%t88	%t87	2
	str r6,[fp,#168]                                  	@IRInst:add	%t88	%t87	2
	ldr r4,[fp,#168]                                  	@IRInst:mul	%t89	%t88	4
	mov r5,#4                                         	@IRInst:mul	%t89	%t88	4
	mul r6,r4,r5                                      	@IRInst:mul	%t89	%t88	4
	str r6,[fp,#172]                                  	@IRInst:mul	%t89	%t88	4
	add r4,fp,#4                                      	@IRInst:add	%t90	graph	%t89
	ldr r5,[fp,#172]                                  	@IRInst:add	%t90	graph	%t89
	add r6,r4,r5                                      	@IRInst:add	%t90	graph	%t89
	str r6,[fp,#176]                                  	@IRInst:add	%t90	graph	%t89
	ldr r5,[fp,#176]                                  	@IRInst:assign	%t90	1
	mov r4,#1                                         	@IRInst:assign	%t90	1
	str r4,[r5]                                       	@IRInst:assign	%t90	1
	mov r4,#1                                         	@IRInst:mul	%t91	1	4
	mov r5,#4                                         	@IRInst:mul	%t91	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t91	1	4
	str r6,[fp,#180]                                  	@IRInst:mul	%t91	1	4
	ldr r4,[fp,#180]                                  	@IRInst:add	%t92	%t91	3
	mov r5,#3                                         	@IRInst:add	%t92	%t91	3
	add r6,r4,r5                                      	@IRInst:add	%t92	%t91	3
	str r6,[fp,#184]                                  	@IRInst:add	%t92	%t91	3
	ldr r4,[fp,#184]                                  	@IRInst:mul	%t93	%t92	4
	mov r5,#4                                         	@IRInst:mul	%t93	%t92	4
	mul r6,r4,r5                                      	@IRInst:mul	%t93	%t92	4
	str r6,[fp,#188]                                  	@IRInst:mul	%t93	%t92	4
	add r4,fp,#4                                      	@IRInst:add	%t94	graph	%t93
	ldr r5,[fp,#188]                                  	@IRInst:add	%t94	graph	%t93
	add r6,r4,r5                                      	@IRInst:add	%t94	graph	%t93
	str r6,[fp,#192]                                  	@IRInst:add	%t94	graph	%t93
	ldr r5,[fp,#192]                                  	@IRInst:assign	%t94	0
	mov r4,#0                                         	@IRInst:assign	%t94	0
	str r4,[r5]                                       	@IRInst:assign	%t94	0
	mov r4,#2                                         	@IRInst:mul	%t95	2	4
	mov r5,#4                                         	@IRInst:mul	%t95	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t95	2	4
	str r6,[fp,#196]                                  	@IRInst:mul	%t95	2	4
	ldr r4,[fp,#196]                                  	@IRInst:add	%t96	%t95	0
	mov r5,#0                                         	@IRInst:add	%t96	%t95	0
	add r6,r4,r5                                      	@IRInst:add	%t96	%t95	0
	str r6,[fp,#200]                                  	@IRInst:add	%t96	%t95	0
	ldr r4,[fp,#200]                                  	@IRInst:mul	%t97	%t96	4
	mov r5,#4                                         	@IRInst:mul	%t97	%t96	4
	mul r6,r4,r5                                      	@IRInst:mul	%t97	%t96	4
	str r6,[fp,#204]                                  	@IRInst:mul	%t97	%t96	4
	add r4,fp,#4                                      	@IRInst:add	%t98	graph	%t97
	ldr r5,[fp,#204]                                  	@IRInst:add	%t98	graph	%t97
	add r6,r4,r5                                      	@IRInst:add	%t98	graph	%t97
	str r6,[fp,#208]                                  	@IRInst:add	%t98	graph	%t97
	ldr r5,[fp,#208]                                  	@IRInst:assign	%t98	1
	mov r4,#1                                         	@IRInst:assign	%t98	1
	str r4,[r5]                                       	@IRInst:assign	%t98	1
	mov r4,#2                                         	@IRInst:mul	%t99	2	4
	mov r5,#4                                         	@IRInst:mul	%t99	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t99	2	4
	str r6,[fp,#212]                                  	@IRInst:mul	%t99	2	4
	ldr r4,[fp,#212]                                  	@IRInst:add	%t100	%t99	1
	mov r5,#1                                         	@IRInst:add	%t100	%t99	1
	add r6,r4,r5                                      	@IRInst:add	%t100	%t99	1
	str r6,[fp,#216]                                  	@IRInst:add	%t100	%t99	1
	ldr r4,[fp,#216]                                  	@IRInst:mul	%t101	%t100	4
	mov r5,#4                                         	@IRInst:mul	%t101	%t100	4
	mul r6,r4,r5                                      	@IRInst:mul	%t101	%t100	4
	str r6,[fp,#220]                                  	@IRInst:mul	%t101	%t100	4
	add r4,fp,#4                                      	@IRInst:add	%t102	graph	%t101
	ldr r5,[fp,#220]                                  	@IRInst:add	%t102	graph	%t101
	add r6,r4,r5                                      	@IRInst:add	%t102	graph	%t101
	str r6,[fp,#224]                                  	@IRInst:add	%t102	graph	%t101
	ldr r5,[fp,#224]                                  	@IRInst:assign	%t102	1
	mov r4,#1                                         	@IRInst:assign	%t102	1
	str r4,[r5]                                       	@IRInst:assign	%t102	1
	mov r4,#2                                         	@IRInst:mul	%t103	2	4
	mov r5,#4                                         	@IRInst:mul	%t103	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t103	2	4
	str r6,[fp,#228]                                  	@IRInst:mul	%t103	2	4
	ldr r4,[fp,#228]                                  	@IRInst:add	%t104	%t103	2
	mov r5,#2                                         	@IRInst:add	%t104	%t103	2
	add r6,r4,r5                                      	@IRInst:add	%t104	%t103	2
	str r6,[fp,#232]                                  	@IRInst:add	%t104	%t103	2
	ldr r4,[fp,#232]                                  	@IRInst:mul	%t105	%t104	4
	mov r5,#4                                         	@IRInst:mul	%t105	%t104	4
	mul r6,r4,r5                                      	@IRInst:mul	%t105	%t104	4
	str r6,[fp,#236]                                  	@IRInst:mul	%t105	%t104	4
	add r4,fp,#4                                      	@IRInst:add	%t106	graph	%t105
	ldr r5,[fp,#236]                                  	@IRInst:add	%t106	graph	%t105
	add r6,r4,r5                                      	@IRInst:add	%t106	graph	%t105
	str r6,[fp,#240]                                  	@IRInst:add	%t106	graph	%t105
	ldr r5,[fp,#240]                                  	@IRInst:assign	%t106	0
	mov r4,#0                                         	@IRInst:assign	%t106	0
	str r4,[r5]                                       	@IRInst:assign	%t106	0
	mov r4,#2                                         	@IRInst:mul	%t107	2	4
	mov r5,#4                                         	@IRInst:mul	%t107	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t107	2	4
	str r6,[fp,#244]                                  	@IRInst:mul	%t107	2	4
	ldr r4,[fp,#244]                                  	@IRInst:add	%t108	%t107	3
	mov r5,#3                                         	@IRInst:add	%t108	%t107	3
	add r6,r4,r5                                      	@IRInst:add	%t108	%t107	3
	str r6,[fp,#248]                                  	@IRInst:add	%t108	%t107	3
	ldr r4,[fp,#248]                                  	@IRInst:mul	%t109	%t108	4
	mov r5,#4                                         	@IRInst:mul	%t109	%t108	4
	mul r6,r4,r5                                      	@IRInst:mul	%t109	%t108	4
	str r6,[fp,#252]                                  	@IRInst:mul	%t109	%t108	4
	add r4,fp,#4                                      	@IRInst:add	%t110	graph	%t109
	ldr r5,[fp,#252]                                  	@IRInst:add	%t110	graph	%t109
	add r6,r4,r5                                      	@IRInst:add	%t110	graph	%t109
	str r6,[fp,#256]                                  	@IRInst:add	%t110	graph	%t109
	ldr r5,[fp,#256]                                  	@IRInst:assign	%t110	1
	mov r4,#1                                         	@IRInst:assign	%t110	1
	str r4,[r5]                                       	@IRInst:assign	%t110	1
	mov r4,#3                                         	@IRInst:mul	%t111	3	4
	mov r5,#4                                         	@IRInst:mul	%t111	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t111	3	4
	str r6,[fp,#260]                                  	@IRInst:mul	%t111	3	4
	ldr r4,[fp,#260]                                  	@IRInst:add	%t112	%t111	0
	mov r5,#0                                         	@IRInst:add	%t112	%t111	0
	add r6,r4,r5                                      	@IRInst:add	%t112	%t111	0
	str r6,[fp,#264]                                  	@IRInst:add	%t112	%t111	0
	ldr r4,[fp,#264]                                  	@IRInst:mul	%t113	%t112	4
	mov r5,#4                                         	@IRInst:mul	%t113	%t112	4
	mul r6,r4,r5                                      	@IRInst:mul	%t113	%t112	4
	str r6,[fp,#268]                                  	@IRInst:mul	%t113	%t112	4
	add r4,fp,#4                                      	@IRInst:add	%t114	graph	%t113
	ldr r5,[fp,#268]                                  	@IRInst:add	%t114	graph	%t113
	add r6,r4,r5                                      	@IRInst:add	%t114	graph	%t113
	str r6,[fp,#272]                                  	@IRInst:add	%t114	graph	%t113
	ldr r5,[fp,#272]                                  	@IRInst:assign	%t114	1
	mov r4,#1                                         	@IRInst:assign	%t114	1
	str r4,[r5]                                       	@IRInst:assign	%t114	1
	mov r4,#3                                         	@IRInst:mul	%t115	3	4
	mov r5,#4                                         	@IRInst:mul	%t115	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t115	3	4
	str r6,[fp,#276]                                  	@IRInst:mul	%t115	3	4
	ldr r4,[fp,#276]                                  	@IRInst:add	%t116	%t115	1
	mov r5,#1                                         	@IRInst:add	%t116	%t115	1
	add r6,r4,r5                                      	@IRInst:add	%t116	%t115	1
	str r6,[fp,#280]                                  	@IRInst:add	%t116	%t115	1
	ldr r4,[fp,#280]                                  	@IRInst:mul	%t117	%t116	4
	mov r5,#4                                         	@IRInst:mul	%t117	%t116	4
	mul r6,r4,r5                                      	@IRInst:mul	%t117	%t116	4
	str r6,[fp,#284]                                  	@IRInst:mul	%t117	%t116	4
	add r4,fp,#4                                      	@IRInst:add	%t118	graph	%t117
	ldr r5,[fp,#284]                                  	@IRInst:add	%t118	graph	%t117
	add r6,r4,r5                                      	@IRInst:add	%t118	graph	%t117
	str r6,[fp,#288]                                  	@IRInst:add	%t118	graph	%t117
	ldr r5,[fp,#288]                                  	@IRInst:assign	%t118	0
	mov r4,#0                                         	@IRInst:assign	%t118	0
	str r4,[r5]                                       	@IRInst:assign	%t118	0
	mov r4,#3                                         	@IRInst:mul	%t119	3	4
	mov r5,#4                                         	@IRInst:mul	%t119	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t119	3	4
	str r6,[fp,#292]                                  	@IRInst:mul	%t119	3	4
	ldr r4,[fp,#292]                                  	@IRInst:add	%t120	%t119	2
	mov r5,#2                                         	@IRInst:add	%t120	%t119	2
	add r6,r4,r5                                      	@IRInst:add	%t120	%t119	2
	str r6,[fp,#296]                                  	@IRInst:add	%t120	%t119	2
	ldr r4,[fp,#296]                                  	@IRInst:mul	%t121	%t120	4
	mov r5,#4                                         	@IRInst:mul	%t121	%t120	4
	mul r6,r4,r5                                      	@IRInst:mul	%t121	%t120	4
	str r6,[fp,#300]                                  	@IRInst:mul	%t121	%t120	4
	add r4,fp,#4                                      	@IRInst:add	%t122	graph	%t121
	ldr r5,[fp,#300]                                  	@IRInst:add	%t122	graph	%t121
	add r6,r4,r5                                      	@IRInst:add	%t122	graph	%t121
	str r6,[fp,#304]                                  	@IRInst:add	%t122	graph	%t121
	ldr r5,[fp,#304]                                  	@IRInst:assign	%t122	1
	mov r4,#1                                         	@IRInst:assign	%t122	1
	str r4,[r5]                                       	@IRInst:assign	%t122	1
	mov r4,#3                                         	@IRInst:mul	%t123	3	4
	mov r5,#4                                         	@IRInst:mul	%t123	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t123	3	4
	str r6,[fp,#308]                                  	@IRInst:mul	%t123	3	4
	ldr r4,[fp,#308]                                  	@IRInst:add	%t124	%t123	3
	mov r5,#3                                         	@IRInst:add	%t124	%t123	3
	add r6,r4,r5                                      	@IRInst:add	%t124	%t123	3
	str r6,[fp,#312]                                  	@IRInst:add	%t124	%t123	3
	ldr r4,[fp,#312]                                  	@IRInst:mul	%t125	%t124	4
	mov r5,#4                                         	@IRInst:mul	%t125	%t124	4
	mul r6,r4,r5                                      	@IRInst:mul	%t125	%t124	4
	str r6,[fp,#316]                                  	@IRInst:mul	%t125	%t124	4
	add r4,fp,#4                                      	@IRInst:add	%t126	graph	%t125
	ldr r5,[fp,#316]                                  	@IRInst:add	%t126	graph	%t125
	add r6,r4,r5                                      	@IRInst:add	%t126	graph	%t125
	str r6,[fp,#320]                                  	@IRInst:add	%t126	graph	%t125
	ldr r5,[fp,#320]                                  	@IRInst:assign	%t126	0
	mov r4,#0                                         	@IRInst:assign	%t126	0
	str r4,[r5]                                       	@IRInst:assign	%t126	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#340]                                  	@IRInst:assign	i	0
.L36:
	ldr r4,[fp,#340]                                  	@IRInst:blt	%t129	i	V
	mov r5,#4                                         	@IRInst:blt	%t129	i	V
	cmp r4,r5                                         	@IRInst:blt	%t129	i	V
	movlt r6,#1                                       	@IRInst:blt	%t129	i	V
	movge r6,#0                                       	@IRInst:blt	%t129	i	V
	str r6,[fp,#344]                                  	@IRInst:blt	%t129	i	V
	blt .L37                                          
	b .L38                                            
.L37:
	ldr r4,[fp,#340]                                  	@IRInst:mul	%t130	i	4
	mov r5,#4                                         	@IRInst:mul	%t130	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t130	i	4
	str r6,[fp,#348]                                  	@IRInst:mul	%t130	i	4
	add r4,fp,#324                                    	@IRInst:add	%t131	color	%t130
	ldr r5,[fp,#348]                                  	@IRInst:add	%t131	color	%t130
	add r6,r4,r5                                      	@IRInst:add	%t131	color	%t130
	str r6,[fp,#352]                                  	@IRInst:add	%t131	color	%t130
	ldr r5,[fp,#352]                                  	@IRInst:assign	%t131	0
	mov r4,#0                                         	@IRInst:assign	%t131	0
	str r4,[r5]                                       	@IRInst:assign	%t131	0
	ldr r4,[fp,#340]                                  	@IRInst:add	%t132	i	1
	mov r5,#1                                         	@IRInst:add	%t132	i	1
	add r6,r4,r5                                      	@IRInst:add	%t132	i	1
	str r6,[fp,#356]                                  	@IRInst:add	%t132	i	1
	ldr r4,[fp,#356]                                  	@IRInst:assign	i	%t132
	str r4,[fp,#340]                                  	@IRInst:assign	i	%t132
	b .L36                                            
.L38:
	add r0,fp,#4                                      	@IRInst:assign	r0	graph
	ldr r1,[fp,#360]                                  	@IRInst:assign	r1	m
	mov r2,#0                                         	@IRInst:assign	r2	0
	add r3,fp,#324                                    	@IRInst:assign	r3	color
	bl graphColoring                                  
	str r0,[fp,#364]                                  	@IRInst:assign	%t134	r0
	ldr r4,[fp,#364]                                  	@IRInst:not_zero	%t135	%t134	0
	mov r5,#0                                         	@IRInst:not_zero	%t135	%t134	0
	cmp r4,r5                                         	@IRInst:not_zero	%t135	%t134	0
	moveq r6,#0                                       	@IRInst:not_zero	%t135	%t134	0
	movne r6,#1                                       	@IRInst:not_zero	%t135	%t134	0
	str r6,[fp,#368]                                  	@IRInst:not_zero	%t135	%t134	0
	beq .L39                                          
	b .L40                                            
.L39:
	bl printMessage                                   
.L40:
.L41:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L35                                            
.L35:
	ldr r0,[fp]                                       
	add fp,fp,#372                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
