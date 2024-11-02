package com.android.systemui.navigationbar.layout;

import android.R;
import android.content.Context;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.samsung.systemui.splugins.navigationbar.BarLayoutParams;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarLayoutParams implements BarLayoutParams {
    public final Context context;
    public final NavBarStateManager navBarStateManager;

    public NavBarLayoutParams(Context context, NavBarStateManager navBarStateManager) {
        this.context = context;
        this.navBarStateManager = navBarStateManager;
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarGravity(boolean z, int i) {
        if (!z) {
            return 80;
        }
        if (i != 1) {
            if (i != 3) {
                return 80;
            }
            return 3;
        }
        return 5;
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarHeight(boolean z, int i) {
        boolean z2 = !z;
        Context context = this.context;
        if (z2) {
            return context.getResources().getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
        }
        if (i != -1 && i != 0 && i != 2) {
            return -1;
        }
        return context.getResources().getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarInsetHeight(boolean z, int i) {
        boolean shouldShowSUWStyle = this.navBarStateManager.shouldShowSUWStyle();
        Context context = this.context;
        if (shouldShowSUWStyle) {
            return context.getResources().getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
        }
        if (!z) {
            return context.getResources().getDimensionPixelSize(R.dimen.text_size_display_1_material);
        }
        if (i != -1 && i != 0 && i != 2) {
            return -1;
        }
        return context.getResources().getDimensionPixelSize(R.dimen.text_size_display_1_material);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarInsetWidth(boolean z, int i) {
        if ((!z) || i == -1 || i == 0 || i == 2) {
            return -1;
        }
        return this.context.getResources().getDimensionPixelSize(R.dimen.text_size_large_material);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarWidth(boolean z, int i) {
        if (!z) {
            return -1;
        }
        if (i != 1 && i != 3) {
            return -1;
        }
        return this.context.getResources().getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
    }
}
