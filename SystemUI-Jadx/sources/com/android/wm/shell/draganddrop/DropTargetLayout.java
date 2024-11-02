package com.android.wm.shell.draganddrop;

import android.app.ActivityManager;
import android.app.StatusBarManager;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.os.Debug;
import android.provider.Settings;
import android.util.secutil.Slog;
import android.view.LayoutInflater;
import android.view.SurfaceControl;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.internal.logging.InstanceId;
import com.android.systemui.R;
import com.android.wm.shell.common.DismissButtonView;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.draganddrop.DragAndDropPolicy;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.rune.CoreRune;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DropTargetLayout extends FrameLayout implements IDragLayout {
    public final DragAppIcon mAppIcon;
    public int mCurrentDensityDpi;
    public DragAndDropPolicy.Target mCurrentTarget;
    public boolean mDensityChanged;
    public DismissButtonView mDismissButtonView;
    public SurfaceControl mDragSurface;
    public final DropTargetView mDropTargetView;
    public boolean mFirstDropTargetShown;
    public boolean mHasDragSourceTask;
    public boolean mHasDrawable;
    public boolean mHasDropped;
    public boolean mIsShowing;
    public final DragAndDropPolicy mPolicy;
    public final StatusBarManager mStatusBarManager;
    public final DragAndDropOptions mTmpOptions;
    public final SurfaceControl.Transaction mTransaction;

    public DropTargetLayout(Context context, SplitScreenController splitScreenController, SurfaceControl.Transaction transaction) {
        super(context);
        this.mTmpOptions = new DragAndDropOptions();
        this.mCurrentTarget = null;
        this.mDensityChanged = false;
        this.mHasDragSourceTask = false;
        this.mPolicy = new DragAndDropPolicy(context, splitScreenController);
        FrameLayout.inflate(context, R.layout.drop_target_layout, this);
        this.mDropTargetView = (DropTargetView) findViewById(R.id.drop_target);
        createDismissButtonView();
        this.mTransaction = transaction;
        this.mAppIcon = (DragAppIcon) findViewById(R.id.drag_app_icon);
        this.mStatusBarManager = (StatusBarManager) context.getSystemService("statusbar");
        this.mCurrentDensityDpi = getResources().getConfiguration().densityDpi;
    }

    public final void createDismissButtonView() {
        DismissButtonView dismissButtonView = (DismissButtonView) LayoutInflater.from(getContext()).inflate(R.layout.dismiss_button_view, (ViewGroup) this, false);
        this.mDismissButtonView = dismissButtonView;
        dismissButtonView.setDismissType(1);
        DismissButtonView dismissButtonView2 = this.mDismissButtonView;
        dismissButtonView2.mFocusChangeHapticDisabled = true;
        addView(dismissButtonView2);
    }

    public final void hide(Runnable runnable, boolean z) {
        SurfaceControl surfaceControl;
        this.mIsShowing = false;
        DismissButtonView dismissButtonView = this.mDismissButtonView;
        if (dismissButtonView.mVisible) {
            dismissButtonView.mVisible = false;
            dismissButtonView.clearAnimation();
            dismissButtonView.setVisibility(4);
        }
        updateNavigationBarVisibility(true);
        if (this.mCurrentTarget != null) {
            this.mDropTargetView.setVisibility(8);
        }
        DragAppIcon dragAppIcon = this.mAppIcon;
        dragAppIcon.setVisibility(8);
        dragAppIcon.setImageDrawable(null);
        if (z && (surfaceControl = this.mDragSurface) != null) {
            this.mTransaction.reparent(surfaceControl, null);
            this.mTransaction.apply();
            this.mDragSurface = null;
        }
        if (runnable != null) {
            runnable.run();
        }
        this.mCurrentTarget = null;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        recomputeDropTargets();
        return super.onApplyWindowInsets(windowInsets);
    }

    public final void onConfigChanged(Configuration configuration) {
        boolean z;
        onConfigurationChanged(configuration);
        if (this.mCurrentDensityDpi != configuration.densityDpi) {
            z = true;
        } else {
            z = false;
        }
        this.mDensityChanged = z;
    }

    public final void prepare(DisplayLayout displayLayout, ClipData clipData, InstanceId instanceId, SurfaceControl surfaceControl, ExecutableAppHolder executableAppHolder, VisibleTasks visibleTasks) {
        int i;
        List nonFloatingTopTask;
        boolean z;
        boolean z2;
        RectF rectF;
        Intent intent;
        DragAndDropPolicy dragAndDropPolicy = this.mPolicy;
        dragAndDropPolicy.mLoggerSessionId = instanceId;
        DragAndDropPolicy.DragSession dragSession = new DragAndDropPolicy.DragSession(dragAndDropPolicy.mActivityTaskManager, displayLayout, clipData, dragAndDropPolicy.mMultiWindowManager, executableAppHolder, visibleTasks);
        dragAndDropPolicy.mSession = dragSession;
        ClipData clipData2 = dragSession.mInitialDragData;
        boolean isDragFromRecent = clipData2.getDescription().isDragFromRecent();
        dragSession.isDragFromRecent = isDragFromRecent;
        boolean z3 = false;
        if (isDragFromRecent && (intent = clipData2.getItemAt(0).getIntent()) != null) {
            i = intent.getIntExtra("android.intent.extra.DND_RECENT_TOP_TASK_ID", -1);
        } else {
            i = -1;
        }
        int dragSourceTaskId = clipData2.getDescription().getDragSourceTaskId();
        if (dragSession.isDragFromRecent && i != -1) {
            Iterator it = dragSession.mActivityTaskManager.getTasks(Integer.MAX_VALUE, false).iterator();
            while (true) {
                if (it.hasNext()) {
                    ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) it.next();
                    if (runningTaskInfo.taskId == i) {
                        nonFloatingTopTask = List.of(runningTaskInfo);
                        break;
                    }
                } else {
                    nonFloatingTopTask = Collections.EMPTY_LIST;
                    break;
                }
            }
        } else {
            nonFloatingTopTask = dragSession.getNonFloatingTopTask(dragSourceTaskId);
        }
        if (!nonFloatingTopTask.isEmpty()) {
            ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) nonFloatingTopTask.get(0);
            runningTaskInfo2.getWindowingMode();
            dragSession.runningTaskActType = runningTaskInfo2.topActivityType;
            dragSession.runningTaskSupportsSplitScreen = runningTaskInfo2.supportsMultiWindow;
        }
        ActivityInfo activityInfo = clipData2.getItemAt(0).getActivityInfo();
        if (!MultiWindowCoreState.MW_ENABLED) {
            dragSession.dragItemSupportsSplitscreen = false;
        } else {
            ExecutableAppHolder executableAppHolder2 = dragSession.mExecutableAppHolder;
            if (executableAppHolder2 != null) {
                AppResult appResult = executableAppHolder2.mResult;
                if (appResult != null && appResult.hasResizableResolveInfo()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                dragSession.dragItemSupportsSplitscreen = z2;
            } else {
                if (activityInfo != null && !ActivityInfo.isResizeableMode(activityInfo.resizeMode)) {
                    z = false;
                } else {
                    z = true;
                }
                dragSession.dragItemSupportsSplitscreen = z;
            }
        }
        dragSession.dragData = clipData2.getItemAt(0).getIntent();
        Intent intent2 = dragAndDropPolicy.mSession.dragData;
        if (intent2 == null) {
            rectF = null;
        } else {
            rectF = (RectF) intent2.getExtra("DISALLOW_HIT_REGION");
        }
        RectF rectF2 = dragAndDropPolicy.mDisallowHitRegion;
        if (rectF == null) {
            rectF2.setEmpty();
        } else {
            rectF2.set(rectF);
        }
        this.mHasDropped = false;
        this.mCurrentTarget = null;
        this.mHasDrawable = false;
        this.mFirstDropTargetShown = false;
        this.mDragSurface = surfaceControl;
        if (clipData.getDescription().getDragSourceTaskId() != -1) {
            z3 = true;
        }
        this.mHasDragSourceTask = z3;
        if (CoreRune.MW_DND_SA_LOGGING) {
            this.mPolicy.mCallingPackageName = clipData.getCallingPackageName();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:144:0x00d5, code lost:
    
        if (r6 != false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c0, code lost:
    
        if (r6 == false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d7, code lost:
    
        r6 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean recomputeDropTargets() {
        /*
            Method dump skipped, instructions count: 526
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.DropTargetLayout.recomputeDropTargets():boolean");
    }

    public final void show() {
        this.mIsShowing = true;
        if (recomputeDropTargets()) {
            updateNavigationBarVisibility(false);
        }
        if (this.mDensityChanged) {
            this.mDensityChanged = false;
            this.mCurrentDensityDpi = getResources().getConfiguration().densityDpi;
            removeView(this.mDismissButtonView);
            this.mDismissButtonView = null;
            createDismissButtonView();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:175:0x0088, code lost:
    
        if (r12.y < r7) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:156:0x010e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0116 A[EDGE_INSN: B:19:0x0116->B:20:0x0116 BREAK  A[LOOP:0: B:6:0x003f->B:157:0x010e], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void update(android.view.DragEvent r20) {
        /*
            Method dump skipped, instructions count: 1156
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.draganddrop.DropTargetLayout.update(android.view.DragEvent):void");
    }

    public final void updateNavigationBarVisibility(boolean z) {
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("updateNavigationBarVisibility : ", z, ", caller=");
        m.append(Debug.getCallers(5));
        Slog.d("DropTargetLayout", m.toString());
        boolean z2 = false;
        if (z) {
            this.mStatusBarManager.disable(0);
            return;
        }
        if (CoreRune.MW_DND_MULTI_SPLIT_DROP_TARGET && !this.mPolicy.isInSubDisplay()) {
            if (Settings.System.getInt(getContext().getContentResolver(), "task_bar", 1) == 1) {
                z2 = true;
            }
            if (z2) {
                Slog.d("DropTargetLayout", "Failed to disalbe navibar, Taskbar is shown");
                return;
            }
        }
        this.mStatusBarManager.disable(23068672);
    }
}
