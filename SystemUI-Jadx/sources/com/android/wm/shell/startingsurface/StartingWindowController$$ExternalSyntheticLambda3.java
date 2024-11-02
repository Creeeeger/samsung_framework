package com.android.wm.shell.startingsurface;

import android.app.ActivityTaskManager;
import android.os.Bundle;
import android.os.RemoteCallback;
import android.window.SplashScreenView;
import android.window.StartingWindowRemovalInfo;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.android.wm.shell.startingsurface.SplashscreenWindowCreator;
import com.android.wm.shell.startingsurface.StartingSurfaceDrawer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final /* synthetic */ class StartingWindowController$$ExternalSyntheticLambda3 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ StartingWindowController f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ StartingWindowController$$ExternalSyntheticLambda3(StartingWindowController startingWindowController, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = startingWindowController;
        this.f$1 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SplashscreenWindowCreator.SplashWindowRecord splashWindowRecord;
        SplashScreenView splashScreenView;
        SplashScreenView.SplashScreenViewParcelable splashScreenViewParcelable;
        StartingSurfaceDrawer.SnapshotRecord snapshotRecord;
        StartingSurfaceDrawer.SnapshotRecord snapshotRecord2 = null;
        boolean z = true;
        switch (this.$r8$classId) {
            case 0:
                this.f$0.mStartingSurfaceDrawer.mSplashscreenWindowCreator.onAppSplashScreenViewRemoved(this.f$1, true);
                return;
            case 1:
                StartingWindowController startingWindowController = this.f$0;
                int i = this.f$1;
                StartingSurfaceDrawer startingSurfaceDrawer = startingWindowController.mStartingSurfaceDrawer;
                StartingSurfaceDrawer.StartingWindowRecordManager startingWindowRecordManager = startingSurfaceDrawer.mWindowRecords;
                StartingSurfaceDrawer.StartingWindowRecord startingWindowRecord = (StartingSurfaceDrawer.StartingWindowRecord) startingWindowRecordManager.mStartingWindowRecords.get(i);
                if (startingWindowRecord instanceof StartingSurfaceDrawer.SnapshotRecord) {
                    snapshotRecord = (StartingSurfaceDrawer.SnapshotRecord) startingWindowRecord;
                } else {
                    snapshotRecord = null;
                }
                if (snapshotRecord != null && snapshotRecord.hasImeSurface()) {
                    StartingWindowRemovalInfo startingWindowRemovalInfo = startingWindowRecordManager.mTmpRemovalInfo;
                    startingWindowRemovalInfo.taskId = i;
                    startingWindowRecordManager.removeWindow(startingWindowRemovalInfo, true);
                }
                StartingSurfaceDrawer.StartingWindowRecordManager startingWindowRecordManager2 = startingSurfaceDrawer.mWindowlessRecords;
                StartingSurfaceDrawer.StartingWindowRecord startingWindowRecord2 = (StartingSurfaceDrawer.StartingWindowRecord) startingWindowRecordManager2.mStartingWindowRecords.get(i);
                if (startingWindowRecord2 instanceof StartingSurfaceDrawer.SnapshotRecord) {
                    snapshotRecord2 = (StartingSurfaceDrawer.SnapshotRecord) startingWindowRecord2;
                }
                if (snapshotRecord2 != null && snapshotRecord2.hasImeSurface()) {
                    StartingWindowRemovalInfo startingWindowRemovalInfo2 = startingWindowRecordManager2.mTmpRemovalInfo;
                    startingWindowRemovalInfo2.taskId = i;
                    startingWindowRecordManager2.removeWindow(startingWindowRemovalInfo2, true);
                    return;
                }
                return;
            default:
                StartingWindowController startingWindowController2 = this.f$0;
                final int i2 = this.f$1;
                final SplashscreenWindowCreator splashscreenWindowCreator = startingWindowController2.mStartingSurfaceDrawer.mSplashscreenWindowCreator;
                StartingSurfaceDrawer.StartingWindowRecord startingWindowRecord3 = (StartingSurfaceDrawer.StartingWindowRecord) splashscreenWindowCreator.mStartingWindowRecordManager.mStartingWindowRecords.get(i2);
                if (startingWindowRecord3 instanceof SplashscreenWindowCreator.SplashWindowRecord) {
                    splashWindowRecord = (SplashscreenWindowCreator.SplashWindowRecord) startingWindowRecord3;
                } else {
                    splashWindowRecord = null;
                }
                if (splashWindowRecord != null) {
                    splashScreenView = splashWindowRecord.mSplashView;
                } else {
                    splashScreenView = null;
                }
                if (splashScreenView != null && splashScreenView.isCopyable()) {
                    splashScreenViewParcelable = new SplashScreenView.SplashScreenViewParcelable(splashScreenView);
                    splashScreenViewParcelable.setClientCallback(new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.wm.shell.startingsurface.SplashscreenWindowCreator$$ExternalSyntheticLambda3
                        public final void onResult(Bundle bundle) {
                            final SplashscreenWindowCreator splashscreenWindowCreator2 = SplashscreenWindowCreator.this;
                            final int i3 = i2;
                            splashscreenWindowCreator2.getClass();
                            ((HandlerExecutor) splashscreenWindowCreator2.mSplashScreenExecutor).execute(new Runnable() { // from class: com.android.wm.shell.startingsurface.SplashscreenWindowCreator$$ExternalSyntheticLambda4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SplashscreenWindowCreator.this.onAppSplashScreenViewRemoved(i3, false);
                                }
                            });
                        }
                    }));
                    splashScreenView.onCopied();
                    splashscreenWindowCreator.mAnimatedSplashScreenSurfaceHosts.append(i2, splashScreenView.getSurfaceHost());
                } else {
                    splashScreenViewParcelable = null;
                }
                if (ShellProtoLogCache.WM_SHELL_STARTING_WINDOW_enabled) {
                    long j = i2;
                    if (splashScreenViewParcelable == null) {
                        z = false;
                    }
                    ShellProtoLogImpl.v(ShellProtoLogGroup.WM_SHELL_STARTING_WINDOW, -1584013466, 13, null, Long.valueOf(j), Boolean.valueOf(z));
                }
                ActivityTaskManager.getInstance().onSplashScreenViewCopyFinished(i2, splashScreenViewParcelable);
                return;
        }
    }
}
