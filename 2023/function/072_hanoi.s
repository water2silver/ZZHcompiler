.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global move
.type move, %function
move:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#8                                      
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	str r1,[fp,#4]                                    	@IRInst:assign	y	r1
	ldr r0,[fp]                                       	@IRInst:assign	r0	x
	bl putint                                         
	mov r0,#32                                        	@IRInst:assign	r0	32
	bl putch                                          
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	y
	bl putint                                         
	mov r0,#44                                        	@IRInst:assign	r0	44
	bl putch                                          
	mov r0,#32                                        	@IRInst:assign	r0	32
	bl putch                                          
.L2:
	add fp,fp,#8                                      
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global hanoi
.type hanoi, %function
hanoi:
.L3:
	push {r10,fp,lr}                                  
	sub sp,sp,#28                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	n	r0
	str r1,[fp,#4]                                    	@IRInst:assign	one	r1
	str r2,[fp,#8]                                    	@IRInst:assign	two	r2
	str r3,[fp,#12]                                   	@IRInst:assign	three	r3
	ldr r4,[fp]                                       	@IRInst:beq	%t14	n	1
	mov r5,#1                                         	@IRInst:beq	%t14	n	1
	cmp r4,r5                                         	@IRInst:beq	%t14	n	1
	beq .L5                                           
	b .L6                                             
.L5:
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	one
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	three
	bl move                                           
	b .L7                                             
.L6:
	ldr r4,[fp]                                       	@IRInst:sub	%t15	n	1
	mov r5,#1                                         	@IRInst:sub	%t15	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t15	n	1
	str r6,[fp,#20]                                   	@IRInst:sub	%t15	n	1
	ldr r0,[fp,#20]                                   	@IRInst:assign	r0	%t15
	ldr r1,[fp,#4]                                    	@IRInst:assign	r1	one
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	three
	ldr r3,[fp,#8]                                    	@IRInst:assign	r3	two
	bl hanoi                                          
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	one
	ldr r1,[fp,#12]                                   	@IRInst:assign	r1	three
	bl move                                           
	ldr r4,[fp]                                       	@IRInst:sub	%t16	n	1
	mov r5,#1                                         	@IRInst:sub	%t16	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t16	n	1
	str r6,[fp,#24]                                   	@IRInst:sub	%t16	n	1
	ldr r0,[fp,#24]                                   	@IRInst:assign	r0	%t16
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	two
	ldr r2,[fp,#4]                                    	@IRInst:assign	r2	one
	ldr r3,[fp,#12]                                   	@IRInst:assign	r3	three
	bl hanoi                                          
.L7:
.L4:
	add fp,fp,#28                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global main
.type main, %function
main:
.L8:
	push {r10,fp,lr}                                  
	sub sp,sp,#24                                     
	add fp,sp,#0                                      
	bl getint                                         
	str r0,[fp,#8]                                    	@IRInst:assign	%t19	r0
	ldr r4,[fp,#8]                                    
	str r4,[fp,#4]                                    
.L10:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t20	n	0
	mov r5,#0                                         	@IRInst:bgt	%t20	n	0
	cmp r4,r5                                         	@IRInst:bgt	%t20	n	0
	bgt .L11                                          
	b .L12                                            
.L11:
	bl getint                                         
	str r0,[fp,#16]                                   	@IRInst:assign	%t21	r0
	ldr r0,[fp,#16]                                   	@IRInst:assign	r0	%t21
	mov r1,#1                                         	@IRInst:assign	r1	1
	mov r2,#2                                         	@IRInst:assign	r2	2
	mov r3,#3                                         	@IRInst:assign	r3	3
	bl hanoi                                          
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t22	n	1
	mov r5,#1                                         	@IRInst:sub	%t22	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t22	n	1
	str r6,[fp,#20]                                   	@IRInst:sub	%t22	n	1
	ldr r4,[fp,#20]                                   	@IRInst:assign	n	%t22
	str r4,[fp,#4]                                    	@IRInst:assign	n	%t22
	b .L10                                            
.L12:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L9                                             
.L9:
	ldr r0,[fp]                                       
	add fp,fp,#24                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
