.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global func
.type func, %function
func:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#124                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	a	r0
	str r1,[fp,#8]                                    	@IRInst:assign	b	r1
	str r2,[fp,#12]                                   	@IRInst:assign	c	r2
	str r3,[fp,#16]                                   	@IRInst:assign	d	r3
	ldr r4,[fp,#136]                                  	@IRInst:assign	e	%m125
	str r4,[fp,#20]                                   	@IRInst:assign	e	%m125
	ldr r4,[fp,#140]                                  	@IRInst:assign	f	%m126
	str r4,[fp,#24]                                   	@IRInst:assign	f	%m126
	ldr r4,[fp,#144]                                  	@IRInst:assign	g	%m127
	str r4,[fp,#28]                                   	@IRInst:assign	g	%m127
	ldr r4,[fp,#148]                                  	@IRInst:assign	h	%m128
	str r4,[fp,#32]                                   	@IRInst:assign	h	%m128
	ldr r4,[fp,#152]                                  	@IRInst:assign	i	%m129
	str r4,[fp,#36]                                   	@IRInst:assign	i	%m129
	mov r4,#0                                         	@IRInst:assign	index	0
	str r4,[fp,#40]                                   	@IRInst:assign	index	0
.L3:
	ldr r4,[fp,#40]                                   	@IRInst:blt	%t20	index	10
	mov r5,#10                                        	@IRInst:blt	%t20	index	10
	cmp r4,r5                                         	@IRInst:blt	%t20	index	10
	movlt r6,#1                                       	@IRInst:blt	%t20	index	10
	movge r6,#0                                       	@IRInst:blt	%t20	index	10
	str r6,[fp,#44]                                   	@IRInst:blt	%t20	index	10
	blt .L4                                           
	b .L5                                             
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t21	a	59
	mov r5,#59                                        	@IRInst:mul	%t21	a	59
	mul r6,r4,r5                                      	@IRInst:mul	%t21	a	59
	str r6,[fp,#48]                                   	@IRInst:mul	%t21	a	59
	ldr r4,[fp,#48]                                   	@IRInst:add	%t22	%t21	index
	ldr r5,[fp,#40]                                   	@IRInst:add	%t22	%t21	index
	add r6,r4,r5                                      	@IRInst:add	%t22	%t21	index
	str r6,[fp,#52]                                   	@IRInst:add	%t22	%t21	index
	ldr r4,[fp,#52]                                   	@IRInst:mul	%t23	%t22	4
	mov r5,#4                                         	@IRInst:mul	%t23	%t22	4
	mul r6,r4,r5                                      	@IRInst:mul	%t23	%t22	4
	str r6,[fp,#56]                                   	@IRInst:mul	%t23	%t22	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t24	b	%t23
	ldr r5,[fp,#56]                                   	@IRInst:add	%t24	b	%t23
	add r6,r4,r5                                      	@IRInst:add	%t24	b	%t23
	str r6,[fp,#60]                                   	@IRInst:add	%t24	b	%t23
	ldr r4,[fp,#60]                                   	@IRInst:assign	%t25	%t24
	ldr r4,[r4]                                       	@IRInst:assign	%t25	%t24
	str r4,[fp,#64]                                   	@IRInst:assign	%t25	%t24
	ldr r0,[fp,#64]                                   	@IRInst:assign	r0	%t25
	bl putint                                         
	ldr r4,[fp,#40]                                   	@IRInst:add	%t26	index	1
	mov r5,#1                                         	@IRInst:add	%t26	index	1
	add r6,r4,r5                                      	@IRInst:add	%t26	index	1
	str r6,[fp,#68]                                   	@IRInst:add	%t26	index	1
	ldr r4,[fp,#68]                                   	@IRInst:assign	index	%t26
	str r4,[fp,#40]                                   	@IRInst:assign	index	%t26
	b .L3                                             
.L5:
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t27	c	4
	mov r5,#4                                         	@IRInst:mul	%t27	c	4
	mul r6,r4,r5                                      	@IRInst:mul	%t27	c	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t27	c	4
	ldr r4,[fp,#16]                                   	@IRInst:add	%t28	d	%t27
	ldr r5,[fp,#72]                                   	@IRInst:add	%t28	d	%t27
	add r6,r4,r5                                      	@IRInst:add	%t28	d	%t27
	str r6,[fp,#76]                                   	@IRInst:add	%t28	d	%t27
	ldr r4,[fp,#76]                                   	@IRInst:assign	%t29	%t28
	ldr r4,[r4]                                       	@IRInst:assign	%t29	%t28
	str r4,[fp,#80]                                   	@IRInst:assign	%t29	%t28
	ldr r0,[fp,#80]                                   	@IRInst:assign	r0	%t29
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
.L6:
	ldr r4,[fp,#36]                                   	@IRInst:blt	%t30	i	10
	mov r5,#10                                        	@IRInst:blt	%t30	i	10
	cmp r4,r5                                         	@IRInst:blt	%t30	i	10
	movlt r6,#1                                       	@IRInst:blt	%t30	i	10
	movge r6,#0                                       	@IRInst:blt	%t30	i	10
	str r6,[fp,#84]                                   	@IRInst:blt	%t30	i	10
	blt .L7                                           
	b .L8                                             
.L7:
	ldr r4,[fp,#32]                                   	@IRInst:mul	%t33	h	128875
	ldr r5,=128875                                    	@IRInst:mul	%t33	h	128875
	mul r6,r4,r5                                      	@IRInst:mul	%t33	h	128875
	str r6,[fp,#96]                                   	@IRInst:mul	%t33	h	128875
	ldr r4,[fp,#96]                                   	@IRInst:sdiv	%t35	%t33	3724
	ldr r5,=3724                                      	@IRInst:sdiv	%t35	%t33	3724
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t35	%t33	3724
	str r6,[fp,#104]                                  	@IRInst:sdiv	%t35	%t33	3724
	ldr r4,[fp,#104]                                  	@IRInst:mul	%t36	%t35	3724
	ldr r5,=3724                                      	@IRInst:mul	%t36	%t35	3724
	mul r6,r4,r5                                      	@IRInst:mul	%t36	%t35	3724
	str r6,[fp,#108]                                  	@IRInst:mul	%t36	%t35	3724
	ldr r4,[fp,#96]                                   	@IRInst:sub	%t34	%t33	%t36
	ldr r5,[fp,#108]                                  	@IRInst:sub	%t34	%t33	%t36
	sub r6,r4,r5                                      	@IRInst:sub	%t34	%t33	%t36
	str r6,[fp,#100]                                  	@IRInst:sub	%t34	%t33	%t36
	ldr r4,[fp,#36]                                   	@IRInst:mul	%t31	i	4
	mov r5,#4                                         	@IRInst:mul	%t31	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	i	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t31	i	4
	ldr r4,[fp,#28]                                   	@IRInst:add	%t32	g	%t31
	ldr r5,[fp,#88]                                   	@IRInst:add	%t32	g	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	g	%t31
	str r6,[fp,#92]                                   	@IRInst:add	%t32	g	%t31
	ldr r5,[fp,#92]                                   	@IRInst:assign	%t32	%t34
	ldr r4,[fp,#100]                                  	@IRInst:assign	%t32	%t34
	str r4,[r5]                                       	@IRInst:assign	%t32	%t34
	ldr r4,[fp,#36]                                   	@IRInst:add	%t37	i	1
	mov r5,#1                                         	@IRInst:add	%t37	i	1
	add r6,r4,r5                                      	@IRInst:add	%t37	i	1
	str r6,[fp,#112]                                  	@IRInst:add	%t37	i	1
	ldr r4,[fp,#112]                                  	@IRInst:assign	i	%t37
	str r4,[fp,#36]                                   	@IRInst:assign	i	%t37
	ldr r4,[fp,#32]                                   	@IRInst:add	%t38	h	7
	mov r5,#7                                         	@IRInst:add	%t38	h	7
	add r6,r4,r5                                      	@IRInst:add	%t38	h	7
	str r6,[fp,#116]                                  	@IRInst:add	%t38	h	7
	ldr r4,[fp,#116]                                  	@IRInst:assign	h	%t38
	str r4,[fp,#32]                                   	@IRInst:assign	h	%t38
	b .L6                                             
.L8:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t39	e	f
	ldr r5,[fp,#24]                                   	@IRInst:add	%t39	e	f
	add r6,r4,r5                                      	@IRInst:add	%t39	e	f
	str r6,[fp,#120]                                  	@IRInst:add	%t39	e	f
	ldr r4,[fp,#120]                                  	@IRInst:assign		%t39
	str r4,[fp]                                       	@IRInst:assign		%t39
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#124                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global main
.type main, %function
main:
.L9:
	push {r10,fp,lr}                                  
	ldr r10,=29704                                    
	sub sp,sp,r10                                     
	add fp,sp,#20                                     
	mov r4,#17                                        	@IRInst:mul	%t43	17	67
	mov r5,#67                                        	@IRInst:mul	%t43	17	67
	mul r6,r4,r5                                      	@IRInst:mul	%t43	17	67
	ldr r5,=28860                                     	@IRInst:mul	%t43	17	67
	str r6,[fp,r5]                                    	@IRInst:mul	%t43	17	67
	ldr r4,=28860                                     	@IRInst:add	%t44	%t43	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t44	%t43	1
	mov r5,#1                                         	@IRInst:add	%t44	%t43	1
	add r6,r4,r5                                      	@IRInst:add	%t44	%t43	1
	ldr r5,=28864                                     	@IRInst:add	%t44	%t43	1
	str r6,[fp,r5]                                    	@IRInst:add	%t44	%t43	1
	ldr r4,=28864                                     	@IRInst:mul	%t45	%t44	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t45	%t44	4
	mov r5,#4                                         	@IRInst:mul	%t45	%t44	4
	mul r6,r4,r5                                      	@IRInst:mul	%t45	%t44	4
	ldr r5,=28868                                     	@IRInst:mul	%t45	%t44	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t45	%t44	4
	add r4,fp,#4                                      	@IRInst:add	%t46	a	%t45
	ldr r5,=28868                                     	@IRInst:add	%t46	a	%t45
	ldr r5,[fp,r5]                                    	@IRInst:add	%t46	a	%t45
	add r6,r4,r5                                      	@IRInst:add	%t46	a	%t45
	ldr r5,=28872                                     	@IRInst:add	%t46	a	%t45
	str r6,[fp,r5]                                    	@IRInst:add	%t46	a	%t45
	ldr r5,=28872                                     	@IRInst:assign	%t46	6
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t46	6
	mov r4,#6                                         	@IRInst:assign	%t46	6
	str r4,[r5]                                       	@IRInst:assign	%t46	6
	mov r4,#17                                        	@IRInst:mul	%t47	17	67
	mov r5,#67                                        	@IRInst:mul	%t47	17	67
	mul r6,r4,r5                                      	@IRInst:mul	%t47	17	67
	ldr r5,=28876                                     	@IRInst:mul	%t47	17	67
	str r6,[fp,r5]                                    	@IRInst:mul	%t47	17	67
	ldr r4,=28876                                     	@IRInst:add	%t48	%t47	3
	ldr r4,[fp,r4]                                    	@IRInst:add	%t48	%t47	3
	mov r5,#3                                         	@IRInst:add	%t48	%t47	3
	add r6,r4,r5                                      	@IRInst:add	%t48	%t47	3
	ldr r5,=28880                                     	@IRInst:add	%t48	%t47	3
	str r6,[fp,r5]                                    	@IRInst:add	%t48	%t47	3
	ldr r4,=28880                                     	@IRInst:mul	%t49	%t48	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t49	%t48	4
	mov r5,#4                                         	@IRInst:mul	%t49	%t48	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t48	4
	ldr r5,=28884                                     	@IRInst:mul	%t49	%t48	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t49	%t48	4
	add r4,fp,#4                                      	@IRInst:add	%t50	a	%t49
	ldr r5,=28884                                     	@IRInst:add	%t50	a	%t49
	ldr r5,[fp,r5]                                    	@IRInst:add	%t50	a	%t49
	add r6,r4,r5                                      	@IRInst:add	%t50	a	%t49
	ldr r5,=28888                                     	@IRInst:add	%t50	a	%t49
	str r6,[fp,r5]                                    	@IRInst:add	%t50	a	%t49
	ldr r5,=28888                                     	@IRInst:assign	%t50	7
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t50	7
	mov r4,#7                                         	@IRInst:assign	%t50	7
	str r4,[r5]                                       	@IRInst:assign	%t50	7
	mov r4,#17                                        	@IRInst:mul	%t51	17	67
	mov r5,#67                                        	@IRInst:mul	%t51	17	67
	mul r6,r4,r5                                      	@IRInst:mul	%t51	17	67
	ldr r5,=28892                                     	@IRInst:mul	%t51	17	67
	str r6,[fp,r5]                                    	@IRInst:mul	%t51	17	67
	ldr r4,=28892                                     	@IRInst:add	%t52	%t51	4
	ldr r4,[fp,r4]                                    	@IRInst:add	%t52	%t51	4
	mov r5,#4                                         	@IRInst:add	%t52	%t51	4
	add r6,r4,r5                                      	@IRInst:add	%t52	%t51	4
	ldr r5,=28896                                     	@IRInst:add	%t52	%t51	4
	str r6,[fp,r5]                                    	@IRInst:add	%t52	%t51	4
	ldr r4,=28896                                     	@IRInst:mul	%t53	%t52	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t53	%t52	4
	mov r5,#4                                         	@IRInst:mul	%t53	%t52	4
	mul r6,r4,r5                                      	@IRInst:mul	%t53	%t52	4
	ldr r5,=28900                                     	@IRInst:mul	%t53	%t52	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t53	%t52	4
	add r4,fp,#4                                      	@IRInst:add	%t54	a	%t53
	ldr r5,=28900                                     	@IRInst:add	%t54	a	%t53
	ldr r5,[fp,r5]                                    	@IRInst:add	%t54	a	%t53
	add r6,r4,r5                                      	@IRInst:add	%t54	a	%t53
	ldr r5,=28904                                     	@IRInst:add	%t54	a	%t53
	str r6,[fp,r5]                                    	@IRInst:add	%t54	a	%t53
	ldr r5,=28904                                     	@IRInst:assign	%t54	4
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t54	4
	mov r4,#4                                         	@IRInst:assign	%t54	4
	str r4,[r5]                                       	@IRInst:assign	%t54	4
	mov r4,#17                                        	@IRInst:mul	%t55	17	67
	mov r5,#67                                        	@IRInst:mul	%t55	17	67
	mul r6,r4,r5                                      	@IRInst:mul	%t55	17	67
	ldr r5,=28908                                     	@IRInst:mul	%t55	17	67
	str r6,[fp,r5]                                    	@IRInst:mul	%t55	17	67
	ldr r4,=28908                                     	@IRInst:add	%t56	%t55	7
	ldr r4,[fp,r4]                                    	@IRInst:add	%t56	%t55	7
	mov r5,#7                                         	@IRInst:add	%t56	%t55	7
	add r6,r4,r5                                      	@IRInst:add	%t56	%t55	7
	ldr r5,=28912                                     	@IRInst:add	%t56	%t55	7
	str r6,[fp,r5]                                    	@IRInst:add	%t56	%t55	7
	ldr r4,=28912                                     	@IRInst:mul	%t57	%t56	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t57	%t56	4
	mov r5,#4                                         	@IRInst:mul	%t57	%t56	4
	mul r6,r4,r5                                      	@IRInst:mul	%t57	%t56	4
	ldr r5,=28916                                     	@IRInst:mul	%t57	%t56	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t57	%t56	4
	add r4,fp,#4                                      	@IRInst:add	%t58	a	%t57
	ldr r5,=28916                                     	@IRInst:add	%t58	a	%t57
	ldr r5,[fp,r5]                                    	@IRInst:add	%t58	a	%t57
	add r6,r4,r5                                      	@IRInst:add	%t58	a	%t57
	ldr r5,=28920                                     	@IRInst:add	%t58	a	%t57
	str r6,[fp,r5]                                    	@IRInst:add	%t58	a	%t57
	ldr r5,=28920                                     	@IRInst:assign	%t58	9
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t58	9
	mov r4,#9                                         	@IRInst:assign	%t58	9
	str r4,[r5]                                       	@IRInst:assign	%t58	9
	mov r4,#17                                        	@IRInst:mul	%t59	17	67
	mov r5,#67                                        	@IRInst:mul	%t59	17	67
	mul r6,r4,r5                                      	@IRInst:mul	%t59	17	67
	ldr r5,=28924                                     	@IRInst:mul	%t59	17	67
	str r6,[fp,r5]                                    	@IRInst:mul	%t59	17	67
	ldr r4,=28924                                     	@IRInst:add	%t60	%t59	11
	ldr r4,[fp,r4]                                    	@IRInst:add	%t60	%t59	11
	mov r5,#11                                        	@IRInst:add	%t60	%t59	11
	add r6,r4,r5                                      	@IRInst:add	%t60	%t59	11
	mov r5,#28928                                     	@IRInst:add	%t60	%t59	11
	str r6,[fp,r5]                                    	@IRInst:add	%t60	%t59	11
	mov r4,#28928                                     	@IRInst:mul	%t61	%t60	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t61	%t60	4
	mov r5,#4                                         	@IRInst:mul	%t61	%t60	4
	mul r6,r4,r5                                      	@IRInst:mul	%t61	%t60	4
	ldr r5,=28932                                     	@IRInst:mul	%t61	%t60	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t61	%t60	4
	add r4,fp,#4                                      	@IRInst:add	%t62	a	%t61
	ldr r5,=28932                                     	@IRInst:add	%t62	a	%t61
	ldr r5,[fp,r5]                                    	@IRInst:add	%t62	a	%t61
	add r6,r4,r5                                      	@IRInst:add	%t62	a	%t61
	ldr r5,=28936                                     	@IRInst:add	%t62	a	%t61
	str r6,[fp,r5]                                    	@IRInst:add	%t62	a	%t61
	ldr r5,=28936                                     	@IRInst:assign	%t62	11
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t62	11
	mov r4,#11                                        	@IRInst:assign	%t62	11
	str r4,[r5]                                       	@IRInst:assign	%t62	11
	mov r4,#6                                         	@IRInst:mul	%t63	6	59
	mov r5,#59                                        	@IRInst:mul	%t63	6	59
	mul r6,r4,r5                                      	@IRInst:mul	%t63	6	59
	ldr r5,=28940                                     	@IRInst:mul	%t63	6	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t63	6	59
	ldr r4,=28940                                     	@IRInst:add	%t64	%t63	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t64	%t63	1
	mov r5,#1                                         	@IRInst:add	%t64	%t63	1
	add r6,r4,r5                                      	@IRInst:add	%t64	%t63	1
	ldr r5,=28944                                     	@IRInst:add	%t64	%t63	1
	str r6,[fp,r5]                                    	@IRInst:add	%t64	%t63	1
	ldr r4,=28944                                     	@IRInst:mul	%t65	%t64	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t65	%t64	4
	mov r5,#4                                         	@IRInst:mul	%t65	%t64	4
	mul r6,r4,r5                                      	@IRInst:mul	%t65	%t64	4
	ldr r5,=28948                                     	@IRInst:mul	%t65	%t64	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t65	%t64	4
	ldr r4,=16352                                     	@IRInst:add	%t66	b	%t65
	add r4,fp,r4                                      	@IRInst:add	%t66	b	%t65
	ldr r5,=28948                                     	@IRInst:add	%t66	b	%t65
	ldr r5,[fp,r5]                                    	@IRInst:add	%t66	b	%t65
	add r6,r4,r5                                      	@IRInst:add	%t66	b	%t65
	ldr r5,=28952                                     	@IRInst:add	%t66	b	%t65
	str r6,[fp,r5]                                    	@IRInst:add	%t66	b	%t65
	ldr r5,=28952                                     	@IRInst:assign	%t66	1
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t66	1
	mov r4,#1                                         	@IRInst:assign	%t66	1
	str r4,[r5]                                       	@IRInst:assign	%t66	1
	mov r4,#6                                         	@IRInst:mul	%t67	6	59
	mov r5,#59                                        	@IRInst:mul	%t67	6	59
	mul r6,r4,r5                                      	@IRInst:mul	%t67	6	59
	ldr r5,=28956                                     	@IRInst:mul	%t67	6	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t67	6	59
	ldr r4,=28956                                     	@IRInst:add	%t68	%t67	2
	ldr r4,[fp,r4]                                    	@IRInst:add	%t68	%t67	2
	mov r5,#2                                         	@IRInst:add	%t68	%t67	2
	add r6,r4,r5                                      	@IRInst:add	%t68	%t67	2
	ldr r5,=28960                                     	@IRInst:add	%t68	%t67	2
	str r6,[fp,r5]                                    	@IRInst:add	%t68	%t67	2
	ldr r4,=28960                                     	@IRInst:mul	%t69	%t68	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t69	%t68	4
	mov r5,#4                                         	@IRInst:mul	%t69	%t68	4
	mul r6,r4,r5                                      	@IRInst:mul	%t69	%t68	4
	ldr r5,=28964                                     	@IRInst:mul	%t69	%t68	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t69	%t68	4
	ldr r4,=16352                                     	@IRInst:add	%t70	b	%t69
	add r4,fp,r4                                      	@IRInst:add	%t70	b	%t69
	ldr r5,=28964                                     	@IRInst:add	%t70	b	%t69
	ldr r5,[fp,r5]                                    	@IRInst:add	%t70	b	%t69
	add r6,r4,r5                                      	@IRInst:add	%t70	b	%t69
	ldr r5,=28968                                     	@IRInst:add	%t70	b	%t69
	str r6,[fp,r5]                                    	@IRInst:add	%t70	b	%t69
	ldr r5,=28968                                     	@IRInst:assign	%t70	2
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t70	2
	mov r4,#2                                         	@IRInst:assign	%t70	2
	str r4,[r5]                                       	@IRInst:assign	%t70	2
	mov r4,#6                                         	@IRInst:mul	%t71	6	59
	mov r5,#59                                        	@IRInst:mul	%t71	6	59
	mul r6,r4,r5                                      	@IRInst:mul	%t71	6	59
	ldr r5,=28972                                     	@IRInst:mul	%t71	6	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t71	6	59
	ldr r4,=28972                                     	@IRInst:add	%t72	%t71	3
	ldr r4,[fp,r4]                                    	@IRInst:add	%t72	%t71	3
	mov r5,#3                                         	@IRInst:add	%t72	%t71	3
	add r6,r4,r5                                      	@IRInst:add	%t72	%t71	3
	ldr r5,=28976                                     	@IRInst:add	%t72	%t71	3
	str r6,[fp,r5]                                    	@IRInst:add	%t72	%t71	3
	ldr r4,=28976                                     	@IRInst:mul	%t73	%t72	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t73	%t72	4
	mov r5,#4                                         	@IRInst:mul	%t73	%t72	4
	mul r6,r4,r5                                      	@IRInst:mul	%t73	%t72	4
	ldr r5,=28980                                     	@IRInst:mul	%t73	%t72	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t73	%t72	4
	ldr r4,=16352                                     	@IRInst:add	%t74	b	%t73
	add r4,fp,r4                                      	@IRInst:add	%t74	b	%t73
	ldr r5,=28980                                     	@IRInst:add	%t74	b	%t73
	ldr r5,[fp,r5]                                    	@IRInst:add	%t74	b	%t73
	add r6,r4,r5                                      	@IRInst:add	%t74	b	%t73
	ldr r5,=28984                                     	@IRInst:add	%t74	b	%t73
	str r6,[fp,r5]                                    	@IRInst:add	%t74	b	%t73
	ldr r5,=28984                                     	@IRInst:assign	%t74	3
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t74	3
	mov r4,#3                                         	@IRInst:assign	%t74	3
	str r4,[r5]                                       	@IRInst:assign	%t74	3
	mov r4,#6                                         	@IRInst:mul	%t75	6	59
	mov r5,#59                                        	@IRInst:mul	%t75	6	59
	mul r6,r4,r5                                      	@IRInst:mul	%t75	6	59
	ldr r5,=28988                                     	@IRInst:mul	%t75	6	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t75	6	59
	ldr r4,=28988                                     	@IRInst:add	%t76	%t75	9
	ldr r4,[fp,r4]                                    	@IRInst:add	%t76	%t75	9
	mov r5,#9                                         	@IRInst:add	%t76	%t75	9
	add r6,r4,r5                                      	@IRInst:add	%t76	%t75	9
	ldr r5,=28992                                     	@IRInst:add	%t76	%t75	9
	str r6,[fp,r5]                                    	@IRInst:add	%t76	%t75	9
	ldr r4,=28992                                     	@IRInst:mul	%t77	%t76	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t77	%t76	4
	mov r5,#4                                         	@IRInst:mul	%t77	%t76	4
	mul r6,r4,r5                                      	@IRInst:mul	%t77	%t76	4
	ldr r5,=28996                                     	@IRInst:mul	%t77	%t76	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t77	%t76	4
	ldr r4,=16352                                     	@IRInst:add	%t78	b	%t77
	add r4,fp,r4                                      	@IRInst:add	%t78	b	%t77
	ldr r5,=28996                                     	@IRInst:add	%t78	b	%t77
	ldr r5,[fp,r5]                                    	@IRInst:add	%t78	b	%t77
	add r6,r4,r5                                      	@IRInst:add	%t78	b	%t77
	ldr r5,=29000                                     	@IRInst:add	%t78	b	%t77
	str r6,[fp,r5]                                    	@IRInst:add	%t78	b	%t77
	ldr r5,=29000                                     	@IRInst:assign	%t78	9
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t78	9
	mov r4,#9                                         	@IRInst:assign	%t78	9
	str r4,[r5]                                       	@IRInst:assign	%t78	9
	mov r4,#17                                        	@IRInst:mul	%t80	17	67
	mov r5,#67                                        	@IRInst:mul	%t80	17	67
	mul r6,r4,r5                                      	@IRInst:mul	%t80	17	67
	ldr r5,=29008                                     	@IRInst:mul	%t80	17	67
	str r6,[fp,r5]                                    	@IRInst:mul	%t80	17	67
	ldr r4,=29008                                     	@IRInst:add	%t81	%t80	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t81	%t80	1
	mov r5,#1                                         	@IRInst:add	%t81	%t80	1
	add r6,r4,r5                                      	@IRInst:add	%t81	%t80	1
	ldr r5,=29012                                     	@IRInst:add	%t81	%t80	1
	str r6,[fp,r5]                                    	@IRInst:add	%t81	%t80	1
	ldr r4,=29012                                     	@IRInst:mul	%t82	%t81	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t82	%t81	4
	mov r5,#4                                         	@IRInst:mul	%t82	%t81	4
	mul r6,r4,r5                                      	@IRInst:mul	%t82	%t81	4
	ldr r5,=29016                                     	@IRInst:mul	%t82	%t81	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t82	%t81	4
	add r4,fp,#4                                      	@IRInst:add	%t83	a	%t82
	ldr r5,=29016                                     	@IRInst:add	%t83	a	%t82
	ldr r5,[fp,r5]                                    	@IRInst:add	%t83	a	%t82
	add r6,r4,r5                                      	@IRInst:add	%t83	a	%t82
	ldr r5,=29020                                     	@IRInst:add	%t83	a	%t82
	str r6,[fp,r5]                                    	@IRInst:add	%t83	a	%t82
	ldr r4,=29020                                     	@IRInst:assign	%t84	%t83
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t84	%t83
	ldr r4,[r4]                                       	@IRInst:assign	%t84	%t83
	ldr r9,=29024                                     	@IRInst:assign	%t84	%t83
	str r4,[fp,r9]                                    	@IRInst:assign	%t84	%t83
	mov r4,#17                                        	@IRInst:mul	%t85	17	67
	mov r5,#67                                        	@IRInst:mul	%t85	17	67
	mul r6,r4,r5                                      	@IRInst:mul	%t85	17	67
	ldr r5,=29028                                     	@IRInst:mul	%t85	17	67
	str r6,[fp,r5]                                    	@IRInst:mul	%t85	17	67
	ldr r4,=29028                                     	@IRInst:add	%t86	%t85	3
	ldr r4,[fp,r4]                                    	@IRInst:add	%t86	%t85	3
	mov r5,#3                                         	@IRInst:add	%t86	%t85	3
	add r6,r4,r5                                      	@IRInst:add	%t86	%t85	3
	ldr r5,=29032                                     	@IRInst:add	%t86	%t85	3
	str r6,[fp,r5]                                    	@IRInst:add	%t86	%t85	3
	ldr r4,=29032                                     	@IRInst:mul	%t87	%t86	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t87	%t86	4
	mov r5,#4                                         	@IRInst:mul	%t87	%t86	4
	mul r6,r4,r5                                      	@IRInst:mul	%t87	%t86	4
	ldr r5,=29036                                     	@IRInst:mul	%t87	%t86	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t87	%t86	4
	add r4,fp,#4                                      	@IRInst:add	%t88	a	%t87
	ldr r5,=29036                                     	@IRInst:add	%t88	a	%t87
	ldr r5,[fp,r5]                                    	@IRInst:add	%t88	a	%t87
	add r6,r4,r5                                      	@IRInst:add	%t88	a	%t87
	ldr r5,=29040                                     	@IRInst:add	%t88	a	%t87
	str r6,[fp,r5]                                    	@IRInst:add	%t88	a	%t87
	ldr r4,=29040                                     	@IRInst:assign	%t89	%t88
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t89	%t88
	ldr r4,[r4]                                       	@IRInst:assign	%t89	%t88
	ldr r9,=29044                                     	@IRInst:assign	%t89	%t88
	str r4,[fp,r9]                                    	@IRInst:assign	%t89	%t88
	mov r4,#17                                        	@IRInst:mul	%t90	17	67
	mov r5,#67                                        	@IRInst:mul	%t90	17	67
	mul r6,r4,r5                                      	@IRInst:mul	%t90	17	67
	ldr r5,=29048                                     	@IRInst:mul	%t90	17	67
	str r6,[fp,r5]                                    	@IRInst:mul	%t90	17	67
	ldr r4,=29048                                     	@IRInst:mul	%t91	%t90	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t91	%t90	4
	mov r5,#4                                         	@IRInst:mul	%t91	%t90	4
	mul r6,r4,r5                                      	@IRInst:mul	%t91	%t90	4
	ldr r5,=29052                                     	@IRInst:mul	%t91	%t90	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t91	%t90	4
	add r4,fp,#4                                      	@IRInst:add	%t92	a	%t91
	ldr r5,=29052                                     	@IRInst:add	%t92	a	%t91
	ldr r5,[fp,r5]                                    	@IRInst:add	%t92	a	%t91
	add r6,r4,r5                                      	@IRInst:add	%t92	a	%t91
	ldr r5,=29056                                     	@IRInst:add	%t92	a	%t91
	str r6,[fp,r5]                                    	@IRInst:add	%t92	a	%t91
	mov r4,#6                                         	@IRInst:mul	%t93	6	59
	mov r5,#59                                        	@IRInst:mul	%t93	6	59
	mul r6,r4,r5                                      	@IRInst:mul	%t93	6	59
	ldr r5,=29324                                     	@IRInst:mul	%t93	6	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t93	6	59
	ldr r4,=29324                                     	@IRInst:add	%t94	%t93	3
	ldr r4,[fp,r4]                                    	@IRInst:add	%t94	%t93	3
	mov r5,#3                                         	@IRInst:add	%t94	%t93	3
	add r6,r4,r5                                      	@IRInst:add	%t94	%t93	3
	ldr r5,=29328                                     	@IRInst:add	%t94	%t93	3
	str r6,[fp,r5]                                    	@IRInst:add	%t94	%t93	3
	ldr r4,=29328                                     	@IRInst:mul	%t95	%t94	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t95	%t94	4
	mov r5,#4                                         	@IRInst:mul	%t95	%t94	4
	mul r6,r4,r5                                      	@IRInst:mul	%t95	%t94	4
	ldr r5,=29332                                     	@IRInst:mul	%t95	%t94	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t95	%t94	4
	ldr r4,=16352                                     	@IRInst:add	%t96	b	%t95
	add r4,fp,r4                                      	@IRInst:add	%t96	b	%t95
	ldr r5,=29332                                     	@IRInst:add	%t96	b	%t95
	ldr r5,[fp,r5]                                    	@IRInst:add	%t96	b	%t95
	add r6,r4,r5                                      	@IRInst:add	%t96	b	%t95
	ldr r5,=29336                                     	@IRInst:add	%t96	b	%t95
	str r6,[fp,r5]                                    	@IRInst:add	%t96	b	%t95
	ldr r4,=29336                                     	@IRInst:assign	%t97	%t96
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t97	%t96
	ldr r4,[r4]                                       	@IRInst:assign	%t97	%t96
	ldr r9,=29340                                     	@IRInst:assign	%t97	%t96
	str r4,[fp,r9]                                    	@IRInst:assign	%t97	%t96
	mov r4,#6                                         	@IRInst:mul	%t98	6	59
	mov r5,#59                                        	@IRInst:mul	%t98	6	59
	mul r6,r4,r5                                      	@IRInst:mul	%t98	6	59
	ldr r5,=29344                                     	@IRInst:mul	%t98	6	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t98	6	59
	ldr r4,=29344                                     	@IRInst:add	%t99	%t98	0
	ldr r4,[fp,r4]                                    	@IRInst:add	%t99	%t98	0
	mov r5,#0                                         	@IRInst:add	%t99	%t98	0
	add r6,r4,r5                                      	@IRInst:add	%t99	%t98	0
	ldr r5,=29348                                     	@IRInst:add	%t99	%t98	0
	str r6,[fp,r5]                                    	@IRInst:add	%t99	%t98	0
	ldr r4,=29348                                     	@IRInst:mul	%t100	%t99	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t100	%t99	4
	mov r5,#4                                         	@IRInst:mul	%t100	%t99	4
	mul r6,r4,r5                                      	@IRInst:mul	%t100	%t99	4
	ldr r5,=29352                                     	@IRInst:mul	%t100	%t99	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t100	%t99	4
	ldr r4,=16352                                     	@IRInst:add	%t101	b	%t100
	add r4,fp,r4                                      	@IRInst:add	%t101	b	%t100
	ldr r5,=29352                                     	@IRInst:add	%t101	b	%t100
	ldr r5,[fp,r5]                                    	@IRInst:add	%t101	b	%t100
	add r6,r4,r5                                      	@IRInst:add	%t101	b	%t100
	ldr r5,=29356                                     	@IRInst:add	%t101	b	%t100
	str r6,[fp,r5]                                    	@IRInst:add	%t101	b	%t100
	ldr r4,=29356                                     	@IRInst:assign	%t102	%t101
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t102	%t101
	ldr r4,[r4]                                       	@IRInst:assign	%t102	%t101
	ldr r9,=29360                                     	@IRInst:assign	%t102	%t101
	str r4,[fp,r9]                                    	@IRInst:assign	%t102	%t101
	mov r4,#6                                         	@IRInst:mul	%t103	6	59
	mov r5,#59                                        	@IRInst:mul	%t103	6	59
	mul r6,r4,r5                                      	@IRInst:mul	%t103	6	59
	ldr r5,=29364                                     	@IRInst:mul	%t103	6	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t103	6	59
	ldr r4,=29364                                     	@IRInst:mul	%t104	%t103	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t104	%t103	4
	mov r5,#4                                         	@IRInst:mul	%t104	%t103	4
	mul r6,r4,r5                                      	@IRInst:mul	%t104	%t103	4
	ldr r5,=29368                                     	@IRInst:mul	%t104	%t103	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t104	%t103	4
	ldr r4,=16352                                     	@IRInst:add	%t105	b	%t104
	add r4,fp,r4                                      	@IRInst:add	%t105	b	%t104
	ldr r5,=29368                                     	@IRInst:add	%t105	b	%t104
	ldr r5,[fp,r5]                                    	@IRInst:add	%t105	b	%t104
	add r6,r4,r5                                      	@IRInst:add	%t105	b	%t104
	ldr r5,=29372                                     	@IRInst:add	%t105	b	%t104
	str r6,[fp,r5]                                    	@IRInst:add	%t105	b	%t104
	mov r4,#34                                        	@IRInst:mul	%t106	34	59
	mov r5,#59                                        	@IRInst:mul	%t106	34	59
	mul r6,r4,r5                                      	@IRInst:mul	%t106	34	59
	ldr r5,=29608                                     	@IRInst:mul	%t106	34	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t106	34	59
	ldr r4,=29608                                     	@IRInst:add	%t107	%t106	4
	ldr r4,[fp,r4]                                    	@IRInst:add	%t107	%t106	4
	mov r5,#4                                         	@IRInst:add	%t107	%t106	4
	add r6,r4,r5                                      	@IRInst:add	%t107	%t106	4
	ldr r5,=29612                                     	@IRInst:add	%t107	%t106	4
	str r6,[fp,r5]                                    	@IRInst:add	%t107	%t106	4
	ldr r4,=29612                                     	@IRInst:mul	%t108	%t107	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t108	%t107	4
	mov r5,#4                                         	@IRInst:mul	%t108	%t107	4
	mul r6,r4,r5                                      	@IRInst:mul	%t108	%t107	4
	ldr r5,=29616                                     	@IRInst:mul	%t108	%t107	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t108	%t107	4
	ldr r4,=16352                                     	@IRInst:add	%t109	b	%t108
	add r4,fp,r4                                      	@IRInst:add	%t109	b	%t108
	ldr r5,=29616                                     	@IRInst:add	%t109	b	%t108
	ldr r5,[fp,r5]                                    	@IRInst:add	%t109	b	%t108
	add r6,r4,r5                                      	@IRInst:add	%t109	b	%t108
	ldr r5,=29620                                     	@IRInst:add	%t109	b	%t108
	str r6,[fp,r5]                                    	@IRInst:add	%t109	b	%t108
	ldr r4,=29620                                     	@IRInst:assign	%t110	%t109
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t110	%t109
	ldr r4,[r4]                                       	@IRInst:assign	%t110	%t109
	ldr r9,=29624                                     	@IRInst:assign	%t110	%t109
	str r4,[fp,r9]                                    	@IRInst:assign	%t110	%t109
	mov r4,#51                                        	@IRInst:mul	%t111	51	59
	mov r5,#59                                        	@IRInst:mul	%t111	51	59
	mul r6,r4,r5                                      	@IRInst:mul	%t111	51	59
	ldr r5,=29628                                     	@IRInst:mul	%t111	51	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t111	51	59
	ldr r4,=29628                                     	@IRInst:add	%t112	%t111	18
	ldr r4,[fp,r4]                                    	@IRInst:add	%t112	%t111	18
	mov r5,#18                                        	@IRInst:add	%t112	%t111	18
	add r6,r4,r5                                      	@IRInst:add	%t112	%t111	18
	ldr r5,=29632                                     	@IRInst:add	%t112	%t111	18
	str r6,[fp,r5]                                    	@IRInst:add	%t112	%t111	18
	ldr r4,=29632                                     	@IRInst:mul	%t113	%t112	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t113	%t112	4
	mov r5,#4                                         	@IRInst:mul	%t113	%t112	4
	mul r6,r4,r5                                      	@IRInst:mul	%t113	%t112	4
	ldr r5,=29636                                     	@IRInst:mul	%t113	%t112	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t113	%t112	4
	ldr r4,=16352                                     	@IRInst:add	%t114	b	%t113
	add r4,fp,r4                                      	@IRInst:add	%t114	b	%t113
	ldr r5,=29636                                     	@IRInst:add	%t114	b	%t113
	ldr r5,[fp,r5]                                    	@IRInst:add	%t114	b	%t113
	add r6,r4,r5                                      	@IRInst:add	%t114	b	%t113
	ldr r5,=29640                                     	@IRInst:add	%t114	b	%t113
	str r6,[fp,r5]                                    	@IRInst:add	%t114	b	%t113
	ldr r4,=29640                                     	@IRInst:assign	%t115	%t114
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t115	%t114
	ldr r4,[r4]                                       	@IRInst:assign	%t115	%t114
	ldr r9,=29644                                     	@IRInst:assign	%t115	%t114
	str r4,[fp,r9]                                    	@IRInst:assign	%t115	%t114
	ldr r4,=29340                                     	@IRInst:assign	%m130	%t97
	ldr r4,[fp,r4]                                    	@IRInst:assign	%m130	%t97
	str r4,[sp]                                       	@IRInst:assign	%m130	%t97
	ldr r4,=29360                                     	@IRInst:assign	%m131	%t102
	ldr r4,[fp,r4]                                    	@IRInst:assign	%m131	%t102
	str r4,[sp,#4]                                    	@IRInst:assign	%m131	%t102
	ldr r4,=29372                                     	@IRInst:assign	%m132	%t105
	ldr r4,[fp,r4]                                    	@IRInst:assign	%m132	%t105
	ldr r4,[r4]                                       	@IRInst:assign	%m132	%t105
	str r4,[sp,#8]                                    	@IRInst:assign	%m132	%t105
	ldr r4,=29624                                     	@IRInst:assign	%m133	%t110
	ldr r4,[fp,r4]                                    	@IRInst:assign	%m133	%t110
	str r4,[sp,#12]                                   	@IRInst:assign	%m133	%t110
	ldr r4,=29644                                     	@IRInst:assign	%m134	%t115
	ldr r4,[fp,r4]                                    	@IRInst:assign	%m134	%t115
	str r4,[sp,#16]                                   	@IRInst:assign	%m134	%t115
	ldr r0,=29024                                     	@IRInst:assign	r0	%t84
	ldr r0,[fp,r0]                                    	@IRInst:assign	r0	%t84
	ldr r1,=16352                                     	@IRInst:assign	r1	b
	add r1,fp,r1                                      	@IRInst:assign	r1	b
	ldr r2,=29044                                     	@IRInst:assign	r2	%t89
	ldr r2,[fp,r2]                                    	@IRInst:assign	r2	%t89
	ldr r3,=29056                                     	@IRInst:assign	r3	%t92
	ldr r3,[fp,r3]                                    	@IRInst:assign	r3	%t92
	bl func                                           
	ldr r9,=29648                                     	@IRInst:assign	%t116	r0
	str r0,[fp,r9]                                    	@IRInst:assign	%t116	r0
	ldr r4,=29648                                     	@IRInst:mul	%t117	%t116	3
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t117	%t116	3
	mov r5,#3                                         	@IRInst:mul	%t117	%t116	3
	mul r6,r4,r5                                      	@IRInst:mul	%t117	%t116	3
	ldr r5,=29652                                     	@IRInst:mul	%t117	%t116	3
	str r6,[fp,r5]                                    	@IRInst:mul	%t117	%t116	3
	ldr r4,=29652                                     	@IRInst:assign	ret	%t117
	ldr r4,[fp,r4]                                    	@IRInst:assign	ret	%t117
	ldr r9,=29004                                     	@IRInst:assign	ret	%t117
	str r4,[fp,r9]                                    	@IRInst:assign	ret	%t117
.L11:
	ldr r4,=29004                                     	@IRInst:bge	%t118	ret	0
	ldr r4,[fp,r4]                                    	@IRInst:bge	%t118	ret	0
	mov r5,#0                                         	@IRInst:bge	%t118	ret	0
	cmp r4,r5                                         	@IRInst:bge	%t118	ret	0
	movge r6,#1                                       	@IRInst:bge	%t118	ret	0
	movlt r6,#0                                       	@IRInst:bge	%t118	ret	0
	ldr r10,=29656                                    	@IRInst:bge	%t118	ret	0
	str r6,[fp,r10]                                   	@IRInst:bge	%t118	ret	0
	bge .L12                                          
	b .L13                                            
.L12:
	mov r4,#6                                         	@IRInst:mul	%t119	6	59
	mov r5,#59                                        	@IRInst:mul	%t119	6	59
	mul r6,r4,r5                                      	@IRInst:mul	%t119	6	59
	ldr r5,=29660                                     	@IRInst:mul	%t119	6	59
	str r6,[fp,r5]                                    	@IRInst:mul	%t119	6	59
	ldr r4,=29660                                     	@IRInst:add	%t120	%t119	ret
	ldr r4,[fp,r4]                                    	@IRInst:add	%t120	%t119	ret
	ldr r5,=29004                                     	@IRInst:add	%t120	%t119	ret
	ldr r5,[fp,r5]                                    	@IRInst:add	%t120	%t119	ret
	add r6,r4,r5                                      	@IRInst:add	%t120	%t119	ret
	ldr r5,=29664                                     	@IRInst:add	%t120	%t119	ret
	str r6,[fp,r5]                                    	@IRInst:add	%t120	%t119	ret
	ldr r4,=29664                                     	@IRInst:mul	%t121	%t120	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t121	%t120	4
	mov r5,#4                                         	@IRInst:mul	%t121	%t120	4
	mul r6,r4,r5                                      	@IRInst:mul	%t121	%t120	4
	ldr r5,=29668                                     	@IRInst:mul	%t121	%t120	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t121	%t120	4
	ldr r4,=16352                                     	@IRInst:add	%t122	b	%t121
	add r4,fp,r4                                      	@IRInst:add	%t122	b	%t121
	ldr r5,=29668                                     	@IRInst:add	%t122	b	%t121
	ldr r5,[fp,r5]                                    	@IRInst:add	%t122	b	%t121
	add r6,r4,r5                                      	@IRInst:add	%t122	b	%t121
	ldr r5,=29672                                     	@IRInst:add	%t122	b	%t121
	str r6,[fp,r5]                                    	@IRInst:add	%t122	b	%t121
	ldr r4,=29672                                     	@IRInst:assign	%t123	%t122
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t123	%t122
	ldr r4,[r4]                                       	@IRInst:assign	%t123	%t122
	ldr r9,=29676                                     	@IRInst:assign	%t123	%t122
	str r4,[fp,r9]                                    	@IRInst:assign	%t123	%t122
	ldr r0,=29676                                     	@IRInst:assign	r0	%t123
	ldr r0,[fp,r0]                                    	@IRInst:assign	r0	%t123
	bl putint                                         
	mov r0,#32                                        	@IRInst:assign	r0	32
	bl putch                                          
	ldr r4,=29004                                     	@IRInst:sub	%t124	ret	1
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t124	ret	1
	mov r5,#1                                         	@IRInst:sub	%t124	ret	1
	sub r6,r4,r5                                      	@IRInst:sub	%t124	ret	1
	ldr r5,=29680                                     	@IRInst:sub	%t124	ret	1
	str r6,[fp,r5]                                    	@IRInst:sub	%t124	ret	1
	ldr r4,=29680                                     	@IRInst:assign	ret	%t124
	ldr r4,[fp,r4]                                    	@IRInst:assign	ret	%t124
	ldr r9,=29004                                     	@IRInst:assign	ret	%t124
	str r4,[fp,r9]                                    	@IRInst:assign	ret	%t124
	b .L11                                            
.L13:
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L10                                            
.L10:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1012                                   
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
