.section .late_rodata
glabel D_80070F50
/* 71B50 80070F50 3FE5C28F5C28F5C3 */ .double 0.680000000000000049


.section .text
glabel func_80003F98
/* 4B98 80003F98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4B9C 80003F9C AFA5001C */  sw         $a1, 0x1C($sp)
/* 4BA0 80003FA0 AFA60020 */  sw         $a2, 0x20($sp)
/* 4BA4 80003FA4 8FA6001C */  lw         $a2, 0x1C($sp)
/* 4BA8 80003FA8 00802825 */  or         $a1, $a0, $zero
/* 4BAC 80003FAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 4BB0 80003FB0 AFA40018 */  sw         $a0, 0x18($sp)
/* 4BB4 80003FB4 24040A01 */  addiu      $a0, $zero, 0xA01
/* 4BB8 80003FB8 AFA50018 */  sw         $a1, 0x18($sp)
/* 4BBC 80003FBC 0C0015D2 */  jal        func_80005748
/* 4BC0 80003FC0 AFA6001C */   sw        $a2, 0x1C($sp)
/* 4BC4 80003FC4 8FA50018 */  lw         $a1, 0x18($sp)
/* 4BC8 80003FC8 3C018007 */  lui        $at, %hi(D_80070F50)
/* 4BCC 80003FCC D4200F50 */  ldc1       $f0, %lo(D_80070F50)($at)
/* 4BD0 80003FD0 C4A40018 */  lwc1       $f4, 0x18($a1)
/* 4BD4 80003FD4 C4B00020 */  lwc1       $f16, 0x20($a1)
/* 4BD8 80003FD8 8FA6001C */  lw         $a2, 0x1C($sp)
/* 4BDC 80003FDC 460021A1 */  cvt.d.s    $f6, $f4
/* 4BE0 80003FE0 460084A1 */  cvt.d.s    $f18, $f16
/* 4BE4 80003FE4 46203202 */  mul.d      $f8, $f6, $f0
/* 4BE8 80003FE8 00000000 */  nop
/* 4BEC 80003FEC 46209102 */  mul.d      $f4, $f18, $f0
/* 4BF0 80003FF0 462042A0 */  cvt.s.d    $f10, $f8
/* 4BF4 80003FF4 462021A0 */  cvt.s.d    $f6, $f4
/* 4BF8 80003FF8 E4AA0018 */  swc1       $f10, 0x18($a1)
/* 4BFC 80003FFC E4A60020 */  swc1       $f6, 0x20($a1)
/* 4C00 80004000 94CE0004 */  lhu        $t6, 0x4($a2)
/* 4C04 80004004 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 4C08 80004008 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 4C0C 8000400C 17000008 */  bnez       $t8, .L80004030
/* 4C10 80004010 A4CF0004 */   sh        $t7, 0x4($a2)
/* 4C14 80004014 44809000 */  mtc1       $zero, $f18
/* 4C18 80004018 A4C00000 */  sh         $zero, 0x0($a2)
/* 4C1C 8000401C 94B90060 */  lhu        $t9, 0x60($a1)
/* 4C20 80004020 E4B20020 */  swc1       $f18, 0x20($a1)
/* 4C24 80004024 E4B20018 */  swc1       $f18, 0x18($a1)
/* 4C28 80004028 3328FFFE */  andi       $t0, $t9, 0xFFFE
/* 4C2C 8000402C A4A80060 */  sh         $t0, 0x60($a1)
.L80004030:
/* 4C30 80004030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4C34 80004034 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4C38 80004038 03E00008 */  jr         $ra
/* 4C3C 8000403C 00000000 */   nop
