	.file	"aes-256.c"
	.text
	.def	_rj_xtime;	.scl	3;	.type	32;	.endef
_rj_xtime:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	movl	8(%ebp), %eax
	movb	%al, -20(%ebp)
	movzbl	-20(%ebp), %eax
	addl	%eax, %eax
	movb	%al, -1(%ebp)
	movzbl	-20(%ebp), %eax
	testb	%al, %al
	jns	L2
	movzbl	-1(%ebp), %eax
	xorl	$27, %eax
	jmp	L4
L2:
	movzbl	-1(%ebp), %eax
L4:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.def	_gf_alog;	.scl	3;	.type	32;	.endef
_gf_alog:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movb	%al, -20(%ebp)
	movb	$1, -1(%ebp)
	movb	$0, -2(%ebp)
	jmp	L6
L8:
	movzbl	-1(%ebp), %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorb	%al, -1(%ebp)
	movzbl	-2(%ebp), %eax
	addl	$1, %eax
	movb	%al, -2(%ebp)
L6:
	cmpb	$-1, -20(%ebp)
	je	L7
	movzbl	-2(%ebp), %eax
	cmpb	-20(%ebp), %al
	jb	L8
L7:
	movzbl	-1(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.def	_gf_log;	.scl	3;	.type	32;	.endef
_gf_log:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movb	%al, -20(%ebp)
	movb	$1, -1(%ebp)
	movb	$0, -2(%ebp)
	cmpb	$0, -20(%ebp)
	je	L11
L12:
	movzbl	-1(%ebp), %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorb	%al, -1(%ebp)
	addb	$1, -2(%ebp)
	cmpb	$-1, -2(%ebp)
	je	L11
	movzbl	-1(%ebp), %eax
	cmpb	-20(%ebp), %al
	jne	L12
L11:
	movzbl	-2(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.def	_gf_mulinv;	.scl	3;	.type	32;	.endef
_gf_mulinv:
LFB16:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	cmpb	$0, -4(%ebp)
	je	L15
	movzbl	-4(%ebp), %eax
	movl	%eax, (%esp)
	call	_gf_log
	notl	%eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_gf_alog
	jmp	L17
L15:
	movl	$0, %eax
L17:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.def	_rj_sbox;	.scl	3;	.type	32;	.endef
_rj_sbox:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movb	%al, -20(%ebp)
	movzbl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_gf_mulinv
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	movb	%al, -2(%ebp)
	movzbl	-1(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movzbl	-1(%ebp), %eax
	shrb	$7, %al
	orl	%edx, %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	xorb	%al, -2(%ebp)
	movzbl	-1(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movzbl	-1(%ebp), %eax
	shrb	$7, %al
	orl	%edx, %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	xorb	%al, -2(%ebp)
	movzbl	-1(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movzbl	-1(%ebp), %eax
	shrb	$7, %al
	orl	%edx, %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	xorb	%al, -2(%ebp)
	movzbl	-1(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movzbl	-1(%ebp), %eax
	shrb	$7, %al
	orl	%eax, %edx
	movzbl	-2(%ebp), %eax
	xorl	%edx, %eax
	xorl	$99, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.def	_rj_sbox_inv;	.scl	3;	.type	32;	.endef
_rj_sbox_inv:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movb	%al, -20(%ebp)
	movzbl	-20(%ebp), %eax
	xorl	$99, %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movzbl	-1(%ebp), %eax
	shrb	$7, %al
	orl	%edx, %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	movb	%al, -2(%ebp)
	movzbl	-1(%ebp), %eax
	sall	$2, %eax
	movl	%eax, %edx
	movzbl	-1(%ebp), %eax
	shrb	$6, %al
	orl	%edx, %eax
	movb	%al, -1(%ebp)
	movzbl	-1(%ebp), %eax
	xorb	%al, -2(%ebp)
	movzbl	-1(%ebp), %eax
	sall	$3, %eax
	movl	%eax, %edx
	movzbl	-1(%ebp), %eax
	shrb	$5, %al
	orl	%eax, %edx
	movzbl	-2(%ebp), %eax
	xorl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_gf_mulinv
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.def	_subBytes;	.scl	3;	.type	32;	.endef
_subBytes:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movb	$0, -5(%ebp)
	jmp	L23
L24:
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	movb	%al, (%ebx)
	movzbl	-5(%ebp), %eax
	addl	$1, %eax
	movb	%al, -5(%ebp)
L23:
	cmpb	$15, -5(%ebp)
	jbe	L24
	nop
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.def	_subBytes_inv;	.scl	3;	.type	32;	.endef
_subBytes_inv:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movb	$0, -5(%ebp)
	jmp	L26
L27:
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox_inv
	movb	%al, (%ebx)
	movzbl	-5(%ebp), %eax
	addl	$1, %eax
	movb	%al, -5(%ebp)
L26:
	cmpb	$15, -5(%ebp)
	jbe	L27
	nop
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.def	_addRoundKey;	.scl	3;	.type	32;	.endef
_addRoundKey:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	movb	$0, -5(%ebp)
	jmp	L29
L30:
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %ecx
	movl	12(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-5(%ebp), %eax
	addl	$1, %eax
	movb	%al, -5(%ebp)
L29:
	cmpb	$15, -5(%ebp)
	jbe	L30
	nop
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.def	_addRoundKey_cpy;	.scl	3;	.type	32;	.endef
_addRoundKey_cpy:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	movb	$0, -5(%ebp)
	jmp	L32
L33:
	movzbl	-5(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %ecx
	movl	12(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	movb	%dl, (%eax)
	movzbl	(%eax), %ebx
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-5(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	addl	%eax, %edx
	movzbl	-5(%ebp), %eax
	addl	$16, %eax
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	addl	%ecx, %eax
	movzbl	(%eax), %eax
	movb	%al, (%edx)
	movzbl	-5(%ebp), %eax
	addl	$1, %eax
	movb	%al, -5(%ebp)
L32:
	cmpb	$15, -5(%ebp)
	jbe	L33
	nop
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.def	_shiftRows;	.scl	3;	.type	32;	.endef
_shiftRows:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movzbl	1(%eax), %ebx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	5(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leal	5(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leal	9(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	13(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	addl	$13, %eax
	movb	%bl, (%eax)
	movl	8(%ebp), %eax
	movzbl	10(%eax), %ebx
	movl	8(%ebp), %eax
	leal	10(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	2(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	addl	$2, %eax
	movb	%bl, (%eax)
	movl	8(%ebp), %eax
	movzbl	3(%eax), %ebx
	movl	8(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	15(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leal	15(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leal	11(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	7(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	addl	$7, %eax
	movb	%bl, (%eax)
	movl	8(%ebp), %eax
	movzbl	14(%eax), %ebx
	movl	8(%ebp), %eax
	leal	14(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	6(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	addl	$6, %eax
	movb	%bl, (%eax)
	nop
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.def	_shiftRows_inv;	.scl	3;	.type	32;	.endef
_shiftRows_inv:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movzbl	1(%eax), %ebx
	movl	8(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	13(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leal	13(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	9(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leal	9(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	5(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	addl	$5, %eax
	movb	%bl, (%eax)
	movl	8(%ebp), %eax
	movzbl	2(%eax), %ebx
	movl	8(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	10(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	addl	$10, %eax
	movb	%bl, (%eax)
	movl	8(%ebp), %eax
	movzbl	3(%eax), %ebx
	movl	8(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	7(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leal	7(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	11(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	leal	11(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	15(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	addl	$15, %eax
	movb	%bl, (%eax)
	movl	8(%ebp), %eax
	movzbl	6(%eax), %ebx
	movl	8(%ebp), %eax
	leal	6(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	14(%eax), %eax
	movb	%al, (%edx)
	movl	8(%ebp), %eax
	addl	$14, %eax
	movb	%bl, (%eax)
	nop
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.def	_mixColumns;	.scl	3;	.type	32;	.endef
_mixColumns:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movb	$0, -13(%ebp)
	jmp	L37
L38:
	movzbl	-13(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movl	%eax, %ecx
	movzbl	-13(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movl	%eax, %ebx
	movzbl	-13(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movb	%al, -29(%ebp)
	movzbl	-13(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	movb	%bl, -30(%ebp)
	xorl	%ebx, %eax
	xorb	-29(%ebp), %al
	movb	%dl, -31(%ebp)
	movl	%edx, %edi
	xorl	%eax, %edi
	movzbl	-13(%ebp), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %esi
	movzbl	-13(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %ebx
	movb	%cl, -32(%ebp)
	movl	%ecx, %eax
	xorb	-30(%ebp), %al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorl	%edi, %eax
	xorl	%ebx, %eax
	movb	%al, (%esi)
	movzbl	-13(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %esi
	movzbl	-13(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %ebx
	movzbl	-30(%ebp), %edx
	xorb	-29(%ebp), %dl
	movl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorl	%edi, %eax
	xorl	%ebx, %eax
	movb	%al, (%esi)
	movzbl	-13(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %esi
	movzbl	-13(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %ebx
	movzbl	-29(%ebp), %edx
	xorb	-31(%ebp), %dl
	movl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorl	%edi, %eax
	xorl	%ebx, %eax
	movb	%al, (%esi)
	movzbl	-13(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movzbl	-13(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movb	%dl, -29(%ebp)
	movzbl	-31(%ebp), %ecx
	xorb	-32(%ebp), %cl
	movl	%ecx, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorl	%edi, %eax
	xorb	-29(%ebp), %al
	movb	%al, (%ebx)
	addb	$4, -13(%ebp)
L37:
	cmpb	$15, -13(%ebp)
	jbe	L38
	nop
	addl	$24, %esp
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
LFE25:
	.def	_mixColumns_inv;	.scl	3;	.type	32;	.endef
_mixColumns_inv:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movb	$0, -13(%ebp)
	jmp	L40
L41:
	movzbl	-13(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movl	%eax, %ecx
	movzbl	-13(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movl	%eax, %ebx
	movzbl	-13(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movb	%al, -29(%ebp)
	movzbl	-13(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movl	%eax, %edx
	movb	%cl, -30(%ebp)
	movl	%ecx, %eax
	movb	%bl, -31(%ebp)
	xorl	%ebx, %eax
	xorb	-29(%ebp), %al
	movl	%eax, %ebx
	movb	%dl, -32(%ebp)
	movl	%edx, %eax
	xorl	%eax, %ebx
	movzbl	%bl, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	movl	%eax, %esi
	movzbl	-30(%ebp), %edi
	xorl	%esi, %edi
	movl	%edi, %eax
	xorb	-29(%ebp), %al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	movl	%eax, %edx
	xorl	%ebx, %edx
	movb	%dl, -33(%ebp)
	movl	%esi, %ecx
	xorb	-31(%ebp), %cl
	movl	%ecx, %eax
	xorb	-32(%ebp), %al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	movl	%eax, %edi
	xorl	%ebx, %edi
	movzbl	-13(%ebp), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %esi
	movzbl	-13(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %ebx
	movzbl	-30(%ebp), %eax
	xorb	-31(%ebp), %al
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorb	-33(%ebp), %al
	xorl	%ebx, %eax
	movb	%al, (%esi)
	movzbl	-13(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %esi
	movzbl	-13(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %ebx
	movzbl	-31(%ebp), %edx
	xorb	-29(%ebp), %dl
	movl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorl	%edi, %eax
	xorl	%ebx, %eax
	movb	%al, (%esi)
	movzbl	-13(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %esi
	movzbl	-13(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %ebx
	movzbl	-29(%ebp), %edx
	xorb	-32(%ebp), %dl
	movl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorb	-33(%ebp), %al
	xorl	%ebx, %eax
	movb	%al, (%esi)
	movzbl	-13(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	leal	(%edx,%eax), %ebx
	movzbl	-13(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movb	%dl, -29(%ebp)
	movzbl	-32(%ebp), %ecx
	xorb	-30(%ebp), %cl
	movl	%ecx, %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	xorl	%edi, %eax
	xorb	-29(%ebp), %al
	movb	%al, (%ebx)
	addb	$4, -13(%ebp)
L40:
	cmpb	$15, -13(%ebp)
	jbe	L41
	nop
	addl	$28, %esp
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
LFE26:
	.def	_expandEncKey;	.scl	3;	.type	32;	.endef
_expandEncKey:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movzbl	(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	xorl	%eax, %ebx
	movl	%ebx, %edx
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	leal	1(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	2(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	3(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_xtime
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	movb	$4, -5(%ebp)
	jmp	L43
L44:
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %edx
	leal	-4(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-5(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %edx
	leal	1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %edx
	leal	-3(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-5(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %edx
	leal	2(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %edx
	leal	-2(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-5(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %edx
	leal	3(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %edx
	leal	-1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	addb	$4, -5(%ebp)
L43:
	cmpb	$15, -5(%ebp)
	jbe	L44
	movl	8(%ebp), %eax
	leal	16(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	17(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	18(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	19(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movb	$20, -6(%ebp)
	jmp	L45
L46:
	movzbl	-6(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-6(%ebp), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-6(%ebp), %edx
	leal	-4(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-6(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-6(%ebp), %edx
	leal	1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-6(%ebp), %edx
	leal	-3(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-6(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-6(%ebp), %edx
	leal	2(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-6(%ebp), %edx
	leal	-2(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-6(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-6(%ebp), %edx
	leal	3(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-6(%ebp), %edx
	leal	-1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	addb	$4, -6(%ebp)
L45:
	cmpb	$31, -6(%ebp)
	jbe	L46
	nop
	addl	$24, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.def	_expandDecKey;	.scl	3;	.type	32;	.endef
_expandDecKey:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 3, -12
	movb	$28, -5(%ebp)
	jmp	L48
L49:
	movzbl	-5(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %edx
	leal	-4(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-5(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %edx
	leal	1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %edx
	leal	-3(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-5(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %edx
	leal	2(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %edx
	leal	-2(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-5(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-5(%ebp), %edx
	leal	3(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-5(%ebp), %edx
	leal	-1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	subb	$4, -5(%ebp)
L48:
	cmpb	$16, -5(%ebp)
	ja	L49
	movl	8(%ebp), %eax
	leal	16(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$16, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$12, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	17(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$17, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$13, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	18(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$18, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$14, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	19(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$19, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$15, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movb	$12, -6(%ebp)
	jmp	L50
L51:
	movzbl	-6(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-6(%ebp), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-6(%ebp), %edx
	leal	-4(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-6(%ebp), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-6(%ebp), %edx
	leal	1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-6(%ebp), %edx
	leal	-3(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-6(%ebp), %eax
	leal	2(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-6(%ebp), %edx
	leal	2(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-6(%ebp), %edx
	leal	-2(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	movzbl	-6(%ebp), %eax
	leal	3(%eax), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	-6(%ebp), %edx
	leal	3(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %ebx
	movzbl	-6(%ebp), %edx
	leal	-1(%edx), %ecx
	movl	8(%ebp), %edx
	addl	%ecx, %edx
	movzbl	(%edx), %edx
	xorl	%ebx, %edx
	movb	%dl, (%eax)
	subb	$4, -6(%ebp)
L50:
	cmpb	$0, -6(%ebp)
	jne	L51
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	shrb	%al
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L52
	movl	$-115, %eax
	jmp	L53
L52:
	movl	$0, %eax
L53:
	xorl	%edx, %eax
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	movzbl	(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$29, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	movl	%eax, %edx
	movl	12(%ebp), %eax
	movzbl	(%eax), %eax
	xorl	%edx, %eax
	xorl	%eax, %ebx
	movl	%ebx, %edx
	movl	8(%ebp), %eax
	movb	%dl, (%eax)
	movl	8(%ebp), %eax
	leal	1(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$1, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$30, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	2(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$2, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$31, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	movl	8(%ebp), %eax
	leal	3(%eax), %ebx
	movl	8(%ebp), %eax
	addl	$3, %eax
	movzbl	(%eax), %eax
	movb	%al, -21(%ebp)
	movl	8(%ebp), %eax
	addl	$28, %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_rj_sbox
	xorb	-21(%ebp), %al
	movb	%al, (%ebx)
	nop
	addl	$24, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.globl	_aes256_init
	.def	_aes256_init;	.scl	2;	.type	32;	.endef
_aes256_init:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 8(%ebp)
	je	L55
	cmpl	$0, 12(%ebp)
	jne	L56
L55:
	movl	$1, %eax
	jmp	L57
L56:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	(%edx), %ecx
	movl	%ecx, 64(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, 68(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, 72(%eax)
	movl	12(%edx), %ecx
	movl	%ecx, 76(%eax)
	movl	16(%edx), %ecx
	movl	%ecx, 80(%eax)
	movl	20(%edx), %ecx
	movl	%ecx, 84(%eax)
	movl	24(%edx), %ecx
	movl	%ecx, 88(%eax)
	movl	28(%edx), %edx
	movl	%edx, 92(%eax)
	movl	8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	64(%edx), %ecx
	movl	%ecx, 32(%eax)
	movl	68(%edx), %ecx
	movl	%ecx, 36(%eax)
	movl	72(%edx), %ecx
	movl	%ecx, 40(%eax)
	movl	76(%edx), %ecx
	movl	%ecx, 44(%eax)
	movl	80(%edx), %ecx
	movl	%ecx, 48(%eax)
	movl	84(%edx), %ecx
	movl	%ecx, 52(%eax)
	movl	88(%edx), %ecx
	movl	%ecx, 56(%eax)
	movl	92(%edx), %edx
	movl	%edx, 60(%eax)
	movb	$0, -1(%ebp)
	movb	$1, -2(%ebp)
	jmp	L58
L59:
	movl	8(%ebp), %eax
	leal	64(%eax), %edx
	leal	-2(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	_expandEncKey
	movzbl	-1(%ebp), %eax
	addl	$1, %eax
	movb	%al, -1(%ebp)
L58:
	cmpb	$6, -1(%ebp)
	jbe	L59
	movl	$0, %eax
L57:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.globl	_aes256_done
	.def	_aes256_done;	.scl	2;	.type	32;	.endef
_aes256_done:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	movl	$0, %ecx
	movl	$32, %eax
	andl	$-4, %eax
	movl	%eax, %edx
	movl	$0, %eax
L61:
	movl	%ecx, -32(%ebp,%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jb	L61
	cmpl	$0, 8(%ebp)
	je	L63
	movl	8(%ebp), %eax
	movl	-32(%ebp), %edx
	movl	%edx, 64(%eax)
	movl	-28(%ebp), %edx
	movl	%edx, 68(%eax)
	movl	-24(%ebp), %edx
	movl	%edx, 72(%eax)
	movl	-20(%ebp), %edx
	movl	%edx, 76(%eax)
	movl	-16(%ebp), %edx
	movl	%edx, 80(%eax)
	movl	-12(%ebp), %edx
	movl	%edx, 84(%eax)
	movl	-8(%ebp), %edx
	movl	%edx, 88(%eax)
	movl	-4(%ebp), %edx
	movl	%edx, 92(%eax)
	movl	8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	64(%edx), %ecx
	movl	%ecx, 32(%eax)
	movl	68(%edx), %ecx
	movl	%ecx, 36(%eax)
	movl	72(%edx), %ecx
	movl	%ecx, 40(%eax)
	movl	76(%edx), %ecx
	movl	%ecx, 44(%eax)
	movl	80(%edx), %ecx
	movl	%ecx, 48(%eax)
	movl	84(%edx), %ecx
	movl	%ecx, 52(%eax)
	movl	88(%edx), %ecx
	movl	%ecx, 56(%eax)
	movl	92(%edx), %edx
	movl	%edx, 60(%eax)
	movl	8(%ebp), %eax
	movl	8(%ebp), %edx
	movl	32(%edx), %ecx
	movl	%ecx, (%eax)
	movl	36(%edx), %ecx
	movl	%ecx, 4(%eax)
	movl	40(%edx), %ecx
	movl	%ecx, 8(%eax)
	movl	44(%edx), %ecx
	movl	%ecx, 12(%eax)
	movl	48(%edx), %ecx
	movl	%ecx, 16(%eax)
	movl	52(%edx), %ecx
	movl	%ecx, 20(%eax)
	movl	56(%edx), %ecx
	movl	%ecx, 24(%eax)
	movl	60(%edx), %edx
	movl	%edx, 28(%eax)
	movl	$0, %eax
	jmp	L65
L63:
	movl	$1, %eax
L65:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	_aes256_encrypt_ecb
	.def	_aes256_encrypt_ecb;	.scl	2;	.type	32;	.endef
_aes256_encrypt_ecb:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	cmpl	$0, 8(%ebp)
	je	L67
	cmpl	$0, 12(%ebp)
	jne	L68
L67:
	movl	$1, %eax
	jmp	L74
L68:
	movb	$1, -2(%ebp)
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	leal	32(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_addRoundKey_cpy
	movb	$1, -1(%ebp)
	jmp	L70
L73:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_subBytes
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_shiftRows
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mixColumns
	movzbl	-1(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L71
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_addRoundKey
	jmp	L72
L71:
	movl	8(%ebp), %eax
	leal	-2(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_expandEncKey
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_addRoundKey
L72:
	addb	$1, -1(%ebp)
L70:
	cmpb	$13, -1(%ebp)
	jbe	L73
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_subBytes
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_shiftRows
	movl	8(%ebp), %eax
	leal	-2(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_expandEncKey
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_addRoundKey
	movl	$0, %eax
L74:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.globl	_aes256_decrypt_ecb
	.def	_aes256_decrypt_ecb;	.scl	2;	.type	32;	.endef
_aes256_decrypt_ecb:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	cmpl	$0, 8(%ebp)
	je	L76
	cmpl	$0, 12(%ebp)
	jne	L77
L76:
	movl	$1, %eax
	jmp	L78
L77:
	movl	8(%ebp), %edx
	movl	8(%ebp), %eax
	leal	64(%eax), %ecx
	movl	12(%ebp), %eax
	movl	%edx, 8(%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, (%esp)
	call	_addRoundKey_cpy
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_shiftRows_inv
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_subBytes_inv
	movb	$14, -1(%ebp)
	movb	$-128, -2(%ebp)
	jmp	L79
L82:
	movzbl	-1(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	L80
	movl	8(%ebp), %eax
	leal	-2(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_expandDecKey
	movl	8(%ebp), %eax
	leal	16(%eax), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_addRoundKey
	jmp	L81
L80:
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_addRoundKey
L81:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mixColumns_inv
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_shiftRows_inv
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_subBytes_inv
L79:
	subb	$1, -1(%ebp)
	cmpb	$0, -1(%ebp)
	jne	L82
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_addRoundKey
	movl	$0, %eax
L78:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.data
	.align 32
_test:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	0
	.byte	17
	.byte	34
	.byte	51
	.byte	68
	.byte	85
	.byte	102
	.byte	119
	.byte	-120
	.byte	-103
	.byte	-86
	.byte	-69
	.byte	-52
	.byte	-35
	.byte	-18
	.byte	-1
	.byte	-114
	.byte	-94
	.byte	-73
	.byte	-54
	.byte	81
	.byte	103
	.byte	69
	.byte	-65
	.byte	-22
	.byte	-4
	.byte	73
	.byte	-112
	.byte	75
	.byte	73
	.byte	96
	.byte	-119
	.byte	96
	.byte	61
	.byte	-21
	.byte	16
	.byte	21
	.byte	-54
	.byte	113
	.byte	-66
	.byte	43
	.byte	115
	.byte	-82
	.byte	-16
	.byte	-123
	.byte	125
	.byte	119
	.byte	-127
	.byte	31
	.byte	53
	.byte	44
	.byte	7
	.byte	59
	.byte	97
	.byte	8
	.byte	-41
	.byte	45
	.byte	-104
	.byte	16
	.byte	-93
	.byte	9
	.byte	20
	.byte	-33
	.byte	-12
	.byte	107
	.byte	-63
	.byte	-66
	.byte	-30
	.byte	46
	.byte	64
	.byte	-97
	.byte	-106
	.byte	-23
	.byte	61
	.byte	126
	.byte	17
	.byte	115
	.byte	-109
	.byte	23
	.byte	42
	.byte	-13
	.byte	-18
	.byte	-47
	.byte	-67
	.byte	-75
	.byte	-46
	.byte	-96
	.byte	60
	.byte	6
	.byte	75
	.byte	90
	.byte	126
	.byte	61
	.byte	-79
	.byte	-127
	.byte	-8
	.byte	96
	.byte	61
	.byte	-21
	.byte	16
	.byte	21
	.byte	-54
	.byte	113
	.byte	-66
	.byte	43
	.byte	115
	.byte	-82
	.byte	-16
	.byte	-123
	.byte	125
	.byte	119
	.byte	-127
	.byte	31
	.byte	53
	.byte	44
	.byte	7
	.byte	59
	.byte	97
	.byte	8
	.byte	-41
	.byte	45
	.byte	-104
	.byte	16
	.byte	-93
	.byte	9
	.byte	20
	.byte	-33
	.byte	-12
	.byte	-82
	.byte	45
	.byte	-118
	.byte	87
	.byte	30
	.byte	3
	.byte	-84
	.byte	-100
	.byte	-98
	.byte	-73
	.byte	111
	.byte	-84
	.byte	69
	.byte	-81
	.byte	-114
	.byte	81
	.byte	89
	.byte	28
	.byte	-53
	.byte	16
	.byte	-44
	.byte	16
	.byte	-19
	.byte	38
	.byte	-36
	.byte	91
	.byte	-89
	.byte	74
	.byte	49
	.byte	54
	.byte	40
	.byte	112
	.byte	96
	.byte	61
	.byte	-21
	.byte	16
	.byte	21
	.byte	-54
	.byte	113
	.byte	-66
	.byte	43
	.byte	115
	.byte	-82
	.byte	-16
	.byte	-123
	.byte	125
	.byte	119
	.byte	-127
	.byte	31
	.byte	53
	.byte	44
	.byte	7
	.byte	59
	.byte	97
	.byte	8
	.byte	-41
	.byte	45
	.byte	-104
	.byte	16
	.byte	-93
	.byte	9
	.byte	20
	.byte	-33
	.byte	-12
	.byte	48
	.byte	-56
	.byte	28
	.byte	70
	.byte	-93
	.byte	92
	.byte	-28
	.byte	17
	.byte	-27
	.byte	-5
	.byte	-63
	.byte	25
	.byte	26
	.byte	10
	.byte	82
	.byte	-17
	.byte	-74
	.byte	-19
	.byte	33
	.byte	-71
	.byte	-100
	.byte	-90
	.byte	-12
	.byte	-7
	.byte	-15
	.byte	83
	.byte	-25
	.byte	-79
	.byte	-66
	.byte	-81
	.byte	-19
	.byte	29
	.byte	96
	.byte	61
	.byte	-21
	.byte	16
	.byte	21
	.byte	-54
	.byte	113
	.byte	-66
	.byte	43
	.byte	115
	.byte	-82
	.byte	-16
	.byte	-123
	.byte	125
	.byte	119
	.byte	-127
	.byte	31
	.byte	53
	.byte	44
	.byte	7
	.byte	59
	.byte	97
	.byte	8
	.byte	-41
	.byte	45
	.byte	-104
	.byte	16
	.byte	-93
	.byte	9
	.byte	20
	.byte	-33
	.byte	-12
	.byte	-10
	.byte	-97
	.byte	36
	.byte	69
	.byte	-33
	.byte	79
	.byte	-101
	.byte	23
	.byte	-83
	.byte	43
	.byte	65
	.byte	123
	.byte	-26
	.byte	108
	.byte	55
	.byte	16
	.byte	35
	.byte	48
	.byte	75
	.byte	122
	.byte	57
	.byte	-7
	.byte	-13
	.byte	-1
	.byte	6
	.byte	125
	.byte	-115
	.byte	-113
	.byte	-98
	.byte	36
	.byte	-20
	.byte	-57
	.byte	-60
	.byte	123
	.byte	2
	.byte	-108
	.byte	-37
	.byte	-69
	.byte	-18
	.byte	15
	.byte	-20
	.byte	71
	.byte	87
	.byte	-14
	.byte	47
	.byte	-2
	.byte	-18
	.byte	53
	.byte	-121
	.byte	-54
	.byte	71
	.byte	48
	.byte	-61
	.byte	-45
	.byte	59
	.byte	105
	.byte	29
	.byte	-13
	.byte	-117
	.byte	-85
	.byte	7
	.byte	107
	.byte	-59
	.byte	88
	.byte	0
	.space 15
	.byte	70
	.byte	-14
	.byte	-5
	.byte	52
	.byte	45
	.byte	111
	.byte	10
	.byte	-76
	.byte	119
	.byte	71
	.byte	111
	.byte	-59
	.byte	1
	.byte	36
	.byte	44
	.byte	95
	.byte	-4
	.byte	-96
	.byte	47
	.byte	61
	.byte	80
	.byte	17
	.byte	-49
	.byte	-59
	.byte	-63
	.byte	-30
	.byte	49
	.byte	101
	.byte	-44
	.byte	19
	.byte	-96
	.byte	73
	.byte	-44
	.byte	82
	.byte	106
	.byte	-103
	.byte	24
	.byte	39
	.byte	66
	.byte	77
	.byte	-119
	.byte	111
	.byte	-29
	.byte	67
	.byte	94
	.byte	11
	.byte	-10
	.byte	-114
	.byte	0
	.space 15
	.byte	23
	.byte	-102
	.byte	73
	.byte	-57
	.byte	18
	.byte	21
	.byte	75
	.byte	-65
	.byte	-5
	.byte	-26
	.byte	-25
	.byte	-88
	.byte	74
	.byte	24
	.byte	-30
	.byte	32
	.byte	-8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.space 15
	.byte	-100
	.byte	-12
	.byte	-119
	.byte	62
	.byte	-54
	.byte	-6
	.byte	10
	.byte	2
	.byte	71
	.byte	-88
	.byte	-104
	.byte	-32
	.byte	64
	.byte	105
	.byte	21
	.byte	89
	.section .rdata,"dr"
_total_tests:
	.byte	8
	.def	___main;	.scl	2;	.type	32;	.endef
LC0:
	.ascii "FAILED (case %d/encrypt)\12\0"
LC1:
	.ascii "FAILED (case %d/decrypt)\12\0"
LC2:
	.ascii "Success\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$160, %esp
	call	___main
	movb	$0, 159(%esp)
	jmp	L84
L88:
	movzbl	159(%esp), %eax
	sall	$6, %eax
	addl	$_test, %eax
	movl	%eax, 4(%esp)
	leal	63(%esp), %eax
	movl	%eax, (%esp)
	call	_aes256_init
	movzbl	159(%esp), %eax
	sall	$6, %eax
	addl	$32, %eax
	addl	$_test, %eax
	movl	(%eax), %edx
	movl	%edx, 16(%esp)
	movl	4(%eax), %ecx
	movl	%ecx, 20(%esp)
	movl	8(%eax), %edx
	movl	%edx, 24(%esp)
	movl	12(%eax), %eax
	movl	%eax, 28(%esp)
	movl	16(%esp), %eax
	movl	%eax, 47(%esp)
	movl	20(%esp), %eax
	movl	%eax, 51(%esp)
	movl	24(%esp), %eax
	movl	%eax, 55(%esp)
	movl	28(%esp), %eax
	movl	%eax, 59(%esp)
	leal	47(%esp), %eax
	movl	%eax, 4(%esp)
	leal	63(%esp), %eax
	movl	%eax, (%esp)
	call	_aes256_encrypt_ecb
	movzbl	159(%esp), %eax
	sall	$6, %eax
	addl	$48, %eax
	addl	$_test, %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	leal	47(%esp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L85
	movzbl	159(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$1, %eax
	jmp	L89
L85:
	leal	47(%esp), %eax
	movl	%eax, 4(%esp)
	leal	63(%esp), %eax
	movl	%eax, (%esp)
	call	_aes256_decrypt_ecb
	movzbl	159(%esp), %eax
	sall	$6, %eax
	addl	$32, %eax
	addl	$_test, %eax
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	leal	47(%esp), %eax
	movl	%eax, (%esp)
	call	_memcmp
	testl	%eax, %eax
	je	L87
	movzbl	159(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$2, %eax
	jmp	L89
L87:
	leal	63(%esp), %eax
	movl	%eax, (%esp)
	call	_aes256_done
	movzbl	159(%esp), %eax
	addl	$1, %eax
	movb	%al, 159(%esp)
L84:
	movl	$8, %eax
	cmpb	%al, 159(%esp)
	jb	L88
	movl	$LC2, (%esp)
	call	_puts
	movl	$0, %eax
L89:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_memcmp;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
