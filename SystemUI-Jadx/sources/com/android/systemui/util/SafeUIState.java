package com.android.systemui.util;

import android.os.ServiceManager;
import android.util.Slog;
import com.android.internal.statusbar.IStatusBarService;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SafeUIState {
    public static int sSafeMode = -1;

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean isSysUiSafeModeEnabled() {
        int i;
        if (sSafeMode == -1) {
            try {
                i = IStatusBarService.Stub.asInterface(ServiceManager.getService("statusbar")).isSysUiSafeModeEnabled();
            } catch (Exception e) {
                Slog.e("SafeUIState", "SAFEMODE Exception occurs! " + e.getMessage());
                i = 0;
            }
            sSafeMode = i;
        }
        if (sSafeMode != 1) {
            return false;
        }
        return true;
    }
}
