package com.android.systemui.keyguard;

import android.os.RemoteException;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final /* synthetic */ class DismissCallbackRegistry$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DismissCallbackWrapper f$0;

    public /* synthetic */ DismissCallbackRegistry$$ExternalSyntheticLambda0(DismissCallbackWrapper dismissCallbackWrapper, int i) {
        this.$r8$classId = i;
        this.f$0 = dismissCallbackWrapper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                DismissCallbackWrapper dismissCallbackWrapper = this.f$0;
                dismissCallbackWrapper.getClass();
                try {
                    dismissCallbackWrapper.mCallback.onDismissCancelled();
                    return;
                } catch (RemoteException e) {
                    android.util.Log.i("DismissCallbackWrapper", "Failed to call callback", e);
                    return;
                }
            default:
                DismissCallbackWrapper dismissCallbackWrapper2 = this.f$0;
                dismissCallbackWrapper2.getClass();
                try {
                    dismissCallbackWrapper2.mCallback.onDismissSucceeded();
                    return;
                } catch (RemoteException e2) {
                    android.util.Log.i("DismissCallbackWrapper", "Failed to call callback", e2);
                    return;
                }
        }
    }
}
