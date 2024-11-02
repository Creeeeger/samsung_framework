package com.google.android.material.appbar;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.res.ResourcesCompat;
import androidx.reflect.SeslBaseReflector;
import androidx.reflect.content.res.SeslConfigurationReflector;
import com.android.keyguard.KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0;
import com.android.systemui.controls.management.ControlsListingControllerImpl$$ExternalSyntheticOutline0;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.SeslContextUtils;
import java.lang.reflect.Method;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SeslImmersiveScrollBehavior extends AppBarLayout.Behavior {
    public boolean isRoundedCornerHide;
    public WindowInsetsAnimationController mAnimationController;
    public final AnonymousClass1 mAnimationHandler;
    public AppBarLayout mAppBarLayout;
    public View mBottomArea;
    public boolean mCalledHideShowOnLayoutChild;
    public boolean mCanImmersiveScroll;
    public CancellationSignal mCancellationSignal;
    public CollapsingToolbarLayout mCollapsingToolbarLayout;
    public View mContentView;
    public Context mContext;
    public CoordinatorLayout mCoordinatorLayout;
    public float mCurOffset;
    public View mDecorView;
    public WindowInsets mDecorViewInset;
    public boolean mIsMultiWindow;
    public final boolean mIsSetAutoRestore;
    public View mNavigationBarBg;
    public int mNavigationBarHeight;
    public boolean mNeedRestoreAnim;
    public ValueAnimator mOffsetAnimator;
    public final AnonymousClass2 mOffsetChangedListener;
    public AnonymousClass3 mOnInsetsChangedListener;
    public int mPrevOffset;
    public int mPrevOrientation;
    public boolean mShownAtDown;
    public View mStatusBarBg;
    public int mStatusBarHeight;
    public View mTargetView;
    public boolean mToolIsMouse;
    public final AnonymousClass6 mWindowAnimationCallback;
    public final AnonymousClass5 mWindowInsetsAnimationControlListener;
    public WindowInsetsController mWindowInsetsController;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.material.appbar.SeslImmersiveScrollBehavior$1] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.material.appbar.SeslImmersiveScrollBehavior$2] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.google.android.material.appbar.SeslImmersiveScrollBehavior$5] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.material.appbar.SeslImmersiveScrollBehavior$6] */
    public SeslImmersiveScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCurOffset = 0.0f;
        this.mCanImmersiveScroll = true;
        this.mWindowInsetsController = null;
        this.mOnInsetsChangedListener = null;
        this.mNeedRestoreAnim = true;
        this.mIsSetAutoRestore = true;
        this.isRoundedCornerHide = false;
        this.mCalledHideShowOnLayoutChild = false;
        this.mAnimationHandler = new Handler(Looper.getMainLooper()) { // from class: com.google.android.material.appbar.SeslImmersiveScrollBehavior.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int i;
                if (message.what == 100) {
                    final SeslImmersiveScrollBehavior seslImmersiveScrollBehavior = SeslImmersiveScrollBehavior.this;
                    if (seslImmersiveScrollBehavior.isAppBarHide()) {
                        int i2 = -seslImmersiveScrollBehavior.mAppBarLayout.getTotalScrollRange();
                        final CoordinatorLayout coordinatorLayout = seslImmersiveScrollBehavior.mCoordinatorLayout;
                        final AppBarLayout appBarLayout = seslImmersiveScrollBehavior.mAppBarLayout;
                        seslImmersiveScrollBehavior.mPrevOffset = i2;
                        PathInterpolator pathInterpolator = new PathInterpolator(0.17f, 0.17f, 0.2f, 1.0f);
                        float seslGetCollapsedHeight = (-seslImmersiveScrollBehavior.mAppBarLayout.getHeight()) + seslImmersiveScrollBehavior.mAppBarLayout.seslGetCollapsedHeight();
                        final int[] iArr = {0};
                        ValueAnimator valueAnimator = seslImmersiveScrollBehavior.mOffsetAnimator;
                        if (valueAnimator == null) {
                            ValueAnimator valueAnimator2 = new ValueAnimator();
                            seslImmersiveScrollBehavior.mOffsetAnimator = valueAnimator2;
                            valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.appbar.SeslImmersiveScrollBehavior.7
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                                    if (SeslImmersiveScrollBehavior.this.mTargetView == null) {
                                        Log.e("SeslImmersiveScrollBehavior", "mTargetView is null");
                                        return;
                                    }
                                    int intValue = ((Integer) valueAnimator3.getAnimatedValue()).intValue();
                                    int[] iArr2 = iArr;
                                    SeslImmersiveScrollBehavior seslImmersiveScrollBehavior2 = SeslImmersiveScrollBehavior.this;
                                    int i3 = seslImmersiveScrollBehavior2.mPrevOffset - intValue;
                                    iArr2[0] = i3;
                                    seslImmersiveScrollBehavior2.mTargetView.scrollBy(0, -i3);
                                    SeslImmersiveScrollBehavior.this.setHeaderTopBottomOffset(coordinatorLayout, appBarLayout, intValue);
                                    SeslImmersiveScrollBehavior.this.mPrevOffset = intValue;
                                }
                            });
                        } else {
                            valueAnimator.cancel();
                        }
                        seslImmersiveScrollBehavior.mOffsetAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.appbar.SeslImmersiveScrollBehavior.8
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public final void onAnimationEnd(Animator animator) {
                                super.onAnimationEnd(animator);
                                View view = SeslImmersiveScrollBehavior.this.mNavigationBarBg;
                                if (view != null) {
                                    view.setTranslationY(0.0f);
                                }
                                WindowInsetsAnimationController windowInsetsAnimationController = SeslImmersiveScrollBehavior.this.mAnimationController;
                                if (windowInsetsAnimationController != null) {
                                    windowInsetsAnimationController.finish(true);
                                }
                            }
                        });
                        seslImmersiveScrollBehavior.mOffsetAnimator.setDuration(150L);
                        seslImmersiveScrollBehavior.mOffsetAnimator.setInterpolator(pathInterpolator);
                        seslImmersiveScrollBehavior.mOffsetAnimator.setStartDelay(0L);
                        ValueAnimator valueAnimator3 = seslImmersiveScrollBehavior.mOffsetAnimator;
                        int[] iArr2 = new int[2];
                        if (seslImmersiveScrollBehavior.mNeedRestoreAnim) {
                            i = -seslImmersiveScrollBehavior.mAppBarLayout.getHeight();
                        } else {
                            i = (int) seslGetCollapsedHeight;
                        }
                        iArr2[0] = i;
                        iArr2[1] = (int) seslGetCollapsedHeight;
                        valueAnimator3.setIntValues(iArr2);
                        seslImmersiveScrollBehavior.mOffsetAnimator.start();
                    }
                }
            }
        };
        this.mOffsetChangedListener = new AppBarLayout.OnOffsetChangedListener() { // from class: com.google.android.material.appbar.SeslImmersiveScrollBehavior.2
            /* JADX WARN: Code restructure failed: missing block: B:86:0x0191, code lost:
            
                if (r5 == 1) goto L99;
             */
            @Override // com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onOffsetChanged(com.google.android.material.appbar.AppBarLayout r18, int r19) {
                /*
                    Method dump skipped, instructions count: 649
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.SeslImmersiveScrollBehavior.AnonymousClass2.onOffsetChanged(com.google.android.material.appbar.AppBarLayout, int):void");
            }
        };
        this.mWindowInsetsAnimationControlListener = new WindowInsetsAnimationControlListener() { // from class: com.google.android.material.appbar.SeslImmersiveScrollBehavior.5
            @Override // android.view.WindowInsetsAnimationControlListener
            public final void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
                SeslImmersiveScrollBehavior.this.cancelWindowInsetsAnimationController();
            }

            @Override // android.view.WindowInsetsAnimationControlListener
            public final void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
                SeslImmersiveScrollBehavior seslImmersiveScrollBehavior = SeslImmersiveScrollBehavior.this;
                seslImmersiveScrollBehavior.mAnimationController = null;
                seslImmersiveScrollBehavior.mCancellationSignal = null;
                seslImmersiveScrollBehavior.mShownAtDown = false;
            }

            /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
            
                if (r1 == 1) goto L15;
             */
            @Override // android.view.WindowInsetsAnimationControlListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void onReady(android.view.WindowInsetsAnimationController r6, int r7) {
                /*
                    r5 = this;
                    com.google.android.material.appbar.SeslImmersiveScrollBehavior r5 = com.google.android.material.appbar.SeslImmersiveScrollBehavior.this
                    android.view.View r7 = r5.mDecorView
                    if (r7 == 0) goto L56
                    r7 = 0
                    r5.mCancellationSignal = r7
                    r5.mAnimationController = r6
                    android.content.Context r6 = r5.mContext
                    boolean r6 = com.google.android.material.internal.SeslDisplayUtils.isPinEdgeEnabled(r6)
                    r7 = 0
                    if (r6 == 0) goto L42
                    android.view.WindowInsets r6 = r5.mDecorViewInset
                    int r0 = android.view.WindowInsets.Type.navigationBars()
                    android.graphics.Insets r6 = r6.getInsets(r0)
                    android.content.Context r0 = r5.mContext
                    int r0 = com.google.android.material.internal.SeslDisplayUtils.getPinnedEdgeWidth(r0)
                    android.content.Context r1 = r5.mContext
                    android.content.ContentResolver r1 = r1.getContentResolver()
                    java.lang.String r2 = "active_edge_area"
                    r3 = 1
                    int r1 = android.provider.Settings.System.getInt(r1, r2, r3)
                    int r2 = r6.left
                    if (r0 != r2) goto L3b
                    if (r1 != 0) goto L3b
                    r4 = r0
                    r0 = r7
                    r7 = r4
                    goto L43
                L3b:
                    int r6 = r6.right
                    if (r0 != r6) goto L42
                    if (r1 != r3) goto L42
                    goto L43
                L42:
                    r0 = r7
                L43:
                    int r6 = r5.mStatusBarHeight
                    float r6 = (float) r6
                    int r1 = r5.mNavigationBarHeight
                    float r1 = (float) r1
                    android.view.WindowInsetsAnimationController r5 = r5.mAnimationController
                    int r6 = (int) r6
                    int r1 = (int) r1
                    android.graphics.Insets r6 = android.graphics.Insets.of(r7, r6, r0, r1)
                    r7 = 1065353216(0x3f800000, float:1.0)
                    r5.setInsetsAndAlpha(r6, r7, r7)
                L56:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.SeslImmersiveScrollBehavior.AnonymousClass5.onReady(android.view.WindowInsetsAnimationController, int):void");
            }
        };
        this.mWindowAnimationCallback = new WindowInsetsAnimation.Callback(1) { // from class: com.google.android.material.appbar.SeslImmersiveScrollBehavior.6
            @Override // android.view.WindowInsetsAnimation.Callback
            public final void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                super.onEnd(windowInsetsAnimation);
                SeslImmersiveScrollBehavior seslImmersiveScrollBehavior = SeslImmersiveScrollBehavior.this;
                View view = seslImmersiveScrollBehavior.mContentView;
                if (view != null && !seslImmersiveScrollBehavior.mAppBarLayout.mIsDetachedState) {
                    seslImmersiveScrollBehavior.mDecorViewInset = view.getRootWindowInsets();
                    SeslImmersiveScrollBehavior seslImmersiveScrollBehavior2 = SeslImmersiveScrollBehavior.this;
                    WindowInsets windowInsets = seslImmersiveScrollBehavior2.mDecorViewInset;
                    if (windowInsets != null) {
                        seslImmersiveScrollBehavior2.mContentView.dispatchApplyWindowInsets(windowInsets);
                    }
                }
            }

            @Override // android.view.WindowInsetsAnimation.Callback
            public final WindowInsets onProgress(WindowInsets windowInsets, List list) {
                return windowInsets;
            }
        };
        this.mContext = context;
        updateSystemBarsHeight();
        updateAppBarHeightProportion();
    }

    public static boolean isHideCameraCutout(WindowInsets windowInsets) {
        int systemBars = WindowInsets.Type.systemBars();
        if (windowInsets.getDisplayCutout() == null && windowInsets.getInsets(systemBars).top == 0) {
            return true;
        }
        return false;
    }

    public final boolean canImmersiveScroll() {
        boolean isTouchExplorationEnabled;
        boolean z;
        boolean z2;
        AppBarLayout appBarLayout;
        if (this.mAppBarLayout != null && !isDexEnabled()) {
            if (this.mAppBarLayout.isMouse) {
                prepareImmersiveScroll(false, false);
                return false;
            }
            Context context = this.mContext;
            if (context == null) {
                isTouchExplorationEnabled = false;
            } else {
                isTouchExplorationEnabled = ((AccessibilityManager) context.getSystemService("accessibility")).isTouchExplorationEnabled();
            }
            if (isTouchExplorationEnabled) {
                Log.i("SeslImmersiveScrollBehavior", "Disable ImmersiveScroll due to accessibility enabled");
                updateOrientationState();
                prepareImmersiveScroll(false, true);
                return false;
            }
            AppBarLayout appBarLayout2 = this.mAppBarLayout;
            if (appBarLayout2.mIsActivatedImmersiveScroll) {
                prepareImmersiveScroll(true, false);
                try {
                    z = this.mContext.getApplicationContext().getResources().getBoolean(Resources.getSystem().getIdentifier("config_navBarCanMove", "bool", "android"));
                } catch (Exception e) {
                    KeyguardUCMViewController$StateMachine$$ExternalSyntheticOutline0.m(e, new StringBuilder("ERROR, e : "), "SeslImmersiveScrollBehavior");
                    z = true;
                }
                if (z) {
                    z2 = updateOrientationState();
                } else {
                    z2 = true;
                }
                Context context2 = this.mContext;
                if (context2 != null) {
                    Activity activity = SeslContextUtils.getActivity(context2);
                    if (activity == null && (appBarLayout = this.mAppBarLayout) != null) {
                        this.mContext = appBarLayout.getContext();
                        activity = SeslContextUtils.getActivity(this.mAppBarLayout.getContext());
                    }
                    if (activity != null) {
                        boolean isInMultiWindowMode = activity.isInMultiWindowMode();
                        if (this.mIsMultiWindow != isInMultiWindowMode) {
                            forceRestoreWindowInset(true);
                            cancelWindowInsetsAnimationController();
                        }
                        this.mIsMultiWindow = isInMultiWindowMode;
                        if (isInMultiWindowMode) {
                            return false;
                        }
                    }
                }
                return z2;
            }
            if (appBarLayout2 != null && appBarLayout2.mIsActivatedByUser) {
                cancelWindowInsetsAnimationController();
            }
            prepareImmersiveScroll(false, false);
        }
        return false;
    }

    public final void cancelWindowInsetsAnimationController() {
        boolean z;
        View view = this.mDecorView;
        if (view != null) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            this.mDecorViewInset = rootWindowInsets;
            if (rootWindowInsets != null) {
                boolean isVisible = rootWindowInsets.isVisible(WindowInsets.Type.statusBars());
                boolean isVisible2 = this.mDecorViewInset.isVisible(WindowInsets.Type.navigationBars());
                if (!isVisible && !isVisible2) {
                    z = false;
                } else {
                    z = true;
                }
                this.mShownAtDown = z;
            }
        }
        WindowInsetsAnimationController windowInsetsAnimationController = this.mAnimationController;
        if (windowInsetsAnimationController != null) {
            windowInsetsAnimationController.finish(this.mShownAtDown);
        }
        CancellationSignal cancellationSignal = this.mCancellationSignal;
        if (cancellationSignal != null) {
            cancellationSignal.cancel();
        }
        this.mAnimationController = null;
        this.mCancellationSignal = null;
        this.mShownAtDown = false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (motionEvent.getToolType(0) == 3) {
            z = true;
        }
        if (this.mToolIsMouse != z) {
            this.mToolIsMouse = z;
            AppBarLayout appBarLayout = this.mAppBarLayout;
            if (appBarLayout != null) {
                appBarLayout.isMouse = z;
                dispatchImmersiveScrollEnabled();
            }
        }
    }

    public final boolean dispatchImmersiveScrollEnabled() {
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout != null && !appBarLayout.mIsDetachedState) {
            boolean canImmersiveScroll = canImmersiveScroll();
            setupDecorsFitSystemWindowState(canImmersiveScroll);
            updateAppBarHeightProportion();
            updateSystemBarsHeight();
            return canImmersiveScroll;
        }
        return false;
    }

    public final void findSystemBarsBackground() {
        View view = this.mDecorView;
        if (view != null && this.mContext != null) {
            this.mDecorViewInset = view.getRootWindowInsets();
            this.mDecorView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.appbar.SeslImmersiveScrollBehavior.4
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    SeslImmersiveScrollBehavior.this.mDecorView.getViewTreeObserver().removeOnPreDrawListener(this);
                    SeslImmersiveScrollBehavior seslImmersiveScrollBehavior = SeslImmersiveScrollBehavior.this;
                    seslImmersiveScrollBehavior.mStatusBarBg = seslImmersiveScrollBehavior.mDecorView.findViewById(R.id.statusBarBackground);
                    SeslImmersiveScrollBehavior seslImmersiveScrollBehavior2 = SeslImmersiveScrollBehavior.this;
                    seslImmersiveScrollBehavior2.mNavigationBarBg = seslImmersiveScrollBehavior2.mDecorView.findViewById(R.id.navigationBarBackground);
                    return false;
                }
            });
            updateSystemBarsHeight();
        }
    }

    public final void forceRestoreWindowInset(boolean z) {
        boolean z2;
        if (this.mWindowInsetsController != null) {
            WindowInsets rootWindowInsets = this.mDecorView.getRootWindowInsets();
            this.mDecorViewInset = rootWindowInsets;
            if (rootWindowInsets != null) {
                boolean isVisible = rootWindowInsets.isVisible(WindowInsets.Type.statusBars());
                boolean isVisible2 = this.mDecorViewInset.isVisible(WindowInsets.Type.navigationBars());
                if (isVisible && isVisible2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (!z2 || isAppBarHide() || z) {
                    try {
                        this.mWindowInsetsController.show(WindowInsets.Type.systemBars());
                    } catch (IllegalStateException unused) {
                        Log.w("SeslImmersiveScrollBehavior", "forceRestoreWindowInset: mWindowInsetsController.show failed!");
                    }
                }
            }
        }
    }

    public final boolean isAppBarHide() {
        if (this.mAppBarLayout != null) {
            if (this.mAppBarLayout.getPaddingBottom() + r0.getBottom() < this.mAppBarLayout.seslGetCollapsedHeight()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isDexEnabled() {
        Object obj;
        int i;
        int i2;
        Context context = this.mContext;
        if (context == null) {
            return false;
        }
        Configuration configuration = context.getResources().getConfiguration();
        Class cls = SeslConfigurationReflector.mClass;
        Method declaredMethod = SeslBaseReflector.getDeclaredMethod(cls, "hidden_semDesktopModeEnabled", new Class[0]);
        Object obj2 = null;
        if (declaredMethod != null) {
            obj = SeslBaseReflector.invoke(configuration, declaredMethod, new Object[0]);
        } else {
            obj = null;
        }
        if (obj instanceof Integer) {
            i = ((Integer) obj).intValue();
        } else {
            i = -1;
        }
        Method declaredMethod2 = SeslBaseReflector.getDeclaredMethod(cls, "hidden_SEM_DESKTOP_MODE_ENABLED", new Class[0]);
        if (declaredMethod2 != null) {
            obj2 = SeslBaseReflector.invoke(null, declaredMethod2, new Object[0]);
        }
        if (obj2 instanceof Integer) {
            i2 = ((Integer) obj2).intValue();
        } else {
            i2 = 0;
        }
        if (i != i2) {
            return false;
        }
        return true;
    }

    public final boolean isNavigationBarBottomPosition() {
        if (this.mDecorViewInset == null) {
            if (this.mDecorView == null) {
                this.mDecorView = this.mAppBarLayout.getRootView();
            }
            this.mDecorViewInset = this.mDecorView.getRootWindowInsets();
        }
        WindowInsets windowInsets = this.mDecorViewInset;
        if (windowInsets == null || windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.WindowInsetsController$OnControllableInsetsChangedListener, com.google.android.material.appbar.SeslImmersiveScrollBehavior$3] */
    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public final void layoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        coordinatorLayout.onLayoutChild(appBarLayout, i);
        if (this.mWindowInsetsController != null && this.mOnInsetsChangedListener == null) {
            ?? r5 = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: com.google.android.material.appbar.SeslImmersiveScrollBehavior.3
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i2) {
                    SeslImmersiveScrollBehavior seslImmersiveScrollBehavior = SeslImmersiveScrollBehavior.this;
                    AppBarLayout appBarLayout2 = seslImmersiveScrollBehavior.mAppBarLayout;
                    boolean z = false;
                    if (appBarLayout2 != null && appBarLayout2.mCurrentOrientation == 2) {
                        z = true;
                    }
                    if (z && !seslImmersiveScrollBehavior.isNavigationBarBottomPosition() && !SeslImmersiveScrollBehavior.this.mCalledHideShowOnLayoutChild) {
                        windowInsetsController.hide(WindowInsets.Type.navigationBars());
                        windowInsetsController.show(WindowInsets.Type.navigationBars());
                        windowInsetsController.setSystemBarsBehavior(2);
                        SeslImmersiveScrollBehavior.this.mCalledHideShowOnLayoutChild = true;
                    }
                    SeslImmersiveScrollBehavior seslImmersiveScrollBehavior2 = SeslImmersiveScrollBehavior.this;
                    if (seslImmersiveScrollBehavior2.mIsSetAutoRestore && i2 == 8) {
                        seslImmersiveScrollBehavior2.mDecorViewInset = seslImmersiveScrollBehavior2.mDecorView.getRootWindowInsets();
                        WindowInsets windowInsets = SeslImmersiveScrollBehavior.this.mDecorViewInset;
                        if (windowInsets != null && windowInsets.isVisible(WindowInsets.Type.statusBars()) && SeslImmersiveScrollBehavior.this.isAppBarHide()) {
                            SeslImmersiveScrollBehavior.this.restoreTopAndBottom(true);
                        }
                    }
                }
            };
            this.mOnInsetsChangedListener = r5;
            this.mWindowInsetsController.addOnControllableInsetsChangedListener(r5);
        }
        AppBarLayout appBarLayout2 = this.mAppBarLayout;
        if (appBarLayout2 == null || appBarLayout != appBarLayout2) {
            Log.d("SeslImmersiveScrollBehavior", "initImmViews mNeedInit=false");
            int i2 = 0;
            this.mCanImmersiveScroll = false;
            this.mAppBarLayout = appBarLayout;
            this.mCoordinatorLayout = coordinatorLayout;
            appBarLayout.addOnOffsetChangedListener(this.mOffsetChangedListener);
            if (!this.mAppBarLayout.mIsActivatedByUser && !isDexEnabled()) {
                AppBarLayout appBarLayout3 = this.mAppBarLayout;
                appBarLayout3.mIsActivatedImmersiveScroll = true;
                appBarLayout3.mIsActivatedByUser = false;
                SeslImmersiveScrollBehavior immBehavior = appBarLayout3.getImmBehavior();
                if (immBehavior != null && immBehavior.isAppBarHide()) {
                    immBehavior.restoreTopAndBottom(false);
                }
            }
            View rootView = this.mAppBarLayout.getRootView();
            this.mDecorView = rootView;
            View findViewById = rootView.findViewById(R.id.content);
            this.mContentView = findViewById;
            findViewById.setWindowInsetsAnimationCallback(this.mWindowAnimationCallback);
            findSystemBarsBackground();
            dispatchImmersiveScrollEnabled();
            while (true) {
                if (i2 >= appBarLayout.getChildCount()) {
                    break;
                }
                View childAt = appBarLayout.getChildAt(i2);
                if (this.mCollapsingToolbarLayout != null) {
                    break;
                }
                if (childAt instanceof CollapsingToolbarLayout) {
                    this.mCollapsingToolbarLayout = (CollapsingToolbarLayout) childAt;
                    break;
                }
                i2++;
            }
            View findViewById2 = coordinatorLayout.findViewById(com.android.systemui.R.id.bottom_bar_overlay);
            if (this.mBottomArea == null || findViewById2 != null) {
                this.mBottomArea = findViewById2;
            }
        }
    }

    @Override // com.google.android.material.appbar.HeaderBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        boolean z = false;
        int toolType = motionEvent.getToolType(0);
        if (toolType == 0) {
            return super.onInterceptTouchEvent(coordinatorLayout, appBarLayout, motionEvent);
        }
        if (toolType == 3) {
            z = true;
        }
        if (this.mToolIsMouse != z) {
            this.mToolIsMouse = z;
            appBarLayout.isMouse = z;
        }
        return super.onInterceptTouchEvent(coordinatorLayout, appBarLayout, motionEvent);
    }

    public final void prepareImmersiveScroll(boolean z, boolean z2) {
        if (this.mCanImmersiveScroll != z) {
            this.mCanImmersiveScroll = z;
            forceRestoreWindowInset(z2);
            setupDecorsFitSystemWindowState(z);
            AppBarLayout appBarLayout = this.mAppBarLayout;
            boolean z3 = appBarLayout.mIsCanScroll;
            if (z != z3 && z3 != z) {
                appBarLayout.mIsCanScroll = z;
                appBarLayout.invalidateScrollRanges();
                appBarLayout.requestLayout();
            }
        }
    }

    public final void restoreTopAndBottom(boolean z) {
        AppBarLayout appBarLayout;
        ControlsListingControllerImpl$$ExternalSyntheticOutline0.m(" Restore top and bottom areas [Animate] ", z, "SeslImmersiveScrollBehavior");
        this.mNeedRestoreAnim = z;
        AppBarLayout appBarLayout2 = this.mAppBarLayout;
        AnonymousClass1 anonymousClass1 = this.mAnimationHandler;
        if (appBarLayout2 != null && isAppBarHide()) {
            if (anonymousClass1.hasMessages(100)) {
                anonymousClass1.removeMessages(100);
            }
            anonymousClass1.sendEmptyMessageDelayed(100, 100L);
        }
        if (this.mBottomArea != null && this.mNavigationBarBg != null && !anonymousClass1.hasMessages(100) && (appBarLayout = this.mAppBarLayout) != null && !appBarLayout.mIsActivatedImmersiveScroll) {
            this.mBottomArea.setTranslationY(0.0f);
        }
    }

    public final void setupDecorsFitSystemWindowState(boolean z) {
        AppBarLayout appBarLayout;
        boolean z2;
        View view;
        int i;
        AppBarLayout appBarLayout2;
        if (this.mDecorView != null && (appBarLayout = this.mAppBarLayout) != null) {
            if (this.mContext == null) {
                Context context = appBarLayout.getContext();
                this.mContext = context;
                if (context == null) {
                    return;
                }
            }
            Activity activity = SeslContextUtils.getActivity(this.mContext);
            if (activity == null && (appBarLayout2 = this.mAppBarLayout) != null) {
                this.mContext = appBarLayout2.getContext();
                activity = SeslContextUtils.getActivity(this.mAppBarLayout.getContext());
            }
            if (activity != null) {
                Window window = activity.getWindow();
                boolean z3 = false;
                if (z) {
                    WindowInsets windowInsets = this.mDecorViewInset;
                    if (windowInsets != null && isHideCameraCutout(windowInsets)) {
                        this.mAppBarLayout.mImmersiveTopInset = 0;
                    } else {
                        this.mAppBarLayout.mImmersiveTopInset = this.mStatusBarHeight;
                    }
                    window.setDecorFitsSystemWindows(false);
                    window.getDecorView().setFitsSystemWindows(false);
                    WindowInsets windowInsets2 = this.mDecorViewInset;
                    if (windowInsets2 != null && (i = windowInsets2.getInsets(WindowInsets.Type.statusBars()).top) != 0 && i != this.mStatusBarHeight) {
                        this.mStatusBarHeight = i;
                        this.mAppBarLayout.mImmersiveTopInset = i;
                        return;
                    }
                    return;
                }
                this.mAppBarLayout.mImmersiveTopInset = 0;
                window.setDecorFitsSystemWindows(true);
                window.getDecorView().setFitsSystemWindows(true);
                if (!isNavigationBarBottomPosition()) {
                    AppBarLayout appBarLayout3 = this.mAppBarLayout;
                    if (appBarLayout3 != null && appBarLayout3.mCurrentOrientation == 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        WindowInsetsController windowInsetsController = this.mWindowInsetsController;
                        if (windowInsetsController == null && (view = this.mDecorView) != null && this.mAnimationController == null && windowInsetsController == null) {
                            this.mWindowInsetsController = view.getWindowInsetsController();
                        }
                        WindowInsets rootWindowInsets = this.mDecorView.getRootWindowInsets();
                        this.mDecorViewInset = rootWindowInsets;
                        if (this.mWindowInsetsController != null && rootWindowInsets != null) {
                            if (rootWindowInsets.getInsets(WindowInsets.Type.statusBars()).top != 0) {
                                z3 = true;
                            }
                            if (z3) {
                                try {
                                    this.mWindowInsetsController.hide(WindowInsets.Type.statusBars());
                                } catch (IllegalStateException unused) {
                                    Log.w("SeslImmersiveScrollBehavior", "setupDecorsFitSystemWindowState: mWindowInsetsController.hide failed!");
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final void updateAppBarHeightProportion() {
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout == null) {
            return;
        }
        if (this.mContext == null) {
            Context context = appBarLayout.getContext();
            this.mContext = context;
            if (context == null) {
                return;
            }
        }
        Resources resources = this.mContext.getResources();
        ThreadLocal threadLocal = ResourcesCompat.sTempTypedValue;
        float f = resources.getFloat(com.android.systemui.R.dimen.sesl_appbar_height_proportion);
        float f2 = 0.0f;
        if (f != 0.0f) {
            f2 = (this.mStatusBarHeight / resources.getDisplayMetrics().heightPixels) + f;
        }
        if (this.mCanImmersiveScroll) {
            AppBarLayout appBarLayout2 = this.mAppBarLayout;
            if (!appBarLayout2.mUseCustomHeight && appBarLayout2.mHeightProportion != f2) {
                appBarLayout2.mHeightProportion = f2;
                appBarLayout2.updateInternalHeight();
                return;
            }
            return;
        }
        AppBarLayout appBarLayout3 = this.mAppBarLayout;
        if (!appBarLayout3.mUseCustomHeight && appBarLayout3.mHeightProportion != f) {
            appBarLayout3.mHeightProportion = f;
            appBarLayout3.updateInternalHeight();
        }
    }

    public final boolean updateOrientationState() {
        AppBarLayout appBarLayout = this.mAppBarLayout;
        if (appBarLayout == null) {
            return false;
        }
        int i = appBarLayout.mCurrentOrientation;
        if (this.mPrevOrientation != i) {
            this.mPrevOrientation = i;
            forceRestoreWindowInset(true);
            this.mCalledHideShowOnLayoutChild = false;
        }
        if (i == 1) {
            return true;
        }
        if (i == 2) {
            return false;
        }
        Log.e("SeslImmersiveScrollBehavior", "ERROR, e : AppbarLayout Configuration is wrong");
        return false;
    }

    public final void updateSystemBarsHeight() {
        Context context = this.mContext;
        if (context == null) {
            return;
        }
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            this.mStatusBarHeight = resources.getDimensionPixelSize(identifier);
        }
        int identifier2 = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier2 > 0) {
            this.mNavigationBarHeight = resources.getDimensionPixelSize(identifier2);
        }
        View view = this.mDecorView;
        if (view != null) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            this.mDecorViewInset = rootWindowInsets;
            if (rootWindowInsets != null) {
                this.mNavigationBarHeight = rootWindowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom;
            }
        }
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onMeasureChild(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i, int i2, int i3) {
        dispatchImmersiveScrollEnabled();
        return super.onMeasureChild(coordinatorLayout, appBarLayout, i, i2, i3);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedPreScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
        this.mTargetView = view;
        if (this.mCancellationSignal != null) {
            iArr[0] = i;
            iArr[1] = i2;
        } else {
            super.onNestedPreScroll(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        }
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        this.mTargetView = view;
        super.onNestedScroll(coordinatorLayout, appBarLayout, view, i, i2, i3, i4, i5, iArr);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i, int i2) {
        WindowInsetsAnimationController windowInsetsAnimationController;
        this.mTargetView = view2;
        if (dispatchImmersiveScrollEnabled() && (windowInsetsAnimationController = this.mAnimationController) == null) {
            View view3 = this.mDecorView;
            if (view3 != null && windowInsetsAnimationController == null && this.mWindowInsetsController == null) {
                this.mWindowInsetsController = view3.getWindowInsetsController();
            }
            if (this.mCancellationSignal == null) {
                this.mCancellationSignal = new CancellationSignal();
            }
            int systemBars = WindowInsets.Type.systemBars();
            if (!isHideCameraCutout(this.mDecorViewInset)) {
                try {
                    this.mWindowInsetsController.hide(systemBars);
                } catch (IllegalStateException unused) {
                    Log.w("SeslImmersiveScrollBehavior", "startAnimationControlRequest: mWindowInsetsController.hide failed!");
                }
            }
            this.mWindowInsetsController.setSystemBarsBehavior(2);
            this.mWindowInsetsController.controlWindowInsetsAnimation(systemBars, -1L, null, this.mCancellationSignal, this.mWindowInsetsAnimationControlListener);
        }
        return super.onStartNestedScroll(coordinatorLayout, appBarLayout, view, view2, i, i2);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onStopNestedScroll(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
        this.mTargetView = view;
        super.onStopNestedScroll(coordinatorLayout, appBarLayout, view, i);
    }
}
