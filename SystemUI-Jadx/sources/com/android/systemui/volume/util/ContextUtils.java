package com.android.systemui.volume.util;

import android.content.Context;
import com.android.systemui.BasicRune;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ContextUtils {
    public static final ContextUtils INSTANCE = new ContextUtils();

    private ContextUtils() {
    }

    public static final float getDimenFloat(int i, Context context) {
        return context.getResources().getDimension(i);
    }

    public static final int getDimenInt(int i, Context context) {
        return context.getResources().getDimensionPixelSize(i);
    }

    public static final int getDisplayHeight(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static final int getDisplayWidth(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static final boolean isLandscape(Context context) {
        if (context.getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    public static final boolean isNightMode(Context context) {
        if ((context.getResources().getConfiguration().uiMode & 32) > 0) {
            return true;
        }
        return false;
    }

    public static final boolean isScreenWideMobileDevice(Context context) {
        int displayWidth;
        if (BasicRune.VOLUME_FOLDABLE_WIDE_SCREEN_VOLUME_DIALOG) {
            if (isLandscape(context)) {
                displayWidth = getDisplayHeight(context);
            } else {
                displayWidth = getDisplayWidth(context);
            }
            if (displayWidth > getDimenInt(R.dimen.volume_panel_screen_width_threshold, context)) {
                return true;
            }
        }
        return false;
    }
}
