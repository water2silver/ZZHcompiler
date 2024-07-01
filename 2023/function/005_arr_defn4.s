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
	sub sp,sp,#408                                    
	add fp,sp,#0                                      
	mov r4,#3                                         	@IRInst:mul	%t2	3	2
	mov r5,#2                                         	@IRInst:mul	%t2	3	2
	mul r6,r4,r5                                      	@IRInst:mul	%t2	3	2
	str r6,[fp,#36]                                   	@IRInst:mul	%t2	3	2
	ldr r4,[fp,#36]                                   	@IRInst:add	%t3	%t2	0
	mov r5,#0                                         	@IRInst:add	%t3	%t2	0
	add r6,r4,r5                                      	@IRInst:add	%t3	%t2	0
	str r6,[fp,#40]                                   	@IRInst:add	%t3	%t2	0
	ldr r4,[fp,#40]                                   	@IRInst:mul	%t4	%t3	4
	mov r5,#4                                         	@IRInst:mul	%t4	%t3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t4	%t3	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t4	%t3	4
	add r4,fp,#4                                      	@IRInst:add	%t5	a	%t4
	ldr r5,[fp,#44]                                   	@IRInst:add	%t5	a	%t4
	add r6,r4,r5                                      	@IRInst:add	%t5	a	%t4
	str r6,[fp,#48]                                   	@IRInst:add	%t5	a	%t4
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t5	7
	mov r4,#7                                         	@IRInst:assign	%t5	7
	str r4,[r5]                                       	@IRInst:assign	%t5	7
	mov r4,#3                                         
	str r4,[fp,#52]                                   
	mov r4,#0                                         	@IRInst:mul	%t9	0	2
	mov r5,#2                                         	@IRInst:mul	%t9	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t9	0	2
	str r6,[fp,#60]                                   	@IRInst:mul	%t9	0	2
	ldr r4,[fp,#60]                                   	@IRInst:add	%t10	%t9	0
	mov r5,#0                                         	@IRInst:add	%t10	%t9	0
	add r6,r4,r5                                      	@IRInst:add	%t10	%t9	0
	str r6,[fp,#64]                                   	@IRInst:add	%t10	%t9	0
	ldr r4,[fp,#64]                                   	@IRInst:mul	%t11	%t10	4
	mov r5,#4                                         	@IRInst:mul	%t11	%t10	4
	mul r6,r4,r5                                      	@IRInst:mul	%t11	%t10	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t11	%t10	4
	add r4,fp,#56                                     	@IRInst:add	%t12	d	%t11
	ldr r5,[fp,#68]                                   	@IRInst:add	%t12	d	%t11
	add r6,r4,r5                                      	@IRInst:add	%t12	d	%t11
	str r6,[fp,#72]                                   	@IRInst:add	%t12	d	%t11
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t12	1
	mov r4,#1                                         	@IRInst:assign	%t12	1
	str r4,[r5]                                       	@IRInst:assign	%t12	1
	mov r4,#0                                         	@IRInst:mul	%t13	0	2
	mov r5,#2                                         	@IRInst:mul	%t13	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t13	0	2
	str r6,[fp,#76]                                   	@IRInst:mul	%t13	0	2
	ldr r4,[fp,#76]                                   	@IRInst:add	%t14	%t13	1
	mov r5,#1                                         	@IRInst:add	%t14	%t13	1
	add r6,r4,r5                                      	@IRInst:add	%t14	%t13	1
	str r6,[fp,#80]                                   	@IRInst:add	%t14	%t13	1
	ldr r4,[fp,#80]                                   	@IRInst:mul	%t15	%t14	4
	mov r5,#4                                         	@IRInst:mul	%t15	%t14	4
	mul r6,r4,r5                                      	@IRInst:mul	%t15	%t14	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t15	%t14	4
	add r4,fp,#56                                     	@IRInst:add	%t16	d	%t15
	ldr r5,[fp,#84]                                   	@IRInst:add	%t16	d	%t15
	add r6,r4,r5                                      	@IRInst:add	%t16	d	%t15
	str r6,[fp,#88]                                   	@IRInst:add	%t16	d	%t15
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t16	2
	mov r4,#2                                         	@IRInst:assign	%t16	2
	str r4,[r5]                                       	@IRInst:assign	%t16	2
	mov r4,#1                                         	@IRInst:mul	%t17	1	2
	mov r5,#2                                         	@IRInst:mul	%t17	1	2
	mul r6,r4,r5                                      	@IRInst:mul	%t17	1	2
	str r6,[fp,#92]                                   	@IRInst:mul	%t17	1	2
	ldr r4,[fp,#92]                                   	@IRInst:add	%t18	%t17	0
	mov r5,#0                                         	@IRInst:add	%t18	%t17	0
	add r6,r4,r5                                      	@IRInst:add	%t18	%t17	0
	str r6,[fp,#96]                                   	@IRInst:add	%t18	%t17	0
	ldr r4,[fp,#96]                                   	@IRInst:mul	%t19	%t18	4
	mov r5,#4                                         	@IRInst:mul	%t19	%t18	4
	mul r6,r4,r5                                      	@IRInst:mul	%t19	%t18	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t19	%t18	4
	add r4,fp,#56                                     	@IRInst:add	%t20	d	%t19
	ldr r5,[fp,#100]                                  	@IRInst:add	%t20	d	%t19
	add r6,r4,r5                                      	@IRInst:add	%t20	d	%t19
	str r6,[fp,#104]                                  	@IRInst:add	%t20	d	%t19
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t20	3
	mov r4,#3                                         	@IRInst:assign	%t20	3
	str r4,[r5]                                       	@IRInst:assign	%t20	3
	mov r4,#1                                         	@IRInst:mul	%t21	1	2
	mov r5,#2                                         	@IRInst:mul	%t21	1	2
	mul r6,r4,r5                                      	@IRInst:mul	%t21	1	2
	str r6,[fp,#108]                                  	@IRInst:mul	%t21	1	2
	ldr r4,[fp,#108]                                  	@IRInst:add	%t22	%t21	1
	mov r5,#1                                         	@IRInst:add	%t22	%t21	1
	add r6,r4,r5                                      	@IRInst:add	%t22	%t21	1
	str r6,[fp,#112]                                  	@IRInst:add	%t22	%t21	1
	ldr r4,[fp,#112]                                  	@IRInst:mul	%t23	%t22	4
	mov r5,#4                                         	@IRInst:mul	%t23	%t22	4
	mul r6,r4,r5                                      	@IRInst:mul	%t23	%t22	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t23	%t22	4
	add r4,fp,#56                                     	@IRInst:add	%t24	d	%t23
	ldr r5,[fp,#116]                                  	@IRInst:add	%t24	d	%t23
	add r6,r4,r5                                      	@IRInst:add	%t24	d	%t23
	str r6,[fp,#120]                                  	@IRInst:add	%t24	d	%t23
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t24	0
	mov r4,#0                                         	@IRInst:assign	%t24	0
	str r4,[r5]                                       	@IRInst:assign	%t24	0
	mov r4,#2                                         	@IRInst:mul	%t25	2	2
	mov r5,#2                                         	@IRInst:mul	%t25	2	2
	mul r6,r4,r5                                      	@IRInst:mul	%t25	2	2
	str r6,[fp,#124]                                  	@IRInst:mul	%t25	2	2
	ldr r4,[fp,#124]                                  	@IRInst:add	%t26	%t25	0
	mov r5,#0                                         	@IRInst:add	%t26	%t25	0
	add r6,r4,r5                                      	@IRInst:add	%t26	%t25	0
	str r6,[fp,#128]                                  	@IRInst:add	%t26	%t25	0
	ldr r4,[fp,#128]                                  	@IRInst:mul	%t27	%t26	4
	mov r5,#4                                         	@IRInst:mul	%t27	%t26	4
	mul r6,r4,r5                                      	@IRInst:mul	%t27	%t26	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t27	%t26	4
	add r4,fp,#56                                     	@IRInst:add	%t28	d	%t27
	ldr r5,[fp,#132]                                  	@IRInst:add	%t28	d	%t27
	add r6,r4,r5                                      	@IRInst:add	%t28	d	%t27
	str r6,[fp,#136]                                  	@IRInst:add	%t28	d	%t27
	ldr r5,[fp,#136]                                  	@IRInst:assign	%t28	5
	mov r4,#5                                         	@IRInst:assign	%t28	5
	str r4,[r5]                                       	@IRInst:assign	%t28	5
	mov r4,#2                                         	@IRInst:mul	%t29	2	2
	mov r5,#2                                         	@IRInst:mul	%t29	2	2
	mul r6,r4,r5                                      	@IRInst:mul	%t29	2	2
	str r6,[fp,#140]                                  	@IRInst:mul	%t29	2	2
	ldr r4,[fp,#140]                                  	@IRInst:add	%t30	%t29	1
	mov r5,#1                                         	@IRInst:add	%t30	%t29	1
	add r6,r4,r5                                      	@IRInst:add	%t30	%t29	1
	str r6,[fp,#144]                                  	@IRInst:add	%t30	%t29	1
	ldr r4,[fp,#144]                                  	@IRInst:mul	%t31	%t30	4
	mov r5,#4                                         	@IRInst:mul	%t31	%t30	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	%t30	4
	str r6,[fp,#148]                                  	@IRInst:mul	%t31	%t30	4
	add r4,fp,#56                                     	@IRInst:add	%t32	d	%t31
	ldr r5,[fp,#148]                                  	@IRInst:add	%t32	d	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	d	%t31
	str r6,[fp,#152]                                  	@IRInst:add	%t32	d	%t31
	ldr r5,[fp,#152]                                  	@IRInst:assign	%t32	0
	mov r4,#0                                         	@IRInst:assign	%t32	0
	str r4,[r5]                                       	@IRInst:assign	%t32	0
	mov r4,#3                                         	@IRInst:mul	%t33	3	2
	mov r5,#2                                         	@IRInst:mul	%t33	3	2
	mul r6,r4,r5                                      	@IRInst:mul	%t33	3	2
	str r6,[fp,#156]                                  	@IRInst:mul	%t33	3	2
	ldr r4,[fp,#156]                                  	@IRInst:add	%t34	%t33	0
	mov r5,#0                                         	@IRInst:add	%t34	%t33	0
	add r6,r4,r5                                      	@IRInst:add	%t34	%t33	0
	str r6,[fp,#160]                                  	@IRInst:add	%t34	%t33	0
	ldr r4,[fp,#160]                                  	@IRInst:mul	%t35	%t34	4
	mov r5,#4                                         	@IRInst:mul	%t35	%t34	4
	mul r6,r4,r5                                      	@IRInst:mul	%t35	%t34	4
	str r6,[fp,#164]                                  	@IRInst:mul	%t35	%t34	4
	add r4,fp,#56                                     	@IRInst:add	%t36	d	%t35
	ldr r5,[fp,#164]                                  	@IRInst:add	%t36	d	%t35
	add r6,r4,r5                                      	@IRInst:add	%t36	d	%t35
	str r6,[fp,#168]                                  	@IRInst:add	%t36	d	%t35
	ldr r5,[fp,#168]                                  	@IRInst:assign	%t36	7
	mov r4,#7                                         	@IRInst:assign	%t36	7
	str r4,[r5]                                       	@IRInst:assign	%t36	7
	mov r4,#3                                         	@IRInst:mul	%t37	3	2
	mov r5,#2                                         	@IRInst:mul	%t37	3	2
	mul r6,r4,r5                                      	@IRInst:mul	%t37	3	2
	str r6,[fp,#172]                                  	@IRInst:mul	%t37	3	2
	ldr r4,[fp,#172]                                  	@IRInst:add	%t38	%t37	1
	mov r5,#1                                         	@IRInst:add	%t38	%t37	1
	add r6,r4,r5                                      	@IRInst:add	%t38	%t37	1
	str r6,[fp,#176]                                  	@IRInst:add	%t38	%t37	1
	ldr r4,[fp,#176]                                  	@IRInst:mul	%t39	%t38	4
	mov r5,#4                                         	@IRInst:mul	%t39	%t38	4
	mul r6,r4,r5                                      	@IRInst:mul	%t39	%t38	4
	str r6,[fp,#180]                                  	@IRInst:mul	%t39	%t38	4
	add r4,fp,#56                                     	@IRInst:add	%t40	d	%t39
	ldr r5,[fp,#180]                                  	@IRInst:add	%t40	d	%t39
	add r6,r4,r5                                      	@IRInst:add	%t40	d	%t39
	str r6,[fp,#184]                                  	@IRInst:add	%t40	d	%t39
	ldr r5,[fp,#184]                                  	@IRInst:assign	%t40	8
	mov r4,#8                                         	@IRInst:assign	%t40	8
	str r4,[r5]                                       	@IRInst:assign	%t40	8
	mov r4,#3                                         	@IRInst:mul	%t42	3	2
	mov r5,#2                                         	@IRInst:mul	%t42	3	2
	mul r6,r4,r5                                      	@IRInst:mul	%t42	3	2
	str r6,[fp,#220]                                  	@IRInst:mul	%t42	3	2
	ldr r4,[fp,#220]                                  	@IRInst:add	%t43	%t42	1
	mov r5,#1                                         	@IRInst:add	%t43	%t42	1
	add r6,r4,r5                                      	@IRInst:add	%t43	%t42	1
	str r6,[fp,#224]                                  	@IRInst:add	%t43	%t42	1
	ldr r4,[fp,#224]                                  	@IRInst:mul	%t44	%t43	1
	mov r5,#1                                         	@IRInst:mul	%t44	%t43	1
	mul r6,r4,r5                                      	@IRInst:mul	%t44	%t43	1
	str r6,[fp,#228]                                  	@IRInst:mul	%t44	%t43	1
	ldr r4,[fp,#228]                                  	@IRInst:add	%t45	%t44	0
	mov r5,#0                                         	@IRInst:add	%t45	%t44	0
	add r6,r4,r5                                      	@IRInst:add	%t45	%t44	0
	str r6,[fp,#232]                                  	@IRInst:add	%t45	%t44	0
	ldr r4,[fp,#232]                                  	@IRInst:mul	%t46	%t45	4
	mov r5,#4                                         	@IRInst:mul	%t46	%t45	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	%t45	4
	str r6,[fp,#236]                                  	@IRInst:mul	%t46	%t45	4
	add r4,fp,#188                                    	@IRInst:add	%t47	e	%t46
	ldr r5,[fp,#236]                                  	@IRInst:add	%t47	e	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	e	%t46
	str r6,[fp,#240]                                  	@IRInst:add	%t47	e	%t46
	ldr r5,[fp,#240]                                  	@IRInst:assign	%t47	8
	mov r4,#8                                         	@IRInst:assign	%t47	8
	str r4,[r5]                                       	@IRInst:assign	%t47	8
	mov r4,#0                                         	@IRInst:mul	%t48	0	2
	mov r5,#2                                         	@IRInst:mul	%t48	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t48	0	2
	str r6,[fp,#244]                                  	@IRInst:mul	%t48	0	2
	ldr r4,[fp,#244]                                  	@IRInst:add	%t49	%t48	0
	mov r5,#0                                         	@IRInst:add	%t49	%t48	0
	add r6,r4,r5                                      	@IRInst:add	%t49	%t48	0
	str r6,[fp,#248]                                  	@IRInst:add	%t49	%t48	0
	ldr r4,[fp,#248]                                  	@IRInst:mul	%t50	%t49	1
	mov r5,#1                                         	@IRInst:mul	%t50	%t49	1
	mul r6,r4,r5                                      	@IRInst:mul	%t50	%t49	1
	str r6,[fp,#252]                                  	@IRInst:mul	%t50	%t49	1
	ldr r4,[fp,#252]                                  	@IRInst:add	%t51	%t50	0
	mov r5,#0                                         	@IRInst:add	%t51	%t50	0
	add r6,r4,r5                                      	@IRInst:add	%t51	%t50	0
	str r6,[fp,#256]                                  	@IRInst:add	%t51	%t50	0
	ldr r4,[fp,#256]                                  	@IRInst:mul	%t52	%t51	4
	mov r5,#4                                         	@IRInst:mul	%t52	%t51	4
	mul r6,r4,r5                                      	@IRInst:mul	%t52	%t51	4
	str r6,[fp,#260]                                  	@IRInst:mul	%t52	%t51	4
	add r4,fp,#188                                    	@IRInst:add	%t53	e	%t52
	ldr r5,[fp,#260]                                  	@IRInst:add	%t53	e	%t52
	add r6,r4,r5                                      	@IRInst:add	%t53	e	%t52
	str r6,[fp,#264]                                  	@IRInst:add	%t53	e	%t52
	ldr r5,[fp,#264]                                  	@IRInst:assign	%t53	0
	mov r4,#0                                         	@IRInst:assign	%t53	0
	str r4,[r5]                                       	@IRInst:assign	%t53	0
	mov r4,#0                                         	@IRInst:mul	%t54	0	2
	mov r5,#2                                         	@IRInst:mul	%t54	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t54	0	2
	str r6,[fp,#268]                                  	@IRInst:mul	%t54	0	2
	ldr r4,[fp,#268]                                  	@IRInst:add	%t55	%t54	1
	mov r5,#1                                         	@IRInst:add	%t55	%t54	1
	add r6,r4,r5                                      	@IRInst:add	%t55	%t54	1
	str r6,[fp,#272]                                  	@IRInst:add	%t55	%t54	1
	ldr r4,[fp,#272]                                  	@IRInst:mul	%t56	%t55	1
	mov r5,#1                                         	@IRInst:mul	%t56	%t55	1
	mul r6,r4,r5                                      	@IRInst:mul	%t56	%t55	1
	str r6,[fp,#276]                                  	@IRInst:mul	%t56	%t55	1
	ldr r4,[fp,#276]                                  	@IRInst:add	%t57	%t56	0
	mov r5,#0                                         	@IRInst:add	%t57	%t56	0
	add r6,r4,r5                                      	@IRInst:add	%t57	%t56	0
	str r6,[fp,#280]                                  	@IRInst:add	%t57	%t56	0
	ldr r4,[fp,#280]                                  	@IRInst:mul	%t58	%t57	4
	mov r5,#4                                         	@IRInst:mul	%t58	%t57	4
	mul r6,r4,r5                                      	@IRInst:mul	%t58	%t57	4
	str r6,[fp,#284]                                  	@IRInst:mul	%t58	%t57	4
	add r4,fp,#188                                    	@IRInst:add	%t59	e	%t58
	ldr r5,[fp,#284]                                  	@IRInst:add	%t59	e	%t58
	add r6,r4,r5                                      	@IRInst:add	%t59	e	%t58
	str r6,[fp,#288]                                  	@IRInst:add	%t59	e	%t58
	ldr r5,[fp,#288]                                  	@IRInst:assign	%t59	6
	mov r4,#6                                         	@IRInst:assign	%t59	6
	str r4,[r5]                                       	@IRInst:assign	%t59	6
	mov r4,#3                                         	@IRInst:mul	%t60	3	2
	mov r5,#2                                         	@IRInst:mul	%t60	3	2
	mul r6,r4,r5                                      	@IRInst:mul	%t60	3	2
	str r6,[fp,#292]                                  	@IRInst:mul	%t60	3	2
	ldr r4,[fp,#292]                                  	@IRInst:add	%t61	%t60	1
	mov r5,#1                                         	@IRInst:add	%t61	%t60	1
	add r6,r4,r5                                      	@IRInst:add	%t61	%t60	1
	str r6,[fp,#296]                                  	@IRInst:add	%t61	%t60	1
	ldr r4,[fp,#296]                                  	@IRInst:mul	%t62	%t61	1
	mov r5,#1                                         	@IRInst:mul	%t62	%t61	1
	mul r6,r4,r5                                      	@IRInst:mul	%t62	%t61	1
	str r6,[fp,#300]                                  	@IRInst:mul	%t62	%t61	1
	ldr r4,[fp,#300]                                  	@IRInst:add	%t63	%t62	0
	mov r5,#0                                         	@IRInst:add	%t63	%t62	0
	add r6,r4,r5                                      	@IRInst:add	%t63	%t62	0
	str r6,[fp,#304]                                  	@IRInst:add	%t63	%t62	0
	ldr r4,[fp,#304]                                  	@IRInst:mul	%t64	%t63	4
	mov r5,#4                                         	@IRInst:mul	%t64	%t63	4
	mul r6,r4,r5                                      	@IRInst:mul	%t64	%t63	4
	str r6,[fp,#308]                                  	@IRInst:mul	%t64	%t63	4
	add r4,fp,#188                                    	@IRInst:add	%t65	e	%t64
	ldr r5,[fp,#308]                                  	@IRInst:add	%t65	e	%t64
	add r6,r4,r5                                      	@IRInst:add	%t65	e	%t64
	str r6,[fp,#312]                                  	@IRInst:add	%t65	e	%t64
	ldr r4,[fp,#312]                                  	@IRInst:assign	%t66	%t65
	ldr r4,[r4]                                       	@IRInst:assign	%t66	%t65
	str r4,[fp,#316]                                  	@IRInst:assign	%t66	%t65
	mov r4,#0                                         	@IRInst:mul	%t67	0	2
	mov r5,#2                                         	@IRInst:mul	%t67	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t67	0	2
	str r6,[fp,#320]                                  	@IRInst:mul	%t67	0	2
	ldr r4,[fp,#320]                                  	@IRInst:add	%t68	%t67	0
	mov r5,#0                                         	@IRInst:add	%t68	%t67	0
	add r6,r4,r5                                      	@IRInst:add	%t68	%t67	0
	str r6,[fp,#324]                                  	@IRInst:add	%t68	%t67	0
	ldr r4,[fp,#324]                                  	@IRInst:mul	%t69	%t68	1
	mov r5,#1                                         	@IRInst:mul	%t69	%t68	1
	mul r6,r4,r5                                      	@IRInst:mul	%t69	%t68	1
	str r6,[fp,#328]                                  	@IRInst:mul	%t69	%t68	1
	ldr r4,[fp,#328]                                  	@IRInst:add	%t70	%t69	0
	mov r5,#0                                         	@IRInst:add	%t70	%t69	0
	add r6,r4,r5                                      	@IRInst:add	%t70	%t69	0
	str r6,[fp,#332]                                  	@IRInst:add	%t70	%t69	0
	ldr r4,[fp,#332]                                  	@IRInst:mul	%t71	%t70	4
	mov r5,#4                                         	@IRInst:mul	%t71	%t70	4
	mul r6,r4,r5                                      	@IRInst:mul	%t71	%t70	4
	str r6,[fp,#336]                                  	@IRInst:mul	%t71	%t70	4
	add r4,fp,#188                                    	@IRInst:add	%t72	e	%t71
	ldr r5,[fp,#336]                                  	@IRInst:add	%t72	e	%t71
	add r6,r4,r5                                      	@IRInst:add	%t72	e	%t71
	str r6,[fp,#340]                                  	@IRInst:add	%t72	e	%t71
	ldr r4,[fp,#340]                                  	@IRInst:assign	%t73	%t72
	ldr r4,[r4]                                       	@IRInst:assign	%t73	%t72
	str r4,[fp,#344]                                  	@IRInst:assign	%t73	%t72
	ldr r4,[fp,#316]                                  	@IRInst:add	%t74	%t66	%t73
	ldr r5,[fp,#344]                                  	@IRInst:add	%t74	%t66	%t73
	add r6,r4,r5                                      	@IRInst:add	%t74	%t66	%t73
	str r6,[fp,#348]                                  	@IRInst:add	%t74	%t66	%t73
	mov r4,#0                                         	@IRInst:mul	%t75	0	2
	mov r5,#2                                         	@IRInst:mul	%t75	0	2
	mul r6,r4,r5                                      	@IRInst:mul	%t75	0	2
	str r6,[fp,#352]                                  	@IRInst:mul	%t75	0	2
	ldr r4,[fp,#352]                                  	@IRInst:add	%t76	%t75	1
	mov r5,#1                                         	@IRInst:add	%t76	%t75	1
	add r6,r4,r5                                      	@IRInst:add	%t76	%t75	1
	str r6,[fp,#356]                                  	@IRInst:add	%t76	%t75	1
	ldr r4,[fp,#356]                                  	@IRInst:mul	%t77	%t76	1
	mov r5,#1                                         	@IRInst:mul	%t77	%t76	1
	mul r6,r4,r5                                      	@IRInst:mul	%t77	%t76	1
	str r6,[fp,#360]                                  	@IRInst:mul	%t77	%t76	1
	ldr r4,[fp,#360]                                  	@IRInst:add	%t78	%t77	0
	mov r5,#0                                         	@IRInst:add	%t78	%t77	0
	add r6,r4,r5                                      	@IRInst:add	%t78	%t77	0
	str r6,[fp,#364]                                  	@IRInst:add	%t78	%t77	0
	ldr r4,[fp,#364]                                  	@IRInst:mul	%t79	%t78	4
	mov r5,#4                                         	@IRInst:mul	%t79	%t78	4
	mul r6,r4,r5                                      	@IRInst:mul	%t79	%t78	4
	str r6,[fp,#368]                                  	@IRInst:mul	%t79	%t78	4
	add r4,fp,#188                                    	@IRInst:add	%t80	e	%t79
	ldr r5,[fp,#368]                                  	@IRInst:add	%t80	e	%t79
	add r6,r4,r5                                      	@IRInst:add	%t80	e	%t79
	str r6,[fp,#372]                                  	@IRInst:add	%t80	e	%t79
	ldr r4,[fp,#372]                                  	@IRInst:assign	%t81	%t80
	ldr r4,[r4]                                       	@IRInst:assign	%t81	%t80
	str r4,[fp,#376]                                  	@IRInst:assign	%t81	%t80
	ldr r4,[fp,#348]                                  	@IRInst:add	%t82	%t74	%t81
	ldr r5,[fp,#376]                                  	@IRInst:add	%t82	%t74	%t81
	add r6,r4,r5                                      	@IRInst:add	%t82	%t74	%t81
	str r6,[fp,#380]                                  	@IRInst:add	%t82	%t74	%t81
	mov r4,#3                                         	@IRInst:mul	%t83	3	2
	mov r5,#2                                         	@IRInst:mul	%t83	3	2
	mul r6,r4,r5                                      	@IRInst:mul	%t83	3	2
	str r6,[fp,#384]                                  	@IRInst:mul	%t83	3	2
	ldr r4,[fp,#384]                                  	@IRInst:add	%t84	%t83	0
	mov r5,#0                                         	@IRInst:add	%t84	%t83	0
	add r6,r4,r5                                      	@IRInst:add	%t84	%t83	0
	str r6,[fp,#388]                                  	@IRInst:add	%t84	%t83	0
	ldr r4,[fp,#388]                                  	@IRInst:mul	%t85	%t84	4
	mov r5,#4                                         	@IRInst:mul	%t85	%t84	4
	mul r6,r4,r5                                      	@IRInst:mul	%t85	%t84	4
	str r6,[fp,#392]                                  	@IRInst:mul	%t85	%t84	4
	add r4,fp,#56                                     	@IRInst:add	%t86	d	%t85
	ldr r5,[fp,#392]                                  	@IRInst:add	%t86	d	%t85
	add r6,r4,r5                                      	@IRInst:add	%t86	d	%t85
	str r6,[fp,#396]                                  	@IRInst:add	%t86	d	%t85
	ldr r4,[fp,#396]                                  	@IRInst:assign	%t87	%t86
	ldr r4,[r4]                                       	@IRInst:assign	%t87	%t86
	str r4,[fp,#400]                                  	@IRInst:assign	%t87	%t86
	ldr r4,[fp,#380]                                  	@IRInst:add	%t88	%t82	%t87
	ldr r5,[fp,#400]                                  	@IRInst:add	%t88	%t82	%t87
	add r6,r4,r5                                      	@IRInst:add	%t88	%t82	%t87
	str r6,[fp,#404]                                  	@IRInst:add	%t88	%t82	%t87
	ldr r4,[fp,#404]                                  	@IRInst:assign		%t88
	str r4,[fp]                                       	@IRInst:assign		%t88
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#408                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
