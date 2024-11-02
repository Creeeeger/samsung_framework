package com.android.wm.shell.splitscreen;

import android.util.Log;
import android.view.inputmethod.InputMethodManager;
import com.android.wm.shell.splitscreen.StageCoordinator;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageCoordinator$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StageCoordinator$$ExternalSyntheticLambda6(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                ((InputMethodManager) this.f$0).semForceHideSoftInput();
                Log.i("StageCoordinator", "Hide the Ime to release adjustedForIme.");
                return;
            case 1:
                ((StageCoordinator.AnonymousClass3) this.f$0).this$0.exitSplitScreen(null, 0);
                return;
            default:
                ((StageCoordinator.StageListenerImpl) this.f$0).onNoLongerSupportMultiWindow();
                return;
        }
    }
}
