glabel func_80030BF0
/* 317F0 80030BF0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 317F4 80030BF4 AFB30028 */  sw         $s3, 0x28($sp)
/* 317F8 80030BF8 AFB20024 */  sw         $s2, 0x24($sp)
/* 317FC 80030BFC AFB10020 */  sw         $s1, 0x20($sp)
/* 31800 80030C00 AFB0001C */  sw         $s0, 0x1C($sp)
/* 31804 80030C04 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 31808 80030C08 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 3180C 80030C0C 00C08025 */  or         $s0, $a2, $zero
/* 31810 80030C10 00808825 */  or         $s1, $a0, $zero
/* 31814 80030C14 00A09025 */  or         $s2, $a1, $zero
/* 31818 80030C18 00E09825 */  or         $s3, $a3, $zero
/* 3181C 80030C1C AFBF002C */  sw         $ra, 0x2C($sp)
/* 31820 80030C20 8C620000 */  lw         $v0, 0x0($v1)
/* 31824 80030C24 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 31828 80030C28 00002025 */  or         $a0, $zero, $zero
/* 3182C 80030C2C 244E0008 */  addiu      $t6, $v0, 0x8
/* 31830 80030C30 AC6E0000 */  sw         $t6, 0x0($v1)
/* 31834 80030C34 AC400004 */  sw         $zero, 0x4($v0)
/* 31838 80030C38 AC4F0000 */  sw         $t7, 0x0($v0)
/* 3183C 80030C3C 8C620000 */  lw         $v0, 0x0($v1)
/* 31840 80030C40 3C19FB00 */  lui        $t9, (0xFB000000 >> 16)
/* 31844 80030C44 240AFFCC */  addiu      $t2, $zero, -0x34
/* 31848 80030C48 24580008 */  addiu      $t8, $v0, 0x8
/* 3184C 80030C4C AC780000 */  sw         $t8, 0x0($v1)
/* 31850 80030C50 AC4A0004 */  sw         $t2, 0x4($v0)
/* 31854 80030C54 AC590000 */  sw         $t9, 0x0($v0)
/* 31858 80030C58 02202825 */  or         $a1, $s1, $zero
/* 3185C 80030C5C 02403025 */  or         $a2, $s2, $zero
/* 31860 80030C60 02003825 */  or         $a3, $s0, $zero
/* 31864 80030C64 0C00C1F6 */  jal        func_800307D8
/* 31868 80030C68 AFB30010 */   sw        $s3, 0x10($sp)
/* 3186C 80030C6C 02302821 */  addu       $a1, $s1, $s0
/* 31870 80030C70 AFA50034 */  sw         $a1, 0x34($sp)
/* 31874 80030C74 24040003 */  addiu      $a0, $zero, 0x3
/* 31878 80030C78 26460002 */  addiu      $a2, $s2, 0x2
/* 3187C 80030C7C 24070002 */  addiu      $a3, $zero, 0x2
/* 31880 80030C80 0C00C1F6 */  jal        func_800307D8
/* 31884 80030C84 AFB30010 */   sw        $s3, 0x10($sp)
/* 31888 80030C88 02533021 */  addu       $a2, $s2, $s3
/* 3188C 80030C8C 240B0002 */  addiu      $t3, $zero, 0x2
/* 31890 80030C90 AFAB0010 */  sw         $t3, 0x10($sp)
/* 31894 80030C94 AFA60030 */  sw         $a2, 0x30($sp)
/* 31898 80030C98 24040003 */  addiu      $a0, $zero, 0x3
/* 3189C 80030C9C 26250002 */  addiu      $a1, $s1, 0x2
/* 318A0 80030CA0 0C00C1F6 */  jal        func_800307D8
/* 318A4 80030CA4 02003825 */   or        $a3, $s0, $zero
/* 318A8 80030CA8 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 318AC 80030CAC 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 318B0 80030CB0 8C620000 */  lw         $v0, 0x0($v1)
/* 318B4 80030CB4 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 318B8 80030CB8 24040003 */  addiu      $a0, $zero, 0x3
/* 318BC 80030CBC 244C0008 */  addiu      $t4, $v0, 0x8
/* 318C0 80030CC0 AC6C0000 */  sw         $t4, 0x0($v1)
/* 318C4 80030CC4 AC400004 */  sw         $zero, 0x4($v0)
/* 318C8 80030CC8 AC4D0000 */  sw         $t5, 0x0($v0)
/* 318CC 80030CCC 8C620000 */  lw         $v0, 0x0($v1)
/* 318D0 80030CD0 3C0FFB00 */  lui        $t7, (0xFB000000 >> 16)
/* 318D4 80030CD4 2418FFFF */  addiu      $t8, $zero, -0x1
/* 318D8 80030CD8 244E0008 */  addiu      $t6, $v0, 0x8
/* 318DC 80030CDC AC6E0000 */  sw         $t6, 0x0($v1)
/* 318E0 80030CE0 AC580004 */  sw         $t8, 0x4($v0)
/* 318E4 80030CE4 AC4F0000 */  sw         $t7, 0x0($v0)
/* 318E8 80030CE8 24190001 */  addiu      $t9, $zero, 0x1
/* 318EC 80030CEC AFB90010 */  sw         $t9, 0x10($sp)
/* 318F0 80030CF0 02202825 */  or         $a1, $s1, $zero
/* 318F4 80030CF4 02403025 */  or         $a2, $s2, $zero
/* 318F8 80030CF8 0C00C1F6 */  jal        func_800307D8
/* 318FC 80030CFC 02003825 */   or        $a3, $s0, $zero
/* 31900 80030D00 8FA60030 */  lw         $a2, 0x30($sp)
/* 31904 80030D04 240A0001 */  addiu      $t2, $zero, 0x1
/* 31908 80030D08 AFAA0010 */  sw         $t2, 0x10($sp)
/* 3190C 80030D0C 24040003 */  addiu      $a0, $zero, 0x3
/* 31910 80030D10 02202825 */  or         $a1, $s1, $zero
/* 31914 80030D14 02003825 */  or         $a3, $s0, $zero
/* 31918 80030D18 0C00C1F6 */  jal        func_800307D8
/* 3191C 80030D1C 24C6FFFF */   addiu     $a2, $a2, -0x1
/* 31920 80030D20 24040003 */  addiu      $a0, $zero, 0x3
/* 31924 80030D24 02202825 */  or         $a1, $s1, $zero
/* 31928 80030D28 02403025 */  or         $a2, $s2, $zero
/* 3192C 80030D2C 24070001 */  addiu      $a3, $zero, 0x1
/* 31930 80030D30 0C00C1F6 */  jal        func_800307D8
/* 31934 80030D34 AFB30010 */   sw        $s3, 0x10($sp)
/* 31938 80030D38 8FA50034 */  lw         $a1, 0x34($sp)
/* 3193C 80030D3C 24040003 */  addiu      $a0, $zero, 0x3
/* 31940 80030D40 02403025 */  or         $a2, $s2, $zero
/* 31944 80030D44 24070001 */  addiu      $a3, $zero, 0x1
/* 31948 80030D48 AFB30010 */  sw         $s3, 0x10($sp)
/* 3194C 80030D4C 0C00C1F6 */  jal        func_800307D8
/* 31950 80030D50 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 31954 80030D54 8FBF002C */  lw         $ra, 0x2C($sp)
/* 31958 80030D58 8FB0001C */  lw         $s0, 0x1C($sp)
/* 3195C 80030D5C 8FB10020 */  lw         $s1, 0x20($sp)
/* 31960 80030D60 8FB20024 */  lw         $s2, 0x24($sp)
/* 31964 80030D64 8FB30028 */  lw         $s3, 0x28($sp)
/* 31968 80030D68 03E00008 */  jr         $ra
/* 3196C 80030D6C 27BD0048 */   addiu     $sp, $sp, 0x48
