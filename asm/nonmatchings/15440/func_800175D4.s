glabel func_800175D4
/* 181D4 800175D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 181D8 800175D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 181DC 800175DC 00803025 */  or         $a2, $a0, $zero
/* 181E0 800175E0 94AE005E */  lhu        $t6, 0x5E($a1)
/* 181E4 800175E4 3C0A8005 */  lui        $t2, %hi(D_8004CDD0)
/* 181E8 800175E8 00A02025 */  or         $a0, $a1, $zero
/* 181EC 800175EC 31CF0001 */  andi       $t7, $t6, 0x1
/* 181F0 800175F0 11E0000E */  beqz       $t7, .L8001762C
/* 181F4 800175F4 254ACDD0 */   addiu     $t2, $t2, %lo(D_8004CDD0)
/* 181F8 800175F8 0C002C50 */  jal        func_8000B140
/* 181FC 800175FC AFA60018 */   sw        $a2, 0x18($sp)
/* 18200 80017600 0002C0C0 */  sll        $t8, $v0, 3
/* 18204 80017604 0302C021 */  addu       $t8, $t8, $v0
/* 18208 80017608 0018C080 */  sll        $t8, $t8, 2
/* 1820C 8001760C 0302C021 */  addu       $t8, $t8, $v0
/* 18210 80017610 0018C0C0 */  sll        $t8, $t8, 3
/* 18214 80017614 3C198008 */  lui        $t9, %hi(D_8007C9B8)
/* 18218 80017618 0338C821 */  addu       $t9, $t9, $t8
/* 1821C 8001761C 8F39C9B8 */  lw         $t9, %lo(D_8007C9B8)($t9)
/* 18220 80017620 8FA60018 */  lw         $a2, 0x18($sp)
/* 18224 80017624 1000001A */  b          .L80017690
/* 18228 80017628 9723002A */   lhu       $v1, 0x2A($t9)
.L8001762C:
/* 1822C 8001762C 90C40006 */  lbu        $a0, 0x6($a2)
/* 18230 80017630 3C058008 */  lui        $a1, %hi(D_8007BA80)
/* 18234 80017634 24A5BA80 */  addiu      $a1, $a1, %lo(D_8007BA80)
/* 18238 80017638 00044880 */  sll        $t1, $a0, 2
/* 1823C 8001763C 012A1021 */  addu       $v0, $t1, $t2
/* 18240 80017640 944C0000 */  lhu        $t4, 0x0($v0)
/* 18244 80017644 94590002 */  lhu        $t9, 0x2($v0)
/* 18248 80017648 00A45821 */  addu       $t3, $a1, $a0
/* 1824C 8001764C 00AC6821 */  addu       $t5, $a1, $t4
/* 18250 80017650 91AE0024 */  lbu        $t6, 0x24($t5)
/* 18254 80017654 944C0004 */  lhu        $t4, 0x4($v0)
/* 18258 80017658 91630024 */  lbu        $v1, 0x24($t3)
/* 1825C 8001765C 00B94021 */  addu       $t0, $a1, $t9
/* 18260 80017660 91090024 */  lbu        $t1, 0x24($t0)
/* 18264 80017664 000E7903 */  sra        $t7, $t6, 4
/* 18268 80017668 00AC6821 */  addu       $t5, $a1, $t4
/* 1826C 8001766C 91AE0024 */  lbu        $t6, 0x24($t5)
/* 18270 80017670 006FC021 */  addu       $t8, $v1, $t7
/* 18274 80017674 000950C3 */  sra        $t2, $t1, 3
/* 18278 80017678 030A5821 */  addu       $t3, $t8, $t2
/* 1827C 8001767C 000E78C3 */  sra        $t7, $t6, 3
/* 18280 80017680 016F1821 */  addu       $v1, $t3, $t7
/* 18284 80017684 3078FFFF */  andi       $t8, $v1, 0xFFFF
/* 18288 80017688 24420004 */  addiu      $v0, $v0, 0x4
/* 1828C 8001768C 03001825 */  or         $v1, $t8, $zero
.L80017690:
/* 18290 80017690 94D9000C */  lhu        $t9, 0xC($a2)
/* 18294 80017694 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 18298 80017698 30650003 */  andi       $a1, $v1, 0x3
/* 1829C 8001769C 44992000 */  mtc1       $t9, $f4
/* 182A0 800176A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 182A4 800176A4 07210005 */  bgez       $t9, .L800176BC
/* 182A8 800176A8 468021A1 */   cvt.d.w   $f6, $f4
/* 182AC 800176AC 44814800 */  mtc1       $at, $f9
/* 182B0 800176B0 44804000 */  mtc1       $zero, $f8
/* 182B4 800176B4 00000000 */  nop
/* 182B8 800176B8 46283180 */  add.d      $f6, $f6, $f8
.L800176BC:
/* 182BC 800176BC 3C018007 */  lui        $at, %hi(D_800714D0)
/* 182C0 800176C0 D42A14D0 */  ldc1       $f10, %lo(D_800714D0)($at)
/* 182C4 800176C4 3C018007 */  lui        $at, %hi(D_800714D8)
/* 182C8 800176C8 D42414D8 */  ldc1       $f4, %lo(D_800714D8)($at)
/* 182CC 800176CC 462A3402 */  mul.d      $f16, $f6, $f10
/* 182D0 800176D0 00001025 */  or         $v0, $zero, $zero
/* 182D4 800176D4 00602025 */  or         $a0, $v1, $zero
/* 182D8 800176D8 46208320 */  cvt.s.d    $f12, $f16
/* 182DC 800176DC 460064A1 */  cvt.d.s    $f18, $f12
/* 182E0 800176E0 46249202 */  mul.d      $f8, $f18, $f4
/* 182E4 800176E4 10600020 */  beqz       $v1, .L80017768
/* 182E8 800176E8 46204020 */   cvt.s.d   $f0, $f8
/* 182EC 800176EC 10A0000A */  beqz       $a1, .L80017718
/* 182F0 800176F0 00A01825 */   or        $v1, $a1, $zero
/* 182F4 800176F4 3C018007 */  lui        $at, %hi(D_800714E0)
/* 182F8 800176F8 D42214E0 */  ldc1       $f2, %lo(D_800714E0)($at)
.L800176FC:
/* 182FC 800176FC 460001A1 */  cvt.d.s    $f6, $f0
/* 18300 80017700 46006300 */  add.s      $f12, $f12, $f0
/* 18304 80017704 46223282 */  mul.d      $f10, $f6, $f2
/* 18308 80017708 24420001 */  addiu      $v0, $v0, 0x1
/* 1830C 8001770C 1462FFFB */  bne        $v1, $v0, .L800176FC
/* 18310 80017710 46205020 */   cvt.s.d   $f0, $f10
/* 18314 80017714 10440014 */  beq        $v0, $a0, .L80017768
.L80017718:
/* 18318 80017718 3C018007 */   lui       $at, %hi(D_800714E8)
/* 1831C 8001771C D42214E8 */  ldc1       $f2, %lo(D_800714E8)($at)
.L80017720:
/* 18320 80017720 46000421 */  cvt.d.s    $f16, $f0
/* 18324 80017724 46006300 */  add.s      $f12, $f12, $f0
/* 18328 80017728 46228482 */  mul.d      $f18, $f16, $f2
/* 1832C 8001772C 24420004 */  addiu      $v0, $v0, 0x4
/* 18330 80017730 46209020 */  cvt.s.d    $f0, $f18
/* 18334 80017734 46000121 */  cvt.d.s    $f4, $f0
/* 18338 80017738 46006300 */  add.s      $f12, $f12, $f0
/* 1833C 8001773C 46222202 */  mul.d      $f8, $f4, $f2
/* 18340 80017740 46204020 */  cvt.s.d    $f0, $f8
/* 18344 80017744 460001A1 */  cvt.d.s    $f6, $f0
/* 18348 80017748 46006300 */  add.s      $f12, $f12, $f0
/* 1834C 8001774C 46223282 */  mul.d      $f10, $f6, $f2
/* 18350 80017750 46205020 */  cvt.s.d    $f0, $f10
/* 18354 80017754 46000421 */  cvt.d.s    $f16, $f0
/* 18358 80017758 46006300 */  add.s      $f12, $f12, $f0
/* 1835C 8001775C 46228482 */  mul.d      $f18, $f16, $f2
/* 18360 80017760 1444FFEF */  bne        $v0, $a0, .L80017720
/* 18364 80017764 46209020 */   cvt.s.d   $f0, $f18
.L80017768:
/* 18368 80017768 4448F800 */  cfc1       $t0, $31
/* 1836C 8001776C 24020001 */  addiu      $v0, $zero, 0x1
/* 18370 80017770 44C2F800 */  ctc1       $v0, $31
/* 18374 80017774 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 18378 80017778 46006124 */  cvt.w.s    $f4, $f12
/* 1837C 8001777C 4442F800 */  cfc1       $v0, $31
/* 18380 80017780 00000000 */  nop
/* 18384 80017784 30420078 */  andi       $v0, $v0, 0x78
/* 18388 80017788 50400013 */  beql       $v0, $zero, .L800177D8
/* 1838C 8001778C 44022000 */   mfc1      $v0, $f4
/* 18390 80017790 44812000 */  mtc1       $at, $f4
/* 18394 80017794 24020001 */  addiu      $v0, $zero, 0x1
/* 18398 80017798 46046101 */  sub.s      $f4, $f12, $f4
/* 1839C 8001779C 44C2F800 */  ctc1       $v0, $31
/* 183A0 800177A0 00000000 */  nop
/* 183A4 800177A4 46002124 */  cvt.w.s    $f4, $f4
/* 183A8 800177A8 4442F800 */  cfc1       $v0, $31
/* 183AC 800177AC 00000000 */  nop
/* 183B0 800177B0 30420078 */  andi       $v0, $v0, 0x78
/* 183B4 800177B4 14400005 */  bnez       $v0, .L800177CC
/* 183B8 800177B8 00000000 */   nop
/* 183BC 800177BC 44022000 */  mfc1       $v0, $f4
/* 183C0 800177C0 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 183C4 800177C4 10000007 */  b          .L800177E4
/* 183C8 800177C8 00411025 */   or        $v0, $v0, $at
.L800177CC:
/* 183CC 800177CC 10000005 */  b          .L800177E4
/* 183D0 800177D0 2402FFFF */   addiu     $v0, $zero, -0x1
/* 183D4 800177D4 44022000 */  mfc1       $v0, $f4
.L800177D8:
/* 183D8 800177D8 00000000 */  nop
/* 183DC 800177DC 0440FFFB */  bltz       $v0, .L800177CC
/* 183E0 800177E0 00000000 */   nop
.L800177E4:
/* 183E4 800177E4 44C8F800 */  ctc1       $t0, $31
/* 183E8 800177E8 3049FFFF */  andi       $t1, $v0, 0xFFFF
/* 183EC 800177EC 01201025 */  or         $v0, $t1, $zero
/* 183F0 800177F0 03E00008 */  jr         $ra
/* 183F4 800177F4 27BD0018 */   addiu     $sp, $sp, 0x18