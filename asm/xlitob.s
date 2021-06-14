.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel _Litob
/* 488E0 80047CE0 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 488E4 80047CE4 AFB10020 */  sw         $s1, 0x20($sp)
/* 488E8 80047CE8 30A200FF */  andi       $v0, $a1, 0xff
/* 488EC 80047CEC 24030058 */  addiu      $v1, $zero, 0x58
/* 488F0 80047CF0 00808825 */  or         $s1, $a0, $zero
/* 488F4 80047CF4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 488F8 80047CF8 AFB30028 */  sw         $s3, 0x28($sp)
/* 488FC 80047CFC AFB20024 */  sw         $s2, 0x24($sp)
/* 48900 80047D00 AFB0001C */  sw         $s0, 0x1c($sp)
/* 48904 80047D04 14620004 */  bne        $v1, $v0, .L80047D18
/* 48908 80047D08 AFA50094 */   sw        $a1, 0x94($sp)
/* 4890C 80047D0C 3C138007 */  lui        $s3, %hi(uppercaseDigs)
/* 48910 80047D10 10000003 */  b          .L80047D20
/* 48914 80047D14 26730ED4 */   addiu     $s3, $s3, %lo(uppercaseDigs)
.L80047D18:
/* 48918 80047D18 3C138007 */  lui        $s3, %hi(lowercaseDigs)
/* 4891C 80047D1C 26730EC0 */  addiu      $s3, $s3, %lo(lowercaseDigs)
.L80047D20:
/* 48920 80047D20 2401006F */  addiu      $at, $zero, 0x6f
/* 48924 80047D24 14410003 */  bne        $v0, $at, .L80047D34
/* 48928 80047D28 24100018 */   addiu     $s0, $zero, 0x18
/* 4892C 80047D2C 10000009 */  b          .L80047D54
/* 48930 80047D30 24090008 */   addiu     $t1, $zero, 8
.L80047D34:
/* 48934 80047D34 24010078 */  addiu      $at, $zero, 0x78
/* 48938 80047D38 10410005 */  beq        $v0, $at, .L80047D50
/* 4893C 80047D3C 24080010 */   addiu     $t0, $zero, 0x10
/* 48940 80047D40 10620003 */  beq        $v1, $v0, .L80047D50
/* 48944 80047D44 00000000 */   nop
/* 48948 80047D48 10000001 */  b          .L80047D50
/* 4894C 80047D4C 2408000A */   addiu     $t0, $zero, 0xa
.L80047D50:
/* 48950 80047D50 01004825 */  or         $t1, $t0, $zero
.L80047D54:
/* 48954 80047D54 8E380000 */  lw         $t8, ($s1)
/* 48958 80047D58 8E390004 */  lw         $t9, 4($s1)
/* 4895C 80047D5C 24010064 */  addiu      $at, $zero, 0x64
/* 48960 80047D60 AFB80060 */  sw         $t8, 0x60($sp)
/* 48964 80047D64 AFB80040 */  sw         $t8, 0x40($sp)
/* 48968 80047D68 AFB90044 */  sw         $t9, 0x44($sp)
/* 4896C 80047D6C 10410004 */  beq        $v0, $at, .L80047D80
/* 48970 80047D70 AFB90064 */   sw        $t9, 0x64($sp)
/* 48974 80047D74 24010069 */  addiu      $at, $zero, 0x69
/* 48978 80047D78 54410010 */  bnel       $v0, $at, .L80047DBC
/* 4897C 80047D7C 8FAA0060 */   lw        $t2, 0x60($sp)
.L80047D80:
/* 48980 80047D80 8FAC0040 */  lw         $t4, 0x40($sp)
/* 48984 80047D84 5D80000D */  bgtzl      $t4, .L80047DBC
/* 48988 80047D88 8FAA0060 */   lw        $t2, 0x60($sp)
/* 4898C 80047D8C 05800003 */  bltz       $t4, .L80047D9C
/* 48990 80047D90 8FAE0060 */   lw        $t6, 0x60($sp)
/* 48994 80047D94 10000009 */  b          .L80047DBC
/* 48998 80047D98 8FAA0060 */   lw        $t2, 0x60($sp)
.L80047D9C:
/* 4899C 80047D9C 8FAF0064 */  lw         $t7, 0x64($sp)
/* 489A0 80047DA0 01C0C027 */  not        $t8, $t6
/* 489A4 80047DA4 2DE10001 */  sltiu      $at, $t7, 1
/* 489A8 80047DA8 0301C021 */  addu       $t8, $t8, $at
/* 489AC 80047DAC 000FC823 */  negu       $t9, $t7
/* 489B0 80047DB0 AFB90064 */  sw         $t9, 0x64($sp)
/* 489B4 80047DB4 AFB80060 */  sw         $t8, 0x60($sp)
/* 489B8 80047DB8 8FAA0060 */  lw         $t2, 0x60($sp)
.L80047DBC:
/* 489BC 80047DBC 8FAB0064 */  lw         $t3, 0x64($sp)
/* 489C0 80047DC0 24080017 */  addiu      $t0, $zero, 0x17
/* 489C4 80047DC4 15400006 */  bnez       $t2, .L80047DE0
/* 489C8 80047DC8 8FA40060 */   lw        $a0, 0x60($sp)
/* 489CC 80047DCC 55600005 */  bnel       $t3, $zero, .L80047DE4
/* 489D0 80047DD0 24100017 */   addiu     $s0, $zero, 0x17
/* 489D4 80047DD4 8E2C0024 */  lw         $t4, 0x24($s1)
/* 489D8 80047DD8 51800010 */  beql       $t4, $zero, .L80047E1C
/* 489DC 80047DDC 27B20078 */   addiu     $s2, $sp, 0x78
.L80047DE0:
/* 489E0 80047DE0 24100017 */  addiu      $s0, $zero, 0x17
.L80047DE4:
/* 489E4 80047DE4 8FA50064 */  lw         $a1, 0x64($sp)
/* 489E8 80047DE8 01203825 */  or         $a3, $t1, $zero
/* 489EC 80047DEC 000937C3 */  sra        $a2, $t1, 0x1f
/* 489F0 80047DF0 AFA8004C */  sw         $t0, 0x4c($sp)
/* 489F4 80047DF4 0C00E6BF */  jal        func_80039AFC
/* 489F8 80047DF8 AFA90070 */   sw        $t1, 0x70($sp)
/* 489FC 80047DFC 8FA8004C */  lw         $t0, 0x4c($sp)
/* 48A00 80047E00 00737021 */  addu       $t6, $v1, $s3
/* 48A04 80047E04 91CF0000 */  lbu        $t7, ($t6)
/* 48A08 80047E08 27B20078 */  addiu      $s2, $sp, 0x78
/* 48A0C 80047E0C 8FA90070 */  lw         $t1, 0x70($sp)
/* 48A10 80047E10 0248C021 */  addu       $t8, $s2, $t0
/* 48A14 80047E14 A30F0000 */  sb         $t7, ($t8)
/* 48A18 80047E18 27B20078 */  addiu      $s2, $sp, 0x78
.L80047E1C:
/* 48A1C 80047E1C 8FA40060 */  lw         $a0, 0x60($sp)
/* 48A20 80047E20 8FA50064 */  lw         $a1, 0x64($sp)
/* 48A24 80047E24 01203825 */  or         $a3, $t1, $zero
/* 48A28 80047E28 000937C3 */  sra        $a2, $t1, 0x1f
/* 48A2C 80047E2C 0C00E6CE */  jal        func_80039B38
/* 48A30 80047E30 AFA90070 */   sw        $t1, 0x70($sp)
/* 48A34 80047E34 8FA90070 */  lw         $t1, 0x70($sp)
/* 48A38 80047E38 AE230004 */  sw         $v1, 4($s1)
/* 48A3C 80047E3C 0440002B */  bltz       $v0, .L80047EEC
/* 48A40 80047E40 AE220000 */   sw        $v0, ($s1)
/* 48A44 80047E44 1C400003 */  bgtz       $v0, .L80047E54
/* 48A48 80047E48 00000000 */   nop
/* 48A4C 80047E4C 50600028 */  beql       $v1, $zero, .L80047EF0
/* 48A50 80047E50 240C0018 */   addiu     $t4, $zero, 0x18
.L80047E54:
/* 48A54 80047E54 1A000025 */  blez       $s0, .L80047EEC
/* 48A58 80047E58 000967C3 */   sra       $t4, $t1, 0x1f
/* 48A5C 80047E5C 8E2A0000 */  lw         $t2, ($s1)
/* 48A60 80047E60 8E2B0004 */  lw         $t3, 4($s1)
/* 48A64 80047E64 AFA9003C */  sw         $t1, 0x3c($sp)
/* 48A68 80047E68 AFAC0038 */  sw         $t4, 0x38($sp)
/* 48A6C 80047E6C AFAA0040 */  sw         $t2, 0x40($sp)
/* 48A70 80047E70 AFAB0044 */  sw         $t3, 0x44($sp)
/* 48A74 80047E74 8FAE0038 */  lw         $t6, 0x38($sp)
.L80047E78:
/* 48A78 80047E78 8FAF003C */  lw         $t7, 0x3c($sp)
/* 48A7C 80047E7C 27A40050 */  addiu      $a0, $sp, 0x50
/* 48A80 80047E80 8FA60040 */  lw         $a2, 0x40($sp)
/* 48A84 80047E84 8FA70044 */  lw         $a3, 0x44($sp)
/* 48A88 80047E88 AFAE0010 */  sw         $t6, 0x10($sp)
/* 48A8C 80047E8C 0C012758 */  jal        func_80049D60
/* 48A90 80047E90 AFAF0014 */   sw        $t7, 0x14($sp)
/* 48A94 80047E94 8FB80050 */  lw         $t8, 0x50($sp)
/* 48A98 80047E98 8FB90054 */  lw         $t9, 0x54($sp)
/* 48A9C 80047E9C 2604FFFF */  addiu      $a0, $s0, -1
/* 48AA0 80047EA0 AE380000 */  sw         $t8, ($s1)
/* 48AA4 80047EA4 AE390004 */  sw         $t9, 4($s1)
/* 48AA8 80047EA8 8FAB005C */  lw         $t3, 0x5c($sp)
/* 48AAC 80047EAC 02447821 */  addu       $t7, $s2, $a0
/* 48AB0 80047EB0 00808025 */  or         $s0, $a0, $zero
/* 48AB4 80047EB4 01736821 */  addu       $t5, $t3, $s3
/* 48AB8 80047EB8 91AE0000 */  lbu        $t6, ($t5)
/* 48ABC 80047EBC A1EE0000 */  sb         $t6, ($t7)
/* 48AC0 80047EC0 8E380000 */  lw         $t8, ($s1)
/* 48AC4 80047EC4 8E390004 */  lw         $t9, 4($s1)
/* 48AC8 80047EC8 AFB80040 */  sw         $t8, 0x40($sp)
/* 48ACC 80047ECC 07000007 */  bltz       $t8, .L80047EEC
/* 48AD0 80047ED0 AFB90044 */   sw        $t9, 0x44($sp)
/* 48AD4 80047ED4 1F000003 */  bgtz       $t8, .L80047EE4
/* 48AD8 80047ED8 00000000 */   nop
/* 48ADC 80047EDC 53200004 */  beql       $t9, $zero, .L80047EF0
/* 48AE0 80047EE0 240C0018 */   addiu     $t4, $zero, 0x18
.L80047EE4:
/* 48AE4 80047EE4 5E00FFE4 */  bgtzl      $s0, .L80047E78
/* 48AE8 80047EE8 8FAE0038 */   lw        $t6, 0x38($sp)
.L80047EEC:
/* 48AEC 80047EEC 240C0018 */  addiu      $t4, $zero, 0x18
.L80047EF0:
/* 48AF0 80047EF0 01903023 */  subu       $a2, $t4, $s0
/* 48AF4 80047EF4 AE260014 */  sw         $a2, 0x14($s1)
/* 48AF8 80047EF8 8E240008 */  lw         $a0, 8($s1)
/* 48AFC 80047EFC 0C00FEC8 */  jal        memcpy
/* 48B00 80047F00 02502821 */   addu      $a1, $s2, $s0
/* 48B04 80047F04 8E250014 */  lw         $a1, 0x14($s1)
/* 48B08 80047F08 8E240024 */  lw         $a0, 0x24($s1)
/* 48B0C 80047F0C 00A4082A */  slt        $at, $a1, $a0
/* 48B10 80047F10 10200002 */  beqz       $at, .L80047F1C
/* 48B14 80047F14 00856823 */   subu      $t5, $a0, $a1
/* 48B18 80047F18 AE2D0010 */  sw         $t5, 0x10($s1)
.L80047F1C:
/* 48B1C 80047F1C 04830010 */  bgezl      $a0, .L80047F60
/* 48B20 80047F20 8FBF002C */   lw        $ra, 0x2c($sp)
/* 48B24 80047F24 8E2E0030 */  lw         $t6, 0x30($s1)
/* 48B28 80047F28 24010010 */  addiu      $at, $zero, 0x10
/* 48B2C 80047F2C 31CF0014 */  andi       $t7, $t6, 0x14
/* 48B30 80047F30 55E1000B */  bnel       $t7, $at, .L80047F60
/* 48B34 80047F34 8FBF002C */   lw        $ra, 0x2c($sp)
/* 48B38 80047F38 8E380028 */  lw         $t8, 0x28($s1)
/* 48B3C 80047F3C 8E39000C */  lw         $t9, 0xc($s1)
/* 48B40 80047F40 8E220010 */  lw         $v0, 0x10($s1)
/* 48B44 80047F44 03195023 */  subu       $t2, $t8, $t9
/* 48B48 80047F48 01425823 */  subu       $t3, $t2, $v0
/* 48B4C 80047F4C 01658023 */  subu       $s0, $t3, $a1
/* 48B50 80047F50 1A000002 */  blez       $s0, .L80047F5C
/* 48B54 80047F54 00506021 */   addu      $t4, $v0, $s0
/* 48B58 80047F58 AE2C0010 */  sw         $t4, 0x10($s1)
.L80047F5C:
/* 48B5C 80047F5C 8FBF002C */  lw         $ra, 0x2c($sp)
.L80047F60:
/* 48B60 80047F60 8FB0001C */  lw         $s0, 0x1c($sp)
/* 48B64 80047F64 8FB10020 */  lw         $s1, 0x20($sp)
/* 48B68 80047F68 8FB20024 */  lw         $s2, 0x24($sp)
/* 48B6C 80047F6C 8FB30028 */  lw         $s3, 0x28($sp)
/* 48B70 80047F70 03E00008 */  jr         $ra
/* 48B74 80047F74 27BD0090 */   addiu     $sp, $sp, 0x90
/* 48B78 80047F78 00000000 */  nop
/* 48B7C 80047F7C 00000000 */  nop
