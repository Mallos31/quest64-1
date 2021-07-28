.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osInitialize
/* 34450 80033850 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 34454 80033854 AFBF001C */  sw         $ra, 0x1c($sp)
/* 34458 80033858 240E0001 */  addiu      $t6, $zero, 1
/* 3445C 8003385C 3C018009 */  lui        $at, %hi(__osFinalrom)
/* 34460 80033860 AFB00018 */  sw         $s0, 0x18($sp)
/* 34464 80033864 AFA00030 */  sw         $zero, 0x30($sp)
/* 34468 80033868 0C00F268 */  jal        __osGetSR
/* 3446C 8003386C AC2E2D40 */   sw        $t6, %lo(__osFinalrom)($at)
/* 34470 80033870 00408025 */  or         $s0, $v0, $zero
/* 34474 80033874 3C012000 */  lui        $at, 0x2000
/* 34478 80033878 0C00F264 */  jal        __osSetSR
/* 3447C 8003387C 02012025 */   or        $a0, $s0, $at
/* 34480 80033880 3C040100 */  lui        $a0, 0x100
/* 34484 80033884 0C00F26C */  jal        __osSetFpcCsr
/* 34488 80033888 34840800 */   ori       $a0, $a0, 0x800
/* 3448C 8003388C 3C041FC0 */  lui        $a0, 0x1fc0
/* 34490 80033890 348407FC */  ori        $a0, $a0, 0x7fc
/* 34494 80033894 0C00F270 */  jal        __osSpRawReadIo
/* 34498 80033898 27A50034 */   addiu     $a1, $sp, 0x34
/* 3449C 8003389C 10400007 */  beqz       $v0, .L800338BC
/* 344A0 800338A0 00000000 */   nop
.L800338A4:
/* 344A4 800338A4 3C041FC0 */  lui        $a0, 0x1fc0
/* 344A8 800338A8 348407FC */  ori        $a0, $a0, 0x7fc
/* 344AC 800338AC 0C00F270 */  jal        __osSpRawReadIo
/* 344B0 800338B0 27A50034 */   addiu     $a1, $sp, 0x34
/* 344B4 800338B4 1440FFFB */  bnez       $v0, .L800338A4
/* 344B8 800338B8 00000000 */   nop
.L800338BC:
/* 344BC 800338BC 8FA50034 */  lw         $a1, 0x34($sp)
/* 344C0 800338C0 3C041FC0 */  lui        $a0, 0x1fc0
/* 344C4 800338C4 348407FC */  ori        $a0, $a0, 0x7fc
/* 344C8 800338C8 34AF0008 */  ori        $t7, $a1, 8
/* 344CC 800338CC 0C00F284 */  jal        __osSpRawWriteIo
/* 344D0 800338D0 01E02825 */   or        $a1, $t7, $zero
/* 344D4 800338D4 10400009 */  beqz       $v0, .L800338FC
/* 344D8 800338D8 00000000 */   nop
.L800338DC:
/* 344DC 800338DC 8FA50034 */  lw         $a1, 0x34($sp)
/* 344E0 800338E0 3C041FC0 */  lui        $a0, 0x1fc0
/* 344E4 800338E4 348407FC */  ori        $a0, $a0, 0x7fc
/* 344E8 800338E8 34B80008 */  ori        $t8, $a1, 8
/* 344EC 800338EC 0C00F284 */  jal        __osSpRawWriteIo
/* 344F0 800338F0 03002825 */   or        $a1, $t8, $zero
/* 344F4 800338F4 1440FFF9 */  bnez       $v0, .L800338DC
/* 344F8 800338F8 00000000 */   nop
.L800338FC:
/* 344FC 800338FC 3C088004 */  lui        $t0, %hi(__osExceptionPreamble)
/* 34500 80033900 2508CA60 */  addiu      $t0, $t0, %lo(__osExceptionPreamble)
/* 34504 80033904 8D010000 */  lw         $at, ($t0)
/* 34508 80033908 3C198000 */  lui        $t9, 0x8000
/* 3450C 8003390C 3C0D8004 */  lui        $t5, %hi(__osExceptionPreamble)
/* 34510 80033910 AF210000 */  sw         $at, ($t9)
/* 34514 80033914 8D0B0004 */  lw         $t3, 4($t0)
/* 34518 80033918 25ADCA60 */  addiu      $t5, $t5, %lo(__osExceptionPreamble)
/* 3451C 8003391C 3C0C8000 */  lui        $t4, 0x8000
/* 34520 80033920 AF2B0004 */  sw         $t3, 4($t9)
/* 34524 80033924 8D010008 */  lw         $at, 8($t0)
/* 34528 80033928 358C0080 */  ori        $t4, $t4, 0x80
/* 3452C 8003392C 3C098004 */  lui        $t1, %hi(__osExceptionPreamble)
/* 34530 80033930 AF210008 */  sw         $at, 8($t9)
/* 34534 80033934 8D0B000C */  lw         $t3, 0xc($t0)
/* 34538 80033938 2529CA60 */  addiu      $t1, $t1, %lo(__osExceptionPreamble)
/* 3453C 8003393C 3C0A8000 */  lui        $t2, 0x8000
/* 34540 80033940 AF2B000C */  sw         $t3, 0xc($t9)
/* 34544 80033944 8DA10000 */  lw         $at, ($t5)
/* 34548 80033948 354A0100 */  ori        $t2, $t2, 0x100
/* 3454C 8003394C 3C0E8004 */  lui        $t6, %hi(__osExceptionPreamble)
/* 34550 80033950 AD810000 */  sw         $at, ($t4)
/* 34554 80033954 8DB80004 */  lw         $t8, 4($t5)
/* 34558 80033958 25CECA60 */  addiu      $t6, $t6, %lo(__osExceptionPreamble)
/* 3455C 8003395C 3C0F8000 */  lui        $t7, 0x8000
/* 34560 80033960 AD980004 */  sw         $t8, 4($t4)
/* 34564 80033964 8DA10008 */  lw         $at, 8($t5)
/* 34568 80033968 35EF0180 */  ori        $t7, $t7, 0x180
/* 3456C 8003396C 3C048000 */  lui        $a0, 0x8000
/* 34570 80033970 AD810008 */  sw         $at, 8($t4)
/* 34574 80033974 8DB8000C */  lw         $t8, 0xc($t5)
/* 34578 80033978 24050190 */  addiu      $a1, $zero, 0x190
/* 3457C 8003397C AD98000C */  sw         $t8, 0xc($t4)
/* 34580 80033980 8D210000 */  lw         $at, ($t1)
/* 34584 80033984 AD410000 */  sw         $at, ($t2)
/* 34588 80033988 8D2B0004 */  lw         $t3, 4($t1)
/* 3458C 8003398C AD4B0004 */  sw         $t3, 4($t2)
/* 34590 80033990 8D210008 */  lw         $at, 8($t1)
/* 34594 80033994 AD410008 */  sw         $at, 8($t2)
/* 34598 80033998 8D2B000C */  lw         $t3, 0xc($t1)
/* 3459C 8003399C AD4B000C */  sw         $t3, 0xc($t2)
/* 345A0 800339A0 8DC10000 */  lw         $at, ($t6)
/* 345A4 800339A4 ADE10000 */  sw         $at, ($t7)
/* 345A8 800339A8 8DD80004 */  lw         $t8, 4($t6)
/* 345AC 800339AC ADF80004 */  sw         $t8, 4($t7)
/* 345B0 800339B0 8DC10008 */  lw         $at, 8($t6)
/* 345B4 800339B4 ADE10008 */  sw         $at, 8($t7)
/* 345B8 800339B8 8DD8000C */  lw         $t8, 0xc($t6)
/* 345BC 800339BC 0C00D394 */  jal        osWritebackDCache
/* 345C0 800339C0 ADF8000C */   sw        $t8, 0xc($t7)
/* 345C4 800339C4 3C048000 */  lui        $a0, 0x8000
/* 345C8 800339C8 0C00D8F8 */  jal        osInvalICache
/* 345CC 800339CC 24050190 */   addiu     $a1, $zero, 0x190
/* 345D0 800339D0 0C00F4DC */  jal        osMapTLBRdb
/* 345D4 800339D4 00000000 */   nop
/* 345D8 800339D8 24040004 */  addiu      $a0, $zero, 4
/* 345DC 800339DC 0C00F4F4 */  jal        osPiRawReadIo
/* 345E0 800339E0 27A50030 */   addiu     $a1, $sp, 0x30
/* 345E4 800339E4 8FA80030 */  lw         $t0, 0x30($sp)
/* 345E8 800339E8 2401FFF0 */  addiu      $at, $zero, -0x10
/* 345EC 800339EC 0101C824 */  and        $t9, $t0, $at
/* 345F0 800339F0 13200006 */  beqz       $t9, .L80033A0C
/* 345F4 800339F4 AFB90030 */   sw        $t9, 0x30($sp)
/* 345F8 800339F8 3C018007 */  lui        $at, %hi(osClockRate)
/* 345FC 800339FC 03205825 */  or         $t3, $t9, $zero
/* 34600 80033A00 240A0000 */  addiu      $t2, $zero, 0
/* 34604 80033A04 AC2AF400 */  sw         $t2, %lo(osClockRate)($at)
/* 34608 80033A08 AC2BF404 */  sw         $t3, -0xbfc($at)
.L80033A0C:
/* 3460C 80033A0C 3C048007 */  lui        $a0, %hi(osClockRate)
/* 34610 80033A10 3C058007 */  lui        $a1, %hi(osClockRateLo)
/* 34614 80033A14 8CA5F404 */  lw         $a1, %lo(osClockRateLo)($a1)
/* 34618 80033A18 8C84F400 */  lw         $a0, %lo(osClockRate)($a0)
/* 3461C 80033A1C 24060000 */  addiu      $a2, $zero, 0
/* 34620 80033A20 0C00E70E */  jal        u64_multi
/* 34624 80033A24 24070003 */   addiu     $a3, $zero, 3
/* 34628 80033A28 AFA20020 */  sw         $v0, 0x20($sp)
/* 3462C 80033A2C AFA30024 */  sw         $v1, 0x24($sp)
/* 34630 80033A30 8FA50024 */  lw         $a1, 0x24($sp)
/* 34634 80033A34 8FA40020 */  lw         $a0, 0x20($sp)
/* 34638 80033A38 24060000 */  addiu      $a2, $zero, 0
/* 3463C 80033A3C 0C00E6CE */  jal        u64_div
/* 34640 80033A40 24070004 */   addiu     $a3, $zero, 4
/* 34644 80033A44 3C098000 */  lui        $t1, %hi(osResetType)
/* 34648 80033A48 8D29030C */  lw         $t1, %lo(osResetType)($t1)
/* 3464C 80033A4C 3C018007 */  lui        $at, %hi(osClockRate)
/* 34650 80033A50 AC22F400 */  sw         $v0, %lo(osClockRate)($at)
/* 34654 80033A54 15200005 */  bnez       $t1, .L80033A6C
/* 34658 80033A58 AC23F404 */   sw        $v1, -0xbfc($at)
/* 3465C 80033A5C 3C048000 */  lui        $a0, %hi(osAppNMIBuffer)
/* 34660 80033A60 2484031C */  addiu      $a0, $a0, %lo(osAppNMIBuffer)
/* 34664 80033A64 0C00F50C */  jal        bzero
/* 34668 80033A68 24050040 */   addiu     $a1, $zero, 0x40
.L80033A6C:
/* 3466C 80033A6C 3C0D8000 */  lui        $t5, %hi(osTvType)
/* 34670 80033A70 8DAD0300 */  lw         $t5, %lo(osTvType)($t5)
/* 34674 80033A74 15A00006 */  bnez       $t5, .L80033A90
/* 34678 80033A78 00000000 */   nop
/* 3467C 80033A7C 3C0C02F5 */  lui        $t4, 0x2f5
/* 34680 80033A80 358CB2D2 */  ori        $t4, $t4, 0xb2d2
/* 34684 80033A84 3C018007 */  lui        $at, %hi(osViClock)
/* 34688 80033A88 1000000F */  b          .L80033AC8
/* 3468C 80033A8C AC2CF408 */   sw        $t4, %lo(osViClock)($at)
.L80033A90:
/* 34690 80033A90 3C0F8000 */  lui        $t7, %hi(osTvType)
/* 34694 80033A94 8DEF0300 */  lw         $t7, %lo(osTvType)($t7)
/* 34698 80033A98 24010002 */  addiu      $at, $zero, 2
/* 3469C 80033A9C 15E10006 */  bne        $t7, $at, .L80033AB8
/* 346A0 80033AA0 00000000 */   nop
/* 346A4 80033AA4 3C0E02E6 */  lui        $t6, 0x2e6
/* 346A8 80033AA8 35CE025C */  ori        $t6, $t6, 0x25c
/* 346AC 80033AAC 3C018007 */  lui        $at, %hi(osViClock)
/* 346B0 80033AB0 10000005 */  b          .L80033AC8
/* 346B4 80033AB4 AC2EF408 */   sw        $t6, %lo(osViClock)($at)
.L80033AB8:
/* 346B8 80033AB8 3C1802E6 */  lui        $t8, 0x2e6
/* 346BC 80033ABC 3718D354 */  ori        $t8, $t8, 0xd354
/* 346C0 80033AC0 3C018007 */  lui        $at, %hi(osViClock)
/* 346C4 80033AC4 AC38F408 */  sw         $t8, %lo(osViClock)($at)
.L80033AC8:
/* 346C8 80033AC8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 346CC 80033ACC 8FB00018 */  lw         $s0, 0x18($sp)
/* 346D0 80033AD0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 346D4 80033AD4 03E00008 */  jr         $ra
/* 346D8 80033AD8 00000000 */   nop
/* 346DC 80033ADC 00000000 */  nop
