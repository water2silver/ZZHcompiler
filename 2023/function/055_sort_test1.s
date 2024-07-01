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
.global main
.type main, %function
main:
.L12:
	push {r10,fp,lr}                                  
	sub sp,sp,#156                                    
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	n	10
	ldr r9,.global_1_n                                	@IRInst:assign	n	10
	str r4,[r9]                                       	@IRInst:assign	n	10
	mov r4,#0                                         	@IRInst:mul	%t36	0	4
	mov r5,#4                                         	@IRInst:mul	%t36	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t36	0	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t36	0	4
	add r4,fp,#4                                      	@IRInst:add	%t37	a	%t36
	ldr r5,[fp,#44]                                   	@IRInst:add	%t37	a	%t36
	add r6,r4,r5                                      	@IRInst:add	%t37	a	%t36
	str r6,[fp,#48]                                   	@IRInst:add	%t37	a	%t36
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t37	4
	mov r4,#4                                         	@IRInst:assign	%t37	4
	str r4,[r5]                                       	@IRInst:assign	%t37	4
	mov r4,#1                                         	@IRInst:mul	%t38	1	4
	mov r5,#4                                         	@IRInst:mul	%t38	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t38	1	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t38	1	4
	add r4,fp,#4                                      	@IRInst:add	%t39	a	%t38
	ldr r5,[fp,#52]                                   	@IRInst:add	%t39	a	%t38
	add r6,r4,r5                                      	@IRInst:add	%t39	a	%t38
	str r6,[fp,#56]                                   	@IRInst:add	%t39	a	%t38
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t39	3
	mov r4,#3                                         	@IRInst:assign	%t39	3
	str r4,[r5]                                       	@IRInst:assign	%t39	3
	mov r4,#2                                         	@IRInst:mul	%t40	2	4
	mov r5,#4                                         	@IRInst:mul	%t40	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t40	2	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t40	2	4
	add r4,fp,#4                                      	@IRInst:add	%t41	a	%t40
	ldr r5,[fp,#60]                                   	@IRInst:add	%t41	a	%t40
	add r6,r4,r5                                      	@IRInst:add	%t41	a	%t40
	str r6,[fp,#64]                                   	@IRInst:add	%t41	a	%t40
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t41	9
	mov r4,#9                                         	@IRInst:assign	%t41	9
	str r4,[r5]                                       	@IRInst:assign	%t41	9
	mov r4,#3                                         	@IRInst:mul	%t42	3	4
	mov r5,#4                                         	@IRInst:mul	%t42	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t42	3	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t42	3	4
	add r4,fp,#4                                      	@IRInst:add	%t43	a	%t42
	ldr r5,[fp,#68]                                   	@IRInst:add	%t43	a	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	a	%t42
	str r6,[fp,#72]                                   	@IRInst:add	%t43	a	%t42
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t43	2
	mov r4,#2                                         	@IRInst:assign	%t43	2
	str r4,[r5]                                       	@IRInst:assign	%t43	2
	mov r4,#4                                         	@IRInst:mul	%t44	4	4
	mov r5,#4                                         	@IRInst:mul	%t44	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	4	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t44	4	4
	add r4,fp,#4                                      	@IRInst:add	%t45	a	%t44
	ldr r5,[fp,#76]                                   	@IRInst:add	%t45	a	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	a	%t44
	str r6,[fp,#80]                                   	@IRInst:add	%t45	a	%t44
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t45	0
	mov r4,#0                                         	@IRInst:assign	%t45	0
	str r4,[r5]                                       	@IRInst:assign	%t45	0
	mov r4,#5                                         	@IRInst:mul	%t46	5	4
	mov r5,#4                                         	@IRInst:mul	%t46	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	5	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t46	5	4
	add r4,fp,#4                                      	@IRInst:add	%t47	a	%t46
	ldr r5,[fp,#84]                                   	@IRInst:add	%t47	a	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	a	%t46
	str r6,[fp,#88]                                   	@IRInst:add	%t47	a	%t46
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t47	1
	mov r4,#1                                         	@IRInst:assign	%t47	1
	str r4,[r5]                                       	@IRInst:assign	%t47	1
	mov r4,#6                                         	@IRInst:mul	%t48	6	4
	mov r5,#4                                         	@IRInst:mul	%t48	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t48	6	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t48	6	4
	add r4,fp,#4                                      	@IRInst:add	%t49	a	%t48
	ldr r5,[fp,#92]                                   	@IRInst:add	%t49	a	%t48
	add r6,r4,r5                                      	@IRInst:add	%t49	a	%t48
	str r6,[fp,#96]                                   	@IRInst:add	%t49	a	%t48
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t49	6
	mov r4,#6                                         	@IRInst:assign	%t49	6
	str r4,[r5]                                       	@IRInst:assign	%t49	6
	mov r4,#7                                         	@IRInst:mul	%t50	7	4
	mov r5,#4                                         	@IRInst:mul	%t50	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t50	7	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t50	7	4
	add r4,fp,#4                                      	@IRInst:add	%t51	a	%t50
	ldr r5,[fp,#100]                                  	@IRInst:add	%t51	a	%t50
	add r6,r4,r5                                      	@IRInst:add	%t51	a	%t50
	str r6,[fp,#104]                                  	@IRInst:add	%t51	a	%t50
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t51	5
	mov r4,#5                                         	@IRInst:assign	%t51	5
	str r4,[r5]                                       	@IRInst:assign	%t51	5
	mov r4,#8                                         	@IRInst:mul	%t52	8	4
	mov r5,#4                                         	@IRInst:mul	%t52	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t52	8	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t52	8	4
	add r4,fp,#4                                      	@IRInst:add	%t53	a	%t52
	ldr r5,[fp,#108]                                  	@IRInst:add	%t53	a	%t52
	add r6,r4,r5                                      	@IRInst:add	%t53	a	%t52
	str r6,[fp,#112]                                  	@IRInst:add	%t53	a	%t52
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t53	7
	mov r4,#7                                         	@IRInst:assign	%t53	7
	str r4,[r5]                                       	@IRInst:assign	%t53	7
	mov r4,#9                                         	@IRInst:mul	%t54	9	4
	mov r5,#4                                         	@IRInst:mul	%t54	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t54	9	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t54	9	4
	add r4,fp,#4                                      	@IRInst:add	%t55	a	%t54
	ldr r5,[fp,#116]                                  	@IRInst:add	%t55	a	%t54
	add r6,r4,r5                                      	@IRInst:add	%t55	a	%t54
	str r6,[fp,#120]                                  	@IRInst:add	%t55	a	%t54
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t55	8
	mov r4,#8                                         	@IRInst:assign	%t55	8
	str r4,[r5]                                       	@IRInst:assign	%t55	8
	add r0,fp,#4                                      	@IRInst:assign	r0	a
	bl bubblesort                                     
	str r0,[fp,#128]                                  	@IRInst:assign	%t57	r0
	ldr r4,[fp,#128]                                  	@IRInst:assign	i	%t57
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t57
.L14:
	ldr r4,[fp,#124]                                  	@IRInst:blt	%t58	i	n
	ldr r5,.global_1_n                                	@IRInst:blt	%t58	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t58	i	n
	cmp r4,r5                                         	@IRInst:blt	%t58	i	n
	blt .L15                                          
	b .L16                                            
.L15:
	ldr r4,[fp,#124]                                  	@IRInst:mul	%t60	i	4
	mov r5,#4                                         	@IRInst:mul	%t60	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t60	i	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t60	i	4
	add r4,fp,#4                                      	@IRInst:add	%t61	a	%t60
	ldr r5,[fp,#140]                                  	@IRInst:add	%t61	a	%t60
	add r6,r4,r5                                      	@IRInst:add	%t61	a	%t60
	str r6,[fp,#144]                                  	@IRInst:add	%t61	a	%t60
	ldr r4,[fp,#144]                                  	@IRInst:assign	%t62	%t61
	ldr r4,[r4]                                       	@IRInst:assign	%t62	%t61
	str r4,[fp,#148]                                  	@IRInst:assign	%t62	%t61
	ldr r4,[fp,#148]                                  	@IRInst:assign	tmp	%t62
	str r4,[fp,#136]                                  	@IRInst:assign	tmp	%t62
	ldr r0,[fp,#136]                                  	@IRInst:assign	r0	tmp
	bl putint                                         
	mov r4,#10                                        	@IRInst:assign	tmp	10
	str r4,[fp,#136]                                  	@IRInst:assign	tmp	10
	ldr r0,[fp,#136]                                  	@IRInst:assign	r0	tmp
	bl putch                                          
	ldr r4,[fp,#124]                                  	@IRInst:add	%t63	i	1
	mov r5,#1                                         	@IRInst:add	%t63	i	1
	add r6,r4,r5                                      	@IRInst:add	%t63	i	1
	str r6,[fp,#152]                                  	@IRInst:add	%t63	i	1
	ldr r4,[fp,#152]                                  	@IRInst:assign	i	%t63
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t63
	b .L14                                            
.L16:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L13                                            
.L13:
	ldr r0,[fp]                                       
	add fp,fp,#156                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
