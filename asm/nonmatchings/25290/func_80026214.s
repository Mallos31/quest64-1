glabel func_80026214
/* 26E14 80026214 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 26E18 80026218 AFBF0014 */  sw         $ra, 0x14($sp)
/* 26E1C 8002621C 3C038005 */  lui        $v1, %hi(D_80053978)
/* 26E20 80026220 8C633978 */  lw         $v1, %lo(D_80053978)($v1)
/* 26E24 80026224 3C0F8005 */  lui        $t7, %hi(D_80053984)
/* 26E28 80026228 25EF3984 */  addiu      $t7, $t7, %lo(D_80053984)
/* 26E2C 8002622C 00037080 */  sll        $t6, $v1, 2
/* 26E30 80026230 01CF1021 */  addu       $v0, $t6, $t7
/* 26E34 80026234 3C198005 */  lui        $t9, %hi(D_8005398C)
/* 26E38 80026238 8F39398C */  lw         $t9, %lo(D_8005398C)($t9)
/* 26E3C 8002623C 8C580000 */  lw         $t8, ($v0)
/* 26E40 80026240 3C098005 */  lui        $t1, 0x8005
/* 26E44 80026244 3C0A8005 */  lui        $t2, 0x8005
/* 26E48 80026248 03194023 */  subu       $t0, $t8, $t9
/* 26E4C 8002624C AC480000 */  sw         $t0, ($v0)
/* 26E50 80026250 05000007 */  bltz       $t0, .L80026270
/* 26E54 80026254 01003025 */   or        $a2, $t0, $zero
/* 26E58 80026258 8D293974 */  lw         $t1, 0x3974($t1)
/* 26E5C 8002625C 00037080 */  sll        $t6, $v1, 2
/* 26E60 80026260 01C37023 */  subu       $t6, $t6, $v1
/* 26E64 80026264 0128082A */  slt        $at, $t1, $t0
/* 26E68 80026268 10200012 */  beqz       $at, .L800262B4
/* 26E6C 8002626C 000E7080 */   sll       $t6, $t6, 2
.L80026270:
/* 26E70 80026270 00035880 */  sll        $t3, $v1, 2
/* 26E74 80026274 01635823 */  subu       $t3, $t3, $v1
/* 26E78 80026278 000B5880 */  sll        $t3, $t3, 2
/* 26E7C 8002627C 01635821 */  addu       $t3, $t3, $v1
/* 26E80 80026280 000B58C0 */  sll        $t3, $t3, 3
/* 26E84 80026284 01635823 */  subu       $t3, $t3, $v1
/* 26E88 80026288 8D4A3974 */  lw         $t2, 0x3974($t2)
/* 26E8C 8002628C 000B5880 */  sll        $t3, $t3, 2
/* 26E90 80026290 3C0D8009 */  lui        $t5, %hi(MIDISeqConfig)
/* 26E94 80026294 25ADF978 */  addiu      $t5, $t5, %lo(MIDISeqConfig)
/* 26E98 80026298 256C001C */  addiu      $t4, $t3, 0x1c
/* 26E9C 8002629C 018D2021 */  addu       $a0, $t4, $t5
/* 26EA0 800262A0 0C00E430 */  jal        alSeqpStop
/* 26EA4 800262A4 AC4A0000 */   sw        $t2, ($v0)
/* 26EA8 800262A8 3C018005 */  lui        $at, %hi(D_8005398C)
/* 26EAC 800262AC 1000000D */  b          .L800262E4
/* 26EB0 800262B0 AC20398C */   sw        $zero, %lo(D_8005398C)($at)
.L800262B4:
/* 26EB4 800262B4 01C37021 */  addu       $t6, $t6, $v1
/* 26EB8 800262B8 000E70C0 */  sll        $t6, $t6, 3
/* 26EBC 800262BC 01C37023 */  subu       $t6, $t6, $v1
/* 26EC0 800262C0 000E7080 */  sll        $t6, $t6, 2
/* 26EC4 800262C4 3C188009 */  lui        $t8, %hi(MIDISeqConfig)
/* 26EC8 800262C8 00062C00 */  sll        $a1, $a2, 0x10
/* 26ECC 800262CC 0005CC03 */  sra        $t9, $a1, 0x10
/* 26ED0 800262D0 2718F978 */  addiu      $t8, $t8, %lo(MIDISeqConfig)
/* 26ED4 800262D4 25CF001C */  addiu      $t7, $t6, 0x1c
/* 26ED8 800262D8 01F82021 */  addu       $a0, $t7, $t8
/* 26EDC 800262DC 0C00DA38 */  jal        alSeqpSetVol
/* 26EE0 800262E0 03202825 */   or        $a1, $t9, $zero
.L800262E4:
/* 26EE4 800262E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26EE8 800262E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 26EEC 800262EC 03E00008 */  jr         $ra
/* 26EF0 800262F0 00000000 */   nop
