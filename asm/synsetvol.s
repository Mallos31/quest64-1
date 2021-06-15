.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynSetVol
/* 44D90 80044190 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 44D94 80044194 AFBF0014 */  sw         $ra, 0x14($sp)
/* 44D98 80044198 AFA50024 */  sw         $a1, 0x24($sp)
/* 44D9C 8004419C AFA60028 */  sw         $a2, 0x28($sp)
/* 44DA0 800441A0 AFA7002C */  sw         $a3, 0x2c($sp)
/* 44DA4 800441A4 8CAF0008 */  lw         $t7, 8($a1)
/* 44DA8 800441A8 51E0001D */  beql       $t7, $zero, .L80044220
/* 44DAC 800441AC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 44DB0 800441B0 0C00DA8C */  jal        __allocParam
/* 44DB4 800441B4 AFA40020 */   sw        $a0, 0x20($sp)
/* 44DB8 800441B8 10400018 */  beqz       $v0, .L8004421C
/* 44DBC 800441BC 8FA40020 */   lw        $a0, 0x20($sp)
/* 44DC0 800441C0 8FB90024 */  lw         $t9, 0x24($sp)
/* 44DC4 800441C4 8C98001C */  lw         $t8, 0x1c($a0)
/* 44DC8 800441C8 240B000B */  addiu      $t3, $zero, 0xb
/* 44DCC 800441CC 8F280008 */  lw         $t0, 8($t9)
/* 44DD0 800441D0 8D0900D8 */  lw         $t1, 0xd8($t0)
/* 44DD4 800441D4 A44B0008 */  sh         $t3, 8($v0)
/* 44DD8 800441D8 03095021 */  addu       $t2, $t8, $t1
/* 44DDC 800441DC AC4A0004 */  sw         $t2, 4($v0)
/* 44DE0 800441E0 87AC002A */  lh         $t4, 0x2a($sp)
/* 44DE4 800441E4 AC4C000C */  sw         $t4, 0xc($v0)
/* 44DE8 800441E8 AFA2001C */  sw         $v0, 0x1c($sp)
/* 44DEC 800441EC 0C00DA4A */  jal        _timeToSamplesNoRound
/* 44DF0 800441F0 8FA5002C */   lw        $a1, 0x2c($sp)
/* 44DF4 800441F4 8FA6001C */  lw         $a2, 0x1c($sp)
/* 44DF8 800441F8 24050003 */  addiu      $a1, $zero, 3
/* 44DFC 800441FC ACC20010 */  sw         $v0, 0x10($a2)
/* 44E00 80044200 ACC00000 */  sw         $zero, ($a2)
/* 44E04 80044204 8FAD0024 */  lw         $t5, 0x24($sp)
/* 44E08 80044208 8DAE0008 */  lw         $t6, 8($t5)
/* 44E0C 8004420C 8DC4000C */  lw         $a0, 0xc($t6)
/* 44E10 80044210 8C990008 */  lw         $t9, 8($a0)
/* 44E14 80044214 0320F809 */  jalr       $t9
/* 44E18 80044218 00000000 */   nop
.L8004421C:
/* 44E1C 8004421C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80044220:
/* 44E20 80044220 27BD0020 */  addiu      $sp, $sp, 0x20
/* 44E24 80044224 03E00008 */  jr         $ra
/* 44E28 80044228 00000000 */   nop
/* 44E2C 8004422C 00000000 */  nop
