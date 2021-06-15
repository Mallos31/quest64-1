glabel changeTimeOfDay
/* 10ED0 800102D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10ED4 800102D4 3C088008 */  lui        $t0, %hi(tempTime)
/* 10ED8 800102D8 250859D8 */  addiu      $t0, $t0, %lo(tempTime)
/* 10EDC 800102DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 10EE0 800102E0 3C058008 */  lui        $a1, %hi(D_800859E4)
/* 10EE4 800102E4 8CA559E4 */  lw         $a1, %lo(D_800859E4)($a1)
/* 10EE8 800102E8 0C004159 */  jal        setLightingRGB
/* 10EEC 800102EC 8D040000 */   lw        $a0, ($t0)
/* 10EF0 800102F0 3C028008 */  lui        $v0, %hi(D_8008538C)
/* 10EF4 800102F4 2442538C */  addiu      $v0, $v0, %lo(D_8008538C)
/* 10EF8 800102F8 8C440000 */  lw         $a0, ($v0)
/* 10EFC 800102FC 3C088008 */  lui        $t0, %hi(tempTime)
/* 10F00 80010300 250859D8 */  addiu      $t0, $t0, %lo(tempTime)
/* 10F04 80010304 1080000C */  beqz       $a0, .L80010338
/* 10F08 80010308 3C078008 */   lui       $a3, 0x8008
/* 10F0C 8001030C 248EFFFF */  addiu      $t6, $a0, -1
/* 10F10 80010310 AC4E0000 */  sw         $t6, ($v0)
/* 10F14 80010314 05C10003 */  bgez       $t6, .L80010324
/* 10F18 80010318 01C02025 */   or        $a0, $t6, $zero
/* 10F1C 8001031C AC400000 */  sw         $zero, ($v0)
/* 10F20 80010320 00002025 */  or         $a0, $zero, $zero
.L80010324:
/* 10F24 80010324 0C0043B1 */  jal        func_80010EC4
/* 10F28 80010328 00000000 */   nop
/* 10F2C 8001032C 3C088008 */  lui        $t0, %hi(tempTime)
/* 10F30 80010330 10000027 */  b          .L800103D0
/* 10F34 80010334 250859D8 */   addiu     $t0, $t0, %lo(tempTime)
.L80010338:
/* 10F38 80010338 24E75380 */  addiu      $a3, $a3, 0x5380
/* 10F3C 8001033C 8CE40000 */  lw         $a0, ($a3)
/* 10F40 80010340 3C188005 */  lui        $t8, %hi(D_8004C430)
/* 10F44 80010344 2718C430 */  addiu      $t8, $t8, %lo(D_8004C430)
/* 10F48 80010348 00047880 */  sll        $t7, $a0, 2
/* 10F4C 8001034C 01E47823 */  subu       $t7, $t7, $a0
/* 10F50 80010350 000F7880 */  sll        $t7, $t7, 2
/* 10F54 80010354 01F81821 */  addu       $v1, $t7, $t8
/* 10F58 80010358 8C790000 */  lw         $t9, ($v1)
/* 10F5C 8001035C 8D020000 */  lw         $v0, ($t0)
/* 10F60 80010360 0059082A */  slt        $at, $v0, $t9
/* 10F64 80010364 1420001A */  bnez       $at, .L800103D0
/* 10F68 80010368 00000000 */   nop
/* 10F6C 8001036C 14800005 */  bnez       $a0, .L80010384
/* 10F70 80010370 3C098008 */   lui       $t1, %hi(D_80085384)
/* 10F74 80010374 8D295384 */  lw         $t1, %lo(D_80085384)($t1)
/* 10F78 80010378 0049082A */  slt        $at, $v0, $t1
/* 10F7C 8001037C 10200014 */  beqz       $at, .L800103D0
/* 10F80 80010380 00000000 */   nop
.L80010384:
/* 10F84 80010384 8C6B0004 */  lw         $t3, 4($v1)
/* 10F88 80010388 3C0D8008 */  lui        $t5, %hi(D_800814D8)
/* 10F8C 8001038C 25AD14D8 */  addiu      $t5, $t5, %lo(D_800814D8)
/* 10F90 80010390 3C068008 */  lui        $a2, %hi(D_800812D8)
/* 10F94 80010394 000B6240 */  sll        $t4, $t3, 9
/* 10F98 80010398 018D2821 */  addu       $a1, $t4, $t5
/* 10F9C 8001039C 24C612D8 */  addiu      $a2, $a2, %lo(D_800812D8)
/* 10FA0 800103A0 0C00439C */  jal        func_80010E70
/* 10FA4 800103A4 8C640008 */   lw        $a0, 8($v1)
/* 10FA8 800103A8 3C078008 */  lui        $a3, %hi(skyboxState)
/* 10FAC 800103AC 24E75380 */  addiu      $a3, $a3, %lo(skyboxState)
/* 10FB0 800103B0 8CEE0000 */  lw         $t6, ($a3)
/* 10FB4 800103B4 3C088008 */  lui        $t0, %hi(tempTime)
/* 10FB8 800103B8 250859D8 */  addiu      $t0, $t0, %lo(tempTime)
/* 10FBC 800103BC 25CF0001 */  addiu      $t7, $t6, 1
/* 10FC0 800103C0 29E10004 */  slti       $at, $t7, 4
/* 10FC4 800103C4 14200002 */  bnez       $at, .L800103D0
/* 10FC8 800103C8 ACEF0000 */   sw        $t7, ($a3)
/* 10FCC 800103CC ACE00000 */  sw         $zero, ($a3)
.L800103D0:
/* 10FD0 800103D0 3C198008 */  lui        $t9, %hi(mapFlags)
/* 10FD4 800103D4 97394EE0 */  lhu        $t9, %lo(mapFlags)($t9)
/* 10FD8 800103D8 3C0A8009 */  lui        $t2, %hi(BattleState)
/* 10FDC 800103DC 3C0B8008 */  lui        $t3, 0x8008
/* 10FE0 800103E0 33290005 */  andi       $t1, $t9, 5
/* 10FE4 800103E4 11200024 */  beqz       $t1, .L80010478
/* 10FE8 800103E8 00000000 */   nop
/* 10FEC 800103EC 954AC592 */  lhu        $t2, %lo(BattleState)($t2)
/* 10FF0 800103F0 3C0C8008 */  lui        $t4, %hi(HUDState)
/* 10FF4 800103F4 314B0001 */  andi       $t3, $t2, 1
/* 10FF8 800103F8 15600030 */  bnez       $t3, .L800104BC
/* 10FFC 800103FC 00000000 */   nop
/* 11000 80010400 8D8CB2E4 */  lw         $t4, %lo(HUDState)($t4)
/* 11004 80010404 3C0E8009 */  lui        $t6, %hi(D_8008C638)
/* 11008 80010408 318D0003 */  andi       $t5, $t4, 3
/* 1100C 8001040C 15A0002B */  bnez       $t5, .L800104BC
/* 11010 80010410 00000000 */   nop
/* 11014 80010414 8DCEC638 */  lw         $t6, %lo(D_8008C638)($t6)
/* 11018 80010418 3C028008 */  lui        $v0, %hi(currentTime)
/* 1101C 8001041C 244259D0 */  addiu      $v0, $v0, %lo(currentTime)
/* 11020 80010420 15C00026 */  bnez       $t6, .L800104BC
/* 11024 80010424 00000000 */   nop
/* 11028 80010428 8C4F0000 */  lw         $t7, ($v0)
/* 1102C 8001042C 3C048008 */  lui        $a0, %hi(dayLength)
/* 11030 80010430 3C068008 */  lui        $a2, %hi(CurrentDay)
/* 11034 80010434 25F80001 */  addiu      $t8, $t7, 1
/* 11038 80010438 AC580000 */  sw         $t8, ($v0)
/* 1103C 8001043C 8C8459D4 */  lw         $a0, %lo(dayLength)($a0)
/* 11040 80010440 24C659E0 */  addiu      $a2, $a2, %lo(CurrentDay)
/* 11044 80010444 0304082A */  slt        $at, $t8, $a0
/* 11048 80010448 54200009 */  bnel       $at, $zero, .L80010470
/* 1104C 8001044C 8C4A0000 */   lw        $t2, ($v0)
/* 11050 80010450 94C50000 */  lhu        $a1, ($a2)
/* 11054 80010454 0304C823 */  subu       $t9, $t8, $a0
/* 11058 80010458 AC590000 */  sw         $t9, ($v0)
/* 1105C 8001045C 28A103E7 */  slti       $at, $a1, 0x3e7
/* 11060 80010460 10200002 */  beqz       $at, .L8001046C
/* 11064 80010464 24A90001 */   addiu     $t1, $a1, 1
/* 11068 80010468 A4C90000 */  sh         $t1, ($a2)
.L8001046C:
/* 1106C 8001046C 8C4A0000 */  lw         $t2, ($v0)
.L80010470:
/* 11070 80010470 10000012 */  b          .L800104BC
/* 11074 80010474 AD0A0000 */   sw        $t2, ($t0)
.L80010478:
/* 11078 80010478 956B4F12 */  lhu        $t3, 0x4f12($t3)
/* 1107C 8001047C 3C0D8009 */  lui        $t5, %hi(D_8008C638)
/* 11080 80010480 316C0001 */  andi       $t4, $t3, 1
/* 11084 80010484 1180000D */  beqz       $t4, .L800104BC
/* 11088 80010488 00000000 */   nop
/* 1108C 8001048C 8DADC638 */  lw         $t5, %lo(D_8008C638)($t5)
/* 11090 80010490 15A0000A */  bnez       $t5, .L800104BC
/* 11094 80010494 00000000 */   nop
/* 11098 80010498 8D0E0000 */  lw         $t6, ($t0)
/* 1109C 8001049C 3C038008 */  lui        $v1, %hi(tempDayLength)
/* 110A0 800104A0 25CF0001 */  addiu      $t7, $t6, 1
/* 110A4 800104A4 AD0F0000 */  sw         $t7, ($t0)
/* 110A8 800104A8 8C6359DC */  lw         $v1, %lo(tempDayLength)($v1)
/* 110AC 800104AC 01E3082A */  slt        $at, $t7, $v1
/* 110B0 800104B0 14200002 */  bnez       $at, .L800104BC
/* 110B4 800104B4 01E3C023 */   subu      $t8, $t7, $v1
/* 110B8 800104B8 AD180000 */  sw         $t8, ($t0)
.L800104BC:
/* 110BC 800104BC 3C038008 */  lui        $v1, %hi(D_80085388)
/* 110C0 800104C0 24635388 */  addiu      $v1, $v1, %lo(D_80085388)
/* 110C4 800104C4 94790000 */  lhu        $t9, ($v1)
/* 110C8 800104C8 3C048008 */  lui        $a0, %hi(D_800859E2)
/* 110CC 800104CC 248459E2 */  addiu      $a0, $a0, %lo(D_800859E2)
/* 110D0 800104D0 27290001 */  addiu      $t1, $t9, 1
/* 110D4 800104D4 312AFFFF */  andi       $t2, $t1, 0xffff
/* 110D8 800104D8 29410709 */  slti       $at, $t2, 0x709
/* 110DC 800104DC 14200008 */  bnez       $at, .L80010500
/* 110E0 800104E0 A4690000 */   sh        $t1, ($v1)
/* 110E4 800104E4 94820000 */  lhu        $v0, ($a0)
/* 110E8 800104E8 3401EA23 */  ori        $at, $zero, 0xea23
/* 110EC 800104EC A4600000 */  sh         $zero, ($v1)
/* 110F0 800104F0 0041082A */  slt        $at, $v0, $at
/* 110F4 800104F4 10200002 */  beqz       $at, .L80010500
/* 110F8 800104F8 244B0001 */   addiu     $t3, $v0, 1
/* 110FC 800104FC A48B0000 */  sh         $t3, ($a0)
.L80010500:
/* 11100 80010500 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11104 80010504 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11108 80010508 03E00008 */  jr         $ra
/* 1110C 8001050C 00000000 */   nop
