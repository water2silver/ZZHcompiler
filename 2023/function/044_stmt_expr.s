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
	sub sp,sp,#32                                     
	add fp,sp,#0                                      
	mov r4,#0                                         
	str r4,[fp,#4]                                    
	mov r4,#1                                         	@IRInst:assign	k	1
	ldr r9,.global_0_k                                	@IRInst:assign	k	1
	str r4,[r9]                                       	@IRInst:assign	k	1
.L3:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t4	n	1
	mov r5,#1                                         	@IRInst:sub	%t4	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t4	n	1
	str r6,[fp,#12]                                   	@IRInst:sub	%t4	n	1
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t5	i	%t4
	ldr r5,[fp,#12]                                   	@IRInst:ble	%t5	i	%t4
	cmp r4,r5                                         	@IRInst:ble	%t5	i	%t4
	ble .L4                                           
	b .L5                                             
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:add	%t6	i	1
	mov r5,#1                                         	@IRInst:add	%t6	i	1
	add r6,r4,r5                                      	@IRInst:add	%t6	i	1
	str r6,[fp,#20]                                   	@IRInst:add	%t6	i	1
	ldr r4,[fp,#20]                                   	@IRInst:assign	i	%t6
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t6
	ldr r4,.global_0_k                                	@IRInst:add	%t7	k	1
	ldr r4,[r4]                                       	@IRInst:add	%t7	k	1
	mov r5,#1                                         	@IRInst:add	%t7	k	1
	add r6,r4,r5                                      	@IRInst:add	%t7	k	1
	str r6,[fp,#24]                                   	@IRInst:add	%t7	k	1
	ldr r4,.global_0_k                                	@IRInst:add	%t8	k	k
	ldr r4,[r4]                                       	@IRInst:add	%t8	k	k
	ldr r5,.global_0_k                                	@IRInst:add	%t8	k	k
	ldr r5,[r5]                                       	@IRInst:add	%t8	k	k
	add r6,r4,r5                                      	@IRInst:add	%t8	k	k
	str r6,[fp,#28]                                   	@IRInst:add	%t8	k	k
	ldr r4,[fp,#28]                                   	@IRInst:assign	k	%t8
	ldr r9,.global_0_k                                	@IRInst:assign	k	%t8
	str r4,[r9]                                       	@IRInst:assign	k	%t8
	b .L3                                             
.L5:
	ldr r0,.global_0_k                                	@IRInst:assign	r0	k
	ldr r0,[r0]                                       	@IRInst:assign	r0	k
	bl putint                                         
	ldr r4,.global_0_k                                	@IRInst:assign		k
	ldr r4,[r4]                                       	@IRInst:assign		k
	str r4,[fp]                                       	@IRInst:assign		k
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#32                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
