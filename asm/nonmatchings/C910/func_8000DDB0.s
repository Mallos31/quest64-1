.section .late_rodata
glabel D_80071208
/* 71E08 80071208 C00921FB54442D18 */ .double -3.14159265358979312

glabel D_80071210
/* 71E10 80071210 401921FB54442D18 */ .double 6.28318530717958623

glabel D_80071218
/* 71E18 80071218 400921FB54442D18 */ .double 3.14159265358979312

glabel D_80071220
/* 71E20 80071220 44BB8000 */ .float 1500
/* 71E24 80071224 00000000 */ .float 0

glabel D_80071228
/* 71E28 80071228 404CA5DC1A63C1F8 */ .double 57.2957795130823229


.section .text
glabel func_8000DDB0
/* E9B0 8000DDB0 27BDFF00 */  addiu      $sp, $sp, -0x100
/* E9B4 8000DDB4 AFB5006C */  sw         $s5, 0x6C($sp)
/* E9B8 8000DDB8 AFB40068 */  sw         $s4, 0x68($sp)
/* E9BC 8000DDBC 00A0A025 */  or         $s4, $a1, $zero
/* E9C0 8000DDC0 00E0A825 */  or         $s5, $a3, $zero
/* E9C4 8000DDC4 AFBF007C */  sw         $ra, 0x7C($sp)
/* E9C8 8000DDC8 AFBE0078 */  sw         $fp, 0x78($sp)
/* E9CC 8000DDCC AFB70074 */  sw         $s7, 0x74($sp)
/* E9D0 8000DDD0 AFB60070 */  sw         $s6, 0x70($sp)
/* E9D4 8000DDD4 AFB30064 */  sw         $s3, 0x64($sp)
/* E9D8 8000DDD8 AFB20060 */  sw         $s2, 0x60($sp)
/* E9DC 8000DDDC AFB1005C */  sw         $s1, 0x5C($sp)
/* E9E0 8000DDE0 AFB00058 */  sw         $s0, 0x58($sp)
/* E9E4 8000DDE4 F7BE0050 */  sdc1       $f30, 0x50($sp)
/* E9E8 8000DDE8 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* E9EC 8000DDEC F7BA0040 */  sdc1       $f26, 0x40($sp)
/* E9F0 8000DDF0 F7B80038 */  sdc1       $f24, 0x38($sp)
/* E9F4 8000DDF4 F7B60030 */  sdc1       $f22, 0x30($sp)
/* E9F8 8000DDF8 F7B40028 */  sdc1       $f20, 0x28($sp)
/* E9FC 8000DDFC AFA40100 */  sw         $a0, 0x100($sp)
/* EA00 8000DE00 AFA60108 */  sw         $a2, 0x108($sp)
/* EA04 8000DE04 3C0E8008 */  lui        $t6, %hi(gMapData)
/* EA08 8000DE08 8DCE4F18 */  lw         $t6, %lo(gMapData)($t6)
/* EA0C 8000DE0C 8FAF0108 */  lw         $t7, 0x108($sp)
/* EA10 8000DE10 00009825 */  or         $s3, $zero, $zero
/* EA14 8000DE14 8DC30020 */  lw         $v1, 0x20($t6)
/* EA18 8000DE18 000FC0C0 */  sll        $t8, $t7, 3
/* EA1C 8000DE1C 3C018007 */  lui        $at, %hi(D_80071208)
/* EA20 8000DE20 00781021 */  addu       $v0, $v1, $t8
/* EA24 8000DE24 8C590000 */  lw         $t9, 0x0($v0)
/* EA28 8000DE28 27BE00B0 */  addiu      $fp, $sp, 0xB0
/* EA2C 8000DE2C 3C170600 */  lui        $s7, (0x6000000 >> 16)
/* EA30 8000DE30 AFB900A4 */  sw         $t9, 0xA4($sp)
/* EA34 8000DE34 8C480004 */  lw         $t0, 0x4($v0)
/* EA38 8000DE38 3C168008 */  lui        $s6, %hi(D_80086DC0)
/* EA3C 8000DE3C 128000A1 */  beqz       $s4, .L8000E0C4
/* EA40 8000DE40 AFA800A0 */   sw        $t0, 0xA0($sp)
/* EA44 8000DE44 D43E1208 */  ldc1       $f30, %lo(D_80071208)($at)
/* EA48 8000DE48 3C018007 */  lui        $at, %hi(D_80071210)
/* EA4C 8000DE4C D43A1210 */  ldc1       $f26, %lo(D_80071210)($at)
/* EA50 8000DE50 3C018007 */  lui        $at, %hi(D_80071218)
/* EA54 8000DE54 3C128008 */  lui        $s2, %hi(D_8007B2F8)
/* EA58 8000DE58 3C118008 */  lui        $s1, %hi(gMasterGfxPos)
/* EA5C 8000DE5C 4480E000 */  mtc1       $zero, $f28
/* EA60 8000DE60 2631B2FC */  addiu      $s1, $s1, %lo(gMasterGfxPos)
/* EA64 8000DE64 2652B2F8 */  addiu      $s2, $s2, %lo(D_8007B2F8)
/* EA68 8000DE68 D4381218 */  ldc1       $f24, %lo(D_80071218)($at)
/* EA6C 8000DE6C 26D66DC0 */  addiu      $s6, $s6, %lo(D_80086DC0)
/* EA70 8000DE70 8EB00000 */  lw         $s0, 0x0($s5)
.L8000DE74:
/* EA74 8000DE74 8FA90108 */  lw         $t1, 0x108($sp)
/* EA78 8000DE78 26B50004 */  addiu      $s5, $s5, 0x4
/* EA7C 8000DE7C 860A0014 */  lh         $t2, 0x14($s0)
/* EA80 8000DE80 552A008E */  bnel       $t1, $t2, .L8000E0BC
/* EA84 8000DE84 2694FFFF */   addiu     $s4, $s4, -0x1
/* EA88 8000DE88 C6040000 */  lwc1       $f4, 0x0($s0)
/* EA8C 8000DE8C C6C6000C */  lwc1       $f6, 0xC($s6)
/* EA90 8000DE90 C6080008 */  lwc1       $f8, 0x8($s0)
/* EA94 8000DE94 C6CA0014 */  lwc1       $f10, 0x14($s6)
/* EA98 8000DE98 46062501 */  sub.s      $f20, $f4, $f6
/* EA9C 8000DE9C 460A4581 */  sub.s      $f22, $f8, $f10
/* EAA0 8000DEA0 4614A402 */  mul.s      $f16, $f20, $f20
/* EAA4 8000DEA4 00000000 */  nop
/* EAA8 8000DEA8 4616B482 */  mul.s      $f18, $f22, $f22
/* EAAC 8000DEAC 0C00D3D8 */  jal        _nsqrtf
/* EAB0 8000DEB0 46128300 */   add.s     $f12, $f16, $f18
/* EAB4 8000DEB4 3C018007 */  lui        $at, %hi(D_80071220)
/* EAB8 8000DEB8 C4241220 */  lwc1       $f4, %lo(D_80071220)($at)
/* EABC 8000DEBC 4604003C */  c.lt.s     $f0, $f4
/* EAC0 8000DEC0 00000000 */  nop
/* EAC4 8000DEC4 4502007D */  bc1fl      .L8000E0BC
/* EAC8 8000DEC8 2694FFFF */   addiu     $s4, $s4, -0x1
/* EACC 8000DECC 4600A306 */  mov.s      $f12, $f20
/* EAD0 8000DED0 0C008C84 */  jal        func_80023210
/* EAD4 8000DED4 4600B386 */   mov.s     $f14, $f22
/* EAD8 8000DED8 C6CE002C */  lwc1       $f14, 0x2C($s6)
/* EADC 8000DEDC 3C018007 */  lui        $at, %hi(D_80071228)
/* EAE0 8000DEE0 460E0181 */  sub.s      $f6, $f0, $f14
/* EAE4 8000DEE4 46003221 */  cvt.d.s    $f8, $f6
/* EAE8 8000DEE8 46384280 */  add.d      $f10, $f8, $f24
/* EAEC 8000DEEC 46205320 */  cvt.s.d    $f12, $f10
/* EAF0 8000DEF0 460060A1 */  cvt.d.s    $f2, $f12
/* EAF4 8000DEF4 463E103C */  c.lt.d     $f2, $f30
/* EAF8 8000DEF8 00000000 */  nop
/* EAFC 8000DEFC 45020005 */  bc1fl      .L8000DF14
/* EB00 8000DF00 4622C03C */   c.lt.d    $f24, $f2
/* EB04 8000DF04 463A1400 */  add.d      $f16, $f2, $f26
/* EB08 8000DF08 10000007 */  b          .L8000DF28
/* EB0C 8000DF0C 46208320 */   cvt.s.d   $f12, $f16
/* EB10 8000DF10 4622C03C */  c.lt.d     $f24, $f2
.L8000DF14:
/* EB14 8000DF14 00000000 */  nop
/* EB18 8000DF18 45020004 */  bc1fl      .L8000DF2C
/* EB1C 8000DF1C 461C603C */   c.lt.s    $f12, $f28
/* EB20 8000DF20 463A1481 */  sub.d      $f18, $f2, $f26
/* EB24 8000DF24 46209320 */  cvt.s.d    $f12, $f18
.L8000DF28:
/* EB28 8000DF28 461C603C */  c.lt.s     $f12, $f28
.L8000DF2C:
/* EB2C 8000DF2C 00000000 */  nop
/* EB30 8000DF30 45000002 */  bc1f       .L8000DF3C
/* EB34 8000DF34 00000000 */   nop
/* EB38 8000DF38 46006307 */  neg.s      $f12, $f12
.L8000DF3C:
/* EB3C 8000DF3C D4261228 */  ldc1       $f6, %lo(D_80071228)($at)
/* EB40 8000DF40 46006121 */  cvt.d.s    $f4, $f12
/* EB44 8000DF44 3C018008 */  lui        $at, %hi(D_80086EC8)
/* EB48 8000DF48 46262202 */  mul.d      $f8, $f4, $f6
/* EB4C 8000DF4C C42A6EC8 */  lwc1       $f10, %lo(D_80086EC8)($at)
/* EB50 8000DF50 46204320 */  cvt.s.d    $f12, $f8
/* EB54 8000DF54 460A603C */  c.lt.s     $f12, $f10
/* EB58 8000DF58 00000000 */  nop
/* EB5C 8000DF5C 45020057 */  bc1fl      .L8000E0BC
/* EB60 8000DF60 2694FFFF */   addiu     $s4, $s4, -0x1
/* EB64 8000DF64 16600010 */  bnez       $s3, .L8000DFA8
/* EB68 8000DF68 3C0EBA00 */   lui       $t6, (0xBA000C02 >> 16)
/* EB6C 8000DF6C 8E220000 */  lw         $v0, 0x0($s1)
/* EB70 8000DF70 26730001 */  addiu      $s3, $s3, 0x1
/* EB74 8000DF74 244B0008 */  addiu      $t3, $v0, 0x8
/* EB78 8000DF78 AE2B0000 */  sw         $t3, 0x0($s1)
/* EB7C 8000DF7C AC570000 */  sw         $s7, 0x0($v0)
/* EB80 8000DF80 8FAC00A4 */  lw         $t4, 0xA4($sp)
/* EB84 8000DF84 AC4C0004 */  sw         $t4, 0x4($v0)
/* EB88 8000DF88 8E220000 */  lw         $v0, 0x0($s1)
/* EB8C 8000DF8C 35CE0C02 */  ori        $t6, $t6, (0xBA000C02 & 0xFFFF)
/* EB90 8000DF90 240F2000 */  addiu      $t7, $zero, 0x2000
/* EB94 8000DF94 244D0008 */  addiu      $t5, $v0, 0x8
/* EB98 8000DF98 AE2D0000 */  sw         $t5, 0x0($s1)
/* EB9C 8000DF9C AC4F0004 */  sw         $t7, 0x4($v0)
/* EBA0 8000DFA0 AC4E0000 */  sw         $t6, 0x0($v0)
/* EBA4 8000DFA4 C6CE002C */  lwc1       $f14, 0x2C($s6)
.L8000DFA8:
/* EBA8 8000DFA8 C6100010 */  lwc1       $f16, 0x10($s0)
/* EBAC 8000DFAC 4405E000 */  mfc1       $a1, $f28
/* EBB0 8000DFB0 44067000 */  mfc1       $a2, $f14
/* EBB4 8000DFB4 E7B00010 */  swc1       $f16, 0x10($sp)
/* EBB8 8000DFB8 C6120000 */  lwc1       $f18, 0x0($s0)
/* EBBC 8000DFBC 4407E000 */  mfc1       $a3, $f28
/* EBC0 8000DFC0 03C02025 */  or         $a0, $fp, $zero
/* EBC4 8000DFC4 E7B20014 */  swc1       $f18, 0x14($sp)
/* EBC8 8000DFC8 C6040004 */  lwc1       $f4, 0x4($s0)
/* EBCC 8000DFCC E7A40018 */  swc1       $f4, 0x18($sp)
/* EBD0 8000DFD0 C6060008 */  lwc1       $f6, 0x8($s0)
/* EBD4 8000DFD4 0C008CD8 */  jal        func_80023360
/* EBD8 8000DFD8 E7A6001C */   swc1      $f6, 0x1C($sp)
/* EBDC 8000DFDC 8E590000 */  lw         $t9, 0x0($s2)
/* EBE0 8000DFE0 8FB80100 */  lw         $t8, 0x100($sp)
/* EBE4 8000DFE4 03C02025 */  or         $a0, $fp, $zero
/* EBE8 8000DFE8 00194180 */  sll        $t0, $t9, 6
/* EBEC 8000DFEC 03082821 */  addu       $a1, $t8, $t0
/* EBF0 8000DFF0 0C00D480 */  jal        guMtxF2L
/* EBF4 8000DFF4 24A500C0 */   addiu     $a1, $a1, 0xC0
/* EBF8 8000DFF8 8E220000 */  lw         $v0, 0x0($s1)
/* EBFC 8000DFFC 3C0A0102 */  lui        $t2, (0x1020040 >> 16)
/* EC00 8000E000 354A0040 */  ori        $t2, $t2, (0x1020040 & 0xFFFF)
/* EC04 8000E004 24490008 */  addiu      $t1, $v0, 0x8
/* EC08 8000E008 AE290000 */  sw         $t1, 0x0($s1)
/* EC0C 8000E00C AC4A0000 */  sw         $t2, 0x0($v0)
/* EC10 8000E010 8E4B0000 */  lw         $t3, 0x0($s2)
/* EC14 8000E014 3C0E0200 */  lui        $t6, %hi(D_2000000)
/* EC18 8000E018 25CE0000 */  addiu      $t6, $t6, %lo(D_2000000)
/* EC1C 8000E01C 000B6180 */  sll        $t4, $t3, 6
/* EC20 8000E020 258D00C0 */  addiu      $t5, $t4, 0xC0
/* EC24 8000E024 01AE7821 */  addu       $t7, $t5, $t6
/* EC28 8000E028 AC4F0004 */  sw         $t7, 0x4($v0)
/* EC2C 8000E02C 8E590000 */  lw         $t9, 0x0($s2)
/* EC30 8000E030 27380001 */  addiu      $t8, $t9, 0x1
/* EC34 8000E034 AE580000 */  sw         $t8, 0x0($s2)
/* EC38 8000E038 8E220000 */  lw         $v0, 0x0($s1)
/* EC3C 8000E03C 24480008 */  addiu      $t0, $v0, 0x8
/* EC40 8000E040 AE280000 */  sw         $t0, 0x0($s1)
/* EC44 8000E044 AC570000 */  sw         $s7, 0x0($v0)
/* EC48 8000E048 8FA900A0 */  lw         $t1, 0xA0($sp)
/* EC4C 8000E04C AC490004 */  sw         $t1, 0x4($v0)
/* EC50 8000E050 C608000C */  lwc1       $f8, 0xC($s0)
/* EC54 8000E054 3C0D8008 */  lui        $t5, %hi(D_80084260)
/* EC58 8000E058 25AD4260 */  addiu      $t5, $t5, %lo(D_80084260)
/* EC5C 8000E05C 4600428D */  trunc.w.s  $f10, $f8
/* EC60 8000E060 C60C0000 */  lwc1       $f12, 0x0($s0)
/* EC64 8000E064 C60E0004 */  lwc1       $f14, 0x4($s0)
/* EC68 8000E068 8E060008 */  lw         $a2, 0x8($s0)
/* EC6C 8000E06C 440B5000 */  mfc1       $t3, $f10
/* EC70 8000E070 3C014100 */  lui        $at, (0x41000000 >> 16)
/* EC74 8000E074 44812000 */  mtc1       $at, $f4
/* EC78 8000E078 000B6080 */  sll        $t4, $t3, 2
/* EC7C 8000E07C 018B6023 */  subu       $t4, $t4, $t3
/* EC80 8000E080 000C6080 */  sll        $t4, $t4, 2
/* EC84 8000E084 018D1821 */  addu       $v1, $t4, $t5
/* EC88 8000E088 C4700004 */  lwc1       $f16, 0x4($v1)
/* EC8C 8000E08C 8C670000 */  lw         $a3, 0x0($v1)
/* EC90 8000E090 E7B00010 */  swc1       $f16, 0x10($sp)
/* EC94 8000E094 C4720008 */  lwc1       $f18, 0x8($v1)
/* EC98 8000E098 E7A40018 */  swc1       $f4, 0x18($sp)
/* EC9C 8000E09C 0C004618 */  jal        func_80011860
/* ECA0 8000E0A0 E7B20014 */   swc1      $f18, 0x14($sp)
/* ECA4 8000E0A4 3C0E8008 */  lui        $t6, %hi(D_80084F34)
/* ECA8 8000E0A8 8DCE4F34 */  lw         $t6, %lo(D_80084F34)($t6)
/* ECAC 8000E0AC 3C018008 */  lui        $at, %hi(D_80084F34)
/* ECB0 8000E0B0 25CF0001 */  addiu      $t7, $t6, 0x1
/* ECB4 8000E0B4 AC2F4F34 */  sw         $t7, %lo(D_80084F34)($at)
/* ECB8 8000E0B8 2694FFFF */  addiu      $s4, $s4, -0x1
.L8000E0BC:
/* ECBC 8000E0BC 5680FF6D */  bnel       $s4, $zero, .L8000DE74
/* ECC0 8000E0C0 8EB00000 */   lw        $s0, 0x0($s5)
.L8000E0C4:
/* ECC4 8000E0C4 8FBF007C */  lw         $ra, 0x7C($sp)
/* ECC8 8000E0C8 D7B40028 */  ldc1       $f20, 0x28($sp)
/* ECCC 8000E0CC D7B60030 */  ldc1       $f22, 0x30($sp)
/* ECD0 8000E0D0 D7B80038 */  ldc1       $f24, 0x38($sp)
/* ECD4 8000E0D4 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* ECD8 8000E0D8 D7BC0048 */  ldc1       $f28, 0x48($sp)
/* ECDC 8000E0DC D7BE0050 */  ldc1       $f30, 0x50($sp)
/* ECE0 8000E0E0 8FB00058 */  lw         $s0, 0x58($sp)
/* ECE4 8000E0E4 8FB1005C */  lw         $s1, 0x5C($sp)
/* ECE8 8000E0E8 8FB20060 */  lw         $s2, 0x60($sp)
/* ECEC 8000E0EC 8FB30064 */  lw         $s3, 0x64($sp)
/* ECF0 8000E0F0 8FB40068 */  lw         $s4, 0x68($sp)
/* ECF4 8000E0F4 8FB5006C */  lw         $s5, 0x6C($sp)
/* ECF8 8000E0F8 8FB60070 */  lw         $s6, 0x70($sp)
/* ECFC 8000E0FC 8FB70074 */  lw         $s7, 0x74($sp)
/* ED00 8000E100 8FBE0078 */  lw         $fp, 0x78($sp)
/* ED04 8000E104 03E00008 */  jr         $ra
/* ED08 8000E108 27BD0100 */   addiu     $sp, $sp, 0x100
