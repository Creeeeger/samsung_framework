package com.android.systemui.volume;

import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import com.samsung.android.desktopsystemui.sharedlib.system.QuickStepContract;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class Util extends com.android.settingslib.volume.Util {
    public static final int[] SAMSUNG_AUDIO_MANAGER_FLAGS = {1, 16, 4, 2, 8, 2048, 128, 4096, 1024, QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED, QuickStepContract.SYSUI_STATE_BACK_DISABLED, QuickStepContract.SYSUI_STATE_REQUESTED_RECENT_KEY, 524288, 262144};
    public static final String[] SAMSUNG_AUDIO_MANAGER_FLAG_NAMES = {"SHOW_UI", "VIBRATE", "PLAY_SOUND", "ALLOW_RINGER_MODES", "REMOVE_SOUND_AND_VIBRATE", "SHOW_VIBRATE_HINT", "SHOW_SILENT_HINT", "FROM_KEY", "SHOW_UI_WARNINGS", "MULTI_SOUND", "DISPLAY_VOLUME_CONTROL", "REMOTE_MIC", "DUAL_A2DP_MODE", "FIXED_SCO_VOLUME"};

    public static String logTag(Class cls) {
        String concat = "vol.".concat(cls.getSimpleName());
        if (concat.length() >= 23) {
            return concat.substring(0, 23);
        }
        return concat;
    }

    public static String ringerModeToString(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("RINGER_MODE_UNKNOWN_", i);
                }
                return "RINGER_MODE_NORMAL";
            }
            return "RINGER_MODE_VIBRATE";
        }
        return "RINGER_MODE_SILENT";
    }
}
