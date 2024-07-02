.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
a:
        .zero   16384
.text
.global_0_a:
        .long   a
.global f1
.type f1, %function
f1:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#92                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	b	r0
	mov r4,#5                                         	@IRInst:mul	%t4	5	4
	mov r5,#4                                         	@IRInst:mul	%t4	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t4	5	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t4	5	4
	ldr r4,.global_0_a                                	@IRInst:add	%t5	a	%t4
	ldr r5,[fp,#8]                                    	@IRInst:add	%t5	a	%t4
	add r6,r4,r5                                      	@IRInst:add	%t5	a	%t4
	str r6,[fp,#12]                                   	@IRInst:add	%t5	a	%t4
	ldr r5,[fp,#12]                                   	@IRInst:assign	%t5	4000
	mov r4,#4000                                      	@IRInst:assign	%t5	4000
	str r4,[r5]                                       	@IRInst:assign	%t5	4000
	mov r4,#4000                                      	@IRInst:mul	%t6	4000	4
	mov r5,#4                                         	@IRInst:mul	%t6	4000	4
	mul r6,r4,r5                                      	@IRInst:mul	%t6	4000	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t6	4000	4
	ldr r4,.global_0_a                                	@IRInst:add	%t7	a	%t6
	ldr r5,[fp,#16]                                   	@IRInst:add	%t7	a	%t6
	add r6,r4,r5                                      	@IRInst:add	%t7	a	%t6
	str r6,[fp,#20]                                   	@IRInst:add	%t7	a	%t6
	ldr r5,[fp,#20]                                   	@IRInst:assign	%t7	3
	mov r4,#3                                         	@IRInst:assign	%t7	3
	str r4,[r5]                                       	@IRInst:assign	%t7	3
	ldr r4,=4095                                      	@IRInst:mul	%t8	4095	4
	mov r5,#4                                         	@IRInst:mul	%t8	4095	4
	mul r6,r4,r5                                      	@IRInst:mul	%t8	4095	4
	str r6,[fp,#24]                                   	@IRInst:mul	%t8	4095	4
	ldr r4,.global_0_a                                	@IRInst:add	%t9	a	%t8
	ldr r5,[fp,#24]                                   	@IRInst:add	%t9	a	%t8
	add r6,r4,r5                                      	@IRInst:add	%t9	a	%t8
	str r6,[fp,#28]                                   	@IRInst:add	%t9	a	%t8
	ldr r5,[fp,#28]                                   	@IRInst:assign	%t9	7
	mov r4,#7                                         	@IRInst:assign	%t9	7
	str r4,[r5]                                       	@IRInst:assign	%t9	7
	ldr r4,=2216                                      	@IRInst:mul	%t15	2216	4
	mov r5,#4                                         	@IRInst:mul	%t15	2216	4
	mul r6,r4,r5                                      	@IRInst:mul	%t15	2216	4
	str r6,[fp,#52]                                   	@IRInst:mul	%t15	2216	4
	ldr r4,.global_0_a                                	@IRInst:add	%t16	a	%t15
	ldr r5,[fp,#52]                                   	@IRInst:add	%t16	a	%t15
	add r6,r4,r5                                      	@IRInst:add	%t16	a	%t15
	str r6,[fp,#56]                                   	@IRInst:add	%t16	a	%t15
	ldr r4,[fp,#56]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[r4]                                       	@IRInst:assign	%t17	%t16
	str r4,[fp,#60]                                   	@IRInst:assign	%t17	%t16
	ldr r4,[fp,#60]                                   	@IRInst:add	%t18	%t17	9
	mov r5,#9                                         	@IRInst:add	%t18	%t17	9
	add r6,r4,r5                                      	@IRInst:add	%t18	%t17	9
	str r6,[fp,#64]                                   	@IRInst:add	%t18	%t17	9
	ldr r4,=4095                                      	@IRInst:mul	%t11	4095	4
	mov r5,#4                                         	@IRInst:mul	%t11	4095	4
	mul r6,r4,r5                                      	@IRInst:mul	%t11	4095	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t11	4095	4
	ldr r4,.global_0_a                                	@IRInst:add	%t12	a	%t11
	ldr r5,[fp,#36]                                   	@IRInst:add	%t12	a	%t11
	add r6,r4,r5                                      	@IRInst:add	%t12	a	%t11
	str r6,[fp,#40]                                   	@IRInst:add	%t12	a	%t11
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t13	%t12
	ldr r4,[r4]                                       	@IRInst:assign	%t13	%t12
	str r4,[fp,#44]                                   	@IRInst:assign	%t13	%t12
	ldr r4,[fp,#44]                                   	@IRInst:mul	%t10	%t13	4
	mov r5,#4                                         	@IRInst:mul	%t10	%t13	4
	mul r6,r4,r5                                      	@IRInst:mul	%t10	%t13	4
	str r6,[fp,#32]                                   	@IRInst:mul	%t10	%t13	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t14	b	%t10
	ldr r5,[fp,#32]                                   	@IRInst:add	%t14	b	%t10
	add r6,r4,r5                                      	@IRInst:add	%t14	b	%t10
	str r6,[fp,#48]                                   	@IRInst:add	%t14	b	%t10
	ldr r5,[fp,#48]                                   	@IRInst:assign	%t14	%t18
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t14	%t18
	str r4,[r5]                                       	@IRInst:assign	%t14	%t18
	mov r4,#5                                         	@IRInst:mul	%t20	5	4
	mov r5,#4                                         	@IRInst:mul	%t20	5	4
	mul r6,r4,r5                                      	@IRInst:mul	%t20	5	4
	str r6,[fp,#72]                                   	@IRInst:mul	%t20	5	4
	ldr r4,.global_0_a                                	@IRInst:add	%t21	a	%t20
	ldr r5,[fp,#72]                                   	@IRInst:add	%t21	a	%t20
	add r6,r4,r5                                      	@IRInst:add	%t21	a	%t20
	str r6,[fp,#76]                                   	@IRInst:add	%t21	a	%t20
	ldr r4,[fp,#76]                                   	@IRInst:assign	%t22	%t21
	ldr r4,[r4]                                       	@IRInst:assign	%t22	%t21
	str r4,[fp,#80]                                   	@IRInst:assign	%t22	%t21
	ldr r4,[fp,#80]                                   	@IRInst:mul	%t19	%t22	4
	mov r5,#4                                         	@IRInst:mul	%t19	%t22	4
	mul r6,r4,r5                                      	@IRInst:mul	%t19	%t22	4
	str r6,[fp,#68]                                   	@IRInst:mul	%t19	%t22	4
	ldr r4,.global_0_a                                	@IRInst:add	%t23	a	%t19
	ldr r5,[fp,#68]                                   	@IRInst:add	%t23	a	%t19
	add r6,r4,r5                                      	@IRInst:add	%t23	a	%t19
	str r6,[fp,#84]                                   	@IRInst:add	%t23	a	%t19
	ldr r4,[fp,#84]                                   	@IRInst:assign	%t24	%t23
	ldr r4,[r4]                                       	@IRInst:assign	%t24	%t23
	str r4,[fp,#88]                                   	@IRInst:assign	%t24	%t23
	ldr r4,[fp,#88]                                   	@IRInst:assign		%t24
	str r4,[fp]                                       	@IRInst:assign		%t24
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#92                                     
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
	ldr r10,=32980                                    
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	mov r4,#1                                         	@IRInst:mul	%t27	1	1024
	mov r5,#1024                                      	@IRInst:mul	%t27	1	1024
	mul r6,r4,r5                                      	@IRInst:mul	%t27	1	1024
	ldr r5,=16388                                     	@IRInst:mul	%t27	1	1024
	str r6,[fp,r5]                                    	@IRInst:mul	%t27	1	1024
	ldr r4,=16388                                     	@IRInst:add	%t28	%t27	0
	ldr r4,[fp,r4]                                    	@IRInst:add	%t28	%t27	0
	mov r5,#0                                         	@IRInst:add	%t28	%t27	0
	add r6,r4,r5                                      	@IRInst:add	%t28	%t27	0
	ldr r5,=16392                                     	@IRInst:add	%t28	%t27	0
	str r6,[fp,r5]                                    	@IRInst:add	%t28	%t27	0
	ldr r4,=16392                                     	@IRInst:mul	%t29	%t28	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t29	%t28	4
	mov r5,#4                                         	@IRInst:mul	%t29	%t28	4
	mul r6,r4,r5                                      	@IRInst:mul	%t29	%t28	4
	ldr r5,=16396                                     	@IRInst:mul	%t29	%t28	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t29	%t28	4
	add r4,fp,#4                                      	@IRInst:add	%t30	b	%t29
	ldr r5,=16396                                     	@IRInst:add	%t30	b	%t29
	ldr r5,[fp,r5]                                    	@IRInst:add	%t30	b	%t29
	add r6,r4,r5                                      	@IRInst:add	%t30	b	%t29
	ldr r5,=16400                                     	@IRInst:add	%t30	b	%t29
	str r6,[fp,r5]                                    	@IRInst:add	%t30	b	%t29
	ldr r5,=16400                                     	@IRInst:assign	%t30	1
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t30	1
	mov r4,#1                                         	@IRInst:assign	%t30	1
	str r4,[r5]                                       	@IRInst:assign	%t30	1
	mov r4,#2                                         	@IRInst:mul	%t31	2	1024
	mov r5,#1024                                      	@IRInst:mul	%t31	2	1024
	mul r6,r4,r5                                      	@IRInst:mul	%t31	2	1024
	ldr r5,=16404                                     	@IRInst:mul	%t31	2	1024
	str r6,[fp,r5]                                    	@IRInst:mul	%t31	2	1024
	ldr r4,=16404                                     	@IRInst:add	%t32	%t31	0
	ldr r4,[fp,r4]                                    	@IRInst:add	%t32	%t31	0
	mov r5,#0                                         	@IRInst:add	%t32	%t31	0
	add r6,r4,r5                                      	@IRInst:add	%t32	%t31	0
	ldr r5,=16408                                     	@IRInst:add	%t32	%t31	0
	str r6,[fp,r5]                                    	@IRInst:add	%t32	%t31	0
	ldr r4,=16408                                     	@IRInst:mul	%t33	%t32	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t33	%t32	4
	mov r5,#4                                         	@IRInst:mul	%t33	%t32	4
	mul r6,r4,r5                                      	@IRInst:mul	%t33	%t32	4
	ldr r5,=16412                                     	@IRInst:mul	%t33	%t32	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t33	%t32	4
	add r4,fp,#4                                      	@IRInst:add	%t34	b	%t33
	ldr r5,=16412                                     	@IRInst:add	%t34	b	%t33
	ldr r5,[fp,r5]                                    	@IRInst:add	%t34	b	%t33
	add r6,r4,r5                                      	@IRInst:add	%t34	b	%t33
	ldr r5,=16416                                     	@IRInst:add	%t34	b	%t33
	str r6,[fp,r5]                                    	@IRInst:add	%t34	b	%t33
	ldr r5,=16416                                     	@IRInst:assign	%t34	2
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t34	2
	mov r4,#2                                         	@IRInst:assign	%t34	2
	str r4,[r5]                                       	@IRInst:assign	%t34	2
	mov r4,#2                                         	@IRInst:mul	%t35	2	1024
	mov r5,#1024                                      	@IRInst:mul	%t35	2	1024
	mul r6,r4,r5                                      	@IRInst:mul	%t35	2	1024
	ldr r5,=16420                                     	@IRInst:mul	%t35	2	1024
	str r6,[fp,r5]                                    	@IRInst:mul	%t35	2	1024
	ldr r4,=16420                                     	@IRInst:add	%t36	%t35	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t36	%t35	1
	mov r5,#1                                         	@IRInst:add	%t36	%t35	1
	add r6,r4,r5                                      	@IRInst:add	%t36	%t35	1
	ldr r5,=16424                                     	@IRInst:add	%t36	%t35	1
	str r6,[fp,r5]                                    	@IRInst:add	%t36	%t35	1
	ldr r4,=16424                                     	@IRInst:mul	%t37	%t36	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t37	%t36	4
	mov r5,#4                                         	@IRInst:mul	%t37	%t36	4
	mul r6,r4,r5                                      	@IRInst:mul	%t37	%t36	4
	ldr r5,=16428                                     	@IRInst:mul	%t37	%t36	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t37	%t36	4
	add r4,fp,#4                                      	@IRInst:add	%t38	b	%t37
	ldr r5,=16428                                     	@IRInst:add	%t38	b	%t37
	ldr r5,[fp,r5]                                    	@IRInst:add	%t38	b	%t37
	add r6,r4,r5                                      	@IRInst:add	%t38	b	%t37
	ldr r5,=16432                                     	@IRInst:add	%t38	b	%t37
	str r6,[fp,r5]                                    	@IRInst:add	%t38	b	%t37
	ldr r5,=16432                                     	@IRInst:assign	%t38	3
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t38	3
	mov r4,#3                                         	@IRInst:assign	%t38	3
	str r4,[r5]                                       	@IRInst:assign	%t38	3
	mov r4,#3                                         	@IRInst:mul	%t39	3	1024
	mov r5,#1024                                      	@IRInst:mul	%t39	3	1024
	mul r6,r4,r5                                      	@IRInst:mul	%t39	3	1024
	ldr r5,=16436                                     	@IRInst:mul	%t39	3	1024
	str r6,[fp,r5]                                    	@IRInst:mul	%t39	3	1024
	ldr r4,=16436                                     	@IRInst:add	%t40	%t39	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t40	%t39	1
	mov r5,#1                                         	@IRInst:add	%t40	%t39	1
	add r6,r4,r5                                      	@IRInst:add	%t40	%t39	1
	ldr r5,=16440                                     	@IRInst:add	%t40	%t39	1
	str r6,[fp,r5]                                    	@IRInst:add	%t40	%t39	1
	ldr r4,=16440                                     	@IRInst:mul	%t41	%t40	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t41	%t40	4
	mov r5,#4                                         	@IRInst:mul	%t41	%t40	4
	mul r6,r4,r5                                      	@IRInst:mul	%t41	%t40	4
	ldr r5,=16444                                     	@IRInst:mul	%t41	%t40	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t41	%t40	4
	add r4,fp,#4                                      	@IRInst:add	%t42	b	%t41
	ldr r5,=16444                                     	@IRInst:add	%t42	b	%t41
	ldr r5,[fp,r5]                                    	@IRInst:add	%t42	b	%t41
	add r6,r4,r5                                      	@IRInst:add	%t42	b	%t41
	ldr r5,=16448                                     	@IRInst:add	%t42	b	%t41
	str r6,[fp,r5]                                    	@IRInst:add	%t42	b	%t41
	ldr r5,=16448                                     	@IRInst:assign	%t42	4
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t42	4
	mov r4,#4                                         	@IRInst:assign	%t42	4
	str r4,[r5]                                       	@IRInst:assign	%t42	4
	mov r4,#3                                         	@IRInst:mul	%t43	3	1024
	mov r5,#1024                                      	@IRInst:mul	%t43	3	1024
	mul r6,r4,r5                                      	@IRInst:mul	%t43	3	1024
	ldr r5,=16452                                     	@IRInst:mul	%t43	3	1024
	str r6,[fp,r5]                                    	@IRInst:mul	%t43	3	1024
	ldr r4,=16452                                     	@IRInst:add	%t44	%t43	2
	ldr r4,[fp,r4]                                    	@IRInst:add	%t44	%t43	2
	mov r5,#2                                         	@IRInst:add	%t44	%t43	2
	add r6,r4,r5                                      	@IRInst:add	%t44	%t43	2
	ldr r5,=16456                                     	@IRInst:add	%t44	%t43	2
	str r6,[fp,r5]                                    	@IRInst:add	%t44	%t43	2
	ldr r4,=16456                                     	@IRInst:mul	%t45	%t44	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t45	%t44	4
	mov r5,#4                                         	@IRInst:mul	%t45	%t44	4
	mul r6,r4,r5                                      	@IRInst:mul	%t45	%t44	4
	ldr r5,=16460                                     	@IRInst:mul	%t45	%t44	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t45	%t44	4
	add r4,fp,#4                                      	@IRInst:add	%t46	b	%t45
	ldr r5,=16460                                     	@IRInst:add	%t46	b	%t45
	ldr r5,[fp,r5]                                    	@IRInst:add	%t46	b	%t45
	add r6,r4,r5                                      	@IRInst:add	%t46	b	%t45
	ldr r5,=16464                                     	@IRInst:add	%t46	b	%t45
	str r6,[fp,r5]                                    	@IRInst:add	%t46	b	%t45
	ldr r5,=16464                                     	@IRInst:assign	%t46	5
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t46	5
	mov r4,#5                                         	@IRInst:assign	%t46	5
	str r4,[r5]                                       	@IRInst:assign	%t46	5
	mov r4,#3                                         	@IRInst:mul	%t47	3	1024
	mov r5,#1024                                      	@IRInst:mul	%t47	3	1024
	mul r6,r4,r5                                      	@IRInst:mul	%t47	3	1024
	ldr r5,=16468                                     	@IRInst:mul	%t47	3	1024
	str r6,[fp,r5]                                    	@IRInst:mul	%t47	3	1024
	ldr r4,=16468                                     	@IRInst:add	%t48	%t47	3
	ldr r4,[fp,r4]                                    	@IRInst:add	%t48	%t47	3
	mov r5,#3                                         	@IRInst:add	%t48	%t47	3
	add r6,r4,r5                                      	@IRInst:add	%t48	%t47	3
	ldr r5,=16472                                     	@IRInst:add	%t48	%t47	3
	str r6,[fp,r5]                                    	@IRInst:add	%t48	%t47	3
	ldr r4,=16472                                     	@IRInst:mul	%t49	%t48	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t49	%t48	4
	mov r5,#4                                         	@IRInst:mul	%t49	%t48	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t48	4
	ldr r5,=16476                                     	@IRInst:mul	%t49	%t48	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t49	%t48	4
	add r4,fp,#4                                      	@IRInst:add	%t50	b	%t49
	ldr r5,=16476                                     	@IRInst:add	%t50	b	%t49
	ldr r5,[fp,r5]                                    	@IRInst:add	%t50	b	%t49
	add r6,r4,r5                                      	@IRInst:add	%t50	b	%t49
	ldr r5,=16480                                     	@IRInst:add	%t50	b	%t49
	str r6,[fp,r5]                                    	@IRInst:add	%t50	b	%t49
	ldr r5,=16480                                     	@IRInst:assign	%t50	6
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t50	6
	mov r4,#6                                         	@IRInst:assign	%t50	6
	str r4,[r5]                                       	@IRInst:assign	%t50	6
	mov r4,#0                                         	@IRInst:mul	%t52	0	4
	mov r5,#4                                         	@IRInst:mul	%t52	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t52	0	4
	ldr r5,=32868                                     	@IRInst:mul	%t52	0	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t52	0	4
	ldr r4,=32868                                     	@IRInst:add	%t53	%t52	0
	ldr r4,[fp,r4]                                    	@IRInst:add	%t53	%t52	0
	mov r5,#0                                         	@IRInst:add	%t53	%t52	0
	add r6,r4,r5                                      	@IRInst:add	%t53	%t52	0
	ldr r5,=32872                                     	@IRInst:add	%t53	%t52	0
	str r6,[fp,r5]                                    	@IRInst:add	%t53	%t52	0
	ldr r4,=32872                                     	@IRInst:mul	%t54	%t53	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t54	%t53	4
	mov r5,#4                                         	@IRInst:mul	%t54	%t53	4
	mul r6,r4,r5                                      	@IRInst:mul	%t54	%t53	4
	ldr r5,=32876                                     	@IRInst:mul	%t54	%t53	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t54	%t53	4
	add r4,fp,#16484                                  	@IRInst:add	%t55	c	%t54
	ldr r5,=32876                                     	@IRInst:add	%t55	c	%t54
	ldr r5,[fp,r5]                                    	@IRInst:add	%t55	c	%t54
	add r6,r4,r5                                      	@IRInst:add	%t55	c	%t54
	ldr r5,=32880                                     	@IRInst:add	%t55	c	%t54
	str r6,[fp,r5]                                    	@IRInst:add	%t55	c	%t54
	ldr r5,=32880                                     	@IRInst:assign	%t55	1
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t55	1
	mov r4,#1                                         	@IRInst:assign	%t55	1
	str r4,[r5]                                       	@IRInst:assign	%t55	1
	mov r4,#0                                         	@IRInst:mul	%t56	0	4
	mov r5,#4                                         	@IRInst:mul	%t56	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t56	0	4
	ldr r5,=32884                                     	@IRInst:mul	%t56	0	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t56	0	4
	ldr r4,=32884                                     	@IRInst:add	%t57	%t56	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t57	%t56	1
	mov r5,#1                                         	@IRInst:add	%t57	%t56	1
	add r6,r4,r5                                      	@IRInst:add	%t57	%t56	1
	ldr r5,=32888                                     	@IRInst:add	%t57	%t56	1
	str r6,[fp,r5]                                    	@IRInst:add	%t57	%t56	1
	ldr r4,=32888                                     	@IRInst:mul	%t58	%t57	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t58	%t57	4
	mov r5,#4                                         	@IRInst:mul	%t58	%t57	4
	mul r6,r4,r5                                      	@IRInst:mul	%t58	%t57	4
	ldr r5,=32892                                     	@IRInst:mul	%t58	%t57	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t58	%t57	4
	add r4,fp,#16484                                  	@IRInst:add	%t59	c	%t58
	ldr r5,=32892                                     	@IRInst:add	%t59	c	%t58
	ldr r5,[fp,r5]                                    	@IRInst:add	%t59	c	%t58
	add r6,r4,r5                                      	@IRInst:add	%t59	c	%t58
	ldr r5,=32896                                     	@IRInst:add	%t59	c	%t58
	str r6,[fp,r5]                                    	@IRInst:add	%t59	c	%t58
	ldr r5,=32896                                     	@IRInst:assign	%t59	2
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t59	2
	mov r4,#2                                         	@IRInst:assign	%t59	2
	str r4,[r5]                                       	@IRInst:assign	%t59	2
	mov r4,#1                                         	@IRInst:mul	%t60	1	4
	mov r5,#4                                         	@IRInst:mul	%t60	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t60	1	4
	ldr r5,=32900                                     	@IRInst:mul	%t60	1	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t60	1	4
	ldr r4,=32900                                     	@IRInst:add	%t61	%t60	0
	ldr r4,[fp,r4]                                    	@IRInst:add	%t61	%t60	0
	mov r5,#0                                         	@IRInst:add	%t61	%t60	0
	add r6,r4,r5                                      	@IRInst:add	%t61	%t60	0
	ldr r5,=32904                                     	@IRInst:add	%t61	%t60	0
	str r6,[fp,r5]                                    	@IRInst:add	%t61	%t60	0
	ldr r4,=32904                                     	@IRInst:mul	%t62	%t61	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t62	%t61	4
	mov r5,#4                                         	@IRInst:mul	%t62	%t61	4
	mul r6,r4,r5                                      	@IRInst:mul	%t62	%t61	4
	ldr r5,=32908                                     	@IRInst:mul	%t62	%t61	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t62	%t61	4
	add r4,fp,#16484                                  	@IRInst:add	%t63	c	%t62
	ldr r5,=32908                                     	@IRInst:add	%t63	c	%t62
	ldr r5,[fp,r5]                                    	@IRInst:add	%t63	c	%t62
	add r6,r4,r5                                      	@IRInst:add	%t63	c	%t62
	ldr r5,=32912                                     	@IRInst:add	%t63	c	%t62
	str r6,[fp,r5]                                    	@IRInst:add	%t63	c	%t62
	ldr r5,=32912                                     	@IRInst:assign	%t63	3
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t63	3
	mov r4,#3                                         	@IRInst:assign	%t63	3
	str r4,[r5]                                       	@IRInst:assign	%t63	3
	mov r4,#1                                         	@IRInst:mul	%t64	1	4
	mov r5,#4                                         	@IRInst:mul	%t64	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t64	1	4
	ldr r5,=32916                                     	@IRInst:mul	%t64	1	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t64	1	4
	ldr r4,=32916                                     	@IRInst:add	%t65	%t64	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t65	%t64	1
	mov r5,#1                                         	@IRInst:add	%t65	%t64	1
	add r6,r4,r5                                      	@IRInst:add	%t65	%t64	1
	ldr r5,=32920                                     	@IRInst:add	%t65	%t64	1
	str r6,[fp,r5]                                    	@IRInst:add	%t65	%t64	1
	ldr r4,=32920                                     	@IRInst:mul	%t66	%t65	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t66	%t65	4
	mov r5,#4                                         	@IRInst:mul	%t66	%t65	4
	mul r6,r4,r5                                      	@IRInst:mul	%t66	%t65	4
	ldr r5,=32924                                     	@IRInst:mul	%t66	%t65	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t66	%t65	4
	add r4,fp,#16484                                  	@IRInst:add	%t67	c	%t66
	ldr r5,=32924                                     	@IRInst:add	%t67	c	%t66
	ldr r5,[fp,r5]                                    	@IRInst:add	%t67	c	%t66
	add r6,r4,r5                                      	@IRInst:add	%t67	c	%t66
	ldr r5,=32928                                     	@IRInst:add	%t67	c	%t66
	str r6,[fp,r5]                                    	@IRInst:add	%t67	c	%t66
	ldr r5,=32928                                     	@IRInst:assign	%t67	4
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t67	4
	mov r4,#4                                         	@IRInst:assign	%t67	4
	str r4,[r5]                                       	@IRInst:assign	%t67	4
	mov r4,#0                                         	@IRInst:mul	%t68	0	4
	mov r5,#4                                         	@IRInst:mul	%t68	0	4
	mul r6,r4,r5                                      	@IRInst:mul	%t68	0	4
	ldr r5,=32932                                     	@IRInst:mul	%t68	0	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t68	0	4
	ldr r4,=32932                                     	@IRInst:mul	%t69	%t68	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t69	%t68	4
	mov r5,#4                                         	@IRInst:mul	%t69	%t68	4
	mul r6,r4,r5                                      	@IRInst:mul	%t69	%t68	4
	ldr r5,=32936                                     	@IRInst:mul	%t69	%t68	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t69	%t68	4
	add r4,fp,#16484                                  	@IRInst:add	%t70	c	%t69
	ldr r5,=32936                                     	@IRInst:add	%t70	c	%t69
	ldr r5,[fp,r5]                                    	@IRInst:add	%t70	c	%t69
	add r6,r4,r5                                      	@IRInst:add	%t70	c	%t69
	ldr r5,=32940                                     	@IRInst:add	%t70	c	%t69
	str r6,[fp,r5]                                    	@IRInst:add	%t70	c	%t69
	ldr r0,=32940                                     	@IRInst:assign	r0	%t70
	ldr r0,[fp,r0]                                    	@IRInst:assign	r0	%t70
	bl f1                                             
	ldr r9,=32956                                     	@IRInst:assign	%t71	r0
	str r0,[fp,r9]                                    	@IRInst:assign	%t71	r0
	ldr r0,=32956                                     	@IRInst:assign	r0	%t71
	ldr r0,[fp,r0]                                    	@IRInst:assign	r0	%t71
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#2                                         	@IRInst:mul	%t72	2	4
	mov r5,#4                                         	@IRInst:mul	%t72	2	4
	mul r6,r4,r5                                      	@IRInst:mul	%t72	2	4
	ldr r5,=32960                                     	@IRInst:mul	%t72	2	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t72	2	4
	ldr r4,=32960                                     	@IRInst:add	%t73	%t72	0
	ldr r4,[fp,r4]                                    	@IRInst:add	%t73	%t72	0
	mov r5,#0                                         	@IRInst:add	%t73	%t72	0
	add r6,r4,r5                                      	@IRInst:add	%t73	%t72	0
	ldr r5,=32964                                     	@IRInst:add	%t73	%t72	0
	str r6,[fp,r5]                                    	@IRInst:add	%t73	%t72	0
	ldr r4,=32964                                     	@IRInst:mul	%t74	%t73	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t74	%t73	4
	mov r5,#4                                         	@IRInst:mul	%t74	%t73	4
	mul r6,r4,r5                                      	@IRInst:mul	%t74	%t73	4
	ldr r5,=32968                                     	@IRInst:mul	%t74	%t73	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t74	%t73	4
	add r4,fp,#16484                                  	@IRInst:add	%t75	c	%t74
	ldr r5,=32968                                     	@IRInst:add	%t75	c	%t74
	ldr r5,[fp,r5]                                    	@IRInst:add	%t75	c	%t74
	add r6,r4,r5                                      	@IRInst:add	%t75	c	%t74
	ldr r5,=32972                                     	@IRInst:add	%t75	c	%t74
	str r6,[fp,r5]                                    	@IRInst:add	%t75	c	%t74
	ldr r4,=32972                                     	@IRInst:assign	%t76	%t75
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t76	%t75
	ldr r4,[r4]                                       	@IRInst:assign	%t76	%t75
	ldr r9,=32976                                     	@IRInst:assign	%t76	%t75
	str r4,[fp,r9]                                    	@IRInst:assign	%t76	%t75
	ldr r4,=32976                                     	@IRInst:assign		%t76
	ldr r4,[fp,r4]                                    	@IRInst:assign		%t76
	str r4,[fp]                                       	@IRInst:assign		%t76
	b .L4                                             
.L4:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#1024                                   
	add fp,fp,#212                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
