glabel func_800210FC
/* 21CFC 800210FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 21D00 80021100 AFBF0024 */  sw         $ra, 0x24($sp)
/* 21D04 80021104 AFA5002C */  sw         $a1, 0x2c($sp)
/* 21D08 80021108 AFA60030 */  sw         $a2, 0x30($sp)
/* 21D0C 8002110C AFA70034 */  sw         $a3, 0x34($sp)
/* 21D10 80021110 8FAE0038 */  lw         $t6, 0x38($sp)
/* 21D14 80021114 8FA5003C */  lw         $a1, 0x3c($sp)
/* 21D18 80021118 8FA60040 */  lw         $a2, 0x40($sp)
/* 21D1C 8002111C 8FA70034 */  lw         $a3, 0x34($sp)
/* 21D20 80021120 0C00838B */  jal        func_80020E2C
/* 21D24 80021124 AFAE0010 */   sw        $t6, 0x10($sp)
/* 21D28 80021128 8FAF003C */  lw         $t7, 0x3c($sp)
/* 21D2C 8002112C 8FB80040 */  lw         $t8, 0x40($sp)
/* 21D30 80021130 8FB90044 */  lw         $t9, 0x44($sp)
/* 21D34 80021134 8FA80048 */  lw         $t0, 0x48($sp)
/* 21D38 80021138 8FA4002C */  lw         $a0, 0x2c($sp)
/* 21D3C 8002113C 8FA50030 */  lw         $a1, 0x30($sp)
/* 21D40 80021140 8FA60034 */  lw         $a2, 0x34($sp)
/* 21D44 80021144 8FA70038 */  lw         $a3, 0x38($sp)
/* 21D48 80021148 AFAF0010 */  sw         $t7, 0x10($sp)
/* 21D4C 8002114C AFB80014 */  sw         $t8, 0x14($sp)
/* 21D50 80021150 AFB90018 */  sw         $t9, 0x18($sp)
/* 21D54 80021154 0C0083E3 */  jal        func_80020F8C
/* 21D58 80021158 AFA8001C */   sw        $t0, 0x1c($sp)
/* 21D5C 8002115C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 21D60 80021160 27BD0028 */  addiu      $sp, $sp, 0x28
/* 21D64 80021164 03E00008 */  jr         $ra
/* 21D68 80021168 00000000 */   nop
/* 21D6C 8002116C 00000000 */  nop