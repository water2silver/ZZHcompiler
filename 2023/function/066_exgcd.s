.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global exgcd
.type exgcd, %function
exgcd:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#128                                    
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	a	r0
	str r1,[fp,#8]                                    	@IRInst:assign	b	r1
	str r2,[fp,#12]                                   	@IRInst:assign	x	r2
	str r3,[fp,#16]                                   	@IRInst:assign	y	r3
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t9	b	0
	mov r5,#0                                         	@IRInst:beq	%t9	b	0
	cmp r4,r5                                         	@IRInst:beq	%t9	b	0
	beq .L3                                           
	b .L4                                             
.L3:
	mov r4,#0                                         	@IRInst:mul	%t10	0	4
	mov r5,#4                                         	@IRInst:mul	%t10	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t10	0	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t10	0	4
	ldr r4,[fp,#12]                                   	@IRInst:add	%t11	x	%t10
	ldr r5,[fp,#24]                                   	@IRInst:add	%t11	x	%t10
	add r6,r4,r5                                      	@IRInst:add	%t11	x	%t10
	str r6,[fp,#28]                                   	@IRInst:add	%t11	x	%t10
	ldr r5,[fp,#28]                                   	@IRInst:assign	%t11	1
	mov r4,#1                                         	@IRInst:assign	%t11	1
	str r4,[r5]                                       	@IRInst:assign	%t11	1
	mov r4,#0                                         	@IRInst:mul	%t12	0	4
	mov r5,#4                                         	@IRInst:mul	%t12	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t12	0	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t12	0	4
	ldr r4,[fp,#16]                                   	@IRInst:add	%t13	y	%t12
	ldr r5,[fp,#32]                                   	@IRInst:add	%t13	y	%t12
	add r6,r4,r5                                      	@IRInst:add	%t13	y	%t12
	str r6,[fp,#36]                                   	@IRInst:add	%t13	y	%t12
	ldr r5,[fp,#36]                                   	@IRInst:assign	%t13	0
	mov r4,#0                                         	@IRInst:assign	%t13	0
	str r4,[r5]                                       	@IRInst:assign	%t13	0
	ldr r4,[fp,#4]                                    	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L2                                             
	b .L5                                             
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:sdiv	%t16	a	b
	ldr r5,[fp,#8]                                    	@IRInst:sdiv	%t16	a	b
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t16	a	b
	str r6,[fp,#48]                                   	@IRInst:sdiv	%t16	a	b
	ldr r4,[fp,#48]                                   	@IRInst:mul	%t17	%t16	b
	ldr r5,[fp,#8]                                    	@IRInst:mul	%t17	%t16	b
	mul r6,r4,r5                                      	@IRInst:mul	%t17	%t16	b
	str r6,[fp,#52]                                   	@IRInst:mul	%t17	%t16	b
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t15	a	%t17
	ldr r5,[fp,#52]                                   	@IRInst:sub	%t15	a	%t17
	sub r6,r4,r5                                      	@IRInst:sub	%t15	a	%t17
	str r6,[fp,#44]                                   	@IRInst:sub	%t15	a	%t17
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	b
	ldr r1,[fp,#44]                                   	@IRInst:assign	r1	%t15
	ldr r2,[fp,#12]                                   	@IRInst:assign	r2	x
	ldr r3,[fp,#16]                                   	@IRInst:assign	r3	y
	bl exgcd                                          
	str r0,[fp,#56]                                   	@IRInst:assign	%t18	r0
	ldr r4,[fp,#56]                                   
	str r4,[fp,#40]                                   
	mov r4,#0                                         	@IRInst:mul	%t20	0	4
	mov r5,#4                                         	@IRInst:mul	%t20	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t20	0	4
	str r6,[fp,#64]                                   	@IRInst:mul	%t20	0	4
	ldr r4,[fp,#12]                                   	@IRInst:add	%t21	x	%t20
	ldr r5,[fp,#64]                                   	@IRInst:add	%t21	x	%t20
	add r6,r4,r5                                      	@IRInst:add	%t21	x	%t20
	str r6,[fp,#68]                                   	@IRInst:add	%t21	x	%t20
	ldr r4,[fp,#68]                                   	@IRInst:assign	%t22	%t21
	ldr r4,[r4]                                       	@IRInst:assign	%t22	%t21
	str r4,[fp,#72]                                   	@IRInst:assign	%t22	%t21
	ldr r4,[fp,#72]                                   
	str r4,[fp,#60]                                   
	mov r4,#0                                         	@IRInst:mul	%t25	0	4
	mov r5,#4                                         	@IRInst:mul	%t25	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t25	0	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t25	0	4
	ldr r4,[fp,#16]                                   	@IRInst:add	%t26	y	%t25
	ldr r5,[fp,#84]                                   	@IRInst:add	%t26	y	%t25
	add r6,r4,r5                                      	@IRInst:add	%t26	y	%t25
	str r6,[fp,#88]                                   	@IRInst:add	%t26	y	%t25
	ldr r4,[fp,#88]                                   	@IRInst:assign	%t27	%t26
	ldr r4,[r4]                                       	@IRInst:assign	%t27	%t26
	str r4,[fp,#92]                                   	@IRInst:assign	%t27	%t26
	mov r4,#0                                         	@IRInst:mul	%t23	0	4
	mov r5,#4                                         	@IRInst:mul	%t23	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t23	0	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t23	0	4
	ldr r4,[fp,#12]                                   	@IRInst:add	%t24	x	%t23
	ldr r5,[fp,#76]                                   	@IRInst:add	%t24	x	%t23
	add r6,r4,r5                                      	@IRInst:add	%t24	x	%t23
	str r6,[fp,#80]                                   	@IRInst:add	%t24	x	%t23
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t24	%t27
	ldr r4,[fp,#92]                                   	@IRInst:assign	%t24	%t27
	str r4,[r5]                                       	@IRInst:assign	%t24	%t27
	ldr r4,[fp,#4]                                    	@IRInst:sdiv	%t30	a	b
	ldr r5,[fp,#8]                                    	@IRInst:sdiv	%t30	a	b
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t30	a	b
	str r6,[fp,#104]                                  	@IRInst:sdiv	%t30	a	b
	mov r4,#0                                         	@IRInst:mul	%t31	0	4
	mov r5,#4                                         	@IRInst:mul	%t31	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	0	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t31	0	4
	ldr r4,[fp,#16]                                   	@IRInst:add	%t32	y	%t31
	ldr r5,[fp,#108]                                  	@IRInst:add	%t32	y	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	y	%t31
	str r6,[fp,#112]                                  	@IRInst:add	%t32	y	%t31
	ldr r4,[fp,#112]                                  	@IRInst:assign	%t33	%t32
	ldr r4,[r4]                                       	@IRInst:assign	%t33	%t32
	str r4,[fp,#116]                                  	@IRInst:assign	%t33	%t32
	ldr r4,[fp,#104]                                  	@IRInst:mul	%t34	%t30	%t33
	ldr r5,[fp,#116]                                  	@IRInst:mul	%t34	%t30	%t33
	mul r6,r4,r5                                      	@IRInst:mul	%t34	%t30	%t33
	str r6,[fp,#120]                                  	@IRInst:mul	%t34	%t30	%t33
	ldr r4,[fp,#60]                                   	@IRInst:sub	%t35	t	%t34
	ldr r5,[fp,#120]                                  	@IRInst:sub	%t35	t	%t34
	sub r6,r4,r5                                      	@IRInst:sub	%t35	t	%t34
	str r6,[fp,#124]                                  	@IRInst:sub	%t35	t	%t34
	mov r4,#0                                         	@IRInst:mul	%t28	0	4
	mov r5,#4                                         	@IRInst:mul	%t28	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t28	0	4
	str r6,[fp,#96]                                   	@IRInst:mul	%t28	0	4
	ldr r4,[fp,#16]                                   	@IRInst:add	%t29	y	%t28
	ldr r5,[fp,#96]                                   	@IRInst:add	%t29	y	%t28
	add r6,r4,r5                                      	@IRInst:add	%t29	y	%t28
	str r6,[fp,#100]                                  	@IRInst:add	%t29	y	%t28
	ldr r5,[fp,#100]                                  	@IRInst:assign	%t29	%t35
	ldr r4,[fp,#124]                                  	@IRInst:assign	%t29	%t35
	str r4,[r5]                                       	@IRInst:assign	%t29	%t35
	ldr r4,[fp,#40]                                   	@IRInst:assign		r
	str r4,[fp]                                       	@IRInst:assign		r
	b .L2                                             
.L5:
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#128                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global main
.type main, %function
main:
.L6:
	push {r10,fp,lr}                                  
	sub sp,sp,#76                                     
	add fp,sp,#0                                      
	mov r4,#7                                         
	str r4,[fp,#4]                                    
	mov r4,#15                                        
	str r4,[fp,#8]                                    
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	a
	ldr r1,[fp,#8]                                    	@IRInst:assign	r1	b
	add r2,fp,#12                                     	@IRInst:assign	r2	x
	add r3,fp,#12                                     	@IRInst:assign	r3	y
	bl exgcd                                          
	str r0,[fp,#12]                                   	@IRInst:assign	%t41	r0
	mov r4,#0                                         	@IRInst:mul	%t44	0	4
	mov r5,#4                                         	@IRInst:mul	%t44	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	0	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t44	0	4
	add r4,fp,#12                                     	@IRInst:add	%t45	x	%t44
	ldr r5,[fp,#24]                                   	@IRInst:add	%t45	x	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	x	%t44
	str r6,[fp,#28]                                   	@IRInst:add	%t45	x	%t44
	ldr r4,[fp,#28]                                   	@IRInst:assign	%t46	%t45
	ldr r4,[r4]                                       	@IRInst:assign	%t46	%t45
	str r4,[fp,#32]                                   	@IRInst:assign	%t46	%t45
	ldr r4,[fp,#32]                                   	@IRInst:sdiv	%t48	%t46	b
	ldr r5,[fp,#8]                                    	@IRInst:sdiv	%t48	%t46	b
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t48	%t46	b
	str r6,[fp,#40]                                   	@IRInst:sdiv	%t48	%t46	b
	ldr r4,[fp,#40]                                   	@IRInst:mul	%t49	%t48	b
	ldr r5,[fp,#8]                                    	@IRInst:mul	%t49	%t48	b
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t48	b
	str r6,[fp,#44]                                   	@IRInst:mul	%t49	%t48	b
	ldr r4,[fp,#32]                                   	@IRInst:sub	%t47	%t46	%t49
	ldr r5,[fp,#44]                                   	@IRInst:sub	%t47	%t46	%t49
	sub r6,r4,r5                                      	@IRInst:sub	%t47	%t46	%t49
	str r6,[fp,#36]                                   	@IRInst:sub	%t47	%t46	%t49
	ldr r4,[fp,#36]                                   	@IRInst:add	%t50	%t47	b
	ldr r5,[fp,#8]                                    	@IRInst:add	%t50	%t47	b
	add r6,r4,r5                                      	@IRInst:add	%t50	%t47	b
	str r6,[fp,#48]                                   	@IRInst:add	%t50	%t47	b
	ldr r4,[fp,#48]                                   	@IRInst:sdiv	%t52	%t50	b
	ldr r5,[fp,#8]                                    	@IRInst:sdiv	%t52	%t50	b
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t52	%t50	b
	str r6,[fp,#56]                                   	@IRInst:sdiv	%t52	%t50	b
	ldr r4,[fp,#56]                                   	@IRInst:mul	%t53	%t52	b
	ldr r5,[fp,#8]                                    	@IRInst:mul	%t53	%t52	b
	mul r6,r4,r5                                      	@IRInst:mul	%t53	%t52	b
	str r6,[fp,#60]                                   	@IRInst:mul	%t53	%t52	b
	ldr r4,[fp,#48]                                   	@IRInst:sub	%t51	%t50	%t53
	ldr r5,[fp,#60]                                   	@IRInst:sub	%t51	%t50	%t53
	sub r6,r4,r5                                      	@IRInst:sub	%t51	%t50	%t53
	str r6,[fp,#52]                                   	@IRInst:sub	%t51	%t50	%t53
	mov r4,#0                                         	@IRInst:mul	%t42	0	4
	mov r5,#4                                         	@IRInst:mul	%t42	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t42	0	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t42	0	4
	add r4,fp,#12                                     	@IRInst:add	%t43	x	%t42
	ldr r5,[fp,#16]                                   	@IRInst:add	%t43	x	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	x	%t42
	str r6,[fp,#20]                                   	@IRInst:add	%t43	x	%t42
	ldr r5,[fp,#20]                                   	@IRInst:assign	%t43	%t51
	ldr r4,[fp,#52]                                   	@IRInst:assign	%t43	%t51
	str r4,[r5]                                       	@IRInst:assign	%t43	%t51
	mov r4,#0                                         	@IRInst:mul	%t54	0	4
	mov r5,#4                                         	@IRInst:mul	%t54	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t54	0	4
	str r6,[fp,#64]                                   	@IRInst:mul	%t54	0	4
	add r4,fp,#12                                     	@IRInst:add	%t55	x	%t54
	ldr r5,[fp,#64]                                   	@IRInst:add	%t55	x	%t54
	add r6,r4,r5                                      	@IRInst:add	%t55	x	%t54
	str r6,[fp,#68]                                   	@IRInst:add	%t55	x	%t54
	ldr r4,[fp,#68]                                   	@IRInst:assign	%t56	%t55
	ldr r4,[r4]                                       	@IRInst:assign	%t56	%t55
	str r4,[fp,#72]                                   	@IRInst:assign	%t56	%t55
	ldr r0,[fp,#72]                                   	@IRInst:assign	r0	%t56
	bl putint                                         
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L7                                             
.L7:
	ldr r0,[fp]                                       
	add fp,fp,#76                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
