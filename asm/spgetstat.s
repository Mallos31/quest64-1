.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel __osSpGetStatus
/* 3EE00 8003E200 3C0EA404 */  lui        $t6, %hi(SP_STATUS_REG)
/* 3EE04 8003E204 03E00008 */  jr         $ra
/* 3EE08 8003E208 8DC20010 */   lw        $v0, %lo(SP_STATUS_REG)($t6)
/* 3EE0C 8003E20C 00000000 */  nop
