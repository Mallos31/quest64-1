glabel func_80017BD4
/* 187D4 80017BD4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 187D8 80017BD8 AFB00030 */  sw         $s0, 0x30($sp)
/* 187DC 80017BDC 3C088008 */  lui        $t0, %hi(D_800871D0)
/* 187E0 80017BE0 250871D0 */  addiu      $t0, $t0, %lo(D_800871D0)
/* 187E4 80017BE4 00808025 */  or         $s0, $a0, $zero
/* 187E8 80017BE8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 187EC 80017BEC 8E030030 */  lw         $v1, 0x30($s0)
/* 187F0 80017BF0 8E02002C */  lw         $v0, 0x2C($s0)
/* 187F4 80017BF4 3C18800C */  lui        $t8, %hi(D_800C1B90)
/* 187F8 80017BF8 C4640018 */  lwc1       $f4, 0x18($v1)
/* 187FC 80017BFC 846E0010 */  lh         $t6, 0x10($v1)
/* 18800 80017C00 27181B90 */  addiu      $t8, $t8, %lo(D_800C1B90)
/* 18804 80017C04 E5040000 */  swc1       $f4, 0x0($t0)
/* 18808 80017C08 C466001C */  lwc1       $f6, 0x1C($v1)
/* 1880C 80017C0C 000E7880 */  sll        $t7, $t6, 2
/* 18810 80017C10 01EE7821 */  addu       $t7, $t7, $t6
/* 18814 80017C14 E5060004 */  swc1       $f6, 0x4($t0)
/* 18818 80017C18 C448001C */  lwc1       $f8, 0x1C($v0)
/* 1881C 80017C1C 000F7840 */  sll        $t7, $t7, 1
/* 18820 80017C20 01F84821 */  addu       $t1, $t7, $t8
/* 18824 80017C24 E5080008 */  swc1       $f8, 0x8($t0)
/* 18828 80017C28 94790014 */  lhu        $t9, 0x14($v1)
/* 1882C 80017C2C 332B0010 */  andi       $t3, $t9, 0x10
/* 18830 80017C30 11600014 */  beqz       $t3, .L80017C84
/* 18834 80017C34 AFB90038 */   sw        $t9, 0x38($sp)
/* 18838 80017C38 960C0004 */  lhu        $t4, 0x4($s0)
/* 1883C 80017C3C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 18840 80017C40 448C5000 */  mtc1       $t4, $f10
/* 18844 80017C44 05810005 */  bgez       $t4, .L80017C5C
/* 18848 80017C48 46805421 */   cvt.d.w   $f16, $f10
/* 1884C 80017C4C 44819800 */  mtc1       $at, $f19
/* 18850 80017C50 44809000 */  mtc1       $zero, $f18
/* 18854 80017C54 00000000 */  nop
/* 18858 80017C58 46328400 */  add.d      $f16, $f16, $f18
.L80017C5C:
/* 1885C 80017C5C 3C018007 */  lui        $at, %hi(D_80071500)
/* 18860 80017C60 D4241500 */  ldc1       $f4, %lo(D_80071500)($at)
/* 18864 80017C64 3C014024 */  lui        $at, (0x40240000 >> 16)
/* 18868 80017C68 44814800 */  mtc1       $at, $f9
/* 1886C 80017C6C 46248182 */  mul.d      $f6, $f16, $f4
/* 18870 80017C70 44804000 */  mtc1       $zero, $f8
/* 18874 80017C74 00000000 */  nop
/* 18878 80017C78 46283283 */  div.d      $f10, $f6, $f8
/* 1887C 80017C7C 10000002 */  b          .L80017C88
/* 18880 80017C80 46205020 */   cvt.s.d   $f0, $f10
.L80017C84:
/* 18884 80017C84 C4A00010 */  lwc1       $f0, 0x10($a1)
.L80017C88:
/* 18888 80017C88 C6120014 */  lwc1       $f18, 0x14($s0)
/* 1888C 80017C8C 94640012 */  lhu        $a0, 0x12($v1)
/* 18890 80017C90 8E06000C */  lw         $a2, 0xC($s0)
/* 18894 80017C94 8E070010 */  lw         $a3, 0x10($s0)
/* 18898 80017C98 AFA8001C */  sw         $t0, 0x1C($sp)
/* 1889C 80017C9C AFA90018 */  sw         $t1, 0x18($sp)
/* 188A0 80017CA0 E7A00014 */  swc1       $f0, 0x14($sp)
/* 188A4 80017CA4 E7B20010 */  swc1       $f18, 0x10($sp)
/* 188A8 80017CA8 8E0D0024 */  lw         $t5, 0x24($s0)
/* 188AC 80017CAC AFA30044 */  sw         $v1, 0x44($sp)
/* 188B0 80017CB0 97A5003A */  lhu        $a1, 0x3A($sp)
/* 188B4 80017CB4 0C005DFE */  jal        func_800177F8
/* 188B8 80017CB8 AFAD0020 */   sw        $t5, 0x20($sp)
/* 188BC 80017CBC C6100018 */  lwc1       $f16, 0x18($s0)
/* 188C0 80017CC0 8FA30044 */  lw         $v1, 0x44($sp)
/* 188C4 80017CC4 240600FF */  addiu      $a2, $zero, 0xFF
/* 188C8 80017CC8 E4500028 */  swc1       $f16, 0x28($v0)
/* 188CC 80017CCC C604001C */  lwc1       $f4, 0x1C($s0)
/* 188D0 80017CD0 E444002C */  swc1       $f4, 0x2C($v0)
/* 188D4 80017CD4 C6060020 */  lwc1       $f6, 0x20($s0)
/* 188D8 80017CD8 E4460030 */  swc1       $f6, 0x30($v0)
/* 188DC 80017CDC 80650046 */  lb         $a1, 0x46($v1)
/* 188E0 80017CE0 04A20004 */  bltzl      $a1, .L80017CF4
/* 188E4 80017CE4 8FBF0034 */   lw        $ra, 0x34($sp)
/* 188E8 80017CE8 0C009A35 */  jal        func_800268D4
/* 188EC 80017CEC 90640047 */   lbu       $a0, 0x47($v1)
/* 188F0 80017CF0 8FBF0034 */  lw         $ra, 0x34($sp)
.L80017CF4:
/* 188F4 80017CF4 8FB00030 */  lw         $s0, 0x30($sp)
/* 188F8 80017CF8 27BD0050 */  addiu      $sp, $sp, 0x50
/* 188FC 80017CFC 03E00008 */  jr         $ra
/* 18900 80017D00 00000000 */   nop