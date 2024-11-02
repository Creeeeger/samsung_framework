package com.android.systemui.decor;

import android.content.Context;
import android.view.View;
import com.android.systemui.R;
import com.android.systemui.RegionInterceptingFrameLayout;
import com.android.systemui.ScreenDecorations;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class CutoutDecorProviderImpl extends BoundDecorProvider {
    public final int alignedBound;
    public final int viewId;

    public CutoutDecorProviderImpl(int i) {
        int i2;
        this.alignedBound = i;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    i2 = R.id.display_cutout_bottom;
                } else {
                    i2 = R.id.display_cutout_right;
                }
            } else {
                i2 = R.id.display_cutout;
            }
        } else {
            i2 = R.id.display_cutout_left;
        }
        this.viewId = i2;
    }

    @Override // com.android.systemui.decor.BoundDecorProvider
    public final int getAlignedBound() {
        return this.alignedBound;
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final int getViewId() {
        return this.viewId;
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final View inflateView(Context context, RegionInterceptingFrameLayout regionInterceptingFrameLayout, int i, int i2) {
        ScreenDecorations.DisplayCutoutView displayCutoutView = new ScreenDecorations.DisplayCutoutView(context, this.alignedBound);
        displayCutoutView.setId(this.viewId);
        displayCutoutView.setColor(i2);
        regionInterceptingFrameLayout.addView(displayCutoutView);
        if (i != displayCutoutView.mRotation) {
            displayCutoutView.mRotation = i;
            displayCutoutView.displayRotation = i;
            displayCutoutView.updateCutout();
            displayCutoutView.updateProtectionBoundingPath();
        }
        return displayCutoutView;
    }

    @Override // com.android.systemui.decor.DecorProvider
    public final void onReloadResAndMeasure(View view, int i, int i2, int i3, String str) {
        ScreenDecorations.DisplayCutoutView displayCutoutView;
        if (view instanceof ScreenDecorations.DisplayCutoutView) {
            displayCutoutView = (ScreenDecorations.DisplayCutoutView) view;
        } else {
            displayCutoutView = null;
        }
        if (displayCutoutView != null) {
            displayCutoutView.setColor(i3);
            if (i2 != displayCutoutView.mRotation) {
                displayCutoutView.mRotation = i2;
                displayCutoutView.displayRotation = i2;
                displayCutoutView.updateCutout();
                displayCutoutView.updateProtectionBoundingPath();
            }
            displayCutoutView.updateConfiguration(str);
        }
    }
}
