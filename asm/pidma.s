.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPiStartDma
/* 37110 80036510 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 37114 80036514 3C0E8007 */  lui        $t6, %hi(__osPiDevMgr)
/* 37118 80036518 8DCEF420 */  lw         $t6, %lo(__osPiDevMgr)($t6)
/* 3711C 8003651C AFBF001C */  sw         $ra, 0x1c($sp)
/* 37120 80036520 AFA40028 */  sw         $a0, 0x28($sp)
/* 37124 80036524 AFA5002C */  sw         $a1, 0x2c($sp)
/* 37128 80036528 AFA60030 */  sw         $a2, 0x30($sp)
/* 3712C 8003652C AFA70034 */  sw         $a3, 0x34($sp)
/* 37130 80036530 AFB10018 */  sw         $s1, 0x18($sp)
/* 37134 80036534 15C00003 */  bnez       $t6, .L80036544
/* 37138 80036538 AFB00014 */   sw        $s0, 0x14($sp)
/* 3713C 8003653C 10000032 */  b          .L80036608
/* 37140 80036540 2402FFFF */   addiu     $v0, $zero, -1
.L80036544:
/* 37144 80036544 8FAF0030 */  lw         $t7, 0x30($sp)
/* 37148 80036548 15E00005 */  bnez       $t7, .L80036560
/* 3714C 8003654C 00000000 */   nop
/* 37150 80036550 8FB90028 */  lw         $t9, 0x28($sp)
/* 37154 80036554 2418000B */  addiu      $t8, $zero, 0xb
/* 37158 80036558 10000004 */  b          .L8003656C
/* 3715C 8003655C A7380000 */   sh        $t8, ($t9)
.L80036560:
/* 37160 80036560 8FA90028 */  lw         $t1, 0x28($sp)
/* 37164 80036564 2408000C */  addiu      $t0, $zero, 0xc
/* 37168 80036568 A5280000 */  sh         $t0, ($t1)
.L8003656C:
/* 3716C 8003656C 8FAA002C */  lw         $t2, 0x2c($sp)
/* 37170 80036570 8FAB0028 */  lw         $t3, 0x28($sp)
/* 37174 80036574 24010001 */  addiu      $at, $zero, 1
/* 37178 80036578 A16A0002 */  sb         $t2, 2($t3)
/* 3717C 8003657C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 37180 80036580 8FAC0040 */  lw         $t4, 0x40($sp)
/* 37184 80036584 ADAC0004 */  sw         $t4, 4($t5)
/* 37188 80036588 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3718C 8003658C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 37190 80036590 ADEE0008 */  sw         $t6, 8($t7)
/* 37194 80036594 8FB90028 */  lw         $t9, 0x28($sp)
/* 37198 80036598 8FB80034 */  lw         $t8, 0x34($sp)
/* 3719C 8003659C AF38000C */  sw         $t8, 0xc($t9)
/* 371A0 800365A0 8FA90028 */  lw         $t1, 0x28($sp)
/* 371A4 800365A4 8FA8003C */  lw         $t0, 0x3c($sp)
/* 371A8 800365A8 AD280010 */  sw         $t0, 0x10($t1)
/* 371AC 800365AC 8FAA0028 */  lw         $t2, 0x28($sp)
/* 371B0 800365B0 AD400014 */  sw         $zero, 0x14($t2)
/* 371B4 800365B4 8FAB002C */  lw         $t3, 0x2c($sp)
/* 371B8 800365B8 1561000A */  bne        $t3, $at, .L800365E4
/* 371BC 800365BC 00000000 */   nop
/* 371C0 800365C0 0C00FF44 */  jal        osPiGetCmdQueue
/* 371C4 800365C4 00000000 */   nop
/* 371C8 800365C8 00408825 */  or         $s1, $v0, $zero
/* 371CC 800365CC 02202025 */  or         $a0, $s1, $zero
/* 371D0 800365D0 8FA50028 */  lw         $a1, 0x28($sp)
/* 371D4 800365D4 0C00FEF0 */  jal        osJamMesg
/* 371D8 800365D8 00003025 */   or        $a2, $zero, $zero
/* 371DC 800365DC 10000009 */  b          .L80036604
/* 371E0 800365E0 00408025 */   or        $s0, $v0, $zero
.L800365E4:
/* 371E4 800365E4 0C00FF44 */  jal        osPiGetCmdQueue
/* 371E8 800365E8 00000000 */   nop
/* 371EC 800365EC 00408825 */  or         $s1, $v0, $zero
/* 371F0 800365F0 02202025 */  or         $a0, $s1, $zero
/* 371F4 800365F4 8FA50028 */  lw         $a1, 0x28($sp)
/* 371F8 800365F8 0C00D080 */  jal        osSendMesg
/* 371FC 800365FC 00003025 */   or        $a2, $zero, $zero
/* 37200 80036600 00408025 */  or         $s0, $v0, $zero
.L80036604:
/* 37204 80036604 02001025 */  or         $v0, $s0, $zero
.L80036608:
/* 37208 80036608 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3720C 8003660C 8FB00014 */  lw         $s0, 0x14($sp)
/* 37210 80036610 8FB10018 */  lw         $s1, 0x18($sp)
/* 37214 80036614 03E00008 */  jr         $ra
/* 37218 80036618 27BD0028 */   addiu     $sp, $sp, 0x28
/* 3721C 8003661C 00000000 */  nop
