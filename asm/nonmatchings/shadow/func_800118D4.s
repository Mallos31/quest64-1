glabel func_800118D4
/* 124D4 800118D4 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* 124D8 800118D8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 124DC 800118DC AFBE0038 */  sw         $fp, 0x38($sp)
/* 124E0 800118E0 AFB70034 */  sw         $s7, 0x34($sp)
/* 124E4 800118E4 AFB60030 */  sw         $s6, 0x30($sp)
/* 124E8 800118E8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 124EC 800118EC AFB40028 */  sw         $s4, 0x28($sp)
/* 124F0 800118F0 AFB30024 */  sw         $s3, 0x24($sp)
/* 124F4 800118F4 AFB20020 */  sw         $s2, 0x20($sp)
/* 124F8 800118F8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 124FC 800118FC AFB00018 */  sw         $s0, 0x18($sp)
/* 12500 80011900 AFA400A8 */  sw         $a0, 0xA8($sp)
/* 12504 80011904 3C148008 */  lui        $s4, %hi(D_800862D0)
/* 12508 80011908 8E9462D0 */  lw         $s4, %lo(D_800862D0)($s4)
/* 1250C 8001190C 3C108008 */  lui        $s0, %hi(D_80085BD0)
/* 12510 80011910 26105BD0 */  addiu      $s0, $s0, %lo(D_80085BD0)
/* 12514 80011914 12800037 */  beqz       $s4, .L800119F4
/* 12518 80011918 3C118008 */   lui       $s1, %hi(gMasterGfxPos)
/* 1251C 8001191C 2631B2FC */  addiu      $s1, $s1, %lo(gMasterGfxPos)
/* 12520 80011920 8E230000 */  lw         $v1, 0x0($s1)
/* 12524 80011924 3C180100 */  lui        $t8, %hi(D_1000270)
/* 12528 80011928 27180270 */  addiu      $t8, $t8, %lo(D_1000270)
/* 1252C 8001192C 246E0008 */  addiu      $t6, $v1, 0x8
/* 12530 80011930 AE2E0000 */  sw         $t6, 0x0($s1)
/* 12534 80011934 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
/* 12538 80011938 AC6F0000 */  sw         $t7, 0x0($v1)
/* 1253C 8001193C AC780004 */  sw         $t8, 0x4($v1)
/* 12540 80011940 8E220000 */  lw         $v0, 0x0($s1)
/* 12544 80011944 3C08BC00 */  lui        $t0, (0xBC000008 >> 16)
/* 12548 80011948 35080008 */  ori        $t0, $t0, (0xBC000008 & 0xFFFF)
/* 1254C 8001194C 24590008 */  addiu      $t9, $v0, 0x8
/* 12550 80011950 AE390000 */  sw         $t9, 0x0($s1)
/* 12554 80011954 AC480000 */  sw         $t0, 0x0($v0)
/* 12558 80011958 3C058008 */  lui        $a1, %hi(D_8007B31A)
/* 1255C 8001195C 3C098008 */  lui        $t1, %hi(D_8007B318)
/* 12560 80011960 8529B318 */  lh         $t1, %lo(D_8007B318)($t1)
/* 12564 80011964 84A5B31A */  lh         $a1, %lo(D_8007B31A)($a1)
/* 12568 80011968 3C0A0001 */  lui        $t2, (0x1F400 >> 16)
/* 1256C 8001196C 354AF400 */  ori        $t2, $t2, (0x1F400 & 0xFFFF)
/* 12570 80011970 01253023 */  subu       $a2, $t1, $a1
/* 12574 80011974 0146001A */  div        $zero, $t2, $a2
/* 12578 80011978 00057023 */  negu       $t6, $a1
/* 1257C 8001197C 000E7A00 */  sll        $t7, $t6, 8
/* 12580 80011980 01EAC021 */  addu       $t8, $t7, $t2
/* 12584 80011984 00005812 */  mflo       $t3
/* 12588 80011988 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 1258C 8001198C 000C6C00 */  sll        $t5, $t4, 16
/* 12590 80011990 0306001A */  div        $zero, $t8, $a2
/* 12594 80011994 0000C812 */  mflo       $t9
/* 12598 80011998 3328FFFF */  andi       $t0, $t9, 0xFFFF
/* 1259C 8001199C 01A84825 */  or         $t1, $t5, $t0
/* 125A0 800119A0 00402025 */  or         $a0, $v0, $zero
/* 125A4 800119A4 14C00002 */  bnez       $a2, .L800119B0
/* 125A8 800119A8 00000000 */   nop
/* 125AC 800119AC 0007000D */  break      7
.L800119B0:
/* 125B0 800119B0 2401FFFF */  addiu      $at, $zero, -0x1
/* 125B4 800119B4 14C10004 */  bne        $a2, $at, .L800119C8
/* 125B8 800119B8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 125BC 800119BC 15410002 */  bne        $t2, $at, .L800119C8
/* 125C0 800119C0 00000000 */   nop
/* 125C4 800119C4 0006000D */  break      6
.L800119C8:
/* 125C8 800119C8 01400821 */  addu       $at, $t2, $zero
/* 125CC 800119CC 14C00002 */  bnez       $a2, .L800119D8
/* 125D0 800119D0 00000000 */   nop
/* 125D4 800119D4 0007000D */  break      7
.L800119D8:
/* 125D8 800119D8 2401FFFF */  addiu      $at, $zero, -0x1
/* 125DC 800119DC 14C10004 */  bne        $a2, $at, .L800119F0
/* 125E0 800119E0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 125E4 800119E4 17010002 */  bne        $t8, $at, .L800119F0
/* 125E8 800119E8 00000000 */   nop
/* 125EC 800119EC 0006000D */  break      6
.L800119F0:
/* 125F0 800119F0 AC890004 */  sw         $t1, 0x4($a0)
.L800119F4:
/* 125F4 800119F4 3C118008 */  lui        $s1, %hi(gMasterGfxPos)
/* 125F8 800119F8 12800042 */  beqz       $s4, .L80011B04
/* 125FC 800119FC 2631B2FC */   addiu     $s1, $s1, %lo(gMasterGfxPos)
/* 12600 80011A00 3C150100 */  lui        $s5, %hi(D_1000230)
/* 12604 80011A04 3C1E0400 */  lui        $fp, (0x400103F >> 16)
/* 12608 80011A08 3C170200 */  lui        $s7, %hi(D_2000000)
/* 1260C 80011A0C 3C160102 */  lui        $s6, (0x1020040 >> 16)
/* 12610 80011A10 3C128008 */  lui        $s2, %hi(D_8007B2F8)
/* 12614 80011A14 2652B2F8 */  addiu      $s2, $s2, %lo(D_8007B2F8)
/* 12618 80011A18 36D60040 */  ori        $s6, $s6, (0x1020040 & 0xFFFF)
/* 1261C 80011A1C 26F70000 */  addiu      $s7, $s7, %lo(D_2000000)
/* 12620 80011A20 37DE103F */  ori        $fp, $fp, (0x400103F & 0xFFFF)
/* 12624 80011A24 26B50230 */  addiu      $s5, $s5, %lo(D_1000230)
/* 12628 80011A28 27B30060 */  addiu      $s3, $sp, 0x60
.L80011A2C:
/* 1262C 80011A2C 02602025 */  or         $a0, $s3, $zero
/* 12630 80011A30 8E05000C */  lw         $a1, 0xC($s0)
/* 12634 80011A34 8E060010 */  lw         $a2, 0x10($s0)
/* 12638 80011A38 0C008E82 */  jal        func_80023A08
/* 1263C 80011A3C 8E070014 */   lw        $a3, 0x14($s0)
/* 12640 80011A40 C6040000 */  lwc1       $f4, 0x0($s0)
/* 12644 80011A44 02602025 */  or         $a0, $s3, $zero
/* 12648 80011A48 E7A40090 */  swc1       $f4, 0x90($sp)
/* 1264C 80011A4C C6060004 */  lwc1       $f6, 0x4($s0)
/* 12650 80011A50 E7A60094 */  swc1       $f6, 0x94($sp)
/* 12654 80011A54 C6080008 */  lwc1       $f8, 0x8($s0)
/* 12658 80011A58 E7A80098 */  swc1       $f8, 0x98($sp)
/* 1265C 80011A5C C6000018 */  lwc1       $f0, 0x18($s0)
/* 12660 80011A60 44050000 */  mfc1       $a1, $f0
/* 12664 80011A64 44060000 */  mfc1       $a2, $f0
/* 12668 80011A68 44070000 */  mfc1       $a3, $f0
/* 1266C 80011A6C 0C008F7D */  jal        func_80023DF4
/* 12670 80011A70 00000000 */   nop
/* 12674 80011A74 8E4B0000 */  lw         $t3, 0x0($s2)
/* 12678 80011A78 8FAA00A8 */  lw         $t2, 0xA8($sp)
/* 1267C 80011A7C 02602025 */  or         $a0, $s3, $zero
/* 12680 80011A80 000B6180 */  sll        $t4, $t3, 6
/* 12684 80011A84 014C2821 */  addu       $a1, $t2, $t4
/* 12688 80011A88 0C00D480 */  jal        guMtxF2L
/* 1268C 80011A8C 24A500C0 */   addiu     $a1, $a1, 0xC0
/* 12690 80011A90 8E220000 */  lw         $v0, 0x0($s1)
/* 12694 80011A94 3C0CB100 */  lui        $t4, (0xB1000204 >> 16)
/* 12698 80011A98 358C0204 */  ori        $t4, $t4, (0xB1000204 & 0xFFFF)
/* 1269C 80011A9C 244E0008 */  addiu      $t6, $v0, 0x8
/* 126A0 80011AA0 AE2E0000 */  sw         $t6, 0x0($s1)
/* 126A4 80011AA4 AC560000 */  sw         $s6, 0x0($v0)
/* 126A8 80011AA8 8E4F0000 */  lw         $t7, 0x0($s2)
/* 126AC 80011AAC 2694FFFF */  addiu      $s4, $s4, -0x1
/* 126B0 80011AB0 000FC180 */  sll        $t8, $t7, 6
/* 126B4 80011AB4 02F8C821 */  addu       $t9, $s7, $t8
/* 126B8 80011AB8 272D00C0 */  addiu      $t5, $t9, 0xC0
/* 126BC 80011ABC AC4D0004 */  sw         $t5, 0x4($v0)
/* 126C0 80011AC0 8E480000 */  lw         $t0, 0x0($s2)
/* 126C4 80011AC4 25090001 */  addiu      $t1, $t0, 0x1
/* 126C8 80011AC8 AE490000 */  sw         $t1, 0x0($s2)
/* 126CC 80011ACC 8E220000 */  lw         $v0, 0x0($s1)
/* 126D0 80011AD0 244B0008 */  addiu      $t3, $v0, 0x8
/* 126D4 80011AD4 AE2B0000 */  sw         $t3, 0x0($s1)
/* 126D8 80011AD8 AC550004 */  sw         $s5, 0x4($v0)
/* 126DC 80011ADC AC5E0000 */  sw         $fp, 0x0($v0)
/* 126E0 80011AE0 8E220000 */  lw         $v0, 0x0($s1)
/* 126E4 80011AE4 3C0E0002 */  lui        $t6, (0x20604 >> 16)
/* 126E8 80011AE8 35CE0604 */  ori        $t6, $t6, (0x20604 & 0xFFFF)
/* 126EC 80011AEC 244A0008 */  addiu      $t2, $v0, 0x8
/* 126F0 80011AF0 AE2A0000 */  sw         $t2, 0x0($s1)
/* 126F4 80011AF4 AC4E0004 */  sw         $t6, 0x4($v0)
/* 126F8 80011AF8 AC4C0000 */  sw         $t4, 0x0($v0)
/* 126FC 80011AFC 1680FFCB */  bnez       $s4, .L80011A2C
/* 12700 80011B00 2610001C */   addiu     $s0, $s0, 0x1C
.L80011B04:
/* 12704 80011B04 8FBF003C */  lw         $ra, 0x3C($sp)
/* 12708 80011B08 8FB00018 */  lw         $s0, 0x18($sp)
/* 1270C 80011B0C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12710 80011B10 8FB20020 */  lw         $s2, 0x20($sp)
/* 12714 80011B14 8FB30024 */  lw         $s3, 0x24($sp)
/* 12718 80011B18 8FB40028 */  lw         $s4, 0x28($sp)
/* 1271C 80011B1C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 12720 80011B20 8FB60030 */  lw         $s6, 0x30($sp)
/* 12724 80011B24 8FB70034 */  lw         $s7, 0x34($sp)
/* 12728 80011B28 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1272C 80011B2C 03E00008 */  jr         $ra
/* 12730 80011B30 27BD00A8 */   addiu     $sp, $sp, 0xA8
/* 12734 80011B34 00000000 */  nop
/* 12738 80011B38 00000000 */  nop
/* 1273C 80011B3C 00000000 */  nop
