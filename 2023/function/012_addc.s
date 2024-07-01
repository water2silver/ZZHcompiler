.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
a:
        .long   10
.text
.global_0_a:
        .long   a
.global main
.type main, %function
main:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#8                                      
	add fp,sp,#0                                      
	ldr r4,.global_0_a                                	@IRInst:add	%t2	a	5
	ldr r4,[r4]                                       	@IRInst:add	%t2	a	5
	mov r5,#5                                         	@IRInst:add	%t2	a	5
	add r6,r4,r5                                      	@IRInst:add	%t2	a	5
	str r6,[fp,#4]                                    	@IRInst:add	%t2	a	5
	ldr r4,[fp,#4]                                    	@IRInst:assign		%t2
	str r4,[fp]                                       	@IRInst:assign		%t2
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#8                                      
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
