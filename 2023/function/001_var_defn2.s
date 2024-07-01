.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
a:
        .long   3
b:
        .long   5
.text
.global_0_a:
        .long   a
.global_0_b:
        .long   b
.global main
.type main, %function
main:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#12                                     
	add fp,sp,#0                                      
	mov r4,#5                                         
	str r4,[fp,#4]                                    
	ldr r4,[fp,#4]                                    	@IRInst:add	%t4	a	b
	ldr r5,.global_0_b                                	@IRInst:add	%t4	a	b
	ldr r5,[r5]                                       	@IRInst:add	%t4	a	b
	add r6,r4,r5                                      	@IRInst:add	%t4	a	b
	str r6,[fp,#8]                                    	@IRInst:add	%t4	a	b
	ldr r4,[fp,#8]                                    	@IRInst:assign		%t4
	str r4,[fp]                                       	@IRInst:assign		%t4
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#12                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
