.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel cosf
/* 36DF0 800361F0 E7AC0000 */  swc1       $f12, ($sp)
/* 36DF4 800361F4 8FA20000 */  lw         $v0, ($sp)
/* 36DF8 800361F8 C7A60000 */  lwc1       $f6, ($sp)
/* 36DFC 800361FC C7AA0000 */  lwc1       $f10, ($sp)
/* 36E00 80036200 00027583 */  sra        $t6, $v0, 0x16
/* 36E04 80036204 31CF01FF */  andi       $t7, $t6, 0x1ff
/* 36E08 80036208 29E10136 */  slti       $at, $t7, 0x136
/* 36E0C 8003620C 50200049 */  beql       $at, $zero, .L80036334
/* 36E10 80036210 460A5032 */   c.eq.s    $f10, $f10
/* 36E14 80036214 44802000 */  mtc1       $zero, $f4
/* 36E18 80036218 3C013FE0 */  lui        $at, 0x3fe0
/* 36E1C 8003621C 44819800 */  mtc1       $at, $f19
/* 36E20 80036220 4606203C */  c.lt.s     $f4, $f6
/* 36E24 80036224 C7A00000 */  lwc1       $f0, ($sp)
/* 36E28 80036228 3C018007 */  lui        $at, 0x8007
/* 36E2C 8003622C 45020004 */  bc1fl      .L80036240
/* 36E30 80036230 46000007 */   neg.s     $f0, $f0
/* 36E34 80036234 10000002 */  b          .L80036240
/* 36E38 80036238 46003006 */   mov.s     $f0, $f6
/* 36E3C 8003623C 46000007 */  neg.s      $f0, $f0
.L80036240:
/* 36E40 80036240 D4281BD8 */  ldc1       $f8, 0x1bd8($at)
/* 36E44 80036244 46000321 */  cvt.d.s    $f12, $f0
/* 36E48 80036248 44809000 */  mtc1       $zero, $f18
/* 36E4C 8003624C 46286282 */  mul.d      $f10, $f12, $f8
/* 36E50 80036250 44802800 */  mtc1       $zero, $f5
/* 36E54 80036254 44802000 */  mtc1       $zero, $f4
/* 36E58 80036258 46325380 */  add.d      $f14, $f10, $f18
/* 36E5C 8003625C 462E203E */  c.le.d     $f4, $f14
/* 36E60 80036260 00000000 */  nop
/* 36E64 80036264 45020007 */  bc1fl      .L80036284
/* 36E68 80036268 46327281 */   sub.d     $f10, $f14, $f18
/* 36E6C 8003626C 46327180 */  add.d      $f6, $f14, $f18
/* 36E70 80036270 4620320D */  trunc.w.d  $f8, $f6
/* 36E74 80036274 44024000 */  mfc1       $v0, $f8
/* 36E78 80036278 10000006 */  b          .L80036294
/* 36E7C 8003627C 44823000 */   mtc1      $v0, $f6
/* 36E80 80036280 46327281 */  sub.d      $f10, $f14, $f18
.L80036284:
/* 36E84 80036284 4620510D */  trunc.w.d  $f4, $f10
/* 36E88 80036288 44022000 */  mfc1       $v0, $f4
/* 36E8C 8003628C 00000000 */  nop
/* 36E90 80036290 44823000 */  mtc1       $v0, $f6
.L80036294:
/* 36E94 80036294 3C018007 */  lui        $at, %hi(D_80071BE0)
/* 36E98 80036298 D42A1BE0 */  ldc1       $f10, %lo(D_80071BE0)($at)
/* 36E9C 8003629C 46803221 */  cvt.d.w    $f8, $f6
/* 36EA0 800362A0 3C018007 */  lui        $at, %hi(D_80071BE8)
/* 36EA4 800362A4 D4261BE8 */  ldc1       $f6, %lo(D_80071BE8)($at)
/* 36EA8 800362A8 3C038007 */  lui        $v1, %hi(D_80071BB0)
/* 36EAC 800362AC 24631BB0 */  addiu      $v1, $v1, %lo(D_80071BB0)
/* 36EB0 800362B0 46324001 */  sub.d      $f0, $f8, $f18
/* 36EB4 800362B4 30480001 */  andi       $t0, $v0, 1
/* 36EB8 800362B8 462A0102 */  mul.d      $f4, $f0, $f10
/* 36EBC 800362BC D46A0020 */  ldc1       $f10, 0x20($v1)
/* 36EC0 800362C0 46260202 */  mul.d      $f8, $f0, $f6
/* 36EC4 800362C4 D4660018 */  ldc1       $f6, 0x18($v1)
/* 36EC8 800362C8 46246081 */  sub.d      $f2, $f12, $f4
/* 36ECC 800362CC 46281081 */  sub.d      $f2, $f2, $f8
/* 36ED0 800362D0 46221382 */  mul.d      $f14, $f2, $f2
/* 36ED4 800362D4 00000000 */  nop
/* 36ED8 800362D8 462E5102 */  mul.d      $f4, $f10, $f14
/* 36EDC 800362DC 46262200 */  add.d      $f8, $f4, $f6
/* 36EE0 800362E0 D4640010 */  ldc1       $f4, 0x10($v1)
/* 36EE4 800362E4 462E4282 */  mul.d      $f10, $f8, $f14
/* 36EE8 800362E8 46245180 */  add.d      $f6, $f10, $f4
/* 36EEC 800362EC D46A0008 */  ldc1       $f10, 8($v1)
/* 36EF0 800362F0 462E3202 */  mul.d      $f8, $f6, $f14
/* 36EF4 800362F4 15000007 */  bnez       $t0, .L80036314
/* 36EF8 800362F8 46285400 */   add.d     $f16, $f10, $f8
/* 36EFC 800362FC 462E1102 */  mul.d      $f4, $f2, $f14
/* 36F00 80036300 00000000 */  nop
/* 36F04 80036304 46302182 */  mul.d      $f6, $f4, $f16
/* 36F08 80036308 46223280 */  add.d      $f10, $f6, $f2
/* 36F0C 8003630C 03E00008 */  jr         $ra
/* 36F10 80036310 46205020 */   cvt.s.d   $f0, $f10
.L80036314:
/* 36F14 80036314 462E1202 */  mul.d      $f8, $f2, $f14
/* 36F18 80036318 00000000 */  nop
/* 36F1C 8003631C 46304102 */  mul.d      $f4, $f8, $f16
/* 36F20 80036320 46222180 */  add.d      $f6, $f4, $f2
/* 36F24 80036324 46203020 */  cvt.s.d    $f0, $f6
/* 36F28 80036328 03E00008 */  jr         $ra
/* 36F2C 8003632C 46000007 */   neg.s     $f0, $f0
/* 36F30 80036330 460A5032 */  c.eq.s     $f10, $f10
.L80036334:
/* 36F34 80036334 3C018007 */  lui        $at, 0x8007
/* 36F38 80036338 45010004 */  bc1t       .L8003634C
/* 36F3C 8003633C 00000000 */   nop
/* 36F40 80036340 3C018007 */  lui        $at, %hi(__libm_qnan_f)
/* 36F44 80036344 03E00008 */  jr         $ra
/* 36F48 80036348 C4201F10 */   lwc1      $f0, %lo(__libm_qnan_f)($at)
.L8003634C:
/* 36F4C 8003634C C4201BF0 */  lwc1       $f0, 0x1bf0($at)
/* 36F50 80036350 03E00008 */  jr         $ra
/* 36F54 80036354 00000000 */   nop
/* 36F58 80036358 00000000 */  nop
/* 36F5C 8003635C 00000000 */  nop
