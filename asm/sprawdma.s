.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpRawStartDma
/* 3F160 8003E560 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F164 8003E564 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F168 8003E568 AFA40018 */  sw         $a0, 0x18($sp)
/* 3F16C 8003E56C AFA5001C */  sw         $a1, 0x1c($sp)
/* 3F170 8003E570 AFA60020 */  sw         $a2, 0x20($sp)
/* 3F174 8003E574 0C00F97C */  jal        __osSpDeviceBusy
/* 3F178 8003E578 AFA70024 */   sw        $a3, 0x24($sp)
/* 3F17C 8003E57C 10400003 */  beqz       $v0, .L8003E58C
/* 3F180 8003E580 00000000 */   nop
/* 3F184 8003E584 10000015 */  b          .L8003E5DC
/* 3F188 8003E588 2402FFFF */   addiu     $v0, $zero, -1
.L8003E58C:
/* 3F18C 8003E58C 8FAE001C */  lw         $t6, 0x1c($sp)
/* 3F190 8003E590 3C0FA404 */  lui        $t7, 0xa404
/* 3F194 8003E594 ADEE0000 */  sw         $t6, ($t7)
/* 3F198 8003E598 0C00D374 */  jal        osVirtualToPhysical
/* 3F19C 8003E59C 8FA40020 */   lw        $a0, 0x20($sp)
/* 3F1A0 8003E5A0 3C18A404 */  lui        $t8, %hi(SP_DRAM_ADDR_REG)
/* 3F1A4 8003E5A4 AF020004 */  sw         $v0, %lo(SP_DRAM_ADDR_REG)($t8)
/* 3F1A8 8003E5A8 8FB90018 */  lw         $t9, 0x18($sp)
/* 3F1AC 8003E5AC 17200006 */  bnez       $t9, .L8003E5C8
/* 3F1B0 8003E5B0 00000000 */   nop
/* 3F1B4 8003E5B4 8FA80024 */  lw         $t0, 0x24($sp)
/* 3F1B8 8003E5B8 3C0AA404 */  lui        $t2, %hi(SP_WR_LEN_REG)
/* 3F1BC 8003E5BC 2509FFFF */  addiu      $t1, $t0, -1
/* 3F1C0 8003E5C0 10000005 */  b          .L8003E5D8
/* 3F1C4 8003E5C4 AD49000C */   sw        $t1, %lo(SP_WR_LEN_REG)($t2)
.L8003E5C8:
/* 3F1C8 8003E5C8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 3F1CC 8003E5CC 3C0DA404 */  lui        $t5, %hi(SP_RD_LEN_REG)
/* 3F1D0 8003E5D0 256CFFFF */  addiu      $t4, $t3, -1
/* 3F1D4 8003E5D4 ADAC0008 */  sw         $t4, %lo(SP_RD_LEN_REG)($t5)
.L8003E5D8:
/* 3F1D8 8003E5D8 00001025 */  or         $v0, $zero, $zero
.L8003E5DC:
/* 3F1DC 8003E5DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F1E0 8003E5E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3F1E4 8003E5E4 03E00008 */  jr         $ra
/* 3F1E8 8003E5E8 00000000 */   nop
/* 3F1EC 8003E5EC 00000000 */  nop
