.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
.text
.global foo
.type foo, %function
foo:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#216                                    
	add fp,sp,#0                                      
	mov r4,#3                                         	@IRInst:assign	a	3
	str r4,[fp,#68]                                   	@IRInst:assign	a	3
	mov r4,#7                                         	@IRInst:assign	b	7
	str r4,[fp,#72]                                   	@IRInst:assign	b	7
	mov r4,#5                                         	@IRInst:assign	c	5
	str r4,[fp,#76]                                   	@IRInst:assign	c	5
	mov r4,#6                                         	@IRInst:assign	d	6
	str r4,[fp,#80]                                   	@IRInst:assign	d	6
	mov r4,#1                                         	@IRInst:assign	e	1
	str r4,[fp,#84]                                   	@IRInst:assign	e	1
	mov r4,#0                                         	@IRInst:assign	f	0
	str r4,[fp,#88]                                   	@IRInst:assign	f	0
	mov r4,#3                                         	@IRInst:assign	g	3
	str r4,[fp,#92]                                   	@IRInst:assign	g	3
	mov r4,#5                                         	@IRInst:assign	h	5
	str r4,[fp,#96]                                   	@IRInst:assign	h	5
	mov r4,#4                                         	@IRInst:assign	i	4
	str r4,[fp,#100]                                  	@IRInst:assign	i	4
	mov r4,#2                                         	@IRInst:assign	j	2
	str r4,[fp,#104]                                  	@IRInst:assign	j	2
	mov r4,#7                                         	@IRInst:assign	k	7
	str r4,[fp,#108]                                  	@IRInst:assign	k	7
	mov r4,#9                                         	@IRInst:assign	l	9
	str r4,[fp,#112]                                  	@IRInst:assign	l	9
	mov r4,#8                                         	@IRInst:assign	m	8
	str r4,[fp,#116]                                  	@IRInst:assign	m	8
	mov r4,#1                                         	@IRInst:assign	n	1
	str r4,[fp,#120]                                  	@IRInst:assign	n	1
	mov r4,#4                                         	@IRInst:assign	o	4
	str r4,[fp,#124]                                  	@IRInst:assign	o	4
	mov r4,#6                                         	@IRInst:assign	p	6
	str r4,[fp,#128]                                  	@IRInst:assign	p	6
	ldr r4,[fp,#68]                                   	@IRInst:add	%t19	a	b
	ldr r5,[fp,#72]                                   	@IRInst:add	%t19	a	b
	add r6,r4,r5                                      	@IRInst:add	%t19	a	b
	str r6,[fp,#136]                                  	@IRInst:add	%t19	a	b
	ldr r4,[fp,#136]                                  	@IRInst:add	%t20	%t19	c
	ldr r5,[fp,#76]                                   	@IRInst:add	%t20	%t19	c
	add r6,r4,r5                                      	@IRInst:add	%t20	%t19	c
	str r6,[fp,#140]                                  	@IRInst:add	%t20	%t19	c
	ldr r4,[fp,#140]                                  	@IRInst:add	%t21	%t20	d
	ldr r5,[fp,#80]                                   	@IRInst:add	%t21	%t20	d
	add r6,r4,r5                                      	@IRInst:add	%t21	%t20	d
	str r6,[fp,#144]                                  	@IRInst:add	%t21	%t20	d
	ldr r4,[fp,#144]                                  	@IRInst:add	%t22	%t21	e
	ldr r5,[fp,#84]                                   	@IRInst:add	%t22	%t21	e
	add r6,r4,r5                                      	@IRInst:add	%t22	%t21	e
	str r6,[fp,#148]                                  	@IRInst:add	%t22	%t21	e
	ldr r4,[fp,#148]                                  	@IRInst:add	%t23	%t22	f
	ldr r5,[fp,#88]                                   	@IRInst:add	%t23	%t22	f
	add r6,r4,r5                                      	@IRInst:add	%t23	%t22	f
	str r6,[fp,#152]                                  	@IRInst:add	%t23	%t22	f
	ldr r4,[fp,#152]                                  	@IRInst:add	%t24	%t23	g
	ldr r5,[fp,#92]                                   	@IRInst:add	%t24	%t23	g
	add r6,r4,r5                                      	@IRInst:add	%t24	%t23	g
	str r6,[fp,#156]                                  	@IRInst:add	%t24	%t23	g
	ldr r4,[fp,#156]                                  	@IRInst:add	%t25	%t24	h
	ldr r5,[fp,#96]                                   	@IRInst:add	%t25	%t24	h
	add r6,r4,r5                                      	@IRInst:add	%t25	%t24	h
	str r6,[fp,#160]                                  	@IRInst:add	%t25	%t24	h
	ldr r4,[fp,#160]                                  	@IRInst:assign	sum1	%t25
	str r4,[fp,#132]                                  	@IRInst:assign	sum1	%t25
	ldr r4,[fp,#100]                                  	@IRInst:add	%t27	i	j
	ldr r5,[fp,#104]                                  	@IRInst:add	%t27	i	j
	add r6,r4,r5                                      	@IRInst:add	%t27	i	j
	str r6,[fp,#168]                                  	@IRInst:add	%t27	i	j
	ldr r4,[fp,#168]                                  	@IRInst:add	%t28	%t27	k
	ldr r5,[fp,#108]                                  	@IRInst:add	%t28	%t27	k
	add r6,r4,r5                                      	@IRInst:add	%t28	%t27	k
	str r6,[fp,#172]                                  	@IRInst:add	%t28	%t27	k
	ldr r4,[fp,#172]                                  	@IRInst:add	%t29	%t28	l
	ldr r5,[fp,#112]                                  	@IRInst:add	%t29	%t28	l
	add r6,r4,r5                                      	@IRInst:add	%t29	%t28	l
	str r6,[fp,#176]                                  	@IRInst:add	%t29	%t28	l
	ldr r4,[fp,#176]                                  	@IRInst:add	%t30	%t29	m
	ldr r5,[fp,#116]                                  	@IRInst:add	%t30	%t29	m
	add r6,r4,r5                                      	@IRInst:add	%t30	%t29	m
	str r6,[fp,#180]                                  	@IRInst:add	%t30	%t29	m
	ldr r4,[fp,#180]                                  	@IRInst:add	%t31	%t30	n
	ldr r5,[fp,#120]                                  	@IRInst:add	%t31	%t30	n
	add r6,r4,r5                                      	@IRInst:add	%t31	%t30	n
	str r6,[fp,#184]                                  	@IRInst:add	%t31	%t30	n
	ldr r4,[fp,#184]                                  	@IRInst:add	%t32	%t31	o
	ldr r5,[fp,#124]                                  	@IRInst:add	%t32	%t31	o
	add r6,r4,r5                                      	@IRInst:add	%t32	%t31	o
	str r6,[fp,#188]                                  	@IRInst:add	%t32	%t31	o
	ldr r4,[fp,#188]                                  	@IRInst:add	%t33	%t32	p
	ldr r5,[fp,#128]                                  	@IRInst:add	%t33	%t32	p
	add r6,r4,r5                                      	@IRInst:add	%t33	%t32	p
	str r6,[fp,#192]                                  	@IRInst:add	%t33	%t32	p
	ldr r4,[fp,#192]                                  	@IRInst:assign	sum2	%t33
	str r4,[fp,#164]                                  	@IRInst:assign	sum2	%t33
	ldr r4,[fp,#132]                                  	@IRInst:add	%t34	sum1	sum2
	ldr r5,[fp,#164]                                  	@IRInst:add	%t34	sum1	sum2
	add r6,r4,r5                                      	@IRInst:add	%t34	sum1	sum2
	str r6,[fp,#196]                                  	@IRInst:add	%t34	sum1	sum2
	ldr r4,[fp,#68]                                   	@IRInst:mul	%t35	a	4
	mov r5,#4                                         	@IRInst:mul	%t35	a	4
	mul r6,r4,r5                                      	@IRInst:mul	%t35	a	4
	str r6,[fp,#200]                                  	@IRInst:mul	%t35	a	4
	add r4,fp,#4                                      	@IRInst:add	%t36	arr	%t35
	ldr r5,[fp,#200]                                  	@IRInst:add	%t36	arr	%t35
	add r6,r4,r5                                      	@IRInst:add	%t36	arr	%t35
	str r6,[fp,#204]                                  	@IRInst:add	%t36	arr	%t35
	ldr r4,[fp,#204]                                  	@IRInst:assign	%t37	%t36
	ldr r4,[r4]                                       	@IRInst:assign	%t37	%t36
	str r4,[fp,#208]                                  	@IRInst:assign	%t37	%t36
	ldr r4,[fp,#196]                                  	@IRInst:add	%t38	%t34	%t37
	ldr r5,[fp,#208]                                  	@IRInst:add	%t38	%t34	%t37
	add r6,r4,r5                                      	@IRInst:add	%t38	%t34	%t37
	str r6,[fp,#212]                                  	@IRInst:add	%t38	%t34	%t37
	ldr r4,[fp,#212]                                  	@IRInst:assign		%t38
	str r4,[fp]                                       	@IRInst:assign		%t38
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#216                                    
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global main
.type main, %function
main:
.L3:
	push {r10,fp,lr}                                  
	sub sp,sp,#224                                    
	add fp,sp,#0                                      
	mov r4,#3                                         	@IRInst:assign	a	3
	str r4,[fp,#4]                                    	@IRInst:assign	a	3
	mov r4,#7                                         	@IRInst:assign	b	7
	str r4,[fp,#8]                                    	@IRInst:assign	b	7
	mov r4,#5                                         	@IRInst:assign	c	5
	str r4,[fp,#12]                                   	@IRInst:assign	c	5
	mov r4,#6                                         	@IRInst:assign	d	6
	str r4,[fp,#16]                                   	@IRInst:assign	d	6
	mov r4,#1                                         	@IRInst:assign	e	1
	str r4,[fp,#20]                                   	@IRInst:assign	e	1
	mov r4,#0                                         	@IRInst:assign	f	0
	str r4,[fp,#24]                                   	@IRInst:assign	f	0
	mov r4,#3                                         	@IRInst:assign	g	3
	str r4,[fp,#28]                                   	@IRInst:assign	g	3
	mov r4,#5                                         	@IRInst:assign	h	5
	str r4,[fp,#32]                                   	@IRInst:assign	h	5
	mov r4,#4                                         	@IRInst:assign	i	4
	str r4,[fp,#36]                                   	@IRInst:assign	i	4
	mov r4,#2                                         	@IRInst:assign	j	2
	str r4,[fp,#40]                                   	@IRInst:assign	j	2
	mov r4,#7                                         	@IRInst:assign	k	7
	str r4,[fp,#44]                                   	@IRInst:assign	k	7
	mov r4,#9                                         	@IRInst:assign	l	9
	str r4,[fp,#48]                                   	@IRInst:assign	l	9
	mov r4,#8                                         	@IRInst:assign	m	8
	str r4,[fp,#52]                                   	@IRInst:assign	m	8
	mov r4,#1                                         	@IRInst:assign	n	1
	str r4,[fp,#56]                                   	@IRInst:assign	n	1
	mov r4,#4                                         	@IRInst:assign	o	4
	str r4,[fp,#60]                                   	@IRInst:assign	o	4
	mov r4,#6                                         	@IRInst:assign	p	6
	str r4,[fp,#64]                                   	@IRInst:assign	p	6
	ldr r4,[fp,#4]                                    	@IRInst:add	%t57	a	b
	ldr r5,[fp,#8]                                    	@IRInst:add	%t57	a	b
	add r6,r4,r5                                      	@IRInst:add	%t57	a	b
	str r6,[fp,#72]                                   	@IRInst:add	%t57	a	b
	ldr r4,[fp,#72]                                   	@IRInst:add	%t58	%t57	c
	ldr r5,[fp,#12]                                   	@IRInst:add	%t58	%t57	c
	add r6,r4,r5                                      	@IRInst:add	%t58	%t57	c
	str r6,[fp,#76]                                   	@IRInst:add	%t58	%t57	c
	ldr r4,[fp,#76]                                   	@IRInst:add	%t59	%t58	d
	ldr r5,[fp,#16]                                   	@IRInst:add	%t59	%t58	d
	add r6,r4,r5                                      	@IRInst:add	%t59	%t58	d
	str r6,[fp,#80]                                   	@IRInst:add	%t59	%t58	d
	ldr r4,[fp,#80]                                   	@IRInst:add	%t60	%t59	e
	ldr r5,[fp,#20]                                   	@IRInst:add	%t60	%t59	e
	add r6,r4,r5                                      	@IRInst:add	%t60	%t59	e
	str r6,[fp,#84]                                   	@IRInst:add	%t60	%t59	e
	ldr r4,[fp,#84]                                   	@IRInst:add	%t61	%t60	f
	ldr r5,[fp,#24]                                   	@IRInst:add	%t61	%t60	f
	add r6,r4,r5                                      	@IRInst:add	%t61	%t60	f
	str r6,[fp,#88]                                   	@IRInst:add	%t61	%t60	f
	ldr r4,[fp,#88]                                   	@IRInst:add	%t62	%t61	g
	ldr r5,[fp,#28]                                   	@IRInst:add	%t62	%t61	g
	add r6,r4,r5                                      	@IRInst:add	%t62	%t61	g
	str r6,[fp,#92]                                   	@IRInst:add	%t62	%t61	g
	ldr r4,[fp,#92]                                   	@IRInst:add	%t63	%t62	h
	ldr r5,[fp,#32]                                   	@IRInst:add	%t63	%t62	h
	add r6,r4,r5                                      	@IRInst:add	%t63	%t62	h
	str r6,[fp,#96]                                   	@IRInst:add	%t63	%t62	h
	ldr r4,[fp,#96]                                   	@IRInst:assign	sum1	%t63
	str r4,[fp,#68]                                   	@IRInst:assign	sum1	%t63
	ldr r4,[fp,#36]                                   	@IRInst:add	%t65	i	j
	ldr r5,[fp,#40]                                   	@IRInst:add	%t65	i	j
	add r6,r4,r5                                      	@IRInst:add	%t65	i	j
	str r6,[fp,#104]                                  	@IRInst:add	%t65	i	j
	ldr r4,[fp,#104]                                  	@IRInst:add	%t66	%t65	k
	ldr r5,[fp,#44]                                   	@IRInst:add	%t66	%t65	k
	add r6,r4,r5                                      	@IRInst:add	%t66	%t65	k
	str r6,[fp,#108]                                  	@IRInst:add	%t66	%t65	k
	ldr r4,[fp,#108]                                  	@IRInst:add	%t67	%t66	l
	ldr r5,[fp,#48]                                   	@IRInst:add	%t67	%t66	l
	add r6,r4,r5                                      	@IRInst:add	%t67	%t66	l
	str r6,[fp,#112]                                  	@IRInst:add	%t67	%t66	l
	ldr r4,[fp,#112]                                  	@IRInst:add	%t68	%t67	m
	ldr r5,[fp,#52]                                   	@IRInst:add	%t68	%t67	m
	add r6,r4,r5                                      	@IRInst:add	%t68	%t67	m
	str r6,[fp,#116]                                  	@IRInst:add	%t68	%t67	m
	ldr r4,[fp,#116]                                  	@IRInst:add	%t69	%t68	n
	ldr r5,[fp,#56]                                   	@IRInst:add	%t69	%t68	n
	add r6,r4,r5                                      	@IRInst:add	%t69	%t68	n
	str r6,[fp,#120]                                  	@IRInst:add	%t69	%t68	n
	ldr r4,[fp,#120]                                  	@IRInst:add	%t70	%t69	o
	ldr r5,[fp,#60]                                   	@IRInst:add	%t70	%t69	o
	add r6,r4,r5                                      	@IRInst:add	%t70	%t69	o
	str r6,[fp,#124]                                  	@IRInst:add	%t70	%t69	o
	ldr r4,[fp,#124]                                  	@IRInst:add	%t71	%t70	p
	ldr r5,[fp,#64]                                   	@IRInst:add	%t71	%t70	p
	add r6,r4,r5                                      	@IRInst:add	%t71	%t70	p
	str r6,[fp,#128]                                  	@IRInst:add	%t71	%t70	p
	ldr r4,[fp,#128]                                  	@IRInst:assign	sum2	%t71
	str r4,[fp,#100]                                  	@IRInst:assign	sum2	%t71
	bl foo                                            
	str r0,[fp,#132]                                  	@IRInst:assign	%t72	r0
	ldr r4,[fp,#68]                                   	@IRInst:add	%t73	sum1	%t72
	ldr r5,[fp,#132]                                  	@IRInst:add	%t73	sum1	%t72
	add r6,r4,r5                                      	@IRInst:add	%t73	sum1	%t72
	str r6,[fp,#136]                                  	@IRInst:add	%t73	sum1	%t72
	ldr r4,[fp,#136]                                  	@IRInst:assign	sum1	%t73
	str r4,[fp,#68]                                   	@IRInst:assign	sum1	%t73
	mov r4,#4                                         	@IRInst:assign	q	4
	str r4,[fp,#140]                                  	@IRInst:assign	q	4
	mov r4,#7                                         	@IRInst:assign	r	7
	str r4,[fp,#144]                                  	@IRInst:assign	r	7
	mov r4,#2                                         	@IRInst:assign	s	2
	str r4,[fp,#148]                                  	@IRInst:assign	s	2
	mov r4,#5                                         	@IRInst:assign	t	5
	str r4,[fp,#152]                                  	@IRInst:assign	t	5
	mov r4,#8                                         	@IRInst:assign	u	8
	str r4,[fp,#156]                                  	@IRInst:assign	u	8
	mov r4,#0                                         	@IRInst:assign	v	0
	str r4,[fp,#160]                                  	@IRInst:assign	v	0
	mov r4,#6                                         	@IRInst:assign	w	6
	str r4,[fp,#164]                                  	@IRInst:assign	w	6
	mov r4,#3                                         	@IRInst:assign	x	3
	str r4,[fp,#168]                                  	@IRInst:assign	x	3
	bl foo                                            
	str r0,[fp,#172]                                  	@IRInst:assign	%t82	r0
	ldr r4,[fp,#100]                                  	@IRInst:add	%t83	sum2	%t82
	ldr r5,[fp,#172]                                  	@IRInst:add	%t83	sum2	%t82
	add r6,r4,r5                                      	@IRInst:add	%t83	sum2	%t82
	str r6,[fp,#176]                                  	@IRInst:add	%t83	sum2	%t82
	ldr r4,[fp,#176]                                  	@IRInst:assign	sum2	%t83
	str r4,[fp,#100]                                  	@IRInst:assign	sum2	%t83
	ldr r4,[fp,#36]                                   	@IRInst:assign	a	i
	str r4,[fp,#4]                                    	@IRInst:assign	a	i
	ldr r4,[fp,#40]                                   	@IRInst:assign	b	j
	str r4,[fp,#8]                                    	@IRInst:assign	b	j
	ldr r4,[fp,#44]                                   	@IRInst:assign	c	k
	str r4,[fp,#12]                                   	@IRInst:assign	c	k
	ldr r4,[fp,#48]                                   	@IRInst:assign	d	l
	str r4,[fp,#16]                                   	@IRInst:assign	d	l
	ldr r4,[fp,#52]                                   	@IRInst:assign	e	m
	str r4,[fp,#20]                                   	@IRInst:assign	e	m
	ldr r4,[fp,#56]                                   	@IRInst:assign	f	n
	str r4,[fp,#24]                                   	@IRInst:assign	f	n
	ldr r4,[fp,#60]                                   	@IRInst:assign	g	o
	str r4,[fp,#28]                                   	@IRInst:assign	g	o
	ldr r4,[fp,#64]                                   	@IRInst:assign	h	p
	str r4,[fp,#32]                                   	@IRInst:assign	h	p
	ldr r4,[fp,#140]                                  	@IRInst:add	%t85	q	r
	ldr r5,[fp,#144]                                  	@IRInst:add	%t85	q	r
	add r6,r4,r5                                      	@IRInst:add	%t85	q	r
	str r6,[fp,#184]                                  	@IRInst:add	%t85	q	r
	ldr r4,[fp,#184]                                  	@IRInst:add	%t86	%t85	s
	ldr r5,[fp,#148]                                  	@IRInst:add	%t86	%t85	s
	add r6,r4,r5                                      	@IRInst:add	%t86	%t85	s
	str r6,[fp,#188]                                  	@IRInst:add	%t86	%t85	s
	ldr r4,[fp,#188]                                  	@IRInst:add	%t87	%t86	t
	ldr r5,[fp,#152]                                  	@IRInst:add	%t87	%t86	t
	add r6,r4,r5                                      	@IRInst:add	%t87	%t86	t
	str r6,[fp,#192]                                  	@IRInst:add	%t87	%t86	t
	ldr r4,[fp,#192]                                  	@IRInst:add	%t88	%t87	u
	ldr r5,[fp,#156]                                  	@IRInst:add	%t88	%t87	u
	add r6,r4,r5                                      	@IRInst:add	%t88	%t87	u
	str r6,[fp,#196]                                  	@IRInst:add	%t88	%t87	u
	ldr r4,[fp,#196]                                  	@IRInst:add	%t89	%t88	v
	ldr r5,[fp,#160]                                  	@IRInst:add	%t89	%t88	v
	add r6,r4,r5                                      	@IRInst:add	%t89	%t88	v
	str r6,[fp,#200]                                  	@IRInst:add	%t89	%t88	v
	ldr r4,[fp,#200]                                  	@IRInst:add	%t90	%t89	w
	ldr r5,[fp,#164]                                  	@IRInst:add	%t90	%t89	w
	add r6,r4,r5                                      	@IRInst:add	%t90	%t89	w
	str r6,[fp,#204]                                  	@IRInst:add	%t90	%t89	w
	ldr r4,[fp,#204]                                  	@IRInst:add	%t91	%t90	x
	ldr r5,[fp,#168]                                  	@IRInst:add	%t91	%t90	x
	add r6,r4,r5                                      	@IRInst:add	%t91	%t90	x
	str r6,[fp,#208]                                  	@IRInst:add	%t91	%t90	x
	ldr r4,[fp,#208]                                  	@IRInst:assign	sum3	%t91
	str r4,[fp,#180]                                  	@IRInst:assign	sum3	%t91
	ldr r4,[fp,#68]                                   	@IRInst:add	%t93	sum1	sum2
	ldr r5,[fp,#100]                                  	@IRInst:add	%t93	sum1	sum2
	add r6,r4,r5                                      	@IRInst:add	%t93	sum1	sum2
	str r6,[fp,#216]                                  	@IRInst:add	%t93	sum1	sum2
	ldr r4,[fp,#216]                                  	@IRInst:add	%t94	%t93	sum3
	ldr r5,[fp,#180]                                  	@IRInst:add	%t94	%t93	sum3
	add r6,r4,r5                                      	@IRInst:add	%t94	%t93	sum3
	str r6,[fp,#220]                                  	@IRInst:add	%t94	%t93	sum3
	ldr r4,[fp,#220]                                  	@IRInst:assign	sum	%t94
	str r4,[fp,#212]                                  	@IRInst:assign	sum	%t94
	ldr r0,[fp,#212]                                  	@IRInst:assign	r0	sum
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L4                                             
.L4:
	ldr r0,[fp]                                       
	add fp,fp,#224                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
