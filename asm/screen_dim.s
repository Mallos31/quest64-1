.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel initScreenDimStateAndTimer
/* 234E0 800228E0 3C018009 */  lui        $at, %hi(screenDimState)
/* 234E4 800228E4 A420D020 */  sh         $zero, %lo(screenDimState)($at)
/* 234E8 800228E8 3C018009 */  lui        $at, %hi(screenDimTimer)
/* 234EC 800228EC AC20D024 */  sw         $zero, %lo(screenDimTimer)($at)
/* 234F0 800228F0 03E00008 */  jr         $ra
/* 234F4 800228F4 00000000 */   nop

glabel unk_dimsScreenWhenOpeningMenu
/* 234F8 800228F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 234FC 800228FC 3C098009 */  lui        $t1, %hi(screenDimState)
/* 23500 80022900 2529D020 */  addiu      $t1, $t1, %lo(screenDimState)
/* 23504 80022904 AFBF0014 */  sw         $ra, 0x14($sp)
/* 23508 80022908 00803825 */  or         $a3, $a0, $zero
/* 2350C 8002290C 952E0000 */  lhu        $t6, ($t1)
/* 23510 80022910 3C038008 */  lui        $v1, %hi(DLPtr)
/* 23514 80022914 2463B2FC */  addiu      $v1, $v1, %lo(DLPtr)
/* 23518 80022918 31CF0001 */  andi       $t7, $t6, 1
/* 2351C 8002291C 11E00076 */  beqz       $t7, .L80022AF8
/* 23520 80022920 3C088008 */   lui       $t0, %hi(DLToLoad)
/* 23524 80022924 2508B2F8 */  addiu      $t0, $t0, %lo(DLToLoad)
/* 23528 80022928 8C620000 */  lw         $v0, ($v1)
/* 2352C 8002292C 3C19E700 */  lui        $t9, 0xe700
/* 23530 80022930 3C0B0103 */  lui        $t3, 0x103
/* 23534 80022934 24580008 */  addiu      $t8, $v0, 8
/* 23538 80022938 AC780000 */  sw         $t8, ($v1)
/* 2353C 8002293C AC400004 */  sw         $zero, 4($v0)
/* 23540 80022940 AC590000 */  sw         $t9, ($v0)
/* 23544 80022944 8C620000 */  lw         $v0, ($v1)
/* 23548 80022948 3C0C0200 */  lui        $t4, 0x200
/* 2354C 8002294C 258C0040 */  addiu      $t4, $t4, 0x40
/* 23550 80022950 244A0008 */  addiu      $t2, $v0, 8
/* 23554 80022954 AC6A0000 */  sw         $t2, ($v1)
/* 23558 80022958 356B0040 */  ori        $t3, $t3, 0x40
/* 2355C 8002295C AC4B0000 */  sw         $t3, ($v0)
/* 23560 80022960 AC4C0004 */  sw         $t4, 4($v0)
/* 23564 80022964 8D0D0000 */  lw         $t5, ($t0)
/* 23568 80022968 000D7180 */  sll        $t6, $t5, 6
/* 2356C 8002296C 00EE2021 */  addu       $a0, $a3, $t6
/* 23570 80022970 0C00D4E2 */  jal        guMtxIdent
/* 23574 80022974 248400C0 */   addiu     $a0, $a0, 0xc0
/* 23578 80022978 3C038008 */  lui        $v1, 0x8008
/* 2357C 8002297C 3C078009 */  lui        $a3, %hi(ptr_ScreenDimValue)
/* 23580 80022980 3C088008 */  lui        $t0, %hi(DLToLoad)
/* 23584 80022984 3C098009 */  lui        $t1, %hi(screenDimState)
/* 23588 80022988 2529D020 */  addiu      $t1, $t1, %lo(screenDimState)
/* 2358C 8002298C 2508B2F8 */  addiu      $t0, $t0, %lo(DLToLoad)
/* 23590 80022990 24E7D028 */  addiu      $a3, $a3, %lo(ptr_ScreenDimValue)
/* 23594 80022994 2463B2FC */  addiu      $v1, $v1, -0x4d04
/* 23598 80022998 8C620000 */  lw         $v0, ($v1)
/* 2359C 8002299C 3C180102 */  lui        $t8, 0x102
/* 235A0 800229A0 37180040 */  ori        $t8, $t8, 0x40
/* 235A4 800229A4 244F0008 */  addiu      $t7, $v0, 8
/* 235A8 800229A8 AC6F0000 */  sw         $t7, ($v1)
/* 235AC 800229AC AC580000 */  sw         $t8, ($v0)
/* 235B0 800229B0 8D190000 */  lw         $t9, ($t0)
/* 235B4 800229B4 3C0C0200 */  lui        $t4, 0x200
/* 235B8 800229B8 258C0000 */  addiu      $t4, $t4, 0
/* 235BC 800229BC 00195180 */  sll        $t2, $t9, 6
/* 235C0 800229C0 254B00C0 */  addiu      $t3, $t2, 0xc0
/* 235C4 800229C4 016C6821 */  addu       $t5, $t3, $t4
/* 235C8 800229C8 AC4D0004 */  sw         $t5, 4($v0)
/* 235CC 800229CC 8D0E0000 */  lw         $t6, ($t0)
/* 235D0 800229D0 3C068009 */  lui        $a2, %hi(screenDimTimer)
/* 235D4 800229D4 24C6D024 */  addiu      $a2, $a2, %lo(screenDimTimer)
/* 235D8 800229D8 25CF0001 */  addiu      $t7, $t6, 1
/* 235DC 800229DC AD0F0000 */  sw         $t7, ($t0)
/* 235E0 800229E0 8C620000 */  lw         $v0, ($v1)
/* 235E4 800229E4 3C19FB00 */  lui        $t9, 0xfb00
/* 235E8 800229E8 24580008 */  addiu      $t8, $v0, 8
/* 235EC 800229EC AC780000 */  sw         $t8, ($v1)
/* 235F0 800229F0 AC590000 */  sw         $t9, ($v0)
/* 235F4 800229F4 8CE40000 */  lw         $a0, ($a3)
/* 235F8 800229F8 908B0000 */  lbu        $t3, ($a0)
/* 235FC 800229FC 908E0001 */  lbu        $t6, 1($a0)
/* 23600 80022A00 908A0002 */  lbu        $t2, 2($a0)
/* 23604 80022A04 000B6600 */  sll        $t4, $t3, 0x18
/* 23608 80022A08 000E7C00 */  sll        $t7, $t6, 0x10
/* 2360C 80022A0C 018FC025 */  or         $t8, $t4, $t7
/* 23610 80022A10 908C0003 */  lbu        $t4, 3($a0)
/* 23614 80022A14 000A5A00 */  sll        $t3, $t2, 8
/* 23618 80022A18 030B6825 */  or         $t5, $t8, $t3
/* 2361C 80022A1C 01AC7825 */  or         $t7, $t5, $t4
/* 23620 80022A20 AC4F0004 */  sw         $t7, 4($v0)
/* 23624 80022A24 8CF90000 */  lw         $t9, ($a3)
/* 23628 80022A28 240100FF */  addiu      $at, $zero, 0xff
/* 2362C 80022A2C 3C0BB900 */  lui        $t3, 0xb900
/* 23630 80022A30 932A0003 */  lbu        $t2, 3($t9)
/* 23634 80022A34 3C0CB900 */  lui        $t4, 0xb900
/* 23638 80022A38 356B031D */  ori        $t3, $t3, 0x31d
/* 2363C 80022A3C 1541000A */  bne        $t2, $at, .L80022A68
/* 23640 80022A40 358C031D */   ori       $t4, $t4, 0x31d
/* 23644 80022A44 8C620000 */  lw         $v0, ($v1)
/* 23648 80022A48 3C0E0F0A */  lui        $t6, 0xf0a
/* 2364C 80022A4C 35CE4000 */  ori        $t6, $t6, 0x4000
/* 23650 80022A50 24580008 */  addiu      $t8, $v0, 8
/* 23654 80022A54 AC780000 */  sw         $t8, ($v1)
/* 23658 80022A58 AC4E0004 */  sw         $t6, 4($v0)
/* 2365C 80022A5C AC4B0000 */  sw         $t3, ($v0)
/* 23660 80022A60 10000008 */  b          .L80022A84
/* 23664 80022A64 00000000 */   nop
.L80022A68:
/* 23668 80022A68 8C620000 */  lw         $v0, ($v1)
/* 2366C 80022A6C 3C0F0050 */  lui        $t7, 0x50
/* 23670 80022A70 35EF4340 */  ori        $t7, $t7, 0x4340
/* 23674 80022A74 244D0008 */  addiu      $t5, $v0, 8
/* 23678 80022A78 AC6D0000 */  sw         $t5, ($v1)
/* 2367C 80022A7C AC4F0004 */  sw         $t7, 4($v0)
/* 23680 80022A80 AC4C0000 */  sw         $t4, ($v0)
.L80022A84:
/* 23684 80022A84 8C620000 */  lw         $v0, ($v1)
/* 23688 80022A88 3C188005 */  lui        $t8, %hi(D_8004D4F0)
/* 2368C 80022A8C 2718D4F0 */  addiu      $t8, $t8, %lo(D_8004D4F0)
/* 23690 80022A90 24590008 */  addiu      $t9, $v0, 8
/* 23694 80022A94 AC790000 */  sw         $t9, ($v1)
/* 23698 80022A98 3C0A0600 */  lui        $t2, 0x600
/* 2369C 80022A9C AC4A0000 */  sw         $t2, ($v0)
/* 236A0 80022AA0 AC580004 */  sw         $t8, 4($v0)
/* 236A4 80022AA4 8CC50000 */  lw         $a1, ($a2)
/* 236A8 80022AA8 10A00013 */  beqz       $a1, .L80022AF8
/* 236AC 80022AAC 24B9FFFF */   addiu     $t9, $a1, -1
/* 236B0 80022AB0 95220000 */  lhu        $v0, ($t1)
/* 236B4 80022AB4 2F380001 */  sltiu      $t8, $t9, 1
/* 236B8 80022AB8 304B0004 */  andi       $t3, $v0, 4
/* 236BC 80022ABC 11600005 */  beqz       $t3, .L80022AD4
/* 236C0 80022AC0 30430002 */   andi      $v1, $v0, 2
/* 236C4 80022AC4 8CEE0000 */  lw         $t6, ($a3)
/* 236C8 80022AC8 25CDFFFC */  addiu      $t5, $t6, -4
/* 236CC 80022ACC 10000004 */  b          .L80022AE0
/* 236D0 80022AD0 ACED0000 */   sw        $t5, ($a3)
.L80022AD4:
/* 236D4 80022AD4 8CEC0000 */  lw         $t4, ($a3)
/* 236D8 80022AD8 258F0004 */  addiu      $t7, $t4, 4
/* 236DC 80022ADC ACEF0000 */  sw         $t7, ($a3)
.L80022AE0:
/* 236E0 80022AE0 2C6A0001 */  sltiu      $t2, $v1, 1
/* 236E4 80022AE4 030A5824 */  and        $t3, $t8, $t2
/* 236E8 80022AE8 11600003 */  beqz       $t3, .L80022AF8
/* 236EC 80022AEC ACD90000 */   sw        $t9, ($a2)
/* 236F0 80022AF0 304EFFFE */  andi       $t6, $v0, 0xfffe
/* 236F4 80022AF4 A52E0000 */  sh         $t6, ($t1)
.L80022AF8:
/* 236F8 80022AF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 236FC 80022AFC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 23700 80022B00 03E00008 */  jr         $ra
/* 23704 80022B04 00000000 */   nop

glabel dimScreen
/* 23708 80022B08 AFA50004 */  sw         $a1, 4($sp)
/* 2370C 80022B0C 30AEFFFF */  andi       $t6, $a1, 0xffff
/* 23710 80022B10 01C02825 */  or         $a1, $t6, $zero
/* 23714 80022B14 3C018009 */  lui        $at, %hi(screenDimTimer)
/* 23718 80022B18 AC24D024 */  sw         $a0, %lo(screenDimTimer)($at)
/* 2371C 80022B1C 3C018009 */  lui        $at, %hi(screenDimState)
/* 23720 80022B20 34AF0001 */  ori        $t7, $a1, 1
/* 23724 80022B24 A42FD020 */  sh         $t7, %lo(screenDimState)($at)
/* 23728 80022B28 3C018009 */  lui        $at, %hi(ptr_ScreenDimValue)
/* 2372C 80022B2C AC26D028 */  sw         $a2, %lo(ptr_ScreenDimValue)($at)
/* 23730 80022B30 03E00008 */  jr         $ra
/* 23734 80022B34 00000000 */   nop
/* 23738 80022B38 00000000 */  nop
/* 2373C 80022B3C 00000000 */  nop
