package com.android.systemui.statusbar.notification.stack;

import android.view.View;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.systemui.shade.ShadeControllerImpl;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class NotificationStackScrollLayout$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ View f$0;

    public /* synthetic */ NotificationStackScrollLayout$$ExternalSyntheticLambda2(View view, int i) {
        this.$r8$classId = i;
        this.f$0 = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((ShadeControllerImpl) ((NotificationStackScrollLayout) this.f$0).mShadeController).animateCollapseShade(0);
                return;
            case 1:
                NotificationStackScrollLayout notificationStackScrollLayout = (NotificationStackScrollLayout) this.f$0;
                int i = NotificationStackScrollLayout.$r8$clinit;
                notificationStackScrollLayout.animateScroll();
                return;
            case 2:
                ((ShadeControllerImpl) ((NotificationStackScrollLayout) this.f$0).mShadeController).animateCollapseShade(0);
                return;
            case 3:
                NotificationStackScrollLayout notificationStackScrollLayout2 = (NotificationStackScrollLayout) this.f$0;
                notificationStackScrollLayout2.mFlingAfterUpEvent = false;
                InteractionJankMonitor.getInstance().end(2);
                notificationStackScrollLayout2.mFinishScrollingCallback = null;
                return;
            case 4:
                NotificationStackScrollLayout notificationStackScrollLayout3 = (NotificationStackScrollLayout) this.f$0;
                notificationStackScrollLayout3.mFlingAfterUpEvent = false;
                InteractionJankMonitor.getInstance().end(2);
                notificationStackScrollLayout3.mFinishScrollingCallback = null;
                return;
            default:
                View view = this.f$0;
                int i2 = NotificationStackScrollLayout.$r8$clinit;
                view.requestFocus();
                return;
        }
    }
}
