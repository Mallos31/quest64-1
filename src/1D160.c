#include "common.h"

extern EnemyAction D_8007C998[]; //enemy action data
extern MonsterBaseData D_8007C9B8[];
extern u16 D_8008C592;
extern u16 D_8008C59A;

//#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001C560.s")
void func_8001C560(void) {
    sMapData* temp_v0;

    D_8008C592 &= 0x8000;
    D_8008C574 = 0.0f;
    D_8008C578 = 0;
    if (gAllowBattles & 1) {
        temp_v0 = gMapData;
        if (temp_v0->unk30 != 0) {
            D_8008C560 = temp_v0->unk30 + (gNextSubmap * 8);
            D_8008C564 = temp_v0->unk34 + (gNextSubmap * 0x10);
            return;
        }
        D_8008C560 = 0;
        D_8008C564 = 0;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001C5F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001C8C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001CACC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001CFE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001D358.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001D474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001D538.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001D640.s")

void func_8001D820(void) {
}

//#pragma GLOBAL_ASM("asm/nonmatchings/1D160/func_8001D828.s")
u8 func_8001D828(void)
{
  u8 ret;
  
  if ((D_8008C592 & 0x100) || ((func_80022FD0(4U)) == 0))
  {
    ret = D_8007C998[func_80022FD0(D_8008C59A)].monBaseData->itemDrop;
  }
  else
  {
    ret = 0xFF;
  }
    return ret;
}

void func_8001D89C(void) {
}
