	.file	"main_aes_128.c"
	.def	___main;	.scl	2;	.type	32;	.endef
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
	subl	$64, %esp
	call	___main
	movb	$0, 48(%esp)
	movb	$17, 49(%esp)
	movb	$34, 50(%esp)
	movb	$51, 51(%esp)
	movb	$68, 52(%esp)
	movb	$85, 53(%esp)
	movb	$102, 54(%esp)
	movb	$119, 55(%esp)
	movb	$-120, 56(%esp)
	movb	$-103, 57(%esp)
	movb	$-86, 58(%esp)
	movb	$-69, 59(%esp)
	movb	$-52, 60(%esp)
	movb	$-35, 61(%esp)
	movb	$-18, 62(%esp)
	movb	$-1, 63(%esp)
	movb	$0, 32(%esp)
	movb	$1, 33(%esp)
	movb	$2, 34(%esp)
	movb	$3, 35(%esp)
	movb	$4, 36(%esp)
	movb	$5, 37(%esp)
	movb	$6, 38(%esp)
	movb	$7, 39(%esp)
	movb	$8, 40(%esp)
	movb	$9, 41(%esp)
	movb	$10, 42(%esp)
	movb	$11, 43(%esp)
	movb	$12, 44(%esp)
	movb	$13, 45(%esp)
	movb	$14, 46(%esp)
	movb	$15, 47(%esp)
	movb	$0, 16(%esp)
	movb	$1, 17(%esp)
	movb	$2, 18(%esp)
	movb	$3, 19(%esp)
	movb	$4, 20(%esp)
	movb	$5, 21(%esp)
	movb	$6, 22(%esp)
	movb	$7, 23(%esp)
	movb	$8, 24(%esp)
	movb	$9, 25(%esp)
	movb	$10, 26(%esp)
	movb	$11, 27(%esp)
	movb	$12, 28(%esp)
	movb	$13, 29(%esp)
	movb	$14, 30(%esp)
	movb	$15, 31(%esp)
	movl	$0, 8(%esp)
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_aes_enc_dec
	movl	$1, 8(%esp)
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_aes_enc_dec
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_aes_enc_dec;	.scl	2;	.type	32;	.endef
