glabel func_800073CC
/* 7FCC 800073CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7FD0 800073D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7FD4 800073D4 3C0E8009 */  lui        $t6, %hi(D_8008C592)
/* 7FD8 800073D8 95CEC592 */  lhu        $t6, %lo(D_8008C592)($t6)
/* 7FDC 800073DC 3C018009 */  lui        $at, %hi(D_8008C5A4)
/* 7FE0 800073E0 31CF0001 */  andi       $t7, $t6, 0x1
/* 7FE4 800073E4 51E0002B */  beql       $t7, $zero, .L80007494
/* 7FE8 800073E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7FEC 800073EC C4840014 */  lwc1       $f4, 0x14($a0)
/* 7FF0 800073F0 C426C5A4 */  lwc1       $f6, %lo(D_8008C5A4)($at)
/* 7FF4 800073F4 3C018009 */  lui        $at, %hi(D_8008C430)
/* 7FF8 800073F8 C42AC430 */  lwc1       $f10, %lo(D_8008C430)($at)
/* 7FFC 800073FC 46062001 */  sub.s      $f0, $f4, $f6
/* 8000 80007400 C488001C */  lwc1       $f8, 0x1C($a0)
/* 8004 80007404 AFA40018 */  sw         $a0, 0x18($sp)
/* 8008 80007408 460A4081 */  sub.s      $f2, $f8, $f10
/* 800C 8000740C 46000402 */  mul.s      $f16, $f0, $f0
/* 8010 80007410 00000000 */  nop
/* 8014 80007414 46021482 */  mul.s      $f18, $f2, $f2
/* 8018 80007418 0C00D3D8 */  jal        _nsqrtf
/* 801C 8000741C 46128300 */   add.s     $f12, $f16, $f18
/* 8020 80007420 3C038008 */  lui        $v1, %hi(D_8007BCA0)
/* 8024 80007424 2463BCA0 */  addiu      $v1, $v1, %lo(D_8007BCA0)
/* 8028 80007428 C4640000 */  lwc1       $f4, 0x0($v1)
/* 802C 8000742C 3C014049 */  lui        $at, (0x40490000 >> 16)
/* 8030 80007430 44816800 */  mtc1       $at, $f13
/* 8034 80007434 46002180 */  add.s      $f6, $f4, $f0
/* 8038 80007438 44806000 */  mtc1       $zero, $f12
/* 803C 8000743C 8FA40018 */  lw         $a0, 0x18($sp)
/* 8040 80007440 E4660000 */  swc1       $f6, 0x0($v1)
/* 8044 80007444 C4680000 */  lwc1       $f8, 0x0($v1)
/* 8048 80007448 460040A1 */  cvt.d.s    $f2, $f8
/* 804C 8000744C 4622603C */  c.lt.d     $f12, $f2
/* 8050 80007450 00000000 */  nop
/* 8054 80007454 4502000F */  bc1fl      .L80007494
/* 8058 80007458 8FBF0014 */   lw        $ra, 0x14($sp)
/* 805C 8000745C 462C1281 */  sub.d      $f10, $f2, $f12
.L80007460:
/* 8060 80007460 46205420 */  cvt.s.d    $f16, $f10
/* 8064 80007464 E4700000 */  swc1       $f16, 0x0($v1)
/* 8068 80007468 8C820010 */  lw         $v0, 0x10($a0)
/* 806C 8000746C 9458002C */  lhu        $t8, 0x2C($v0)
/* 8070 80007470 27190001 */  addiu      $t9, $t8, 0x1
/* 8074 80007474 A459002C */  sh         $t9, 0x2C($v0)
/* 8078 80007478 C4720000 */  lwc1       $f18, 0x0($v1)
/* 807C 8000747C 460090A1 */  cvt.d.s    $f2, $f18
/* 8080 80007480 4622603C */  c.lt.d     $f12, $f2
/* 8084 80007484 00000000 */  nop
/* 8088 80007488 4503FFF5 */  bc1tl      .L80007460
/* 808C 8000748C 462C1281 */   sub.d     $f10, $f2, $f12
/* 8090 80007490 8FBF0014 */  lw         $ra, 0x14($sp)
.L80007494:
/* 8094 80007494 27BD0018 */  addiu      $sp, $sp, 0x18
/* 8098 80007498 03E00008 */  jr         $ra
/* 809C 8000749C 00000000 */   nop
