glabel func_8001C560
/* 1D160 8001C560 3C028009 */  lui        $v0, %hi(D_8008C592)
/* 1D164 8001C564 2442C592 */  addiu      $v0, $v0, %lo(D_8008C592)
/* 1D168 8001C568 944E0000 */  lhu        $t6, 0x0($v0)
/* 1D16C 8001C56C 44802000 */  mtc1       $zero, $f4
/* 1D170 8001C570 3C188008 */  lui        $t8, %hi(gAllowBattles)
/* 1D174 8001C574 31CF8000 */  andi       $t7, $t6, 0x8000
/* 1D178 8001C578 A44F0000 */  sh         $t7, 0x0($v0)
/* 1D17C 8001C57C 97184F10 */  lhu        $t8, %lo(gAllowBattles)($t8)
/* 1D180 8001C580 3C018009 */  lui        $at, %hi(D_8008C574)
/* 1D184 8001C584 E424C574 */  swc1       $f4, %lo(D_8008C574)($at)
/* 1D188 8001C588 3C018009 */  lui        $at, %hi(D_8008C578)
/* 1D18C 8001C58C 33190001 */  andi       $t9, $t8, 0x1
/* 1D190 8001C590 13200016 */  beqz       $t9, .L8001C5EC
/* 1D194 8001C594 A420C578 */   sh        $zero, %lo(D_8008C578)($at)
/* 1D198 8001C598 3C028008 */  lui        $v0, %hi(gMapData)
/* 1D19C 8001C59C 8C424F18 */  lw         $v0, %lo(gMapData)($v0)
/* 1D1A0 8001C5A0 3C048008 */  lui        $a0, %hi(gNextSubmap)
/* 1D1A4 8001C5A4 3C018009 */  lui        $at, %hi(D_8008C560)
/* 1D1A8 8001C5A8 8C430030 */  lw         $v1, 0x30($v0)
/* 1D1AC 8001C5AC 1060000C */  beqz       $v1, .L8001C5E0
/* 1D1B0 8001C5B0 00000000 */   nop
/* 1D1B4 8001C5B4 8C844EE8 */  lw         $a0, %lo(gNextSubmap)($a0)
/* 1D1B8 8001C5B8 3C018009 */  lui        $at, %hi(D_8008C560)
/* 1D1BC 8001C5BC 000440C0 */  sll        $t0, $a0, 3
/* 1D1C0 8001C5C0 00684821 */  addu       $t1, $v1, $t0
/* 1D1C4 8001C5C4 AC29C560 */  sw         $t1, %lo(D_8008C560)($at)
/* 1D1C8 8001C5C8 8C4A0034 */  lw         $t2, 0x34($v0)
/* 1D1CC 8001C5CC 00045900 */  sll        $t3, $a0, 4
/* 1D1D0 8001C5D0 3C018009 */  lui        $at, %hi(D_8008C564)
/* 1D1D4 8001C5D4 014B6021 */  addu       $t4, $t2, $t3
/* 1D1D8 8001C5D8 03E00008 */  jr         $ra
/* 1D1DC 8001C5DC AC2CC564 */   sw        $t4, %lo(D_8008C564)($at)
.L8001C5E0:
/* 1D1E0 8001C5E0 AC20C560 */  sw         $zero, %lo(D_8008C560)($at)
/* 1D1E4 8001C5E4 3C018009 */  lui        $at, %hi(D_8008C564)
/* 1D1E8 8001C5E8 AC20C564 */  sw         $zero, %lo(D_8008C564)($at)
.L8001C5EC:
/* 1D1EC 8001C5EC 03E00008 */  jr         $ra
/* 1D1F0 8001C5F0 00000000 */   nop
