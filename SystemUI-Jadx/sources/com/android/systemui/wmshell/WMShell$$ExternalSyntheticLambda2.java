package com.android.systemui.wmshell;

import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.wmshell.WMShell;
import com.android.wm.shell.desktopmode.DesktopMode;
import com.android.wm.shell.onehanded.OneHanded;
import com.android.wm.shell.pip.Pip;
import com.android.wm.shell.recents.RecentTasks;
import com.android.wm.shell.splitscreen.EnterSplitGestureHandler;
import com.android.wm.shell.splitscreen.SplitScreen;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class WMShell$$ExternalSyntheticLambda2 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ WMShell$$ExternalSyntheticLambda2(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ((WMShell) this.f$0).initPip((Pip) obj);
                return;
            case 1:
                ((WMShell) this.f$0).initSplitScreen((SplitScreen) obj);
                return;
            case 2:
                ((WMShell) this.f$0).initOneHanded((OneHanded) obj);
                return;
            case 3:
                WMShell wMShell = (WMShell) this.f$0;
                wMShell.getClass();
                ((DesktopMode) obj).addVisibleTasksListener(new WMShell.AnonymousClass14(), wMShell.mSysUiMainExecutor);
                return;
            case 4:
                ((WMShell) this.f$0).initRecentTasks((RecentTasks) obj);
                return;
            case 5:
                WMShell wMShell2 = (WMShell) this.f$0;
                wMShell2.getClass();
                wMShell2.mSysUiState.addCallback(new WMShell$$ExternalSyntheticLambda0(wMShell2, (EnterSplitGestureHandler) obj, 1));
                return;
            default:
                ((CommandQueue) this.f$0).onRecentsAnimationStateChanged(((Boolean) obj).booleanValue());
                return;
        }
    }
}
