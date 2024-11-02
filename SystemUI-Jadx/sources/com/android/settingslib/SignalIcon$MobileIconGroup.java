package com.android.settingslib;

import com.android.settingslib.mobile.TelephonyIcons;
import com.android.systemui.R;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class SignalIcon$MobileIconGroup extends SignalIcon$IconGroup {
    public final int dataContentDescription;
    public final int dataType;

    public SignalIcon$MobileIconGroup(String str, int i, int i2) {
        super(str, null, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, 0, 0, R.string.accessibility_no_phone, TelephonyIcons.MOBILE_DATA_ACTIVITY_ICONS);
        this.dataContentDescription = i;
        this.dataType = i2;
    }

    public SignalIcon$MobileIconGroup(String str, int i, int i2, int[] iArr) {
        this(str, i, i2);
        this.activityIcons = iArr;
    }
}
