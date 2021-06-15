.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViRepeatLine
/* 352E0 800346E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 352E4 800346E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 352E8 800346E8 AFA40028 */  sw         $a0, 0x28($sp)
/* 352EC 800346EC 0C00F534 */  jal        __osDisableInt
/* 352F0 800346F0 AFB00018 */   sw        $s0, 0x18($sp)
/* 352F4 800346F4 93AE002B */  lbu        $t6, 0x2b($sp)
/* 352F8 800346F8 00408025 */  or         $s0, $v0, $zero
/* 352FC 800346FC 11C00007 */  beqz       $t6, .L8003471C
/* 35300 80034700 00000000 */   nop
/* 35304 80034704 3C0F8007 */  lui        $t7, %hi(__osViNext)
/* 35308 80034708 8DEF0A84 */  lw         $t7, %lo(__osViNext)($t7)
/* 3530C 8003470C 95F80000 */  lhu        $t8, ($t7)
/* 35310 80034710 37190020 */  ori        $t9, $t8, 0x20
/* 35314 80034714 10000007 */  b          .L80034734
/* 35318 80034718 A5F90000 */   sh        $t9, ($t7)
.L8003471C:
/* 3531C 8003471C 3C088007 */  lui        $t0, %hi(__osViNext)
/* 35320 80034720 8D080A84 */  lw         $t0, %lo(__osViNext)($t0)
/* 35324 80034724 2401FFDF */  addiu      $at, $zero, -0x21
/* 35328 80034728 95090000 */  lhu        $t1, ($t0)
/* 3532C 8003472C 01215024 */  and        $t2, $t1, $at
/* 35330 80034730 A50A0000 */  sh         $t2, ($t0)
.L80034734:
/* 35334 80034734 0C00F53C */  jal        __osRestoreInt
/* 35338 80034738 02002025 */   or        $a0, $s0, $zero
/* 3533C 8003473C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 35340 80034740 8FB00018 */  lw         $s0, 0x18($sp)
/* 35344 80034744 27BD0028 */  addiu      $sp, $sp, 0x28
/* 35348 80034748 03E00008 */  jr         $ra
/* 3534C 8003474C 00000000 */   nop
