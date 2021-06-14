.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osContAddressCrc
/* 47600 80046A00 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 47604 80046A04 3084FFFF */  andi       $a0, $a0, 0xffff
/* 47608 80046A08 A3A0000F */  sb         $zero, 0xf($sp)
/* 4760C 80046A0C AFA00008 */  sw         $zero, 8($sp)
.L80046A10:
/* 47610 80046A10 93AE000F */  lbu        $t6, 0xf($sp)
/* 47614 80046A14 31CF0010 */  andi       $t7, $t6, 0x10
/* 47618 80046A18 11E00004 */  beqz       $t7, .L80046A2C
/* 4761C 80046A1C 00000000 */   nop
/* 47620 80046A20 24180015 */  addiu      $t8, $zero, 0x15
/* 47624 80046A24 10000002 */  b          .L80046A30
/* 47628 80046A28 A3B8000E */   sb        $t8, 0xe($sp)
.L80046A2C:
/* 4762C 80046A2C A3A0000E */  sb         $zero, 0xe($sp)
.L80046A30:
/* 47630 80046A30 93B9000F */  lbu        $t9, 0xf($sp)
/* 47634 80046A34 30890400 */  andi       $t1, $a0, 0x400
/* 47638 80046A38 00194040 */  sll        $t0, $t9, 1
/* 4763C 80046A3C 11200003 */  beqz       $t1, .L80046A4C
/* 47640 80046A40 A3A8000F */   sb        $t0, 0xf($sp)
/* 47644 80046A44 10000002 */  b          .L80046A50
/* 47648 80046A48 24050001 */   addiu     $a1, $zero, 1
.L80046A4C:
/* 4764C 80046A4C 00002825 */  or         $a1, $zero, $zero
.L80046A50:
/* 47650 80046A50 93AA000F */  lbu        $t2, 0xf($sp)
/* 47654 80046A54 8FA80008 */  lw         $t0, 8($sp)
/* 47658 80046A58 93AF000E */  lbu        $t7, 0xe($sp)
/* 4765C 80046A5C 30AB00FF */  andi       $t3, $a1, 0xff
/* 47660 80046A60 00046840 */  sll        $t5, $a0, 1
/* 47664 80046A64 014B6025 */  or         $t4, $t2, $t3
/* 47668 80046A68 01A02025 */  or         $a0, $t5, $zero
/* 4766C 80046A6C 319800FF */  andi       $t8, $t4, 0xff
/* 47670 80046A70 25090001 */  addiu      $t1, $t0, 1
/* 47674 80046A74 29210010 */  slti       $at, $t1, 0x10
/* 47678 80046A78 A3AC000F */  sb         $t4, 0xf($sp)
/* 4767C 80046A7C 308EFFFF */  andi       $t6, $a0, 0xffff
/* 47680 80046A80 030FC826 */  xor        $t9, $t8, $t7
/* 47684 80046A84 AFA90008 */  sw         $t1, 8($sp)
/* 47688 80046A88 01C02025 */  or         $a0, $t6, $zero
/* 4768C 80046A8C 1420FFE0 */  bnez       $at, .L80046A10
/* 47690 80046A90 A3B9000F */   sb        $t9, 0xf($sp)
/* 47694 80046A94 93A2000F */  lbu        $v0, 0xf($sp)
/* 47698 80046A98 27BD0010 */  addiu      $sp, $sp, 0x10
/* 4769C 80046A9C 304A001F */  andi       $t2, $v0, 0x1f
/* 476A0 80046AA0 01401025 */  or         $v0, $t2, $zero
/* 476A4 80046AA4 304B00FF */  andi       $t3, $v0, 0xff
/* 476A8 80046AA8 03E00008 */  jr         $ra
/* 476AC 80046AAC 01601025 */   or        $v0, $t3, $zero

glabel __osContDataCrc
/* 476B0 80046AB0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 476B4 80046AB4 A3A0000F */  sb         $zero, 0xf($sp)
/* 476B8 80046AB8 AFA00008 */  sw         $zero, 8($sp)
.L80046ABC:
/* 476BC 80046ABC 240E0007 */  addiu      $t6, $zero, 7
/* 476C0 80046AC0 AFAE0004 */  sw         $t6, 4($sp)
.L80046AC4:
/* 476C4 80046AC4 93AF000F */  lbu        $t7, 0xf($sp)
/* 476C8 80046AC8 31F80080 */  andi       $t8, $t7, 0x80
/* 476CC 80046ACC 13000004 */  beqz       $t8, .L80046AE0
/* 476D0 80046AD0 00000000 */   nop
/* 476D4 80046AD4 24190085 */  addiu      $t9, $zero, 0x85
/* 476D8 80046AD8 10000002 */  b          .L80046AE4
/* 476DC 80046ADC A3B9000E */   sb        $t9, 0xe($sp)
.L80046AE0:
/* 476E0 80046AE0 A3A0000E */  sb         $zero, 0xe($sp)
.L80046AE4:
/* 476E4 80046AE4 93A8000F */  lbu        $t0, 0xf($sp)
/* 476E8 80046AE8 8FAA0008 */  lw         $t2, 8($sp)
/* 476EC 80046AEC 24010020 */  addiu      $at, $zero, 0x20
/* 476F0 80046AF0 00084840 */  sll        $t1, $t0, 1
/* 476F4 80046AF4 15410004 */  bne        $t2, $at, .L80046B08
/* 476F8 80046AF8 A3A9000F */   sb        $t1, 0xf($sp)
/* 476FC 80046AFC 312B00FF */  andi       $t3, $t1, 0xff
/* 47700 80046B00 1000000E */  b          .L80046B3C
/* 47704 80046B04 A3AB000F */   sb        $t3, 0xf($sp)
.L80046B08:
/* 47708 80046B08 8FAD0004 */  lw         $t5, 4($sp)
/* 4770C 80046B0C 908C0000 */  lbu        $t4, ($a0)
/* 47710 80046B10 240E0001 */  addiu      $t6, $zero, 1
/* 47714 80046B14 01AE7804 */  sllv       $t7, $t6, $t5
/* 47718 80046B18 018FC024 */  and        $t8, $t4, $t7
/* 4771C 80046B1C 13000003 */  beqz       $t8, .L80046B2C
/* 47720 80046B20 00000000 */   nop
/* 47724 80046B24 10000002 */  b          .L80046B30
/* 47728 80046B28 24050001 */   addiu     $a1, $zero, 1
.L80046B2C:
/* 4772C 80046B2C 00002825 */  or         $a1, $zero, $zero
.L80046B30:
/* 47730 80046B30 93B9000F */  lbu        $t9, 0xf($sp)
/* 47734 80046B34 03254025 */  or         $t0, $t9, $a1
/* 47738 80046B38 A3A8000F */  sb         $t0, 0xf($sp)
.L80046B3C:
/* 4773C 80046B3C 8FAE0004 */  lw         $t6, 4($sp)
/* 47740 80046B40 93AA000F */  lbu        $t2, 0xf($sp)
/* 47744 80046B44 93A9000E */  lbu        $t1, 0xe($sp)
/* 47748 80046B48 25CDFFFF */  addiu      $t5, $t6, -1
/* 4774C 80046B4C AFAD0004 */  sw         $t5, 4($sp)
/* 47750 80046B50 01495826 */  xor        $t3, $t2, $t1
/* 47754 80046B54 05A1FFDB */  bgez       $t5, .L80046AC4
/* 47758 80046B58 A3AB000F */   sb        $t3, 0xf($sp)
/* 4775C 80046B5C 8FAC0008 */  lw         $t4, 8($sp)
/* 47760 80046B60 24840001 */  addiu      $a0, $a0, 1
/* 47764 80046B64 258F0001 */  addiu      $t7, $t4, 1
/* 47768 80046B68 29E10021 */  slti       $at, $t7, 0x21
/* 4776C 80046B6C 1420FFD3 */  bnez       $at, .L80046ABC
/* 47770 80046B70 AFAF0008 */   sw        $t7, 8($sp)
/* 47774 80046B74 93A2000F */  lbu        $v0, 0xf($sp)
/* 47778 80046B78 03E00008 */  jr         $ra
/* 4777C 80046B7C 27BD0010 */   addiu     $sp, $sp, 0x10
