glabel func_80025938
/* 26538 80025938 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2653C 8002593C AFBF0014 */  sw         $ra, 0x14($sp)
/* 26540 80025940 3C0E8005 */  lui        $t6, %hi(D_8005398C)
/* 26544 80025944 8DCE398C */  lw         $t6, %lo(D_8005398C)($t6)
/* 26548 80025948 3C0F8005 */  lui        $t7, %hi(D_80053990)
/* 2654C 8002594C 15C00004 */  bnez       $t6, .L80025960
/* 26550 80025950 00000000 */   nop
/* 26554 80025954 8DEF3990 */  lw         $t7, %lo(D_80053990)($t7)
/* 26558 80025958 11E00003 */  beqz       $t7, .L80025968
/* 2655C 8002595C 00000000 */   nop
.L80025960:
/* 26560 80025960 10000004 */  b          .L80025974
/* 26564 80025964 24020001 */   addiu     $v0, $zero, 1
.L80025968:
/* 26568 80025968 0C009661 */  jal        func_80025984
/* 2656C 8002596C 00000000 */   nop
/* 26570 80025970 00001025 */  or         $v0, $zero, $zero
.L80025974:
/* 26574 80025974 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26578 80025978 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2657C 8002597C 03E00008 */  jr         $ra
/* 26580 80025980 00000000 */   nop
