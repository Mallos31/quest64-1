glabel unk_UsesBrianOREnemyPos
/* 20EE4 800202E4 8C820068 */  lw         $v0, 0x68($a0)
/* 20EE8 800202E8 00001825 */  or         $v1, $zero, $zero
/* 20EEC 800202EC 00402825 */  or         $a1, $v0, $zero
.L800202F0:
/* 20EF0 800202F0 90AE0012 */  lbu        $t6, 0x12($a1)
/* 20EF4 800202F4 24630001 */  addiu      $v1, $v1, 1
/* 20EF8 800202F8 2C610007 */  sltiu      $at, $v1, 7
/* 20EFC 800202FC 11C00002 */  beqz       $t6, .L80020308
/* 20F00 80020300 00000000 */   nop
/* 20F04 80020304 A0A00012 */  sb         $zero, 0x12($a1)
.L80020308:
/* 20F08 80020308 1420FFF9 */  bnez       $at, .L800202F0
/* 20F0C 8002030C 24A50001 */   addiu     $a1, $a1, 1
/* 20F10 80020310 8C440044 */  lw         $a0, 0x44($v0)
/* 20F14 80020314 00401825 */  or         $v1, $v0, $zero
/* 20F18 80020318 50800008 */  beql       $a0, $zero, .L8002033C
/* 20F1C 8002031C 8C640048 */   lw        $a0, 0x48($v1)
/* 20F20 80020320 948F0008 */  lhu        $t7, 8($a0)
/* 20F24 80020324 24050008 */  addiu      $a1, $zero, 8
/* 20F28 80020328 A4850000 */  sh         $a1, ($a0)
/* 20F2C 8002032C 31F8FFFE */  andi       $t8, $t7, 0xfffe
/* 20F30 80020330 A4980008 */  sh         $t8, 8($a0)
/* 20F34 80020334 AC600044 */  sw         $zero, 0x44($v1)
/* 20F38 80020338 8C640048 */  lw         $a0, 0x48($v1)
.L8002033C:
/* 20F3C 8002033C 24050008 */  addiu      $a1, $zero, 8
/* 20F40 80020340 2406FFFE */  addiu      $a2, $zero, -2
/* 20F44 80020344 50800007 */  beql       $a0, $zero, .L80020364
/* 20F48 80020348 8C64004C */   lw        $a0, 0x4c($v1)
/* 20F4C 8002034C 94990008 */  lhu        $t9, 8($a0)
/* 20F50 80020350 A4850000 */  sh         $a1, ($a0)
/* 20F54 80020354 03264024 */  and        $t0, $t9, $a2
/* 20F58 80020358 A4880008 */  sh         $t0, 8($a0)
/* 20F5C 8002035C AC600048 */  sw         $zero, 0x48($v1)
/* 20F60 80020360 8C64004C */  lw         $a0, 0x4c($v1)
.L80020364:
/* 20F64 80020364 50800007 */  beql       $a0, $zero, .L80020384
/* 20F68 80020368 8C640050 */   lw        $a0, 0x50($v1)
/* 20F6C 8002036C 94890008 */  lhu        $t1, 8($a0)
/* 20F70 80020370 A4850000 */  sh         $a1, ($a0)
/* 20F74 80020374 01265024 */  and        $t2, $t1, $a2
/* 20F78 80020378 A48A0008 */  sh         $t2, 8($a0)
/* 20F7C 8002037C AC60004C */  sw         $zero, 0x4c($v1)
/* 20F80 80020380 8C640050 */  lw         $a0, 0x50($v1)
.L80020384:
/* 20F84 80020384 10800006 */  beqz       $a0, .L800203A0
/* 20F88 80020388 00000000 */   nop
/* 20F8C 8002038C 948B0008 */  lhu        $t3, 8($a0)
/* 20F90 80020390 A4850000 */  sh         $a1, ($a0)
/* 20F94 80020394 01666024 */  and        $t4, $t3, $a2
/* 20F98 80020398 A48C0008 */  sh         $t4, 8($a0)
/* 20F9C 8002039C AC600050 */  sw         $zero, 0x50($v1)
.L800203A0:
/* 20FA0 800203A0 03E00008 */  jr         $ra
/* 20FA4 800203A4 00000000 */   nop
