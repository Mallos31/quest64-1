glabel func_800213D8
/* 21FD8 800213D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21FDC 800213DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 21FE0 800213E0 AFA40018 */  sw         $a0, 0x18($sp)
/* 21FE4 800213E4 308600FF */  andi       $a2, $a0, 0xff
/* 21FE8 800213E8 00A03825 */  or         $a3, $a1, $zero
/* 21FEC 800213EC 00067080 */  sll        $t6, $a2, 2
/* 21FF0 800213F0 01C67023 */  subu       $t6, $t6, $a2
/* 21FF4 800213F4 3C0F803B */  lui        $t7, %hi(ItemData)
/* 21FF8 800213F8 25EF91F0 */  addiu      $t7, $t7, %lo(ItemData)
/* 21FFC 800213FC 000E7080 */  sll        $t6, $t6, 2
/* 22000 80021400 01CF2821 */  addu       $a1, $t6, $t7
/* 22004 80021404 94B80002 */  lhu        $t8, 2($a1)
/* 22008 80021408 3C018005 */  lui        $at, %hi(ptr_someItemFuncs)
/* 2200C 8002140C 00E02025 */  or         $a0, $a3, $zero
/* 22010 80021410 0018C880 */  sll        $t9, $t8, 2
/* 22014 80021414 00390821 */  addu       $at, $at, $t9
/* 22018 80021418 8C39D490 */  lw         $t9, %lo(ptr_someItemFuncs)($at)
/* 2201C 8002141C 0320F809 */  jalr       $t9
/* 22020 80021420 00000000 */   nop
/* 22024 80021424 8FBF0014 */  lw         $ra, 0x14($sp)
/* 22028 80021428 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2202C 8002142C 03E00008 */  jr         $ra
/* 22030 80021430 00000000 */   nop
