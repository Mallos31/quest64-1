glabel func_800186B4
/* 192B4 800186B4 3C0E8008 */  lui        $t6, %hi(D_80087210)
/* 192B8 800186B8 8DCE7210 */  lw         $t6, %lo(D_80087210)($t6)
/* 192BC 800186BC 3C038008 */  lui        $v1, %hi(D_80087210)
/* 192C0 800186C0 24020007 */  addiu      $v0, $zero, 0x7
/* 192C4 800186C4 11C00007 */  beqz       $t6, .L800186E4
/* 192C8 800186C8 24637210 */   addiu     $v1, $v1, %lo(D_80087210)
/* 192CC 800186CC 2442FFFF */  addiu      $v0, $v0, -0x1
.L800186D0:
/* 192D0 800186D0 10400004 */  beqz       $v0, .L800186E4
/* 192D4 800186D4 24630008 */   addiu     $v1, $v1, 0x8
/* 192D8 800186D8 8C6F0000 */  lw         $t7, 0x0($v1)
/* 192DC 800186DC 55E0FFFC */  bnel       $t7, $zero, .L800186D0
/* 192E0 800186E0 2442FFFF */   addiu     $v0, $v0, -0x1
.L800186E4:
/* 192E4 800186E4 24180004 */  addiu      $t8, $zero, 0x4
/* 192E8 800186E8 AC780000 */  sw         $t8, 0x0($v1)
/* 192EC 800186EC AC640004 */  sw         $a0, 0x4($v1)
/* 192F0 800186F0 03E00008 */  jr         $ra
/* 192F4 800186F4 00000000 */   nop
