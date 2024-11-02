package com.google.android.setupcompat.template;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import com.android.systemui.R;
import com.google.android.setupcompat.PartnerCustomizationLayout;
import com.google.android.setupcompat.R$styleable;
import com.google.android.setupcompat.partnerconfig.PartnerConfig;
import com.google.android.setupcompat.partnerconfig.PartnerConfigHelper;
import com.google.android.setupcompat.view.StatusBarBackgroundLayout;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class StatusBarMixin implements Mixin {
    public final View decorView;
    public final LinearLayout linearLayout;
    public final PartnerCustomizationLayout partnerCustomizationLayout;
    public final StatusBarBackgroundLayout statusBarLayout;

    public StatusBarMixin(PartnerCustomizationLayout partnerCustomizationLayout, Window window, AttributeSet attributeSet, int i) {
        boolean z;
        this.partnerCustomizationLayout = partnerCustomizationLayout;
        View findManagedViewById = partnerCustomizationLayout.findManagedViewById(R.id.suc_layout_status);
        if (findManagedViewById != null) {
            if (findManagedViewById instanceof StatusBarBackgroundLayout) {
                this.statusBarLayout = (StatusBarBackgroundLayout) findManagedViewById;
            } else {
                this.linearLayout = (LinearLayout) findManagedViewById;
            }
            View decorView = window.getDecorView();
            this.decorView = decorView;
            window.setStatusBarColor(0);
            TypedArray obtainStyledAttributes = partnerCustomizationLayout.getContext().obtainStyledAttributes(attributeSet, R$styleable.SucStatusBarMixin, i, 0);
            if ((decorView.getSystemUiVisibility() & 8192) == 8192) {
                z = true;
            } else {
                z = false;
            }
            boolean z2 = obtainStyledAttributes.getBoolean(0, z);
            if (partnerCustomizationLayout.shouldApplyPartnerResource()) {
                Context context = partnerCustomizationLayout.getContext();
                z2 = PartnerConfigHelper.get(context).getBoolean(context, PartnerConfig.CONFIG_LIGHT_STATUS_BAR, false);
            }
            if (z2) {
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            } else {
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() & (-8193));
            }
            setStatusBarBackground(obtainStyledAttributes.getDrawable(1));
            obtainStyledAttributes.recycle();
            return;
        }
        throw new NullPointerException("sucLayoutStatus cannot be null in StatusBarMixin");
    }

    public final void setStatusBarBackground(Drawable drawable) {
        boolean z;
        PartnerCustomizationLayout partnerCustomizationLayout = this.partnerCustomizationLayout;
        if (partnerCustomizationLayout.shouldApplyPartnerResource() && !partnerCustomizationLayout.useFullDynamicColor()) {
            Context context = partnerCustomizationLayout.getContext();
            drawable = PartnerConfigHelper.get(context).getDrawable(context, PartnerConfig.CONFIG_STATUS_BAR_BACKGROUND);
        }
        StatusBarBackgroundLayout statusBarBackgroundLayout = this.statusBarLayout;
        if (statusBarBackgroundLayout == null) {
            this.linearLayout.setBackgroundDrawable(drawable);
            return;
        }
        statusBarBackgroundLayout.statusBarBackground = drawable;
        boolean z2 = true;
        if (drawable == null) {
            z = true;
        } else {
            z = false;
        }
        statusBarBackgroundLayout.setWillNotDraw(z);
        if (drawable == null) {
            z2 = false;
        }
        statusBarBackgroundLayout.setFitsSystemWindows(z2);
        statusBarBackgroundLayout.invalidate();
    }
}
