	bits 64
start:
	invlpga eax,ecx
	invlpga rax,ecx
	jecxz start
	jrcxz start
	loop start,ecx
	loop start,rcx
	loope start,ecx
	loope start,rcx
	loopz start,ecx
	loopz start,rcx
	loopne start,ecx
	loopne start,rcx
	loopnz start,ecx
	loopnz start,rcx
	clzero eax
	clzero rax
	movdir64b eax,[edi]
	movdir64b rax,[rdi]
	umonitor eax
	umonitor rax
