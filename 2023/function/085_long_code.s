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
.text
.global_0_n:
        .long   n
.global bubblesort
.type bubblesort, %function
bubblesort:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#128                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
.L3:
	ldr r4,.global_0_n                                	@IRInst:sub	%t6	n	1
	ldr r4,[r4]                                       	@IRInst:sub	%t6	n	1
	mov r5,#1                                         	@IRInst:sub	%t6	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t6	n	1
	str r6,[fp,#16]                                   	@IRInst:sub	%t6	n	1
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t7	i	%t6
	ldr r5,[fp,#16]                                   	@IRInst:blt	%t7	i	%t6
	cmp r4,r5                                         	@IRInst:blt	%t7	i	%t6
	movlt r6,#1                                       	@IRInst:blt	%t7	i	%t6
	movge r6,#0                                       	@IRInst:blt	%t7	i	%t6
	str r6,[fp,#20]                                   	@IRInst:blt	%t7	i	%t6
	blt .L4                                           
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:assign	j	0
	str r4,[fp,#12]                                   	@IRInst:assign	j	0
.L6:
	ldr r4,.global_0_n                                	@IRInst:sub	%t8	n	i
	ldr r4,[r4]                                       	@IRInst:sub	%t8	n	i
	ldr r5,[fp,#8]                                    	@IRInst:sub	%t8	n	i
	sub r6,r4,r5                                      	@IRInst:sub	%t8	n	i
	str r6,[fp,#24]                                   	@IRInst:sub	%t8	n	i
	ldr r4,[fp,#24]                                   	@IRInst:sub	%t9	%t8	1
	mov r5,#1                                         	@IRInst:sub	%t9	%t8	1
	sub r6,r4,r5                                      	@IRInst:sub	%t9	%t8	1
	str r6,[fp,#28]                                   	@IRInst:sub	%t9	%t8	1
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t10	j	%t9
	ldr r5,[fp,#28]                                   	@IRInst:blt	%t10	j	%t9
	cmp r4,r5                                         	@IRInst:blt	%t10	j	%t9
	movlt r6,#1                                       	@IRInst:blt	%t10	j	%t9
	movge r6,#0                                       	@IRInst:blt	%t10	j	%t9
	str r6,[fp,#32]                                   	@IRInst:blt	%t10	j	%t9
	blt .L7                                           
	b .L8                                             
.L7:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t11	j	4
	mov r5,#4                                         	@IRInst:mul	%t11	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t11	j	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t11	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t12	arr	%t11
	ldr r5,[fp,#36]                                   	@IRInst:add	%t12	arr	%t11
	add r6,r4,r5                                      	@IRInst:add	%t12	arr	%t11
	str r6,[fp,#40]                                   	@IRInst:add	%t12	arr	%t11
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t13	%t12
	ldr r4,[r4]                                       	@IRInst:assign	%t13	%t12
	str r4,[fp,#44]                                   	@IRInst:assign	%t13	%t12
	ldr r4,[fp,#12]                                   	@IRInst:add	%t15	j	1
	mov r5,#1                                         	@IRInst:add	%t15	j	1
	add r6,r4,r5                                      	@IRInst:add	%t15	j	1
	str r6,[fp,#52]                                   	@IRInst:add	%t15	j	1
	ldr r4,[fp,#52]                                   	@IRInst:mul	%t14	%t15	4
	mov r5,#4                                         	@IRInst:mul	%t14	%t15	4
	mul r6,r4,r5                                      	@IRInst:mul	%t14	%t15	4
	str r6,[fp,#48]                                   	@IRInst:mul	%t14	%t15	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t16	arr	%t14
	ldr r5,[fp,#48]                                   	@IRInst:add	%t16	arr	%t14
	add r6,r4,r5                                      	@IRInst:add	%t16	arr	%t14
	str r6,[fp,#56]                                   	@IRInst:add	%t16	arr	%t14
	ldr r4,[fp,#56]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[r4]                                       	@IRInst:assign	%t17	%t16
	str r4,[fp,#60]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[fp,#44]                                   	@IRInst:bgt	%t18	%t13	%t17
	ldr r5,[fp,#60]                                   	@IRInst:bgt	%t18	%t13	%t17
	cmp r4,r5                                         	@IRInst:bgt	%t18	%t13	%t17
	movgt r6,#1                                       	@IRInst:bgt	%t18	%t13	%t17
	movle r6,#0                                       	@IRInst:bgt	%t18	%t13	%t17
	str r6,[fp,#64]                                   	@IRInst:bgt	%t18	%t13	%t17
	bgt .L9                                           
	b .L10                                            
.L9:
	ldr r4,[fp,#12]                                   	@IRInst:add	%t21	j	1
	mov r5,#1                                         	@IRInst:add	%t21	j	1
	add r6,r4,r5                                      	@IRInst:add	%t21	j	1
	str r6,[fp,#76]                                   	@IRInst:add	%t21	j	1
	ldr r4,[fp,#76]                                   	@IRInst:mul	%t20	%t21	4
	mov r5,#4                                         	@IRInst:mul	%t20	%t21	4
	mul r6,r4,r5                                      	@IRInst:mul	%t20	%t21	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t20	%t21	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t22	arr	%t20
	ldr r5,[fp,#72]                                   	@IRInst:add	%t22	arr	%t20
	add r6,r4,r5                                      	@IRInst:add	%t22	arr	%t20
	str r6,[fp,#80]                                   	@IRInst:add	%t22	arr	%t20
	ldr r4,[fp,#80]                                   	@IRInst:assign	%t23	%t22
	ldr r4,[r4]                                       	@IRInst:assign	%t23	%t22
	str r4,[fp,#84]                                   	@IRInst:assign	%t23	%t22
	ldr r4,[fp,#84]                                   	@IRInst:assign	tmp	%t23
	str r4,[fp,#68]                                   	@IRInst:assign	tmp	%t23
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t27	j	4
	mov r5,#4                                         	@IRInst:mul	%t27	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t27	j	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t27	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t28	arr	%t27
	ldr r5,[fp,#100]                                  	@IRInst:add	%t28	arr	%t27
	add r6,r4,r5                                      	@IRInst:add	%t28	arr	%t27
	str r6,[fp,#104]                                  	@IRInst:add	%t28	arr	%t27
	ldr r4,[fp,#104]                                  	@IRInst:assign	%t29	%t28
	ldr r4,[r4]                                       	@IRInst:assign	%t29	%t28
	str r4,[fp,#108]                                  	@IRInst:assign	%t29	%t28
	ldr r4,[fp,#12]                                   	@IRInst:add	%t25	j	1
	mov r5,#1                                         	@IRInst:add	%t25	j	1
	add r6,r4,r5                                      	@IRInst:add	%t25	j	1
	str r6,[fp,#92]                                   	@IRInst:add	%t25	j	1
	ldr r4,[fp,#92]                                   	@IRInst:mul	%t24	%t25	4
	mov r5,#4                                         	@IRInst:mul	%t24	%t25	4
	mul r6,r4,r5                                      	@IRInst:mul	%t24	%t25	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t24	%t25	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t26	arr	%t24
	ldr r5,[fp,#88]                                   	@IRInst:add	%t26	arr	%t24
	add r6,r4,r5                                      	@IRInst:add	%t26	arr	%t24
	str r6,[fp,#96]                                   	@IRInst:add	%t26	arr	%t24
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t26	%t29
	ldr r4,[fp,#108]                                  	@IRInst:assign	%t26	%t29
	str r4,[r5]                                       	@IRInst:assign	%t26	%t29
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t30	j	4
	mov r5,#4                                         	@IRInst:mul	%t30	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t30	j	4
	str r6,[fp,#112]                                  	@IRInst:mul	%t30	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t31	arr	%t30
	ldr r5,[fp,#112]                                  	@IRInst:add	%t31	arr	%t30
	add r6,r4,r5                                      	@IRInst:add	%t31	arr	%t30
	str r6,[fp,#116]                                  	@IRInst:add	%t31	arr	%t30
	ldr r5,[fp,#116]                                  	@IRInst:assign	%t31	tmp
	ldr r4,[fp,#68]                                   	@IRInst:assign	%t31	tmp
	str r4,[r5]                                       	@IRInst:assign	%t31	tmp
.L10:
.L11:
	ldr r4,[fp,#12]                                   	@IRInst:add	%t32	j	1
	mov r5,#1                                         	@IRInst:add	%t32	j	1
	add r6,r4,r5                                      	@IRInst:add	%t32	j	1
	str r6,[fp,#120]                                  	@IRInst:add	%t32	j	1
	ldr r4,[fp,#120]                                  	@IRInst:assign	j	%t32
	str r4,[fp,#12]                                   	@IRInst:assign	j	%t32
	b .L6                                             
.L8:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t33	i	1
	mov r5,#1                                         	@IRInst:add	%t33	i	1
	add r6,r4,r5                                      	@IRInst:add	%t33	i	1
	str r6,[fp,#124]                                  	@IRInst:add	%t33	i	1
	ldr r4,[fp,#124]                                  	@IRInst:assign	i	%t33
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t33
	b .L3                                             
.L5:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#128                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_n:
        .long   n
.global insertsort
.type insertsort, %function
insertsort:
.L12:
	push {r10,fp}                                     
	sub sp,sp,#104                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	a	r0
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#8]                                    	@IRInst:assign	i	1
.L14:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t38	i	n
	ldr r5,.global_1_n                                	@IRInst:blt	%t38	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t38	i	n
	cmp r4,r5                                         	@IRInst:blt	%t38	i	n
	movlt r6,#1                                       	@IRInst:blt	%t38	i	n
	movge r6,#0                                       	@IRInst:blt	%t38	i	n
	str r6,[fp,#12]                                   	@IRInst:blt	%t38	i	n
	blt .L15                                          
	b .L16                                            
.L15:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t40	i	4
	mov r5,#4                                         	@IRInst:mul	%t40	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t40	i	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t40	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t41	a	%t40
	ldr r5,[fp,#20]                                   	@IRInst:add	%t41	a	%t40
	add r6,r4,r5                                      	@IRInst:add	%t41	a	%t40
	str r6,[fp,#24]                                   	@IRInst:add	%t41	a	%t40
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t42	%t41
	ldr r4,[r4]                                       	@IRInst:assign	%t42	%t41
	str r4,[fp,#28]                                   	@IRInst:assign	%t42	%t41
	ldr r4,[fp,#28]                                   	@IRInst:assign	temp	%t42
	str r4,[fp,#16]                                   	@IRInst:assign	temp	%t42
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t44	i	1
	mov r5,#1                                         	@IRInst:sub	%t44	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t44	i	1
	str r6,[fp,#36]                                   	@IRInst:sub	%t44	i	1
	ldr r4,[fp,#36]                                   	@IRInst:assign	j	%t44
	str r4,[fp,#32]                                   	@IRInst:assign	j	%t44
.L17:
	ldr r4,[fp,#32]                                   	@IRInst:bgt	%t45	j	18446744073709551615
	mov r5,#-1                                        	@IRInst:bgt	%t45	j	18446744073709551615
	cmp r4,r5                                         	@IRInst:bgt	%t45	j	18446744073709551615
	movgt r6,#1                                       	@IRInst:bgt	%t45	j	18446744073709551615
	movle r6,#0                                       	@IRInst:bgt	%t45	j	18446744073709551615
	str r6,[fp,#40]                                   	@IRInst:bgt	%t45	j	18446744073709551615
	bgt .L20                                          
	b .L19                                            
.L20:
	ldr r4,[fp,#32]                                   	@IRInst:mul	%t46	j	4
	mov r5,#4                                         	@IRInst:mul	%t46	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	j	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t46	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t47	a	%t46
	ldr r5,[fp,#44]                                   	@IRInst:add	%t47	a	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	a	%t46
	str r6,[fp,#48]                                   	@IRInst:add	%t47	a	%t46
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t48	%t47
	ldr r4,[r4]                                       	@IRInst:assign	%t48	%t47
	str r4,[fp,#52]                                   	@IRInst:assign	%t48	%t47
	ldr r4,[fp,#16]                                   	@IRInst:blt	%t49	temp	%t48
	ldr r5,[fp,#52]                                   	@IRInst:blt	%t49	temp	%t48
	cmp r4,r5                                         	@IRInst:blt	%t49	temp	%t48
	movlt r6,#1                                       	@IRInst:blt	%t49	temp	%t48
	movge r6,#0                                       	@IRInst:blt	%t49	temp	%t48
	str r6,[fp,#56]                                   	@IRInst:blt	%t49	temp	%t48
	blt .L18                                          
	b .L19                                            
.L18:
	ldr r4,[fp,#32]                                   	@IRInst:mul	%t53	j	4
	mov r5,#4                                         	@IRInst:mul	%t53	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t53	j	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t53	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t54	a	%t53
	ldr r5,[fp,#72]                                   	@IRInst:add	%t54	a	%t53
	add r6,r4,r5                                      	@IRInst:add	%t54	a	%t53
	str r6,[fp,#76]                                   	@IRInst:add	%t54	a	%t53
	ldr r4,[fp,#76]                                   	@IRInst:assign	%t55	%t54
	ldr r4,[r4]                                       	@IRInst:assign	%t55	%t54
	str r4,[fp,#80]                                   	@IRInst:assign	%t55	%t54
	ldr r4,[fp,#32]                                   	@IRInst:add	%t51	j	1
	mov r5,#1                                         	@IRInst:add	%t51	j	1
	add r6,r4,r5                                      	@IRInst:add	%t51	j	1
	str r6,[fp,#64]                                   	@IRInst:add	%t51	j	1
	ldr r4,[fp,#64]                                   	@IRInst:mul	%t50	%t51	4
	mov r5,#4                                         	@IRInst:mul	%t50	%t51	4
	mul r6,r4,r5                                      	@IRInst:mul	%t50	%t51	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t50	%t51	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t52	a	%t50
	ldr r5,[fp,#60]                                   	@IRInst:add	%t52	a	%t50
	add r6,r4,r5                                      	@IRInst:add	%t52	a	%t50
	str r6,[fp,#68]                                   	@IRInst:add	%t52	a	%t50
	ldr r5,[fp,#68]                                   	@IRInst:assign	%t52	%t55
	ldr r4,[fp,#80]                                   	@IRInst:assign	%t52	%t55
	str r4,[r5]                                       	@IRInst:assign	%t52	%t55
	ldr r4,[fp,#32]                                   	@IRInst:sub	%t56	j	1
	mov r5,#1                                         	@IRInst:sub	%t56	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t56	j	1
	str r6,[fp,#84]                                   	@IRInst:sub	%t56	j	1
	ldr r4,[fp,#84]                                   	@IRInst:assign	j	%t56
	str r4,[fp,#32]                                   	@IRInst:assign	j	%t56
	b .L17                                            
.L19:
	ldr r4,[fp,#32]                                   	@IRInst:add	%t58	j	1
	mov r5,#1                                         	@IRInst:add	%t58	j	1
	add r6,r4,r5                                      	@IRInst:add	%t58	j	1
	str r6,[fp,#92]                                   	@IRInst:add	%t58	j	1
	ldr r4,[fp,#92]                                   	@IRInst:mul	%t57	%t58	4
	mov r5,#4                                         	@IRInst:mul	%t57	%t58	4
	mul r6,r4,r5                                      	@IRInst:mul	%t57	%t58	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t57	%t58	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t59	a	%t57
	ldr r5,[fp,#88]                                   	@IRInst:add	%t59	a	%t57
	add r6,r4,r5                                      	@IRInst:add	%t59	a	%t57
	str r6,[fp,#96]                                   	@IRInst:add	%t59	a	%t57
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t59	temp
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t59	temp
	str r4,[r5]                                       	@IRInst:assign	%t59	temp
	ldr r4,[fp,#8]                                    	@IRInst:add	%t60	i	1
	mov r5,#1                                         	@IRInst:add	%t60	i	1
	add r6,r4,r5                                      	@IRInst:add	%t60	i	1
	str r6,[fp,#100]                                  	@IRInst:add	%t60	i	1
	ldr r4,[fp,#100]                                  	@IRInst:assign	i	%t60
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t60
	b .L14                                            
.L16:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L13                                            
.L13:
	ldr r0,[fp]                                       
	add fp,fp,#104                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_2_n:
        .long   n
.global QuickSort
.type QuickSort, %function
QuickSort:
.L21:
	push {r10,fp,lr}                                  
	sub sp,sp,#184                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	str r1,[fp,#8]                                    	@IRInst:assign	low	r1
	str r2,[fp,#12]                                   	@IRInst:assign	high	r2
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t68	low	high
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t68	low	high
	cmp r4,r5                                         	@IRInst:blt	%t68	low	high
	movlt r6,#1                                       	@IRInst:blt	%t68	low	high
	movge r6,#0                                       	@IRInst:blt	%t68	low	high
	str r6,[fp,#16]                                   	@IRInst:blt	%t68	low	high
	blt .L23                                          
	b .L24                                            
.L23:
	ldr r4,[fp,#8]                                    	@IRInst:assign	i	low
	str r4,[fp,#20]                                   	@IRInst:assign	i	low
	ldr r4,[fp,#12]                                   	@IRInst:assign	j	high
	str r4,[fp,#24]                                   	@IRInst:assign	j	high
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t72	low	4
	mov r5,#4                                         	@IRInst:mul	%t72	low	4
	mul r6,r4,r5                                      	@IRInst:mul	%t72	low	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t72	low	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t73	arr	%t72
	ldr r5,[fp,#32]                                   	@IRInst:add	%t73	arr	%t72
	add r6,r4,r5                                      	@IRInst:add	%t73	arr	%t72
	str r6,[fp,#36]                                   	@IRInst:add	%t73	arr	%t72
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t74	%t73
	ldr r4,[r4]                                       	@IRInst:assign	%t74	%t73
	str r4,[fp,#40]                                   	@IRInst:assign	%t74	%t73
	ldr r4,[fp,#40]                                   	@IRInst:assign	k	%t74
	str r4,[fp,#28]                                   	@IRInst:assign	k	%t74
.L26:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t75	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t75	i	j
	cmp r4,r5                                         	@IRInst:blt	%t75	i	j
	movlt r6,#1                                       	@IRInst:blt	%t75	i	j
	movge r6,#0                                       	@IRInst:blt	%t75	i	j
	str r6,[fp,#44]                                   	@IRInst:blt	%t75	i	j
	blt .L27                                          
	b .L28                                            
.L27:
.L29:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t76	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t76	i	j
	cmp r4,r5                                         	@IRInst:blt	%t76	i	j
	movlt r6,#1                                       	@IRInst:blt	%t76	i	j
	movge r6,#0                                       	@IRInst:blt	%t76	i	j
	str r6,[fp,#48]                                   	@IRInst:blt	%t76	i	j
	blt .L32                                          
	b .L31                                            
.L32:
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t77	j	4
	mov r5,#4                                         	@IRInst:mul	%t77	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t77	j	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t77	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t78	arr	%t77
	ldr r5,[fp,#52]                                   	@IRInst:add	%t78	arr	%t77
	add r6,r4,r5                                      	@IRInst:add	%t78	arr	%t77
	str r6,[fp,#56]                                   	@IRInst:add	%t78	arr	%t77
	ldr r4,[fp,#56]                                   	@IRInst:assign	%t79	%t78
	ldr r4,[r4]                                       	@IRInst:assign	%t79	%t78
	str r4,[fp,#60]                                   	@IRInst:assign	%t79	%t78
	ldr r4,[fp,#28]                                   	@IRInst:sub	%t80	k	1
	mov r5,#1                                         	@IRInst:sub	%t80	k	1
	sub r6,r4,r5                                      	@IRInst:sub	%t80	k	1
	str r6,[fp,#64]                                   	@IRInst:sub	%t80	k	1
	ldr r4,[fp,#60]                                   	@IRInst:bgt	%t81	%t79	%t80
	ldr r5,[fp,#64]                                   	@IRInst:bgt	%t81	%t79	%t80
	cmp r4,r5                                         	@IRInst:bgt	%t81	%t79	%t80
	movgt r6,#1                                       	@IRInst:bgt	%t81	%t79	%t80
	movle r6,#0                                       	@IRInst:bgt	%t81	%t79	%t80
	str r6,[fp,#68]                                   	@IRInst:bgt	%t81	%t79	%t80
	bgt .L30                                          
	b .L31                                            
.L30:
	ldr r4,[fp,#24]                                   	@IRInst:sub	%t82	j	1
	mov r5,#1                                         	@IRInst:sub	%t82	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t82	j	1
	str r6,[fp,#72]                                   	@IRInst:sub	%t82	j	1
	ldr r4,[fp,#72]                                   	@IRInst:assign	j	%t82
	str r4,[fp,#24]                                   	@IRInst:assign	j	%t82
	b .L29                                            
.L31:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t83	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t83	i	j
	cmp r4,r5                                         	@IRInst:blt	%t83	i	j
	movlt r6,#1                                       	@IRInst:blt	%t83	i	j
	movge r6,#0                                       	@IRInst:blt	%t83	i	j
	str r6,[fp,#76]                                   	@IRInst:blt	%t83	i	j
	blt .L33                                          
	b .L34                                            
.L33:
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t86	j	4
	mov r5,#4                                         	@IRInst:mul	%t86	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t86	j	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t86	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t87	arr	%t86
	ldr r5,[fp,#88]                                   	@IRInst:add	%t87	arr	%t86
	add r6,r4,r5                                      	@IRInst:add	%t87	arr	%t86
	str r6,[fp,#92]                                   	@IRInst:add	%t87	arr	%t86
	ldr r4,[fp,#92]                                   	@IRInst:assign	%t88	%t87
	ldr r4,[r4]                                       	@IRInst:assign	%t88	%t87
	str r4,[fp,#96]                                   	@IRInst:assign	%t88	%t87
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t84	i	4
	mov r5,#4                                         	@IRInst:mul	%t84	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t84	i	4
	str r6,[fp,#80]                                   	@IRInst:mul	%t84	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t85	arr	%t84
	ldr r5,[fp,#80]                                   	@IRInst:add	%t85	arr	%t84
	add r6,r4,r5                                      	@IRInst:add	%t85	arr	%t84
	str r6,[fp,#84]                                   	@IRInst:add	%t85	arr	%t84
	ldr r5,[fp,#84]                                   	@IRInst:assign	%t85	%t88
	ldr r4,[fp,#96]                                   	@IRInst:assign	%t85	%t88
	str r4,[r5]                                       	@IRInst:assign	%t85	%t88
	ldr r4,[fp,#20]                                   	@IRInst:add	%t89	i	1
	mov r5,#1                                         	@IRInst:add	%t89	i	1
	add r6,r4,r5                                      	@IRInst:add	%t89	i	1
	str r6,[fp,#100]                                  	@IRInst:add	%t89	i	1
	ldr r4,[fp,#100]                                  	@IRInst:assign	i	%t89
	str r4,[fp,#20]                                   	@IRInst:assign	i	%t89
.L34:
.L35:
.L36:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t90	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t90	i	j
	cmp r4,r5                                         	@IRInst:blt	%t90	i	j
	movlt r6,#1                                       	@IRInst:blt	%t90	i	j
	movge r6,#0                                       	@IRInst:blt	%t90	i	j
	str r6,[fp,#104]                                  	@IRInst:blt	%t90	i	j
	blt .L39                                          
	b .L38                                            
.L39:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t91	i	4
	mov r5,#4                                         	@IRInst:mul	%t91	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t91	i	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t91	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t92	arr	%t91
	ldr r5,[fp,#108]                                  	@IRInst:add	%t92	arr	%t91
	add r6,r4,r5                                      	@IRInst:add	%t92	arr	%t91
	str r6,[fp,#112]                                  	@IRInst:add	%t92	arr	%t91
	ldr r4,[fp,#112]                                  	@IRInst:assign	%t93	%t92
	ldr r4,[r4]                                       	@IRInst:assign	%t93	%t92
	str r4,[fp,#116]                                  	@IRInst:assign	%t93	%t92
	ldr r4,[fp,#116]                                  	@IRInst:blt	%t94	%t93	k
	ldr r5,[fp,#28]                                   	@IRInst:blt	%t94	%t93	k
	cmp r4,r5                                         	@IRInst:blt	%t94	%t93	k
	movlt r6,#1                                       	@IRInst:blt	%t94	%t93	k
	movge r6,#0                                       	@IRInst:blt	%t94	%t93	k
	str r6,[fp,#120]                                  	@IRInst:blt	%t94	%t93	k
	blt .L37                                          
	b .L38                                            
.L37:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t95	i	1
	mov r5,#1                                         	@IRInst:add	%t95	i	1
	add r6,r4,r5                                      	@IRInst:add	%t95	i	1
	str r6,[fp,#124]                                  	@IRInst:add	%t95	i	1
	ldr r4,[fp,#124]                                  	@IRInst:assign	i	%t95
	str r4,[fp,#20]                                   	@IRInst:assign	i	%t95
	b .L36                                            
.L38:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t96	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t96	i	j
	cmp r4,r5                                         	@IRInst:blt	%t96	i	j
	movlt r6,#1                                       	@IRInst:blt	%t96	i	j
	movge r6,#0                                       	@IRInst:blt	%t96	i	j
	str r6,[fp,#128]                                  	@IRInst:blt	%t96	i	j
	blt .L40                                          
	b .L41                                            
.L40:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t99	i	4
	mov r5,#4                                         	@IRInst:mul	%t99	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t99	i	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t99	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t100	arr	%t99
	ldr r5,[fp,#140]                                  	@IRInst:add	%t100	arr	%t99
	add r6,r4,r5                                      	@IRInst:add	%t100	arr	%t99
	str r6,[fp,#144]                                  	@IRInst:add	%t100	arr	%t99
	ldr r4,[fp,#144]                                  	@IRInst:assign	%t101	%t100
	ldr r4,[r4]                                       	@IRInst:assign	%t101	%t100
	str r4,[fp,#148]                                  	@IRInst:assign	%t101	%t100
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t97	j	4
	mov r5,#4                                         	@IRInst:mul	%t97	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t97	j	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t97	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t98	arr	%t97
	ldr r5,[fp,#132]                                  	@IRInst:add	%t98	arr	%t97
	add r6,r4,r5                                      	@IRInst:add	%t98	arr	%t97
	str r6,[fp,#136]                                  	@IRInst:add	%t98	arr	%t97
	ldr r5,[fp,#136]                                  	@IRInst:assign	%t98	%t101
	ldr r4,[fp,#148]                                  	@IRInst:assign	%t98	%t101
	str r4,[r5]                                       	@IRInst:assign	%t98	%t101
	ldr r4,[fp,#24]                                   	@IRInst:sub	%t102	j	1
	mov r5,#1                                         	@IRInst:sub	%t102	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t102	j	1
	str r6,[fp,#152]                                  	@IRInst:sub	%t102	j	1
	ldr r4,[fp,#152]                                  	@IRInst:assign	j	%t102
	str r4,[fp,#24]                                   	@IRInst:assign	j	%t102
.L41:
.L42:
	b .L26                                            
.L28:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t103	i	4
	mov r5,#4                                         	@IRInst:mul	%t103	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t103	i	4
	str r6,[fp,#156]                                  	@IRInst:mul	%t103	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t104	arr	%t103
	ldr r5,[fp,#156]                                  	@IRInst:add	%t104	arr	%t103
	add r6,r4,r5                                      	@IRInst:add	%t104	arr	%t103
	str r6,[fp,#160]                                  	@IRInst:add	%t104	arr	%t103
	ldr r5,[fp,#160]                                  	@IRInst:assign	%t104	k
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t104	k
	str r4,[r5]                                       	@IRInst:assign	%t104	k
	ldr r4,[fp,#20]                                   	@IRInst:sub	%t106	i	1
	mov r5,#1                                         	@IRInst:sub	%t106	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t106	i	1
	str r6,[fp,#168]                                  	@IRInst:sub	%t106	i	1
	ldr r4,[fp,#168]                                  	@IRInst:assign	tmp	%t106
	str r4,[fp,#164]                                  	@IRInst:assign	tmp	%t106
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	arr
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	low
	ldr r2,[fp,#164]                                  	@IRInst:assign	r2	tmp
	bl QuickSort                                      
	str r0,[fp,#172]                                  	@IRInst:assign	%t107	r0
	ldr r4,[fp,#172]                                  	@IRInst:assign	tmp	%t107
	str r4,[fp,#164]                                  	@IRInst:assign	tmp	%t107
	ldr r4,[fp,#20]                                   	@IRInst:add	%t108	i	1
	mov r5,#1                                         	@IRInst:add	%t108	i	1
	add r6,r4,r5                                      	@IRInst:add	%t108	i	1
	str r6,[fp,#176]                                  	@IRInst:add	%t108	i	1
	ldr r4,[fp,#176]                                  	@IRInst:assign	tmp	%t108
	str r4,[fp,#164]                                  	@IRInst:assign	tmp	%t108
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	arr
	ldr r1,[fp,#164]                                  	@IRInst:assign	r1	tmp
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	high
	bl QuickSort                                      
	str r0,[fp,#180]                                  	@IRInst:assign	%t109	r0
	ldr r4,[fp,#180]                                  	@IRInst:assign	tmp	%t109
	str r4,[fp,#164]                                  	@IRInst:assign	tmp	%t109
.L24:
.L25:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L22                                            
.L22:
	ldr r0,[fp]                                       
	add fp,fp,#184                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_3_n:
        .long   n
.global getMid
.type getMid, %function
getMid:
.L43:
	push {r10,fp}                                     
	sub sp,sp,#84                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	ldr r4,.global_3_n                                	@IRInst:sdiv	%t115	n	2
	ldr r4,[r4]                                       	@IRInst:sdiv	%t115	n	2
	mov r5,#2                                         	@IRInst:sdiv	%t115	n	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t115	n	2
	str r6,[fp,#16]                                   	@IRInst:sdiv	%t115	n	2
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t116	%t115	2
	mov r5,#2                                         	@IRInst:mul	%t116	%t115	2
	mul r6,r4,r5                                      	@IRInst:mul	%t116	%t115	2
	str r6,[fp,#20]                                   	@IRInst:mul	%t116	%t115	2
	ldr r4,.global_3_n                                	@IRInst:sub	%t114	n	%t116
	ldr r4,[r4]                                       	@IRInst:sub	%t114	n	%t116
	ldr r5,[fp,#20]                                   	@IRInst:sub	%t114	n	%t116
	sub r6,r4,r5                                      	@IRInst:sub	%t114	n	%t116
	str r6,[fp,#12]                                   	@IRInst:sub	%t114	n	%t116
	ldr r4,[fp,#12]                                   	@IRInst:beq	%t117	%t114	0
	mov r5,#0                                         	@IRInst:beq	%t117	%t114	0
	cmp r4,r5                                         	@IRInst:beq	%t117	%t114	0
	moveq r6,#1                                       	@IRInst:beq	%t117	%t114	0
	movne r6,#0                                       	@IRInst:beq	%t117	%t114	0
	str r6,[fp,#24]                                   	@IRInst:beq	%t117	%t114	0
	beq .L45                                          
	b .L46                                            
.L45:
	ldr r4,.global_3_n                                	@IRInst:sdiv	%t118	n	2
	ldr r4,[r4]                                       	@IRInst:sdiv	%t118	n	2
	mov r5,#2                                         	@IRInst:sdiv	%t118	n	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t118	n	2
	str r6,[fp,#28]                                   	@IRInst:sdiv	%t118	n	2
	ldr r4,[fp,#28]                                   	@IRInst:assign	mid	%t118
	str r4,[fp,#8]                                    	@IRInst:assign	mid	%t118
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t119	mid	4
	mov r5,#4                                         	@IRInst:mul	%t119	mid	4
	mul r6,r4,r5                                      	@IRInst:mul	%t119	mid	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t119	mid	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t120	arr	%t119
	ldr r5,[fp,#32]                                   	@IRInst:add	%t120	arr	%t119
	add r6,r4,r5                                      	@IRInst:add	%t120	arr	%t119
	str r6,[fp,#36]                                   	@IRInst:add	%t120	arr	%t119
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t121	%t120
	ldr r4,[r4]                                       	@IRInst:assign	%t121	%t120
	str r4,[fp,#40]                                   	@IRInst:assign	%t121	%t120
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t123	mid	1
	mov r5,#1                                         	@IRInst:sub	%t123	mid	1
	sub r6,r4,r5                                      	@IRInst:sub	%t123	mid	1
	str r6,[fp,#48]                                   	@IRInst:sub	%t123	mid	1
	ldr r4,[fp,#48]                                   	@IRInst:mul	%t122	%t123	4
	mov r5,#4                                         	@IRInst:mul	%t122	%t123	4
	mul r6,r4,r5                                      	@IRInst:mul	%t122	%t123	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t122	%t123	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t124	arr	%t122
	ldr r5,[fp,#44]                                   	@IRInst:add	%t124	arr	%t122
	add r6,r4,r5                                      	@IRInst:add	%t124	arr	%t122
	str r6,[fp,#52]                                   	@IRInst:add	%t124	arr	%t122
	ldr r4,[fp,#52]                                   	@IRInst:assign	%t125	%t124
	ldr r4,[r4]                                       	@IRInst:assign	%t125	%t124
	str r4,[fp,#56]                                   	@IRInst:assign	%t125	%t124
	ldr r4,[fp,#40]                                   	@IRInst:add	%t126	%t121	%t125
	ldr r5,[fp,#56]                                   	@IRInst:add	%t126	%t121	%t125
	add r6,r4,r5                                      	@IRInst:add	%t126	%t121	%t125
	str r6,[fp,#60]                                   	@IRInst:add	%t126	%t121	%t125
	ldr r4,[fp,#60]                                   	@IRInst:sdiv	%t127	%t126	2
	mov r5,#2                                         	@IRInst:sdiv	%t127	%t126	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t127	%t126	2
	str r6,[fp,#64]                                   	@IRInst:sdiv	%t127	%t126	2
	ldr r4,[fp,#64]                                   	@IRInst:assign		%t127
	str r4,[fp]                                       	@IRInst:assign		%t127
	b .L44                                            
	b .L47                                            
.L46:
	ldr r4,.global_3_n                                	@IRInst:sdiv	%t128	n	2
	ldr r4,[r4]                                       	@IRInst:sdiv	%t128	n	2
	mov r5,#2                                         	@IRInst:sdiv	%t128	n	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t128	n	2
	str r6,[fp,#68]                                   	@IRInst:sdiv	%t128	n	2
	ldr r4,[fp,#68]                                   	@IRInst:assign	mid	%t128
	str r4,[fp,#8]                                    	@IRInst:assign	mid	%t128
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t129	mid	4
	mov r5,#4                                         	@IRInst:mul	%t129	mid	4
	mul r6,r4,r5                                      	@IRInst:mul	%t129	mid	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t129	mid	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t130	arr	%t129
	ldr r5,[fp,#72]                                   	@IRInst:add	%t130	arr	%t129
	add r6,r4,r5                                      	@IRInst:add	%t130	arr	%t129
	str r6,[fp,#76]                                   	@IRInst:add	%t130	arr	%t129
	ldr r4,[fp,#76]                                   	@IRInst:assign	%t131	%t130
	ldr r4,[r4]                                       	@IRInst:assign	%t131	%t130
	str r4,[fp,#80]                                   	@IRInst:assign	%t131	%t130
	ldr r4,[fp,#80]                                   	@IRInst:assign		%t131
	str r4,[fp]                                       	@IRInst:assign		%t131
	b .L44                                            
.L47:
.L44:
	ldr r0,[fp]                                       
	add fp,fp,#84                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_4_n:
        .long   n
.global getMost
.type getMost, %function
getMost:
.L48:
	push {r10,fp}                                     
	ldr r10,=4112                                     
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4008]                                 	@IRInst:assign	i	0
.L50:
	ldr r4,[fp,#4008]                                 	@IRInst:blt	%t137	i	1000
	mov r5,#1000                                      	@IRInst:blt	%t137	i	1000
	cmp r4,r5                                         	@IRInst:blt	%t137	i	1000
	movlt r6,#1                                       	@IRInst:blt	%t137	i	1000
	movge r6,#0                                       	@IRInst:blt	%t137	i	1000
	str r6,[fp,#4012]                                 	@IRInst:blt	%t137	i	1000
	blt .L51                                          
	b .L52                                            
.L51:
	ldr r4,[fp,#4008]                                 	@IRInst:mul	%t138	i	4
	mov r5,#4                                         	@IRInst:mul	%t138	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t138	i	4
	str r6,[fp,#4016]                                 	@IRInst:mul	%t138	i	4
	add r4,fp,#8                                      	@IRInst:add	%t139	count	%t138
	ldr r5,[fp,#4016]                                 	@IRInst:add	%t139	count	%t138
	add r6,r4,r5                                      	@IRInst:add	%t139	count	%t138
	str r6,[fp,#4020]                                 	@IRInst:add	%t139	count	%t138
	ldr r5,[fp,#4020]                                 	@IRInst:assign	%t139	0
	mov r4,#0                                         	@IRInst:assign	%t139	0
	str r4,[r5]                                       	@IRInst:assign	%t139	0
	ldr r4,[fp,#4008]                                 	@IRInst:add	%t140	i	1
	mov r5,#1                                         	@IRInst:add	%t140	i	1
	add r6,r4,r5                                      	@IRInst:add	%t140	i	1
	str r6,[fp,#4024]                                 	@IRInst:add	%t140	i	1
	ldr r4,[fp,#4024]                                 	@IRInst:assign	i	%t140
	str r4,[fp,#4008]                                 	@IRInst:assign	i	%t140
	b .L50                                            
.L52:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4008]                                 	@IRInst:assign	i	0
	mov r4,#0                                         	@IRInst:assign	max	0
	str r4,[fp,#4028]                                 	@IRInst:assign	max	0
.L53:
	ldr r4,[fp,#4008]                                 	@IRInst:blt	%t143	i	n
	ldr r5,.global_4_n                                	@IRInst:blt	%t143	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t143	i	n
	cmp r4,r5                                         	@IRInst:blt	%t143	i	n
	movlt r6,#1                                       	@IRInst:blt	%t143	i	n
	movge r6,#0                                       	@IRInst:blt	%t143	i	n
	str r6,[fp,#4036]                                 	@IRInst:blt	%t143	i	n
	blt .L54                                          
	b .L55                                            
.L54:
	ldr r4,[fp,#4008]                                 	@IRInst:mul	%t145	i	4
	mov r5,#4                                         	@IRInst:mul	%t145	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t145	i	4
	str r6,[fp,#4044]                                 	@IRInst:mul	%t145	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t146	arr	%t145
	ldr r5,[fp,#4044]                                 	@IRInst:add	%t146	arr	%t145
	add r6,r4,r5                                      	@IRInst:add	%t146	arr	%t145
	str r6,[fp,#4048]                                 	@IRInst:add	%t146	arr	%t145
	ldr r4,[fp,#4048]                                 	@IRInst:assign	%t147	%t146
	ldr r4,[r4]                                       	@IRInst:assign	%t147	%t146
	str r4,[fp,#4052]                                 	@IRInst:assign	%t147	%t146
	ldr r4,[fp,#4052]                                 	@IRInst:assign	num	%t147
	str r4,[fp,#4040]                                 	@IRInst:assign	num	%t147
	ldr r4,[fp,#4040]                                 	@IRInst:mul	%t150	num	4
	mov r5,#4                                         	@IRInst:mul	%t150	num	4
	mul r6,r4,r5                                      	@IRInst:mul	%t150	num	4
	str r6,[fp,#4064]                                 	@IRInst:mul	%t150	num	4
	add r4,fp,#8                                      	@IRInst:add	%t151	count	%t150
	ldr r5,[fp,#4064]                                 	@IRInst:add	%t151	count	%t150
	add r6,r4,r5                                      	@IRInst:add	%t151	count	%t150
	str r6,[fp,#4068]                                 	@IRInst:add	%t151	count	%t150
	ldr r4,[fp,#4068]                                 	@IRInst:assign	%t152	%t151
	ldr r4,[r4]                                       	@IRInst:assign	%t152	%t151
	str r4,[fp,#4072]                                 	@IRInst:assign	%t152	%t151
	ldr r4,[fp,#4072]                                 	@IRInst:add	%t153	%t152	1
	mov r5,#1                                         	@IRInst:add	%t153	%t152	1
	add r6,r4,r5                                      	@IRInst:add	%t153	%t152	1
	str r6,[fp,#4076]                                 	@IRInst:add	%t153	%t152	1
	ldr r4,[fp,#4040]                                 	@IRInst:mul	%t148	num	4
	mov r5,#4                                         	@IRInst:mul	%t148	num	4
	mul r6,r4,r5                                      	@IRInst:mul	%t148	num	4
	str r6,[fp,#4056]                                 	@IRInst:mul	%t148	num	4
	add r4,fp,#8                                      	@IRInst:add	%t149	count	%t148
	ldr r5,[fp,#4056]                                 	@IRInst:add	%t149	count	%t148
	add r6,r4,r5                                      	@IRInst:add	%t149	count	%t148
	str r6,[fp,#4060]                                 	@IRInst:add	%t149	count	%t148
	ldr r5,[fp,#4060]                                 	@IRInst:assign	%t149	%t153
	ldr r4,[fp,#4076]                                 	@IRInst:assign	%t149	%t153
	str r4,[r5]                                       	@IRInst:assign	%t149	%t153
	ldr r4,[fp,#4040]                                 	@IRInst:mul	%t154	num	4
	mov r5,#4                                         	@IRInst:mul	%t154	num	4
	mul r6,r4,r5                                      	@IRInst:mul	%t154	num	4
	str r6,[fp,#4080]                                 	@IRInst:mul	%t154	num	4
	add r4,fp,#8                                      	@IRInst:add	%t155	count	%t154
	ldr r5,[fp,#4080]                                 	@IRInst:add	%t155	count	%t154
	add r6,r4,r5                                      	@IRInst:add	%t155	count	%t154
	str r6,[fp,#4084]                                 	@IRInst:add	%t155	count	%t154
	ldr r4,[fp,#4084]                                 	@IRInst:assign	%t156	%t155
	ldr r4,[r4]                                       	@IRInst:assign	%t156	%t155
	str r4,[fp,#4088]                                 	@IRInst:assign	%t156	%t155
	ldr r4,[fp,#4088]                                 	@IRInst:bgt	%t157	%t156	max
	ldr r5,[fp,#4028]                                 	@IRInst:bgt	%t157	%t156	max
	cmp r4,r5                                         	@IRInst:bgt	%t157	%t156	max
	movgt r6,#1                                       	@IRInst:bgt	%t157	%t156	max
	movle r6,#0                                       	@IRInst:bgt	%t157	%t156	max
	str r6,[fp,#4092]                                 	@IRInst:bgt	%t157	%t156	max
	bgt .L56                                          
	b .L57                                            
.L56:
	ldr r4,[fp,#4040]                                 	@IRInst:mul	%t158	num	4
	mov r5,#4                                         	@IRInst:mul	%t158	num	4
	mul r6,r4,r5                                      	@IRInst:mul	%t158	num	4
	mov r5,#4096                                      	@IRInst:mul	%t158	num	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t158	num	4
	add r4,fp,#8                                      	@IRInst:add	%t159	count	%t158
	mov r5,#4096                                      	@IRInst:add	%t159	count	%t158
	ldr r5,[fp,r5]                                    	@IRInst:add	%t159	count	%t158
	add r6,r4,r5                                      	@IRInst:add	%t159	count	%t158
	ldr r5,=4100                                      	@IRInst:add	%t159	count	%t158
	str r6,[fp,r5]                                    	@IRInst:add	%t159	count	%t158
	ldr r4,=4100                                      	@IRInst:assign	%t160	%t159
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t160	%t159
	ldr r4,[r4]                                       	@IRInst:assign	%t160	%t159
	ldr r9,=4104                                      	@IRInst:assign	%t160	%t159
	str r4,[fp,r9]                                    	@IRInst:assign	%t160	%t159
	ldr r4,=4104                                      	@IRInst:assign	max	%t160
	ldr r4,[fp,r4]                                    	@IRInst:assign	max	%t160
	str r4,[fp,#4028]                                 	@IRInst:assign	max	%t160
	ldr r4,[fp,#4040]                                 	@IRInst:assign	number	num
	str r4,[fp,#4032]                                 	@IRInst:assign	number	num
.L57:
.L58:
	ldr r4,[fp,#4008]                                 	@IRInst:add	%t161	i	1
	mov r5,#1                                         	@IRInst:add	%t161	i	1
	add r6,r4,r5                                      	@IRInst:add	%t161	i	1
	ldr r5,=4108                                      	@IRInst:add	%t161	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t161	i	1
	ldr r4,=4108                                      	@IRInst:assign	i	%t161
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t161
	str r4,[fp,#4008]                                 	@IRInst:assign	i	%t161
	b .L53                                            
.L55:
	ldr r4,[fp,#4032]                                 	@IRInst:assign		number
	str r4,[fp]                                       	@IRInst:assign		number
	b .L49                                            
.L49:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_5_n:
        .long   n
.global revert
.type revert, %function
revert:
.L59:
	push {r10,fp}                                     
	sub sp,sp,#72                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#12]                                   	@IRInst:assign	i	0
	mov r4,#0                                         	@IRInst:assign	j	0
	str r4,[fp,#16]                                   	@IRInst:assign	j	0
.L61:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t168	i	j
	ldr r5,[fp,#16]                                   	@IRInst:blt	%t168	i	j
	cmp r4,r5                                         	@IRInst:blt	%t168	i	j
	movlt r6,#1                                       	@IRInst:blt	%t168	i	j
	movge r6,#0                                       	@IRInst:blt	%t168	i	j
	str r6,[fp,#20]                                   	@IRInst:blt	%t168	i	j
	blt .L62                                          
	b .L63                                            
.L62:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t169	i	4
	mov r5,#4                                         	@IRInst:mul	%t169	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t169	i	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t169	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t170	arr	%t169
	ldr r5,[fp,#24]                                   	@IRInst:add	%t170	arr	%t169
	add r6,r4,r5                                      	@IRInst:add	%t170	arr	%t169
	str r6,[fp,#28]                                   	@IRInst:add	%t170	arr	%t169
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t171	%t170
	ldr r4,[r4]                                       	@IRInst:assign	%t171	%t170
	str r4,[fp,#32]                                   	@IRInst:assign	%t171	%t170
	ldr r4,[fp,#32]                                   	@IRInst:assign	temp	%t171
	str r4,[fp,#8]                                    	@IRInst:assign	temp	%t171
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t174	j	4
	mov r5,#4                                         	@IRInst:mul	%t174	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t174	j	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t174	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t175	arr	%t174
	ldr r5,[fp,#44]                                   	@IRInst:add	%t175	arr	%t174
	add r6,r4,r5                                      	@IRInst:add	%t175	arr	%t174
	str r6,[fp,#48]                                   	@IRInst:add	%t175	arr	%t174
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t176	%t175
	ldr r4,[r4]                                       	@IRInst:assign	%t176	%t175
	str r4,[fp,#52]                                   	@IRInst:assign	%t176	%t175
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t172	i	4
	mov r5,#4                                         	@IRInst:mul	%t172	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t172	i	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t172	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t173	arr	%t172
	ldr r5,[fp,#36]                                   	@IRInst:add	%t173	arr	%t172
	add r6,r4,r5                                      	@IRInst:add	%t173	arr	%t172
	str r6,[fp,#40]                                   	@IRInst:add	%t173	arr	%t172
	ldr r5,[fp,#40]                                   	@IRInst:assign	%t173	%t176
	ldr r4,[fp,#52]                                   	@IRInst:assign	%t173	%t176
	str r4,[r5]                                       	@IRInst:assign	%t173	%t176
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t177	j	4
	mov r5,#4                                         	@IRInst:mul	%t177	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t177	j	4
	str r6,[fp,#56]                                   	@IRInst:mul	%t177	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t178	arr	%t177
	ldr r5,[fp,#56]                                   	@IRInst:add	%t178	arr	%t177
	add r6,r4,r5                                      	@IRInst:add	%t178	arr	%t177
	str r6,[fp,#60]                                   	@IRInst:add	%t178	arr	%t177
	ldr r5,[fp,#60]                                   	@IRInst:assign	%t178	temp
	ldr r4,[fp,#8]                                    	@IRInst:assign	%t178	temp
	str r4,[r5]                                       	@IRInst:assign	%t178	temp
	ldr r4,[fp,#12]                                   	@IRInst:add	%t179	i	1
	mov r5,#1                                         	@IRInst:add	%t179	i	1
	add r6,r4,r5                                      	@IRInst:add	%t179	i	1
	str r6,[fp,#64]                                   	@IRInst:add	%t179	i	1
	ldr r4,[fp,#64]                                   	@IRInst:assign	i	%t179
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t179
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t180	j	1
	mov r5,#1                                         	@IRInst:sub	%t180	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t180	j	1
	str r6,[fp,#68]                                   	@IRInst:sub	%t180	j	1
	ldr r4,[fp,#68]                                   	@IRInst:assign	j	%t180
	str r4,[fp,#16]                                   	@IRInst:assign	j	%t180
	b .L61                                            
.L63:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L60                                            
.L60:
	ldr r0,[fp]                                       
	add fp,fp,#72                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_6_n:
        .long   n
.global arrCopy
.type arrCopy, %function
arrCopy:
.L64:
	push {r10,fp}                                     
	sub sp,sp,#44                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	src	r0
	str r1,[fp,#8]                                    	@IRInst:assign	target	r1
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#12]                                   	@IRInst:assign	i	0
.L66:
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t187	i	n
	ldr r5,.global_6_n                                	@IRInst:blt	%t187	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t187	i	n
	cmp r4,r5                                         	@IRInst:blt	%t187	i	n
	movlt r6,#1                                       	@IRInst:blt	%t187	i	n
	movge r6,#0                                       	@IRInst:blt	%t187	i	n
	str r6,[fp,#16]                                   	@IRInst:blt	%t187	i	n
	blt .L67                                          
	b .L68                                            
.L67:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t190	i	4
	mov r5,#4                                         	@IRInst:mul	%t190	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t190	i	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t190	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t191	src	%t190
	ldr r5,[fp,#28]                                   	@IRInst:add	%t191	src	%t190
	add r6,r4,r5                                      	@IRInst:add	%t191	src	%t190
	str r6,[fp,#32]                                   	@IRInst:add	%t191	src	%t190
	ldr r4,[fp,#32]                                   	@IRInst:assign	%t192	%t191
	ldr r4,[r4]                                       	@IRInst:assign	%t192	%t191
	str r4,[fp,#36]                                   	@IRInst:assign	%t192	%t191
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t188	i	4
	mov r5,#4                                         	@IRInst:mul	%t188	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t188	i	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t188	i	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t189	target	%t188
	ldr r5,[fp,#20]                                   	@IRInst:add	%t189	target	%t188
	add r6,r4,r5                                      	@IRInst:add	%t189	target	%t188
	str r6,[fp,#24]                                   	@IRInst:add	%t189	target	%t188
	ldr r5,[fp,#24]                                   	@IRInst:assign	%t189	%t192
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t189	%t192
	str r4,[r5]                                       	@IRInst:assign	%t189	%t192
	ldr r4,[fp,#12]                                   	@IRInst:add	%t193	i	1
	mov r5,#1                                         	@IRInst:add	%t193	i	1
	add r6,r4,r5                                      	@IRInst:add	%t193	i	1
	str r6,[fp,#40]                                   	@IRInst:add	%t193	i	1
	ldr r4,[fp,#40]                                   	@IRInst:assign	i	%t193
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t193
	b .L66                                            
.L68:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L65                                            
.L65:
	ldr r0,[fp]                                       
	add fp,fp,#44                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_7_n:
        .long   n
.global calSum
.type calSum, %function
calSum:
.L69:
	push {r10,fp}                                     
	sub sp,sp,#80                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	str r1,[fp,#8]                                    	@IRInst:assign	stride	r1
	mov r4,#0                                         	@IRInst:assign	sum	0
	str r4,[fp,#12]                                   	@IRInst:assign	sum	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#16]                                   	@IRInst:assign	i	0
.L71:
	ldr r4,[fp,#16]                                   	@IRInst:blt	%t201	i	n
	ldr r5,.global_7_n                                	@IRInst:blt	%t201	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t201	i	n
	cmp r4,r5                                         	@IRInst:blt	%t201	i	n
	movlt r6,#1                                       	@IRInst:blt	%t201	i	n
	movge r6,#0                                       	@IRInst:blt	%t201	i	n
	str r6,[fp,#20]                                   	@IRInst:blt	%t201	i	n
	blt .L72                                          
	b .L73                                            
.L72:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t202	i	4
	mov r5,#4                                         	@IRInst:mul	%t202	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t202	i	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t202	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t203	arr	%t202
	ldr r5,[fp,#24]                                   	@IRInst:add	%t203	arr	%t202
	add r6,r4,r5                                      	@IRInst:add	%t203	arr	%t202
	str r6,[fp,#28]                                   	@IRInst:add	%t203	arr	%t202
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t204	%t203
	ldr r4,[r4]                                       	@IRInst:assign	%t204	%t203
	str r4,[fp,#32]                                   	@IRInst:assign	%t204	%t203
	ldr r4,[fp,#12]                                   	@IRInst:add	%t205	sum	%t204
	ldr r5,[fp,#32]                                   	@IRInst:add	%t205	sum	%t204
	add r6,r4,r5                                      	@IRInst:add	%t205	sum	%t204
	str r6,[fp,#36]                                   	@IRInst:add	%t205	sum	%t204
	ldr r4,[fp,#36]                                   	@IRInst:assign	sum	%t205
	str r4,[fp,#12]                                   	@IRInst:assign	sum	%t205
	ldr r4,[fp,#16]                                   	@IRInst:sdiv	%t207	i	stride
	ldr r5,[fp,#8]                                    	@IRInst:sdiv	%t207	i	stride
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t207	i	stride
	str r6,[fp,#44]                                   	@IRInst:sdiv	%t207	i	stride
	ldr r4,[fp,#44]                                   	@IRInst:mul	%t208	%t207	stride
	ldr r5,[fp,#8]                                    	@IRInst:mul	%t208	%t207	stride
	mul r6,r4,r5                                      	@IRInst:mul	%t208	%t207	stride
	str r6,[fp,#48]                                   	@IRInst:mul	%t208	%t207	stride
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t206	i	%t208
	ldr r5,[fp,#48]                                   	@IRInst:sub	%t206	i	%t208
	sub r6,r4,r5                                      	@IRInst:sub	%t206	i	%t208
	str r6,[fp,#40]                                   	@IRInst:sub	%t206	i	%t208
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t209	stride	1
	mov r5,#1                                         	@IRInst:sub	%t209	stride	1
	sub r6,r4,r5                                      	@IRInst:sub	%t209	stride	1
	str r6,[fp,#52]                                   	@IRInst:sub	%t209	stride	1
	ldr r4,[fp,#40]                                   	@IRInst:beq	%t210	%t206	%t209
	ldr r5,[fp,#52]                                   	@IRInst:beq	%t210	%t206	%t209
	cmp r4,r5                                         	@IRInst:beq	%t210	%t206	%t209
	moveq r6,#1                                       	@IRInst:beq	%t210	%t206	%t209
	movne r6,#0                                       	@IRInst:beq	%t210	%t206	%t209
	str r6,[fp,#56]                                   	@IRInst:beq	%t210	%t206	%t209
	beq .L75                                          
	b .L74                                            
.L74:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t211	i	4
	mov r5,#4                                         	@IRInst:mul	%t211	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t211	i	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t211	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t212	arr	%t211
	ldr r5,[fp,#60]                                   	@IRInst:add	%t212	arr	%t211
	add r6,r4,r5                                      	@IRInst:add	%t212	arr	%t211
	str r6,[fp,#64]                                   	@IRInst:add	%t212	arr	%t211
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t212	0
	mov r4,#0                                         	@IRInst:assign	%t212	0
	str r4,[r5]                                       	@IRInst:assign	%t212	0
	b .L76                                            
.L75:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t213	i	4
	mov r5,#4                                         	@IRInst:mul	%t213	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t213	i	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t213	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t214	arr	%t213
	ldr r5,[fp,#68]                                   	@IRInst:add	%t214	arr	%t213
	add r6,r4,r5                                      	@IRInst:add	%t214	arr	%t213
	str r6,[fp,#72]                                   	@IRInst:add	%t214	arr	%t213
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t214	sum
	ldr r4,[fp,#12]                                   	@IRInst:assign	%t214	sum
	str r4,[r5]                                       	@IRInst:assign	%t214	sum
	mov r4,#0                                         	@IRInst:assign	sum	0
	str r4,[fp,#12]                                   	@IRInst:assign	sum	0
.L76:
	ldr r4,[fp,#16]                                   	@IRInst:add	%t215	i	1
	mov r5,#1                                         	@IRInst:add	%t215	i	1
	add r6,r4,r5                                      	@IRInst:add	%t215	i	1
	str r6,[fp,#76]                                   	@IRInst:add	%t215	i	1
	ldr r4,[fp,#76]                                   	@IRInst:assign	i	%t215
	str r4,[fp,#16]                                   	@IRInst:assign	i	%t215
	b .L71                                            
.L73:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L70                                            
.L70:
	ldr r0,[fp]                                       
	add fp,fp,#80                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_8_n:
        .long   n
.global avgPooling
.type avgPooling, %function
avgPooling:
.L77:
	push {r10,fp}                                     
	sub sp,sp,#172                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	str r1,[fp,#8]                                    	@IRInst:assign	stride	r1
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#16]                                   	@IRInst:assign	i	0
	mov r4,#0                                         	@IRInst:assign	sum	0
	str r4,[fp,#12]                                   	@IRInst:assign	sum	0
.L79:
	ldr r4,[fp,#16]                                   	@IRInst:blt	%t224	i	n
	ldr r5,.global_8_n                                	@IRInst:blt	%t224	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t224	i	n
	cmp r4,r5                                         	@IRInst:blt	%t224	i	n
	movlt r6,#1                                       	@IRInst:blt	%t224	i	n
	movge r6,#0                                       	@IRInst:blt	%t224	i	n
	str r6,[fp,#24]                                   	@IRInst:blt	%t224	i	n
	blt .L80                                          
	b .L81                                            
.L80:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t225	stride	1
	mov r5,#1                                         	@IRInst:sub	%t225	stride	1
	sub r6,r4,r5                                      	@IRInst:sub	%t225	stride	1
	str r6,[fp,#28]                                   	@IRInst:sub	%t225	stride	1
	ldr r4,[fp,#16]                                   	@IRInst:blt	%t226	i	%t225
	ldr r5,[fp,#28]                                   	@IRInst:blt	%t226	i	%t225
	cmp r4,r5                                         	@IRInst:blt	%t226	i	%t225
	movlt r6,#1                                       	@IRInst:blt	%t226	i	%t225
	movge r6,#0                                       	@IRInst:blt	%t226	i	%t225
	str r6,[fp,#32]                                   	@IRInst:blt	%t226	i	%t225
	blt .L82                                          
	b .L83                                            
.L82:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t227	i	4
	mov r5,#4                                         	@IRInst:mul	%t227	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t227	i	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t227	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t228	arr	%t227
	ldr r5,[fp,#36]                                   	@IRInst:add	%t228	arr	%t227
	add r6,r4,r5                                      	@IRInst:add	%t228	arr	%t227
	str r6,[fp,#40]                                   	@IRInst:add	%t228	arr	%t227
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t229	%t228
	ldr r4,[r4]                                       	@IRInst:assign	%t229	%t228
	str r4,[fp,#44]                                   	@IRInst:assign	%t229	%t228
	ldr r4,[fp,#12]                                   	@IRInst:add	%t230	sum	%t229
	ldr r5,[fp,#44]                                   	@IRInst:add	%t230	sum	%t229
	add r6,r4,r5                                      	@IRInst:add	%t230	sum	%t229
	str r6,[fp,#48]                                   	@IRInst:add	%t230	sum	%t229
	ldr r4,[fp,#48]                                   	@IRInst:assign	sum	%t230
	str r4,[fp,#12]                                   	@IRInst:assign	sum	%t230
	b .L84                                            
.L83:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t231	stride	1
	mov r5,#1                                         	@IRInst:sub	%t231	stride	1
	sub r6,r4,r5                                      	@IRInst:sub	%t231	stride	1
	str r6,[fp,#52]                                   	@IRInst:sub	%t231	stride	1
	ldr r4,[fp,#16]                                   	@IRInst:beq	%t232	i	%t231
	ldr r5,[fp,#52]                                   	@IRInst:beq	%t232	i	%t231
	cmp r4,r5                                         	@IRInst:beq	%t232	i	%t231
	moveq r6,#1                                       	@IRInst:beq	%t232	i	%t231
	movne r6,#0                                       	@IRInst:beq	%t232	i	%t231
	str r6,[fp,#56]                                   	@IRInst:beq	%t232	i	%t231
	beq .L85                                          
	b .L86                                            
.L85:
	mov r4,#0                                         	@IRInst:mul	%t233	0	4
	mov r5,#4                                         	@IRInst:mul	%t233	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t233	0	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t233	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t234	arr	%t233
	ldr r5,[fp,#60]                                   	@IRInst:add	%t234	arr	%t233
	add r6,r4,r5                                      	@IRInst:add	%t234	arr	%t233
	str r6,[fp,#64]                                   	@IRInst:add	%t234	arr	%t233
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t235	%t234
	ldr r4,[r4]                                       	@IRInst:assign	%t235	%t234
	str r4,[fp,#68]                                   	@IRInst:assign	%t235	%t234
	ldr r4,[fp,#68]                                   	@IRInst:assign	lastnum	%t235
	str r4,[fp,#20]                                   	@IRInst:assign	lastnum	%t235
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t238	sum	stride
	ldr r5,[fp,#8]                                    	@IRInst:sdiv	%t238	sum	stride
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t238	sum	stride
	str r6,[fp,#80]                                   	@IRInst:sdiv	%t238	sum	stride
	mov r4,#0                                         	@IRInst:mul	%t236	0	4
	mov r5,#4                                         	@IRInst:mul	%t236	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t236	0	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t236	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t237	arr	%t236
	ldr r5,[fp,#72]                                   	@IRInst:add	%t237	arr	%t236
	add r6,r4,r5                                      	@IRInst:add	%t237	arr	%t236
	str r6,[fp,#76]                                   	@IRInst:add	%t237	arr	%t236
	ldr r5,[fp,#76]                                   	@IRInst:assign	%t237	%t238
	ldr r4,[fp,#80]                                   	@IRInst:assign	%t237	%t238
	str r4,[r5]                                       	@IRInst:assign	%t237	%t238
	b .L87                                            
.L86:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t239	i	4
	mov r5,#4                                         	@IRInst:mul	%t239	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t239	i	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t239	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t240	arr	%t239
	ldr r5,[fp,#84]                                   	@IRInst:add	%t240	arr	%t239
	add r6,r4,r5                                      	@IRInst:add	%t240	arr	%t239
	str r6,[fp,#88]                                   	@IRInst:add	%t240	arr	%t239
	ldr r4,[fp,#88]                                   	@IRInst:assign	%t241	%t240
	ldr r4,[r4]                                       	@IRInst:assign	%t241	%t240
	str r4,[fp,#92]                                   	@IRInst:assign	%t241	%t240
	ldr r4,[fp,#12]                                   	@IRInst:add	%t242	sum	%t241
	ldr r5,[fp,#92]                                   	@IRInst:add	%t242	sum	%t241
	add r6,r4,r5                                      	@IRInst:add	%t242	sum	%t241
	str r6,[fp,#96]                                   	@IRInst:add	%t242	sum	%t241
	ldr r4,[fp,#96]                                   	@IRInst:sub	%t243	%t242	lastnum
	ldr r5,[fp,#20]                                   	@IRInst:sub	%t243	%t242	lastnum
	sub r6,r4,r5                                      	@IRInst:sub	%t243	%t242	lastnum
	str r6,[fp,#100]                                  	@IRInst:sub	%t243	%t242	lastnum
	ldr r4,[fp,#100]                                  	@IRInst:assign	sum	%t243
	str r4,[fp,#12]                                   	@IRInst:assign	sum	%t243
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t245	i	stride
	ldr r5,[fp,#8]                                    	@IRInst:sub	%t245	i	stride
	sub r6,r4,r5                                      	@IRInst:sub	%t245	i	stride
	str r6,[fp,#108]                                  	@IRInst:sub	%t245	i	stride
	ldr r4,[fp,#108]                                  	@IRInst:add	%t246	%t245	1
	mov r5,#1                                         	@IRInst:add	%t246	%t245	1
	add r6,r4,r5                                      	@IRInst:add	%t246	%t245	1
	str r6,[fp,#112]                                  	@IRInst:add	%t246	%t245	1
	ldr r4,[fp,#112]                                  	@IRInst:mul	%t244	%t246	4
	mov r5,#4                                         	@IRInst:mul	%t244	%t246	4
	mul r6,r4,r5                                      	@IRInst:mul	%t244	%t246	4
	str r6,[fp,#104]                                  	@IRInst:mul	%t244	%t246	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t247	arr	%t244
	ldr r5,[fp,#104]                                  	@IRInst:add	%t247	arr	%t244
	add r6,r4,r5                                      	@IRInst:add	%t247	arr	%t244
	str r6,[fp,#116]                                  	@IRInst:add	%t247	arr	%t244
	ldr r4,[fp,#116]                                  	@IRInst:assign	%t248	%t247
	ldr r4,[r4]                                       	@IRInst:assign	%t248	%t247
	str r4,[fp,#120]                                  	@IRInst:assign	%t248	%t247
	ldr r4,[fp,#120]                                  	@IRInst:assign	lastnum	%t248
	str r4,[fp,#20]                                   	@IRInst:assign	lastnum	%t248
	ldr r4,[fp,#12]                                   	@IRInst:sdiv	%t253	sum	stride
	ldr r5,[fp,#8]                                    	@IRInst:sdiv	%t253	sum	stride
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t253	sum	stride
	str r6,[fp,#140]                                  	@IRInst:sdiv	%t253	sum	stride
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t250	i	stride
	ldr r5,[fp,#8]                                    	@IRInst:sub	%t250	i	stride
	sub r6,r4,r5                                      	@IRInst:sub	%t250	i	stride
	str r6,[fp,#128]                                  	@IRInst:sub	%t250	i	stride
	ldr r4,[fp,#128]                                  	@IRInst:add	%t251	%t250	1
	mov r5,#1                                         	@IRInst:add	%t251	%t250	1
	add r6,r4,r5                                      	@IRInst:add	%t251	%t250	1
	str r6,[fp,#132]                                  	@IRInst:add	%t251	%t250	1
	ldr r4,[fp,#132]                                  	@IRInst:mul	%t249	%t251	4
	mov r5,#4                                         	@IRInst:mul	%t249	%t251	4
	mul r6,r4,r5                                      	@IRInst:mul	%t249	%t251	4
	str r6,[fp,#124]                                  	@IRInst:mul	%t249	%t251	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t252	arr	%t249
	ldr r5,[fp,#124]                                  	@IRInst:add	%t252	arr	%t249
	add r6,r4,r5                                      	@IRInst:add	%t252	arr	%t249
	str r6,[fp,#136]                                  	@IRInst:add	%t252	arr	%t249
	ldr r5,[fp,#136]                                  	@IRInst:assign	%t252	%t253
	ldr r4,[fp,#140]                                  	@IRInst:assign	%t252	%t253
	str r4,[r5]                                       	@IRInst:assign	%t252	%t253
.L87:
.L84:
	ldr r4,[fp,#16]                                   	@IRInst:add	%t254	i	1
	mov r5,#1                                         	@IRInst:add	%t254	i	1
	add r6,r4,r5                                      	@IRInst:add	%t254	i	1
	str r6,[fp,#144]                                  	@IRInst:add	%t254	i	1
	ldr r4,[fp,#144]                                  	@IRInst:assign	i	%t254
	str r4,[fp,#16]                                   	@IRInst:assign	i	%t254
	b .L79                                            
.L81:
	ldr r4,.global_8_n                                	@IRInst:sub	%t255	n	stride
	ldr r4,[r4]                                       	@IRInst:sub	%t255	n	stride
	ldr r5,[fp,#8]                                    	@IRInst:sub	%t255	n	stride
	sub r6,r4,r5                                      	@IRInst:sub	%t255	n	stride
	str r6,[fp,#148]                                  	@IRInst:sub	%t255	n	stride
	ldr r4,[fp,#148]                                  	@IRInst:add	%t256	%t255	1
	mov r5,#1                                         	@IRInst:add	%t256	%t255	1
	add r6,r4,r5                                      	@IRInst:add	%t256	%t255	1
	str r6,[fp,#152]                                  	@IRInst:add	%t256	%t255	1
	ldr r4,[fp,#152]                                  	@IRInst:assign	i	%t256
	str r4,[fp,#16]                                   	@IRInst:assign	i	%t256
.L88:
	ldr r4,[fp,#16]                                   	@IRInst:blt	%t257	i	n
	ldr r5,.global_8_n                                	@IRInst:blt	%t257	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t257	i	n
	cmp r4,r5                                         	@IRInst:blt	%t257	i	n
	movlt r6,#1                                       	@IRInst:blt	%t257	i	n
	movge r6,#0                                       	@IRInst:blt	%t257	i	n
	str r6,[fp,#156]                                  	@IRInst:blt	%t257	i	n
	blt .L89                                          
	b .L90                                            
.L89:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t258	i	4
	mov r5,#4                                         	@IRInst:mul	%t258	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t258	i	4
	str r6,[fp,#160]                                  	@IRInst:mul	%t258	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t259	arr	%t258
	ldr r5,[fp,#160]                                  	@IRInst:add	%t259	arr	%t258
	add r6,r4,r5                                      	@IRInst:add	%t259	arr	%t258
	str r6,[fp,#164]                                  	@IRInst:add	%t259	arr	%t258
	ldr r5,[fp,#164]                                  	@IRInst:assign	%t259	0
	mov r4,#0                                         	@IRInst:assign	%t259	0
	str r4,[r5]                                       	@IRInst:assign	%t259	0
	ldr r4,[fp,#16]                                   	@IRInst:add	%t260	i	1
	mov r5,#1                                         	@IRInst:add	%t260	i	1
	add r6,r4,r5                                      	@IRInst:add	%t260	i	1
	str r6,[fp,#168]                                  	@IRInst:add	%t260	i	1
	ldr r4,[fp,#168]                                  	@IRInst:assign	i	%t260
	str r4,[fp,#16]                                   	@IRInst:assign	i	%t260
	b .L88                                            
.L90:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L78                                            
.L78:
	ldr r0,[fp]                                       
	add fp,fp,#172                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_9_n:
        .long   n
.global main
.type main, %function
main:
.L91:
	push {r10,fp,lr}                                  
	sub sp,sp,#724                                    
	add fp,sp,#0                                      
	mov r4,#32                                        	@IRInst:assign	n	32
	ldr r9,.global_9_n                                	@IRInst:assign	n	32
	str r4,[r9]                                       	@IRInst:assign	n	32
	mov r4,#0                                         	@IRInst:mul	%t264	0	4
	mov r5,#4                                         	@IRInst:mul	%t264	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t264	0	4
	str r6,[fp,#260]                                  	@IRInst:mul	%t264	0	4
	add r4,fp,#4                                      	@IRInst:add	%t265	arr	%t264
	ldr r5,[fp,#260]                                  	@IRInst:add	%t265	arr	%t264
	add r6,r4,r5                                      	@IRInst:add	%t265	arr	%t264
	str r6,[fp,#264]                                  	@IRInst:add	%t265	arr	%t264
	ldr r5,[fp,#264]                                  	@IRInst:assign	%t265	7
	mov r4,#7                                         	@IRInst:assign	%t265	7
	str r4,[r5]                                       	@IRInst:assign	%t265	7
	mov r4,#1                                         	@IRInst:mul	%t266	1	4
	mov r5,#4                                         	@IRInst:mul	%t266	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t266	1	4
	str r6,[fp,#268]                                  	@IRInst:mul	%t266	1	4
	add r4,fp,#4                                      	@IRInst:add	%t267	arr	%t266
	ldr r5,[fp,#268]                                  	@IRInst:add	%t267	arr	%t266
	add r6,r4,r5                                      	@IRInst:add	%t267	arr	%t266
	str r6,[fp,#272]                                  	@IRInst:add	%t267	arr	%t266
	ldr r5,[fp,#272]                                  	@IRInst:assign	%t267	23
	mov r4,#23                                        	@IRInst:assign	%t267	23
	str r4,[r5]                                       	@IRInst:assign	%t267	23
	mov r4,#2                                         	@IRInst:mul	%t268	2	4
	mov r5,#4                                         	@IRInst:mul	%t268	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t268	2	4
	str r6,[fp,#276]                                  	@IRInst:mul	%t268	2	4
	add r4,fp,#4                                      	@IRInst:add	%t269	arr	%t268
	ldr r5,[fp,#276]                                  	@IRInst:add	%t269	arr	%t268
	add r6,r4,r5                                      	@IRInst:add	%t269	arr	%t268
	str r6,[fp,#280]                                  	@IRInst:add	%t269	arr	%t268
	ldr r5,[fp,#280]                                  	@IRInst:assign	%t269	89
	mov r4,#89                                        	@IRInst:assign	%t269	89
	str r4,[r5]                                       	@IRInst:assign	%t269	89
	mov r4,#3                                         	@IRInst:mul	%t270	3	4
	mov r5,#4                                         	@IRInst:mul	%t270	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t270	3	4
	str r6,[fp,#284]                                  	@IRInst:mul	%t270	3	4
	add r4,fp,#4                                      	@IRInst:add	%t271	arr	%t270
	ldr r5,[fp,#284]                                  	@IRInst:add	%t271	arr	%t270
	add r6,r4,r5                                      	@IRInst:add	%t271	arr	%t270
	str r6,[fp,#288]                                  	@IRInst:add	%t271	arr	%t270
	ldr r5,[fp,#288]                                  	@IRInst:assign	%t271	26
	mov r4,#26                                        	@IRInst:assign	%t271	26
	str r4,[r5]                                       	@IRInst:assign	%t271	26
	mov r4,#4                                         	@IRInst:mul	%t272	4	4
	mov r5,#4                                         	@IRInst:mul	%t272	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t272	4	4
	str r6,[fp,#292]                                  	@IRInst:mul	%t272	4	4
	add r4,fp,#4                                      	@IRInst:add	%t273	arr	%t272
	ldr r5,[fp,#292]                                  	@IRInst:add	%t273	arr	%t272
	add r6,r4,r5                                      	@IRInst:add	%t273	arr	%t272
	str r6,[fp,#296]                                  	@IRInst:add	%t273	arr	%t272
	ldr r5,[fp,#296]                                  	@IRInst:assign	%t273	282
	ldr r4,=282                                       	@IRInst:assign	%t273	282
	str r4,[r5]                                       	@IRInst:assign	%t273	282
	mov r4,#5                                         	@IRInst:mul	%t274	5	4
	mov r5,#4                                         	@IRInst:mul	%t274	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t274	5	4
	str r6,[fp,#300]                                  	@IRInst:mul	%t274	5	4
	add r4,fp,#4                                      	@IRInst:add	%t275	arr	%t274
	ldr r5,[fp,#300]                                  	@IRInst:add	%t275	arr	%t274
	add r6,r4,r5                                      	@IRInst:add	%t275	arr	%t274
	str r6,[fp,#304]                                  	@IRInst:add	%t275	arr	%t274
	ldr r5,[fp,#304]                                  	@IRInst:assign	%t275	254
	mov r4,#254                                       	@IRInst:assign	%t275	254
	str r4,[r5]                                       	@IRInst:assign	%t275	254
	mov r4,#6                                         	@IRInst:mul	%t276	6	4
	mov r5,#4                                         	@IRInst:mul	%t276	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t276	6	4
	str r6,[fp,#308]                                  	@IRInst:mul	%t276	6	4
	add r4,fp,#4                                      	@IRInst:add	%t277	arr	%t276
	ldr r5,[fp,#308]                                  	@IRInst:add	%t277	arr	%t276
	add r6,r4,r5                                      	@IRInst:add	%t277	arr	%t276
	str r6,[fp,#312]                                  	@IRInst:add	%t277	arr	%t276
	ldr r5,[fp,#312]                                  	@IRInst:assign	%t277	27
	mov r4,#27                                        	@IRInst:assign	%t277	27
	str r4,[r5]                                       	@IRInst:assign	%t277	27
	mov r4,#7                                         	@IRInst:mul	%t278	7	4
	mov r5,#4                                         	@IRInst:mul	%t278	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t278	7	4
	str r6,[fp,#316]                                  	@IRInst:mul	%t278	7	4
	add r4,fp,#4                                      	@IRInst:add	%t279	arr	%t278
	ldr r5,[fp,#316]                                  	@IRInst:add	%t279	arr	%t278
	add r6,r4,r5                                      	@IRInst:add	%t279	arr	%t278
	str r6,[fp,#320]                                  	@IRInst:add	%t279	arr	%t278
	ldr r5,[fp,#320]                                  	@IRInst:assign	%t279	5
	mov r4,#5                                         	@IRInst:assign	%t279	5
	str r4,[r5]                                       	@IRInst:assign	%t279	5
	mov r4,#8                                         	@IRInst:mul	%t280	8	4
	mov r5,#4                                         	@IRInst:mul	%t280	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t280	8	4
	str r6,[fp,#324]                                  	@IRInst:mul	%t280	8	4
	add r4,fp,#4                                      	@IRInst:add	%t281	arr	%t280
	ldr r5,[fp,#324]                                  	@IRInst:add	%t281	arr	%t280
	add r6,r4,r5                                      	@IRInst:add	%t281	arr	%t280
	str r6,[fp,#328]                                  	@IRInst:add	%t281	arr	%t280
	ldr r5,[fp,#328]                                  	@IRInst:assign	%t281	83
	mov r4,#83                                        	@IRInst:assign	%t281	83
	str r4,[r5]                                       	@IRInst:assign	%t281	83
	mov r4,#9                                         	@IRInst:mul	%t282	9	4
	mov r5,#4                                         	@IRInst:mul	%t282	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t282	9	4
	str r6,[fp,#332]                                  	@IRInst:mul	%t282	9	4
	add r4,fp,#4                                      	@IRInst:add	%t283	arr	%t282
	ldr r5,[fp,#332]                                  	@IRInst:add	%t283	arr	%t282
	add r6,r4,r5                                      	@IRInst:add	%t283	arr	%t282
	str r6,[fp,#336]                                  	@IRInst:add	%t283	arr	%t282
	ldr r5,[fp,#336]                                  	@IRInst:assign	%t283	273
	ldr r4,=273                                       	@IRInst:assign	%t283	273
	str r4,[r5]                                       	@IRInst:assign	%t283	273
	mov r4,#10                                        	@IRInst:mul	%t284	10	4
	mov r5,#4                                         	@IRInst:mul	%t284	10	4
	mul r6,r4,r5                                      	@IRInst:mul	%t284	10	4
	str r6,[fp,#340]                                  	@IRInst:mul	%t284	10	4
	add r4,fp,#4                                      	@IRInst:add	%t285	arr	%t284
	ldr r5,[fp,#340]                                  	@IRInst:add	%t285	arr	%t284
	add r6,r4,r5                                      	@IRInst:add	%t285	arr	%t284
	str r6,[fp,#344]                                  	@IRInst:add	%t285	arr	%t284
	ldr r5,[fp,#344]                                  	@IRInst:assign	%t285	574
	ldr r4,=574                                       	@IRInst:assign	%t285	574
	str r4,[r5]                                       	@IRInst:assign	%t285	574
	mov r4,#11                                        	@IRInst:mul	%t286	11	4
	mov r5,#4                                         	@IRInst:mul	%t286	11	4
	mul r6,r4,r5                                      	@IRInst:mul	%t286	11	4
	str r6,[fp,#348]                                  	@IRInst:mul	%t286	11	4
	add r4,fp,#4                                      	@IRInst:add	%t287	arr	%t286
	ldr r5,[fp,#348]                                  	@IRInst:add	%t287	arr	%t286
	add r6,r4,r5                                      	@IRInst:add	%t287	arr	%t286
	str r6,[fp,#352]                                  	@IRInst:add	%t287	arr	%t286
	ldr r5,[fp,#352]                                  	@IRInst:assign	%t287	905
	ldr r4,=905                                       	@IRInst:assign	%t287	905
	str r4,[r5]                                       	@IRInst:assign	%t287	905
	mov r4,#12                                        	@IRInst:mul	%t288	12	4
	mov r5,#4                                         	@IRInst:mul	%t288	12	4
	mul r6,r4,r5                                      	@IRInst:mul	%t288	12	4
	str r6,[fp,#356]                                  	@IRInst:mul	%t288	12	4
	add r4,fp,#4                                      	@IRInst:add	%t289	arr	%t288
	ldr r5,[fp,#356]                                  	@IRInst:add	%t289	arr	%t288
	add r6,r4,r5                                      	@IRInst:add	%t289	arr	%t288
	str r6,[fp,#360]                                  	@IRInst:add	%t289	arr	%t288
	ldr r5,[fp,#360]                                  	@IRInst:assign	%t289	354
	ldr r4,=354                                       	@IRInst:assign	%t289	354
	str r4,[r5]                                       	@IRInst:assign	%t289	354
	mov r4,#13                                        	@IRInst:mul	%t290	13	4
	mov r5,#4                                         	@IRInst:mul	%t290	13	4
	mul r6,r4,r5                                      	@IRInst:mul	%t290	13	4
	str r6,[fp,#364]                                  	@IRInst:mul	%t290	13	4
	add r4,fp,#4                                      	@IRInst:add	%t291	arr	%t290
	ldr r5,[fp,#364]                                  	@IRInst:add	%t291	arr	%t290
	add r6,r4,r5                                      	@IRInst:add	%t291	arr	%t290
	str r6,[fp,#368]                                  	@IRInst:add	%t291	arr	%t290
	ldr r5,[fp,#368]                                  	@IRInst:assign	%t291	657
	ldr r4,=657                                       	@IRInst:assign	%t291	657
	str r4,[r5]                                       	@IRInst:assign	%t291	657
	mov r4,#14                                        	@IRInst:mul	%t292	14	4
	mov r5,#4                                         	@IRInst:mul	%t292	14	4
	mul r6,r4,r5                                      	@IRInst:mul	%t292	14	4
	str r6,[fp,#372]                                  	@IRInst:mul	%t292	14	4
	add r4,fp,#4                                      	@IRInst:add	%t293	arr	%t292
	ldr r5,[fp,#372]                                  	@IRInst:add	%t293	arr	%t292
	add r6,r4,r5                                      	@IRInst:add	%t293	arr	%t292
	str r6,[fp,#376]                                  	@IRInst:add	%t293	arr	%t292
	ldr r5,[fp,#376]                                  	@IRInst:assign	%t293	935
	ldr r4,=935                                       	@IRInst:assign	%t293	935
	str r4,[r5]                                       	@IRInst:assign	%t293	935
	mov r4,#15                                        	@IRInst:mul	%t294	15	4
	mov r5,#4                                         	@IRInst:mul	%t294	15	4
	mul r6,r4,r5                                      	@IRInst:mul	%t294	15	4
	str r6,[fp,#380]                                  	@IRInst:mul	%t294	15	4
	add r4,fp,#4                                      	@IRInst:add	%t295	arr	%t294
	ldr r5,[fp,#380]                                  	@IRInst:add	%t295	arr	%t294
	add r6,r4,r5                                      	@IRInst:add	%t295	arr	%t294
	str r6,[fp,#384]                                  	@IRInst:add	%t295	arr	%t294
	ldr r5,[fp,#384]                                  	@IRInst:assign	%t295	264
	mov r4,#264                                       	@IRInst:assign	%t295	264
	str r4,[r5]                                       	@IRInst:assign	%t295	264
	mov r4,#16                                        	@IRInst:mul	%t296	16	4
	mov r5,#4                                         	@IRInst:mul	%t296	16	4
	mul r6,r4,r5                                      	@IRInst:mul	%t296	16	4
	str r6,[fp,#388]                                  	@IRInst:mul	%t296	16	4
	add r4,fp,#4                                      	@IRInst:add	%t297	arr	%t296
	ldr r5,[fp,#388]                                  	@IRInst:add	%t297	arr	%t296
	add r6,r4,r5                                      	@IRInst:add	%t297	arr	%t296
	str r6,[fp,#392]                                  	@IRInst:add	%t297	arr	%t296
	ldr r5,[fp,#392]                                  	@IRInst:assign	%t297	639
	ldr r4,=639                                       	@IRInst:assign	%t297	639
	str r4,[r5]                                       	@IRInst:assign	%t297	639
	mov r4,#17                                        	@IRInst:mul	%t298	17	4
	mov r5,#4                                         	@IRInst:mul	%t298	17	4
	mul r6,r4,r5                                      	@IRInst:mul	%t298	17	4
	str r6,[fp,#396]                                  	@IRInst:mul	%t298	17	4
	add r4,fp,#4                                      	@IRInst:add	%t299	arr	%t298
	ldr r5,[fp,#396]                                  	@IRInst:add	%t299	arr	%t298
	add r6,r4,r5                                      	@IRInst:add	%t299	arr	%t298
	str r6,[fp,#400]                                  	@IRInst:add	%t299	arr	%t298
	ldr r5,[fp,#400]                                  	@IRInst:assign	%t299	459
	ldr r4,=459                                       	@IRInst:assign	%t299	459
	str r4,[r5]                                       	@IRInst:assign	%t299	459
	mov r4,#18                                        	@IRInst:mul	%t300	18	4
	mov r5,#4                                         	@IRInst:mul	%t300	18	4
	mul r6,r4,r5                                      	@IRInst:mul	%t300	18	4
	str r6,[fp,#404]                                  	@IRInst:mul	%t300	18	4
	add r4,fp,#4                                      	@IRInst:add	%t301	arr	%t300
	ldr r5,[fp,#404]                                  	@IRInst:add	%t301	arr	%t300
	add r6,r4,r5                                      	@IRInst:add	%t301	arr	%t300
	str r6,[fp,#408]                                  	@IRInst:add	%t301	arr	%t300
	ldr r5,[fp,#408]                                  	@IRInst:assign	%t301	29
	mov r4,#29                                        	@IRInst:assign	%t301	29
	str r4,[r5]                                       	@IRInst:assign	%t301	29
	mov r4,#19                                        	@IRInst:mul	%t302	19	4
	mov r5,#4                                         	@IRInst:mul	%t302	19	4
	mul r6,r4,r5                                      	@IRInst:mul	%t302	19	4
	str r6,[fp,#412]                                  	@IRInst:mul	%t302	19	4
	add r4,fp,#4                                      	@IRInst:add	%t303	arr	%t302
	ldr r5,[fp,#412]                                  	@IRInst:add	%t303	arr	%t302
	add r6,r4,r5                                      	@IRInst:add	%t303	arr	%t302
	str r6,[fp,#416]                                  	@IRInst:add	%t303	arr	%t302
	ldr r5,[fp,#416]                                  	@IRInst:assign	%t303	68
	mov r4,#68                                        	@IRInst:assign	%t303	68
	str r4,[r5]                                       	@IRInst:assign	%t303	68
	mov r4,#20                                        	@IRInst:mul	%t304	20	4
	mov r5,#4                                         	@IRInst:mul	%t304	20	4
	mul r6,r4,r5                                      	@IRInst:mul	%t304	20	4
	str r6,[fp,#420]                                  	@IRInst:mul	%t304	20	4
	add r4,fp,#4                                      	@IRInst:add	%t305	arr	%t304
	ldr r5,[fp,#420]                                  	@IRInst:add	%t305	arr	%t304
	add r6,r4,r5                                      	@IRInst:add	%t305	arr	%t304
	str r6,[fp,#424]                                  	@IRInst:add	%t305	arr	%t304
	ldr r5,[fp,#424]                                  	@IRInst:assign	%t305	929
	ldr r4,=929                                       	@IRInst:assign	%t305	929
	str r4,[r5]                                       	@IRInst:assign	%t305	929
	mov r4,#21                                        	@IRInst:mul	%t306	21	4
	mov r5,#4                                         	@IRInst:mul	%t306	21	4
	mul r6,r4,r5                                      	@IRInst:mul	%t306	21	4
	str r6,[fp,#428]                                  	@IRInst:mul	%t306	21	4
	add r4,fp,#4                                      	@IRInst:add	%t307	arr	%t306
	ldr r5,[fp,#428]                                  	@IRInst:add	%t307	arr	%t306
	add r6,r4,r5                                      	@IRInst:add	%t307	arr	%t306
	str r6,[fp,#432]                                  	@IRInst:add	%t307	arr	%t306
	ldr r5,[fp,#432]                                  	@IRInst:assign	%t307	756
	mov r4,#756                                       	@IRInst:assign	%t307	756
	str r4,[r5]                                       	@IRInst:assign	%t307	756
	mov r4,#22                                        	@IRInst:mul	%t308	22	4
	mov r5,#4                                         	@IRInst:mul	%t308	22	4
	mul r6,r4,r5                                      	@IRInst:mul	%t308	22	4
	str r6,[fp,#436]                                  	@IRInst:mul	%t308	22	4
	add r4,fp,#4                                      	@IRInst:add	%t309	arr	%t308
	ldr r5,[fp,#436]                                  	@IRInst:add	%t309	arr	%t308
	add r6,r4,r5                                      	@IRInst:add	%t309	arr	%t308
	str r6,[fp,#440]                                  	@IRInst:add	%t309	arr	%t308
	ldr r5,[fp,#440]                                  	@IRInst:assign	%t309	452
	mov r4,#452                                       	@IRInst:assign	%t309	452
	str r4,[r5]                                       	@IRInst:assign	%t309	452
	mov r4,#23                                        	@IRInst:mul	%t310	23	4
	mov r5,#4                                         	@IRInst:mul	%t310	23	4
	mul r6,r4,r5                                      	@IRInst:mul	%t310	23	4
	str r6,[fp,#444]                                  	@IRInst:mul	%t310	23	4
	add r4,fp,#4                                      	@IRInst:add	%t311	arr	%t310
	ldr r5,[fp,#444]                                  	@IRInst:add	%t311	arr	%t310
	add r6,r4,r5                                      	@IRInst:add	%t311	arr	%t310
	str r6,[fp,#448]                                  	@IRInst:add	%t311	arr	%t310
	ldr r5,[fp,#448]                                  	@IRInst:assign	%t311	279
	ldr r4,=279                                       	@IRInst:assign	%t311	279
	str r4,[r5]                                       	@IRInst:assign	%t311	279
	mov r4,#24                                        	@IRInst:mul	%t312	24	4
	mov r5,#4                                         	@IRInst:mul	%t312	24	4
	mul r6,r4,r5                                      	@IRInst:mul	%t312	24	4
	str r6,[fp,#452]                                  	@IRInst:mul	%t312	24	4
	add r4,fp,#4                                      	@IRInst:add	%t313	arr	%t312
	ldr r5,[fp,#452]                                  	@IRInst:add	%t313	arr	%t312
	add r6,r4,r5                                      	@IRInst:add	%t313	arr	%t312
	str r6,[fp,#456]                                  	@IRInst:add	%t313	arr	%t312
	ldr r5,[fp,#456]                                  	@IRInst:assign	%t313	58
	mov r4,#58                                        	@IRInst:assign	%t313	58
	str r4,[r5]                                       	@IRInst:assign	%t313	58
	mov r4,#25                                        	@IRInst:mul	%t314	25	4
	mov r5,#4                                         	@IRInst:mul	%t314	25	4
	mul r6,r4,r5                                      	@IRInst:mul	%t314	25	4
	str r6,[fp,#460]                                  	@IRInst:mul	%t314	25	4
	add r4,fp,#4                                      	@IRInst:add	%t315	arr	%t314
	ldr r5,[fp,#460]                                  	@IRInst:add	%t315	arr	%t314
	add r6,r4,r5                                      	@IRInst:add	%t315	arr	%t314
	str r6,[fp,#464]                                  	@IRInst:add	%t315	arr	%t314
	ldr r5,[fp,#464]                                  	@IRInst:assign	%t315	87
	mov r4,#87                                        	@IRInst:assign	%t315	87
	str r4,[r5]                                       	@IRInst:assign	%t315	87
	mov r4,#26                                        	@IRInst:mul	%t316	26	4
	mov r5,#4                                         	@IRInst:mul	%t316	26	4
	mul r6,r4,r5                                      	@IRInst:mul	%t316	26	4
	str r6,[fp,#468]                                  	@IRInst:mul	%t316	26	4
	add r4,fp,#4                                      	@IRInst:add	%t317	arr	%t316
	ldr r5,[fp,#468]                                  	@IRInst:add	%t317	arr	%t316
	add r6,r4,r5                                      	@IRInst:add	%t317	arr	%t316
	str r6,[fp,#472]                                  	@IRInst:add	%t317	arr	%t316
	ldr r5,[fp,#472]                                  	@IRInst:assign	%t317	96
	mov r4,#96                                        	@IRInst:assign	%t317	96
	str r4,[r5]                                       	@IRInst:assign	%t317	96
	mov r4,#27                                        	@IRInst:mul	%t318	27	4
	mov r5,#4                                         	@IRInst:mul	%t318	27	4
	mul r6,r4,r5                                      	@IRInst:mul	%t318	27	4
	str r6,[fp,#476]                                  	@IRInst:mul	%t318	27	4
	add r4,fp,#4                                      	@IRInst:add	%t319	arr	%t318
	ldr r5,[fp,#476]                                  	@IRInst:add	%t319	arr	%t318
	add r6,r4,r5                                      	@IRInst:add	%t319	arr	%t318
	str r6,[fp,#480]                                  	@IRInst:add	%t319	arr	%t318
	ldr r5,[fp,#480]                                  	@IRInst:assign	%t319	36
	mov r4,#36                                        	@IRInst:assign	%t319	36
	str r4,[r5]                                       	@IRInst:assign	%t319	36
	mov r4,#28                                        	@IRInst:mul	%t320	28	4
	mov r5,#4                                         	@IRInst:mul	%t320	28	4
	mul r6,r4,r5                                      	@IRInst:mul	%t320	28	4
	str r6,[fp,#484]                                  	@IRInst:mul	%t320	28	4
	add r4,fp,#4                                      	@IRInst:add	%t321	arr	%t320
	ldr r5,[fp,#484]                                  	@IRInst:add	%t321	arr	%t320
	add r6,r4,r5                                      	@IRInst:add	%t321	arr	%t320
	str r6,[fp,#488]                                  	@IRInst:add	%t321	arr	%t320
	ldr r5,[fp,#488]                                  	@IRInst:assign	%t321	39
	mov r4,#39                                        	@IRInst:assign	%t321	39
	str r4,[r5]                                       	@IRInst:assign	%t321	39
	mov r4,#29                                        	@IRInst:mul	%t322	29	4
	mov r5,#4                                         	@IRInst:mul	%t322	29	4
	mul r6,r4,r5                                      	@IRInst:mul	%t322	29	4
	str r6,[fp,#492]                                  	@IRInst:mul	%t322	29	4
	add r4,fp,#4                                      	@IRInst:add	%t323	arr	%t322
	ldr r5,[fp,#492]                                  	@IRInst:add	%t323	arr	%t322
	add r6,r4,r5                                      	@IRInst:add	%t323	arr	%t322
	str r6,[fp,#496]                                  	@IRInst:add	%t323	arr	%t322
	ldr r5,[fp,#496]                                  	@IRInst:assign	%t323	28
	mov r4,#28                                        	@IRInst:assign	%t323	28
	str r4,[r5]                                       	@IRInst:assign	%t323	28
	mov r4,#30                                        	@IRInst:mul	%t324	30	4
	mov r5,#4                                         	@IRInst:mul	%t324	30	4
	mul r6,r4,r5                                      	@IRInst:mul	%t324	30	4
	str r6,[fp,#500]                                  	@IRInst:mul	%t324	30	4
	add r4,fp,#4                                      	@IRInst:add	%t325	arr	%t324
	ldr r5,[fp,#500]                                  	@IRInst:add	%t325	arr	%t324
	add r6,r4,r5                                      	@IRInst:add	%t325	arr	%t324
	str r6,[fp,#504]                                  	@IRInst:add	%t325	arr	%t324
	ldr r5,[fp,#504]                                  	@IRInst:assign	%t325	1
	mov r4,#1                                         	@IRInst:assign	%t325	1
	str r4,[r5]                                       	@IRInst:assign	%t325	1
	mov r4,#31                                        	@IRInst:mul	%t326	31	4
	mov r5,#4                                         	@IRInst:mul	%t326	31	4
	mul r6,r4,r5                                      	@IRInst:mul	%t326	31	4
	str r6,[fp,#508]                                  	@IRInst:mul	%t326	31	4
	add r4,fp,#4                                      	@IRInst:add	%t327	arr	%t326
	ldr r5,[fp,#508]                                  	@IRInst:add	%t327	arr	%t326
	add r6,r4,r5                                      	@IRInst:add	%t327	arr	%t326
	str r6,[fp,#512]                                  	@IRInst:add	%t327	arr	%t326
	ldr r5,[fp,#512]                                  	@IRInst:assign	%t327	290
	ldr r4,=290                                       	@IRInst:assign	%t327	290
	str r4,[r5]                                       	@IRInst:assign	%t327	290
	add r0,fp,#4                                      	@IRInst:assign	r0	arr
	add r1,fp,#132                                    	@IRInst:assign	r1	result
	bl arrCopy                                        
	str r0,[fp,#520]                                  	@IRInst:assign	%t329	r0
	ldr r4,[fp,#520]                                  	@IRInst:assign	t	%t329
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t329
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	bl revert                                         
	str r0,[fp,#524]                                  	@IRInst:assign	%t330	r0
	ldr r4,[fp,#524]                                  	@IRInst:assign	t	%t330
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t330
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#528]                                  	@IRInst:assign	i	0
.L93:
	ldr r4,[fp,#528]                                  	@IRInst:blt	%t332	i	32
	mov r5,#32                                        	@IRInst:blt	%t332	i	32
	cmp r4,r5                                         	@IRInst:blt	%t332	i	32
	movlt r6,#1                                       	@IRInst:blt	%t332	i	32
	movge r6,#0                                       	@IRInst:blt	%t332	i	32
	str r6,[fp,#532]                                  	@IRInst:blt	%t332	i	32
	blt .L94                                          
	b .L95                                            
.L94:
	ldr r4,[fp,#528]                                  	@IRInst:mul	%t333	i	4
	mov r5,#4                                         	@IRInst:mul	%t333	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t333	i	4
	str r6,[fp,#536]                                  	@IRInst:mul	%t333	i	4
	add r4,fp,#132                                    	@IRInst:add	%t334	result	%t333
	ldr r5,[fp,#536]                                  	@IRInst:add	%t334	result	%t333
	add r6,r4,r5                                      	@IRInst:add	%t334	result	%t333
	str r6,[fp,#540]                                  	@IRInst:add	%t334	result	%t333
	ldr r4,[fp,#540]                                  	@IRInst:assign	%t335	%t334
	ldr r4,[r4]                                       	@IRInst:assign	%t335	%t334
	str r4,[fp,#544]                                  	@IRInst:assign	%t335	%t334
	ldr r4,[fp,#544]                                  	@IRInst:assign	t	%t335
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t335
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	ldr r4,[fp,#528]                                  	@IRInst:add	%t336	i	1
	mov r5,#1                                         	@IRInst:add	%t336	i	1
	add r6,r4,r5                                      	@IRInst:add	%t336	i	1
	str r6,[fp,#548]                                  	@IRInst:add	%t336	i	1
	ldr r4,[fp,#548]                                  	@IRInst:assign	i	%t336
	str r4,[fp,#528]                                  	@IRInst:assign	i	%t336
	b .L93                                            
.L95:
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	bl bubblesort                                     
	str r0,[fp,#552]                                  	@IRInst:assign	%t337	r0
	ldr r4,[fp,#552]                                  	@IRInst:assign	t	%t337
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t337
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#528]                                  	@IRInst:assign	i	0
.L96:
	ldr r4,[fp,#528]                                  	@IRInst:blt	%t338	i	32
	mov r5,#32                                        	@IRInst:blt	%t338	i	32
	cmp r4,r5                                         	@IRInst:blt	%t338	i	32
	movlt r6,#1                                       	@IRInst:blt	%t338	i	32
	movge r6,#0                                       	@IRInst:blt	%t338	i	32
	str r6,[fp,#556]                                  	@IRInst:blt	%t338	i	32
	blt .L97                                          
	b .L98                                            
.L97:
	ldr r4,[fp,#528]                                  	@IRInst:mul	%t339	i	4
	mov r5,#4                                         	@IRInst:mul	%t339	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t339	i	4
	str r6,[fp,#560]                                  	@IRInst:mul	%t339	i	4
	add r4,fp,#132                                    	@IRInst:add	%t340	result	%t339
	ldr r5,[fp,#560]                                  	@IRInst:add	%t340	result	%t339
	add r6,r4,r5                                      	@IRInst:add	%t340	result	%t339
	str r6,[fp,#564]                                  	@IRInst:add	%t340	result	%t339
	ldr r4,[fp,#564]                                  	@IRInst:assign	%t341	%t340
	ldr r4,[r4]                                       	@IRInst:assign	%t341	%t340
	str r4,[fp,#568]                                  	@IRInst:assign	%t341	%t340
	ldr r4,[fp,#568]                                  	@IRInst:assign	t	%t341
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t341
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	ldr r4,[fp,#528]                                  	@IRInst:add	%t342	i	1
	mov r5,#1                                         	@IRInst:add	%t342	i	1
	add r6,r4,r5                                      	@IRInst:add	%t342	i	1
	str r6,[fp,#572]                                  	@IRInst:add	%t342	i	1
	ldr r4,[fp,#572]                                  	@IRInst:assign	i	%t342
	str r4,[fp,#528]                                  	@IRInst:assign	i	%t342
	b .L96                                            
.L98:
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	bl getMid                                         
	str r0,[fp,#576]                                  	@IRInst:assign	%t343	r0
	ldr r4,[fp,#576]                                  	@IRInst:assign	t	%t343
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t343
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	bl getMost                                        
	str r0,[fp,#580]                                  	@IRInst:assign	%t344	r0
	ldr r4,[fp,#580]                                  	@IRInst:assign	t	%t344
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t344
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	add r0,fp,#4                                      	@IRInst:assign	r0	arr
	add r1,fp,#132                                    	@IRInst:assign	r1	result
	bl arrCopy                                        
	str r0,[fp,#584]                                  	@IRInst:assign	%t345	r0
	ldr r4,[fp,#584]                                  	@IRInst:assign	t	%t345
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t345
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	bl bubblesort                                     
	str r0,[fp,#588]                                  	@IRInst:assign	%t346	r0
	ldr r4,[fp,#588]                                  	@IRInst:assign	t	%t346
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t346
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#528]                                  	@IRInst:assign	i	0
.L99:
	ldr r4,[fp,#528]                                  	@IRInst:blt	%t347	i	32
	mov r5,#32                                        	@IRInst:blt	%t347	i	32
	cmp r4,r5                                         	@IRInst:blt	%t347	i	32
	movlt r6,#1                                       	@IRInst:blt	%t347	i	32
	movge r6,#0                                       	@IRInst:blt	%t347	i	32
	str r6,[fp,#592]                                  	@IRInst:blt	%t347	i	32
	blt .L100                                         
	b .L101                                           
.L100:
	ldr r4,[fp,#528]                                  	@IRInst:mul	%t348	i	4
	mov r5,#4                                         	@IRInst:mul	%t348	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t348	i	4
	str r6,[fp,#596]                                  	@IRInst:mul	%t348	i	4
	add r4,fp,#132                                    	@IRInst:add	%t349	result	%t348
	ldr r5,[fp,#596]                                  	@IRInst:add	%t349	result	%t348
	add r6,r4,r5                                      	@IRInst:add	%t349	result	%t348
	str r6,[fp,#600]                                  	@IRInst:add	%t349	result	%t348
	ldr r4,[fp,#600]                                  	@IRInst:assign	%t350	%t349
	ldr r4,[r4]                                       	@IRInst:assign	%t350	%t349
	str r4,[fp,#604]                                  	@IRInst:assign	%t350	%t349
	ldr r4,[fp,#604]                                  	@IRInst:assign	t	%t350
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t350
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	ldr r4,[fp,#528]                                  	@IRInst:add	%t351	i	1
	mov r5,#1                                         	@IRInst:add	%t351	i	1
	add r6,r4,r5                                      	@IRInst:add	%t351	i	1
	str r6,[fp,#608]                                  	@IRInst:add	%t351	i	1
	ldr r4,[fp,#608]                                  	@IRInst:assign	i	%t351
	str r4,[fp,#528]                                  	@IRInst:assign	i	%t351
	b .L99                                            
.L101:
	add r0,fp,#4                                      	@IRInst:assign	r0	arr
	add r1,fp,#132                                    	@IRInst:assign	r1	result
	bl arrCopy                                        
	str r0,[fp,#612]                                  	@IRInst:assign	%t352	r0
	ldr r4,[fp,#612]                                  	@IRInst:assign	t	%t352
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t352
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	bl insertsort                                     
	str r0,[fp,#616]                                  	@IRInst:assign	%t353	r0
	ldr r4,[fp,#616]                                  	@IRInst:assign	t	%t353
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t353
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#528]                                  	@IRInst:assign	i	0
.L102:
	ldr r4,[fp,#528]                                  	@IRInst:blt	%t354	i	32
	mov r5,#32                                        	@IRInst:blt	%t354	i	32
	cmp r4,r5                                         	@IRInst:blt	%t354	i	32
	movlt r6,#1                                       	@IRInst:blt	%t354	i	32
	movge r6,#0                                       	@IRInst:blt	%t354	i	32
	str r6,[fp,#620]                                  	@IRInst:blt	%t354	i	32
	blt .L103                                         
	b .L104                                           
.L103:
	ldr r4,[fp,#528]                                  	@IRInst:mul	%t355	i	4
	mov r5,#4                                         	@IRInst:mul	%t355	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t355	i	4
	str r6,[fp,#624]                                  	@IRInst:mul	%t355	i	4
	add r4,fp,#132                                    	@IRInst:add	%t356	result	%t355
	ldr r5,[fp,#624]                                  	@IRInst:add	%t356	result	%t355
	add r6,r4,r5                                      	@IRInst:add	%t356	result	%t355
	str r6,[fp,#628]                                  	@IRInst:add	%t356	result	%t355
	ldr r4,[fp,#628]                                  	@IRInst:assign	%t357	%t356
	ldr r4,[r4]                                       	@IRInst:assign	%t357	%t356
	str r4,[fp,#632]                                  	@IRInst:assign	%t357	%t356
	ldr r4,[fp,#632]                                  	@IRInst:assign	t	%t357
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t357
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	ldr r4,[fp,#528]                                  	@IRInst:add	%t358	i	1
	mov r5,#1                                         	@IRInst:add	%t358	i	1
	add r6,r4,r5                                      	@IRInst:add	%t358	i	1
	str r6,[fp,#636]                                  	@IRInst:add	%t358	i	1
	ldr r4,[fp,#636]                                  	@IRInst:assign	i	%t358
	str r4,[fp,#528]                                  	@IRInst:assign	i	%t358
	b .L102                                           
.L104:
	add r0,fp,#4                                      	@IRInst:assign	r0	arr
	add r1,fp,#132                                    	@IRInst:assign	r1	result
	bl arrCopy                                        
	str r0,[fp,#640]                                  	@IRInst:assign	%t359	r0
	ldr r4,[fp,#640]                                  	@IRInst:assign	t	%t359
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t359
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#528]                                  	@IRInst:assign	i	0
	mov r4,#31                                        	@IRInst:assign	t	31
	str r4,[fp,#516]                                  	@IRInst:assign	t	31
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	ldr r1,[fp,#528]                                  	@IRInst:assign	r1	i
	ldr r2,[fp,#516]                                  	@IRInst:assign	r2	t
	bl QuickSort                                      
	str r0,[fp,#644]                                  	@IRInst:assign	%t360	r0
	ldr r4,[fp,#644]                                  	@IRInst:assign	t	%t360
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t360
.L105:
	ldr r4,[fp,#528]                                  	@IRInst:blt	%t361	i	32
	mov r5,#32                                        	@IRInst:blt	%t361	i	32
	cmp r4,r5                                         	@IRInst:blt	%t361	i	32
	movlt r6,#1                                       	@IRInst:blt	%t361	i	32
	movge r6,#0                                       	@IRInst:blt	%t361	i	32
	str r6,[fp,#648]                                  	@IRInst:blt	%t361	i	32
	blt .L106                                         
	b .L107                                           
.L106:
	ldr r4,[fp,#528]                                  	@IRInst:mul	%t362	i	4
	mov r5,#4                                         	@IRInst:mul	%t362	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t362	i	4
	str r6,[fp,#652]                                  	@IRInst:mul	%t362	i	4
	add r4,fp,#132                                    	@IRInst:add	%t363	result	%t362
	ldr r5,[fp,#652]                                  	@IRInst:add	%t363	result	%t362
	add r6,r4,r5                                      	@IRInst:add	%t363	result	%t362
	str r6,[fp,#656]                                  	@IRInst:add	%t363	result	%t362
	ldr r4,[fp,#656]                                  	@IRInst:assign	%t364	%t363
	ldr r4,[r4]                                       	@IRInst:assign	%t364	%t363
	str r4,[fp,#660]                                  	@IRInst:assign	%t364	%t363
	ldr r4,[fp,#660]                                  	@IRInst:assign	t	%t364
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t364
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	ldr r4,[fp,#528]                                  	@IRInst:add	%t365	i	1
	mov r5,#1                                         	@IRInst:add	%t365	i	1
	add r6,r4,r5                                      	@IRInst:add	%t365	i	1
	str r6,[fp,#664]                                  	@IRInst:add	%t365	i	1
	ldr r4,[fp,#664]                                  	@IRInst:assign	i	%t365
	str r4,[fp,#528]                                  	@IRInst:assign	i	%t365
	b .L105                                           
.L107:
	add r0,fp,#4                                      	@IRInst:assign	r0	arr
	add r1,fp,#132                                    	@IRInst:assign	r1	result
	bl arrCopy                                        
	str r0,[fp,#668]                                  	@IRInst:assign	%t366	r0
	ldr r4,[fp,#668]                                  	@IRInst:assign	t	%t366
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t366
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	mov r1,#4                                         	@IRInst:assign	r1	4
	bl calSum                                         
	str r0,[fp,#672]                                  	@IRInst:assign	%t367	r0
	ldr r4,[fp,#672]                                  	@IRInst:assign	t	%t367
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t367
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#528]                                  	@IRInst:assign	i	0
.L108:
	ldr r4,[fp,#528]                                  	@IRInst:blt	%t368	i	32
	mov r5,#32                                        	@IRInst:blt	%t368	i	32
	cmp r4,r5                                         	@IRInst:blt	%t368	i	32
	movlt r6,#1                                       	@IRInst:blt	%t368	i	32
	movge r6,#0                                       	@IRInst:blt	%t368	i	32
	str r6,[fp,#676]                                  	@IRInst:blt	%t368	i	32
	blt .L109                                         
	b .L110                                           
.L109:
	ldr r4,[fp,#528]                                  	@IRInst:mul	%t369	i	4
	mov r5,#4                                         	@IRInst:mul	%t369	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t369	i	4
	str r6,[fp,#680]                                  	@IRInst:mul	%t369	i	4
	add r4,fp,#132                                    	@IRInst:add	%t370	result	%t369
	ldr r5,[fp,#680]                                  	@IRInst:add	%t370	result	%t369
	add r6,r4,r5                                      	@IRInst:add	%t370	result	%t369
	str r6,[fp,#684]                                  	@IRInst:add	%t370	result	%t369
	ldr r4,[fp,#684]                                  	@IRInst:assign	%t371	%t370
	ldr r4,[r4]                                       	@IRInst:assign	%t371	%t370
	str r4,[fp,#688]                                  	@IRInst:assign	%t371	%t370
	ldr r4,[fp,#688]                                  	@IRInst:assign	t	%t371
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t371
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	ldr r4,[fp,#528]                                  	@IRInst:add	%t372	i	1
	mov r5,#1                                         	@IRInst:add	%t372	i	1
	add r6,r4,r5                                      	@IRInst:add	%t372	i	1
	str r6,[fp,#692]                                  	@IRInst:add	%t372	i	1
	ldr r4,[fp,#692]                                  	@IRInst:assign	i	%t372
	str r4,[fp,#528]                                  	@IRInst:assign	i	%t372
	b .L108                                           
.L110:
	add r0,fp,#4                                      	@IRInst:assign	r0	arr
	add r1,fp,#132                                    	@IRInst:assign	r1	result
	bl arrCopy                                        
	str r0,[fp,#696]                                  	@IRInst:assign	%t373	r0
	ldr r4,[fp,#696]                                  	@IRInst:assign	t	%t373
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t373
	add r0,fp,#132                                    	@IRInst:assign	r0	result
	mov r1,#3                                         	@IRInst:assign	r1	3
	bl avgPooling                                     
	str r0,[fp,#700]                                  	@IRInst:assign	%t374	r0
	ldr r4,[fp,#700]                                  	@IRInst:assign	t	%t374
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t374
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#528]                                  	@IRInst:assign	i	0
.L111:
	ldr r4,[fp,#528]                                  	@IRInst:blt	%t375	i	32
	mov r5,#32                                        	@IRInst:blt	%t375	i	32
	cmp r4,r5                                         	@IRInst:blt	%t375	i	32
	movlt r6,#1                                       	@IRInst:blt	%t375	i	32
	movge r6,#0                                       	@IRInst:blt	%t375	i	32
	str r6,[fp,#704]                                  	@IRInst:blt	%t375	i	32
	blt .L112                                         
	b .L113                                           
.L112:
	ldr r4,[fp,#528]                                  	@IRInst:mul	%t376	i	4
	mov r5,#4                                         	@IRInst:mul	%t376	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t376	i	4
	str r6,[fp,#708]                                  	@IRInst:mul	%t376	i	4
	add r4,fp,#132                                    	@IRInst:add	%t377	result	%t376
	ldr r5,[fp,#708]                                  	@IRInst:add	%t377	result	%t376
	add r6,r4,r5                                      	@IRInst:add	%t377	result	%t376
	str r6,[fp,#712]                                  	@IRInst:add	%t377	result	%t376
	ldr r4,[fp,#712]                                  	@IRInst:assign	%t378	%t377
	ldr r4,[r4]                                       	@IRInst:assign	%t378	%t377
	str r4,[fp,#716]                                  	@IRInst:assign	%t378	%t377
	ldr r4,[fp,#716]                                  	@IRInst:assign	t	%t378
	str r4,[fp,#516]                                  	@IRInst:assign	t	%t378
	ldr r0,[fp,#516]                                  	@IRInst:assign	r0	t
	bl putint                                         
	ldr r4,[fp,#528]                                  	@IRInst:add	%t379	i	1
	mov r5,#1                                         	@IRInst:add	%t379	i	1
	add r6,r4,r5                                      	@IRInst:add	%t379	i	1
	str r6,[fp,#720]                                  	@IRInst:add	%t379	i	1
	ldr r4,[fp,#720]                                  	@IRInst:assign	i	%t379
	str r4,[fp,#528]                                  	@IRInst:assign	i	%t379
	b .L111                                           
.L113:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L92                                            
.L92:
	ldr r0,[fp]                                       
	add fp,fp,#724                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
