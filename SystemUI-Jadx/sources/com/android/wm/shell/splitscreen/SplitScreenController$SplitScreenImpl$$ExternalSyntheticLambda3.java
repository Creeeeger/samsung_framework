package com.android.wm.shell.splitscreen;

import android.util.ArrayMap;
import com.android.wm.shell.splitscreen.SplitScreen;
import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.ArrayList;
import java.util.function.BooleanSupplier;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SplitScreenController.SplitScreenImpl f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda3(SplitScreenController.SplitScreenImpl splitScreenImpl, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = splitScreenImpl;
        this.f$1 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SplitScreenController.SplitScreenImpl splitScreenImpl = this.f$0;
                SplitScreen.SplitScreenListener splitScreenListener = (SplitScreen.SplitScreenListener) this.f$1;
                ArrayMap arrayMap = splitScreenImpl.mExecutors;
                arrayMap.remove(splitScreenListener);
                if (arrayMap.size() == 0) {
                    ((ArrayList) SplitScreenController.this.mStageCoordinator.mListeners).remove(splitScreenImpl.mListener);
                    return;
                }
                return;
            case 1:
                SplitScreenController.SplitScreenImpl splitScreenImpl2 = this.f$0;
                SplitScreenController.this.mStageCoordinator.sendStatusToListener((SplitScreen.SplitScreenListener) this.f$1);
                return;
            default:
                SplitScreenController.this.mIsKeyguardOccludedAndShowingSupplier = (BooleanSupplier) this.f$1;
                return;
        }
    }
}
