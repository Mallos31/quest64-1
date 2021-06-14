.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80000530
/* 1130 80000530 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1134 80000534 AFB00018 */  sw         $s0, 0x18($sp)
/* 1138 80000538 00808025 */  or         $s0, $a0, $zero
/* 113C 8000053C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1140 80000540 AFA50034 */  sw         $a1, 0x34($sp)
/* 1144 80000544 240E0001 */  addiu      $t6, $zero, 1
/* 1148 80000548 240F0001 */  addiu      $t7, $zero, 1
/* 114C 8000054C 24180003 */  addiu      $t8, $zero, 3
/* 1150 80000550 AE00066C */  sw         $zero, 0x66c($s0)
/* 1154 80000554 AE000670 */  sw         $zero, 0x670($s0)
/* 1158 80000558 AE000674 */  sw         $zero, 0x674($s0)
/* 115C 8000055C AE000668 */  sw         $zero, 0x668($s0)
/* 1160 80000560 AE0E0678 */  sw         $t6, 0x678($s0)
/* 1164 80000564 A60F0000 */  sh         $t7, ($s0)
/* 1168 80000568 A6180002 */  sh         $t8, 2($s0)
/* 116C 8000056C 26040074 */  addiu      $a0, $s0, 0x74
/* 1170 80000570 AFA4002C */  sw         $a0, 0x2c($sp)
/* 1174 80000574 2605008C */  addiu      $a1, $s0, 0x8c
/* 1178 80000578 0C00CFC4 */  jal        osCreateMesgQueue
/* 117C 8000057C 24060008 */   addiu     $a2, $zero, 8
/* 1180 80000580 260400AC */  addiu      $a0, $s0, 0xac
/* 1184 80000584 AFA40028 */  sw         $a0, 0x28($sp)
/* 1188 80000588 260500C4 */  addiu      $a1, $s0, 0xc4
/* 118C 8000058C 0C00CFC4 */  jal        osCreateMesgQueue
/* 1190 80000590 24060008 */   addiu     $a2, $zero, 8
/* 1194 80000594 260400E4 */  addiu      $a0, $s0, 0xe4
/* 1198 80000598 AFA40024 */  sw         $a0, 0x24($sp)
/* 119C 8000059C 260500FC */  addiu      $a1, $s0, 0xfc
/* 11A0 800005A0 0C00CFC4 */  jal        osCreateMesgQueue
/* 11A4 800005A4 24060008 */   addiu     $a2, $zero, 8
/* 11A8 800005A8 2604003C */  addiu      $a0, $s0, 0x3c
/* 11AC 800005AC 26050054 */  addiu      $a1, $s0, 0x54
/* 11B0 800005B0 0C00CFC4 */  jal        osCreateMesgQueue
/* 11B4 800005B4 24060008 */   addiu     $a2, $zero, 8
/* 11B8 800005B8 26040004 */  addiu      $a0, $s0, 4
/* 11BC 800005BC 2605001C */  addiu      $a1, $s0, 0x1c
/* 11C0 800005C0 0C00CFC4 */  jal        osCreateMesgQueue
/* 11C4 800005C4 24060008 */   addiu     $a2, $zero, 8
/* 11C8 800005C8 2604011C */  addiu      $a0, $s0, 0x11c
/* 11CC 800005CC 26050134 */  addiu      $a1, $s0, 0x134
/* 11D0 800005D0 0C00CFC4 */  jal        osCreateMesgQueue
/* 11D4 800005D4 24060008 */   addiu     $a2, $zero, 8
/* 11D8 800005D8 8FA4002C */  lw         $a0, 0x2c($sp)
/* 11DC 800005DC 2405029A */  addiu      $a1, $zero, 0x29a
/* 11E0 800005E0 0C00CFD0 */  jal        osViSetEvent
/* 11E4 800005E4 93A60037 */   lbu       $a2, 0x37($sp)
/* 11E8 800005E8 24040004 */  addiu      $a0, $zero, 4
/* 11EC 800005EC 8FA50028 */  lw         $a1, 0x28($sp)
/* 11F0 800005F0 0C00CFEC */  jal        osSetEventMesg
/* 11F4 800005F4 2406029B */   addiu     $a2, $zero, 0x29b
/* 11F8 800005F8 24040009 */  addiu      $a0, $zero, 9
/* 11FC 800005FC 8FA50024 */  lw         $a1, 0x24($sp)
/* 1200 80000600 0C00CFEC */  jal        osSetEventMesg
/* 1204 80000604 2406029C */   addiu     $a2, $zero, 0x29c
/* 1208 80000608 2404000E */  addiu      $a0, $zero, 0xe
/* 120C 8000060C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 1210 80000610 0C00CFEC */  jal        osSetEventMesg
/* 1214 80000614 2406029D */   addiu     $a2, $zero, 0x29d
/* 1218 80000618 8FBF001C */  lw         $ra, 0x1c($sp)
/* 121C 8000061C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1220 80000620 27BD0030 */  addiu      $sp, $sp, 0x30
/* 1224 80000624 03E00008 */  jr         $ra
/* 1228 80000628 00000000 */   nop

glabel func_8000062C
/* 122C 8000062C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1230 80000630 AFB00020 */  sw         $s0, 0x20($sp)
/* 1234 80000634 00808025 */  or         $s0, $a0, $zero
/* 1238 80000638 AFBF0024 */  sw         $ra, 0x24($sp)
/* 123C 8000063C 3C0E8008 */  lui        $t6, %hi(D_800792D0)
/* 1240 80000640 25CE92D0 */  addiu      $t6, $t6, %lo(D_800792D0)
/* 1244 80000644 26040158 */  addiu      $a0, $s0, 0x158
/* 1248 80000648 3C068000 */  lui        $a2, %hi(func_80000710)
/* 124C 8000064C 240F0078 */  addiu      $t7, $zero, 0x78
/* 1250 80000650 AFAF0014 */  sw         $t7, 0x14($sp)
/* 1254 80000654 24C60710 */  addiu      $a2, $a2, %lo(func_80000710)
/* 1258 80000658 AFA4002C */  sw         $a0, 0x2c($sp)
/* 125C 8000065C AFAE0010 */  sw         $t6, 0x10($sp)
/* 1260 80000660 24050013 */  addiu      $a1, $zero, 0x13
/* 1264 80000664 0C00CEB8 */  jal        osCreateThread
/* 1268 80000668 02003825 */   or        $a3, $s0, $zero
/* 126C 8000066C 0C00CF0C */  jal        osStartThread
/* 1270 80000670 8FA4002C */   lw        $a0, 0x2c($sp)
/* 1274 80000674 3C188008 */  lui        $t8, %hi(D_8007A2D0)
/* 1278 80000678 2718A2D0 */  addiu      $t8, $t8, %lo(D_8007A2D0)
/* 127C 8000067C 26040308 */  addiu      $a0, $s0, 0x308
/* 1280 80000680 3C068000 */  lui        $a2, %hi(func_80000900)
/* 1284 80000684 2419006E */  addiu      $t9, $zero, 0x6e
/* 1288 80000688 AFB90014 */  sw         $t9, 0x14($sp)
/* 128C 8000068C 24C60900 */  addiu      $a2, $a2, %lo(func_80000900)
/* 1290 80000690 AFA4002C */  sw         $a0, 0x2c($sp)
/* 1294 80000694 AFB80010 */  sw         $t8, 0x10($sp)
/* 1298 80000698 24050012 */  addiu      $a1, $zero, 0x12
/* 129C 8000069C 0C00CEB8 */  jal        osCreateThread
/* 12A0 800006A0 02003825 */   or        $a3, $s0, $zero
/* 12A4 800006A4 0C00CF0C */  jal        osStartThread
/* 12A8 800006A8 8FA4002C */   lw        $a0, 0x2c($sp)
/* 12AC 800006AC 3C088008 */  lui        $t0, %hi(D_8007B2D0)
/* 12B0 800006B0 2508B2D0 */  addiu      $t0, $t0, %lo(D_8007B2D0)
/* 12B4 800006B4 260404B8 */  addiu      $a0, $s0, 0x4b8
/* 12B8 800006B8 3C068000 */  lui        $a2, %hi(func_80000A80)
/* 12BC 800006BC 24090064 */  addiu      $t1, $zero, 0x64
/* 12C0 800006C0 AFA90014 */  sw         $t1, 0x14($sp)
/* 12C4 800006C4 24C60A80 */  addiu      $a2, $a2, %lo(func_80000A80)
/* 12C8 800006C8 AFA4002C */  sw         $a0, 0x2c($sp)
/* 12CC 800006CC AFA80010 */  sw         $t0, 0x10($sp)
/* 12D0 800006D0 24050011 */  addiu      $a1, $zero, 0x11
/* 12D4 800006D4 0C00CEB8 */  jal        osCreateThread
/* 12D8 800006D8 02003825 */   or        $a3, $s0, $zero
/* 12DC 800006DC 0C00CF0C */  jal        osStartThread
/* 12E0 800006E0 8FA4002C */   lw        $a0, 0x2c($sp)
/* 12E4 800006E4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12E8 800006E8 8FB00020 */  lw         $s0, 0x20($sp)
/* 12EC 800006EC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 12F0 800006F0 03E00008 */  jr         $ra
/* 12F4 800006F4 00000000 */   nop

glabel Add_Four
/* 12F8 800006F8 24820004 */  addiu      $v0, $a0, 4
/* 12FC 800006FC 03E00008 */  jr         $ra
/* 1300 80000700 00000000 */   nop

glabel Add_0x3C
/* 1304 80000704 2482003C */  addiu      $v0, $a0, 0x3c
/* 1308 80000708 03E00008 */  jr         $ra
/* 130C 8000070C 00000000 */   nop

glabel func_80000710
/* 1310 80000710 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1314 80000714 AFB00014 */  sw         $s0, 0x14($sp)
/* 1318 80000718 00808025 */  or         $s0, $a0, $zero
/* 131C 8000071C AFBF002C */  sw         $ra, 0x2c($sp)
/* 1320 80000720 AFB50028 */  sw         $s5, 0x28($sp)
/* 1324 80000724 AFB40024 */  sw         $s4, 0x24($sp)
/* 1328 80000728 AFB30020 */  sw         $s3, 0x20($sp)
/* 132C 8000072C AFB2001C */  sw         $s2, 0x1c($sp)
/* 1330 80000730 AFB10018 */  sw         $s1, 0x18($sp)
/* 1334 80000734 3C118008 */  lui        $s1, %hi(D_8007B2D0)
/* 1338 80000738 AFA0003C */  sw         $zero, 0x3c($sp)
/* 133C 8000073C 2631B2D0 */  addiu      $s1, $s1, %lo(D_8007B2D0)
/* 1340 80000740 26150074 */  addiu      $s5, $s0, 0x74
/* 1344 80000744 2414029D */  addiu      $s4, $zero, 0x29d
/* 1348 80000748 2413029A */  addiu      $s3, $zero, 0x29a
/* 134C 8000074C 27B2003C */  addiu      $s2, $sp, 0x3c
/* 1350 80000750 02A02025 */  or         $a0, $s5, $zero
.L80000754:
/* 1354 80000754 02402825 */  or         $a1, $s2, $zero
/* 1358 80000758 0C00D008 */  jal        osRecvMesg
/* 135C 8000075C 24060001 */   addiu     $a2, $zero, 1
/* 1360 80000760 962E0000 */  lhu        $t6, ($s1)
/* 1364 80000764 8FB8003C */  lw         $t8, 0x3c($sp)
/* 1368 80000768 02002025 */  or         $a0, $s0, $zero
/* 136C 8000076C 25CF0001 */  addiu      $t7, $t6, 1
/* 1370 80000770 13130005 */  beq        $t8, $s3, .L80000788
/* 1374 80000774 A62F0000 */   sh        $t7, ($s1)
/* 1378 80000778 13140007 */  beq        $t8, $s4, .L80000798
/* 137C 8000077C 02002025 */   or        $a0, $s0, $zero
/* 1380 80000780 1000FFF4 */  b          .L80000754
/* 1384 80000784 02A02025 */   or        $a0, $s5, $zero
.L80000788:
/* 1388 80000788 0C00022C */  jal        func_800008B0
/* 138C 8000078C 02002825 */   or        $a1, $s0, $zero
/* 1390 80000790 1000FFF0 */  b          .L80000754
/* 1394 80000794 02A02025 */   or        $a0, $s5, $zero
.L80000798:
/* 1398 80000798 0C00022C */  jal        func_800008B0
/* 139C 8000079C 26050002 */   addiu     $a1, $s0, 2
/* 13A0 800007A0 1000FFEC */  b          .L80000754
/* 13A4 800007A4 02A02025 */   or        $a0, $s5, $zero
/* 13A8 800007A8 00000000 */  nop
/* 13AC 800007AC 00000000 */  nop
/* 13B0 800007B0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 13B4 800007B4 8FB00014 */  lw         $s0, 0x14($sp)
/* 13B8 800007B8 8FB10018 */  lw         $s1, 0x18($sp)
/* 13BC 800007BC 8FB2001C */  lw         $s2, 0x1c($sp)
/* 13C0 800007C0 8FB30020 */  lw         $s3, 0x20($sp)
/* 13C4 800007C4 8FB40024 */  lw         $s4, 0x24($sp)
/* 13C8 800007C8 8FB50028 */  lw         $s5, 0x28($sp)
/* 13CC 800007CC 03E00008 */  jr         $ra
/* 13D0 800007D0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel osScAddClient
/* 13D4 800007D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D8 800007D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13DC 800007DC AFA40018 */  sw         $a0, 0x18($sp)
/* 13E0 800007E0 AFA60020 */  sw         $a2, 0x20($sp)
/* 13E4 800007E4 24040001 */  addiu      $a0, $zero, 1
/* 13E8 800007E8 0C00D058 */  jal        osSetIntMask
/* 13EC 800007EC AFA5001C */   sw        $a1, 0x1c($sp)
/* 13F0 800007F0 8FA5001C */  lw         $a1, 0x1c($sp)
/* 13F4 800007F4 8FAE0020 */  lw         $t6, 0x20($sp)
/* 13F8 800007F8 8FA30018 */  lw         $v1, 0x18($sp)
/* 13FC 800007FC 00402025 */  or         $a0, $v0, $zero
/* 1400 80000800 ACAE0004 */  sw         $t6, 4($a1)
/* 1404 80000804 8C6F0668 */  lw         $t7, 0x668($v1)
/* 1408 80000808 ACAF0000 */  sw         $t7, ($a1)
/* 140C 8000080C 0C00D058 */  jal        osSetIntMask
/* 1410 80000810 AC650668 */   sw        $a1, 0x668($v1)
/* 1414 80000814 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1418 80000818 27BD0018 */  addiu      $sp, $sp, 0x18
/* 141C 8000081C 03E00008 */  jr         $ra
/* 1420 80000820 00000000 */   nop

glabel func_80000824
/* 1424 80000824 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1428 80000828 AFBF0014 */  sw         $ra, 0x14($sp)
/* 142C 8000082C AFA40020 */  sw         $a0, 0x20($sp)
/* 1430 80000830 8FAE0020 */  lw         $t6, 0x20($sp)
/* 1434 80000834 24040001 */  addiu      $a0, $zero, 1
/* 1438 80000838 8DC30668 */  lw         $v1, 0x668($t6)
/* 143C 8000083C AFA00018 */  sw         $zero, 0x18($sp)
/* 1440 80000840 AFA50024 */  sw         $a1, 0x24($sp)
/* 1444 80000844 0C00D058 */  jal        osSetIntMask
/* 1448 80000848 AFA3001C */   sw        $v1, 0x1c($sp)
/* 144C 8000084C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 1450 80000850 8FA50024 */  lw         $a1, 0x24($sp)
/* 1454 80000854 8FA60018 */  lw         $a2, 0x18($sp)
/* 1458 80000858 1060000F */  beqz       $v1, .L80000898
/* 145C 8000085C 00402025 */   or        $a0, $v0, $zero
.L80000860:
/* 1460 80000860 5465000A */  bnel       $v1, $a1, .L8000088C
/* 1464 80000864 00603025 */   or        $a2, $v1, $zero
/* 1468 80000868 10C00004 */  beqz       $a2, .L8000087C
/* 146C 8000086C 8FB90020 */   lw        $t9, 0x20($sp)
/* 1470 80000870 8CAF0000 */  lw         $t7, ($a1)
/* 1474 80000874 10000008 */  b          .L80000898
/* 1478 80000878 ACCF0000 */   sw        $t7, ($a2)
.L8000087C:
/* 147C 8000087C 8CB80000 */  lw         $t8, ($a1)
/* 1480 80000880 10000005 */  b          .L80000898
/* 1484 80000884 AF380668 */   sw        $t8, 0x668($t9)
/* 1488 80000888 00603025 */  or         $a2, $v1, $zero
.L8000088C:
/* 148C 8000088C 8C630000 */  lw         $v1, ($v1)
/* 1490 80000890 1460FFF3 */  bnez       $v1, .L80000860
/* 1494 80000894 00000000 */   nop
.L80000898:
/* 1498 80000898 0C00D058 */  jal        osSetIntMask
/* 149C 8000089C 00000000 */   nop
/* 14A0 800008A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 14A4 800008A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 14A8 800008A8 03E00008 */  jr         $ra
/* 14AC 800008AC 00000000 */   nop

glabel func_800008B0
/* 14B0 800008B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 14B4 800008B4 AFB10018 */  sw         $s1, 0x18($sp)
/* 14B8 800008B8 00A08825 */  or         $s1, $a1, $zero
/* 14BC 800008BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 14C0 800008C0 AFB00014 */  sw         $s0, 0x14($sp)
/* 14C4 800008C4 8C900668 */  lw         $s0, 0x668($a0)
/* 14C8 800008C8 52000009 */  beql       $s0, $zero, .L800008F0
/* 14CC 800008CC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 14D0 800008D0 8E040004 */  lw         $a0, 4($s0)
.L800008D4:
/* 14D4 800008D4 02202825 */  or         $a1, $s1, $zero
/* 14D8 800008D8 0C00D080 */  jal        osSendMesg
/* 14DC 800008DC 00003025 */   or        $a2, $zero, $zero
/* 14E0 800008E0 8E100000 */  lw         $s0, ($s0)
/* 14E4 800008E4 5600FFFB */  bnel       $s0, $zero, .L800008D4
/* 14E8 800008E8 8E040004 */   lw        $a0, 4($s0)
/* 14EC 800008EC 8FBF001C */  lw         $ra, 0x1c($sp)
.L800008F0:
/* 14F0 800008F0 8FB00014 */  lw         $s0, 0x14($sp)
/* 14F4 800008F4 8FB10018 */  lw         $s1, 0x18($sp)
/* 14F8 800008F8 03E00008 */  jr         $ra
/* 14FC 800008FC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80000900
/* 1500 80000900 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1504 80000904 AFB20020 */  sw         $s2, 0x20($sp)
/* 1508 80000908 00809025 */  or         $s2, $a0, $zero
/* 150C 8000090C AFBF003C */  sw         $ra, 0x3c($sp)
/* 1510 80000910 AFBE0038 */  sw         $fp, 0x38($sp)
/* 1514 80000914 AFB70034 */  sw         $s7, 0x34($sp)
/* 1518 80000918 AFB60030 */  sw         $s6, 0x30($sp)
/* 151C 8000091C AFB5002C */  sw         $s5, 0x2c($sp)
/* 1520 80000920 AFB40028 */  sw         $s4, 0x28($sp)
/* 1524 80000924 AFB30024 */  sw         $s3, 0x24($sp)
/* 1528 80000928 AFB1001C */  sw         $s1, 0x1c($sp)
/* 152C 8000092C AFB00018 */  sw         $s0, 0x18($sp)
/* 1530 80000930 AFA00054 */  sw         $zero, 0x54($sp)
/* 1534 80000934 AFA00050 */  sw         $zero, 0x50($sp)
/* 1538 80000938 26550004 */  addiu      $s5, $s2, 4
/* 153C 8000093C 00008825 */  or         $s1, $zero, $zero
/* 1540 80000940 241E0002 */  addiu      $fp, $zero, 2
/* 1544 80000944 24170001 */  addiu      $s7, $zero, 1
/* 1548 80000948 27B60050 */  addiu      $s6, $sp, 0x50
/* 154C 8000094C 27B40054 */  addiu      $s4, $sp, 0x54
/* 1550 80000950 02A02025 */  or         $a0, $s5, $zero
.L80000954:
/* 1554 80000954 02C02825 */  or         $a1, $s6, $zero
/* 1558 80000958 0C00D008 */  jal        osRecvMesg
/* 155C 8000095C 24060001 */   addiu     $a2, $zero, 1
/* 1560 80000960 0C00D0D4 */  jal        osWritebackDCacheAll
/* 1564 80000964 00000000 */   nop
/* 1568 80000968 8E53066C */  lw         $s3, 0x66c($s2)
/* 156C 8000096C 5260000E */  beql       $s3, $zero, .L800009A8
/* 1570 80000970 8FAE0050 */   lw        $t6, 0x50($sp)
/* 1574 80000974 0C00D0E0 */  jal        osSpTaskYield
/* 1578 80000978 265000AC */   addiu     $s0, $s2, 0xac
/* 157C 8000097C 02002025 */  or         $a0, $s0, $zero
/* 1580 80000980 02802825 */  or         $a1, $s4, $zero
/* 1584 80000984 0C00D008 */  jal        osRecvMesg
/* 1588 80000988 24060001 */   addiu     $a2, $zero, 1
/* 158C 8000098C 0C00D0E8 */  jal        osSpTaskYielded
/* 1590 80000990 26640010 */   addiu     $a0, $s3, 0x10
/* 1594 80000994 10400003 */  beqz       $v0, .L800009A4
/* 1598 80000998 03C08825 */   or        $s1, $fp, $zero
/* 159C 8000099C 10000001 */  b          .L800009A4
/* 15A0 800009A0 02E08825 */   or        $s1, $s7, $zero
.L800009A4:
/* 15A4 800009A4 8FAE0050 */  lw         $t6, 0x50($sp)
.L800009A8:
/* 15A8 800009A8 265000AC */  addiu      $s0, $s2, 0xac
/* 15AC 800009AC AE4E0670 */  sw         $t6, 0x670($s2)
/* 15B0 800009B0 8FA40050 */  lw         $a0, 0x50($sp)
/* 15B4 800009B4 0C00D14B */  jal        osSpTaskLoad
/* 15B8 800009B8 24840010 */   addiu     $a0, $a0, 0x10
/* 15BC 800009BC 8FA40050 */  lw         $a0, 0x50($sp)
/* 15C0 800009C0 0C00D1A5 */  jal        osSpTaskStartGo
/* 15C4 800009C4 24840010 */   addiu     $a0, $a0, 0x10
/* 15C8 800009C8 02002025 */  or         $a0, $s0, $zero
/* 15CC 800009CC 02802825 */  or         $a1, $s4, $zero
/* 15D0 800009D0 0C00D008 */  jal        osRecvMesg
/* 15D4 800009D4 24060001 */   addiu     $a2, $zero, 1
/* 15D8 800009D8 8E4F0674 */  lw         $t7, 0x674($s2)
/* 15DC 800009DC AE400670 */  sw         $zero, 0x670($s2)
/* 15E0 800009E0 2644011C */  addiu      $a0, $s2, 0x11c
/* 15E4 800009E4 11E00003 */  beqz       $t7, .L800009F4
/* 15E8 800009E8 02802825 */   or        $a1, $s4, $zero
/* 15EC 800009EC 0C00D080 */  jal        osSendMesg
/* 15F0 800009F0 24060001 */   addiu     $a2, $zero, 1
.L800009F4:
/* 15F4 800009F4 16370008 */  bne        $s1, $s7, .L80000A18
/* 15F8 800009F8 00000000 */   nop
/* 15FC 800009FC 26700010 */  addiu      $s0, $s3, 0x10
/* 1600 80000A00 0C00D14B */  jal        osSpTaskLoad
/* 1604 80000A04 02002025 */   or        $a0, $s0, $zero
/* 1608 80000A08 0C00D1A5 */  jal        osSpTaskStartGo
/* 160C 80000A0C 02002025 */   or        $a0, $s0, $zero
/* 1610 80000A10 10000007 */  b          .L80000A30
/* 1614 80000A14 8FB80050 */   lw        $t8, 0x50($sp)
.L80000A18:
/* 1618 80000A18 163E0004 */  bne        $s1, $fp, .L80000A2C
/* 161C 80000A1C 02002025 */   or        $a0, $s0, $zero
/* 1620 80000A20 02802825 */  or         $a1, $s4, $zero
/* 1624 80000A24 0C00D080 */  jal        osSendMesg
/* 1628 80000A28 24060001 */   addiu     $a2, $zero, 1
.L80000A2C:
/* 162C 80000A2C 8FB80050 */  lw         $t8, 0x50($sp)
.L80000A30:
/* 1630 80000A30 24060001 */  addiu      $a2, $zero, 1
/* 1634 80000A34 00008825 */  or         $s1, $zero, $zero
/* 1638 80000A38 8F040050 */  lw         $a0, 0x50($t8)
/* 163C 80000A3C 0C00D080 */  jal        osSendMesg
/* 1640 80000A40 8F050054 */   lw        $a1, 0x54($t8)
/* 1644 80000A44 1000FFC3 */  b          .L80000954
/* 1648 80000A48 02A02025 */   or        $a0, $s5, $zero
/* 164C 80000A4C 00000000 */  nop
/* 1650 80000A50 8FBF003C */  lw         $ra, 0x3c($sp)
/* 1654 80000A54 8FB00018 */  lw         $s0, 0x18($sp)
/* 1658 80000A58 8FB1001C */  lw         $s1, 0x1c($sp)
/* 165C 80000A5C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1660 80000A60 8FB30024 */  lw         $s3, 0x24($sp)
/* 1664 80000A64 8FB40028 */  lw         $s4, 0x28($sp)
/* 1668 80000A68 8FB5002C */  lw         $s5, 0x2c($sp)
/* 166C 80000A6C 8FB60030 */  lw         $s6, 0x30($sp)
/* 1670 80000A70 8FB70034 */  lw         $s7, 0x34($sp)
/* 1674 80000A74 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1678 80000A78 03E00008 */  jr         $ra
/* 167C 80000A7C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_80000A80
/* 1680 80000A80 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1684 80000A84 AFB00014 */  sw         $s0, 0x14($sp)
/* 1688 80000A88 00808025 */  or         $s0, $a0, $zero
/* 168C 80000A8C AFBF002C */  sw         $ra, 0x2c($sp)
/* 1690 80000A90 AFB50028 */  sw         $s5, 0x28($sp)
/* 1694 80000A94 AFB40024 */  sw         $s4, 0x24($sp)
/* 1698 80000A98 AFB30020 */  sw         $s3, 0x20($sp)
/* 169C 80000A9C AFB2001C */  sw         $s2, 0x1c($sp)
/* 16A0 80000AA0 AFB10018 */  sw         $s1, 0x18($sp)
/* 16A4 80000AA4 AFA00044 */  sw         $zero, 0x44($sp)
/* 16A8 80000AA8 2615003C */  addiu      $s5, $s0, 0x3c
/* 16AC 80000AAC 27B40040 */  addiu      $s4, $sp, 0x40
/* 16B0 80000AB0 27B30044 */  addiu      $s3, $sp, 0x44
/* 16B4 80000AB4 02A02025 */  or         $a0, $s5, $zero
.L80000AB8:
/* 16B8 80000AB8 02802825 */  or         $a1, $s4, $zero
/* 16BC 80000ABC 0C00D008 */  jal        osRecvMesg
/* 16C0 80000AC0 24060001 */   addiu     $a2, $zero, 1
/* 16C4 80000AC4 02002025 */  or         $a0, $s0, $zero
/* 16C8 80000AC8 0C0002ED */  jal        func_80000BB4
/* 16CC 80000ACC 8FA50040 */   lw        $a1, 0x40($sp)
/* 16D0 80000AD0 8E0E0670 */  lw         $t6, 0x670($s0)
/* 16D4 80000AD4 8FAF0040 */  lw         $t7, 0x40($sp)
/* 16D8 80000AD8 2604011C */  addiu      $a0, $s0, 0x11c
/* 16DC 80000ADC 11C00005 */  beqz       $t6, .L80000AF4
/* 16E0 80000AE0 02602825 */   or        $a1, $s3, $zero
/* 16E4 80000AE4 AE0F0674 */  sw         $t7, 0x674($s0)
/* 16E8 80000AE8 0C00D008 */  jal        osRecvMesg
/* 16EC 80000AEC 24060001 */   addiu     $a2, $zero, 1
/* 16F0 80000AF0 AE000674 */  sw         $zero, 0x674($s0)
.L80000AF4:
/* 16F4 80000AF4 8FB80040 */  lw         $t8, 0x40($sp)
/* 16F8 80000AF8 261100AC */  addiu      $s1, $s0, 0xac
/* 16FC 80000AFC 261200E4 */  addiu      $s2, $s0, 0xe4
/* 1700 80000B00 AE18066C */  sw         $t8, 0x66c($s0)
/* 1704 80000B04 8FA40040 */  lw         $a0, 0x40($sp)
/* 1708 80000B08 0C00D14B */  jal        osSpTaskLoad
/* 170C 80000B0C 24840010 */   addiu     $a0, $a0, 0x10
/* 1710 80000B10 8FA40040 */  lw         $a0, 0x40($sp)
/* 1714 80000B14 0C00D1A5 */  jal        osSpTaskStartGo
/* 1718 80000B18 24840010 */   addiu     $a0, $a0, 0x10
/* 171C 80000B1C 02202025 */  or         $a0, $s1, $zero
/* 1720 80000B20 02602825 */  or         $a1, $s3, $zero
/* 1724 80000B24 0C00D008 */  jal        osRecvMesg
/* 1728 80000B28 24060001 */   addiu     $a2, $zero, 1
/* 172C 80000B2C AE00066C */  sw         $zero, 0x66c($s0)
/* 1730 80000B30 02402025 */  or         $a0, $s2, $zero
/* 1734 80000B34 02602825 */  or         $a1, $s3, $zero
/* 1738 80000B38 0C00D008 */  jal        osRecvMesg
/* 173C 80000B3C 24060001 */   addiu     $a2, $zero, 1
/* 1740 80000B40 8E190678 */  lw         $t9, 0x678($s0)
/* 1744 80000B44 53200005 */  beql       $t9, $zero, .L80000B5C
/* 1748 80000B48 8FA80040 */   lw        $t0, 0x40($sp)
/* 174C 80000B4C 0C00D1B8 */  jal        osViRepeatLine
/* 1750 80000B50 00002025 */   or        $a0, $zero, $zero
/* 1754 80000B54 AE000678 */  sw         $zero, 0x678($s0)
/* 1758 80000B58 8FA80040 */  lw         $t0, 0x40($sp)
.L80000B5C:
/* 175C 80000B5C 8D090008 */  lw         $t1, 8($t0)
/* 1760 80000B60 312A0040 */  andi       $t2, $t1, 0x40
/* 1764 80000B64 51400004 */  beql       $t2, $zero, .L80000B78
/* 1768 80000B68 8FAB0040 */   lw        $t3, 0x40($sp)
/* 176C 80000B6C 0C00D1D4 */  jal        osViSwapBuffer
/* 1770 80000B70 8D04000C */   lw        $a0, 0xc($t0)
/* 1774 80000B74 8FAB0040 */  lw         $t3, 0x40($sp)
.L80000B78:
/* 1778 80000B78 24060001 */  addiu      $a2, $zero, 1
/* 177C 80000B7C 8D640050 */  lw         $a0, 0x50($t3)
/* 1780 80000B80 0C00D080 */  jal        osSendMesg
/* 1784 80000B84 8D650054 */   lw        $a1, 0x54($t3)
/* 1788 80000B88 1000FFCB */  b          .L80000AB8
/* 178C 80000B8C 02A02025 */   or        $a0, $s5, $zero
/* 1790 80000B90 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1794 80000B94 8FB00014 */  lw         $s0, 0x14($sp)
/* 1798 80000B98 8FB10018 */  lw         $s1, 0x18($sp)
/* 179C 80000B9C 8FB2001C */  lw         $s2, 0x1c($sp)
/* 17A0 80000BA0 8FB30020 */  lw         $s3, 0x20($sp)
/* 17A4 80000BA4 8FB40024 */  lw         $s4, 0x24($sp)
/* 17A8 80000BA8 8FB50028 */  lw         $s5, 0x28($sp)
/* 17AC 80000BAC 03E00008 */  jr         $ra
/* 17B0 80000BB0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80000BB4
/* 17B4 80000BB4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 17B8 80000BB8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17BC 80000BBC 00808825 */  or         $s1, $a0, $zero
/* 17C0 80000BC0 AFBF002C */  sw         $ra, 0x2c($sp)
/* 17C4 80000BC4 AFB40028 */  sw         $s4, 0x28($sp)
/* 17C8 80000BC8 AFB30024 */  sw         $s3, 0x24($sp)
/* 17CC 80000BCC AFB20020 */  sw         $s2, 0x20($sp)
/* 17D0 80000BD0 AFB00018 */  sw         $s0, 0x18($sp)
/* 17D4 80000BD4 AFA00044 */  sw         $zero, 0x44($sp)
/* 17D8 80000BD8 0C00D1E8 */  jal        osViGetCurrentFramebuffer
/* 17DC 80000BDC 8CB4000C */   lw        $s4, 0xc($a1)
/* 17E0 80000BE0 14540012 */  bne        $v0, $s4, .L80000C2C
/* 17E4 80000BE4 2632011C */   addiu     $s2, $s1, 0x11c
/* 17E8 80000BE8 27B30044 */  addiu      $s3, $sp, 0x44
/* 17EC 80000BEC 27B0003C */  addiu      $s0, $sp, 0x3c
/* 17F0 80000BF0 02202025 */  or         $a0, $s1, $zero
.L80000BF4:
/* 17F4 80000BF4 02002825 */  or         $a1, $s0, $zero
/* 17F8 80000BF8 0C0001F5 */  jal        osScAddClient
/* 17FC 80000BFC 02403025 */   or        $a2, $s2, $zero
/* 1800 80000C00 02402025 */  or         $a0, $s2, $zero
/* 1804 80000C04 02602825 */  or         $a1, $s3, $zero
/* 1808 80000C08 0C00D008 */  jal        osRecvMesg
/* 180C 80000C0C 24060001 */   addiu     $a2, $zero, 1
/* 1810 80000C10 02202025 */  or         $a0, $s1, $zero
/* 1814 80000C14 0C000209 */  jal        func_80000824
/* 1818 80000C18 02002825 */   or        $a1, $s0, $zero
/* 181C 80000C1C 0C00D1E8 */  jal        osViGetCurrentFramebuffer
/* 1820 80000C20 00000000 */   nop
/* 1824 80000C24 5054FFF3 */  beql       $v0, $s4, .L80000BF4
/* 1828 80000C28 02202025 */   or        $a0, $s1, $zero
.L80000C2C:
/* 182C 80000C2C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1830 80000C30 8FB00018 */  lw         $s0, 0x18($sp)
/* 1834 80000C34 8FB1001C */  lw         $s1, 0x1c($sp)
/* 1838 80000C38 8FB20020 */  lw         $s2, 0x20($sp)
/* 183C 80000C3C 8FB30024 */  lw         $s3, 0x24($sp)
/* 1840 80000C40 8FB40028 */  lw         $s4, 0x28($sp)
/* 1844 80000C44 03E00008 */  jr         $ra
/* 1848 80000C48 27BD0048 */   addiu     $sp, $sp, 0x48
/* 184C 80000C4C 00000000 */  nop
