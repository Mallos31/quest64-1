glabel func_800011DC
/* 1DDC 800011DC 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 1DE0 800011E0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1DE4 800011E4 3C108008 */  lui        $s0, %hi(gMasterGfxPos)
/* 1DE8 800011E8 2610B2FC */  addiu      $s0, $s0, %lo(gMasterGfxPos)
/* 1DEC 800011EC AFBF001C */  sw         $ra, 0x1C($sp)
/* 1DF0 800011F0 AFA40088 */  sw         $a0, 0x88($sp)
/* 1DF4 800011F4 8FAE0088 */  lw         $t6, 0x88($sp)
/* 1DF8 800011F8 34018148 */  ori        $at, $zero, 0x8148
/* 1DFC 800011FC 3C0DBC00 */  lui        $t5, (0xBC000406 >> 16)
/* 1E00 80001200 01C17821 */  addu       $t7, $t6, $at
/* 1E04 80001204 AE0F0000 */  sw         $t7, 0x0($s0)
/* 1E08 80001208 8E030000 */  lw         $v1, 0x0($s0)
/* 1E0C 8000120C 3C19BC00 */  lui        $t9, (0xBC000006 >> 16)
/* 1E10 80001210 37390006 */  ori        $t9, $t9, (0xBC000006 & 0xFFFF)
/* 1E14 80001214 24780008 */  addiu      $t8, $v1, 0x8
/* 1E18 80001218 AE180000 */  sw         $t8, 0x0($s0)
/* 1E1C 8000121C AC600004 */  sw         $zero, 0x4($v1)
/* 1E20 80001220 AC790000 */  sw         $t9, 0x0($v1)
/* 1E24 80001224 8E030000 */  lw         $v1, 0x0($s0)
/* 1E28 80001228 35AD0406 */  ori        $t5, $t5, (0xBC000406 & 0xFFFF)
/* 1E2C 8000122C 3C048008 */  lui        $a0, %hi(D_8007B350)
/* 1E30 80001230 246C0008 */  addiu      $t4, $v1, 0x8
/* 1E34 80001234 AE0C0000 */  sw         $t4, 0x0($s0)
/* 1E38 80001238 AC6D0000 */  sw         $t5, 0x0($v1)
/* 1E3C 8000123C 8C84B350 */  lw         $a0, %lo(D_8007B350)($a0)
/* 1E40 80001240 0C00D374 */  jal        osVirtualToPhysical
/* 1E44 80001244 AFA30074 */   sw        $v1, 0x74($sp)
/* 1E48 80001248 8FA50074 */  lw         $a1, 0x74($sp)
/* 1E4C 8000124C ACA20004 */  sw         $v0, 0x4($a1)
/* 1E50 80001250 8E030000 */  lw         $v1, 0x0($s0)
/* 1E54 80001254 3C0FBC00 */  lui        $t7, (0xBC000806 >> 16)
/* 1E58 80001258 35EF0806 */  ori        $t7, $t7, (0xBC000806 & 0xFFFF)
/* 1E5C 8000125C 246E0008 */  addiu      $t6, $v1, 0x8
/* 1E60 80001260 AE0E0000 */  sw         $t6, 0x0($s0)
/* 1E64 80001264 AC6F0000 */  sw         $t7, 0x0($v1)
/* 1E68 80001268 8FA40088 */  lw         $a0, 0x88($sp)
/* 1E6C 8000126C AFA30070 */  sw         $v1, 0x70($sp)
/* 1E70 80001270 24840058 */  addiu      $a0, $a0, 0x58
/* 1E74 80001274 0C00D374 */  jal        osVirtualToPhysical
/* 1E78 80001278 AFA40024 */   sw        $a0, 0x24($sp)
/* 1E7C 8000127C 8FA60070 */  lw         $a2, 0x70($sp)
/* 1E80 80001280 3C190600 */  lui        $t9, (0x6000000 >> 16)
/* 1E84 80001284 3C0EFE00 */  lui        $t6, (0xFE000000 >> 16)
/* 1E88 80001288 ACC20004 */  sw         $v0, 0x4($a2)
/* 1E8C 8000128C 8E030000 */  lw         $v1, 0x0($s0)
/* 1E90 80001290 3C0C0100 */  lui        $t4, %hi(D_1000010)
/* 1E94 80001294 258C0010 */  addiu      $t4, $t4, %lo(D_1000010)
/* 1E98 80001298 24780008 */  addiu      $t8, $v1, 0x8
/* 1E9C 8000129C AE180000 */  sw         $t8, 0x0($s0)
/* 1EA0 800012A0 AC6C0004 */  sw         $t4, 0x4($v1)
/* 1EA4 800012A4 AC790000 */  sw         $t9, 0x0($v1)
/* 1EA8 800012A8 8E030000 */  lw         $v1, 0x0($s0)
/* 1EAC 800012AC 3C04802E */  lui        $a0, %hi(D_802DA800)
/* 1EB0 800012B0 2484A800 */  addiu      $a0, $a0, %lo(D_802DA800)
/* 1EB4 800012B4 246D0008 */  addiu      $t5, $v1, 0x8
/* 1EB8 800012B8 AE0D0000 */  sw         $t5, 0x0($s0)
/* 1EBC 800012BC AC6E0000 */  sw         $t6, 0x0($v1)
/* 1EC0 800012C0 0C00D374 */  jal        osVirtualToPhysical
/* 1EC4 800012C4 AFA30068 */   sw        $v1, 0x68($sp)
/* 1EC8 800012C8 8FA70068 */  lw         $a3, 0x68($sp)
/* 1ECC 800012CC 3C0CBA00 */  lui        $t4, (0xBA001402 >> 16)
/* 1ED0 800012D0 3C04802E */  lui        $a0, %hi(D_802DA800)
/* 1ED4 800012D4 ACE20004 */  sw         $v0, 0x4($a3)
/* 1ED8 800012D8 8E030000 */  lw         $v1, 0x0($s0)
/* 1EDC 800012DC 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 1EE0 800012E0 2484A800 */  addiu      $a0, $a0, %lo(D_802DA800)
/* 1EE4 800012E4 246F0008 */  addiu      $t7, $v1, 0x8
/* 1EE8 800012E8 AE0F0000 */  sw         $t7, 0x0($s0)
/* 1EEC 800012EC AC600004 */  sw         $zero, 0x4($v1)
/* 1EF0 800012F0 AC780000 */  sw         $t8, 0x0($v1)
/* 1EF4 800012F4 8E030000 */  lw         $v1, 0x0($s0)
/* 1EF8 800012F8 358C1402 */  ori        $t4, $t4, (0xBA001402 & 0xFFFF)
/* 1EFC 800012FC 3C0D0030 */  lui        $t5, (0x300000 >> 16)
/* 1F00 80001300 24790008 */  addiu      $t9, $v1, 0x8
/* 1F04 80001304 AE190000 */  sw         $t9, 0x0($s0)
/* 1F08 80001308 AC6D0004 */  sw         $t5, 0x4($v1)
/* 1F0C 8000130C AC6C0000 */  sw         $t4, 0x0($v1)
/* 1F10 80001310 8E030000 */  lw         $v1, 0x0($s0)
/* 1F14 80001314 3C0FFF10 */  lui        $t7, (0xFF10013F >> 16)
/* 1F18 80001318 35EF013F */  ori        $t7, $t7, (0xFF10013F & 0xFFFF)
/* 1F1C 8000131C 246E0008 */  addiu      $t6, $v1, 0x8
/* 1F20 80001320 AE0E0000 */  sw         $t6, 0x0($s0)
/* 1F24 80001324 AC6F0000 */  sw         $t7, 0x0($v1)
/* 1F28 80001328 0C00D374 */  jal        osVirtualToPhysical
/* 1F2C 8000132C AFA3005C */   sw        $v1, 0x5C($sp)
/* 1F30 80001330 8FA8005C */  lw         $t0, 0x5C($sp)
/* 1F34 80001334 3C19F700 */  lui        $t9, (0xF7000000 >> 16)
/* 1F38 80001338 3C0EF64D */  lui        $t6, (0xF64DC39C >> 16)
/* 1F3C 8000133C AD020004 */  sw         $v0, 0x4($t0)
/* 1F40 80001340 8E030000 */  lw         $v1, 0x0($s0)
/* 1F44 80001344 3C0CFFFC */  lui        $t4, (0xFFFCFFFC >> 16)
/* 1F48 80001348 358CFFFC */  ori        $t4, $t4, (0xFFFCFFFC & 0xFFFF)
/* 1F4C 8000134C 24780008 */  addiu      $t8, $v1, 0x8
/* 1F50 80001350 AE180000 */  sw         $t8, 0x0($s0)
/* 1F54 80001354 AC6C0004 */  sw         $t4, 0x4($v1)
/* 1F58 80001358 AC790000 */  sw         $t9, 0x0($v1)
/* 1F5C 8000135C 8E030000 */  lw         $v1, 0x0($s0)
/* 1F60 80001360 3C0F0002 */  lui        $t7, (0x20020 >> 16)
/* 1F64 80001364 35EF0020 */  ori        $t7, $t7, (0x20020 & 0xFFFF)
/* 1F68 80001368 246D0008 */  addiu      $t5, $v1, 0x8
/* 1F6C 8000136C AE0D0000 */  sw         $t5, 0x0($s0)
/* 1F70 80001370 35CEC39C */  ori        $t6, $t6, (0xF64DC39C & 0xFFFF)
/* 1F74 80001374 AC6E0000 */  sw         $t6, 0x0($v1)
/* 1F78 80001378 AC6F0004 */  sw         $t7, 0x4($v1)
/* 1F7C 8000137C 8E030000 */  lw         $v1, 0x0($s0)
/* 1F80 80001380 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1F84 80001384 24780008 */  addiu      $t8, $v1, 0x8
/* 1F88 80001388 AE180000 */  sw         $t8, 0x0($s0)
/* 1F8C 8000138C AC600004 */  sw         $zero, 0x4($v1)
/* 1F90 80001390 AC790000 */  sw         $t9, 0x0($v1)
/* 1F94 80001394 8E030000 */  lw         $v1, 0x0($s0)
/* 1F98 80001398 3C0DFF10 */  lui        $t5, (0xFF10013F >> 16)
/* 1F9C 8000139C 35AD013F */  ori        $t5, $t5, (0xFF10013F & 0xFFFF)
/* 1FA0 800013A0 246C0008 */  addiu      $t4, $v1, 0x8
/* 1FA4 800013A4 AE0C0000 */  sw         $t4, 0x0($s0)
/* 1FA8 800013A8 AC6D0000 */  sw         $t5, 0x0($v1)
/* 1FAC 800013AC 8FAE0088 */  lw         $t6, 0x88($sp)
/* 1FB0 800013B0 25C47FFF */  addiu      $a0, $t6, 0x7FFF
/* 1FB4 800013B4 8C84514D */  lw         $a0, 0x514D($a0)
/* 1FB8 800013B8 0C00D374 */  jal        osVirtualToPhysical
/* 1FBC 800013BC AFA3004C */   sw        $v1, 0x4C($sp)
/* 1FC0 800013C0 8FA9004C */  lw         $t1, 0x4C($sp)
/* 1FC4 800013C4 3C068008 */  lui        $a2, %hi(gameMode)
/* 1FC8 800013C8 3C0AF64D */  lui        $t2, (0xF64DC39C >> 16)
/* 1FCC 800013CC 3C0B0002 */  lui        $t3, (0x20020 >> 16)
/* 1FD0 800013D0 356B0020 */  ori        $t3, $t3, (0x20020 & 0xFFFF)
/* 1FD4 800013D4 354AC39C */  ori        $t2, $t2, (0xF64DC39C & 0xFFFF)
/* 1FD8 800013D8 24C6B2E0 */  addiu      $a2, $a2, %lo(gameMode)
/* 1FDC 800013DC 24070001 */  addiu      $a3, $zero, 0x1
/* 1FE0 800013E0 3C08F700 */  lui        $t0, (0xF7000000 >> 16)
/* 1FE4 800013E4 AD220004 */  sw         $v0, 0x4($t1)
/* 1FE8 800013E8 94CF0000 */  lhu        $t7, 0x0($a2)
/* 1FEC 800013EC 24010002 */  addiu      $at, $zero, 0x2
/* 1FF0 800013F0 54EF001F */  bnel       $a3, $t7, .L80001470
/* 1FF4 800013F4 8E030000 */   lw        $v1, 0x0($s0)
/* 1FF8 800013F8 8E030000 */  lw         $v1, 0x0($s0)
/* 1FFC 800013FC 3C198008 */  lui        $t9, %hi(D_8007B300)
/* 2000 80001400 3C0E8008 */  lui        $t6, %hi(D_8007B304)
/* 2004 80001404 24780008 */  addiu      $t8, $v1, 0x8
/* 2008 80001408 AE180000 */  sw         $t8, 0x0($s0)
/* 200C 8000140C AC680000 */  sw         $t0, 0x0($v1)
/* 2010 80001410 8F39B300 */  lw         $t9, %lo(D_8007B300)($t9)
/* 2014 80001414 8DCEB304 */  lw         $t6, %lo(D_8007B304)($t6)
/* 2018 80001418 00196200 */  sll        $t4, $t9, 8
/* 201C 8000141C 318DF800 */  andi       $t5, $t4, 0xF800
/* 2020 80001420 3C0C8008 */  lui        $t4, %hi(D_8007B308)
/* 2024 80001424 8D8CB308 */  lw         $t4, %lo(D_8007B308)($t4)
/* 2028 80001428 000E78C0 */  sll        $t7, $t6, 3
/* 202C 8000142C 31F807C0 */  andi       $t8, $t7, 0x7C0
/* 2030 80001430 000C7082 */  srl        $t6, $t4, 2
/* 2034 80001434 31CF003E */  andi       $t7, $t6, 0x3E
/* 2038 80001438 01B8C825 */  or         $t9, $t5, $t8
/* 203C 8000143C 032F2025 */  or         $a0, $t9, $t7
/* 2040 80001440 348D0001 */  ori        $t5, $a0, 0x1
/* 2044 80001444 000DC400 */  sll        $t8, $t5, 16
/* 2048 80001448 030D6025 */  or         $t4, $t8, $t5
/* 204C 8000144C AC6C0004 */  sw         $t4, 0x4($v1)
/* 2050 80001450 8E030000 */  lw         $v1, 0x0($s0)
/* 2054 80001454 246E0008 */  addiu      $t6, $v1, 0x8
/* 2058 80001458 AE0E0000 */  sw         $t6, 0x0($s0)
/* 205C 8000145C AC6B0004 */  sw         $t3, 0x4($v1)
/* 2060 80001460 AC6A0000 */  sw         $t2, 0x0($v1)
/* 2064 80001464 1000000E */  b          .L800014A0
/* 2068 80001468 8E030000 */   lw        $v1, 0x0($s0)
/* 206C 8000146C 8E030000 */  lw         $v1, 0x0($s0)
.L80001470:
/* 2070 80001470 3C0F0001 */  lui        $t7, (0x10001 >> 16)
/* 2074 80001474 35EF0001 */  ori        $t7, $t7, (0x10001 & 0xFFFF)
/* 2078 80001478 24790008 */  addiu      $t9, $v1, 0x8
/* 207C 8000147C AE190000 */  sw         $t9, 0x0($s0)
/* 2080 80001480 AC6F0004 */  sw         $t7, 0x4($v1)
/* 2084 80001484 AC680000 */  sw         $t0, 0x0($v1)
/* 2088 80001488 8E030000 */  lw         $v1, 0x0($s0)
/* 208C 8000148C 246D0008 */  addiu      $t5, $v1, 0x8
/* 2090 80001490 AE0D0000 */  sw         $t5, 0x0($s0)
/* 2094 80001494 AC6B0004 */  sw         $t3, 0x4($v1)
/* 2098 80001498 AC6A0000 */  sw         $t2, 0x0($v1)
/* 209C 8000149C 8E030000 */  lw         $v1, 0x0($s0)
.L800014A0:
/* 20A0 800014A0 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
/* 20A4 800014A4 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
/* 20A8 800014A8 24780008 */  addiu      $t8, $v1, 0x8
/* 20AC 800014AC AE180000 */  sw         $t8, 0x0($s0)
/* 20B0 800014B0 AC600004 */  sw         $zero, 0x4($v1)
/* 20B4 800014B4 AC6C0000 */  sw         $t4, 0x0($v1)
/* 20B8 800014B8 8E030000 */  lw         $v1, 0x0($s0)
/* 20BC 800014BC 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
/* 20C0 800014C0 3C0F0010 */  lui        $t7, (0x100000 >> 16)
/* 20C4 800014C4 246E0008 */  addiu      $t6, $v1, 0x8
/* 20C8 800014C8 AE0E0000 */  sw         $t6, 0x0($s0)
/* 20CC 800014CC AC6F0004 */  sw         $t7, 0x4($v1)
/* 20D0 800014D0 AC790000 */  sw         $t9, 0x0($v1)
/* 20D4 800014D4 94C20000 */  lhu        $v0, 0x0($a2)
/* 20D8 800014D8 14E20047 */  bne        $a3, $v0, .L800015F8
/* 20DC 800014DC 00000000 */   nop
/* 20E0 800014E0 0C004AF8 */  jal        func_80012BE0
/* 20E4 800014E4 8FA40024 */   lw        $a0, 0x24($sp)
/* 20E8 800014E8 0C0042D6 */  jal        func_80010B58
/* 20EC 800014EC 00000000 */   nop
/* 20F0 800014F0 3C0D8008 */  lui        $t5, %hi(D_80084F12)
/* 20F4 800014F4 95AD4F12 */  lhu        $t5, %lo(D_80084F12)($t5)
/* 20F8 800014F8 31B80004 */  andi       $t8, $t5, 0x4
/* 20FC 800014FC 13000005 */  beqz       $t8, .L80001514
/* 2100 80001500 3C048008 */   lui       $a0, %hi(D_8007B340)
/* 2104 80001504 0C00447E */  jal        func_800111F8
/* 2108 80001508 8C84B340 */   lw        $a0, %lo(D_8007B340)($a0)
/* 210C 8000150C 0C00366F */  jal        func_8000D9BC
/* 2110 80001510 8FA40024 */   lw        $a0, 0x24($sp)
.L80001514:
/* 2114 80001514 3C048008 */  lui        $a0, %hi(D_8007B340)
/* 2118 80001518 0C00447E */  jal        func_800111F8
/* 211C 8000151C 8C84B340 */   lw        $a0, %lo(D_8007B340)($a0)
/* 2120 80001520 0C003131 */  jal        func_8000C4C4
/* 2124 80001524 8FA40024 */   lw        $a0, 0x24($sp)
/* 2128 80001528 0C000E1C */  jal        func_80003870
/* 212C 8000152C 8FA40024 */   lw        $a0, 0x24($sp)
/* 2130 80001530 0C001FC6 */  jal        func_80007F18
/* 2134 80001534 8FA40024 */   lw        $a0, 0x24($sp)
/* 2138 80001538 0C00474A */  jal        func_80011D28
/* 213C 8000153C 8FA40024 */   lw        $a0, 0x24($sp)
/* 2140 80001540 0C0033A3 */  jal        func_8000CE8C
/* 2144 80001544 8FA40024 */   lw        $a0, 0x24($sp)
/* 2148 80001548 0C00233D */  jal        func_80008CF4
/* 214C 8000154C 8FA40024 */   lw        $a0, 0x24($sp)
/* 2150 80001550 0C002D86 */  jal        func_8000B618
/* 2154 80001554 8FA40024 */   lw        $a0, 0x24($sp)
/* 2158 80001558 0C004927 */  jal        func_8001249C
/* 215C 8000155C 00000000 */   nop
/* 2160 80001560 3C048008 */  lui        $a0, %hi(D_8007BC08)
/* 2164 80001564 0C00447E */  jal        func_800111F8
/* 2168 80001568 8C84BC08 */   lw        $a0, %lo(D_8007BC08)($a0)
/* 216C 8000156C 0C004635 */  jal        func_800118D4
/* 2170 80001570 8FA40024 */   lw        $a0, 0x24($sp)
/* 2174 80001574 0C006C67 */  jal        func_8001B19C
/* 2178 80001578 8FA40024 */   lw        $a0, 0x24($sp)
/* 217C 8000157C 0C00618E */  jal        func_80018638
/* 2180 80001580 8FA40024 */   lw        $a0, 0x24($sp)
/* 2184 80001584 0C008A3E */  jal        DimScreen
/* 2188 80001588 8FA40024 */   lw        $a0, 0x24($sp)
/* 218C 8000158C 3C028008 */  lui        $v0, %hi(D_8007B2E4)
/* 2190 80001590 8C42B2E4 */  lw         $v0, %lo(D_8007B2E4)($v0)
/* 2194 80001594 304C0002 */  andi       $t4, $v0, 0x2
/* 2198 80001598 11800006 */  beqz       $t4, .L800015B4
/* 219C 8000159C 304E4000 */   andi      $t6, $v0, 0x4000
/* 21A0 800015A0 0C00BAA8 */  jal        func_8002EAA0
/* 21A4 800015A4 00000000 */   nop
/* 21A8 800015A8 3C028008 */  lui        $v0, %hi(D_8007B2E4)
/* 21AC 800015AC 1000000B */  b          .L800015DC
/* 21B0 800015B0 8C42B2E4 */   lw        $v0, %lo(D_8007B2E4)($v0)
.L800015B4:
/* 21B4 800015B4 15C00009 */  bnez       $t6, .L800015DC
/* 21B8 800015B8 3C198008 */   lui       $t9, %hi(D_8007B2E8)
/* 21BC 800015BC 9739B2E8 */  lhu        $t9, %lo(D_8007B2E8)($t9)
/* 21C0 800015C0 24010004 */  addiu      $at, $zero, 0x4
/* 21C4 800015C4 53210006 */  beql       $t9, $at, .L800015E0
/* 21C8 800015C8 304F0001 */   andi      $t7, $v0, 0x1
/* 21CC 800015CC 0C007897 */  jal        func_8001E25C
/* 21D0 800015D0 8FA40024 */   lw        $a0, 0x24($sp)
/* 21D4 800015D4 3C028008 */  lui        $v0, %hi(D_8007B2E4)
/* 21D8 800015D8 8C42B2E4 */  lw         $v0, %lo(D_8007B2E4)($v0)
.L800015DC:
/* 21DC 800015DC 304F0001 */  andi       $t7, $v0, 0x1
.L800015E0:
/* 21E0 800015E0 51E00056 */  beql       $t7, $zero, .L8000173C
/* 21E4 800015E4 8E030000 */   lw        $v1, 0x0($s0)
/* 21E8 800015E8 0C008549 */  jal        func_80021524
/* 21EC 800015EC 00000000 */   nop
/* 21F0 800015F0 10000052 */  b          .L8000173C
/* 21F4 800015F4 8E030000 */   lw        $v1, 0x0($s0)
.L800015F8:
/* 21F8 800015F8 54410006 */  bnel       $v0, $at, .L80001614
/* 21FC 800015FC 24010003 */   addiu     $at, $zero, 0x3
/* 2200 80001600 0C009A9F */  jal        func_80026A7C
/* 2204 80001604 8FA40024 */   lw        $a0, 0x24($sp)
/* 2208 80001608 1000004C */  b          .L8000173C
/* 220C 8000160C 8E030000 */   lw        $v1, 0x0($s0)
/* 2210 80001610 24010003 */  addiu      $at, $zero, 0x3
.L80001614:
/* 2214 80001614 54410025 */  bnel       $v0, $at, .L800016AC
/* 2218 80001618 24010004 */   addiu     $at, $zero, 0x4
/* 221C 8000161C 0C040013 */  jal        func_8010004C
/* 2220 80001620 00000000 */   nop
/* 2224 80001624 3C068008 */  lui        $a2, %hi(gameMode)
/* 2228 80001628 24C6B2E0 */  addiu      $a2, $a2, %lo(gameMode)
/* 222C 8000162C 10400005 */  beqz       $v0, .L80001644
/* 2230 80001630 24070001 */   addiu     $a3, $zero, 0x1
/* 2234 80001634 1047001A */  beq        $v0, $a3, .L800016A0
/* 2238 80001638 240E0004 */   addiu     $t6, $zero, 0x4
/* 223C 8000163C 1000003F */  b          .L8000173C
/* 2240 80001640 8E030000 */   lw        $v1, 0x0($s0)
.L80001644:
/* 2244 80001644 3C028008 */  lui        $v0, %hi(D_8007B344)
/* 2248 80001648 9042B344 */  lbu        $v0, %lo(D_8007B344)($v0)
/* 224C 8000164C 24010010 */  addiu      $at, $zero, 0x10
/* 2250 80001650 240C0001 */  addiu      $t4, $zero, 0x1
/* 2254 80001654 304D00F0 */  andi       $t5, $v0, 0xF0
/* 2258 80001658 11A10007 */  beq        $t5, $at, .L80001678
/* 225C 8000165C 24010020 */   addiu     $at, $zero, 0x20
/* 2260 80001660 11A10007 */  beq        $t5, $at, .L80001680
/* 2264 80001664 24010030 */   addiu     $at, $zero, 0x30
/* 2268 80001668 11A10009 */  beq        $t5, $at, .L80001690
/* 226C 8000166C 24180001 */   addiu     $t8, $zero, 0x1
/* 2270 80001670 10000031 */  b          .L80001738
/* 2274 80001674 A4D80000 */   sh        $t8, 0x0($a2)
.L80001678:
/* 2278 80001678 1000002F */  b          .L80001738
/* 227C 8000167C A4CC0000 */   sh        $t4, 0x0($a2)
.L80001680:
/* 2280 80001680 0C00AD44 */  jal        func_8002B510
/* 2284 80001684 00002025 */   or        $a0, $zero, $zero
/* 2288 80001688 1000002C */  b          .L8000173C
/* 228C 8000168C 8E030000 */   lw        $v1, 0x0($s0)
.L80001690:
/* 2290 80001690 0C00AD44 */  jal        func_8002B510
/* 2294 80001694 24040008 */   addiu     $a0, $zero, 0x8
/* 2298 80001698 10000028 */  b          .L8000173C
/* 229C 8000169C 8E030000 */   lw        $v1, 0x0($s0)
.L800016A0:
/* 22A0 800016A0 10000025 */  b          .L80001738
/* 22A4 800016A4 A4CE0000 */   sh        $t6, 0x0($a2)
/* 22A8 800016A8 24010004 */  addiu      $at, $zero, 0x4
.L800016AC:
/* 22AC 800016AC 54410019 */  bnel       $v0, $at, .L80001714
/* 22B0 800016B0 24010005 */   addiu     $at, $zero, 0x5
/* 22B4 800016B4 0C040027 */  jal        func_8010009C
/* 22B8 800016B8 00000000 */   nop
/* 22BC 800016BC 3C068008 */  lui        $a2, %hi(gameMode)
/* 22C0 800016C0 24C6B2E0 */  addiu      $a2, $a2, %lo(gameMode)
/* 22C4 800016C4 10400005 */  beqz       $v0, .L800016DC
/* 22C8 800016C8 24070001 */   addiu     $a3, $zero, 0x1
/* 22CC 800016CC 10470008 */  beq        $v0, $a3, .L800016F0
/* 22D0 800016D0 240F0001 */   addiu     $t7, $zero, 0x1
/* 22D4 800016D4 1000000B */  b          .L80001704
/* 22D8 800016D8 00000000 */   nop
.L800016DC:
/* 22DC 800016DC 3C018007 */  lui        $at, %hi(D_8006AC60)
/* 22E0 800016E0 A020AC60 */  sb         $zero, %lo(D_8006AC60)($at)
/* 22E4 800016E4 24190003 */  addiu      $t9, $zero, 0x3
/* 22E8 800016E8 10000013 */  b          .L80001738
/* 22EC 800016EC A4D90000 */   sh        $t9, 0x0($a2)
.L800016F0:
/* 22F0 800016F0 3C018007 */  lui        $at, %hi(D_8006AC60)
/* 22F4 800016F4 A02FAC60 */  sb         $t7, %lo(D_8006AC60)($at)
/* 22F8 800016F8 240D0003 */  addiu      $t5, $zero, 0x3
/* 22FC 800016FC 1000000E */  b          .L80001738
/* 2300 80001700 A4CD0000 */   sh        $t5, 0x0($a2)
.L80001704:
/* 2304 80001704 3C018007 */  lui        $at, %hi(D_8006AC60)
/* 2308 80001708 1000000B */  b          .L80001738
/* 230C 8000170C A020AC60 */   sb        $zero, %lo(D_8006AC60)($at)
/* 2310 80001710 24010005 */  addiu      $at, $zero, 0x5
.L80001714:
/* 2314 80001714 54410009 */  bnel       $v0, $at, .L8000173C
/* 2318 80001718 8E030000 */   lw        $v1, 0x0($s0)
/* 231C 8000171C 0C040023 */  jal        func_8010008C
/* 2320 80001720 00000000 */   nop
/* 2324 80001724 3C068008 */  lui        $a2, %hi(gameMode)
/* 2328 80001728 14400003 */  bnez       $v0, .L80001738
/* 232C 8000172C 24C6B2E0 */   addiu     $a2, $a2, %lo(gameMode)
/* 2330 80001730 24180003 */  addiu      $t8, $zero, 0x3
/* 2334 80001734 A4D80000 */  sh         $t8, 0x0($a2)
.L80001738:
/* 2338 80001738 8E030000 */  lw         $v1, 0x0($s0)
.L8000173C:
/* 233C 8000173C 3C0EE900 */  lui        $t6, (0xE9000000 >> 16)
/* 2340 80001740 3C040200 */  lui        $a0, %hi(D_2000000)
/* 2344 80001744 246C0008 */  addiu      $t4, $v1, 0x8
/* 2348 80001748 AE0C0000 */  sw         $t4, 0x0($s0)
/* 234C 8000174C AC600004 */  sw         $zero, 0x4($v1)
/* 2350 80001750 AC6E0000 */  sw         $t6, 0x0($v1)
/* 2354 80001754 8E030000 */  lw         $v1, 0x0($s0)
/* 2358 80001758 3C0FB800 */  lui        $t7, (0xB8000000 >> 16)
/* 235C 8000175C 24840000 */  addiu      $a0, $a0, %lo(D_2000000)
/* 2360 80001760 24790008 */  addiu      $t9, $v1, 0x8
/* 2364 80001764 AE190000 */  sw         $t9, 0x0($s0)
/* 2368 80001768 AC600004 */  sw         $zero, 0x4($v1)
/* 236C 8000176C AC6F0000 */  sw         $t7, 0x0($v1)
/* 2370 80001770 0C00D394 */  jal        osWritebackDCache
/* 2374 80001774 3405D0F0 */   ori       $a1, $zero, 0xD0F0
/* 2378 80001778 8FA40088 */  lw         $a0, 0x88($sp)
/* 237C 8000177C 8E0D0000 */  lw         $t5, 0x0($s0)
/* 2380 80001780 3C038008 */  lui        $v1, %hi(D_8007B34C)
/* 2384 80001784 2463B34C */  addiu      $v1, $v1, %lo(D_8007B34C)
/* 2388 80001788 3C01FFFF */  lui        $at, (0xFFFF7EB8 >> 16)
/* 238C 8000178C 8C6C0000 */  lw         $t4, 0x0($v1)
/* 2390 80001790 34217EB8 */  ori        $at, $at, (0xFFFF7EB8 & 0xFFFF)
/* 2394 80001794 01A41023 */  subu       $v0, $t5, $a0
/* 2398 80001798 00411021 */  addu       $v0, $v0, $at
/* 239C 8000179C 0002C0C3 */  sra        $t8, $v0, 3
/* 23A0 800017A0 0198082A */  slt        $at, $t4, $t8
/* 23A4 800017A4 10200002 */  beqz       $at, .L800017B0
/* 23A8 800017A8 03001025 */   or        $v0, $t8, $zero
/* 23AC 800017AC AC780000 */  sw         $t8, 0x0($v1)
.L800017B0:
/* 23B0 800017B0 8FAE0024 */  lw         $t6, 0x24($sp)
/* 23B4 800017B4 3C018005 */  lui        $at, %hi(D_8004C210)
/* 23B8 800017B8 AC22C210 */  sw         $v0, %lo(D_8004C210)($at)
/* 23BC 800017BC 340180F0 */  ori        $at, $zero, 0x80F0
/* 23C0 800017C0 01C1C821 */  addu       $t9, $t6, $at
/* 23C4 800017C4 AC990040 */  sw         $t9, 0x40($a0)
/* 23C8 800017C8 8FAD0024 */  lw         $t5, 0x24($sp)
/* 23CC 800017CC 8E0F0000 */  lw         $t7, 0x0($s0)
/* 23D0 800017D0 3C01FFFF */  lui        $at, (0xFFFF7F10 >> 16)
/* 23D4 800017D4 34217F10 */  ori        $at, $at, (0xFFFF7F10 & 0xFFFF)
/* 23D8 800017D8 01EDC023 */  subu       $t8, $t7, $t5
/* 23DC 800017DC 03016021 */  addu       $t4, $t8, $at
/* 23E0 800017E0 000C70C3 */  sra        $t6, $t4, 3
/* 23E4 800017E4 000EC8C0 */  sll        $t9, $t6, 3
/* 23E8 800017E8 AC990044 */  sw         $t9, 0x44($a0)
/* 23EC 800017EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 23F0 800017F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 23F4 800017F4 27BD0088 */  addiu      $sp, $sp, 0x88
/* 23F8 800017F8 03E00008 */  jr         $ra
/* 23FC 800017FC 00000000 */   nop
