glabel checkIfDayHasPassed_and_Inc
/* 11110 80010510 3C058008 */  lui        $a1, %hi(currentTime)
/* 11114 80010514 24A559D0 */  addiu      $a1, $a1, %lo(currentTime)
/* 11118 80010518 ACA40000 */  sw         $a0, ($a1)
/* 1111C 8001051C 3C038008 */  lui        $v1, %hi(dayLength)
/* 11120 80010520 8C6359D4 */  lw         $v1, %lo(dayLength)($v1)
/* 11124 80010524 3C068008 */  lui        $a2, %hi(CurrentDay)
/* 11128 80010528 24C659E0 */  addiu      $a2, $a2, %lo(CurrentDay)
/* 1112C 8001052C 0083082A */  slt        $at, $a0, $v1
/* 11130 80010530 14200007 */  bnez       $at, .L80010550
/* 11134 80010534 00837023 */   subu      $t6, $a0, $v1
/* 11138 80010538 94C40000 */  lhu        $a0, ($a2)
/* 1113C 8001053C ACAE0000 */  sw         $t6, ($a1)
/* 11140 80010540 2881270F */  slti       $at, $a0, 0x270f
/* 11144 80010544 10200002 */  beqz       $at, .L80010550
/* 11148 80010548 248F0001 */   addiu     $t7, $a0, 1
/* 1114C 8001054C A4CF0000 */  sh         $t7, ($a2)
.L80010550:
/* 11150 80010550 8CB80000 */  lw         $t8, ($a1)
/* 11154 80010554 3C018008 */  lui        $at, %hi(tempTime)
/* 11158 80010558 AC3859D8 */  sw         $t8, %lo(tempTime)($at)
/* 1115C 8001055C 03E00008 */  jr         $ra
/* 11160 80010560 00000000 */   nop