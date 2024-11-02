package com.android.keyguard;

import android.os.UserHandle;
import com.android.keyguard.AdminSecondaryLockScreenController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AdminSecondaryLockScreenController.AnonymousClass2 f$0;

    public /* synthetic */ AdminSecondaryLockScreenController$2$$ExternalSyntheticLambda0(AdminSecondaryLockScreenController.AnonymousClass2 anonymousClass2, int i) {
        this.$r8$classId = i;
        this.f$0 = anonymousClass2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.this$0.dismiss(UserHandle.getCallingUserId());
                return;
            default:
                this.f$0.this$0.dismiss(KeyguardUpdateMonitor.getCurrentUser());
                return;
        }
    }
}
