.arch armv7ve
.arm
.fpu vfpv4

.macro mov32, cond, reg, val
    movw\cond \reg, #:lower16:\val
    movt\cond \reg, #:upper16:\val
.endm

.data
ints:
        .zero   40000
intt:
        .long   0
chas:
        .zero   40000
chat:
        .long   0
i:
        .long   0
ii:
        .long   1
c:
        .long   0
get:
        .zero   40000
get2:
        .zero   40000
.text
.global_0_ints:
        .long   ints
.global_0_intt:
        .long   intt
.global_0_chas:
        .long   chas
.global_0_chat:
        .long   chat
.global_0_i:
        .long   i
.global_0_ii:
        .long   ii
.global_0_c:
        .long   c
.global_0_get:
        .long   get
.global_0_get2:
        .long   get2
.global isdigit
.type isdigit, %function
isdigit:
.L1:
	push {r10,fp}                                     
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	x	r0
	ldr r4,[fp,#4]                                    	@IRInst:bge	%t12	x	48
	mov r5,#48                                        	@IRInst:bge	%t12	x	48
	cmp r4,r5                                         	@IRInst:bge	%t12	x	48
	movge r6,#1                                       	@IRInst:bge	%t12	x	48
	movlt r6,#0                                       	@IRInst:bge	%t12	x	48
	str r6,[fp,#8]                                    	@IRInst:bge	%t12	x	48
	bge .L6                                           
	b .L4                                             
.L6:
	ldr r4,[fp,#4]                                    	@IRInst:ble	%t13	x	57
	mov r5,#57                                        	@IRInst:ble	%t13	x	57
	cmp r4,r5                                         	@IRInst:ble	%t13	x	57
	movle r6,#1                                       	@IRInst:ble	%t13	x	57
	movgt r6,#0                                       	@IRInst:ble	%t13	x	57
	str r6,[fp,#12]                                   	@IRInst:ble	%t13	x	57
	ble .L3                                           
	b .L4                                             
.L3:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L2                                             
.L4:
.L5:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_1_ints:
        .long   ints
.global_1_intt:
        .long   intt
.global_1_chas:
        .long   chas
.global_1_chat:
        .long   chat
.global_1_i:
        .long   i
.global_1_ii:
        .long   ii
.global_1_c:
        .long   c
.global_1_get:
        .long   get
.global_1_get2:
        .long   get2
.global power
.type power, %function
power:
.L7:
	push {r10,fp}                                     
	sub sp,sp,#28                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	b	r0
	str r1,[fp,#8]                                    	@IRInst:assign	a	r1
	mov r4,#1                                         	@IRInst:assign	result	1
	str r4,[fp,#12]                                   	@IRInst:assign	result	1
.L9:
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t20	a	0
	mov r5,#0                                         	@IRInst:beq	%t20	a	0
	cmp r4,r5                                         	@IRInst:beq	%t20	a	0
	moveq r6,#1                                       	@IRInst:beq	%t20	a	0
	movne r6,#0                                       	@IRInst:beq	%t20	a	0
	str r6,[fp,#16]                                   	@IRInst:beq	%t20	a	0
	beq .L11                                          
	b .L10                                            
.L10:
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t21	result	b
	ldr r5,[fp,#4]                                    	@IRInst:mul	%t21	result	b
	mul r6,r4,r5                                      	@IRInst:mul	%t21	result	b
	str r6,[fp,#20]                                   	@IRInst:mul	%t21	result	b
	ldr r4,[fp,#20]                                   	@IRInst:assign	result	%t21
	str r4,[fp,#12]                                   	@IRInst:assign	result	%t21
	ldr r4,[fp,#8]                                    	@IRInst:sub	%t22	a	1
	mov r5,#1                                         	@IRInst:sub	%t22	a	1
	sub r6,r4,r5                                      	@IRInst:sub	%t22	a	1
	str r6,[fp,#24]                                   	@IRInst:sub	%t22	a	1
	ldr r4,[fp,#24]                                   	@IRInst:assign	a	%t22
	str r4,[fp,#8]                                    	@IRInst:assign	a	%t22
	b .L9                                             
.L11:
	ldr r4,[fp,#12]                                   	@IRInst:assign		result
	str r4,[fp]                                       	@IRInst:assign		result
	b .L8                                             
.L8:
	ldr r0,[fp]                                       
	add fp,fp,#28                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_2_ints:
        .long   ints
.global_2_intt:
        .long   intt
.global_2_chas:
        .long   chas
.global_2_chat:
        .long   chat
.global_2_i:
        .long   i
.global_2_ii:
        .long   ii
.global_2_c:
        .long   c
.global_2_get:
        .long   get
.global_2_get2:
        .long   get2
.global getstr
.type getstr, %function
getstr:
.L12:
	push {r10,fp,lr}                                  
	sub sp,sp,#44                                     
	add fp,sp,#0                                      
	str r0,[fp,#4]                                    	@IRInst:assign	get	r0
	bl getch                                          
	str r0,[fp,#12]                                   	@IRInst:assign	%t27	r0
	ldr r4,[fp,#12]                                   	@IRInst:assign	x	%t27
	str r4,[fp,#8]                                    	@IRInst:assign	x	%t27
	mov r4,#0                                         	@IRInst:assign	length	0
	str r4,[fp,#16]                                   	@IRInst:assign	length	0
.L14:
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t29	x	13
	mov r5,#13                                        	@IRInst:beq	%t29	x	13
	cmp r4,r5                                         	@IRInst:beq	%t29	x	13
	moveq r6,#1                                       	@IRInst:beq	%t29	x	13
	movne r6,#0                                       	@IRInst:beq	%t29	x	13
	str r6,[fp,#20]                                   	@IRInst:beq	%t29	x	13
	beq .L16                                          
	b .L17                                            
.L17:
	ldr r4,[fp,#8]                                    	@IRInst:beq	%t30	x	10
	mov r5,#10                                        	@IRInst:beq	%t30	x	10
	cmp r4,r5                                         	@IRInst:beq	%t30	x	10
	moveq r6,#1                                       	@IRInst:beq	%t30	x	10
	movne r6,#0                                       	@IRInst:beq	%t30	x	10
	str r6,[fp,#24]                                   	@IRInst:beq	%t30	x	10
	beq .L16                                          
	b .L15                                            
.L15:
	ldr r4,[fp,#16]                                   	@IRInst:mul	%t31	length	4
	mov r5,#4                                         	@IRInst:mul	%t31	length	4
	mul r6,r4,r5                                      	@IRInst:mul	%t31	length	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t31	length	4
	ldr r4,[fp,#4]                                    	@IRInst:add	%t32	get	%t31
	ldr r5,[fp,#28]                                   	@IRInst:add	%t32	get	%t31
	add r6,r4,r5                                      	@IRInst:add	%t32	get	%t31
	str r6,[fp,#32]                                   	@IRInst:add	%t32	get	%t31
	ldr r5,[fp,#32]                                   	@IRInst:assign	%t32	x
	ldr r4,[fp,#8]                                    	@IRInst:assign	%t32	x
	str r4,[r5]                                       	@IRInst:assign	%t32	x
	ldr r4,[fp,#16]                                   	@IRInst:add	%t33	length	1
	mov r5,#1                                         	@IRInst:add	%t33	length	1
	add r6,r4,r5                                      	@IRInst:add	%t33	length	1
	str r6,[fp,#36]                                   	@IRInst:add	%t33	length	1
	ldr r4,[fp,#36]                                   	@IRInst:assign	length	%t33
	str r4,[fp,#16]                                   	@IRInst:assign	length	%t33
	bl getch                                          
	str r0,[fp,#40]                                   	@IRInst:assign	%t34	r0
	ldr r4,[fp,#40]                                   	@IRInst:assign	x	%t34
	str r4,[fp,#8]                                    	@IRInst:assign	x	%t34
	b .L14                                            
.L16:
	ldr r4,[fp,#16]                                   	@IRInst:assign		length
	str r4,[fp]                                       	@IRInst:assign		length
	b .L13                                            
.L13:
	ldr r0,[fp]                                       
	add fp,fp,#44                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_3_ints:
        .long   ints
.global_3_intt:
        .long   intt
.global_3_chas:
        .long   chas
.global_3_chat:
        .long   chat
.global_3_i:
        .long   i
.global_3_ii:
        .long   ii
.global_3_c:
        .long   c
.global_3_get:
        .long   get
.global_3_get2:
        .long   get2
.global intpush
.type intpush, %function
intpush:
.L18:
	push {r10,fp}                                     
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	ldr r4,.global_3_intt                             	@IRInst:add	%t38	intt	1
	ldr r4,[r4]                                       	@IRInst:add	%t38	intt	1
	mov r5,#1                                         	@IRInst:add	%t38	intt	1
	add r6,r4,r5                                      	@IRInst:add	%t38	intt	1
	str r6,[fp,#4]                                    	@IRInst:add	%t38	intt	1
	ldr r4,[fp,#4]                                    	@IRInst:assign	intt	%t38
	ldr r9,.global_3_intt                             	@IRInst:assign	intt	%t38
	str r4,[r9]                                       	@IRInst:assign	intt	%t38
	ldr r4,.global_3_intt                             	@IRInst:mul	%t39	intt	4
	ldr r4,[r4]                                       	@IRInst:mul	%t39	intt	4
	mov r5,#4                                         	@IRInst:mul	%t39	intt	4
	mul r6,r4,r5                                      	@IRInst:mul	%t39	intt	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t39	intt	4
	ldr r4,.global_3_ints                             	@IRInst:add	%t40	ints	%t39
	ldr r5,[fp,#8]                                    	@IRInst:add	%t40	ints	%t39
	add r6,r4,r5                                      	@IRInst:add	%t40	ints	%t39
	str r6,[fp,#12]                                   	@IRInst:add	%t40	ints	%t39
	ldr r5,[fp,#12]                                   	@IRInst:assign	%t40	x
	ldr r4,[fp]                                       	@IRInst:assign	%t40	x
	str r4,[r5]                                       	@IRInst:assign	%t40	x
.L19:
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_4_ints:
        .long   ints
.global_4_intt:
        .long   intt
.global_4_chas:
        .long   chas
.global_4_chat:
        .long   chat
.global_4_i:
        .long   i
.global_4_ii:
        .long   ii
.global_4_c:
        .long   c
.global_4_get:
        .long   get
.global_4_get2:
        .long   get2
.global chapush
.type chapush, %function
chapush:
.L20:
	push {r10,fp}                                     
	sub sp,sp,#16                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	ldr r4,.global_4_chat                             	@IRInst:add	%t44	chat	1
	ldr r4,[r4]                                       	@IRInst:add	%t44	chat	1
	mov r5,#1                                         	@IRInst:add	%t44	chat	1
	add r6,r4,r5                                      	@IRInst:add	%t44	chat	1
	str r6,[fp,#4]                                    	@IRInst:add	%t44	chat	1
	ldr r4,[fp,#4]                                    	@IRInst:assign	chat	%t44
	ldr r9,.global_4_chat                             	@IRInst:assign	chat	%t44
	str r4,[r9]                                       	@IRInst:assign	chat	%t44
	ldr r4,.global_4_chat                             	@IRInst:mul	%t45	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t45	chat	4
	mov r5,#4                                         	@IRInst:mul	%t45	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t45	chat	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t45	chat	4
	ldr r4,.global_4_chas                             	@IRInst:add	%t46	chas	%t45
	ldr r5,[fp,#8]                                    	@IRInst:add	%t46	chas	%t45
	add r6,r4,r5                                      	@IRInst:add	%t46	chas	%t45
	str r6,[fp,#12]                                   	@IRInst:add	%t46	chas	%t45
	ldr r5,[fp,#12]                                   	@IRInst:assign	%t46	x
	ldr r4,[fp]                                       	@IRInst:assign	%t46	x
	str r4,[r5]                                       	@IRInst:assign	%t46	x
.L21:
	add fp,fp,#16                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_5_ints:
        .long   ints
.global_5_intt:
        .long   intt
.global_5_chas:
        .long   chas
.global_5_chat:
        .long   chat
.global_5_i:
        .long   i
.global_5_ii:
        .long   ii
.global_5_c:
        .long   c
.global_5_get:
        .long   get
.global_5_get2:
        .long   get2
.global intpop
.type intpop, %function
intpop:
.L22:
	push {r10,fp}                                     
	sub sp,sp,#24                                     
	add fp,sp,#0                                      
	ldr r4,.global_5_intt                             	@IRInst:sub	%t48	intt	1
	ldr r4,[r4]                                       	@IRInst:sub	%t48	intt	1
	mov r5,#1                                         	@IRInst:sub	%t48	intt	1
	sub r6,r4,r5                                      	@IRInst:sub	%t48	intt	1
	str r6,[fp,#4]                                    	@IRInst:sub	%t48	intt	1
	ldr r4,[fp,#4]                                    	@IRInst:assign	intt	%t48
	ldr r9,.global_5_intt                             	@IRInst:assign	intt	%t48
	str r4,[r9]                                       	@IRInst:assign	intt	%t48
	ldr r4,.global_5_intt                             	@IRInst:add	%t50	intt	1
	ldr r4,[r4]                                       	@IRInst:add	%t50	intt	1
	mov r5,#1                                         	@IRInst:add	%t50	intt	1
	add r6,r4,r5                                      	@IRInst:add	%t50	intt	1
	str r6,[fp,#12]                                   	@IRInst:add	%t50	intt	1
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t49	%t50	4
	mov r5,#4                                         	@IRInst:mul	%t49	%t50	4
	mul r6,r4,r5                                      	@IRInst:mul	%t49	%t50	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t49	%t50	4
	ldr r4,.global_5_ints                             	@IRInst:add	%t51	ints	%t49
	ldr r5,[fp,#8]                                    	@IRInst:add	%t51	ints	%t49
	add r6,r4,r5                                      	@IRInst:add	%t51	ints	%t49
	str r6,[fp,#16]                                   	@IRInst:add	%t51	ints	%t49
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t52	%t51
	ldr r4,[r4]                                       	@IRInst:assign	%t52	%t51
	str r4,[fp,#20]                                   	@IRInst:assign	%t52	%t51
	ldr r4,[fp,#20]                                   	@IRInst:assign		%t52
	str r4,[fp]                                       	@IRInst:assign		%t52
	b .L23                                            
.L23:
	ldr r0,[fp]                                       
	add fp,fp,#24                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_6_ints:
        .long   ints
.global_6_intt:
        .long   intt
.global_6_chas:
        .long   chas
.global_6_chat:
        .long   chat
.global_6_i:
        .long   i
.global_6_ii:
        .long   ii
.global_6_c:
        .long   c
.global_6_get:
        .long   get
.global_6_get2:
        .long   get2
.global chapop
.type chapop, %function
chapop:
.L24:
	push {r10,fp}                                     
	sub sp,sp,#24                                     
	add fp,sp,#0                                      
	ldr r4,.global_6_chat                             	@IRInst:sub	%t54	chat	1
	ldr r4,[r4]                                       	@IRInst:sub	%t54	chat	1
	mov r5,#1                                         	@IRInst:sub	%t54	chat	1
	sub r6,r4,r5                                      	@IRInst:sub	%t54	chat	1
	str r6,[fp,#4]                                    	@IRInst:sub	%t54	chat	1
	ldr r4,[fp,#4]                                    	@IRInst:assign	chat	%t54
	ldr r9,.global_6_chat                             	@IRInst:assign	chat	%t54
	str r4,[r9]                                       	@IRInst:assign	chat	%t54
	ldr r4,.global_6_chat                             	@IRInst:add	%t56	chat	1
	ldr r4,[r4]                                       	@IRInst:add	%t56	chat	1
	mov r5,#1                                         	@IRInst:add	%t56	chat	1
	add r6,r4,r5                                      	@IRInst:add	%t56	chat	1
	str r6,[fp,#12]                                   	@IRInst:add	%t56	chat	1
	ldr r4,[fp,#12]                                   	@IRInst:mul	%t55	%t56	4
	mov r5,#4                                         	@IRInst:mul	%t55	%t56	4
	mul r6,r4,r5                                      	@IRInst:mul	%t55	%t56	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t55	%t56	4
	ldr r4,.global_6_chas                             	@IRInst:add	%t57	chas	%t55
	ldr r5,[fp,#8]                                    	@IRInst:add	%t57	chas	%t55
	add r6,r4,r5                                      	@IRInst:add	%t57	chas	%t55
	str r6,[fp,#16]                                   	@IRInst:add	%t57	chas	%t55
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t58	%t57
	ldr r4,[r4]                                       	@IRInst:assign	%t58	%t57
	str r4,[fp,#20]                                   	@IRInst:assign	%t58	%t57
	ldr r4,[fp,#20]                                   	@IRInst:assign		%t58
	str r4,[fp]                                       	@IRInst:assign		%t58
	b .L25                                            
.L25:
	ldr r0,[fp]                                       
	add fp,fp,#24                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_7_ints:
        .long   ints
.global_7_intt:
        .long   intt
.global_7_chas:
        .long   chas
.global_7_chat:
        .long   chat
.global_7_i:
        .long   i
.global_7_ii:
        .long   ii
.global_7_c:
        .long   c
.global_7_get:
        .long   get
.global_7_get2:
        .long   get2
.global intadd
.type intadd, %function
intadd:
.L26:
	push {r10,fp}                                     
	sub sp,sp,#52                                     
	add fp,sp,#0                                      
	str r0,[fp]                                       	@IRInst:assign	x	r0
	ldr r4,.global_7_intt                             	@IRInst:mul	%t64	intt	4
	ldr r4,[r4]                                       	@IRInst:mul	%t64	intt	4
	mov r5,#4                                         	@IRInst:mul	%t64	intt	4
	mul r6,r4,r5                                      	@IRInst:mul	%t64	intt	4
	str r6,[fp,#12]                                   	@IRInst:mul	%t64	intt	4
	ldr r4,.global_7_ints                             	@IRInst:add	%t65	ints	%t64
	ldr r5,[fp,#12]                                   	@IRInst:add	%t65	ints	%t64
	add r6,r4,r5                                      	@IRInst:add	%t65	ints	%t64
	str r6,[fp,#16]                                   	@IRInst:add	%t65	ints	%t64
	ldr r4,[fp,#16]                                   	@IRInst:assign	%t66	%t65
	ldr r4,[r4]                                       	@IRInst:assign	%t66	%t65
	str r4,[fp,#20]                                   	@IRInst:assign	%t66	%t65
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t67	%t66	10
	mov r5,#10                                        	@IRInst:mul	%t67	%t66	10
	mul r6,r4,r5                                      	@IRInst:mul	%t67	%t66	10
	str r6,[fp,#24]                                   	@IRInst:mul	%t67	%t66	10
	ldr r4,.global_7_intt                             	@IRInst:mul	%t62	intt	4
	ldr r4,[r4]                                       	@IRInst:mul	%t62	intt	4
	mov r5,#4                                         	@IRInst:mul	%t62	intt	4
	mul r6,r4,r5                                      	@IRInst:mul	%t62	intt	4
	str r6,[fp,#4]                                    	@IRInst:mul	%t62	intt	4
	ldr r4,.global_7_ints                             	@IRInst:add	%t63	ints	%t62
	ldr r5,[fp,#4]                                    	@IRInst:add	%t63	ints	%t62
	add r6,r4,r5                                      	@IRInst:add	%t63	ints	%t62
	str r6,[fp,#8]                                    	@IRInst:add	%t63	ints	%t62
	ldr r5,[fp,#8]                                    	@IRInst:assign	%t63	%t67
	ldr r4,[fp,#24]                                   	@IRInst:assign	%t63	%t67
	str r4,[r5]                                       	@IRInst:assign	%t63	%t67
	ldr r4,.global_7_intt                             	@IRInst:mul	%t70	intt	4
	ldr r4,[r4]                                       	@IRInst:mul	%t70	intt	4
	mov r5,#4                                         	@IRInst:mul	%t70	intt	4
	mul r6,r4,r5                                      	@IRInst:mul	%t70	intt	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t70	intt	4
	ldr r4,.global_7_ints                             	@IRInst:add	%t71	ints	%t70
	ldr r5,[fp,#36]                                   	@IRInst:add	%t71	ints	%t70
	add r6,r4,r5                                      	@IRInst:add	%t71	ints	%t70
	str r6,[fp,#40]                                   	@IRInst:add	%t71	ints	%t70
	ldr r4,[fp,#40]                                   	@IRInst:assign	%t72	%t71
	ldr r4,[r4]                                       	@IRInst:assign	%t72	%t71
	str r4,[fp,#44]                                   	@IRInst:assign	%t72	%t71
	ldr r4,[fp,#44]                                   	@IRInst:add	%t73	%t72	x
	ldr r5,[fp]                                       	@IRInst:add	%t73	%t72	x
	add r6,r4,r5                                      	@IRInst:add	%t73	%t72	x
	str r6,[fp,#48]                                   	@IRInst:add	%t73	%t72	x
	ldr r4,.global_7_intt                             	@IRInst:mul	%t68	intt	4
	ldr r4,[r4]                                       	@IRInst:mul	%t68	intt	4
	mov r5,#4                                         	@IRInst:mul	%t68	intt	4
	mul r6,r4,r5                                      	@IRInst:mul	%t68	intt	4
	str r6,[fp,#28]                                   	@IRInst:mul	%t68	intt	4
	ldr r4,.global_7_ints                             	@IRInst:add	%t69	ints	%t68
	ldr r5,[fp,#28]                                   	@IRInst:add	%t69	ints	%t68
	add r6,r4,r5                                      	@IRInst:add	%t69	ints	%t68
	str r6,[fp,#32]                                   	@IRInst:add	%t69	ints	%t68
	ldr r5,[fp,#32]                                   	@IRInst:assign	%t69	%t73
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t69	%t73
	str r4,[r5]                                       	@IRInst:assign	%t69	%t73
.L27:
	add fp,fp,#52                                     
	mov sp,fp                                         
	pop {r10,fp}                                      
	bx lr                                             
.global_8_ints:
        .long   ints
.global_8_intt:
        .long   intt
.global_8_chas:
        .long   chas
.global_8_chat:
        .long   chat
.global_8_i:
        .long   i
.global_8_ii:
        .long   ii
.global_8_c:
        .long   c
.global_8_get:
        .long   get
.global_8_get2:
        .long   get2
.global find
.type find, %function
find:
.L28:
	push {r10,fp,lr}                                  
	sub sp,sp,#36                                     
	add fp,sp,#0                                      
	bl chapop                                         
	str r0,[fp,#4]                                    	@IRInst:assign	%t75	r0
	ldr r4,[fp,#4]                                    	@IRInst:assign	c	%t75
	ldr r9,.global_8_c                                	@IRInst:assign	c	%t75
	str r4,[r9]                                       	@IRInst:assign	c	%t75
	ldr r4,.global_8_ii                               	@IRInst:mul	%t76	ii	4
	ldr r4,[r4]                                       	@IRInst:mul	%t76	ii	4
	mov r5,#4                                         	@IRInst:mul	%t76	ii	4
	mul r6,r4,r5                                      	@IRInst:mul	%t76	ii	4
	str r6,[fp,#8]                                    	@IRInst:mul	%t76	ii	4
	ldr r4,.global_8_get2                             	@IRInst:add	%t77	get2	%t76
	ldr r5,[fp,#8]                                    	@IRInst:add	%t77	get2	%t76
	add r6,r4,r5                                      	@IRInst:add	%t77	get2	%t76
	str r6,[fp,#12]                                   	@IRInst:add	%t77	get2	%t76
	ldr r5,[fp,#12]                                   	@IRInst:assign	%t77	32
	mov r4,#32                                        	@IRInst:assign	%t77	32
	str r4,[r5]                                       	@IRInst:assign	%t77	32
	ldr r4,.global_8_ii                               	@IRInst:add	%t79	ii	1
	ldr r4,[r4]                                       	@IRInst:add	%t79	ii	1
	mov r5,#1                                         	@IRInst:add	%t79	ii	1
	add r6,r4,r5                                      	@IRInst:add	%t79	ii	1
	str r6,[fp,#20]                                   	@IRInst:add	%t79	ii	1
	ldr r4,[fp,#20]                                   	@IRInst:mul	%t78	%t79	4
	mov r5,#4                                         	@IRInst:mul	%t78	%t79	4
	mul r6,r4,r5                                      	@IRInst:mul	%t78	%t79	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t78	%t79	4
	ldr r4,.global_8_get2                             	@IRInst:add	%t80	get2	%t78
	ldr r5,[fp,#16]                                   	@IRInst:add	%t80	get2	%t78
	add r6,r4,r5                                      	@IRInst:add	%t80	get2	%t78
	str r6,[fp,#24]                                   	@IRInst:add	%t80	get2	%t78
	ldr r5,[fp,#24]                                   	@IRInst:assign	%t80	c
	ldr r4,.global_8_c                                	@IRInst:assign	%t80	c
	ldr r4,[r4]                                       	@IRInst:assign	%t80	c
	str r4,[r5]                                       	@IRInst:assign	%t80	c
	ldr r4,.global_8_ii                               	@IRInst:add	%t81	ii	2
	ldr r4,[r4]                                       	@IRInst:add	%t81	ii	2
	mov r5,#2                                         	@IRInst:add	%t81	ii	2
	add r6,r4,r5                                      	@IRInst:add	%t81	ii	2
	str r6,[fp,#28]                                   	@IRInst:add	%t81	ii	2
	ldr r4,[fp,#28]                                   	@IRInst:assign	ii	%t81
	ldr r9,.global_8_ii                               	@IRInst:assign	ii	%t81
	str r4,[r9]                                       	@IRInst:assign	ii	%t81
	ldr r4,.global_8_chat                             	@IRInst:beq	%t82	chat	0
	ldr r4,[r4]                                       	@IRInst:beq	%t82	chat	0
	mov r5,#0                                         	@IRInst:beq	%t82	chat	0
	cmp r4,r5                                         	@IRInst:beq	%t82	chat	0
	moveq r6,#1                                       	@IRInst:beq	%t82	chat	0
	movne r6,#0                                       	@IRInst:beq	%t82	chat	0
	str r6,[fp,#32]                                   	@IRInst:beq	%t82	chat	0
	beq .L30                                          
	b .L31                                            
.L30:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L29                                            
.L31:
.L32:
	mov r4,#1                                         	@IRInst:assign		1
	str r4,[fp]                                       	@IRInst:assign		1
	b .L29                                            
.L29:
	ldr r0,[fp]                                       
	add fp,fp,#36                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
.global_9_ints:
        .long   ints
.global_9_intt:
        .long   intt
.global_9_chas:
        .long   chas
.global_9_chat:
        .long   chat
.global_9_i:
        .long   i
.global_9_ii:
        .long   ii
.global_9_c:
        .long   c
.global_9_get:
        .long   get
.global_9_get2:
        .long   get2
.global main
.type main, %function
main:
.L33:
	push {r10,fp,lr}                                  
	ldr r10,=1068                                     
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	mov r4,#0                                         	@IRInst:assign	intt	0
	ldr r9,.global_9_intt                             	@IRInst:assign	intt	0
	str r4,[r9]                                       	@IRInst:assign	intt	0
	mov r4,#0                                         	@IRInst:assign	chat	0
	ldr r9,.global_9_chat                             	@IRInst:assign	chat	0
	str r4,[r9]                                       	@IRInst:assign	chat	0
	ldr r0,.global_9_get                              	@IRInst:assign	r0	get
	bl getstr                                         
	str r0,[fp,#8]                                    	@IRInst:assign	%t85	r0
	ldr r4,[fp,#8]                                    	@IRInst:assign	lengets	%t85
	str r4,[fp,#4]                                    	@IRInst:assign	lengets	%t85
.L35:
	ldr r4,.global_9_i                                	@IRInst:blt	%t86	i	lengets
	ldr r4,[r4]                                       	@IRInst:blt	%t86	i	lengets
	ldr r5,[fp,#4]                                    	@IRInst:blt	%t86	i	lengets
	cmp r4,r5                                         	@IRInst:blt	%t86	i	lengets
	movlt r6,#1                                       	@IRInst:blt	%t86	i	lengets
	movge r6,#0                                       	@IRInst:blt	%t86	i	lengets
	str r6,[fp,#12]                                   	@IRInst:blt	%t86	i	lengets
	blt .L36                                          
	b .L37                                            
.L36:
	ldr r4,.global_9_i                                	@IRInst:mul	%t87	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t87	i	4
	mov r5,#4                                         	@IRInst:mul	%t87	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t87	i	4
	str r6,[fp,#16]                                   	@IRInst:mul	%t87	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t88	get	%t87
	ldr r5,[fp,#16]                                   	@IRInst:add	%t88	get	%t87
	add r6,r4,r5                                      	@IRInst:add	%t88	get	%t87
	str r6,[fp,#20]                                   	@IRInst:add	%t88	get	%t87
	ldr r4,[fp,#20]                                   	@IRInst:assign	%t89	%t88
	ldr r4,[r4]                                       	@IRInst:assign	%t89	%t88
	str r4,[fp,#24]                                   	@IRInst:assign	%t89	%t88
	ldr r0,[fp,#24]                                   	@IRInst:assign	r0	%t89
	bl isdigit                                        
	str r0,[fp,#28]                                   	@IRInst:assign	%t90	r0
	ldr r4,[fp,#28]                                   	@IRInst:beq	%t91	%t90	1
	mov r5,#1                                         	@IRInst:beq	%t91	%t90	1
	cmp r4,r5                                         	@IRInst:beq	%t91	%t90	1
	moveq r6,#1                                       	@IRInst:beq	%t91	%t90	1
	movne r6,#0                                       	@IRInst:beq	%t91	%t90	1
	str r6,[fp,#32]                                   	@IRInst:beq	%t91	%t90	1
	beq .L38                                          
	b .L39                                            
.L38:
	ldr r4,.global_9_i                                	@IRInst:mul	%t94	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t94	i	4
	mov r5,#4                                         	@IRInst:mul	%t94	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t94	i	4
	str r6,[fp,#44]                                   	@IRInst:mul	%t94	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t95	get	%t94
	ldr r5,[fp,#44]                                   	@IRInst:add	%t95	get	%t94
	add r6,r4,r5                                      	@IRInst:add	%t95	get	%t94
	str r6,[fp,#48]                                   	@IRInst:add	%t95	get	%t94
	ldr r4,[fp,#48]                                   	@IRInst:assign	%t96	%t95
	ldr r4,[r4]                                       	@IRInst:assign	%t96	%t95
	str r4,[fp,#52]                                   	@IRInst:assign	%t96	%t95
	ldr r4,.global_9_ii                               	@IRInst:mul	%t92	ii	4
	ldr r4,[r4]                                       	@IRInst:mul	%t92	ii	4
	mov r5,#4                                         	@IRInst:mul	%t92	ii	4
	mul r6,r4,r5                                      	@IRInst:mul	%t92	ii	4
	str r6,[fp,#36]                                   	@IRInst:mul	%t92	ii	4
	ldr r4,.global_9_get2                             	@IRInst:add	%t93	get2	%t92
	ldr r5,[fp,#36]                                   	@IRInst:add	%t93	get2	%t92
	add r6,r4,r5                                      	@IRInst:add	%t93	get2	%t92
	str r6,[fp,#40]                                   	@IRInst:add	%t93	get2	%t92
	ldr r5,[fp,#40]                                   	@IRInst:assign	%t93	%t96
	ldr r4,[fp,#52]                                   	@IRInst:assign	%t93	%t96
	str r4,[r5]                                       	@IRInst:assign	%t93	%t96
	ldr r4,.global_9_ii                               	@IRInst:add	%t97	ii	1
	ldr r4,[r4]                                       	@IRInst:add	%t97	ii	1
	mov r5,#1                                         	@IRInst:add	%t97	ii	1
	add r6,r4,r5                                      	@IRInst:add	%t97	ii	1
	str r6,[fp,#56]                                   	@IRInst:add	%t97	ii	1
	ldr r4,[fp,#56]                                   	@IRInst:assign	ii	%t97
	ldr r9,.global_9_ii                               	@IRInst:assign	ii	%t97
	str r4,[r9]                                       	@IRInst:assign	ii	%t97
	b .L40                                            
.L39:
	ldr r4,.global_9_i                                	@IRInst:mul	%t98	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t98	i	4
	mov r5,#4                                         	@IRInst:mul	%t98	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t98	i	4
	str r6,[fp,#60]                                   	@IRInst:mul	%t98	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t99	get	%t98
	ldr r5,[fp,#60]                                   	@IRInst:add	%t99	get	%t98
	add r6,r4,r5                                      	@IRInst:add	%t99	get	%t98
	str r6,[fp,#64]                                   	@IRInst:add	%t99	get	%t98
	ldr r4,[fp,#64]                                   	@IRInst:assign	%t100	%t99
	ldr r4,[r4]                                       	@IRInst:assign	%t100	%t99
	str r4,[fp,#68]                                   	@IRInst:assign	%t100	%t99
	ldr r4,[fp,#68]                                   	@IRInst:beq	%t101	%t100	40
	mov r5,#40                                        	@IRInst:beq	%t101	%t100	40
	cmp r4,r5                                         	@IRInst:beq	%t101	%t100	40
	moveq r6,#1                                       	@IRInst:beq	%t101	%t100	40
	movne r6,#0                                       	@IRInst:beq	%t101	%t100	40
	str r6,[fp,#72]                                   	@IRInst:beq	%t101	%t100	40
	beq .L41                                          
	b .L42                                            
.L41:
	mov r0,#40                                        	@IRInst:assign	r0	40
	bl chapush                                        
.L42:
.L43:
	ldr r4,.global_9_i                                	@IRInst:mul	%t102	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t102	i	4
	mov r5,#4                                         	@IRInst:mul	%t102	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t102	i	4
	str r6,[fp,#76]                                   	@IRInst:mul	%t102	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t103	get	%t102
	ldr r5,[fp,#76]                                   	@IRInst:add	%t103	get	%t102
	add r6,r4,r5                                      	@IRInst:add	%t103	get	%t102
	str r6,[fp,#80]                                   	@IRInst:add	%t103	get	%t102
	ldr r4,[fp,#80]                                   	@IRInst:assign	%t104	%t103
	ldr r4,[r4]                                       	@IRInst:assign	%t104	%t103
	str r4,[fp,#84]                                   	@IRInst:assign	%t104	%t103
	ldr r4,[fp,#84]                                   	@IRInst:beq	%t105	%t104	94
	mov r5,#94                                        	@IRInst:beq	%t105	%t104	94
	cmp r4,r5                                         	@IRInst:beq	%t105	%t104	94
	moveq r6,#1                                       	@IRInst:beq	%t105	%t104	94
	movne r6,#0                                       	@IRInst:beq	%t105	%t104	94
	str r6,[fp,#88]                                   	@IRInst:beq	%t105	%t104	94
	beq .L44                                          
	b .L45                                            
.L44:
	mov r0,#94                                        	@IRInst:assign	r0	94
	bl chapush                                        
.L45:
.L46:
	ldr r4,.global_9_i                                	@IRInst:mul	%t106	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t106	i	4
	mov r5,#4                                         	@IRInst:mul	%t106	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t106	i	4
	str r6,[fp,#92]                                   	@IRInst:mul	%t106	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t107	get	%t106
	ldr r5,[fp,#92]                                   	@IRInst:add	%t107	get	%t106
	add r6,r4,r5                                      	@IRInst:add	%t107	get	%t106
	str r6,[fp,#96]                                   	@IRInst:add	%t107	get	%t106
	ldr r4,[fp,#96]                                   	@IRInst:assign	%t108	%t107
	ldr r4,[r4]                                       	@IRInst:assign	%t108	%t107
	str r4,[fp,#100]                                  	@IRInst:assign	%t108	%t107
	ldr r4,[fp,#100]                                  	@IRInst:beq	%t109	%t108	41
	mov r5,#41                                        	@IRInst:beq	%t109	%t108	41
	cmp r4,r5                                         	@IRInst:beq	%t109	%t108	41
	moveq r6,#1                                       	@IRInst:beq	%t109	%t108	41
	movne r6,#0                                       	@IRInst:beq	%t109	%t108	41
	str r6,[fp,#104]                                  	@IRInst:beq	%t109	%t108	41
	beq .L47                                          
	b .L48                                            
.L47:
	bl chapop                                         
	str r0,[fp,#108]                                  	@IRInst:assign	%t110	r0
	ldr r4,[fp,#108]                                  	@IRInst:assign	c	%t110
	ldr r9,.global_9_c                                	@IRInst:assign	c	%t110
	str r4,[r9]                                       	@IRInst:assign	c	%t110
.L50:
	ldr r4,.global_9_c                                	@IRInst:beq	%t111	c	40
	ldr r4,[r4]                                       	@IRInst:beq	%t111	c	40
	mov r5,#40                                        	@IRInst:beq	%t111	c	40
	cmp r4,r5                                         	@IRInst:beq	%t111	c	40
	moveq r6,#1                                       	@IRInst:beq	%t111	c	40
	movne r6,#0                                       	@IRInst:beq	%t111	c	40
	str r6,[fp,#112]                                  	@IRInst:beq	%t111	c	40
	beq .L52                                          
	b .L51                                            
.L51:
	ldr r4,.global_9_ii                               	@IRInst:mul	%t112	ii	4
	ldr r4,[r4]                                       	@IRInst:mul	%t112	ii	4
	mov r5,#4                                         	@IRInst:mul	%t112	ii	4
	mul r6,r4,r5                                      	@IRInst:mul	%t112	ii	4
	str r6,[fp,#116]                                  	@IRInst:mul	%t112	ii	4
	ldr r4,.global_9_get2                             	@IRInst:add	%t113	get2	%t112
	ldr r5,[fp,#116]                                  	@IRInst:add	%t113	get2	%t112
	add r6,r4,r5                                      	@IRInst:add	%t113	get2	%t112
	str r6,[fp,#120]                                  	@IRInst:add	%t113	get2	%t112
	ldr r5,[fp,#120]                                  	@IRInst:assign	%t113	32
	mov r4,#32                                        	@IRInst:assign	%t113	32
	str r4,[r5]                                       	@IRInst:assign	%t113	32
	ldr r4,.global_9_ii                               	@IRInst:add	%t115	ii	1
	ldr r4,[r4]                                       	@IRInst:add	%t115	ii	1
	mov r5,#1                                         	@IRInst:add	%t115	ii	1
	add r6,r4,r5                                      	@IRInst:add	%t115	ii	1
	str r6,[fp,#128]                                  	@IRInst:add	%t115	ii	1
	ldr r4,[fp,#128]                                  	@IRInst:mul	%t114	%t115	4
	mov r5,#4                                         	@IRInst:mul	%t114	%t115	4
	mul r6,r4,r5                                      	@IRInst:mul	%t114	%t115	4
	str r6,[fp,#124]                                  	@IRInst:mul	%t114	%t115	4
	ldr r4,.global_9_get2                             	@IRInst:add	%t116	get2	%t114
	ldr r5,[fp,#124]                                  	@IRInst:add	%t116	get2	%t114
	add r6,r4,r5                                      	@IRInst:add	%t116	get2	%t114
	str r6,[fp,#132]                                  	@IRInst:add	%t116	get2	%t114
	ldr r5,[fp,#132]                                  	@IRInst:assign	%t116	c
	ldr r4,.global_9_c                                	@IRInst:assign	%t116	c
	ldr r4,[r4]                                       	@IRInst:assign	%t116	c
	str r4,[r5]                                       	@IRInst:assign	%t116	c
	ldr r4,.global_9_ii                               	@IRInst:add	%t117	ii	2
	ldr r4,[r4]                                       	@IRInst:add	%t117	ii	2
	mov r5,#2                                         	@IRInst:add	%t117	ii	2
	add r6,r4,r5                                      	@IRInst:add	%t117	ii	2
	str r6,[fp,#136]                                  	@IRInst:add	%t117	ii	2
	ldr r4,[fp,#136]                                  	@IRInst:assign	ii	%t117
	ldr r9,.global_9_ii                               	@IRInst:assign	ii	%t117
	str r4,[r9]                                       	@IRInst:assign	ii	%t117
	bl chapop                                         
	str r0,[fp,#140]                                  	@IRInst:assign	%t118	r0
	ldr r4,[fp,#140]                                  	@IRInst:assign	c	%t118
	ldr r9,.global_9_c                                	@IRInst:assign	c	%t118
	str r4,[r9]                                       	@IRInst:assign	c	%t118
	b .L50                                            
.L52:
.L48:
.L49:
	ldr r4,.global_9_i                                	@IRInst:mul	%t119	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t119	i	4
	mov r5,#4                                         	@IRInst:mul	%t119	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t119	i	4
	str r6,[fp,#144]                                  	@IRInst:mul	%t119	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t120	get	%t119
	ldr r5,[fp,#144]                                  	@IRInst:add	%t120	get	%t119
	add r6,r4,r5                                      	@IRInst:add	%t120	get	%t119
	str r6,[fp,#148]                                  	@IRInst:add	%t120	get	%t119
	ldr r4,[fp,#148]                                  	@IRInst:assign	%t121	%t120
	ldr r4,[r4]                                       	@IRInst:assign	%t121	%t120
	str r4,[fp,#152]                                  	@IRInst:assign	%t121	%t120
	ldr r4,[fp,#152]                                  	@IRInst:beq	%t122	%t121	43
	mov r5,#43                                        	@IRInst:beq	%t122	%t121	43
	cmp r4,r5                                         	@IRInst:beq	%t122	%t121	43
	moveq r6,#1                                       	@IRInst:beq	%t122	%t121	43
	movne r6,#0                                       	@IRInst:beq	%t122	%t121	43
	str r6,[fp,#156]                                  	@IRInst:beq	%t122	%t121	43
	beq .L53                                          
	b .L54                                            
.L53:
.L56:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t123	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t123	chat	4
	mov r5,#4                                         	@IRInst:mul	%t123	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t123	chat	4
	str r6,[fp,#160]                                  	@IRInst:mul	%t123	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t124	chas	%t123
	ldr r5,[fp,#160]                                  	@IRInst:add	%t124	chas	%t123
	add r6,r4,r5                                      	@IRInst:add	%t124	chas	%t123
	str r6,[fp,#164]                                  	@IRInst:add	%t124	chas	%t123
	ldr r4,[fp,#164]                                  	@IRInst:assign	%t125	%t124
	ldr r4,[r4]                                       	@IRInst:assign	%t125	%t124
	str r4,[fp,#168]                                  	@IRInst:assign	%t125	%t124
	ldr r4,[fp,#168]                                  	@IRInst:beq	%t126	%t125	43
	mov r5,#43                                        	@IRInst:beq	%t126	%t125	43
	cmp r4,r5                                         	@IRInst:beq	%t126	%t125	43
	moveq r6,#1                                       	@IRInst:beq	%t126	%t125	43
	movne r6,#0                                       	@IRInst:beq	%t126	%t125	43
	str r6,[fp,#172]                                  	@IRInst:beq	%t126	%t125	43
	beq .L57                                          
	b .L63                                            
.L63:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t127	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t127	chat	4
	mov r5,#4                                         	@IRInst:mul	%t127	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t127	chat	4
	str r6,[fp,#176]                                  	@IRInst:mul	%t127	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t128	chas	%t127
	ldr r5,[fp,#176]                                  	@IRInst:add	%t128	chas	%t127
	add r6,r4,r5                                      	@IRInst:add	%t128	chas	%t127
	str r6,[fp,#180]                                  	@IRInst:add	%t128	chas	%t127
	ldr r4,[fp,#180]                                  	@IRInst:assign	%t129	%t128
	ldr r4,[r4]                                       	@IRInst:assign	%t129	%t128
	str r4,[fp,#184]                                  	@IRInst:assign	%t129	%t128
	ldr r4,[fp,#184]                                  	@IRInst:beq	%t130	%t129	45
	mov r5,#45                                        	@IRInst:beq	%t130	%t129	45
	cmp r4,r5                                         	@IRInst:beq	%t130	%t129	45
	moveq r6,#1                                       	@IRInst:beq	%t130	%t129	45
	movne r6,#0                                       	@IRInst:beq	%t130	%t129	45
	str r6,[fp,#188]                                  	@IRInst:beq	%t130	%t129	45
	beq .L57                                          
	b .L62                                            
.L62:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t131	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t131	chat	4
	mov r5,#4                                         	@IRInst:mul	%t131	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t131	chat	4
	str r6,[fp,#192]                                  	@IRInst:mul	%t131	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t132	chas	%t131
	ldr r5,[fp,#192]                                  	@IRInst:add	%t132	chas	%t131
	add r6,r4,r5                                      	@IRInst:add	%t132	chas	%t131
	str r6,[fp,#196]                                  	@IRInst:add	%t132	chas	%t131
	ldr r4,[fp,#196]                                  	@IRInst:assign	%t133	%t132
	ldr r4,[r4]                                       	@IRInst:assign	%t133	%t132
	str r4,[fp,#200]                                  	@IRInst:assign	%t133	%t132
	ldr r4,[fp,#200]                                  	@IRInst:beq	%t134	%t133	42
	mov r5,#42                                        	@IRInst:beq	%t134	%t133	42
	cmp r4,r5                                         	@IRInst:beq	%t134	%t133	42
	moveq r6,#1                                       	@IRInst:beq	%t134	%t133	42
	movne r6,#0                                       	@IRInst:beq	%t134	%t133	42
	str r6,[fp,#204]                                  	@IRInst:beq	%t134	%t133	42
	beq .L57                                          
	b .L61                                            
.L61:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t135	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t135	chat	4
	mov r5,#4                                         	@IRInst:mul	%t135	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t135	chat	4
	str r6,[fp,#208]                                  	@IRInst:mul	%t135	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t136	chas	%t135
	ldr r5,[fp,#208]                                  	@IRInst:add	%t136	chas	%t135
	add r6,r4,r5                                      	@IRInst:add	%t136	chas	%t135
	str r6,[fp,#212]                                  	@IRInst:add	%t136	chas	%t135
	ldr r4,[fp,#212]                                  	@IRInst:assign	%t137	%t136
	ldr r4,[r4]                                       	@IRInst:assign	%t137	%t136
	str r4,[fp,#216]                                  	@IRInst:assign	%t137	%t136
	ldr r4,[fp,#216]                                  	@IRInst:beq	%t138	%t137	47
	mov r5,#47                                        	@IRInst:beq	%t138	%t137	47
	cmp r4,r5                                         	@IRInst:beq	%t138	%t137	47
	moveq r6,#1                                       	@IRInst:beq	%t138	%t137	47
	movne r6,#0                                       	@IRInst:beq	%t138	%t137	47
	str r6,[fp,#220]                                  	@IRInst:beq	%t138	%t137	47
	beq .L57                                          
	b .L60                                            
.L60:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t139	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t139	chat	4
	mov r5,#4                                         	@IRInst:mul	%t139	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t139	chat	4
	str r6,[fp,#224]                                  	@IRInst:mul	%t139	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t140	chas	%t139
	ldr r5,[fp,#224]                                  	@IRInst:add	%t140	chas	%t139
	add r6,r4,r5                                      	@IRInst:add	%t140	chas	%t139
	str r6,[fp,#228]                                  	@IRInst:add	%t140	chas	%t139
	ldr r4,[fp,#228]                                  	@IRInst:assign	%t141	%t140
	ldr r4,[r4]                                       	@IRInst:assign	%t141	%t140
	str r4,[fp,#232]                                  	@IRInst:assign	%t141	%t140
	ldr r4,[fp,#232]                                  	@IRInst:beq	%t142	%t141	37
	mov r5,#37                                        	@IRInst:beq	%t142	%t141	37
	cmp r4,r5                                         	@IRInst:beq	%t142	%t141	37
	moveq r6,#1                                       	@IRInst:beq	%t142	%t141	37
	movne r6,#0                                       	@IRInst:beq	%t142	%t141	37
	str r6,[fp,#236]                                  	@IRInst:beq	%t142	%t141	37
	beq .L57                                          
	b .L59                                            
.L59:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t143	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t143	chat	4
	mov r5,#4                                         	@IRInst:mul	%t143	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t143	chat	4
	str r6,[fp,#240]                                  	@IRInst:mul	%t143	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t144	chas	%t143
	ldr r5,[fp,#240]                                  	@IRInst:add	%t144	chas	%t143
	add r6,r4,r5                                      	@IRInst:add	%t144	chas	%t143
	str r6,[fp,#244]                                  	@IRInst:add	%t144	chas	%t143
	ldr r4,[fp,#244]                                  	@IRInst:assign	%t145	%t144
	ldr r4,[r4]                                       	@IRInst:assign	%t145	%t144
	str r4,[fp,#248]                                  	@IRInst:assign	%t145	%t144
	ldr r4,[fp,#248]                                  	@IRInst:beq	%t146	%t145	94
	mov r5,#94                                        	@IRInst:beq	%t146	%t145	94
	cmp r4,r5                                         	@IRInst:beq	%t146	%t145	94
	moveq r6,#1                                       	@IRInst:beq	%t146	%t145	94
	movne r6,#0                                       	@IRInst:beq	%t146	%t145	94
	str r6,[fp,#252]                                  	@IRInst:beq	%t146	%t145	94
	beq .L57                                          
	b .L58                                            
.L57:
	bl find                                           
	str r0,[fp,#256]                                  	@IRInst:assign	%t147	r0
	ldr r4,[fp,#256]                                  	@IRInst:beq	%t148	%t147	0
	mov r5,#0                                         	@IRInst:beq	%t148	%t147	0
	cmp r4,r5                                         	@IRInst:beq	%t148	%t147	0
	moveq r6,#1                                       	@IRInst:beq	%t148	%t147	0
	movne r6,#0                                       	@IRInst:beq	%t148	%t147	0
	str r6,[fp,#260]                                  	@IRInst:beq	%t148	%t147	0
	beq .L64                                          
	b .L65                                            
.L64:
	b .L58                                            
.L65:
.L66:
	b .L56                                            
.L58:
	mov r0,#43                                        	@IRInst:assign	r0	43
	bl chapush                                        
.L54:
.L55:
	ldr r4,.global_9_i                                	@IRInst:mul	%t149	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t149	i	4
	mov r5,#4                                         	@IRInst:mul	%t149	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t149	i	4
	str r6,[fp,#264]                                  	@IRInst:mul	%t149	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t150	get	%t149
	ldr r5,[fp,#264]                                  	@IRInst:add	%t150	get	%t149
	add r6,r4,r5                                      	@IRInst:add	%t150	get	%t149
	str r6,[fp,#268]                                  	@IRInst:add	%t150	get	%t149
	ldr r4,[fp,#268]                                  	@IRInst:assign	%t151	%t150
	ldr r4,[r4]                                       	@IRInst:assign	%t151	%t150
	str r4,[fp,#272]                                  	@IRInst:assign	%t151	%t150
	ldr r4,[fp,#272]                                  	@IRInst:beq	%t152	%t151	45
	mov r5,#45                                        	@IRInst:beq	%t152	%t151	45
	cmp r4,r5                                         	@IRInst:beq	%t152	%t151	45
	moveq r6,#1                                       	@IRInst:beq	%t152	%t151	45
	movne r6,#0                                       	@IRInst:beq	%t152	%t151	45
	str r6,[fp,#276]                                  	@IRInst:beq	%t152	%t151	45
	beq .L67                                          
	b .L68                                            
.L67:
.L70:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t153	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t153	chat	4
	mov r5,#4                                         	@IRInst:mul	%t153	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t153	chat	4
	str r6,[fp,#280]                                  	@IRInst:mul	%t153	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t154	chas	%t153
	ldr r5,[fp,#280]                                  	@IRInst:add	%t154	chas	%t153
	add r6,r4,r5                                      	@IRInst:add	%t154	chas	%t153
	str r6,[fp,#284]                                  	@IRInst:add	%t154	chas	%t153
	ldr r4,[fp,#284]                                  	@IRInst:assign	%t155	%t154
	ldr r4,[r4]                                       	@IRInst:assign	%t155	%t154
	str r4,[fp,#288]                                  	@IRInst:assign	%t155	%t154
	ldr r4,[fp,#288]                                  	@IRInst:beq	%t156	%t155	43
	mov r5,#43                                        	@IRInst:beq	%t156	%t155	43
	cmp r4,r5                                         	@IRInst:beq	%t156	%t155	43
	moveq r6,#1                                       	@IRInst:beq	%t156	%t155	43
	movne r6,#0                                       	@IRInst:beq	%t156	%t155	43
	str r6,[fp,#292]                                  	@IRInst:beq	%t156	%t155	43
	beq .L71                                          
	b .L77                                            
.L77:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t157	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t157	chat	4
	mov r5,#4                                         	@IRInst:mul	%t157	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t157	chat	4
	str r6,[fp,#296]                                  	@IRInst:mul	%t157	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t158	chas	%t157
	ldr r5,[fp,#296]                                  	@IRInst:add	%t158	chas	%t157
	add r6,r4,r5                                      	@IRInst:add	%t158	chas	%t157
	str r6,[fp,#300]                                  	@IRInst:add	%t158	chas	%t157
	ldr r4,[fp,#300]                                  	@IRInst:assign	%t159	%t158
	ldr r4,[r4]                                       	@IRInst:assign	%t159	%t158
	str r4,[fp,#304]                                  	@IRInst:assign	%t159	%t158
	ldr r4,[fp,#304]                                  	@IRInst:beq	%t160	%t159	45
	mov r5,#45                                        	@IRInst:beq	%t160	%t159	45
	cmp r4,r5                                         	@IRInst:beq	%t160	%t159	45
	moveq r6,#1                                       	@IRInst:beq	%t160	%t159	45
	movne r6,#0                                       	@IRInst:beq	%t160	%t159	45
	str r6,[fp,#308]                                  	@IRInst:beq	%t160	%t159	45
	beq .L71                                          
	b .L76                                            
.L76:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t161	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t161	chat	4
	mov r5,#4                                         	@IRInst:mul	%t161	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t161	chat	4
	str r6,[fp,#312]                                  	@IRInst:mul	%t161	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t162	chas	%t161
	ldr r5,[fp,#312]                                  	@IRInst:add	%t162	chas	%t161
	add r6,r4,r5                                      	@IRInst:add	%t162	chas	%t161
	str r6,[fp,#316]                                  	@IRInst:add	%t162	chas	%t161
	ldr r4,[fp,#316]                                  	@IRInst:assign	%t163	%t162
	ldr r4,[r4]                                       	@IRInst:assign	%t163	%t162
	str r4,[fp,#320]                                  	@IRInst:assign	%t163	%t162
	ldr r4,[fp,#320]                                  	@IRInst:beq	%t164	%t163	42
	mov r5,#42                                        	@IRInst:beq	%t164	%t163	42
	cmp r4,r5                                         	@IRInst:beq	%t164	%t163	42
	moveq r6,#1                                       	@IRInst:beq	%t164	%t163	42
	movne r6,#0                                       	@IRInst:beq	%t164	%t163	42
	str r6,[fp,#324]                                  	@IRInst:beq	%t164	%t163	42
	beq .L71                                          
	b .L75                                            
.L75:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t165	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t165	chat	4
	mov r5,#4                                         	@IRInst:mul	%t165	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t165	chat	4
	str r6,[fp,#328]                                  	@IRInst:mul	%t165	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t166	chas	%t165
	ldr r5,[fp,#328]                                  	@IRInst:add	%t166	chas	%t165
	add r6,r4,r5                                      	@IRInst:add	%t166	chas	%t165
	str r6,[fp,#332]                                  	@IRInst:add	%t166	chas	%t165
	ldr r4,[fp,#332]                                  	@IRInst:assign	%t167	%t166
	ldr r4,[r4]                                       	@IRInst:assign	%t167	%t166
	str r4,[fp,#336]                                  	@IRInst:assign	%t167	%t166
	ldr r4,[fp,#336]                                  	@IRInst:beq	%t168	%t167	47
	mov r5,#47                                        	@IRInst:beq	%t168	%t167	47
	cmp r4,r5                                         	@IRInst:beq	%t168	%t167	47
	moveq r6,#1                                       	@IRInst:beq	%t168	%t167	47
	movne r6,#0                                       	@IRInst:beq	%t168	%t167	47
	str r6,[fp,#340]                                  	@IRInst:beq	%t168	%t167	47
	beq .L71                                          
	b .L74                                            
.L74:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t169	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t169	chat	4
	mov r5,#4                                         	@IRInst:mul	%t169	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t169	chat	4
	str r6,[fp,#344]                                  	@IRInst:mul	%t169	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t170	chas	%t169
	ldr r5,[fp,#344]                                  	@IRInst:add	%t170	chas	%t169
	add r6,r4,r5                                      	@IRInst:add	%t170	chas	%t169
	str r6,[fp,#348]                                  	@IRInst:add	%t170	chas	%t169
	ldr r4,[fp,#348]                                  	@IRInst:assign	%t171	%t170
	ldr r4,[r4]                                       	@IRInst:assign	%t171	%t170
	str r4,[fp,#352]                                  	@IRInst:assign	%t171	%t170
	ldr r4,[fp,#352]                                  	@IRInst:beq	%t172	%t171	37
	mov r5,#37                                        	@IRInst:beq	%t172	%t171	37
	cmp r4,r5                                         	@IRInst:beq	%t172	%t171	37
	moveq r6,#1                                       	@IRInst:beq	%t172	%t171	37
	movne r6,#0                                       	@IRInst:beq	%t172	%t171	37
	str r6,[fp,#356]                                  	@IRInst:beq	%t172	%t171	37
	beq .L71                                          
	b .L73                                            
.L73:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t173	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t173	chat	4
	mov r5,#4                                         	@IRInst:mul	%t173	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t173	chat	4
	str r6,[fp,#360]                                  	@IRInst:mul	%t173	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t174	chas	%t173
	ldr r5,[fp,#360]                                  	@IRInst:add	%t174	chas	%t173
	add r6,r4,r5                                      	@IRInst:add	%t174	chas	%t173
	str r6,[fp,#364]                                  	@IRInst:add	%t174	chas	%t173
	ldr r4,[fp,#364]                                  	@IRInst:assign	%t175	%t174
	ldr r4,[r4]                                       	@IRInst:assign	%t175	%t174
	str r4,[fp,#368]                                  	@IRInst:assign	%t175	%t174
	ldr r4,[fp,#368]                                  	@IRInst:beq	%t176	%t175	94
	mov r5,#94                                        	@IRInst:beq	%t176	%t175	94
	cmp r4,r5                                         	@IRInst:beq	%t176	%t175	94
	moveq r6,#1                                       	@IRInst:beq	%t176	%t175	94
	movne r6,#0                                       	@IRInst:beq	%t176	%t175	94
	str r6,[fp,#372]                                  	@IRInst:beq	%t176	%t175	94
	beq .L71                                          
	b .L72                                            
.L71:
	bl find                                           
	str r0,[fp,#376]                                  	@IRInst:assign	%t177	r0
	ldr r4,[fp,#376]                                  	@IRInst:beq	%t178	%t177	0
	mov r5,#0                                         	@IRInst:beq	%t178	%t177	0
	cmp r4,r5                                         	@IRInst:beq	%t178	%t177	0
	moveq r6,#1                                       	@IRInst:beq	%t178	%t177	0
	movne r6,#0                                       	@IRInst:beq	%t178	%t177	0
	str r6,[fp,#380]                                  	@IRInst:beq	%t178	%t177	0
	beq .L78                                          
	b .L79                                            
.L78:
	b .L72                                            
.L79:
.L80:
	b .L70                                            
.L72:
	mov r0,#45                                        	@IRInst:assign	r0	45
	bl chapush                                        
.L68:
.L69:
	ldr r4,.global_9_i                                	@IRInst:mul	%t179	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t179	i	4
	mov r5,#4                                         	@IRInst:mul	%t179	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t179	i	4
	str r6,[fp,#384]                                  	@IRInst:mul	%t179	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t180	get	%t179
	ldr r5,[fp,#384]                                  	@IRInst:add	%t180	get	%t179
	add r6,r4,r5                                      	@IRInst:add	%t180	get	%t179
	str r6,[fp,#388]                                  	@IRInst:add	%t180	get	%t179
	ldr r4,[fp,#388]                                  	@IRInst:assign	%t181	%t180
	ldr r4,[r4]                                       	@IRInst:assign	%t181	%t180
	str r4,[fp,#392]                                  	@IRInst:assign	%t181	%t180
	ldr r4,[fp,#392]                                  	@IRInst:beq	%t182	%t181	42
	mov r5,#42                                        	@IRInst:beq	%t182	%t181	42
	cmp r4,r5                                         	@IRInst:beq	%t182	%t181	42
	moveq r6,#1                                       	@IRInst:beq	%t182	%t181	42
	movne r6,#0                                       	@IRInst:beq	%t182	%t181	42
	str r6,[fp,#396]                                  	@IRInst:beq	%t182	%t181	42
	beq .L81                                          
	b .L82                                            
.L81:
.L84:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t183	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t183	chat	4
	mov r5,#4                                         	@IRInst:mul	%t183	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t183	chat	4
	str r6,[fp,#400]                                  	@IRInst:mul	%t183	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t184	chas	%t183
	ldr r5,[fp,#400]                                  	@IRInst:add	%t184	chas	%t183
	add r6,r4,r5                                      	@IRInst:add	%t184	chas	%t183
	str r6,[fp,#404]                                  	@IRInst:add	%t184	chas	%t183
	ldr r4,[fp,#404]                                  	@IRInst:assign	%t185	%t184
	ldr r4,[r4]                                       	@IRInst:assign	%t185	%t184
	str r4,[fp,#408]                                  	@IRInst:assign	%t185	%t184
	ldr r4,[fp,#408]                                  	@IRInst:beq	%t186	%t185	42
	mov r5,#42                                        	@IRInst:beq	%t186	%t185	42
	cmp r4,r5                                         	@IRInst:beq	%t186	%t185	42
	moveq r6,#1                                       	@IRInst:beq	%t186	%t185	42
	movne r6,#0                                       	@IRInst:beq	%t186	%t185	42
	str r6,[fp,#412]                                  	@IRInst:beq	%t186	%t185	42
	beq .L85                                          
	b .L89                                            
.L89:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t187	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t187	chat	4
	mov r5,#4                                         	@IRInst:mul	%t187	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t187	chat	4
	str r6,[fp,#416]                                  	@IRInst:mul	%t187	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t188	chas	%t187
	ldr r5,[fp,#416]                                  	@IRInst:add	%t188	chas	%t187
	add r6,r4,r5                                      	@IRInst:add	%t188	chas	%t187
	str r6,[fp,#420]                                  	@IRInst:add	%t188	chas	%t187
	ldr r4,[fp,#420]                                  	@IRInst:assign	%t189	%t188
	ldr r4,[r4]                                       	@IRInst:assign	%t189	%t188
	str r4,[fp,#424]                                  	@IRInst:assign	%t189	%t188
	ldr r4,[fp,#424]                                  	@IRInst:beq	%t190	%t189	47
	mov r5,#47                                        	@IRInst:beq	%t190	%t189	47
	cmp r4,r5                                         	@IRInst:beq	%t190	%t189	47
	moveq r6,#1                                       	@IRInst:beq	%t190	%t189	47
	movne r6,#0                                       	@IRInst:beq	%t190	%t189	47
	str r6,[fp,#428]                                  	@IRInst:beq	%t190	%t189	47
	beq .L85                                          
	b .L88                                            
.L88:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t191	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t191	chat	4
	mov r5,#4                                         	@IRInst:mul	%t191	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t191	chat	4
	str r6,[fp,#432]                                  	@IRInst:mul	%t191	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t192	chas	%t191
	ldr r5,[fp,#432]                                  	@IRInst:add	%t192	chas	%t191
	add r6,r4,r5                                      	@IRInst:add	%t192	chas	%t191
	str r6,[fp,#436]                                  	@IRInst:add	%t192	chas	%t191
	ldr r4,[fp,#436]                                  	@IRInst:assign	%t193	%t192
	ldr r4,[r4]                                       	@IRInst:assign	%t193	%t192
	str r4,[fp,#440]                                  	@IRInst:assign	%t193	%t192
	ldr r4,[fp,#440]                                  	@IRInst:beq	%t194	%t193	37
	mov r5,#37                                        	@IRInst:beq	%t194	%t193	37
	cmp r4,r5                                         	@IRInst:beq	%t194	%t193	37
	moveq r6,#1                                       	@IRInst:beq	%t194	%t193	37
	movne r6,#0                                       	@IRInst:beq	%t194	%t193	37
	str r6,[fp,#444]                                  	@IRInst:beq	%t194	%t193	37
	beq .L85                                          
	b .L87                                            
.L87:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t195	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t195	chat	4
	mov r5,#4                                         	@IRInst:mul	%t195	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t195	chat	4
	str r6,[fp,#448]                                  	@IRInst:mul	%t195	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t196	chas	%t195
	ldr r5,[fp,#448]                                  	@IRInst:add	%t196	chas	%t195
	add r6,r4,r5                                      	@IRInst:add	%t196	chas	%t195
	str r6,[fp,#452]                                  	@IRInst:add	%t196	chas	%t195
	ldr r4,[fp,#452]                                  	@IRInst:assign	%t197	%t196
	ldr r4,[r4]                                       	@IRInst:assign	%t197	%t196
	str r4,[fp,#456]                                  	@IRInst:assign	%t197	%t196
	ldr r4,[fp,#456]                                  	@IRInst:beq	%t198	%t197	94
	mov r5,#94                                        	@IRInst:beq	%t198	%t197	94
	cmp r4,r5                                         	@IRInst:beq	%t198	%t197	94
	moveq r6,#1                                       	@IRInst:beq	%t198	%t197	94
	movne r6,#0                                       	@IRInst:beq	%t198	%t197	94
	str r6,[fp,#460]                                  	@IRInst:beq	%t198	%t197	94
	beq .L85                                          
	b .L86                                            
.L85:
	bl find                                           
	str r0,[fp,#464]                                  	@IRInst:assign	%t199	r0
	ldr r4,[fp,#464]                                  	@IRInst:beq	%t200	%t199	0
	mov r5,#0                                         	@IRInst:beq	%t200	%t199	0
	cmp r4,r5                                         	@IRInst:beq	%t200	%t199	0
	moveq r6,#1                                       	@IRInst:beq	%t200	%t199	0
	movne r6,#0                                       	@IRInst:beq	%t200	%t199	0
	str r6,[fp,#468]                                  	@IRInst:beq	%t200	%t199	0
	beq .L90                                          
	b .L91                                            
.L90:
	b .L86                                            
.L91:
.L92:
	b .L84                                            
.L86:
	mov r0,#42                                        	@IRInst:assign	r0	42
	bl chapush                                        
.L82:
.L83:
	ldr r4,.global_9_i                                	@IRInst:mul	%t201	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t201	i	4
	mov r5,#4                                         	@IRInst:mul	%t201	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t201	i	4
	str r6,[fp,#472]                                  	@IRInst:mul	%t201	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t202	get	%t201
	ldr r5,[fp,#472]                                  	@IRInst:add	%t202	get	%t201
	add r6,r4,r5                                      	@IRInst:add	%t202	get	%t201
	str r6,[fp,#476]                                  	@IRInst:add	%t202	get	%t201
	ldr r4,[fp,#476]                                  	@IRInst:assign	%t203	%t202
	ldr r4,[r4]                                       	@IRInst:assign	%t203	%t202
	str r4,[fp,#480]                                  	@IRInst:assign	%t203	%t202
	ldr r4,[fp,#480]                                  	@IRInst:beq	%t204	%t203	47
	mov r5,#47                                        	@IRInst:beq	%t204	%t203	47
	cmp r4,r5                                         	@IRInst:beq	%t204	%t203	47
	moveq r6,#1                                       	@IRInst:beq	%t204	%t203	47
	movne r6,#0                                       	@IRInst:beq	%t204	%t203	47
	str r6,[fp,#484]                                  	@IRInst:beq	%t204	%t203	47
	beq .L93                                          
	b .L94                                            
.L93:
.L96:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t205	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t205	chat	4
	mov r5,#4                                         	@IRInst:mul	%t205	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t205	chat	4
	str r6,[fp,#488]                                  	@IRInst:mul	%t205	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t206	chas	%t205
	ldr r5,[fp,#488]                                  	@IRInst:add	%t206	chas	%t205
	add r6,r4,r5                                      	@IRInst:add	%t206	chas	%t205
	str r6,[fp,#492]                                  	@IRInst:add	%t206	chas	%t205
	ldr r4,[fp,#492]                                  	@IRInst:assign	%t207	%t206
	ldr r4,[r4]                                       	@IRInst:assign	%t207	%t206
	str r4,[fp,#496]                                  	@IRInst:assign	%t207	%t206
	ldr r4,[fp,#496]                                  	@IRInst:beq	%t208	%t207	42
	mov r5,#42                                        	@IRInst:beq	%t208	%t207	42
	cmp r4,r5                                         	@IRInst:beq	%t208	%t207	42
	moveq r6,#1                                       	@IRInst:beq	%t208	%t207	42
	movne r6,#0                                       	@IRInst:beq	%t208	%t207	42
	str r6,[fp,#500]                                  	@IRInst:beq	%t208	%t207	42
	beq .L97                                          
	b .L101                                           
.L101:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t209	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t209	chat	4
	mov r5,#4                                         	@IRInst:mul	%t209	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t209	chat	4
	str r6,[fp,#504]                                  	@IRInst:mul	%t209	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t210	chas	%t209
	ldr r5,[fp,#504]                                  	@IRInst:add	%t210	chas	%t209
	add r6,r4,r5                                      	@IRInst:add	%t210	chas	%t209
	str r6,[fp,#508]                                  	@IRInst:add	%t210	chas	%t209
	ldr r4,[fp,#508]                                  	@IRInst:assign	%t211	%t210
	ldr r4,[r4]                                       	@IRInst:assign	%t211	%t210
	str r4,[fp,#512]                                  	@IRInst:assign	%t211	%t210
	ldr r4,[fp,#512]                                  	@IRInst:beq	%t212	%t211	47
	mov r5,#47                                        	@IRInst:beq	%t212	%t211	47
	cmp r4,r5                                         	@IRInst:beq	%t212	%t211	47
	moveq r6,#1                                       	@IRInst:beq	%t212	%t211	47
	movne r6,#0                                       	@IRInst:beq	%t212	%t211	47
	str r6,[fp,#516]                                  	@IRInst:beq	%t212	%t211	47
	beq .L97                                          
	b .L100                                           
.L100:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t213	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t213	chat	4
	mov r5,#4                                         	@IRInst:mul	%t213	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t213	chat	4
	str r6,[fp,#520]                                  	@IRInst:mul	%t213	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t214	chas	%t213
	ldr r5,[fp,#520]                                  	@IRInst:add	%t214	chas	%t213
	add r6,r4,r5                                      	@IRInst:add	%t214	chas	%t213
	str r6,[fp,#524]                                  	@IRInst:add	%t214	chas	%t213
	ldr r4,[fp,#524]                                  	@IRInst:assign	%t215	%t214
	ldr r4,[r4]                                       	@IRInst:assign	%t215	%t214
	str r4,[fp,#528]                                  	@IRInst:assign	%t215	%t214
	ldr r4,[fp,#528]                                  	@IRInst:beq	%t216	%t215	37
	mov r5,#37                                        	@IRInst:beq	%t216	%t215	37
	cmp r4,r5                                         	@IRInst:beq	%t216	%t215	37
	moveq r6,#1                                       	@IRInst:beq	%t216	%t215	37
	movne r6,#0                                       	@IRInst:beq	%t216	%t215	37
	str r6,[fp,#532]                                  	@IRInst:beq	%t216	%t215	37
	beq .L97                                          
	b .L99                                            
.L99:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t217	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t217	chat	4
	mov r5,#4                                         	@IRInst:mul	%t217	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t217	chat	4
	str r6,[fp,#536]                                  	@IRInst:mul	%t217	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t218	chas	%t217
	ldr r5,[fp,#536]                                  	@IRInst:add	%t218	chas	%t217
	add r6,r4,r5                                      	@IRInst:add	%t218	chas	%t217
	str r6,[fp,#540]                                  	@IRInst:add	%t218	chas	%t217
	ldr r4,[fp,#540]                                  	@IRInst:assign	%t219	%t218
	ldr r4,[r4]                                       	@IRInst:assign	%t219	%t218
	str r4,[fp,#544]                                  	@IRInst:assign	%t219	%t218
	ldr r4,[fp,#544]                                  	@IRInst:beq	%t220	%t219	94
	mov r5,#94                                        	@IRInst:beq	%t220	%t219	94
	cmp r4,r5                                         	@IRInst:beq	%t220	%t219	94
	moveq r6,#1                                       	@IRInst:beq	%t220	%t219	94
	movne r6,#0                                       	@IRInst:beq	%t220	%t219	94
	str r6,[fp,#548]                                  	@IRInst:beq	%t220	%t219	94
	beq .L97                                          
	b .L98                                            
.L97:
	bl find                                           
	str r0,[fp,#552]                                  	@IRInst:assign	%t221	r0
	ldr r4,[fp,#552]                                  	@IRInst:beq	%t222	%t221	0
	mov r5,#0                                         	@IRInst:beq	%t222	%t221	0
	cmp r4,r5                                         	@IRInst:beq	%t222	%t221	0
	moveq r6,#1                                       	@IRInst:beq	%t222	%t221	0
	movne r6,#0                                       	@IRInst:beq	%t222	%t221	0
	str r6,[fp,#556]                                  	@IRInst:beq	%t222	%t221	0
	beq .L102                                         
	b .L103                                           
.L102:
	b .L98                                            
.L103:
.L104:
	b .L96                                            
.L98:
	mov r0,#47                                        	@IRInst:assign	r0	47
	bl chapush                                        
.L94:
.L95:
	ldr r4,.global_9_i                                	@IRInst:mul	%t223	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t223	i	4
	mov r5,#4                                         	@IRInst:mul	%t223	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t223	i	4
	str r6,[fp,#560]                                  	@IRInst:mul	%t223	i	4
	ldr r4,.global_9_get                              	@IRInst:add	%t224	get	%t223
	ldr r5,[fp,#560]                                  	@IRInst:add	%t224	get	%t223
	add r6,r4,r5                                      	@IRInst:add	%t224	get	%t223
	str r6,[fp,#564]                                  	@IRInst:add	%t224	get	%t223
	ldr r4,[fp,#564]                                  	@IRInst:assign	%t225	%t224
	ldr r4,[r4]                                       	@IRInst:assign	%t225	%t224
	str r4,[fp,#568]                                  	@IRInst:assign	%t225	%t224
	ldr r4,[fp,#568]                                  	@IRInst:beq	%t226	%t225	37
	mov r5,#37                                        	@IRInst:beq	%t226	%t225	37
	cmp r4,r5                                         	@IRInst:beq	%t226	%t225	37
	moveq r6,#1                                       	@IRInst:beq	%t226	%t225	37
	movne r6,#0                                       	@IRInst:beq	%t226	%t225	37
	str r6,[fp,#572]                                  	@IRInst:beq	%t226	%t225	37
	beq .L105                                         
	b .L106                                           
.L105:
.L108:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t227	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t227	chat	4
	mov r5,#4                                         	@IRInst:mul	%t227	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t227	chat	4
	str r6,[fp,#576]                                  	@IRInst:mul	%t227	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t228	chas	%t227
	ldr r5,[fp,#576]                                  	@IRInst:add	%t228	chas	%t227
	add r6,r4,r5                                      	@IRInst:add	%t228	chas	%t227
	str r6,[fp,#580]                                  	@IRInst:add	%t228	chas	%t227
	ldr r4,[fp,#580]                                  	@IRInst:assign	%t229	%t228
	ldr r4,[r4]                                       	@IRInst:assign	%t229	%t228
	str r4,[fp,#584]                                  	@IRInst:assign	%t229	%t228
	ldr r4,[fp,#584]                                  	@IRInst:beq	%t230	%t229	42
	mov r5,#42                                        	@IRInst:beq	%t230	%t229	42
	cmp r4,r5                                         	@IRInst:beq	%t230	%t229	42
	moveq r6,#1                                       	@IRInst:beq	%t230	%t229	42
	movne r6,#0                                       	@IRInst:beq	%t230	%t229	42
	str r6,[fp,#588]                                  	@IRInst:beq	%t230	%t229	42
	beq .L109                                         
	b .L113                                           
.L113:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t231	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t231	chat	4
	mov r5,#4                                         	@IRInst:mul	%t231	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t231	chat	4
	str r6,[fp,#592]                                  	@IRInst:mul	%t231	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t232	chas	%t231
	ldr r5,[fp,#592]                                  	@IRInst:add	%t232	chas	%t231
	add r6,r4,r5                                      	@IRInst:add	%t232	chas	%t231
	str r6,[fp,#596]                                  	@IRInst:add	%t232	chas	%t231
	ldr r4,[fp,#596]                                  	@IRInst:assign	%t233	%t232
	ldr r4,[r4]                                       	@IRInst:assign	%t233	%t232
	str r4,[fp,#600]                                  	@IRInst:assign	%t233	%t232
	ldr r4,[fp,#600]                                  	@IRInst:beq	%t234	%t233	47
	mov r5,#47                                        	@IRInst:beq	%t234	%t233	47
	cmp r4,r5                                         	@IRInst:beq	%t234	%t233	47
	moveq r6,#1                                       	@IRInst:beq	%t234	%t233	47
	movne r6,#0                                       	@IRInst:beq	%t234	%t233	47
	str r6,[fp,#604]                                  	@IRInst:beq	%t234	%t233	47
	beq .L109                                         
	b .L112                                           
.L112:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t235	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t235	chat	4
	mov r5,#4                                         	@IRInst:mul	%t235	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t235	chat	4
	str r6,[fp,#608]                                  	@IRInst:mul	%t235	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t236	chas	%t235
	ldr r5,[fp,#608]                                  	@IRInst:add	%t236	chas	%t235
	add r6,r4,r5                                      	@IRInst:add	%t236	chas	%t235
	str r6,[fp,#612]                                  	@IRInst:add	%t236	chas	%t235
	ldr r4,[fp,#612]                                  	@IRInst:assign	%t237	%t236
	ldr r4,[r4]                                       	@IRInst:assign	%t237	%t236
	str r4,[fp,#616]                                  	@IRInst:assign	%t237	%t236
	ldr r4,[fp,#616]                                  	@IRInst:beq	%t238	%t237	37
	mov r5,#37                                        	@IRInst:beq	%t238	%t237	37
	cmp r4,r5                                         	@IRInst:beq	%t238	%t237	37
	moveq r6,#1                                       	@IRInst:beq	%t238	%t237	37
	movne r6,#0                                       	@IRInst:beq	%t238	%t237	37
	str r6,[fp,#620]                                  	@IRInst:beq	%t238	%t237	37
	beq .L109                                         
	b .L111                                           
.L111:
	ldr r4,.global_9_chat                             	@IRInst:mul	%t239	chat	4
	ldr r4,[r4]                                       	@IRInst:mul	%t239	chat	4
	mov r5,#4                                         	@IRInst:mul	%t239	chat	4
	mul r6,r4,r5                                      	@IRInst:mul	%t239	chat	4
	str r6,[fp,#624]                                  	@IRInst:mul	%t239	chat	4
	ldr r4,.global_9_chas                             	@IRInst:add	%t240	chas	%t239
	ldr r5,[fp,#624]                                  	@IRInst:add	%t240	chas	%t239
	add r6,r4,r5                                      	@IRInst:add	%t240	chas	%t239
	str r6,[fp,#628]                                  	@IRInst:add	%t240	chas	%t239
.global_10_ints:
        .long   ints
.global_10_intt:
        .long   intt
.global_10_chas:
        .long   chas
.global_10_chat:
        .long   chat
.global_10_i:
        .long   i
.global_10_ii:
        .long   ii
.global_10_c:
        .long   c
.global_10_get:
        .long   get
.global_10_get2:
        .long   get2
	ldr r4,[fp,#628]                                  	@IRInst:assign	%t241	%t240
	ldr r4,[r4]                                       	@IRInst:assign	%t241	%t240
	str r4,[fp,#632]                                  	@IRInst:assign	%t241	%t240
	ldr r4,[fp,#632]                                  	@IRInst:beq	%t242	%t241	94
	mov r5,#94                                        	@IRInst:beq	%t242	%t241	94
	cmp r4,r5                                         	@IRInst:beq	%t242	%t241	94
	moveq r6,#1                                       	@IRInst:beq	%t242	%t241	94
	movne r6,#0                                       	@IRInst:beq	%t242	%t241	94
	str r6,[fp,#636]                                  	@IRInst:beq	%t242	%t241	94
	beq .L109                                         
	b .L110                                           
.L109:
	bl find                                           
	str r0,[fp,#640]                                  	@IRInst:assign	%t243	r0
	ldr r4,[fp,#640]                                  	@IRInst:beq	%t244	%t243	0
	mov r5,#0                                         	@IRInst:beq	%t244	%t243	0
	cmp r4,r5                                         	@IRInst:beq	%t244	%t243	0
	moveq r6,#1                                       	@IRInst:beq	%t244	%t243	0
	movne r6,#0                                       	@IRInst:beq	%t244	%t243	0
	str r6,[fp,#644]                                  	@IRInst:beq	%t244	%t243	0
	beq .L114                                         
	b .L115                                           
.L114:
	b .L110                                           
.L115:
.L116:
	b .L108                                           
.L110:
	mov r0,#37                                        	@IRInst:assign	r0	37
	bl chapush                                        
.L106:
.L107:
	ldr r4,.global_10_ii                              	@IRInst:mul	%t245	ii	4
	ldr r4,[r4]                                       	@IRInst:mul	%t245	ii	4
	mov r5,#4                                         	@IRInst:mul	%t245	ii	4
	mul r6,r4,r5                                      	@IRInst:mul	%t245	ii	4
	str r6,[fp,#648]                                  	@IRInst:mul	%t245	ii	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t246	get2	%t245
	ldr r5,[fp,#648]                                  	@IRInst:add	%t246	get2	%t245
	add r6,r4,r5                                      	@IRInst:add	%t246	get2	%t245
	str r6,[fp,#652]                                  	@IRInst:add	%t246	get2	%t245
	ldr r5,[fp,#652]                                  	@IRInst:assign	%t246	32
	mov r4,#32                                        	@IRInst:assign	%t246	32
	str r4,[r5]                                       	@IRInst:assign	%t246	32
	ldr r4,.global_10_ii                              	@IRInst:add	%t247	ii	1
	ldr r4,[r4]                                       	@IRInst:add	%t247	ii	1
	mov r5,#1                                         	@IRInst:add	%t247	ii	1
	add r6,r4,r5                                      	@IRInst:add	%t247	ii	1
	str r6,[fp,#656]                                  	@IRInst:add	%t247	ii	1
	ldr r4,[fp,#656]                                  	@IRInst:assign	ii	%t247
	ldr r9,.global_10_ii                              	@IRInst:assign	ii	%t247
	str r4,[r9]                                       	@IRInst:assign	ii	%t247
.L40:
	ldr r4,.global_10_i                               	@IRInst:add	%t248	i	1
	ldr r4,[r4]                                       	@IRInst:add	%t248	i	1
	mov r5,#1                                         	@IRInst:add	%t248	i	1
	add r6,r4,r5                                      	@IRInst:add	%t248	i	1
	str r6,[fp,#660]                                  	@IRInst:add	%t248	i	1
	ldr r4,[fp,#660]                                  	@IRInst:assign	i	%t248
	ldr r9,.global_10_i                               	@IRInst:assign	i	%t248
	str r4,[r9]                                       	@IRInst:assign	i	%t248
	b .L35                                            
.L37:
.L117:
	ldr r4,.global_10_chat                            	@IRInst:bgt	%t249	chat	0
	ldr r4,[r4]                                       	@IRInst:bgt	%t249	chat	0
	mov r5,#0                                         	@IRInst:bgt	%t249	chat	0
	cmp r4,r5                                         	@IRInst:bgt	%t249	chat	0
	movgt r6,#1                                       	@IRInst:bgt	%t249	chat	0
	movle r6,#0                                       	@IRInst:bgt	%t249	chat	0
	str r6,[fp,#664]                                  	@IRInst:bgt	%t249	chat	0
	bgt .L118                                         
	b .L119                                           
.L118:
	bl chapop                                         
	str r0,[fp,#672]                                  	@IRInst:assign	%t251	r0
	ldr r4,[fp,#672]                                  	@IRInst:assign	c	%t251
	str r4,[fp,#668]                                  	@IRInst:assign	c	%t251
	ldr r4,.global_10_ii                              	@IRInst:mul	%t252	ii	4
	ldr r4,[r4]                                       	@IRInst:mul	%t252	ii	4
	mov r5,#4                                         	@IRInst:mul	%t252	ii	4
	mul r6,r4,r5                                      	@IRInst:mul	%t252	ii	4
	str r6,[fp,#676]                                  	@IRInst:mul	%t252	ii	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t253	get2	%t252
	ldr r5,[fp,#676]                                  	@IRInst:add	%t253	get2	%t252
	add r6,r4,r5                                      	@IRInst:add	%t253	get2	%t252
	str r6,[fp,#680]                                  	@IRInst:add	%t253	get2	%t252
	ldr r5,[fp,#680]                                  	@IRInst:assign	%t253	32
	mov r4,#32                                        	@IRInst:assign	%t253	32
	str r4,[r5]                                       	@IRInst:assign	%t253	32
	ldr r4,.global_10_ii                              	@IRInst:add	%t255	ii	1
	ldr r4,[r4]                                       	@IRInst:add	%t255	ii	1
	mov r5,#1                                         	@IRInst:add	%t255	ii	1
	add r6,r4,r5                                      	@IRInst:add	%t255	ii	1
	str r6,[fp,#688]                                  	@IRInst:add	%t255	ii	1
	ldr r4,[fp,#688]                                  	@IRInst:mul	%t254	%t255	4
	mov r5,#4                                         	@IRInst:mul	%t254	%t255	4
	mul r6,r4,r5                                      	@IRInst:mul	%t254	%t255	4
	str r6,[fp,#684]                                  	@IRInst:mul	%t254	%t255	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t256	get2	%t254
	ldr r5,[fp,#684]                                  	@IRInst:add	%t256	get2	%t254
	add r6,r4,r5                                      	@IRInst:add	%t256	get2	%t254
	str r6,[fp,#692]                                  	@IRInst:add	%t256	get2	%t254
	ldr r5,[fp,#692]                                  	@IRInst:assign	%t256	c
	ldr r4,[fp,#668]                                  	@IRInst:assign	%t256	c
	str r4,[r5]                                       	@IRInst:assign	%t256	c
	ldr r4,.global_10_ii                              	@IRInst:add	%t257	ii	2
	ldr r4,[r4]                                       	@IRInst:add	%t257	ii	2
	mov r5,#2                                         	@IRInst:add	%t257	ii	2
	add r6,r4,r5                                      	@IRInst:add	%t257	ii	2
	str r6,[fp,#696]                                  	@IRInst:add	%t257	ii	2
	ldr r4,[fp,#696]                                  	@IRInst:assign	ii	%t257
	ldr r9,.global_10_ii                              	@IRInst:assign	ii	%t257
	str r4,[r9]                                       	@IRInst:assign	ii	%t257
	b .L117                                           
.L119:
	ldr r4,.global_10_ii                              	@IRInst:mul	%t258	ii	4
	ldr r4,[r4]                                       	@IRInst:mul	%t258	ii	4
	mov r5,#4                                         	@IRInst:mul	%t258	ii	4
	mul r6,r4,r5                                      	@IRInst:mul	%t258	ii	4
	str r6,[fp,#700]                                  	@IRInst:mul	%t258	ii	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t259	get2	%t258
	ldr r5,[fp,#700]                                  	@IRInst:add	%t259	get2	%t258
	add r6,r4,r5                                      	@IRInst:add	%t259	get2	%t258
	str r6,[fp,#704]                                  	@IRInst:add	%t259	get2	%t258
	ldr r5,[fp,#704]                                  	@IRInst:assign	%t259	64
	mov r4,#64                                        	@IRInst:assign	%t259	64
	str r4,[r5]                                       	@IRInst:assign	%t259	64
	mov r4,#1                                         	@IRInst:assign	i	1
	ldr r9,.global_10_i                               	@IRInst:assign	i	1
	str r4,[r9]                                       	@IRInst:assign	i	1
.L120:
	ldr r4,.global_10_i                               	@IRInst:mul	%t260	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t260	i	4
	mov r5,#4                                         	@IRInst:mul	%t260	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t260	i	4
	str r6,[fp,#708]                                  	@IRInst:mul	%t260	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t261	get2	%t260
	ldr r5,[fp,#708]                                  	@IRInst:add	%t261	get2	%t260
	add r6,r4,r5                                      	@IRInst:add	%t261	get2	%t260
	str r6,[fp,#712]                                  	@IRInst:add	%t261	get2	%t260
	ldr r4,[fp,#712]                                  	@IRInst:assign	%t262	%t261
	ldr r4,[r4]                                       	@IRInst:assign	%t262	%t261
	str r4,[fp,#716]                                  	@IRInst:assign	%t262	%t261
	ldr r4,[fp,#716]                                  	@IRInst:beq	%t263	%t262	64
	mov r5,#64                                        	@IRInst:beq	%t263	%t262	64
	cmp r4,r5                                         	@IRInst:beq	%t263	%t262	64
	moveq r6,#1                                       	@IRInst:beq	%t263	%t262	64
	movne r6,#0                                       	@IRInst:beq	%t263	%t262	64
	str r6,[fp,#720]                                  	@IRInst:beq	%t263	%t262	64
	beq .L122                                         
	b .L121                                           
.L121:
	ldr r4,.global_10_i                               	@IRInst:mul	%t264	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t264	i	4
	mov r5,#4                                         	@IRInst:mul	%t264	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t264	i	4
	str r6,[fp,#724]                                  	@IRInst:mul	%t264	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t265	get2	%t264
	ldr r5,[fp,#724]                                  	@IRInst:add	%t265	get2	%t264
	add r6,r4,r5                                      	@IRInst:add	%t265	get2	%t264
	str r6,[fp,#728]                                  	@IRInst:add	%t265	get2	%t264
	ldr r4,[fp,#728]                                  	@IRInst:assign	%t266	%t265
	ldr r4,[r4]                                       	@IRInst:assign	%t266	%t265
	str r4,[fp,#732]                                  	@IRInst:assign	%t266	%t265
	ldr r4,[fp,#732]                                  	@IRInst:beq	%t267	%t266	43
	mov r5,#43                                        	@IRInst:beq	%t267	%t266	43
	cmp r4,r5                                         	@IRInst:beq	%t267	%t266	43
	moveq r6,#1                                       	@IRInst:beq	%t267	%t266	43
	movne r6,#0                                       	@IRInst:beq	%t267	%t266	43
	str r6,[fp,#736]                                  	@IRInst:beq	%t267	%t266	43
	beq .L123                                         
	b .L130                                           
.L130:
	ldr r4,.global_10_i                               	@IRInst:mul	%t268	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t268	i	4
	mov r5,#4                                         	@IRInst:mul	%t268	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t268	i	4
	str r6,[fp,#740]                                  	@IRInst:mul	%t268	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t269	get2	%t268
	ldr r5,[fp,#740]                                  	@IRInst:add	%t269	get2	%t268
	add r6,r4,r5                                      	@IRInst:add	%t269	get2	%t268
	str r6,[fp,#744]                                  	@IRInst:add	%t269	get2	%t268
	ldr r4,[fp,#744]                                  	@IRInst:assign	%t270	%t269
	ldr r4,[r4]                                       	@IRInst:assign	%t270	%t269
	str r4,[fp,#748]                                  	@IRInst:assign	%t270	%t269
	ldr r4,[fp,#748]                                  	@IRInst:beq	%t271	%t270	45
	mov r5,#45                                        	@IRInst:beq	%t271	%t270	45
	cmp r4,r5                                         	@IRInst:beq	%t271	%t270	45
	moveq r6,#1                                       	@IRInst:beq	%t271	%t270	45
	movne r6,#0                                       	@IRInst:beq	%t271	%t270	45
	str r6,[fp,#752]                                  	@IRInst:beq	%t271	%t270	45
	beq .L123                                         
	b .L129                                           
.L129:
	ldr r4,.global_10_i                               	@IRInst:mul	%t272	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t272	i	4
	mov r5,#4                                         	@IRInst:mul	%t272	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t272	i	4
	str r6,[fp,#756]                                  	@IRInst:mul	%t272	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t273	get2	%t272
	ldr r5,[fp,#756]                                  	@IRInst:add	%t273	get2	%t272
	add r6,r4,r5                                      	@IRInst:add	%t273	get2	%t272
	str r6,[fp,#760]                                  	@IRInst:add	%t273	get2	%t272
	ldr r4,[fp,#760]                                  	@IRInst:assign	%t274	%t273
	ldr r4,[r4]                                       	@IRInst:assign	%t274	%t273
	str r4,[fp,#764]                                  	@IRInst:assign	%t274	%t273
	ldr r4,[fp,#764]                                  	@IRInst:beq	%t275	%t274	42
	mov r5,#42                                        	@IRInst:beq	%t275	%t274	42
	cmp r4,r5                                         	@IRInst:beq	%t275	%t274	42
	moveq r6,#1                                       	@IRInst:beq	%t275	%t274	42
	movne r6,#0                                       	@IRInst:beq	%t275	%t274	42
	str r6,[fp,#768]                                  	@IRInst:beq	%t275	%t274	42
	beq .L123                                         
	b .L128                                           
.L128:
	ldr r4,.global_10_i                               	@IRInst:mul	%t276	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t276	i	4
	mov r5,#4                                         	@IRInst:mul	%t276	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t276	i	4
	str r6,[fp,#772]                                  	@IRInst:mul	%t276	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t277	get2	%t276
	ldr r5,[fp,#772]                                  	@IRInst:add	%t277	get2	%t276
	add r6,r4,r5                                      	@IRInst:add	%t277	get2	%t276
	str r6,[fp,#776]                                  	@IRInst:add	%t277	get2	%t276
	ldr r4,[fp,#776]                                  	@IRInst:assign	%t278	%t277
	ldr r4,[r4]                                       	@IRInst:assign	%t278	%t277
	str r4,[fp,#780]                                  	@IRInst:assign	%t278	%t277
	ldr r4,[fp,#780]                                  	@IRInst:beq	%t279	%t278	47
	mov r5,#47                                        	@IRInst:beq	%t279	%t278	47
	cmp r4,r5                                         	@IRInst:beq	%t279	%t278	47
	moveq r6,#1                                       	@IRInst:beq	%t279	%t278	47
	movne r6,#0                                       	@IRInst:beq	%t279	%t278	47
	str r6,[fp,#784]                                  	@IRInst:beq	%t279	%t278	47
	beq .L123                                         
	b .L127                                           
.L127:
	ldr r4,.global_10_i                               	@IRInst:mul	%t280	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t280	i	4
	mov r5,#4                                         	@IRInst:mul	%t280	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t280	i	4
	str r6,[fp,#788]                                  	@IRInst:mul	%t280	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t281	get2	%t280
	ldr r5,[fp,#788]                                  	@IRInst:add	%t281	get2	%t280
	add r6,r4,r5                                      	@IRInst:add	%t281	get2	%t280
	str r6,[fp,#792]                                  	@IRInst:add	%t281	get2	%t280
	ldr r4,[fp,#792]                                  	@IRInst:assign	%t282	%t281
	ldr r4,[r4]                                       	@IRInst:assign	%t282	%t281
	str r4,[fp,#796]                                  	@IRInst:assign	%t282	%t281
	ldr r4,[fp,#796]                                  	@IRInst:beq	%t283	%t282	37
	mov r5,#37                                        	@IRInst:beq	%t283	%t282	37
	cmp r4,r5                                         	@IRInst:beq	%t283	%t282	37
	moveq r6,#1                                       	@IRInst:beq	%t283	%t282	37
	movne r6,#0                                       	@IRInst:beq	%t283	%t282	37
	str r6,[fp,#800]                                  	@IRInst:beq	%t283	%t282	37
	beq .L123                                         
	b .L126                                           
.L126:
	ldr r4,.global_10_i                               	@IRInst:mul	%t284	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t284	i	4
	mov r5,#4                                         	@IRInst:mul	%t284	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t284	i	4
	str r6,[fp,#804]                                  	@IRInst:mul	%t284	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t285	get2	%t284
	ldr r5,[fp,#804]                                  	@IRInst:add	%t285	get2	%t284
	add r6,r4,r5                                      	@IRInst:add	%t285	get2	%t284
	str r6,[fp,#808]                                  	@IRInst:add	%t285	get2	%t284
	ldr r4,[fp,#808]                                  	@IRInst:assign	%t286	%t285
	ldr r4,[r4]                                       	@IRInst:assign	%t286	%t285
	str r4,[fp,#812]                                  	@IRInst:assign	%t286	%t285
	ldr r4,[fp,#812]                                  	@IRInst:beq	%t287	%t286	94
	mov r5,#94                                        	@IRInst:beq	%t287	%t286	94
	cmp r4,r5                                         	@IRInst:beq	%t287	%t286	94
	moveq r6,#1                                       	@IRInst:beq	%t287	%t286	94
	movne r6,#0                                       	@IRInst:beq	%t287	%t286	94
	str r6,[fp,#816]                                  	@IRInst:beq	%t287	%t286	94
	beq .L123                                         
	b .L124                                           
.L123:
	bl intpop                                         
	str r0,[fp,#824]                                  	@IRInst:assign	%t289	r0
	ldr r4,[fp,#824]                                  	@IRInst:assign	a	%t289
	str r4,[fp,#820]                                  	@IRInst:assign	a	%t289
	bl intpop                                         
	str r0,[fp,#832]                                  	@IRInst:assign	%t291	r0
	ldr r4,[fp,#832]                                  	@IRInst:assign	b	%t291
	str r4,[fp,#828]                                  	@IRInst:assign	b	%t291
	ldr r4,.global_10_i                               	@IRInst:mul	%t293	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t293	i	4
	mov r5,#4                                         	@IRInst:mul	%t293	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t293	i	4
	str r6,[fp,#840]                                  	@IRInst:mul	%t293	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t294	get2	%t293
	ldr r5,[fp,#840]                                  	@IRInst:add	%t294	get2	%t293
	add r6,r4,r5                                      	@IRInst:add	%t294	get2	%t293
	str r6,[fp,#844]                                  	@IRInst:add	%t294	get2	%t293
	ldr r4,[fp,#844]                                  	@IRInst:assign	%t295	%t294
	ldr r4,[r4]                                       	@IRInst:assign	%t295	%t294
	str r4,[fp,#848]                                  	@IRInst:assign	%t295	%t294
	ldr r4,[fp,#848]                                  	@IRInst:beq	%t296	%t295	43
	mov r5,#43                                        	@IRInst:beq	%t296	%t295	43
	cmp r4,r5                                         	@IRInst:beq	%t296	%t295	43
	moveq r6,#1                                       	@IRInst:beq	%t296	%t295	43
	movne r6,#0                                       	@IRInst:beq	%t296	%t295	43
	str r6,[fp,#852]                                  	@IRInst:beq	%t296	%t295	43
	beq .L131                                         
	b .L132                                           
.L131:
	ldr r4,[fp,#820]                                  	@IRInst:add	%t297	a	b
	ldr r5,[fp,#828]                                  	@IRInst:add	%t297	a	b
	add r6,r4,r5                                      	@IRInst:add	%t297	a	b
	str r6,[fp,#856]                                  	@IRInst:add	%t297	a	b
	ldr r4,[fp,#856]                                  	@IRInst:assign	c	%t297
	str r4,[fp,#836]                                  	@IRInst:assign	c	%t297
.L132:
.L133:
	ldr r4,.global_10_i                               	@IRInst:mul	%t298	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t298	i	4
	mov r5,#4                                         	@IRInst:mul	%t298	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t298	i	4
	str r6,[fp,#860]                                  	@IRInst:mul	%t298	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t299	get2	%t298
	ldr r5,[fp,#860]                                  	@IRInst:add	%t299	get2	%t298
	add r6,r4,r5                                      	@IRInst:add	%t299	get2	%t298
	str r6,[fp,#864]                                  	@IRInst:add	%t299	get2	%t298
	ldr r4,[fp,#864]                                  	@IRInst:assign	%t300	%t299
	ldr r4,[r4]                                       	@IRInst:assign	%t300	%t299
	str r4,[fp,#868]                                  	@IRInst:assign	%t300	%t299
	ldr r4,[fp,#868]                                  	@IRInst:beq	%t301	%t300	45
	mov r5,#45                                        	@IRInst:beq	%t301	%t300	45
	cmp r4,r5                                         	@IRInst:beq	%t301	%t300	45
	moveq r6,#1                                       	@IRInst:beq	%t301	%t300	45
	movne r6,#0                                       	@IRInst:beq	%t301	%t300	45
	str r6,[fp,#872]                                  	@IRInst:beq	%t301	%t300	45
	beq .L134                                         
	b .L135                                           
.L134:
	ldr r4,[fp,#828]                                  	@IRInst:sub	%t302	b	a
	ldr r5,[fp,#820]                                  	@IRInst:sub	%t302	b	a
	sub r6,r4,r5                                      	@IRInst:sub	%t302	b	a
	str r6,[fp,#876]                                  	@IRInst:sub	%t302	b	a
	ldr r4,[fp,#876]                                  	@IRInst:assign	c	%t302
	str r4,[fp,#836]                                  	@IRInst:assign	c	%t302
.L135:
.L136:
	ldr r4,.global_10_i                               	@IRInst:mul	%t303	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t303	i	4
	mov r5,#4                                         	@IRInst:mul	%t303	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t303	i	4
	str r6,[fp,#880]                                  	@IRInst:mul	%t303	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t304	get2	%t303
	ldr r5,[fp,#880]                                  	@IRInst:add	%t304	get2	%t303
	add r6,r4,r5                                      	@IRInst:add	%t304	get2	%t303
	str r6,[fp,#884]                                  	@IRInst:add	%t304	get2	%t303
	ldr r4,[fp,#884]                                  	@IRInst:assign	%t305	%t304
	ldr r4,[r4]                                       	@IRInst:assign	%t305	%t304
	str r4,[fp,#888]                                  	@IRInst:assign	%t305	%t304
	ldr r4,[fp,#888]                                  	@IRInst:beq	%t306	%t305	42
	mov r5,#42                                        	@IRInst:beq	%t306	%t305	42
	cmp r4,r5                                         	@IRInst:beq	%t306	%t305	42
	moveq r6,#1                                       	@IRInst:beq	%t306	%t305	42
	movne r6,#0                                       	@IRInst:beq	%t306	%t305	42
	str r6,[fp,#892]                                  	@IRInst:beq	%t306	%t305	42
	beq .L137                                         
	b .L138                                           
.L137:
	ldr r4,[fp,#820]                                  	@IRInst:mul	%t307	a	b
	ldr r5,[fp,#828]                                  	@IRInst:mul	%t307	a	b
	mul r6,r4,r5                                      	@IRInst:mul	%t307	a	b
	str r6,[fp,#896]                                  	@IRInst:mul	%t307	a	b
	ldr r4,[fp,#896]                                  	@IRInst:assign	c	%t307
	str r4,[fp,#836]                                  	@IRInst:assign	c	%t307
.L138:
.L139:
	ldr r4,.global_10_i                               	@IRInst:mul	%t308	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t308	i	4
	mov r5,#4                                         	@IRInst:mul	%t308	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t308	i	4
	str r6,[fp,#900]                                  	@IRInst:mul	%t308	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t309	get2	%t308
	ldr r5,[fp,#900]                                  	@IRInst:add	%t309	get2	%t308
	add r6,r4,r5                                      	@IRInst:add	%t309	get2	%t308
	str r6,[fp,#904]                                  	@IRInst:add	%t309	get2	%t308
	ldr r4,[fp,#904]                                  	@IRInst:assign	%t310	%t309
	ldr r4,[r4]                                       	@IRInst:assign	%t310	%t309
	str r4,[fp,#908]                                  	@IRInst:assign	%t310	%t309
	ldr r4,[fp,#908]                                  	@IRInst:beq	%t311	%t310	47
	mov r5,#47                                        	@IRInst:beq	%t311	%t310	47
	cmp r4,r5                                         	@IRInst:beq	%t311	%t310	47
	moveq r6,#1                                       	@IRInst:beq	%t311	%t310	47
	movne r6,#0                                       	@IRInst:beq	%t311	%t310	47
	str r6,[fp,#912]                                  	@IRInst:beq	%t311	%t310	47
	beq .L140                                         
	b .L141                                           
.L140:
	ldr r4,[fp,#828]                                  	@IRInst:sdiv	%t312	b	a
	ldr r5,[fp,#820]                                  	@IRInst:sdiv	%t312	b	a
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t312	b	a
	str r6,[fp,#916]                                  	@IRInst:sdiv	%t312	b	a
	ldr r4,[fp,#916]                                  	@IRInst:assign	c	%t312
	str r4,[fp,#836]                                  	@IRInst:assign	c	%t312
.L141:
.L142:
	ldr r4,.global_10_i                               	@IRInst:mul	%t313	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t313	i	4
	mov r5,#4                                         	@IRInst:mul	%t313	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t313	i	4
	str r6,[fp,#920]                                  	@IRInst:mul	%t313	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t314	get2	%t313
	ldr r5,[fp,#920]                                  	@IRInst:add	%t314	get2	%t313
	add r6,r4,r5                                      	@IRInst:add	%t314	get2	%t313
	str r6,[fp,#924]                                  	@IRInst:add	%t314	get2	%t313
	ldr r4,[fp,#924]                                  	@IRInst:assign	%t315	%t314
	ldr r4,[r4]                                       	@IRInst:assign	%t315	%t314
	str r4,[fp,#928]                                  	@IRInst:assign	%t315	%t314
	ldr r4,[fp,#928]                                  	@IRInst:beq	%t316	%t315	37
	mov r5,#37                                        	@IRInst:beq	%t316	%t315	37
	cmp r4,r5                                         	@IRInst:beq	%t316	%t315	37
	moveq r6,#1                                       	@IRInst:beq	%t316	%t315	37
	movne r6,#0                                       	@IRInst:beq	%t316	%t315	37
	str r6,[fp,#932]                                  	@IRInst:beq	%t316	%t315	37
	beq .L143                                         
	b .L144                                           
.L143:
	ldr r4,[fp,#828]                                  	@IRInst:sdiv	%t318	b	a
	ldr r5,[fp,#820]                                  	@IRInst:sdiv	%t318	b	a
	sdiv r6,r4,r5                                     	@IRInst:sdiv	%t318	b	a
	str r6,[fp,#940]                                  	@IRInst:sdiv	%t318	b	a
	ldr r4,[fp,#940]                                  	@IRInst:mul	%t319	%t318	a
	ldr r5,[fp,#820]                                  	@IRInst:mul	%t319	%t318	a
	mul r6,r4,r5                                      	@IRInst:mul	%t319	%t318	a
	str r6,[fp,#944]                                  	@IRInst:mul	%t319	%t318	a
	ldr r4,[fp,#828]                                  	@IRInst:sub	%t317	b	%t319
	ldr r5,[fp,#944]                                  	@IRInst:sub	%t317	b	%t319
	sub r6,r4,r5                                      	@IRInst:sub	%t317	b	%t319
	str r6,[fp,#936]                                  	@IRInst:sub	%t317	b	%t319
	ldr r4,[fp,#936]                                  	@IRInst:assign	c	%t317
	str r4,[fp,#836]                                  	@IRInst:assign	c	%t317
.L144:
.L145:
	ldr r4,.global_10_i                               	@IRInst:mul	%t320	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t320	i	4
	mov r5,#4                                         	@IRInst:mul	%t320	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t320	i	4
	str r6,[fp,#948]                                  	@IRInst:mul	%t320	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t321	get2	%t320
	ldr r5,[fp,#948]                                  	@IRInst:add	%t321	get2	%t320
	add r6,r4,r5                                      	@IRInst:add	%t321	get2	%t320
	str r6,[fp,#952]                                  	@IRInst:add	%t321	get2	%t320
	ldr r4,[fp,#952]                                  	@IRInst:assign	%t322	%t321
	ldr r4,[r4]                                       	@IRInst:assign	%t322	%t321
	str r4,[fp,#956]                                  	@IRInst:assign	%t322	%t321
	ldr r4,[fp,#956]                                  	@IRInst:beq	%t323	%t322	94
	mov r5,#94                                        	@IRInst:beq	%t323	%t322	94
	cmp r4,r5                                         	@IRInst:beq	%t323	%t322	94
	moveq r6,#1                                       	@IRInst:beq	%t323	%t322	94
	movne r6,#0                                       	@IRInst:beq	%t323	%t322	94
	str r6,[fp,#960]                                  	@IRInst:beq	%t323	%t322	94
	beq .L146                                         
	b .L147                                           
.L146:
	ldr r0,[fp,#828]                                  	@IRInst:assign	r0	b
	ldr r1,[fp,#820]                                  	@IRInst:assign	r1	a
	bl power                                          
	str r0,[fp,#964]                                  	@IRInst:assign	%t324	r0
	ldr r4,[fp,#964]                                  	@IRInst:assign	c	%t324
	str r4,[fp,#836]                                  	@IRInst:assign	c	%t324
.L147:
.L148:
	ldr r0,[fp,#836]                                  	@IRInst:assign	r0	c
	bl intpush                                        
	b .L125                                           
.L124:
	ldr r4,.global_10_i                               	@IRInst:mul	%t325	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t325	i	4
	mov r5,#4                                         	@IRInst:mul	%t325	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t325	i	4
	str r6,[fp,#968]                                  	@IRInst:mul	%t325	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t326	get2	%t325
	ldr r5,[fp,#968]                                  	@IRInst:add	%t326	get2	%t325
	add r6,r4,r5                                      	@IRInst:add	%t326	get2	%t325
	str r6,[fp,#972]                                  	@IRInst:add	%t326	get2	%t325
	ldr r4,[fp,#972]                                  	@IRInst:assign	%t327	%t326
	ldr r4,[r4]                                       	@IRInst:assign	%t327	%t326
	str r4,[fp,#976]                                  	@IRInst:assign	%t327	%t326
	ldr r4,[fp,#976]                                  	@IRInst:beq	%t328	%t327	32
	mov r5,#32                                        	@IRInst:beq	%t328	%t327	32
	cmp r4,r5                                         	@IRInst:beq	%t328	%t327	32
	moveq r6,#1                                       	@IRInst:beq	%t328	%t327	32
	movne r6,#0                                       	@IRInst:beq	%t328	%t327	32
	str r6,[fp,#980]                                  	@IRInst:beq	%t328	%t327	32
	beq .L150                                         
	b .L149                                           
.L149:
	ldr r4,.global_10_i                               	@IRInst:mul	%t329	i	4
	ldr r4,[r4]                                       	@IRInst:mul	%t329	i	4
	mov r5,#4                                         	@IRInst:mul	%t329	i	4
	mul r6,r4,r5                                      	@IRInst:mul	%t329	i	4
	str r6,[fp,#984]                                  	@IRInst:mul	%t329	i	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t330	get2	%t329
	ldr r5,[fp,#984]                                  	@IRInst:add	%t330	get2	%t329
	add r6,r4,r5                                      	@IRInst:add	%t330	get2	%t329
	str r6,[fp,#988]                                  	@IRInst:add	%t330	get2	%t329
	ldr r4,[fp,#988]                                  	@IRInst:assign	%t331	%t330
	ldr r4,[r4]                                       	@IRInst:assign	%t331	%t330
	str r4,[fp,#992]                                  	@IRInst:assign	%t331	%t330
	ldr r4,[fp,#992]                                  	@IRInst:sub	%t332	%t331	48
	mov r5,#48                                        	@IRInst:sub	%t332	%t331	48
	sub r6,r4,r5                                      	@IRInst:sub	%t332	%t331	48
	str r6,[fp,#996]                                  	@IRInst:sub	%t332	%t331	48
	ldr r0,[fp,#996]                                  	@IRInst:assign	r0	%t332
	bl intpush                                        
	mov r4,#1                                         	@IRInst:assign	ii	1
	ldr r9,.global_10_ii                              	@IRInst:assign	ii	1
	str r4,[r9]                                       	@IRInst:assign	ii	1
.L152:
	ldr r4,.global_10_i                               	@IRInst:add	%t334	i	ii
	ldr r4,[r4]                                       	@IRInst:add	%t334	i	ii
	ldr r5,.global_10_ii                              	@IRInst:add	%t334	i	ii
	ldr r5,[r5]                                       	@IRInst:add	%t334	i	ii
	add r6,r4,r5                                      	@IRInst:add	%t334	i	ii
	str r6,[fp,#1004]                                 	@IRInst:add	%t334	i	ii
	ldr r4,[fp,#1004]                                 	@IRInst:mul	%t333	%t334	4
	mov r5,#4                                         	@IRInst:mul	%t333	%t334	4
	mul r6,r4,r5                                      	@IRInst:mul	%t333	%t334	4
	str r6,[fp,#1000]                                 	@IRInst:mul	%t333	%t334	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t335	get2	%t333
	ldr r5,[fp,#1000]                                 	@IRInst:add	%t335	get2	%t333
	add r6,r4,r5                                      	@IRInst:add	%t335	get2	%t333
	str r6,[fp,#1008]                                 	@IRInst:add	%t335	get2	%t333
	ldr r4,[fp,#1008]                                 	@IRInst:assign	%t336	%t335
	ldr r4,[r4]                                       	@IRInst:assign	%t336	%t335
	str r4,[fp,#1012]                                 	@IRInst:assign	%t336	%t335
	ldr r4,[fp,#1012]                                 	@IRInst:beq	%t337	%t336	32
	mov r5,#32                                        	@IRInst:beq	%t337	%t336	32
	cmp r4,r5                                         	@IRInst:beq	%t337	%t336	32
	moveq r6,#1                                       	@IRInst:beq	%t337	%t336	32
	movne r6,#0                                       	@IRInst:beq	%t337	%t336	32
	str r6,[fp,#1016]                                 	@IRInst:beq	%t337	%t336	32
	beq .L154                                         
	b .L153                                           
.L153:
	ldr r4,.global_10_i                               	@IRInst:add	%t339	i	ii
	ldr r4,[r4]                                       	@IRInst:add	%t339	i	ii
	ldr r5,.global_10_ii                              	@IRInst:add	%t339	i	ii
	ldr r5,[r5]                                       	@IRInst:add	%t339	i	ii
	add r6,r4,r5                                      	@IRInst:add	%t339	i	ii
	str r6,[fp,#1024]                                 	@IRInst:add	%t339	i	ii
	ldr r4,[fp,#1024]                                 	@IRInst:mul	%t338	%t339	4
	mov r5,#4                                         	@IRInst:mul	%t338	%t339	4
	mul r6,r4,r5                                      	@IRInst:mul	%t338	%t339	4
	str r6,[fp,#1020]                                 	@IRInst:mul	%t338	%t339	4
	ldr r4,.global_10_get2                            	@IRInst:add	%t340	get2	%t338
	ldr r5,[fp,#1020]                                 	@IRInst:add	%t340	get2	%t338
	add r6,r4,r5                                      	@IRInst:add	%t340	get2	%t338
	str r6,[fp,#1028]                                 	@IRInst:add	%t340	get2	%t338
	ldr r4,[fp,#1028]                                 	@IRInst:assign	%t341	%t340
	ldr r4,[r4]                                       	@IRInst:assign	%t341	%t340
	str r4,[fp,#1032]                                 	@IRInst:assign	%t341	%t340
	ldr r4,[fp,#1032]                                 	@IRInst:sub	%t342	%t341	48
	mov r5,#48                                        	@IRInst:sub	%t342	%t341	48
	sub r6,r4,r5                                      	@IRInst:sub	%t342	%t341	48
	str r6,[fp,#1036]                                 	@IRInst:sub	%t342	%t341	48
	ldr r0,[fp,#1036]                                 	@IRInst:assign	r0	%t342
	bl intadd                                         
	ldr r4,.global_10_ii                              	@IRInst:add	%t343	ii	1
	ldr r4,[r4]                                       	@IRInst:add	%t343	ii	1
	mov r5,#1                                         	@IRInst:add	%t343	ii	1
	add r6,r4,r5                                      	@IRInst:add	%t343	ii	1
	str r6,[fp,#1040]                                 	@IRInst:add	%t343	ii	1
	ldr r4,[fp,#1040]                                 	@IRInst:assign	ii	%t343
	ldr r9,.global_10_ii                              	@IRInst:assign	ii	%t343
	str r4,[r9]                                       	@IRInst:assign	ii	%t343
	b .L152                                           
.L154:
	ldr r4,.global_10_i                               	@IRInst:add	%t344	i	ii
	ldr r4,[r4]                                       	@IRInst:add	%t344	i	ii
	ldr r5,.global_10_ii                              	@IRInst:add	%t344	i	ii
	ldr r5,[r5]                                       	@IRInst:add	%t344	i	ii
	add r6,r4,r5                                      	@IRInst:add	%t344	i	ii
	str r6,[fp,#1044]                                 	@IRInst:add	%t344	i	ii
	ldr r4,[fp,#1044]                                 	@IRInst:sub	%t345	%t344	1
	mov r5,#1                                         	@IRInst:sub	%t345	%t344	1
	sub r6,r4,r5                                      	@IRInst:sub	%t345	%t344	1
	str r6,[fp,#1048]                                 	@IRInst:sub	%t345	%t344	1
	ldr r4,[fp,#1048]                                 	@IRInst:assign	i	%t345
	ldr r9,.global_10_i                               	@IRInst:assign	i	%t345
	str r4,[r9]                                       	@IRInst:assign	i	%t345
.L150:
.L151:
.L125:
	ldr r4,.global_10_i                               	@IRInst:add	%t346	i	1
	ldr r4,[r4]                                       	@IRInst:add	%t346	i	1
	mov r5,#1                                         	@IRInst:add	%t346	i	1
	add r6,r4,r5                                      	@IRInst:add	%t346	i	1
	str r6,[fp,#1052]                                 	@IRInst:add	%t346	i	1
	ldr r4,[fp,#1052]                                 	@IRInst:assign	i	%t346
	ldr r9,.global_10_i                               	@IRInst:assign	i	%t346
	str r4,[r9]                                       	@IRInst:assign	i	%t346
	b .L120                                           
.L122:
	mov r4,#1                                         	@IRInst:mul	%t347	1	4
	mov r5,#4                                         	@IRInst:mul	%t347	1	4
	mul r6,r4,r5                                      	@IRInst:mul	%t347	1	4
	str r6,[fp,#1056]                                 	@IRInst:mul	%t347	1	4
	ldr r4,.global_10_ints                            	@IRInst:add	%t348	ints	%t347
	ldr r5,[fp,#1056]                                 	@IRInst:add	%t348	ints	%t347
	add r6,r4,r5                                      	@IRInst:add	%t348	ints	%t347
	str r6,[fp,#1060]                                 	@IRInst:add	%t348	ints	%t347
	ldr r4,[fp,#1060]                                 	@IRInst:assign	%t349	%t348
	ldr r4,[r4]                                       	@IRInst:assign	%t349	%t348
	str r4,[fp,#1064]                                 	@IRInst:assign	%t349	%t348
	ldr r0,[fp,#1064]                                 	@IRInst:assign	r0	%t349
	bl putint                                         
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L34                                            
.L34:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#44                                     
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
