.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSetSR
/* 3D590 8003C990 40846000 */  mtc0       $a0, $12
/* 3D594 8003C994 00000000 */  nop
/* 3D598 8003C998 03E00008 */  jr         $ra
/* 3D59C 8003C99C 00000000 */   nop
