.section .late_rodata
glabel jtbl_8007194C
/* 7254C 8007194C 8002CAA8 */ .word .L8002CAA8
/* 72550 80071950 8002CACC */ .word .L8002CACC
/* 72554 80071954 8002CAF0 */ .word .L8002CAF0
/* 72558 80071958 8002CAFC */ .word .L8002CAFC
/* 7255C 8007195C 8002CBD0 */ .word .L8002CBD0
/* 72560 80071960 8002CB20 */ .word .L8002CB20
/* 72564 80071964 8002CBD0 */ .word .L8002CBD0
/* 72568 80071968 8002CB2C */ .word .L8002CB2C
/* 7256C 8007196C 8002CB50 */ .word .L8002CB50
/* 72570 80071970 8002CBD0 */ .word .L8002CBD0
/* 72574 80071974 8002CBB0 */ .word .L8002CBB0
/* 72578 80071978 8002CBBC */ .word .L8002CBBC
/* 7257C 8007197C 8002CBD0 */ .word .L8002CBD0
/* 72580 80071980 8002CBD0 */ .word .L8002CBD0
/* 72584 80071984 8002CBD0 */ .word .L8002CBD0
/* 72588 80071988 8002CBC8 */ .word .L8002CBC8

glabel jtbl_8007198C
/* 7258C 8007198C 8002CEE0 */ .word .L8002CEE0
/* 72590 80071990 8002CF00 */ .word .L8002CF00
/* 72594 80071994 8002CF20 */ .word .L8002CF20
/* 72598 80071998 8002CF28 */ .word .L8002CF28
/* 7259C 8007199C 8002CFD4 */ .word .L8002CFD4
/* 725A0 800719A0 8002CF48 */ .word .L8002CF48
/* 725A4 800719A4 8002CFD4 */ .word .L8002CFD4
/* 725A8 800719A8 8002CF50 */ .word .L8002CF50
/* 725AC 800719AC 8002CF70 */ .word .L8002CF70
/* 725B0 800719B0 8002CFD4 */ .word .L8002CFD4
/* 725B4 800719B4 8002CFC0 */ .word .L8002CFC0
/* 725B8 800719B8 8002CFC8 */ .word .L8002CFC8
/* 725BC 800719BC 8002CFD4 */ .word .L8002CFD4
/* 725C0 800719C0 8002CFD4 */ .word .L8002CFD4
/* 725C4 800719C4 8002CFD4 */ .word .L8002CFD4
/* 725C8 800719C8 8002CFD0 */ .word .L8002CFD0
/* 725CC 800719CC 00000000 */ .word 0x00000000


.section .text
glabel func_8002C818
/* 2D418 8002C818 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2D41C 8002C81C AFBF0024 */  sw         $ra, 0x24($sp)
/* 2D420 8002C820 AFB10020 */  sw         $s1, 0x20($sp)
/* 2D424 8002C824 AFB0001C */  sw         $s0, 0x1C($sp)
/* 2D428 8002C828 AFA40058 */  sw         $a0, 0x58($sp)
/* 2D42C 8002C82C 3C0F8006 */  lui        $t7, %hi(D_8005F9A0)
/* 2D430 8002C830 AFA00050 */  sw         $zero, 0x50($sp)
/* 2D434 8002C834 25EFF9A0 */  addiu      $t7, $t7, %lo(D_8005F9A0)
/* 2D438 8002C838 8DE10000 */  lw         $at, 0x0($t7)
/* 2D43C 8002C83C 27AE0034 */  addiu      $t6, $sp, 0x34
/* 2D440 8002C840 8DE80004 */  lw         $t0, 0x4($t7)
/* 2D444 8002C844 ADC10000 */  sw         $at, 0x0($t6)
/* 2D448 8002C848 8DE10008 */  lw         $at, 0x8($t7)
/* 2D44C 8002C84C 3C038009 */  lui        $v1, %hi(D_8008FD20)
/* 2D450 8002C850 ADC80004 */  sw         $t0, 0x4($t6)
/* 2D454 8002C854 ADC10008 */  sw         $at, 0x8($t6)
/* 2D458 8002C858 9463FD20 */  lhu        $v1, %lo(D_8008FD20)($v1)
/* 2D45C 8002C85C 3C028009 */  lui        $v0, %hi(D_8008FD2A)
/* 2D460 8002C860 24040082 */  addiu      $a0, $zero, 0x82
/* 2D464 8002C864 30690020 */  andi       $t1, $v1, 0x20
/* 2D468 8002C868 1120000C */  beqz       $t1, .L8002C89C
/* 2D46C 8002C86C 24050033 */   addiu     $a1, $zero, 0x33
/* 2D470 8002C870 3C028009 */  lui        $v0, %hi(D_8008FD2A)
/* 2D474 8002C874 8042FD2A */  lb         $v0, %lo(D_8008FD2A)($v0)
/* 2D478 8002C878 306AFFDF */  andi       $t2, $v1, 0xFFDF
/* 2D47C 8002C87C 3C018009 */  lui        $at, %hi(D_8008FD20)
/* 2D480 8002C880 14400004 */  bnez       $v0, .L8002C894
/* 2D484 8002C884 244BFFFF */   addiu     $t3, $v0, -0x1
/* 2D488 8002C888 AFA20054 */  sw         $v0, 0x54($sp)
/* 2D48C 8002C88C 10000005 */  b          .L8002C8A4
/* 2D490 8002C890 A42AFD20 */   sh        $t2, %lo(D_8008FD20)($at)
.L8002C894:
/* 2D494 8002C894 10000003 */  b          .L8002C8A4
/* 2D498 8002C898 AFAB0054 */   sw        $t3, 0x54($sp)
.L8002C89C:
/* 2D49C 8002C89C 8042FD2A */  lb         $v0, %lo(D_8008FD2A)($v0)
/* 2D4A0 8002C8A0 AFA20054 */  sw         $v0, 0x54($sp)
.L8002C8A4:
/* 2D4A4 8002C8A4 8FAC0054 */  lw         $t4, 0x54($sp)
/* 2D4A8 8002C8A8 3C198009 */  lui        $t9, %hi(D_8008FD30)
/* 2D4AC 8002C8AC 2739FD30 */  addiu      $t9, $t9, %lo(D_8008FD30)
/* 2D4B0 8002C8B0 000C6840 */  sll        $t5, $t4, 1
/* 2D4B4 8002C8B4 01B9C021 */  addu       $t8, $t5, $t9
/* 2D4B8 8002C8B8 AFB8002C */  sw         $t8, 0x2C($sp)
/* 2D4BC 8002C8BC 830E0000 */  lb         $t6, 0x0($t8)
/* 2D4C0 8002C8C0 2401FFFE */  addiu      $at, $zero, -0x2
/* 2D4C4 8002C8C4 240D0001 */  addiu      $t5, $zero, 0x1
/* 2D4C8 8002C8C8 11C100FA */  beq        $t6, $at, .L8002CCB4
/* 2D4CC 8002C8CC 27A60034 */   addiu     $a2, $sp, 0x34
/* 2D4D0 8002C8D0 830F0001 */  lb         $t7, 0x1($t8)
/* 2D4D4 8002C8D4 2401FFFF */  addiu      $at, $zero, -0x1
/* 2D4D8 8002C8D8 11E100F4 */  beq        $t7, $at, .L8002CCAC
/* 2D4DC 8002C8DC 00000000 */   nop
/* 2D4E0 8002C8E0 15820020 */  bne        $t4, $v0, .L8002C964
/* 2D4E4 8002C8E4 24040002 */   addiu     $a0, $zero, 0x2
/* 2D4E8 8002C8E8 2408000A */  addiu      $t0, $zero, 0xA
/* 2D4EC 8002C8EC AFA80010 */  sw         $t0, 0x10($sp)
/* 2D4F0 8002C8F0 24040002 */  addiu      $a0, $zero, 0x2
/* 2D4F4 8002C8F4 2405006F */  addiu      $a1, $zero, 0x6F
/* 2D4F8 8002C8F8 24060036 */  addiu      $a2, $zero, 0x36
/* 2D4FC 8002C8FC 0C00AAD9 */  jal        func_8002AB64
/* 2D500 8002C900 01803825 */   or        $a3, $t4, $zero
/* 2D504 8002C904 2409000D */  addiu      $t1, $zero, 0xD
/* 2D508 8002C908 AFA90010 */  sw         $t1, 0x10($sp)
/* 2D50C 8002C90C 24040036 */  addiu      $a0, $zero, 0x36
/* 2D510 8002C910 24050053 */  addiu      $a1, $zero, 0x53
/* 2D514 8002C914 24060035 */  addiu      $a2, $zero, 0x35
/* 2D518 8002C918 0C00A6D6 */  jal        func_80029B58
/* 2D51C 8002C91C 2407001C */   addiu     $a3, $zero, 0x1C
/* 2D520 8002C920 240A000A */  addiu      $t2, $zero, 0xA
/* 2D524 8002C924 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2D528 8002C928 24040019 */  addiu      $a0, $zero, 0x19
/* 2D52C 8002C92C 24050092 */  addiu      $a1, $zero, 0x92
/* 2D530 8002C930 24060036 */  addiu      $a2, $zero, 0x36
/* 2D534 8002C934 0C00A6D6 */  jal        func_80029B58
/* 2D538 8002C938 24070008 */   addiu     $a3, $zero, 0x8
/* 2D53C 8002C93C 240B000E */  addiu      $t3, $zero, 0xE
/* 2D540 8002C940 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2D544 8002C944 24040043 */  addiu      $a0, $zero, 0x43
/* 2D548 8002C948 240500D9 */  addiu      $a1, $zero, 0xD9
/* 2D54C 8002C94C 24060035 */  addiu      $a2, $zero, 0x35
/* 2D550 8002C950 0C00A6D6 */  jal        func_80029B58
/* 2D554 8002C954 2407001C */   addiu     $a3, $zero, 0x1C
/* 2D558 8002C958 240D000A */  addiu      $t5, $zero, 0xA
/* 2D55C 8002C95C 1000001E */  b          .L8002C9D8
/* 2D560 8002C960 AFAD0040 */   sw        $t5, 0x40($sp)
.L8002C964:
/* 2D564 8002C964 24190048 */  addiu      $t9, $zero, 0x48
/* 2D568 8002C968 AFB90010 */  sw         $t9, 0x10($sp)
/* 2D56C 8002C96C 2405006F */  addiu      $a1, $zero, 0x6F
/* 2D570 8002C970 24060036 */  addiu      $a2, $zero, 0x36
/* 2D574 8002C974 0C00AAD9 */  jal        func_8002AB64
/* 2D578 8002C978 8FA70054 */   lw        $a3, 0x54($sp)
/* 2D57C 8002C97C 240E000D */  addiu      $t6, $zero, 0xD
/* 2D580 8002C980 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2D584 8002C984 24040045 */  addiu      $a0, $zero, 0x45
/* 2D588 8002C988 24050053 */  addiu      $a1, $zero, 0x53
/* 2D58C 8002C98C 24060035 */  addiu      $a2, $zero, 0x35
/* 2D590 8002C990 0C00A6D6 */  jal        func_80029B58
/* 2D594 8002C994 2407001C */   addiu     $a3, $zero, 0x1C
/* 2D598 8002C998 2418000A */  addiu      $t8, $zero, 0xA
/* 2D59C 8002C99C AFB80010 */  sw         $t8, 0x10($sp)
/* 2D5A0 8002C9A0 24040052 */  addiu      $a0, $zero, 0x52
/* 2D5A4 8002C9A4 24050092 */  addiu      $a1, $zero, 0x92
/* 2D5A8 8002C9A8 24060036 */  addiu      $a2, $zero, 0x36
/* 2D5AC 8002C9AC 0C00A6D6 */  jal        func_80029B58
/* 2D5B0 8002C9B0 24070008 */   addiu     $a3, $zero, 0x8
/* 2D5B4 8002C9B4 240F000E */  addiu      $t7, $zero, 0xE
/* 2D5B8 8002C9B8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2D5BC 8002C9BC 24040044 */  addiu      $a0, $zero, 0x44
/* 2D5C0 8002C9C0 240500D9 */  addiu      $a1, $zero, 0xD9
/* 2D5C4 8002C9C4 24060035 */  addiu      $a2, $zero, 0x35
/* 2D5C8 8002C9C8 0C00A6D6 */  jal        func_80029B58
/* 2D5CC 8002C9CC 2407001C */   addiu     $a3, $zero, 0x1C
/* 2D5D0 8002C9D0 240C0048 */  addiu      $t4, $zero, 0x48
/* 2D5D4 8002C9D4 AFAC0040 */  sw         $t4, 0x40($sp)
.L8002C9D8:
/* 2D5D8 8002C9D8 8FA80054 */  lw         $t0, 0x54($sp)
/* 2D5DC 8002C9DC 3C0A8009 */  lui        $t2, %hi(D_8008FD58)
/* 2D5E0 8002C9E0 254AFD58 */  addiu      $t2, $t2, %lo(D_8008FD58)
/* 2D5E4 8002C9E4 00084880 */  sll        $t1, $t0, 2
/* 2D5E8 8002C9E8 01284823 */  subu       $t1, $t1, $t0
/* 2D5EC 8002C9EC 000948C0 */  sll        $t1, $t1, 3
/* 2D5F0 8002C9F0 01284821 */  addu       $t1, $t1, $t0
/* 2D5F4 8002C9F4 00094880 */  sll        $t1, $t1, 2
/* 2D5F8 8002C9F8 012A1021 */  addu       $v0, $t1, $t2
/* 2D5FC 8002C9FC 240B000A */  addiu      $t3, $zero, 0xA
/* 2D600 8002CA00 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2D604 8002CA04 90470024 */  lbu        $a3, 0x24($v0)
/* 2D608 8002CA08 AFA20028 */  sw         $v0, 0x28($sp)
/* 2D60C 8002CA0C 24040002 */  addiu      $a0, $zero, 0x2
/* 2D610 8002CA10 24050065 */  addiu      $a1, $zero, 0x65
/* 2D614 8002CA14 0C00AAD9 */  jal        func_8002AB64
/* 2D618 8002CA18 2406006C */   addiu     $a2, $zero, 0x6C
/* 2D61C 8002CA1C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 2D620 8002CA20 2419000A */  addiu      $t9, $zero, 0xA
/* 2D624 8002CA24 24040002 */  addiu      $a0, $zero, 0x2
/* 2D628 8002CA28 91A70025 */  lbu        $a3, 0x25($t5)
/* 2D62C 8002CA2C AFB90010 */  sw         $t9, 0x10($sp)
/* 2D630 8002CA30 2405008A */  addiu      $a1, $zero, 0x8A
/* 2D634 8002CA34 0C00AAD9 */  jal        func_8002AB64
/* 2D638 8002CA38 2406006C */   addiu     $a2, $zero, 0x6C
/* 2D63C 8002CA3C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 2D640 8002CA40 2418000A */  addiu      $t8, $zero, 0xA
/* 2D644 8002CA44 24040002 */  addiu      $a0, $zero, 0x2
/* 2D648 8002CA48 91C70026 */  lbu        $a3, 0x26($t6)
/* 2D64C 8002CA4C AFB80010 */  sw         $t8, 0x10($sp)
/* 2D650 8002CA50 240500AF */  addiu      $a1, $zero, 0xAF
/* 2D654 8002CA54 0C00AAD9 */  jal        func_8002AB64
/* 2D658 8002CA58 2406006C */   addiu     $a2, $zero, 0x6C
/* 2D65C 8002CA5C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 2D660 8002CA60 240C000A */  addiu      $t4, $zero, 0xA
/* 2D664 8002CA64 24040002 */  addiu      $a0, $zero, 0x2
/* 2D668 8002CA68 91E70027 */  lbu        $a3, 0x27($t7)
/* 2D66C 8002CA6C AFAC0010 */  sw         $t4, 0x10($sp)
/* 2D670 8002CA70 240500D4 */  addiu      $a1, $zero, 0xD4
/* 2D674 8002CA74 0C00AAD9 */  jal        func_8002AB64
/* 2D678 8002CA78 2406006C */   addiu     $a2, $zero, 0x6C
/* 2D67C 8002CA7C 8FA30028 */  lw         $v1, 0x28($sp)
/* 2D680 8002CA80 8C68003C */  lw         $t0, 0x3C($v1)
/* 2D684 8002CA84 2509FFF1 */  addiu      $t1, $t0, -0xF
/* 2D688 8002CA88 2D210010 */  sltiu      $at, $t1, 0x10
/* 2D68C 8002CA8C 10200050 */  beqz       $at, .L8002CBD0
/* 2D690 8002CA90 00094880 */   sll       $t1, $t1, 2
/* 2D694 8002CA94 3C018007 */  lui        $at, %hi(jtbl_8007194C)
/* 2D698 8002CA98 00290821 */  addu       $at, $at, $t1
/* 2D69C 8002CA9C 8C29194C */  lw         $t1, %lo(jtbl_8007194C)($at)
/* 2D6A0 8002CAA0 01200008 */  jr         $t1
/* 2D6A4 8002CAA4 00000000 */   nop
glabel .L8002CAA8
/* 2D6A8 8002CAA8 8C6A0040 */  lw         $t2, 0x40($v1)
/* 2D6AC 8002CAAC 24010005 */  addiu      $at, $zero, 0x5
/* 2D6B0 8002CAB0 24110010 */  addiu      $s1, $zero, 0x10
/* 2D6B4 8002CAB4 15410003 */  bne        $t2, $at, .L8002CAC4
/* 2D6B8 8002CAB8 00000000 */   nop
/* 2D6BC 8002CABC 10000001 */  b          .L8002CAC4
/* 2D6C0 8002CAC0 00008825 */   or        $s1, $zero, $zero
.L8002CAC4:
/* 2D6C4 8002CAC4 10000042 */  b          .L8002CBD0
/* 2D6C8 8002CAC8 AFB10048 */   sw        $s1, 0x48($sp)
glabel .L8002CACC
/* 2D6CC 8002CACC 8C6B0040 */  lw         $t3, 0x40($v1)
/* 2D6D0 8002CAD0 24010007 */  addiu      $at, $zero, 0x7
/* 2D6D4 8002CAD4 24110002 */  addiu      $s1, $zero, 0x2
/* 2D6D8 8002CAD8 15610003 */  bne        $t3, $at, .L8002CAE8
/* 2D6DC 8002CADC 00000000 */   nop
/* 2D6E0 8002CAE0 10000001 */  b          .L8002CAE8
/* 2D6E4 8002CAE4 24110001 */   addiu     $s1, $zero, 0x1
.L8002CAE8:
/* 2D6E8 8002CAE8 10000039 */  b          .L8002CBD0
/* 2D6EC 8002CAEC AFB10048 */   sw        $s1, 0x48($sp)
glabel .L8002CAF0
/* 2D6F0 8002CAF0 24110004 */  addiu      $s1, $zero, 0x4
/* 2D6F4 8002CAF4 10000036 */  b          .L8002CBD0
/* 2D6F8 8002CAF8 AFB10048 */   sw        $s1, 0x48($sp)
glabel .L8002CAFC
/* 2D6FC 8002CAFC 8C6D0040 */  lw         $t5, 0x40($v1)
/* 2D700 8002CB00 24010006 */  addiu      $at, $zero, 0x6
/* 2D704 8002CB04 24110005 */  addiu      $s1, $zero, 0x5
/* 2D708 8002CB08 15A10003 */  bne        $t5, $at, .L8002CB18
/* 2D70C 8002CB0C 00000000 */   nop
/* 2D710 8002CB10 10000001 */  b          .L8002CB18
/* 2D714 8002CB14 24110003 */   addiu     $s1, $zero, 0x3
.L8002CB18:
/* 2D718 8002CB18 1000002D */  b          .L8002CBD0
/* 2D71C 8002CB1C AFB10048 */   sw        $s1, 0x48($sp)
glabel .L8002CB20
/* 2D720 8002CB20 24110006 */  addiu      $s1, $zero, 0x6
/* 2D724 8002CB24 1000002A */  b          .L8002CBD0
/* 2D728 8002CB28 AFB10048 */   sw        $s1, 0x48($sp)
glabel .L8002CB2C
/* 2D72C 8002CB2C 8C790040 */  lw         $t9, 0x40($v1)
/* 2D730 8002CB30 24010016 */  addiu      $at, $zero, 0x16
/* 2D734 8002CB34 24110008 */  addiu      $s1, $zero, 0x8
/* 2D738 8002CB38 17210003 */  bne        $t9, $at, .L8002CB48
/* 2D73C 8002CB3C 00000000 */   nop
/* 2D740 8002CB40 10000001 */  b          .L8002CB48
/* 2D744 8002CB44 24110007 */   addiu     $s1, $zero, 0x7
.L8002CB48:
/* 2D748 8002CB48 10000021 */  b          .L8002CBD0
/* 2D74C 8002CB4C AFB10048 */   sw        $s1, 0x48($sp)
glabel .L8002CB50
/* 2D750 8002CB50 8C620040 */  lw         $v0, 0x40($v1)
/* 2D754 8002CB54 24010008 */  addiu      $at, $zero, 0x8
/* 2D758 8002CB58 24110009 */  addiu      $s1, $zero, 0x9
/* 2D75C 8002CB5C 1040000B */  beqz       $v0, .L8002CB8C
/* 2D760 8002CB60 00000000 */   nop
/* 2D764 8002CB64 1041000B */  beq        $v0, $at, .L8002CB94
/* 2D768 8002CB68 2411000C */   addiu     $s1, $zero, 0xC
/* 2D76C 8002CB6C 24010013 */  addiu      $at, $zero, 0x13
/* 2D770 8002CB70 1041000A */  beq        $v0, $at, .L8002CB9C
/* 2D774 8002CB74 2411000A */   addiu     $s1, $zero, 0xA
/* 2D778 8002CB78 24010016 */  addiu      $at, $zero, 0x16
/* 2D77C 8002CB7C 10410009 */  beq        $v0, $at, .L8002CBA4
/* 2D780 8002CB80 2411000B */   addiu     $s1, $zero, 0xB
/* 2D784 8002CB84 10000008 */  b          .L8002CBA8
/* 2D788 8002CB88 00000000 */   nop
.L8002CB8C:
/* 2D78C 8002CB8C 10000006 */  b          .L8002CBA8
/* 2D790 8002CB90 AFB10048 */   sw        $s1, 0x48($sp)
.L8002CB94:
/* 2D794 8002CB94 10000004 */  b          .L8002CBA8
/* 2D798 8002CB98 AFB10048 */   sw        $s1, 0x48($sp)
.L8002CB9C:
/* 2D79C 8002CB9C 10000002 */  b          .L8002CBA8
/* 2D7A0 8002CBA0 AFB10048 */   sw        $s1, 0x48($sp)
.L8002CBA4:
/* 2D7A4 8002CBA4 AFB10048 */  sw         $s1, 0x48($sp)
.L8002CBA8:
/* 2D7A8 8002CBA8 1000000A */  b          .L8002CBD4
/* 2D7AC 8002CBAC 8FB10048 */   lw        $s1, 0x48($sp)
glabel .L8002CBB0
/* 2D7B0 8002CBB0 2411000E */  addiu      $s1, $zero, 0xE
/* 2D7B4 8002CBB4 10000006 */  b          .L8002CBD0
/* 2D7B8 8002CBB8 AFB10048 */   sw        $s1, 0x48($sp)
glabel .L8002CBBC
/* 2D7BC 8002CBBC 2411000D */  addiu      $s1, $zero, 0xD
/* 2D7C0 8002CBC0 10000003 */  b          .L8002CBD0
/* 2D7C4 8002CBC4 AFB10048 */   sw        $s1, 0x48($sp)
glabel .L8002CBC8
/* 2D7C8 8002CBC8 2411000F */  addiu      $s1, $zero, 0xF
/* 2D7CC 8002CBCC AFB10048 */  sw         $s1, 0x48($sp)
glabel .L8002CBD0
/* 2D7D0 8002CBD0 8FB10048 */  lw         $s1, 0x48($sp)
.L8002CBD4:
/* 2D7D4 8002CBD4 3C068007 */  lui        $a2, %hi(D_8006AC00)
/* 2D7D8 8002CBD8 24040051 */  addiu      $a0, $zero, 0x51
/* 2D7DC 8002CBDC 00117080 */  sll        $t6, $s1, 2
/* 2D7E0 8002CBE0 00CE3021 */  addu       $a2, $a2, $t6
/* 2D7E4 8002CBE4 8CC6AC00 */  lw         $a2, %lo(D_8006AC00)($a2)
/* 2D7E8 8002CBE8 00008825 */  or         $s1, $zero, $zero
/* 2D7EC 8002CBEC 0C00C3A8 */  jal        func_80030EA0
/* 2D7F0 8002CBF0 24050048 */   addiu     $a1, $zero, 0x48
/* 2D7F4 8002CBF4 0C00B7DB */  jal        func_8002DF6C
/* 2D7F8 8002CBF8 00000000 */   nop
/* 2D7FC 8002CBFC 8FB80028 */  lw         $t8, 0x28($sp)
/* 2D800 8002CC00 24040003 */  addiu      $a0, $zero, 0x3
/* 2D804 8002CC04 2405007E */  addiu      $a1, $zero, 0x7E
/* 2D808 8002CC08 97100038 */  lhu        $s0, 0x38($t8)
/* 2D80C 8002CC0C 24060036 */  addiu      $a2, $zero, 0x36
/* 2D810 8002CC10 8FAF0040 */  lw         $t7, 0x40($sp)
/* 2D814 8002CC14 2A01003C */  slti       $at, $s0, 0x3C
/* 2D818 8002CC18 54200006 */  bnel       $at, $zero, .L8002CC34
/* 2D81C 8002CC1C 02203825 */   or        $a3, $s1, $zero
.L8002CC20:
/* 2D820 8002CC20 2610FFC4 */  addiu      $s0, $s0, -0x3C
/* 2D824 8002CC24 2A01003C */  slti       $at, $s0, 0x3C
/* 2D828 8002CC28 1020FFFD */  beqz       $at, .L8002CC20
/* 2D82C 8002CC2C 26310001 */   addiu     $s1, $s1, 0x1
/* 2D830 8002CC30 02203825 */  or         $a3, $s1, $zero
.L8002CC34:
/* 2D834 8002CC34 0C00AAD9 */  jal        func_8002AB64
/* 2D838 8002CC38 AFAF0010 */   sw        $t7, 0x10($sp)
/* 2D83C 8002CC3C 8FAC0040 */  lw         $t4, 0x40($sp)
/* 2D840 8002CC40 24040002 */  addiu      $a0, $zero, 0x2
/* 2D844 8002CC44 2405009A */  addiu      $a1, $zero, 0x9A
/* 2D848 8002CC48 24060036 */  addiu      $a2, $zero, 0x36
/* 2D84C 8002CC4C 02003825 */  or         $a3, $s0, $zero
/* 2D850 8002CC50 0C00ABDC */  jal        func_8002AF70
/* 2D854 8002CC54 AFAC0010 */   sw        $t4, 0x10($sp)
/* 2D858 8002CC58 8FA80028 */  lw         $t0, 0x28($sp)
/* 2D85C 8002CC5C 8FA90040 */  lw         $t1, 0x40($sp)
/* 2D860 8002CC60 24040003 */  addiu      $a0, $zero, 0x3
/* 2D864 8002CC64 9507003A */  lhu        $a3, 0x3A($t0)
/* 2D868 8002CC68 240500C0 */  addiu      $a1, $zero, 0xC0
/* 2D86C 8002CC6C 24060036 */  addiu      $a2, $zero, 0x36
/* 2D870 8002CC70 0C00AAD9 */  jal        func_8002AB64
/* 2D874 8002CC74 AFA90010 */   sw        $t1, 0x10($sp)
/* 2D878 8002CC78 8FAA0028 */  lw         $t2, 0x28($sp)
/* 2D87C 8002CC7C 24040003 */  addiu      $a0, $zero, 0x3
/* 2D880 8002CC80 24050070 */  addiu      $a1, $zero, 0x70
/* 2D884 8002CC84 24060058 */  addiu      $a2, $zero, 0x58
/* 2D888 8002CC88 0C00ACD9 */  jal        func_8002B364
/* 2D88C 8002CC8C 95470004 */   lhu       $a3, 0x4($t2)
/* 2D890 8002CC90 8FAB0028 */  lw         $t3, 0x28($sp)
/* 2D894 8002CC94 24040003 */  addiu      $a0, $zero, 0x3
/* 2D898 8002CC98 240500C0 */  addiu      $a1, $zero, 0xC0
/* 2D89C 8002CC9C 24060058 */  addiu      $a2, $zero, 0x58
/* 2D8A0 8002CCA0 0C00ACD9 */  jal        func_8002B364
/* 2D8A4 8002CCA4 95670008 */   lhu       $a3, 0x8($t3)
/* 2D8A8 8002CCA8 AFB10048 */  sw         $s1, 0x48($sp)
.L8002CCAC:
/* 2D8AC 8002CCAC 10000004 */  b          .L8002CCC0
/* 2D8B0 8002CCB0 8FB10048 */   lw        $s1, 0x48($sp)
.L8002CCB4:
/* 2D8B4 8002CCB4 0C00C3A8 */  jal        func_80030EA0
/* 2D8B8 8002CCB8 AFAD0050 */   sw        $t5, 0x50($sp)
/* 2D8BC 8002CCBC 8FB10048 */  lw         $s1, 0x48($sp)
.L8002CCC0:
/* 2D8C0 8002CCC0 0C00B7DB */  jal        func_8002DF6C
/* 2D8C4 8002CCC4 00000000 */   nop
/* 2D8C8 8002CCC8 8FB90054 */  lw         $t9, 0x54($sp)
/* 2D8CC 8002CCCC 8FB8002C */  lw         $t8, 0x2C($sp)
/* 2D8D0 8002CCD0 2401FFFF */  addiu      $at, $zero, -0x1
/* 2D8D4 8002CCD4 272E0001 */  addiu      $t6, $t9, 0x1
/* 2D8D8 8002CCD8 270F0002 */  addiu      $t7, $t8, 0x2
/* 2D8DC 8002CCDC AFAF002C */  sw         $t7, 0x2C($sp)
/* 2D8E0 8002CCE0 AFAE0054 */  sw         $t6, 0x54($sp)
/* 2D8E4 8002CCE4 81E20000 */  lb         $v0, 0x0($t7)
/* 2D8E8 8002CCE8 8FAC0050 */  lw         $t4, 0x50($sp)
/* 2D8EC 8002CCEC 104100F3 */  beq        $v0, $at, .L8002D0BC
/* 2D8F0 8002CCF0 00000000 */   nop
/* 2D8F4 8002CCF4 158000F1 */  bnez       $t4, .L8002D0BC
/* 2D8F8 8002CCF8 2401FFFE */   addiu     $at, $zero, -0x2
/* 2D8FC 8002CCFC 104100EC */  beq        $v0, $at, .L8002D0B0
/* 2D900 8002CD00 24040082 */   addiu     $a0, $zero, 0x82
/* 2D904 8002CD04 81E80001 */  lb         $t0, 0x1($t7)
/* 2D908 8002CD08 2401FFFF */  addiu      $at, $zero, -0x1
/* 2D90C 8002CD0C 000E4880 */  sll        $t1, $t6, 2
/* 2D910 8002CD10 110100EA */  beq        $t0, $at, .L8002D0BC
/* 2D914 8002CD14 012E4823 */   subu      $t1, $t1, $t6
/* 2D918 8002CD18 000948C0 */  sll        $t1, $t1, 3
/* 2D91C 8002CD1C 3C0D8009 */  lui        $t5, %hi(D_8008FD2A)
/* 2D920 8002CD20 81ADFD2A */  lb         $t5, %lo(D_8008FD2A)($t5)
/* 2D924 8002CD24 012E4821 */  addu       $t1, $t1, $t6
/* 2D928 8002CD28 3C0A8009 */  lui        $t2, %hi(D_8008FD58)
/* 2D92C 8002CD2C 254AFD58 */  addiu      $t2, $t2, %lo(D_8008FD58)
/* 2D930 8002CD30 00094880 */  sll        $t1, $t1, 2
/* 2D934 8002CD34 012A5821 */  addu       $t3, $t1, $t2
/* 2D938 8002CD38 15CD0020 */  bne        $t6, $t5, .L8002CDBC
/* 2D93C 8002CD3C AFAB0028 */   sw        $t3, 0x28($sp)
/* 2D940 8002CD40 2419000A */  addiu      $t9, $zero, 0xA
/* 2D944 8002CD44 AFB90010 */  sw         $t9, 0x10($sp)
/* 2D948 8002CD48 24040002 */  addiu      $a0, $zero, 0x2
/* 2D94C 8002CD4C 2405006F */  addiu      $a1, $zero, 0x6F
/* 2D950 8002CD50 24060083 */  addiu      $a2, $zero, 0x83
/* 2D954 8002CD54 0C00AAD9 */  jal        func_8002AB64
/* 2D958 8002CD58 01C03825 */   or        $a3, $t6, $zero
/* 2D95C 8002CD5C 2418000D */  addiu      $t8, $zero, 0xD
/* 2D960 8002CD60 AFB80010 */  sw         $t8, 0x10($sp)
/* 2D964 8002CD64 24040036 */  addiu      $a0, $zero, 0x36
/* 2D968 8002CD68 24050053 */  addiu      $a1, $zero, 0x53
/* 2D96C 8002CD6C 24060082 */  addiu      $a2, $zero, 0x82
/* 2D970 8002CD70 0C00A6D6 */  jal        func_80029B58
/* 2D974 8002CD74 2407001C */   addiu     $a3, $zero, 0x1C
/* 2D978 8002CD78 240C000A */  addiu      $t4, $zero, 0xA
/* 2D97C 8002CD7C AFAC0010 */  sw         $t4, 0x10($sp)
/* 2D980 8002CD80 24040019 */  addiu      $a0, $zero, 0x19
/* 2D984 8002CD84 24050092 */  addiu      $a1, $zero, 0x92
/* 2D988 8002CD88 24060083 */  addiu      $a2, $zero, 0x83
/* 2D98C 8002CD8C 0C00A6D6 */  jal        func_80029B58
/* 2D990 8002CD90 24070008 */   addiu     $a3, $zero, 0x8
/* 2D994 8002CD94 240F000E */  addiu      $t7, $zero, 0xE
/* 2D998 8002CD98 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2D99C 8002CD9C 24040043 */  addiu      $a0, $zero, 0x43
/* 2D9A0 8002CDA0 240500D9 */  addiu      $a1, $zero, 0xD9
/* 2D9A4 8002CDA4 24060082 */  addiu      $a2, $zero, 0x82
/* 2D9A8 8002CDA8 0C00A6D6 */  jal        func_80029B58
/* 2D9AC 8002CDAC 2407001C */   addiu     $a3, $zero, 0x1C
/* 2D9B0 8002CDB0 2408000A */  addiu      $t0, $zero, 0xA
/* 2D9B4 8002CDB4 1000001F */  b          .L8002CE34
/* 2D9B8 8002CDB8 AFA80040 */   sw        $t0, 0x40($sp)
.L8002CDBC:
/* 2D9BC 8002CDBC 24090048 */  addiu      $t1, $zero, 0x48
/* 2D9C0 8002CDC0 AFA90010 */  sw         $t1, 0x10($sp)
/* 2D9C4 8002CDC4 24040002 */  addiu      $a0, $zero, 0x2
/* 2D9C8 8002CDC8 2405006F */  addiu      $a1, $zero, 0x6F
/* 2D9CC 8002CDCC 24060083 */  addiu      $a2, $zero, 0x83
/* 2D9D0 8002CDD0 0C00AAD9 */  jal        func_8002AB64
/* 2D9D4 8002CDD4 8FA70054 */   lw        $a3, 0x54($sp)
/* 2D9D8 8002CDD8 240A000D */  addiu      $t2, $zero, 0xD
/* 2D9DC 8002CDDC AFAA0010 */  sw         $t2, 0x10($sp)
/* 2D9E0 8002CDE0 24040045 */  addiu      $a0, $zero, 0x45
/* 2D9E4 8002CDE4 24050053 */  addiu      $a1, $zero, 0x53
/* 2D9E8 8002CDE8 24060082 */  addiu      $a2, $zero, 0x82
/* 2D9EC 8002CDEC 0C00A6D6 */  jal        func_80029B58
/* 2D9F0 8002CDF0 2407001C */   addiu     $a3, $zero, 0x1C
/* 2D9F4 8002CDF4 240B000A */  addiu      $t3, $zero, 0xA
/* 2D9F8 8002CDF8 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2D9FC 8002CDFC 24040052 */  addiu      $a0, $zero, 0x52
/* 2DA00 8002CE00 24050092 */  addiu      $a1, $zero, 0x92
/* 2DA04 8002CE04 24060083 */  addiu      $a2, $zero, 0x83
/* 2DA08 8002CE08 0C00A6D6 */  jal        func_80029B58
/* 2DA0C 8002CE0C 24070008 */   addiu     $a3, $zero, 0x8
/* 2DA10 8002CE10 240D000E */  addiu      $t5, $zero, 0xE
/* 2DA14 8002CE14 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2DA18 8002CE18 24040044 */  addiu      $a0, $zero, 0x44
/* 2DA1C 8002CE1C 240500D9 */  addiu      $a1, $zero, 0xD9
/* 2DA20 8002CE20 24060082 */  addiu      $a2, $zero, 0x82
/* 2DA24 8002CE24 0C00A6D6 */  jal        func_80029B58
/* 2DA28 8002CE28 2407001C */   addiu     $a3, $zero, 0x1C
/* 2DA2C 8002CE2C 240E0048 */  addiu      $t6, $zero, 0x48
/* 2DA30 8002CE30 AFAE0040 */  sw         $t6, 0x40($sp)
.L8002CE34:
/* 2DA34 8002CE34 8FB90028 */  lw         $t9, 0x28($sp)
/* 2DA38 8002CE38 2418000A */  addiu      $t8, $zero, 0xA
/* 2DA3C 8002CE3C 24040002 */  addiu      $a0, $zero, 0x2
/* 2DA40 8002CE40 93270024 */  lbu        $a3, 0x24($t9)
/* 2DA44 8002CE44 AFB80010 */  sw         $t8, 0x10($sp)
/* 2DA48 8002CE48 24050065 */  addiu      $a1, $zero, 0x65
/* 2DA4C 8002CE4C 0C00AAD9 */  jal        func_8002AB64
/* 2DA50 8002CE50 240600BA */   addiu     $a2, $zero, 0xBA
/* 2DA54 8002CE54 8FAC0028 */  lw         $t4, 0x28($sp)
/* 2DA58 8002CE58 240F000A */  addiu      $t7, $zero, 0xA
/* 2DA5C 8002CE5C 24040002 */  addiu      $a0, $zero, 0x2
/* 2DA60 8002CE60 91870025 */  lbu        $a3, 0x25($t4)
/* 2DA64 8002CE64 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2DA68 8002CE68 2405008A */  addiu      $a1, $zero, 0x8A
/* 2DA6C 8002CE6C 0C00AAD9 */  jal        func_8002AB64
/* 2DA70 8002CE70 240600BA */   addiu     $a2, $zero, 0xBA
/* 2DA74 8002CE74 8FA80028 */  lw         $t0, 0x28($sp)
/* 2DA78 8002CE78 2409000A */  addiu      $t1, $zero, 0xA
/* 2DA7C 8002CE7C 24040002 */  addiu      $a0, $zero, 0x2
/* 2DA80 8002CE80 91070026 */  lbu        $a3, 0x26($t0)
/* 2DA84 8002CE84 AFA90010 */  sw         $t1, 0x10($sp)
/* 2DA88 8002CE88 240500AF */  addiu      $a1, $zero, 0xAF
/* 2DA8C 8002CE8C 0C00AAD9 */  jal        func_8002AB64
/* 2DA90 8002CE90 240600BA */   addiu     $a2, $zero, 0xBA
/* 2DA94 8002CE94 8FAA0028 */  lw         $t2, 0x28($sp)
/* 2DA98 8002CE98 240B000A */  addiu      $t3, $zero, 0xA
/* 2DA9C 8002CE9C 24040002 */  addiu      $a0, $zero, 0x2
/* 2DAA0 8002CEA0 91470027 */  lbu        $a3, 0x27($t2)
/* 2DAA4 8002CEA4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 2DAA8 8002CEA8 240500D4 */  addiu      $a1, $zero, 0xD4
/* 2DAAC 8002CEAC 0C00AAD9 */  jal        func_8002AB64
/* 2DAB0 8002CEB0 240600BA */   addiu     $a2, $zero, 0xBA
/* 2DAB4 8002CEB4 8FA30028 */  lw         $v1, 0x28($sp)
/* 2DAB8 8002CEB8 8C6D003C */  lw         $t5, 0x3C($v1)
/* 2DABC 8002CEBC 25AEFFF1 */  addiu      $t6, $t5, -0xF
/* 2DAC0 8002CEC0 2DC10010 */  sltiu      $at, $t6, 0x10
/* 2DAC4 8002CEC4 10200043 */  beqz       $at, .L8002CFD4
/* 2DAC8 8002CEC8 000E7080 */   sll       $t6, $t6, 2
/* 2DACC 8002CECC 3C018007 */  lui        $at, %hi(jtbl_8007198C)
/* 2DAD0 8002CED0 002E0821 */  addu       $at, $at, $t6
/* 2DAD4 8002CED4 8C2E198C */  lw         $t6, %lo(jtbl_8007198C)($at)
/* 2DAD8 8002CED8 01C00008 */  jr         $t6
/* 2DADC 8002CEDC 00000000 */   nop
glabel .L8002CEE0
/* 2DAE0 8002CEE0 8C790040 */  lw         $t9, 0x40($v1)
/* 2DAE4 8002CEE4 24010005 */  addiu      $at, $zero, 0x5
/* 2DAE8 8002CEE8 17210003 */  bne        $t9, $at, .L8002CEF8
/* 2DAEC 8002CEEC 00000000 */   nop
/* 2DAF0 8002CEF0 10000038 */  b          .L8002CFD4
/* 2DAF4 8002CEF4 00008825 */   or        $s1, $zero, $zero
.L8002CEF8:
/* 2DAF8 8002CEF8 10000036 */  b          .L8002CFD4
/* 2DAFC 8002CEFC 24110010 */   addiu     $s1, $zero, 0x10
glabel .L8002CF00
/* 2DB00 8002CF00 8C780040 */  lw         $t8, 0x40($v1)
/* 2DB04 8002CF04 24010007 */  addiu      $at, $zero, 0x7
/* 2DB08 8002CF08 17010003 */  bne        $t8, $at, .L8002CF18
/* 2DB0C 8002CF0C 00000000 */   nop
/* 2DB10 8002CF10 10000030 */  b          .L8002CFD4
/* 2DB14 8002CF14 24110001 */   addiu     $s1, $zero, 0x1
.L8002CF18:
/* 2DB18 8002CF18 1000002E */  b          .L8002CFD4
/* 2DB1C 8002CF1C 24110002 */   addiu     $s1, $zero, 0x2
glabel .L8002CF20
/* 2DB20 8002CF20 1000002C */  b          .L8002CFD4
/* 2DB24 8002CF24 24110004 */   addiu     $s1, $zero, 0x4
glabel .L8002CF28
/* 2DB28 8002CF28 8C6C0040 */  lw         $t4, 0x40($v1)
/* 2DB2C 8002CF2C 24010006 */  addiu      $at, $zero, 0x6
/* 2DB30 8002CF30 15810003 */  bne        $t4, $at, .L8002CF40
/* 2DB34 8002CF34 00000000 */   nop
/* 2DB38 8002CF38 10000026 */  b          .L8002CFD4
/* 2DB3C 8002CF3C 24110003 */   addiu     $s1, $zero, 0x3
.L8002CF40:
/* 2DB40 8002CF40 10000024 */  b          .L8002CFD4
/* 2DB44 8002CF44 24110005 */   addiu     $s1, $zero, 0x5
glabel .L8002CF48
/* 2DB48 8002CF48 10000022 */  b          .L8002CFD4
/* 2DB4C 8002CF4C 24110006 */   addiu     $s1, $zero, 0x6
glabel .L8002CF50
/* 2DB50 8002CF50 8C6F0040 */  lw         $t7, 0x40($v1)
/* 2DB54 8002CF54 24010016 */  addiu      $at, $zero, 0x16
/* 2DB58 8002CF58 15E10003 */  bne        $t7, $at, .L8002CF68
/* 2DB5C 8002CF5C 00000000 */   nop
/* 2DB60 8002CF60 1000001C */  b          .L8002CFD4
/* 2DB64 8002CF64 24110007 */   addiu     $s1, $zero, 0x7
.L8002CF68:
/* 2DB68 8002CF68 1000001A */  b          .L8002CFD4
/* 2DB6C 8002CF6C 24110008 */   addiu     $s1, $zero, 0x8
glabel .L8002CF70
/* 2DB70 8002CF70 8C620040 */  lw         $v0, 0x40($v1)
/* 2DB74 8002CF74 24010008 */  addiu      $at, $zero, 0x8
/* 2DB78 8002CF78 10400009 */  beqz       $v0, .L8002CFA0
/* 2DB7C 8002CF7C 00000000 */   nop
/* 2DB80 8002CF80 10410009 */  beq        $v0, $at, .L8002CFA8
/* 2DB84 8002CF84 24010013 */   addiu     $at, $zero, 0x13
/* 2DB88 8002CF88 10410009 */  beq        $v0, $at, .L8002CFB0
/* 2DB8C 8002CF8C 24010016 */   addiu     $at, $zero, 0x16
/* 2DB90 8002CF90 10410009 */  beq        $v0, $at, .L8002CFB8
/* 2DB94 8002CF94 00000000 */   nop
/* 2DB98 8002CF98 1000000F */  b          .L8002CFD8
/* 2DB9C 8002CF9C 00114080 */   sll       $t0, $s1, 2
.L8002CFA0:
/* 2DBA0 8002CFA0 1000000C */  b          .L8002CFD4
/* 2DBA4 8002CFA4 24110009 */   addiu     $s1, $zero, 0x9
.L8002CFA8:
/* 2DBA8 8002CFA8 1000000A */  b          .L8002CFD4
/* 2DBAC 8002CFAC 2411000C */   addiu     $s1, $zero, 0xC
.L8002CFB0:
/* 2DBB0 8002CFB0 10000008 */  b          .L8002CFD4
/* 2DBB4 8002CFB4 2411000A */   addiu     $s1, $zero, 0xA
.L8002CFB8:
/* 2DBB8 8002CFB8 10000006 */  b          .L8002CFD4
/* 2DBBC 8002CFBC 2411000B */   addiu     $s1, $zero, 0xB
glabel .L8002CFC0
/* 2DBC0 8002CFC0 10000004 */  b          .L8002CFD4
/* 2DBC4 8002CFC4 2411000E */   addiu     $s1, $zero, 0xE
glabel .L8002CFC8
/* 2DBC8 8002CFC8 10000002 */  b          .L8002CFD4
/* 2DBCC 8002CFCC 2411000D */   addiu     $s1, $zero, 0xD
glabel .L8002CFD0
/* 2DBD0 8002CFD0 2411000F */  addiu      $s1, $zero, 0xF
glabel .L8002CFD4
/* 2DBD4 8002CFD4 00114080 */  sll        $t0, $s1, 2
.L8002CFD8:
/* 2DBD8 8002CFD8 3C068007 */  lui        $a2, %hi(D_8006AC00)
/* 2DBDC 8002CFDC 00C83021 */  addu       $a2, $a2, $t0
/* 2DBE0 8002CFE0 8CC6AC00 */  lw         $a2, %lo(D_8006AC00)($a2)
/* 2DBE4 8002CFE4 00008825 */  or         $s1, $zero, $zero
/* 2DBE8 8002CFE8 24040051 */  addiu      $a0, $zero, 0x51
/* 2DBEC 8002CFEC 0C00C3A8 */  jal        func_80030EA0
/* 2DBF0 8002CFF0 24050096 */   addiu     $a1, $zero, 0x96
/* 2DBF4 8002CFF4 0C00B7DB */  jal        func_8002DF6C
/* 2DBF8 8002CFF8 00000000 */   nop
/* 2DBFC 8002CFFC 8FA90028 */  lw         $t1, 0x28($sp)
/* 2DC00 8002D000 24040003 */  addiu      $a0, $zero, 0x3
/* 2DC04 8002D004 2405007E */  addiu      $a1, $zero, 0x7E
/* 2DC08 8002D008 95300038 */  lhu        $s0, 0x38($t1)
/* 2DC0C 8002D00C 24060083 */  addiu      $a2, $zero, 0x83
/* 2DC10 8002D010 8FAA0040 */  lw         $t2, 0x40($sp)
/* 2DC14 8002D014 2A01003C */  slti       $at, $s0, 0x3C
/* 2DC18 8002D018 54200006 */  bnel       $at, $zero, .L8002D034
/* 2DC1C 8002D01C 02203825 */   or        $a3, $s1, $zero
.L8002D020:
/* 2DC20 8002D020 2610FFC4 */  addiu      $s0, $s0, -0x3C
/* 2DC24 8002D024 2A01003C */  slti       $at, $s0, 0x3C
/* 2DC28 8002D028 1020FFFD */  beqz       $at, .L8002D020
/* 2DC2C 8002D02C 26310001 */   addiu     $s1, $s1, 0x1
/* 2DC30 8002D030 02203825 */  or         $a3, $s1, $zero
.L8002D034:
/* 2DC34 8002D034 0C00AAD9 */  jal        func_8002AB64
/* 2DC38 8002D038 AFAA0010 */   sw        $t2, 0x10($sp)
/* 2DC3C 8002D03C 8FAB0040 */  lw         $t3, 0x40($sp)
/* 2DC40 8002D040 24040002 */  addiu      $a0, $zero, 0x2
/* 2DC44 8002D044 2405009A */  addiu      $a1, $zero, 0x9A
/* 2DC48 8002D048 24060083 */  addiu      $a2, $zero, 0x83
/* 2DC4C 8002D04C 02003825 */  or         $a3, $s0, $zero
/* 2DC50 8002D050 0C00ABDC */  jal        func_8002AF70
/* 2DC54 8002D054 AFAB0010 */   sw        $t3, 0x10($sp)
/* 2DC58 8002D058 8FAD0028 */  lw         $t5, 0x28($sp)
/* 2DC5C 8002D05C 8FAE0040 */  lw         $t6, 0x40($sp)
/* 2DC60 8002D060 24040003 */  addiu      $a0, $zero, 0x3
/* 2DC64 8002D064 95A7003A */  lhu        $a3, 0x3A($t5)
/* 2DC68 8002D068 240500C0 */  addiu      $a1, $zero, 0xC0
/* 2DC6C 8002D06C 24060083 */  addiu      $a2, $zero, 0x83
/* 2DC70 8002D070 0C00AAD9 */  jal        func_8002AB64
/* 2DC74 8002D074 AFAE0010 */   sw        $t6, 0x10($sp)
/* 2DC78 8002D078 8FB90028 */  lw         $t9, 0x28($sp)
/* 2DC7C 8002D07C 24040003 */  addiu      $a0, $zero, 0x3
/* 2DC80 8002D080 24050070 */  addiu      $a1, $zero, 0x70
/* 2DC84 8002D084 240600A6 */  addiu      $a2, $zero, 0xA6
/* 2DC88 8002D088 0C00ACD9 */  jal        func_8002B364
/* 2DC8C 8002D08C 97270004 */   lhu       $a3, 0x4($t9)
/* 2DC90 8002D090 8FB80028 */  lw         $t8, 0x28($sp)
/* 2DC94 8002D094 24040003 */  addiu      $a0, $zero, 0x3
/* 2DC98 8002D098 240500C0 */  addiu      $a1, $zero, 0xC0
/* 2DC9C 8002D09C 240600A6 */  addiu      $a2, $zero, 0xA6
/* 2DCA0 8002D0A0 0C00ACD9 */  jal        func_8002B364
/* 2DCA4 8002D0A4 97070008 */   lhu       $a3, 0x8($t8)
/* 2DCA8 8002D0A8 10000004 */  b          .L8002D0BC
/* 2DCAC 8002D0AC 00000000 */   nop
.L8002D0B0:
/* 2DCB0 8002D0B0 2405007F */  addiu      $a1, $zero, 0x7F
/* 2DCB4 8002D0B4 0C00C3A8 */  jal        func_80030EA0
/* 2DCB8 8002D0B8 27A60034 */   addiu     $a2, $sp, 0x34
.L8002D0BC:
/* 2DCBC 8002D0BC 0C00B7DB */  jal        func_8002DF6C
/* 2DCC0 8002D0C0 00000000 */   nop
/* 2DCC4 8002D0C4 3C038009 */  lui        $v1, %hi(D_8008FD10)
/* 2DCC8 8002D0C8 8C63FD10 */  lw         $v1, %lo(D_8008FD10)($v1)
/* 2DCCC 8002D0CC 3C028009 */  lui        $v0, %hi(D_8008FD2A)
/* 2DCD0 8002D0D0 8042FD2A */  lb         $v0, %lo(D_8008FD2A)($v0)
/* 2DCD4 8002D0D4 00036083 */  sra        $t4, $v1, 2
/* 2DCD8 8002D0D8 318F000F */  andi       $t7, $t4, 0xF
/* 2DCDC 8002D0DC 3C018006 */  lui        $at, %hi(D_8005F0C0)
/* 2DCE0 8002D0E0 002F0821 */  addu       $at, $at, $t7
/* 2DCE4 8002D0E4 8023F0C0 */  lb         $v1, %lo(D_8005F0C0)($at)
/* 2DCE8 8002D0E8 28410002 */  slti       $at, $v0, 0x2
/* 2DCEC 8002D0EC 14200012 */  bnez       $at, .L8002D138
/* 2DCF0 8002D0F0 24040005 */   addiu     $a0, $zero, 0x5
/* 2DCF4 8002D0F4 24080007 */  addiu      $t0, $zero, 0x7
/* 2DCF8 8002D0F8 AFA80010 */  sw         $t0, 0x10($sp)
/* 2DCFC 8002D0FC 24050038 */  addiu      $a1, $zero, 0x38
/* 2DD00 8002D100 2406004D */  addiu      $a2, $zero, 0x4D
/* 2DD04 8002D104 24070007 */  addiu      $a3, $zero, 0x7
/* 2DD08 8002D108 0C00A6D6 */  jal        func_80029B58
/* 2DD0C 8002D10C AFA30050 */   sw        $v1, 0x50($sp)
/* 2DD10 8002D110 8FA60050 */  lw         $a2, 0x50($sp)
/* 2DD14 8002D114 24090010 */  addiu      $t1, $zero, 0x10
/* 2DD18 8002D118 AFA90010 */  sw         $t1, 0x10($sp)
/* 2DD1C 8002D11C 24040053 */  addiu      $a0, $zero, 0x53
/* 2DD20 8002D120 24050036 */  addiu      $a1, $zero, 0x36
/* 2DD24 8002D124 2407000C */  addiu      $a3, $zero, 0xC
/* 2DD28 8002D128 0C00A6D6 */  jal        func_80029B58
/* 2DD2C 8002D12C 24C6003F */   addiu     $a2, $a2, 0x3F
/* 2DD30 8002D130 1000001A */  b          .L8002D19C
/* 2DD34 8002D134 8FB9002C */   lw        $t9, 0x2C($sp)
.L8002D138:
/* 2DD38 8002D138 24010001 */  addiu      $at, $zero, 0x1
/* 2DD3C 8002D13C 14410016 */  bne        $v0, $at, .L8002D198
/* 2DD40 8002D140 AFA30050 */   sw        $v1, 0x50($sp)
/* 2DD44 8002D144 3C0A8009 */  lui        $t2, %hi(D_8008FD20)
/* 2DD48 8002D148 954AFD20 */  lhu        $t2, %lo(D_8008FD20)($t2)
/* 2DD4C 8002D14C AFA30050 */  sw         $v1, 0x50($sp)
/* 2DD50 8002D150 24040005 */  addiu      $a0, $zero, 0x5
/* 2DD54 8002D154 314B0020 */  andi       $t3, $t2, 0x20
/* 2DD58 8002D158 1560000F */  bnez       $t3, .L8002D198
/* 2DD5C 8002D15C 24050038 */   addiu     $a1, $zero, 0x38
/* 2DD60 8002D160 240D0007 */  addiu      $t5, $zero, 0x7
/* 2DD64 8002D164 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2DD68 8002D168 2406004D */  addiu      $a2, $zero, 0x4D
/* 2DD6C 8002D16C 24070007 */  addiu      $a3, $zero, 0x7
/* 2DD70 8002D170 0C00A6D6 */  jal        func_80029B58
/* 2DD74 8002D174 AFA30050 */   sw        $v1, 0x50($sp)
/* 2DD78 8002D178 8FA60050 */  lw         $a2, 0x50($sp)
/* 2DD7C 8002D17C 240E0010 */  addiu      $t6, $zero, 0x10
/* 2DD80 8002D180 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2DD84 8002D184 24040053 */  addiu      $a0, $zero, 0x53
/* 2DD88 8002D188 24050036 */  addiu      $a1, $zero, 0x36
/* 2DD8C 8002D18C 2407000C */  addiu      $a3, $zero, 0xC
/* 2DD90 8002D190 0C00A6D6 */  jal        func_80029B58
/* 2DD94 8002D194 24C6003F */   addiu     $a2, $a2, 0x3F
.L8002D198:
/* 2DD98 8002D198 8FB9002C */  lw         $t9, 0x2C($sp)
.L8002D19C:
/* 2DD9C 8002D19C 3C188009 */  lui        $t8, %hi(D_8008FD50)
/* 2DDA0 8002D1A0 2718FD50 */  addiu      $t8, $t8, %lo(D_8008FD50)
/* 2DDA4 8002D1A4 0338082B */  sltu       $at, $t9, $t8
/* 2DDA8 8002D1A8 10200016 */  beqz       $at, .L8002D204
/* 2DDAC 8002D1AC 8FA30050 */   lw        $v1, 0x50($sp)
/* 2DDB0 8002D1B0 832C0002 */  lb         $t4, 0x2($t9)
/* 2DDB4 8002D1B4 2401FFFF */  addiu      $at, $zero, -0x1
/* 2DDB8 8002D1B8 24040005 */  addiu      $a0, $zero, 0x5
/* 2DDBC 8002D1BC 11810011 */  beq        $t4, $at, .L8002D204
/* 2DDC0 8002D1C0 24050038 */   addiu     $a1, $zero, 0x38
/* 2DDC4 8002D1C4 240F0007 */  addiu      $t7, $zero, 0x7
/* 2DDC8 8002D1C8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 2DDCC 8002D1CC 240600A4 */  addiu      $a2, $zero, 0xA4
/* 2DDD0 8002D1D0 24070007 */  addiu      $a3, $zero, 0x7
/* 2DDD4 8002D1D4 0C00A6D6 */  jal        func_80029B58
/* 2DDD8 8002D1D8 AFA30050 */   sw        $v1, 0x50($sp)
/* 2DDDC 8002D1DC 8FA80050 */  lw         $t0, 0x50($sp)
/* 2DDE0 8002D1E0 240900AC */  addiu      $t1, $zero, 0xAC
/* 2DDE4 8002D1E4 240A000B */  addiu      $t2, $zero, 0xB
/* 2DDE8 8002D1E8 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2DDEC 8002D1EC 24040054 */  addiu      $a0, $zero, 0x54
/* 2DDF0 8002D1F0 24050036 */  addiu      $a1, $zero, 0x36
/* 2DDF4 8002D1F4 2407000E */  addiu      $a3, $zero, 0xE
/* 2DDF8 8002D1F8 0C00A6D6 */  jal        func_80029B58
/* 2DDFC 8002D1FC 01283023 */   subu      $a2, $t1, $t0
/* 2DE00 8002D200 8FA30050 */  lw         $v1, 0x50($sp)
.L8002D204:
/* 2DE04 8002D204 3C0B8009 */  lui        $t3, %hi(D_8008FD20)
/* 2DE08 8002D208 956BFD20 */  lhu        $t3, %lo(D_8008FD20)($t3)
/* 2DE0C 8002D20C 24040001 */  addiu      $a0, $zero, 0x1
/* 2DE10 8002D210 24650042 */  addiu      $a1, $v1, 0x42
/* 2DE14 8002D214 316D0020 */  andi       $t5, $t3, 0x20
/* 2DE18 8002D218 11A0000A */  beqz       $t5, .L8002D244
/* 2DE1C 8002D21C 24060037 */   addiu     $a2, $zero, 0x37
/* 2DE20 8002D220 240E000D */  addiu      $t6, $zero, 0xD
/* 2DE24 8002D224 AFAE0010 */  sw         $t6, 0x10($sp)
/* 2DE28 8002D228 24040001 */  addiu      $a0, $zero, 0x1
/* 2DE2C 8002D22C 24650042 */  addiu      $a1, $v1, 0x42
/* 2DE30 8002D230 24060080 */  addiu      $a2, $zero, 0x80
/* 2DE34 8002D234 0C00A6D6 */  jal        func_80029B58
/* 2DE38 8002D238 24070010 */   addiu     $a3, $zero, 0x10
/* 2DE3C 8002D23C 10000006 */  b          .L8002D258
/* 2DE40 8002D240 8FB90058 */   lw        $t9, 0x58($sp)
.L8002D244:
/* 2DE44 8002D244 2418000D */  addiu      $t8, $zero, 0xD
/* 2DE48 8002D248 AFB80010 */  sw         $t8, 0x10($sp)
/* 2DE4C 8002D24C 0C00A6D6 */  jal        func_80029B58
/* 2DE50 8002D250 24070010 */   addiu     $a3, $zero, 0x10
/* 2DE54 8002D254 8FB90058 */  lw         $t9, 0x58($sp)
.L8002D258:
/* 2DE58 8002D258 24010001 */  addiu      $at, $zero, 0x1
/* 2DE5C 8002D25C 3C028009 */  lui        $v0, %hi(D_80092872)
/* 2DE60 8002D260 532100D8 */  beql       $t9, $at, .L8002D5C4
/* 2DE64 8002D264 8FBF0024 */   lw        $ra, 0x24($sp)
/* 2DE68 8002D268 80422872 */  lb         $v0, %lo(D_80092872)($v0)
/* 2DE6C 8002D26C 3C108009 */  lui        $s0, %hi(D_8008FD2B)
/* 2DE70 8002D270 00008825 */  or         $s1, $zero, $zero
/* 2DE74 8002D274 2841FFEC */  slti       $at, $v0, -0x14
/* 2DE78 8002D278 10200034 */  beqz       $at, .L8002D34C
/* 2DE7C 8002D27C 2610FD2B */   addiu     $s0, $s0, %lo(D_8008FD2B)
/* 2DE80 8002D280 920C0000 */  lbu        $t4, 0x0($s0)
/* 2DE84 8002D284 00002025 */  or         $a0, $zero, $zero
/* 2DE88 8002D288 00002825 */  or         $a1, $zero, $zero
/* 2DE8C 8002D28C 55800027 */  bnel       $t4, $zero, .L8002D32C
/* 2DE90 8002D290 92080000 */   lbu       $t0, 0x0($s0)
/* 2DE94 8002D294 0C009A35 */  jal        func_800268D4
/* 2DE98 8002D298 240600FF */   addiu     $a2, $zero, 0xFF
/* 2DE9C 8002D29C 3C0F8009 */  lui        $t7, %hi(D_8008FD2A)
/* 2DEA0 8002D2A0 81EFFD2A */  lb         $t7, %lo(D_8008FD2A)($t7)
/* 2DEA4 8002D2A4 3C0B8009 */  lui        $t3, %hi(D_8008FD30)
/* 2DEA8 8002D2A8 3C018009 */  lui        $at, %hi(D_8008FD2A)
/* 2DEAC 8002D2AC 25E90001 */  addiu      $t1, $t7, 0x1
/* 2DEB0 8002D2B0 00091600 */  sll        $v0, $t1, 24
/* 2DEB4 8002D2B4 00024603 */  sra        $t0, $v0, 24
/* 2DEB8 8002D2B8 00085040 */  sll        $t2, $t0, 1
/* 2DEBC 8002D2BC 016A5821 */  addu       $t3, $t3, $t2
/* 2DEC0 8002D2C0 816BFD30 */  lb         $t3, %lo(D_8008FD30)($t3)
/* 2DEC4 8002D2C4 A029FD2A */  sb         $t1, %lo(D_8008FD2A)($at)
/* 2DEC8 8002D2C8 2401FFFF */  addiu      $at, $zero, -0x1
/* 2DECC 8002D2CC 15610005 */  bne        $t3, $at, .L8002D2E4
/* 2DED0 8002D2D0 3C078009 */   lui       $a3, %hi(D_8008FD20)
/* 2DED4 8002D2D4 250DFFFF */  addiu      $t5, $t0, -0x1
/* 2DED8 8002D2D8 3C018009 */  lui        $at, %hi(D_8008FD2A)
/* 2DEDC 8002D2DC A02DFD2A */  sb         $t5, %lo(D_8008FD2A)($at)
/* 2DEE0 8002D2E0 24110001 */  addiu      $s1, $zero, 0x1
.L8002D2E4:
/* 2DEE4 8002D2E4 24E7FD20 */  addiu      $a3, $a3, %lo(D_8008FD20)
/* 2DEE8 8002D2E8 94E30000 */  lhu        $v1, 0x0($a3)
/* 2DEEC 8002D2EC 306E0020 */  andi       $t6, $v1, 0x20
/* 2DEF0 8002D2F0 15C00005 */  bnez       $t6, .L8002D308
/* 2DEF4 8002D2F4 00000000 */   nop
/* 2DEF8 8002D2F8 16200003 */  bnez       $s1, .L8002D308
/* 2DEFC 8002D2FC 34780020 */   ori       $t8, $v1, 0x20
/* 2DF00 8002D300 10000009 */  b          .L8002D328
/* 2DF04 8002D304 A4F80000 */   sh        $t8, 0x0($a3)
.L8002D308:
/* 2DF08 8002D308 16200007 */  bnez       $s1, .L8002D328
/* 2DF0C 8002D30C 306CFFF8 */   andi      $t4, $v1, 0xFFF8
/* 2DF10 8002D310 A4EC0000 */  sh         $t4, 0x0($a3)
/* 2DF14 8002D314 358F0006 */  ori        $t7, $t4, 0x6
/* 2DF18 8002D318 A4EF0000 */  sh         $t7, 0x0($a3)
/* 2DF1C 8002D31C 24090004 */  addiu      $t1, $zero, 0x4
/* 2DF20 8002D320 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2DF24 8002D324 A029FD29 */  sb         $t1, %lo(D_8008FD29)($at)
.L8002D328:
/* 2DF28 8002D328 92080000 */  lbu        $t0, 0x0($s0)
.L8002D32C:
/* 2DF2C 8002D32C 3C078009 */  lui        $a3, %hi(D_8008FD20)
/* 2DF30 8002D330 24E7FD20 */  addiu      $a3, $a3, %lo(D_8008FD20)
/* 2DF34 8002D334 250B0001 */  addiu      $t3, $t0, 0x1
/* 2DF38 8002D338 A20B0000 */  sb         $t3, 0x0($s0)
/* 2DF3C 8002D33C 316D000F */  andi       $t5, $t3, 0xF
/* 2DF40 8002D340 2411FFF8 */  addiu      $s1, $zero, -0x8
/* 2DF44 8002D344 10000039 */  b          .L8002D42C
/* 2DF48 8002D348 A20D0000 */   sb        $t5, 0x0($s0)
.L8002D34C:
/* 2DF4C 8002D34C 28410015 */  slti       $at, $v0, 0x15
/* 2DF50 8002D350 14200030 */  bnez       $at, .L8002D414
/* 2DF54 8002D354 3C108009 */   lui       $s0, %hi(D_8008FD2B)
/* 2DF58 8002D358 2610FD2B */  addiu      $s0, $s0, %lo(D_8008FD2B)
/* 2DF5C 8002D35C 920E0000 */  lbu        $t6, 0x0($s0)
/* 2DF60 8002D360 00002025 */  or         $a0, $zero, $zero
/* 2DF64 8002D364 00002825 */  or         $a1, $zero, $zero
/* 2DF68 8002D368 55C00022 */  bnel       $t6, $zero, .L8002D3F4
/* 2DF6C 8002D36C 92180000 */   lbu       $t8, 0x0($s0)
/* 2DF70 8002D370 0C009A35 */  jal        func_800268D4
/* 2DF74 8002D374 240600FF */   addiu     $a2, $zero, 0xFF
/* 2DF78 8002D378 3C188009 */  lui        $t8, %hi(D_8008FD2A)
/* 2DF7C 8002D37C 8318FD2A */  lb         $t8, %lo(D_8008FD2A)($t8)
/* 2DF80 8002D380 3C018009 */  lui        $at, %hi(D_8008FD2A)
/* 2DF84 8002D384 3C038009 */  lui        $v1, %hi(D_8008FD20)
/* 2DF88 8002D388 2719FFFF */  addiu      $t9, $t8, -0x1
/* 2DF8C 8002D38C 00196600 */  sll        $t4, $t9, 24
/* 2DF90 8002D390 000C7E03 */  sra        $t7, $t4, 24
/* 2DF94 8002D394 05E10004 */  bgez       $t7, .L8002D3A8
/* 2DF98 8002D398 A039FD2A */   sb        $t9, %lo(D_8008FD2A)($at)
/* 2DF9C 8002D39C 3C018009 */  lui        $at, %hi(D_8008FD2A)
/* 2DFA0 8002D3A0 A020FD2A */  sb         $zero, %lo(D_8008FD2A)($at)
/* 2DFA4 8002D3A4 24110001 */  addiu      $s1, $zero, 0x1
.L8002D3A8:
/* 2DFA8 8002D3A8 9463FD20 */  lhu        $v1, %lo(D_8008FD20)($v1)
/* 2DFAC 8002D3AC 3C018009 */  lui        $at, %hi(D_8008FD20)
/* 2DFB0 8002D3B0 30690020 */  andi       $t1, $v1, 0x20
/* 2DFB4 8002D3B4 11200003 */  beqz       $t1, .L8002D3C4
/* 2DFB8 8002D3B8 3068FFDF */   andi      $t0, $v1, 0xFFDF
/* 2DFBC 8002D3BC 1000000C */  b          .L8002D3F0
/* 2DFC0 8002D3C0 A428FD20 */   sh        $t0, %lo(D_8008FD20)($at)
.L8002D3C4:
/* 2DFC4 8002D3C4 1620000A */  bnez       $s1, .L8002D3F0
/* 2DFC8 8002D3C8 306AFFF8 */   andi      $t2, $v1, 0xFFF8
/* 2DFCC 8002D3CC 3C018009 */  lui        $at, %hi(D_8008FD20)
/* 2DFD0 8002D3D0 A42AFD20 */  sh         $t2, %lo(D_8008FD20)($at)
/* 2DFD4 8002D3D4 3C0B8009 */  lui        $t3, %hi(D_8008FD20)
/* 2DFD8 8002D3D8 956BFD20 */  lhu        $t3, %lo(D_8008FD20)($t3)
/* 2DFDC 8002D3DC 240E0004 */  addiu      $t6, $zero, 0x4
/* 2DFE0 8002D3E0 356D0006 */  ori        $t5, $t3, 0x6
/* 2DFE4 8002D3E4 A42DFD20 */  sh         $t5, %lo(D_8008FD20)($at)
/* 2DFE8 8002D3E8 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2DFEC 8002D3EC A02EFD29 */  sb         $t6, %lo(D_8008FD29)($at)
.L8002D3F0:
/* 2DFF0 8002D3F0 92180000 */  lbu        $t8, 0x0($s0)
.L8002D3F4:
/* 2DFF4 8002D3F4 3C078009 */  lui        $a3, %hi(D_8008FD20)
/* 2DFF8 8002D3F8 2411FFF8 */  addiu      $s1, $zero, -0x8
/* 2DFFC 8002D3FC 270C0001 */  addiu      $t4, $t8, 0x1
/* 2E000 8002D400 A20C0000 */  sb         $t4, 0x0($s0)
/* 2E004 8002D404 318F000F */  andi       $t7, $t4, 0xF
/* 2E008 8002D408 A20F0000 */  sb         $t7, 0x0($s0)
/* 2E00C 8002D40C 10000007 */  b          .L8002D42C
/* 2E010 8002D410 24E7FD20 */   addiu     $a3, $a3, %lo(D_8008FD20)
.L8002D414:
/* 2E014 8002D414 3C108009 */  lui        $s0, %hi(D_8008FD2B)
/* 2E018 8002D418 2610FD2B */  addiu      $s0, $s0, %lo(D_8008FD2B)
/* 2E01C 8002D41C 3C078009 */  lui        $a3, %hi(D_8008FD20)
/* 2E020 8002D420 24E7FD20 */  addiu      $a3, $a3, %lo(D_8008FD20)
/* 2E024 8002D424 A2000000 */  sb         $zero, 0x0($s0)
/* 2E028 8002D428 2411FFF8 */  addiu      $s1, $zero, -0x8
.L8002D42C:
/* 2E02C 8002D42C 3C028009 */  lui        $v0, %hi(D_80092876)
/* 2E030 8002D430 94422876 */  lhu        $v0, %lo(D_80092876)($v0)
/* 2E034 8002D434 30498000 */  andi       $t1, $v0, 0x8000
/* 2E038 8002D438 11200050 */  beqz       $t1, .L8002D57C
/* 2E03C 8002D43C 3C088009 */   lui       $t0, %hi(D_8008FD0C)
/* 2E040 8002D440 9508FD0C */  lhu        $t0, %lo(D_8008FD0C)($t0)
/* 2E044 8002D444 00002025 */  or         $a0, $zero, $zero
/* 2E048 8002D448 24050001 */  addiu      $a1, $zero, 0x1
/* 2E04C 8002D44C 310A000C */  andi       $t2, $t0, 0xC
/* 2E050 8002D450 AFAA0054 */  sw         $t2, 0x54($sp)
/* 2E054 8002D454 0C009A35 */  jal        func_800268D4
/* 2E058 8002D458 240600FF */   addiu     $a2, $zero, 0xFF
/* 2E05C 8002D45C 8FAB0054 */  lw         $t3, 0x54($sp)
/* 2E060 8002D460 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2E064 8002D464 2442FD20 */  addiu      $v0, $v0, %lo(D_8008FD20)
/* 2E068 8002D468 11600007 */  beqz       $t3, .L8002D488
/* 2E06C 8002D46C 24010004 */   addiu     $at, $zero, 0x4
/* 2E070 8002D470 1161001E */  beq        $t3, $at, .L8002D4EC
/* 2E074 8002D474 24010008 */   addiu     $at, $zero, 0x8
/* 2E078 8002D478 1161000F */  beq        $t3, $at, .L8002D4B8
/* 2E07C 8002D47C 3C028009 */   lui       $v0, %hi(D_8008FD20)
/* 2E080 8002D480 10000050 */  b          .L8002D5C4
/* 2E084 8002D484 8FBF0024 */   lw        $ra, 0x24($sp)
.L8002D488:
/* 2E088 8002D488 944D0000 */  lhu        $t5, 0x0($v0)
/* 2E08C 8002D48C 24180001 */  addiu      $t8, $zero, 0x1
/* 2E090 8002D490 3C018009 */  lui        $at, %hi(D_8008FD23)
/* 2E094 8002D494 35AE2000 */  ori        $t6, $t5, 0x2000
/* 2E098 8002D498 A44E0000 */  sh         $t6, 0x0($v0)
/* 2E09C 8002D49C A038FD23 */  sb         $t8, %lo(D_8008FD23)($at)
/* 2E0A0 8002D4A0 94590000 */  lhu        $t9, 0x0($v0)
/* 2E0A4 8002D4A4 03317824 */  and        $t7, $t9, $s1
/* 2E0A8 8002D4A8 A44F0000 */  sh         $t7, 0x0($v0)
/* 2E0AC 8002D4AC 35E90002 */  ori        $t1, $t7, 0x2
/* 2E0B0 8002D4B0 10000043 */  b          .L8002D5C0
/* 2E0B4 8002D4B4 A4490000 */   sh        $t1, 0x0($v0)
.L8002D4B8:
/* 2E0B8 8002D4B8 24080005 */  addiu      $t0, $zero, 0x5
/* 2E0BC 8002D4BC 3C018009 */  lui        $at, %hi(D_8008FD22)
/* 2E0C0 8002D4C0 A028FD22 */  sb         $t0, %lo(D_8008FD22)($at)
/* 2E0C4 8002D4C4 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E0C8 8002D4C8 240A000A */  addiu      $t2, $zero, 0xA
/* 2E0CC 8002D4CC 2442FD20 */  addiu      $v0, $v0, %lo(D_8008FD20)
/* 2E0D0 8002D4D0 A02AFD29 */  sb         $t2, %lo(D_8008FD29)($at)
/* 2E0D4 8002D4D4 944B0000 */  lhu        $t3, 0x0($v0)
/* 2E0D8 8002D4D8 01717024 */  and        $t6, $t3, $s1
/* 2E0DC 8002D4DC A44E0000 */  sh         $t6, 0x0($v0)
/* 2E0E0 8002D4E0 35D80005 */  ori        $t8, $t6, 0x5
/* 2E0E4 8002D4E4 10000036 */  b          .L8002D5C0
/* 2E0E8 8002D4E8 A4580000 */   sh        $t8, 0x0($v0)
.L8002D4EC:
/* 2E0EC 8002D4EC 3C198009 */  lui        $t9, %hi(D_8008FD2A)
/* 2E0F0 8002D4F0 8339FD2A */  lb         $t9, %lo(D_8008FD2A)($t9)
/* 2E0F4 8002D4F4 3C0F8009 */  lui        $t7, %hi(D_8008FD30)
/* 2E0F8 8002D4F8 2401FFFE */  addiu      $at, $zero, -0x2
/* 2E0FC 8002D4FC 00196040 */  sll        $t4, $t9, 1
/* 2E100 8002D500 01EC7821 */  addu       $t7, $t7, $t4
/* 2E104 8002D504 81EFFD30 */  lb         $t7, %lo(D_8008FD30)($t7)
/* 2E108 8002D508 15E1000E */  bne        $t7, $at, .L8002D544
/* 2E10C 8002D50C 3C028009 */   lui       $v0, %hi(D_8008FD20)
/* 2E110 8002D510 2442FD20 */  addiu      $v0, $v0, %lo(D_8008FD20)
/* 2E114 8002D514 94490000 */  lhu        $t1, 0x0($v0)
/* 2E118 8002D518 240A0002 */  addiu      $t2, $zero, 0x2
/* 2E11C 8002D51C 3C018009 */  lui        $at, %hi(D_8008FD23)
/* 2E120 8002D520 35282000 */  ori        $t0, $t1, 0x2000
/* 2E124 8002D524 A4480000 */  sh         $t0, 0x0($v0)
/* 2E128 8002D528 A02AFD23 */  sb         $t2, %lo(D_8008FD23)($at)
/* 2E12C 8002D52C 944B0000 */  lhu        $t3, 0x0($v0)
/* 2E130 8002D530 01717024 */  and        $t6, $t3, $s1
/* 2E134 8002D534 A44E0000 */  sh         $t6, 0x0($v0)
/* 2E138 8002D538 35D80003 */  ori        $t8, $t6, 0x3
/* 2E13C 8002D53C 10000020 */  b          .L8002D5C0
/* 2E140 8002D540 A4580000 */   sh        $t8, 0x0($v0)
.L8002D544:
/* 2E144 8002D544 24190004 */  addiu      $t9, $zero, 0x4
/* 2E148 8002D548 3C018009 */  lui        $at, %hi(D_8008FD22)
/* 2E14C 8002D54C A039FD22 */  sb         $t9, %lo(D_8008FD22)($at)
/* 2E150 8002D550 3C028009 */  lui        $v0, %hi(D_8008FD20)
/* 2E154 8002D554 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E158 8002D558 240C000A */  addiu      $t4, $zero, 0xA
/* 2E15C 8002D55C 2442FD20 */  addiu      $v0, $v0, %lo(D_8008FD20)
/* 2E160 8002D560 A02CFD29 */  sb         $t4, %lo(D_8008FD29)($at)
/* 2E164 8002D564 944F0000 */  lhu        $t7, 0x0($v0)
/* 2E168 8002D568 01F14024 */  and        $t0, $t7, $s1
/* 2E16C 8002D56C A4480000 */  sh         $t0, 0x0($v0)
/* 2E170 8002D570 350A0005 */  ori        $t2, $t0, 0x5
/* 2E174 8002D574 10000012 */  b          .L8002D5C0
/* 2E178 8002D578 A44A0000 */   sh        $t2, 0x0($v0)
.L8002D57C:
/* 2E17C 8002D57C 304B5000 */  andi       $t3, $v0, 0x5000
/* 2E180 8002D580 1160000F */  beqz       $t3, .L8002D5C0
/* 2E184 8002D584 240D0007 */   addiu     $t5, $zero, 0x7
/* 2E188 8002D588 3C018009 */  lui        $at, %hi(D_8008FD22)
/* 2E18C 8002D58C A02DFD22 */  sb         $t5, %lo(D_8008FD22)($at)
/* 2E190 8002D590 3C018009 */  lui        $at, %hi(D_8008FD29)
/* 2E194 8002D594 240E000A */  addiu      $t6, $zero, 0xA
/* 2E198 8002D598 A02EFD29 */  sb         $t6, %lo(D_8008FD29)($at)
/* 2E19C 8002D59C 94F80000 */  lhu        $t8, 0x0($a3)
/* 2E1A0 8002D5A0 00002025 */  or         $a0, $zero, $zero
/* 2E1A4 8002D5A4 24050002 */  addiu      $a1, $zero, 0x2
/* 2E1A8 8002D5A8 03116024 */  and        $t4, $t8, $s1
/* 2E1AC 8002D5AC A4EC0000 */  sh         $t4, 0x0($a3)
/* 2E1B0 8002D5B0 358F0005 */  ori        $t7, $t4, 0x5
/* 2E1B4 8002D5B4 A4EF0000 */  sh         $t7, 0x0($a3)
/* 2E1B8 8002D5B8 0C009A35 */  jal        func_800268D4
/* 2E1BC 8002D5BC 240600FF */   addiu     $a2, $zero, 0xFF
.L8002D5C0:
/* 2E1C0 8002D5C0 8FBF0024 */  lw         $ra, 0x24($sp)
.L8002D5C4:
/* 2E1C4 8002D5C4 8FB0001C */  lw         $s0, 0x1C($sp)
/* 2E1C8 8002D5C8 8FB10020 */  lw         $s1, 0x20($sp)
/* 2E1CC 8002D5CC 03E00008 */  jr         $ra
/* 2E1D0 8002D5D0 27BD0058 */   addiu     $sp, $sp, 0x58
