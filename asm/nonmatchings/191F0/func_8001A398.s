glabel func_8001A398
/* 1AF98 8001A398 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1AF9C 8001A39C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1AFA0 8001A3A0 3C118008 */  lui        $s1, %hi(D_8007B2FC)
/* 1AFA4 8001A3A4 AFB40028 */  sw         $s4, 0x28($sp)
/* 1AFA8 8001A3A8 0080A025 */  or         $s4, $a0, $zero
/* 1AFAC 8001A3AC 2631B2FC */  addiu      $s1, $s1, %lo(D_8007B2FC)
/* 1AFB0 8001A3B0 AFBF003C */  sw         $ra, 0x3C($sp)
/* 1AFB4 8001A3B4 AFBE0038 */  sw         $fp, 0x38($sp)
/* 1AFB8 8001A3B8 AFB70034 */  sw         $s7, 0x34($sp)
/* 1AFBC 8001A3BC AFB60030 */  sw         $s6, 0x30($sp)
/* 1AFC0 8001A3C0 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1AFC4 8001A3C4 AFB30024 */  sw         $s3, 0x24($sp)
/* 1AFC8 8001A3C8 AFB20020 */  sw         $s2, 0x20($sp)
/* 1AFCC 8001A3CC AFB00018 */  sw         $s0, 0x18($sp)
/* 1AFD0 8001A3D0 8E220000 */  lw         $v0, 0x0($s1)
/* 1AFD4 8001A3D4 3C18800F */  lui        $t8, %hi(D_800EBE08)
/* 1AFD8 8001A3D8 2718BE08 */  addiu      $t8, $t8, %lo(D_800EBE08)
/* 1AFDC 8001A3DC 244E0008 */  addiu      $t6, $v0, 0x8
/* 1AFE0 8001A3E0 AE2E0000 */  sw         $t6, 0x0($s1)
/* 1AFE4 8001A3E4 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
/* 1AFE8 8001A3E8 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1AFEC 8001A3EC AC580004 */  sw         $t8, 0x4($v0)
/* 1AFF0 8001A3F0 3419FFFF */  ori        $t9, $zero, 0xFFFF
/* 1AFF4 8001A3F4 3C018009 */  lui        $at, %hi(D_800883E8)
/* 1AFF8 8001A3F8 3C108008 */  lui        $s0, %hi(D_800875A8)
/* 1AFFC 8001A3FC 3C15800F */  lui        $s5, %hi(D_800EBD1C)
/* 1B000 8001A400 A43983E8 */  sh         $t9, %lo(D_800883E8)($at)
/* 1B004 8001A404 24120020 */  addiu      $s2, $zero, 0x20
/* 1B008 8001A408 261075A8 */  addiu      $s0, $s0, %lo(D_800875A8)
/* 1B00C 8001A40C 26B5BD1C */  addiu      $s5, $s5, %lo(D_800EBD1C)
/* 1B010 8001A410 3C1EB600 */  lui        $fp, (0xB6000000 >> 16)
/* 1B014 8001A414 3C17B700 */  lui        $s7, (0xB7000000 >> 16)
/* 1B018 8001A418 3C16FB00 */  lui        $s6, (0xFB000000 >> 16)
/* 1B01C 8001A41C 24132000 */  addiu      $s3, $zero, 0x2000
.L8001A420:
/* 1B020 8001A420 96080000 */  lhu        $t0, 0x0($s0)
/* 1B024 8001A424 5100005E */  beql       $t0, $zero, .L8001A5A0
/* 1B028 8001A428 2652FFFF */   addiu     $s2, $s2, -0x1
/* 1B02C 8001A42C 0C006A0D */  jal        func_8001A834
/* 1B030 8001A430 02002025 */   or        $a0, $s0, $zero
/* 1B034 8001A434 96030008 */  lhu        $v1, 0x8($s0)
/* 1B038 8001A438 240500FA */  addiu      $a1, $zero, 0xFA
/* 1B03C 8001A43C 02002025 */  or         $a0, $s0, $zero
/* 1B040 8001A440 30690002 */  andi       $t1, $v1, 0x2
/* 1B044 8001A444 1120000A */  beqz       $t1, .L8001A470
/* 1B048 8001A448 306C0001 */   andi      $t4, $v1, 0x1
/* 1B04C 8001A44C 3C0A8008 */  lui        $t2, %hi(D_80087204)
/* 1B050 8001A450 954A7204 */  lhu        $t2, %lo(D_80087204)($t2)
/* 1B054 8001A454 314B0001 */  andi       $t3, $t2, 0x1
/* 1B058 8001A458 11600003 */  beqz       $t3, .L8001A468
/* 1B05C 8001A45C 00000000 */   nop
/* 1B060 8001A460 10000003 */  b          .L8001A470
/* 1B064 8001A464 240500F0 */   addiu     $a1, $zero, 0xF0
.L8001A468:
/* 1B068 8001A468 10000001 */  b          .L8001A470
/* 1B06C 8001A46C 24050096 */   addiu     $a1, $zero, 0x96
.L8001A470:
/* 1B070 8001A470 1580000A */  bnez       $t4, .L8001A49C
/* 1B074 8001A474 306E0080 */   andi      $t6, $v1, 0x80
/* 1B078 8001A478 96020000 */  lhu        $v0, 0x0($s0)
/* 1B07C 8001A47C 28410008 */  slti       $at, $v0, 0x8
/* 1B080 8001A480 10200006 */  beqz       $at, .L8001A49C
/* 1B084 8001A484 00000000 */   nop
/* 1B088 8001A488 00450019 */  multu      $v0, $a1
/* 1B08C 8001A48C 00002812 */  mflo       $a1
/* 1B090 8001A490 000568C2 */  srl        $t5, $a1, 3
/* 1B094 8001A494 1000000B */  b          .L8001A4C4
/* 1B098 8001A498 01A02825 */   or        $a1, $t5, $zero
.L8001A49C:
/* 1B09C 8001A49C 51C0000A */  beql       $t6, $zero, .L8001A4C8
/* 1B0A0 8001A4A0 96180006 */   lhu       $t8, 0x6($s0)
/* 1B0A4 8001A4A4 96020004 */  lhu        $v0, 0x4($s0)
/* 1B0A8 8001A4A8 28410008 */  slti       $at, $v0, 0x8
/* 1B0AC 8001A4AC 50200006 */  beql       $at, $zero, .L8001A4C8
/* 1B0B0 8001A4B0 96180006 */   lhu       $t8, 0x6($s0)
/* 1B0B4 8001A4B4 00450019 */  multu      $v0, $a1
/* 1B0B8 8001A4B8 00002812 */  mflo       $a1
/* 1B0BC 8001A4BC 000578C2 */  srl        $t7, $a1, 3
/* 1B0C0 8001A4C0 01E02825 */  or         $a1, $t7, $zero
.L8001A4C4:
/* 1B0C4 8001A4C4 96180006 */  lhu        $t8, 0x6($s0)
.L8001A4C8:
/* 1B0C8 8001A4C8 331900FF */  andi       $t9, $t8, 0xFF
/* 1B0CC 8001A4CC 00194080 */  sll        $t0, $t9, 2
/* 1B0D0 8001A4D0 02A81821 */  addu       $v1, $s5, $t0
/* 1B0D4 8001A4D4 8E220000 */  lw         $v0, 0x0($s1)
/* 1B0D8 8001A4D8 24490008 */  addiu      $t1, $v0, 0x8
/* 1B0DC 8001A4DC AE290000 */  sw         $t1, 0x0($s1)
/* 1B0E0 8001A4E0 AC560000 */  sw         $s6, 0x0($v0)
/* 1B0E4 8001A4E4 906E0000 */  lbu        $t6, 0x0($v1)
/* 1B0E8 8001A4E8 906B0002 */  lbu        $t3, 0x2($v1)
/* 1B0EC 8001A4EC 90680001 */  lbu        $t0, 0x1($v1)
/* 1B0F0 8001A4F0 000E7E00 */  sll        $t7, $t6, 24
/* 1B0F4 8001A4F4 000B6200 */  sll        $t4, $t3, 8
/* 1B0F8 8001A4F8 018FC025 */  or         $t8, $t4, $t7
/* 1B0FC 8001A4FC 00084C00 */  sll        $t1, $t0, 16
/* 1B100 8001A500 03095025 */  or         $t2, $t8, $t1
/* 1B104 8001A504 30AB00FF */  andi       $t3, $a1, 0xFF
/* 1B108 8001A508 014B6825 */  or         $t5, $t2, $t3
/* 1B10C 8001A50C AC4D0004 */  sw         $t5, 0x4($v0)
/* 1B110 8001A510 960E0008 */  lhu        $t6, 0x8($s0)
/* 1B114 8001A514 31CC0008 */  andi       $t4, $t6, 0x8
/* 1B118 8001A518 51800009 */  beql       $t4, $zero, .L8001A540
/* 1B11C 8001A51C 8E220000 */   lw        $v0, 0x0($s1)
/* 1B120 8001A520 8E220000 */  lw         $v0, 0x0($s1)
/* 1B124 8001A524 244F0008 */  addiu      $t7, $v0, 0x8
/* 1B128 8001A528 AE2F0000 */  sw         $t7, 0x0($s1)
/* 1B12C 8001A52C AC530004 */  sw         $s3, 0x4($v0)
/* 1B130 8001A530 AC570000 */  sw         $s7, 0x0($v0)
/* 1B134 8001A534 10000006 */  b          .L8001A550
/* 1B138 8001A538 00000000 */   nop
/* 1B13C 8001A53C 8E220000 */  lw         $v0, 0x0($s1)
.L8001A540:
/* 1B140 8001A540 24590008 */  addiu      $t9, $v0, 0x8
/* 1B144 8001A544 AE390000 */  sw         $t9, 0x0($s1)
/* 1B148 8001A548 AC530004 */  sw         $s3, 0x4($v0)
/* 1B14C 8001A54C AC5E0000 */  sw         $fp, 0x0($v0)
.L8001A550:
/* 1B150 8001A550 0C006988 */  jal        func_8001A620
/* 1B154 8001A554 02802825 */   or        $a1, $s4, $zero
/* 1B158 8001A558 96090000 */  lhu        $t1, 0x0($s0)
/* 1B15C 8001A55C 8E080034 */  lw         $t0, 0x34($s0)
/* 1B160 8001A560 252AFFFF */  addiu      $t2, $t1, -0x1
/* 1B164 8001A564 314BFFFF */  andi       $t3, $t2, 0xFFFF
/* 1B168 8001A568 25180001 */  addiu      $t8, $t0, 0x1
/* 1B16C 8001A56C AE180034 */  sw         $t8, 0x34($s0)
/* 1B170 8001A570 15600007 */  bnez       $t3, .L8001A590
/* 1B174 8001A574 A60A0000 */   sh        $t2, 0x0($s0)
/* 1B178 8001A578 960D0008 */  lhu        $t5, 0x8($s0)
/* 1B17C 8001A57C 31AE0001 */  andi       $t6, $t5, 0x1
/* 1B180 8001A580 51C00004 */  beql       $t6, $zero, .L8001A594
/* 1B184 8001A584 960F0004 */   lhu       $t7, 0x4($s0)
/* 1B188 8001A588 960C0002 */  lhu        $t4, 0x2($s0)
/* 1B18C 8001A58C A60C0000 */  sh         $t4, 0x0($s0)
.L8001A590:
/* 1B190 8001A590 960F0004 */  lhu        $t7, 0x4($s0)
.L8001A594:
/* 1B194 8001A594 25F90001 */  addiu      $t9, $t7, 0x1
/* 1B198 8001A598 A6190004 */  sh         $t9, 0x4($s0)
/* 1B19C 8001A59C 2652FFFF */  addiu      $s2, $s2, -0x1
.L8001A5A0:
/* 1B1A0 8001A5A0 1640FF9F */  bnez       $s2, .L8001A420
/* 1B1A4 8001A5A4 26100058 */   addiu     $s0, $s0, 0x58
/* 1B1A8 8001A5A8 8E220000 */  lw         $v0, 0x0($s1)
/* 1B1AC 8001A5AC 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 1B1B0 8001A5B0 3C0B8008 */  lui        $t3, %hi(D_80087204)
/* 1B1B4 8001A5B4 24480008 */  addiu      $t0, $v0, 0x8
/* 1B1B8 8001A5B8 AE280000 */  sw         $t0, 0x0($s1)
/* 1B1BC 8001A5BC AC400004 */  sw         $zero, 0x4($v0)
/* 1B1C0 8001A5C0 AC580000 */  sw         $t8, 0x0($v0)
/* 1B1C4 8001A5C4 8E220000 */  lw         $v0, 0x0($s1)
/* 1B1C8 8001A5C8 3C0ABA00 */  lui        $t2, (0xBA000E02 >> 16)
/* 1B1CC 8001A5CC 354A0E02 */  ori        $t2, $t2, (0xBA000E02 & 0xFFFF)
/* 1B1D0 8001A5D0 24490008 */  addiu      $t1, $v0, 0x8
/* 1B1D4 8001A5D4 AE290000 */  sw         $t1, 0x0($s1)
/* 1B1D8 8001A5D8 AC400004 */  sw         $zero, 0x4($v0)
/* 1B1DC 8001A5DC AC4A0000 */  sw         $t2, 0x0($v0)
/* 1B1E0 8001A5E0 956B7204 */  lhu        $t3, %lo(D_80087204)($t3)
/* 1B1E4 8001A5E4 3C018008 */  lui        $at, %hi(D_80087204)
/* 1B1E8 8001A5E8 8FB00018 */  lw         $s0, 0x18($sp)
/* 1B1EC 8001A5EC 256D0001 */  addiu      $t5, $t3, 0x1
/* 1B1F0 8001A5F0 A42D7204 */  sh         $t5, %lo(D_80087204)($at)
/* 1B1F4 8001A5F4 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1B1F8 8001A5F8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1B1FC 8001A5FC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1B200 8001A600 8FB30024 */  lw         $s3, 0x24($sp)
/* 1B204 8001A604 8FB40028 */  lw         $s4, 0x28($sp)
/* 1B208 8001A608 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1B20C 8001A60C 8FB60030 */  lw         $s6, 0x30($sp)
/* 1B210 8001A610 8FB70034 */  lw         $s7, 0x34($sp)
/* 1B214 8001A614 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1B218 8001A618 03E00008 */  jr         $ra
/* 1B21C 8001A61C 27BD0040 */   addiu     $sp, $sp, 0x40