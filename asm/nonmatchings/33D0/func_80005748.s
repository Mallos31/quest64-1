glabel func_80005748
/* 6348 80005748 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 634C 8000574C AFB00028 */  sw         $s0, 0x28($sp)
/* 6350 80005750 00A08025 */  or         $s0, $a1, $zero
/* 6354 80005754 AFBF002C */  sw         $ra, 0x2C($sp)
/* 6358 80005758 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 635C 8000575C AFA40038 */  sw         $a0, 0x38($sp)
/* 6360 80005760 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 6364 80005764 9442C592 */  lhu        $v0, %lo(D_8008C592)($v0)
/* 6368 80005768 304E0001 */  andi       $t6, $v0, 0x1
/* 636C 8000576C 11C0006F */  beqz       $t6, .L8000592C
/* 6370 80005770 304F0006 */   andi      $t7, $v0, 0x6
/* 6374 80005774 55E0006E */  bnel       $t7, $zero, .L80005930
/* 6378 80005778 26040018 */   addiu     $a0, $s0, 0x18
/* 637C 8000577C C6040000 */  lwc1       $f4, 0x0($s0)
/* 6380 80005780 C6060018 */  lwc1       $f6, 0x18($s0)
/* 6384 80005784 C6100008 */  lwc1       $f16, 0x8($s0)
/* 6388 80005788 C6120020 */  lwc1       $f18, 0x20($s0)
/* 638C 8000578C 46062200 */  add.s      $f8, $f4, $f6
/* 6390 80005790 3C018009 */  lui        $at, %hi(D_8008C5A4)
/* 6394 80005794 C42AC5A4 */  lwc1       $f10, %lo(D_8008C5A4)($at)
/* 6398 80005798 46128100 */  add.s      $f4, $f16, $f18
/* 639C 8000579C 3C018009 */  lui        $at, %hi(D_8008C430)
/* 63A0 800057A0 C426C430 */  lwc1       $f6, %lo(D_8008C430)($at)
/* 63A4 800057A4 460A4501 */  sub.s      $f20, $f8, $f10
/* 63A8 800057A8 AFA60040 */  sw         $a2, 0x40($sp)
/* 63AC 800057AC 46062081 */  sub.s      $f2, $f4, $f6
/* 63B0 800057B0 4614A202 */  mul.s      $f8, $f20, $f20
/* 63B4 800057B4 00000000 */  nop
/* 63B8 800057B8 46021282 */  mul.s      $f10, $f2, $f2
/* 63BC 800057BC E7A20030 */  swc1       $f2, 0x30($sp)
/* 63C0 800057C0 0C00D3D8 */  jal        _nsqrtf
/* 63C4 800057C4 460A4300 */   add.s     $f12, $f8, $f10
/* 63C8 800057C8 8FA60040 */  lw         $a2, 0x40($sp)
/* 63CC 800057CC C7A20030 */  lwc1       $f2, 0x30($sp)
/* 63D0 800057D0 C4D0000C */  lwc1       $f16, 0xC($a2)
/* 63D4 800057D4 C4D20110 */  lwc1       $f18, 0x110($a2)
/* 63D8 800057D8 46128302 */  mul.s      $f12, $f16, $f18
/* 63DC 800057DC 4600603C */  c.lt.s     $f12, $f0
/* 63E0 800057E0 00000000 */  nop
/* 63E4 800057E4 45020012 */  bc1fl      .L80005830
/* 63E8 800057E8 C6040000 */   lwc1      $f4, 0x0($s0)
/* 63EC 800057EC 46146102 */  mul.s      $f4, $f12, $f20
/* 63F0 800057F0 C6080000 */  lwc1       $f8, 0x0($s0)
/* 63F4 800057F4 3C018009 */  lui        $at, %hi(D_8008C5A4)
/* 63F8 800057F8 C430C5A4 */  lwc1       $f16, %lo(D_8008C5A4)($at)
/* 63FC 800057FC 3C018009 */  lui        $at, %hi(D_8008C430)
/* 6400 80005800 46002183 */  div.s      $f6, $f4, $f0
/* 6404 80005804 46026102 */  mul.s      $f4, $f12, $f2
/* 6408 80005808 46083281 */  sub.s      $f10, $f6, $f8
/* 640C 8000580C C6080008 */  lwc1       $f8, 0x8($s0)
/* 6410 80005810 46002183 */  div.s      $f6, $f4, $f0
/* 6414 80005814 46105480 */  add.s      $f18, $f10, $f16
/* 6418 80005818 E6120018 */  swc1       $f18, 0x18($s0)
/* 641C 8000581C C430C430 */  lwc1       $f16, %lo(D_8008C430)($at)
/* 6420 80005820 46083281 */  sub.s      $f10, $f6, $f8
/* 6424 80005824 46105480 */  add.s      $f18, $f10, $f16
/* 6428 80005828 E6120020 */  swc1       $f18, 0x20($s0)
/* 642C 8000582C C6040000 */  lwc1       $f4, 0x0($s0)
.L80005830:
/* 6430 80005830 C6060018 */  lwc1       $f6, 0x18($s0)
/* 6434 80005834 C6100008 */  lwc1       $f16, 0x8($s0)
/* 6438 80005838 C6120020 */  lwc1       $f18, 0x20($s0)
/* 643C 8000583C 46062200 */  add.s      $f8, $f4, $f6
/* 6440 80005840 3C018009 */  lui        $at, %hi(D_8008C59C)
/* 6444 80005844 C42AC59C */  lwc1       $f10, %lo(D_8008C59C)($at)
/* 6448 80005848 46128100 */  add.s      $f4, $f16, $f18
/* 644C 8000584C 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* 6450 80005850 C426C5A0 */  lwc1       $f6, %lo(D_8008C5A0)($at)
/* 6454 80005854 460A4501 */  sub.s      $f20, $f8, $f10
/* 6458 80005858 AFA60040 */  sw         $a2, 0x40($sp)
/* 645C 8000585C 46062081 */  sub.s      $f2, $f4, $f6
/* 6460 80005860 4614A202 */  mul.s      $f8, $f20, $f20
/* 6464 80005864 00000000 */  nop
/* 6468 80005868 46021282 */  mul.s      $f10, $f2, $f2
/* 646C 8000586C E7A20030 */  swc1       $f2, 0x30($sp)
/* 6470 80005870 0C00D3D8 */  jal        _nsqrtf
/* 6474 80005874 460A4300 */   add.s     $f12, $f8, $f10
/* 6478 80005878 3C188009 */  lui        $t8, %hi(D_8008C592)
/* 647C 8000587C 9718C592 */  lhu        $t8, %lo(D_8008C592)($t8)
/* 6480 80005880 8FA60040 */  lw         $a2, 0x40($sp)
/* 6484 80005884 C7A20030 */  lwc1       $f2, 0x30($sp)
/* 6488 80005888 33190100 */  andi       $t9, $t8, 0x100
/* 648C 8000588C 1320001A */  beqz       $t9, .L800058F8
/* 6490 80005890 3C028009 */   lui       $v0, %hi(D_8008C434)
/* 6494 80005894 3C028009 */  lui        $v0, %hi(D_8008C434)
/* 6498 80005898 2442C434 */  addiu      $v0, $v0, %lo(D_8008C434)
/* 649C 8000589C C44C0000 */  lwc1       $f12, 0x0($v0)
/* 64A0 800058A0 4600603C */  c.lt.s     $f12, $f0
/* 64A4 800058A4 00000000 */  nop
/* 64A8 800058A8 45020021 */  bc1fl      .L80005930
/* 64AC 800058AC 26040018 */   addiu     $a0, $s0, 0x18
/* 64B0 800058B0 46146402 */  mul.s      $f16, $f12, $f20
/* 64B4 800058B4 C6040000 */  lwc1       $f4, 0x0($s0)
/* 64B8 800058B8 3C018009 */  lui        $at, %hi(D_8008C59C)
/* 64BC 800058BC C428C59C */  lwc1       $f8, %lo(D_8008C59C)($at)
/* 64C0 800058C0 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* 64C4 800058C4 46008483 */  div.s      $f18, $f16, $f0
/* 64C8 800058C8 46049181 */  sub.s      $f6, $f18, $f4
/* 64CC 800058CC 46083280 */  add.s      $f10, $f6, $f8
/* 64D0 800058D0 C6060008 */  lwc1       $f6, 0x8($s0)
/* 64D4 800058D4 E60A0018 */  swc1       $f10, 0x18($s0)
/* 64D8 800058D8 C4500000 */  lwc1       $f16, 0x0($v0)
/* 64DC 800058DC C42AC5A0 */  lwc1       $f10, %lo(D_8008C5A0)($at)
/* 64E0 800058E0 46028482 */  mul.s      $f18, $f16, $f2
/* 64E4 800058E4 46009103 */  div.s      $f4, $f18, $f0
/* 64E8 800058E8 46062201 */  sub.s      $f8, $f4, $f6
/* 64EC 800058EC 460A4400 */  add.s      $f16, $f8, $f10
/* 64F0 800058F0 1000000E */  b          .L8000592C
/* 64F4 800058F4 E6100020 */   swc1      $f16, 0x20($s0)
.L800058F8:
/* 64F8 800058F8 2442C434 */  addiu      $v0, $v0, %lo(D_8008C434)
/* 64FC 800058FC C4520000 */  lwc1       $f18, 0x0($v0)
/* 6500 80005900 4600903C */  c.lt.s     $f18, $f0
/* 6504 80005904 00000000 */  nop
/* 6508 80005908 45020006 */  bc1fl      .L80005924
/* 650C 8000590C 94CA0008 */   lhu       $t2, 0x8($a2)
/* 6510 80005910 94C80008 */  lhu        $t0, 0x8($a2)
/* 6514 80005914 35090020 */  ori        $t1, $t0, 0x20
/* 6518 80005918 10000004 */  b          .L8000592C
/* 651C 8000591C A4C90008 */   sh        $t1, 0x8($a2)
/* 6520 80005920 94CA0008 */  lhu        $t2, 0x8($a2)
.L80005924:
/* 6524 80005924 314BFFDF */  andi       $t3, $t2, 0xFFDF
/* 6528 80005928 A4CB0008 */  sh         $t3, 0x8($a2)
.L8000592C:
/* 652C 8000592C 26040018 */  addiu      $a0, $s0, 0x18
.L80005930:
/* 6530 80005930 26050020 */  addiu      $a1, $s0, 0x20
/* 6534 80005934 0C00171B */  jal        func_80005C6C
/* 6538 80005938 02003025 */   or        $a2, $s0, $zero
/* 653C 8000593C C6040018 */  lwc1       $f4, 0x18($s0)
/* 6540 80005940 3C018008 */  lui        $at, %hi(D_8007BA54)
/* 6544 80005944 3C028008 */  lui        $v0, %hi(D_8007BC40)
/* 6548 80005948 E424BA54 */  swc1       $f4, %lo(D_8007BA54)($at)
/* 654C 8000594C C6060020 */  lwc1       $f6, 0x20($s0)
/* 6550 80005950 3C018008 */  lui        $at, %hi(D_8007BA58)
/* 6554 80005954 2442BC40 */  addiu      $v0, $v0, %lo(D_8007BC40)
/* 6558 80005958 E426BA58 */  swc1       $f6, %lo(D_8007BA58)($at)
/* 655C 8000595C 8E030064 */  lw         $v1, 0x64($s0)
/* 6560 80005960 C60A0018 */  lwc1       $f10, 0x18($s0)
/* 6564 80005964 C6080000 */  lwc1       $f8, 0x0($s0)
/* 6568 80005968 C4640018 */  lwc1       $f4, 0x18($v1)
/* 656C 8000596C C4660020 */  lwc1       $f6, 0x20($v1)
/* 6570 80005970 460A4300 */  add.s      $f12, $f8, $f10
/* 6574 80005974 C6120020 */  lwc1       $f18, 0x20($s0)
/* 6578 80005978 46062202 */  mul.s      $f8, $f4, $f6
/* 657C 8000597C C6100008 */  lwc1       $f16, 0x8($s0)
/* 6580 80005980 97A7003A */  lhu        $a3, 0x3A($sp)
/* 6584 80005984 46128080 */  add.s      $f2, $f16, $f18
/* 6588 80005988 E4480000 */  swc1       $f8, 0x0($v0)
/* 658C 8000598C C60E0004 */  lwc1       $f14, 0x4($s0)
/* 6590 80005990 44061000 */  mfc1       $a2, $f2
/* 6594 80005994 0C003B98 */  jal        func_8000EE60
/* 6598 80005998 AFA20010 */   sw        $v0, 0x10($sp)
/* 659C 8000599C 3C028008 */  lui        $v0, %hi(D_8007BC40)
/* 65A0 800059A0 2442BC40 */  addiu      $v0, $v0, %lo(D_8007BC40)
/* 65A4 800059A4 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 65A8 800059A8 C6100000 */  lwc1       $f16, 0x0($s0)
/* 65AC 800059AC C6060008 */  lwc1       $f6, 0x8($s0)
/* 65B0 800059B0 46105481 */  sub.s      $f18, $f10, $f16
/* 65B4 800059B4 E6120018 */  swc1       $f18, 0x18($s0)
/* 65B8 800059B8 C4440008 */  lwc1       $f4, 0x8($v0)
/* 65BC 800059BC 46062201 */  sub.s      $f8, $f4, $f6
/* 65C0 800059C0 E6080020 */  swc1       $f8, 0x20($s0)
/* 65C4 800059C4 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 65C8 800059C8 E60A0000 */  swc1       $f10, 0x0($s0)
/* 65CC 800059CC C4500004 */  lwc1       $f16, 0x4($v0)
/* 65D0 800059D0 E6100004 */  swc1       $f16, 0x4($s0)
/* 65D4 800059D4 C4520008 */  lwc1       $f18, 0x8($v0)
/* 65D8 800059D8 E6120008 */  swc1       $f18, 0x8($s0)
/* 65DC 800059DC C444000C */  lwc1       $f4, 0xC($v0)
/* 65E0 800059E0 E604002C */  swc1       $f4, 0x2C($s0)
/* 65E4 800059E4 C4460010 */  lwc1       $f6, 0x10($v0)
/* 65E8 800059E8 E6060030 */  swc1       $f6, 0x30($s0)
/* 65EC 800059EC C4480014 */  lwc1       $f8, 0x14($v0)
/* 65F0 800059F0 E6080034 */  swc1       $f8, 0x34($s0)
/* 65F4 800059F4 944C0018 */  lhu        $t4, 0x18($v0)
/* 65F8 800059F8 A60C0062 */  sh         $t4, 0x62($s0)
/* 65FC 800059FC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 6600 80005A00 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 6604 80005A04 8FB00028 */  lw         $s0, 0x28($sp)
/* 6608 80005A08 03E00008 */  jr         $ra
/* 660C 80005A0C 27BD0038 */   addiu     $sp, $sp, 0x38
