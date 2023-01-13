.section .late_rodata
glabel D_80071620
/* 72220 80071620 400921FB54442D18 */ .double 3.14159265358979312

glabel D_80071628
/* 72228 80071628 C00921FB54442D18 */ .double -3.14159265358979312

glabel D_80071630
/* 72230 80071630 401921FB54442D18 */ .double 6.28318530717958623

glabel D_80071638
/* 72238 80071638 401921FB54442D18 */ .double 6.28318530717958623

glabel D_80071640
/* 72240 80071640 401921FB54442D18 */ .double 6.28318530717958623

glabel D_80071648
/* 72248 80071648 400921FB54442D18 */ .double 3.14159265358979312

glabel D_80071650
/* 72250 80071650 3FD921FB54442D18 */ .double 0.392699081698724139

glabel D_80071658
/* 72258 80071658 C00921FB54442D18 */ .double -3.14159265358979312

glabel D_80071660
/* 72260 80071660 3C23D70A */ .float 0.009999999776
/* 72264 80071664 00000000 */ .float 0

glabel D_80071668
/* 72268 80071668 400921FB54442D18 */ .double 3.14159265358979312

glabel D_80071670
/* 72270 80071670 401921FB54442D18 */ .double 6.28318530717958623

glabel D_80071678
/* 72278 80071678 C00921FB54442D18 */ .double -3.14159265358979312

glabel D_80071680
/* 72280 80071680 401921FB54442D18 */ .double 6.28318530717958623

glabel D_80071688
/* 72288 80071688 3CA3D70A */ .float 0.01999999955
/* 7228C 8007168C 00000000 */ .float 0


.section .text
glabel func_8001CACC
/* 1D6CC 8001CACC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D6D0 8001CAD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D6D4 8001CAD4 3C028009 */  lui        $v0, %hi(D_8008C58C)
/* 1D6D8 8001CAD8 9442C58C */  lhu        $v0, %lo(D_8008C58C)($v0)
/* 1D6DC 8001CADC 3C198008 */  lui        $t9, %hi(D_8007C998)
/* 1D6E0 8001CAE0 2739C998 */  addiu      $t9, $t9, %lo(D_8007C998)
/* 1D6E4 8001CAE4 10400006 */  beqz       $v0, .L8001CB00
/* 1D6E8 8001CAE8 3C0E8009 */   lui       $t6, %hi(D_8008C590)
/* 1D6EC 8001CAEC 24010001 */  addiu      $at, $zero, 0x1
/* 1D6F0 8001CAF0 104100B2 */  beq        $v0, $at, .L8001CDBC
/* 1D6F4 8001CAF4 00000000 */   nop
/* 1D6F8 8001CAF8 10000138 */  b          .L8001CFDC
/* 1D6FC 8001CAFC 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001CB00:
/* 1D700 8001CB00 95CEC590 */  lhu        $t6, %lo(D_8008C590)($t6)
/* 1D704 8001CB04 3C028008 */  lui        $v0, %hi(D_8007BAB8)
/* 1D708 8001CB08 2442BAB8 */  addiu      $v0, $v0, %lo(D_8007BAB8)
/* 1D70C 8001CB0C 000E78C0 */  sll        $t7, $t6, 3
/* 1D710 8001CB10 01EE7821 */  addu       $t7, $t7, $t6
/* 1D714 8001CB14 000F7880 */  sll        $t7, $t7, 2
/* 1D718 8001CB18 01EE7821 */  addu       $t7, $t7, $t6
/* 1D71C 8001CB1C 000F78C0 */  sll        $t7, $t7, 3
/* 1D720 8001CB20 25F80024 */  addiu      $t8, $t7, 0x24
/* 1D724 8001CB24 03191821 */  addu       $v1, $t8, $t9
/* 1D728 8001CB28 C4640000 */  lwc1       $f4, 0x0($v1)
/* 1D72C 8001CB2C C4460014 */  lwc1       $f6, 0x14($v0)
/* 1D730 8001CB30 C4680008 */  lwc1       $f8, 0x8($v1)
/* 1D734 8001CB34 C44A001C */  lwc1       $f10, 0x1C($v0)
/* 1D738 8001CB38 AFA30018 */  sw         $v1, 0x18($sp)
/* 1D73C 8001CB3C 46062301 */  sub.s      $f12, $f4, $f6
/* 1D740 8001CB40 0C008C84 */  jal        func_80023210
/* 1D744 8001CB44 460A4381 */   sub.s     $f14, $f8, $f10
/* 1D748 8001CB48 24040064 */  addiu      $a0, $zero, 0x64
/* 1D74C 8001CB4C 0C008BF4 */  jal        func_80022FD0
/* 1D750 8001CB50 E7A0001C */   swc1      $f0, 0x1C($sp)
/* 1D754 8001CB54 2C410033 */  sltiu      $at, $v0, 0x33
/* 1D758 8001CB58 8FA30018 */  lw         $v1, 0x18($sp)
/* 1D75C 8001CB5C 14200019 */  bnez       $at, .L8001CBC4
/* 1D760 8001CB60 C7AE001C */   lwc1      $f14, 0x1C($sp)
/* 1D764 8001CB64 3C018007 */  lui        $at, %hi(D_80071620)
/* 1D768 8001CB68 D4301620 */  ldc1       $f16, %lo(D_80071620)($at)
/* 1D76C 8001CB6C 46007121 */  cvt.d.s    $f4, $f14
/* 1D770 8001CB70 3C018007 */  lui        $at, %hi(D_80071628)
/* 1D774 8001CB74 46302180 */  add.d      $f6, $f4, $f16
/* 1D778 8001CB78 D4281628 */  ldc1       $f8, %lo(D_80071628)($at)
/* 1D77C 8001CB7C 3C018007 */  lui        $at, %hi(D_80071630)
/* 1D780 8001CB80 462033A0 */  cvt.s.d    $f14, $f6
/* 1D784 8001CB84 46007021 */  cvt.d.s    $f0, $f14
/* 1D788 8001CB88 4628003C */  c.lt.d     $f0, $f8
/* 1D78C 8001CB8C 00000000 */  nop
/* 1D790 8001CB90 45020006 */  bc1fl      .L8001CBAC
/* 1D794 8001CB94 4620803C */   c.lt.d    $f16, $f0
/* 1D798 8001CB98 D42C1630 */  ldc1       $f12, %lo(D_80071630)($at)
/* 1D79C 8001CB9C 462C0280 */  add.d      $f10, $f0, $f12
/* 1D7A0 8001CBA0 10000008 */  b          .L8001CBC4
/* 1D7A4 8001CBA4 462053A0 */   cvt.s.d   $f14, $f10
/* 1D7A8 8001CBA8 4620803C */  c.lt.d     $f16, $f0
.L8001CBAC:
/* 1D7AC 8001CBAC 3C018007 */  lui        $at, %hi(D_80071638)
/* 1D7B0 8001CBB0 45000004 */  bc1f       .L8001CBC4
/* 1D7B4 8001CBB4 00000000 */   nop
/* 1D7B8 8001CBB8 D42C1638 */  ldc1       $f12, %lo(D_80071638)($at)
/* 1D7BC 8001CBBC 462C0101 */  sub.d      $f4, $f0, $f12
/* 1D7C0 8001CBC0 462023A0 */  cvt.s.d    $f14, $f4
.L8001CBC4:
/* 1D7C4 8001CBC4 3C018007 */  lui        $at, %hi(D_80071640)
/* 1D7C8 8001CBC8 D42C1640 */  ldc1       $f12, %lo(D_80071640)($at)
/* 1D7CC 8001CBCC 3C018007 */  lui        $at, %hi(D_80071648)
/* 1D7D0 8001CBD0 D4301648 */  ldc1       $f16, %lo(D_80071648)($at)
/* 1D7D4 8001CBD4 3C018007 */  lui        $at, %hi(D_80071650)
/* 1D7D8 8001CBD8 D4281650 */  ldc1       $f8, %lo(D_80071650)($at)
/* 1D7DC 8001CBDC 460071A1 */  cvt.d.s    $f6, $f14
/* 1D7E0 8001CBE0 3C018007 */  lui        $at, %hi(D_80071658)
/* 1D7E4 8001CBE4 46283280 */  add.d      $f10, $f6, $f8
/* 1D7E8 8001CBE8 D4241658 */  ldc1       $f4, %lo(D_80071658)($at)
/* 1D7EC 8001CBEC 462053A0 */  cvt.s.d    $f14, $f10
/* 1D7F0 8001CBF0 46007021 */  cvt.d.s    $f0, $f14
/* 1D7F4 8001CBF4 4624003C */  c.lt.d     $f0, $f4
/* 1D7F8 8001CBF8 00000000 */  nop
/* 1D7FC 8001CBFC 45020005 */  bc1fl      .L8001CC14
/* 1D800 8001CC00 4620803C */   c.lt.d    $f16, $f0
/* 1D804 8001CC04 462C0180 */  add.d      $f6, $f0, $f12
/* 1D808 8001CC08 10000007 */  b          .L8001CC28
/* 1D80C 8001CC0C 462033A0 */   cvt.s.d   $f14, $f6
/* 1D810 8001CC10 4620803C */  c.lt.d     $f16, $f0
.L8001CC14:
/* 1D814 8001CC14 00000000 */  nop
/* 1D818 8001CC18 45020004 */  bc1fl      .L8001CC2C
/* 1D81C 8001CC1C 44808000 */   mtc1      $zero, $f16
/* 1D820 8001CC20 462C0201 */  sub.d      $f8, $f0, $f12
/* 1D824 8001CC24 462043A0 */  cvt.s.d    $f14, $f8
.L8001CC28:
/* 1D828 8001CC28 44808000 */  mtc1       $zero, $f16
.L8001CC2C:
/* 1D82C 8001CC2C 3C058009 */  lui        $a1, %hi(D_8008C580)
/* 1D830 8001CC30 24A5C580 */  addiu      $a1, $a1, %lo(D_8008C580)
/* 1D834 8001CC34 E4B00000 */  swc1       $f16, 0x0($a1)
/* 1D838 8001CC38 8C620064 */  lw         $v0, 0x64($v1)
/* 1D83C 8001CC3C C442001C */  lwc1       $f2, 0x1C($v0)
/* 1D840 8001CC40 C44C0018 */  lwc1       $f12, 0x18($v0)
/* 1D844 8001CC44 460C103C */  c.lt.s     $f2, $f12
/* 1D848 8001CC48 00000000 */  nop
/* 1D84C 8001CC4C 4502000D */  bc1fl      .L8001CC84
/* 1D850 8001CC50 C4640024 */   lwc1      $f4, 0x24($v1)
/* 1D854 8001CC54 C46A0024 */  lwc1       $f10, 0x24($v1)
/* 1D858 8001CC58 3C01402E */  lui        $at, (0x402E0000 >> 16)
/* 1D85C 8001CC5C 44819800 */  mtc1       $at, $f19
/* 1D860 8001CC60 460A6102 */  mul.s      $f4, $f12, $f10
/* 1D864 8001CC64 44809000 */  mtc1       $zero, $f18
/* 1D868 8001CC68 46002021 */  cvt.d.s    $f0, $f4
/* 1D86C 8001CC6C 46200180 */  add.d      $f6, $f0, $f0
/* 1D870 8001CC70 46323200 */  add.d      $f8, $f6, $f18
/* 1D874 8001CC74 462042A0 */  cvt.s.d    $f10, $f8
/* 1D878 8001CC78 1000000B */  b          .L8001CCA8
/* 1D87C 8001CC7C E4AA0004 */   swc1      $f10, 0x4($a1)
/* 1D880 8001CC80 C4640024 */  lwc1       $f4, 0x24($v1)
.L8001CC84:
/* 1D884 8001CC84 3C01402E */  lui        $at, (0x402E0000 >> 16)
/* 1D888 8001CC88 44819800 */  mtc1       $at, $f19
/* 1D88C 8001CC8C 46041182 */  mul.s      $f6, $f2, $f4
/* 1D890 8001CC90 44809000 */  mtc1       $zero, $f18
/* 1D894 8001CC94 46003021 */  cvt.d.s    $f0, $f6
/* 1D898 8001CC98 46200200 */  add.d      $f8, $f0, $f0
/* 1D89C 8001CC9C 46324280 */  add.d      $f10, $f8, $f18
/* 1D8A0 8001CCA0 46205120 */  cvt.s.d    $f4, $f10
/* 1D8A4 8001CCA4 E4A40004 */  swc1       $f4, 0x4($a1)
.L8001CCA8:
/* 1D8A8 8001CCA8 C4A60004 */  lwc1       $f6, 0x4($a1)
/* 1D8AC 8001CCAC 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
/* 1D8B0 8001CCB0 44815800 */  mtc1       $at, $f11
/* 1D8B4 8001CCB4 44805000 */  mtc1       $zero, $f10
/* 1D8B8 8001CCB8 46003221 */  cvt.d.s    $f8, $f6
/* 1D8BC 8001CCBC 3C028008 */  lui        $v0, %hi(D_80086DC0)
/* 1D8C0 8001CCC0 462A4102 */  mul.d      $f4, $f8, $f10
/* 1D8C4 8001CCC4 24426DC0 */  addiu      $v0, $v0, %lo(D_80086DC0)
/* 1D8C8 8001CCC8 46007306 */  mov.s      $f12, $f14
/* 1D8CC 8001CCCC AFA30018 */  sw         $v1, 0x18($sp)
/* 1D8D0 8001CCD0 462021A0 */  cvt.s.d    $f6, $f4
/* 1D8D4 8001CCD4 0C008CBD */  jal        func_800232F4
/* 1D8D8 8001CCD8 E446004C */   swc1      $f6, 0x4C($v0)
/* 1D8DC 8001CCDC 8FA30018 */  lw         $v1, 0x18($sp)
/* 1D8E0 8001CCE0 3C058009 */  lui        $a1, %hi(D_8008C580)
/* 1D8E4 8001CCE4 24A5C580 */  addiu      $a1, $a1, %lo(D_8008C580)
/* 1D8E8 8001CCE8 C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 1D8EC 8001CCEC C4680000 */  lwc1       $f8, 0x0($v1)
/* 1D8F0 8001CCF0 3C028008 */  lui        $v0, %hi(D_80086DC0)
/* 1D8F4 8001CCF4 24426DC0 */  addiu      $v0, $v0, %lo(D_80086DC0)
/* 1D8F8 8001CCF8 460A4100 */  add.s      $f4, $f8, $f10
/* 1D8FC 8001CCFC C4A80004 */  lwc1       $f8, 0x4($a1)
/* 1D900 8001CD00 3C01402E */  lui        $at, (0x402E0000 >> 16)
/* 1D904 8001CD04 44819800 */  mtc1       $at, $f19
/* 1D908 8001CD08 E444000C */  swc1       $f4, 0xC($v0)
/* 1D90C 8001CD0C C4660008 */  lwc1       $f6, 0x8($v1)
/* 1D910 8001CD10 44809000 */  mtc1       $zero, $f18
/* 1D914 8001CD14 3C018008 */  lui        $at, %hi(D_8007BAD0)
/* 1D918 8001CD18 46083280 */  add.s      $f10, $f6, $f8
/* 1D91C 8001CD1C 44808000 */  mtc1       $zero, $f16
/* 1D920 8001CD20 3C058009 */  lui        $a1, %hi(D_8008C58C)
/* 1D924 8001CD24 3C048009 */  lui        $a0, %hi(D_8008C58E)
/* 1D928 8001CD28 E44A0014 */  swc1       $f10, 0x14($v0)
/* 1D92C 8001CD2C C4640004 */  lwc1       $f4, 0x4($v1)
/* 1D930 8001CD30 2484C58E */  addiu      $a0, $a0, %lo(D_8008C58E)
/* 1D934 8001CD34 24A5C58C */  addiu      $a1, $a1, %lo(D_8008C58C)
/* 1D938 8001CD38 460021A1 */  cvt.d.s    $f6, $f4
/* 1D93C 8001CD3C 46323200 */  add.d      $f8, $f6, $f18
/* 1D940 8001CD40 462042A0 */  cvt.s.d    $f10, $f8
/* 1D944 8001CD44 E44A0010 */  swc1       $f10, 0x10($v0)
/* 1D948 8001CD48 C4440010 */  lwc1       $f4, 0x10($v0)
/* 1D94C 8001CD4C C420BAD0 */  lwc1       $f0, %lo(D_8007BAD0)($at)
/* 1D950 8001CD50 3C014170 */  lui        $at, (0x41700000 >> 16)
/* 1D954 8001CD54 44815000 */  mtc1       $at, $f10
/* 1D958 8001CD58 4600203C */  c.lt.s     $f4, $f0
/* 1D95C 8001CD5C 3C018007 */  lui        $at, %hi(D_80071660)
/* 1D960 8001CD60 45020003 */  bc1fl      .L8001CD70
/* 1D964 8001CD64 E4500048 */   swc1      $f16, 0x48($v0)
/* 1D968 8001CD68 E4400010 */  swc1       $f0, 0x10($v0)
/* 1D96C 8001CD6C E4500048 */  swc1       $f16, 0x48($v0)
.L8001CD70:
/* 1D970 8001CD70 C4460048 */  lwc1       $f6, 0x48($v0)
/* 1D974 8001CD74 AC400000 */  sw         $zero, 0x0($v0)
/* 1D978 8001CD78 E450003C */  swc1       $f16, 0x3C($v0)
/* 1D97C 8001CD7C E4460044 */  swc1       $f6, 0x44($v0)
/* 1D980 8001CD80 C4480044 */  lwc1       $f8, 0x44($v0)
/* 1D984 8001CD84 E44A0058 */  swc1       $f10, 0x58($v0)
/* 1D988 8001CD88 AC430080 */  sw         $v1, 0x80($v0)
/* 1D98C 8001CD8C E4480040 */  swc1       $f8, 0x40($v0)
/* 1D990 8001CD90 C4241660 */  lwc1       $f4, %lo(D_80071660)($at)
/* 1D994 8001CD94 C446002C */  lwc1       $f6, 0x2C($v0)
/* 1D998 8001CD98 3C018008 */  lui        $at, %hi(D_80086EF0)
/* 1D99C 8001CD9C E4440070 */  swc1       $f4, 0x70($v0)
/* 1D9A0 8001CDA0 E4266EF0 */  swc1       $f6, %lo(D_80086EF0)($at)
/* 1D9A4 8001CDA4 94A80000 */  lhu        $t0, 0x0($a1)
/* 1D9A8 8001CDA8 240A003C */  addiu      $t2, $zero, 0x3C
/* 1D9AC 8001CDAC A48A0000 */  sh         $t2, 0x0($a0)
/* 1D9B0 8001CDB0 25090001 */  addiu      $t1, $t0, 0x1
/* 1D9B4 8001CDB4 10000088 */  b          .L8001CFD8
/* 1D9B8 8001CDB8 A4A90000 */   sh        $t1, 0x0($a1)
.L8001CDBC:
/* 1D9BC 8001CDBC 3C048009 */  lui        $a0, %hi(D_8008C58E)
/* 1D9C0 8001CDC0 2484C58E */  addiu      $a0, $a0, %lo(D_8008C58E)
/* 1D9C4 8001CDC4 948B0000 */  lhu        $t3, 0x0($a0)
/* 1D9C8 8001CDC8 256CFFFF */  addiu      $t4, $t3, -0x1
/* 1D9CC 8001CDCC 318DFFFF */  andi       $t5, $t4, 0xFFFF
/* 1D9D0 8001CDD0 15A00081 */  bnez       $t5, .L8001CFD8
/* 1D9D4 8001CDD4 A48C0000 */   sh        $t4, 0x0($a0)
/* 1D9D8 8001CDD8 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 1D9DC 8001CDDC 2442C592 */  addiu      $v0, $v0, %lo(D_8008C592)
/* 1D9E0 8001CDE0 944E0000 */  lhu        $t6, 0x0($v0)
/* 1D9E4 8001CDE4 3C048008 */  lui        $a0, %hi(D_80086ED8)
/* 1D9E8 8001CDE8 31CFFDFF */  andi       $t7, $t6, 0xFDFF
/* 1D9EC 8001CDEC A44F0000 */  sh         $t7, 0x0($v0)
/* 1D9F0 8001CDF0 0C004FD7 */  jal        func_80013F5C
/* 1D9F4 8001CDF4 8C846ED8 */   lw        $a0, %lo(D_80086ED8)($a0)
/* 1D9F8 8001CDF8 3C028008 */  lui        $v0, %hi(D_8007BAB8)
/* 1D9FC 8001CDFC 3C018009 */  lui        $at, %hi(D_8008C59C)
/* 1DA00 8001CE00 C428C59C */  lwc1       $f8, %lo(D_8008C59C)($at)
/* 1DA04 8001CE04 2442BAB8 */  addiu      $v0, $v0, %lo(D_8007BAB8)
/* 1DA08 8001CE08 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* 1DA0C 8001CE0C C44A0014 */  lwc1       $f10, 0x14($v0)
/* 1DA10 8001CE10 C424C5A0 */  lwc1       $f4, %lo(D_8008C5A0)($at)
/* 1DA14 8001CE14 C446001C */  lwc1       $f6, 0x1C($v0)
/* 1DA18 8001CE18 460A4301 */  sub.s      $f12, $f8, $f10
/* 1DA1C 8001CE1C 0C008C84 */  jal        func_80023210
/* 1DA20 8001CE20 46062381 */   sub.s     $f14, $f4, $f6
/* 1DA24 8001CE24 3C018007 */  lui        $at, %hi(D_80071668)
/* 1DA28 8001CE28 D4301668 */  ldc1       $f16, %lo(D_80071668)($at)
/* 1DA2C 8001CE2C 46000221 */  cvt.d.s    $f8, $f0
/* 1DA30 8001CE30 3C058009 */  lui        $a1, %hi(D_8008C580)
/* 1DA34 8001CE34 46304280 */  add.d      $f10, $f8, $f16
/* 1DA38 8001CE38 3C018007 */  lui        $at, %hi(D_80071678)
/* 1DA3C 8001CE3C 24A5C580 */  addiu      $a1, $a1, %lo(D_8008C580)
/* 1DA40 8001CE40 462053A0 */  cvt.s.d    $f14, $f10
/* 1DA44 8001CE44 460070A1 */  cvt.d.s    $f2, $f14
/* 1DA48 8001CE48 4622803C */  c.lt.d     $f16, $f2
/* 1DA4C 8001CE4C 44808000 */  mtc1       $zero, $f16
/* 1DA50 8001CE50 45000006 */  bc1f       .L8001CE6C
/* 1DA54 8001CE54 00000000 */   nop
/* 1DA58 8001CE58 3C018007 */  lui        $at, %hi(D_80071670)
/* 1DA5C 8001CE5C D42C1670 */  ldc1       $f12, %lo(D_80071670)($at)
/* 1DA60 8001CE60 462C1101 */  sub.d      $f4, $f2, $f12
/* 1DA64 8001CE64 1000000A */  b          .L8001CE90
/* 1DA68 8001CE68 462023A0 */   cvt.s.d   $f14, $f4
.L8001CE6C:
/* 1DA6C 8001CE6C D4261678 */  ldc1       $f6, %lo(D_80071678)($at)
/* 1DA70 8001CE70 3C018007 */  lui        $at, %hi(D_80071680)
/* 1DA74 8001CE74 4626103C */  c.lt.d     $f2, $f6
/* 1DA78 8001CE78 00000000 */  nop
/* 1DA7C 8001CE7C 45020005 */  bc1fl      .L8001CE94
/* 1DA80 8001CE80 3C014248 */   lui       $at, (0x42480000 >> 16)
/* 1DA84 8001CE84 D42C1680 */  ldc1       $f12, %lo(D_80071680)($at)
/* 1DA88 8001CE88 462C1200 */  add.d      $f8, $f2, $f12
/* 1DA8C 8001CE8C 462043A0 */  cvt.s.d    $f14, $f8
.L8001CE90:
/* 1DA90 8001CE90 3C014248 */  lui        $at, (0x42480000 >> 16)
.L8001CE94:
/* 1DA94 8001CE94 44815000 */  mtc1       $at, $f10
/* 1DA98 8001CE98 E4B00000 */  swc1       $f16, 0x0($a1)
/* 1DA9C 8001CE9C 46007306 */  mov.s      $f12, $f14
/* 1DAA0 8001CEA0 0C008CBD */  jal        func_800232F4
/* 1DAA4 8001CEA4 E4AA0004 */   swc1      $f10, 0x4($a1)
/* 1DAA8 8001CEA8 3C038008 */  lui        $v1, %hi(D_8007BAB8)
/* 1DAAC 8001CEAC 3C058009 */  lui        $a1, %hi(D_8008C580)
/* 1DAB0 8001CEB0 24A5C580 */  addiu      $a1, $a1, %lo(D_8008C580)
/* 1DAB4 8001CEB4 2463BAB8 */  addiu      $v1, $v1, %lo(D_8007BAB8)
/* 1DAB8 8001CEB8 C4640014 */  lwc1       $f4, 0x14($v1)
/* 1DABC 8001CEBC C4A60000 */  lwc1       $f6, 0x0($a1)
/* 1DAC0 8001CEC0 C46A0018 */  lwc1       $f10, 0x18($v1)
/* 1DAC4 8001CEC4 3C01403E */  lui        $at, (0x403E0000 >> 16)
/* 1DAC8 8001CEC8 46062200 */  add.s      $f8, $f4, $f6
/* 1DACC 8001CECC 44803000 */  mtc1       $zero, $f6
/* 1DAD0 8001CED0 44813800 */  mtc1       $at, $f7
/* 1DAD4 8001CED4 3C028008 */  lui        $v0, %hi(D_80086DC0)
/* 1DAD8 8001CED8 46005121 */  cvt.d.s    $f4, $f10
/* 1DADC 8001CEDC 24426DC0 */  addiu      $v0, $v0, %lo(D_80086DC0)
/* 1DAE0 8001CEE0 E448000C */  swc1       $f8, 0xC($v0)
/* 1DAE4 8001CEE4 46262200 */  add.d      $f8, $f4, $f6
/* 1DAE8 8001CEE8 44808000 */  mtc1       $zero, $f16
/* 1DAEC 8001CEEC C4A60004 */  lwc1       $f6, 0x4($a1)
/* 1DAF0 8001CEF0 C464001C */  lwc1       $f4, 0x1C($v1)
/* 1DAF4 8001CEF4 462042A0 */  cvt.s.d    $f10, $f8
/* 1DAF8 8001CEF8 E4500048 */  swc1       $f16, 0x48($v0)
/* 1DAFC 8001CEFC 94590008 */  lhu        $t9, 0x8($v0)
/* 1DB00 8001CF00 46062200 */  add.s      $f8, $f4, $f6
/* 1DB04 8001CF04 E44A0010 */  swc1       $f10, 0x10($v0)
/* 1DB08 8001CF08 C44A0048 */  lwc1       $f10, 0x48($v0)
/* 1DB0C 8001CF0C 24180004 */  addiu      $t8, $zero, 0x4
/* 1DB10 8001CF10 37280010 */  ori        $t0, $t9, 0x10
/* 1DB14 8001CF14 E44A0044 */  swc1       $f10, 0x44($v0)
/* 1DB18 8001CF18 C4440044 */  lwc1       $f4, 0x44($v0)
/* 1DB1C 8001CF1C AC580000 */  sw         $t8, 0x0($v0)
/* 1DB20 8001CF20 A4480008 */  sh         $t0, 0x8($v0)
/* 1DB24 8001CF24 E4480014 */  swc1       $f8, 0x14($v0)
/* 1DB28 8001CF28 3C098009 */  lui        $t1, %hi(D_8008C592)
/* 1DB2C 8001CF2C E450003C */  swc1       $f16, 0x3C($v0)
/* 1DB30 8001CF30 E4440040 */  swc1       $f4, 0x40($v0)
/* 1DB34 8001CF34 9529C592 */  lhu        $t1, %lo(D_8008C592)($t1)
/* 1DB38 8001CF38 3C0F8008 */  lui        $t7, %hi(D_8007BACC)
/* 1DB3C 8001CF3C 3C0B8009 */  lui        $t3, %hi(D_8008C570)
/* 1DB40 8001CF40 312A0100 */  andi       $t2, $t1, 0x100
/* 1DB44 8001CF44 1140000E */  beqz       $t2, .L8001CF80
/* 1DB48 8001CF48 25EFBACC */   addiu     $t7, $t7, %lo(D_8007BACC)
/* 1DB4C 8001CF4C 8D6BC570 */  lw         $t3, %lo(D_8008C570)($t3)
/* 1DB50 8001CF50 24010008 */  addiu      $at, $zero, 0x8
/* 1DB54 8001CF54 1561000A */  bne        $t3, $at, .L8001CF80
/* 1DB58 8001CF58 3C014248 */   lui       $at, (0x42480000 >> 16)
/* 1DB5C 8001CF5C 44813000 */  mtc1       $at, $f6
/* 1DB60 8001CF60 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 1DB64 8001CF64 44814000 */  mtc1       $at, $f8
/* 1DB68 8001CF68 3C014334 */  lui        $at, (0x43340000 >> 16)
/* 1DB6C 8001CF6C 44815000 */  mtc1       $at, $f10
/* 1DB70 8001CF70 E4460058 */  swc1       $f6, 0x58($v0)
/* 1DB74 8001CF74 E448005C */  swc1       $f8, 0x5C($v0)
/* 1DB78 8001CF78 10000011 */  b          .L8001CFC0
/* 1DB7C 8001CF7C E44A004C */   swc1      $f10, 0x4C($v0)
.L8001CF80:
/* 1DB80 8001CF80 3C0C8008 */  lui        $t4, %hi(D_80084EE4)
/* 1DB84 8001CF84 8D8C4EE4 */  lw         $t4, %lo(D_80084EE4)($t4)
/* 1DB88 8001CF88 3C0E8005 */  lui        $t6, %hi(D_8004D0A0)
/* 1DB8C 8001CF8C 25CED0A0 */  addiu      $t6, $t6, %lo(D_8004D0A0)
/* 1DB90 8001CF90 000C6880 */  sll        $t5, $t4, 2
/* 1DB94 8001CF94 01AC6823 */  subu       $t5, $t5, $t4
/* 1DB98 8001CF98 000D6880 */  sll        $t5, $t5, 2
/* 1DB9C 8001CF9C 01AE1821 */  addu       $v1, $t5, $t6
/* 1DBA0 8001CFA0 C4660000 */  lwc1       $f6, 0x0($v1)
/* 1DBA4 8001CFA4 C4440058 */  lwc1       $f4, 0x58($v0)
/* 1DBA8 8001CFA8 C44A004C */  lwc1       $f10, 0x4C($v0)
/* 1DBAC 8001CFAC 46062200 */  add.s      $f8, $f4, $f6
/* 1DBB0 8001CFB0 C4640004 */  lwc1       $f4, 0x4($v1)
/* 1DBB4 8001CFB4 46045180 */  add.s      $f6, $f10, $f4
/* 1DBB8 8001CFB8 E4480058 */  swc1       $f8, 0x58($v0)
/* 1DBBC 8001CFBC E446004C */  swc1       $f6, 0x4C($v0)
.L8001CFC0:
/* 1DBC0 8001CFC0 AC4F0080 */  sw         $t7, 0x80($v0)
/* 1DBC4 8001CFC4 3C018007 */  lui        $at, %hi(D_80071688)
/* 1DBC8 8001CFC8 C4281688 */  lwc1       $f8, %lo(D_80071688)($at)
/* 1DBCC 8001CFCC 3C018008 */  lui        $at, %hi(D_80086EFC)
/* 1DBD0 8001CFD0 E4480070 */  swc1       $f8, 0x70($v0)
/* 1DBD4 8001CFD4 E4306EFC */  swc1       $f16, %lo(D_80086EFC)($at)
.L8001CFD8:
/* 1DBD8 8001CFD8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001CFDC:
/* 1DBDC 8001CFDC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1DBE0 8001CFE0 03E00008 */  jr         $ra
/* 1DBE4 8001CFE4 00000000 */   nop
