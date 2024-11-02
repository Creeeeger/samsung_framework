package com.android.wm.shell.windowdecor;

import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.windowdecor.WindowDecoration;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DexWindowDecoration$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DexWindowDecoration f$0;

    public /* synthetic */ DexWindowDecoration$$ExternalSyntheticLambda0(DexWindowDecoration dexWindowDecoration, int i) {
        this.$r8$classId = i;
        this.f$0 = dexWindowDecoration;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                DexWindowDecoration dexWindowDecoration = this.f$0;
                WindowDecoration.AdditionalWindow additionalWindow = dexWindowDecoration.mRestart;
                if (additionalWindow != null) {
                    additionalWindow.releaseView();
                    ShellTaskOrganizer shellTaskOrganizer = dexWindowDecoration.mTaskOrganizer;
                    int i = dexWindowDecoration.mTaskInfo.taskId;
                    synchronized (shellTaskOrganizer.mLock) {
                        shellTaskOrganizer.mDisplayChangingTasks.remove(i);
                    }
                    dexWindowDecoration.mIsShowingRestart = false;
                    return;
                }
                return;
            default:
                DexWindowDecoration dexWindowDecoration2 = this.f$0;
                dexWindowDecoration2.mLayoutParam.width = dexWindowDecoration2.mTaskInfo.getConfiguration().windowConfiguration.getBounds().width();
                dexWindowDecoration2.mLayoutParam.height = dexWindowDecoration2.mTaskInfo.getConfiguration().windowConfiguration.getBounds().height();
                dexWindowDecoration2.mRestart.mWindowViewHost.relayout(dexWindowDecoration2.mLayoutParam);
                return;
        }
    }
}
