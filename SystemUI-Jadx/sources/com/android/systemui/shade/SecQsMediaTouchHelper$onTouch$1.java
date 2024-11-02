package com.android.systemui.shade;

import android.view.MotionEvent;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayoutController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecQsMediaTouchHelper$onTouch$1 implements Runnable {
    public final /* synthetic */ MotionEvent $event;
    public final /* synthetic */ SecQsMediaTouchHelper this$0;

    public SecQsMediaTouchHelper$onTouch$1(SecQsMediaTouchHelper secQsMediaTouchHelper, MotionEvent motionEvent) {
        this.this$0 = secQsMediaTouchHelper;
        this.$event = motionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        NotificationStackScrollLayoutController notificationStackScrollLayoutController = this.this$0.notificationStackScrollLayoutController;
        notificationStackScrollLayoutController.mView.onMediaPlayerScroll(this.$event);
    }
}
