package com.android.wm.shell.draganddrop;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.util.Log;
import android.util.Slog;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Toast;
import com.android.systemui.R;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.MultiWindowOverheatUI;
import com.android.wm.shell.draganddrop.DragAndDropController;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.widget.SemTipPopup;
import com.samsung.systemui.splugins.volume.VolumePanelValues;
import com.sec.ims.volte2.data.VolteConstants;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class LaunchableDataDropTargetController implements IDropTargetUiController {
    public final Context mContext;
    public final DragAndDropController mController;
    public final DisplayController mDisplayController;
    public int mEdgeFlags;
    public final InputMethodManager mInputMethodManager;
    public boolean mShowDropTarget;
    public boolean mDragStartedWithinThreshold = false;
    public boolean mIgnoreActionDragLocation = false;

    public LaunchableDataDropTargetController(Context context, DragAndDropController dragAndDropController, DisplayController displayController) {
        this.mContext = context;
        this.mController = dragAndDropController;
        this.mDisplayController = displayController;
        this.mInputMethodManager = (InputMethodManager) context.getSystemService(InputMethodManager.class);
    }

    public static boolean containsFlag(int i, int i2) {
        if ((i & i2) != 0) {
            return true;
        }
        return false;
    }

    public static boolean isInThreshold(DragEvent dragEvent, DragAndDropController.PerDisplay perDisplay) {
        Rect bounds = perDisplay.wm.getCurrentWindowMetrics().getBounds();
        if (dragEvent.getX() >= ((int) ((Math.min(bounds.width(), bounds.height()) * 0.056f) + 0.5f)) && dragEvent.getX() <= bounds.right - r0) {
            return false;
        }
        return true;
    }

    @Override // com.android.wm.shell.draganddrop.IDropTargetUiController
    public final boolean onDrag(DragEvent dragEvent, int i, final DragAndDropController.PerDisplay perDisplay) {
        boolean z;
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        boolean z4;
        int action = dragEvent.getAction();
        Context context = this.mContext;
        DragAndDropController dragAndDropController = this.mController;
        boolean z5 = false;
        if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action != 4) {
                        if (action == 6) {
                            ((DropTargetLayout) perDisplay.dragLayout).hide((Runnable) null, this.mShowDropTarget);
                        }
                    } else {
                        this.mIgnoreActionDragLocation = true;
                        IDragLayout iDragLayout = perDisplay.dragLayout;
                        if (!((DropTargetLayout) iDragLayout).mHasDropped) {
                            perDisplay.activeDragCount--;
                            if (this.mShowDropTarget) {
                                iDragLayout.hide(dragEvent, new Runnable() { // from class: com.android.wm.shell.draganddrop.LaunchableDataDropTargetController$$ExternalSyntheticLambda0
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        LaunchableDataDropTargetController launchableDataDropTargetController = LaunchableDataDropTargetController.this;
                                        DragAndDropController.PerDisplay perDisplay2 = perDisplay;
                                        launchableDataDropTargetController.getClass();
                                        if (perDisplay2.activeDragCount == 0) {
                                            launchableDataDropTargetController.mController.getClass();
                                            DragAndDropController.setDropTargetWindowVisibility(perDisplay2, 4);
                                        }
                                    }
                                });
                            }
                        }
                        this.mShowDropTarget = false;
                        perDisplay.smartTipController.dismissHelpTipIfPossible();
                    }
                } else {
                    this.mIgnoreActionDragLocation = true;
                    return dragAndDropController.handleDrop(dragEvent, perDisplay);
                }
            } else {
                if (this.mIgnoreActionDragLocation) {
                    Slog.d("DragAndDropController_Launchable", "Ignore ACTION_DRAG_LOCATION");
                    return false;
                }
                if (this.mDragStartedWithinThreshold) {
                    if (!isInThreshold(dragEvent, perDisplay)) {
                        this.mDragStartedWithinThreshold = false;
                    }
                    return true;
                }
                if (this.mShowDropTarget) {
                    ((DropTargetLayout) perDisplay.dragLayout).update(dragEvent);
                    perDisplay.smartTipController.dismissHelpTipIfPossible();
                    DropTargetLayout dropTargetLayout = (DropTargetLayout) perDisplay.dragLayout;
                    if (dropTargetLayout.mDismissButtonView.mIsEnterDismissButton) {
                        this.mShowDropTarget = false;
                        dropTargetLayout.hide((Runnable) null, false);
                        dragAndDropController.getClass();
                        DragAndDropController.setDropTargetWindowVisibility(perDisplay, 4);
                        DropTargetLayout dropTargetLayout2 = (DropTargetLayout) perDisplay.dragLayout;
                        if (dropTargetLayout2.mHasDrawable) {
                            dropTargetLayout2.mHasDrawable = false;
                            MultiWindowManager.getInstance().notifyDragSplitAppIconHasDrawable(false);
                        }
                        return false;
                    }
                } else {
                    Rect bounds = perDisplay.wm.getCurrentWindowMetrics().getBounds();
                    int x = (int) dragEvent.getX();
                    int min = (int) ((Math.min(bounds.width(), bounds.height()) * 0.056f) + 0.5f);
                    int i5 = bounds.right - min;
                    if ((containsFlag(this.mEdgeFlags, 1) && x < min) || (containsFlag(this.mEdgeFlags, 2) && x > i5)) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        if (MultiWindowOverheatUI.showIfNeeded(context)) {
                            this.mIgnoreActionDragLocation = true;
                            return false;
                        }
                        AppResult appResult = perDisplay.executableAppHolder.mResult;
                        if (appResult != null && appResult.hasResizableResolveInfo()) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (!z4) {
                            Toast.makeText(context, context.getString(R.string.drag_and_split_not_available_toast), 0).show();
                            this.mIgnoreActionDragLocation = true;
                            return false;
                        }
                        IDropTargetUiController.performDragStartedHapticAndSound(perDisplay);
                        dragAndDropController.getClass();
                        DragAndDropController.setDropTargetWindowVisibility(perDisplay, 0);
                        ((DropTargetLayout) perDisplay.dragLayout).show();
                        this.mShowDropTarget = true;
                        InputMethodManager inputMethodManager = this.mInputMethodManager;
                        if (inputMethodManager != null && inputMethodManager.isInputMethodShown()) {
                            ((HandlerExecutor) dragAndDropController.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.draganddrop.LaunchableDataDropTargetController$$ExternalSyntheticLambda1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    LaunchableDataDropTargetController.this.mInputMethodManager.semForceHideSoftInput();
                                    Log.i("DragAndDropController_Launchable", "Hide the Ime when Drag Layout is shown");
                                }
                            });
                        }
                        Intent intent = new Intent("com.samsung.android.action.ENTER_CONTENTS_TO_WINDOW");
                        intent.addFlags(VolumePanelValues.FLAG_SHOW_CSD_100_WARNINGS);
                        context.sendBroadcastAsUser(intent, UserHandle.ALL, "com.samsung.android.permission.MULTI_WINDOW_MONITOR", -1);
                    }
                    SmartTipController smartTipController = perDisplay.smartTipController;
                    int y = (int) dragEvent.getY();
                    if (smartTipController.mShown) {
                        int i6 = smartTipController.mInitialX;
                        int max = Math.max(0, (y - (smartTipController.mSurfaceHeight / 2)) - smartTipController.mGapWithContent);
                        SmartTip smartTip = smartTipController.mHelpTip;
                        SemTipPopup semTipPopup = smartTip.mTipPopup;
                        if (semTipPopup != null && semTipPopup.isShowing()) {
                            smartTip.mTipPopup.setTargetPosition(i6, max);
                            smartTip.mTipPopup.update();
                        }
                    }
                }
            }
        } else {
            int i7 = perDisplay.activeDragCount;
            if (i7 != 0) {
                Slog.w("DragAndDropController_Launchable", "Unexpected drag start during an active drag=" + perDisplay.activeDragCount);
                return false;
            }
            this.mIgnoreActionDragLocation = false;
            perDisplay.activeDragCount = i7 + 1;
            IDragLayout iDragLayout2 = perDisplay.dragLayout;
            DisplayController displayController = this.mDisplayController;
            ((DropTargetLayout) iDragLayout2).prepare(displayController.getDisplayLayout(i), dragEvent.getClipData(), null, dragEvent.getDragSurface(), perDisplay.executableAppHolder, perDisplay.visibleTasks);
            this.mDragStartedWithinThreshold = isInThreshold(dragEvent, perDisplay);
            this.mEdgeFlags = 3;
            DisplayLayout displayLayout = displayController.getDisplayLayout(perDisplay.displayId);
            if (displayLayout != null) {
                int navigationBarPosition = DisplayLayout.navigationBarPosition(context.getResources(), displayLayout.mWidth, displayLayout.mHeight, displayLayout.mRotation);
                if (navigationBarPosition != 1) {
                    if (navigationBarPosition == 2) {
                        this.mEdgeFlags &= -3;
                    }
                } else {
                    this.mEdgeFlags &= -2;
                }
            }
            ClipData clipData = dragEvent.getClipData();
            if (clipData == null) {
                Slog.d("DragAndDropController_Launchable", "setIgnoreEdgeFlags. clipData null.");
            } else {
                ClipDescription description = clipData.getDescription();
                if (description == null) {
                    Slog.d("DragAndDropController_Launchable", "setIgnoreEdgeFlags. description null.");
                } else {
                    PersistableBundle extras = description.getExtras();
                    if (extras == null) {
                        Slog.d("DragAndDropController_Launchable", "setIgnoreEdgeFlags. description null.");
                    } else {
                        if (extras.getBoolean("com.samsung.android.content.clipdescription.extra.IGNORE_LEFT_EDGE")) {
                            this.mEdgeFlags &= -2;
                        }
                        if (extras.getBoolean("com.samsung.android.content.clipdescription.extra.IGNORE_RIGHT_EDGE")) {
                            this.mEdgeFlags &= -3;
                        }
                    }
                }
            }
            dragAndDropController.notifyDragStarted();
            if (dragAndDropController.supportsMultiWindow()) {
                DisplayLayout displayLayout2 = displayController.getDisplayLayout(i);
                if (containsFlag(this.mEdgeFlags, 1) && containsFlag(this.mEdgeFlags, 2)) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i2 = (int) dragEvent.getX();
                } else if (containsFlag(this.mEdgeFlags, 1)) {
                    i2 = 0;
                } else if (containsFlag(this.mEdgeFlags, 2)) {
                    i2 = displayLayout2.mWidth;
                } else {
                    i2 = -1;
                }
                if (i2 != -1) {
                    SmartTipController smartTipController2 = perDisplay.smartTipController;
                    int y2 = (int) dragEvent.getY();
                    int height = dragEvent.getDragSurface().getHeight();
                    smartTipController2.mGapWithContent = smartTipController2.mContext.getResources().getDimensionPixelSize(R.dimen.drag_and_split_help_tip_gap_size);
                    Rect rect = smartTipController2.mDisplayBounds;
                    displayLayout2.getDisplayBounds(rect);
                    smartTipController2.mSurfaceHeight = height;
                    if (i2 > rect.width() / 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        i3 = rect.right;
                    } else {
                        i3 = rect.left;
                    }
                    smartTipController2.mInitialX = i3;
                    int max2 = Math.max(0, (y2 - (smartTipController2.mSurfaceHeight / 2)) - smartTipController2.mGapWithContent);
                    if (i2 > rect.width() / 2) {
                        i4 = 1;
                    } else {
                        i4 = 0;
                    }
                    SmartTip smartTip2 = smartTipController2.mHelpTip;
                    if (smartTip2.mPreferences.getInt(smartTip2.mKey, 0) < smartTip2.mLimitCount && !smartTip2.mShowRequested) {
                        smartTip2.mShowRequested = true;
                        if (smartTip2.mTipPopup == null) {
                            smartTip2.mRootView = LayoutInflater.from(smartTip2.mContext).inflate(smartTip2.mLayoutResId, (ViewGroup) null);
                            StringBuilder sb = new StringBuilder("SmartTip");
                            String str = smartTip2.mTitle;
                            sb.append(str);
                            Log.d(sb.toString(), "addView: mRootView=" + smartTip2.mRootView);
                            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, VolteConstants.ErrorCode.DIAL_ALTERNATIVE_NUMBER, 16777496, -3);
                            layoutParams.setTitle(str);
                            layoutParams.layoutInDisplayCutoutMode = 1;
                            smartTip2.mWindowManager.addView(smartTip2.mRootView, layoutParams);
                            SemTipPopup semTipPopup2 = new SemTipPopup(smartTip2.mRootView, 0);
                            smartTip2.mTipPopup = semTipPopup2;
                            if (semTipPopup2.semGetBubblePopupWindow() != null) {
                                smartTip2.mTipPopup.semGetBubblePopupWindow().setTouchModal(false);
                            }
                            if (smartTip2.mTipPopup.semGetBalloonPopupWindow() != null) {
                                smartTip2.mTipPopup.semGetBalloonPopupWindow().setTouchModal(false);
                            }
                        }
                        int i8 = i4 ^ 1;
                        if (smartTip2.mRootView.isAttachedToWindow()) {
                            smartTip2.showTipPopup(i3, max2, i8, true);
                        } else {
                            smartTip2.mRootView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.wm.shell.draganddrop.SmartTip.1
                                public final /* synthetic */ int val$direction;
                                public final /* synthetic */ boolean val$isExpanded;
                                public final /* synthetic */ int val$posX;
                                public final /* synthetic */ int val$posY;

                                public AnonymousClass1(int i32, int max22, boolean z6, int i82) {
                                    r2 = i32;
                                    r3 = max22;
                                    r4 = z6;
                                    r5 = i82;
                                }

                                @Override // android.view.View.OnAttachStateChangeListener
                                public final void onViewAttachedToWindow(View view) {
                                    SmartTip.this.showTipPopup(r2, r3, r5, r4);
                                }

                                @Override // android.view.View.OnAttachStateChangeListener
                                public final void onViewDetachedFromWindow(View view) {
                                }
                            });
                        }
                        SharedPreferences sharedPreferences = smartTip2.mPreferences;
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        String str2 = smartTip2.mKey;
                        edit.putInt(str2, sharedPreferences.getInt(str2, 0) + 1);
                        edit.apply();
                        z5 = true;
                    }
                    smartTipController2.mShown = z5;
                }
            }
        }
        return true;
    }
}
