package com.android.systemui.globalactions.presentation.features;

import android.content.Context;
import android.os.Build;
import android.os.SystemProperties;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.globalactions.presentation.features.Features;
import com.samsung.android.globalactions.util.LogWrapper;
import com.samsung.android.globalactions.util.SettingsWrapper;
import com.samsung.android.globalactions.util.SystemPropertiesWrapper;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class GlobalActionFeatures implements Features {
    public static final String VALUE_SUB_DISPLAY_POLICY;
    public final Context mContext;
    public final LogWrapper mLogWrapper;
    public final SettingsWrapper mSettingsWrapper;

    static {
        String string;
        if (!"user".equals(Build.TYPE) && (SystemProperties.getInt("persist.debug.subdisplay_test_mode", 0) & 1) != 0) {
            string = "";
        } else {
            string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY");
        }
        VALUE_SUB_DISPLAY_POLICY = string;
    }

    public GlobalActionFeatures(Context context, SettingsWrapper settingsWrapper, SystemPropertiesWrapper systemPropertiesWrapper, LogWrapper logWrapper) {
        this.mContext = context;
        this.mSettingsWrapper = settingsWrapper;
        this.mLogWrapper = logWrapper;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ad, code lost:
    
        if (r0 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00dd, code lost:
    
        if (com.android.systemui.LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL == false) goto L88;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isEnabled(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.globalactions.presentation.features.GlobalActionFeatures.isEnabled(java.lang.String):boolean");
    }
}
