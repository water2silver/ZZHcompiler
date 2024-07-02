.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
n:
        .long   0
maxn:
        .long   100005
cnt:
        .zero   1600080
x:
        .zero   400020
a:
        .zero   400020
b:
        .zero   400020
c:
        .zero   400020
.text
.global_0_n:
        .long   n
.global_0_maxn:
        .long   maxn
.global_0_cnt:
        .long   cnt
.global_0_x:
        .long   x
.global_0_a:
        .long   a
.global_0_b:
        .long   b
.global_0_c:
        .long   c
.global quick_read
.type quick_read, %function
quick_read:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#72                                     
	add fp,sp,#0                                      
	bl getch                                          
	str r0,[fp,#8]                                    	@IRInst:assign	%t2	r0
	ldr r4,[fp,#8]                                    	@IRInst:assign	ch	%t2
	str r4,[fp,#4]                                    	@IRInst:assign	ch	%t2
	mov r4,#0                                         	@IRInst:assign	x	0
	str r4,[fp,#12]                                   	@IRInst:assign	x	0
	mov r4,#0                                         	@IRInst:assign	f	0
	str r4,[fp,#16]                                   	@IRInst:assign	f	0
.L3:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t5	ch	48
	mov r5,#48                                        	@IRInst:blt	%t5	ch	48
	cmp r4,r5                                         	@IRInst:blt	%t5	ch	48
	movlt r6,#1                                       	@IRInst:blt	%t5	ch	48
	movge r6,#0                                       	@IRInst:blt	%t5	ch	48
	str r6,[fp,#20]                                   	@IRInst:blt	%t5	ch	48
	blt .L4                                           
	b .L6                                             
.L6:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t6	ch	57
	mov r5,#57                                        	@IRInst:bgt	%t6	ch	57
	cmp r4,r5                                         	@IRInst:bgt	%t6	ch	57
	movgt r6,#1                                       	@IRInst:bgt	%t6	ch	57
	movle r6,#0                                       	@IRInst:bgt	%t6	ch	57
	str r6,[fp,#24]                                   	@IRInst:bgt	%t6	ch	57
	bgt .L4                                           
	b .L5                                             
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t7	ch	45
	mov r5,#45                                        	@IRInst:beq	%t7	ch	45
	cmp r4,r5                                         	@IRInst:beq	%t7	ch	45
	moveq r6,#1                                       	@IRInst:beq	%t7	ch	45
	movne r6,#0                                       	@IRInst:beq	%t7	ch	45
	str r6,[fp,#28]                                   	@IRInst:beq	%t7	ch	45
	beq .L7                                           
	b .L8                                             
.L7:
	mov r4,#1                                         	@IRInst:assign	f	1
	str r4,[fp,#16]                                   	@IRInst:assign	f	1
.L8:
.L9:
	bl getch                                          
	str r0,[fp,#32]                                   	@IRInst:assign	%t8	r0
	ldr r4,[fp,#32]                                   	@IRInst:assign	ch	%t8
	str r4,[fp,#4]                                    	@IRInst:assign	ch	%t8
	b .L3                                             
.L5:
.L10:
	ldr r4,[fp,#4]                                    	@IRInst:bge	%t9	ch	48
	mov r5,#48                                        	@IRInst:bge	%t9	ch	48
	cmp r4,r5                                         	@IRInst:bge	%t9	ch	48
	movge r6,#1                                       	@IRInst:bge	%t9	ch	48
	movlt r6,#0                                       	@IRInst:bge	%t9	ch	48
	str r6,[fp,#36]                                   	@IRInst:bge	%t9	ch	48
	bge .L13                                          
	b .L12                                            
.L13:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t10	ch	57
	mov r5,#57                                        	@IRInst:ble	%t10	ch	57
	cmp r4,r5                                         	@IRInst:ble	%t10	ch	57
	movle r6,#1                                       	@IRInst:ble	%t10	ch	57
	movgt r6,#0                                       	@IRInst:ble	%t10	ch	57
	str r6,[fp,#40]                                   	@IRInst:ble	%t10	ch	57
	ble .L11                                          
	b .L12                                            
.L11:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t11	x	10
	mov r5,#10                                        	@IRInst:mul	%t11	x	10
	mul r6,r4,r5                                      	@IRInst:mul	%t11	x	10
	str r6,[fp,#44]                                   	@IRInst:mul	%t11	x	10
	ldr r4,[fp,#44]                                   	@IRInst:add	%t12	%t11	ch
	ldr r5,[fp,#4]                                    	@IRInst:add	%t12	%t11	ch
	add r6,r4,r5                                      	@IRInst:add	%t12	%t11	ch
	str r6,[fp,#48]                                   	@IRInst:add	%t12	%t11	ch
	ldr r4,[fp,#48]                                   	@IRInst:sub	%t13	%t12	48
	mov r5,#48                                        	@IRInst:sub	%t13	%t12	48
	sub r6,r4,r5                                      	@IRInst:sub	%t13	%t12	48
	str r6,[fp,#52]                                   	@IRInst:sub	%t13	%t12	48
	ldr r4,[fp,#52]                                   	@IRInst:assign	x	%t13
	str r4,[fp,#12]                                   	@IRInst:assign	x	%t13
	bl getch                                          
	str r0,[fp,#56]                                   	@IRInst:assign	%t14	r0
	ldr r4,[fp,#56]                                   	@IRInst:assign	ch	%t14
	str r4,[fp,#4]                                    	@IRInst:assign	ch	%t14
	b .L10                                            
.L12:
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t15	f
	str r4,[fp,#60]                                   	@IRInst:assign	%t15	f
	ldr r4,[fp,#60]                                   	@IRInst:not_zero	%t16	%t15	0
	mov r5,#0                                         	@IRInst:not_zero	%t16	%t15	0
	cmp r4,r5                                         	@IRInst:not_zero	%t16	%t15	0
	moveq r6,#0                                       	@IRInst:not_zero	%t16	%t15	0
	movne r6,#1                                       	@IRInst:not_zero	%t16	%t15	0
	str r6,[fp,#64]                                   	@IRInst:not_zero	%t16	%t15	0
	beq .L15                                          
	b .L14                                            
.L14:
	ldr r4,[fp,#12]                                   	@IRInst:rsb	%t17	x	0
	mov r5,#0                                         	@IRInst:rsb	%t17	x	0
	rsb r6,r4,r5                                      	@IRInst:rsb	%t17	x	0
	str r6,[fp,#68]                                   	@IRInst:rsb	%t17	x	0
	ldr r4,[fp,#68]                                   	@IRInst:assign		%t17
	str r4,[fp]                                       	@IRInst:assign		%t17
	b .L2                                             
	b .L16                                            
.L15:
	ldr r4,[fp,#12]                                   	@IRInst:assign		x
	str r4,[fp]                                       	@IRInst:assign		x
	b .L2                                             
.L16:
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#72                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_n:
        .long   n
.global_1_maxn:
        .long   maxn
.global_1_cnt:
        .long   cnt
.global_1_x:
        .long   x
.global_1_a:
        .long   a
.global_1_b:
        .long   b
.global_1_c:
        .long   c
.global sortA
.type sortA, %function
sortA:
.L17:
	push {r10,fp}                                     
	sub sp,sp,#104                                    
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	a	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L19:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t25	i	n
	ldr r5,.global_1_n                                	@IRInst:blt	%t25	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t25	i	n
	cmp r4,r5                                         	@IRInst:blt	%t25	i	n
	movlt r6,#1                                       	@IRInst:blt	%t25	i	n
	movge r6,#0                                       	@IRInst:blt	%t25	i	n
	str r6,[fp,#12]                                   	@IRInst:blt	%t25	i	n
	blt .L20                                          
	b .L21                                            
.L20:
	ldr r4,[fp,#4]                                    	@IRInst:add	%t26	i	1
	mov r5,#1                                         	@IRInst:add	%t26	i	1
	add r6,r4,r5                                      	@IRInst:add	%t26	i	1
	str r6,[fp,#16]                                   	@IRInst:add	%t26	i	1
	ldr r4,[fp,#16]                                   	@IRInst:assign	j	%t26
	str r4,[fp,#8]                                    	@IRInst:assign	j	%t26
.L22:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t27	j	n
	ldr r5,.global_1_n                                	@IRInst:blt	%t27	j	n
	ldr r5,[r5]                                       	@IRInst:blt	%t27	j	n
	cmp r4,r5                                         	@IRInst:blt	%t27	j	n
	movlt r6,#1                                       	@IRInst:blt	%t27	j	n
	movge r6,#0                                       	@IRInst:blt	%t27	j	n
	str r6,[fp,#20]                                   	@IRInst:blt	%t27	j	n
	blt .L23                                          
	b .L24                                            
.L23:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t28	i	4
	mov r5,#4                                         	@IRInst:mul	%t28	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t28	i	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t28	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t29	a	%t28
	ldr r5,[fp,#24]                                   	@IRInst:add	%t29	a	%t28
	add r6,r4,r5                                      	@IRInst:add	%t29	a	%t28
	str r6,[fp,#28]                                   	@IRInst:add	%t29	a	%t28
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t30	%t29
	ldr r4,[r4]                                       	@IRInst:assign	%t30	%t29
	str r4,[fp,#32]                                   	@IRInst:assign	%t30	%t29
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t31	j	4
	mov r5,#4                                         	@IRInst:mul	%t31	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	j	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t31	j	4
	ldr r4,[fp]                                       	@IRInst:add	%t32	a	%t31
	ldr r5,[fp,#36]                                   	@IRInst:add	%t32	a	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	a	%t31
	str r6,[fp,#40]                                   	@IRInst:add	%t32	a	%t31
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t33	%t32
	ldr r4,[r4]                                       	@IRInst:assign	%t33	%t32
	str r4,[fp,#44]                                   	@IRInst:assign	%t33	%t32
	ldr r4,[fp,#32]                                   	@IRInst:bgt	%t34	%t30	%t33
	ldr r5,[fp,#44]                                   	@IRInst:bgt	%t34	%t30	%t33
	cmp r4,r5                                         	@IRInst:bgt	%t34	%t30	%t33
	movgt r6,#1                                       	@IRInst:bgt	%t34	%t30	%t33
	movle r6,#0                                       	@IRInst:bgt	%t34	%t30	%t33
	str r6,[fp,#48]                                   	@IRInst:bgt	%t34	%t30	%t33
	bgt .L25                                          
	b .L26                                            
.L25:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t36	i	4
	mov r5,#4                                         	@IRInst:mul	%t36	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t36	i	4
	str r6,[fp,#56]                                   	@IRInst:mul	%t36	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t37	a	%t36
	ldr r5,[fp,#56]                                   	@IRInst:add	%t37	a	%t36
	add r6,r4,r5                                      	@IRInst:add	%t37	a	%t36
	str r6,[fp,#60]                                   	@IRInst:add	%t37	a	%t36
	ldr r4,[fp,#60]                                   	@IRInst:assign	%t38	%t37
	ldr r4,[r4]                                       	@IRInst:assign	%t38	%t37
	str r4,[fp,#64]                                   	@IRInst:assign	%t38	%t37
	ldr r4,[fp,#64]                                   	@IRInst:assign	t	%t38
	str r4,[fp,#52]                                   	@IRInst:assign	t	%t38
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t41	j	4
	mov r5,#4                                         	@IRInst:mul	%t41	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t41	j	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t41	j	4
	ldr r4,[fp]                                       	@IRInst:add	%t42	a	%t41
	ldr r5,[fp,#76]                                   	@IRInst:add	%t42	a	%t41
	add r6,r4,r5                                      	@IRInst:add	%t42	a	%t41
	str r6,[fp,#80]                                   	@IRInst:add	%t42	a	%t41
	ldr r4,[fp,#80]                                   	@IRInst:assign	%t43	%t42
	ldr r4,[r4]                                       	@IRInst:assign	%t43	%t42
	str r4,[fp,#84]                                   	@IRInst:assign	%t43	%t42
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t39	i	4
	mov r5,#4                                         	@IRInst:mul	%t39	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t39	i	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t39	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t40	a	%t39
	ldr r5,[fp,#68]                                   	@IRInst:add	%t40	a	%t39
	add r6,r4,r5                                      	@IRInst:add	%t40	a	%t39
	str r6,[fp,#72]                                   	@IRInst:add	%t40	a	%t39
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t40	%t43
	ldr r4,[fp,#84]                                   	@IRInst:assign	%t40	%t43
	str r4,[r5]                                       	@IRInst:assign	%t40	%t43
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t44	j	4
	mov r5,#4                                         	@IRInst:mul	%t44	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	j	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t44	j	4
	ldr r4,[fp]                                       	@IRInst:add	%t45	a	%t44
	ldr r5,[fp,#88]                                   	@IRInst:add	%t45	a	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	a	%t44
	str r6,[fp,#92]                                   	@IRInst:add	%t45	a	%t44
	ldr r5,[fp,#92]                                   	@IRInst:assign	%t45	t
	ldr r4,[fp,#52]                                   	@IRInst:assign	%t45	t
	str r4,[r5]                                       	@IRInst:assign	%t45	t
.L26:
.L27:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t46	j	1
	mov r5,#1                                         	@IRInst:add	%t46	j	1
	add r6,r4,r5                                      	@IRInst:add	%t46	j	1
	str r6,[fp,#96]                                   	@IRInst:add	%t46	j	1
	ldr r4,[fp,#96]                                   	@IRInst:assign	j	%t46
	str r4,[fp,#8]                                    	@IRInst:assign	j	%t46
	b .L22                                            
.L24:
	ldr r4,[fp,#4]                                    	@IRInst:add	%t47	i	1
	mov r5,#1                                         	@IRInst:add	%t47	i	1
	add r6,r4,r5                                      	@IRInst:add	%t47	i	1
	str r6,[fp,#100]                                  	@IRInst:add	%t47	i	1
	ldr r4,[fp,#100]                                  	@IRInst:assign	i	%t47
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t47
	b .L19                                            
.L21:
.L18:
	add fp,fp,#104                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_2_n:
        .long   n
.global_2_maxn:
        .long   maxn
.global_2_cnt:
        .long   cnt
.global_2_x:
        .long   x
.global_2_a:
        .long   a
.global_2_b:
        .long   b
.global_2_c:
        .long   c
.global sortB
.type sortB, %function
sortB:
.L28:
	push {r10,fp}                                     
	sub sp,sp,#148                                    
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	a	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
	mov r4,#-100                                      	@IRInst:assign	mx	18446744073709551516
	str r4,[fp,#8]                                    	@IRInst:assign	mx	18446744073709551516
.L30:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t54	i	n
	ldr r5,.global_2_n                                	@IRInst:blt	%t54	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t54	i	n
	cmp r4,r5                                         	@IRInst:blt	%t54	i	n
	movlt r6,#1                                       	@IRInst:blt	%t54	i	n
	movge r6,#0                                       	@IRInst:blt	%t54	i	n
	str r6,[fp,#12]                                   	@IRInst:blt	%t54	i	n
	blt .L31                                          
	b .L32                                            
.L31:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t61	i	4
	mov r5,#4                                         	@IRInst:mul	%t61	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t61	i	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t61	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t62	a	%t61
	ldr r5,[fp,#40]                                   	@IRInst:add	%t62	a	%t61
	add r6,r4,r5                                      	@IRInst:add	%t62	a	%t61
	str r6,[fp,#44]                                   	@IRInst:add	%t62	a	%t61
	ldr r4,[fp,#44]                                   	@IRInst:assign	%t63	%t62
	ldr r4,[r4]                                       	@IRInst:assign	%t63	%t62
	str r4,[fp,#48]                                   	@IRInst:assign	%t63	%t62
	ldr r4,[fp,#48]                                   	@IRInst:mul	%t60	%t63	4
	mov r5,#4                                         	@IRInst:mul	%t60	%t63	4
	mul r6,r4,r5                                      	@IRInst:mul	%t60	%t63	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t60	%t63	4
	ldr r4,.global_2_cnt                              	@IRInst:add	%t64	cnt	%t60
	ldr r5,[fp,#36]                                   	@IRInst:add	%t64	cnt	%t60
	add r6,r4,r5                                      	@IRInst:add	%t64	cnt	%t60
	str r6,[fp,#52]                                   	@IRInst:add	%t64	cnt	%t60
	ldr r4,[fp,#52]                                   	@IRInst:assign	%t65	%t64
	ldr r4,[r4]                                       	@IRInst:assign	%t65	%t64
	str r4,[fp,#56]                                   	@IRInst:assign	%t65	%t64
	ldr r4,[fp,#56]                                   	@IRInst:add	%t66	%t65	1
	mov r5,#1                                         	@IRInst:add	%t66	%t65	1
	add r6,r4,r5                                      	@IRInst:add	%t66	%t65	1
	str r6,[fp,#60]                                   	@IRInst:add	%t66	%t65	1
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t56	i	4
	mov r5,#4                                         	@IRInst:mul	%t56	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t56	i	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t56	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t57	a	%t56
	ldr r5,[fp,#20]                                   	@IRInst:add	%t57	a	%t56
	add r6,r4,r5                                      	@IRInst:add	%t57	a	%t56
	str r6,[fp,#24]                                   	@IRInst:add	%t57	a	%t56
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t58	%t57
	ldr r4,[r4]                                       	@IRInst:assign	%t58	%t57
	str r4,[fp,#28]                                   	@IRInst:assign	%t58	%t57
	ldr r4,[fp,#28]                                   	@IRInst:mul	%t55	%t58	4
	mov r5,#4                                         	@IRInst:mul	%t55	%t58	4
	mul r6,r4,r5                                      	@IRInst:mul	%t55	%t58	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t55	%t58	4
	ldr r4,.global_2_cnt                              	@IRInst:add	%t59	cnt	%t55
	ldr r5,[fp,#16]                                   	@IRInst:add	%t59	cnt	%t55
	add r6,r4,r5                                      	@IRInst:add	%t59	cnt	%t55
	str r6,[fp,#32]                                   	@IRInst:add	%t59	cnt	%t55
	ldr r5,[fp,#32]                                   	@IRInst:assign	%t59	%t66
	ldr r4,[fp,#60]                                   	@IRInst:assign	%t59	%t66
	str r4,[r5]                                       	@IRInst:assign	%t59	%t66
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t67	i	4
	mov r5,#4                                         	@IRInst:mul	%t67	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t67	i	4
	str r6,[fp,#64]                                   	@IRInst:mul	%t67	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t68	a	%t67
	ldr r5,[fp,#64]                                   	@IRInst:add	%t68	a	%t67
	add r6,r4,r5                                      	@IRInst:add	%t68	a	%t67
	str r6,[fp,#68]                                   	@IRInst:add	%t68	a	%t67
	ldr r4,[fp,#68]                                   	@IRInst:assign	%t69	%t68
	ldr r4,[r4]                                       	@IRInst:assign	%t69	%t68
	str r4,[fp,#72]                                   	@IRInst:assign	%t69	%t68
	ldr r4,[fp,#72]                                   	@IRInst:bgt	%t70	%t69	mx
	ldr r5,[fp,#8]                                    	@IRInst:bgt	%t70	%t69	mx
	cmp r4,r5                                         	@IRInst:bgt	%t70	%t69	mx
	movgt r6,#1                                       	@IRInst:bgt	%t70	%t69	mx
	movle r6,#0                                       	@IRInst:bgt	%t70	%t69	mx
	str r6,[fp,#76]                                   	@IRInst:bgt	%t70	%t69	mx
	bgt .L33                                          
	b .L34                                            
.L33:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t71	i	4
	mov r5,#4                                         	@IRInst:mul	%t71	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t71	i	4
	str r6,[fp,#80]                                   	@IRInst:mul	%t71	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t72	a	%t71
	ldr r5,[fp,#80]                                   	@IRInst:add	%t72	a	%t71
	add r6,r4,r5                                      	@IRInst:add	%t72	a	%t71
	str r6,[fp,#84]                                   	@IRInst:add	%t72	a	%t71
	ldr r4,[fp,#84]                                   	@IRInst:assign	%t73	%t72
	ldr r4,[r4]                                       	@IRInst:assign	%t73	%t72
	str r4,[fp,#88]                                   	@IRInst:assign	%t73	%t72
	ldr r4,[fp,#88]                                   	@IRInst:assign	mx	%t73
	str r4,[fp,#8]                                    	@IRInst:assign	mx	%t73
.L34:
.L35:
	ldr r4,[fp,#4]                                    	@IRInst:add	%t74	i	1
	mov r5,#1                                         	@IRInst:add	%t74	i	1
	add r6,r4,r5                                      	@IRInst:add	%t74	i	1
	str r6,[fp,#92]                                   	@IRInst:add	%t74	i	1
	ldr r4,[fp,#92]                                   	@IRInst:assign	i	%t74
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t74
	b .L30                                            
.L32:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
	mov r4,#0                                         	@IRInst:assign	now	0
	str r4,[fp,#96]                                   	@IRInst:assign	now	0
.L36:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t76	i	mx
	ldr r5,[fp,#8]                                    	@IRInst:ble	%t76	i	mx
	cmp r4,r5                                         	@IRInst:ble	%t76	i	mx
	movle r6,#1                                       	@IRInst:ble	%t76	i	mx
	movgt r6,#0                                       	@IRInst:ble	%t76	i	mx
	str r6,[fp,#100]                                  	@IRInst:ble	%t76	i	mx
	ble .L37                                          
	b .L38                                            
.L37:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t78	i	4
	mov r5,#4                                         	@IRInst:mul	%t78	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t78	i	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t78	i	4
	ldr r4,.global_2_cnt                              	@IRInst:add	%t79	cnt	%t78
	ldr r5,[fp,#108]                                  	@IRInst:add	%t79	cnt	%t78
	add r6,r4,r5                                      	@IRInst:add	%t79	cnt	%t78
	str r6,[fp,#112]                                  	@IRInst:add	%t79	cnt	%t78
	ldr r4,[fp,#112]                                  	@IRInst:assign	%t80	%t79
	ldr r4,[r4]                                       	@IRInst:assign	%t80	%t79
	str r4,[fp,#116]                                  	@IRInst:assign	%t80	%t79
	ldr r4,[fp,#116]                                  	@IRInst:assign	j	%t80
	str r4,[fp,#104]                                  	@IRInst:assign	j	%t80
.L39:
	ldr r4,[fp,#104]                                  	@IRInst:assign	%t81	j
	str r4,[fp,#120]                                  	@IRInst:assign	%t81	j
	ldr r4,[fp,#120]                                  	@IRInst:not_zero	%t82	%t81	0
	mov r5,#0                                         	@IRInst:not_zero	%t82	%t81	0
	cmp r4,r5                                         	@IRInst:not_zero	%t82	%t81	0
	moveq r6,#0                                       	@IRInst:not_zero	%t82	%t81	0
	movne r6,#1                                       	@IRInst:not_zero	%t82	%t81	0
	str r6,[fp,#124]                                  	@IRInst:not_zero	%t82	%t81	0
	beq .L41                                          
	b .L40                                            
.L40:
	ldr r4,[fp,#96]                                   	@IRInst:mul	%t83	now	4
	mov r5,#4                                         	@IRInst:mul	%t83	now	4
	mul r6,r4,r5                                      	@IRInst:mul	%t83	now	4
	str r6,[fp,#128]                                  	@IRInst:mul	%t83	now	4
	ldr r4,[fp]                                       	@IRInst:add	%t84	a	%t83
	ldr r5,[fp,#128]                                  	@IRInst:add	%t84	a	%t83
	add r6,r4,r5                                      	@IRInst:add	%t84	a	%t83
	str r6,[fp,#132]                                  	@IRInst:add	%t84	a	%t83
	ldr r5,[fp,#132]                                  	@IRInst:assign	%t84	i
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t84	i
	str r4,[r5]                                       	@IRInst:assign	%t84	i
	ldr r4,[fp,#96]                                   	@IRInst:add	%t85	now	1
	mov r5,#1                                         	@IRInst:add	%t85	now	1
	add r6,r4,r5                                      	@IRInst:add	%t85	now	1
	str r6,[fp,#136]                                  	@IRInst:add	%t85	now	1
	ldr r4,[fp,#136]                                  	@IRInst:assign	now	%t85
	str r4,[fp,#96]                                   	@IRInst:assign	now	%t85
	ldr r4,[fp,#104]                                  	@IRInst:sub	%t86	j	1
	mov r5,#1                                         	@IRInst:sub	%t86	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t86	j	1
	str r6,[fp,#140]                                  	@IRInst:sub	%t86	j	1
	ldr r4,[fp,#140]                                  	@IRInst:assign	j	%t86
	str r4,[fp,#104]                                  	@IRInst:assign	j	%t86
	b .L39                                            
.L41:
	ldr r4,[fp,#4]                                    	@IRInst:add	%t87	i	1
	mov r5,#1                                         	@IRInst:add	%t87	i	1
	add r6,r4,r5                                      	@IRInst:add	%t87	i	1
	str r6,[fp,#144]                                  	@IRInst:add	%t87	i	1
	ldr r4,[fp,#144]                                  	@IRInst:assign	i	%t87
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t87
	b .L36                                            
.L38:
.L29:
	add fp,fp,#148                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_3_n:
        .long   n
.global_3_maxn:
        .long   maxn
.global_3_cnt:
        .long   cnt
.global_3_x:
        .long   x
.global_3_a:
        .long   a
.global_3_b:
        .long   b
.global_3_c:
        .long   c
.global sortC
.type sortC, %function
sortC:
.L42:
	push {r10,fp}                                     
	sub sp,sp,#108                                    
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	a	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L44:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t92	i	n
	ldr r5,.global_3_n                                	@IRInst:blt	%t92	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t92	i	n
	cmp r4,r5                                         	@IRInst:blt	%t92	i	n
	movlt r6,#1                                       	@IRInst:blt	%t92	i	n
	movge r6,#0                                       	@IRInst:blt	%t92	i	n
	str r6,[fp,#8]                                    	@IRInst:blt	%t92	i	n
	blt .L45                                          
	b .L46                                            
.L45:
	ldr r4,[fp,#4]                                    	@IRInst:assign	id	i
	str r4,[fp,#12]                                   	@IRInst:assign	id	i
	ldr r4,[fp,#4]                                    	@IRInst:add	%t95	i	1
	mov r5,#1                                         	@IRInst:add	%t95	i	1
	add r6,r4,r5                                      	@IRInst:add	%t95	i	1
	str r6,[fp,#20]                                   	@IRInst:add	%t95	i	1
	ldr r4,[fp,#20]                                   	@IRInst:assign	j	%t95
	str r4,[fp,#16]                                   	@IRInst:assign	j	%t95
.L47:
	ldr r4,[fp,#16]                                   	@IRInst:blt	%t96	j	n
	ldr r5,.global_3_n                                	@IRInst:blt	%t96	j	n
	ldr r5,[r5]                                       	@IRInst:blt	%t96	j	n
	cmp r4,r5                                         	@IRInst:blt	%t96	j	n
	movlt r6,#1                                       	@IRInst:blt	%t96	j	n
	movge r6,#0                                       	@IRInst:blt	%t96	j	n
	str r6,[fp,#24]                                   	@IRInst:blt	%t96	j	n
	blt .L48                                          
	b .L49                                            
.L48:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t97	j	4
	mov r5,#4                                         	@IRInst:mul	%t97	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t97	j	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t97	j	4
	ldr r4,[fp]                                       	@IRInst:add	%t98	a	%t97
	ldr r5,[fp,#28]                                   	@IRInst:add	%t98	a	%t97
	add r6,r4,r5                                      	@IRInst:add	%t98	a	%t97
	str r6,[fp,#32]                                   	@IRInst:add	%t98	a	%t97
	ldr r4,[fp,#32]                                   	@IRInst:assign	%t99	%t98
	ldr r4,[r4]                                       	@IRInst:assign	%t99	%t98
	str r4,[fp,#36]                                   	@IRInst:assign	%t99	%t98
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t100	id	4
	mov r5,#4                                         	@IRInst:mul	%t100	id	4
	mul r6,r4,r5                                      	@IRInst:mul	%t100	id	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t100	id	4
	ldr r4,[fp]                                       	@IRInst:add	%t101	a	%t100
	ldr r5,[fp,#40]                                   	@IRInst:add	%t101	a	%t100
	add r6,r4,r5                                      	@IRInst:add	%t101	a	%t100
	str r6,[fp,#44]                                   	@IRInst:add	%t101	a	%t100
	ldr r4,[fp,#44]                                   	@IRInst:assign	%t102	%t101
	ldr r4,[r4]                                       	@IRInst:assign	%t102	%t101
	str r4,[fp,#48]                                   	@IRInst:assign	%t102	%t101
	ldr r4,[fp,#36]                                   	@IRInst:blt	%t103	%t99	%t102
	ldr r5,[fp,#48]                                   	@IRInst:blt	%t103	%t99	%t102
	cmp r4,r5                                         	@IRInst:blt	%t103	%t99	%t102
	movlt r6,#1                                       	@IRInst:blt	%t103	%t99	%t102
	movge r6,#0                                       	@IRInst:blt	%t103	%t99	%t102
	str r6,[fp,#52]                                   	@IRInst:blt	%t103	%t99	%t102
	blt .L50                                          
	b .L51                                            
.L50:
	ldr r4,[fp,#16]                                   	@IRInst:assign	id	j
	str r4,[fp,#12]                                   	@IRInst:assign	id	j
.L51:
.L52:
	ldr r4,[fp,#16]                                   	@IRInst:add	%t104	j	1
	mov r5,#1                                         	@IRInst:add	%t104	j	1
	add r6,r4,r5                                      	@IRInst:add	%t104	j	1
	str r6,[fp,#56]                                   	@IRInst:add	%t104	j	1
	ldr r4,[fp,#56]                                   	@IRInst:assign	j	%t104
	str r4,[fp,#16]                                   	@IRInst:assign	j	%t104
	b .L47                                            
.L49:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t106	i	4
	mov r5,#4                                         	@IRInst:mul	%t106	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t106	i	4
	str r6,[fp,#64]                                   	@IRInst:mul	%t106	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t107	a	%t106
	ldr r5,[fp,#64]                                   	@IRInst:add	%t107	a	%t106
	add r6,r4,r5                                      	@IRInst:add	%t107	a	%t106
	str r6,[fp,#68]                                   	@IRInst:add	%t107	a	%t106
	ldr r4,[fp,#68]                                   	@IRInst:assign	%t108	%t107
	ldr r4,[r4]                                       	@IRInst:assign	%t108	%t107
	str r4,[fp,#72]                                   	@IRInst:assign	%t108	%t107
	ldr r4,[fp,#72]                                   	@IRInst:assign	t	%t108
	str r4,[fp,#60]                                   	@IRInst:assign	t	%t108
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t111	id	4
	mov r5,#4                                         	@IRInst:mul	%t111	id	4
	mul r6,r4,r5                                      	@IRInst:mul	%t111	id	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t111	id	4
	ldr r4,[fp]                                       	@IRInst:add	%t112	a	%t111
	ldr r5,[fp,#84]                                   	@IRInst:add	%t112	a	%t111
	add r6,r4,r5                                      	@IRInst:add	%t112	a	%t111
	str r6,[fp,#88]                                   	@IRInst:add	%t112	a	%t111
	ldr r4,[fp,#88]                                   	@IRInst:assign	%t113	%t112
	ldr r4,[r4]                                       	@IRInst:assign	%t113	%t112
	str r4,[fp,#92]                                   	@IRInst:assign	%t113	%t112
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t109	i	4
	mov r5,#4                                         	@IRInst:mul	%t109	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t109	i	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t109	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t110	a	%t109
	ldr r5,[fp,#76]                                   	@IRInst:add	%t110	a	%t109
	add r6,r4,r5                                      	@IRInst:add	%t110	a	%t109
	str r6,[fp,#80]                                   	@IRInst:add	%t110	a	%t109
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t110	%t113
	ldr r4,[fp,#92]                                   	@IRInst:assign	%t110	%t113
	str r4,[r5]                                       	@IRInst:assign	%t110	%t113
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t114	id	4
	mov r5,#4                                         	@IRInst:mul	%t114	id	4
	mul r6,r4,r5                                      	@IRInst:mul	%t114	id	4
	str r6,[fp,#96]                                   	@IRInst:mul	%t114	id	4
	ldr r4,[fp]                                       	@IRInst:add	%t115	a	%t114
	ldr r5,[fp,#96]                                   	@IRInst:add	%t115	a	%t114
	add r6,r4,r5                                      	@IRInst:add	%t115	a	%t114
	str r6,[fp,#100]                                  	@IRInst:add	%t115	a	%t114
	ldr r5,[fp,#100]                                  	@IRInst:assign	%t115	t
	ldr r4,[fp,#60]                                   	@IRInst:assign	%t115	t
	str r4,[r5]                                       	@IRInst:assign	%t115	t
	ldr r4,[fp,#4]                                    	@IRInst:add	%t116	i	1
	mov r5,#1                                         	@IRInst:add	%t116	i	1
	add r6,r4,r5                                      	@IRInst:add	%t116	i	1
	str r6,[fp,#104]                                  	@IRInst:add	%t116	i	1
	ldr r4,[fp,#104]                                  	@IRInst:assign	i	%t116
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t116
	b .L44                                            
.L46:
.L43:
	add fp,fp,#108                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_4_n:
        .long   n
.global_4_maxn:
        .long   maxn
.global_4_cnt:
        .long   cnt
.global_4_x:
        .long   x
.global_4_a:
        .long   a
.global_4_b:
        .long   b
.global_4_c:
        .long   c
.global main
.type main, %function
main:
.L53:
	push {r10,fp,lr}                                  
	sub sp,sp,#216                                    
	add fp,sp,#0                                      
	bl quick_read                                     
	str r0,[fp,#4]                                    	@IRInst:assign	%t122	r0
	ldr r4,[fp,#4]                                    	@IRInst:assign	n	%t122
	ldr r9,.global_4_n                                	@IRInst:assign	n	%t122
	str r4,[r9]                                       	@IRInst:assign	n	%t122
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
.L55:
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t124	i	n
	ldr r5,.global_4_n                                	@IRInst:beq	%t124	i	n
	ldr r5,[r5]                                       	@IRInst:beq	%t124	i	n
	cmp r4,r5                                         	@IRInst:beq	%t124	i	n
	moveq r6,#1                                       	@IRInst:beq	%t124	i	n
	movne r6,#0                                       	@IRInst:beq	%t124	i	n
	str r6,[fp,#12]                                   	@IRInst:beq	%t124	i	n
	beq .L57                                          
	b .L56                                            
.L56:
	bl quick_read                                     
	str r0,[fp,#24]                                   	@IRInst:assign	%t127	r0
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t125	i	4
	mov r5,#4                                         	@IRInst:mul	%t125	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t125	i	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t125	i	4
	ldr r4,.global_4_a                                	@IRInst:add	%t126	a	%t125
	ldr r5,[fp,#16]                                   	@IRInst:add	%t126	a	%t125
	add r6,r4,r5                                      	@IRInst:add	%t126	a	%t125
	str r6,[fp,#20]                                   	@IRInst:add	%t126	a	%t125
	ldr r5,[fp,#20]                                   	@IRInst:assign	%t126	%t127
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t126	%t127
	str r4,[r5]                                       	@IRInst:assign	%t126	%t127
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t130	i	4
	mov r5,#4                                         	@IRInst:mul	%t130	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t130	i	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t130	i	4
	ldr r4,.global_4_a                                	@IRInst:add	%t131	a	%t130
	ldr r5,[fp,#36]                                   	@IRInst:add	%t131	a	%t130
	add r6,r4,r5                                      	@IRInst:add	%t131	a	%t130
	str r6,[fp,#40]                                   	@IRInst:add	%t131	a	%t130
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t132	%t131
	ldr r4,[r4]                                       	@IRInst:assign	%t132	%t131
	str r4,[fp,#44]                                   	@IRInst:assign	%t132	%t131
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t128	i	4
	mov r5,#4                                         	@IRInst:mul	%t128	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t128	i	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t128	i	4
	ldr r4,.global_4_b                                	@IRInst:add	%t129	b	%t128
	ldr r5,[fp,#28]                                   	@IRInst:add	%t129	b	%t128
	add r6,r4,r5                                      	@IRInst:add	%t129	b	%t128
	str r6,[fp,#32]                                   	@IRInst:add	%t129	b	%t128
	ldr r5,[fp,#32]                                   	@IRInst:assign	%t129	%t132
	ldr r4,[fp,#44]                                   	@IRInst:assign	%t129	%t132
	str r4,[r5]                                       	@IRInst:assign	%t129	%t132
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t135	i	4
	mov r5,#4                                         	@IRInst:mul	%t135	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t135	i	4
	str r6,[fp,#56]                                   	@IRInst:mul	%t135	i	4
	ldr r4,.global_4_b                                	@IRInst:add	%t136	b	%t135
	ldr r5,[fp,#56]                                   	@IRInst:add	%t136	b	%t135
	add r6,r4,r5                                      	@IRInst:add	%t136	b	%t135
	str r6,[fp,#60]                                   	@IRInst:add	%t136	b	%t135
	ldr r4,[fp,#60]                                   	@IRInst:assign	%t137	%t136
	ldr r4,[r4]                                       	@IRInst:assign	%t137	%t136
	str r4,[fp,#64]                                   	@IRInst:assign	%t137	%t136
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t133	i	4
	mov r5,#4                                         	@IRInst:mul	%t133	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t133	i	4
	str r6,[fp,#48]                                   	@IRInst:mul	%t133	i	4
	ldr r4,.global_4_c                                	@IRInst:add	%t134	c	%t133
	ldr r5,[fp,#48]                                   	@IRInst:add	%t134	c	%t133
	add r6,r4,r5                                      	@IRInst:add	%t134	c	%t133
	str r6,[fp,#52]                                   	@IRInst:add	%t134	c	%t133
	ldr r5,[fp,#52]                                   	@IRInst:assign	%t134	%t137
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t134	%t137
	str r4,[r5]                                       	@IRInst:assign	%t134	%t137
	ldr r4,[fp,#8]                                    	@IRInst:add	%t138	i	1
	mov r5,#1                                         	@IRInst:add	%t138	i	1
	add r6,r4,r5                                      	@IRInst:add	%t138	i	1
	str r6,[fp,#68]                                   	@IRInst:add	%t138	i	1
	ldr r4,[fp,#68]                                   	@IRInst:assign	i	%t138
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t138
	b .L55                                            
.L57:
	ldr r0,.global_4_a                                	@IRInst:assign	r0	a
	bl sortA                                          
	ldr r0,.global_4_b                                	@IRInst:assign	r0	b
	bl sortB                                          
	ldr r0,.global_4_c                                	@IRInst:assign	r0	c
	bl sortC                                          
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
.L58:
	ldr r4,.global_4_n                                	@IRInst:sub	%t139	n	i
	ldr r4,[r4]                                       	@IRInst:sub	%t139	n	i
	ldr r5,[fp,#8]                                    	@IRInst:sub	%t139	n	i
	sub r6,r4,r5                                      	@IRInst:sub	%t139	n	i
	str r6,[fp,#72]                                   	@IRInst:sub	%t139	n	i
.L59:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t142	i	4
	mov r5,#4                                         	@IRInst:mul	%t142	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t142	i	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t142	i	4
	ldr r4,.global_4_b                                	@IRInst:add	%t143	b	%t142
	ldr r5,[fp,#84]                                   	@IRInst:add	%t143	b	%t142
	add r6,r4,r5                                      	@IRInst:add	%t143	b	%t142
	str r6,[fp,#88]                                   	@IRInst:add	%t143	b	%t142
	ldr r4,[fp,#88]                                   	@IRInst:assign	%t144	%t143
	ldr r4,[r4]                                       	@IRInst:assign	%t144	%t143
	str r4,[fp,#92]                                   	@IRInst:assign	%t144	%t143
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t145	i	4
	mov r5,#4                                         	@IRInst:mul	%t145	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t145	i	4
	str r6,[fp,#96]                                   	@IRInst:mul	%t145	i	4
	ldr r4,.global_4_a                                	@IRInst:add	%t146	a	%t145
	ldr r5,[fp,#96]                                   	@IRInst:add	%t146	a	%t145
	add r6,r4,r5                                      	@IRInst:add	%t146	a	%t145
	str r6,[fp,#100]                                  	@IRInst:add	%t146	a	%t145
	ldr r4,[fp,#100]                                  	@IRInst:assign	%t147	%t146
	ldr r4,[r4]                                       	@IRInst:assign	%t147	%t146
	str r4,[fp,#104]                                  	@IRInst:assign	%t147	%t146
	ldr r4,[fp,#92]                                   	@IRInst:sub	%t148	%t144	%t147
	ldr r5,[fp,#104]                                  	@IRInst:sub	%t148	%t144	%t147
	sub r6,r4,r5                                      	@IRInst:sub	%t148	%t144	%t147
	str r6,[fp,#108]                                  	@IRInst:sub	%t148	%t144	%t147
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t140	i	4
	mov r5,#4                                         	@IRInst:mul	%t140	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t140	i	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t140	i	4
	ldr r4,.global_4_b                                	@IRInst:add	%t141	b	%t140
	ldr r5,[fp,#76]                                   	@IRInst:add	%t141	b	%t140
	add r6,r4,r5                                      	@IRInst:add	%t141	b	%t140
	str r6,[fp,#80]                                   	@IRInst:add	%t141	b	%t140
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t141	%t148
	ldr r4,[fp,#108]                                  	@IRInst:assign	%t141	%t148
	str r4,[r5]                                       	@IRInst:assign	%t141	%t148
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t151	i	4
	mov r5,#4                                         	@IRInst:mul	%t151	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t151	i	4
	str r6,[fp,#120]                                  	@IRInst:mul	%t151	i	4
	ldr r4,.global_4_c                                	@IRInst:add	%t152	c	%t151
	ldr r5,[fp,#120]                                  	@IRInst:add	%t152	c	%t151
	add r6,r4,r5                                      	@IRInst:add	%t152	c	%t151
	str r6,[fp,#124]                                  	@IRInst:add	%t152	c	%t151
	ldr r4,[fp,#124]                                  	@IRInst:assign	%t153	%t152
	ldr r4,[r4]                                       	@IRInst:assign	%t153	%t152
	str r4,[fp,#128]                                  	@IRInst:assign	%t153	%t152
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t154	i	4
	mov r5,#4                                         	@IRInst:mul	%t154	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t154	i	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t154	i	4
	ldr r4,.global_4_b                                	@IRInst:add	%t155	b	%t154
	ldr r5,[fp,#132]                                  	@IRInst:add	%t155	b	%t154
	add r6,r4,r5                                      	@IRInst:add	%t155	b	%t154
	str r6,[fp,#136]                                  	@IRInst:add	%t155	b	%t154
	ldr r4,[fp,#136]                                  	@IRInst:assign	%t156	%t155
	ldr r4,[r4]                                       	@IRInst:assign	%t156	%t155
	str r4,[fp,#140]                                  	@IRInst:assign	%t156	%t155
	ldr r4,[fp,#128]                                  	@IRInst:sub	%t157	%t153	%t156
	ldr r5,[fp,#140]                                  	@IRInst:sub	%t157	%t153	%t156
	sub r6,r4,r5                                      	@IRInst:sub	%t157	%t153	%t156
	str r6,[fp,#144]                                  	@IRInst:sub	%t157	%t153	%t156
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t158	i	4
	mov r5,#4                                         	@IRInst:mul	%t158	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t158	i	4
	str r6,[fp,#148]                                  	@IRInst:mul	%t158	i	4
	ldr r4,.global_4_a                                	@IRInst:add	%t159	a	%t158
	ldr r5,[fp,#148]                                  	@IRInst:add	%t159	a	%t158
	add r6,r4,r5                                      	@IRInst:add	%t159	a	%t158
	str r6,[fp,#152]                                  	@IRInst:add	%t159	a	%t158
	ldr r4,[fp,#152]                                  	@IRInst:assign	%t160	%t159
	ldr r4,[r4]                                       	@IRInst:assign	%t160	%t159
	str r4,[fp,#156]                                  	@IRInst:assign	%t160	%t159
	ldr r4,[fp,#144]                                  	@IRInst:sub	%t161	%t157	%t160
	ldr r5,[fp,#156]                                  	@IRInst:sub	%t161	%t157	%t160
	sub r6,r4,r5                                      	@IRInst:sub	%t161	%t157	%t160
	str r6,[fp,#160]                                  	@IRInst:sub	%t161	%t157	%t160
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t149	i	4
	mov r5,#4                                         	@IRInst:mul	%t149	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t149	i	4
	str r6,[fp,#112]                                  	@IRInst:mul	%t149	i	4
	ldr r4,.global_4_c                                	@IRInst:add	%t150	c	%t149
	ldr r5,[fp,#112]                                  	@IRInst:add	%t150	c	%t149
	add r6,r4,r5                                      	@IRInst:add	%t150	c	%t149
	str r6,[fp,#116]                                  	@IRInst:add	%t150	c	%t149
	ldr r5,[fp,#116]                                  	@IRInst:assign	%t150	%t161
	ldr r4,[fp,#160]                                  	@IRInst:assign	%t150	%t161
	str r4,[r5]                                       	@IRInst:assign	%t150	%t161
	ldr r4,[fp,#8]                                    	@IRInst:add	%t162	i	1
	mov r5,#1                                         	@IRInst:add	%t162	i	1
	add r6,r4,r5                                      	@IRInst:add	%t162	i	1
	str r6,[fp,#164]                                  	@IRInst:add	%t162	i	1
	ldr r4,[fp,#164]                                  	@IRInst:assign	i	%t162
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t162
	b .L58                                            
.L60:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
.L61:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t163	i	n
	ldr r5,.global_4_n                                	@IRInst:sub	%t163	i	n
	ldr r5,[r5]                                       	@IRInst:sub	%t163	i	n
	sub r6,r4,r5                                      	@IRInst:sub	%t163	i	n
	str r6,[fp,#168]                                  	@IRInst:sub	%t163	i	n
.L62:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t164	i	4
	mov r5,#4                                         	@IRInst:mul	%t164	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t164	i	4
	str r6,[fp,#172]                                  	@IRInst:mul	%t164	i	4
	ldr r4,.global_4_b                                	@IRInst:add	%t165	b	%t164
	ldr r5,[fp,#172]                                  	@IRInst:add	%t165	b	%t164
	add r6,r4,r5                                      	@IRInst:add	%t165	b	%t164
	str r6,[fp,#176]                                  	@IRInst:add	%t165	b	%t164
	ldr r4,[fp,#176]                                  	@IRInst:assign	%t166	%t165
	ldr r4,[r4]                                       	@IRInst:assign	%t166	%t165
	str r4,[fp,#180]                                  	@IRInst:assign	%t166	%t165
	ldr r4,[fp,#180]                                  	@IRInst:assign	%t167	%t166
	str r4,[fp,#184]                                  	@IRInst:assign	%t167	%t166
	ldr r4,[fp,#184]                                  	@IRInst:not_zero	%t168	%t167	0
	mov r5,#0                                         	@IRInst:not_zero	%t168	%t167	0
	cmp r4,r5                                         	@IRInst:not_zero	%t168	%t167	0
	moveq r6,#0                                       	@IRInst:not_zero	%t168	%t167	0
	movne r6,#1                                       	@IRInst:not_zero	%t168	%t167	0
	str r6,[fp,#188]                                  	@IRInst:not_zero	%t168	%t167	0
	beq .L65                                          
	b .L64                                            
.L64:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L54                                            
.L65:
.L66:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t169	i	4
	mov r5,#4                                         	@IRInst:mul	%t169	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t169	i	4
	str r6,[fp,#192]                                  	@IRInst:mul	%t169	i	4
	ldr r4,.global_4_c                                	@IRInst:add	%t170	c	%t169
	ldr r5,[fp,#192]                                  	@IRInst:add	%t170	c	%t169
	add r6,r4,r5                                      	@IRInst:add	%t170	c	%t169
	str r6,[fp,#196]                                  	@IRInst:add	%t170	c	%t169
	ldr r4,[fp,#196]                                  	@IRInst:assign	%t171	%t170
	ldr r4,[r4]                                       	@IRInst:assign	%t171	%t170
	str r4,[fp,#200]                                  	@IRInst:assign	%t171	%t170
	ldr r4,[fp,#200]                                  	@IRInst:assign	%t172	%t171
	str r4,[fp,#204]                                  	@IRInst:assign	%t172	%t171
	ldr r4,[fp,#204]                                  	@IRInst:not_zero	%t173	%t172	0
	mov r5,#0                                         	@IRInst:not_zero	%t173	%t172	0
	cmp r4,r5                                         	@IRInst:not_zero	%t173	%t172	0
	moveq r6,#0                                       	@IRInst:not_zero	%t173	%t172	0
	movne r6,#1                                       	@IRInst:not_zero	%t173	%t172	0
	str r6,[fp,#208]                                  	@IRInst:not_zero	%t173	%t172	0
	beq .L68                                          
	b .L67                                            
.L67:
	mov r4,#2                                         	@IRInst:assign		2
	str r4,[fp]                                       	@IRInst:assign		2
	b .L54                                            
.L68:
.L69:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t174	i	1
	mov r5,#1                                         	@IRInst:add	%t174	i	1
	add r6,r4,r5                                      	@IRInst:add	%t174	i	1
	str r6,[fp,#212]                                  	@IRInst:add	%t174	i	1
	ldr r4,[fp,#212]                                  	@IRInst:assign	i	%t174
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t174
	b .L61                                            
.L63:
	mov r4,#-123                                      	@IRInst:assign		18446744073709551493
	str r4,[fp]                                       	@IRInst:assign		18446744073709551493
	b .L54                                            
.L54:
	ldr r0,[fp]                                       
	add fp,fp,#216                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
