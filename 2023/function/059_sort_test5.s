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
.global swap
.type swap, %function
swap:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#60                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	array	r0
	str r1,[fp,#8]                                    	@IRInst:assign	i	r1
	str r2,[fp,#12]                                   	@IRInst:assign	j	r2
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t9	i	4
	mov r5,#4                                         	@IRInst:mul	%t9	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t9	i	4
	str r6,[fp,#20]                                   	@IRInst:mul	%t9	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t10	array	%t9
	ldr r5,[fp,#20]                                   	@IRInst:add	%t10	array	%t9
	add r6,r4,r5                                      	@IRInst:add	%t10	array	%t9
	str r6,[fp,#24]                                   	@IRInst:add	%t10	array	%t9
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t11	%t10
	ldr r4,[r4]                                       	@IRInst:assign	%t11	%t10
	str r4,[fp,#28]                                   	@IRInst:assign	%t11	%t10
	ldr r4,[fp,#28]                                   	@IRInst:assign	temp	%t11
	str r4,[fp,#16]                                   	@IRInst:assign	temp	%t11
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t14	j	4
	mov r5,#4                                         	@IRInst:mul	%t14	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t14	j	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t14	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t15	array	%t14
	ldr r5,[fp,#40]                                   	@IRInst:add	%t15	array	%t14
	add r6,r4,r5                                      	@IRInst:add	%t15	array	%t14
	str r6,[fp,#44]                                   	@IRInst:add	%t15	array	%t14
	ldr r4,[fp,#44]                                   	@IRInst:assign	%t16	%t15
	ldr r4,[r4]                                       	@IRInst:assign	%t16	%t15
	str r4,[fp,#48]                                   	@IRInst:assign	%t16	%t15
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t12	i	4
	mov r5,#4                                         	@IRInst:mul	%t12	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t12	i	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t12	i	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t13	array	%t12
	ldr r5,[fp,#32]                                   	@IRInst:add	%t13	array	%t12
	add r6,r4,r5                                      	@IRInst:add	%t13	array	%t12
	str r6,[fp,#36]                                   	@IRInst:add	%t13	array	%t12
	ldr r5,[fp,#36]                                   	@IRInst:assign	%t13	%t16
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t13	%t16
	str r4,[r5]                                       	@IRInst:assign	%t13	%t16
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t17	j	4
	mov r5,#4                                         	@IRInst:mul	%t17	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	j	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t17	j	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t18	array	%t17
	ldr r5,[fp,#52]                                   	@IRInst:add	%t18	array	%t17
	add r6,r4,r5                                      	@IRInst:add	%t18	array	%t17
	str r6,[fp,#56]                                   	@IRInst:add	%t18	array	%t17
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t18	temp
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t18	temp
	str r4,[r5]                                       	@IRInst:assign	%t18	temp
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#60                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_n:
        .long   n
.global heap_ajust
.type heap_ajust, %function
heap_ajust:
.L3:
	push {r10,fp,lr}                                  
	sub sp,sp,#120                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	str r1,[fp,#8]                                    	@IRInst:assign	start	r1
	str r2,[fp,#12]                                   	@IRInst:assign	end	r2
	ldr r4,[fp,#8]                                    	@IRInst:assign	dad	start
	str r4,[fp,#16]                                   	@IRInst:assign	dad	start
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t28	dad	2
	mov r5,#2                                         	@IRInst:mul	%t28	dad	2
	mul r6,r4,r5                                      	@IRInst:mul	%t28	dad	2
	str r6,[fp,#24]                                   	@IRInst:mul	%t28	dad	2
	ldr r4,[fp,#24]                                   	@IRInst:add	%t29	%t28	1
	mov r5,#1                                         	@IRInst:add	%t29	%t28	1
	add r6,r4,r5                                      	@IRInst:add	%t29	%t28	1
	str r6,[fp,#28]                                   	@IRInst:add	%t29	%t28	1
	ldr r4,[fp,#28]                                   	@IRInst:assign	son	%t29
	str r4,[fp,#20]                                   	@IRInst:assign	son	%t29
.L5:
	ldr r4,[fp,#12]                                   	@IRInst:add	%t30	end	1
	mov r5,#1                                         	@IRInst:add	%t30	end	1
	add r6,r4,r5                                      	@IRInst:add	%t30	end	1
	str r6,[fp,#32]                                   	@IRInst:add	%t30	end	1
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t31	son	%t30
	ldr r5,[fp,#32]                                   	@IRInst:blt	%t31	son	%t30
	cmp r4,r5                                         	@IRInst:blt	%t31	son	%t30
	blt .L6                                           
	b .L7                                             
.L6:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t32	son	end
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t32	son	end
	cmp r4,r5                                         	@IRInst:blt	%t32	son	end
	blt .L11                                          
	b .L9                                             
.L11:
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t33	son	4
	mov r5,#4                                         	@IRInst:mul	%t33	son	4
	mul r6,r4,r5                                      	@IRInst:mul	%t33	son	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t33	son	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t34	arr	%t33
	ldr r5,[fp,#44]                                   	@IRInst:add	%t34	arr	%t33
	add r6,r4,r5                                      	@IRInst:add	%t34	arr	%t33
	str r6,[fp,#48]                                   	@IRInst:add	%t34	arr	%t33
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t35	%t34
	ldr r4,[r4]                                       	@IRInst:assign	%t35	%t34
	str r4,[fp,#52]                                   	@IRInst:assign	%t35	%t34
	ldr r4,[fp,#20]                                   	@IRInst:add	%t37	son	1
	mov r5,#1                                         	@IRInst:add	%t37	son	1
	add r6,r4,r5                                      	@IRInst:add	%t37	son	1
	str r6,[fp,#60]                                   	@IRInst:add	%t37	son	1
	ldr r4,[fp,#60]                                   	@IRInst:mul	%t36	%t37	4
	mov r5,#4                                         	@IRInst:mul	%t36	%t37	4
	mul r6,r4,r5                                      	@IRInst:mul	%t36	%t37	4
	str r6,[fp,#56]                                   	@IRInst:mul	%t36	%t37	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t38	arr	%t36
	ldr r5,[fp,#56]                                   	@IRInst:add	%t38	arr	%t36
	add r6,r4,r5                                      	@IRInst:add	%t38	arr	%t36
	str r6,[fp,#64]                                   	@IRInst:add	%t38	arr	%t36
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t39	%t38
	ldr r4,[r4]                                       	@IRInst:assign	%t39	%t38
	str r4,[fp,#68]                                   	@IRInst:assign	%t39	%t38
	ldr r4,[fp,#52]                                   	@IRInst:blt	%t40	%t35	%t39
	ldr r5,[fp,#68]                                   	@IRInst:blt	%t40	%t35	%t39
	cmp r4,r5                                         	@IRInst:blt	%t40	%t35	%t39
	blt .L8                                           
	b .L9                                             
.L8:
	ldr r4,[fp,#20]                                   	@IRInst:add	%t41	son	1
	mov r5,#1                                         	@IRInst:add	%t41	son	1
	add r6,r4,r5                                      	@IRInst:add	%t41	son	1
	str r6,[fp,#76]                                   	@IRInst:add	%t41	son	1
	ldr r4,[fp,#76]                                   	@IRInst:assign	son	%t41
	str r4,[fp,#20]                                   	@IRInst:assign	son	%t41
.L9:
.L10:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t42	dad	4
	mov r5,#4                                         	@IRInst:mul	%t42	dad	4
	mul r6,r4,r5                                      	@IRInst:mul	%t42	dad	4
	str r6,[fp,#80]                                   	@IRInst:mul	%t42	dad	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t43	arr	%t42
	ldr r5,[fp,#80]                                   	@IRInst:add	%t43	arr	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	arr	%t42
	str r6,[fp,#84]                                   	@IRInst:add	%t43	arr	%t42
	ldr r4,[fp,#84]                                   	@IRInst:assign	%t44	%t43
	ldr r4,[r4]                                       	@IRInst:assign	%t44	%t43
	str r4,[fp,#88]                                   	@IRInst:assign	%t44	%t43
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t45	son	4
	mov r5,#4                                         	@IRInst:mul	%t45	son	4
	mul r6,r4,r5                                      	@IRInst:mul	%t45	son	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t45	son	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t46	arr	%t45
	ldr r5,[fp,#92]                                   	@IRInst:add	%t46	arr	%t45
	add r6,r4,r5                                      	@IRInst:add	%t46	arr	%t45
	str r6,[fp,#96]                                   	@IRInst:add	%t46	arr	%t45
	ldr r4,[fp,#96]                                   	@IRInst:assign	%t47	%t46
	ldr r4,[r4]                                       	@IRInst:assign	%t47	%t46
	str r4,[fp,#100]                                  	@IRInst:assign	%t47	%t46
	ldr r4,[fp,#88]                                   	@IRInst:bgt	%t48	%t44	%t47
	ldr r5,[fp,#100]                                  	@IRInst:bgt	%t48	%t44	%t47
	cmp r4,r5                                         	@IRInst:bgt	%t48	%t44	%t47
	bgt .L12                                          
	b .L13                                            
.L12:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L4                                             
	b .L14                                            
.L13:
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	arr
	ldr r1,[fp,#16]                                   	@IRInst:assign	r1	dad
	ldr r2,[fp,#20]                                   	@IRInst:assign	r2	son
	bl swap                                           
	str r0,[fp,#108]                                  	@IRInst:assign	%t49	r0
	ldr r4,[fp,#108]                                  	@IRInst:assign	dad	%t49
	str r4,[fp,#16]                                   	@IRInst:assign	dad	%t49
	ldr r4,[fp,#20]                                   	@IRInst:assign	dad	son
	str r4,[fp,#16]                                   	@IRInst:assign	dad	son
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t50	dad	2
	mov r5,#2                                         	@IRInst:mul	%t50	dad	2
	mul r6,r4,r5                                      	@IRInst:mul	%t50	dad	2
	str r6,[fp,#112]                                  	@IRInst:mul	%t50	dad	2
	ldr r4,[fp,#112]                                  	@IRInst:add	%t51	%t50	1
	mov r5,#1                                         	@IRInst:add	%t51	%t50	1
	add r6,r4,r5                                      	@IRInst:add	%t51	%t50	1
	str r6,[fp,#116]                                  	@IRInst:add	%t51	%t50	1
	ldr r4,[fp,#116]                                  	@IRInst:assign	son	%t51
	str r4,[fp,#20]                                   	@IRInst:assign	son	%t51
.L14:
	b .L5                                             
.L7:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L4                                             
.L4:
	ldr r0,[fp]                                       
	add fp,fp,#120                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_2_n:
        .long   n
.global heap_sort
.type heap_sort, %function
heap_sort:
.L15:
	push {r10,fp,lr}                                  
	sub sp,sp,#72                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	arr	r0
	str r1,[fp,#8]                                    	@IRInst:assign	len	r1
	ldr r4,[fp,#8]                                    	@IRInst:sdiv	%t59	len	2
	mov r5,#2                                         	@IRInst:sdiv	%t59	len	2
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t59	len	2
	str r6,[fp,#20]                                   	@IRInst:sdiv	%t59	len	2
	ldr r4,[fp,#20]                                   	@IRInst:sub	%t60	%t59	1
	mov r5,#1                                         	@IRInst:sub	%t60	%t59	1
	sub r6,r4,r5                                      	@IRInst:sub	%t60	%t59	1
	str r6,[fp,#24]                                   	@IRInst:sub	%t60	%t59	1
	ldr r4,[fp,#24]                                   	@IRInst:assign	i	%t60
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t60
.L17:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t61	i	18446744073709551615
	mov r5,#-1                                        	@IRInst:bgt	%t61	i	18446744073709551615
	cmp r4,r5                                         	@IRInst:bgt	%t61	i	18446744073709551615
	bgt .L18                                          
	b .L19                                            
.L18:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t62	len	1
	mov r5,#1                                         	@IRInst:sub	%t62	len	1
	sub r6,r4,r5                                      	@IRInst:sub	%t62	len	1
	str r6,[fp,#32]                                   	@IRInst:sub	%t62	len	1
	ldr r4,[fp,#32]                                   	@IRInst:assign	tmp	%t62
	str r4,[fp,#16]                                   	@IRInst:assign	tmp	%t62
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	arr
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	i
	ldr r2,[fp,#16]                                   	@IRInst:assign	r2	tmp
	bl heap_ajust                                     
	str r0,[fp,#36]                                   	@IRInst:assign	%t63	r0
	ldr r4,[fp,#36]                                   	@IRInst:assign	tmp	%t63
	str r4,[fp,#16]                                   	@IRInst:assign	tmp	%t63
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t64	i	1
	mov r5,#1                                         	@IRInst:sub	%t64	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t64	i	1
	str r6,[fp,#40]                                   	@IRInst:sub	%t64	i	1
	ldr r4,[fp,#40]                                   	@IRInst:assign	i	%t64
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t64
	b .L17                                            
.L19:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t65	len	1
	mov r5,#1                                         	@IRInst:sub	%t65	len	1
	sub r6,r4,r5                                      	@IRInst:sub	%t65	len	1
	str r6,[fp,#44]                                   	@IRInst:sub	%t65	len	1
	ldr r4,[fp,#44]                                   	@IRInst:assign	i	%t65
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t65
.L20:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t66	i	0
	mov r5,#0                                         	@IRInst:bgt	%t66	i	0
	cmp r4,r5                                         	@IRInst:bgt	%t66	i	0
	bgt .L21                                          
	b .L22                                            
.L21:
	mov r4,#0                                         	@IRInst:assign	tmp0	0
	str r4,[fp,#52]                                   	@IRInst:assign	tmp0	0
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	arr
	ldr r1,[fp,#52]                                   	@IRInst:assign	r1	tmp0
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	i
	bl swap                                           
	str r0,[fp,#56]                                   	@IRInst:assign	%t68	r0
	ldr r4,[fp,#56]                                   	@IRInst:assign	tmp	%t68
	str r4,[fp,#16]                                   	@IRInst:assign	tmp	%t68
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t69	i	1
	mov r5,#1                                         	@IRInst:sub	%t69	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t69	i	1
	str r6,[fp,#60]                                   	@IRInst:sub	%t69	i	1
	ldr r4,[fp,#60]                                   	@IRInst:assign	tmp	%t69
	str r4,[fp,#16]                                   	@IRInst:assign	tmp	%t69
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	arr
	ldr r1,[fp,#52]                                   	@IRInst:assign	r1	tmp0
	ldr r2,[fp,#16]                                   	@IRInst:assign	r2	tmp
	bl heap_ajust                                     
	str r0,[fp,#64]                                   	@IRInst:assign	%t70	r0
	ldr r4,[fp,#64]                                   	@IRInst:assign	tmp	%t70
	str r4,[fp,#16]                                   	@IRInst:assign	tmp	%t70
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t71	i	1
	mov r5,#1                                         	@IRInst:sub	%t71	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t71	i	1
	str r6,[fp,#68]                                   	@IRInst:sub	%t71	i	1
	ldr r4,[fp,#68]                                   	@IRInst:assign	i	%t71
	str r4,[fp,#12]                                   	@IRInst:assign	i	%t71
	b .L20                                            
.L22:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L16                                            
.L16:
	ldr r0,[fp]                                       
	add fp,fp,#72                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_3_n:
        .long   n
.global main
.type main, %function
main:
.L23:
	push {r10,fp,lr}                                  
	sub sp,sp,#156                                    
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	n	10
	ldr r9,.global_3_n                                	@IRInst:assign	n	10
	str r4,[r9]                                       	@IRInst:assign	n	10
	mov r4,#0                                         	@IRInst:mul	%t74	0	4
	mov r5,#4                                         	@IRInst:mul	%t74	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t74	0	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t74	0	4
	add r4,fp,#4                                      	@IRInst:add	%t75	a	%t74
	ldr r5,[fp,#44]                                   	@IRInst:add	%t75	a	%t74
	add r6,r4,r5                                      	@IRInst:add	%t75	a	%t74
	str r6,[fp,#48]                                   	@IRInst:add	%t75	a	%t74
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t75	4
	mov r4,#4                                         	@IRInst:assign	%t75	4
	str r4,[r5]                                       	@IRInst:assign	%t75	4
	mov r4,#1                                         	@IRInst:mul	%t76	1	4
	mov r5,#4                                         	@IRInst:mul	%t76	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t76	1	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t76	1	4
	add r4,fp,#4                                      	@IRInst:add	%t77	a	%t76
	ldr r5,[fp,#52]                                   	@IRInst:add	%t77	a	%t76
	add r6,r4,r5                                      	@IRInst:add	%t77	a	%t76
	str r6,[fp,#56]                                   	@IRInst:add	%t77	a	%t76
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t77	3
	mov r4,#3                                         	@IRInst:assign	%t77	3
	str r4,[r5]                                       	@IRInst:assign	%t77	3
	mov r4,#2                                         	@IRInst:mul	%t78	2	4
	mov r5,#4                                         	@IRInst:mul	%t78	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t78	2	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t78	2	4
	add r4,fp,#4                                      	@IRInst:add	%t79	a	%t78
	ldr r5,[fp,#60]                                   	@IRInst:add	%t79	a	%t78
	add r6,r4,r5                                      	@IRInst:add	%t79	a	%t78
	str r6,[fp,#64]                                   	@IRInst:add	%t79	a	%t78
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t79	9
	mov r4,#9                                         	@IRInst:assign	%t79	9
	str r4,[r5]                                       	@IRInst:assign	%t79	9
	mov r4,#3                                         	@IRInst:mul	%t80	3	4
	mov r5,#4                                         	@IRInst:mul	%t80	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t80	3	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t80	3	4
	add r4,fp,#4                                      	@IRInst:add	%t81	a	%t80
	ldr r5,[fp,#68]                                   	@IRInst:add	%t81	a	%t80
	add r6,r4,r5                                      	@IRInst:add	%t81	a	%t80
	str r6,[fp,#72]                                   	@IRInst:add	%t81	a	%t80
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t81	2
	mov r4,#2                                         	@IRInst:assign	%t81	2
	str r4,[r5]                                       	@IRInst:assign	%t81	2
	mov r4,#4                                         	@IRInst:mul	%t82	4	4
	mov r5,#4                                         	@IRInst:mul	%t82	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t82	4	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t82	4	4
	add r4,fp,#4                                      	@IRInst:add	%t83	a	%t82
	ldr r5,[fp,#76]                                   	@IRInst:add	%t83	a	%t82
	add r6,r4,r5                                      	@IRInst:add	%t83	a	%t82
	str r6,[fp,#80]                                   	@IRInst:add	%t83	a	%t82
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t83	0
	mov r4,#0                                         	@IRInst:assign	%t83	0
	str r4,[r5]                                       	@IRInst:assign	%t83	0
	mov r4,#5                                         	@IRInst:mul	%t84	5	4
	mov r5,#4                                         	@IRInst:mul	%t84	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t84	5	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t84	5	4
	add r4,fp,#4                                      	@IRInst:add	%t85	a	%t84
	ldr r5,[fp,#84]                                   	@IRInst:add	%t85	a	%t84
	add r6,r4,r5                                      	@IRInst:add	%t85	a	%t84
	str r6,[fp,#88]                                   	@IRInst:add	%t85	a	%t84
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t85	1
	mov r4,#1                                         	@IRInst:assign	%t85	1
	str r4,[r5]                                       	@IRInst:assign	%t85	1
	mov r4,#6                                         	@IRInst:mul	%t86	6	4
	mov r5,#4                                         	@IRInst:mul	%t86	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t86	6	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t86	6	4
	add r4,fp,#4                                      	@IRInst:add	%t87	a	%t86
	ldr r5,[fp,#92]                                   	@IRInst:add	%t87	a	%t86
	add r6,r4,r5                                      	@IRInst:add	%t87	a	%t86
	str r6,[fp,#96]                                   	@IRInst:add	%t87	a	%t86
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t87	6
	mov r4,#6                                         	@IRInst:assign	%t87	6
	str r4,[r5]                                       	@IRInst:assign	%t87	6
	mov r4,#7                                         	@IRInst:mul	%t88	7	4
	mov r5,#4                                         	@IRInst:mul	%t88	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t88	7	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t88	7	4
	add r4,fp,#4                                      	@IRInst:add	%t89	a	%t88
	ldr r5,[fp,#100]                                  	@IRInst:add	%t89	a	%t88
	add r6,r4,r5                                      	@IRInst:add	%t89	a	%t88
	str r6,[fp,#104]                                  	@IRInst:add	%t89	a	%t88
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t89	5
	mov r4,#5                                         	@IRInst:assign	%t89	5
	str r4,[r5]                                       	@IRInst:assign	%t89	5
	mov r4,#8                                         	@IRInst:mul	%t90	8	4
	mov r5,#4                                         	@IRInst:mul	%t90	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t90	8	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t90	8	4
	add r4,fp,#4                                      	@IRInst:add	%t91	a	%t90
	ldr r5,[fp,#108]                                  	@IRInst:add	%t91	a	%t90
	add r6,r4,r5                                      	@IRInst:add	%t91	a	%t90
	str r6,[fp,#112]                                  	@IRInst:add	%t91	a	%t90
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t91	7
	mov r4,#7                                         	@IRInst:assign	%t91	7
	str r4,[r5]                                       	@IRInst:assign	%t91	7
	mov r4,#9                                         	@IRInst:mul	%t92	9	4
	mov r5,#4                                         	@IRInst:mul	%t92	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t92	9	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t92	9	4
	add r4,fp,#4                                      	@IRInst:add	%t93	a	%t92
	ldr r5,[fp,#116]                                  	@IRInst:add	%t93	a	%t92
	add r6,r4,r5                                      	@IRInst:add	%t93	a	%t92
	str r6,[fp,#120]                                  	@IRInst:add	%t93	a	%t92
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t93	8
	mov r4,#8                                         	@IRInst:assign	%t93	8
	str r4,[r5]                                       	@IRInst:assign	%t93	8
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#124]                                  	@IRInst:assign	i	0
	add r0,fp,#4                                      	@IRInst:assign	r0	a
	ldr r1,.global_3_n                                	@IRInst:assign	r1	n
	ldr r1,[r1]                                       	@IRInst:assign	r1	n
	bl heap_sort                                      
	str r0,[fp,#128]                                  	@IRInst:assign	%t95	r0
	ldr r4,[fp,#128]                                  	@IRInst:assign	i	%t95
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t95
.L25:
	ldr r4,[fp,#124]                                  	@IRInst:blt	%t96	i	n
	ldr r5,.global_3_n                                	@IRInst:blt	%t96	i	n
	ldr r5,[r5]                                       	@IRInst:blt	%t96	i	n
	cmp r4,r5                                         	@IRInst:blt	%t96	i	n
	blt .L26                                          
	b .L27                                            
.L26:
	ldr r4,[fp,#124]                                  	@IRInst:mul	%t98	i	4
	mov r5,#4                                         	@IRInst:mul	%t98	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t98	i	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t98	i	4
	add r4,fp,#4                                      	@IRInst:add	%t99	a	%t98
	ldr r5,[fp,#140]                                  	@IRInst:add	%t99	a	%t98
	add r6,r4,r5                                      	@IRInst:add	%t99	a	%t98
	str r6,[fp,#144]                                  	@IRInst:add	%t99	a	%t98
	ldr r4,[fp,#144]                                  	@IRInst:assign	%t100	%t99
	ldr r4,[r4]                                       	@IRInst:assign	%t100	%t99
	str r4,[fp,#148]                                  	@IRInst:assign	%t100	%t99
	ldr r4,[fp,#148]                                  	@IRInst:assign	tmp	%t100
	str r4,[fp,#136]                                  	@IRInst:assign	tmp	%t100
	ldr r0,[fp,#136]                                  	@IRInst:assign	r0	tmp
	bl putint                                         
	mov r4,#10                                        	@IRInst:assign	tmp	10
	str r4,[fp,#136]                                  	@IRInst:assign	tmp	10
	ldr r0,[fp,#136]                                  	@IRInst:assign	r0	tmp
	bl putch                                          
	ldr r4,[fp,#124]                                  	@IRInst:add	%t101	i	1
	mov r5,#1                                         	@IRInst:add	%t101	i	1
	add r6,r4,r5                                      	@IRInst:add	%t101	i	1
	str r6,[fp,#152]                                  	@IRInst:add	%t101	i	1
	ldr r4,[fp,#152]                                  	@IRInst:assign	i	%t101
	str r4,[fp,#124]                                  	@IRInst:assign	i	%t101
	b .L25                                            
.L27:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L24                                            
.L24:
	ldr r0,[fp]                                       
	add fp,fp,#156                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
