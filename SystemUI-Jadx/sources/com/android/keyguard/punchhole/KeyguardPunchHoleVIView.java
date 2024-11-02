package com.android.keyguard.punchhole;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.picker.adapter.layoutmanager.AutoFitGridLayoutManager$$ExternalSyntheticOutline0;
import com.airbnb.lottie.LottieAnimationView;
import com.android.keyguard.KeyguardCarrierViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.punchhole.KeyguardPunchHoleVIViewController;
import com.android.keyguard.punchhole.VIDirectorFactory;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.samsung.systemui.splugins.lockstar.PluginLockStar;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class KeyguardPunchHoleVIView extends FrameLayout {
    public String TAG;
    public String mAppliedVIFileName;
    public Rect mBoundingRect;
    public int mCurrentAnimation;
    public final Handler mHandler;
    public boolean mIsAnimationPlaying;
    public boolean mIsConfigUpdateNecessary;
    public int mLastDisplayDeviceType;
    public boolean mLastUpdatedFolderOpened;
    public int mLastUpdatedRotation;
    public int mLastUpdatedScreenHeight;
    public int mLastUpdatedScreenWidth;
    public FrameLayout mLockStarVIView;
    public int mPreparedState;
    public KeyguardPunchHoleVIViewController.AnonymousClass1 mPunchHoleCallback;
    public VIDirector mVIDirector;
    public LottieAnimationView mVIView;
    public Rect mViViewLocation;
    public final KeyguardPunchHoleVIView$$ExternalSyntheticLambda2 updateVILocationRunnable;

    public KeyguardPunchHoleVIView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        VIDirector vIDirector = this.mVIDirector;
        if (vIDirector == null) {
            String str = this.TAG;
            StringBuilder sb = new StringBuilder("onApplyWindowInsets() return - mVIDirector is null (");
            VIDirectorFactory.Companion.getClass();
            sb.append(VIDirectorFactory.vendorName);
            sb.append(")");
            Log.e(str, sb.toString());
            return super.onApplyWindowInsets(windowInsets);
        }
        if (vIDirector.mIsBasedOnType && vIDirector.mVIType.equals("circle")) {
            DisplayCutout displayCutout = windowInsets.getDisplayCutout();
            if (displayCutout != null) {
                for (Rect rect : displayCutout.getBoundingRects()) {
                    Log.d(this.TAG, "BoundingRect = " + rect);
                    this.mBoundingRect = rect;
                    VIDirector vIDirector2 = this.mVIDirector;
                    boolean z = true;
                    if (getLayoutDirection() != 1) {
                        z = false;
                    }
                    this.mViViewLocation = vIDirector2.getVIViewLocation(rect, z);
                }
                this.mHandler.removeCallbacks(this.updateVILocationRunnable);
                this.mHandler.post(this.updateVILocationRunnable);
            }
            return WindowInsets.CONSUMED;
        }
        return super.onApplyWindowInsets(windowInsets);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        VIDirector vIDirector = null;
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
            this.mLastUpdatedFolderOpened = ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened;
            Context context = getContext();
            boolean z = this.mLastUpdatedFolderOpened;
            VIDirectorFactory.Companion.getClass();
            VIDirector vIDirector2 = new VIDirector(context);
            vIDirector2.mIsFolderOpened = z;
            if (vIDirector2.initialize()) {
                vIDirector = vIDirector2;
            }
            this.mVIDirector = vIDirector;
        } else {
            VIDirectorFactory.Companion companion = VIDirectorFactory.Companion;
            Context context2 = getContext();
            companion.getClass();
            VIDirector vIDirector3 = new VIDirector(context2);
            if (vIDirector3.initialize()) {
                vIDirector = vIDirector3;
            }
            this.mVIDirector = vIDirector;
        }
        if (this.mVIDirector == null) {
            String str = this.TAG;
            StringBuilder sb = new StringBuilder("onFinishInflate() return - mVIDirector is null (");
            VIDirectorFactory.Companion.getClass();
            sb.append(VIDirectorFactory.vendorName);
            sb.append(")");
            Log.e(str, sb.toString());
            setVisibility(8);
            return;
        }
        setVisibility(0);
        setLayoutDirection(0);
        this.mVIView = (LottieAnimationView) findViewById(R.id.keyguard_punch_hole_vi_animation_view);
        this.mLockStarVIView = (FrameLayout) findViewById(R.id.lock_star_punch_hole_vi_animation_view);
    }

    public final void setPrepareState(int i) {
        if (this.mPreparedState == i) {
            return;
        }
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(new StringBuilder("setPrepareState() "), this.mPreparedState, " -> ", i, this.TAG);
        this.mPreparedState = i;
    }

    public final void updateScreenConfig() {
        boolean z;
        boolean z2;
        VIDirector vIDirector = this.mVIDirector;
        if (vIDirector == null) {
            String str = this.TAG;
            StringBuilder sb = new StringBuilder("updateScreenConfig() return - mVIDirector is null (");
            VIDirectorFactory.Companion.getClass();
            sb.append(VIDirectorFactory.vendorName);
            sb.append(")");
            Log.e(str, sb.toString());
            return;
        }
        int screenRotation = vIDirector.getScreenRotation();
        int screenWidth = this.mVIDirector.getScreenWidth();
        int screenHeight = this.mVIDirector.getScreenHeight();
        boolean z3 = true;
        if (!((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened && this.mLastDisplayDeviceType != 0) {
            z = false;
        } else {
            z = true;
        }
        if (LsRune.SECURITY_SUB_DISPLAY_LOCK && this.mLastUpdatedFolderOpened != z) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (this.mLastUpdatedRotation != screenRotation || this.mLastUpdatedScreenWidth != screenWidth || this.mLastUpdatedScreenHeight != screenHeight || z2) {
            String str2 = this.TAG;
            StringBuilder sb2 = new StringBuilder("updateScreenConfig() rotation ");
            AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(sb2, this.mLastUpdatedRotation, " -> ", screenRotation, ", screen width ");
            AutoFitGridLayoutManager$$ExternalSyntheticOutline0.m(sb2, this.mLastUpdatedScreenWidth, " -> ", screenWidth, ", screen height ");
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(sb2, this.mLastUpdatedScreenHeight, " -> ", screenHeight, str2);
            this.mLastUpdatedRotation = screenRotation;
            this.mLastUpdatedScreenWidth = screenWidth;
            this.mLastUpdatedScreenHeight = screenHeight;
            if (z2) {
                KeyguardCarrierViewController$$ExternalSyntheticOutline0.m(new StringBuilder("updateScreenConfig() isFolderOpened "), this.mLastUpdatedFolderOpened, " -> ", z, this.TAG);
                this.mLastUpdatedFolderOpened = z;
                KeyguardPunchHoleVIViewController.AnonymousClass1 anonymousClass1 = this.mPunchHoleCallback;
                if (anonymousClass1 != null) {
                    KeyguardPunchHoleVIViewController keyguardPunchHoleVIViewController = KeyguardPunchHoleVIViewController.this;
                    PluginLockStar pluginLockStar = keyguardPunchHoleVIViewController.mPluginLockStarManager.mPluginLockStar;
                    if (pluginLockStar == null || !pluginLockStar.isLockStarEnabled()) {
                        z3 = false;
                    }
                    if (keyguardPunchHoleVIViewController.mIsLockStarEnabled != z3) {
                        keyguardPunchHoleVIViewController.stopVI();
                        keyguardPunchHoleVIViewController.mIsLockStarEnabled = z3;
                    }
                }
                Context context = getContext();
                VIDirectorFactory.Companion.getClass();
                VIDirector vIDirector2 = new VIDirector(context);
                vIDirector2.mIsFolderOpened = z;
                if (!vIDirector2.initialize()) {
                    vIDirector2 = null;
                }
                this.mVIDirector = vIDirector2;
            }
            this.mHandler.removeCallbacks(this.updateVILocationRunnable);
            this.mHandler.post(this.updateVILocationRunnable);
            this.mIsConfigUpdateNecessary = false;
        }
        KeyguardPunchHoleVIViewController.AnonymousClass1 anonymousClass12 = this.mPunchHoleCallback;
        if (anonymousClass12 != null) {
            KeyguardPunchHoleVIViewController.this.startVI();
        }
    }

    public final void updateVILocation() {
        boolean z;
        PointF pointF;
        Rect rect;
        int i;
        int width;
        boolean z2;
        boolean z3;
        VIDirector vIDirector = this.mVIDirector;
        if (vIDirector == null) {
            String str = this.TAG;
            StringBuilder sb = new StringBuilder("updateVILocation() return - mVIDirector is null (");
            VIDirectorFactory.Companion.getClass();
            sb.append(VIDirectorFactory.vendorName);
            sb.append(")");
            Log.e(str, sb.toString());
            return;
        }
        boolean z4 = vIDirector.mIsBasedOnType;
        int i2 = 0;
        if (z4) {
            if (vIDirector.mVIType.equals("circle")) {
                if (this.mViViewLocation.isEmpty() || !this.mBoundingRect.isEmpty()) {
                    VIDirector vIDirector2 = this.mVIDirector;
                    Rect rect2 = this.mBoundingRect;
                    if (getLayoutDirection() == 1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    this.mViViewLocation = vIDirector2.getVIViewLocation(rect2, z3);
                }
            } else {
                VIDirector vIDirector3 = this.mVIDirector;
                Rect rect3 = this.mBoundingRect;
                if (getLayoutDirection() == 1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.mViViewLocation = vIDirector3.getVIViewLocation(rect3, z2);
            }
            rect = this.mViViewLocation;
        } else {
            int i3 = this.mCurrentAnimation;
            if (getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            Rect rect4 = new Rect();
            PointF pointF2 = vIDirector.mCameraLocPercent;
            if (i3 == 1) {
                pointF = vIDirector.mFaceVISizePercent;
            } else {
                pointF = null;
            }
            if (pointF == null) {
                ListPopupWindow$$ExternalSyntheticOutline0.m("getVIViewLocation() - return; vi size is not supported, animation = ", i3, "KeyguardPunchHoleVIView_VIDirector");
            } else {
                vIDirector.setViViewLocation(rect4, pointF2, pointF);
                int screenWidth = vIDirector.getScreenWidth();
                if (z) {
                    int i4 = rect4.left;
                    rect4.left = rect4.right - screenWidth;
                    rect4.right = i4 - screenWidth;
                }
            }
            rect = rect4;
        }
        int screenRotation = this.mVIDirector.getScreenRotation();
        String str2 = this.TAG;
        StringBuilder sb2 = new StringBuilder("updateVILocation() ");
        sb2.append(rect);
        sb2.append(" isBasedOnType = ");
        sb2.append(z4);
        sb2.append(" rotation = ");
        KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(sb2, this.mLastUpdatedRotation, " -> ", screenRotation, str2);
        this.mLastUpdatedRotation = screenRotation;
        LottieAnimationView lottieAnimationView = this.mVIView;
        int screenRotation2 = this.mVIDirector.getScreenRotation();
        if (screenRotation2 != 1) {
            if (screenRotation2 != 3) {
                i = 0;
            } else {
                i = 90;
            }
        } else {
            i = 270;
        }
        lottieAnimationView.setRotation(i);
        this.mVIView.setTranslationX(rect.left);
        this.mVIView.setTranslationY(rect.top);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mVIView.getLayoutParams();
        if (rect.width() < 0) {
            width = -rect.width();
        } else {
            width = rect.width();
        }
        layoutParams.width = width;
        layoutParams.height = rect.height();
        this.mVIView.setLayoutParams(layoutParams);
        FrameLayout frameLayout = this.mLockStarVIView;
        int screenRotation3 = this.mVIDirector.getScreenRotation();
        if (screenRotation3 != 1) {
            if (screenRotation3 == 3) {
                i2 = 90;
            }
        } else {
            i2 = 270;
        }
        frameLayout.setRotation(i2);
        this.mLockStarVIView.setTranslationX(rect.left);
        this.mLockStarVIView.setTranslationY(rect.top);
        this.mLockStarVIView.setLayoutParams(layoutParams);
    }

    public KeyguardPunchHoleVIView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.keyguard.punchhole.KeyguardPunchHoleVIView$$ExternalSyntheticLambda2] */
    public KeyguardPunchHoleVIView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "KeyguardPunchHoleVIView";
        this.updateVILocationRunnable = new Runnable() { // from class: com.android.keyguard.punchhole.KeyguardPunchHoleVIView$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                KeyguardPunchHoleVIView.this.updateVILocation();
            }
        };
        this.mViViewLocation = new Rect();
        this.mBoundingRect = new Rect();
        this.mPreparedState = 0;
        this.mCurrentAnimation = 0;
        this.mIsAnimationPlaying = false;
        this.mIsConfigUpdateNecessary = false;
        this.mAppliedVIFileName = null;
        this.mLastUpdatedRotation = 0;
        this.mLastUpdatedScreenWidth = 0;
        this.mLastUpdatedScreenHeight = 0;
        this.mLastDisplayDeviceType = -1;
        this.mHandler = (Handler) Dependency.get(Dependency.MAIN_HANDLER);
    }
}
