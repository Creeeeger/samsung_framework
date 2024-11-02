package com.android.systemui.qp.util;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SubscreenUtil$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SubscreenUtil f$0;

    public /* synthetic */ SubscreenUtil$$ExternalSyntheticLambda1(SubscreenUtil subscreenUtil, int i) {
        this.$r8$classId = i;
        this.f$0 = subscreenUtil;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mSubScreenQuickPanelWindowController.collapsePanel();
                return;
            default:
                this.f$0.closeSubscreenPanel();
                return;
        }
    }
}
