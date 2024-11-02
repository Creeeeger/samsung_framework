package com.android.systemui.statusbar.phone;

import com.android.systemui.shade.NotificationShadeWindowControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StatusBarKeyguardViewManager$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StatusBarKeyguardViewManager f$0;

    public /* synthetic */ StatusBarKeyguardViewManager$$ExternalSyntheticLambda0(StatusBarKeyguardViewManager statusBarKeyguardViewManager, int i) {
        this.$r8$classId = i;
        this.f$0 = statusBarKeyguardViewManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.updateKeyguardUnlocking();
                return;
            case 1:
                this.f$0.updateLastKeyguardUnlocking();
                return;
            case 2:
                this.f$0.updateLastCoverClosed();
                return;
            default:
                ((NotificationShadeWindowControllerImpl) this.f$0.mNotificationShadeWindowController).setKeyguardFadingAway(false);
                return;
        }
    }
}
