package com.android.systemui.statusbar;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.SemWallpaperColors;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Slog;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.core.widget.NestedScrollView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;
import com.android.systemui.Dependency;
import com.android.systemui.SystemUIAppComponentFactoryBase;
import com.android.systemui.animation.LaunchableView;
import com.android.systemui.animation.LaunchableViewDelegate;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.android.systemui.keyguard.KeyguardUnlockInfo;
import com.android.systemui.keyguard.KeyguardVisibilityMonitor;
import com.android.systemui.keyguardimage.WallpaperImageInjectCreator;
import com.android.systemui.shade.NotificationPanelView;
import com.android.systemui.shade.NotificationPanelViewController;
import com.android.systemui.statusbar.KeyguardShortcutManager;
import com.android.systemui.statusbar.notification.stack.NotificationStackScrollLayout;
import com.android.systemui.statusbar.phone.CentralSurfacesImpl;
import com.android.systemui.statusbar.phone.KeyguardBottomAreaViewController;
import com.android.systemui.statusbar.phone.KeyguardSecAffordanceHelper;
import com.android.systemui.statusbar.phone.LockscreenGestureLogger;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.statusbar.policy.KeyguardStateControllerImpl;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.concurrency.MessageRouterImpl;
import com.android.systemui.vibrate.VibrationUtil;
import com.android.systemui.wallpaper.WallpaperUtils;
import com.android.systemui.widget.SystemUIWidgetUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.IntConsumer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyguardSecAffordanceView extends KeyguardAffordanceView implements KeyguardStateController.Callback, LaunchableView {
    public final LaunchableViewDelegate delegate;
    public int mAffordancePivotY;
    public List mAnimatorSet;
    public int mBlurPanelRadius;
    public FrameLayout mBlurPanelRoot;
    public View mBlurPanelView;
    public ValueAnimator mBottomIconAlphaAnimator;
    public final AnonymousClass4 mBottomIconAlphaEndListener;
    public ValueAnimator mBottomIconScaleAnimator;
    public final AnonymousClass13 mBottomIconScaleEndListener;
    public boolean mCanDismissLockScreen;
    public int mCenterX;
    public int mCenterXOnScreen;
    public int mCenterY;
    public int mCenterYOnScreen;
    public View mClockView;
    public boolean mDeviceInteractive;
    public final AnonymousClass2 mDisplayObserver;
    public ImageView mFakeWallpaperView;
    protected boolean mFling;
    public final AnonymousClass14 mHandler;
    public KeyguardSecAffordanceHelper.Callback mHelperCallback;
    public float mImageScale;
    public Animator mInitialPeekAnimator;
    public final AnonymousClass12 mInitialPeekAnimatorEndListener;
    public float mInitialPeekDistance;
    public boolean mInitialPeekShowing;
    public float mInitialTouchX;
    public float mInitialTouchY;
    public boolean mIsDown;
    public boolean mIsLandScape;
    public boolean mIsNoUnlockNeeded;
    public boolean mIsSecure;
    public boolean mIsShortcutForPhone;
    public boolean mIsShortcutLaunching;
    public boolean mIsTargetView;
    public boolean mIsTaskTypeShortcut;
    public boolean mIsTaskTypeShortcutEnabled;
    public boolean mIsTransitIconNeeded;
    public boolean mIsUp;
    public boolean mJustClicked;
    public final KeyguardStateController mKeyguardStateController;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public boolean mLaunchThresoldAcheived;
    public View mLockIconContainerView;
    public View mLockStarContainer;
    public View mLockWallpaperContainer;
    public View mMusicContainer;
    public View mNotificationPanelIconOnlyContainer;
    public NotificationPanelView mNotificationPanelView;
    public NotificationStackScrollLayout mNotificationStackScrollerView;
    public int mOldPanelBackgroundAlpha;
    public View mPanelBackground;
    public PaintDrawable mPanelBackgroundDrawable;
    public View mPanelDimView;
    public ImageView mPanelIcon;
    public boolean mQsExpanded;
    public Animator mRectangleAlphaAnimator;
    public final AnonymousClass11 mRectangleAlphaAnimatorEndListener;
    public final Rect mRectangleBounds;
    public int mRectangleColor;
    public int mRectangleCornerRadius;
    public float mRectangleDistanceCovered;
    public int mRectangleIconAlpha;
    public final Rect mRectangleIconBounds;
    public Drawable mRectangleIconDrawable;
    public int mRectangleIconMargin;
    public float mRectangleIconScale;
    public Animator mRectangleIconScaleAnimator;
    public final AnonymousClass10 mRectangleIconScaleAnimatorEndListener;
    public float mRectangleIconScaleStart;
    public int mRectangleIconSize;
    public final Paint mRectanglePaint;
    public Animator mRectangleScaleAnimator;
    public final AnonymousClass9 mRectangleScaleAnimatorEndListener;
    public float mRectangleScaleStart;
    public ValueAnimator mRectangleShrinkAnimator;
    public final AnonymousClass5 mRectangleShrinkAnimatorEndListener;
    public ValueAnimator mRectangleShrinkeAlphaAnimator;
    public final AnonymousClass6 mRectangleShrinkeAlphaAnimatorEndListener;
    public boolean mRight;
    public int mScreenHeight;
    public int mScreenWidth;
    public final SettingsHelper mSettingsHelper;
    public final AnonymousClass1 mShortcutCallback;
    public boolean mShortcutForCamera;
    public Animator mShortcutLaunchAlphaAnimator;
    public final AnonymousClass8 mShortcutLaunchAlphaAnimatorEndListener;
    public Animator mShortcutLaunchAnimator;
    public final AnonymousClass7 mShortcutLaunchAnimatorEndListener;
    public float mShortcutLaunchDistance;
    public KeyguardShortcutManager mShortcutManager;
    public final TelecomManager mTelecomManager;
    public boolean mTouchCancelled;
    protected TouchHandlePolicy mTouchHandler;
    public final int mTouchSlop;
    public boolean mTrusted;
    public final KeyguardUpdateMonitorCallback mUpdateMonitorCallback;
    public VelocityTracker mVelocityTracker;
    public float mVerticalScale;
    public VibrationUtil mVibrationUtil;
    public final KeyguardSecAffordanceView$$ExternalSyntheticLambda1 mVisibilityListener;
    public WallpaperImageInjectCreator mWallpaperImageCreator;
    public static final Interpolator SCALE_INTERPOLATOR = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
    public static final Interpolator ALPHA_INTERPOLATOR = new PathInterpolator(0.33f, 1.0f, 0.68f, 1.0f);
    public static boolean mIsShowBouncerAnimation = false;
    public static boolean mWaitForReset = false;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class GeneralTouchHandler implements TouchHandlePolicy {
        public /* synthetic */ GeneralTouchHandler(KeyguardSecAffordanceView keyguardSecAffordanceView, int i) {
            this();
        }

        private GeneralTouchHandler() {
        }
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public interface TouchHandlePolicy {
    }

    /* renamed from: $r8$lambda$4vd0Zn5d63IMpqv1U9KSTb-BDHI, reason: not valid java name */
    public static /* synthetic */ Unit m1410$r8$lambda$4vd0Zn5d63IMpqv1U9KSTbBDHI(KeyguardSecAffordanceView keyguardSecAffordanceView, Integer num) {
        keyguardSecAffordanceView.getClass();
        super.setVisibility(num.intValue());
        return Unit.INSTANCE;
    }

    public KeyguardSecAffordanceView(Context context) {
        this(context, null);
    }

    public static void cancelAnimator(Animator animator) {
        if (animator != null) {
            animator.cancel();
        }
    }

    public final void cancelAllAnimators() {
        cancelAnimator(this.mInitialPeekAnimator);
        cancelAnimator(this.mBottomIconAlphaAnimator);
        cancelAnimator(this.mRectangleShrinkAnimator);
        cancelAnimator(this.mRectangleShrinkeAlphaAnimator);
    }

    public final void cancelAnimatorSet() {
        List list = this.mAnimatorSet;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((AnimatorSet) it.next()).cancel();
        }
        this.mAnimatorSet = null;
    }

    public final void init() {
        this.mKeyguardUpdateMonitor.registerCallback(this.mUpdateMonitorCallback);
        this.mTouchHandler = new GeneralTouchHandler(this, 0);
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.setClipChildren(false);
            viewGroup.setClipToPadding(false);
        }
    }

    public final boolean isSecure() {
        if (this.mIsSecure && !this.mTrusted && !this.mCanDismissLockScreen) {
            return true;
        }
        return false;
    }

    public final void launchShortcut(float f, float f2) {
        float hypot;
        boolean z;
        boolean z2;
        long j;
        boolean z3;
        int i;
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker == null) {
            hypot = 0.0f;
        } else {
            velocityTracker.computeCurrentVelocity(1000);
            float xVelocity = this.mVelocityTracker.getXVelocity();
            float yVelocity = this.mVelocityTracker.getYVelocity();
            float f3 = f - this.mInitialTouchX;
            float f4 = f2 - this.mInitialTouchY;
            hypot = ((yVelocity * f4) + (xVelocity * f3)) / ((float) Math.hypot(f3, f4));
        }
        this.mFling = true;
        if (hypot > -4000.0f) {
            this.mIsShortcutLaunching = true;
            boolean isSecure = isSecure();
            if (isSecure && !this.mIsNoUnlockNeeded && !this.mIsTaskTypeShortcut) {
                z = true;
            } else {
                z = false;
            }
            mIsShowBouncerAnimation = z;
            if ((this.mIsNoUnlockNeeded || !isSecure) && this.mIsShortcutLaunching && !this.mIsTaskTypeShortcut) {
                z2 = true;
            } else {
                z2 = false;
            }
            mWaitForReset = z2;
            if (z && this.mIsShortcutForPhone) {
                mIsShowBouncerAnimation = !this.mTelecomManager.isInCall();
            }
            setImageAlpha(0.0f, true);
            Log.i("KeyguardSecAffordanceView", "startShortcutLaunchAnimation");
            ValueAnimator ofFloat = ValueAnimator.ofFloat(this.mRectangleDistanceCovered, this.mScreenWidth);
            this.mShortcutLaunchAnimator = ofFloat;
            long j2 = 300;
            if (this.mShortcutForCamera) {
                j = 300;
            } else {
                j = 450;
            }
            ofFloat.setDuration(j);
            ofFloat.setInterpolator(SCALE_INTERPOLATOR);
            ofFloat.addUpdateListener(new KeyguardSecAffordanceView$$ExternalSyntheticLambda0(this, 6));
            ofFloat.addListener(this.mShortcutLaunchAnimatorEndListener);
            this.mShortcutLaunchAnimator.start();
            Log.i("KeyguardSecAffordanceView", "startShortcutLaunchAlphaAnimation");
            int alpha = this.mRectanglePaint.getAlpha();
            if (!mIsShowBouncerAnimation && !this.mIsTaskTypeShortcut) {
                z3 = false;
            } else {
                z3 = true;
            }
            int[] iArr = new int[2];
            iArr[0] = alpha;
            if (z3) {
                i = 0;
            } else {
                i = 255;
            }
            iArr[1] = i;
            ValueAnimator ofInt = ValueAnimator.ofInt(iArr);
            this.mShortcutLaunchAlphaAnimator = ofInt;
            if (!this.mShortcutForCamera) {
                j2 = 450;
            }
            ofInt.setDuration(j2);
            ofInt.setInterpolator(ALPHA_INTERPOLATOR);
            ofInt.addUpdateListener(new KeyguardSecAffordanceView$$ExternalSyntheticLambda0(this, 0));
            ofInt.addListener(this.mShortcutLaunchAlphaAnimatorEndListener);
            this.mShortcutLaunchAlphaAnimator.start();
            startRectangleScaleAnimation(0.0f);
            return;
        }
        this.mIsShortcutLaunching = false;
        cancelAllAnimators();
        this.mKeyguardUpdateMonitor.setShortcutLaunchInProgress(false);
        startRectangleShrinkAnimation();
        this.mRectanglePaint.setAlpha(0);
    }

    @Override // com.android.systemui.widget.SystemUIImageView, android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        WallpaperUtils.registerSystemUIWidgetCallback(this, SystemUIWidgetUtil.convertFlag("bottom"));
        ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).addObserver(this.mDisplayObserver);
        ((KeyguardVisibilityMonitor) Dependency.get(KeyguardVisibilityMonitor.class)).addVisibilityChangedListener(this.mVisibilityListener);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        boolean z;
        super.onConfigurationChanged(configuration);
        reset();
        if (configuration.orientation == 2) {
            z = true;
        } else {
            z = false;
        }
        this.mIsLandScape = z;
        updateDisplayParameters();
    }

    @Override // com.android.systemui.widget.SystemUIImageView, android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WallpaperUtils.removeSystemUIWidgetCallback(this);
        ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).removeObserver(this.mDisplayObserver);
        KeyguardVisibilityMonitor keyguardVisibilityMonitor = (KeyguardVisibilityMonitor) Dependency.get(KeyguardVisibilityMonitor.class);
        ((ArrayList) keyguardVisibilityMonitor.visibilityChangedListeners).remove(this.mVisibilityListener);
    }

    @Override // com.android.systemui.statusbar.KeyguardAffordanceView, android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.mIsTargetView) {
            if (this.mBlurPanelView != null) {
                int alpha = this.mRectanglePaint.getAlpha();
                if (this.mOldPanelBackgroundAlpha != alpha) {
                    this.mPanelBackgroundDrawable.getPaint().setAlpha(alpha);
                    this.mOldPanelBackgroundAlpha = alpha;
                }
                this.mPanelBackgroundDrawable.setCornerRadius(this.mRectangleCornerRadius);
                View view = this.mPanelBackground;
                Rect rect = this.mRectangleBounds;
                view.setLeftTopRightBottom(rect.left, rect.top, rect.right, rect.bottom);
                this.mPanelIcon.setAlpha(this.mRectangleIconAlpha);
                ImageView imageView = this.mPanelIcon;
                Rect rect2 = this.mRectangleIconBounds;
                imageView.setLeftTopRightBottom(rect2.left, rect2.top, rect2.right, rect2.bottom);
                this.mBlurPanelView.semSetBlurRadius(this.mBlurPanelRadius);
            } else {
                canvas.save();
                canvas.translate(-this.mCenterXOnScreen, -this.mCenterYOnScreen);
                Rect rect3 = this.mRectangleBounds;
                float f = rect3.left;
                float f2 = rect3.top;
                float f3 = rect3.right;
                float f4 = rect3.bottom;
                float f5 = this.mRectangleCornerRadius;
                canvas.drawRoundRect(f, f2, f3, f4, f5, f5, this.mRectanglePaint);
                Drawable drawable = this.mRectangleIconDrawable;
                if (drawable != null) {
                    drawable.mutate().setAlpha(this.mRectangleIconAlpha);
                    this.mRectangleIconDrawable.setBounds(this.mRectangleIconBounds);
                    this.mRectangleIconDrawable.draw(canvas);
                }
                canvas.restore();
            }
        }
        canvas.save();
        float f6 = this.mImageScale;
        canvas.scale(f6, f6, this.mCenterX, this.mCenterY);
        super.onDraw(canvas);
        canvas.restore();
    }

    @Override // com.android.systemui.statusbar.KeyguardAffordanceView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mCenterX = getWidth() / 2;
        this.mCenterY = getHeight() / 2;
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        this.mCenterXOnScreen = iArr[0];
        this.mCenterYOnScreen = iArr[1];
        if (getRootView() != null) {
            this.mScreenHeight = getRootView().getHeight();
            this.mScreenWidth = getRootView().getWidth();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0164  */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instructions count: 1016
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardSecAffordanceView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.systemui.statusbar.policy.KeyguardStateController.Callback
    public final void onUnlockedChanged() {
        KeyguardStateController keyguardStateController = this.mKeyguardStateController;
        this.mIsSecure = ((KeyguardStateControllerImpl) keyguardStateController).mSecure;
        this.mTrusted = ((KeyguardStateControllerImpl) keyguardStateController).mTrusted;
        this.mCanDismissLockScreen = ((KeyguardStateControllerImpl) keyguardStateController).mCanDismissLockScreen;
    }

    @Override // com.android.systemui.widget.SystemUIImageView, android.view.View
    public final boolean performAccessibilityAction(int i, Bundle bundle) {
        if (i == 16) {
            DisplayMetrics displayMetrics = ((ImageView) this).mContext.getResources().getDisplayMetrics();
            if (this.mDeviceInteractive) {
                launchShortcut(displayMetrics.widthPixels, displayMetrics.heightPixels);
                return true;
            }
            return true;
        }
        return super.performAccessibilityAction(i, bundle);
    }

    @Override // com.android.systemui.statusbar.KeyguardAffordanceView, android.view.View
    public final boolean performClick() {
        if (isClickable()) {
            return super.performClick();
        }
        return false;
    }

    public final void reset() {
        if ((mIsShowBouncerAnimation && this.mBlurPanelView != null) || mWaitForReset) {
            ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("WaitForReset right:"), this.mRight, "KeyguardSecAffordanceView");
            return;
        }
        if (hasMessages(1001)) {
            removeMessages(1001);
        }
        ActionBarContextView$$ExternalSyntheticOutline0.m(new StringBuilder("reset right:"), this.mRight, "KeyguardSecAffordanceView");
        this.mIsNoUnlockNeeded = false;
        this.mIsTaskTypeShortcutEnabled = false;
        this.mIsTransitIconNeeded = false;
        this.mIsTaskTypeShortcut = false;
        mIsShowBouncerAnimation = false;
        this.mIsShortcutLaunching = false;
        cancelAnimator(this.mRectangleScaleAnimator);
        cancelAnimator(this.mRectangleIconScaleAnimator);
        cancelAnimator(this.mRectangleAlphaAnimator);
        cancelAllAnimators();
        cancelAnimatorSet();
        if (!this.mQsExpanded && !NotificationPanelViewController.this.mFullScreenModeEnabled) {
            updatePanelViews(0.0f);
        }
        this.mRectangleIconDrawable = null;
        setRectangleColor();
        this.mFling = false;
        this.mRectangleIconBounds.set(0, 0, 0, 0);
        this.mRectangleBounds.set(0, 0, 0, 0);
        invalidate();
        resetBlurRectangleView();
        resetFakeWallpaperView();
    }

    public final void resetBlurRectangleView() {
        View view = this.mBlurPanelView;
        if (view == null) {
            return;
        }
        view.semSetBlurEnabled(false);
        this.mPanelBackground.setBackground(null);
        this.mPanelIcon.setImageDrawable(null);
        this.mBlurPanelRoot.setVisibility(8);
    }

    public final void resetFakeWallpaperView() {
        ImageView imageView = this.mFakeWallpaperView;
        if (imageView == null) {
            return;
        }
        imageView.setImageBitmap(null);
        this.mFakeWallpaperView.setVisibility(8);
    }

    public final void setImageAlpha(float f, boolean z) {
        if (!this.mFling) {
            cancelAnimator(this.mBottomIconAlphaAnimator);
            int i = (int) (f * 255.0f);
            if (i != getImageAlpha()) {
                final Drawable background = getBackground();
                if (!z) {
                    if (i <= 0) {
                        i = 1;
                    }
                    if (background != null) {
                        background.mutate().setAlpha(i);
                    }
                    setImageAlpha(i);
                    return;
                }
                ValueAnimator ofInt = ValueAnimator.ofInt(getImageAlpha(), i);
                this.mBottomIconAlphaAnimator = ofInt;
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView$$ExternalSyntheticLambda3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                        Drawable drawable = background;
                        Interpolator interpolator = KeyguardSecAffordanceView.SCALE_INTERPOLATOR;
                        keyguardSecAffordanceView.getClass();
                        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        if (drawable != null) {
                            drawable.mutate().setAlpha(intValue);
                        }
                        if (intValue <= 0) {
                            intValue = 1;
                        }
                        keyguardSecAffordanceView.setImageAlpha(intValue);
                    }
                });
                ofInt.addListener(this.mBottomIconAlphaEndListener);
                ofInt.setInterpolator(ALPHA_INTERPOLATOR);
                ofInt.setDuration(300L);
                ofInt.setStartDelay(0L);
                ofInt.start();
            }
        }
    }

    public final void setImageScale(float f, boolean z) {
        cancelAnimator(this.mBottomIconScaleAnimator);
        float f2 = this.mImageScale;
        if (f != f2) {
            if (!z) {
                this.mImageScale = f;
                invalidate();
                return;
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, f);
            this.mBottomIconScaleAnimator = ofFloat;
            ofFloat.addUpdateListener(new KeyguardSecAffordanceView$$ExternalSyntheticLambda0(this, 2));
            ofFloat.addListener(this.mBottomIconScaleEndListener);
            ofFloat.setInterpolator(SCALE_INTERPOLATOR);
            ofFloat.setDuration(300L);
            ofFloat.start();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
    
        if (r4 > (r7 + r8)) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0089, code lost:
    
        r4 = 0;
        r9 = 0;
        r11 = 0;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0087, code lost:
    
        if (r14 < (r7 * (-1))) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setRectangleBounds(float r18) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardSecAffordanceView.setRectangleBounds(float):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void setRectangleColor() {
        /*
            r2 = this;
            boolean r0 = r2.mShortcutForCamera
            if (r0 != 0) goto L1e
            com.android.systemui.util.SettingsHelper r0 = r2.mSettingsHelper
            com.android.systemui.util.SettingsHelper$ItemMap r0 = r0.mItemLists
            java.lang.String r1 = "display_night_theme"
            com.android.systemui.util.SettingsHelper$Item r0 = r0.get(r1)
            int r0 = r0.getIntValue()
            r1 = 1
            if (r0 != r1) goto L16
            goto L17
        L16:
            r1 = 0
        L17:
            if (r1 == 0) goto L1a
            goto L1e
        L1a:
            r0 = -1
            r2.mRectangleColor = r0
            goto L22
        L1e:
            r0 = -16777216(0xffffffffff000000, float:-1.7014118E38)
            r2.mRectangleColor = r0
        L22:
            android.graphics.Paint r0 = r2.mRectanglePaint
            int r1 = r2.mRectangleColor
            r0.setColor(r1)
            android.graphics.drawable.PaintDrawable r0 = r2.mPanelBackgroundDrawable
            if (r0 == 0) goto L36
            android.graphics.Paint r0 = r0.getPaint()
            int r2 = r2.mRectangleColor
            r0.setColor(r2)
        L36:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.KeyguardSecAffordanceView.setRectangleColor():void");
    }

    @Override // com.android.systemui.animation.LaunchableView
    public final void setShouldBlockVisibilityChanges(boolean z) {
        this.delegate.setShouldBlockVisibilityChanges(z);
    }

    public final void setUScaleAnimator(View view, float f, float f2) {
        int i;
        if (view == null) {
            return;
        }
        int y = (int) view.getY();
        View view2 = this.mClockView;
        if (view == view2) {
            view.setPivotX(view2.getWidth() / 2.0f);
            int i2 = this.mAffordancePivotY;
            if (y < i2) {
                view.setPivotY(i2);
            } else {
                view.setPivotY(i2 * (-1));
            }
        } else {
            if (view == this.mNotificationStackScrollerView) {
                view.setPivotX(r0.getWidth() / 2.0f);
                view.setPivotY(this.mAffordancePivotY);
            } else if (view == this.mNotificationPanelIconOnlyContainer) {
                if (view2 != null) {
                    i = view2.getHeight();
                } else {
                    i = 0;
                }
                view.setPivotX(this.mNotificationPanelIconOnlyContainer.getWidth() / 2.0f);
                view.setPivotY(this.mAffordancePivotY - i);
            }
        }
        view.setScaleX(f);
        view.setScaleY(f);
        view.setAlpha(f2);
    }

    @Override // com.android.systemui.widget.SystemUIImageView, android.widget.ImageView, android.view.View
    public final void setVisibility(int i) {
        this.delegate.setVisibility(i);
    }

    public final void startRectangleAlphaAnimation(int i) {
        cancelAnimator(this.mRectangleAlphaAnimator);
        ValueAnimator ofInt = ValueAnimator.ofInt(this.mRectanglePaint.getAlpha(), i);
        this.mRectangleAlphaAnimator = ofInt;
        ofInt.setDuration(200L);
        ofInt.setInterpolator(ALPHA_INTERPOLATOR);
        ofInt.addUpdateListener(new KeyguardSecAffordanceView$$ExternalSyntheticLambda0(this, 5));
        ofInt.addListener(this.mRectangleAlphaAnimatorEndListener);
        this.mRectangleAlphaAnimator.start();
    }

    public final void startRectangleIconScaleAnimation(float f) {
        long j;
        cancelAnimator(this.mRectangleIconScaleAnimator);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.mRectangleIconScaleStart, f);
        this.mRectangleIconScaleAnimator = ofFloat;
        if (this.mShortcutForCamera) {
            j = 300;
        } else {
            j = 450;
        }
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(SCALE_INTERPOLATOR);
        ofFloat.addUpdateListener(new KeyguardSecAffordanceView$$ExternalSyntheticLambda0(this, 4));
        ofFloat.addListener(this.mRectangleIconScaleAnimatorEndListener);
        this.mRectangleIconScaleAnimator.start();
    }

    public final void startRectangleScaleAnimation(float f) {
        long j;
        cancelAnimator(this.mRectangleScaleAnimator);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.mRectangleScaleStart, f);
        this.mRectangleScaleAnimator = ofFloat;
        if (this.mShortcutForCamera) {
            j = 300;
        } else {
            j = 450;
        }
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(SCALE_INTERPOLATOR);
        ofFloat.addUpdateListener(new KeyguardSecAffordanceView$$ExternalSyntheticLambda0(this, 3));
        ofFloat.addListener(this.mRectangleScaleAnimatorEndListener);
        this.mRectangleScaleAnimator.start();
    }

    public final void startRectangleShrinkAnimation() {
        long j;
        Log.i("KeyguardSecAffordanceView", "startRectangleShrinkAnimation");
        setImageAlpha(1.0f, true);
        setImageScale(1.0f, true);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.mRectangleDistanceCovered, 0.0f);
        this.mRectangleShrinkAnimator = ofFloat;
        if (this.mInitialPeekShowing) {
            j = 200;
        } else {
            j = 450;
        }
        ofFloat.setDuration(j);
        ofFloat.setInterpolator(SCALE_INTERPOLATOR);
        ofFloat.addUpdateListener(new KeyguardSecAffordanceView$$ExternalSyntheticLambda0(this, 1));
        ofFloat.addListener(this.mRectangleShrinkAnimatorEndListener);
        this.mRectangleShrinkAnimator.start();
    }

    public final void updateDisplayParameters() {
        Resources resources = ((ImageView) this).mContext.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.text_size_display_1_material);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(com.android.systemui.R.dimen.status_bar_height);
        if (!this.mIsLandScape) {
            this.mScreenWidth = displayMetrics.widthPixels;
            this.mScreenHeight = displayMetrics.heightPixels + dimensionPixelSize + dimensionPixelSize2;
            this.mVerticalScale = 0.15f;
            this.mInitialPeekDistance = resources.getDimensionPixelSize(com.android.systemui.R.dimen.keyguard_affordance_initial_view_out);
        } else {
            this.mScreenHeight = displayMetrics.heightPixels;
            this.mScreenWidth = displayMetrics.widthPixels + dimensionPixelSize + dimensionPixelSize2;
            this.mVerticalScale = 0.1f;
            this.mInitialPeekDistance = resources.getDimensionPixelSize(com.android.systemui.R.dimen.keyguard_affordance_initial_view_out_landscape);
        }
        if (getRootView() != null) {
            this.mScreenHeight = getRootView().getHeight();
            this.mScreenWidth = getRootView().getWidth();
        }
        this.mAffordancePivotY = this.mScreenHeight / 2;
        float dimensionPixelSize3 = resources.getDimensionPixelSize(com.android.systemui.R.dimen.shortcut_launch_thresold);
        this.mShortcutLaunchDistance = dimensionPixelSize3;
        this.mRectangleIconMargin = (int) (dimensionPixelSize3 / 2.0f);
        this.mRectangleIconSize = (int) (resources.getDimensionPixelSize(com.android.systemui.R.dimen.keyguard_affordance_app_icon_size) * 0.95f);
    }

    public final void updatePanelViews(float f) {
        int i;
        float f2;
        float max = Math.max(0.0f, f - this.mInitialPeekDistance);
        View view = this.mPanelDimView;
        if (view != null) {
            if (!this.mIsDown) {
                f2 = 0.3f;
                float f3 = (max / this.mShortcutLaunchDistance) * 0.3f;
                if (f3 <= 0.3f) {
                    f2 = f3;
                }
            } else {
                f2 = 0.0f;
            }
            view.setAlpha(f2);
        }
        if (this.mBlurPanelView != null) {
            this.mBlurPanelRadius = 0;
            if (!this.mIsDown) {
                int i2 = (int) ((max / this.mShortcutLaunchDistance) * 200.0f);
                this.mBlurPanelRadius = i2;
                if (i2 > 200) {
                    this.mBlurPanelRadius = 200;
                }
            }
        }
        float f4 = 0.95f;
        float f5 = 1.0f;
        if (this.mIsDown) {
            View view2 = this.mLockWallpaperContainer;
            if (view2 != null) {
                int[] iArr = new int[2];
                view2.getLocationOnScreen(iArr);
                int i3 = iArr[1];
                if (view2 != this.mClockView && view2 != this.mMusicContainer) {
                    if (view2 == this.mNotificationStackScrollerView) {
                        view2.setPivotX(r7.getWidth() / 2.0f);
                        view2.setPivotY(this.mAffordancePivotY);
                    } else {
                        if (view2 == this.mNotificationPanelIconOnlyContainer) {
                            view2.setPivotX(r7.getWidth() / 2.0f);
                            View view3 = this.mClockView;
                            if (view3 != null) {
                                i = view3.getHeight();
                            } else {
                                i = 0;
                            }
                            view2.setPivotY(this.mAffordancePivotY - i);
                        }
                    }
                } else {
                    view2.setPivotX(r9.getWidth() / 2.0f);
                    int i4 = this.mAffordancePivotY;
                    if (i3 < i4) {
                        view2.setPivotY(i4);
                    } else {
                        view2.setPivotY(i4 * (-1));
                    }
                }
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, "scaleX", 1.0f);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, "scaleY", 1.0f);
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view2, "alpha", 1.0f);
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
                animatorSet.setDuration(400L);
                animatorSet.setInterpolator(SCALE_INTERPOLATOR);
                animatorSet.start();
                if (this.mAnimatorSet == null) {
                    this.mAnimatorSet = new ArrayList();
                }
                ((ArrayList) this.mAnimatorSet).add(animatorSet);
            }
        } else {
            View view4 = this.mLockWallpaperContainer;
            float f6 = 1.0f - ((max / this.mShortcutLaunchDistance) * 0.050000012f);
            if (f6 < 0.95f) {
                f6 = 0.95f;
            }
            if (max == 0.0f) {
                f6 = 1.0f;
            }
            setUScaleAnimator(view4, f6, 1.0f);
        }
        if (this.mIsDown) {
            setUScaleAnimator(this.mNotificationPanelView, 1.0f, 1.0f);
        } else {
            float f7 = this.mShortcutLaunchDistance;
            float f8 = 1.0f - (max / f7);
            if (f8 < 0.0f) {
                f8 = 0.0f;
            }
            float f9 = 1.0f - ((max / f7) * 0.050000012f);
            if (f9 >= 0.95f) {
                f4 = f9;
            }
            if (max != 0.0f) {
                f5 = f4;
            }
            setUScaleAnimator(this.mNotificationPanelView, f5, f8);
        }
        updateRectangleCornerRadius(-1.0f);
        setRectangleBounds(f);
    }

    public final void updateRectangleCornerRadius(float f) {
        if (!this.mIsDown) {
            if (f == -1.0f) {
                this.mRectangleCornerRadius = 100;
                return;
            }
            float f2 = this.mShortcutLaunchDistance;
            int sqrt = (int) ((Math.sqrt(1.0f - ((f - f2) / (this.mScreenWidth - f2))) * 85.0d) + 15.0d);
            this.mRectangleCornerRadius = sqrt;
            this.mRectangleCornerRadius = Math.max(0, sqrt);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [boolean] */
    public final void updateRectangleIconDrawable(boolean z) {
        Drawable drawable;
        boolean z2;
        Drawable drawable2;
        boolean z3;
        byte b;
        ?? r0 = this.mRight;
        KeyguardShortcutManager keyguardShortcutManager = this.mShortcutManager;
        keyguardShortcutManager.getClass();
        Drawable drawable3 = null;
        if (r0 >= 0 && r0 < 2) {
            KeyguardShortcutManager.ShortcutData[] shortcutDataArr = keyguardShortcutManager.mShortcuts;
            if (z) {
                KeyguardShortcutManager.ShortcutData shortcutData = shortcutDataArr[r0 == true ? 1 : 0];
                Intrinsics.checkNotNull(shortcutData);
                drawable = shortcutData.mPanelTransitDrawable;
            } else {
                KeyguardShortcutManager.ShortcutData shortcutData2 = shortcutDataArr[r0 == true ? 1 : 0];
                Intrinsics.checkNotNull(shortcutData2);
                drawable = shortcutData2.mPanelDrawable;
            }
        } else {
            NestedScrollView$$ExternalSyntheticOutline0.m("IllegalArgument : ", r0 == true ? 1 : 0, "KeyguardShortcutManager");
            drawable = null;
        }
        this.mRectangleIconDrawable = drawable;
        KeyguardShortcutManager keyguardShortcutManager2 = this.mShortcutManager;
        keyguardShortcutManager2.getClass();
        Intent intent = new Intent("android.intent.action.MAIN");
        KeyguardShortcutManager.ShortcutData shortcutData3 = keyguardShortcutManager2.mShortcuts[r0 == true ? 1 : 0];
        Intrinsics.checkNotNull(shortcutData3);
        intent.setComponent(shortcutData3.mComponentName);
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        PackageManager packageManager = keyguardShortcutManager2.mPm;
        ResolveInfo resolveActivityAsUser = packageManager.resolveActivityAsUser(intent, 129, currentUser);
        ActivityInfo activityInfo = resolveActivityAsUser.activityInfo;
        if (activityInfo != null) {
            String str = activityInfo.packageName;
            if (keyguardShortcutManager2.mSettingsHelper.mItemLists.get("current_sec_appicon_theme_package").getStringValue() == null) {
                drawable3 = keyguardShortcutManager2.getSamsungAppIconDrawable(str);
            }
            if (drawable3 == null) {
                drawable3 = activityInfo.loadIcon(packageManager, true, 1);
            }
            if (drawable3 == null) {
                drawable3 = activityInfo.loadDefaultIcon(packageManager);
            }
            z2 = keyguardShortcutManager2.isblendNeeded(resolveActivityAsUser.activityInfo, drawable3);
        } else {
            Slog.d("KeyguardShortcutManager", "updateShortcut : " + (r0 == true ? 1 : 0) + " activityInfo is null, resolveInfo is : " + resolveActivityAsUser + ",  return FALSE");
            z2 = false;
        }
        if (z2 && (drawable2 = this.mRectangleIconDrawable) != null) {
            Bitmap bitmap = ((BitmapDrawable) drawable2).getBitmap();
            KeyguardShortcutManager keyguardShortcutManager3 = this.mShortcutManager;
            KeyguardShortcutManager.ShortcutData shortcutData4 = keyguardShortcutManager3.mShortcuts[r0 == true ? 1 : 0];
            Intrinsics.checkNotNull(shortcutData4);
            if (!KeyguardShortcutManager.isSamsungCameraPackage(shortcutData4.mComponentName)) {
                if (this.mSettingsHelper.mItemLists.get("display_night_theme").getIntValue() == 1) {
                    b = true;
                } else {
                    b = false;
                }
                if (b == false) {
                    z3 = true;
                    this.mRectangleIconDrawable = new BitmapDrawable(keyguardShortcutManager3.grayInvertDrawable(bitmap, z3, null, false, true));
                }
            }
            z3 = false;
            this.mRectangleIconDrawable = new BitmapDrawable(keyguardShortcutManager3.grayInvertDrawable(bitmap, z3, null, false, true));
        }
        ImageView imageView = this.mPanelIcon;
        if (imageView != null) {
            imageView.setImageDrawable(this.mRectangleIconDrawable);
        }
    }

    @Override // com.android.systemui.widget.SystemUIImageView, com.android.systemui.widget.SystemUIWidgetCallback
    public final void updateStyle(long j, SemWallpaperColors semWallpaperColors) {
        super.updateStyle(j, semWallpaperColors);
        this.mShortcutManager.updateShortcuts();
    }

    public KeyguardSecAffordanceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyguardSecAffordanceView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$2] */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$11] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$12] */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$13] */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$14] */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$4] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$5] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$6] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$7] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$8] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$9] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$10] */
    /* JADX WARN: Type inference failed for: r6v6, types: [com.android.systemui.statusbar.KeyguardSecAffordanceView$$ExternalSyntheticLambda1] */
    /* JADX WARN: Type inference failed for: r6v7, types: [com.android.systemui.util.SettingsHelper$OnChangedCallback, com.android.systemui.statusbar.KeyguardSecAffordanceView$1] */
    public KeyguardSecAffordanceView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mRectangleIconBounds = new Rect();
        this.mRectangleBounds = new Rect();
        this.mDeviceInteractive = true;
        this.mTouchCancelled = false;
        this.mRight = false;
        this.mIsTargetView = false;
        this.mJustClicked = false;
        this.mIsShortcutForPhone = false;
        this.mLaunchThresoldAcheived = false;
        this.mQsExpanded = false;
        this.mIsUp = false;
        this.mInitialPeekShowing = false;
        this.mIsDown = false;
        this.mIsTaskTypeShortcut = false;
        this.mIsTaskTypeShortcutEnabled = false;
        this.mIsTransitIconNeeded = false;
        this.mIsNoUnlockNeeded = false;
        this.mTouchSlop = 5;
        this.mRectangleIconAlpha = 255;
        this.mOldPanelBackgroundAlpha = 0;
        this.mBlurPanelRadius = 0;
        this.mRectangleCornerRadius = 100;
        this.mRectangleDistanceCovered = 0.0f;
        this.mImageScale = 1.0f;
        this.mVerticalScale = 0.15f;
        this.mRectangleIconScale = 1.0f;
        this.mVisibilityListener = new IntConsumer() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView$$ExternalSyntheticLambda1
            @Override // java.util.function.IntConsumer
            public final void accept(int i3) {
                KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                Interpolator interpolator = KeyguardSecAffordanceView.SCALE_INTERPOLATOR;
                keyguardSecAffordanceView.getClass();
                if (i3 != 0) {
                    if (KeyguardSecAffordanceView.mWaitForReset || (KeyguardSecAffordanceView.mIsShowBouncerAnimation && keyguardSecAffordanceView.mBlurPanelView != null)) {
                        KeyguardSecAffordanceView.mWaitForReset = false;
                        KeyguardSecAffordanceView.mIsShowBouncerAnimation = false;
                        keyguardSecAffordanceView.reset();
                    }
                }
            }
        };
        ?? r6 = new SettingsHelper.OnChangedCallback() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.1
            @Override // com.android.systemui.util.SettingsHelper.OnChangedCallback
            public final void onChanged(Uri uri) {
                if (uri != null && Settings.System.getUriFor("white_lockscreen_wallpaper").equals(uri)) {
                    KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                    keyguardSecAffordanceView.mSettingsHelper.isWhiteKeyguardWallpaper();
                    keyguardSecAffordanceView.getClass();
                    keyguardSecAffordanceView.setRectangleColor();
                }
            }
        };
        this.mShortcutCallback = r6;
        this.mDisplayObserver = new DisplayLifecycle.Observer() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.2
            @Override // com.android.systemui.keyguard.DisplayLifecycle.Observer
            public final void onDisplayChanged(int i3) {
                Interpolator interpolator = KeyguardSecAffordanceView.SCALE_INTERPOLATOR;
                KeyguardSecAffordanceView.this.updateDisplayParameters();
            }
        };
        this.mUpdateMonitorCallback = new KeyguardUpdateMonitorCallback() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.3
            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onKeyguardBouncerStateChanged(boolean z) {
                if (z && KeyguardSecAffordanceView.mIsShowBouncerAnimation) {
                    KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                    if (keyguardSecAffordanceView.mBlurPanelView != null) {
                        KeyguardSecAffordanceView.mIsShowBouncerAnimation = false;
                        keyguardSecAffordanceView.mHandler.sendEmptyMessageDelayed(1001, 150L);
                    }
                }
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onStartedGoingToSleep(int i3) {
                KeyguardSecAffordanceView.this.mDeviceInteractive = false;
            }

            @Override // com.android.keyguard.KeyguardUpdateMonitorCallback
            public final void onStartedWakingUp() {
                KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                keyguardSecAffordanceView.mDeviceInteractive = true;
                keyguardSecAffordanceView.mIsTargetView = false;
            }
        };
        this.mBottomIconAlphaEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView.this.mBottomIconAlphaAnimator = null;
            }
        };
        this.mRectangleShrinkAnimatorEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                keyguardSecAffordanceView.mRectangleShrinkAnimator = null;
                keyguardSecAffordanceView.mFling = false;
                keyguardSecAffordanceView.mRectangleIconBounds.set(0, 0, 0, 0);
                KeyguardSecAffordanceView.this.mRectangleBounds.set(0, 0, 0, 0);
                KeyguardSecAffordanceView.this.resetBlurRectangleView();
                KeyguardSecAffordanceView.this.resetFakeWallpaperView();
            }
        };
        this.mRectangleShrinkeAlphaAnimatorEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView.this.mRectangleShrinkeAlphaAnimator = null;
            }
        };
        this.mShortcutLaunchAnimatorEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                keyguardSecAffordanceView.mFling = false;
                KeyguardSecAffordanceHelper.Callback callback = keyguardSecAffordanceView.mHelperCallback;
                boolean z = keyguardSecAffordanceView.mRight;
                boolean isSecure = keyguardSecAffordanceView.isSecure();
                NotificationPanelViewController notificationPanelViewController = NotificationPanelViewController.this;
                notificationPanelViewController.mIsLaunchTransitionRunning = true;
                notificationPanelViewController.mLaunchAnimationEndRunnable = null;
                KeyguardUnlockInfo.setUnlockTrigger(KeyguardUnlockInfo.UnlockTrigger.TRIGGER_SHORTCUT);
                int i3 = (int) (0.0f / ((CentralSurfacesImpl) notificationPanelViewController.mCentralSurfaces).mDisplayMetrics.density);
                int abs = Math.abs(i3);
                int abs2 = Math.abs(i3);
                LockscreenGestureLogger lockscreenGestureLogger = notificationPanelViewController.mLockscreenGestureLogger;
                if (!z) {
                    lockscreenGestureLogger.write(190, abs, abs2);
                } else if (3 == notificationPanelViewController.mLastCameraLaunchSource) {
                    lockscreenGestureLogger.write(189, abs, abs2);
                }
                KeyguardBottomAreaViewController keyguardBottomAreaViewController = notificationPanelViewController.mKeyguardBottomAreaViewController;
                if (keyguardBottomAreaViewController != null) {
                    keyguardBottomAreaViewController.launchAffordance(z);
                }
                notificationPanelViewController.mShortcut = z ? 1 : 0;
                if (!isSecure && !((KeyguardShortcutManager) Dependency.get(KeyguardShortcutManager.class)).isTaskType(notificationPanelViewController.mShortcut)) {
                    ((MessageRouterImpl) ((CentralSurfacesImpl) notificationPanelViewController.mCentralSurfaces).mMessageRouter).sendMessageDelayed(1003, 5000L);
                }
                if (!notificationPanelViewController.mKeyguardStateController.mKeyguardGoingAway && !((KeyguardShortcutManager) Dependency.get(KeyguardShortcutManager.class)).isNoUnlockNeeded(notificationPanelViewController.mShortcut)) {
                    notificationPanelViewController.mSecAffordanceHelper.reset();
                }
                KeyguardSecAffordanceView keyguardSecAffordanceView2 = KeyguardSecAffordanceView.this;
                if (keyguardSecAffordanceView2.mIsTaskTypeShortcut) {
                    keyguardSecAffordanceView2.mKeyguardUpdateMonitor.setShortcutLaunchInProgress(false);
                }
                NotificationPanelViewController notificationPanelViewController2 = NotificationPanelViewController.this;
                notificationPanelViewController2.mIsLaunchTransitionRunning = false;
                notificationPanelViewController2.mIsLaunchTransitionFinished = true;
                Runnable runnable = notificationPanelViewController2.mLaunchAnimationEndRunnable;
                if (runnable != null) {
                    runnable.run();
                    notificationPanelViewController2.mLaunchAnimationEndRunnable = null;
                }
                notificationPanelViewController2.mSecAffordanceHelper.isShortcutPreviewSwipingInProgress = false;
                ((CentralSurfacesImpl) notificationPanelViewController2.mCentralSurfaces).mStatusBarKeyguardViewManager.readyForKeyguardDone();
                notificationPanelViewController2.mIsLaunchTransitionFinished = !((KeyguardShortcutManager) Dependency.get(KeyguardShortcutManager.class)).isTaskType(notificationPanelViewController2.mShortcut);
                KeyguardSecAffordanceView.this.mShortcutLaunchAnimator = null;
            }
        };
        this.mShortcutLaunchAlphaAnimatorEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                keyguardSecAffordanceView.mShortcutLaunchAlphaAnimator = null;
                keyguardSecAffordanceView.mIsShortcutLaunching = false;
                if (keyguardSecAffordanceView.mIsTaskTypeShortcut) {
                    KeyguardSecAffordanceView.mWaitForReset = false;
                    keyguardSecAffordanceView.reset();
                }
            }
        };
        this.mRectangleScaleAnimatorEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView.this.mRectangleScaleAnimator = null;
            }
        };
        this.mRectangleIconScaleAnimatorEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView.this.mRectangleIconScaleAnimator = null;
            }
        };
        this.mRectangleAlphaAnimatorEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.11
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView.this.mRectangleAlphaAnimator = null;
            }
        };
        this.mInitialPeekAnimatorEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.12
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                keyguardSecAffordanceView.mInitialPeekAnimator = null;
                keyguardSecAffordanceView.mFling = false;
            }
        };
        this.mBottomIconScaleEndListener = new AnimatorListenerAdapter() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.13
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                KeyguardSecAffordanceView.this.mBottomIconScaleAnimator = null;
            }
        };
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView.14
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what == 1001) {
                    Log.d("KeyguardSecAffordanceView", "reset timeout");
                    KeyguardSecAffordanceView keyguardSecAffordanceView = KeyguardSecAffordanceView.this;
                    keyguardSecAffordanceView.mIsShortcutLaunching = false;
                    KeyguardSecAffordanceView.mIsShowBouncerAnimation = false;
                    KeyguardSecAffordanceView.mWaitForReset = false;
                    NotificationPanelViewController.this.mSecAffordanceHelper.reset();
                }
            }
        };
        this.delegate = new LaunchableViewDelegate(this, new Function1() { // from class: com.android.systemui.statusbar.KeyguardSecAffordanceView$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return KeyguardSecAffordanceView.m1410$r8$lambda$4vd0Zn5d63IMpqv1U9KSTbBDHI(KeyguardSecAffordanceView.this, (Integer) obj);
            }
        });
        SystemUIAppComponentFactoryBase.Companion.getClass();
        SystemUIAppComponentFactoryBase.systemUIInitializer.getSysUIComponent().inject(this);
        ((ImageView) this).mContext = context;
        this.mRectanglePaint = new Paint();
        KeyguardStateController keyguardStateController = (KeyguardStateController) Dependency.get(KeyguardStateController.class);
        this.mKeyguardStateController = keyguardStateController;
        this.mKeyguardUpdateMonitor = (KeyguardUpdateMonitor) Dependency.get(KeyguardUpdateMonitor.class);
        this.mShortcutManager = (KeyguardShortcutManager) Dependency.get(KeyguardShortcutManager.class);
        SettingsHelper settingsHelper = (SettingsHelper) Dependency.get(SettingsHelper.class);
        this.mSettingsHelper = settingsHelper;
        KeyguardStateControllerImpl keyguardStateControllerImpl = (KeyguardStateControllerImpl) keyguardStateController;
        keyguardStateControllerImpl.addCallback(this);
        this.mIsSecure = keyguardStateControllerImpl.mSecure;
        this.mTrusted = keyguardStateControllerImpl.mTrusted;
        this.mCanDismissLockScreen = keyguardStateControllerImpl.mCanDismissLockScreen;
        settingsHelper.registerCallback(r6, Settings.System.getUriFor("white_lockscreen_wallpaper"));
        settingsHelper.isWhiteKeyguardWallpaper();
        setRectangleColor();
        this.mIsLandScape = ((ImageView) this).mContext.getResources().getConfiguration().orientation == 2;
        updateDisplayParameters();
        this.mTelecomManager = TelecomManager.from(((ImageView) this).mContext);
    }
}
