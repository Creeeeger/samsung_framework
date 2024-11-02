package com.android.systemui.statusbar.pipeline.mobile.util;

import android.telephony.TelephonyManager;
import com.android.systemui.util.settings.GlobalSettings;
import com.android.systemui.util.settings.SystemSettings;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SimCardInfoUtil {
    public final GlobalSettings globalSettings;
    public final SystemSettings systemSettings;
    public final TelephonyManager telephonyManager;

    public SimCardInfoUtil(TelephonyManager telephonyManager, GlobalSettings globalSettings, SystemSettings systemSettings) {
        this.telephonyManager = telephonyManager;
        this.globalSettings = globalSettings;
        this.systemSettings = systemSettings;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:?, code lost:
    
        return com.android.systemui.statusbar.pipeline.mobile.data.model.SimType.VZW;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
    
        return com.android.systemui.statusbar.pipeline.mobile.data.model.SimType.ETC;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005c, code lost:
    
        if (r1.equals("311270") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0066, code lost:
    
        if (r1.equals("310004") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0070, code lost:
    
        if (r1.equals("46007") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:?, code lost:
    
        return com.android.systemui.statusbar.pipeline.mobile.data.model.SimType.CMCC;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007a, code lost:
    
        if (r1.equals("46002") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0084, code lost:
    
        if (r1.equals("46000") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008e, code lost:
    
        if (r1.equals("45412") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c2, code lost:
    
        if (r1.equals("20802") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:?, code lost:
    
        return com.android.systemui.statusbar.pipeline.mobile.data.model.SimType.ORANGE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00cb, code lost:
    
        if (r1.equals("20801") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d7, code lost:
    
        if (r1.equals("20404") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (r1.equals("312770") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x00de, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual("BAE0000000000000", r5) == false) goto L68;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0016. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.systemui.statusbar.pipeline.mobile.data.model.SimType getSimCardInfo(int r5) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.util.SimCardInfoUtil.getSimCardInfo(int):com.android.systemui.statusbar.pipeline.mobile.data.model.SimType");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0054 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isSimSettingOn(int r8) {
        /*
            r7 = this;
            com.android.systemui.util.settings.GlobalSettings r0 = r7.globalSettings
            java.lang.String r1 = "phone2_on"
            java.lang.String r2 = "phone1_on"
            r3 = 1
            boolean r4 = com.android.systemui.BasicRune.STATUS_NETWORK_MULTI_SIM     // Catch: android.provider.Settings.SettingNotFoundException -> L2b
            if (r4 == 0) goto L12
            if (r8 != 0) goto L10
            goto L12
        L10:
            r4 = r1
            goto L13
        L12:
            r4 = r2
        L13:
            int r5 = r0.getUserId()     // Catch: android.provider.Settings.SettingNotFoundException -> L2b
            r6 = r0
            com.android.systemui.util.settings.GlobalSettingsImpl r6 = (com.android.systemui.util.settings.GlobalSettingsImpl) r6     // Catch: android.provider.Settings.SettingNotFoundException -> L2b
            java.lang.String r5 = r6.getStringForUser(r5, r4)     // Catch: android.provider.Settings.SettingNotFoundException -> L2b
            int r7 = java.lang.Integer.parseInt(r5)     // Catch: java.lang.NumberFormatException -> L25 android.provider.Settings.SettingNotFoundException -> L2b
            if (r7 != r3) goto L54
            goto L55
        L25:
            android.provider.Settings$SettingNotFoundException r5 = new android.provider.Settings$SettingNotFoundException     // Catch: android.provider.Settings.SettingNotFoundException -> L2b
            r5.<init>(r4)     // Catch: android.provider.Settings.SettingNotFoundException -> L2b
            throw r5     // Catch: android.provider.Settings.SettingNotFoundException -> L2b
        L2b:
            boolean r4 = com.android.systemui.BasicRune.STATUS_NETWORK_MULTI_SIM
            if (r4 == 0) goto L34
            if (r8 != 0) goto L32
            goto L34
        L32:
            r5 = r1
            goto L35
        L34:
            r5 = r2
        L35:
            com.android.systemui.util.settings.SystemSettings r7 = r7.systemSettings
            int r6 = r7.getUserId()
            com.android.systemui.util.settings.SystemSettingsImpl r7 = (com.android.systemui.util.settings.SystemSettingsImpl) r7
            java.lang.String r7 = r7.getStringForUser(r6, r5)
            int r7 = java.lang.Integer.parseInt(r7)     // Catch: java.lang.NumberFormatException -> L56
            if (r4 == 0) goto L49
            if (r8 != 0) goto L4a
        L49:
            r1 = r2
        L4a:
            int r8 = r0.getUserId()
            r0.putIntForUser(r7, r8, r1)
            if (r7 != r3) goto L54
            goto L55
        L54:
            r3 = 0
        L55:
            return r3
        L56:
            android.provider.Settings$SettingNotFoundException r7 = new android.provider.Settings$SettingNotFoundException
            r7.<init>(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.statusbar.pipeline.mobile.util.SimCardInfoUtil.isSimSettingOn(int):boolean");
    }
}
