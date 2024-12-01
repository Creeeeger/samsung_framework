package com.samsung.android.hardware.secinputdev;

import android.util.Log;
import com.samsung.android.hardware.secinputdev.SemInputSettingObserver;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
class SemInputSettingObserverSetup {
    private static final String PALM_MUTE_FRAME_NUMBER = "palm_mute_frame_number";
    private static final String PALM_MUTE_THRESHOLD = "palm_mute_threshold";
    private static final String PREMIUM_TAP_FOR_WATCH_FACE_SWITCH_ON_OFF = "premium_tap_for_watch_face_switch_on_off";
    private static final String VIRTUAL_FORCE_EANBLE = "virtual_force_enable";
    private final Map<Integer, String> map;

    public SemInputSettingObserverSetup() {
        HashMap hashMap = new HashMap();
        this.map = hashMap;
        hashMap.put(Integer.valueOf(SemInputSettingObserver.HandlerMessage.REFRESH_RATE_MODE), "refresh_rate_mode");
        hashMap.put(4, PREMIUM_TAP_FOR_WATCH_FACE_SWITCH_ON_OFF);
        hashMap.put(5, "auto_adjust_touch");
        hashMap.put(6, "double_tab_to_wake_up");
        hashMap.put(7, "pen_detect_mode_disabled");
        hashMap.put(8, "screen_off_memo");
        if (SemInputFeatures.SUPPORT_PALMMUTE) {
            hashMap.put(1, "motion_merged_mute_pause");
            hashMap.put(10, PALM_MUTE_THRESHOLD);
            hashMap.put(11, PALM_MUTE_FRAME_NUMBER);
        }
        if (SemInputFeatures.SUPPORT_AIVF) {
            hashMap.put(2, VIRTUAL_FORCE_EANBLE);
            hashMap.put(Integer.valueOf(SemInputSettingObserver.HandlerMessage.LONG_PRESS_TIMEOUT), "long_press_timeout");
            hashMap.put(Integer.valueOf(SemInputSettingObserver.HandlerMessage.TAP_DURATION_ENABLED), "tap_duration_enabled");
        }
        if (SemInputFeatures.SUPPORT_PALMSWIPE) {
            hashMap.put(3, "surface_palm_swipe");
        }
    }

    public String get(int key) {
        return this.map.get(Integer.valueOf(key));
    }

    public void printSettings() {
        for (Map.Entry<Integer, String> element : this.map.entrySet()) {
            Log.i("SemInputSettingObserver", "#" + element.getKey() + ": " + element.getValue());
        }
    }
}
