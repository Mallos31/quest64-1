glabel func_800307D8
/* 313D8 800307D8 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* 313DC 800307DC AFB1000C */  sw         $s1, 0xC($sp)
/* 313E0 800307E0 AFB00008 */  sw         $s0, 0x8($sp)
/* 313E4 800307E4 00A08025 */  or         $s0, $a1, $zero
/* 313E8 800307E8 00C08825 */  or         $s1, $a2, $zero
/* 313EC 800307EC AFA400D0 */  sw         $a0, 0xD0($sp)
/* 313F0 800307F0 AFA700DC */  sw         $a3, 0xDC($sp)
/* 313F4 800307F4 3C0F8006 */  lui        $t7, %hi(D_8005FA20)
/* 313F8 800307F8 25EFFA20 */  addiu      $t7, $t7, %lo(D_8005FA20)
/* 313FC 800307FC 8DE10000 */  lw         $at, 0x0($t7)
/* 31400 80030800 8DF90004 */  lw         $t9, 0x4($t7)
/* 31404 80030804 27AE00BC */  addiu      $t6, $sp, 0xBC
/* 31408 80030808 ADC10000 */  sw         $at, 0x0($t6)
/* 3140C 8003080C ADD90004 */  sw         $t9, 0x4($t6)
/* 31410 80030810 8DF9000C */  lw         $t9, 0xC($t7)
/* 31414 80030814 8DE10008 */  lw         $at, 0x8($t7)
/* 31418 80030818 27B8005C */  addiu      $t8, $sp, 0x5C
/* 3141C 8003081C ADD9000C */  sw         $t9, 0xC($t6)
/* 31420 80030820 ADC10008 */  sw         $at, 0x8($t6)
/* 31424 80030824 3C0E8006 */  lui        $t6, %hi(D_8005FA30)
/* 31428 80030828 25CEFA30 */  addiu      $t6, $t6, %lo(D_8005FA30)
/* 3142C 8003082C 25D90060 */  addiu      $t9, $t6, 0x60
.L80030830:
/* 31430 80030830 8DC10000 */  lw         $at, 0x0($t6)
/* 31434 80030834 25CE000C */  addiu      $t6, $t6, 0xC
/* 31438 80030838 2718000C */  addiu      $t8, $t8, 0xC
/* 3143C 8003083C AF01FFF4 */  sw         $at, -0xC($t8)
/* 31440 80030840 8DC1FFF8 */  lw         $at, -0x8($t6)
/* 31444 80030844 AF01FFF8 */  sw         $at, -0x8($t8)
/* 31448 80030848 8DC1FFFC */  lw         $at, -0x4($t6)
/* 3144C 8003084C 15D9FFF8 */  bne        $t6, $t9, .L80030830
/* 31450 80030850 AF01FFFC */   sw        $at, -0x4($t8)
/* 31454 80030854 8FAF00D0 */  lw         $t7, 0xD0($sp)
/* 31458 80030858 3C038008 */  lui        $v1, %hi(gMasterGfxPos)
/* 3145C 8003085C 2463B2FC */  addiu      $v1, $v1, %lo(gMasterGfxPos)
/* 31460 80030860 29E10003 */  slti       $at, $t7, 0x3
/* 31464 80030864 14200003 */  bnez       $at, .L80030874
/* 31468 80030868 3C0CE700 */   lui       $t4, (0xE7000000 >> 16)
/* 3146C 8003086C 10000002 */  b          .L80030878
/* 31470 80030870 240A0003 */   addiu     $t2, $zero, 0x3
.L80030874:
/* 31474 80030874 8FAA00D0 */  lw         $t2, 0xD0($sp)
.L80030878:
/* 31478 80030878 3C0D0700 */  lui        $t5, (0x7000000 >> 16)
/* 3147C 8003087C 8C620000 */  lw         $v0, 0x0($v1)
/* 31480 80030880 000AC080 */  sll        $t8, $t2, 2
/* 31484 80030884 030AC023 */  subu       $t8, $t8, $t2
/* 31488 80030888 24590008 */  addiu      $t9, $v0, 0x8
/* 3148C 8003088C AC790000 */  sw         $t9, 0x0($v1)
/* 31490 80030890 AC400004 */  sw         $zero, 0x4($v0)
/* 31494 80030894 AC4C0000 */  sw         $t4, 0x0($v0)
/* 31498 80030898 8C620000 */  lw         $v0, 0x0($v1)
/* 3149C 8003089C 0018C0C0 */  sll        $t8, $t8, 3
/* 314A0 800308A0 27AF005C */  addiu      $t7, $sp, 0x5C
/* 314A4 800308A4 030F2021 */  addu       $a0, $t8, $t7
/* 314A8 800308A8 8C990000 */  lw         $t9, 0x0($a0)
/* 314AC 800308AC 244E0008 */  addiu      $t6, $v0, 0x8
/* 314B0 800308B0 AC6E0000 */  sw         $t6, 0x0($v1)
/* 314B4 800308B4 272EFFFF */  addiu      $t6, $t9, -0x1
/* 314B8 800308B8 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 314BC 800308BC 3C01FD48 */  lui        $at, (0xFD480000 >> 16)
/* 314C0 800308C0 03017825 */  or         $t7, $t8, $at
/* 314C4 800308C4 000AC880 */  sll        $t9, $t2, 2
/* 314C8 800308C8 03B97021 */  addu       $t6, $sp, $t9
/* 314CC 800308CC AC4F0000 */  sw         $t7, 0x0($v0)
/* 314D0 800308D0 8DCE00BC */  lw         $t6, 0xBC($t6)
/* 314D4 800308D4 AC4E0004 */  sw         $t6, 0x4($v0)
/* 314D8 800308D8 8C620000 */  lw         $v0, 0x0($v1)
/* 314DC 800308DC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 314E0 800308E0 3C01F548 */  lui        $at, (0xF5480000 >> 16)
/* 314E4 800308E4 24580008 */  addiu      $t8, $v0, 0x8
/* 314E8 800308E8 25F90007 */  addiu      $t9, $t7, 0x7
/* 314EC 800308EC 001970C3 */  sra        $t6, $t9, 3
/* 314F0 800308F0 AC780000 */  sw         $t8, 0x0($v1)
/* 314F4 800308F4 31D801FF */  andi       $t8, $t6, 0x1FF
/* 314F8 800308F8 00187A40 */  sll        $t7, $t8, 9
/* 314FC 800308FC 01E1C825 */  or         $t9, $t7, $at
/* 31500 80030900 AC590000 */  sw         $t9, 0x0($v0)
/* 31504 80030904 8C8E0010 */  lw         $t6, 0x10($a0)
/* 31508 80030908 31D8000F */  andi       $t8, $t6, 0xF
/* 3150C 8003090C 8C8E000C */  lw         $t6, 0xC($a0)
/* 31510 80030910 00187900 */  sll        $t7, $t8, 4
/* 31514 80030914 01EDC825 */  or         $t9, $t7, $t5
/* 31518 80030918 31D80003 */  andi       $t8, $t6, 0x3
/* 3151C 8003091C 00187C80 */  sll        $t7, $t8, 18
/* 31520 80030920 8C980014 */  lw         $t8, 0x14($a0)
/* 31524 80030924 032F7025 */  or         $t6, $t9, $t7
/* 31528 80030928 3319000F */  andi       $t9, $t8, 0xF
/* 3152C 8003092C 00197B80 */  sll        $t7, $t9, 14
/* 31530 80030930 8C990008 */  lw         $t9, 0x8($a0)
/* 31534 80030934 01CFC025 */  or         $t8, $t6, $t7
/* 31538 80030938 332E0003 */  andi       $t6, $t9, 0x3
/* 3153C 8003093C 000E7A00 */  sll        $t7, $t6, 8
/* 31540 80030940 030FC825 */  or         $t9, $t8, $t7
/* 31544 80030944 AC590004 */  sw         $t9, 0x4($v0)
/* 31548 80030948 8C620000 */  lw         $v0, 0x0($v1)
/* 3154C 8003094C 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 31550 80030950 244E0008 */  addiu      $t6, $v0, 0x8
/* 31554 80030954 AC6E0000 */  sw         $t6, 0x0($v1)
/* 31558 80030958 AC400004 */  sw         $zero, 0x4($v0)
/* 3155C 8003095C AC580000 */  sw         $t8, 0x0($v0)
/* 31560 80030960 8C620000 */  lw         $v0, 0x0($v1)
/* 31564 80030964 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* 31568 80030968 244F0008 */  addiu      $t7, $v0, 0x8
/* 3156C 8003096C AC6F0000 */  sw         $t7, 0x0($v1)
/* 31570 80030970 AC590000 */  sw         $t9, 0x0($v0)
/* 31574 80030974 8C8E0004 */  lw         $t6, 0x4($a0)
/* 31578 80030978 25D8FFFF */  addiu      $t8, $t6, -0x1
/* 3157C 8003097C 00187880 */  sll        $t7, $t8, 2
/* 31580 80030980 8C980000 */  lw         $t8, 0x0($a0)
/* 31584 80030984 31F90FFF */  andi       $t9, $t7, 0xFFF
/* 31588 80030988 032D7025 */  or         $t6, $t9, $t5
/* 3158C 8003098C 270FFFFF */  addiu      $t7, $t8, -0x1
/* 31590 80030990 000FC880 */  sll        $t9, $t7, 2
/* 31594 80030994 33380FFF */  andi       $t8, $t9, 0xFFF
/* 31598 80030998 00187B00 */  sll        $t7, $t8, 12
/* 3159C 8003099C 01CFC825 */  or         $t9, $t6, $t7
/* 315A0 800309A0 AC590004 */  sw         $t9, 0x4($v0)
/* 315A4 800309A4 8C620000 */  lw         $v0, 0x0($v1)
/* 315A8 800309A8 24580008 */  addiu      $t8, $v0, 0x8
/* 315AC 800309AC AC780000 */  sw         $t8, 0x0($v1)
/* 315B0 800309B0 AC400004 */  sw         $zero, 0x4($v0)
/* 315B4 800309B4 AC4C0000 */  sw         $t4, 0x0($v0)
/* 315B8 800309B8 8C620000 */  lw         $v0, 0x0($v1)
/* 315BC 800309BC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 315C0 800309C0 3C01F548 */  lui        $at, (0xF5480000 >> 16)
/* 315C4 800309C4 244E0008 */  addiu      $t6, $v0, 0x8
/* 315C8 800309C8 25F90007 */  addiu      $t9, $t7, 0x7
/* 315CC 800309CC 0019C0C3 */  sra        $t8, $t9, 3
/* 315D0 800309D0 AC6E0000 */  sw         $t6, 0x0($v1)
/* 315D4 800309D4 330E01FF */  andi       $t6, $t8, 0x1FF
/* 315D8 800309D8 000E7A40 */  sll        $t7, $t6, 9
/* 315DC 800309DC 01E1C825 */  or         $t9, $t7, $at
/* 315E0 800309E0 AC590000 */  sw         $t9, 0x0($v0)
/* 315E4 800309E4 8C980010 */  lw         $t8, 0x10($a0)
/* 315E8 800309E8 8C99000C */  lw         $t9, 0xC($a0)
/* 315EC 800309EC 330E000F */  andi       $t6, $t8, 0xF
/* 315F0 800309F0 000E7900 */  sll        $t7, $t6, 4
/* 315F4 800309F4 33380003 */  andi       $t8, $t9, 0x3
/* 315F8 800309F8 00187480 */  sll        $t6, $t8, 18
/* 315FC 800309FC 8C980014 */  lw         $t8, 0x14($a0)
/* 31600 80030A00 01EEC825 */  or         $t9, $t7, $t6
/* 31604 80030A04 330F000F */  andi       $t7, $t8, 0xF
/* 31608 80030A08 000F7380 */  sll        $t6, $t7, 14
/* 3160C 80030A0C 8C8F0008 */  lw         $t7, 0x8($a0)
/* 31610 80030A10 032EC025 */  or         $t8, $t9, $t6
/* 31614 80030A14 31F90003 */  andi       $t9, $t7, 0x3
/* 31618 80030A18 00197200 */  sll        $t6, $t9, 8
/* 3161C 80030A1C 030E7825 */  or         $t7, $t8, $t6
/* 31620 80030A20 AC4F0004 */  sw         $t7, 0x4($v0)
/* 31624 80030A24 8C620000 */  lw         $v0, 0x0($v1)
/* 31628 80030A28 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 3162C 80030A2C 24590008 */  addiu      $t9, $v0, 0x8
/* 31630 80030A30 AC790000 */  sw         $t9, 0x0($v1)
/* 31634 80030A34 AC580000 */  sw         $t8, 0x0($v0)
/* 31638 80030A38 8C8E0004 */  lw         $t6, 0x4($a0)
/* 3163C 80030A3C 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 31640 80030A40 8C8E0000 */  lw         $t6, 0x0($a0)
/* 31644 80030A44 000FC880 */  sll        $t9, $t7, 2
/* 31648 80030A48 33380FFF */  andi       $t8, $t9, 0xFFF
/* 3164C 80030A4C 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 31650 80030A50 000FC880 */  sll        $t9, $t7, 2
/* 31654 80030A54 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 31658 80030A58 000E7B00 */  sll        $t7, $t6, 12
/* 3165C 80030A5C 030FC825 */  or         $t9, $t8, $t7
/* 31660 80030A60 AC590004 */  sw         $t9, 0x4($v0)
/* 31664 80030A64 8C620000 */  lw         $v0, 0x0($v1)
/* 31668 80030A68 244E0008 */  addiu      $t6, $v0, 0x8
/* 3166C 80030A6C AC6E0000 */  sw         $t6, 0x0($v1)
/* 31670 80030A70 AC400004 */  sw         $zero, 0x4($v0)
/* 31674 80030A74 AC4C0000 */  sw         $t4, 0x0($v0)
/* 31678 80030A78 8FB800D0 */  lw         $t8, 0xD0($sp)
/* 3167C 80030A7C 5700002F */  bnel       $t8, $zero, .L80030B3C
/* 31680 80030A80 8C620000 */   lw        $v0, 0x0($v1)
/* 31684 80030A84 8C620000 */  lw         $v0, 0x0($v1)
/* 31688 80030A88 8FB900DC */  lw         $t9, 0xDC($sp)
/* 3168C 80030A8C 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 31690 80030A90 244F0008 */  addiu      $t7, $v0, 0x8
/* 31694 80030A94 02197021 */  addu       $t6, $s0, $t9
/* 31698 80030A98 000EC080 */  sll        $t8, $t6, 2
/* 3169C 80030A9C AC6F0000 */  sw         $t7, 0x0($v1)
/* 316A0 80030AA0 330F0FFF */  andi       $t7, $t8, 0xFFF
/* 316A4 80030AA4 8FB800E0 */  lw         $t8, 0xE0($sp)
/* 316A8 80030AA8 000FCB00 */  sll        $t9, $t7, 12
/* 316AC 80030AAC 03217025 */  or         $t6, $t9, $at
/* 316B0 80030AB0 02387821 */  addu       $t7, $s1, $t8
/* 316B4 80030AB4 000FC880 */  sll        $t9, $t7, 2
/* 316B8 80030AB8 33380FFF */  andi       $t8, $t9, 0xFFF
/* 316BC 80030ABC 01D87825 */  or         $t7, $t6, $t8
/* 316C0 80030AC0 0010C880 */  sll        $t9, $s0, 2
/* 316C4 80030AC4 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 316C8 80030AC8 AC4F0000 */  sw         $t7, 0x0($v0)
/* 316CC 80030ACC 00117880 */  sll        $t7, $s1, 2
/* 316D0 80030AD0 31F90FFF */  andi       $t9, $t7, 0xFFF
/* 316D4 80030AD4 000EC300 */  sll        $t8, $t6, 12
/* 316D8 80030AD8 03197025 */  or         $t6, $t8, $t9
/* 316DC 80030ADC AC4E0004 */  sw         $t6, 0x4($v0)
/* 316E0 80030AE0 8C620000 */  lw         $v0, 0x0($v1)
/* 316E4 80030AE4 3C18B400 */  lui        $t8, (0xB4000000 >> 16)
/* 316E8 80030AE8 3239000F */  andi       $t9, $s1, 0xF
/* 316EC 80030AEC 244F0008 */  addiu      $t7, $v0, 0x8
/* 316F0 80030AF0 AC6F0000 */  sw         $t7, 0x0($v1)
/* 316F4 80030AF4 320F000F */  andi       $t7, $s0, 0xF
/* 316F8 80030AF8 AC580000 */  sw         $t8, 0x0($v0)
/* 316FC 80030AFC 000FC540 */  sll        $t8, $t7, 21
/* 31700 80030B00 00197140 */  sll        $t6, $t9, 5
/* 31704 80030B04 31CFFFFF */  andi       $t7, $t6, 0xFFFF
/* 31708 80030B08 030FC825 */  or         $t9, $t8, $t7
/* 3170C 80030B0C AC590004 */  sw         $t9, 0x4($v0)
/* 31710 80030B10 8C620000 */  lw         $v0, 0x0($v1)
/* 31714 80030B14 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 31718 80030B18 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 3171C 80030B1C 244E0008 */  addiu      $t6, $v0, 0x8
/* 31720 80030B20 AC6E0000 */  sw         $t6, 0x0($v1)
/* 31724 80030B24 3C18B300 */  lui        $t8, (0xB3000000 >> 16)
/* 31728 80030B28 AC580000 */  sw         $t8, 0x0($v0)
/* 3172C 80030B2C AC4F0004 */  sw         $t7, 0x4($v0)
/* 31730 80030B30 10000027 */  b          .L80030BD0
/* 31734 80030B34 8C620000 */   lw        $v0, 0x0($v1)
/* 31738 80030B38 8C620000 */  lw         $v0, 0x0($v1)
.L80030B3C:
/* 3173C 80030B3C 8FAE00DC */  lw         $t6, 0xDC($sp)
/* 31740 80030B40 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 31744 80030B44 24590008 */  addiu      $t9, $v0, 0x8
/* 31748 80030B48 020EC021 */  addu       $t8, $s0, $t6
/* 3174C 80030B4C 00187880 */  sll        $t7, $t8, 2
/* 31750 80030B50 AC790000 */  sw         $t9, 0x0($v1)
/* 31754 80030B54 31F90FFF */  andi       $t9, $t7, 0xFFF
/* 31758 80030B58 8FAF00E0 */  lw         $t7, 0xE0($sp)
/* 3175C 80030B5C 00197300 */  sll        $t6, $t9, 12
/* 31760 80030B60 01C1C025 */  or         $t8, $t6, $at
/* 31764 80030B64 022FC821 */  addu       $t9, $s1, $t7
/* 31768 80030B68 00197080 */  sll        $t6, $t9, 2
/* 3176C 80030B6C 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 31770 80030B70 030FC825 */  or         $t9, $t8, $t7
/* 31774 80030B74 00107080 */  sll        $t6, $s0, 2
/* 31778 80030B78 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 3177C 80030B7C AC590000 */  sw         $t9, 0x0($v0)
/* 31780 80030B80 0011C880 */  sll        $t9, $s1, 2
/* 31784 80030B84 332E0FFF */  andi       $t6, $t9, 0xFFF
/* 31788 80030B88 00187B00 */  sll        $t7, $t8, 12
/* 3178C 80030B8C 01EEC025 */  or         $t8, $t7, $t6
/* 31790 80030B90 AC580004 */  sw         $t8, 0x4($v0)
/* 31794 80030B94 8C620000 */  lw         $v0, 0x0($v1)
/* 31798 80030B98 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 3179C 80030B9C 3C18B300 */  lui        $t8, (0xB3000000 >> 16)
/* 317A0 80030BA0 24590008 */  addiu      $t9, $v0, 0x8
/* 317A4 80030BA4 AC790000 */  sw         $t9, 0x0($v1)
/* 317A8 80030BA8 AC400004 */  sw         $zero, 0x4($v0)
/* 317AC 80030BAC AC4F0000 */  sw         $t7, 0x0($v0)
/* 317B0 80030BB0 8C620000 */  lw         $v0, 0x0($v1)
/* 317B4 80030BB4 3C190400 */  lui        $t9, (0x4000400 >> 16)
/* 317B8 80030BB8 37390400 */  ori        $t9, $t9, (0x4000400 & 0xFFFF)
/* 317BC 80030BBC 244E0008 */  addiu      $t6, $v0, 0x8
/* 317C0 80030BC0 AC6E0000 */  sw         $t6, 0x0($v1)
/* 317C4 80030BC4 AC590004 */  sw         $t9, 0x4($v0)
/* 317C8 80030BC8 AC580000 */  sw         $t8, 0x0($v0)
/* 317CC 80030BCC 8C620000 */  lw         $v0, 0x0($v1)
.L80030BD0:
/* 317D0 80030BD0 244F0008 */  addiu      $t7, $v0, 0x8
/* 317D4 80030BD4 AC6F0000 */  sw         $t7, 0x0($v1)
/* 317D8 80030BD8 AC400004 */  sw         $zero, 0x4($v0)
/* 317DC 80030BDC AC4C0000 */  sw         $t4, 0x0($v0)
/* 317E0 80030BE0 8FB00008 */  lw         $s0, 0x8($sp)
/* 317E4 80030BE4 8FB1000C */  lw         $s1, 0xC($sp)
/* 317E8 80030BE8 03E00008 */  jr         $ra
/* 317EC 80030BEC 27BD00D0 */   addiu     $sp, $sp, 0xD0
