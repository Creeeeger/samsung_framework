package com.android.wm.shell.windowdecor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.ActivityManager;
import android.app.WindowConfiguration;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.VectorDrawable;
import android.hardware.input.InputManager;
import android.os.Debug;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Choreographer;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.InputChannel;
import android.view.InputEvent;
import android.view.InputEventReceiver;
import android.view.InputMonitor;
import android.view.InsetsSourceControl;
import android.view.InsetsState;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.SurfaceControlViewHost;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.WindowManager;
import android.view.WindowlessWindowManager;
import android.window.WindowContainerToken;
import android.window.WindowContainerTransaction;
import androidx.appcompat.app.AppCompatDelegateImpl$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.R;
import com.android.wm.shell.ShellTaskOrganizer;
import com.android.wm.shell.animation.PhysicsAnimator;
import com.android.wm.shell.common.DismissButtonManager;
import com.android.wm.shell.common.DismissButtonManager$$ExternalSyntheticLambda0;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayInsetsController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.FreeformDragPositioningController;
import com.android.wm.shell.common.SyncTransactionQueue;
import com.android.wm.shell.pip.Pip;
import com.android.wm.shell.pip.PipUtils;
import com.android.wm.shell.shortcut.DexCompatRestartDialogUtils;
import com.android.wm.shell.splitscreen.SplitScreenController;
import com.android.wm.shell.windowdecor.MultitaskingWindowDecorViewModel;
import com.android.wm.shell.windowdecor.WindowDecoration;
import com.android.wm.shell.windowdecor.animation.CaptionAnimationUtils;
import com.android.wm.shell.windowdecor.widget.HandleView;
import com.android.wm.shell.windowdecor.widget.OutlineView;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.util.InterpolatorUtils;
import java.util.Objects;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class MultitaskingWindowDecoration extends WindowDecoration implements DisplayInsetsController.OnInsetsChangedListener {
    public final AdjustState mAdjustState;
    public float mAlpha;
    public CharSequence mAppName;
    public int mCaptionColor;
    public WindowMenuCaptionPresenter mCaptionMenuPresenter;
    public int mCaptionType;
    public final Choreographer mChoreographer;
    public boolean mDestroyed;
    public final DexCompatRestartDialogUtils mDexCompatRestartDialogUtils;
    public final int mDisplayIdForInsets;
    public final DisplayInsetsController mDisplayInsetsController;
    public DragDetector mDragDetector;
    public DragPositioningCallback mDragPositioningCallback;
    public DragResizeInputListener mDragResizeListener;
    public ObjectAnimator mDragShadowAnimator;
    public boolean mElevationAnimationShow;
    public EventReceiver mEventReceiver;
    public FreeformOutlineWrapper mFreeformOutlineWrapper;
    public FreeformDimInputListener mFreeformStashDimInputListener;
    public final FreeformStashState mFreeformStashState;
    public HandleAutoHide mHandleAutoHide;
    public WindowDecoration.AdditionalWindow mHandleMenu;
    public final Handler mHandler;
    public ImmersiveCaptionBehavior mImmersiveCaptionBehavior;
    public InputMonitor mInputMonitor;
    public final InsetsState mInsetsState;
    public boolean mIsAdditionalDisplayAdded;
    public final boolean mIsBlurSupported;
    public boolean mIsDexDockingEnabled;
    public boolean mIsFullScreenCaptionState;
    public boolean mIsHandleMenuShowing;
    public boolean mIsHandleVisibleState;
    public boolean mIsImmersiveMode;
    public boolean mIsKeepScreenOn;
    public boolean mIsKeyguardShowing;
    public boolean mIsNightMode;
    public boolean mIsPopupWindowPinned;
    public boolean mIsSliderPopupShowing;
    public boolean mIsSplitImmersiveEnabled;
    public int mLastDockingState;
    public final Rect mLastStableBounds;
    public final MultiTaskingHelpController mMultiTaskingHelpController;
    public MultitaskingWindowDecorViewModel.CaptionTouchEventListener mOnCaptionButtonClickListener;
    public MultitaskingWindowDecorViewModel.CaptionTouchEventListener mOnCaptionTouchListener;
    public Animator mOverflowMenuAnim;
    public final Pip mPipController;
    public WindowMenuPopupPresenter mPopupMenuPresenter;
    public final WindowDecoration.RelayoutParams mRelayoutParams;
    public final WindowDecoration.RelayoutResult mResult;
    public ObjectAnimator mShadowAnimator;
    public WindowDecoration.AdditionalWindow mSliderPopup;
    public final SplitScreenController mSplitScreenController;
    public final SyncTransactionQueue mSyncQueue;
    public TaskPositioner mTaskPositioner;
    public final Rect mTmpRect;
    public float mWindowElevation;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class AdjustState {
        public boolean mAnimating;
        public boolean mIsAdjusted;
        public final Rect mOriginBounds = new Rect();
        public final Rect mAdjustingBounds = new Rect();

        public AdjustState() {
        }

        public final void adjustConfig(WindowContainerToken windowContainerToken, int i) {
            Rect rect;
            WindowContainerTransaction windowContainerTransaction = new WindowContainerTransaction();
            MultitaskingWindowDecoration multitaskingWindowDecoration = MultitaskingWindowDecoration.this;
            multitaskingWindowDecoration.mTmpRect.set(this.mOriginBounds);
            multitaskingWindowDecoration.mTmpRect.offset(0, i);
            windowContainerTransaction.setBounds(windowContainerToken, multitaskingWindowDecoration.mTmpRect);
            if (i != 0) {
                rect = multitaskingWindowDecoration.mTmpRect;
            } else {
                rect = null;
            }
            Rect rect2 = this.mAdjustingBounds;
            if (rect == null) {
                rect2.setEmpty();
            } else {
                rect2.set(rect);
            }
            multitaskingWindowDecoration.mTaskOrganizer.applyTransaction(windowContainerTransaction);
        }

        public final void moveSurface(int i) {
            MultitaskingWindowDecoration multitaskingWindowDecoration = MultitaskingWindowDecoration.this;
            multitaskingWindowDecoration.mTmpRect.set(this.mOriginBounds);
            multitaskingWindowDecoration.mTmpRect.offset(0, i);
            SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
            transaction.setFrameTimelineVsync(Choreographer.getInstance().getVsyncId());
            SurfaceControl surfaceControl = multitaskingWindowDecoration.mTaskSurface;
            Rect rect = multitaskingWindowDecoration.mTmpRect;
            transaction.setPosition(surfaceControl, rect.left, rect.top);
            transaction.apply();
        }

        public final void reset() {
            setOriginBounds(null);
            if (this.mIsAdjusted) {
                this.mIsAdjusted = false;
            }
            this.mAdjustingBounds.setEmpty();
            this.mAnimating = false;
        }

        public final void setOriginBounds(Rect rect) {
            Rect rect2 = this.mOriginBounds;
            if (rect == null) {
                rect2.setEmpty();
            } else {
                rect2.set(rect);
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class EventReceiver extends InputEventReceiver {
        public EventReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        public final void onInputEvent(InputEvent inputEvent) {
            boolean z;
            HandleAutoHide handleAutoHide;
            if (inputEvent instanceof MotionEvent) {
                MultitaskingWindowDecoration multitaskingWindowDecoration = MultitaskingWindowDecoration.this;
                MotionEvent motionEvent = (MotionEvent) inputEvent;
                Rect bounds = multitaskingWindowDecoration.mTaskInfo.configuration.windowConfiguration.getBounds();
                if (motionEvent.getAction() == 0 && bounds.contains((int) motionEvent.getX(), (int) motionEvent.getY()) && (handleAutoHide = multitaskingWindowDecoration.mHandleAutoHide) != null && !handleAutoHide.mIsShowing) {
                    if (handleAutoHide.mHide.isRunning()) {
                        handleAutoHide.mHide.end();
                    }
                    handleAutoHide.mShow.start();
                }
                z = true;
            } else {
                z = false;
            }
            finishInputEvent(inputEvent, z);
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class FreeformOutlineWrapper {
        public WindowDecoration.AdditionalWindow mFreeformOutline;
        public final int mLayoutId;
        public final String mNamePrefix;

        public FreeformOutlineWrapper(MultitaskingWindowDecoration multitaskingWindowDecoration) {
            this("Freeform Outline", R.layout.sec_decor_freeform_outline);
        }

        public final float calculateElevation() {
            int i;
            MultitaskingWindowDecoration multitaskingWindowDecoration = MultitaskingWindowDecoration.this;
            if (multitaskingWindowDecoration.mTaskInfo.getConfiguration().isDexMode()) {
                if (multitaskingWindowDecoration.mTaskInfo.getConfiguration().dexCompatEnabled == 2 && multitaskingWindowDecoration.mTaskInfo.configuration.windowConfiguration.getWindowingMode() == 1) {
                    return 0.0f;
                }
                i = R.dimen.sec_dex_decor_shadow_thickness;
            } else {
                i = R.dimen.sec_freeform_decor_shadow_thickness;
            }
            Resources resources = multitaskingWindowDecoration.mDecorWindowContext.getResources();
            if (i == 0) {
                return 0.0f;
            }
            return resources.getDimension(i);
        }

        public final Rect getFreeformOutlineFrame() {
            MultitaskingWindowDecoration multitaskingWindowDecoration = MultitaskingWindowDecoration.this;
            Rect bounds = multitaskingWindowDecoration.mTaskInfo.configuration.windowConfiguration.getBounds();
            int freeformThickness$1 = multitaskingWindowDecoration.getFreeformThickness$1();
            int i = -freeformThickness$1;
            return new Rect(i, i, bounds.width() + freeformThickness$1, multitaskingWindowDecoration.getCaptionVisibleHeight() + bounds.height() + freeformThickness$1);
        }

        public final OutlineView getOutlineView() {
            SurfaceControlViewHost surfaceControlViewHost;
            WindowDecoration.AdditionalWindow additionalWindow = this.mFreeformOutline;
            if (additionalWindow != null && (surfaceControlViewHost = additionalWindow.mWindowViewHost) != null && (surfaceControlViewHost.getView() instanceof OutlineView)) {
                return (OutlineView) this.mFreeformOutline.mWindowViewHost.getView();
            }
            return null;
        }

        public final void updateOutlineView(boolean z) {
            OutlineView outlineView = getOutlineView();
            if (outlineView != null) {
                MultitaskingWindowDecoration multitaskingWindowDecoration = MultitaskingWindowDecoration.this;
                int loadDimensionPixelSize = WindowDecoration.loadDimensionPixelSize(R.dimen.sec_decor_freeform_outline_frame_radius, multitaskingWindowDecoration.mDecorWindowContext.getResources());
                int captionVisibleHeight = multitaskingWindowDecoration.getCaptionVisibleHeight();
                float freeformThickness$1 = multitaskingWindowDecoration.getFreeformThickness$1();
                outlineView.mStrokePaint.setStrokeWidth(freeformThickness$1);
                outlineView.mClearPaint.setStrokeWidth(freeformThickness$1);
                if (multitaskingWindowDecoration.mIsDexDockingEnabled) {
                    outlineView.mFillColor = multitaskingWindowDecoration.mCaptionColor;
                    outlineView.mStrokeColor = -11645362;
                    outlineView.mRadius = 0;
                    outlineView.mRadiusForShadow = (int) (0 * 1.2f);
                    outlineView.setElevation(0.0f);
                } else {
                    outlineView.mRadius = loadDimensionPixelSize;
                    outlineView.mRadiusForShadow = (int) (loadDimensionPixelSize * 1.2f);
                    int i = multitaskingWindowDecoration.mCaptionColor;
                    if (OutlineView.DEBUG) {
                        outlineView.mStrokeColor = 1727987712;
                        outlineView.mFillColor = 1711276287;
                    } else {
                        outlineView.mStrokeColor = i;
                        outlineView.mFillColor = i;
                    }
                    outlineView.setElevation(calculateElevation());
                }
                outlineView.mCaptionHeight = captionVisibleHeight;
                if (z) {
                    outlineView.invalidate();
                }
            }
        }

        public FreeformOutlineWrapper(String str, int i) {
            this.mNamePrefix = str;
            this.mLayoutId = i;
        }
    }

    public MultitaskingWindowDecoration(Context context, DisplayController displayController, ShellTaskOrganizer shellTaskOrganizer, ActivityManager.RunningTaskInfo runningTaskInfo, SurfaceControl surfaceControl, Handler handler, Choreographer choreographer, SyncTransactionQueue syncTransactionQueue, DisplayInsetsController displayInsetsController, DexCompatRestartDialogUtils dexCompatRestartDialogUtils, Pip pip, SplitScreenController splitScreenController) {
        super(context, displayController, shellTaskOrganizer, runningTaskInfo, surfaceControl);
        int i;
        int i2;
        this.mRelayoutParams = new WindowDecoration.RelayoutParams();
        this.mResult = new WindowDecoration.RelayoutResult();
        this.mIsHandleVisibleState = false;
        this.mDisplayIdForInsets = -1;
        InsetsState insetsState = new InsetsState();
        this.mInsetsState = insetsState;
        this.mIsKeyguardShowing = false;
        this.mIsBlurSupported = CoreRune.FW_WINDOW_BLUR_SUPPORTED;
        this.mIsSliderPopupShowing = false;
        this.mTmpRect = new Rect();
        FreeformStashState freeformStashState = new FreeformStashState();
        this.mFreeformStashState = freeformStashState;
        this.mLastStableBounds = new Rect();
        this.mAdjustState = new AdjustState();
        this.mHandler = handler;
        this.mChoreographer = choreographer;
        this.mSyncQueue = syncTransactionQueue;
        this.mIsNightMode = MultiWindowUtils.isNightMode(runningTaskInfo);
        if (CoreRune.MW_CAPTION_SHELL) {
            this.mIsNightMode = MultiWindowUtils.isNightMode(runningTaskInfo);
            Resources resources = context.getResources();
            if (this.mIsNightMode) {
                i2 = 17171238;
            } else {
                i2 = 17171239;
            }
            this.mCaptionColor = resources.getColor(i2);
            insetsState.set(displayController.getInsetsState(0));
            this.mDisplayInsetsController = displayInsetsController;
            int i3 = runningTaskInfo.displayId;
            this.mDisplayIdForInsets = i3;
            displayInsetsController.addInsetsChangedListener(i3, this);
            int dexTaskDockingState = runningTaskInfo.getConfiguration().windowConfiguration.getDexTaskDockingState();
            this.mLastDockingState = dexTaskDockingState;
            this.mIsDexDockingEnabled = WindowConfiguration.isDexTaskDocking(dexTaskDockingState);
        }
        this.mSplitScreenController = splitScreenController;
        if (CoreRune.MW_SHELL_FREEFORM_CAPTION_TYPE) {
            if (!this.mIsDexMode && !this.mIsNewDexMode) {
                i = this.mTaskOrganizer.getFreeformCaptionType(this.mTaskInfo);
            } else {
                i = 1;
            }
            this.mCaptionType = i;
        }
        int freeformThickness$1 = getFreeformThickness$1();
        freeformStashState.mAnimType = -1;
        freeformStashState.mAnimating = false;
        freeformStashState.setStashed(-1);
        freeformStashState.mFreeformThickness = freeformThickness$1;
        if (CoreRune.MW_CAPTION_SHELL_OPACITY) {
            this.mAlpha = 1.0f;
        }
        this.mDexCompatRestartDialogUtils = dexCompatRestartDialogUtils;
        this.mIsSplitImmersiveEnabled = MultiWindowCoreState.MW_SPLIT_IMMERSIVE_MODE_ENABLED;
        if (CoreRune.MW_CAPTION_SHELL_POPUP_HELP) {
            this.mMultiTaskingHelpController = new MultiTaskingHelpController(this.mContext, this.mTaskInfo.getWindowingMode());
        }
        if (CoreRune.MW_CAPTION_SHELL_SHADOW_ANIM) {
            this.mElevationAnimationShow = true;
        }
        if (CoreRune.MW_CAPTION_SHELL_OVERFLOW_MENU) {
            this.mIsPopupWindowPinned = false;
        }
        if (CoreRune.MW_CAPTION_SHELL_FULL_SCREEN) {
            this.mIsFullScreenCaptionState = runningTaskInfo.isFullScreenCaptionState && CaptionGlobalState.FULLSCREEN_HANDLER_ENABLED;
        }
        if (CoreRune.MW_CAPTION_SHELL_MOVE_DISPLAY) {
            this.mIsAdditionalDisplayAdded = false;
        }
        this.mPipController = CoreRune.MT_NEW_DEX_PIP ? pip : null;
    }

    public final WindowDecoration.AdditionalWindow addWindow(int i, String str, SurfaceControl.Transaction transaction, int i2, int i3, int i4, int i5, int i6, int i7, float f, boolean z) {
        return addWindow(i, str, transaction, i2, i3, i4, i5, i6, i7, f, z, null);
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecoration, java.lang.AutoCloseable
    public final void close() {
        DragResizeInputListener dragResizeInputListener = this.mDragResizeListener;
        if (dragResizeInputListener != null) {
            dragResizeInputListener.close();
            this.mDragResizeListener = null;
        }
        if (CoreRune.MW_CAPTION_SHELL_POPUP) {
            closeHandleMenu(true);
        }
        FreeformDimInputListener freeformDimInputListener = this.mFreeformStashDimInputListener;
        if (freeformDimInputListener != null) {
            freeformDimInputListener.close();
            this.mFreeformStashDimInputListener = null;
        }
        if (CoreRune.MW_CAPTION_SHELL) {
            this.mDisplayInsetsController.removeInsetsChangedListener(this.mDisplayIdForInsets, this);
            this.mDestroyed = true;
        }
        if (CoreRune.MW_CAPTION_SHELL_KEEP_SCREEN_ON) {
            this.mHandleAutoHide = null;
            removeAutoHideInputChannel();
        }
        this.mAdjustState.reset();
        boolean z = CoreRune.MW_CAPTION_SHELL_MOVE_DISPLAY;
        super.close();
    }

    public final void closeHandleMenu(boolean z) {
        WindowMenuPopupPresenter windowMenuPopupPresenter;
        if (isHandleMenuActive() && (windowMenuPopupPresenter = this.mPopupMenuPresenter) != null) {
            if (z) {
                releaseHandleMenu();
                return;
            }
            AnimatorSet animatorSet = windowMenuPopupPresenter.mHideAnimation;
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecoration.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    WindowDecoration.AdditionalWindow additionalWindow = MultitaskingWindowDecoration.this.mHandleMenu;
                    if (additionalWindow != null) {
                        ((SurfaceControl.Transaction) additionalWindow.mTransactionSupplier.get()).hide(additionalWindow.mWindowSurface).apply();
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    HandleView handleView;
                    MultitaskingWindowDecoration multitaskingWindowDecoration = MultitaskingWindowDecoration.this;
                    multitaskingWindowDecoration.mIsHandleMenuShowing = false;
                    if (!multitaskingWindowDecoration.mIsBlurSupported && (handleView = multitaskingWindowDecoration.getHandleView()) != null) {
                        handleView.setVisibility(0);
                    }
                }
            });
            animatorSet.start();
        }
    }

    public final void closeMoreMenu() {
        if (isHandleMenuActive() && this.mCaptionType != 0) {
            Animator createSurfaceAlphaAnimator = CaptionAnimationUtils.createSurfaceAlphaAnimator(this.mHandleMenu.mWindowSurface, false, 250L, InterpolatorUtils.ONE_EASING);
            this.mOverflowMenuAnim = createSurfaceAlphaAnimator;
            createSurfaceAlphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecoration.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    WindowDecoration.AdditionalWindow additionalWindow = MultitaskingWindowDecoration.this.mHandleMenu;
                    if (additionalWindow != null) {
                        additionalWindow.releaseView();
                    }
                    MultitaskingWindowDecoration.this.mHandleMenu = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                    MultitaskingWindowDecoration.this.mIsHandleMenuShowing = false;
                }
            });
            this.mOverflowMenuAnim.start();
        }
    }

    public final void closeSliderPopup() {
        WindowDecoration.AdditionalWindow additionalWindow = this.mSliderPopup;
        if (additionalWindow == null) {
            return;
        }
        Animator createSurfaceAlphaAnimator = CaptionAnimationUtils.createSurfaceAlphaAnimator(additionalWindow.mWindowSurface, false, 350L, InterpolatorUtils.SINE_OUT_60);
        createSurfaceAlphaAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecoration.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                WindowDecoration.AdditionalWindow additionalWindow2 = MultitaskingWindowDecoration.this.mSliderPopup;
                if (additionalWindow2 != null) {
                    additionalWindow2.releaseView();
                    MultitaskingWindowDecoration.this.mSliderPopup = null;
                }
                MultitaskingWindowDecoration.this.mIsSliderPopupShowing = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
            }
        });
        createSurfaceAlphaAnimator.start();
    }

    public final CharSequence getAppName() {
        String str;
        ComponentName componentName;
        CharSequence charSequence = this.mAppName;
        if (charSequence != null) {
            return charSequence;
        }
        try {
            PackageManager packageManager = this.mContext.getApplicationContext().getPackageManager();
            ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
            if (runningTaskInfo != null && (componentName = runningTaskInfo.realActivity) != null) {
                str = componentName.getPackageName();
            } else {
                str = null;
            }
            if (str != null) {
                this.mAppName = packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, PackageManager.ApplicationInfoFlags.of(0L)));
                if (CoreRune.SAFE_DEBUG) {
                    Log.d("MultitaskingWindowDecoration", "getAppName: " + ((Object) this.mAppName) + ", this=" + this);
                }
                return this.mAppName;
            }
            return "";
        } catch (Exception e) {
            Log.w("MultitaskingWindowDecoration", "getAppName: error ", e);
            return "";
        }
    }

    public final int getCaptionVisibleHeight() {
        if (this.mCaptionType == 0) {
            return WindowDecoration.loadDimensionPixelSize(17105719, this.mDecorWindowContext.getResources());
        }
        return this.mResult.mCaptionHeight;
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecoration
    public final Configuration getConfigurationWithOverrides(ActivityManager.RunningTaskInfo runningTaskInfo) {
        if (CoreRune.MT_NEW_DEX_PIP && MultitaskingWindowDecorViewModel.isExitingPipTask(this.mPipController, runningTaskInfo)) {
            Configuration configuration = new Configuration(runningTaskInfo.getConfiguration());
            int windowingMode = runningTaskInfo.getWindowingMode();
            int i = 1;
            if (windowingMode != 1) {
                i = 6;
            }
            configuration.windowConfiguration.setWindowingMode(i);
            StringBuilder sb = new StringBuilder("getConfigurationWithOverrides: override windowing mode(");
            sb.append(windowingMode);
            sb.append("->");
            sb.append(i);
            sb.append(") t #");
            KeyguardSecPasswordViewController$$ExternalSyntheticOutline0.m(sb, runningTaskInfo.taskId, ", reason=exiting_pip", "MultitaskingWindowDecoration");
            return configuration;
        }
        if (CoreRune.MW_CAPTION_SHELL && !runningTaskInfo.getConfiguration().isDexMode() && runningTaskInfo.getDisplayId() == 0 && MultiWindowUtils.hasCustomDensity() && runningTaskInfo.configuration.densityDpi != this.mContext.getResources().getConfiguration().densityDpi) {
            runningTaskInfo.configuration.densityDpi = this.mContext.getResources().getConfiguration().densityDpi;
        }
        return runningTaskInfo.getConfiguration();
    }

    public final int getFreeformThickness$1() {
        int loadDimensionPixelSize = WindowDecoration.loadDimensionPixelSize(17105724, this.mDecorWindowContext.getResources());
        if (loadDimensionPixelSize % 2 != 0) {
            return loadDimensionPixelSize + 1;
        }
        return loadDimensionPixelSize;
    }

    public final HandleView getHandleView() {
        View view = this.mResult.mRootView;
        if (view == null) {
            return null;
        }
        return (HandleView) ((WindowDecorLinearLayout) view).findViewById(R.id.caption_handle);
    }

    public final int getHandleViewWidth() {
        HandleView handleView = getHandleView();
        int i = 0;
        if (handleView == null) {
            return 0;
        }
        if (!handleView.isAttachedToWindow()) {
            Resources resources = this.mDecorWindowContext.getResources();
            int loadDimensionPixelSize = WindowDecoration.loadDimensionPixelSize(R.dimen.sec_decor_handle_width, resources);
            if (handleView.getPaddingLeft() == 0) {
                i = WindowDecoration.loadDimensionPixelSize(R.dimen.sec_decor_handle_padding_horizontal, resources);
            }
            return loadDimensionPixelSize - (i * 2);
        }
        return handleView.getWidth();
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecoration
    public final String getTag() {
        return "MultitaskingWindowDecoration";
    }

    public final Rect getVisibleTaskBounds() {
        DisplayLayout displayLayout = this.mDisplayController.getDisplayLayout(this.mTaskInfo.displayId);
        Rect rect = new Rect();
        if (displayLayout != null) {
            rect.set(0, 0, displayLayout.mWidth, displayLayout.mHeight);
            rect.intersect(this.mTaskInfo.getConfiguration().windowConfiguration.getBounds());
        }
        return rect;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002e, code lost:
    
        if (r5 != false) goto L19;
     */
    @Override // com.android.wm.shell.common.DisplayInsetsController.OnInsetsChangedListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void insetsChanged(android.view.InsetsState r5) {
        /*
            r4 = this;
            android.view.InsetsState r0 = r4.mInsetsState
            r0.set(r5)
            int r0 = android.view.InsetsSource.ID_IME
            android.view.InsetsSource r5 = r5.peekSource(r0)
            r0 = 1
            r1 = 0
            if (r5 == 0) goto L17
            boolean r5 = r5.isVisible()
            if (r5 == 0) goto L17
            r5 = r0
            goto L18
        L17:
            r5 = r1
        L18:
            boolean r2 = r4.mIsSplitImmersiveEnabled
            boolean r3 = com.samsung.android.multiwindow.MultiWindowCoreState.MW_SPLIT_IMMERSIVE_MODE_ENABLED
            if (r2 != r3) goto L32
            boolean r2 = r4.mIsNewDexMode
            if (r2 == 0) goto L31
            android.app.ActivityManager$RunningTaskInfo r2 = r4.mTaskInfo
            boolean r3 = r2.isFocused
            if (r3 == 0) goto L31
            int r2 = r2.getWindowingMode()
            if (r2 != r0) goto L31
            if (r5 == 0) goto L31
            goto L32
        L31:
            r0 = r1
        L32:
            if (r0 == 0) goto L39
            android.app.ActivityManager$RunningTaskInfo r5 = r4.mTaskInfo
            r4.relayout(r5, r1)
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultitaskingWindowDecoration.insetsChanged(android.view.InsetsState):void");
    }

    @Override // com.android.wm.shell.common.DisplayInsetsController.OnInsetsChangedListener
    public final void insetsControlChanged(InsetsState insetsState, InsetsSourceControl[] insetsSourceControlArr) {
        insetsChanged(insetsState);
    }

    public final boolean isHandleMenuActive() {
        if (this.mHandleMenu != null && this.mIsHandleMenuShowing) {
            return true;
        }
        return false;
    }

    public final boolean isMotionOrBoundsAnimating() {
        boolean z;
        if (this.mTaskPositioner.mTaskMotionController.isMotionAnimating()) {
            return true;
        }
        PhysicsAnimator physicsAnimator = this.mTaskPositioner.mTaskMotionController.mTemporaryBoundsPhysicsAnimator;
        if (physicsAnimator != null && physicsAnimator.isRunning()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return false;
    }

    public final PointF offsetCaptionLocation(MotionEvent motionEvent) {
        PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
        WindowDecoration.RelayoutParams relayoutParams = this.mRelayoutParams;
        pointF.offset(-relayoutParams.mCaptionX, -relayoutParams.mCaptionY);
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskOrganizer.getRunningTaskInfo(this.mTaskInfo.taskId);
        if (runningTaskInfo != null) {
            Point point = runningTaskInfo.positionInParent;
            pointF.offset(-point.x, -point.y);
        }
        return pointF;
    }

    public final void onDisplayAdded(boolean z) {
        this.mIsAdditionalDisplayAdded = true;
        if (z) {
            WindowMenuCaptionPresenter windowMenuCaptionPresenter = this.mCaptionMenuPresenter;
            if (windowMenuCaptionPresenter != null) {
                windowMenuCaptionPresenter.mIsDisplayAdded = true;
                windowMenuCaptionPresenter.setupAddDisplayButton(true);
            }
            relayout(this.mTaskInfo, false);
        }
    }

    public final void onTaskClosing() {
        TaskPositioner taskPositioner;
        FreeformDragPositioningController.FreeformDragListener freeformDragListener;
        OutlineView outlineView;
        FreeformOutlineWrapper freeformOutlineWrapper = this.mFreeformOutlineWrapper;
        if (freeformOutlineWrapper != null && (outlineView = freeformOutlineWrapper.getOutlineView()) != null) {
            outlineView.mIsClosing = true;
            outlineView.invalidate();
            if (OutlineView.SAFE_DEBUG) {
                Log.d("OutlineView", "onTaskClosing: " + outlineView);
            }
        }
        boolean z = CoreRune.MW_FREEFORM_DISMISS_VIEW;
        if (z && (taskPositioner = this.mTaskPositioner) != null && z && !taskPositioner.mWindowDecoration.mIsDexMode && !taskPositioner.mResizing && (freeformDragListener = taskPositioner.mDragPositioningListener) != null && !taskPositioner.isDexSnappingInNonFreeform()) {
            DismissButtonManager dismissButtonManager = freeformDragListener.mDismissButtonManager;
            Objects.requireNonNull(dismissButtonManager);
            dismissButtonManager.hide(new DismissButtonManager$$ExternalSyntheticLambda0(dismissButtonManager));
        }
    }

    public final void onTaskOpening() {
        OutlineView outlineView;
        FreeformOutlineWrapper freeformOutlineWrapper = this.mFreeformOutlineWrapper;
        if (freeformOutlineWrapper != null && (outlineView = freeformOutlineWrapper.getOutlineView()) != null) {
            outlineView.mIsOpening = true;
            outlineView.invalidate();
            if (OutlineView.SAFE_DEBUG) {
                Log.d("OutlineView", "onTaskOpening: " + outlineView);
            }
        }
    }

    public final void playShadowAnimation(Rect rect, boolean z) {
        FreeformOutlineWrapper freeformOutlineWrapper;
        OutlineView outlineView;
        float f;
        ViewRootImpl viewRootImpl;
        ObjectAnimator objectAnimator = this.mShadowAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        if (z != this.mElevationAnimationShow && (freeformOutlineWrapper = this.mFreeformOutlineWrapper) != null && (outlineView = freeformOutlineWrapper.getOutlineView()) != null) {
            if (z) {
                f = outlineView.getElevation();
            } else {
                float elevation = outlineView.getElevation();
                this.mWindowElevation = elevation;
                f = elevation / 3.0f;
            }
            if (z) {
                this.mShadowAnimator = ObjectAnimator.ofFloat(outlineView, "elevation", f, this.mWindowElevation);
                if (rect != null && (viewRootImpl = outlineView.getViewRootImpl()) != null) {
                    viewRootImpl.updateLightCenter(rect);
                }
            } else {
                this.mShadowAnimator = ObjectAnimator.ofFloat(outlineView, "elevation", this.mWindowElevation, f);
            }
            this.mShadowAnimator.setDuration(100L).start();
            this.mShadowAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.windowdecor.MultitaskingWindowDecoration.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                    OutlineView outlineView2;
                    float f2;
                    super.onAnimationCancel(animator);
                    FreeformOutlineWrapper freeformOutlineWrapper2 = MultitaskingWindowDecoration.this.mFreeformOutlineWrapper;
                    if (freeformOutlineWrapper2 != null && (outlineView2 = freeformOutlineWrapper2.getOutlineView()) != null) {
                        MultitaskingWindowDecoration multitaskingWindowDecoration = MultitaskingWindowDecoration.this;
                        if (multitaskingWindowDecoration.mElevationAnimationShow) {
                            f2 = multitaskingWindowDecoration.mWindowElevation;
                        } else {
                            f2 = multitaskingWindowDecoration.mWindowElevation / 3.0f;
                        }
                        if (outlineView2.getElevation() != f2) {
                            outlineView2.setElevation(f2);
                        }
                    }
                }
            });
            this.mElevationAnimationShow = z;
        }
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecoration
    public final void relayout(ActivityManager.RunningTaskInfo runningTaskInfo) {
        relayout(runningTaskInfo, false);
    }

    public final void releaseHandleMenu() {
        HandleView handleView;
        if (!this.mIsBlurSupported && (handleView = getHandleView()) != null) {
            handleView.setVisibility(0);
        }
        this.mIsHandleMenuShowing = false;
        WindowDecoration.AdditionalWindow additionalWindow = this.mHandleMenu;
        if (additionalWindow != null) {
            additionalWindow.releaseView();
            this.mHandleMenu = null;
        }
        this.mPopupMenuPresenter = null;
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecoration
    public final void releaseViews() {
        FreeformOutlineWrapper freeformOutlineWrapper = this.mFreeformOutlineWrapper;
        if (freeformOutlineWrapper != null) {
            WindowDecoration.AdditionalWindow additionalWindow = freeformOutlineWrapper.mFreeformOutline;
            if (additionalWindow != null) {
                additionalWindow.releaseView();
                freeformOutlineWrapper.mFreeformOutline = null;
            }
            this.mFreeformOutlineWrapper = null;
        }
        if (this.mCaptionMenuPresenter != null) {
            this.mCaptionMenuPresenter = null;
        }
        WindowDecoration.AdditionalWindow additionalWindow2 = this.mHandleMenu;
        if (additionalWindow2 != null) {
            additionalWindow2.releaseView();
            this.mHandleMenu = null;
        }
        this.mFreeformStashState.destroyStashDimOverlay();
        if (CoreRune.MW_CAPTION_SHELL_OPACITY) {
            this.mAlpha = 1.0f;
        }
        if (CoreRune.MW_CAPTION_SHELL_IMMERSIVE_MODE) {
            this.mImmersiveCaptionBehavior = null;
        }
        if (CoreRune.MW_CAPTION_SHELL_KEEP_SCREEN_ON) {
            this.mHandleAutoHide = null;
            removeAutoHideInputChannel();
        }
        super.releaseViews();
    }

    public final void removeAutoHideInputChannel() {
        InputMonitor inputMonitor = this.mInputMonitor;
        if (inputMonitor != null) {
            inputMonitor.dispose();
            this.mInputMonitor = null;
        }
        EventReceiver eventReceiver = this.mEventReceiver;
        if (eventReceiver != null) {
            eventReceiver.dispose();
            this.mEventReceiver = null;
        }
    }

    public final void resetDockingMargins() {
        View findViewById = ((WindowDecorLinearLayout) this.mResult.mRootView).findViewById(R.id.caption);
        if (findViewById != null) {
            int i = this.mLastDockingState;
            if (i == 1 || i == 2) {
                View findViewById2 = findViewById.findViewById(R.id.primary_button_set);
                if (findViewById2 != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById2.getLayoutParams();
                    marginLayoutParams.setMargins(0, marginLayoutParams.topMargin, 0, marginLayoutParams.bottomMargin);
                    findViewById2.setLayoutParams(marginLayoutParams);
                }
                WindowMenuItemView windowMenuItemView = (WindowMenuItemView) findViewById.findViewById(R.id.back_window);
                if (windowMenuItemView != null) {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) windowMenuItemView.getLayoutParams();
                    marginLayoutParams2.setMargins(0, marginLayoutParams2.topMargin, 0, marginLayoutParams2.bottomMargin);
                    windowMenuItemView.setLayoutParams(marginLayoutParams2);
                }
            }
        }
    }

    public final void setCaptionColor$1() {
        View findViewById;
        int i;
        VectorDrawable vectorDrawable;
        VectorDrawable vectorDrawable2;
        VectorDrawable vectorDrawable3;
        VectorDrawable vectorDrawable4;
        View view = this.mResult.mRootView;
        if (view == null || (findViewById = ((WindowDecorLinearLayout) view).findViewById(R.id.caption)) == null) {
            return;
        }
        if (CoreRune.MW_CAPTION_SHELL) {
            if (CoreRune.MW_CAPTION_SHELL_IMMERSIVE_MODE && this.mIsDexEnabled && this.mCaptionType == 1 && this.mTaskInfo.getWindowingMode() != 5) {
                if (this.mIsNewDexMode) {
                    setNewDexImmersiveCaptionBackground(this.mIsImmersiveMode);
                    return;
                } else {
                    findViewById.setBackgroundColor(this.mCaptionColor);
                    return;
                }
            }
            return;
        }
        if (Color.valueOf(this.mCaptionColor).luminance() < 0.5d) {
            i = R.color.decor_button_light_color;
        } else {
            i = R.color.decor_button_dark_color;
        }
        ColorStateList colorStateList = findViewById.getResources().getColorStateList(i, null);
        View findViewById2 = findViewById.findViewById(R.id.back_button);
        if (findViewById2 != null && (vectorDrawable4 = (VectorDrawable) findViewById2.getBackground()) != null) {
            vectorDrawable4.setTintList(colorStateList);
        }
        View findViewById3 = findViewById.findViewById(R.id.minimize_window);
        if (findViewById3 != null && (vectorDrawable3 = (VectorDrawable) findViewById3.getBackground()) != null) {
            vectorDrawable3.setTintList(colorStateList);
        }
        View findViewById4 = findViewById.findViewById(R.id.maximize_window);
        if (findViewById4 != null && (vectorDrawable2 = (VectorDrawable) findViewById4.getBackground()) != null) {
            vectorDrawable2.setTintList(colorStateList);
        }
        View findViewById5 = findViewById.findViewById(R.id.close_window);
        if (findViewById5 != null && (vectorDrawable = (VectorDrawable) findViewById5.getBackground()) != null) {
            vectorDrawable.setTintList(colorStateList);
        }
    }

    public final void setDecorationOpacity(float f) {
        OutlineView outlineView;
        this.mAlpha = f;
        WindowMenuCaptionPresenter windowMenuCaptionPresenter = this.mCaptionMenuPresenter;
        if (windowMenuCaptionPresenter != null) {
            windowMenuCaptionPresenter.mAlpha = f;
        }
        WindowMenuPopupPresenter windowMenuPopupPresenter = this.mPopupMenuPresenter;
        if (windowMenuPopupPresenter != null) {
            windowMenuPopupPresenter.mAlpha = f;
        }
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        SurfaceControl surfaceControl = this.mCaptionContainerSurface;
        if (surfaceControl != null) {
            transaction.setAlpha(surfaceControl, f);
        }
        FreeformOutlineWrapper freeformOutlineWrapper = this.mFreeformOutlineWrapper;
        if (freeformOutlineWrapper != null && (outlineView = freeformOutlineWrapper.getOutlineView()) != null && outlineView.mAlpha != f) {
            outlineView.mAlpha = f;
            if (outlineView.getBackground() != null) {
                outlineView.getBackground().setAlpha((int) (255.0f * f));
            }
            outlineView.invalidate();
            if (OutlineView.SAFE_DEBUG) {
                Log.d("OutlineView", "onDecorationOpacityChanged: alpha=" + f + ", " + outlineView);
            }
        }
        this.mSyncQueue.runInSync(new MultitaskingWindowDecoration$$ExternalSyntheticLambda1(3, transaction));
    }

    public final void setHandleAutoHideEnabled(boolean z) {
        HandleView handleView = getHandleView();
        if (this.mHandleAutoHide == null && handleView != null) {
            this.mHandleAutoHide = new HandleAutoHide(this.mHandler, handleView);
        }
        HandleAutoHide handleAutoHide = this.mHandleAutoHide;
        if (handleAutoHide != null && handleAutoHide.mEnabled != z) {
            handleAutoHide.mEnabled = z;
            HandleAutoHide$$ExternalSyntheticLambda0 handleAutoHide$$ExternalSyntheticLambda0 = handleAutoHide.mHideRunnable;
            Handler handler = handleAutoHide.mHandler;
            if (z) {
                handler.postDelayed(handleAutoHide$$ExternalSyntheticLambda0, 2000L);
            } else {
                handler.removeCallbacks(handleAutoHide$$ExternalSyntheticLambda0);
                if (!handleAutoHide.mIsShowing) {
                    if (handleAutoHide.mHide.isRunning()) {
                        handleAutoHide.mHide.end();
                    }
                    handleAutoHide.mShow.start();
                }
            }
        }
        if (z) {
            if (this.mInputMonitor == null) {
                this.mInputMonitor = InputManager.getInstance().monitorGestureInput("caption-touch", this.mContext.getDisplayId());
            }
            if (this.mEventReceiver == null) {
                this.mEventReceiver = new EventReceiver(this.mInputMonitor.getInputChannel(), Looper.myLooper());
                return;
            }
            return;
        }
        removeAutoHideInputChannel();
    }

    public final void setImmersiveMode(boolean z) {
        String str;
        View view;
        boolean z2 = this.mIsImmersiveMode;
        if (z2 == z && (!z2 || this.mImmersiveCaptionBehavior != null)) {
            return;
        }
        this.mIsImmersiveMode = z;
        StringBuilder sb = new StringBuilder("setImmersiveMode: ");
        sb.append(z);
        sb.append(", ");
        sb.append(this);
        if (CoreRune.SAFE_DEBUG) {
            str = ", Callers=" + Debug.getCallers(3);
        } else {
            str = "";
        }
        ExifInterface$$ExternalSyntheticOutline0.m(sb, str, "MultitaskingWindowDecoration");
        if (!this.mDestroyed && (view = this.mResult.mRootView) != null && this.mIsDexEnabled) {
            if (!((WindowDecorLinearLayout) view).isAttachedToWindow()) {
                Log.d("MultitaskingWindowDecoration", "setImmersiveMode: pending, reason=not_attached_yet");
                return;
            }
            if (this.mImmersiveCaptionBehavior == null) {
                ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
                Handler handler = this.mHandler;
                WindowDecoration.RelayoutResult relayoutResult = this.mResult;
                this.mImmersiveCaptionBehavior = new ImmersiveCaptionBehavior(runningTaskInfo, handler, relayoutResult.mRootView, relayoutResult.mCaptionHeight);
            }
            if (this.mIsImmersiveMode) {
                ImmersiveCaptionBehavior immersiveCaptionBehavior = this.mImmersiveCaptionBehavior;
                immersiveCaptionBehavior.setShownState(true);
                immersiveCaptionBehavior.mIsPaused = false;
                immersiveCaptionBehavior.hide();
            } else {
                this.mImmersiveCaptionBehavior.pause();
            }
            Rect rect = this.mCaptionInsetsRect;
            if (z) {
                if (rect != null && !rect.isEmpty()) {
                    relayout(this.mTaskInfo, false);
                    return;
                }
                return;
            }
            if (rect == null || rect.isEmpty()) {
                relayout(this.mTaskInfo, false);
            }
        }
    }

    public final void setNewDexImmersiveCaptionBackground(boolean z) {
        ColorStateList buttonTintColor;
        View findViewById;
        View view = this.mResult.mRootView;
        if (view != null) {
            if (z) {
                if (view != null && (findViewById = ((WindowDecorLinearLayout) view).findViewById(R.id.caption)) != null) {
                    findViewById.setBackgroundColor(this.mDecorWindowContext.getResources().getColor(17171516, null));
                }
            } else {
                View findViewById2 = ((WindowDecorLinearLayout) view).findViewById(R.id.caption);
                if (findViewById2 != null) {
                    findViewById2.setBackgroundColor(this.mCaptionColor);
                }
            }
            WindowMenuCaptionPresenter windowMenuCaptionPresenter = this.mCaptionMenuPresenter;
            if (windowMenuCaptionPresenter != null) {
                if (z) {
                    buttonTintColor = windowMenuCaptionPresenter.mContext.getColorStateList(R.color.sec_decor_icon_color_dark);
                } else {
                    buttonTintColor = windowMenuCaptionPresenter.getButtonTintColor();
                }
                int i = 0;
                while (true) {
                    SparseArray sparseArray = windowMenuCaptionPresenter.mButtons;
                    if (i < sparseArray.size()) {
                        WindowMenuItemView windowMenuItemView = (WindowMenuItemView) sparseArray.valueAt(i);
                        if (windowMenuItemView != null) {
                            windowMenuItemView.setImageTintList(buttonTintColor);
                            if (!windowMenuItemView.isEnabled()) {
                                windowMenuItemView.setAlpha(0.4f);
                            }
                        }
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public final void setOpacitySlider() {
        WindowMenuPopupPresenter windowMenuPopupPresenter;
        if (this.mCaptionType == 0 && (windowMenuPopupPresenter = this.mPopupMenuPresenter) != null) {
            WindowDecorSlider windowDecorSlider = windowMenuPopupPresenter.mSlider;
            if (windowDecorSlider != null) {
                windowDecorSlider.setControllable(true);
                windowMenuPopupPresenter.mSlider.setProgress((int) ((1.0f - windowMenuPopupPresenter.mAlpha) * 100.0f));
                return;
            }
            return;
        }
        WindowMenuCaptionPresenter windowMenuCaptionPresenter = this.mCaptionMenuPresenter;
        if (windowMenuCaptionPresenter != null) {
            WindowDecorSlider windowDecorSlider2 = windowMenuCaptionPresenter.mSlider;
            if (windowDecorSlider2 != null) {
                windowDecorSlider2.setControllable(true);
                windowMenuCaptionPresenter.mSlider.setProgress((int) ((1.0f - windowMenuCaptionPresenter.mAlpha) * 100.0f));
            }
            closeMoreMenu();
        }
    }

    public final void setupCaptionColor() {
        int i;
        boolean isNightMode = MultiWindowUtils.isNightMode(this.mTaskInfo);
        if (this.mIsNightMode != isNightMode) {
            this.mIsNightMode = isNightMode;
            Resources resources = this.mContext.getResources();
            if (this.mIsNightMode) {
                i = 17171238;
            } else {
                i = 17171239;
            }
            this.mCaptionColor = resources.getColor(i);
            FreeformOutlineWrapper freeformOutlineWrapper = this.mFreeformOutlineWrapper;
            if (freeformOutlineWrapper != null) {
                freeformOutlineWrapper.updateOutlineView(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x019a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void showHandleMenu() {
        /*
            Method dump skipped, instructions count: 916
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultitaskingWindowDecoration.showHandleMenu():void");
    }

    public final String toString() {
        int i;
        ActivityManager.RunningTaskInfo runningTaskInfo = this.mTaskInfo;
        if (runningTaskInfo != null) {
            i = runningTaskInfo.taskId;
        } else {
            i = -1;
        }
        return AppCompatDelegateImpl$$ExternalSyntheticOutline0.m(MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("MultitaskingWindowDecoration{#", i, " immersive="), this.mIsImmersiveMode, "}");
    }

    public final void updateDimensions(DisplayMetrics displayMetrics) {
        TaskMotionController taskMotionController = this.mTaskPositioner.mTaskMotionController;
        taskMotionController.getClass();
        taskMotionController.mScreenEdgeInset = PipUtils.dpToPx(displayMetrics, 13.0f);
        taskMotionController.mMinVisibleWidth = PipUtils.dpToPx(displayMetrics, 32.0f);
        taskMotionController.mScaledFreeformHeight = PipUtils.dpToPx(displayMetrics, 220.0f);
        taskMotionController.mStashMoveThreshold = PipUtils.dpToPx(displayMetrics, 10.0f);
    }

    public final void updateNonFreeformCaptionVisibility() {
        boolean z;
        HandleView handleView = getHandleView();
        if (handleView == null) {
            return;
        }
        int i = 0;
        if (CoreRune.MW_CAPTION_SHELL_FULL_SCREEN && this.mTaskInfo.getWindowingMode() == 1 && !MultitaskingWindowDecorViewModel.canUseFullscreenHandler(this.mTaskInfo, false)) {
            z = false;
        } else {
            z = !shouldHideHandlerByAppRequest(this.mTaskInfo);
        }
        if (!z) {
            i = 8;
        }
        handleView.setVisibility(i);
        this.mIsHandleVisibleState = z;
        handleView.setTaskFocusState(WindowDecoration.hasBarFocus(this.mTaskInfo));
        if (CoreRune.MW_CAPTION_SHELL_KEEP_SCREEN_ON && z && this.mIsKeepScreenOn) {
            setHandleAutoHideEnabled(true);
        }
    }

    public final void updateRoundedCornerForSplit() {
        View findViewById;
        View view = this.mResult.mRootView;
        if (view != null && (findViewById = ((WindowDecorLinearLayout) view).findViewById(R.id.caption)) != null && findViewById.getContext() != null && this.mCaptionType != 0 && this.mIsNewDexMode && this.mTaskInfo.getConfiguration().windowConfiguration.isSplitScreen()) {
            int roundedCornerRadius = MultiWindowUtils.getRoundedCornerRadius(findViewById.getContext());
            int roundedCornerColor = MultiWindowUtils.getRoundedCornerColor(findViewById.getContext());
            findViewById.semSetRoundedCorners(3, roundedCornerRadius);
            findViewById.semSetRoundedCornerColor(3, roundedCornerColor);
        }
    }

    public final WindowDecoration.AdditionalWindow addWindow(int i, String str, SurfaceControl.Transaction transaction, int i2, int i3, int i4, int i5, int i6, int i7, float f, boolean z, View view) {
        View inflate;
        float f2;
        SurfaceControl.Builder builder = (SurfaceControl.Builder) this.mSurfaceControlBuilderSupplier.get();
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, " of Task=");
        m.append(this.mTaskInfo.taskId);
        SurfaceControl build = builder.setName(m.toString()).setContainerLayer().setParent(this.mDecorationContainerSurface).build();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(i4, i5, i6, i7, -2);
        layoutParams.setTitle("Additional window of Task=" + this.mTaskInfo.taskId + " (" + str + ")");
        layoutParams.setTrustedOverlay();
        if (z) {
            layoutParams.multiwindowFlags = 2;
        }
        WindowlessWindowManager windowlessWindowManager = new WindowlessWindowManager(this.mTaskInfo.configuration, build, (IBinder) null, z ? this.mTaskInfo.token : null);
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(this.mDecorWindowContext, android.R.style.Theme.DeviceDefault.DayNight);
        WindowDecoration.SurfaceControlViewHostFactory surfaceControlViewHostFactory = this.mSurfaceControlViewHostFactory;
        Display display = this.mDisplay;
        surfaceControlViewHostFactory.getClass();
        SurfaceControlViewHost surfaceControlViewHost = new SurfaceControlViewHost(contextThemeWrapper, display, windowlessWindowManager, "WindowDecoration");
        if (view != null) {
            f2 = f;
            inflate = view;
        } else {
            inflate = LayoutInflater.from(contextThemeWrapper).inflate(i, (ViewGroup) null);
            f2 = f;
        }
        inflate.setElevation(f2);
        layoutParams.setSurfaceInsets(inflate, true, false);
        surfaceControlViewHost.setView(inflate, layoutParams);
        Rect rect = layoutParams.surfaceInsets;
        transaction.setPosition(build, i2 - rect.left, i3 - rect.top).show(build);
        return new WindowDecoration.AdditionalWindow(build, surfaceControlViewHost, this.mSurfaceControlTransactionSupplier);
    }

    public final void relayout(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z) {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        relayout(runningTaskInfo, transaction, transaction, true, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x01e5, code lost:
    
        if ((r0.getStagePosition() & 64) == 0) goto L156;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0507  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x05c5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0a8b  */
    /* JADX WARN: Removed duplicated region for block: B:432:0x0ab5  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x0a91  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:549:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:556:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:560:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0212  */
    /* JADX WARN: Type inference failed for: r1v100 */
    /* JADX WARN: Type inference failed for: r1v101, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v118 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void relayout(android.app.ActivityManager.RunningTaskInfo r31, android.view.SurfaceControl.Transaction r32, android.view.SurfaceControl.Transaction r33, boolean r34, boolean r35) {
        /*
            Method dump skipped, instructions count: 2774
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.windowdecor.MultitaskingWindowDecoration.relayout(android.app.ActivityManager$RunningTaskInfo, android.view.SurfaceControl$Transaction, android.view.SurfaceControl$Transaction, boolean, boolean):void");
    }

    @Override // com.android.wm.shell.windowdecor.WindowDecoration
    public final MultitaskingWindowDecoration asMultitaskingWindowDecoration() {
        return this;
    }
}
