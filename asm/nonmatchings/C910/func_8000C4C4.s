.section .late_rodata
glabel D_800711F0
/* 71DF0 800711F0 3F91DF46A2529D39 */ .double 0.0174532925199432955

glabel D_800711F8
/* 71DF8 800711F8 4082C00000000000 */ .double 600

glabel D_80071200
/* 71E00 80071200 3FE4666666666666 */ .double 0.637499999999999956


.section .text
glabel func_8000C4C4
/* D0C4 8000C4C4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* D0C8 8000C4C8 AFB70074 */  sw         $s7, 0x74($sp)
/* D0CC 8000C4CC 3C178008 */  lui        $s7, %hi(D_800828D8)
/* D0D0 8000C4D0 3C038008 */  lui        $v1, %hi(D_8007BAB8)
/* D0D4 8000C4D4 2463BAB8 */  addiu      $v1, $v1, %lo(D_8007BAB8)
/* D0D8 8000C4D8 26F728D8 */  addiu      $s7, $s7, %lo(D_800828D8)
/* D0DC 8000C4DC AFBF007C */  sw         $ra, 0x7C($sp)
/* D0E0 8000C4E0 AFBE0078 */  sw         $fp, 0x78($sp)
/* D0E4 8000C4E4 AFB60070 */  sw         $s6, 0x70($sp)
/* D0E8 8000C4E8 AFB5006C */  sw         $s5, 0x6C($sp)
/* D0EC 8000C4EC AFB40068 */  sw         $s4, 0x68($sp)
/* D0F0 8000C4F0 AFB30064 */  sw         $s3, 0x64($sp)
/* D0F4 8000C4F4 AFB20060 */  sw         $s2, 0x60($sp)
/* D0F8 8000C4F8 AFB1005C */  sw         $s1, 0x5C($sp)
/* D0FC 8000C4FC AFB00058 */  sw         $s0, 0x58($sp)
/* D100 8000C500 F7BE0050 */  sdc1       $f30, 0x50($sp)
/* D104 8000C504 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* D108 8000C508 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* D10C 8000C50C F7B80038 */  sdc1       $f24, 0x38($sp)
/* D110 8000C510 F7B60030 */  sdc1       $f22, 0x30($sp)
/* D114 8000C514 F7B40028 */  sdc1       $f20, 0x28($sp)
/* D118 8000C518 AFA40080 */  sw         $a0, 0x80($sp)
/* D11C 8000C51C 3C018008 */  lui        $at, %hi(D_800828DC)
/* D120 8000C520 AC2028DC */  sw         $zero, %lo(D_800828DC)($at)
/* D124 8000C524 AEE00000 */  sw         $zero, 0x0($s7)
/* D128 8000C528 3C018008 */  lui        $at, %hi(D_800828E0)
/* D12C 8000C52C AC2028E0 */  sw         $zero, %lo(D_800828E0)($at)
/* D130 8000C530 3C018008 */  lui        $at, %hi(D_800828E4)
/* D134 8000C534 AC2028E4 */  sw         $zero, %lo(D_800828E4)($at)
/* D138 8000C538 3C018008 */  lui        $at, %hi(D_800828E8)
/* D13C 8000C53C AC2028E8 */  sw         $zero, %lo(D_800828E8)($at)
/* D140 8000C540 3C018008 */  lui        $at, %hi(D_800828EC)
/* D144 8000C544 AC2028EC */  sw         $zero, %lo(D_800828EC)($at)
/* D148 8000C548 3C018008 */  lui        $at, %hi(D_80084F38)
/* D14C 8000C54C AC204F38 */  sw         $zero, %lo(D_80084F38)($at)
/* D150 8000C550 3C0E8008 */  lui        $t6, %hi(D_80082C80)
/* D154 8000C554 25CE2C80 */  addiu      $t6, $t6, %lo(D_80082C80)
/* D158 8000C558 3C018008 */  lui        $at, %hi(D_800828F0)
/* D15C 8000C55C AC2E28F0 */  sw         $t6, %lo(D_800828F0)($at)
/* D160 8000C560 3C0F8008 */  lui        $t7, %hi(D_80083080)
/* D164 8000C564 25EF3080 */  addiu      $t7, $t7, %lo(D_80083080)
/* D168 8000C568 3C018008 */  lui        $at, %hi(D_800828F4)
/* D16C 8000C56C AC2F28F4 */  sw         $t7, %lo(D_800828F4)($at)
/* D170 8000C570 3C188008 */  lui        $t8, %hi(D_80084F40)
/* D174 8000C574 27184F40 */  addiu      $t8, $t8, %lo(D_80084F40)
/* D178 8000C578 3C018008 */  lui        $at, %hi(D_800828F8)
/* D17C 8000C57C AC3828F8 */  sw         $t8, %lo(D_800828F8)($at)
/* D180 8000C580 3C198008 */  lui        $t9, %hi(D_80083488)
/* D184 8000C584 27393488 */  addiu      $t9, $t9, %lo(D_80083488)
/* D188 8000C588 3C018008 */  lui        $at, %hi(D_800828FC)
/* D18C 8000C58C AC3928FC */  sw         $t9, %lo(D_800828FC)($at)
/* D190 8000C590 3C098008 */  lui        $t1, %hi(D_80083888)
/* D194 8000C594 25293888 */  addiu      $t1, $t1, %lo(D_80083888)
/* D198 8000C598 3C018008 */  lui        $at, %hi(D_80082900)
/* D19C 8000C59C AC292900 */  sw         $t1, %lo(D_80082900)($at)
/* D1A0 8000C5A0 3C0A8008 */  lui        $t2, %hi(D_80083C90)
/* D1A4 8000C5A4 254A3C90 */  addiu      $t2, $t2, %lo(D_80083C90)
/* D1A8 8000C5A8 3C018008 */  lui        $at, %hi(D_80082904)
/* D1AC 8000C5AC AC2A2904 */  sw         $t2, %lo(D_80082904)($at)
/* D1B0 8000C5B0 3C0B8008 */  lui        $t3, %hi(D_80082910)
/* D1B4 8000C5B4 256B2910 */  addiu      $t3, $t3, %lo(D_80082910)
/* D1B8 8000C5B8 3C018008 */  lui        $at, %hi(D_80082C10)
/* D1BC 8000C5BC AC2B2C10 */  sw         $t3, %lo(D_80082C10)($at)
/* D1C0 8000C5C0 3C014416 */  lui        $at, (0x44160000 >> 16)
/* D1C4 8000C5C4 44812000 */  mtc1       $at, $f4
/* D1C8 8000C5C8 3C018008 */  lui        $at, %hi(D_80084ED4)
/* D1CC 8000C5CC 3C128008 */  lui        $s2, %hi(D_80084F20)
/* D1D0 8000C5D0 8E524F20 */  lw         $s2, %lo(D_80084F20)($s2)
/* D1D4 8000C5D4 E4244ED4 */  swc1       $f4, %lo(D_80084ED4)($at)
/* D1D8 8000C5D8 3C018008 */  lui        $at, %hi(D_80084ED8)
/* D1DC 8000C5DC 240CFFFF */  addiu      $t4, $zero, -0x1
/* D1E0 8000C5E0 AC2C4ED8 */  sw         $t4, %lo(D_80084ED8)($at)
/* D1E4 8000C5E4 96420028 */  lhu        $v0, 0x28($s2)
/* D1E8 8000C5E8 24010001 */  addiu      $at, $zero, 0x1
/* D1EC 8000C5EC C4600014 */  lwc1       $f0, 0x14($v1)
/* D1F0 8000C5F0 1041000F */  beq        $v0, $at, .L8000C630
/* D1F4 8000C5F4 C462001C */   lwc1      $f2, 0x1C($v1)
/* D1F8 8000C5F8 24010002 */  addiu      $at, $zero, 0x2
/* D1FC 8000C5FC 5041001E */  beql       $v0, $at, .L8000C678
/* D200 8000C600 C6520008 */   lwc1      $f18, 0x8($s2)
/* D204 8000C604 24010003 */  addiu      $at, $zero, 0x3
/* D208 8000C608 5041002C */  beql       $v0, $at, .L8000C6BC
/* D20C 8000C60C C64A0008 */   lwc1      $f10, 0x8($s2)
/* D210 8000C610 24010004 */  addiu      $at, $zero, 0x4
/* D214 8000C614 10410039 */  beq        $v0, $at, .L8000C6FC
/* D218 8000C618 00009825 */   or        $s3, $zero, $zero
/* D21C 8000C61C 3C118005 */  lui        $s1, %hi(D_800558E8)
/* D220 8000C620 263158E8 */  addiu      $s1, $s1, %lo(D_800558E8)
/* D224 8000C624 0000A025 */  or         $s4, $zero, $zero
/* D228 8000C628 10000044 */  b          .L8000C73C
/* D22C 8000C62C 24160001 */   addiu     $s6, $zero, 0x1
.L8000C630:
/* D230 8000C630 C6460008 */  lwc1       $f6, 0x8($s2)
/* D234 8000C634 C64A0010 */  lwc1       $f10, 0x10($s2)
/* D238 8000C638 C644000C */  lwc1       $f4, 0xC($s2)
/* D23C 8000C63C 46060201 */  sub.s      $f8, $f0, $f6
/* D240 8000C640 3C118005 */  lui        $s1, %hi(D_800558EC)
/* D244 8000C644 263158EC */  addiu      $s1, $s1, %lo(D_800558EC)
/* D248 8000C648 46041181 */  sub.s      $f6, $f2, $f4
/* D24C 8000C64C 2416009D */  addiu      $s6, $zero, 0x9D
/* D250 8000C650 460A4403 */  div.s      $f16, $f8, $f10
/* D254 8000C654 C6480014 */  lwc1       $f8, 0x14($s2)
/* D258 8000C658 46083283 */  div.s      $f10, $f6, $f8
/* D25C 8000C65C 4600848D */  trunc.w.s  $f18, $f16
/* D260 8000C660 44139000 */  mfc1       $s3, $f18
/* D264 8000C664 4600540D */  trunc.w.s  $f16, $f10
/* D268 8000C668 44148000 */  mfc1       $s4, $f16
/* D26C 8000C66C 10000033 */  b          .L8000C73C
/* D270 8000C670 00000000 */   nop
/* D274 8000C674 C6520008 */  lwc1       $f18, 0x8($s2)
.L8000C678:
/* D278 8000C678 C6460010 */  lwc1       $f6, 0x10($s2)
/* D27C 8000C67C C650000C */  lwc1       $f16, 0xC($s2)
/* D280 8000C680 46120101 */  sub.s      $f4, $f0, $f18
/* D284 8000C684 3C118005 */  lui        $s1, %hi(D_80055A28)
/* D288 8000C688 26315A28 */  addiu      $s1, $s1, %lo(D_80055A28)
/* D28C 8000C68C 46101481 */  sub.s      $f18, $f2, $f16
/* D290 8000C690 24160059 */  addiu      $s6, $zero, 0x59
/* D294 8000C694 46062203 */  div.s      $f8, $f4, $f6
/* D298 8000C698 C6440014 */  lwc1       $f4, 0x14($s2)
/* D29C 8000C69C 46049183 */  div.s      $f6, $f18, $f4
/* D2A0 8000C6A0 4600428D */  trunc.w.s  $f10, $f8
/* D2A4 8000C6A4 44135000 */  mfc1       $s3, $f10
/* D2A8 8000C6A8 4600320D */  trunc.w.s  $f8, $f6
/* D2AC 8000C6AC 44144000 */  mfc1       $s4, $f8
/* D2B0 8000C6B0 10000022 */  b          .L8000C73C
/* D2B4 8000C6B4 00000000 */   nop
/* D2B8 8000C6B8 C64A0008 */  lwc1       $f10, 0x8($s2)
.L8000C6BC:
/* D2BC 8000C6BC C6520010 */  lwc1       $f18, 0x10($s2)
/* D2C0 8000C6C0 C648000C */  lwc1       $f8, 0xC($s2)
/* D2C4 8000C6C4 460A0401 */  sub.s      $f16, $f0, $f10
/* D2C8 8000C6C8 3C118005 */  lui        $s1, %hi(D_80055ADC)
/* D2CC 8000C6CC 26315ADC */  addiu      $s1, $s1, %lo(D_80055ADC)
/* D2D0 8000C6D0 46081281 */  sub.s      $f10, $f2, $f8
/* D2D4 8000C6D4 24160009 */  addiu      $s6, $zero, 0x9
/* D2D8 8000C6D8 46128103 */  div.s      $f4, $f16, $f18
/* D2DC 8000C6DC C6500014 */  lwc1       $f16, 0x14($s2)
/* D2E0 8000C6E0 46105483 */  div.s      $f18, $f10, $f16
/* D2E4 8000C6E4 4600218D */  trunc.w.s  $f6, $f4
/* D2E8 8000C6E8 44133000 */  mfc1       $s3, $f6
/* D2EC 8000C6EC 4600910D */  trunc.w.s  $f4, $f18
/* D2F0 8000C6F0 44142000 */  mfc1       $s4, $f4
/* D2F4 8000C6F4 10000011 */  b          .L8000C73C
/* D2F8 8000C6F8 00000000 */   nop
.L8000C6FC:
/* D2FC 8000C6FC C6460008 */  lwc1       $f6, 0x8($s2)
/* D300 8000C700 C64A0010 */  lwc1       $f10, 0x10($s2)
/* D304 8000C704 C644000C */  lwc1       $f4, 0xC($s2)
/* D308 8000C708 46060201 */  sub.s      $f8, $f0, $f6
/* D30C 8000C70C 3C118005 */  lui        $s1, %hi(D_80055AF0)
/* D310 8000C710 26315AF0 */  addiu      $s1, $s1, %lo(D_80055AF0)
/* D314 8000C714 46041181 */  sub.s      $f6, $f2, $f4
/* D318 8000C718 24160015 */  addiu      $s6, $zero, 0x15
/* D31C 8000C71C 460A4403 */  div.s      $f16, $f8, $f10
/* D320 8000C720 C6480014 */  lwc1       $f8, 0x14($s2)
/* D324 8000C724 46083283 */  div.s      $f10, $f6, $f8
/* D328 8000C728 4600848D */  trunc.w.s  $f18, $f16
/* D32C 8000C72C 44139000 */  mfc1       $s3, $f18
/* D330 8000C730 4600540D */  trunc.w.s  $f16, $f10
/* D334 8000C734 44148000 */  mfc1       $s4, $f16
/* D338 8000C738 00000000 */  nop
.L8000C73C:
/* D33C 8000C73C 52C00025 */  beql       $s6, $zero, .L8000C7D4
/* D340 8000C740 96420002 */   lhu       $v0, 0x2($s2)
/* D344 8000C744 822C0000 */  lb         $t4, 0x0($s1)
.L8000C748:
/* D348 8000C748 822D0001 */  lb         $t5, 0x1($s1)
/* D34C 8000C74C 26310002 */  addiu      $s1, $s1, 0x2
/* D350 8000C750 01931021 */  addu       $v0, $t4, $s3
/* D354 8000C754 0440001B */  bltz       $v0, .L8000C7C4
/* D358 8000C758 01B41821 */   addu      $v1, $t5, $s4
/* D35C 8000C75C 0462001A */  bltzl      $v1, .L8000C7C8
/* D360 8000C760 26D6FFFF */   addiu     $s6, $s6, -0x1
/* D364 8000C764 86470004 */  lh         $a3, 0x4($s2)
/* D368 8000C768 0047082A */  slt        $at, $v0, $a3
/* D36C 8000C76C 50200016 */  beql       $at, $zero, .L8000C7C8
/* D370 8000C770 26D6FFFF */   addiu     $s6, $s6, -0x1
/* D374 8000C774 864E0006 */  lh         $t6, 0x6($s2)
/* D378 8000C778 006E082A */  slt        $at, $v1, $t6
/* D37C 8000C77C 50200012 */  beql       $at, $zero, .L8000C7C8
/* D380 8000C780 26D6FFFF */   addiu     $s6, $s6, -0x1
/* D384 8000C784 00E30019 */  multu      $a3, $v1
/* D388 8000C788 8E58001C */  lw         $t8, 0x1C($s2)
/* D38C 8000C78C 8E4C0020 */  lw         $t4, 0x20($s2)
/* D390 8000C790 00007812 */  mflo       $t7
/* D394 8000C794 01E23021 */  addu       $a2, $t7, $v0
/* D398 8000C798 0006C840 */  sll        $t9, $a2, 1
/* D39C 8000C79C 03194821 */  addu       $t1, $t8, $t9
/* D3A0 8000C7A0 952A0000 */  lhu        $t2, 0x0($t1)
/* D3A4 8000C7A4 000A5840 */  sll        $t3, $t2, 1
/* D3A8 8000C7A8 016C2821 */  addu       $a1, $t3, $t4
/* D3AC 8000C7AC 94B00000 */  lhu        $s0, 0x0($a1)
/* D3B0 8000C7B0 24A50002 */  addiu      $a1, $a1, 0x2
/* D3B4 8000C7B4 0C003546 */  jal        func_8000D518
/* D3B8 8000C7B8 02002025 */   or        $a0, $s0, $zero
/* D3BC 8000C7BC 3C128008 */  lui        $s2, %hi(D_80084F20)
/* D3C0 8000C7C0 8E524F20 */  lw         $s2, %lo(D_80084F20)($s2)
.L8000C7C4:
/* D3C4 8000C7C4 26D6FFFF */  addiu      $s6, $s6, -0x1
.L8000C7C8:
/* D3C8 8000C7C8 56C0FFDF */  bnel       $s6, $zero, .L8000C748
/* D3CC 8000C7CC 822C0000 */   lb        $t4, 0x0($s1)
/* D3D0 8000C7D0 96420002 */  lhu        $v0, 0x2($s2)
.L8000C7D4:
/* D3D4 8000C7D4 10400005 */  beqz       $v0, .L8000C7EC
/* D3D8 8000C7D8 00000000 */   nop
/* D3DC 8000C7DC 3050FFFF */  andi       $s0, $v0, 0xFFFF
/* D3E0 8000C7E0 8E450024 */  lw         $a1, 0x24($s2)
/* D3E4 8000C7E4 0C003546 */  jal        func_8000D518
/* D3E8 8000C7E8 02002025 */   or        $a0, $s0, $zero
.L8000C7EC:
/* D3EC 8000C7EC 3C158008 */  lui        $s5, %hi(gMasterGfxPos)
/* D3F0 8000C7F0 3C1E8008 */  lui        $fp, %hi(D_80084F34)
/* D3F4 8000C7F4 27DE4F34 */  addiu      $fp, $fp, %lo(D_80084F34)
/* D3F8 8000C7F8 26B5B2FC */  addiu      $s5, $s5, %lo(gMasterGfxPos)
/* D3FC 8000C7FC 8EA30000 */  lw         $v1, 0x0($s5)
/* D400 8000C800 3C0F0100 */  lui        $t7, %hi(D_10000E8)
/* D404 8000C804 25EF00E8 */  addiu      $t7, $t7, %lo(D_10000E8)
/* D408 8000C808 246D0008 */  addiu      $t5, $v1, 0x8
/* D40C 8000C80C AEAD0000 */  sw         $t5, 0x0($s5)
/* D410 8000C810 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
/* D414 8000C814 AC6E0000 */  sw         $t6, 0x0($v1)
/* D418 8000C818 AC6F0004 */  sw         $t7, 0x4($v1)
/* D41C 8000C81C 8EA20000 */  lw         $v0, 0x0($s5)
/* D420 8000C820 3C19BC00 */  lui        $t9, (0xBC000008 >> 16)
/* D424 8000C824 37390008 */  ori        $t9, $t9, (0xBC000008 & 0xFFFF)
/* D428 8000C828 24580008 */  addiu      $t8, $v0, 0x8
/* D42C 8000C82C AEB80000 */  sw         $t8, 0x0($s5)
/* D430 8000C830 AC590000 */  sw         $t9, 0x0($v0)
/* D434 8000C834 3C058008 */  lui        $a1, %hi(D_8007B318)
/* D438 8000C838 3C098008 */  lui        $t1, %hi(D_8007B31A)
/* D43C 8000C83C 8529B31A */  lh         $t1, %lo(D_8007B31A)($t1)
/* D440 8000C840 84A5B318 */  lh         $a1, %lo(D_8007B318)($a1)
/* D444 8000C844 3C0A0001 */  lui        $t2, (0x1F400 >> 16)
/* D448 8000C848 354AF400 */  ori        $t2, $t2, (0x1F400 & 0xFFFF)
/* D44C 8000C84C 01253023 */  subu       $a2, $t1, $a1
/* D450 8000C850 0146001A */  div        $zero, $t2, $a2
/* D454 8000C854 00057023 */  negu       $t6, $a1
/* D458 8000C858 000E7A00 */  sll        $t7, $t6, 8
/* D45C 8000C85C 01EAC021 */  addu       $t8, $t7, $t2
/* D460 8000C860 00005812 */  mflo       $t3
/* D464 8000C864 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* D468 8000C868 000C6C00 */  sll        $t5, $t4, 16
/* D46C 8000C86C 0306001A */  div        $zero, $t8, $a2
/* D470 8000C870 0000C812 */  mflo       $t9
/* D474 8000C874 3329FFFF */  andi       $t1, $t9, 0xFFFF
/* D478 8000C878 00402025 */  or         $a0, $v0, $zero
/* D47C 8000C87C 14C00002 */  bnez       $a2, .L8000C888
/* D480 8000C880 00000000 */   nop
/* D484 8000C884 0007000D */  break      7
.L8000C888:
/* D488 8000C888 2401FFFF */  addiu      $at, $zero, -0x1
/* D48C 8000C88C 14C10004 */  bne        $a2, $at, .L8000C8A0
/* D490 8000C890 3C018000 */   lui       $at, (0x80000000 >> 16)
/* D494 8000C894 15410002 */  bne        $t2, $at, .L8000C8A0
/* D498 8000C898 00000000 */   nop
/* D49C 8000C89C 0006000D */  break      6
.L8000C8A0:
/* D4A0 8000C8A0 01400821 */  addu       $at, $t2, $zero
/* D4A4 8000C8A4 01A95025 */  or         $t2, $t5, $t1
/* D4A8 8000C8A8 AC8A0004 */  sw         $t2, 0x4($a0)
/* D4AC 8000C8AC 14C00002 */  bnez       $a2, .L8000C8B8
/* D4B0 8000C8B0 00000000 */   nop
/* D4B4 8000C8B4 0007000D */  break      7
.L8000C8B8:
/* D4B8 8000C8B8 2401FFFF */  addiu      $at, $zero, -0x1
/* D4BC 8000C8BC 14C10004 */  bne        $a2, $at, .L8000C8D0
/* D4C0 8000C8C0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* D4C4 8000C8C4 17010002 */  bne        $t8, $at, .L8000C8D0
/* D4C8 8000C8C8 00000000 */   nop
/* D4CC 8000C8CC 0006000D */  break      6
.L8000C8D0:
/* D4D0 8000C8D0 3C0B8008 */  lui        $t3, %hi(D_80082C80)
/* D4D4 8000C8D4 AFC00000 */  sw         $zero, 0x0($fp)
/* D4D8 8000C8D8 256B2C80 */  addiu      $t3, $t3, %lo(D_80082C80)
/* D4DC 8000C8DC 3C018008 */  lui        $at, %hi(D_800828F0)
/* D4E0 8000C8E0 AC2B28F0 */  sw         $t3, %lo(D_800828F0)($at)
/* D4E4 8000C8E4 8EF60000 */  lw         $s6, 0x0($s7)
/* D4E8 8000C8E8 3C178008 */  lui        $s7, %hi(D_80082C48)
/* D4EC 8000C8EC 26F72C48 */  addiu      $s7, $s7, %lo(D_80082C48)
/* D4F0 8000C8F0 12C00080 */  beqz       $s6, .L8000CAF4
/* D4F4 8000C8F4 3C018007 */   lui       $at, %hi(D_800711F0)
/* D4F8 8000C8F8 3C148008 */  lui        $s4, %hi(D_80082C18)
/* D4FC 8000C8FC 3C128008 */  lui        $s2, %hi(D_8007B2F8)
/* D500 8000C900 4480E000 */  mtc1       $zero, $f28
/* D504 8000C904 2652B2F8 */  addiu      $s2, $s2, %lo(D_8007B2F8)
/* D508 8000C908 26942C18 */  addiu      $s4, $s4, %lo(D_80082C18)
/* D50C 8000C90C D43E11F0 */  ldc1       $f30, %lo(D_800711F0)($at)
.L8000C910:
/* D510 8000C910 3C048008 */  lui        $a0, %hi(D_800828F0)
/* D514 8000C914 248428F0 */  addiu      $a0, $a0, %lo(D_800828F0)
/* D518 8000C918 8C820000 */  lw         $v0, 0x0($a0)
/* D51C 8000C91C 3C0D8005 */  lui        $t5, %hi(D_800566FC)
/* D520 8000C920 25AD66FC */  addiu      $t5, $t5, %lo(D_800566FC)
/* D524 8000C924 8C510000 */  lw         $s1, 0x0($v0)
/* D528 8000C928 244C0004 */  addiu      $t4, $v0, 0x4
/* D52C 8000C92C AC8C0000 */  sw         $t4, 0x0($a0)
/* D530 8000C930 96230016 */  lhu        $v1, 0x16($s1)
/* D534 8000C934 C6340000 */  lwc1       $f20, 0x0($s1)
/* D538 8000C938 C6380004 */  lwc1       $f24, 0x4($s1)
/* D53C 8000C93C 306E2000 */  andi       $t6, $v1, 0x2000
/* D540 8000C940 C6360008 */  lwc1       $f22, 0x8($s1)
/* D544 8000C944 11C00021 */  beqz       $t6, .L8000C9CC
/* D548 8000C948 C63A000C */   lwc1      $f26, 0xC($s1)
/* D54C 8000C94C 30670F00 */  andi       $a3, $v1, 0xF00
/* D550 8000C950 00608025 */  or         $s0, $v1, $zero
/* D554 8000C954 00077A03 */  sra        $t7, $a3, 8
/* D558 8000C958 320600FF */  andi       $a2, $s0, 0xFF
/* D55C 8000C95C 24D00001 */  addiu      $s0, $a2, 0x1
/* D560 8000C960 000FC940 */  sll        $t9, $t7, 5
/* D564 8000C964 032D9821 */  addu       $s3, $t9, $t5
/* D568 8000C968 3209FFFF */  andi       $t1, $s0, 0xFFFF
/* D56C 8000C96C 01208025 */  or         $s0, $t1, $zero
/* D570 8000C970 02602025 */  or         $a0, $s3, $zero
/* D574 8000C974 0C008AD0 */  jal        func_80022B40
/* D578 8000C978 02E02825 */   or        $a1, $s7, $zero
/* D57C 8000C97C C6200010 */  lwc1       $f0, 0x10($s1)
/* D580 8000C980 C6F20000 */  lwc1       $f18, 0x0($s7)
/* D584 8000C984 C6E60004 */  lwc1       $f6, 0x4($s7)
/* D588 8000C988 C6EA0008 */  lwc1       $f10, 0x8($s7)
/* D58C 8000C98C 46009102 */  mul.s      $f4, $f18, $f0
/* D590 8000C990 966A0006 */  lhu        $t2, 0x6($s3)
/* D594 8000C994 02001025 */  or         $v0, $s0, $zero
/* D598 8000C998 46003202 */  mul.s      $f8, $f6, $f0
/* D59C 8000C99C 020A082A */  slt        $at, $s0, $t2
/* D5A0 8000C9A0 46005402 */  mul.s      $f16, $f10, $f0
/* D5A4 8000C9A4 4604A500 */  add.s      $f20, $f20, $f4
/* D5A8 8000C9A8 4608C600 */  add.s      $f24, $f24, $f8
/* D5AC 8000C9AC 14200002 */  bnez       $at, .L8000C9B8
/* D5B0 8000C9B0 4610B580 */   add.s     $f22, $f22, $f16
/* D5B4 8000C9B4 00001025 */  or         $v0, $zero, $zero
.L8000C9B8:
/* D5B8 8000C9B8 962B0016 */  lhu        $t3, 0x16($s1)
/* D5BC 8000C9BC 316CFF00 */  andi       $t4, $t3, 0xFF00
/* D5C0 8000C9C0 01827025 */  or         $t6, $t4, $v0
/* D5C4 8000C9C4 1000001C */  b          .L8000CA38
/* D5C8 8000C9C8 A62E0016 */   sh        $t6, 0x16($s1)
.L8000C9CC:
/* D5CC 8000C9CC 306F0100 */  andi       $t7, $v1, 0x100
/* D5D0 8000C9D0 51E0001A */  beql       $t7, $zero, .L8000CA3C
/* D5D4 8000C9D4 8E490000 */   lw        $t1, 0x0($s2)
/* D5D8 8000C9D8 0C0036CE */  jal        func_8000DB38
/* D5DC 8000C9DC 02202025 */   or        $a0, $s1, $zero
/* D5E0 8000C9E0 10400015 */  beqz       $v0, .L8000CA38
/* D5E4 8000C9E4 0002C0C0 */   sll       $t8, $v0, 3
/* D5E8 8000C9E8 0302C023 */  subu       $t8, $t8, $v0
/* D5EC 8000C9EC 3C198008 */  lui        $t9, %hi(D_80084E60)
/* D5F0 8000C9F0 27394E60 */  addiu      $t9, $t9, %lo(D_80084E60)
/* D5F4 8000C9F4 0018C080 */  sll        $t8, $t8, 2
/* D5F8 8000C9F8 03198021 */  addu       $s0, $t8, $t9
/* D5FC 8000C9FC C612FFF8 */  lwc1       $f18, -0x8($s0)
/* D600 8000CA00 E69C0004 */  swc1       $f28, 0x4($s4)
/* D604 8000CA04 02802825 */  or         $a1, $s4, $zero
/* D608 8000CA08 E6920000 */  swc1       $f18, 0x0($s4)
/* D60C 8000CA0C C624000C */  lwc1       $f4, 0xC($s1)
/* D610 8000CA10 460021A1 */  cvt.d.s    $f6, $f4
/* D614 8000CA14 463E3202 */  mul.d      $f8, $f6, $f30
/* D618 8000CA18 0C008CBD */  jal        func_800232F4
/* D61C 8000CA1C 46204320 */   cvt.s.d   $f12, $f8
/* D620 8000CA20 C68A0000 */  lwc1       $f10, 0x0($s4)
/* D624 8000CA24 C6900004 */  lwc1       $f16, 0x4($s4)
/* D628 8000CA28 C612FFFC */  lwc1       $f18, -0x4($s0)
/* D62C 8000CA2C 460AA501 */  sub.s      $f20, $f20, $f10
/* D630 8000CA30 4610B581 */  sub.s      $f22, $f22, $f16
/* D634 8000CA34 4612D680 */  add.s      $f26, $f26, $f18
.L8000CA38:
/* D638 8000CA38 8E490000 */  lw         $t1, 0x0($s2)
.L8000CA3C:
/* D63C 8000CA3C 8FAD0080 */  lw         $t5, 0x80($sp)
/* D640 8000CA40 C6240010 */  lwc1       $f4, 0x10($s1)
/* D644 8000CA44 00095180 */  sll        $t2, $t1, 6
/* D648 8000CA48 4405E000 */  mfc1       $a1, $f28
/* D64C 8000CA4C 4406D000 */  mfc1       $a2, $f26
/* D650 8000CA50 4407E000 */  mfc1       $a3, $f28
/* D654 8000CA54 01AA2021 */  addu       $a0, $t5, $t2
/* D658 8000CA58 248400C0 */  addiu      $a0, $a0, 0xC0
/* D65C 8000CA5C E7B6001C */  swc1       $f22, 0x1C($sp)
/* D660 8000CA60 E7B80018 */  swc1       $f24, 0x18($sp)
/* D664 8000CA64 E7B40014 */  swc1       $f20, 0x14($sp)
/* D668 8000CA68 0C00D448 */  jal        guPosition
/* D66C 8000CA6C E7A40010 */   swc1      $f4, 0x10($sp)
/* D670 8000CA70 8EA20000 */  lw         $v0, 0x0($s5)
/* D674 8000CA74 3C0C0102 */  lui        $t4, (0x1020040 >> 16)
/* D678 8000CA78 358C0040 */  ori        $t4, $t4, (0x1020040 & 0xFFFF)
/* D67C 8000CA7C 244B0008 */  addiu      $t3, $v0, 0x8
/* D680 8000CA80 AEAB0000 */  sw         $t3, 0x0($s5)
/* D684 8000CA84 AC4C0000 */  sw         $t4, 0x0($v0)
/* D688 8000CA88 8E4E0000 */  lw         $t6, 0x0($s2)
/* D68C 8000CA8C 3C190200 */  lui        $t9, %hi(D_2000000)
/* D690 8000CA90 27390000 */  addiu      $t9, $t9, %lo(D_2000000)
/* D694 8000CA94 000E7980 */  sll        $t7, $t6, 6
/* D698 8000CA98 25F800C0 */  addiu      $t8, $t7, 0xC0
/* D69C 8000CA9C 03194821 */  addu       $t1, $t8, $t9
/* D6A0 8000CAA0 AC490004 */  sw         $t1, 0x4($v0)
/* D6A4 8000CAA4 8E4D0000 */  lw         $t5, 0x0($s2)
/* D6A8 8000CAA8 25AA0001 */  addiu      $t2, $t5, 0x1
/* D6AC 8000CAAC AE4A0000 */  sw         $t2, 0x0($s2)
/* D6B0 8000CAB0 8EA20000 */  lw         $v0, 0x0($s5)
/* D6B4 8000CAB4 3C0C0600 */  lui        $t4, (0x6000000 >> 16)
/* D6B8 8000CAB8 3C0E8008 */  lui        $t6, %hi(D_80084F28)
/* D6BC 8000CABC 244B0008 */  addiu      $t3, $v0, 0x8
/* D6C0 8000CAC0 AEAB0000 */  sw         $t3, 0x0($s5)
/* D6C4 8000CAC4 AC4C0000 */  sw         $t4, 0x0($v0)
/* D6C8 8000CAC8 862F0014 */  lh         $t7, 0x14($s1)
/* D6CC 8000CACC 8DCE4F28 */  lw         $t6, %lo(D_80084F28)($t6)
/* D6D0 8000CAD0 000FC140 */  sll        $t8, $t7, 5
/* D6D4 8000CAD4 01D8C821 */  addu       $t9, $t6, $t8
/* D6D8 8000CAD8 8F290010 */  lw         $t1, 0x10($t9)
/* D6DC 8000CADC AC490004 */  sw         $t1, 0x4($v0)
/* D6E0 8000CAE0 8FCD0000 */  lw         $t5, 0x0($fp)
/* D6E4 8000CAE4 26D6FFFF */  addiu      $s6, $s6, -0x1
/* D6E8 8000CAE8 25AA0001 */  addiu      $t2, $t5, 0x1
/* D6EC 8000CAEC 16C0FF88 */  bnez       $s6, .L8000C910
/* D6F0 8000CAF0 AFCA0000 */   sw        $t2, 0x0($fp)
.L8000CAF4:
/* D6F4 8000CAF4 3C168008 */  lui        $s6, %hi(D_800828DC)
/* D6F8 8000CAF8 8ED628DC */  lw         $s6, %lo(D_800828DC)($s6)
/* D6FC 8000CAFC 3C0B8008 */  lui        $t3, %hi(D_80083080)
/* D700 8000CB00 3C128008 */  lui        $s2, %hi(D_8007B2F8)
/* D704 8000CB04 4480E000 */  mtc1       $zero, $f28
/* D708 8000CB08 256B3080 */  addiu      $t3, $t3, %lo(D_80083080)
/* D70C 8000CB0C 3C018008 */  lui        $at, %hi(D_800828F0)
/* D710 8000CB10 2652B2F8 */  addiu      $s2, $s2, %lo(D_8007B2F8)
/* D714 8000CB14 12C00039 */  beqz       $s6, .L8000CBFC
/* D718 8000CB18 AC2B28F0 */   sw        $t3, %lo(D_800828F0)($at)
.L8000CB1C:
/* D71C 8000CB1C 3C028008 */  lui        $v0, %hi(D_800828F0)
/* D720 8000CB20 8C4228F0 */  lw         $v0, %lo(D_800828F0)($v0)
/* D724 8000CB24 3C018008 */  lui        $at, %hi(D_800828F0)
/* D728 8000CB28 8FAF0080 */  lw         $t7, 0x80($sp)
/* D72C 8000CB2C 8C510000 */  lw         $s1, 0x0($v0)
/* D730 8000CB30 244C0004 */  addiu      $t4, $v0, 0x4
/* D734 8000CB34 AC2C28F0 */  sw         $t4, %lo(D_800828F0)($at)
/* D738 8000CB38 C6260010 */  lwc1       $f6, 0x10($s1)
/* D73C 8000CB3C 8E26000C */  lw         $a2, 0xC($s1)
/* D740 8000CB40 8E4E0000 */  lw         $t6, 0x0($s2)
/* D744 8000CB44 E7A60010 */  swc1       $f6, 0x10($sp)
/* D748 8000CB48 C6280000 */  lwc1       $f8, 0x0($s1)
/* D74C 8000CB4C 000EC180 */  sll        $t8, $t6, 6
/* D750 8000CB50 4405E000 */  mfc1       $a1, $f28
/* D754 8000CB54 E7A80014 */  swc1       $f8, 0x14($sp)
/* D758 8000CB58 C62A0004 */  lwc1       $f10, 0x4($s1)
/* D75C 8000CB5C 4407E000 */  mfc1       $a3, $f28
/* D760 8000CB60 01F82021 */  addu       $a0, $t7, $t8
/* D764 8000CB64 E7AA0018 */  swc1       $f10, 0x18($sp)
/* D768 8000CB68 C6300008 */  lwc1       $f16, 0x8($s1)
/* D76C 8000CB6C 248400C0 */  addiu      $a0, $a0, 0xC0
/* D770 8000CB70 0C00D448 */  jal        guPosition
/* D774 8000CB74 E7B0001C */   swc1      $f16, 0x1C($sp)
/* D778 8000CB78 8EA20000 */  lw         $v0, 0x0($s5)
/* D77C 8000CB7C 3C090102 */  lui        $t1, (0x1020040 >> 16)
/* D780 8000CB80 35290040 */  ori        $t1, $t1, (0x1020040 & 0xFFFF)
/* D784 8000CB84 24590008 */  addiu      $t9, $v0, 0x8
/* D788 8000CB88 AEB90000 */  sw         $t9, 0x0($s5)
/* D78C 8000CB8C AC490000 */  sw         $t1, 0x0($v0)
/* D790 8000CB90 8E4D0000 */  lw         $t5, 0x0($s2)
/* D794 8000CB94 3C0C0200 */  lui        $t4, %hi(D_2000000)
/* D798 8000CB98 258C0000 */  addiu      $t4, $t4, %lo(D_2000000)
/* D79C 8000CB9C 000D5180 */  sll        $t2, $t5, 6
/* D7A0 8000CBA0 254B00C0 */  addiu      $t3, $t2, 0xC0
/* D7A4 8000CBA4 016C7021 */  addu       $t6, $t3, $t4
/* D7A8 8000CBA8 AC4E0004 */  sw         $t6, 0x4($v0)
/* D7AC 8000CBAC 8E4F0000 */  lw         $t7, 0x0($s2)
/* D7B0 8000CBB0 25F80001 */  addiu      $t8, $t7, 0x1
/* D7B4 8000CBB4 AE580000 */  sw         $t8, 0x0($s2)
/* D7B8 8000CBB8 8EA20000 */  lw         $v0, 0x0($s5)
/* D7BC 8000CBBC 3C090600 */  lui        $t1, (0x6000000 >> 16)
/* D7C0 8000CBC0 3C0D8008 */  lui        $t5, %hi(D_80084F28)
/* D7C4 8000CBC4 24590008 */  addiu      $t9, $v0, 0x8
/* D7C8 8000CBC8 AEB90000 */  sw         $t9, 0x0($s5)
/* D7CC 8000CBCC AC490000 */  sw         $t1, 0x0($v0)
/* D7D0 8000CBD0 862A0014 */  lh         $t2, 0x14($s1)
/* D7D4 8000CBD4 8DAD4F28 */  lw         $t5, %lo(D_80084F28)($t5)
/* D7D8 8000CBD8 000A5940 */  sll        $t3, $t2, 5
/* D7DC 8000CBDC 01AB6021 */  addu       $t4, $t5, $t3
/* D7E0 8000CBE0 8D8E0010 */  lw         $t6, 0x10($t4)
/* D7E4 8000CBE4 AC4E0004 */  sw         $t6, 0x4($v0)
/* D7E8 8000CBE8 8FCF0000 */  lw         $t7, 0x0($fp)
/* D7EC 8000CBEC 26D6FFFF */  addiu      $s6, $s6, -0x1
/* D7F0 8000CBF0 25F80001 */  addiu      $t8, $t7, 0x1
/* D7F4 8000CBF4 16C0FFC9 */  bnez       $s6, .L8000CB1C
/* D7F8 8000CBF8 AFD80000 */   sw        $t8, 0x0($fp)
.L8000CBFC:
/* D7FC 8000CBFC 0C003962 */  jal        func_8000E588
/* D800 8000CC00 8FA40080 */   lw        $a0, 0x80($sp)
/* D804 8000CC04 3C198008 */  lui        $t9, %hi(D_800828E0)
/* D808 8000CC08 8F3928E0 */  lw         $t9, %lo(D_800828E0)($t9)
/* D80C 8000CC0C 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
/* D810 8000CC10 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
/* D814 8000CC14 1320002B */  beqz       $t9, .L8000CCC4
/* D818 8000CC18 3C0E8008 */   lui       $t6, %hi(D_80084F40)
/* D81C 8000CC1C 8EA20000 */  lw         $v0, 0x0($s5)
/* D820 8000CC20 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* D824 8000CC24 25C74F40 */  addiu      $a3, $t6, %lo(D_80084F40)
/* D828 8000CC28 24490008 */  addiu      $t1, $v0, 0x8
/* D82C 8000CC2C AEA90000 */  sw         $t1, 0x0($s5)
/* D830 8000CC30 AC400004 */  sw         $zero, 0x4($v0)
/* D834 8000CC34 AC4A0000 */  sw         $t2, 0x0($v0)
/* D838 8000CC38 8EA20000 */  lw         $v0, 0x0($s5)
/* D83C 8000CC3C 3C0CC811 */  lui        $t4, (0xC8113078 >> 16)
/* D840 8000CC40 358C3078 */  ori        $t4, $t4, (0xC8113078 & 0xFFFF)
/* D844 8000CC44 244D0008 */  addiu      $t5, $v0, 0x8
/* D848 8000CC48 AEAD0000 */  sw         $t5, 0x0($s5)
/* D84C 8000CC4C AC4C0004 */  sw         $t4, 0x4($v0)
/* D850 8000CC50 AC4B0000 */  sw         $t3, 0x0($v0)
/* D854 8000CC54 3C018008 */  lui        $at, %hi(D_800828F8)
/* D858 8000CC58 3C058008 */  lui        $a1, %hi(D_800828E0)
/* D85C 8000CC5C AC2728F8 */  sw         $a3, %lo(D_800828F8)($at)
/* D860 8000CC60 8CA528E0 */  lw         $a1, %lo(D_800828E0)($a1)
/* D864 8000CC64 8FA40080 */  lw         $a0, 0x80($sp)
/* D868 8000CC68 0C00376C */  jal        func_8000DDB0
/* D86C 8000CC6C 00003025 */   or        $a2, $zero, $zero
/* D870 8000CC70 3C058008 */  lui        $a1, %hi(D_800828E0)
/* D874 8000CC74 3C078008 */  lui        $a3, %hi(D_800828F8)
/* D878 8000CC78 8CE728F8 */  lw         $a3, %lo(D_800828F8)($a3)
/* D87C 8000CC7C 8CA528E0 */  lw         $a1, %lo(D_800828E0)($a1)
/* D880 8000CC80 8FA40080 */  lw         $a0, 0x80($sp)
/* D884 8000CC84 0C00376C */  jal        func_8000DDB0
/* D888 8000CC88 24060001 */   addiu     $a2, $zero, 0x1
/* D88C 8000CC8C 3C058008 */  lui        $a1, %hi(D_800828E0)
/* D890 8000CC90 3C078008 */  lui        $a3, %hi(D_800828F8)
/* D894 8000CC94 8CE728F8 */  lw         $a3, %lo(D_800828F8)($a3)
/* D898 8000CC98 8CA528E0 */  lw         $a1, %lo(D_800828E0)($a1)
/* D89C 8000CC9C 8FA40080 */  lw         $a0, 0x80($sp)
/* D8A0 8000CCA0 0C00376C */  jal        func_8000DDB0
/* D8A4 8000CCA4 24060002 */   addiu     $a2, $zero, 0x2
/* D8A8 8000CCA8 3C058008 */  lui        $a1, %hi(D_800828E0)
/* D8AC 8000CCAC 3C078008 */  lui        $a3, %hi(D_800828F8)
/* D8B0 8000CCB0 8CE728F8 */  lw         $a3, %lo(D_800828F8)($a3)
/* D8B4 8000CCB4 8CA528E0 */  lw         $a1, %lo(D_800828E0)($a1)
/* D8B8 8000CCB8 8FA40080 */  lw         $a0, 0x80($sp)
/* D8BC 8000CCBC 0C00376C */  jal        func_8000DDB0
/* D8C0 8000CCC0 24060003 */   addiu     $a2, $zero, 0x3
.L8000CCC4:
/* D8C4 8000CCC4 8EA20000 */  lw         $v0, 0x0($s5)
/* D8C8 8000CCC8 3C18BA00 */  lui        $t8, (0xBA000C02 >> 16)
/* D8CC 8000CCCC 37180C02 */  ori        $t8, $t8, (0xBA000C02 & 0xFFFF)
/* D8D0 8000CCD0 244F0008 */  addiu      $t7, $v0, 0x8
/* D8D4 8000CCD4 AEAF0000 */  sw         $t7, 0x0($s5)
/* D8D8 8000CCD8 24192000 */  addiu      $t9, $zero, 0x2000
/* D8DC 8000CCDC AC590004 */  sw         $t9, 0x4($v0)
/* D8E0 8000CCE0 AC580000 */  sw         $t8, 0x0($v0)
/* D8E4 8000CCE4 8EA20000 */  lw         $v0, 0x0($s5)
/* D8E8 8000CCE8 3C0ABA00 */  lui        $t2, (0xBA000E02 >> 16)
/* D8EC 8000CCEC 354A0E02 */  ori        $t2, $t2, (0xBA000E02 & 0xFFFF)
/* D8F0 8000CCF0 24490008 */  addiu      $t1, $v0, 0x8
/* D8F4 8000CCF4 AEA90000 */  sw         $t1, 0x0($s5)
/* D8F8 8000CCF8 AC400004 */  sw         $zero, 0x4($v0)
/* D8FC 8000CCFC AC4A0000 */  sw         $t2, 0x0($v0)
/* D900 8000CD00 3C038008 */  lui        $v1, %hi(D_80082C70)
/* D904 8000CD04 3C048005 */  lui        $a0, %hi(D_8004C2D4)
/* D908 8000CD08 3C028005 */  lui        $v0, %hi(D_8004C2E4)
/* D90C 8000CD0C 2442C2E4 */  addiu      $v0, $v0, %lo(D_8004C2E4)
/* D910 8000CD10 2484C2D4 */  addiu      $a0, $a0, %lo(D_8004C2D4)
/* D914 8000CD14 24632C70 */  addiu      $v1, $v1, %lo(D_80082C70)
.L8000CD18:
/* D918 8000CD18 946D0000 */  lhu        $t5, 0x0($v1)
/* D91C 8000CD1C 948B0000 */  lhu        $t3, 0x0($a0)
/* D920 8000CD20 946E0002 */  lhu        $t6, 0x2($v1)
/* D924 8000CD24 948F0002 */  lhu        $t7, 0x2($a0)
/* D928 8000CD28 24840004 */  addiu      $a0, $a0, 0x4
/* D92C 8000CD2C 0082082B */  sltu       $at, $a0, $v0
/* D930 8000CD30 01AB6021 */  addu       $t4, $t5, $t3
/* D934 8000CD34 01CFC021 */  addu       $t8, $t6, $t7
/* D938 8000CD38 24630004 */  addiu      $v1, $v1, 0x4
/* D93C 8000CD3C A46CFFFC */  sh         $t4, -0x4($v1)
/* D940 8000CD40 1420FFF5 */  bnez       $at, .L8000CD18
/* D944 8000CD44 A478FFFE */   sh        $t8, -0x2($v1)
/* D948 8000CD48 3C018008 */  lui        $at, %hi(D_80082908)
/* D94C 8000CD4C 0C003ACC */  jal        func_8000EB30
/* D950 8000CD50 AC202908 */   sw        $zero, %lo(D_80082908)($at)
/* D954 8000CD54 0C003B76 */  jal        func_8000EDD8
/* D958 8000CD58 00000000 */   nop
/* D95C 8000CD5C 3C108008 */  lui        $s0, %hi(D_80084ED8)
/* D960 8000CD60 8E104ED8 */  lw         $s0, %lo(D_80084ED8)($s0)
/* D964 8000CD64 2401FFFF */  addiu      $at, $zero, -0x1
/* D968 8000CD68 3C118008 */  lui        $s1, %hi(D_80084EDC)
/* D96C 8000CD6C 16010009 */  bne        $s0, $at, .L8000CD94
/* D970 8000CD70 26314EDC */   addiu     $s1, $s1, %lo(D_80084EDC)
/* D974 8000CD74 8E390000 */  lw         $t9, 0x0($s1)
/* D978 8000CD78 52190032 */  beql       $s0, $t9, .L8000CE44
/* D97C 8000CD7C AE300000 */   sw        $s0, 0x0($s1)
/* D980 8000CD80 0C009943 */  jal        func_8002650C
/* D984 8000CD84 00000000 */   nop
/* D988 8000CD88 3C108008 */  lui        $s0, %hi(D_80084ED8)
/* D98C 8000CD8C 1000002C */  b          .L8000CE40
/* D990 8000CD90 8E104ED8 */   lw        $s0, %lo(D_80084ED8)($s0)
.L8000CD94:
/* D994 8000CD94 3C018008 */  lui        $at, %hi(D_80084ED4)
/* D998 8000CD98 C4324ED4 */  lwc1       $f18, %lo(D_80084ED4)($at)
/* D99C 8000CD9C 3C014069 */  lui        $at, (0x40690000 >> 16)
/* D9A0 8000CDA0 44812800 */  mtc1       $at, $f5
/* D9A4 8000CDA4 44802000 */  mtc1       $zero, $f4
/* D9A8 8000CDA8 46009021 */  cvt.d.s    $f0, $f18
/* D9AC 8000CDAC 4620203C */  c.lt.d     $f4, $f0
/* D9B0 8000CDB0 00000000 */  nop
/* D9B4 8000CDB4 4500000A */  bc1f       .L8000CDE0
/* D9B8 8000CDB8 3C018007 */   lui       $at, %hi(D_800711F8)
/* D9BC 8000CDBC D42611F8 */  ldc1       $f6, %lo(D_800711F8)($at)
/* D9C0 8000CDC0 3C018007 */  lui        $at, %hi(D_80071200)
/* D9C4 8000CDC4 D42A1200 */  ldc1       $f10, %lo(D_80071200)($at)
/* D9C8 8000CDC8 46203201 */  sub.d      $f8, $f6, $f0
/* D9CC 8000CDCC 462A4402 */  mul.d      $f16, $f8, $f10
/* D9D0 8000CDD0 4620848D */  trunc.w.d  $f18, $f16
/* D9D4 8000CDD4 44169000 */  mfc1       $s6, $f18
/* D9D8 8000CDD8 10000003 */  b          .L8000CDE8
/* D9DC 8000CDDC 2AC10002 */   slti      $at, $s6, 0x2
.L8000CDE0:
/* D9E0 8000CDE0 241600FF */  addiu      $s6, $zero, 0xFF
/* D9E4 8000CDE4 2AC10002 */  slti       $at, $s6, 0x2
.L8000CDE8:
/* D9E8 8000CDE8 1420000B */  bnez       $at, .L8000CE18
/* D9EC 8000CDEC 00105080 */   sll       $t2, $s0, 2
/* D9F0 8000CDF0 3C048005 */  lui        $a0, %hi(D_8004C2EB)
/* D9F4 8000CDF4 008A2021 */  addu       $a0, $a0, $t2
/* D9F8 8000CDF8 8084C2EB */  lb         $a0, %lo(D_8004C2EB)($a0)
/* D9FC 8000CDFC 0C009A67 */  jal        func_8002699C
/* DA00 8000CE00 32C500FF */   andi      $a1, $s6, 0xFF
/* DA04 8000CE04 3C108008 */  lui        $s0, %hi(D_80084ED8)
/* DA08 8000CE08 3C118008 */  lui        $s1, %hi(D_80084EDC)
/* DA0C 8000CE0C 26314EDC */  addiu      $s1, $s1, %lo(D_80084EDC)
/* DA10 8000CE10 1000000B */  b          .L8000CE40
/* DA14 8000CE14 8E104ED8 */   lw        $s0, %lo(D_80084ED8)($s0)
.L8000CE18:
/* DA18 8000CE18 0C009943 */  jal        func_8002650C
/* DA1C 8000CE1C 00000000 */   nop
/* DA20 8000CE20 3C118008 */  lui        $s1, %hi(D_80084EDC)
/* DA24 8000CE24 26314EDC */  addiu      $s1, $s1, %lo(D_80084EDC)
/* DA28 8000CE28 240DFFFF */  addiu      $t5, $zero, -0x1
/* DA2C 8000CE2C AE2D0000 */  sw         $t5, 0x0($s1)
/* DA30 8000CE30 3C018008 */  lui        $at, %hi(D_80084ED8)
/* DA34 8000CE34 AC2D4ED8 */  sw         $t5, %lo(D_80084ED8)($at)
/* DA38 8000CE38 3C108008 */  lui        $s0, %hi(D_80084ED8)
/* DA3C 8000CE3C 8E104ED8 */  lw         $s0, %lo(D_80084ED8)($s0)
.L8000CE40:
/* DA40 8000CE40 AE300000 */  sw         $s0, 0x0($s1)
.L8000CE44:
/* DA44 8000CE44 8FBF007C */  lw         $ra, 0x7C($sp)
/* DA48 8000CE48 D7B40028 */  ldc1       $f20, 0x28($sp)
/* DA4C 8000CE4C D7B60030 */  ldc1       $f22, 0x30($sp)
/* DA50 8000CE50 D7B80038 */  ldc1       $f24, 0x38($sp)
/* DA54 8000CE54 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* DA58 8000CE58 D7BC0048 */  ldc1       $f28, 0x48($sp)
/* DA5C 8000CE5C D7BE0050 */  ldc1       $f30, 0x50($sp)
/* DA60 8000CE60 8FB00058 */  lw         $s0, 0x58($sp)
/* DA64 8000CE64 8FB1005C */  lw         $s1, 0x5C($sp)
/* DA68 8000CE68 8FB20060 */  lw         $s2, 0x60($sp)
/* DA6C 8000CE6C 8FB30064 */  lw         $s3, 0x64($sp)
/* DA70 8000CE70 8FB40068 */  lw         $s4, 0x68($sp)
/* DA74 8000CE74 8FB5006C */  lw         $s5, 0x6C($sp)
/* DA78 8000CE78 8FB60070 */  lw         $s6, 0x70($sp)
/* DA7C 8000CE7C 8FB70074 */  lw         $s7, 0x74($sp)
/* DA80 8000CE80 8FBE0078 */  lw         $fp, 0x78($sp)
/* DA84 8000CE84 03E00008 */  jr         $ra
/* DA88 8000CE88 27BD0080 */   addiu     $sp, $sp, 0x80
