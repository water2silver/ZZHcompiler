.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
last_char:
        .long   32
num:
        .long   0
other:
        .long   0
cur_token:
        .long   0
.text
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
	str r0,[fp,#4]                                    	@IRInst:assign	%t5	r0
	ldr r4,[fp,#4]                                    	@IRInst:assign	last_char	%t5
	ldr r9,.global_0_last_char                        	@IRInst:assign	last_char	%t5
	str r4,[r9]                                       	@IRInst:assign	last_char	%t5
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
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t9	c	32
	mov r5,#32                                        	@IRInst:beq	%t9	c	32
	cmp r4,r5                                         	@IRInst:beq	%t9	c	32
	beq .L5                                           
	b .L8                                             
.L8:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t10	c	10
	mov r5,#10                                        	@IRInst:beq	%t10	c	10
	cmp r4,r5                                         	@IRInst:beq	%t10	c	10
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
	ldr r4,[fp,#4]                                    	@IRInst:bge	%t14	c	48
	mov r5,#48                                        	@IRInst:bge	%t14	c	48
	cmp r4,r5                                         	@IRInst:bge	%t14	c	48
	bge .L14                                          
	b .L12                                            
.L14:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t15	c	57
	mov r5,#57                                        	@IRInst:ble	%t15	c	57
	cmp r4,r5                                         	@IRInst:ble	%t15	c	57
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
	sub sp,sp,#52                                     
	add fp,sp,#0                                      
.L17:
	ldr r0,.global_3_last_char                        	@IRInst:assign	r0	last_char
	ldr r0,[r0]                                       	@IRInst:assign	r0	last_char
	bl is_space                                       
	str r0,[fp,#4]                                    	@IRInst:assign	%t17	r0
.L18:
	bl next_char                                      
	str r0,[fp,#8]                                    	@IRInst:assign	%t18	r0
	b .L17                                            
.L19:
	ldr r0,.global_3_last_char                        	@IRInst:assign	r0	last_char
	ldr r0,[r0]                                       	@IRInst:assign	r0	last_char
	bl is_num                                         
	str r0,[fp,#12]                                   	@IRInst:assign	%t19	r0
.L20:
	ldr r4,.global_3_last_char                        	@IRInst:sub	%t20	last_char	48
	ldr r4,[r4]                                       	@IRInst:sub	%t20	last_char	48
	mov r5,#48                                        	@IRInst:sub	%t20	last_char	48
	sub r6,r4,r5                                      	@IRInst:sub	%t20	last_char	48
	str r6,[fp,#16]                                   	@IRInst:sub	%t20	last_char	48
	ldr r4,[fp,#16]                                   	@IRInst:assign	num	%t20
	ldr r9,.global_3_num                              	@IRInst:assign	num	%t20
	str r4,[r9]                                       	@IRInst:assign	num	%t20
.L23:
	bl next_char                                      
	str r0,[fp,#20]                                   	@IRInst:assign	%t21	r0
	ldr r0,[fp,#20]                                   	@IRInst:assign	r0	%t21
	bl is_num                                         
	str r0,[fp,#24]                                   	@IRInst:assign	%t22	r0
.L24:
	ldr r4,.global_3_num                              	@IRInst:mul	%t23	num	10
	ldr r4,[r4]                                       	@IRInst:mul	%t23	num	10
	mov r5,#10                                        	@IRInst:mul	%t23	num	10
	mul r6,r4,r5                                      	@IRInst:mul	%t23	num	10
	str r6,[fp,#28]                                   	@IRInst:mul	%t23	num	10
	ldr r4,[fp,#28]                                   	@IRInst:add	%t24	%t23	last_char
	ldr r5,.global_3_last_char                        	@IRInst:add	%t24	%t23	last_char
	ldr r5,[r5]                                       	@IRInst:add	%t24	%t23	last_char
	add r6,r4,r5                                      	@IRInst:add	%t24	%t23	last_char
	str r6,[fp,#32]                                   	@IRInst:add	%t24	%t23	last_char
	ldr r4,[fp,#32]                                   	@IRInst:sub	%t25	%t24	48
	mov r5,#48                                        	@IRInst:sub	%t25	%t24	48
	sub r6,r4,r5                                      	@IRInst:sub	%t25	%t24	48
	str r6,[fp,#36]                                   	@IRInst:sub	%t25	%t24	48
	ldr r4,[fp,#36]                                   	@IRInst:assign	num	%t25
	ldr r9,.global_3_num                              	@IRInst:assign	num	%t25
	str r4,[r9]                                       	@IRInst:assign	num	%t25
	b .L23                                            
.L25:
	ldr r4,[fp,#40]                                   	@IRInst:assign	cur_token	TOKEN_NUM
	ldr r9,.global_3_cur_token                        	@IRInst:assign	cur_token	TOKEN_NUM
	str r4,[r9]                                       	@IRInst:assign	cur_token	TOKEN_NUM
	b .L22                                            
.L21:
	ldr r4,.global_3_last_char                        	@IRInst:assign	other	last_char
	ldr r4,[r4]                                       	@IRInst:assign	other	last_char
	ldr r9,.global_3_other                            	@IRInst:assign	other	last_char
	str r4,[r9]                                       	@IRInst:assign	other	last_char
	bl next_char                                      
	str r0,[fp,#44]                                   	@IRInst:assign	%t27	r0
	ldr r4,[fp,#48]                                   	@IRInst:assign	cur_token	TOKEN_OTHER
	ldr r9,.global_3_cur_token                        	@IRInst:assign	cur_token	TOKEN_OTHER
	str r4,[r9]                                       	@IRInst:assign	cur_token	TOKEN_OTHER
.L22:
	ldr r4,.global_3_cur_token                        	@IRInst:assign		cur_token
	ldr r4,[r4]                                       	@IRInst:assign		cur_token
	str r4,[fp]                                       	@IRInst:assign		cur_token
	b .L16                                            
.L16:
	ldr r0,[fp]                                       
	add fp,fp,#52                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
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
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t33	op	43
	mov r5,#43                                        	@IRInst:beq	%t33	op	43
	cmp r4,r5                                         	@IRInst:beq	%t33	op	43
	beq .L30                                          
	b .L33                                            
.L33:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t34	op	45
	mov r5,#45                                        	@IRInst:beq	%t34	op	45
	cmp r4,r5                                         	@IRInst:beq	%t34	op	45
	beq .L30                                          
	b .L31                                            
.L30:
	mov r4,#10                                        	@IRInst:assign		10
	str r4,[fp]                                       	@IRInst:assign		10
	b .L29                                            
.L31:
.L32:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t35	op	42
	mov r5,#42                                        	@IRInst:beq	%t35	op	42
	cmp r4,r5                                         	@IRInst:beq	%t35	op	42
	beq .L34                                          
	b .L38                                            
.L38:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t36	op	47
	mov r5,#47                                        	@IRInst:beq	%t36	op	47
	cmp r4,r5                                         	@IRInst:beq	%t36	op	47
	beq .L34                                          
	b .L37                                            
.L37:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t37	op	37
	mov r5,#37                                        	@IRInst:beq	%t37	op	37
	cmp r4,r5                                         	@IRInst:beq	%t37	op	37
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
	mov r4,#0                                         	@IRInst:mul	%t45	0	4
	mov r5,#4                                         	@IRInst:mul	%t45	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t45	0	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t45	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t46	s	%t45
	ldr r5,[fp,#16]                                   	@IRInst:add	%t46	s	%t45
	add r6,r4,r5                                      	@IRInst:add	%t46	s	%t45
	str r6,[fp,#20]                                   	@IRInst:add	%t46	s	%t45
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t47	%t46
	ldr r4,[r4]                                       	@IRInst:assign	%t47	%t46
	str r4,[fp,#24]                                   	@IRInst:assign	%t47	%t46
	ldr r4,[fp,#24]                                   	@IRInst:add	%t48	%t47	1
	mov r5,#1                                         	@IRInst:add	%t48	%t47	1
	add r6,r4,r5                                      	@IRInst:add	%t48	%t47	1
	str r6,[fp,#28]                                   	@IRInst:add	%t48	%t47	1
	mov r4,#0                                         	@IRInst:mul	%t43	0	4
	mov r5,#4                                         	@IRInst:mul	%t43	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t43	0	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t43	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t44	s	%t43
	ldr r5,[fp,#8]                                    	@IRInst:add	%t44	s	%t43
	add r6,r4,r5                                      	@IRInst:add	%t44	s	%t43
	str r6,[fp,#12]                                   	@IRInst:add	%t44	s	%t43
	ldr r5,[fp,#12]                                   	@IRInst:assign	%t44	%t48
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t44	%t48
	str r4,[r5]                                       	@IRInst:assign	%t44	%t48
	mov r4,#0                                         	@IRInst:mul	%t50	0	4
	mov r5,#4                                         	@IRInst:mul	%t50	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t50	0	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t50	0	4
	ldr r4,[fp]                                       	@IRInst:add	%t51	s	%t50
	ldr r5,[fp,#36]                                   	@IRInst:add	%t51	s	%t50
	add r6,r4,r5                                      	@IRInst:add	%t51	s	%t50
	str r6,[fp,#40]                                   	@IRInst:add	%t51	s	%t50
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t52	%t51
	ldr r4,[r4]                                       	@IRInst:assign	%t52	%t51
	str r4,[fp,#44]                                   	@IRInst:assign	%t52	%t51
	ldr r4,[fp,#44]                                   	@IRInst:mul	%t49	%t52	4
	mov r5,#4                                         	@IRInst:mul	%t49	%t52	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t52	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t49	%t52	4
	ldr r4,[fp]                                       	@IRInst:add	%t53	s	%t49
	ldr r5,[fp,#32]                                   	@IRInst:add	%t53	s	%t49
	add r6,r4,r5                                      	@IRInst:add	%t53	s	%t49
	str r6,[fp,#48]                                   	@IRInst:add	%t53	s	%t49
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t53	v
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t53	v
	str r4,[r5]                                       	@IRInst:assign	%t53	v
.L40:
	add fp,fp,#52                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
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
	mov r4,#0                                         	@IRInst:mul	%t59	0	4
	mov r5,#4                                         	@IRInst:mul	%t59	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t59	0	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t59	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t60	s	%t59
	ldr r5,[fp,#16]                                   	@IRInst:add	%t60	s	%t59
	add r6,r4,r5                                      	@IRInst:add	%t60	s	%t59
	str r6,[fp,#20]                                   	@IRInst:add	%t60	s	%t59
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t61	%t60
	ldr r4,[r4]                                       	@IRInst:assign	%t61	%t60
	str r4,[fp,#24]                                   	@IRInst:assign	%t61	%t60
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t58	%t61	4
	mov r5,#4                                         	@IRInst:mul	%t58	%t61	4
	mul r6,r4,r5                                      	@IRInst:mul	%t58	%t61	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t58	%t61	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t62	s	%t58
	ldr r5,[fp,#12]                                   	@IRInst:add	%t62	s	%t58
	add r6,r4,r5                                      	@IRInst:add	%t62	s	%t58
	str r6,[fp,#28]                                   	@IRInst:add	%t62	s	%t58
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t63	%t62
	ldr r4,[r4]                                       	@IRInst:assign	%t63	%t62
	str r4,[fp,#32]                                   	@IRInst:assign	%t63	%t62
	ldr r4,[fp,#32]                                   
	str r4,[fp,#8]                                    
	mov r4,#0                                         	@IRInst:mul	%t66	0	4
	mov r5,#4                                         	@IRInst:mul	%t66	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t66	0	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t66	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t67	s	%t66
	ldr r5,[fp,#44]                                   	@IRInst:add	%t67	s	%t66
	add r6,r4,r5                                      	@IRInst:add	%t67	s	%t66
	str r6,[fp,#48]                                   	@IRInst:add	%t67	s	%t66
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t68	%t67
	ldr r4,[r4]                                       	@IRInst:assign	%t68	%t67
	str r4,[fp,#52]                                   	@IRInst:assign	%t68	%t67
	ldr r4,[fp,#52]                                   	@IRInst:sub	%t69	%t68	1
	mov r5,#1                                         	@IRInst:sub	%t69	%t68	1
	sub r6,r4,r5                                      	@IRInst:sub	%t69	%t68	1
	str r6,[fp,#56]                                   	@IRInst:sub	%t69	%t68	1
	mov r4,#0                                         	@IRInst:mul	%t64	0	4
	mov r5,#4                                         	@IRInst:mul	%t64	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t64	0	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t64	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t65	s	%t64
	ldr r5,[fp,#36]                                   	@IRInst:add	%t65	s	%t64
	add r6,r4,r5                                      	@IRInst:add	%t65	s	%t64
	str r6,[fp,#40]                                   	@IRInst:add	%t65	s	%t64
	ldr r5,[fp,#40]                                   	@IRInst:assign	%t65	%t69
	ldr r4,[fp,#56]                                   	@IRInst:assign	%t65	%t69
	str r4,[r5]                                       	@IRInst:assign	%t65	%t69
	ldr r4,[fp,#8]                                    	@IRInst:assign		last
	str r4,[fp]                                       	@IRInst:assign		last
	b .L42                                            
.L42:
	ldr r0,[fp]                                       
	add fp,fp,#60                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
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
	mov r4,#0                                         	@IRInst:mul	%t74	0	4
	mov r5,#4                                         	@IRInst:mul	%t74	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t74	0	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t74	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t75	s	%t74
	ldr r5,[fp,#12]                                   	@IRInst:add	%t75	s	%t74
	add r6,r4,r5                                      	@IRInst:add	%t75	s	%t74
	str r6,[fp,#16]                                   	@IRInst:add	%t75	s	%t74
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t76	%t75
	ldr r4,[r4]                                       	@IRInst:assign	%t76	%t75
	str r4,[fp,#20]                                   	@IRInst:assign	%t76	%t75
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t73	%t76	4
	mov r5,#4                                         	@IRInst:mul	%t73	%t76	4
	mul r6,r4,r5                                      	@IRInst:mul	%t73	%t76	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t73	%t76	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t77	s	%t73
	ldr r5,[fp,#8]                                    	@IRInst:add	%t77	s	%t73
	add r6,r4,r5                                      	@IRInst:add	%t77	s	%t73
	str r6,[fp,#24]                                   	@IRInst:add	%t77	s	%t73
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t78	%t77
	ldr r4,[r4]                                       	@IRInst:assign	%t78	%t77
	str r4,[fp,#28]                                   	@IRInst:assign	%t78	%t77
	ldr r4,[fp,#28]                                   	@IRInst:assign		%t78
	str r4,[fp]                                       	@IRInst:assign		%t78
	b .L44                                            
.L44:
	ldr r0,[fp]                                       
	add fp,fp,#32                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
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
	mov r4,#0                                         	@IRInst:mul	%t82	0	4
	mov r5,#4                                         	@IRInst:mul	%t82	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t82	0	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t82	0	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t83	s	%t82
	ldr r5,[fp,#8]                                    	@IRInst:add	%t83	s	%t82
	add r6,r4,r5                                      	@IRInst:add	%t83	s	%t82
	str r6,[fp,#12]                                   	@IRInst:add	%t83	s	%t82
	ldr r4,[fp,#12]                                   	@IRInst:assign	%t84	%t83
	ldr r4,[r4]                                       	@IRInst:assign	%t84	%t83
	str r4,[fp,#16]                                   	@IRInst:assign	%t84	%t83
	ldr r4,[fp,#16]                                   	@IRInst:assign		%t84
	str r4,[fp]                                       	@IRInst:assign		%t84
	b .L46                                            
.L46:
	ldr r0,[fp]                                       
	add fp,fp,#20                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
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
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t92	op	43
	mov r5,#43                                        	@IRInst:beq	%t92	op	43
	cmp r4,r5                                         	@IRInst:beq	%t92	op	43
	beq .L49                                          
	b .L50                                            
.L49:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t93	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:add	%t93	lhs	rhs
	add r6,r4,r5                                      	@IRInst:add	%t93	lhs	rhs
	str r6,[fp,#20]                                   	@IRInst:add	%t93	lhs	rhs
	ldr r4,[fp,#20]                                   	@IRInst:assign		%t93
	str r4,[fp]                                       	@IRInst:assign		%t93
	b .L48                                            
.L50:
.L51:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t94	op	45
	mov r5,#45                                        	@IRInst:beq	%t94	op	45
	cmp r4,r5                                         	@IRInst:beq	%t94	op	45
	beq .L52                                          
	b .L53                                            
.L52:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t95	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:sub	%t95	lhs	rhs
	sub r6,r4,r5                                      	@IRInst:sub	%t95	lhs	rhs
	str r6,[fp,#28]                                   	@IRInst:sub	%t95	lhs	rhs
	ldr r4,[fp,#28]                                   	@IRInst:assign		%t95
	str r4,[fp]                                       	@IRInst:assign		%t95
	b .L48                                            
.L53:
.L54:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t96	op	42
	mov r5,#42                                        	@IRInst:beq	%t96	op	42
	cmp r4,r5                                         	@IRInst:beq	%t96	op	42
	beq .L55                                          
	b .L56                                            
.L55:
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t97	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:mul	%t97	lhs	rhs
	mul r6,r4,r5                                      	@IRInst:mul	%t97	lhs	rhs
	str r6,[fp,#36]                                   	@IRInst:mul	%t97	lhs	rhs
	ldr r4,[fp,#36]                                   	@IRInst:assign		%t97
	str r4,[fp]                                       	@IRInst:assign		%t97
	b .L48                                            
.L56:
.L57:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t98	op	47
	mov r5,#47                                        	@IRInst:beq	%t98	op	47
	cmp r4,r5                                         	@IRInst:beq	%t98	op	47
	beq .L58                                          
	b .L59                                            
.L58:
	ldr r4,[fp,#8]                                    	@IRInst:sdiv	%t99	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:sdiv	%t99	lhs	rhs
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t99	lhs	rhs
	str r6,[fp,#44]                                   	@IRInst:sdiv	%t99	lhs	rhs
	ldr r4,[fp,#44]                                   	@IRInst:assign		%t99
	str r4,[fp]                                       	@IRInst:assign		%t99
	b .L48                                            
.L59:
.L60:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t100	op	37
	mov r5,#37                                        	@IRInst:beq	%t100	op	37
	cmp r4,r5                                         	@IRInst:beq	%t100	op	37
	beq .L61                                          
	b .L62                                            
.L61:
	ldr r4,[fp,#8]                                    	@IRInst:sdiv	%t102	lhs	rhs
	ldr r5,[fp,#12]                                   	@IRInst:sdiv	%t102	lhs	rhs
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t102	lhs	rhs
	str r6,[fp,#56]                                   	@IRInst:sdiv	%t102	lhs	rhs
	ldr r4,[fp,#56]                                   	@IRInst:mul	%t103	%t102	rhs
	ldr r5,[fp,#12]                                   	@IRInst:mul	%t103	%t102	rhs
	mul r6,r4,r5                                      	@IRInst:mul	%t103	%t102	rhs
	str r6,[fp,#60]                                   	@IRInst:mul	%t103	%t102	rhs
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t101	lhs	%t103
	ldr r5,[fp,#60]                                   	@IRInst:sub	%t101	lhs	%t103
	sub r6,r4,r5                                      	@IRInst:sub	%t101	lhs	%t103
	str r6,[fp,#52]                                   	@IRInst:sub	%t101	lhs	%t103
	ldr r4,[fp,#52]                                   	@IRInst:assign		%t101
	str r4,[fp]                                       	@IRInst:assign		%t101
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
	ldr r10,=2196                                     
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	ldr r4,.global_11_cur_token                       	@IRInst:beq	%t108	cur_token	TOKEN_NUM
	ldr r4,[r4]                                       	@IRInst:beq	%t108	cur_token	TOKEN_NUM
	ldr r5,[fp,#2052]                                 	@IRInst:beq	%t108	cur_token	TOKEN_NUM
	cmp r4,r5                                         	@IRInst:beq	%t108	cur_token	TOKEN_NUM
	beq .L67                                          
	b .L66                                            
.L66:
	bl panic                                          
	str r0,[fp,#2060]                                 	@IRInst:assign	%t109	r0
	ldr r4,[fp,#2060]                                 	@IRInst:assign		%t109
	str r4,[fp]                                       	@IRInst:assign		%t109
	b .L65                                            
.L67:
.L68:
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	ldr r1,.global_11_num                             	@IRInst:assign	r1	num
	ldr r1,[r1]                                       	@IRInst:assign	r1	num
	bl stack_push                                     
	bl next_token                                     
	str r0,[fp,#2064]                                 	@IRInst:assign	%t110	r0
.L69:
	ldr r4,.global_11_cur_token                       	@IRInst:beq	%t112	cur_token	TOKEN_OTHER
	ldr r4,[r4]                                       	@IRInst:beq	%t112	cur_token	TOKEN_OTHER
	ldr r5,[fp,#2068]                                 	@IRInst:beq	%t112	cur_token	TOKEN_OTHER
	cmp r4,r5                                         	@IRInst:beq	%t112	cur_token	TOKEN_OTHER
	beq .L70                                          
	b .L71                                            
.L70:
	ldr r4,[fp,#2080]                                 
	str r4,[fp,#2076]                                 
	ldr r0,[fp,#2076]                                 	@IRInst:assign	r0	op
	bl get_op_prec                                    
	str r0,[fp,#2084]                                 	@IRInst:assign	%t115	r0
	ldr r4,[fp,#2084]                                 	@IRInst:not_zero	%t116	%t115	0
	mov r5,#0                                         	@IRInst:not_zero	%t116	%t115	0
	cmp r4,r5                                         	@IRInst:not_zero	%t116	%t115	0
	moveq r6,#0                                       	@IRInst:not_zero	%t116	%t115	0
	str r6,[fp,#2088]                                 	@IRInst:not_zero	%t116	%t115	0
	beq .L72                                          
	b .L73                                            
.L72:
	b .L71                                            
.L73:
.L74:
	bl next_token                                     
	str r0,[fp,#2092]                                 	@IRInst:assign	%t117	r0
.L75:
	add r0,fp,#1028                                   	@IRInst:assign	r0	ops
	bl stack_size                                     
	str r0,[fp,#2096]                                 	@IRInst:assign	%t118	r0
.L78:
	add r0,fp,#1028                                   	@IRInst:assign	r0	ops
	bl stack_peek                                     
	str r0,[fp,#2100]                                 	@IRInst:assign	%t119	r0
	ldr r0,[fp,#2100]                                 	@IRInst:assign	r0	%t119
	bl get_op_prec                                    
	str r0,[fp,#2104]                                 	@IRInst:assign	%t120	r0
	ldr r0,[fp,#2076]                                 	@IRInst:assign	r0	op
	bl get_op_prec                                    
	str r0,[fp,#2108]                                 	@IRInst:assign	%t121	r0
	ldr r4,[fp,#2104]                                 	@IRInst:bge	%t122	%t120	%t121
	ldr r5,[fp,#2108]                                 	@IRInst:bge	%t122	%t120	%t121
	cmp r4,r5                                         	@IRInst:bge	%t122	%t120	%t121
	bge .L76                                          
	b .L77                                            
.L76:
	add r0,fp,#1028                                   	@IRInst:assign	r0	ops
	bl stack_pop                                      
	str r0,[fp,#2120]                                 	@IRInst:assign	%t124	r0
	ldr r4,[fp,#2120]                                 
	str r4,[fp,#2116]                                 
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_pop                                      
	str r0,[fp,#2128]                                 	@IRInst:assign	%t126	r0
	ldr r4,[fp,#2128]                                 
	str r4,[fp,#2124]                                 
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_pop                                      
	str r0,[fp,#2136]                                 	@IRInst:assign	%t128	r0
	ldr r4,[fp,#2136]                                 
	str r4,[fp,#2132]                                 
	ldr r0,[fp,#2116]                                 	@IRInst:assign	r0	cur_op
	ldr r1,[fp,#2132]                                 	@IRInst:assign	r1	lhs
	ldr r2,[fp,#2124]                                 	@IRInst:assign	r2	rhs
	bl eval_op                                        
	str r0,[fp,#2140]                                 	@IRInst:assign	%t129	r0
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	ldr r1,[fp,#2140]                                 	@IRInst:assign	r1	%t129
	bl stack_push                                     
	b .L75                                            
.L77:
	add r0,fp,#1028                                   	@IRInst:assign	r0	ops
	ldr r1,[fp,#2076]                                 	@IRInst:assign	r1	op
	bl stack_push                                     
	ldr r4,.global_11_cur_token                       	@IRInst:beq	%t130	cur_token	TOKEN_NUM
	ldr r4,[r4]                                       	@IRInst:beq	%t130	cur_token	TOKEN_NUM
	ldr r5,[fp,#2052]                                 	@IRInst:beq	%t130	cur_token	TOKEN_NUM
	cmp r4,r5                                         	@IRInst:beq	%t130	cur_token	TOKEN_NUM
	beq .L80                                          
	b .L79                                            
.L79:
	bl panic                                          
	str r0,[fp,#2148]                                 	@IRInst:assign	%t131	r0
	ldr r4,[fp,#2148]                                 	@IRInst:assign		%t131
	str r4,[fp]                                       	@IRInst:assign		%t131
	b .L65                                            
.L80:
.L81:
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	ldr r1,.global_11_num                             	@IRInst:assign	r1	num
	ldr r1,[r1]                                       	@IRInst:assign	r1	num
	bl stack_push                                     
	bl next_token                                     
	str r0,[fp,#2152]                                 	@IRInst:assign	%t132	r0
	b .L69                                            
.L71:
	bl next_token                                     
	str r0,[fp,#2156]                                 	@IRInst:assign	%t133	r0
.L82:
	add r0,fp,#1028                                   	@IRInst:assign	r0	ops
	bl stack_size                                     
	str r0,[fp,#2160]                                 	@IRInst:assign	%t134	r0
.L83:
	add r0,fp,#1028                                   	@IRInst:assign	r0	ops
	bl stack_pop                                      
	str r0,[fp,#2168]                                 	@IRInst:assign	%t136	r0
	ldr r4,[fp,#2168]                                 
	str r4,[fp,#2164]                                 
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_pop                                      
	str r0,[fp,#2176]                                 	@IRInst:assign	%t138	r0
	ldr r4,[fp,#2176]                                 
	str r4,[fp,#2172]                                 
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_pop                                      
	str r0,[fp,#2184]                                 	@IRInst:assign	%t140	r0
	ldr r4,[fp,#2184]                                 
	str r4,[fp,#2180]                                 
	ldr r0,[fp,#2164]                                 	@IRInst:assign	r0	cur_op
	ldr r1,[fp,#2180]                                 	@IRInst:assign	r1	lhs
	ldr r2,[fp,#2172]                                 	@IRInst:assign	r2	rhs
	bl eval_op                                        
	str r0,[fp,#2188]                                 	@IRInst:assign	%t141	r0
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	ldr r1,[fp,#2188]                                 	@IRInst:assign	r1	%t141
	bl stack_push                                     
	b .L82                                            
.L84:
	add r0,fp,#4                                      	@IRInst:assign	r0	oprs
	bl stack_peek                                     
	str r0,[fp,#2192]                                 	@IRInst:assign	%t142	r0
	ldr r4,[fp,#2192]                                 	@IRInst:assign		%t142
	str r4,[fp]                                       	@IRInst:assign		%t142
	b .L65                                            
.L65:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#148                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
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
	str r0,[fp,#8]                                    	@IRInst:assign	%t145	r0
	ldr r4,[fp,#8]                                    
	str r4,[fp,#4]                                    
	bl getch                                          
	str r0,[fp,#12]                                   	@IRInst:assign	%t146	r0
	bl next_token                                     
	str r0,[fp,#16]                                   	@IRInst:assign	%t147	r0
.L87:
	ldr r4,[fp,#4]                                    	@IRInst:assign	%t148	count
	str r4,[fp,#20]                                   	@IRInst:assign	%t148	count
	ldr r4,[fp,#20]                                   	@IRInst:not_zero	%t149	%t148	0
	mov r5,#0                                         	@IRInst:not_zero	%t149	%t148	0
	cmp r4,r5                                         	@IRInst:not_zero	%t149	%t148	0
	moveq r6,#0                                       	@IRInst:not_zero	%t149	%t148	0
	str r6,[fp,#24]                                   	@IRInst:not_zero	%t149	%t148	0
	beq .L89                                          
	b .L88                                            
.L88:
	bl eval                                           
	str r0,[fp,#28]                                   	@IRInst:assign	%t150	r0
	ldr r0,[fp,#28]                                   	@IRInst:assign	r0	%t150
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t151	count	1
	mov r5,#1                                         	@IRInst:sub	%t151	count	1
	sub r6,r4,r5                                      	@IRInst:sub	%t151	count	1
	str r6,[fp,#32]                                   	@IRInst:sub	%t151	count	1
	ldr r4,[fp,#32]                                   	@IRInst:assign	count	%t151
	str r4,[fp,#4]                                    	@IRInst:assign	count	%t151
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
