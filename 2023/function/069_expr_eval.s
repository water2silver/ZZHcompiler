.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
TOKEN_NUM:
        .long   0
TOKEN_OTHER:
        .long   1
last_char:
        .long   32
num:
        .long   0
other:
        .long   0
cur_token:
        .long   0
.text
.global_0_TOKEN_NUM:
        .long   TOKEN_NUM
.global_0_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_0_last_char:
        .long   last_char
.global_0_num:
        .long   num
.global_0_other:
        .long   other
.global_0_cur_token:
        .long   cur_token
.global next_char
.type next_char, %function
next_char:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#8                                      
	add fp,sp,#0                                      
	bl getch                                          
	str r0,[fp,#4]                                    	@IRInst:assign	%t7	r0
	ldr r4,[fp,#4]                                    	@IRInst:assign	last_char	%t7
	ldr r9,.global_0_last_char                        	@IRInst:assign	last_char	%t7
	str r4,[r9]                                       	@IRInst:assign	last_char	%t7
	ldr r4,.global_0_last_char                        	@IRInst:assign		last_char
	ldr r4,[r4]                                       	@IRInst:assign		last_char
	str r4,[fp]                                       	@IRInst:assign		last_char
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#8                                      
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_TOKEN_NUM:
        .long   TOKEN_NUM
.global_1_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_1_last_char:
        .long   last_char
.global_1_num:
        .long   num
.global_1_other:
        .long   other
.global_1_cur_token:
        .long   cur_token
.global is_space
.type is_space, %function
is_space:
.L3:
	push {r10,fp}                                     
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	c	r0
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t11	c	32
	mov r5,#32                                        	@IRInst:beq	%t11	c	32
	cmp r4,r5                                         	@IRInst:beq	%t11	c	32
	moveq r6,#1                                       	@IRInst:beq	%t11	c	32
	movne r6,#0                                       	@IRInst:beq	%t11	c	32
	str r6,[fp,#8]                                    	@IRInst:beq	%t11	c	32
	beq .L5                                           
	b .L8                                             
.L8:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t12	c	10
	mov r5,#10                                        	@IRInst:beq	%t12	c	10
	cmp r4,r5                                         	@IRInst:beq	%t12	c	10
	moveq r6,#1                                       	@IRInst:beq	%t12	c	10
	movne r6,#0                                       	@IRInst:beq	%t12	c	10
	str r6,[fp,#12]                                   	@IRInst:beq	%t12	c	10
	beq .L5                                           
	b .L6                                             
.L5:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L4                                             
	b .L7                                             
.L6:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L4                                             
.L7:
.L4:
	ldr r0,[fp]                                       
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_2_TOKEN_NUM:
        .long   TOKEN_NUM
.global_2_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_2_last_char:
        .long   last_char
.global_2_num:
        .long   num
.global_2_other:
        .long   other
.global_2_cur_token:
        .long   cur_token
.global is_num
.type is_num, %function
is_num:
.L9:
	push {r10,fp}                                     
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	c	r0
	ldr r4,[fp,#4]                                    	@IRInst:bge	%t16	c	48
	mov r5,#48                                        	@IRInst:bge	%t16	c	48
	cmp r4,r5                                         	@IRInst:bge	%t16	c	48
	movge r6,#1                                       	@IRInst:bge	%t16	c	48
	movlt r6,#0                                       	@IRInst:bge	%t16	c	48
	str r6,[fp,#8]                                    	@IRInst:bge	%t16	c	48
	bge .L14                                          
	b .L12                                            
.L14:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t17	c	57
	mov r5,#57                                        	@IRInst:ble	%t17	c	57
	cmp r4,r5                                         	@IRInst:ble	%t17	c	57
	movle r6,#1                                       	@IRInst:ble	%t17	c	57
	movgt r6,#0                                       	@IRInst:ble	%t17	c	57
	str r6,[fp,#12]                                   	@IRInst:ble	%t17	c	57
	ble .L11                                          
	b .L12                                            
.L11:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L10                                            
	b .L13                                            
.L12:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L10                                            
.L13:
.L10:
	ldr r0,[fp]                                       
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_3_TOKEN_NUM:
        .long   TOKEN_NUM
.global_3_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_3_last_char:
        .long   last_char
.global_3_num:
        .long   num
.global_3_other:
        .long   other
.global_3_cur_token:
        .long   cur_token
.global next_token
.type next_token, %function
next_token:
.L15:
	push {r10,fp,lr}                                  
	sub sp,sp,#56                                     
	add fp,sp,#0                                      
.L17:
	ldr r0,.global_3_last_char                        	@IRInst:assign	r0	last_char
	ldr r0,[r0]                                       	@IRInst:assign	r0	last_char
	bl is_space                                       
	str r0,[fp,#4]                                    	@IRInst:assign	%t19	r0
	ldr r4,[fp,#4]                                    	@IRInst:not_zero	%t20	%t19	0
	mov r5,#0                                         	@IRInst:not_zero	%t20	%t19	0
	cmp r4,r5                                         	@IRInst:not_zero	%t20	%t19	0
	moveq r6,#0                                       	@IRInst:not_zero	%t20	%t19	0
	movne r6,#1                                       	@IRInst:not_zero	%t20	%t19	0
	str r6,[fp,#8]                                    	@IRInst:not_zero	%t20	%t19	0
	beq .L19                                          
	b .L18                                            
.L18:
	bl next_char                                      
	str r0,[fp,#12]                                   	@IRInst:assign	%t21	r0
	b .L17                                            
.L19:
	ldr r0,.global_3_last_char                        	@IRInst:assign	r0	last_char
	ldr r0,[r0]                                       	@IRInst:assign	r0	last_char
	bl is_num                                         
	str r0,[fp,#16]                                   	@IRInst:assign	%t22	r0
	ldr r4,[fp,#16]                                   	@IRInst:not_zero	%t23	%t22	0
	mov r5,#0                                         	@IRInst:not_zero	%t23	%t22	0
	cmp r4,r5                                         	@IRInst:not_zero	%t23	%t22	0
	moveq r6,#0                                       	@IRInst:not_zero	%t23	%t22	0
	movne r6,#1                                       	@IRInst:not_zero	%t23	%t22	0
	str r6,[fp,#20]                                   	@IRInst:not_zero	%t23	%t22	0
	beq .L21                                          
	b .L20                                            
.L20:
	ldr r4,.global_3_last_char                        	@IRInst:sub	%t24	last_char	48
	ldr r4,[r4]                                       	@IRInst:sub	%t24	last_char	48
	mov r5,#48                                        	@IRInst:sub	%t24	last_char	48
	sub r6,r4,r5                                      	@IRInst:sub	%t24	last_char	48
	str r6,[fp,#24]                                   	@IRInst:sub	%t24	last_char	48
	ldr r4,[fp,#24]                                   	@IRInst:assign	num	%t24
	ldr r9,.global_3_num                              	@IRInst:assign	num	%t24
	str r4,[r9]                                       	@IRInst:assign	num	%t24
.L23:
	bl next_char                                      
	str r0,[fp,#28]                                   	@IRInst:assign	%t25	r0
	ldr r0,[fp,#28]                                   	@IRInst:assign	r0	%t25
	bl is_num                                         
	str r0,[fp,#32]                                   	@IRInst:assign	%t26	r0
	ldr r4,[fp,#32]                                   	@IRInst:not_zero	%t27	%t26	0
	mov r5,#0                                         	@IRInst:not_zero	%t27	%t26	0
	cmp r4,r5                                         	@IRInst:not_zero	%t27	%t26	0
	moveq r6,#0                                       	@IRInst:not_zero	%t27	%t26	0
	movne r6,#1                                       	@IRInst:not_zero	%t27	%t26	0
	str r6,[fp,#36]                                   	@IRInst:not_zero	%t27	%t26	0
	beq .L25                                          
	b .L24                                            
.L24:
	ldr r4,.global_3_num                              	@IRInst:mul	%t28	num	10
	ldr r4,[r4]                                       	@IRInst:mul	%t28	num	10
	mov r5,#10                                        	@IRInst:mul	%t28	num	10
	mul r6,r4,r5                                      	@IRInst:mul	%t28	num	10
	str r6,[fp,#40]                                   	@IRInst:mul	%t28	num	10
	ldr r4,[fp,#40]                                   	@IRInst:add	%t29	%t28	last_char
	ldr r5,.global_3_last_char                        	@IRInst:add	%t29	%t28	last_char
	ldr r5,[r5]                                       	@IRInst:add	%t29	%t28	last_char
	add r6,r4,r5                                      	@IRInst:add	%t29	%t28	last_char
	str r6,[fp,#44]                                   	@IRInst:add	%t29	%t28	last_char
	ldr r4,[fp,#44]                                   	@IRInst:sub	%t30	%t29	48
	mov r5,#48                                        	@IRInst:sub	%t30	%t29	48
	sub r6,r4,r5                                      	@IRInst:sub	%t30	%t29	48
	str r6,[fp,#48]                                   	@IRInst:sub	%t30	%t29	48
	ldr r4,[fp,#48]                                   	@IRInst:assign	num	%t30
	ldr r9,.global_3_num                              	@IRInst:assign	num	%t30
	str r4,[r9]                                       	@IRInst:assign	num	%t30
	b .L23                                            
.L25:
	mov r4,#0                                         	@IRInst:assign	cur_token	TOKEN_NUM
	ldr r9,.global_3_cur_token                        	@IRInst:assign	cur_token	TOKEN_NUM
	str r4,[r9]                                       	@IRInst:assign	cur_token	TOKEN_NUM
	b .L22                                            
.L21:
	ldr r4,.global_3_last_char                        	@IRInst:assign	other	last_char
	ldr r4,[r4]                                       	@IRInst:assign	other	last_char
	ldr r9,.global_3_other                            	@IRInst:assign	other	last_char
	str r4,[r9]                                       	@IRInst:assign	other	last_char
	bl next_char                                      
	str r0,[fp,#52]                                   	@IRInst:assign	%t31	r0
	mov r4,#1                                         	@IRInst:assign	cur_token	TOKEN_OTHER
	ldr r9,.global_3_cur_token                        	@IRInst:assign	cur_token	TOKEN_OTHER
	str r4,[r9]                                       	@IRInst:assign	cur_token	TOKEN_OTHER
.L22:
	ldr r4,.global_3_cur_token                        	@IRInst:assign		cur_token
	ldr r4,[r4]                                       	@IRInst:assign		cur_token
	str r4,[fp]                                       	@IRInst:assign		cur_token
	b .L16                                            
.L16:
	ldr r0,[fp]                                       
	add fp,fp,#56                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_4_TOKEN_NUM:
        .long   TOKEN_NUM
.global_4_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_4_last_char:
        .long   last_char
.global_4_num:
        .long   num
.global_4_other:
        .long   other
.global_4_cur_token:
        .long   cur_token
.global panic
.type panic, %function
panic:
.L26:
	push {r10,fp,lr}                                  
	sub sp,sp,#4                                      
	add fp,sp,#0                                      
	mov r0,#112                                       	@IRInst:assign	r0	112
	bl putch                                          
	mov r0,#97                                        	@IRInst:assign	r0	97
	bl putch                                          
	mov r0,#110                                       	@IRInst:assign	r0	110
	bl putch                                          
	mov r0,#105                                       	@IRInst:assign	r0	105
	bl putch                                          
	mov r0,#99                                        	@IRInst:assign	r0	99
	bl putch                                          
	mov r0,#33                                        	@IRInst:assign	r0	33
	bl putch                                          
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#-1                                        	@IRInst:assign		18446744073709551615
	str r4,[fp]                                       	@IRInst:assign		18446744073709551615
	b .L27                                            
.L27:
	ldr r0,[fp]                                       
	add fp,fp,#4                                      
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_5_TOKEN_NUM:
        .long   TOKEN_NUM
.global_5_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_5_last_char:
        .long   last_char
.global_5_num:
        .long   num
.global_5_other:
        .long   other
.global_5_cur_token:
        .long   cur_token
.global get_op_prec
.type get_op_prec, %function
get_op_prec:
.L28:
	push {r10,fp}                                     
	sub sp,sp,#28                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	op	r0
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t36	op	43
	mov r5,#43                                        	@IRInst:beq	%t36	op	43
	cmp r4,r5                                         	@IRInst:beq	%t36	op	43
	moveq r6,#1                                       	@IRInst:beq	%t36	op	43
	movne r6,#0                                       	@IRInst:beq	%t36	op	43
	str r6,[fp,#8]                                    	@IRInst:beq	%t36	op	43
	beq .L30                                          
	b .L33                                            
.L33:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t37	op	45
	mov r5,#45                                        	@IRInst:beq	%t37	op	45
	cmp r4,r5                                         	@IRInst:beq	%t37	op	45
	moveq r6,#1                                       	@IRInst:beq	%t37	op	45
	movne r6,#0                                       	@IRInst:beq	%t37	op	45
	str r6,[fp,#12]                                   	@IRInst:beq	%t37	op	45
	beq .L30                                          
	b .L31                                            
.L30:
	mov r4,#10                                        	@IRInst:assign		10
	str r4,[fp]                                       	@IRInst:assign		10
	b .L29                                            
.L31:
.L32:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t38	op	42
	mov r5,#42                                        	@IRInst:beq	%t38	op	42
	cmp r4,r5                                         	@IRInst:beq	%t38	op	42
	moveq r6,#1                                       	@IRInst:beq	%t38	op	42
	movne r6,#0                                       	@IRInst:beq	%t38	op	42
	str r6,[fp,#16]                                   	@IRInst:beq	%t38	op	42
	beq .L34                                          
	b .L38                                            
.L38:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t39	op	47
	mov r5,#47                                        	@IRInst:beq	%t39	op	47
	cmp r4,r5                                         	@IRInst:beq	%t39	op	47
	moveq r6,#1                                       	@IRInst:beq	%t39	op	47
	movne r6,#0                                       	@IRInst:beq	%t39	op	47
	str r6,[fp,#20]                                   	@IRInst:beq	%t39	op	47
	beq .L34                                          
	b .L37                                            
.L37:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t40	op	37
	mov r5,#37                                        	@IRInst:beq	%t40	op	37
	cmp r4,r5                                         	@IRInst:beq	%t40	op	37
	moveq r6,#1                                       	@IRInst:beq	%t40	op	37
	movne r6,#0                                       	@IRInst:beq	%t40	op	37
	str r6,[fp,#24]                                   	@IRInst:beq	%t40	op	37
	beq .L34                                          
	b .L35                                            
.L34:
	mov r4,#20                                        	@IRInst:assign		20
	str r4,[fp]                                       	@IRInst:assign		20
	b .L29                                            
.L35:
.L36:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L29                                            
.L29:
	ldr r0,[fp]                                       
	add fp,fp,#28                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_6_TOKEN_NUM:
        .long   TOKEN_NUM
.global_6_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_6_last_char:
        .long   last_char
.global_6_num:
        .long   num
.global_6_other:
        .long   other
.global_6_cur_token:
        .long   cur_token
.global stack_push
.type stack_push, %function
stack_push:
.L39:
	push {r10,fp}                                     
	sub sp,sp,#52                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	s	r0
	str r1,[fp,#4]                                    	@IRInst:assign	v	r1
	mov r4,#0                                         	@IRInst:mul	%t48	0	4
	mov r5,#4                                         	@IRInst:mul	%t48	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t48	0	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t48	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t49	s	%t48
	ldr r5,[fp,#16]                                   	@IRInst:add	%t49	s	%t48
	add r6,r4,r5                                      	@IRInst:add	%t49	s	%t48
	str r6,[fp,#20]                                   	@IRInst:add	%t49	s	%t48
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t50	%t49
	ldr r4,[r4]                                       	@IRInst:assign	%t50	%t49
	str r4,[fp,#24]                                   	@IRInst:assign	%t50	%t49
	ldr r4,[fp,#24]                                   	@IRInst:add	%t51	%t50	1
	mov r5,#1                                         	@IRInst:add	%t51	%t50	1
	add r6,r4,r5                                      	@IRInst:add	%t51	%t50	1
	str r6,[fp,#28]                                   	@IRInst:add	%t51	%t50	1
	mov r4,#0                                         	@IRInst:mul	%t46	0	4
	mov r5,#4                                         	@IRInst:mul	%t46	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	0	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t46	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t47	s	%t46
	ldr r5,[fp,#8]                                    	@IRInst:add	%t47	s	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	s	%t46
	str r6,[fp,#12]                                   	@IRInst:add	%t47	s	%t46
	ldr r5,[fp,#12]                                   	@IRInst:assign	%t47	%t51
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t47	%t51
	str r4,[r5]                                       	@IRInst:assign	%t47	%t51
	mov r4,#0                                         	@IRInst:mul	%t53	0	4
	mov r5,#4                                         	@IRInst:mul	%t53	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t53	0	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t53	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t54	s	%t53
	ldr r5,[fp,#36]                                   	@IRInst:add	%t54	s	%t53
	add r6,r4,r5                                      	@IRInst:add	%t54	s	%t53
	str r6,[fp,#40]                                   	@IRInst:add	%t54	s	%t53
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t55	%t54
	ldr r4,[r4]                                       	@IRInst:assign	%t55	%t54
	str r4,[fp,#44]                                   	@IRInst:assign	%t55	%t54
	ldr r4,[fp,#44]                                   	@IRInst:mul	%t52	%t55	4
	mov r5,#4                                         	@IRInst:mul	%t52	%t55	4
	mul r6,r4,r5                                      	@IRInst:mul	%t52	%t55	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t52	%t55	4
	ldr r4,[fp]                                       	@IRInst:add	%t56	s	%t52
	ldr r5,[fp,#32]                                   	@IRInst:add	%t56	s	%t52
	add r6,r4,r5                                      	@IRInst:add	%t56	s	%t52
	str r6,[fp,#48]                                   	@IRInst:add	%t56	s	%t52
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t56	v
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t56	v
	str r4,[r5]                                       	@IRInst:assign	%t56	v
.L40:
	add fp,fp,#52                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_7_TOKEN_NUM:
        .long   TOKEN_NUM
.global_7_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_7_last_char:
        .long   last_char
.global_7_num:
        .long   num
.global_7_other:
        .long   other
.global_7_cur_token:
        .long   cur_token
.global stack_pop
.type stack_pop, %function
stack_pop:
.L41:
	push {r10,fp}                                     
	sub sp,sp,#60                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	s	r0
	mov r4,#0                                         	@IRInst:mul	%t62	0	4
	mov r5,#4                                         	@IRInst:mul	%t62	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t62	0	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t62	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t63	s	%t62
	ldr r5,[fp,#16]                                   	@IRInst:add	%t63	s	%t62
	add r6,r4,r5                                      	@IRInst:add	%t63	s	%t62
	str r6,[fp,#20]                                   	@IRInst:add	%t63	s	%t62
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t64	%t63
	ldr r4,[r4]                                       	@IRInst:assign	%t64	%t63
	str r4,[fp,#24]                                   	@IRInst:assign	%t64	%t63
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t61	%t64	4
	mov r5,#4                                         	@IRInst:mul	%t61	%t64	4
	mul r6,r4,r5                                      	@IRInst:mul	%t61	%t64	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t61	%t64	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t65	s	%t61
	ldr r5,[fp,#12]                                   	@IRInst:add	%t65	s	%t61
	add r6,r4,r5                                      	@IRInst:add	%t65	s	%t61
	str r6,[fp,#28]                                   	@IRInst:add	%t65	s	%t61
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t66	%t65
	ldr r4,[r4]                                       	@IRInst:assign	%t66	%t65
	str r4,[fp,#32]                                   	@IRInst:assign	%t66	%t65
	ldr r4,[fp,#32]                                   	@IRInst:assign	last	%t66
	str r4,[fp,#8]                                    	@IRInst:assign	last	%t66
	mov r4,#0                                         	@IRInst:mul	%t69	0	4
	mov r5,#4                                         	@IRInst:mul	%t69	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t69	0	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t69	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t70	s	%t69
	ldr r5,[fp,#44]                                   	@IRInst:add	%t70	s	%t69
	add r6,r4,r5                                      	@IRInst:add	%t70	s	%t69
	str r6,[fp,#48]                                   	@IRInst:add	%t70	s	%t69
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t71	%t70
	ldr r4,[r4]                                       	@IRInst:assign	%t71	%t70
	str r4,[fp,#52]                                   	@IRInst:assign	%t71	%t70
	ldr r4,[fp,#52]                                   	@IRInst:sub	%t72	%t71	1
	mov r5,#1                                         	@IRInst:sub	%t72	%t71	1
	sub r6,r4,r5                                      	@IRInst:sub	%t72	%t71	1
	str r6,[fp,#56]                                   	@IRInst:sub	%t72	%t71	1
	mov r4,#0                                         	@IRInst:mul	%t67	0	4
	mov r5,#4                                         	@IRInst:mul	%t67	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t67	0	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t67	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t68	s	%t67
	ldr r5,[fp,#36]                                   	@IRInst:add	%t68	s	%t67
	add r6,r4,r5                                      	@IRInst:add	%t68	s	%t67
	str r6,[fp,#40]                                   	@IRInst:add	%t68	s	%t67
	ldr r5,[fp,#40]                                   	@IRInst:assign	%t68	%t72
	ldr r4,[fp,#56]                                   	@IRInst:assign	%t68	%t72
	str r4,[r5]                                       	@IRInst:assign	%t68	%t72
	ldr r4,[fp,#8]                                    	@IRInst:assign		last
	str r4,[fp]                                       	@IRInst:assign		last
	b .L42                                            
.L42:
	ldr r0,[fp]                                       
	add fp,fp,#60                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_8_TOKEN_NUM:
        .long   TOKEN_NUM
.global_8_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_8_last_char:
        .long   last_char
.global_8_num:
        .long   num
.global_8_other:
        .long   other
.global_8_cur_token:
        .long   cur_token
.global stack_peek
.type stack_peek, %function
stack_peek:
.L43:
	push {r10,fp}                                     
	sub sp,sp,#32                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	s	r0
	mov r4,#0                                         	@IRInst:mul	%t77	0	4
	mov r5,#4                                         	@IRInst:mul	%t77	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t77	0	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t77	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t78	s	%t77
	ldr r5,[fp,#12]                                   	@IRInst:add	%t78	s	%t77
	add r6,r4,r5                                      	@IRInst:add	%t78	s	%t77
	str r6,[fp,#16]                                   	@IRInst:add	%t78	s	%t77
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t79	%t78
	ldr r4,[r4]                                       	@IRInst:assign	%t79	%t78
	str r4,[fp,#20]                                   	@IRInst:assign	%t79	%t78
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t76	%t79	4
	mov r5,#4                                         	@IRInst:mul	%t76	%t79	4
	mul r6,r4,r5                                      	@IRInst:mul	%t76	%t79	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t76	%t79	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t80	s	%t76
	ldr r5,[fp,#8]                                    	@IRInst:add	%t80	s	%t76
	add r6,r4,r5                                      	@IRInst:add	%t80	s	%t76
	str r6,[fp,#24]                                   	@IRInst:add	%t80	s	%t76
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t81	%t80
	ldr r4,[r4]                                       	@IRInst:assign	%t81	%t80
	str r4,[fp,#28]                                   	@IRInst:assign	%t81	%t80
	ldr r4,[fp,#28]                                   	@IRInst:assign		%t81
	str r4,[fp]                                       	@IRInst:assign		%t81
	b .L44                                            
.L44:
	ldr r0,[fp]                                       
	add fp,fp,#32                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_9_TOKEN_NUM:
        .long   TOKEN_NUM
.global_9_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_9_last_char:
        .long   last_char
.global_9_num:
        .long   num
.global_9_other:
        .long   other
.global_9_cur_token:
        .long   cur_token
.global stack_size
.type stack_size, %function
stack_size:
.L45:
	push {r10,fp}                                     
	sub sp,sp,#20                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	s	r0
	mov r4,#0                                         	@IRInst:mul	%t85	0	4
	mov r5,#4                                         	@IRInst:mul	%t85	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t85	0	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t85	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t86	s	%t85
	ldr r5,[fp,#8]                                    	@IRInst:add	%t86	s	%t85
	add r6,r4,r5                                      	@IRInst:add	%t86	s	%t85
	str r6,[fp,#12]                                   	@IRInst:add	%t86	s	%t85
	ldr r4,[fp,#12]                                   	@IRInst:assign	%t87	%t86
	ldr r4,[r4]                                       	@IRInst:assign	%t87	%t86
	str r4,[fp,#16]                                   	@IRInst:assign	%t87	%t86
	ldr r4,[fp,#16]                                   	@IRInst:assign		%t87
	str r4,[fp]                                       	@IRInst:assign		%t87
	b .L46                                            
.L46:
	ldr r0,[fp]                                       
	add fp,fp,#20                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_10_TOKEN_NUM:
        .long   TOKEN_NUM
.global_10_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_10_last_char:
        .long   last_char
.global_10_num:
        .long   num
.global_10_other:
        .long   other
.global_10_cur_token:
        .long   cur_token
.global eval_op
.type eval_op, %function
eval_op:
.L47:
	push {r10,fp}                                     
	sub sp,sp,#64                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	op	r0
	str r1,[fp,#8]                                    	@IRInst:assign	lhs	r1
	str r2,[fp,#12]                                   	@IRInst:assign	rhs	r2
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t95	op	43
	mov r5,#43                                        	@IRInst:beq	%t95	op	43
	cmp r4,r5                                         	@IRInst:beq	%t95	op	43
	moveq r6,#1                                       	@IRInst:beq	%t95	op	43
	movne r6,#0                                       	@IRInst:beq	%t95	op	43
	str r6,[fp,#16]                                   	@IRInst:beq	%t95	op	43
	beq .L49                                          
	b .L50                                            
.L49:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t96	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:add	%t96	lhs	rhs
	add r6,r4,r5                                      	@IRInst:add	%t96	lhs	rhs
	str r6,[fp,#20]                                   	@IRInst:add	%t96	lhs	rhs
	ldr r4,[fp,#20]                                   	@IRInst:assign		%t96
	str r4,[fp]                                       	@IRInst:assign		%t96
	b .L48                                            
.L50:
.L51:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t97	op	45
	mov r5,#45                                        	@IRInst:beq	%t97	op	45
	cmp r4,r5                                         	@IRInst:beq	%t97	op	45
	moveq r6,#1                                       	@IRInst:beq	%t97	op	45
	movne r6,#0                                       	@IRInst:beq	%t97	op	45
	str r6,[fp,#24]                                   	@IRInst:beq	%t97	op	45
	beq .L52                                          
	b .L53                                            
.L52:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t98	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:sub	%t98	lhs	rhs
	sub r6,r4,r5                                      	@IRInst:sub	%t98	lhs	rhs
	str r6,[fp,#28]                                   	@IRInst:sub	%t98	lhs	rhs
	ldr r4,[fp,#28]                                   	@IRInst:assign		%t98
	str r4,[fp]                                       	@IRInst:assign		%t98
	b .L48                                            
.L53:
.L54:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t99	op	42
	mov r5,#42                                        	@IRInst:beq	%t99	op	42
	cmp r4,r5                                         	@IRInst:beq	%t99	op	42
	moveq r6,#1                                       	@IRInst:beq	%t99	op	42
	movne r6,#0                                       	@IRInst:beq	%t99	op	42
	str r6,[fp,#32]                                   	@IRInst:beq	%t99	op	42
	beq .L55                                          
	b .L56                                            
.L55:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t100	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:mul	%t100	lhs	rhs
	mul r6,r4,r5                                      	@IRInst:mul	%t100	lhs	rhs
	str r6,[fp,#36]                                   	@IRInst:mul	%t100	lhs	rhs
	ldr r4,[fp,#36]                                   	@IRInst:assign		%t100
	str r4,[fp]                                       	@IRInst:assign		%t100
	b .L48                                            
.L56:
.L57:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t101	op	47
	mov r5,#47                                        	@IRInst:beq	%t101	op	47
	cmp r4,r5                                         	@IRInst:beq	%t101	op	47
	moveq r6,#1                                       	@IRInst:beq	%t101	op	47
	movne r6,#0                                       	@IRInst:beq	%t101	op	47
	str r6,[fp,#40]                                   	@IRInst:beq	%t101	op	47
	beq .L58                                          
	b .L59                                            
.L58:
	ldr r4,[fp,#8]                                    	@IRInst:sdiv	%t102	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:sdiv	%t102	lhs	rhs
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t102	lhs	rhs
	str r6,[fp,#44]                                   	@IRInst:sdiv	%t102	lhs	rhs
	ldr r4,[fp,#44]                                   	@IRInst:assign		%t102
	str r4,[fp]                                       	@IRInst:assign		%t102
	b .L48                                            
.L59:
.L60:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t103	op	37
	mov r5,#37                                        	@IRInst:beq	%t103	op	37
	cmp r4,r5                                         	@IRInst:beq	%t103	op	37
	moveq r6,#1                                       	@IRInst:beq	%t103	op	37
	movne r6,#0                                       	@IRInst:beq	%t103	op	37
	str r6,[fp,#48]                                   	@IRInst:beq	%t103	op	37
	beq .L61                                          
	b .L62                                            
.L61:
	ldr r4,[fp,#8]                                    	@IRInst:sdiv	%t105	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:sdiv	%t105	lhs	rhs
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t105	lhs	rhs
	str r6,[fp,#56]                                   	@IRInst:sdiv	%t105	lhs	rhs
	ldr r4,[fp,#56]                                   	@IRInst:mul	%t106	%t105	rhs
	ldr r5,[fp,#12]                                   	@IRInst:mul	%t106	%t105	rhs
	mul r6,r4,r5                                      	@IRInst:mul	%t106	%t105	rhs
	str r6,[fp,#60]                                   	@IRInst:mul	%t106	%t105	rhs
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t104	lhs	%t106
	ldr r5,[fp,#60]                                   	@IRInst:sub	%t104	lhs	%t106
	sub r6,r4,r5                                      	@IRInst:sub	%t104	lhs	%t106
	str r6,[fp,#52]                                   	@IRInst:sub	%t104	lhs	%t106
	ldr r4,[fp,#52]                                   	@IRInst:assign		%t104
	str r4,[fp]                                       	@IRInst:assign		%t104
	b .L48                                            
.L62:
.L63:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L48                                            
.L48:
	ldr r0,[fp]                                       
	add fp,fp,#64                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_11_TOKEN_NUM:
        .long   TOKEN_NUM
.global_11_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_11_last_char:
        .long   last_char
.global_11_num:
        .long   num
.global_11_other:
        .long   other
.global_11_cur_token:
        .long   cur_token
.global eval
.type eval, %function
eval:
.L64:
	push {r10,fp,lr}                                  
	sub sp,sp,#2192                                   
	add fp,sp,#0                                      
	ldr r4,.global_11_cur_token                       	@IRInst:beq	%t110	cur_token	TOKEN_NUM
	ldr r4,[r4]                                       	@IRInst:beq	%t110	cur_token	TOKEN_NUM
	mov r5,#0                                         	@IRInst:beq	%t110	cur_token	TOKEN_NUM
	cmp r4,r5                                         	@IRInst:beq	%t110	cur_token	TOKEN_NUM
	moveq r6,#1                                       	@IRInst:beq	%t110	cur_token	TOKEN_NUM
	movne r6,#0                                       	@IRInst:beq	%t110	cur_token	TOKEN_NUM
	str r6,[fp,#2052]                                 	@IRInst:beq	%t110	cur_token	TOKEN_NUM
	beq .L67                                          
	b .L66                                            
.L66:
	bl panic                                          
	str r0,[fp,#2056]                                 	@IRInst:assign	%t111	r0
	ldr r4,[fp,#2056]                                 	@IRInst:assign		%t111
	str r4,[fp]                                       	@IRInst:assign		%t111
	b .L65                                            
.L67:
.L68:
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	ldr r1,.global_11_num                             	@IRInst:assign	r1	num
	ldr r1,[r1]                                       	@IRInst:assign	r1	num
	bl stack_push                                     
	bl next_token                                     
	str r0,[fp,#2060]                                 	@IRInst:assign	%t112	r0
.L69:
	ldr r4,.global_11_cur_token                       	@IRInst:beq	%t113	cur_token	TOKEN_OTHER
	ldr r4,[r4]                                       	@IRInst:beq	%t113	cur_token	TOKEN_OTHER
	mov r5,#1                                         	@IRInst:beq	%t113	cur_token	TOKEN_OTHER
	cmp r4,r5                                         	@IRInst:beq	%t113	cur_token	TOKEN_OTHER
	moveq r6,#1                                       	@IRInst:beq	%t113	cur_token	TOKEN_OTHER
	movne r6,#0                                       	@IRInst:beq	%t113	cur_token	TOKEN_OTHER
	str r6,[fp,#2064]                                 	@IRInst:beq	%t113	cur_token	TOKEN_OTHER
	beq .L70                                          
	b .L71                                            
.L70:
	ldr r4,.global_11_other                           	@IRInst:assign	op	other
	ldr r4,[r4]                                       	@IRInst:assign	op	other
	str r4,[fp,#2068]                                 	@IRInst:assign	op	other
	ldr r0,[fp,#2068]                                 	@IRInst:assign	r0	op
	bl get_op_prec                                    
	str r0,[fp,#2072]                                 	@IRInst:assign	%t115	r0
	ldr r4,[fp,#2072]                                 	@IRInst:not_zero	%t116	%t115	0
	mov r5,#0                                         	@IRInst:not_zero	%t116	%t115	0
	cmp r4,r5                                         	@IRInst:not_zero	%t116	%t115	0
	moveq r6,#0                                       	@IRInst:not_zero	%t116	%t115	0
	movne r6,#1                                       	@IRInst:not_zero	%t116	%t115	0
	str r6,[fp,#2076]                                 	@IRInst:not_zero	%t116	%t115	0
	beq .L72                                          
	b .L73                                            
.L72:
	b .L71                                            
.L73:
.L74:
	bl next_token                                     
	str r0,[fp,#2080]                                 	@IRInst:assign	%t117	r0
.L75:
	ldr r0,=1028                                      	@IRInst:assign	r0	ops
.ltorg	@IRInst:assign	r0	ops
	add r0,fp,r0                                      	@IRInst:assign	r0	ops
	bl stack_size                                     
	str r0,[fp,#2084]                                 	@IRInst:assign	%t118	r0
	ldr r4,[fp,#2084]                                 	@IRInst:not_zero	%t119	%t118	0
	mov r5,#0                                         	@IRInst:not_zero	%t119	%t118	0
	cmp r4,r5                                         	@IRInst:not_zero	%t119	%t118	0
	moveq r6,#0                                       	@IRInst:not_zero	%t119	%t118	0
	movne r6,#1                                       	@IRInst:not_zero	%t119	%t118	0
	str r6,[fp,#2088]                                 	@IRInst:not_zero	%t119	%t118	0
	beq .L77                                          
	b .L78                                            
.L78:
	ldr r0,=1028                                      	@IRInst:assign	r0	ops
.ltorg	@IRInst:assign	r0	ops
	add r0,fp,r0                                      	@IRInst:assign	r0	ops
	bl stack_peek                                     
	str r0,[fp,#2092]                                 	@IRInst:assign	%t120	r0
	ldr r0,[fp,#2092]                                 	@IRInst:assign	r0	%t120
	bl get_op_prec                                    
	str r0,[fp,#2096]                                 	@IRInst:assign	%t121	r0
	ldr r0,[fp,#2068]                                 	@IRInst:assign	r0	op
	bl get_op_prec                                    
	str r0,[fp,#2100]                                 	@IRInst:assign	%t122	r0
	ldr r4,[fp,#2096]                                 	@IRInst:bge	%t123	%t121	%t122
	ldr r5,[fp,#2100]                                 	@IRInst:bge	%t123	%t121	%t122
	cmp r4,r5                                         	@IRInst:bge	%t123	%t121	%t122
	movge r6,#1                                       	@IRInst:bge	%t123	%t121	%t122
	movlt r6,#0                                       	@IRInst:bge	%t123	%t121	%t122
	str r6,[fp,#2104]                                 	@IRInst:bge	%t123	%t121	%t122
	bge .L76                                          
	b .L77                                            
.L76:
	ldr r0,=1028                                      	@IRInst:assign	r0	ops
.ltorg	@IRInst:assign	r0	ops
	add r0,fp,r0                                      	@IRInst:assign	r0	ops
	bl stack_pop                                      
	str r0,[fp,#2112]                                 	@IRInst:assign	%t125	r0
	ldr r4,[fp,#2112]                                 	@IRInst:assign	cur_op	%t125
	str r4,[fp,#2108]                                 	@IRInst:assign	cur_op	%t125
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_pop                                      
	str r0,[fp,#2120]                                 	@IRInst:assign	%t127	r0
	ldr r4,[fp,#2120]                                 	@IRInst:assign	rhs	%t127
	str r4,[fp,#2116]                                 	@IRInst:assign	rhs	%t127
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_pop                                      
	str r0,[fp,#2128]                                 	@IRInst:assign	%t129	r0
	ldr r4,[fp,#2128]                                 	@IRInst:assign	lhs	%t129
	str r4,[fp,#2124]                                 	@IRInst:assign	lhs	%t129
	ldr r0,[fp,#2108]                                 	@IRInst:assign	r0	cur_op
	ldr r1,[fp,#2124]                                 	@IRInst:assign	r1	lhs
	ldr r2,[fp,#2116]                                 	@IRInst:assign	r2	rhs
	bl eval_op                                        
	str r0,[fp,#2132]                                 	@IRInst:assign	%t130	r0
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	ldr r1,[fp,#2132]                                 	@IRInst:assign	r1	%t130
	bl stack_push                                     
	b .L75                                            
.L77:
	ldr r0,=1028                                      	@IRInst:assign	r0	ops
.ltorg	@IRInst:assign	r0	ops
	add r0,fp,r0                                      	@IRInst:assign	r0	ops
	ldr r1,[fp,#2068]                                 	@IRInst:assign	r1	op
	bl stack_push                                     
	ldr r4,.global_11_cur_token                       	@IRInst:beq	%t131	cur_token	TOKEN_NUM
	ldr r4,[r4]                                       	@IRInst:beq	%t131	cur_token	TOKEN_NUM
	mov r5,#0                                         	@IRInst:beq	%t131	cur_token	TOKEN_NUM
	cmp r4,r5                                         	@IRInst:beq	%t131	cur_token	TOKEN_NUM
	moveq r6,#1                                       	@IRInst:beq	%t131	cur_token	TOKEN_NUM
	movne r6,#0                                       	@IRInst:beq	%t131	cur_token	TOKEN_NUM
	str r6,[fp,#2136]                                 	@IRInst:beq	%t131	cur_token	TOKEN_NUM
	beq .L80                                          
	b .L79                                            
.L79:
	bl panic                                          
	str r0,[fp,#2140]                                 	@IRInst:assign	%t132	r0
	ldr r4,[fp,#2140]                                 	@IRInst:assign		%t132
	str r4,[fp]                                       	@IRInst:assign		%t132
	b .L65                                            
.L80:
.L81:
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	ldr r1,.global_11_num                             	@IRInst:assign	r1	num
	ldr r1,[r1]                                       	@IRInst:assign	r1	num
	bl stack_push                                     
	bl next_token                                     
	str r0,[fp,#2144]                                 	@IRInst:assign	%t133	r0
	b .L69                                            
.L71:
	bl next_token                                     
	str r0,[fp,#2148]                                 	@IRInst:assign	%t134	r0
.L82:
	ldr r0,=1028                                      	@IRInst:assign	r0	ops
.ltorg	@IRInst:assign	r0	ops
	add r0,fp,r0                                      	@IRInst:assign	r0	ops
	bl stack_size                                     
	str r0,[fp,#2152]                                 	@IRInst:assign	%t135	r0
	ldr r4,[fp,#2152]                                 	@IRInst:not_zero	%t136	%t135	0
	mov r5,#0                                         	@IRInst:not_zero	%t136	%t135	0
	cmp r4,r5                                         	@IRInst:not_zero	%t136	%t135	0
	moveq r6,#0                                       	@IRInst:not_zero	%t136	%t135	0
	movne r6,#1                                       	@IRInst:not_zero	%t136	%t135	0
	str r6,[fp,#2156]                                 	@IRInst:not_zero	%t136	%t135	0
	beq .L84                                          
	b .L83                                            
.L83:
	ldr r0,=1028                                      	@IRInst:assign	r0	ops
.ltorg	@IRInst:assign	r0	ops
	add r0,fp,r0                                      	@IRInst:assign	r0	ops
	bl stack_pop                                      
	str r0,[fp,#2164]                                 	@IRInst:assign	%t138	r0
	ldr r4,[fp,#2164]                                 	@IRInst:assign	cur_op	%t138
	str r4,[fp,#2160]                                 	@IRInst:assign	cur_op	%t138
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_pop                                      
	str r0,[fp,#2172]                                 	@IRInst:assign	%t140	r0
	ldr r4,[fp,#2172]                                 	@IRInst:assign	rhs	%t140
	str r4,[fp,#2168]                                 	@IRInst:assign	rhs	%t140
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_pop                                      
	str r0,[fp,#2180]                                 	@IRInst:assign	%t142	r0
	ldr r4,[fp,#2180]                                 	@IRInst:assign	lhs	%t142
	str r4,[fp,#2176]                                 	@IRInst:assign	lhs	%t142
	ldr r0,[fp,#2160]                                 	@IRInst:assign	r0	cur_op
	ldr r1,[fp,#2176]                                 	@IRInst:assign	r1	lhs
	ldr r2,[fp,#2168]                                 	@IRInst:assign	r2	rhs
	bl eval_op                                        
	str r0,[fp,#2184]                                 	@IRInst:assign	%t143	r0
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	ldr r1,[fp,#2184]                                 	@IRInst:assign	r1	%t143
	bl stack_push                                     
	b .L82                                            
.L84:
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_peek                                     
	str r0,[fp,#2188]                                 	@IRInst:assign	%t144	r0
	ldr r4,[fp,#2188]                                 	@IRInst:assign		%t144
	str r4,[fp]                                       	@IRInst:assign		%t144
	b .L65                                            
.L65:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#144                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_12_TOKEN_NUM:
        .long   TOKEN_NUM
.global_12_TOKEN_OTHER:
        .long   TOKEN_OTHER
.global_12_last_char:
        .long   last_char
.global_12_num:
        .long   num
.global_12_other:
        .long   other
.global_12_cur_token:
        .long   cur_token
.global main
.type main, %function
main:
.L85:
	push {r10,fp,lr}                                  
	sub sp,sp,#36                                     
	add fp,sp,#0                                      
	bl getint                                         
	str r0,[fp,#8]                                    	@IRInst:assign	%t147	r0
	ldr r4,[fp,#8]                                    	@IRInst:assign	count	%t147
	str r4,[fp,#4]                                    	@IRInst:assign	count	%t147
	bl getch                                          
	str r0,[fp,#12]                                   	@IRInst:assign	%t148	r0
	bl next_token                                     
	str r0,[fp,#16]                                   	@IRInst:assign	%t149	r0
.L87:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t150	count
	str r4,[fp,#20]                                   	@IRInst:assign	%t150	count
	ldr r4,[fp,#20]                                   	@IRInst:not_zero	%t151	%t150	0
	mov r5,#0                                         	@IRInst:not_zero	%t151	%t150	0
	cmp r4,r5                                         	@IRInst:not_zero	%t151	%t150	0
	moveq r6,#0                                       	@IRInst:not_zero	%t151	%t150	0
	movne r6,#1                                       	@IRInst:not_zero	%t151	%t150	0
	str r6,[fp,#24]                                   	@IRInst:not_zero	%t151	%t150	0
	beq .L89                                          
	b .L88                                            
.L88:
	bl eval                                           
	str r0,[fp,#28]                                   	@IRInst:assign	%t152	r0
	ldr r0,[fp,#28]                                   	@IRInst:assign	r0	%t152
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t153	count	1
	mov r5,#1                                         	@IRInst:sub	%t153	count	1
	sub r6,r4,r5                                      	@IRInst:sub	%t153	count	1
	str r6,[fp,#32]                                   	@IRInst:sub	%t153	count	1
	ldr r4,[fp,#32]                                   	@IRInst:assign	count	%t153
	str r4,[fp,#4]                                    	@IRInst:assign	count	%t153
	b .L87                                            
.L89:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L86                                            
.L86:
	ldr r0,[fp]                                       
	add fp,fp,#36                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
