package com.android.wm.shell.splitscreen;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Debug;
import android.util.Slog;
import android.view.SurfaceControl;
import android.view.SurfaceSession;
import com.android.wm.shell.RootTaskDisplayAreaOrganizer;
import com.android.wm.shell.common.DisplayController;
import com.android.wm.shell.common.DisplayLayout;
import com.android.wm.shell.common.HandlerExecutor;
import com.android.wm.shell.common.ShellExecutor;
import com.android.wm.shell.common.TransactionPool;
import com.android.wm.shell.splitscreen.SplitBackgroundController;
import com.android.wm.shell.splitscreen.SplitScreen;
import com.samsung.android.multiwindow.IRemoteAppTransitionListener;
import com.samsung.android.multiwindow.MultiWindowManager;
import com.samsung.android.multiwindow.MultiWindowUtils;
import com.samsung.android.rune.CoreRune;
import java.util.Arrays;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SplitBackgroundController implements RootTaskDisplayAreaOrganizer.RootTaskDisplayAreaListener, DisplayController.OnDisplaysChangedListener, SplitScreen.SplitScreenListener {
    public static final boolean DEBUG;
    public float[] mBackgroundColor;
    public SurfaceControl mBackgroundColorLayer;
    public final Context mContext;
    public boolean mIsAttached;
    public boolean mIsDividerVisible;
    public final ShellExecutor mMainExecutor;
    public final AnonymousClass1 mRemoteAppTransitionListener;
    public boolean mReparentedToTransitionRoot;
    public final StageCoordinator mStageCoordinator;
    public final TransactionPool mTransactionPool;
    public boolean mWallpaperVisible;
    public final Object mLock = new Object();
    public final SplitBackgroundController$$ExternalSyntheticLambda0 mShowAnimDelay = new SplitBackgroundController$$ExternalSyntheticLambda0(this, 0);
    public final SurfaceDelegate mSurfaceDelegate = new SurfaceDelegate();
    public final SurfaceSession mSurfaceSession = new SurfaceSession();
    public ValueAnimator mAnimation = null;
    public boolean mVisible = false;
    public boolean mNightMode = false;

    static {
        boolean z;
        if (!CoreRune.SAFE_DEBUG && !CoreRune.IS_DEBUG_LEVEL_MID) {
            z = false;
        } else {
            z = true;
        }
        DEBUG = z;
    }

    public SplitBackgroundController(Context context, StageCoordinator stageCoordinator, TransactionPool transactionPool, ShellExecutor shellExecutor, DisplayController displayController) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.mRemoteAppTransitionListener = anonymousClass1;
        this.mContext = context;
        this.mStageCoordinator = stageCoordinator;
        this.mTransactionPool = transactionPool;
        this.mMainExecutor = shellExecutor;
        updateBackgroundColor();
        MultiWindowManager.getInstance().registerRemoteAppTransitionListener(anonymousClass1);
        ((HandlerExecutor) shellExecutor).execute(new SplitBackgroundController$$ExternalSyntheticLambda0(this, 1));
        displayController.addDisplayWindowListener(this);
    }

    public final boolean canShow() {
        if (this.mIsDividerVisible && (this.mWallpaperVisible || CoreRune.MW_MULTI_SPLIT_BACKGROUND)) {
            return true;
        }
        return false;
    }

    public final void detach() {
        if (!this.mIsAttached) {
            return;
        }
        TransactionPool transactionPool = this.mTransactionPool;
        SurfaceControl.Transaction acquire = transactionPool.acquire();
        acquire.remove(this.mBackgroundColorLayer);
        acquire.apply();
        transactionPool.release(acquire);
        this.mBackgroundColorLayer = null;
        this.mSurfaceDelegate.mSurfaceControl = null;
        this.mIsAttached = false;
    }

    public final Rect getDisplayBounds() {
        StageCoordinator stageCoordinator = this.mStageCoordinator;
        DisplayLayout displayLayout = stageCoordinator.mDisplayController.getDisplayLayout(stageCoordinator.mContext.getDisplayId());
        if (displayLayout == null) {
            Slog.w("SplitBackgroundController", "getDisplayBounds: cannot find display");
            return null;
        }
        Rect rect = new Rect();
        rect.set(0, 0, displayLayout.mWidth, displayLayout.mHeight);
        return rect;
    }

    @Override // com.android.wm.shell.common.DisplayController.OnDisplaysChangedListener
    public final void onDisplayConfigurationChanged(int i, Configuration configuration) {
        if (i == 0) {
            updateBackgroundLayerColor(false);
            Rect displayBounds = getDisplayBounds();
            SurfaceDelegate surfaceDelegate = this.mSurfaceDelegate;
            surfaceDelegate.setCrop(displayBounds);
            surfaceDelegate.apply();
        }
    }

    public final void reparentToLeash(SurfaceControl surfaceControl, boolean z, SurfaceControl.Transaction transaction) {
        boolean z2;
        if (surfaceControl != null && surfaceControl.isValid()) {
            if (!this.mIsAttached) {
                Slog.e("SplitBackgroundController", "reparentToLeash: failed, non-attached state, callers=" + Debug.getCallers(5));
                return;
            }
            if (!canShow() && !z) {
                z2 = false;
            } else {
                z2 = true;
            }
            this.mReparentedToTransitionRoot = z;
            Slog.d("SplitBackgroundController", "reparentToLeash: leash=" + surfaceControl + ", isTransitionRoot=" + z + ", vis=" + z2 + ", callers=" + Debug.getCallers(3));
            if (transaction != null) {
                transaction.setLayer(this.mBackgroundColorLayer, -1);
                transaction.reparent(this.mBackgroundColorLayer, surfaceControl);
            } else {
                TransactionPool transactionPool = this.mTransactionPool;
                SurfaceControl.Transaction acquire = transactionPool.acquire();
                acquire.setLayer(this.mBackgroundColorLayer, -1);
                acquire.reparent(this.mBackgroundColorLayer, surfaceControl);
                acquire.apply();
                transactionPool.release(acquire);
            }
            updateBackgroundVisibility(z2, false);
            return;
        }
        Slog.e("SplitBackgroundController", "reparentToLeash: failed, invalid leash=" + surfaceControl + ", callers=" + Debug.getCallers(5));
    }

    public final void updateBackgroundColor() {
        int roundedCornerColor = MultiWindowUtils.getRoundedCornerColor(this.mContext);
        this.mBackgroundColor = new float[]{Color.red(roundedCornerColor) / 255.0f, Color.green(roundedCornerColor) / 255.0f, Color.blue(roundedCornerColor) / 255.0f};
    }

    public final void updateBackgroundLayer(boolean z) {
        float f;
        if (this.mBackgroundColorLayer == null) {
            return;
        }
        ValueAnimator valueAnimator = this.mAnimation;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        SurfaceDelegate surfaceDelegate = this.mSurfaceDelegate;
        if (z) {
            if (this.mWallpaperVisible) {
                f = 0.9f;
            } else {
                f = 1.0f;
            }
            if (surfaceDelegate.mAlpha != f) {
                surfaceDelegate.mAlpha = f;
                surfaceDelegate.mChanged = true;
            }
            updateBackgroundColor();
            float[] fArr = this.mBackgroundColor;
            if (surfaceDelegate.mColors != fArr) {
                surfaceDelegate.mColors = fArr;
                surfaceDelegate.mChanged = true;
            }
        }
        if (surfaceDelegate.mVisible != z) {
            surfaceDelegate.mVisible = z;
            surfaceDelegate.mChanged = true;
        }
        surfaceDelegate.apply();
    }

    public final void updateBackgroundLayerColor(boolean z) {
        boolean isNightModeActive = this.mContext.getResources().getConfiguration().isNightModeActive();
        if (this.mNightMode != isNightModeActive || z) {
            this.mNightMode = isNightModeActive;
            if (this.mBackgroundColorLayer == null) {
                return;
            }
            updateBackgroundColor();
            float[] fArr = this.mBackgroundColor;
            SurfaceDelegate surfaceDelegate = this.mSurfaceDelegate;
            if (surfaceDelegate.mColors != fArr) {
                surfaceDelegate.mColors = fArr;
                surfaceDelegate.mChanged = true;
            }
            surfaceDelegate.apply();
        }
    }

    public final void updateBackgroundVisibility(boolean z, boolean z2) {
        synchronized (this.mLock) {
            if (((HandlerExecutor) this.mMainExecutor).mHandler.hasCallbacks(this.mShowAnimDelay)) {
                ((HandlerExecutor) this.mMainExecutor).removeCallbacks(this.mShowAnimDelay);
            }
            if (!this.mIsAttached) {
                Slog.e("SplitBackgroundController", "updateBackgroundVisibility: not attached but called. callers=" + Debug.getCallers(Thread.currentThread().getStackTrace().length));
            }
            if (this.mVisible != z) {
                if (DEBUG) {
                    Slog.d("SplitBackgroundController", "updateBackgroundVisibility: visible=" + z + " animate=" + z2 + " Callers=" + Debug.getCallers(Thread.currentThread().getStackTrace().length));
                }
                this.mVisible = z;
                if (z2) {
                    ((HandlerExecutor) this.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.splitscreen.SplitBackgroundController$$ExternalSyntheticLambda1
                        public final /* synthetic */ int f$1 = 0;

                        @Override // java.lang.Runnable
                        public final void run() {
                            final float f;
                            int i;
                            final SplitBackgroundController splitBackgroundController = SplitBackgroundController.this;
                            int i2 = this.f$1;
                            final boolean z3 = splitBackgroundController.mVisible;
                            if (splitBackgroundController.mBackgroundColorLayer != null) {
                                ValueAnimator valueAnimator = splitBackgroundController.mAnimation;
                                if (valueAnimator != null) {
                                    valueAnimator.cancel();
                                    splitBackgroundController.updateBackgroundLayer(z3);
                                    return;
                                }
                                float f2 = 0.9f;
                                if (z3) {
                                    if (!splitBackgroundController.mWallpaperVisible) {
                                        f2 = 1.0f;
                                    }
                                    f = 0.6f;
                                } else {
                                    if (!splitBackgroundController.mWallpaperVisible) {
                                        f2 = 1.0f;
                                    }
                                    f = f2;
                                    f2 = 0.0f;
                                }
                                final SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
                                ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
                                splitBackgroundController.mAnimation = ofFloat;
                                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.wm.shell.splitscreen.SplitBackgroundController$$ExternalSyntheticLambda2
                                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                        SplitBackgroundController splitBackgroundController2 = SplitBackgroundController.this;
                                        SurfaceControl.Transaction transaction2 = transaction;
                                        splitBackgroundController2.getClass();
                                        float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                                        SplitBackgroundController.SurfaceDelegate surfaceDelegate = splitBackgroundController2.mSurfaceDelegate;
                                        if (surfaceDelegate.mAlpha != floatValue) {
                                            surfaceDelegate.mAlpha = floatValue;
                                            surfaceDelegate.mChanged = true;
                                        }
                                        surfaceDelegate.apply(transaction2);
                                    }
                                });
                                splitBackgroundController.mAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.wm.shell.splitscreen.SplitBackgroundController.2
                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationEnd(Animator animator) {
                                        if (!z3) {
                                            SurfaceDelegate surfaceDelegate = SplitBackgroundController.this.mSurfaceDelegate;
                                            if (surfaceDelegate.mVisible) {
                                                surfaceDelegate.mVisible = false;
                                                surfaceDelegate.mChanged = true;
                                            }
                                            surfaceDelegate.apply(transaction);
                                        }
                                        transaction.close();
                                        SplitBackgroundController.this.mAnimation = null;
                                    }

                                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                    public final void onAnimationStart(Animator animator) {
                                        if (z3) {
                                            SplitBackgroundController splitBackgroundController2 = SplitBackgroundController.this;
                                            SurfaceDelegate surfaceDelegate = splitBackgroundController2.mSurfaceDelegate;
                                            float f3 = f;
                                            if (surfaceDelegate.mAlpha != f3) {
                                                surfaceDelegate.mAlpha = f3;
                                                surfaceDelegate.mChanged = true;
                                            }
                                            splitBackgroundController2.updateBackgroundColor();
                                            SplitBackgroundController splitBackgroundController3 = SplitBackgroundController.this;
                                            SurfaceDelegate surfaceDelegate2 = splitBackgroundController3.mSurfaceDelegate;
                                            float[] fArr = splitBackgroundController3.mBackgroundColor;
                                            if (surfaceDelegate2.mColors != fArr) {
                                                surfaceDelegate2.mColors = fArr;
                                                surfaceDelegate2.mChanged = true;
                                            }
                                            if (!surfaceDelegate2.mVisible) {
                                                surfaceDelegate2.mVisible = true;
                                                surfaceDelegate2.mChanged = true;
                                            }
                                            surfaceDelegate2.apply(transaction);
                                        }
                                    }
                                });
                                ValueAnimator valueAnimator2 = splitBackgroundController.mAnimation;
                                if (i2 == 1) {
                                    i = 200;
                                } else {
                                    i = 400;
                                }
                                valueAnimator2.setDuration(i);
                                splitBackgroundController.mAnimation.start();
                            }
                        }
                    });
                } else {
                    ((HandlerExecutor) this.mMainExecutor).execute(new SplitBackgroundController$$ExternalSyntheticLambda0(this, 2));
                }
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class SurfaceDelegate {
        public float mAlpha;
        public boolean mChanged;
        public SurfaceControl mSurfaceControl;
        public float[] mColors = new float[3];
        public boolean mVisible = false;
        public final Rect mCropRect = new Rect();

        public SurfaceDelegate() {
        }

        public final void apply() {
            if (canApply()) {
                SplitBackgroundController splitBackgroundController = SplitBackgroundController.this;
                SurfaceControl.Transaction acquire = splitBackgroundController.mTransactionPool.acquire();
                apply(acquire);
                splitBackgroundController.mTransactionPool.release(acquire);
            }
        }

        public final boolean canApply() {
            if (this.mSurfaceControl == null) {
                if (SplitBackgroundController.DEBUG) {
                    Slog.d("SplitBackgroundController", "surface is not set. apply failed " + Debug.getCallers(Thread.currentThread().getStackTrace().length));
                }
                return false;
            }
            if (!this.mChanged) {
                if (SplitBackgroundController.DEBUG) {
                    Slog.d("SplitBackgroundController", "no changes. cur state: " + this);
                }
                return false;
            }
            return true;
        }

        public final void setCrop(Rect rect) {
            if (rect != null) {
                Rect rect2 = this.mCropRect;
                if (!rect2.equals(rect)) {
                    rect2.set(rect);
                    this.mChanged = true;
                    if (SplitBackgroundController.DEBUG) {
                        Slog.d("SplitBackgroundController", "setCrop: " + rect);
                    }
                }
            }
        }

        public final String toString() {
            return "sc= " + this.mSurfaceControl + " vis=" + this.mVisible + " color=" + Arrays.toString(this.mColors) + " alpha=" + this.mAlpha;
        }

        public final void apply(SurfaceControl.Transaction transaction) {
            if (canApply()) {
                transaction.setColor(this.mSurfaceControl, this.mColors);
                transaction.setAlpha(this.mSurfaceControl, this.mAlpha);
                transaction.setVisibility(this.mSurfaceControl, this.mVisible);
                transaction.setCrop(this.mSurfaceControl, this.mCropRect);
                transaction.apply();
                this.mChanged = false;
            }
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.android.wm.shell.splitscreen.SplitBackgroundController$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final class AnonymousClass1 extends IRemoteAppTransitionListener.Stub {
        public AnonymousClass1() {
        }

        public final void onWallpaperVisibilityChanged(final boolean z, final boolean z2) {
            ((HandlerExecutor) SplitBackgroundController.this.mMainExecutor).execute(new Runnable() { // from class: com.android.wm.shell.splitscreen.SplitBackgroundController$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    float f;
                    SplitBackgroundController.AnonymousClass1 anonymousClass1 = SplitBackgroundController.AnonymousClass1.this;
                    boolean z3 = z;
                    boolean z4 = z2;
                    SplitBackgroundController splitBackgroundController = SplitBackgroundController.this;
                    if (splitBackgroundController.mWallpaperVisible != z3) {
                        splitBackgroundController.mWallpaperVisible = z3;
                        if (splitBackgroundController.canShow() && !z4) {
                            if (CoreRune.MW_MULTI_SPLIT_BACKGROUND) {
                                SplitBackgroundController splitBackgroundController2 = SplitBackgroundController.this;
                                if (splitBackgroundController2.mWallpaperVisible) {
                                    f = 0.9f;
                                } else {
                                    f = 1.0f;
                                }
                                if (splitBackgroundController2.mBackgroundColorLayer != null) {
                                    SplitBackgroundController.SurfaceDelegate surfaceDelegate = splitBackgroundController2.mSurfaceDelegate;
                                    if (surfaceDelegate.mAlpha != f) {
                                        surfaceDelegate.mAlpha = f;
                                        surfaceDelegate.mChanged = true;
                                    }
                                    splitBackgroundController2.updateBackgroundColor();
                                    float[] fArr = splitBackgroundController2.mBackgroundColor;
                                    if (surfaceDelegate.mColors != fArr) {
                                        surfaceDelegate.mColors = fArr;
                                        surfaceDelegate.mChanged = true;
                                    }
                                    surfaceDelegate.apply();
                                    return;
                                }
                                return;
                            }
                            SplitBackgroundController.this.updateBackgroundVisibility(true, false);
                            return;
                        }
                        SplitBackgroundController.this.updateBackgroundVisibility(false, false);
                    }
                }
            });
        }

        public final void onFinishRecentsAnimation(boolean z) {
        }

        public final void onStartHomeAnimation(boolean z) {
        }

        public final void onStartRecentsAnimation(boolean z) {
        }
    }
}
