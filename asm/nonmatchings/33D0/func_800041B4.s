glabel func_800041B4
/* 4DB4 800041B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4DB8 800041B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4DBC 800041BC AFA40018 */  sw         $a0, 0x18($sp)
/* 4DC0 800041C0 AFA60020 */  sw         $a2, 0x20($sp)
/* 4DC4 800041C4 00A03825 */  or         $a3, $a1, $zero
/* 4DC8 800041C8 3C068008 */  lui        $a2, %hi(D_8007BC30)
/* 4DCC 800041CC 24C6BC30 */  addiu      $a2, $a2, %lo(D_8007BC30)
/* 4DD0 800041D0 8FA40018 */  lw         $a0, 0x18($sp)
/* 4DD4 800041D4 8FA50020 */  lw         $a1, 0x20($sp)
/* 4DD8 800041D8 0C0015B4 */  jal        func_800056D0
/* 4DDC 800041DC AFA7001C */   sw        $a3, 0x1C($sp)
/* 4DE0 800041E0 3C028008 */  lui        $v0, %hi(D_8007BC30)
/* 4DE4 800041E4 2442BC30 */  addiu      $v0, $v0, %lo(D_8007BC30)
/* 4DE8 800041E8 8FA50018 */  lw         $a1, 0x18($sp)
/* 4DEC 800041EC C4440000 */  lwc1       $f4, 0x0($v0)
/* 4DF0 800041F0 8FA6001C */  lw         $a2, 0x1C($sp)
/* 4DF4 800041F4 24040A01 */  addiu      $a0, $zero, 0xA01
/* 4DF8 800041F8 E4A40018 */  swc1       $f4, 0x18($a1)
/* 4DFC 800041FC C4460004 */  lwc1       $f6, 0x4($v0)
/* 4E00 80004200 0C0015D2 */  jal        func_80005748
/* 4E04 80004204 E4A60020 */   swc1      $f6, 0x20($a1)
/* 4E08 80004208 8FA7001C */  lw         $a3, 0x1C($sp)
/* 4E0C 8000420C 3C028008 */  lui        $v0, %hi(D_80086DC0)
/* 4E10 80004210 24426DC0 */  addiu      $v0, $v0, %lo(D_80086DC0)
/* 4E14 80004214 94EE0004 */  lhu        $t6, 0x4($a3)
/* 4E18 80004218 94F80120 */  lhu        $t8, 0x120($a3)
/* 4E1C 8000421C 3C01437A */  lui        $at, (0x437A0000 >> 16)
/* 4E20 80004220 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 4E24 80004224 31F9FFFF */  andi       $t9, $t7, 0xFFFF
/* 4E28 80004228 17190009 */  bne        $t8, $t9, .L80004250
/* 4E2C 8000422C A4EF0004 */   sh        $t7, 0x4($a3)
/* 4E30 80004230 44814000 */  mtc1       $at, $f8
/* 4E34 80004234 3C014316 */  lui        $at, (0x43160000 >> 16)
/* 4E38 80004238 44815000 */  mtc1       $at, $f10
/* 4E3C 8000423C 3C018007 */  lui        $at, %hi(D_80070F58)
/* 4E40 80004240 E448004C */  swc1       $f8, 0x4C($v0)
/* 4E44 80004244 E44A0058 */  swc1       $f10, 0x58($v0)
/* 4E48 80004248 C4300F58 */  lwc1       $f16, %lo(D_80070F58)($at)
/* 4E4C 8000424C E4500070 */  swc1       $f16, 0x70($v0)
.L80004250:
/* 4E50 80004250 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4E54 80004254 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4E58 80004258 03E00008 */  jr         $ra
/* 4E5C 8000425C 00000000 */   nop
