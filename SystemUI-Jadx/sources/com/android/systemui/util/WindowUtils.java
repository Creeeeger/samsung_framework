package com.android.systemui.util;

import android.content.Context;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.samsung.android.desktopmode.SemDesktopModeManager;
import com.samsung.android.feature.SemFloatingFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WindowUtils {
    private WindowUtils() {
    }

    public static boolean isDesktopDualModeMonitorDisplay(Context context) {
        boolean z;
        boolean z2;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP") && 1 == context.getResources().getConfiguration().semDesktopModeEnabled) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            SemDesktopModeManager semDesktopModeManager = (SemDesktopModeManager) context.getSystemService("desktopmode");
            if (semDesktopModeManager != null) {
                if (semDesktopModeManager.getDesktopModeState().getDisplayType() == 101) {
                    z2 = true;
                    if (z2 && defaultDisplay.getDisplayId() == 2) {
                        return true;
                    }
                    return false;
                }
            } else {
                Log.d("WindowUtils", "isDesktopStandaloneMode : desktopModeManager is null");
            }
            z2 = false;
            if (z2) {
                return false;
            }
        }
        return false;
    }
}
