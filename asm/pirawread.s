.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osPiRawReadIo
/* 3DFD0 8003D3D0 3C0EA460 */  lui        $t6, %hi(PI_STATUS_REG)
/* 3DFD4 8003D3D4 8DC60010 */  lw         $a2, %lo(PI_STATUS_REG)($t6)
/* 3DFD8 8003D3D8 27BDFFF8 */  addiu      $sp, $sp, -8
/* 3DFDC 8003D3DC 30CF0003 */  andi       $t7, $a2, 3
/* 3DFE0 8003D3E0 11E00006 */  beqz       $t7, .L8003D3FC
/* 3DFE4 8003D3E4 00000000 */   nop
.L8003D3E8:
/* 3DFE8 8003D3E8 3C18A460 */  lui        $t8, %hi(PI_STATUS_REG)
/* 3DFEC 8003D3EC 8F060010 */  lw         $a2, %lo(PI_STATUS_REG)($t8)
/* 3DFF0 8003D3F0 30D90003 */  andi       $t9, $a2, 3
/* 3DFF4 8003D3F4 1720FFFC */  bnez       $t9, .L8003D3E8
/* 3DFF8 8003D3F8 00000000 */   nop
.L8003D3FC:
/* 3DFFC 8003D3FC 3C088000 */  lui        $t0, %hi(osRomBase)
/* 3E000 8003D400 8D080308 */  lw         $t0, %lo(osRomBase)($t0)
/* 3E004 8003D404 3C01A000 */  lui        $at, 0xa000
/* 3E008 8003D408 00001025 */  or         $v0, $zero, $zero
/* 3E00C 8003D40C 01044825 */  or         $t1, $t0, $a0
/* 3E010 8003D410 01215025 */  or         $t2, $t1, $at
/* 3E014 8003D414 8D4B0000 */  lw         $t3, ($t2)
/* 3E018 8003D418 27BD0008 */  addiu      $sp, $sp, 8
/* 3E01C 8003D41C 03E00008 */  jr         $ra
/* 3E020 8003D420 ACAB0000 */   sw        $t3, ($a1)
/* 3E024 8003D424 00000000 */  nop
/* 3E028 8003D428 00000000 */  nop
/* 3E02C 8003D42C 00000000 */  nop
