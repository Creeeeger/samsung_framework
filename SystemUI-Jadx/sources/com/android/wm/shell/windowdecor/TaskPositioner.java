package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.util.Slog;
import android.view.SurfaceControl;
import android.window.WindowContainerTransaction;
import com.android.systemui.R;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.FreeformDragPositioningController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.freeform.DexSnappingGuide;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecoration;
import com.android.wm.shell.windowdecor.TaskMotionController;
import com.samsung.android.core.SizeCompatInfo;
import com.samsung.android.multiwindow.FreeformResizeGuide;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class TaskPositioner implements DragPositioningCallback {
    public int mCtrlType;
    public DexSnappingGuide mDexSnappingGuide;
    public final DisplayController mDisplayController;
    public final FreeformDragPositioningController.FreeformDragListener mDragPositioningListener;
    public final DragStartListener mDragStartListener;
    public boolean mFlingCanceled;
    public FreeformCaptionTouchState mFreeformCaptionTouchState;
    public FreeformResizeGuide mFreeformResizeGuide;
    public boolean mHasMoved;
    public boolean mImeAnimating;
    public boolean mImeShowing;
    public boolean mIsOnlyPositionChanged;
    public boolean mIsUserInteracting;
    public boolean mLastFreeformTaskSurfaceOverlappingWithNavBar;
    public int mLastSnapType;
    public int mMinVisibleHeight;
    public final MultitaskingWindowDecoration mMultiTaskingDecor;
    public final PointF mRepositionStartPoint;
    public final Rect mRepositionTaskBounds;
    public boolean mResizing;
    public final Rect mTaskBoundsAtDragStart;
    public final TaskMotionController mTaskMotionController;
    public final ShellTaskOrganizer mTaskOrganizer;
    public final Rect mTempBounds;
    public final Rect mTmpRect;
    public final Rect mTmpRect2;
    public int mToolType;
    public final WindowDecoration mWindowDecoration;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface DragStartListener {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public TaskPositioner(com.android.wm.shell.ShellTaskOrganizer r3, com.android.wm.shell.windowdecor.WindowDecoration r4, com.android.wm.shell.common.DisplayController r5) {
        /*
            r2 = this;
            com.android.wm.shell.windowdecor.TaskPositioner$$ExternalSyntheticLambda0 r0 = new com.android.wm.shell.windowdecor.TaskPositioner$$ExternalSyntheticLambda0
            r1 = 1
            r0.<init>(r1)
            r2.<init>(r3, r4, r5, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.TaskPositioner.<init>(com.android.wm.shell.ShellTaskOrganizer, com.android.wm.shell.windowdecor.WindowDecoration, com.android.wm.shell.common.DisplayController):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0212, code lost:
    
        r12 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean changeBounds(android.window.WindowContainerTransaction r21, float r22, float r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.TaskPositioner.changeBounds(android.window.WindowContainerTransaction, float, float, boolean):boolean");
    }

    public final int getCaptionVisibleHeight() {
        if (this.mMultiTaskingDecor != null) {
            return ((MultitaskingWindowDecoration) this.mWindowDecoration).getCaptionVisibleHeight();
        }
        return 0;
    }

    public final int getDexTaskDockingState() {
        return this.mWindowDecoration.mTaskInfo.configuration.windowConfiguration.getDexTaskDockingState();
    }

    public final int getFreeformThickness$1() {
        if (this.mMultiTaskingDecor != null) {
            return ((MultitaskingWindowDecoration) this.mWindowDecoration).getFreeformThickness$1();
        }
        return 0;
    }

    public final int getUpdatedCaptionHeight() {
        int i;
        if (this.mMultiTaskingDecor != null) {
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecoration;
            if (multitaskingWindowDecoration.mTaskInfo.getConfiguration().isNewDexMode()) {
                i = 17105722;
            } else {
                i = R.dimen.sec_decor_caption_height_desktop_freeform;
            }
            return WindowDecoration.loadDimensionPixelSize(i, multitaskingWindowDecoration.mDecorWindowContext.getResources());
        }
        return 0;
    }

    public final boolean isDexSnappingInNonFreeform() {
        WindowDecoration windowDecoration = this.mWindowDecoration;
        if (windowDecoration.mIsDexEnabled) {
            if (windowDecoration.mTaskInfo.getWindowingMode() == 1) {
                return true;
            }
            if (windowDecoration.mIsNewDexMode && windowDecoration.mTaskInfo.getConfiguration().windowConfiguration.isSplitScreen()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:242:0x036a, code lost:
    
        if (r12.right < (r2.left + r0)) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0378, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0451, code lost:
    
        if (r2.isTargetTaskImeShowing(r13.mTaskInfo.displayId) != false) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0376, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0374, code lost:
    
        if (r12.left < (r2.left - r0)) goto L190;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x04e2  */
    /* JADX WARN: Type inference failed for: r0v90, types: [com.android.wm.shell.windowdecor.TaskPositioner$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r0v93, types: [com.android.wm.shell.windowdecor.TaskPositioner$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v69 */
    @Override // com.android.wm.shell.windowdecor.DragPositioningCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDragPositioningEnd(float r25, float r26) {
        /*
            Method dump skipped, instructions count: 1644
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.TaskPositioner.onDragPositioningEnd(float, float):void");
    }

    @Override // com.android.wm.shell.windowdecor.DragPositioningCallback
    public final void onDragPositioningMove(float f, float f2) {
        FreeformDragPositioningController.FreeformDragListener freeformDragListener;
        boolean z = this.mImeAnimating;
        TaskMotionController taskMotionController = this.mTaskMotionController;
        if (z && taskMotionController.mAllowTouches) {
            taskMotionController.mAllowTouches = false;
        }
        if (CoreRune.MW_FREEFORM_MOTION_ANIMATION && (!taskMotionController.mAllowTouches || !this.mIsUserInteracting)) {
            return;
        }
        boolean z2 = this.mImeShowing;
        MultitaskingWindowDecoration multitaskingWindowDecoration = this.mMultiTaskingDecor;
        if (z2) {
            MultitaskingWindowDecoration.AdjustState adjustState = multitaskingWindowDecoration.mAdjustState;
            if (adjustState.mIsAdjusted) {
                adjustState.reset();
            }
        }
        FreeformResizeGuide freeformResizeGuide = this.mFreeformResizeGuide;
        Rect rect = this.mRepositionTaskBounds;
        WindowDecoration windowDecoration = this.mWindowDecoration;
        if (freeformResizeGuide != null && this.mResizing) {
            PointF pointF = this.mRepositionStartPoint;
            int round = Math.round(f - pointF.x);
            int round2 = Math.round(f2 - pointF.y);
            rect.set(this.mTaskBoundsAtDragStart);
            int i = rect.left;
            int i2 = rect.top;
            int i3 = rect.right;
            int i4 = rect.bottom;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            int i7 = this.mCtrlType;
            if ((i7 & 1) != 0) {
                i5 = Math.max(taskMotionController.mMinVisibleWidth, i5 - round);
            } else if ((i7 & 2) != 0) {
                i5 = Math.max(taskMotionController.mMinVisibleWidth, i5 + round);
            }
            int i8 = this.mCtrlType;
            if ((i8 & 4) != 0) {
                i6 = Math.max(this.mMinVisibleHeight, i6 - round2);
            } else if ((i8 & 8) != 0) {
                i6 = Math.max(this.mMinVisibleHeight, i6 + round2);
            }
            int i9 = this.mCtrlType;
            if ((i9 & 1) != 0) {
                i = i3 - i5;
            } else {
                i3 = i + i5;
            }
            if ((i9 & 4) != 0) {
                i2 = i4 - i6;
            } else {
                i4 = i2 + i6;
            }
            rect.set(i, i2, i3, i4);
            if (!windowDecoration.mIsDexMode) {
                this.mFreeformResizeGuide.setNotAdjustedBounds(rect);
            }
            this.mFreeformResizeGuide.adjustMinMaxSize(rect);
            if (!windowDecoration.mIsDexMode) {
                this.mFreeformResizeGuide.handleResizeGesture(rect, (int) f, (int) f2);
            }
            if (CoreRune.MT_SUPPORT_SIZE_COMPAT_DRAG && this.mFreeformResizeGuide.asSizeCompatResizeGuide() != null && SizeCompatInfo.isDragResizable(windowDecoration.mTaskInfo.sizeCompatInfo)) {
                this.mFreeformResizeGuide.asSizeCompatResizeGuide().adjustBounds(windowDecoration.mTaskInfo.sizeCompatInfo, this.mCtrlType, this.mRepositionTaskBounds, this.mTaskBoundsAtDragStart, false, (Consumer) null);
            }
            Rect rect2 = this.mTmpRect2;
            rect2.set(rect);
            if (CoreRune.MW_CAPTION_SHELL && multitaskingWindowDecoration != null && !this.mFreeformResizeGuide.needToFullscreenTransition()) {
                rect2.top -= multitaskingWindowDecoration.getCaptionVisibleHeight();
            }
            this.mFreeformResizeGuide.show(rect2);
            this.mHasMoved = true;
        } else if (isDexSnappingInNonFreeform()) {
            DexSnappingGuide dexSnappingGuide = this.mDexSnappingGuide;
            if (dexSnappingGuide != null) {
                this.mLastSnapType = dexSnappingGuide.show(f, f2, windowDecoration.mTaskInfo, this.mToolType, getFreeformThickness$1());
                this.mHasMoved = true;
            } else {
                this.mHasMoved = false;
            }
        } else {
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            if (changeBounds(windowContainerTransaction, f, f2, false)) {
                if (!this.mHasMoved && this.mCtrlType != 0) {
                    windowContainerTransaction.setDragResizing(windowDecoration.mTaskInfo.token, true);
                }
                if (multitaskingWindowDecoration != null) {
                    multitaskingWindowDecoration.setupCaptionColor();
                }
                if (CoreRune.MW_FREEFORM_MOTION_ANIMATION) {
                    SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                    int i10 = rect.left;
                    if (multitaskingWindowDecoration != null) {
                        i10 = (int) (multitaskingWindowDecoration.mFreeformStashState.getStashScaleOffsetX(rect.width()) + i10);
                    }
                    transaction.setPosition(windowDecoration.mTaskSurface, i10, rect.top).apply();
                    if (this.mDexSnappingGuide != null && supportDexSnapping()) {
                        this.mLastSnapType = this.mDexSnappingGuide.show(f, f2, windowDecoration.mTaskInfo, this.mToolType, getFreeformThickness$1());
                    }
                } else {
                    this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
                }
                this.mHasMoved = true;
            }
        }
        if (CoreRune.MW_FREEFORM_DISMISS_VIEW && !windowDecoration.mIsDexMode && !this.mResizing && (freeformDragListener = this.mDragPositioningListener) != null && !isDexSnappingInNonFreeform()) {
            PointF pointF2 = freeformDragListener.mTmpPoint;
            pointF2.set(f, f2);
            freeformDragListener.mDismissButtonManager.updateDismissTargetView(pointF2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0229, code lost:
    
        if (r3 == false) goto L135;
     */
    @Override // com.android.wm.shell.windowdecor.DragPositioningCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onDragPositioningStart(float r13, float r14, int r15) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.TaskPositioner.onDragPositioningStart(float, float, int):void");
    }

    public final void removeTaskToMotionInfo(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z) {
        TaskMotionController taskMotionController = this.mTaskMotionController;
        synchronized (taskMotionController) {
            TaskMotionController.TaskMotionInfo taskMotionInfo = taskMotionController.mTaskMotionInfo;
            if (taskMotionInfo != null) {
                taskMotionInfo.clearAnimator(z);
                taskMotionController.mTaskMotionInfo = null;
                if (TaskMotionController.DEBUG) {
                    Slog.d("TaskMotionController", "removeTaskToMotionInfo: taskInfo=" + runningTaskInfo);
                }
            }
        }
    }

    public final void resetStashedFreeform(boolean z) {
        MultitaskingWindowDecoration multitaskingWindowDecoration = this.mMultiTaskingDecor;
        if (multitaskingWindowDecoration == null) {
            return;
        }
        Rect rect = this.mRepositionTaskBounds;
        TaskMotionController taskMotionController = this.mTaskMotionController;
        if (z) {
            Rect rect2 = new Rect();
            if (taskMotionController.mCanceled) {
                rect2.set(rect);
            } else {
                rect2.set(multitaskingWindowDecoration.mTaskInfo.configuration.windowConfiguration.getBounds());
            }
            taskMotionController.scheduleAnimateRestore(rect2, multitaskingWindowDecoration.mFreeformStashState.mLastFreeformBoundsBeforeStash, false);
        } else {
            Rect rect3 = multitaskingWindowDecoration.mFreeformStashState.mLastFreeformBoundsBeforeStash;
            DisplayLayout displayLayout = taskMotionController.mDisplayController.getDisplayLayout(taskMotionController.mWindowDecoration.mTaskInfo.displayId);
            if (displayLayout != null) {
                Rect rect4 = new Rect();
                Rect rect5 = new Rect();
                rect4.set(0, 0, displayLayout.mWidth, displayLayout.mHeight);
                displayLayout.getStableBounds(rect5, false);
                int width = rect5.width() - (taskMotionController.mScreenEdgeInset * 2);
                if (width < rect3.width()) {
                    rect3.right = rect3.left + width;
                }
                if (taskMotionController.computeStashState(rect5, rect3, false) != 0) {
                    rect3.offsetTo((rect4.width() - rect3.width()) / 2, (rect4.height() - rect3.height()) / 2);
                }
            }
            multitaskingWindowDecoration.mFreeformStashState.setStashed(0);
            taskMotionController.setStashDim(null, false);
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            windowContainerTransaction.setBounds(multitaskingWindowDecoration.mTaskInfo.token, multitaskingWindowDecoration.mFreeformStashState.mLastFreeformBoundsBeforeStash);
            this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
        }
        rect.set(multitaskingWindowDecoration.mFreeformStashState.mLastFreeformBoundsBeforeStash);
    }

    public final boolean supportDexSnapping() {
        boolean z;
        if (this.mWindowDecoration.mIsDexEnabled) {
            return true;
        }
        if (MultiWindowUtils.isTablet()) {
            if (this.mToolType == 3) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public TaskPositioner(com.android.wm.shell.ShellTaskOrganizer r8, com.android.wm.shell.windowdecor.WindowDecoration r9, com.android.wm.shell.common.DisplayController r10, com.android.wm.shell.common.ShellExecutor r11, android.os.Handler r12) {
        /*
            r7 = this;
            com.android.wm.shell.windowdecor.TaskPositioner$$ExternalSyntheticLambda0 r4 = new com.android.wm.shell.windowdecor.TaskPositioner$$ExternalSyntheticLambda0
            r0 = 0
            r4.<init>(r0)
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r10
            r5 = r11
            r6 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.TaskPositioner.<init>(com.android.wm.shell.ShellTaskOrganizer, com.android.wm.shell.windowdecor.WindowDecoration, com.android.wm.shell.common.DisplayController, com.android.wm.shell.common.ShellExecutor, android.os.Handler):void");
    }

    public TaskPositioner(ShellTaskOrganizer shellTaskOrganizer, WindowDecoration windowDecoration, DisplayController displayController, DragStartListener dragStartListener) {
        this(shellTaskOrganizer, windowDecoration, displayController, dragStartListener, null, null);
    }

    public TaskPositioner(ShellTaskOrganizer shellTaskOrganizer, WindowDecoration windowDecoration, DisplayController displayController, DragStartListener dragStartListener, ShellExecutor shellExecutor, Handler handler) {
        this.mTempBounds = new Rect();
        this.mTaskBoundsAtDragStart = new Rect();
        this.mRepositionStartPoint = new PointF();
        this.mRepositionTaskBounds = new Rect();
        this.mHasMoved = false;
        this.mTmpRect = new Rect();
        this.mIsUserInteracting = false;
        this.mTmpRect2 = new Rect();
        this.mIsOnlyPositionChanged = false;
        this.mLastSnapType = 0;
        this.mToolType = 1;
        this.mFlingCanceled = false;
        this.mImeAnimating = false;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mWindowDecoration = windowDecoration;
        this.mDisplayController = displayController;
        this.mDragStartListener = dragStartListener;
        if (CoreRune.MW_CAPTION_SHELL && windowDecoration != null) {
            this.mMultiTaskingDecor = windowDecoration.asMultitaskingWindowDecoration();
        }
        if (CoreRune.MW_FREEFORM_MOTION_ANIMATION) {
            this.mTaskMotionController = new TaskMotionController(displayController, shellTaskOrganizer, shellExecutor, handler, this.mMultiTaskingDecor);
        }
        if (!CoreRune.MW_FREEFORM_DISMISS_VIEW || windowDecoration.mIsDexMode) {
            return;
        }
        this.mDragPositioningListener = FreeformDragPositioningController.getInstance(windowDecoration.mContext).mFreeformDragListener;
    }
}
