glabel func_80018318
/* 18F18 80018318 3C038008 */  lui        $v1, %hi(D_8007BAB8)
/* 18F1C 8001831C 2463BAB8 */  addiu      $v1, $v1, %lo(D_8007BAB8)
/* 18F20 80018320 00047040 */  sll        $t6, $a0, 1
/* 18F24 80018324 3C028005 */  lui        $v0, %hi(D_8004CD74)
/* 18F28 80018328 004E1021 */  addu       $v0, $v0, $t6
/* 18F2C 8001832C 9442CD74 */  lhu        $v0, %lo(D_8004CD74)($v0)
/* 18F30 80018330 946F010C */  lhu        $t7, 0x10C($v1)
/* 18F34 80018334 3C198008 */  lui        $t9, %hi(D_8007CAB4)
/* 18F38 80018338 00401027 */  not        $v0, $v0
/* 18F3C 8001833C 01E2C024 */  and        $t8, $t7, $v0
/* 18F40 80018340 A478010C */  sh         $t8, 0x10C($v1)
/* 18F44 80018344 9739CAB4 */  lhu        $t9, %lo(D_8007CAB4)($t9)
/* 18F48 80018348 3C018008 */  lui        $at, %hi(D_8007CAB4)
/* 18F4C 8001834C 24030002 */  addiu      $v1, $zero, 0x2
/* 18F50 80018350 03224024 */  and        $t0, $t9, $v0
/* 18F54 80018354 A428CAB4 */  sh         $t0, %lo(D_8007CAB4)($at)
/* 18F58 80018358 3C098008 */  lui        $t1, %hi(D_8007CBDC)
/* 18F5C 8001835C 9529CBDC */  lhu        $t1, %lo(D_8007CBDC)($t1)
/* 18F60 80018360 000358C0 */  sll        $t3, $v1, 3
/* 18F64 80018364 01635821 */  addu       $t3, $t3, $v1
/* 18F68 80018368 000B5880 */  sll        $t3, $t3, 2
/* 18F6C 8001836C 3C018008 */  lui        $at, %hi(D_8007CBDC)
/* 18F70 80018370 01635821 */  addu       $t3, $t3, $v1
/* 18F74 80018374 3C0C8008 */  lui        $t4, %hi(D_8007C998)
/* 18F78 80018378 01225024 */  and        $t2, $t1, $v0
/* 18F7C 8001837C A42ACBDC */  sh         $t2, %lo(D_8007CBDC)($at)
/* 18F80 80018380 258CC998 */  addiu      $t4, $t4, %lo(D_8007C998)
/* 18F84 80018384 000B58C0 */  sll        $t3, $t3, 3
/* 18F88 80018388 016C2021 */  addu       $a0, $t3, $t4
/* 18F8C 8001838C 948F0244 */  lhu        $t7, 0x244($a0)
/* 18F90 80018390 9499036C */  lhu        $t9, 0x36C($a0)
/* 18F94 80018394 94890494 */  lhu        $t1, 0x494($a0)
/* 18F98 80018398 948D011C */  lhu        $t5, 0x11C($a0)
/* 18F9C 8001839C 01E2C024 */  and        $t8, $t7, $v0
/* 18FA0 800183A0 03224024 */  and        $t0, $t9, $v0
/* 18FA4 800183A4 01225024 */  and        $t2, $t1, $v0
/* 18FA8 800183A8 01A27024 */  and        $t6, $t5, $v0
/* 18FAC 800183AC A48A0494 */  sh         $t2, 0x494($a0)
/* 18FB0 800183B0 A488036C */  sh         $t0, 0x36C($a0)
/* 18FB4 800183B4 A4980244 */  sh         $t8, 0x244($a0)
/* 18FB8 800183B8 A48E011C */  sh         $t6, 0x11C($a0)
/* 18FBC 800183BC 03E00008 */  jr         $ra
/* 18FC0 800183C0 00000000 */   nop
