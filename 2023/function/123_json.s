.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
pos:
        .long   0
buffer:
        .zero   200000000
.text
.global_0_pos:
        .long   pos
.global_0_buffer:
        .long   buffer
.global is_number
.type is_number, %function
is_number:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	ch	r0
	ldr r4,[fp,#4]                                    	@IRInst:bge	%t4	ch	48
	mov r5,#48                                        	@IRInst:bge	%t4	ch	48
	cmp r4,r5                                         	@IRInst:bge	%t4	ch	48
	movge r6,#1                                       	@IRInst:bge	%t4	ch	48
	movlt r6,#0                                       	@IRInst:bge	%t4	ch	48
	str r6,[fp,#8]                                    	@IRInst:bge	%t4	ch	48
	bge .L3                                           
	b .L4                                             
.L3:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t5	ch	57
	mov r5,#57                                        	@IRInst:ble	%t5	ch	57
	cmp r4,r5                                         	@IRInst:ble	%t5	ch	57
	movle r6,#1                                       	@IRInst:ble	%t5	ch	57
	movgt r6,#0                                       	@IRInst:ble	%t5	ch	57
	str r6,[fp,#12]                                   	@IRInst:ble	%t5	ch	57
	ble .L6                                           
	b .L7                                             
.L6:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L2                                             
	b .L8                                             
.L7:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L8:
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L5:
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_pos:
        .long   pos
.global_1_buffer:
        .long   buffer
.global skip_space
.type skip_space, %function
skip_space:
.L9:
	push {r10,fp}                                     
	sub sp,sp,#92                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	buf	r0
	str r1,[fp,#4]                                    	@IRInst:assign	len	r1
.L11:
.L12:
	ldr r4,.global_1_pos                              	@IRInst:bge	%t11	pos	len
	ldr r4,[r4]                                       	@IRInst:bge	%t11	pos	len
	ldr r5,[fp,#4]                                    	@IRInst:bge	%t11	pos	len
	cmp r4,r5                                         	@IRInst:bge	%t11	pos	len
	movge r6,#1                                       	@IRInst:bge	%t11	pos	len
	movlt r6,#0                                       	@IRInst:bge	%t11	pos	len
	str r6,[fp,#8]                                    	@IRInst:bge	%t11	pos	len
	bge .L14                                          
	b .L15                                            
.L14:
	b .L13                                            
.L15:
.L16:
	ldr r4,.global_1_pos                              	@IRInst:mul	%t12	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t12	pos	4
	mov r5,#4                                         	@IRInst:mul	%t12	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t12	pos	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t12	pos	4
	ldr r4,[fp]                                       	@IRInst:add	%t13	buf	%t12
	ldr r5,[fp,#12]                                   	@IRInst:add	%t13	buf	%t12
	add r6,r4,r5                                      	@IRInst:add	%t13	buf	%t12
	str r6,[fp,#16]                                   	@IRInst:add	%t13	buf	%t12
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t14	%t13
	ldr r4,[r4]                                       	@IRInst:assign	%t14	%t13
	str r4,[fp,#20]                                   	@IRInst:assign	%t14	%t13
	ldr r4,[fp,#20]                                   	@IRInst:beq	%t15	%t14	32
	mov r5,#32                                        	@IRInst:beq	%t15	%t14	32
	cmp r4,r5                                         	@IRInst:beq	%t15	%t14	32
	moveq r6,#1                                       	@IRInst:beq	%t15	%t14	32
	movne r6,#0                                       	@IRInst:beq	%t15	%t14	32
	str r6,[fp,#24]                                   	@IRInst:beq	%t15	%t14	32
	beq .L17                                          
	b .L18                                            
.L17:
	ldr r4,.global_1_pos                              	@IRInst:add	%t16	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t16	pos	1
	mov r5,#1                                         	@IRInst:add	%t16	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t16	pos	1
	str r6,[fp,#28]                                   	@IRInst:add	%t16	pos	1
	ldr r4,[fp,#28]                                   	@IRInst:assign	pos	%t16
	ldr r9,.global_1_pos                              	@IRInst:assign	pos	%t16
	str r4,[r9]                                       	@IRInst:assign	pos	%t16
	b .L19                                            
.L18:
	ldr r4,.global_1_pos                              	@IRInst:mul	%t17	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t17	pos	4
	mov r5,#4                                         	@IRInst:mul	%t17	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	pos	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t17	pos	4
	ldr r4,[fp]                                       	@IRInst:add	%t18	buf	%t17
	ldr r5,[fp,#32]                                   	@IRInst:add	%t18	buf	%t17
	add r6,r4,r5                                      	@IRInst:add	%t18	buf	%t17
	str r6,[fp,#36]                                   	@IRInst:add	%t18	buf	%t17
	ldr r4,[fp,#36]                                   	@IRInst:assign	%t19	%t18
	ldr r4,[r4]                                       	@IRInst:assign	%t19	%t18
	str r4,[fp,#40]                                   	@IRInst:assign	%t19	%t18
	ldr r4,[fp,#40]                                   	@IRInst:beq	%t20	%t19	9
	mov r5,#9                                         	@IRInst:beq	%t20	%t19	9
	cmp r4,r5                                         	@IRInst:beq	%t20	%t19	9
	moveq r6,#1                                       	@IRInst:beq	%t20	%t19	9
	movne r6,#0                                       	@IRInst:beq	%t20	%t19	9
	str r6,[fp,#44]                                   	@IRInst:beq	%t20	%t19	9
	beq .L20                                          
	b .L21                                            
.L20:
	ldr r4,.global_1_pos                              	@IRInst:add	%t21	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t21	pos	1
	mov r5,#1                                         	@IRInst:add	%t21	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t21	pos	1
	str r6,[fp,#48]                                   	@IRInst:add	%t21	pos	1
	ldr r4,[fp,#48]                                   	@IRInst:assign	pos	%t21
	ldr r9,.global_1_pos                              	@IRInst:assign	pos	%t21
	str r4,[r9]                                       	@IRInst:assign	pos	%t21
	b .L22                                            
.L21:
	ldr r4,.global_1_pos                              	@IRInst:mul	%t22	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t22	pos	4
	mov r5,#4                                         	@IRInst:mul	%t22	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t22	pos	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t22	pos	4
	ldr r4,[fp]                                       	@IRInst:add	%t23	buf	%t22
	ldr r5,[fp,#52]                                   	@IRInst:add	%t23	buf	%t22
	add r6,r4,r5                                      	@IRInst:add	%t23	buf	%t22
	str r6,[fp,#56]                                   	@IRInst:add	%t23	buf	%t22
	ldr r4,[fp,#56]                                   	@IRInst:assign	%t24	%t23
	ldr r4,[r4]                                       	@IRInst:assign	%t24	%t23
	str r4,[fp,#60]                                   	@IRInst:assign	%t24	%t23
	ldr r4,[fp,#60]                                   	@IRInst:beq	%t25	%t24	10
	mov r5,#10                                        	@IRInst:beq	%t25	%t24	10
	cmp r4,r5                                         	@IRInst:beq	%t25	%t24	10
	moveq r6,#1                                       	@IRInst:beq	%t25	%t24	10
	movne r6,#0                                       	@IRInst:beq	%t25	%t24	10
	str r6,[fp,#64]                                   	@IRInst:beq	%t25	%t24	10
	beq .L23                                          
	b .L24                                            
.L23:
	ldr r4,.global_1_pos                              	@IRInst:add	%t26	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t26	pos	1
	mov r5,#1                                         	@IRInst:add	%t26	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t26	pos	1
	str r6,[fp,#68]                                   	@IRInst:add	%t26	pos	1
	ldr r4,[fp,#68]                                   	@IRInst:assign	pos	%t26
	ldr r9,.global_1_pos                              	@IRInst:assign	pos	%t26
	str r4,[r9]                                       	@IRInst:assign	pos	%t26
	b .L25                                            
.L24:
	ldr r4,.global_1_pos                              	@IRInst:mul	%t27	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t27	pos	4
	mov r5,#4                                         	@IRInst:mul	%t27	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t27	pos	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t27	pos	4
	ldr r4,[fp]                                       	@IRInst:add	%t28	buf	%t27
	ldr r5,[fp,#72]                                   	@IRInst:add	%t28	buf	%t27
	add r6,r4,r5                                      	@IRInst:add	%t28	buf	%t27
	str r6,[fp,#76]                                   	@IRInst:add	%t28	buf	%t27
	ldr r4,[fp,#76]                                   	@IRInst:assign	%t29	%t28
	ldr r4,[r4]                                       	@IRInst:assign	%t29	%t28
	str r4,[fp,#80]                                   	@IRInst:assign	%t29	%t28
	ldr r4,[fp,#80]                                   	@IRInst:beq	%t30	%t29	13
	mov r5,#13                                        	@IRInst:beq	%t30	%t29	13
	cmp r4,r5                                         	@IRInst:beq	%t30	%t29	13
	moveq r6,#1                                       	@IRInst:beq	%t30	%t29	13
	movne r6,#0                                       	@IRInst:beq	%t30	%t29	13
	str r6,[fp,#84]                                   	@IRInst:beq	%t30	%t29	13
	beq .L26                                          
	b .L27                                            
.L26:
	ldr r4,.global_1_pos                              	@IRInst:add	%t31	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t31	pos	1
	mov r5,#1                                         	@IRInst:add	%t31	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t31	pos	1
	str r6,[fp,#88]                                   	@IRInst:add	%t31	pos	1
	ldr r4,[fp,#88]                                   	@IRInst:assign	pos	%t31
	ldr r9,.global_1_pos                              	@IRInst:assign	pos	%t31
	str r4,[r9]                                       	@IRInst:assign	pos	%t31
	b .L28                                            
.L27:
	b .L13                                            
.L28:
.L25:
.L22:
.L19:
	b .L11                                            
.L13:
.L10:
	add fp,fp,#92                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_2_pos:
        .long   pos
.global_2_buffer:
        .long   buffer
.global detect_item
.type detect_item, %function
detect_item:
.L29:
	push {r10,fp,lr}                                  
	ldr r10,=1284                                     
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	type	r0
	str r1,[fp,#8]                                    	@IRInst:assign	buf	r1
	str r2,[fp,#12]                                   	@IRInst:assign	len	r2
	ldr r4,.global_2_pos                              	@IRInst:bge	%t39	pos	len
	ldr r4,[r4]                                       	@IRInst:bge	%t39	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t39	pos	len
	cmp r4,r5                                         	@IRInst:bge	%t39	pos	len
	movge r6,#1                                       	@IRInst:bge	%t39	pos	len
	movlt r6,#0                                       	@IRInst:bge	%t39	pos	len
	str r6,[fp,#16]                                   	@IRInst:bge	%t39	pos	len
	bge .L31                                          
	b .L32                                            
.L31:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L32:
.L33:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t40	type	0
	mov r5,#0                                         	@IRInst:beq	%t40	type	0
	cmp r4,r5                                         	@IRInst:beq	%t40	type	0
	moveq r6,#1                                       	@IRInst:beq	%t40	type	0
	movne r6,#0                                       	@IRInst:beq	%t40	type	0
	str r6,[fp,#20]                                   	@IRInst:beq	%t40	type	0
	beq .L34                                          
	b .L35                                            
.L34:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t41	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t41	pos	4
	mov r5,#4                                         	@IRInst:mul	%t41	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t41	pos	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t41	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t42	buf	%t41
	ldr r5,[fp,#24]                                   	@IRInst:add	%t42	buf	%t41
	add r6,r4,r5                                      	@IRInst:add	%t42	buf	%t41
	str r6,[fp,#28]                                   	@IRInst:add	%t42	buf	%t41
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t43	%t42
	ldr r4,[r4]                                       	@IRInst:assign	%t43	%t42
	str r4,[fp,#32]                                   	@IRInst:assign	%t43	%t42
	ldr r4,[fp,#32]                                   	@IRInst:beq	%t44	%t43	123
	mov r5,#123                                       	@IRInst:beq	%t44	%t43	123
	cmp r4,r5                                         	@IRInst:beq	%t44	%t43	123
	moveq r6,#1                                       	@IRInst:beq	%t44	%t43	123
	movne r6,#0                                       	@IRInst:beq	%t44	%t43	123
	str r6,[fp,#36]                                   	@IRInst:beq	%t44	%t43	123
	beq .L37                                          
	b .L38                                            
.L37:
	mov r0,#4                                         	@IRInst:assign	r0	4
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#40]                                   	@IRInst:assign	%t45	r0
	ldr r4,[fp,#40]                                   	@IRInst:assign		%t45
	str r4,[fp]                                       	@IRInst:assign		%t45
	b .L30                                            
	b .L39                                            
.L38:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t46	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t46	pos	4
	mov r5,#4                                         	@IRInst:mul	%t46	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	pos	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t46	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t47	buf	%t46
	ldr r5,[fp,#44]                                   	@IRInst:add	%t47	buf	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	buf	%t46
	str r6,[fp,#48]                                   	@IRInst:add	%t47	buf	%t46
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t48	%t47
	ldr r4,[r4]                                       	@IRInst:assign	%t48	%t47
	str r4,[fp,#52]                                   	@IRInst:assign	%t48	%t47
	ldr r4,[fp,#52]                                   	@IRInst:beq	%t49	%t48	91
	mov r5,#91                                        	@IRInst:beq	%t49	%t48	91
	cmp r4,r5                                         	@IRInst:beq	%t49	%t48	91
	moveq r6,#1                                       	@IRInst:beq	%t49	%t48	91
	movne r6,#0                                       	@IRInst:beq	%t49	%t48	91
	str r6,[fp,#56]                                   	@IRInst:beq	%t49	%t48	91
	beq .L40                                          
	b .L41                                            
.L40:
	mov r0,#3                                         	@IRInst:assign	r0	3
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#60]                                   	@IRInst:assign	%t50	r0
	ldr r4,[fp,#60]                                   	@IRInst:assign		%t50
	str r4,[fp]                                       	@IRInst:assign		%t50
	b .L30                                            
	b .L42                                            
.L41:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t51	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t51	pos	4
	mov r5,#4                                         	@IRInst:mul	%t51	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t51	pos	4
	str r6,[fp,#64]                                   	@IRInst:mul	%t51	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t52	buf	%t51
	ldr r5,[fp,#64]                                   	@IRInst:add	%t52	buf	%t51
	add r6,r4,r5                                      	@IRInst:add	%t52	buf	%t51
	str r6,[fp,#68]                                   	@IRInst:add	%t52	buf	%t51
	ldr r4,[fp,#68]                                   	@IRInst:assign	%t53	%t52
	ldr r4,[r4]                                       	@IRInst:assign	%t53	%t52
	str r4,[fp,#72]                                   	@IRInst:assign	%t53	%t52
	ldr r4,[fp,#72]                                   	@IRInst:beq	%t54	%t53	34
	mov r5,#34                                        	@IRInst:beq	%t54	%t53	34
	cmp r4,r5                                         	@IRInst:beq	%t54	%t53	34
	moveq r6,#1                                       	@IRInst:beq	%t54	%t53	34
	movne r6,#0                                       	@IRInst:beq	%t54	%t53	34
	str r6,[fp,#76]                                   	@IRInst:beq	%t54	%t53	34
	beq .L43                                          
	b .L44                                            
.L43:
	mov r0,#2                                         	@IRInst:assign	r0	2
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#80]                                   	@IRInst:assign	%t55	r0
	ldr r4,[fp,#80]                                   	@IRInst:assign		%t55
	str r4,[fp]                                       	@IRInst:assign		%t55
	b .L30                                            
	b .L45                                            
.L44:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t56	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t56	pos	4
	mov r5,#4                                         	@IRInst:mul	%t56	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t56	pos	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t56	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t57	buf	%t56
	ldr r5,[fp,#84]                                   	@IRInst:add	%t57	buf	%t56
	add r6,r4,r5                                      	@IRInst:add	%t57	buf	%t56
	str r6,[fp,#88]                                   	@IRInst:add	%t57	buf	%t56
	ldr r4,[fp,#88]                                   	@IRInst:assign	%t58	%t57
	ldr r4,[r4]                                       	@IRInst:assign	%t58	%t57
	str r4,[fp,#92]                                   	@IRInst:assign	%t58	%t57
	ldr r0,[fp,#92]                                   	@IRInst:assign	r0	%t58
	bl is_number                                      
	str r0,[fp,#96]                                   	@IRInst:assign	%t59	r0
	ldr r4,[fp,#96]                                   	@IRInst:beq	%t60	%t59	1
	mov r5,#1                                         	@IRInst:beq	%t60	%t59	1
	cmp r4,r5                                         	@IRInst:beq	%t60	%t59	1
	moveq r6,#1                                       	@IRInst:beq	%t60	%t59	1
	movne r6,#0                                       	@IRInst:beq	%t60	%t59	1
	str r6,[fp,#100]                                  	@IRInst:beq	%t60	%t59	1
	beq .L46                                          
	b .L47                                            
.L46:
	mov r0,#1                                         	@IRInst:assign	r0	1
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#104]                                  	@IRInst:assign	%t61	r0
	ldr r4,[fp,#104]                                  	@IRInst:assign		%t61
	str r4,[fp]                                       	@IRInst:assign		%t61
	b .L30                                            
	b .L48                                            
.L47:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t62	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t62	pos	4
	mov r5,#4                                         	@IRInst:mul	%t62	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t62	pos	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t62	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t63	buf	%t62
	ldr r5,[fp,#108]                                  	@IRInst:add	%t63	buf	%t62
	add r6,r4,r5                                      	@IRInst:add	%t63	buf	%t62
	str r6,[fp,#112]                                  	@IRInst:add	%t63	buf	%t62
	ldr r4,[fp,#112]                                  	@IRInst:assign	%t64	%t63
	ldr r4,[r4]                                       	@IRInst:assign	%t64	%t63
	str r4,[fp,#116]                                  	@IRInst:assign	%t64	%t63
	ldr r4,[fp,#116]                                  	@IRInst:beq	%t65	%t64	43
	mov r5,#43                                        	@IRInst:beq	%t65	%t64	43
	cmp r4,r5                                         	@IRInst:beq	%t65	%t64	43
	moveq r6,#1                                       	@IRInst:beq	%t65	%t64	43
	movne r6,#0                                       	@IRInst:beq	%t65	%t64	43
	str r6,[fp,#120]                                  	@IRInst:beq	%t65	%t64	43
	beq .L49                                          
	b .L50                                            
.L49:
	mov r0,#1                                         	@IRInst:assign	r0	1
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#124]                                  	@IRInst:assign	%t66	r0
	ldr r4,[fp,#124]                                  	@IRInst:assign		%t66
	str r4,[fp]                                       	@IRInst:assign		%t66
	b .L30                                            
	b .L51                                            
.L50:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t67	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t67	pos	4
	mov r5,#4                                         	@IRInst:mul	%t67	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t67	pos	4
	str r6,[fp,#128]                                  	@IRInst:mul	%t67	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t68	buf	%t67
	ldr r5,[fp,#128]                                  	@IRInst:add	%t68	buf	%t67
	add r6,r4,r5                                      	@IRInst:add	%t68	buf	%t67
	str r6,[fp,#132]                                  	@IRInst:add	%t68	buf	%t67
	ldr r4,[fp,#132]                                  	@IRInst:assign	%t69	%t68
	ldr r4,[r4]                                       	@IRInst:assign	%t69	%t68
	str r4,[fp,#136]                                  	@IRInst:assign	%t69	%t68
	ldr r4,[fp,#136]                                  	@IRInst:beq	%t70	%t69	45
	mov r5,#45                                        	@IRInst:beq	%t70	%t69	45
	cmp r4,r5                                         	@IRInst:beq	%t70	%t69	45
	moveq r6,#1                                       	@IRInst:beq	%t70	%t69	45
	movne r6,#0                                       	@IRInst:beq	%t70	%t69	45
	str r6,[fp,#140]                                  	@IRInst:beq	%t70	%t69	45
	beq .L52                                          
	b .L53                                            
.L52:
	mov r0,#1                                         	@IRInst:assign	r0	1
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#144]                                  	@IRInst:assign	%t71	r0
	ldr r4,[fp,#144]                                  	@IRInst:assign		%t71
	str r4,[fp]                                       	@IRInst:assign		%t71
	b .L30                                            
	b .L54                                            
.L53:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t72	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t72	pos	4
	mov r5,#4                                         	@IRInst:mul	%t72	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t72	pos	4
	str r6,[fp,#148]                                  	@IRInst:mul	%t72	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t73	buf	%t72
	ldr r5,[fp,#148]                                  	@IRInst:add	%t73	buf	%t72
	add r6,r4,r5                                      	@IRInst:add	%t73	buf	%t72
	str r6,[fp,#152]                                  	@IRInst:add	%t73	buf	%t72
	ldr r4,[fp,#152]                                  	@IRInst:assign	%t74	%t73
	ldr r4,[r4]                                       	@IRInst:assign	%t74	%t73
	str r4,[fp,#156]                                  	@IRInst:assign	%t74	%t73
	ldr r4,[fp,#156]                                  	@IRInst:beq	%t75	%t74	116
	mov r5,#116                                       	@IRInst:beq	%t75	%t74	116
	cmp r4,r5                                         	@IRInst:beq	%t75	%t74	116
	moveq r6,#1                                       	@IRInst:beq	%t75	%t74	116
	movne r6,#0                                       	@IRInst:beq	%t75	%t74	116
	str r6,[fp,#160]                                  	@IRInst:beq	%t75	%t74	116
	beq .L55                                          
	b .L56                                            
.L55:
	mov r0,#5                                         	@IRInst:assign	r0	5
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#164]                                  	@IRInst:assign	%t76	r0
	ldr r4,[fp,#164]                                  	@IRInst:assign		%t76
	str r4,[fp]                                       	@IRInst:assign		%t76
	b .L30                                            
	b .L57                                            
.L56:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t77	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t77	pos	4
	mov r5,#4                                         	@IRInst:mul	%t77	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t77	pos	4
	str r6,[fp,#168]                                  	@IRInst:mul	%t77	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t78	buf	%t77
	ldr r5,[fp,#168]                                  	@IRInst:add	%t78	buf	%t77
	add r6,r4,r5                                      	@IRInst:add	%t78	buf	%t77
	str r6,[fp,#172]                                  	@IRInst:add	%t78	buf	%t77
	ldr r4,[fp,#172]                                  	@IRInst:assign	%t79	%t78
	ldr r4,[r4]                                       	@IRInst:assign	%t79	%t78
	str r4,[fp,#176]                                  	@IRInst:assign	%t79	%t78
	ldr r4,[fp,#176]                                  	@IRInst:beq	%t80	%t79	102
	mov r5,#102                                       	@IRInst:beq	%t80	%t79	102
	cmp r4,r5                                         	@IRInst:beq	%t80	%t79	102
	moveq r6,#1                                       	@IRInst:beq	%t80	%t79	102
	movne r6,#0                                       	@IRInst:beq	%t80	%t79	102
	str r6,[fp,#180]                                  	@IRInst:beq	%t80	%t79	102
	beq .L58                                          
	b .L59                                            
.L58:
	mov r0,#6                                         	@IRInst:assign	r0	6
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#184]                                  	@IRInst:assign	%t81	r0
	ldr r4,[fp,#184]                                  	@IRInst:assign		%t81
	str r4,[fp]                                       	@IRInst:assign		%t81
	b .L30                                            
	b .L60                                            
.L59:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t82	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t82	pos	4
	mov r5,#4                                         	@IRInst:mul	%t82	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t82	pos	4
	str r6,[fp,#188]                                  	@IRInst:mul	%t82	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t83	buf	%t82
	ldr r5,[fp,#188]                                  	@IRInst:add	%t83	buf	%t82
	add r6,r4,r5                                      	@IRInst:add	%t83	buf	%t82
	str r6,[fp,#192]                                  	@IRInst:add	%t83	buf	%t82
	ldr r4,[fp,#192]                                  	@IRInst:assign	%t84	%t83
	ldr r4,[r4]                                       	@IRInst:assign	%t84	%t83
	str r4,[fp,#196]                                  	@IRInst:assign	%t84	%t83
	ldr r4,[fp,#196]                                  	@IRInst:beq	%t85	%t84	110
	mov r5,#110                                       	@IRInst:beq	%t85	%t84	110
	cmp r4,r5                                         	@IRInst:beq	%t85	%t84	110
	moveq r6,#1                                       	@IRInst:beq	%t85	%t84	110
	movne r6,#0                                       	@IRInst:beq	%t85	%t84	110
	str r6,[fp,#200]                                  	@IRInst:beq	%t85	%t84	110
	beq .L61                                          
	b .L62                                            
.L61:
	mov r0,#7                                         	@IRInst:assign	r0	7
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#204]                                  	@IRInst:assign	%t86	r0
	ldr r4,[fp,#204]                                  	@IRInst:assign		%t86
	str r4,[fp]                                       	@IRInst:assign		%t86
	b .L30                                            
	b .L63                                            
.L62:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L63:
.L60:
.L57:
.L54:
.L51:
.L48:
.L45:
.L42:
.L39:
	b .L36                                            
.L35:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t87	type	1
	mov r5,#1                                         	@IRInst:beq	%t87	type	1
	cmp r4,r5                                         	@IRInst:beq	%t87	type	1
	moveq r6,#1                                       	@IRInst:beq	%t87	type	1
	movne r6,#0                                       	@IRInst:beq	%t87	type	1
	str r6,[fp,#208]                                  	@IRInst:beq	%t87	type	1
	beq .L64                                          
	b .L65                                            
.L64:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t88	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t88	pos	4
	mov r5,#4                                         	@IRInst:mul	%t88	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t88	pos	4
	str r6,[fp,#212]                                  	@IRInst:mul	%t88	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t89	buf	%t88
	ldr r5,[fp,#212]                                  	@IRInst:add	%t89	buf	%t88
	add r6,r4,r5                                      	@IRInst:add	%t89	buf	%t88
	str r6,[fp,#216]                                  	@IRInst:add	%t89	buf	%t88
	ldr r4,[fp,#216]                                  	@IRInst:assign	%t90	%t89
	ldr r4,[r4]                                       	@IRInst:assign	%t90	%t89
	str r4,[fp,#220]                                  	@IRInst:assign	%t90	%t89
	ldr r4,[fp,#220]                                  	@IRInst:beq	%t91	%t90	43
	mov r5,#43                                        	@IRInst:beq	%t91	%t90	43
	cmp r4,r5                                         	@IRInst:beq	%t91	%t90	43
	moveq r6,#1                                       	@IRInst:beq	%t91	%t90	43
	movne r6,#0                                       	@IRInst:beq	%t91	%t90	43
	str r6,[fp,#224]                                  	@IRInst:beq	%t91	%t90	43
	beq .L67                                          
	b .L68                                            
.L67:
	ldr r4,.global_2_pos                              	@IRInst:add	%t92	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t92	pos	1
	mov r5,#1                                         	@IRInst:add	%t92	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t92	pos	1
	str r6,[fp,#228]                                  	@IRInst:add	%t92	pos	1
	ldr r4,[fp,#228]                                  	@IRInst:assign	pos	%t92
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t92
	str r4,[r9]                                       	@IRInst:assign	pos	%t92
	b .L69                                            
.L68:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t93	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t93	pos	4
	mov r5,#4                                         	@IRInst:mul	%t93	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t93	pos	4
	str r6,[fp,#232]                                  	@IRInst:mul	%t93	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t94	buf	%t93
	ldr r5,[fp,#232]                                  	@IRInst:add	%t94	buf	%t93
	add r6,r4,r5                                      	@IRInst:add	%t94	buf	%t93
	str r6,[fp,#236]                                  	@IRInst:add	%t94	buf	%t93
	ldr r4,[fp,#236]                                  	@IRInst:assign	%t95	%t94
	ldr r4,[r4]                                       	@IRInst:assign	%t95	%t94
	str r4,[fp,#240]                                  	@IRInst:assign	%t95	%t94
	ldr r4,[fp,#240]                                  	@IRInst:beq	%t96	%t95	45
	mov r5,#45                                        	@IRInst:beq	%t96	%t95	45
	cmp r4,r5                                         	@IRInst:beq	%t96	%t95	45
	moveq r6,#1                                       	@IRInst:beq	%t96	%t95	45
	movne r6,#0                                       	@IRInst:beq	%t96	%t95	45
	str r6,[fp,#244]                                  	@IRInst:beq	%t96	%t95	45
	beq .L70                                          
	b .L71                                            
.L70:
	ldr r4,.global_2_pos                              	@IRInst:add	%t97	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t97	pos	1
	mov r5,#1                                         	@IRInst:add	%t97	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t97	pos	1
	str r6,[fp,#248]                                  	@IRInst:add	%t97	pos	1
	ldr r4,[fp,#248]                                  	@IRInst:assign	pos	%t97
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t97
	str r4,[r9]                                       	@IRInst:assign	pos	%t97
.L71:
.L72:
.L69:
	ldr r4,.global_2_pos                              	@IRInst:bge	%t98	pos	len
	ldr r4,[r4]                                       	@IRInst:bge	%t98	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t98	pos	len
	cmp r4,r5                                         	@IRInst:bge	%t98	pos	len
	movge r6,#1                                       	@IRInst:bge	%t98	pos	len
	movlt r6,#0                                       	@IRInst:bge	%t98	pos	len
	str r6,[fp,#252]                                  	@IRInst:bge	%t98	pos	len
	bge .L73                                          
	b .L74                                            
.L73:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L75                                            
.L74:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t99	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t99	pos	4
	mov r5,#4                                         	@IRInst:mul	%t99	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t99	pos	4
	str r6,[fp,#256]                                  	@IRInst:mul	%t99	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t100	buf	%t99
	ldr r5,[fp,#256]                                  	@IRInst:add	%t100	buf	%t99
	add r6,r4,r5                                      	@IRInst:add	%t100	buf	%t99
	str r6,[fp,#260]                                  	@IRInst:add	%t100	buf	%t99
	ldr r4,[fp,#260]                                  	@IRInst:assign	%t101	%t100
	ldr r4,[r4]                                       	@IRInst:assign	%t101	%t100
	str r4,[fp,#264]                                  	@IRInst:assign	%t101	%t100
	ldr r0,[fp,#264]                                  	@IRInst:assign	r0	%t101
	bl is_number                                      
	str r0,[fp,#268]                                  	@IRInst:assign	%t102	r0
	ldr r4,[fp,#268]                                  	@IRInst:beq	%t103	%t102	0
	mov r5,#0                                         	@IRInst:beq	%t103	%t102	0
	cmp r4,r5                                         	@IRInst:beq	%t103	%t102	0
	moveq r6,#1                                       	@IRInst:beq	%t103	%t102	0
	movne r6,#0                                       	@IRInst:beq	%t103	%t102	0
	str r6,[fp,#272]                                  	@IRInst:beq	%t103	%t102	0
	beq .L76                                          
	b .L77                                            
.L76:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L77:
.L78:
.L75:
.L79:
	ldr r4,.global_2_pos                              	@IRInst:blt	%t104	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t104	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t104	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t104	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t104	pos	len
	movge r6,#0                                       	@IRInst:blt	%t104	pos	len
	str r6,[fp,#276]                                  	@IRInst:blt	%t104	pos	len
	blt .L80                                          
	b .L81                                            
.L80:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t105	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t105	pos	4
	mov r5,#4                                         	@IRInst:mul	%t105	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t105	pos	4
	str r6,[fp,#280]                                  	@IRInst:mul	%t105	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t106	buf	%t105
	ldr r5,[fp,#280]                                  	@IRInst:add	%t106	buf	%t105
	add r6,r4,r5                                      	@IRInst:add	%t106	buf	%t105
	str r6,[fp,#284]                                  	@IRInst:add	%t106	buf	%t105
	ldr r4,[fp,#284]                                  	@IRInst:assign	%t107	%t106
	ldr r4,[r4]                                       	@IRInst:assign	%t107	%t106
	str r4,[fp,#288]                                  	@IRInst:assign	%t107	%t106
	ldr r0,[fp,#288]                                  	@IRInst:assign	r0	%t107
	bl is_number                                      
	str r0,[fp,#292]                                  	@IRInst:assign	%t108	r0
	ldr r4,[fp,#292]                                  	@IRInst:beq	%t109	%t108	1
	mov r5,#1                                         	@IRInst:beq	%t109	%t108	1
	cmp r4,r5                                         	@IRInst:beq	%t109	%t108	1
	moveq r6,#1                                       	@IRInst:beq	%t109	%t108	1
	movne r6,#0                                       	@IRInst:beq	%t109	%t108	1
	str r6,[fp,#296]                                  	@IRInst:beq	%t109	%t108	1
	beq .L83                                          
	b .L82                                            
.L82:
	b .L81                                            
.L83:
.L84:
	ldr r4,.global_2_pos                              	@IRInst:add	%t110	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t110	pos	1
	mov r5,#1                                         	@IRInst:add	%t110	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t110	pos	1
	str r6,[fp,#300]                                  	@IRInst:add	%t110	pos	1
	ldr r4,[fp,#300]                                  	@IRInst:assign	pos	%t110
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t110
	str r4,[r9]                                       	@IRInst:assign	pos	%t110
	b .L79                                            
.L81:
	ldr r4,.global_2_pos                              	@IRInst:blt	%t111	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t111	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t111	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t111	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t111	pos	len
	movge r6,#0                                       	@IRInst:blt	%t111	pos	len
	str r6,[fp,#304]                                  	@IRInst:blt	%t111	pos	len
	blt .L85                                          
	b .L86                                            
.L85:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t112	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t112	pos	4
	mov r5,#4                                         	@IRInst:mul	%t112	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t112	pos	4
	str r6,[fp,#308]                                  	@IRInst:mul	%t112	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t113	buf	%t112
	ldr r5,[fp,#308]                                  	@IRInst:add	%t113	buf	%t112
	add r6,r4,r5                                      	@IRInst:add	%t113	buf	%t112
	str r6,[fp,#312]                                  	@IRInst:add	%t113	buf	%t112
	ldr r4,[fp,#312]                                  	@IRInst:assign	%t114	%t113
	ldr r4,[r4]                                       	@IRInst:assign	%t114	%t113
	str r4,[fp,#316]                                  	@IRInst:assign	%t114	%t113
	ldr r4,[fp,#316]                                  	@IRInst:beq	%t115	%t114	46
	mov r5,#46                                        	@IRInst:beq	%t115	%t114	46
	cmp r4,r5                                         	@IRInst:beq	%t115	%t114	46
	moveq r6,#1                                       	@IRInst:beq	%t115	%t114	46
	movne r6,#0                                       	@IRInst:beq	%t115	%t114	46
	str r6,[fp,#320]                                  	@IRInst:beq	%t115	%t114	46
	beq .L88                                          
	b .L89                                            
.L88:
	ldr r4,.global_2_pos                              	@IRInst:add	%t116	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t116	pos	1
	mov r5,#1                                         	@IRInst:add	%t116	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t116	pos	1
	str r6,[fp,#324]                                  	@IRInst:add	%t116	pos	1
	ldr r4,[fp,#324]                                  	@IRInst:assign	pos	%t116
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t116
	str r4,[r9]                                       	@IRInst:assign	pos	%t116
.L91:
	ldr r4,.global_2_pos                              	@IRInst:blt	%t117	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t117	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t117	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t117	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t117	pos	len
	movge r6,#0                                       	@IRInst:blt	%t117	pos	len
	str r6,[fp,#328]                                  	@IRInst:blt	%t117	pos	len
	blt .L92                                          
	b .L93                                            
.L92:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t118	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t118	pos	4
	mov r5,#4                                         	@IRInst:mul	%t118	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t118	pos	4
	str r6,[fp,#332]                                  	@IRInst:mul	%t118	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t119	buf	%t118
	ldr r5,[fp,#332]                                  	@IRInst:add	%t119	buf	%t118
	add r6,r4,r5                                      	@IRInst:add	%t119	buf	%t118
	str r6,[fp,#336]                                  	@IRInst:add	%t119	buf	%t118
	ldr r4,[fp,#336]                                  	@IRInst:assign	%t120	%t119
	ldr r4,[r4]                                       	@IRInst:assign	%t120	%t119
	str r4,[fp,#340]                                  	@IRInst:assign	%t120	%t119
	ldr r0,[fp,#340]                                  	@IRInst:assign	r0	%t120
	bl is_number                                      
	str r0,[fp,#344]                                  	@IRInst:assign	%t121	r0
	ldr r4,[fp,#344]                                  	@IRInst:beq	%t122	%t121	1
	mov r5,#1                                         	@IRInst:beq	%t122	%t121	1
	cmp r4,r5                                         	@IRInst:beq	%t122	%t121	1
	moveq r6,#1                                       	@IRInst:beq	%t122	%t121	1
	movne r6,#0                                       	@IRInst:beq	%t122	%t121	1
	str r6,[fp,#348]                                  	@IRInst:beq	%t122	%t121	1
	beq .L95                                          
	b .L94                                            
.L94:
	b .L93                                            
.L95:
.L96:
	ldr r4,.global_2_pos                              	@IRInst:add	%t123	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t123	pos	1
	mov r5,#1                                         	@IRInst:add	%t123	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t123	pos	1
	str r6,[fp,#352]                                  	@IRInst:add	%t123	pos	1
	ldr r4,[fp,#352]                                  	@IRInst:assign	pos	%t123
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t123
	str r4,[r9]                                       	@IRInst:assign	pos	%t123
	b .L91                                            
.L93:
.L89:
.L90:
.L86:
.L87:
	ldr r4,.global_2_pos                              	@IRInst:blt	%t124	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t124	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t124	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t124	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t124	pos	len
	movge r6,#0                                       	@IRInst:blt	%t124	pos	len
	str r6,[fp,#356]                                  	@IRInst:blt	%t124	pos	len
	blt .L97                                          
	b .L98                                            
.L97:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t125	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t125	pos	4
	mov r5,#4                                         	@IRInst:mul	%t125	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t125	pos	4
	str r6,[fp,#360]                                  	@IRInst:mul	%t125	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t126	buf	%t125
	ldr r5,[fp,#360]                                  	@IRInst:add	%t126	buf	%t125
	add r6,r4,r5                                      	@IRInst:add	%t126	buf	%t125
	str r6,[fp,#364]                                  	@IRInst:add	%t126	buf	%t125
	ldr r4,[fp,#364]                                  	@IRInst:assign	%t127	%t126
	ldr r4,[r4]                                       	@IRInst:assign	%t127	%t126
	str r4,[fp,#368]                                  	@IRInst:assign	%t127	%t126
	ldr r4,[fp,#368]                                  	@IRInst:beq	%t128	%t127	101
	mov r5,#101                                       	@IRInst:beq	%t128	%t127	101
	cmp r4,r5                                         	@IRInst:beq	%t128	%t127	101
	moveq r6,#1                                       	@IRInst:beq	%t128	%t127	101
	movne r6,#0                                       	@IRInst:beq	%t128	%t127	101
	str r6,[fp,#372]                                  	@IRInst:beq	%t128	%t127	101
	beq .L100                                         
	b .L101                                           
.L100:
	ldr r4,.global_2_pos                              	@IRInst:add	%t129	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t129	pos	1
	mov r5,#1                                         	@IRInst:add	%t129	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t129	pos	1
	str r6,[fp,#376]                                  	@IRInst:add	%t129	pos	1
	ldr r4,[fp,#376]                                  	@IRInst:assign	pos	%t129
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t129
	str r4,[r9]                                       	@IRInst:assign	pos	%t129
	ldr r4,.global_2_pos                              	@IRInst:blt	%t130	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t130	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t130	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t130	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t130	pos	len
	movge r6,#0                                       	@IRInst:blt	%t130	pos	len
	str r6,[fp,#380]                                  	@IRInst:blt	%t130	pos	len
	blt .L103                                         
	b .L104                                           
.L103:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t131	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t131	pos	4
	mov r5,#4                                         	@IRInst:mul	%t131	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t131	pos	4
	str r6,[fp,#384]                                  	@IRInst:mul	%t131	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t132	buf	%t131
	ldr r5,[fp,#384]                                  	@IRInst:add	%t132	buf	%t131
	add r6,r4,r5                                      	@IRInst:add	%t132	buf	%t131
	str r6,[fp,#388]                                  	@IRInst:add	%t132	buf	%t131
	ldr r4,[fp,#388]                                  	@IRInst:assign	%t133	%t132
	ldr r4,[r4]                                       	@IRInst:assign	%t133	%t132
	str r4,[fp,#392]                                  	@IRInst:assign	%t133	%t132
	ldr r4,[fp,#392]                                  	@IRInst:beq	%t134	%t133	43
	mov r5,#43                                        	@IRInst:beq	%t134	%t133	43
	cmp r4,r5                                         	@IRInst:beq	%t134	%t133	43
	moveq r6,#1                                       	@IRInst:beq	%t134	%t133	43
	movne r6,#0                                       	@IRInst:beq	%t134	%t133	43
	str r6,[fp,#396]                                  	@IRInst:beq	%t134	%t133	43
	beq .L106                                         
	b .L107                                           
.L106:
	ldr r4,.global_2_pos                              	@IRInst:add	%t135	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t135	pos	1
	mov r5,#1                                         	@IRInst:add	%t135	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t135	pos	1
	str r6,[fp,#400]                                  	@IRInst:add	%t135	pos	1
	ldr r4,[fp,#400]                                  	@IRInst:assign	pos	%t135
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t135
	str r4,[r9]                                       	@IRInst:assign	pos	%t135
.L107:
.L108:
.L104:
.L105:
	ldr r4,.global_2_pos                              	@IRInst:blt	%t136	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t136	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t136	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t136	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t136	pos	len
	movge r6,#0                                       	@IRInst:blt	%t136	pos	len
	str r6,[fp,#404]                                  	@IRInst:blt	%t136	pos	len
	blt .L109                                         
	b .L110                                           
.L109:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t137	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t137	pos	4
	mov r5,#4                                         	@IRInst:mul	%t137	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t137	pos	4
	str r6,[fp,#408]                                  	@IRInst:mul	%t137	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t138	buf	%t137
	ldr r5,[fp,#408]                                  	@IRInst:add	%t138	buf	%t137
	add r6,r4,r5                                      	@IRInst:add	%t138	buf	%t137
	str r6,[fp,#412]                                  	@IRInst:add	%t138	buf	%t137
	ldr r4,[fp,#412]                                  	@IRInst:assign	%t139	%t138
	ldr r4,[r4]                                       	@IRInst:assign	%t139	%t138
	str r4,[fp,#416]                                  	@IRInst:assign	%t139	%t138
	ldr r4,[fp,#416]                                  	@IRInst:beq	%t140	%t139	45
	mov r5,#45                                        	@IRInst:beq	%t140	%t139	45
	cmp r4,r5                                         	@IRInst:beq	%t140	%t139	45
	moveq r6,#1                                       	@IRInst:beq	%t140	%t139	45
	movne r6,#0                                       	@IRInst:beq	%t140	%t139	45
	str r6,[fp,#420]                                  	@IRInst:beq	%t140	%t139	45
	beq .L112                                         
	b .L113                                           
.L112:
	ldr r4,.global_2_pos                              	@IRInst:add	%t141	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t141	pos	1
	mov r5,#1                                         	@IRInst:add	%t141	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t141	pos	1
	str r6,[fp,#424]                                  	@IRInst:add	%t141	pos	1
	ldr r4,[fp,#424]                                  	@IRInst:assign	pos	%t141
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t141
	str r4,[r9]                                       	@IRInst:assign	pos	%t141
.L113:
.L114:
.L110:
.L111:
.L115:
	ldr r4,.global_2_pos                              	@IRInst:blt	%t142	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t142	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t142	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t142	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t142	pos	len
	movge r6,#0                                       	@IRInst:blt	%t142	pos	len
	str r6,[fp,#428]                                  	@IRInst:blt	%t142	pos	len
	blt .L116                                         
	b .L117                                           
.L116:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t143	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t143	pos	4
	mov r5,#4                                         	@IRInst:mul	%t143	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t143	pos	4
	str r6,[fp,#432]                                  	@IRInst:mul	%t143	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t144	buf	%t143
	ldr r5,[fp,#432]                                  	@IRInst:add	%t144	buf	%t143
	add r6,r4,r5                                      	@IRInst:add	%t144	buf	%t143
	str r6,[fp,#436]                                  	@IRInst:add	%t144	buf	%t143
	ldr r4,[fp,#436]                                  	@IRInst:assign	%t145	%t144
	ldr r4,[r4]                                       	@IRInst:assign	%t145	%t144
	str r4,[fp,#440]                                  	@IRInst:assign	%t145	%t144
	ldr r0,[fp,#440]                                  	@IRInst:assign	r0	%t145
	bl is_number                                      
	str r0,[fp,#444]                                  	@IRInst:assign	%t146	r0
	ldr r4,[fp,#444]                                  	@IRInst:beq	%t147	%t146	1
	mov r5,#1                                         	@IRInst:beq	%t147	%t146	1
	cmp r4,r5                                         	@IRInst:beq	%t147	%t146	1
	moveq r6,#1                                       	@IRInst:beq	%t147	%t146	1
	movne r6,#0                                       	@IRInst:beq	%t147	%t146	1
	str r6,[fp,#448]                                  	@IRInst:beq	%t147	%t146	1
	beq .L119                                         
	b .L118                                           
.L118:
	b .L117                                           
.L119:
.L120:
	ldr r4,.global_2_pos                              	@IRInst:add	%t148	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t148	pos	1
	mov r5,#1                                         	@IRInst:add	%t148	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t148	pos	1
	str r6,[fp,#452]                                  	@IRInst:add	%t148	pos	1
	ldr r4,[fp,#452]                                  	@IRInst:assign	pos	%t148
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t148
	str r4,[r9]                                       	@IRInst:assign	pos	%t148
	b .L115                                           
.L117:
.L101:
.L102:
.L98:
.L99:
	b .L66                                            
.L65:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t149	type	2
	mov r5,#2                                         	@IRInst:beq	%t149	type	2
	cmp r4,r5                                         	@IRInst:beq	%t149	type	2
	moveq r6,#1                                       	@IRInst:beq	%t149	type	2
	movne r6,#0                                       	@IRInst:beq	%t149	type	2
	str r6,[fp,#456]                                  	@IRInst:beq	%t149	type	2
	beq .L121                                         
	b .L122                                           
.L121:
	ldr r4,.global_2_pos                              	@IRInst:add	%t150	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t150	pos	1
	mov r5,#1                                         	@IRInst:add	%t150	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t150	pos	1
	str r6,[fp,#460]                                  	@IRInst:add	%t150	pos	1
	ldr r4,[fp,#460]                                  	@IRInst:assign	pos	%t150
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t150
	str r4,[r9]                                       	@IRInst:assign	pos	%t150
.L124:
	ldr r4,.global_2_pos                              	@IRInst:blt	%t151	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t151	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t151	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t151	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t151	pos	len
	movge r6,#0                                       	@IRInst:blt	%t151	pos	len
	str r6,[fp,#464]                                  	@IRInst:blt	%t151	pos	len
	blt .L125                                         
	b .L126                                           
.L125:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t152	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t152	pos	4
	mov r5,#4                                         	@IRInst:mul	%t152	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t152	pos	4
	str r6,[fp,#468]                                  	@IRInst:mul	%t152	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t153	buf	%t152
	ldr r5,[fp,#468]                                  	@IRInst:add	%t153	buf	%t152
	add r6,r4,r5                                      	@IRInst:add	%t153	buf	%t152
	str r6,[fp,#472]                                  	@IRInst:add	%t153	buf	%t152
	ldr r4,[fp,#472]                                  	@IRInst:assign	%t154	%t153
	ldr r4,[r4]                                       	@IRInst:assign	%t154	%t153
	str r4,[fp,#476]                                  	@IRInst:assign	%t154	%t153
	ldr r4,[fp,#476]                                  	@IRInst:beq	%t155	%t154	34
	mov r5,#34                                        	@IRInst:beq	%t155	%t154	34
	cmp r4,r5                                         	@IRInst:beq	%t155	%t154	34
	moveq r6,#1                                       	@IRInst:beq	%t155	%t154	34
	movne r6,#0                                       	@IRInst:beq	%t155	%t154	34
	str r6,[fp,#480]                                  	@IRInst:beq	%t155	%t154	34
	beq .L127                                         
	b .L128                                           
.L127:
	b .L126                                           
.L128:
.L129:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t156	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t156	pos	4
	mov r5,#4                                         	@IRInst:mul	%t156	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t156	pos	4
	str r6,[fp,#484]                                  	@IRInst:mul	%t156	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t157	buf	%t156
	ldr r5,[fp,#484]                                  	@IRInst:add	%t157	buf	%t156
	add r6,r4,r5                                      	@IRInst:add	%t157	buf	%t156
	str r6,[fp,#488]                                  	@IRInst:add	%t157	buf	%t156
	ldr r4,[fp,#488]                                  	@IRInst:assign	%t158	%t157
	ldr r4,[r4]                                       	@IRInst:assign	%t158	%t157
	str r4,[fp,#492]                                  	@IRInst:assign	%t158	%t157
	ldr r4,[fp,#492]                                  	@IRInst:beq	%t159	%t158	92
	mov r5,#92                                        	@IRInst:beq	%t159	%t158	92
	cmp r4,r5                                         	@IRInst:beq	%t159	%t158	92
	moveq r6,#1                                       	@IRInst:beq	%t159	%t158	92
	movne r6,#0                                       	@IRInst:beq	%t159	%t158	92
	str r6,[fp,#496]                                  	@IRInst:beq	%t159	%t158	92
	beq .L130                                         
	b .L131                                           
.L130:
	ldr r4,.global_2_pos                              	@IRInst:add	%t160	pos	2
	ldr r4,[r4]                                       	@IRInst:add	%t160	pos	2
	mov r5,#2                                         	@IRInst:add	%t160	pos	2
	add r6,r4,r5                                      	@IRInst:add	%t160	pos	2
	str r6,[fp,#500]                                  	@IRInst:add	%t160	pos	2
	ldr r4,[fp,#500]                                  	@IRInst:assign	pos	%t160
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t160
	str r4,[r9]                                       	@IRInst:assign	pos	%t160
	b .L132                                           
.L131:
	ldr r4,.global_2_pos                              	@IRInst:add	%t161	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t161	pos	1
	mov r5,#1                                         	@IRInst:add	%t161	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t161	pos	1
	str r6,[fp,#504]                                  	@IRInst:add	%t161	pos	1
	ldr r4,[fp,#504]                                  	@IRInst:assign	pos	%t161
	ldr r9,.global_2_pos                              	@IRInst:assign	pos	%t161
	str r4,[r9]                                       	@IRInst:assign	pos	%t161
.L132:
	b .L124                                           
.L126:
	ldr r4,.global_2_pos                              	@IRInst:bge	%t162	pos	len
	ldr r4,[r4]                                       	@IRInst:bge	%t162	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t162	pos	len
	cmp r4,r5                                         	@IRInst:bge	%t162	pos	len
	movge r6,#1                                       	@IRInst:bge	%t162	pos	len
	movlt r6,#0                                       	@IRInst:bge	%t162	pos	len
	str r6,[fp,#508]                                  	@IRInst:bge	%t162	pos	len
	bge .L133                                         
	b .L134                                           
.L133:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L135                                           
.L134:
	ldr r4,.global_2_pos                              	@IRInst:mul	%t163	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t163	pos	4
	mov r5,#4                                         	@IRInst:mul	%t163	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t163	pos	4
	str r6,[fp,#512]                                  	@IRInst:mul	%t163	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t164	buf	%t163
	ldr r5,[fp,#512]                                  	@IRInst:add	%t164	buf	%t163
	add r6,r4,r5                                      	@IRInst:add	%t164	buf	%t163
	str r6,[fp,#516]                                  	@IRInst:add	%t164	buf	%t163
	ldr r4,[fp,#516]                                  	@IRInst:assign	%t165	%t164
	ldr r4,[r4]                                       	@IRInst:assign	%t165	%t164
	str r4,[fp,#520]                                  	@IRInst:assign	%t165	%t164
	ldr r4,[fp,#520]                                  	@IRInst:beq	%t166	%t165	34
	mov r5,#34                                        	@IRInst:beq	%t166	%t165	34
	cmp r4,r5                                         	@IRInst:beq	%t166	%t165	34
	moveq r6,#1                                       	@IRInst:beq	%t166	%t165	34
	movne r6,#0                                       	@IRInst:beq	%t166	%t165	34
	str r6,[fp,#524]                                  	@IRInst:beq	%t166	%t165	34
	beq .L137                                         
	b .L136                                           
.L136:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L137:
.global_3_pos:
        .long   pos
.global_3_buffer:
        .long   buffer
.L138:
.L135:
	ldr r4,.global_3_pos                              	@IRInst:add	%t167	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t167	pos	1
	mov r5,#1                                         	@IRInst:add	%t167	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t167	pos	1
	str r6,[fp,#528]                                  	@IRInst:add	%t167	pos	1
	ldr r4,[fp,#528]                                  	@IRInst:assign	pos	%t167
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t167
	str r4,[r9]                                       	@IRInst:assign	pos	%t167
	b .L123                                           
.L122:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t168	type	3
	mov r5,#3                                         	@IRInst:beq	%t168	type	3
	cmp r4,r5                                         	@IRInst:beq	%t168	type	3
	moveq r6,#1                                       	@IRInst:beq	%t168	type	3
	movne r6,#0                                       	@IRInst:beq	%t168	type	3
	str r6,[fp,#532]                                  	@IRInst:beq	%t168	type	3
	beq .L139                                         
	b .L140                                           
.L139:
	ldr r4,.global_3_pos                              	@IRInst:add	%t169	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t169	pos	1
	mov r5,#1                                         	@IRInst:add	%t169	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t169	pos	1
	str r6,[fp,#536]                                  	@IRInst:add	%t169	pos	1
	ldr r4,[fp,#536]                                  	@IRInst:assign	pos	%t169
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t169
	str r4,[r9]                                       	@IRInst:assign	pos	%t169
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	ldr r4,.global_3_pos                              	@IRInst:blt	%t170	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t170	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t170	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t170	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t170	pos	len
	movge r6,#0                                       	@IRInst:blt	%t170	pos	len
	str r6,[fp,#540]                                  	@IRInst:blt	%t170	pos	len
	blt .L142                                         
	b .L143                                           
.L142:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t171	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t171	pos	4
	mov r5,#4                                         	@IRInst:mul	%t171	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t171	pos	4
	str r6,[fp,#544]                                  	@IRInst:mul	%t171	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t172	buf	%t171
	ldr r5,[fp,#544]                                  	@IRInst:add	%t172	buf	%t171
	add r6,r4,r5                                      	@IRInst:add	%t172	buf	%t171
	str r6,[fp,#548]                                  	@IRInst:add	%t172	buf	%t171
	ldr r4,[fp,#548]                                  	@IRInst:assign	%t173	%t172
	ldr r4,[r4]                                       	@IRInst:assign	%t173	%t172
	str r4,[fp,#552]                                  	@IRInst:assign	%t173	%t172
	ldr r4,[fp,#552]                                  	@IRInst:beq	%t174	%t173	93
	mov r5,#93                                        	@IRInst:beq	%t174	%t173	93
	cmp r4,r5                                         	@IRInst:beq	%t174	%t173	93
	moveq r6,#1                                       	@IRInst:beq	%t174	%t173	93
	movne r6,#0                                       	@IRInst:beq	%t174	%t173	93
	str r6,[fp,#556]                                  	@IRInst:beq	%t174	%t173	93
	beq .L145                                         
	b .L146                                           
.L145:
	ldr r4,.global_3_pos                              	@IRInst:add	%t175	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t175	pos	1
	mov r5,#1                                         	@IRInst:add	%t175	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t175	pos	1
	str r6,[fp,#560]                                  	@IRInst:add	%t175	pos	1
	ldr r4,[fp,#560]                                  	@IRInst:assign	pos	%t175
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t175
	str r4,[r9]                                       	@IRInst:assign	pos	%t175
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L30                                            
.L146:
.L147:
.L143:
.L144:
	mov r0,#0                                         	@IRInst:assign	r0	0
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#564]                                  	@IRInst:assign	%t176	r0
	ldr r4,[fp,#564]                                  	@IRInst:beq	%t177	%t176	0
	mov r5,#0                                         	@IRInst:beq	%t177	%t176	0
	cmp r4,r5                                         	@IRInst:beq	%t177	%t176	0
	moveq r6,#1                                       	@IRInst:beq	%t177	%t176	0
	movne r6,#0                                       	@IRInst:beq	%t177	%t176	0
	str r6,[fp,#568]                                  	@IRInst:beq	%t177	%t176	0
	beq .L148                                         
	b .L149                                           
.L148:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L149:
.L150:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
.L151:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t178	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t178	pos	4
	mov r5,#4                                         	@IRInst:mul	%t178	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t178	pos	4
	str r6,[fp,#572]                                  	@IRInst:mul	%t178	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t179	buf	%t178
	ldr r5,[fp,#572]                                  	@IRInst:add	%t179	buf	%t178
	add r6,r4,r5                                      	@IRInst:add	%t179	buf	%t178
	str r6,[fp,#576]                                  	@IRInst:add	%t179	buf	%t178
	ldr r4,[fp,#576]                                  	@IRInst:assign	%t180	%t179
	ldr r4,[r4]                                       	@IRInst:assign	%t180	%t179
	str r4,[fp,#580]                                  	@IRInst:assign	%t180	%t179
	ldr r4,[fp,#580]                                  	@IRInst:beq	%t181	%t180	44
	mov r5,#44                                        	@IRInst:beq	%t181	%t180	44
	cmp r4,r5                                         	@IRInst:beq	%t181	%t180	44
	moveq r6,#1                                       	@IRInst:beq	%t181	%t180	44
	movne r6,#0                                       	@IRInst:beq	%t181	%t180	44
	str r6,[fp,#584]                                  	@IRInst:beq	%t181	%t180	44
	beq .L152                                         
	b .L153                                           
.L152:
	ldr r4,.global_3_pos                              	@IRInst:add	%t182	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t182	pos	1
	mov r5,#1                                         	@IRInst:add	%t182	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t182	pos	1
	str r6,[fp,#588]                                  	@IRInst:add	%t182	pos	1
	ldr r4,[fp,#588]                                  	@IRInst:assign	pos	%t182
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t182
	str r4,[r9]                                       	@IRInst:assign	pos	%t182
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	mov r0,#0                                         	@IRInst:assign	r0	0
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#592]                                  	@IRInst:assign	%t183	r0
	ldr r4,[fp,#592]                                  	@IRInst:beq	%t184	%t183	0
	mov r5,#0                                         	@IRInst:beq	%t184	%t183	0
	cmp r4,r5                                         	@IRInst:beq	%t184	%t183	0
	moveq r6,#1                                       	@IRInst:beq	%t184	%t183	0
	movne r6,#0                                       	@IRInst:beq	%t184	%t183	0
	str r6,[fp,#596]                                  	@IRInst:beq	%t184	%t183	0
	beq .L154                                         
	b .L155                                           
.L154:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L155:
.L156:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	b .L151                                           
.L153:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	ldr r4,.global_3_pos                              	@IRInst:bge	%t185	pos	len
	ldr r4,[r4]                                       	@IRInst:bge	%t185	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t185	pos	len
	cmp r4,r5                                         	@IRInst:bge	%t185	pos	len
	movge r6,#1                                       	@IRInst:bge	%t185	pos	len
	movlt r6,#0                                       	@IRInst:bge	%t185	pos	len
	str r6,[fp,#600]                                  	@IRInst:bge	%t185	pos	len
	bge .L157                                         
	b .L158                                           
.L157:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L158:
.L159:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t186	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t186	pos	4
	mov r5,#4                                         	@IRInst:mul	%t186	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t186	pos	4
	str r6,[fp,#604]                                  	@IRInst:mul	%t186	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t187	buf	%t186
	ldr r5,[fp,#604]                                  	@IRInst:add	%t187	buf	%t186
	add r6,r4,r5                                      	@IRInst:add	%t187	buf	%t186
	str r6,[fp,#608]                                  	@IRInst:add	%t187	buf	%t186
	ldr r4,[fp,#608]                                  	@IRInst:assign	%t188	%t187
	ldr r4,[r4]                                       	@IRInst:assign	%t188	%t187
	str r4,[fp,#612]                                  	@IRInst:assign	%t188	%t187
	ldr r4,[fp,#612]                                  	@IRInst:beq	%t189	%t188	93
	mov r5,#93                                        	@IRInst:beq	%t189	%t188	93
	cmp r4,r5                                         	@IRInst:beq	%t189	%t188	93
	moveq r6,#1                                       	@IRInst:beq	%t189	%t188	93
	movne r6,#0                                       	@IRInst:beq	%t189	%t188	93
	str r6,[fp,#616]                                  	@IRInst:beq	%t189	%t188	93
	beq .L161                                         
	b .L160                                           
.L160:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L161:
.L162:
	ldr r4,.global_3_pos                              	@IRInst:add	%t190	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t190	pos	1
	mov r5,#1                                         	@IRInst:add	%t190	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t190	pos	1
	str r6,[fp,#620]                                  	@IRInst:add	%t190	pos	1
	ldr r4,[fp,#620]                                  	@IRInst:assign	pos	%t190
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t190
	str r4,[r9]                                       	@IRInst:assign	pos	%t190
	b .L141                                           
.L140:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t191	type	4
	mov r5,#4                                         	@IRInst:beq	%t191	type	4
	cmp r4,r5                                         	@IRInst:beq	%t191	type	4
	moveq r6,#1                                       	@IRInst:beq	%t191	type	4
	movne r6,#0                                       	@IRInst:beq	%t191	type	4
	str r6,[fp,#624]                                  	@IRInst:beq	%t191	type	4
	beq .L163                                         
	b .L164                                           
.L163:
	ldr r4,.global_3_pos                              	@IRInst:add	%t192	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t192	pos	1
	mov r5,#1                                         	@IRInst:add	%t192	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t192	pos	1
	str r6,[fp,#628]                                  	@IRInst:add	%t192	pos	1
	ldr r4,[fp,#628]                                  	@IRInst:assign	pos	%t192
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t192
	str r4,[r9]                                       	@IRInst:assign	pos	%t192
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	ldr r4,.global_3_pos                              	@IRInst:blt	%t193	pos	len
	ldr r4,[r4]                                       	@IRInst:blt	%t193	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t193	pos	len
	cmp r4,r5                                         	@IRInst:blt	%t193	pos	len
	movlt r6,#1                                       	@IRInst:blt	%t193	pos	len
	movge r6,#0                                       	@IRInst:blt	%t193	pos	len
	str r6,[fp,#632]                                  	@IRInst:blt	%t193	pos	len
	blt .L166                                         
	b .L167                                           
.L166:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t194	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t194	pos	4
	mov r5,#4                                         	@IRInst:mul	%t194	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t194	pos	4
	str r6,[fp,#636]                                  	@IRInst:mul	%t194	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t195	buf	%t194
	ldr r5,[fp,#636]                                  	@IRInst:add	%t195	buf	%t194
	add r6,r4,r5                                      	@IRInst:add	%t195	buf	%t194
	str r6,[fp,#640]                                  	@IRInst:add	%t195	buf	%t194
	ldr r4,[fp,#640]                                  	@IRInst:assign	%t196	%t195
	ldr r4,[r4]                                       	@IRInst:assign	%t196	%t195
	str r4,[fp,#644]                                  	@IRInst:assign	%t196	%t195
	ldr r4,[fp,#644]                                  	@IRInst:beq	%t197	%t196	125
	mov r5,#125                                       	@IRInst:beq	%t197	%t196	125
	cmp r4,r5                                         	@IRInst:beq	%t197	%t196	125
	moveq r6,#1                                       	@IRInst:beq	%t197	%t196	125
	movne r6,#0                                       	@IRInst:beq	%t197	%t196	125
	str r6,[fp,#648]                                  	@IRInst:beq	%t197	%t196	125
	beq .L169                                         
	b .L170                                           
.L169:
	ldr r4,.global_3_pos                              	@IRInst:add	%t198	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t198	pos	1
	mov r5,#1                                         	@IRInst:add	%t198	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t198	pos	1
	str r6,[fp,#652]                                  	@IRInst:add	%t198	pos	1
	ldr r4,[fp,#652]                                  	@IRInst:assign	pos	%t198
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t198
	str r4,[r9]                                       	@IRInst:assign	pos	%t198
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L30                                            
.L170:
.L171:
.L167:
.L168:
	mov r0,#2                                         	@IRInst:assign	r0	2
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#656]                                  	@IRInst:assign	%t199	r0
	ldr r4,[fp,#656]                                  	@IRInst:beq	%t200	%t199	0
	mov r5,#0                                         	@IRInst:beq	%t200	%t199	0
	cmp r4,r5                                         	@IRInst:beq	%t200	%t199	0
	moveq r6,#1                                       	@IRInst:beq	%t200	%t199	0
	movne r6,#0                                       	@IRInst:beq	%t200	%t199	0
	str r6,[fp,#660]                                  	@IRInst:beq	%t200	%t199	0
	beq .L172                                         
	b .L173                                           
.L172:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L173:
.L174:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	ldr r4,.global_3_pos                              	@IRInst:bge	%t201	pos	len
	ldr r4,[r4]                                       	@IRInst:bge	%t201	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t201	pos	len
	cmp r4,r5                                         	@IRInst:bge	%t201	pos	len
	movge r6,#1                                       	@IRInst:bge	%t201	pos	len
	movlt r6,#0                                       	@IRInst:bge	%t201	pos	len
	str r6,[fp,#664]                                  	@IRInst:bge	%t201	pos	len
	bge .L175                                         
	b .L176                                           
.L175:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L176:
.L177:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t202	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t202	pos	4
	mov r5,#4                                         	@IRInst:mul	%t202	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t202	pos	4
	str r6,[fp,#668]                                  	@IRInst:mul	%t202	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t203	buf	%t202
	ldr r5,[fp,#668]                                  	@IRInst:add	%t203	buf	%t202
	add r6,r4,r5                                      	@IRInst:add	%t203	buf	%t202
	str r6,[fp,#672]                                  	@IRInst:add	%t203	buf	%t202
	ldr r4,[fp,#672]                                  	@IRInst:assign	%t204	%t203
	ldr r4,[r4]                                       	@IRInst:assign	%t204	%t203
	str r4,[fp,#676]                                  	@IRInst:assign	%t204	%t203
	ldr r4,[fp,#676]                                  	@IRInst:beq	%t205	%t204	58
	mov r5,#58                                        	@IRInst:beq	%t205	%t204	58
	cmp r4,r5                                         	@IRInst:beq	%t205	%t204	58
	moveq r6,#1                                       	@IRInst:beq	%t205	%t204	58
	movne r6,#0                                       	@IRInst:beq	%t205	%t204	58
	str r6,[fp,#680]                                  	@IRInst:beq	%t205	%t204	58
	beq .L179                                         
	b .L178                                           
.L178:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L179:
.L180:
	ldr r4,.global_3_pos                              	@IRInst:add	%t206	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t206	pos	1
	mov r5,#1                                         	@IRInst:add	%t206	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t206	pos	1
	str r6,[fp,#684]                                  	@IRInst:add	%t206	pos	1
	ldr r4,[fp,#684]                                  	@IRInst:assign	pos	%t206
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t206
	str r4,[r9]                                       	@IRInst:assign	pos	%t206
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	mov r0,#0                                         	@IRInst:assign	r0	0
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#688]                                  	@IRInst:assign	%t207	r0
	ldr r4,[fp,#688]                                  	@IRInst:beq	%t208	%t207	0
	mov r5,#0                                         	@IRInst:beq	%t208	%t207	0
	cmp r4,r5                                         	@IRInst:beq	%t208	%t207	0
	moveq r6,#1                                       	@IRInst:beq	%t208	%t207	0
	movne r6,#0                                       	@IRInst:beq	%t208	%t207	0
	str r6,[fp,#692]                                  	@IRInst:beq	%t208	%t207	0
	beq .L181                                         
	b .L182                                           
.L181:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L182:
.L183:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
.L184:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t209	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t209	pos	4
	mov r5,#4                                         	@IRInst:mul	%t209	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t209	pos	4
	str r6,[fp,#696]                                  	@IRInst:mul	%t209	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t210	buf	%t209
	ldr r5,[fp,#696]                                  	@IRInst:add	%t210	buf	%t209
	add r6,r4,r5                                      	@IRInst:add	%t210	buf	%t209
	str r6,[fp,#700]                                  	@IRInst:add	%t210	buf	%t209
	ldr r4,[fp,#700]                                  	@IRInst:assign	%t211	%t210
	ldr r4,[r4]                                       	@IRInst:assign	%t211	%t210
	str r4,[fp,#704]                                  	@IRInst:assign	%t211	%t210
	ldr r4,[fp,#704]                                  	@IRInst:beq	%t212	%t211	44
	mov r5,#44                                        	@IRInst:beq	%t212	%t211	44
	cmp r4,r5                                         	@IRInst:beq	%t212	%t211	44
	moveq r6,#1                                       	@IRInst:beq	%t212	%t211	44
	movne r6,#0                                       	@IRInst:beq	%t212	%t211	44
	str r6,[fp,#708]                                  	@IRInst:beq	%t212	%t211	44
	beq .L185                                         
	b .L186                                           
.L185:
	ldr r4,.global_3_pos                              	@IRInst:add	%t213	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t213	pos	1
	mov r5,#1                                         	@IRInst:add	%t213	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t213	pos	1
	str r6,[fp,#712]                                  	@IRInst:add	%t213	pos	1
	ldr r4,[fp,#712]                                  	@IRInst:assign	pos	%t213
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t213
	str r4,[r9]                                       	@IRInst:assign	pos	%t213
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	mov r0,#2                                         	@IRInst:assign	r0	2
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#716]                                  	@IRInst:assign	%t214	r0
	ldr r4,[fp,#716]                                  	@IRInst:beq	%t215	%t214	0
	mov r5,#0                                         	@IRInst:beq	%t215	%t214	0
	cmp r4,r5                                         	@IRInst:beq	%t215	%t214	0
	moveq r6,#1                                       	@IRInst:beq	%t215	%t214	0
	movne r6,#0                                       	@IRInst:beq	%t215	%t214	0
	str r6,[fp,#720]                                  	@IRInst:beq	%t215	%t214	0
	beq .L187                                         
	b .L188                                           
.L187:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L188:
.L189:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	ldr r4,.global_3_pos                              	@IRInst:bge	%t216	pos	len
	ldr r4,[r4]                                       	@IRInst:bge	%t216	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t216	pos	len
	cmp r4,r5                                         	@IRInst:bge	%t216	pos	len
	movge r6,#1                                       	@IRInst:bge	%t216	pos	len
	movlt r6,#0                                       	@IRInst:bge	%t216	pos	len
	str r6,[fp,#724]                                  	@IRInst:bge	%t216	pos	len
	bge .L190                                         
	b .L191                                           
.L190:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L191:
.L192:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t217	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t217	pos	4
	mov r5,#4                                         	@IRInst:mul	%t217	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t217	pos	4
	str r6,[fp,#728]                                  	@IRInst:mul	%t217	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t218	buf	%t217
	ldr r5,[fp,#728]                                  	@IRInst:add	%t218	buf	%t217
	add r6,r4,r5                                      	@IRInst:add	%t218	buf	%t217
	str r6,[fp,#732]                                  	@IRInst:add	%t218	buf	%t217
	ldr r4,[fp,#732]                                  	@IRInst:assign	%t219	%t218
	ldr r4,[r4]                                       	@IRInst:assign	%t219	%t218
	str r4,[fp,#736]                                  	@IRInst:assign	%t219	%t218
	ldr r4,[fp,#736]                                  	@IRInst:beq	%t220	%t219	58
	mov r5,#58                                        	@IRInst:beq	%t220	%t219	58
	cmp r4,r5                                         	@IRInst:beq	%t220	%t219	58
	moveq r6,#1                                       	@IRInst:beq	%t220	%t219	58
	movne r6,#0                                       	@IRInst:beq	%t220	%t219	58
	str r6,[fp,#740]                                  	@IRInst:beq	%t220	%t219	58
	beq .L194                                         
	b .L193                                           
.L193:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L194:
.L195:
	ldr r4,.global_3_pos                              	@IRInst:add	%t221	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t221	pos	1
	mov r5,#1                                         	@IRInst:add	%t221	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t221	pos	1
	str r6,[fp,#744]                                  	@IRInst:add	%t221	pos	1
	ldr r4,[fp,#744]                                  	@IRInst:assign	pos	%t221
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t221
	str r4,[r9]                                       	@IRInst:assign	pos	%t221
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	mov r0,#0                                         	@IRInst:assign	r0	0
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	buf
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	len
	bl detect_item                                    
	str r0,[fp,#748]                                  	@IRInst:assign	%t222	r0
	ldr r4,[fp,#748]                                  	@IRInst:beq	%t223	%t222	0
	mov r5,#0                                         	@IRInst:beq	%t223	%t222	0
	cmp r4,r5                                         	@IRInst:beq	%t223	%t222	0
	moveq r6,#1                                       	@IRInst:beq	%t223	%t222	0
	movne r6,#0                                       	@IRInst:beq	%t223	%t222	0
	str r6,[fp,#752]                                  	@IRInst:beq	%t223	%t222	0
	beq .L196                                         
	b .L197                                           
.L196:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L197:
.L198:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	b .L184                                           
.L186:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	buf
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	len
	bl skip_space                                     
	ldr r4,.global_3_pos                              	@IRInst:bge	%t224	pos	len
	ldr r4,[r4]                                       	@IRInst:bge	%t224	pos	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t224	pos	len
	cmp r4,r5                                         	@IRInst:bge	%t224	pos	len
	movge r6,#1                                       	@IRInst:bge	%t224	pos	len
	movlt r6,#0                                       	@IRInst:bge	%t224	pos	len
	str r6,[fp,#756]                                  	@IRInst:bge	%t224	pos	len
	bge .L199                                         
	b .L200                                           
.L199:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L201                                           
.L200:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t225	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t225	pos	4
	mov r5,#4                                         	@IRInst:mul	%t225	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t225	pos	4
	str r6,[fp,#760]                                  	@IRInst:mul	%t225	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t226	buf	%t225
	ldr r5,[fp,#760]                                  	@IRInst:add	%t226	buf	%t225
	add r6,r4,r5                                      	@IRInst:add	%t226	buf	%t225
	str r6,[fp,#764]                                  	@IRInst:add	%t226	buf	%t225
	ldr r4,[fp,#764]                                  	@IRInst:assign	%t227	%t226
	ldr r4,[r4]                                       	@IRInst:assign	%t227	%t226
	str r4,[fp,#768]                                  	@IRInst:assign	%t227	%t226
	ldr r4,[fp,#768]                                  	@IRInst:beq	%t228	%t227	125
	mov r5,#125                                       	@IRInst:beq	%t228	%t227	125
	cmp r4,r5                                         	@IRInst:beq	%t228	%t227	125
	moveq r6,#1                                       	@IRInst:beq	%t228	%t227	125
	movne r6,#0                                       	@IRInst:beq	%t228	%t227	125
	str r6,[fp,#772]                                  	@IRInst:beq	%t228	%t227	125
	beq .L203                                         
	b .L202                                           
.L202:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L203:
.L204:
.L201:
	ldr r4,.global_3_pos                              	@IRInst:add	%t229	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t229	pos	1
	mov r5,#1                                         	@IRInst:add	%t229	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t229	pos	1
	str r6,[fp,#776]                                  	@IRInst:add	%t229	pos	1
	ldr r4,[fp,#776]                                  	@IRInst:assign	pos	%t229
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t229
	str r4,[r9]                                       	@IRInst:assign	pos	%t229
	b .L165                                           
.L164:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t230	type	5
	mov r5,#5                                         	@IRInst:beq	%t230	type	5
	cmp r4,r5                                         	@IRInst:beq	%t230	type	5
	moveq r6,#1                                       	@IRInst:beq	%t230	type	5
	movne r6,#0                                       	@IRInst:beq	%t230	type	5
	str r6,[fp,#780]                                  	@IRInst:beq	%t230	type	5
	beq .L205                                         
	b .L206                                           
.L205:
	ldr r4,.global_3_pos                              	@IRInst:add	%t232	pos	3
	ldr r4,[r4]                                       	@IRInst:add	%t232	pos	3
	mov r5,#3                                         	@IRInst:add	%t232	pos	3
	add r6,r4,r5                                      	@IRInst:add	%t232	pos	3
	str r6,[fp,#800]                                  	@IRInst:add	%t232	pos	3
	ldr r4,[fp,#800]                                  	@IRInst:bge	%t233	%t232	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t233	%t232	len
	cmp r4,r5                                         	@IRInst:bge	%t233	%t232	len
	movge r6,#1                                       	@IRInst:bge	%t233	%t232	len
	movlt r6,#0                                       	@IRInst:bge	%t233	%t232	len
	str r6,[fp,#804]                                  	@IRInst:bge	%t233	%t232	len
	bge .L208                                         
	b .L209                                           
.L208:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L210                                           
.L209:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t234	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t234	pos	4
	mov r5,#4                                         	@IRInst:mul	%t234	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t234	pos	4
	str r6,[fp,#808]                                  	@IRInst:mul	%t234	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t235	buf	%t234
	ldr r5,[fp,#808]                                  	@IRInst:add	%t235	buf	%t234
	add r6,r4,r5                                      	@IRInst:add	%t235	buf	%t234
	str r6,[fp,#812]                                  	@IRInst:add	%t235	buf	%t234
	ldr r4,[fp,#812]                                  	@IRInst:assign	%t236	%t235
	ldr r4,[r4]                                       	@IRInst:assign	%t236	%t235
	str r4,[fp,#816]                                  	@IRInst:assign	%t236	%t235
	mov r4,#0                                         	@IRInst:mul	%t237	0	4
	mov r5,#4                                         	@IRInst:mul	%t237	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t237	0	4
	str r6,[fp,#820]                                  	@IRInst:mul	%t237	0	4
	add r4,fp,#784                                    	@IRInst:add	%t238	mTrue	%t237
	ldr r5,[fp,#820]                                  	@IRInst:add	%t238	mTrue	%t237
	add r6,r4,r5                                      	@IRInst:add	%t238	mTrue	%t237
	str r6,[fp,#824]                                  	@IRInst:add	%t238	mTrue	%t237
	ldr r4,[fp,#824]                                  	@IRInst:assign	%t239	%t238
	ldr r4,[r4]                                       	@IRInst:assign	%t239	%t238
	str r4,[fp,#828]                                  	@IRInst:assign	%t239	%t238
	ldr r4,[fp,#816]                                  	@IRInst:beq	%t240	%t236	%t239
	ldr r5,[fp,#828]                                  	@IRInst:beq	%t240	%t236	%t239
	cmp r4,r5                                         	@IRInst:beq	%t240	%t236	%t239
	moveq r6,#1                                       	@IRInst:beq	%t240	%t236	%t239
	movne r6,#0                                       	@IRInst:beq	%t240	%t236	%t239
	str r6,[fp,#832]                                  	@IRInst:beq	%t240	%t236	%t239
	beq .L212                                         
	b .L211                                           
.L211:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L213                                           
.L212:
	ldr r4,.global_3_pos                              	@IRInst:add	%t242	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t242	pos	1
	mov r5,#1                                         	@IRInst:add	%t242	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t242	pos	1
	str r6,[fp,#840]                                  	@IRInst:add	%t242	pos	1
	ldr r4,[fp,#840]                                  	@IRInst:mul	%t241	%t242	4
	mov r5,#4                                         	@IRInst:mul	%t241	%t242	4
	mul r6,r4,r5                                      	@IRInst:mul	%t241	%t242	4
	str r6,[fp,#836]                                  	@IRInst:mul	%t241	%t242	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t243	buf	%t241
	ldr r5,[fp,#836]                                  	@IRInst:add	%t243	buf	%t241
	add r6,r4,r5                                      	@IRInst:add	%t243	buf	%t241
	str r6,[fp,#844]                                  	@IRInst:add	%t243	buf	%t241
	ldr r4,[fp,#844]                                  	@IRInst:assign	%t244	%t243
	ldr r4,[r4]                                       	@IRInst:assign	%t244	%t243
	str r4,[fp,#848]                                  	@IRInst:assign	%t244	%t243
	mov r4,#1                                         	@IRInst:mul	%t245	1	4
	mov r5,#4                                         	@IRInst:mul	%t245	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t245	1	4
	str r6,[fp,#852]                                  	@IRInst:mul	%t245	1	4
	add r4,fp,#784                                    	@IRInst:add	%t246	mTrue	%t245
	ldr r5,[fp,#852]                                  	@IRInst:add	%t246	mTrue	%t245
	add r6,r4,r5                                      	@IRInst:add	%t246	mTrue	%t245
	str r6,[fp,#856]                                  	@IRInst:add	%t246	mTrue	%t245
	ldr r4,[fp,#856]                                  	@IRInst:assign	%t247	%t246
	ldr r4,[r4]                                       	@IRInst:assign	%t247	%t246
	str r4,[fp,#860]                                  	@IRInst:assign	%t247	%t246
	ldr r4,[fp,#848]                                  	@IRInst:beq	%t248	%t244	%t247
	ldr r5,[fp,#860]                                  	@IRInst:beq	%t248	%t244	%t247
	cmp r4,r5                                         	@IRInst:beq	%t248	%t244	%t247
	moveq r6,#1                                       	@IRInst:beq	%t248	%t244	%t247
	movne r6,#0                                       	@IRInst:beq	%t248	%t244	%t247
	str r6,[fp,#864]                                  	@IRInst:beq	%t248	%t244	%t247
	beq .L215                                         
	b .L214                                           
.L214:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L216                                           
.L215:
	ldr r4,.global_3_pos                              	@IRInst:add	%t250	pos	2
	ldr r4,[r4]                                       	@IRInst:add	%t250	pos	2
	mov r5,#2                                         	@IRInst:add	%t250	pos	2
	add r6,r4,r5                                      	@IRInst:add	%t250	pos	2
	str r6,[fp,#872]                                  	@IRInst:add	%t250	pos	2
	ldr r4,[fp,#872]                                  	@IRInst:mul	%t249	%t250	4
	mov r5,#4                                         	@IRInst:mul	%t249	%t250	4
	mul r6,r4,r5                                      	@IRInst:mul	%t249	%t250	4
	str r6,[fp,#868]                                  	@IRInst:mul	%t249	%t250	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t251	buf	%t249
	ldr r5,[fp,#868]                                  	@IRInst:add	%t251	buf	%t249
	add r6,r4,r5                                      	@IRInst:add	%t251	buf	%t249
	str r6,[fp,#876]                                  	@IRInst:add	%t251	buf	%t249
	ldr r4,[fp,#876]                                  	@IRInst:assign	%t252	%t251
	ldr r4,[r4]                                       	@IRInst:assign	%t252	%t251
	str r4,[fp,#880]                                  	@IRInst:assign	%t252	%t251
	mov r4,#2                                         	@IRInst:mul	%t253	2	4
	mov r5,#4                                         	@IRInst:mul	%t253	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t253	2	4
	str r6,[fp,#884]                                  	@IRInst:mul	%t253	2	4
	add r4,fp,#784                                    	@IRInst:add	%t254	mTrue	%t253
	ldr r5,[fp,#884]                                  	@IRInst:add	%t254	mTrue	%t253
	add r6,r4,r5                                      	@IRInst:add	%t254	mTrue	%t253
	str r6,[fp,#888]                                  	@IRInst:add	%t254	mTrue	%t253
	ldr r4,[fp,#888]                                  	@IRInst:assign	%t255	%t254
	ldr r4,[r4]                                       	@IRInst:assign	%t255	%t254
	str r4,[fp,#892]                                  	@IRInst:assign	%t255	%t254
	ldr r4,[fp,#880]                                  	@IRInst:beq	%t256	%t252	%t255
	ldr r5,[fp,#892]                                  	@IRInst:beq	%t256	%t252	%t255
	cmp r4,r5                                         	@IRInst:beq	%t256	%t252	%t255
	moveq r6,#1                                       	@IRInst:beq	%t256	%t252	%t255
	movne r6,#0                                       	@IRInst:beq	%t256	%t252	%t255
	str r6,[fp,#896]                                  	@IRInst:beq	%t256	%t252	%t255
	beq .L218                                         
	b .L217                                           
.L217:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L219                                           
.L218:
	ldr r4,.global_3_pos                              	@IRInst:add	%t258	pos	3
	ldr r4,[r4]                                       	@IRInst:add	%t258	pos	3
	mov r5,#3                                         	@IRInst:add	%t258	pos	3
	add r6,r4,r5                                      	@IRInst:add	%t258	pos	3
	str r6,[fp,#904]                                  	@IRInst:add	%t258	pos	3
	ldr r4,[fp,#904]                                  	@IRInst:mul	%t257	%t258	4
	mov r5,#4                                         	@IRInst:mul	%t257	%t258	4
	mul r6,r4,r5                                      	@IRInst:mul	%t257	%t258	4
	str r6,[fp,#900]                                  	@IRInst:mul	%t257	%t258	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t259	buf	%t257
	ldr r5,[fp,#900]                                  	@IRInst:add	%t259	buf	%t257
	add r6,r4,r5                                      	@IRInst:add	%t259	buf	%t257
	str r6,[fp,#908]                                  	@IRInst:add	%t259	buf	%t257
	ldr r4,[fp,#908]                                  	@IRInst:assign	%t260	%t259
	ldr r4,[r4]                                       	@IRInst:assign	%t260	%t259
	str r4,[fp,#912]                                  	@IRInst:assign	%t260	%t259
	mov r4,#3                                         	@IRInst:mul	%t261	3	4
	mov r5,#4                                         	@IRInst:mul	%t261	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t261	3	4
	str r6,[fp,#916]                                  	@IRInst:mul	%t261	3	4
	add r4,fp,#784                                    	@IRInst:add	%t262	mTrue	%t261
	ldr r5,[fp,#916]                                  	@IRInst:add	%t262	mTrue	%t261
	add r6,r4,r5                                      	@IRInst:add	%t262	mTrue	%t261
	str r6,[fp,#920]                                  	@IRInst:add	%t262	mTrue	%t261
	ldr r4,[fp,#920]                                  	@IRInst:assign	%t263	%t262
	ldr r4,[r4]                                       	@IRInst:assign	%t263	%t262
	str r4,[fp,#924]                                  	@IRInst:assign	%t263	%t262
	ldr r4,[fp,#912]                                  	@IRInst:beq	%t264	%t260	%t263
	ldr r5,[fp,#924]                                  	@IRInst:beq	%t264	%t260	%t263
	cmp r4,r5                                         	@IRInst:beq	%t264	%t260	%t263
	moveq r6,#1                                       	@IRInst:beq	%t264	%t260	%t263
	movne r6,#0                                       	@IRInst:beq	%t264	%t260	%t263
	str r6,[fp,#928]                                  	@IRInst:beq	%t264	%t260	%t263
	beq .L221                                         
	b .L220                                           
.L220:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L221:
.L222:
.L219:
.L216:
.L213:
.L210:
	ldr r4,.global_3_pos                              	@IRInst:add	%t265	pos	4
	ldr r4,[r4]                                       	@IRInst:add	%t265	pos	4
	mov r5,#4                                         	@IRInst:add	%t265	pos	4
	add r6,r4,r5                                      	@IRInst:add	%t265	pos	4
	str r6,[fp,#932]                                  	@IRInst:add	%t265	pos	4
	ldr r4,[fp,#932]                                  	@IRInst:assign	pos	%t265
	ldr r9,.global_3_pos                              	@IRInst:assign	pos	%t265
	str r4,[r9]                                       	@IRInst:assign	pos	%t265
	b .L207                                           
.L206:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t266	type	6
	mov r5,#6                                         	@IRInst:beq	%t266	type	6
	cmp r4,r5                                         	@IRInst:beq	%t266	type	6
	moveq r6,#1                                       	@IRInst:beq	%t266	type	6
	movne r6,#0                                       	@IRInst:beq	%t266	type	6
	str r6,[fp,#936]                                  	@IRInst:beq	%t266	type	6
	beq .L223                                         
	b .L224                                           
.L223:
	ldr r4,.global_3_pos                              	@IRInst:add	%t268	pos	4
	ldr r4,[r4]                                       	@IRInst:add	%t268	pos	4
	mov r5,#4                                         	@IRInst:add	%t268	pos	4
	add r6,r4,r5                                      	@IRInst:add	%t268	pos	4
	str r6,[fp,#960]                                  	@IRInst:add	%t268	pos	4
	ldr r4,[fp,#960]                                  	@IRInst:bge	%t269	%t268	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t269	%t268	len
	cmp r4,r5                                         	@IRInst:bge	%t269	%t268	len
	movge r6,#1                                       	@IRInst:bge	%t269	%t268	len
	movlt r6,#0                                       	@IRInst:bge	%t269	%t268	len
	str r6,[fp,#964]                                  	@IRInst:bge	%t269	%t268	len
	bge .L226                                         
	b .L227                                           
.L226:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L228                                           
.L227:
	ldr r4,.global_3_pos                              	@IRInst:mul	%t270	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t270	pos	4
	mov r5,#4                                         	@IRInst:mul	%t270	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t270	pos	4
	str r6,[fp,#968]                                  	@IRInst:mul	%t270	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t271	buf	%t270
	ldr r5,[fp,#968]                                  	@IRInst:add	%t271	buf	%t270
	add r6,r4,r5                                      	@IRInst:add	%t271	buf	%t270
	str r6,[fp,#972]                                  	@IRInst:add	%t271	buf	%t270
	ldr r4,[fp,#972]                                  	@IRInst:assign	%t272	%t271
	ldr r4,[r4]                                       	@IRInst:assign	%t272	%t271
	str r4,[fp,#976]                                  	@IRInst:assign	%t272	%t271
	mov r4,#0                                         	@IRInst:mul	%t273	0	4
	mov r5,#4                                         	@IRInst:mul	%t273	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t273	0	4
	str r6,[fp,#980]                                  	@IRInst:mul	%t273	0	4
	add r4,fp,#940                                    	@IRInst:add	%t274	mFalse	%t273
	ldr r5,[fp,#980]                                  	@IRInst:add	%t274	mFalse	%t273
	add r6,r4,r5                                      	@IRInst:add	%t274	mFalse	%t273
	str r6,[fp,#984]                                  	@IRInst:add	%t274	mFalse	%t273
	ldr r4,[fp,#984]                                  	@IRInst:assign	%t275	%t274
	ldr r4,[r4]                                       	@IRInst:assign	%t275	%t274
	str r4,[fp,#988]                                  	@IRInst:assign	%t275	%t274
	ldr r4,[fp,#976]                                  	@IRInst:beq	%t276	%t272	%t275
	ldr r5,[fp,#988]                                  	@IRInst:beq	%t276	%t272	%t275
	cmp r4,r5                                         	@IRInst:beq	%t276	%t272	%t275
	moveq r6,#1                                       	@IRInst:beq	%t276	%t272	%t275
	movne r6,#0                                       	@IRInst:beq	%t276	%t272	%t275
	str r6,[fp,#992]                                  	@IRInst:beq	%t276	%t272	%t275
	beq .L230                                         
	b .L229                                           
.L229:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L231                                           
.L230:
	ldr r4,.global_3_pos                              	@IRInst:add	%t278	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t278	pos	1
	mov r5,#1                                         	@IRInst:add	%t278	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t278	pos	1
	str r6,[fp,#1000]                                 	@IRInst:add	%t278	pos	1
	ldr r4,[fp,#1000]                                 	@IRInst:mul	%t277	%t278	4
	mov r5,#4                                         	@IRInst:mul	%t277	%t278	4
	mul r6,r4,r5                                      	@IRInst:mul	%t277	%t278	4
	str r6,[fp,#996]                                  	@IRInst:mul	%t277	%t278	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t279	buf	%t277
	ldr r5,[fp,#996]                                  	@IRInst:add	%t279	buf	%t277
	add r6,r4,r5                                      	@IRInst:add	%t279	buf	%t277
	str r6,[fp,#1004]                                 	@IRInst:add	%t279	buf	%t277
	ldr r4,[fp,#1004]                                 	@IRInst:assign	%t280	%t279
	ldr r4,[r4]                                       	@IRInst:assign	%t280	%t279
	str r4,[fp,#1008]                                 	@IRInst:assign	%t280	%t279
	mov r4,#1                                         	@IRInst:mul	%t281	1	4
	mov r5,#4                                         	@IRInst:mul	%t281	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t281	1	4
	str r6,[fp,#1012]                                 	@IRInst:mul	%t281	1	4
	add r4,fp,#940                                    	@IRInst:add	%t282	mFalse	%t281
	ldr r5,[fp,#1012]                                 	@IRInst:add	%t282	mFalse	%t281
	add r6,r4,r5                                      	@IRInst:add	%t282	mFalse	%t281
	str r6,[fp,#1016]                                 	@IRInst:add	%t282	mFalse	%t281
	ldr r4,[fp,#1016]                                 	@IRInst:assign	%t283	%t282
	ldr r4,[r4]                                       	@IRInst:assign	%t283	%t282
	str r4,[fp,#1020]                                 	@IRInst:assign	%t283	%t282
	ldr r4,[fp,#1008]                                 	@IRInst:beq	%t284	%t280	%t283
	ldr r5,[fp,#1020]                                 	@IRInst:beq	%t284	%t280	%t283
	cmp r4,r5                                         	@IRInst:beq	%t284	%t280	%t283
	moveq r6,#1                                       	@IRInst:beq	%t284	%t280	%t283
	movne r6,#0                                       	@IRInst:beq	%t284	%t280	%t283
	str r6,[fp,#1024]                                 	@IRInst:beq	%t284	%t280	%t283
	beq .L233                                         
	b .L232                                           
.L232:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L234                                           
.L233:
	ldr r4,.global_3_pos                              	@IRInst:add	%t286	pos	2
	ldr r4,[r4]                                       	@IRInst:add	%t286	pos	2
	mov r5,#2                                         	@IRInst:add	%t286	pos	2
	add r6,r4,r5                                      	@IRInst:add	%t286	pos	2
	str r6,[fp,#1032]                                 	@IRInst:add	%t286	pos	2
	ldr r4,[fp,#1032]                                 	@IRInst:mul	%t285	%t286	4
	mov r5,#4                                         	@IRInst:mul	%t285	%t286	4
	mul r6,r4,r5                                      	@IRInst:mul	%t285	%t286	4
	str r6,[fp,#1028]                                 	@IRInst:mul	%t285	%t286	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t287	buf	%t285
	ldr r5,[fp,#1028]                                 	@IRInst:add	%t287	buf	%t285
	add r6,r4,r5                                      	@IRInst:add	%t287	buf	%t285
	str r6,[fp,#1036]                                 	@IRInst:add	%t287	buf	%t285
	ldr r4,[fp,#1036]                                 	@IRInst:assign	%t288	%t287
	ldr r4,[r4]                                       	@IRInst:assign	%t288	%t287
	str r4,[fp,#1040]                                 	@IRInst:assign	%t288	%t287
	mov r4,#2                                         	@IRInst:mul	%t289	2	4
	mov r5,#4                                         	@IRInst:mul	%t289	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t289	2	4
	str r6,[fp,#1044]                                 	@IRInst:mul	%t289	2	4
	add r4,fp,#940                                    	@IRInst:add	%t290	mFalse	%t289
	ldr r5,[fp,#1044]                                 	@IRInst:add	%t290	mFalse	%t289
	add r6,r4,r5                                      	@IRInst:add	%t290	mFalse	%t289
	str r6,[fp,#1048]                                 	@IRInst:add	%t290	mFalse	%t289
	ldr r4,[fp,#1048]                                 	@IRInst:assign	%t291	%t290
	ldr r4,[r4]                                       	@IRInst:assign	%t291	%t290
	str r4,[fp,#1052]                                 	@IRInst:assign	%t291	%t290
	ldr r4,[fp,#1040]                                 	@IRInst:beq	%t292	%t288	%t291
	ldr r5,[fp,#1052]                                 	@IRInst:beq	%t292	%t288	%t291
	cmp r4,r5                                         	@IRInst:beq	%t292	%t288	%t291
	moveq r6,#1                                       	@IRInst:beq	%t292	%t288	%t291
	movne r6,#0                                       	@IRInst:beq	%t292	%t288	%t291
	str r6,[fp,#1056]                                 	@IRInst:beq	%t292	%t288	%t291
.global_4_pos:
        .long   pos
.global_4_buffer:
        .long   buffer
	beq .L236                                         
	b .L235                                           
.L235:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L237                                           
.L236:
	ldr r4,.global_4_pos                              	@IRInst:add	%t294	pos	3
	ldr r4,[r4]                                       	@IRInst:add	%t294	pos	3
	mov r5,#3                                         	@IRInst:add	%t294	pos	3
	add r6,r4,r5                                      	@IRInst:add	%t294	pos	3
	str r6,[fp,#1064]                                 	@IRInst:add	%t294	pos	3
	ldr r4,[fp,#1064]                                 	@IRInst:mul	%t293	%t294	4
	mov r5,#4                                         	@IRInst:mul	%t293	%t294	4
	mul r6,r4,r5                                      	@IRInst:mul	%t293	%t294	4
	str r6,[fp,#1060]                                 	@IRInst:mul	%t293	%t294	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t295	buf	%t293
	ldr r5,[fp,#1060]                                 	@IRInst:add	%t295	buf	%t293
	add r6,r4,r5                                      	@IRInst:add	%t295	buf	%t293
	str r6,[fp,#1068]                                 	@IRInst:add	%t295	buf	%t293
	ldr r4,[fp,#1068]                                 	@IRInst:assign	%t296	%t295
	ldr r4,[r4]                                       	@IRInst:assign	%t296	%t295
	str r4,[fp,#1072]                                 	@IRInst:assign	%t296	%t295
	mov r4,#3                                         	@IRInst:mul	%t297	3	4
	mov r5,#4                                         	@IRInst:mul	%t297	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t297	3	4
	str r6,[fp,#1076]                                 	@IRInst:mul	%t297	3	4
	add r4,fp,#940                                    	@IRInst:add	%t298	mFalse	%t297
	ldr r5,[fp,#1076]                                 	@IRInst:add	%t298	mFalse	%t297
	add r6,r4,r5                                      	@IRInst:add	%t298	mFalse	%t297
	str r6,[fp,#1080]                                 	@IRInst:add	%t298	mFalse	%t297
	ldr r4,[fp,#1080]                                 	@IRInst:assign	%t299	%t298
	ldr r4,[r4]                                       	@IRInst:assign	%t299	%t298
	str r4,[fp,#1084]                                 	@IRInst:assign	%t299	%t298
	ldr r4,[fp,#1072]                                 	@IRInst:beq	%t300	%t296	%t299
	ldr r5,[fp,#1084]                                 	@IRInst:beq	%t300	%t296	%t299
	cmp r4,r5                                         	@IRInst:beq	%t300	%t296	%t299
	moveq r6,#1                                       	@IRInst:beq	%t300	%t296	%t299
	movne r6,#0                                       	@IRInst:beq	%t300	%t296	%t299
	str r6,[fp,#1088]                                 	@IRInst:beq	%t300	%t296	%t299
	beq .L239                                         
	b .L238                                           
.L238:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L240                                           
.L239:
	ldr r4,.global_4_pos                              	@IRInst:add	%t302	pos	4
	ldr r4,[r4]                                       	@IRInst:add	%t302	pos	4
	mov r5,#4                                         	@IRInst:add	%t302	pos	4
	add r6,r4,r5                                      	@IRInst:add	%t302	pos	4
	str r6,[fp,#1096]                                 	@IRInst:add	%t302	pos	4
	ldr r4,[fp,#1096]                                 	@IRInst:mul	%t301	%t302	4
	mov r5,#4                                         	@IRInst:mul	%t301	%t302	4
	mul r6,r4,r5                                      	@IRInst:mul	%t301	%t302	4
	str r6,[fp,#1092]                                 	@IRInst:mul	%t301	%t302	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t303	buf	%t301
	ldr r5,[fp,#1092]                                 	@IRInst:add	%t303	buf	%t301
	add r6,r4,r5                                      	@IRInst:add	%t303	buf	%t301
	str r6,[fp,#1100]                                 	@IRInst:add	%t303	buf	%t301
	ldr r4,[fp,#1100]                                 	@IRInst:assign	%t304	%t303
	ldr r4,[r4]                                       	@IRInst:assign	%t304	%t303
	str r4,[fp,#1104]                                 	@IRInst:assign	%t304	%t303
	mov r4,#4                                         	@IRInst:mul	%t305	4	4
	mov r5,#4                                         	@IRInst:mul	%t305	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t305	4	4
	str r6,[fp,#1108]                                 	@IRInst:mul	%t305	4	4
	add r4,fp,#940                                    	@IRInst:add	%t306	mFalse	%t305
	ldr r5,[fp,#1108]                                 	@IRInst:add	%t306	mFalse	%t305
	add r6,r4,r5                                      	@IRInst:add	%t306	mFalse	%t305
	str r6,[fp,#1112]                                 	@IRInst:add	%t306	mFalse	%t305
	ldr r4,[fp,#1112]                                 	@IRInst:assign	%t307	%t306
	ldr r4,[r4]                                       	@IRInst:assign	%t307	%t306
	str r4,[fp,#1116]                                 	@IRInst:assign	%t307	%t306
	ldr r4,[fp,#1104]                                 	@IRInst:beq	%t308	%t304	%t307
	ldr r5,[fp,#1116]                                 	@IRInst:beq	%t308	%t304	%t307
	cmp r4,r5                                         	@IRInst:beq	%t308	%t304	%t307
	moveq r6,#1                                       	@IRInst:beq	%t308	%t304	%t307
	movne r6,#0                                       	@IRInst:beq	%t308	%t304	%t307
	str r6,[fp,#1120]                                 	@IRInst:beq	%t308	%t304	%t307
	beq .L242                                         
	b .L241                                           
.L241:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L242:
.L243:
.L240:
.L237:
.L234:
.L231:
.L228:
	ldr r4,.global_4_pos                              	@IRInst:add	%t309	pos	5
	ldr r4,[r4]                                       	@IRInst:add	%t309	pos	5
	mov r5,#5                                         	@IRInst:add	%t309	pos	5
	add r6,r4,r5                                      	@IRInst:add	%t309	pos	5
	str r6,[fp,#1124]                                 	@IRInst:add	%t309	pos	5
	ldr r4,[fp,#1124]                                 	@IRInst:assign	pos	%t309
	ldr r9,.global_4_pos                              	@IRInst:assign	pos	%t309
	str r4,[r9]                                       	@IRInst:assign	pos	%t309
	b .L225                                           
.L224:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t310	type	7
	mov r5,#7                                         	@IRInst:beq	%t310	type	7
	cmp r4,r5                                         	@IRInst:beq	%t310	type	7
	moveq r6,#1                                       	@IRInst:beq	%t310	type	7
	movne r6,#0                                       	@IRInst:beq	%t310	type	7
	str r6,[fp,#1128]                                 	@IRInst:beq	%t310	type	7
	beq .L244                                         
	b .L245                                           
.L244:
	ldr r4,.global_4_pos                              	@IRInst:add	%t312	pos	3
	ldr r4,[r4]                                       	@IRInst:add	%t312	pos	3
	mov r5,#3                                         	@IRInst:add	%t312	pos	3
	add r6,r4,r5                                      	@IRInst:add	%t312	pos	3
	str r6,[fp,#1148]                                 	@IRInst:add	%t312	pos	3
	ldr r4,[fp,#1148]                                 	@IRInst:bge	%t313	%t312	len
	ldr r5,[fp,#12]                                   	@IRInst:bge	%t313	%t312	len
	cmp r4,r5                                         	@IRInst:bge	%t313	%t312	len
	movge r6,#1                                       	@IRInst:bge	%t313	%t312	len
	movlt r6,#0                                       	@IRInst:bge	%t313	%t312	len
	str r6,[fp,#1152]                                 	@IRInst:bge	%t313	%t312	len
	bge .L247                                         
	b .L248                                           
.L247:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L249                                           
.L248:
	ldr r4,.global_4_pos                              	@IRInst:mul	%t314	pos	4
	ldr r4,[r4]                                       	@IRInst:mul	%t314	pos	4
	mov r5,#4                                         	@IRInst:mul	%t314	pos	4
	mul r6,r4,r5                                      	@IRInst:mul	%t314	pos	4
	str r6,[fp,#1156]                                 	@IRInst:mul	%t314	pos	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t315	buf	%t314
	ldr r5,[fp,#1156]                                 	@IRInst:add	%t315	buf	%t314
	add r6,r4,r5                                      	@IRInst:add	%t315	buf	%t314
	str r6,[fp,#1160]                                 	@IRInst:add	%t315	buf	%t314
	ldr r4,[fp,#1160]                                 	@IRInst:assign	%t316	%t315
	ldr r4,[r4]                                       	@IRInst:assign	%t316	%t315
	str r4,[fp,#1164]                                 	@IRInst:assign	%t316	%t315
	mov r4,#0                                         	@IRInst:mul	%t317	0	4
	mov r5,#4                                         	@IRInst:mul	%t317	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t317	0	4
	str r6,[fp,#1168]                                 	@IRInst:mul	%t317	0	4
	add r4,fp,#1132                                   	@IRInst:add	%t318	mNull	%t317
	ldr r5,[fp,#1168]                                 	@IRInst:add	%t318	mNull	%t317
	add r6,r4,r5                                      	@IRInst:add	%t318	mNull	%t317
	str r6,[fp,#1172]                                 	@IRInst:add	%t318	mNull	%t317
	ldr r4,[fp,#1172]                                 	@IRInst:assign	%t319	%t318
	ldr r4,[r4]                                       	@IRInst:assign	%t319	%t318
	str r4,[fp,#1176]                                 	@IRInst:assign	%t319	%t318
	ldr r4,[fp,#1164]                                 	@IRInst:beq	%t320	%t316	%t319
	ldr r5,[fp,#1176]                                 	@IRInst:beq	%t320	%t316	%t319
	cmp r4,r5                                         	@IRInst:beq	%t320	%t316	%t319
	moveq r6,#1                                       	@IRInst:beq	%t320	%t316	%t319
	movne r6,#0                                       	@IRInst:beq	%t320	%t316	%t319
	str r6,[fp,#1180]                                 	@IRInst:beq	%t320	%t316	%t319
	beq .L251                                         
	b .L250                                           
.L250:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L252                                           
.L251:
	ldr r4,.global_4_pos                              	@IRInst:add	%t322	pos	1
	ldr r4,[r4]                                       	@IRInst:add	%t322	pos	1
	mov r5,#1                                         	@IRInst:add	%t322	pos	1
	add r6,r4,r5                                      	@IRInst:add	%t322	pos	1
	str r6,[fp,#1188]                                 	@IRInst:add	%t322	pos	1
	ldr r4,[fp,#1188]                                 	@IRInst:mul	%t321	%t322	4
	mov r5,#4                                         	@IRInst:mul	%t321	%t322	4
	mul r6,r4,r5                                      	@IRInst:mul	%t321	%t322	4
	str r6,[fp,#1184]                                 	@IRInst:mul	%t321	%t322	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t323	buf	%t321
	ldr r5,[fp,#1184]                                 	@IRInst:add	%t323	buf	%t321
	add r6,r4,r5                                      	@IRInst:add	%t323	buf	%t321
	str r6,[fp,#1192]                                 	@IRInst:add	%t323	buf	%t321
	ldr r4,[fp,#1192]                                 	@IRInst:assign	%t324	%t323
	ldr r4,[r4]                                       	@IRInst:assign	%t324	%t323
	str r4,[fp,#1196]                                 	@IRInst:assign	%t324	%t323
	mov r4,#1                                         	@IRInst:mul	%t325	1	4
	mov r5,#4                                         	@IRInst:mul	%t325	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t325	1	4
	str r6,[fp,#1200]                                 	@IRInst:mul	%t325	1	4
	add r4,fp,#1132                                   	@IRInst:add	%t326	mNull	%t325
	ldr r5,[fp,#1200]                                 	@IRInst:add	%t326	mNull	%t325
	add r6,r4,r5                                      	@IRInst:add	%t326	mNull	%t325
	str r6,[fp,#1204]                                 	@IRInst:add	%t326	mNull	%t325
	ldr r4,[fp,#1204]                                 	@IRInst:assign	%t327	%t326
	ldr r4,[r4]                                       	@IRInst:assign	%t327	%t326
	str r4,[fp,#1208]                                 	@IRInst:assign	%t327	%t326
	ldr r4,[fp,#1196]                                 	@IRInst:beq	%t328	%t324	%t327
	ldr r5,[fp,#1208]                                 	@IRInst:beq	%t328	%t324	%t327
	cmp r4,r5                                         	@IRInst:beq	%t328	%t324	%t327
	moveq r6,#1                                       	@IRInst:beq	%t328	%t324	%t327
	movne r6,#0                                       	@IRInst:beq	%t328	%t324	%t327
	str r6,[fp,#1212]                                 	@IRInst:beq	%t328	%t324	%t327
	beq .L254                                         
	b .L253                                           
.L253:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L255                                           
.L254:
	ldr r4,.global_4_pos                              	@IRInst:add	%t330	pos	2
	ldr r4,[r4]                                       	@IRInst:add	%t330	pos	2
	mov r5,#2                                         	@IRInst:add	%t330	pos	2
	add r6,r4,r5                                      	@IRInst:add	%t330	pos	2
	str r6,[fp,#1220]                                 	@IRInst:add	%t330	pos	2
	ldr r4,[fp,#1220]                                 	@IRInst:mul	%t329	%t330	4
	mov r5,#4                                         	@IRInst:mul	%t329	%t330	4
	mul r6,r4,r5                                      	@IRInst:mul	%t329	%t330	4
	str r6,[fp,#1216]                                 	@IRInst:mul	%t329	%t330	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t331	buf	%t329
	ldr r5,[fp,#1216]                                 	@IRInst:add	%t331	buf	%t329
	add r6,r4,r5                                      	@IRInst:add	%t331	buf	%t329
	str r6,[fp,#1224]                                 	@IRInst:add	%t331	buf	%t329
	ldr r4,[fp,#1224]                                 	@IRInst:assign	%t332	%t331
	ldr r4,[r4]                                       	@IRInst:assign	%t332	%t331
	str r4,[fp,#1228]                                 	@IRInst:assign	%t332	%t331
	mov r4,#2                                         	@IRInst:mul	%t333	2	4
	mov r5,#4                                         	@IRInst:mul	%t333	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t333	2	4
	str r6,[fp,#1232]                                 	@IRInst:mul	%t333	2	4
	add r4,fp,#1132                                   	@IRInst:add	%t334	mNull	%t333
	ldr r5,[fp,#1232]                                 	@IRInst:add	%t334	mNull	%t333
	add r6,r4,r5                                      	@IRInst:add	%t334	mNull	%t333
	str r6,[fp,#1236]                                 	@IRInst:add	%t334	mNull	%t333
	ldr r4,[fp,#1236]                                 	@IRInst:assign	%t335	%t334
	ldr r4,[r4]                                       	@IRInst:assign	%t335	%t334
	str r4,[fp,#1240]                                 	@IRInst:assign	%t335	%t334
	ldr r4,[fp,#1228]                                 	@IRInst:beq	%t336	%t332	%t335
	ldr r5,[fp,#1240]                                 	@IRInst:beq	%t336	%t332	%t335
	cmp r4,r5                                         	@IRInst:beq	%t336	%t332	%t335
	moveq r6,#1                                       	@IRInst:beq	%t336	%t332	%t335
	movne r6,#0                                       	@IRInst:beq	%t336	%t332	%t335
	str r6,[fp,#1244]                                 	@IRInst:beq	%t336	%t332	%t335
	beq .L257                                         
	b .L256                                           
.L256:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
	b .L258                                           
.L257:
	ldr r4,.global_4_pos                              	@IRInst:add	%t338	pos	3
	ldr r4,[r4]                                       	@IRInst:add	%t338	pos	3
	mov r5,#3                                         	@IRInst:add	%t338	pos	3
	add r6,r4,r5                                      	@IRInst:add	%t338	pos	3
	str r6,[fp,#1252]                                 	@IRInst:add	%t338	pos	3
	ldr r4,[fp,#1252]                                 	@IRInst:mul	%t337	%t338	4
	mov r5,#4                                         	@IRInst:mul	%t337	%t338	4
	mul r6,r4,r5                                      	@IRInst:mul	%t337	%t338	4
	str r6,[fp,#1248]                                 	@IRInst:mul	%t337	%t338	4
	ldr r4,[fp,#8]                                    	@IRInst:add	%t339	buf	%t337
	ldr r5,[fp,#1248]                                 	@IRInst:add	%t339	buf	%t337
	add r6,r4,r5                                      	@IRInst:add	%t339	buf	%t337
	str r6,[fp,#1256]                                 	@IRInst:add	%t339	buf	%t337
	ldr r4,[fp,#1256]                                 	@IRInst:assign	%t340	%t339
	ldr r4,[r4]                                       	@IRInst:assign	%t340	%t339
	str r4,[fp,#1260]                                 	@IRInst:assign	%t340	%t339
	mov r4,#3                                         	@IRInst:mul	%t341	3	4
	mov r5,#4                                         	@IRInst:mul	%t341	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t341	3	4
	str r6,[fp,#1264]                                 	@IRInst:mul	%t341	3	4
	add r4,fp,#1132                                   	@IRInst:add	%t342	mNull	%t341
	ldr r5,[fp,#1264]                                 	@IRInst:add	%t342	mNull	%t341
	add r6,r4,r5                                      	@IRInst:add	%t342	mNull	%t341
	str r6,[fp,#1268]                                 	@IRInst:add	%t342	mNull	%t341
	ldr r4,[fp,#1268]                                 	@IRInst:assign	%t343	%t342
	ldr r4,[r4]                                       	@IRInst:assign	%t343	%t342
	str r4,[fp,#1272]                                 	@IRInst:assign	%t343	%t342
	ldr r4,[fp,#1260]                                 	@IRInst:beq	%t344	%t340	%t343
	ldr r5,[fp,#1272]                                 	@IRInst:beq	%t344	%t340	%t343
	cmp r4,r5                                         	@IRInst:beq	%t344	%t340	%t343
	moveq r6,#1                                       	@IRInst:beq	%t344	%t340	%t343
	movne r6,#0                                       	@IRInst:beq	%t344	%t340	%t343
	str r6,[fp,#1276]                                 	@IRInst:beq	%t344	%t340	%t343
	beq .L260                                         
	b .L259                                           
.L259:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L260:
.L261:
.L258:
.L255:
.L252:
.L249:
	ldr r4,.global_4_pos                              	@IRInst:add	%t345	pos	4
	ldr r4,[r4]                                       	@IRInst:add	%t345	pos	4
	mov r5,#4                                         	@IRInst:add	%t345	pos	4
	add r6,r4,r5                                      	@IRInst:add	%t345	pos	4
	str r6,[fp,#1280]                                 	@IRInst:add	%t345	pos	4
	ldr r4,[fp,#1280]                                 	@IRInst:assign	pos	%t345
	ldr r9,.global_4_pos                              	@IRInst:assign	pos	%t345
	str r4,[r9]                                       	@IRInst:assign	pos	%t345
	b .L246                                           
.L245:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L30                                            
.L246:
.L225:
.L207:
.L165:
.L141:
.L123:
.L66:
.L36:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L30                                            
.L30:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#260                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_5_pos:
        .long   pos
.global_5_buffer:
        .long   buffer
.global main
.type main, %function
main:
.L262:
	push {r10,fp,lr}                                  
	sub sp,sp,#48                                     
	add fp,sp,#0                                      
	bl getch                                          
	str r0,[fp,#8]                                    	@IRInst:assign	%t349	r0
	ldr r4,[fp,#8]                                    	@IRInst:assign	get	%t349
	str r4,[fp,#4]                                    	@IRInst:assign	get	%t349
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#12]                                   	@IRInst:assign	i	0
.L264:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t351	get	35
	mov r5,#35                                        	@IRInst:beq	%t351	get	35
	cmp r4,r5                                         	@IRInst:beq	%t351	get	35
	moveq r6,#1                                       	@IRInst:beq	%t351	get	35
	movne r6,#0                                       	@IRInst:beq	%t351	get	35
	str r6,[fp,#16]                                   	@IRInst:beq	%t351	get	35
	beq .L266                                         
	b .L265                                           
.L265:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t352	i	4
	mov r5,#4                                         	@IRInst:mul	%t352	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t352	i	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t352	i	4
	ldr r4,.global_5_buffer                           	@IRInst:add	%t353	buffer	%t352
	ldr r5,[fp,#20]                                   	@IRInst:add	%t353	buffer	%t352
	add r6,r4,r5                                      	@IRInst:add	%t353	buffer	%t352
	str r6,[fp,#24]                                   	@IRInst:add	%t353	buffer	%t352
	ldr r5,[fp,#24]                                   	@IRInst:assign	%t353	get
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t353	get
	str r4,[r5]                                       	@IRInst:assign	%t353	get
	ldr r4,[fp,#12]                                   	@IRInst:add	%t354	i	1
	mov r5,#1                                         	@IRInst:add	%t354	i	1
	add r6,r4,r5                                      	@IRInst:add	%t354	i	1
	str r6,[fp,#28]                                   	@IRInst:add	%t354	i	1
	ldr r4,[fp,#28]                                   	@IRInst:assign	i	%t354
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t354
	bl getch                                          
	str r0,[fp,#32]                                   	@IRInst:assign	%t355	r0
	ldr r4,[fp,#32]                                   	@IRInst:assign	get	%t355
	str r4,[fp,#4]                                    	@IRInst:assign	get	%t355
	b .L264                                           
.L266:
	ldr r0,.global_5_buffer                           	@IRInst:assign	r0	buffer
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	i
	bl skip_space                                     
	mov r0,#0                                         	@IRInst:assign	r0	0
	ldr r1,.global_5_buffer                           	@IRInst:assign	r1	buffer
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	i
	bl detect_item                                    
	str r0,[fp,#40]                                   	@IRInst:assign	%t357	r0
	ldr r4,[fp,#40]                                   	@IRInst:assign	res	%t357
	str r4,[fp,#36]                                   	@IRInst:assign	res	%t357
	ldr r0,.global_5_buffer                           	@IRInst:assign	r0	buffer
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	i
	bl skip_space                                     
	ldr r4,[fp,#36]                                   	@IRInst:beq	%t358	res	0
	mov r5,#0                                         	@IRInst:beq	%t358	res	0
	cmp r4,r5                                         	@IRInst:beq	%t358	res	0
	moveq r6,#1                                       	@IRInst:beq	%t358	res	0
	movne r6,#0                                       	@IRInst:beq	%t358	res	0
	str r6,[fp,#44]                                   	@IRInst:beq	%t358	res	0
	beq .L268                                         
	b .L267                                           
.L267:
	mov r0,#111                                       	@IRInst:assign	r0	111
	bl putch                                          
	mov r0,#107                                       	@IRInst:assign	r0	107
	bl putch                                          
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L263                                           
	b .L269                                           
.L268:
	mov r0,#110                                       	@IRInst:assign	r0	110
	bl putch                                          
	mov r0,#111                                       	@IRInst:assign	r0	111
	bl putch                                          
	mov r0,#116                                       	@IRInst:assign	r0	116
	bl putch                                          
	mov r0,#32                                        	@IRInst:assign	r0	32
	bl putch                                          
	mov r0,#111                                       	@IRInst:assign	r0	111
	bl putch                                          
	mov r0,#107                                       	@IRInst:assign	r0	107
	bl putch                                          
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L263                                           
.L269:
.L263:
	ldr r0,[fp]                                       
	add fp,fp,#48                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
