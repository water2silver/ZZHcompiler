.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
g:
        .long   0
.text
.global_0_g:
        .long   g
.global func
.type func, %function
func:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#12                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	n	r0
	ldr r4,.global_0_g                                	@IRInst:add	%t4	g	n
	ldr r4,[r4]                                       	@IRInst:add	%t4	g	n
	ldr r5,[fp,#4]                                    	@IRInst:add	%t4	g	n
	add r6,r4,r5                                      	@IRInst:add	%t4	g	n
	str r6,[fp,#8]                                    	@IRInst:add	%t4	g	n
	ldr r4,[fp,#8]                                    	@IRInst:assign	g	%t4
	ldr r9,.global_0_g                                	@IRInst:assign	g	%t4
	str r4,[r9]                                       	@IRInst:assign	g	%t4
	ldr r0,.global_0_g                                	@IRInst:assign	r0	g
	ldr r0,[r0]                                       	@IRInst:assign	r0	g
	bl putint                                         
	ldr r4,.global_0_g                                	@IRInst:assign		g
	ldr r4,[r4]                                       	@IRInst:assign		g
	str r4,[fp]                                       	@IRInst:assign		g
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#12                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_g:
        .long   g
.global main
.type main, %function
main:
.L3:
	push {r10,fp,lr}                                  
	sub sp,sp,#68                                     
	add fp,sp,#0                                      
	bl getint                                         
	str r0,[fp,#8]                                    	@IRInst:assign	%t7	r0
	ldr r4,[fp,#8]                                    	@IRInst:assign	i	%t7
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t7
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t8	i	10
	mov r5,#10                                        	@IRInst:bgt	%t8	i	10
	cmp r4,r5                                         	@IRInst:bgt	%t8	i	10
	bgt .L8                                           
	b .L6                                             
.L8:
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	i
	bl func                                           
	str r0,[fp,#16]                                   	@IRInst:assign	%t9	r0
.L5:
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
	b .L7                                             
.L6:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L7:
	bl getint                                         
	str r0,[fp,#20]                                   	@IRInst:assign	%t10	r0
	ldr r4,[fp,#20]                                   	@IRInst:assign	i	%t10
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t10
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t11	i	11
	mov r5,#11                                        	@IRInst:bgt	%t11	i	11
	cmp r4,r5                                         	@IRInst:bgt	%t11	i	11
	bgt .L12                                          
	b .L10                                            
.L12:
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	i
	bl func                                           
	str r0,[fp,#28]                                   	@IRInst:assign	%t12	r0
.L9:
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
	b .L11                                            
.L10:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L11:
	bl getint                                         
	str r0,[fp,#32]                                   	@IRInst:assign	%t13	r0
	ldr r4,[fp,#32]                                   	@IRInst:assign	i	%t13
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t13
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t14	i	99
	mov r5,#99                                        	@IRInst:ble	%t14	i	99
	cmp r4,r5                                         	@IRInst:ble	%t14	i	99
	ble .L13                                          
	b .L16                                            
.L16:
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	i
	bl func                                           
	str r0,[fp,#40]                                   	@IRInst:assign	%t15	r0
.L13:
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
	b .L15                                            
.L14:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L15:
	bl getint                                         
	str r0,[fp,#44]                                   	@IRInst:assign	%t16	r0
	ldr r4,[fp,#44]                                   	@IRInst:assign	i	%t16
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t16
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t17	i	100
	mov r5,#100                                       	@IRInst:ble	%t17	i	100
	cmp r4,r5                                         	@IRInst:ble	%t17	i	100
	ble .L17                                          
	b .L20                                            
.L20:
	ldr r0,[fp,#4]                                    	@IRInst:assign	r0	i
	bl func                                           
	str r0,[fp,#52]                                   	@IRInst:assign	%t18	r0
.L17:
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
	b .L19                                            
.L18:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L19:
	mov r0,#99                                        	@IRInst:assign	r0	99
	bl func                                           
	str r0,[fp,#56]                                   	@IRInst:assign	%t19	r0
	ldr r4,[fp,#56]                                   	@IRInst:not_zero	%t20	%t19	0
	mov r5,#0                                         	@IRInst:not_zero	%t20	%t19	0
	cmp r4,r5                                         	@IRInst:not_zero	%t20	%t19	0
	moveq r6,#0                                       	@IRInst:not_zero	%t20	%t19	0
	str r6,[fp,#60]                                   	@IRInst:not_zero	%t20	%t19	0
	beq .L24                                          
	b .L22                                            
.L24:
	mov r0,#100                                       	@IRInst:assign	r0	100
	bl func                                           
	str r0,[fp,#64]                                   	@IRInst:assign	%t21	r0
.L21:
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
	b .L23                                            
.L22:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L23:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L4                                             
.L4:
	ldr r0,[fp]                                       
	add fp,fp,#68                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
