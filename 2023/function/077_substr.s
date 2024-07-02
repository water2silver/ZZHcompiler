.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global MAX
.type MAX, %function
MAX:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#20                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	a	r0
	str r1,[fp,#8]                                    	@IRInst:assign	b	r1
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t5	a	b
	ldr r5,[fp,#8]                                    	@IRInst:beq	%t5	a	b
	cmp r4,r5                                         	@IRInst:beq	%t5	a	b
	moveq r6,#1                                       	@IRInst:beq	%t5	a	b
	movne r6,#0                                       	@IRInst:beq	%t5	a	b
	str r6,[fp,#12]                                   	@IRInst:beq	%t5	a	b
	beq .L3                                           
	b .L4                                             
.L3:
	ldr r4,[fp,#4]                                    	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L2                                             
	b .L5                                             
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t6	a	b
	ldr r5,[fp,#8]                                    	@IRInst:bgt	%t6	a	b
	cmp r4,r5                                         	@IRInst:bgt	%t6	a	b
	movgt r6,#1                                       	@IRInst:bgt	%t6	a	b
	movle r6,#0                                       	@IRInst:bgt	%t6	a	b
	str r6,[fp,#16]                                   	@IRInst:bgt	%t6	a	b
	bgt .L6                                           
	b .L7                                             
.L6:
	ldr r4,[fp,#4]                                    	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L2                                             
	b .L8                                             
.L7:
	ldr r4,[fp,#8]                                    	@IRInst:assign		b
	str r4,[fp]                                       	@IRInst:assign		b
	b .L2                                             
.L8:
.L5:
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#20                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global max_sum_nonadjacent
.type max_sum_nonadjacent, %function
max_sum_nonadjacent:
.L9:
	push {r10,fp,lr}                                  
	sub sp,sp,#220                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	str r1,[fp,#8]                                    	@IRInst:assign	n	r1
	mov r4,#0                                         	@IRInst:mul	%t15	0	4
	mov r5,#4                                         	@IRInst:mul	%t15	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t15	0	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t15	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t16	arr	%t15
	ldr r5,[fp,#84]                                   	@IRInst:add	%t16	arr	%t15
	add r6,r4,r5                                      	@IRInst:add	%t16	arr	%t15
	str r6,[fp,#88]                                   	@IRInst:add	%t16	arr	%t15
	ldr r4,[fp,#88]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[r4]                                       	@IRInst:assign	%t17	%t16
	str r4,[fp,#92]                                   	@IRInst:assign	%t17	%t16
	mov r4,#0                                         	@IRInst:mul	%t13	0	4
	mov r5,#4                                         	@IRInst:mul	%t13	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t13	0	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t13	0	4
	add r4,fp,#12                                     	@IRInst:add	%t14	temp	%t13
	ldr r5,[fp,#76]                                   	@IRInst:add	%t14	temp	%t13
	add r6,r4,r5                                      	@IRInst:add	%t14	temp	%t13
	str r6,[fp,#80]                                   	@IRInst:add	%t14	temp	%t13
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t14	%t17
	ldr r4,[fp,#92]                                   	@IRInst:assign	%t14	%t17
	str r4,[r5]                                       	@IRInst:assign	%t14	%t17
	mov r4,#0                                         	@IRInst:mul	%t20	0	4
	mov r5,#4                                         	@IRInst:mul	%t20	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t20	0	4
	str r6,[fp,#104]                                  	@IRInst:mul	%t20	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t21	arr	%t20
	ldr r5,[fp,#104]                                  	@IRInst:add	%t21	arr	%t20
	add r6,r4,r5                                      	@IRInst:add	%t21	arr	%t20
	str r6,[fp,#108]                                  	@IRInst:add	%t21	arr	%t20
	ldr r4,[fp,#108]                                  	@IRInst:assign	%t22	%t21
	ldr r4,[r4]                                       	@IRInst:assign	%t22	%t21
	str r4,[fp,#112]                                  	@IRInst:assign	%t22	%t21
	mov r4,#1                                         	@IRInst:mul	%t23	1	4
	mov r5,#4                                         	@IRInst:mul	%t23	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t23	1	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t23	1	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t24	arr	%t23
	ldr r5,[fp,#116]                                  	@IRInst:add	%t24	arr	%t23
	add r6,r4,r5                                      	@IRInst:add	%t24	arr	%t23
	str r6,[fp,#120]                                  	@IRInst:add	%t24	arr	%t23
	ldr r4,[fp,#120]                                  	@IRInst:assign	%t25	%t24
	ldr r4,[r4]                                       	@IRInst:assign	%t25	%t24
	str r4,[fp,#124]                                  	@IRInst:assign	%t25	%t24
	ldr r0,[fp,#112]                                  	@IRInst:assign	r0	%t22
	ldr r1,[fp,#124]                                  	@IRInst:assign	r1	%t25
	bl MAX                                            
	str r0,[fp,#128]                                  	@IRInst:assign	%t26	r0
	mov r4,#1                                         	@IRInst:mul	%t18	1	4
	mov r5,#4                                         	@IRInst:mul	%t18	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t18	1	4
	str r6,[fp,#96]                                   	@IRInst:mul	%t18	1	4
	add r4,fp,#12                                     	@IRInst:add	%t19	temp	%t18
	ldr r5,[fp,#96]                                   	@IRInst:add	%t19	temp	%t18
	add r6,r4,r5                                      	@IRInst:add	%t19	temp	%t18
	str r6,[fp,#100]                                  	@IRInst:add	%t19	temp	%t18
	ldr r5,[fp,#100]                                  	@IRInst:assign	%t19	%t26
	ldr r4,[fp,#128]                                  	@IRInst:assign	%t19	%t26
	str r4,[r5]                                       	@IRInst:assign	%t19	%t26
	mov r4,#2                                         	@IRInst:assign	i	2
	str r4,[fp,#132]                                  	@IRInst:assign	i	2
.L11:
	ldr r4,[fp,#132]                                  	@IRInst:blt	%t28	i	n
	ldr r5,[fp,#8]                                    	@IRInst:blt	%t28	i	n
	cmp r4,r5                                         	@IRInst:blt	%t28	i	n
	movlt r6,#1                                       	@IRInst:blt	%t28	i	n
	movge r6,#0                                       	@IRInst:blt	%t28	i	n
	str r6,[fp,#136]                                  	@IRInst:blt	%t28	i	n
	blt .L12                                          
	b .L13                                            
.L12:
	ldr r4,[fp,#132]                                  	@IRInst:sub	%t32	i	2
	mov r5,#2                                         	@IRInst:sub	%t32	i	2
	sub r6,r4,r5                                      	@IRInst:sub	%t32	i	2
	str r6,[fp,#152]                                  	@IRInst:sub	%t32	i	2
	ldr r4,[fp,#152]                                  	@IRInst:mul	%t31	%t32	4
	mov r5,#4                                         	@IRInst:mul	%t31	%t32	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	%t32	4
	str r6,[fp,#148]                                  	@IRInst:mul	%t31	%t32	4
	add r4,fp,#12                                     	@IRInst:add	%t33	temp	%t31
	ldr r5,[fp,#148]                                  	@IRInst:add	%t33	temp	%t31
	add r6,r4,r5                                      	@IRInst:add	%t33	temp	%t31
	str r6,[fp,#156]                                  	@IRInst:add	%t33	temp	%t31
	ldr r4,[fp,#156]                                  	@IRInst:assign	%t34	%t33
	ldr r4,[r4]                                       	@IRInst:assign	%t34	%t33
	str r4,[fp,#160]                                  	@IRInst:assign	%t34	%t33
	ldr r4,[fp,#132]                                  	@IRInst:mul	%t35	i	4
	mov r5,#4                                         	@IRInst:mul	%t35	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t35	i	4
	str r6,[fp,#164]                                  	@IRInst:mul	%t35	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t36	arr	%t35
	ldr r5,[fp,#164]                                  	@IRInst:add	%t36	arr	%t35
	add r6,r4,r5                                      	@IRInst:add	%t36	arr	%t35
	str r6,[fp,#168]                                  	@IRInst:add	%t36	arr	%t35
	ldr r4,[fp,#168]                                  	@IRInst:assign	%t37	%t36
	ldr r4,[r4]                                       	@IRInst:assign	%t37	%t36
	str r4,[fp,#172]                                  	@IRInst:assign	%t37	%t36
	ldr r4,[fp,#160]                                  	@IRInst:add	%t38	%t34	%t37
	ldr r5,[fp,#172]                                  	@IRInst:add	%t38	%t34	%t37
	add r6,r4,r5                                      	@IRInst:add	%t38	%t34	%t37
	str r6,[fp,#176]                                  	@IRInst:add	%t38	%t34	%t37
	ldr r4,[fp,#132]                                  	@IRInst:sub	%t40	i	1
	mov r5,#1                                         	@IRInst:sub	%t40	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t40	i	1
	str r6,[fp,#184]                                  	@IRInst:sub	%t40	i	1
	ldr r4,[fp,#184]                                  	@IRInst:mul	%t39	%t40	4
	mov r5,#4                                         	@IRInst:mul	%t39	%t40	4
	mul r6,r4,r5                                      	@IRInst:mul	%t39	%t40	4
	str r6,[fp,#180]                                  	@IRInst:mul	%t39	%t40	4
	add r4,fp,#12                                     	@IRInst:add	%t41	temp	%t39
	ldr r5,[fp,#180]                                  	@IRInst:add	%t41	temp	%t39
	add r6,r4,r5                                      	@IRInst:add	%t41	temp	%t39
	str r6,[fp,#188]                                  	@IRInst:add	%t41	temp	%t39
	ldr r4,[fp,#188]                                  	@IRInst:assign	%t42	%t41
	ldr r4,[r4]                                       	@IRInst:assign	%t42	%t41
	str r4,[fp,#192]                                  	@IRInst:assign	%t42	%t41
	ldr r0,[fp,#176]                                  	@IRInst:assign	r0	%t38
	ldr r1,[fp,#192]                                  	@IRInst:assign	r1	%t42
	bl MAX                                            
	str r0,[fp,#196]                                  	@IRInst:assign	%t43	r0
	ldr r4,[fp,#132]                                  	@IRInst:mul	%t29	i	4
	mov r5,#4                                         	@IRInst:mul	%t29	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t29	i	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t29	i	4
	add r4,fp,#12                                     	@IRInst:add	%t30	temp	%t29
	ldr r5,[fp,#140]                                  	@IRInst:add	%t30	temp	%t29
	add r6,r4,r5                                      	@IRInst:add	%t30	temp	%t29
	str r6,[fp,#144]                                  	@IRInst:add	%t30	temp	%t29
	ldr r5,[fp,#144]                                  	@IRInst:assign	%t30	%t43
	ldr r4,[fp,#196]                                  	@IRInst:assign	%t30	%t43
	str r4,[r5]                                       	@IRInst:assign	%t30	%t43
	ldr r4,[fp,#132]                                  	@IRInst:add	%t44	i	1
	mov r5,#1                                         	@IRInst:add	%t44	i	1
	add r6,r4,r5                                      	@IRInst:add	%t44	i	1
	str r6,[fp,#200]                                  	@IRInst:add	%t44	i	1
	ldr r4,[fp,#200]                                  	@IRInst:assign	i	%t44
	str r4,[fp,#132]                                  	@IRInst:assign	i	%t44
	b .L11                                            
.L13:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t46	n	1
	mov r5,#1                                         	@IRInst:sub	%t46	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t46	n	1
	str r6,[fp,#208]                                  	@IRInst:sub	%t46	n	1
	ldr r4,[fp,#208]                                  	@IRInst:mul	%t45	%t46	4
	mov r5,#4                                         	@IRInst:mul	%t45	%t46	4
	mul r6,r4,r5                                      	@IRInst:mul	%t45	%t46	4
	str r6,[fp,#204]                                  	@IRInst:mul	%t45	%t46	4
	add r4,fp,#12                                     	@IRInst:add	%t47	temp	%t45
	ldr r5,[fp,#204]                                  	@IRInst:add	%t47	temp	%t45
	add r6,r4,r5                                      	@IRInst:add	%t47	temp	%t45
	str r6,[fp,#212]                                  	@IRInst:add	%t47	temp	%t45
	ldr r4,[fp,#212]                                  	@IRInst:assign	%t48	%t47
	ldr r4,[r4]                                       	@IRInst:assign	%t48	%t47
	str r4,[fp,#216]                                  	@IRInst:assign	%t48	%t47
	ldr r4,[fp,#216]                                  	@IRInst:assign		%t48
	str r4,[fp]                                       	@IRInst:assign		%t48
	b .L10                                            
.L10:
	ldr r0,[fp]                                       
	add fp,fp,#220                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global longest_common_subseq
.type longest_common_subseq, %function
longest_common_subseq:
.L14:
	push {r10,fp,lr}                                  
	ldr r10,=1240                                     
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr1	r0
	str r1,[fp,#8]                                    	@IRInst:assign	len1	r1
	str r2,[fp,#12]                                   	@IRInst:assign	arr2	r2
	str r3,[fp,#16]                                   	@IRInst:assign	len2	r3
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#1044]                                 	@IRInst:assign	i	1
.L16:
	ldr r4,[fp,#1044]                                 	@IRInst:ble	%t61	i	len1
	ldr r5,[fp,#8]                                    	@IRInst:ble	%t61	i	len1
	cmp r4,r5                                         	@IRInst:ble	%t61	i	len1
	movle r6,#1                                       	@IRInst:ble	%t61	i	len1
	movgt r6,#0                                       	@IRInst:ble	%t61	i	len1
	str r6,[fp,#1052]                                 	@IRInst:ble	%t61	i	len1
	ble .L17                                          
	b .L18                                            
.L17:
	mov r4,#1                                         	@IRInst:assign	j	1
	str r4,[fp,#1048]                                 	@IRInst:assign	j	1
.L19:
	ldr r4,[fp,#1048]                                 	@IRInst:ble	%t62	j	len2
	ldr r5,[fp,#16]                                   	@IRInst:ble	%t62	j	len2
	cmp r4,r5                                         	@IRInst:ble	%t62	j	len2
	movle r6,#1                                       	@IRInst:ble	%t62	j	len2
	movgt r6,#0                                       	@IRInst:ble	%t62	j	len2
	str r6,[fp,#1056]                                 	@IRInst:ble	%t62	j	len2
	ble .L20                                          
	b .L21                                            
.L20:
	ldr r4,[fp,#1044]                                 	@IRInst:sub	%t64	i	1
	mov r5,#1                                         	@IRInst:sub	%t64	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t64	i	1
	str r6,[fp,#1064]                                 	@IRInst:sub	%t64	i	1
	ldr r4,[fp,#1064]                                 	@IRInst:mul	%t63	%t64	4
	mov r5,#4                                         	@IRInst:mul	%t63	%t64	4
	mul r6,r4,r5                                      	@IRInst:mul	%t63	%t64	4
	str r6,[fp,#1060]                                 	@IRInst:mul	%t63	%t64	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t65	arr1	%t63
	ldr r5,[fp,#1060]                                 	@IRInst:add	%t65	arr1	%t63
	add r6,r4,r5                                      	@IRInst:add	%t65	arr1	%t63
	str r6,[fp,#1068]                                 	@IRInst:add	%t65	arr1	%t63
	ldr r4,[fp,#1068]                                 	@IRInst:assign	%t66	%t65
	ldr r4,[r4]                                       	@IRInst:assign	%t66	%t65
	str r4,[fp,#1072]                                 	@IRInst:assign	%t66	%t65
	ldr r4,[fp,#1048]                                 	@IRInst:sub	%t68	j	1
	mov r5,#1                                         	@IRInst:sub	%t68	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t68	j	1
	str r6,[fp,#1080]                                 	@IRInst:sub	%t68	j	1
	ldr r4,[fp,#1080]                                 	@IRInst:mul	%t67	%t68	4
	mov r5,#4                                         	@IRInst:mul	%t67	%t68	4
	mul r6,r4,r5                                      	@IRInst:mul	%t67	%t68	4
	str r6,[fp,#1076]                                 	@IRInst:mul	%t67	%t68	4
	ldr r4,[fp,#12]                                   	@IRInst:add	%t69	arr2	%t67
	ldr r5,[fp,#1076]                                 	@IRInst:add	%t69	arr2	%t67
	add r6,r4,r5                                      	@IRInst:add	%t69	arr2	%t67
	str r6,[fp,#1084]                                 	@IRInst:add	%t69	arr2	%t67
	ldr r4,[fp,#1084]                                 	@IRInst:assign	%t70	%t69
	ldr r4,[r4]                                       	@IRInst:assign	%t70	%t69
	str r4,[fp,#1088]                                 	@IRInst:assign	%t70	%t69
	ldr r4,[fp,#1072]                                 	@IRInst:beq	%t71	%t66	%t70
	ldr r5,[fp,#1088]                                 	@IRInst:beq	%t71	%t66	%t70
	cmp r4,r5                                         	@IRInst:beq	%t71	%t66	%t70
	moveq r6,#1                                       	@IRInst:beq	%t71	%t66	%t70
	movne r6,#0                                       	@IRInst:beq	%t71	%t66	%t70
	str r6,[fp,#1092]                                 	@IRInst:beq	%t71	%t66	%t70
	beq .L22                                          
	b .L23                                            
.L22:
	ldr r4,[fp,#1044]                                 	@IRInst:sub	%t78	i	1
	mov r5,#1                                         	@IRInst:sub	%t78	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t78	i	1
	str r6,[fp,#1120]                                 	@IRInst:sub	%t78	i	1
	ldr r4,[fp,#1048]                                 	@IRInst:sub	%t79	j	1
	mov r5,#1                                         	@IRInst:sub	%t79	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t79	j	1
	str r6,[fp,#1124]                                 	@IRInst:sub	%t79	j	1
	ldr r4,[fp,#1120]                                 	@IRInst:mul	%t76	%t78	16
	mov r5,#16                                        	@IRInst:mul	%t76	%t78	16
	mul r6,r4,r5                                      	@IRInst:mul	%t76	%t78	16
	str r6,[fp,#1112]                                 	@IRInst:mul	%t76	%t78	16
	ldr r4,[fp,#1112]                                 	@IRInst:add	%t77	%t76	%t79
	ldr r5,[fp,#1124]                                 	@IRInst:add	%t77	%t76	%t79
	add r6,r4,r5                                      	@IRInst:add	%t77	%t76	%t79
	str r6,[fp,#1116]                                 	@IRInst:add	%t77	%t76	%t79
	ldr r4,[fp,#1116]                                 	@IRInst:mul	%t80	%t77	4
	mov r5,#4                                         	@IRInst:mul	%t80	%t77	4
	mul r6,r4,r5                                      	@IRInst:mul	%t80	%t77	4
	str r6,[fp,#1128]                                 	@IRInst:mul	%t80	%t77	4
	add r4,fp,#20                                     	@IRInst:add	%t81	p	%t80
	ldr r5,[fp,#1128]                                 	@IRInst:add	%t81	p	%t80
	add r6,r4,r5                                      	@IRInst:add	%t81	p	%t80
	str r6,[fp,#1132]                                 	@IRInst:add	%t81	p	%t80
	ldr r4,[fp,#1132]                                 	@IRInst:assign	%t82	%t81
	ldr r4,[r4]                                       	@IRInst:assign	%t82	%t81
	str r4,[fp,#1136]                                 	@IRInst:assign	%t82	%t81
	ldr r4,[fp,#1136]                                 	@IRInst:add	%t83	%t82	1
	mov r5,#1                                         	@IRInst:add	%t83	%t82	1
	add r6,r4,r5                                      	@IRInst:add	%t83	%t82	1
	str r6,[fp,#1140]                                 	@IRInst:add	%t83	%t82	1
	ldr r4,[fp,#1044]                                 	@IRInst:mul	%t72	i	16
	mov r5,#16                                        	@IRInst:mul	%t72	i	16
	mul r6,r4,r5                                      	@IRInst:mul	%t72	i	16
	str r6,[fp,#1096]                                 	@IRInst:mul	%t72	i	16
	ldr r4,[fp,#1096]                                 	@IRInst:add	%t73	%t72	j
	ldr r5,[fp,#1048]                                 	@IRInst:add	%t73	%t72	j
	add r6,r4,r5                                      	@IRInst:add	%t73	%t72	j
	str r6,[fp,#1100]                                 	@IRInst:add	%t73	%t72	j
	ldr r4,[fp,#1100]                                 	@IRInst:mul	%t74	%t73	4
	mov r5,#4                                         	@IRInst:mul	%t74	%t73	4
	mul r6,r4,r5                                      	@IRInst:mul	%t74	%t73	4
	str r6,[fp,#1104]                                 	@IRInst:mul	%t74	%t73	4
	add r4,fp,#20                                     	@IRInst:add	%t75	p	%t74
	ldr r5,[fp,#1104]                                 	@IRInst:add	%t75	p	%t74
	add r6,r4,r5                                      	@IRInst:add	%t75	p	%t74
	str r6,[fp,#1108]                                 	@IRInst:add	%t75	p	%t74
	ldr r5,[fp,#1108]                                 	@IRInst:assign	%t75	%t83
	ldr r4,[fp,#1140]                                 	@IRInst:assign	%t75	%t83
	str r4,[r5]                                       	@IRInst:assign	%t75	%t83
	b .L24                                            
.L23:
	ldr r4,[fp,#1044]                                 	@IRInst:sub	%t90	i	1
	mov r5,#1                                         	@IRInst:sub	%t90	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t90	i	1
	str r6,[fp,#1168]                                 	@IRInst:sub	%t90	i	1
	ldr r4,[fp,#1168]                                 	@IRInst:mul	%t88	%t90	16
	mov r5,#16                                        	@IRInst:mul	%t88	%t90	16
	mul r6,r4,r5                                      	@IRInst:mul	%t88	%t90	16
	str r6,[fp,#1160]                                 	@IRInst:mul	%t88	%t90	16
	ldr r4,[fp,#1160]                                 	@IRInst:add	%t89	%t88	j
	ldr r5,[fp,#1048]                                 	@IRInst:add	%t89	%t88	j
	add r6,r4,r5                                      	@IRInst:add	%t89	%t88	j
	str r6,[fp,#1164]                                 	@IRInst:add	%t89	%t88	j
	ldr r4,[fp,#1164]                                 	@IRInst:mul	%t91	%t89	4
	mov r5,#4                                         	@IRInst:mul	%t91	%t89	4
	mul r6,r4,r5                                      	@IRInst:mul	%t91	%t89	4
	str r6,[fp,#1172]                                 	@IRInst:mul	%t91	%t89	4
	add r4,fp,#20                                     	@IRInst:add	%t92	p	%t91
	ldr r5,[fp,#1172]                                 	@IRInst:add	%t92	p	%t91
	add r6,r4,r5                                      	@IRInst:add	%t92	p	%t91
	str r6,[fp,#1176]                                 	@IRInst:add	%t92	p	%t91
	ldr r4,[fp,#1176]                                 	@IRInst:assign	%t93	%t92
	ldr r4,[r4]                                       	@IRInst:assign	%t93	%t92
	str r4,[fp,#1180]                                 	@IRInst:assign	%t93	%t92
	ldr r4,[fp,#1048]                                 	@IRInst:sub	%t96	j	1
	mov r5,#1                                         	@IRInst:sub	%t96	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t96	j	1
	str r6,[fp,#1192]                                 	@IRInst:sub	%t96	j	1
	ldr r4,[fp,#1044]                                 	@IRInst:mul	%t94	i	16
	mov r5,#16                                        	@IRInst:mul	%t94	i	16
	mul r6,r4,r5                                      	@IRInst:mul	%t94	i	16
	str r6,[fp,#1184]                                 	@IRInst:mul	%t94	i	16
	ldr r4,[fp,#1184]                                 	@IRInst:add	%t95	%t94	%t96
	ldr r5,[fp,#1192]                                 	@IRInst:add	%t95	%t94	%t96
	add r6,r4,r5                                      	@IRInst:add	%t95	%t94	%t96
	str r6,[fp,#1188]                                 	@IRInst:add	%t95	%t94	%t96
	ldr r4,[fp,#1188]                                 	@IRInst:mul	%t97	%t95	4
	mov r5,#4                                         	@IRInst:mul	%t97	%t95	4
	mul r6,r4,r5                                      	@IRInst:mul	%t97	%t95	4
	str r6,[fp,#1196]                                 	@IRInst:mul	%t97	%t95	4
	add r4,fp,#20                                     	@IRInst:add	%t98	p	%t97
	ldr r5,[fp,#1196]                                 	@IRInst:add	%t98	p	%t97
	add r6,r4,r5                                      	@IRInst:add	%t98	p	%t97
	str r6,[fp,#1200]                                 	@IRInst:add	%t98	p	%t97
	ldr r4,[fp,#1200]                                 	@IRInst:assign	%t99	%t98
	ldr r4,[r4]                                       	@IRInst:assign	%t99	%t98
	str r4,[fp,#1204]                                 	@IRInst:assign	%t99	%t98
	ldr r0,[fp,#1180]                                 	@IRInst:assign	r0	%t93
	ldr r1,[fp,#1204]                                 	@IRInst:assign	r1	%t99
	bl MAX                                            
	str r0,[fp,#1208]                                 	@IRInst:assign	%t100	r0
	ldr r4,[fp,#1044]                                 	@IRInst:mul	%t84	i	16
	mov r5,#16                                        	@IRInst:mul	%t84	i	16
	mul r6,r4,r5                                      	@IRInst:mul	%t84	i	16
	str r6,[fp,#1144]                                 	@IRInst:mul	%t84	i	16
	ldr r4,[fp,#1144]                                 	@IRInst:add	%t85	%t84	j
	ldr r5,[fp,#1048]                                 	@IRInst:add	%t85	%t84	j
	add r6,r4,r5                                      	@IRInst:add	%t85	%t84	j
	str r6,[fp,#1148]                                 	@IRInst:add	%t85	%t84	j
	ldr r4,[fp,#1148]                                 	@IRInst:mul	%t86	%t85	4
	mov r5,#4                                         	@IRInst:mul	%t86	%t85	4
	mul r6,r4,r5                                      	@IRInst:mul	%t86	%t85	4
	str r6,[fp,#1152]                                 	@IRInst:mul	%t86	%t85	4
	add r4,fp,#20                                     	@IRInst:add	%t87	p	%t86
	ldr r5,[fp,#1152]                                 	@IRInst:add	%t87	p	%t86
	add r6,r4,r5                                      	@IRInst:add	%t87	p	%t86
	str r6,[fp,#1156]                                 	@IRInst:add	%t87	p	%t86
	ldr r5,[fp,#1156]                                 	@IRInst:assign	%t87	%t100
	ldr r4,[fp,#1208]                                 	@IRInst:assign	%t87	%t100
	str r4,[r5]                                       	@IRInst:assign	%t87	%t100
.L24:
	ldr r4,[fp,#1048]                                 	@IRInst:add	%t101	j	1
	mov r5,#1                                         	@IRInst:add	%t101	j	1
	add r6,r4,r5                                      	@IRInst:add	%t101	j	1
	str r6,[fp,#1212]                                 	@IRInst:add	%t101	j	1
	ldr r4,[fp,#1212]                                 	@IRInst:assign	j	%t101
	str r4,[fp,#1048]                                 	@IRInst:assign	j	%t101
	b .L19                                            
.L21:
	ldr r4,[fp,#1044]                                 	@IRInst:add	%t102	i	1
	mov r5,#1                                         	@IRInst:add	%t102	i	1
	add r6,r4,r5                                      	@IRInst:add	%t102	i	1
	str r6,[fp,#1216]                                 	@IRInst:add	%t102	i	1
	ldr r4,[fp,#1216]                                 	@IRInst:assign	i	%t102
	str r4,[fp,#1044]                                 	@IRInst:assign	i	%t102
	b .L16                                            
.L18:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t103	len1	16
	mov r5,#16                                        	@IRInst:mul	%t103	len1	16
	mul r6,r4,r5                                      	@IRInst:mul	%t103	len1	16
	str r6,[fp,#1220]                                 	@IRInst:mul	%t103	len1	16
	ldr r4,[fp,#1220]                                 	@IRInst:add	%t104	%t103	len2
	ldr r5,[fp,#16]                                   	@IRInst:add	%t104	%t103	len2
	add r6,r4,r5                                      	@IRInst:add	%t104	%t103	len2
	str r6,[fp,#1224]                                 	@IRInst:add	%t104	%t103	len2
	ldr r4,[fp,#1224]                                 	@IRInst:mul	%t105	%t104	4
	mov r5,#4                                         	@IRInst:mul	%t105	%t104	4
	mul r6,r4,r5                                      	@IRInst:mul	%t105	%t104	4
	str r6,[fp,#1228]                                 	@IRInst:mul	%t105	%t104	4
	add r4,fp,#20                                     	@IRInst:add	%t106	p	%t105
	ldr r5,[fp,#1228]                                 	@IRInst:add	%t106	p	%t105
	add r6,r4,r5                                      	@IRInst:add	%t106	p	%t105
	str r6,[fp,#1232]                                 	@IRInst:add	%t106	p	%t105
	ldr r4,[fp,#1232]                                 	@IRInst:assign	%t107	%t106
	ldr r4,[r4]                                       	@IRInst:assign	%t107	%t106
	str r4,[fp,#1236]                                 	@IRInst:assign	%t107	%t106
	ldr r4,[fp,#1236]                                 	@IRInst:assign		%t107
	str r4,[fp]                                       	@IRInst:assign		%t107
	b .L15                                            
.L15:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#216                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global main
.type main, %function
main:
.L25:
	push {r10,fp,lr}                                  
	sub sp,sp,#356                                    
	add fp,sp,#0                                      
	mov r4,#0                                         	@IRInst:mul	%t110	0	4
	mov r5,#4                                         	@IRInst:mul	%t110	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t110	0	4
	str r6,[fp,#64]                                   	@IRInst:mul	%t110	0	4
	add r4,fp,#4                                      	@IRInst:add	%t111	A	%t110
	ldr r5,[fp,#64]                                   	@IRInst:add	%t111	A	%t110
	add r6,r4,r5                                      	@IRInst:add	%t111	A	%t110
	str r6,[fp,#68]                                   	@IRInst:add	%t111	A	%t110
	ldr r5,[fp,#68]                                   	@IRInst:assign	%t111	8
	mov r4,#8                                         	@IRInst:assign	%t111	8
	str r4,[r5]                                       	@IRInst:assign	%t111	8
	mov r4,#1                                         	@IRInst:mul	%t112	1	4
	mov r5,#4                                         	@IRInst:mul	%t112	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t112	1	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t112	1	4
	add r4,fp,#4                                      	@IRInst:add	%t113	A	%t112
	ldr r5,[fp,#72]                                   	@IRInst:add	%t113	A	%t112
	add r6,r4,r5                                      	@IRInst:add	%t113	A	%t112
	str r6,[fp,#76]                                   	@IRInst:add	%t113	A	%t112
	ldr r5,[fp,#76]                                   	@IRInst:assign	%t113	7
	mov r4,#7                                         	@IRInst:assign	%t113	7
	str r4,[r5]                                       	@IRInst:assign	%t113	7
	mov r4,#2                                         	@IRInst:mul	%t114	2	4
	mov r5,#4                                         	@IRInst:mul	%t114	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t114	2	4
	str r6,[fp,#80]                                   	@IRInst:mul	%t114	2	4
	add r4,fp,#4                                      	@IRInst:add	%t115	A	%t114
	ldr r5,[fp,#80]                                   	@IRInst:add	%t115	A	%t114
	add r6,r4,r5                                      	@IRInst:add	%t115	A	%t114
	str r6,[fp,#84]                                   	@IRInst:add	%t115	A	%t114
	ldr r5,[fp,#84]                                   	@IRInst:assign	%t115	4
	mov r4,#4                                         	@IRInst:assign	%t115	4
	str r4,[r5]                                       	@IRInst:assign	%t115	4
	mov r4,#3                                         	@IRInst:mul	%t116	3	4
	mov r5,#4                                         	@IRInst:mul	%t116	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t116	3	4
	str r6,[fp,#88]                                   	@IRInst:mul	%t116	3	4
	add r4,fp,#4                                      	@IRInst:add	%t117	A	%t116
	ldr r5,[fp,#88]                                   	@IRInst:add	%t117	A	%t116
	add r6,r4,r5                                      	@IRInst:add	%t117	A	%t116
	str r6,[fp,#92]                                   	@IRInst:add	%t117	A	%t116
	ldr r5,[fp,#92]                                   	@IRInst:assign	%t117	1
	mov r4,#1                                         	@IRInst:assign	%t117	1
	str r4,[r5]                                       	@IRInst:assign	%t117	1
	mov r4,#4                                         	@IRInst:mul	%t118	4	4
	mov r5,#4                                         	@IRInst:mul	%t118	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t118	4	4
	str r6,[fp,#96]                                   	@IRInst:mul	%t118	4	4
	add r4,fp,#4                                      	@IRInst:add	%t119	A	%t118
	ldr r5,[fp,#96]                                   	@IRInst:add	%t119	A	%t118
	add r6,r4,r5                                      	@IRInst:add	%t119	A	%t118
	str r6,[fp,#100]                                  	@IRInst:add	%t119	A	%t118
	ldr r5,[fp,#100]                                  	@IRInst:assign	%t119	2
	mov r4,#2                                         	@IRInst:assign	%t119	2
	str r4,[r5]                                       	@IRInst:assign	%t119	2
	mov r4,#5                                         	@IRInst:mul	%t120	5	4
	mov r5,#4                                         	@IRInst:mul	%t120	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t120	5	4
	str r6,[fp,#104]                                  	@IRInst:mul	%t120	5	4
	add r4,fp,#4                                      	@IRInst:add	%t121	A	%t120
	ldr r5,[fp,#104]                                  	@IRInst:add	%t121	A	%t120
	add r6,r4,r5                                      	@IRInst:add	%t121	A	%t120
	str r6,[fp,#108]                                  	@IRInst:add	%t121	A	%t120
	ldr r5,[fp,#108]                                  	@IRInst:assign	%t121	7
	mov r4,#7                                         	@IRInst:assign	%t121	7
	str r4,[r5]                                       	@IRInst:assign	%t121	7
	mov r4,#6                                         	@IRInst:mul	%t122	6	4
	mov r5,#4                                         	@IRInst:mul	%t122	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t122	6	4
	str r6,[fp,#112]                                  	@IRInst:mul	%t122	6	4
	add r4,fp,#4                                      	@IRInst:add	%t123	A	%t122
	ldr r5,[fp,#112]                                  	@IRInst:add	%t123	A	%t122
	add r6,r4,r5                                      	@IRInst:add	%t123	A	%t122
	str r6,[fp,#116]                                  	@IRInst:add	%t123	A	%t122
	ldr r5,[fp,#116]                                  	@IRInst:assign	%t123	0
	mov r4,#0                                         	@IRInst:assign	%t123	0
	str r4,[r5]                                       	@IRInst:assign	%t123	0
	mov r4,#7                                         	@IRInst:mul	%t124	7	4
	mov r5,#4                                         	@IRInst:mul	%t124	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t124	7	4
	str r6,[fp,#120]                                  	@IRInst:mul	%t124	7	4
	add r4,fp,#4                                      	@IRInst:add	%t125	A	%t124
	ldr r5,[fp,#120]                                  	@IRInst:add	%t125	A	%t124
	add r6,r4,r5                                      	@IRInst:add	%t125	A	%t124
	str r6,[fp,#124]                                  	@IRInst:add	%t125	A	%t124
	ldr r5,[fp,#124]                                  	@IRInst:assign	%t125	1
	mov r4,#1                                         	@IRInst:assign	%t125	1
	str r4,[r5]                                       	@IRInst:assign	%t125	1
	mov r4,#8                                         	@IRInst:mul	%t126	8	4
	mov r5,#4                                         	@IRInst:mul	%t126	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t126	8	4
	str r6,[fp,#128]                                  	@IRInst:mul	%t126	8	4
	add r4,fp,#4                                      	@IRInst:add	%t127	A	%t126
	ldr r5,[fp,#128]                                  	@IRInst:add	%t127	A	%t126
	add r6,r4,r5                                      	@IRInst:add	%t127	A	%t126
	str r6,[fp,#132]                                  	@IRInst:add	%t127	A	%t126
	ldr r5,[fp,#132]                                  	@IRInst:assign	%t127	9
	mov r4,#9                                         	@IRInst:assign	%t127	9
	str r4,[r5]                                       	@IRInst:assign	%t127	9
	mov r4,#9                                         	@IRInst:mul	%t128	9	4
	mov r5,#4                                         	@IRInst:mul	%t128	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t128	9	4
	str r6,[fp,#136]                                  	@IRInst:mul	%t128	9	4
	add r4,fp,#4                                      	@IRInst:add	%t129	A	%t128
	ldr r5,[fp,#136]                                  	@IRInst:add	%t129	A	%t128
	add r6,r4,r5                                      	@IRInst:add	%t129	A	%t128
	str r6,[fp,#140]                                  	@IRInst:add	%t129	A	%t128
	ldr r5,[fp,#140]                                  	@IRInst:assign	%t129	3
	mov r4,#3                                         	@IRInst:assign	%t129	3
	str r4,[r5]                                       	@IRInst:assign	%t129	3
	mov r4,#10                                        	@IRInst:mul	%t130	10	4
	mov r5,#4                                         	@IRInst:mul	%t130	10	4
	mul r6,r4,r5                                      	@IRInst:mul	%t130	10	4
	str r6,[fp,#144]                                  	@IRInst:mul	%t130	10	4
	add r4,fp,#4                                      	@IRInst:add	%t131	A	%t130
	ldr r5,[fp,#144]                                  	@IRInst:add	%t131	A	%t130
	add r6,r4,r5                                      	@IRInst:add	%t131	A	%t130
	str r6,[fp,#148]                                  	@IRInst:add	%t131	A	%t130
	ldr r5,[fp,#148]                                  	@IRInst:assign	%t131	4
	mov r4,#4                                         	@IRInst:assign	%t131	4
	str r4,[r5]                                       	@IRInst:assign	%t131	4
	mov r4,#11                                        	@IRInst:mul	%t132	11	4
	mov r5,#4                                         	@IRInst:mul	%t132	11	4
	mul r6,r4,r5                                      	@IRInst:mul	%t132	11	4
	str r6,[fp,#152]                                  	@IRInst:mul	%t132	11	4
	add r4,fp,#4                                      	@IRInst:add	%t133	A	%t132
	ldr r5,[fp,#152]                                  	@IRInst:add	%t133	A	%t132
	add r6,r4,r5                                      	@IRInst:add	%t133	A	%t132
	str r6,[fp,#156]                                  	@IRInst:add	%t133	A	%t132
	ldr r5,[fp,#156]                                  	@IRInst:assign	%t133	8
	mov r4,#8                                         	@IRInst:assign	%t133	8
	str r4,[r5]                                       	@IRInst:assign	%t133	8
	mov r4,#12                                        	@IRInst:mul	%t134	12	4
	mov r5,#4                                         	@IRInst:mul	%t134	12	4
	mul r6,r4,r5                                      	@IRInst:mul	%t134	12	4
	str r6,[fp,#160]                                  	@IRInst:mul	%t134	12	4
	add r4,fp,#4                                      	@IRInst:add	%t135	A	%t134
	ldr r5,[fp,#160]                                  	@IRInst:add	%t135	A	%t134
	add r6,r4,r5                                      	@IRInst:add	%t135	A	%t134
	str r6,[fp,#164]                                  	@IRInst:add	%t135	A	%t134
	ldr r5,[fp,#164]                                  	@IRInst:assign	%t135	3
	mov r4,#3                                         	@IRInst:assign	%t135	3
	str r4,[r5]                                       	@IRInst:assign	%t135	3
	mov r4,#13                                        	@IRInst:mul	%t136	13	4
	mov r5,#4                                         	@IRInst:mul	%t136	13	4
	mul r6,r4,r5                                      	@IRInst:mul	%t136	13	4
	str r6,[fp,#168]                                  	@IRInst:mul	%t136	13	4
	add r4,fp,#4                                      	@IRInst:add	%t137	A	%t136
	ldr r5,[fp,#168]                                  	@IRInst:add	%t137	A	%t136
	add r6,r4,r5                                      	@IRInst:add	%t137	A	%t136
	str r6,[fp,#172]                                  	@IRInst:add	%t137	A	%t136
	ldr r5,[fp,#172]                                  	@IRInst:assign	%t137	7
	mov r4,#7                                         	@IRInst:assign	%t137	7
	str r4,[r5]                                       	@IRInst:assign	%t137	7
	mov r4,#14                                        	@IRInst:mul	%t138	14	4
	mov r5,#4                                         	@IRInst:mul	%t138	14	4
	mul r6,r4,r5                                      	@IRInst:mul	%t138	14	4
	str r6,[fp,#176]                                  	@IRInst:mul	%t138	14	4
	add r4,fp,#4                                      	@IRInst:add	%t139	A	%t138
	ldr r5,[fp,#176]                                  	@IRInst:add	%t139	A	%t138
	add r6,r4,r5                                      	@IRInst:add	%t139	A	%t138
	str r6,[fp,#180]                                  	@IRInst:add	%t139	A	%t138
	ldr r5,[fp,#180]                                  	@IRInst:assign	%t139	0
	mov r4,#0                                         	@IRInst:assign	%t139	0
	str r4,[r5]                                       	@IRInst:assign	%t139	0
	mov r4,#0                                         	@IRInst:mul	%t141	0	4
	mov r5,#4                                         	@IRInst:mul	%t141	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t141	0	4
	str r6,[fp,#236]                                  	@IRInst:mul	%t141	0	4
	add r4,fp,#184                                    	@IRInst:add	%t142	B	%t141
	ldr r5,[fp,#236]                                  	@IRInst:add	%t142	B	%t141
	add r6,r4,r5                                      	@IRInst:add	%t142	B	%t141
	str r6,[fp,#240]                                  	@IRInst:add	%t142	B	%t141
	ldr r5,[fp,#240]                                  	@IRInst:assign	%t142	3
	mov r4,#3                                         	@IRInst:assign	%t142	3
	str r4,[r5]                                       	@IRInst:assign	%t142	3
	mov r4,#1                                         	@IRInst:mul	%t143	1	4
	mov r5,#4                                         	@IRInst:mul	%t143	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t143	1	4
	str r6,[fp,#244]                                  	@IRInst:mul	%t143	1	4
	add r4,fp,#184                                    	@IRInst:add	%t144	B	%t143
	ldr r5,[fp,#244]                                  	@IRInst:add	%t144	B	%t143
	add r6,r4,r5                                      	@IRInst:add	%t144	B	%t143
	str r6,[fp,#248]                                  	@IRInst:add	%t144	B	%t143
	ldr r5,[fp,#248]                                  	@IRInst:assign	%t144	9
	mov r4,#9                                         	@IRInst:assign	%t144	9
	str r4,[r5]                                       	@IRInst:assign	%t144	9
	mov r4,#2                                         	@IRInst:mul	%t145	2	4
	mov r5,#4                                         	@IRInst:mul	%t145	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t145	2	4
	str r6,[fp,#252]                                  	@IRInst:mul	%t145	2	4
	add r4,fp,#184                                    	@IRInst:add	%t146	B	%t145
	ldr r5,[fp,#252]                                  	@IRInst:add	%t146	B	%t145
	add r6,r4,r5                                      	@IRInst:add	%t146	B	%t145
	str r6,[fp,#256]                                  	@IRInst:add	%t146	B	%t145
	ldr r5,[fp,#256]                                  	@IRInst:assign	%t146	7
	mov r4,#7                                         	@IRInst:assign	%t146	7
	str r4,[r5]                                       	@IRInst:assign	%t146	7
	mov r4,#3                                         	@IRInst:mul	%t147	3	4
	mov r5,#4                                         	@IRInst:mul	%t147	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t147	3	4
	str r6,[fp,#260]                                  	@IRInst:mul	%t147	3	4
	add r4,fp,#184                                    	@IRInst:add	%t148	B	%t147
	ldr r5,[fp,#260]                                  	@IRInst:add	%t148	B	%t147
	add r6,r4,r5                                      	@IRInst:add	%t148	B	%t147
	str r6,[fp,#264]                                  	@IRInst:add	%t148	B	%t147
	ldr r5,[fp,#264]                                  	@IRInst:assign	%t148	1
	mov r4,#1                                         	@IRInst:assign	%t148	1
	str r4,[r5]                                       	@IRInst:assign	%t148	1
	mov r4,#4                                         	@IRInst:mul	%t149	4	4
	mov r5,#4                                         	@IRInst:mul	%t149	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t149	4	4
	str r6,[fp,#268]                                  	@IRInst:mul	%t149	4	4
	add r4,fp,#184                                    	@IRInst:add	%t150	B	%t149
	ldr r5,[fp,#268]                                  	@IRInst:add	%t150	B	%t149
	add r6,r4,r5                                      	@IRInst:add	%t150	B	%t149
	str r6,[fp,#272]                                  	@IRInst:add	%t150	B	%t149
	ldr r5,[fp,#272]                                  	@IRInst:assign	%t150	4
	mov r4,#4                                         	@IRInst:assign	%t150	4
	str r4,[r5]                                       	@IRInst:assign	%t150	4
	mov r4,#5                                         	@IRInst:mul	%t151	5	4
	mov r5,#4                                         	@IRInst:mul	%t151	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t151	5	4
	str r6,[fp,#276]                                  	@IRInst:mul	%t151	5	4
	add r4,fp,#184                                    	@IRInst:add	%t152	B	%t151
	ldr r5,[fp,#276]                                  	@IRInst:add	%t152	B	%t151
	add r6,r4,r5                                      	@IRInst:add	%t152	B	%t151
	str r6,[fp,#280]                                  	@IRInst:add	%t152	B	%t151
	ldr r5,[fp,#280]                                  	@IRInst:assign	%t152	2
	mov r4,#2                                         	@IRInst:assign	%t152	2
	str r4,[r5]                                       	@IRInst:assign	%t152	2
	mov r4,#6                                         	@IRInst:mul	%t153	6	4
	mov r5,#4                                         	@IRInst:mul	%t153	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t153	6	4
	str r6,[fp,#284]                                  	@IRInst:mul	%t153	6	4
	add r4,fp,#184                                    	@IRInst:add	%t154	B	%t153
	ldr r5,[fp,#284]                                  	@IRInst:add	%t154	B	%t153
	add r6,r4,r5                                      	@IRInst:add	%t154	B	%t153
	str r6,[fp,#288]                                  	@IRInst:add	%t154	B	%t153
	ldr r5,[fp,#288]                                  	@IRInst:assign	%t154	4
	mov r4,#4                                         	@IRInst:assign	%t154	4
	str r4,[r5]                                       	@IRInst:assign	%t154	4
	mov r4,#7                                         	@IRInst:mul	%t155	7	4
	mov r5,#4                                         	@IRInst:mul	%t155	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t155	7	4
	str r6,[fp,#292]                                  	@IRInst:mul	%t155	7	4
	add r4,fp,#184                                    	@IRInst:add	%t156	B	%t155
	ldr r5,[fp,#292]                                  	@IRInst:add	%t156	B	%t155
	add r6,r4,r5                                      	@IRInst:add	%t156	B	%t155
	str r6,[fp,#296]                                  	@IRInst:add	%t156	B	%t155
	ldr r5,[fp,#296]                                  	@IRInst:assign	%t156	3
	mov r4,#3                                         	@IRInst:assign	%t156	3
	str r4,[r5]                                       	@IRInst:assign	%t156	3
	mov r4,#8                                         	@IRInst:mul	%t157	8	4
	mov r5,#4                                         	@IRInst:mul	%t157	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t157	8	4
	str r6,[fp,#300]                                  	@IRInst:mul	%t157	8	4
	add r4,fp,#184                                    	@IRInst:add	%t158	B	%t157
	ldr r5,[fp,#300]                                  	@IRInst:add	%t158	B	%t157
	add r6,r4,r5                                      	@IRInst:add	%t158	B	%t157
	str r6,[fp,#304]                                  	@IRInst:add	%t158	B	%t157
	ldr r5,[fp,#304]                                  	@IRInst:assign	%t158	6
	mov r4,#6                                         	@IRInst:assign	%t158	6
	str r4,[r5]                                       	@IRInst:assign	%t158	6
	mov r4,#9                                         	@IRInst:mul	%t159	9	4
	mov r5,#4                                         	@IRInst:mul	%t159	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t159	9	4
	str r6,[fp,#308]                                  	@IRInst:mul	%t159	9	4
	add r4,fp,#184                                    	@IRInst:add	%t160	B	%t159
	ldr r5,[fp,#308]                                  	@IRInst:add	%t160	B	%t159
	add r6,r4,r5                                      	@IRInst:add	%t160	B	%t159
	str r6,[fp,#312]                                  	@IRInst:add	%t160	B	%t159
	ldr r5,[fp,#312]                                  	@IRInst:assign	%t160	8
	mov r4,#8                                         	@IRInst:assign	%t160	8
	str r4,[r5]                                       	@IRInst:assign	%t160	8
	mov r4,#10                                        	@IRInst:mul	%t161	10	4
	mov r5,#4                                         	@IRInst:mul	%t161	10	4
	mul r6,r4,r5                                      	@IRInst:mul	%t161	10	4
	str r6,[fp,#316]                                  	@IRInst:mul	%t161	10	4
	add r4,fp,#184                                    	@IRInst:add	%t162	B	%t161
	ldr r5,[fp,#316]                                  	@IRInst:add	%t162	B	%t161
	add r6,r4,r5                                      	@IRInst:add	%t162	B	%t161
	str r6,[fp,#320]                                  	@IRInst:add	%t162	B	%t161
	ldr r5,[fp,#320]                                  	@IRInst:assign	%t162	0
	mov r4,#0                                         	@IRInst:assign	%t162	0
	str r4,[r5]                                       	@IRInst:assign	%t162	0
	mov r4,#11                                        	@IRInst:mul	%t163	11	4
	mov r5,#4                                         	@IRInst:mul	%t163	11	4
	mul r6,r4,r5                                      	@IRInst:mul	%t163	11	4
	str r6,[fp,#324]                                  	@IRInst:mul	%t163	11	4
	add r4,fp,#184                                    	@IRInst:add	%t164	B	%t163
	ldr r5,[fp,#324]                                  	@IRInst:add	%t164	B	%t163
	add r6,r4,r5                                      	@IRInst:add	%t164	B	%t163
	str r6,[fp,#328]                                  	@IRInst:add	%t164	B	%t163
	ldr r5,[fp,#328]                                  	@IRInst:assign	%t164	1
	mov r4,#1                                         	@IRInst:assign	%t164	1
	str r4,[r5]                                       	@IRInst:assign	%t164	1
	mov r4,#12                                        	@IRInst:mul	%t165	12	4
	mov r5,#4                                         	@IRInst:mul	%t165	12	4
	mul r6,r4,r5                                      	@IRInst:mul	%t165	12	4
	str r6,[fp,#332]                                  	@IRInst:mul	%t165	12	4
	add r4,fp,#184                                    	@IRInst:add	%t166	B	%t165
	ldr r5,[fp,#332]                                  	@IRInst:add	%t166	B	%t165
	add r6,r4,r5                                      	@IRInst:add	%t166	B	%t165
	str r6,[fp,#336]                                  	@IRInst:add	%t166	B	%t165
	ldr r5,[fp,#336]                                  	@IRInst:assign	%t166	5
	mov r4,#5                                         	@IRInst:assign	%t166	5
	str r4,[r5]                                       	@IRInst:assign	%t166	5
	add r0,fp,#4                                      	@IRInst:assign	r0	A
	mov r1,#15                                        	@IRInst:assign	r1	15
	bl max_sum_nonadjacent                            
	str r0,[fp,#348]                                  	@IRInst:assign	%t169	r0
	ldr r0,[fp,#348]                                  	@IRInst:assign	r0	%t169
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	add r0,fp,#4                                      	@IRInst:assign	r0	A
	mov r1,#15                                        	@IRInst:assign	r1	15
	add r2,fp,#184                                    	@IRInst:assign	r2	B
	mov r3,#13                                        	@IRInst:assign	r3	13
	bl longest_common_subseq                          
	str r0,[fp,#352]                                  	@IRInst:assign	%t170	r0
	ldr r0,[fp,#352]                                  	@IRInst:assign	r0	%t170
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L26                                            
.L26:
	ldr r0,[fp]                                       
	add fp,fp,#356                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
