.section .late_rodata
glabel D_80071230
/* 71E30 80071230 3FECCCCCCCCCCCCD */ .double 0.900000000000000022


.section .text
glabel func_8000E224
/* EE24 8000E224 3C058008 */  lui        $a1, %hi(gMasterGfxPos)
/* EE28 8000E228 24A5B2FC */  addiu      $a1, $a1, %lo(gMasterGfxPos)
/* EE2C 8000E22C C4840018 */  lwc1       $f4, 0x18($a0)
/* EE30 8000E230 C4860030 */  lwc1       $f6, 0x30($a0)
/* EE34 8000E234 C4800034 */  lwc1       $f0, 0x34($a0)
/* EE38 8000E238 C48A001C */  lwc1       $f10, 0x1C($a0)
/* EE3C 8000E23C 46062200 */  add.s      $f8, $f4, $f6
/* EE40 8000E240 C4840038 */  lwc1       $f4, 0x38($a0)
/* EE44 8000E244 C4920020 */  lwc1       $f18, 0x20($a0)
/* EE48 8000E248 46005400 */  add.s      $f16, $f10, $f0
/* EE4C 8000E24C E4880018 */  swc1       $f8, 0x18($a0)
/* EE50 8000E250 3C018007 */  lui        $at, %hi(D_80071230)
/* EE54 8000E254 46049180 */  add.s      $f6, $f18, $f4
/* EE58 8000E258 E490001C */  swc1       $f16, 0x1C($a0)
/* EE5C 8000E25C 24030078 */  addiu      $v1, $zero, 0x78
/* EE60 8000E260 46000221 */  cvt.d.s    $f8, $f0
/* EE64 8000E264 E4860020 */  swc1       $f6, 0x20($a0)
/* EE68 8000E268 D42A1230 */  ldc1       $f10, %lo(D_80071230)($at)
/* EE6C 8000E26C 2401FF00 */  addiu      $at, $zero, -0x100
/* EE70 8000E270 462A4401 */  sub.d      $f16, $f8, $f10
/* EE74 8000E274 462084A0 */  cvt.s.d    $f18, $f16
/* EE78 8000E278 E4920034 */  swc1       $f18, 0x34($a0)
/* EE7C 8000E27C 8CA20000 */  lw         $v0, 0x0($a1)
/* EE80 8000E280 3C0FFB00 */  lui        $t7, (0xFB000000 >> 16)
/* EE84 8000E284 3C188008 */  lui        $t8, %hi(D_80084ED0)
/* EE88 8000E288 244E0008 */  addiu      $t6, $v0, 0x8
/* EE8C 8000E28C ACAE0000 */  sw         $t6, 0x0($a1)
/* EE90 8000E290 AC4F0000 */  sw         $t7, 0x0($v0)
/* EE94 8000E294 97184ED0 */  lhu        $t8, %lo(D_80084ED0)($t8)
/* EE98 8000E298 33190001 */  andi       $t9, $t8, 0x1
/* EE9C 8000E29C 13200003 */  beqz       $t9, .L8000E2AC
/* EEA0 8000E2A0 00000000 */   nop
/* EEA4 8000E2A4 10000001 */  b          .L8000E2AC
/* EEA8 8000E2A8 240300DC */   addiu     $v1, $zero, 0xDC
.L8000E2AC:
/* EEAC 8000E2AC 306800FF */  andi       $t0, $v1, 0xFF
/* EEB0 8000E2B0 01014825 */  or         $t1, $t0, $at
/* EEB4 8000E2B4 AC490004 */  sw         $t1, 0x4($v0)
/* EEB8 8000E2B8 03E00008 */  jr         $ra
/* EEBC 8000E2BC 00000000 */   nop
