glabel UNK_calledWhenGettingNearDoor_RENAME
/* 10C80 80010080 3C038008 */  lui        $v1, %hi(D_80085350)
/* 10C84 80010084 3C058008 */  lui        $a1, %hi(temp_CurrMap)
/* 10C88 80010088 24A55368 */  addiu      $a1, $a1, %lo(temp_CurrMap)
/* 10C8C 8001008C 24635350 */  addiu      $v1, $v1, %lo(D_80085350)
/* 10C90 80010090 248E001E */  addiu      $t6, $a0, 0x1e
/* 10C94 80010094 AC6E0000 */  sw         $t6, ($v1)
/* 10C98 80010098 95CF0000 */  lhu        $t7, ($t6)
/* 10C9C 8001009C ACAF0000 */  sw         $t7, ($a1)
/* 10CA0 800100A0 95D80002 */  lhu        $t8, 2($t6)
/* 10CA4 800100A4 ACB80004 */  sw         $t8, 4($a1)
/* 10CA8 800100A8 95D90004 */  lhu        $t9, 4($t6)
/* 10CAC 800100AC ACB90008 */  sw         $t9, 8($a1)
/* 10CB0 800100B0 94880014 */  lhu        $t0, 0x14($a0)
/* 10CB4 800100B4 A4A8000C */  sh         $t0, 0xc($a1)
/* 10CB8 800100B8 9489001A */  lhu        $t1, 0x1a($a0)
/* 10CBC 800100BC ACA90010 */  sw         $t1, 0x10($a1)
/* 10CC0 800100C0 C4840008 */  lwc1       $f4, 8($a0)
/* 10CC4 800100C4 E4A40014 */  swc1       $f4, 0x14($a1)
/* 10CC8 800100C8 03E00008 */  jr         $ra
/* 10CCC 800100CC 00000000 */   nop
