glabel func_80019354
/* 19F54 80019354 44866000 */  mtc1       $a2, $f12
/* 19F58 80019358 44877000 */  mtc1       $a3, $f14
/* 19F5C 8001935C 3C0E8008 */  lui        $t6, %hi(D_800874E8)
/* 19F60 80019360 8DCE74E8 */  lw         $t6, %lo(D_800874E8)($t6)
/* 19F64 80019364 3C028008 */  lui        $v0, %hi(D_800874E8)
/* 19F68 80019368 244274E8 */  addiu      $v0, $v0, %lo(D_800874E8)
/* 19F6C 8001936C 11C00007 */  beqz       $t6, .L8001938C
/* 19F70 80019370 24030007 */   addiu     $v1, $zero, 0x7
/* 19F74 80019374 2463FFFF */  addiu      $v1, $v1, -0x1
.L80019378:
/* 19F78 80019378 10600004 */  beqz       $v1, .L8001938C
/* 19F7C 8001937C 24420018 */   addiu     $v0, $v0, 0x18
/* 19F80 80019380 8C4F0000 */  lw         $t7, 0x0($v0)
/* 19F84 80019384 55E0FFFC */  bnel       $t7, $zero, .L80019378
/* 19F88 80019388 2463FFFF */   addiu     $v1, $v1, -0x1
.L8001938C:
/* 19F8C 8001938C AC450000 */  sw         $a1, 0x0($v0)
/* 19F90 80019390 AC440004 */  sw         $a0, 0x4($v0)
/* 19F94 80019394 E44C0008 */  swc1       $f12, 0x8($v0)
/* 19F98 80019398 E44E000C */  swc1       $f14, 0xC($v0)
/* 19F9C 8001939C C7A40010 */  lwc1       $f4, 0x10($sp)
/* 19FA0 800193A0 E4440010 */  swc1       $f4, 0x10($v0)
/* 19FA4 800193A4 C7A60014 */  lwc1       $f6, 0x14($sp)
/* 19FA8 800193A8 E4460014 */  swc1       $f6, 0x14($v0)
/* 19FAC 800193AC 03E00008 */  jr         $ra
/* 19FB0 800193B0 00000000 */   nop
