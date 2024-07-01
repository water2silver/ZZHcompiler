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
	sub sp,sp,#224                                    
	add fp,sp,#0                                      
	mov r4,#3                                         	@IRInst:mul	%t3	3	2
	mov r5,#2                                         	@IRInst:mul	%t3	3	2
	mul r6,r4,r5                                      	@IRInst:mul	%t3	3	2
	str r6,[fp,#68]                                   	@IRInst:mul	%t3	3	2
	ldr r4,[fp,#68]                                   	@IRInst:add	%t4	%t3	1
	mov r5,#1                                         	@IRInst:add	%t4	%t3	1
	add r6,r4,r5                                      	@IRInst:add	%t4	%t3	1
	str r6,[fp,#72]                                   	@IRInst:add	%t4	%t3	1
	ldr r4,[fp,#72]                                   	@IRInst:mul	%t5	%t4	4
	mov r5,#4                                         	@IRInst:mul	%t5	%t4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t5	%t4	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t5	%t4	4
	add r4,fp,#36                                     	@IRInst:add	%t6	e	%t5
	ldr r5,[fp,#76]                                   	@IRInst:add	%t6	e	%t5
	add r6,r4,r5                                      	@IRInst:add	%t6	e	%t5
	str r6,[fp,#80]                                   	@IRInst:add	%t6	e	%t5
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t6	8
	mov r4,#8                                         	@IRInst:assign	%t6	8
	str r4,[r5]                                       	@IRInst:assign	%t6	8
	mov r4,#0                                         	@IRInst:mul	%t7	0	2
	mov r5,#2                                         	@IRInst:mul	%t7	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t7	0	2
	str r6,[fp,#84]                                   	@IRInst:mul	%t7	0	2
	ldr r4,[fp,#84]                                   	@IRInst:add	%t8	%t7	0
	mov r5,#0                                         	@IRInst:add	%t8	%t7	0
	add r6,r4,r5                                      	@IRInst:add	%t8	%t7	0
	str r6,[fp,#88]                                   	@IRInst:add	%t8	%t7	0
	ldr r4,[fp,#88]                                   	@IRInst:mul	%t9	%t8	4
	mov r5,#4                                         	@IRInst:mul	%t9	%t8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t9	%t8	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t9	%t8	4
	add r4,fp,#36                                     	@IRInst:add	%t10	e	%t9
	ldr r5,[fp,#92]                                   	@IRInst:add	%t10	e	%t9
	add r6,r4,r5                                      	@IRInst:add	%t10	e	%t9
	str r6,[fp,#96]                                   	@IRInst:add	%t10	e	%t9
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t10	0
	mov r4,#0                                         	@IRInst:assign	%t10	0
	str r4,[r5]                                       	@IRInst:assign	%t10	0
	mov r4,#0                                         	@IRInst:mul	%t11	0	2
	mov r5,#2                                         	@IRInst:mul	%t11	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t11	0	2
	str r6,[fp,#100]                                  	@IRInst:mul	%t11	0	2
	ldr r4,[fp,#100]                                  	@IRInst:add	%t12	%t11	1
	mov r5,#1                                         	@IRInst:add	%t12	%t11	1
	add r6,r4,r5                                      	@IRInst:add	%t12	%t11	1
	str r6,[fp,#104]                                  	@IRInst:add	%t12	%t11	1
	ldr r4,[fp,#104]                                  	@IRInst:mul	%t13	%t12	4
	mov r5,#4                                         	@IRInst:mul	%t13	%t12	4
	mul r6,r4,r5                                      	@IRInst:mul	%t13	%t12	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t13	%t12	4
	add r4,fp,#36                                     	@IRInst:add	%t14	e	%t13
	ldr r5,[fp,#108]                                  	@IRInst:add	%t14	e	%t13
	add r6,r4,r5                                      	@IRInst:add	%t14	e	%t13
	str r6,[fp,#112]                                  	@IRInst:add	%t14	e	%t13
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t14	6
	mov r4,#6                                         	@IRInst:assign	%t14	6
	str r4,[r5]                                       	@IRInst:assign	%t14	6
	mov r4,#2                                         	@IRInst:mul	%t15	2	2
	mov r5,#2                                         	@IRInst:mul	%t15	2	2
	mul r6,r4,r5                                      	@IRInst:mul	%t15	2	2
	str r6,[fp,#116]                                  	@IRInst:mul	%t15	2	2
	ldr r4,[fp,#116]                                  	@IRInst:add	%t16	%t15	0
	mov r5,#0                                         	@IRInst:add	%t16	%t15	0
	add r6,r4,r5                                      	@IRInst:add	%t16	%t15	0
	str r6,[fp,#120]                                  	@IRInst:add	%t16	%t15	0
	ldr r4,[fp,#120]                                  	@IRInst:mul	%t17	%t16	4
	mov r5,#4                                         	@IRInst:mul	%t17	%t16	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	%t16	4
	str r6,[fp,#124]                                  	@IRInst:mul	%t17	%t16	4
	add r4,fp,#4                                      	@IRInst:add	%t18	a	%t17
	ldr r5,[fp,#124]                                  	@IRInst:add	%t18	a	%t17
	add r6,r4,r5                                      	@IRInst:add	%t18	a	%t17
	str r6,[fp,#128]                                  	@IRInst:add	%t18	a	%t17
	ldr r5,[fp,#128]                                  	@IRInst:assign	%t18	0
	mov r4,#0                                         	@IRInst:assign	%t18	0
	str r4,[r5]                                       	@IRInst:assign	%t18	0
	mov r4,#3                                         	@IRInst:mul	%t19	3	2
	mov r5,#2                                         	@IRInst:mul	%t19	3	2
	mul r6,r4,r5                                      	@IRInst:mul	%t19	3	2
	str r6,[fp,#132]                                  	@IRInst:mul	%t19	3	2
	ldr r4,[fp,#132]                                  	@IRInst:add	%t20	%t19	1
	mov r5,#1                                         	@IRInst:add	%t20	%t19	1
	add r6,r4,r5                                      	@IRInst:add	%t20	%t19	1
	str r6,[fp,#136]                                  	@IRInst:add	%t20	%t19	1
	ldr r4,[fp,#136]                                  	@IRInst:mul	%t21	%t20	4
	mov r5,#4                                         	@IRInst:mul	%t21	%t20	4
	mul r6,r4,r5                                      	@IRInst:mul	%t21	%t20	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t21	%t20	4
	add r4,fp,#36                                     	@IRInst:add	%t22	e	%t21
	ldr r5,[fp,#140]                                  	@IRInst:add	%t22	e	%t21
	add r6,r4,r5                                      	@IRInst:add	%t22	e	%t21
	str r6,[fp,#144]                                  	@IRInst:add	%t22	e	%t21
	ldr r4,[fp,#144]                                  	@IRInst:assign	%t23	%t22
	ldr r4,[r4]                                       	@IRInst:assign	%t23	%t22
	str r4,[fp,#148]                                  	@IRInst:assign	%t23	%t22
	mov r4,#0                                         	@IRInst:mul	%t24	0	2
	mov r5,#2                                         	@IRInst:mul	%t24	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t24	0	2
	str r6,[fp,#152]                                  	@IRInst:mul	%t24	0	2
	ldr r4,[fp,#152]                                  	@IRInst:add	%t25	%t24	0
	mov r5,#0                                         	@IRInst:add	%t25	%t24	0
	add r6,r4,r5                                      	@IRInst:add	%t25	%t24	0
	str r6,[fp,#156]                                  	@IRInst:add	%t25	%t24	0
	ldr r4,[fp,#156]                                  	@IRInst:mul	%t26	%t25	4
	mov r5,#4                                         	@IRInst:mul	%t26	%t25	4
	mul r6,r4,r5                                      	@IRInst:mul	%t26	%t25	4
	str r6,[fp,#160]                                  	@IRInst:mul	%t26	%t25	4
	add r4,fp,#36                                     	@IRInst:add	%t27	e	%t26
	ldr r5,[fp,#160]                                  	@IRInst:add	%t27	e	%t26
	add r6,r4,r5                                      	@IRInst:add	%t27	e	%t26
	str r6,[fp,#164]                                  	@IRInst:add	%t27	e	%t26
	ldr r4,[fp,#164]                                  	@IRInst:assign	%t28	%t27
	ldr r4,[r4]                                       	@IRInst:assign	%t28	%t27
	str r4,[fp,#168]                                  	@IRInst:assign	%t28	%t27
	ldr r4,[fp,#148]                                  	@IRInst:add	%t29	%t23	%t28
	ldr r5,[fp,#168]                                  	@IRInst:add	%t29	%t23	%t28
	add r6,r4,r5                                      	@IRInst:add	%t29	%t23	%t28
	str r6,[fp,#172]                                  	@IRInst:add	%t29	%t23	%t28
	mov r4,#0                                         	@IRInst:mul	%t30	0	2
	mov r5,#2                                         	@IRInst:mul	%t30	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t30	0	2
	str r6,[fp,#176]                                  	@IRInst:mul	%t30	0	2
	ldr r4,[fp,#176]                                  	@IRInst:add	%t31	%t30	1
	mov r5,#1                                         	@IRInst:add	%t31	%t30	1
	add r6,r4,r5                                      	@IRInst:add	%t31	%t30	1
	str r6,[fp,#180]                                  	@IRInst:add	%t31	%t30	1
	ldr r4,[fp,#180]                                  	@IRInst:mul	%t32	%t31	4
	mov r5,#4                                         	@IRInst:mul	%t32	%t31	4
	mul r6,r4,r5                                      	@IRInst:mul	%t32	%t31	4
	str r6,[fp,#184]                                  	@IRInst:mul	%t32	%t31	4
	add r4,fp,#36                                     	@IRInst:add	%t33	e	%t32
	ldr r5,[fp,#184]                                  	@IRInst:add	%t33	e	%t32
	add r6,r4,r5                                      	@IRInst:add	%t33	e	%t32
	str r6,[fp,#188]                                  	@IRInst:add	%t33	e	%t32
	ldr r4,[fp,#188]                                  	@IRInst:assign	%t34	%t33
	ldr r4,[r4]                                       	@IRInst:assign	%t34	%t33
	str r4,[fp,#192]                                  	@IRInst:assign	%t34	%t33
	ldr r4,[fp,#172]                                  	@IRInst:add	%t35	%t29	%t34
	ldr r5,[fp,#192]                                  	@IRInst:add	%t35	%t29	%t34
	add r6,r4,r5                                      	@IRInst:add	%t35	%t29	%t34
	str r6,[fp,#196]                                  	@IRInst:add	%t35	%t29	%t34
	mov r4,#2                                         	@IRInst:mul	%t36	2	2
	mov r5,#2                                         	@IRInst:mul	%t36	2	2
	mul r6,r4,r5                                      	@IRInst:mul	%t36	2	2
	str r6,[fp,#200]                                  	@IRInst:mul	%t36	2	2
	ldr r4,[fp,#200]                                  	@IRInst:add	%t37	%t36	0
	mov r5,#0                                         	@IRInst:add	%t37	%t36	0
	add r6,r4,r5                                      	@IRInst:add	%t37	%t36	0
	str r6,[fp,#204]                                  	@IRInst:add	%t37	%t36	0
	ldr r4,[fp,#204]                                  	@IRInst:mul	%t38	%t37	4
	mov r5,#4                                         	@IRInst:mul	%t38	%t37	4
	mul r6,r4,r5                                      	@IRInst:mul	%t38	%t37	4
	str r6,[fp,#208]                                  	@IRInst:mul	%t38	%t37	4
	add r4,fp,#4                                      	@IRInst:add	%t39	a	%t38
	ldr r5,[fp,#208]                                  	@IRInst:add	%t39	a	%t38
	add r6,r4,r5                                      	@IRInst:add	%t39	a	%t38
	str r6,[fp,#212]                                  	@IRInst:add	%t39	a	%t38
	ldr r4,[fp,#212]                                  	@IRInst:assign	%t40	%t39
	ldr r4,[r4]                                       	@IRInst:assign	%t40	%t39
	str r4,[fp,#216]                                  	@IRInst:assign	%t40	%t39
	ldr r4,[fp,#196]                                  	@IRInst:add	%t41	%t35	%t40
	ldr r5,[fp,#216]                                  	@IRInst:add	%t41	%t35	%t40
	add r6,r4,r5                                      	@IRInst:add	%t41	%t35	%t40
	str r6,[fp,#220]                                  	@IRInst:add	%t41	%t35	%t40
	ldr r4,[fp,#220]                                  	@IRInst:assign		%t41
	str r4,[fp]                                       	@IRInst:assign		%t41
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#224                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
