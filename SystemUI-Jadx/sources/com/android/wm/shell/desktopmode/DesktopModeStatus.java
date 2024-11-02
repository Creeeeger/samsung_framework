package com.android.wm.shell.desktopmode;

import android.content.Context;
import android.os.SystemProperties;
import android.provider.Settings;
import com.android.wm.shell.protolog.ShellProtoLogCache;
import com.android.wm.shell.protolog.ShellProtoLogGroup;
import com.android.wm.shell.protolog.ShellProtoLogImpl;
import com.samsung.android.rune.CoreRune;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DesktopModeStatus {
    public static final boolean IS_SUPPORTED = SystemProperties.getBoolean("persist.wm.debug.desktop_mode", CoreRune.MT_NEW_DEX_DEFAULT_DISPLAY_LAUNCH_POLICY);
    public static final boolean IS_PROTO2_ENABLED = SystemProperties.getBoolean("persist.wm.debug.desktop_mode_2", false);
    public static final boolean IS_VEILED_RESIZE_ENABLED = SystemProperties.getBoolean("persist.wm.debug.desktop_veiled_resizing", true);
    public static final boolean IS_DISPLAY_CHANGE_ENABLED = SystemProperties.getBoolean("persist.wm.debug.desktop_change_display", false);

    public static boolean isActive(Context context) {
        int i;
        if (!isAnyEnabled()) {
            return false;
        }
        if (IS_PROTO2_ENABLED) {
            return true;
        }
        try {
            int intForUser = Settings.System.getIntForUser(context.getContentResolver(), "desktop_mode", -2);
            if (CoreRune.MT_NEW_DEX_DEFAULT_DISPLAY_LAUNCH_POLICY) {
                i = Settings.System.getIntForUser(context.getContentResolver(), "new_dex", -2);
            } else {
                i = 0;
            }
            if (intForUser == 0 && i == 0) {
                return false;
            }
            return true;
        } catch (Exception e) {
            if (CoreRune.MT_NEW_DEX_DEFAULT_DISPLAY_LAUNCH_POLICY) {
                Settings.System.putInt(context.getContentResolver(), "desktop_mode", 0);
            }
            if (ShellProtoLogCache.WM_SHELL_DESKTOP_MODE_enabled) {
                ShellProtoLogImpl.e(ShellProtoLogGroup.WM_SHELL_DESKTOP_MODE, -824195809, 0, null, String.valueOf(e));
            }
            return false;
        }
    }

    public static boolean isAnyEnabled() {
        if (!IS_SUPPORTED && !IS_PROTO2_ENABLED) {
            return false;
        }
        return true;
    }
}
