.section .rodata
glabel D_80071750
/* 72350 80071750 */ .asciz "Repair Info %d %d\n"
                      .balign 4


.section .text
glabel func_8002DBE0
/* 2E7E0 8002DBE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E7E4 8002DBE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E7E8 8002DBE8 3C048007 */  lui        $a0, %hi(D_80071750)
/* 2E7EC 8002DBEC 3C058009 */  lui        $a1, %hi(D_8008FD2A)
/* 2E7F0 8002DBF0 3C068009 */  lui        $a2, %hi(D_8008FD24)
/* 2E7F4 8002DBF4 8CC6FD24 */  lw         $a2, %lo(D_8008FD24)($a2)
/* 2E7F8 8002DBF8 80A5FD2A */  lb         $a1, %lo(D_8008FD2A)($a1)
/* 2E7FC 8002DBFC 0C00E9EF */  jal        func_8003A7BC
/* 2E800 8002DC00 24841750 */   addiu     $a0, $a0, %lo(D_80071750)
/* 2E804 8002DC04 3C0E8009 */  lui        $t6, %hi(D_8008FD2A)
/* 2E808 8002DC08 81CEFD2A */  lb         $t6, %lo(D_8008FD2A)($t6)
/* 2E80C 8002DC0C 3C048009 */  lui        $a0, %hi(D_8008FD30)
/* 2E810 8002DC10 3C058009 */  lui        $a1, %hi(D_8008FD24)
/* 2E814 8002DC14 000E7840 */  sll        $t7, $t6, 1
/* 2E818 8002DC18 008F2021 */  addu       $a0, $a0, $t7
/* 2E81C 8002DC1C 8084FD30 */  lb         $a0, %lo(D_8008FD30)($a0)
/* 2E820 8002DC20 0C00C6B3 */  jal        func_80031ACC
/* 2E824 8002DC24 8CA5FD24 */   lw        $a1, %lo(D_8008FD24)($a1)
/* 2E828 8002DC28 10400027 */  beqz       $v0, .L8002DCC8
/* 2E82C 8002DC2C 00402025 */   or        $a0, $v0, $zero
/* 2E830 8002DC30 3C018009 */  lui        $at, %hi(D_8008FD24)
/* 2E834 8002DC34 0C00C6EC */  jal        func_80031BB0
/* 2E838 8002DC38 AC22FD24 */   sw        $v0, %lo(D_8008FD24)($at)
/* 2E83C 8002DC3C 00021823 */  negu       $v1, $v0
/* 2E840 8002DC40 24010001 */  addiu      $at, $zero, 0x1
/* 2E844 8002DC44 1061000B */  beq        $v1, $at, .L8002DC74
/* 2E848 8002DC48 3C028009 */   lui       $v0, %hi(D_8008FD20)
/* 2E84C 8002DC4C 24010003 */  addiu      $at, $zero, 0x3
/* 2E850 8002DC50 1061000F */  beq        $v1, $at, .L8002DC90
/* 2E854 8002DC54 240A0010 */   addiu     $t2, $zero, 0x10
/* 2E858 8002DC58 24180011 */  addiu      $t8, $zero, 0x11
/* 2E85C 8002DC5C 3C018009 */  lui        $at, %hi(D_8008FD22)
/* 2E860 8002DC60 A038FD22 */  sb         $t8, %lo(D_8008FD22)($at)
/* 2E864 8002DC64 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E868 8002DC68 2419000A */  addiu      $t9, $zero, 0xA
/* 2E86C 8002DC6C 1000000D */  b          .L8002DCA4
/* 2E870 8002DC70 A039FD29 */   sb        $t9, %lo(D_8008FD29)($at)
.L8002DC74:
/* 2E874 8002DC74 24080008 */  addiu      $t0, $zero, 0x8
/* 2E878 8002DC78 3C018009 */  lui        $at, %hi(D_8008FD22)
/* 2E87C 8002DC7C A028FD22 */  sb         $t0, %lo(D_8008FD22)($at)
/* 2E880 8002DC80 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E884 8002DC84 2409000A */  addiu      $t1, $zero, 0xA
/* 2E888 8002DC88 10000006 */  b          .L8002DCA4
/* 2E88C 8002DC8C A029FD29 */   sb        $t1, %lo(D_8008FD29)($at)
.L8002DC90:
/* 2E890 8002DC90 3C018009 */  lui        $at, %hi(D_8008FD22)
/* 2E894 8002DC94 A02AFD22 */  sb         $t2, %lo(D_8008FD22)($at)
/* 2E898 8002DC98 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E89C 8002DC9C 240B000A */  addiu      $t3, $zero, 0xA
/* 2E8A0 8002DCA0 A02BFD29 */  sb         $t3, %lo(D_8008FD29)($at)
.L8002DCA4:
/* 2E8A4 8002DCA4 2442FD20 */  addiu      $v0, $v0, %lo(D_8008FD20)
/* 2E8A8 8002DCA8 944C0000 */  lhu        $t4, 0x0($v0)
/* 2E8AC 8002DCAC 318EFFF8 */  andi       $t6, $t4, 0xFFF8
/* 2E8B0 8002DCB0 31D8BFFF */  andi       $t8, $t6, 0xBFFF
/* 2E8B4 8002DCB4 A44E0000 */  sh         $t6, 0x0($v0)
/* 2E8B8 8002DCB8 A4580000 */  sh         $t8, 0x0($v0)
/* 2E8BC 8002DCBC 37191000 */  ori        $t9, $t8, 0x1000
/* 2E8C0 8002DCC0 10000011 */  b          .L8002DD08
/* 2E8C4 8002DCC4 A4590000 */   sh        $t9, 0x0($v0)
.L8002DCC8:
/* 2E8C8 8002DCC8 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2E8CC 8002DCCC 2442FD20 */  addiu      $v0, $v0, %lo(D_8008FD20)
/* 2E8D0 8002DCD0 94480000 */  lhu        $t0, 0x0($v0)
/* 2E8D4 8002DCD4 3C038009 */  lui        $v1, %hi(D_8008FD2C)
/* 2E8D8 8002DCD8 2463FD2C */  addiu      $v1, $v1, %lo(D_8008FD2C)
/* 2E8DC 8002DCDC 310ADFFF */  andi       $t2, $t0, 0xDFFF
/* 2E8E0 8002DCE0 90780000 */  lbu        $t8, 0x0($v1)
/* 2E8E4 8002DCE4 314CFFF8 */  andi       $t4, $t2, 0xFFF8
/* 2E8E8 8002DCE8 A44A0000 */  sh         $t2, 0x0($v0)
/* 2E8EC 8002DCEC 318EBFFF */  andi       $t6, $t4, 0xBFFF
/* 2E8F0 8002DCF0 A44C0000 */  sh         $t4, 0x0($v0)
/* 2E8F4 8002DCF4 A44E0000 */  sh         $t6, 0x0($v0)
/* 2E8F8 8002DCF8 35CF1000 */  ori        $t7, $t6, 0x1000
/* 2E8FC 8002DCFC 27190001 */  addiu      $t9, $t8, 0x1
/* 2E900 8002DD00 A44F0000 */  sh         $t7, 0x0($v0)
/* 2E904 8002DD04 A0790000 */  sb         $t9, 0x0($v1)
.L8002DD08:
/* 2E908 8002DD08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E90C 8002DD0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E910 8002DD10 03E00008 */  jr         $ra
/* 2E914 8002DD14 00000000 */   nop
