glabel func_800172A0
/* 17EA0 800172A0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17EA4 800172A4 AFB00018 */  sw         $s0, 0x18($sp)
/* 17EA8 800172A8 00A08025 */  or         $s0, $a1, $zero
/* 17EAC 800172AC AFBF001C */  sw         $ra, 0x1C($sp)
/* 17EB0 800172B0 8E020068 */  lw         $v0, 0x68($s0)
/* 17EB4 800172B4 24010001 */  addiu      $at, $zero, 0x1
/* 17EB8 800172B8 24050020 */  addiu      $a1, $zero, 0x20
/* 17EBC 800172BC 944E0000 */  lhu        $t6, 0x0($v0)
/* 17EC0 800172C0 35CF0020 */  ori        $t7, $t6, 0x20
/* 17EC4 800172C4 10810009 */  beq        $a0, $at, .L800172EC
/* 17EC8 800172C8 A44F0000 */   sh        $t7, 0x0($v0)
/* 17ECC 800172CC 24010002 */  addiu      $at, $zero, 0x2
/* 17ED0 800172D0 10810011 */  beq        $a0, $at, .L80017318
/* 17ED4 800172D4 24050020 */   addiu     $a1, $zero, 0x20
/* 17ED8 800172D8 24010003 */  addiu      $at, $zero, 0x3
/* 17EDC 800172DC 10810019 */  beq        $a0, $at, .L80017344
/* 17EE0 800172E0 24050020 */   addiu     $a1, $zero, 0x20
/* 17EE4 800172E4 10000021 */  b          .L8001736C
/* 17EE8 800172E8 8FBF001C */   lw        $ra, 0x1C($sp)
.L800172EC:
/* 17EEC 800172EC 8E180064 */  lw         $t8, 0x64($s0)
/* 17EF0 800172F0 8E090068 */  lw         $t1, 0x68($s0)
/* 17EF4 800172F4 02002025 */  or         $a0, $s0, $zero
/* 17EF8 800172F8 9719000C */  lhu        $t9, 0xC($t8)
/* 17EFC 800172FC 24060007 */  addiu      $a2, $zero, 0x7
/* 17F00 80017300 2407FFFF */  addiu      $a3, $zero, -0x1
/* 17F04 80017304 00194040 */  sll        $t0, $t9, 1
/* 17F08 80017308 0C007F3E */  jal        func_8001FCF8
/* 17F0C 8001730C A5280086 */   sh        $t0, 0x86($t1)
/* 17F10 80017310 10000016 */  b          .L8001736C
/* 17F14 80017314 8FBF001C */   lw        $ra, 0x1C($sp)
.L80017318:
/* 17F18 80017318 8E0A0064 */  lw         $t2, 0x64($s0)
/* 17F1C 8001731C 8E0D0068 */  lw         $t5, 0x68($s0)
/* 17F20 80017320 02002025 */  or         $a0, $s0, $zero
/* 17F24 80017324 954B000C */  lhu        $t3, 0xC($t2)
/* 17F28 80017328 24060007 */  addiu      $a2, $zero, 0x7
/* 17F2C 8001732C 2407FFFF */  addiu      $a3, $zero, -0x1
/* 17F30 80017330 000B6080 */  sll        $t4, $t3, 2
/* 17F34 80017334 0C007F3E */  jal        func_8001FCF8
/* 17F38 80017338 A5AC0086 */   sh        $t4, 0x86($t5)
/* 17F3C 8001733C 1000000B */  b          .L8001736C
/* 17F40 80017340 8FBF001C */   lw        $ra, 0x1C($sp)
.L80017344:
/* 17F44 80017344 8E0E0064 */  lw         $t6, 0x64($s0)
/* 17F48 80017348 8E190068 */  lw         $t9, 0x68($s0)
/* 17F4C 8001734C 02002025 */  or         $a0, $s0, $zero
/* 17F50 80017350 95CF000C */  lhu        $t7, 0xC($t6)
/* 17F54 80017354 2406000C */  addiu      $a2, $zero, 0xC
/* 17F58 80017358 2407FFFF */  addiu      $a3, $zero, -0x1
/* 17F5C 8001735C 000FC043 */  sra        $t8, $t7, 1
/* 17F60 80017360 0C007F3E */  jal        func_8001FCF8
/* 17F64 80017364 A7380086 */   sh        $t8, 0x86($t9)
/* 17F68 80017368 8FBF001C */  lw         $ra, 0x1C($sp)
.L8001736C:
/* 17F6C 8001736C 8FB00018 */  lw         $s0, 0x18($sp)
/* 17F70 80017370 27BD0020 */  addiu      $sp, $sp, 0x20
/* 17F74 80017374 03E00008 */  jr         $ra
/* 17F78 80017378 00000000 */   nop
