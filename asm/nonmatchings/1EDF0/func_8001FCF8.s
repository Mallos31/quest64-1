glabel func_8001FCF8
/* 208F8 8001FCF8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 208FC 8001FCFC AFB00030 */  sw         $s0, 0x30($sp)
/* 20900 8001FD00 AFA5005C */  sw         $a1, 0x5c($sp)
/* 20904 8001FD04 AFA60060 */  sw         $a2, 0x60($sp)
/* 20908 8001FD08 AFA70064 */  sw         $a3, 0x64($sp)
/* 2090C 8001FD0C 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 20910 8001FD10 30CFFFFF */  andi       $t7, $a2, 0xffff
/* 20914 8001FD14 0007C400 */  sll        $t8, $a3, 0x10
/* 20918 8001FD18 00183C03 */  sra        $a3, $t8, 0x10
/* 2091C 8001FD1C 01E03025 */  or         $a2, $t7, $zero
/* 20920 8001FD20 01C02825 */  or         $a1, $t6, $zero
/* 20924 8001FD24 00808025 */  or         $s0, $a0, $zero
/* 20928 8001FD28 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2092C 8001FD2C 3C038005 */  lui        $v1, %hi(D_8004D2CC)
/* 20930 8001FD30 8E0A0068 */  lw         $t2, 0x68($s0)
/* 20934 8001FD34 2463D2CC */  addiu      $v1, $v1, %lo(D_8004D2CC)
/* 20938 8001FD38 00001025 */  or         $v0, $zero, $zero
/* 2093C 8001FD3C 00A04025 */  or         $t0, $a1, $zero
.L8001FD40:
/* 20940 8001FD40 946C0000 */  lhu        $t4, ($v1)
/* 20944 8001FD44 01886824 */  and        $t5, $t4, $t0
/* 20948 8001FD48 51A00007 */  beql       $t5, $zero, .L8001FD68
/* 2094C 8001FD4C 24420001 */   addiu     $v0, $v0, 1
/* 20950 8001FD50 01421821 */  addu       $v1, $t2, $v0
/* 20954 8001FD54 A0660012 */  sb         $a2, 0x12($v1)
/* 20958 8001FD58 A0670022 */  sb         $a3, 0x22($v1)
/* 2095C 8001FD5C 10000006 */  b          .L8001FD78
/* 20960 8001FD60 00001025 */   or        $v0, $zero, $zero
/* 20964 8001FD64 24420001 */  addiu      $v0, $v0, 1
.L8001FD68:
/* 20968 8001FD68 2C410007 */  sltiu      $at, $v0, 7
/* 2096C 8001FD6C 1420FFF4 */  bnez       $at, .L8001FD40
/* 20970 8001FD70 24630002 */   addiu     $v1, $v1, 2
/* 20974 8001FD74 00001025 */  or         $v0, $zero, $zero
.L8001FD78:
/* 20978 8001FD78 3C038005 */  lui        $v1, %hi(D_8004D2DC)
/* 2097C 8001FD7C 2463D2DC */  addiu      $v1, $v1, %lo(D_8004D2DC)
/* 20980 8001FD80 24040004 */  addiu      $a0, $zero, 4
.L8001FD84:
/* 20984 8001FD84 946E0000 */  lhu        $t6, ($v1)
/* 20988 8001FD88 0002C080 */  sll        $t8, $v0, 2
/* 2098C 8001FD8C 01584821 */  addu       $t1, $t2, $t8
/* 20990 8001FD90 01C87824 */  and        $t7, $t6, $t0
/* 20994 8001FD94 51E0004E */  beql       $t7, $zero, .L8001FED0
/* 20998 8001FD98 24420001 */   addiu     $v0, $v0, 1
/* 2099C 8001FD9C 8D390044 */  lw         $t9, 0x44($t1)
/* 209A0 8001FDA0 1720004A */  bnez       $t9, .L8001FECC
/* 209A4 8001FDA4 01426021 */   addu      $t4, $t2, $v0
/* 209A8 8001FDA8 3C0E803B */  lui        $t6, %hi(D_803A8E0C)
/* 209AC 8001FDAC A1870032 */  sb         $a3, 0x32($t4)
/* 209B0 8001FDB0 25CE8E0C */  addiu      $t6, $t6, %lo(D_803A8E0C)
/* 209B4 8001FDB4 00066900 */  sll        $t5, $a2, 4
/* 209B8 8001FDB8 01AE1821 */  addu       $v1, $t5, $t6
/* 209BC 8001FDBC 3C088009 */  lui        $t0, %hi(D_8008C748)
/* 209C0 8001FDC0 3C013F80 */  lui        $at, 0x3f80
/* 209C4 8001FDC4 C4640008 */  lwc1       $f4, 8($v1)
/* 209C8 8001FDC8 C466000C */  lwc1       $f6, 0xc($v1)
/* 209CC 8001FDCC 44814000 */  mtc1       $at, $f8
/* 209D0 8001FDD0 2508C748 */  addiu      $t0, $t0, %lo(D_8008C748)
/* 209D4 8001FDD4 E5040000 */  swc1       $f4, ($t0)
/* 209D8 8001FDD8 E5060004 */  swc1       $f6, 4($t0)
/* 209DC 8001FDDC E5080008 */  swc1       $f8, 8($t0)
/* 209E0 8001FDE0 846F0000 */  lh         $t7, ($v1)
/* 209E4 8001FDE4 8E040064 */  lw         $a0, 0x64($s0)
/* 209E8 8001FDE8 3C19803B */  lui        $t9, %hi(D_803A8DD8)
/* 209EC 8001FDEC 000FC080 */  sll        $t8, $t7, 2
/* 209F0 8001FDF0 948C0000 */  lhu        $t4, ($a0)
/* 209F4 8001FDF4 030FC021 */  addu       $t8, $t8, $t7
/* 209F8 8001FDF8 0018C040 */  sll        $t8, $t8, 1
/* 209FC 8001FDFC 27398DD8 */  addiu      $t9, $t9, %lo(D_803A8DD8)
/* 20A00 8001FE00 24010001 */  addiu      $at, $zero, 1
/* 20A04 8001FE04 1581000F */  bne        $t4, $at, .L8001FE44
/* 20A08 8001FE08 03195821 */   addu      $t3, $t8, $t9
/* 20A0C 8001FE0C 94650004 */  lhu        $a1, 4($v1)
/* 20A10 8001FE10 30AD0100 */  andi       $t5, $a1, 0x100
/* 20A14 8001FE14 51A00005 */  beql       $t5, $zero, .L8001FE2C
/* 20A18 8001FE18 C48A0018 */   lwc1      $f10, 0x18($a0)
/* 20A1C 8001FE1C 8E0E0068 */  lw         $t6, 0x68($s0)
/* 20A20 8001FE20 1000001B */  b          .L8001FE90
/* 20A24 8001FE24 C5C00094 */   lwc1      $f0, 0x94($t6)
/* 20A28 8001FE28 C48A0018 */  lwc1       $f10, 0x18($a0)
.L8001FE2C:
/* 20A2C 8001FE2C C6100024 */  lwc1       $f16, 0x24($s0)
/* 20A30 8001FE30 8E0F0068 */  lw         $t7, 0x68($s0)
/* 20A34 8001FE34 46105482 */  mul.s      $f18, $f10, $f16
/* 20A38 8001FE38 C5E40094 */  lwc1       $f4, 0x94($t7)
/* 20A3C 8001FE3C 10000014 */  b          .L8001FE90
/* 20A40 8001FE40 46122001 */   sub.s     $f0, $f4, $f18
.L8001FE44:
/* 20A44 8001FE44 94650004 */  lhu        $a1, 4($v1)
/* 20A48 8001FE48 3C013FE0 */  lui        $at, 0x3fe0
/* 20A4C 8001FE4C 30B80100 */  andi       $t8, $a1, 0x100
/* 20A50 8001FE50 5300000F */  beql       $t8, $zero, .L8001FE90
/* 20A54 8001FE54 C6000004 */   lwc1      $f0, 4($s0)
/* 20A58 8001FE58 C486001C */  lwc1       $f6, 0x1c($a0)
/* 20A5C 8001FE5C 44815800 */  mtc1       $at, $f11
/* 20A60 8001FE60 44805000 */  mtc1       $zero, $f10
/* 20A64 8001FE64 46003221 */  cvt.d.s    $f8, $f6
/* 20A68 8001FE68 C6040024 */  lwc1       $f4, 0x24($s0)
/* 20A6C 8001FE6C 462A4402 */  mul.d      $f16, $f8, $f10
/* 20A70 8001FE70 C6080004 */  lwc1       $f8, 4($s0)
/* 20A74 8001FE74 460024A1 */  cvt.d.s    $f18, $f4
/* 20A78 8001FE78 460042A1 */  cvt.d.s    $f10, $f8
/* 20A7C 8001FE7C 46328182 */  mul.d      $f6, $f16, $f18
/* 20A80 8001FE80 46265100 */  add.d      $f4, $f10, $f6
/* 20A84 8001FE84 10000002 */  b          .L8001FE90
/* 20A88 8001FE88 46202020 */   cvt.s.d   $f0, $f4
/* 20A8C 8001FE8C C6000004 */  lwc1       $f0, 4($s0)
.L8001FE90:
/* 20A90 8001FE90 C6100008 */  lwc1       $f16, 8($s0)
/* 20A94 8001FE94 8E060000 */  lw         $a2, ($s0)
/* 20A98 8001FE98 44809000 */  mtc1       $zero, $f18
/* 20A9C 8001FE9C 44070000 */  mfc1       $a3, $f0
/* 20AA0 8001FEA0 AFA90038 */  sw         $t1, 0x38($sp)
/* 20AA4 8001FEA4 AFB00020 */  sw         $s0, 0x20($sp)
/* 20AA8 8001FEA8 AFA8001C */  sw         $t0, 0x1c($sp)
/* 20AAC 8001FEAC AFAB0018 */  sw         $t3, 0x18($sp)
/* 20AB0 8001FEB0 94640002 */  lhu        $a0, 2($v1)
/* 20AB4 8001FEB4 E7B00010 */  swc1       $f16, 0x10($sp)
/* 20AB8 8001FEB8 0C005DFE */  jal        func_800177F8
/* 20ABC 8001FEBC E7B20014 */   swc1      $f18, 0x14($sp)
/* 20AC0 8001FEC0 8FA90038 */  lw         $t1, 0x38($sp)
/* 20AC4 8001FEC4 10000004 */  b          .L8001FED8
/* 20AC8 8001FEC8 AD220044 */   sw        $v0, 0x44($t1)
.L8001FECC:
/* 20ACC 8001FECC 24420001 */  addiu      $v0, $v0, 1
.L8001FED0:
/* 20AD0 8001FED0 1444FFAC */  bne        $v0, $a0, .L8001FD84
/* 20AD4 8001FED4 24630002 */   addiu     $v1, $v1, 2
.L8001FED8:
/* 20AD8 8001FED8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 20ADC 8001FEDC 8FB00030 */  lw         $s0, 0x30($sp)
/* 20AE0 8001FEE0 27BD0058 */  addiu      $sp, $sp, 0x58
/* 20AE4 8001FEE4 03E00008 */  jr         $ra
/* 20AE8 8001FEE8 00000000 */   nop