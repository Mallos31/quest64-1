glabel func_8000FF54
/* 10B54 8000FF54 3C018007 */  lui        $at, %hi(D_80071280)
/* 10B58 8000FF58 D4241280 */  ldc1       $f4, %lo(D_80071280)($at)
/* 10B5C 8000FF5C 46006021 */  cvt.d.s    $f0, $f12
/* 10B60 8000FF60 3C018007 */  lui        $at, 0x8007
/* 10B64 8000FF64 4620203C */  c.lt.d     $f4, $f0
/* 10B68 8000FF68 44802000 */  mtc1       $zero, $f4
/* 10B6C 8000FF6C 45000006 */  bc1f       .L8000FF88
/* 10B70 8000FF70 00000000 */   nop
/* 10B74 8000FF74 3C018007 */  lui        $at, %hi(D_80071288)
/* 10B78 8000FF78 D4261288 */  ldc1       $f6, %lo(D_80071288)($at)
/* 10B7C 8000FF7C 46260201 */  sub.d      $f8, $f0, $f6
/* 10B80 8000FF80 1000000A */  b          .L8000FFAC
/* 10B84 8000FF84 46204320 */   cvt.s.d   $f12, $f8
.L8000FF88:
/* 10B88 8000FF88 D42A1290 */  ldc1       $f10, 0x1290($at)
/* 10B8C 8000FF8C 3C018007 */  lui        $at, %hi(D_80071298)
/* 10B90 8000FF90 462A003C */  c.lt.d     $f0, $f10
/* 10B94 8000FF94 00000000 */  nop
/* 10B98 8000FF98 45020005 */  bc1fl      .L8000FFB0
/* 10B9C 8000FF9C 4604603C */   c.lt.s    $f12, $f4
/* 10BA0 8000FFA0 D4301298 */  ldc1       $f16, %lo(D_80071298)($at)
/* 10BA4 8000FFA4 46300480 */  add.d      $f18, $f0, $f16
/* 10BA8 8000FFA8 46209320 */  cvt.s.d    $f12, $f18
.L8000FFAC:
/* 10BAC 8000FFAC 4604603C */  c.lt.s     $f12, $f4
.L8000FFB0:
/* 10BB0 8000FFB0 3C018007 */  lui        $at, %hi(D_800712A0)
/* 10BB4 8000FFB4 45000002 */  bc1f       .L8000FFC0
/* 10BB8 8000FFB8 00000000 */   nop
/* 10BBC 8000FFBC 46006307 */  neg.s      $f12, $f12
.L8000FFC0:
/* 10BC0 8000FFC0 D42812A0 */  ldc1       $f8, %lo(D_800712A0)($at)
/* 10BC4 8000FFC4 460061A1 */  cvt.d.s    $f6, $f12
/* 10BC8 8000FFC8 00001025 */  or         $v0, $zero, $zero
/* 10BCC 8000FFCC 4628303C */  c.lt.d     $f6, $f8
/* 10BD0 8000FFD0 00000000 */  nop
/* 10BD4 8000FFD4 45000002 */  bc1f       .L8000FFE0
/* 10BD8 8000FFD8 00000000 */   nop
/* 10BDC 8000FFDC 24020001 */  addiu      $v0, $zero, 1
.L8000FFE0:
/* 10BE0 8000FFE0 03E00008 */  jr         $ra
/* 10BE4 8000FFE4 00000000 */   nop
