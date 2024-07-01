.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
array:
        .zero   440
n:
        .long   0
.text
.global_0_array:
        .long   array
.global_0_n:
        .long   n
.global init
.type init, %function
init:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#32                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	n	r0
	mov r4,#1                                         
	str r4,[fp,#4]                                    
.L3:
	ldr r4,[fp]                                       	@IRInst:mul	%t6	n	n
	ldr r5,[fp]                                       	@IRInst:mul	%t6	n	n
	mul r6,r4,r5                                      	@IRInst:mul	%t6	n	n
	str r6,[fp,#8]                                    	@IRInst:mul	%t6	n	n
	ldr r4,[fp,#8]                                    	@IRInst:add	%t7	%t6	1
	mov r5,#1                                         	@IRInst:add	%t7	%t6	1
	add r6,r4,r5                                      	@IRInst:add	%t7	%t6	1
	str r6,[fp,#12]                                   	@IRInst:add	%t7	%t6	1
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t8	i	%t7
	ldr r5,[fp,#12]                                   	@IRInst:ble	%t8	i	%t7
	cmp r4,r5                                         	@IRInst:ble	%t8	i	%t7
	ble .L4                                           
	b .L5                                             
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t9	i	4
	mov r5,#4                                         	@IRInst:mul	%t9	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t9	i	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t9	i	4
	ldr r4,.global_0_array                            	@IRInst:add	%t10	array	%t9
	ldr r5,[fp,#20]                                   	@IRInst:add	%t10	array	%t9
	add r6,r4,r5                                      	@IRInst:add	%t10	array	%t9
	str r6,[fp,#24]                                   	@IRInst:add	%t10	array	%t9
	ldr r5,[fp,#24]                                   	@IRInst:assign	%t10	18446744073709551615
	mov r4,#-1                                        	@IRInst:assign	%t10	18446744073709551615
	str r4,[r5]                                       	@IRInst:assign	%t10	18446744073709551615
	ldr r4,[fp,#4]                                    	@IRInst:add	%t11	i	1
	mov r5,#1                                         	@IRInst:add	%t11	i	1
	add r6,r4,r5                                      	@IRInst:add	%t11	i	1
	str r6,[fp,#28]                                   	@IRInst:add	%t11	i	1
	ldr r4,[fp,#28]                                   	@IRInst:assign	i	%t11
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t11
	b .L3                                             
.L5:
.L2:
	add fp,fp,#32                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_array:
        .long   array
.global_1_n:
        .long   n
.global findfa
.type findfa, %function
findfa:
.L6:
	push {r10,fp,lr}                                  
	sub sp,sp,#60                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	a	r0
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t15	a	4
	mov r5,#4                                         	@IRInst:mul	%t15	a	4
	mul r6,r4,r5                                      	@IRInst:mul	%t15	a	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t15	a	4
	ldr r4,.global_1_array                            	@IRInst:add	%t16	array	%t15
	ldr r5,[fp,#8]                                    	@IRInst:add	%t16	array	%t15
	add r6,r4,r5                                      	@IRInst:add	%t16	array	%t15
	str r6,[fp,#12]                                   	@IRInst:add	%t16	array	%t15
	ldr r4,[fp,#12]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[r4]                                       	@IRInst:assign	%t17	%t16
	str r4,[fp,#16]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[fp,#16]                                   	@IRInst:beq	%t18	%t17	a
	ldr r5,[fp,#4]                                    	@IRInst:beq	%t18	%t17	a
	cmp r4,r5                                         	@IRInst:beq	%t18	%t17	a
	beq .L8                                           
	b .L9                                             
.L8:
	ldr r4,[fp,#4]                                    	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L7                                             
	b .L10                                            
.L9:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t21	a	4
	mov r5,#4                                         	@IRInst:mul	%t21	a	4
	mul r6,r4,r5                                      	@IRInst:mul	%t21	a	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t21	a	4
	ldr r4,.global_1_array                            	@IRInst:add	%t22	array	%t21
	ldr r5,[fp,#32]                                   	@IRInst:add	%t22	array	%t21
	add r6,r4,r5                                      	@IRInst:add	%t22	array	%t21
	str r6,[fp,#36]                                   	@IRInst:add	%t22	array	%t21
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t23	%t22
	ldr r4,[r4]                                       	@IRInst:assign	%t23	%t22
	str r4,[fp,#40]                                   	@IRInst:assign	%t23	%t22
	ldr r0,[fp,#40]                                   	@IRInst:assign	r0	%t23
	bl findfa                                         
	str r0,[fp,#44]                                   	@IRInst:assign	%t24	r0
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t19	a	4
	mov r5,#4                                         	@IRInst:mul	%t19	a	4
	mul r6,r4,r5                                      	@IRInst:mul	%t19	a	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t19	a	4
	ldr r4,.global_1_array                            	@IRInst:add	%t20	array	%t19
	ldr r5,[fp,#24]                                   	@IRInst:add	%t20	array	%t19
	add r6,r4,r5                                      	@IRInst:add	%t20	array	%t19
	str r6,[fp,#28]                                   	@IRInst:add	%t20	array	%t19
	ldr r5,[fp,#28]                                   	@IRInst:assign	%t20	%t24
	ldr r4,[fp,#44]                                   	@IRInst:assign	%t20	%t24
	str r4,[r5]                                       	@IRInst:assign	%t20	%t24
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t25	a	4
	mov r5,#4                                         	@IRInst:mul	%t25	a	4
	mul r6,r4,r5                                      	@IRInst:mul	%t25	a	4
	str r6,[fp,#48]                                   	@IRInst:mul	%t25	a	4
	ldr r4,.global_1_array                            	@IRInst:add	%t26	array	%t25
	ldr r5,[fp,#48]                                   	@IRInst:add	%t26	array	%t25
	add r6,r4,r5                                      	@IRInst:add	%t26	array	%t25
	str r6,[fp,#52]                                   	@IRInst:add	%t26	array	%t25
	ldr r4,[fp,#52]                                   	@IRInst:assign	%t27	%t26
	ldr r4,[r4]                                       	@IRInst:assign	%t27	%t26
	str r4,[fp,#56]                                   	@IRInst:assign	%t27	%t26
	ldr r4,[fp,#56]                                   	@IRInst:assign		%t27
	str r4,[fp]                                       	@IRInst:assign		%t27
	b .L7                                             
.L10:
.L7:
	ldr r0,[fp]                                       
	add fp,fp,#60                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_2_array:
        .long   array
.global_2_n:
        .long   n
.global mmerge
.type mmerge, %function
mmerge:
.L11:
	push {r10,fp,lr}                                  
	sub sp,sp,#36                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	a	r0
	str r1,[fp,#4]                                    	@IRInst:assign	b	r1
	ldr r0,[fp]                                       	@IRInst:assign	r0	a
	bl findfa                                         
	str r0,[fp,#12]                                   	@IRInst:assign	%t34	r0
	ldr r4,[fp,#12]                                   
	str r4,[fp,#8]                                    
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	b
	bl findfa                                         
	str r0,[fp,#20]                                   	@IRInst:assign	%t36	r0
	ldr r4,[fp,#20]                                   
	str r4,[fp,#16]                                   
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t37	m	n
	ldr r5,[fp,#16]                                   	@IRInst:beq	%t37	m	n
	cmp r4,r5                                         	@IRInst:beq	%t37	m	n
	beq .L14                                          
	b .L13                                            
.L13:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t38	m	4
	mov r5,#4                                         	@IRInst:mul	%t38	m	4
	mul r6,r4,r5                                      	@IRInst:mul	%t38	m	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t38	m	4
	ldr r4,.global_2_array                            	@IRInst:add	%t39	array	%t38
	ldr r5,[fp,#28]                                   	@IRInst:add	%t39	array	%t38
	add r6,r4,r5                                      	@IRInst:add	%t39	array	%t38
	str r6,[fp,#32]                                   	@IRInst:add	%t39	array	%t38
	ldr r5,[fp,#32]                                   	@IRInst:assign	%t39	n
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t39	n
	str r4,[r5]                                       	@IRInst:assign	%t39	n
.L14:
.L15:
.L12:
	add fp,fp,#36                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_3_array:
        .long   array
.global_3_n:
        .long   n
.global main
.type main, %function
main:
.L16:
	push {r10,fp,lr}                                  
	sub sp,sp,#304                                    
	add fp,sp,#0                                      
	mov r4,#1                                         	@IRInst:assign	t	1
	str r4,[fp,#4]                                    	@IRInst:assign	t	1
.L18:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t45	t
	str r4,[fp,#20]                                   	@IRInst:assign	%t45	t
	ldr r4,[fp,#20]                                   	@IRInst:not_zero	%t46	%t45	0
	mov r5,#0                                         	@IRInst:not_zero	%t46	%t45	0
	cmp r4,r5                                         	@IRInst:not_zero	%t46	%t45	0
	moveq r6,#0                                       	@IRInst:not_zero	%t46	%t45	0
	str r6,[fp,#24]                                   	@IRInst:not_zero	%t46	%t45	0
	beq .L20                                          
	b .L19                                            
.L19:
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t47	t	1
	mov r5,#1                                         	@IRInst:sub	%t47	t	1
	sub r6,r4,r5                                      	@IRInst:sub	%t47	t	1
	str r6,[fp,#28]                                   	@IRInst:sub	%t47	t	1
	ldr r4,[fp,#28]                                   	@IRInst:assign	t	%t47
	str r4,[fp,#4]                                    	@IRInst:assign	t	%t47
	mov r4,#4                                         	@IRInst:assign	n	4
	ldr r9,.global_3_n                                	@IRInst:assign	n	4
	str r4,[r9]                                       	@IRInst:assign	n	4
	mov r4,#10                                        	@IRInst:assign	m	10
	str r4,[fp,#8]                                    	@IRInst:assign	m	10
	mov r4,#0                                         
	str r4,[fp,#32]                                   
	mov r4,#0                                         
	str r4,[fp,#36]                                   
	ldr r0,.global_3_n                                	@IRInst:assign	r0	n
	ldr r0,[r0]                                       	@IRInst:assign	r0	n
	bl init                                           
	ldr r4,.global_3_n                                	@IRInst:mul	%t51	n	n
	ldr r4,[r4]                                       	@IRInst:mul	%t51	n	n
	ldr r5,.global_3_n                                	@IRInst:mul	%t51	n	n
	ldr r5,[r5]                                       	@IRInst:mul	%t51	n	n
	mul r6,r4,r5                                      	@IRInst:mul	%t51	n	n
	str r6,[fp,#44]                                   	@IRInst:mul	%t51	n	n
	ldr r4,[fp,#44]                                   	@IRInst:add	%t52	%t51	1
	mov r5,#1                                         	@IRInst:add	%t52	%t51	1
	add r6,r4,r5                                      	@IRInst:add	%t52	%t51	1
	str r6,[fp,#48]                                   	@IRInst:add	%t52	%t51	1
	ldr r4,[fp,#48]                                   
	str r4,[fp,#40]                                   
.L21:
	ldr r4,[fp,#32]                                   	@IRInst:blt	%t53	i	m
	ldr r5,[fp,#8]                                    	@IRInst:blt	%t53	i	m
	cmp r4,r5                                         	@IRInst:blt	%t53	i	m
	blt .L22                                          
	b .L23                                            
.L22:
	bl getint                                         
	str r0,[fp,#56]                                   	@IRInst:assign	%t54	r0
	ldr r4,[fp,#56]                                   	@IRInst:assign	a	%t54
	str r4,[fp,#12]                                   	@IRInst:assign	a	%t54
	bl getint                                         
	str r0,[fp,#60]                                   	@IRInst:assign	%t55	r0
	ldr r4,[fp,#60]                                   	@IRInst:assign	b	%t55
	str r4,[fp,#16]                                   	@IRInst:assign	b	%t55
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t56	flag
	str r4,[fp,#64]                                   	@IRInst:assign	%t56	flag
	ldr r4,[fp,#64]                                   	@IRInst:not_zero	%t57	%t56	0
	mov r5,#0                                         	@IRInst:not_zero	%t57	%t56	0
	cmp r4,r5                                         	@IRInst:not_zero	%t57	%t56	0
	moveq r6,#0                                       	@IRInst:not_zero	%t57	%t56	0
	str r6,[fp,#68]                                   	@IRInst:not_zero	%t57	%t56	0
	ldr r4,[fp,#68]                                   	@IRInst:not_zero	%t58	%t57	0
	mov r5,#0                                         	@IRInst:not_zero	%t58	%t57	0
	cmp r4,r5                                         	@IRInst:not_zero	%t58	%t57	0
	moveq r6,#0                                       	@IRInst:not_zero	%t58	%t57	0
	str r6,[fp,#72]                                   	@IRInst:not_zero	%t58	%t57	0
	beq .L24                                          
	b .L25                                            
.L24:
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t60	a	1
	mov r5,#1                                         	@IRInst:sub	%t60	a	1
	sub r6,r4,r5                                      	@IRInst:sub	%t60	a	1
	str r6,[fp,#80]                                   	@IRInst:sub	%t60	a	1
	ldr r4,.global_3_n                                	@IRInst:mul	%t61	n	%t60
	ldr r4,[r4]                                       	@IRInst:mul	%t61	n	%t60
	ldr r5,[fp,#80]                                   	@IRInst:mul	%t61	n	%t60
	mul r6,r4,r5                                      	@IRInst:mul	%t61	n	%t60
	str r6,[fp,#84]                                   	@IRInst:mul	%t61	n	%t60
	ldr r4,[fp,#84]                                   	@IRInst:add	%t62	%t61	b
	ldr r5,[fp,#16]                                   	@IRInst:add	%t62	%t61	b
	add r6,r4,r5                                      	@IRInst:add	%t62	%t61	b
	str r6,[fp,#88]                                   	@IRInst:add	%t62	%t61	b
	ldr r4,[fp,#88]                                   
	str r4,[fp,#76]                                   
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t63	loc	4
	mov r5,#4                                         	@IRInst:mul	%t63	loc	4
	mul r6,r4,r5                                      	@IRInst:mul	%t63	loc	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t63	loc	4
	ldr r4,.global_3_array                            	@IRInst:add	%t64	array	%t63
	ldr r5,[fp,#92]                                   	@IRInst:add	%t64	array	%t63
	add r6,r4,r5                                      	@IRInst:add	%t64	array	%t63
	str r6,[fp,#96]                                   	@IRInst:add	%t64	array	%t63
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t64	loc
	ldr r4,[fp,#76]                                   	@IRInst:assign	%t64	loc
	str r4,[r5]                                       	@IRInst:assign	%t64	loc
	ldr r4,[fp,#12]                                   	@IRInst:beq	%t65	a	1
	mov r5,#1                                         	@IRInst:beq	%t65	a	1
	cmp r4,r5                                         	@IRInst:beq	%t65	a	1
	beq .L27                                          
	b .L28                                            
.L27:
	mov r4,#0                                         	@IRInst:mul	%t66	0	4
	mov r5,#4                                         	@IRInst:mul	%t66	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t66	0	4
	str r6,[fp,#104]                                  	@IRInst:mul	%t66	0	4
	ldr r4,.global_3_array                            	@IRInst:add	%t67	array	%t66
	ldr r5,[fp,#104]                                  	@IRInst:add	%t67	array	%t66
	add r6,r4,r5                                      	@IRInst:add	%t67	array	%t66
	str r6,[fp,#108]                                  	@IRInst:add	%t67	array	%t66
	ldr r5,[fp,#108]                                  	@IRInst:assign	%t67	0
	mov r4,#0                                         	@IRInst:assign	%t67	0
	str r4,[r5]                                       	@IRInst:assign	%t67	0
	ldr r0,[fp,#76]                                   	@IRInst:assign	r0	loc
	mov r1,#0                                         	@IRInst:assign	r1	0
	bl mmerge                                         
.L28:
.L29:
	ldr r4,[fp,#12]                                   	@IRInst:beq	%t68	a	n
	ldr r5,.global_3_n                                	@IRInst:beq	%t68	a	n
	ldr r5,[r5]                                       	@IRInst:beq	%t68	a	n
	cmp r4,r5                                         	@IRInst:beq	%t68	a	n
	beq .L30                                          
	b .L31                                            
.L30:
	ldr r4,[fp,#40]                                   	@IRInst:mul	%t69	k	4
	mov r5,#4                                         	@IRInst:mul	%t69	k	4
	mul r6,r4,r5                                      	@IRInst:mul	%t69	k	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t69	k	4
	ldr r4,.global_3_array                            	@IRInst:add	%t70	array	%t69
	ldr r5,[fp,#116]                                  	@IRInst:add	%t70	array	%t69
	add r6,r4,r5                                      	@IRInst:add	%t70	array	%t69
	str r6,[fp,#120]                                  	@IRInst:add	%t70	array	%t69
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t70	k
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t70	k
	str r4,[r5]                                       	@IRInst:assign	%t70	k
	ldr r0,[fp,#76]                                   	@IRInst:assign	r0	loc
	ldr r1,[fp,#40]                                   	@IRInst:assign	r1	k
	bl mmerge                                         
.L31:
.L32:
	ldr r4,[fp,#16]                                   	@IRInst:blt	%t71	b	n
	ldr r5,.global_3_n                                	@IRInst:blt	%t71	b	n
	ldr r5,[r5]                                       	@IRInst:blt	%t71	b	n
	cmp r4,r5                                         	@IRInst:blt	%t71	b	n
	blt .L36                                          
	b .L34                                            
.L36:
	ldr r4,[fp,#76]                                   	@IRInst:add	%t73	loc	1
	mov r5,#1                                         	@IRInst:add	%t73	loc	1
	add r6,r4,r5                                      	@IRInst:add	%t73	loc	1
	str r6,[fp,#132]                                  	@IRInst:add	%t73	loc	1
	ldr r4,[fp,#132]                                  	@IRInst:mul	%t72	%t73	4
	mov r5,#4                                         	@IRInst:mul	%t72	%t73	4
	mul r6,r4,r5                                      	@IRInst:mul	%t72	%t73	4
	str r6,[fp,#128]                                  	@IRInst:mul	%t72	%t73	4
	ldr r4,.global_3_array                            	@IRInst:add	%t74	array	%t72
	ldr r5,[fp,#128]                                  	@IRInst:add	%t74	array	%t72
	add r6,r4,r5                                      	@IRInst:add	%t74	array	%t72
	str r6,[fp,#136]                                  	@IRInst:add	%t74	array	%t72
	ldr r4,[fp,#136]                                  	@IRInst:assign	%t75	%t74
	ldr r4,[r4]                                       	@IRInst:assign	%t75	%t74
	str r4,[fp,#140]                                  	@IRInst:assign	%t75	%t74
	ldr r4,[fp,#140]                                  	@IRInst:beq	%t76	%t75	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t76	%t75	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t76	%t75	18446744073709551615
	beq .L34                                          
	b .L33                                            
.L33:
	ldr r4,[fp,#76]                                   	@IRInst:add	%t77	loc	1
	mov r5,#1                                         	@IRInst:add	%t77	loc	1
	add r6,r4,r5                                      	@IRInst:add	%t77	loc	1
	str r6,[fp,#148]                                  	@IRInst:add	%t77	loc	1
	ldr r0,[fp,#76]                                   	@IRInst:assign	r0	loc
	ldr r1,[fp,#148]                                  	@IRInst:assign	r1	%t77
	bl mmerge                                         
.L34:
.L35:
	ldr r4,[fp,#16]                                   	@IRInst:bgt	%t78	b	1
	mov r5,#1                                         	@IRInst:bgt	%t78	b	1
	cmp r4,r5                                         	@IRInst:bgt	%t78	b	1
	bgt .L40                                          
	b .L38                                            
.L40:
	ldr r4,[fp,#76]                                   	@IRInst:sub	%t80	loc	1
	mov r5,#1                                         	@IRInst:sub	%t80	loc	1
	sub r6,r4,r5                                      	@IRInst:sub	%t80	loc	1
	str r6,[fp,#160]                                  	@IRInst:sub	%t80	loc	1
	ldr r4,[fp,#160]                                  	@IRInst:mul	%t79	%t80	4
	mov r5,#4                                         	@IRInst:mul	%t79	%t80	4
	mul r6,r4,r5                                      	@IRInst:mul	%t79	%t80	4
	str r6,[fp,#156]                                  	@IRInst:mul	%t79	%t80	4
	ldr r4,.global_3_array                            	@IRInst:add	%t81	array	%t79
	ldr r5,[fp,#156]                                  	@IRInst:add	%t81	array	%t79
	add r6,r4,r5                                      	@IRInst:add	%t81	array	%t79
	str r6,[fp,#164]                                  	@IRInst:add	%t81	array	%t79
	ldr r4,[fp,#164]                                  	@IRInst:assign	%t82	%t81
	ldr r4,[r4]                                       	@IRInst:assign	%t82	%t81
	str r4,[fp,#168]                                  	@IRInst:assign	%t82	%t81
	ldr r4,[fp,#168]                                  	@IRInst:beq	%t83	%t82	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t83	%t82	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t83	%t82	18446744073709551615
	beq .L38                                          
	b .L37                                            
.L37:
	ldr r4,[fp,#76]                                   	@IRInst:sub	%t84	loc	1
	mov r5,#1                                         	@IRInst:sub	%t84	loc	1
	sub r6,r4,r5                                      	@IRInst:sub	%t84	loc	1
	str r6,[fp,#176]                                  	@IRInst:sub	%t84	loc	1
	ldr r0,[fp,#76]                                   	@IRInst:assign	r0	loc
	ldr r1,[fp,#176]                                  	@IRInst:assign	r1	%t84
	bl mmerge                                         
.L38:
.L39:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t85	a	n
	ldr r5,.global_3_n                                	@IRInst:blt	%t85	a	n
	ldr r5,[r5]                                       	@IRInst:blt	%t85	a	n
	cmp r4,r5                                         	@IRInst:blt	%t85	a	n
	blt .L44                                          
	b .L42                                            
.L44:
	ldr r4,[fp,#76]                                   	@IRInst:add	%t87	loc	n
	ldr r5,.global_3_n                                	@IRInst:add	%t87	loc	n
	ldr r5,[r5]                                       	@IRInst:add	%t87	loc	n
	add r6,r4,r5                                      	@IRInst:add	%t87	loc	n
	str r6,[fp,#188]                                  	@IRInst:add	%t87	loc	n
	ldr r4,[fp,#188]                                  	@IRInst:mul	%t86	%t87	4
	mov r5,#4                                         	@IRInst:mul	%t86	%t87	4
	mul r6,r4,r5                                      	@IRInst:mul	%t86	%t87	4
	str r6,[fp,#184]                                  	@IRInst:mul	%t86	%t87	4
	ldr r4,.global_3_array                            	@IRInst:add	%t88	array	%t86
	ldr r5,[fp,#184]                                  	@IRInst:add	%t88	array	%t86
	add r6,r4,r5                                      	@IRInst:add	%t88	array	%t86
	str r6,[fp,#192]                                  	@IRInst:add	%t88	array	%t86
	ldr r4,[fp,#192]                                  	@IRInst:assign	%t89	%t88
	ldr r4,[r4]                                       	@IRInst:assign	%t89	%t88
	str r4,[fp,#196]                                  	@IRInst:assign	%t89	%t88
	ldr r4,[fp,#196]                                  	@IRInst:beq	%t90	%t89	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t90	%t89	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t90	%t89	18446744073709551615
	beq .L42                                          
	b .L41                                            
.L41:
	ldr r4,[fp,#76]                                   	@IRInst:add	%t91	loc	n
	ldr r5,.global_3_n                                	@IRInst:add	%t91	loc	n
	ldr r5,[r5]                                       	@IRInst:add	%t91	loc	n
	add r6,r4,r5                                      	@IRInst:add	%t91	loc	n
	str r6,[fp,#204]                                  	@IRInst:add	%t91	loc	n
	ldr r0,[fp,#76]                                   	@IRInst:assign	r0	loc
	ldr r1,[fp,#204]                                  	@IRInst:assign	r1	%t91
	bl mmerge                                         
.L42:
.L43:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t92	a	1
	mov r5,#1                                         	@IRInst:bgt	%t92	a	1
	cmp r4,r5                                         	@IRInst:bgt	%t92	a	1
	bgt .L48                                          
	b .L46                                            
.L48:
	ldr r4,[fp,#76]                                   	@IRInst:sub	%t94	loc	n
	ldr r5,.global_3_n                                	@IRInst:sub	%t94	loc	n
	ldr r5,[r5]                                       	@IRInst:sub	%t94	loc	n
	sub r6,r4,r5                                      	@IRInst:sub	%t94	loc	n
	str r6,[fp,#216]                                  	@IRInst:sub	%t94	loc	n
	ldr r4,[fp,#216]                                  	@IRInst:mul	%t93	%t94	4
	mov r5,#4                                         	@IRInst:mul	%t93	%t94	4
	mul r6,r4,r5                                      	@IRInst:mul	%t93	%t94	4
	str r6,[fp,#212]                                  	@IRInst:mul	%t93	%t94	4
	ldr r4,.global_3_array                            	@IRInst:add	%t95	array	%t93
	ldr r5,[fp,#212]                                  	@IRInst:add	%t95	array	%t93
	add r6,r4,r5                                      	@IRInst:add	%t95	array	%t93
	str r6,[fp,#220]                                  	@IRInst:add	%t95	array	%t93
	ldr r4,[fp,#220]                                  	@IRInst:assign	%t96	%t95
	ldr r4,[r4]                                       	@IRInst:assign	%t96	%t95
	str r4,[fp,#224]                                  	@IRInst:assign	%t96	%t95
	ldr r4,[fp,#224]                                  	@IRInst:beq	%t97	%t96	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t97	%t96	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t97	%t96	18446744073709551615
	beq .L46                                          
	b .L45                                            
.L45:
	ldr r4,[fp,#76]                                   	@IRInst:sub	%t98	loc	n
	ldr r5,.global_3_n                                	@IRInst:sub	%t98	loc	n
	ldr r5,[r5]                                       	@IRInst:sub	%t98	loc	n
	sub r6,r4,r5                                      	@IRInst:sub	%t98	loc	n
	str r6,[fp,#232]                                  	@IRInst:sub	%t98	loc	n
	ldr r0,[fp,#76]                                   	@IRInst:assign	r0	loc
	ldr r1,[fp,#232]                                  	@IRInst:assign	r1	%t98
	bl mmerge                                         
.L46:
.L47:
	mov r4,#0                                         	@IRInst:mul	%t99	0	4
	mov r5,#4                                         	@IRInst:mul	%t99	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t99	0	4
	str r6,[fp,#236]                                  	@IRInst:mul	%t99	0	4
	ldr r4,.global_3_array                            	@IRInst:add	%t100	array	%t99
	ldr r5,[fp,#236]                                  	@IRInst:add	%t100	array	%t99
	add r6,r4,r5                                      	@IRInst:add	%t100	array	%t99
	str r6,[fp,#240]                                  	@IRInst:add	%t100	array	%t99
	ldr r4,[fp,#240]                                  	@IRInst:assign	%t101	%t100
	ldr r4,[r4]                                       	@IRInst:assign	%t101	%t100
	str r4,[fp,#244]                                  	@IRInst:assign	%t101	%t100
	ldr r4,[fp,#244]                                  	@IRInst:beq	%t102	%t101	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t102	%t101	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t102	%t101	18446744073709551615
	beq .L50                                          
	b .L53                                            
.L53:
	ldr r4,[fp,#40]                                   	@IRInst:mul	%t103	k	4
	mov r5,#4                                         	@IRInst:mul	%t103	k	4
	mul r6,r4,r5                                      	@IRInst:mul	%t103	k	4
	str r6,[fp,#252]                                  	@IRInst:mul	%t103	k	4
	ldr r4,.global_3_array                            	@IRInst:add	%t104	array	%t103
	ldr r5,[fp,#252]                                  	@IRInst:add	%t104	array	%t103
	add r6,r4,r5                                      	@IRInst:add	%t104	array	%t103
	str r6,[fp,#256]                                  	@IRInst:add	%t104	array	%t103
	ldr r4,[fp,#256]                                  	@IRInst:assign	%t105	%t104
	ldr r4,[r4]                                       	@IRInst:assign	%t105	%t104
	str r4,[fp,#260]                                  	@IRInst:assign	%t105	%t104
	ldr r4,[fp,#260]                                  	@IRInst:beq	%t106	%t105	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t106	%t105	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t106	%t105	18446744073709551615
	beq .L50                                          
	b .L52                                            
.L52:
	mov r0,#0                                         	@IRInst:assign	r0	0
	bl findfa                                         
	str r0,[fp,#268]                                  	@IRInst:assign	%t107	r0
	ldr r0,[fp,#40]                                   	@IRInst:assign	r0	k
	bl findfa                                         
	str r0,[fp,#272]                                  	@IRInst:assign	%t108	r0
	ldr r4,[fp,#268]                                  	@IRInst:beq	%t109	%t107	%t108
	ldr r5,[fp,#272]                                  	@IRInst:beq	%t109	%t107	%t108
	cmp r4,r5                                         	@IRInst:beq	%t109	%t107	%t108
	beq .L49                                          
	b .L50                                            
.L49:
	mov r4,#1                                         	@IRInst:assign	flag	1
	str r4,[fp,#36]                                   	@IRInst:assign	flag	1
	ldr r4,[fp,#32]                                   	@IRInst:add	%t111	i	1
	mov r5,#1                                         	@IRInst:add	%t111	i	1
	add r6,r4,r5                                      	@IRInst:add	%t111	i	1
	str r6,[fp,#284]                                  	@IRInst:add	%t111	i	1
	ldr r4,[fp,#284]                                  
	str r4,[fp,#280]                                  
	ldr r0,[fp,#280]                                  	@IRInst:assign	r0	tmp
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
.L50:
.L51:
.L25:
.L26:
	ldr r4,[fp,#32]                                   	@IRInst:add	%t112	i	1
	mov r5,#1                                         	@IRInst:add	%t112	i	1
	add r6,r4,r5                                      	@IRInst:add	%t112	i	1
	str r6,[fp,#288]                                  	@IRInst:add	%t112	i	1
	ldr r4,[fp,#288]                                  	@IRInst:assign	i	%t112
	str r4,[fp,#32]                                   	@IRInst:assign	i	%t112
	b .L21                                            
.L23:
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t113	flag
	str r4,[fp,#292]                                  	@IRInst:assign	%t113	flag
	ldr r4,[fp,#292]                                  	@IRInst:not_zero	%t114	%t113	0
	mov r5,#0                                         	@IRInst:not_zero	%t114	%t113	0
	cmp r4,r5                                         	@IRInst:not_zero	%t114	%t113	0
	moveq r6,#0                                       	@IRInst:not_zero	%t114	%t113	0
	str r6,[fp,#296]                                  	@IRInst:not_zero	%t114	%t113	0
	ldr r4,[fp,#296]                                  	@IRInst:not_zero	%t115	%t114	0
	mov r5,#0                                         	@IRInst:not_zero	%t115	%t114	0
	cmp r4,r5                                         	@IRInst:not_zero	%t115	%t114	0
	moveq r6,#0                                       	@IRInst:not_zero	%t115	%t114	0
	str r6,[fp,#300]                                  	@IRInst:not_zero	%t115	%t114	0
	beq .L54                                          
	b .L55                                            
.L54:
	mov r0,#-1                                        	@IRInst:assign	r0	18446744073709551615
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
.L55:
.L56:
	b .L18                                            
.L20:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L17                                            
.L17:
	ldr r0,[fp]                                       
	add fp,fp,#304                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
