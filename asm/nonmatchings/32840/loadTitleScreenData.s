glabel loadTitleScreenData
/* 32840 80031C40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 32844 80031C44 3C0400DA */  lui        $a0, 0xda
/* 32848 80031C48 248468F0 */  addiu      $a0, $a0, 0x68f0
/* 3284C 80031C4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 32850 80031C50 3C0E00DC */  lui        $t6, 0xdc
/* 32854 80031C54 25CE1620 */  addiu      $t6, $t6, 0x1620
/* 32858 80031C58 3C058010 */  lui        $a1, %hi(virt_CommonData_Title_and_credits)
/* 3285C 80031C5C 24A50000 */  addiu      $a1, $a1, %lo(virt_CommonData_Title_and_credits)
/* 32860 80031C60 0C009098 */  jal        loadData
/* 32864 80031C64 01C43023 */   subu      $a2, $t6, $a0
/* 32868 80031C68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3286C 80031C6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 32870 80031C70 03E00008 */  jr         $ra
/* 32874 80031C74 00000000 */   nop
