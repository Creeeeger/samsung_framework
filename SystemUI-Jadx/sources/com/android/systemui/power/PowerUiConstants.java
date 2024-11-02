package com.android.systemui.power;

import android.net.Uri;
import com.samsung.android.feature.SemFloatingFeature;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PowerUiConstants {
    public static final String DC_PACKAGE_NAME = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME");
    public static final Uri SMART_MGR_VERIFY_FORCED_APP_STANDBY_URI = Uri.parse("content://com.samsung.android.sm/VerifyForcedAppStandby");
}
