package com.android.wm.shell.splitscreen;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import android.util.ArraySet;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.splitscreen.ForcedResizableInfoActivityController;
import com.android.wm.shell.splitscreen.SplitScreen;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ForcedResizableInfoActivityController implements SplitScreen.SplitScreenListener {
    public final Context mContext;
    public final ShellExecutor mMainExecutor;
    public final ArraySet mPendingTasks = new ArraySet();
    public final ArraySet mPackagesShownInSession = new ArraySet();
    public final ForcedResizableInfoActivityController$$ExternalSyntheticLambda0 mTimeoutRunnable = new Runnable() { // from class: com.android.wm.shell.splitscreen.ForcedResizableInfoActivityController$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            ForcedResizableInfoActivityController forcedResizableInfoActivityController = ForcedResizableInfoActivityController.this;
            ((HandlerExecutor) forcedResizableInfoActivityController.mMainExecutor).removeCallbacks(forcedResizableInfoActivityController.mTimeoutRunnable);
            ArraySet arraySet = forcedResizableInfoActivityController.mPendingTasks;
            for (int size = arraySet.size() - 1; size >= 0; size--) {
                ForcedResizableInfoActivityController.PendingTaskRecord pendingTaskRecord = (ForcedResizableInfoActivityController.PendingTaskRecord) arraySet.valueAt(size);
                Context context = forcedResizableInfoActivityController.mContext;
                Intent intent = new Intent(context, (Class<?>) ForcedResizableInfoActivity.class);
                ActivityOptions makeBasic = ActivityOptions.makeBasic();
                makeBasic.setLaunchTaskId(pendingTaskRecord.mTaskId);
                makeBasic.setTaskOverlay(true, true);
                int i = pendingTaskRecord.mReason;
                intent.putExtra("extra_forced_resizeable_reason", i);
                if (i == 3) {
                    intent.addFlags(262144);
                } else if (i == 4) {
                    intent.addFlags(262144);
                }
                context.startActivityAsUser(intent, makeBasic.toBundle(), UserHandle.CURRENT);
            }
            arraySet.clear();
        }
    };
    public long mLastShowingTime = 0;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PendingTaskRecord {
        public final int mReason;
        public final int mTaskId;

        public PendingTaskRecord(ForcedResizableInfoActivityController forcedResizableInfoActivityController, int i, int i2) {
            this.mTaskId = i;
            this.mReason = i2;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.wm.shell.splitscreen.ForcedResizableInfoActivityController$$ExternalSyntheticLambda0] */
    public ForcedResizableInfoActivityController(Context context, ShellExecutor shellExecutor) {
        this.mContext = context;
        this.mMainExecutor = shellExecutor;
    }
}
