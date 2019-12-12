// Code generated by command: go run gen.go -out encodeblock_amd64.s -stubs encodeblock_amd64.go. DO NOT EDIT.

// +build !appengine
// +build !noasm
// +build gc

#include "textflag.h"

// func encodeBlockAsm(dst []byte, src []byte) int
TEXT ·encodeBlockAsm(SB), NOSPLIT, $65656-56
	MOVQ $0x00000200, AX
	LEAQ 120(SP), CX
	XORQ AX, AX
	PXOR X0, X0

zeroloop:
	MOVUPS X0, (CX)
	MOVUPS X0, 16(CX)
	MOVUPS X0, 32(CX)
	MOVUPS X0, 48(CX)
	MOVUPS X0, 64(CX)
	MOVUPS X0, 80(CX)
	MOVUPS X0, 96(CX)
	MOVUPS X0, 112(CX)
	ADDQ   $0x80, CX
	DECQ   AX
	JNZ    zeroloop
	RET
