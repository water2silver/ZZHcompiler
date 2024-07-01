.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
a:
        .long   7
.text
.global_0_a:
        .long   a
.global func
.type func, %function
func:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#20                                     
	add fp,sp,#0                                      
	ldr r4,[fp,#8]                                    
	str r4,[fp,#4]                                    
	mov r4,#1                                         
	str r4,[fp,#8]                                    
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t4	a	b
	ldr r5,[fp,#4]                                    	@IRInst:beq	%t4	a	b
	cmp r4,r5                                         	@IRInst:beq	%t4	a	b
	beq .L3                                           
	b .L4                                             
.L3:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t5	a	1
	mov r5,#1                                         	@IRInst:add	%t5	a	1
	add r6,r4,r5                                      	@IRInst:add	%t5	a	1
	str r6,[fp,#16]                                   	@IRInst:add	%t5	a	1
	ldr r4,[fp,#16]                                   	@IRInst:assign	a	%t5
	str r4,[fp,#8]                                    	@IRInst:assign	a	%t5
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L2                                             
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L5:
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#20                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_a:
        .long   a
.global main
.type main, %function
main:
.L6:
	push {r10,fp,lr}                                  
	sub sp,sp,#36                                     
	add fp,sp,#0                                      
	mov r4,#0                                         
	str r4,[fp,#4]                                    
	mov r4,#0                                         
	str r4,[fp,#8]                                    
.L8:
	ldr r4,[fp,#8]                                    	@IRInst:blt	%t9	i	100
	mov r5,#100                                       	@IRInst:blt	%t9	i	100
	cmp r4,r5                                         	@IRInst:blt	%t9	i	100
	blt .L9                                           
	b .L10                                            
.L9:
	bl func                                           
	str r0,[fp,#16]                                   	@IRInst:assign	%t10	r0
	ldr r4,[fp,#16]                                   	@IRInst:beq	%t11	%t10	1
	mov r5,#1                                         	@IRInst:beq	%t11	%t10	1
	cmp r4,r5                                         	@IRInst:beq	%t11	%t10	1
	beq .L11                                          
	b .L12                                            
.L11:
	ldr r4,[fp,#4]                                    	@IRInst:add	%t12	result	1
	mov r5,#1                                         	@IRInst:add	%t12	result	1
	add r6,r4,r5                                      	@IRInst:add	%t12	result	1
	str r6,[fp,#24]                                   	@IRInst:add	%t12	result	1
	ldr r4,[fp,#24]                                   	@IRInst:assign	result	%t12
	str r4,[fp,#4]                                    	@IRInst:assign	result	%t12
.L12:
.L13:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t13	i	1
	mov r5,#1                                         	@IRInst:add	%t13	i	1
	add r6,r4,r5                                      	@IRInst:add	%t13	i	1
	str r6,[fp,#28]                                   	@IRInst:add	%t13	i	1
	ldr r4,[fp,#28]                                   	@IRInst:assign	i	%t13
	str r4,[fp,#8]                                    	@IRInst:assign	i	%t13
	b .L8                                             
.L10:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t14	result	100
	mov r5,#100                                       	@IRInst:blt	%t14	result	100
	cmp r4,r5                                         	@IRInst:blt	%t14	result	100
	blt .L14                                          
	b .L15                                            
.L14:
	mov r0,#1                                         	@IRInst:assign	r0	1
	bl putint                                         
	b .L16                                            
.L15:
	mov r0,#0                                         	@IRInst:assign	r0	0
	bl putint                                         
.L16:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L7                                             
.L7:
	ldr r0,[fp]                                       
	add fp,fp,#36                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
