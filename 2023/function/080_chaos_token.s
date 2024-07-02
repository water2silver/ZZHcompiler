.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
__HELLO:
        .zero   400
N4__mE___:
        .zero   1200
saY_HeI10_To:
        .zero   160
RET:
        .zero   20
.text
.global_0___HELLO:
        .long   __HELLO
.global_0_N4__mE___:
        .long   N4__mE___
.global_0_saY_HeI10_To:
        .long   saY_HeI10_To
.global_0_RET:
        .long   RET
.global main
.type main, %function
main:
.L1:
	push {r10,fp,lr}                                  
	sub sp,sp,#476                                    
	add fp,sp,#0                                      
	ldr r0,.global_0___HELLO                          	@IRInst:assign	r0	__HELLO
	bl putstr                                         
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L3:
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:sdiv	%t7	i	6
	mov r5,#6                                         	@IRInst:sdiv	%t7	i	6
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t7	i	6
	str r6,[fp,#12]                                   	@IRInst:sdiv	%t7	i	6
	ldr r4,[fp,#12]                                   	@IRInst:assign	_	%t7
	str r4,[fp,#8]                                    	@IRInst:assign	_	%t7
	ldr r4,[fp,#4]                                    	@IRInst:sdiv	%t10	i	6
	mov r5,#6                                         	@IRInst:sdiv	%t10	i	6
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t10	i	6
	str r6,[fp,#24]                                   	@IRInst:sdiv	%t10	i	6
	ldr r4,[fp,#24]                                   	@IRInst:mul	%t11	%t10	6
	mov r5,#6                                         	@IRInst:mul	%t11	%t10	6
	mul r6,r4,r5                                      	@IRInst:mul	%t11	%t10	6
	str r6,[fp,#28]                                   	@IRInst:mul	%t11	%t10	6
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t9	i	%t11
	ldr r5,[fp,#28]                                   	@IRInst:sub	%t9	i	%t11
	sub r6,r4,r5                                      	@IRInst:sub	%t9	i	%t11
	str r6,[fp,#20]                                   	@IRInst:sub	%t9	i	%t11
	ldr r4,[fp,#20]                                   	@IRInst:assign	__	%t9
	str r4,[fp,#16]                                   	@IRInst:assign	__	%t9
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t12	_	__
	ldr r5,[fp,#16]                                   	@IRInst:beq	%t12	_	__
	cmp r4,r5                                         	@IRInst:beq	%t12	_	__
	moveq r6,#1                                       	@IRInst:beq	%t12	_	__
	movne r6,#0                                       	@IRInst:beq	%t12	_	__
	str r6,[fp,#32]                                   	@IRInst:beq	%t12	_	__
	beq .L7                                           
	b .L6                                             
.L6:
	mov r4,#0                                         	@IRInst:mul	%t13	0	50
	mov r5,#50                                        	@IRInst:mul	%t13	0	50
	mul r6,r4,r5                                      	@IRInst:mul	%t13	0	50
	str r6,[fp,#36]                                   	@IRInst:mul	%t13	0	50
	ldr r4,[fp,#36]                                   	@IRInst:mul	%t14	%t13	4
	mov r5,#4                                         	@IRInst:mul	%t14	%t13	4
	mul r6,r4,r5                                      	@IRInst:mul	%t14	%t13	4
	str r6,[fp,#40]                                   	@IRInst:mul	%t14	%t13	4
	ldr r4,.global_0_N4__mE___                        	@IRInst:add	%t15	N4__mE___	%t14
	ldr r5,[fp,#40]                                   	@IRInst:add	%t15	N4__mE___	%t14
	add r6,r4,r5                                      	@IRInst:add	%t15	N4__mE___	%t14
	str r6,[fp,#44]                                   	@IRInst:add	%t15	N4__mE___	%t14
	ldr r0,[fp,#44]                                   	@IRInst:assign	r0	%t15
	bl putstr                                         
	ldr r0,.global_0_saY_HeI10_To                     	@IRInst:assign	r0	saY_HeI10_To
	bl putstr                                         
	mov r4,#0                                         	@IRInst:mul	%t16	0	50
	mov r5,#50                                        	@IRInst:mul	%t16	0	50
	mul r6,r4,r5                                      	@IRInst:mul	%t16	0	50
	str r6,[fp,#244]                                  	@IRInst:mul	%t16	0	50
	ldr r4,[fp,#244]                                  	@IRInst:mul	%t17	%t16	4
	mov r5,#4                                         	@IRInst:mul	%t17	%t16	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	%t16	4
	str r6,[fp,#248]                                  	@IRInst:mul	%t17	%t16	4
	ldr r4,.global_0_N4__mE___                        	@IRInst:add	%t18	N4__mE___	%t17
	ldr r5,[fp,#248]                                  	@IRInst:add	%t18	N4__mE___	%t17
	add r6,r4,r5                                      	@IRInst:add	%t18	N4__mE___	%t17
	str r6,[fp,#252]                                  	@IRInst:add	%t18	N4__mE___	%t17
	ldr r0,[fp,#252]                                  	@IRInst:assign	r0	%t18
	bl putstr                                         
	ldr r0,.global_0_RET                              	@IRInst:assign	r0	RET
	bl putstr                                         
.L7:
.L8:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t19	i	17
	mov r5,#17                                        	@IRInst:mul	%t19	i	17
	mul r6,r4,r5                                      	@IRInst:mul	%t19	i	17
	str r6,[fp,#452]                                  	@IRInst:mul	%t19	i	17
	ldr r4,[fp,#452]                                  	@IRInst:add	%t20	%t19	23
	mov r5,#23                                        	@IRInst:add	%t20	%t19	23
	add r6,r4,r5                                      	@IRInst:add	%t20	%t19	23
	str r6,[fp,#456]                                  	@IRInst:add	%t20	%t19	23
	ldr r4,[fp,#456]                                  	@IRInst:sdiv	%t22	%t20	32
	mov r5,#32                                        	@IRInst:sdiv	%t22	%t20	32
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t22	%t20	32
	str r6,[fp,#464]                                  	@IRInst:sdiv	%t22	%t20	32
	ldr r4,[fp,#464]                                  	@IRInst:mul	%t23	%t22	32
	mov r5,#32                                        	@IRInst:mul	%t23	%t22	32
	mul r6,r4,r5                                      	@IRInst:mul	%t23	%t22	32
	str r6,[fp,#468]                                  	@IRInst:mul	%t23	%t22	32
	ldr r4,[fp,#456]                                  	@IRInst:sub	%t21	%t20	%t23
	ldr r5,[fp,#468]                                  	@IRInst:sub	%t21	%t20	%t23
	sub r6,r4,r5                                      	@IRInst:sub	%t21	%t20	%t23
	str r6,[fp,#460]                                  	@IRInst:sub	%t21	%t20	%t23
	ldr r4,[fp,#460]                                  	@IRInst:assign	i	%t21
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t21
	ldr r4,[fp,#4]                                    	@IRInst:beq	%t24	i	0
	mov r5,#0                                         	@IRInst:beq	%t24	i	0
	cmp r4,r5                                         	@IRInst:beq	%t24	i	0
	moveq r6,#1                                       	@IRInst:beq	%t24	i	0
	movne r6,#0                                       	@IRInst:beq	%t24	i	0
	str r6,[fp,#472]                                  	@IRInst:beq	%t24	i	0
	beq .L9                                           
	b .L10                                            
.L9:
	b .L5                                             
.L10:
.L11:
	b .L3                                             
.L5:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#476                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
