package com.android.systemui.privacy;

import com.android.systemui.util.concurrency.DelayableExecutor;
import com.android.systemui.util.concurrency.ExecutorImpl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PrivacyItemController$MyExecutor$updateListeningState$1 implements Runnable {
    public final /* synthetic */ PrivacyItemController this$0;

    public PrivacyItemController$MyExecutor$updateListeningState$1(PrivacyItemController privacyItemController) {
        this.this$0 = privacyItemController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PrivacyItemController privacyItemController = this.this$0;
        boolean z = !((ArrayList) privacyItemController.callbacks).isEmpty();
        if (privacyItemController.listening != z) {
            privacyItemController.listening = z;
            DelayableExecutor delayableExecutor = privacyItemController.bgExecutor;
            Set set = privacyItemController.privacyItemMonitors;
            if (z) {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((PrivacyItemMonitor) it.next()).startListening(privacyItemController.privacyItemMonitorCallback);
                }
                ((ExecutorImpl) delayableExecutor).execute(new PrivacyItemController$update$1(privacyItemController));
                return;
            }
            Iterator it2 = set.iterator();
            while (it2.hasNext()) {
                ((PrivacyItemMonitor) it2.next()).stopListening();
            }
            ((ExecutorImpl) delayableExecutor).execute(new PrivacyItemController$update$1(privacyItemController));
        }
    }
}
