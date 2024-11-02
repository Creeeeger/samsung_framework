package com.android.systemui.qs.buttons;

import com.android.systemui.qs.buttons.QSMumButton;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ QSMumButton.MumAndDexHelper f$0;

    public /* synthetic */ QSMumButton$MumAndDexHelper$$ExternalSyntheticLambda1(QSMumButton.MumAndDexHelper mumAndDexHelper, int i) {
        this.$r8$classId = i;
        this.f$0 = mumAndDexHelper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
            case 1:
            default:
                this.f$0.updateMumSwitchVisibility();
                return;
        }
    }
}
