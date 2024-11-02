package com.android.keyguard;

import com.android.keyguard.DualDarInnerLockScreenController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DualDarInnerLockScreenController.AnonymousClass4 f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ DualDarInnerLockScreenController$4$$ExternalSyntheticLambda0(DualDarInnerLockScreenController.AnonymousClass4 anonymousClass4, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = anonymousClass4;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                DualDarInnerLockScreenController.AnonymousClass4 anonymousClass4 = this.f$0;
                DualDarInnerLockScreenController.m51$$Nest$mdismissInnerLockScreen(DualDarInnerLockScreenController.this, this.f$1);
                return;
            default:
                DualDarInnerLockScreenController.AnonymousClass4 anonymousClass42 = this.f$0;
                DualDarInnerLockScreenController.m51$$Nest$mdismissInnerLockScreen(DualDarInnerLockScreenController.this, this.f$1);
                return;
        }
    }
}
