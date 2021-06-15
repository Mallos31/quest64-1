.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osResetGlobalIntMask
/* 48730 80047B30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 48734 80047B34 AFBF001C */  sw         $ra, 0x1c($sp)
/* 48738 80047B38 AFA40028 */  sw         $a0, 0x28($sp)
/* 4873C 80047B3C 0C00F534 */  jal        __osDisableInt
/* 48740 80047B40 AFB00018 */   sw        $s0, 0x18($sp)
/* 48744 80047B44 8FAF0028 */  lw         $t7, 0x28($sp)
/* 48748 80047B48 3C0E8007 */  lui        $t6, %hi(__OSGlobalIntMask)
/* 4874C 80047B4C 8DCEF410 */  lw         $t6, %lo(__OSGlobalIntMask)($t6)
/* 48750 80047B50 2401FBFE */  addiu      $at, $zero, -0x402
/* 48754 80047B54 01E1C024 */  and        $t8, $t7, $at
/* 48758 80047B58 0300C827 */  not        $t9, $t8
/* 4875C 80047B5C 00408025 */  or         $s0, $v0, $zero
/* 48760 80047B60 3C018007 */  lui        $at, %hi(__OSGlobalIntMask)
/* 48764 80047B64 01D94024 */  and        $t0, $t6, $t9
/* 48768 80047B68 AC28F410 */  sw         $t0, %lo(__OSGlobalIntMask)($at)
/* 4876C 80047B6C 0C00F53C */  jal        __osRestoreInt
/* 48770 80047B70 02002025 */   or        $a0, $s0, $zero
/* 48774 80047B74 8FBF001C */  lw         $ra, 0x1c($sp)
/* 48778 80047B78 8FB00018 */  lw         $s0, 0x18($sp)
/* 4877C 80047B7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 48780 80047B80 03E00008 */  jr         $ra
/* 48784 80047B84 00000000 */   nop
/* 48788 80047B88 00000000 */  nop
/* 4878C 80047B8C 00000000 */  nop
