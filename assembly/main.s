	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
.LC1:
	.string	"0"
.LC2:
	.string	"1"
	.text
	.globl	_Z15decimalToBinaryi
	.type	_Z15decimalToBinaryi, @function
_Z15decimalToBinaryi:
.LFB1805:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$0, -8(%rbp)
.L3:
	pxor	%xmm3, %xmm3
	cvtsi2sdl	-20(%rbp), %xmm3
	movsd	%xmm3, -32(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-8(%rbp), %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	-32(%rbp), %xmm3
	comisd	%xmm0, %xmm3
	setnb	%al
	testb	%al, %al
	je	.L2
	addl	$1, -8(%rbp)
	jmp	.L3
.L2:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
.L7:
	cmpl	$0, -4(%rbp)
	js	.L8
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-4(%rbp), %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movq	%xmm0, %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-20(%rbp), %xmm0
	movq	%rax, %xmm4
	comisd	%xmm0, %xmm4
	seta	%al
	testb	%al, %al
	je	.L5
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	jmp	.L6
.L5:
	pxor	%xmm2, %xmm2
	cvtsi2sdl	-20(%rbp), %xmm2
	movsd	%xmm2, -32(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-4(%rbp), %xmm0
	movq	.LC0(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	-32(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	cvttsd2sil	%xmm1, %eax
	movl	%eax, -20(%rbp)
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.L6:
	subl	$1, -4(%rbp)
	jmp	.L7
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1805:
	.size	_Z15decimalToBinaryi, .-_Z15decimalToBinaryi
	.section	.rodata
	.align 8
.LC3:
	.string	"Input the number you wanna convert into a binary number: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZNSirsERi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	_Z15decimalToBinaryi
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1806:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2307:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L14
	cmpl	$65535, -8(%rbp)
	jne	.L14
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L14:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2307:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z15decimalToBinaryi, @function
_GLOBAL__sub_I__Z15decimalToBinaryi:
.LFB2308:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2308:
	.size	_GLOBAL__sub_I__Z15decimalToBinaryi, .-_GLOBAL__sub_I__Z15decimalToBinaryi
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z15decimalToBinaryi
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1073741824
	.hidden	__dso_handle
	.section	.note.GNU-stack,"",@progbits
