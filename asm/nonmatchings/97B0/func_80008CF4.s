glabel func_80008CF4
/* 98F4 80008CF4 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 98F8 80008CF8 AFB60048 */  sw         $s6, 0x48($sp)
/* 98FC 80008CFC 3C168008 */  lui        $s6, %hi(D_8007D08C)
/* 9900 80008D00 3C058008 */  lui        $a1, %hi(gMasterGfxPos)
/* 9904 80008D04 24A5B2FC */  addiu      $a1, $a1, %lo(gMasterGfxPos)
/* 9908 80008D08 26D6D08C */  addiu      $s6, $s6, %lo(D_8007D08C)
/* 990C 80008D0C AFBF0054 */  sw         $ra, 0x54($sp)
/* 9910 80008D10 AFBE0050 */  sw         $fp, 0x50($sp)
/* 9914 80008D14 AFB7004C */  sw         $s7, 0x4C($sp)
/* 9918 80008D18 AFB50044 */  sw         $s5, 0x44($sp)
/* 991C 80008D1C AFB40040 */  sw         $s4, 0x40($sp)
/* 9920 80008D20 AFB3003C */  sw         $s3, 0x3C($sp)
/* 9924 80008D24 AFB20038 */  sw         $s2, 0x38($sp)
/* 9928 80008D28 AFB10034 */  sw         $s1, 0x34($sp)
/* 992C 80008D2C AFB00030 */  sw         $s0, 0x30($sp)
/* 9930 80008D30 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 9934 80008D34 AFA40058 */  sw         $a0, 0x58($sp)
/* 9938 80008D38 3C148008 */  lui        $s4, %hi(D_8007D090)
/* 993C 80008D3C AEC00000 */  sw         $zero, 0x0($s6)
/* 9940 80008D40 2694D090 */  addiu      $s4, $s4, %lo(D_8007D090)
/* 9944 80008D44 8CA30000 */  lw         $v1, 0x0($a1)
/* 9948 80008D48 3C0FBA00 */  lui        $t7, (0xBA000C02 >> 16)
/* 994C 80008D4C 35EF0C02 */  ori        $t7, $t7, (0xBA000C02 & 0xFFFF)
/* 9950 80008D50 246E0008 */  addiu      $t6, $v1, 0x8
/* 9954 80008D54 ACAE0000 */  sw         $t6, 0x0($a1)
/* 9958 80008D58 24182000 */  addiu      $t8, $zero, 0x2000
/* 995C 80008D5C AC780004 */  sw         $t8, 0x4($v1)
/* 9960 80008D60 AC6F0000 */  sw         $t7, 0x0($v1)
/* 9964 80008D64 3C138008 */  lui        $s3, %hi(D_8007C990)
/* 9968 80008D68 8E73C990 */  lw         $s3, %lo(D_8007C990)($s3)
/* 996C 80008D6C 3C128008 */  lui        $s2, %hi(D_8007C998)
/* 9970 80008D70 2652C998 */  addiu      $s2, $s2, %lo(D_8007C998)
/* 9974 80008D74 12600052 */  beqz       $s3, .L80008EC0
/* 9978 80008D78 3C1E8008 */   lui       $fp, %hi(D_8007D0A8)
/* 997C 80008D7C 27DED0A8 */  addiu      $fp, $fp, %lo(D_8007D0A8)
/* 9980 80008D80 2417FFFF */  addiu      $s7, $zero, -0x1
/* 9984 80008D84 2415000C */  addiu      $s5, $zero, 0xC
.L80008D88:
/* 9988 80008D88 86590074 */  lh         $t9, 0x74($s2)
/* 998C 80008D8C 26500024 */  addiu      $s0, $s2, 0x24
/* 9990 80008D90 24010001 */  addiu      $at, $zero, 0x1
/* 9994 80008D94 12F90048 */  beq        $s7, $t9, .L80008EB8
/* 9998 80008D98 00000000 */   nop
/* 999C 80008D9C 8E020064 */  lw         $v0, 0x64($s0)
/* 99A0 80008DA0 86090050 */  lh         $t1, 0x50($s0)
/* 99A4 80008DA4 8FC80000 */  lw         $t0, 0x0($fp)
/* 99A8 80008DA8 944C0000 */  lhu        $t4, 0x0($v0)
/* 99AC 80008DAC C6000004 */  lwc1       $f0, 0x4($s0)
/* 99B0 80008DB0 00095080 */  sll        $t2, $t1, 2
/* 99B4 80008DB4 010A5821 */  addu       $t3, $t0, $t2
/* 99B8 80008DB8 8D710000 */  lw         $s1, 0x0($t3)
/* 99BC 80008DBC 15810010 */  bne        $t4, $at, .L80008E00
/* 99C0 80008DC0 46000506 */   mov.s     $f20, $f0
/* 99C4 80008DC4 3C018008 */  lui        $at, %hi(D_8007BAD0)
/* 99C8 80008DC8 C422BAD0 */  lwc1       $f2, %lo(D_8007BAD0)($at)
/* 99CC 80008DCC C444001C */  lwc1       $f4, 0x1C($v0)
/* 99D0 80008DD0 C6060024 */  lwc1       $f6, 0x24($s0)
/* 99D4 80008DD4 4602003C */  c.lt.s     $f0, $f2
/* 99D8 80008DD8 46062302 */  mul.s      $f12, $f4, $f6
/* 99DC 80008DDC 45020004 */  bc1fl      .L80008DF0
/* 99E0 80008DE0 460C0200 */   add.s     $f8, $f0, $f12
/* 99E4 80008DE4 E6020004 */  swc1       $f2, 0x4($s0)
/* 99E8 80008DE8 C6000004 */  lwc1       $f0, 0x4($s0)
/* 99EC 80008DEC 460C0200 */  add.s      $f8, $f0, $f12
.L80008DF0:
/* 99F0 80008DF0 8E0D0068 */  lw         $t5, 0x68($s0)
/* 99F4 80008DF4 E6080004 */  swc1       $f8, 0x4($s0)
/* 99F8 80008DF8 C60A0004 */  lwc1       $f10, 0x4($s0)
/* 99FC 80008DFC E5AA0094 */  swc1       $f10, 0x94($t5)
.L80008E00:
/* 9A00 80008E00 860E0052 */  lh         $t6, 0x52($s0)
/* 9A04 80008E04 24040001 */  addiu      $a0, $zero, 0x1
/* 9A08 80008E08 02002825 */  or         $a1, $s0, $zero
/* 9A0C 80008E0C 01D50019 */  multu      $t6, $s5
/* 9A10 80008E10 8FA70058 */  lw         $a3, 0x58($sp)
/* 9A14 80008E14 00007812 */  mflo       $t7
/* 9A18 80008E18 01F13021 */  addu       $a2, $t7, $s1
/* 9A1C 80008E1C 0C0076CE */  jal        func_8001DB38
/* 9A20 80008E20 00000000 */   nop
/* 9A24 80008E24 86180052 */  lh         $t8, 0x52($s0)
/* 9A28 80008E28 96040058 */  lhu        $a0, 0x58($s0)
/* 9A2C 80008E2C 02002825 */  or         $a1, $s0, $zero
/* 9A30 80008E30 03150019 */  multu      $t8, $s5
/* 9A34 80008E34 0000C812 */  mflo       $t9
/* 9A38 80008E38 03313021 */  addu       $a2, $t9, $s1
/* 9A3C 80008E3C 0C00782B */  jal        func_8001E0AC
/* 9A40 80008E40 00000000 */   nop
/* 9A44 80008E44 8E090064 */  lw         $t1, 0x64($s0)
/* 9A48 80008E48 E6140004 */  swc1       $f20, 0x4($s0)
/* 9A4C 80008E4C 24010002 */  addiu      $at, $zero, 0x2
/* 9A50 80008E50 95280000 */  lhu        $t0, 0x0($t1)
/* 9A54 80008E54 51010013 */  beql       $t0, $at, .L80008EA4
/* 9A58 80008E58 AE900000 */   sw        $s0, 0x0($s4)
/* 9A5C 80008E5C 960A0062 */  lhu        $t2, 0x62($s0)
/* 9A60 80008E60 314B8000 */  andi       $t3, $t2, 0x8000
/* 9A64 80008E64 5560000F */  bnel       $t3, $zero, .L80008EA4
/* 9A68 80008E68 AE900000 */   sw        $s0, 0x0($s4)
/* 9A6C 80008E6C C6100030 */  lwc1       $f16, 0x30($s0)
/* 9A70 80008E70 C60C0000 */  lwc1       $f12, 0x0($s0)
/* 9A74 80008E74 C60E0004 */  lwc1       $f14, 0x4($s0)
/* 9A78 80008E78 8E060008 */  lw         $a2, 0x8($s0)
/* 9A7C 80008E7C 8E07002C */  lw         $a3, 0x2C($s0)
/* 9A80 80008E80 E7B00010 */  swc1       $f16, 0x10($sp)
/* 9A84 80008E84 C6120034 */  lwc1       $f18, 0x34($s0)
/* 9A88 80008E88 E7B20014 */  swc1       $f18, 0x14($sp)
/* 9A8C 80008E8C C6060024 */  lwc1       $f6, 0x24($s0)
/* 9A90 80008E90 C6040028 */  lwc1       $f4, 0x28($s0)
/* 9A94 80008E94 46062202 */  mul.s      $f8, $f4, $f6
/* 9A98 80008E98 0C004618 */  jal        func_80011860
/* 9A9C 80008E9C E7A80018 */   swc1      $f8, 0x18($sp)
/* 9AA0 80008EA0 AE900000 */  sw         $s0, 0x0($s4)
.L80008EA4:
/* 9AA4 80008EA4 8ECC0000 */  lw         $t4, 0x0($s6)
/* 9AA8 80008EA8 26940004 */  addiu      $s4, $s4, 0x4
/* 9AAC 80008EAC 2673FFFF */  addiu      $s3, $s3, -0x1
/* 9AB0 80008EB0 258D0001 */  addiu      $t5, $t4, 0x1
/* 9AB4 80008EB4 AECD0000 */  sw         $t5, 0x0($s6)
.L80008EB8:
/* 9AB8 80008EB8 1660FFB3 */  bnez       $s3, .L80008D88
/* 9ABC 80008EBC 26520128 */   addiu     $s2, $s2, 0x128
.L80008EC0:
/* 9AC0 80008EC0 8FBF0054 */  lw         $ra, 0x54($sp)
/* 9AC4 80008EC4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 9AC8 80008EC8 8FB00030 */  lw         $s0, 0x30($sp)
/* 9ACC 80008ECC 8FB10034 */  lw         $s1, 0x34($sp)
/* 9AD0 80008ED0 8FB20038 */  lw         $s2, 0x38($sp)
/* 9AD4 80008ED4 8FB3003C */  lw         $s3, 0x3C($sp)
/* 9AD8 80008ED8 8FB40040 */  lw         $s4, 0x40($sp)
/* 9ADC 80008EDC 8FB50044 */  lw         $s5, 0x44($sp)
/* 9AE0 80008EE0 8FB60048 */  lw         $s6, 0x48($sp)
/* 9AE4 80008EE4 8FB7004C */  lw         $s7, 0x4C($sp)
/* 9AE8 80008EE8 8FBE0050 */  lw         $fp, 0x50($sp)
/* 9AEC 80008EEC 03E00008 */  jr         $ra
/* 9AF0 80008EF0 27BD0058 */   addiu     $sp, $sp, 0x58
