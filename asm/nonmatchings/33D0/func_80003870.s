glabel func_80003870
/* 4470 80003870 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4474 80003874 3C058008 */  lui        $a1, %hi(gMasterGfxPos)
/* 4478 80003878 24A5B2FC */  addiu      $a1, $a1, %lo(gMasterGfxPos)
/* 447C 8000387C AFBF0024 */  sw         $ra, 0x24($sp)
/* 4480 80003880 AFA40038 */  sw         $a0, 0x38($sp)
/* 4484 80003884 8CA30000 */  lw         $v1, 0x0($a1)
/* 4488 80003888 3C180100 */  lui        $t8, %hi(D_10000A0)
/* 448C 8000388C 271800A0 */  addiu      $t8, $t8, %lo(D_10000A0)
/* 4490 80003890 246E0008 */  addiu      $t6, $v1, 0x8
/* 4494 80003894 ACAE0000 */  sw         $t6, 0x0($a1)
/* 4498 80003898 3C0F0600 */  lui        $t7, (0x6000000 >> 16)
/* 449C 8000389C AC6F0000 */  sw         $t7, 0x0($v1)
/* 44A0 800038A0 AC780004 */  sw         $t8, 0x4($v1)
/* 44A4 800038A4 3C048008 */  lui        $a0, %hi(D_8007BC08)
/* 44A8 800038A8 0C00447E */  jal        func_800111F8
/* 44AC 800038AC 8C84BC08 */   lw        $a0, %lo(D_8007BC08)($a0)
/* 44B0 800038B0 3C198008 */  lui        $t9, %hi(D_8007BAB8)
/* 44B4 800038B4 9739BAB8 */  lhu        $t9, %lo(D_8007BAB8)($t9)
/* 44B8 800038B8 2401000A */  addiu      $at, $zero, 0xA
/* 44BC 800038BC 24080001 */  addiu      $t0, $zero, 0x1
/* 44C0 800038C0 13210004 */  beq        $t9, $at, .L800038D4
/* 44C4 800038C4 3C098008 */   lui       $t1, %hi(D_8007BB1C)
/* 44C8 800038C8 2401000B */  addiu      $at, $zero, 0xB
/* 44CC 800038CC 57210004 */  bnel       $t9, $at, .L800038E0
/* 44D0 800038D0 AFA00034 */   sw        $zero, 0x34($sp)
.L800038D4:
/* 44D4 800038D4 10000002 */  b          .L800038E0
/* 44D8 800038D8 AFA80034 */   sw        $t0, 0x34($sp)
/* 44DC 800038DC AFA00034 */  sw         $zero, 0x34($sp)
.L800038E0:
/* 44E0 800038E0 8529BB1C */  lh         $t1, %lo(D_8007BB1C)($t1)
/* 44E4 800038E4 3C0B8005 */  lui        $t3, %hi(D_80053D00)
/* 44E8 800038E8 3C048008 */  lui        $a0, %hi(D_8007BACC)
/* 44EC 800038EC 00095080 */  sll        $t2, $t1, 2
/* 44F0 800038F0 016A5821 */  addu       $t3, $t3, $t2
/* 44F4 800038F4 8D6B3D00 */  lw         $t3, %lo(D_80053D00)($t3)
/* 44F8 800038F8 2484BACC */  addiu      $a0, $a0, %lo(D_8007BACC)
/* 44FC 800038FC 0C0019C8 */  jal        func_80006720
/* 4500 80003900 AFAB0028 */   sw        $t3, 0x28($sp)
/* 4504 80003904 3C0C8008 */  lui        $t4, %hi(D_8007BB1E)
/* 4508 80003908 858CBB1E */  lh         $t4, %lo(D_8007BB1E)($t4)
/* 450C 8000390C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 4510 80003910 3C058008 */  lui        $a1, %hi(D_8007BACC)
/* 4514 80003914 000C6880 */  sll        $t5, $t4, 2
/* 4518 80003918 01AC6823 */  subu       $t5, $t5, $t4
/* 451C 8000391C 000D6880 */  sll        $t5, $t5, 2
/* 4520 80003920 24A5BACC */  addiu      $a1, $a1, %lo(D_8007BACC)
/* 4524 80003924 8FA40034 */  lw         $a0, 0x34($sp)
/* 4528 80003928 8FA70038 */  lw         $a3, 0x38($sp)
/* 452C 8000392C 0C0076CE */  jal        func_8001DB38
/* 4530 80003930 01AE3021 */   addu      $a2, $t5, $t6
/* 4534 80003934 3C0F8008 */  lui        $t7, %hi(D_8007BB1E)
/* 4538 80003938 85EFBB1E */  lh         $t7, %lo(D_8007BB1E)($t7)
/* 453C 8000393C 8FB90028 */  lw         $t9, 0x28($sp)
/* 4540 80003940 3C048008 */  lui        $a0, %hi(D_8007BB24)
/* 4544 80003944 000FC080 */  sll        $t8, $t7, 2
/* 4548 80003948 030FC023 */  subu       $t8, $t8, $t7
/* 454C 8000394C 0018C080 */  sll        $t8, $t8, 2
/* 4550 80003950 3C058008 */  lui        $a1, %hi(D_8007BACC)
/* 4554 80003954 24A5BACC */  addiu      $a1, $a1, %lo(D_8007BACC)
/* 4558 80003958 9484BB24 */  lhu        $a0, %lo(D_8007BB24)($a0)
/* 455C 8000395C 0C00782B */  jal        func_8001E0AC
/* 4560 80003960 03193021 */   addu      $a2, $t8, $t9
/* 4564 80003964 3C048008 */  lui        $a0, %hi(D_8007BACC)
/* 4568 80003968 0C0019C8 */  jal        func_80006720
/* 456C 8000396C 2484BACC */   addiu     $a0, $a0, %lo(D_8007BACC)
/* 4570 80003970 3C038009 */  lui        $v1, %hi(D_8008C5B0)
/* 4574 80003974 3C088008 */  lui        $t0, %hi(D_8007BC40)
/* 4578 80003978 2463C5B0 */  addiu      $v1, $v1, %lo(D_8008C5B0)
/* 457C 8000397C 2508BC40 */  addiu      $t0, $t0, %lo(D_8007BC40)
/* 4580 80003980 3C018008 */  lui        $at, %hi(D_8007BAD0)
/* 4584 80003984 C42EBAD0 */  lwc1       $f14, %lo(D_8007BAD0)($at)
/* 4588 80003988 AFA80010 */  sw         $t0, 0x10($sp)
/* 458C 8000398C C46C0000 */  lwc1       $f12, 0x0($v1)
/* 4590 80003990 8C660008 */  lw         $a2, 0x8($v1)
/* 4594 80003994 0C003B98 */  jal        func_8000EE60
/* 4598 80003998 24070A00 */   addiu     $a3, $zero, 0xA00
/* 459C 8000399C 3C038009 */  lui        $v1, %hi(D_8008C5B0)
/* 45A0 800039A0 2463C5B0 */  addiu      $v1, $v1, %lo(D_8008C5B0)
/* 45A4 800039A4 C4640000 */  lwc1       $f4, 0x0($v1)
/* 45A8 800039A8 3C028008 */  lui        $v0, %hi(D_8007BBF0)
/* 45AC 800039AC 2442BBF0 */  addiu      $v0, $v0, %lo(D_8007BBF0)
/* 45B0 800039B0 3C018008 */  lui        $at, %hi(D_8007BC44)
/* 45B4 800039B4 E4440000 */  swc1       $f4, 0x0($v0)
/* 45B8 800039B8 C426BC44 */  lwc1       $f6, %lo(D_8007BC44)($at)
/* 45BC 800039BC C4680008 */  lwc1       $f8, 0x8($v1)
/* 45C0 800039C0 3C018008 */  lui        $at, %hi(D_8007BAFC)
/* 45C4 800039C4 E4460004 */  swc1       $f6, 0x4($v0)
/* 45C8 800039C8 E4480008 */  swc1       $f8, 0x8($v0)
/* 45CC 800039CC C42ABAFC */  lwc1       $f10, %lo(D_8007BAFC)($at)
/* 45D0 800039D0 3C018008 */  lui        $at, %hi(D_8007BB00)
/* 45D4 800039D4 C430BB00 */  lwc1       $f16, %lo(D_8007BB00)($at)
/* 45D8 800039D8 3C018008 */  lui        $at, %hi(D_8007BAF4)
/* 45DC 800039DC C432BAF4 */  lwc1       $f18, %lo(D_8007BAF4)($at)
/* 45E0 800039E0 C424BAF0 */  lwc1       $f4, %lo(D_8007BAF0)($at)
/* 45E4 800039E4 3C078008 */  lui        $a3, %hi(D_8007BAF8)
/* 45E8 800039E8 8CE7BAF8 */  lw         $a3, %lo(D_8007BAF8)($a3)
/* 45EC 800039EC 46049182 */  mul.s      $f6, $f18, $f4
/* 45F0 800039F0 8C460008 */  lw         $a2, 0x8($v0)
/* 45F4 800039F4 C44E0004 */  lwc1       $f14, 0x4($v0)
/* 45F8 800039F8 C44C0000 */  lwc1       $f12, 0x0($v0)
/* 45FC 800039FC E7AA0010 */  swc1       $f10, 0x10($sp)
/* 4600 80003A00 E7B00014 */  swc1       $f16, 0x14($sp)
/* 4604 80003A04 0C004618 */  jal        func_80011860
/* 4608 80003A08 E7A60018 */   swc1      $f6, 0x18($sp)
/* 460C 80003A0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 4610 80003A10 27BD0038 */  addiu      $sp, $sp, 0x38
/* 4614 80003A14 03E00008 */  jr         $ra
/* 4618 80003A18 00000000 */   nop
