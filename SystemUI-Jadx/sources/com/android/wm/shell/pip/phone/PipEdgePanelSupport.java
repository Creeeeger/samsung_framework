package com.android.wm.shell.pip.phone;

import android.R;
import android.content.Context;
import android.os.SemSystemProperties;
import android.provider.Settings;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.WindowManager;
import com.android.internal.policy.SystemBarUtils;
import com.samsung.android.multiwindow.MultiWindowUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PipEdgePanelSupport {
    public final Context mContext;
    public final SparseIntArray mDisplayWidthPerDpi = new SparseIntArray();
    public final SparseIntArray mDisplayHeightPerDpi = new SparseIntArray();

    public PipEdgePanelSupport(Context context) {
        this.mContext = context;
    }

    public final int getEdgeHandlePixelSize() {
        boolean z;
        Context context = this.mContext;
        boolean z2 = true;
        if (context.getResources().getConfiguration().orientation == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            MultiWindowUtils.isInSubDisplay(context);
            String str = SemSystemProperties.get("ro.build.characteristics");
            if (str == null || !str.contains("tablet")) {
                z2 = false;
            }
            if (!z2) {
                return 0;
            }
        }
        return percentToPixel(Settings.Secure.getFloatForUser(context.getContentResolver(), "edge_handle_size_percent", 0.0f, -2));
    }

    public final int getUpperMostPosition() {
        TypedValue typedValue = new TypedValue();
        Context context = this.mContext;
        int i = 0;
        if (context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            i = 0 + TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
        }
        return context.getResources().getDimensionPixelSize(com.android.systemui.R.dimen.settings_handle_bottom_margin) + SystemBarUtils.getStatusBarHeight(context) + i;
    }

    public final int percentToPixel(float f) {
        boolean z;
        SparseIntArray sparseIntArray;
        Context context = this.mContext;
        int i = 0;
        if (context.getResources().getConfiguration().orientation == 2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            sparseIntArray = this.mDisplayWidthPerDpi;
        } else {
            sparseIntArray = this.mDisplayHeightPerDpi;
        }
        int i2 = sparseIntArray.get(context.getResources().getConfiguration().densityDpi);
        if (i2 == 0) {
            i2 = ((WindowManager) context.getSystemService("window")).getMaximumWindowMetrics().getBounds().height();
            sparseIntArray.put(context.getResources().getConfiguration().densityDpi, i2);
        }
        if (context.getResources().getBoolean(17891826)) {
            i = context.getResources().getDimensionPixelSize(R.dimen.text_size_display_1_material);
        }
        return (int) (((f * ((i2 - i) - getUpperMostPosition())) / 100.0f) + 0.5f);
    }
}
