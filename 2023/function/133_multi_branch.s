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
	ldr r10,=1228                                     
	sub sp,sp,r10                                     
	add fp,sp,#0                                      
	bl getint                                         
	str r0,[fp,#16]                                   	@IRInst:assign	%t4	r0
	ldr r4,[fp,#16]                                   	@IRInst:assign	n	%t4
	str r4,[fp,#12]                                   	@IRInst:assign	n	%t4
	mov r4,#0                                         	@IRInst:assign	i	0
	str r4,[fp,#20]                                   	@IRInst:assign	i	0
.L3:
	ldr r4,[fp,#20]                                   	@IRInst:blt	%t6	i	n
	ldr r5,[fp,#12]                                   	@IRInst:blt	%t6	i	n
	cmp r4,r5                                         	@IRInst:blt	%t6	i	n
	movlt r6,#1                                       	@IRInst:blt	%t6	i	n
	movge r6,#0                                       	@IRInst:blt	%t6	i	n
	str r6,[fp,#24]                                   	@IRInst:blt	%t6	i	n
	blt .L4                                           
	b .L5                                             
.L4:
	mov r4,#0                                         	@IRInst:assign	res	0
	str r4,[fp,#8]                                    	@IRInst:assign	res	0
	bl getint                                         
	str r0,[fp,#28]                                   	@IRInst:assign	%t7	r0
	ldr r4,[fp,#28]                                   	@IRInst:assign	a	%t7
	str r4,[fp,#4]                                    	@IRInst:assign	a	%t7
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t8	a	0
	mov r5,#0                                         	@IRInst:bgt	%t8	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t8	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t8	a	0
	movle r6,#0                                       	@IRInst:bgt	%t8	a	0
	str r6,[fp,#32]                                   	@IRInst:bgt	%t8	a	0
	bgt .L9                                           
	b .L7                                             
.L9:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t9	a	100
	mov r5,#100                                       	@IRInst:blt	%t9	a	100
	cmp r4,r5                                         	@IRInst:blt	%t9	a	100
	movlt r6,#1                                       	@IRInst:blt	%t9	a	100
	movge r6,#0                                       	@IRInst:blt	%t9	a	100
	str r6,[fp,#36]                                   	@IRInst:blt	%t9	a	100
	blt .L6                                           
	b .L7                                             
.L6:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t10	a	0
	mov r5,#0                                         	@IRInst:bgt	%t10	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t10	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t10	a	0
	movle r6,#0                                       	@IRInst:bgt	%t10	a	0
	str r6,[fp,#40]                                   	@IRInst:bgt	%t10	a	0
	bgt .L13                                          
	b .L11                                            
.L13:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t11	a	99
	mov r5,#99                                        	@IRInst:blt	%t11	a	99
	cmp r4,r5                                         	@IRInst:blt	%t11	a	99
	movlt r6,#1                                       	@IRInst:blt	%t11	a	99
	movge r6,#0                                       	@IRInst:blt	%t11	a	99
	str r6,[fp,#44]                                   	@IRInst:blt	%t11	a	99
	blt .L10                                          
	b .L11                                            
.L10:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t12	a	0
	mov r5,#0                                         	@IRInst:bgt	%t12	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t12	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t12	a	0
	movle r6,#0                                       	@IRInst:bgt	%t12	a	0
	str r6,[fp,#48]                                   	@IRInst:bgt	%t12	a	0
	bgt .L17                                          
	b .L15                                            
.L17:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t13	a	98
	mov r5,#98                                        	@IRInst:blt	%t13	a	98
	cmp r4,r5                                         	@IRInst:blt	%t13	a	98
	movlt r6,#1                                       	@IRInst:blt	%t13	a	98
	movge r6,#0                                       	@IRInst:blt	%t13	a	98
	str r6,[fp,#52]                                   	@IRInst:blt	%t13	a	98
	blt .L14                                          
	b .L15                                            
.L14:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t14	a	0
	mov r5,#0                                         	@IRInst:bgt	%t14	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t14	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t14	a	0
	movle r6,#0                                       	@IRInst:bgt	%t14	a	0
	str r6,[fp,#56]                                   	@IRInst:bgt	%t14	a	0
	bgt .L21                                          
	b .L19                                            
.L21:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t15	a	97
	mov r5,#97                                        	@IRInst:blt	%t15	a	97
	cmp r4,r5                                         	@IRInst:blt	%t15	a	97
	movlt r6,#1                                       	@IRInst:blt	%t15	a	97
	movge r6,#0                                       	@IRInst:blt	%t15	a	97
	str r6,[fp,#60]                                   	@IRInst:blt	%t15	a	97
	blt .L18                                          
	b .L19                                            
.L18:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t16	a	0
	mov r5,#0                                         	@IRInst:bgt	%t16	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t16	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t16	a	0
	movle r6,#0                                       	@IRInst:bgt	%t16	a	0
	str r6,[fp,#64]                                   	@IRInst:bgt	%t16	a	0
	bgt .L25                                          
	b .L23                                            
.L25:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t17	a	96
	mov r5,#96                                        	@IRInst:blt	%t17	a	96
	cmp r4,r5                                         	@IRInst:blt	%t17	a	96
	movlt r6,#1                                       	@IRInst:blt	%t17	a	96
	movge r6,#0                                       	@IRInst:blt	%t17	a	96
	str r6,[fp,#68]                                   	@IRInst:blt	%t17	a	96
	blt .L22                                          
	b .L23                                            
.L22:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t18	a	0
	mov r5,#0                                         	@IRInst:bgt	%t18	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t18	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t18	a	0
	movle r6,#0                                       	@IRInst:bgt	%t18	a	0
	str r6,[fp,#72]                                   	@IRInst:bgt	%t18	a	0
	bgt .L29                                          
	b .L27                                            
.L29:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t19	a	95
	mov r5,#95                                        	@IRInst:blt	%t19	a	95
	cmp r4,r5                                         	@IRInst:blt	%t19	a	95
	movlt r6,#1                                       	@IRInst:blt	%t19	a	95
	movge r6,#0                                       	@IRInst:blt	%t19	a	95
	str r6,[fp,#76]                                   	@IRInst:blt	%t19	a	95
	blt .L26                                          
	b .L27                                            
.L26:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t20	a	0
	mov r5,#0                                         	@IRInst:bgt	%t20	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t20	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t20	a	0
	movle r6,#0                                       	@IRInst:bgt	%t20	a	0
	str r6,[fp,#80]                                   	@IRInst:bgt	%t20	a	0
	bgt .L33                                          
	b .L31                                            
.L33:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t21	a	94
	mov r5,#94                                        	@IRInst:blt	%t21	a	94
	cmp r4,r5                                         	@IRInst:blt	%t21	a	94
	movlt r6,#1                                       	@IRInst:blt	%t21	a	94
	movge r6,#0                                       	@IRInst:blt	%t21	a	94
	str r6,[fp,#84]                                   	@IRInst:blt	%t21	a	94
	blt .L30                                          
	b .L31                                            
.L30:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t22	a	0
	mov r5,#0                                         	@IRInst:bgt	%t22	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t22	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t22	a	0
	movle r6,#0                                       	@IRInst:bgt	%t22	a	0
	str r6,[fp,#88]                                   	@IRInst:bgt	%t22	a	0
	bgt .L37                                          
	b .L35                                            
.L37:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t23	a	93
	mov r5,#93                                        	@IRInst:blt	%t23	a	93
	cmp r4,r5                                         	@IRInst:blt	%t23	a	93
	movlt r6,#1                                       	@IRInst:blt	%t23	a	93
	movge r6,#0                                       	@IRInst:blt	%t23	a	93
	str r6,[fp,#92]                                   	@IRInst:blt	%t23	a	93
	blt .L34                                          
	b .L35                                            
.L34:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t24	a	0
	mov r5,#0                                         	@IRInst:bgt	%t24	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t24	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t24	a	0
	movle r6,#0                                       	@IRInst:bgt	%t24	a	0
	str r6,[fp,#96]                                   	@IRInst:bgt	%t24	a	0
	bgt .L41                                          
	b .L39                                            
.L41:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t25	a	92
	mov r5,#92                                        	@IRInst:blt	%t25	a	92
	cmp r4,r5                                         	@IRInst:blt	%t25	a	92
	movlt r6,#1                                       	@IRInst:blt	%t25	a	92
	movge r6,#0                                       	@IRInst:blt	%t25	a	92
	str r6,[fp,#100]                                  	@IRInst:blt	%t25	a	92
	blt .L38                                          
	b .L39                                            
.L38:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t26	a	0
	mov r5,#0                                         	@IRInst:bgt	%t26	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t26	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t26	a	0
	movle r6,#0                                       	@IRInst:bgt	%t26	a	0
	str r6,[fp,#104]                                  	@IRInst:bgt	%t26	a	0
	bgt .L45                                          
	b .L43                                            
.L45:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t27	a	91
	mov r5,#91                                        	@IRInst:blt	%t27	a	91
	cmp r4,r5                                         	@IRInst:blt	%t27	a	91
	movlt r6,#1                                       	@IRInst:blt	%t27	a	91
	movge r6,#0                                       	@IRInst:blt	%t27	a	91
	str r6,[fp,#108]                                  	@IRInst:blt	%t27	a	91
	blt .L42                                          
	b .L43                                            
.L42:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t28	a	0
	mov r5,#0                                         	@IRInst:bgt	%t28	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t28	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t28	a	0
	movle r6,#0                                       	@IRInst:bgt	%t28	a	0
	str r6,[fp,#112]                                  	@IRInst:bgt	%t28	a	0
	bgt .L49                                          
	b .L47                                            
.L49:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t29	a	90
	mov r5,#90                                        	@IRInst:blt	%t29	a	90
	cmp r4,r5                                         	@IRInst:blt	%t29	a	90
	movlt r6,#1                                       	@IRInst:blt	%t29	a	90
	movge r6,#0                                       	@IRInst:blt	%t29	a	90
	str r6,[fp,#116]                                  	@IRInst:blt	%t29	a	90
	blt .L46                                          
	b .L47                                            
.L46:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t30	a	0
	mov r5,#0                                         	@IRInst:bgt	%t30	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t30	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t30	a	0
	movle r6,#0                                       	@IRInst:bgt	%t30	a	0
	str r6,[fp,#120]                                  	@IRInst:bgt	%t30	a	0
	bgt .L53                                          
	b .L51                                            
.L53:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t31	a	89
	mov r5,#89                                        	@IRInst:blt	%t31	a	89
	cmp r4,r5                                         	@IRInst:blt	%t31	a	89
	movlt r6,#1                                       	@IRInst:blt	%t31	a	89
	movge r6,#0                                       	@IRInst:blt	%t31	a	89
	str r6,[fp,#124]                                  	@IRInst:blt	%t31	a	89
	blt .L50                                          
	b .L51                                            
.L50:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t32	a	0
	mov r5,#0                                         	@IRInst:bgt	%t32	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t32	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t32	a	0
	movle r6,#0                                       	@IRInst:bgt	%t32	a	0
	str r6,[fp,#128]                                  	@IRInst:bgt	%t32	a	0
	bgt .L57                                          
	b .L55                                            
.L57:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t33	a	88
	mov r5,#88                                        	@IRInst:blt	%t33	a	88
	cmp r4,r5                                         	@IRInst:blt	%t33	a	88
	movlt r6,#1                                       	@IRInst:blt	%t33	a	88
	movge r6,#0                                       	@IRInst:blt	%t33	a	88
	str r6,[fp,#132]                                  	@IRInst:blt	%t33	a	88
	blt .L54                                          
	b .L55                                            
.L54:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t34	a	0
	mov r5,#0                                         	@IRInst:bgt	%t34	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t34	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t34	a	0
	movle r6,#0                                       	@IRInst:bgt	%t34	a	0
	str r6,[fp,#136]                                  	@IRInst:bgt	%t34	a	0
	bgt .L61                                          
	b .L59                                            
.L61:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t35	a	87
	mov r5,#87                                        	@IRInst:blt	%t35	a	87
	cmp r4,r5                                         	@IRInst:blt	%t35	a	87
	movlt r6,#1                                       	@IRInst:blt	%t35	a	87
	movge r6,#0                                       	@IRInst:blt	%t35	a	87
	str r6,[fp,#140]                                  	@IRInst:blt	%t35	a	87
	blt .L58                                          
	b .L59                                            
.L58:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t36	a	0
	mov r5,#0                                         	@IRInst:bgt	%t36	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t36	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t36	a	0
	movle r6,#0                                       	@IRInst:bgt	%t36	a	0
	str r6,[fp,#144]                                  	@IRInst:bgt	%t36	a	0
	bgt .L65                                          
	b .L63                                            
.L65:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t37	a	86
	mov r5,#86                                        	@IRInst:blt	%t37	a	86
	cmp r4,r5                                         	@IRInst:blt	%t37	a	86
	movlt r6,#1                                       	@IRInst:blt	%t37	a	86
	movge r6,#0                                       	@IRInst:blt	%t37	a	86
	str r6,[fp,#148]                                  	@IRInst:blt	%t37	a	86
	blt .L62                                          
	b .L63                                            
.L62:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t38	a	0
	mov r5,#0                                         	@IRInst:bgt	%t38	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t38	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t38	a	0
	movle r6,#0                                       	@IRInst:bgt	%t38	a	0
	str r6,[fp,#152]                                  	@IRInst:bgt	%t38	a	0
	bgt .L69                                          
	b .L67                                            
.L69:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t39	a	85
	mov r5,#85                                        	@IRInst:blt	%t39	a	85
	cmp r4,r5                                         	@IRInst:blt	%t39	a	85
	movlt r6,#1                                       	@IRInst:blt	%t39	a	85
	movge r6,#0                                       	@IRInst:blt	%t39	a	85
	str r6,[fp,#156]                                  	@IRInst:blt	%t39	a	85
	blt .L66                                          
	b .L67                                            
.L66:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t40	a	0
	mov r5,#0                                         	@IRInst:bgt	%t40	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t40	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t40	a	0
	movle r6,#0                                       	@IRInst:bgt	%t40	a	0
	str r6,[fp,#160]                                  	@IRInst:bgt	%t40	a	0
	bgt .L73                                          
	b .L71                                            
.L73:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t41	a	84
	mov r5,#84                                        	@IRInst:blt	%t41	a	84
	cmp r4,r5                                         	@IRInst:blt	%t41	a	84
	movlt r6,#1                                       	@IRInst:blt	%t41	a	84
	movge r6,#0                                       	@IRInst:blt	%t41	a	84
	str r6,[fp,#164]                                  	@IRInst:blt	%t41	a	84
	blt .L70                                          
	b .L71                                            
.L70:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t42	a	0
	mov r5,#0                                         	@IRInst:bgt	%t42	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t42	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t42	a	0
	movle r6,#0                                       	@IRInst:bgt	%t42	a	0
	str r6,[fp,#168]                                  	@IRInst:bgt	%t42	a	0
	bgt .L77                                          
	b .L75                                            
.L77:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t43	a	83
	mov r5,#83                                        	@IRInst:blt	%t43	a	83
	cmp r4,r5                                         	@IRInst:blt	%t43	a	83
	movlt r6,#1                                       	@IRInst:blt	%t43	a	83
	movge r6,#0                                       	@IRInst:blt	%t43	a	83
	str r6,[fp,#172]                                  	@IRInst:blt	%t43	a	83
	blt .L74                                          
	b .L75                                            
.L74:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t44	a	0
	mov r5,#0                                         	@IRInst:bgt	%t44	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t44	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t44	a	0
	movle r6,#0                                       	@IRInst:bgt	%t44	a	0
	str r6,[fp,#176]                                  	@IRInst:bgt	%t44	a	0
	bgt .L81                                          
	b .L79                                            
.L81:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t45	a	82
	mov r5,#82                                        	@IRInst:blt	%t45	a	82
	cmp r4,r5                                         	@IRInst:blt	%t45	a	82
	movlt r6,#1                                       	@IRInst:blt	%t45	a	82
	movge r6,#0                                       	@IRInst:blt	%t45	a	82
	str r6,[fp,#180]                                  	@IRInst:blt	%t45	a	82
	blt .L78                                          
	b .L79                                            
.L78:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t46	a	0
	mov r5,#0                                         	@IRInst:bgt	%t46	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t46	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t46	a	0
	movle r6,#0                                       	@IRInst:bgt	%t46	a	0
	str r6,[fp,#184]                                  	@IRInst:bgt	%t46	a	0
	bgt .L85                                          
	b .L83                                            
.L85:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t47	a	81
	mov r5,#81                                        	@IRInst:blt	%t47	a	81
	cmp r4,r5                                         	@IRInst:blt	%t47	a	81
	movlt r6,#1                                       	@IRInst:blt	%t47	a	81
	movge r6,#0                                       	@IRInst:blt	%t47	a	81
	str r6,[fp,#188]                                  	@IRInst:blt	%t47	a	81
	blt .L82                                          
	b .L83                                            
.L82:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t48	a	0
	mov r5,#0                                         	@IRInst:bgt	%t48	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t48	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t48	a	0
	movle r6,#0                                       	@IRInst:bgt	%t48	a	0
	str r6,[fp,#192]                                  	@IRInst:bgt	%t48	a	0
	bgt .L89                                          
	b .L87                                            
.L89:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t49	a	80
	mov r5,#80                                        	@IRInst:blt	%t49	a	80
	cmp r4,r5                                         	@IRInst:blt	%t49	a	80
	movlt r6,#1                                       	@IRInst:blt	%t49	a	80
	movge r6,#0                                       	@IRInst:blt	%t49	a	80
	str r6,[fp,#196]                                  	@IRInst:blt	%t49	a	80
	blt .L86                                          
	b .L87                                            
.L86:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t50	a	0
	mov r5,#0                                         	@IRInst:bgt	%t50	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t50	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t50	a	0
	movle r6,#0                                       	@IRInst:bgt	%t50	a	0
	str r6,[fp,#200]                                  	@IRInst:bgt	%t50	a	0
	bgt .L93                                          
	b .L91                                            
.L93:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t51	a	79
	mov r5,#79                                        	@IRInst:blt	%t51	a	79
	cmp r4,r5                                         	@IRInst:blt	%t51	a	79
	movlt r6,#1                                       	@IRInst:blt	%t51	a	79
	movge r6,#0                                       	@IRInst:blt	%t51	a	79
	str r6,[fp,#204]                                  	@IRInst:blt	%t51	a	79
	blt .L90                                          
	b .L91                                            
.L90:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t52	a	0
	mov r5,#0                                         	@IRInst:bgt	%t52	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t52	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t52	a	0
	movle r6,#0                                       	@IRInst:bgt	%t52	a	0
	str r6,[fp,#208]                                  	@IRInst:bgt	%t52	a	0
	bgt .L97                                          
	b .L95                                            
.L97:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t53	a	78
	mov r5,#78                                        	@IRInst:blt	%t53	a	78
	cmp r4,r5                                         	@IRInst:blt	%t53	a	78
	movlt r6,#1                                       	@IRInst:blt	%t53	a	78
	movge r6,#0                                       	@IRInst:blt	%t53	a	78
	str r6,[fp,#212]                                  	@IRInst:blt	%t53	a	78
	blt .L94                                          
	b .L95                                            
.L94:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t54	a	0
	mov r5,#0                                         	@IRInst:bgt	%t54	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t54	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t54	a	0
	movle r6,#0                                       	@IRInst:bgt	%t54	a	0
	str r6,[fp,#216]                                  	@IRInst:bgt	%t54	a	0
	bgt .L101                                         
	b .L99                                            
.L101:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t55	a	77
	mov r5,#77                                        	@IRInst:blt	%t55	a	77
	cmp r4,r5                                         	@IRInst:blt	%t55	a	77
	movlt r6,#1                                       	@IRInst:blt	%t55	a	77
	movge r6,#0                                       	@IRInst:blt	%t55	a	77
	str r6,[fp,#220]                                  	@IRInst:blt	%t55	a	77
	blt .L98                                          
	b .L99                                            
.L98:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t56	a	0
	mov r5,#0                                         	@IRInst:bgt	%t56	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t56	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t56	a	0
	movle r6,#0                                       	@IRInst:bgt	%t56	a	0
	str r6,[fp,#224]                                  	@IRInst:bgt	%t56	a	0
	bgt .L105                                         
	b .L103                                           
.L105:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t57	a	76
	mov r5,#76                                        	@IRInst:blt	%t57	a	76
	cmp r4,r5                                         	@IRInst:blt	%t57	a	76
	movlt r6,#1                                       	@IRInst:blt	%t57	a	76
	movge r6,#0                                       	@IRInst:blt	%t57	a	76
	str r6,[fp,#228]                                  	@IRInst:blt	%t57	a	76
	blt .L102                                         
	b .L103                                           
.L102:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t58	a	0
	mov r5,#0                                         	@IRInst:bgt	%t58	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t58	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t58	a	0
	movle r6,#0                                       	@IRInst:bgt	%t58	a	0
	str r6,[fp,#232]                                  	@IRInst:bgt	%t58	a	0
	bgt .L109                                         
	b .L107                                           
.L109:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t59	a	75
	mov r5,#75                                        	@IRInst:blt	%t59	a	75
	cmp r4,r5                                         	@IRInst:blt	%t59	a	75
	movlt r6,#1                                       	@IRInst:blt	%t59	a	75
	movge r6,#0                                       	@IRInst:blt	%t59	a	75
	str r6,[fp,#236]                                  	@IRInst:blt	%t59	a	75
	blt .L106                                         
	b .L107                                           
.L106:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t60	a	0
	mov r5,#0                                         	@IRInst:bgt	%t60	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t60	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t60	a	0
	movle r6,#0                                       	@IRInst:bgt	%t60	a	0
	str r6,[fp,#240]                                  	@IRInst:bgt	%t60	a	0
	bgt .L113                                         
	b .L111                                           
.L113:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t61	a	74
	mov r5,#74                                        	@IRInst:blt	%t61	a	74
	cmp r4,r5                                         	@IRInst:blt	%t61	a	74
	movlt r6,#1                                       	@IRInst:blt	%t61	a	74
	movge r6,#0                                       	@IRInst:blt	%t61	a	74
	str r6,[fp,#244]                                  	@IRInst:blt	%t61	a	74
	blt .L110                                         
	b .L111                                           
.L110:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t62	a	0
	mov r5,#0                                         	@IRInst:bgt	%t62	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t62	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t62	a	0
	movle r6,#0                                       	@IRInst:bgt	%t62	a	0
	str r6,[fp,#248]                                  	@IRInst:bgt	%t62	a	0
	bgt .L117                                         
	b .L115                                           
.L117:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t63	a	73
	mov r5,#73                                        	@IRInst:blt	%t63	a	73
	cmp r4,r5                                         	@IRInst:blt	%t63	a	73
	movlt r6,#1                                       	@IRInst:blt	%t63	a	73
	movge r6,#0                                       	@IRInst:blt	%t63	a	73
	str r6,[fp,#252]                                  	@IRInst:blt	%t63	a	73
	blt .L114                                         
	b .L115                                           
.L114:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t64	a	0
	mov r5,#0                                         	@IRInst:bgt	%t64	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t64	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t64	a	0
	movle r6,#0                                       	@IRInst:bgt	%t64	a	0
	str r6,[fp,#256]                                  	@IRInst:bgt	%t64	a	0
	bgt .L121                                         
	b .L119                                           
.L121:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t65	a	72
	mov r5,#72                                        	@IRInst:blt	%t65	a	72
	cmp r4,r5                                         	@IRInst:blt	%t65	a	72
	movlt r6,#1                                       	@IRInst:blt	%t65	a	72
	movge r6,#0                                       	@IRInst:blt	%t65	a	72
	str r6,[fp,#260]                                  	@IRInst:blt	%t65	a	72
	blt .L118                                         
	b .L119                                           
.L118:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t66	a	0
	mov r5,#0                                         	@IRInst:bgt	%t66	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t66	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t66	a	0
	movle r6,#0                                       	@IRInst:bgt	%t66	a	0
	str r6,[fp,#264]                                  	@IRInst:bgt	%t66	a	0
	bgt .L125                                         
	b .L123                                           
.L125:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t67	a	71
	mov r5,#71                                        	@IRInst:blt	%t67	a	71
	cmp r4,r5                                         	@IRInst:blt	%t67	a	71
	movlt r6,#1                                       	@IRInst:blt	%t67	a	71
	movge r6,#0                                       	@IRInst:blt	%t67	a	71
	str r6,[fp,#268]                                  	@IRInst:blt	%t67	a	71
	blt .L122                                         
	b .L123                                           
.L122:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t68	a	0
	mov r5,#0                                         	@IRInst:bgt	%t68	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t68	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t68	a	0
	movle r6,#0                                       	@IRInst:bgt	%t68	a	0
	str r6,[fp,#272]                                  	@IRInst:bgt	%t68	a	0
	bgt .L129                                         
	b .L127                                           
.L129:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t69	a	70
	mov r5,#70                                        	@IRInst:blt	%t69	a	70
	cmp r4,r5                                         	@IRInst:blt	%t69	a	70
	movlt r6,#1                                       	@IRInst:blt	%t69	a	70
	movge r6,#0                                       	@IRInst:blt	%t69	a	70
	str r6,[fp,#276]                                  	@IRInst:blt	%t69	a	70
	blt .L126                                         
	b .L127                                           
.L126:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t70	a	0
	mov r5,#0                                         	@IRInst:bgt	%t70	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t70	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t70	a	0
	movle r6,#0                                       	@IRInst:bgt	%t70	a	0
	str r6,[fp,#280]                                  	@IRInst:bgt	%t70	a	0
	bgt .L133                                         
	b .L131                                           
.L133:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t71	a	69
	mov r5,#69                                        	@IRInst:blt	%t71	a	69
	cmp r4,r5                                         	@IRInst:blt	%t71	a	69
	movlt r6,#1                                       	@IRInst:blt	%t71	a	69
	movge r6,#0                                       	@IRInst:blt	%t71	a	69
	str r6,[fp,#284]                                  	@IRInst:blt	%t71	a	69
	blt .L130                                         
	b .L131                                           
.L130:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t72	a	0
	mov r5,#0                                         	@IRInst:bgt	%t72	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t72	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t72	a	0
	movle r6,#0                                       	@IRInst:bgt	%t72	a	0
	str r6,[fp,#288]                                  	@IRInst:bgt	%t72	a	0
	bgt .L137                                         
	b .L135                                           
.L137:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t73	a	68
	mov r5,#68                                        	@IRInst:blt	%t73	a	68
	cmp r4,r5                                         	@IRInst:blt	%t73	a	68
	movlt r6,#1                                       	@IRInst:blt	%t73	a	68
	movge r6,#0                                       	@IRInst:blt	%t73	a	68
	str r6,[fp,#292]                                  	@IRInst:blt	%t73	a	68
	blt .L134                                         
	b .L135                                           
.L134:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t74	a	0
	mov r5,#0                                         	@IRInst:bgt	%t74	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t74	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t74	a	0
	movle r6,#0                                       	@IRInst:bgt	%t74	a	0
	str r6,[fp,#296]                                  	@IRInst:bgt	%t74	a	0
	bgt .L141                                         
	b .L139                                           
.L141:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t75	a	67
	mov r5,#67                                        	@IRInst:blt	%t75	a	67
	cmp r4,r5                                         	@IRInst:blt	%t75	a	67
	movlt r6,#1                                       	@IRInst:blt	%t75	a	67
	movge r6,#0                                       	@IRInst:blt	%t75	a	67
	str r6,[fp,#300]                                  	@IRInst:blt	%t75	a	67
	blt .L138                                         
	b .L139                                           
.L138:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t76	a	0
	mov r5,#0                                         	@IRInst:bgt	%t76	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t76	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t76	a	0
	movle r6,#0                                       	@IRInst:bgt	%t76	a	0
	str r6,[fp,#304]                                  	@IRInst:bgt	%t76	a	0
	bgt .L145                                         
	b .L143                                           
.L145:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t77	a	66
	mov r5,#66                                        	@IRInst:blt	%t77	a	66
	cmp r4,r5                                         	@IRInst:blt	%t77	a	66
	movlt r6,#1                                       	@IRInst:blt	%t77	a	66
	movge r6,#0                                       	@IRInst:blt	%t77	a	66
	str r6,[fp,#308]                                  	@IRInst:blt	%t77	a	66
	blt .L142                                         
	b .L143                                           
.L142:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t78	a	0
	mov r5,#0                                         	@IRInst:bgt	%t78	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t78	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t78	a	0
	movle r6,#0                                       	@IRInst:bgt	%t78	a	0
	str r6,[fp,#312]                                  	@IRInst:bgt	%t78	a	0
	bgt .L149                                         
	b .L147                                           
.L149:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t79	a	65
	mov r5,#65                                        	@IRInst:blt	%t79	a	65
	cmp r4,r5                                         	@IRInst:blt	%t79	a	65
	movlt r6,#1                                       	@IRInst:blt	%t79	a	65
	movge r6,#0                                       	@IRInst:blt	%t79	a	65
	str r6,[fp,#316]                                  	@IRInst:blt	%t79	a	65
	blt .L146                                         
	b .L147                                           
.L146:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t80	a	0
	mov r5,#0                                         	@IRInst:bgt	%t80	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t80	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t80	a	0
	movle r6,#0                                       	@IRInst:bgt	%t80	a	0
	str r6,[fp,#320]                                  	@IRInst:bgt	%t80	a	0
	bgt .L153                                         
	b .L151                                           
.L153:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t81	a	64
	mov r5,#64                                        	@IRInst:blt	%t81	a	64
	cmp r4,r5                                         	@IRInst:blt	%t81	a	64
	movlt r6,#1                                       	@IRInst:blt	%t81	a	64
	movge r6,#0                                       	@IRInst:blt	%t81	a	64
	str r6,[fp,#324]                                  	@IRInst:blt	%t81	a	64
	blt .L150                                         
	b .L151                                           
.L150:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t82	a	0
	mov r5,#0                                         	@IRInst:bgt	%t82	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t82	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t82	a	0
	movle r6,#0                                       	@IRInst:bgt	%t82	a	0
	str r6,[fp,#328]                                  	@IRInst:bgt	%t82	a	0
	bgt .L157                                         
	b .L155                                           
.L157:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t83	a	63
	mov r5,#63                                        	@IRInst:blt	%t83	a	63
	cmp r4,r5                                         	@IRInst:blt	%t83	a	63
	movlt r6,#1                                       	@IRInst:blt	%t83	a	63
	movge r6,#0                                       	@IRInst:blt	%t83	a	63
	str r6,[fp,#332]                                  	@IRInst:blt	%t83	a	63
	blt .L154                                         
	b .L155                                           
.L154:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t84	a	0
	mov r5,#0                                         	@IRInst:bgt	%t84	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t84	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t84	a	0
	movle r6,#0                                       	@IRInst:bgt	%t84	a	0
	str r6,[fp,#336]                                  	@IRInst:bgt	%t84	a	0
	bgt .L161                                         
	b .L159                                           
.L161:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t85	a	62
	mov r5,#62                                        	@IRInst:blt	%t85	a	62
	cmp r4,r5                                         	@IRInst:blt	%t85	a	62
	movlt r6,#1                                       	@IRInst:blt	%t85	a	62
	movge r6,#0                                       	@IRInst:blt	%t85	a	62
	str r6,[fp,#340]                                  	@IRInst:blt	%t85	a	62
	blt .L158                                         
	b .L159                                           
.L158:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t86	a	0
	mov r5,#0                                         	@IRInst:bgt	%t86	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t86	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t86	a	0
	movle r6,#0                                       	@IRInst:bgt	%t86	a	0
	str r6,[fp,#344]                                  	@IRInst:bgt	%t86	a	0
	bgt .L165                                         
	b .L163                                           
.L165:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t87	a	61
	mov r5,#61                                        	@IRInst:blt	%t87	a	61
	cmp r4,r5                                         	@IRInst:blt	%t87	a	61
	movlt r6,#1                                       	@IRInst:blt	%t87	a	61
	movge r6,#0                                       	@IRInst:blt	%t87	a	61
	str r6,[fp,#348]                                  	@IRInst:blt	%t87	a	61
	blt .L162                                         
	b .L163                                           
.L162:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t88	a	0
	mov r5,#0                                         	@IRInst:bgt	%t88	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t88	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t88	a	0
	movle r6,#0                                       	@IRInst:bgt	%t88	a	0
	str r6,[fp,#352]                                  	@IRInst:bgt	%t88	a	0
	bgt .L169                                         
	b .L167                                           
.L169:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t89	a	60
	mov r5,#60                                        	@IRInst:blt	%t89	a	60
	cmp r4,r5                                         	@IRInst:blt	%t89	a	60
	movlt r6,#1                                       	@IRInst:blt	%t89	a	60
	movge r6,#0                                       	@IRInst:blt	%t89	a	60
	str r6,[fp,#356]                                  	@IRInst:blt	%t89	a	60
	blt .L166                                         
	b .L167                                           
.L166:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t90	a	0
	mov r5,#0                                         	@IRInst:bgt	%t90	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t90	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t90	a	0
	movle r6,#0                                       	@IRInst:bgt	%t90	a	0
	str r6,[fp,#360]                                  	@IRInst:bgt	%t90	a	0
	bgt .L173                                         
	b .L171                                           
.L173:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t91	a	59
	mov r5,#59                                        	@IRInst:blt	%t91	a	59
	cmp r4,r5                                         	@IRInst:blt	%t91	a	59
	movlt r6,#1                                       	@IRInst:blt	%t91	a	59
	movge r6,#0                                       	@IRInst:blt	%t91	a	59
	str r6,[fp,#364]                                  	@IRInst:blt	%t91	a	59
	blt .L170                                         
	b .L171                                           
.L170:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t92	a	0
	mov r5,#0                                         	@IRInst:bgt	%t92	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t92	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t92	a	0
	movle r6,#0                                       	@IRInst:bgt	%t92	a	0
	str r6,[fp,#368]                                  	@IRInst:bgt	%t92	a	0
	bgt .L177                                         
	b .L175                                           
.L177:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t93	a	58
	mov r5,#58                                        	@IRInst:blt	%t93	a	58
	cmp r4,r5                                         	@IRInst:blt	%t93	a	58
	movlt r6,#1                                       	@IRInst:blt	%t93	a	58
	movge r6,#0                                       	@IRInst:blt	%t93	a	58
	str r6,[fp,#372]                                  	@IRInst:blt	%t93	a	58
	blt .L174                                         
	b .L175                                           
.L174:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t94	a	0
	mov r5,#0                                         	@IRInst:bgt	%t94	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t94	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t94	a	0
	movle r6,#0                                       	@IRInst:bgt	%t94	a	0
	str r6,[fp,#376]                                  	@IRInst:bgt	%t94	a	0
	bgt .L181                                         
	b .L179                                           
.L181:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t95	a	57
	mov r5,#57                                        	@IRInst:blt	%t95	a	57
	cmp r4,r5                                         	@IRInst:blt	%t95	a	57
	movlt r6,#1                                       	@IRInst:blt	%t95	a	57
	movge r6,#0                                       	@IRInst:blt	%t95	a	57
	str r6,[fp,#380]                                  	@IRInst:blt	%t95	a	57
	blt .L178                                         
	b .L179                                           
.L178:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t96	a	0
	mov r5,#0                                         	@IRInst:bgt	%t96	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t96	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t96	a	0
	movle r6,#0                                       	@IRInst:bgt	%t96	a	0
	str r6,[fp,#384]                                  	@IRInst:bgt	%t96	a	0
	bgt .L185                                         
	b .L183                                           
.L185:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t97	a	56
	mov r5,#56                                        	@IRInst:blt	%t97	a	56
	cmp r4,r5                                         	@IRInst:blt	%t97	a	56
	movlt r6,#1                                       	@IRInst:blt	%t97	a	56
	movge r6,#0                                       	@IRInst:blt	%t97	a	56
	str r6,[fp,#388]                                  	@IRInst:blt	%t97	a	56
	blt .L182                                         
	b .L183                                           
.L182:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t98	a	0
	mov r5,#0                                         	@IRInst:bgt	%t98	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t98	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t98	a	0
	movle r6,#0                                       	@IRInst:bgt	%t98	a	0
	str r6,[fp,#392]                                  	@IRInst:bgt	%t98	a	0
	bgt .L189                                         
	b .L187                                           
.L189:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t99	a	55
	mov r5,#55                                        	@IRInst:blt	%t99	a	55
	cmp r4,r5                                         	@IRInst:blt	%t99	a	55
	movlt r6,#1                                       	@IRInst:blt	%t99	a	55
	movge r6,#0                                       	@IRInst:blt	%t99	a	55
	str r6,[fp,#396]                                  	@IRInst:blt	%t99	a	55
	blt .L186                                         
	b .L187                                           
.L186:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t100	a	0
	mov r5,#0                                         	@IRInst:bgt	%t100	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t100	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t100	a	0
	movle r6,#0                                       	@IRInst:bgt	%t100	a	0
	str r6,[fp,#400]                                  	@IRInst:bgt	%t100	a	0
	bgt .L193                                         
	b .L191                                           
.L193:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t101	a	54
	mov r5,#54                                        	@IRInst:blt	%t101	a	54
	cmp r4,r5                                         	@IRInst:blt	%t101	a	54
	movlt r6,#1                                       	@IRInst:blt	%t101	a	54
	movge r6,#0                                       	@IRInst:blt	%t101	a	54
	str r6,[fp,#404]                                  	@IRInst:blt	%t101	a	54
	blt .L190                                         
	b .L191                                           
.L190:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t102	a	0
	mov r5,#0                                         	@IRInst:bgt	%t102	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t102	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t102	a	0
	movle r6,#0                                       	@IRInst:bgt	%t102	a	0
	str r6,[fp,#408]                                  	@IRInst:bgt	%t102	a	0
	bgt .L197                                         
	b .L195                                           
.L197:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t103	a	53
	mov r5,#53                                        	@IRInst:blt	%t103	a	53
	cmp r4,r5                                         	@IRInst:blt	%t103	a	53
	movlt r6,#1                                       	@IRInst:blt	%t103	a	53
	movge r6,#0                                       	@IRInst:blt	%t103	a	53
	str r6,[fp,#412]                                  	@IRInst:blt	%t103	a	53
	blt .L194                                         
	b .L195                                           
.L194:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t104	a	0
	mov r5,#0                                         	@IRInst:bgt	%t104	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t104	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t104	a	0
	movle r6,#0                                       	@IRInst:bgt	%t104	a	0
	str r6,[fp,#416]                                  	@IRInst:bgt	%t104	a	0
	bgt .L201                                         
	b .L199                                           
.L201:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t105	a	52
	mov r5,#52                                        	@IRInst:blt	%t105	a	52
	cmp r4,r5                                         	@IRInst:blt	%t105	a	52
	movlt r6,#1                                       	@IRInst:blt	%t105	a	52
	movge r6,#0                                       	@IRInst:blt	%t105	a	52
	str r6,[fp,#420]                                  	@IRInst:blt	%t105	a	52
	blt .L198                                         
	b .L199                                           
.L198:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t106	a	0
	mov r5,#0                                         	@IRInst:bgt	%t106	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t106	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t106	a	0
	movle r6,#0                                       	@IRInst:bgt	%t106	a	0
	str r6,[fp,#424]                                  	@IRInst:bgt	%t106	a	0
	bgt .L205                                         
	b .L203                                           
.L205:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t107	a	51
	mov r5,#51                                        	@IRInst:blt	%t107	a	51
	cmp r4,r5                                         	@IRInst:blt	%t107	a	51
	movlt r6,#1                                       	@IRInst:blt	%t107	a	51
	movge r6,#0                                       	@IRInst:blt	%t107	a	51
	str r6,[fp,#428]                                  	@IRInst:blt	%t107	a	51
	blt .L202                                         
	b .L203                                           
.L202:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t108	a	0
	mov r5,#0                                         	@IRInst:bgt	%t108	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t108	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t108	a	0
	movle r6,#0                                       	@IRInst:bgt	%t108	a	0
	str r6,[fp,#432]                                  	@IRInst:bgt	%t108	a	0
	bgt .L209                                         
	b .L207                                           
.L209:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t109	a	50
	mov r5,#50                                        	@IRInst:blt	%t109	a	50
	cmp r4,r5                                         	@IRInst:blt	%t109	a	50
	movlt r6,#1                                       	@IRInst:blt	%t109	a	50
	movge r6,#0                                       	@IRInst:blt	%t109	a	50
	str r6,[fp,#436]                                  	@IRInst:blt	%t109	a	50
	blt .L206                                         
	b .L207                                           
.L206:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t110	a	0
	mov r5,#0                                         	@IRInst:bgt	%t110	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t110	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t110	a	0
	movle r6,#0                                       	@IRInst:bgt	%t110	a	0
	str r6,[fp,#440]                                  	@IRInst:bgt	%t110	a	0
	bgt .L213                                         
	b .L211                                           
.L213:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t111	a	49
	mov r5,#49                                        	@IRInst:blt	%t111	a	49
	cmp r4,r5                                         	@IRInst:blt	%t111	a	49
	movlt r6,#1                                       	@IRInst:blt	%t111	a	49
	movge r6,#0                                       	@IRInst:blt	%t111	a	49
	str r6,[fp,#444]                                  	@IRInst:blt	%t111	a	49
	blt .L210                                         
	b .L211                                           
.L210:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t112	a	0
	mov r5,#0                                         	@IRInst:bgt	%t112	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t112	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t112	a	0
	movle r6,#0                                       	@IRInst:bgt	%t112	a	0
	str r6,[fp,#448]                                  	@IRInst:bgt	%t112	a	0
	bgt .L217                                         
	b .L215                                           
.L217:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t113	a	48
	mov r5,#48                                        	@IRInst:blt	%t113	a	48
	cmp r4,r5                                         	@IRInst:blt	%t113	a	48
	movlt r6,#1                                       	@IRInst:blt	%t113	a	48
	movge r6,#0                                       	@IRInst:blt	%t113	a	48
	str r6,[fp,#452]                                  	@IRInst:blt	%t113	a	48
	blt .L214                                         
	b .L215                                           
.L214:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t114	a	0
	mov r5,#0                                         	@IRInst:bgt	%t114	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t114	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t114	a	0
	movle r6,#0                                       	@IRInst:bgt	%t114	a	0
	str r6,[fp,#456]                                  	@IRInst:bgt	%t114	a	0
	bgt .L221                                         
	b .L219                                           
.L221:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t115	a	47
	mov r5,#47                                        	@IRInst:blt	%t115	a	47
	cmp r4,r5                                         	@IRInst:blt	%t115	a	47
	movlt r6,#1                                       	@IRInst:blt	%t115	a	47
	movge r6,#0                                       	@IRInst:blt	%t115	a	47
	str r6,[fp,#460]                                  	@IRInst:blt	%t115	a	47
	blt .L218                                         
	b .L219                                           
.L218:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t116	a	0
	mov r5,#0                                         	@IRInst:bgt	%t116	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t116	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t116	a	0
	movle r6,#0                                       	@IRInst:bgt	%t116	a	0
	str r6,[fp,#464]                                  	@IRInst:bgt	%t116	a	0
	bgt .L225                                         
	b .L223                                           
.L225:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t117	a	46
	mov r5,#46                                        	@IRInst:blt	%t117	a	46
	cmp r4,r5                                         	@IRInst:blt	%t117	a	46
	movlt r6,#1                                       	@IRInst:blt	%t117	a	46
	movge r6,#0                                       	@IRInst:blt	%t117	a	46
	str r6,[fp,#468]                                  	@IRInst:blt	%t117	a	46
	blt .L222                                         
	b .L223                                           
.L222:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t118	a	0
	mov r5,#0                                         	@IRInst:bgt	%t118	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t118	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t118	a	0
	movle r6,#0                                       	@IRInst:bgt	%t118	a	0
	str r6,[fp,#472]                                  	@IRInst:bgt	%t118	a	0
	bgt .L229                                         
	b .L227                                           
.L229:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t119	a	45
	mov r5,#45                                        	@IRInst:blt	%t119	a	45
	cmp r4,r5                                         	@IRInst:blt	%t119	a	45
	movlt r6,#1                                       	@IRInst:blt	%t119	a	45
	movge r6,#0                                       	@IRInst:blt	%t119	a	45
	str r6,[fp,#476]                                  	@IRInst:blt	%t119	a	45
	blt .L226                                         
	b .L227                                           
.L226:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t120	a	0
	mov r5,#0                                         	@IRInst:bgt	%t120	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t120	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t120	a	0
	movle r6,#0                                       	@IRInst:bgt	%t120	a	0
	str r6,[fp,#480]                                  	@IRInst:bgt	%t120	a	0
	bgt .L233                                         
	b .L231                                           
.L233:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t121	a	44
	mov r5,#44                                        	@IRInst:blt	%t121	a	44
	cmp r4,r5                                         	@IRInst:blt	%t121	a	44
	movlt r6,#1                                       	@IRInst:blt	%t121	a	44
	movge r6,#0                                       	@IRInst:blt	%t121	a	44
	str r6,[fp,#484]                                  	@IRInst:blt	%t121	a	44
	blt .L230                                         
	b .L231                                           
.L230:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t122	a	0
	mov r5,#0                                         	@IRInst:bgt	%t122	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t122	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t122	a	0
	movle r6,#0                                       	@IRInst:bgt	%t122	a	0
	str r6,[fp,#488]                                  	@IRInst:bgt	%t122	a	0
	bgt .L237                                         
	b .L235                                           
.L237:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t123	a	43
	mov r5,#43                                        	@IRInst:blt	%t123	a	43
	cmp r4,r5                                         	@IRInst:blt	%t123	a	43
	movlt r6,#1                                       	@IRInst:blt	%t123	a	43
	movge r6,#0                                       	@IRInst:blt	%t123	a	43
	str r6,[fp,#492]                                  	@IRInst:blt	%t123	a	43
	blt .L234                                         
	b .L235                                           
.L234:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t124	a	0
	mov r5,#0                                         	@IRInst:bgt	%t124	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t124	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t124	a	0
	movle r6,#0                                       	@IRInst:bgt	%t124	a	0
	str r6,[fp,#496]                                  	@IRInst:bgt	%t124	a	0
	bgt .L241                                         
	b .L239                                           
.L241:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t125	a	42
	mov r5,#42                                        	@IRInst:blt	%t125	a	42
	cmp r4,r5                                         	@IRInst:blt	%t125	a	42
	movlt r6,#1                                       	@IRInst:blt	%t125	a	42
	movge r6,#0                                       	@IRInst:blt	%t125	a	42
	str r6,[fp,#500]                                  	@IRInst:blt	%t125	a	42
	blt .L238                                         
	b .L239                                           
.L238:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t126	a	0
	mov r5,#0                                         	@IRInst:bgt	%t126	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t126	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t126	a	0
	movle r6,#0                                       	@IRInst:bgt	%t126	a	0
	str r6,[fp,#504]                                  	@IRInst:bgt	%t126	a	0
	bgt .L245                                         
	b .L243                                           
.L245:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t127	a	41
	mov r5,#41                                        	@IRInst:blt	%t127	a	41
	cmp r4,r5                                         	@IRInst:blt	%t127	a	41
	movlt r6,#1                                       	@IRInst:blt	%t127	a	41
	movge r6,#0                                       	@IRInst:blt	%t127	a	41
	str r6,[fp,#508]                                  	@IRInst:blt	%t127	a	41
	blt .L242                                         
	b .L243                                           
.L242:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t128	a	0
	mov r5,#0                                         	@IRInst:bgt	%t128	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t128	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t128	a	0
	movle r6,#0                                       	@IRInst:bgt	%t128	a	0
	str r6,[fp,#512]                                  	@IRInst:bgt	%t128	a	0
	bgt .L249                                         
	b .L247                                           
.L249:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t129	a	40
	mov r5,#40                                        	@IRInst:blt	%t129	a	40
	cmp r4,r5                                         	@IRInst:blt	%t129	a	40
	movlt r6,#1                                       	@IRInst:blt	%t129	a	40
	movge r6,#0                                       	@IRInst:blt	%t129	a	40
	str r6,[fp,#516]                                  	@IRInst:blt	%t129	a	40
	blt .L246                                         
	b .L247                                           
.L246:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t130	a	0
	mov r5,#0                                         	@IRInst:bgt	%t130	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t130	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t130	a	0
	movle r6,#0                                       	@IRInst:bgt	%t130	a	0
	str r6,[fp,#520]                                  	@IRInst:bgt	%t130	a	0
	bgt .L253                                         
	b .L251                                           
.L253:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t131	a	39
	mov r5,#39                                        	@IRInst:blt	%t131	a	39
	cmp r4,r5                                         	@IRInst:blt	%t131	a	39
	movlt r6,#1                                       	@IRInst:blt	%t131	a	39
	movge r6,#0                                       	@IRInst:blt	%t131	a	39
	str r6,[fp,#524]                                  	@IRInst:blt	%t131	a	39
	blt .L250                                         
	b .L251                                           
.L250:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t132	a	0
	mov r5,#0                                         	@IRInst:bgt	%t132	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t132	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t132	a	0
	movle r6,#0                                       	@IRInst:bgt	%t132	a	0
	str r6,[fp,#528]                                  	@IRInst:bgt	%t132	a	0
	bgt .L257                                         
	b .L255                                           
.L257:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t133	a	38
	mov r5,#38                                        	@IRInst:blt	%t133	a	38
	cmp r4,r5                                         	@IRInst:blt	%t133	a	38
	movlt r6,#1                                       	@IRInst:blt	%t133	a	38
	movge r6,#0                                       	@IRInst:blt	%t133	a	38
	str r6,[fp,#532]                                  	@IRInst:blt	%t133	a	38
	blt .L254                                         
	b .L255                                           
.L254:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t134	a	0
	mov r5,#0                                         	@IRInst:bgt	%t134	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t134	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t134	a	0
	movle r6,#0                                       	@IRInst:bgt	%t134	a	0
	str r6,[fp,#536]                                  	@IRInst:bgt	%t134	a	0
	bgt .L261                                         
	b .L259                                           
.L261:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t135	a	37
	mov r5,#37                                        	@IRInst:blt	%t135	a	37
	cmp r4,r5                                         	@IRInst:blt	%t135	a	37
	movlt r6,#1                                       	@IRInst:blt	%t135	a	37
	movge r6,#0                                       	@IRInst:blt	%t135	a	37
	str r6,[fp,#540]                                  	@IRInst:blt	%t135	a	37
	blt .L258                                         
	b .L259                                           
.L258:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t136	a	0
	mov r5,#0                                         	@IRInst:bgt	%t136	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t136	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t136	a	0
	movle r6,#0                                       	@IRInst:bgt	%t136	a	0
	str r6,[fp,#544]                                  	@IRInst:bgt	%t136	a	0
	bgt .L265                                         
	b .L263                                           
.L265:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t137	a	36
	mov r5,#36                                        	@IRInst:blt	%t137	a	36
	cmp r4,r5                                         	@IRInst:blt	%t137	a	36
	movlt r6,#1                                       	@IRInst:blt	%t137	a	36
	movge r6,#0                                       	@IRInst:blt	%t137	a	36
	str r6,[fp,#548]                                  	@IRInst:blt	%t137	a	36
	blt .L262                                         
	b .L263                                           
.L262:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t138	a	0
	mov r5,#0                                         	@IRInst:bgt	%t138	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t138	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t138	a	0
	movle r6,#0                                       	@IRInst:bgt	%t138	a	0
	str r6,[fp,#552]                                  	@IRInst:bgt	%t138	a	0
	bgt .L269                                         
	b .L267                                           
.L269:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t139	a	35
	mov r5,#35                                        	@IRInst:blt	%t139	a	35
	cmp r4,r5                                         	@IRInst:blt	%t139	a	35
	movlt r6,#1                                       	@IRInst:blt	%t139	a	35
	movge r6,#0                                       	@IRInst:blt	%t139	a	35
	str r6,[fp,#556]                                  	@IRInst:blt	%t139	a	35
	blt .L266                                         
	b .L267                                           
.L266:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t140	a	0
	mov r5,#0                                         	@IRInst:bgt	%t140	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t140	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t140	a	0
	movle r6,#0                                       	@IRInst:bgt	%t140	a	0
	str r6,[fp,#560]                                  	@IRInst:bgt	%t140	a	0
	bgt .L273                                         
	b .L271                                           
.L273:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t141	a	34
	mov r5,#34                                        	@IRInst:blt	%t141	a	34
	cmp r4,r5                                         	@IRInst:blt	%t141	a	34
	movlt r6,#1                                       	@IRInst:blt	%t141	a	34
	movge r6,#0                                       	@IRInst:blt	%t141	a	34
	str r6,[fp,#564]                                  	@IRInst:blt	%t141	a	34
	blt .L270                                         
	b .L271                                           
.L270:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t142	a	0
	mov r5,#0                                         	@IRInst:bgt	%t142	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t142	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t142	a	0
	movle r6,#0                                       	@IRInst:bgt	%t142	a	0
	str r6,[fp,#568]                                  	@IRInst:bgt	%t142	a	0
	bgt .L277                                         
	b .L275                                           
.L277:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t143	a	33
	mov r5,#33                                        	@IRInst:blt	%t143	a	33
	cmp r4,r5                                         	@IRInst:blt	%t143	a	33
	movlt r6,#1                                       	@IRInst:blt	%t143	a	33
	movge r6,#0                                       	@IRInst:blt	%t143	a	33
	str r6,[fp,#572]                                  	@IRInst:blt	%t143	a	33
	blt .L274                                         
	b .L275                                           
.L274:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t144	a	0
	mov r5,#0                                         	@IRInst:bgt	%t144	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t144	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t144	a	0
	movle r6,#0                                       	@IRInst:bgt	%t144	a	0
	str r6,[fp,#576]                                  	@IRInst:bgt	%t144	a	0
	bgt .L281                                         
	b .L279                                           
.L281:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t145	a	32
	mov r5,#32                                        	@IRInst:blt	%t145	a	32
	cmp r4,r5                                         	@IRInst:blt	%t145	a	32
	movlt r6,#1                                       	@IRInst:blt	%t145	a	32
	movge r6,#0                                       	@IRInst:blt	%t145	a	32
	str r6,[fp,#580]                                  	@IRInst:blt	%t145	a	32
	blt .L278                                         
	b .L279                                           
.L278:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t146	a	0
	mov r5,#0                                         	@IRInst:bgt	%t146	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t146	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t146	a	0
	movle r6,#0                                       	@IRInst:bgt	%t146	a	0
	str r6,[fp,#584]                                  	@IRInst:bgt	%t146	a	0
	bgt .L285                                         
	b .L283                                           
.L285:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t147	a	31
	mov r5,#31                                        	@IRInst:blt	%t147	a	31
	cmp r4,r5                                         	@IRInst:blt	%t147	a	31
	movlt r6,#1                                       	@IRInst:blt	%t147	a	31
	movge r6,#0                                       	@IRInst:blt	%t147	a	31
	str r6,[fp,#588]                                  	@IRInst:blt	%t147	a	31
	blt .L282                                         
	b .L283                                           
.L282:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t148	a	0
	mov r5,#0                                         	@IRInst:bgt	%t148	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t148	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t148	a	0
	movle r6,#0                                       	@IRInst:bgt	%t148	a	0
	str r6,[fp,#592]                                  	@IRInst:bgt	%t148	a	0
	bgt .L289                                         
	b .L287                                           
.L289:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t149	a	30
	mov r5,#30                                        	@IRInst:blt	%t149	a	30
	cmp r4,r5                                         	@IRInst:blt	%t149	a	30
	movlt r6,#1                                       	@IRInst:blt	%t149	a	30
	movge r6,#0                                       	@IRInst:blt	%t149	a	30
	str r6,[fp,#596]                                  	@IRInst:blt	%t149	a	30
	blt .L286                                         
	b .L287                                           
.L286:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t150	a	0
	mov r5,#0                                         	@IRInst:bgt	%t150	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t150	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t150	a	0
	movle r6,#0                                       	@IRInst:bgt	%t150	a	0
	str r6,[fp,#600]                                  	@IRInst:bgt	%t150	a	0
	bgt .L293                                         
	b .L291                                           
.L293:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t151	a	29
	mov r5,#29                                        	@IRInst:blt	%t151	a	29
	cmp r4,r5                                         	@IRInst:blt	%t151	a	29
	movlt r6,#1                                       	@IRInst:blt	%t151	a	29
	movge r6,#0                                       	@IRInst:blt	%t151	a	29
	str r6,[fp,#604]                                  	@IRInst:blt	%t151	a	29
	blt .L290                                         
	b .L291                                           
.L290:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t152	a	0
	mov r5,#0                                         	@IRInst:bgt	%t152	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t152	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t152	a	0
	movle r6,#0                                       	@IRInst:bgt	%t152	a	0
	str r6,[fp,#608]                                  	@IRInst:bgt	%t152	a	0
	bgt .L297                                         
	b .L295                                           
.L297:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t153	a	28
	mov r5,#28                                        	@IRInst:blt	%t153	a	28
	cmp r4,r5                                         	@IRInst:blt	%t153	a	28
	movlt r6,#1                                       	@IRInst:blt	%t153	a	28
	movge r6,#0                                       	@IRInst:blt	%t153	a	28
	str r6,[fp,#612]                                  	@IRInst:blt	%t153	a	28
	blt .L294                                         
	b .L295                                           
.L294:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t154	a	0
	mov r5,#0                                         	@IRInst:bgt	%t154	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t154	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t154	a	0
	movle r6,#0                                       	@IRInst:bgt	%t154	a	0
	str r6,[fp,#616]                                  	@IRInst:bgt	%t154	a	0
	bgt .L301                                         
	b .L299                                           
.L301:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t155	a	27
	mov r5,#27                                        	@IRInst:blt	%t155	a	27
	cmp r4,r5                                         	@IRInst:blt	%t155	a	27
	movlt r6,#1                                       	@IRInst:blt	%t155	a	27
	movge r6,#0                                       	@IRInst:blt	%t155	a	27
	str r6,[fp,#620]                                  	@IRInst:blt	%t155	a	27
	blt .L298                                         
	b .L299                                           
.L298:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t156	a	0
	mov r5,#0                                         	@IRInst:bgt	%t156	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t156	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t156	a	0
	movle r6,#0                                       	@IRInst:bgt	%t156	a	0
	str r6,[fp,#624]                                  	@IRInst:bgt	%t156	a	0
	bgt .L305                                         
	b .L303                                           
.L305:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t157	a	26
	mov r5,#26                                        	@IRInst:blt	%t157	a	26
	cmp r4,r5                                         	@IRInst:blt	%t157	a	26
	movlt r6,#1                                       	@IRInst:blt	%t157	a	26
	movge r6,#0                                       	@IRInst:blt	%t157	a	26
	str r6,[fp,#628]                                  	@IRInst:blt	%t157	a	26
	blt .L302                                         
	b .L303                                           
.L302:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t158	a	0
	mov r5,#0                                         	@IRInst:bgt	%t158	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t158	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t158	a	0
	movle r6,#0                                       	@IRInst:bgt	%t158	a	0
	str r6,[fp,#632]                                  	@IRInst:bgt	%t158	a	0
	bgt .L309                                         
	b .L307                                           
.L309:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t159	a	25
	mov r5,#25                                        	@IRInst:blt	%t159	a	25
	cmp r4,r5                                         	@IRInst:blt	%t159	a	25
	movlt r6,#1                                       	@IRInst:blt	%t159	a	25
	movge r6,#0                                       	@IRInst:blt	%t159	a	25
	str r6,[fp,#636]                                  	@IRInst:blt	%t159	a	25
	blt .L306                                         
	b .L307                                           
.L306:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t160	a	0
	mov r5,#0                                         	@IRInst:bgt	%t160	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t160	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t160	a	0
	movle r6,#0                                       	@IRInst:bgt	%t160	a	0
	str r6,[fp,#640]                                  	@IRInst:bgt	%t160	a	0
	bgt .L313                                         
	b .L311                                           
.L313:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t161	a	24
	mov r5,#24                                        	@IRInst:blt	%t161	a	24
	cmp r4,r5                                         	@IRInst:blt	%t161	a	24
	movlt r6,#1                                       	@IRInst:blt	%t161	a	24
	movge r6,#0                                       	@IRInst:blt	%t161	a	24
	str r6,[fp,#644]                                  	@IRInst:blt	%t161	a	24
	blt .L310                                         
	b .L311                                           
.L310:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t162	a	0
	mov r5,#0                                         	@IRInst:bgt	%t162	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t162	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t162	a	0
	movle r6,#0                                       	@IRInst:bgt	%t162	a	0
	str r6,[fp,#648]                                  	@IRInst:bgt	%t162	a	0
	bgt .L317                                         
	b .L315                                           
.L317:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t163	a	23
	mov r5,#23                                        	@IRInst:blt	%t163	a	23
	cmp r4,r5                                         	@IRInst:blt	%t163	a	23
	movlt r6,#1                                       	@IRInst:blt	%t163	a	23
	movge r6,#0                                       	@IRInst:blt	%t163	a	23
	str r6,[fp,#652]                                  	@IRInst:blt	%t163	a	23
	blt .L314                                         
	b .L315                                           
.L314:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t164	a	0
	mov r5,#0                                         	@IRInst:bgt	%t164	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t164	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t164	a	0
	movle r6,#0                                       	@IRInst:bgt	%t164	a	0
	str r6,[fp,#656]                                  	@IRInst:bgt	%t164	a	0
	bgt .L321                                         
	b .L319                                           
.L321:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t165	a	22
	mov r5,#22                                        	@IRInst:blt	%t165	a	22
	cmp r4,r5                                         	@IRInst:blt	%t165	a	22
	movlt r6,#1                                       	@IRInst:blt	%t165	a	22
	movge r6,#0                                       	@IRInst:blt	%t165	a	22
	str r6,[fp,#660]                                  	@IRInst:blt	%t165	a	22
	blt .L318                                         
	b .L319                                           
.L318:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t166	a	0
	mov r5,#0                                         	@IRInst:bgt	%t166	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t166	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t166	a	0
	movle r6,#0                                       	@IRInst:bgt	%t166	a	0
	str r6,[fp,#664]                                  	@IRInst:bgt	%t166	a	0
	bgt .L325                                         
	b .L323                                           
.L325:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t167	a	21
	mov r5,#21                                        	@IRInst:blt	%t167	a	21
	cmp r4,r5                                         	@IRInst:blt	%t167	a	21
	movlt r6,#1                                       	@IRInst:blt	%t167	a	21
	movge r6,#0                                       	@IRInst:blt	%t167	a	21
	str r6,[fp,#668]                                  	@IRInst:blt	%t167	a	21
	blt .L322                                         
	b .L323                                           
.L322:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t168	a	0
	mov r5,#0                                         	@IRInst:bgt	%t168	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t168	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t168	a	0
	movle r6,#0                                       	@IRInst:bgt	%t168	a	0
	str r6,[fp,#672]                                  	@IRInst:bgt	%t168	a	0
	bgt .L329                                         
	b .L327                                           
.L329:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t169	a	20
	mov r5,#20                                        	@IRInst:blt	%t169	a	20
	cmp r4,r5                                         	@IRInst:blt	%t169	a	20
	movlt r6,#1                                       	@IRInst:blt	%t169	a	20
	movge r6,#0                                       	@IRInst:blt	%t169	a	20
	str r6,[fp,#676]                                  	@IRInst:blt	%t169	a	20
	blt .L326                                         
	b .L327                                           
.L326:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t170	a	0
	mov r5,#0                                         	@IRInst:bgt	%t170	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t170	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t170	a	0
	movle r6,#0                                       	@IRInst:bgt	%t170	a	0
	str r6,[fp,#680]                                  	@IRInst:bgt	%t170	a	0
	bgt .L333                                         
	b .L331                                           
.L333:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t171	a	19
	mov r5,#19                                        	@IRInst:blt	%t171	a	19
	cmp r4,r5                                         	@IRInst:blt	%t171	a	19
	movlt r6,#1                                       	@IRInst:blt	%t171	a	19
	movge r6,#0                                       	@IRInst:blt	%t171	a	19
	str r6,[fp,#684]                                  	@IRInst:blt	%t171	a	19
	blt .L330                                         
	b .L331                                           
.L330:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t172	a	0
	mov r5,#0                                         	@IRInst:bgt	%t172	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t172	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t172	a	0
	movle r6,#0                                       	@IRInst:bgt	%t172	a	0
	str r6,[fp,#688]                                  	@IRInst:bgt	%t172	a	0
	bgt .L337                                         
	b .L335                                           
.L337:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t173	a	18
	mov r5,#18                                        	@IRInst:blt	%t173	a	18
	cmp r4,r5                                         	@IRInst:blt	%t173	a	18
	movlt r6,#1                                       	@IRInst:blt	%t173	a	18
	movge r6,#0                                       	@IRInst:blt	%t173	a	18
	str r6,[fp,#692]                                  	@IRInst:blt	%t173	a	18
	blt .L334                                         
	b .L335                                           
.L334:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t174	a	0
	mov r5,#0                                         	@IRInst:bgt	%t174	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t174	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t174	a	0
	movle r6,#0                                       	@IRInst:bgt	%t174	a	0
	str r6,[fp,#696]                                  	@IRInst:bgt	%t174	a	0
	bgt .L341                                         
	b .L339                                           
.L341:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t175	a	17
	mov r5,#17                                        	@IRInst:blt	%t175	a	17
	cmp r4,r5                                         	@IRInst:blt	%t175	a	17
	movlt r6,#1                                       	@IRInst:blt	%t175	a	17
	movge r6,#0                                       	@IRInst:blt	%t175	a	17
	str r6,[fp,#700]                                  	@IRInst:blt	%t175	a	17
	blt .L338                                         
	b .L339                                           
.L338:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t176	a	0
	mov r5,#0                                         	@IRInst:bgt	%t176	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t176	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t176	a	0
	movle r6,#0                                       	@IRInst:bgt	%t176	a	0
	str r6,[fp,#704]                                  	@IRInst:bgt	%t176	a	0
	bgt .L345                                         
	b .L343                                           
.L345:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t177	a	16
	mov r5,#16                                        	@IRInst:blt	%t177	a	16
	cmp r4,r5                                         	@IRInst:blt	%t177	a	16
	movlt r6,#1                                       	@IRInst:blt	%t177	a	16
	movge r6,#0                                       	@IRInst:blt	%t177	a	16
	str r6,[fp,#708]                                  	@IRInst:blt	%t177	a	16
	blt .L342                                         
	b .L343                                           
.L342:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t178	a	0
	mov r5,#0                                         	@IRInst:bgt	%t178	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t178	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t178	a	0
	movle r6,#0                                       	@IRInst:bgt	%t178	a	0
	str r6,[fp,#712]                                  	@IRInst:bgt	%t178	a	0
	bgt .L349                                         
	b .L347                                           
.L349:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t179	a	15
	mov r5,#15                                        	@IRInst:blt	%t179	a	15
	cmp r4,r5                                         	@IRInst:blt	%t179	a	15
	movlt r6,#1                                       	@IRInst:blt	%t179	a	15
	movge r6,#0                                       	@IRInst:blt	%t179	a	15
	str r6,[fp,#716]                                  	@IRInst:blt	%t179	a	15
	blt .L346                                         
	b .L347                                           
.L346:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t180	a	0
	mov r5,#0                                         	@IRInst:bgt	%t180	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t180	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t180	a	0
	movle r6,#0                                       	@IRInst:bgt	%t180	a	0
	str r6,[fp,#720]                                  	@IRInst:bgt	%t180	a	0
	bgt .L353                                         
	b .L351                                           
.L353:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t181	a	14
	mov r5,#14                                        	@IRInst:blt	%t181	a	14
	cmp r4,r5                                         	@IRInst:blt	%t181	a	14
	movlt r6,#1                                       	@IRInst:blt	%t181	a	14
	movge r6,#0                                       	@IRInst:blt	%t181	a	14
	str r6,[fp,#724]                                  	@IRInst:blt	%t181	a	14
	blt .L350                                         
	b .L351                                           
.L350:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t182	a	0
	mov r5,#0                                         	@IRInst:bgt	%t182	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t182	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t182	a	0
	movle r6,#0                                       	@IRInst:bgt	%t182	a	0
	str r6,[fp,#728]                                  	@IRInst:bgt	%t182	a	0
	bgt .L357                                         
	b .L355                                           
.L357:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t183	a	13
	mov r5,#13                                        	@IRInst:blt	%t183	a	13
	cmp r4,r5                                         	@IRInst:blt	%t183	a	13
	movlt r6,#1                                       	@IRInst:blt	%t183	a	13
	movge r6,#0                                       	@IRInst:blt	%t183	a	13
	str r6,[fp,#732]                                  	@IRInst:blt	%t183	a	13
	blt .L354                                         
	b .L355                                           
.L354:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t184	a	0
	mov r5,#0                                         	@IRInst:bgt	%t184	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t184	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t184	a	0
	movle r6,#0                                       	@IRInst:bgt	%t184	a	0
	str r6,[fp,#736]                                  	@IRInst:bgt	%t184	a	0
	bgt .L361                                         
	b .L359                                           
.L361:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t185	a	12
	mov r5,#12                                        	@IRInst:blt	%t185	a	12
	cmp r4,r5                                         	@IRInst:blt	%t185	a	12
	movlt r6,#1                                       	@IRInst:blt	%t185	a	12
	movge r6,#0                                       	@IRInst:blt	%t185	a	12
	str r6,[fp,#740]                                  	@IRInst:blt	%t185	a	12
	blt .L358                                         
	b .L359                                           
.L358:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t186	a	0
	mov r5,#0                                         	@IRInst:bgt	%t186	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t186	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t186	a	0
	movle r6,#0                                       	@IRInst:bgt	%t186	a	0
	str r6,[fp,#744]                                  	@IRInst:bgt	%t186	a	0
	bgt .L365                                         
	b .L363                                           
.L365:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t187	a	11
	mov r5,#11                                        	@IRInst:blt	%t187	a	11
	cmp r4,r5                                         	@IRInst:blt	%t187	a	11
	movlt r6,#1                                       	@IRInst:blt	%t187	a	11
	movge r6,#0                                       	@IRInst:blt	%t187	a	11
	str r6,[fp,#748]                                  	@IRInst:blt	%t187	a	11
	blt .L362                                         
	b .L363                                           
.L362:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t188	a	0
	mov r5,#0                                         	@IRInst:bgt	%t188	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t188	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t188	a	0
	movle r6,#0                                       	@IRInst:bgt	%t188	a	0
	str r6,[fp,#752]                                  	@IRInst:bgt	%t188	a	0
	bgt .L369                                         
	b .L367                                           
.L369:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t189	a	10
	mov r5,#10                                        	@IRInst:blt	%t189	a	10
	cmp r4,r5                                         	@IRInst:blt	%t189	a	10
	movlt r6,#1                                       	@IRInst:blt	%t189	a	10
	movge r6,#0                                       	@IRInst:blt	%t189	a	10
	str r6,[fp,#756]                                  	@IRInst:blt	%t189	a	10
	blt .L366                                         
	b .L367                                           
.L366:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t190	a	0
	mov r5,#0                                         	@IRInst:bgt	%t190	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t190	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t190	a	0
	movle r6,#0                                       	@IRInst:bgt	%t190	a	0
	str r6,[fp,#760]                                  	@IRInst:bgt	%t190	a	0
	bgt .L373                                         
	b .L371                                           
.L373:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t191	a	9
	mov r5,#9                                         	@IRInst:blt	%t191	a	9
	cmp r4,r5                                         	@IRInst:blt	%t191	a	9
	movlt r6,#1                                       	@IRInst:blt	%t191	a	9
	movge r6,#0                                       	@IRInst:blt	%t191	a	9
	str r6,[fp,#764]                                  	@IRInst:blt	%t191	a	9
	blt .L370                                         
	b .L371                                           
.L370:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t192	a	0
	mov r5,#0                                         	@IRInst:bgt	%t192	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t192	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t192	a	0
	movle r6,#0                                       	@IRInst:bgt	%t192	a	0
	str r6,[fp,#768]                                  	@IRInst:bgt	%t192	a	0
	bgt .L377                                         
	b .L375                                           
.L377:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t193	a	8
	mov r5,#8                                         	@IRInst:blt	%t193	a	8
	cmp r4,r5                                         	@IRInst:blt	%t193	a	8
	movlt r6,#1                                       	@IRInst:blt	%t193	a	8
	movge r6,#0                                       	@IRInst:blt	%t193	a	8
	str r6,[fp,#772]                                  	@IRInst:blt	%t193	a	8
	blt .L374                                         
	b .L375                                           
.L374:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t194	a	0
	mov r5,#0                                         	@IRInst:bgt	%t194	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t194	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t194	a	0
	movle r6,#0                                       	@IRInst:bgt	%t194	a	0
	str r6,[fp,#776]                                  	@IRInst:bgt	%t194	a	0
	bgt .L381                                         
	b .L379                                           
.L381:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t195	a	7
	mov r5,#7                                         	@IRInst:blt	%t195	a	7
	cmp r4,r5                                         	@IRInst:blt	%t195	a	7
	movlt r6,#1                                       	@IRInst:blt	%t195	a	7
	movge r6,#0                                       	@IRInst:blt	%t195	a	7
	str r6,[fp,#780]                                  	@IRInst:blt	%t195	a	7
	blt .L378                                         
	b .L379                                           
.L378:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t196	a	0
	mov r5,#0                                         	@IRInst:bgt	%t196	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t196	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t196	a	0
	movle r6,#0                                       	@IRInst:bgt	%t196	a	0
	str r6,[fp,#784]                                  	@IRInst:bgt	%t196	a	0
	bgt .L385                                         
	b .L383                                           
.L385:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t197	a	6
	mov r5,#6                                         	@IRInst:blt	%t197	a	6
	cmp r4,r5                                         	@IRInst:blt	%t197	a	6
	movlt r6,#1                                       	@IRInst:blt	%t197	a	6
	movge r6,#0                                       	@IRInst:blt	%t197	a	6
	str r6,[fp,#788]                                  	@IRInst:blt	%t197	a	6
	blt .L382                                         
	b .L383                                           
.L382:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t198	a	0
	mov r5,#0                                         	@IRInst:bgt	%t198	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t198	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t198	a	0
	movle r6,#0                                       	@IRInst:bgt	%t198	a	0
	str r6,[fp,#792]                                  	@IRInst:bgt	%t198	a	0
	bgt .L389                                         
	b .L387                                           
.L389:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t199	a	5
	mov r5,#5                                         	@IRInst:blt	%t199	a	5
	cmp r4,r5                                         	@IRInst:blt	%t199	a	5
	movlt r6,#1                                       	@IRInst:blt	%t199	a	5
	movge r6,#0                                       	@IRInst:blt	%t199	a	5
	str r6,[fp,#796]                                  	@IRInst:blt	%t199	a	5
	blt .L386                                         
	b .L387                                           
.L386:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t200	a	0
	mov r5,#0                                         	@IRInst:bgt	%t200	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t200	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t200	a	0
	movle r6,#0                                       	@IRInst:bgt	%t200	a	0
	str r6,[fp,#800]                                  	@IRInst:bgt	%t200	a	0
	bgt .L393                                         
	b .L391                                           
.L393:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t201	a	4
	mov r5,#4                                         	@IRInst:blt	%t201	a	4
	cmp r4,r5                                         	@IRInst:blt	%t201	a	4
	movlt r6,#1                                       	@IRInst:blt	%t201	a	4
	movge r6,#0                                       	@IRInst:blt	%t201	a	4
	str r6,[fp,#804]                                  	@IRInst:blt	%t201	a	4
	blt .L390                                         
	b .L391                                           
.L390:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t202	a	0
	mov r5,#0                                         	@IRInst:bgt	%t202	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t202	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t202	a	0
	movle r6,#0                                       	@IRInst:bgt	%t202	a	0
	str r6,[fp,#808]                                  	@IRInst:bgt	%t202	a	0
	bgt .L397                                         
	b .L395                                           
.L397:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t203	a	3
	mov r5,#3                                         	@IRInst:blt	%t203	a	3
	cmp r4,r5                                         	@IRInst:blt	%t203	a	3
	movlt r6,#1                                       	@IRInst:blt	%t203	a	3
	movge r6,#0                                       	@IRInst:blt	%t203	a	3
	str r6,[fp,#812]                                  	@IRInst:blt	%t203	a	3
	blt .L394                                         
	b .L395                                           
.L394:
	ldr r4,[fp,#4]                                    	@IRInst:bgt	%t204	a	0
	mov r5,#0                                         	@IRInst:bgt	%t204	a	0
	cmp r4,r5                                         	@IRInst:bgt	%t204	a	0
	movgt r6,#1                                       	@IRInst:bgt	%t204	a	0
	movle r6,#0                                       	@IRInst:bgt	%t204	a	0
	str r6,[fp,#816]                                  	@IRInst:bgt	%t204	a	0
	bgt .L401                                         
	b .L399                                           
.L401:
	ldr r4,[fp,#4]                                    	@IRInst:blt	%t205	a	2
	mov r5,#2                                         	@IRInst:blt	%t205	a	2
	cmp r4,r5                                         	@IRInst:blt	%t205	a	2
	movlt r6,#1                                       	@IRInst:blt	%t205	a	2
	movge r6,#0                                       	@IRInst:blt	%t205	a	2
	str r6,[fp,#820]                                  	@IRInst:blt	%t205	a	2
	blt .L398                                         
	b .L399                                           
.L398:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t206	res	1
	mov r5,#1                                         	@IRInst:add	%t206	res	1
	add r6,r4,r5                                      	@IRInst:add	%t206	res	1
	str r6,[fp,#824]                                  	@IRInst:add	%t206	res	1
	ldr r4,[fp,#824]                                  	@IRInst:assign	res	%t206
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t206
	b .L400                                           
.L399:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t207	res	2
	mov r5,#2                                         	@IRInst:add	%t207	res	2
	add r6,r4,r5                                      	@IRInst:add	%t207	res	2
	str r6,[fp,#828]                                  	@IRInst:add	%t207	res	2
	ldr r4,[fp,#828]                                  	@IRInst:assign	res	%t207
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t207
.L400:
	b .L396                                           
.L395:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t208	res	3
	mov r5,#3                                         	@IRInst:add	%t208	res	3
	add r6,r4,r5                                      	@IRInst:add	%t208	res	3
	str r6,[fp,#832]                                  	@IRInst:add	%t208	res	3
	ldr r4,[fp,#832]                                  	@IRInst:assign	res	%t208
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t208
.L396:
	b .L392                                           
.L391:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t209	res	4
	mov r5,#4                                         	@IRInst:add	%t209	res	4
	add r6,r4,r5                                      	@IRInst:add	%t209	res	4
	str r6,[fp,#836]                                  	@IRInst:add	%t209	res	4
	ldr r4,[fp,#836]                                  	@IRInst:assign	res	%t209
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t209
.L392:
	b .L388                                           
.L387:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t210	res	5
	mov r5,#5                                         	@IRInst:add	%t210	res	5
	add r6,r4,r5                                      	@IRInst:add	%t210	res	5
	str r6,[fp,#840]                                  	@IRInst:add	%t210	res	5
	ldr r4,[fp,#840]                                  	@IRInst:assign	res	%t210
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t210
.L388:
	b .L384                                           
.L383:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t211	res	6
	mov r5,#6                                         	@IRInst:add	%t211	res	6
	add r6,r4,r5                                      	@IRInst:add	%t211	res	6
	str r6,[fp,#844]                                  	@IRInst:add	%t211	res	6
	ldr r4,[fp,#844]                                  	@IRInst:assign	res	%t211
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t211
.L384:
	b .L380                                           
.L379:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t212	res	7
	mov r5,#7                                         	@IRInst:add	%t212	res	7
	add r6,r4,r5                                      	@IRInst:add	%t212	res	7
	str r6,[fp,#848]                                  	@IRInst:add	%t212	res	7
	ldr r4,[fp,#848]                                  	@IRInst:assign	res	%t212
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t212
.L380:
	b .L376                                           
.L375:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t213	res	8
	mov r5,#8                                         	@IRInst:add	%t213	res	8
	add r6,r4,r5                                      	@IRInst:add	%t213	res	8
	str r6,[fp,#852]                                  	@IRInst:add	%t213	res	8
	ldr r4,[fp,#852]                                  	@IRInst:assign	res	%t213
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t213
.L376:
	b .L372                                           
.L371:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t214	res	9
	mov r5,#9                                         	@IRInst:add	%t214	res	9
	add r6,r4,r5                                      	@IRInst:add	%t214	res	9
	str r6,[fp,#856]                                  	@IRInst:add	%t214	res	9
	ldr r4,[fp,#856]                                  	@IRInst:assign	res	%t214
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t214
.L372:
	b .L368                                           
.L367:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t215	res	10
	mov r5,#10                                        	@IRInst:add	%t215	res	10
	add r6,r4,r5                                      	@IRInst:add	%t215	res	10
	str r6,[fp,#860]                                  	@IRInst:add	%t215	res	10
	ldr r4,[fp,#860]                                  	@IRInst:assign	res	%t215
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t215
.L368:
	b .L364                                           
.L363:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t216	res	11
	mov r5,#11                                        	@IRInst:add	%t216	res	11
	add r6,r4,r5                                      	@IRInst:add	%t216	res	11
	str r6,[fp,#864]                                  	@IRInst:add	%t216	res	11
	ldr r4,[fp,#864]                                  	@IRInst:assign	res	%t216
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t216
.L364:
	b .L360                                           
.L359:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t217	res	12
	mov r5,#12                                        	@IRInst:add	%t217	res	12
	add r6,r4,r5                                      	@IRInst:add	%t217	res	12
	str r6,[fp,#868]                                  	@IRInst:add	%t217	res	12
	ldr r4,[fp,#868]                                  	@IRInst:assign	res	%t217
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t217
.L360:
	b .L356                                           
.L355:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t218	res	13
	mov r5,#13                                        	@IRInst:add	%t218	res	13
	add r6,r4,r5                                      	@IRInst:add	%t218	res	13
	str r6,[fp,#872]                                  	@IRInst:add	%t218	res	13
	ldr r4,[fp,#872]                                  	@IRInst:assign	res	%t218
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t218
.L356:
	b .L352                                           
.L351:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t219	res	14
	mov r5,#14                                        	@IRInst:add	%t219	res	14
	add r6,r4,r5                                      	@IRInst:add	%t219	res	14
	str r6,[fp,#876]                                  	@IRInst:add	%t219	res	14
	ldr r4,[fp,#876]                                  	@IRInst:assign	res	%t219
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t219
.L352:
	b .L348                                           
.L347:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t220	res	15
	mov r5,#15                                        	@IRInst:add	%t220	res	15
	add r6,r4,r5                                      	@IRInst:add	%t220	res	15
	str r6,[fp,#880]                                  	@IRInst:add	%t220	res	15
	ldr r4,[fp,#880]                                  	@IRInst:assign	res	%t220
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t220
.L348:
	b .L344                                           
.L343:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t221	res	16
	mov r5,#16                                        	@IRInst:add	%t221	res	16
	add r6,r4,r5                                      	@IRInst:add	%t221	res	16
	str r6,[fp,#884]                                  	@IRInst:add	%t221	res	16
	ldr r4,[fp,#884]                                  	@IRInst:assign	res	%t221
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t221
.L344:
	b .L340                                           
.L339:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t222	res	17
	mov r5,#17                                        	@IRInst:add	%t222	res	17
	add r6,r4,r5                                      	@IRInst:add	%t222	res	17
	str r6,[fp,#888]                                  	@IRInst:add	%t222	res	17
	ldr r4,[fp,#888]                                  	@IRInst:assign	res	%t222
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t222
.L340:
	b .L336                                           
.L335:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t223	res	18
	mov r5,#18                                        	@IRInst:add	%t223	res	18
	add r6,r4,r5                                      	@IRInst:add	%t223	res	18
	str r6,[fp,#892]                                  	@IRInst:add	%t223	res	18
	ldr r4,[fp,#892]                                  	@IRInst:assign	res	%t223
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t223
.L336:
	b .L332                                           
.L331:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t224	res	19
	mov r5,#19                                        	@IRInst:add	%t224	res	19
	add r6,r4,r5                                      	@IRInst:add	%t224	res	19
	str r6,[fp,#896]                                  	@IRInst:add	%t224	res	19
	ldr r4,[fp,#896]                                  	@IRInst:assign	res	%t224
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t224
.L332:
	b .L328                                           
.L327:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t225	res	20
	mov r5,#20                                        	@IRInst:add	%t225	res	20
	add r6,r4,r5                                      	@IRInst:add	%t225	res	20
	str r6,[fp,#900]                                  	@IRInst:add	%t225	res	20
	ldr r4,[fp,#900]                                  	@IRInst:assign	res	%t225
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t225
.L328:
	b .L324                                           
.L323:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t226	res	21
	mov r5,#21                                        	@IRInst:add	%t226	res	21
	add r6,r4,r5                                      	@IRInst:add	%t226	res	21
	str r6,[fp,#904]                                  	@IRInst:add	%t226	res	21
	ldr r4,[fp,#904]                                  	@IRInst:assign	res	%t226
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t226
.L324:
	b .L320                                           
.L319:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t227	res	22
	mov r5,#22                                        	@IRInst:add	%t227	res	22
	add r6,r4,r5                                      	@IRInst:add	%t227	res	22
	str r6,[fp,#908]                                  	@IRInst:add	%t227	res	22
	ldr r4,[fp,#908]                                  	@IRInst:assign	res	%t227
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t227
.L320:
	b .L316                                           
.L315:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t228	res	23
	mov r5,#23                                        	@IRInst:add	%t228	res	23
	add r6,r4,r5                                      	@IRInst:add	%t228	res	23
	str r6,[fp,#912]                                  	@IRInst:add	%t228	res	23
	ldr r4,[fp,#912]                                  	@IRInst:assign	res	%t228
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t228
.L316:
	b .L312                                           
.L311:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t229	res	24
	mov r5,#24                                        	@IRInst:add	%t229	res	24
	add r6,r4,r5                                      	@IRInst:add	%t229	res	24
	str r6,[fp,#916]                                  	@IRInst:add	%t229	res	24
	ldr r4,[fp,#916]                                  	@IRInst:assign	res	%t229
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t229
.L312:
	b .L308                                           
.L307:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t230	res	25
	mov r5,#25                                        	@IRInst:add	%t230	res	25
	add r6,r4,r5                                      	@IRInst:add	%t230	res	25
	str r6,[fp,#920]                                  	@IRInst:add	%t230	res	25
	ldr r4,[fp,#920]                                  	@IRInst:assign	res	%t230
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t230
.L308:
	b .L304                                           
.L303:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t231	res	26
	mov r5,#26                                        	@IRInst:add	%t231	res	26
	add r6,r4,r5                                      	@IRInst:add	%t231	res	26
	str r6,[fp,#924]                                  	@IRInst:add	%t231	res	26
	ldr r4,[fp,#924]                                  	@IRInst:assign	res	%t231
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t231
.L304:
	b .L300                                           
.L299:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t232	res	27
	mov r5,#27                                        	@IRInst:add	%t232	res	27
	add r6,r4,r5                                      	@IRInst:add	%t232	res	27
	str r6,[fp,#928]                                  	@IRInst:add	%t232	res	27
	ldr r4,[fp,#928]                                  	@IRInst:assign	res	%t232
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t232
.L300:
	b .L296                                           
.L295:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t233	res	28
	mov r5,#28                                        	@IRInst:add	%t233	res	28
	add r6,r4,r5                                      	@IRInst:add	%t233	res	28
	str r6,[fp,#932]                                  	@IRInst:add	%t233	res	28
	ldr r4,[fp,#932]                                  	@IRInst:assign	res	%t233
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t233
.L296:
	b .L292                                           
.L291:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t234	res	29
	mov r5,#29                                        	@IRInst:add	%t234	res	29
	add r6,r4,r5                                      	@IRInst:add	%t234	res	29
	str r6,[fp,#936]                                  	@IRInst:add	%t234	res	29
	ldr r4,[fp,#936]                                  	@IRInst:assign	res	%t234
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t234
.L292:
	b .L288                                           
.L287:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t235	res	30
	mov r5,#30                                        	@IRInst:add	%t235	res	30
	add r6,r4,r5                                      	@IRInst:add	%t235	res	30
	str r6,[fp,#940]                                  	@IRInst:add	%t235	res	30
	ldr r4,[fp,#940]                                  	@IRInst:assign	res	%t235
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t235
.L288:
	b .L284                                           
.L283:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t236	res	31
	mov r5,#31                                        	@IRInst:add	%t236	res	31
	add r6,r4,r5                                      	@IRInst:add	%t236	res	31
	str r6,[fp,#944]                                  	@IRInst:add	%t236	res	31
	ldr r4,[fp,#944]                                  	@IRInst:assign	res	%t236
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t236
.L284:
	b .L280                                           
.L279:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t237	res	32
	mov r5,#32                                        	@IRInst:add	%t237	res	32
	add r6,r4,r5                                      	@IRInst:add	%t237	res	32
	str r6,[fp,#948]                                  	@IRInst:add	%t237	res	32
	ldr r4,[fp,#948]                                  	@IRInst:assign	res	%t237
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t237
.L280:
	b .L276                                           
.L275:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t238	res	33
	mov r5,#33                                        	@IRInst:add	%t238	res	33
	add r6,r4,r5                                      	@IRInst:add	%t238	res	33
	str r6,[fp,#952]                                  	@IRInst:add	%t238	res	33
	ldr r4,[fp,#952]                                  	@IRInst:assign	res	%t238
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t238
.L276:
	b .L272                                           
.L271:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t239	res	34
	mov r5,#34                                        	@IRInst:add	%t239	res	34
	add r6,r4,r5                                      	@IRInst:add	%t239	res	34
	str r6,[fp,#956]                                  	@IRInst:add	%t239	res	34
	ldr r4,[fp,#956]                                  	@IRInst:assign	res	%t239
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t239
.L272:
	b .L268                                           
.L267:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t240	res	35
	mov r5,#35                                        	@IRInst:add	%t240	res	35
	add r6,r4,r5                                      	@IRInst:add	%t240	res	35
	str r6,[fp,#960]                                  	@IRInst:add	%t240	res	35
	ldr r4,[fp,#960]                                  	@IRInst:assign	res	%t240
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t240
.L268:
	b .L264                                           
.L263:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t241	res	36
	mov r5,#36                                        	@IRInst:add	%t241	res	36
	add r6,r4,r5                                      	@IRInst:add	%t241	res	36
	str r6,[fp,#964]                                  	@IRInst:add	%t241	res	36
	ldr r4,[fp,#964]                                  	@IRInst:assign	res	%t241
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t241
.L264:
	b .L260                                           
.L259:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t242	res	37
	mov r5,#37                                        	@IRInst:add	%t242	res	37
	add r6,r4,r5                                      	@IRInst:add	%t242	res	37
	str r6,[fp,#968]                                  	@IRInst:add	%t242	res	37
	ldr r4,[fp,#968]                                  	@IRInst:assign	res	%t242
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t242
.L260:
	b .L256                                           
.L255:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t243	res	38
	mov r5,#38                                        	@IRInst:add	%t243	res	38
	add r6,r4,r5                                      	@IRInst:add	%t243	res	38
	str r6,[fp,#972]                                  	@IRInst:add	%t243	res	38
	ldr r4,[fp,#972]                                  	@IRInst:assign	res	%t243
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t243
.L256:
	b .L252                                           
.L251:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t244	res	39
	mov r5,#39                                        	@IRInst:add	%t244	res	39
	add r6,r4,r5                                      	@IRInst:add	%t244	res	39
	str r6,[fp,#976]                                  	@IRInst:add	%t244	res	39
	ldr r4,[fp,#976]                                  	@IRInst:assign	res	%t244
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t244
.L252:
	b .L248                                           
.L247:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t245	res	40
	mov r5,#40                                        	@IRInst:add	%t245	res	40
	add r6,r4,r5                                      	@IRInst:add	%t245	res	40
	str r6,[fp,#980]                                  	@IRInst:add	%t245	res	40
	ldr r4,[fp,#980]                                  	@IRInst:assign	res	%t245
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t245
.L248:
	b .L244                                           
.L243:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t246	res	41
	mov r5,#41                                        	@IRInst:add	%t246	res	41
	add r6,r4,r5                                      	@IRInst:add	%t246	res	41
	str r6,[fp,#984]                                  	@IRInst:add	%t246	res	41
	ldr r4,[fp,#984]                                  	@IRInst:assign	res	%t246
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t246
.L244:
	b .L240                                           
.L239:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t247	res	42
	mov r5,#42                                        	@IRInst:add	%t247	res	42
	add r6,r4,r5                                      	@IRInst:add	%t247	res	42
	str r6,[fp,#988]                                  	@IRInst:add	%t247	res	42
	ldr r4,[fp,#988]                                  	@IRInst:assign	res	%t247
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t247
.L240:
	b .L236                                           
.L235:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t248	res	43
	mov r5,#43                                        	@IRInst:add	%t248	res	43
	add r6,r4,r5                                      	@IRInst:add	%t248	res	43
	str r6,[fp,#992]                                  	@IRInst:add	%t248	res	43
	ldr r4,[fp,#992]                                  	@IRInst:assign	res	%t248
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t248
.L236:
	b .L232                                           
.L231:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t249	res	44
	mov r5,#44                                        	@IRInst:add	%t249	res	44
	add r6,r4,r5                                      	@IRInst:add	%t249	res	44
	str r6,[fp,#996]                                  	@IRInst:add	%t249	res	44
	ldr r4,[fp,#996]                                  	@IRInst:assign	res	%t249
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t249
.L232:
	b .L228                                           
.L227:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t250	res	45
	mov r5,#45                                        	@IRInst:add	%t250	res	45
	add r6,r4,r5                                      	@IRInst:add	%t250	res	45
	str r6,[fp,#1000]                                 	@IRInst:add	%t250	res	45
	ldr r4,[fp,#1000]                                 	@IRInst:assign	res	%t250
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t250
.L228:
	b .L224                                           
.L223:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t251	res	46
	mov r5,#46                                        	@IRInst:add	%t251	res	46
	add r6,r4,r5                                      	@IRInst:add	%t251	res	46
	str r6,[fp,#1004]                                 	@IRInst:add	%t251	res	46
	ldr r4,[fp,#1004]                                 	@IRInst:assign	res	%t251
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t251
.L224:
	b .L220                                           
.L219:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t252	res	47
	mov r5,#47                                        	@IRInst:add	%t252	res	47
	add r6,r4,r5                                      	@IRInst:add	%t252	res	47
	str r6,[fp,#1008]                                 	@IRInst:add	%t252	res	47
	ldr r4,[fp,#1008]                                 	@IRInst:assign	res	%t252
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t252
.L220:
	b .L216                                           
.L215:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t253	res	48
	mov r5,#48                                        	@IRInst:add	%t253	res	48
	add r6,r4,r5                                      	@IRInst:add	%t253	res	48
	str r6,[fp,#1012]                                 	@IRInst:add	%t253	res	48
	ldr r4,[fp,#1012]                                 	@IRInst:assign	res	%t253
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t253
.L216:
	b .L212                                           
.L211:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t254	res	49
	mov r5,#49                                        	@IRInst:add	%t254	res	49
	add r6,r4,r5                                      	@IRInst:add	%t254	res	49
	str r6,[fp,#1016]                                 	@IRInst:add	%t254	res	49
	ldr r4,[fp,#1016]                                 	@IRInst:assign	res	%t254
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t254
.L212:
	b .L208                                           
.L207:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t255	res	50
	mov r5,#50                                        	@IRInst:add	%t255	res	50
	add r6,r4,r5                                      	@IRInst:add	%t255	res	50
	str r6,[fp,#1020]                                 	@IRInst:add	%t255	res	50
	ldr r4,[fp,#1020]                                 	@IRInst:assign	res	%t255
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t255
.L208:
	b .L204                                           
.L203:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t256	res	51
	mov r5,#51                                        	@IRInst:add	%t256	res	51
	add r6,r4,r5                                      	@IRInst:add	%t256	res	51
	str r6,[fp,#1024]                                 	@IRInst:add	%t256	res	51
	ldr r4,[fp,#1024]                                 	@IRInst:assign	res	%t256
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t256
.L204:
	b .L200                                           
.L199:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t257	res	52
	mov r5,#52                                        	@IRInst:add	%t257	res	52
	add r6,r4,r5                                      	@IRInst:add	%t257	res	52
	str r6,[fp,#1028]                                 	@IRInst:add	%t257	res	52
	ldr r4,[fp,#1028]                                 	@IRInst:assign	res	%t257
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t257
.L200:
	b .L196                                           
.L195:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t258	res	53
	mov r5,#53                                        	@IRInst:add	%t258	res	53
	add r6,r4,r5                                      	@IRInst:add	%t258	res	53
	str r6,[fp,#1032]                                 	@IRInst:add	%t258	res	53
	ldr r4,[fp,#1032]                                 	@IRInst:assign	res	%t258
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t258
.L196:
	b .L192                                           
.L191:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t259	res	54
	mov r5,#54                                        	@IRInst:add	%t259	res	54
	add r6,r4,r5                                      	@IRInst:add	%t259	res	54
	str r6,[fp,#1036]                                 	@IRInst:add	%t259	res	54
	ldr r4,[fp,#1036]                                 	@IRInst:assign	res	%t259
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t259
.L192:
	b .L188                                           
.L187:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t260	res	55
	mov r5,#55                                        	@IRInst:add	%t260	res	55
	add r6,r4,r5                                      	@IRInst:add	%t260	res	55
	str r6,[fp,#1040]                                 	@IRInst:add	%t260	res	55
	ldr r4,[fp,#1040]                                 	@IRInst:assign	res	%t260
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t260
.L188:
	b .L184                                           
.L183:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t261	res	56
	mov r5,#56                                        	@IRInst:add	%t261	res	56
	add r6,r4,r5                                      	@IRInst:add	%t261	res	56
	str r6,[fp,#1044]                                 	@IRInst:add	%t261	res	56
	ldr r4,[fp,#1044]                                 	@IRInst:assign	res	%t261
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t261
.L184:
	b .L180                                           
.L179:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t262	res	57
	mov r5,#57                                        	@IRInst:add	%t262	res	57
	add r6,r4,r5                                      	@IRInst:add	%t262	res	57
	str r6,[fp,#1048]                                 	@IRInst:add	%t262	res	57
	ldr r4,[fp,#1048]                                 	@IRInst:assign	res	%t262
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t262
.L180:
	b .L176                                           
.L175:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t263	res	58
	mov r5,#58                                        	@IRInst:add	%t263	res	58
	add r6,r4,r5                                      	@IRInst:add	%t263	res	58
	str r6,[fp,#1052]                                 	@IRInst:add	%t263	res	58
	ldr r4,[fp,#1052]                                 	@IRInst:assign	res	%t263
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t263
.L176:
	b .L172                                           
.L171:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t264	res	59
	mov r5,#59                                        	@IRInst:add	%t264	res	59
	add r6,r4,r5                                      	@IRInst:add	%t264	res	59
	str r6,[fp,#1056]                                 	@IRInst:add	%t264	res	59
	ldr r4,[fp,#1056]                                 	@IRInst:assign	res	%t264
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t264
.L172:
	b .L168                                           
.L167:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t265	res	60
	mov r5,#60                                        	@IRInst:add	%t265	res	60
	add r6,r4,r5                                      	@IRInst:add	%t265	res	60
	str r6,[fp,#1060]                                 	@IRInst:add	%t265	res	60
	ldr r4,[fp,#1060]                                 	@IRInst:assign	res	%t265
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t265
.L168:
	b .L164                                           
.L163:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t266	res	61
	mov r5,#61                                        	@IRInst:add	%t266	res	61
	add r6,r4,r5                                      	@IRInst:add	%t266	res	61
	str r6,[fp,#1064]                                 	@IRInst:add	%t266	res	61
	ldr r4,[fp,#1064]                                 	@IRInst:assign	res	%t266
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t266
.L164:
	b .L160                                           
.L159:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t267	res	62
	mov r5,#62                                        	@IRInst:add	%t267	res	62
	add r6,r4,r5                                      	@IRInst:add	%t267	res	62
	str r6,[fp,#1068]                                 	@IRInst:add	%t267	res	62
	ldr r4,[fp,#1068]                                 	@IRInst:assign	res	%t267
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t267
.L160:
	b .L156                                           
.L155:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t268	res	63
	mov r5,#63                                        	@IRInst:add	%t268	res	63
	add r6,r4,r5                                      	@IRInst:add	%t268	res	63
	str r6,[fp,#1072]                                 	@IRInst:add	%t268	res	63
	ldr r4,[fp,#1072]                                 	@IRInst:assign	res	%t268
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t268
.L156:
	b .L152                                           
.L151:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t269	res	64
	mov r5,#64                                        	@IRInst:add	%t269	res	64
	add r6,r4,r5                                      	@IRInst:add	%t269	res	64
	str r6,[fp,#1076]                                 	@IRInst:add	%t269	res	64
	ldr r4,[fp,#1076]                                 	@IRInst:assign	res	%t269
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t269
.L152:
	b .L148                                           
.L147:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t270	res	65
	mov r5,#65                                        	@IRInst:add	%t270	res	65
	add r6,r4,r5                                      	@IRInst:add	%t270	res	65
	str r6,[fp,#1080]                                 	@IRInst:add	%t270	res	65
	ldr r4,[fp,#1080]                                 	@IRInst:assign	res	%t270
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t270
.L148:
	b .L144                                           
.L143:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t271	res	66
	mov r5,#66                                        	@IRInst:add	%t271	res	66
	add r6,r4,r5                                      	@IRInst:add	%t271	res	66
	str r6,[fp,#1084]                                 	@IRInst:add	%t271	res	66
	ldr r4,[fp,#1084]                                 	@IRInst:assign	res	%t271
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t271
.L144:
	b .L140                                           
.L139:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t272	res	67
	mov r5,#67                                        	@IRInst:add	%t272	res	67
	add r6,r4,r5                                      	@IRInst:add	%t272	res	67
	str r6,[fp,#1088]                                 	@IRInst:add	%t272	res	67
	ldr r4,[fp,#1088]                                 	@IRInst:assign	res	%t272
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t272
.L140:
	b .L136                                           
.L135:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t273	res	68
	mov r5,#68                                        	@IRInst:add	%t273	res	68
	add r6,r4,r5                                      	@IRInst:add	%t273	res	68
	str r6,[fp,#1092]                                 	@IRInst:add	%t273	res	68
	ldr r4,[fp,#1092]                                 	@IRInst:assign	res	%t273
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t273
.L136:
	b .L132                                           
.L131:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t274	res	69
	mov r5,#69                                        	@IRInst:add	%t274	res	69
	add r6,r4,r5                                      	@IRInst:add	%t274	res	69
	str r6,[fp,#1096]                                 	@IRInst:add	%t274	res	69
	ldr r4,[fp,#1096]                                 	@IRInst:assign	res	%t274
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t274
.L132:
	b .L128                                           
.L127:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t275	res	70
	mov r5,#70                                        	@IRInst:add	%t275	res	70
	add r6,r4,r5                                      	@IRInst:add	%t275	res	70
	str r6,[fp,#1100]                                 	@IRInst:add	%t275	res	70
	ldr r4,[fp,#1100]                                 	@IRInst:assign	res	%t275
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t275
.L128:
	b .L124                                           
.L123:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t276	res	71
	mov r5,#71                                        	@IRInst:add	%t276	res	71
	add r6,r4,r5                                      	@IRInst:add	%t276	res	71
	str r6,[fp,#1104]                                 	@IRInst:add	%t276	res	71
	ldr r4,[fp,#1104]                                 	@IRInst:assign	res	%t276
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t276
.L124:
	b .L120                                           
.L119:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t277	res	72
	mov r5,#72                                        	@IRInst:add	%t277	res	72
	add r6,r4,r5                                      	@IRInst:add	%t277	res	72
	str r6,[fp,#1108]                                 	@IRInst:add	%t277	res	72
	ldr r4,[fp,#1108]                                 	@IRInst:assign	res	%t277
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t277
.L120:
	b .L116                                           
.L115:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t278	res	73
	mov r5,#73                                        	@IRInst:add	%t278	res	73
	add r6,r4,r5                                      	@IRInst:add	%t278	res	73
	str r6,[fp,#1112]                                 	@IRInst:add	%t278	res	73
	ldr r4,[fp,#1112]                                 	@IRInst:assign	res	%t278
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t278
.L116:
	b .L112                                           
.L111:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t279	res	74
	mov r5,#74                                        	@IRInst:add	%t279	res	74
	add r6,r4,r5                                      	@IRInst:add	%t279	res	74
	str r6,[fp,#1116]                                 	@IRInst:add	%t279	res	74
	ldr r4,[fp,#1116]                                 	@IRInst:assign	res	%t279
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t279
.L112:
	b .L108                                           
.L107:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t280	res	75
	mov r5,#75                                        	@IRInst:add	%t280	res	75
	add r6,r4,r5                                      	@IRInst:add	%t280	res	75
	str r6,[fp,#1120]                                 	@IRInst:add	%t280	res	75
	ldr r4,[fp,#1120]                                 	@IRInst:assign	res	%t280
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t280
.L108:
	b .L104                                           
.L103:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t281	res	76
	mov r5,#76                                        	@IRInst:add	%t281	res	76
	add r6,r4,r5                                      	@IRInst:add	%t281	res	76
	str r6,[fp,#1124]                                 	@IRInst:add	%t281	res	76
	ldr r4,[fp,#1124]                                 	@IRInst:assign	res	%t281
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t281
.L104:
	b .L100                                           
.L99:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t282	res	77
	mov r5,#77                                        	@IRInst:add	%t282	res	77
	add r6,r4,r5                                      	@IRInst:add	%t282	res	77
	str r6,[fp,#1128]                                 	@IRInst:add	%t282	res	77
	ldr r4,[fp,#1128]                                 	@IRInst:assign	res	%t282
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t282
.L100:
	b .L96                                            
.L95:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t283	res	78
	mov r5,#78                                        	@IRInst:add	%t283	res	78
	add r6,r4,r5                                      	@IRInst:add	%t283	res	78
	str r6,[fp,#1132]                                 	@IRInst:add	%t283	res	78
	ldr r4,[fp,#1132]                                 	@IRInst:assign	res	%t283
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t283
.L96:
	b .L92                                            
.L91:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t284	res	79
	mov r5,#79                                        	@IRInst:add	%t284	res	79
	add r6,r4,r5                                      	@IRInst:add	%t284	res	79
	str r6,[fp,#1136]                                 	@IRInst:add	%t284	res	79
	ldr r4,[fp,#1136]                                 	@IRInst:assign	res	%t284
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t284
.L92:
	b .L88                                            
.L87:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t285	res	80
	mov r5,#80                                        	@IRInst:add	%t285	res	80
	add r6,r4,r5                                      	@IRInst:add	%t285	res	80
	str r6,[fp,#1140]                                 	@IRInst:add	%t285	res	80
	ldr r4,[fp,#1140]                                 	@IRInst:assign	res	%t285
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t285
.L88:
	b .L84                                            
.L83:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t286	res	81
	mov r5,#81                                        	@IRInst:add	%t286	res	81
	add r6,r4,r5                                      	@IRInst:add	%t286	res	81
	str r6,[fp,#1144]                                 	@IRInst:add	%t286	res	81
	ldr r4,[fp,#1144]                                 	@IRInst:assign	res	%t286
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t286
.L84:
	b .L80                                            
.L79:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t287	res	82
	mov r5,#82                                        	@IRInst:add	%t287	res	82
	add r6,r4,r5                                      	@IRInst:add	%t287	res	82
	str r6,[fp,#1148]                                 	@IRInst:add	%t287	res	82
	ldr r4,[fp,#1148]                                 	@IRInst:assign	res	%t287
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t287
.L80:
	b .L76                                            
.L75:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t288	res	83
	mov r5,#83                                        	@IRInst:add	%t288	res	83
	add r6,r4,r5                                      	@IRInst:add	%t288	res	83
	str r6,[fp,#1152]                                 	@IRInst:add	%t288	res	83
	ldr r4,[fp,#1152]                                 	@IRInst:assign	res	%t288
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t288
.L76:
	b .L72                                            
.L71:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t289	res	84
	mov r5,#84                                        	@IRInst:add	%t289	res	84
	add r6,r4,r5                                      	@IRInst:add	%t289	res	84
	str r6,[fp,#1156]                                 	@IRInst:add	%t289	res	84
	ldr r4,[fp,#1156]                                 	@IRInst:assign	res	%t289
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t289
.L72:
	b .L68                                            
.L67:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t290	res	85
	mov r5,#85                                        	@IRInst:add	%t290	res	85
	add r6,r4,r5                                      	@IRInst:add	%t290	res	85
	str r6,[fp,#1160]                                 	@IRInst:add	%t290	res	85
	ldr r4,[fp,#1160]                                 	@IRInst:assign	res	%t290
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t290
.L68:
	b .L64                                            
.L63:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t291	res	86
	mov r5,#86                                        	@IRInst:add	%t291	res	86
	add r6,r4,r5                                      	@IRInst:add	%t291	res	86
	str r6,[fp,#1164]                                 	@IRInst:add	%t291	res	86
	ldr r4,[fp,#1164]                                 	@IRInst:assign	res	%t291
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t291
.L64:
	b .L60                                            
.L59:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t292	res	87
	mov r5,#87                                        	@IRInst:add	%t292	res	87
	add r6,r4,r5                                      	@IRInst:add	%t292	res	87
	str r6,[fp,#1168]                                 	@IRInst:add	%t292	res	87
	ldr r4,[fp,#1168]                                 	@IRInst:assign	res	%t292
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t292
.L60:
	b .L56                                            
.L55:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t293	res	88
	mov r5,#88                                        	@IRInst:add	%t293	res	88
	add r6,r4,r5                                      	@IRInst:add	%t293	res	88
	str r6,[fp,#1172]                                 	@IRInst:add	%t293	res	88
	ldr r4,[fp,#1172]                                 	@IRInst:assign	res	%t293
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t293
.L56:
	b .L52                                            
.L51:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t294	res	89
	mov r5,#89                                        	@IRInst:add	%t294	res	89
	add r6,r4,r5                                      	@IRInst:add	%t294	res	89
	str r6,[fp,#1176]                                 	@IRInst:add	%t294	res	89
	ldr r4,[fp,#1176]                                 	@IRInst:assign	res	%t294
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t294
.L52:
	b .L48                                            
.L47:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t295	res	90
	mov r5,#90                                        	@IRInst:add	%t295	res	90
	add r6,r4,r5                                      	@IRInst:add	%t295	res	90
	str r6,[fp,#1180]                                 	@IRInst:add	%t295	res	90
	ldr r4,[fp,#1180]                                 	@IRInst:assign	res	%t295
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t295
.L48:
	b .L44                                            
.L43:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t296	res	91
	mov r5,#91                                        	@IRInst:add	%t296	res	91
	add r6,r4,r5                                      	@IRInst:add	%t296	res	91
	str r6,[fp,#1184]                                 	@IRInst:add	%t296	res	91
	ldr r4,[fp,#1184]                                 	@IRInst:assign	res	%t296
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t296
.L44:
	b .L40                                            
.L39:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t297	res	92
	mov r5,#92                                        	@IRInst:add	%t297	res	92
	add r6,r4,r5                                      	@IRInst:add	%t297	res	92
	str r6,[fp,#1188]                                 	@IRInst:add	%t297	res	92
	ldr r4,[fp,#1188]                                 	@IRInst:assign	res	%t297
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t297
.L40:
	b .L36                                            
.L35:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t298	res	93
	mov r5,#93                                        	@IRInst:add	%t298	res	93
	add r6,r4,r5                                      	@IRInst:add	%t298	res	93
	str r6,[fp,#1192]                                 	@IRInst:add	%t298	res	93
	ldr r4,[fp,#1192]                                 	@IRInst:assign	res	%t298
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t298
.L36:
	b .L32                                            
.L31:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t299	res	94
	mov r5,#94                                        	@IRInst:add	%t299	res	94
	add r6,r4,r5                                      	@IRInst:add	%t299	res	94
	str r6,[fp,#1196]                                 	@IRInst:add	%t299	res	94
	ldr r4,[fp,#1196]                                 	@IRInst:assign	res	%t299
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t299
.L32:
	b .L28                                            
.L27:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t300	res	95
	mov r5,#95                                        	@IRInst:add	%t300	res	95
	add r6,r4,r5                                      	@IRInst:add	%t300	res	95
	str r6,[fp,#1200]                                 	@IRInst:add	%t300	res	95
	ldr r4,[fp,#1200]                                 	@IRInst:assign	res	%t300
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t300
.L28:
	b .L24                                            
.L23:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t301	res	96
	mov r5,#96                                        	@IRInst:add	%t301	res	96
	add r6,r4,r5                                      	@IRInst:add	%t301	res	96
	str r6,[fp,#1204]                                 	@IRInst:add	%t301	res	96
	ldr r4,[fp,#1204]                                 	@IRInst:assign	res	%t301
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t301
.L24:
	b .L20                                            
.L19:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t302	res	97
	mov r5,#97                                        	@IRInst:add	%t302	res	97
	add r6,r4,r5                                      	@IRInst:add	%t302	res	97
	str r6,[fp,#1208]                                 	@IRInst:add	%t302	res	97
	ldr r4,[fp,#1208]                                 	@IRInst:assign	res	%t302
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t302
.L20:
	b .L16                                            
.L15:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t303	res	98
	mov r5,#98                                        	@IRInst:add	%t303	res	98
	add r6,r4,r5                                      	@IRInst:add	%t303	res	98
	str r6,[fp,#1212]                                 	@IRInst:add	%t303	res	98
	ldr r4,[fp,#1212]                                 	@IRInst:assign	res	%t303
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t303
.L16:
	b .L12                                            
.L11:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t304	res	99
	mov r5,#99                                        	@IRInst:add	%t304	res	99
	add r6,r4,r5                                      	@IRInst:add	%t304	res	99
	str r6,[fp,#1216]                                 	@IRInst:add	%t304	res	99
	ldr r4,[fp,#1216]                                 	@IRInst:assign	res	%t304
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t304
.L12:
	b .L8                                             
.L7:
	ldr r4,[fp,#8]                                    	@IRInst:add	%t305	res	100
	mov r5,#100                                       	@IRInst:add	%t305	res	100
	add r6,r4,r5                                      	@IRInst:add	%t305	res	100
	str r6,[fp,#1220]                                 	@IRInst:add	%t305	res	100
	ldr r4,[fp,#1220]                                 	@IRInst:assign	res	%t305
	str r4,[fp,#8]                                    	@IRInst:assign	res	%t305
.L8:
	ldr r0,[fp,#8]                                    	@IRInst:assign	r0	res
	bl putint                                         
	mov r0,#10                                        	@IRInst:assign	r0	10
	bl putch                                          
	ldr r4,[fp,#20]                                   	@IRInst:add	%t306	i	1
	mov r5,#1                                         	@IRInst:add	%t306	i	1
	add r6,r4,r5                                      	@IRInst:add	%t306	i	1
	str r6,[fp,#1224]                                 	@IRInst:add	%t306	i	1
	ldr r4,[fp,#1224]                                 	@IRInst:assign	i	%t306
	str r4,[fp,#20]                                   	@IRInst:assign	i	%t306
	b .L3                                             
.L5:
	mov r4,#0                                         	@IRInst:assign		0
	str r4,[fp]                                       	@IRInst:assign		0
	b .L2                                             
.L2:
	ldr r0,[fp]                                       
	add fp,fp,#1024                                   
	add fp,fp,#204                                    
	mov sp,fp                                         
	pop {r10,fp,lr}                                   
	bx lr                                             
