package com.android.systemui.statusbar.connectivity;

import com.android.settingslib.AccessibilityContentDescriptions;
import com.android.settingslib.SignalIcon$IconGroup;
import com.android.systemui.R;
import com.android.systemui.statusbar.pipeline.wifi.ui.util.SamsungWifiIcons;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WifiIcons {
    public static final int[][] QS_WIFI_SIGNAL_STRENGTH;
    public static final SignalIcon$IconGroup UNMERGED_WIFI;

    static {
        int[][] iArr = {new int[]{R.drawable.ic_no_internet_wifi_signal_0, R.drawable.ic_no_internet_wifi_signal_1, R.drawable.ic_no_internet_wifi_signal_2, R.drawable.ic_no_internet_wifi_signal_3, R.drawable.ic_no_internet_wifi_signal_4}, new int[]{android.R.drawable.list_section_header_holo_dark, android.R.drawable.list_section_header_holo_light, android.R.drawable.list_selected_background, android.R.drawable.list_selected_background_light, android.R.drawable.list_selected_holo_dark}};
        QS_WIFI_SIGNAL_STRENGTH = iArr;
        int length = iArr[0].length;
        UNMERGED_WIFI = new SignalIcon$IconGroup("Wi-Fi Icons", SamsungWifiIcons.WIFI_SIGNAL_STRENGTH_SAMSUNG, iArr, AccessibilityContentDescriptions.WIFI_CONNECTION_STRENGTH, android.R.drawable.list_section_header_holo_dark, android.R.drawable.list_section_header_holo_dark, android.R.drawable.list_section_header_holo_dark, android.R.drawable.list_section_header_holo_dark, R.string.accessibility_no_wifi, SamsungWifiIcons.WIFI_ACTIVITY);
    }
}
