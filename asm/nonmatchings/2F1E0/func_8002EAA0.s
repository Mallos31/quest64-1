.section .late_rodata
glabel jtbl_800719D0
/* 725D0 800719D0 8002F600 */ .word .L8002F600
/* 725D4 800719D4 8002F600 */ .word .L8002F600
/* 725D8 800719D8 8002F600 */ .word .L8002F600
/* 725DC 800719DC 8002F600 */ .word .L8002F600
/* 725E0 800719E0 8002F600 */ .word .L8002F600
/* 725E4 800719E4 8002F600 */ .word .L8002F600
/* 725E8 800719E8 8002F600 */ .word .L8002F600
/* 725EC 800719EC 8002F600 */ .word .L8002F600
/* 725F0 800719F0 8002F620 */ .word .L8002F620
/* 725F4 800719F4 8002F620 */ .word .L8002F620
/* 725F8 800719F8 8002F620 */ .word .L8002F620
/* 725FC 800719FC 8002F620 */ .word .L8002F620
/* 72600 80071A00 8002F620 */ .word .L8002F620
/* 72604 80071A04 8002F620 */ .word .L8002F620
/* 72608 80071A08 8002F620 */ .word .L8002F620
/* 7260C 80071A0C 8002F5C0 */ .word .L8002F5C0
/* 72610 80071A10 8002F620 */ .word .L8002F620
/* 72614 80071A14 8002F58C */ .word .L8002F58C
/* 72618 80071A18 8002F620 */ .word .L8002F620
/* 7261C 80071A1C 8002F620 */ .word .L8002F620
/* 72620 80071A20 8002F620 */ .word .L8002F620
/* 72624 80071A24 8002F620 */ .word .L8002F620
/* 72628 80071A28 8002F620 */ .word .L8002F620
/* 7262C 80071A2C 8002F620 */ .word .L8002F620
/* 72630 80071A30 8002F620 */ .word .L8002F620
/* 72634 80071A34 8002F620 */ .word .L8002F620
/* 72638 80071A38 8002F620 */ .word .L8002F620
/* 7263C 80071A3C 8002F620 */ .word .L8002F620
/* 72640 80071A40 8002F620 */ .word .L8002F620
/* 72644 80071A44 8002F620 */ .word .L8002F620
/* 72648 80071A48 8002F5D4 */ .word .L8002F5D4
/* 7264C 80071A4C 00000000 */ .word 0x00000000


.section .text
glabel func_8002EAA0
/* 2F6A0 8002EAA0 27BDFEE8 */  addiu      $sp, $sp, -0x118
/* 2F6A4 8002EAA4 AFB60038 */  sw         $s6, 0x38($sp)
/* 2F6A8 8002EAA8 3C168008 */  lui        $s6, %hi(gMasterGfxPos)
/* 2F6AC 8002EAAC 26D6B2FC */  addiu      $s6, $s6, %lo(gMasterGfxPos)
/* 2F6B0 8002EAB0 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2F6B4 8002EAB4 AFBE0040 */  sw         $fp, 0x40($sp)
/* 2F6B8 8002EAB8 AFB7003C */  sw         $s7, 0x3C($sp)
/* 2F6BC 8002EABC AFB50034 */  sw         $s5, 0x34($sp)
/* 2F6C0 8002EAC0 AFB40030 */  sw         $s4, 0x30($sp)
/* 2F6C4 8002EAC4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 2F6C8 8002EAC8 AFB20028 */  sw         $s2, 0x28($sp)
/* 2F6CC 8002EACC AFB10024 */  sw         $s1, 0x24($sp)
/* 2F6D0 8002EAD0 AFB00020 */  sw         $s0, 0x20($sp)
/* 2F6D4 8002EAD4 3C0E8006 */  lui        $t6, %hi(D_8005FA04)
/* 2F6D8 8002EAD8 8DCEFA04 */  lw         $t6, %lo(D_8005FA04)($t6)
/* 2F6DC 8002EADC AFA000E0 */  sw         $zero, 0xE0($sp)
/* 2F6E0 8002EAE0 AFA000DC */  sw         $zero, 0xDC($sp)
/* 2F6E4 8002EAE4 00004825 */  or         $t1, $zero, $zero
/* 2F6E8 8002EAE8 AFAE00EC */  sw         $t6, 0xEC($sp)
/* 2F6EC 8002EAEC 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F6F0 8002EAF0 3C198006 */  lui        $t9, %hi(D_8005FAA0)
/* 2F6F4 8002EAF4 2739FAA0 */  addiu      $t9, $t9, %lo(D_8005FAA0)
/* 2F6F8 8002EAF8 244F0008 */  addiu      $t7, $v0, 0x8
/* 2F6FC 8002EAFC AECF0000 */  sw         $t7, 0x0($s6)
/* 2F700 8002EB00 3C180600 */  lui        $t8, (0x6000000 >> 16)
/* 2F704 8002EB04 AC580000 */  sw         $t8, 0x0($v0)
/* 2F708 8002EB08 AC590004 */  sw         $t9, 0x4($v0)
/* 2F70C 8002EB0C 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F710 8002EB10 3C0EF900 */  lui        $t6, (0xF9000000 >> 16)
/* 2F714 8002EB14 240F0001 */  addiu      $t7, $zero, 0x1
/* 2F718 8002EB18 244D0008 */  addiu      $t5, $v0, 0x8
/* 2F71C 8002EB1C AECD0000 */  sw         $t5, 0x0($s6)
/* 2F720 8002EB20 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2F724 8002EB24 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2F728 8002EB28 3C058009 */  lui        $a1, %hi(D_800905E0)
/* 2F72C 8002EB2C 8CA505E0 */  lw         $a1, %lo(D_800905E0)($a1)
/* 2F730 8002EB30 24060001 */  addiu      $a2, $zero, 0x1
/* 2F734 8002EB34 241700FF */  addiu      $s7, $zero, 0xFF
/* 2F738 8002EB38 30A20007 */  andi       $v0, $a1, 0x7
/* 2F73C 8002EB3C 304400FF */  andi       $a0, $v0, 0xFF
/* 2F740 8002EB40 10C4000D */  beq        $a2, $a0, .L8002EB78
/* 2F744 8002EB44 241500FF */   addiu     $s5, $zero, 0xFF
/* 2F748 8002EB48 24070002 */  addiu      $a3, $zero, 0x2
/* 2F74C 8002EB4C 304300FF */  andi       $v1, $v0, 0xFF
/* 2F750 8002EB50 1067000F */  beq        $v1, $a3, .L8002EB90
/* 2F754 8002EB54 24080004 */   addiu     $t0, $zero, 0x4
/* 2F758 8002EB58 24020003 */  addiu      $v0, $zero, 0x3
/* 2F75C 8002EB5C 1062000F */  beq        $v1, $v0, .L8002EB9C
/* 2F760 8002EB60 24080004 */   addiu     $t0, $zero, 0x4
/* 2F764 8002EB64 24080004 */  addiu      $t0, $zero, 0x4
/* 2F768 8002EB68 5068000F */  beql       $v1, $t0, .L8002EBA8
/* 2F76C 8002EB6C A3A000EF */   sb        $zero, 0xEF($sp)
/* 2F770 8002EB70 1000000D */  b          .L8002EBA8
/* 2F774 8002EB74 00000000 */   nop
.L8002EB78:
/* 2F778 8002EB78 304300FF */  andi       $v1, $v0, 0xFF
/* 2F77C 8002EB7C 24020003 */  addiu      $v0, $zero, 0x3
/* 2F780 8002EB80 A3A000EC */  sb         $zero, 0xEC($sp)
/* 2F784 8002EB84 24080004 */  addiu      $t0, $zero, 0x4
/* 2F788 8002EB88 10000007 */  b          .L8002EBA8
/* 2F78C 8002EB8C 24070002 */   addiu     $a3, $zero, 0x2
.L8002EB90:
/* 2F790 8002EB90 A3A000ED */  sb         $zero, 0xED($sp)
/* 2F794 8002EB94 10000004 */  b          .L8002EBA8
/* 2F798 8002EB98 24020003 */   addiu     $v0, $zero, 0x3
.L8002EB9C:
/* 2F79C 8002EB9C 10000002 */  b          .L8002EBA8
/* 2F7A0 8002EBA0 A3A000EE */   sb        $zero, 0xEE($sp)
/* 2F7A4 8002EBA4 A3A000EF */  sb         $zero, 0xEF($sp)
.L8002EBA8:
/* 2F7A8 8002EBA8 10600002 */  beqz       $v1, .L8002EBB4
/* 2F7AC 8002EBAC 3C048009 */   lui       $a0, %hi(D_80090E7C)
/* 2F7B0 8002EBB0 00C04825 */  or         $t1, $a2, $zero
.L8002EBB4:
/* 2F7B4 8002EBB4 8C980E7C */  lw         $t8, %lo(D_80090E7C)($a0)
/* 2F7B8 8002EBB8 3C048009 */  lui        $a0, %hi(D_80091718)
/* 2F7BC 8002EBBC 33190007 */  andi       $t9, $t8, 0x7
/* 2F7C0 8002EBC0 10D90009 */  beq        $a2, $t9, .L8002EBE8
/* 2F7C4 8002EBC4 03209025 */   or        $s2, $t9, $zero
/* 2F7C8 8002EBC8 13270009 */  beq        $t9, $a3, .L8002EBF0
/* 2F7CC 8002EBCC 00000000 */   nop
/* 2F7D0 8002EBD0 13220009 */  beq        $t9, $v0, .L8002EBF8
/* 2F7D4 8002EBD4 00000000 */   nop
/* 2F7D8 8002EBD8 5328000A */  beql       $t9, $t0, .L8002EC04
/* 2F7DC 8002EBDC A3A600EF */   sb        $a2, 0xEF($sp)
/* 2F7E0 8002EBE0 10000008 */  b          .L8002EC04
/* 2F7E4 8002EBE4 00000000 */   nop
.L8002EBE8:
/* 2F7E8 8002EBE8 10000006 */  b          .L8002EC04
/* 2F7EC 8002EBEC A3A600EC */   sb        $a2, 0xEC($sp)
.L8002EBF0:
/* 2F7F0 8002EBF0 10000004 */  b          .L8002EC04
/* 2F7F4 8002EBF4 A3A600ED */   sb        $a2, 0xED($sp)
.L8002EBF8:
/* 2F7F8 8002EBF8 10000002 */  b          .L8002EC04
/* 2F7FC 8002EBFC A3A600EE */   sb        $a2, 0xEE($sp)
/* 2F800 8002EC00 A3A600EF */  sb         $a2, 0xEF($sp)
.L8002EC04:
/* 2F804 8002EC04 12400002 */  beqz       $s2, .L8002EC10
/* 2F808 8002EC08 24190003 */   addiu     $t9, $zero, 0x3
/* 2F80C 8002EC0C 25290001 */  addiu      $t1, $t1, 0x1
.L8002EC10:
/* 2F810 8002EC10 8C8D1718 */  lw         $t5, %lo(D_80091718)($a0)
/* 2F814 8002EC14 3C048009 */  lui        $a0, %hi(D_80091FB4)
/* 2F818 8002EC18 31AE0007 */  andi       $t6, $t5, 0x7
/* 2F81C 8002EC1C 10CE0009 */  beq        $a2, $t6, .L8002EC44
/* 2F820 8002EC20 01C09025 */   or        $s2, $t6, $zero
/* 2F824 8002EC24 11C70009 */  beq        $t6, $a3, .L8002EC4C
/* 2F828 8002EC28 00000000 */   nop
/* 2F82C 8002EC2C 11C20009 */  beq        $t6, $v0, .L8002EC54
/* 2F830 8002EC30 00000000 */   nop
/* 2F834 8002EC34 51C8000A */  beql       $t6, $t0, .L8002EC60
/* 2F838 8002EC38 A3A700EF */   sb        $a3, 0xEF($sp)
/* 2F83C 8002EC3C 10000008 */  b          .L8002EC60
/* 2F840 8002EC40 00000000 */   nop
.L8002EC44:
/* 2F844 8002EC44 10000006 */  b          .L8002EC60
/* 2F848 8002EC48 A3A700EC */   sb        $a3, 0xEC($sp)
.L8002EC4C:
/* 2F84C 8002EC4C 10000004 */  b          .L8002EC60
/* 2F850 8002EC50 A3A700ED */   sb        $a3, 0xED($sp)
.L8002EC54:
/* 2F854 8002EC54 10000002 */  b          .L8002EC60
/* 2F858 8002EC58 A3A700EE */   sb        $a3, 0xEE($sp)
/* 2F85C 8002EC5C A3A700EF */  sb         $a3, 0xEF($sp)
.L8002EC60:
/* 2F860 8002EC60 12400002 */  beqz       $s2, .L8002EC6C
/* 2F864 8002EC64 00000000 */   nop
/* 2F868 8002EC68 25290001 */  addiu      $t1, $t1, 0x1
.L8002EC6C:
/* 2F86C 8002EC6C 8C8F1FB4 */  lw         $t7, %lo(D_80091FB4)($a0)
/* 2F870 8002EC70 31F80007 */  andi       $t8, $t7, 0x7
/* 2F874 8002EC74 10D80009 */  beq        $a2, $t8, .L8002EC9C
/* 2F878 8002EC78 03009025 */   or        $s2, $t8, $zero
/* 2F87C 8002EC7C 13070009 */  beq        $t8, $a3, .L8002ECA4
/* 2F880 8002EC80 240D0003 */   addiu     $t5, $zero, 0x3
/* 2F884 8002EC84 13020009 */  beq        $t8, $v0, .L8002ECAC
/* 2F888 8002EC88 240E0003 */   addiu     $t6, $zero, 0x3
/* 2F88C 8002EC8C 13080009 */  beq        $t8, $t0, .L8002ECB4
/* 2F890 8002EC90 240F0003 */   addiu     $t7, $zero, 0x3
/* 2F894 8002EC94 10000008 */  b          .L8002ECB8
/* 2F898 8002EC98 00000000 */   nop
.L8002EC9C:
/* 2F89C 8002EC9C 10000006 */  b          .L8002ECB8
/* 2F8A0 8002ECA0 A3B900EC */   sb        $t9, 0xEC($sp)
.L8002ECA4:
/* 2F8A4 8002ECA4 10000004 */  b          .L8002ECB8
/* 2F8A8 8002ECA8 A3AD00ED */   sb        $t5, 0xED($sp)
.L8002ECAC:
/* 2F8AC 8002ECAC 10000002 */  b          .L8002ECB8
/* 2F8B0 8002ECB0 A3AE00EE */   sb        $t6, 0xEE($sp)
.L8002ECB4:
/* 2F8B4 8002ECB4 A3AF00EF */  sb         $t7, 0xEF($sp)
.L8002ECB8:
/* 2F8B8 8002ECB8 12400002 */  beqz       $s2, .L8002ECC4
/* 2F8BC 8002ECBC 3C188006 */   lui       $t8, %hi(D_8005FB80)
/* 2F8C0 8002ECC0 25290001 */  addiu      $t1, $t1, 0x1
.L8002ECC4:
/* 2F8C4 8002ECC4 2718FB80 */  addiu      $t8, $t8, %lo(D_8005FB80)
/* 2F8C8 8002ECC8 27B900EC */  addiu      $t9, $sp, 0xEC
/* 2F8CC 8002ECCC AFB90054 */  sw         $t9, 0x54($sp)
/* 2F8D0 8002ECD0 AFB80058 */  sw         $t8, 0x58($sp)
/* 2F8D4 8002ECD4 AFA900D8 */  sw         $t1, 0xD8($sp)
.L8002ECD8:
/* 2F8D8 8002ECD8 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
/* 2F8DC 8002ECDC 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F8E0 8002ECE0 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
/* 2F8E4 8002ECE4 244D0008 */  addiu      $t5, $v0, 0x8
/* 2F8E8 8002ECE8 AECD0000 */  sw         $t5, 0x0($s6)
/* 2F8EC 8002ECEC AC400004 */  sw         $zero, 0x4($v0)
/* 2F8F0 8002ECF0 AC4C0000 */  sw         $t4, 0x0($v0)
/* 2F8F4 8002ECF4 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F8F8 8002ECF8 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
/* 2F8FC 8002ECFC 34188000 */  ori        $t8, $zero, 0x8000
/* 2F900 8002ED00 244E0008 */  addiu      $t6, $v0, 0x8
/* 2F904 8002ED04 AECE0000 */  sw         $t6, 0x0($s6)
/* 2F908 8002ED08 AC580004 */  sw         $t8, 0x4($v0)
/* 2F90C 8002ED0C AC4F0000 */  sw         $t7, 0x0($v0)
/* 2F910 8002ED10 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F914 8002ED14 24590008 */  addiu      $t9, $v0, 0x8
/* 2F918 8002ED18 AED90000 */  sw         $t9, 0x0($s6)
/* 2F91C 8002ED1C AC400004 */  sw         $zero, 0x4($v0)
/* 2F920 8002ED20 AC4C0000 */  sw         $t4, 0x0($v0)
/* 2F924 8002ED24 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F928 8002ED28 3C0EFD10 */  lui        $t6, (0xFD100000 >> 16)
/* 2F92C 8002ED2C 244D0008 */  addiu      $t5, $v0, 0x8
/* 2F930 8002ED30 AECD0000 */  sw         $t5, 0x0($s6)
/* 2F934 8002ED34 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2F938 8002ED38 8FAF0058 */  lw         $t7, 0x58($sp)
/* 2F93C 8002ED3C 3C0EF500 */  lui        $t6, (0xF5000100 >> 16)
/* 2F940 8002ED40 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2F944 8002ED44 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F948 8002ED48 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
/* 2F94C 8002ED4C 24580008 */  addiu      $t8, $v0, 0x8
/* 2F950 8002ED50 AED80000 */  sw         $t8, 0x0($s6)
/* 2F954 8002ED54 AC400004 */  sw         $zero, 0x4($v0)
/* 2F958 8002ED58 AC590000 */  sw         $t9, 0x0($v0)
/* 2F95C 8002ED5C 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F960 8002ED60 35CE0100 */  ori        $t6, $t6, (0xF5000100 & 0xFFFF)
/* 2F964 8002ED64 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 2F968 8002ED68 244D0008 */  addiu      $t5, $v0, 0x8
/* 2F96C 8002ED6C AECD0000 */  sw         $t5, 0x0($s6)
/* 2F970 8002ED70 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2F974 8002ED74 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2F978 8002ED78 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F97C 8002ED7C 3C19E600 */  lui        $t9, (0xE6000000 >> 16)
/* 2F980 8002ED80 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
/* 2F984 8002ED84 24580008 */  addiu      $t8, $v0, 0x8
/* 2F988 8002ED88 AED80000 */  sw         $t8, 0x0($s6)
/* 2F98C 8002ED8C AC400004 */  sw         $zero, 0x4($v0)
/* 2F990 8002ED90 AC590000 */  sw         $t9, 0x0($v0)
/* 2F994 8002ED94 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F998 8002ED98 3C0F073F */  lui        $t7, (0x73FC000 >> 16)
/* 2F99C 8002ED9C 35EFC000 */  ori        $t7, $t7, (0x73FC000 & 0xFFFF)
/* 2F9A0 8002EDA0 244D0008 */  addiu      $t5, $v0, 0x8
/* 2F9A4 8002EDA4 AECD0000 */  sw         $t5, 0x0($s6)
/* 2F9A8 8002EDA8 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2F9AC 8002EDAC AC4E0000 */  sw         $t6, 0x0($v0)
/* 2F9B0 8002EDB0 8EC20000 */  lw         $v0, 0x0($s6)
/* 2F9B4 8002EDB4 24580008 */  addiu      $t8, $v0, 0x8
/* 2F9B8 8002EDB8 AED80000 */  sw         $t8, 0x0($s6)
/* 2F9BC 8002EDBC AC400004 */  sw         $zero, 0x4($v0)
/* 2F9C0 8002EDC0 AC4C0000 */  sw         $t4, 0x0($v0)
/* 2F9C4 8002EDC4 8FB90054 */  lw         $t9, 0x54($sp)
/* 2F9C8 8002EDC8 833E0000 */  lb         $fp, 0x0($t9)
/* 2F9CC 8002EDCC 07C00319 */  bltz       $fp, .L8002FA34
/* 2F9D0 8002EDD0 001E6900 */   sll       $t5, $fp, 4
/* 2F9D4 8002EDD4 01BE6821 */  addu       $t5, $t5, $fp
/* 2F9D8 8002EDD8 000D6880 */  sll        $t5, $t5, 2
/* 2F9DC 8002EDDC 01BE6821 */  addu       $t5, $t5, $fp
/* 2F9E0 8002EDE0 000D68C0 */  sll        $t5, $t5, 3
/* 2F9E4 8002EDE4 01BE6823 */  subu       $t5, $t5, $fp
/* 2F9E8 8002EDE8 3C0E8009 */  lui        $t6, %hi(D_800905E0)
/* 2F9EC 8002EDEC 25CE05E0 */  addiu      $t6, $t6, %lo(D_800905E0)
/* 2F9F0 8002EDF0 000D6880 */  sll        $t5, $t5, 2
/* 2F9F4 8002EDF4 01AE9821 */  addu       $s3, $t5, $t6
/* 2F9F8 8002EDF8 8E620000 */  lw         $v0, 0x0($s3)
/* 2F9FC 8002EDFC 000278C0 */  sll        $t7, $v0, 3
/* 2FA00 8002EE00 05E3000F */  bgezl      $t7, .L8002EE40
/* 2FA04 8002EE04 000279C0 */   sll       $t7, $v0, 7
/* 2FA08 8002EE08 0C00BECC */  jal        func_8002FB30
/* 2FA0C 8002EE0C 03C02025 */   or        $a0, $fp, $zero
/* 2FA10 8002EE10 04430309 */  bgezl      $v0, .L8002FA38
/* 2FA14 8002EE14 8FAD0054 */   lw        $t5, 0x54($sp)
/* 2FA18 8002EE18 8E780000 */  lw         $t8, 0x0($s3)
/* 2FA1C 8002EE1C 3C01EFFF */  lui        $at, (0xEFFFFFFF >> 16)
/* 2FA20 8002EE20 3421FFFF */  ori        $at, $at, (0xEFFFFFFF & 0xFFFF)
/* 2FA24 8002EE24 0301C824 */  and        $t9, $t8, $at
/* 2FA28 8002EE28 3C01A800 */  lui        $at, (0xA8000000 >> 16)
/* 2FA2C 8002EE2C AE790000 */  sw         $t9, 0x0($s3)
/* 2FA30 8002EE30 03217025 */  or         $t6, $t9, $at
/* 2FA34 8002EE34 100002FF */  b          .L8002FA34
/* 2FA38 8002EE38 AE6E0000 */   sw        $t6, 0x0($s3)
/* 2FA3C 8002EE3C 000279C0 */  sll        $t7, $v0, 7
.L8002EE40:
/* 2FA40 8002EE40 05E1003F */  bgez       $t7, .L8002EF40
/* 2FA44 8002EE44 0002C080 */   sll       $t8, $v0, 2
/* 2FA48 8002EE48 0C00BECC */  jal        func_8002FB30
/* 2FA4C 8002EE4C 03C02025 */   or        $a0, $fp, $zero
/* 2FA50 8002EE50 044102F8 */  bgez       $v0, .L8002FA34
/* 2FA54 8002EE54 00008825 */   or        $s1, $zero, $zero
/* 2FA58 8002EE58 3C108009 */  lui        $s0, %hi(D_800905E0)
/* 2FA5C 8002EE5C AE600000 */  sw         $zero, 0x0($s3)
/* 2FA60 8002EE60 261005E0 */  addiu      $s0, $s0, %lo(D_800905E0)
.L8002EE64:
/* 2FA64 8002EE64 8E020000 */  lw         $v0, 0x0($s0)
/* 2FA68 8002EE68 2401FFF8 */  addiu      $at, $zero, -0x8
/* 2FA6C 8002EE6C 30580007 */  andi       $t8, $v0, 0x7
/* 2FA70 8002EE70 1300001E */  beqz       $t8, .L8002EEEC
/* 2FA74 8002EE74 27040001 */   addiu     $a0, $t8, 0x1
/* 2FA78 8002EE78 00416824 */  and        $t5, $v0, $at
/* 2FA7C 8002EE7C 309900FF */  andi       $t9, $a0, 0xFF
/* 2FA80 8002EE80 AE0D0000 */  sw         $t5, 0x0($s0)
/* 2FA84 8002EE84 01B97825 */  or         $t7, $t5, $t9
/* 2FA88 8002EE88 2B210004 */  slti       $at, $t9, 0x4
/* 2FA8C 8002EE8C 14200017 */  bnez       $at, .L8002EEEC
/* 2FA90 8002EE90 AE0F0000 */   sw        $t7, 0x0($s0)
/* 2FA94 8002EE94 3C01FFBF */  lui        $at, (0xFFBFFFFF >> 16)
/* 2FA98 8002EE98 3421FFFF */  ori        $at, $at, (0xFFBFFFFF & 0xFFFF)
/* 2FA9C 8002EE9C 01E1C824 */  and        $t9, $t7, $at
/* 2FAA0 8002EEA0 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 2FAA4 8002EEA4 AE190000 */  sw         $t9, 0x0($s0)
/* 2FAA8 8002EEA8 03217025 */  or         $t6, $t9, $at
/* 2FAAC 8002EEAC AE0E0000 */  sw         $t6, 0x0($s0)
/* 2FAB0 8002EEB0 8E6F0000 */  lw         $t7, 0x0($s3)
/* 2FAB4 8002EEB4 02202025 */  or         $a0, $s1, $zero
/* 2FAB8 8002EEB8 000FC300 */  sll        $t8, $t7, 12
/* 2FABC 8002EEBC 0703000C */  bgezl      $t8, .L8002EEF0
/* 2FAC0 8002EEC0 26310001 */   addiu     $s1, $s1, 0x1
/* 2FAC4 8002EEC4 0C00B98A */  jal        func_8002E628
/* 2FAC8 8002EEC8 24050001 */   addiu     $a1, $zero, 0x1
/* 2FACC 8002EECC 8E190000 */  lw         $t9, 0x0($s0)
/* 2FAD0 8002EED0 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 2FAD4 8002EED4 03216825 */  or         $t5, $t9, $at
/* 2FAD8 8002EED8 3C017FFF */  lui        $at, (0x7FFFFFFF >> 16)
/* 2FADC 8002EEDC 3421FFFF */  ori        $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 2FAE0 8002EEE0 AE0D0000 */  sw         $t5, 0x0($s0)
/* 2FAE4 8002EEE4 01A17824 */  and        $t7, $t5, $at
/* 2FAE8 8002EEE8 AE0F0000 */  sw         $t7, 0x0($s0)
.L8002EEEC:
/* 2FAEC 8002EEEC 26310001 */  addiu      $s1, $s1, 0x1
.L8002EEF0:
/* 2FAF0 8002EEF0 24010004 */  addiu      $at, $zero, 0x4
/* 2FAF4 8002EEF4 1621FFDB */  bne        $s1, $at, .L8002EE64
/* 2FAF8 8002EEF8 2610089C */   addiu     $s0, $s0, 0x89C
/* 2FAFC 8002EEFC 03C02025 */  or         $a0, $fp, $zero
/* 2FB00 8002EF00 0C00B98A */  jal        func_8002E628
/* 2FB04 8002EF04 00002825 */   or        $a1, $zero, $zero
/* 2FB08 8002EF08 3C028009 */  lui        $v0, %hi(D_800905C0)
/* 2FB0C 8002EF0C 244205C0 */  addiu      $v0, $v0, %lo(D_800905C0)
/* 2FB10 8002EF10 8C580000 */  lw         $t8, 0x0($v0)
/* 2FB14 8002EF14 8FAD00D8 */  lw         $t5, 0xD8($sp)
/* 2FB18 8002EF18 2719FFFF */  addiu      $t9, $t8, -0x1
/* 2FB1C 8002EF1C 1DA002C5 */  bgtz       $t5, .L8002FA34
/* 2FB20 8002EF20 AC590000 */   sw        $t9, 0x0($v0)
/* 2FB24 8002EF24 3C028008 */  lui        $v0, %hi(D_8007B2E4)
/* 2FB28 8002EF28 2442B2E4 */  addiu      $v0, $v0, %lo(D_8007B2E4)
/* 2FB2C 8002EF2C 8C4E0000 */  lw         $t6, 0x0($v0)
/* 2FB30 8002EF30 2401FFFD */  addiu      $at, $zero, -0x3
/* 2FB34 8002EF34 01C17824 */  and        $t7, $t6, $at
/* 2FB38 8002EF38 100002BE */  b          .L8002FA34
/* 2FB3C 8002EF3C AC4F0000 */   sw        $t7, 0x0($v0)
.L8002EF40:
/* 2FB40 8002EF40 070302B8 */  bgezl      $t8, .L8002FA24
/* 2FB44 8002EF44 8FB900E0 */   lw        $t9, 0xE0($sp)
/* 2FB48 8002EF48 0C00BFA9 */  jal        func_8002FEA4
/* 2FB4C 8002EF4C 03C02025 */   or        $a0, $fp, $zero
/* 2FB50 8002EF50 8E620000 */  lw         $v0, 0x0($s3)
/* 2FB54 8002EF54 0002C840 */  sll        $t9, $v0, 1
/* 2FB58 8002EF58 072100EF */  bgez       $t9, .L8002F318
/* 2FB5C 8002EF5C 0002C000 */   sll       $t8, $v0, 0
/* 2FB60 8002EF60 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FB64 8002EF64 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 2FB68 8002EF68 244D0008 */  addiu      $t5, $v0, 0x8
/* 2FB6C 8002EF6C AECD0000 */  sw         $t5, 0x0($s6)
/* 2FB70 8002EF70 AC400004 */  sw         $zero, 0x4($v0)
/* 2FB74 8002EF74 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2FB78 8002EF78 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FB7C 8002EF7C 3C18FB00 */  lui        $t8, (0xFB000000 >> 16)
/* 2FB80 8002EF80 2419FFCC */  addiu      $t9, $zero, -0x34
/* 2FB84 8002EF84 244F0008 */  addiu      $t7, $v0, 0x8
/* 2FB88 8002EF88 AECF0000 */  sw         $t7, 0x0($s6)
/* 2FB8C 8002EF8C AC590004 */  sw         $t9, 0x4($v0)
/* 2FB90 8002EF90 AC580000 */  sw         $t8, 0x0($v0)
/* 2FB94 8002EF94 86630038 */  lh         $v1, 0x38($s3)
/* 2FB98 8002EF98 86740004 */  lh         $s4, 0x4($s3)
/* 2FB9C 8002EF9C 86720006 */  lh         $s2, 0x6($s3)
/* 2FBA0 8002EFA0 00008025 */  or         $s0, $zero, $zero
/* 2FBA4 8002EFA4 26940006 */  addiu      $s4, $s4, 0x6
/* 2FBA8 8002EFA8 18600016 */  blez       $v1, .L8002F004
/* 2FBAC 8002EFAC 26520006 */   addiu     $s2, $s2, 0x6
/* 2FBB0 8002EFB0 001E6900 */  sll        $t5, $fp, 4
/* 2FBB4 8002EFB4 01BE6821 */  addu       $t5, $t5, $fp
/* 2FBB8 8002EFB8 000D6880 */  sll        $t5, $t5, 2
/* 2FBBC 8002EFBC 01BE6821 */  addu       $t5, $t5, $fp
/* 2FBC0 8002EFC0 000D68C0 */  sll        $t5, $t5, 3
/* 2FBC4 8002EFC4 01BE6823 */  subu       $t5, $t5, $fp
/* 2FBC8 8002EFC8 000D6880 */  sll        $t5, $t5, 2
/* 2FBCC 8002EFCC 3C0F8009 */  lui        $t7, %hi(D_800905E0)
/* 2FBD0 8002EFD0 25EF05E0 */  addiu      $t7, $t7, %lo(D_800905E0)
/* 2FBD4 8002EFD4 25AE003C */  addiu      $t6, $t5, 0x3C
/* 2FBD8 8002EFD8 01CF8821 */  addu       $s1, $t6, $t7
.L8002EFDC:
/* 2FBDC 8002EFDC 02802025 */  or         $a0, $s4, $zero
/* 2FBE0 8002EFE0 02402825 */  or         $a1, $s2, $zero
/* 2FBE4 8002EFE4 0C00C3A8 */  jal        func_80030EA0
/* 2FBE8 8002EFE8 02203025 */   or        $a2, $s1, $zero
/* 2FBEC 8002EFEC 86630038 */  lh         $v1, 0x38($s3)
/* 2FBF0 8002EFF0 26100001 */  addiu      $s0, $s0, 0x1
/* 2FBF4 8002EFF4 26310018 */  addiu      $s1, $s1, 0x18
/* 2FBF8 8002EFF8 0203082A */  slt        $at, $s0, $v1
/* 2FBFC 8002EFFC 1420FFF7 */  bnez       $at, .L8002EFDC
/* 2FC00 8002F000 2652000A */   addiu     $s2, $s2, 0xA
.L8002F004:
/* 2FC04 8002F004 8E780000 */  lw         $t8, 0x0($s3)
/* 2FC08 8002F008 3C0D8009 */  lui        $t5, %hi(D_80092876)
/* 2FC0C 8002F00C 0018C800 */  sll        $t9, $t8, 0
/* 2FC10 8002F010 07230284 */  bgezl      $t9, .L8002FA24
/* 2FC14 8002F014 8FB900E0 */   lw        $t9, 0xE0($sp)
/* 2FC18 8002F018 95AD2876 */  lhu        $t5, %lo(D_80092876)($t5)
/* 2FC1C 8002F01C 00003825 */  or         $a3, $zero, $zero
/* 2FC20 8002F020 31AEA000 */  andi       $t6, $t5, 0xA000
/* 2FC24 8002F024 11C0001A */  beqz       $t6, .L8002F090
/* 2FC28 8002F028 00002025 */   or        $a0, $zero, $zero
/* 2FC2C 8002F02C 24050001 */  addiu      $a1, $zero, 0x1
/* 2FC30 8002F030 32A600FF */  andi       $a2, $s5, 0xFF
/* 2FC34 8002F034 0C009A35 */  jal        func_800268D4
/* 2FC38 8002F038 AFA00100 */   sw        $zero, 0x100($sp)
/* 2FC3C 8002F03C 8E6F0000 */  lw         $t7, 0x0($s3)
/* 2FC40 8002F040 8FA70100 */  lw         $a3, 0x100($sp)
/* 2FC44 8002F044 03C02025 */  or         $a0, $fp, $zero
/* 2FC48 8002F048 000FC300 */  sll        $t8, $t7, 12
/* 2FC4C 8002F04C 07010005 */  bgez       $t8, .L8002F064
/* 2FC50 8002F050 24050001 */   addiu     $a1, $zero, 0x1
/* 2FC54 8002F054 82790015 */  lb         $t9, 0x15($s3)
/* 2FC58 8002F058 3C018009 */  lui        $at, %hi(D_8008FD28)
/* 2FC5C 8002F05C 10000004 */  b          .L8002F070
/* 2FC60 8002F060 A039FD28 */   sb        $t9, %lo(D_8008FD28)($at)
.L8002F064:
/* 2FC64 8002F064 826D0015 */  lb         $t5, 0x15($s3)
/* 2FC68 8002F068 3C018009 */  lui        $at, %hi(D_800905C4)
/* 2FC6C 8002F06C AC2D05C4 */  sw         $t5, %lo(D_800905C4)($at)
.L8002F070:
/* 2FC70 8002F070 0C00B98A */  jal        func_8002E628
/* 2FC74 8002F074 AFA70100 */   sw        $a3, 0x100($sp)
/* 2FC78 8002F078 8E6E0000 */  lw         $t6, 0x0($s3)
/* 2FC7C 8002F07C 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 2FC80 8002F080 8FA70100 */  lw         $a3, 0x100($sp)
/* 2FC84 8002F084 01C17825 */  or         $t7, $t6, $at
/* 2FC88 8002F088 10000032 */  b          .L8002F154
/* 2FC8C 8002F08C AE6F0000 */   sw        $t7, 0x0($s3)
.L8002F090:
/* 2FC90 8002F090 3C028009 */  lui        $v0, %hi(D_80092872)
/* 2FC94 8002F094 80422872 */  lb         $v0, %lo(D_80092872)($v0)
/* 2FC98 8002F098 28410015 */  slti       $at, $v0, 0x15
/* 2FC9C 8002F09C 54200011 */  bnel       $at, $zero, .L8002F0E4
/* 2FCA0 8002F0A0 2841FFEC */   slti      $at, $v0, -0x14
/* 2FCA4 8002F0A4 92780016 */  lbu        $t8, 0x16($s3)
/* 2FCA8 8002F0A8 240E0001 */  addiu      $t6, $zero, 0x1
/* 2FCAC 8002F0AC 00002025 */  or         $a0, $zero, $zero
/* 2FCB0 8002F0B0 1700001F */  bnez       $t8, .L8002F130
/* 2FCB4 8002F0B4 00002825 */   or        $a1, $zero, $zero
/* 2FCB8 8002F0B8 82790015 */  lb         $t9, 0x15($s3)
/* 2FCBC 8002F0BC A26E0016 */  sb         $t6, 0x16($s3)
/* 2FCC0 8002F0C0 32A600FF */  andi       $a2, $s5, 0xFF
/* 2FCC4 8002F0C4 272DFFFF */  addiu      $t5, $t9, -0x1
/* 2FCC8 8002F0C8 A26D0015 */  sb         $t5, 0x15($s3)
/* 2FCCC 8002F0CC 0C009A35 */  jal        func_800268D4
/* 2FCD0 8002F0D0 AFA70100 */   sw        $a3, 0x100($sp)
/* 2FCD4 8002F0D4 8FA70100 */  lw         $a3, 0x100($sp)
/* 2FCD8 8002F0D8 10000015 */  b          .L8002F130
/* 2FCDC 8002F0DC 86630038 */   lh        $v1, 0x38($s3)
/* 2FCE0 8002F0E0 2841FFEC */  slti       $at, $v0, -0x14
.L8002F0E4:
/* 2FCE4 8002F0E4 50200011 */  beql       $at, $zero, .L8002F12C
/* 2FCE8 8002F0E8 A2600016 */   sb        $zero, 0x16($s3)
/* 2FCEC 8002F0EC 926F0016 */  lbu        $t7, 0x16($s3)
/* 2FCF0 8002F0F0 240D0001 */  addiu      $t5, $zero, 0x1
/* 2FCF4 8002F0F4 00002025 */  or         $a0, $zero, $zero
/* 2FCF8 8002F0F8 15E0000D */  bnez       $t7, .L8002F130
/* 2FCFC 8002F0FC 00002825 */   or        $a1, $zero, $zero
/* 2FD00 8002F100 82780015 */  lb         $t8, 0x15($s3)
/* 2FD04 8002F104 A26D0016 */  sb         $t5, 0x16($s3)
/* 2FD08 8002F108 32A600FF */  andi       $a2, $s5, 0xFF
/* 2FD0C 8002F10C 27190001 */  addiu      $t9, $t8, 0x1
/* 2FD10 8002F110 A2790015 */  sb         $t9, 0x15($s3)
/* 2FD14 8002F114 0C009A35 */  jal        func_800268D4
/* 2FD18 8002F118 AFA70100 */   sw        $a3, 0x100($sp)
/* 2FD1C 8002F11C 8FA70100 */  lw         $a3, 0x100($sp)
/* 2FD20 8002F120 10000003 */  b          .L8002F130
/* 2FD24 8002F124 86630038 */   lh        $v1, 0x38($s3)
/* 2FD28 8002F128 A2600016 */  sb         $zero, 0x16($s3)
.L8002F12C:
/* 2FD2C 8002F12C 86630038 */  lh         $v1, 0x38($s3)
.L8002F130:
/* 2FD30 8002F130 826C0015 */  lb         $t4, 0x15($s3)
/* 2FD34 8002F134 0183082A */  slt        $at, $t4, $v1
/* 2FD38 8002F138 14200003 */  bnez       $at, .L8002F148
/* 2FD3C 8002F13C 00000000 */   nop
/* 2FD40 8002F140 10000004 */  b          .L8002F154
/* 2FD44 8002F144 A2600015 */   sb        $zero, 0x15($s3)
.L8002F148:
/* 2FD48 8002F148 05810002 */  bgez       $t4, .L8002F154
/* 2FD4C 8002F14C 246EFFFF */   addiu     $t6, $v1, -0x1
/* 2FD50 8002F150 A26E0015 */  sb         $t6, 0x15($s3)
.L8002F154:
/* 2FD54 8002F154 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FD58 8002F158 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 2FD5C 8002F15C 244F0008 */  addiu      $t7, $v0, 0x8
/* 2FD60 8002F160 AECF0000 */  sw         $t7, 0x0($s6)
/* 2FD64 8002F164 AC400004 */  sw         $zero, 0x4($v0)
/* 2FD68 8002F168 AC580000 */  sw         $t8, 0x0($v0)
/* 2FD6C 8002F16C 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FD70 8002F170 3C0DFB00 */  lui        $t5, (0xFB000000 >> 16)
/* 2FD74 8002F174 240EFFFF */  addiu      $t6, $zero, -0x1
/* 2FD78 8002F178 24590008 */  addiu      $t9, $v0, 0x8
/* 2FD7C 8002F17C AED90000 */  sw         $t9, 0x0($s6)
/* 2FD80 8002F180 AC4E0004 */  sw         $t6, 0x4($v0)
/* 2FD84 8002F184 AC4D0000 */  sw         $t5, 0x0($v0)
/* 2FD88 8002F188 826C0015 */  lb         $t4, 0x15($s3)
/* 2FD8C 8002F18C 24040002 */  addiu      $a0, $zero, 0x2
/* 2FD90 8002F190 000C7880 */  sll        $t7, $t4, 2
/* 2FD94 8002F194 01EC7823 */  subu       $t7, $t7, $t4
/* 2FD98 8002F198 000F78C0 */  sll        $t7, $t7, 3
/* 2FD9C 8002F19C 026FC021 */  addu       $t8, $s3, $t7
/* 2FDA0 8002F1A0 9319003C */  lbu        $t9, 0x3C($t8)
/* 2FDA4 8002F1A4 12F9000D */  beq        $s7, $t9, .L8002F1DC
/* 2FDA8 8002F1A8 000C6880 */   sll       $t5, $t4, 2
/* 2FDAC 8002F1AC 01AC6823 */  subu       $t5, $t5, $t4
/* 2FDB0 8002F1B0 000D68C0 */  sll        $t5, $t5, 3
/* 2FDB4 8002F1B4 026D1021 */  addu       $v0, $s3, $t5
/* 2FDB8 8002F1B8 9043003C */  lbu        $v1, 0x3C($v0)
/* 2FDBC 8002F1BC 28610080 */  slti       $at, $v1, 0x80
.L8002F1C0:
/* 2FDC0 8002F1C0 50200003 */  beql       $at, $zero, .L8002F1D0
/* 2FDC4 8002F1C4 9043003D */   lbu       $v1, 0x3D($v0)
/* 2FDC8 8002F1C8 24E70001 */  addiu      $a3, $a3, 0x1
/* 2FDCC 8002F1CC 9043003D */  lbu        $v1, 0x3D($v0)
.L8002F1D0:
/* 2FDD0 8002F1D0 24420001 */  addiu      $v0, $v0, 0x1
/* 2FDD4 8002F1D4 56E3FFFA */  bnel       $s7, $v1, .L8002F1C0
/* 2FDD8 8002F1D8 28610080 */   slti      $at, $v1, 0x80
.L8002F1DC:
/* 2FDDC 8002F1DC 866E0004 */  lh         $t6, 0x4($s3)
/* 2FDE0 8002F1E0 86780006 */  lh         $t8, 0x6($s3)
/* 2FDE4 8002F1E4 000CC880 */  sll        $t9, $t4, 2
/* 2FDE8 8002F1E8 032CC821 */  addu       $t9, $t9, $t4
/* 2FDEC 8002F1EC 000778C0 */  sll        $t7, $a3, 3
/* 2FDF0 8002F1F0 0019C840 */  sll        $t9, $t9, 1
/* 2FDF4 8002F1F4 01CFA021 */  addu       $s4, $t6, $t7
/* 2FDF8 8002F1F8 03199021 */  addu       $s2, $t8, $t9
/* 2FDFC 8002F1FC 2694000A */  addiu      $s4, $s4, 0xA
/* 2FE00 8002F200 26520004 */  addiu      $s2, $s2, 0x4
/* 2FE04 8002F204 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FE08 8002F208 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 2FE0C 8002F20C 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
/* 2FE10 8002F210 244D0008 */  addiu      $t5, $v0, 0x8
/* 2FE14 8002F214 AECD0000 */  sw         $t5, 0x0($s6)
/* 2FE18 8002F218 AC400004 */  sw         $zero, 0x4($v0)
/* 2FE1C 8002F21C AC4E0000 */  sw         $t6, 0x0($v0)
/* 2FE20 8002F220 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FE24 8002F224 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
/* 2FE28 8002F228 34198000 */  ori        $t9, $zero, 0x8000
/* 2FE2C 8002F22C 244F0008 */  addiu      $t7, $v0, 0x8
/* 2FE30 8002F230 AECF0000 */  sw         $t7, 0x0($s6)
/* 2FE34 8002F234 AC590004 */  sw         $t9, 0x4($v0)
/* 2FE38 8002F238 AC580000 */  sw         $t8, 0x0($v0)
/* 2FE3C 8002F23C 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FE40 8002F240 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 2FE44 8002F244 02802825 */  or         $a1, $s4, $zero
/* 2FE48 8002F248 244D0008 */  addiu      $t5, $v0, 0x8
/* 2FE4C 8002F24C AECD0000 */  sw         $t5, 0x0($s6)
/* 2FE50 8002F250 AC400004 */  sw         $zero, 0x4($v0)
/* 2FE54 8002F254 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2FE58 8002F258 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FE5C 8002F25C 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
/* 2FE60 8002F260 02403025 */  or         $a2, $s2, $zero
/* 2FE64 8002F264 244F0008 */  addiu      $t7, $v0, 0x8
/* 2FE68 8002F268 AECF0000 */  sw         $t7, 0x0($s6)
/* 2FE6C 8002F26C AC580000 */  sw         $t8, 0x0($v0)
/* 2FE70 8002F270 8FB90058 */  lw         $t9, 0x58($sp)
/* 2FE74 8002F274 3C18F500 */  lui        $t8, (0xF5000100 >> 16)
/* 2FE78 8002F278 2407000C */  addiu      $a3, $zero, 0xC
/* 2FE7C 8002F27C AC590004 */  sw         $t9, 0x4($v0)
/* 2FE80 8002F280 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FE84 8002F284 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
/* 2FE88 8002F288 244D0008 */  addiu      $t5, $v0, 0x8
/* 2FE8C 8002F28C AECD0000 */  sw         $t5, 0x0($s6)
/* 2FE90 8002F290 AC400004 */  sw         $zero, 0x4($v0)
/* 2FE94 8002F294 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2FE98 8002F298 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FE9C 8002F29C 37180100 */  ori        $t8, $t8, (0xF5000100 & 0xFFFF)
/* 2FEA0 8002F2A0 3C190700 */  lui        $t9, (0x7000000 >> 16)
/* 2FEA4 8002F2A4 244F0008 */  addiu      $t7, $v0, 0x8
/* 2FEA8 8002F2A8 AECF0000 */  sw         $t7, 0x0($s6)
/* 2FEAC 8002F2AC AC590004 */  sw         $t9, 0x4($v0)
/* 2FEB0 8002F2B0 AC580000 */  sw         $t8, 0x0($v0)
/* 2FEB4 8002F2B4 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FEB8 8002F2B8 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 2FEBC 8002F2BC 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 2FEC0 8002F2C0 244D0008 */  addiu      $t5, $v0, 0x8
/* 2FEC4 8002F2C4 AECD0000 */  sw         $t5, 0x0($s6)
/* 2FEC8 8002F2C8 AC400004 */  sw         $zero, 0x4($v0)
/* 2FECC 8002F2CC AC4E0000 */  sw         $t6, 0x0($v0)
/* 2FED0 8002F2D0 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FED4 8002F2D4 3C19073F */  lui        $t9, (0x73FC000 >> 16)
/* 2FED8 8002F2D8 3739C000 */  ori        $t9, $t9, (0x73FC000 & 0xFFFF)
/* 2FEDC 8002F2DC 244F0008 */  addiu      $t7, $v0, 0x8
/* 2FEE0 8002F2E0 AECF0000 */  sw         $t7, 0x0($s6)
/* 2FEE4 8002F2E4 AC590004 */  sw         $t9, 0x4($v0)
/* 2FEE8 8002F2E8 AC580000 */  sw         $t8, 0x0($v0)
/* 2FEEC 8002F2EC 8EC20000 */  lw         $v0, 0x0($s6)
/* 2FEF0 8002F2F0 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 2FEF4 8002F2F4 240F000C */  addiu      $t7, $zero, 0xC
/* 2FEF8 8002F2F8 244D0008 */  addiu      $t5, $v0, 0x8
/* 2FEFC 8002F2FC AECD0000 */  sw         $t5, 0x0($s6)
/* 2FF00 8002F300 AC400004 */  sw         $zero, 0x4($v0)
/* 2FF04 8002F304 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2FF08 8002F308 0C00C1F6 */  jal        func_800307D8
/* 2FF0C 8002F30C AFAF0010 */   sw        $t7, 0x10($sp)
/* 2FF10 8002F310 100001C4 */  b          .L8002FA24
/* 2FF14 8002F314 8FB900E0 */   lw        $t9, 0xE0($sp)
.L8002F318:
/* 2FF18 8002F318 070101BF */  bgez       $t8, .L8002FA18
/* 2FF1C 8002F31C 0002C900 */   sll       $t9, $v0, 4
/* 2FF20 8002F320 0721019A */  bgez       $t9, .L8002F98C
/* 2FF24 8002F324 00026980 */   sll       $t5, $v0, 6
/* 2FF28 8002F328 00026940 */  sll        $t5, $v0, 5
/* 2FF2C 8002F32C 05A10064 */  bgez       $t5, .L8002F4C0
/* 2FF30 8002F330 3C068006 */   lui       $a2, %hi(D_8005FA00)
/* 2FF34 8002F334 3C0F8009 */  lui        $t7, %hi(D_80092876)
/* 2FF38 8002F338 95EF2876 */  lhu        $t7, %lo(D_80092876)($t7)
/* 2FF3C 8002F33C 240E0001 */  addiu      $t6, $zero, 0x1
/* 2FF40 8002F340 AFAE00E0 */  sw         $t6, 0xE0($sp)
/* 2FF44 8002F344 31F8A000 */  andi       $t8, $t7, 0xA000
/* 2FF48 8002F348 1300018A */  beqz       $t8, .L8002F974
/* 2FF4C 8002F34C 2405FFFF */   addiu     $a1, $zero, -0x1
/* 2FF50 8002F350 001E7100 */  sll        $t6, $fp, 4
/* 2FF54 8002F354 01DE7021 */  addu       $t6, $t6, $fp
/* 2FF58 8002F358 000E7080 */  sll        $t6, $t6, 2
/* 2FF5C 8002F35C 96710012 */  lhu        $s1, 0x12($s3)
/* 2FF60 8002F360 01DE7021 */  addu       $t6, $t6, $fp
/* 2FF64 8002F364 000E70C0 */  sll        $t6, $t6, 3
/* 2FF68 8002F368 92790014 */  lbu        $t9, 0x14($s3)
/* 2FF6C 8002F36C 01DE7023 */  subu       $t6, $t6, $fp
/* 2FF70 8002F370 3C0F8009 */  lui        $t7, %hi(D_800905E0)
/* 2FF74 8002F374 25EF05E0 */  addiu      $t7, $t7, %lo(D_800905E0)
/* 2FF78 8002F378 000E7080 */  sll        $t6, $t6, 2
/* 2FF7C 8002F37C 01CF4021 */  addu       $t0, $t6, $t7
/* 2FF80 8002F380 02716821 */  addu       $t5, $s3, $s1
/* 2FF84 8002F384 00003825 */  or         $a3, $zero, $zero
/* 2FF88 8002F388 02203025 */  or         $a2, $s1, $zero
/* 2FF8C 8002F38C 01114821 */  addu       $t1, $t0, $s1
/* 2FF90 8002F390 A1B9009C */  sb         $t9, 0x9C($t5)
/* 2FF94 8002F394 9124009C */  lbu        $a0, 0x9C($t1)
.L8002F398:
/* 2FF98 8002F398 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 2FF9C 8002F39C 2529FFFF */  addiu      $t1, $t1, -0x1
/* 2FFA0 8002F3A0 288100C0 */  slti       $at, $a0, 0xC0
/* 2FFA4 8002F3A4 1420000B */  bnez       $at, .L8002F3D4
/* 2FFA8 8002F3A8 00809025 */   or        $s2, $a0, $zero
/* 2FFAC 8002F3AC 2A4100E0 */  slti       $at, $s2, 0xE0
/* 2FFB0 8002F3B0 10200008 */  beqz       $at, .L8002F3D4
/* 2FFB4 8002F3B4 30F80001 */   andi      $t8, $a3, 0x1
/* 2FFB8 8002F3B8 17000006 */  bnez       $t8, .L8002F3D4
/* 2FFBC 8002F3BC 24A20001 */   addiu     $v0, $a1, 0x1
/* 2FFC0 8002F3C0 0102C821 */  addu       $t9, $t0, $v0
/* 2FFC4 8002F3C4 34ED0001 */  ori        $t5, $a3, 0x1
/* 2FFC8 8002F3C8 A324009C */  sb         $a0, 0x9C($t9)
/* 2FFCC 8002F3CC 00402825 */  or         $a1, $v0, $zero
/* 2FFD0 8002F3D0 01A03825 */  or         $a3, $t5, $zero
.L8002F3D4:
/* 2FFD4 8002F3D4 2A410080 */  slti       $at, $s2, 0x80
/* 2FFD8 8002F3D8 1420000A */  bnez       $at, .L8002F404
/* 2FFDC 8002F3DC 2A4100A0 */   slti      $at, $s2, 0xA0
/* 2FFE0 8002F3E0 10200008 */  beqz       $at, .L8002F404
/* 2FFE4 8002F3E4 30EE0002 */   andi      $t6, $a3, 0x2
/* 2FFE8 8002F3E8 15C00006 */  bnez       $t6, .L8002F404
/* 2FFEC 8002F3EC 24A20001 */   addiu     $v0, $a1, 0x1
/* 2FFF0 8002F3F0 01027821 */  addu       $t7, $t0, $v0
/* 2FFF4 8002F3F4 34F80002 */  ori        $t8, $a3, 0x2
/* 2FFF8 8002F3F8 A1E4009C */  sb         $a0, 0x9C($t7)
/* 2FFFC 8002F3FC 00402825 */  or         $a1, $v0, $zero
/* 30000 8002F400 03003825 */  or         $a3, $t8, $zero
.L8002F404:
/* 30004 8002F404 2A4100A0 */  slti       $at, $s2, 0xA0
/* 30008 8002F408 1420000A */  bnez       $at, .L8002F434
/* 3000C 8002F40C 2A4100B0 */   slti      $at, $s2, 0xB0
/* 30010 8002F410 10200008 */  beqz       $at, .L8002F434
/* 30014 8002F414 30F90004 */   andi      $t9, $a3, 0x4
/* 30018 8002F418 17200006 */  bnez       $t9, .L8002F434
/* 3001C 8002F41C 24A20001 */   addiu     $v0, $a1, 0x1
/* 30020 8002F420 01026821 */  addu       $t5, $t0, $v0
/* 30024 8002F424 34EE0004 */  ori        $t6, $a3, 0x4
/* 30028 8002F428 A1A4009C */  sb         $a0, 0x9C($t5)
/* 3002C 8002F42C 00402825 */  or         $a1, $v0, $zero
/* 30030 8002F430 01C03825 */  or         $a3, $t6, $zero
.L8002F434:
/* 30034 8002F434 04C3FFD8 */  bgezl      $a2, .L8002F398
/* 30038 8002F438 9124009C */   lbu       $a0, 0x9C($t1)
/* 3003C 8002F43C 01112021 */  addu       $a0, $t0, $s1
/* 30040 8002F440 01053021 */  addu       $a2, $t0, $a1
.L8002F444:
/* 30044 8002F444 908F009C */  lbu        $t7, 0x9C($a0)
/* 30048 8002F448 24A20001 */  addiu      $v0, $a1, 0x1
/* 3004C 8002F44C 0102C021 */  addu       $t8, $t0, $v0
/* 30050 8002F450 A30F009C */  sb         $t7, 0x9C($t8)
/* 30054 8002F454 90D9009D */  lbu        $t9, 0x9D($a2)
/* 30058 8002F458 00402825 */  or         $a1, $v0, $zero
/* 3005C 8002F45C 24C60001 */  addiu      $a2, $a2, 0x1
/* 30060 8002F460 16F9FFF8 */  bne        $s7, $t9, .L8002F444
/* 30064 8002F464 24840001 */   addiu     $a0, $a0, 0x1
/* 30068 8002F468 8E6F0000 */  lw         $t7, 0x0($s3)
/* 3006C 8002F46C 926E009D */  lbu        $t6, 0x9D($s3)
/* 30070 8002F470 3C01FBFF */  lui        $at, (0xFBFFFFFF >> 16)
/* 30074 8002F474 3421FFFF */  ori        $at, $at, (0xFBFFFFFF & 0xFFFF)
/* 30078 8002F478 240D0001 */  addiu      $t5, $zero, 0x1
/* 3007C 8002F47C 01E1C024 */  and        $t8, $t7, $at
/* 30080 8002F480 A66D0012 */  sh         $t5, 0x12($s3)
/* 30084 8002F484 A275009D */  sb         $s5, 0x9D($s3)
/* 30088 8002F488 AE780000 */  sw         $t8, 0x0($s3)
/* 3008C 8002F48C 00008825 */  or         $s1, $zero, $zero
/* 30090 8002F490 01002025 */  or         $a0, $t0, $zero
/* 30094 8002F494 24020400 */  addiu      $v0, $zero, 0x400
/* 30098 8002F498 A26E0014 */  sb         $t6, 0x14($s3)
.L8002F49C:
/* 3009C 8002F49C 26310004 */  addiu      $s1, $s1, 0x4
/* 300A0 8002F4A0 A095049D */  sb         $s5, 0x49D($a0)
/* 300A4 8002F4A4 A095049E */  sb         $s5, 0x49E($a0)
/* 300A8 8002F4A8 A095049F */  sb         $s5, 0x49F($a0)
/* 300AC 8002F4AC 24840004 */  addiu      $a0, $a0, 0x4
/* 300B0 8002F4B0 1622FFFA */  bne        $s1, $v0, .L8002F49C
/* 300B4 8002F4B4 A0950498 */   sb        $s5, 0x498($a0)
/* 300B8 8002F4B8 1000012E */  b          .L8002F974
/* 300BC 8002F4BC 00000000 */   nop
.L8002F4C0:
/* 300C0 8002F4C0 80C6FA00 */  lb         $a2, %lo(D_8005FA00)($a2)
/* 300C4 8002F4C4 3C010010 */  lui        $at, (0x100000 >> 16)
/* 300C8 8002F4C8 0041C025 */  or         $t8, $v0, $at
/* 300CC 8002F4CC 10C0000E */  beqz       $a2, .L8002F508
/* 300D0 8002F4D0 03011824 */   and       $v1, $t8, $at
/* 300D4 8002F4D4 3C010010 */  lui        $at, (0x100000 >> 16)
/* 300D8 8002F4D8 00411824 */  and        $v1, $v0, $at
/* 300DC 8002F4DC 1460000B */  bnez       $v1, .L8002F50C
/* 300E0 8002F4E0 3C198009 */   lui       $t9, %hi(D_80092876)
/* 300E4 8002F4E4 97392876 */  lhu        $t9, %lo(D_80092876)($t9)
/* 300E8 8002F4E8 3C010010 */  lui        $at, (0x100000 >> 16)
/* 300EC 8002F4EC 00417025 */  or         $t6, $v0, $at
/* 300F0 8002F4F0 332DA000 */  andi       $t5, $t9, 0xA000
/* 300F4 8002F4F4 11A00005 */  beqz       $t5, .L8002F50C
/* 300F8 8002F4F8 00000000 */   nop
/* 300FC 8002F4FC AE6E0000 */  sw         $t6, 0x0($s3)
/* 30100 8002F500 10000002 */  b          .L8002F50C
/* 30104 8002F504 01C11824 */   and       $v1, $t6, $at
.L8002F508:
/* 30108 8002F508 AE780000 */  sw         $t8, 0x0($s3)
.L8002F50C:
/* 3010C 8002F50C 1460005C */  bnez       $v1, .L8002F680
/* 30110 8002F510 00001025 */   or        $v0, $zero, $zero
/* 30114 8002F514 826D0010 */  lb         $t5, 0x10($s3)
/* 30118 8002F518 25AEFFFF */  addiu      $t6, $t5, -0x1
/* 3011C 8002F51C A26E0010 */  sb         $t6, 0x10($s3)
/* 30120 8002F520 826F0010 */  lb         $t7, 0x10($s3)
/* 30124 8002F524 1DE00113 */  bgtz       $t7, .L8002F974
/* 30128 8002F528 00000000 */   nop
/* 3012C 8002F52C 96650012 */  lhu        $a1, 0x12($s3)
/* 30130 8002F530 9278000F */  lbu        $t8, 0xF($s3)
/* 30134 8002F534 926D0014 */  lbu        $t5, 0x14($s3)
/* 30138 8002F538 24B90001 */  addiu      $t9, $a1, 0x1
/* 3013C 8002F53C A6790012 */  sh         $t9, 0x12($s3)
/* 30140 8002F540 02657021 */  addu       $t6, $s3, $a1
/* 30144 8002F544 A2780010 */  sb         $t8, 0x10($s3)
/* 30148 8002F548 24A20001 */  addiu      $v0, $a1, 0x1
/* 3014C 8002F54C A1CD009C */  sb         $t5, 0x9C($t6)
/* 30150 8002F550 92720014 */  lbu        $s2, 0x14($s3)
/* 30154 8002F554 02627821 */  addu       $t7, $s3, $v0
/* 30158 8002F558 91F8009C */  lbu        $t8, 0x9C($t7)
/* 3015C 8002F55C 264DFF1F */  addiu      $t5, $s2, -0xE1
/* 30160 8002F560 0262C821 */  addu       $t9, $s3, $v0
/* 30164 8002F564 2DA1001F */  sltiu      $at, $t5, 0x1F
/* 30168 8002F568 A2780014 */  sb         $t8, 0x14($s3)
/* 3016C 8002F56C 1020002C */  beqz       $at, .L8002F620
/* 30170 8002F570 A335009C */   sb        $s5, 0x9C($t9)
/* 30174 8002F574 000D6880 */  sll        $t5, $t5, 2
/* 30178 8002F578 3C018007 */  lui        $at, %hi(jtbl_800719D0)
/* 3017C 8002F57C 002D0821 */  addu       $at, $at, $t5
/* 30180 8002F580 8C2D19D0 */  lw         $t5, %lo(jtbl_800719D0)($at)
/* 30184 8002F584 01A00008 */  jr         $t5
/* 30188 8002F588 00000000 */   nop
glabel .L8002F58C
/* 3018C 8002F58C 8E6E0000 */  lw         $t6, 0x0($s3)
/* 30190 8002F590 3C010040 */  lui        $at, (0x400000 >> 16)
/* 30194 8002F594 24180001 */  addiu      $t8, $zero, 0x1
/* 30198 8002F598 01C17825 */  or         $t7, $t6, $at
/* 3019C 8002F59C AE6F0000 */  sw         $t7, 0x0($s3)
/* 301A0 8002F5A0 AFB800DC */  sw         $t8, 0xDC($sp)
/* 301A4 8002F5A4 0C00C19A */  jal        func_80030668
/* 301A8 8002F5A8 03C02025 */   or        $a0, $fp, $zero
/* 301AC 8002F5AC 8E790000 */  lw         $t9, 0x0($s3)
/* 301B0 8002F5B0 3C010004 */  lui        $at, (0x40000 >> 16)
/* 301B4 8002F5B4 03216825 */  or         $t5, $t9, $at
/* 301B8 8002F5B8 100000EE */  b          .L8002F974
/* 301BC 8002F5BC AE6D0000 */   sw        $t5, 0x0($s3)
glabel .L8002F5C0
/* 301C0 8002F5C0 8E6E0000 */  lw         $t6, 0x0($s3)
/* 301C4 8002F5C4 3C010400 */  lui        $at, (0x4000000 >> 16)
/* 301C8 8002F5C8 01C17825 */  or         $t7, $t6, $at
/* 301CC 8002F5CC 100000E9 */  b          .L8002F974
/* 301D0 8002F5D0 AE6F0000 */   sw        $t7, 0x0($s3)
glabel .L8002F5D4
/* 301D4 8002F5D4 8E780000 */  lw         $t8, 0x0($s3)
/* 301D8 8002F5D8 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 301DC 8002F5DC 0301C825 */  or         $t9, $t8, $at
/* 301E0 8002F5E0 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
/* 301E4 8002F5E4 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
/* 301E8 8002F5E8 AE790000 */  sw         $t9, 0x0($s3)
/* 301EC 8002F5EC 03217024 */  and        $t6, $t9, $at
/* 301F0 8002F5F0 0C00C35C */  jal        func_80030D70
/* 301F4 8002F5F4 AE6E0000 */   sw        $t6, 0x0($s3)
/* 301F8 8002F5F8 100000DE */  b          .L8002F974
/* 301FC 8002F5FC 00000000 */   nop
glabel .L8002F600
/* 30200 8002F600 324F0007 */  andi       $t7, $s2, 0x7
/* 30204 8002F604 3C188006 */  lui        $t8, %hi(D_8005F9B0)
/* 30208 8002F608 030FC021 */  addu       $t8, $t8, $t7
/* 3020C 8002F60C 8318F9B0 */  lb         $t8, %lo(D_8005F9B0)($t8)
/* 30210 8002F610 03060019 */  multu      $t8, $a2
/* 30214 8002F614 00001012 */  mflo       $v0
/* 30218 8002F618 A262000F */  sb         $v0, 0xF($s3)
/* 3021C 8002F61C A2620010 */  sb         $v0, 0x10($s3)
glabel .L8002F620
/* 30220 8002F620 00002025 */  or         $a0, $zero, $zero
/* 30224 8002F624 24050003 */  addiu      $a1, $zero, 0x3
/* 30228 8002F628 0C009A35 */  jal        func_800268D4
/* 3022C 8002F62C 32A600FF */   andi      $a2, $s5, 0xFF
/* 30230 8002F630 2A410080 */  slti       $at, $s2, 0x80
/* 30234 8002F634 142000CF */  bnez       $at, .L8002F974
/* 30238 8002F638 00000000 */   nop
.L8002F63C:
/* 3023C 8002F63C 96650012 */  lhu        $a1, 0x12($s3)
/* 30240 8002F640 926D0014 */  lbu        $t5, 0x14($s3)
/* 30244 8002F644 24B90001 */  addiu      $t9, $a1, 0x1
/* 30248 8002F648 A6790012 */  sh         $t9, 0x12($s3)
/* 3024C 8002F64C 02657021 */  addu       $t6, $s3, $a1
/* 30250 8002F650 24A20001 */  addiu      $v0, $a1, 0x1
/* 30254 8002F654 A1CD009C */  sb         $t5, 0x9C($t6)
/* 30258 8002F658 02627821 */  addu       $t7, $s3, $v0
/* 3025C 8002F65C 92640014 */  lbu        $a0, 0x14($s3)
/* 30260 8002F660 91F8009C */  lbu        $t8, 0x9C($t7)
/* 30264 8002F664 0262C821 */  addu       $t9, $s3, $v0
/* 30268 8002F668 28810080 */  slti       $at, $a0, 0x80
/* 3026C 8002F66C A2780014 */  sb         $t8, 0x14($s3)
/* 30270 8002F670 1020FFF2 */  beqz       $at, .L8002F63C
/* 30274 8002F674 A335009C */   sb        $s5, 0x9C($t9)
/* 30278 8002F678 100000BE */  b          .L8002F974
/* 3027C 8002F67C 00000000 */   nop
.L8002F680:
/* 30280 8002F680 96710012 */  lhu        $s1, 0x12($s3)
/* 30284 8002F684 926D0014 */  lbu        $t5, 0x14($s3)
/* 30288 8002F688 001EC100 */  sll        $t8, $fp, 4
/* 3028C 8002F68C 02712821 */  addu       $a1, $s3, $s1
/* 30290 8002F690 A0AD009C */  sb         $t5, 0x9C($a1)
/* 30294 8002F694 86660008 */  lh         $a2, 0x8($s3)
/* 30298 8002F698 031EC021 */  addu       $t8, $t8, $fp
/* 3029C 8002F69C 0018C080 */  sll        $t8, $t8, 2
/* 302A0 8002F6A0 031EC021 */  addu       $t8, $t8, $fp
/* 302A4 8002F6A4 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 302A8 8002F6A8 0018C0C0 */  sll        $t8, $t8, 3
/* 302AC 8002F6AC 031EC023 */  subu       $t8, $t8, $fp
/* 302B0 8002F6B0 0018C080 */  sll        $t8, $t8, 2
/* 302B4 8002F6B4 3C0D8009 */  lui        $t5, %hi(D_800905E0)
/* 302B8 8002F6B8 04C10003 */  bgez       $a2, .L8002F6C8
/* 302BC 8002F6BC 000670C3 */   sra       $t6, $a2, 3
/* 302C0 8002F6C0 24C10007 */  addiu      $at, $a2, 0x7
/* 302C4 8002F6C4 000170C3 */  sra        $t6, $at, 3
.L8002F6C8:
/* 302C8 8002F6C8 25AD05E0 */  addiu      $t5, $t5, %lo(D_800905E0)
/* 302CC 8002F6CC 0311C821 */  addu       $t9, $t8, $s1
/* 302D0 8002F6D0 00003825 */  or         $a3, $zero, $zero
/* 302D4 8002F6D4 000E3080 */  sll        $a2, $t6, 2
/* 302D8 8002F6D8 032D2021 */  addu       $a0, $t9, $t5
.L8002F6DC:
/* 302DC 8002F6DC 9083009C */  lbu        $v1, 0x9C($a0)
/* 302E0 8002F6E0 240100E0 */  addiu      $at, $zero, 0xE0
/* 302E4 8002F6E4 306E0080 */  andi       $t6, $v1, 0x80
/* 302E8 8002F6E8 51C00023 */  beql       $t6, $zero, .L8002F778
/* 302EC 8002F6EC 24420001 */   addiu     $v0, $v0, 0x1
/* 302F0 8002F6F0 54610046 */  bnel       $v1, $at, .L8002F80C
/* 302F4 8002F6F4 240100F2 */   addiu     $at, $zero, 0xF2
/* 302F8 8002F6F8 866F0008 */  lh         $t7, 0x8($s3)
/* 302FC 8002F6FC 25F8FFE0 */  addiu      $t8, $t7, -0x20
/* 30300 8002F700 07010003 */  bgez       $t8, .L8002F710
/* 30304 8002F704 0018C8C3 */   sra       $t9, $t8, 3
/* 30308 8002F708 27010007 */  addiu      $at, $t8, 0x7
/* 3030C 8002F70C 0001C8C3 */  sra        $t9, $at, 3
.L8002F710:
/* 30310 8002F710 00F93821 */  addu       $a3, $a3, $t9
/* 30314 8002F714 00E2082A */  slt        $at, $a3, $v0
/* 30318 8002F718 10200003 */  beqz       $at, .L8002F728
/* 3031C 8002F71C 00471023 */   subu      $v0, $v0, $a3
/* 30320 8002F720 10000002 */  b          .L8002F72C
/* 30324 8002F724 00471021 */   addu      $v0, $v0, $a3
.L8002F728:
/* 30328 8002F728 00E01025 */  or         $v0, $a3, $zero
.L8002F72C:
/* 3032C 8002F72C 0046082A */  slt        $at, $v0, $a2
/* 30330 8002F730 54200036 */  bnel       $at, $zero, .L8002F80C
/* 30334 8002F734 240100F2 */   addiu     $at, $zero, 0xF2
/* 30338 8002F738 8E6D0000 */  lw         $t5, 0x0($s3)
/* 3033C 8002F73C 3C010400 */  lui        $at, (0x4000000 >> 16)
/* 30340 8002F740 26220001 */  addiu      $v0, $s1, 0x1
/* 30344 8002F744 01A17025 */  or         $t6, $t5, $at
/* 30348 8002F748 AE6E0000 */  sw         $t6, 0x0($s3)
/* 3034C 8002F74C 02627821 */  addu       $t7, $s3, $v0
/* 30350 8002F750 91F8009C */  lbu        $t8, 0x9C($t7)
/* 30354 8002F754 24A50001 */  addiu      $a1, $a1, 0x1
/* 30358 8002F758 24840001 */  addiu      $a0, $a0, 0x1
/* 3035C 8002F75C A2780014 */  sb         $t8, 0x14($s3)
/* 30360 8002F760 A0B5009C */  sb         $s5, 0x9C($a1)
/* 30364 8002F764 96790012 */  lhu        $t9, 0x12($s3)
/* 30368 8002F768 272D0001 */  addiu      $t5, $t9, 0x1
/* 3036C 8002F76C 10000058 */  b          .L8002F8D0
/* 30370 8002F770 A66D0012 */   sh        $t5, 0x12($s3)
/* 30374 8002F774 24420001 */  addiu      $v0, $v0, 0x1
.L8002F778:
/* 30378 8002F778 0046082A */  slt        $at, $v0, $a2
/* 3037C 8002F77C 54200011 */  bnel       $at, $zero, .L8002F7C4
/* 30380 8002F780 00C2082A */   slt       $at, $a2, $v0
/* 30384 8002F784 8E6E0000 */  lw         $t6, 0x0($s3)
/* 30388 8002F788 3C010400 */  lui        $at, (0x4000000 >> 16)
/* 3038C 8002F78C 26220001 */  addiu      $v0, $s1, 0x1
/* 30390 8002F790 01C17825 */  or         $t7, $t6, $at
/* 30394 8002F794 AE6F0000 */  sw         $t7, 0x0($s3)
/* 30398 8002F798 0262C021 */  addu       $t8, $s3, $v0
/* 3039C 8002F79C 9319009C */  lbu        $t9, 0x9C($t8)
/* 303A0 8002F7A0 24A50001 */  addiu      $a1, $a1, 0x1
/* 303A4 8002F7A4 24840001 */  addiu      $a0, $a0, 0x1
/* 303A8 8002F7A8 A2790014 */  sb         $t9, 0x14($s3)
/* 303AC 8002F7AC A0B5009C */  sb         $s5, 0x9C($a1)
/* 303B0 8002F7B0 966D0012 */  lhu        $t5, 0x12($s3)
/* 303B4 8002F7B4 25AE0001 */  addiu      $t6, $t5, 0x1
/* 303B8 8002F7B8 10000045 */  b          .L8002F8D0
/* 303BC 8002F7BC A66E0012 */   sh        $t6, 0x12($s3)
/* 303C0 8002F7C0 00C2082A */  slt        $at, $a2, $v0
.L8002F7C4:
/* 303C4 8002F7C4 50200011 */  beql       $at, $zero, .L8002F80C
/* 303C8 8002F7C8 240100F2 */   addiu     $at, $zero, 0xF2
/* 303CC 8002F7CC 26220001 */  addiu      $v0, $s1, 0x1
/* 303D0 8002F7D0 02627821 */  addu       $t7, $s3, $v0
/* 303D4 8002F7D4 91F8009C */  lbu        $t8, 0x9C($t7)
/* 303D8 8002F7D8 3C010400 */  lui        $at, (0x4000000 >> 16)
/* 303DC 8002F7DC 24A50001 */  addiu      $a1, $a1, 0x1
/* 303E0 8002F7E0 A2780014 */  sb         $t8, 0x14($s3)
/* 303E4 8002F7E4 A0B5009C */  sb         $s5, 0x9C($a1)
/* 303E8 8002F7E8 96790012 */  lhu        $t9, 0x12($s3)
/* 303EC 8002F7EC 8E6E0000 */  lw         $t6, 0x0($s3)
/* 303F0 8002F7F0 24840001 */  addiu      $a0, $a0, 0x1
/* 303F4 8002F7F4 272D0001 */  addiu      $t5, $t9, 0x1
/* 303F8 8002F7F8 01C17825 */  or         $t7, $t6, $at
/* 303FC 8002F7FC A66D0012 */  sh         $t5, 0x12($s3)
/* 30400 8002F800 10000033 */  b          .L8002F8D0
/* 30404 8002F804 AE6F0000 */   sw        $t7, 0x0($s3)
/* 30408 8002F808 240100F2 */  addiu      $at, $zero, 0xF2
.L8002F80C:
/* 3040C 8002F80C 5461000D */  bnel       $v1, $at, .L8002F844
/* 30410 8002F810 240100F0 */   addiu     $at, $zero, 0xF0
/* 30414 8002F814 26220001 */  addiu      $v0, $s1, 0x1
/* 30418 8002F818 0262C021 */  addu       $t8, $s3, $v0
/* 3041C 8002F81C 9319009C */  lbu        $t9, 0x9C($t8)
/* 30420 8002F820 24A50001 */  addiu      $a1, $a1, 0x1
/* 30424 8002F824 24840001 */  addiu      $a0, $a0, 0x1
/* 30428 8002F828 A2790014 */  sb         $t9, 0x14($s3)
/* 3042C 8002F82C A0B5009C */  sb         $s5, 0x9C($a1)
/* 30430 8002F830 966D0012 */  lhu        $t5, 0x12($s3)
/* 30434 8002F834 25AE0001 */  addiu      $t6, $t5, 0x1
/* 30438 8002F838 10000025 */  b          .L8002F8D0
/* 3043C 8002F83C A66E0012 */   sh        $t6, 0x12($s3)
/* 30440 8002F840 240100F0 */  addiu      $at, $zero, 0xF0
.L8002F844:
/* 30444 8002F844 14610010 */  bne        $v1, $at, .L8002F888
/* 30448 8002F848 00000000 */   nop
/* 3044C 8002F84C 26220001 */  addiu      $v0, $s1, 0x1
/* 30450 8002F850 02627821 */  addu       $t7, $s3, $v0
/* 30454 8002F854 91F8009C */  lbu        $t8, 0x9C($t7)
/* 30458 8002F858 3C010400 */  lui        $at, (0x4000000 >> 16)
/* 3045C 8002F85C 24A50001 */  addiu      $a1, $a1, 0x1
/* 30460 8002F860 A2780014 */  sb         $t8, 0x14($s3)
/* 30464 8002F864 A0B5009C */  sb         $s5, 0x9C($a1)
/* 30468 8002F868 96790012 */  lhu        $t9, 0x12($s3)
/* 3046C 8002F86C 8E6E0000 */  lw         $t6, 0x0($s3)
/* 30470 8002F870 24840001 */  addiu      $a0, $a0, 0x1
/* 30474 8002F874 272D0001 */  addiu      $t5, $t9, 0x1
/* 30478 8002F878 01C17825 */  or         $t7, $t6, $at
/* 3047C 8002F87C A66D0012 */  sh         $t5, 0x12($s3)
/* 30480 8002F880 10000013 */  b          .L8002F8D0
/* 30484 8002F884 AE6F0000 */   sw        $t7, 0x0($s3)
.L8002F888:
/* 30488 8002F888 56E3000B */  bnel       $s7, $v1, .L8002F8B8
/* 3048C 8002F88C 966D0012 */   lhu       $t5, 0x12($s3)
/* 30490 8002F890 26220001 */  addiu      $v0, $s1, 0x1
/* 30494 8002F894 0262C021 */  addu       $t8, $s3, $v0
/* 30498 8002F898 9319009C */  lbu        $t9, 0x9C($t8)
/* 3049C 8002F89C 24A50001 */  addiu      $a1, $a1, 0x1
/* 304A0 8002F8A0 24840001 */  addiu      $a0, $a0, 0x1
/* 304A4 8002F8A4 A2790014 */  sb         $t9, 0x14($s3)
/* 304A8 8002F8A8 A0B5009C */  sb         $s5, 0x9C($a1)
/* 304AC 8002F8AC 10000008 */  b          .L8002F8D0
/* 304B0 8002F8B0 A0B5009D */   sb        $s5, 0x9D($a1)
/* 304B4 8002F8B4 966D0012 */  lhu        $t5, 0x12($s3)
.L8002F8B8:
/* 304B8 8002F8B8 26310001 */  addiu      $s1, $s1, 0x1
/* 304BC 8002F8BC 24A50001 */  addiu      $a1, $a1, 0x1
/* 304C0 8002F8C0 25AE0001 */  addiu      $t6, $t5, 0x1
/* 304C4 8002F8C4 24840001 */  addiu      $a0, $a0, 0x1
/* 304C8 8002F8C8 1000FF84 */  b          .L8002F6DC
/* 304CC 8002F8CC A66E0012 */   sh        $t6, 0x12($s3)
.L8002F8D0:
/* 304D0 8002F8D0 9083009B */  lbu        $v1, 0x9B($a0)
/* 304D4 8002F8D4 240100F0 */  addiu      $at, $zero, 0xF0
/* 304D8 8002F8D8 10610013 */  beq        $v1, $at, .L8002F928
/* 304DC 8002F8DC 240100F2 */   addiu     $at, $zero, 0xF2
/* 304E0 8002F8E0 10610005 */  beq        $v1, $at, .L8002F8F8
/* 304E4 8002F8E4 03C02025 */   or        $a0, $fp, $zero
/* 304E8 8002F8E8 50770015 */  beql       $v1, $s7, .L8002F940
/* 304EC 8002F8EC 8E790000 */   lw        $t9, 0x0($s3)
/* 304F0 8002F8F0 1000001C */  b          .L8002F964
/* 304F4 8002F8F4 8E780000 */   lw        $t8, 0x0($s3)
.L8002F8F8:
/* 304F8 8002F8F8 8E6F0000 */  lw         $t7, 0x0($s3)
/* 304FC 8002F8FC 3C010040 */  lui        $at, (0x400000 >> 16)
/* 30500 8002F900 24190001 */  addiu      $t9, $zero, 0x1
/* 30504 8002F904 01E1C025 */  or         $t8, $t7, $at
/* 30508 8002F908 AE780000 */  sw         $t8, 0x0($s3)
/* 3050C 8002F90C 0C00C19A */  jal        func_80030668
/* 30510 8002F910 AFB900DC */   sw        $t9, 0xDC($sp)
/* 30514 8002F914 8E6D0000 */  lw         $t5, 0x0($s3)
/* 30518 8002F918 3C010004 */  lui        $at, (0x40000 >> 16)
/* 3051C 8002F91C 01A17025 */  or         $t6, $t5, $at
/* 30520 8002F920 1000000F */  b          .L8002F960
/* 30524 8002F924 AE6E0000 */   sw        $t6, 0x0($s3)
.L8002F928:
/* 30528 8002F928 8E6F0000 */  lw         $t7, 0x0($s3)
/* 3052C 8002F92C 3C010400 */  lui        $at, (0x4000000 >> 16)
/* 30530 8002F930 01E1C025 */  or         $t8, $t7, $at
/* 30534 8002F934 1000000A */  b          .L8002F960
/* 30538 8002F938 AE780000 */   sw        $t8, 0x0($s3)
/* 3053C 8002F93C 8E790000 */  lw         $t9, 0x0($s3)
.L8002F940:
/* 30540 8002F940 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 30544 8002F944 03216825 */  or         $t5, $t9, $at
/* 30548 8002F948 3C01F7FF */  lui        $at, (0xF7FFFFFF >> 16)
/* 3054C 8002F94C 3421FFFF */  ori        $at, $at, (0xF7FFFFFF & 0xFFFF)
/* 30550 8002F950 AE6D0000 */  sw         $t5, 0x0($s3)
/* 30554 8002F954 01A17824 */  and        $t7, $t5, $at
/* 30558 8002F958 0C00C35C */  jal        func_80030D70
/* 3055C 8002F95C AE6F0000 */   sw        $t7, 0x0($s3)
.L8002F960:
/* 30560 8002F960 8E780000 */  lw         $t8, 0x0($s3)
.L8002F964:
/* 30564 8002F964 3C01FFEF */  lui        $at, (0xFFEFFFFF >> 16)
/* 30568 8002F968 3421FFFF */  ori        $at, $at, (0xFFEFFFFF & 0xFFFF)
/* 3056C 8002F96C 0301C824 */  and        $t9, $t8, $at
/* 30570 8002F970 AE790000 */  sw         $t9, 0x0($s3)
.L8002F974:
/* 30574 8002F974 0C00C01A */  jal        func_80030068
/* 30578 8002F978 03C02025 */   or        $a0, $fp, $zero
/* 3057C 8002F97C 0C00BF64 */  jal        func_8002FD90
/* 30580 8002F980 03C02025 */   or        $a0, $fp, $zero
/* 30584 8002F984 10000027 */  b          .L8002FA24
/* 30588 8002F988 8FB900E0 */   lw        $t9, 0xE0($sp)
.L8002F98C:
/* 3058C 8002F98C 05A10024 */  bgez       $t5, .L8002FA20
/* 30590 8002F990 3C0E8009 */   lui       $t6, %hi(D_80092876)
/* 30594 8002F994 95CE2876 */  lhu        $t6, %lo(D_80092876)($t6)
/* 30598 8002F998 31CFA000 */  andi       $t7, $t6, 0xA000
/* 3059C 8002F99C 55E00005 */  bnel       $t7, $zero, .L8002F9B4
/* 305A0 8002F9A0 03C02025 */   or        $a0, $fp, $zero
/* 305A4 8002F9A4 0C00C360 */  jal        func_80030D80
/* 305A8 8002F9A8 00000000 */   nop
/* 305AC 8002F9AC 10400008 */  beqz       $v0, .L8002F9D0
/* 305B0 8002F9B0 03C02025 */   or        $a0, $fp, $zero
.L8002F9B4:
/* 305B4 8002F9B4 0C00B98A */  jal        func_8002E628
/* 305B8 8002F9B8 24050001 */   addiu     $a1, $zero, 0x1
/* 305BC 8002F9BC 8E780000 */  lw         $t8, 0x0($s3)
/* 305C0 8002F9C0 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 305C4 8002F9C4 0301C825 */  or         $t9, $t8, $at
/* 305C8 8002F9C8 10000015 */  b          .L8002FA20
/* 305CC 8002F9CC AE790000 */   sw        $t9, 0x0($s3)
.L8002F9D0:
/* 305D0 8002F9D0 8E620000 */  lw         $v0, 0x0($s3)
/* 305D4 8002F9D4 3C01FFFB */  lui        $at, (0xFFFBFFFF >> 16)
/* 305D8 8002F9D8 3421FFFF */  ori        $at, $at, (0xFFFBFFFF & 0xFFFF)
/* 305DC 8002F9DC 00026B40 */  sll        $t5, $v0, 13
/* 305E0 8002F9E0 05A10009 */  bgez       $t5, .L8002FA08
/* 305E4 8002F9E4 00417024 */   and       $t6, $v0, $at
/* 305E8 8002F9E8 AE6E0000 */  sw         $t6, 0x0($s3)
/* 305EC 8002F9EC 03C02025 */  or         $a0, $fp, $zero
/* 305F0 8002F9F0 0C00B98A */  jal        func_8002E628
/* 305F4 8002F9F4 24050001 */   addiu     $a1, $zero, 0x1
/* 305F8 8002F9F8 8E6F0000 */  lw         $t7, 0x0($s3)
/* 305FC 8002F9FC 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 30600 8002FA00 01E1C025 */  or         $t8, $t7, $at
/* 30604 8002FA04 AE780000 */  sw         $t8, 0x0($s3)
.L8002FA08:
/* 30608 8002FA08 0C00BF64 */  jal        func_8002FD90
/* 3060C 8002FA0C 03C02025 */   or        $a0, $fp, $zero
/* 30610 8002FA10 10000004 */  b          .L8002FA24
/* 30614 8002FA14 8FB900E0 */   lw        $t9, 0xE0($sp)
.L8002FA18:
/* 30618 8002FA18 0C00BF64 */  jal        func_8002FD90
/* 3061C 8002FA1C 03C02025 */   or        $a0, $fp, $zero
.L8002FA20:
/* 30620 8002FA20 8FB900E0 */  lw         $t9, 0xE0($sp)
.L8002FA24:
/* 30624 8002FA24 53200004 */  beql       $t9, $zero, .L8002FA38
/* 30628 8002FA28 8FAD0054 */   lw        $t5, 0x54($sp)
/* 3062C 8002FA2C 0C00C0FA */  jal        func_800303E8
/* 30630 8002FA30 03C02025 */   or        $a0, $fp, $zero
.L8002FA34:
/* 30634 8002FA34 8FAD0054 */  lw         $t5, 0x54($sp)
.L8002FA38:
/* 30638 8002FA38 27AF00F0 */  addiu      $t7, $sp, 0xF0
/* 3063C 8002FA3C 8FB800DC */  lw         $t8, 0xDC($sp)
/* 30640 8002FA40 25AE0001 */  addiu      $t6, $t5, 0x1
/* 30644 8002FA44 15CFFCA4 */  bne        $t6, $t7, .L8002ECD8
/* 30648 8002FA48 AFAE0054 */   sw        $t6, 0x54($sp)
/* 3064C 8002FA4C 13000013 */  beqz       $t8, .L8002FA9C
/* 30650 8002FA50 001EC900 */   sll       $t9, $fp, 4
/* 30654 8002FA54 033EC821 */  addu       $t9, $t9, $fp
/* 30658 8002FA58 0019C880 */  sll        $t9, $t9, 2
/* 3065C 8002FA5C 033EC821 */  addu       $t9, $t9, $fp
/* 30660 8002FA60 0019C8C0 */  sll        $t9, $t9, 3
/* 30664 8002FA64 033EC823 */  subu       $t9, $t9, $fp
/* 30668 8002FA68 0019C880 */  sll        $t9, $t9, 2
/* 3066C 8002FA6C 3C0D8009 */  lui        $t5, %hi(D_800905E0)
/* 30670 8002FA70 01B96821 */  addu       $t5, $t5, $t9
/* 30674 8002FA74 8DAD05E0 */  lw         $t5, %lo(D_800905E0)($t5)
/* 30678 8002FA78 000D7300 */  sll        $t6, $t5, 12
/* 3067C 8002FA7C 05C10005 */  bgez       $t6, .L8002FA94
/* 30680 8002FA80 00000000 */   nop
/* 30684 8002FA84 0C00B9DA */  jal        func_8002E768
/* 30688 8002FA88 2404FFFD */   addiu     $a0, $zero, -0x3
/* 3068C 8002FA8C 10000004 */  b          .L8002FAA0
/* 30690 8002FA90 3C07E700 */   lui       $a3, (0xE7000000 >> 16)
.L8002FA94:
/* 30694 8002FA94 0C00B9DA */  jal        func_8002E768
/* 30698 8002FA98 2404FFFF */   addiu     $a0, $zero, -0x1
.L8002FA9C:
/* 3069C 8002FA9C 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
.L8002FAA0:
/* 306A0 8002FAA0 8EC20000 */  lw         $v0, 0x0($s6)
/* 306A4 8002FAA4 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
/* 306A8 8002FAA8 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
/* 306AC 8002FAAC 244F0008 */  addiu      $t7, $v0, 0x8
/* 306B0 8002FAB0 AECF0000 */  sw         $t7, 0x0($s6)
/* 306B4 8002FAB4 AC400004 */  sw         $zero, 0x4($v0)
/* 306B8 8002FAB8 AC580000 */  sw         $t8, 0x0($v0)
/* 306BC 8002FABC 8EC20000 */  lw         $v0, 0x0($s6)
/* 306C0 8002FAC0 24590008 */  addiu      $t9, $v0, 0x8
/* 306C4 8002FAC4 AED90000 */  sw         $t9, 0x0($s6)
/* 306C8 8002FAC8 AC400004 */  sw         $zero, 0x4($v0)
/* 306CC 8002FACC AC470000 */  sw         $a3, 0x0($v0)
/* 306D0 8002FAD0 8EC20000 */  lw         $v0, 0x0($s6)
/* 306D4 8002FAD4 3C0EF900 */  lui        $t6, (0xF9000000 >> 16)
/* 306D8 8002FAD8 240F0001 */  addiu      $t7, $zero, 0x1
/* 306DC 8002FADC 244D0008 */  addiu      $t5, $v0, 0x8
/* 306E0 8002FAE0 AECD0000 */  sw         $t5, 0x0($s6)
/* 306E4 8002FAE4 AC4F0004 */  sw         $t7, 0x4($v0)
/* 306E8 8002FAE8 AC4E0000 */  sw         $t6, 0x0($v0)
/* 306EC 8002FAEC 8EC20000 */  lw         $v0, 0x0($s6)
/* 306F0 8002FAF0 24580008 */  addiu      $t8, $v0, 0x8
/* 306F4 8002FAF4 AED80000 */  sw         $t8, 0x0($s6)
/* 306F8 8002FAF8 AC400004 */  sw         $zero, 0x4($v0)
/* 306FC 8002FAFC AC470000 */  sw         $a3, 0x0($v0)
/* 30700 8002FB00 8FBF0044 */  lw         $ra, 0x44($sp)
/* 30704 8002FB04 8FB00020 */  lw         $s0, 0x20($sp)
/* 30708 8002FB08 8FB10024 */  lw         $s1, 0x24($sp)
/* 3070C 8002FB0C 8FB20028 */  lw         $s2, 0x28($sp)
/* 30710 8002FB10 8FB3002C */  lw         $s3, 0x2C($sp)
/* 30714 8002FB14 8FB40030 */  lw         $s4, 0x30($sp)
/* 30718 8002FB18 8FB50034 */  lw         $s5, 0x34($sp)
/* 3071C 8002FB1C 8FB60038 */  lw         $s6, 0x38($sp)
/* 30720 8002FB20 8FB7003C */  lw         $s7, 0x3C($sp)
/* 30724 8002FB24 8FBE0040 */  lw         $fp, 0x40($sp)
/* 30728 8002FB28 03E00008 */  jr         $ra
/* 3072C 8002FB2C 27BD0118 */   addiu     $sp, $sp, 0x118
