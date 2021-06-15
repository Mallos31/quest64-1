.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osDestroyThread
/* 48630 80047A30 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 48634 80047A34 AFBF0024 */  sw         $ra, 0x24($sp)
/* 48638 80047A38 AFA40038 */  sw         $a0, 0x38($sp)
/* 4863C 80047A3C AFB20020 */  sw         $s2, 0x20($sp)
/* 48640 80047A40 AFB1001C */  sw         $s1, 0x1c($sp)
/* 48644 80047A44 0C00F534 */  jal        __osDisableInt
/* 48648 80047A48 AFB00018 */   sw        $s0, 0x18($sp)
/* 4864C 80047A4C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 48650 80047A50 00408025 */  or         $s0, $v0, $zero
/* 48654 80047A54 15C00005 */  bnez       $t6, .L80047A6C
/* 48658 80047A58 00000000 */   nop
/* 4865C 80047A5C 3C0F8007 */  lui        $t7, %hi(__osRunningThread)
/* 48660 80047A60 8DEF0A00 */  lw         $t7, %lo(__osRunningThread)($t7)
/* 48664 80047A64 10000009 */  b          .L80047A8C
/* 48668 80047A68 AFAF0038 */   sw        $t7, 0x38($sp)
.L80047A6C:
/* 4866C 80047A6C 8FB80038 */  lw         $t8, 0x38($sp)
/* 48670 80047A70 24010001 */  addiu      $at, $zero, 1
/* 48674 80047A74 97190010 */  lhu        $t9, 0x10($t8)
/* 48678 80047A78 13210004 */  beq        $t9, $at, .L80047A8C
/* 4867C 80047A7C 00000000 */   nop
/* 48680 80047A80 8F040008 */  lw         $a0, 8($t8)
/* 48684 80047A84 0C00F544 */  jal        __osDequeueThread
/* 48688 80047A88 03002825 */   or        $a1, $t8, $zero
.L80047A8C:
/* 4868C 80047A8C 3C088007 */  lui        $t0, %hi(osActiveQueue)
/* 48690 80047A90 8D0809FC */  lw         $t0, %lo(osActiveQueue)($t0)
/* 48694 80047A94 8FA90038 */  lw         $t1, 0x38($sp)
/* 48698 80047A98 15090005 */  bne        $t0, $t1, .L80047AB0
/* 4869C 80047A9C 00000000 */   nop
/* 486A0 80047AA0 8D0A000C */  lw         $t2, 0xc($t0)
/* 486A4 80047AA4 3C018007 */  lui        $at, %hi(osActiveQueue)
/* 486A8 80047AA8 10000010 */  b          .L80047AEC
/* 486AC 80047AAC AC2A09FC */   sw        $t2, %lo(osActiveQueue)($at)
.L80047AB0:
/* 486B0 80047AB0 3C118007 */  lui        $s1, %hi(osActiveQueue)
/* 486B4 80047AB4 8E3109FC */  lw         $s1, %lo(osActiveQueue)($s1)
/* 486B8 80047AB8 8E32000C */  lw         $s2, 0xc($s1)
/* 486BC 80047ABC 1240000B */  beqz       $s2, .L80047AEC
/* 486C0 80047AC0 00000000 */   nop
.L80047AC4:
/* 486C4 80047AC4 8FAB0038 */  lw         $t3, 0x38($sp)
/* 486C8 80047AC8 164B0004 */  bne        $s2, $t3, .L80047ADC
/* 486CC 80047ACC 00000000 */   nop
/* 486D0 80047AD0 8D6C000C */  lw         $t4, 0xc($t3)
/* 486D4 80047AD4 10000005 */  b          .L80047AEC
/* 486D8 80047AD8 AE2C000C */   sw        $t4, 0xc($s1)
.L80047ADC:
/* 486DC 80047ADC 02408825 */  or         $s1, $s2, $zero
/* 486E0 80047AE0 8E32000C */  lw         $s2, 0xc($s1)
/* 486E4 80047AE4 1640FFF7 */  bnez       $s2, .L80047AC4
/* 486E8 80047AE8 00000000 */   nop
.L80047AEC:
/* 486EC 80047AEC 3C0E8007 */  lui        $t6, %hi(__osRunningThread)
/* 486F0 80047AF0 8DCE0A00 */  lw         $t6, %lo(__osRunningThread)($t6)
/* 486F4 80047AF4 8FAD0038 */  lw         $t5, 0x38($sp)
/* 486F8 80047AF8 15AE0003 */  bne        $t5, $t6, .L80047B08
/* 486FC 80047AFC 00000000 */   nop
/* 48700 80047B00 0C00F479 */  jal        __osDispatchThread
/* 48704 80047B04 00000000 */   nop
.L80047B08:
/* 48708 80047B08 0C00F53C */  jal        __osRestoreInt
/* 4870C 80047B0C 02002025 */   or        $a0, $s0, $zero
/* 48710 80047B10 8FBF0024 */  lw         $ra, 0x24($sp)
/* 48714 80047B14 8FB00018 */  lw         $s0, 0x18($sp)
/* 48718 80047B18 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4871C 80047B1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 48720 80047B20 03E00008 */  jr         $ra
/* 48724 80047B24 27BD0038 */   addiu     $sp, $sp, 0x38
/* 48728 80047B28 00000000 */  nop
/* 4872C 80047B2C 00000000 */  nop
