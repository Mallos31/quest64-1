glabel func_8000227C
/* 2E7C 8000227C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2E80 80002280 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2E84 80002284 3C1E8008 */  lui        $fp, %hi(D_8007B348)
/* 2E88 80002288 27DEB348 */  addiu      $fp, $fp, %lo(D_8007B348)
/* 2E8C 8000228C AFBF003C */  sw         $ra, 0x3C($sp)
/* 2E90 80002290 AFB70034 */  sw         $s7, 0x34($sp)
/* 2E94 80002294 AFB60030 */  sw         $s6, 0x30($sp)
/* 2E98 80002298 AFB5002C */  sw         $s5, 0x2C($sp)
/* 2E9C 8000229C AFB40028 */  sw         $s4, 0x28($sp)
/* 2EA0 800022A0 AFB30024 */  sw         $s3, 0x24($sp)
/* 2EA4 800022A4 AFB20020 */  sw         $s2, 0x20($sp)
/* 2EA8 800022A8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2EAC 800022AC AFB00018 */  sw         $s0, 0x18($sp)
/* 2EB0 800022B0 AFA0004C */  sw         $zero, 0x4C($sp)
/* 2EB4 800022B4 0C00C710 */  jal        func_80031C40
/* 2EB8 800022B8 AFC00000 */   sw        $zero, 0x0($fp)
/* 2EBC 800022BC 0C040000 */  jal        func_80100000
/* 2EC0 800022C0 00000000 */   nop
/* 2EC4 800022C4 3C0E8008 */  lui        $t6, %hi(gameMode)
/* 2EC8 800022C8 95CEB2E0 */  lhu        $t6, %lo(gameMode)($t6)
/* 2ECC 800022CC 24010003 */  addiu      $at, $zero, 0x3
/* 2ED0 800022D0 3417D150 */  ori        $s7, $zero, 0xD150
/* 2ED4 800022D4 15C1003C */  bne        $t6, $at, .L800023C8
/* 2ED8 800022D8 3C168030 */   lui       $s6, %hi(D_80301000)
/* 2EDC 800022DC 3C148008 */  lui        $s4, %hi(D_8007B2F4)
/* 2EE0 800022E0 3C108008 */  lui        $s0, %hi(D_8007B9E8)
/* 2EE4 800022E4 2610B9E8 */  addiu      $s0, $s0, %lo(D_8007B9E8)
/* 2EE8 800022E8 2694B2F4 */  addiu      $s4, $s4, %lo(D_8007B2F4)
/* 2EEC 800022EC 26D61000 */  addiu      $s6, $s6, %lo(D_80301000)
/* 2EF0 800022F0 24130002 */  addiu      $s3, $zero, 0x2
/* 2EF4 800022F4 24120001 */  addiu      $s2, $zero, 0x1
/* 2EF8 800022F8 27B1004C */  addiu      $s1, $sp, 0x4C
.L800022FC:
/* 2EFC 800022FC 3C048009 */  lui        $a0, %hi(D_80092870)
/* 2F00 80002300 0C00C530 */  jal        func_800314C0
/* 2F04 80002304 80842870 */   lb        $a0, %lo(D_80092870)($a0)
/* 2F08 80002308 3C018008 */  lui        $at, %hi(D_8007B2F8)
/* 2F0C 8000230C AC20B2F8 */  sw         $zero, %lo(D_8007B2F8)($at)
/* 2F10 80002310 8E8F0000 */  lw         $t7, 0x0($s4)
/* 2F14 80002314 01F70019 */  multu      $t7, $s7
/* 2F18 80002318 0000C012 */  mflo       $t8
/* 2F1C 8000231C 02D82021 */  addu       $a0, $s6, $t8
/* 2F20 80002320 0C000477 */  jal        func_800011DC
/* 2F24 80002324 00000000 */   nop
/* 2F28 80002328 8E990000 */  lw         $t9, 0x0($s4)
/* 2F2C 8000232C 8FC20000 */  lw         $v0, 0x0($fp)
/* 2F30 80002330 03370019 */  multu      $t9, $s7
/* 2F34 80002334 24490001 */  addiu      $t1, $v0, 0x1
/* 2F38 80002338 00004012 */  mflo       $t0
/* 2F3C 8000233C 02C8A821 */  addu       $s5, $s6, $t0
/* 2F40 80002340 5440000D */  bnel       $v0, $zero, .L80002378
/* 2F44 80002344 02002025 */   or        $a0, $s0, $zero
/* 2F48 80002348 AFC90000 */  sw         $t1, 0x0($fp)
/* 2F4C 8000234C 02002025 */  or         $a0, $s0, $zero
.L80002350:
/* 2F50 80002350 02202825 */  or         $a1, $s1, $zero
/* 2F54 80002354 0C00D008 */  jal        osRecvMesg
/* 2F58 80002358 02403025 */   or        $a2, $s2, $zero
/* 2F5C 8000235C 8FAA004C */  lw         $t2, 0x4C($sp)
/* 2F60 80002360 854B0000 */  lh         $t3, 0x0($t2)
/* 2F64 80002364 564BFFFA */  bnel       $s2, $t3, .L80002350
/* 2F68 80002368 02002025 */   or        $a0, $s0, $zero
/* 2F6C 8000236C 10000009 */  b          .L80002394
/* 2F70 80002370 00000000 */   nop
/* 2F74 80002374 02002025 */  or         $a0, $s0, $zero
.L80002378:
/* 2F78 80002378 02202825 */  or         $a1, $s1, $zero
/* 2F7C 8000237C 0C00D008 */  jal        osRecvMesg
/* 2F80 80002380 02403025 */   or        $a2, $s2, $zero
/* 2F84 80002384 8FAC004C */  lw         $t4, 0x4C($sp)
/* 2F88 80002388 858D0000 */  lh         $t5, 0x0($t4)
/* 2F8C 8000238C 566DFFFA */  bnel       $s3, $t5, .L80002378
/* 2F90 80002390 02002025 */   or        $a0, $s0, $zero
.L80002394:
/* 2F94 80002394 3C048008 */  lui        $a0, %hi(D_8007B9D8)
/* 2F98 80002398 8C84B9D8 */  lw         $a0, %lo(D_8007B9D8)($a0)
/* 2F9C 8000239C 02A02825 */  or         $a1, $s5, $zero
/* 2FA0 800023A0 0C00D080 */  jal        osSendMesg
/* 2FA4 800023A4 02403025 */   or        $a2, $s2, $zero
/* 2FA8 800023A8 8E8E0000 */  lw         $t6, 0x0($s4)
/* 2FAC 800023AC 3C188008 */  lui        $t8, %hi(gameMode)
/* 2FB0 800023B0 24010003 */  addiu      $at, $zero, 0x3
/* 2FB4 800023B4 39CF0001 */  xori       $t7, $t6, 0x1
/* 2FB8 800023B8 AE8F0000 */  sw         $t7, 0x0($s4)
/* 2FBC 800023BC 9718B2E0 */  lhu        $t8, %lo(gameMode)($t8)
/* 2FC0 800023C0 1301FFCE */  beq        $t8, $at, .L800022FC
/* 2FC4 800023C4 00000000 */   nop
.L800023C8:
/* 2FC8 800023C8 3C108008 */  lui        $s0, %hi(D_8007B9E8)
/* 2FCC 800023CC 2610B9E8 */  addiu      $s0, $s0, %lo(D_8007B9E8)
/* 2FD0 800023D0 27B1004C */  addiu      $s1, $sp, 0x4C
/* 2FD4 800023D4 24130002 */  addiu      $s3, $zero, 0x2
/* 2FD8 800023D8 02002025 */  or         $a0, $s0, $zero
.L800023DC:
/* 2FDC 800023DC 02202825 */  or         $a1, $s1, $zero
/* 2FE0 800023E0 0C00D008 */  jal        osRecvMesg
/* 2FE4 800023E4 24060001 */   addiu     $a2, $zero, 0x1
/* 2FE8 800023E8 8FB9004C */  lw         $t9, 0x4C($sp)
/* 2FEC 800023EC 87280000 */  lh         $t0, 0x0($t9)
/* 2FF0 800023F0 5668FFFA */  bnel       $s3, $t0, .L800023DC
/* 2FF4 800023F4 02002025 */   or        $a0, $s0, $zero
/* 2FF8 800023F8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 2FFC 800023FC 8FB00018 */  lw         $s0, 0x18($sp)
/* 3000 80002400 8FB1001C */  lw         $s1, 0x1C($sp)
/* 3004 80002404 8FB20020 */  lw         $s2, 0x20($sp)
/* 3008 80002408 8FB30024 */  lw         $s3, 0x24($sp)
/* 300C 8000240C 8FB40028 */  lw         $s4, 0x28($sp)
/* 3010 80002410 8FB5002C */  lw         $s5, 0x2C($sp)
/* 3014 80002414 8FB60030 */  lw         $s6, 0x30($sp)
/* 3018 80002418 8FB70034 */  lw         $s7, 0x34($sp)
/* 301C 8000241C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 3020 80002420 03E00008 */  jr         $ra
/* 3024 80002424 27BD0050 */   addiu     $sp, $sp, 0x50
