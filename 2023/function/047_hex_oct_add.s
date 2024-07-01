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
	sub sp,sp,#20                                     
	add fp,sp,#0                                      
	mov r4,#15                                        	@IRInst:assign	a	15
	str r4,[fp,#4]                                    	@IRInst:assign	a	15
	mov r4,#12                                        	@IRInst:assign	b	12
	str r4,[fp,#8]                                    	@IRInst:assign	b	12
	ldr r4,[fp,#4]                                    	@IRInst:add	%t3	a	b
	ldr r5,[fp,#8]                                    	@IRInst:add	%t3	a	b
	add r6,r4,r5                                      	@IRInst:add	%t3	a	b
	str r6,[fp,#12]                                   	@IRInst:add	%t3	a	b
	ldr r4,[fp,#12]                                   	@IRInst:add	%t4	%t3	61
	mov r5,#61                                        	@IRInst:add	%t4	%t3	61
	add r6,r4,r5                                      	@IRInst:add	%t4	%t3	61
	str r6,[fp,#16]                                   	@IRInst:add	%t4	%t3	61
	ldr r4,[fp,#16]                                   	@IRInst:assign		%t4
	str r4,[fp]                                       	@IRInst:assign		%t4
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#20                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
