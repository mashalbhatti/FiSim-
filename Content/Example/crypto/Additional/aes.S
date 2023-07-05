	.file	"AES.c"
	.comm	_roundkey, 176, 5
	.text
	.globl	_rotword
	.def	_rotword;	.scl	2;	.type	32;	.endef
_rotword:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	shrl	$24, %eax
	movl	%eax, -4(%ebp)
	sall	$8, 8(%ebp)
	movl	-4(%ebp), %eax
	orl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.data
	.align 32
LC0:
	.byte	99
	.byte	124
	.byte	119
	.byte	123
	.byte	-14
	.byte	107
	.byte	111
	.byte	-59
	.byte	48
	.byte	1
	.byte	103
	.byte	43
	.byte	-2
	.byte	-41
	.byte	-85
	.byte	118
	.byte	-54
	.byte	-126
	.byte	-55
	.byte	125
	.byte	-6
	.byte	89
	.byte	71
	.byte	-16
	.byte	-83
	.byte	-44
	.byte	-94
	.byte	-81
	.byte	-100
	.byte	-92
	.byte	114
	.byte	-64
	.byte	-73
	.byte	-3
	.byte	-109
	.byte	38
	.byte	54
	.byte	63
	.byte	-9
	.byte	-52
	.byte	52
	.byte	-91
	.byte	-27
	.byte	-15
	.byte	113
	.byte	-40
	.byte	49
	.byte	21
	.byte	4
	.byte	-57
	.byte	35
	.byte	-61
	.byte	24
	.byte	-106
	.byte	5
	.byte	-102
	.byte	7
	.byte	18
	.byte	-128
	.byte	-30
	.byte	-21
	.byte	39
	.byte	-78
	.byte	117
	.byte	9
	.byte	-125
	.byte	44
	.byte	26
	.byte	27
	.byte	110
	.byte	90
	.byte	-96
	.byte	82
	.byte	59
	.byte	-42
	.byte	-77
	.byte	41
	.byte	-29
	.byte	47
	.byte	-124
	.byte	83
	.byte	-47
	.byte	0
	.byte	-19
	.byte	32
	.byte	-4
	.byte	-79
	.byte	91
	.byte	106
	.byte	-53
	.byte	-66
	.byte	57
	.byte	74
	.byte	76
	.byte	88
	.byte	-49
	.byte	-48
	.byte	-17
	.byte	-86
	.byte	-5
	.byte	67
	.byte	77
	.byte	51
	.byte	-123
	.byte	69
	.byte	-7
	.byte	2
	.byte	127
	.byte	80
	.byte	60
	.byte	-97
	.byte	-88
	.byte	81
	.byte	-93
	.byte	64
	.byte	-113
	.byte	-110
	.byte	-99
	.byte	56
	.byte	-11
	.byte	-68
	.byte	-74
	.byte	-38
	.byte	33
	.byte	16
	.byte	-1
	.byte	-13
	.byte	-46
	.byte	-51
	.byte	12
	.byte	19
	.byte	-20
	.byte	95
	.byte	-105
	.byte	68
	.byte	23
	.byte	-60
	.byte	-89
	.byte	126
	.byte	61
	.byte	100
	.byte	93
	.byte	25
	.byte	115
	.byte	96
	.byte	-127
	.byte	79
	.byte	-36
	.byte	34
	.byte	42
	.byte	-112
	.byte	-120
	.byte	70
	.byte	-18
	.byte	-72
	.byte	20
	.byte	-34
	.byte	94
	.byte	11
	.byte	-37
	.byte	-32
	.byte	50
	.byte	58
	.byte	10
	.byte	73
	.byte	6
	.byte	36
	.byte	92
	.byte	-62
	.byte	-45
	.byte	-84
	.byte	98
	.byte	-111
	.byte	-107
	.byte	-28
	.byte	121
	.byte	-25
	.byte	-56
	.byte	55
	.byte	109
	.byte	-115
	.byte	-43
	.byte	78
	.byte	-87
	.byte	108
	.byte	86
	.byte	-12
	.byte	-22
	.byte	101
	.byte	122
	.byte	-82
	.byte	8
	.byte	-70
	.byte	120
	.byte	37
	.byte	46
	.byte	28
	.byte	-90
	.byte	-76
	.byte	-58
	.byte	-24
	.byte	-35
	.byte	116
	.byte	31
	.byte	75
	.byte	-67
	.byte	-117
	.byte	-118
	.byte	112
	.byte	62
	.byte	-75
	.byte	102
	.byte	72
	.byte	3
	.byte	-10
	.byte	14
	.byte	97
	.byte	53
	.byte	87
	.byte	-71
	.byte	-122
	.byte	-63
	.byte	29
	.byte	-98
	.byte	-31
	.byte	-8
	.byte	-104
	.byte	17
	.byte	105
	.byte	-39
	.byte	-114
	.byte	-108
	.byte	-101
	.byte	30
	.byte	-121
	.byte	-23
	.byte	-50
	.byte	85
	.byte	40
	.byte	-33
	.byte	-116
	.byte	-95
	.byte	-119
	.byte	13
	.byte	-65
	.byte	-26
	.byte	66
	.byte	104
	.byte	65
	.byte	-103
	.byte	45
	.byte	15
	.byte	-80
	.byte	84
	.byte	-69
	.byte	22
	.text
	.globl	_subword
	.def	_subword;	.scl	2;	.type	32;	.endef
_subword:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$272, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-279(%ebp), %eax
	movl	$LC0, %ebx
	movl	$256, %edx
	movl	(%ebx), %ecx
	movl	%ecx, (%eax)
	movl	-4(%ebx,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	leal	4(%eax), %edi
	andl	$-4, %edi
	subl	%edi, %eax
	subl	%eax, %ebx
	addl	%eax, %edx
	andl	$-4, %edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	jmp	L4
L5:
	sall	$8, -16(%ebp)
	movl	$3, %eax
	subl	-20(%ebp), %eax
	sall	$3, %eax
	movl	8(%ebp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	movb	%al, -21(%ebp)
	movzbl	-21(%ebp), %eax
	shrb	$4, %al
	movb	%al, -22(%ebp)
	movzbl	-21(%ebp), %eax
	andl	$15, %eax
	movb	%al, -23(%ebp)
	movzbl	-22(%ebp), %edx
	movzbl	-23(%ebp), %eax
	sall	$4, %edx
	leal	-12(%ebp), %esi
	addl	%esi, %edx
	addl	%edx, %eax
	subl	$267, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	orl	%eax, -16(%ebp)
	addl	$1, -20(%ebp)
L4:
	cmpl	$3, -20(%ebp)
	jle	L5
	movl	-16(%ebp), %eax
	addl	$272, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_subbyte
	.def	_subbyte;	.scl	2;	.type	32;	.endef
_subbyte:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$272, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-279(%ebp), %eax
	movl	$LC0, %ebx
	movl	$256, %edx
	movl	(%ebx), %ecx
	movl	%ecx, (%eax)
	movl	-4(%ebx,%edx), %ecx
	movl	%ecx, -4(%eax,%edx)
	leal	4(%eax), %edi
	andl	$-4, %edi
	subl	%edi, %eax
	subl	%eax, %ebx
	addl	%eax, %edx
	andl	$-4, %edx
	movl	%edx, %eax
	shrl	$2, %eax
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	$0, -16(%ebp)
	jmp	L8
L11:
	movl	$0, -20(%ebp)
	jmp	L9
L10:
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movzbl	-21(%ebp), %eax
	shrb	$4, %al
	movb	%al, -22(%ebp)
	movzbl	-21(%ebp), %eax
	andl	$15, %eax
	movb	%al, -23(%ebp)
	movl	-16(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movzbl	-22(%ebp), %edx
	movzbl	-23(%ebp), %eax
	sall	$4, %edx
	leal	-12(%ebp), %esi
	addl	%esi, %edx
	addl	%edx, %eax
	subl	$267, %eax
	movzbl	(%eax), %eax
	movl	-20(%ebp), %edx
	addl	%ecx, %edx
	movb	%al, (%edx)
	addl	$1, -20(%ebp)
L9:
	cmpl	$3, -20(%ebp)
	jle	L10
	addl	$1, -16(%ebp)
L8:
	cmpl	$3, -16(%ebp)
	jle	L11
	nop
	addl	$272, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.globl	_shiftrows
	.def	_shiftrows;	.scl	2;	.type	32;	.endef
_shiftrows:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	$1, -4(%ebp)
	jmp	L13
L20:
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	L14
L15:
	movl	-8(%ebp), %eax
	subl	-4(%ebp), %eax
	movl	-4(%ebp), %edx
	leal	0(,%edx,4), %ecx
	movl	8(%ebp), %edx
	addl	%edx, %ecx
	movl	-8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	movzbl	%dl, %edx
	movl	%edx, -32(%ebp,%eax,4)
	addl	$1, -8(%ebp)
L14:
	cmpl	$3, -8(%ebp)
	jle	L15
	movl	$0, -12(%ebp)
	jmp	L16
L17:
	movl	$4, %eax
	subl	-4(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %ecx
	movl	8(%ebp), %eax
	addl	%eax, %ecx
	movl	-12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -32(%ebp,%edx,4)
	addl	$1, -12(%ebp)
L16:
	movl	-12(%ebp), %eax
	cmpl	-4(%ebp), %eax
	jl	L17
	movl	$0, -16(%ebp)
	jmp	L18
L19:
	movl	-4(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	-32(%ebp,%eax,4), %eax
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	addl	$1, -16(%ebp)
L18:
	cmpl	$3, -16(%ebp)
	jle	L19
	addl	$1, -4(%ebp)
L13:
	cmpl	$3, -4(%ebp)
	jle	L20
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_fun
	.def	_fun;	.scl	2;	.type	32;	.endef
_fun:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	8(%ebp), %eax
	movb	%al, -20(%ebp)
	movb	$27, -1(%ebp)
	movzbl	-20(%ebp), %eax
	testb	%al, %al
	jns	L22
	movzbl	-20(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movzbl	-1(%ebp), %eax
	xorl	%edx, %eax
	jmp	L23
L22:
	movzbl	-20(%ebp), %eax
	addl	%eax, %eax
L23:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_mixcol
	.def	_mixcol;	.scl	2;	.type	32;	.endef
_mixcol:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$68, %esp
	movb	$2, -44(%ebp)
	movb	$3, -43(%ebp)
	movb	$1, -42(%ebp)
	movb	$1, -41(%ebp)
	movb	$1, -40(%ebp)
	movb	$2, -39(%ebp)
	movb	$3, -38(%ebp)
	movb	$1, -37(%ebp)
	movb	$1, -36(%ebp)
	movb	$1, -35(%ebp)
	movb	$2, -34(%ebp)
	movb	$3, -33(%ebp)
	movb	$3, -32(%ebp)
	movb	$1, -31(%ebp)
	movb	$1, -30(%ebp)
	movb	$2, -29(%ebp)
	movl	$0, -4(%ebp)
	jmp	L25
L28:
	movl	$0, -8(%ebp)
	jmp	L26
L27:
	movl	-4(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %edx
	movl	-8(%ebp), %eax
	addl	%edx, %eax
	subl	$60, %eax
	movb	$0, (%eax)
	addl	$1, -8(%ebp)
L26:
	cmpl	$3, -8(%ebp)
	jle	L27
	addl	$1, -4(%ebp)
L25:
	cmpl	$3, -4(%ebp)
	jle	L28
	movl	$0, -12(%ebp)
	jmp	L29
L37:
	movl	$0, -16(%ebp)
	jmp	L30
L36:
	movl	$0, -20(%ebp)
	jmp	L31
L35:
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	subl	$44, %eax
	movzbl	(%eax), %eax
	cmpb	$2, %al
	jne	L32
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_fun
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	subl	$60, %eax
	movzbl	(%eax), %eax
	movl	%ecx, %edx
	xorl	%edx, %eax
	movl	%eax, %ecx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	subl	$60, %eax
	movb	%cl, (%eax)
	jmp	L33
L32:
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	subl	$44, %eax
	movzbl	(%eax), %eax
	cmpb	$3, %al
	jne	L34
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_fun
	movl	%eax, %ecx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	xorl	%ecx, %eax
	movzbl	%al, %eax
	movl	-12(%ebp), %edx
	sall	$2, %edx
	leal	0(%ebp,%edx), %ecx
	movl	-16(%ebp), %edx
	addl	%ecx, %edx
	subl	$60, %edx
	movzbl	(%edx), %edx
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	subl	$60, %eax
	movb	%cl, (%eax)
	jmp	L33
L34:
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	subl	$60, %eax
	movzbl	(%eax), %ecx
	movl	-20(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	xorl	%eax, %ecx
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	subl	$60, %eax
	movb	%cl, (%eax)
L33:
	addl	$1, -20(%ebp)
L31:
	cmpl	$3, -20(%ebp)
	jle	L35
	addl	$1, -16(%ebp)
L30:
	cmpl	$3, -16(%ebp)
	jle	L36
	addl	$1, -12(%ebp)
L29:
	cmpl	$3, -12(%ebp)
	jle	L37
	movl	$0, -24(%ebp)
	jmp	L38
L41:
	movl	$0, -28(%ebp)
	jmp	L39
L40:
	movl	-24(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	sall	$2, %eax
	leal	0(%ebp,%eax), %ecx
	movl	-28(%ebp), %eax
	addl	%ecx, %eax
	subl	$60, %eax
	movzbl	(%eax), %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	movb	%cl, (%eax)
	addl	$1, -28(%ebp)
L39:
	cmpl	$3, -28(%ebp)
	jle	L40
	addl	$1, -24(%ebp)
L38:
	cmpl	$3, -24(%ebp)
	jle	L41
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC1:
	.ascii "%x \0"
	.text
	.globl	_GenRoundkey
	.def	_GenRoundkey;	.scl	2;	.type	32;	.endef
_GenRoundkey:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$296, %esp
	movl	$16777216, -100(%ebp)
	movl	$33554432, -96(%ebp)
	movl	$67108864, -92(%ebp)
	movl	$134217728, -88(%ebp)
	movl	$268435456, -84(%ebp)
	movl	$536870912, -80(%ebp)
	movl	$1073741824, -76(%ebp)
	movl	$-2147483648, -72(%ebp)
	movl	$452984832, -68(%ebp)
	movl	$905969664, -64(%ebp)
	movl	$0, -12(%ebp)
	jmp	L43
L44:
	movl	-12(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -44(%ebp)
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -48(%ebp)
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -52(%ebp)
	movl	-12(%ebp), %eax
	sall	$2, %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%ebp)
	movl	-44(%ebp), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-48(%ebp), %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-52(%ebp), %eax
	sall	$8, %eax
	orl	%edx, %eax
	orl	-56(%ebp), %eax
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, -276(%ebp,%eax,4)
	addl	$1, -12(%ebp)
L43:
	cmpl	$3, -12(%ebp)
	jle	L44
	movl	$4, -16(%ebp)
	jmp	L45
L47:
	movl	-16(%ebp), %eax
	subl	$1, %eax
	movl	-276(%ebp,%eax,4), %eax
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	L46
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_rotword
	movl	%eax, (%esp)
	call	_subword
	movl	%eax, %ecx
	movl	-16(%ebp), %eax
	cltd
	andl	$3, %edx
	addl	%edx, %eax
	sarl	$2, %eax
	subl	$1, %eax
	movl	-100(%ebp,%eax,4), %eax
	xorl	%ecx, %eax
	movl	%eax, -20(%ebp)
L46:
	movl	-16(%ebp), %eax
	subl	$4, %eax
	movl	-276(%ebp,%eax,4), %eax
	xorl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%edx, -276(%ebp,%eax,4)
	addl	$1, -16(%ebp)
L45:
	cmpl	$43, -16(%ebp)
	jle	L47
	movl	$0, -24(%ebp)
	jmp	L48
L49:
	movl	-24(%ebp), %eax
	movl	-276(%ebp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, -24(%ebp)
L48:
	cmpl	$43, -24(%ebp)
	jle	L49
	movl	$10, (%esp)
	call	_putchar
	movl	$0, -28(%ebp)
	jmp	L50
L55:
	movl	-28(%ebp), %eax
	sall	$2, %eax
	movl	%eax, -32(%ebp)
	jmp	L51
L54:
	movl	-32(%ebp), %eax
	movl	-276(%ebp,%eax,4), %eax
	movl	%eax, -36(%ebp)
	movl	$0, -40(%ebp)
	jmp	L52
L53:
	movl	-36(%ebp), %eax
	movb	%al, -57(%ebp)
	shrl	$8, -36(%ebp)
	movl	$3, %eax
	subl	-40(%ebp), %eax
	movl	%eax, %ecx
	movl	-28(%ebp), %eax
	leal	0(,%eax,4), %edx
	movl	-32(%ebp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	imull	$44, %ecx, %edx
	addl	%eax, %edx
	movl	-28(%ebp), %eax
	addl	%edx, %eax
	leal	_roundkey(%eax), %edx
	movzbl	-57(%ebp), %eax
	movb	%al, (%edx)
	addl	$1, -40(%ebp)
L52:
	cmpl	$3, -40(%ebp)
	jle	L53
	addl	$1, -32(%ebp)
L51:
	movl	-28(%ebp), %eax
	addl	$1, %eax
	sall	$2, %eax
	cmpl	-32(%ebp), %eax
	jg	L54
	addl	$1, -28(%ebp)
L50:
	cmpl	$10, -28(%ebp)
	jle	L55
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC2:
	.ascii "00112233445566778899AABBCCDDEEFF\0"
LC3:
	.ascii "%2hhx\0"
	.align 4
LC4:
	.ascii "7625e224dc0f0ec91ad28c1ee67b1eb96d1a5459533c5c950f44aae1e32f2da3\0"
LC5:
	.ascii "round key for %d :\12\0"
LC6:
	.ascii "Plaintext Text: \0"
LC7:
	.ascii "Encrypted Text: \0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$160, %esp
	.cfi_offset 3, -12
	call	___main
	movl	$LC2, 92(%esp)
	movl	$0, 156(%esp)
	jmp	L57
L58:
	leal	72(%esp), %edx
	movl	156(%esp), %eax
	addl	%eax, %edx
	movl	156(%esp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	92(%esp), %eax
	addl	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_sscanf
	addl	$1, 156(%esp)
L57:
	cmpl	$15, 156(%esp)
	jle	L58
	movzbl	72(%esp), %eax
	movb	%al, 40(%esp)
	movzbl	76(%esp), %eax
	movb	%al, 41(%esp)
	movzbl	80(%esp), %eax
	movb	%al, 42(%esp)
	movzbl	84(%esp), %eax
	movb	%al, 43(%esp)
	movzbl	73(%esp), %eax
	movb	%al, 44(%esp)
	movzbl	77(%esp), %eax
	movb	%al, 45(%esp)
	movzbl	81(%esp), %eax
	movb	%al, 46(%esp)
	movzbl	85(%esp), %eax
	movb	%al, 47(%esp)
	movzbl	74(%esp), %eax
	movb	%al, 48(%esp)
	movzbl	78(%esp), %eax
	movb	%al, 49(%esp)
	movzbl	82(%esp), %eax
	movb	%al, 50(%esp)
	movzbl	86(%esp), %eax
	movb	%al, 51(%esp)
	movzbl	75(%esp), %eax
	movb	%al, 52(%esp)
	movzbl	79(%esp), %eax
	movb	%al, 53(%esp)
	movzbl	83(%esp), %eax
	movb	%al, 54(%esp)
	movzbl	87(%esp), %eax
	movb	%al, 55(%esp)
	movl	$LC4, 88(%esp)
	movl	$0, 152(%esp)
	jmp	L59
L60:
	leal	56(%esp), %edx
	movl	152(%esp), %eax
	addl	%eax, %edx
	movl	152(%esp), %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	88(%esp), %eax
	addl	%ecx, %eax
	movl	%edx, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, (%esp)
	call	_sscanf
	addl	$1, 152(%esp)
L59:
	cmpl	$15, 152(%esp)
	jle	L60
	movzbl	56(%esp), %eax
	movb	%al, 24(%esp)
	movzbl	57(%esp), %eax
	movb	%al, 25(%esp)
	movzbl	58(%esp), %eax
	movb	%al, 26(%esp)
	movzbl	59(%esp), %eax
	movb	%al, 27(%esp)
	movzbl	60(%esp), %eax
	movb	%al, 28(%esp)
	movzbl	61(%esp), %eax
	movb	%al, 29(%esp)
	movzbl	62(%esp), %eax
	movb	%al, 30(%esp)
	movzbl	63(%esp), %eax
	movb	%al, 31(%esp)
	movzbl	64(%esp), %eax
	movb	%al, 32(%esp)
	movzbl	65(%esp), %eax
	movb	%al, 33(%esp)
	movzbl	66(%esp), %eax
	movb	%al, 34(%esp)
	movzbl	67(%esp), %eax
	movb	%al, 35(%esp)
	movzbl	68(%esp), %eax
	movb	%al, 36(%esp)
	movzbl	69(%esp), %eax
	movb	%al, 37(%esp)
	movzbl	70(%esp), %eax
	movb	%al, 38(%esp)
	movzbl	71(%esp), %eax
	movb	%al, 39(%esp)
	leal	24(%esp), %eax
	movl	%eax, (%esp)
	call	_GenRoundkey
	movl	$0, 148(%esp)
	jmp	L61
L66:
	movl	148(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$0, 144(%esp)
	jmp	L62
L65:
	movl	$0, 140(%esp)
	jmp	L63
L64:
	movl	140(%esp), %edx
	movl	144(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	imull	$44, %ecx, %edx
	addl	%eax, %edx
	movl	148(%esp), %eax
	addl	%edx, %eax
	addl	$_roundkey, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 140(%esp)
L63:
	cmpl	$3, 140(%esp)
	jle	L64
	movl	$10, (%esp)
	call	_putchar
	addl	$1, 144(%esp)
L62:
	cmpl	$3, 144(%esp)
	jle	L65
	addl	$1, 148(%esp)
L61:
	cmpl	$10, 148(%esp)
	jle	L66
	movl	$LC6, (%esp)
	call	_puts
	movl	$0, 136(%esp)
	jmp	L67
L70:
	movl	$0, 132(%esp)
	jmp	L68
L69:
	movl	136(%esp), %eax
	sall	$2, %eax
	leal	160(%esp), %ebx
	leal	(%ebx,%eax), %edx
	movl	132(%esp), %eax
	addl	%edx, %eax
	subl	$120, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 132(%esp)
L68:
	cmpl	$3, 132(%esp)
	jle	L69
	movl	$10, (%esp)
	call	_putchar
	addl	$1, 136(%esp)
L67:
	cmpl	$3, 136(%esp)
	jle	L70
	movl	$0, 128(%esp)
	jmp	L71
L74:
	movl	$0, 124(%esp)
	jmp	L72
L73:
	movl	128(%esp), %eax
	sall	$2, %eax
	leal	160(%esp), %ebx
	leal	(%ebx,%eax), %edx
	movl	124(%esp), %eax
	addl	%edx, %eax
	subl	$120, %eax
	movzbl	(%eax), %ebx
	movl	124(%esp), %edx
	movl	128(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	imull	$44, %ecx, %edx
	addl	%edx, %eax
	addl	$_roundkey, %eax
	movzbl	(%eax), %eax
	xorl	%eax, %ebx
	movl	%ebx, %ecx
	movl	128(%esp), %eax
	sall	$2, %eax
	leal	160(%esp), %ebx
	leal	(%ebx,%eax), %edx
	movl	124(%esp), %eax
	addl	%edx, %eax
	subl	$120, %eax
	movb	%cl, (%eax)
	addl	$1, 124(%esp)
L72:
	cmpl	$3, 124(%esp)
	jle	L73
	addl	$1, 128(%esp)
L71:
	cmpl	$3, 128(%esp)
	jle	L74
	movl	$1, 120(%esp)
	jmp	L75
L80:
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_subbyte
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_shiftrows
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_mixcol
	movl	$0, 116(%esp)
	jmp	L76
L79:
	movl	$0, 112(%esp)
	jmp	L77
L78:
	movl	116(%esp), %eax
	sall	$2, %eax
	leal	160(%esp), %ecx
	leal	(%ecx,%eax), %edx
	movl	112(%esp), %eax
	addl	%edx, %eax
	subl	$120, %eax
	movzbl	(%eax), %ebx
	movl	112(%esp), %edx
	movl	116(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	imull	$44, %ecx, %edx
	addl	%eax, %edx
	movl	120(%esp), %eax
	addl	%edx, %eax
	addl	$_roundkey, %eax
	movzbl	(%eax), %eax
	xorl	%eax, %ebx
	movl	%ebx, %ecx
	movl	116(%esp), %eax
	sall	$2, %eax
	leal	160(%esp), %ebx
	leal	(%ebx,%eax), %edx
	movl	112(%esp), %eax
	addl	%edx, %eax
	subl	$120, %eax
	movb	%cl, (%eax)
	addl	$1, 112(%esp)
L77:
	cmpl	$3, 112(%esp)
	jle	L78
	addl	$1, 116(%esp)
L76:
	cmpl	$3, 116(%esp)
	jle	L79
	addl	$1, 120(%esp)
L75:
	cmpl	$9, 120(%esp)
	jle	L80
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_subbyte
	leal	40(%esp), %eax
	movl	%eax, (%esp)
	call	_shiftrows
	movl	$0, 108(%esp)
	jmp	L81
L84:
	movl	$0, 104(%esp)
	jmp	L82
L83:
	movl	108(%esp), %eax
	sall	$2, %eax
	leal	160(%esp), %ecx
	leal	(%ecx,%eax), %edx
	movl	104(%esp), %eax
	addl	%edx, %eax
	subl	$120, %eax
	movzbl	(%eax), %ebx
	movl	104(%esp), %edx
	movl	108(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	imull	$44, %ecx, %edx
	addl	%edx, %eax
	addl	$_roundkey+10, %eax
	movzbl	(%eax), %eax
	xorl	%eax, %ebx
	movl	%ebx, %ecx
	movl	108(%esp), %eax
	sall	$2, %eax
	leal	160(%esp), %ebx
	leal	(%ebx,%eax), %edx
	movl	104(%esp), %eax
	addl	%edx, %eax
	subl	$120, %eax
	movb	%cl, (%eax)
	addl	$1, 104(%esp)
L82:
	cmpl	$3, 104(%esp)
	jle	L83
	addl	$1, 108(%esp)
L81:
	cmpl	$3, 108(%esp)
	jle	L84
	movl	$LC7, (%esp)
	call	_puts
	movl	$0, 100(%esp)
	jmp	L85
L88:
	movl	$0, 96(%esp)
	jmp	L86
L87:
	movl	100(%esp), %eax
	sall	$2, %eax
	leal	160(%esp), %ecx
	leal	(%ecx,%eax), %edx
	movl	96(%esp), %eax
	addl	%edx, %eax
	subl	$120, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 96(%esp)
L86:
	cmpl	$3, 96(%esp)
	jle	L87
	movl	$10, (%esp)
	call	_putchar
	addl	$1, 100(%esp)
L85:
	cmpl	$3, 100(%esp)
	jle	L88
	movl	$0, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
