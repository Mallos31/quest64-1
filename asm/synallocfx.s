.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSynAllocFX
/* 41430 80040830 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 41434 80040834 00054400 */  sll        $t0, $a1, 0x10
/* 41438 80040838 00087403 */  sra        $t6, $t0, 0x10
/* 4143C 8004083C AFB10018 */  sw         $s1, 0x18($sp)
/* 41440 80040840 000E8880 */  sll        $s1, $t6, 2
/* 41444 80040844 AFBF001C */  sw         $ra, 0x1c($sp)
/* 41448 80040848 AFB00014 */  sw         $s0, 0x14($sp)
/* 4144C 8004084C AFA50024 */  sw         $a1, 0x24($sp)
/* 41450 80040850 022E8821 */  addu       $s1, $s1, $t6
/* 41454 80040854 8C8F0034 */  lw         $t7, 0x34($a0)
/* 41458 80040858 00118880 */  sll        $s1, $s1, 2
/* 4145C 8004085C 022E8823 */  subu       $s1, $s1, $t6
/* 41460 80040860 00808025 */  or         $s0, $a0, $zero
/* 41464 80040864 00118880 */  sll        $s1, $s1, 2
/* 41468 80040868 00C02825 */  or         $a1, $a2, $zero
/* 4146C 8004086C 01F12021 */  addu       $a0, $t7, $s1
/* 41470 80040870 24840020 */  addiu      $a0, $a0, 0x20
/* 41474 80040874 0C0100FC */  jal        alFxNew
/* 41478 80040878 00E03025 */   or        $a2, $a3, $zero
/* 4147C 8004087C 8E180034 */  lw         $t8, 0x34($s0)
/* 41480 80040880 24050001 */  addiu      $a1, $zero, 1
/* 41484 80040884 03113021 */  addu       $a2, $t8, $s1
/* 41488 80040888 0C0124F5 */  jal        alFxParam
/* 4148C 8004088C 24C40020 */   addiu     $a0, $a2, 0x20
/* 41490 80040890 8E190034 */  lw         $t9, 0x34($s0)
/* 41494 80040894 8E040030 */  lw         $a0, 0x30($s0)
/* 41498 80040898 24050002 */  addiu      $a1, $zero, 2
/* 4149C 8004089C 03313021 */  addu       $a2, $t9, $s1
/* 414A0 800408A0 0C010234 */  jal        alMainBusParam
/* 414A4 800408A4 24C60020 */   addiu     $a2, $a2, 0x20
/* 414A8 800408A8 8E0A0034 */  lw         $t2, 0x34($s0)
/* 414AC 800408AC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 414B0 800408B0 8FB00014 */  lw         $s0, 0x14($sp)
/* 414B4 800408B4 01511021 */  addu       $v0, $t2, $s1
/* 414B8 800408B8 8FB10018 */  lw         $s1, 0x18($sp)
/* 414BC 800408BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 414C0 800408C0 03E00008 */  jr         $ra
/* 414C4 800408C4 24420020 */   addiu     $v0, $v0, 0x20
/* 414C8 800408C8 00000000 */  nop
/* 414CC 800408CC 00000000 */  nop
