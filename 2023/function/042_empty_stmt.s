.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global main
.type main, %function
main:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	mov r4,#10                                        
	str r4,[fp,#4]                                    
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t2	a	2
	mov r5,#2                                         	@IRInst:mul	%t2	a	2
	mul r6,r4,r5                                      	@IRInst:mul	%t2	a	2
	str r6,[fp,#8]                                    	@IRInst:mul	%t2	a	2
	ldr r4,[fp,#8]                                    	@IRInst:add	%t3	%t2	1
	mov r5,#1                                         	@IRInst:add	%t3	%t2	1
	add r6,r4,r5                                      	@IRInst:add	%t3	%t2	1
	str r6,[fp,#12]                                   	@IRInst:add	%t3	%t2	1
	ldr r4,[fp,#12]                                   	@IRInst:assign		%t3
	str r4,[fp]                                       	@IRInst:assign		%t3
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
