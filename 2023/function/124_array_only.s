.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
i:
        .zero   0
k:
        .zero   0
.text
.global_0_i:
        .long   i
.global_0_k:
        .long   k
.global inc_impl
.type inc_impl, %function
inc_impl:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#64                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	str r1,[fp,#4]                                    	@IRInst:assign	rec	r1
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t7	rec	0
	mov r5,#0                                         	@IRInst:beq	%t7	rec	0
	cmp r4,r5                                         	@IRInst:beq	%t7	rec	0
	moveq r6,#1                                       	@IRInst:beq	%t7	rec	0
	movne r6,#0                                       	@IRInst:beq	%t7	rec	0
	str r6,[fp,#8]                                    	@IRInst:beq	%t7	rec	0
	beq .L3                                           
	b .L4                                             
.L3:
	mov r4,#0                                         	@IRInst:mul	%t10	0	4
	mov r5,#4                                         	@IRInst:mul	%t10	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t10	0	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t10	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t11	x	%t10
	ldr r5,[fp,#20]                                   	@IRInst:add	%t11	x	%t10
	add r6,r4,r5                                      	@IRInst:add	%t11	x	%t10
	str r6,[fp,#24]                                   	@IRInst:add	%t11	x	%t10
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t12	%t11
	ldr r4,[r4]                                       	@IRInst:assign	%t12	%t11
	str r4,[fp,#28]                                   	@IRInst:assign	%t12	%t11
	ldr r4,[fp,#28]                                   	@IRInst:add	%t13	%t12	1
	mov r5,#1                                         	@IRInst:add	%t13	%t12	1
	add r6,r4,r5                                      	@IRInst:add	%t13	%t12	1
	str r6,[fp,#32]                                   	@IRInst:add	%t13	%t12	1
	mov r4,#0                                         	@IRInst:mul	%t8	0	4
	mov r5,#4                                         	@IRInst:mul	%t8	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t8	0	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t8	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t9	x	%t8
	ldr r5,[fp,#12]                                   	@IRInst:add	%t9	x	%t8
	add r6,r4,r5                                      	@IRInst:add	%t9	x	%t8
	str r6,[fp,#16]                                   	@IRInst:add	%t9	x	%t8
	ldr r5,[fp,#16]                                   	@IRInst:assign	%t9	%t13
	ldr r4,[fp,#32]                                   	@IRInst:assign	%t9	%t13
	str r4,[r5]                                       	@IRInst:assign	%t9	%t13
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:mul	%t16	0	4
	mov r5,#4                                         	@IRInst:mul	%t16	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t16	0	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t16	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t17	x	%t16
	ldr r5,[fp,#44]                                   	@IRInst:add	%t17	x	%t16
	add r6,r4,r5                                      	@IRInst:add	%t17	x	%t16
	str r6,[fp,#48]                                   	@IRInst:add	%t17	x	%t16
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t18	%t17
	ldr r4,[r4]                                       	@IRInst:assign	%t18	%t17
	str r4,[fp,#52]                                   	@IRInst:assign	%t18	%t17
	ldr r4,[fp,#52]                                   	@IRInst:mul	%t19	%t18	2
	mov r5,#2                                         	@IRInst:mul	%t19	%t18	2
	mul r6,r4,r5                                      	@IRInst:mul	%t19	%t18	2
	str r6,[fp,#56]                                   	@IRInst:mul	%t19	%t18	2
	mov r4,#0                                         	@IRInst:mul	%t14	0	4
	mov r5,#4                                         	@IRInst:mul	%t14	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t14	0	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t14	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t15	x	%t14
	ldr r5,[fp,#36]                                   	@IRInst:add	%t15	x	%t14
	add r6,r4,r5                                      	@IRInst:add	%t15	x	%t14
	str r6,[fp,#40]                                   	@IRInst:add	%t15	x	%t14
	ldr r5,[fp,#40]                                   	@IRInst:assign	%t15	%t19
	ldr r4,[fp,#56]                                   	@IRInst:assign	%t15	%t19
	str r4,[r5]                                       	@IRInst:assign	%t15	%t19
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t20	rec	1
	mov r5,#1                                         	@IRInst:sub	%t20	rec	1
	sub r6,r4,r5                                      	@IRInst:sub	%t20	rec	1
	str r6,[fp,#60]                                   	@IRInst:sub	%t20	rec	1
	ldr r0,[fp]                                       	@IRInst:assign	r0	x
	ldr r1,[fp,#60]                                   	@IRInst:assign	r1	%t20
	bl inc_impl                                       
.L5:
.L2:
	add fp,fp,#64                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_i:
        .long   i
.global_1_k:
        .long   k
.global inc
.type inc, %function
inc:
.L6:
	push {r10,fp,lr}                                  
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	mov r4,#0                                         	@IRInst:mul	%t24	0	4
	mov r5,#4                                         	@IRInst:mul	%t24	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t24	0	4
	str r6,[fp,#4]                                    	@IRInst:mul	%t24	0	4
	ldr r4,.global_1_k                                	@IRInst:add	%t25	k	%t24
	ldr r5,[fp,#4]                                    	@IRInst:add	%t25	k	%t24
	add r6,r4,r5                                      	@IRInst:add	%t25	k	%t24
	str r6,[fp,#8]                                    	@IRInst:add	%t25	k	%t24
	ldr r4,[fp,#8]                                    	@IRInst:assign	%t26	%t25
	ldr r4,[r4]                                       	@IRInst:assign	%t26	%t25
	str r4,[fp,#12]                                   	@IRInst:assign	%t26	%t25
	ldr r0,[fp]                                       	@IRInst:assign	r0	x
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	%t26
	bl inc_impl                                       
.L7:
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_2_i:
        .long   i
.global_2_k:
        .long   k
.global add_impl
.type add_impl, %function
add_impl:
.L8:
	push {r10,fp,lr}                                  
	sub sp,sp,#80                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	str r1,[fp,#4]                                    	@IRInst:assign	y	r1
	str r2,[fp,#8]                                    	@IRInst:assign	rec	r2
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t34	rec	0
	mov r5,#0                                         	@IRInst:beq	%t34	rec	0
	cmp r4,r5                                         	@IRInst:beq	%t34	rec	0
	moveq r6,#1                                       	@IRInst:beq	%t34	rec	0
	movne r6,#0                                       	@IRInst:beq	%t34	rec	0
	str r6,[fp,#12]                                   	@IRInst:beq	%t34	rec	0
	beq .L10                                          
	b .L11                                            
.L10:
	mov r4,#0                                         	@IRInst:mul	%t37	0	4
	mov r5,#4                                         	@IRInst:mul	%t37	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t37	0	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t37	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t38	x	%t37
	ldr r5,[fp,#24]                                   	@IRInst:add	%t38	x	%t37
	add r6,r4,r5                                      	@IRInst:add	%t38	x	%t37
	str r6,[fp,#28]                                   	@IRInst:add	%t38	x	%t37
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t39	%t38
	ldr r4,[r4]                                       	@IRInst:assign	%t39	%t38
	str r4,[fp,#32]                                   	@IRInst:assign	%t39	%t38
	mov r4,#0                                         	@IRInst:mul	%t40	0	4
	mov r5,#4                                         	@IRInst:mul	%t40	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t40	0	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t40	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t41	y	%t40
	ldr r5,[fp,#36]                                   	@IRInst:add	%t41	y	%t40
	add r6,r4,r5                                      	@IRInst:add	%t41	y	%t40
	str r6,[fp,#40]                                   	@IRInst:add	%t41	y	%t40
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t42	%t41
	ldr r4,[r4]                                       	@IRInst:assign	%t42	%t41
	str r4,[fp,#44]                                   	@IRInst:assign	%t42	%t41
	ldr r4,[fp,#32]                                   	@IRInst:add	%t43	%t39	%t42
	ldr r5,[fp,#44]                                   	@IRInst:add	%t43	%t39	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	%t39	%t42
	str r6,[fp,#48]                                   	@IRInst:add	%t43	%t39	%t42
	mov r4,#0                                         	@IRInst:mul	%t35	0	4
	mov r5,#4                                         	@IRInst:mul	%t35	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t35	0	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t35	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t36	x	%t35
	ldr r5,[fp,#16]                                   	@IRInst:add	%t36	x	%t35
	add r6,r4,r5                                      	@IRInst:add	%t36	x	%t35
	str r6,[fp,#20]                                   	@IRInst:add	%t36	x	%t35
	ldr r5,[fp,#20]                                   	@IRInst:assign	%t36	%t43
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t36	%t43
	str r4,[r5]                                       	@IRInst:assign	%t36	%t43
	b .L12                                            
.L11:
	mov r4,#0                                         	@IRInst:mul	%t46	0	4
	mov r5,#4                                         	@IRInst:mul	%t46	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	0	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t46	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t47	x	%t46
	ldr r5,[fp,#60]                                   	@IRInst:add	%t47	x	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	x	%t46
	str r6,[fp,#64]                                   	@IRInst:add	%t47	x	%t46
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t48	%t47
	ldr r4,[r4]                                       	@IRInst:assign	%t48	%t47
	str r4,[fp,#68]                                   	@IRInst:assign	%t48	%t47
	ldr r4,[fp,#68]                                   	@IRInst:mul	%t49	%t48	2
	mov r5,#2                                         	@IRInst:mul	%t49	%t48	2
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t48	2
	str r6,[fp,#72]                                   	@IRInst:mul	%t49	%t48	2
	mov r4,#0                                         	@IRInst:mul	%t44	0	4
	mov r5,#4                                         	@IRInst:mul	%t44	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	0	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t44	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t45	x	%t44
	ldr r5,[fp,#52]                                   	@IRInst:add	%t45	x	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	x	%t44
	str r6,[fp,#56]                                   	@IRInst:add	%t45	x	%t44
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t45	%t49
	ldr r4,[fp,#72]                                   	@IRInst:assign	%t45	%t49
	str r4,[r5]                                       	@IRInst:assign	%t45	%t49
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t50	rec	1
	mov r5,#1                                         	@IRInst:sub	%t50	rec	1
	sub r6,r4,r5                                      	@IRInst:sub	%t50	rec	1
	str r6,[fp,#76]                                   	@IRInst:sub	%t50	rec	1
	ldr r0,[fp]                                       	@IRInst:assign	r0	x
	ldr r1,[fp,#4]                                    	@IRInst:assign	r1	y
	ldr r2,[fp,#76]                                   	@IRInst:assign	r2	%t50
	bl add_impl                                       
.L12:
.L9:
	add fp,fp,#80                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_3_i:
        .long   i
.global_3_k:
        .long   k
.global add
.type add, %function
add:
.L13:
	push {r10,fp,lr}                                  
	sub sp,sp,#20                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	str r1,[fp,#4]                                    	@IRInst:assign	y	r1
	mov r4,#0                                         	@IRInst:mul	%t56	0	4
	mov r5,#4                                         	@IRInst:mul	%t56	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t56	0	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t56	0	4
	ldr r4,.global_3_k                                	@IRInst:add	%t57	k	%t56
	ldr r5,[fp,#8]                                    	@IRInst:add	%t57	k	%t56
	add r6,r4,r5                                      	@IRInst:add	%t57	k	%t56
	str r6,[fp,#12]                                   	@IRInst:add	%t57	k	%t56
	ldr r4,[fp,#12]                                   	@IRInst:assign	%t58	%t57
	ldr r4,[r4]                                       	@IRInst:assign	%t58	%t57
	str r4,[fp,#16]                                   	@IRInst:assign	%t58	%t57
	ldr r0,[fp]                                       	@IRInst:assign	r0	x
	ldr r1,[fp,#4]                                    	@IRInst:assign	r1	y
	ldr r2,[fp,#16]                                   	@IRInst:assign	r2	%t58
	bl add_impl                                       
.L14:
	add fp,fp,#20                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_4_i:
        .long   i
.global_4_k:
        .long   k
.global sub_impl
.type sub_impl, %function
sub_impl:
.L15:
	push {r10,fp,lr}                                  
	sub sp,sp,#80                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	str r1,[fp,#4]                                    	@IRInst:assign	y	r1
	str r2,[fp,#8]                                    	@IRInst:assign	rec	r2
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t66	rec	0
	mov r5,#0                                         	@IRInst:beq	%t66	rec	0
	cmp r4,r5                                         	@IRInst:beq	%t66	rec	0
	moveq r6,#1                                       	@IRInst:beq	%t66	rec	0
	movne r6,#0                                       	@IRInst:beq	%t66	rec	0
	str r6,[fp,#12]                                   	@IRInst:beq	%t66	rec	0
	beq .L17                                          
	b .L18                                            
.L17:
	mov r4,#0                                         	@IRInst:mul	%t69	0	4
	mov r5,#4                                         	@IRInst:mul	%t69	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t69	0	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t69	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t70	x	%t69
	ldr r5,[fp,#24]                                   	@IRInst:add	%t70	x	%t69
	add r6,r4,r5                                      	@IRInst:add	%t70	x	%t69
	str r6,[fp,#28]                                   	@IRInst:add	%t70	x	%t69
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t71	%t70
	ldr r4,[r4]                                       	@IRInst:assign	%t71	%t70
	str r4,[fp,#32]                                   	@IRInst:assign	%t71	%t70
	mov r4,#0                                         	@IRInst:mul	%t72	0	4
	mov r5,#4                                         	@IRInst:mul	%t72	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t72	0	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t72	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t73	y	%t72
	ldr r5,[fp,#36]                                   	@IRInst:add	%t73	y	%t72
	add r6,r4,r5                                      	@IRInst:add	%t73	y	%t72
	str r6,[fp,#40]                                   	@IRInst:add	%t73	y	%t72
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t74	%t73
	ldr r4,[r4]                                       	@IRInst:assign	%t74	%t73
	str r4,[fp,#44]                                   	@IRInst:assign	%t74	%t73
	ldr r4,[fp,#32]                                   	@IRInst:sub	%t75	%t71	%t74
	ldr r5,[fp,#44]                                   	@IRInst:sub	%t75	%t71	%t74
	sub r6,r4,r5                                      	@IRInst:sub	%t75	%t71	%t74
	str r6,[fp,#48]                                   	@IRInst:sub	%t75	%t71	%t74
	mov r4,#0                                         	@IRInst:mul	%t67	0	4
	mov r5,#4                                         	@IRInst:mul	%t67	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t67	0	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t67	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t68	x	%t67
	ldr r5,[fp,#16]                                   	@IRInst:add	%t68	x	%t67
	add r6,r4,r5                                      	@IRInst:add	%t68	x	%t67
	str r6,[fp,#20]                                   	@IRInst:add	%t68	x	%t67
	ldr r5,[fp,#20]                                   	@IRInst:assign	%t68	%t75
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t68	%t75
	str r4,[r5]                                       	@IRInst:assign	%t68	%t75
	b .L19                                            
.L18:
	mov r4,#0                                         	@IRInst:mul	%t78	0	4
	mov r5,#4                                         	@IRInst:mul	%t78	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t78	0	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t78	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t79	x	%t78
	ldr r5,[fp,#60]                                   	@IRInst:add	%t79	x	%t78
	add r6,r4,r5                                      	@IRInst:add	%t79	x	%t78
	str r6,[fp,#64]                                   	@IRInst:add	%t79	x	%t78
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t80	%t79
	ldr r4,[r4]                                       	@IRInst:assign	%t80	%t79
	str r4,[fp,#68]                                   	@IRInst:assign	%t80	%t79
	ldr r4,[fp,#68]                                   	@IRInst:mul	%t81	%t80	2
	mov r5,#2                                         	@IRInst:mul	%t81	%t80	2
	mul r6,r4,r5                                      	@IRInst:mul	%t81	%t80	2
	str r6,[fp,#72]                                   	@IRInst:mul	%t81	%t80	2
	mov r4,#0                                         	@IRInst:mul	%t76	0	4
	mov r5,#4                                         	@IRInst:mul	%t76	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t76	0	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t76	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t77	x	%t76
	ldr r5,[fp,#52]                                   	@IRInst:add	%t77	x	%t76
	add r6,r4,r5                                      	@IRInst:add	%t77	x	%t76
	str r6,[fp,#56]                                   	@IRInst:add	%t77	x	%t76
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t77	%t81
	ldr r4,[fp,#72]                                   	@IRInst:assign	%t77	%t81
	str r4,[r5]                                       	@IRInst:assign	%t77	%t81
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t82	rec	1
	mov r5,#1                                         	@IRInst:sub	%t82	rec	1
	sub r6,r4,r5                                      	@IRInst:sub	%t82	rec	1
	str r6,[fp,#76]                                   	@IRInst:sub	%t82	rec	1
	ldr r0,[fp]                                       	@IRInst:assign	r0	x
	ldr r1,[fp,#4]                                    	@IRInst:assign	r1	y
	ldr r2,[fp,#76]                                   	@IRInst:assign	r2	%t82
	bl sub_impl                                       
.L19:
.L16:
	add fp,fp,#80                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_5_i:
        .long   i
.global_5_k:
        .long   k
.global sub
.type sub, %function
sub:
.L20:
	push {r10,fp,lr}                                  
	sub sp,sp,#20                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	str r1,[fp,#4]                                    	@IRInst:assign	y	r1
	mov r4,#0                                         	@IRInst:mul	%t88	0	4
	mov r5,#4                                         	@IRInst:mul	%t88	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t88	0	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t88	0	4
	ldr r4,.global_5_k                                	@IRInst:add	%t89	k	%t88
	ldr r5,[fp,#8]                                    	@IRInst:add	%t89	k	%t88
	add r6,r4,r5                                      	@IRInst:add	%t89	k	%t88
	str r6,[fp,#12]                                   	@IRInst:add	%t89	k	%t88
	ldr r4,[fp,#12]                                   	@IRInst:assign	%t90	%t89
	ldr r4,[r4]                                       	@IRInst:assign	%t90	%t89
	str r4,[fp,#16]                                   	@IRInst:assign	%t90	%t89
	ldr r0,[fp]                                       	@IRInst:assign	r0	x
	ldr r1,[fp,#4]                                    	@IRInst:assign	r1	y
	ldr r2,[fp,#16]                                   	@IRInst:assign	r2	%t90
	bl sub_impl                                       
.L21:
	add fp,fp,#20                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_6_i:
        .long   i
.global_6_k:
        .long   k
.global main
.type main, %function
main:
.L22:
	push {r10,fp,lr}                                  
	sub sp,sp,#260                                    
	add fp,sp,#0                                      
	bl getint                                         
	str r0,[fp,#20]                                   	@IRInst:assign	%t97	r0
	mov r4,#0                                         	@IRInst:mul	%t95	0	4
	mov r5,#4                                         	@IRInst:mul	%t95	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t95	0	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t95	0	4
	ldr r4,.global_6_k                                	@IRInst:add	%t96	k	%t95
	ldr r5,[fp,#12]                                   	@IRInst:add	%t96	k	%t95
	add r6,r4,r5                                      	@IRInst:add	%t96	k	%t95
	str r6,[fp,#16]                                   	@IRInst:add	%t96	k	%t95
	ldr r5,[fp,#16]                                   	@IRInst:assign	%t96	%t97
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t96	%t97
	str r4,[r5]                                       	@IRInst:assign	%t96	%t97
	bl getint                                         
	str r0,[fp,#32]                                   	@IRInst:assign	%t100	r0
	mov r4,#0                                         	@IRInst:mul	%t98	0	4
	mov r5,#4                                         	@IRInst:mul	%t98	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t98	0	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t98	0	4
	add r4,fp,#4                                      	@IRInst:add	%t99	y	%t98
	ldr r5,[fp,#24]                                   	@IRInst:add	%t99	y	%t98
	add r6,r4,r5                                      	@IRInst:add	%t99	y	%t98
	str r6,[fp,#28]                                   	@IRInst:add	%t99	y	%t98
	ldr r5,[fp,#28]                                   	@IRInst:assign	%t99	%t100
	ldr r4,[fp,#32]                                   	@IRInst:assign	%t99	%t100
	str r4,[r5]                                       	@IRInst:assign	%t99	%t100
	mov r4,#0                                         	@IRInst:mul	%t101	0	2
	mov r5,#2                                         	@IRInst:mul	%t101	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t101	0	2
	str r6,[fp,#36]                                   	@IRInst:mul	%t101	0	2
	ldr r4,[fp,#36]                                   	@IRInst:mul	%t102	%t101	4
	mov r5,#4                                         	@IRInst:mul	%t102	%t101	4
	mul r6,r4,r5                                      	@IRInst:mul	%t102	%t101	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t102	%t101	4
	add r4,fp,#4                                      	@IRInst:add	%t103	z	%t102
	ldr r5,[fp,#40]                                   	@IRInst:add	%t103	z	%t102
	add r6,r4,r5                                      	@IRInst:add	%t103	z	%t102
	str r6,[fp,#44]                                   	@IRInst:add	%t103	z	%t102
	ldr r0,[fp,#44]                                   	@IRInst:assign	r0	%t103
	bl getarray                                       
	str r0,[fp,#52]                                   	@IRInst:assign	%t104	r0
.L24:
	mov r4,#0                                         	@IRInst:mul	%t105	0	4
	mov r5,#4                                         	@IRInst:mul	%t105	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t105	0	4
	str r6,[fp,#56]                                   	@IRInst:mul	%t105	0	4
	add r4,fp,#4                                      	@IRInst:add	%t106	y	%t105
	ldr r5,[fp,#56]                                   	@IRInst:add	%t106	y	%t105
	add r6,r4,r5                                      	@IRInst:add	%t106	y	%t105
	str r6,[fp,#60]                                   	@IRInst:add	%t106	y	%t105
	ldr r4,[fp,#60]                                   	@IRInst:assign	%t107	%t106
	ldr r4,[r4]                                       	@IRInst:assign	%t107	%t106
	str r4,[fp,#64]                                   	@IRInst:assign	%t107	%t106
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t108	%t107
	str r4,[fp,#68]                                   	@IRInst:assign	%t108	%t107
	ldr r4,[fp,#68]                                   	@IRInst:not_zero	%t109	%t108	0
	mov r5,#0                                         	@IRInst:not_zero	%t109	%t108	0
	cmp r4,r5                                         	@IRInst:not_zero	%t109	%t108	0
	moveq r6,#0                                       	@IRInst:not_zero	%t109	%t108	0
	movne r6,#1                                       	@IRInst:not_zero	%t109	%t108	0
	str r6,[fp,#72]                                   	@IRInst:not_zero	%t109	%t108	0
	beq .L26                                          
	b .L25                                            
.L25:
	mov r4,#0                                         	@IRInst:mul	%t112	0	2
	mov r5,#2                                         	@IRInst:mul	%t112	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t112	0	2
	str r6,[fp,#84]                                   	@IRInst:mul	%t112	0	2
	ldr r4,[fp,#84]                                   	@IRInst:add	%t113	%t112	0
	mov r5,#0                                         	@IRInst:add	%t113	%t112	0
	add r6,r4,r5                                      	@IRInst:add	%t113	%t112	0
	str r6,[fp,#88]                                   	@IRInst:add	%t113	%t112	0
	ldr r4,[fp,#88]                                   	@IRInst:mul	%t114	%t113	4
	mov r5,#4                                         	@IRInst:mul	%t114	%t113	4
	mul r6,r4,r5                                      	@IRInst:mul	%t114	%t113	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t114	%t113	4
	add r4,fp,#4                                      	@IRInst:add	%t115	z	%t114
	ldr r5,[fp,#92]                                   	@IRInst:add	%t115	z	%t114
	add r6,r4,r5                                      	@IRInst:add	%t115	z	%t114
	str r6,[fp,#96]                                   	@IRInst:add	%t115	z	%t114
	ldr r4,[fp,#96]                                   	@IRInst:assign	%t116	%t115
	ldr r4,[r4]                                       	@IRInst:assign	%t116	%t115
	str r4,[fp,#100]                                  	@IRInst:assign	%t116	%t115
	mov r4,#0                                         	@IRInst:mul	%t110	0	4
	mov r5,#4                                         	@IRInst:mul	%t110	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t110	0	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t110	0	4
	add r4,fp,#4                                      	@IRInst:add	%t111	j	%t110
	ldr r5,[fp,#76]                                   	@IRInst:add	%t111	j	%t110
	add r6,r4,r5                                      	@IRInst:add	%t111	j	%t110
	str r6,[fp,#80]                                   	@IRInst:add	%t111	j	%t110
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t111	%t116
	ldr r4,[fp,#100]                                  	@IRInst:assign	%t111	%t116
	str r4,[r5]                                       	@IRInst:assign	%t111	%t116
.L27:
	mov r4,#0                                         	@IRInst:mul	%t117	0	4
	mov r5,#4                                         	@IRInst:mul	%t117	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t117	0	4
	str r6,[fp,#104]                                  	@IRInst:mul	%t117	0	4
	add r4,fp,#4                                      	@IRInst:add	%t118	j	%t117
	ldr r5,[fp,#104]                                  	@IRInst:add	%t118	j	%t117
	add r6,r4,r5                                      	@IRInst:add	%t118	j	%t117
	str r6,[fp,#108]                                  	@IRInst:add	%t118	j	%t117
	ldr r4,[fp,#108]                                  	@IRInst:assign	%t119	%t118
	ldr r4,[r4]                                       	@IRInst:assign	%t119	%t118
	str r4,[fp,#112]                                  	@IRInst:assign	%t119	%t118
	ldr r4,[fp,#112]                                  	@IRInst:blt	%t120	%t119	5
	mov r5,#5                                         	@IRInst:blt	%t120	%t119	5
	cmp r4,r5                                         	@IRInst:blt	%t120	%t119	5
	movlt r6,#1                                       	@IRInst:blt	%t120	%t119	5
	movge r6,#0                                       	@IRInst:blt	%t120	%t119	5
	str r6,[fp,#116]                                  	@IRInst:blt	%t120	%t119	5
	blt .L28                                          
	b .L29                                            
.L28:
	mov r4,#0                                         	@IRInst:mul	%t121	0	4
	mov r5,#4                                         	@IRInst:mul	%t121	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t121	0	4
	str r6,[fp,#120]                                  	@IRInst:mul	%t121	0	4
	ldr r4,.global_6_i                                	@IRInst:add	%t122	i	%t121
	ldr r5,[fp,#120]                                  	@IRInst:add	%t122	i	%t121
	add r6,r4,r5                                      	@IRInst:add	%t122	i	%t121
	str r6,[fp,#124]                                  	@IRInst:add	%t122	i	%t121
	ldr r4,[fp,#124]                                  	@IRInst:assign	%t123	%t122
	ldr r4,[r4]                                       	@IRInst:assign	%t123	%t122
	str r4,[fp,#128]                                  	@IRInst:assign	%t123	%t122
	ldr r0,[fp,#128]                                  	@IRInst:assign	r0	%t123
	bl putint                                         
	mov r4,#0                                         	@IRInst:mul	%t124	0	4
	mov r5,#4                                         	@IRInst:mul	%t124	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t124	0	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t124	0	4
	add r4,fp,#4                                      	@IRInst:add	%t125	j	%t124
	ldr r5,[fp,#132]                                  	@IRInst:add	%t125	j	%t124
	add r6,r4,r5                                      	@IRInst:add	%t125	j	%t124
	str r6,[fp,#136]                                  	@IRInst:add	%t125	j	%t124
	ldr r4,[fp,#136]                                  	@IRInst:assign	%t126	%t125
	ldr r4,[r4]                                       	@IRInst:assign	%t126	%t125
	str r4,[fp,#140]                                  	@IRInst:assign	%t126	%t125
	ldr r0,[fp,#140]                                  	@IRInst:assign	r0	%t126
	bl putint                                         
	mov r4,#0                                         	@IRInst:mul	%t127	0	4
	mov r5,#4                                         	@IRInst:mul	%t127	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t127	0	4
	str r6,[fp,#144]                                  	@IRInst:mul	%t127	0	4
	add r4,fp,#4                                      	@IRInst:add	%t128	y	%t127
	ldr r5,[fp,#144]                                  	@IRInst:add	%t128	y	%t127
	add r6,r4,r5                                      	@IRInst:add	%t128	y	%t127
	str r6,[fp,#148]                                  	@IRInst:add	%t128	y	%t127
	ldr r4,[fp,#148]                                  	@IRInst:assign	%t129	%t128
	ldr r4,[r4]                                       	@IRInst:assign	%t129	%t128
	str r4,[fp,#152]                                  	@IRInst:assign	%t129	%t128
	ldr r0,[fp,#152]                                  	@IRInst:assign	r0	%t129
	bl putint                                         
	mov r4,#0                                         	@IRInst:mul	%t130	0	2
	mov r5,#2                                         	@IRInst:mul	%t130	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t130	0	2
	str r6,[fp,#156]                                  	@IRInst:mul	%t130	0	2
	ldr r4,[fp,#156]                                  	@IRInst:add	%t131	%t130	0
	mov r5,#0                                         	@IRInst:add	%t131	%t130	0
	add r6,r4,r5                                      	@IRInst:add	%t131	%t130	0
	str r6,[fp,#160]                                  	@IRInst:add	%t131	%t130	0
	ldr r4,[fp,#160]                                  	@IRInst:mul	%t132	%t131	4
	mov r5,#4                                         	@IRInst:mul	%t132	%t131	4
	mul r6,r4,r5                                      	@IRInst:mul	%t132	%t131	4
	str r6,[fp,#164]                                  	@IRInst:mul	%t132	%t131	4
	add r4,fp,#4                                      	@IRInst:add	%t133	z	%t132
	ldr r5,[fp,#164]                                  	@IRInst:add	%t133	z	%t132
	add r6,r4,r5                                      	@IRInst:add	%t133	z	%t132
	str r6,[fp,#168]                                  	@IRInst:add	%t133	z	%t132
	ldr r4,[fp,#168]                                  	@IRInst:assign	%t134	%t133
	ldr r4,[r4]                                       	@IRInst:assign	%t134	%t133
	str r4,[fp,#172]                                  	@IRInst:assign	%t134	%t133
	ldr r0,[fp,#172]                                  	@IRInst:assign	r0	%t134
	bl putint                                         
	mov r4,#0                                         	@IRInst:mul	%t135	0	2
	mov r5,#2                                         	@IRInst:mul	%t135	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t135	0	2
	str r6,[fp,#176]                                  	@IRInst:mul	%t135	0	2
	ldr r4,[fp,#176]                                  	@IRInst:mul	%t136	%t135	4
	mov r5,#4                                         	@IRInst:mul	%t136	%t135	4
	mul r6,r4,r5                                      	@IRInst:mul	%t136	%t135	4
	str r6,[fp,#180]                                  	@IRInst:mul	%t136	%t135	4
	add r4,fp,#4                                      	@IRInst:add	%t137	z	%t136
	ldr r5,[fp,#180]                                  	@IRInst:add	%t137	z	%t136
	add r6,r4,r5                                      	@IRInst:add	%t137	z	%t136
	str r6,[fp,#184]                                  	@IRInst:add	%t137	z	%t136
	ldr r0,[fp,#184]                                  	@IRInst:assign	r0	%t137
	add r1,fp,#4                                      	@IRInst:assign	r1	y
	bl add                                            
	add r0,fp,#4                                      	@IRInst:assign	r0	j
	add r1,fp,#4                                      	@IRInst:assign	r1	y
	bl add                                            
	mov r4,#0                                         	@IRInst:mul	%t138	0	2
	mov r5,#2                                         	@IRInst:mul	%t138	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t138	0	2
	str r6,[fp,#192]                                  	@IRInst:mul	%t138	0	2
	ldr r4,[fp,#192]                                  	@IRInst:mul	%t139	%t138	4
	mov r5,#4                                         	@IRInst:mul	%t139	%t138	4
	mul r6,r4,r5                                      	@IRInst:mul	%t139	%t138	4
	str r6,[fp,#196]                                  	@IRInst:mul	%t139	%t138	4
	add r4,fp,#4                                      	@IRInst:add	%t140	z	%t139
	ldr r5,[fp,#196]                                  	@IRInst:add	%t140	z	%t139
	add r6,r4,r5                                      	@IRInst:add	%t140	z	%t139
	str r6,[fp,#200]                                  	@IRInst:add	%t140	z	%t139
	ldr r0,[fp,#200]                                  	@IRInst:assign	r0	%t140
	add r1,fp,#4                                      	@IRInst:assign	r1	y
	bl sub                                            
	b .L27                                            
.L29:
	ldr r0,.global_6_i                                	@IRInst:assign	r0	i
	bl inc                                            
	mov r4,#0                                         	@IRInst:mul	%t141	0	2
	mov r5,#2                                         	@IRInst:mul	%t141	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t141	0	2
	str r6,[fp,#208]                                  	@IRInst:mul	%t141	0	2
	ldr r4,[fp,#208]                                  	@IRInst:mul	%t142	%t141	4
	mov r5,#4                                         	@IRInst:mul	%t142	%t141	4
	mul r6,r4,r5                                      	@IRInst:mul	%t142	%t141	4
	str r6,[fp,#212]                                  	@IRInst:mul	%t142	%t141	4
	add r4,fp,#4                                      	@IRInst:add	%t143	z	%t142
	ldr r5,[fp,#212]                                  	@IRInst:add	%t143	z	%t142
	add r6,r4,r5                                      	@IRInst:add	%t143	z	%t142
	str r6,[fp,#216]                                  	@IRInst:add	%t143	z	%t142
	ldr r0,.global_6_i                                	@IRInst:assign	r0	i
	ldr r1,[fp,#216]                                  	@IRInst:assign	r1	%t143
	bl add                                            
	mov r4,#0                                         	@IRInst:mul	%t144	0	4
	mov r5,#4                                         	@IRInst:mul	%t144	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t144	0	4
	str r6,[fp,#224]                                  	@IRInst:mul	%t144	0	4
	ldr r4,.global_6_i                                	@IRInst:add	%t145	i	%t144
	ldr r5,[fp,#224]                                  	@IRInst:add	%t145	i	%t144
	add r6,r4,r5                                      	@IRInst:add	%t145	i	%t144
	str r6,[fp,#228]                                  	@IRInst:add	%t145	i	%t144
	ldr r4,[fp,#228]                                  	@IRInst:assign	%t146	%t145
	ldr r4,[r4]                                       	@IRInst:assign	%t146	%t145
	str r4,[fp,#232]                                  	@IRInst:assign	%t146	%t145
	mov r4,#0                                         	@IRInst:mul	%t147	0	2
	mov r5,#2                                         	@IRInst:mul	%t147	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t147	0	2
	str r6,[fp,#236]                                  	@IRInst:mul	%t147	0	2
	ldr r4,[fp,#236]                                  	@IRInst:add	%t148	%t147	1
	mov r5,#1                                         	@IRInst:add	%t148	%t147	1
	add r6,r4,r5                                      	@IRInst:add	%t148	%t147	1
	str r6,[fp,#240]                                  	@IRInst:add	%t148	%t147	1
	ldr r4,[fp,#240]                                  	@IRInst:mul	%t149	%t148	4
	mov r5,#4                                         	@IRInst:mul	%t149	%t148	4
	mul r6,r4,r5                                      	@IRInst:mul	%t149	%t148	4
	str r6,[fp,#244]                                  	@IRInst:mul	%t149	%t148	4
	add r4,fp,#4                                      	@IRInst:add	%t150	z	%t149
	ldr r5,[fp,#244]                                  	@IRInst:add	%t150	z	%t149
	add r6,r4,r5                                      	@IRInst:add	%t150	z	%t149
	str r6,[fp,#248]                                  	@IRInst:add	%t150	z	%t149
	ldr r4,[fp,#248]                                  	@IRInst:assign	%t151	%t150
	ldr r4,[r4]                                       	@IRInst:assign	%t151	%t150
	str r4,[fp,#252]                                  	@IRInst:assign	%t151	%t150
	ldr r4,[fp,#232]                                  	@IRInst:beq	%t152	%t146	%t151
	ldr r5,[fp,#252]                                  	@IRInst:beq	%t152	%t146	%t151
	cmp r4,r5                                         	@IRInst:beq	%t152	%t146	%t151
	moveq r6,#1                                       	@IRInst:beq	%t152	%t146	%t151
	movne r6,#0                                       	@IRInst:beq	%t152	%t146	%t151
	str r6,[fp,#256]                                  	@IRInst:beq	%t152	%t146	%t151
	beq .L30                                          
	b .L31                                            
.L30:
	b .L26                                            
.L31:
.L32:
	b .L24                                            
.L26:
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L23                                            
.L23:
	ldr r0,[fp]                                       
	add fp,fp,#260                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
