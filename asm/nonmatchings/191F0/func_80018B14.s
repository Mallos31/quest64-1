glabel func_80018B14
/* 19714 80018B14 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 19718 80018B18 3C028008 */  lui        $v0, %hi(D_80087208)
/* 1971C 80018B1C 24427208 */  addiu      $v0, $v0, %lo(D_80087208)
/* 19720 80018B20 AFBF0024 */  sw         $ra, 0x24($sp)
/* 19724 80018B24 AFB30020 */  sw         $s3, 0x20($sp)
/* 19728 80018B28 AFB2001C */  sw         $s2, 0x1C($sp)
/* 1972C 80018B2C AFB10018 */  sw         $s1, 0x18($sp)
/* 19730 80018B30 AFB00014 */  sw         $s0, 0x14($sp)
/* 19734 80018B34 3C0E8008 */  lui        $t6, %hi(D_80087200)
/* 19738 80018B38 8DCE7200 */  lw         $t6, %lo(D_80087200)($t6)
/* 1973C 80018B3C 3C0F8008 */  lui        $t7, %hi(D_8007B2F4)
/* 19740 80018B40 3C108008 */  lui        $s0, %hi(D_80087310)
/* 19744 80018B44 AC4E0000 */  sw         $t6, 0x0($v0)
/* 19748 80018B48 8DEFB2F4 */  lw         $t7, %lo(D_8007B2F4)($t7)
/* 1974C 80018B4C 26107310 */  addiu      $s0, $s0, %lo(D_80087310)
/* 19750 80018B50 24130019 */  addiu      $s3, $zero, 0x19
/* 19754 80018B54 11E00004 */  beqz       $t7, .L80018B68
/* 19758 80018B58 3C128005 */   lui       $s2, %hi(D_8004CEAC)
/* 1975C 80018B5C 3C108008 */  lui        $s0, %hi(D_80087250)
/* 19760 80018B60 10000001 */  b          .L80018B68
/* 19764 80018B64 26107250 */   addiu     $s0, $s0, %lo(D_80087250)
.L80018B68:
/* 19768 80018B68 8C510000 */  lw         $s1, 0x0($v0)
/* 1976C 80018B6C 2652CEAC */  addiu      $s2, $s2, %lo(D_8004CEAC)
/* 19770 80018B70 52200019 */  beql       $s1, $zero, .L80018BD8
/* 19774 80018B74 8FBF0024 */   lw        $ra, 0x24($sp)
.L80018B78:
/* 19778 80018B78 8E020000 */  lw         $v0, 0x0($s0)
/* 1977C 80018B7C 10400012 */  beqz       $v0, .L80018BC8
/* 19780 80018B80 2458FFFF */   addiu     $t8, $v0, -0x1
/* 19784 80018B84 17000010 */  bnez       $t8, .L80018BC8
/* 19788 80018B88 AE180000 */   sw        $t8, 0x0($s0)
/* 1978C 80018B8C C6040004 */  lwc1       $f4, 0x4($s0)
/* 19790 80018B90 3C018005 */  lui        $at, %hi(D_8004CEC4)
/* 19794 80018B94 02402025 */  or         $a0, $s2, $zero
/* 19798 80018B98 E424CEC4 */  swc1       $f4, %lo(D_8004CEC4)($at)
/* 1979C 80018B9C C6060008 */  lwc1       $f6, 0x8($s0)
/* 197A0 80018BA0 E426CEC8 */  swc1       $f6, %lo(D_8004CEC8)($at)
/* 197A4 80018BA4 C608000C */  lwc1       $f8, 0xC($s0)
/* 197A8 80018BA8 E428CECC */  swc1       $f8, %lo(D_8004CECC)($at)
/* 197AC 80018BAC C60A0010 */  lwc1       $f10, 0x10($s0)
/* 197B0 80018BB0 3C018005 */  lui        $at, %hi(D_8004CED8)
/* 197B4 80018BB4 E42ACED8 */  swc1       $f10, %lo(D_8004CED8)($at)
/* 197B8 80018BB8 C430CED8 */  lwc1       $f16, %lo(D_8004CED8)($at)
/* 197BC 80018BBC 0C006C42 */  jal        func_8001B108
/* 197C0 80018BC0 E430CED4 */   swc1      $f16, %lo(D_8004CED4)($at)
/* 197C4 80018BC4 AE130000 */  sw         $s3, 0x0($s0)
.L80018BC8:
/* 197C8 80018BC8 2631FFFF */  addiu      $s1, $s1, -0x1
/* 197CC 80018BCC 1620FFEA */  bnez       $s1, .L80018B78
/* 197D0 80018BD0 26100018 */   addiu     $s0, $s0, 0x18
/* 197D4 80018BD4 8FBF0024 */  lw         $ra, 0x24($sp)
.L80018BD8:
/* 197D8 80018BD8 8FB00014 */  lw         $s0, 0x14($sp)
/* 197DC 80018BDC 8FB10018 */  lw         $s1, 0x18($sp)
/* 197E0 80018BE0 8FB2001C */  lw         $s2, 0x1C($sp)
/* 197E4 80018BE4 8FB30020 */  lw         $s3, 0x20($sp)
/* 197E8 80018BE8 03E00008 */  jr         $ra
/* 197EC 80018BEC 27BD0028 */   addiu     $sp, $sp, 0x28
