package com.android.systemui.wmshell;

import com.android.systemui.model.SysUiState;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.pip.Pip;
import com.android.wm.shell.splitscreen.EnterSplitGestureHandler;
import com.android.wm.shell.splitscreen.EnterSplitGestureHandler$$ExternalSyntheticLambda1;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class WMShell$$ExternalSyntheticLambda0 implements SysUiState.SysUiStateCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WMShell f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ WMShell$$ExternalSyntheticLambda0(WMShell wMShell, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = wMShell;
        this.f$1 = obj;
    }

    @Override // com.android.systemui.model.SysUiState.SysUiStateCallback
    public final void onSystemUiStateChanged(long j) {
        boolean z;
        boolean z2;
        int i = this.$r8$classId;
        boolean z3 = true;
        boolean z4 = false;
        WMShell wMShell = this.f$0;
        Object obj = this.f$1;
        switch (i) {
            case 0:
                Pip pip = (Pip) obj;
                wMShell.getClass();
                if ((8440396 & j) != 0) {
                    z3 = false;
                }
                pip.onSystemUiStateChanged(j, z3);
                return;
            default:
                EnterSplitGestureHandler enterSplitGestureHandler = (EnterSplitGestureHandler) obj;
                wMShell.getClass();
                if ((8440396 & j) == 0) {
                    z = true;
                } else {
                    z = false;
                }
                enterSplitGestureHandler.getClass();
                if (z && (2 & j) == 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if ((j & 16) != 0) {
                    z4 = true;
                }
                if (enterSplitGestureHandler.mIsSystemUiStateValid != z2) {
                    enterSplitGestureHandler.mIsSystemUiStateValid = z2;
                    ((HandlerExecutor) enterSplitGestureHandler.mMainExecutor).execute(new EnterSplitGestureHandler$$ExternalSyntheticLambda1(enterSplitGestureHandler, 1));
                }
                if (enterSplitGestureHandler.mIsA11yButtonEnabled != z4) {
                    enterSplitGestureHandler.mIsA11yButtonEnabled = z4;
                    return;
                }
                return;
        }
    }
}
