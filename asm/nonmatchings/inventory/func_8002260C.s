glabel func_8002260C
/* 2320C 8002260C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23210 80022610 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23214 80022614 AFA5001C */  sw         $a1, 0x1c($sp)
/* 23218 80022618 8FAE001C */  lw         $t6, 0x1c($sp)
/* 2321C 8002261C 00003025 */  or         $a2, $zero, $zero
/* 23220 80022620 24070004 */  addiu      $a3, $zero, 4
/* 23224 80022624 0C0052A6 */  jal        func_80014A98
/* 23228 80022628 85C50004 */   lh        $a1, 4($t6)
/* 2322C 8002262C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23230 80022630 27BD0018 */  addiu      $sp, $sp, 0x18
/* 23234 80022634 03E00008 */  jr         $ra
/* 23238 80022638 00000000 */   nop