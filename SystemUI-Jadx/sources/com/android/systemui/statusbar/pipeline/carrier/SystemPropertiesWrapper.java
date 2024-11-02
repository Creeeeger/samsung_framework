package com.android.systemui.statusbar.pipeline.carrier;

import android.os.SemSystemProperties;
import android.os.SystemProperties;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SystemPropertiesWrapper {
    public final String salesCode = SystemProperties.get("ro.csc.sales_code", "");
    public final boolean singleSKU = SemSystemProperties.getBoolean("mdc.singlesku", false);
    public final boolean unified = SemSystemProperties.getBoolean("mdc.unified", false);

    public SystemPropertiesWrapper() {
        SystemProperties.get("persist.ril.config.dualims", "");
        SystemProperties.getBoolean("ril.cdma.inecmmode", false);
        SystemProperties.getBoolean("ro.ril.svlte1x", false);
        SystemProperties.getBoolean("ro.ril.svdo", false);
    }
}
