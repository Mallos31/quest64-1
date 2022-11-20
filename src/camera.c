#include "common.h"


//void func_80023A08(unk23a08s*, f32, f32, f32);       /* extern */
f32 func_80023028(f32);                             /* extern */



//#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80022FD0.s")
u32 func_80022FD0(u32 arg0)
{
  u32 temp_t8;
  if (arg0 != 0)
  {
    return ((u32) ((D_8004D748 = (D_8004D748 * 0x41C64E6D) + 0x3039) >> 0x10)) % arg0;
  }
  return 0U;
}

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023028.s")

extern  f32 _nsqrtf(f32); //?                              


void func_800231B0(f32* arg0, f32* arg1) {
    f32 temp_f0;
    f32 temp_f2;
    f32 temp_f2_2;

    temp_f0 = *arg1;
    temp_f2 = *arg0;
    temp_f2_2 = 1.0f / _nsqrtf((temp_f0 * temp_f0) + (temp_f2 * temp_f2));
    *arg0 *= temp_f2_2;
    *arg1 *= temp_f2_2;
}

//#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_800231B0.s")
//#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023210.s")
f32 func_80023210(f32 arg0, f32 arg1)
{
  f32 var_f2;
  f32 var_f6;
  if (arg1 == 0.0f)
  {
    if (arg0 >= 0.0f)
    {
      var_f2 = (f32) D_800716E0;
    }
    else
    {
      var_f6 = (f32) D_800716E8;
      var_f2 = (f32) var_f6;
    }
  }
  else
    if (arg1 > 0.0f)
  {
    var_f2 = func_80023028(arg0 / arg1);
  }
  else
    if ((arg1 < 0.0f) && (arg0 <= 0.0f))
  {
    var_f2 = func_80023028(arg0 / arg1) - D_800716F0;
  }
  else
  {
    var_f6 = ( func_80023028( (arg0 / arg1))) + D_800716F8;
    var_f2 = (f32) var_f6;

  }
  return var_f2;
}

//#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_800232F4.s")
void func_800232F4(f32 arg0, unk232f4s* arg1) {
    f32 sp1C;
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f2;

    sp1C = sinf(arg0);
    temp_f0 = cosf(arg0);
    temp_f2 = arg1->unk0;
    arg1->unk0 = (arg1->unk4 * sp1C) - (temp_f2 * temp_f0);
    arg1->unk4 = (arg1->unk4 * temp_f0) + (temp_f2 * sp1C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023360.s")

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023500.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023570.s")
void func_80023570(MtxF *arg0, f32 arg1, f32 arg2, f32 arg3)
{
  f32 sp4C;
  f32 sp48;
  f32 sp44;
  f32 temp_f20;
  f32 sp3C;
  f32 temp_f0;
  
  
  sp4C = sinf(arg1);
  temp_f20 = cosf(arg1);
  sp48 = sinf(arg2);
  sp3C = cosf(arg2);
  sp44 = sinf(arg3);
  temp_f0 = cosf(arg3);

    arg0->mf[0][0] = (temp_f0 * sp3C) + (sp44 * sp4C * sp48);
    arg0->mf[0][1] = sp44 * temp_f20;
    arg0->mf[0][2] = (-sp48 * temp_f0) + (sp44 * sp4C * sp3C);
    arg0->mf[0][3] = 0.0f;

    arg0->mf[1][0] = (-sp44 * sp3C) + (temp_f0 * sp4C * sp48);
    arg0->mf[1][1] = temp_f0 * temp_f20;
    arg0->mf[1][2] = (-sp44 * -sp48) + (temp_f0 * sp4C * sp3C);
    arg0->mf[1][3] = 0.0f;

    arg0->mf[2][0] = temp_f20 * sp48;
    arg0->mf[2][1] = -sp4C;
    arg0->mf[2][2] = temp_f20 * sp3C;
    arg0->mf[2][3] = 0.0f;

    arg0->mf[3][0] = 0.0f;
    arg0->mf[3][1] = 0.0f;
    arg0->mf[3][2] = 0.0f;
    arg0->mf[3][3] = 1.0f;
}

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_800236CC.s")
/*
void func_800236CC(Mtx* arg0, f32 arg1, f32 arg2, f32 arg3) {
    func_80023570(&D_8008D030, arg1, arg2, arg3);
    guMtxF2L((f32 (*)[4]) &D_8008D030, arg0);
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_8002371C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_8002387C.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_800238E4.s")
void func_800238E4(unk23df4s* arg0, f32 arg1, f32 arg2, f32 arg3, f32* arg4, f32* arg5, f32* arg6) {
    *arg4 = (arg0->unk8 * arg3) + ((arg0->unk0 * arg1) + (arg0->unk4 * arg2));
    *arg5 = (arg0->unk18 * arg3) + ((arg0->unk10 * arg1) + (arg0->unk14 * arg2));
    *arg6 = (arg0->unk28 * arg3) + ((arg0->unk20 * arg1) + (arg0->unk24 * arg2));
}
  
//#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023974.s")
void func_80023974(unk23974s* arg0, f32 arg1, f32 arg2, f32 arg3, f32* arg4, f32* arg5, f32* arg6) {
    *arg4 = (arg0->unk20 * arg3) + ((arg0->unk0 * arg1) + (arg0->unk10 * arg2));
    *arg5 = (arg0->unk24 * arg3) + ((arg0->unk4 * arg1) + (arg0->unk14 * arg2));
    *arg6 = -((arg0->unk28 * arg3) + ((arg0->unk8 * arg1) + (arg0->unk18 * arg2)));
}

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023A08.s")
/*void func_80023A08(unk23a08s *arg0, f32 arg1, f32 arg2, f32 arg3)
{
  f32 sp34;
  f32 temp_f0;
  f32 temp_f0_2;
  f32 temp_f20;
  f32 temp_f4;
  f32 var_f18;
  f32 var_f22;
    
  temp_f0 = _nsqrtf((arg1 * arg1) + (arg3 * arg3));
  if (temp_f0 != 0.0f)
  {
    var_f22 = arg1 / temp_f0;
    var_f18 = arg3 / temp_f0;
  }
  else
  {
    temp_f4 = 0.0f;
    var_f22 = temp_f4;
    if (arg2 >= temp_f4)
    {
      var_f18 = (f32) 1.0;
    }
    else
    {
      var_f18 = (f32) (-1.0);
    }
  }
  sp34 = temp_f0;
  temp_f0_2 = _nsqrtf((temp_f0 * temp_f0) + (arg2 * arg2));
  temp_f4 = sp34 / temp_f0_2;
  arg0->unk0 = (f32) ((1.0f * var_f18) + (temp_f4 * temp_f4 * var_f22));
  arg0->unkC = temp_f4;
  temp_f20 = arg2 / temp_f0_2;
  arg0->unk4 = (f32) (temp_f4 * temp_f20);
  arg0->unk8 = (f32) ((-var_f22 * 1.0f) + (temp_f4 * temp_f4 * var_f18));
  arg0->unk1C = temp_f4;
  arg0->unk10 = (f32) (((-temp_f4) * var_f18) + (temp_f4 * var_f22));
  arg0->unk14 = (f32) (1.0f * temp_f20);
  arg0->unk20 = (f32) (temp_f20 * var_f22);
  arg0->unk18 = (f32) (((-temp_f4) * -var_f22) + (temp_f4 * var_f18));
  arg0->unk2C = temp_f4;
  arg0->unk30 = temp_f4;
  arg0->unk24 = (f32) (-temp_f4);
  arg0->unk34 = temp_f4;
  arg0->unk38 = temp_f4;
  arg0->unk28 = (f32) (temp_f20 * var_f18);
  arg0->unk3C = 1.0f;
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023BCC.s")
/*
void func_80023BCC(Mtx* arg0, f32 arg1, f32 arg2, f32 arg3) {
    func_80023A08((unk23a08s*)&D_8008D030, arg1, arg2, arg3);
    guMtxF2L((f32 (*)[4]) D_8008D030, arg0);
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023C1C.s")

//#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023DF4.s")
void func_80023DF4(unk23df4s* arg0, f32 arg1, f32 arg2, f32 arg3) {
    arg0->unk0 = (f32) (arg0->unk0 * arg1);
    arg0->unk4 = (f32) (arg0->unk4 * arg1);
    arg0->unk8 = (f32) (arg0->unk8 * arg1);
    arg0->unk10 = (f32) (arg0->unk10 * arg2);
    arg0->unk14 = (f32) (arg0->unk14 * arg2);
    arg0->unk18 = (f32) (arg0->unk18 * arg2);
    arg0->unk20 = (f32) (arg0->unk20 * arg3);
    arg0->unk24 = (f32) (arg0->unk24 * arg3);
    arg0->unk28 = (f32) (arg0->unk28 * arg3);
}

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_80023E80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/camera/func_8002413C.s")
