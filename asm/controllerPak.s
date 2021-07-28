.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel init_controllers
/* 31F00 80031300 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 31F04 80031304 AFBF001C */  sw         $ra, 0x1c($sp)
/* 31F08 80031308 AFB00018 */  sw         $s0, 0x18($sp)
/* 31F0C 8003130C 3C018009 */  lui        $at, %hi(ButtonCompliment)
/* 31F10 80031310 3C028009 */  lui        $v0, %hi(D_80092A38)
/* 31F14 80031314 3C048009 */  lui        $a0, %hi(contInitBitpattern)
/* 31F18 80031318 00006025 */  or         $t4, $zero, $zero
/* 31F1C 8003131C A4202878 */  sh         $zero, %lo(ButtonCompliment)($at)
/* 31F20 80031320 24842A88 */  addiu      $a0, $a0, %lo(contInitBitpattern)
/* 31F24 80031324 24422A38 */  addiu      $v0, $v0, %lo(D_80092A38)
/* 31F28 80031328 2403FF80 */  addiu      $v1, $zero, -0x80
.L8003132C:
/* 31F2C 8003132C 24420014 */  addiu      $v0, $v0, 0x14
/* 31F30 80031330 0044082B */  sltu       $at, $v0, $a0
/* 31F34 80031334 1420FFFD */  bnez       $at, .L8003132C
/* 31F38 80031338 A043FFFE */   sb        $v1, -2($v0)
/* 31F3C 8003133C 3C028009 */  lui        $v0, %hi(ControllerInput)
/* 31F40 80031340 3C038009 */  lui        $v1, %hi(D_80092AC0)
/* 31F44 80031344 24632AC0 */  addiu      $v1, $v1, %lo(D_80092AC0)
/* 31F48 80031348 24422AA8 */  addiu      $v0, $v0, %lo(ControllerInput)
.L8003134C:
/* 31F4C 8003134C 24420006 */  addiu      $v0, $v0, 6
/* 31F50 80031350 0043082B */  sltu       $at, $v0, $v1
/* 31F54 80031354 A440FFFA */  sh         $zero, -6($v0)
/* 31F58 80031358 A040FFFC */  sb         $zero, -4($v0)
/* 31F5C 8003135C 1420FFFB */  bnez       $at, .L8003134C
/* 31F60 80031360 A040FFFD */   sb        $zero, -3($v0)
/* 31F64 80031364 3C108009 */  lui        $s0, %hi(D_80092AA0)
/* 31F68 80031368 26102AA0 */  addiu      $s0, $s0, %lo(D_80092AA0)
/* 31F6C 8003136C 3C048009 */  lui        $a0, %hi(cont_mesgq)
/* 31F70 80031370 24842880 */  addiu      $a0, $a0, %lo(cont_mesgq)
/* 31F74 80031374 02002825 */  or         $a1, $s0, $zero
/* 31F78 80031378 24060001 */  addiu      $a2, $zero, 1
/* 31F7C 8003137C 0C00CFC4 */  jal        osCreateMesgQueue
/* 31F80 80031380 AFAC0024 */   sw        $t4, 0x24($sp)
/* 31F84 80031384 3C058009 */  lui        $a1, %hi(cont_mesgq)
/* 31F88 80031388 24A52880 */  addiu      $a1, $a1, %lo(cont_mesgq)
/* 31F8C 8003138C 24040005 */  addiu      $a0, $zero, 5
/* 31F90 80031390 0C00CFEC */  jal        osSetEventMesg
/* 31F94 80031394 02003025 */   or        $a2, $s0, $zero
/* 31F98 80031398 3C108009 */  lui        $s0, %hi(D_80092A90)
/* 31F9C 8003139C 26102A90 */  addiu      $s0, $s0, %lo(D_80092A90)
/* 31FA0 800313A0 3C048009 */  lui        $a0, %hi(cont_mesgq)
/* 31FA4 800313A4 3C058009 */  lui        $a1, %hi(contInitBitpattern)
/* 31FA8 800313A8 24A52A88 */  addiu      $a1, $a1, %lo(contInitBitpattern)
/* 31FAC 800313AC 24842880 */  addiu      $a0, $a0, %lo(cont_mesgq)
/* 31FB0 800313B0 0C00E9F8 */  jal        osContInit
/* 31FB4 800313B4 02003025 */   or        $a2, $s0, $zero
/* 31FB8 800313B8 0C00EAE8 */  jal        osContSetCh
/* 31FBC 800313BC 24040004 */   addiu     $a0, $zero, 4
/* 31FC0 800313C0 3C058009 */  lui        $a1, %hi(controller_no)
/* 31FC4 800313C4 24A52870 */  addiu      $a1, $a1, %lo(controller_no)
/* 31FC8 800313C8 2407FFFF */  addiu      $a3, $zero, -1
/* 31FCC 800313CC A0A70000 */  sb         $a3, ($a1)
/* 31FD0 800313D0 3C028009 */  lui        $v0, %hi(D_80092A38)
/* 31FD4 800313D4 3C088009 */  lui        $t0, %hi(contInitBitpattern)
/* 31FD8 800313D8 8FAC0024 */  lw         $t4, 0x24($sp)
/* 31FDC 800313DC 00003025 */  or         $a2, $zero, $zero
/* 31FE0 800313E0 91082A88 */  lbu        $t0, %lo(contInitBitpattern)($t0)
/* 31FE4 800313E4 24422A38 */  addiu      $v0, $v0, %lo(D_80092A38)
/* 31FE8 800313E8 00002025 */  or         $a0, $zero, $zero
/* 31FEC 800313EC 240BFFFD */  addiu      $t3, $zero, -3
/* 31FF0 800313F0 240AFFFE */  addiu      $t2, $zero, -2
/* 31FF4 800313F4 24090004 */  addiu      $t1, $zero, 4
.L800313F8:
/* 31FF8 800313F8 240E0001 */  addiu      $t6, $zero, 1
/* 31FFC 800313FC 008E7804 */  sllv       $t7, $t6, $a0
/* 32000 80031400 010FC024 */  and        $t8, $t0, $t7
/* 32004 80031404 13000022 */  beqz       $t8, .L80031490
/* 32008 80031408 0004C880 */   sll       $t9, $a0, 2
/* 3200C 8003140C 02191821 */  addu       $v1, $s0, $t9
/* 32010 80031410 906D0003 */  lbu        $t5, 3($v1)
/* 32014 80031414 31AE0004 */  andi       $t6, $t5, 4
/* 32018 80031418 51C00004 */  beql       $t6, $zero, .L8003142C
/* 3201C 8003141C 946F0000 */   lhu       $t7, ($v1)
/* 32020 80031420 1000001C */  b          .L80031494
/* 32024 80031424 A0470012 */   sb        $a3, 0x12($v0)
/* 32028 80031428 946F0000 */  lhu        $t7, ($v1)
.L8003142C:
/* 3202C 8003142C 31F80002 */  andi       $t8, $t7, 2
/* 32030 80031430 53000004 */  beql       $t8, $zero, .L80031444
/* 32034 80031434 80B90000 */   lb        $t9, ($a1)
/* 32038 80031438 10000016 */  b          .L80031494
/* 3203C 8003143C A04A0012 */   sb        $t2, 0x12($v0)
/* 32040 80031440 80B90000 */  lb         $t9, ($a1)
.L80031444:
/* 32044 80031444 A0400012 */  sb         $zero, 0x12($v0)
/* 32048 80031448 24C60001 */  addiu      $a2, $a2, 1
/* 3204C 8003144C 54F90003 */  bnel       $a3, $t9, .L8003145C
/* 32050 80031450 906D0002 */   lbu       $t5, 2($v1)
/* 32054 80031454 A0A40000 */  sb         $a0, ($a1)
/* 32058 80031458 906D0002 */  lbu        $t5, 2($v1)
.L8003145C:
/* 3205C 8003145C 31AE0001 */  andi       $t6, $t5, 1
/* 32060 80031460 51C00006 */  beql       $t6, $zero, .L8003147C
/* 32064 80031464 80B90000 */   lb        $t9, ($a1)
/* 32068 80031468 844F0000 */  lh         $t7, ($v0)
/* 3206C 8003146C 35F88000 */  ori        $t8, $t7, 0x8000
/* 32070 80031470 10000008 */  b          .L80031494
/* 32074 80031474 A4580000 */   sh        $t8, ($v0)
/* 32078 80031478 80B90000 */  lb         $t9, ($a1)
.L8003147C:
/* 3207C 8003147C A4400000 */  sh         $zero, ($v0)
/* 32080 80031480 54990005 */  bnel       $a0, $t9, .L80031498
/* 32084 80031484 24840001 */   addiu     $a0, $a0, 1
/* 32088 80031488 10000002 */  b          .L80031494
/* 3208C 8003148C 240C0001 */   addiu     $t4, $zero, 1
.L80031490:
/* 32090 80031490 A04B0012 */  sb         $t3, 0x12($v0)
.L80031494:
/* 32094 80031494 24840001 */  addiu      $a0, $a0, 1
.L80031498:
/* 32098 80031498 1489FFD7 */  bne        $a0, $t1, .L800313F8
/* 3209C 8003149C 24420014 */   addiu     $v0, $v0, 0x14
/* 320A0 800314A0 14C00003 */  bnez       $a2, .L800314B0
/* 320A4 800314A4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 320A8 800314A8 10000002 */  b          .L800314B4
/* 320AC 800314AC 2402FFFF */   addiu     $v0, $zero, -1
.L800314B0:
/* 320B0 800314B0 01801025 */  or         $v0, $t4, $zero
.L800314B4:
/* 320B4 800314B4 8FB00018 */  lw         $s0, 0x18($sp)
/* 320B8 800314B8 03E00008 */  jr         $ra
/* 320BC 800314BC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel getControllerInput
/* 320C0 800314C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 320C4 800314C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 320C8 800314C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 320CC 800314CC 0C00EAE8 */  jal        osContSetCh
/* 320D0 800314D0 24040004 */   addiu     $a0, $zero, 4
/* 320D4 800314D4 3C048009 */  lui        $a0, %hi(cont_mesgq)
/* 320D8 800314D8 0C00EB04 */  jal        osContStartReadData
/* 320DC 800314DC 24842880 */   addiu     $a0, $a0, %lo(cont_mesgq)
/* 320E0 800314E0 3C048009 */  lui        $a0, %hi(cont_mesgq)
/* 320E4 800314E4 24842880 */  addiu      $a0, $a0, %lo(cont_mesgq)
/* 320E8 800314E8 00002825 */  or         $a1, $zero, $zero
/* 320EC 800314EC 0C00D008 */  jal        osRecvMesg
/* 320F0 800314F0 24060001 */   addiu     $a2, $zero, 1
/* 320F4 800314F4 2401FFFF */  addiu      $at, $zero, -1
/* 320F8 800314F8 10410003 */  beq        $v0, $at, .L80031508
/* 320FC 800314FC 3C048009 */   lui       $a0, %hi(ControllerInput)
/* 32100 80031500 0C00EB27 */  jal        osContGetReadData
/* 32104 80031504 24842AA8 */   addiu     $a0, $a0, %lo(ControllerInput)
.L80031508:
/* 32108 80031508 8FAE0018 */  lw         $t6, 0x18($sp)
/* 3210C 8003150C 3C188009 */  lui        $t8, %hi(ControllerInput)
/* 32110 80031510 27182AA8 */  addiu      $t8, $t8, %lo(ControllerInput)
/* 32114 80031514 000E7880 */  sll        $t7, $t6, 2
/* 32118 80031518 01EE7823 */  subu       $t7, $t7, $t6
/* 3211C 8003151C 000F7840 */  sll        $t7, $t7, 1
/* 32120 80031520 01F81021 */  addu       $v0, $t7, $t8
/* 32124 80031524 94430000 */  lhu        $v1, ($v0)
/* 32128 80031528 3C018009 */  lui        $at, %hi(buttonPressed)
/* 3212C 8003152C 3C058009 */  lui        $a1, %hi(ButtonCompliment)
/* 32130 80031530 A4232874 */  sh         $v1, %lo(buttonPressed)($at)
/* 32134 80031534 80590002 */  lb         $t9, 2($v0)
/* 32138 80031538 3C018009 */  lui        $at, %hi(JoystickX)
/* 3213C 8003153C 24A52878 */  addiu      $a1, $a1, %lo(ButtonCompliment)
/* 32140 80031540 A0392871 */  sb         $t9, %lo(JoystickX)($at)
/* 32144 80031544 80480003 */  lb         $t0, 3($v0)
/* 32148 80031548 3C018009 */  lui        $at, %hi(JoystickY)
/* 3214C 8003154C 00605827 */  not        $t3, $v1
/* 32150 80031550 A0282872 */  sb         $t0, %lo(JoystickY)($at)
/* 32154 80031554 94A90000 */  lhu        $t1, ($a1)
/* 32158 80031558 3C018009 */  lui        $at, %hi(pressedButton)
/* 3215C 8003155C 00695024 */  and        $t2, $v1, $t1
/* 32160 80031560 A42A2876 */  sh         $t2, %lo(pressedButton)($at)
/* 32164 80031564 A4AB0000 */  sh         $t3, ($a1)
/* 32168 80031568 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3216C 8003156C 03E00008 */  jr         $ra
/* 32170 80031570 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80031574
/* 32174 80031574 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 32178 80031578 AFB20020 */  sw         $s2, 0x20($sp)
/* 3217C 8003157C 00809025 */  or         $s2, $a0, $zero
/* 32180 80031580 AFBF003C */  sw         $ra, 0x3c($sp)
/* 32184 80031584 AFBE0038 */  sw         $fp, 0x38($sp)
/* 32188 80031588 AFB70034 */  sw         $s7, 0x34($sp)
/* 3218C 8003158C AFB60030 */  sw         $s6, 0x30($sp)
/* 32190 80031590 AFB5002C */  sw         $s5, 0x2c($sp)
/* 32194 80031594 AFB40028 */  sw         $s4, 0x28($sp)
/* 32198 80031598 AFB30024 */  sw         $s3, 0x24($sp)
/* 3219C 8003159C AFB1001C */  sw         $s1, 0x1c($sp)
/* 321A0 800315A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 321A4 800315A4 00127080 */  sll        $t6, $s2, 2
/* 321A8 800315A8 01D27021 */  addu       $t6, $t6, $s2
/* 321AC 800315AC 3C0F8009 */  lui        $t7, %hi(D_80092A38)
/* 321B0 800315B0 0012C880 */  sll        $t9, $s2, 2
/* 321B4 800315B4 25EF2A38 */  addiu      $t7, $t7, %lo(D_80092A38)
/* 321B8 800315B8 000E7080 */  sll        $t6, $t6, 2
/* 321BC 800315BC 0332C821 */  addu       $t9, $t9, $s2
/* 321C0 800315C0 3C088009 */  lui        $t0, %hi(D_80092A38)
/* 321C4 800315C4 01CF8821 */  addu       $s1, $t6, $t7
/* 321C8 800315C8 25082A38 */  addiu      $t0, $t0, %lo(D_80092A38)
/* 321CC 800315CC 0019C880 */  sll        $t9, $t9, 2
/* 321D0 800315D0 241800FF */  addiu      $t8, $zero, 0xff
/* 321D4 800315D4 03288021 */  addu       $s0, $t9, $t0
/* 321D8 800315D8 0000A025 */  or         $s4, $zero, $zero
/* 321DC 800315DC 0000B025 */  or         $s6, $zero, $zero
/* 321E0 800315E0 A2380013 */  sb         $t8, 0x13($s1)
/* 321E4 800315E4 A6200000 */  sh         $zero, ($s1)
/* 321E8 800315E8 02001025 */  or         $v0, $s0, $zero
/* 321EC 800315EC 00002825 */  or         $a1, $zero, $zero
/* 321F0 800315F0 2413FFFF */  addiu      $s3, $zero, -1
.L800315F4:
/* 321F4 800315F4 24A50001 */  addiu      $a1, $a1, 1
/* 321F8 800315F8 28A10010 */  slti       $at, $a1, 0x10
/* 321FC 800315FC 24420001 */  addiu      $v0, $v0, 1
/* 32200 80031600 1420FFFC */  bnez       $at, .L800315F4
/* 32204 80031604 A0530001 */   sb        $s3, 1($v0)
/* 32208 80031608 00124880 */  sll        $t1, $s2, 2
/* 3220C 8003160C 01324823 */  subu       $t1, $t1, $s2
/* 32210 80031610 00094880 */  sll        $t1, $t1, 2
/* 32214 80031614 01324821 */  addu       $t1, $t1, $s2
/* 32218 80031618 3C0A8009 */  lui        $t2, %hi(pfs_dat)
/* 3221C 8003161C AFA5008C */  sw         $a1, 0x8c($sp)
/* 32220 80031620 3C178009 */  lui        $s7, %hi(cont_mesgq)
/* 32224 80031624 254A2898 */  addiu      $t2, $t2, %lo(pfs_dat)
/* 32228 80031628 000948C0 */  sll        $t1, $t1, 3
/* 3222C 8003162C 26F72880 */  addiu      $s7, $s7, %lo(cont_mesgq)
/* 32230 80031630 012A2821 */  addu       $a1, $t1, $t2
/* 32234 80031634 AFA50040 */  sw         $a1, 0x40($sp)
/* 32238 80031638 02E02025 */  or         $a0, $s7, $zero
/* 3223C 8003163C 0C00E764 */  jal        osPfsInitPak
/* 32240 80031640 02403025 */   or        $a2, $s2, $zero
/* 32244 80031644 1040000D */  beqz       $v0, .L8003167C
/* 32248 80031648 0040A825 */   or        $s5, $v0, $zero
/* 3224C 8003164C 2401000A */  addiu      $at, $zero, 0xa
/* 32250 80031650 14410008 */  bne        $v0, $at, .L80031674
/* 32254 80031654 02E02025 */   or        $a0, $s7, $zero
/* 32258 80031658 8FA50040 */  lw         $a1, 0x40($sp)
/* 3225C 8003165C 0C00E92F */  jal        osMotorInit
/* 32260 80031660 02403025 */   or        $a2, $s2, $zero
/* 32264 80031664 14400003 */  bnez       $v0, .L80031674
/* 32268 80031668 2415000A */   addiu     $s5, $zero, 0xa
/* 3226C 8003166C 10000058 */  b          .L800317D0
/* 32270 80031670 24020001 */   addiu     $v0, $zero, 1
.L80031674:
/* 32274 80031674 10000056 */  b          .L800317D0
/* 32278 80031678 02A01025 */   or        $v0, $s5, $zero
.L8003167C:
/* 3227C 8003167C 3C174E45 */  lui        $s7, 0x4e45
/* 32280 80031680 36F75445 */  ori        $s7, $s7, 0x5445
/* 32284 80031684 00002825 */  or         $a1, $zero, $zero
/* 32288 80031688 241E3738 */  addiu      $fp, $zero, 0x3738
/* 3228C 8003168C 2412007F */  addiu      $s2, $zero, 0x7f
/* 32290 80031690 8FA40040 */  lw         $a0, 0x40($sp)
.L80031694:
/* 32294 80031694 27A6004C */  addiu      $a2, $sp, 0x4c
/* 32298 80031698 0C00EB8C */  jal        osPfsFileState
/* 3229C 8003169C AFA5008C */   sw        $a1, 0x8c($sp)
/* 322A0 800316A0 1440001F */  bnez       $v0, .L80031720
/* 322A4 800316A4 0040A825 */   or        $s5, $v0, $zero
/* 322A8 800316A8 8FAB0050 */  lw         $t3, 0x50($sp)
/* 322AC 800316AC 8FA5008C */  lw         $a1, 0x8c($sp)
/* 322B0 800316B0 97AC0054 */  lhu        $t4, 0x54($sp)
/* 322B4 800316B4 15770017 */  bne        $t3, $s7, .L80031714
/* 322B8 800316B8 02054021 */   addu      $t0, $s0, $a1
/* 322BC 800316BC 17CC0015 */  bne        $fp, $t4, .L80031714
/* 322C0 800316C0 3C048006 */   lui       $a0, %hi(mempak_gamename)
/* 322C4 800316C4 2484FB40 */  addiu      $a0, $a0, %lo(mempak_gamename)
/* 322C8 800316C8 27A5005A */  addiu      $a1, $sp, 0x5a
/* 322CC 800316CC 0C00C703 */  jal        compareMempakGameName
/* 322D0 800316D0 24060010 */   addiu     $a2, $zero, 0x10
/* 322D4 800316D4 1440000B */  bnez       $v0, .L80031704
/* 322D8 800316D8 8FA5008C */   lw        $a1, 0x8c($sp)
/* 322DC 800316DC 8FA5008C */  lw         $a1, 0x8c($sp)
/* 322E0 800316E0 93AD0056 */  lbu        $t5, 0x56($sp)
/* 322E4 800316E4 26940001 */  addiu      $s4, $s4, 1
/* 322E8 800316E8 02257021 */  addu       $t6, $s1, $a1
/* 322EC 800316EC A1CD0002 */  sb         $t5, 2($t6)
/* 322F0 800316F0 862F0000 */  lh         $t7, ($s1)
/* 322F4 800316F4 26D60001 */  addiu      $s6, $s6, 1
/* 322F8 800316F8 35F84000 */  ori        $t8, $t7, 0x4000
/* 322FC 800316FC 1000000E */  b          .L80031738
/* 32300 80031700 A6380000 */   sh        $t8, ($s1)
.L80031704:
/* 32304 80031704 0205C821 */  addu       $t9, $s0, $a1
/* 32308 80031708 A3320002 */  sb         $s2, 2($t9)
/* 3230C 8003170C 1000000A */  b          .L80031738
/* 32310 80031710 26D60001 */   addiu     $s6, $s6, 1
.L80031714:
/* 32314 80031714 A1120002 */  sb         $s2, 2($t0)
/* 32318 80031718 10000007 */  b          .L80031738
/* 3231C 8003171C 26D60001 */   addiu     $s6, $s6, 1
.L80031720:
/* 32320 80031720 24010005 */  addiu      $at, $zero, 5
/* 32324 80031724 14410009 */  bne        $v0, $at, .L8003174C
/* 32328 80031728 8FA5008C */   lw        $a1, 0x8c($sp)
/* 3232C 8003172C 02054821 */  addu       $t1, $s0, $a1
/* 32330 80031730 A1330002 */  sb         $s3, 2($t1)
/* 32334 80031734 0000A825 */  or         $s5, $zero, $zero
.L80031738:
/* 32338 80031738 24A50001 */  addiu      $a1, $a1, 1
/* 3233C 8003173C 28A10010 */  slti       $at, $a1, 0x10
/* 32340 80031740 5420FFD4 */  bnel       $at, $zero, .L80031694
/* 32344 80031744 8FA40040 */   lw        $a0, 0x40($sp)
/* 32348 80031748 AFA5008C */  sw         $a1, 0x8c($sp)
.L8003174C:
/* 3234C 8003174C 16A0001F */  bnez       $s5, .L800317CC
/* 32350 80031750 27A5008C */   addiu     $a1, $sp, 0x8c
/* 32354 80031754 862A0000 */  lh         $t2, ($s1)
/* 32358 80031758 2A810010 */  slti       $at, $s4, 0x10
/* 3235C 8003175C 314BFFF0 */  andi       $t3, $t2, 0xfff0
/* 32360 80031760 A62B0000 */  sh         $t3, ($s1)
/* 32364 80031764 862C0000 */  lh         $t4, ($s1)
/* 32368 80031768 01946825 */  or         $t5, $t4, $s4
/* 3236C 8003176C 14200004 */  bnez       $at, .L80031780
/* 32370 80031770 A62D0000 */   sh        $t5, ($s1)
/* 32374 80031774 862E0000 */  lh         $t6, ($s1)
/* 32378 80031778 35CF2000 */  ori        $t7, $t6, 0x2000
/* 3237C 8003177C A62F0000 */  sh         $t7, ($s1)
.L80031780:
/* 32380 80031780 2AC10010 */  slti       $at, $s6, 0x10
/* 32384 80031784 14200004 */  bnez       $at, .L80031798
/* 32388 80031788 00000000 */   nop
/* 3238C 8003178C 86380000 */  lh         $t8, ($s1)
/* 32390 80031790 37192000 */  ori        $t9, $t8, 0x2000
/* 32394 80031794 A6390000 */  sh         $t9, ($s1)
.L80031798:
/* 32398 80031798 0C00EC48 */  jal        osPfsFreeBlocks
/* 3239C 8003179C 8FA40040 */   lw        $a0, 0x40($sp)
/* 323A0 800317A0 8FA5008C */  lw         $a1, 0x8c($sp)
/* 323A4 800317A4 04A10003 */  bgez       $a1, .L800317B4
/* 323A8 800317A8 00054203 */   sra       $t0, $a1, 8
/* 323AC 800317AC 24A100FF */  addiu      $at, $a1, 0xff
/* 323B0 800317B0 00014203 */  sra        $t0, $at, 8
.L800317B4:
/* 323B4 800317B4 29010002 */  slti       $at, $t0, 2
/* 323B8 800317B8 10200004 */  beqz       $at, .L800317CC
/* 323BC 800317BC A2280013 */   sb        $t0, 0x13($s1)
/* 323C0 800317C0 86290000 */  lh         $t1, ($s1)
/* 323C4 800317C4 352A2000 */  ori        $t2, $t1, 0x2000
/* 323C8 800317C8 A62A0000 */  sh         $t2, ($s1)
.L800317CC:
/* 323CC 800317CC 02A01025 */  or         $v0, $s5, $zero
.L800317D0:
/* 323D0 800317D0 8FBF003C */  lw         $ra, 0x3c($sp)
/* 323D4 800317D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 323D8 800317D8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 323DC 800317DC 8FB20020 */  lw         $s2, 0x20($sp)
/* 323E0 800317E0 8FB30024 */  lw         $s3, 0x24($sp)
/* 323E4 800317E4 8FB40028 */  lw         $s4, 0x28($sp)
/* 323E8 800317E8 8FB5002C */  lw         $s5, 0x2c($sp)
/* 323EC 800317EC 8FB60030 */  lw         $s6, 0x30($sp)
/* 323F0 800317F0 8FB70034 */  lw         $s7, 0x34($sp)
/* 323F4 800317F4 8FBE0038 */  lw         $fp, 0x38($sp)
/* 323F8 800317F8 03E00008 */  jr         $ra
/* 323FC 800317FC 27BD0090 */   addiu     $sp, $sp, 0x90

glabel func_80031800
/* 32400 80031800 00047080 */  sll        $t6, $a0, 2
/* 32404 80031804 01C47021 */  addu       $t6, $t6, $a0
/* 32408 80031808 3C0F8009 */  lui        $t7, %hi(D_80092A38)
/* 3240C 8003180C 25EF2A38 */  addiu      $t7, $t7, %lo(D_80092A38)
/* 32410 80031810 000E7080 */  sll        $t6, $t6, 2
/* 32414 80031814 2403FFFF */  addiu      $v1, $zero, -1
/* 32418 80031818 01CF3021 */  addu       $a2, $t6, $t7
/* 3241C 8003181C 24080010 */  addiu      $t0, $zero, 0x10
/* 32420 80031820 24630001 */  addiu      $v1, $v1, 1
.L80031824:
/* 32424 80031824 00001025 */  or         $v0, $zero, $zero
/* 32428 80031828 00002025 */  or         $a0, $zero, $zero
/* 3242C 8003182C 2465001A */  addiu      $a1, $v1, 0x1a
/* 32430 80031830 00C03825 */  or         $a3, $a2, $zero
.L80031834:
/* 32434 80031834 80F80002 */  lb         $t8, 2($a3)
/* 32438 80031838 24420001 */  addiu      $v0, $v0, 1
/* 3243C 8003183C 14B80003 */  bne        $a1, $t8, .L8003184C
/* 32440 80031840 00000000 */   nop
/* 32444 80031844 10000003 */  b          .L80031854
/* 32448 80031848 2404FFFF */   addiu     $a0, $zero, -1
.L8003184C:
/* 3244C 8003184C 1448FFF9 */  bne        $v0, $t0, .L80031834
/* 32450 80031850 24E70001 */   addiu     $a3, $a3, 1
.L80031854:
/* 32454 80031854 28610010 */  slti       $at, $v1, 0x10
/* 32458 80031858 14200005 */  bnez       $at, .L80031870
/* 3245C 8003185C 00000000 */   nop
/* 32460 80031860 10800003 */  beqz       $a0, .L80031870
/* 32464 80031864 00000000 */   nop
/* 32468 80031868 10000003 */  b          .L80031878
/* 3246C 8003186C 2404FFFF */   addiu     $a0, $zero, -1
.L80031870:
/* 32470 80031870 5080FFEC */  beql       $a0, $zero, .L80031824
/* 32474 80031874 24630001 */   addiu     $v1, $v1, 1
.L80031878:
/* 32478 80031878 54800003 */  bnel       $a0, $zero, .L80031888
/* 3247C 8003187C 308200FF */   andi      $v0, $a0, 0xff
/* 32480 80031880 00A02025 */  or         $a0, $a1, $zero
/* 32484 80031884 308200FF */  andi       $v0, $a0, 0xff
.L80031888:
/* 32488 80031888 03E00008 */  jr         $ra
/* 3248C 8003188C 00000000 */   nop

glabel create_file
/* 32490 80031890 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 32494 80031894 AFBF0024 */  sw         $ra, 0x24($sp)
/* 32498 80031898 AFA40038 */  sw         $a0, 0x38($sp)
/* 3249C 8003189C AFA5003C */  sw         $a1, 0x3c($sp)
/* 324A0 800318A0 27A2002C */  addiu      $v0, $sp, 0x2c
/* 324A4 800318A4 3C0E8006 */  lui        $t6, %hi(D_8005FB70)
/* 324A8 800318A8 25CEFB70 */  addiu      $t6, $t6, %lo(D_8005FB70)
/* 324AC 800318AC 8DC10000 */  lw         $at, ($t6)
/* 324B0 800318B0 3C0C8009 */  lui        $t4, %hi(pfs_dat)
/* 324B4 800318B4 2408FFFF */  addiu      $t0, $zero, -1
/* 324B8 800318B8 AC410000 */  sw         $at, ($v0)
/* 324BC 800318BC 8FAA0038 */  lw         $t2, 0x38($sp)
/* 324C0 800318C0 93A9003F */  lbu        $t1, 0x3f($sp)
/* 324C4 800318C4 258C2898 */  addiu      $t4, $t4, %lo(pfs_dat)
/* 324C8 800318C8 000A5880 */  sll        $t3, $t2, 2
/* 324CC 800318CC 016A5823 */  subu       $t3, $t3, $t2
/* 324D0 800318D0 000B5880 */  sll        $t3, $t3, 2
/* 324D4 800318D4 016A5821 */  addu       $t3, $t3, $t2
/* 324D8 800318D8 000B58C0 */  sll        $t3, $t3, 3
/* 324DC 800318DC 3C064E45 */  lui        $a2, 0x4e45
/* 324E0 800318E0 3C078006 */  lui        $a3, %hi(mempak_gamename)
/* 324E4 800318E4 240D0200 */  addiu      $t5, $zero, 0x200
/* 324E8 800318E8 27B80030 */  addiu      $t8, $sp, 0x30
/* 324EC 800318EC AFB80018 */  sw         $t8, 0x18($sp)
/* 324F0 800318F0 AFAD0014 */  sw         $t5, 0x14($sp)
/* 324F4 800318F4 24E7FB40 */  addiu      $a3, $a3, %lo(mempak_gamename)
/* 324F8 800318F8 34C65445 */  ori        $a2, $a2, 0x5445
/* 324FC 800318FC 016C2021 */  addu       $a0, $t3, $t4
/* 32500 80031900 AFA80030 */  sw         $t0, 0x30($sp)
/* 32504 80031904 AFA20010 */  sw         $v0, 0x10($sp)
/* 32508 80031908 24053738 */  addiu      $a1, $zero, 0x3738
/* 3250C 8003190C 0C00EC9C */  jal        osPfsAllocateFile
/* 32510 80031910 A3A9002C */   sb        $t1, 0x2c($sp)
/* 32514 80031914 1440000C */  bnez       $v0, .L80031948
/* 32518 80031918 00021823 */   negu      $v1, $v0
/* 3251C 8003191C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 32520 80031920 8FA30030 */  lw         $v1, 0x30($sp)
/* 32524 80031924 93AF003F */  lbu        $t7, 0x3f($sp)
/* 32528 80031928 000EC880 */  sll        $t9, $t6, 2
/* 3252C 8003192C 032EC821 */  addu       $t9, $t9, $t6
/* 32530 80031930 0019C880 */  sll        $t9, $t9, 2
/* 32534 80031934 3C018009 */  lui        $at, %hi(D_80092A3A)
/* 32538 80031938 03234821 */  addu       $t1, $t9, $v1
/* 3253C 8003193C 00290821 */  addu       $at, $at, $t1
/* 32540 80031940 10000001 */  b          .L80031948
/* 32544 80031944 A02F2A3A */   sb        $t7, %lo(D_80092A3A)($at)
.L80031948:
/* 32548 80031948 306200FF */  andi       $v0, $v1, 0xff
/* 3254C 8003194C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 32550 80031950 27BD0038 */  addiu      $sp, $sp, 0x38
/* 32554 80031954 03E00008 */  jr         $ra
/* 32558 80031958 00000000 */   nop

glabel delete_file
/* 3255C 8003195C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 32560 80031960 AFBF001C */  sw         $ra, 0x1c($sp)
/* 32564 80031964 AFA40028 */  sw         $a0, 0x28($sp)
/* 32568 80031968 AFA5002C */  sw         $a1, 0x2c($sp)
/* 3256C 8003196C 27A20020 */  addiu      $v0, $sp, 0x20
/* 32570 80031970 3C0E8006 */  lui        $t6, %hi(D_8005FB74)
/* 32574 80031974 25CEFB74 */  addiu      $t6, $t6, %lo(D_8005FB74)
/* 32578 80031978 8DC10000 */  lw         $at, ($t6)
/* 3257C 8003197C 3C0B8009 */  lui        $t3, %hi(pfs_dat)
/* 32580 80031980 256B2898 */  addiu      $t3, $t3, %lo(pfs_dat)
/* 32584 80031984 AC410000 */  sw         $at, ($v0)
/* 32588 80031988 8FA90028 */  lw         $t1, 0x28($sp)
/* 3258C 8003198C 93A8002F */  lbu        $t0, 0x2f($sp)
/* 32590 80031990 3C064E45 */  lui        $a2, 0x4e45
/* 32594 80031994 00095080 */  sll        $t2, $t1, 2
/* 32598 80031998 01495023 */  subu       $t2, $t2, $t1
/* 3259C 8003199C 000A5080 */  sll        $t2, $t2, 2
/* 325A0 800319A0 01495021 */  addu       $t2, $t2, $t1
/* 325A4 800319A4 000A50C0 */  sll        $t2, $t2, 3
/* 325A8 800319A8 3C078006 */  lui        $a3, %hi(mempak_gamename)
/* 325AC 800319AC 24E7FB40 */  addiu      $a3, $a3, %lo(mempak_gamename)
/* 325B0 800319B0 014B2021 */  addu       $a0, $t2, $t3
/* 325B4 800319B4 34C65445 */  ori        $a2, $a2, 0x5445
/* 325B8 800319B8 AFA20010 */  sw         $v0, 0x10($sp)
/* 325BC 800319BC 24053738 */  addiu      $a1, $zero, 0x3738
/* 325C0 800319C0 0C00EE88 */  jal        osPfsDeleteFile
/* 325C4 800319C4 A3A80020 */   sb        $t0, 0x20($sp)
/* 325C8 800319C8 304C00FF */  andi       $t4, $v0, 0xff
/* 325CC 800319CC 01801025 */  or         $v0, $t4, $zero
/* 325D0 800319D0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 325D4 800319D4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 325D8 800319D8 03E00008 */  jr         $ra
/* 325DC 800319DC 00000000 */   nop

glabel read_file
/* 325E0 800319E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 325E4 800319E4 AFA7002C */  sw         $a3, 0x2c($sp)
/* 325E8 800319E8 00C03825 */  or         $a3, $a2, $zero
/* 325EC 800319EC AFBF001C */  sw         $ra, 0x1c($sp)
/* 325F0 800319F0 AFA40020 */  sw         $a0, 0x20($sp)
/* 325F4 800319F4 AFA60028 */  sw         $a2, 0x28($sp)
/* 325F8 800319F8 8FAE0020 */  lw         $t6, 0x20($sp)
/* 325FC 800319FC 8FB9002C */  lw         $t9, 0x2c($sp)
/* 32600 80031A00 8FA80030 */  lw         $t0, 0x30($sp)
/* 32604 80031A04 000E7880 */  sll        $t7, $t6, 2
/* 32608 80031A08 01EE7823 */  subu       $t7, $t7, $t6
/* 3260C 80031A0C 000F7880 */  sll        $t7, $t7, 2
/* 32610 80031A10 3C188009 */  lui        $t8, %hi(pfs_dat)
/* 32614 80031A14 01EE7821 */  addu       $t7, $t7, $t6
/* 32618 80031A18 000F78C0 */  sll        $t7, $t7, 3
/* 3261C 80031A1C 27182898 */  addiu      $t8, $t8, %lo(pfs_dat)
/* 32620 80031A20 01F82021 */  addu       $a0, $t7, $t8
/* 32624 80031A24 00003025 */  or         $a2, $zero, $zero
/* 32628 80031A28 AFB90010 */  sw         $t9, 0x10($sp)
/* 3262C 80031A2C 0C00F04B */  jal        osPfsReadWriteFile
/* 32630 80031A30 AFA80014 */   sw        $t0, 0x14($sp)
/* 32634 80031A34 8FBF001C */  lw         $ra, 0x1c($sp)
/* 32638 80031A38 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3263C 80031A3C 03E00008 */  jr         $ra
/* 32640 80031A40 00000000 */   nop

glabel write_flie
/* 32644 80031A44 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 32648 80031A48 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3264C 80031A4C AFA40030 */  sw         $a0, 0x30($sp)
/* 32650 80031A50 AFA50034 */  sw         $a1, 0x34($sp)
/* 32654 80031A54 AFA60038 */  sw         $a2, 0x38($sp)
/* 32658 80031A58 AFA7003C */  sw         $a3, 0x3c($sp)
/* 3265C 80031A5C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 32660 80031A60 3C188009 */  lui        $t8, %hi(pfs_dat)
/* 32664 80031A64 27182898 */  addiu      $t8, $t8, %lo(pfs_dat)
/* 32668 80031A68 000E7880 */  sll        $t7, $t6, 2
/* 3266C 80031A6C 01EE7823 */  subu       $t7, $t7, $t6
/* 32670 80031A70 000F7880 */  sll        $t7, $t7, 2
/* 32674 80031A74 01EE7821 */  addu       $t7, $t7, $t6
/* 32678 80031A78 000F78C0 */  sll        $t7, $t7, 3
/* 3267C 80031A7C 01F82021 */  addu       $a0, $t7, $t8
/* 32680 80031A80 AFA40024 */  sw         $a0, 0x24($sp)
/* 32684 80031A84 0C00EC48 */  jal        osPfsFreeBlocks
/* 32688 80031A88 27A50028 */   addiu     $a1, $sp, 0x28
/* 3268C 80031A8C 10400003 */  beqz       $v0, .L80031A9C
/* 32690 80031A90 8FA40024 */   lw        $a0, 0x24($sp)
/* 32694 80031A94 1000000A */  b          .L80031AC0
/* 32698 80031A98 8FBF001C */   lw        $ra, 0x1c($sp)
.L80031A9C:
/* 3269C 80031A9C 8FB9003C */  lw         $t9, 0x3c($sp)
/* 326A0 80031AA0 8FA80040 */  lw         $t0, 0x40($sp)
/* 326A4 80031AA4 8FA50034 */  lw         $a1, 0x34($sp)
/* 326A8 80031AA8 24060001 */  addiu      $a2, $zero, 1
/* 326AC 80031AAC 8FA70038 */  lw         $a3, 0x38($sp)
/* 326B0 80031AB0 AFB90010 */  sw         $t9, 0x10($sp)
/* 326B4 80031AB4 0C00F04B */  jal        osPfsReadWriteFile
/* 326B8 80031AB8 AFA80014 */   sw        $t0, 0x14($sp)
/* 326BC 80031ABC 8FBF001C */  lw         $ra, 0x1c($sp)
.L80031AC0:
/* 326C0 80031AC0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 326C4 80031AC4 03E00008 */  jr         $ra
/* 326C8 80031AC8 00000000 */   nop

glabel func_80031ACC
/* 326CC 80031ACC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 326D0 80031AD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 326D4 80031AD4 AFA40028 */  sw         $a0, 0x28($sp)
/* 326D8 80031AD8 3C068009 */  lui        $a2, %hi(controller_no)
/* 326DC 80031ADC 2401000A */  addiu      $at, $zero, 0xa
/* 326E0 80031AE0 14A10022 */  bne        $a1, $at, .L80031B6C
/* 326E4 80031AE4 80C62870 */   lb        $a2, %lo(controller_no)($a2)
/* 326E8 80031AE8 00067080 */  sll        $t6, $a2, 2
/* 326EC 80031AEC 01C67023 */  subu       $t6, $t6, $a2
/* 326F0 80031AF0 000E7080 */  sll        $t6, $t6, 2
/* 326F4 80031AF4 01C67021 */  addu       $t6, $t6, $a2
/* 326F8 80031AF8 3C0F8009 */  lui        $t7, %hi(pfs_dat)
/* 326FC 80031AFC 25EF2898 */  addiu      $t7, $t7, %lo(pfs_dat)
/* 32700 80031B00 000E70C0 */  sll        $t6, $t6, 3
/* 32704 80031B04 01CF2821 */  addu       $a1, $t6, $t7
/* 32708 80031B08 3C048009 */  lui        $a0, %hi(cont_mesgq)
/* 3270C 80031B0C 24842880 */  addiu      $a0, $a0, %lo(cont_mesgq)
/* 32710 80031B10 AFA5001C */  sw         $a1, 0x1c($sp)
/* 32714 80031B14 0C00E92F */  jal        osMotorInit
/* 32718 80031B18 AFA60020 */   sw        $a2, 0x20($sp)
/* 3271C 80031B1C 10400011 */  beqz       $v0, .L80031B64
/* 32720 80031B20 8FA60020 */   lw        $a2, 0x20($sp)
/* 32724 80031B24 3C048009 */  lui        $a0, %hi(cont_mesgq)
/* 32728 80031B28 24842880 */  addiu      $a0, $a0, %lo(cont_mesgq)
/* 3272C 80031B2C 0C00E764 */  jal        osPfsInitPak
/* 32730 80031B30 8FA5001C */   lw        $a1, 0x1c($sp)
/* 32734 80031B34 2401000B */  addiu      $at, $zero, 0xb
/* 32738 80031B38 10410018 */  beq        $v0, $at, .L80031B9C
/* 3273C 80031B3C 00401825 */   or        $v1, $v0, $zero
/* 32740 80031B40 24010001 */  addiu      $at, $zero, 1
/* 32744 80031B44 10410015 */  beq        $v0, $at, .L80031B9C
/* 32748 80031B48 24010002 */   addiu     $at, $zero, 2
/* 3274C 80031B4C 50410014 */  beql       $v0, $at, .L80031BA0
/* 32750 80031B50 00601025 */   or        $v0, $v1, $zero
/* 32754 80031B54 0C00F14C */  jal        func_8003C530
/* 32758 80031B58 8FA4001C */   lw        $a0, 0x1c($sp)
/* 3275C 80031B5C 1000000F */  b          .L80031B9C
/* 32760 80031B60 00401825 */   or        $v1, $v0, $zero
.L80031B64:
/* 32764 80031B64 1000000D */  b          .L80031B9C
/* 32768 80031B68 24030004 */   addiu     $v1, $zero, 4
.L80031B6C:
/* 3276C 80031B6C 0006C080 */  sll        $t8, $a2, 2
/* 32770 80031B70 0306C023 */  subu       $t8, $t8, $a2
/* 32774 80031B74 0018C080 */  sll        $t8, $t8, 2
/* 32778 80031B78 0306C021 */  addu       $t8, $t8, $a2
/* 3277C 80031B7C 3C198009 */  lui        $t9, %hi(pfs_dat)
/* 32780 80031B80 27392898 */  addiu      $t9, $t9, %lo(pfs_dat)
/* 32784 80031B84 0018C0C0 */  sll        $t8, $t8, 3
/* 32788 80031B88 3C048009 */  lui        $a0, %hi(cont_mesgq)
/* 3278C 80031B8C 24842880 */  addiu      $a0, $a0, %lo(cont_mesgq)
/* 32790 80031B90 0C00E764 */  jal        osPfsInitPak
/* 32794 80031B94 03192821 */   addu      $a1, $t8, $t9
/* 32798 80031B98 00401825 */  or         $v1, $v0, $zero
.L80031B9C:
/* 3279C 80031B9C 00601025 */  or         $v0, $v1, $zero
.L80031BA0:
/* 327A0 80031BA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 327A4 80031BA4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 327A8 80031BA8 03E00008 */  jr         $ra
/* 327AC 80031BAC 00000000 */   nop

glabel func_80031BB0
/* 327B0 80031BB0 248EFFFF */  addiu      $t6, $a0, -1
/* 327B4 80031BB4 2DC1000B */  sltiu      $at, $t6, 0xb
/* 327B8 80031BB8 10200010 */  beqz       $at, .L80031BFC
/* 327BC 80031BBC 000E7080 */   sll       $t6, $t6, 2
/* 327C0 80031BC0 3C018007 */  lui        $at, %hi(D_80071A50)
/* 327C4 80031BC4 002E0821 */  addu       $at, $at, $t6
/* 327C8 80031BC8 8C2E1A50 */  lw         $t6, %lo(D_80071A50)($at)
/* 327CC 80031BCC 01C00008 */  jr         $t6
/* 327D0 80031BD0 00000000 */   nop
/* 327D4 80031BD4 1000000A */  b          .L80031C00
/* 327D8 80031BD8 2403FFFF */   addiu     $v1, $zero, -1
/* 327DC 80031BDC 10000008 */  b          .L80031C00
/* 327E0 80031BE0 2403FFFE */   addiu     $v1, $zero, -2
/* 327E4 80031BE4 10000006 */  b          .L80031C00
/* 327E8 80031BE8 2403FFFD */   addiu     $v1, $zero, -3
/* 327EC 80031BEC 10000004 */  b          .L80031C00
/* 327F0 80031BF0 2403FFFC */   addiu     $v1, $zero, -4
/* 327F4 80031BF4 10000002 */  b          .L80031C00
/* 327F8 80031BF8 2403FFFB */   addiu     $v1, $zero, -5
.L80031BFC:
/* 327FC 80031BFC 2403FFFA */  addiu      $v1, $zero, -6
.L80031C00:
/* 32800 80031C00 00601025 */  or         $v0, $v1, $zero
/* 32804 80031C04 03E00008 */  jr         $ra
/* 32808 80031C08 00000000 */   nop

glabel compareMempakGameName
.L80031C0C:
/* 3280C 80031C0C 908E0000 */  lbu        $t6, ($a0)
/* 32810 80031C10 90AF0000 */  lbu        $t7, ($a1)
/* 32814 80031C14 24840001 */  addiu      $a0, $a0, 1
/* 32818 80031C18 24A50001 */  addiu      $a1, $a1, 1
/* 3281C 80031C1C 15CF0003 */  bne        $t6, $t7, .L80031C2C
/* 32820 80031C20 00C01025 */   or        $v0, $a2, $zero
/* 32824 80031C24 14C0FFF9 */  bnez       $a2, .L80031C0C
/* 32828 80031C28 24C6FFFF */   addiu     $a2, $a2, -1
.L80031C2C:
/* 3282C 80031C2C 00C01025 */  or         $v0, $a2, $zero
/* 32830 80031C30 03E00008 */  jr         $ra
/* 32834 80031C34 00000000 */   nop
/* 32838 80031C38 00000000 */  nop
/* 3283C 80031C3C 00000000 */  nop
