package com.android.systemui;

import android.os.UserManager;
import com.android.systemui.keyguard.KeyguardViewMediator$$ExternalSyntheticLambda6;
import com.android.systemui.util.DeviceType;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public class Rune extends BaseRune {
    public static final boolean SYSUI_APPLOCK;
    public static final boolean SYSUI_BINDER_CALL_MONITOR;
    public static final boolean SYSUI_CHINA_FEATURE;
    public static final boolean SYSUI_MULTI_SIM = DeviceType.isMultiSimSupported();
    public static final boolean SYSUI_MULTI_USER = UserManager.supportsMultipleUsers();
    public static final boolean SYSUI_TEST_FOR_PLANK;
    public static final boolean SYSUI_UI_THREAD_MONITOR;

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        if (com.android.systemui.util.DeviceType.sRpCount == 0) goto L30;
     */
    static {
        /*
            boolean r0 = com.android.systemui.util.DeviceType.isMultiSimSupported()
            com.android.systemui.Rune.SYSUI_MULTI_SIM = r0
            boolean r0 = android.os.UserManager.supportsMultipleUsers()
            com.android.systemui.Rune.SYSUI_MULTI_USER = r0
            boolean r0 = android.os.Build.IS_ENG
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L19
            boolean r0 = android.os.Build.IS_USERDEBUG
            if (r0 == 0) goto L17
            goto L19
        L17:
            r0 = r1
            goto L1a
        L19:
            r0 = r2
        L1a:
            com.android.systemui.Rune.SYSUI_TEST_FOR_PLANK = r0
            int r0 = com.android.systemui.util.DeviceType.getDebugLevel()
            if (r0 == r2) goto L32
            int r0 = com.android.systemui.util.DeviceType.getDebugLevel()
            r3 = 2
            if (r0 == r3) goto L32
            boolean r0 = com.android.systemui.util.DeviceType.isShipBuild()
            if (r0 != 0) goto L30
            goto L32
        L30:
            r0 = r1
            goto L33
        L32:
            r0 = r2
        L33:
            com.android.systemui.Rune.SYSUI_UI_THREAD_MONITOR = r0
            boolean r3 = com.android.systemui.uithreadmonitor.BinderCallMonitorConstants.STRICT_MODE_ENABLED
            if (r3 != 0) goto L55
            if (r0 != 0) goto L56
            boolean r0 = com.android.systemui.util.DeviceType.isEngOrUTBinary()
            if (r0 != 0) goto L56
            int r0 = com.android.systemui.util.DeviceType.sRpCount
            r3 = -2
            if (r0 != r3) goto L50
            java.lang.String r0 = "ro.boot.rp"
            r3 = -1
            int r0 = android.os.SystemProperties.getInt(r0, r3)
            com.android.systemui.util.DeviceType.sRpCount = r0
        L50:
            int r0 = com.android.systemui.util.DeviceType.sRpCount
            if (r0 != 0) goto L55
            goto L56
        L55:
            r2 = r1
        L56:
            com.android.systemui.Rune.SYSUI_BINDER_CALL_MONITOR = r2
            boolean r0 = com.android.internal.app.AppLockPolicy.isSupportAppLock()
            com.android.systemui.Rune.SYSUI_APPLOCK = r0
            com.samsung.android.feature.SemCscFeature r0 = com.samsung.android.feature.SemCscFeature.getInstance()
            java.lang.String r2 = "CscFeature_Common_SupportZProjectFunctionInGlobal"
            boolean r0 = r0.getBoolean(r2, r1)
            com.android.systemui.Rune.SYSUI_CHINA_FEATURE = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.Rune.<clinit>():void");
    }

    public static void runIf(Runnable runnable, boolean z) {
        if (z) {
            runnable.run();
        }
    }

    public static void runIf(int i, KeyguardViewMediator$$ExternalSyntheticLambda6 keyguardViewMediator$$ExternalSyntheticLambda6) {
        keyguardViewMediator$$ExternalSyntheticLambda6.accept(Integer.valueOf(i));
    }
}
