.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
N:
        .long   10000
.text
.global_0_N:
        .long   N
.global long_array
.type long_array, %function
long_array:
.L1:
	push {r10,fp,lr}                                  
	ldr r10,=120396                                   
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	k	r0
	mov r4,#0                                         	@IRInst:assign	i	0
	ldr r9,=120008                                    	@IRInst:assign	i	0
	str r4,[fp,r9]                                    	@IRInst:assign	i	0
.L3:
	ldr r4,=120008                                    	@IRInst:blt	%t8	i	N
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t8	i	N
	ldr r5,=10000                                     	@IRInst:blt	%t8	i	N
	cmp r4,r5                                         	@IRInst:blt	%t8	i	N
	movlt r6,#1                                       	@IRInst:blt	%t8	i	N
	movge r6,#0                                       	@IRInst:blt	%t8	i	N
	ldr r10,=120012                                   	@IRInst:blt	%t8	i	N
	str r6,[fp,r10]                                   	@IRInst:blt	%t8	i	N
	blt .L4                                           
	b .L5                                             
.L4:
	ldr r4,=120008                                    	@IRInst:mul	%t11	i	i
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t11	i	i
	ldr r5,=120008                                    	@IRInst:mul	%t11	i	i
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t11	i	i
	mul r6,r4,r5                                      	@IRInst:mul	%t11	i	i
	ldr r5,=120024                                    	@IRInst:mul	%t11	i	i
	str r6,[fp,r5]                                    	@IRInst:mul	%t11	i	i
	ldr r4,=120024                                    	@IRInst:sdiv	%t13	%t11	10
	ldr r4,[fp,r4]                                    	@IRInst:sdiv	%t13	%t11	10
	mov r5,#10                                        	@IRInst:sdiv	%t13	%t11	10
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t13	%t11	10
	ldr r5,=120032                                    	@IRInst:sdiv	%t13	%t11	10
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t13	%t11	10
	ldr r4,=120032                                    	@IRInst:mul	%t14	%t13	10
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t14	%t13	10
	mov r5,#10                                        	@IRInst:mul	%t14	%t13	10
	mul r6,r4,r5                                      	@IRInst:mul	%t14	%t13	10
	ldr r5,=120036                                    	@IRInst:mul	%t14	%t13	10
	str r6,[fp,r5]                                    	@IRInst:mul	%t14	%t13	10
	ldr r4,=120024                                    	@IRInst:sub	%t12	%t11	%t14
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t12	%t11	%t14
	ldr r5,=120036                                    	@IRInst:sub	%t12	%t11	%t14
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t12	%t11	%t14
	sub r6,r4,r5                                      	@IRInst:sub	%t12	%t11	%t14
	ldr r5,=120028                                    	@IRInst:sub	%t12	%t11	%t14
	str r6,[fp,r5]                                    	@IRInst:sub	%t12	%t11	%t14
	ldr r4,=120008                                    	@IRInst:mul	%t9	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t9	i	4
	mov r5,#4                                         	@IRInst:mul	%t9	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t9	i	4
	ldr r5,=120016                                    	@IRInst:mul	%t9	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t9	i	4
	add r4,fp,#8                                      	@IRInst:add	%t10	a1	%t9
	ldr r5,=120016                                    	@IRInst:add	%t10	a1	%t9
	ldr r5,[fp,r5]                                    	@IRInst:add	%t10	a1	%t9
	add r6,r4,r5                                      	@IRInst:add	%t10	a1	%t9
	ldr r5,=120020                                    	@IRInst:add	%t10	a1	%t9
	str r6,[fp,r5]                                    	@IRInst:add	%t10	a1	%t9
	ldr r5,=120020                                    	@IRInst:assign	%t10	%t12
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t10	%t12
	ldr r4,=120028                                    	@IRInst:assign	%t10	%t12
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t10	%t12
	str r4,[r5]                                       	@IRInst:assign	%t10	%t12
	ldr r4,=120008                                    	@IRInst:add	%t15	i	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t15	i	1
	mov r5,#1                                         	@IRInst:add	%t15	i	1
	add r6,r4,r5                                      	@IRInst:add	%t15	i	1
	ldr r5,=120040                                    	@IRInst:add	%t15	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t15	i	1
	ldr r4,=120040                                    	@IRInst:assign	i	%t15
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t15
	ldr r9,=120008                                    	@IRInst:assign	i	%t15
	str r4,[fp,r9]                                    	@IRInst:assign	i	%t15
	b .L3                                             
.L5:
	mov r4,#0                                         	@IRInst:assign	i	0
	ldr r9,=120008                                    	@IRInst:assign	i	0
	str r4,[fp,r9]                                    	@IRInst:assign	i	0
.L6:
	ldr r4,=120008                                    	@IRInst:blt	%t16	i	N
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t16	i	N
	ldr r5,=10000                                     	@IRInst:blt	%t16	i	N
	cmp r4,r5                                         	@IRInst:blt	%t16	i	N
	movlt r6,#1                                       	@IRInst:blt	%t16	i	N
	movge r6,#0                                       	@IRInst:blt	%t16	i	N
	ldr r10,=120044                                   	@IRInst:blt	%t16	i	N
	str r6,[fp,r10]                                   	@IRInst:blt	%t16	i	N
	blt .L7                                           
	b .L8                                             
.L7:
	ldr r4,=120008                                    	@IRInst:mul	%t19	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t19	i	4
	mov r5,#4                                         	@IRInst:mul	%t19	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t19	i	4
	ldr r5,=120056                                    	@IRInst:mul	%t19	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t19	i	4
	add r4,fp,#8                                      	@IRInst:add	%t20	a1	%t19
	ldr r5,=120056                                    	@IRInst:add	%t20	a1	%t19
	ldr r5,[fp,r5]                                    	@IRInst:add	%t20	a1	%t19
	add r6,r4,r5                                      	@IRInst:add	%t20	a1	%t19
	ldr r5,=120060                                    	@IRInst:add	%t20	a1	%t19
	str r6,[fp,r5]                                    	@IRInst:add	%t20	a1	%t19
	ldr r4,=120060                                    	@IRInst:assign	%t21	%t20
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t21	%t20
	ldr r4,[r4]                                       	@IRInst:assign	%t21	%t20
	ldr r9,=120064                                    	@IRInst:assign	%t21	%t20
	str r4,[fp,r9]                                    	@IRInst:assign	%t21	%t20
	ldr r4,=120008                                    	@IRInst:mul	%t22	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t22	i	4
	mov r5,#4                                         	@IRInst:mul	%t22	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t22	i	4
	ldr r5,=120068                                    	@IRInst:mul	%t22	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t22	i	4
	add r4,fp,#8                                      	@IRInst:add	%t23	a1	%t22
	ldr r5,=120068                                    	@IRInst:add	%t23	a1	%t22
	ldr r5,[fp,r5]                                    	@IRInst:add	%t23	a1	%t22
	add r6,r4,r5                                      	@IRInst:add	%t23	a1	%t22
	ldr r5,=120072                                    	@IRInst:add	%t23	a1	%t22
	str r6,[fp,r5]                                    	@IRInst:add	%t23	a1	%t22
	ldr r4,=120072                                    	@IRInst:assign	%t24	%t23
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t24	%t23
	ldr r4,[r4]                                       	@IRInst:assign	%t24	%t23
	ldr r9,=120076                                    	@IRInst:assign	%t24	%t23
	str r4,[fp,r9]                                    	@IRInst:assign	%t24	%t23
	ldr r4,=120064                                    	@IRInst:mul	%t25	%t21	%t24
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t25	%t21	%t24
	ldr r5,=120076                                    	@IRInst:mul	%t25	%t21	%t24
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t25	%t21	%t24
	mul r6,r4,r5                                      	@IRInst:mul	%t25	%t21	%t24
	ldr r5,=120080                                    	@IRInst:mul	%t25	%t21	%t24
	str r6,[fp,r5]                                    	@IRInst:mul	%t25	%t21	%t24
	ldr r4,=120080                                    	@IRInst:sdiv	%t27	%t25	10
	ldr r4,[fp,r4]                                    	@IRInst:sdiv	%t27	%t25	10
	mov r5,#10                                        	@IRInst:sdiv	%t27	%t25	10
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t27	%t25	10
	ldr r5,=120088                                    	@IRInst:sdiv	%t27	%t25	10
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t27	%t25	10
	ldr r4,=120088                                    	@IRInst:mul	%t28	%t27	10
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t28	%t27	10
	mov r5,#10                                        	@IRInst:mul	%t28	%t27	10
	mul r6,r4,r5                                      	@IRInst:mul	%t28	%t27	10
	ldr r5,=120092                                    	@IRInst:mul	%t28	%t27	10
	str r6,[fp,r5]                                    	@IRInst:mul	%t28	%t27	10
	ldr r4,=120080                                    	@IRInst:sub	%t26	%t25	%t28
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t26	%t25	%t28
	ldr r5,=120092                                    	@IRInst:sub	%t26	%t25	%t28
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t26	%t25	%t28
	sub r6,r4,r5                                      	@IRInst:sub	%t26	%t25	%t28
	ldr r5,=120084                                    	@IRInst:sub	%t26	%t25	%t28
	str r6,[fp,r5]                                    	@IRInst:sub	%t26	%t25	%t28
	ldr r4,=120008                                    	@IRInst:mul	%t17	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t17	i	4
	mov r5,#4                                         	@IRInst:mul	%t17	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t17	i	4
	ldr r5,=120048                                    	@IRInst:mul	%t17	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t17	i	4
	add r4,fp,#40008                                  	@IRInst:add	%t18	a2	%t17
	ldr r5,=120048                                    	@IRInst:add	%t18	a2	%t17
	ldr r5,[fp,r5]                                    	@IRInst:add	%t18	a2	%t17
	add r6,r4,r5                                      	@IRInst:add	%t18	a2	%t17
	ldr r5,=120052                                    	@IRInst:add	%t18	a2	%t17
	str r6,[fp,r5]                                    	@IRInst:add	%t18	a2	%t17
	ldr r5,=120052                                    	@IRInst:assign	%t18	%t26
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t18	%t26
	ldr r4,=120084                                    	@IRInst:assign	%t18	%t26
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t18	%t26
	str r4,[r5]                                       	@IRInst:assign	%t18	%t26
	ldr r4,=120008                                    	@IRInst:add	%t29	i	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t29	i	1
	mov r5,#1                                         	@IRInst:add	%t29	i	1
	add r6,r4,r5                                      	@IRInst:add	%t29	i	1
	ldr r5,=120096                                    	@IRInst:add	%t29	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t29	i	1
	ldr r4,=120096                                    	@IRInst:assign	i	%t29
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t29
	ldr r9,=120008                                    	@IRInst:assign	i	%t29
	str r4,[fp,r9]                                    	@IRInst:assign	i	%t29
	b .L6                                             
.L8:
	mov r4,#0                                         	@IRInst:assign	i	0
	ldr r9,=120008                                    	@IRInst:assign	i	0
	str r4,[fp,r9]                                    	@IRInst:assign	i	0
.L9:
	ldr r4,=120008                                    	@IRInst:blt	%t30	i	N
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t30	i	N
	ldr r5,=10000                                     	@IRInst:blt	%t30	i	N
	cmp r4,r5                                         	@IRInst:blt	%t30	i	N
	movlt r6,#1                                       	@IRInst:blt	%t30	i	N
	movge r6,#0                                       	@IRInst:blt	%t30	i	N
	ldr r10,=120100                                   	@IRInst:blt	%t30	i	N
	str r6,[fp,r10]                                   	@IRInst:blt	%t30	i	N
	blt .L10                                          
	b .L11                                            
.L10:
	ldr r4,=120008                                    	@IRInst:mul	%t33	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t33	i	4
	mov r5,#4                                         	@IRInst:mul	%t33	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t33	i	4
	ldr r5,=120112                                    	@IRInst:mul	%t33	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t33	i	4
	add r4,fp,#40008                                  	@IRInst:add	%t34	a2	%t33
	ldr r5,=120112                                    	@IRInst:add	%t34	a2	%t33
	ldr r5,[fp,r5]                                    	@IRInst:add	%t34	a2	%t33
	add r6,r4,r5                                      	@IRInst:add	%t34	a2	%t33
	ldr r5,=120116                                    	@IRInst:add	%t34	a2	%t33
	str r6,[fp,r5]                                    	@IRInst:add	%t34	a2	%t33
	ldr r4,=120116                                    	@IRInst:assign	%t35	%t34
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t35	%t34
	ldr r4,[r4]                                       	@IRInst:assign	%t35	%t34
	ldr r9,=120120                                    	@IRInst:assign	%t35	%t34
	str r4,[fp,r9]                                    	@IRInst:assign	%t35	%t34
	ldr r4,=120008                                    	@IRInst:mul	%t36	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t36	i	4
	mov r5,#4                                         	@IRInst:mul	%t36	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t36	i	4
	ldr r5,=120124                                    	@IRInst:mul	%t36	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t36	i	4
	add r4,fp,#40008                                  	@IRInst:add	%t37	a2	%t36
	ldr r5,=120124                                    	@IRInst:add	%t37	a2	%t36
	ldr r5,[fp,r5]                                    	@IRInst:add	%t37	a2	%t36
	add r6,r4,r5                                      	@IRInst:add	%t37	a2	%t36
	ldr r5,=120128                                    	@IRInst:add	%t37	a2	%t36
	str r6,[fp,r5]                                    	@IRInst:add	%t37	a2	%t36
	ldr r4,=120128                                    	@IRInst:assign	%t38	%t37
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t38	%t37
	ldr r4,[r4]                                       	@IRInst:assign	%t38	%t37
	ldr r9,=120132                                    	@IRInst:assign	%t38	%t37
	str r4,[fp,r9]                                    	@IRInst:assign	%t38	%t37
	ldr r4,=120120                                    	@IRInst:mul	%t39	%t35	%t38
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t39	%t35	%t38
	ldr r5,=120132                                    	@IRInst:mul	%t39	%t35	%t38
	ldr r5,[fp,r5]                                    	@IRInst:mul	%t39	%t35	%t38
	mul r6,r4,r5                                      	@IRInst:mul	%t39	%t35	%t38
	ldr r5,=120136                                    	@IRInst:mul	%t39	%t35	%t38
	str r6,[fp,r5]                                    	@IRInst:mul	%t39	%t35	%t38
	ldr r4,=120136                                    	@IRInst:sdiv	%t41	%t39	100
	ldr r4,[fp,r4]                                    	@IRInst:sdiv	%t41	%t39	100
	mov r5,#100                                       	@IRInst:sdiv	%t41	%t39	100
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t41	%t39	100
	ldr r5,=120144                                    	@IRInst:sdiv	%t41	%t39	100
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t41	%t39	100
	ldr r4,=120144                                    	@IRInst:mul	%t42	%t41	100
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t42	%t41	100
	mov r5,#100                                       	@IRInst:mul	%t42	%t41	100
	mul r6,r4,r5                                      	@IRInst:mul	%t42	%t41	100
	ldr r5,=120148                                    	@IRInst:mul	%t42	%t41	100
	str r6,[fp,r5]                                    	@IRInst:mul	%t42	%t41	100
	ldr r4,=120136                                    	@IRInst:sub	%t40	%t39	%t42
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t40	%t39	%t42
	ldr r5,=120148                                    	@IRInst:sub	%t40	%t39	%t42
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t40	%t39	%t42
	sub r6,r4,r5                                      	@IRInst:sub	%t40	%t39	%t42
	ldr r5,=120140                                    	@IRInst:sub	%t40	%t39	%t42
	str r6,[fp,r5]                                    	@IRInst:sub	%t40	%t39	%t42
	ldr r4,=120008                                    	@IRInst:mul	%t43	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t43	i	4
	mov r5,#4                                         	@IRInst:mul	%t43	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t43	i	4
	ldr r5,=120152                                    	@IRInst:mul	%t43	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t43	i	4
	add r4,fp,#8                                      	@IRInst:add	%t44	a1	%t43
	ldr r5,=120152                                    	@IRInst:add	%t44	a1	%t43
	ldr r5,[fp,r5]                                    	@IRInst:add	%t44	a1	%t43
	add r6,r4,r5                                      	@IRInst:add	%t44	a1	%t43
	ldr r5,=120156                                    	@IRInst:add	%t44	a1	%t43
	str r6,[fp,r5]                                    	@IRInst:add	%t44	a1	%t43
	ldr r4,=120156                                    	@IRInst:assign	%t45	%t44
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t45	%t44
	ldr r4,[r4]                                       	@IRInst:assign	%t45	%t44
	ldr r9,=120160                                    	@IRInst:assign	%t45	%t44
	str r4,[fp,r9]                                    	@IRInst:assign	%t45	%t44
	ldr r4,=120140                                    	@IRInst:add	%t46	%t40	%t45
	ldr r4,[fp,r4]                                    	@IRInst:add	%t46	%t40	%t45
	ldr r5,=120160                                    	@IRInst:add	%t46	%t40	%t45
	ldr r5,[fp,r5]                                    	@IRInst:add	%t46	%t40	%t45
	add r6,r4,r5                                      	@IRInst:add	%t46	%t40	%t45
	ldr r5,=120164                                    	@IRInst:add	%t46	%t40	%t45
	str r6,[fp,r5]                                    	@IRInst:add	%t46	%t40	%t45
	ldr r4,=120008                                    	@IRInst:mul	%t31	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t31	i	4
	mov r5,#4                                         	@IRInst:mul	%t31	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	i	4
	ldr r5,=120104                                    	@IRInst:mul	%t31	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t31	i	4
	add r4,fp,#80008                                  	@IRInst:add	%t32	a3	%t31
	ldr r5,=120104                                    	@IRInst:add	%t32	a3	%t31
	ldr r5,[fp,r5]                                    	@IRInst:add	%t32	a3	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	a3	%t31
	ldr r5,=120108                                    	@IRInst:add	%t32	a3	%t31
	str r6,[fp,r5]                                    	@IRInst:add	%t32	a3	%t31
	ldr r5,=120108                                    	@IRInst:assign	%t32	%t46
	ldr r5,[fp,r5]                                    	@IRInst:assign	%t32	%t46
	ldr r4,=120164                                    	@IRInst:assign	%t32	%t46
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t32	%t46
	str r4,[r5]                                       	@IRInst:assign	%t32	%t46
	ldr r4,=120008                                    	@IRInst:add	%t47	i	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t47	i	1
	mov r5,#1                                         	@IRInst:add	%t47	i	1
	add r6,r4,r5                                      	@IRInst:add	%t47	i	1
	ldr r5,=120168                                    	@IRInst:add	%t47	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t47	i	1
	ldr r4,=120168                                    	@IRInst:assign	i	%t47
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t47
	ldr r9,=120008                                    	@IRInst:assign	i	%t47
	str r4,[fp,r9]                                    	@IRInst:assign	i	%t47
	b .L9                                             
.L11:
	mov r4,#0                                         	@IRInst:assign	ans	0
	ldr r9,=120172                                    	@IRInst:assign	ans	0
	str r4,[fp,r9]                                    	@IRInst:assign	ans	0
	mov r4,#0                                         	@IRInst:assign	i	0
	ldr r9,=120008                                    	@IRInst:assign	i	0
	str r4,[fp,r9]                                    	@IRInst:assign	i	0
.L12:
	ldr r4,=120008                                    	@IRInst:blt	%t49	i	N
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t49	i	N
	ldr r5,=10000                                     	@IRInst:blt	%t49	i	N
	cmp r4,r5                                         	@IRInst:blt	%t49	i	N
	movlt r6,#1                                       	@IRInst:blt	%t49	i	N
	movge r6,#0                                       	@IRInst:blt	%t49	i	N
	ldr r10,=120176                                   	@IRInst:blt	%t49	i	N
	str r6,[fp,r10]                                   	@IRInst:blt	%t49	i	N
	blt .L13                                          
	b .L14                                            
.L13:
	ldr r4,=120008                                    	@IRInst:blt	%t50	i	10
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t50	i	10
	mov r5,#10                                        	@IRInst:blt	%t50	i	10
	cmp r4,r5                                         	@IRInst:blt	%t50	i	10
	movlt r6,#1                                       	@IRInst:blt	%t50	i	10
	movge r6,#0                                       	@IRInst:blt	%t50	i	10
	ldr r10,=120180                                   	@IRInst:blt	%t50	i	10
	str r6,[fp,r10]                                   	@IRInst:blt	%t50	i	10
	blt .L15                                          
	b .L16                                            
.L15:
	ldr r4,=120008                                    	@IRInst:mul	%t51	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t51	i	4
	mov r5,#4                                         	@IRInst:mul	%t51	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t51	i	4
	ldr r5,=120184                                    	@IRInst:mul	%t51	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t51	i	4
	add r4,fp,#80008                                  	@IRInst:add	%t52	a3	%t51
	ldr r5,=120184                                    	@IRInst:add	%t52	a3	%t51
	ldr r5,[fp,r5]                                    	@IRInst:add	%t52	a3	%t51
	add r6,r4,r5                                      	@IRInst:add	%t52	a3	%t51
	ldr r5,=120188                                    	@IRInst:add	%t52	a3	%t51
	str r6,[fp,r5]                                    	@IRInst:add	%t52	a3	%t51
	ldr r4,=120188                                    	@IRInst:assign	%t53	%t52
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t53	%t52
	ldr r4,[r4]                                       	@IRInst:assign	%t53	%t52
	ldr r9,=120192                                    	@IRInst:assign	%t53	%t52
	str r4,[fp,r9]                                    	@IRInst:assign	%t53	%t52
	ldr r4,=120172                                    	@IRInst:add	%t54	ans	%t53
	ldr r4,[fp,r4]                                    	@IRInst:add	%t54	ans	%t53
	ldr r5,=120192                                    	@IRInst:add	%t54	ans	%t53
	ldr r5,[fp,r5]                                    	@IRInst:add	%t54	ans	%t53
	add r6,r4,r5                                      	@IRInst:add	%t54	ans	%t53
	ldr r5,=120196                                    	@IRInst:add	%t54	ans	%t53
	str r6,[fp,r5]                                    	@IRInst:add	%t54	ans	%t53
	ldr r4,=120196                                    	@IRInst:sdiv	%t56	%t54	1333
	ldr r4,[fp,r4]                                    	@IRInst:sdiv	%t56	%t54	1333
	ldr r5,=1333                                      	@IRInst:sdiv	%t56	%t54	1333
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t56	%t54	1333
	ldr r5,=120204                                    	@IRInst:sdiv	%t56	%t54	1333
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t56	%t54	1333
	ldr r4,=120204                                    	@IRInst:mul	%t57	%t56	1333
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t57	%t56	1333
	ldr r5,=1333                                      	@IRInst:mul	%t57	%t56	1333
	mul r6,r4,r5                                      	@IRInst:mul	%t57	%t56	1333
	ldr r5,=120208                                    	@IRInst:mul	%t57	%t56	1333
	str r6,[fp,r5]                                    	@IRInst:mul	%t57	%t56	1333
	ldr r4,=120196                                    	@IRInst:sub	%t55	%t54	%t57
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t55	%t54	%t57
	ldr r5,=120208                                    	@IRInst:sub	%t55	%t54	%t57
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t55	%t54	%t57
	sub r6,r4,r5                                      	@IRInst:sub	%t55	%t54	%t57
	ldr r5,=120200                                    	@IRInst:sub	%t55	%t54	%t57
	str r6,[fp,r5]                                    	@IRInst:sub	%t55	%t54	%t57
	ldr r4,=120200                                    	@IRInst:assign	ans	%t55
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t55
	ldr r9,=120172                                    	@IRInst:assign	ans	%t55
	str r4,[fp,r9]                                    	@IRInst:assign	ans	%t55
	ldr r0,=120172                                    	@IRInst:assign	r0	ans
	ldr r0,[fp,r0]                                    	@IRInst:assign	r0	ans
	bl putint                                         
	b .L17                                            
.L16:
	ldr r4,=120008                                    	@IRInst:blt	%t58	i	20
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t58	i	20
	mov r5,#20                                        	@IRInst:blt	%t58	i	20
	cmp r4,r5                                         	@IRInst:blt	%t58	i	20
	movlt r6,#1                                       	@IRInst:blt	%t58	i	20
	movge r6,#0                                       	@IRInst:blt	%t58	i	20
	ldr r10,=120212                                   	@IRInst:blt	%t58	i	20
	str r6,[fp,r10]                                   	@IRInst:blt	%t58	i	20
	blt .L18                                          
	b .L19                                            
.L18:
	ldr r4,=5000                                      	@IRInst:assign	j	5000
	ldr r9,=120216                                    	@IRInst:assign	j	5000
	str r4,[fp,r9]                                    	@IRInst:assign	j	5000
.L21:
	ldr r4,=120216                                    	@IRInst:blt	%t60	j	N
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t60	j	N
	ldr r5,=10000                                     	@IRInst:blt	%t60	j	N
	cmp r4,r5                                         	@IRInst:blt	%t60	j	N
	movlt r6,#1                                       	@IRInst:blt	%t60	j	N
	movge r6,#0                                       	@IRInst:blt	%t60	j	N
	ldr r10,=120220                                   	@IRInst:blt	%t60	j	N
	str r6,[fp,r10]                                   	@IRInst:blt	%t60	j	N
	blt .L22                                          
	b .L23                                            
.L22:
	ldr r4,=120008                                    	@IRInst:mul	%t61	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t61	i	4
	mov r5,#4                                         	@IRInst:mul	%t61	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t61	i	4
	ldr r5,=120224                                    	@IRInst:mul	%t61	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t61	i	4
	add r4,fp,#80008                                  	@IRInst:add	%t62	a3	%t61
	ldr r5,=120224                                    	@IRInst:add	%t62	a3	%t61
	ldr r5,[fp,r5]                                    	@IRInst:add	%t62	a3	%t61
	add r6,r4,r5                                      	@IRInst:add	%t62	a3	%t61
	ldr r5,=120228                                    	@IRInst:add	%t62	a3	%t61
	str r6,[fp,r5]                                    	@IRInst:add	%t62	a3	%t61
	ldr r4,=120228                                    	@IRInst:assign	%t63	%t62
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t63	%t62
	ldr r4,[r4]                                       	@IRInst:assign	%t63	%t62
	ldr r9,=120232                                    	@IRInst:assign	%t63	%t62
	str r4,[fp,r9]                                    	@IRInst:assign	%t63	%t62
	ldr r4,=120172                                    	@IRInst:add	%t64	ans	%t63
	ldr r4,[fp,r4]                                    	@IRInst:add	%t64	ans	%t63
	ldr r5,=120232                                    	@IRInst:add	%t64	ans	%t63
	ldr r5,[fp,r5]                                    	@IRInst:add	%t64	ans	%t63
	add r6,r4,r5                                      	@IRInst:add	%t64	ans	%t63
	ldr r5,=120236                                    	@IRInst:add	%t64	ans	%t63
	str r6,[fp,r5]                                    	@IRInst:add	%t64	ans	%t63
	ldr r4,=120216                                    	@IRInst:mul	%t65	j	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t65	j	4
	mov r5,#4                                         	@IRInst:mul	%t65	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t65	j	4
	ldr r5,=120240                                    	@IRInst:mul	%t65	j	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t65	j	4
	add r4,fp,#8                                      	@IRInst:add	%t66	a1	%t65
	ldr r5,=120240                                    	@IRInst:add	%t66	a1	%t65
	ldr r5,[fp,r5]                                    	@IRInst:add	%t66	a1	%t65
	add r6,r4,r5                                      	@IRInst:add	%t66	a1	%t65
	ldr r5,=120244                                    	@IRInst:add	%t66	a1	%t65
	str r6,[fp,r5]                                    	@IRInst:add	%t66	a1	%t65
	ldr r4,=120244                                    	@IRInst:assign	%t67	%t66
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t67	%t66
	ldr r4,[r4]                                       	@IRInst:assign	%t67	%t66
	ldr r9,=120248                                    	@IRInst:assign	%t67	%t66
	str r4,[fp,r9]                                    	@IRInst:assign	%t67	%t66
	ldr r4,=120236                                    	@IRInst:sub	%t68	%t64	%t67
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t68	%t64	%t67
	ldr r5,=120248                                    	@IRInst:sub	%t68	%t64	%t67
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t68	%t64	%t67
	sub r6,r4,r5                                      	@IRInst:sub	%t68	%t64	%t67
	ldr r5,=120252                                    	@IRInst:sub	%t68	%t64	%t67
	str r6,[fp,r5]                                    	@IRInst:sub	%t68	%t64	%t67
	ldr r4,=120252                                    	@IRInst:assign	ans	%t68
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t68
	ldr r9,=120172                                    	@IRInst:assign	ans	%t68
	str r4,[fp,r9]                                    	@IRInst:assign	ans	%t68
	ldr r4,=120216                                    	@IRInst:add	%t69	j	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t69	j	1
	mov r5,#1                                         	@IRInst:add	%t69	j	1
	add r6,r4,r5                                      	@IRInst:add	%t69	j	1
	ldr r5,=120256                                    	@IRInst:add	%t69	j	1
	str r6,[fp,r5]                                    	@IRInst:add	%t69	j	1
	ldr r4,=120256                                    	@IRInst:assign	j	%t69
	ldr r4,[fp,r4]                                    	@IRInst:assign	j	%t69
	ldr r9,=120216                                    	@IRInst:assign	j	%t69
	str r4,[fp,r9]                                    	@IRInst:assign	j	%t69
	b .L21                                            
.L23:
	ldr r0,=120172                                    	@IRInst:assign	r0	ans
	ldr r0,[fp,r0]                                    	@IRInst:assign	r0	ans
	bl putint                                         
	b .L20                                            
.L19:
	ldr r4,=120008                                    	@IRInst:blt	%t70	i	30
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t70	i	30
	mov r5,#30                                        	@IRInst:blt	%t70	i	30
	cmp r4,r5                                         	@IRInst:blt	%t70	i	30
	movlt r6,#1                                       	@IRInst:blt	%t70	i	30
	movge r6,#0                                       	@IRInst:blt	%t70	i	30
	ldr r10,=120260                                   	@IRInst:blt	%t70	i	30
	str r6,[fp,r10]                                   	@IRInst:blt	%t70	i	30
	blt .L24                                          
	b .L25                                            
.L24:
	ldr r4,=5000                                      	@IRInst:assign	j	5000
	ldr r9,=120264                                    	@IRInst:assign	j	5000
	str r4,[fp,r9]                                    	@IRInst:assign	j	5000
.L27:
	ldr r4,=120264                                    	@IRInst:blt	%t72	j	N
	ldr r4,[fp,r4]                                    	@IRInst:blt	%t72	j	N
	ldr r5,=10000                                     	@IRInst:blt	%t72	j	N
	cmp r4,r5                                         	@IRInst:blt	%t72	j	N
	movlt r6,#1                                       	@IRInst:blt	%t72	j	N
	movge r6,#0                                       	@IRInst:blt	%t72	j	N
	ldr r10,=120268                                   	@IRInst:blt	%t72	j	N
	str r6,[fp,r10]                                   	@IRInst:blt	%t72	j	N
	blt .L28                                          
	b .L29                                            
.L28:
	ldr r4,=120264                                    	@IRInst:bgt	%t73	j	2233
	ldr r4,[fp,r4]                                    	@IRInst:bgt	%t73	j	2233
	ldr r5,=2233                                      	@IRInst:bgt	%t73	j	2233
	cmp r4,r5                                         	@IRInst:bgt	%t73	j	2233
	movgt r6,#1                                       	@IRInst:bgt	%t73	j	2233
	movle r6,#0                                       	@IRInst:bgt	%t73	j	2233
	ldr r10,=120272                                   	@IRInst:bgt	%t73	j	2233
	str r6,[fp,r10]                                   	@IRInst:bgt	%t73	j	2233
	bgt .L30                                          
	b .L31                                            
.L30:
	ldr r4,=120008                                    	@IRInst:mul	%t74	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t74	i	4
	mov r5,#4                                         	@IRInst:mul	%t74	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t74	i	4
	ldr r5,=120276                                    	@IRInst:mul	%t74	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t74	i	4
	add r4,fp,#40008                                  	@IRInst:add	%t75	a2	%t74
	ldr r5,=120276                                    	@IRInst:add	%t75	a2	%t74
	ldr r5,[fp,r5]                                    	@IRInst:add	%t75	a2	%t74
	add r6,r4,r5                                      	@IRInst:add	%t75	a2	%t74
	ldr r5,=120280                                    	@IRInst:add	%t75	a2	%t74
	str r6,[fp,r5]                                    	@IRInst:add	%t75	a2	%t74
	ldr r4,=120280                                    	@IRInst:assign	%t76	%t75
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t76	%t75
	ldr r4,[r4]                                       	@IRInst:assign	%t76	%t75
	ldr r9,=120284                                    	@IRInst:assign	%t76	%t75
	str r4,[fp,r9]                                    	@IRInst:assign	%t76	%t75
	ldr r4,=120172                                    	@IRInst:add	%t77	ans	%t76
	ldr r4,[fp,r4]                                    	@IRInst:add	%t77	ans	%t76
	ldr r5,=120284                                    	@IRInst:add	%t77	ans	%t76
	ldr r5,[fp,r5]                                    	@IRInst:add	%t77	ans	%t76
	add r6,r4,r5                                      	@IRInst:add	%t77	ans	%t76
	ldr r5,=120288                                    	@IRInst:add	%t77	ans	%t76
	str r6,[fp,r5]                                    	@IRInst:add	%t77	ans	%t76
	ldr r4,=120264                                    	@IRInst:mul	%t78	j	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t78	j	4
	mov r5,#4                                         	@IRInst:mul	%t78	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t78	j	4
	ldr r5,=120292                                    	@IRInst:mul	%t78	j	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t78	j	4
	add r4,fp,#8                                      	@IRInst:add	%t79	a1	%t78
	ldr r5,=120292                                    	@IRInst:add	%t79	a1	%t78
	ldr r5,[fp,r5]                                    	@IRInst:add	%t79	a1	%t78
	add r6,r4,r5                                      	@IRInst:add	%t79	a1	%t78
	ldr r5,=120296                                    	@IRInst:add	%t79	a1	%t78
	str r6,[fp,r5]                                    	@IRInst:add	%t79	a1	%t78
	ldr r4,=120296                                    	@IRInst:assign	%t80	%t79
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t80	%t79
	ldr r4,[r4]                                       	@IRInst:assign	%t80	%t79
	ldr r9,=120300                                    	@IRInst:assign	%t80	%t79
	str r4,[fp,r9]                                    	@IRInst:assign	%t80	%t79
	ldr r4,=120288                                    	@IRInst:sub	%t81	%t77	%t80
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t81	%t77	%t80
	ldr r5,=120300                                    	@IRInst:sub	%t81	%t77	%t80
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t81	%t77	%t80
	sub r6,r4,r5                                      	@IRInst:sub	%t81	%t77	%t80
	ldr r5,=120304                                    	@IRInst:sub	%t81	%t77	%t80
	str r6,[fp,r5]                                    	@IRInst:sub	%t81	%t77	%t80
	ldr r4,=120304                                    	@IRInst:assign	ans	%t81
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t81
	ldr r9,=120172                                    	@IRInst:assign	ans	%t81
	str r4,[fp,r9]                                    	@IRInst:assign	ans	%t81
	ldr r4,=120264                                    	@IRInst:add	%t82	j	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t82	j	1
	mov r5,#1                                         	@IRInst:add	%t82	j	1
	add r6,r4,r5                                      	@IRInst:add	%t82	j	1
	ldr r5,=120308                                    	@IRInst:add	%t82	j	1
	str r6,[fp,r5]                                    	@IRInst:add	%t82	j	1
	ldr r4,=120308                                    	@IRInst:assign	j	%t82
	ldr r4,[fp,r4]                                    	@IRInst:assign	j	%t82
	ldr r9,=120264                                    	@IRInst:assign	j	%t82
	str r4,[fp,r9]                                    	@IRInst:assign	j	%t82
	b .L32                                            
.L31:
	ldr r4,=120008                                    	@IRInst:mul	%t83	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t83	i	4
	mov r5,#4                                         	@IRInst:mul	%t83	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t83	i	4
	ldr r5,=120312                                    	@IRInst:mul	%t83	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t83	i	4
	add r4,fp,#8                                      	@IRInst:add	%t84	a1	%t83
	ldr r5,=120312                                    	@IRInst:add	%t84	a1	%t83
	ldr r5,[fp,r5]                                    	@IRInst:add	%t84	a1	%t83
	add r6,r4,r5                                      	@IRInst:add	%t84	a1	%t83
	ldr r5,=120316                                    	@IRInst:add	%t84	a1	%t83
	str r6,[fp,r5]                                    	@IRInst:add	%t84	a1	%t83
	ldr r4,=120316                                    	@IRInst:assign	%t85	%t84
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t85	%t84
	ldr r4,[r4]                                       	@IRInst:assign	%t85	%t84
	ldr r9,=120320                                    	@IRInst:assign	%t85	%t84
	str r4,[fp,r9]                                    	@IRInst:assign	%t85	%t84
	ldr r4,=120172                                    	@IRInst:add	%t86	ans	%t85
	ldr r4,[fp,r4]                                    	@IRInst:add	%t86	ans	%t85
	ldr r5,=120320                                    	@IRInst:add	%t86	ans	%t85
	ldr r5,[fp,r5]                                    	@IRInst:add	%t86	ans	%t85
	add r6,r4,r5                                      	@IRInst:add	%t86	ans	%t85
	ldr r5,=120324                                    	@IRInst:add	%t86	ans	%t85
	str r6,[fp,r5]                                    	@IRInst:add	%t86	ans	%t85
	ldr r4,=120264                                    	@IRInst:mul	%t87	j	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t87	j	4
	mov r5,#4                                         	@IRInst:mul	%t87	j	4
	mul r6,r4,r5                                      	@IRInst:mul	%t87	j	4
	ldr r5,=120328                                    	@IRInst:mul	%t87	j	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t87	j	4
	add r4,fp,#80008                                  	@IRInst:add	%t88	a3	%t87
	ldr r5,=120328                                    	@IRInst:add	%t88	a3	%t87
	ldr r5,[fp,r5]                                    	@IRInst:add	%t88	a3	%t87
	add r6,r4,r5                                      	@IRInst:add	%t88	a3	%t87
	ldr r5,=120332                                    	@IRInst:add	%t88	a3	%t87
	str r6,[fp,r5]                                    	@IRInst:add	%t88	a3	%t87
	ldr r4,=120332                                    	@IRInst:assign	%t89	%t88
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t89	%t88
	ldr r4,[r4]                                       	@IRInst:assign	%t89	%t88
	ldr r9,=120336                                    	@IRInst:assign	%t89	%t88
	str r4,[fp,r9]                                    	@IRInst:assign	%t89	%t88
	ldr r4,=120324                                    	@IRInst:add	%t90	%t86	%t89
	ldr r4,[fp,r4]                                    	@IRInst:add	%t90	%t86	%t89
	ldr r5,=120336                                    	@IRInst:add	%t90	%t86	%t89
	ldr r5,[fp,r5]                                    	@IRInst:add	%t90	%t86	%t89
	add r6,r4,r5                                      	@IRInst:add	%t90	%t86	%t89
	ldr r5,=120340                                    	@IRInst:add	%t90	%t86	%t89
	str r6,[fp,r5]                                    	@IRInst:add	%t90	%t86	%t89
	ldr r4,=120340                                    	@IRInst:sdiv	%t92	%t90	13333
	ldr r4,[fp,r4]                                    	@IRInst:sdiv	%t92	%t90	13333
	ldr r5,=13333                                     	@IRInst:sdiv	%t92	%t90	13333
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t92	%t90	13333
	ldr r5,=120348                                    	@IRInst:sdiv	%t92	%t90	13333
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t92	%t90	13333
	ldr r4,=120348                                    	@IRInst:mul	%t93	%t92	13333
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t93	%t92	13333
	ldr r5,=13333                                     	@IRInst:mul	%t93	%t92	13333
	mul r6,r4,r5                                      	@IRInst:mul	%t93	%t92	13333
	ldr r5,=120352                                    	@IRInst:mul	%t93	%t92	13333
	str r6,[fp,r5]                                    	@IRInst:mul	%t93	%t92	13333
	ldr r4,=120340                                    	@IRInst:sub	%t91	%t90	%t93
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t91	%t90	%t93
	ldr r5,=120352                                    	@IRInst:sub	%t91	%t90	%t93
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t91	%t90	%t93
	sub r6,r4,r5                                      	@IRInst:sub	%t91	%t90	%t93
	ldr r5,=120344                                    	@IRInst:sub	%t91	%t90	%t93
	str r6,[fp,r5]                                    	@IRInst:sub	%t91	%t90	%t93
	ldr r4,=120344                                    	@IRInst:assign	ans	%t91
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t91
	ldr r9,=120172                                    	@IRInst:assign	ans	%t91
	str r4,[fp,r9]                                    	@IRInst:assign	ans	%t91
	ldr r4,=120264                                    	@IRInst:add	%t94	j	2
	ldr r4,[fp,r4]                                    	@IRInst:add	%t94	j	2
	mov r5,#2                                         	@IRInst:add	%t94	j	2
	add r6,r4,r5                                      	@IRInst:add	%t94	j	2
	ldr r5,=120356                                    	@IRInst:add	%t94	j	2
	str r6,[fp,r5]                                    	@IRInst:add	%t94	j	2
	ldr r4,=120356                                    	@IRInst:assign	j	%t94
	ldr r4,[fp,r4]                                    	@IRInst:assign	j	%t94
	ldr r9,=120264                                    	@IRInst:assign	j	%t94
	str r4,[fp,r9]                                    	@IRInst:assign	j	%t94
.L32:
	b .L27                                            
.L29:
	ldr r0,=120172                                    	@IRInst:assign	r0	ans
	ldr r0,[fp,r0]                                    	@IRInst:assign	r0	ans
	bl putint                                         
	b .L26                                            
.L25:
	ldr r4,=120008                                    	@IRInst:mul	%t95	i	4
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t95	i	4
	mov r5,#4                                         	@IRInst:mul	%t95	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t95	i	4
	ldr r5,=120360                                    	@IRInst:mul	%t95	i	4
	str r6,[fp,r5]                                    	@IRInst:mul	%t95	i	4
	add r4,fp,#80008                                  	@IRInst:add	%t96	a3	%t95
	ldr r5,=120360                                    	@IRInst:add	%t96	a3	%t95
	ldr r5,[fp,r5]                                    	@IRInst:add	%t96	a3	%t95
	add r6,r4,r5                                      	@IRInst:add	%t96	a3	%t95
	ldr r5,=120364                                    	@IRInst:add	%t96	a3	%t95
	str r6,[fp,r5]                                    	@IRInst:add	%t96	a3	%t95
	ldr r4,=120364                                    	@IRInst:assign	%t97	%t96
	ldr r4,[fp,r4]                                    	@IRInst:assign	%t97	%t96
	ldr r4,[r4]                                       	@IRInst:assign	%t97	%t96
	ldr r9,=120368                                    	@IRInst:assign	%t97	%t96
	str r4,[fp,r9]                                    	@IRInst:assign	%t97	%t96
	ldr r4,=120368                                    	@IRInst:mul	%t98	%t97	k
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t98	%t97	k
	ldr r5,[fp,#4]                                    	@IRInst:mul	%t98	%t97	k
	mul r6,r4,r5                                      	@IRInst:mul	%t98	%t97	k
	ldr r5,=120372                                    	@IRInst:mul	%t98	%t97	k
	str r6,[fp,r5]                                    	@IRInst:mul	%t98	%t97	k
	ldr r4,=120172                                    	@IRInst:add	%t99	ans	%t98
	ldr r4,[fp,r4]                                    	@IRInst:add	%t99	ans	%t98
	ldr r5,=120372                                    	@IRInst:add	%t99	ans	%t98
	ldr r5,[fp,r5]                                    	@IRInst:add	%t99	ans	%t98
	add r6,r4,r5                                      	@IRInst:add	%t99	ans	%t98
	ldr r5,=120376                                    	@IRInst:add	%t99	ans	%t98
	str r6,[fp,r5]                                    	@IRInst:add	%t99	ans	%t98
	ldr r4,=120376                                    	@IRInst:sdiv	%t101	%t99	99988
	ldr r4,[fp,r4]                                    	@IRInst:sdiv	%t101	%t99	99988
	ldr r5,=99988                                     	@IRInst:sdiv	%t101	%t99	99988
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t101	%t99	99988
	ldr r5,=120384                                    	@IRInst:sdiv	%t101	%t99	99988
	str r6,[fp,r5]                                    	@IRInst:sdiv	%t101	%t99	99988
	ldr r4,=120384                                    	@IRInst:mul	%t102	%t101	99988
	ldr r4,[fp,r4]                                    	@IRInst:mul	%t102	%t101	99988
	ldr r5,=99988                                     	@IRInst:mul	%t102	%t101	99988
	mul r6,r4,r5                                      	@IRInst:mul	%t102	%t101	99988
	ldr r5,=120388                                    	@IRInst:mul	%t102	%t101	99988
	str r6,[fp,r5]                                    	@IRInst:mul	%t102	%t101	99988
	ldr r4,=120376                                    	@IRInst:sub	%t100	%t99	%t102
	ldr r4,[fp,r4]                                    	@IRInst:sub	%t100	%t99	%t102
	ldr r5,=120388                                    	@IRInst:sub	%t100	%t99	%t102
	ldr r5,[fp,r5]                                    	@IRInst:sub	%t100	%t99	%t102
	sub r6,r4,r5                                      	@IRInst:sub	%t100	%t99	%t102
	ldr r5,=120380                                    	@IRInst:sub	%t100	%t99	%t102
	str r6,[fp,r5]                                    	@IRInst:sub	%t100	%t99	%t102
	ldr r4,=120380                                    	@IRInst:assign	ans	%t100
	ldr r4,[fp,r4]                                    	@IRInst:assign	ans	%t100
	ldr r9,=120172                                    	@IRInst:assign	ans	%t100
	str r4,[fp,r9]                                    	@IRInst:assign	ans	%t100
.L26:
.L20:
.L17:
	ldr r4,=120008                                    	@IRInst:add	%t103	i	1
	ldr r4,[fp,r4]                                    	@IRInst:add	%t103	i	1
	mov r5,#1                                         	@IRInst:add	%t103	i	1
	add r6,r4,r5                                      	@IRInst:add	%t103	i	1
	ldr r5,=120392                                    	@IRInst:add	%t103	i	1
	str r6,[fp,r5]                                    	@IRInst:add	%t103	i	1
	ldr r4,=120392                                    	@IRInst:assign	i	%t103
	ldr r4,[fp,r4]                                    	@IRInst:assign	i	%t103
	ldr r9,=120008                                    	@IRInst:assign	i	%t103
	str r4,[fp,r9]                                    	@IRInst:assign	i	%t103
	b .L12                                            
.L14:
	ldr r4,=120172                                    	@IRInst:assign		ans
	ldr r4,[fp,r4]                                    	@IRInst:assign		ans
	str r4,[fp]                                       	@IRInst:assign		ans
	b .L2                                             
.L2:
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
	add fp,fp,#588                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_1_N:
        .long   N
.global main
.type main, %function
main:
.L33:
	push {r10,fp,lr}                                  
	sub sp,sp,#8                                      
	add fp,sp,#0                                      
	mov r0,#9                                         	@IRInst:assign	r0	9
	bl long_array                                     
	str r0,[fp,#4]                                    	@IRInst:assign	%t105	r0
	ldr r4,[fp,#4]                                    	@IRInst:assign		%t105
	str r4,[fp]                                       	@IRInst:assign		%t105
	b .L34                                            
.L34:
	ldr r0,[fp]                                       
	add fp,fp,#8                                      
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
