.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
a:
        .long   0
b:
        .long   0
.text
.global_0_a:
        .long   a
.global_0_b:
        .long   b
.global main
.type main, %function
main:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#24                                     
	add fp,sp,#0                                      
	bl getint                                         
	str r0,[fp,#4]                                    	@IRInst:assign	%t3	r0
	ldr r4,[fp,#4]                                    	@IRInst:assign	a	%t3
	ldr r9,.global_0_a                                	@IRInst:assign	a	%t3
	str r4,[r9]                                       	@IRInst:assign	a	%t3
	bl getint                                         
	str r0,[fp,#8]                                    	@IRInst:assign	%t4	r0
	ldr r4,[fp,#8]                                    	@IRInst:assign	b	%t4
	ldr r9,.global_0_b                                	@IRInst:assign	b	%t4
	str r4,[r9]                                       	@IRInst:assign	b	%t4
	ldr r4,.global_0_a                                	@IRInst:beq	%t6	a	b
	ldr r4,[r4]                                       	@IRInst:beq	%t6	a	b
	ldr r5,.global_0_b                                	@IRInst:beq	%t6	a	b
	ldr r5,[r5]                                       	@IRInst:beq	%t6	a	b
	cmp r4,r5                                         	@IRInst:beq	%t6	a	b
	beq .L6                                           
	b .L4                                             
.L6:
	ldr r4,.global_0_a                                	@IRInst:beq	%t7	a	3
	ldr r4,[r4]                                       	@IRInst:beq	%t7	a	3
	mov r5,#3                                         	@IRInst:beq	%t7	a	3
	cmp r4,r5                                         	@IRInst:beq	%t7	a	3
	beq .L4                                           
	b .L3                                             
.L3:
	mov r4,#1                                         	@IRInst:assign	c	1
	str r4,[fp,#12]                                   	@IRInst:assign	c	1
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:assign	c	0
	str r4,[fp,#12]                                   	@IRInst:assign	c	0
.L5:
	ldr r4,[fp,#12]                                   	@IRInst:assign		c
	str r4,[fp]                                       	@IRInst:assign		c
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#24                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
