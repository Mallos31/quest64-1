glabel func_800165E4
/* 171E4 800165E4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 171E8 800165E8 AFB00018 */  sw         $s0, 0x18($sp)
/* 171EC 800165EC 00A08025 */  or         $s0, $a1, $zero
/* 171F0 800165F0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 171F4 800165F4 00803025 */  or         $a2, $a0, $zero
/* 171F8 800165F8 960E005E */  lhu        $t6, 0x5E($s0)
/* 171FC 800165FC 02002025 */  or         $a0, $s0, $zero
/* 17200 80016600 31CF0001 */  andi       $t7, $t6, 0x1
/* 17204 80016604 51E00031 */  beql       $t7, $zero, .L800166CC
/* 17208 80016608 8CC2002C */   lw        $v0, 0x2C($a2)
/* 1720C 8001660C 0C002C50 */  jal        func_8000B140
/* 17210 80016610 AFA60038 */   sw        $a2, 0x38($sp)
/* 17214 80016614 0002C0C0 */  sll        $t8, $v0, 3
/* 17218 80016618 0302C021 */  addu       $t8, $t8, $v0
/* 1721C 8001661C 0018C080 */  sll        $t8, $t8, 2
/* 17220 80016620 0302C021 */  addu       $t8, $t8, $v0
/* 17224 80016624 3C198008 */  lui        $t9, %hi(D_8007C998)
/* 17228 80016628 2739C998 */  addiu      $t9, $t9, %lo(D_8007C998)
/* 1722C 8001662C 0018C0C0 */  sll        $t8, $t8, 3
/* 17230 80016630 8FA60038 */  lw         $a2, 0x38($sp)
/* 17234 80016634 03194021 */  addu       $t0, $t8, $t9
/* 17238 80016638 3C018008 */  lui        $at, %hi(D_800871DC)
/* 1723C 8001663C AC2871DC */  sw         $t0, %lo(D_800871DC)($at)
/* 17240 80016640 8E090064 */  lw         $t1, 0x64($s0)
/* 17244 80016644 8CCB002C */  lw         $t3, 0x2C($a2)
/* 17248 80016648 24010064 */  addiu      $at, $zero, 0x64
/* 1724C 8001664C 952A0006 */  lhu        $t2, 0x6($t1)
/* 17250 80016650 956C000C */  lhu        $t4, 0xC($t3)
/* 17254 80016654 014C0019 */  multu      $t2, $t4
/* 17258 80016658 00003812 */  mflo       $a3
/* 1725C 8001665C 00000000 */  nop
/* 17260 80016660 00000000 */  nop
/* 17264 80016664 00E1001A */  div        $zero, $a3, $at
/* 17268 80016668 00006812 */  mflo       $t5
/* 1726C 8001666C 31A5FFFF */  andi       $a1, $t5, 0xFFFF
/* 17270 80016670 00052083 */  sra        $a0, $a1, 2
/* 17274 80016674 0C008BF4 */  jal        func_80022FD0
/* 17278 80016678 AFA50020 */   sw        $a1, 0x20($sp)
/* 1727C 8001667C 3C068008 */  lui        $a2, %hi(D_800871DC)
/* 17280 80016680 24C671DC */  addiu      $a2, $a2, %lo(D_800871DC)
/* 17284 80016684 8CC30000 */  lw         $v1, 0x0($a2)
/* 17288 80016688 8FA50020 */  lw         $a1, 0x20($sp)
/* 1728C 8001668C 9478000A */  lhu        $t8, 0xA($v1)
/* 17290 80016690 00A23821 */  addu       $a3, $a1, $v0
/* 17294 80016694 30EFFFFF */  andi       $t7, $a3, 0xFFFF
/* 17298 80016698 030FC821 */  addu       $t9, $t8, $t7
/* 1729C 8001669C A479000A */  sh         $t9, 0xA($v1)
/* 172A0 800166A0 8CC30000 */  lw         $v1, 0x0($a2)
/* 172A4 800166A4 8E080064 */  lw         $t0, 0x64($s0)
/* 172A8 800166A8 01E03825 */  or         $a3, $t7, $zero
/* 172AC 800166AC 9469000A */  lhu        $t1, 0xA($v1)
/* 172B0 800166B0 95040006 */  lhu        $a0, 0x6($t0)
/* 172B4 800166B4 0089082A */  slt        $at, $a0, $t1
/* 172B8 800166B8 50200030 */  beql       $at, $zero, .L8001677C
/* 172BC 800166BC 02002025 */   or        $a0, $s0, $zero
/* 172C0 800166C0 1000002D */  b          .L80016778
/* 172C4 800166C4 A464000A */   sh        $a0, 0xA($v1)
/* 172C8 800166C8 8CC2002C */  lw         $v0, 0x2C($a2)
.L800166CC:
/* 172CC 800166CC 8E0F0064 */  lw         $t7, 0x64($s0)
/* 172D0 800166D0 24010064 */  addiu      $at, $zero, 0x64
/* 172D4 800166D4 9459000C */  lhu        $t9, 0xC($v0)
/* 172D8 800166D8 95F80006 */  lhu        $t8, 0x6($t7)
/* 172DC 800166DC 3C0B8008 */  lui        $t3, %hi(D_8007BAC8)
/* 172E0 800166E0 8D6BBAC8 */  lw         $t3, %lo(D_8007BAC8)($t3)
/* 172E4 800166E4 03190019 */  multu      $t8, $t9
/* 172E8 800166E8 904A0006 */  lbu        $t2, 0x6($v0)
/* 172EC 800166EC 016A6021 */  addu       $t4, $t3, $t2
/* 172F0 800166F0 918D0024 */  lbu        $t5, 0x24($t4)
/* 172F4 800166F4 000D7043 */  sra        $t6, $t5, 1
/* 172F8 800166F8 00004012 */  mflo       $t0
/* 172FC 800166FC 00000000 */  nop
/* 17300 80016700 00000000 */  nop
/* 17304 80016704 0101001A */  div        $zero, $t0, $at
/* 17308 80016708 00004812 */  mflo       $t1
/* 1730C 8001670C 01C93821 */  addu       $a3, $t6, $t1
/* 17310 80016710 30E5FFFF */  andi       $a1, $a3, 0xFFFF
/* 17314 80016714 00052083 */  sra        $a0, $a1, 2
/* 17318 80016718 0C008BF4 */  jal        func_80022FD0
/* 1731C 8001671C AFA50020 */   sw        $a1, 0x20($sp)
/* 17320 80016720 8E030064 */  lw         $v1, 0x64($s0)
/* 17324 80016724 8FA50020 */  lw         $a1, 0x20($sp)
/* 17328 80016728 94660004 */  lhu        $a2, 0x4($v1)
/* 1732C 8001672C 946C0006 */  lhu        $t4, 0x6($v1)
/* 17330 80016730 00A23821 */  addu       $a3, $a1, $v0
/* 17334 80016734 30EAFFFF */  andi       $t2, $a3, 0xFFFF
/* 17338 80016738 1186000F */  beq        $t4, $a2, .L80016778
/* 1733C 8001673C 01403825 */   or        $a3, $t2, $zero
/* 17340 80016740 00CA6821 */  addu       $t5, $a2, $t2
/* 17344 80016744 A46D0004 */  sh         $t5, 0x4($v1)
/* 17348 80016748 8E030064 */  lw         $v1, 0x64($s0)
/* 1734C 8001674C 3C028008 */  lui        $v0, %hi(D_8007BAC8)
/* 17350 80016750 94640006 */  lhu        $a0, 0x6($v1)
/* 17354 80016754 946F0004 */  lhu        $t7, 0x4($v1)
/* 17358 80016758 008F082A */  slt        $at, $a0, $t7
/* 1735C 8001675C 10200002 */  beqz       $at, .L80016768
/* 17360 80016760 00000000 */   nop
/* 17364 80016764 A4640004 */  sh         $a0, 0x4($v1)
.L80016768:
/* 17368 80016768 8C42BAC8 */  lw         $v0, %lo(D_8007BAC8)($v0)
/* 1736C 8001676C 9458002A */  lhu        $t8, 0x2A($v0)
/* 17370 80016770 27190001 */  addiu      $t9, $t8, 0x1
/* 17374 80016774 A459002A */  sh         $t9, 0x2A($v0)
.L80016778:
/* 17378 80016778 02002025 */  or         $a0, $s0, $zero
.L8001677C:
/* 1737C 8001677C 24050001 */  addiu      $a1, $zero, 0x1
/* 17380 80016780 0C00637D */  jal        func_80018DF4
/* 17384 80016784 00E03025 */   or        $a2, $a3, $zero
/* 17388 80016788 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1738C 8001678C 8FB00018 */  lw         $s0, 0x18($sp)
/* 17390 80016790 27BD0038 */  addiu      $sp, $sp, 0x38
/* 17394 80016794 03E00008 */  jr         $ra
/* 17398 80016798 00000000 */   nop