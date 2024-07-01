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
.global insertsort
.type insertsort, %function
insertsort:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#104                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	a	r0
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#8]                                    	@IRInst:assign	i	1
.L3:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t5	i	n
	ldr r5,.global_0_n                                	@IRInst:blt	%t5	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t5	i	n
	cmp r4,r5                                         	@IRInst:blt	%t5	i	n
	blt .L4                                           
	b .L5                                             
.L4:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t7	i	4
	mov r5,#4                                         	@IRInst:mul	%t7	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t7	i	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t7	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t8	a	%t7
	ldr r5,[fp,#20]                                   	@IRInst:add	%t8	a	%t7
	add r6,r4,r5                                      	@IRInst:add	%t8	a	%t7
	str r6,[fp,#24]                                   	@IRInst:add	%t8	a	%t7
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t9	%t8
	ldr r4,[r4]                                       	@IRInst:assign	%t9	%t8
	str r4,[fp,#28]                                   	@IRInst:assign	%t9	%t8
	ldr r4,[fp,#28]                                   	@IRInst:assign	temp	%t9
	str r4,[fp,#16]                                   	@IRInst:assign	temp	%t9
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t11	i	1
	mov r5,#1                                         	@IRInst:sub	%t11	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t11	i	1
	str r6,[fp,#36]                                   	@IRInst:sub	%t11	i	1
	ldr r4,[fp,#36]                                   	@IRInst:assign	j	%t11
	str r4,[fp,#32]                                   	@IRInst:assign	j	%t11
.L6:
	ldr r4,[fp,#32]                                   	@IRInst:bgt	%t12	j	18446744073709551615
	mov r5,#-1                                        	@IRInst:bgt	%t12	j	18446744073709551615
	cmp r4,r5                                         	@IRInst:bgt	%t12	j	18446744073709551615
	bgt .L9                                           
	b .L8                                             
.L9:
	ldr r4,[fp,#32]                                   	@IRInst:mul	%t13	j	4
	mov r5,#4                                         	@IRInst:mul	%t13	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t13	j	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t13	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t14	a	%t13
	ldr r5,[fp,#44]                                   	@IRInst:add	%t14	a	%t13
	add r6,r4,r5                                      	@IRInst:add	%t14	a	%t13
	str r6,[fp,#48]                                   	@IRInst:add	%t14	a	%t13
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t15	%t14
	ldr r4,[r4]                                       	@IRInst:assign	%t15	%t14
	str r4,[fp,#52]                                   	@IRInst:assign	%t15	%t14
	ldr r4,[fp,#16]                                   	@IRInst:blt	%t16	temp	%t15
	ldr r5,[fp,#52]                                   	@IRInst:blt	%t16	temp	%t15
	cmp r4,r5                                         	@IRInst:blt	%t16	temp	%t15
	blt .L7                                           
	b .L8                                             
.L7:
	ldr r4,[fp,#32]                                   	@IRInst:mul	%t20	j	4
	mov r5,#4                                         	@IRInst:mul	%t20	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t20	j	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t20	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t21	a	%t20
	ldr r5,[fp,#72]                                   	@IRInst:add	%t21	a	%t20
	add r6,r4,r5                                      	@IRInst:add	%t21	a	%t20
	str r6,[fp,#76]                                   	@IRInst:add	%t21	a	%t20
	ldr r4,[fp,#76]                                   	@IRInst:assign	%t22	%t21
	ldr r4,[r4]                                       	@IRInst:assign	%t22	%t21
	str r4,[fp,#80]                                   	@IRInst:assign	%t22	%t21
	ldr r4,[fp,#32]                                   	@IRInst:add	%t18	j	1
	mov r5,#1                                         	@IRInst:add	%t18	j	1
	add r6,r4,r5                                      	@IRInst:add	%t18	j	1
	str r6,[fp,#64]                                   	@IRInst:add	%t18	j	1
	ldr r4,[fp,#64]                                   	@IRInst:mul	%t17	%t18	4
	mov r5,#4                                         	@IRInst:mul	%t17	%t18	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	%t18	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t17	%t18	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t19	a	%t17
	ldr r5,[fp,#60]                                   	@IRInst:add	%t19	a	%t17
	add r6,r4,r5                                      	@IRInst:add	%t19	a	%t17
	str r6,[fp,#68]                                   	@IRInst:add	%t19	a	%t17
	ldr r5,[fp,#68]                                   	@IRInst:assign	%t19	%t22
	ldr r4,[fp,#80]                                   	@IRInst:assign	%t19	%t22
	str r4,[r5]                                       	@IRInst:assign	%t19	%t22
	ldr r4,[fp,#32]                                   	@IRInst:sub	%t23	j	1
	mov r5,#1                                         	@IRInst:sub	%t23	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t23	j	1
	str r6,[fp,#84]                                   	@IRInst:sub	%t23	j	1
	ldr r4,[fp,#84]                                   	@IRInst:assign	j	%t23
	str r4,[fp,#32]                                   	@IRInst:assign	j	%t23
	b .L6                                             
.L8:
	ldr r4,[fp,#32]                                   	@IRInst:add	%t25	j	1
	mov r5,#1                                         	@IRInst:add	%t25	j	1
	add r6,r4,r5                                      	@IRInst:add	%t25	j	1
	str r6,[fp,#92]                                   	@IRInst:add	%t25	j	1
	ldr r4,[fp,#92]                                   	@IRInst:mul	%t24	%t25	4
	mov r5,#4                                         	@IRInst:mul	%t24	%t25	4
	mul r6,r4,r5                                      	@IRInst:mul	%t24	%t25	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t24	%t25	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t26	a	%t24
	ldr r5,[fp,#88]                                   	@IRInst:add	%t26	a	%t24
	add r6,r4,r5                                      	@IRInst:add	%t26	a	%t24
	str r6,[fp,#96]                                   	@IRInst:add	%t26	a	%t24
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t26	temp
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t26	temp
	str r4,[r5]                                       	@IRInst:assign	%t26	temp
	ldr r4,[fp,#8]                                    	@IRInst:add	%t27	i	1
	mov r5,#1                                         	@IRInst:add	%t27	i	1
	add r6,r4,r5                                      	@IRInst:add	%t27	i	1
	str r6,[fp,#100]                                  	@IRInst:add	%t27	i	1
	ldr r4,[fp,#100]                                  	@IRInst:assign	i	%t27
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t27
	b .L3                                             
.L5:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#104                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_n:
        .long   n
.global main
.type main, %function
main:
.L10:
	push {r10,fp,lr}                                  
	sub sp,sp,#156                                    
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	n	10
	ldr r9,.global_1_n                                	@IRInst:assign	n	10
	str r4,[r9]                                       	@IRInst:assign	n	10
	mov r4,#0                                         	@IRInst:mul	%t30	0	4
	mov r5,#4                                         	@IRInst:mul	%t30	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t30	0	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t30	0	4
	add r4,fp,#4                                      	@IRInst:add	%t31	a	%t30
	ldr r5,[fp,#44]                                   	@IRInst:add	%t31	a	%t30
	add r6,r4,r5                                      	@IRInst:add	%t31	a	%t30
	str r6,[fp,#48]                                   	@IRInst:add	%t31	a	%t30
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t31	4
	mov r4,#4                                         	@IRInst:assign	%t31	4
	str r4,[r5]                                       	@IRInst:assign	%t31	4
	mov r4,#1                                         	@IRInst:mul	%t32	1	4
	mov r5,#4                                         	@IRInst:mul	%t32	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t32	1	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t32	1	4
	add r4,fp,#4                                      	@IRInst:add	%t33	a	%t32
	ldr r5,[fp,#52]                                   	@IRInst:add	%t33	a	%t32
	add r6,r4,r5                                      	@IRInst:add	%t33	a	%t32
	str r6,[fp,#56]                                   	@IRInst:add	%t33	a	%t32
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t33	3
	mov r4,#3                                         	@IRInst:assign	%t33	3
	str r4,[r5]                                       	@IRInst:assign	%t33	3
	mov r4,#2                                         	@IRInst:mul	%t34	2	4
	mov r5,#4                                         	@IRInst:mul	%t34	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t34	2	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t34	2	4
	add r4,fp,#4                                      	@IRInst:add	%t35	a	%t34
	ldr r5,[fp,#60]                                   	@IRInst:add	%t35	a	%t34
	add r6,r4,r5                                      	@IRInst:add	%t35	a	%t34
	str r6,[fp,#64]                                   	@IRInst:add	%t35	a	%t34
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t35	9
	mov r4,#9                                         	@IRInst:assign	%t35	9
	str r4,[r5]                                       	@IRInst:assign	%t35	9
	mov r4,#3                                         	@IRInst:mul	%t36	3	4
	mov r5,#4                                         	@IRInst:mul	%t36	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t36	3	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t36	3	4
	add r4,fp,#4                                      	@IRInst:add	%t37	a	%t36
	ldr r5,[fp,#68]                                   	@IRInst:add	%t37	a	%t36
	add r6,r4,r5                                      	@IRInst:add	%t37	a	%t36
	str r6,[fp,#72]                                   	@IRInst:add	%t37	a	%t36
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t37	2
	mov r4,#2                                         	@IRInst:assign	%t37	2
	str r4,[r5]                                       	@IRInst:assign	%t37	2
	mov r4,#4                                         	@IRInst:mul	%t38	4	4
	mov r5,#4                                         	@IRInst:mul	%t38	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t38	4	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t38	4	4
	add r4,fp,#4                                      	@IRInst:add	%t39	a	%t38
	ldr r5,[fp,#76]                                   	@IRInst:add	%t39	a	%t38
	add r6,r4,r5                                      	@IRInst:add	%t39	a	%t38
	str r6,[fp,#80]                                   	@IRInst:add	%t39	a	%t38
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t39	0
	mov r4,#0                                         	@IRInst:assign	%t39	0
	str r4,[r5]                                       	@IRInst:assign	%t39	0
	mov r4,#5                                         	@IRInst:mul	%t40	5	4
	mov r5,#4                                         	@IRInst:mul	%t40	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t40	5	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t40	5	4
	add r4,fp,#4                                      	@IRInst:add	%t41	a	%t40
	ldr r5,[fp,#84]                                   	@IRInst:add	%t41	a	%t40
	add r6,r4,r5                                      	@IRInst:add	%t41	a	%t40
	str r6,[fp,#88]                                   	@IRInst:add	%t41	a	%t40
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t41	1
	mov r4,#1                                         	@IRInst:assign	%t41	1
	str r4,[r5]                                       	@IRInst:assign	%t41	1
	mov r4,#6                                         	@IRInst:mul	%t42	6	4
	mov r5,#4                                         	@IRInst:mul	%t42	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t42	6	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t42	6	4
	add r4,fp,#4                                      	@IRInst:add	%t43	a	%t42
	ldr r5,[fp,#92]                                   	@IRInst:add	%t43	a	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	a	%t42
	str r6,[fp,#96]                                   	@IRInst:add	%t43	a	%t42
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t43	6
	mov r4,#6                                         	@IRInst:assign	%t43	6
	str r4,[r5]                                       	@IRInst:assign	%t43	6
	mov r4,#7                                         	@IRInst:mul	%t44	7	4
	mov r5,#4                                         	@IRInst:mul	%t44	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	7	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t44	7	4
	add r4,fp,#4                                      	@IRInst:add	%t45	a	%t44
	ldr r5,[fp,#100]                                  	@IRInst:add	%t45	a	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	a	%t44
	str r6,[fp,#104]                                  	@IRInst:add	%t45	a	%t44
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t45	5
	mov r4,#5                                         	@IRInst:assign	%t45	5
	str r4,[r5]                                       	@IRInst:assign	%t45	5
	mov r4,#8                                         	@IRInst:mul	%t46	8	4
	mov r5,#4                                         	@IRInst:mul	%t46	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	8	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t46	8	4
	add r4,fp,#4                                      	@IRInst:add	%t47	a	%t46
	ldr r5,[fp,#108]                                  	@IRInst:add	%t47	a	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	a	%t46
	str r6,[fp,#112]                                  	@IRInst:add	%t47	a	%t46
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t47	7
	mov r4,#7                                         	@IRInst:assign	%t47	7
	str r4,[r5]                                       	@IRInst:assign	%t47	7
	mov r4,#9                                         	@IRInst:mul	%t48	9	4
	mov r5,#4                                         	@IRInst:mul	%t48	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t48	9	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t48	9	4
	add r4,fp,#4                                      	@IRInst:add	%t49	a	%t48
	ldr r5,[fp,#116]                                  	@IRInst:add	%t49	a	%t48
	add r6,r4,r5                                      	@IRInst:add	%t49	a	%t48
	str r6,[fp,#120]                                  	@IRInst:add	%t49	a	%t48
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t49	8
	mov r4,#8                                         	@IRInst:assign	%t49	8
	str r4,[r5]                                       	@IRInst:assign	%t49	8
	add r0,fp,#4                                      	@IRInst:assign	r0	a
	bl insertsort                                     
	str r0,[fp,#128]                                  	@IRInst:assign	%t51	r0
	ldr r4,[fp,#128]                                  	@IRInst:assign	i	%t51
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t51
.L12:
	ldr r4,[fp,#124]                                  	@IRInst:blt	%t52	i	n
	ldr r5,.global_1_n                                	@IRInst:blt	%t52	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t52	i	n
	cmp r4,r5                                         	@IRInst:blt	%t52	i	n
	blt .L13                                          
	b .L14                                            
.L13:
	ldr r4,[fp,#124]                                  	@IRInst:mul	%t54	i	4
	mov r5,#4                                         	@IRInst:mul	%t54	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t54	i	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t54	i	4
	add r4,fp,#4                                      	@IRInst:add	%t55	a	%t54
	ldr r5,[fp,#140]                                  	@IRInst:add	%t55	a	%t54
	add r6,r4,r5                                      	@IRInst:add	%t55	a	%t54
	str r6,[fp,#144]                                  	@IRInst:add	%t55	a	%t54
	ldr r4,[fp,#144]                                  	@IRInst:assign	%t56	%t55
	ldr r4,[r4]                                       	@IRInst:assign	%t56	%t55
	str r4,[fp,#148]                                  	@IRInst:assign	%t56	%t55
	ldr r4,[fp,#148]                                  	@IRInst:assign	tmp	%t56
	str r4,[fp,#136]                                  	@IRInst:assign	tmp	%t56
	ldr r0,[fp,#136]                                  	@IRInst:assign	r0	tmp
	bl putint                                         
	mov r4,#10                                        	@IRInst:assign	tmp	10
	str r4,[fp,#136]                                  	@IRInst:assign	tmp	10
	ldr r0,[fp,#136]                                  	@IRInst:assign	r0	tmp
	bl putch                                          
	ldr r4,[fp,#124]                                  	@IRInst:add	%t57	i	1
	mov r5,#1                                         	@IRInst:add	%t57	i	1
	add r6,r4,r5                                      	@IRInst:add	%t57	i	1
	str r6,[fp,#152]                                  	@IRInst:add	%t57	i	1
	ldr r4,[fp,#152]                                  	@IRInst:assign	i	%t57
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t57
	b .L12                                            
.L14:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L11                                            
.L11:
	ldr r0,[fp]                                       
	add fp,fp,#156                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
