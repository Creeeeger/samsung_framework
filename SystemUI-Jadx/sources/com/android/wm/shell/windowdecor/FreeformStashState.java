package com.android.wm.shell.windowdecor;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.view.SurfaceControl;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class FreeformStashState {
    public int mAnimType;
    public boolean mAnimating;
    public int mFreeformThickness;
    public FreeformColorOverlay mStashDimOverlay;
    public int mStashType;
    public ActivityManager.RunningTaskInfo mTaskInfo;
    public float mScale = 1.0f;
    public final Rect mLastFreeformBoundsBeforeStash = new Rect();
    public float mFreeformStashYFraction = 0.0f;

    public final void createStashDimOverlay(SurfaceControl surfaceControl, Context context, ActivityManager.RunningTaskInfo runningTaskInfo, int i) {
        if (this.mStashDimOverlay == null && surfaceControl != null && surfaceControl.isValid()) {
            this.mStashDimOverlay = new FreeformColorOverlay();
            this.mTaskInfo = runningTaskInfo;
            Color valueOf = Color.valueOf(context.getColor(R.color.freeform_stash_dim_overlay));
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.sec_decor_outline_radius_stashed_dim);
            FreeformColorOverlay freeformColorOverlay = this.mStashDimOverlay;
            Rect bounds = runningTaskInfo.configuration.windowConfiguration.getBounds();
            int i2 = this.mFreeformThickness;
            synchronized (freeformColorOverlay.mLock) {
                if (freeformColorOverlay.isLeashValidLocked()) {
                    freeformColorOverlay.mTransaction.show(freeformColorOverlay.mLeash);
                    freeformColorOverlay.mTransaction.setLayer(freeformColorOverlay.mLeash, 20002);
                    freeformColorOverlay.mTransaction.setColor(freeformColorOverlay.mLeash, valueOf.getComponents());
                    freeformColorOverlay.mTransaction.setAlpha(freeformColorOverlay.mLeash, 0.0f);
                    freeformColorOverlay.mTransaction.reparent(freeformColorOverlay.mLeash, surfaceControl);
                    freeformColorOverlay.mTransaction.setPosition(freeformColorOverlay.mLeash, -i2, (-i) - i2);
                    int i3 = i2 * 2;
                    freeformColorOverlay.mCropRect.set(0, 0, bounds.width() + i3, bounds.height() + i + i3);
                    freeformColorOverlay.mTransaction.setCrop(freeformColorOverlay.mLeash, freeformColorOverlay.mCropRect);
                    freeformColorOverlay.mTransaction.setCornerRadius(freeformColorOverlay.mLeash, dimensionPixelSize);
                    freeformColorOverlay.mTransaction.apply();
                }
            }
        }
    }

    public final void destroyStashDimOverlay() {
        FreeformColorOverlay freeformColorOverlay = this.mStashDimOverlay;
        if (freeformColorOverlay != null) {
            synchronized (freeformColorOverlay.mLock) {
                if (freeformColorOverlay.isLeashValidLocked()) {
                    freeformColorOverlay.mTransaction.remove(freeformColorOverlay.mLeash);
                    freeformColorOverlay.mTransaction.apply();
                    freeformColorOverlay.mLeash = null;
                }
            }
            this.mStashDimOverlay = null;
        }
    }

    public final float getStashScaleOffsetX(int i) {
        boolean z;
        if (isLeftStashed()) {
            float f = i;
            float f2 = this.mScale;
            return (f - (f * f2)) - (this.mFreeformThickness * f2);
        }
        if (this.mStashType == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return this.mFreeformThickness * this.mScale;
        }
        return 0.0f;
    }

    public final boolean isLeftStashed() {
        if (this.mStashType == 1) {
            return true;
        }
        return false;
    }

    public final boolean isStashed() {
        boolean z;
        if (isLeftStashed()) {
            return true;
        }
        if (this.mStashType == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return true;
        }
        return false;
    }

    public final void setDimOverlayAlpha(float f) {
        FreeformColorOverlay freeformColorOverlay = this.mStashDimOverlay;
        if (freeformColorOverlay != null) {
            synchronized (freeformColorOverlay.mLock) {
                if (freeformColorOverlay.isLeashValidLocked()) {
                    freeformColorOverlay.mTransaction.show(freeformColorOverlay.mLeash);
                    freeformColorOverlay.mTransaction.setAlpha(freeformColorOverlay.mLeash, f);
                    freeformColorOverlay.mTransaction.apply();
                }
            }
        }
    }

    public final void setStashed(int i) {
        if (this.mStashType != i) {
            this.mStashType = i;
            if (i == 0) {
                destroyStashDimOverlay();
            }
        }
    }

    public final void updateDimBounds(int i, int i2, Rect rect) {
        FreeformColorOverlay freeformColorOverlay = this.mStashDimOverlay;
        if (freeformColorOverlay != null) {
            synchronized (freeformColorOverlay.mLock) {
                if (freeformColorOverlay.isLeashValidLocked()) {
                    freeformColorOverlay.mTransaction.setPosition(freeformColorOverlay.mLeash, -i, (-i2) - i);
                    int i3 = i * 2;
                    freeformColorOverlay.mCropRect.set(0, 0, rect.width() + i3, rect.height() + i2 + i3);
                    freeformColorOverlay.mTransaction.setCrop(freeformColorOverlay.mLeash, freeformColorOverlay.mCropRect).apply();
                }
            }
        }
    }
}
