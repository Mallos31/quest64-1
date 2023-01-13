.section .late_rodata
glabel D_80071260
/* 71E60 80071260 3F91DF46A2529D39 */ .double 0.0174532925199432955


.section .text
glabel func_8000F0BC
/* FCBC 8000F0BC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* FCC0 8000F0C0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* FCC4 8000F0C4 AFA7005C */  sw         $a3, 0x5C($sp)
/* FCC8 8000F0C8 30EEFFFF */  andi       $t6, $a3, 0xFFFF
/* FCCC 8000F0CC 01C03825 */  or         $a3, $t6, $zero
/* FCD0 8000F0D0 46006506 */  mov.s      $f20, $f12
/* FCD4 8000F0D4 AFBF002C */  sw         $ra, 0x2C($sp)
/* FCD8 8000F0D8 F7B60020 */  sdc1       $f22, 0x20($sp)
/* FCDC 8000F0DC AFA60058 */  sw         $a2, 0x58($sp)
/* FCE0 8000F0E0 3C188008 */  lui        $t8, %hi(D_80084F24)
/* FCE4 8000F0E4 8F184F24 */  lw         $t8, %lo(D_80084F24)($t8)
/* FCE8 8000F0E8 00077880 */  sll        $t7, $a3, 2
/* FCEC 8000F0EC 01E77823 */  subu       $t7, $t7, $a3
/* FCF0 8000F0F0 000F78C0 */  sll        $t7, $t7, 3
/* FCF4 8000F0F4 01F82021 */  addu       $a0, $t7, $t8
/* FCF8 8000F0F8 C488000C */  lwc1       $f8, 0xC($a0)
/* FCFC 8000F0FC 3C018007 */  lui        $at, %hi(D_80071260)
/* FD00 8000F100 D4301260 */  ldc1       $f16, %lo(D_80071260)($at)
/* FD04 8000F104 460042A1 */  cvt.d.s    $f10, $f8
/* FD08 8000F108 C4840000 */  lwc1       $f4, 0x0($a0)
/* FD0C 8000F10C 46305482 */  mul.d      $f18, $f10, $f16
/* FD10 8000F110 84990014 */  lh         $t9, 0x14($a0)
/* FD14 8000F114 4604A501 */  sub.s      $f20, $f20, $f4
/* FD18 8000F118 44802000 */  mtc1       $zero, $f4
/* FD1C 8000F11C 3C0A8008 */  lui        $t2, %hi(D_80084F28)
/* FD20 8000F120 C4860008 */  lwc1       $f6, 0x8($a0)
/* FD24 8000F124 8D4A4F28 */  lw         $t2, %lo(D_80084F28)($t2)
/* FD28 8000F128 00194940 */  sll        $t1, $t9, 5
/* FD2C 8000F12C 462095A0 */  cvt.s.d    $f22, $f18
/* FD30 8000F130 00004025 */  or         $t0, $zero, $zero
/* FD34 8000F134 27A50034 */  addiu      $a1, $sp, 0x34
/* FD38 8000F138 46067381 */  sub.s      $f14, $f14, $f6
/* FD3C 8000F13C 012A1021 */  addu       $v0, $t1, $t2
/* FD40 8000F140 4604B032 */  c.eq.s     $f22, $f4
/* FD44 8000F144 00000000 */  nop
/* FD48 8000F148 4503000F */  bc1tl      .L8000F188
/* FD4C 8000F14C 948B0016 */   lhu       $t3, 0x16($a0)
/* FD50 8000F150 E7B40034 */  swc1       $f20, 0x34($sp)
/* FD54 8000F154 E7AE0038 */  swc1       $f14, 0x38($sp)
/* FD58 8000F158 4600B306 */  mov.s      $f12, $f22
/* FD5C 8000F15C AFA20044 */  sw         $v0, 0x44($sp)
/* FD60 8000F160 AFA40040 */  sw         $a0, 0x40($sp)
/* FD64 8000F164 0C008CBD */  jal        func_800232F4
/* FD68 8000F168 AFA0004C */   sw        $zero, 0x4C($sp)
/* FD6C 8000F16C C7B40034 */  lwc1       $f20, 0x34($sp)
/* FD70 8000F170 8FA20044 */  lw         $v0, 0x44($sp)
/* FD74 8000F174 8FA40040 */  lw         $a0, 0x40($sp)
/* FD78 8000F178 8FA8004C */  lw         $t0, 0x4C($sp)
/* FD7C 8000F17C C7AE0038 */  lwc1       $f14, 0x38($sp)
/* FD80 8000F180 4600A507 */  neg.s      $f20, $f20
/* FD84 8000F184 948B0016 */  lhu        $t3, 0x16($a0)
.L8000F188:
/* FD88 8000F188 8FA30060 */  lw         $v1, 0x60($sp)
/* FD8C 8000F18C 97A7005A */  lhu        $a3, 0x5A($sp)
/* FD90 8000F190 316C00FF */  andi       $t4, $t3, 0xFF
/* FD94 8000F194 29810010 */  slti       $at, $t4, 0x10
/* FD98 8000F198 50200022 */  beql       $at, $zero, .L8000F224
/* FD9C 8000F19C 01001025 */   or        $v0, $t0, $zero
/* FDA0 8000F1A0 8C860010 */  lw         $a2, 0x10($a0)
/* FDA4 8000F1A4 AFA40040 */  sw         $a0, 0x40($sp)
/* FDA8 8000F1A8 AFA30014 */  sw         $v1, 0x14($sp)
/* FDAC 8000F1AC AFA20010 */  sw         $v0, 0x10($sp)
/* FDB0 8000F1B0 0C003C8E */  jal        func_8000F238
/* FDB4 8000F1B4 4600A306 */   mov.s     $f12, $f20
/* FDB8 8000F1B8 8FA30060 */  lw         $v1, 0x60($sp)
/* FDBC 8000F1BC 8FA40040 */  lw         $a0, 0x40($sp)
/* FDC0 8000F1C0 10400017 */  beqz       $v0, .L8000F220
/* FDC4 8000F1C4 00404025 */   or        $t0, $v0, $zero
/* FDC8 8000F1C8 44808000 */  mtc1       $zero, $f16
/* FDCC 8000F1CC C4660004 */  lwc1       $f6, 0x4($v1)
/* FDD0 8000F1D0 C4880004 */  lwc1       $f8, 0x4($a0)
/* FDD4 8000F1D4 4610B032 */  c.eq.s     $f22, $f16
/* FDD8 8000F1D8 46083280 */  add.s      $f10, $f6, $f8
/* FDDC 8000F1DC 45010010 */  bc1t       .L8000F220
/* FDE0 8000F1E0 E46A0004 */   swc1      $f10, 0x4($v1)
/* FDE4 8000F1E4 C472000C */  lwc1       $f18, 0xC($v1)
/* FDE8 8000F1E8 4600B307 */  neg.s      $f12, $f22
/* FDEC 8000F1EC 27A50034 */  addiu      $a1, $sp, 0x34
/* FDF0 8000F1F0 E7B20034 */  swc1       $f18, 0x34($sp)
/* FDF4 8000F1F4 C4640014 */  lwc1       $f4, 0x14($v1)
/* FDF8 8000F1F8 AFA2004C */  sw         $v0, 0x4C($sp)
/* FDFC 8000F1FC 0C008CBD */  jal        func_800232F4
/* FE00 8000F200 E7A40038 */   swc1      $f4, 0x38($sp)
/* FE04 8000F204 C7A60034 */  lwc1       $f6, 0x34($sp)
/* FE08 8000F208 8FA30060 */  lw         $v1, 0x60($sp)
/* FE0C 8000F20C 8FA8004C */  lw         $t0, 0x4C($sp)
/* FE10 8000F210 46003207 */  neg.s      $f8, $f6
/* FE14 8000F214 E468000C */  swc1       $f8, 0xC($v1)
/* FE18 8000F218 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* FE1C 8000F21C E46A0014 */  swc1       $f10, 0x14($v1)
.L8000F220:
/* FE20 8000F220 01001025 */  or         $v0, $t0, $zero
.L8000F224:
/* FE24 8000F224 8FBF002C */  lw         $ra, 0x2C($sp)
/* FE28 8000F228 D7B40018 */  ldc1       $f20, 0x18($sp)
/* FE2C 8000F22C D7B60020 */  ldc1       $f22, 0x20($sp)
/* FE30 8000F230 03E00008 */  jr         $ra
/* FE34 8000F234 27BD0050 */   addiu     $sp, $sp, 0x50
