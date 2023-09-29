	.file	"daxpy.cc"
	.text
	.p2align 4,,15
	.def	___tcf_0;	.scl	3;	.type	32;	.endef
___tcf_0:
LFB3341:
	.cfi_startproc
	movl	$__ZStL8__ioinit, %ecx
	jmp	__ZNSt8ios_base4InitD1Ev
	.cfi_endproc
LFE3341:
	.section	.text$_ZSt18generate_canonicalIdLj53ESt23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEET_RT1_,"x"
	.linkonce discard
	.p2align 4,,15
	.globl	__ZSt18generate_canonicalIdLj53ESt23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEET_RT1_
	.def	__ZSt18generate_canonicalIdLj53ESt23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEET_RT1_;	.scl	2;	.type	32;	.endef
__ZSt18generate_canonicalIdLj53ESt23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEET_RT1_:
LFB3267:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	fld1
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebp
	movl	2496(%ebp), %edx
	leal	908(%ebp), %edi
	jmp	L11
L28:
	fstp	%st(0)
	.p2align 4,,10
L11:
	fld	%st(0)
	cmpl	$623, %edx
	movl	$2, 12(%esp)
	leal	1584(%ebp), %esi
	fldz
	ja	L3
	fxch	%st(1)
L27:
	fxch	%st(1)
	movl	0(%ebp,%edx,4), %eax
	addl	$1, %edx
L4:
	movl	%eax, %ecx
	movl	$0, 4(%esp)
	movl	%edx, 2496(%ebp)
	shrl	$11, %ecx
	xorl	%ecx, %eax
	movl	%eax, %ecx
	sall	$7, %ecx
	andl	$-1658038656, %ecx
	xorl	%ecx, %eax
	movl	%eax, %ecx
	sall	$15, %ecx
	andl	$-272236544, %ecx
	xorl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$18, %ecx
	xorl	%ecx, %eax
	cmpl	$1, 12(%esp)
	movl	%eax, (%esp)
	fildq	(%esp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	flds	LC2
	fmulp	%st, %st(2)
	fxch	%st(1)
	fstpl	16(%esp)
	fldl	16(%esp)
	jne	L12
	fdivrp	%st, %st(1)
	fld1
	fxch	%st(1)
	fucom	%st(1)
	fnstsw	%ax
	fstp	%st(1)
	sahf
	jnb	L28
	fstp	%st(1)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
L12:
	.cfi_restore_state
	cmpl	$623, %edx
	movl	$1, 12(%esp)
	jbe	L27
	fxch	%st(1)
L3:
	movl	%ebp, %ebx
	movl	%ebp, %ecx
	.p2align 4,,10
L6:
	movl	(%ecx), %edx
	movl	4(%ecx), %eax
	andl	$-2147483648, %edx
	andl	$2147483647, %eax
	orl	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	xorl	1588(%ecx), %edx
	andl	$1, %eax
	je	L5
	movl	$-1727483681, %eax
L5:
	xorl	%edx, %eax
	addl	$4, %ecx
	movl	%eax, -4(%ecx)
	cmpl	%ecx, %edi
	jne	L6
	.p2align 4,,10
L8:
	movl	908(%ebx), %eax
	movl	912(%ebx), %edx
	andl	$-2147483648, %eax
	andl	$2147483647, %edx
	orl	%edx, %eax
	movl	%eax, %edx
	shrl	%edx
	xorl	(%ebx), %edx
	andl	$1, %eax
	je	L7
	movl	$-1727483681, %eax
L7:
	xorl	%edx, %eax
	addl	$4, %ebx
	movl	%eax, 904(%ebx)
	cmpl	%ebx, %esi
	jne	L8
	movl	0(%ebp), %eax
	movl	2492(%ebp), %edx
	movl	%eax, %ecx
	andl	$-2147483648, %edx
	andl	$2147483647, %ecx
	orl	%ecx, %edx
	movl	%edx, %ecx
	shrl	%ecx
	xorl	1584(%ebp), %ecx
	andl	$1, %edx
	je	L9
	movl	$-1727483681, %edx
L9:
	xorl	%ecx, %edx
	movl	%edx, 2492(%ebp)
	movl	$1, %edx
	jmp	L4
	.cfi_endproc
LFE3267:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB2842:
	.cfi_startproc
	.cfi_personality 0,___gxx_personality_v0
	.cfi_lsda 0,LLSDA2842
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	movl	$21048, %eax
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	call	___chkstk_ms
	subl	%eax, %esp
	leal	-8024(%ebp), %ebx
	leal	-8016(%ebp), %esi
	call	___main
	leal	-21024(%ebp), %ecx
	movl	$13113, %eax
	movl	%ebx, (%esp)
	movl	%esi, -8024(%ebp)
	movl	$959542381, -8016(%ebp)
	movw	%ax, -8012(%ebp)
	movb	$55, -8010(%ebp)
	movl	$7, -8020(%ebp)
	movb	$0, -8009(%ebp)
LEHB0:
	call	__ZNSt13random_device14_M_init_pretr1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
LEHE0:
	movl	-8024(%ebp), %eax
	subl	$4, %esp
	cmpl	%esi, %eax
	je	L30
	movl	%eax, (%esp)
	call	__ZdlPv
L30:
	leal	-21024(%ebp), %ecx
	leal	-18524(%ebp), %esi
LEHB1:
	call	__ZNSt13random_device16_M_getval_pretr1Ev
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%eax, -18524(%ebp)
	jmp	L32
	.p2align 4,,10
L46:
	movl	-4(%esi,%edx,4), %ecx
L32:
	movl	%ecx, %eax
	shrl	$30, %eax
	xorl	%ecx, %eax
	imull	$1812433253, %eax, %eax
	addl	%edx, %eax
	movl	%eax, (%esi,%edx,4)
	addl	$1, %edx
	cmpl	$624, %edx
	jne	L46
	movl	$624, -16028(%ebp)
	xorl	%edi, %edi
	.p2align 4,,10
L33:
	movl	%esi, (%esp)
	call	__ZSt18generate_canonicalIdLj53ESt23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEET_RT1_
	fld1
	movl	%esi, (%esp)
	fadd	%st, %st(1)
	fstpl	-21040(%ebp)
	fstpl	-16024(%ebp,%edi,8)
	call	__ZSt18generate_canonicalIdLj53ESt23mersenne_twister_engineIjLj32ELj624ELj397ELj31ELj2567483615ELj11ELj4294967295ELj7ELj2636928640ELj15ELj4022730752ELj18ELj1812433253EEET_RT1_
	fldl	-21040(%ebp)
	faddp	%st, %st(1)
	fstpl	(%ebx,%edi,8)
	addl	$1, %edi
	cmpl	$1000, %edi
	jne	L33
	flds	LC4
	xorl	%eax, %eax
	.p2align 4,,10
L34:
	fldl	-16024(%ebp,%eax,8)
	fmul	%st(1), %st
	faddl	(%ebx,%eax,8)
	fstpl	(%ebx,%eax,8)
	addl	$1, %eax
	cmpl	$1000, %eax
	jne	L34
	fstp	%st(0)
	leal	-24(%ebp), %eax
	fldz
	.p2align 4,,10
L35:
	faddl	(%ebx)
	addl	$8, %ebx
	cmpl	%ebx, %eax
	jne	L35
	fstpl	(%esp)
	movl	$__ZSt4cout, %ecx
	call	__ZNSo9_M_insertIdEERSoT_
	subl	$8, %esp
	leal	-16(%ebp), %esp
	xorl	%eax, %eax
	popl	%ecx
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
L38:
	.cfi_restore_state
	movl	-8024(%ebp), %edx
	movl	%eax, %ebx
	cmpl	%esi, %edx
	je	L37
	movl	%edx, (%esp)
	call	__ZdlPv
L37:
	movl	%ebx, (%esp)
	call	__Unwind_Resume
LEHE1:
	.cfi_endproc
LFE2842:
	.def	___gxx_personality_v0;	.scl	2;	.type	32;	.endef
	.section	.gcc_except_table,"w"
LLSDA2842:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 LLSDACSE2842-LLSDACSB2842
LLSDACSB2842:
	.uleb128 LEHB0-LFB2842
	.uleb128 LEHE0-LEHB0
	.uleb128 L38-LFB2842
	.uleb128 0
	.uleb128 LEHB1-LFB2842
	.uleb128 LEHE1-LEHB1
	.uleb128 0
	.uleb128 0
LLSDACSE2842:
	.section	.text.startup,"x"
	.p2align 4,,15
	.def	__GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
__GLOBAL__sub_I_main:
LFB3342:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$__ZStL8__ioinit, %ecx
	call	__ZNSt8ios_base4InitC1Ev
	movl	$___tcf_0, (%esp)
	call	_atexit
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE3342:
	.section	.ctors,"w"
	.align 4
	.long	__GLOBAL__sub_I_main
.lcomm __ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
LC2:
	.long	1333788672
	.align 4
LC4:
	.long	1056964608
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	__ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSt13random_device14_M_init_pretr1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE;	.scl	2;	.type	32;	.endef
	.def	__ZdlPv;	.scl	2;	.type	32;	.endef
	.def	__ZNSt13random_device16_M_getval_pretr1Ev;	.scl	2;	.type	32;	.endef
	.def	__ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	__Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	_atexit;	.scl	2;	.type	32;	.endef
