	.file	"matmul.c"
	.text
	.def	time;	.scl	3;	.type	32;	.endef
	.seh_proc	time
time:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__time64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Enter N: \0"
.LC1:
	.ascii "%d\0"
	.align 8
.LC3:
	.ascii "Time taken for matrix multiplication: %f seconds\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	leaq	112(%rsp), %rbp
	.seh_setframe	%rbp, 112
	.seh_endprologue
	call	__main
	movl	$0, %ecx
	call	time
	movl	%eax, %ecx
	call	srand
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-76(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -40(%rbp)
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -48(%rbp)
	movl	-76(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rcx
	call	malloc
	movq	%rax, -56(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-76(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	malloc
	movq	%rax, (%rbx)
	movl	-76(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-48(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	malloc
	movq	%rax, (%rbx)
	movl	-76(%rbp), %eax
	cltq
	salq	$2, %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-56(%rbp), %rdx
	leaq	(%rcx,%rdx), %rbx
	movq	%rax, %rcx
	call	malloc
	movq	%rax, (%rbx)
	addl	$1, -4(%rbp)
.L4:
	movl	-76(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L5
	movl	$0, -8(%rbp)
	jmp	.L6
.L9:
	movl	$0, -12(%rbp)
	jmp	.L7
.L8:
	call	rand
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %r8
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, (%r8)
	call	rand
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %r8
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, (%r8)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -12(%rbp)
.L7:
	movl	-76(%rbp), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L8
	addl	$1, -8(%rbp)
.L6:
	movl	-76(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L9
	call	clock
	movl	%eax, -60(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L10
.L15:
	movl	$0, -20(%rbp)
	jmp	.L11
.L14:
	movl	$0, -24(%rbp)
	jmp	.L12
.L13:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %ecx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	-24(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-24(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %r8
	movq	-48(%rbp), %rax
	addq	%r8, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %r8d
	movslq	%r8d, %r8
	salq	$2, %r8
	addq	%r8, %rax
	movl	(%rax), %eax
	imull	%eax, %edx
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %r8
	movq	-56(%rbp), %rax
	addq	%r8, %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %r8d
	movslq	%r8d, %r8
	salq	$2, %r8
	addq	%r8, %rax
	addl	%ecx, %edx
	movl	%edx, (%rax)
	addl	$1, -24(%rbp)
.L12:
	movl	-76(%rbp), %eax
	cmpl	%eax, -24(%rbp)
	jl	.L13
	addl	$1, -20(%rbp)
.L11:
	movl	-76(%rbp), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L14
	addl	$1, -16(%rbp)
.L10:
	movl	-76(%rbp), %eax
	cmpl	%eax, -16(%rbp)
	jl	.L15
	call	clock
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	subl	-60(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	movsd	.LC2(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	$0, -28(%rbp)
	jmp	.L16
.L17:
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	free
	addl	$1, -28(%rbp)
.L16:
	movl	-76(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L17
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	call	free
	movsd	-72(%rbp), %xmm0
	movq	-72(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC2:
	.long	0
	.long	1083129856
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 13.2.0"
	.def	srand;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	malloc;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	clock;	.scl	2;	.type	32;	.endef
	.def	free;	.scl	2;	.type	32;	.endef
