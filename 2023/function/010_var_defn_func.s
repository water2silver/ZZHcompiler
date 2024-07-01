.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global defn
.type defn, %function
defn:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#4                                      
	add fp,sp,#0                                      
	mov r4,#4                                         	@IRInst:assign		4
	str r4,[fp]                                       	@IRInst:assign		4
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#4                                      
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global main
.type main, %function
main:
.L3:
	push {r10,fp,lr}                                  
	sub sp,sp,#12                                     
	add fp,sp,#0                                      
	bl defn                                           
	str r0,[fp,#8]                                    	@IRInst:assign	%t3	r0
	ldr r4,[fp,#8]                                    
	str r4,[fp,#4]                                    
	ldr r4,[fp,#4]                                    	@IRInst:assign		a
	str r4,[fp]                                       	@IRInst:assign		a
	b .L4                                             
.L4:
	ldr r0,[fp]                                       
	add fp,fp,#12                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
