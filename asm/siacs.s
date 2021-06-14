.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800447F0
/* 453F0 800447F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 453F4 800447F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 453F8 800447F8 240E0001 */  addiu      $t6, $zero, 1
/* 453FC 800447FC 3C018007 */  lui        $at, %hi(D_80070DC0)
/* 45400 80044800 3C048009 */  lui        $a0, %hi(D_80095648)
/* 45404 80044804 3C058009 */  lui        $a1, %hi(siAccessBuf_80095640)
/* 45408 80044808 AC2E0DC0 */  sw         $t6, %lo(D_80070DC0)($at)
/* 4540C 8004480C 24A55640 */  addiu      $a1, $a1, %lo(siAccessBuf_80095640)
/* 45410 80044810 24845648 */  addiu      $a0, $a0, %lo(D_80095648)
/* 45414 80044814 0C00CFC4 */  jal        osCreateMesgQueue
/* 45418 80044818 24060001 */   addiu     $a2, $zero, 1
/* 4541C 8004481C 3C048009 */  lui        $a0, %hi(D_80095648)
/* 45420 80044820 24845648 */  addiu      $a0, $a0, %lo(D_80095648)
/* 45424 80044824 00002825 */  or         $a1, $zero, $zero
/* 45428 80044828 0C00D080 */  jal        osSendMesg
/* 4542C 8004482C 00003025 */   or        $a2, $zero, $zero
/* 45430 80044830 8FBF0014 */  lw         $ra, 0x14($sp)
/* 45434 80044834 27BD0018 */  addiu      $sp, $sp, 0x18
/* 45438 80044838 03E00008 */  jr         $ra
/* 4543C 8004483C 00000000 */   nop

glabel __osSiGetAccess
/* 45440 80044840 3C0E8007 */  lui        $t6, %hi(D_80070DC0)
/* 45444 80044844 8DCE0DC0 */  lw         $t6, %lo(D_80070DC0)($t6)
/* 45448 80044848 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4544C 8004484C AFBF0014 */  sw         $ra, 0x14($sp)
/* 45450 80044850 15C00003 */  bnez       $t6, .L80044860
/* 45454 80044854 00000000 */   nop
/* 45458 80044858 0C0111FC */  jal        func_800447F0
/* 4545C 8004485C 00000000 */   nop
.L80044860:
/* 45460 80044860 3C048009 */  lui        $a0, %hi(D_80095648)
/* 45464 80044864 24845648 */  addiu      $a0, $a0, %lo(D_80095648)
/* 45468 80044868 27A5001C */  addiu      $a1, $sp, 0x1c
/* 4546C 8004486C 0C00D008 */  jal        osRecvMesg
/* 45470 80044870 24060001 */   addiu     $a2, $zero, 1
/* 45474 80044874 8FBF0014 */  lw         $ra, 0x14($sp)
/* 45478 80044878 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4547C 8004487C 03E00008 */  jr         $ra
/* 45480 80044880 00000000 */   nop

glabel __osSiRelAccess
/* 45484 80044884 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 45488 80044888 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4548C 8004488C 3C048009 */  lui        $a0, %hi(D_80095648)
/* 45490 80044890 24845648 */  addiu      $a0, $a0, %lo(D_80095648)
/* 45494 80044894 00002825 */  or         $a1, $zero, $zero
/* 45498 80044898 0C00D080 */  jal        osSendMesg
/* 4549C 8004489C 00003025 */   or        $a2, $zero, $zero
/* 454A0 800448A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 454A4 800448A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 454A8 800448A8 03E00008 */  jr         $ra
/* 454AC 800448AC 00000000 */   nop
