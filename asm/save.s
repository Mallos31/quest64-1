.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel alSaveParam
/* 431E0 800425E0 24010001 */  addiu      $at, $zero, 1
/* 431E4 800425E4 10A10006 */  beq        $a1, $at, .L80042600
/* 431E8 800425E8 00001025 */   or        $v0, $zero, $zero
/* 431EC 800425EC 24010006 */  addiu      $at, $zero, 6
/* 431F0 800425F0 50A10006 */  beql       $a1, $at, .L8004260C
/* 431F4 800425F4 AC860014 */   sw        $a2, 0x14($a0)
/* 431F8 800425F8 03E00008 */  jr         $ra
/* 431FC 800425FC 00001025 */   or        $v0, $zero, $zero
.L80042600:
/* 43200 80042600 03E00008 */  jr         $ra
/* 43204 80042604 AC860000 */   sw        $a2, ($a0)
/* 43208 80042608 AC860014 */  sw         $a2, 0x14($a0)
.L8004260C:
/* 4320C 8004260C 03E00008 */  jr         $ra
/* 43210 80042610 00001025 */   or        $v0, $zero, $zero

glabel alSavePull
/* 43214 80042614 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 43218 80042618 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4321C 8004261C AFA40020 */  sw         $a0, 0x20($sp)
/* 43220 80042620 8C840000 */  lw         $a0, ($a0)
/* 43224 80042624 8FAF0030 */  lw         $t7, 0x30($sp)
/* 43228 80042628 AFA60028 */  sw         $a2, 0x28($sp)
/* 4322C 8004262C AFAF0010 */  sw         $t7, 0x10($sp)
/* 43230 80042630 8C990004 */  lw         $t9, 4($a0)
/* 43234 80042634 0320F809 */  jalr       $t9
/* 43238 80042638 00000000 */   nop
/* 4323C 8004263C 8FA60028 */  lw         $a2, 0x28($sp)
/* 43240 80042640 3C030800 */  lui        $v1, 0x800
/* 43244 80042644 3C0A0440 */  lui        $t2, 0x440
/* 43248 80042648 0006C040 */  sll        $t8, $a2, 1
/* 4324C 8004264C 00065880 */  sll        $t3, $a2, 2
/* 43250 80042650 3308FFFF */  andi       $t0, $t8, 0xffff
/* 43254 80042654 354A0580 */  ori        $t2, $t2, 0x580
/* 43258 80042658 3C090D00 */  lui        $t1, 0xd00
/* 4325C 8004265C 316CFFFF */  andi       $t4, $t3, 0xffff
/* 43260 80042660 3C0D0600 */  lui        $t5, 0x600
/* 43264 80042664 AC480004 */  sw         $t0, 4($v0)
/* 43268 80042668 AC430000 */  sw         $v1, ($v0)
/* 4326C 8004266C AC490008 */  sw         $t1, 8($v0)
/* 43270 80042670 AC4A000C */  sw         $t2, 0xc($v0)
/* 43274 80042674 AC4C0014 */  sw         $t4, 0x14($v0)
/* 43278 80042678 AC430010 */  sw         $v1, 0x10($v0)
/* 4327C 8004267C AC4D0018 */  sw         $t5, 0x18($v0)
/* 43280 80042680 8FAE0020 */  lw         $t6, 0x20($sp)
/* 43284 80042684 24420020 */  addiu      $v0, $v0, 0x20
/* 43288 80042688 8DCF0014 */  lw         $t7, 0x14($t6)
/* 4328C 8004268C AC4FFFFC */  sw         $t7, -4($v0)
/* 43290 80042690 8FBF001C */  lw         $ra, 0x1c($sp)
/* 43294 80042694 27BD0020 */  addiu      $sp, $sp, 0x20
/* 43298 80042698 03E00008 */  jr         $ra
/* 4329C 8004269C 00000000 */   nop
