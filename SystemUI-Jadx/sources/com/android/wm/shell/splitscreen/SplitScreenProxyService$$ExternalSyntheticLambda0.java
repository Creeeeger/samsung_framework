package com.android.wm.shell.splitscreen;

import android.os.Message;
import android.os.RemoteException;
import android.util.Slog;
import android.view.SurfaceControl;
import android.window.IRemoteTransitionFinishedCallback;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.splitscreen.SplitScreenProxyService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenProxyService$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SplitScreenProxyService$$ExternalSyntheticLambda0(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SplitScreenProxyService splitScreenProxyService = (SplitScreenProxyService) this.f$0;
                Message message = splitScreenProxyService.mPendingMsg;
                if (message != null) {
                    try {
                        splitScreenProxyService.mMessenger.send(message);
                    } catch (RemoteException e) {
                        e.printStackTrace();
                    }
                    splitScreenProxyService.mPendingMsg = null;
                    return;
                }
                return;
            default:
                IRemoteTransitionFinishedCallback iRemoteTransitionFinishedCallback = (IRemoteTransitionFinishedCallback) this.f$0;
                int i = SplitScreenProxyService.AnonymousClass1.$r8$clinit;
                try {
                    boolean z = SplitScreenProxyService.TEST_MOCK_REMOTE_TRANSITION;
                    Slog.d("SplitScreenProxyService", "Call onTransitionFinished: " + iRemoteTransitionFinishedCallback);
                    iRemoteTransitionFinishedCallback.onTransitionFinished((WindowContainerTransaction) null, (SurfaceControl.Transaction) null);
                    return;
                } catch (RemoteException e2) {
                    throw new RuntimeException(e2);
                }
        }
    }
}
