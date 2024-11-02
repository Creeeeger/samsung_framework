package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.android.systemui.Dependency;
import com.android.systemui.QpRune;
import com.android.systemui.R;
import com.android.systemui.knox.KnoxStateMonitor;
import com.android.systemui.statusbar.policy.KeyguardStateController;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.DeviceState;
import com.android.systemui.util.SettingsHelper;
import dagger.Lazy;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SecQSPanelResourcePicker {
    public Drawable mCapturedBlurredBackground;
    public final KnoxStateMonitor mKnoxStateMonitor;
    public SecQSPanelController mQsPanelController;
    public final SettingsHelper mSettingsHelper;
    public final Lazy mShadeHeaderControllerLazy;
    public int mCutoutHeight = 0;
    public int mCutoutHeightLandscape = 0;
    public int mNavBarHeight = 0;
    public int mNavBarHeightLandscape = 0;
    public float mTileExpandedWidthRatio = 1.0f;
    public boolean mDataUsageLabelVisible = false;

    public SecQSPanelResourcePicker(KeyguardStateController keyguardStateController, KnoxStateMonitor knoxStateMonitor, SettingsHelper settingsHelper, Lazy lazy) {
        this.mKnoxStateMonitor = knoxStateMonitor;
        this.mSettingsHelper = settingsHelper;
        this.mShadeHeaderControllerLazy = lazy;
    }

    public static String getBottomBarTileList(Context context) {
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            return getTrimmedRemovableTile(context, resources.getString(R.string.sec_bottom_bar_tiles_default_tablet));
        }
        return getTrimmedRemovableTile(context, resources.getString(R.string.sec_bottom_bar_tiles_default));
    }

    public static int getBrightnessBarHeight(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.brightness_slider_height);
    }

    public static int getBrightnessIconSize(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.brightness_slider_icon_size);
    }

    public static int getBrightnessTileLayoutBetweenMargin(Context context) {
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            return resources.getDimensionPixelSize(R.dimen.brightness_tile_between_margin_tablet);
        }
        return resources.getDimensionPixelSize(R.dimen.brightness_tile_between_margin);
    }

    public static int getBrightnessTileLayoutHeight(Context context) {
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            return resources.getDimensionPixelSize(R.dimen.brightness_tile_layout_height_tablet);
        }
        return resources.getDimensionPixelSize(R.dimen.brightness_tile_layout_height);
    }

    public static int getBrightnessTileLayoutRightMargin(Context context) {
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            return resources.getDimensionPixelSize(R.dimen.brightness_tile_layout_right_margin_tablet);
        }
        return resources.getDimensionPixelSize(R.dimen.brightness_tile_layout_right_margin);
    }

    public static int getButtonsWidth(Context context) {
        float f;
        float displayWidth = DeviceState.getDisplayWidth(context);
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            f = resources.getFloat(R.dimen.qs_button_container_width_ratio_tablet);
        } else {
            f = resources.getFloat(R.dimen.qs_button_container_width_ratio);
        }
        return Math.max((int) (f * displayWidth), resources.getDimensionPixelSize(R.dimen.sec_qs_button_container_size));
    }

    public static int getLabelHeight(Context context) {
        float max;
        int displayHeight = DeviceState.getDisplayHeight(context);
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            max = resources.getDimensionPixelSize(R.dimen.sec_qs_label_height_tablet);
        } else {
            max = Math.max(resources.getFloat(R.dimen.qs_label_height_ratio) * displayHeight, resources.getDimensionPixelSize(R.dimen.sec_qs_label_height));
        }
        return (int) max;
    }

    public static int getNotificationSidePadding(Context context) {
        float f;
        int displayWidth = DeviceState.getDisplayWidth(context);
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            return resources.getDimensionPixelSize(R.dimen.notification_side_paddings_for_tablet);
        }
        if (isLandscape(context)) {
            float f2 = displayWidth;
            f = ((resources.getFloat(R.dimen.qs_panel_width_landscape_ratio) * f2) - (resources.getFloat(R.dimen.qqs_panel_width_landscape_ratio) * f2)) / 2.0f;
        } else {
            f = resources.getFloat(R.dimen.notification_side_padding_portrait_ratio) * displayWidth;
        }
        return (int) f;
    }

    public static int getPanelSidePadding(Context context) {
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            return resources.getDimensionPixelSize(R.dimen.qqs_panel_side_padding_tablet);
        }
        if (isLandscape(context)) {
            return 0;
        }
        return getPanelStartEndPadding(context);
    }

    public static int getPanelStartEndPadding(Context context) {
        int i;
        Resources resources = context.getResources();
        int displayWidth = DeviceState.getDisplayWidth(context);
        boolean z = QpRune.QUICK_TABLET;
        if (z) {
            i = resources.getDimensionPixelSize(R.dimen.qqs_panel_side_padding_tablet);
        } else {
            i = (int) (resources.getFloat(R.dimen.qqs_panel_side_padding) * displayWidth);
        }
        boolean z2 = true;
        if (resources.getConfiguration().orientation != 1) {
            z2 = false;
        }
        if (!z && !z2) {
            return 0;
        }
        return i;
    }

    public static int getPanelWidth(Context context) {
        float f;
        boolean isPortrait = isPortrait(context);
        int displayWidth = DeviceState.getDisplayWidth(context);
        DeviceState.getDisplayHeight(context);
        if (QpRune.QUICK_TABLET) {
            f = context.getResources().getDimensionPixelSize(R.dimen.qqs_panel_width_tablet);
        } else if (isPortrait) {
            f = displayWidth;
        } else {
            f = context.getResources().getFloat(R.dimen.qs_panel_width_ratio) * displayWidth;
        }
        return (int) f;
    }

    public static int getQQSPanelSidePadding(Context context) {
        if (!QpRune.QUICK_TABLET && isLandscape(context)) {
            Resources resources = context.getResources();
            float displayWidth = DeviceState.getDisplayWidth(context);
            return (int) (((resources.getFloat(R.dimen.qs_panel_width_landscape_ratio) * displayWidth) - (resources.getFloat(R.dimen.qqs_panel_width_landscape_ratio) * displayWidth)) / 2.0f);
        }
        return 0;
    }

    public static int getQsTileMinNum(Context context) {
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            return resources.getInteger(R.integer.quick_qs_tile_min_num_tablet);
        }
        return resources.getInteger(R.integer.quick_qs_tile_min_num);
    }

    public static int getQuickQSCommonBottomMargin(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.quick_qs_common_bottom_margin);
    }

    public static int getTileExpandedHeight(Context context) {
        Resources resources = context.getResources();
        float dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.tile_expanded_height);
        if (QpRune.QUICK_TABLET) {
            return resources.getDimensionPixelSize(R.dimen.tile_expanded_height_tablet);
        }
        return Math.max(getLabelHeight(context) + getTouchIconHeight(context), (int) dimensionPixelSize);
    }

    public static int getTileIconSize(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.sec_style_qs_tile_icon_size);
    }

    public static String getTopBarTileList(Context context) {
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            return getTrimmedRemovableTile(context, resources.getString(R.string.sec_top_bar_tiles_default_tablet));
        }
        return getTrimmedRemovableTile(context, resources.getString(R.string.sec_top_bar_tiles_default));
    }

    public static int getTouchIconHeight(Context context) {
        float f;
        float displayHeight = DeviceState.getDisplayHeight(context);
        Resources resources = context.getResources();
        if (QpRune.QUICK_TABLET) {
            f = resources.getDimensionPixelSize(R.dimen.sec_qs_touch_icon_height_tablet);
        } else {
            f = displayHeight * resources.getFloat(R.dimen.qs_tile_touch_area_height_ratio);
        }
        return (int) Math.max(f, getTileIconSize(context));
    }

    public static String getTrimmedRemovableTile(Context context, String str) {
        if (QpRune.QUICK_HIDE_TILE_FROM_BAR && str != null) {
            if (((TunerService) Dependency.get(TunerService.class)).getValue(0, "hide_smart_view_large_tile_on_panel") != 1) {
                return str;
            }
            String string = context.getResources().getString(R.string.sec_removable_bar_tile);
            return str.replaceAll(string + ",", "").replaceAll("," + string, "").replaceAll(string, "");
        }
        return str;
    }

    public static boolean isLandscape(Context context) {
        if (context.getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    public static boolean isNightMode(Context context) {
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return false;
    }

    public static boolean isPortrait(Context context) {
        if (context.getResources().getConfiguration().orientation == 1) {
            return true;
        }
        return false;
    }

    public final int getAvailableDisplayHeight(Context context) {
        int i;
        int i2;
        int dimensionPixelSize;
        int displayHeight = DeviceState.getDisplayHeight(context);
        Resources resources = context.getResources();
        boolean z = QpRune.QUICK_TABLET;
        if (z && isLandscape(context)) {
            i2 = displayHeight - getNavBarHeight(context);
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.status_bar_height);
        } else if (!z) {
            int navBarHeight = displayHeight - getNavBarHeight(context);
            if (isPortrait(context)) {
                i = this.mCutoutHeight;
            } else {
                i = this.mCutoutHeightLandscape;
            }
            i2 = navBarHeight - i;
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.sec_style_qs_header_status_bar_height);
        } else {
            return displayHeight;
        }
        return i2 - dimensionPixelSize;
    }

    public final int getNavBarHeight(Context context) {
        if (isPortrait(context)) {
            return this.mNavBarHeight;
        }
        return this.mNavBarHeightLandscape;
    }

    public final int getPanelHeight(Context context) {
        int availableDisplayHeight = getAvailableDisplayHeight(context);
        if (QpRune.QUICK_TABLET && isPortrait(context)) {
            return ((int) (context.getResources().getFloat(R.dimen.qs_panel_height_ratio_tablet) * availableDisplayHeight)) + context.getResources().getDimensionPixelSize(R.dimen.sec_style_qs_header_status_bar_height);
        }
        return availableDisplayHeight;
    }

    public final int getQsTileColumn(Context context) {
        Resources resources = context.getResources();
        if (this.mSettingsHelper.isEmergencyMode()) {
            return Math.max(1, resources.getInteger(R.integer.sec_quick_settings_num_columns_power_saving));
        }
        if (QpRune.QUICK_TABLET) {
            return resources.getInteger(R.integer.sec_quick_settings_num_columns_tablet);
        }
        return resources.getInteger(R.integer.sec_quick_settings_num_columns);
    }

    public final int getTileExpandedWidth(Context context) {
        int dimensionPixelSize;
        if (QpRune.QUICK_TABLET) {
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.tile_expanded_width_tablet);
        } else {
            dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.tile_expanded_width);
        }
        if (((SettingsHelper) Dependency.get(SettingsHelper.class)).isQSButtonGridPopupEnabled()) {
            return (int) (dimensionPixelSize * this.mTileExpandedWidthRatio);
        }
        return dimensionPixelSize;
    }
}
