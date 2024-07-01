.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
a:
        .zero   20
.text
.global_0_a:
        .long   a
.global main
.type main, %function
main:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#24                                     
	add fp,sp,#0                                      
	mov r4,#4                                         	@IRInst:mul	%t2	4	4
	mov r5,#4                                         	@IRInst:mul	%t2	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t2	4	4
	str r6,[fp,#4]                                    	@IRInst:mul	%t2	4	4
	ldr r4,.global_0_a                                	@IRInst:add	%t3	a	%t2
	ldr r5,[fp,#4]                                    	@IRInst:add	%t3	a	%t2
	add r6,r4,r5                                      	@IRInst:add	%t3	a	%t2
	str r6,[fp,#8]                                    	@IRInst:add	%t3	a	%t2
	ldr r5,[fp,#8]                                    	@IRInst:assign	%t3	4
	mov r4,#4                                         	@IRInst:assign	%t3	4
	str r4,[r5]                                       	@IRInst:assign	%t3	4
	mov r4,#4                                         	@IRInst:mul	%t4	4	4
	mov r5,#4                                         	@IRInst:mul	%t4	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t4	4	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t4	4	4
	ldr r4,.global_0_a                                	@IRInst:add	%t5	a	%t4
	ldr r5,[fp,#12]                                   	@IRInst:add	%t5	a	%t4
	add r6,r4,r5                                      	@IRInst:add	%t5	a	%t4
	str r6,[fp,#16]                                   	@IRInst:add	%t5	a	%t4
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t6	%t5
	ldr r4,[r4]                                       	@IRInst:assign	%t6	%t5
	str r4,[fp,#20]                                   	@IRInst:assign	%t6	%t5
	ldr r4,[fp,#20]                                   	@IRInst:assign		%t6
	str r4,[fp]                                       	@IRInst:assign		%t6
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#24                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
