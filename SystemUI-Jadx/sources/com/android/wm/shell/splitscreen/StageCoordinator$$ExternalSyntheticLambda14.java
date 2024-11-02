package com.android.wm.shell.splitscreen;

import com.android.wm.shell.recents.RecentTasksController;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StageCoordinator$$ExternalSyntheticLambda14 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ RecentTasksController f$0;

    public /* synthetic */ StageCoordinator$$ExternalSyntheticLambda14(RecentTasksController recentTasksController, int i) {
        this.$r8$classId = i;
        this.f$0 = recentTasksController;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                this.f$0.removeSplitPair(((Integer) obj).intValue());
                return;
            default:
                this.f$0.removeSplitPair(((Integer) obj).intValue());
                return;
        }
    }
}
