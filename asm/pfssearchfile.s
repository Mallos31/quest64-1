.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPfsFindFile
/* 47BC0 80046FC0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 47BC4 80046FC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 47BC8 80046FC8 AFA40048 */  sw         $a0, 0x48($sp)
/* 47BCC 80046FCC AFA5004C */  sw         $a1, 0x4c($sp)
/* 47BD0 80046FD0 AFA60050 */  sw         $a2, 0x50($sp)
/* 47BD4 80046FD4 AFA70054 */  sw         $a3, 0x54($sp)
/* 47BD8 80046FD8 AFA0001C */  sw         $zero, 0x1c($sp)
/* 47BDC 80046FDC 0C0114F0 */  jal        __osCheckId
/* 47BE0 80046FE0 8FA40048 */   lw        $a0, 0x48($sp)
/* 47BE4 80046FE4 24010002 */  addiu      $at, $zero, 2
/* 47BE8 80046FE8 14410003 */  bne        $v0, $at, .L80046FF8
/* 47BEC 80046FEC 00000000 */   nop
/* 47BF0 80046FF0 1000005C */  b          .L80047164
/* 47BF4 80046FF4 24020002 */   addiu     $v0, $zero, 2
.L80046FF8:
/* 47BF8 80046FF8 8FAE0048 */  lw         $t6, 0x48($sp)
/* 47BFC 80046FFC AFA00044 */  sw         $zero, 0x44($sp)
/* 47C00 80047000 8DCF0050 */  lw         $t7, 0x50($t6)
/* 47C04 80047004 19E00053 */  blez       $t7, .L80047154
/* 47C08 80047008 00000000 */   nop
.L8004700C:
/* 47C0C 8004700C 8FB80048 */  lw         $t8, 0x48($sp)
/* 47C10 80047010 8FA80044 */  lw         $t0, 0x44($sp)
/* 47C14 80047014 27A70020 */  addiu      $a3, $sp, 0x20
/* 47C18 80047018 8F19005C */  lw         $t9, 0x5c($t8)
/* 47C1C 8004701C 8F040004 */  lw         $a0, 4($t8)
/* 47C20 80047020 8F050008 */  lw         $a1, 8($t8)
/* 47C24 80047024 0C011614 */  jal        __osContRamRead
/* 47C28 80047028 03283021 */   addu      $a2, $t9, $t0
/* 47C2C 8004702C AFA2001C */  sw         $v0, 0x1c($sp)
/* 47C30 80047030 8FA9001C */  lw         $t1, 0x1c($sp)
/* 47C34 80047034 11200003 */  beqz       $t1, .L80047044
/* 47C38 80047038 00000000 */   nop
/* 47C3C 8004703C 10000049 */  b          .L80047164
/* 47C40 80047040 01201025 */   or        $v0, $t1, $zero
.L80047044:
/* 47C44 80047044 97AA0024 */  lhu        $t2, 0x24($sp)
/* 47C48 80047048 97AB004E */  lhu        $t3, 0x4e($sp)
/* 47C4C 8004704C 154B0039 */  bne        $t2, $t3, .L80047134
/* 47C50 80047050 00000000 */   nop
/* 47C54 80047054 8FAC0020 */  lw         $t4, 0x20($sp)
/* 47C58 80047058 8FAD0050 */  lw         $t5, 0x50($sp)
/* 47C5C 8004705C 158D0035 */  bne        $t4, $t5, .L80047134
/* 47C60 80047060 00000000 */   nop
/* 47C64 80047064 8FAE0054 */  lw         $t6, 0x54($sp)
/* 47C68 80047068 AFA00018 */  sw         $zero, 0x18($sp)
/* 47C6C 8004706C 11C00012 */  beqz       $t6, .L800470B8
/* 47C70 80047070 00000000 */   nop
/* 47C74 80047074 AFA00040 */  sw         $zero, 0x40($sp)
.L80047078:
/* 47C78 80047078 8FB80040 */  lw         $t8, 0x40($sp)
/* 47C7C 8004707C 8FAF0054 */  lw         $t7, 0x54($sp)
/* 47C80 80047080 03B84821 */  addu       $t1, $sp, $t8
/* 47C84 80047084 01F8C821 */  addu       $t9, $t7, $t8
/* 47C88 80047088 93280000 */  lbu        $t0, ($t9)
/* 47C8C 8004708C 91290030 */  lbu        $t1, 0x30($t1)
/* 47C90 80047090 11090004 */  beq        $t0, $t1, .L800470A4
/* 47C94 80047094 00000000 */   nop
/* 47C98 80047098 240A0001 */  addiu      $t2, $zero, 1
/* 47C9C 8004709C 10000006 */  b          .L800470B8
/* 47CA0 800470A0 AFAA0018 */   sw        $t2, 0x18($sp)
.L800470A4:
/* 47CA4 800470A4 8FAB0040 */  lw         $t3, 0x40($sp)
/* 47CA8 800470A8 256C0001 */  addiu      $t4, $t3, 1
/* 47CAC 800470AC 29810010 */  slti       $at, $t4, 0x10
/* 47CB0 800470B0 1420FFF1 */  bnez       $at, .L80047078
/* 47CB4 800470B4 AFAC0040 */   sw        $t4, 0x40($sp)
.L800470B8:
/* 47CB8 800470B8 8FAD0058 */  lw         $t5, 0x58($sp)
/* 47CBC 800470BC 11A00015 */  beqz       $t5, .L80047114
/* 47CC0 800470C0 00000000 */   nop
/* 47CC4 800470C4 8FAE0018 */  lw         $t6, 0x18($sp)
/* 47CC8 800470C8 15C00012 */  bnez       $t6, .L80047114
/* 47CCC 800470CC 00000000 */   nop
/* 47CD0 800470D0 AFA00040 */  sw         $zero, 0x40($sp)
.L800470D4:
/* 47CD4 800470D4 8FB90040 */  lw         $t9, 0x40($sp)
/* 47CD8 800470D8 8FAF0058 */  lw         $t7, 0x58($sp)
/* 47CDC 800470DC 03B94821 */  addu       $t1, $sp, $t9
/* 47CE0 800470E0 01F9C021 */  addu       $t8, $t7, $t9
/* 47CE4 800470E4 93080000 */  lbu        $t0, ($t8)
/* 47CE8 800470E8 9129002C */  lbu        $t1, 0x2c($t1)
/* 47CEC 800470EC 11090004 */  beq        $t0, $t1, .L80047100
/* 47CF0 800470F0 00000000 */   nop
/* 47CF4 800470F4 240A0001 */  addiu      $t2, $zero, 1
/* 47CF8 800470F8 10000006 */  b          .L80047114
/* 47CFC 800470FC AFAA0018 */   sw        $t2, 0x18($sp)
.L80047100:
/* 47D00 80047100 8FAB0040 */  lw         $t3, 0x40($sp)
/* 47D04 80047104 256C0001 */  addiu      $t4, $t3, 1
/* 47D08 80047108 29810004 */  slti       $at, $t4, 4
/* 47D0C 8004710C 1420FFF1 */  bnez       $at, .L800470D4
/* 47D10 80047110 AFAC0040 */   sw        $t4, 0x40($sp)
.L80047114:
/* 47D14 80047114 8FAD0018 */  lw         $t5, 0x18($sp)
/* 47D18 80047118 15A00006 */  bnez       $t5, .L80047134
/* 47D1C 8004711C 00000000 */   nop
/* 47D20 80047120 8FAE0044 */  lw         $t6, 0x44($sp)
/* 47D24 80047124 8FAF005C */  lw         $t7, 0x5c($sp)
/* 47D28 80047128 ADEE0000 */  sw         $t6, ($t7)
/* 47D2C 8004712C 1000000D */  b          .L80047164
/* 47D30 80047130 8FA2001C */   lw        $v0, 0x1c($sp)
.L80047134:
/* 47D34 80047134 8FB80044 */  lw         $t8, 0x44($sp)
/* 47D38 80047138 8FA80048 */  lw         $t0, 0x48($sp)
/* 47D3C 8004713C 27190001 */  addiu      $t9, $t8, 1
/* 47D40 80047140 AFB90044 */  sw         $t9, 0x44($sp)
/* 47D44 80047144 8D090050 */  lw         $t1, 0x50($t0)
/* 47D48 80047148 0329082A */  slt        $at, $t9, $t1
/* 47D4C 8004714C 1420FFAF */  bnez       $at, .L8004700C
/* 47D50 80047150 00000000 */   nop
.L80047154:
/* 47D54 80047154 8FAB005C */  lw         $t3, 0x5c($sp)
/* 47D58 80047158 240AFFFF */  addiu      $t2, $zero, -1
/* 47D5C 8004715C 24020005 */  addiu      $v0, $zero, 5
/* 47D60 80047160 AD6A0000 */  sw         $t2, ($t3)
.L80047164:
/* 47D64 80047164 8FBF0014 */  lw         $ra, 0x14($sp)
/* 47D68 80047168 27BD0048 */  addiu      $sp, $sp, 0x48
/* 47D6C 8004716C 03E00008 */  jr         $ra
/* 47D70 80047170 00000000 */   nop
/* 47D74 80047174 00000000 */  nop
/* 47D78 80047178 00000000 */  nop
/* 47D7C 8004717C 00000000 */  nop
