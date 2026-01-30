	.file	"matmul.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Time taken for matrix multiplication: %f seconds\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	xorl	%edi, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$8192, %edi
	call	malloc@PLT
	movl	$8192, %edi
	movq	%rax, %rbp
	call	malloc@PLT
	movl	$8192, %edi
	movq	%rax, %r13
	call	malloc@PLT
	movq	%rax, (%rsp)
.L2:
	movl	$4096, %edi
	call	malloc@PLT
	movl	$4096, %edi
	movq	%rax, 0(%rbp,%rbx)
	call	malloc@PLT
	movl	$4096, %edi
	movq	%rax, 0(%r13,%rbx)
	call	malloc@PLT
	movq	(%rsp), %rcx
	movq	%rax, (%rcx,%rbx)
	addq	$8, %rbx
	cmpq	$8192, %rbx
	jne	.L2
	leaq	8192(%rbp), %rax
	movq	%rbp, %rbx
	movq	%r13, %r12
	movq	%rcx, %r14
	movq	%rax, 8(%rsp)
.L3:
	xorl	%r15d, %r15d
.L4:
	call	rand@PLT
	movq	(%rbx), %rdi
	movl	%eax, %esi
	cltq
	imulq	$1717986919, %rax, %rax
	movl	%esi, %r8d
	sarl	$31, %r8d
	sarq	$34, %rax
	subl	%r8d, %eax
	leal	(%rax,%rax,4), %eax
	addl	%eax, %eax
	subl	%eax, %esi
	movl	%esi, (%rdi,%r15)
	call	rand@PLT
	movq	(%r12), %rdi
	movl	%eax, %esi
	cltq
	imulq	$1717986919, %rax, %rax
	movl	%esi, %r8d
	sarl	$31, %r8d
	sarq	$34, %rax
	subl	%r8d, %eax
	leal	(%rax,%rax,4), %eax
	addl	%eax, %eax
	subl	%eax, %esi
	movq	(%r14), %rax
	movl	%esi, (%rdi,%r15)
	movl	$0, (%rax,%r15)
	addq	$4, %r15
	cmpq	$4096, %r15
	jne	.L4
	addq	$8, %rbx
	addq	$8, %r12
	addq	$8, %r14
	cmpq	%rbx, 8(%rsp)
	jne	.L3
	call	clock@PLT
	xorl	%r9d, %r9d
	movq	%rax, %rbx
.L6:
	movq	(%rsp), %rax
	movq	0(%rbp,%r9), %rdi
	xorl	%esi, %esi
	movq	(%rax,%r9), %r8
.L10:
	movl	(%r8,%rsi), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L7:
	movq	0(%r13,%rax,8), %rdx
	movl	(%rdx,%rsi), %edx
	imull	(%rdi,%rax,4), %edx
	addq	$1, %rax
	addl	%edx, %ecx
	cmpq	$1024, %rax
	jne	.L7
	movl	%ecx, (%r8,%rsi)
	addq	$4, %rsi
	cmpq	$4096, %rsi
	jne	.L10
	addq	$8, %r9
	cmpq	$8192, %r9
	jne	.L6
	call	clock@PLT
	pxor	%xmm0, %xmm0
	subq	%rbx, %rax
	xorl	%ebx, %ebx
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC0(%rip), %xmm0
	movq	%xmm0, %r14
.L11:
	movq	0(%rbp,%rbx), %rdi
	call	free@PLT
	movq	0(%r13,%rbx), %rdi
	call	free@PLT
	movq	(%rsp), %rax
	movq	(%rax,%rbx), %rdi
	addq	$8, %rbx
	call	free@PLT
	cmpq	$8192, %rbx
	jne	.L11
	movq	%rbp, %rdi
	call	free@PLT
	movq	%r13, %rdi
	call	free@PLT
	movq	(%rsp), %rdi
	call	free@PLT
	movq	%r14, %xmm0
	movl	$1, %edi
	leaq	.LC1(%rip), %rsi
	movl	$1, %eax
	call	__printf_chk@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
