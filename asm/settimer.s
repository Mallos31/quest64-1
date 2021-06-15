.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSetTimer
/* 47AE0 80046EE0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 47AE4 80046EE4 AFA40020 */  sw         $a0, 0x20($sp)
/* 47AE8 80046EE8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 47AEC 80046EEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 47AF0 80046EF0 AFA60028 */  sw         $a2, 0x28($sp)
/* 47AF4 80046EF4 AFA7002C */  sw         $a3, 0x2c($sp)
/* 47AF8 80046EF8 ADC00000 */  sw         $zero, ($t6)
/* 47AFC 80046EFC 8FAF0020 */  lw         $t7, 0x20($sp)
/* 47B00 80046F00 ADE00004 */  sw         $zero, 4($t7)
/* 47B04 80046F04 8FA80020 */  lw         $t0, 0x20($sp)
/* 47B08 80046F08 8FB90034 */  lw         $t9, 0x34($sp)
/* 47B0C 80046F0C 8FB80030 */  lw         $t8, 0x30($sp)
/* 47B10 80046F10 AD19000C */  sw         $t9, 0xc($t0)
/* 47B14 80046F14 AD180008 */  sw         $t8, 8($t0)
/* 47B18 80046F18 8FAA0028 */  lw         $t2, 0x28($sp)
/* 47B1C 80046F1C 8FAB002C */  lw         $t3, 0x2c($sp)
/* 47B20 80046F20 15400003 */  bnez       $t2, .L80046F30
/* 47B24 80046F24 00000000 */   nop
/* 47B28 80046F28 11600005 */  beqz       $t3, .L80046F40
/* 47B2C 80046F2C 00000000 */   nop
.L80046F30:
/* 47B30 80046F30 8FA90020 */  lw         $t1, 0x20($sp)
/* 47B34 80046F34 AD2A0010 */  sw         $t2, 0x10($t1)
/* 47B38 80046F38 10000006 */  b          .L80046F54
/* 47B3C 80046F3C AD2B0014 */   sw        $t3, 0x14($t1)
.L80046F40:
/* 47B40 80046F40 8FAE0020 */  lw         $t6, 0x20($sp)
/* 47B44 80046F44 8FAC0030 */  lw         $t4, 0x30($sp)
/* 47B48 80046F48 8FAD0034 */  lw         $t5, 0x34($sp)
/* 47B4C 80046F4C ADCC0010 */  sw         $t4, 0x10($t6)
/* 47B50 80046F50 ADCD0014 */  sw         $t5, 0x14($t6)
.L80046F54:
/* 47B54 80046F54 8FAF0038 */  lw         $t7, 0x38($sp)
/* 47B58 80046F58 8FB80020 */  lw         $t8, 0x20($sp)
/* 47B5C 80046F5C AF0F0018 */  sw         $t7, 0x18($t8)
/* 47B60 80046F60 8FA80020 */  lw         $t0, 0x20($sp)
/* 47B64 80046F64 8FB9003C */  lw         $t9, 0x3c($sp)
/* 47B68 80046F68 AD19001C */  sw         $t9, 0x1c($t0)
/* 47B6C 80046F6C 0C00FA26 */  jal        __osInsertTimer
/* 47B70 80046F70 8FA40020 */   lw        $a0, 0x20($sp)
/* 47B74 80046F74 3C0A8007 */  lui        $t2, %hi(__osTimerList)
/* 47B78 80046F78 8D4A0A90 */  lw         $t2, %lo(__osTimerList)($t2)
/* 47B7C 80046F7C AFA20018 */  sw         $v0, 0x18($sp)
/* 47B80 80046F80 AFA3001C */  sw         $v1, 0x1c($sp)
/* 47B84 80046F84 8FA90020 */  lw         $t1, 0x20($sp)
/* 47B88 80046F88 8D4B0000 */  lw         $t3, ($t2)
/* 47B8C 80046F8C 15690004 */  bne        $t3, $t1, .L80046FA0
/* 47B90 80046F90 00000000 */   nop
/* 47B94 80046F94 8FA40018 */  lw         $a0, 0x18($sp)
/* 47B98 80046F98 0C00FA09 */  jal        __osSetTimerIntr
/* 47B9C 80046F9C 8FA5001C */   lw        $a1, 0x1c($sp)
.L80046FA0:
/* 47BA0 80046FA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 47BA4 80046FA4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 47BA8 80046FA8 00001025 */  or         $v0, $zero, $zero
/* 47BAC 80046FAC 03E00008 */  jr         $ra
/* 47BB0 80046FB0 00000000 */   nop
/* 47BB4 80046FB4 00000000 */  nop
/* 47BB8 80046FB8 00000000 */  nop
/* 47BBC 80046FBC 00000000 */  nop
