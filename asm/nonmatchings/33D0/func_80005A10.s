glabel func_80005A10
/* 6610 80005A10 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6614 80005A14 AFB40054 */  sw         $s4, 0x54($sp)
/* 6618 80005A18 00A0A025 */  or         $s4, $a1, $zero
/* 661C 80005A1C AFBF0064 */  sw         $ra, 0x64($sp)
/* 6620 80005A20 AFB70060 */  sw         $s7, 0x60($sp)
/* 6624 80005A24 AFB6005C */  sw         $s6, 0x5C($sp)
/* 6628 80005A28 AFB50058 */  sw         $s5, 0x58($sp)
/* 662C 80005A2C AFB30050 */  sw         $s3, 0x50($sp)
/* 6630 80005A30 AFB2004C */  sw         $s2, 0x4C($sp)
/* 6634 80005A34 AFB10048 */  sw         $s1, 0x48($sp)
/* 6638 80005A38 AFB00044 */  sw         $s0, 0x44($sp)
/* 663C 80005A3C F7BE0038 */  sdc1       $f30, 0x38($sp)
/* 6640 80005A40 F7BC0030 */  sdc1       $f28, 0x30($sp)
/* 6644 80005A44 F7BA0028 */  sdc1       $f26, 0x28($sp)
/* 6648 80005A48 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 664C 80005A4C F7B60018 */  sdc1       $f22, 0x18($sp)
/* 6650 80005A50 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 6654 80005A54 3C0E8008 */  lui        $t6, %hi(D_8007B2E4)
/* 6658 80005A58 8DCEB2E4 */  lw         $t6, %lo(D_8007B2E4)($t6)
/* 665C 80005A5C 00008025 */  or         $s0, $zero, $zero
/* 6660 80005A60 31CF448D */  andi       $t7, $t6, 0x448D
/* 6664 80005A64 55E00070 */  bnel       $t7, $zero, .L80005C28
/* 6668 80005A68 02001025 */   or        $v0, $s0, $zero
/* 666C 80005A6C 94980008 */  lhu        $t8, 0x8($a0)
/* 6670 80005A70 3C158008 */  lui        $s5, %hi(D_8007BCE8)
/* 6674 80005A74 33190010 */  andi       $t9, $t8, 0x10
/* 6678 80005A78 5720006B */  bnel       $t9, $zero, .L80005C28
/* 667C 80005A7C 02001025 */   or        $v0, $s0, $zero
/* 6680 80005A80 8EB5BCE8 */  lw         $s5, %lo(D_8007BCE8)($s5)
/* 6684 80005A84 3C168008 */  lui        $s6, %hi(D_8007BCF0)
/* 6688 80005A88 26D6BCF0 */  addiu      $s6, $s6, %lo(D_8007BCF0)
/* 668C 80005A8C 12A00065 */  beqz       $s5, .L80005C24
/* 6690 80005A90 3C018007 */   lui       $at, %hi(D_800710C0)
/* 6694 80005A94 C43C10C0 */  lwc1       $f28, %lo(D_800710C0)($at)
/* 6698 80005A98 3C014018 */  lui        $at, (0x40180000 >> 16)
/* 669C 80005A9C 4481D800 */  mtc1       $at, $f27
/* 66A0 80005AA0 3C01C018 */  lui        $at, (0xC0180000 >> 16)
/* 66A4 80005AA4 4481C800 */  mtc1       $at, $f25
/* 66A8 80005AA8 3C01402E */  lui        $at, (0x402E0000 >> 16)
/* 66AC 80005AAC 4481B800 */  mtc1       $at, $f23
/* 66B0 80005AB0 3C01C02E */  lui        $at, (0xC02E0000 >> 16)
/* 66B4 80005AB4 3C138008 */  lui        $s3, %hi(D_8007BD30)
/* 66B8 80005AB8 3C128008 */  lui        $s2, %hi(D_8007BC30)
/* 66BC 80005ABC 4481A800 */  mtc1       $at, $f21
/* 66C0 80005AC0 4480F000 */  mtc1       $zero, $f30
/* 66C4 80005AC4 4480D000 */  mtc1       $zero, $f26
/* 66C8 80005AC8 4480C000 */  mtc1       $zero, $f24
/* 66CC 80005ACC 4480B000 */  mtc1       $zero, $f22
/* 66D0 80005AD0 4480A000 */  mtc1       $zero, $f20
/* 66D4 80005AD4 2652BC30 */  addiu      $s2, $s2, %lo(D_8007BC30)
/* 66D8 80005AD8 2673BD30 */  addiu      $s3, $s3, %lo(D_8007BD30)
/* 66DC 80005ADC 24170210 */  addiu      $s7, $zero, 0x210
/* 66E0 80005AE0 8ED10000 */  lw         $s1, 0x0($s6)
.L80005AE4:
/* 66E4 80005AE4 C68A0004 */  lwc1       $f10, 0x4($s4)
/* 66E8 80005AE8 C6860000 */  lwc1       $f6, 0x0($s4)
/* 66EC 80005AEC C6280004 */  lwc1       $f8, 0x4($s1)
/* 66F0 80005AF0 C6240000 */  lwc1       $f4, 0x0($s1)
/* 66F4 80005AF4 C6320008 */  lwc1       $f18, 0x8($s1)
/* 66F8 80005AF8 460A4081 */  sub.s      $f2, $f8, $f10
/* 66FC 80005AFC 26D60004 */  addiu      $s6, $s6, 0x4
/* 6700 80005B00 46062381 */  sub.s      $f14, $f4, $f6
/* 6704 80005B04 C6840008 */  lwc1       $f4, 0x8($s4)
/* 6708 80005B08 46001021 */  cvt.d.s    $f0, $f2
/* 670C 80005B0C 46049401 */  sub.s      $f16, $f18, $f4
/* 6710 80005B10 4620A03C */  c.lt.d     $f20, $f0
/* 6714 80005B14 00000000 */  nop
/* 6718 80005B18 4502003E */  bc1fl      .L80005C14
/* 671C 80005B1C 26B5FFFF */   addiu     $s5, $s5, -0x1
/* 6720 80005B20 4636003C */  c.lt.d     $f0, $f22
/* 6724 80005B24 00000000 */  nop
/* 6728 80005B28 4502003A */  bc1fl      .L80005C14
/* 672C 80005B2C 26B5FFFF */   addiu     $s5, $s5, -0x1
/* 6730 80005B30 96280060 */  lhu        $t0, 0x60($s1)
/* 6734 80005B34 460E7182 */  mul.s      $f6, $f14, $f14
/* 6738 80005B38 3C014361 */  lui        $at, (0x43610000 >> 16)
/* 673C 80005B3C 31091000 */  andi       $t1, $t0, 0x1000
/* 6740 80005B40 46108202 */  mul.s      $f8, $f16, $f16
/* 6744 80005B44 11200003 */  beqz       $t1, .L80005B54
/* 6748 80005B48 02402825 */   or        $a1, $s2, $zero
/* 674C 80005B4C 10000003 */  b          .L80005B5C
/* 6750 80005B50 4600E006 */   mov.s     $f0, $f28
.L80005B54:
/* 6754 80005B54 44810000 */  mtc1       $at, $f0
/* 6758 80005B58 00000000 */  nop
.L80005B5C:
/* 675C 80005B5C 46083280 */  add.s      $f10, $f6, $f8
/* 6760 80005B60 4600503C */  c.lt.s     $f10, $f0
/* 6764 80005B64 00000000 */  nop
/* 6768 80005B68 4502002A */  bc1fl      .L80005C14
/* 676C 80005B6C 26B5FFFF */   addiu     $s5, $s5, -0x1
/* 6770 80005B70 E64E0000 */  swc1       $f14, 0x0($s2)
/* 6774 80005B74 E6500004 */  swc1       $f16, 0x4($s2)
/* 6778 80005B78 0C008CBD */  jal        func_800232F4
/* 677C 80005B7C C68C0010 */   lwc1      $f12, 0x10($s4)
/* 6780 80005B80 C6520004 */  lwc1       $f18, 0x4($s2)
/* 6784 80005B84 4612F03E */  c.le.s     $f30, $f18
/* 6788 80005B88 00000000 */  nop
/* 678C 80005B8C 45020021 */  bc1fl      .L80005C14
/* 6790 80005B90 26B5FFFF */   addiu     $s5, $s5, -0x1
/* 6794 80005B94 C6440000 */  lwc1       $f4, 0x0($s2)
/* 6798 80005B98 46002021 */  cvt.d.s    $f0, $f4
/* 679C 80005B9C 4620C03C */  c.lt.d     $f24, $f0
/* 67A0 80005BA0 00000000 */  nop
/* 67A4 80005BA4 4502001B */  bc1fl      .L80005C14
/* 67A8 80005BA8 26B5FFFF */   addiu     $s5, $s5, -0x1
/* 67AC 80005BAC 463A003C */  c.lt.d     $f0, $f26
/* 67B0 80005BB0 02601025 */  or         $v0, $s3, $zero
/* 67B4 80005BB4 2624FFEC */  addiu      $a0, $s1, -0x14
/* 67B8 80005BB8 45020016 */  bc1fl      .L80005C14
/* 67BC 80005BBC 26B5FFFF */   addiu     $s5, $s5, -0x1
/* 67C0 80005BC0 10930013 */  beq        $a0, $s3, .L80005C10
/* 67C4 80005BC4 26100001 */   addiu     $s0, $s0, 0x1
/* 67C8 80005BC8 02335023 */  subu       $t2, $s1, $s3
/* 67CC 80005BCC 254BFFEC */  addiu      $t3, $t2, -0x14
/* 67D0 80005BD0 0177001B */  divu       $zero, $t3, $s7
/* 67D4 80005BD4 00002810 */  mfhi       $a1
/* 67D8 80005BD8 00A01825 */  or         $v1, $a1, $zero
/* 67DC 80005BDC 16E00002 */  bnez       $s7, .L80005BE8
/* 67E0 80005BE0 00000000 */   nop
/* 67E4 80005BE4 0007000D */  break      7
.L80005BE8:
/* 67E8 80005BE8 00B31821 */  addu       $v1, $a1, $s3
/* 67EC 80005BEC 50A00006 */  beql       $a1, $zero, .L80005C08
/* 67F0 80005BF0 24420210 */   addiu     $v0, $v0, 0x210
.L80005BF4:
/* 67F4 80005BF4 24420084 */  addiu      $v0, $v0, 0x84
/* 67F8 80005BF8 1462FFFE */  bne        $v1, $v0, .L80005BF4
/* 67FC 80005BFC 26100001 */   addiu     $s0, $s0, 0x1
/* 6800 80005C00 10440003 */  beq        $v0, $a0, .L80005C10
.L80005C04:
/* 6804 80005C04 24420210 */   addiu     $v0, $v0, 0x210
.L80005C08:
/* 6808 80005C08 1444FFFE */  bne        $v0, $a0, .L80005C04
/* 680C 80005C0C 26100004 */   addiu     $s0, $s0, 0x4
.L80005C10:
/* 6810 80005C10 26B5FFFF */  addiu      $s5, $s5, -0x1
.L80005C14:
/* 6814 80005C14 52A00004 */  beql       $s5, $zero, .L80005C28
/* 6818 80005C18 02001025 */   or        $v0, $s0, $zero
/* 681C 80005C1C 5200FFB1 */  beql       $s0, $zero, .L80005AE4
/* 6820 80005C20 8ED10000 */   lw        $s1, 0x0($s6)
.L80005C24:
/* 6824 80005C24 02001025 */  or         $v0, $s0, $zero
.L80005C28:
/* 6828 80005C28 8FBF0064 */  lw         $ra, 0x64($sp)
/* 682C 80005C2C D7B40010 */  ldc1       $f20, 0x10($sp)
/* 6830 80005C30 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 6834 80005C34 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 6838 80005C38 D7BA0028 */  ldc1       $f26, 0x28($sp)
/* 683C 80005C3C D7BC0030 */  ldc1       $f28, 0x30($sp)
/* 6840 80005C40 D7BE0038 */  ldc1       $f30, 0x38($sp)
/* 6844 80005C44 8FB00044 */  lw         $s0, 0x44($sp)
/* 6848 80005C48 8FB10048 */  lw         $s1, 0x48($sp)
/* 684C 80005C4C 8FB2004C */  lw         $s2, 0x4C($sp)
/* 6850 80005C50 8FB30050 */  lw         $s3, 0x50($sp)
/* 6854 80005C54 8FB40054 */  lw         $s4, 0x54($sp)
/* 6858 80005C58 8FB50058 */  lw         $s5, 0x58($sp)
/* 685C 80005C5C 8FB6005C */  lw         $s6, 0x5C($sp)
/* 6860 80005C60 8FB70060 */  lw         $s7, 0x60($sp)
/* 6864 80005C64 03E00008 */  jr         $ra
/* 6868 80005C68 27BD0068 */   addiu     $sp, $sp, 0x68
