.section .late_rodata
glabel D_80071618
/* 72218 80071618 3FF147AE147AE148 */ .double 1.08000000000000007


.section .text
glabel func_8001C8C4
/* 1D4C4 8001C8C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D4C8 8001C8C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1D4CC 8001C8CC 3C028008 */  lui        $v0, %hi(D_8007D1A0)
/* 1D4D0 8001C8D0 8C42D1A0 */  lw         $v0, %lo(D_8007D1A0)($v0)
/* 1D4D4 8001C8D4 24010007 */  addiu      $at, $zero, 0x7
/* 1D4D8 8001C8D8 3C038008 */  lui        $v1, %hi(D_8007D0A8)
/* 1D4DC 8001C8DC 14410007 */  bne        $v0, $at, .L8001C8FC
/* 1D4E0 8001C8E0 2463D0A8 */   addiu     $v1, $v1, %lo(D_8007D0A8)
/* 1D4E4 8001C8E4 44800000 */  mtc1       $zero, $f0
/* 1D4E8 8001C8E8 3C018009 */  lui        $at, %hi(D_8008C59C)
/* 1D4EC 8001C8EC E420C59C */  swc1       $f0, %lo(D_8008C59C)($at)
/* 1D4F0 8001C8F0 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* 1D4F4 8001C8F4 10000009 */  b          .L8001C91C
/* 1D4F8 8001C8F8 E420C5A0 */   swc1      $f0, %lo(D_8008C5A0)($at)
.L8001C8FC:
/* 1D4FC 8001C8FC 3C018008 */  lui        $at, %hi(D_8007D1CC)
/* 1D500 8001C900 C424D1CC */  lwc1       $f4, %lo(D_8007D1CC)($at)
/* 1D504 8001C904 3C018009 */  lui        $at, %hi(D_8008C59C)
/* 1D508 8001C908 E424C59C */  swc1       $f4, %lo(D_8008C59C)($at)
/* 1D50C 8001C90C 3C018008 */  lui        $at, %hi(D_8007D1D4)
/* 1D510 8001C910 C426D1D4 */  lwc1       $f6, %lo(D_8007D1D4)($at)
/* 1D514 8001C914 3C018009 */  lui        $at, %hi(D_8008C5A0)
/* 1D518 8001C918 E426C5A0 */  swc1       $f6, %lo(D_8008C5A0)($at)
.L8001C91C:
/* 1D51C 8001C91C 240E0305 */  addiu      $t6, $zero, 0x305
/* 1D520 8001C920 3C018009 */  lui        $at, %hi(D_8008C592)
/* 1D524 8001C924 A42EC592 */  sh         $t6, %lo(D_8008C592)($at)
/* 1D528 8001C928 3C018009 */  lui        $at, %hi(D_8008C596)
/* 1D52C 8001C92C A420C596 */  sh         $zero, %lo(D_8008C596)($at)
/* 1D530 8001C930 3C018009 */  lui        $at, %hi(D_8008C594)
/* 1D534 8001C934 A420C594 */  sh         $zero, %lo(D_8008C594)($at)
/* 1D538 8001C938 8C6F0000 */  lw         $t7, 0x0($v1)
/* 1D53C 8001C93C 3C088008 */  lui        $t0, %hi(D_8007D0AC)
/* 1D540 8001C940 3C018009 */  lui        $at, %hi(D_8008C568)
/* 1D544 8001C944 2508D0AC */  addiu      $t0, $t0, %lo(D_8007D0AC)
/* 1D548 8001C948 AC2FC568 */  sw         $t7, %lo(D_8008C568)($at)
/* 1D54C 8001C94C 8D180000 */  lw         $t8, 0x0($t0)
/* 1D550 8001C950 3C018009 */  lui        $at, %hi(D_8008C56C)
/* 1D554 8001C954 3C19803B */  lui        $t9, %hi(D_803AA164)
/* 1D558 8001C958 AC38C56C */  sw         $t8, %lo(D_8008C56C)($at)
/* 1D55C 8001C95C 3C018009 */  lui        $at, %hi(D_8008C570)
/* 1D560 8001C960 AC22C570 */  sw         $v0, %lo(D_8008C570)($at)
/* 1D564 8001C964 3C09803B */  lui        $t1, %hi(D_803AABB8)
/* 1D568 8001C968 2739A164 */  addiu      $t9, $t9, %lo(D_803AA164)
/* 1D56C 8001C96C 2529ABB8 */  addiu      $t1, $t1, %lo(D_803AABB8)
/* 1D570 8001C970 AC790000 */  sw         $t9, 0x0($v1)
/* 1D574 8001C974 AD090000 */  sw         $t1, 0x0($t0)
/* 1D578 8001C978 3C0A8008 */  lui        $t2, %hi(D_8007C998)
/* 1D57C 8001C97C 254AC998 */  addiu      $t2, $t2, %lo(D_8007C998)
/* 1D580 8001C980 3C058009 */  lui        $a1, %hi(D_8008C59C)
/* 1D584 8001C984 3C068009 */  lui        $a2, %hi(D_8008C5A0)
/* 1D588 8001C988 3C078008 */  lui        $a3, %hi(D_8007D1DC)
/* 1D58C 8001C98C 8CE7D1DC */  lw         $a3, %lo(D_8007D1DC)($a3)
/* 1D590 8001C990 8CC6C5A0 */  lw         $a2, %lo(D_8008C5A0)($a2)
/* 1D594 8001C994 8CA5C59C */  lw         $a1, %lo(D_8008C59C)($a1)
/* 1D598 8001C998 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1D59C 8001C99C 0C002DF7 */  jal        func_8000B7DC
/* 1D5A0 8001C9A0 2444FFFF */   addiu     $a0, $v0, -0x1
/* 1D5A4 8001C9A4 0C002CAE */  jal        func_8000B2B8
/* 1D5A8 8001C9A8 00000000 */   nop
/* 1D5AC 8001C9AC 3C018008 */  lui        $at, %hi(D_8007D1A0)
/* 1D5B0 8001C9B0 3C028008 */  lui        $v0, %hi(D_8007C990)
/* 1D5B4 8001C9B4 AC20D1A0 */  sw         $zero, %lo(D_8007D1A0)($at)
/* 1D5B8 8001C9B8 2442C990 */  addiu      $v0, $v0, %lo(D_8007C990)
/* 1D5BC 8001C9BC 240B0001 */  addiu      $t3, $zero, 0x1
/* 1D5C0 8001C9C0 AC4B0000 */  sw         $t3, 0x0($v0)
/* 1D5C4 8001C9C4 3C018009 */  lui        $at, %hi(D_8008C59A)
/* 1D5C8 8001C9C8 0C002498 */  jal        func_80009260
/* 1D5CC 8001C9CC A42BC59A */   sh        $t3, %lo(D_8008C59A)($at)
/* 1D5D0 8001C9D0 24020001 */  addiu      $v0, $zero, 0x1
/* 1D5D4 8001C9D4 3C018009 */  lui        $at, %hi(D_8008C558)
/* 1D5D8 8001C9D8 AC22C558 */  sw         $v0, %lo(D_8008C558)($at)
/* 1D5DC 8001C9DC 3C0D8008 */  lui        $t5, %hi(D_8007C9BC)
/* 1D5E0 8001C9E0 25ADC9BC */  addiu      $t5, $t5, %lo(D_8007C9BC)
/* 1D5E4 8001C9E4 3C018009 */  lui        $at, %hi(D_8008C538)
/* 1D5E8 8001C9E8 AC2DC538 */  sw         $t5, %lo(D_8008C538)($at)
/* 1D5EC 8001C9EC 3C018009 */  lui        $at, %hi(D_8008C58C)
/* 1D5F0 8001C9F0 A422C58C */  sh         $v0, %lo(D_8008C58C)($at)
/* 1D5F4 8001C9F4 3C018009 */  lui        $at, %hi(D_8008C58E)
/* 1D5F8 8001C9F8 3C0E8009 */  lui        $t6, %hi(D_8008C59A)
/* 1D5FC 8001C9FC 95CEC59A */  lhu        $t6, %lo(D_8008C59A)($t6)
/* 1D600 8001CA00 A422C58E */  sh         $v0, %lo(D_8008C58E)($at)
/* 1D604 8001CA04 3C018009 */  lui        $at, %hi(D_8008C590)
/* 1D608 8001CA08 A420C590 */  sh         $zero, %lo(D_8008C590)($at)
/* 1D60C 8001CA0C 3C188009 */  lui        $t8, %hi(D_8008C570)
/* 1D610 8001CA10 8F18C570 */  lw         $t8, %lo(D_8008C570)($t8)
/* 1D614 8001CA14 3C018009 */  lui        $at, %hi(D_8008C598)
/* 1D618 8001CA18 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 1D61C 8001CA1C A42FC598 */  sh         $t7, %lo(D_8008C598)($at)
/* 1D620 8001CA20 24010008 */  addiu      $at, $zero, 0x8
/* 1D624 8001CA24 13010003 */  beq        $t8, $at, .L8001CA34
/* 1D628 8001CA28 24020029 */   addiu     $v0, $zero, 0x29
/* 1D62C 8001CA2C 10000001 */  b          .L8001CA34
/* 1D630 8001CA30 00001025 */   or        $v0, $zero, $zero
.L8001CA34:
/* 1D634 8001CA34 00022600 */  sll        $a0, $v0, 24
/* 1D638 8001CA38 0004CE03 */  sra        $t9, $a0, 24
/* 1D63C 8001CA3C 0C0099EE */  jal        func_800267B8
/* 1D640 8001CA40 03202025 */   or        $a0, $t9, $zero
/* 1D644 8001CA44 0C000E87 */  jal        func_80003A1C
/* 1D648 8001CA48 00000000 */   nop
/* 1D64C 8001CA4C 0C008222 */  jal        func_80020888
/* 1D650 8001CA50 00000000 */   nop
/* 1D654 8001CA54 3C098009 */  lui        $t1, %hi(D_8008C570)
/* 1D658 8001CA58 8D29C570 */  lw         $t1, %lo(D_8008C570)($t1)
/* 1D65C 8001CA5C 3C018005 */  lui        $at, %hi(D_8004D28C)
/* 1D660 8001CA60 3C028009 */  lui        $v0, %hi(D_8008C434)
/* 1D664 8001CA64 00095080 */  sll        $t2, $t1, 2
/* 1D668 8001CA68 002A0821 */  addu       $at, $at, $t2
/* 1D66C 8001CA6C C428D28C */  lwc1       $f8, %lo(D_8004D28C)($at)
/* 1D670 8001CA70 2442C434 */  addiu      $v0, $v0, %lo(D_8008C434)
/* 1D674 8001CA74 3C018007 */  lui        $at, %hi(D_80071618)
/* 1D678 8001CA78 E4480000 */  swc1       $f8, 0x0($v0)
/* 1D67C 8001CA7C C44A0000 */  lwc1       $f10, 0x0($v0)
/* 1D680 8001CA80 D4321618 */  ldc1       $f18, %lo(D_80071618)($at)
/* 1D684 8001CA84 3C058009 */  lui        $a1, %hi(D_8008C59C)
/* 1D688 8001CA88 46005421 */  cvt.d.s    $f16, $f10
/* 1D68C 8001CA8C 3C068008 */  lui        $a2, %hi(D_8007D1D0)
/* 1D690 8001CA90 46328102 */  mul.d      $f4, $f16, $f18
/* 1D694 8001CA94 3C078009 */  lui        $a3, %hi(D_8008C5A0)
/* 1D698 8001CA98 8CE7C5A0 */  lw         $a3, %lo(D_8008C5A0)($a3)
/* 1D69C 8001CA9C 8CC6D1D0 */  lw         $a2, %lo(D_8007D1D0)($a2)
/* 1D6A0 8001CAA0 8CA5C59C */  lw         $a1, %lo(D_8008C59C)($a1)
/* 1D6A4 8001CAA4 00002025 */  or         $a0, $zero, $zero
/* 1D6A8 8001CAA8 462021A0 */  cvt.s.d    $f6, $f4
/* 1D6AC 8001CAAC 0C0066A6 */  jal        func_80019A98
/* 1D6B0 8001CAB0 E7A60010 */   swc1      $f6, 0x10($sp)
/* 1D6B4 8001CAB4 3C018009 */  lui        $at, %hi(D_8008C55C)
/* 1D6B8 8001CAB8 A422C55C */  sh         $v0, %lo(D_8008C55C)($at)
/* 1D6BC 8001CABC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1D6C0 8001CAC0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1D6C4 8001CAC4 03E00008 */  jr         $ra
/* 1D6C8 8001CAC8 00000000 */   nop
