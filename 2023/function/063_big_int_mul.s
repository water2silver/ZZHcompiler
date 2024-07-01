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
	push {r10,fp,lr}                                  
	sub sp,sp,#640                                    
	add fp,sp,#0                                      
	mov r4,#0                                         	@IRInst:mul	%t8	0	4
	mov r5,#4                                         	@IRInst:mul	%t8	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t8	0	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t8	0	4
	add r4,fp,#24                                     	@IRInst:add	%t9	mult1	%t8
	ldr r5,[fp,#28]                                   	@IRInst:add	%t9	mult1	%t8
	add r6,r4,r5                                      	@IRInst:add	%t9	mult1	%t8
	str r6,[fp,#32]                                   	@IRInst:add	%t9	mult1	%t8
	ldr r5,[fp,#32]                                   	@IRInst:assign	%t9	1
	mov r4,#1                                         	@IRInst:assign	%t9	1
	str r4,[r5]                                       	@IRInst:assign	%t9	1
	mov r4,#1                                         	@IRInst:mul	%t10	1	4
	mov r5,#4                                         	@IRInst:mul	%t10	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t10	1	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t10	1	4
	add r4,fp,#24                                     	@IRInst:add	%t11	mult1	%t10
	ldr r5,[fp,#36]                                   	@IRInst:add	%t11	mult1	%t10
	add r6,r4,r5                                      	@IRInst:add	%t11	mult1	%t10
	str r6,[fp,#40]                                   	@IRInst:add	%t11	mult1	%t10
	ldr r5,[fp,#40]                                   	@IRInst:assign	%t11	2
	mov r4,#2                                         	@IRInst:assign	%t11	2
	str r4,[r5]                                       	@IRInst:assign	%t11	2
	mov r4,#2                                         	@IRInst:mul	%t12	2	4
	mov r5,#4                                         	@IRInst:mul	%t12	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t12	2	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t12	2	4
	add r4,fp,#24                                     	@IRInst:add	%t13	mult1	%t12
	ldr r5,[fp,#44]                                   	@IRInst:add	%t13	mult1	%t12
	add r6,r4,r5                                      	@IRInst:add	%t13	mult1	%t12
	str r6,[fp,#48]                                   	@IRInst:add	%t13	mult1	%t12
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t13	3
	mov r4,#3                                         	@IRInst:assign	%t13	3
	str r4,[r5]                                       	@IRInst:assign	%t13	3
	mov r4,#3                                         	@IRInst:mul	%t14	3	4
	mov r5,#4                                         	@IRInst:mul	%t14	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t14	3	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t14	3	4
	add r4,fp,#24                                     	@IRInst:add	%t15	mult1	%t14
	ldr r5,[fp,#52]                                   	@IRInst:add	%t15	mult1	%t14
	add r6,r4,r5                                      	@IRInst:add	%t15	mult1	%t14
	str r6,[fp,#56]                                   	@IRInst:add	%t15	mult1	%t14
	ldr r5,[fp,#56]                                   	@IRInst:assign	%t15	4
	mov r4,#4                                         	@IRInst:assign	%t15	4
	str r4,[r5]                                       	@IRInst:assign	%t15	4
	mov r4,#4                                         	@IRInst:mul	%t16	4	4
	mov r5,#4                                         	@IRInst:mul	%t16	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t16	4	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t16	4	4
	add r4,fp,#24                                     	@IRInst:add	%t17	mult1	%t16
	ldr r5,[fp,#60]                                   	@IRInst:add	%t17	mult1	%t16
	add r6,r4,r5                                      	@IRInst:add	%t17	mult1	%t16
	str r6,[fp,#64]                                   	@IRInst:add	%t17	mult1	%t16
	ldr r5,[fp,#64]                                   	@IRInst:assign	%t17	5
	mov r4,#5                                         	@IRInst:assign	%t17	5
	str r4,[r5]                                       	@IRInst:assign	%t17	5
	mov r4,#5                                         	@IRInst:mul	%t18	5	4
	mov r5,#4                                         	@IRInst:mul	%t18	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t18	5	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t18	5	4
	add r4,fp,#24                                     	@IRInst:add	%t19	mult1	%t18
	ldr r5,[fp,#68]                                   	@IRInst:add	%t19	mult1	%t18
	add r6,r4,r5                                      	@IRInst:add	%t19	mult1	%t18
	str r6,[fp,#72]                                   	@IRInst:add	%t19	mult1	%t18
	ldr r5,[fp,#72]                                   	@IRInst:assign	%t19	6
	mov r4,#6                                         	@IRInst:assign	%t19	6
	str r4,[r5]                                       	@IRInst:assign	%t19	6
	mov r4,#6                                         	@IRInst:mul	%t20	6	4
	mov r5,#4                                         	@IRInst:mul	%t20	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t20	6	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t20	6	4
	add r4,fp,#24                                     	@IRInst:add	%t21	mult1	%t20
	ldr r5,[fp,#76]                                   	@IRInst:add	%t21	mult1	%t20
	add r6,r4,r5                                      	@IRInst:add	%t21	mult1	%t20
	str r6,[fp,#80]                                   	@IRInst:add	%t21	mult1	%t20
	ldr r5,[fp,#80]                                   	@IRInst:assign	%t21	7
	mov r4,#7                                         	@IRInst:assign	%t21	7
	str r4,[r5]                                       	@IRInst:assign	%t21	7
	mov r4,#7                                         	@IRInst:mul	%t22	7	4
	mov r5,#4                                         	@IRInst:mul	%t22	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t22	7	4
	str r6,[fp,#84]                                   	@IRInst:mul	%t22	7	4
	add r4,fp,#24                                     	@IRInst:add	%t23	mult1	%t22
	ldr r5,[fp,#84]                                   	@IRInst:add	%t23	mult1	%t22
	add r6,r4,r5                                      	@IRInst:add	%t23	mult1	%t22
	str r6,[fp,#88]                                   	@IRInst:add	%t23	mult1	%t22
	ldr r5,[fp,#88]                                   	@IRInst:assign	%t23	8
	mov r4,#8                                         	@IRInst:assign	%t23	8
	str r4,[r5]                                       	@IRInst:assign	%t23	8
	mov r4,#8                                         	@IRInst:mul	%t24	8	4
	mov r5,#4                                         	@IRInst:mul	%t24	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t24	8	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t24	8	4
	add r4,fp,#24                                     	@IRInst:add	%t25	mult1	%t24
	ldr r5,[fp,#92]                                   	@IRInst:add	%t25	mult1	%t24
	add r6,r4,r5                                      	@IRInst:add	%t25	mult1	%t24
	str r6,[fp,#96]                                   	@IRInst:add	%t25	mult1	%t24
	ldr r5,[fp,#96]                                   	@IRInst:assign	%t25	9
	mov r4,#9                                         	@IRInst:assign	%t25	9
	str r4,[r5]                                       	@IRInst:assign	%t25	9
	mov r4,#9                                         	@IRInst:mul	%t26	9	4
	mov r5,#4                                         	@IRInst:mul	%t26	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t26	9	4
	str r6,[fp,#100]                                  	@IRInst:mul	%t26	9	4
	add r4,fp,#24                                     	@IRInst:add	%t27	mult1	%t26
	ldr r5,[fp,#100]                                  	@IRInst:add	%t27	mult1	%t26
	add r6,r4,r5                                      	@IRInst:add	%t27	mult1	%t26
	str r6,[fp,#104]                                  	@IRInst:add	%t27	mult1	%t26
	ldr r5,[fp,#104]                                  	@IRInst:assign	%t27	0
	mov r4,#0                                         	@IRInst:assign	%t27	0
	str r4,[r5]                                       	@IRInst:assign	%t27	0
	mov r4,#10                                        	@IRInst:mul	%t28	10	4
	mov r5,#4                                         	@IRInst:mul	%t28	10	4
	mul r6,r4,r5                                      	@IRInst:mul	%t28	10	4
	str r6,[fp,#108]                                  	@IRInst:mul	%t28	10	4
	add r4,fp,#24                                     	@IRInst:add	%t29	mult1	%t28
	ldr r5,[fp,#108]                                  	@IRInst:add	%t29	mult1	%t28
	add r6,r4,r5                                      	@IRInst:add	%t29	mult1	%t28
	str r6,[fp,#112]                                  	@IRInst:add	%t29	mult1	%t28
	ldr r5,[fp,#112]                                  	@IRInst:assign	%t29	1
	mov r4,#1                                         	@IRInst:assign	%t29	1
	str r4,[r5]                                       	@IRInst:assign	%t29	1
	mov r4,#11                                        	@IRInst:mul	%t30	11	4
	mov r5,#4                                         	@IRInst:mul	%t30	11	4
	mul r6,r4,r5                                      	@IRInst:mul	%t30	11	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t30	11	4
	add r4,fp,#24                                     	@IRInst:add	%t31	mult1	%t30
	ldr r5,[fp,#116]                                  	@IRInst:add	%t31	mult1	%t30
	add r6,r4,r5                                      	@IRInst:add	%t31	mult1	%t30
	str r6,[fp,#120]                                  	@IRInst:add	%t31	mult1	%t30
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t31	2
	mov r4,#2                                         	@IRInst:assign	%t31	2
	str r4,[r5]                                       	@IRInst:assign	%t31	2
	mov r4,#12                                        	@IRInst:mul	%t32	12	4
	mov r5,#4                                         	@IRInst:mul	%t32	12	4
	mul r6,r4,r5                                      	@IRInst:mul	%t32	12	4
	str r6,[fp,#124]                                  	@IRInst:mul	%t32	12	4
	add r4,fp,#24                                     	@IRInst:add	%t33	mult1	%t32
	ldr r5,[fp,#124]                                  	@IRInst:add	%t33	mult1	%t32
	add r6,r4,r5                                      	@IRInst:add	%t33	mult1	%t32
	str r6,[fp,#128]                                  	@IRInst:add	%t33	mult1	%t32
	ldr r5,[fp,#128]                                  	@IRInst:assign	%t33	3
	mov r4,#3                                         	@IRInst:assign	%t33	3
	str r4,[r5]                                       	@IRInst:assign	%t33	3
	mov r4,#13                                        	@IRInst:mul	%t34	13	4
	mov r5,#4                                         	@IRInst:mul	%t34	13	4
	mul r6,r4,r5                                      	@IRInst:mul	%t34	13	4
	str r6,[fp,#132]                                  	@IRInst:mul	%t34	13	4
	add r4,fp,#24                                     	@IRInst:add	%t35	mult1	%t34
	ldr r5,[fp,#132]                                  	@IRInst:add	%t35	mult1	%t34
	add r6,r4,r5                                      	@IRInst:add	%t35	mult1	%t34
	str r6,[fp,#136]                                  	@IRInst:add	%t35	mult1	%t34
	ldr r5,[fp,#136]                                  	@IRInst:assign	%t35	4
	mov r4,#4                                         	@IRInst:assign	%t35	4
	str r4,[r5]                                       	@IRInst:assign	%t35	4
	mov r4,#14                                        	@IRInst:mul	%t36	14	4
	mov r5,#4                                         	@IRInst:mul	%t36	14	4
	mul r6,r4,r5                                      	@IRInst:mul	%t36	14	4
	str r6,[fp,#140]                                  	@IRInst:mul	%t36	14	4
	add r4,fp,#24                                     	@IRInst:add	%t37	mult1	%t36
	ldr r5,[fp,#140]                                  	@IRInst:add	%t37	mult1	%t36
	add r6,r4,r5                                      	@IRInst:add	%t37	mult1	%t36
	str r6,[fp,#144]                                  	@IRInst:add	%t37	mult1	%t36
	ldr r5,[fp,#144]                                  	@IRInst:assign	%t37	5
	mov r4,#5                                         	@IRInst:assign	%t37	5
	str r4,[r5]                                       	@IRInst:assign	%t37	5
	mov r4,#15                                        	@IRInst:mul	%t38	15	4
	mov r5,#4                                         	@IRInst:mul	%t38	15	4
	mul r6,r4,r5                                      	@IRInst:mul	%t38	15	4
	str r6,[fp,#148]                                  	@IRInst:mul	%t38	15	4
	add r4,fp,#24                                     	@IRInst:add	%t39	mult1	%t38
	ldr r5,[fp,#148]                                  	@IRInst:add	%t39	mult1	%t38
	add r6,r4,r5                                      	@IRInst:add	%t39	mult1	%t38
	str r6,[fp,#152]                                  	@IRInst:add	%t39	mult1	%t38
	ldr r5,[fp,#152]                                  	@IRInst:assign	%t39	6
	mov r4,#6                                         	@IRInst:assign	%t39	6
	str r4,[r5]                                       	@IRInst:assign	%t39	6
	mov r4,#16                                        	@IRInst:mul	%t40	16	4
	mov r5,#4                                         	@IRInst:mul	%t40	16	4
	mul r6,r4,r5                                      	@IRInst:mul	%t40	16	4
	str r6,[fp,#156]                                  	@IRInst:mul	%t40	16	4
	add r4,fp,#24                                     	@IRInst:add	%t41	mult1	%t40
	ldr r5,[fp,#156]                                  	@IRInst:add	%t41	mult1	%t40
	add r6,r4,r5                                      	@IRInst:add	%t41	mult1	%t40
	str r6,[fp,#160]                                  	@IRInst:add	%t41	mult1	%t40
	ldr r5,[fp,#160]                                  	@IRInst:assign	%t41	7
	mov r4,#7                                         	@IRInst:assign	%t41	7
	str r4,[r5]                                       	@IRInst:assign	%t41	7
	mov r4,#17                                        	@IRInst:mul	%t42	17	4
	mov r5,#4                                         	@IRInst:mul	%t42	17	4
	mul r6,r4,r5                                      	@IRInst:mul	%t42	17	4
	str r6,[fp,#164]                                  	@IRInst:mul	%t42	17	4
	add r4,fp,#24                                     	@IRInst:add	%t43	mult1	%t42
	ldr r5,[fp,#164]                                  	@IRInst:add	%t43	mult1	%t42
	add r6,r4,r5                                      	@IRInst:add	%t43	mult1	%t42
	str r6,[fp,#168]                                  	@IRInst:add	%t43	mult1	%t42
	ldr r5,[fp,#168]                                  	@IRInst:assign	%t43	8
	mov r4,#8                                         	@IRInst:assign	%t43	8
	str r4,[r5]                                       	@IRInst:assign	%t43	8
	mov r4,#18                                        	@IRInst:mul	%t44	18	4
	mov r5,#4                                         	@IRInst:mul	%t44	18	4
	mul r6,r4,r5                                      	@IRInst:mul	%t44	18	4
	str r6,[fp,#172]                                  	@IRInst:mul	%t44	18	4
	add r4,fp,#24                                     	@IRInst:add	%t45	mult1	%t44
	ldr r5,[fp,#172]                                  	@IRInst:add	%t45	mult1	%t44
	add r6,r4,r5                                      	@IRInst:add	%t45	mult1	%t44
	str r6,[fp,#176]                                  	@IRInst:add	%t45	mult1	%t44
	ldr r5,[fp,#176]                                  	@IRInst:assign	%t45	9
	mov r4,#9                                         	@IRInst:assign	%t45	9
	str r4,[r5]                                       	@IRInst:assign	%t45	9
	mov r4,#19                                        	@IRInst:mul	%t46	19	4
	mov r5,#4                                         	@IRInst:mul	%t46	19	4
	mul r6,r4,r5                                      	@IRInst:mul	%t46	19	4
	str r6,[fp,#180]                                  	@IRInst:mul	%t46	19	4
	add r4,fp,#24                                     	@IRInst:add	%t47	mult1	%t46
	ldr r5,[fp,#180]                                  	@IRInst:add	%t47	mult1	%t46
	add r6,r4,r5                                      	@IRInst:add	%t47	mult1	%t46
	str r6,[fp,#184]                                  	@IRInst:add	%t47	mult1	%t46
	ldr r5,[fp,#184]                                  	@IRInst:assign	%t47	0
	mov r4,#0                                         	@IRInst:assign	%t47	0
	str r4,[r5]                                       	@IRInst:assign	%t47	0
	mov r4,#0                                         	@IRInst:mul	%t49	0	4
	mov r5,#4                                         	@IRInst:mul	%t49	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	0	4
	str r6,[fp,#188]                                  	@IRInst:mul	%t49	0	4
	add r4,fp,#24                                     	@IRInst:add	%t50	mult1	%t49
	ldr r5,[fp,#188]                                  	@IRInst:add	%t50	mult1	%t49
	add r6,r4,r5                                      	@IRInst:add	%t50	mult1	%t49
	str r6,[fp,#192]                                  	@IRInst:add	%t50	mult1	%t49
	ldr r5,[fp,#192]                                  	@IRInst:assign	%t50	2
	mov r4,#2                                         	@IRInst:assign	%t50	2
	str r4,[r5]                                       	@IRInst:assign	%t50	2
	mov r4,#1                                         	@IRInst:mul	%t51	1	4
	mov r5,#4                                         	@IRInst:mul	%t51	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t51	1	4
	str r6,[fp,#196]                                  	@IRInst:mul	%t51	1	4
	add r4,fp,#24                                     	@IRInst:add	%t52	mult1	%t51
	ldr r5,[fp,#196]                                  	@IRInst:add	%t52	mult1	%t51
	add r6,r4,r5                                      	@IRInst:add	%t52	mult1	%t51
	str r6,[fp,#200]                                  	@IRInst:add	%t52	mult1	%t51
	ldr r5,[fp,#200]                                  	@IRInst:assign	%t52	3
	mov r4,#3                                         	@IRInst:assign	%t52	3
	str r4,[r5]                                       	@IRInst:assign	%t52	3
	mov r4,#2                                         	@IRInst:mul	%t53	2	4
	mov r5,#4                                         	@IRInst:mul	%t53	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t53	2	4
	str r6,[fp,#204]                                  	@IRInst:mul	%t53	2	4
	add r4,fp,#24                                     	@IRInst:add	%t54	mult1	%t53
	ldr r5,[fp,#204]                                  	@IRInst:add	%t54	mult1	%t53
	add r6,r4,r5                                      	@IRInst:add	%t54	mult1	%t53
	str r6,[fp,#208]                                  	@IRInst:add	%t54	mult1	%t53
	ldr r5,[fp,#208]                                  	@IRInst:assign	%t54	4
	mov r4,#4                                         	@IRInst:assign	%t54	4
	str r4,[r5]                                       	@IRInst:assign	%t54	4
	mov r4,#3                                         	@IRInst:mul	%t55	3	4
	mov r5,#4                                         	@IRInst:mul	%t55	3	4
	mul r6,r4,r5                                      	@IRInst:mul	%t55	3	4
	str r6,[fp,#212]                                  	@IRInst:mul	%t55	3	4
	add r4,fp,#24                                     	@IRInst:add	%t56	mult1	%t55
	ldr r5,[fp,#212]                                  	@IRInst:add	%t56	mult1	%t55
	add r6,r4,r5                                      	@IRInst:add	%t56	mult1	%t55
	str r6,[fp,#216]                                  	@IRInst:add	%t56	mult1	%t55
	ldr r5,[fp,#216]                                  	@IRInst:assign	%t56	2
	mov r4,#2                                         	@IRInst:assign	%t56	2
	str r4,[r5]                                       	@IRInst:assign	%t56	2
	mov r4,#4                                         	@IRInst:mul	%t57	4	4
	mov r5,#4                                         	@IRInst:mul	%t57	4	4
	mul r6,r4,r5                                      	@IRInst:mul	%t57	4	4
	str r6,[fp,#220]                                  	@IRInst:mul	%t57	4	4
	add r4,fp,#24                                     	@IRInst:add	%t58	mult1	%t57
	ldr r5,[fp,#220]                                  	@IRInst:add	%t58	mult1	%t57
	add r6,r4,r5                                      	@IRInst:add	%t58	mult1	%t57
	str r6,[fp,#224]                                  	@IRInst:add	%t58	mult1	%t57
	ldr r5,[fp,#224]                                  	@IRInst:assign	%t58	5
	mov r4,#5                                         	@IRInst:assign	%t58	5
	str r4,[r5]                                       	@IRInst:assign	%t58	5
	mov r4,#5                                         	@IRInst:mul	%t59	5	4
	mov r5,#4                                         	@IRInst:mul	%t59	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t59	5	4
	str r6,[fp,#228]                                  	@IRInst:mul	%t59	5	4
	add r4,fp,#24                                     	@IRInst:add	%t60	mult1	%t59
	ldr r5,[fp,#228]                                  	@IRInst:add	%t60	mult1	%t59
	add r6,r4,r5                                      	@IRInst:add	%t60	mult1	%t59
	str r6,[fp,#232]                                  	@IRInst:add	%t60	mult1	%t59
	ldr r5,[fp,#232]                                  	@IRInst:assign	%t60	7
	mov r4,#7                                         	@IRInst:assign	%t60	7
	str r4,[r5]                                       	@IRInst:assign	%t60	7
	mov r4,#6                                         	@IRInst:mul	%t61	6	4
	mov r5,#4                                         	@IRInst:mul	%t61	6	4
	mul r6,r4,r5                                      	@IRInst:mul	%t61	6	4
	str r6,[fp,#236]                                  	@IRInst:mul	%t61	6	4
	add r4,fp,#24                                     	@IRInst:add	%t62	mult1	%t61
	ldr r5,[fp,#236]                                  	@IRInst:add	%t62	mult1	%t61
	add r6,r4,r5                                      	@IRInst:add	%t62	mult1	%t61
	str r6,[fp,#240]                                  	@IRInst:add	%t62	mult1	%t61
	ldr r5,[fp,#240]                                  	@IRInst:assign	%t62	9
	mov r4,#9                                         	@IRInst:assign	%t62	9
	str r4,[r5]                                       	@IRInst:assign	%t62	9
	mov r4,#7                                         	@IRInst:mul	%t63	7	4
	mov r5,#4                                         	@IRInst:mul	%t63	7	4
	mul r6,r4,r5                                      	@IRInst:mul	%t63	7	4
	str r6,[fp,#244]                                  	@IRInst:mul	%t63	7	4
	add r4,fp,#24                                     	@IRInst:add	%t64	mult1	%t63
	ldr r5,[fp,#244]                                  	@IRInst:add	%t64	mult1	%t63
	add r6,r4,r5                                      	@IRInst:add	%t64	mult1	%t63
	str r6,[fp,#248]                                  	@IRInst:add	%t64	mult1	%t63
	ldr r5,[fp,#248]                                  	@IRInst:assign	%t64	9
	mov r4,#9                                         	@IRInst:assign	%t64	9
	str r4,[r5]                                       	@IRInst:assign	%t64	9
	mov r4,#8                                         	@IRInst:mul	%t65	8	4
	mov r5,#4                                         	@IRInst:mul	%t65	8	4
	mul r6,r4,r5                                      	@IRInst:mul	%t65	8	4
	str r6,[fp,#252]                                  	@IRInst:mul	%t65	8	4
	add r4,fp,#24                                     	@IRInst:add	%t66	mult1	%t65
	ldr r5,[fp,#252]                                  	@IRInst:add	%t66	mult1	%t65
	add r6,r4,r5                                      	@IRInst:add	%t66	mult1	%t65
	str r6,[fp,#256]                                  	@IRInst:add	%t66	mult1	%t65
	ldr r5,[fp,#256]                                  	@IRInst:assign	%t66	0
	mov r4,#0                                         	@IRInst:assign	%t66	0
	str r4,[r5]                                       	@IRInst:assign	%t66	0
	mov r4,#9                                         	@IRInst:mul	%t67	9	4
	mov r5,#4                                         	@IRInst:mul	%t67	9	4
	mul r6,r4,r5                                      	@IRInst:mul	%t67	9	4
	str r6,[fp,#260]                                  	@IRInst:mul	%t67	9	4
	add r4,fp,#24                                     	@IRInst:add	%t68	mult1	%t67
	ldr r5,[fp,#260]                                  	@IRInst:add	%t68	mult1	%t67
	add r6,r4,r5                                      	@IRInst:add	%t68	mult1	%t67
	str r6,[fp,#264]                                  	@IRInst:add	%t68	mult1	%t67
	ldr r5,[fp,#264]                                  	@IRInst:assign	%t68	1
	mov r4,#1                                         	@IRInst:assign	%t68	1
	str r4,[r5]                                       	@IRInst:assign	%t68	1
	mov r4,#10                                        	@IRInst:mul	%t69	10	4
	mov r5,#4                                         	@IRInst:mul	%t69	10	4
	mul r6,r4,r5                                      	@IRInst:mul	%t69	10	4
	str r6,[fp,#268]                                  	@IRInst:mul	%t69	10	4
	add r4,fp,#24                                     	@IRInst:add	%t70	mult1	%t69
	ldr r5,[fp,#268]                                  	@IRInst:add	%t70	mult1	%t69
	add r6,r4,r5                                      	@IRInst:add	%t70	mult1	%t69
	str r6,[fp,#272]                                  	@IRInst:add	%t70	mult1	%t69
	ldr r5,[fp,#272]                                  	@IRInst:assign	%t70	9
	mov r4,#9                                         	@IRInst:assign	%t70	9
	str r4,[r5]                                       	@IRInst:assign	%t70	9
	mov r4,#11                                        	@IRInst:mul	%t71	11	4
	mov r5,#4                                         	@IRInst:mul	%t71	11	4
	mul r6,r4,r5                                      	@IRInst:mul	%t71	11	4
	str r6,[fp,#276]                                  	@IRInst:mul	%t71	11	4
	add r4,fp,#24                                     	@IRInst:add	%t72	mult1	%t71
	ldr r5,[fp,#276]                                  	@IRInst:add	%t72	mult1	%t71
	add r6,r4,r5                                      	@IRInst:add	%t72	mult1	%t71
	str r6,[fp,#280]                                  	@IRInst:add	%t72	mult1	%t71
	ldr r5,[fp,#280]                                  	@IRInst:assign	%t72	8
	mov r4,#8                                         	@IRInst:assign	%t72	8
	str r4,[r5]                                       	@IRInst:assign	%t72	8
	mov r4,#12                                        	@IRInst:mul	%t73	12	4
	mov r5,#4                                         	@IRInst:mul	%t73	12	4
	mul r6,r4,r5                                      	@IRInst:mul	%t73	12	4
	str r6,[fp,#284]                                  	@IRInst:mul	%t73	12	4
	add r4,fp,#24                                     	@IRInst:add	%t74	mult1	%t73
	ldr r5,[fp,#284]                                  	@IRInst:add	%t74	mult1	%t73
	add r6,r4,r5                                      	@IRInst:add	%t74	mult1	%t73
	str r6,[fp,#288]                                  	@IRInst:add	%t74	mult1	%t73
	ldr r5,[fp,#288]                                  	@IRInst:assign	%t74	7
	mov r4,#7                                         	@IRInst:assign	%t74	7
	str r4,[r5]                                       	@IRInst:assign	%t74	7
	mov r4,#13                                        	@IRInst:mul	%t75	13	4
	mov r5,#4                                         	@IRInst:mul	%t75	13	4
	mul r6,r4,r5                                      	@IRInst:mul	%t75	13	4
	str r6,[fp,#292]                                  	@IRInst:mul	%t75	13	4
	add r4,fp,#24                                     	@IRInst:add	%t76	mult1	%t75
	ldr r5,[fp,#292]                                  	@IRInst:add	%t76	mult1	%t75
	add r6,r4,r5                                      	@IRInst:add	%t76	mult1	%t75
	str r6,[fp,#296]                                  	@IRInst:add	%t76	mult1	%t75
	ldr r5,[fp,#296]                                  	@IRInst:assign	%t76	6
	mov r4,#6                                         	@IRInst:assign	%t76	6
	str r4,[r5]                                       	@IRInst:assign	%t76	6
	mov r4,#14                                        	@IRInst:mul	%t77	14	4
	mov r5,#4                                         	@IRInst:mul	%t77	14	4
	mul r6,r4,r5                                      	@IRInst:mul	%t77	14	4
	str r6,[fp,#300]                                  	@IRInst:mul	%t77	14	4
	add r4,fp,#24                                     	@IRInst:add	%t78	mult1	%t77
	ldr r5,[fp,#300]                                  	@IRInst:add	%t78	mult1	%t77
	add r6,r4,r5                                      	@IRInst:add	%t78	mult1	%t77
	str r6,[fp,#304]                                  	@IRInst:add	%t78	mult1	%t77
	ldr r5,[fp,#304]                                  	@IRInst:assign	%t78	4
	mov r4,#4                                         	@IRInst:assign	%t78	4
	str r4,[r5]                                       	@IRInst:assign	%t78	4
	mov r4,#15                                        	@IRInst:mul	%t79	15	4
	mov r5,#4                                         	@IRInst:mul	%t79	15	4
	mul r6,r4,r5                                      	@IRInst:mul	%t79	15	4
	str r6,[fp,#308]                                  	@IRInst:mul	%t79	15	4
	add r4,fp,#24                                     	@IRInst:add	%t80	mult1	%t79
	ldr r5,[fp,#308]                                  	@IRInst:add	%t80	mult1	%t79
	add r6,r4,r5                                      	@IRInst:add	%t80	mult1	%t79
	str r6,[fp,#312]                                  	@IRInst:add	%t80	mult1	%t79
	ldr r5,[fp,#312]                                  	@IRInst:assign	%t80	3
	mov r4,#3                                         	@IRInst:assign	%t80	3
	str r4,[r5]                                       	@IRInst:assign	%t80	3
	mov r4,#16                                        	@IRInst:mul	%t81	16	4
	mov r5,#4                                         	@IRInst:mul	%t81	16	4
	mul r6,r4,r5                                      	@IRInst:mul	%t81	16	4
	str r6,[fp,#316]                                  	@IRInst:mul	%t81	16	4
	add r4,fp,#24                                     	@IRInst:add	%t82	mult1	%t81
	ldr r5,[fp,#316]                                  	@IRInst:add	%t82	mult1	%t81
	add r6,r4,r5                                      	@IRInst:add	%t82	mult1	%t81
	str r6,[fp,#320]                                  	@IRInst:add	%t82	mult1	%t81
	ldr r5,[fp,#320]                                  	@IRInst:assign	%t82	2
	mov r4,#2                                         	@IRInst:assign	%t82	2
	str r4,[r5]                                       	@IRInst:assign	%t82	2
	mov r4,#17                                        	@IRInst:mul	%t83	17	4
	mov r5,#4                                         	@IRInst:mul	%t83	17	4
	mul r6,r4,r5                                      	@IRInst:mul	%t83	17	4
	str r6,[fp,#324]                                  	@IRInst:mul	%t83	17	4
	add r4,fp,#24                                     	@IRInst:add	%t84	mult1	%t83
	ldr r5,[fp,#324]                                  	@IRInst:add	%t84	mult1	%t83
	add r6,r4,r5                                      	@IRInst:add	%t84	mult1	%t83
	str r6,[fp,#328]                                  	@IRInst:add	%t84	mult1	%t83
	ldr r5,[fp,#328]                                  	@IRInst:assign	%t84	1
	mov r4,#1                                         	@IRInst:assign	%t84	1
	str r4,[r5]                                       	@IRInst:assign	%t84	1
	mov r4,#18                                        	@IRInst:mul	%t85	18	4
	mov r5,#4                                         	@IRInst:mul	%t85	18	4
	mul r6,r4,r5                                      	@IRInst:mul	%t85	18	4
	str r6,[fp,#332]                                  	@IRInst:mul	%t85	18	4
	add r4,fp,#24                                     	@IRInst:add	%t86	mult1	%t85
	ldr r5,[fp,#332]                                  	@IRInst:add	%t86	mult1	%t85
	add r6,r4,r5                                      	@IRInst:add	%t86	mult1	%t85
	str r6,[fp,#336]                                  	@IRInst:add	%t86	mult1	%t85
	ldr r5,[fp,#336]                                  	@IRInst:assign	%t86	2
	mov r4,#2                                         	@IRInst:assign	%t86	2
	str r4,[r5]                                       	@IRInst:assign	%t86	2
	mov r4,#19                                        	@IRInst:mul	%t87	19	4
	mov r5,#4                                         	@IRInst:mul	%t87	19	4
	mul r6,r4,r5                                      	@IRInst:mul	%t87	19	4
	str r6,[fp,#340]                                  	@IRInst:mul	%t87	19	4
	add r4,fp,#24                                     	@IRInst:add	%t88	mult1	%t87
	ldr r5,[fp,#340]                                  	@IRInst:add	%t88	mult1	%t87
	add r6,r4,r5                                      	@IRInst:add	%t88	mult1	%t87
	str r6,[fp,#344]                                  	@IRInst:add	%t88	mult1	%t87
	ldr r5,[fp,#344]                                  	@IRInst:assign	%t88	2
	mov r4,#2                                         	@IRInst:assign	%t88	2
	str r4,[r5]                                       	@IRInst:assign	%t88	2
	ldr r4,[fp,#24]                                   
	str r4,[fp,#348]                                  
	ldr r4,[fp,#24]                                   
	str r4,[fp,#352]                                  
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L3:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t97	i	len1
	ldr r5,[fp,#348]                                  	@IRInst:blt	%t97	i	len1
	cmp r4,r5                                         	@IRInst:blt	%t97	i	len1
	blt .L4                                           
	b .L5                                             
.L4:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t100	i	4
	mov r5,#4                                         	@IRInst:mul	%t100	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t100	i	4
	str r6,[fp,#380]                                  	@IRInst:mul	%t100	i	4
	add r4,fp,#24                                     	@IRInst:add	%t101	mult1	%t100
	ldr r5,[fp,#380]                                  	@IRInst:add	%t101	mult1	%t100
	add r6,r4,r5                                      	@IRInst:add	%t101	mult1	%t100
	str r6,[fp,#384]                                  	@IRInst:add	%t101	mult1	%t100
	ldr r4,[fp,#384]                                  	@IRInst:assign	%t102	%t101
	ldr r4,[r4]                                       	@IRInst:assign	%t102	%t101
	str r4,[fp,#388]                                  	@IRInst:assign	%t102	%t101
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t98	i	4
	mov r5,#4                                         	@IRInst:mul	%t98	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t98	i	4
	str r6,[fp,#372]                                  	@IRInst:mul	%t98	i	4
	add r4,fp,#356                                    	@IRInst:add	%t99	c1	%t98
	ldr r5,[fp,#372]                                  	@IRInst:add	%t99	c1	%t98
	add r6,r4,r5                                      	@IRInst:add	%t99	c1	%t98
	str r6,[fp,#376]                                  	@IRInst:add	%t99	c1	%t98
	ldr r5,[fp,#376]                                  	@IRInst:assign	%t99	%t102
	ldr r4,[fp,#388]                                  	@IRInst:assign	%t99	%t102
	str r4,[r5]                                       	@IRInst:assign	%t99	%t102
	ldr r4,[fp,#4]                                    	@IRInst:add	%t103	i	1
	mov r5,#1                                         	@IRInst:add	%t103	i	1
	add r6,r4,r5                                      	@IRInst:add	%t103	i	1
	str r6,[fp,#392]                                  	@IRInst:add	%t103	i	1
	ldr r4,[fp,#392]                                  	@IRInst:assign	i	%t103
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t103
	b .L3                                             
.L5:
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L6:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t104	i	len2
	ldr r5,[fp,#352]                                  	@IRInst:blt	%t104	i	len2
	cmp r4,r5                                         	@IRInst:blt	%t104	i	len2
	blt .L7                                           
	b .L8                                             
.L7:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t107	i	4
	mov r5,#4                                         	@IRInst:mul	%t107	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t107	i	4
	str r6,[fp,#408]                                  	@IRInst:mul	%t107	i	4
	add r4,fp,#188                                    	@IRInst:add	%t108	mult2	%t107
	ldr r5,[fp,#408]                                  	@IRInst:add	%t108	mult2	%t107
	add r6,r4,r5                                      	@IRInst:add	%t108	mult2	%t107
	str r6,[fp,#412]                                  	@IRInst:add	%t108	mult2	%t107
	ldr r4,[fp,#412]                                  	@IRInst:assign	%t109	%t108
	ldr r4,[r4]                                       	@IRInst:assign	%t109	%t108
	str r4,[fp,#416]                                  	@IRInst:assign	%t109	%t108
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t105	i	4
	mov r5,#4                                         	@IRInst:mul	%t105	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t105	i	4
	str r6,[fp,#400]                                  	@IRInst:mul	%t105	i	4
	add r4,fp,#360                                    	@IRInst:add	%t106	c2	%t105
	ldr r5,[fp,#400]                                  	@IRInst:add	%t106	c2	%t105
	add r6,r4,r5                                      	@IRInst:add	%t106	c2	%t105
	str r6,[fp,#404]                                  	@IRInst:add	%t106	c2	%t105
	ldr r5,[fp,#404]                                  	@IRInst:assign	%t106	%t109
	ldr r4,[fp,#416]                                  	@IRInst:assign	%t106	%t109
	str r4,[r5]                                       	@IRInst:assign	%t106	%t109
	ldr r4,[fp,#4]                                    	@IRInst:add	%t110	i	1
	mov r5,#1                                         	@IRInst:add	%t110	i	1
	add r6,r4,r5                                      	@IRInst:add	%t110	i	1
	str r6,[fp,#420]                                  	@IRInst:add	%t110	i	1
	ldr r4,[fp,#420]                                  	@IRInst:assign	i	%t110
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t110
	b .L6                                             
.L8:
	ldr r4,[fp,#348]                                  	@IRInst:add	%t111	len1	len2
	ldr r5,[fp,#352]                                  	@IRInst:add	%t111	len1	len2
	add r6,r4,r5                                      	@IRInst:add	%t111	len1	len2
	str r6,[fp,#424]                                  	@IRInst:add	%t111	len1	len2
	ldr r4,[fp,#424]                                  	@IRInst:sub	%t112	%t111	1
	mov r5,#1                                         	@IRInst:sub	%t112	%t111	1
	sub r6,r4,r5                                      	@IRInst:sub	%t112	%t111	1
	str r6,[fp,#428]                                  	@IRInst:sub	%t112	%t111	1
	ldr r4,[fp,#428]                                  	@IRInst:assign	n	%t112
	str r4,[fp,#16]                                   	@IRInst:assign	n	%t112
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#4]                                    	@IRInst:assign	i	0
.L9:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t113	i	n
	ldr r5,[fp,#16]                                   	@IRInst:ble	%t113	i	n
	cmp r4,r5                                         	@IRInst:ble	%t113	i	n
	ble .L10                                          
	b .L11                                            
.L10:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t114	i	4
	mov r5,#4                                         	@IRInst:mul	%t114	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t114	i	4
	str r6,[fp,#436]                                  	@IRInst:mul	%t114	i	4
	add r4,fp,#364                                    	@IRInst:add	%t115	result	%t114
	ldr r5,[fp,#436]                                  	@IRInst:add	%t115	result	%t114
	add r6,r4,r5                                      	@IRInst:add	%t115	result	%t114
	str r6,[fp,#440]                                  	@IRInst:add	%t115	result	%t114
	ldr r5,[fp,#440]                                  	@IRInst:assign	%t115	0
	mov r4,#0                                         	@IRInst:assign	%t115	0
	str r4,[r5]                                       	@IRInst:assign	%t115	0
	ldr r4,[fp,#4]                                    	@IRInst:add	%t116	i	1
	mov r5,#1                                         	@IRInst:add	%t116	i	1
	add r6,r4,r5                                      	@IRInst:add	%t116	i	1
	str r6,[fp,#444]                                  	@IRInst:add	%t116	i	1
	ldr r4,[fp,#444]                                  	@IRInst:assign	i	%t116
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t116
	b .L9                                             
.L11:
	mov r4,#0                                         	@IRInst:assign	temp	0
	str r4,[fp,#20]                                   	@IRInst:assign	temp	0
	ldr r4,[fp,#352]                                  	@IRInst:sub	%t117	len2	1
	mov r5,#1                                         	@IRInst:sub	%t117	len2	1
	sub r6,r4,r5                                      	@IRInst:sub	%t117	len2	1
	str r6,[fp,#448]                                  	@IRInst:sub	%t117	len2	1
	ldr r4,[fp,#448]                                  	@IRInst:assign	i	%t117
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t117
.L12:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t118	i	18446744073709551615
	mov r5,#-1                                        	@IRInst:bgt	%t118	i	18446744073709551615
	cmp r4,r5                                         	@IRInst:bgt	%t118	i	18446744073709551615
	bgt .L13                                          
	b .L14                                            
.L13:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t119	i	4
	mov r5,#4                                         	@IRInst:mul	%t119	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t119	i	4
	str r6,[fp,#456]                                  	@IRInst:mul	%t119	i	4
	add r4,fp,#360                                    	@IRInst:add	%t120	c2	%t119
	ldr r5,[fp,#456]                                  	@IRInst:add	%t120	c2	%t119
	add r6,r4,r5                                      	@IRInst:add	%t120	c2	%t119
	str r6,[fp,#460]                                  	@IRInst:add	%t120	c2	%t119
	ldr r4,[fp,#460]                                  	@IRInst:assign	%t121	%t120
	ldr r4,[r4]                                       	@IRInst:assign	%t121	%t120
	str r4,[fp,#464]                                  	@IRInst:assign	%t121	%t120
	ldr r4,[fp,#464]                                  	@IRInst:assign	t	%t121
	str r4,[fp,#12]                                   	@IRInst:assign	t	%t121
	ldr r4,[fp,#348]                                  	@IRInst:sub	%t122	len1	1
	mov r5,#1                                         	@IRInst:sub	%t122	len1	1
	sub r6,r4,r5                                      	@IRInst:sub	%t122	len1	1
	str r6,[fp,#468]                                  	@IRInst:sub	%t122	len1	1
	ldr r4,[fp,#468]                                  	@IRInst:assign	j	%t122
	str r4,[fp,#8]                                    	@IRInst:assign	j	%t122
.L15:
	ldr r4,[fp,#8]                                    	@IRInst:bgt	%t123	j	18446744073709551615
	mov r5,#-1                                        	@IRInst:bgt	%t123	j	18446744073709551615
	cmp r4,r5                                         	@IRInst:bgt	%t123	j	18446744073709551615
	bgt .L16                                          
	b .L17                                            
.L16:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t124	n	4
	mov r5,#4                                         	@IRInst:mul	%t124	n	4
	mul r6,r4,r5                                      	@IRInst:mul	%t124	n	4
	str r6,[fp,#476]                                  	@IRInst:mul	%t124	n	4
	add r4,fp,#364                                    	@IRInst:add	%t125	result	%t124
	ldr r5,[fp,#476]                                  	@IRInst:add	%t125	result	%t124
	add r6,r4,r5                                      	@IRInst:add	%t125	result	%t124
	str r6,[fp,#480]                                  	@IRInst:add	%t125	result	%t124
	ldr r4,[fp,#480]                                  	@IRInst:assign	%t126	%t125
	ldr r4,[r4]                                       	@IRInst:assign	%t126	%t125
	str r4,[fp,#484]                                  	@IRInst:assign	%t126	%t125
	ldr r4,[fp,#8]                                    	@IRInst:mul	%t127	j	4
	mov r5,#4                                         	@IRInst:mul	%t127	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t127	j	4
	str r6,[fp,#488]                                  	@IRInst:mul	%t127	j	4
	add r4,fp,#356                                    	@IRInst:add	%t128	c1	%t127
	ldr r5,[fp,#488]                                  	@IRInst:add	%t128	c1	%t127
	add r6,r4,r5                                      	@IRInst:add	%t128	c1	%t127
	str r6,[fp,#492]                                  	@IRInst:add	%t128	c1	%t127
	ldr r4,[fp,#492]                                  	@IRInst:assign	%t129	%t128
	ldr r4,[r4]                                       	@IRInst:assign	%t129	%t128
	str r4,[fp,#496]                                  	@IRInst:assign	%t129	%t128
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t130	t	%t129
	ldr r5,[fp,#496]                                  	@IRInst:mul	%t130	t	%t129
	mul r6,r4,r5                                      	@IRInst:mul	%t130	t	%t129
	str r6,[fp,#500]                                  	@IRInst:mul	%t130	t	%t129
	ldr r4,[fp,#484]                                  	@IRInst:add	%t131	%t126	%t130
	ldr r5,[fp,#500]                                  	@IRInst:add	%t131	%t126	%t130
	add r6,r4,r5                                      	@IRInst:add	%t131	%t126	%t130
	str r6,[fp,#504]                                  	@IRInst:add	%t131	%t126	%t130
	ldr r4,[fp,#504]                                  	@IRInst:assign	temp	%t131
	str r4,[fp,#20]                                   	@IRInst:assign	temp	%t131
	ldr r4,[fp,#20]                                   	@IRInst:bge	%t132	temp	10
	mov r5,#10                                        	@IRInst:bge	%t132	temp	10
	cmp r4,r5                                         	@IRInst:bge	%t132	temp	10
	bge .L18                                          
	b .L19                                            
.L18:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t133	n	4
	mov r5,#4                                         	@IRInst:mul	%t133	n	4
	mul r6,r4,r5                                      	@IRInst:mul	%t133	n	4
	str r6,[fp,#512]                                  	@IRInst:mul	%t133	n	4
	add r4,fp,#364                                    	@IRInst:add	%t134	result	%t133
	ldr r5,[fp,#512]                                  	@IRInst:add	%t134	result	%t133
	add r6,r4,r5                                      	@IRInst:add	%t134	result	%t133
	str r6,[fp,#516]                                  	@IRInst:add	%t134	result	%t133
	ldr r5,[fp,#516]                                  	@IRInst:assign	%t134	temp
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t134	temp
	str r4,[r5]                                       	@IRInst:assign	%t134	temp
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t139	n	1
	mov r5,#1                                         	@IRInst:sub	%t139	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t139	n	1
	str r6,[fp,#536]                                  	@IRInst:sub	%t139	n	1
	ldr r4,[fp,#536]                                  	@IRInst:mul	%t138	%t139	4
	mov r5,#4                                         	@IRInst:mul	%t138	%t139	4
	mul r6,r4,r5                                      	@IRInst:mul	%t138	%t139	4
	str r6,[fp,#532]                                  	@IRInst:mul	%t138	%t139	4
	add r4,fp,#364                                    	@IRInst:add	%t140	result	%t138
	ldr r5,[fp,#532]                                  	@IRInst:add	%t140	result	%t138
	add r6,r4,r5                                      	@IRInst:add	%t140	result	%t138
	str r6,[fp,#540]                                  	@IRInst:add	%t140	result	%t138
	ldr r4,[fp,#540]                                  	@IRInst:assign	%t141	%t140
	ldr r4,[r4]                                       	@IRInst:assign	%t141	%t140
	str r4,[fp,#544]                                  	@IRInst:assign	%t141	%t140
	ldr r4,[fp,#20]                                   	@IRInst:sdiv	%t142	temp	10
	mov r5,#10                                        	@IRInst:sdiv	%t142	temp	10
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t142	temp	10
	str r6,[fp,#548]                                  	@IRInst:sdiv	%t142	temp	10
	ldr r4,[fp,#544]                                  	@IRInst:add	%t143	%t141	%t142
	ldr r5,[fp,#548]                                  	@IRInst:add	%t143	%t141	%t142
	add r6,r4,r5                                      	@IRInst:add	%t143	%t141	%t142
	str r6,[fp,#552]                                  	@IRInst:add	%t143	%t141	%t142
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t136	n	1
	mov r5,#1                                         	@IRInst:sub	%t136	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t136	n	1
	str r6,[fp,#524]                                  	@IRInst:sub	%t136	n	1
	ldr r4,[fp,#524]                                  	@IRInst:mul	%t135	%t136	4
	mov r5,#4                                         	@IRInst:mul	%t135	%t136	4
	mul r6,r4,r5                                      	@IRInst:mul	%t135	%t136	4
	str r6,[fp,#520]                                  	@IRInst:mul	%t135	%t136	4
	add r4,fp,#364                                    	@IRInst:add	%t137	result	%t135
	ldr r5,[fp,#520]                                  	@IRInst:add	%t137	result	%t135
	add r6,r4,r5                                      	@IRInst:add	%t137	result	%t135
	str r6,[fp,#528]                                  	@IRInst:add	%t137	result	%t135
	ldr r5,[fp,#528]                                  	@IRInst:assign	%t137	%t143
	ldr r4,[fp,#552]                                  	@IRInst:assign	%t137	%t143
	str r4,[r5]                                       	@IRInst:assign	%t137	%t143
	b .L20                                            
.L19:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t144	n	4
	mov r5,#4                                         	@IRInst:mul	%t144	n	4
	mul r6,r4,r5                                      	@IRInst:mul	%t144	n	4
	str r6,[fp,#556]                                  	@IRInst:mul	%t144	n	4
	add r4,fp,#364                                    	@IRInst:add	%t145	result	%t144
	ldr r5,[fp,#556]                                  	@IRInst:add	%t145	result	%t144
	add r6,r4,r5                                      	@IRInst:add	%t145	result	%t144
	str r6,[fp,#560]                                  	@IRInst:add	%t145	result	%t144
	ldr r5,[fp,#560]                                  	@IRInst:assign	%t145	temp
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t145	temp
	str r4,[r5]                                       	@IRInst:assign	%t145	temp
.L20:
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t146	j	1
	mov r5,#1                                         	@IRInst:sub	%t146	j	1
	sub r6,r4,r5                                      	@IRInst:sub	%t146	j	1
	str r6,[fp,#564]                                  	@IRInst:sub	%t146	j	1
	ldr r4,[fp,#564]                                  	@IRInst:assign	j	%t146
	str r4,[fp,#8]                                    	@IRInst:assign	j	%t146
	ldr r4,[fp,#16]                                   	@IRInst:sub	%t147	n	1
	mov r5,#1                                         	@IRInst:sub	%t147	n	1
	sub r6,r4,r5                                      	@IRInst:sub	%t147	n	1
	str r6,[fp,#568]                                  	@IRInst:sub	%t147	n	1
	ldr r4,[fp,#568]                                  	@IRInst:assign	n	%t147
	str r4,[fp,#16]                                   	@IRInst:assign	n	%t147
	b .L15                                            
.L17:
	ldr r4,[fp,#16]                                   	@IRInst:add	%t148	n	len1
	ldr r5,[fp,#348]                                  	@IRInst:add	%t148	n	len1
	add r6,r4,r5                                      	@IRInst:add	%t148	n	len1
	str r6,[fp,#572]                                  	@IRInst:add	%t148	n	len1
	ldr r4,[fp,#572]                                  	@IRInst:sub	%t149	%t148	1
	mov r5,#1                                         	@IRInst:sub	%t149	%t148	1
	sub r6,r4,r5                                      	@IRInst:sub	%t149	%t148	1
	str r6,[fp,#576]                                  	@IRInst:sub	%t149	%t148	1
	ldr r4,[fp,#576]                                  	@IRInst:assign	n	%t149
	str r4,[fp,#16]                                   	@IRInst:assign	n	%t149
	ldr r4,[fp,#4]                                    	@IRInst:sub	%t150	i	1
	mov r5,#1                                         	@IRInst:sub	%t150	i	1
	sub r6,r4,r5                                      	@IRInst:sub	%t150	i	1
	str r6,[fp,#580]                                  	@IRInst:sub	%t150	i	1
	ldr r4,[fp,#580]                                  	@IRInst:assign	i	%t150
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t150
	b .L12                                            
.L14:
	mov r4,#0                                         	@IRInst:mul	%t151	0	4
	mov r5,#4                                         	@IRInst:mul	%t151	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t151	0	4
	str r6,[fp,#584]                                  	@IRInst:mul	%t151	0	4
	add r4,fp,#364                                    	@IRInst:add	%t152	result	%t151
	ldr r5,[fp,#584]                                  	@IRInst:add	%t152	result	%t151
	add r6,r4,r5                                      	@IRInst:add	%t152	result	%t151
	str r6,[fp,#588]                                  	@IRInst:add	%t152	result	%t151
	ldr r4,[fp,#588]                                  	@IRInst:assign	%t153	%t152
	ldr r4,[r4]                                       	@IRInst:assign	%t153	%t152
	str r4,[fp,#592]                                  	@IRInst:assign	%t153	%t152
	ldr r4,[fp,#592]                                  	@IRInst:beq	%t154	%t153	0
	mov r5,#0                                         	@IRInst:beq	%t154	%t153	0
	cmp r4,r5                                         	@IRInst:beq	%t154	%t153	0
	beq .L22                                          
	b .L21                                            
.L21:
	mov r4,#0                                         	@IRInst:mul	%t155	0	4
	mov r5,#4                                         	@IRInst:mul	%t155	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t155	0	4
	str r6,[fp,#600]                                  	@IRInst:mul	%t155	0	4
	add r4,fp,#364                                    	@IRInst:add	%t156	result	%t155
	ldr r5,[fp,#600]                                  	@IRInst:add	%t156	result	%t155
	add r6,r4,r5                                      	@IRInst:add	%t156	result	%t155
	str r6,[fp,#604]                                  	@IRInst:add	%t156	result	%t155
	ldr r4,[fp,#604]                                  	@IRInst:assign	%t157	%t156
	ldr r4,[r4]                                       	@IRInst:assign	%t157	%t156
	str r4,[fp,#608]                                  	@IRInst:assign	%t157	%t156
	ldr r0,[fp,#608]                                  	@IRInst:assign	r0	%t157
	bl putint                                         
.L22:
.L23:
	mov r4,#1                                         	@IRInst:assign	i	1
	str r4,[fp,#4]                                    	@IRInst:assign	i	1
.L24:
	ldr r4,[fp,#348]                                  	@IRInst:add	%t158	len1	len2
	ldr r5,[fp,#352]                                  	@IRInst:add	%t158	len1	len2
	add r6,r4,r5                                      	@IRInst:add	%t158	len1	len2
	str r6,[fp,#612]                                  	@IRInst:add	%t158	len1	len2
	ldr r4,[fp,#612]                                  	@IRInst:sub	%t159	%t158	1
	mov r5,#1                                         	@IRInst:sub	%t159	%t158	1
	sub r6,r4,r5                                      	@IRInst:sub	%t159	%t158	1
	str r6,[fp,#616]                                  	@IRInst:sub	%t159	%t158	1
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t160	i	%t159
	ldr r5,[fp,#616]                                  	@IRInst:ble	%t160	i	%t159
	cmp r4,r5                                         	@IRInst:ble	%t160	i	%t159
	ble .L25                                          
	b .L26                                            
.L25:
	ldr r4,[fp,#4]                                    	@IRInst:mul	%t161	i	4
	mov r5,#4                                         	@IRInst:mul	%t161	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t161	i	4
	str r6,[fp,#624]                                  	@IRInst:mul	%t161	i	4
	add r4,fp,#364                                    	@IRInst:add	%t162	result	%t161
	ldr r5,[fp,#624]                                  	@IRInst:add	%t162	result	%t161
	add r6,r4,r5                                      	@IRInst:add	%t162	result	%t161
	str r6,[fp,#628]                                  	@IRInst:add	%t162	result	%t161
	ldr r4,[fp,#628]                                  	@IRInst:assign	%t163	%t162
	ldr r4,[r4]                                       	@IRInst:assign	%t163	%t162
	str r4,[fp,#632]                                  	@IRInst:assign	%t163	%t162
	ldr r0,[fp,#632]                                  	@IRInst:assign	r0	%t163
	bl putint                                         
	ldr r4,[fp,#4]                                    	@IRInst:add	%t164	i	1
	mov r5,#1                                         	@IRInst:add	%t164	i	1
	add r6,r4,r5                                      	@IRInst:add	%t164	i	1
	str r6,[fp,#636]                                  	@IRInst:add	%t164	i	1
	ldr r4,[fp,#636]                                  	@IRInst:assign	i	%t164
	str r4,[fp,#4]                                    	@IRInst:assign	i	%t164
	b .L24                                            
.L26:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#640                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
