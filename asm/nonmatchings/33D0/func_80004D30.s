glabel func_80004D30
/* 5930 80004D30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5934 80004D34 44800000 */  mtc1       $zero, $f0
/* 5938 80004D38 AFBF001C */  sw         $ra, 0x1C($sp)
/* 593C 80004D3C E7AC0020 */  swc1       $f12, 0x20($sp)
/* 5940 80004D40 00C02025 */  or         $a0, $a2, $zero
/* 5944 80004D44 E4800020 */  swc1       $f0, 0x20($a0)
/* 5948 80004D48 E4800018 */  swc1       $f0, 0x18($a0)
/* 594C 80004D4C C7A40020 */  lwc1       $f4, 0x20($sp)
/* 5950 80004D50 C7A60020 */  lwc1       $f6, 0x20($sp)
/* 5954 80004D54 46002032 */  c.eq.s     $f4, $f0
/* 5958 80004D58 00000000 */  nop
/* 595C 80004D5C 45000005 */  bc1f       .L80004D74
/* 5960 80004D60 00000000 */   nop
/* 5964 80004D64 46007032 */  c.eq.s     $f14, $f0
/* 5968 80004D68 3C058008 */  lui        $a1, %hi(D_8007BC2C)
/* 596C 80004D6C 45010029 */  bc1t       .L80004E14
/* 5970 80004D70 00000000 */   nop
.L80004D74:
/* 5974 80004D74 46063202 */  mul.s      $f8, $f6, $f6
/* 5978 80004D78 AFA7002C */  sw         $a3, 0x2C($sp)
/* 597C 80004D7C 460E7282 */  mul.s      $f10, $f14, $f14
/* 5980 80004D80 0C00D3D8 */  jal        _nsqrtf
/* 5984 80004D84 460A4300 */   add.s     $f12, $f8, $f10
/* 5988 80004D88 3C018007 */  lui        $at, %hi(D_80070FD0)
/* 598C 80004D8C D4320FD0 */  ldc1       $f18, %lo(D_80070FD0)($at)
/* 5990 80004D90 46000421 */  cvt.d.s    $f16, $f0
/* 5994 80004D94 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 5998 80004D98 46328102 */  mul.d      $f4, $f16, $f18
/* 599C 80004D9C 44813800 */  mtc1       $at, $f7
/* 59A0 80004DA0 44803000 */  mtc1       $zero, $f6
/* 59A4 80004DA4 44805000 */  mtc1       $zero, $f10
/* 59A8 80004DA8 8FA7002C */  lw         $a3, 0x2C($sp)
/* 59AC 80004DAC 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 59B0 80004DB0 240E0002 */  addiu      $t6, $zero, 0x2
/* 59B4 80004DB4 240F001E */  addiu      $t7, $zero, 0x1E
/* 59B8 80004DB8 46202320 */  cvt.s.d    $f12, $f4
/* 59BC 80004DBC 24180001 */  addiu      $t8, $zero, 0x1
/* 59C0 80004DC0 46006221 */  cvt.d.s    $f8, $f12
/* 59C4 80004DC4 4628303C */  c.lt.d     $f6, $f8
/* 59C8 80004DC8 00000000 */  nop
/* 59CC 80004DCC 45020004 */  bc1fl      .L80004DE0
/* 59D0 80004DD0 3C013FF8 */   lui       $at, (0x3FF80000 >> 16)
/* 59D4 80004DD4 44816000 */  mtc1       $at, $f12
/* 59D8 80004DD8 00000000 */  nop
/* 59DC 80004DDC 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
.L80004DE0:
/* 59E0 80004DE0 44815800 */  mtc1       $at, $f11
/* 59E4 80004DE4 46006421 */  cvt.d.s    $f16, $f12
/* 59E8 80004DE8 3C018008 */  lui        $at, %hi(D_8007BC28)
/* 59EC 80004DEC 4630503C */  c.lt.d     $f10, $f16
/* 59F0 80004DF0 00000000 */  nop
/* 59F4 80004DF4 45000005 */  bc1f       .L80004E0C
/* 59F8 80004DF8 00000000 */   nop
/* 59FC 80004DFC A4EE0000 */  sh         $t6, 0x0($a3)
/* 5A00 80004E00 A4EF0004 */  sh         $t7, 0x4($a3)
/* 5A04 80004E04 10000010 */  b          .L80004E48
/* 5A08 80004E08 A420BC28 */   sh        $zero, %lo(D_8007BC28)($at)
.L80004E0C:
/* 5A0C 80004E0C 1000000E */  b          .L80004E48
/* 5A10 80004E10 A4F80000 */   sh        $t8, 0x0($a3)
.L80004E14:
/* 5A14 80004E14 8CA5BC2C */  lw         $a1, %lo(D_8007BC2C)($a1)
/* 5A18 80004E18 84990052 */  lh         $t9, 0x52($a0)
/* 5A1C 80004E1C 50B9000B */  beql       $a1, $t9, .L80004E4C
/* 5A20 80004E20 8FBF001C */   lw        $ra, 0x1C($sp)
/* 5A24 80004E24 8488005A */  lh         $t0, 0x5A($a0)
/* 5A28 80004E28 24060001 */  addiu      $a2, $zero, 0x1
/* 5A2C 80004E2C 00A03825 */  or         $a3, $a1, $zero
/* 5A30 80004E30 10A80005 */  beq        $a1, $t0, .L80004E48
/* 5A34 80004E34 24090001 */   addiu     $t1, $zero, 0x1
/* 5A38 80004E38 240A0001 */  addiu      $t2, $zero, 0x1
/* 5A3C 80004E3C AFAA0014 */  sw         $t2, 0x14($sp)
/* 5A40 80004E40 0C00762C */  jal        func_8001D8B0
/* 5A44 80004E44 AFA90010 */   sw        $t1, 0x10($sp)
.L80004E48:
/* 5A48 80004E48 8FBF001C */  lw         $ra, 0x1C($sp)
.L80004E4C:
/* 5A4C 80004E4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5A50 80004E50 03E00008 */  jr         $ra
/* 5A54 80004E54 00000000 */   nop
