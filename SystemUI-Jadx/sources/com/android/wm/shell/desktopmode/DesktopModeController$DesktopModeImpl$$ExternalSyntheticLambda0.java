package com.android.wm.shell.desktopmode;

import com.android.wm.shell.desktopmode.DesktopModeController;
import com.android.wm.shell.desktopmode.DesktopModeTaskRepository;
import java.util.concurrent.Executor;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DesktopModeController.DesktopModeImpl f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Executor f$2;

    public /* synthetic */ DesktopModeController$DesktopModeImpl$$ExternalSyntheticLambda0(DesktopModeController.DesktopModeImpl desktopModeImpl, Object obj, Executor executor, int i) {
        this.$r8$classId = i;
        this.f$0 = desktopModeImpl;
        this.f$1 = obj;
        this.f$2 = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.$r8$classId) {
            case 0:
                DesktopModeController.DesktopModeImpl desktopModeImpl = this.f$0;
                Consumer consumer = (Consumer) this.f$1;
                Executor executor = this.f$2;
                DesktopModeTaskRepository desktopModeTaskRepository = DesktopModeController.this.mDesktopModeTaskRepository;
                desktopModeTaskRepository.desktopGestureExclusionListener = consumer;
                desktopModeTaskRepository.desktopGestureExclusionExecutor = executor;
                executor.execute(new DesktopModeTaskRepository$setTaskCornerListener$1(desktopModeTaskRepository));
                return;
            default:
                DesktopModeController.DesktopModeImpl desktopModeImpl2 = this.f$0;
                DesktopModeController.this.mDesktopModeTaskRepository.addVisibleTasksListener((DesktopModeTaskRepository.VisibleTasksListener) this.f$1, this.f$2);
                return;
        }
    }
}
