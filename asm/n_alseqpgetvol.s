.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel n_alSeqpGetVol
/* 37CC0 800370C0 03E00008 */  jr         $ra
/* 37CC4 800370C4 84820032 */   lh        $v0, 0x32($a0)
/* 37CC8 800370C8 00000000 */  nop
/* 37CCC 800370CC 00000000 */  nop
