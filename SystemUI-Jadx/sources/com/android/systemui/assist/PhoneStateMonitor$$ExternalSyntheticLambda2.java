package com.android.systemui.assist;

import com.android.systemui.assist.PhoneStateMonitor;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class PhoneStateMonitor$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PhoneStateMonitor$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                PhoneStateMonitor phoneStateMonitor = (PhoneStateMonitor) this.f$0;
                phoneStateMonitor.getClass();
                phoneStateMonitor.mDefaultHome = PhoneStateMonitor.getCurrentDefaultHome();
                return;
            default:
                ((PhoneStateMonitor.AnonymousClass1) this.f$0).this$0.mDefaultHome = PhoneStateMonitor.getCurrentDefaultHome();
                return;
        }
    }
}
