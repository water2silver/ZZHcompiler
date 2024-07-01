.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global reverse
.type reverse, %function
reverse:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#24                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	n	r0
	ldr r4,[fp]                                       	@IRInst:ble	%t4	n	1
	mov r5,#1                                         	@IRInst:ble	%t4	n	1
	cmp r4,r5                                         	@IRInst:ble	%t4	n	1
	ble .L3                                           
	b .L4                                             
.L3:
	bl getint                                         
	str r0,[fp,#12]                                   	@IRInst:assign	%t5	r0
	ldr r4,[fp,#12]                                   	@IRInst:assign	next	%t5
	str r4,[fp,#4]                                    	@IRInst:assign	next	%t5
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	next
	bl putint                                         
	b .L5                                             
.L4:
	bl getint                                         
	str r0,[fp,#16]                                   	@IRInst:assign	%t6	r0
	ldr r4,[fp,#16]                                   	@IRInst:assign	next	%t6
	str r4,[fp,#4]                                    	@IRInst:assign	next	%t6
	ldr r4,[fp]                                       	@IRInst:sub	%t7	n	1
	mov r5,#1                                         	@IRInst:sub	%t7	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t7	n	1
	str r6,[fp,#20]                                   	@IRInst:sub	%t7	n	1
	ldr r0,[fp,#20]                                   	@IRInst:assign	r0	%t7
	bl reverse                                        
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	next
	bl putint                                         
.L5:
.L2:
	add fp,fp,#24                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global main
.type main, %function
main:
.L6:
	push {r10,fp,lr}                                  
	sub sp,sp,#8                                      
	add fp,sp,#0                                      
	mov r4,#200                                       
	str r4,[fp,#4]                                    
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	i
	bl reverse                                        
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L7                                             
.L7:
	ldr r0,[fp]                                       
	add fp,fp,#8                                      
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
