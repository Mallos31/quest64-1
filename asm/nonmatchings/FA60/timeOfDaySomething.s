glabel timeOfDaySomething
/* 10D50 80010150 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10D54 80010154 3C078005 */  lui        $a3, %hi(D_8004C454)
/* 10D58 80010158 24E7C454 */  addiu      $a3, $a3, %lo(D_8004C454)
/* 10D5C 8001015C AFBF0014 */  sw         $ra, 0x14($sp)
/* 10D60 80010160 3C0E8005 */  lui        $t6, %hi(D_8004C454)
/* 10D64 80010164 8DCEC454 */  lw         $t6, %lo(D_8004C454)($t6)
/* 10D68 80010168 3C018008 */  lui        $at, %hi(D_80085384)
/* 10D6C 8001016C 3C088008 */  lui        $t0, %hi(currentTime)
/* 10D70 80010170 250859D0 */  addiu      $t0, $t0, %lo(currentTime)
/* 10D74 80010174 AC2E5384 */  sw         $t6, %lo(D_80085384)($at)
/* 10D78 80010178 8D030000 */  lw         $v1, ($t0)
/* 10D7C 8001017C 00E02825 */  or         $a1, $a3, $zero
/* 10D80 80010180 24040003 */  addiu      $a0, $zero, 3
/* 10D84 80010184 006E082A */  slt        $at, $v1, $t6
/* 10D88 80010188 10200009 */  beqz       $at, .L800101B0
/* 10D8C 8001018C 3C0B8008 */   lui       $t3, 0x8008
/* 10D90 80010190 00801025 */  or         $v0, $a0, $zero
.L80010194:
/* 10D94 80010194 24A5FFF4 */  addiu      $a1, $a1, -0xc
/* 10D98 80010198 10800005 */  beqz       $a0, .L800101B0
/* 10D9C 8001019C 2484FFFF */   addiu     $a0, $a0, -1
/* 10DA0 800101A0 8CAF0000 */  lw         $t7, ($a1)
/* 10DA4 800101A4 006F082A */  slt        $at, $v1, $t7
/* 10DA8 800101A8 5420FFFA */  bnel       $at, $zero, .L80010194
/* 10DAC 800101AC 00801025 */   or        $v0, $a0, $zero
.L800101B0:
/* 10DB0 800101B0 04810007 */  bgez       $a0, .L800101D0
/* 10DB4 800101B4 256B14D8 */   addiu     $t3, $t3, 0x14d8
/* 10DB8 800101B8 3C068008 */  lui        $a2, %hi(skyboxState)
/* 10DBC 800101BC 24C65380 */  addiu      $a2, $a2, %lo(skyboxState)
/* 10DC0 800101C0 24180003 */  addiu      $t8, $zero, 3
/* 10DC4 800101C4 00E02825 */  or         $a1, $a3, $zero
/* 10DC8 800101C8 10000004 */  b          .L800101DC
/* 10DCC 800101CC ACD80000 */   sw        $t8, ($a2)
.L800101D0:
/* 10DD0 800101D0 3C068008 */  lui        $a2, %hi(skyboxState)
/* 10DD4 800101D4 24C65380 */  addiu      $a2, $a2, %lo(skyboxState)
/* 10DD8 800101D8 ACC40000 */  sw         $a0, ($a2)
.L800101DC:
/* 10DDC 800101DC 8CA90004 */  lw         $t1, 4($a1)
/* 10DE0 800101E0 3C038008 */  lui        $v1, %hi(D_800812D8)
/* 10DE4 800101E4 246312D8 */  addiu      $v1, $v1, %lo(D_800812D8)
/* 10DE8 800101E8 00095240 */  sll        $t2, $t1, 9
/* 10DEC 800101EC 014B1021 */  addu       $v0, $t2, $t3
/* 10DF0 800101F0 24040100 */  addiu      $a0, $zero, 0x100
.L800101F4:
/* 10DF4 800101F4 944C0000 */  lhu        $t4, ($v0)
/* 10DF8 800101F8 2484FFFC */  addiu      $a0, $a0, -4
/* 10DFC 800101FC 24630008 */  addiu      $v1, $v1, 8
/* 10E00 80010200 A46CFFF8 */  sh         $t4, -8($v1)
/* 10E04 80010204 944D0002 */  lhu        $t5, 2($v0)
/* 10E08 80010208 24420008 */  addiu      $v0, $v0, 8
/* 10E0C 8001020C A46DFFFA */  sh         $t5, -6($v1)
/* 10E10 80010210 944EFFFC */  lhu        $t6, -4($v0)
/* 10E14 80010214 A46EFFFC */  sh         $t6, -4($v1)
/* 10E18 80010218 944FFFFE */  lhu        $t7, -2($v0)
/* 10E1C 8001021C 1480FFF5 */  bnez       $a0, .L800101F4
/* 10E20 80010220 A46FFFFE */   sh        $t7, -2($v1)
/* 10E24 80010224 3C018008 */  lui        $at, %hi(D_8008538C)
/* 10E28 80010228 AC20538C */  sw         $zero, %lo(D_8008538C)($at)
/* 10E2C 8001022C 8CD80000 */  lw         $t8, ($a2)
/* 10E30 80010230 3C0A8008 */  lui        $t2, 0x8008
/* 10E34 80010234 3C0D8008 */  lui        $t5, 0x8008
/* 10E38 80010238 27190001 */  addiu      $t9, $t8, 1
/* 10E3C 8001023C 2B210004 */  slti       $at, $t9, 4
/* 10E40 80010240 14200002 */  bnez       $at, .L8001024C
/* 10E44 80010244 ACD90000 */   sw        $t9, ($a2)
/* 10E48 80010248 ACC00000 */  sw         $zero, ($a2)
.L8001024C:
/* 10E4C 8001024C 954A4F12 */  lhu        $t2, 0x4f12($t2)
/* 10E50 80010250 314B0002 */  andi       $t3, $t2, 2
/* 10E54 80010254 11600008 */  beqz       $t3, .L80010278
/* 10E58 80010258 00000000 */   nop
/* 10E5C 8001025C 8D0C0000 */  lw         $t4, ($t0)
/* 10E60 80010260 3C018008 */  lui        $at, %hi(tempTime)
/* 10E64 80010264 8DAD59D4 */  lw         $t5, 0x59d4($t5)
/* 10E68 80010268 AC2C59D8 */  sw         $t4, %lo(tempTime)($at)
/* 10E6C 8001026C 3C018008 */  lui        $at, %hi(tempDayLength)
/* 10E70 80010270 1000000F */  b          .L800102B0
/* 10E74 80010274 AC2D59DC */   sw        $t5, %lo(tempDayLength)($at)
.L80010278:
/* 10E78 80010278 3C028008 */  lui        $v0, %hi(D_800859E4)
/* 10E7C 8001027C 8C4259E4 */  lw         $v0, %lo(D_800859E4)($v0)
/* 10E80 80010280 3C018008 */  lui        $at, %hi(tempTime)
/* 10E84 80010284 8C4F0004 */  lw         $t7, 4($v0)
/* 10E88 80010288 8C4E0000 */  lw         $t6, ($v0)
/* 10E8C 8001028C AC2059D8 */  sw         $zero, %lo(tempTime)($at)
/* 10E90 80010290 000FC100 */  sll        $t8, $t7, 4
/* 10E94 80010294 030FC023 */  subu       $t8, $t8, $t7
/* 10E98 80010298 0018C080 */  sll        $t8, $t8, 2
/* 10E9C 8001029C 01D81821 */  addu       $v1, $t6, $t8
/* 10EA0 800102A0 8C79FFC4 */  lw         $t9, -0x3c($v1)
/* 10EA4 800102A4 3C018008 */  lui        $at, %hi(tempDayLength)
/* 10EA8 800102A8 2463FFC4 */  addiu      $v1, $v1, -0x3c
/* 10EAC 800102AC AC3959DC */  sw         $t9, %lo(tempDayLength)($at)
.L800102B0:
/* 10EB0 800102B0 0C004434 */  jal        VOID_FUN_UNK_setsSeveralBytesToZero
/* 10EB4 800102B4 00000000 */   nop
/* 10EB8 800102B8 3C018008 */  lui        $at, %hi(D_80085388)
/* 10EBC 800102BC A4205388 */  sh         $zero, %lo(D_80085388)($at)
/* 10EC0 800102C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10EC4 800102C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10EC8 800102C8 03E00008 */  jr         $ra
/* 10ECC 800102CC 00000000 */   nop
