.section .late_rodata
glabel D_80071690
/* 72290 80071690 3FF147AE147AE148 */ .double 1.08000000000000007


.section .text
glabel func_8001CFE8
/* 1DBE8 8001CFE8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1DBEC 8001CFEC 3C068009 */  lui        $a2, %hi(D_8008C592)
/* 1DBF0 8001CFF0 24C6C592 */  addiu      $a2, $a2, %lo(D_8008C592)
/* 1DBF4 8001CFF4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1DBF8 8001CFF8 94C30000 */  lhu        $v1, 0x0($a2)
/* 1DBFC 8001CFFC 3C048009 */  lui        $a0, %hi(D_8008C594)
/* 1DC00 8001D000 2484C594 */  addiu      $a0, $a0, %lo(D_8008C594)
/* 1DC04 8001D004 306E0004 */  andi       $t6, $v1, 0x4
/* 1DC08 8001D008 51C000D0 */  beql       $t6, $zero, .L8001D34C
/* 1DC0C 8001D00C 8FBF001C */   lw        $ra, 0x1C($sp)
/* 1DC10 8001D010 94820000 */  lhu        $v0, 0x0($a0)
/* 1DC14 8001D014 10400003 */  beqz       $v0, .L8001D024
/* 1DC18 8001D018 244FFFFF */   addiu     $t7, $v0, -0x1
/* 1DC1C 8001D01C 100000CA */  b          .L8001D348
/* 1DC20 8001D020 A48F0000 */   sh        $t7, 0x0($a0)
.L8001D024:
/* 1DC24 8001D024 30780002 */  andi       $t8, $v1, 0x2
/* 1DC28 8001D028 13000010 */  beqz       $t8, .L8001D06C
/* 1DC2C 8001D02C 3C198009 */   lui       $t9, %hi(D_8008C598)
/* 1DC30 8001D030 9739C598 */  lhu        $t9, %lo(D_8008C598)($t9)
/* 1DC34 8001D034 3C0B8008 */  lui        $t3, %hi(D_8007D0B0)
/* 1DC38 8001D038 3C0E8008 */  lui        $t6, %hi(D_8007C998)
/* 1DC3C 8001D03C 00195040 */  sll        $t2, $t9, 1
/* 1DC40 8001D040 016A5821 */  addu       $t3, $t3, $t2
/* 1DC44 8001D044 956BD0B0 */  lhu        $t3, %lo(D_8007D0B0)($t3)
/* 1DC48 8001D048 25CEC998 */  addiu      $t6, $t6, %lo(D_8007C998)
/* 1DC4C 8001D04C 000B60C0 */  sll        $t4, $t3, 3
/* 1DC50 8001D050 018B6021 */  addu       $t4, $t4, $t3
/* 1DC54 8001D054 000C6080 */  sll        $t4, $t4, 2
/* 1DC58 8001D058 018B6021 */  addu       $t4, $t4, $t3
/* 1DC5C 8001D05C 000C60C0 */  sll        $t4, $t4, 3
/* 1DC60 8001D060 258D0024 */  addiu      $t5, $t4, 0x24
/* 1DC64 8001D064 10000003 */  b          .L8001D074
/* 1DC68 8001D068 01AE4021 */   addu      $t0, $t5, $t6
.L8001D06C:
/* 1DC6C 8001D06C 3C088008 */  lui        $t0, %hi(D_8007BACC)
/* 1DC70 8001D070 2508BACC */  addiu      $t0, $t0, %lo(D_8007BACC)
.L8001D074:
/* 1DC74 8001D074 950F0060 */  lhu        $t7, 0x60($t0)
/* 1DC78 8001D078 31F80001 */  andi       $t8, $t7, 0x1
/* 1DC7C 8001D07C 170000B2 */  bnez       $t8, .L8001D348
/* 1DC80 8001D080 3C198008 */   lui       $t9, %hi(D_8007C990)
/* 1DC84 8001D084 8F39C990 */  lw         $t9, %lo(D_8007C990)($t9)
/* 1DC88 8001D088 00002825 */  or         $a1, $zero, $zero
/* 1DC8C 8001D08C 306A0400 */  andi       $t2, $v1, 0x400
/* 1DC90 8001D090 13200003 */  beqz       $t9, .L8001D0A0
/* 1DC94 8001D094 346C0008 */   ori       $t4, $v1, 0x8
/* 1DC98 8001D098 11400026 */  beqz       $t2, .L8001D134
/* 1DC9C 8001D09C 30790010 */   andi      $t9, $v1, 0x10
.L8001D0A0:
/* 1DCA0 8001D0A0 318D0100 */  andi       $t5, $t4, 0x100
/* 1DCA4 8001D0A4 A4CC0000 */  sh         $t4, 0x0($a2)
/* 1DCA8 8001D0A8 11A00017 */  beqz       $t5, .L8001D108
/* 1DCAC 8001D0AC 24050001 */   addiu     $a1, $zero, 0x1
/* 1DCB0 8001D0B0 3C048009 */  lui        $a0, %hi(D_8008C570)
/* 1DCB4 8001D0B4 8C84C570 */  lw         $a0, %lo(D_8008C570)($a0)
/* 1DCB8 8001D0B8 AFA5002C */  sw         $a1, 0x2C($sp)
/* 1DCBC 8001D0BC AFA80024 */  sw         $t0, 0x24($sp)
/* 1DCC0 8001D0C0 2484FFFF */  addiu      $a0, $a0, -0x1
/* 1DCC4 8001D0C4 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 1DCC8 8001D0C8 0C002E83 */  jal        func_8000BA0C
/* 1DCCC 8001D0CC 01C02025 */   or        $a0, $t6, $zero
/* 1DCD0 8001D0D0 3C048009 */  lui        $a0, %hi(D_8008C570)
/* 1DCD4 8001D0D4 8C84C570 */  lw         $a0, %lo(D_8008C570)($a0)
/* 1DCD8 8001D0D8 0C002EDA */  jal        func_8000BB68
/* 1DCDC 8001D0DC 2484FFFF */   addiu     $a0, $a0, -0x1
/* 1DCE0 8001D0E0 3C0F8009 */  lui        $t7, %hi(D_8008C568)
/* 1DCE4 8001D0E4 8DEFC568 */  lw         $t7, %lo(D_8008C568)($t7)
/* 1DCE8 8001D0E8 3C188009 */  lui        $t8, %hi(D_8008C56C)
/* 1DCEC 8001D0EC 8F18C56C */  lw         $t8, %lo(D_8008C56C)($t8)
/* 1DCF0 8001D0F0 3C018008 */  lui        $at, %hi(D_8007D0A8)
/* 1DCF4 8001D0F4 AC2FD0A8 */  sw         $t7, %lo(D_8007D0A8)($at)
/* 1DCF8 8001D0F8 3C018008 */  lui        $at, %hi(D_8007D0AC)
/* 1DCFC 8001D0FC 8FA5002C */  lw         $a1, 0x2C($sp)
/* 1DD00 8001D100 8FA80024 */  lw         $t0, 0x24($sp)
/* 1DD04 8001D104 AC38D0AC */  sw         $t8, %lo(D_8007D0AC)($at)
.L8001D108:
/* 1DD08 8001D108 AFA5002C */  sw         $a1, 0x2C($sp)
/* 1DD0C 8001D10C 0C00760A */  jal        func_8001D828
/* 1DD10 8001D110 AFA80024 */   sw        $t0, 0x24($sp)
/* 1DD14 8001D114 3C068009 */  lui        $a2, %hi(D_8008C592)
/* 1DD18 8001D118 3C018008 */  lui        $at, %hi(D_8007BA70)
/* 1DD1C 8001D11C AC22BA70 */  sw         $v0, %lo(D_8007BA70)($at)
/* 1DD20 8001D120 24C6C592 */  addiu      $a2, $a2, %lo(D_8008C592)
/* 1DD24 8001D124 94C30000 */  lhu        $v1, 0x0($a2)
/* 1DD28 8001D128 8FA5002C */  lw         $a1, 0x2C($sp)
/* 1DD2C 8001D12C 1000000F */  b          .L8001D16C
/* 1DD30 8001D130 8FA80024 */   lw        $t0, 0x24($sp)
.L8001D134:
/* 1DD34 8001D134 13200003 */  beqz       $t9, .L8001D144
/* 1DD38 8001D138 306A0100 */   andi      $t2, $v1, 0x100
/* 1DD3C 8001D13C 1000000B */  b          .L8001D16C
/* 1DD40 8001D140 24050001 */   addiu     $a1, $zero, 0x1
.L8001D144:
/* 1DD44 8001D144 15400009 */  bnez       $t2, .L8001D16C
/* 1DD48 8001D148 3C0B8008 */   lui       $t3, %hi(D_8007BAC0)
/* 1DD4C 8001D14C 956BBAC0 */  lhu        $t3, %lo(D_8007BAC0)($t3)
/* 1DD50 8001D150 346D0010 */  ori        $t5, $v1, 0x10
/* 1DD54 8001D154 316C0020 */  andi       $t4, $t3, 0x20
/* 1DD58 8001D158 11800004 */  beqz       $t4, .L8001D16C
/* 1DD5C 8001D15C 00000000 */   nop
/* 1DD60 8001D160 A4CD0000 */  sh         $t5, 0x0($a2)
/* 1DD64 8001D164 24050001 */  addiu      $a1, $zero, 0x1
/* 1DD68 8001D168 31A3FFFF */  andi       $v1, $t5, 0xFFFF
.L8001D16C:
/* 1DD6C 8001D16C 10A00024 */  beqz       $a1, .L8001D200
/* 1DD70 8001D170 3062FFFB */   andi      $v0, $v1, 0xFFFB
/* 1DD74 8001D174 306EFFFE */  andi       $t6, $v1, 0xFFFE
/* 1DD78 8001D178 A4CE0000 */  sh         $t6, 0x0($a2)
/* 1DD7C 8001D17C 3C018009 */  lui        $at, %hi(D_8008C630)
/* 1DD80 8001D180 3C048009 */  lui        $a0, %hi(D_8008C55C)
/* 1DD84 8001D184 A420C630 */  sh         $zero, %lo(D_8008C630)($at)
/* 1DD88 8001D188 0C006729 */  jal        func_80019CA4
/* 1DD8C 8001D18C 9484C55C */   lhu       $a0, %lo(D_8008C55C)($a0)
/* 1DD90 8001D190 0C0023DB */  jal        func_80008F6C
/* 1DD94 8001D194 00000000 */   nop
/* 1DD98 8001D198 3C048008 */  lui        $a0, %hi(D_80086ED8)
/* 1DD9C 8001D19C 0C0050F0 */  jal        func_800143C0
/* 1DDA0 8001D1A0 8C846ED8 */   lw        $a0, %lo(D_80086ED8)($a0)
/* 1DDA4 8001D1A4 3C068009 */  lui        $a2, %hi(D_8008C592)
/* 1DDA8 8001D1A8 24C6C592 */  addiu      $a2, $a2, %lo(D_8008C592)
/* 1DDAC 8001D1AC 94C30000 */  lhu        $v1, 0x0($a2)
/* 1DDB0 8001D1B0 3C058008 */  lui        $a1, %hi(gNextSubmap)
/* 1DDB4 8001D1B4 2404002B */  addiu      $a0, $zero, 0x2B
/* 1DDB8 8001D1B8 306F0100 */  andi       $t7, $v1, 0x100
/* 1DDBC 8001D1BC 11E00003 */  beqz       $t7, .L8001D1CC
/* 1DDC0 8001D1C0 3078FEFF */   andi      $t8, $v1, 0xFEFF
/* 1DDC4 8001D1C4 A4D80000 */  sh         $t8, 0x0($a2)
/* 1DDC8 8001D1C8 3303FFFF */  andi       $v1, $t8, 0xFFFF
.L8001D1CC:
/* 1DDCC 8001D1CC 30790010 */  andi       $t9, $v1, 0x10
/* 1DDD0 8001D1D0 13200007 */  beqz       $t9, .L8001D1F0
/* 1DDD4 8001D1D4 00003025 */   or        $a2, $zero, $zero
/* 1DDD8 8001D1D8 3C048008 */  lui        $a0, %hi(D_80084EE4)
/* 1DDDC 8001D1DC 8C844EE4 */  lw         $a0, %lo(D_80084EE4)($a0)
/* 1DDE0 8001D1E0 0C009A13 */  jal        func_8002684C
/* 1DDE4 8001D1E4 8CA54EE8 */   lw        $a1, %lo(gNextSubmap)($a1)
/* 1DDE8 8001D1E8 10000058 */  b          .L8001D34C
/* 1DDEC 8001D1EC 8FBF001C */   lw        $ra, 0x1C($sp)
.L8001D1F0:
/* 1DDF0 8001D1F0 0C0099FE */  jal        func_800267F8
/* 1DDF4 8001D1F4 24050008 */   addiu     $a1, $zero, 0x8
/* 1DDF8 8001D1F8 10000054 */  b          .L8001D34C
/* 1DDFC 8001D1FC 8FBF001C */   lw        $ra, 0x1C($sp)
.L8001D200:
/* 1DE00 8001D200 A4C20000 */  sh         $v0, 0x0($a2)
/* 1DE04 8001D204 304B0002 */  andi       $t3, $v0, 0x2
/* 1DE08 8001D208 11600008 */  beqz       $t3, .L8001D22C
/* 1DE0C 8001D20C 01601025 */   or        $v0, $t3, $zero
/* 1DE10 8001D210 0C0024CB */  jal        func_8000932C
/* 1DE14 8001D214 AFA80024 */   sw        $t0, 0x24($sp)
/* 1DE18 8001D218 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 1DE1C 8001D21C 9442C592 */  lhu        $v0, %lo(D_8008C592)($v0)
/* 1DE20 8001D220 8FA80024 */  lw         $t0, 0x24($sp)
/* 1DE24 8001D224 304C0002 */  andi       $t4, $v0, 0x2
/* 1DE28 8001D228 01801025 */  or         $v0, $t4, $zero
.L8001D22C:
/* 1DE2C 8001D22C C5040000 */  lwc1       $f4, 0x0($t0)
/* 1DE30 8001D230 3C038009 */  lui        $v1, %hi(D_8008C5A4)
/* 1DE34 8001D234 2463C5A4 */  addiu      $v1, $v1, %lo(D_8008C5A4)
/* 1DE38 8001D238 E4640000 */  swc1       $f4, 0x0($v1)
/* 1DE3C 8001D23C C5060008 */  lwc1       $f6, 0x8($t0)
/* 1DE40 8001D240 3C098009 */  lui        $t1, %hi(D_8008C430)
/* 1DE44 8001D244 2529C430 */  addiu      $t1, $t1, %lo(D_8008C430)
/* 1DE48 8001D248 10400010 */  beqz       $v0, .L8001D28C
/* 1DE4C 8001D24C E5260000 */   swc1      $f6, 0x0($t1)
/* 1DE50 8001D250 3C0D8009 */  lui        $t5, %hi(D_8008C598)
/* 1DE54 8001D254 95ADC598 */  lhu        $t5, %lo(D_8008C598)($t5)
/* 1DE58 8001D258 3C0F8008 */  lui        $t7, %hi(D_8007D0B0)
/* 1DE5C 8001D25C 3C018008 */  lui        $at, %hi(D_8007C9A8)
/* 1DE60 8001D260 000D7040 */  sll        $t6, $t5, 1
/* 1DE64 8001D264 01EE7821 */  addu       $t7, $t7, $t6
/* 1DE68 8001D268 95EFD0B0 */  lhu        $t7, %lo(D_8007D0B0)($t7)
/* 1DE6C 8001D26C 000FC0C0 */  sll        $t8, $t7, 3
/* 1DE70 8001D270 030FC021 */  addu       $t8, $t8, $t7
/* 1DE74 8001D274 0018C080 */  sll        $t8, $t8, 2
/* 1DE78 8001D278 030FC021 */  addu       $t8, $t8, $t7
/* 1DE7C 8001D27C 0018C0C0 */  sll        $t8, $t8, 3
/* 1DE80 8001D280 00380821 */  addu       $at, $at, $t8
/* 1DE84 8001D284 10000003 */  b          .L8001D294
/* 1DE88 8001D288 C420C9A8 */   lwc1      $f0, %lo(D_8007C9A8)($at)
.L8001D28C:
/* 1DE8C 8001D28C 3C018008 */  lui        $at, %hi(D_8007BAC4)
/* 1DE90 8001D290 C420BAC4 */  lwc1       $f0, %lo(D_8007BAC4)($at)
.L8001D294:
/* 1DE94 8001D294 10400011 */  beqz       $v0, .L8001D2DC
/* 1DE98 8001D298 3C018007 */   lui       $at, %hi(D_80071690)
/* 1DE9C 8001D29C 3C198009 */  lui        $t9, %hi(D_8008C598)
/* 1DEA0 8001D2A0 9739C598 */  lhu        $t9, %lo(D_8008C598)($t9)
/* 1DEA4 8001D2A4 3C0B8008 */  lui        $t3, %hi(D_8007D0B0)
/* 1DEA8 8001D2A8 3C0E8008 */  lui        $t6, %hi(D_8007C998)
/* 1DEAC 8001D2AC 00195040 */  sll        $t2, $t9, 1
/* 1DEB0 8001D2B0 016A5821 */  addu       $t3, $t3, $t2
/* 1DEB4 8001D2B4 956BD0B0 */  lhu        $t3, %lo(D_8007D0B0)($t3)
/* 1DEB8 8001D2B8 25CEC998 */  addiu      $t6, $t6, %lo(D_8007C998)
/* 1DEBC 8001D2BC 000B60C0 */  sll        $t4, $t3, 3
/* 1DEC0 8001D2C0 018B6021 */  addu       $t4, $t4, $t3
/* 1DEC4 8001D2C4 000C6080 */  sll        $t4, $t4, 2
/* 1DEC8 8001D2C8 018B6021 */  addu       $t4, $t4, $t3
/* 1DECC 8001D2CC 000C60C0 */  sll        $t4, $t4, 3
/* 1DED0 8001D2D0 258D0024 */  addiu      $t5, $t4, 0x24
/* 1DED4 8001D2D4 10000003 */  b          .L8001D2E4
/* 1DED8 8001D2D8 01AE4021 */   addu      $t0, $t5, $t6
.L8001D2DC:
/* 1DEDC 8001D2DC 3C088008 */  lui        $t0, %hi(D_8007BACC)
/* 1DEE0 8001D2E0 2508BACC */  addiu      $t0, $t0, %lo(D_8007BACC)
.L8001D2E4:
/* 1DEE4 8001D2E4 8D0F0068 */  lw         $t7, 0x68($t0)
/* 1DEE8 8001D2E8 8D180064 */  lw         $t8, 0x64($t0)
/* 1DEEC 8001D2EC C5100024 */  lwc1       $f16, 0x24($t0)
/* 1DEF0 8001D2F0 C5E80090 */  lwc1       $f8, 0x90($t7)
/* 1DEF4 8001D2F4 C70A0018 */  lwc1       $f10, 0x18($t8)
/* 1DEF8 8001D2F8 46080002 */  mul.s      $f0, $f0, $f8
/* 1DEFC 8001D2FC 00000000 */  nop
/* 1DF00 8001D300 46105482 */  mul.s      $f18, $f10, $f16
/* 1DF04 8001D304 10400003 */  beqz       $v0, .L8001D314
/* 1DF08 8001D308 46120000 */   add.s     $f0, $f0, $f18
/* 1DF0C 8001D30C 10000002 */  b          .L8001D318
/* 1DF10 8001D310 24020001 */   addiu     $v0, $zero, 0x1
.L8001D314:
/* 1DF14 8001D314 24020002 */  addiu      $v0, $zero, 0x2
.L8001D318:
/* 1DF18 8001D318 D4261690 */  ldc1       $f6, %lo(D_80071690)($at)
/* 1DF1C 8001D31C 46000121 */  cvt.d.s    $f4, $f0
/* 1DF20 8001D320 8D060004 */  lw         $a2, 0x4($t0)
/* 1DF24 8001D324 46262202 */  mul.d      $f8, $f4, $f6
/* 1DF28 8001D328 3044FFFF */  andi       $a0, $v0, 0xFFFF
/* 1DF2C 8001D32C 8C650000 */  lw         $a1, 0x0($v1)
/* 1DF30 8001D330 8D270000 */  lw         $a3, 0x0($t1)
/* 1DF34 8001D334 462042A0 */  cvt.s.d    $f10, $f8
/* 1DF38 8001D338 0C0066A6 */  jal        func_80019A98
/* 1DF3C 8001D33C E7AA0010 */   swc1      $f10, 0x10($sp)
/* 1DF40 8001D340 3C018009 */  lui        $at, %hi(D_8008C55E)
/* 1DF44 8001D344 A422C55E */  sh         $v0, %lo(D_8008C55E)($at)
.L8001D348:
/* 1DF48 8001D348 8FBF001C */  lw         $ra, 0x1C($sp)
.L8001D34C:
/* 1DF4C 8001D34C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1DF50 8001D350 03E00008 */  jr         $ra
/* 1DF54 8001D354 00000000 */   nop
