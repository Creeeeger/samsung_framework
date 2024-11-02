package com.android.wm.shell.draganddrop;

import android.app.ActivityManager;
import android.app.ActivityTaskManager;
import android.app.PendingIntent;
import android.app.TaskInfo;
import android.app.WindowConfiguration;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Slog;
import android.util.SparseArray;
import android.widget.Toast;
import androidx.appcompat.widget.AbsActionBarView$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.systemui.R;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.draganddrop.DragAndDropPolicy;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Predicate;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DragAndDropPolicy {
    public final ActivityTaskManager mActivityTaskManager;
    public String mCallingPackageName;
    public final Context mContext;
    public final RectF mDisallowHitRegion;
    public final SparseArray mDropTargetProviders;
    public final FreeformStarter mFreeformStarter;
    public InstanceId mLoggerSessionId;
    public final MultiWindowManager mMultiWindowManager;
    public DragSession mSession;
    public final SplitScreenController mSplitScreen;
    public final Starter mStarter;
    public final ArrayList mTargets;
    public Toast mToast;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DefaultStarter implements Starter {
        public final Context mContext;

        public DefaultStarter(Context context) {
            this.mContext = context;
        }

        @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
        public final void startIntent(int i, int i2, PendingIntent pendingIntent, Intent intent, Bundle bundle) {
            try {
                pendingIntent.send(this.mContext, 0, intent, null, null, null, bundle);
            } catch (PendingIntent.CanceledException e) {
                Slog.e("DragAndDropPolicy", "Failed to launch activity", e);
            }
        }

        @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
        public final void startShortcut(String str, String str2, int i, Bundle bundle, UserHandle userHandle) {
            try {
                ((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).startShortcut(str, str2, null, bundle, userHandle);
            } catch (ActivityNotFoundException e) {
                Slog.e("DragAndDropPolicy", "Failed to launch shortcut", e);
            }
        }

        @Override // com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter
        public final void startTask(int i, int i2, Bundle bundle) {
            try {
                ActivityTaskManager.getService().startActivityFromRecents(i, bundle);
            } catch (RemoteException e) {
                Slog.e("DragAndDropPolicy", "Failed to launch task", e);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DragSession {
        public DisplayLayout displayLayout;
        public Intent dragData;
        public boolean dragItemSupportsSplitscreen;
        public boolean isDragDataDropResolver;
        public boolean isDragFromRecent;
        public final ActivityTaskManager mActivityTaskManager;
        public final ExecutableAppHolder mExecutableAppHolder;
        public final ClipData mInitialDragData;
        public final VisibleTasks mVisibleTasks;
        public int runningTaskActType = 1;
        public boolean runningTaskSupportsSplitScreen;

        public DragSession(ActivityTaskManager activityTaskManager, DisplayLayout displayLayout, ClipData clipData, MultiWindowManager multiWindowManager, ExecutableAppHolder executableAppHolder, VisibleTasks visibleTasks) {
            this.mActivityTaskManager = activityTaskManager;
            this.mInitialDragData = clipData;
            this.displayLayout = displayLayout;
            this.mExecutableAppHolder = executableAppHolder;
            this.mVisibleTasks = visibleTasks;
        }

        public final List getNonFloatingTopTask(final int i) {
            ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) this.mActivityTaskManager.getTasks(Integer.MAX_VALUE, false).stream().filter(new Predicate() { // from class: com.android.wm.shell.draganddrop.DragAndDropPolicy$DragSession$$ExternalSyntheticLambda0
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) obj;
                    DragAndDropPolicy.DragSession.this.getClass();
                    if (((TaskInfo) runningTaskInfo2).displayId != 0) {
                        return false;
                    }
                    return !WindowConfiguration.isFloating(runningTaskInfo2.getWindowingMode());
                }
            }).filter(new Predicate() { // from class: com.android.wm.shell.draganddrop.DragAndDropPolicy$DragSession$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    if (((ActivityManager.RunningTaskInfo) obj).taskId != i) {
                        return true;
                    }
                    return false;
                }
            }).findFirst().orElse(null);
            if (runningTaskInfo == null) {
                return Collections.EMPTY_LIST;
            }
            return List.of(runningTaskInfo);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class LaunchOptions {
        public final int cellPosition;
        public final int splitDivision;
        public final int splitPosition;

        public LaunchOptions(int i, int i2, int i3) {
            this.splitPosition = i;
            this.cellPosition = i2;
            this.splitDivision = i3;
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Target {
        public boolean alreadyRun;
        public final Rect drawRegion;
        public final Rect hitRegion;
        public final boolean isResizable;
        public final List polygon;
        public final int type;

        public Target(int i, Rect rect, Rect rect2) {
            this(i, rect, rect2, true);
        }

        public final int convertTypeToCellStagePosition() {
            switch (this.type) {
                case 6:
                    return 24;
                case 7:
                    return 72;
                case 8:
                    return 48;
                case 9:
                    return 96;
                default:
                    return 0;
            }
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Target)) {
                return false;
            }
            if (this.type != ((Target) obj).type) {
                return false;
            }
            return true;
        }

        public final boolean isMultiSplit() {
            int i = this.type;
            if (i != 6 && i != 7 && i != 8 && i != 9) {
                return false;
            }
            return true;
        }

        public final String toString() {
            return "Target {hit=" + this.hitRegion + " draw=" + this.drawRegion + "}";
        }

        public Target(int i, Rect rect, Rect rect2, boolean z) {
            this(i, rect, rect2, z, null);
        }

        public Target(int i, Rect rect, Rect rect2, boolean z, List<PointF> list) {
            this.type = i;
            this.hitRegion = rect;
            this.drawRegion = rect2;
            this.isResizable = z;
            this.polygon = list;
        }
    }

    public DragAndDropPolicy(Context context, SplitScreenController splitScreenController) {
        this(context, ActivityTaskManager.getInstance(), splitScreenController, new DefaultStarter(context), MultiWindowManager.getInstance());
    }

    public final Rect getCenterFreeformBounds() {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        Rect rect = new Rect();
        DisplayLayout displayLayout = this.mSession.displayLayout;
        boolean z = false;
        rect.set(0, 0, displayLayout.mWidth, displayLayout.mHeight);
        DisplayLayout displayLayout2 = this.mSession.displayLayout;
        if (displayLayout2.mWidth > displayLayout2.mHeight) {
            z = true;
        }
        Context context = this.mContext;
        if (z && (!CoreRune.MW_DND_MULTI_SPLIT_DROP_TARGET || isInSubDisplay())) {
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.dnd_drop_freeform_height);
            dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.dnd_drop_freeform_width);
        } else {
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.dnd_drop_freeform_width);
            dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.dnd_drop_freeform_height);
        }
        int width = rect.width();
        int height = rect.height();
        int m = AbsActionBarView$$ExternalSyntheticOutline0.m(width, dimensionPixelSize, 2, rect.left);
        int i = (height - dimensionPixelSize2) / 2;
        rect.set(m, i, dimensionPixelSize + m, dimensionPixelSize2 + i);
        return rect;
    }

    public void handleDrop(Target target, ClipData clipData) {
        int i;
        int i2;
        SplitScreenController splitScreenController;
        if (target != null && this.mTargets.contains(target)) {
            int i3 = target.type;
            if (i3 != 2 && i3 != 1) {
                i = 0;
            } else {
                i = 1;
            }
            if (i3 != 0 && (splitScreenController = this.mSplitScreen) != null) {
                i2 = i ^ 1;
                splitScreenController.onDroppedToSplit(i2, this.mLoggerSessionId);
            } else {
                i2 = -1;
            }
            startClipDescription(clipData.getDescription(), this.mSession.dragData, i2, this.mStarter, null, null, -1);
        }
    }

    public final boolean isInSubDisplay() {
        if (this.mContext.getResources().getConfiguration().semDisplayDeviceType == 5) {
            return true;
        }
        return false;
    }

    public final void sendSALogging(Starter starter, int i, int i2, String str, boolean z) {
        String str2;
        if ("noti".equalsIgnoreCase(str)) {
            str2 = "From Noti_D&D";
        } else if (!"hun".equalsIgnoreCase(str) && !"edgelighting".equalsIgnoreCase(str)) {
            if ("ctw".equalsIgnoreCase(str)) {
                str2 = "From App content DragNSplit";
            } else if ("taskbar".equalsIgnoreCase(str)) {
                str2 = "From Taskbar_D&D";
            } else if ("appsEdge".equalsIgnoreCase(str)) {
                str2 = "From Apps edge_D&D";
            } else if ("taskEdge".equalsIgnoreCase(str)) {
                str2 = "From Task edge_D&D";
            } else if ("com.sec.android.app.launcher".equals(this.mCallingPackageName) && z) {
                str2 = "From Recent_taskLP";
            } else {
                str2 = null;
            }
        } else {
            str2 = "From NotiPopUp_D&D";
        }
        if (str2 != null) {
            if ((starter instanceof SplitScreenController) && (i != -1 || i2 != 0)) {
                CoreSaLogger.logForAdvanced("1000", str2);
                if (this.mSplitScreen.isMultiSplitScreenVisible() || i2 != 0) {
                    CoreSaLogger.logForAdvanced("1021", str2);
                }
            }
            if (starter instanceof FreeformStarter) {
                CoreSaLogger.logForAdvanced("2004", str2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0135, code lost:
    
        startSplitScreenWithAllApps(-1, android.app.PendingIntent.getActivityAsUser(r19.mContext, 0, r21, com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract.SYSUI_STATE_GAME_TOOLS_SHOWING, null, new android.os.UserHandle(r11)), r21.getComponent(), r22, new android.os.UserHandle(r11), r16);
     */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x029f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startClipDescription(android.content.ClipDescription r20, android.content.Intent r21, int r22, com.android.wm.shell.draganddrop.DragAndDropPolicy.Starter r23, android.view.DragAndDropPermissions r24, com.android.wm.shell.draganddrop.DragAndDropPolicy.LaunchOptions r25, int r26) {
        /*
            Method dump skipped, instructions count: 732
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.DragAndDropPolicy.startClipDescription(android.content.ClipDescription, android.content.Intent, int, com.android.wm.shell.draganddrop.DragAndDropPolicy$Starter, android.view.DragAndDropPermissions, com.android.wm.shell.draganddrop.DragAndDropPolicy$LaunchOptions, int):void");
    }

    public final void startSplitScreenWithAllApps(int i, PendingIntent pendingIntent, ComponentName componentName, int i2, UserHandle userHandle, int i3) {
        int i4;
        if (i2 == -1) {
            return;
        }
        int i5 = 0;
        if (userHandle != null) {
            i4 = userHandle.getIdentifier();
        } else {
            i4 = 0;
        }
        Intent edgeAllAppsActivityIntent = MultiWindowUtils.getEdgeAllAppsActivityIntent(componentName, i4, i);
        if (i2 == 0) {
            i5 = 1;
        }
        SplitScreenController splitScreenController = this.mSplitScreen;
        if (pendingIntent != null) {
            splitScreenController.startPendingIntentAndIntent(pendingIntent, edgeAllAppsActivityIntent, i5, i3);
        } else {
            splitScreenController.startTaskAndIntent(i, edgeAllAppsActivityIntent, i5, i3);
        }
    }

    public final boolean supportMultiSplitDropTarget() {
        boolean z;
        boolean z2;
        if (isInSubDisplay() || MultiWindowUtils.isFlexPanelEnabled(this.mContext)) {
            return false;
        }
        SplitScreenController splitScreenController = this.mSplitScreen;
        if (splitScreenController != null && splitScreenController.isSplitScreenVisible()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            if (CoreRune.MW_MULTI_SPLIT_ENSURE_APP_SIZE && this.mMultiWindowManager.supportMultiSplitAppMinimumSize()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (!z2) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DragAndDropPolicy(Context context, ActivityTaskManager activityTaskManager, SplitScreenController splitScreenController, Starter starter, MultiWindowManager multiWindowManager) {
        this.mTargets = new ArrayList();
        this.mDisallowHitRegion = new RectF();
        this.mCallingPackageName = null;
        SparseArray sparseArray = new SparseArray();
        this.mDropTargetProviders = sparseArray;
        this.mContext = context;
        this.mActivityTaskManager = activityTaskManager;
        this.mSplitScreen = splitScreenController;
        this.mStarter = splitScreenController == null ? starter : splitScreenController;
        this.mFreeformStarter = new FreeformStarter(context);
        this.mMultiWindowManager = multiWindowManager;
        sparseArray.put(1, new AospSplitDropTargetProvider(this, context));
        sparseArray.put(2, new MultiSplitDropTargetProvider(this, context));
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface Starter {
        void startIntent(int i, int i2, PendingIntent pendingIntent, Intent intent, Bundle bundle);

        default void startIntent(PendingIntent pendingIntent, int i, Intent intent, int i2, Bundle bundle, int i3, int i4) {
            startIntent(i, i2, pendingIntent, intent, bundle);
        }

        void startShortcut(String str, String str2, int i, Bundle bundle, UserHandle userHandle);

        default void startShortcut(String str, String str2, int i, Bundle bundle, UserHandle userHandle, int i2, int i3) {
            startShortcut(str, str2, i, bundle, userHandle);
        }

        void startTask(int i, int i2, Bundle bundle);

        default void startTask(int i, int i2, Bundle bundle, int i3, int i4, boolean z) {
            startTask(i, i2, bundle);
        }

        default void startDragAndSplit(Intent intent, int i, Bundle bundle, int i2, int i3, int i4) {
        }
    }
}
