	.file	"AES_Algorithm.c"
	.section .rdata,"dr"
LC0:
	.ascii "cbc\0"
LC1:
	.ascii "rijndael-128\0"
	.text
	.globl	_encrypt
	.def	_encrypt;	.scl	2;	.type	32;	.endef
_encrypt:
LFB17:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, 12(%esp)
	movl	$LC0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$LC1, (%esp)
	call	_mcrypt_module_open
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_enc_get_block_size
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	cltd
	idivl	-16(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	L2
	movl	$1, %eax
	jmp	L3
L2:
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_generic_init
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_generic
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_generic_deinit
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_module_close
	movl	$0, %eax
L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE17:
	.globl	_decrypt
	.def	_decrypt;	.scl	2;	.type	32;	.endef
_decrypt:
LFB18:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, 12(%esp)
	movl	$LC0, 8(%esp)
	movl	$0, 4(%esp)
	movl	$LC1, (%esp)
	call	_mcrypt_module_open
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_enc_get_block_size
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	cltd
	idivl	-16(%ebp)
	movl	%edx, %eax
	testl	%eax, %eax
	je	L5
	movl	$1, %eax
	jmp	L6
L5:
	movl	16(%ebp), %eax
	movl	%eax, 12(%esp)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_generic_init
	movl	12(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mdecrypt_generic
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_generic_deinit
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_mcrypt_module_close
	movl	$0, %eax
L6:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE18:
	.section .rdata,"dr"
LC2:
	.ascii "%d \0"
	.text
	.globl	_display
	.def	_display;	.scl	2;	.type	32;	.endef
_display:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L8
L9:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L8:
	movl	-12(%ebp), %eax
	cmpl	12(%ebp), %eax
	jl	L9
	movl	$10, (%esp)
	call	_putchar
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC3:
	.ascii "test text 123\0"
LC4:
	.ascii "AAAAAAAAAAAAAAAA\0"
LC5:
	.ascii "0123456789abcdef\0"
LC6:
	.ascii "==C==\0"
LC7:
	.ascii "plain:   %s\12\0"
LC8:
	.ascii "cipher:  \0"
LC9:
	.ascii "decrypt: %s\12\0"
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
	andl	$-16, %esp
	subl	$64, %esp
	call	___main
	movl	$LC3, 60(%esp)
	movl	$LC4, 56(%esp)
	movl	$LC5, 52(%esp)
	movl	$16, 48(%esp)
	movl	$16, 44(%esp)
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, 40(%esp)
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_strncpy
	movl	$LC6, (%esp)
	call	_puts
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC7, (%esp)
	call	_printf
	movl	48(%esp), %eax
	movl	%eax, 16(%esp)
	movl	52(%esp), %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%eax, 8(%esp)
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_encrypt
	movl	$LC8, (%esp)
	call	_printf
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_display
	movl	48(%esp), %eax
	movl	%eax, 16(%esp)
	movl	52(%esp), %eax
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%eax, 8(%esp)
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_decrypt
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC9, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_mcrypt_module_open;	.scl	2;	.type	32;	.endef
	.def	_mcrypt_enc_get_block_size;	.scl	2;	.type	32;	.endef
	.def	_mcrypt_generic_init;	.scl	2;	.type	32;	.endef
	.def	_mcrypt_generic;	.scl	2;	.type	32;	.endef
	.def	_mcrypt_generic_deinit;	.scl	2;	.type	32;	.endef
	.def	_mcrypt_module_close;	.scl	2;	.type	32;	.endef
	.def	_mdecrypt_generic;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_strncpy;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
