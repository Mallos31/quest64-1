glabel func_8000A854
/* B454 8000A854 27BDFF78 */  addiu      $sp, $sp, -0x88
/* B458 8000A858 AFB60060 */  sw         $s6, 0x60($sp)
/* B45C 8000A85C AFB5005C */  sw         $s5, 0x5C($sp)
/* B460 8000A860 AFB40058 */  sw         $s4, 0x58($sp)
/* B464 8000A864 3C028008 */  lui        $v0, %hi(D_8007BAB8)
/* B468 8000A868 2442BAB8 */  addiu      $v0, $v0, %lo(D_8007BAB8)
/* B46C 8000A86C 00C0A025 */  or         $s4, $a2, $zero
/* B470 8000A870 0080A825 */  or         $s5, $a0, $zero
/* B474 8000A874 00A0B025 */  or         $s6, $a1, $zero
/* B478 8000A878 AFBF0064 */  sw         $ra, 0x64($sp)
/* B47C 8000A87C AFB30054 */  sw         $s3, 0x54($sp)
/* B480 8000A880 AFB20050 */  sw         $s2, 0x50($sp)
/* B484 8000A884 AFB1004C */  sw         $s1, 0x4C($sp)
/* B488 8000A888 AFB00048 */  sw         $s0, 0x48($sp)
/* B48C 8000A88C F7BE0040 */  sdc1       $f30, 0x40($sp)
/* B490 8000A890 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* B494 8000A894 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* B498 8000A898 F7B80028 */  sdc1       $f24, 0x28($sp)
/* B49C 8000A89C F7B60020 */  sdc1       $f22, 0x20($sp)
/* B4A0 8000A8A0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* B4A4 8000A8A4 C6C80000 */  lwc1       $f8, 0x0($s6)
/* B4A8 8000A8A8 C68A0008 */  lwc1       $f10, 0x8($s4)
/* B4AC 8000A8AC C6900028 */  lwc1       $f16, 0x28($s4)
/* B4B0 8000A8B0 C6920024 */  lwc1       $f18, 0x24($s4)
/* B4B4 8000A8B4 460A4780 */  add.s      $f30, $f8, $f10
/* B4B8 8000A8B8 C44A0038 */  lwc1       $f10, 0x38($v0)
/* B4BC 8000A8BC 46128382 */  mul.s      $f14, $f16, $f18
/* B4C0 8000A8C0 C448003C */  lwc1       $f8, 0x3C($v0)
/* B4C4 8000A8C4 C6A40000 */  lwc1       $f4, 0x0($s5)
/* B4C8 8000A8C8 C6860000 */  lwc1       $f6, 0x0($s4)
/* B4CC 8000A8CC 460A4402 */  mul.s      $f16, $f8, $f10
/* B4D0 8000A8D0 00009825 */  or         $s3, $zero, $zero
/* B4D4 8000A8D4 46062700 */  add.s      $f28, $f4, $f6
/* B4D8 8000A8D8 C4440014 */  lwc1       $f4, 0x14($v0)
/* B4DC 8000A8DC C446001C */  lwc1       $f6, 0x1C($v0)
/* B4E0 8000A8E0 4604E501 */  sub.s      $f20, $f28, $f4
/* B4E4 8000A8E4 460E8600 */  add.s      $f24, $f16, $f14
/* B4E8 8000A8E8 4606F581 */  sub.s      $f22, $f30, $f6
/* B4EC 8000A8EC 4618A03C */  c.lt.s     $f20, $f24
/* B4F0 8000A8F0 00000000 */  nop
/* B4F4 8000A8F4 45000027 */  bc1f       .L8000A994
/* B4F8 8000A8F8 00000000 */   nop
/* B4FC 8000A8FC 4600C007 */  neg.s      $f0, $f24
/* B500 8000A900 4614003C */  c.lt.s     $f0, $f20
/* B504 8000A904 00000000 */  nop
/* B508 8000A908 45000022 */  bc1f       .L8000A994
/* B50C 8000A90C 00000000 */   nop
/* B510 8000A910 4618B03C */  c.lt.s     $f22, $f24
/* B514 8000A914 00000000 */  nop
/* B518 8000A918 4500001E */  bc1f       .L8000A994
/* B51C 8000A91C 00000000 */   nop
/* B520 8000A920 4616003C */  c.lt.s     $f0, $f22
/* B524 8000A924 00000000 */  nop
/* B528 8000A928 4500001A */  bc1f       .L8000A994
/* B52C 8000A92C 00000000 */   nop
/* B530 8000A930 4614A482 */  mul.s      $f18, $f20, $f20
/* B534 8000A934 E7AE0068 */  swc1       $f14, 0x68($sp)
/* B538 8000A938 4616B102 */  mul.s      $f4, $f22, $f22
/* B53C 8000A93C 0C00D3D8 */  jal        _nsqrtf
/* B540 8000A940 46049300 */   add.s     $f12, $f18, $f4
/* B544 8000A944 4618003C */  c.lt.s     $f0, $f24
/* B548 8000A948 C7AE0068 */  lwc1       $f14, 0x68($sp)
/* B54C 8000A94C 45000011 */  bc1f       .L8000A994
/* B550 8000A950 00000000 */   nop
/* B554 8000A954 4600C083 */  div.s      $f2, $f24, $f0
/* B558 8000A958 3C018008 */  lui        $at, %hi(D_8007BACC)
/* B55C 8000A95C C426BACC */  lwc1       $f6, %lo(D_8007BACC)($at)
/* B560 8000A960 C68A0000 */  lwc1       $f10, 0x0($s4)
/* B564 8000A964 3C018008 */  lui        $at, %hi(D_8007BAD4)
/* B568 8000A968 24130001 */  addiu      $s3, $zero, 0x1
/* B56C 8000A96C 4602A502 */  mul.s      $f20, $f20, $f2
/* B570 8000A970 46143200 */  add.s      $f8, $f6, $f20
/* B574 8000A974 4602B582 */  mul.s      $f22, $f22, $f2
/* B578 8000A978 460A4401 */  sub.s      $f16, $f8, $f10
/* B57C 8000A97C E6B00000 */  swc1       $f16, 0x0($s5)
/* B580 8000A980 C432BAD4 */  lwc1       $f18, %lo(D_8007BAD4)($at)
/* B584 8000A984 C6860008 */  lwc1       $f6, 0x8($s4)
/* B588 8000A988 46169100 */  add.s      $f4, $f18, $f22
/* B58C 8000A98C 46062201 */  sub.s      $f8, $f4, $f6
/* B590 8000A990 E6C80000 */  swc1       $f8, 0x0($s6)
.L8000A994:
/* B594 8000A994 3C118008 */  lui        $s1, %hi(D_8007D08C)
/* B598 8000A998 8E31D08C */  lw         $s1, %lo(D_8007D08C)($s1)
/* B59C 8000A99C 3C128008 */  lui        $s2, %hi(D_8007D090)
/* B5A0 8000A9A0 12200043 */  beqz       $s1, .L8000AAB0
/* B5A4 8000A9A4 00000000 */   nop
/* B5A8 8000A9A8 16600041 */  bnez       $s3, .L8000AAB0
/* B5AC 8000A9AC 2652D090 */   addiu     $s2, $s2, %lo(D_8007D090)
/* B5B0 8000A9B0 1220003F */  beqz       $s1, .L8000AAB0
/* B5B4 8000A9B4 00000000 */   nop
/* B5B8 8000A9B8 4480D000 */  mtc1       $zero, $f26
/* B5BC 8000A9BC 00000000 */  nop
/* B5C0 8000A9C0 8E500000 */  lw         $s0, 0x0($s2)
.L8000A9C4:
/* B5C4 8000A9C4 26520004 */  addiu      $s2, $s2, 0x4
/* B5C8 8000A9C8 12140035 */  beq        $s0, $s4, .L8000AAA0
/* B5CC 8000A9CC 00000000 */   nop
/* B5D0 8000A9D0 C6120028 */  lwc1       $f18, 0x28($s0)
/* B5D4 8000A9D4 C6040024 */  lwc1       $f4, 0x24($s0)
/* B5D8 8000A9D8 C60A0000 */  lwc1       $f10, 0x0($s0)
/* B5DC 8000A9DC C6100008 */  lwc1       $f16, 0x8($s0)
/* B5E0 8000A9E0 46049182 */  mul.s      $f6, $f18, $f4
/* B5E4 8000A9E4 460AE501 */  sub.s      $f20, $f28, $f10
/* B5E8 8000A9E8 4610F581 */  sub.s      $f22, $f30, $f16
/* B5EC 8000A9EC 460E3600 */  add.s      $f24, $f6, $f14
/* B5F0 8000A9F0 4618A03C */  c.lt.s     $f20, $f24
/* B5F4 8000A9F4 00000000 */  nop
/* B5F8 8000A9F8 45000029 */  bc1f       .L8000AAA0
/* B5FC 8000A9FC 00000000 */   nop
/* B600 8000AA00 4600C007 */  neg.s      $f0, $f24
/* B604 8000AA04 4614003C */  c.lt.s     $f0, $f20
/* B608 8000AA08 00000000 */  nop
/* B60C 8000AA0C 45000024 */  bc1f       .L8000AAA0
/* B610 8000AA10 00000000 */   nop
/* B614 8000AA14 4618B03C */  c.lt.s     $f22, $f24
/* B618 8000AA18 00000000 */  nop
/* B61C 8000AA1C 45000020 */  bc1f       .L8000AAA0
/* B620 8000AA20 00000000 */   nop
/* B624 8000AA24 4616003C */  c.lt.s     $f0, $f22
/* B628 8000AA28 00000000 */  nop
/* B62C 8000AA2C 4500001C */  bc1f       .L8000AAA0
/* B630 8000AA30 00000000 */   nop
/* B634 8000AA34 4614A202 */  mul.s      $f8, $f20, $f20
/* B638 8000AA38 E7AE0068 */  swc1       $f14, 0x68($sp)
/* B63C 8000AA3C 4616B282 */  mul.s      $f10, $f22, $f22
/* B640 8000AA40 0C00D3D8 */  jal        _nsqrtf
/* B644 8000AA44 460A4300 */   add.s     $f12, $f8, $f10
/* B648 8000AA48 461A0032 */  c.eq.s     $f0, $f26
/* B64C 8000AA4C C7AE0068 */  lwc1       $f14, 0x68($sp)
/* B650 8000AA50 45010013 */  bc1t       .L8000AAA0
/* B654 8000AA54 00000000 */   nop
/* B658 8000AA58 4618003C */  c.lt.s     $f0, $f24
/* B65C 8000AA5C 00000000 */  nop
/* B660 8000AA60 4500000F */  bc1f       .L8000AAA0
/* B664 8000AA64 00000000 */   nop
/* B668 8000AA68 4600C083 */  div.s      $f2, $f24, $f0
/* B66C 8000AA6C C6100000 */  lwc1       $f16, 0x0($s0)
/* B670 8000AA70 C6840000 */  lwc1       $f4, 0x0($s4)
/* B674 8000AA74 26730001 */  addiu      $s3, $s3, 0x1
/* B678 8000AA78 4602A502 */  mul.s      $f20, $f20, $f2
/* B67C 8000AA7C 46148480 */  add.s      $f18, $f16, $f20
/* B680 8000AA80 4602B582 */  mul.s      $f22, $f22, $f2
/* B684 8000AA84 46049181 */  sub.s      $f6, $f18, $f4
/* B688 8000AA88 E6A60000 */  swc1       $f6, 0x0($s5)
/* B68C 8000AA8C C6080008 */  lwc1       $f8, 0x8($s0)
/* B690 8000AA90 C6900008 */  lwc1       $f16, 0x8($s4)
/* B694 8000AA94 46164280 */  add.s      $f10, $f8, $f22
/* B698 8000AA98 46105481 */  sub.s      $f18, $f10, $f16
/* B69C 8000AA9C E6D20000 */  swc1       $f18, 0x0($s6)
.L8000AAA0:
/* B6A0 8000AAA0 16600003 */  bnez       $s3, .L8000AAB0
/* B6A4 8000AAA4 2631FFFF */   addiu     $s1, $s1, -0x1
/* B6A8 8000AAA8 5620FFC6 */  bnel       $s1, $zero, .L8000A9C4
/* B6AC 8000AAAC 8E500000 */   lw        $s0, 0x0($s2)
.L8000AAB0:
/* B6B0 8000AAB0 3C118008 */  lui        $s1, %hi(D_80084F38)
/* B6B4 8000AAB4 8E314F38 */  lw         $s1, %lo(D_80084F38)($s1)
/* B6B8 8000AAB8 3C128008 */  lui        $s2, %hi(D_80084F40)
/* B6BC 8000AABC 5220003E */  beql       $s1, $zero, .L8000ABB8
/* B6C0 8000AAC0 8FBF0064 */   lw        $ra, 0x64($sp)
/* B6C4 8000AAC4 1660003B */  bnez       $s3, .L8000ABB4
/* B6C8 8000AAC8 26524F40 */   addiu     $s2, $s2, %lo(D_80084F40)
/* B6CC 8000AACC 5220003A */  beql       $s1, $zero, .L8000ABB8
/* B6D0 8000AAD0 8FBF0064 */   lw        $ra, 0x64($sp)
/* B6D4 8000AAD4 460076A1 */  cvt.d.s    $f26, $f14
/* B6D8 8000AAD8 8E500000 */  lw         $s0, 0x0($s2)
.L8000AADC:
/* B6DC 8000AADC 26520004 */  addiu      $s2, $s2, 0x4
/* B6E0 8000AAE0 C6080010 */  lwc1       $f8, 0x10($s0)
/* B6E4 8000AAE4 C6040000 */  lwc1       $f4, 0x0($s0)
/* B6E8 8000AAE8 C6060008 */  lwc1       $f6, 0x8($s0)
/* B6EC 8000AAEC 46004021 */  cvt.d.s    $f0, $f8
/* B6F0 8000AAF0 4604E501 */  sub.s      $f20, $f28, $f4
/* B6F4 8000AAF4 46200280 */  add.d      $f10, $f0, $f0
/* B6F8 8000AAF8 4606F581 */  sub.s      $f22, $f30, $f6
/* B6FC 8000AAFC 462AD400 */  add.d      $f16, $f26, $f10
/* B700 8000AB00 46208620 */  cvt.s.d    $f24, $f16
/* B704 8000AB04 4618A03C */  c.lt.s     $f20, $f24
/* B708 8000AB08 00000000 */  nop
/* B70C 8000AB0C 45000025 */  bc1f       .L8000ABA4
/* B710 8000AB10 00000000 */   nop
/* B714 8000AB14 4600C007 */  neg.s      $f0, $f24
/* B718 8000AB18 4614003C */  c.lt.s     $f0, $f20
/* B71C 8000AB1C 00000000 */  nop
/* B720 8000AB20 45000020 */  bc1f       .L8000ABA4
/* B724 8000AB24 00000000 */   nop
/* B728 8000AB28 4618B03C */  c.lt.s     $f22, $f24
/* B72C 8000AB2C 00000000 */  nop
/* B730 8000AB30 4500001C */  bc1f       .L8000ABA4
/* B734 8000AB34 00000000 */   nop
/* B738 8000AB38 4616003C */  c.lt.s     $f0, $f22
/* B73C 8000AB3C 00000000 */  nop
/* B740 8000AB40 45000018 */  bc1f       .L8000ABA4
/* B744 8000AB44 00000000 */   nop
/* B748 8000AB48 4614A482 */  mul.s      $f18, $f20, $f20
/* B74C 8000AB4C 00000000 */  nop
/* B750 8000AB50 4616B102 */  mul.s      $f4, $f22, $f22
/* B754 8000AB54 0C00D3D8 */  jal        _nsqrtf
/* B758 8000AB58 46049300 */   add.s     $f12, $f18, $f4
/* B75C 8000AB5C 4618003C */  c.lt.s     $f0, $f24
/* B760 8000AB60 00000000 */  nop
/* B764 8000AB64 4500000F */  bc1f       .L8000ABA4
/* B768 8000AB68 00000000 */   nop
/* B76C 8000AB6C 4600C083 */  div.s      $f2, $f24, $f0
/* B770 8000AB70 C6060000 */  lwc1       $f6, 0x0($s0)
/* B774 8000AB74 C68A0000 */  lwc1       $f10, 0x0($s4)
/* B778 8000AB78 26730001 */  addiu      $s3, $s3, 0x1
/* B77C 8000AB7C 4602A502 */  mul.s      $f20, $f20, $f2
/* B780 8000AB80 46143200 */  add.s      $f8, $f6, $f20
/* B784 8000AB84 4602B582 */  mul.s      $f22, $f22, $f2
/* B788 8000AB88 460A4401 */  sub.s      $f16, $f8, $f10
/* B78C 8000AB8C E6B00000 */  swc1       $f16, 0x0($s5)
/* B790 8000AB90 C6120008 */  lwc1       $f18, 0x8($s0)
/* B794 8000AB94 C6860008 */  lwc1       $f6, 0x8($s4)
/* B798 8000AB98 46169100 */  add.s      $f4, $f18, $f22
/* B79C 8000AB9C 46062201 */  sub.s      $f8, $f4, $f6
/* B7A0 8000ABA0 E6C80000 */  swc1       $f8, 0x0($s6)
.L8000ABA4:
/* B7A4 8000ABA4 16600003 */  bnez       $s3, .L8000ABB4
/* B7A8 8000ABA8 2631FFFF */   addiu     $s1, $s1, -0x1
/* B7AC 8000ABAC 5620FFCB */  bnel       $s1, $zero, .L8000AADC
/* B7B0 8000ABB0 8E500000 */   lw        $s0, 0x0($s2)
.L8000ABB4:
/* B7B4 8000ABB4 8FBF0064 */  lw         $ra, 0x64($sp)
.L8000ABB8:
/* B7B8 8000ABB8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* B7BC 8000ABBC D7B60020 */  ldc1       $f22, 0x20($sp)
/* B7C0 8000ABC0 D7B80028 */  ldc1       $f24, 0x28($sp)
/* B7C4 8000ABC4 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* B7C8 8000ABC8 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* B7CC 8000ABCC D7BE0040 */  ldc1       $f30, 0x40($sp)
/* B7D0 8000ABD0 8FB00048 */  lw         $s0, 0x48($sp)
/* B7D4 8000ABD4 8FB1004C */  lw         $s1, 0x4C($sp)
/* B7D8 8000ABD8 8FB20050 */  lw         $s2, 0x50($sp)
/* B7DC 8000ABDC 8FB30054 */  lw         $s3, 0x54($sp)
/* B7E0 8000ABE0 8FB40058 */  lw         $s4, 0x58($sp)
/* B7E4 8000ABE4 8FB5005C */  lw         $s5, 0x5C($sp)
/* B7E8 8000ABE8 8FB60060 */  lw         $s6, 0x60($sp)
/* B7EC 8000ABEC 03E00008 */  jr         $ra
/* B7F0 8000ABF0 27BD0088 */   addiu     $sp, $sp, 0x88
