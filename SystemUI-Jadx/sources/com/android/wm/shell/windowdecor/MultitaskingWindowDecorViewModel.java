package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.PointF;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.provider.Settings;
import android.util.ArraySet;
import android.util.RotationUtils;
import android.util.Slog;
import android.util.SparseArray;
import android.view.Choreographer;
import android.view.DisplayCutout;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import android.window.DisplayAreaInfo;
import android.window.TaskAppearedInfo;
import android.window.TransitionInfo;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.animation.PhysicsAnimator;
import com.android.wm.shell.common.DismissButtonManager;
import com.android.wm.shell.common.DismissButtonManager$$ExternalSyntheticLambda0;
import com.android.wm.shell.common.DisplayChangeController;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.FreeformDragPositioningController;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.desktopmode.DesktopModeController;
import com.android.wm.shell.freeform.AdjustImeStateController;
import com.android.wm.shell.freeform.FreeformTaskTransitionHandler;
import com.android.wm.shell.naturalswitching.NaturalSwitchingDropTargetController;
import com.android.wm.shell.pip.Pip;
import com.android.wm.shell.shortcut.DexCompatRestartDialogUtils;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.sysui.KeyguardChangeListener;
import com.android.wm.shell.sysui.ShellController;
import com.android.wm.shell.transition.Transitions;
import com.android.wm.shell.windowdecor.DragDetector;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecoration;
import com.android.wm.shell.windowdecor.TaskMotionController;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;
import com.samsung.android.multiwindow.IDexTransientCaptionDelayListener;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultitaskingWindowDecorViewModel implements WindowDecorViewModel, DisplayController.OnDisplaysChangedListener, AdjustImeStateController {
    public int mAddedDisplayId;
    public final ShellExecutor mAnimExecutor;
    public final Rect mAnimatedBounds;
    public final Context mContext;
    public final DexCompatRestartDialogUtils mDexCompatRestartDialogUtils;
    public final DisplayController mDisplayController;
    public final DisplayInsetsController mDisplayInsetsController;
    public final Rect mImeAdjustedTargetBounds;
    public boolean mIsPinned;
    public boolean mIsTranslucent;
    public final AnonymousClass1 mKeyguardChangeListener;
    public MultitaskingWindowDecoration mLastImmersiveDecoration;
    public int mLastImmersiveTaskId;
    public final Choreographer mMainChoreographer;
    public final Handler mMainHandler;
    public final NaturalSwitchingDropTargetController mNSController;
    public int mPinTaskId;
    public final Optional mPipOptional;
    public final MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda0 mRotationController;
    public SettingsObserver mSettingsObserver;
    public final Optional mSplitScreenController;
    public final SyncTransactionQueue mSyncQueue;
    public TaskOperations mTaskOperations;
    public final ShellTaskOrganizer mTaskOrganizer;
    public final Rect mTmpRect;
    public final Transitions mTransitions;
    public final SparseArray mWindowDecorByTaskId = new SparseArray();
    public final Map mTransitionToTaskInfo = new HashMap();
    public final ArraySet mFixedRotatingDisplayIds = new ArraySet();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$1 */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 implements KeyguardChangeListener {
        public AnonymousClass1() {
        }

        @Override // com.android.wm.shell.sysui.KeyguardChangeListener
        public final void onKeyguardVisibilityChanged(final boolean z, boolean z2) {
            MultitaskingWindowDecorViewModel.this.forAllDecorations(new Consumer() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    boolean z3 = z;
                    MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) obj;
                    if (CoreRune.MW_CAPTION_SHELL_FULL_SCREEN) {
                        multitaskingWindowDecoration.mIsKeyguardShowing = z3;
                        WindowMenuPopupPresenter windowMenuPopupPresenter = multitaskingWindowDecoration.mPopupMenuPresenter;
                        if (windowMenuPopupPresenter != null && multitaskingWindowDecoration.mTaskInfo.isRunning) {
                            windowMenuPopupPresenter.setFreeformButtonEnabled(!z3);
                        }
                    }
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$2 */
    /* loaded from: classes2.dex */
    public final class AnonymousClass2 extends IDexTransientCaptionDelayListener.Stub {
        public AnonymousClass2() {
        }

        public final void onDelayChanged(final int i) {
            MultitaskingWindowDecorViewModel.this.mMainHandler.post(new Runnable() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    int i2 = i;
                    if (CaptionGlobalState.TRANSIENT_DELAY != i2) {
                        CaptionGlobalState.TRANSIENT_DELAY = i2;
                    }
                }
            });
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class CaptionTouchEventListener implements View.OnClickListener, View.OnTouchListener, DragDetector.MotionEventHandler, SeekBar.OnSeekBarChangeListener, GestureDetector.OnGestureListener, GestureDetector.OnDoubleTapListener, View.OnHoverListener {
        public final AccessibilityManager mAccessibilityManager;
        public final MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0 mDismissRunnable;
        public final DragDetector mDragDetector;
        public int mDragPointerId;
        public final DragPositioningCallback mDragPositioningCallback;
        public final FreeformCaptionTouchState mFreeformCaptionTouchState;
        public final GestureDetector mGestureDetector;
        public boolean mIsButtonLongPressed;
        public boolean mIsButtonTouched;
        public boolean mIsDoubleTapEnabled;
        public boolean mIsDragging;
        public boolean mIsLongPressed;
        public boolean mIsScrolled;
        public MotionEvent mLongPressMotionEvent;
        public View mTargetView;
        public final int mTaskId;
        public final TaskPositioner mTaskPositioner;
        public final WindowContainerToken mTaskToken;

        public /* synthetic */ CaptionTouchEventListener(MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel, ActivityManager.RunningTaskInfo runningTaskInfo, TaskPositioner taskPositioner) {
            this(runningTaskInfo, (DragPositioningCallback) taskPositioner);
        }

        public final void dismissPopup() {
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
            if (multitaskingWindowDecoration == null) {
                return;
            }
            boolean z = false;
            if (multitaskingWindowDecoration.mIsDexEnabled) {
                if (multitaskingWindowDecoration.mSliderPopup != null && multitaskingWindowDecoration.mIsSliderPopupShowing) {
                    z = true;
                }
                if (z) {
                    multitaskingWindowDecoration.closeSliderPopup();
                } else {
                    multitaskingWindowDecoration.closeMoreMenu();
                }
            } else {
                multitaskingWindowDecoration.closeHandleMenu(false);
            }
            boolean z2 = CoreRune.MW_CAPTION_SHELL_MOVE_DISPLAY;
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
        
            if (r4 != 3) goto L139;
         */
        @Override // com.android.wm.shell.windowdecor.DragDetector.MotionEventHandler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean handleMotionEvent(android.view.MotionEvent r12) {
            /*
                Method dump skipped, instructions count: 438
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.CaptionTouchEventListener.handleMotionEvent(android.view.MotionEvent):boolean");
        }

        /* JADX WARN: Removed duplicated region for block: B:115:0x024a  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x025f  */
        /* JADX WARN: Removed duplicated region for block: B:120:0x0267  */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onClick(android.view.View r29) {
            /*
                Method dump skipped, instructions count: 1965
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.CaptionTouchEventListener.onClick(android.view.View):void");
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public final boolean onDoubleTapEvent(MotionEvent motionEvent) {
            ActivityManager.RunningTaskInfo runningTaskInfo;
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
            if (multitaskingWindowDecoration != null && multitaskingWindowDecoration.mIsDexEnabled) {
                int action = motionEvent.getAction();
                if (action != 0) {
                    if (action == 1 && this.mIsDoubleTapEnabled && (runningTaskInfo = MultitaskingWindowDecorViewModel.this.mTaskOrganizer.getRunningTaskInfo(this.mTaskId)) != null) {
                        MultitaskingWindowDecorViewModel.this.mDexCompatRestartDialogUtils.getClass();
                        if (DexCompatRestartDialogUtils.isDexCompatEnabled(runningTaskInfo)) {
                            MultitaskingWindowDecorViewModel.this.mDexCompatRestartDialogUtils.toggleFreeformForDexCompatApp(this.mTaskId);
                        } else {
                            if (CoreRune.MW_SA_LOGGING) {
                                int windowingMode = runningTaskInfo.getWindowingMode();
                                if (windowingMode == 1) {
                                    CoreSaLogger.logForAdvanced("2004", "From mouse double clicking");
                                } else if (windowingMode == 5) {
                                    CoreSaLogger.logForAdvanced("2090", "From mouse double clicking");
                                }
                            }
                            MultiWindowManager.getInstance().toggleFreeformWindowingModeForDex(runningTaskInfo.getToken());
                        }
                    }
                } else if (this.mIsDoubleTapEnabled) {
                    boolean z = false;
                    if (motionEvent.getToolType(0) != 3 || motionEvent.getButtonState() != 1) {
                        z = true;
                    }
                    this.mIsDoubleTapEnabled = z;
                }
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override // android.view.View.OnHoverListener
        public final boolean onHover(View view, MotionEvent motionEvent) {
            ImmersiveCaptionBehavior immersiveCaptionBehavior;
            boolean z;
            boolean z2;
            long j;
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
            if (multitaskingWindowDecoration != null && multitaskingWindowDecoration.mIsDexMode && multitaskingWindowDecoration.mIsImmersiveMode) {
                PointF offsetCaptionLocation = multitaskingWindowDecoration.offsetCaptionLocation(motionEvent);
                Rect bounds = multitaskingWindowDecoration.mTaskInfo.configuration.windowConfiguration.getBounds();
                float f = offsetCaptionLocation.x;
                if (f >= 0.0f && f <= bounds.width()) {
                    float f2 = offsetCaptionLocation.y;
                    if (f2 >= 0.0f && f2 <= bounds.height() && multitaskingWindowDecoration.mIsImmersiveMode && (immersiveCaptionBehavior = multitaskingWindowDecoration.mImmersiveCaptionBehavior) != null) {
                        int i = (int) offsetCaptionLocation.y;
                        int i2 = 1;
                        if (motionEvent.getToolType(0) == 2) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if ((motionEvent.getFlags() & QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (!z || z2 || motionEvent.getSource() == 8194) {
                            int actionMasked = motionEvent.getActionMasked();
                            ImmersiveCaptionBehavior$$ExternalSyntheticLambda0 immersiveCaptionBehavior$$ExternalSyntheticLambda0 = immersiveCaptionBehavior.mHideRunnable;
                            Handler handler = immersiveCaptionBehavior.mHandler;
                            int i3 = immersiveCaptionBehavior.mCaptionHeight;
                            if (actionMasked != 7) {
                                if (actionMasked != 9) {
                                    if (actionMasked == 10 && immersiveCaptionBehavior.mIsShowing && !handler.hasCallbacks(immersiveCaptionBehavior$$ExternalSyntheticLambda0)) {
                                        handler.postDelayed(immersiveCaptionBehavior$$ExternalSyntheticLambda0, 1000L);
                                    }
                                } else {
                                    if (z && z2) {
                                        i2 = i3 / 2;
                                    }
                                    immersiveCaptionBehavior.mPositionToShow = i2;
                                }
                            } else if (immersiveCaptionBehavior.mIsShowing) {
                                if (i > i3) {
                                    handler.postDelayed(immersiveCaptionBehavior$$ExternalSyntheticLambda0, 1000L);
                                } else if (handler.hasCallbacks(immersiveCaptionBehavior$$ExternalSyntheticLambda0)) {
                                    handler.removeCallbacks(immersiveCaptionBehavior$$ExternalSyntheticLambda0);
                                }
                            } else if (i <= immersiveCaptionBehavior.mPositionToShow) {
                                ImmersiveCaptionBehavior$$ExternalSyntheticLambda0 immersiveCaptionBehavior$$ExternalSyntheticLambda02 = immersiveCaptionBehavior.mShowRunnable;
                                if (!handler.hasCallbacks(immersiveCaptionBehavior$$ExternalSyntheticLambda02)) {
                                    immersiveCaptionBehavior.mShownByTouch = false;
                                    int i4 = CaptionGlobalState.TRANSIENT_DELAY;
                                    if (i4 != -1) {
                                        j = i4;
                                    } else {
                                        j = 500;
                                    }
                                    handler.postDelayed(immersiveCaptionBehavior$$ExternalSyntheticLambda02, j);
                                }
                            }
                        }
                    }
                }
                return false;
            }
            int action = motionEvent.getAction();
            if (action != 9) {
                if (action == 10) {
                    schedulePopupDismiss();
                }
            } else {
                unschedulePopupDismiss();
            }
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            MultitaskingWindowDecoration multitaskingWindowDecoration;
            if (CoreRune.MW_CAPTION_SHELL) {
                this.mIsLongPressed = true;
                this.mLongPressMotionEvent = motionEvent;
                View view = this.mTargetView;
                if ((view instanceof WindowMenuItemView) || (view instanceof WindowMenuAnimationView)) {
                    this.mIsButtonLongPressed = true;
                }
            }
            if (CoreRune.MW_FREEFORM_DISMISS_VIEW && (multitaskingWindowDecoration = (MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId)) != null && !multitaskingWindowDecoration.mIsDexMode && this.mIsScrolled) {
                DismissButtonManager dismissButtonManager = FreeformDragPositioningController.getInstance(MultitaskingWindowDecorViewModel.this.mContext).mFreeformDragListener.mDismissButtonManager;
                Objects.requireNonNull(dismissButtonManager);
                dismissButtonManager.hide(new DismissButtonManager$$ExternalSyntheticLambda0(dismissButtonManager));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            boolean z2;
            float f = 1.0f - (i * 0.01f);
            if (f < 0.4f) {
                f = 0.4f;
            }
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
            if (multitaskingWindowDecoration != null) {
                int i2 = 1;
                if (f < 1.0f && f >= 0.0f) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel = MultitaskingWindowDecorViewModel.this;
                if (multitaskingWindowDecorViewModel.mIsTranslucent != z2) {
                    multitaskingWindowDecorViewModel.mIsTranslucent = z2;
                    WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
                    WindowContainerToken windowContainerToken = this.mTaskToken;
                    if (!z2) {
                        i2 = 2;
                    }
                    windowContainerTransaction.setFreeformTranslucent(windowContainerToken, i2);
                    MultitaskingWindowDecorViewModel.this.mTaskOrganizer.applyTransaction(windowContainerTransaction);
                }
                MultitaskingWindowDecorViewModel.this.mTaskOrganizer.setFreeformTaskOpacity(this.mTaskId, f);
                multitaskingWindowDecoration.setDecorationOpacity(f);
            }
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            if (CoreRune.MW_CAPTION_SHELL) {
                ActivityManager.RunningTaskInfo runningTaskInfo = MultitaskingWindowDecorViewModel.this.mTaskOrganizer.getRunningTaskInfo(this.mTaskId);
                if (motionEvent != null && runningTaskInfo != null && MultitaskingWindowDecorViewModel.m2474$$Nest$misCaptionDragEnabled(MultitaskingWindowDecorViewModel.this, runningTaskInfo, motionEvent)) {
                    MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
                    if (multitaskingWindowDecoration != null && !multitaskingWindowDecoration.isHandleMenuActive()) {
                        if (!this.mIsScrolled) {
                            this.mIsScrolled = true;
                            this.mDragPointerId = motionEvent.getPointerId(0);
                            Slog.d("MultitaskingWindowDecorViewModel", "DragPositioningStart from scrolled : " + multitaskingWindowDecoration.toString());
                            this.mDragPositioningCallback.onDragPositioningStart(motionEvent.getRawX(0), motionEvent.getRawY(0), 0);
                        }
                    } else {
                        Slog.w("MultitaskingWindowDecorViewModel", "OnScroll : Decoration not exist or HandleMenu Activated " + multitaskingWindowDecoration);
                    }
                }
                return false;
            }
            return true;
        }

        @Override // android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final boolean onSingleTapUp(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
            if (multitaskingWindowDecoration == null) {
                return;
            }
            if (!multitaskingWindowDecoration.mIsDexMode && (seekBar instanceof WindowDecorSlider)) {
                ((WindowDecorSlider) seekBar).onStartTrackingTouch();
            }
            unschedulePopupDismiss();
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId);
            if (multitaskingWindowDecoration == null) {
                return;
            }
            if (!multitaskingWindowDecoration.mIsDexMode && (seekBar instanceof WindowDecorSlider)) {
                ((WindowDecorSlider) seekBar).onStopTrackingTouch();
            }
            schedulePopupDismiss();
            if (CoreRune.MW_SA_LOGGING) {
                CoreSaLogger.logForAdvanced("2005", String.valueOf((seekBar.getProgress() * 10) / 60));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:117:0x01a8, code lost:
        
            if (r0 != 3) goto L418;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
        
            if (r0 == false) goto L238;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
            /*
                Method dump skipped, instructions count: 819
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.CaptionTouchEventListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }

        public final void schedulePopupDismiss() {
            if (((MultitaskingWindowDecoration) MultitaskingWindowDecorViewModel.this.mWindowDecorByTaskId.get(this.mTaskId)) == null) {
                return;
            }
            MultitaskingWindowDecorViewModel.this.mMainHandler.removeCallbacks(this.mDismissRunnable);
            if (!this.mAccessibilityManager.semIsAccessibilityServiceEnabled(114)) {
                MultitaskingWindowDecorViewModel.this.mMainHandler.postDelayed(this.mDismissRunnable, 3000L);
            }
        }

        public final void sendTalkBackFeedback(int i) {
            AccessibilityManager accessibilityManager = this.mAccessibilityManager;
            if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
                String string = MultitaskingWindowDecorViewModel.this.mContext.getString(i);
                obtain.getText().clear();
                obtain.getText().add(string);
                this.mAccessibilityManager.sendAccessibilityEvent(obtain);
            }
        }

        public final boolean supportTaskMotion() {
            ActivityManager.RunningTaskInfo runningTaskInfo = MultitaskingWindowDecorViewModel.this.mTaskOrganizer.getRunningTaskInfo(this.mTaskId);
            if (runningTaskInfo != null && runningTaskInfo.getWindowingMode() == 5 && !runningTaskInfo.configuration.isDexMode()) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x001e, code lost:
        
            if (r1 == false) goto L33;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void unschedulePopupDismiss() {
            /*
                r2 = this;
                com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel r0 = com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.this
                android.util.SparseArray r0 = r0.mWindowDecorByTaskId
                int r1 = r2.mTaskId
                java.lang.Object r0 = r0.get(r1)
                com.android.wm.shell.windowdecor.MultitaskingWindowDecoration r0 = (com.android.wm.shell.windowdecor.MultitaskingWindowDecoration) r0
                if (r0 != 0) goto Lf
                return
            Lf:
                boolean r1 = r0.mIsDexEnabled
                if (r1 == 0) goto L20
                com.android.wm.shell.windowdecor.WindowDecoration$AdditionalWindow r1 = r0.mSliderPopup
                if (r1 == 0) goto L1d
                boolean r1 = r0.mIsSliderPopupShowing
                if (r1 == 0) goto L1d
                r1 = 1
                goto L1e
            L1d:
                r1 = 0
            L1e:
                if (r1 != 0) goto L26
            L20:
                boolean r0 = r0.isHandleMenuActive()
                if (r0 == 0) goto L2f
            L26:
                com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel r0 = com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.this
                android.os.Handler r0 = r0.mMainHandler
                com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0 r2 = r2.mDismissRunnable
                r0.removeCallbacks(r2)
            L2f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.CaptionTouchEventListener.unschedulePopupDismiss():void");
        }

        private CaptionTouchEventListener(ActivityManager.RunningTaskInfo runningTaskInfo, DragPositioningCallback dragPositioningCallback) {
            this.mDragPointerId = -1;
            this.mDismissRunnable = new MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0(this, 2);
            this.mTaskId = runningTaskInfo.taskId;
            this.mTaskToken = runningTaskInfo.token;
            this.mDragPositioningCallback = dragPositioningCallback;
            this.mDragDetector = new DragDetector(this);
            this.mAccessibilityManager = AccessibilityManager.getInstance(MultitaskingWindowDecorViewModel.this.mContext);
            Context context = MultitaskingWindowDecorViewModel.this.mContext;
            GestureDetector gestureDetector = new GestureDetector(context, this);
            this.mGestureDetector = gestureDetector;
            gestureDetector.setOnDoubleTapListener(this);
            this.mFreeformCaptionTouchState = new FreeformCaptionTouchState(ViewConfiguration.get(context));
            this.mTaskPositioner = (TaskPositioner) dragPositioningCallback;
        }

        @Override // android.view.GestureDetector.OnGestureListener
        public final void onShowPress(MotionEvent motionEvent) {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SettingsObserver extends ContentObserver {
        public final Uri mColorThemeColorUri;
        public final Uri mFullScreenUri;

        public SettingsObserver(Context context) {
            super(null);
            ContentResolver contentResolver = context.getContentResolver();
            Uri uriFor = Settings.System.getUriFor("wallpapertheme_color");
            this.mColorThemeColorUri = uriFor;
            Uri uriFor2 = Settings.Global.getUriFor("multi_window_menu_in_full_screen");
            this.mFullScreenUri = uriFor2;
            contentResolver.registerContentObserver(uriFor, false, this, -1);
            MultitaskingWindowDecorViewModel.m2475$$Nest$mupdateColorThemeState(MultitaskingWindowDecorViewModel.this);
            if (CoreRune.MW_CAPTION_SHELL_FULL_SCREEN) {
                contentResolver.registerContentObserver(uriFor2, false, this, -1);
                MultitaskingWindowDecorViewModel.m2476$$Nest$mupdateFullscreenHandlerState(MultitaskingWindowDecorViewModel.this);
            }
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z, Uri uri) {
            super.onChange(z, uri);
            if (this.mColorThemeColorUri.equals(uri)) {
                MultitaskingWindowDecorViewModel.this.mMainHandler.post(new MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0(this, 0));
            } else if (CoreRune.MW_CAPTION_SHELL_FULL_SCREEN && this.mFullScreenUri.equals(uri)) {
                MultitaskingWindowDecorViewModel.this.mMainHandler.post(new MultitaskingWindowDecorViewModel$SettingsObserver$$ExternalSyntheticLambda0(this, 1));
            }
        }
    }

    /* renamed from: -$$Nest$misCaptionDragEnabled */
    public static boolean m2474$$Nest$misCaptionDragEnabled(MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel, ActivityManager.RunningTaskInfo runningTaskInfo, MotionEvent motionEvent) {
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) multitaskingWindowDecorViewModel.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (multitaskingWindowDecoration == null) {
            return false;
        }
        int windowingMode = runningTaskInfo.getWindowingMode();
        if ((motionEvent.getFlags() & QuickStepContract.SYSUI_STATE_NAV_BAR_VIS_GONE) != 0 && (motionEvent.getButtonState() & 1) == 0) {
            return false;
        }
        if (windowingMode != 5) {
            if (runningTaskInfo.configuration.isNewDexMode()) {
                if (multitaskingWindowDecoration.mCaptionType != 1 || motionEvent.getToolType(0) != 3) {
                    return false;
                }
                if (windowingMode != 1 && !multitaskingWindowDecoration.mTaskInfo.getConfiguration().windowConfiguration.isSplitScreen()) {
                    return false;
                }
            } else if (!runningTaskInfo.configuration.isDexMode() || windowingMode != 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: -$$Nest$mupdateColorThemeState */
    public static void m2475$$Nest$mupdateColorThemeState(MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel) {
        boolean z;
        boolean z2;
        Context context = multitaskingWindowDecorViewModel.mContext;
        boolean z3 = false;
        if (Settings.System.getInt(context.getContentResolver(), "wallpapertheme_state", 0) == 1) {
            z = true;
        } else {
            z = false;
        }
        String string = Settings.System.getString(context.getContentResolver(), "wallpapertheme_color");
        if (string == null) {
            string = "";
        }
        if (CaptionGlobalState.COLOR_THEME_ENABLED != z) {
            CaptionGlobalState.COLOR_THEME_ENABLED = z;
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            Slog.d("MultitaskingWindowDecorViewModel", "updateColorThemeState: enabled=" + z);
        }
        if (!CaptionGlobalState.COLOR_THEME_COLOR.equals(string)) {
            CaptionGlobalState.COLOR_THEME_COLOR = string;
            z3 = true;
        }
        if (z3) {
            multitaskingWindowDecorViewModel.forAllDecorations(new MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2(1));
        }
    }

    /* renamed from: -$$Nest$mupdateFullscreenHandlerState */
    public static void m2476$$Nest$mupdateFullscreenHandlerState(MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel) {
        boolean z;
        boolean z2 = false;
        if (Settings.Global.getInt(multitaskingWindowDecorViewModel.mContext.getContentResolver(), "multi_window_menu_in_full_screen", 0) == 1) {
            z = true;
        } else {
            z = false;
        }
        if (CaptionGlobalState.FULLSCREEN_HANDLER_ENABLED != z) {
            CaptionGlobalState.FULLSCREEN_HANDLER_ENABLED = z;
            z2 = true;
        }
        if (z2) {
            Slog.d("MultitaskingWindowDecorViewModel", "updateFullscreenHandlerState: enabled=" + z);
            if (z) {
                SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                SurfaceControl.Transaction transaction2 = new SurfaceControl.Transaction();
                Iterator it = ((ArrayList) multitaskingWindowDecorViewModel.mTaskOrganizer.getVisibleTaskAppearedInfos()).iterator();
                while (it.hasNext()) {
                    TaskAppearedInfo taskAppearedInfo = (TaskAppearedInfo) it.next();
                    ActivityManager.RunningTaskInfo taskInfo = taskAppearedInfo.getTaskInfo();
                    int i = taskInfo.taskId;
                    if (taskInfo.getWindowingMode() == 1 && taskAppearedInfo.getLeash().isValid() && multitaskingWindowDecorViewModel.shouldShowWindowDecor(taskInfo)) {
                        Slog.d("MultitaskingWindowDecorViewModel", "onFullscreenHandlerEnabled: show, t# " + i);
                        multitaskingWindowDecorViewModel.createWindowDecoration(taskInfo, taskAppearedInfo.getLeash(), transaction, transaction2);
                        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) multitaskingWindowDecorViewModel.mWindowDecorByTaskId.get(i);
                        if (multitaskingWindowDecoration != null) {
                            multitaskingWindowDecoration.updateNonFreeformCaptionVisibility();
                        }
                    }
                }
                transaction.apply();
                transaction2.apply();
                return;
            }
            final ArrayList arrayList = new ArrayList();
            multitaskingWindowDecorViewModel.forAllDecorations(new Consumer() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda4
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ArrayList arrayList2 = arrayList;
                    MultitaskingWindowDecoration multitaskingWindowDecoration2 = (MultitaskingWindowDecoration) obj;
                    if (multitaskingWindowDecoration2.mTaskInfo.getWindowingMode() == 1) {
                        arrayList2.add(multitaskingWindowDecoration2);
                    }
                }
            });
            int size = arrayList.size();
            while (true) {
                size--;
                if (size >= 0) {
                    MultitaskingWindowDecoration multitaskingWindowDecoration2 = (MultitaskingWindowDecoration) arrayList.get(size);
                    Slog.d("MultitaskingWindowDecorViewModel", "onFullscreenHandlerDisabled: remove, " + multitaskingWindowDecoration2);
                    multitaskingWindowDecorViewModel.destroyWindowDecoration(multitaskingWindowDecoration2.mTaskInfo);
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r6v4, types: [com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda0, java.lang.Object] */
    public MultitaskingWindowDecorViewModel(Context context, Handler handler, Choreographer choreographer, ShellTaskOrganizer shellTaskOrganizer, DisplayController displayController, SyncTransactionQueue syncTransactionQueue, ShellExecutor shellExecutor, Optional<SplitScreenController> optional, DisplayInsetsController displayInsetsController, Optional<Pip> optional2, NaturalSwitchingDropTargetController naturalSwitchingDropTargetController, Optional<DesktopModeController> optional3, DexCompatRestartDialogUtils dexCompatRestartDialogUtils, Transitions transitions, ShellController shellController) {
        AnonymousClass1 anonymousClass1 = new KeyguardChangeListener() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.1
            public AnonymousClass1() {
            }

            @Override // com.android.wm.shell.sysui.KeyguardChangeListener
            public final void onKeyguardVisibilityChanged(final boolean z, boolean z2) {
                MultitaskingWindowDecorViewModel.this.forAllDecorations(new Consumer() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$1$$ExternalSyntheticLambda0
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        boolean z3 = z;
                        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) obj;
                        if (CoreRune.MW_CAPTION_SHELL_FULL_SCREEN) {
                            multitaskingWindowDecoration.mIsKeyguardShowing = z3;
                            WindowMenuPopupPresenter windowMenuPopupPresenter = multitaskingWindowDecoration.mPopupMenuPresenter;
                            if (windowMenuPopupPresenter != null && multitaskingWindowDecoration.mTaskInfo.isRunning) {
                                windowMenuPopupPresenter.setFreeformButtonEnabled(!z3);
                            }
                        }
                    }
                });
            }
        };
        this.mKeyguardChangeListener = anonymousClass1;
        this.mImeAdjustedTargetBounds = new Rect();
        this.mTmpRect = new Rect();
        this.mIsPinned = false;
        this.mPinTaskId = -1;
        this.mLastImmersiveTaskId = -1;
        this.mIsTranslucent = false;
        this.mAnimatedBounds = new Rect();
        this.mAddedDisplayId = -1;
        ?? r6 = new DisplayChangeController.OnDisplayChangingListener() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda0
            @Override // com.android.wm.shell.common.DisplayChangeController.OnDisplayChangingListener
            public final void onDisplayChange(final int i, final int i2, final int i3, final DisplayAreaInfo displayAreaInfo, final WindowContainerTransaction windowContainerTransaction) {
                MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel = MultitaskingWindowDecorViewModel.this;
                multitaskingWindowDecorViewModel.getClass();
                multitaskingWindowDecorViewModel.forAllDecorations(new Consumer(i, i2, i3, displayAreaInfo, windowContainerTransaction) { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda3
                    public final /* synthetic */ int f$0;
                    public final /* synthetic */ int f$1;
                    public final /* synthetic */ int f$2;
                    public final /* synthetic */ WindowContainerTransaction f$4;

                    {
                        this.f$4 = windowContainerTransaction;
                    }

                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        DisplayLayout displayLayout;
                        DisplayCutout displayCutout;
                        int i4;
                        int i5 = this.f$0;
                        int i6 = this.f$1;
                        int i7 = this.f$2;
                        WindowContainerTransaction windowContainerTransaction2 = this.f$4;
                        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) obj;
                        if (i5 == 0) {
                            if (i5 == multitaskingWindowDecoration.mDisplay.getDisplayId() && (displayLayout = multitaskingWindowDecoration.mDisplayController.getDisplayLayout(multitaskingWindowDecoration.mTaskInfo.displayId)) != null) {
                                Rect rect = new Rect();
                                View view = multitaskingWindowDecoration.mResult.mRootView;
                                boolean z = false;
                                if (view != null && ((WindowDecorLinearLayout) view).isAttachedToWindow() && displayLayout.mRotation == i7) {
                                    displayLayout.getStableBounds(rect, false);
                                    displayCutout = displayLayout.mCutout;
                                } else {
                                    DisplayLayout displayLayout2 = new DisplayLayout(displayLayout);
                                    displayLayout2.rotateTo(i7, multitaskingWindowDecoration.mDecorWindowContext.getResources());
                                    displayLayout2.getStableBounds(rect, false);
                                    displayCutout = displayLayout2.mCutout;
                                }
                                if (CoreRune.MW_FREEFORM_LARGE_SCREEN_BOUNDS_POLICY && multitaskingWindowDecoration.mTaskInfo.getConfiguration().semDisplayDeviceType != 5) {
                                    z = true;
                                }
                                if (z) {
                                    MultiWindowUtils.adjustBoundsForScreenRatio(multitaskingWindowDecoration.mLastStableBounds, rect, new Rect(multitaskingWindowDecoration.mFreeformStashState.mLastFreeformBoundsBeforeStash), multitaskingWindowDecoration.mFreeformStashState.mLastFreeformBoundsBeforeStash);
                                } else {
                                    RotationUtils.rotateBounds(multitaskingWindowDecoration.mFreeformStashState.mLastFreeformBoundsBeforeStash, multitaskingWindowDecoration.mLastStableBounds, i6, i7);
                                }
                                if (multitaskingWindowDecoration.mFreeformStashState.isStashed()) {
                                    Rect rect2 = multitaskingWindowDecoration.mTmpRect;
                                    rect2.set(multitaskingWindowDecoration.mTaskInfo.configuration.windowConfiguration.getBounds());
                                    if (z) {
                                        MultiWindowUtils.adjustBoundsForScreenRatio(multitaskingWindowDecoration.mLastStableBounds, rect, new Rect(rect2), rect2);
                                    } else {
                                        RotationUtils.rotateBounds(rect2, multitaskingWindowDecoration.mLastStableBounds, i6, i7);
                                    }
                                    if (displayCutout != null) {
                                        Rect safeInsets = displayCutout.getSafeInsets();
                                        rect.set(rect.left - safeInsets.left, rect.top, rect.right + safeInsets.right, rect.bottom);
                                    }
                                    FreeformStashState freeformStashState = multitaskingWindowDecoration.mFreeformStashState;
                                    int i8 = multitaskingWindowDecoration.mTaskPositioner.mTaskMotionController.mMinVisibleWidth;
                                    if (freeformStashState.mStashType != 0) {
                                        if (freeformStashState.isLeftStashed()) {
                                            i4 = rect.left + i8;
                                            i8 = rect2.width();
                                        } else {
                                            i4 = rect.right;
                                        }
                                        rect2.offsetTo(i4 - i8, (int) (freeformStashState.mFreeformStashYFraction * rect.height()));
                                    }
                                    windowContainerTransaction2.setBounds(multitaskingWindowDecoration.mTaskInfo.token, rect2);
                                    if (!rect2.isEmpty()) {
                                        multitaskingWindowDecoration.mFreeformStashState.updateDimBounds(multitaskingWindowDecoration.getFreeformThickness$1(), multitaskingWindowDecoration.getCaptionVisibleHeight(), rect2);
                                        float height = multitaskingWindowDecoration.mTaskPositioner.mTaskMotionController.mScaledFreeformHeight / rect2.height();
                                        if (multitaskingWindowDecoration.mFreeformStashState.mScale != height) {
                                            WindowContainerTransaction windowContainerTransaction3 = new WindowContainerTransaction();
                                            windowContainerTransaction3.setChangeFreeformStashScale(multitaskingWindowDecoration.mTaskInfo.token, height);
                                            multitaskingWindowDecoration.mTaskOrganizer.applyTransaction(windowContainerTransaction3);
                                        }
                                    }
                                    multitaskingWindowDecoration.mLastStableBounds.set(rect);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        multitaskingWindowDecoration.getClass();
                    }
                });
            }
        };
        this.mRotationController = r6;
        this.mContext = context;
        this.mMainHandler = handler;
        this.mMainChoreographer = choreographer;
        this.mTaskOrganizer = shellTaskOrganizer;
        this.mDisplayController = displayController;
        this.mSyncQueue = syncTransactionQueue;
        if (!Transitions.ENABLE_SHELL_TRANSITIONS) {
            this.mTaskOperations = new TaskOperations(null, context, syncTransactionQueue, optional);
        }
        this.mAnimExecutor = shellExecutor;
        this.mSplitScreenController = optional;
        this.mDisplayInsetsController = displayInsetsController;
        this.mPipOptional = optional2;
        this.mNSController = naturalSwitchingDropTargetController;
        this.mDexCompatRestartDialogUtils = dexCompatRestartDialogUtils;
        if (CoreRune.MW_CAPTION_SHELL) {
            displayController.addDisplayWindowListener(this);
        }
        displayController.mChangeController.mDisplayChangeListener.add(r6);
        if (CoreRune.MW_CAPTION_SHELL_FULL_SCREEN) {
            CopyOnWriteArrayList copyOnWriteArrayList = shellController.mKeyguardChangeListeners;
            copyOnWriteArrayList.remove(anonymousClass1);
            copyOnWriteArrayList.add(anonymousClass1);
        }
        MultiWindowManager.getInstance().registerDexTransientDelayListener(new IDexTransientCaptionDelayListener.Stub() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.2
            public AnonymousClass2() {
            }

            public final void onDelayChanged(final int i) {
                MultitaskingWindowDecorViewModel.this.mMainHandler.post(new Runnable() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$2$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i2 = i;
                        if (CaptionGlobalState.TRANSIENT_DELAY != i2) {
                            CaptionGlobalState.TRANSIENT_DELAY = i2;
                        }
                    }
                });
            }
        });
        if (CoreRune.MW_FREEFORM_SHELL_TRANSITION) {
            this.mTransitions = transitions;
        }
    }

    public static boolean canUseFullscreenHandler(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z) {
        boolean z2;
        if (!MultiWindowCoreState.MW_ENABLED) {
            return false;
        }
        if (CoreRune.MW_MULTI_SPLIT_FOLDING_POLICY && runningTaskInfo.getConfiguration().semDisplayDeviceType == 5) {
            return false;
        }
        if (((!CoreRune.MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE || !runningTaskInfo.getConfiguration().isNewDexMode()) && !CaptionGlobalState.FULLSCREEN_HANDLER_ENABLED) || !runningTaskInfo.supportsMultiWindow) {
            return false;
        }
        if (runningTaskInfo.getWindowingMode() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!(z | z2) || runningTaskInfo.getActivityType() != 1) {
            return false;
        }
        return true;
    }

    public static boolean isExitingPipTask(Pip pip, ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (pip == null) {
            return false;
        }
        boolean isExitingPipTask = pip.isExitingPipTask(runningTaskInfo.taskId);
        if (!runningTaskInfo.getConfiguration().isDesktopModeEnabled() && canUseFullscreenHandler(runningTaskInfo, true)) {
            if (runningTaskInfo.getWindowingMode() != 2 || !isExitingPipTask) {
                return false;
            }
            return true;
        }
        if (!runningTaskInfo.getConfiguration().isNewDexMode() || runningTaskInfo.getWindowingMode() != 2 || !isExitingPipTask) {
            return false;
        }
        return true;
    }

    public final void createWindowDecoration(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        MultitaskingWindowDecoration multitaskingWindowDecoration;
        MultitaskingWindowDecorViewModel multitaskingWindowDecorViewModel;
        SparseArray sparseArray = this.mWindowDecorByTaskId;
        MultitaskingWindowDecoration multitaskingWindowDecoration2 = (MultitaskingWindowDecoration) sparseArray.get(runningTaskInfo.taskId);
        if (multitaskingWindowDecoration2 != null) {
            multitaskingWindowDecoration2.close();
        }
        MultitaskingWindowDecoration multitaskingWindowDecoration3 = new MultitaskingWindowDecoration(this.mContext, this.mDisplayController, this.mTaskOrganizer, runningTaskInfo, surfaceControl, this.mMainHandler, this.mMainChoreographer, this.mSyncQueue, this.mDisplayInsetsController, this.mDexCompatRestartDialogUtils, (Pip) this.mPipOptional.get(), (SplitScreenController) this.mSplitScreenController.get());
        sparseArray.put(runningTaskInfo.taskId, multitaskingWindowDecoration3);
        if (CoreRune.MW_CAPTION_SHELL) {
            Slog.d("MultitaskingWindowDecorViewModel", "MultitaskingWindowDecoration created. taskId=" + runningTaskInfo.taskId + ", num_remains=" + sparseArray.size());
        }
        if (CoreRune.MW_CAPTION_SHELL_MOVE_DISPLAY) {
            multitaskingWindowDecoration = multitaskingWindowDecoration3;
            multitaskingWindowDecorViewModel = this;
            if (multitaskingWindowDecorViewModel.mAddedDisplayId != -1) {
                multitaskingWindowDecoration.onDisplayAdded(false);
            }
        } else {
            multitaskingWindowDecoration = multitaskingWindowDecoration3;
            multitaskingWindowDecorViewModel = this;
        }
        TaskPositioner taskPositioner = new TaskPositioner(multitaskingWindowDecorViewModel.mTaskOrganizer, multitaskingWindowDecoration, multitaskingWindowDecorViewModel.mDisplayController, multitaskingWindowDecorViewModel.mAnimExecutor, multitaskingWindowDecorViewModel.mMainHandler);
        if (CoreRune.MW_CAPTION_SHELL && multitaskingWindowDecoration.shouldHideHandlerByAppRequest(runningTaskInfo)) {
            multitaskingWindowDecoration.mDragPositioningCallback = taskPositioner;
            multitaskingWindowDecoration.mTaskPositioner = taskPositioner;
            multitaskingWindowDecoration.relayout(runningTaskInfo, transaction, transaction2, false, false);
            multitaskingWindowDecoration.setCaptionColor$1();
            Slog.d("MultitaskingWindowDecorViewModel", "createWindowDecoration: forceHidden, t#" + runningTaskInfo.taskId);
        } else {
            CaptionTouchEventListener captionTouchEventListener = new CaptionTouchEventListener(multitaskingWindowDecorViewModel, runningTaskInfo, taskPositioner);
            if (CoreRune.MW_CAPTION_SHELL) {
                multitaskingWindowDecoration.mOnCaptionButtonClickListener = captionTouchEventListener;
                multitaskingWindowDecoration.mOnCaptionTouchListener = captionTouchEventListener;
            }
            multitaskingWindowDecoration.mDragPositioningCallback = taskPositioner;
            multitaskingWindowDecoration.mTaskPositioner = taskPositioner;
            DragDetector dragDetector = captionTouchEventListener.mDragDetector;
            multitaskingWindowDecoration.mDragDetector = dragDetector;
            dragDetector.mTouchSlop = ViewConfiguration.get(multitaskingWindowDecoration.mContext).getScaledTouchSlop();
            multitaskingWindowDecoration.relayout(runningTaskInfo, transaction, transaction2, false, false);
            multitaskingWindowDecoration.setCaptionColor$1();
        }
        if (CoreRune.MW_FREEFORM_MOTION_ANIMATION) {
            multitaskingWindowDecoration.updateDimensions(multitaskingWindowDecorViewModel.mContext.getResources().getDisplayMetrics());
        }
        if (CoreRune.MW_CAPTION_SHELL_KEEP_SCREEN_ON && multitaskingWindowDecorViewModel.mTaskOrganizer.isKeepScreenOn(runningTaskInfo.taskId)) {
            multitaskingWindowDecorViewModel.onKeepScreenOnChanged(runningTaskInfo.taskId, true);
        }
        multitaskingWindowDecoration.updateRoundedCornerForSplit();
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void destroyWindowDecoration(ActivityManager.RunningTaskInfo runningTaskInfo) {
        int i = runningTaskInfo.taskId;
        SparseArray sparseArray = this.mWindowDecorByTaskId;
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) sparseArray.removeReturnOld(i);
        if (multitaskingWindowDecoration == null) {
            return;
        }
        multitaskingWindowDecoration.close();
        if (multitaskingWindowDecoration.mIsDexMode && this.mIsPinned) {
            int i2 = this.mPinTaskId;
            int i3 = runningTaskInfo.taskId;
            if (i2 == i3) {
                this.mTaskOrganizer.togglePinTaskState(i3);
                toggleDisableAllPinButton(runningTaskInfo.taskId, false);
            }
        }
        if (CoreRune.MW_CAPTION_SHELL_IMMERSIVE_MODE && this.mLastImmersiveDecoration == multitaskingWindowDecoration) {
            resetLastImmersiveDecoration();
        }
        if (CoreRune.MW_CAPTION_SHELL) {
            Slog.d("MultitaskingWindowDecorViewModel", "MultitaskingWindowDecoration destroyed. taskId=" + runningTaskInfo.taskId + ", num_remains=" + sparseArray.size() + ", callers=" + Debug.getCallers(3));
        }
    }

    public final void forAllDecorations(Consumer consumer) {
        SparseArray sparseArray = this.mWindowDecorByTaskId;
        int size = sparseArray.size();
        while (true) {
            size--;
            if (size >= 0) {
                consumer.accept((MultitaskingWindowDecoration) sparseArray.valueAt(size));
            } else {
                return;
            }
        }
    }

    @Override // com.android.wm.shell.freeform.AdjustImeStateController
    public final void getImeStartBounds(ActivityManager.RunningTaskInfo runningTaskInfo, Rect rect) {
        MultitaskingWindowDecoration multitaskingWindowDecoration;
        if (runningTaskInfo != null && (multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId)) != null) {
            TaskPositioner taskPositioner = multitaskingWindowDecoration.mTaskPositioner;
            TaskMotionController taskMotionController = taskPositioner.mTaskMotionController;
            boolean z = false;
            if (taskMotionController.isMotionAnimating()) {
                synchronized (taskMotionController) {
                    TaskMotionController.TaskMotionInfo taskMotionInfo = taskMotionController.mTaskMotionInfo;
                    if (taskMotionInfo != null) {
                        taskMotionInfo.clearAnimator(false);
                    }
                }
            }
            PhysicsAnimator physicsAnimator = taskMotionController.mTemporaryBoundsPhysicsAnimator;
            if (physicsAnimator != null && physicsAnimator.isRunning()) {
                z = true;
            }
            if (z) {
                taskMotionController.cancelBoundsAnimator(rect, "ime");
            }
            if (!rect.isEmpty()) {
                taskPositioner.mFlingCanceled = true;
            } else {
                PointF pointF = taskPositioner.mRepositionStartPoint;
                if (pointF.x != 0.0f && pointF.y != 0.0f) {
                    rect.set(taskPositioner.mRepositionTaskBounds);
                }
            }
            if (!rect.isEmpty()) {
                this.mAnimatedBounds.set(rect);
            }
        }
    }

    public final void imePositionChanged(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        boolean z;
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (multitaskingWindowDecoration != null && !multitaskingWindowDecoration.mAdjustState.mOriginBounds.isEmpty()) {
            multitaskingWindowDecoration.mAdjustState.moveSurface(i);
            MultitaskingWindowDecoration.AdjustState adjustState = multitaskingWindowDecoration.mAdjustState;
            if (i != 0) {
                z = true;
            } else {
                z = false;
            }
            if (adjustState.mIsAdjusted != z) {
                adjustState.mIsAdjusted = z;
            }
        }
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayAdded(int i) {
        if (i != 2) {
            return;
        }
        Slog.d("MultitaskingWindowDecorViewModel", "on Display Added: displayId= " + i);
        this.mAddedDisplayId = i;
        forAllDecorations(new MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2(0));
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayConfigurationChanged(final int i, Configuration configuration) {
        forAllDecorations(new Consumer() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                int i2 = i;
                MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) obj;
                if (CoreRune.MW_CAPTION_SHELL_POPUP && multitaskingWindowDecoration.mTaskInfo.displayId == i2 && multitaskingWindowDecoration.isHandleMenuActive()) {
                    multitaskingWindowDecoration.closeHandleMenu(true);
                    multitaskingWindowDecoration.mTaskPositioner.removeTaskToMotionInfo(multitaskingWindowDecoration.mTaskInfo, true);
                }
            }
        });
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayRemoved(int i) {
        Slog.d("MultitaskingWindowDecorViewModel", "on Display removed: displayId= " + i);
        if (this.mAddedDisplayId == i) {
            this.mAddedDisplayId = -1;
            forAllDecorations(new MultitaskingWindowDecorViewModel$$ExternalSyntheticLambda2(2));
        }
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onFixedRotationFinished(int i) {
        this.mFixedRotatingDisplayIds.remove(Integer.valueOf(i));
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onFixedRotationStarted(int i, int i2) {
        this.mFixedRotatingDisplayIds.add(Integer.valueOf(i));
    }

    @Override // com.android.wm.shell.freeform.AdjustImeStateController
    public final void onImePositionChanged(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        imePositionChanged(runningTaskInfo, i);
    }

    @Override // com.android.wm.shell.freeform.AdjustImeStateController
    public final void onImeStartPositioning(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        boolean z;
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (multitaskingWindowDecoration == null) {
            return;
        }
        MultitaskingWindowDecoration.AdjustState adjustState = multitaskingWindowDecoration.mAdjustState;
        Rect rect = this.mAnimatedBounds;
        boolean isEmpty = rect.isEmpty();
        Rect rect2 = this.mTmpRect;
        if (!isEmpty) {
            rect2.set(rect);
            rect.setEmpty();
        } else {
            rect2.set(runningTaskInfo.configuration.windowConfiguration.getBounds());
        }
        int i2 = rect2.left;
        boolean z2 = adjustState.mIsAdjusted;
        Rect rect3 = adjustState.mAdjustingBounds;
        if (z2 ? rect3.left != i2 : !(rect3.isEmpty() && i >= 0)) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            adjustState.setOriginBounds(rect2);
        }
        adjustState.adjustConfig(runningTaskInfo.getToken(), i);
        rect2.offset(0, i);
        this.mImeAdjustedTargetBounds.set(rect2);
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onInit() {
        Slog.d("MultitaskingWindowDecorViewModel", "onInit");
        if (this.mSettingsObserver == null) {
            this.mSettingsObserver = new SettingsObserver(this.mContext);
        }
    }

    public final void onKeepScreenOnChanged(int i, boolean z) {
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(i);
        if (multitaskingWindowDecoration == null) {
            return;
        }
        multitaskingWindowDecoration.mIsKeepScreenOn = z;
        if (multitaskingWindowDecoration.getHandleView() != null && multitaskingWindowDecoration.mIsHandleVisibleState) {
            if (multitaskingWindowDecoration.mTaskInfo.getWindowingMode() != 5) {
                multitaskingWindowDecoration.setHandleAutoHideEnabled(multitaskingWindowDecoration.mIsKeepScreenOn);
            } else {
                multitaskingWindowDecoration.setHandleAutoHideEnabled(false);
            }
        }
    }

    @Override // com.android.wm.shell.freeform.AdjustImeStateController
    public final void onLayoutPositionEnd(ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        imePositionChanged(runningTaskInfo, i);
        this.mImeAdjustedTargetBounds.setEmpty();
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTaskChanging(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (!shouldShowWindowDecor(runningTaskInfo)) {
            if (multitaskingWindowDecoration != null) {
                destroyWindowDecoration(runningTaskInfo);
            }
        } else {
            if (multitaskingWindowDecoration == null) {
                createWindowDecoration(runningTaskInfo, surfaceControl, transaction, transaction2);
                return;
            }
            multitaskingWindowDecoration.relayout(runningTaskInfo, transaction, transaction2, false, false);
            if (CoreRune.MW_SHELL_FREEFORM_CAPTION_TYPE) {
                multitaskingWindowDecoration.setCaptionColor$1();
            }
            if (CoreRune.MW_FREEFORM_MOTION_ANIMATION) {
                multitaskingWindowDecoration.mTaskPositioner.removeTaskToMotionInfo(runningTaskInfo, true);
            }
            if (CoreRune.MW_CAPTION_SHELL_MOVE_DISPLAY && this.mAddedDisplayId != -1) {
                multitaskingWindowDecoration.onDisplayAdded(false);
            }
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTaskClosing(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (multitaskingWindowDecoration == null) {
            return;
        }
        if (CoreRune.MW_CAPTION_SHELL) {
            multitaskingWindowDecoration.onTaskClosing();
        }
        if (CoreRune.MW_FREEFORM_MOTION_ANIMATION) {
            multitaskingWindowDecoration.mTaskPositioner.removeTaskToMotionInfo(runningTaskInfo, false);
        }
        if (multitaskingWindowDecoration.mIsDexEnabled && this.mIsPinned) {
            int i = this.mPinTaskId;
            int i2 = runningTaskInfo.taskId;
            if (i == i2) {
                this.mTaskOrganizer.togglePinTaskState(i2);
                toggleDisableAllPinButton(runningTaskInfo.taskId, false);
            }
        }
        multitaskingWindowDecoration.relayout(runningTaskInfo, transaction, transaction2, false, false);
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTaskInfoChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
        boolean z;
        boolean z2;
        boolean z3;
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (multitaskingWindowDecoration == null) {
            return;
        }
        if (CoreRune.MW_CAPTION_SHELL_BUG_FIX && !shouldShowWindowDecor(runningTaskInfo)) {
            destroyWindowDecoration(runningTaskInfo);
            return;
        }
        if (CoreRune.MW_FREEFORM_MOTION_ANIMATION) {
            multitaskingWindowDecoration.updateDimensions(this.mContext.getResources().getDisplayMetrics());
        }
        if (multitaskingWindowDecoration.mFreeformStashState.isStashed() && multitaskingWindowDecoration.mFreeformStashState.mScale != 1.0f && runningTaskInfo.configuration.isDesktopModeEnabled()) {
            multitaskingWindowDecoration.mTaskPositioner.resetStashedFreeform(false);
        }
        if (CoreRune.MW_CAPTION_SHELL_MOVE_DISPLAY && this.mAddedDisplayId != -1) {
            multitaskingWindowDecoration.onDisplayAdded(false);
        }
        if (CoreRune.MW_FREEFORM_MOTION_ANIMATION && !multitaskingWindowDecoration.isMotionOrBoundsAnimating()) {
            TaskPositioner taskPositioner = multitaskingWindowDecoration.mTaskPositioner;
            if (!taskPositioner.mHasMoved) {
                boolean z4 = runningTaskInfo.isCaptionHandlerHidden;
                if (z4 != multitaskingWindowDecoration.mTaskInfo.isCaptionHandlerHidden && !z4) {
                    if (multitaskingWindowDecoration.mOnCaptionTouchListener != null && multitaskingWindowDecoration.mOnCaptionButtonClickListener != null) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (!z3) {
                        CaptionTouchEventListener captionTouchEventListener = new CaptionTouchEventListener(this, runningTaskInfo, taskPositioner);
                        DragDetector dragDetector = captionTouchEventListener.mDragDetector;
                        multitaskingWindowDecoration.mDragDetector = dragDetector;
                        dragDetector.mTouchSlop = ViewConfiguration.get(multitaskingWindowDecoration.mContext).getScaledTouchSlop();
                        if (CoreRune.MW_CAPTION_SHELL) {
                            multitaskingWindowDecoration.mOnCaptionButtonClickListener = captionTouchEventListener;
                            multitaskingWindowDecoration.mOnCaptionTouchListener = captionTouchEventListener;
                        }
                    }
                }
                if (CoreRune.MW_FREEFORM_SHELL_TRANSITION) {
                    Transitions transitions = this.mTransitions;
                    if (transitions.mPendingTransitions.isEmpty() && !transitions.isAnimating()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z && transitions.isAnimating()) {
                        int i = 0;
                        while (true) {
                            ArrayList arrayList = transitions.mTracks;
                            if (i >= arrayList.size()) {
                                break;
                            }
                            if (((Transitions.Track) arrayList.get(i)).mActiveTransition != null && (((Transitions.Track) arrayList.get(i)).mActiveTransition.mInfo.getFlags() & 256) != 0) {
                                z2 = true;
                                break;
                            }
                            i++;
                        }
                    }
                    z2 = false;
                    if (z2) {
                        multitaskingWindowDecoration.relayout(runningTaskInfo, true);
                        multitaskingWindowDecoration.setCaptionColor$1();
                    }
                }
                multitaskingWindowDecoration.relayout(runningTaskInfo, false);
                multitaskingWindowDecoration.setCaptionColor$1();
            }
        }
        multitaskingWindowDecoration.updateRoundedCornerForSplit();
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final boolean onTaskOpening(ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, SurfaceControl.Transaction transaction, SurfaceControl.Transaction transaction2) {
        MultitaskingWindowDecoration multitaskingWindowDecoration;
        if (!shouldShowWindowDecor(runningTaskInfo)) {
            return false;
        }
        createWindowDecoration(runningTaskInfo, surfaceControl, transaction, transaction2);
        if (CoreRune.MW_CAPTION_SHELL && (multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId)) != null) {
            multitaskingWindowDecoration.onTaskOpening();
            return true;
        }
        return true;
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTaskToBack(ActivityManager.RunningTaskInfo runningTaskInfo) {
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (multitaskingWindowDecoration != null) {
            multitaskingWindowDecoration.onTaskClosing();
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTaskToFront(ActivityManager.RunningTaskInfo runningTaskInfo) {
        MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId);
        if (multitaskingWindowDecoration != null) {
            multitaskingWindowDecoration.onTaskOpening();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00d0  */
    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onTransitionFinished(android.os.IBinder r12) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel.onTransitionFinished(android.os.IBinder):void");
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTransitionReady(IBinder iBinder, TransitionInfo transitionInfo, TransitionInfo.Change change) {
        HashMap hashMap = (HashMap) this.mTransitionToTaskInfo;
        List list = (List) hashMap.get(iBinder);
        if (list == null) {
            list = new ArrayList();
            hashMap.put(iBinder, list);
        }
        list.add(change.getTaskInfo());
    }

    public final void resetLastImmersiveDecoration() {
        MultitaskingWindowDecoration multitaskingWindowDecoration = this.mLastImmersiveDecoration;
        if (multitaskingWindowDecoration != null) {
            multitaskingWindowDecoration.setImmersiveMode(false);
            MultitaskingWindowDecoration multitaskingWindowDecoration2 = this.mLastImmersiveDecoration;
            if (multitaskingWindowDecoration2.mIsNewDexMode) {
                multitaskingWindowDecoration2.setNewDexImmersiveCaptionBackground(false);
            }
            this.mLastImmersiveDecoration = null;
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void setFreeformTaskTransitionStarter(FreeformTaskTransitionHandler freeformTaskTransitionHandler) {
        Context context = this.mContext;
        SyncTransactionQueue syncTransactionQueue = this.mSyncQueue;
        Optional optional = this.mSplitScreenController;
        this.mTaskOperations = new TaskOperations(freeformTaskTransitionHandler, context, syncTransactionQueue, optional);
        if (CoreRune.MW_CAPTION_SHELL && optional.isPresent()) {
            ((SplitScreenController) optional.get()).setWindowDecorViewModel(Optional.of(this));
        }
    }

    public final boolean shouldShowWindowDecor(ActivityManager.RunningTaskInfo runningTaskInfo) {
        boolean z;
        Optional optional = this.mSplitScreenController;
        if (optional.isPresent() && ((SplitScreenController) optional.get()).isTaskRootOrStageRoot(runningTaskInfo.taskId)) {
            z = true;
        } else {
            z = false;
        }
        if (CoreRune.MW_CAPTION_SHELL && runningTaskInfo.isSplitScreen()) {
            if (!runningTaskInfo.isCaptionHandlerHidden && !z) {
                return true;
            }
            return false;
        }
        if (CoreRune.MW_CAPTION_SHELL_BUG_FIX && runningTaskInfo.getConfiguration().isDesktopModeEnabled() && runningTaskInfo.getWindowingMode() == 6) {
            return false;
        }
        boolean z2 = CoreRune.MW_CAPTION_SHELL;
        if (z2 && runningTaskInfo.isTranslucentTask) {
            return false;
        }
        if (z2 && runningTaskInfo.getWindowingMode() == 2) {
            if (!this.mFixedRotatingDisplayIds.contains(Integer.valueOf(runningTaskInfo.displayId))) {
                if (CoreRune.MT_NEW_DEX_PIP && isExitingPipTask((Pip) this.mPipOptional.get(), runningTaskInfo)) {
                    return true;
                }
                return false;
            }
        }
        if (CoreRune.MW_CAPTION_SHELL_FULL_SCREEN && canUseFullscreenHandler(runningTaskInfo, false)) {
            return !z;
        }
        if (runningTaskInfo.getWindowingMode() == 5) {
            return true;
        }
        if (runningTaskInfo.getActivityType() == 1 && runningTaskInfo.configuration.windowConfiguration.getDisplayWindowingMode() == 5) {
            return true;
        }
        return false;
    }

    @Override // com.android.wm.shell.freeform.AdjustImeStateController
    public final void taskGainFocus(ActivityManager.RunningTaskInfo runningTaskInfo) {
        MultitaskingWindowDecoration multitaskingWindowDecoration;
        if (runningTaskInfo != null && (multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId)) != null) {
            MultitaskingWindowDecoration.AdjustState adjustState = multitaskingWindowDecoration.mAdjustState;
            if (!adjustState.mIsAdjusted) {
                adjustState.setOriginBounds(runningTaskInfo.configuration.windowConfiguration.getBounds());
            }
        }
    }

    @Override // com.android.wm.shell.freeform.AdjustImeStateController
    public final void taskLostFocus(ActivityManager.RunningTaskInfo runningTaskInfo) {
        MultitaskingWindowDecoration multitaskingWindowDecoration;
        if (runningTaskInfo != null && (multitaskingWindowDecoration = (MultitaskingWindowDecoration) this.mWindowDecorByTaskId.get(runningTaskInfo.taskId)) != null) {
            MultitaskingWindowDecoration.AdjustState adjustState = multitaskingWindowDecoration.mAdjustState;
            if (adjustState.mIsAdjusted) {
                adjustState.moveSurface(0);
                adjustState.adjustConfig(MultitaskingWindowDecoration.this.mTaskInfo.token, 0);
                adjustState.reset();
            }
        }
    }

    public final void toggleDisableAllPinButton(int i, boolean z) {
        WindowMenuCaptionPresenter windowMenuCaptionPresenter;
        SparseArray sparseArray = this.mWindowDecorByTaskId;
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            MultitaskingWindowDecoration multitaskingWindowDecoration = (MultitaskingWindowDecoration) sparseArray.valueAt(size);
            if (multitaskingWindowDecoration != null && multitaskingWindowDecoration.mIsDexEnabled && multitaskingWindowDecoration.mTaskInfo.getWindowingMode() == 5 && ((multitaskingWindowDecoration.mTaskInfo.taskId != i || !z) && ((!CoreRune.MT_NEW_DEX_TASK_PINNING || !multitaskingWindowDecoration.mIsNewDexMode) && (windowMenuCaptionPresenter = multitaskingWindowDecoration.mCaptionMenuPresenter) != null))) {
                windowMenuCaptionPresenter.changePinButtonDisable(z);
            }
        }
    }

    public final void updateLastImmersiveDecoration(MultitaskingWindowDecoration multitaskingWindowDecoration) {
        if (this.mLastImmersiveDecoration != multitaskingWindowDecoration) {
            resetLastImmersiveDecoration();
            this.mLastImmersiveDecoration = multitaskingWindowDecoration;
        }
        boolean z = multitaskingWindowDecoration.mIsNewDexMode;
        boolean z2 = true;
        if (z && this.mLastImmersiveDecoration.mTaskInfo.getWindowingMode() != 1 && (!CoreRune.MT_NEW_DEX_PIP || !isExitingPipTask((Pip) this.mPipOptional.get(), this.mLastImmersiveDecoration.mTaskInfo))) {
            z2 = false;
        }
        multitaskingWindowDecoration.setImmersiveMode(z2);
        if (z) {
            multitaskingWindowDecoration.setNewDexImmersiveCaptionBackground(z2);
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final AdjustImeStateController asAdjustImeStateController() {
        return this;
    }

    @Override // com.android.wm.shell.freeform.AdjustImeStateController
    public final void clearImeAdjustedTask() {
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecorViewModel
    public final void onTransitionMerged(IBinder iBinder, IBinder iBinder2) {
    }
}
