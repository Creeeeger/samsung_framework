package com.android.wm.shell.splitscreen;

import android.util.ArrayMap;
import android.util.Slog;
import com.android.wm.shell.recents.RecentTasksController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageCoordinator$$ExternalSyntheticLambda17 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ StageCoordinator$$ExternalSyntheticLambda17(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        switch (this.$r8$classId) {
            case 0:
                ArrayMap arrayMap = (ArrayMap) this.f$0;
                RecentTasksController recentTasksController = (RecentTasksController) obj;
                int size = arrayMap.keySet().size();
                while (true) {
                    size--;
                    if (size >= 0) {
                        recentTasksController.removeSplitPair(((Integer) arrayMap.keyAt(size)).intValue());
                    } else {
                        return;
                    }
                }
            default:
                RecentTasksController recentTasksController2 = (RecentTasksController) obj;
                StageCoordinator stageCoordinator = StageCoordinator.this;
                int topVisibleChildTaskId = stageCoordinator.mMainStage.getTopVisibleChildTaskId();
                boolean z2 = false;
                if (topVisibleChildTaskId != -1) {
                    if (-1 != recentTasksController2.mSplitTasks.get(topVisibleChildTaskId, -1)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        z2 = true;
                    }
                }
                if (z2) {
                    Slog.d("StageCoordinator", "update pair by onSplitPairUpdateRequested");
                    stageCoordinator.mShouldUpdateRecents = true;
                    stageCoordinator.updateRecentTasksSplitPair();
                    return;
                }
                return;
        }
    }
}
