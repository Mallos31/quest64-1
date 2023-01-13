.section .late_rodata
glabel D_800711C0
/* 71DC0 800711C0 400CCCCCCCCCCCCD */ .double 3.60000000000000009
/* 71DC8 800711C8 00000000 */ .double 0


.section .text
glabel func_8000B170
/* BD70 8000B170 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BD74 8000B174 AFB00030 */  sw         $s0, 0x30($sp)
/* BD78 8000B178 3C038005 */  lui        $v1, %hi(D_80054690)
/* BD7C 8000B17C 3C088008 */  lui        $t0, %hi(D_8007D0D0)
/* BD80 8000B180 2508D0D0 */  addiu      $t0, $t0, %lo(D_8007D0D0)
/* BD84 8000B184 24634690 */  addiu      $v1, $v1, %lo(D_80054690)
/* BD88 8000B188 00808025 */  or         $s0, $a0, $zero
/* BD8C 8000B18C AFBF0034 */  sw         $ra, 0x34($sp)
/* BD90 8000B190 C4640148 */  lwc1       $f4, 0x148($v1)
/* BD94 8000B194 C466014C */  lwc1       $f6, 0x14C($v1)
/* BD98 8000B198 846E0140 */  lh         $t6, 0x140($v1)
/* BD9C 8000B19C E5040000 */  swc1       $f4, 0x0($t0)
/* BDA0 8000B1A0 E5060004 */  swc1       $f6, 0x4($t0)
/* BDA4 8000B1A4 C6080028 */  lwc1       $f8, 0x28($s0)
/* BDA8 8000B1A8 000E7880 */  sll        $t7, $t6, 2
/* BDAC 8000B1AC 3C18800C */  lui        $t8, %hi(D_800C1B90)
/* BDB0 8000B1B0 E5080008 */  swc1       $f8, 0x8($t0)
/* BDB4 8000B1B4 8E020064 */  lw         $v0, 0x64($s0)
/* BDB8 8000B1B8 01EE7821 */  addu       $t7, $t7, $t6
/* BDBC 8000B1BC 000F7840 */  sll        $t7, $t7, 1
/* BDC0 8000B1C0 94590000 */  lhu        $t9, 0x0($v0)
/* BDC4 8000B1C4 27181B90 */  addiu      $t8, $t8, %lo(D_800C1B90)
/* BDC8 8000B1C8 24010001 */  addiu      $at, $zero, 0x1
/* BDCC 8000B1CC 17210004 */  bne        $t9, $at, .L8000B1E0
/* BDD0 8000B1D0 01F84821 */   addu      $t1, $t7, $t8
/* BDD4 8000B1D4 8E0A0068 */  lw         $t2, 0x68($s0)
/* BDD8 8000B1D8 1000000E */  b          .L8000B214
/* BDDC 8000B1DC C5420094 */   lwc1      $f2, 0x94($t2)
.L8000B1E0:
/* BDE0 8000B1E0 C44A001C */  lwc1       $f10, 0x1C($v0)
/* BDE4 8000B1E4 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* BDE8 8000B1E8 44819800 */  mtc1       $at, $f19
/* BDEC 8000B1EC 44809000 */  mtc1       $zero, $f18
/* BDF0 8000B1F0 46005421 */  cvt.d.s    $f16, $f10
/* BDF4 8000B1F4 C6060024 */  lwc1       $f6, 0x24($s0)
/* BDF8 8000B1F8 46328102 */  mul.d      $f4, $f16, $f18
/* BDFC 8000B1FC C6100004 */  lwc1       $f16, 0x4($s0)
/* BE00 8000B200 46003221 */  cvt.d.s    $f8, $f6
/* BE04 8000B204 460084A1 */  cvt.d.s    $f18, $f16
/* BE08 8000B208 46282282 */  mul.d      $f10, $f4, $f8
/* BE0C 8000B20C 462A9180 */  add.d      $f6, $f18, $f10
/* BE10 8000B210 462030A0 */  cvt.s.d    $f2, $f6
.L8000B214:
/* BE14 8000B214 C6040008 */  lwc1       $f4, 0x8($s0)
/* BE18 8000B218 8E060000 */  lw         $a2, 0x0($s0)
/* BE1C 8000B21C 3C048005 */  lui        $a0, %hi(D_800547D2)
/* BE20 8000B220 E7A40010 */  swc1       $f4, 0x10($sp)
/* BE24 8000B224 C6080010 */  lwc1       $f8, 0x10($s0)
/* BE28 8000B228 3C058005 */  lui        $a1, %hi(D_800547D4)
/* BE2C 8000B22C 44071000 */  mfc1       $a3, $f2
/* BE30 8000B230 94A547D4 */  lhu        $a1, %lo(D_800547D4)($a1)
/* BE34 8000B234 E7A2003C */  swc1       $f2, 0x3C($sp)
/* BE38 8000B238 AFB00020 */  sw         $s0, 0x20($sp)
/* BE3C 8000B23C AFA8001C */  sw         $t0, 0x1C($sp)
/* BE40 8000B240 AFA90018 */  sw         $t1, 0x18($sp)
/* BE44 8000B244 948447D2 */  lhu        $a0, %lo(D_800547D2)($a0)
/* BE48 8000B248 0C005DFE */  jal        func_800177F8
/* BE4C 8000B24C E7A80014 */   swc1      $f8, 0x14($sp)
/* BE50 8000B250 8E020064 */  lw         $v0, 0x64($s0)
/* BE54 8000B254 C6000024 */  lwc1       $f0, 0x24($s0)
/* BE58 8000B258 C6060008 */  lwc1       $f6, 0x8($s0)
/* BE5C 8000B25C C450001C */  lwc1       $f16, 0x1C($v0)
/* BE60 8000B260 8E060000 */  lw         $a2, 0x0($s0)
/* BE64 8000B264 E7A60010 */  swc1       $f6, 0x10($sp)
/* BE68 8000B268 46008482 */  mul.s      $f18, $f16, $f0
/* BE6C 8000B26C C4440018 */  lwc1       $f4, 0x18($v0)
/* BE70 8000B270 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* BE74 8000B274 3C018007 */  lui        $at, %hi(D_800711C0)
/* BE78 8000B278 46002202 */  mul.s      $f8, $f4, $f0
/* BE7C 8000B27C 24040002 */  addiu      $a0, $zero, 0x2
/* BE80 8000B280 2405001E */  addiu      $a1, $zero, 0x1E
/* BE84 8000B284 46029280 */  add.s      $f10, $f18, $f2
/* BE88 8000B288 D43211C0 */  ldc1       $f18, %lo(D_800711C0)($at)
/* BE8C 8000B28C 46004421 */  cvt.d.s    $f16, $f8
/* BE90 8000B290 44075000 */  mfc1       $a3, $f10
/* BE94 8000B294 46328282 */  mul.d      $f10, $f16, $f18
/* BE98 8000B298 462051A0 */  cvt.s.d    $f6, $f10
/* BE9C 8000B29C 0C0064D5 */  jal        func_80019354
/* BEA0 8000B2A0 E7A60014 */   swc1      $f6, 0x14($sp)
/* BEA4 8000B2A4 8FBF0034 */  lw         $ra, 0x34($sp)
/* BEA8 8000B2A8 8FB00030 */  lw         $s0, 0x30($sp)
/* BEAC 8000B2AC 27BD0040 */  addiu      $sp, $sp, 0x40
/* BEB0 8000B2B0 03E00008 */  jr         $ra
/* BEB4 8000B2B4 00000000 */   nop
