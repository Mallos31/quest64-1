glabel func_80005C6C
/* 686C 80005C6C 27BDFF50 */  addiu      $sp, $sp, -0xB0
/* 6870 80005C70 AFB60060 */  sw         $s6, 0x60($sp)
/* 6874 80005C74 AFB5005C */  sw         $s5, 0x5C($sp)
/* 6878 80005C78 AFB30054 */  sw         $s3, 0x54($sp)
/* 687C 80005C7C 00C09825 */  or         $s3, $a2, $zero
/* 6880 80005C80 0080A825 */  or         $s5, $a0, $zero
/* 6884 80005C84 00A0B025 */  or         $s6, $a1, $zero
/* 6888 80005C88 AFBF0064 */  sw         $ra, 0x64($sp)
/* 688C 80005C8C AFB40058 */  sw         $s4, 0x58($sp)
/* 6890 80005C90 AFB20050 */  sw         $s2, 0x50($sp)
/* 6894 80005C94 AFB1004C */  sw         $s1, 0x4C($sp)
/* 6898 80005C98 AFB00048 */  sw         $s0, 0x48($sp)
/* 689C 80005C9C F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 68A0 80005CA0 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 68A4 80005CA4 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 68A8 80005CA8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 68AC 80005CAC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 68B0 80005CB0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 68B4 80005CB4 C6780028 */  lwc1       $f24, 0x28($s3)
/* 68B8 80005CB8 C6760024 */  lwc1       $f22, 0x24($s3)
/* 68BC 80005CBC C6B40000 */  lwc1       $f20, 0x0($s5)
/* 68C0 80005CC0 C6720000 */  lwc1       $f18, 0x0($s3)
/* 68C4 80005CC4 4616C782 */  mul.s      $f30, $f24, $f22
/* 68C8 80005CC8 C6D60000 */  lwc1       $f22, 0x0($s6)
/* 68CC 80005CCC C6780008 */  lwc1       $f24, 0x8($s3)
/* 68D0 80005CD0 3C118008 */  lui        $s1, %hi(D_8007D08C)
/* 68D4 80005CD4 8E31D08C */  lw         $s1, %lo(D_8007D08C)($s1)
/* 68D8 80005CD8 4612A680 */  add.s      $f26, $f20, $f18
/* 68DC 80005CDC 0000A025 */  or         $s4, $zero, $zero
/* 68E0 80005CE0 1220003A */  beqz       $s1, .L80005DCC
/* 68E4 80005CE4 4618B700 */   add.s     $f28, $f22, $f24
/* 68E8 80005CE8 3C128008 */  lui        $s2, %hi(D_8007D090)
/* 68EC 80005CEC 12200037 */  beqz       $s1, .L80005DCC
/* 68F0 80005CF0 2652D090 */   addiu     $s2, $s2, %lo(D_8007D090)
/* 68F4 80005CF4 8E500000 */  lw         $s0, 0x0($s2)
.L80005CF8:
/* 68F8 80005CF8 26520004 */  addiu      $s2, $s2, 0x4
/* 68FC 80005CFC C6080028 */  lwc1       $f8, 0x28($s0)
/* 6900 80005D00 C60A0024 */  lwc1       $f10, 0x24($s0)
/* 6904 80005D04 C6040000 */  lwc1       $f4, 0x0($s0)
/* 6908 80005D08 C6060008 */  lwc1       $f6, 0x8($s0)
/* 690C 80005D0C 460A4402 */  mul.s      $f16, $f8, $f10
/* 6910 80005D10 4604D501 */  sub.s      $f20, $f26, $f4
/* 6914 80005D14 4606E581 */  sub.s      $f22, $f28, $f6
/* 6918 80005D18 461E8600 */  add.s      $f24, $f16, $f30
/* 691C 80005D1C 4618A03C */  c.lt.s     $f20, $f24
/* 6920 80005D20 00000000 */  nop
/* 6924 80005D24 45000025 */  bc1f       .L80005DBC
/* 6928 80005D28 00000000 */   nop
/* 692C 80005D2C 4600C007 */  neg.s      $f0, $f24
/* 6930 80005D30 4614003C */  c.lt.s     $f0, $f20
/* 6934 80005D34 00000000 */  nop
/* 6938 80005D38 45000020 */  bc1f       .L80005DBC
/* 693C 80005D3C 00000000 */   nop
/* 6940 80005D40 4618B03C */  c.lt.s     $f22, $f24
/* 6944 80005D44 00000000 */  nop
/* 6948 80005D48 4500001C */  bc1f       .L80005DBC
/* 694C 80005D4C 00000000 */   nop
/* 6950 80005D50 4616003C */  c.lt.s     $f0, $f22
/* 6954 80005D54 00000000 */  nop
/* 6958 80005D58 45000018 */  bc1f       .L80005DBC
/* 695C 80005D5C 00000000 */   nop
/* 6960 80005D60 4614A482 */  mul.s      $f18, $f20, $f20
/* 6964 80005D64 00000000 */  nop
/* 6968 80005D68 4616B102 */  mul.s      $f4, $f22, $f22
/* 696C 80005D6C 0C00D3D8 */  jal        _nsqrtf
/* 6970 80005D70 46049300 */   add.s     $f12, $f18, $f4
/* 6974 80005D74 4618003C */  c.lt.s     $f0, $f24
/* 6978 80005D78 00000000 */  nop
/* 697C 80005D7C 4500000F */  bc1f       .L80005DBC
/* 6980 80005D80 00000000 */   nop
/* 6984 80005D84 4600C083 */  div.s      $f2, $f24, $f0
/* 6988 80005D88 C6060000 */  lwc1       $f6, 0x0($s0)
/* 698C 80005D8C C66A0000 */  lwc1       $f10, 0x0($s3)
/* 6990 80005D90 24140001 */  addiu      $s4, $zero, 0x1
/* 6994 80005D94 4602A502 */  mul.s      $f20, $f20, $f2
/* 6998 80005D98 46143200 */  add.s      $f8, $f6, $f20
/* 699C 80005D9C 4602B582 */  mul.s      $f22, $f22, $f2
/* 69A0 80005DA0 460A4401 */  sub.s      $f16, $f8, $f10
/* 69A4 80005DA4 E6B00000 */  swc1       $f16, 0x0($s5)
/* 69A8 80005DA8 C6120008 */  lwc1       $f18, 0x8($s0)
/* 69AC 80005DAC C6660008 */  lwc1       $f6, 0x8($s3)
/* 69B0 80005DB0 46169100 */  add.s      $f4, $f18, $f22
/* 69B4 80005DB4 46062201 */  sub.s      $f8, $f4, $f6
/* 69B8 80005DB8 E6C80000 */  swc1       $f8, 0x0($s6)
.L80005DBC:
/* 69BC 80005DBC 16800003 */  bnez       $s4, .L80005DCC
/* 69C0 80005DC0 2631FFFF */   addiu     $s1, $s1, -0x1
/* 69C4 80005DC4 5620FFCC */  bnel       $s1, $zero, .L80005CF8
/* 69C8 80005DC8 8E500000 */   lw        $s0, 0x0($s2)
.L80005DCC:
/* 69CC 80005DCC 3C118008 */  lui        $s1, %hi(D_8007BCE8)
/* 69D0 80005DD0 8E31BCE8 */  lw         $s1, %lo(D_8007BCE8)($s1)
/* 69D4 80005DD4 3C128008 */  lui        $s2, %hi(D_8007BCF0)
/* 69D8 80005DD8 1220003B */  beqz       $s1, .L80005EC8
/* 69DC 80005DDC 00000000 */   nop
/* 69E0 80005DE0 16800039 */  bnez       $s4, .L80005EC8
/* 69E4 80005DE4 2652BCF0 */   addiu     $s2, $s2, %lo(D_8007BCF0)
/* 69E8 80005DE8 12200037 */  beqz       $s1, .L80005EC8
/* 69EC 80005DEC 00000000 */   nop
/* 69F0 80005DF0 8E500000 */  lw         $s0, 0x0($s2)
.L80005DF4:
/* 69F4 80005DF4 26520004 */  addiu      $s2, $s2, 0x4
/* 69F8 80005DF8 C6120028 */  lwc1       $f18, 0x28($s0)
/* 69FC 80005DFC C6040024 */  lwc1       $f4, 0x24($s0)
/* 6A00 80005E00 C60A0000 */  lwc1       $f10, 0x0($s0)
/* 6A04 80005E04 C6100008 */  lwc1       $f16, 0x8($s0)
/* 6A08 80005E08 46049182 */  mul.s      $f6, $f18, $f4
/* 6A0C 80005E0C 460AD501 */  sub.s      $f20, $f26, $f10
/* 6A10 80005E10 4610E581 */  sub.s      $f22, $f28, $f16
/* 6A14 80005E14 461E3600 */  add.s      $f24, $f6, $f30
/* 6A18 80005E18 4618A03C */  c.lt.s     $f20, $f24
/* 6A1C 80005E1C 00000000 */  nop
/* 6A20 80005E20 45000025 */  bc1f       .L80005EB8
/* 6A24 80005E24 00000000 */   nop
/* 6A28 80005E28 4600C007 */  neg.s      $f0, $f24
/* 6A2C 80005E2C 4614003C */  c.lt.s     $f0, $f20
/* 6A30 80005E30 00000000 */  nop
/* 6A34 80005E34 45000020 */  bc1f       .L80005EB8
/* 6A38 80005E38 00000000 */   nop
/* 6A3C 80005E3C 4618B03C */  c.lt.s     $f22, $f24
/* 6A40 80005E40 00000000 */  nop
/* 6A44 80005E44 4500001C */  bc1f       .L80005EB8
/* 6A48 80005E48 00000000 */   nop
/* 6A4C 80005E4C 4616003C */  c.lt.s     $f0, $f22
/* 6A50 80005E50 00000000 */  nop
/* 6A54 80005E54 45000018 */  bc1f       .L80005EB8
/* 6A58 80005E58 00000000 */   nop
/* 6A5C 80005E5C 4614A202 */  mul.s      $f8, $f20, $f20
/* 6A60 80005E60 00000000 */  nop
/* 6A64 80005E64 4616B282 */  mul.s      $f10, $f22, $f22
/* 6A68 80005E68 0C00D3D8 */  jal        _nsqrtf
/* 6A6C 80005E6C 460A4300 */   add.s     $f12, $f8, $f10
/* 6A70 80005E70 4618003C */  c.lt.s     $f0, $f24
/* 6A74 80005E74 00000000 */  nop
/* 6A78 80005E78 4500000F */  bc1f       .L80005EB8
/* 6A7C 80005E7C 00000000 */   nop
/* 6A80 80005E80 4600C083 */  div.s      $f2, $f24, $f0
/* 6A84 80005E84 C6100000 */  lwc1       $f16, 0x0($s0)
/* 6A88 80005E88 C6640000 */  lwc1       $f4, 0x0($s3)
/* 6A8C 80005E8C 24140001 */  addiu      $s4, $zero, 0x1
/* 6A90 80005E90 4602A502 */  mul.s      $f20, $f20, $f2
/* 6A94 80005E94 46148480 */  add.s      $f18, $f16, $f20
/* 6A98 80005E98 4602B582 */  mul.s      $f22, $f22, $f2
/* 6A9C 80005E9C 46049181 */  sub.s      $f6, $f18, $f4
/* 6AA0 80005EA0 E6A60000 */  swc1       $f6, 0x0($s5)
/* 6AA4 80005EA4 C6080008 */  lwc1       $f8, 0x8($s0)
/* 6AA8 80005EA8 C6700008 */  lwc1       $f16, 0x8($s3)
/* 6AAC 80005EAC 46164280 */  add.s      $f10, $f8, $f22
/* 6AB0 80005EB0 46105481 */  sub.s      $f18, $f10, $f16
/* 6AB4 80005EB4 E6D20000 */  swc1       $f18, 0x0($s6)
.L80005EB8:
/* 6AB8 80005EB8 16800003 */  bnez       $s4, .L80005EC8
/* 6ABC 80005EBC 2631FFFF */   addiu     $s1, $s1, -0x1
/* 6AC0 80005EC0 5620FFCC */  bnel       $s1, $zero, .L80005DF4
/* 6AC4 80005EC4 8E500000 */   lw        $s0, 0x0($s2)
.L80005EC8:
/* 6AC8 80005EC8 3C118008 */  lui        $s1, %hi(D_80084F38)
/* 6ACC 80005ECC 8E314F38 */  lw         $s1, %lo(D_80084F38)($s1)
/* 6AD0 80005ED0 3C128008 */  lui        $s2, %hi(D_80084F40)
/* 6AD4 80005ED4 5220003E */  beql       $s1, $zero, .L80005FD0
/* 6AD8 80005ED8 8FBF0064 */   lw        $ra, 0x64($sp)
/* 6ADC 80005EDC 1680003B */  bnez       $s4, .L80005FCC
/* 6AE0 80005EE0 26524F40 */   addiu     $s2, $s2, %lo(D_80084F40)
/* 6AE4 80005EE4 5220003A */  beql       $s1, $zero, .L80005FD0
/* 6AE8 80005EE8 8FBF0064 */   lw        $ra, 0x64($sp)
/* 6AEC 80005EEC 4600F3A1 */  cvt.d.s    $f14, $f30
/* 6AF0 80005EF0 8E500000 */  lw         $s0, 0x0($s2)
.L80005EF4:
/* 6AF4 80005EF4 26520004 */  addiu      $s2, $s2, 0x4
/* 6AF8 80005EF8 C6080010 */  lwc1       $f8, 0x10($s0)
/* 6AFC 80005EFC C6040000 */  lwc1       $f4, 0x0($s0)
/* 6B00 80005F00 C6060008 */  lwc1       $f6, 0x8($s0)
/* 6B04 80005F04 46004021 */  cvt.d.s    $f0, $f8
/* 6B08 80005F08 4604D501 */  sub.s      $f20, $f26, $f4
/* 6B0C 80005F0C 46200280 */  add.d      $f10, $f0, $f0
/* 6B10 80005F10 4606E581 */  sub.s      $f22, $f28, $f6
/* 6B14 80005F14 462A7400 */  add.d      $f16, $f14, $f10
/* 6B18 80005F18 46208620 */  cvt.s.d    $f24, $f16
/* 6B1C 80005F1C 4618A03C */  c.lt.s     $f20, $f24
/* 6B20 80005F20 00000000 */  nop
/* 6B24 80005F24 45000025 */  bc1f       .L80005FBC
/* 6B28 80005F28 00000000 */   nop
/* 6B2C 80005F2C 4600C007 */  neg.s      $f0, $f24
/* 6B30 80005F30 4614003C */  c.lt.s     $f0, $f20
/* 6B34 80005F34 00000000 */  nop
/* 6B38 80005F38 45000020 */  bc1f       .L80005FBC
/* 6B3C 80005F3C 00000000 */   nop
/* 6B40 80005F40 4618B03C */  c.lt.s     $f22, $f24
/* 6B44 80005F44 00000000 */  nop
/* 6B48 80005F48 4500001C */  bc1f       .L80005FBC
/* 6B4C 80005F4C 00000000 */   nop
/* 6B50 80005F50 4616003C */  c.lt.s     $f0, $f22
/* 6B54 80005F54 00000000 */  nop
/* 6B58 80005F58 45000018 */  bc1f       .L80005FBC
/* 6B5C 80005F5C 00000000 */   nop
/* 6B60 80005F60 4614A482 */  mul.s      $f18, $f20, $f20
/* 6B64 80005F64 F7AE0068 */  sdc1       $f14, 0x68($sp)
/* 6B68 80005F68 4616B102 */  mul.s      $f4, $f22, $f22
/* 6B6C 80005F6C 0C00D3D8 */  jal        _nsqrtf
/* 6B70 80005F70 46049300 */   add.s     $f12, $f18, $f4
/* 6B74 80005F74 4618003C */  c.lt.s     $f0, $f24
/* 6B78 80005F78 D7AE0068 */  ldc1       $f14, 0x68($sp)
/* 6B7C 80005F7C 4500000F */  bc1f       .L80005FBC
/* 6B80 80005F80 00000000 */   nop
/* 6B84 80005F84 4600C083 */  div.s      $f2, $f24, $f0
/* 6B88 80005F88 C6060000 */  lwc1       $f6, 0x0($s0)
/* 6B8C 80005F8C C66A0000 */  lwc1       $f10, 0x0($s3)
/* 6B90 80005F90 24140001 */  addiu      $s4, $zero, 0x1
/* 6B94 80005F94 4602A502 */  mul.s      $f20, $f20, $f2
/* 6B98 80005F98 46143200 */  add.s      $f8, $f6, $f20
/* 6B9C 80005F9C 4602B582 */  mul.s      $f22, $f22, $f2
/* 6BA0 80005FA0 460A4401 */  sub.s      $f16, $f8, $f10
/* 6BA4 80005FA4 E6B00000 */  swc1       $f16, 0x0($s5)
/* 6BA8 80005FA8 C6120008 */  lwc1       $f18, 0x8($s0)
/* 6BAC 80005FAC C6660008 */  lwc1       $f6, 0x8($s3)
/* 6BB0 80005FB0 46169100 */  add.s      $f4, $f18, $f22
/* 6BB4 80005FB4 46062201 */  sub.s      $f8, $f4, $f6
/* 6BB8 80005FB8 E6C80000 */  swc1       $f8, 0x0($s6)
.L80005FBC:
/* 6BBC 80005FBC 16800003 */  bnez       $s4, .L80005FCC
/* 6BC0 80005FC0 2631FFFF */   addiu     $s1, $s1, -0x1
/* 6BC4 80005FC4 5620FFCB */  bnel       $s1, $zero, .L80005EF4
/* 6BC8 80005FC8 8E500000 */   lw        $s0, 0x0($s2)
.L80005FCC:
/* 6BCC 80005FCC 8FBF0064 */  lw         $ra, 0x64($sp)
.L80005FD0:
/* 6BD0 80005FD0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 6BD4 80005FD4 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 6BD8 80005FD8 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 6BDC 80005FDC D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 6BE0 80005FE0 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 6BE4 80005FE4 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 6BE8 80005FE8 8FB00048 */  lw         $s0, 0x48($sp)
/* 6BEC 80005FEC 8FB1004C */  lw         $s1, 0x4C($sp)
/* 6BF0 80005FF0 8FB20050 */  lw         $s2, 0x50($sp)
/* 6BF4 80005FF4 8FB30054 */  lw         $s3, 0x54($sp)
/* 6BF8 80005FF8 8FB40058 */  lw         $s4, 0x58($sp)
/* 6BFC 80005FFC 8FB5005C */  lw         $s5, 0x5C($sp)
/* 6C00 80006000 8FB60060 */  lw         $s6, 0x60($sp)
/* 6C04 80006004 03E00008 */  jr         $ra
/* 6C08 80006008 27BD00B0 */   addiu     $sp, $sp, 0xB0