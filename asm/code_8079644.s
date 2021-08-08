    .syntax unified
    .include "asm/macros.inc"

	THUMB_FUNC_START sub_8079644
sub_8079644: @ 0x08079644
	bx pc
	nop
_08079648:
	.byte 0xAC, 0x1A, 0xFE, 0xEA

	THUMB_FUNC_START j_setjmp
j_setjmp: @ 0x0807964C
	bx pc
	nop
_08079650:
	.byte 0xDE, 0x1A, 0xFE, 0xEA
    .global j_longjmp
j_longjmp:
	bx pc
	nop
_08079658:
	.byte 0xE1, 0x1A, 0xFE, 0xEA

	THUMB_FUNC_START BgAffineSet
BgAffineSet: @ 0x0807965C
	svc #0xe
	bx lr

	THUMB_FUNC_START CpuFastSet
CpuFastSet: @ 0x08079660
	svc #0xc
	bx lr

	THUMB_FUNC_START CpuSet
CpuSet: @ 0x08079664
	svc #0xb
	bx lr

	THUMB_FUNC_START Div
Div: @ 0x08079668
	svc #6
	bx lr

	THUMB_FUNC_START DivRem
DivRem: @ 0x0807966C
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START HuffUnComp
HuffUnComp: @ 0x08079674
	svc #0x13
	bx lr

	THUMB_FUNC_START LZ77UnCompVram
LZ77UnCompVram: @ 0x08079678
	svc #0x12
	bx lr

	THUMB_FUNC_START LZ77UnCompWram
LZ77UnCompWram: @ 0x0807967C
	svc #0x11
	bx lr

	THUMB_FUNC_START MultiBoot
MultiBoot: @ 0x08079680
	movs r1, #1
	svc #0x25
	bx lr
	.align 2, 0

	THUMB_FUNC_START RLUnCompVram
RLUnCompVram: @ 0x08079688
	svc #0x15
	bx lr

	THUMB_FUNC_START RLUnCompWram
RLUnCompWram: @ 0x0807968C
	svc #0x14
	bx lr

	THUMB_FUNC_START SoftReset
SoftReset: @ 0x08079690
	ldr r3, _080796A0
	movs r2, #0
	strb r2, [r3]
	ldr r1, _080796A4
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_080796A0: .4byte 0x04000208
_080796A4: .4byte gUnknown_03007F00

	THUMB_FUNC_START ReadFlashID
ReadFlashID: @ 0x080796A8
	push {r4, r7, lr}
	sub sp, #0x4c
	mov r7, sp
	adds r1, r7, #4
	adds r0, r1, #0
	bl SetReadFlash1
	adds r0, r7, #4
	adds r1, r0, #1
	str r1, [r7, #0x44]
	ldr r0, _080796E4
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _080796E8
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _080796E4
	movs r1, #0x90
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	ldr r2, _080796EC
	adds r1, r2, #0
	strh r1, [r0]
_080796D8:
	adds r0, r7, #0
	adds r0, #0x48
	ldrh r1, [r0]
	cmp r1, #0
	bne _080796F0
	b _08079706
	.align 2, 0
_080796E4: .4byte 0x0E005555
_080796E8: .4byte 0x0E002AAA
_080796EC: .4byte 0x0000157C
_080796F0:
	adds r1, r7, #0
	adds r1, #0x48
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _080796D8
_08079706:
	adds r4, r7, #0
	ldr r0, _08079764
	ldr r1, [r7, #0x44]
	bl _call_via_r1
	lsls r2, r0, #0x18
	lsrs r1, r2, #0x18
	adds r0, r1, #0
	lsls r1, r0, #8
	adds r0, r1, #0
	strh r0, [r4]
	adds r4, r7, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	ldr r1, [r7, #0x44]
	bl _call_via_r1
	adds r1, r0, #0
	adds r0, r7, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	adds r1, r2, #0
	ldrh r0, [r0]
	orrs r1, r0
	adds r0, r1, #0
	strh r0, [r4]
	ldr r0, _08079768
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _0807976C
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _08079768
	movs r1, #0xf0
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x48
	ldr r2, _08079770
	adds r1, r2, #0
	strh r1, [r0]
_08079756:
	adds r0, r7, #0
	adds r0, #0x48
	ldrh r1, [r0]
	cmp r1, #0
	bne _08079774
	b _0807978A
	.align 2, 0
_08079764: .4byte 0x0E000001
_08079768: .4byte 0x0E005555
_0807976C: .4byte 0x0E002AAA
_08079770: .4byte 0x0000157C
_08079774:
	adds r1, r7, #0
	adds r1, #0x48
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _08079756
_0807978A:
	adds r0, r7, #0
	ldrh r1, [r0]
	adds r0, r1, #0
	b _08079792
_08079792:
	add sp, #0x4c
	pop {r4, r7}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START IdentifyFlash_1M
IdentifyFlash_1M: @ 0x0807979C
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	ldr r0, _080797DC
	ldr r1, _080797DC
	ldrh r2, [r1]
	ldr r3, _080797E0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	bl ReadFlashID
	adds r1, r7, #2
	strh r0, [r1]
	ldr r0, _080797E4
	str r0, [r7, #4]
	adds r0, r7, #0
	movs r1, #1
	strh r1, [r0]
_080797CC:
	ldr r0, [r7, #4]
	ldr r1, [r0]
	adds r0, r1, #0
	adds r1, #0x28
	ldrb r0, [r1]
	cmp r0, #0
	bne _080797E8
	b _0807980A
	.align 2, 0
_080797DC: .4byte 0x04000204
_080797E0: .4byte 0x0000FFFC
_080797E4: .4byte gUnknown_0827D0B0
_080797E8:
	adds r0, r7, #2
	ldr r1, [r7, #4]
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x28
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08079802
	adds r0, r7, #0
	movs r1, #0
	strh r1, [r0]
	b _0807980A
_08079802:
	ldr r0, [r7, #4]
	adds r1, r0, #4
	str r1, [r7, #4]
	b _080797CC
_0807980A:
	ldr r0, _08079850
	ldr r1, [r7, #4]
	ldr r2, [r1]
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _08079854
	ldr r1, [r7, #4]
	ldr r2, [r1]
	ldr r1, [r2, #4]
	str r1, [r0]
	ldr r0, _08079858
	ldr r1, [r7, #4]
	ldr r2, [r1]
	ldr r1, [r2, #8]
	str r1, [r0]
	ldr r0, _0807985C
	ldr r1, [r7, #4]
	ldr r2, [r1]
	ldr r1, [r2, #0xc]
	str r1, [r0]
	ldr r0, _08079860
	ldr r1, [r7, #4]
	ldr r2, [r1]
	ldr r1, [r2, #0x10]
	str r1, [r0]
	ldr r0, _08079864
	ldr r1, [r7, #4]
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x14
	str r1, [r0]
	adds r0, r7, #0
	ldrh r1, [r0]
	adds r0, r1, #0
	b _08079868
	.align 2, 0
_08079850: .4byte gUnknown_03006544
_08079854: .4byte gUnknown_03006550
_08079858: .4byte gUnknown_03006554
_0807985C: .4byte gUnknown_03006540
_08079860: .4byte gUnknown_030006F8
_08079864: .4byte gUnknown_03006548
_08079868:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START FlashTimerIntr
FlashTimerIntr: @ 0x08079870
	push {r7, lr}
	mov r7, sp
	ldr r0, _080798A0
	ldrh r1, [r0]
	cmp r1, #0
	beq _08079898
	ldr r1, _080798A0
	ldr r0, _080798A0
	ldr r1, _080798A0
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0
	bne _08079898
	ldr r0, _080798A4
	movs r1, #1
	strb r1, [r0]
_08079898:
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_080798A0: .4byte gUnknown_03000702
_080798A4: .4byte gUnknown_03000704

	THUMB_FUNC_START SetFlashTimerIntr
SetFlashTimerIntr: @ 0x080798A8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strb r0, [r1]
	adds r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #3
	bls _080798C0
	movs r0, #1
	b _080798F0
_080798C0:
	ldr r0, _080798E0
	adds r1, r7, #0
	ldrb r2, [r1]
	strb r2, [r0]
	ldr r0, _080798E4
	ldr r1, _080798E0
	ldrb r2, [r1]
	lsls r1, r2, #2
	ldr r3, _080798E8
	adds r2, r1, r3
	str r2, [r0]
	ldr r0, [r7, #4]
	ldr r1, _080798EC
	str r1, [r0]
	movs r0, #0
	b _080798F0
	.align 2, 0
_080798E0: .4byte gUnknown_03000700
_080798E4: .4byte gUnknown_03000708
_080798E8: .4byte 0x04000100
_080798EC: .4byte FlashTimerIntr+1
_080798F0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START StartFlashTimer
StartFlashTimer: @ 0x080798F8
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	adds r1, r7, #0
	strb r0, [r1]
	ldr r0, _08079980
	adds r2, r7, #0
	ldrb r1, [r2]
	adds r3, r1, #0
	lsls r2, r3, #1
	adds r2, r2, r1
	lsls r1, r2, #1
	ldr r0, [r0]
	adds r1, r0, r1
	str r1, [r7, #4]
	ldr r0, _08079984
	ldr r1, _08079988
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _08079988
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0807998C
	ldr r1, _0807998C
	ldr r2, _08079990
	ldrb r3, [r2]
	movs r4, #8
	adds r2, r4, #0
	lsls r2, r3
	ldrh r1, [r1]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08079994
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08079998
	adds r0, r7, #4
	ldr r1, [r0]
	ldrh r3, [r1]
	strh r3, [r2]
	adds r1, #2
	str r1, [r0]
	ldr r0, _0807999C
	ldr r1, [r0]
	adds r2, r7, #4
	ldr r3, [r2]
	ldrh r4, [r3]
	strh r4, [r1]
	adds r3, #2
	str r3, [r2]
	adds r1, #2
	str r1, [r0]
	ldr r0, _0807999C
	ldr r1, [r0]
	adds r2, r7, #4
	ldr r3, [r2]
	ldrh r4, [r3]
	strh r4, [r1]
	adds r3, #2
	str r3, [r2]
	subs r1, #2
	str r1, [r0]
	add sp, #8
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079980: .4byte gUnknown_030006F8
_08079984: .4byte gUnknown_0300070C
_08079988: .4byte 0x04000208
_0807998C: .4byte 0x04000200
_08079990: .4byte gUnknown_03000700
_08079994: .4byte gUnknown_03000704
_08079998: .4byte gUnknown_03000702
_0807999C: .4byte gUnknown_03000708

	THUMB_FUNC_START StopFlashTimer
StopFlashTimer: @ 0x080799A0
	push {r4, r7, lr}
	mov r7, sp
	ldr r0, _080799E8
	ldr r1, [r0]
	movs r2, #0
	strh r2, [r1]
	adds r1, #2
	str r1, [r0]
	ldr r0, _080799E8
	ldr r1, [r0]
	movs r2, #0
	strh r2, [r1]
	subs r1, #2
	str r1, [r0]
	ldr r0, _080799EC
	ldr r1, _080799EC
	ldr r2, _080799F0
	ldrb r3, [r2]
	movs r4, #8
	adds r2, r4, #0
	lsls r2, r3
	adds r3, r2, #0
	mvns r2, r3
	ldrh r1, [r1]
	adds r3, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _080799F4
	ldr r1, _080799F8
	ldrh r2, [r1]
	strh r2, [r0]
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080799E8: .4byte gUnknown_03000708
_080799EC: .4byte 0x04000200
_080799F0: .4byte gUnknown_03000700
_080799F4: .4byte 0x04000208
_080799F8: .4byte gUnknown_0300070C

	THUMB_FUNC_START ReadFlash1
ReadFlash1: @ 0x080799FC
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrb r1, [r0]
	adds r0, r1, #0
	b _08079A0C
_08079A0C:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START SetReadFlash1
SetReadFlash1: @ 0x08079A14
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r0, _08079A48
	ldr r1, [r7]
	adds r2, r1, #1
	str r2, [r0]
	ldr r0, _08079A4C
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r7, #8]
	adds r0, r7, #4
	ldr r1, _08079A50
	ldr r2, _08079A4C
	subs r1, r1, r2
	lsrs r2, r1, #1
	adds r1, r2, #0
	strh r1, [r0]
_08079A3E:
	adds r0, r7, #4
	ldrh r1, [r0]
	cmp r1, #0
	bne _08079A54
	b _08079A78
	.align 2, 0
_08079A48: .4byte gUnknown_030006FC
_08079A4C: .4byte ReadFlash1+1
_08079A50: .4byte SetReadFlash1+1
_08079A54:
	ldr r0, [r7]
	adds r1, r7, #0
	adds r1, #8
	ldr r2, [r1]
	ldrh r3, [r2]
	strh r3, [r0]
	adds r2, #2
	str r2, [r1]
	adds r0, #2
	str r0, [r7]
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _08079A3E
_08079A78:
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START PollingSR_512k_COMMON
PollingSR_512k_COMMON: @ 0x08079A80
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	adds r3, r0, #0
	str r1, [r7, #4]
	adds r0, r2, #0
	adds r1, r7, #0
	adds r2, r3, #0
	strb r2, [r1]
	adds r1, r7, #0
	adds r1, #8
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	movs r1, #0
	strh r1, [r0]
	adds r0, r7, #0
	ldrb r1, [r0]
	adds r0, r1, #0
	bl StartFlashTimer
_08079AAA:
	b _08079AAE
_08079AAC:
	.byte 0x45, 0xE0
_08079AAE:
	ldr r0, _08079ACC
	ldr r1, [r7, #4]
	ldr r2, [r0]
	adds r0, r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	adds r0, r7, #0
	adds r0, #8
	lsls r2, r1, #0x18
	lsrs r1, r2, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	bne _08079AD0
	b _08079B3A
	.align 2, 0
_08079ACC: .4byte gUnknown_030006FC
_08079AD0:
	ldr r0, _08079AF8
	ldrb r1, [r0]
	cmp r1, #0
	beq _08079B38
	ldr r0, _08079AFC
	ldr r1, [r7, #4]
	ldr r2, [r0]
	adds r0, r1, #0
	bl _call_via_r2
	adds r1, r0, #0
	adds r0, r7, #0
	adds r0, #8
	lsls r2, r1, #0x18
	lsrs r1, r2, #0x18
	ldrb r0, [r0]
	cmp r1, r0
	bne _08079B00
	b _08079B3A
	.align 2, 0
_08079AF8: .4byte gUnknown_03000704
_08079AFC: .4byte gUnknown_030006FC
_08079B00:
	ldr r0, _08079B2C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x14
	ldrh r1, [r0]
	ldr r0, _08079B30
	cmp r1, r0
	bne _08079B16
	ldr r0, _08079B34
	movs r1, #0xf0
	strb r1, [r0]
_08079B16:
	adds r0, r7, #0
	adds r0, #0xa
	adds r1, r7, #0
	ldrb r2, [r1]
	adds r1, r2, #0
	movs r2, #0xc0
	lsls r2, r2, #8
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	b _08079B3A
	.align 2, 0
_08079B2C: .4byte gUnknown_03006548
_08079B30: .4byte 0x00001CC2
_08079B34: .4byte 0x0E005555
_08079B38:
	b _08079AAA
_08079B3A:
	bl StopFlashTimer
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	adds r0, r1, #0
	b _08079B48
_08079B48:
	add sp, #0xc
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START ReadFlash_Core
ReadFlash_Core: @ 0x08079B50
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	str r2, [r7, #8]
_08079B5C:
	ldr r0, [r7, #8]
	subs r1, r0, #1
	adds r0, r1, #0
	str r0, [r7, #8]
	movs r1, #1
	cmn r0, r1
	bne _08079B6C
	b _08079B80
_08079B6C:
	adds r0, r7, #4
	ldr r1, [r0]
	ldr r2, [r7]
	ldrb r3, [r2]
	strb r3, [r1]
	adds r2, #1
	str r2, [r7]
	adds r1, #1
	str r1, [r0]
	b _08079B5C
_08079B80:
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START ReadFlash
ReadFlash: @ 0x08079B88
	push {r4, r7, lr}
	sub sp, #0xa4
	mov r7, sp
	str r1, [r7, #4]
	str r2, [r7, #8]
	str r3, [r7, #0xc]
	adds r1, r7, #0
	strh r0, [r1]
	ldr r0, _08079BF8
	ldr r1, _08079BF8
	ldrh r2, [r1]
	ldr r3, _08079BFC
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x98
	ldr r0, _08079C00
	str r0, [r1]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x98
	adds r1, r7, #0
	adds r2, r7, #0
	adds r2, #0x98
	ldr r1, [r2]
	movs r2, #1
	eors r1, r2
	str r1, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	adds r1, #0x9c
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x14
	ldr r1, _08079C04
	ldr r2, _08079C00
	subs r1, r1, r2
	lsrs r2, r1, #1
	adds r1, r2, #0
	strh r1, [r0]
_08079BEA:
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	cmp r1, #0
	bne _08079C08
	b _08079C3A
	.align 2, 0
_08079BF8: .4byte 0x04000204
_08079BFC: .4byte 0x0000FFFC
_08079C00: .4byte ReadFlash_Core+1
_08079C04: .4byte ReadFlash+1
_08079C08:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x9c
	ldr r1, [r0]
	adds r3, r7, #0
	adds r2, r7, #0
	adds r2, #0x98
	ldr r3, [r2]
	ldrh r4, [r3]
	strh r4, [r1]
	adds r3, #2
	str r3, [r2]
	adds r1, #2
	str r1, [r0]
	adds r1, r7, #0
	adds r1, #0x14
	adds r0, r7, #0
	adds r0, #0x14
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _08079BEA
_08079C3A:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xa0
	adds r1, r7, #0
	adds r1, #0x18
	adds r2, r1, #1
	str r2, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	ldr r1, _08079C80
	ldrb r2, [r1, #0x1c]
	lsls r0, r2
	ldr r2, [r7, #4]
	movs r3, #0xe0
	lsls r3, r3, #0x14
	adds r1, r2, r3
	adds r0, r0, r1
	str r0, [r7, #0x10]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, [r7, #0x10]
	ldr r2, [r7, #8]
	ldr r3, [r7, #0xc]
	ldr r4, [r0]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	bl _call_via_r4
	add sp, #0xa4
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08079C80: .4byte gUnknown_0827D160

	THUMB_FUNC_START VerifyFlashSector_Core
VerifyFlashSector_Core: @ 0x08079C84
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	adds r0, r2, #0
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
_08079C96:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	lsls r1, r2, #0x10
	lsrs r0, r1, #0x10
	ldr r1, _08079CB8
	cmp r0, r1
	bne _08079CBC
	b _08079CDC
	.align 2, 0
_08079CB8: .4byte 0x0000FFFF
_08079CBC:
	adds r0, r7, #4
	ldr r1, [r0]
	ldr r4, [r7]
	ldrb r2, [r1]
	ldrb r3, [r4]
	adds r4, #1
	str r4, [r7]
	adds r1, #1
	str r1, [r0]
	cmp r2, r3
	beq _08079CDA
	ldr r0, [r7, #4]
	subs r1, r0, #1
	adds r0, r1, #0
	b _08079CE0
_08079CDA:
	b _08079C96
_08079CDC:
	movs r0, #0
	b _08079CE0
_08079CE0:
	add sp, #0xc
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START VerifyFlashSector
VerifyFlashSector: @ 0x08079CE8
	push {r4, r7, lr}
	sub sp, #0x124
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	ldr r0, _08079D5C
	ldr r1, _08079D5C
	ldrh r2, [r1]
	ldr r3, _08079D60
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, _08079D64
	str r0, [r1]
	adds r1, r7, #0
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	movs r3, #0x88
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r1, [r2]
	movs r2, #1
	eors r1, r2
	str r1, [r0]
	adds r0, r7, #0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r1, r7, r0
	adds r0, r7, #0
	adds r0, #0x10
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, _08079D68
	ldr r2, _08079D64
	subs r1, r1, r2
	lsrs r2, r1, #1
	adds r1, r2, #0
	strh r1, [r0]
_08079D4E:
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	cmp r1, #0
	bne _08079D6C
	b _08079DA2
	.align 2, 0
_08079D5C: .4byte 0x04000204
_08079D60: .4byte 0x0000FFFC
_08079D64: .4byte VerifyFlashSector_Core+1
_08079D68: .4byte VerifyFlashSector+1
_08079D6C:
	adds r1, r7, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0]
	adds r3, r7, #0
	movs r3, #0x88
	lsls r3, r3, #1
	adds r2, r7, r3
	ldr r3, [r2]
	ldrh r4, [r3]
	strh r4, [r1]
	adds r3, #2
	str r3, [r2]
	adds r1, #2
	str r1, [r0]
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r7, #0
	adds r0, #0xc
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _08079D4E
_08079DA2:
	adds r1, r7, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	adds r1, r7, #0
	adds r1, #0x10
	adds r2, r1, #1
	str r2, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	ldr r1, _08079E0C
	ldrb r2, [r1, #0x1c]
	lsls r0, r2
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r0, r2
	str r1, [r7, #8]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, _08079E0C
	ldr r2, [r1, #0x18]
	adds r1, r2, #0
	strh r1, [r0]
	adds r1, r7, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r7, #4]
	ldr r2, [r7, #8]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r4, r7, r3
	ldrh r3, [r4]
	ldr r4, [r0]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	bl _call_via_r4
	adds r1, r7, #0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r2, r7, r1
	str r0, [r2]
	adds r0, r7, #0
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r2, [r1]
	adds r0, r2, #0
	b _08079E10
	.align 2, 0
_08079E0C: .4byte gUnknown_0827D160
_08079E10:
	add sp, #0x124
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START EraseFlashChip_LE
EraseFlashChip_LE: @ 0x08079E18
	push {r7, lr}
	sub sp, #0x48
	mov r7, sp
	ldr r0, _08079E9C
	ldr r1, _08079E9C
	ldrh r2, [r1]
	ldr r3, _08079EA0
	adds r1, r2, #0
	ands r1, r3
	ldr r3, _08079EA4
	ldr r2, [r3]
	ldrh r2, [r2, #0x10]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _08079EA8
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _08079EAC
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _08079EA8
	movs r1, #0x80
	strb r1, [r0]
	ldr r0, _08079EA8
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _08079EAC
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _08079EA8
	movs r1, #0x10
	strb r1, [r0]
	adds r1, r7, #4
	adds r0, r1, #0
	bl SetReadFlash1
	ldr r0, _08079EB0
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	adds r1, r7, #0
	adds r1, #0x44
	strh r0, [r1]
	ldr r0, _08079E9C
	ldr r1, _08079E9C
	ldrh r2, [r1]
	ldr r3, _08079EA0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x44
	ldrh r1, [r0]
	adds r0, r1, #0
	b _08079EB4
	.align 2, 0
_08079E9C: .4byte 0x04000204
_08079EA0: .4byte 0x0000FFFC
_08079EA4: .4byte gUnknown_03006548
_08079EA8: .4byte 0x0E005555
_08079EAC: .4byte 0x0E002AAA
_08079EB0: .4byte gUnknown_03006540
_08079EB4:
	add sp, #0x48
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START EraseFlashSector_LE
EraseFlashSector_LE: @ 0x08079EBC
	push {r7, lr}
	sub sp, #0x50
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xf
	bls _08079ED8
	ldr r0, _08079ED4
	b _08079F80
	.align 2, 0
_08079ED4: .4byte 0x000080FF
_08079ED8:
	ldr r0, _08079F68
	ldr r1, _08079F68
	ldrh r2, [r1]
	ldr r3, _08079F6C
	adds r1, r2, #0
	ands r1, r3
	ldr r3, _08079F70
	ldr r2, [r3]
	ldrh r2, [r2, #0x10]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	ldr r2, _08079F70
	ldr r1, [r2]
	ldrb r2, [r1, #8]
	lsls r0, r2
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r0, r2
	str r1, [r7, #8]
	ldr r0, _08079F74
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _08079F78
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _08079F74
	movs r1, #0x80
	strb r1, [r0]
	ldr r0, _08079F74
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _08079F78
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, [r7, #8]
	movs r1, #0x30
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r1, #0
	bl SetReadFlash1
	ldr r0, _08079F7C
	ldr r1, [r7, #8]
	ldr r3, [r0]
	movs r0, #2
	movs r2, #0xff
	bl _call_via_r3
	adds r1, r7, #0
	adds r1, #0x4c
	strh r0, [r1]
	ldr r0, _08079F68
	ldr r1, _08079F68
	ldrh r2, [r1]
	ldr r3, _08079F6C
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r0, r1, #0
	b _08079F80
	.align 2, 0
_08079F68: .4byte 0x04000204
_08079F6C: .4byte 0x0000FFFC
_08079F70: .4byte gUnknown_03006548
_08079F74: .4byte 0x0E005555
_08079F78: .4byte 0x0E002AAA
_08079F7C: .4byte gUnknown_03006540
_08079F80:
	add sp, #0x50
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START ProgramFlashByte_LE
ProgramFlashByte_LE: @ 0x08079F88
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r0, _08079FC4
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _08079FC8
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _08079FC4
	movs r1, #0xa0
	strb r1, [r0]
	ldr r0, [r7, #4]
	ldr r1, [r7]
	ldrb r2, [r1]
	strb r2, [r0]
	ldr r0, _08079FCC
	ldr r1, [r7, #4]
	ldr r3, [r7]
	ldrb r2, [r3]
	ldr r3, [r0]
	movs r0, #1
	bl _call_via_r3
	lsls r2, r0, #0x10
	lsrs r1, r2, #0x10
	adds r0, r1, #0
	b _08079FD0
	.align 2, 0
_08079FC4: .4byte 0x0E005555
_08079FC8: .4byte 0x0E002AAA
_08079FCC: .4byte gUnknown_03006540
_08079FD0:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START ProgramFlashSector_LE
ProgramFlashSector_LE: @ 0x08079FD8
	push {r4, r7, lr}
	sub sp, #0x80
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xf
	bls _08079FF4
	ldr r0, _08079FF0
	b _0807A1E0
	.align 2, 0
_08079FF0: .4byte 0x000080FF
_08079FF4:
	adds r1, r7, #0
	ldrh r0, [r1]
	ldr r2, _0807A034
	ldr r1, [r2]
	ldrb r2, [r1, #8]
	lsls r0, r2
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r0, r2
	str r1, [r7, #0x78]
	ldr r0, _0807A038
	movs r1, #1
	eors r0, r1
	str r0, [r7, #0x6c]
	adds r0, r7, #0
	adds r0, #0xc
	str r0, [r7, #0x70]
	adds r0, r7, #0
	adds r0, #8
	ldr r2, _0807A03C
	adds r1, r2, #0
	ldr r3, _0807A038
	adds r2, r3, #0
	subs r1, r1, r2
	adds r2, r1, #0
	strh r2, [r0]
_0807A028:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A040
	b _0807A06A
	.align 2, 0
_0807A034: .4byte gUnknown_03006548
_0807A038: .4byte VerifyFlashCoreFF+1
_0807A03C: .4byte VerifyFlashErase+1
_0807A040:
	adds r0, r7, #0
	adds r0, #0x70
	ldr r1, [r0]
	adds r2, r7, #0
	adds r2, #0x6c
	ldr r3, [r2]
	ldrh r4, [r3]
	strh r4, [r1]
	adds r3, #2
	str r3, [r2]
	adds r1, #2
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	subs r1, r2, #2
	adds r2, r1, #0
	strh r2, [r0]
	b _0807A028
_0807A06A:
	adds r0, r7, #0
	adds r0, #0x7c
	movs r1, #0
	strb r1, [r0]
_0807A072:
	b _0807A076
_0807A074:
	.byte 0x31, 0xE0
_0807A076:
	adds r0, r7, #0
	ldrh r1, [r0]
	adds r0, r1, #0
	bl EraseFlashSector_LE
	adds r1, r7, #0
	adds r1, #0xa
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A0B2
	adds r4, r7, #0
	adds r4, #0xa
	ldr r0, [r7, #0x78]
	adds r1, r7, #0
	adds r1, #0xc
	adds r2, r1, #1
	adds r1, r2, #0
	bl VerifyFlashErase
	adds r1, r0, #0
	strh r1, [r4]
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A0B2
	b _0807A0DA
_0807A0B2:
	adds r1, r7, #0
	adds r1, #0x7c
	adds r0, r7, #0
	adds r0, #0x7c
	adds r1, r7, #0
	adds r1, #0x7c
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x51
	bne _0807A0D8
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0807A1E0
_0807A0D8:
	b _0807A072
_0807A0DA:
	adds r0, r7, #0
	adds r0, #0x7d
	movs r1, #1
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x7c
	ldrb r1, [r0]
	cmp r1, #0
	beq _0807A0F4
	adds r0, r7, #0
	adds r0, #0x7d
	movs r1, #6
	strb r1, [r0]
_0807A0F4:
	adds r0, r7, #0
	adds r0, #0x7e
	movs r1, #1
	strb r1, [r0]
_0807A0FC:
	adds r0, r7, #0
	adds r0, #0x7e
	adds r1, r7, #0
	adds r1, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0807A10E
	b _0807A12E
_0807A10E:
	adds r0, r7, #0
	ldrh r1, [r0]
	adds r0, r1, #0
	bl EraseFlashSector_LE
	adds r1, r7, #0
	adds r1, #0x7e
	adds r0, r7, #0
	adds r0, #0x7e
	adds r1, r7, #0
	adds r1, #0x7e
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0807A0FC
_0807A12E:
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r1, #0
	bl SetReadFlash1
	ldr r0, _0807A168
	ldr r1, _0807A168
	ldrh r2, [r1]
	ldr r3, _0807A16C
	adds r1, r2, #0
	ands r1, r3
	ldr r3, _0807A170
	ldr r2, [r3]
	ldrh r2, [r2, #0x10]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0807A174
	ldr r2, _0807A170
	ldr r1, [r2]
	ldr r2, [r1, #4]
	adds r1, r2, #0
	strh r1, [r0]
_0807A15C:
	ldr r0, _0807A174
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A178
	b _0807A1B4
	.align 2, 0
_0807A168: .4byte 0x04000204
_0807A16C: .4byte 0x0000FFFC
_0807A170: .4byte gUnknown_03006548
_0807A174: .4byte gUnknown_0300654C
_0807A178:
	ldr r0, [r7, #4]
	ldr r1, [r7, #0x78]
	bl ProgramFlashByte_LE
	adds r1, r7, #0
	adds r1, #0xa
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	cmp r1, #0
	beq _0807A192
	b _0807A1B4
_0807A192:
	ldr r1, _0807A1B0
	ldr r0, _0807A1B0
	ldr r1, _0807A1B0
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	ldr r0, [r7, #0x78]
	adds r1, r0, #1
	str r1, [r7, #0x78]
	b _0807A15C
	.align 2, 0
_0807A1B0: .4byte gUnknown_0300654C
_0807A1B4:
	ldr r0, _0807A1D8
	ldr r1, _0807A1D8
	ldrh r2, [r1]
	ldr r3, _0807A1DC
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0807A1E0
	.align 2, 0
_0807A1D8: .4byte 0x04000204
_0807A1DC: .4byte 0x0000FFFC
_0807A1E0:
	add sp, #0x80
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START VerifyFlashCoreFF
VerifyFlashCoreFF: @ 0x0807A1E8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r1, _0807A200
	ldr r0, [r1]
	ldr r1, [r0, #4]
	str r1, [r7, #4]
_0807A1F8:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0807A204
	b _0807A21A
	.align 2, 0
_0807A200: .4byte gUnknown_03006548
_0807A204:
	ldr r0, [r7]
	ldrb r1, [r0]
	adds r0, #1
	str r0, [r7]
	cmp r1, #0xff
	beq _0807A212
	b _0807A21A
_0807A212:
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _0807A1F8
_0807A21A:
	ldr r1, [r7, #4]
	adds r0, r1, #0
	b _0807A220
_0807A220:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START VerifyFlashErase
VerifyFlashErase: @ 0x0807A228
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	str r1, [r7, #4]
	ldr r1, [r7, #4]
	ldr r0, [r7]
	bl _call_via_r1
	cmp r0, #0
	beq _0807A248
	ldr r0, _0807A244
	b _0807A24C
	.align 2, 0
_0807A244: .4byte 0x00008004
_0807A248:
	movs r0, #0
	b _0807A24C
_0807A24C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_807A254
sub_807A254: @ 0x0807A254
	push {r7, lr}
	sub sp, #0x50
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xf
	bls _0807A270
	ldr r0, _0807A26C
	b _0807A354
	.align 2, 0
_0807A26C: .4byte 0x000080FF
_0807A270:
	adds r0, r7, #0
	ldrh r1, [r0]
	adds r0, r1, #0
	bl EraseFlashSector_LE
	adds r1, r7, #0
	adds r1, #0xc
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	beq _0807A290
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0807A354
_0807A290:
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r1, #0
	bl SetReadFlash1
	ldr r0, _0807A2DC
	ldr r1, _0807A2DC
	ldrh r2, [r1]
	ldr r3, _0807A2E0
	adds r1, r2, #0
	ands r1, r3
	ldr r3, _0807A2E4
	ldr r2, [r3]
	ldrh r2, [r2, #0x10]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0807A2E8
	ldr r2, _0807A2E4
	ldr r1, [r2]
	ldr r2, [r1, #4]
	adds r1, r2, #0
	strh r1, [r0]
	adds r1, r7, #0
	ldrh r0, [r1]
	ldr r2, _0807A2E4
	ldr r1, [r2]
	ldrb r2, [r1, #8]
	lsls r0, r2
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r0, r2
	str r1, [r7, #8]
_0807A2D2:
	ldr r0, _0807A2E8
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A2EC
	b _0807A328
	.align 2, 0
_0807A2DC: .4byte 0x04000204
_0807A2E0: .4byte 0x0000FFFC
_0807A2E4: .4byte gUnknown_03006548
_0807A2E8: .4byte gUnknown_0300654C
_0807A2EC:
	ldr r0, [r7, #4]
	ldr r1, [r7, #8]
	bl ProgramFlashByte_LE
	adds r1, r7, #0
	adds r1, #0xc
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	cmp r1, #0
	beq _0807A306
	b _0807A328
_0807A306:
	ldr r1, _0807A324
	ldr r0, _0807A324
	ldr r1, _0807A324
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	b _0807A2D2
	.align 2, 0
_0807A324: .4byte gUnknown_0300654C
_0807A328:
	ldr r0, _0807A34C
	ldr r1, _0807A34C
	ldrh r2, [r1]
	ldr r3, _0807A350
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0807A354
	.align 2, 0
_0807A34C: .4byte 0x04000204
_0807A350: .4byte 0x0000FFFC
_0807A354:
	add sp, #0x50
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START EraseFlashChip_AT
EraseFlashChip_AT: @ 0x0807A35C
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r1, #0
	bl SetReadFlash1
	ldr r0, _0807A3E0
	ldr r1, _0807A3E0
	ldrh r2, [r1]
	ldr r3, _0807A3E4
	adds r1, r2, #0
	ands r1, r3
	ldr r2, _0807A3E8
	ldrh r2, [r2, #0x24]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0807A3EC
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _0807A3F0
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _0807A3EC
	movs r1, #0x80
	strb r1, [r0]
	ldr r0, _0807A3EC
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _0807A3F0
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _0807A3EC
	movs r1, #0x10
	strb r1, [r0]
	ldr r0, _0807A3F4
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	adds r1, r7, #0
	adds r1, #8
	strh r0, [r1]
	ldr r0, _0807A3E0
	ldr r1, _0807A3E0
	ldrh r2, [r1]
	ldr r3, _0807A3E4
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0807A3F8
	.align 2, 0
_0807A3E0: .4byte 0x04000204
_0807A3E4: .4byte 0x0000FFFC
_0807A3E8: .4byte gUnknown_0827D2B4
_0807A3EC: .4byte 0x0E005555
_0807A3F0: .4byte 0x0E002AAA
_0807A3F4: .4byte gUnknown_03006540
_0807A3F8:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START EraseFlashSector_AT
EraseFlashSector_AT: @ 0x0807A400
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r1, r7, #0
	ldrh r0, [r1]
	ldr r1, _0807A44C
	ldrb r2, [r1, #0x1c]
	lsls r0, r2
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r0, r2
	str r1, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xe
	ldr r1, _0807A450
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0807A450
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0807A454
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _0807A458
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _0807A454
	movs r1, #0xa0
	strb r1, [r0]
	ldr r0, _0807A44C
	ldr r1, [r0, #0x18]
	str r1, [r7, #4]
_0807A444:
	ldr r0, [r7, #4]
	cmp r0, #0
	bne _0807A45C
	b _0807A472
	.align 2, 0
_0807A44C: .4byte gUnknown_0827D2B4
_0807A450: .4byte 0x04000208
_0807A454: .4byte 0x0E005555
_0807A458: .4byte 0x0E002AAA
_0807A45C:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r0]
	movs r2, #0xff
	strb r2, [r1]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	b _0807A444
_0807A472:
	ldr r0, [r7, #8]
	subs r1, r0, #1
	str r1, [r7, #8]
	ldr r0, _0807A4C8
	adds r1, r7, #0
	adds r1, #0xe
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0807A4CC
	ldr r1, [r7, #8]
	ldr r3, [r0]
	movs r0, #1
	movs r2, #0xff
	bl _call_via_r3
	adds r1, r7, #0
	adds r1, #0xc
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	cmp r1, #0
	beq _0807A4BE
	adds r0, r7, #0
	adds r0, #0xc
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	movs r3, #0xff
	lsls r3, r3, #8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_0807A4BE:
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0807A4D0
	.align 2, 0
_0807A4C8: .4byte 0x04000208
_0807A4CC: .4byte gUnknown_03006540
_0807A4D0:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START EraseFlash4KB_AT
EraseFlash4KB_AT: @ 0x0807A4D8
	push {r7, lr}
	sub sp, #0x4c
	mov r7, sp
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xf
	bls _0807A4F4
	ldr r0, _0807A4F0
	b _0807A5D0
	.align 2, 0
_0807A4F0: .4byte 0x000080FF
_0807A4F4:
	adds r1, r7, #0
	adds r1, #8
	adds r0, r1, #0
	bl SetReadFlash1
	ldr r0, _0807A530
	ldr r1, _0807A530
	ldrh r2, [r1]
	ldr r3, _0807A534
	adds r1, r2, #0
	ands r1, r3
	ldr r2, _0807A538
	ldrh r2, [r2, #0x24]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #4
	adds r1, r7, #0
	ldrh r2, [r1]
	lsls r1, r2, #5
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #2
	movs r1, #0
	strh r1, [r0]
_0807A526:
	adds r0, r7, #2
	ldrh r1, [r0]
	cmp r1, #0x1f
	bls _0807A53C
	b _0807A5A6
	.align 2, 0
_0807A530: .4byte 0x04000204
_0807A534: .4byte 0x0000FFFC
_0807A538: .4byte gUnknown_0827D2B4
_0807A53C:
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #2
	strh r1, [r0]
_0807A544:
	adds r0, r7, #0
	adds r0, #0x48
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A550
	b _0807A57E
_0807A550:
	adds r0, r7, #4
	ldrh r1, [r0]
	adds r0, r1, #0
	bl EraseFlashSector_AT
	adds r1, r7, #6
	strh r0, [r1]
	adds r0, r7, #6
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A568
	b _0807A57E
_0807A568:
	adds r1, r7, #0
	adds r1, #0x48
	adds r0, r7, #0
	adds r0, #0x48
	adds r1, r7, #0
	adds r1, #0x48
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _0807A544
_0807A57E:
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	cmp r1, #0
	beq _0807A596
	b _0807A5A6
_0807A596:
	adds r1, r7, #2
	adds r0, r7, #2
	adds r1, r7, #2
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _0807A526
_0807A5A6:
	ldr r0, _0807A5C8
	ldr r1, _0807A5C8
	ldrh r2, [r1]
	ldr r3, _0807A5CC
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #6
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0807A5D0
	.align 2, 0
_0807A5C8: .4byte 0x04000204
_0807A5CC: .4byte 0x0000FFFC
_0807A5D0:
	add sp, #0x4c
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START ProgramFlashSector_AT
ProgramFlashSector_AT: @ 0x0807A5D8
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	adds r1, r7, #0
	ldrh r0, [r1]
	ldr r1, _0807A628
	ldrb r2, [r1, #0x1c]
	lsls r0, r2
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r0, r2
	str r1, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, _0807A62C
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0807A62C
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0807A630
	movs r1, #0xaa
	strb r1, [r0]
	ldr r0, _0807A634
	movs r1, #0x55
	strb r1, [r0]
	ldr r0, _0807A630
	movs r1, #0xa0
	strb r1, [r0]
	ldr r0, _0807A628
	ldr r1, [r0, #0x18]
	str r1, [r7, #8]
_0807A61E:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0807A638
	b _0807A656
	.align 2, 0
_0807A628: .4byte gUnknown_0827D2B4
_0807A62C: .4byte 0x04000208
_0807A630: .4byte 0x0E005555
_0807A634: .4byte 0x0E002AAA
_0807A638:
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r0]
	adds r2, r7, #4
	ldr r3, [r2]
	ldrb r4, [r3]
	strb r4, [r1]
	adds r3, #1
	str r3, [r2]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r7, #8]
	subs r1, r0, #1
	str r1, [r7, #8]
	b _0807A61E
_0807A656:
	ldr r0, [r7, #0xc]
	subs r1, r0, #1
	str r1, [r7, #0xc]
	ldr r0, [r7, #4]
	subs r1, r0, #1
	str r1, [r7, #4]
	ldr r0, _0807A684
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1]
	strh r2, [r0]
	ldr r0, _0807A688
	ldr r1, [r7, #0xc]
	ldr r3, [r7, #4]
	ldrb r2, [r3]
	ldr r3, [r0]
	movs r0, #1
	bl _call_via_r3
	lsls r2, r0, #0x10
	lsrs r1, r2, #0x10
	adds r0, r1, #0
	b _0807A68C
	.align 2, 0
_0807A684: .4byte 0x04000208
_0807A688: .4byte gUnknown_03006540
_0807A68C:
	add sp, #0x14
	pop {r4, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START ProgramFlash4KB_AT
ProgramFlash4KB_AT: @ 0x0807A694
	push {r7, lr}
	sub sp, #0x50
	mov r7, sp
	str r1, [r7, #4]
	adds r1, r7, #0
	strh r0, [r1]
	adds r0, r7, #0
	ldrh r1, [r0]
	cmp r1, #0xf
	bls _0807A6B0
	ldr r0, _0807A6AC
	b _0807A7C8
	.align 2, 0
_0807A6AC: .4byte 0x000080FF
_0807A6B0:
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r1, #0
	bl SetReadFlash1
	ldr r0, _0807A6F4
	ldr r1, _0807A6F4
	ldrh r2, [r1]
	ldr r3, _0807A6F8
	adds r1, r2, #0
	ands r1, r3
	ldr r2, _0807A6FC
	ldrh r2, [r2, #0x24]
	orrs r1, r2
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #0
	ldrh r2, [r1]
	lsls r1, r2, #5
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0807A700
	ldr r1, _0807A704
	ldr r2, [r1, #0x18]
	adds r1, r2, #0
	strh r1, [r0]
_0807A6E8:
	ldr r0, _0807A700
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A708
	b _0807A79C
	.align 2, 0
_0807A6F4: .4byte 0x04000204
_0807A6F8: .4byte 0x0000FFFC
_0807A6FC: .4byte gUnknown_0827D2B4
_0807A700: .4byte gUnknown_0300654C
_0807A704: .4byte gUnknown_0827D288
_0807A708:
	adds r0, r7, #0
	adds r0, #0x4c
	movs r1, #2
	strh r1, [r0]
_0807A710:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A71C
	b _0807A754
_0807A71C:
	adds r0, r7, #0
	adds r0, #8
	ldrh r1, [r0]
	ldr r2, [r7, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl ProgramFlashSector_AT
	adds r1, r7, #0
	adds r1, #0xa
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	cmp r1, #0
	bne _0807A73E
	b _0807A754
_0807A73E:
	adds r1, r7, #0
	adds r1, #0x4c
	adds r0, r7, #0
	adds r0, #0x4c
	adds r1, r7, #0
	adds r1, #0x4c
	ldrh r2, [r1]
	subs r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _0807A710
_0807A754:
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	cmp r1, #0
	beq _0807A760
	b _0807A79C
_0807A760:
	ldr r0, _0807A794
	ldr r1, _0807A794
	ldr r2, _0807A798
	ldr r3, [r2, #0x18]
	adds r2, r3, #0
	ldrh r1, [r1]
	subs r2, r1, r2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _0807A798
	ldr r1, [r7, #4]
	ldr r0, [r0, #0x18]
	adds r1, r1, r0
	str r1, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #0
	adds r1, #8
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _0807A6E8
	.align 2, 0
_0807A794: .4byte gUnknown_0300654C
_0807A798: .4byte gUnknown_0827D2B4
_0807A79C:
	ldr r0, _0807A7C0
	ldr r1, _0807A7C0
	ldrh r2, [r1]
	ldr r3, _0807A7C4
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0xa
	ldrh r1, [r0]
	adds r0, r1, #0
	b _0807A7C8
	.align 2, 0
_0807A7C0: .4byte 0x04000204
_0807A7C4: .4byte 0x0000FFFC
_0807A7C8:
	add sp, #0x50
	pop {r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_807A7D0
sub_807A7D0: @ 0x0807A7D0
	adds r3, r0, #0
	adds r2, r3, #0
	b _0807A7DC
_0807A7D6:
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
_0807A7DC:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0807A7D6
	movs r0, #0
	strb r0, [r2]
	adds r0, r3, #0
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_807A7EC
sub_807A7EC: @ 0x0807A7EC
	adds r3, r0, #0
_0807A7EE:
	ldrb r0, [r3]
	adds r3, #1
	ldrb r2, [r1]
	adds r1, #1
	cmp r0, r2
	beq _0807A7FE
	subs r0, r0, r2
	b _0807A804
_0807A7FE:
	cmp r0, #0
	bne _0807A7EE
	movs r0, #0
_0807A804:
	bx lr
	.align 2, 0

	THUMB_FUNC_START sub_807A808
sub_807A808: @ 0x0807A808
	adds r1, r0, #0
	movs r2, #0
	b _0807A810
_0807A80E:
	adds r2, #1
_0807A810:
	ldrb r0, [r1]
	adds r1, #1
	cmp r0, #0
	bne _0807A80E
	adds r0, r2, #0
	bx lr

	THUMB_FUNC_START sub_807A81C
sub_807A81C: @ 0x0807A81C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0807A836
_0807A82C:
	strb r1, [r3]
	adds r3, #1
	subs r2, #1
	cmp r2, r0
	bne _0807A82C
_0807A836:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_807A840
sub_807A840: @ 0x0807A840
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0807A860
	adds r4, r0, #0
_0807A852:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	subs r2, #1
	cmp r2, r4
	bne _0807A852
_0807A860:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_807A868
sub_807A868: @ 0x0807A868
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x30
	adds r7, r0, #0
	bl __extendsfdf2
	ldr r3, _0807A898
	ldr r2, _0807A894
	bl __divdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r1, _0807A89C
	adds r0, r7, #0
	bl __gesf2
	cmp r0, #0
	blt _0807A8A8
	ldr r2, _0807A8A0
	ldr r3, _0807A8A4
	b _0807A8AC
	.align 2, 0
_0807A894: .4byte 0x400921FB
_0807A898: .4byte 0x54442D18
_0807A89C: .4byte 0x00000000
_0807A8A0: .4byte 0x3FE00000
_0807A8A4: .4byte 0x00000000
_0807A8A8:
	ldr r3, _0807AA0C
	ldr r2, _0807AA08
_0807A8AC:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	bl __fixdfsi
	mov r8, r0
	adds r0, r7, #0
	bl __extendsfdf2
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl __floatsidf
	ldr r2, _0807AA10
	ldr r3, _0807AA14
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
	bl __truncdfsf2
	adds r7, r0, #0
	bl sub_807AC64
	bl __extendsfdf2
	ldr r2, _0807AA18
	ldr r3, _0807AA1C
	bl __gtdf2
	cmp r0, #0
	bgt _0807A8FA
	b _0807A9F8
_0807A8FA:
	adds r0, r7, #0
	adds r1, r7, #0
	bl __mulsf3
	adds r4, r0, #0
	bl __extendsfdf2
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	adds r0, r4, #0
	bl __extendsfdf2
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl __extendsfdf2
	ldr r2, _0807AA20
	ldr r3, _0807AA24
	bl __muldf3
	ldr r2, _0807AA28
	ldr r3, _0807AA2C
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r6, #0
	adds r0, r5, #0
	bl __muldf3
	ldr r2, _0807AA30
	ldr r3, _0807AA34
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	bl __muldf3
	ldr r2, _0807AA38
	ldr r3, _0807AA3C
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	bl __muldf3
	ldr r2, _0807AA40
	ldr r3, _0807AA44
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl __muldf3
	ldr r2, _0807AA48
	ldr r3, _0807AA4C
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl __muldf3
	ldr r2, _0807AA50
	ldr r3, _0807AA54
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl __muldf3
	ldr r2, _0807AA58
	ldr r3, _0807AA5C
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldf3
	bl __truncdfsf2
	adds r1, r0, #0
	adds r0, r7, #0
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r7, #0
	bl __addsf3
	adds r7, r0, #0
_0807A9F8:
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0807AA60
	adds r0, r7, #0
	b _0807AA66
	.align 2, 0
_0807AA08: .4byte 0xBFE00000
_0807AA0C: .4byte 0x00000000
_0807AA10: .4byte 0x400921FB
_0807AA14: .4byte 0x54442D18
_0807AA18: .4byte 0x3E800000
_0807AA1C: .4byte 0x0102F4FD
_0807AA20: .4byte 0x3CE952C7
_0807AA24: .4byte 0x7030B209
_0807AA28: .4byte 0xBD6AE7F3
_0807AA2C: .4byte 0xE733B8D5
_0807AA30: .4byte 0x3DE61246
_0807AA34: .4byte 0x13A86A99
_0807AA38: .4byte 0xBE5AE645
_0807AA3C: .4byte 0x67F542DC
_0807AA40: .4byte 0x3EC71DE3
_0807AA44: .4byte 0xA556CAFE
_0807AA48: .4byte 0xBF2A01A0
_0807AA4C: .4byte 0x1A01A055
_0807AA50: .4byte 0x3F811111
_0807AA54: .4byte 0x11111051
_0807AA58: .4byte 0xBFC55555
_0807AA5C: .4byte 0x55555A06
_0807AA60:
	adds r0, r7, #0
	bl __negsf2
_0807AA66:
	add sp, #0x30
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_807AA74
sub_807AA74: @ 0x0807AA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r0, #0
	bl __extendsfdf2
	ldr r3, _0807AAA0
	ldr r2, _0807AA9C
	bl __divdf3
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r1, _0807AAA4
	adds r0, r4, #0
	bl __gesf2
	cmp r0, #0
	blt _0807AAB0
	ldr r2, _0807AAA8
	ldr r3, _0807AAAC
	b _0807AAB4
	.align 2, 0
_0807AA9C: .4byte 0x400921FB
_0807AAA0: .4byte 0x54442D18
_0807AAA4: .4byte 0x00000000
_0807AAA8: .4byte 0x3FE00000
_0807AAAC: .4byte 0x00000000
_0807AAB0:
	ldr r3, _0807AC04
	ldr r2, _0807AC00
_0807AAB4:
	adds r1, r6, #0
	adds r0, r5, #0
	bl __adddf3
	bl __fixdfsi
	adds r7, r0, #0
	adds r0, r4, #0
	bl __extendsfdf2
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	bl __floatsidf
	ldr r2, _0807AC08
	ldr r3, _0807AC0C
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __subdf3
	bl __truncdfsf2
	adds r4, r0, #0
	adds r1, r4, #0
	bl __mulsf3
	adds r4, r0, #0
	adds r1, r4, #0
	bl __mulsf3
	bl __extendsfdf2
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	adds r0, r4, #0
	bl __extendsfdf2
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	adds r0, r4, #0
	bl __extendsfdf2
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl __extendsfdf2
	ldr r2, _0807AC10
	ldr r3, _0807AC14
	bl __muldf3
	ldr r2, _0807AC18
	ldr r3, _0807AC1C
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r6, #0
	adds r0, r5, #0
	bl __muldf3
	ldr r2, _0807AC20
	ldr r3, _0807AC24
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	bl __muldf3
	ldr r2, _0807AC28
	ldr r3, _0807AC2C
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl __muldf3
	ldr r2, _0807AC30
	ldr r3, _0807AC34
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl __muldf3
	ldr r2, _0807AC38
	ldr r3, _0807AC3C
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl __muldf3
	ldr r2, _0807AC40
	ldr r3, _0807AC44
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __muldf3
	bl __truncdfsf2
	adds r6, r0, #0
	ldr r1, _0807AC48
	adds r0, r4, #0
	bl __mulsf3
	bl __extendsfdf2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, _0807AC4C
	ldr r1, _0807AC50
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	bl __extendsfdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	bl __truncdfsf2
	adds r4, r0, #0
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	bne _0807AC54
	adds r0, r4, #0
	b _0807AC5A
	.align 2, 0
_0807AC00: .4byte 0xBFE00000
_0807AC04: .4byte 0x00000000
_0807AC08: .4byte 0x400921FB
_0807AC0C: .4byte 0x54442D18
_0807AC10: .4byte 0x3D2AE7F3
_0807AC14: .4byte 0xE733B5BD
_0807AC18: .4byte 0xBDA93974
_0807AC1C: .4byte 0xA8C07D48
_0807AC20: .4byte 0x3E21EED8
_0807AC24: .4byte 0xEFF8DA63
_0807AC28: .4byte 0xBE927E4F
_0807AC2C: .4byte 0xB778A265
_0807AC30: .4byte 0x3EFA01A0
_0807AC34: .4byte 0x1A01A336
_0807AC38: .4byte 0xBF56C16C
_0807AC3C: .4byte 0x16C16E17
_0807AC40: .4byte 0x3FA55555
_0807AC44: .4byte 0x55555736
_0807AC48: .4byte 0x3F000000
_0807AC4C: .4byte 0x3FF00000
_0807AC50: .4byte 0x00000000
_0807AC54:
	adds r0, r4, #0
	bl __negsf2
_0807AC5A:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	THUMB_FUNC_START sub_807AC64
sub_807AC64: @ 0x0807AC64
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807AC78
	bl __ltsf2
	cmp r0, #0
	blt _0807AC7C
	adds r0, r4, #0
	b _0807AC82
	.align 2, 0
_0807AC78: .4byte 0x00000000
_0807AC7C:
	adds r0, r4, #0
	bl __negsf2
_0807AC82:
	pop {r4}
	pop {r1}
	bx r1
