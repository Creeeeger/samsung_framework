package com.android.wm.shell.startingsurface;

import android.os.RemoteException;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.startingsurface.StartingSurfaceDrawer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SnapshotWindowCreator {
    public final ShellExecutor mMainExecutor;
    public final StartingSurfaceDrawer.StartingWindowRecordManager mStartingWindowRecordManager;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SnapshotWindowRecord extends StartingSurfaceDrawer.SnapshotRecord {
        public final TaskSnapshotWindow mTaskSnapshotWindow;

        public SnapshotWindowRecord(TaskSnapshotWindow taskSnapshotWindow, int i, ShellExecutor shellExecutor, int i2, StartingSurfaceDrawer.StartingWindowRecordManager startingWindowRecordManager) {
            super(i, shellExecutor, i2, startingWindowRecordManager);
            this.mTaskSnapshotWindow = taskSnapshotWindow;
            this.mBGColor = taskSnapshotWindow.mBackgroundPaint.getColor();
        }

        @Override // com.android.wm.shell.startingsurface.StartingSurfaceDrawer.SnapshotRecord
        public final boolean hasImeSurface() {
            return this.mTaskSnapshotWindow.mHasImeSurface;
        }

        @Override // com.android.wm.shell.startingsurface.StartingSurfaceDrawer.SnapshotRecord
        public final void removeImmediately() {
            super.removeImmediately();
            TaskSnapshotWindow taskSnapshotWindow = this.mTaskSnapshotWindow;
            taskSnapshotWindow.getClass();
            try {
                if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, 1218213214, 3, null, Boolean.valueOf(taskSnapshotWindow.mHasDrawn));
                }
                taskSnapshotWindow.mSession.remove(taskSnapshotWindow.mWindow);
            } catch (RemoteException unused) {
            }
        }
    }

    public SnapshotWindowCreator(ShellExecutor shellExecutor, StartingSurfaceDrawer.StartingWindowRecordManager startingWindowRecordManager) {
        this.mMainExecutor = shellExecutor;
        this.mStartingWindowRecordManager = startingWindowRecordManager;
    }
}
