package com.android.wm.shell.splitscreen;

import com.android.wm.shell.splitscreen.SplitScreenController;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SplitScreenController.SplitScreenImpl f$0;

    public /* synthetic */ SplitScreenController$SplitScreenImpl$$ExternalSyntheticLambda0(SplitScreenController.SplitScreenImpl splitScreenImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = splitScreenImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                SplitScreenController.this.toggleSplitScreen(1);
                return;
            default:
                SplitScreenController.this.enterSplitScreen();
                return;
        }
    }
}
