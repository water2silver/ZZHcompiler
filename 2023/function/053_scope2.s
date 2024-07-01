.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
k:
        .long   0
.text
.global_0_k:
        .long   k
.global main
.type main, %function
main:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#52                                     
	add fp,sp,#0                                      
	ldr r4,=3389                                      	@IRInst:assign	k	3389
	ldr r9,.global_0_k                                	@IRInst:assign	k	3389
	str r4,[r9]                                       	@IRInst:assign	k	3389
	ldr r4,.global_0_k                                	@IRInst:blt	%t2	k	10000
	ldr r4,[r4]                                       	@IRInst:blt	%t2	k	10000
	ldr r5,=10000                                     	@IRInst:blt	%t2	k	10000
	cmp r4,r5                                         	@IRInst:blt	%t2	k	10000
	blt .L3                                           
	b .L4                                             
.L3:
	ldr r4,.global_0_k                                	@IRInst:add	%t3	k	1
	ldr r4,[r4]                                       	@IRInst:add	%t3	k	1
	mov r5,#1                                         	@IRInst:add	%t3	k	1
	add r6,r4,r5                                      	@IRInst:add	%t3	k	1
	str r6,[fp,#8]                                    	@IRInst:add	%t3	k	1
	ldr r4,[fp,#8]                                    	@IRInst:assign	k	%t3
	ldr r9,.global_0_k                                	@IRInst:assign	k	%t3
	str r4,[r9]                                       	@IRInst:assign	k	%t3
	mov r4,#112                                       
	str r4,[fp,#12]                                   
.L6:
	ldr r4,[fp,#12]                                   	@IRInst:bgt	%t5	k	10
	mov r5,#10                                        	@IRInst:bgt	%t5	k	10
	cmp r4,r5                                         	@IRInst:bgt	%t5	k	10
	bgt .L7                                           
	b .L8                                             
.L7:
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t6	k	88
	mov r5,#88                                        	@IRInst:sub	%t6	k	88
	sub r6,r4,r5                                      	@IRInst:sub	%t6	k	88
	str r6,[fp,#20]                                   	@IRInst:sub	%t6	k	88
	ldr r4,[fp,#20]                                   	@IRInst:assign	k	%t6
	str r4,[fp,#12]                                   	@IRInst:assign	k	%t6
	ldr r4,[fp,#12]                                   	@IRInst:blt	%t7	k	1000
	mov r5,#1000                                      	@IRInst:blt	%t7	k	1000
	cmp r4,r5                                         	@IRInst:blt	%t7	k	1000
	blt .L9                                           
	b .L10                                            
.L9:
	mov r4,#9                                         
	str r4,[fp,#28]                                   
	mov r4,#11                                        
	str r4,[fp,#32]                                   
	mov r4,#10                                        	@IRInst:assign	g	10
	str r4,[fp,#28]                                   	@IRInst:assign	g	10
	ldr r4,[fp,#12]                                   	@IRInst:sub	%t10	k	g
	ldr r5,[fp,#28]                                   	@IRInst:sub	%t10	k	g
	sub r6,r4,r5                                      	@IRInst:sub	%t10	k	g
	str r6,[fp,#36]                                   	@IRInst:sub	%t10	k	g
	ldr r4,[fp,#36]                                   	@IRInst:assign	k	%t10
	str r4,[fp,#12]                                   	@IRInst:assign	k	%t10
	mov r4,#11                                        
	str r4,[fp,#40]                                   
	ldr r4,[fp,#12]                                   	@IRInst:add	%t12	k	g
	ldr r5,[fp,#40]                                   	@IRInst:add	%t12	k	g
	add r6,r4,r5                                      	@IRInst:add	%t12	k	g
	str r6,[fp,#44]                                   	@IRInst:add	%t12	k	g
	ldr r4,[fp,#44]                                   	@IRInst:add	%t13	%t12	l
	ldr r5,[fp,#32]                                   	@IRInst:add	%t13	%t12	l
	add r6,r4,r5                                      	@IRInst:add	%t13	%t12	l
	str r6,[fp,#48]                                   	@IRInst:add	%t13	%t12	l
	ldr r4,[fp,#48]                                   	@IRInst:assign	k	%t13
	str r4,[fp,#12]                                   	@IRInst:assign	k	%t13
.L10:
.L11:
	b .L6                                             
.L8:
	ldr r0,[fp,#12]                                   	@IRInst:assign	r0	k
	bl putint                                         
.L4:
.L5:
	ldr r4,.global_0_k                                	@IRInst:assign		k
	ldr r4,[r4]                                       	@IRInst:assign		k
	str r4,[fp]                                       	@IRInst:assign		k
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#52                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
