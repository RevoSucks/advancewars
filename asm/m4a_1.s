    .syntax unified
    .include "asm/macros.inc"

	THUMB_FUNC_START umul3232H32
umul3232H32: @ 0x08077540
	add r2, pc, #0x0
	bx r2
_08077544:
	.byte 0x90, 0x21, 0x83, 0xE0, 0x00, 0x00, 0x83, 0xE2, 0x1E, 0xFF, 0x2F, 0xE1

	THUMB_FUNC_START SoundMain
SoundMain: @ 0x08077550
	ldr r0, _080775BC
	ldr r0, [r0]
	ldr r2, _080775C0
	ldr r3, [r0]
	cmp r2, r3
	beq _0807755E
	bx lr
_0807755E:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _08077582
	ldr r2, _080775C8
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _08077580
	adds r2, #0xe4
_08077580:
	adds r1, r1, r2
_08077582:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _08077592
	ldr r0, [r0, #0x24]
	bl .call_r3
	ldr r0, [sp, #0x18]
_08077592:
	ldr r3, [r0, #0x28]
	bl .call_r3
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _080775CC
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _080775B2
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_080775B2:
	str r5, [sp, #8]
	ldr r6, _080775D0
	ldr r3, _080775C4
	bx r3
	.align 2, 0
_080775BC: .4byte 0x03007FF0
_080775C0: .4byte 0x68736D53
_080775C4: .4byte gUnknown_03000949
_080775C8: .4byte 0x04000006
_080775CC: .4byte 0x00000350
_080775D0: .4byte 0x00000630

	THUMB_FUNC_START SoundMainRAM
SoundMainRAM: @ 0x080775D4
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq _08077634
	add r1, pc, #0x4
	bx r1
	.align 2, 0
_080775E0:
	.byte 0x02, 0x00, 0x54, 0xE3, 0x35, 0x7E, 0x80, 0x02, 0x08, 0x70, 0x85, 0x10, 0x08, 0x40, 0xA0, 0xE1
	.byte 0xD6, 0x00, 0x95, 0xE1, 0xD0, 0x10, 0xD5, 0xE1, 0x01, 0x00, 0x80, 0xE0, 0xD6, 0x10, 0x97, 0xE1
	.byte 0x01, 0x00, 0x80, 0xE0, 0xD1, 0x10, 0xD7, 0xE0, 0x01, 0x00, 0x80, 0xE0, 0x90, 0x03, 0x01, 0xE0
	.byte 0xC1, 0x04, 0xA0, 0xE1, 0x80, 0x00, 0x10, 0xE3, 0x01, 0x00, 0x80, 0x12, 0x06, 0x00, 0xC5, 0xE7
	.byte 0x01, 0x00, 0xC5, 0xE4, 0x01, 0x40, 0x54, 0xE2, 0xF0, 0xFF, 0xFF, 0xCA, 0x2F, 0x00, 0x8F, 0xE2
	.byte 0x10, 0xFF, 0x2F, 0xE1
_08077634:
	movs r0, #0
	mov r1, r8
	adds r6, r6, r5
	lsrs r1, r1, #3
	blo _08077642
	stm r5!, {r0}
	stm r6!, {r0}
_08077642:
	lsrs r1, r1, #1
	blo _0807764E
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
_0807764E:
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	stm r5!, {r0}
	stm r6!, {r0}
	subs r1, #1
	bgt _0807764E
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_0807766C:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0807768C
	ldr r1, _08077688
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _08077680
	adds r1, #0xe4
_08077680:
	cmp r1, r0
	blo _0807768C
	b _0807795E
	.align 2, 0
_08077688: .4byte 0x04000006
_0807768C:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _08077696
	b _08077954
_08077696:
	movs r0, #0x80
	tst r0, r6
	beq _080776C6
	movs r0, #0x40
	tst r0, r6
	bne _080776D6
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _0807771E
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _0807771E
_080776C6:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _080776DC
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _0807772C
_080776D6:
	movs r0, #0
	strb r0, [r4]
	b _08077954
_080776DC:
	movs r0, #0x40
	tst r0, r6
	beq _080776FC
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _0807772C
_080776EE:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080776D6
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _0807772C
_080776FC:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _0807771A
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _0807772C
	adds r5, r0, #0
	beq _080776EE
	subs r6, #1
	strb r6, [r4]
	b _0807772C
_0807771A:
	cmp r2, #3
	bne _0807772C
_0807771E:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _0807772C
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_0807772C:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #3]
	muls r0, r5, r0
	lsrs r0, r0, #8
	strb r0, [r4, #0xb]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _08077760
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_08077760:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	add r0, pc, #0x4
	bx r0
	.align 2, 0
_0807776C:
	.byte 0x00, 0x80, 0x8D, 0xE5
	.byte 0x0A, 0xA0, 0xD4, 0xE5, 0x0B, 0xB0, 0xD4, 0xE5, 0x0A, 0xA8, 0xA0, 0xE1, 0x0B, 0xB8, 0xA0, 0xE1
	.byte 0x01, 0x00, 0xD4, 0xE5, 0x08, 0x00, 0x10, 0xE3, 0x47, 0x00, 0x00, 0x0A, 0x04, 0x00, 0x52, 0xE3
	.byte 0x19, 0x00, 0x00, 0xDA, 0x08, 0x20, 0x52, 0xE0, 0x00, 0xE0, 0xA0, 0xC3, 0x05, 0x00, 0x00, 0xCA
	.byte 0x08, 0xE0, 0xA0, 0xE1, 0x08, 0x20, 0x82, 0xE0, 0x04, 0x80, 0x42, 0xE2, 0x08, 0xE0, 0x4E, 0xE0
	.byte 0x03, 0x20, 0x12, 0xE2, 0x04, 0x20, 0xA0, 0x03, 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5
	.byte 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x66, 0x64, 0x81, 0xE0
	.byte 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x67, 0x74, 0x81, 0xE0, 0x01, 0x51, 0x95, 0xE2
	.byte 0xF6, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2
	.byte 0xF0, 0xFF, 0xFF, 0xCA, 0x0E, 0x80, 0x98, 0xE0, 0x50, 0x00, 0x00, 0x0A, 0x00, 0x60, 0x95, 0xE5
	.byte 0x30, 0x76, 0x95, 0xE5, 0xD1, 0x00, 0xD3, 0xE0, 0x9A, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3
	.byte 0x66, 0x64, 0x81, 0xE0, 0x9B, 0x00, 0x01, 0xE0, 0xFF, 0x18, 0xC1, 0xE3, 0x67, 0x74, 0x81, 0xE0
	.byte 0x01, 0x20, 0x52, 0xE2, 0x12, 0x00, 0x00, 0x0A, 0x01, 0x51, 0x95, 0xE2, 0xF4, 0xFF, 0xFF, 0x3A
	.byte 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2, 0xD2, 0xFF, 0xFF, 0xCA
	.byte 0x3E, 0x00, 0x00, 0xEA, 0x18, 0x00, 0x9D, 0xE5, 0x00, 0x00, 0x50, 0xE3, 0x05, 0x00, 0x00, 0x0A
	.byte 0x14, 0x30, 0x9D, 0xE5, 0x00, 0x90, 0x62, 0xE2, 0x02, 0x20, 0x90, 0xE0, 0x2B, 0x00, 0x00, 0xCA
	.byte 0x00, 0x90, 0x49, 0xE0, 0xFB, 0xFF, 0xFF, 0xEA, 0x10, 0x10, 0xBD, 0xE8, 0x00, 0x20, 0xA0, 0xE3
	.byte 0x03, 0x00, 0x00, 0xEA, 0x10, 0x20, 0x9D, 0xE5, 0x00, 0x00, 0x52, 0xE3, 0x0C, 0x30, 0x9D, 0x15
	.byte 0xE8, 0xFF, 0xFF, 0x1A, 0x00, 0x20, 0xC4, 0xE5, 0x25, 0x0F, 0xA0, 0xE1, 0x03, 0x51, 0xC5, 0xE3
	.byte 0x03, 0x00, 0x60, 0xE2, 0x80, 0x01, 0xA0, 0xE1, 0x76, 0x60, 0xA0, 0xE1, 0x77, 0x70, 0xA0, 0xE1
	.byte 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x26, 0x00, 0x00, 0xEA, 0x10, 0x10, 0x2D, 0xE9
	.byte 0x1C, 0xE0, 0x94, 0xE5, 0x20, 0x10, 0x94, 0xE5, 0x9C, 0x01, 0x04, 0xE0, 0xD0, 0x00, 0xD3, 0xE1
	.byte 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0, 0x00, 0x60, 0x95, 0xE5, 0x30, 0x76, 0x95, 0xE5
	.byte 0x9E, 0x01, 0x09, 0xE0, 0xC9, 0x9B, 0x80, 0xE0, 0x9A, 0x09, 0x0C, 0xE0, 0xFF, 0xC8, 0xCC, 0xE3
	.byte 0x66, 0x64, 0x8C, 0xE0, 0x9B, 0x09, 0x0C, 0xE0, 0xFF, 0xC8, 0xCC, 0xE3, 0x67, 0x74, 0x8C, 0xE0
	.byte 0x04, 0xE0, 0x8E, 0xE0, 0xAE, 0x9B, 0xB0, 0xE1, 0x07, 0x00, 0x00, 0x0A, 0xFE, 0xE5, 0xCE, 0xE3
	.byte 0x09, 0x20, 0x52, 0xE0, 0xCE, 0xFF, 0xFF, 0xDA, 0x01, 0x90, 0x59, 0xE2, 0x01, 0x00, 0x80, 0x00
	.byte 0xD9, 0x00, 0xB3, 0x11, 0xD1, 0x10, 0xF3, 0xE1, 0x00, 0x10, 0x41, 0xE0, 0x01, 0x51, 0x95, 0xE2
	.byte 0xEA, 0xFF, 0xFF, 0x3A, 0x30, 0x76, 0x85, 0xE5, 0x04, 0x60, 0x85, 0xE4, 0x04, 0x80, 0x58, 0xE2
	.byte 0xE4, 0xFF, 0xFF, 0xCA, 0x01, 0x30, 0x43, 0xE2, 0x10, 0x10, 0xBD, 0xE8, 0x1C, 0xE0, 0x84, 0xE5
	.byte 0x18, 0x20, 0x84, 0xE5, 0x28, 0x30, 0x84, 0xE5, 0x00, 0x80, 0x9D, 0xE5, 0x01, 0x00, 0x8F, 0xE2
	.byte 0x10, 0xFF, 0x2F, 0xE1
_08077954:
	ldr r0, [sp, #4]
	subs r0, #1
	ble _0807795E
	adds r4, #0x40
	b _0807766C
_0807795E:
	ldr r0, [sp, #0x18]
	ldr r3, _08077974
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start .call_r3
.call_r3: @ 0x08077972
	bx r3
	.align 2, 0
_08077974: .4byte 0x68736D53

	THUMB_FUNC_START SoundMainBTM
SoundMainBTM: @ 0x08077978
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0

	THUMB_FUNC_START RealClearChain
RealClearChain: @ 0x08077990
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080779AE
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080779A2
	str r1, [r2, #0x34]
	b _080779A4
_080779A2:
	str r1, [r3, #0x20]
_080779A4:
	cmp r1, #0
	beq _080779AA
	str r2, [r1, #0x30]
_080779AA:
	movs r1, #0
	str r1, [r0, #0x2c]
_080779AE:
	bx lr
ply_fine:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _080779D4
_080779BA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _080779C8
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_080779C8:
	adds r0, r4, #0
	bl RealClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _080779BA
_080779D4:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x080779E0
	mov ip, lr
	movs r1, #0x24
	ldr r2, _08077A10
_080779E6:
	ldr r3, [r2]
	bl chk_adr_r2
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080779E6
	bx ip
	.align 2, 0

	THUMB_FUNC_START ldrb_r3_r2
ldrb_r3_r2: @ 0x080779F8
	ldrb r3, [r2]
chk_adr_r2:
	push {r0}
	lsrs r0, r2, #0x19
	bne _08077A0C
	ldr r0, _08077A10
	cmp r2, r0
	blo _08077A0A
	lsrs r0, r2, #0xe
	beq _08077A0C
_08077A0A:
	movs r3, #0
_08077A0C:
	pop {r0}
	bx lr
	.align 2, 0
_08077A10: .4byte gUnknown_0814258C

	THUMB_FUNC_START ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x08077A14
	ldr r2, [r1, #0x40]

	non_word_aligned_thumb_func_start sub_08077A16
sub_08077A16: @ 0x08077A16
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b chk_adr_r2
	.align 2, 0
ply_goto:
	push {lr}
_08077A22:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0

	THUMB_FUNC_START ply_patt
ply_patt: @ 0x08077A40
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _08077A58
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_08077A58:
	b ply_fine
	.align 2, 0

	THUMB_FUNC_START ply_pend
ply_pend: @ 0x08077A5C
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _08077A6E
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_08077A6E:
	bx lr

	THUMB_FUNC_START ply_rept
ply_rept: @ 0x08077A70
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _08077A80
	adds r2, #1
	str r2, [r1, #0x40]
	b _08077A22
_08077A80:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _08077A92
	b _08077A22
_08077A92:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0

	THUMB_FUNC_START ply_prio
ply_prio: @ 0x08077AA0
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0

	THUMB_FUNC_START ply_tempo
ply_tempo: @ 0x08077AAC
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip

	THUMB_FUNC_START ply_keysh
ply_keysh: @ 0x08077AC0
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	THUMB_FUNC_START ply_voice
ply_voice: @ 0x08077AD4
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl chk_adr_r2
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl chk_adr_r2
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl chk_adr_r2
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0

	THUMB_FUNC_START ply_vol
ply_vol: @ 0x08077B04
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	THUMB_FUNC_START ply_pan
ply_pan: @ 0x08077B18
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START ply_bend
ply_bend: @ 0x08077B2C
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START ply_bendr
ply_bendr: @ 0x08077B40
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0

	THUMB_FUNC_START ply_lfodl
ply_lfodl: @ 0x08077B54
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0

	THUMB_FUNC_START ply_modt
ply_modt: @ 0x08077B60
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _08077B76
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_08077B76:
	bx ip

	THUMB_FUNC_START ply_tune
ply_tune: @ 0x08077B78
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip

	THUMB_FUNC_START ply_port
ply_port: @ 0x08077B8C
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _08077BA0
	adds r0, r0, r3
	bl sub_08077A16

	THUMB_FUNC_START sub_8077B9C
sub_8077B9C: @ 0x08077B9C
	strb r3, [r0]
	bx ip
	.align 2, 0
_08077BA0: .4byte 0x04000060

	THUMB_FUNC_START SoundVSync_rev01
SoundVSync_rev01: @ 0x08077BA4
	ldr r0, _08077E48
	ldr r0, [r0]
	ldr r2, _08077E4C
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _08077BE4
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _08077BE4
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _08077BE8
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _08077BCA
	ldr r1, _08077BEC
	str r1, [r2, #8]
_08077BCA:
	ldr r1, [r2, #0x14]
	lsls r1, r1, #7
	blo _08077BD4
	ldr r1, _08077BEC
	str r1, [r2, #0x14]
_08077BD4:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	strh r1, [r2, #0x16]
_08077BE4:
	bx lr
	.align 2, 0
_08077BE8: .4byte 0x040000BC
_08077BEC: .4byte 0x84400004

	THUMB_FUNC_START MPlayMain
MPlayMain: @ 0x08077BF0
	ldr r2, _08077E4C
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _08077BFA
	bx lr
_08077BFA:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _08077C0C
	ldr r0, [r0, #0x3c]
	bl .call_r3_rev
_08077C0C:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _08077C24
	b _08077E30
_08077C24:
	ldr r0, _08077E48
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _08077D80
_08077C38:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_08077C40:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _08077C4A
	b _08077D5C
_08077C4A:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08077C7E
_08077C56:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08077C72
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _08077C78
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _08077C78
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _08077C78
_08077C72:
	adds r0, r4, #0
	bl ClearChain
_08077C78:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08077C56
_08077C7E:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _08077CFC
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _08077CFC
_08077CA4:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _08077CB0
	ldrb r1, [r5, #7]
	b _08077CBA
_08077CB0:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _08077CBA
	strb r1, [r5, #7]
_08077CBA:
	cmp r1, #0xcf
	blo _08077CD0
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl .call_r3_rev
	b _08077CFC
_08077CD0:
	cmp r1, #0xb0
	bls _08077CF2
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl .call_r3_rev
	ldrb r0, [r5]
	cmp r0, #0
	beq _08077D58
	b _08077CFC
_08077CF2:
	ldr r0, _08077E44
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_08077CFC:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08077CA4
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _08077D58
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _08077D58
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08077D1E
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _08077D58
_08077D1E:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _08077D32
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _08077D36
_08077D32:
	movs r0, #0x80
	subs r2, r0, r1
_08077D36:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _08077D58
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _08077D52
	movs r1, #0xc
	b _08077D54
_08077D52:
	movs r1, #3
_08077D54:
	orrs r0, r1
	strb r0, [r5]
_08077D58:
	mov r3, sl
	mov r4, fp
_08077D5C:
	subs r6, #1
	ble _08077D68
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _08077C40
_08077D68:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _08077D7A
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _08077E30
_08077D7A:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_08077D80:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _08077D88
	b _08077C38
_08077D88:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_08077D8C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _08077E26
	movs r1, #0xf
	tst r1, r0
	beq _08077E26
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08077E1C
_08077DAA:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _08077DBA
	adds r0, r4, #0
	bl ClearChain
	b _08077E16
_08077DBA:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _08077DD8
	bl ChnVolSetAsm
	cmp r6, #0
	beq _08077DD8
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08077DD8:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _08077E16
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _08077DEC
	movs r2, #0
_08077DEC:
	cmp r6, #0
	beq _08077E0A
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl .call_r3_rev
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _08077E16
_08077E0A:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_08077E16:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08077DAA
_08077E1C:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_08077E26:
	subs r2, #1
	ble _08077E30
	movs r0, #0x50
	adds r5, r5, r0
	bgt _08077D8C
_08077E30:
	ldr r0, _08077E4C
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

	non_word_aligned_thumb_func_start .call_r3_rev
.call_r3_rev: @ 0x08077E40
	bx r3
	.align 2, 0
_08077E44: .4byte gUnknown_08142800
_08077E48: .4byte 0x03007FF0
_08077E4C: .4byte 0x68736D53

	THUMB_FUNC_START TrackStop
TrackStop: @ 0x08077E50
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _08077E88
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _08077E86
	movs r6, #0
_08077E64:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08077E7E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _08077E7C
	ldr r3, _08077E90
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl .call_r3_rev
_08077E7C:
	strb r6, [r4]
_08077E7E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _08077E64
_08077E86:
	str r4, [r5, #0x20]
_08077E88:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08077E90: .4byte 0x03007FF0

	THUMB_FUNC_START ChnVolSetAsm
ChnVolSetAsm: @ 0x08077E94
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08077EAC
	movs r0, #0xff
_08077EAC:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _08077EC0
	movs r0, #0xff
_08077EC0:
	strb r0, [r4, #3]
	bx lr

	THUMB_FUNC_START ply_note
ply_note: @ 0x08077EC4
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _080780BC
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _080780C0
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08077F0A
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08077F08
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _08077F08
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_08077F08:
	str r3, [r5, #0x40]
_08077F0A:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _08077F5C
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _08077F2A
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08077F2C
_08077F2A:
	adds r0, r3, #0
_08077F2C:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _08077F44
	b _080780AA
_08077F44:
	movs r0, #0x80
	tst r0, r2
	beq _08077F60
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _08077F58
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_08077F58:
	ldrb r3, [r6, #1]
	b _08077F60
_08077F5C:
	mov sb, r4
	ldrb r3, [r5, #5]
_08077F60:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _08077F70
	movs r0, #0xff
_08077F70:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _08077FB0
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _08077F88
	b _080780AA
_08077F88:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08078004
	movs r0, #0x40
	tst r0, r1
	bne _08078004
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _08078004
	beq _08077FA8
	b _080780AA
_08077FA8:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _08078004
	b _080780AA
_08077FB0:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_08077FBE:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _08078004
	movs r0, #0x40
	tst r0, r1
	beq _08077FD8
	cmp r2, #0
	bne _08077FDC
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _08077FF6
_08077FD8:
	cmp r2, #0
	bne _08077FF8
_08077FDC:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _08077FE8
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _08077FF6
_08077FE8:
	bhi _08077FF8
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _08077FF4
	adds r7, r0, #0
	b _08077FF6
_08077FF4:
	blo _08077FF8
_08077FF6:
	mov r8, r4
_08077FF8:
	adds r4, #0x40
	subs r3, #1
	bgt _08077FBE
	mov r4, r8
	cmp r4, #0
	beq _080780AA
_08078004:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _08078018
	str r4, [r3, #0x30]
_08078018:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0807802A
	adds r1, r5, #0
	bl clear_modM
_0807802A:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _08078064
	movs r3, #0
_08078064:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _08078092
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0807807E
	movs r0, #0x70
	tst r0, r1
	bne _08078080
_0807807E:
	movs r1, #8
_08078080:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl .call_r3_rev
	b _0807809C
_08078092:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_0807809C:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_080780AA:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_080780BC: .4byte 0x03007FF0
_080780C0: .4byte gUnknown_08142800

	THUMB_FUNC_START ply_endtie
ply_endtie: @ 0x080780C4
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _080780D6
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _080780D8
_080780D6:
	ldrb r3, [r1, #5]
_080780D8:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _08078100
	movs r4, #0x83
	movs r5, #0x40
_080780E2:
	ldrb r2, [r1]
	tst r2, r4
	beq _080780FA
	tst r2, r5
	bne _080780FA
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _080780FA
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _08078100
_080780FA:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _080780E2
_08078100:
	pop {r4, r5}
	bx lr

	THUMB_FUNC_START clear_modM
clear_modM: @ 0x08078104
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _08078114
	movs r2, #0xc
	b _08078116
_08078114:
	movs r2, #3
_08078116:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0

	THUMB_FUNC_START ld_r3_tp_adr_i_rev
ld_r3_tp_adr_i_rev: @ 0x08078120
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0

	THUMB_FUNC_START ply_lfos
ply_lfos: @ 0x0807812C
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0807813C
	bl clear_modM
_0807813C:
	bx ip
	.align 2, 0

	THUMB_FUNC_START ply_mod
ply_mod: @ 0x08078140
	mov ip, lr
	bl ld_r3_tp_adr_i_rev
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _08078150
	bl clear_modM
_08078150:
	bx ip
	.align 2, 0
