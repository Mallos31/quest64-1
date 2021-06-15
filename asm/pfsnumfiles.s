.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPfsNumFiles
/* 3D390 8003C790 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3D394 8003C794 AFA40048 */  sw         $a0, 0x48($sp)
/* 3D398 8003C798 8FAE0048 */  lw         $t6, 0x48($sp)
/* 3D39C 8003C79C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D3A0 8003C7A0 AFA5004C */  sw         $a1, 0x4c($sp)
/* 3D3A4 8003C7A4 AFA60050 */  sw         $a2, 0x50($sp)
/* 3D3A8 8003C7A8 AFA0001C */  sw         $zero, 0x1c($sp)
/* 3D3AC 8003C7AC 8DCF0000 */  lw         $t7, ($t6)
/* 3D3B0 8003C7B0 31F80001 */  andi       $t8, $t7, 1
/* 3D3B4 8003C7B4 17000003 */  bnez       $t8, .L8003C7C4
/* 3D3B8 8003C7B8 00000000 */   nop
/* 3D3BC 8003C7BC 10000041 */  b          .L8003C8C4
/* 3D3C0 8003C7C0 24020005 */   addiu     $v0, $zero, 5
.L8003C7C4:
/* 3D3C4 8003C7C4 0C0114F0 */  jal        __osCheckId
/* 3D3C8 8003C7C8 8FA40048 */   lw        $a0, 0x48($sp)
/* 3D3CC 8003C7CC 24010002 */  addiu      $at, $zero, 2
/* 3D3D0 8003C7D0 14410003 */  bne        $v0, $at, .L8003C7E0
/* 3D3D4 8003C7D4 00000000 */   nop
/* 3D3D8 8003C7D8 1000003A */  b          .L8003C8C4
/* 3D3DC 8003C7DC 24020002 */   addiu     $v0, $zero, 2
.L8003C7E0:
/* 3D3E0 8003C7E0 8FB90048 */  lw         $t9, 0x48($sp)
/* 3D3E4 8003C7E4 93280065 */  lbu        $t0, 0x65($t9)
/* 3D3E8 8003C7E8 1100000A */  beqz       $t0, .L8003C814
/* 3D3EC 8003C7EC 00000000 */   nop
/* 3D3F0 8003C7F0 A3200065 */  sb         $zero, 0x65($t9)
/* 3D3F4 8003C7F4 0C0115F7 */  jal        __osPfsSelectBank
/* 3D3F8 8003C7F8 8FA40048 */   lw        $a0, 0x48($sp)
/* 3D3FC 8003C7FC AFA20040 */  sw         $v0, 0x40($sp)
/* 3D400 8003C800 8FA90040 */  lw         $t1, 0x40($sp)
/* 3D404 8003C804 11200003 */  beqz       $t1, .L8003C814
/* 3D408 8003C808 00000000 */   nop
/* 3D40C 8003C80C 1000002D */  b          .L8003C8C4
/* 3D410 8003C810 01201025 */   or        $v0, $t1, $zero
.L8003C814:
/* 3D414 8003C814 8FAA0048 */  lw         $t2, 0x48($sp)
/* 3D418 8003C818 AFA00044 */  sw         $zero, 0x44($sp)
/* 3D41C 8003C81C 8D4B0050 */  lw         $t3, 0x50($t2)
/* 3D420 8003C820 19600020 */  blez       $t3, .L8003C8A4
/* 3D424 8003C824 00000000 */   nop
.L8003C828:
/* 3D428 8003C828 8FAC0048 */  lw         $t4, 0x48($sp)
/* 3D42C 8003C82C 8FAE0044 */  lw         $t6, 0x44($sp)
/* 3D430 8003C830 27A70020 */  addiu      $a3, $sp, 0x20
/* 3D434 8003C834 8D8D005C */  lw         $t5, 0x5c($t4)
/* 3D438 8003C838 8D840004 */  lw         $a0, 4($t4)
/* 3D43C 8003C83C 8D850008 */  lw         $a1, 8($t4)
/* 3D440 8003C840 0C011614 */  jal        __osContRamRead
/* 3D444 8003C844 01AE3021 */   addu      $a2, $t5, $t6
/* 3D448 8003C848 AFA20040 */  sw         $v0, 0x40($sp)
/* 3D44C 8003C84C 8FAF0040 */  lw         $t7, 0x40($sp)
/* 3D450 8003C850 11E00003 */  beqz       $t7, .L8003C860
/* 3D454 8003C854 00000000 */   nop
/* 3D458 8003C858 1000001A */  b          .L8003C8C4
/* 3D45C 8003C85C 01E01025 */   or        $v0, $t7, $zero
.L8003C860:
/* 3D460 8003C860 97B80024 */  lhu        $t8, 0x24($sp)
/* 3D464 8003C864 13000007 */  beqz       $t8, .L8003C884
/* 3D468 8003C868 00000000 */   nop
/* 3D46C 8003C86C 8FA80020 */  lw         $t0, 0x20($sp)
/* 3D470 8003C870 11000004 */  beqz       $t0, .L8003C884
/* 3D474 8003C874 00000000 */   nop
/* 3D478 8003C878 8FB9001C */  lw         $t9, 0x1c($sp)
/* 3D47C 8003C87C 27290001 */  addiu      $t1, $t9, 1
/* 3D480 8003C880 AFA9001C */  sw         $t1, 0x1c($sp)
.L8003C884:
/* 3D484 8003C884 8FAA0044 */  lw         $t2, 0x44($sp)
/* 3D488 8003C888 8FAC0048 */  lw         $t4, 0x48($sp)
/* 3D48C 8003C88C 254B0001 */  addiu      $t3, $t2, 1
/* 3D490 8003C890 AFAB0044 */  sw         $t3, 0x44($sp)
/* 3D494 8003C894 8D8D0050 */  lw         $t5, 0x50($t4)
/* 3D498 8003C898 016D082A */  slt        $at, $t3, $t5
/* 3D49C 8003C89C 1420FFE2 */  bnez       $at, .L8003C828
/* 3D4A0 8003C8A0 00000000 */   nop
.L8003C8A4:
/* 3D4A4 8003C8A4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 3D4A8 8003C8A8 8FAF0050 */  lw         $t7, 0x50($sp)
/* 3D4AC 8003C8AC 00001025 */  or         $v0, $zero, $zero
/* 3D4B0 8003C8B0 ADEE0000 */  sw         $t6, ($t7)
/* 3D4B4 8003C8B4 8FB80048 */  lw         $t8, 0x48($sp)
/* 3D4B8 8003C8B8 8FB9004C */  lw         $t9, 0x4c($sp)
/* 3D4BC 8003C8BC 8F080050 */  lw         $t0, 0x50($t8)
/* 3D4C0 8003C8C0 AF280000 */  sw         $t0, ($t9)
.L8003C8C4:
/* 3D4C4 8003C8C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D4C8 8003C8C8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 3D4CC 8003C8CC 03E00008 */  jr         $ra
/* 3D4D0 8003C8D0 00000000 */   nop
/* 3D4D4 8003C8D4 00000000 */  nop
/* 3D4D8 8003C8D8 00000000 */  nop
/* 3D4DC 8003C8DC 00000000 */  nop
