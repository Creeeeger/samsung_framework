package com.android.systemui.qs.buttons;

import com.android.systemui.qs.buttons.QSMumButton;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSMumButton$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ QSMumButton$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((QSMumButton) this.f$0).mMumAndDexHelper.updateMumSwitchVisibility();
                return;
            default:
                ((QSMumButton.MumAndDexHelper.AnonymousClass1) this.f$0).this$1.updateMumSwitchVisibility();
                return;
        }
    }
}
