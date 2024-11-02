package com.android.wm.shell.naturalswitching;

import com.android.wm.shell.naturalswitching.NaturalSwitchingChanger;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NaturalSwitchingChanger f$0;

    public /* synthetic */ NaturalSwitchingChanger$PipToSplitChanger$$ExternalSyntheticLambda0(NaturalSwitchingChanger naturalSwitchingChanger, int i) {
        this.$r8$classId = i;
        this.f$0 = naturalSwitchingChanger;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                NaturalSwitchingChanger.PipToSplitChanger pipToSplitChanger = (NaturalSwitchingChanger.PipToSplitChanger) this.f$0;
                pipToSplitChanger.mHideLayoutCallback.accept(Boolean.valueOf(pipToSplitChanger.mNeedToReparentCell));
                return;
            case 1:
                NaturalSwitchingChanger.FreeformToSplitChanger freeformToSplitChanger = (NaturalSwitchingChanger.FreeformToSplitChanger) this.f$0;
                freeformToSplitChanger.mHideLayoutCallback.accept(Boolean.valueOf(freeformToSplitChanger.mNeedToReparentCell));
                return;
            default:
                ((NaturalSwitchingChanger.SplitToFreeformChanger) this.f$0).mHideLayoutCallback.accept(Boolean.TRUE);
                return;
        }
    }
}
