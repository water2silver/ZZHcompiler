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
.global QuickSort
.type QuickSort, %function
QuickSort:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#184                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	str r1,[fp,#8]                                    	@IRInst:assign	low	r1
	str r2,[fp,#12]                                   	@IRInst:assign	high	r2
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t8	low	high
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t8	low	high
	cmp r4,r5                                         	@IRInst:blt	%t8	low	high
	blt .L3                                           
	b .L4                                             
.L3:
	ldr r4,[fp,#8]                                    	@IRInst:assign	i	low
	str r4,[fp,#20]                                   	@IRInst:assign	i	low
	ldr r4,[fp,#12]                                   	@IRInst:assign	j	high
	str r4,[fp,#24]                                   	@IRInst:assign	j	high
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t12	low	4
	mov r5,#4                                         	@IRInst:mul	%t12	low	4
	mul r6,r4,r5                                      	@IRInst:mul	%t12	low	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t12	low	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t13	arr	%t12
	ldr r5,[fp,#32]                                   	@IRInst:add	%t13	arr	%t12
	add r6,r4,r5                                      	@IRInst:add	%t13	arr	%t12
	str r6,[fp,#36]                                   	@IRInst:add	%t13	arr	%t12
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t14	%t13
	ldr r4,[r4]                                       	@IRInst:assign	%t14	%t13
	str r4,[fp,#40]                                   	@IRInst:assign	%t14	%t13
	ldr r4,[fp,#40]                                   	@IRInst:assign	k	%t14
	str r4,[fp,#28]                                   	@IRInst:assign	k	%t14
.L6:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t15	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t15	i	j
	cmp r4,r5                                         	@IRInst:blt	%t15	i	j
	blt .L7                                           
	b .L8                                             
.L7:
.L9:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t16	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t16	i	j
	cmp r4,r5                                         	@IRInst:blt	%t16	i	j
	blt .L12                                          
	b .L11                                            
.L12:
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t17	j	4
	mov r5,#4                                         	@IRInst:mul	%t17	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	j	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t17	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t18	arr	%t17
	ldr r5,[fp,#52]                                   	@IRInst:add	%t18	arr	%t17
	add r6,r4,r5                                      	@IRInst:add	%t18	arr	%t17
	str r6,[fp,#56]                                   	@IRInst:add	%t18	arr	%t17
	ldr r4,[fp,#56]                                   	@IRInst:assign	%t19	%t18
	ldr r4,[r4]                                       	@IRInst:assign	%t19	%t18
	str r4,[fp,#60]                                   	@IRInst:assign	%t19	%t18
	ldr r4,[fp,#28]                                   	@IRInst:sub	%t20	k	1
	mov r5,#1                                         	@IRInst:sub	%t20	k	1
	sub r6,r4,r5                                      	@IRInst:sub	%t20	k	1
	str r6,[fp,#64]                                   	@IRInst:sub	%t20	k	1
	ldr r4,[fp,#60]                                   	@IRInst:bgt	%t21	%t19	%t20
	ldr r5,[fp,#64]                                   	@IRInst:bgt	%t21	%t19	%t20
	cmp r4,r5                                         	@IRInst:bgt	%t21	%t19	%t20
	bgt .L10                                          
	b .L11                                            
.L10:
	ldr r4,[fp,#24]                                   	@IRInst:sub	%t22	j	1
	mov r5,#1                                         	@IRInst:sub	%t22	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t22	j	1
	str r6,[fp,#72]                                   	@IRInst:sub	%t22	j	1
	ldr r4,[fp,#72]                                   	@IRInst:assign	j	%t22
	str r4,[fp,#24]                                   	@IRInst:assign	j	%t22
	b .L9                                             
.L11:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t23	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t23	i	j
	cmp r4,r5                                         	@IRInst:blt	%t23	i	j
	blt .L13                                          
	b .L14                                            
.L13:
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t26	j	4
	mov r5,#4                                         	@IRInst:mul	%t26	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t26	j	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t26	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t27	arr	%t26
	ldr r5,[fp,#88]                                   	@IRInst:add	%t27	arr	%t26
	add r6,r4,r5                                      	@IRInst:add	%t27	arr	%t26
	str r6,[fp,#92]                                   	@IRInst:add	%t27	arr	%t26
	ldr r4,[fp,#92]                                   	@IRInst:assign	%t28	%t27
	ldr r4,[r4]                                       	@IRInst:assign	%t28	%t27
	str r4,[fp,#96]                                   	@IRInst:assign	%t28	%t27
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t24	i	4
	mov r5,#4                                         	@IRInst:mul	%t24	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t24	i	4
	str r6,[fp,#80]                                   	@IRInst:mul	%t24	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t25	arr	%t24
	ldr r5,[fp,#80]                                   	@IRInst:add	%t25	arr	%t24
	add r6,r4,r5                                      	@IRInst:add	%t25	arr	%t24
	str r6,[fp,#84]                                   	@IRInst:add	%t25	arr	%t24
	ldr r5,[fp,#84]                                   	@IRInst:assign	%t25	%t28
	ldr r4,[fp,#96]                                   	@IRInst:assign	%t25	%t28
	str r4,[r5]                                       	@IRInst:assign	%t25	%t28
	ldr r4,[fp,#20]                                   	@IRInst:add	%t29	i	1
	mov r5,#1                                         	@IRInst:add	%t29	i	1
	add r6,r4,r5                                      	@IRInst:add	%t29	i	1
	str r6,[fp,#100]                                  	@IRInst:add	%t29	i	1
	ldr r4,[fp,#100]                                  	@IRInst:assign	i	%t29
	str r4,[fp,#20]                                   	@IRInst:assign	i	%t29
.L14:
.L15:
.L16:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t30	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t30	i	j
	cmp r4,r5                                         	@IRInst:blt	%t30	i	j
	blt .L19                                          
	b .L18                                            
.L19:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t31	i	4
	mov r5,#4                                         	@IRInst:mul	%t31	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	i	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t31	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t32	arr	%t31
	ldr r5,[fp,#108]                                  	@IRInst:add	%t32	arr	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	arr	%t31
	str r6,[fp,#112]                                  	@IRInst:add	%t32	arr	%t31
	ldr r4,[fp,#112]                                  	@IRInst:assign	%t33	%t32
	ldr r4,[r4]                                       	@IRInst:assign	%t33	%t32
	str r4,[fp,#116]                                  	@IRInst:assign	%t33	%t32
	ldr r4,[fp,#116]                                  	@IRInst:blt	%t34	%t33	k
	ldr r5,[fp,#28]                                   	@IRInst:blt	%t34	%t33	k
	cmp r4,r5                                         	@IRInst:blt	%t34	%t33	k
	blt .L17                                          
	b .L18                                            
.L17:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t35	i	1
	mov r5,#1                                         	@IRInst:add	%t35	i	1
	add r6,r4,r5                                      	@IRInst:add	%t35	i	1
	str r6,[fp,#124]                                  	@IRInst:add	%t35	i	1
	ldr r4,[fp,#124]                                  	@IRInst:assign	i	%t35
	str r4,[fp,#20]                                   	@IRInst:assign	i	%t35
	b .L16                                            
.L18:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t36	i	j
	ldr r5,[fp,#24]                                   	@IRInst:blt	%t36	i	j
	cmp r4,r5                                         	@IRInst:blt	%t36	i	j
	blt .L20                                          
	b .L21                                            
.L20:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t39	i	4
	mov r5,#4                                         	@IRInst:mul	%t39	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t39	i	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t39	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t40	arr	%t39
	ldr r5,[fp,#140]                                  	@IRInst:add	%t40	arr	%t39
	add r6,r4,r5                                      	@IRInst:add	%t40	arr	%t39
	str r6,[fp,#144]                                  	@IRInst:add	%t40	arr	%t39
	ldr r4,[fp,#144]                                  	@IRInst:assign	%t41	%t40
	ldr r4,[r4]                                       	@IRInst:assign	%t41	%t40
	str r4,[fp,#148]                                  	@IRInst:assign	%t41	%t40
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t37	j	4
	mov r5,#4                                         	@IRInst:mul	%t37	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t37	j	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t37	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t38	arr	%t37
	ldr r5,[fp,#132]                                  	@IRInst:add	%t38	arr	%t37
	add r6,r4,r5                                      	@IRInst:add	%t38	arr	%t37
	str r6,[fp,#136]                                  	@IRInst:add	%t38	arr	%t37
	ldr r5,[fp,#136]                                  	@IRInst:assign	%t38	%t41
	ldr r4,[fp,#148]                                  	@IRInst:assign	%t38	%t41
	str r4,[r5]                                       	@IRInst:assign	%t38	%t41
	ldr r4,[fp,#24]                                   	@IRInst:sub	%t42	j	1
	mov r5,#1                                         	@IRInst:sub	%t42	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t42	j	1
	str r6,[fp,#152]                                  	@IRInst:sub	%t42	j	1
	ldr r4,[fp,#152]                                  	@IRInst:assign	j	%t42
	str r4,[fp,#24]                                   	@IRInst:assign	j	%t42
.L21:
.L22:
	b .L6                                             
.L8:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t43	i	4
	mov r5,#4                                         	@IRInst:mul	%t43	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t43	i	4
	str r6,[fp,#156]                                  	@IRInst:mul	%t43	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t44	arr	%t43
	ldr r5,[fp,#156]                                  	@IRInst:add	%t44	arr	%t43
	add r6,r4,r5                                      	@IRInst:add	%t44	arr	%t43
	str r6,[fp,#160]                                  	@IRInst:add	%t44	arr	%t43
	ldr r5,[fp,#160]                                  	@IRInst:assign	%t44	k
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t44	k
	str r4,[r5]                                       	@IRInst:assign	%t44	k
	ldr r4,[fp,#20]                                   	@IRInst:sub	%t46	i	1
	mov r5,#1                                         	@IRInst:sub	%t46	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t46	i	1
	str r6,[fp,#168]                                  	@IRInst:sub	%t46	i	1
	ldr r4,[fp,#168]                                  	@IRInst:assign	tmp	%t46
	str r4,[fp,#164]                                  	@IRInst:assign	tmp	%t46
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	arr
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	low
	ldr r2,[fp,#164]                                  	@IRInst:assign	r2	tmp
	bl QuickSort                                      
	str r0,[fp,#172]                                  	@IRInst:assign	%t47	r0
	ldr r4,[fp,#172]                                  	@IRInst:assign	tmp	%t47
	str r4,[fp,#164]                                  	@IRInst:assign	tmp	%t47
	ldr r4,[fp,#20]                                   	@IRInst:add	%t48	i	1
	mov r5,#1                                         	@IRInst:add	%t48	i	1
	add r6,r4,r5                                      	@IRInst:add	%t48	i	1
	str r6,[fp,#176]                                  	@IRInst:add	%t48	i	1
	ldr r4,[fp,#176]                                  	@IRInst:assign	tmp	%t48
	str r4,[fp,#164]                                  	@IRInst:assign	tmp	%t48
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	arr
	ldr r1,[fp,#164]                                  	@IRInst:assign	r1	tmp
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	high
	bl QuickSort                                      
	str r0,[fp,#180]                                  	@IRInst:assign	%t49	r0
	ldr r4,[fp,#180]                                  	@IRInst:assign	tmp	%t49
	str r4,[fp,#164]                                  	@IRInst:assign	tmp	%t49
.L4:
.L5:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#184                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_n:
        .long   n
.global main
.type main, %function
main:
.L23:
	push {r10,fp,lr}                                  
	sub sp,sp,#160                                    
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	n	10
	ldr r9,.global_1_n                                	@IRInst:assign	n	10
	str r4,[r9]                                       	@IRInst:assign	n	10
	mov r4,#0                                         	@IRInst:mul	%t52	0	4
	mov r5,#4                                         	@IRInst:mul	%t52	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t52	0	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t52	0	4
	add r4,fp,#4                                      	@IRInst:add	%t53	a	%t52
	ldr r5,[fp,#44]                                   	@IRInst:add	%t53	a	%t52
	add r6,r4,r5                                      	@IRInst:add	%t53	a	%t52
	str r6,[fp,#48]                                   	@IRInst:add	%t53	a	%t52
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t53	4
	mov r4,#4                                         	@IRInst:assign	%t53	4
	str r4,[r5]                                       	@IRInst:assign	%t53	4
	mov r4,#1                                         	@IRInst:mul	%t54	1	4
	mov r5,#4                                         	@IRInst:mul	%t54	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t54	1	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t54	1	4
	add r4,fp,#4                                      	@IRInst:add	%t55	a	%t54
	ldr r5,[fp,#52]                                   	@IRInst:add	%t55	a	%t54
	add r6,r4,r5                                      	@IRInst:add	%t55	a	%t54
	str r6,[fp,#56]                                   	@IRInst:add	%t55	a	%t54
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t55	3
	mov r4,#3                                         	@IRInst:assign	%t55	3
	str r4,[r5]                                       	@IRInst:assign	%t55	3
	mov r4,#2                                         	@IRInst:mul	%t56	2	4
	mov r5,#4                                         	@IRInst:mul	%t56	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t56	2	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t56	2	4
	add r4,fp,#4                                      	@IRInst:add	%t57	a	%t56
	ldr r5,[fp,#60]                                   	@IRInst:add	%t57	a	%t56
	add r6,r4,r5                                      	@IRInst:add	%t57	a	%t56
	str r6,[fp,#64]                                   	@IRInst:add	%t57	a	%t56
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t57	9
	mov r4,#9                                         	@IRInst:assign	%t57	9
	str r4,[r5]                                       	@IRInst:assign	%t57	9
	mov r4,#3                                         	@IRInst:mul	%t58	3	4
	mov r5,#4                                         	@IRInst:mul	%t58	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t58	3	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t58	3	4
	add r4,fp,#4                                      	@IRInst:add	%t59	a	%t58
	ldr r5,[fp,#68]                                   	@IRInst:add	%t59	a	%t58
	add r6,r4,r5                                      	@IRInst:add	%t59	a	%t58
	str r6,[fp,#72]                                   	@IRInst:add	%t59	a	%t58
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t59	2
	mov r4,#2                                         	@IRInst:assign	%t59	2
	str r4,[r5]                                       	@IRInst:assign	%t59	2
	mov r4,#4                                         	@IRInst:mul	%t60	4	4
	mov r5,#4                                         	@IRInst:mul	%t60	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t60	4	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t60	4	4
	add r4,fp,#4                                      	@IRInst:add	%t61	a	%t60
	ldr r5,[fp,#76]                                   	@IRInst:add	%t61	a	%t60
	add r6,r4,r5                                      	@IRInst:add	%t61	a	%t60
	str r6,[fp,#80]                                   	@IRInst:add	%t61	a	%t60
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t61	0
	mov r4,#0                                         	@IRInst:assign	%t61	0
	str r4,[r5]                                       	@IRInst:assign	%t61	0
	mov r4,#5                                         	@IRInst:mul	%t62	5	4
	mov r5,#4                                         	@IRInst:mul	%t62	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t62	5	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t62	5	4
	add r4,fp,#4                                      	@IRInst:add	%t63	a	%t62
	ldr r5,[fp,#84]                                   	@IRInst:add	%t63	a	%t62
	add r6,r4,r5                                      	@IRInst:add	%t63	a	%t62
	str r6,[fp,#88]                                   	@IRInst:add	%t63	a	%t62
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t63	1
	mov r4,#1                                         	@IRInst:assign	%t63	1
	str r4,[r5]                                       	@IRInst:assign	%t63	1
	mov r4,#6                                         	@IRInst:mul	%t64	6	4
	mov r5,#4                                         	@IRInst:mul	%t64	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t64	6	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t64	6	4
	add r4,fp,#4                                      	@IRInst:add	%t65	a	%t64
	ldr r5,[fp,#92]                                   	@IRInst:add	%t65	a	%t64
	add r6,r4,r5                                      	@IRInst:add	%t65	a	%t64
	str r6,[fp,#96]                                   	@IRInst:add	%t65	a	%t64
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t65	6
	mov r4,#6                                         	@IRInst:assign	%t65	6
	str r4,[r5]                                       	@IRInst:assign	%t65	6
	mov r4,#7                                         	@IRInst:mul	%t66	7	4
	mov r5,#4                                         	@IRInst:mul	%t66	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t66	7	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t66	7	4
	add r4,fp,#4                                      	@IRInst:add	%t67	a	%t66
	ldr r5,[fp,#100]                                  	@IRInst:add	%t67	a	%t66
	add r6,r4,r5                                      	@IRInst:add	%t67	a	%t66
	str r6,[fp,#104]                                  	@IRInst:add	%t67	a	%t66
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t67	5
	mov r4,#5                                         	@IRInst:assign	%t67	5
	str r4,[r5]                                       	@IRInst:assign	%t67	5
	mov r4,#8                                         	@IRInst:mul	%t68	8	4
	mov r5,#4                                         	@IRInst:mul	%t68	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t68	8	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t68	8	4
	add r4,fp,#4                                      	@IRInst:add	%t69	a	%t68
	ldr r5,[fp,#108]                                  	@IRInst:add	%t69	a	%t68
	add r6,r4,r5                                      	@IRInst:add	%t69	a	%t68
	str r6,[fp,#112]                                  	@IRInst:add	%t69	a	%t68
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t69	7
	mov r4,#7                                         	@IRInst:assign	%t69	7
	str r4,[r5]                                       	@IRInst:assign	%t69	7
	mov r4,#9                                         	@IRInst:mul	%t70	9	4
	mov r5,#4                                         	@IRInst:mul	%t70	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t70	9	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t70	9	4
	add r4,fp,#4                                      	@IRInst:add	%t71	a	%t70
	ldr r5,[fp,#116]                                  	@IRInst:add	%t71	a	%t70
	add r6,r4,r5                                      	@IRInst:add	%t71	a	%t70
	str r6,[fp,#120]                                  	@IRInst:add	%t71	a	%t70
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t71	8
	mov r4,#8                                         	@IRInst:assign	%t71	8
	str r4,[r5]                                       	@IRInst:assign	%t71	8
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#124]                                  	@IRInst:assign	i	0
	mov r4,#9                                         	@IRInst:assign	tmp	9
	str r4,[fp,#128]                                  	@IRInst:assign	tmp	9
	add r0,fp,#4                                      	@IRInst:assign	r0	a
	ldr r1,[fp,#124]                                  	@IRInst:assign	r1	i
	ldr r2,[fp,#128]                                  	@IRInst:assign	r2	tmp
	bl QuickSort                                      
	str r0,[fp,#132]                                  	@IRInst:assign	%t74	r0
	ldr r4,[fp,#132]                                  	@IRInst:assign	i	%t74
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t74
.L25:
	ldr r4,[fp,#124]                                  	@IRInst:blt	%t75	i	n
	ldr r5,.global_1_n                                	@IRInst:blt	%t75	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t75	i	n
	cmp r4,r5                                         	@IRInst:blt	%t75	i	n
	blt .L26                                          
	b .L27                                            
.L26:
	ldr r4,[fp,#124]                                  	@IRInst:mul	%t77	i	4
	mov r5,#4                                         	@IRInst:mul	%t77	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t77	i	4
	str r6,[fp,#144]                                  	@IRInst:mul	%t77	i	4
	add r4,fp,#4                                      	@IRInst:add	%t78	a	%t77
	ldr r5,[fp,#144]                                  	@IRInst:add	%t78	a	%t77
	add r6,r4,r5                                      	@IRInst:add	%t78	a	%t77
	str r6,[fp,#148]                                  	@IRInst:add	%t78	a	%t77
	ldr r4,[fp,#148]                                  	@IRInst:assign	%t79	%t78
	ldr r4,[r4]                                       	@IRInst:assign	%t79	%t78
	str r4,[fp,#152]                                  	@IRInst:assign	%t79	%t78
	ldr r4,[fp,#152]                                  	@IRInst:assign	tmp	%t79
	str r4,[fp,#140]                                  	@IRInst:assign	tmp	%t79
	ldr r0,[fp,#140]                                  	@IRInst:assign	r0	tmp
	bl putint                                         
	mov r4,#10                                        	@IRInst:assign	tmp	10
	str r4,[fp,#140]                                  	@IRInst:assign	tmp	10
	ldr r0,[fp,#140]                                  	@IRInst:assign	r0	tmp
	bl putch                                          
	ldr r4,[fp,#124]                                  	@IRInst:add	%t80	i	1
	mov r5,#1                                         	@IRInst:add	%t80	i	1
	add r6,r4,r5                                      	@IRInst:add	%t80	i	1
	str r6,[fp,#156]                                  	@IRInst:add	%t80	i	1
	ldr r4,[fp,#156]                                  	@IRInst:assign	i	%t80
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t80
	b .L25                                            
.L27:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L24                                            
.L24:
	ldr r0,[fp]                                       
	add fp,fp,#160                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
