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
.text
.global_0_a:
        .long   a
.global func
.type func, %function
func:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#12                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	p	r0
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t4	p	1
	mov r5,#1                                         	@IRInst:sub	%t4	p	1
	sub r6,r4,r5                                      	@IRInst:sub	%t4	p	1
	str r6,[fp,#8]                                    	@IRInst:sub	%t4	p	1
	ldr r4,[fp,#8]                                    	@IRInst:assign	p	%t4
	str r4,[fp,#4]                                    	@IRInst:assign	p	%t4
	ldr r4,[fp,#4]                                    	@IRInst:assign		p
	str r4,[fp]                                       	@IRInst:assign		p
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#12                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_a:
        .long   a
.global main
.type main, %function
main:
.L3:
	push {r10,fp,lr}                                  
	sub sp,sp,#12                                     
	add fp,sp,#0                                      
	mov r4,#10                                        	@IRInst:assign	a	10
	ldr r9,.global_1_a                                	@IRInst:assign	a	10
	str r4,[r9]                                       	@IRInst:assign	a	10
	ldr r0,.global_1_a                                	@IRInst:assign	r0	a
	ldr r0,[r0]                                       	@IRInst:assign	r0	a
	bl func                                           
	str r0,[fp,#8]                                    	@IRInst:assign	%t7	r0
	ldr r4,[fp,#8]                                    	@IRInst:assign	b	%t7
	str r4,[fp,#4]                                    	@IRInst:assign	b	%t7
	ldr r4,[fp,#4]                                    	@IRInst:assign		b
	str r4,[fp]                                       	@IRInst:assign		b
	b .L4                                             
.L4:
	ldr r0,[fp]                                       
	add fp,fp,#12                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
