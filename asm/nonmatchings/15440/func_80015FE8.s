glabel func_80015FE8
/* 16BE8 80015FE8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 16BEC 80015FEC AFB00020 */  sw         $s0, 0x20($sp)
/* 16BF0 80015FF0 00808025 */  or         $s0, $a0, $zero
/* 16BF4 80015FF4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 16BF8 80015FF8 960E000A */  lhu        $t6, 0xA($s0)
/* 16BFC 80015FFC 31CF0001 */  andi       $t7, $t6, 0x1
/* 16C00 80016000 55E0004A */  bnel       $t7, $zero, .L8001612C
/* 16C04 80016004 8FBF0024 */   lw        $ra, 0x24($sp)
/* 16C08 80016008 8E02002C */  lw         $v0, 0x2C($s0)
/* 16C0C 8001600C 3C098008 */  lui        $t1, %hi(D_800871E0)
/* 16C10 80016010 252971E0 */  addiu      $t1, $t1, %lo(D_800871E0)
/* 16C14 80016014 9458002A */  lhu        $t8, 0x2A($v0)
/* 16C18 80016018 24070A00 */  addiu      $a3, $zero, 0xA00
/* 16C1C 8001601C 33190001 */  andi       $t9, $t8, 0x1
/* 16C20 80016020 5320000A */  beql       $t9, $zero, .L8001604C
/* 16C24 80016024 C6120010 */   lwc1      $f18, 0x10($s0)
/* 16C28 80016028 C604001C */  lwc1       $f4, 0x1C($s0)
/* 16C2C 8001602C 3C018007 */  lui        $at, %hi(D_800714A8)
/* 16C30 80016030 D42814A8 */  ldc1       $f8, %lo(D_800714A8)($at)
/* 16C34 80016034 460021A1 */  cvt.d.s    $f6, $f4
/* 16C38 80016038 8E02002C */  lw         $v0, 0x2C($s0)
/* 16C3C 8001603C 46283281 */  sub.d      $f10, $f6, $f8
/* 16C40 80016040 46205420 */  cvt.s.d    $f16, $f10
/* 16C44 80016044 E610001C */  swc1       $f16, 0x1C($s0)
/* 16C48 80016048 C6120010 */  lwc1       $f18, 0x10($s0)
.L8001604C:
/* 16C4C 8001604C C604001C */  lwc1       $f4, 0x1C($s0)
/* 16C50 80016050 24010001 */  addiu      $at, $zero, 0x1
/* 16C54 80016054 46049180 */  add.s      $f6, $f18, $f4
/* 16C58 80016058 E6060010 */  swc1       $f6, 0x10($s0)
/* 16C5C 8001605C 94480014 */  lhu        $t0, 0x14($v0)
/* 16C60 80016060 55010025 */  bnel       $t0, $at, .L800160F8
/* 16C64 80016064 8E18002C */   lw        $t8, 0x2C($s0)
/* 16C68 80016068 C60C000C */  lwc1       $f12, 0xC($s0)
/* 16C6C 8001606C C60E0010 */  lwc1       $f14, 0x10($s0)
/* 16C70 80016070 8E060014 */  lw         $a2, 0x14($s0)
/* 16C74 80016074 0C003B98 */  jal        func_8000EE60
/* 16C78 80016078 AFA90010 */   sw        $t1, 0x10($sp)
/* 16C7C 8001607C 3C018008 */  lui        $at, %hi(D_800871E4)
/* 16C80 80016080 C42271E4 */  lwc1       $f2, %lo(D_800871E4)($at)
/* 16C84 80016084 C6080010 */  lwc1       $f8, 0x10($s0)
/* 16C88 80016088 240C0008 */  addiu      $t4, $zero, 0x8
/* 16C8C 8001608C 4602403C */  c.lt.s     $f8, $f2
/* 16C90 80016090 00000000 */  nop
/* 16C94 80016094 45020018 */  bc1fl      .L800160F8
/* 16C98 80016098 8E18002C */   lw        $t8, 0x2C($s0)
/* 16C9C 8001609C 44800000 */  mtc1       $zero, $f0
/* 16CA0 800160A0 960A000A */  lhu        $t2, 0xA($s0)
/* 16CA4 800160A4 8E020034 */  lw         $v0, 0x34($s0)
/* 16CA8 800160A8 E6020010 */  swc1       $f2, 0x10($s0)
/* 16CAC 800160AC 354B0001 */  ori        $t3, $t2, 0x1
/* 16CB0 800160B0 A60B000A */  sh         $t3, 0xA($s0)
/* 16CB4 800160B4 A60C0004 */  sh         $t4, 0x4($s0)
/* 16CB8 800160B8 E6000020 */  swc1       $f0, 0x20($s0)
/* 16CBC 800160BC E600001C */  swc1       $f0, 0x1C($s0)
/* 16CC0 800160C0 10400007 */  beqz       $v0, .L800160E0
/* 16CC4 800160C4 E6000018 */   swc1      $f0, 0x18($s0)
/* 16CC8 800160C8 240D000F */  addiu      $t5, $zero, 0xF
/* 16CCC 800160CC A44D0000 */  sh         $t5, 0x0($v0)
/* 16CD0 800160D0 8E020034 */  lw         $v0, 0x34($s0)
/* 16CD4 800160D4 944E0008 */  lhu        $t6, 0x8($v0)
/* 16CD8 800160D8 31CFFFFE */  andi       $t7, $t6, 0xFFFE
/* 16CDC 800160DC A44F0008 */  sh         $t7, 0x8($v0)
.L800160E0:
/* 16CE0 800160E0 0C004FC8 */  jal        func_80013F20
/* 16CE4 800160E4 24040001 */   addiu     $a0, $zero, 0x1
/* 16CE8 800160E8 02002025 */  or         $a0, $s0, $zero
/* 16CEC 800160EC 0C005FE8 */  jal        func_80017FA0
/* 16CF0 800160F0 8E050028 */   lw        $a1, 0x28($s0)
/* 16CF4 800160F4 8E18002C */  lw         $t8, 0x2C($s0)
.L800160F8:
/* 16CF8 800160F8 97190018 */  lhu        $t9, 0x18($t8)
/* 16CFC 800160FC 5720000B */  bnel       $t9, $zero, .L8001612C
/* 16D00 80016100 8FBF0024 */   lw        $ra, 0x24($sp)
/* 16D04 80016104 8E020028 */  lw         $v0, 0x28($s0)
/* 16D08 80016108 94480060 */  lhu        $t0, 0x60($v0)
/* 16D0C 8001610C 31090001 */  andi       $t1, $t0, 0x1
/* 16D10 80016110 55200006 */  bnel       $t1, $zero, .L8001612C
/* 16D14 80016114 8FBF0024 */   lw        $ra, 0x24($sp)
/* 16D18 80016118 C44A0000 */  lwc1       $f10, 0x0($v0)
/* 16D1C 8001611C E60A000C */  swc1       $f10, 0xC($s0)
/* 16D20 80016120 C4500008 */  lwc1       $f16, 0x8($v0)
/* 16D24 80016124 E6100014 */  swc1       $f16, 0x14($s0)
/* 16D28 80016128 8FBF0024 */  lw         $ra, 0x24($sp)
.L8001612C:
/* 16D2C 8001612C 8FB00020 */  lw         $s0, 0x20($sp)
/* 16D30 80016130 27BD0028 */  addiu      $sp, $sp, 0x28
/* 16D34 80016134 03E00008 */  jr         $ra
/* 16D38 80016138 00000000 */   nop
