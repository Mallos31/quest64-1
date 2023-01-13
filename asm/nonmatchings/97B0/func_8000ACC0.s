.section .late_rodata
glabel jtbl_80071198
/* 71D98 80071198 8000AD88 */ .word .L8000AD88
/* 71D9C 8007119C 8000AD88 */ .word .L8000AD88
/* 71DA0 800711A0 8000ADA4 */ .word .L8000ADA4
/* 71DA4 800711A4 8000AD88 */ .word .L8000AD88
/* 71DA8 800711A8 8000AD94 */ .word .L8000AD94
/* 71DAC 800711AC 8000ADA4 */ .word .L8000ADA4
/* 71DB0 800711B0 8000ADA4 */ .word .L8000ADA4
/* 71DB4 800711B4 8000AD88 */ .word .L8000AD88
/* 71DB8 800711B8 8000ADA4 */ .word .L8000ADA4
/* 71DBC 800711BC 8000AD94 */ .word .L8000AD94


.section .text
glabel func_8000ACC0
/* B8C0 8000ACC0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* B8C4 8000ACC4 AFB00020 */  sw         $s0, 0x20($sp)
/* B8C8 8000ACC8 AFA60058 */  sw         $a2, 0x58($sp)
/* B8CC 8000ACCC 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* B8D0 8000ACD0 01C03025 */  or         $a2, $t6, $zero
/* B8D4 8000ACD4 30B0FFFF */  andi       $s0, $a1, 0xFFFF
/* B8D8 8000ACD8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B8DC 8000ACDC AFA50054 */  sw         $a1, 0x54($sp)
/* B8E0 8000ACE0 AFA7005C */  sw         $a3, 0x5C($sp)
/* B8E4 8000ACE4 000478C0 */  sll        $t7, $a0, 3
/* B8E8 8000ACE8 01E47821 */  addu       $t7, $t7, $a0
/* B8EC 8000ACEC 000F7880 */  sll        $t7, $t7, 2
/* B8F0 8000ACF0 01E47821 */  addu       $t7, $t7, $a0
/* B8F4 8000ACF4 3C188008 */  lui        $t8, %hi(D_8007C998)
/* B8F8 8000ACF8 2718C998 */  addiu      $t8, $t8, %lo(D_8007C998)
/* B8FC 8000ACFC 000F78C0 */  sll        $t7, $t7, 3
/* B900 8000AD00 01F81821 */  addu       $v1, $t7, $t8
/* B904 8000AD04 84680074 */  lh         $t0, 0x74($v1)
/* B908 8000AD08 3C198008 */  lui        $t9, %hi(D_8007D0A8)
/* B90C 8000AD0C 8F39D0A8 */  lw         $t9, %lo(D_8007D0A8)($t9)
/* B910 8000AD10 00084880 */  sll        $t1, $t0, 2
/* B914 8000AD14 946C000A */  lhu        $t4, 0xA($v1)
/* B918 8000AD18 03295021 */  addu       $t2, $t9, $t1
/* B91C 8000AD1C 8D4B0000 */  lw         $t3, 0x0($t2)
/* B920 8000AD20 118000EE */  beqz       $t4, .L8000B0DC
/* B924 8000AD24 AFAB0040 */   sw        $t3, 0x40($sp)
/* B928 8000AD28 120000B4 */  beqz       $s0, .L8000AFFC
/* B92C 8000AD2C 97AD005E */   lhu       $t5, 0x5E($sp)
/* B930 8000AD30 31AE8000 */  andi       $t6, $t5, 0x8000
/* B934 8000AD34 15C0001B */  bnez       $t6, .L8000ADA4
/* B938 8000AD38 3C028005 */   lui       $v0, %hi(D_8004C2A8)
/* B93C 8000AD3C 8C790020 */  lw         $t9, 0x20($v1)
/* B940 8000AD40 2442C2A8 */  addiu      $v0, $v0, %lo(D_8004C2A8)
/* B944 8000AD44 00067880 */  sll        $t7, $a2, 2
/* B948 8000AD48 97290026 */  lhu        $t1, 0x26($t9)
/* B94C 8000AD4C 004FC021 */  addu       $t8, $v0, $t7
/* B950 8000AD50 8F080000 */  lw         $t0, 0x0($t8)
/* B954 8000AD54 00095080 */  sll        $t2, $t1, 2
/* B958 8000AD58 004A5821 */  addu       $t3, $v0, $t2
/* B95C 8000AD5C 8D6C0000 */  lw         $t4, 0x0($t3)
/* B960 8000AD60 010C6825 */  or         $t5, $t0, $t4
/* B964 8000AD64 25AEFFFF */  addiu      $t6, $t5, -0x1
/* B968 8000AD68 2DC1000A */  sltiu      $at, $t6, 0xA
/* B96C 8000AD6C 1020000D */  beqz       $at, .L8000ADA4
/* B970 8000AD70 000E7080 */   sll       $t6, $t6, 2
/* B974 8000AD74 3C018007 */  lui        $at, %hi(jtbl_80071198)
/* B978 8000AD78 002E0821 */  addu       $at, $at, $t6
/* B97C 8000AD7C 8C2E1198 */  lw         $t6, %lo(jtbl_80071198)($at)
/* B980 8000AD80 01C00008 */  jr         $t6
/* B984 8000AD84 00000000 */   nop
glabel .L8000AD88
/* B988 8000AD88 00107842 */  srl        $t7, $s0, 1
/* B98C 8000AD8C 10000005 */  b          .L8000ADA4
/* B990 8000AD90 31F0FFFF */   andi      $s0, $t7, 0xFFFF
glabel .L8000AD94
/* B994 8000AD94 0010C883 */  sra        $t9, $s0, 2
/* B998 8000AD98 02198021 */  addu       $s0, $s0, $t9
/* B99C 8000AD9C 3209FFFF */  andi       $t1, $s0, 0xFFFF
/* B9A0 8000ADA0 01208025 */  or         $s0, $t1, $zero
glabel .L8000ADA4
/* B9A4 8000ADA4 8FAA0060 */  lw         $t2, 0x60($sp)
/* B9A8 8000ADA8 44908000 */  mtc1       $s0, $f16
/* B9AC 8000ADAC 8D4B0068 */  lw         $t3, 0x68($t2)
/* B9B0 8000ADB0 95620084 */  lhu        $v0, 0x84($t3)
/* B9B4 8000ADB4 44822000 */  mtc1       $v0, $f4
/* B9B8 8000ADB8 04410005 */  bgez       $v0, .L8000ADD0
/* B9BC 8000ADBC 46802020 */   cvt.s.w   $f0, $f4
/* B9C0 8000ADC0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* B9C4 8000ADC4 44813000 */  mtc1       $at, $f6
/* B9C8 8000ADC8 00000000 */  nop
/* B9CC 8000ADCC 46060000 */  add.s      $f0, $f0, $f6
.L8000ADD0:
/* B9D0 8000ADD0 94680118 */  lhu        $t0, 0x118($v1)
/* B9D4 8000ADD4 468084A0 */  cvt.s.w    $f18, $f16
/* B9D8 8000ADD8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* B9DC 8000ADDC 00486021 */  addu       $t4, $v0, $t0
/* B9E0 8000ADE0 448C4000 */  mtc1       $t4, $f8
/* B9E4 8000ADE4 00000000 */  nop
/* B9E8 8000ADE8 468042A0 */  cvt.s.w    $f10, $f8
/* B9EC 8000ADEC 06010004 */  bgez       $s0, .L8000AE00
/* B9F0 8000ADF0 460A0003 */   div.s     $f0, $f0, $f10
/* B9F4 8000ADF4 44812000 */  mtc1       $at, $f4
/* B9F8 8000ADF8 00000000 */  nop
/* B9FC 8000ADFC 46049480 */  add.s      $f18, $f18, $f4
.L8000AE00:
/* BA00 8000AE00 46009182 */  mul.s      $f6, $f18, $f0
/* BA04 8000AE04 24100001 */  addiu      $s0, $zero, 0x1
/* BA08 8000AE08 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* BA0C 8000AE0C 444DF800 */  cfc1       $t5, $31
/* BA10 8000AE10 44D0F800 */  ctc1       $s0, $31
/* BA14 8000AE14 00000000 */  nop
/* BA18 8000AE18 46003224 */  cvt.w.s    $f8, $f6
/* BA1C 8000AE1C 4450F800 */  cfc1       $s0, $31
/* BA20 8000AE20 00000000 */  nop
/* BA24 8000AE24 32100078 */  andi       $s0, $s0, 0x78
/* BA28 8000AE28 52000013 */  beql       $s0, $zero, .L8000AE78
/* BA2C 8000AE2C 44104000 */   mfc1      $s0, $f8
/* BA30 8000AE30 44814000 */  mtc1       $at, $f8
/* BA34 8000AE34 24100001 */  addiu      $s0, $zero, 0x1
/* BA38 8000AE38 46083201 */  sub.s      $f8, $f6, $f8
/* BA3C 8000AE3C 44D0F800 */  ctc1       $s0, $31
/* BA40 8000AE40 00000000 */  nop
/* BA44 8000AE44 46004224 */  cvt.w.s    $f8, $f8
/* BA48 8000AE48 4450F800 */  cfc1       $s0, $31
/* BA4C 8000AE4C 00000000 */  nop
/* BA50 8000AE50 32100078 */  andi       $s0, $s0, 0x78
/* BA54 8000AE54 16000005 */  bnez       $s0, .L8000AE6C
/* BA58 8000AE58 00000000 */   nop
/* BA5C 8000AE5C 44104000 */  mfc1       $s0, $f8
/* BA60 8000AE60 3C018000 */  lui        $at, (0x80000000 >> 16)
/* BA64 8000AE64 10000007 */  b          .L8000AE84
/* BA68 8000AE68 02018025 */   or        $s0, $s0, $at
.L8000AE6C:
/* BA6C 8000AE6C 10000005 */  b          .L8000AE84
/* BA70 8000AE70 2410FFFF */   addiu     $s0, $zero, -0x1
/* BA74 8000AE74 44104000 */  mfc1       $s0, $f8
.L8000AE78:
/* BA78 8000AE78 00000000 */  nop
/* BA7C 8000AE7C 0600FFFB */  bltz       $s0, .L8000AE6C
/* BA80 8000AE80 00000000 */   nop
.L8000AE84:
/* BA84 8000AE84 320EFFFF */  andi       $t6, $s0, 0xFFFF
/* BA88 8000AE88 01C08025 */  or         $s0, $t6, $zero
/* BA8C 8000AE8C 44CDF800 */  ctc1       $t5, $31
/* BA90 8000AE90 44905000 */  mtc1       $s0, $f10
/* BA94 8000AE94 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* BA98 8000AE98 05C10004 */  bgez       $t6, .L8000AEAC
/* BA9C 8000AE9C 46805320 */   cvt.s.w   $f12, $f10
/* BAA0 8000AEA0 44818000 */  mtc1       $at, $f16
/* BAA4 8000AEA4 00000000 */  nop
/* BAA8 8000AEA8 46106300 */  add.s      $f12, $f12, $f16
.L8000AEAC:
/* BAAC 8000AEAC 0C00D3D8 */  jal        _nsqrtf
/* BAB0 8000AEB0 AFA30034 */   sw        $v1, 0x34($sp)
/* BAB4 8000AEB4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BAB8 8000AEB8 44812000 */  mtc1       $at, $f4
/* BABC 8000AEBC 24040001 */  addiu      $a0, $zero, 0x1
/* BAC0 8000AEC0 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* BAC4 8000AEC4 46040480 */  add.s      $f18, $f0, $f4
/* BAC8 8000AEC8 444FF800 */  cfc1       $t7, $31
/* BACC 8000AECC 44C4F800 */  ctc1       $a0, $31
/* BAD0 8000AED0 00000000 */  nop
/* BAD4 8000AED4 460091A4 */  cvt.w.s    $f6, $f18
/* BAD8 8000AED8 4444F800 */  cfc1       $a0, $31
/* BADC 8000AEDC 00000000 */  nop
/* BAE0 8000AEE0 30840078 */  andi       $a0, $a0, 0x78
/* BAE4 8000AEE4 50800013 */  beql       $a0, $zero, .L8000AF34
/* BAE8 8000AEE8 44043000 */   mfc1      $a0, $f6
/* BAEC 8000AEEC 44813000 */  mtc1       $at, $f6
/* BAF0 8000AEF0 24040001 */  addiu      $a0, $zero, 0x1
/* BAF4 8000AEF4 46069181 */  sub.s      $f6, $f18, $f6
/* BAF8 8000AEF8 44C4F800 */  ctc1       $a0, $31
/* BAFC 8000AEFC 00000000 */  nop
/* BB00 8000AF00 460031A4 */  cvt.w.s    $f6, $f6
/* BB04 8000AF04 4444F800 */  cfc1       $a0, $31
/* BB08 8000AF08 00000000 */  nop
/* BB0C 8000AF0C 30840078 */  andi       $a0, $a0, 0x78
/* BB10 8000AF10 14800005 */  bnez       $a0, .L8000AF28
/* BB14 8000AF14 00000000 */   nop
/* BB18 8000AF18 44043000 */  mfc1       $a0, $f6
/* BB1C 8000AF1C 3C018000 */  lui        $at, (0x80000000 >> 16)
/* BB20 8000AF20 10000007 */  b          .L8000AF40
/* BB24 8000AF24 00812025 */   or        $a0, $a0, $at
.L8000AF28:
/* BB28 8000AF28 10000005 */  b          .L8000AF40
/* BB2C 8000AF2C 2404FFFF */   addiu     $a0, $zero, -0x1
/* BB30 8000AF30 44043000 */  mfc1       $a0, $f6
.L8000AF34:
/* BB34 8000AF34 00000000 */  nop
/* BB38 8000AF38 0480FFFB */  bltz       $a0, .L8000AF28
/* BB3C 8000AF3C 00000000 */   nop
.L8000AF40:
/* BB40 8000AF40 44CFF800 */  ctc1       $t7, $31
/* BB44 8000AF44 0C008BF4 */  jal        func_80022FD0
/* BB48 8000AF48 00000000 */   nop
/* BB4C 8000AF4C 02028021 */  addu       $s0, $s0, $v0
/* BB50 8000AF50 3218FFFF */  andi       $t8, $s0, 0xFFFF
/* BB54 8000AF54 03008025 */  or         $s0, $t8, $zero
/* BB58 8000AF58 17000004 */  bnez       $t8, .L8000AF6C
/* BB5C 8000AF5C 8FA30034 */   lw        $v1, 0x34($sp)
/* BB60 8000AF60 27100001 */  addiu      $s0, $t8, 0x1
/* BB64 8000AF64 3219FFFF */  andi       $t9, $s0, 0xFFFF
/* BB68 8000AF68 03208025 */  or         $s0, $t9, $zero
.L8000AF6C:
/* BB6C 8000AF6C 9462000A */  lhu        $v0, 0xA($v1)
/* BB70 8000AF70 AFB0002C */  sw         $s0, 0x2C($sp)
/* BB74 8000AF74 8FAA002C */  lw         $t2, 0x2C($sp)
/* BB78 8000AF78 0050082A */  slt        $at, $v0, $s0
/* BB7C 8000AF7C 10200003 */  beqz       $at, .L8000AF8C
/* BB80 8000AF80 004A5823 */   subu      $t3, $v0, $t2
/* BB84 8000AF84 10000002 */  b          .L8000AF90
/* BB88 8000AF88 A460000A */   sh        $zero, 0xA($v1)
.L8000AF8C:
/* BB8C 8000AF8C A46B000A */  sh         $t3, 0xA($v1)
.L8000AF90:
/* BB90 8000AF90 94680090 */  lhu        $t0, 0x90($v1)
/* BB94 8000AF94 8FAE002C */  lw         $t6, 0x2C($sp)
/* BB98 8000AF98 24050200 */  addiu      $a1, $zero, 0x200
/* BB9C 8000AF9C 310C0200 */  andi       $t4, $t0, 0x200
/* BBA0 8000AFA0 11800010 */  beqz       $t4, .L8000AFE4
/* BBA4 8000AFA4 24060002 */   addiu     $a2, $zero, 0x2
/* BBA8 8000AFA8 946D000C */  lhu        $t5, 0xC($v1)
/* BBAC 8000AFAC 24640024 */  addiu      $a0, $v1, 0x24
/* BBB0 8000AFB0 2407001E */  addiu      $a3, $zero, 0x1E
/* BBB4 8000AFB4 01AE7821 */  addu       $t7, $t5, $t6
/* BBB8 8000AFB8 A46F000C */  sh         $t7, 0xC($v1)
/* BBBC 8000AFBC 8C980064 */  lw         $t8, 0x64($a0)
/* BBC0 8000AFC0 31F9FFFF */  andi       $t9, $t7, 0xFFFF
/* BBC4 8000AFC4 9702000A */  lhu        $v0, 0xA($t8)
/* BBC8 8000AFC8 0059082A */  slt        $at, $v0, $t9
/* BBCC 8000AFCC 10200002 */  beqz       $at, .L8000AFD8
/* BBD0 8000AFD0 00000000 */   nop
/* BBD4 8000AFD4 A462000C */  sh         $v0, 0xC($v1)
.L8000AFD8:
/* BBD8 8000AFD8 0C007F3E */  jal        func_8001FCF8
/* BBDC 8000AFDC AFA30034 */   sw        $v1, 0x34($sp)
/* BBE0 8000AFE0 8FA30034 */  lw         $v1, 0x34($sp)
.L8000AFE4:
/* BBE4 8000AFE4 24640024 */  addiu      $a0, $v1, 0x24
/* BBE8 8000AFE8 00002825 */  or         $a1, $zero, $zero
/* BBEC 8000AFEC 8FA6002C */  lw         $a2, 0x2C($sp)
/* BBF0 8000AFF0 0C00637D */  jal        func_80018DF4
/* BBF4 8000AFF4 AFA30034 */   sw        $v1, 0x34($sp)
/* BBF8 8000AFF8 8FA30034 */  lw         $v1, 0x34($sp)
.L8000AFFC:
/* BBFC 8000AFFC 24090002 */  addiu      $t1, $zero, 0x2
/* BC00 8000B000 A4690000 */  sh         $t1, 0x0($v1)
/* BC04 8000B004 24640024 */  addiu      $a0, $v1, 0x24
/* BC08 8000B008 948A0060 */  lhu        $t2, 0x60($a0)
/* BC0C 8000B00C 3C0F8009 */  lui        $t7, %hi(D_8008C592)
/* BC10 8000B010 354B0001 */  ori        $t3, $t2, 0x1
/* BC14 8000B014 A48B0060 */  sh         $t3, 0x60($a0)
/* BC18 8000B018 97A8005E */  lhu        $t0, 0x5E($sp)
/* BC1C 8000B01C 356E0002 */  ori        $t6, $t3, 0x2
/* BC20 8000B020 310C0004 */  andi       $t4, $t0, 0x4
/* BC24 8000B024 11800002 */  beqz       $t4, .L8000B030
/* BC28 8000B028 00000000 */   nop
/* BC2C 8000B02C A48E0060 */  sh         $t6, 0x60($a0)
.L8000B030:
/* BC30 8000B030 95EFC592 */  lhu        $t7, %lo(D_8008C592)($t7)
/* BC34 8000B034 31F80100 */  andi       $t8, $t7, 0x100
/* BC38 8000B038 53000015 */  beql       $t8, $zero, .L8000B090
/* BC3C 8000B03C 8C620020 */   lw        $v0, 0x20($v1)
/* BC40 8000B040 8C620020 */  lw         $v0, 0x20($v1)
/* BC44 8000B044 8FB90040 */  lw         $t9, 0x40($sp)
/* BC48 8000B048 240C0001 */  addiu      $t4, $zero, 0x1
/* BC4C 8000B04C 84490028 */  lh         $t1, 0x28($v0)
/* BC50 8000B050 240D0001 */  addiu      $t5, $zero, 0x1
/* BC54 8000B054 24060001 */  addiu      $a2, $zero, 0x1
/* BC58 8000B058 00095080 */  sll        $t2, $t1, 2
/* BC5C 8000B05C 01495023 */  subu       $t2, $t2, $t1
/* BC60 8000B060 000A5080 */  sll        $t2, $t2, 2
/* BC64 8000B064 032A5821 */  addu       $t3, $t9, $t2
/* BC68 8000B068 85680002 */  lh         $t0, 0x2($t3)
/* BC6C 8000B06C 00003825 */  or         $a3, $zero, $zero
/* BC70 8000B070 A4680002 */  sh         $t0, 0x2($v1)
/* BC74 8000B074 84450028 */  lh         $a1, 0x28($v0)
/* BC78 8000B078 AFAD0014 */  sw         $t5, 0x14($sp)
/* BC7C 8000B07C 0C00762C */  jal        func_8001D8B0
/* BC80 8000B080 AFAC0010 */   sw        $t4, 0x10($sp)
/* BC84 8000B084 10000016 */  b          .L8000B0E0
/* BC88 8000B088 97AC005E */   lhu       $t4, 0x5E($sp)
/* BC8C 8000B08C 8C620020 */  lw         $v0, 0x20($v1)
.L8000B090:
/* BC90 8000B090 8FAE0040 */  lw         $t6, 0x40($sp)
/* BC94 8000B094 2401000A */  addiu      $at, $zero, 0xA
/* BC98 8000B098 844F0028 */  lh         $t7, 0x28($v0)
/* BC9C 8000B09C 240B0001 */  addiu      $t3, $zero, 0x1
/* BCA0 8000B0A0 24080001 */  addiu      $t0, $zero, 0x1
/* BCA4 8000B0A4 000FC080 */  sll        $t8, $t7, 2
/* BCA8 8000B0A8 030FC023 */  subu       $t8, $t8, $t7
/* BCAC 8000B0AC 0018C080 */  sll        $t8, $t8, 2
/* BCB0 8000B0B0 01D84821 */  addu       $t1, $t6, $t8
/* BCB4 8000B0B4 85390002 */  lh         $t9, 0x2($t1)
/* BCB8 8000B0B8 2406000A */  addiu      $a2, $zero, 0xA
/* BCBC 8000B0BC 00003825 */  or         $a3, $zero, $zero
/* BCC0 8000B0C0 0321001A */  div        $zero, $t9, $at
/* BCC4 8000B0C4 00005012 */  mflo       $t2
/* BCC8 8000B0C8 A46A0002 */  sh         $t2, 0x2($v1)
/* BCCC 8000B0CC 84450028 */  lh         $a1, 0x28($v0)
/* BCD0 8000B0D0 AFA80014 */  sw         $t0, 0x14($sp)
/* BCD4 8000B0D4 0C00762C */  jal        func_8001D8B0
/* BCD8 8000B0D8 AFAB0010 */   sw        $t3, 0x10($sp)
.L8000B0DC:
/* BCDC 8000B0DC 97AC005E */  lhu        $t4, 0x5E($sp)
.L8000B0E0:
/* BCE0 8000B0E0 318D8000 */  andi       $t5, $t4, 0x8000
/* BCE4 8000B0E4 11A00004 */  beqz       $t5, .L8000B0F8
/* BCE8 8000B0E8 00002025 */   or        $a0, $zero, $zero
/* BCEC 8000B0EC 24050018 */  addiu      $a1, $zero, 0x18
/* BCF0 8000B0F0 0C009A35 */  jal        func_800268D4
/* BCF4 8000B0F4 240600FF */   addiu     $a2, $zero, 0xFF
.L8000B0F8:
/* BCF8 8000B0F8 02001025 */  or         $v0, $s0, $zero
/* BCFC 8000B0FC 8FBF0024 */  lw         $ra, 0x24($sp)
/* BD00 8000B100 8FB00020 */  lw         $s0, 0x20($sp)
/* BD04 8000B104 27BD0050 */  addiu      $sp, $sp, 0x50
/* BD08 8000B108 03E00008 */  jr         $ra
/* BD0C 8000B10C 00000000 */   nop
