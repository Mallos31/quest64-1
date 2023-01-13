.section .late_rodata
glabel jtbl_80071764
/* 72364 80071764 8002B634 */ .word .L8002B634
/* 72368 80071768 8002B684 */ .word .L8002B684
/* 7236C 8007176C 8002B65C */ .word .L8002B65C
/* 72370 80071770 8002B670 */ .word .L8002B670
/* 72374 80071774 8002B648 */ .word .L8002B648
/* 72378 80071778 8002B620 */ .word .L8002B620
/* 7237C 8007177C 8002B698 */ .word .L8002B698


.section .text
glabel func_8002B57C
/* 2C17C 8002B57C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C180 8002B580 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C184 8002B584 0C00B7F4 */  jal        func_8002DFD0
/* 2C188 8002B588 00000000 */   nop
/* 2C18C 8002B58C 3C048009 */  lui        $a0, %hi(D_8008FD20)
/* 2C190 8002B590 2484FD20 */  addiu      $a0, $a0, %lo(D_8008FD20)
/* 2C194 8002B594 94820000 */  lhu        $v0, 0x0($a0)
/* 2C198 8002B598 30434000 */  andi       $v1, $v0, 0x4000
/* 2C19C 8002B59C 14600016 */  bnez       $v1, .L8002B5F8
/* 2C1A0 8002B5A0 304E2000 */   andi      $t6, $v0, 0x2000
/* 2C1A4 8002B5A4 11C0000F */  beqz       $t6, .L8002B5E4
/* 2C1A8 8002B5A8 34492000 */   ori       $t1, $v0, 0x2000
/* 2C1AC 8002B5AC 0C00AE31 */  jal        func_8002B8C4
/* 2C1B0 8002B5B0 00000000 */   nop
/* 2C1B4 8002B5B4 3C048009 */  lui        $a0, %hi(D_8008FD20)
/* 2C1B8 8002B5B8 2484FD20 */  addiu      $a0, $a0, %lo(D_8008FD20)
/* 2C1BC 8002B5BC 948F0000 */  lhu        $t7, 0x0($a0)
/* 2C1C0 8002B5C0 3C018009 */  lui        $at, %hi(D_8008FD2C)
/* 2C1C4 8002B5C4 35F94000 */  ori        $t9, $t7, 0x4000
/* 2C1C8 8002B5C8 A4990000 */  sh         $t9, 0x0($a0)
/* 2C1CC 8002B5CC 3328DFFF */  andi       $t0, $t9, 0xDFFF
/* 2C1D0 8002B5D0 A4880000 */  sh         $t0, 0x0($a0)
/* 2C1D4 8002B5D4 A020FD2C */  sb         $zero, %lo(D_8008FD2C)($at)
/* 2C1D8 8002B5D8 94820000 */  lhu        $v0, 0x0($a0)
/* 2C1DC 8002B5DC 10000006 */  b          .L8002B5F8
/* 2C1E0 8002B5E0 30434000 */   andi      $v1, $v0, 0x4000
.L8002B5E4:
/* 2C1E4 8002B5E4 A4890000 */  sh         $t1, 0x0($a0)
/* 2C1E8 8002B5E8 3C018009 */  lui        $at, %hi(D_8008FD23)
/* 2C1EC 8002B5EC A020FD23 */  sb         $zero, %lo(D_8008FD23)($at)
/* 2C1F0 8002B5F0 94820000 */  lhu        $v0, 0x0($a0)
/* 2C1F4 8002B5F4 30434000 */  andi       $v1, $v0, 0x4000
.L8002B5F8:
/* 2C1F8 8002B5F8 1060002B */  beqz       $v1, .L8002B6A8
/* 2C1FC 8002B5FC 304A0007 */   andi      $t2, $v0, 0x7
/* 2C200 8002B600 2D410007 */  sltiu      $at, $t2, 0x7
/* 2C204 8002B604 10200028 */  beqz       $at, .L8002B6A8
/* 2C208 8002B608 000A5080 */   sll       $t2, $t2, 2
/* 2C20C 8002B60C 3C018007 */  lui        $at, %hi(jtbl_80071764)
/* 2C210 8002B610 002A0821 */  addu       $at, $at, $t2
/* 2C214 8002B614 8C2A1764 */  lw         $t2, %lo(jtbl_80071764)($at)
/* 2C218 8002B618 01400008 */  jr         $t2
/* 2C21C 8002B61C 00000000 */   nop
glabel .L8002B620
/* 2C220 8002B620 0C00AF28 */  jal        func_8002BCA0
/* 2C224 8002B624 00000000 */   nop
/* 2C228 8002B628 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2C22C 8002B62C 1000001E */  b          .L8002B6A8
/* 2C230 8002B630 9442FD20 */   lhu       $v0, %lo(D_8008FD20)($v0)
glabel .L8002B634
/* 2C234 8002B634 0C00B206 */  jal        func_8002C818
/* 2C238 8002B638 00002025 */   or        $a0, $zero, $zero
/* 2C23C 8002B63C 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2C240 8002B640 10000019 */  b          .L8002B6A8
/* 2C244 8002B644 9442FD20 */   lhu       $v0, %lo(D_8008FD20)($v0)
glabel .L8002B648
/* 2C248 8002B648 0C00B585 */  jal        func_8002D614
/* 2C24C 8002B64C 00000000 */   nop
/* 2C250 8002B650 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2C254 8002B654 10000014 */  b          .L8002B6A8
/* 2C258 8002B658 9442FD20 */   lhu       $v0, %lo(D_8008FD20)($v0)
glabel .L8002B65C
/* 2C25C 8002B65C 0C00B5D2 */  jal        func_8002D748
/* 2C260 8002B660 00000000 */   nop
/* 2C264 8002B664 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2C268 8002B668 1000000F */  b          .L8002B6A8
/* 2C26C 8002B66C 9442FD20 */   lhu       $v0, %lo(D_8008FD20)($v0)
glabel .L8002B670
/* 2C270 8002B670 0C00B62F */  jal        func_8002D8BC
/* 2C274 8002B674 00000000 */   nop
/* 2C278 8002B678 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2C27C 8002B67C 1000000A */  b          .L8002B6A8
/* 2C280 8002B680 9442FD20 */   lhu       $v0, %lo(D_8008FD20)($v0)
glabel .L8002B684
/* 2C284 8002B684 0C00B6F8 */  jal        func_8002DBE0
/* 2C288 8002B688 00000000 */   nop
/* 2C28C 8002B68C 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2C290 8002B690 10000005 */  b          .L8002B6A8
/* 2C294 8002B694 9442FD20 */   lhu       $v0, %lo(D_8008FD20)($v0)
glabel .L8002B698
/* 2C298 8002B698 0C00B575 */  jal        func_8002D5D4
/* 2C29C 8002B69C 00000000 */   nop
/* 2C2A0 8002B6A0 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2C2A4 8002B6A4 9442FD20 */  lhu        $v0, %lo(D_8008FD20)($v0)
.L8002B6A8:
/* 2C2A8 8002B6A8 304B2000 */  andi       $t3, $v0, 0x2000
/* 2C2AC 8002B6AC 51600006 */  beql       $t3, $zero, .L8002B6C8
/* 2C2B0 8002B6B0 304C8000 */   andi      $t4, $v0, 0x8000
/* 2C2B4 8002B6B4 0C00ADBC */  jal        func_8002B6F0
/* 2C2B8 8002B6B8 00000000 */   nop
/* 2C2BC 8002B6BC 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2C2C0 8002B6C0 9442FD20 */  lhu        $v0, %lo(D_8008FD20)($v0)
/* 2C2C4 8002B6C4 304C8000 */  andi       $t4, $v0, 0x8000
.L8002B6C8:
/* 2C2C8 8002B6C8 11800005 */  beqz       $t4, .L8002B6E0
/* 2C2CC 8002B6CC 3C028009 */   lui       $v0, %hi(D_8008FD0C)
/* 2C2D0 8002B6D0 2442FD0C */  addiu      $v0, $v0, %lo(D_8008FD0C)
/* 2C2D4 8002B6D4 944D0000 */  lhu        $t5, 0x0($v0)
/* 2C2D8 8002B6D8 31AE7FFF */  andi       $t6, $t5, 0x7FFF
/* 2C2DC 8002B6DC A44E0000 */  sh         $t6, 0x0($v0)
.L8002B6E0:
/* 2C2E0 8002B6E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C2E4 8002B6E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2C2E8 8002B6E8 03E00008 */  jr         $ra
/* 2C2EC 8002B6EC 00000000 */   nop
