package com.android.systemui.shortcut;

import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.android.internal.policy.DividerSnapAlgorithm;
import com.android.internal.policy.IShortcutService;
import com.android.systemui.R;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.splitscreen.SplitScreenController;
import java.util.List;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ShortcutKeyServiceProxy extends IShortcutService.Stub {
    public final Callbacks mCallbacks;
    public final Object mLock = new Object();
    public final H mHandler = new H(this, 0);

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Callbacks {
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class H extends Handler {
        public /* synthetic */ H(ShortcutKeyServiceProxy shortcutKeyServiceProxy, int i) {
            this();
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 1) {
                Callbacks callbacks = ShortcutKeyServiceProxy.this.mCallbacks;
                final long longValue = ((Long) message.obj).longValue();
                ShortcutKeyDispatcher shortcutKeyDispatcher = (ShortcutKeyDispatcher) callbacks;
                int i = shortcutKeyDispatcher.mContext.getResources().getConfiguration().orientation;
                if ((longValue == 281474976710727L || longValue == 281474976710728L) && i == 2) {
                    shortcutKeyDispatcher.mSplitScreenOptional.ifPresent(new Consumer() { // from class: com.android.systemui.shortcut.ShortcutKeyDispatcher$$ExternalSyntheticLambda0
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            final long j = longValue;
                            final SplitScreenController splitScreenController = (SplitScreenController) obj;
                            splitScreenController.getClass();
                            ((HandlerExecutor) splitScreenController.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.splitscreen.SplitScreenController$$ExternalSyntheticLambda6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    List tasks;
                                    DividerSnapAlgorithm.SnapTarget nextTarget;
                                    SplitScreenController splitScreenController2 = splitScreenController;
                                    long j2 = j;
                                    if (splitScreenController2.isSplitScreenVisible()) {
                                        StageCoordinator stageCoordinator = splitScreenController2.mStageCoordinator;
                                        DividerSnapAlgorithm dividerSnapAlgorithm = stageCoordinator.mSplitLayout.getDividerSnapAlgorithm();
                                        int i2 = stageCoordinator.mSplitLayout.mDividePosition;
                                        DividerSnapAlgorithm.SnapTarget calculateNonDismissingSnapTarget = dividerSnapAlgorithm.calculateNonDismissingSnapTarget(i2);
                                        if (j2 == 281474976710727L) {
                                            nextTarget = dividerSnapAlgorithm.getPreviousTarget(calculateNonDismissingSnapTarget);
                                        } else {
                                            nextTarget = dividerSnapAlgorithm.getNextTarget(calculateNonDismissingSnapTarget);
                                        }
                                        stageCoordinator.mSplitLayout.snapToTarget(i2, nextTarget, false);
                                        return;
                                    }
                                    Context context = splitScreenController2.mContext;
                                    if (!context.getResources().getConfiguration().isDexMode() && (tasks = ActivityTaskManager.getInstance().getTasks(1)) != null && !tasks.isEmpty()) {
                                        ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) tasks.get(0);
                                        if (runningTaskInfo.displayId == 0) {
                                            if (!runningTaskInfo.supportsMultiWindow) {
                                                Toast.makeText(context, R.string.dock_non_resizeble_failed_to_dock_text, 0).show();
                                            } else {
                                                splitScreenController2.toggleSplitScreen(1);
                                            }
                                        }
                                    }
                                }
                            });
                        }
                    });
                }
            }
        }

        private H() {
        }
    }

    public ShortcutKeyServiceProxy(Callbacks callbacks) {
        this.mCallbacks = callbacks;
    }

    public final void notifyShortcutKeyPressed(long j) {
        synchronized (this.mLock) {
            this.mHandler.obtainMessage(1, Long.valueOf(j)).sendToTarget();
        }
    }
}
