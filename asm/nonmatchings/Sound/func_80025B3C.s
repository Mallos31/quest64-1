glabel func_80025B3C
/* 2673C 80025B3C 3C058005 */  lui        $a1, %hi(D_80053970)
/* 26740 80025B40 24A53970 */  addiu      $a1, $a1, %lo(D_80053970)
/* 26744 80025B44 8CA20000 */  lw         $v0, ($a1)
/* 26748 80025B48 3C018005 */  lui        $at, %hi(playingSoundEffectTbl)
/* 2674C 80025B4C 240E0040 */  addiu      $t6, $zero, 0x40
/* 26750 80025B50 00021880 */  sll        $v1, $v0, 2
/* 26754 80025B54 00230821 */  addu       $at, $at, $v1
/* 26758 80025B58 AC24390C */  sw         $a0, %lo(playingSoundEffectTbl)($at)
/* 2675C 80025B5C 3C018005 */  lui        $at, %hi(D_8005392C)
/* 26760 80025B60 00230821 */  addu       $at, $at, $v1
/* 26764 80025B64 AC20392C */  sw         $zero, %lo(D_8005392C)($at)
/* 26768 80025B68 3C018005 */  lui        $at, %hi(D_8005394C)
/* 2676C 80025B6C 00230821 */  addu       $at, $at, $v1
/* 26770 80025B70 24420001 */  addiu      $v0, $v0, 1
/* 26774 80025B74 AC2E394C */  sw         $t6, %lo(D_8005394C)($at)
/* 26778 80025B78 304F0007 */  andi       $t7, $v0, 7
/* 2677C 80025B7C ACAF0000 */  sw         $t7, ($a1)
/* 26780 80025B80 3C018009 */  lui        $at, %hi(D_8008FCB0)
/* 26784 80025B84 03E00008 */  jr         $ra
/* 26788 80025B88 AC22FCB0 */   sw        $v0, %lo(D_8008FCB0)($at)