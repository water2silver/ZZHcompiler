.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global my_getint
.type my_getint, %function
my_getint:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#60                                     
	add fp,sp,#0                                      
	mov r4,#0                                         
	str r4,[fp,#4]                                    
.L3:
.L4:
	bl getch                                          
	str r0,[fp,#12]                                   	@IRInst:assign	%t3	r0
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t5	%t3	ascii_0
	ldr r5,[fp,#16]                                   	@IRInst:sub	%t5	%t3	ascii_0
	sub r6,r4,r5                                      	@IRInst:sub	%t5	%t3	ascii_0
	str r6,[fp,#20]                                   	@IRInst:sub	%t5	%t3	ascii_0
	ldr r4,[fp,#20]                                   	@IRInst:assign	c	%t5
	str r4,[fp,#8]                                    	@IRInst:assign	c	%t5
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t6	c	0
	mov r5,#0                                         	@IRInst:blt	%t6	c	0
	cmp r4,r5                                         	@IRInst:blt	%t6	c	0
	blt .L6                                           
	b .L9                                             
.L9:
	ldr r4,[fp,#8]                                    	@IRInst:bgt	%t7	c	9
	mov r5,#9                                         	@IRInst:bgt	%t7	c	9
	cmp r4,r5                                         	@IRInst:bgt	%t7	c	9
	bgt .L6                                           
	b .L7                                             
.L6:
	b .L3                                             
	b .L8                                             
.L7:
	b .L5                                             
.L8:
	b .L3                                             
.L5:
	ldr r4,[fp,#8]                                    	@IRInst:assign	sum	c
	str r4,[fp,#4]                                    	@IRInst:assign	sum	c
.L10:
.L11:
	bl getch                                          
	str r0,[fp,#32]                                   	@IRInst:assign	%t8	r0
	ldr r4,[fp,#32]                                   	@IRInst:sub	%t10	%t8	ascii_0
	ldr r5,[fp,#36]                                   	@IRInst:sub	%t10	%t8	ascii_0
	sub r6,r4,r5                                      	@IRInst:sub	%t10	%t8	ascii_0
	str r6,[fp,#40]                                   	@IRInst:sub	%t10	%t8	ascii_0
	ldr r4,[fp,#40]                                   	@IRInst:assign	c	%t10
	str r4,[fp,#8]                                    	@IRInst:assign	c	%t10
	ldr r4,[fp,#8]                                    	@IRInst:bge	%t11	c	0
	mov r5,#0                                         	@IRInst:bge	%t11	c	0
	cmp r4,r5                                         	@IRInst:bge	%t11	c	0
	bge .L16                                          
	b .L14                                            
.L16:
	ldr r4,[fp,#8]                                    	@IRInst:ble	%t12	c	9
	mov r5,#9                                         	@IRInst:ble	%t12	c	9
	cmp r4,r5                                         	@IRInst:ble	%t12	c	9
	ble .L13                                          
	b .L14                                            
.L13:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t13	sum	10
	mov r5,#10                                        	@IRInst:mul	%t13	sum	10
	mul r6,r4,r5                                      	@IRInst:mul	%t13	sum	10
	str r6,[fp,#52]                                   	@IRInst:mul	%t13	sum	10
	ldr r4,[fp,#52]                                   	@IRInst:add	%t14	%t13	c
	ldr r5,[fp,#8]                                    	@IRInst:add	%t14	%t13	c
	add r6,r4,r5                                      	@IRInst:add	%t14	%t13	c
	str r6,[fp,#56]                                   	@IRInst:add	%t14	%t13	c
	ldr r4,[fp,#56]                                   	@IRInst:assign	sum	%t14
	str r4,[fp,#4]                                    	@IRInst:assign	sum	%t14
	b .L15                                            
.L14:
	b .L12                                            
.L15:
	b .L10                                            
.L12:
	ldr r4,[fp,#4]                                    	@IRInst:assign		sum
	str r4,[fp]                                       	@IRInst:assign		sum
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#60                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global my_putint
.type my_putint, %function
my_putint:
.L17:
	push {r10,fp,lr}                                  
	sub sp,sp,#132                                    
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	a	r0
	mov r4,#0                                         
	str r4,[fp,#68]                                   
.L19:
	ldr r4,[fp]                                       	@IRInst:bgt	%t20	a	0
	mov r5,#0                                         	@IRInst:bgt	%t20	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t20	a	0
	bgt .L20                                          
	b .L21                                            
.L20:
	ldr r4,[fp]                                       	@IRInst:sdiv	%t24	a	10
	mov r5,#10                                        	@IRInst:sdiv	%t24	a	10
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t24	a	10
	str r6,[fp,#88]                                   	@IRInst:sdiv	%t24	a	10
	ldr r4,[fp,#88]                                   	@IRInst:mul	%t25	%t24	10
	mov r5,#10                                        	@IRInst:mul	%t25	%t24	10
	mul r6,r4,r5                                      	@IRInst:mul	%t25	%t24	10
	str r6,[fp,#92]                                   	@IRInst:mul	%t25	%t24	10
	ldr r4,[fp]                                       	@IRInst:sub	%t23	a	%t25
	ldr r5,[fp,#92]                                   	@IRInst:sub	%t23	a	%t25
	sub r6,r4,r5                                      	@IRInst:sub	%t23	a	%t25
	str r6,[fp,#84]                                   	@IRInst:sub	%t23	a	%t25
	ldr r4,[fp,#84]                                   	@IRInst:add	%t27	%t23	ascii_0
	ldr r5,[fp,#96]                                   	@IRInst:add	%t27	%t23	ascii_0
	add r6,r4,r5                                      	@IRInst:add	%t27	%t23	ascii_0
	str r6,[fp,#100]                                  	@IRInst:add	%t27	%t23	ascii_0
	ldr r4,[fp,#68]                                   	@IRInst:mul	%t21	i	4
	mov r5,#4                                         	@IRInst:mul	%t21	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t21	i	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t21	i	4
	add r4,fp,#4                                      	@IRInst:add	%t22	b	%t21
	ldr r5,[fp,#76]                                   	@IRInst:add	%t22	b	%t21
	add r6,r4,r5                                      	@IRInst:add	%t22	b	%t21
	str r6,[fp,#80]                                   	@IRInst:add	%t22	b	%t21
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t22	%t27
	ldr r4,[fp,#100]                                  	@IRInst:assign	%t22	%t27
	str r4,[r5]                                       	@IRInst:assign	%t22	%t27
	ldr r4,[fp]                                       	@IRInst:sdiv	%t28	a	10
	mov r5,#10                                        	@IRInst:sdiv	%t28	a	10
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t28	a	10
	str r6,[fp,#104]                                  	@IRInst:sdiv	%t28	a	10
	ldr r4,[fp,#104]                                  	@IRInst:assign	a	%t28
	str r4,[fp]                                       	@IRInst:assign	a	%t28
	ldr r4,[fp,#68]                                   	@IRInst:add	%t29	i	1
	mov r5,#1                                         	@IRInst:add	%t29	i	1
	add r6,r4,r5                                      	@IRInst:add	%t29	i	1
	str r6,[fp,#108]                                  	@IRInst:add	%t29	i	1
	ldr r4,[fp,#108]                                  	@IRInst:assign	i	%t29
	str r4,[fp,#68]                                   	@IRInst:assign	i	%t29
	b .L19                                            
.L21:
.L22:
	ldr r4,[fp,#68]                                   	@IRInst:bgt	%t30	i	0
	mov r5,#0                                         	@IRInst:bgt	%t30	i	0
	cmp r4,r5                                         	@IRInst:bgt	%t30	i	0
	bgt .L23                                          
	b .L24                                            
.L23:
	ldr r4,[fp,#68]                                   	@IRInst:sub	%t31	i	1
	mov r5,#1                                         	@IRInst:sub	%t31	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t31	i	1
	str r6,[fp,#116]                                  	@IRInst:sub	%t31	i	1
	ldr r4,[fp,#116]                                  	@IRInst:assign	i	%t31
	str r4,[fp,#68]                                   	@IRInst:assign	i	%t31
	ldr r4,[fp,#68]                                   	@IRInst:mul	%t32	i	4
	mov r5,#4                                         	@IRInst:mul	%t32	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t32	i	4
	str r6,[fp,#120]                                  	@IRInst:mul	%t32	i	4
	add r4,fp,#4                                      	@IRInst:add	%t33	b	%t32
	ldr r5,[fp,#120]                                  	@IRInst:add	%t33	b	%t32
	add r6,r4,r5                                      	@IRInst:add	%t33	b	%t32
	str r6,[fp,#124]                                  	@IRInst:add	%t33	b	%t32
	ldr r4,[fp,#124]                                  	@IRInst:assign	%t34	%t33
	ldr r4,[r4]                                       	@IRInst:assign	%t34	%t33
	str r4,[fp,#128]                                  	@IRInst:assign	%t34	%t33
	ldr r0,[fp,#128]                                  	@IRInst:assign	r0	%t34
	bl putch                                          
	b .L22                                            
.L24:
.L18:
	add fp,fp,#132                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global main
.type main, %function
main:
.L25:
	push {r10,fp,lr}                                  
	sub sp,sp,#28                                     
	add fp,sp,#0                                      
	bl my_getint                                      
	str r0,[fp,#8]                                    	@IRInst:assign	%t37	r0
	ldr r4,[fp,#8]                                    
	str r4,[fp,#4]                                    
.L27:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t38	n	0
	mov r5,#0                                         	@IRInst:bgt	%t38	n	0
	cmp r4,r5                                         	@IRInst:bgt	%t38	n	0
	bgt .L28                                          
	b .L29                                            
.L28:
	bl my_getint                                      
	str r0,[fp,#20]                                   	@IRInst:assign	%t40	r0
	ldr r4,[fp,#20]                                   
	str r4,[fp,#16]                                   
	ldr r0,[fp,#16]                                   	@IRInst:assign	r0	m
	bl my_putint                                      
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t41	n	1
	mov r5,#1                                         	@IRInst:sub	%t41	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t41	n	1
	str r6,[fp,#24]                                   	@IRInst:sub	%t41	n	1
	ldr r4,[fp,#24]                                   	@IRInst:assign	n	%t41
	str r4,[fp,#4]                                    	@IRInst:assign	n	%t41
	b .L27                                            
.L29:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L26                                            
.L26:
	ldr r0,[fp]                                       
	add fp,fp,#28                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
