.section .late_rodata
glabel jtbl_80071730
/* 72330 80071730 80029C3C */ .word .L80029C3C
/* 72334 80071734 80029C3C */ .word .L80029C3C
/* 72338 80071738 80029C3C */ .word .L80029C3C
/* 7233C 8007173C 80029C4C */ .word .L80029C4C
/* 72340 80071740 80029C4C */ .word .L80029C4C
/* 72344 80071744 80029C24 */ .word .L80029C24
/* 72348 80071748 80029C48 */ .word .L80029C48
/* 7234C 8007174C 80029C34 */ .word .L80029C34


.section .text
glabel func_80029B58
/* 2A758 80029B58 27BDFF28 */  addiu      $sp, $sp, -0xD8
/* 2A75C 80029B5C AFB00004 */  sw         $s0, 0x4($sp)
/* 2A760 80029B60 00A08025 */  or         $s0, $a1, $zero
/* 2A764 80029B64 AFA600E0 */  sw         $a2, 0xE0($sp)
/* 2A768 80029B68 AFA700E4 */  sw         $a3, 0xE4($sp)
/* 2A76C 80029B6C 00047080 */  sll        $t6, $a0, 2
/* 2A770 80029B70 3C0F8006 */  lui        $t7, %hi(D_8005F0D0)
/* 2A774 80029B74 01EE7821 */  addu       $t7, $t7, $t6
/* 2A778 80029B78 3C198006 */  lui        $t9, %hi(D_8005F014)
/* 2A77C 80029B7C 8DEFF0D0 */  lw         $t7, %lo(D_8005F0D0)($t7)
/* 2A780 80029B80 2739F014 */  addiu      $t9, $t9, %lo(D_8005F014)
/* 2A784 80029B84 0004C040 */  sll        $t8, $a0, 1
/* 2A788 80029B88 03191821 */  addu       $v1, $t8, $t9
/* 2A78C 80029B8C 90690000 */  lbu        $t1, 0x0($v1)
/* 2A790 80029B90 AFAF0098 */  sw         $t7, 0x98($sp)
/* 2A794 80029B94 906F0001 */  lbu        $t7, 0x1($v1)
/* 2A798 80029B98 252EFFFF */  addiu      $t6, $t1, -0x1
/* 2A79C 80029B9C AFAE00A0 */  sw         $t6, 0xA0($sp)
/* 2A7A0 80029BA0 240E0400 */  addiu      $t6, $zero, 0x400
/* 2A7A4 80029BA4 24190400 */  addiu      $t9, $zero, 0x400
/* 2A7A8 80029BA8 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 2A7AC 80029BAC 00004025 */  or         $t0, $zero, $zero
/* 2A7B0 80029BB0 00001025 */  or         $v0, $zero, $zero
/* 2A7B4 80029BB4 AFB8009C */  sw         $t8, 0x9C($sp)
/* 2A7B8 80029BB8 00005025 */  or         $t2, $zero, $zero
/* 2A7BC 80029BBC 00005825 */  or         $t3, $zero, $zero
/* 2A7C0 80029BC0 00006825 */  or         $t5, $zero, $zero
/* 2A7C4 80029BC4 AFA000B8 */  sw         $zero, 0xB8($sp)
/* 2A7C8 80029BC8 AFB900AC */  sw         $t9, 0xAC($sp)
/* 2A7CC 80029BCC AFAE00B0 */  sw         $t6, 0xB0($sp)
/* 2A7D0 80029BD0 1880000A */  blez       $a0, .L80029BFC
/* 2A7D4 80029BD4 AFA90094 */   sw        $t1, 0x94($sp)
/* 2A7D8 80029BD8 248FFFC9 */  addiu      $t7, $a0, -0x37
/* 2A7DC 80029BDC 2DE10008 */  sltiu      $at, $t7, 0x8
/* 2A7E0 80029BE0 1020001A */  beqz       $at, .L80029C4C
/* 2A7E4 80029BE4 000F7880 */   sll       $t7, $t7, 2
/* 2A7E8 80029BE8 3C018007 */  lui        $at, %hi(jtbl_80071730)
/* 2A7EC 80029BEC 002F0821 */  addu       $at, $at, $t7
/* 2A7F0 80029BF0 8C2F1730 */  lw         $t7, %lo(jtbl_80071730)($at)
/* 2A7F4 80029BF4 01E00008 */  jr         $t7
/* 2A7F8 80029BF8 00000000 */   nop
.L80029BFC:
/* 2A7FC 80029BFC 14800013 */  bnez       $a0, .L80029C4C
/* 2A800 80029C00 3218000F */   andi      $t8, $s0, 0xF
/* 2A804 80029C04 8FAD00E0 */  lw         $t5, 0xE0($sp)
/* 2A808 80029C08 0018C940 */  sll        $t9, $t8, 5
/* 2A80C 80029C0C 240A0004 */  addiu      $t2, $zero, 0x4
/* 2A810 80029C10 31AE000F */  andi       $t6, $t5, 0xF
/* 2A814 80029C14 240B0004 */  addiu      $t3, $zero, 0x4
/* 2A818 80029C18 AFB900B8 */  sw         $t9, 0xB8($sp)
/* 2A81C 80029C1C 1000000B */  b          .L80029C4C
/* 2A820 80029C20 000E6940 */   sll       $t5, $t6, 5
glabel .L80029C24
/* 2A824 80029C24 2408FF80 */  addiu      $t0, $zero, -0x80
/* 2A828 80029C28 AFA000AC */  sw         $zero, 0xAC($sp)
/* 2A82C 80029C2C 10000007 */  b          .L80029C4C
/* 2A830 80029C30 AFA000B0 */   sw        $zero, 0xB0($sp)
glabel .L80029C34
/* 2A834 80029C34 10000005 */  b          .L80029C4C
/* 2A838 80029C38 24080050 */   addiu     $t0, $zero, 0x50
glabel .L80029C3C
/* 2A83C 80029C3C AFA000AC */  sw         $zero, 0xAC($sp)
/* 2A840 80029C40 10000002 */  b          .L80029C4C
/* 2A844 80029C44 AFA000B0 */   sw        $zero, 0xB0($sp)
glabel .L80029C48
/* 2A848 80029C48 AFA000B0 */  sw         $zero, 0xB0($sp)
glabel .L80029C4C
/* 2A84C 80029C4C 0601000E */  bgez       $s0, .L80029C88
/* 2A850 80029C50 8FB800E4 */   lw        $t8, 0xE4($sp)
/* 2A854 80029C54 0218C821 */  addu       $t9, $s0, $t8
/* 2A858 80029C58 07210003 */  bgez       $t9, .L80029C68
/* 2A85C 80029C5C 00101823 */   negu      $v1, $s0
/* 2A860 80029C60 10000009 */  b          .L80029C88
/* 2A864 80029C64 2402FFFF */   addiu     $v0, $zero, -0x1
.L80029C68:
/* 2A868 80029C68 8FAE00E4 */  lw         $t6, 0xE4($sp)
/* 2A86C 80029C6C 8FB800B8 */  lw         $t8, 0xB8($sp)
/* 2A870 80029C70 0003C940 */  sll        $t9, $v1, 5
/* 2A874 80029C74 01C37823 */  subu       $t7, $t6, $v1
/* 2A878 80029C78 03197021 */  addu       $t6, $t8, $t9
/* 2A87C 80029C7C 00008025 */  or         $s0, $zero, $zero
/* 2A880 80029C80 AFAF00E4 */  sw         $t7, 0xE4($sp)
/* 2A884 80029C84 AFAE00B8 */  sw         $t6, 0xB8($sp)
.L80029C88:
/* 2A888 80029C88 2A010141 */  slti       $at, $s0, 0x141
/* 2A88C 80029C8C 14200003 */  bnez       $at, .L80029C9C
/* 2A890 80029C90 8FAF00E4 */   lw        $t7, 0xE4($sp)
/* 2A894 80029C94 10000007 */  b          .L80029CB4
/* 2A898 80029C98 2402FFFF */   addiu     $v0, $zero, -0x1
.L80029C9C:
/* 2A89C 80029C9C 020F6021 */  addu       $t4, $s0, $t7
/* 2A8A0 80029CA0 29810141 */  slti       $at, $t4, 0x141
/* 2A8A4 80029CA4 14200003 */  bnez       $at, .L80029CB4
/* 2A8A8 80029CA8 01ECC023 */   subu      $t8, $t7, $t4
/* 2A8AC 80029CAC 27190140 */  addiu      $t9, $t8, 0x140
/* 2A8B0 80029CB0 AFB900E4 */  sw         $t9, 0xE4($sp)
.L80029CB4:
/* 2A8B4 80029CB4 8FAE00E4 */  lw         $t6, 0xE4($sp)
/* 2A8B8 80029CB8 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 2A8BC 80029CBC 8FAF00E8 */  lw         $t7, 0xE8($sp)
/* 2A8C0 80029CC0 19C00003 */  blez       $t6, .L80029CD0
/* 2A8C4 80029CC4 2463B2FC */   addiu     $v1, $v1, %lo(gMasterGfxPos)
/* 2A8C8 80029CC8 5DE00003 */  bgtzl      $t7, .L80029CD8
/* 2A8CC 80029CCC AFAA00C4 */   sw        $t2, 0xC4($sp)
.L80029CD0:
/* 2A8D0 80029CD0 2402FFFF */  addiu      $v0, $zero, -0x1
/* 2A8D4 80029CD4 AFAA00C4 */  sw         $t2, 0xC4($sp)
.L80029CD8:
/* 2A8D8 80029CD8 AFAB00C8 */  sw         $t3, 0xC8($sp)
/* 2A8DC 80029CDC 044000F3 */  bltz       $v0, .L8002A0AC
/* 2A8E0 80029CE0 AFAD00B4 */   sw        $t5, 0xB4($sp)
/* 2A8E4 80029CE4 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 2A8E8 80029CE8 8C620000 */  lw         $v0, 0x0($v1)
/* 2A8EC 80029CEC 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
/* 2A8F0 80029CF0 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
/* 2A8F4 80029CF4 24580008 */  addiu      $t8, $v0, 0x8
/* 2A8F8 80029CF8 AC780000 */  sw         $t8, 0x0($v1)
/* 2A8FC 80029CFC AC400004 */  sw         $zero, 0x4($v0)
/* 2A900 80029D00 AC4B0000 */  sw         $t3, 0x0($v0)
/* 2A904 80029D04 8C620000 */  lw         $v0, 0x0($v1)
/* 2A908 80029D08 3C0F0050 */  lui        $t7, (0x504240 >> 16)
/* 2A90C 80029D0C 35EF4240 */  ori        $t7, $t7, (0x504240 & 0xFFFF)
/* 2A910 80029D10 24590008 */  addiu      $t9, $v0, 0x8
/* 2A914 80029D14 AC790000 */  sw         $t9, 0x0($v1)
/* 2A918 80029D18 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2A91C 80029D1C AC4E0000 */  sw         $t6, 0x0($v0)
/* 2A920 80029D20 8C620000 */  lw         $v0, 0x0($v1)
/* 2A924 80029D24 3C19BA00 */  lui        $t9, (0xBA000C02 >> 16)
/* 2A928 80029D28 37390C02 */  ori        $t9, $t9, (0xBA000C02 & 0xFFFF)
/* 2A92C 80029D2C 24580008 */  addiu      $t8, $v0, 0x8
/* 2A930 80029D30 AC780000 */  sw         $t8, 0x0($v1)
/* 2A934 80029D34 240E2000 */  addiu      $t6, $zero, 0x2000
/* 2A938 80029D38 AC4E0004 */  sw         $t6, 0x4($v0)
/* 2A93C 80029D3C AC590000 */  sw         $t9, 0x0($v0)
/* 2A940 80029D40 8C620000 */  lw         $v0, 0x0($v1)
/* 2A944 80029D44 3C0D8009 */  lui        $t5, %hi(D_8008FD0C)
/* 2A948 80029D48 25ADFD0C */  addiu      $t5, $t5, %lo(D_8008FD0C)
/* 2A94C 80029D4C 244F0008 */  addiu      $t7, $v0, 0x8
/* 2A950 80029D50 AC6F0000 */  sw         $t7, 0x0($v1)
/* 2A954 80029D54 AC400004 */  sw         $zero, 0x4($v0)
/* 2A958 80029D58 AC4B0000 */  sw         $t3, 0x0($v0)
/* 2A95C 80029D5C 8FB800E4 */  lw         $t8, 0xE4($sp)
/* 2A960 80029D60 1500000B */  bnez       $t0, .L80029D90
/* 2A964 80029D64 02186021 */   addu      $t4, $s0, $t8
/* 2A968 80029D68 8C620000 */  lw         $v0, 0x0($v1)
/* 2A96C 80029D6C 3C0F8006 */  lui        $t7, %hi(D_8005F228)
/* 2A970 80029D70 25EFF228 */  addiu      $t7, $t7, %lo(D_8005F228)
/* 2A974 80029D74 24590008 */  addiu      $t9, $v0, 0x8
/* 2A978 80029D78 AC790000 */  sw         $t9, 0x0($v1)
/* 2A97C 80029D7C 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
/* 2A980 80029D80 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2A984 80029D84 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2A988 80029D88 10000018 */  b          .L80029DEC
/* 2A98C 80029D8C 95B80000 */   lhu       $t8, 0x0($t5)
.L80029D90:
/* 2A990 80029D90 8C620000 */  lw         $v0, 0x0($v1)
/* 2A994 80029D94 3C0E8006 */  lui        $t6, %hi(D_8005F240)
/* 2A998 80029D98 25CEF240 */  addiu      $t6, $t6, %lo(D_8005F240)
/* 2A99C 80029D9C 24580008 */  addiu      $t8, $v0, 0x8
/* 2A9A0 80029DA0 AC780000 */  sw         $t8, 0x0($v1)
/* 2A9A4 80029DA4 3C190600 */  lui        $t9, (0x6000000 >> 16)
/* 2A9A8 80029DA8 AC590000 */  sw         $t9, 0x0($v0)
/* 2A9AC 80029DAC AC4E0004 */  sw         $t6, 0x4($v0)
/* 2A9B0 80029DB0 8C620000 */  lw         $v0, 0x0($v1)
/* 2A9B4 80029DB4 3C19FB00 */  lui        $t9, (0xFB000000 >> 16)
/* 2A9B8 80029DB8 310E00FF */  andi       $t6, $t0, 0xFF
/* 2A9BC 80029DBC 244F0008 */  addiu      $t7, $v0, 0x8
/* 2A9C0 80029DC0 AC6F0000 */  sw         $t7, 0x0($v1)
/* 2A9C4 80029DC4 AC400004 */  sw         $zero, 0x4($v0)
/* 2A9C8 80029DC8 AC4B0000 */  sw         $t3, 0x0($v0)
/* 2A9CC 80029DCC 8C620000 */  lw         $v0, 0x0($v1)
/* 2A9D0 80029DD0 2401FF00 */  addiu      $at, $zero, -0x100
/* 2A9D4 80029DD4 01C17825 */  or         $t7, $t6, $at
/* 2A9D8 80029DD8 24580008 */  addiu      $t8, $v0, 0x8
/* 2A9DC 80029DDC AC780000 */  sw         $t8, 0x0($v1)
/* 2A9E0 80029DE0 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2A9E4 80029DE4 AC590000 */  sw         $t9, 0x0($v0)
/* 2A9E8 80029DE8 95B80000 */  lhu        $t8, 0x0($t5)
.L80029DEC:
/* 2A9EC 80029DEC 33190010 */  andi       $t9, $t8, 0x10
/* 2A9F0 80029DF0 57200033 */  bnel       $t9, $zero, .L80029EC0
/* 2A9F4 80029DF4 8C620000 */   lw        $v0, 0x0($v1)
/* 2A9F8 80029DF8 8C620000 */  lw         $v0, 0x0($v1)
/* 2A9FC 80029DFC 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
/* 2AA00 80029E00 244E0008 */  addiu      $t6, $v0, 0x8
/* 2AA04 80029E04 AC6E0000 */  sw         $t6, 0x0($v1)
/* 2AA08 80029E08 AC400004 */  sw         $zero, 0x4($v0)
/* 2AA0C 80029E0C AC4B0000 */  sw         $t3, 0x0($v0)
/* 2AA10 80029E10 8C620000 */  lw         $v0, 0x0($v1)
/* 2AA14 80029E14 3C198006 */  lui        $t9, %hi(D_80060138)
/* 2AA18 80029E18 27390138 */  addiu      $t9, $t9, %lo(D_80060138)
/* 2AA1C 80029E1C 244F0008 */  addiu      $t7, $v0, 0x8
/* 2AA20 80029E20 AC6F0000 */  sw         $t7, 0x0($v1)
/* 2AA24 80029E24 AC590004 */  sw         $t9, 0x4($v0)
/* 2AA28 80029E28 AC580000 */  sw         $t8, 0x0($v0)
/* 2AA2C 80029E2C 8C620000 */  lw         $v0, 0x0($v1)
/* 2AA30 80029E30 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
/* 2AA34 80029E34 3C19F500 */  lui        $t9, (0xF5000100 >> 16)
/* 2AA38 80029E38 244E0008 */  addiu      $t6, $v0, 0x8
/* 2AA3C 80029E3C AC6E0000 */  sw         $t6, 0x0($v1)
/* 2AA40 80029E40 AC400004 */  sw         $zero, 0x4($v0)
/* 2AA44 80029E44 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2AA48 80029E48 8C620000 */  lw         $v0, 0x0($v1)
/* 2AA4C 80029E4C 37390100 */  ori        $t9, $t9, (0xF5000100 & 0xFFFF)
/* 2AA50 80029E50 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 2AA54 80029E54 24580008 */  addiu      $t8, $v0, 0x8
/* 2AA58 80029E58 AC780000 */  sw         $t8, 0x0($v1)
/* 2AA5C 80029E5C AC4E0004 */  sw         $t6, 0x4($v0)
/* 2AA60 80029E60 AC590000 */  sw         $t9, 0x0($v0)
/* 2AA64 80029E64 8C620000 */  lw         $v0, 0x0($v1)
/* 2AA68 80029E68 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 2AA6C 80029E6C 3C0EF000 */  lui        $t6, (0xF0000000 >> 16)
/* 2AA70 80029E70 244F0008 */  addiu      $t7, $v0, 0x8
/* 2AA74 80029E74 AC6F0000 */  sw         $t7, 0x0($v1)
/* 2AA78 80029E78 AC400004 */  sw         $zero, 0x4($v0)
/* 2AA7C 80029E7C AC580000 */  sw         $t8, 0x0($v0)
/* 2AA80 80029E80 8C620000 */  lw         $v0, 0x0($v1)
/* 2AA84 80029E84 3C0F073F */  lui        $t7, (0x73FC000 >> 16)
/* 2AA88 80029E88 35EFC000 */  ori        $t7, $t7, (0x73FC000 & 0xFFFF)
/* 2AA8C 80029E8C 24590008 */  addiu      $t9, $v0, 0x8
/* 2AA90 80029E90 AC790000 */  sw         $t9, 0x0($v1)
/* 2AA94 80029E94 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2AA98 80029E98 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2AA9C 80029E9C 8C620000 */  lw         $v0, 0x0($v1)
/* 2AAA0 80029EA0 24580008 */  addiu      $t8, $v0, 0x8
/* 2AAA4 80029EA4 AC780000 */  sw         $t8, 0x0($v1)
/* 2AAA8 80029EA8 AC400004 */  sw         $zero, 0x4($v0)
/* 2AAAC 80029EAC AC4B0000 */  sw         $t3, 0x0($v0)
/* 2AAB0 80029EB0 95B90000 */  lhu        $t9, 0x0($t5)
/* 2AAB4 80029EB4 372E0010 */  ori        $t6, $t9, 0x10
/* 2AAB8 80029EB8 A5AE0000 */  sh         $t6, 0x0($t5)
/* 2AABC 80029EBC 8C620000 */  lw         $v0, 0x0($v1)
.L80029EC0:
/* 2AAC0 80029EC0 8FB80094 */  lw         $t8, 0x94($sp)
/* 2AAC4 80029EC4 3C01FD48 */  lui        $at, (0xFD480000 >> 16)
/* 2AAC8 80029EC8 244F0008 */  addiu      $t7, $v0, 0x8
/* 2AACC 80029ECC 2719FFFF */  addiu      $t9, $t8, -0x1
/* 2AAD0 80029ED0 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 2AAD4 80029ED4 AC6F0000 */  sw         $t7, 0x0($v1)
/* 2AAD8 80029ED8 01C17825 */  or         $t7, $t6, $at
/* 2AADC 80029EDC AC4F0000 */  sw         $t7, 0x0($v0)
/* 2AAE0 80029EE0 8FB80098 */  lw         $t8, 0x98($sp)
/* 2AAE4 80029EE4 AC580004 */  sw         $t8, 0x4($v0)
/* 2AAE8 80029EE8 8C620000 */  lw         $v0, 0x0($v1)
/* 2AAEC 80029EEC 8FAE00A0 */  lw         $t6, 0xA0($sp)
/* 2AAF0 80029EF0 3C01F548 */  lui        $at, (0xF5480000 >> 16)
/* 2AAF4 80029EF4 24590008 */  addiu      $t9, $v0, 0x8
/* 2AAF8 80029EF8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 2AAFC 80029EFC 000FC0C3 */  sra        $t8, $t7, 3
/* 2AB00 80029F00 AC790000 */  sw         $t9, 0x0($v1)
/* 2AB04 80029F04 331901FF */  andi       $t9, $t8, 0x1FF
/* 2AB08 80029F08 00197240 */  sll        $t6, $t9, 9
/* 2AB0C 80029F0C 01C17825 */  or         $t7, $t6, $at
/* 2AB10 80029F10 AFAF0008 */  sw         $t7, 0x8($sp)
/* 2AB14 80029F14 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2AB18 80029F18 8FA800C4 */  lw         $t0, 0xC4($sp)
/* 2AB1C 80029F1C 8FA900C8 */  lw         $t1, 0xC8($sp)
/* 2AB20 80029F20 3C010700 */  lui        $at, (0x7000000 >> 16)
/* 2AB24 80029F24 3118000F */  andi       $t8, $t0, 0xF
/* 2AB28 80029F28 00184380 */  sll        $t0, $t8, 14
/* 2AB2C 80029F2C 312E000F */  andi       $t6, $t1, 0xF
/* 2AB30 80029F30 000E4900 */  sll        $t1, $t6, 4
/* 2AB34 80029F34 0101C025 */  or         $t8, $t0, $at
/* 2AB38 80029F38 0309C825 */  or         $t9, $t8, $t1
/* 2AB3C 80029F3C AC590004 */  sw         $t9, 0x4($v0)
/* 2AB40 80029F40 8C620000 */  lw         $v0, 0x0($v1)
/* 2AB44 80029F44 3C0FE600 */  lui        $t7, (0xE6000000 >> 16)
/* 2AB48 80029F48 244E0008 */  addiu      $t6, $v0, 0x8
/* 2AB4C 80029F4C AC6E0000 */  sw         $t6, 0x0($v1)
/* 2AB50 80029F50 AC400004 */  sw         $zero, 0x4($v0)
/* 2AB54 80029F54 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2AB58 80029F58 8C620000 */  lw         $v0, 0x0($v1)
/* 2AB5C 80029F5C 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* 2AB60 80029F60 3C010700 */  lui        $at, (0x7000000 >> 16)
/* 2AB64 80029F64 24580008 */  addiu      $t8, $v0, 0x8
/* 2AB68 80029F68 AC780000 */  sw         $t8, 0x0($v1)
/* 2AB6C 80029F6C AC590000 */  sw         $t9, 0x0($v0)
/* 2AB70 80029F70 8FAA00A0 */  lw         $t2, 0xA0($sp)
/* 2AB74 80029F74 8FAD009C */  lw         $t5, 0x9C($sp)
/* 2AB78 80029F78 000A7080 */  sll        $t6, $t2, 2
/* 2AB7C 80029F7C 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 2AB80 80029F80 000F5300 */  sll        $t2, $t7, 12
/* 2AB84 80029F84 000DC880 */  sll        $t9, $t5, 2
/* 2AB88 80029F88 332D0FFF */  andi       $t5, $t9, 0xFFF
/* 2AB8C 80029F8C 01417825 */  or         $t7, $t2, $at
/* 2AB90 80029F90 01EDC025 */  or         $t8, $t7, $t5
/* 2AB94 80029F94 AC580004 */  sw         $t8, 0x4($v0)
/* 2AB98 80029F98 8C620000 */  lw         $v0, 0x0($v1)
/* 2AB9C 80029F9C 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 2ABA0 80029FA0 24590008 */  addiu      $t9, $v0, 0x8
/* 2ABA4 80029FA4 AC790000 */  sw         $t9, 0x0($v1)
/* 2ABA8 80029FA8 AC400004 */  sw         $zero, 0x4($v0)
/* 2ABAC 80029FAC AC4B0000 */  sw         $t3, 0x0($v0)
/* 2ABB0 80029FB0 8C620000 */  lw         $v0, 0x0($v1)
/* 2ABB4 80029FB4 8FAF0008 */  lw         $t7, 0x8($sp)
/* 2ABB8 80029FB8 0109C025 */  or         $t8, $t0, $t1
/* 2ABBC 80029FBC 244E0008 */  addiu      $t6, $v0, 0x8
/* 2ABC0 80029FC0 AC6E0000 */  sw         $t6, 0x0($v1)
/* 2ABC4 80029FC4 AC580004 */  sw         $t8, 0x4($v0)
/* 2ABC8 80029FC8 AC4F0000 */  sw         $t7, 0x0($v0)
/* 2ABCC 80029FCC 8C620000 */  lw         $v0, 0x0($v1)
/* 2ABD0 80029FD0 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 2ABD4 80029FD4 014D7825 */  or         $t7, $t2, $t5
/* 2ABD8 80029FD8 24590008 */  addiu      $t9, $v0, 0x8
/* 2ABDC 80029FDC AC790000 */  sw         $t9, 0x0($v1)
/* 2ABE0 80029FE0 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2ABE4 80029FE4 AC4E0000 */  sw         $t6, 0x0($v0)
/* 2ABE8 80029FE8 8C620000 */  lw         $v0, 0x0($v1)
/* 2ABEC 80029FEC 8FB900E0 */  lw         $t9, 0xE0($sp)
/* 2ABF0 80029FF0 8FAE00E8 */  lw         $t6, 0xE8($sp)
/* 2ABF4 80029FF4 24580008 */  addiu      $t8, $v0, 0x8
/* 2ABF8 80029FF8 AC780000 */  sw         $t8, 0x0($v1)
/* 2ABFC 80029FFC 032E7821 */  addu       $t7, $t9, $t6
/* 2AC00 8002A000 000FC080 */  sll        $t8, $t7, 2
/* 2AC04 8002A004 000C7080 */  sll        $t6, $t4, 2
/* 2AC08 8002A008 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 2AC0C 8002A00C 33190FFF */  andi       $t9, $t8, 0xFFF
/* 2AC10 8002A010 000FC300 */  sll        $t8, $t7, 12
/* 2AC14 8002A014 03017025 */  or         $t6, $t8, $at
/* 2AC18 8002A018 01D97825 */  or         $t7, $t6, $t9
/* 2AC1C 8002A01C AC4F0000 */  sw         $t7, 0x0($v0)
/* 2AC20 8002A020 8FAF00E0 */  lw         $t7, 0xE0($sp)
/* 2AC24 8002A024 0010C080 */  sll        $t8, $s0, 2
/* 2AC28 8002A028 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 2AC2C 8002A02C 000ECB00 */  sll        $t9, $t6, 12
/* 2AC30 8002A030 000FC080 */  sll        $t8, $t7, 2
/* 2AC34 8002A034 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 2AC38 8002A038 032E7825 */  or         $t7, $t9, $t6
/* 2AC3C 8002A03C AC4F0004 */  sw         $t7, 0x4($v0)
/* 2AC40 8002A040 8C620000 */  lw         $v0, 0x0($v1)
/* 2AC44 8002A044 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
/* 2AC48 8002A048 24580008 */  addiu      $t8, $v0, 0x8
/* 2AC4C 8002A04C AC780000 */  sw         $t8, 0x0($v1)
/* 2AC50 8002A050 AC590000 */  sw         $t9, 0x0($v0)
/* 2AC54 8002A054 8FB900B4 */  lw         $t9, 0xB4($sp)
/* 2AC58 8002A058 8FAF00B8 */  lw         $t7, 0xB8($sp)
/* 2AC5C 8002A05C 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 2AC60 8002A060 000FC400 */  sll        $t8, $t7, 16
/* 2AC64 8002A064 030E7825 */  or         $t7, $t8, $t6
/* 2AC68 8002A068 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2AC6C 8002A06C 8C620000 */  lw         $v0, 0x0($v1)
/* 2AC70 8002A070 3C18B300 */  lui        $t8, (0xB3000000 >> 16)
/* 2AC74 8002A074 24590008 */  addiu      $t9, $v0, 0x8
/* 2AC78 8002A078 AC790000 */  sw         $t9, 0x0($v1)
/* 2AC7C 8002A07C AC580000 */  sw         $t8, 0x0($v0)
/* 2AC80 8002A080 8FB800AC */  lw         $t8, 0xAC($sp)
/* 2AC84 8002A084 8FAF00B0 */  lw         $t7, 0xB0($sp)
/* 2AC88 8002A088 330EFFFF */  andi       $t6, $t8, 0xFFFF
/* 2AC8C 8002A08C 000FCC00 */  sll        $t9, $t7, 16
/* 2AC90 8002A090 032E7825 */  or         $t7, $t9, $t6
/* 2AC94 8002A094 AC4F0004 */  sw         $t7, 0x4($v0)
/* 2AC98 8002A098 8C620000 */  lw         $v0, 0x0($v1)
/* 2AC9C 8002A09C 24580008 */  addiu      $t8, $v0, 0x8
/* 2ACA0 8002A0A0 AC780000 */  sw         $t8, 0x0($v1)
/* 2ACA4 8002A0A4 AC400004 */  sw         $zero, 0x4($v0)
/* 2ACA8 8002A0A8 AC4B0000 */  sw         $t3, 0x0($v0)
.L8002A0AC:
/* 2ACAC 8002A0AC 8FB00004 */  lw         $s0, 0x4($sp)
/* 2ACB0 8002A0B0 03E00008 */  jr         $ra
/* 2ACB4 8002A0B4 27BD00D8 */   addiu     $sp, $sp, 0xD8
