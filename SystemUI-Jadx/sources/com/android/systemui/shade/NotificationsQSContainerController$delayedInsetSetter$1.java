package com.android.systemui.shade;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class NotificationsQSContainerController$delayedInsetSetter$1 implements Runnable, Consumer {
    public ExecutorImpl.ExecutionToken canceller;
    public final /* synthetic */ NotificationsQSContainerController this$0;

    public NotificationsQSContainerController$delayedInsetSetter$1(NotificationsQSContainerController notificationsQSContainerController) {
        this.this$0 = notificationsQSContainerController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        WindowInsets windowInsets = (WindowInsets) obj;
        windowInsets.getStableInsetBottom();
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        if (displayCutout != null) {
            displayCutout.getSafeInsetBottom();
        }
        ExecutorImpl.ExecutionToken executionToken = this.canceller;
        if (executionToken != null) {
            executionToken.run();
        }
        this.canceller = this.this$0.delayableExecutor.executeDelayed(500L, this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.this$0.getClass();
        this.this$0.getClass();
        this.this$0.getClass();
    }
}
