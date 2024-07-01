.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
tape:
        .zero   0
program:
        .zero   0
ptr:
        .long   0
.text
.global_0_tape:
        .long   tape
.global_0_program:
        .long   program
.global_0_ptr:
        .long   ptr
.global read_program
.type read_program, %function
read_program:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#40                                     
	add fp,sp,#0                                      
	mov r4,#0                                         
	str r4,[fp]                                       
	bl getint                                         
	str r0,[fp,#8]                                    	@IRInst:assign	%t8	r0
	ldr r4,[fp,#8]                                    
	str r4,[fp,#4]                                    
.L3:
	ldr r4,[fp]                                       	@IRInst:blt	%t9	i	len
	ldr r5,[fp,#4]                                    	@IRInst:blt	%t9	i	len
	cmp r4,r5                                         	@IRInst:blt	%t9	i	len
	blt .L4                                           
	b .L5                                             
.L4:
	bl getch                                          
	str r0,[fp,#24]                                   	@IRInst:assign	%t12	r0
	ldr r4,[fp]                                       	@IRInst:mul	%t10	i	4
	mov r5,#4                                         	@IRInst:mul	%t10	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t10	i	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t10	i	4
	ldr r4,.global_0_program                          	@IRInst:add	%t11	program	%t10
	ldr r5,[fp,#16]                                   	@IRInst:add	%t11	program	%t10
	add r6,r4,r5                                      	@IRInst:add	%t11	program	%t10
	str r6,[fp,#20]                                   	@IRInst:add	%t11	program	%t10
	ldr r5,[fp,#20]                                   	@IRInst:assign	%t11	%t12
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t11	%t12
	str r4,[r5]                                       	@IRInst:assign	%t11	%t12
	ldr r4,[fp]                                       	@IRInst:add	%t13	i	1
	mov r5,#1                                         	@IRInst:add	%t13	i	1
	add r6,r4,r5                                      	@IRInst:add	%t13	i	1
	str r6,[fp,#28]                                   	@IRInst:add	%t13	i	1
	ldr r4,[fp,#28]                                   	@IRInst:assign	i	%t13
	str r4,[fp]                                       	@IRInst:assign	i	%t13
	b .L3                                             
.L5:
	ldr r4,[fp]                                       	@IRInst:mul	%t14	i	4
	mov r5,#4                                         	@IRInst:mul	%t14	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t14	i	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t14	i	4
	ldr r4,.global_0_program                          	@IRInst:add	%t15	program	%t14
	ldr r5,[fp,#32]                                   	@IRInst:add	%t15	program	%t14
	add r6,r4,r5                                      	@IRInst:add	%t15	program	%t14
	str r6,[fp,#36]                                   	@IRInst:add	%t15	program	%t14
	ldr r5,[fp,#36]                                   	@IRInst:assign	%t15	0
	mov r4,#0                                         	@IRInst:assign	%t15	0
	str r4,[r5]                                       	@IRInst:assign	%t15	0
.L2:
	add fp,fp,#40                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_tape:
        .long   tape
.global_1_program:
        .long   program
.global_1_ptr:
        .long   ptr
.global interpret
.type interpret, %function
interpret:
.L6:
	push {r10,fp,lr}                                  
	sub sp,sp,#216                                    
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	input	r0
	mov r4,#0                                         
	str r4,[fp,#12]                                   
.L8:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t22	i	4
	mov r5,#4                                         	@IRInst:mul	%t22	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t22	i	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t22	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t23	input	%t22
	ldr r5,[fp,#16]                                   	@IRInst:add	%t23	input	%t22
	add r6,r4,r5                                      	@IRInst:add	%t23	input	%t22
	str r6,[fp,#20]                                   	@IRInst:add	%t23	input	%t22
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t24	%t23
	ldr r4,[r4]                                       	@IRInst:assign	%t24	%t23
	str r4,[fp,#24]                                   	@IRInst:assign	%t24	%t23
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t25	%t24
	str r4,[fp,#28]                                   	@IRInst:assign	%t25	%t24
	ldr r4,[fp,#28]                                   	@IRInst:not_zero	%t26	%t25	0
	mov r5,#0                                         	@IRInst:not_zero	%t26	%t25	0
	cmp r4,r5                                         	@IRInst:not_zero	%t26	%t25	0
	moveq r6,#0                                       	@IRInst:not_zero	%t26	%t25	0
	str r6,[fp,#32]                                   	@IRInst:not_zero	%t26	%t25	0
	beq .L10                                          
	b .L9                                             
.L9:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t27	i	4
	mov r5,#4                                         	@IRInst:mul	%t27	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t27	i	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t27	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t28	input	%t27
	ldr r5,[fp,#36]                                   	@IRInst:add	%t28	input	%t27
	add r6,r4,r5                                      	@IRInst:add	%t28	input	%t27
	str r6,[fp,#40]                                   	@IRInst:add	%t28	input	%t27
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t29	%t28
	ldr r4,[r4]                                       	@IRInst:assign	%t29	%t28
	str r4,[fp,#44]                                   	@IRInst:assign	%t29	%t28
	ldr r4,[fp,#44]                                   	@IRInst:assign	cur_char	%t29
	str r4,[fp,#4]                                    	@IRInst:assign	cur_char	%t29
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t30	cur_char	62
	mov r5,#62                                        	@IRInst:beq	%t30	cur_char	62
	cmp r4,r5                                         	@IRInst:beq	%t30	cur_char	62
	beq .L11                                          
	b .L12                                            
.L11:
	ldr r4,.global_1_ptr                              	@IRInst:add	%t31	ptr	1
	ldr r4,[r4]                                       	@IRInst:add	%t31	ptr	1
	mov r5,#1                                         	@IRInst:add	%t31	ptr	1
	add r6,r4,r5                                      	@IRInst:add	%t31	ptr	1
	str r6,[fp,#52]                                   	@IRInst:add	%t31	ptr	1
	ldr r4,[fp,#52]                                   	@IRInst:assign	ptr	%t31
	ldr r9,.global_1_ptr                              	@IRInst:assign	ptr	%t31
	str r4,[r9]                                       	@IRInst:assign	ptr	%t31
	b .L13                                            
.L12:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t32	cur_char	60
	mov r5,#60                                        	@IRInst:beq	%t32	cur_char	60
	cmp r4,r5                                         	@IRInst:beq	%t32	cur_char	60
	beq .L14                                          
	b .L15                                            
.L14:
	ldr r4,.global_1_ptr                              	@IRInst:sub	%t33	ptr	1
	ldr r4,[r4]                                       	@IRInst:sub	%t33	ptr	1
	mov r5,#1                                         	@IRInst:sub	%t33	ptr	1
	sub r6,r4,r5                                      	@IRInst:sub	%t33	ptr	1
	str r6,[fp,#60]                                   	@IRInst:sub	%t33	ptr	1
	ldr r4,[fp,#60]                                   	@IRInst:assign	ptr	%t33
	ldr r9,.global_1_ptr                              	@IRInst:assign	ptr	%t33
	str r4,[r9]                                       	@IRInst:assign	ptr	%t33
	b .L16                                            
.L15:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t34	cur_char	43
	mov r5,#43                                        	@IRInst:beq	%t34	cur_char	43
	cmp r4,r5                                         	@IRInst:beq	%t34	cur_char	43
	beq .L17                                          
	b .L18                                            
.L17:
	ldr r4,.global_1_ptr                              	@IRInst:mul	%t37	ptr	4
	ldr r4,[r4]                                       	@IRInst:mul	%t37	ptr	4
	mov r5,#4                                         	@IRInst:mul	%t37	ptr	4
	mul r6,r4,r5                                      	@IRInst:mul	%t37	ptr	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t37	ptr	4
	ldr r4,.global_1_tape                             	@IRInst:add	%t38	tape	%t37
	ldr r5,[fp,#76]                                   	@IRInst:add	%t38	tape	%t37
	add r6,r4,r5                                      	@IRInst:add	%t38	tape	%t37
	str r6,[fp,#80]                                   	@IRInst:add	%t38	tape	%t37
	ldr r4,[fp,#80]                                   	@IRInst:assign	%t39	%t38
	ldr r4,[r4]                                       	@IRInst:assign	%t39	%t38
	str r4,[fp,#84]                                   	@IRInst:assign	%t39	%t38
	ldr r4,[fp,#84]                                   	@IRInst:add	%t40	%t39	1
	mov r5,#1                                         	@IRInst:add	%t40	%t39	1
	add r6,r4,r5                                      	@IRInst:add	%t40	%t39	1
	str r6,[fp,#88]                                   	@IRInst:add	%t40	%t39	1
	ldr r4,.global_1_ptr                              	@IRInst:mul	%t35	ptr	4
	ldr r4,[r4]                                       	@IRInst:mul	%t35	ptr	4
	mov r5,#4                                         	@IRInst:mul	%t35	ptr	4
	mul r6,r4,r5                                      	@IRInst:mul	%t35	ptr	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t35	ptr	4
	ldr r4,.global_1_tape                             	@IRInst:add	%t36	tape	%t35
	ldr r5,[fp,#68]                                   	@IRInst:add	%t36	tape	%t35
	add r6,r4,r5                                      	@IRInst:add	%t36	tape	%t35
	str r6,[fp,#72]                                   	@IRInst:add	%t36	tape	%t35
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t36	%t40
	ldr r4,[fp,#88]                                   	@IRInst:assign	%t36	%t40
	str r4,[r5]                                       	@IRInst:assign	%t36	%t40
	b .L19                                            
.L18:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t41	cur_char	45
	mov r5,#45                                        	@IRInst:beq	%t41	cur_char	45
	cmp r4,r5                                         	@IRInst:beq	%t41	cur_char	45
	beq .L20                                          
	b .L21                                            
.L20:
	ldr r4,.global_1_ptr                              	@IRInst:mul	%t44	ptr	4
	ldr r4,[r4]                                       	@IRInst:mul	%t44	ptr	4
	mov r5,#4                                         	@IRInst:mul	%t44	ptr	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	ptr	4
	str r6,[fp,#104]                                  	@IRInst:mul	%t44	ptr	4
	ldr r4,.global_1_tape                             	@IRInst:add	%t45	tape	%t44
	ldr r5,[fp,#104]                                  	@IRInst:add	%t45	tape	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	tape	%t44
	str r6,[fp,#108]                                  	@IRInst:add	%t45	tape	%t44
	ldr r4,[fp,#108]                                  	@IRInst:assign	%t46	%t45
	ldr r4,[r4]                                       	@IRInst:assign	%t46	%t45
	str r4,[fp,#112]                                  	@IRInst:assign	%t46	%t45
	ldr r4,[fp,#112]                                  	@IRInst:sub	%t47	%t46	1
	mov r5,#1                                         	@IRInst:sub	%t47	%t46	1
	sub r6,r4,r5                                      	@IRInst:sub	%t47	%t46	1
	str r6,[fp,#116]                                  	@IRInst:sub	%t47	%t46	1
	ldr r4,.global_1_ptr                              	@IRInst:mul	%t42	ptr	4
	ldr r4,[r4]                                       	@IRInst:mul	%t42	ptr	4
	mov r5,#4                                         	@IRInst:mul	%t42	ptr	4
	mul r6,r4,r5                                      	@IRInst:mul	%t42	ptr	4
	str r6,[fp,#96]                                   	@IRInst:mul	%t42	ptr	4
	ldr r4,.global_1_tape                             	@IRInst:add	%t43	tape	%t42
	ldr r5,[fp,#96]                                   	@IRInst:add	%t43	tape	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	tape	%t42
	str r6,[fp,#100]                                  	@IRInst:add	%t43	tape	%t42
	ldr r5,[fp,#100]                                  	@IRInst:assign	%t43	%t47
	ldr r4,[fp,#116]                                  	@IRInst:assign	%t43	%t47
	str r4,[r5]                                       	@IRInst:assign	%t43	%t47
	b .L22                                            
.L21:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t48	cur_char	46
	mov r5,#46                                        	@IRInst:beq	%t48	cur_char	46
	cmp r4,r5                                         	@IRInst:beq	%t48	cur_char	46
	beq .L23                                          
	b .L24                                            
.L23:
	ldr r4,.global_1_ptr                              	@IRInst:mul	%t49	ptr	4
	ldr r4,[r4]                                       	@IRInst:mul	%t49	ptr	4
	mov r5,#4                                         	@IRInst:mul	%t49	ptr	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	ptr	4
	str r6,[fp,#124]                                  	@IRInst:mul	%t49	ptr	4
	ldr r4,.global_1_tape                             	@IRInst:add	%t50	tape	%t49
	ldr r5,[fp,#124]                                  	@IRInst:add	%t50	tape	%t49
	add r6,r4,r5                                      	@IRInst:add	%t50	tape	%t49
	str r6,[fp,#128]                                  	@IRInst:add	%t50	tape	%t49
	ldr r4,[fp,#128]                                  	@IRInst:assign	%t51	%t50
	ldr r4,[r4]                                       	@IRInst:assign	%t51	%t50
	str r4,[fp,#132]                                  	@IRInst:assign	%t51	%t50
	ldr r0,[fp,#132]                                  	@IRInst:assign	r0	%t51
	bl putch                                          
	b .L25                                            
.L24:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t52	cur_char	44
	mov r5,#44                                        	@IRInst:beq	%t52	cur_char	44
	cmp r4,r5                                         	@IRInst:beq	%t52	cur_char	44
	beq .L26                                          
	b .L27                                            
.L26:
	bl getch                                          
	str r0,[fp,#148]                                  	@IRInst:assign	%t55	r0
	ldr r4,.global_1_ptr                              	@IRInst:mul	%t53	ptr	4
	ldr r4,[r4]                                       	@IRInst:mul	%t53	ptr	4
	mov r5,#4                                         	@IRInst:mul	%t53	ptr	4
	mul r6,r4,r5                                      	@IRInst:mul	%t53	ptr	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t53	ptr	4
	ldr r4,.global_1_tape                             	@IRInst:add	%t54	tape	%t53
	ldr r5,[fp,#140]                                  	@IRInst:add	%t54	tape	%t53
	add r6,r4,r5                                      	@IRInst:add	%t54	tape	%t53
	str r6,[fp,#144]                                  	@IRInst:add	%t54	tape	%t53
	ldr r5,[fp,#144]                                  	@IRInst:assign	%t54	%t55
	ldr r4,[fp,#148]                                  	@IRInst:assign	%t54	%t55
	str r4,[r5]                                       	@IRInst:assign	%t54	%t55
	b .L28                                            
.L27:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t56	cur_char	93
	mov r5,#93                                        	@IRInst:beq	%t56	cur_char	93
	cmp r4,r5                                         	@IRInst:beq	%t56	cur_char	93
	beq .L32                                          
	b .L30                                            
.L32:
	ldr r4,.global_1_ptr                              	@IRInst:mul	%t57	ptr	4
	ldr r4,[r4]                                       	@IRInst:mul	%t57	ptr	4
	mov r5,#4                                         	@IRInst:mul	%t57	ptr	4
	mul r6,r4,r5                                      	@IRInst:mul	%t57	ptr	4
	str r6,[fp,#156]                                  	@IRInst:mul	%t57	ptr	4
	ldr r4,.global_1_tape                             	@IRInst:add	%t58	tape	%t57
	ldr r5,[fp,#156]                                  	@IRInst:add	%t58	tape	%t57
	add r6,r4,r5                                      	@IRInst:add	%t58	tape	%t57
	str r6,[fp,#160]                                  	@IRInst:add	%t58	tape	%t57
	ldr r4,[fp,#160]                                  	@IRInst:assign	%t59	%t58
	ldr r4,[r4]                                       	@IRInst:assign	%t59	%t58
	str r4,[fp,#164]                                  	@IRInst:assign	%t59	%t58
	ldr r4,[fp,#164]                                  	@IRInst:assign	%t60	%t59
	str r4,[fp,#168]                                  	@IRInst:assign	%t60	%t59
	ldr r4,[fp,#168]                                  	@IRInst:not_zero	%t61	%t60	0
	mov r5,#0                                         	@IRInst:not_zero	%t61	%t60	0
	cmp r4,r5                                         	@IRInst:not_zero	%t61	%t60	0
	moveq r6,#0                                       	@IRInst:not_zero	%t61	%t60	0
	str r6,[fp,#172]                                  	@IRInst:not_zero	%t61	%t60	0
	beq .L30                                          
	b .L29                                            
.L29:
	mov r4,#1                                         	@IRInst:assign	loop	1
	str r4,[fp,#8]                                    	@IRInst:assign	loop	1
.L33:
	ldr r4,[fp,#8]                                    	@IRInst:bgt	%t62	loop	0
	mov r5,#0                                         	@IRInst:bgt	%t62	loop	0
	cmp r4,r5                                         	@IRInst:bgt	%t62	loop	0
	bgt .L34                                          
	b .L35                                            
.L34:
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t63	i	1
	mov r5,#1                                         	@IRInst:sub	%t63	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t63	i	1
	str r6,[fp,#180]                                  	@IRInst:sub	%t63	i	1
	ldr r4,[fp,#180]                                  	@IRInst:assign	i	%t63
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t63
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t64	i	4
	mov r5,#4                                         	@IRInst:mul	%t64	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t64	i	4
	str r6,[fp,#184]                                  	@IRInst:mul	%t64	i	4
	ldr r4,[fp]                                       	@IRInst:add	%t65	input	%t64
	ldr r5,[fp,#184]                                  	@IRInst:add	%t65	input	%t64
	add r6,r4,r5                                      	@IRInst:add	%t65	input	%t64
	str r6,[fp,#188]                                  	@IRInst:add	%t65	input	%t64
	ldr r4,[fp,#188]                                  	@IRInst:assign	%t66	%t65
	ldr r4,[r4]                                       	@IRInst:assign	%t66	%t65
	str r4,[fp,#192]                                  	@IRInst:assign	%t66	%t65
	ldr r4,[fp,#192]                                  	@IRInst:assign	cur_char	%t66
	str r4,[fp,#4]                                    	@IRInst:assign	cur_char	%t66
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t67	cur_char	91
	mov r5,#91                                        	@IRInst:beq	%t67	cur_char	91
	cmp r4,r5                                         	@IRInst:beq	%t67	cur_char	91
	beq .L36                                          
	b .L37                                            
.L36:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t68	loop	1
	mov r5,#1                                         	@IRInst:sub	%t68	loop	1
	sub r6,r4,r5                                      	@IRInst:sub	%t68	loop	1
	str r6,[fp,#200]                                  	@IRInst:sub	%t68	loop	1
	ldr r4,[fp,#200]                                  	@IRInst:assign	loop	%t68
	str r4,[fp,#8]                                    	@IRInst:assign	loop	%t68
	b .L38                                            
.L37:
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t69	cur_char	93
	mov r5,#93                                        	@IRInst:beq	%t69	cur_char	93
	cmp r4,r5                                         	@IRInst:beq	%t69	cur_char	93
	beq .L39                                          
	b .L40                                            
.L39:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t70	loop	1
	mov r5,#1                                         	@IRInst:add	%t70	loop	1
	add r6,r4,r5                                      	@IRInst:add	%t70	loop	1
	str r6,[fp,#208]                                  	@IRInst:add	%t70	loop	1
	ldr r4,[fp,#208]                                  	@IRInst:assign	loop	%t70
	str r4,[fp,#8]                                    	@IRInst:assign	loop	%t70
.L40:
.L41:
.L38:
	b .L33                                            
.L35:
.L30:
.L31:
.L28:
.L25:
.L22:
.L19:
.L16:
.L13:
	ldr r4,[fp,#12]                                   	@IRInst:add	%t71	i	1
	mov r5,#1                                         	@IRInst:add	%t71	i	1
	add r6,r4,r5                                      	@IRInst:add	%t71	i	1
	str r6,[fp,#212]                                  	@IRInst:add	%t71	i	1
	ldr r4,[fp,#212]                                  	@IRInst:assign	i	%t71
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t71
	b .L8                                             
.L10:
.L7:
	add fp,fp,#216                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_2_tape:
        .long   tape
.global_2_program:
        .long   program
.global_2_ptr:
        .long   ptr
.global main
.type main, %function
main:
.L42:
	push {r10,fp,lr}                                  
	sub sp,sp,#4                                      
	add fp,sp,#0                                      
	bl read_program                                   
	ldr r0,.global_2_program                          	@IRInst:assign	r0	program
	bl interpret                                      
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L43                                            
.L43:
	ldr r0,[fp]                                       
	add fp,fp,#4                                      
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
