.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynSetPan
/* 45230 80044630 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 45234 80044634 AFBF0014 */  sw         $ra, 0x14($sp)
/* 45238 80044638 AFA40018 */  sw         $a0, 0x18($sp)
/* 4523C 8004463C AFA60020 */  sw         $a2, 0x20($sp)
/* 45240 80044640 8CAE0008 */  lw         $t6, 8($a1)
/* 45244 80044644 51C00018 */  beql       $t6, $zero, .L800446A8
/* 45248 80044648 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4524C 8004464C 0C00DA8C */  jal        __allocParam
/* 45250 80044650 AFA5001C */   sw        $a1, 0x1c($sp)
/* 45254 80044654 8FA7001C */  lw         $a3, 0x1c($sp)
/* 45258 80044658 10400012 */  beqz       $v0, .L800446A4
/* 4525C 8004465C 00403025 */   or        $a2, $v0, $zero
/* 45260 80044660 8FAF0018 */  lw         $t7, 0x18($sp)
/* 45264 80044664 8CF90008 */  lw         $t9, 8($a3)
/* 45268 80044668 240A000C */  addiu      $t2, $zero, 0xc
/* 4526C 8004466C 8DF8001C */  lw         $t8, 0x1c($t7)
/* 45270 80044670 8F2800D8 */  lw         $t0, 0xd8($t9)
/* 45274 80044674 A44A0008 */  sh         $t2, 8($v0)
/* 45278 80044678 24050003 */  addiu      $a1, $zero, 3
/* 4527C 8004467C 03084821 */  addu       $t1, $t8, $t0
/* 45280 80044680 AC490004 */  sw         $t1, 4($v0)
/* 45284 80044684 93AB0023 */  lbu        $t3, 0x23($sp)
/* 45288 80044688 AC400000 */  sw         $zero, ($v0)
/* 4528C 8004468C AC4B000C */  sw         $t3, 0xc($v0)
/* 45290 80044690 8CEC0008 */  lw         $t4, 8($a3)
/* 45294 80044694 8D84000C */  lw         $a0, 0xc($t4)
/* 45298 80044698 8C990008 */  lw         $t9, 8($a0)
/* 4529C 8004469C 0320F809 */  jalr       $t9
/* 452A0 800446A0 00000000 */   nop
.L800446A4:
/* 452A4 800446A4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800446A8:
/* 452A8 800446A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 452AC 800446AC 03E00008 */  jr         $ra
/* 452B0 800446B0 00000000 */   nop
/* 452B4 800446B4 00000000 */  nop
/* 452B8 800446B8 00000000 */  nop
/* 452BC 800446BC 00000000 */  nop
