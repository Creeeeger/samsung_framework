package com.android.systemui.biometrics;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class UdfpsAnimationView extends FrameLayout {
    public float mDialogSuggestedAlpha;
    public float mNotificationShadeExpansion;
    public boolean mPauseAuth;
    public boolean mUseExpandedOverlay;

    public UdfpsAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDialogSuggestedAlpha = 1.0f;
        this.mNotificationShadeExpansion = 0.0f;
        this.mUseExpandedOverlay = false;
    }

    public int calculateAlpha() {
        int i;
        float f = this.mNotificationShadeExpansion;
        if (f >= 0.4f) {
            i = 0;
        } else {
            i = (int) ((1.0f - (f / 0.4f)) * 255.0f);
        }
        int i2 = (int) (i * this.mDialogSuggestedAlpha);
        if (!this.mPauseAuth) {
            return 255;
        }
        return i2;
    }

    public boolean dozeTimeTick() {
        return false;
    }

    public abstract UdfpsFpDrawable getDrawable();

    public void onDisplayConfiguring() {
        UdfpsFpDrawable drawable = getDrawable();
        if (!drawable.isDisplayConfigured) {
            drawable.isDisplayConfigured = true;
            drawable.invalidateSelf();
        }
        getDrawable().invalidateSelf();
    }

    public void onDisplayUnconfigured() {
        UdfpsFpDrawable drawable = getDrawable();
        if (drawable.isDisplayConfigured) {
            drawable.isDisplayConfigured = false;
            drawable.invalidateSelf();
        }
        getDrawable().invalidateSelf();
    }

    public void onSensorRectUpdated(RectF rectF) {
        UdfpsFpDrawable drawable = getDrawable();
        drawable.getClass();
        int height = ((int) rectF.height()) / 8;
        drawable.fingerprintDrawable.setBounds(new Rect(((int) rectF.left) + height, ((int) rectF.top) + height, ((int) rectF.right) - height, ((int) rectF.bottom) - height));
        drawable.invalidateSelf();
    }

    public int updateAlpha() {
        int calculateAlpha = calculateAlpha();
        getDrawable().setAlpha(calculateAlpha);
        if (this.mPauseAuth && calculateAlpha == 0 && getParent() != null) {
            ((ViewGroup) getParent()).setVisibility(4);
        } else {
            ((ViewGroup) getParent()).setVisibility(0);
        }
        return calculateAlpha;
    }
}
