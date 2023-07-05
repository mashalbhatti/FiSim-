	.file	"sha256.c"
	.section .rdata,"dr"
	.align 32
_k:
	.long	1116352408
	.long	1899447441
	.long	-1245643825
	.long	-373957723
	.long	961987163
	.long	1508970993
	.long	-1841331548
	.long	-1424204075
	.long	-670586216
	.long	310598401
	.long	607225278
	.long	1925078388
	.long	-2132889090
	.long	-1680079193
	.long	-1046744716
	.long	-459576895
	.long	-272742522
	.long	264347078
	.long	604807628
	.long	770255983
	.long	1249150122
	.long	1555081692
	.long	1996064986
	.long	-1740746414
	.long	-1473132947
	.long	-1341970488
	.long	-1084653625
	.long	-958395405
	.long	-710438585
	.long	113926993
	.long	338241895
	.long	666307205
	.long	773529912
	.long	1294757372
	.long	1396182291
	.long	1695183700
	.long	1986661051
	.long	-2117940946
	.long	-1838011259
	.long	-1564481375
	.long	-1474664885
	.long	-1035236496
	.long	-949202525
	.long	-778901479
	.long	-694614492
	.long	-200395387
	.long	275423344
	.long	430227734
	.long	506948616
	.long	659060556
	.long	883997877
	.long	958139571
	.long	1322822218
	.long	1537002063
	.long	1747873779
	.long	1955562222
	.long	2024104815
	.long	-2067236844
	.long	-1933114872
	.long	-1866530822
	.long	-1538233109
	.long	-1090935817
	.long	-965641998
	.text
	.globl	_sha256_transform
	.def	_sha256_transform;	.scl	2;	.type	32;	.endef
_sha256_transform:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$304, %esp
	movl	$0, -36(%ebp)
	movl	$0, -40(%ebp)
	jmp	L2
L3:
	movl	12(%ebp), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-40(%ebp), %eax
	leal	1(%eax), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-40(%ebp), %eax
	leal	2(%eax), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%eax, %edx
	movl	-40(%ebp), %eax
	leal	3(%eax), %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, -304(%ebp,%eax,4)
	addl	$1, -36(%ebp)
	addl	$4, -40(%ebp)
L2:
	cmpl	$15, -36(%ebp)
	jbe	L3
	jmp	L4
L5:
	movl	-36(%ebp), %eax
	subl	$2, %eax
	movl	-304(%ebp,%eax,4), %eax
	roll	$15, %eax
	movl	%eax, %edx
	movl	-36(%ebp), %eax
	subl	$2, %eax
	movl	-304(%ebp,%eax,4), %eax
	roll	$13, %eax
	xorl	%eax, %edx
	movl	-36(%ebp), %eax
	subl	$2, %eax
	movl	-304(%ebp,%eax,4), %eax
	shrl	$10, %eax
	xorl	%eax, %edx
	movl	-36(%ebp), %eax
	subl	$7, %eax
	movl	-304(%ebp,%eax,4), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	subl	$15, %eax
	movl	-304(%ebp,%eax,4), %eax
	rorl	$7, %eax
	movl	%eax, %ecx
	movl	-36(%ebp), %eax
	subl	$15, %eax
	movl	-304(%ebp,%eax,4), %eax
	roll	$14, %eax
	xorl	%eax, %ecx
	movl	-36(%ebp), %eax
	subl	$15, %eax
	movl	-304(%ebp,%eax,4), %eax
	shrl	$3, %eax
	xorl	%ecx, %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	subl	$16, %eax
	movl	-304(%ebp,%eax,4), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	%edx, -304(%ebp,%eax,4)
	addl	$1, -36(%ebp)
L4:
	cmpl	$63, -36(%ebp)
	jbe	L5
	movl	8(%ebp), %eax
	movl	80(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	84(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	8(%ebp), %eax
	movl	88(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	92(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	96(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	100(%eax), %eax
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	104(%eax), %eax
	movl	%eax, -28(%ebp)
	movl	8(%ebp), %eax
	movl	108(%eax), %eax
	movl	%eax, -32(%ebp)
	movl	$0, -36(%ebp)
	jmp	L6
L7:
	movl	-20(%ebp), %eax
	rorl	$6, %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	rorl	$11, %eax
	xorl	%eax, %edx
	movl	-20(%ebp), %eax
	roll	$7, %eax
	xorl	%eax, %edx
	movl	-32(%ebp), %eax
	leal	(%edx,%eax), %ecx
	movl	-20(%ebp), %eax
	andl	-24(%ebp), %eax
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	notl	%eax
	andl	-28(%ebp), %eax
	xorl	%edx, %eax
	leal	(%ecx,%eax), %edx
	movl	-36(%ebp), %eax
	movl	_k(,%eax,4), %eax
	addl	%eax, %edx
	movl	-36(%ebp), %eax
	movl	-304(%ebp,%eax,4), %eax
	addl	%edx, %eax
	movl	%eax, -44(%ebp)
	movl	-4(%ebp), %eax
	rorl	$2, %eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	rorl	$13, %eax
	xorl	%eax, %edx
	movl	-4(%ebp), %eax
	roll	$10, %eax
	movl	%edx, %ecx
	xorl	%eax, %ecx
	movl	-4(%ebp), %eax
	andl	-8(%ebp), %eax
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	andl	-12(%ebp), %eax
	xorl	%eax, %edx
	movl	-8(%ebp), %eax
	andl	-12(%ebp), %eax
	xorl	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, -48(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-16(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
	movl	-44(%ebp), %edx
	movl	-48(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	addl	$1, -36(%ebp)
L6:
	cmpl	$63, -36(%ebp)
	jbe	L7
	movl	8(%ebp), %eax
	movl	80(%eax), %edx
	movl	-4(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 80(%eax)
	movl	8(%ebp), %eax
	movl	84(%eax), %edx
	movl	-8(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 84(%eax)
	movl	8(%ebp), %eax
	movl	88(%eax), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 88(%eax)
	movl	8(%ebp), %eax
	movl	92(%eax), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 92(%eax)
	movl	8(%ebp), %eax
	movl	96(%eax), %edx
	movl	-20(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 96(%eax)
	movl	8(%ebp), %eax
	movl	100(%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 100(%eax)
	movl	8(%ebp), %eax
	movl	104(%eax), %edx
	movl	-28(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 104(%eax)
	movl	8(%ebp), %eax
	movl	108(%eax), %edx
	movl	-32(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 108(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_sha256_init
	.def	_sha256_init;	.scl	2;	.type	32;	.endef
_sha256_init:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
	movl	8(%ebp), %eax
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	movl	8(%ebp), %eax
	movl	$1779033703, 80(%eax)
	movl	8(%ebp), %eax
	movl	$-1150833019, 84(%eax)
	movl	8(%ebp), %eax
	movl	$1013904242, 88(%eax)
	movl	8(%ebp), %eax
	movl	$-1521486534, 92(%eax)
	movl	8(%ebp), %eax
	movl	$1359893119, 96(%eax)
	movl	8(%ebp), %eax
	movl	$-1694144372, 100(%eax)
	movl	8(%ebp), %eax
	movl	$528734635, 104(%eax)
	movl	8(%ebp), %eax
	movl	$1541459225, 108(%eax)
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.globl	_sha256_update
	.def	_sha256_update;	.scl	2;	.type	32;	.endef
_sha256_update:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, -4(%ebp)
	jmp	L10
L12:
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	12(%ebp), %ecx
	movl	-4(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ecx
	movl	8(%ebp), %edx
	movb	%cl, (%edx,%eax)
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 64(%eax)
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	cmpl	$64, %eax
	jne	L11
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_transform
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	addl	$512, %eax
	adcl	$0, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 72(%ecx)
	movl	%edx, 76(%ecx)
	movl	8(%ebp), %eax
	movl	$0, 64(%eax)
L11:
	addl	$1, -4(%ebp)
L10:
	movl	-4(%ebp), %eax
	cmpl	16(%ebp), %eax
	jb	L12
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_sha256_final
	.def	_sha256_final;	.scl	2;	.type	32;	.endef
_sha256_final:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	64(%eax), %eax
	cmpl	$55, %eax
	ja	L14
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	8(%ebp), %edx
	movb	$-128, (%edx,%eax)
	jmp	L15
L16:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	8(%ebp), %edx
	movb	$0, (%edx,%eax)
L15:
	cmpl	$55, -12(%ebp)
	jbe	L16
	jmp	L17
L14:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	8(%ebp), %edx
	movb	$-128, (%edx,%eax)
	jmp	L18
L19:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	8(%ebp), %edx
	movb	$0, (%edx,%eax)
L18:
	cmpl	$63, -12(%ebp)
	jbe	L19
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_transform
	movl	8(%ebp), %eax
	movl	$56, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_memset
L17:
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	8(%ebp), %ecx
	movl	64(%ecx), %ecx
	sall	$3, %ecx
	movl	$0, %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	8(%ebp), %ecx
	movl	%eax, 72(%ecx)
	movl	%edx, 76(%ecx)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 63(%eax)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	shrdl	$8, %edx, %eax
	shrl	$8, %edx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 62(%eax)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	shrdl	$16, %edx, %eax
	shrl	$16, %edx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 61(%eax)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	shrdl	$24, %edx, %eax
	shrl	$24, %edx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 60(%eax)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 59(%eax)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$8, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 58(%eax)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$16, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 57(%eax)
	movl	8(%ebp), %eax
	movl	76(%eax), %edx
	movl	72(%eax), %eax
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$24, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movb	%dl, 56(%eax)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_transform
	movl	$0, -12(%ebp)
	jmp	L20
L21:
	movl	12(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	80(%eax), %ebx
	movl	-12(%ebp), %ecx
	movl	$0, %eax
	subl	%ecx, %eax
	sall	$3, %eax
	addl	$24, %eax
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	leal	4(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	84(%eax), %ebx
	movl	-12(%ebp), %ecx
	movl	$0, %eax
	subl	%ecx, %eax
	sall	$3, %eax
	addl	$24, %eax
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	leal	8(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	88(%eax), %ebx
	movl	-12(%ebp), %ecx
	movl	$0, %eax
	subl	%ecx, %eax
	sall	$3, %eax
	addl	$24, %eax
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	leal	12(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	92(%eax), %ebx
	movl	-12(%ebp), %ecx
	movl	$0, %eax
	subl	%ecx, %eax
	sall	$3, %eax
	addl	$24, %eax
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	leal	16(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	96(%eax), %ebx
	movl	-12(%ebp), %ecx
	movl	$0, %eax
	subl	%ecx, %eax
	sall	$3, %eax
	addl	$24, %eax
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	leal	20(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	100(%eax), %ebx
	movl	-12(%ebp), %ecx
	movl	$0, %eax
	subl	%ecx, %eax
	sall	$3, %eax
	addl	$24, %eax
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	leal	24(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	104(%eax), %ebx
	movl	-12(%ebp), %ecx
	movl	$0, %eax
	subl	%ecx, %eax
	sall	$3, %eax
	addl	$24, %eax
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	movb	%al, (%edx)
	movl	-12(%ebp), %eax
	leal	28(%eax), %edx
	movl	12(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movl	108(%eax), %ebx
	movl	-12(%ebp), %ecx
	movl	$0, %eax
	subl	%ecx, %eax
	sall	$3, %eax
	addl	$24, %eax
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	%ebx, %eax
	movb	%al, (%edx)
	addl	$1, -12(%ebp)
L20:
	cmpl	$3, -12(%ebp)
	jbe	L21
	nop
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.globl	_sha256_test
	.def	_sha256_test;	.scl	2;	.type	32;	.endef
_sha256_test:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$344, %esp
	movl	$6513249, -20(%ebp)
	movl	$1684234849, -77(%ebp)
	movl	$1701077858, -73(%ebp)
	movl	$1717920867, -69(%ebp)
	movl	$1734763876, -65(%ebp)
	movl	$1751606885, -61(%ebp)
	movl	$1768449894, -57(%ebp)
	movl	$1785292903, -53(%ebp)
	movl	$1802135912, -49(%ebp)
	movl	$1818978921, -45(%ebp)
	movl	$1835821930, -41(%ebp)
	movl	$1852664939, -37(%ebp)
	movl	$1869507948, -33(%ebp)
	movl	$1886350957, -29(%ebp)
	movl	$1903193966, -25(%ebp)
	movb	$0, -21(%ebp)
	movl	$1633771873, -88(%ebp)
	movl	$1633771873, -84(%ebp)
	movw	$24929, -80(%ebp)
	movb	$0, -78(%ebp)
	movb	$-70, -120(%ebp)
	movb	$120, -119(%ebp)
	movb	$22, -118(%ebp)
	movb	$-65, -117(%ebp)
	movb	$-113, -116(%ebp)
	movb	$1, -115(%ebp)
	movb	$-49, -114(%ebp)
	movb	$-22, -113(%ebp)
	movb	$65, -112(%ebp)
	movb	$65, -111(%ebp)
	movb	$64, -110(%ebp)
	movb	$-34, -109(%ebp)
	movb	$93, -108(%ebp)
	movb	$-82, -107(%ebp)
	movb	$34, -106(%ebp)
	movb	$35, -105(%ebp)
	movb	$-80, -104(%ebp)
	movb	$3, -103(%ebp)
	movb	$97, -102(%ebp)
	movb	$-93, -101(%ebp)
	movb	$-106, -100(%ebp)
	movb	$23, -99(%ebp)
	movb	$122, -98(%ebp)
	movb	$-100, -97(%ebp)
	movb	$-76, -96(%ebp)
	movb	$16, -95(%ebp)
	movb	$-1, -94(%ebp)
	movb	$97, -93(%ebp)
	movb	$-14, -92(%ebp)
	movb	$0, -91(%ebp)
	movb	$21, -90(%ebp)
	movb	$-83, -89(%ebp)
	movb	$36, -152(%ebp)
	movb	$-115, -151(%ebp)
	movb	$106, -150(%ebp)
	movb	$97, -149(%ebp)
	movb	$-46, -148(%ebp)
	movb	$6, -147(%ebp)
	movb	$56, -146(%ebp)
	movb	$-72, -145(%ebp)
	movb	$-27, -144(%ebp)
	movb	$-64, -143(%ebp)
	movb	$38, -142(%ebp)
	movb	$-109, -141(%ebp)
	movb	$12, -140(%ebp)
	movb	$62, -139(%ebp)
	movb	$96, -138(%ebp)
	movb	$57, -137(%ebp)
	movb	$-93, -136(%ebp)
	movb	$60, -135(%ebp)
	movb	$-28, -134(%ebp)
	movb	$89, -133(%ebp)
	movb	$100, -132(%ebp)
	movb	$-1, -131(%ebp)
	movb	$33, -130(%ebp)
	movb	$103, -129(%ebp)
	movb	$-10, -128(%ebp)
	movb	$-20, -127(%ebp)
	movb	$-19, -126(%ebp)
	movb	$-44, -125(%ebp)
	movb	$25, -124(%ebp)
	movb	$-37, -123(%ebp)
	movb	$6, -122(%ebp)
	movb	$-63, -121(%ebp)
	movb	$-51, -184(%ebp)
	movb	$-57, -183(%ebp)
	movb	$110, -182(%ebp)
	movb	$92, -181(%ebp)
	movb	$-103, -180(%ebp)
	movb	$20, -179(%ebp)
	movb	$-5, -178(%ebp)
	movb	$-110, -177(%ebp)
	movb	$-127, -176(%ebp)
	movb	$-95, -175(%ebp)
	movb	$-57, -174(%ebp)
	movb	$-30, -173(%ebp)
	movb	$-124, -172(%ebp)
	movb	$-41, -171(%ebp)
	movb	$62, -170(%ebp)
	movb	$103, -169(%ebp)
	movb	$-15, -168(%ebp)
	movb	$-128, -167(%ebp)
	movb	$-102, -166(%ebp)
	movb	$72, -165(%ebp)
	movb	$-92, -164(%ebp)
	movb	$-105, -163(%ebp)
	movb	$32, -162(%ebp)
	movb	$14, -161(%ebp)
	movb	$4, -160(%ebp)
	movb	$109, -159(%ebp)
	movb	$57, -158(%ebp)
	movb	$-52, -157(%ebp)
	movb	$-57, -156(%ebp)
	movb	$17, -155(%ebp)
	movb	$44, -154(%ebp)
	movb	$-48, -153(%ebp)
	movl	$1, -16(%ebp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_init
	leal	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_update
	leal	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_final
	cmpl	$0, -16(%ebp)
	je	L23
	movl	$32, 8(%esp)
	leal	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-120(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L23
	movl	$1, %eax
	jmp	L24
L23:
	movl	$0, %eax
L24:
	movl	%eax, -16(%ebp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_init
	leal	-77(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, 8(%esp)
	leal	-77(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_update
	leal	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_final
	cmpl	$0, -16(%ebp)
	je	L25
	movl	$32, 8(%esp)
	leal	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-152(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L25
	movl	$1, %eax
	jmp	L26
L25:
	movl	$0, %eax
L26:
	movl	%eax, -16(%ebp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_init
	movl	$0, -12(%ebp)
	jmp	L27
L28:
	leal	-88(%ebp), %eax
	movl	%eax, (%esp)
	call	_strlen
	movl	%eax, 8(%esp)
	leal	-88(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_update
	addl	$1, -12(%ebp)
L27:
	cmpl	$99999, -12(%ebp)
	jle	L28
	leal	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-328(%ebp), %eax
	movl	%eax, (%esp)
	call	_sha256_final
	cmpl	$0, -16(%ebp)
	je	L29
	movl	$32, 8(%esp)
	leal	-216(%ebp), %eax
	movl	%eax, 4(%esp)
	leal	-184(%ebp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	jne	L29
	movl	$1, %eax
	jmp	L30
L29:
	movl	$0, %eax
L30:
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "SUCCEEDED\0"
LC1:
	.ascii "FAILED\0"
LC2:
	.ascii "SHA-256 tests: %s\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	call	_sha256_test
	testl	%eax, %eax
	je	L33
	movl	$LC0, %eax
	jmp	L34
L33:
	movl	$LC1, %eax
L34:
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
