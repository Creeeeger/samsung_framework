package com.android.systemui.statusbar.phone;

import android.content.res.Resources;
import android.util.MathUtils;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.PathInterpolator;
import com.android.app.animation.Interpolators;
import com.android.keyguard.BouncerPanelExpansionCalculator;
import com.android.systemui.R;
import com.android.systemui.doze.util.BurnInHelperKt;
import com.android.systemui.shade.NotificationPanelViewController$$ExternalSyntheticLambda15;
import com.android.systemui.statusbar.notification.NotificationUtils;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public class KeyguardClockPositionAlgorithm {
    public boolean mBypassEnabled;
    public float mClockBottom;
    public int mContainerTopPadding;
    public float mCurrentBurnInOffsetY;
    public int mCutoutTopInset = 0;
    public float mDarkAmount;
    public boolean mIsClockTopAligned;
    public boolean mIsSplitShade;
    public int mKeyguardStatusHeight;
    public int mMaxBurnInPreventionOffsetX;
    public int mMaxBurnInPreventionOffsetYClock;
    public int mMinTopMargin;
    public float mOverStretchAmount;
    public float mPanelExpansion;
    public float mQsExpansion;
    public int mSplitShadeTargetTopMargin;
    public int mStatusViewBottomMargin;
    public float mUdfpsTop;
    public int mUnlockedStackScrollerPadding;
    public int mUserSwitchHeight;
    public int mUserSwitchPreferredY;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Result {
        public float clockAlpha;
        public float clockScale;
        public int clockX;
        public int clockY;
        public int clockYFullyDozing;
        public List contentsContainerPosition;
        public int stackScrollerPadding;
        public int stackScrollerPaddingExpanded;
        public int userSwitchY;
    }

    public int getBottomMarginY() {
        return 0;
    }

    public final int getClockY(float f, float f2) {
        int i;
        float f3;
        boolean z;
        if (this.mIsSplitShade) {
            i = this.mSplitShadeTargetTopMargin;
        } else {
            i = this.mMinTopMargin;
        }
        float lerp = MathUtils.lerp((-this.mKeyguardStatusHeight) / 3.0f, i, ((PathInterpolator) Interpolators.FAST_OUT_LINEAR_IN).getInterpolation(f));
        int i2 = this.mMaxBurnInPreventionOffsetYClock;
        float f4 = lerp - i2;
        float f5 = this.mCutoutTopInset;
        if (f4 < f5) {
            f3 = f5 - f4;
        } else {
            f3 = 0.0f;
        }
        float f6 = this.mUdfpsTop;
        if (f6 > -1.0f) {
            z = true;
        } else {
            z = false;
        }
        if (z && !this.mIsClockTopAligned) {
            float f7 = this.mClockBottom;
            if (f6 < f7) {
                int i3 = ((int) (lerp - f5)) / 2;
                if (i2 >= i3) {
                    i2 = i3;
                }
                f3 = -i2;
            } else {
                float f8 = lerp - f5;
                float f9 = f6 - f7;
                int i4 = ((int) (f9 + f8)) / 2;
                if (i2 >= i4) {
                    i2 = i4;
                }
                f3 = (f9 - f8) / 2.0f;
            }
        }
        float burnInOffset = BurnInHelperKt.getBurnInOffset(i2 * 2, false) - i2;
        float f10 = lerp + burnInOffset + f3;
        this.mCurrentBurnInOffsetY = MathUtils.lerp(0.0f, burnInOffset, f2);
        return (int) (MathUtils.lerp(lerp, f10, f2) + this.mOverStretchAmount);
    }

    public float getLockscreenNotifPadding(float f) {
        if (this.mBypassEnabled) {
            return this.mUnlockedStackScrollerPadding - f;
        }
        if (this.mIsSplitShade) {
            return (this.mSplitShadeTargetTopMargin + this.mUserSwitchHeight) - f;
        }
        return this.mMinTopMargin + this.mKeyguardStatusHeight;
    }

    public boolean isPanelExpanded() {
        return false;
    }

    public void loadDimens(Resources resources) {
        this.mStatusViewBottomMargin = resources.getDimensionPixelSize(R.dimen.keyguard_status_view_bottom_margin);
        this.mSplitShadeTargetTopMargin = resources.getDimensionPixelSize(R.dimen.keyguard_split_shade_top_margin);
        this.mContainerTopPadding = resources.getDimensionPixelSize(R.dimen.keyguard_clock_top_margin);
        this.mMaxBurnInPreventionOffsetX = resources.getDimensionPixelSize(R.dimen.burn_in_prevention_offset_x);
        this.mMaxBurnInPreventionOffsetYClock = resources.getDimensionPixelSize(R.dimen.burn_in_prevention_offset_y_clock);
    }

    public void run(Result result) {
        int i;
        int clockY;
        int i2;
        int i3;
        int clockY2 = getClockY(this.mPanelExpansion, this.mDarkAmount);
        result.clockY = clockY2;
        result.userSwitchY = (int) (MathUtils.lerp((-this.mKeyguardStatusHeight) - this.mUserSwitchHeight, this.mUserSwitchPreferredY, ((PathInterpolator) Interpolators.FAST_OUT_LINEAR_IN).getInterpolation(this.mPanelExpansion)) + this.mOverStretchAmount);
        result.clockYFullyDozing = getClockY(1.0f, 1.0f);
        float max = Math.max(0.0f, clockY2 / Math.max(1.0f, getClockY(1.0f, this.mDarkAmount)));
        if (!this.mIsSplitShade) {
            max *= 1.0f - MathUtils.saturate(this.mQsExpansion / 0.3f);
        }
        result.clockAlpha = MathUtils.lerp(((AccelerateInterpolator) Interpolators.ACCELERATE).getInterpolation(max), 1.0f, this.mDarkAmount);
        boolean z = this.mBypassEnabled;
        if (z) {
            i = (int) (this.mUnlockedStackScrollerPadding + this.mOverStretchAmount);
        } else if (this.mIsSplitShade) {
            i = ((clockY2 + 0) + this.mUserSwitchHeight) - ((int) this.mCurrentBurnInOffsetY);
        } else {
            i = clockY2 + this.mKeyguardStatusHeight;
        }
        result.stackScrollerPadding = i;
        if (z) {
            i3 = this.mUnlockedStackScrollerPadding;
        } else {
            if (this.mIsSplitShade) {
                clockY = getClockY(1.0f, this.mDarkAmount);
                i2 = this.mUserSwitchHeight;
            } else {
                clockY = getClockY(1.0f, this.mDarkAmount);
                i2 = this.mKeyguardStatusHeight;
            }
            i3 = clockY + i2;
        }
        result.stackScrollerPaddingExpanded = i3;
        result.clockX = (int) NotificationUtils.interpolate(0.0f, BurnInHelperKt.getBurnInOffset(this.mMaxBurnInPreventionOffsetX, true), this.mDarkAmount);
        result.clockScale = NotificationUtils.interpolate(BurnInHelperKt.zigzag(((float) System.currentTimeMillis()) / 60000.0f, 0.2f, 181.0f) + 0.8f, 1.0f, 1.0f - this.mDarkAmount);
    }

    public void setup(int i, float f, int i2, int i3, int i4, float f2, int i5, int i6, int i7, NotificationPanelViewController$$ExternalSyntheticLambda15 notificationPanelViewController$$ExternalSyntheticLambda15) {
        this.mMinTopMargin = Math.max(this.mContainerTopPadding, i3) + i;
        int i8 = BouncerPanelExpansionCalculator.$r8$clinit;
        this.mPanelExpansion = MathUtils.constrain((f - 0.7f) / 0.3f, 0.0f, 1.0f);
        this.mKeyguardStatusHeight = this.mStatusViewBottomMargin + i2;
        this.mUserSwitchHeight = i3;
        this.mUserSwitchPreferredY = i4;
        this.mDarkAmount = f2;
        this.mOverStretchAmount = 0.0f;
        this.mBypassEnabled = false;
        this.mUnlockedStackScrollerPadding = i5;
        this.mQsExpansion = 0.0f;
        this.mCutoutTopInset = 0;
        this.mIsSplitShade = false;
        this.mUdfpsTop = 0.0f;
        this.mClockBottom = 0.0f;
        this.mIsClockTopAligned = false;
    }
}
