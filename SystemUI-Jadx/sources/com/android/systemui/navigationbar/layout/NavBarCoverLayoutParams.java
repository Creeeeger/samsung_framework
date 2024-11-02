package com.android.systemui.navigationbar.layout;

import android.R;
import android.content.Context;
import com.android.systemui.BasicRune;
import com.android.systemui.navigationbar.store.NavBarStateManager;
import com.samsung.systemui.splugins.navigationbar.BarLayoutParams;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class NavBarCoverLayoutParams implements BarLayoutParams {
    public final int b5CutoutHeight = 66;
    public final Context context;
    public final NavBarStateManager navBarStateManager;

    public NavBarCoverLayoutParams(Context context, NavBarStateManager navBarStateManager) {
        this.context = context;
        this.navBarStateManager = navBarStateManager;
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarGravity(boolean z, int i) {
        NavBarStateManager navBarStateManager = this.navBarStateManager;
        if (!navBarStateManager.supportLargeCoverScreenNavBar() || navBarStateManager.isGestureMode()) {
            return 80;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return 80;
                }
                return 3;
            }
            return 48;
        }
        return 5;
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarHeight(boolean z, int i) {
        if (BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN) {
            boolean isGestureMode = this.navBarStateManager.isGestureMode();
            int i2 = this.b5CutoutHeight;
            if (!isGestureMode && i != 0 && i != 2) {
                return -1;
            }
            return i2;
        }
        return this.context.getResources().getDimensionPixelSize(R.dimen.text_line_spacing_multiplier_material);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarInsetHeight(boolean z, int i) {
        boolean z2 = BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN;
        Context context = this.context;
        if (z2) {
            boolean isGestureMode = this.navBarStateManager.isGestureMode();
            int i2 = this.b5CutoutHeight;
            if (isGestureMode) {
                if (i != 0) {
                    return context.getResources().getDimensionPixelSize(R.dimen.text_size_display_1_material);
                }
                return i2;
            }
            if (i != 0 && i != 2) {
                return -1;
            }
            return i2;
        }
        return context.getResources().getDimensionPixelSize(R.dimen.text_size_display_1_material);
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarInsetWidth(boolean z, int i) {
        NavBarStateManager navBarStateManager = this.navBarStateManager;
        if (!navBarStateManager.supportLargeCoverScreenNavBar() || navBarStateManager.isGestureMode() || i == 0 || i == 2) {
            return -1;
        }
        return this.b5CutoutHeight;
    }

    @Override // com.samsung.systemui.splugins.navigationbar.BarLayoutParams
    public final int getBarWidth(boolean z, int i) {
        if (!BasicRune.NAVBAR_SUPPORT_LARGE_COVER_SCREEN || this.navBarStateManager.isGestureMode() || i == 0 || i == 2) {
            return -1;
        }
        return this.b5CutoutHeight;
    }
}
