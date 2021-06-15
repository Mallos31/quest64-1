.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osCreateThread
/* 346E0 80033AE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 346E4 80033AE4 AFA40028 */  sw         $a0, 0x28($sp)
/* 346E8 80033AE8 AFA5002C */  sw         $a1, 0x2c($sp)
/* 346EC 80033AEC 8FAE002C */  lw         $t6, 0x2c($sp)
/* 346F0 80033AF0 8FAF0028 */  lw         $t7, 0x28($sp)
/* 346F4 80033AF4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 346F8 80033AF8 AFA60030 */  sw         $a2, 0x30($sp)
/* 346FC 80033AFC AFA70034 */  sw         $a3, 0x34($sp)
/* 34700 80033B00 AFB00018 */  sw         $s0, 0x18($sp)
/* 34704 80033B04 ADEE0014 */  sw         $t6, 0x14($t7)
/* 34708 80033B08 8FB90028 */  lw         $t9, 0x28($sp)
/* 3470C 80033B0C 8FB8003C */  lw         $t8, 0x3c($sp)
/* 34710 80033B10 AF380004 */  sw         $t8, 4($t9)
/* 34714 80033B14 8FA80028 */  lw         $t0, 0x28($sp)
/* 34718 80033B18 AD000000 */  sw         $zero, ($t0)
/* 3471C 80033B1C 8FA90028 */  lw         $t1, 0x28($sp)
/* 34720 80033B20 AD200008 */  sw         $zero, 8($t1)
/* 34724 80033B24 8FAB0028 */  lw         $t3, 0x28($sp)
/* 34728 80033B28 8FAA0030 */  lw         $t2, 0x30($sp)
/* 3472C 80033B2C AD6A011C */  sw         $t2, 0x11c($t3)
/* 34730 80033B30 8FAC0034 */  lw         $t4, 0x34($sp)
/* 34734 80033B34 8FAD0028 */  lw         $t5, 0x28($sp)
/* 34738 80033B38 01807825 */  or         $t7, $t4, $zero
/* 3473C 80033B3C 000C77C3 */  sra        $t6, $t4, 0x1f
/* 34740 80033B40 ADAE0038 */  sw         $t6, 0x38($t5)
/* 34744 80033B44 ADAF003C */  sw         $t7, 0x3c($t5)
/* 34748 80033B48 8FB80038 */  lw         $t8, 0x38($sp)
/* 3474C 80033B4C 8FB90028 */  lw         $t9, 0x28($sp)
/* 34750 80033B50 3C0C8004 */  lui        $t4, 0x8004
/* 34754 80033B54 03004825 */  or         $t1, $t8, $zero
/* 34758 80033B58 2D210010 */  sltiu      $at, $t1, 0x10
/* 3475C 80033B5C 001847C3 */  sra        $t0, $t8, 0x1f
/* 34760 80033B60 01015023 */  subu       $t2, $t0, $at
/* 34764 80033B64 252BFFF0 */  addiu      $t3, $t1, -0x10
/* 34768 80033B68 AF2B00F4 */  sw         $t3, 0xf4($t9)
/* 3476C 80033B6C AF2A00F0 */  sw         $t2, 0xf0($t9)
/* 34770 80033B70 8FAD0028 */  lw         $t5, 0x28($sp)
/* 34774 80033B74 258CD360 */  addiu      $t4, $t4, -0x2ca0
/* 34778 80033B78 01807825 */  or         $t7, $t4, $zero
/* 3477C 80033B7C 000C77C3 */  sra        $t6, $t4, 0x1f
/* 34780 80033B80 ADAE0100 */  sw         $t6, 0x100($t5)
/* 34784 80033B84 ADAF0104 */  sw         $t7, 0x104($t5)
/* 34788 80033B88 8FA90028 */  lw         $t1, 0x28($sp)
/* 3478C 80033B8C 3C18003F */  lui        $t8, 0x3f
/* 34790 80033B90 3718FF01 */  ori        $t8, $t8, 0xff01
/* 34794 80033B94 AFB80020 */  sw         $t8, 0x20($sp)
/* 34798 80033B98 3408FF03 */  ori        $t0, $zero, 0xff03
/* 3479C 80033B9C AD280118 */  sw         $t0, 0x118($t1)
/* 347A0 80033BA0 8FAA0020 */  lw         $t2, 0x20($sp)
/* 347A4 80033BA4 8FAC0028 */  lw         $t4, 0x28($sp)
/* 347A8 80033BA8 3C01003F */  lui        $at, 0x3f
/* 347AC 80033BAC 01415824 */  and        $t3, $t2, $at
/* 347B0 80033BB0 000BCC02 */  srl        $t9, $t3, 0x10
/* 347B4 80033BB4 AD990128 */  sw         $t9, 0x128($t4)
/* 347B8 80033BB8 8FAF0028 */  lw         $t7, 0x28($sp)
/* 347BC 80033BBC 3C0E0100 */  lui        $t6, 0x100
/* 347C0 80033BC0 35CE0800 */  ori        $t6, $t6, 0x800
/* 347C4 80033BC4 ADEE012C */  sw         $t6, 0x12c($t7)
/* 347C8 80033BC8 8FAD0028 */  lw         $t5, 0x28($sp)
/* 347CC 80033BCC 24180001 */  addiu      $t8, $zero, 1
/* 347D0 80033BD0 ADA00018 */  sw         $zero, 0x18($t5)
/* 347D4 80033BD4 8FA80028 */  lw         $t0, 0x28($sp)
/* 347D8 80033BD8 A5180010 */  sh         $t8, 0x10($t0)
/* 347DC 80033BDC 8FA90028 */  lw         $t1, 0x28($sp)
/* 347E0 80033BE0 0C00F534 */  jal        __osDisableInt
/* 347E4 80033BE4 A5200012 */   sh        $zero, 0x12($t1)
/* 347E8 80033BE8 3C0A8007 */  lui        $t2, %hi(osActiveQueue)
/* 347EC 80033BEC 8D4A09FC */  lw         $t2, %lo(osActiveQueue)($t2)
/* 347F0 80033BF0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 347F4 80033BF4 00408025 */  or         $s0, $v0, $zero
/* 347F8 80033BF8 3C018007 */  lui        $at, %hi(osActiveQueue)
/* 347FC 80033BFC AD6A000C */  sw         $t2, 0xc($t3)
/* 34800 80033C00 8FB90028 */  lw         $t9, 0x28($sp)
/* 34804 80033C04 02002025 */  or         $a0, $s0, $zero
/* 34808 80033C08 0C00F53C */  jal        __osRestoreInt
/* 3480C 80033C0C AC3909FC */   sw        $t9, %lo(osActiveQueue)($at)
/* 34810 80033C10 8FBF001C */  lw         $ra, 0x1c($sp)
/* 34814 80033C14 8FB00018 */  lw         $s0, 0x18($sp)
/* 34818 80033C18 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3481C 80033C1C 03E00008 */  jr         $ra
/* 34820 80033C20 00000000 */   nop
/* 34824 80033C24 00000000 */  nop
/* 34828 80033C28 00000000 */  nop
/* 3482C 80033C2C 00000000 */  nop
