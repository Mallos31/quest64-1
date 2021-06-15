.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osViSetSpecialFeatures
/* 35810 80034C10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 35814 80034C14 AFBF001C */  sw         $ra, 0x1c($sp)
/* 35818 80034C18 AFA40028 */  sw         $a0, 0x28($sp)
/* 3581C 80034C1C 0C00F534 */  jal        __osDisableInt
/* 35820 80034C20 AFB00018 */   sw        $s0, 0x18($sp)
/* 35824 80034C24 8FAE0028 */  lw         $t6, 0x28($sp)
/* 35828 80034C28 00408025 */  or         $s0, $v0, $zero
/* 3582C 80034C2C 31CF0001 */  andi       $t7, $t6, 1
/* 35830 80034C30 11E00006 */  beqz       $t7, .L80034C4C
/* 35834 80034C34 00000000 */   nop
/* 35838 80034C38 3C188007 */  lui        $t8, %hi(__osViNext)
/* 3583C 80034C3C 8F180A84 */  lw         $t8, %lo(__osViNext)($t8)
/* 35840 80034C40 8F19000C */  lw         $t9, 0xc($t8)
/* 35844 80034C44 37280008 */  ori        $t0, $t9, 8
/* 35848 80034C48 AF08000C */  sw         $t0, 0xc($t8)
.L80034C4C:
/* 3584C 80034C4C 8FA90028 */  lw         $t1, 0x28($sp)
/* 35850 80034C50 312A0002 */  andi       $t2, $t1, 2
/* 35854 80034C54 11400007 */  beqz       $t2, .L80034C74
/* 35858 80034C58 00000000 */   nop
/* 3585C 80034C5C 3C0B8007 */  lui        $t3, %hi(__osViNext)
/* 35860 80034C60 8D6B0A84 */  lw         $t3, %lo(__osViNext)($t3)
/* 35864 80034C64 2401FFF7 */  addiu      $at, $zero, -9
/* 35868 80034C68 8D6C000C */  lw         $t4, 0xc($t3)
/* 3586C 80034C6C 01816824 */  and        $t5, $t4, $at
/* 35870 80034C70 AD6D000C */  sw         $t5, 0xc($t3)
.L80034C74:
/* 35874 80034C74 8FAE0028 */  lw         $t6, 0x28($sp)
/* 35878 80034C78 31CF0004 */  andi       $t7, $t6, 4
/* 3587C 80034C7C 11E00006 */  beqz       $t7, .L80034C98
/* 35880 80034C80 00000000 */   nop
/* 35884 80034C84 3C198007 */  lui        $t9, %hi(__osViNext)
/* 35888 80034C88 8F390A84 */  lw         $t9, %lo(__osViNext)($t9)
/* 3588C 80034C8C 8F28000C */  lw         $t0, 0xc($t9)
/* 35890 80034C90 35180004 */  ori        $t8, $t0, 4
/* 35894 80034C94 AF38000C */  sw         $t8, 0xc($t9)
.L80034C98:
/* 35898 80034C98 8FA90028 */  lw         $t1, 0x28($sp)
/* 3589C 80034C9C 312A0008 */  andi       $t2, $t1, 8
/* 358A0 80034CA0 11400007 */  beqz       $t2, .L80034CC0
/* 358A4 80034CA4 00000000 */   nop
/* 358A8 80034CA8 3C0C8007 */  lui        $t4, %hi(__osViNext)
/* 358AC 80034CAC 8D8C0A84 */  lw         $t4, %lo(__osViNext)($t4)
/* 358B0 80034CB0 2401FFFB */  addiu      $at, $zero, -5
/* 358B4 80034CB4 8D8D000C */  lw         $t5, 0xc($t4)
/* 358B8 80034CB8 01A15824 */  and        $t3, $t5, $at
/* 358BC 80034CBC AD8B000C */  sw         $t3, 0xc($t4)
.L80034CC0:
/* 358C0 80034CC0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 358C4 80034CC4 31CF0010 */  andi       $t7, $t6, 0x10
/* 358C8 80034CC8 11E00006 */  beqz       $t7, .L80034CE4
/* 358CC 80034CCC 00000000 */   nop
/* 358D0 80034CD0 3C088007 */  lui        $t0, %hi(__osViNext)
/* 358D4 80034CD4 8D080A84 */  lw         $t0, %lo(__osViNext)($t0)
/* 358D8 80034CD8 8D18000C */  lw         $t8, 0xc($t0)
/* 358DC 80034CDC 37190010 */  ori        $t9, $t8, 0x10
/* 358E0 80034CE0 AD19000C */  sw         $t9, 0xc($t0)
.L80034CE4:
/* 358E4 80034CE4 8FA90028 */  lw         $t1, 0x28($sp)
/* 358E8 80034CE8 312A0020 */  andi       $t2, $t1, 0x20
/* 358EC 80034CEC 11400007 */  beqz       $t2, .L80034D0C
/* 358F0 80034CF0 00000000 */   nop
/* 358F4 80034CF4 3C0D8007 */  lui        $t5, %hi(__osViNext)
/* 358F8 80034CF8 8DAD0A84 */  lw         $t5, %lo(__osViNext)($t5)
/* 358FC 80034CFC 2401FFEF */  addiu      $at, $zero, -0x11
/* 35900 80034D00 8DAB000C */  lw         $t3, 0xc($t5)
/* 35904 80034D04 01616024 */  and        $t4, $t3, $at
/* 35908 80034D08 ADAC000C */  sw         $t4, 0xc($t5)
.L80034D0C:
/* 3590C 80034D0C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 35910 80034D10 31CF0040 */  andi       $t7, $t6, 0x40
/* 35914 80034D14 11E0000D */  beqz       $t7, .L80034D4C
/* 35918 80034D18 00000000 */   nop
/* 3591C 80034D1C 3C188007 */  lui        $t8, %hi(__osViNext)
/* 35920 80034D20 8F180A84 */  lw         $t8, %lo(__osViNext)($t8)
/* 35924 80034D24 3C010001 */  lui        $at, 1
/* 35928 80034D28 3C098007 */  lui        $t1, %hi(__osViNext)
/* 3592C 80034D2C 8F19000C */  lw         $t9, 0xc($t8)
/* 35930 80034D30 03214025 */  or         $t0, $t9, $at
/* 35934 80034D34 AF08000C */  sw         $t0, 0xc($t8)
/* 35938 80034D38 8D290A84 */  lw         $t1, %lo(__osViNext)($t1)
/* 3593C 80034D3C 2401FCFF */  addiu      $at, $zero, -0x301
/* 35940 80034D40 8D2A000C */  lw         $t2, 0xc($t1)
/* 35944 80034D44 01415824 */  and        $t3, $t2, $at
/* 35948 80034D48 AD2B000C */  sw         $t3, 0xc($t1)
.L80034D4C:
/* 3594C 80034D4C 8FAC0028 */  lw         $t4, 0x28($sp)
/* 35950 80034D50 318D0080 */  andi       $t5, $t4, 0x80
/* 35954 80034D54 11A00010 */  beqz       $t5, .L80034D98
/* 35958 80034D58 00000000 */   nop
/* 3595C 80034D5C 3C0E8007 */  lui        $t6, %hi(__osViNext)
/* 35960 80034D60 8DCE0A84 */  lw         $t6, %lo(__osViNext)($t6)
/* 35964 80034D64 3C01FFFE */  lui        $at, 0xfffe
/* 35968 80034D68 3421FFFF */  ori        $at, $at, 0xffff
/* 3596C 80034D6C 8DCF000C */  lw         $t7, 0xc($t6)
/* 35970 80034D70 3C088007 */  lui        $t0, %hi(__osViNext)
/* 35974 80034D74 01E1C824 */  and        $t9, $t7, $at
/* 35978 80034D78 ADD9000C */  sw         $t9, 0xc($t6)
/* 3597C 80034D7C 8D080A84 */  lw         $t0, %lo(__osViNext)($t0)
/* 35980 80034D80 8D0A0008 */  lw         $t2, 8($t0)
/* 35984 80034D84 8D18000C */  lw         $t8, 0xc($t0)
/* 35988 80034D88 8D4B0004 */  lw         $t3, 4($t2)
/* 3598C 80034D8C 31690300 */  andi       $t1, $t3, 0x300
/* 35990 80034D90 03096025 */  or         $t4, $t8, $t1
/* 35994 80034D94 AD0C000C */  sw         $t4, 0xc($t0)
.L80034D98:
/* 35998 80034D98 3C0D8007 */  lui        $t5, %hi(__osViNext)
/* 3599C 80034D9C 8DAD0A84 */  lw         $t5, %lo(__osViNext)($t5)
/* 359A0 80034DA0 02002025 */  or         $a0, $s0, $zero
/* 359A4 80034DA4 95AF0000 */  lhu        $t7, ($t5)
/* 359A8 80034DA8 35F90008 */  ori        $t9, $t7, 8
/* 359AC 80034DAC 0C00F53C */  jal        __osRestoreInt
/* 359B0 80034DB0 A5B90000 */   sh        $t9, ($t5)
/* 359B4 80034DB4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 359B8 80034DB8 8FB00018 */  lw         $s0, 0x18($sp)
/* 359BC 80034DBC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 359C0 80034DC0 03E00008 */  jr         $ra
/* 359C4 80034DC4 00000000 */   nop
/* 359C8 80034DC8 00000000 */  nop
/* 359CC 80034DCC 00000000 */  nop
