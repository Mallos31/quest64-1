glabel func_80004448
/* 5048 80004448 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 504C 8000444C AFB10020 */  sw         $s1, 0x20($sp)
/* 5050 80004450 AFB0001C */  sw         $s0, 0x1C($sp)
/* 5054 80004454 44800000 */  mtc1       $zero, $f0
/* 5058 80004458 00A08025 */  or         $s0, $a1, $zero
/* 505C 8000445C 00808825 */  or         $s1, $a0, $zero
/* 5060 80004460 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5064 80004464 AFA60030 */  sw         $a2, 0x30($sp)
/* 5068 80004468 E6200020 */  swc1       $f0, 0x20($s1)
/* 506C 8000446C E6200018 */  swc1       $f0, 0x18($s1)
/* 5070 80004470 960E0004 */  lhu        $t6, 0x4($s0)
/* 5074 80004474 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 5078 80004478 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 507C 8000447C 17000057 */  bnez       $t8, .L800045DC
/* 5080 80004480 A60F0004 */   sh        $t7, 0x4($s0)
/* 5084 80004484 96040002 */  lhu        $a0, 0x2($s0)
/* 5088 80004488 02202825 */  or         $a1, $s1, $zero
/* 508C 8000448C 0C001A9D */  jal        func_80006A74
/* 5090 80004490 2484FFFF */   addiu     $a0, $a0, -0x1
/* 5094 80004494 5040003B */  beql       $v0, $zero, .L80004584
/* 5098 80004498 960C0002 */   lhu       $t4, 0x2($s0)
/* 509C 8000449C 0C001AC7 */  jal        func_80006B1C
/* 50A0 800044A0 02002025 */   or        $a0, $s0, $zero
/* 50A4 800044A4 9606011E */  lhu        $a2, 0x11E($s0)
/* 50A8 800044A8 96040002 */  lhu        $a0, 0x2($s0)
/* 50AC 800044AC AFB10010 */  sw         $s1, 0x10($sp)
/* 50B0 800044B0 00064203 */  sra        $t0, $a2, 8
/* 50B4 800044B4 3106000F */  andi       $a2, $t0, 0xF
/* 50B8 800044B8 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* 50BC 800044BC 34078004 */  ori        $a3, $zero, 0x8004
/* 50C0 800044C0 0C002B30 */  jal        func_8000ACC0
/* 50C4 800044C4 2484FFFF */   addiu     $a0, $a0, -0x1
/* 50C8 800044C8 50400029 */  beql       $v0, $zero, .L80004570
/* 50CC 800044CC 8E020010 */   lw        $v0, 0x10($s0)
/* 50D0 800044D0 8E230064 */  lw         $v1, 0x64($s1)
/* 50D4 800044D4 946A0008 */  lhu        $t2, 0x8($v1)
/* 50D8 800044D8 254B0001 */  addiu      $t3, $t2, 0x1
/* 50DC 800044DC A46B0008 */  sh         $t3, 0x8($v1)
/* 50E0 800044E0 8E230064 */  lw         $v1, 0x64($s1)
/* 50E4 800044E4 9464000A */  lhu        $a0, 0xA($v1)
/* 50E8 800044E8 946C0008 */  lhu        $t4, 0x8($v1)
/* 50EC 800044EC 008C082A */  slt        $at, $a0, $t4
/* 50F0 800044F0 50200003 */  beql       $at, $zero, .L80004500
/* 50F4 800044F4 960D0080 */   lhu       $t5, 0x80($s0)
/* 50F8 800044F8 A4640008 */  sh         $a0, 0x8($v1)
/* 50FC 800044FC 960D0080 */  lhu        $t5, 0x80($s0)
.L80004500:
/* 5100 80004500 3044FFFF */  andi       $a0, $v0, 0xFFFF
/* 5104 80004504 31AE0002 */  andi       $t6, $t5, 0x2
/* 5108 80004508 51C00019 */  beql       $t6, $zero, .L80004570
/* 510C 8000450C 8E020010 */   lw        $v0, 0x10($s0)
/* 5110 80004510 8E230064 */  lw         $v1, 0x64($s1)
/* 5114 80004514 24840003 */  addiu      $a0, $a0, 0x3
/* 5118 80004518 00047883 */  sra        $t7, $a0, 2
/* 511C 8000451C 94790004 */  lhu        $t9, 0x4($v1)
/* 5120 80004520 25E40001 */  addiu      $a0, $t7, 0x1
/* 5124 80004524 3086FFFF */  andi       $a2, $a0, 0xFFFF
/* 5128 80004528 03264021 */  addu       $t0, $t9, $a2
/* 512C 8000452C A4680004 */  sh         $t0, 0x4($v1)
/* 5130 80004530 8E230064 */  lw         $v1, 0x64($s1)
/* 5134 80004534 02202025 */  or         $a0, $s1, $zero
/* 5138 80004538 94650006 */  lhu        $a1, 0x6($v1)
/* 513C 8000453C 94690004 */  lhu        $t1, 0x4($v1)
/* 5140 80004540 00A9082A */  slt        $at, $a1, $t1
/* 5144 80004544 10200002 */  beqz       $at, .L80004550
/* 5148 80004548 00000000 */   nop
/* 514C 8000454C A4650004 */  sh         $a1, 0x4($v1)
.L80004550:
/* 5150 80004550 0C00637D */  jal        func_80018DF4
/* 5154 80004554 24050001 */   addiu     $a1, $zero, 0x1
/* 5158 80004558 02202025 */  or         $a0, $s1, $zero
/* 515C 8000455C 24050002 */  addiu      $a1, $zero, 0x2
/* 5160 80004560 24060001 */  addiu      $a2, $zero, 0x1
/* 5164 80004564 0C007F3E */  jal        func_8001FCF8
/* 5168 80004568 2407001E */   addiu     $a3, $zero, 0x1E
/* 516C 8000456C 8E020010 */  lw         $v0, 0x10($s0)
.L80004570:
/* 5170 80004570 944A0028 */  lhu        $t2, 0x28($v0)
/* 5174 80004574 254B0001 */  addiu      $t3, $t2, 0x1
/* 5178 80004578 1000000C */  b          .L800045AC
/* 517C 8000457C A44B0028 */   sh        $t3, 0x28($v0)
/* 5180 80004580 960C0002 */  lhu        $t4, 0x2($s0)
.L80004584:
/* 5184 80004584 3C0F8008 */  lui        $t7, %hi(D_8007C998)
/* 5188 80004588 25EFC998 */  addiu      $t7, $t7, %lo(D_8007C998)
/* 518C 8000458C 000C68C0 */  sll        $t5, $t4, 3
/* 5190 80004590 01AC6821 */  addu       $t5, $t5, $t4
/* 5194 80004594 000D6880 */  sll        $t5, $t5, 2
/* 5198 80004598 01AC6821 */  addu       $t5, $t5, $t4
/* 519C 8000459C 000D68C0 */  sll        $t5, $t5, 3
/* 51A0 800045A0 25AEFEFC */  addiu      $t6, $t5, -0x104
/* 51A4 800045A4 0C002C44 */  jal        func_8000B110
/* 51A8 800045A8 01CF2021 */   addu      $a0, $t6, $t7
.L800045AC:
/* 51AC 800045AC 24180003 */  addiu      $t8, $zero, 0x3
/* 51B0 800045B0 A6180000 */  sh         $t8, 0x0($s0)
/* 51B4 800045B4 8FB90030 */  lw         $t9, 0x30($sp)
/* 51B8 800045B8 02002025 */  or         $a0, $s0, $zero
/* 51BC 800045BC 8728007A */  lh         $t0, 0x7A($t9)
/* 51C0 800045C0 A6000002 */  sh         $zero, 0x2($s0)
/* 51C4 800045C4 2509FFEC */  addiu      $t1, $t0, -0x14
/* 51C8 800045C8 0C001CF3 */  jal        func_800073CC
/* 51CC 800045CC A6090004 */   sh        $t1, 0x4($s0)
/* 51D0 800045D0 A6000002 */  sh         $zero, 0x2($s0)
/* 51D4 800045D4 0C0074D6 */  jal        func_8001D358
/* 51D8 800045D8 02202025 */   or        $a0, $s1, $zero
.L800045DC:
/* 51DC 800045DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 51E0 800045E0 8FB0001C */  lw         $s0, 0x1C($sp)
/* 51E4 800045E4 8FB10020 */  lw         $s1, 0x20($sp)
/* 51E8 800045E8 03E00008 */  jr         $ra
/* 51EC 800045EC 27BD0028 */   addiu     $sp, $sp, 0x28
