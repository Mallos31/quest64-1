glabel func_8001C5F4
/* 1D1F4 8001C5F4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1D1F8 8001C5F8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1D1FC 8001C5FC 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 1D200 8001C600 9442C592 */  lhu        $v0, %lo(D_8008C592)($v0)
/* 1D204 8001C604 304E0001 */  andi       $t6, $v0, 0x1
/* 1D208 8001C608 15C000AA */  bnez       $t6, .L8001C8B4
/* 1D20C 8001C60C 304F8000 */   andi      $t7, $v0, 0x8000
/* 1D210 8001C610 15E000A8 */  bnez       $t7, .L8001C8B4
/* 1D214 8001C614 3C188008 */   lui       $t8, %hi(D_8007BB2C)
/* 1D218 8001C618 9718BB2C */  lhu        $t8, %lo(D_8007BB2C)($t8)
/* 1D21C 8001C61C 3C018008 */  lui        $at, %hi(D_8007BA5C)
/* 1D220 8001C620 33190001 */  andi       $t9, $t8, 0x1
/* 1D224 8001C624 572000A4 */  bnel       $t9, $zero, .L8001C8B8
/* 1D228 8001C628 8FBF001C */   lw        $ra, 0x1C($sp)
/* 1D22C 8001C62C C420BA5C */  lwc1       $f0, %lo(D_8007BA5C)($at)
/* 1D230 8001C630 44802000 */  mtc1       $zero, $f4
/* 1D234 8001C634 3C038009 */  lui        $v1, %hi(D_8008C574)
/* 1D238 8001C638 2463C574 */  addiu      $v1, $v1, %lo(D_8008C574)
/* 1D23C 8001C63C 46002032 */  c.eq.s     $f4, $f0
/* 1D240 8001C640 00000000 */  nop
/* 1D244 8001C644 4503009C */  bc1tl      .L8001C8B8
/* 1D248 8001C648 8FBF001C */   lw        $ra, 0x1C($sp)
/* 1D24C 8001C64C C4660000 */  lwc1       $f6, 0x0($v1)
/* 1D250 8001C650 3C014049 */  lui        $at, (0x40490000 >> 16)
/* 1D254 8001C654 44819800 */  mtc1       $at, $f19
/* 1D258 8001C658 46003200 */  add.s      $f8, $f6, $f0
/* 1D25C 8001C65C 44809000 */  mtc1       $zero, $f18
/* 1D260 8001C660 3C028009 */  lui        $v0, %hi(D_8008C578)
/* 1D264 8001C664 2442C578 */  addiu      $v0, $v0, %lo(D_8008C578)
/* 1D268 8001C668 E4680000 */  swc1       $f8, 0x0($v1)
/* 1D26C 8001C66C C46A0000 */  lwc1       $f10, 0x0($v1)
/* 1D270 8001C670 46005421 */  cvt.d.s    $f16, $f10
/* 1D274 8001C674 4630903E */  c.le.d     $f18, $f16
/* 1D278 8001C678 00000000 */  nop
/* 1D27C 8001C67C 4502008E */  bc1fl      .L8001C8B8
/* 1D280 8001C680 8FBF001C */   lw        $ra, 0x1C($sp)
/* 1D284 8001C684 94480000 */  lhu        $t0, 0x0($v0)
/* 1D288 8001C688 240407D0 */  addiu      $a0, $zero, 0x7D0
/* 1D28C 8001C68C 25090032 */  addiu      $t1, $t0, 0x32
/* 1D290 8001C690 0C008BF4 */  jal        func_80022FD0
/* 1D294 8001C694 A4490000 */   sh        $t1, 0x0($v0)
/* 1D298 8001C698 3C0A8009 */  lui        $t2, %hi(D_8008C578)
/* 1D29C 8001C69C 954AC578 */  lhu        $t2, %lo(D_8008C578)($t2)
/* 1D2A0 8001C6A0 004A082B */  sltu       $at, $v0, $t2
/* 1D2A4 8001C6A4 10200080 */  beqz       $at, .L8001C8A8
/* 1D2A8 8001C6A8 3C028008 */   lui       $v0, %hi(D_8007BAB8)
/* 1D2AC 8001C6AC 2442BAB8 */  addiu      $v0, $v0, %lo(D_8007BAB8)
/* 1D2B0 8001C6B0 C44C0014 */  lwc1       $f12, 0x14($v0)
/* 1D2B4 8001C6B4 C44E001C */  lwc1       $f14, 0x1C($v0)
/* 1D2B8 8001C6B8 E7AC003C */  swc1       $f12, 0x3C($sp)
/* 1D2BC 8001C6BC 0C00754E */  jal        func_8001D538
/* 1D2C0 8001C6C0 E7AE0038 */   swc1      $f14, 0x38($sp)
/* 1D2C4 8001C6C4 10400078 */  beqz       $v0, .L8001C8A8
/* 1D2C8 8001C6C8 C7AC003C */   lwc1      $f12, 0x3C($sp)
/* 1D2CC 8001C6CC 3C068009 */  lui        $a2, %hi(D_8008C560)
/* 1D2D0 8001C6D0 8CC6C560 */  lw         $a2, %lo(D_8008C560)($a2)
/* 1D2D4 8001C6D4 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 1D2D8 8001C6D8 0C00751D */  jal        func_8001D474
/* 1D2DC 8001C6DC AFA20024 */   sw        $v0, 0x24($sp)
/* 1D2E0 8001C6E0 10400071 */  beqz       $v0, .L8001C8A8
/* 1D2E4 8001C6E4 8FA30024 */   lw        $v1, 0x24($sp)
/* 1D2E8 8001C6E8 3C018009 */  lui        $at, %hi(D_8008C578)
/* 1D2EC 8001C6EC A420C578 */  sh         $zero, %lo(D_8008C578)($at)
/* 1D2F0 8001C6F0 846B0000 */  lh         $t3, 0x0($v1)
/* 1D2F4 8001C6F4 846C0002 */  lh         $t4, 0x2($v1)
/* 1D2F8 8001C6F8 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* 1D2FC 8001C6FC 448B3000 */  mtc1       $t3, $f6
/* 1D300 8001C700 448C8000 */  mtc1       $t4, $f16
/* 1D304 8001C704 C7AA0038 */  lwc1       $f10, 0x38($sp)
/* 1D308 8001C708 46803220 */  cvt.s.w    $f8, $f6
/* 1D30C 8001C70C AFA20028 */  sw         $v0, 0x28($sp)
/* 1D310 8001C710 AFA30024 */  sw         $v1, 0x24($sp)
/* 1D314 8001C714 468084A0 */  cvt.s.w    $f18, $f16
/* 1D318 8001C718 46082301 */  sub.s      $f12, $f4, $f8
/* 1D31C 8001C71C 0C008C84 */  jal        func_80023210
/* 1D320 8001C720 46125381 */   sub.s     $f14, $f10, $f18
/* 1D324 8001C724 8FA30024 */  lw         $v1, 0x24($sp)
/* 1D328 8001C728 8FA40028 */  lw         $a0, 0x28($sp)
/* 1D32C 8001C72C 44060000 */  mfc1       $a2, $f0
/* 1D330 8001C730 846D0000 */  lh         $t5, 0x0($v1)
/* 1D334 8001C734 846E0002 */  lh         $t6, 0x2($v1)
/* 1D338 8001C738 24870008 */  addiu      $a3, $a0, 0x8
/* 1D33C 8001C73C 448D3000 */  mtc1       $t5, $f6
/* 1D340 8001C740 448E2000 */  mtc1       $t6, $f4
/* 1D344 8001C744 46803320 */  cvt.s.w    $f12, $f6
/* 1D348 8001C748 0C007590 */  jal        func_8001D640
/* 1D34C 8001C74C 468023A0 */   cvt.s.w   $f14, $f4
/* 1D350 8001C750 8FA30024 */  lw         $v1, 0x24($sp)
/* 1D354 8001C754 3C018009 */  lui        $at, %hi(D_8008C59C)
/* 1D358 8001C758 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 1D35C 8001C75C 846F0000 */  lh         $t7, 0x0($v1)
/* 1D360 8001C760 2442C592 */  addiu      $v0, $v0, %lo(D_8008C592)
/* 1D364 8001C764 24190205 */  addiu      $t9, $zero, 0x205
/* 1D368 8001C768 448F4000 */  mtc1       $t7, $f8
/* 1D36C 8001C76C 3C0B8008 */  lui        $t3, %hi(D_8007D0B0)
/* 1D370 8001C770 3C0D8008 */  lui        $t5, %hi(D_8007C9B8)
/* 1D374 8001C774 46804420 */  cvt.s.w    $f16, $f8
/* 1D378 8001C778 3C098008 */  lui        $t1, %hi(D_8007BAC8)
/* 1D37C 8001C77C 24080014 */  addiu      $t0, $zero, 0x14
/* 1D380 8001C780 E430C59C */  swc1       $f16, %lo(D_8008C59C)($at)
/* 1D384 8001C784 84780002 */  lh         $t8, 0x2($v1)
/* 1D388 8001C788 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* 1D38C 8001C78C 44985000 */  mtc1       $t8, $f10
/* 1D390 8001C790 00000000 */  nop
/* 1D394 8001C794 468054A0 */  cvt.s.w    $f18, $f10
/* 1D398 8001C798 E432C5A0 */  swc1       $f18, %lo(D_8008C5A0)($at)
/* 1D39C 8001C79C A4590000 */  sh         $t9, 0x0($v0)
/* 1D3A0 8001C7A0 956BD0B0 */  lhu        $t3, %lo(D_8007D0B0)($t3)
/* 1D3A4 8001C7A4 3C018009 */  lui        $at, %hi(D_8008C596)
/* 1D3A8 8001C7A8 A420C596 */  sh         $zero, %lo(D_8008C596)($at)
/* 1D3AC 8001C7AC 000B60C0 */  sll        $t4, $t3, 3
/* 1D3B0 8001C7B0 018B6021 */  addu       $t4, $t4, $t3
/* 1D3B4 8001C7B4 000C6080 */  sll        $t4, $t4, 2
/* 1D3B8 8001C7B8 018B6021 */  addu       $t4, $t4, $t3
/* 1D3BC 8001C7BC 000C60C0 */  sll        $t4, $t4, 3
/* 1D3C0 8001C7C0 01AC6821 */  addu       $t5, $t5, $t4
/* 1D3C4 8001C7C4 8DADC9B8 */  lw         $t5, %lo(D_8007C9B8)($t5)
/* 1D3C8 8001C7C8 8D29BAC8 */  lw         $t1, %lo(D_8007BAC8)($t1)
/* 1D3CC 8001C7CC 3C018009 */  lui        $at, %hi(D_8008C594)
/* 1D3D0 8001C7D0 A428C594 */  sh         $t0, %lo(D_8008C594)($at)
/* 1D3D4 8001C7D4 95AE000C */  lhu        $t6, 0xC($t5)
/* 1D3D8 8001C7D8 952A000C */  lhu        $t2, 0xC($t1)
/* 1D3DC 8001C7DC 014E082A */  slt        $at, $t2, $t6
/* 1D3E0 8001C7E0 10200006 */  beqz       $at, .L8001C7FC
/* 1D3E4 8001C7E4 3C018009 */   lui       $at, %hi(D_8008C598)
/* 1D3E8 8001C7E8 A420C598 */  sh         $zero, %lo(D_8008C598)($at)
/* 1D3EC 8001C7EC 944F0000 */  lhu        $t7, 0x0($v0)
/* 1D3F0 8001C7F0 35F80002 */  ori        $t8, $t7, 0x2
/* 1D3F4 8001C7F4 10000006 */  b          .L8001C810
/* 1D3F8 8001C7F8 A4580000 */   sh        $t8, 0x0($v0)
.L8001C7FC:
/* 1D3FC 8001C7FC 3C198009 */  lui        $t9, %hi(D_8008C59A)
/* 1D400 8001C800 9739C59A */  lhu        $t9, %lo(D_8008C59A)($t9)
/* 1D404 8001C804 3C018009 */  lui        $at, %hi(D_8008C598)
/* 1D408 8001C808 2728FFFF */  addiu      $t0, $t9, -0x1
/* 1D40C 8001C80C A428C598 */  sh         $t0, %lo(D_8008C598)($at)
.L8001C810:
/* 1D410 8001C810 0C000E87 */  jal        func_80003A1C
/* 1D414 8001C814 00000000 */   nop
/* 1D418 8001C818 0C008222 */  jal        func_80020888
/* 1D41C 8001C81C 00000000 */   nop
/* 1D420 8001C820 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 1D424 8001C824 44813000 */  mtc1       $at, $f6
/* 1D428 8001C828 3C028009 */  lui        $v0, %hi(D_8008C434)
/* 1D42C 8001C82C 2442C434 */  addiu      $v0, $v0, %lo(D_8008C434)
/* 1D430 8001C830 E4460000 */  swc1       $f6, 0x0($v0)
/* 1D434 8001C834 C4440000 */  lwc1       $f4, 0x0($v0)
/* 1D438 8001C838 3C018007 */  lui        $at, %hi(D_80071610)
/* 1D43C 8001C83C D4301610 */  ldc1       $f16, %lo(D_80071610)($at)
/* 1D440 8001C840 46002221 */  cvt.d.s    $f8, $f4
/* 1D444 8001C844 3C058009 */  lui        $a1, %hi(D_8008C59C)
/* 1D448 8001C848 46304282 */  mul.d      $f10, $f8, $f16
/* 1D44C 8001C84C 3C068008 */  lui        $a2, %hi(D_8007BAD0)
/* 1D450 8001C850 3C078009 */  lui        $a3, %hi(D_8008C5A0)
/* 1D454 8001C854 8CE7C5A0 */  lw         $a3, %lo(D_8008C5A0)($a3)
/* 1D458 8001C858 8CC6BAD0 */  lw         $a2, %lo(D_8007BAD0)($a2)
/* 1D45C 8001C85C 8CA5C59C */  lw         $a1, %lo(D_8008C59C)($a1)
/* 1D460 8001C860 00002025 */  or         $a0, $zero, $zero
/* 1D464 8001C864 462054A0 */  cvt.s.d    $f18, $f10
/* 1D468 8001C868 0C0066A6 */  jal        func_80019A98
/* 1D46C 8001C86C E7B20010 */   swc1      $f18, 0x10($sp)
/* 1D470 8001C870 3C018009 */  lui        $at, %hi(D_8008C55C)
/* 1D474 8001C874 A422C55C */  sh         $v0, %lo(D_8008C55C)($at)
/* 1D478 8001C878 3C018009 */  lui        $at, %hi(D_8008C58C)
/* 1D47C 8001C87C A420C58C */  sh         $zero, %lo(D_8008C58C)($at)
/* 1D480 8001C880 3C018009 */  lui        $at, %hi(D_8008C58E)
/* 1D484 8001C884 24090001 */  addiu      $t1, $zero, 0x1
/* 1D488 8001C888 3C048008 */  lui        $a0, %hi(D_8007C990)
/* 1D48C 8001C88C A429C58E */  sh         $t1, %lo(D_8008C58E)($at)
/* 1D490 8001C890 0C008BF4 */  jal        func_80022FD0
/* 1D494 8001C894 8C84C990 */   lw        $a0, %lo(D_8007C990)($a0)
/* 1D498 8001C898 3C018009 */  lui        $at, %hi(D_8008C590)
/* 1D49C 8001C89C A422C590 */  sh         $v0, %lo(D_8008C590)($at)
/* 1D4A0 8001C8A0 0C0099EE */  jal        func_800267B8
/* 1D4A4 8001C8A4 2404000D */   addiu     $a0, $zero, 0xD
.L8001C8A8:
/* 1D4A8 8001C8A8 44803000 */  mtc1       $zero, $f6
/* 1D4AC 8001C8AC 3C018009 */  lui        $at, %hi(D_8008C574)
/* 1D4B0 8001C8B0 E426C574 */  swc1       $f6, %lo(D_8008C574)($at)
.L8001C8B4:
/* 1D4B4 8001C8B4 8FBF001C */  lw         $ra, 0x1C($sp)
.L8001C8B8:
/* 1D4B8 8001C8B8 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1D4BC 8001C8BC 03E00008 */  jr         $ra
/* 1D4C0 8001C8C0 00000000 */   nop