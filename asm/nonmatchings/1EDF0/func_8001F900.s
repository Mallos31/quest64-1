glabel func_8001F900
/* 20500 8001F900 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 20504 8001F904 3C028008 */  lui        $v0, %hi(brianAction)
/* 20508 8001F908 2442BAB8 */  addiu      $v0, $v0, %lo(brianAction)
/* 2050C 8001F90C AFBF0024 */  sw         $ra, 0x24($sp)
/* 20510 8001F910 C4440018 */  lwc1       $f4, 0x18($v0)
/* 20514 8001F914 3C014026 */  lui        $at, 0x4026
/* 20518 8001F918 44814800 */  mtc1       $at, $f9
/* 2051C 8001F91C 44804000 */  mtc1       $zero, $f8
/* 20520 8001F920 460021A1 */  cvt.d.s    $f6, $f4
/* 20524 8001F924 27AE0030 */  addiu      $t6, $sp, 0x30
/* 20528 8001F928 46283280 */  add.d      $f10, $f6, $f8
/* 2052C 8001F92C AFAE0010 */  sw         $t6, 0x10($sp)
/* 20530 8001F930 C44C0014 */  lwc1       $f12, 0x14($v0)
/* 20534 8001F934 8C46001C */  lw         $a2, 0x1c($v0)
/* 20538 8001F938 462053A0 */  cvt.s.d    $f14, $f10
/* 2053C 8001F93C 0C00904F */  jal        func_8002413C
/* 20540 8001F940 27A70034 */   addiu     $a3, $sp, 0x34
/* 20544 8001F944 10400016 */  beqz       $v0, .L8001F9A0
/* 20548 8001F948 3C088008 */   lui       $t0, %hi(DLPtr)
/* 2054C 8001F94C 2508B2FC */  addiu      $t0, $t0, %lo(DLPtr)
/* 20550 8001F950 8D030000 */  lw         $v1, ($t0)
/* 20554 8001F954 3C19803B */  lui        $t9, %hi(D_803A8C80)
/* 20558 8001F958 27398C80 */  addiu      $t9, $t9, %lo(D_803A8C80)
/* 2055C 8001F95C 246F0008 */  addiu      $t7, $v1, 8
/* 20560 8001F960 AD0F0000 */  sw         $t7, ($t0)
/* 20564 8001F964 3C180600 */  lui        $t8, 0x600
/* 20568 8001F968 AC780000 */  sw         $t8, ($v1)
/* 2056C 8001F96C AC790004 */  sw         $t9, 4($v1)
/* 20570 8001F970 8FA50030 */  lw         $a1, 0x30($sp)
/* 20574 8001F974 24090400 */  addiu      $t1, $zero, 0x400
/* 20578 8001F978 240A0400 */  addiu      $t2, $zero, 0x400
/* 2057C 8001F97C AFAA001C */  sw         $t2, 0x1c($sp)
/* 20580 8001F980 AFA90018 */  sw         $t1, 0x18($sp)
/* 20584 8001F984 8FA40034 */  lw         $a0, 0x34($sp)
/* 20588 8001F988 24060018 */  addiu      $a2, $zero, 0x18
/* 2058C 8001F98C 2407001E */  addiu      $a3, $zero, 0x1e
/* 20590 8001F990 AFA00010 */  sw         $zero, 0x10($sp)
/* 20594 8001F994 AFA00014 */  sw         $zero, 0x14($sp)
/* 20598 8001F998 0C0083E3 */  jal        func_80020F8C
/* 2059C 8001F99C 24A5FFE2 */   addiu     $a1, $a1, -0x1e
.L8001F9A0:
/* 205A0 8001F9A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 205A4 8001F9A4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 205A8 8001F9A8 03E00008 */  jr         $ra
/* 205AC 8001F9AC 00000000 */   nop
