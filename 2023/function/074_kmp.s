.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global get_next
.type get_next, %function
get_next:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#104                                    
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	str	r0
	str r1,[fp,#4]                                    	@IRInst:assign	next	r1
	mov r4,#0                                         	@IRInst:mul	%t5	0	4
	mov r5,#4                                         	@IRInst:mul	%t5	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t5	0	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t5	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t6	next	%t5
	ldr r5,[fp,#8]                                    	@IRInst:add	%t6	next	%t5
	add r6,r4,r5                                      	@IRInst:add	%t6	next	%t5
	str r6,[fp,#12]                                   	@IRInst:add	%t6	next	%t5
	ldr r5,[fp,#12]                                   	@IRInst:assign	%t6	18446744073709551615
	mov r4,#-1                                        	@IRInst:assign	%t6	18446744073709551615
	str r4,[r5]                                       	@IRInst:assign	%t6	18446744073709551615
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#16]                                   	@IRInst:assign	i	0
	mov r4,#-1                                        	@IRInst:assign	j	18446744073709551615
	str r4,[fp,#20]                                   	@IRInst:assign	j	18446744073709551615
.L3:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t9	i	4
	mov r5,#4                                         	@IRInst:mul	%t9	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t9	i	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t9	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t10	str	%t9
	ldr r5,[fp,#24]                                   	@IRInst:add	%t10	str	%t9
	add r6,r4,r5                                      	@IRInst:add	%t10	str	%t9
	str r6,[fp,#28]                                   	@IRInst:add	%t10	str	%t9
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t11	%t10
	ldr r4,[r4]                                       	@IRInst:assign	%t11	%t10
	str r4,[fp,#32]                                   	@IRInst:assign	%t11	%t10
	ldr r4,[fp,#32]                                   	@IRInst:assign	%t12	%t11
	str r4,[fp,#36]                                   	@IRInst:assign	%t12	%t11
	ldr r4,[fp,#36]                                   	@IRInst:not_zero	%t13	%t12	0
	mov r5,#0                                         	@IRInst:not_zero	%t13	%t12	0
	cmp r4,r5                                         	@IRInst:not_zero	%t13	%t12	0
	moveq r6,#0                                       	@IRInst:not_zero	%t13	%t12	0
	movne r6,#1                                       	@IRInst:not_zero	%t13	%t12	0
	str r6,[fp,#40]                                   	@IRInst:not_zero	%t13	%t12	0
	beq .L5                                           
	b .L4                                             
.L4:
	ldr r4,[fp,#20]                                   	@IRInst:beq	%t14	j	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t14	j	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t14	j	18446744073709551615
	moveq r6,#1                                       	@IRInst:beq	%t14	j	18446744073709551615
	movne r6,#0                                       	@IRInst:beq	%t14	j	18446744073709551615
	str r6,[fp,#44]                                   	@IRInst:beq	%t14	j	18446744073709551615
	beq .L6                                           
	b .L9                                             
.L9:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t15	i	4
	mov r5,#4                                         	@IRInst:mul	%t15	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t15	i	4
	str r6,[fp,#48]                                   	@IRInst:mul	%t15	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t16	str	%t15
	ldr r5,[fp,#48]                                   	@IRInst:add	%t16	str	%t15
	add r6,r4,r5                                      	@IRInst:add	%t16	str	%t15
	str r6,[fp,#52]                                   	@IRInst:add	%t16	str	%t15
	ldr r4,[fp,#52]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[r4]                                       	@IRInst:assign	%t17	%t16
	str r4,[fp,#56]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t18	j	4
	mov r5,#4                                         	@IRInst:mul	%t18	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t18	j	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t18	j	4
	ldr r4,[fp]                                       	@IRInst:add	%t19	str	%t18
	ldr r5,[fp,#60]                                   	@IRInst:add	%t19	str	%t18
	add r6,r4,r5                                      	@IRInst:add	%t19	str	%t18
	str r6,[fp,#64]                                   	@IRInst:add	%t19	str	%t18
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t20	%t19
	ldr r4,[r4]                                       	@IRInst:assign	%t20	%t19
	str r4,[fp,#68]                                   	@IRInst:assign	%t20	%t19
	ldr r4,[fp,#56]                                   	@IRInst:beq	%t21	%t17	%t20
	ldr r5,[fp,#68]                                   	@IRInst:beq	%t21	%t17	%t20
	cmp r4,r5                                         	@IRInst:beq	%t21	%t17	%t20
	moveq r6,#1                                       	@IRInst:beq	%t21	%t17	%t20
	movne r6,#0                                       	@IRInst:beq	%t21	%t17	%t20
	str r6,[fp,#72]                                   	@IRInst:beq	%t21	%t17	%t20
	beq .L6                                           
	b .L7                                             
.L6:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t22	j	1
	mov r5,#1                                         	@IRInst:add	%t22	j	1
	add r6,r4,r5                                      	@IRInst:add	%t22	j	1
	str r6,[fp,#76]                                   	@IRInst:add	%t22	j	1
	ldr r4,[fp,#76]                                   	@IRInst:assign	j	%t22
	str r4,[fp,#20]                                   	@IRInst:assign	j	%t22
	ldr r4,[fp,#16]                                   	@IRInst:add	%t23	i	1
	mov r5,#1                                         	@IRInst:add	%t23	i	1
	add r6,r4,r5                                      	@IRInst:add	%t23	i	1
	str r6,[fp,#80]                                   	@IRInst:add	%t23	i	1
	ldr r4,[fp,#80]                                   	@IRInst:assign	i	%t23
	str r4,[fp,#16]                                   	@IRInst:assign	i	%t23
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t24	i	4
	mov r5,#4                                         	@IRInst:mul	%t24	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t24	i	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t24	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t25	next	%t24
	ldr r5,[fp,#84]                                   	@IRInst:add	%t25	next	%t24
	add r6,r4,r5                                      	@IRInst:add	%t25	next	%t24
	str r6,[fp,#88]                                   	@IRInst:add	%t25	next	%t24
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t25	j
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t25	j
	str r4,[r5]                                       	@IRInst:assign	%t25	j
	b .L8                                             
.L7:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t26	j	4
	mov r5,#4                                         	@IRInst:mul	%t26	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t26	j	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t26	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t27	next	%t26
	ldr r5,[fp,#92]                                   	@IRInst:add	%t27	next	%t26
	add r6,r4,r5                                      	@IRInst:add	%t27	next	%t26
	str r6,[fp,#96]                                   	@IRInst:add	%t27	next	%t26
	ldr r4,[fp,#96]                                   	@IRInst:assign	%t28	%t27
	ldr r4,[r4]                                       	@IRInst:assign	%t28	%t27
	str r4,[fp,#100]                                  	@IRInst:assign	%t28	%t27
	ldr r4,[fp,#100]                                  	@IRInst:assign	j	%t28
	str r4,[fp,#20]                                   	@IRInst:assign	j	%t28
.L8:
	b .L3                                             
.L5:
.L2:
	add fp,fp,#104                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global KMP
.type KMP, %function
KMP:
.L10:
	push {r10,fp,lr}                                  
	ldr r10,=16508                                    
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	dst	r0
	str r1,[fp,#8]                                    	@IRInst:assign	src	r1
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	dst
	add r1,fp,#12                                     	@IRInst:assign	r1	next
	bl get_next                                       
	mov r4,#0                                         	@IRInst:assign	i	0
	ldr r9,=16396                                     	@IRInst:assign	i	0
	str r4,[fp,r9]                                    	@IRInst:assign	i	0
	mov r4,#0                                         	@IRInst:assign	j	0
	ldr r9,=16400                                     	@IRInst:assign	j	0
	str r4,[fp,r9]                                    	@IRInst:assign	j	0
.L12:
	ldr r4,=16400                                     	@IRInst:mul	%t37	j	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t37	j	4
	mov r5,#4                                         	@IRInst:mul	%t37	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t37	j	4
	ldr r5,=16404                                     	@IRInst:mul	%t37	j	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t37	j	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t38	src	%t37
	ldr r5,=16404                                     	@IRInst:add	%t38	src	%t37
	ldr r5,[fp,r5]                                    	@IRInst:add	%t38	src	%t37
	add r6,r4,r5                                      	@IRInst:add	%t38	src	%t37
	ldr r5,=16408                                     	@IRInst:add	%t38	src	%t37
	str r6,[fp,r5]                                    	@IRInst:add	%t38	src	%t37
	ldr r4,=16408                                     	@IRInst:assign	%t39	%t38
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t39	%t38
	ldr r4,[r4]                                       	@IRInst:assign	%t39	%t38
	ldr r9,=16412                                     	@IRInst:assign	%t39	%t38
	str r4,[fp,r9]                                    	@IRInst:assign	%t39	%t38
	ldr r4,=16412                                     	@IRInst:assign	%t40	%t39
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t40	%t39
	ldr r9,=16416                                     	@IRInst:assign	%t40	%t39
	str r4,[fp,r9]                                    	@IRInst:assign	%t40	%t39
	ldr r4,=16416                                     	@IRInst:not_zero	%t41	%t40	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t41	%t40	0
	mov r5,#0                                         	@IRInst:not_zero	%t41	%t40	0
	cmp r4,r5                                         	@IRInst:not_zero	%t41	%t40	0
	moveq r6,#0                                       	@IRInst:not_zero	%t41	%t40	0
	movne r6,#1                                       	@IRInst:not_zero	%t41	%t40	0
	ldr r10,=16420                                    	@IRInst:not_zero	%t41	%t40	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t41	%t40	0
	beq .L14                                          
	b .L13                                            
.L13:
	ldr r4,=16396                                     	@IRInst:mul	%t42	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t42	i	4
	mov r5,#4                                         	@IRInst:mul	%t42	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t42	i	4
	ldr r5,=16424                                     	@IRInst:mul	%t42	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t42	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t43	dst	%t42
	ldr r5,=16424                                     	@IRInst:add	%t43	dst	%t42
	ldr r5,[fp,r5]                                    	@IRInst:add	%t43	dst	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	dst	%t42
	ldr r5,=16428                                     	@IRInst:add	%t43	dst	%t42
	str r6,[fp,r5]                                    	@IRInst:add	%t43	dst	%t42
	ldr r4,=16428                                     	@IRInst:assign	%t44	%t43
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t44	%t43
	ldr r4,[r4]                                       	@IRInst:assign	%t44	%t43
	ldr r9,=16432                                     	@IRInst:assign	%t44	%t43
	str r4,[fp,r9]                                    	@IRInst:assign	%t44	%t43
	ldr r4,=16400                                     	@IRInst:mul	%t45	j	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t45	j	4
	mov r5,#4                                         	@IRInst:mul	%t45	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t45	j	4
	ldr r5,=16436                                     	@IRInst:mul	%t45	j	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t45	j	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t46	src	%t45
	ldr r5,=16436                                     	@IRInst:add	%t46	src	%t45
	ldr r5,[fp,r5]                                    	@IRInst:add	%t46	src	%t45
	add r6,r4,r5                                      	@IRInst:add	%t46	src	%t45
	ldr r5,=16440                                     	@IRInst:add	%t46	src	%t45
	str r6,[fp,r5]                                    	@IRInst:add	%t46	src	%t45
	ldr r4,=16440                                     	@IRInst:assign	%t47	%t46
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t47	%t46
	ldr r4,[r4]                                       	@IRInst:assign	%t47	%t46
	ldr r9,=16444                                     	@IRInst:assign	%t47	%t46
	str r4,[fp,r9]                                    	@IRInst:assign	%t47	%t46
	ldr r4,=16432                                     	@IRInst:beq	%t48	%t44	%t47
	ldr r4,[fp,r4]                                    	@IRInst:beq	%t48	%t44	%t47
	ldr r5,=16444                                     	@IRInst:beq	%t48	%t44	%t47
	ldr r5,[fp,r5]                                    	@IRInst:beq	%t48	%t44	%t47
	cmp r4,r5                                         	@IRInst:beq	%t48	%t44	%t47
	moveq r6,#1                                       	@IRInst:beq	%t48	%t44	%t47
	movne r6,#0                                       	@IRInst:beq	%t48	%t44	%t47
	ldr r10,=16448                                    	@IRInst:beq	%t48	%t44	%t47
	str r6,[fp,r10]                                   	@IRInst:beq	%t48	%t44	%t47
	beq .L15                                          
	b .L16                                            
.L15:
	ldr r4,=16396                                     	@IRInst:add	%t49	i	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t49	i	1
	mov r5,#1                                         	@IRInst:add	%t49	i	1
	add r6,r4,r5                                      	@IRInst:add	%t49	i	1
	ldr r5,=16452                                     	@IRInst:add	%t49	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t49	i	1
	ldr r4,=16452                                     	@IRInst:assign	i	%t49
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t49
	ldr r9,=16396                                     	@IRInst:assign	i	%t49
	str r4,[fp,r9]                                    	@IRInst:assign	i	%t49
	ldr r4,=16400                                     	@IRInst:add	%t50	j	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t50	j	1
	mov r5,#1                                         	@IRInst:add	%t50	j	1
	add r6,r4,r5                                      	@IRInst:add	%t50	j	1
	ldr r5,=16456                                     	@IRInst:add	%t50	j	1
	str r6,[fp,r5]                                    	@IRInst:add	%t50	j	1
	ldr r4,=16456                                     	@IRInst:assign	j	%t50
	ldr r4,[fp,r4]                                    	@IRInst:assign	j	%t50
	ldr r9,=16400                                     	@IRInst:assign	j	%t50
	str r4,[fp,r9]                                    	@IRInst:assign	j	%t50
	ldr r4,=16396                                     	@IRInst:mul	%t51	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t51	i	4
	mov r5,#4                                         	@IRInst:mul	%t51	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t51	i	4
	ldr r5,=16460                                     	@IRInst:mul	%t51	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t51	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t52	dst	%t51
	ldr r5,=16460                                     	@IRInst:add	%t52	dst	%t51
	ldr r5,[fp,r5]                                    	@IRInst:add	%t52	dst	%t51
	add r6,r4,r5                                      	@IRInst:add	%t52	dst	%t51
	ldr r5,=16464                                     	@IRInst:add	%t52	dst	%t51
	str r6,[fp,r5]                                    	@IRInst:add	%t52	dst	%t51
	ldr r4,=16464                                     	@IRInst:assign	%t53	%t52
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t53	%t52
	ldr r4,[r4]                                       	@IRInst:assign	%t53	%t52
	ldr r9,=16468                                     	@IRInst:assign	%t53	%t52
	str r4,[fp,r9]                                    	@IRInst:assign	%t53	%t52
	ldr r4,=16468                                     	@IRInst:assign	%t54	%t53
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t54	%t53
	ldr r9,=16472                                     	@IRInst:assign	%t54	%t53
	str r4,[fp,r9]                                    	@IRInst:assign	%t54	%t53
	ldr r4,=16472                                     	@IRInst:not_zero	%t55	%t54	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t55	%t54	0
	mov r5,#0                                         	@IRInst:not_zero	%t55	%t54	0
	cmp r4,r5                                         	@IRInst:not_zero	%t55	%t54	0
	moveq r6,#0                                       	@IRInst:not_zero	%t55	%t54	0
	movne r6,#1                                       	@IRInst:not_zero	%t55	%t54	0
	ldr r10,=16476                                    	@IRInst:not_zero	%t55	%t54	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t55	%t54	0
	ldr r4,=16476                                     	@IRInst:not_zero	%t56	%t55	0
	ldr r4,[fp,r4]                                    	@IRInst:not_zero	%t56	%t55	0
	mov r5,#0                                         	@IRInst:not_zero	%t56	%t55	0
	cmp r4,r5                                         	@IRInst:not_zero	%t56	%t55	0
	moveq r6,#0                                       	@IRInst:not_zero	%t56	%t55	0
	movne r6,#1                                       	@IRInst:not_zero	%t56	%t55	0
	ldr r10,=16480                                    	@IRInst:not_zero	%t56	%t55	0
	str r6,[fp,r10]                                   	@IRInst:not_zero	%t56	%t55	0
	beq .L18                                          
	b .L19                                            
.L18:
	ldr r4,=16400                                     	@IRInst:assign		j
	ldr r4,[fp,r4]                                    	@IRInst:assign		j
	str r4,[fp]                                       	@IRInst:assign		j
	b .L11                                            
.L19:
.L20:
	b .L17                                            
.L16:
	ldr r4,=16396                                     	@IRInst:mul	%t57	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t57	i	4
	mov r5,#4                                         	@IRInst:mul	%t57	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t57	i	4
	ldr r5,=16484                                     	@IRInst:mul	%t57	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t57	i	4
	add r4,fp,#12                                     	@IRInst:add	%t58	next	%t57
	ldr r5,=16484                                     	@IRInst:add	%t58	next	%t57
	ldr r5,[fp,r5]                                    	@IRInst:add	%t58	next	%t57
	add r6,r4,r5                                      	@IRInst:add	%t58	next	%t57
	ldr r5,=16488                                     	@IRInst:add	%t58	next	%t57
	str r6,[fp,r5]                                    	@IRInst:add	%t58	next	%t57
	ldr r4,=16488                                     	@IRInst:assign	%t59	%t58
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t59	%t58
	ldr r4,[r4]                                       	@IRInst:assign	%t59	%t58
	ldr r9,=16492                                     	@IRInst:assign	%t59	%t58
	str r4,[fp,r9]                                    	@IRInst:assign	%t59	%t58
	ldr r4,=16492                                     	@IRInst:assign	i	%t59
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t59
	ldr r9,=16396                                     	@IRInst:assign	i	%t59
	str r4,[fp,r9]                                    	@IRInst:assign	i	%t59
	ldr r4,=16396                                     	@IRInst:beq	%t60	i	18446744073709551615
	ldr r4,[fp,r4]                                    	@IRInst:beq	%t60	i	18446744073709551615
	mov r5,#-1                                        	@IRInst:beq	%t60	i	18446744073709551615
	cmp r4,r5                                         	@IRInst:beq	%t60	i	18446744073709551615
	moveq r6,#1                                       	@IRInst:beq	%t60	i	18446744073709551615
	movne r6,#0                                       	@IRInst:beq	%t60	i	18446744073709551615
	ldr r10,=16496                                    	@IRInst:beq	%t60	i	18446744073709551615
	str r6,[fp,r10]                                   	@IRInst:beq	%t60	i	18446744073709551615
	beq .L21                                          
	b .L22                                            
.L21:
	ldr r4,=16396                                     	@IRInst:add	%t61	i	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t61	i	1
	mov r5,#1                                         	@IRInst:add	%t61	i	1
	add r6,r4,r5                                      	@IRInst:add	%t61	i	1
	ldr r5,=16500                                     	@IRInst:add	%t61	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t61	i	1
	ldr r4,=16500                                     	@IRInst:assign	i	%t61
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t61
	ldr r9,=16396                                     	@IRInst:assign	i	%t61
	str r4,[fp,r9]                                    	@IRInst:assign	i	%t61
	ldr r4,=16400                                     	@IRInst:add	%t62	j	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t62	j	1
	mov r5,#1                                         	@IRInst:add	%t62	j	1
	add r6,r4,r5                                      	@IRInst:add	%t62	j	1
	ldr r5,=16504                                     	@IRInst:add	%t62	j	1
	str r6,[fp,r5]                                    	@IRInst:add	%t62	j	1
	ldr r4,=16504                                     	@IRInst:assign	j	%t62
	ldr r4,[fp,r4]                                    	@IRInst:assign	j	%t62
	ldr r9,=16400                                     	@IRInst:assign	j	%t62
	str r4,[fp,r9]                                    	@IRInst:assign	j	%t62
.L22:
.L23:
.L17:
	b .L12                                            
.L14:
	mov r4,#-1                                        	@IRInst:assign		18446744073709551615
	str r4,[fp]                                       	@IRInst:assign		18446744073709551615
	b .L11                                            
.L11:
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
	add fp,fp,#124                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global read_str
.type read_str, %function
read_str:
.L24:
	push {r10,fp,lr}                                  
	sub sp,sp,#52                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	buf	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#8]                                    	@IRInst:assign	i	0
.L26:
.L27:
	bl getch                                          
	str r0,[fp,#20]                                   	@IRInst:assign	%t69	r0
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t67	i	4
	mov r5,#4                                         	@IRInst:mul	%t67	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t67	i	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t67	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t68	buf	%t67
	ldr r5,[fp,#12]                                   	@IRInst:add	%t68	buf	%t67
	add r6,r4,r5                                      	@IRInst:add	%t68	buf	%t67
	str r6,[fp,#16]                                   	@IRInst:add	%t68	buf	%t67
	ldr r5,[fp,#16]                                   	@IRInst:assign	%t68	%t69
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t68	%t69
	str r4,[r5]                                       	@IRInst:assign	%t68	%t69
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t70	i	4
	mov r5,#4                                         	@IRInst:mul	%t70	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t70	i	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t70	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t71	buf	%t70
	ldr r5,[fp,#24]                                   	@IRInst:add	%t71	buf	%t70
	add r6,r4,r5                                      	@IRInst:add	%t71	buf	%t70
	str r6,[fp,#28]                                   	@IRInst:add	%t71	buf	%t70
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t72	%t71
	ldr r4,[r4]                                       	@IRInst:assign	%t72	%t71
	str r4,[fp,#32]                                   	@IRInst:assign	%t72	%t71
	ldr r4,[fp,#32]                                   	@IRInst:beq	%t73	%t72	10
	mov r5,#10                                        	@IRInst:beq	%t73	%t72	10
	cmp r4,r5                                         	@IRInst:beq	%t73	%t72	10
	moveq r6,#1                                       	@IRInst:beq	%t73	%t72	10
	movne r6,#0                                       	@IRInst:beq	%t73	%t72	10
	str r6,[fp,#36]                                   	@IRInst:beq	%t73	%t72	10
	beq .L29                                          
	b .L30                                            
.L29:
	b .L28                                            
.L30:
.L31:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t74	i	1
	mov r5,#1                                         	@IRInst:add	%t74	i	1
	add r6,r4,r5                                      	@IRInst:add	%t74	i	1
	str r6,[fp,#40]                                   	@IRInst:add	%t74	i	1
	ldr r4,[fp,#40]                                   	@IRInst:assign	i	%t74
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t74
	b .L26                                            
.L28:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t75	i	4
	mov r5,#4                                         	@IRInst:mul	%t75	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t75	i	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t75	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t76	buf	%t75
	ldr r5,[fp,#44]                                   	@IRInst:add	%t76	buf	%t75
	add r6,r4,r5                                      	@IRInst:add	%t76	buf	%t75
	str r6,[fp,#48]                                   	@IRInst:add	%t76	buf	%t75
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t76	0
	mov r4,#0                                         	@IRInst:assign	%t76	0
	str r4,[r5]                                       	@IRInst:assign	%t76	0
	ldr r4,[fp,#8]                                    	@IRInst:assign		i
	str r4,[fp]                                       	@IRInst:assign		i
	b .L25                                            
.L25:
	ldr r0,[fp]                                       
	add fp,fp,#52                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global main
.type main, %function
main:
.L32:
	push {r10,fp,lr}                                  
	ldr r10,=32784                                    
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	add r0,fp,#4                                      	@IRInst:assign	r0	dst
	bl read_str                                       
	ldr r9,=32772                                     	@IRInst:assign	%t80	r0
	str r0,[fp,r9]                                    	@IRInst:assign	%t80	r0
	ldr r0,=16388                                     	@IRInst:assign	r0	src
	add r0,fp,r0                                      	@IRInst:assign	r0	src
	bl read_str                                       
	ldr r9,=32776                                     	@IRInst:assign	%t81	r0
	str r0,[fp,r9]                                    	@IRInst:assign	%t81	r0
	add r0,fp,#4                                      	@IRInst:assign	r0	dst
	ldr r1,=16388                                     	@IRInst:assign	r1	src
	add r1,fp,r1                                      	@IRInst:assign	r1	src
	bl KMP                                            
	ldr r9,=32780                                     	@IRInst:assign	%t82	r0
	str r0,[fp,r9]                                    	@IRInst:assign	%t82	r0
	ldr r0,=32780                                     	@IRInst:assign	r0	%t82
	ldr r0,[fp,r0]                                    	@IRInst:assign	r0	%t82
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L33                                            
.L33:
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
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
