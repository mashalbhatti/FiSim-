	.file	"TripleDES.c"
	.data
	.align 32
_IP:
	.byte	58
	.byte	50
	.byte	42
	.byte	34
	.byte	26
	.byte	18
	.byte	10
	.byte	2
	.byte	60
	.byte	52
	.byte	44
	.byte	36
	.byte	28
	.byte	20
	.byte	12
	.byte	4
	.byte	62
	.byte	54
	.byte	46
	.byte	38
	.byte	30
	.byte	22
	.byte	14
	.byte	6
	.byte	64
	.byte	56
	.byte	48
	.byte	40
	.byte	32
	.byte	24
	.byte	16
	.byte	8
	.byte	57
	.byte	49
	.byte	41
	.byte	33
	.byte	25
	.byte	17
	.byte	9
	.byte	1
	.byte	59
	.byte	51
	.byte	43
	.byte	35
	.byte	27
	.byte	19
	.byte	11
	.byte	3
	.byte	61
	.byte	53
	.byte	45
	.byte	37
	.byte	29
	.byte	21
	.byte	13
	.byte	5
	.byte	63
	.byte	55
	.byte	47
	.byte	39
	.byte	31
	.byte	23
	.byte	15
	.byte	7
	.align 32
_PI:
	.byte	40
	.byte	8
	.byte	48
	.byte	16
	.byte	56
	.byte	24
	.byte	64
	.byte	32
	.byte	39
	.byte	7
	.byte	47
	.byte	15
	.byte	55
	.byte	23
	.byte	63
	.byte	31
	.byte	38
	.byte	6
	.byte	46
	.byte	14
	.byte	54
	.byte	22
	.byte	62
	.byte	30
	.byte	37
	.byte	5
	.byte	45
	.byte	13
	.byte	53
	.byte	21
	.byte	61
	.byte	29
	.byte	36
	.byte	4
	.byte	44
	.byte	12
	.byte	52
	.byte	20
	.byte	60
	.byte	28
	.byte	35
	.byte	3
	.byte	43
	.byte	11
	.byte	51
	.byte	19
	.byte	59
	.byte	27
	.byte	34
	.byte	2
	.byte	42
	.byte	10
	.byte	50
	.byte	18
	.byte	58
	.byte	26
	.byte	33
	.byte	1
	.byte	41
	.byte	9
	.byte	49
	.byte	17
	.byte	57
	.byte	25
	.align 32
_E:
	.byte	32
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	1
	.align 32
_P:
	.byte	16
	.byte	7
	.byte	20
	.byte	21
	.byte	29
	.byte	12
	.byte	28
	.byte	17
	.byte	1
	.byte	15
	.byte	23
	.byte	26
	.byte	5
	.byte	18
	.byte	31
	.byte	10
	.byte	2
	.byte	8
	.byte	24
	.byte	14
	.byte	32
	.byte	27
	.byte	3
	.byte	9
	.byte	19
	.byte	13
	.byte	30
	.byte	6
	.byte	22
	.byte	11
	.byte	4
	.byte	25
	.align 32
_S:
	.byte	14
	.byte	4
	.byte	13
	.byte	1
	.byte	2
	.byte	15
	.byte	11
	.byte	8
	.byte	3
	.byte	10
	.byte	6
	.byte	12
	.byte	5
	.byte	9
	.byte	0
	.byte	7
	.byte	0
	.byte	15
	.byte	7
	.byte	4
	.byte	14
	.byte	2
	.byte	13
	.byte	1
	.byte	10
	.byte	6
	.byte	12
	.byte	11
	.byte	9
	.byte	5
	.byte	3
	.byte	8
	.byte	4
	.byte	1
	.byte	14
	.byte	8
	.byte	13
	.byte	6
	.byte	2
	.byte	11
	.byte	15
	.byte	12
	.byte	9
	.byte	7
	.byte	3
	.byte	10
	.byte	5
	.byte	0
	.byte	15
	.byte	12
	.byte	8
	.byte	2
	.byte	4
	.byte	9
	.byte	1
	.byte	7
	.byte	5
	.byte	11
	.byte	3
	.byte	14
	.byte	10
	.byte	0
	.byte	6
	.byte	13
	.byte	15
	.byte	1
	.byte	8
	.byte	14
	.byte	6
	.byte	11
	.byte	3
	.byte	4
	.byte	9
	.byte	7
	.byte	2
	.byte	13
	.byte	12
	.byte	0
	.byte	5
	.byte	10
	.byte	3
	.byte	13
	.byte	4
	.byte	7
	.byte	15
	.byte	2
	.byte	8
	.byte	14
	.byte	12
	.byte	0
	.byte	1
	.byte	10
	.byte	6
	.byte	9
	.byte	11
	.byte	5
	.byte	0
	.byte	14
	.byte	7
	.byte	11
	.byte	10
	.byte	4
	.byte	13
	.byte	1
	.byte	5
	.byte	8
	.byte	12
	.byte	6
	.byte	9
	.byte	3
	.byte	2
	.byte	15
	.byte	13
	.byte	8
	.byte	10
	.byte	1
	.byte	3
	.byte	15
	.byte	4
	.byte	2
	.byte	11
	.byte	6
	.byte	7
	.byte	12
	.byte	0
	.byte	5
	.byte	14
	.byte	9
	.byte	10
	.byte	0
	.byte	9
	.byte	14
	.byte	6
	.byte	3
	.byte	15
	.byte	5
	.byte	1
	.byte	13
	.byte	12
	.byte	7
	.byte	11
	.byte	4
	.byte	2
	.byte	8
	.byte	13
	.byte	7
	.byte	0
	.byte	9
	.byte	3
	.byte	4
	.byte	6
	.byte	10
	.byte	2
	.byte	8
	.byte	5
	.byte	14
	.byte	12
	.byte	11
	.byte	15
	.byte	1
	.byte	13
	.byte	6
	.byte	4
	.byte	9
	.byte	8
	.byte	15
	.byte	3
	.byte	0
	.byte	11
	.byte	1
	.byte	2
	.byte	12
	.byte	5
	.byte	10
	.byte	14
	.byte	7
	.byte	1
	.byte	10
	.byte	13
	.byte	0
	.byte	6
	.byte	9
	.byte	8
	.byte	7
	.byte	4
	.byte	15
	.byte	14
	.byte	3
	.byte	11
	.byte	5
	.byte	2
	.byte	12
	.byte	7
	.byte	13
	.byte	14
	.byte	3
	.byte	0
	.byte	6
	.byte	9
	.byte	10
	.byte	1
	.byte	2
	.byte	8
	.byte	5
	.byte	11
	.byte	12
	.byte	4
	.byte	15
	.byte	13
	.byte	8
	.byte	11
	.byte	5
	.byte	6
	.byte	15
	.byte	0
	.byte	3
	.byte	4
	.byte	7
	.byte	2
	.byte	12
	.byte	1
	.byte	10
	.byte	14
	.byte	9
	.byte	10
	.byte	6
	.byte	9
	.byte	0
	.byte	12
	.byte	11
	.byte	7
	.byte	13
	.byte	15
	.byte	1
	.byte	3
	.byte	14
	.byte	5
	.byte	2
	.byte	8
	.byte	4
	.byte	3
	.byte	15
	.byte	0
	.byte	6
	.byte	10
	.byte	1
	.byte	13
	.byte	8
	.byte	9
	.byte	4
	.byte	5
	.byte	11
	.byte	12
	.byte	7
	.byte	2
	.byte	14
	.byte	2
	.byte	12
	.byte	4
	.byte	1
	.byte	7
	.byte	10
	.byte	11
	.byte	6
	.byte	8
	.byte	5
	.byte	3
	.byte	15
	.byte	13
	.byte	0
	.byte	14
	.byte	9
	.byte	14
	.byte	11
	.byte	2
	.byte	12
	.byte	4
	.byte	7
	.byte	13
	.byte	1
	.byte	5
	.byte	0
	.byte	15
	.byte	10
	.byte	3
	.byte	9
	.byte	8
	.byte	6
	.byte	4
	.byte	2
	.byte	1
	.byte	11
	.byte	10
	.byte	13
	.byte	7
	.byte	8
	.byte	15
	.byte	9
	.byte	12
	.byte	5
	.byte	6
	.byte	3
	.byte	0
	.byte	14
	.byte	11
	.byte	8
	.byte	12
	.byte	7
	.byte	1
	.byte	14
	.byte	2
	.byte	13
	.byte	6
	.byte	15
	.byte	0
	.byte	9
	.byte	10
	.byte	4
	.byte	5
	.byte	3
	.byte	12
	.byte	1
	.byte	10
	.byte	15
	.byte	9
	.byte	2
	.byte	6
	.byte	8
	.byte	0
	.byte	13
	.byte	3
	.byte	4
	.byte	14
	.byte	7
	.byte	5
	.byte	11
	.byte	10
	.byte	15
	.byte	4
	.byte	2
	.byte	7
	.byte	12
	.byte	9
	.byte	5
	.byte	6
	.byte	1
	.byte	13
	.byte	14
	.byte	0
	.byte	11
	.byte	3
	.byte	8
	.byte	9
	.byte	14
	.byte	15
	.byte	5
	.byte	2
	.byte	8
	.byte	12
	.byte	3
	.byte	7
	.byte	0
	.byte	4
	.byte	10
	.byte	1
	.byte	13
	.byte	11
	.byte	6
	.byte	4
	.byte	3
	.byte	2
	.byte	12
	.byte	9
	.byte	5
	.byte	15
	.byte	10
	.byte	11
	.byte	14
	.byte	1
	.byte	7
	.byte	6
	.byte	0
	.byte	8
	.byte	13
	.byte	4
	.byte	11
	.byte	2
	.byte	14
	.byte	15
	.byte	0
	.byte	8
	.byte	13
	.byte	3
	.byte	12
	.byte	9
	.byte	7
	.byte	5
	.byte	10
	.byte	6
	.byte	1
	.byte	13
	.byte	0
	.byte	11
	.byte	7
	.byte	4
	.byte	9
	.byte	1
	.byte	10
	.byte	14
	.byte	3
	.byte	5
	.byte	12
	.byte	2
	.byte	15
	.byte	8
	.byte	6
	.byte	1
	.byte	4
	.byte	11
	.byte	13
	.byte	12
	.byte	3
	.byte	7
	.byte	14
	.byte	10
	.byte	15
	.byte	6
	.byte	8
	.byte	0
	.byte	5
	.byte	9
	.byte	2
	.byte	6
	.byte	11
	.byte	13
	.byte	8
	.byte	1
	.byte	4
	.byte	10
	.byte	7
	.byte	9
	.byte	5
	.byte	0
	.byte	15
	.byte	14
	.byte	2
	.byte	3
	.byte	12
	.byte	13
	.byte	2
	.byte	8
	.byte	4
	.byte	6
	.byte	15
	.byte	11
	.byte	1
	.byte	10
	.byte	9
	.byte	3
	.byte	14
	.byte	5
	.byte	0
	.byte	12
	.byte	7
	.byte	1
	.byte	15
	.byte	13
	.byte	8
	.byte	10
	.byte	3
	.byte	7
	.byte	4
	.byte	12
	.byte	5
	.byte	6
	.byte	11
	.byte	0
	.byte	14
	.byte	9
	.byte	2
	.byte	7
	.byte	11
	.byte	4
	.byte	1
	.byte	9
	.byte	12
	.byte	14
	.byte	2
	.byte	0
	.byte	6
	.byte	10
	.byte	13
	.byte	15
	.byte	3
	.byte	5
	.byte	8
	.byte	2
	.byte	1
	.byte	14
	.byte	7
	.byte	4
	.byte	10
	.byte	8
	.byte	13
	.byte	15
	.byte	12
	.byte	9
	.byte	0
	.byte	3
	.byte	5
	.byte	6
	.byte	11
	.align 32
_PC1:
	.byte	57
	.byte	49
	.byte	41
	.byte	33
	.byte	25
	.byte	17
	.byte	9
	.byte	1
	.byte	58
	.byte	50
	.byte	42
	.byte	34
	.byte	26
	.byte	18
	.byte	10
	.byte	2
	.byte	59
	.byte	51
	.byte	43
	.byte	35
	.byte	27
	.byte	19
	.byte	11
	.byte	3
	.byte	60
	.byte	52
	.byte	44
	.byte	36
	.byte	63
	.byte	55
	.byte	47
	.byte	39
	.byte	31
	.byte	23
	.byte	15
	.byte	7
	.byte	62
	.byte	54
	.byte	46
	.byte	38
	.byte	30
	.byte	22
	.byte	14
	.byte	6
	.byte	61
	.byte	53
	.byte	45
	.byte	37
	.byte	29
	.byte	21
	.byte	13
	.byte	5
	.byte	28
	.byte	20
	.byte	12
	.byte	4
	.align 32
_PC2:
	.byte	14
	.byte	17
	.byte	11
	.byte	24
	.byte	1
	.byte	5
	.byte	3
	.byte	28
	.byte	15
	.byte	6
	.byte	21
	.byte	10
	.byte	23
	.byte	19
	.byte	12
	.byte	4
	.byte	26
	.byte	8
	.byte	16
	.byte	7
	.byte	27
	.byte	20
	.byte	13
	.byte	2
	.byte	41
	.byte	52
	.byte	31
	.byte	37
	.byte	47
	.byte	55
	.byte	30
	.byte	40
	.byte	51
	.byte	45
	.byte	33
	.byte	48
	.byte	44
	.byte	49
	.byte	39
	.byte	56
	.byte	34
	.byte	53
	.byte	46
	.byte	42
	.byte	50
	.byte	36
	.byte	29
	.byte	32
	.align 4
_iteration_shift:
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.text
	.globl	_des
	.def	_des;	.scl	2;	.type	32;	.endef
_des:
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
	subl	$316, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	24(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%eax, -248(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -244(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -256(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -252(%ebp)
	movb	%dl, -260(%ebp)
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -84(%ebp)
	leal	-240(%ebp), %ebx
	movl	$0, %eax
	movl	$32, %edx
	movl	%ebx, %edi
	movl	%edx, %ecx
	rep stosl
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -64(%ebp)
	movl	$0, -60(%ebp)
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	$0, -72(%ebp)
	movl	$0, -68(%ebp)
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	$0, -20(%ebp)
	jmp	L2
L3:
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -72(%ebp)
	movl	%edx, -68(%ebp)
	movl	-20(%ebp), %eax
	addl	$_IP, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %edx
	movl	$64, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-248(%ebp), %eax
	movl	-244(%ebp), %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	L32
	movl	%edx, %eax
	xorl	%edx, %edx
L32:
	movl	%eax, %edi
	andl	$1, %edi
	movl	%edi, -272(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -268(%ebp)
	movl	-272(%ebp), %eax
	movl	-268(%ebp), %edx
	movl	%eax, %edi
	orl	%edi, -72(%ebp)
	movl	%edx, %eax
	orl	%eax, -68(%ebp)
	addl	$1, -20(%ebp)
L2:
	cmpl	$63, -20(%ebp)
	jle	L3
	movl	-72(%ebp), %eax
	movl	-68(%ebp), %edx
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, -36(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	$0, -20(%ebp)
	jmp	L4
L5:
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -64(%ebp)
	movl	%edx, -60(%ebp)
	movl	-20(%ebp), %eax
	addl	$_PC1, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %edx
	movl	$64, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-256(%ebp), %eax
	movl	-252(%ebp), %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	L31
	movl	%edx, %eax
	xorl	%edx, %edx
L31:
	movl	%eax, %ebx
	andl	$1, %ebx
	movl	%ebx, -280(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -276(%ebp)
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %edx
	movl	%eax, %ebx
	orl	%ebx, -64(%ebp)
	movl	%edx, %eax
	orl	%eax, -60(%ebp)
	addl	$1, -20(%ebp)
L4:
	cmpl	$55, -20(%ebp)
	jle	L5
	movl	-64(%ebp), %eax
	movl	-60(%ebp), %edx
	shrdl	$28, %edx, %eax
	shrl	$28, %edx
	andl	$268435455, %eax
	movl	%eax, -28(%ebp)
	movl	-64(%ebp), %eax
	andl	$268435455, %eax
	movl	%eax, -32(%ebp)
	movl	$0, -20(%ebp)
	jmp	L6
L11:
	movl	$0, -24(%ebp)
	jmp	L7
L8:
	movl	-28(%ebp), %eax
	addl	%eax, %eax
	andl	$268435455, %eax
	movl	%eax, %edx
	movl	-28(%ebp), %eax
	shrl	$27, %eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	-32(%ebp), %eax
	addl	%eax, %eax
	andl	$268435455, %eax
	movl	%eax, %edx
	movl	-32(%ebp), %eax
	shrl	$27, %eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, -32(%ebp)
	addl	$1, -24(%ebp)
L7:
	movl	-20(%ebp), %eax
	addl	$_iteration_shift, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	cmpl	-24(%ebp), %eax
	jg	L8
	movl	$0, -96(%ebp)
	movl	$0, -92(%ebp)
	movl	-28(%ebp), %eax
	movl	$0, %edx
	shldl	$28, %eax, %edx
	sall	$28, %eax
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	-32(%ebp), %eax
	movl	$0, %edx
	movl	%ecx, %esi
	orl	%eax, %esi
	movl	%esi, -96(%ebp)
	movl	%ebx, %edi
	orl	%edx, %edi
	movl	%edi, %eax
	movl	%eax, -92(%ebp)
	movl	-20(%ebp), %eax
	movl	$0, -240(%ebp,%eax,8)
	movl	$0, -236(%ebp,%eax,8)
	movl	$0, -24(%ebp)
	jmp	L9
L10:
	movl	-20(%ebp), %eax
	movl	-236(%ebp,%eax,8), %edx
	movl	-240(%ebp,%eax,8), %eax
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	-20(%ebp), %ecx
	movl	%eax, -240(%ebp,%ecx,8)
	movl	%edx, -236(%ebp,%ecx,8)
	movl	-20(%ebp), %eax
	movl	-240(%ebp,%eax,8), %ebx
	movl	-236(%ebp,%eax,8), %esi
	movl	-24(%ebp), %eax
	addl	$_PC2, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %edx
	movl	$56, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movl	-96(%ebp), %eax
	movl	-92(%ebp), %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	L30
	movl	%edx, %eax
	xorl	%edx, %edx
L30:
	movl	%eax, %edi
	andl	$1, %edi
	movl	%edi, -288(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -284(%ebp)
	movl	-288(%ebp), %eax
	movl	-284(%ebp), %edx
	movl	%eax, %edi
	orl	%ebx, %edi
	movl	%edi, -296(%ebp)
	movl	%esi, %ebx
	orl	%edx, %ebx
	movl	%ebx, -292(%ebp)
	movl	-20(%ebp), %eax
	movl	-296(%ebp), %esi
	movl	-292(%ebp), %edi
	movl	%esi, -240(%ebp,%eax,8)
	movl	%edi, -236(%ebp,%eax,8)
	addl	$1, -24(%ebp)
L9:
	cmpl	$47, -24(%ebp)
	jle	L10
	addl	$1, -20(%ebp)
L6:
	cmpl	$15, -20(%ebp)
	jle	L11
	movl	$0, -20(%ebp)
	jmp	L12
L21:
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -24(%ebp)
	jmp	L13
L14:
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	movl	-24(%ebp), %eax
	addl	$_E, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %edx
	movl	$32, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	movl	%edx, %ecx
	shrl	%cl, %eax
	movl	$0, %edx
	movl	%eax, %esi
	andl	$1, %esi
	movl	%esi, -304(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -300(%ebp)
	movl	-304(%ebp), %eax
	movl	-300(%ebp), %edx
	movl	%eax, %esi
	orl	%esi, -56(%ebp)
	movl	%edx, %eax
	orl	%eax, -52(%ebp)
	addl	$1, -24(%ebp)
L13:
	cmpl	$47, -24(%ebp)
	jle	L14
	cmpb	$100, -260(%ebp)
	jne	L15
	movl	$15, %eax
	subl	-20(%ebp), %eax
	movl	-236(%ebp,%eax,8), %edx
	movl	-240(%ebp,%eax,8), %eax
	xorl	%eax, -56(%ebp)
	xorl	%edx, -52(%ebp)
	jmp	L16
L15:
	movl	-20(%ebp), %eax
	movl	-236(%ebp,%eax,8), %edx
	movl	-240(%ebp,%eax,8), %eax
	xorl	%eax, -56(%ebp)
	xorl	%edx, -52(%ebp)
L16:
	movl	$0, -24(%ebp)
	jmp	L17
L18:
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, %eax
	movl	$33792, %edx
	shrdl	%cl, %edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	L26
	movl	%edx, %eax
	sarl	$31, %edx
L26:
	movl	%eax, %ebx
	andl	-56(%ebp), %ebx
	movl	%ebx, -312(%ebp)
	movl	%edx, %eax
	andl	-52(%ebp), %eax
	movl	%eax, -308(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sall	$2, %eax
	subl	%eax, %edx
	leal	(%edx,%edx), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	leal	42(%eax), %ecx
	movl	-312(%ebp), %eax
	movl	-308(%ebp), %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	L27
	movl	%edx, %eax
	xorl	%edx, %edx
L27:
	movb	%al, -105(%ebp)
	movzbl	-105(%ebp), %eax
	sarb	$4, %al
	movl	%eax, %edx
	movzbl	-105(%ebp), %eax
	andl	$1, %eax
	orl	%edx, %eax
	movb	%al, -105(%ebp)
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	$0, %eax
	movl	$30720, %edx
	shrdl	%cl, %edx, %eax
	sarl	%cl, %edx
	testb	$32, %cl
	je	L28
	movl	%edx, %eax
	sarl	$31, %edx
L28:
	movl	%eax, %esi
	andl	-56(%ebp), %esi
	movl	%esi, -320(%ebp)
	movl	%edx, %eax
	andl	-52(%ebp), %eax
	movl	%eax, -316(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, %edx
	sall	$2, %eax
	subl	%eax, %edx
	leal	(%edx,%edx), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	leal	43(%eax), %ecx
	movl	-320(%ebp), %eax
	movl	-316(%ebp), %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	L29
	movl	%edx, %eax
	xorl	%edx, %edx
L29:
	movb	%al, -106(%ebp)
	sall	$4, -44(%ebp)
	movsbl	-105(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movsbl	-106(%ebp), %eax
	addl	%eax, %edx
	movl	-24(%ebp), %eax
	sall	$6, %eax
	addl	%edx, %eax
	addl	$_S, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	andl	$15, %eax
	orl	%eax, -44(%ebp)
	addl	$1, -24(%ebp)
L17:
	cmpl	$7, -24(%ebp)
	jle	L18
	movl	$0, -48(%ebp)
	movl	$0, -24(%ebp)
	jmp	L19
L20:
	sall	-48(%ebp)
	movl	-24(%ebp), %eax
	addl	$_P, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %edx
	movl	$32, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-44(%ebp), %eax
	movl	%edx, %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	orl	%eax, -48(%ebp)
	addl	$1, -24(%ebp)
L19:
	cmpl	$31, -24(%ebp)
	jle	L20
	movl	-40(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-36(%ebp), %eax
	xorl	-48(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-84(%ebp), %eax
	movl	%eax, -36(%ebp)
	addl	$1, -20(%ebp)
L12:
	cmpl	$15, -20(%ebp)
	jle	L21
	movl	-40(%ebp), %eax
	movl	$0, %edx
	movl	%eax, %edx
	movl	$0, %eax
	movl	-36(%ebp), %ecx
	movl	$0, %ebx
	movl	%eax, %esi
	orl	%ecx, %esi
	movl	%esi, -104(%ebp)
	movl	%edx, %eax
	orl	%ebx, %eax
	movl	%eax, -100(%ebp)
	movl	$0, -20(%ebp)
	jmp	L22
L23:
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	shldl	$1, %eax, %edx
	addl	%eax, %eax
	movl	%eax, -80(%ebp)
	movl	%edx, -76(%ebp)
	movl	-20(%ebp), %eax
	addl	$_PI, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	$64, %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-104(%ebp), %eax
	movl	-100(%ebp), %edx
	shrdl	%cl, %edx, %eax
	shrl	%cl, %edx
	testb	$32, %cl
	je	L25
	movl	%edx, %eax
	xorl	%edx, %edx
L25:
	movl	%eax, %ebx
	andl	$1, %ebx
	movl	%ebx, -328(%ebp)
	movl	%edx, %eax
	andl	$0, %eax
	movl	%eax, -324(%ebp)
	movl	-328(%ebp), %eax
	movl	-324(%ebp), %edx
	movl	%eax, %edi
	orl	%edi, -80(%ebp)
	movl	%edx, %eax
	orl	%eax, -76(%ebp)
	addl	$1, -20(%ebp)
L22:
	cmpl	$63, -20(%ebp)
	jle	L23
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	addl	$316, %esp
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
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "\12Ecrypt DES & 3-DES\12----------------------\0"
LC1:
	.ascii "Input: %016llx\12\0"
LC2:
	.ascii "Des: %016llx\12\0"
LC3:
	.ascii "3Des: %016llx\12\0"
	.align 4
LC4:
	.ascii "\12Decrypt DES & 3-DES\12----------------------\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$80, %esp
	call	___main
	movl	$-952382851, 72(%esp)
	movl	$-1804289816, 76(%esp)
	movl	$-952382851, 40(%esp)
	movl	$-1804289816, 44(%esp)
	movl	$-952382852, 48(%esp)
	movl	$-1804289816, 52(%esp)
	movl	$-952383107, 56(%esp)
	movl	$-1804289816, 60(%esp)
	movl	72(%esp), %eax
	movl	76(%esp), %edx
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	$LC0, (%esp)
	call	_puts
	movl	72(%esp), %eax
	movl	76(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	$101, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	72(%esp), %eax
	movl	76(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_des
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	movl	$100, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_des
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	movl	$101, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_des
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$LC4, (%esp)
	call	_puts
	movl	56(%esp), %eax
	movl	60(%esp), %edx
	movl	$100, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_des
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	48(%esp), %eax
	movl	52(%esp), %edx
	movl	$101, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_des
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	$100, 16(%esp)
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_des
	movl	%eax, 64(%esp)
	movl	%edx, 68(%esp)
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC3, (%esp)
	call	_printf
	movl	$0, (%esp)
	call	_exit
	.cfi_endproc
LFE15:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
