	.file	"des.c"
	.section .rdata,"dr"
	.align 32
_sbox1:
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
	.align 32
_sbox2:
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
	.align 32
_sbox3:
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
	.align 32
_sbox4:
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
	.align 32
_sbox5:
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
	.align 32
_sbox6:
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
	.align 32
_sbox7:
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
	.align 32
_sbox8:
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
	.text
	.globl	_IP
	.def	_IP;	.scl	2;	.type	32;	.endef
_IP:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	sall	$31, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	sall	$30, %eax
	andl	$1073741824, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	sall	$29, %eax
	andl	$536870912, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	sall	$28, %eax
	andl	$268435456, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	sall	$27, %eax
	andl	$134217728, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	sall	$26, %eax
	andl	$67108864, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	sall	$25, %eax
	andl	$33554432, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	sall	$24, %eax
	andl	$16777216, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$23, %eax
	andl	$8388608, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$22, %eax
	andl	$4194304, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$21, %eax
	andl	$2097152, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$20, %eax
	andl	$1048576, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$19, %eax
	andl	$524288, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$18, %eax
	andl	$262144, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$17, %eax
	andl	$131072, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	sall	$16, %eax
	andl	$65536, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$15, %eax
	movzwl	%ax, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$14, %eax
	andl	$16384, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$13, %eax
	andl	$8192, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$12, %eax
	andl	$4096, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$11, %eax
	andl	$2048, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$10, %eax
	andl	$1024, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$9, %eax
	andl	$512, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$8, %eax
	andl	$256, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$7, %eax
	movzbl	%al, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$31, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$30, %eax
	andl	$1073741824, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$29, %eax
	andl	$536870912, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$28, %eax
	andl	$268435456, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$27, %eax
	andl	$134217728, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$26, %eax
	andl	$67108864, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$25, %eax
	andl	$33554432, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$7, %al
	movzbl	%al, %eax
	sall	$24, %eax
	andl	$16777216, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	sall	$23, %eax
	andl	$8388608, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	sall	$22, %eax
	andl	$4194304, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	sall	$21, %eax
	andl	$2097152, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	sall	$20, %eax
	andl	$1048576, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	sall	$19, %eax
	andl	$524288, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	sall	$18, %eax
	andl	$262144, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	sall	$17, %eax
	andl	$131072, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$5, %al
	movzbl	%al, %eax
	sall	$16, %eax
	andl	$65536, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$15, %eax
	movzwl	%ax, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$14, %eax
	andl	$16384, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$13, %eax
	andl	$8192, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$12, %eax
	andl	$4096, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$11, %eax
	andl	$2048, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$10, %eax
	andl	$1024, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$9, %eax
	andl	$512, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	$3, %al
	movzbl	%al, %eax
	sall	$8, %eax
	andl	$256, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$7, %eax
	movzbl	(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	sall	$7, %eax
	movzbl	%al, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$6, %eax
	movzbl	(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %ecx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	%al
	movzbl	%al, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movl	%eax, (%edx)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_InvIP
	.def	_InvIP;	.scl	2;	.type	32;	.endef
_InvIP:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$24, %eax
	sall	$7, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$24, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$16, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$16, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$8, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$8, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	andl	$1, %eax
	orl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	movl	12(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$25, %eax
	sall	$7, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$25, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$17, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$17, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$9, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$9, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	andl	$2, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	%eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	movl	12(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$26, %eax
	sall	$7, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$26, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$18, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$18, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$10, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$10, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$2, %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	movl	12(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$27, %eax
	sall	$7, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$27, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$19, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$19, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$11, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$11, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$3, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	movl	12(%ebp), %eax
	leal	4(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$28, %eax
	sall	$7, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$28, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$20, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$20, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$12, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$12, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$4, %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$4, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	movl	12(%ebp), %eax
	leal	5(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$29, %eax
	sall	$7, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$29, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$21, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$21, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$13, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$13, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$5, %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$5, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	movl	12(%ebp), %eax
	leal	6(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$30, %eax
	sall	$7, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$30, %eax
	sall	$6, %eax
	andl	$64, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$22, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$22, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$14, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$14, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$6, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	movl	12(%ebp), %eax
	leal	7(%eax), %edx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$31, %eax
	sall	$7, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$31, %eax
	sall	$6, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$23, %eax
	sall	$5, %eax
	andl	$32, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$23, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$15, %eax
	sall	$3, %eax
	andl	$8, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$15, %eax
	sall	$2, %eax
	andl	$4, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	shrl	$7, %eax
	addl	%eax, %eax
	andl	$2, %eax
	orl	%eax, %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	shrl	$7, %eax
	andl	$1, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_f
	.def	_f;	.scl	2;	.type	32;	.endef
_f:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	sall	$31, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	shrl	%eax
	andl	$2013265920, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$4, %eax
	shrl	$5, %eax
	andl	$67108864, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$3, %eax
	shrl	$6, %eax
	andl	$33554432, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	shrl	$3, %eax
	andl	$31457280, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$8, %eax
	shrl	$11, %eax
	andl	$1048576, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$7, %eax
	shrl	$12, %eax
	andl	$524288, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	shrl	$5, %eax
	andl	$491520, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$12, %eax
	shrl	$17, %eax
	andl	$16384, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$11, %eax
	shrl	$18, %eax
	andl	$8192, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	shrl	$7, %eax
	andl	$7680, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$16, %eax
	shrl	$23, %eax
	andl	$256, %eax
	orl	%edx, %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	sall	$15, %eax
	andl	$-134217728, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$20, %eax
	shrl	$5, %eax
	andl	$67108864, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$19, %eax
	shrl	$6, %eax
	andl	$33554432, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$13, %eax
	andl	$31457280, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$24, %eax
	shrl	$11, %eax
	andl	$1048576, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$23, %eax
	shrl	$12, %eax
	andl	$524288, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$11, %eax
	andl	$491520, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$28, %eax
	shrl	$17, %eax
	andl	$16384, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$27, %eax
	shrl	$18, %eax
	andl	$8192, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$9, %eax
	andl	$7680, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	shrl	$23, %eax
	andl	$256, %eax
	orl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	shrl	$24, %eax
	movb	%al, -18(%ebp)
	movl	-8(%ebp), %eax
	shrl	$16, %eax
	movb	%al, -17(%ebp)
	movl	-8(%ebp), %eax
	shrl	$8, %eax
	movb	%al, -16(%ebp)
	movl	-12(%ebp), %eax
	shrl	$24, %eax
	movb	%al, -15(%ebp)
	movl	-12(%ebp), %eax
	shrl	$16, %eax
	movb	%al, -14(%ebp)
	movl	-12(%ebp), %eax
	shrl	$8, %eax
	movb	%al, -13(%ebp)
	movzbl	-18(%ebp), %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	movb	%al, -18(%ebp)
	movzbl	-17(%ebp), %edx
	movl	12(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	movb	%al, -17(%ebp)
	movzbl	-16(%ebp), %edx
	movl	12(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	movb	%al, -16(%ebp)
	movzbl	-15(%ebp), %edx
	movl	12(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	movb	%al, -15(%ebp)
	movzbl	-14(%ebp), %edx
	movl	12(%ebp), %eax
	addl	$4, %eax
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	movb	%al, -14(%ebp)
	movzbl	-13(%ebp), %edx
	movl	12(%ebp), %eax
	addl	$5, %eax
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	movb	%al, -13(%ebp)
	movzbl	-18(%ebp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	andl	$32, %eax
	movl	%eax, %edx
	movzbl	-18(%ebp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sarl	%eax
	andl	$15, %eax
	orl	%eax, %edx
	movzbl	-18(%ebp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%edx, %eax
	movzbl	_sbox1(%eax), %eax
	movzbl	%al, %eax
	sall	$28, %eax
	movl	%eax, %edx
	movzbl	-18(%ebp), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$48, %eax
	movl	%eax, %ecx
	movzbl	-17(%ebp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%ecx, %eax
	andl	$32, %eax
	movl	%eax, %ecx
	movzbl	-18(%ebp), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$48, %eax
	movl	%eax, %ebx
	movzbl	-17(%ebp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%ebx, %eax
	sarl	%eax
	andl	$15, %eax
	orl	%eax, %ecx
	movzbl	-18(%ebp), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$48, %eax
	movl	%eax, %ebx
	movzbl	-17(%ebp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%ebx, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	movzbl	_sbox2(%eax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	orl	%eax, %edx
	movzbl	-17(%ebp), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$60, %eax
	movl	%eax, %ecx
	movzbl	-16(%ebp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	orl	%ecx, %eax
	andl	$32, %eax
	movl	%eax, %ecx
	movzbl	-17(%ebp), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$60, %eax
	movl	%eax, %ebx
	movzbl	-16(%ebp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	orl	%ebx, %eax
	sarl	%eax
	andl	$15, %eax
	orl	%eax, %ecx
	movzbl	-17(%ebp), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$60, %eax
	movl	%eax, %ebx
	movzbl	-16(%ebp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	orl	%ebx, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	movzbl	_sbox3(%eax), %eax
	movzbl	%al, %eax
	sall	$20, %eax
	orl	%eax, %edx
	movzbl	-16(%ebp), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	movl	%eax, %ecx
	movzbl	-16(%ebp), %eax
	movzbl	%al, %eax
	sarl	%eax
	andl	$15, %eax
	orl	%eax, %ecx
	movzbl	-16(%ebp), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	movzbl	_sbox4(%eax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	-15(%ebp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	andl	$32, %eax
	movl	%eax, %ecx
	movzbl	-15(%ebp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sarl	%eax
	andl	$15, %eax
	orl	%eax, %ecx
	movzbl	-15(%ebp), %eax
	shrb	$2, %al
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	movzbl	_sbox5(%eax), %eax
	movzbl	%al, %eax
	sall	$12, %eax
	orl	%eax, %edx
	movzbl	-15(%ebp), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$48, %eax
	movl	%eax, %ecx
	movzbl	-14(%ebp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%ecx, %eax
	andl	$32, %eax
	movl	%eax, %ecx
	movzbl	-15(%ebp), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$48, %eax
	movl	%eax, %ebx
	movzbl	-14(%ebp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%ebx, %eax
	sarl	%eax
	andl	$15, %eax
	orl	%eax, %ecx
	movzbl	-15(%ebp), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$48, %eax
	movl	%eax, %ebx
	movzbl	-14(%ebp), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	orl	%ebx, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	movzbl	_sbox6(%eax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movzbl	-14(%ebp), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$60, %eax
	movl	%eax, %ecx
	movzbl	-13(%ebp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	orl	%ecx, %eax
	andl	$32, %eax
	movl	%eax, %ecx
	movzbl	-14(%ebp), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$60, %eax
	movl	%eax, %ebx
	movzbl	-13(%ebp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	orl	%ebx, %eax
	sarl	%eax
	andl	$15, %eax
	orl	%eax, %ecx
	movzbl	-14(%ebp), %eax
	movzbl	%al, %eax
	sall	$2, %eax
	andl	$60, %eax
	movl	%eax, %ebx
	movzbl	-13(%ebp), %eax
	shrb	$6, %al
	movzbl	%al, %eax
	orl	%ebx, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	movzbl	_sbox7(%eax), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	orl	%eax, %edx
	movzbl	-13(%ebp), %eax
	movzbl	%al, %eax
	andl	$32, %eax
	movl	%eax, %ecx
	movzbl	-13(%ebp), %eax
	movzbl	%al, %eax
	sarl	%eax
	andl	$15, %eax
	orl	%eax, %ecx
	movzbl	-13(%ebp), %eax
	movzbl	%al, %eax
	sall	$4, %eax
	andl	$16, %eax
	orl	%ecx, %eax
	movzbl	_sbox8(%eax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	sall	$15, %eax
	andl	$-2147483648, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$6, %eax
	shrl	%eax
	andl	$1073741824, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$19, %eax
	shrl	$2, %eax
	andl	$536870912, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$20, %eax
	shrl	$3, %eax
	andl	$268435456, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$28, %eax
	shrl	$4, %eax
	andl	$134217728, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$11, %eax
	shrl	$5, %eax
	andl	$67108864, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$27, %eax
	shrl	$6, %eax
	andl	$33554432, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$16, %eax
	shrl	$7, %eax
	andl	$16777216, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	shrl	$8, %eax
	andl	$8388608, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$14, %eax
	shrl	$9, %eax
	andl	$4194304, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$22, %eax
	shrl	$10, %eax
	andl	$2097152, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$25, %eax
	shrl	$11, %eax
	andl	$1048576, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$4, %eax
	shrl	$12, %eax
	andl	$524288, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$17, %eax
	shrl	$13, %eax
	andl	$262144, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$30, %eax
	shrl	$14, %eax
	andl	$131072, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$9, %eax
	shrl	$15, %eax
	andl	$65536, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %eax
	shrl	$16, %eax
	andl	$32768, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$7, %eax
	shrl	$17, %eax
	andl	$16384, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$23, %eax
	shrl	$18, %eax
	andl	$8192, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$13, %eax
	shrl	$19, %eax
	andl	$4096, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$31, %eax
	shrl	$20, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$26, %eax
	shrl	$21, %eax
	andl	$1024, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$2, %eax
	shrl	$22, %eax
	andl	$512, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$8, %eax
	shrl	$23, %eax
	andl	$256, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$18, %eax
	shrl	$24, %eax
	andl	$128, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$12, %eax
	shrl	$25, %eax
	andl	$64, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$29, %eax
	shrl	$26, %eax
	andl	$32, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$5, %eax
	shrl	$27, %eax
	andl	$16, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$21, %eax
	shrl	$28, %eax
	andl	$8, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$10, %eax
	shrl	$29, %eax
	andl	$4, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$3, %eax
	shrl	$30, %eax
	andl	$2, %eax
	orl	%eax, %edx
	movl	8(%ebp), %eax
	sall	$24, %eax
	shrl	$31, %eax
	orl	%edx, %eax
	movl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.data
	.align 32
LC0:
	.long	56
	.long	48
	.long	40
	.long	32
	.long	24
	.long	16
	.long	8
	.long	0
	.long	57
	.long	49
	.long	41
	.long	33
	.long	25
	.long	17
	.long	9
	.long	1
	.long	58
	.long	50
	.long	42
	.long	34
	.long	26
	.long	18
	.long	10
	.long	2
	.long	59
	.long	51
	.long	43
	.long	35
	.align 32
LC1:
	.long	62
	.long	54
	.long	46
	.long	38
	.long	30
	.long	22
	.long	14
	.long	6
	.long	61
	.long	53
	.long	45
	.long	37
	.long	29
	.long	21
	.long	13
	.long	5
	.long	60
	.long	52
	.long	44
	.long	36
	.long	28
	.long	20
	.long	12
	.long	4
	.long	27
	.long	19
	.long	11
	.long	3
	.align 32
LC2:
	.long	13
	.long	16
	.long	10
	.long	23
	.long	0
	.long	4
	.long	2
	.long	27
	.long	14
	.long	5
	.long	20
	.long	9
	.long	22
	.long	18
	.long	11
	.long	3
	.long	25
	.long	7
	.long	15
	.long	6
	.long	26
	.long	19
	.long	12
	.long	1
	.long	40
	.long	51
	.long	30
	.long	36
	.long	46
	.long	54
	.long	29
	.long	39
	.long	50
	.long	44
	.long	32
	.long	47
	.long	43
	.long	48
	.long	38
	.long	55
	.long	33
	.long	52
	.long	45
	.long	41
	.long	49
	.long	35
	.long	28
	.long	31
	.text
	.globl	_des_key_setup
	.def	_des_key_setup;	.scl	2;	.type	32;	.endef
_des_key_setup:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$516, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$1, -96(%ebp)
	movl	$1, -92(%ebp)
	movl	$2, -88(%ebp)
	movl	$2, -84(%ebp)
	movl	$2, -80(%ebp)
	movl	$2, -76(%ebp)
	movl	$2, -72(%ebp)
	movl	$2, -68(%ebp)
	movl	$1, -64(%ebp)
	movl	$2, -60(%ebp)
	movl	$2, -56(%ebp)
	movl	$2, -52(%ebp)
	movl	$2, -48(%ebp)
	movl	$2, -44(%ebp)
	movl	$2, -40(%ebp)
	movl	$1, -36(%ebp)
	leal	-208(%ebp), %eax
	movl	$LC0, %ebx
	movl	$28, %edx
	movl	%eax, %edi
	movl	%ebx, %esi
	movl	%edx, %ecx
	rep movsl
	leal	-320(%ebp), %eax
	movl	$LC1, %ebx
	movl	$28, %edx
	movl	%eax, %edi
	movl	%ebx, %esi
	movl	%edx, %ecx
	rep movsl
	leal	-512(%ebp), %eax
	movl	$LC2, %ebx
	movl	$48, %edx
	movl	%eax, %edi
	movl	%ebx, %esi
	movl	%edx, %ecx
	rep movsl
	movl	$0, -16(%ebp)
	movl	$31, -20(%ebp)
	movl	$0, -28(%ebp)
	jmp	L6
L7:
	movl	-16(%ebp), %eax
	movl	-208(%ebp,%eax,4), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	-208(%ebp,%eax,4), %eax
	notl	%eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -28(%ebp)
	addl	$1, -16(%ebp)
	subl	$1, -20(%ebp)
L6:
	cmpl	$27, -16(%ebp)
	jbe	L7
	movl	$0, -16(%ebp)
	movl	$31, -20(%ebp)
	movl	$0, -32(%ebp)
	jmp	L8
L9:
	movl	-16(%ebp), %eax
	movl	-320(%ebp,%eax,4), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	-320(%ebp,%eax,4), %eax
	notl	%eax
	andl	$7, %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	orl	%eax, -32(%ebp)
	addl	$1, -16(%ebp)
	subl	$1, -20(%ebp)
L8:
	cmpl	$27, -16(%ebp)
	jbe	L9
	movl	$0, -16(%ebp)
	jmp	L10
L19:
	movl	-16(%ebp), %eax
	movl	-96(%ebp,%eax,4), %eax
	movl	-28(%ebp), %edx
	movl	%edx, %ebx
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	-16(%ebp), %eax
	movl	-96(%ebp,%eax,4), %eax
	movl	$28, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	-28(%ebp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	andl	$-16, %eax
	movl	%eax, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-96(%ebp,%eax,4), %eax
	movl	-32(%ebp), %edx
	movl	%edx, %ebx
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	-16(%ebp), %eax
	movl	-96(%ebp,%eax,4), %eax
	movl	$28, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	-32(%ebp), %edx
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %eax
	orl	%ebx, %eax
	andl	$-16, %eax
	movl	%eax, -32(%ebp)
	cmpl	$1, 16(%ebp)
	jne	L11
	movl	$15, %eax
	subl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
	jmp	L12
L11:
	movl	-16(%ebp), %eax
	movl	%eax, -24(%ebp)
L12:
	movl	$0, -20(%ebp)
	jmp	L13
L14:
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	-20(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	addl	$1, -20(%ebp)
L13:
	cmpl	$5, -20(%ebp)
	jbe	L14
	movl	$0, -20(%ebp)
	jmp	L15
L16:
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-20(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, -525(%ebp)
	movl	-20(%ebp), %eax
	movl	-512(%ebp,%eax,4), %eax
	movl	$31, %ecx
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	-28(%ebp), %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	movl	%eax, %esi
	andl	$1, %esi
	movl	-20(%ebp), %eax
	notl	%eax
	andl	$7, %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	orb	-525(%ebp), %al
	movb	%al, (%ebx,%edx)
	addl	$1, -20(%ebp)
L15:
	cmpl	$23, -20(%ebp)
	jbe	L16
	jmp	L17
L18:
	movl	-24(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movl	-20(%ebp), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	-24(%ebp), %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax,%edx), %eax
	movb	%al, -525(%ebp)
	movl	-20(%ebp), %eax
	movl	-512(%ebp,%eax,4), %eax
	movl	$59, %ecx
	movl	%ecx, %edi
	subl	%eax, %edi
	movl	%edi, %eax
	movl	-32(%ebp), %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	%esi, %eax
	movl	%eax, %esi
	andl	$1, %esi
	movl	-20(%ebp), %eax
	notl	%eax
	andl	$7, %eax
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	%esi, %eax
	orb	-525(%ebp), %al
	movb	%al, (%ebx,%edx)
	addl	$1, -20(%ebp)
L17:
	cmpl	$47, -20(%ebp)
	jbe	L18
	addl	$1, -16(%ebp)
L10:
	cmpl	$15, -16(%ebp)
	jbe	L19
	nop
	addl	$516, %esp
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
LFE20:
	.globl	_des_crypt
	.def	_des_crypt;	.scl	2;	.type	32;	.endef
_des_crypt:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_IP
	movl	$0, -4(%ebp)
	jmp	L21
L22:
	movl	-12(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_f
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	xorl	%edx, %eax
	movl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -16(%ebp)
	addl	$1, -4(%ebp)
L21:
	cmpl	$14, -4(%ebp)
	jbe	L22
	movl	16(%ebp), %eax
	leal	90(%eax), %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_f
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	xorl	%edx, %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_InvIP
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.globl	_three_des_key_setup
	.def	_three_des_key_setup;	.scl	2;	.type	32;	.endef
_three_des_key_setup:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	cmpl	$0, 16(%ebp)
	jne	L24
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_key_setup
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	12(%ebp), %edx
	leal	96(%edx), %ecx
	movl	8(%ebp), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_des_key_setup
	movl	12(%ebp), %eax
	leal	192(%eax), %ecx
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_des_key_setup
	jmp	L26
L24:
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_des_key_setup
	cmpl	$0, 16(%ebp)
	sete	%al
	movzbl	%al, %eax
	movl	12(%ebp), %edx
	leal	96(%edx), %ecx
	movl	8(%ebp), %edx
	addl	$8, %edx
	movl	%eax, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	_des_key_setup
	movl	12(%ebp), %eax
	leal	192(%eax), %edx
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_key_setup
L26:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.globl	_three_des_crypt
	.def	_three_des_crypt;	.scl	2;	.type	32;	.endef
_three_des_crypt:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_crypt
	movl	16(%ebp), %eax
	addl	$96, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_crypt
	movl	16(%ebp), %eax
	addl	$192, %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_crypt
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.globl	_des_test
	.def	_des_test;	.scl	2;	.type	32;	.endef
_des_test:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$552, %esp
	movb	$1, -20(%ebp)
	movb	$35, -19(%ebp)
	movb	$69, -18(%ebp)
	movb	$103, -17(%ebp)
	movb	$-119, -16(%ebp)
	movb	$-85, -15(%ebp)
	movb	$-51, -14(%ebp)
	movb	$-25, -13(%ebp)
	movb	$1, -28(%ebp)
	movb	$35, -27(%ebp)
	movb	$69, -26(%ebp)
	movb	$103, -25(%ebp)
	movb	$-119, -24(%ebp)
	movb	$-85, -23(%ebp)
	movb	$-51, -22(%ebp)
	movb	$-17, -21(%ebp)
	movb	$84, -36(%ebp)
	movb	$104, -35(%ebp)
	movb	$101, -34(%ebp)
	movb	$32, -33(%ebp)
	movb	$113, -32(%ebp)
	movb	$117, -31(%ebp)
	movb	$102, -30(%ebp)
	movb	$99, -29(%ebp)
	movb	$-55, -44(%ebp)
	movb	$87, -43(%ebp)
	movb	$68, -42(%ebp)
	movb	$37, -41(%ebp)
	movb	$106, -40(%ebp)
	movb	$94, -39(%ebp)
	movb	$-45, -38(%ebp)
	movb	$29, -37(%ebp)
	movb	$-123, -52(%ebp)
	movb	$-24, -51(%ebp)
	movb	$19, -50(%ebp)
	movb	$84, -49(%ebp)
	movb	$15, -48(%ebp)
	movb	$10, -47(%ebp)
	movb	$-76, -46(%ebp)
	movb	$5, -45(%ebp)
	movb	$-55, -60(%ebp)
	movb	$87, -59(%ebp)
	movb	$68, -58(%ebp)
	movb	$37, -57(%ebp)
	movb	$106, -56(%ebp)
	movb	$94, -55(%ebp)
	movb	$-45, -54(%ebp)
	movb	$29, -53(%ebp)
	movb	$-88, -68(%ebp)
	movb	$38, -67(%ebp)
	movb	$-3, -66(%ebp)
	movb	$-116, -65(%ebp)
	movb	$-27, -64(%ebp)
	movb	$59, -63(%ebp)
	movb	$-123, -62(%ebp)
	movb	$95, -61(%ebp)
	movb	$1, -76(%ebp)
	movb	$35, -75(%ebp)
	movb	$69, -74(%ebp)
	movb	$103, -73(%ebp)
	movb	$-119, -72(%ebp)
	movb	$-85, -71(%ebp)
	movb	$-51, -70(%ebp)
	movb	$-17, -69(%ebp)
	movb	$19, -84(%ebp)
	movb	$52, -83(%ebp)
	movb	$87, -82(%ebp)
	movb	$121, -81(%ebp)
	movb	$-101, -80(%ebp)
	movb	$-68, -79(%ebp)
	movb	$-33, -78(%ebp)
	movb	$-15, -77(%ebp)
	movb	$1, -108(%ebp)
	movb	$35, -107(%ebp)
	movb	$69, -106(%ebp)
	movb	$103, -105(%ebp)
	movb	$-119, -104(%ebp)
	movb	$-85, -103(%ebp)
	movb	$-51, -102(%ebp)
	movb	$-17, -101(%ebp)
	movb	$1, -100(%ebp)
	movb	$35, -99(%ebp)
	movb	$69, -98(%ebp)
	movb	$103, -97(%ebp)
	movb	$-119, -96(%ebp)
	movb	$-85, -95(%ebp)
	movb	$-51, -94(%ebp)
	movb	$-17, -93(%ebp)
	movb	$1, -92(%ebp)
	movb	$35, -91(%ebp)
	movb	$69, -90(%ebp)
	movb	$103, -89(%ebp)
	movb	$-119, -88(%ebp)
	movb	$-85, -87(%ebp)
	movb	$-51, -86(%ebp)
	movb	$-17, -85(%ebp)
	movb	$1, -132(%ebp)
	movb	$35, -131(%ebp)
	movb	$69, -130(%ebp)
	movb	$103, -129(%ebp)
	movb	$-119, -128(%ebp)
	movb	$-85, -127(%ebp)
	movb	$-51, -126(%ebp)
	movb	$-17, -125(%ebp)
	movb	$35, -124(%ebp)
	movb	$69, -123(%ebp)
	movb	$103, -122(%ebp)
	movb	$-119, -121(%ebp)
	movb	$-85, -120(%ebp)
	movb	$-51, -119(%ebp)
	movb	$-17, -118(%ebp)
	movb	$1, -117(%ebp)
	movb	$69, -116(%ebp)
	movb	$103, -115(%ebp)
	movb	$-119, -114(%ebp)
	movb	$-85, -113(%ebp)
	movb	$-51, -112(%ebp)
	movb	$-17, -111(%ebp)
	movb	$1, -110(%ebp)
	movb	$35, -109(%ebp)
	movl	$1, -12(%ebp)
	movl	$0, 8(%esp)
	leal	-228(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_key_setup
	leal	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_crypt
	cmpl	$0, -12(%ebp)
	je	L29
	movl	$8, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L29
	movl	$1, %eax
	jmp	L30
L29:
	movl	$0, %eax
L30:
	movl	%eax, -12(%ebp)
	movl	$1, 8(%esp)
	leal	-228(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-76(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_key_setup
	leal	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_crypt
	cmpl	$0, -12(%ebp)
	je	L31
	movl	$8, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L31
	movl	$1, %eax
	jmp	L32
L31:
	movl	$0, %eax
L32:
	movl	%eax, -12(%ebp)
	movl	$0, 8(%esp)
	leal	-228(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_key_setup
	leal	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_crypt
	cmpl	$0, -12(%ebp)
	je	L33
	movl	$8, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L33
	movl	$1, %eax
	jmp	L34
L33:
	movl	$0, %eax
L34:
	movl	%eax, -12(%ebp)
	movl	$1, 8(%esp)
	leal	-228(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-84(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_key_setup
	leal	-228(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_des_crypt
	cmpl	$0, -12(%ebp)
	je	L35
	movl	$8, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-28(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L35
	movl	$1, %eax
	jmp	L36
L35:
	movl	$0, %eax
L36:
	movl	%eax, -12(%ebp)
	movl	$0, 8(%esp)
	leal	-516(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	_three_des_key_setup
	leal	-516(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_three_des_crypt
	cmpl	$0, -12(%ebp)
	je	L37
	movl	$8, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L37
	movl	$1, %eax
	jmp	L38
L37:
	movl	$0, %eax
L38:
	movl	%eax, -12(%ebp)
	movl	$1, 8(%esp)
	leal	-516(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-108(%ebp), %eax
	movl	%eax, (%esp)
	call	_three_des_key_setup
	leal	-516(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_three_des_crypt
	cmpl	$0, -12(%ebp)
	je	L39
	movl	$8, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L39
	movl	$1, %eax
	jmp	L40
L39:
	movl	$0, %eax
L40:
	movl	%eax, -12(%ebp)
	movl	$0, 8(%esp)
	leal	-516(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	_three_des_key_setup
	leal	-516(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_three_des_crypt
	cmpl	$0, -12(%ebp)
	je	L41
	movl	$8, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L41
	movl	$1, %eax
	jmp	L42
L41:
	movl	$0, %eax
L42:
	movl	%eax, -12(%ebp)
	movl	$1, 8(%esp)
	leal	-516(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-132(%ebp), %eax
	movl	%eax, (%esp)
	call	_three_des_key_setup
	leal	-516(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-68(%ebp), %eax
	movl	%eax, (%esp)
	call	_three_des_crypt
	cmpl	$0, -12(%ebp)
	je	L43
	movl	$8, 8(%esp)
	leal	-524(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L43
	movl	$1, %eax
	jmp	L44
L43:
	movl	$0, %eax
L44:
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC3:
	.ascii "SUCCEEDED\0"
LC4:
	.ascii "FAILED\0"
LC5:
	.ascii "DES test: %s\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	call	_des_test
	testl	%eax, %eax
	je	L47
	movl	$LC3, %eax
	jmp	L48
L47:
	movl	$LC4, %eax
L48:
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
