glabel setLightingRGB
/* 11164 80010564 3C088008 */  lui        $t0, %hi(someLightR)
/* 11168 80010568 25085B68 */  addiu      $t0, $t0, %lo(someLightR)
/* 1116C 8001056C 00803825 */  or         $a3, $a0, $zero
/* 11170 80010570 8CA20004 */  lw         $v0, 4($a1)
/* 11174 80010574 24010001 */  addiu      $at, $zero, 1
/* 11178 80010578 8CA30000 */  lw         $v1, ($a1)
/* 1117C 8001057C 54410025 */  bnel       $v0, $at, .L80010614
/* 11180 80010580 8C650000 */   lw        $a1, ($v1)
/* 11184 80010584 8C610004 */  lw         $at, 4($v1)
/* 11188 80010588 3C068008 */  lui        $a2, %hi(groundLightR)
/* 1118C 8001058C 24C65B74 */  addiu      $a2, $a2, %lo(groundLightR)
/* 11190 80010590 AD010000 */  sw         $at, ($t0)
/* 11194 80010594 8C6F0008 */  lw         $t7, 8($v1)
/* 11198 80010598 24620028 */  addiu      $v0, $v1, 0x28
/* 1119C 8001059C 24C60018 */  addiu      $a2, $a2, 0x18
/* 111A0 800105A0 AD0F0004 */  sw         $t7, 4($t0)
/* 111A4 800105A4 8C61000C */  lw         $at, 0xc($v1)
/* 111A8 800105A8 AD010008 */  sw         $at, 8($t0)
/* 111AC 800105AC 8C610010 */  lw         $at, 0x10($v1)
/* 111B0 800105B0 ACC1FFE8 */  sw         $at, -0x18($a2)
/* 111B4 800105B4 8C790014 */  lw         $t9, 0x14($v1)
/* 111B8 800105B8 ACD9FFEC */  sw         $t9, -0x14($a2)
/* 111BC 800105BC 8C610018 */  lw         $at, 0x18($v1)
/* 111C0 800105C0 3C198008 */  lui        $t9, %hi(D_80085BC8)
/* 111C4 800105C4 27395BC8 */  addiu      $t9, $t9, %lo(D_80085BC8)
/* 111C8 800105C8 ACC1FFF0 */  sw         $at, -0x10($a2)
/* 111CC 800105CC 8C61001C */  lw         $at, 0x1c($v1)
/* 111D0 800105D0 ACC1FFF4 */  sw         $at, -0xc($a2)
/* 111D4 800105D4 8C6E0020 */  lw         $t6, 0x20($v1)
/* 111D8 800105D8 ACCEFFF8 */  sw         $t6, -8($a2)
/* 111DC 800105DC 8C610024 */  lw         $at, 0x24($v1)
/* 111E0 800105E0 ACC1FFFC */  sw         $at, -4($a2)
/* 111E4 800105E4 8C410000 */  lw         $at, ($v0)
/* 111E8 800105E8 ACC10000 */  sw         $at, ($a2)
/* 111EC 800105EC 8C580004 */  lw         $t8, 4($v0)
/* 111F0 800105F0 ACD80004 */  sw         $t8, 4($a2)
/* 111F4 800105F4 8C410008 */  lw         $at, 8($v0)
/* 111F8 800105F8 ACC10008 */  sw         $at, 8($a2)
/* 111FC 800105FC 8C610034 */  lw         $at, 0x34($v1)
/* 11200 80010600 AF210000 */  sw         $at, ($t9)
/* 11204 80010604 8C6E0038 */  lw         $t6, 0x38($v1)
/* 11208 80010608 03E00008 */  jr         $ra
/* 1120C 8001060C AF2E0004 */   sw        $t6, 4($t9)
/* 11210 80010610 8C650000 */  lw         $a1, ($v1)
.L80010614:
/* 11214 80010614 00E5082A */  slt        $at, $a3, $a1
/* 11218 80010618 54200007 */  bnel       $at, $zero, .L80010638
/* 1121C 8001061C 8C66FFC4 */   lw        $a2, -0x3c($v1)
/* 11220 80010620 8C65003C */  lw         $a1, 0x3c($v1)
.L80010624:
/* 11224 80010624 2463003C */  addiu      $v1, $v1, 0x3c
/* 11228 80010628 00E5082A */  slt        $at, $a3, $a1
/* 1122C 8001062C 5020FFFD */  beql       $at, $zero, .L80010624
/* 11230 80010630 8C65003C */   lw        $a1, 0x3c($v1)
/* 11234 80010634 8C66FFC4 */  lw         $a2, -0x3c($v1)
.L80010638:
/* 11238 80010638 246BFFC8 */  addiu      $t3, $v1, -0x38
/* 1123C 8001063C 8D6F0000 */  lw         $t7, ($t3)
/* 11240 80010640 00A64023 */  subu       $t0, $a1, $a2
/* 11244 80010644 00E64823 */  subu       $t1, $a3, $a2
/* 11248 80010648 01095023 */  subu       $t2, $t0, $t1
/* 1124C 8001064C 01EA0019 */  multu      $t7, $t2
/* 11250 80010650 24640004 */  addiu      $a0, $v1, 4
/* 11254 80010654 8C8D0000 */  lw         $t5, ($a0)
/* 11258 80010658 01601025 */  or         $v0, $t3, $zero
/* 1125C 8001065C 01601025 */  or         $v0, $t3, $zero
/* 11260 80010660 00806025 */  or         $t4, $a0, $zero
/* 11264 80010664 00806025 */  or         $t4, $a0, $zero
/* 11268 80010668 3C068008 */  lui        $a2, %hi(groundLightR)
/* 1126C 8001066C 24C65B74 */  addiu      $a2, $a2, %lo(groundLightR)
/* 11270 80010670 24420024 */  addiu      $v0, $v0, 0x24
/* 11274 80010674 0000C012 */  mflo       $t8
/* 11278 80010678 24C60018 */  addiu      $a2, $a2, 0x18
/* 1127C 8001067C 258C0024 */  addiu      $t4, $t4, 0x24
/* 11280 80010680 01A90019 */  multu      $t5, $t1
/* 11284 80010684 0000C812 */  mflo       $t9
/* 11288 80010688 03197021 */  addu       $t6, $t8, $t9
/* 1128C 8001068C 00000000 */  nop
/* 11290 80010690 01C8001A */  div        $zero, $t6, $t0
/* 11294 80010694 15000002 */  bnez       $t0, .L800106A0
/* 11298 80010698 00000000 */   nop
/* 1129C 8001069C 0007000D */  break      7
.L800106A0:
/* 112A0 800106A0 2401FFFF */   addiu     $at, $zero, -1
/* 112A4 800106A4 15010004 */  bne        $t0, $at, .L800106B8
/* 112A8 800106A8 3C018000 */   lui       $at, 0x8000
/* 112AC 800106AC 15C10002 */  bne        $t6, $at, .L800106B8
/* 112B0 800106B0 00000000 */   nop
/* 112B4 800106B4 0006000D */  break      6
.L800106B8:
/* 112B8 800106B8 00007812 */   mflo      $t7
/* 112BC 800106BC 3C018008 */  lui        $at, %hi(someLightR)
/* 112C0 800106C0 AC2F5B68 */  sw         $t7, %lo(someLightR)($at)
/* 112C4 800106C4 8D6D0004 */  lw         $t5, 4($t3)
/* 112C8 800106C8 8C990004 */  lw         $t9, 4($a0)
/* 112CC 800106CC 01AA0019 */  multu      $t5, $t2
/* 112D0 800106D0 0000C012 */  mflo       $t8
/* 112D4 800106D4 00000000 */  nop
/* 112D8 800106D8 00000000 */  nop
/* 112DC 800106DC 03290019 */  multu      $t9, $t1
/* 112E0 800106E0 00007012 */  mflo       $t6
/* 112E4 800106E4 030E7821 */  addu       $t7, $t8, $t6
/* 112E8 800106E8 00000000 */  nop
/* 112EC 800106EC 01E8001A */  div        $zero, $t7, $t0
/* 112F0 800106F0 15000002 */  bnez       $t0, .L800106FC
/* 112F4 800106F4 00000000 */   nop
/* 112F8 800106F8 0007000D */  break      7
.L800106FC:
/* 112FC 800106FC 2401FFFF */   addiu     $at, $zero, -1
/* 11300 80010700 15010004 */  bne        $t0, $at, .L80010714
/* 11304 80010704 3C018000 */   lui       $at, 0x8000
/* 11308 80010708 15E10002 */  bne        $t7, $at, .L80010714
/* 1130C 8001070C 00000000 */   nop
/* 11310 80010710 0006000D */  break      6
.L80010714:
/* 11314 80010714 00006812 */   mflo      $t5
/* 11318 80010718 3C018008 */  lui        $at, %hi(someLightG)
/* 1131C 8001071C AC2D5B6C */  sw         $t5, %lo(someLightG)($at)
/* 11320 80010720 8D790008 */  lw         $t9, 8($t3)
/* 11324 80010724 8C8E0008 */  lw         $t6, 8($a0)
/* 11328 80010728 032A0019 */  multu      $t9, $t2
/* 1132C 8001072C 0000C012 */  mflo       $t8
/* 11330 80010730 00000000 */  nop
/* 11334 80010734 00000000 */  nop
/* 11338 80010738 01C90019 */  multu      $t6, $t1
/* 1133C 8001073C 00007812 */  mflo       $t7
/* 11340 80010740 030F6821 */  addu       $t5, $t8, $t7
/* 11344 80010744 00000000 */  nop
/* 11348 80010748 01A8001A */  div        $zero, $t5, $t0
/* 1134C 8001074C 15000002 */  bnez       $t0, .L80010758
/* 11350 80010750 00000000 */   nop
/* 11354 80010754 0007000D */  break      7
.L80010758:
/* 11358 80010758 2401FFFF */   addiu     $at, $zero, -1
/* 1135C 8001075C 15010004 */  bne        $t0, $at, .L80010770
/* 11360 80010760 3C018000 */   lui       $at, 0x8000
/* 11364 80010764 15A10002 */  bne        $t5, $at, .L80010770
/* 11368 80010768 00000000 */   nop
/* 1136C 8001076C 0006000D */  break      6
.L80010770:
/* 11370 80010770 0000C812 */   mflo      $t9
/* 11374 80010774 3C018008 */  lui        $at, %hi(someLightB)
/* 11378 80010778 AC395B70 */  sw         $t9, %lo(someLightB)($at)
/* 1137C 8001077C 8C4EFFE8 */  lw         $t6, -0x18($v0)
/* 11380 80010780 8D8FFFE8 */  lw         $t7, -0x18($t4)
/* 11384 80010784 01CA0019 */  multu      $t6, $t2
/* 11388 80010788 0000C012 */  mflo       $t8
/* 1138C 8001078C 00000000 */  nop
/* 11390 80010790 00000000 */  nop
/* 11394 80010794 01E90019 */  multu      $t7, $t1
/* 11398 80010798 00006812 */  mflo       $t5
/* 1139C 8001079C 030DC821 */  addu       $t9, $t8, $t5
/* 113A0 800107A0 00000000 */  nop
/* 113A4 800107A4 0328001A */  div        $zero, $t9, $t0
/* 113A8 800107A8 00007012 */  mflo       $t6
/* 113AC 800107AC ACCEFFE8 */  sw         $t6, -0x18($a2)
/* 113B0 800107B0 8C4FFFEC */  lw         $t7, -0x14($v0)
/* 113B4 800107B4 8D8DFFEC */  lw         $t5, -0x14($t4)
/* 113B8 800107B8 15000002 */  bnez       $t0, .L800107C4
/* 113BC 800107BC 00000000 */   nop
/* 113C0 800107C0 0007000D */  break      7
.L800107C4:
/* 113C4 800107C4 2401FFFF */   addiu     $at, $zero, -1
/* 113C8 800107C8 15010004 */  bne        $t0, $at, .L800107DC
/* 113CC 800107CC 3C018000 */   lui       $at, 0x8000
/* 113D0 800107D0 17210002 */  bne        $t9, $at, .L800107DC
/* 113D4 800107D4 00000000 */   nop
/* 113D8 800107D8 0006000D */  break      6
.L800107DC:
/* 113DC 800107DC 01EA0019 */   multu     $t7, $t2
/* 113E0 800107E0 0000C012 */  mflo       $t8
/* 113E4 800107E4 00000000 */  nop
/* 113E8 800107E8 00000000 */  nop
/* 113EC 800107EC 01A90019 */  multu      $t5, $t1
/* 113F0 800107F0 0000C812 */  mflo       $t9
/* 113F4 800107F4 03197021 */  addu       $t6, $t8, $t9
/* 113F8 800107F8 00000000 */  nop
/* 113FC 800107FC 01C8001A */  div        $zero, $t6, $t0
/* 11400 80010800 00007812 */  mflo       $t7
/* 11404 80010804 ACCFFFEC */  sw         $t7, -0x14($a2)
/* 11408 80010808 8C4DFFF0 */  lw         $t5, -0x10($v0)
/* 1140C 8001080C 8D99FFF0 */  lw         $t9, -0x10($t4)
/* 11410 80010810 15000002 */  bnez       $t0, .L8001081C
/* 11414 80010814 00000000 */   nop
/* 11418 80010818 0007000D */  break      7
.L8001081C:
/* 1141C 8001081C 2401FFFF */   addiu     $at, $zero, -1
/* 11420 80010820 15010004 */  bne        $t0, $at, .L80010834
/* 11424 80010824 3C018000 */   lui       $at, 0x8000
/* 11428 80010828 15C10002 */  bne        $t6, $at, .L80010834
/* 1142C 8001082C 00000000 */   nop
/* 11430 80010830 0006000D */  break      6
.L80010834:
/* 11434 80010834 01AA0019 */   multu     $t5, $t2
/* 11438 80010838 0000C012 */  mflo       $t8
/* 1143C 8001083C 00000000 */  nop
/* 11440 80010840 00000000 */  nop
/* 11444 80010844 03290019 */  multu      $t9, $t1
/* 11448 80010848 00007012 */  mflo       $t6
/* 1144C 8001084C 030E7821 */  addu       $t7, $t8, $t6
/* 11450 80010850 00000000 */  nop
/* 11454 80010854 01E8001A */  div        $zero, $t7, $t0
/* 11458 80010858 00006812 */  mflo       $t5
/* 1145C 8001085C ACCDFFF0 */  sw         $t5, -0x10($a2)
/* 11460 80010860 8C59FFF4 */  lw         $t9, -0xc($v0)
/* 11464 80010864 8D8EFFF4 */  lw         $t6, -0xc($t4)
/* 11468 80010868 15000002 */  bnez       $t0, .L80010874
/* 1146C 8001086C 00000000 */   nop
/* 11470 80010870 0007000D */  break      7
.L80010874:
/* 11474 80010874 2401FFFF */   addiu     $at, $zero, -1
/* 11478 80010878 15010004 */  bne        $t0, $at, .L8001088C
/* 1147C 8001087C 3C018000 */   lui       $at, 0x8000
/* 11480 80010880 15E10002 */  bne        $t7, $at, .L8001088C
/* 11484 80010884 00000000 */   nop
/* 11488 80010888 0006000D */  break      6
.L8001088C:
/* 1148C 8001088C 032A0019 */   multu     $t9, $t2
/* 11490 80010890 0000C012 */  mflo       $t8
/* 11494 80010894 00000000 */  nop
/* 11498 80010898 00000000 */  nop
/* 1149C 8001089C 01C90019 */  multu      $t6, $t1
/* 114A0 800108A0 00007812 */  mflo       $t7
/* 114A4 800108A4 030F6821 */  addu       $t5, $t8, $t7
/* 114A8 800108A8 00000000 */  nop
/* 114AC 800108AC 01A8001A */  div        $zero, $t5, $t0
/* 114B0 800108B0 0000C812 */  mflo       $t9
/* 114B4 800108B4 ACD9FFF4 */  sw         $t9, -0xc($a2)
/* 114B8 800108B8 8C4EFFF8 */  lw         $t6, -8($v0)
/* 114BC 800108BC 8D8FFFF8 */  lw         $t7, -8($t4)
/* 114C0 800108C0 15000002 */  bnez       $t0, .L800108CC
/* 114C4 800108C4 00000000 */   nop
/* 114C8 800108C8 0007000D */  break      7
.L800108CC:
/* 114CC 800108CC 2401FFFF */   addiu     $at, $zero, -1
/* 114D0 800108D0 15010004 */  bne        $t0, $at, .L800108E4
/* 114D4 800108D4 3C018000 */   lui       $at, 0x8000
/* 114D8 800108D8 15A10002 */  bne        $t5, $at, .L800108E4
/* 114DC 800108DC 00000000 */   nop
/* 114E0 800108E0 0006000D */  break      6
.L800108E4:
/* 114E4 800108E4 01CA0019 */   multu     $t6, $t2
/* 114E8 800108E8 0000C012 */  mflo       $t8
/* 114EC 800108EC 00000000 */  nop
/* 114F0 800108F0 00000000 */  nop
/* 114F4 800108F4 01E90019 */  multu      $t7, $t1
/* 114F8 800108F8 00006812 */  mflo       $t5
/* 114FC 800108FC 030DC821 */  addu       $t9, $t8, $t5
/* 11500 80010900 00000000 */  nop
/* 11504 80010904 0328001A */  div        $zero, $t9, $t0
/* 11508 80010908 00007012 */  mflo       $t6
/* 1150C 8001090C ACCEFFF8 */  sw         $t6, -8($a2)
/* 11510 80010910 8C4FFFFC */  lw         $t7, -4($v0)
/* 11514 80010914 8D8DFFFC */  lw         $t5, -4($t4)
/* 11518 80010918 15000002 */  bnez       $t0, .L80010924
/* 1151C 8001091C 00000000 */   nop
/* 11520 80010920 0007000D */  break      7
.L80010924:
/* 11524 80010924 2401FFFF */   addiu     $at, $zero, -1
/* 11528 80010928 15010004 */  bne        $t0, $at, .L8001093C
/* 1152C 8001092C 3C018000 */   lui       $at, 0x8000
/* 11530 80010930 17210002 */  bne        $t9, $at, .L8001093C
/* 11534 80010934 00000000 */   nop
/* 11538 80010938 0006000D */  break      6
.L8001093C:
/* 1153C 8001093C 01EA0019 */   multu     $t7, $t2
/* 11540 80010940 0000C012 */  mflo       $t8
/* 11544 80010944 00000000 */  nop
/* 11548 80010948 00000000 */  nop
/* 1154C 8001094C 01A90019 */  multu      $t5, $t1
/* 11550 80010950 0000C812 */  mflo       $t9
/* 11554 80010954 03197021 */  addu       $t6, $t8, $t9
/* 11558 80010958 00000000 */  nop
/* 1155C 8001095C 01C8001A */  div        $zero, $t6, $t0
/* 11560 80010960 00007812 */  mflo       $t7
/* 11564 80010964 ACCFFFFC */  sw         $t7, -4($a2)
/* 11568 80010968 8C4D0000 */  lw         $t5, ($v0)
/* 1156C 8001096C 8D990000 */  lw         $t9, ($t4)
/* 11570 80010970 15000002 */  bnez       $t0, .L8001097C
/* 11574 80010974 00000000 */   nop
/* 11578 80010978 0007000D */  break      7
.L8001097C:
/* 1157C 8001097C 2401FFFF */   addiu     $at, $zero, -1
/* 11580 80010980 15010004 */  bne        $t0, $at, .L80010994
/* 11584 80010984 3C018000 */   lui       $at, 0x8000
/* 11588 80010988 15C10002 */  bne        $t6, $at, .L80010994
/* 1158C 8001098C 00000000 */   nop
/* 11590 80010990 0006000D */  break      6
.L80010994:
/* 11594 80010994 01AA0019 */   multu     $t5, $t2
/* 11598 80010998 0000C012 */  mflo       $t8
/* 1159C 8001099C 00000000 */  nop
/* 115A0 800109A0 00000000 */  nop
/* 115A4 800109A4 03290019 */  multu      $t9, $t1
/* 115A8 800109A8 00007012 */  mflo       $t6
/* 115AC 800109AC 030E7821 */  addu       $t7, $t8, $t6
/* 115B0 800109B0 00000000 */  nop
/* 115B4 800109B4 01E8001A */  div        $zero, $t7, $t0
/* 115B8 800109B8 00006812 */  mflo       $t5
/* 115BC 800109BC ACCD0000 */  sw         $t5, ($a2)
/* 115C0 800109C0 8C590004 */  lw         $t9, 4($v0)
/* 115C4 800109C4 8D8E0004 */  lw         $t6, 4($t4)
/* 115C8 800109C8 15000002 */  bnez       $t0, .L800109D4
/* 115CC 800109CC 00000000 */   nop
/* 115D0 800109D0 0007000D */  break      7
.L800109D4:
/* 115D4 800109D4 2401FFFF */   addiu     $at, $zero, -1
/* 115D8 800109D8 15010004 */  bne        $t0, $at, .L800109EC
/* 115DC 800109DC 3C018000 */   lui       $at, 0x8000
/* 115E0 800109E0 15E10002 */  bne        $t7, $at, .L800109EC
/* 115E4 800109E4 00000000 */   nop
/* 115E8 800109E8 0006000D */  break      6
.L800109EC:
/* 115EC 800109EC 032A0019 */   multu     $t9, $t2
/* 115F0 800109F0 0000C012 */  mflo       $t8
/* 115F4 800109F4 00000000 */  nop
/* 115F8 800109F8 00000000 */  nop
/* 115FC 800109FC 01C90019 */  multu      $t6, $t1
/* 11600 80010A00 00007812 */  mflo       $t7
/* 11604 80010A04 030F6821 */  addu       $t5, $t8, $t7
/* 11608 80010A08 00000000 */  nop
/* 1160C 80010A0C 01A8001A */  div        $zero, $t5, $t0
/* 11610 80010A10 0000C812 */  mflo       $t9
/* 11614 80010A14 ACD90004 */  sw         $t9, 4($a2)
/* 11618 80010A18 8C4E0008 */  lw         $t6, 8($v0)
/* 1161C 80010A1C 8D8F0008 */  lw         $t7, 8($t4)
/* 11620 80010A20 15000002 */  bnez       $t0, .L80010A2C
/* 11624 80010A24 00000000 */   nop
/* 11628 80010A28 0007000D */  break      7
.L80010A2C:
/* 1162C 80010A2C 2401FFFF */   addiu     $at, $zero, -1
/* 11630 80010A30 15010004 */  bne        $t0, $at, .L80010A44
/* 11634 80010A34 3C018000 */   lui       $at, 0x8000
/* 11638 80010A38 15A10002 */  bne        $t5, $at, .L80010A44
/* 1163C 80010A3C 00000000 */   nop
/* 11640 80010A40 0006000D */  break      6
.L80010A44:
/* 11644 80010A44 01CA0019 */   multu     $t6, $t2
/* 11648 80010A48 2462FFC4 */  addiu      $v0, $v1, -0x3c
/* 1164C 80010A4C 0000C012 */  mflo       $t8
/* 11650 80010A50 00000000 */  nop
/* 11654 80010A54 00000000 */  nop
/* 11658 80010A58 01E90019 */  multu      $t7, $t1
/* 1165C 80010A5C 00006812 */  mflo       $t5
/* 11660 80010A60 030DC821 */  addu       $t9, $t8, $t5
/* 11664 80010A64 00000000 */  nop
/* 11668 80010A68 0328001A */  div        $zero, $t9, $t0
/* 1166C 80010A6C 00007012 */  mflo       $t6
/* 11670 80010A70 ACCE0008 */  sw         $t6, 8($a2)
/* 11674 80010A74 8C4F0034 */  lw         $t7, 0x34($v0)
/* 11678 80010A78 8C6D0034 */  lw         $t5, 0x34($v1)
/* 1167C 80010A7C 15000002 */  bnez       $t0, .L80010A88
/* 11680 80010A80 00000000 */   nop
/* 11684 80010A84 0007000D */  break      7
.L80010A88:
/* 11688 80010A88 2401FFFF */   addiu     $at, $zero, -1
/* 1168C 80010A8C 15010004 */  bne        $t0, $at, .L80010AA0
/* 11690 80010A90 3C018000 */   lui       $at, 0x8000
/* 11694 80010A94 17210002 */  bne        $t9, $at, .L80010AA0
/* 11698 80010A98 00000000 */   nop
/* 1169C 80010A9C 0006000D */  break      6
.L80010AA0:
/* 116A0 80010AA0 01EA0019 */   multu     $t7, $t2
/* 116A4 80010AA4 0000C012 */  mflo       $t8
/* 116A8 80010AA8 00000000 */  nop
/* 116AC 80010AAC 00000000 */  nop
/* 116B0 80010AB0 01A90019 */  multu      $t5, $t1
/* 116B4 80010AB4 0000C812 */  mflo       $t9
/* 116B8 80010AB8 03197021 */  addu       $t6, $t8, $t9
/* 116BC 80010ABC 00000000 */  nop
/* 116C0 80010AC0 01C8001A */  div        $zero, $t6, $t0
/* 116C4 80010AC4 15000002 */  bnez       $t0, .L80010AD0
/* 116C8 80010AC8 00000000 */   nop
/* 116CC 80010ACC 0007000D */  break      7
.L80010AD0:
/* 116D0 80010AD0 2401FFFF */   addiu     $at, $zero, -1
/* 116D4 80010AD4 15010004 */  bne        $t0, $at, .L80010AE8
/* 116D8 80010AD8 3C018000 */   lui       $at, 0x8000
/* 116DC 80010ADC 15C10002 */  bne        $t6, $at, .L80010AE8
/* 116E0 80010AE0 00000000 */   nop
/* 116E4 80010AE4 0006000D */  break      6
.L80010AE8:
/* 116E8 80010AE8 00007812 */   mflo      $t7
/* 116EC 80010AEC 3C018008 */  lui        $at, %hi(D_80085BC8)
/* 116F0 80010AF0 AC2F5BC8 */  sw         $t7, %lo(D_80085BC8)($at)
/* 116F4 80010AF4 8C4D0038 */  lw         $t5, 0x38($v0)
/* 116F8 80010AF8 8C790038 */  lw         $t9, 0x38($v1)
/* 116FC 80010AFC 01AA0019 */  multu      $t5, $t2
/* 11700 80010B00 0000C012 */  mflo       $t8
/* 11704 80010B04 00000000 */  nop
/* 11708 80010B08 00000000 */  nop
/* 1170C 80010B0C 03290019 */  multu      $t9, $t1
/* 11710 80010B10 00007012 */  mflo       $t6
/* 11714 80010B14 030E7821 */  addu       $t7, $t8, $t6
/* 11718 80010B18 00000000 */  nop
/* 1171C 80010B1C 01E8001A */  div        $zero, $t7, $t0
/* 11720 80010B20 15000002 */  bnez       $t0, .L80010B2C
/* 11724 80010B24 00000000 */   nop
/* 11728 80010B28 0007000D */  break      7
.L80010B2C:
/* 1172C 80010B2C 2401FFFF */   addiu     $at, $zero, -1
/* 11730 80010B30 15010004 */  bne        $t0, $at, .L80010B44
/* 11734 80010B34 3C018000 */   lui       $at, 0x8000
/* 11738 80010B38 15E10002 */  bne        $t7, $at, .L80010B44
/* 1173C 80010B3C 00000000 */   nop
/* 11740 80010B40 0006000D */  break      6
.L80010B44:
/* 11744 80010B44 00006812 */   mflo      $t5
/* 11748 80010B48 3C018008 */  lui        $at, %hi(D_80085BCC)
/* 1174C 80010B4C AC2D5BCC */  sw         $t5, %lo(D_80085BCC)($at)
/* 11750 80010B50 03E00008 */  jr         $ra
/* 11754 80010B54 00000000 */   nop
