package com.android.systemui.qs.bar;

import android.content.res.Configuration;
import com.android.systemui.qs.bar.BarController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class BarController$$ExternalSyntheticLambda8 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ BarController$$ExternalSyntheticLambda8(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                BarController barController = (BarController) this.f$0;
                barController.getClass();
                ((BarItemImpl) obj).setCallback(new BarController.AnonymousClass4());
                return;
            default:
                ((BarItemImpl) obj).onConfigChanged((Configuration) this.f$0);
                return;
        }
    }
}
