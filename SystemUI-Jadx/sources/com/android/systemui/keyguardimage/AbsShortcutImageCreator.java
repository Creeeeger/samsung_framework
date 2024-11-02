package com.android.systemui.keyguardimage;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.R;
import com.android.systemui.keyguardimage.ImageOptionCreator;
import com.android.systemui.statusbar.KeyguardSecAffordanceView;
import com.android.systemui.statusbar.KeyguardShortcutManager;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public abstract class AbsShortcutImageCreator implements ImageCreator {
    public final Context mContext;
    public KeyguardShortcutManager mShortcutManager;

    public AbsShortcutImageCreator(Context context) {
        this.mContext = context;
    }

    public final int getBottomMargin(ImageOptionCreator.ImageOption imageOption) {
        int i;
        Point point = DeviceState.sDisplaySize;
        boolean isTablet = DeviceType.isTablet();
        Context context = this.mContext;
        if (!isTablet && (!LsRune.LOCKUI_SUB_DISPLAY_LOCK || DeviceState.isSubDisplay(context))) {
            if (imageOption.width > imageOption.height) {
                i = R.dimen.shortcut_icon_vertical_margin_land;
            } else {
                i = R.dimen.shortcut_icon_vertical_margin_port;
            }
        } else if (imageOption.width > imageOption.height) {
            i = R.dimen.shortcut_icon_vertical_margin_land_tablet;
        } else {
            i = R.dimen.shortcut_icon_vertical_margin_port_tablet;
        }
        return (int) (context.getResources().getDimensionPixelSize(i) * imageOption.scale);
    }

    public final KeyguardShortcutManager getShortcutManager() {
        if (this.mShortcutManager == null) {
            this.mShortcutManager = (KeyguardShortcutManager) Dependency.get(KeyguardShortcutManager.class);
        }
        return this.mShortcutManager;
    }

    public final int getSideMargin(ImageOptionCreator.ImageOption imageOption) {
        int i;
        Point point = DeviceState.sDisplaySize;
        boolean isTablet = DeviceType.isTablet();
        Context context = this.mContext;
        if (!isTablet && (!LsRune.LOCKUI_SUB_DISPLAY_LOCK || DeviceState.isSubDisplay(context))) {
            if (imageOption.width > imageOption.height) {
                i = R.dimen.keyguard_shrotcut_dls_default_side_margin_land;
            } else {
                i = R.dimen.keyguard_shrotcut_dls_default_side_margin;
            }
        } else if (imageOption.width > imageOption.height) {
            i = R.dimen.keyguard_shrotcut_dls_default_side_margin_land_tablet;
        } else {
            i = R.dimen.keyguard_shrotcut_dls_default_side_margin_tablet;
        }
        return (int) (context.getResources().getDimensionPixelSize(i) * imageOption.scale);
    }

    public final void updateCustomShortcutIcon(KeyguardSecAffordanceView keyguardSecAffordanceView, int i, boolean z) {
        Point point = DeviceState.sDisplaySize;
        if (DeviceType.isTablet()) {
            ViewGroup.LayoutParams layoutParams = keyguardSecAffordanceView.getLayoutParams();
            int dimension = (int) this.mContext.getResources().getDimension(R.dimen.keyguard_shrotcut_default_size_tablet);
            layoutParams.height = dimension;
            layoutParams.width = dimension;
            keyguardSecAffordanceView.setLayoutParams(layoutParams);
        }
        if (z) {
            keyguardSecAffordanceView.setVisibility(0);
            keyguardSecAffordanceView.setImageBitmap(((BitmapDrawable) this.mShortcutManager.getShortcutDrawable(i)).getBitmap());
            keyguardSecAffordanceView.setContentDescription(this.mShortcutManager.getShortcutContentDescription(i));
            return;
        }
        keyguardSecAffordanceView.setVisibility(8);
    }
}
