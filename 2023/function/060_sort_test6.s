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
.global counting_sort
.type counting_sort, %function
counting_sort:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#304                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	ini_arr	r0
	str r1,[fp,#8]                                    	@IRInst:assign	sorted_arr	r1
	str r2,[fp,#12]                                   	@IRInst:assign	n	r2
	mov r4,#0                                         	@IRInst:assign	k	0
	str r4,[fp,#64]                                   	@IRInst:assign	k	0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#56]                                   	@IRInst:assign	i	0
	mov r4,#0                                         	@IRInst:assign	j	0
	str r4,[fp,#60]                                   	@IRInst:assign	j	0
.L3:
	ldr r4,[fp,#64]                                   	@IRInst:blt	%t12	k	10
	mov r5,#10                                        	@IRInst:blt	%t12	k	10
	cmp r4,r5                                         	@IRInst:blt	%t12	k	10
	blt .L4                                           
	b .L5                                             
.L4:
	ldr r4,[fp,#64]                                   	@IRInst:mul	%t13	k	4
	mov r5,#4                                         	@IRInst:mul	%t13	k	4
	mul r6,r4,r5                                      	@IRInst:mul	%t13	k	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t13	k	4
	add r4,fp,#16                                     	@IRInst:add	%t14	count_arr	%t13
	ldr r5,[fp,#72]                                   	@IRInst:add	%t14	count_arr	%t13
	add r6,r4,r5                                      	@IRInst:add	%t14	count_arr	%t13
	str r6,[fp,#76]                                   	@IRInst:add	%t14	count_arr	%t13
	ldr r5,[fp,#76]                                   	@IRInst:assign	%t14	0
	mov r4,#0                                         	@IRInst:assign	%t14	0
	str r4,[r5]                                       	@IRInst:assign	%t14	0
	ldr r4,[fp,#64]                                   	@IRInst:add	%t15	k	1
	mov r5,#1                                         	@IRInst:add	%t15	k	1
	add r6,r4,r5                                      	@IRInst:add	%t15	k	1
	str r6,[fp,#80]                                   	@IRInst:add	%t15	k	1
	ldr r4,[fp,#80]                                   	@IRInst:assign	k	%t15
	str r4,[fp,#64]                                   	@IRInst:assign	k	%t15
	b .L3                                             
.L5:
.L6:
	ldr r4,[fp,#56]                                   	@IRInst:blt	%t16	i	n
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t16	i	n
	cmp r4,r5                                         	@IRInst:blt	%t16	i	n
	blt .L7                                           
	b .L8                                             
.L7:
	ldr r4,[fp,#56]                                   	@IRInst:mul	%t23	i	4
	mov r5,#4                                         	@IRInst:mul	%t23	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t23	i	4
	str r6,[fp,#112]                                  	@IRInst:mul	%t23	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t24	ini_arr	%t23
	ldr r5,[fp,#112]                                  	@IRInst:add	%t24	ini_arr	%t23
	add r6,r4,r5                                      	@IRInst:add	%t24	ini_arr	%t23
	str r6,[fp,#116]                                  	@IRInst:add	%t24	ini_arr	%t23
	ldr r4,[fp,#116]                                  	@IRInst:assign	%t25	%t24
	ldr r4,[r4]                                       	@IRInst:assign	%t25	%t24
	str r4,[fp,#120]                                  	@IRInst:assign	%t25	%t24
	ldr r4,[fp,#120]                                  	@IRInst:mul	%t22	%t25	4
	mov r5,#4                                         	@IRInst:mul	%t22	%t25	4
	mul r6,r4,r5                                      	@IRInst:mul	%t22	%t25	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t22	%t25	4
	add r4,fp,#16                                     	@IRInst:add	%t26	count_arr	%t22
	ldr r5,[fp,#108]                                  	@IRInst:add	%t26	count_arr	%t22
	add r6,r4,r5                                      	@IRInst:add	%t26	count_arr	%t22
	str r6,[fp,#124]                                  	@IRInst:add	%t26	count_arr	%t22
	ldr r4,[fp,#124]                                  	@IRInst:assign	%t27	%t26
	ldr r4,[r4]                                       	@IRInst:assign	%t27	%t26
	str r4,[fp,#128]                                  	@IRInst:assign	%t27	%t26
	ldr r4,[fp,#128]                                  	@IRInst:add	%t28	%t27	1
	mov r5,#1                                         	@IRInst:add	%t28	%t27	1
	add r6,r4,r5                                      	@IRInst:add	%t28	%t27	1
	str r6,[fp,#132]                                  	@IRInst:add	%t28	%t27	1
	ldr r4,[fp,#56]                                   	@IRInst:mul	%t18	i	4
	mov r5,#4                                         	@IRInst:mul	%t18	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t18	i	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t18	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t19	ini_arr	%t18
	ldr r5,[fp,#92]                                   	@IRInst:add	%t19	ini_arr	%t18
	add r6,r4,r5                                      	@IRInst:add	%t19	ini_arr	%t18
	str r6,[fp,#96]                                   	@IRInst:add	%t19	ini_arr	%t18
	ldr r4,[fp,#96]                                   	@IRInst:assign	%t20	%t19
	ldr r4,[r4]                                       	@IRInst:assign	%t20	%t19
	str r4,[fp,#100]                                  	@IRInst:assign	%t20	%t19
	ldr r4,[fp,#100]                                  	@IRInst:mul	%t17	%t20	4
	mov r5,#4                                         	@IRInst:mul	%t17	%t20	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	%t20	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t17	%t20	4
	add r4,fp,#16                                     	@IRInst:add	%t21	count_arr	%t17
	ldr r5,[fp,#88]                                   	@IRInst:add	%t21	count_arr	%t17
	add r6,r4,r5                                      	@IRInst:add	%t21	count_arr	%t17
	str r6,[fp,#104]                                  	@IRInst:add	%t21	count_arr	%t17
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t21	%t28
	ldr r4,[fp,#132]                                  	@IRInst:assign	%t21	%t28
	str r4,[r5]                                       	@IRInst:assign	%t21	%t28
	ldr r4,[fp,#56]                                   	@IRInst:add	%t29	i	1
	mov r5,#1                                         	@IRInst:add	%t29	i	1
	add r6,r4,r5                                      	@IRInst:add	%t29	i	1
	str r6,[fp,#136]                                  	@IRInst:add	%t29	i	1
	ldr r4,[fp,#136]                                  	@IRInst:assign	i	%t29
	str r4,[fp,#56]                                   	@IRInst:assign	i	%t29
	b .L6                                             
.L8:
	mov r4,#1                                         	@IRInst:assign	k	1
	str r4,[fp,#64]                                   	@IRInst:assign	k	1
.L9:
	ldr r4,[fp,#64]                                   	@IRInst:blt	%t30	k	10
	mov r5,#10                                        	@IRInst:blt	%t30	k	10
	cmp r4,r5                                         	@IRInst:blt	%t30	k	10
	blt .L10                                          
	b .L11                                            
.L10:
	ldr r4,[fp,#64]                                   	@IRInst:mul	%t33	k	4
	mov r5,#4                                         	@IRInst:mul	%t33	k	4
	mul r6,r4,r5                                      	@IRInst:mul	%t33	k	4
	str r6,[fp,#152]                                  	@IRInst:mul	%t33	k	4
	add r4,fp,#16                                     	@IRInst:add	%t34	count_arr	%t33
	ldr r5,[fp,#152]                                  	@IRInst:add	%t34	count_arr	%t33
	add r6,r4,r5                                      	@IRInst:add	%t34	count_arr	%t33
	str r6,[fp,#156]                                  	@IRInst:add	%t34	count_arr	%t33
	ldr r4,[fp,#156]                                  	@IRInst:assign	%t35	%t34
	ldr r4,[r4]                                       	@IRInst:assign	%t35	%t34
	str r4,[fp,#160]                                  	@IRInst:assign	%t35	%t34
	ldr r4,[fp,#64]                                   	@IRInst:sub	%t37	k	1
	mov r5,#1                                         	@IRInst:sub	%t37	k	1
	sub r6,r4,r5                                      	@IRInst:sub	%t37	k	1
	str r6,[fp,#168]                                  	@IRInst:sub	%t37	k	1
	ldr r4,[fp,#168]                                  	@IRInst:mul	%t36	%t37	4
	mov r5,#4                                         	@IRInst:mul	%t36	%t37	4
	mul r6,r4,r5                                      	@IRInst:mul	%t36	%t37	4
	str r6,[fp,#164]                                  	@IRInst:mul	%t36	%t37	4
	add r4,fp,#16                                     	@IRInst:add	%t38	count_arr	%t36
	ldr r5,[fp,#164]                                  	@IRInst:add	%t38	count_arr	%t36
	add r6,r4,r5                                      	@IRInst:add	%t38	count_arr	%t36
	str r6,[fp,#172]                                  	@IRInst:add	%t38	count_arr	%t36
	ldr r4,[fp,#172]                                  	@IRInst:assign	%t39	%t38
	ldr r4,[r4]                                       	@IRInst:assign	%t39	%t38
	str r4,[fp,#176]                                  	@IRInst:assign	%t39	%t38
	ldr r4,[fp,#160]                                  	@IRInst:add	%t40	%t35	%t39
	ldr r5,[fp,#176]                                  	@IRInst:add	%t40	%t35	%t39
	add r6,r4,r5                                      	@IRInst:add	%t40	%t35	%t39
	str r6,[fp,#180]                                  	@IRInst:add	%t40	%t35	%t39
	ldr r4,[fp,#64]                                   	@IRInst:mul	%t31	k	4
	mov r5,#4                                         	@IRInst:mul	%t31	k	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	k	4
	str r6,[fp,#144]                                  	@IRInst:mul	%t31	k	4
	add r4,fp,#16                                     	@IRInst:add	%t32	count_arr	%t31
	ldr r5,[fp,#144]                                  	@IRInst:add	%t32	count_arr	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	count_arr	%t31
	str r6,[fp,#148]                                  	@IRInst:add	%t32	count_arr	%t31
	ldr r5,[fp,#148]                                  	@IRInst:assign	%t32	%t40
	ldr r4,[fp,#180]                                  	@IRInst:assign	%t32	%t40
	str r4,[r5]                                       	@IRInst:assign	%t32	%t40
	ldr r4,[fp,#64]                                   	@IRInst:add	%t41	k	1
	mov r5,#1                                         	@IRInst:add	%t41	k	1
	add r6,r4,r5                                      	@IRInst:add	%t41	k	1
	str r6,[fp,#184]                                  	@IRInst:add	%t41	k	1
	ldr r4,[fp,#184]                                  	@IRInst:assign	k	%t41
	str r4,[fp,#64]                                   	@IRInst:assign	k	%t41
	b .L9                                             
.L11:
	ldr r4,[fp,#12]                                   	@IRInst:assign	j	n
	str r4,[fp,#60]                                   	@IRInst:assign	j	n
.L12:
	ldr r4,[fp,#60]                                   	@IRInst:bgt	%t42	j	0
	mov r5,#0                                         	@IRInst:bgt	%t42	j	0
	cmp r4,r5                                         	@IRInst:bgt	%t42	j	0
	bgt .L13                                          
	b .L14                                            
.L13:
	ldr r4,[fp,#60]                                   	@IRInst:sub	%t51	j	1
	mov r5,#1                                         	@IRInst:sub	%t51	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t51	j	1
	str r6,[fp,#224]                                  	@IRInst:sub	%t51	j	1
	ldr r4,[fp,#224]                                  	@IRInst:mul	%t50	%t51	4
	mov r5,#4                                         	@IRInst:mul	%t50	%t51	4
	mul r6,r4,r5                                      	@IRInst:mul	%t50	%t51	4
	str r6,[fp,#220]                                  	@IRInst:mul	%t50	%t51	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t52	ini_arr	%t50
	ldr r5,[fp,#220]                                  	@IRInst:add	%t52	ini_arr	%t50
	add r6,r4,r5                                      	@IRInst:add	%t52	ini_arr	%t50
	str r6,[fp,#228]                                  	@IRInst:add	%t52	ini_arr	%t50
	ldr r4,[fp,#228]                                  	@IRInst:assign	%t53	%t52
	ldr r4,[r4]                                       	@IRInst:assign	%t53	%t52
	str r4,[fp,#232]                                  	@IRInst:assign	%t53	%t52
	ldr r4,[fp,#232]                                  	@IRInst:mul	%t49	%t53	4
	mov r5,#4                                         	@IRInst:mul	%t49	%t53	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t53	4
	str r6,[fp,#216]                                  	@IRInst:mul	%t49	%t53	4
	add r4,fp,#16                                     	@IRInst:add	%t54	count_arr	%t49
	ldr r5,[fp,#216]                                  	@IRInst:add	%t54	count_arr	%t49
	add r6,r4,r5                                      	@IRInst:add	%t54	count_arr	%t49
	str r6,[fp,#236]                                  	@IRInst:add	%t54	count_arr	%t49
	ldr r4,[fp,#236]                                  	@IRInst:assign	%t55	%t54
	ldr r4,[r4]                                       	@IRInst:assign	%t55	%t54
	str r4,[fp,#240]                                  	@IRInst:assign	%t55	%t54
	ldr r4,[fp,#240]                                  	@IRInst:sub	%t56	%t55	1
	mov r5,#1                                         	@IRInst:sub	%t56	%t55	1
	sub r6,r4,r5                                      	@IRInst:sub	%t56	%t55	1
	str r6,[fp,#244]                                  	@IRInst:sub	%t56	%t55	1
	ldr r4,[fp,#60]                                   	@IRInst:sub	%t45	j	1
	mov r5,#1                                         	@IRInst:sub	%t45	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t45	j	1
	str r6,[fp,#200]                                  	@IRInst:sub	%t45	j	1
	ldr r4,[fp,#200]                                  	@IRInst:mul	%t44	%t45	4
	mov r5,#4                                         	@IRInst:mul	%t44	%t45	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	%t45	4
	str r6,[fp,#196]                                  	@IRInst:mul	%t44	%t45	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t46	ini_arr	%t44
	ldr r5,[fp,#196]                                  	@IRInst:add	%t46	ini_arr	%t44
	add r6,r4,r5                                      	@IRInst:add	%t46	ini_arr	%t44
	str r6,[fp,#204]                                  	@IRInst:add	%t46	ini_arr	%t44
	ldr r4,[fp,#204]                                  	@IRInst:assign	%t47	%t46
	ldr r4,[r4]                                       	@IRInst:assign	%t47	%t46
	str r4,[fp,#208]                                  	@IRInst:assign	%t47	%t46
	ldr r4,[fp,#208]                                  	@IRInst:mul	%t43	%t47	4
	mov r5,#4                                         	@IRInst:mul	%t43	%t47	4
	mul r6,r4,r5                                      	@IRInst:mul	%t43	%t47	4
	str r6,[fp,#192]                                  	@IRInst:mul	%t43	%t47	4
	add r4,fp,#16                                     	@IRInst:add	%t48	count_arr	%t43
	ldr r5,[fp,#192]                                  	@IRInst:add	%t48	count_arr	%t43
	add r6,r4,r5                                      	@IRInst:add	%t48	count_arr	%t43
	str r6,[fp,#212]                                  	@IRInst:add	%t48	count_arr	%t43
	ldr r5,[fp,#212]                                  	@IRInst:assign	%t48	%t56
	ldr r4,[fp,#244]                                  	@IRInst:assign	%t48	%t56
	str r4,[r5]                                       	@IRInst:assign	%t48	%t56
	ldr r4,[fp,#60]                                   	@IRInst:sub	%t67	j	1
	mov r5,#1                                         	@IRInst:sub	%t67	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t67	j	1
	str r6,[fp,#288]                                  	@IRInst:sub	%t67	j	1
	ldr r4,[fp,#288]                                  	@IRInst:mul	%t66	%t67	4
	mov r5,#4                                         	@IRInst:mul	%t66	%t67	4
	mul r6,r4,r5                                      	@IRInst:mul	%t66	%t67	4
	str r6,[fp,#284]                                  	@IRInst:mul	%t66	%t67	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t68	ini_arr	%t66
	ldr r5,[fp,#284]                                  	@IRInst:add	%t68	ini_arr	%t66
	add r6,r4,r5                                      	@IRInst:add	%t68	ini_arr	%t66
	str r6,[fp,#292]                                  	@IRInst:add	%t68	ini_arr	%t66
	ldr r4,[fp,#292]                                  	@IRInst:assign	%t69	%t68
	ldr r4,[r4]                                       	@IRInst:assign	%t69	%t68
	str r4,[fp,#296]                                  	@IRInst:assign	%t69	%t68
	ldr r4,[fp,#60]                                   	@IRInst:sub	%t60	j	1
	mov r5,#1                                         	@IRInst:sub	%t60	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t60	j	1
	str r6,[fp,#260]                                  	@IRInst:sub	%t60	j	1
	ldr r4,[fp,#260]                                  	@IRInst:mul	%t59	%t60	4
	mov r5,#4                                         	@IRInst:mul	%t59	%t60	4
	mul r6,r4,r5                                      	@IRInst:mul	%t59	%t60	4
	str r6,[fp,#256]                                  	@IRInst:mul	%t59	%t60	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t61	ini_arr	%t59
	ldr r5,[fp,#256]                                  	@IRInst:add	%t61	ini_arr	%t59
	add r6,r4,r5                                      	@IRInst:add	%t61	ini_arr	%t59
	str r6,[fp,#264]                                  	@IRInst:add	%t61	ini_arr	%t59
	ldr r4,[fp,#264]                                  	@IRInst:assign	%t62	%t61
	ldr r4,[r4]                                       	@IRInst:assign	%t62	%t61
	str r4,[fp,#268]                                  	@IRInst:assign	%t62	%t61
	ldr r4,[fp,#268]                                  	@IRInst:mul	%t58	%t62	4
	mov r5,#4                                         	@IRInst:mul	%t58	%t62	4
	mul r6,r4,r5                                      	@IRInst:mul	%t58	%t62	4
	str r6,[fp,#252]                                  	@IRInst:mul	%t58	%t62	4
	add r4,fp,#16                                     	@IRInst:add	%t63	count_arr	%t58
	ldr r5,[fp,#252]                                  	@IRInst:add	%t63	count_arr	%t58
	add r6,r4,r5                                      	@IRInst:add	%t63	count_arr	%t58
	str r6,[fp,#272]                                  	@IRInst:add	%t63	count_arr	%t58
	ldr r4,[fp,#272]                                  	@IRInst:assign	%t64	%t63
	ldr r4,[r4]                                       	@IRInst:assign	%t64	%t63
	str r4,[fp,#276]                                  	@IRInst:assign	%t64	%t63
	ldr r4,[fp,#276]                                  	@IRInst:mul	%t57	%t64	4
	mov r5,#4                                         	@IRInst:mul	%t57	%t64	4
	mul r6,r4,r5                                      	@IRInst:mul	%t57	%t64	4
	str r6,[fp,#248]                                  	@IRInst:mul	%t57	%t64	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t65	sorted_arr	%t57
	ldr r5,[fp,#248]                                  	@IRInst:add	%t65	sorted_arr	%t57
	add r6,r4,r5                                      	@IRInst:add	%t65	sorted_arr	%t57
	str r6,[fp,#280]                                  	@IRInst:add	%t65	sorted_arr	%t57
	ldr r5,[fp,#280]                                  	@IRInst:assign	%t65	%t69
	ldr r4,[fp,#296]                                  	@IRInst:assign	%t65	%t69
	str r4,[r5]                                       	@IRInst:assign	%t65	%t69
	ldr r4,[fp,#60]                                   	@IRInst:sub	%t70	j	1
	mov r5,#1                                         	@IRInst:sub	%t70	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t70	j	1
	str r6,[fp,#300]                                  	@IRInst:sub	%t70	j	1
	ldr r4,[fp,#300]                                  	@IRInst:assign	j	%t70
	str r4,[fp,#60]                                   	@IRInst:assign	j	%t70
	b .L12                                            
.L14:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#304                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_n:
        .long   n
.global main
.type main, %function
main:
.L15:
	push {r10,fp,lr}                                  
	sub sp,sp,#196                                    
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	n	10
	ldr r9,.global_1_n                                	@IRInst:assign	n	10
	str r4,[r9]                                       	@IRInst:assign	n	10
	mov r4,#0                                         	@IRInst:mul	%t73	0	4
	mov r5,#4                                         	@IRInst:mul	%t73	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t73	0	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t73	0	4
	add r4,fp,#4                                      	@IRInst:add	%t74	a	%t73
	ldr r5,[fp,#44]                                   	@IRInst:add	%t74	a	%t73
	add r6,r4,r5                                      	@IRInst:add	%t74	a	%t73
	str r6,[fp,#48]                                   	@IRInst:add	%t74	a	%t73
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t74	4
	mov r4,#4                                         	@IRInst:assign	%t74	4
	str r4,[r5]                                       	@IRInst:assign	%t74	4
	mov r4,#1                                         	@IRInst:mul	%t75	1	4
	mov r5,#4                                         	@IRInst:mul	%t75	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t75	1	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t75	1	4
	add r4,fp,#4                                      	@IRInst:add	%t76	a	%t75
	ldr r5,[fp,#52]                                   	@IRInst:add	%t76	a	%t75
	add r6,r4,r5                                      	@IRInst:add	%t76	a	%t75
	str r6,[fp,#56]                                   	@IRInst:add	%t76	a	%t75
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t76	3
	mov r4,#3                                         	@IRInst:assign	%t76	3
	str r4,[r5]                                       	@IRInst:assign	%t76	3
	mov r4,#2                                         	@IRInst:mul	%t77	2	4
	mov r5,#4                                         	@IRInst:mul	%t77	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t77	2	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t77	2	4
	add r4,fp,#4                                      	@IRInst:add	%t78	a	%t77
	ldr r5,[fp,#60]                                   	@IRInst:add	%t78	a	%t77
	add r6,r4,r5                                      	@IRInst:add	%t78	a	%t77
	str r6,[fp,#64]                                   	@IRInst:add	%t78	a	%t77
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t78	9
	mov r4,#9                                         	@IRInst:assign	%t78	9
	str r4,[r5]                                       	@IRInst:assign	%t78	9
	mov r4,#3                                         	@IRInst:mul	%t79	3	4
	mov r5,#4                                         	@IRInst:mul	%t79	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t79	3	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t79	3	4
	add r4,fp,#4                                      	@IRInst:add	%t80	a	%t79
	ldr r5,[fp,#68]                                   	@IRInst:add	%t80	a	%t79
	add r6,r4,r5                                      	@IRInst:add	%t80	a	%t79
	str r6,[fp,#72]                                   	@IRInst:add	%t80	a	%t79
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t80	2
	mov r4,#2                                         	@IRInst:assign	%t80	2
	str r4,[r5]                                       	@IRInst:assign	%t80	2
	mov r4,#4                                         	@IRInst:mul	%t81	4	4
	mov r5,#4                                         	@IRInst:mul	%t81	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t81	4	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t81	4	4
	add r4,fp,#4                                      	@IRInst:add	%t82	a	%t81
	ldr r5,[fp,#76]                                   	@IRInst:add	%t82	a	%t81
	add r6,r4,r5                                      	@IRInst:add	%t82	a	%t81
	str r6,[fp,#80]                                   	@IRInst:add	%t82	a	%t81
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t82	0
	mov r4,#0                                         	@IRInst:assign	%t82	0
	str r4,[r5]                                       	@IRInst:assign	%t82	0
	mov r4,#5                                         	@IRInst:mul	%t83	5	4
	mov r5,#4                                         	@IRInst:mul	%t83	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t83	5	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t83	5	4
	add r4,fp,#4                                      	@IRInst:add	%t84	a	%t83
	ldr r5,[fp,#84]                                   	@IRInst:add	%t84	a	%t83
	add r6,r4,r5                                      	@IRInst:add	%t84	a	%t83
	str r6,[fp,#88]                                   	@IRInst:add	%t84	a	%t83
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t84	1
	mov r4,#1                                         	@IRInst:assign	%t84	1
	str r4,[r5]                                       	@IRInst:assign	%t84	1
	mov r4,#6                                         	@IRInst:mul	%t85	6	4
	mov r5,#4                                         	@IRInst:mul	%t85	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t85	6	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t85	6	4
	add r4,fp,#4                                      	@IRInst:add	%t86	a	%t85
	ldr r5,[fp,#92]                                   	@IRInst:add	%t86	a	%t85
	add r6,r4,r5                                      	@IRInst:add	%t86	a	%t85
	str r6,[fp,#96]                                   	@IRInst:add	%t86	a	%t85
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t86	6
	mov r4,#6                                         	@IRInst:assign	%t86	6
	str r4,[r5]                                       	@IRInst:assign	%t86	6
	mov r4,#7                                         	@IRInst:mul	%t87	7	4
	mov r5,#4                                         	@IRInst:mul	%t87	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t87	7	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t87	7	4
	add r4,fp,#4                                      	@IRInst:add	%t88	a	%t87
	ldr r5,[fp,#100]                                  	@IRInst:add	%t88	a	%t87
	add r6,r4,r5                                      	@IRInst:add	%t88	a	%t87
	str r6,[fp,#104]                                  	@IRInst:add	%t88	a	%t87
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t88	5
	mov r4,#5                                         	@IRInst:assign	%t88	5
	str r4,[r5]                                       	@IRInst:assign	%t88	5
	mov r4,#8                                         	@IRInst:mul	%t89	8	4
	mov r5,#4                                         	@IRInst:mul	%t89	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t89	8	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t89	8	4
	add r4,fp,#4                                      	@IRInst:add	%t90	a	%t89
	ldr r5,[fp,#108]                                  	@IRInst:add	%t90	a	%t89
	add r6,r4,r5                                      	@IRInst:add	%t90	a	%t89
	str r6,[fp,#112]                                  	@IRInst:add	%t90	a	%t89
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t90	7
	mov r4,#7                                         	@IRInst:assign	%t90	7
	str r4,[r5]                                       	@IRInst:assign	%t90	7
	mov r4,#9                                         	@IRInst:mul	%t91	9	4
	mov r5,#4                                         	@IRInst:mul	%t91	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t91	9	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t91	9	4
	add r4,fp,#4                                      	@IRInst:add	%t92	a	%t91
	ldr r5,[fp,#116]                                  	@IRInst:add	%t92	a	%t91
	add r6,r4,r5                                      	@IRInst:add	%t92	a	%t91
	str r6,[fp,#120]                                  	@IRInst:add	%t92	a	%t91
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t92	8
	mov r4,#8                                         	@IRInst:assign	%t92	8
	str r4,[r5]                                       	@IRInst:assign	%t92	8
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#124]                                  	@IRInst:assign	i	0
	add r0,fp,#4                                      	@IRInst:assign	r0	a
	add r1,fp,#128                                    	@IRInst:assign	r1	b
	ldr r2,.global_1_n                                	@IRInst:assign	r2	n
	ldr r2,[r2]                                       	@IRInst:assign	r2	n
	bl counting_sort                                  
	str r0,[fp,#168]                                  	@IRInst:assign	%t95	r0
	ldr r4,[fp,#168]                                  	@IRInst:assign	i	%t95
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t95
.L17:
	ldr r4,[fp,#124]                                  	@IRInst:blt	%t96	i	n
	ldr r5,.global_1_n                                	@IRInst:blt	%t96	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t96	i	n
	cmp r4,r5                                         	@IRInst:blt	%t96	i	n
	blt .L18                                          
	b .L19                                            
.L18:
	ldr r4,[fp,#124]                                  	@IRInst:mul	%t98	i	4
	mov r5,#4                                         	@IRInst:mul	%t98	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t98	i	4
	str r6,[fp,#180]                                  	@IRInst:mul	%t98	i	4
	add r4,fp,#128                                    	@IRInst:add	%t99	b	%t98
	ldr r5,[fp,#180]                                  	@IRInst:add	%t99	b	%t98
	add r6,r4,r5                                      	@IRInst:add	%t99	b	%t98
	str r6,[fp,#184]                                  	@IRInst:add	%t99	b	%t98
	ldr r4,[fp,#184]                                  	@IRInst:assign	%t100	%t99
	ldr r4,[r4]                                       	@IRInst:assign	%t100	%t99
	str r4,[fp,#188]                                  	@IRInst:assign	%t100	%t99
	ldr r4,[fp,#188]                                  	@IRInst:assign	tmp	%t100
	str r4,[fp,#176]                                  	@IRInst:assign	tmp	%t100
	ldr r0,[fp,#176]                                  	@IRInst:assign	r0	tmp
	bl putint                                         
	mov r4,#10                                        	@IRInst:assign	tmp	10
	str r4,[fp,#176]                                  	@IRInst:assign	tmp	10
	ldr r0,[fp,#176]                                  	@IRInst:assign	r0	tmp
	bl putch                                          
	ldr r4,[fp,#124]                                  	@IRInst:add	%t101	i	1
	mov r5,#1                                         	@IRInst:add	%t101	i	1
	add r6,r4,r5                                      	@IRInst:add	%t101	i	1
	str r6,[fp,#192]                                  	@IRInst:add	%t101	i	1
	ldr r4,[fp,#192]                                  	@IRInst:assign	i	%t101
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t101
	b .L17                                            
.L19:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L16                                            
.L16:
	ldr r0,[fp]                                       
	add fp,fp,#196                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
