package com.android.systemui.qs.bar;

import android.util.Log;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BarController$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ BarController$$ExternalSyntheticLambda1(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((BarItemImpl) obj).destroy();
                return;
            case 1:
                ((BarItemImpl) obj).onKnoxPolicyChanged();
                return;
            case 2:
                ((BarItemImpl) obj).onUiModeChanged();
                return;
            case 3:
                ((BarItemImpl) obj).updateHeightMargins();
                return;
            case 4:
                ((BarItemImpl) obj).setUnderneathQqs(false);
                return;
            case 5:
                ((BarItemImpl) obj).setUnderneathQqs(true);
                return;
            case 6:
                Log.d("BarController", (String) obj);
                return;
            default:
                Log.d("BarController", (String) obj);
                return;
        }
    }
}
