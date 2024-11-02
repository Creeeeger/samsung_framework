package com.android.systemui.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.hardware.display.SemWifiDisplayStatus;
import android.media.MediaRouter;
import android.os.SystemProperties;
import android.os.UserManager;
import android.provider.Settings;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.UiccCardInfo;
import android.telephony.UiccPortInfo;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.Operator;
import com.android.systemui.R;
import com.android.systemui.keyguard.DisplayLifecycle;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.view.SemWindowManager;
import java.util.Iterator;
import java.util.List;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class DeviceState {
    public static final boolean IS_ALREADY_BOOTED;
    public static boolean QUICKBOARD_AVAILABLE_CHECKED = false;
    public static int ROTATION_0 = 0;
    public static int ROTATION_180 = 0;
    public static int ROTATION_270 = 0;
    public static int ROTATION_90 = 0;
    public static boolean mQuickboardAvailable = false;
    public static Point sDisplaySize = null;
    public static int sInDisplayFingerprintHeight = 0;
    public static int sInDisplayFingerprintImageSize = 0;
    public static int sInDisplayFingerprintMarginBottom = 0;
    public static boolean sLoadedSensorValue = false;
    public static int sOldScreenLayout = 0;
    public static int sOldScreenWidthDp = 0;
    public static String sSemSensorAreaHeight = "4";
    public static String sSemSensorImageSize = "10.80";
    public static String sSemSensorMarginBottom = "13.77";
    public static final Point sSizePoint = new Point(0, 0);
    public static final int sPhoneCount = TelephonyManager.getDefault().getPhoneCount();

    static {
        String string = SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_EMBEDDED_SIM_SLOTSWITCH");
        try {
            if (string.length() > 4) {
                Integer.parseInt(string.substring(4));
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_COMMON_CONFIG_EMBEDDED_SIM_SLOTSWITCH", "").toLowerCase().contains("tsds");
        IS_ALREADY_BOOTED = "1".equals(SystemProperties.get("sys.boot_completed"));
        ROTATION_0 = 0;
        ROTATION_90 = 1;
        ROTATION_180 = 2;
        ROTATION_270 = 3;
        QUICKBOARD_AVAILABLE_CHECKED = false;
    }

    public static int getActiveSimCount(Context context) {
        int i;
        int i2 = 0;
        for (int i3 = 0; i3 < sPhoneCount; i3++) {
            String mSimSystemProperty = getMSimSystemProperty(i3, "gsm.sim.state", "NOT_READY");
            if ("READY".equals(mSimSystemProperty) || "LOADED".equals(mSimSystemProperty)) {
                if (i3 == 0) {
                    i = Settings.Global.getInt(context.getContentResolver(), "phone1_on", 1);
                } else {
                    i = Settings.Global.getInt(context.getContentResolver(), "phone2_on", 1);
                }
                if (i != 0) {
                    i2++;
                }
            }
        }
        return i2;
    }

    public static int getDisplayHeight(Context context) {
        int min;
        boolean updateScreenElements = updateScreenElements(context);
        boolean z = true;
        if (context.getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        Point point = sSizePoint;
        int i = point.x;
        int i2 = point.y;
        if (z) {
            min = Math.max(i, i2);
        } else {
            min = Math.min(i, i2);
        }
        if (updateScreenElements) {
            Log.d("DeviceState", "getDisplayHeight portrait? " + z + "  displayHeight= " + min);
        }
        return min;
    }

    public static int getDisplayWidth(Context context) {
        int max;
        boolean updateScreenElements = updateScreenElements(context);
        boolean z = true;
        if (context.getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        Point point = sSizePoint;
        int i = point.x;
        int i2 = point.y;
        if (z) {
            max = Math.min(i, i2);
        } else {
            max = Math.max(i, i2);
        }
        if (updateScreenElements) {
            Log.d("DeviceState", "getDisplayWidth portrait? " + z + "  displayWidth= " + max);
        }
        return max;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        if (r1 != null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getMSimSystemProperty(int r1, java.lang.String r2, java.lang.String r3) {
        /*
            java.lang.String r2 = android.os.SystemProperties.get(r2)
            if (r2 == 0) goto L1c
            int r0 = r2.length()
            if (r0 <= 0) goto L1c
            java.lang.String r0 = ","
            java.lang.String[] r2 = r2.split(r0)
            if (r1 < 0) goto L1c
            int r0 = r2.length
            if (r1 >= r0) goto L1c
            r1 = r2[r1]
            if (r1 == 0) goto L1c
            goto L1d
        L1c:
            r1 = 0
        L1d:
            if (r1 != 0) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.util.DeviceState.getMSimSystemProperty(int, java.lang.String, java.lang.String):java.lang.String");
    }

    public static int getRotation(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return ROTATION_270;
                    }
                    return i;
                }
                return ROTATION_180;
            }
            return ROTATION_90;
        }
        return ROTATION_0;
    }

    public static int getScreenHeight(Context context) {
        return context.getResources().getConfiguration().windowConfiguration.getBounds().height();
    }

    public static int getScreenWidth(Context context) {
        return context.getResources().getConfiguration().windowConfiguration.getBounds().width();
    }

    public static boolean isCapturedBlurAllowed() {
        if (sDisplaySize == null) {
            sDisplaySize = new Point();
            SemWindowManager.getInstance().getInitialDisplaySize(sDisplaySize);
        }
        if (LsRune.SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL) {
            Point point = sDisplaySize;
            if (Math.min(point.x, point.y) <= 720) {
                return false;
            }
        }
        return true;
    }

    public static boolean isCenterDisplayCutOut(Context context) {
        boolean z;
        String str;
        boolean z2 = false;
        try {
            Resources resources = context.getResources();
            if (LsRune.SECURITY_SUB_DISPLAY_LOCK) {
                z = ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFolderOpened;
            } else {
                z = true;
            }
            String str2 = "config_mainBuiltInDisplayCutout";
            if (!z) {
                str2 = "config_subBuiltInDisplayCutout";
            }
            int identifier = resources.getIdentifier(str2, "string", "android");
            if (identifier > 0) {
                str = resources.getString(identifier);
            } else {
                str = null;
            }
            if (str != null && !TextUtils.isEmpty(str) && !str.endsWith("@left")) {
                if (!str.endsWith("@right")) {
                    z2 = true;
                }
            }
        } catch (Exception e) {
            Log.w("DeviceState", "Can not update isCenterDisplayCutOut. " + e.toString());
        }
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isCenterDisplayCutOut: ", z2, "DeviceState");
        return z2;
    }

    public static boolean isCoverUIType(int i) {
        if (i != 1 && i != 3 && i != 6 && i != 8) {
            switch (i) {
                case 15:
                case 16:
                case 17:
                    break;
                default:
                    return false;
            }
        }
        return true;
    }

    public static boolean isDataAllowed(Context context) {
        SubscriptionInfo activeSubscriptionInfo = ((SubscriptionManager) context.getSystemService("telephony_subscription_service")).getActiveSubscriptionInfo(SubscriptionManager.getDefaultDataSubscriptionId());
        if (activeSubscriptionInfo != null) {
            int simSlotIndex = activeSubscriptionInfo.getSimSlotIndex();
            Log.d("DeviceState", "Restriction in Settings Mobile Data On");
            EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance(context);
            try {
                Log.d("DeviceState", "isDataAllowedFromSimSlot(slotId)");
                return enterpriseDeviceManager.getPhoneRestrictionPolicy(null).isDataAllowedFromSimSlot(simSlotIndex);
            } catch (SecurityException e) {
                Log.w("DeviceState", "SecurityException: " + e);
            }
        }
        return true;
    }

    public static boolean isESIM(int i, Context context) {
        for (UiccCardInfo uiccCardInfo : ((TelephonyManager) context.getSystemService("phone")).getUiccCardsInfo()) {
            Iterator<UiccPortInfo> it = uiccCardInfo.getPorts().iterator();
            while (it.hasNext()) {
                if (it.next().getLogicalSlotIndex() == i && uiccCardInfo.isEuicc()) {
                    NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("isEuicc() :", i, " : true", "DeviceState");
                    return true;
                }
            }
        }
        NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0.m("isESIM() :", i, " : false", "DeviceState");
        return false;
    }

    public static boolean isInDisplayFpSensorPositionHigh() {
        Point realSize = ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).getRealSize();
        if (sInDisplayFingerprintHeight / Math.max(realSize.y, realSize.x) > 0.22f) {
            return true;
        }
        return false;
    }

    public static boolean isMediaQuickControlBarAvailable(Context context) {
        if (QUICKBOARD_AVAILABLE_CHECKED) {
            return mQuickboardAvailable;
        }
        try {
            QUICKBOARD_AVAILABLE_CHECKED = true;
            context.getPackageManager().getPackageInfo("com.samsung.android.mdx.quickboard", 1);
            Log.d("DeviceState", "quickboard activity is available.");
            mQuickboardAvailable = true;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.d("DeviceState", "quickboard activity isn't available.");
            mQuickboardAvailable = false;
        }
        return mQuickboardAvailable;
    }

    public static boolean isNoSimState(Context context) {
        for (int i = 0; i < sPhoneCount; i++) {
            String mSimSystemProperty = getMSimSystemProperty(i, "gsm.sim.state", "NOT_READY");
            if (isESIM(i, context) && "NOT_READY".equals(mSimSystemProperty)) {
                mSimSystemProperty = "ABSENT";
            }
            if (!"ABSENT".equals(mSimSystemProperty)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOpenTheme(Context context) {
        if (Settings.System.getString(context.getContentResolver(), "current_sec_active_themepackage") != null) {
            return true;
        }
        return false;
    }

    public static boolean isShopDemo(Context context) {
        if (Settings.Secure.getInt(context.getContentResolver(), "shopdemo", 0) != 1) {
            return false;
        }
        return true;
    }

    public static boolean isSmartViewDisplayWithFitToAspectRatio(Context context) {
        boolean z;
        boolean z2;
        boolean z3;
        if (!LsRune.SECURITY_FINGERPRINT_IN_DISPLAY) {
            return isSmartViewFitToActiveDisplay();
        }
        SemWifiDisplayStatus semGetWifiDisplayStatus = ((DisplayManager) context.getSystemService("display")).semGetWifiDisplayStatus();
        if (semGetWifiDisplayStatus != null && semGetWifiDisplayStatus.getActiveDisplayState() == 2) {
            z = true;
        } else {
            z = false;
        }
        MediaRouter.RouteInfo selectedRoute = ((MediaRouter) context.getSystemService("media_router")).getSelectedRoute(4);
        if ((4 & selectedRoute.getSupportedTypes()) != 0 && selectedRoute.semGetDeviceAddress() == null && selectedRoute.semGetStatusCode() == 6 && (selectedRoute.getPresentationDisplay() != null || (selectedRoute.getDescription() != null && selectedRoute.getDescription().toString().contains("Audio")))) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (Settings.Global.getInt(context.getContentResolver(), "lelink_cast_on", 0) == 1) {
            z3 = true;
        } else {
            z3 = false;
        }
        if ((z || z2 || z3) && isSmartViewFitToActiveDisplay()) {
            return true;
        }
        return false;
    }

    public static boolean isSmartViewFitToActiveDisplay() {
        return ((DisplayLifecycle) Dependency.get(DisplayLifecycle.class)).mIsFitToActiveDisplay;
    }

    public static boolean isSubDisplay(Context context) {
        if (context.getResources().getConfiguration().semDisplayDeviceType == 5) {
            return true;
        }
        return false;
    }

    public static boolean isSubInfoReversed(Context context) {
        List<SubscriptionInfo> activeSubscriptionInfoList = SubscriptionManager.from(context).getActiveSubscriptionInfoList();
        if (activeSubscriptionInfoList == null || activeSubscriptionInfoList.size() != 2) {
            return false;
        }
        Iterator<SubscriptionInfo> it = activeSubscriptionInfoList.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (it.next().isEmbedded()) {
                i++;
            }
        }
        if (i == 0) {
            return false;
        }
        if (i == 1) {
            if ((activeSubscriptionInfoList.get(0).getSimSlotIndex() != 1 || activeSubscriptionInfoList.get(0).isEmbedded()) && (activeSubscriptionInfoList.get(1).getSimSlotIndex() != 1 || activeSubscriptionInfoList.get(1).isEmbedded())) {
                return false;
            }
            return true;
        }
        if (i != 2) {
            return false;
        }
        if ((activeSubscriptionInfoList.get(0).getSubscriptionId() <= activeSubscriptionInfoList.get(1).getSubscriptionId() || activeSubscriptionInfoList.get(0).getSimSlotIndex() >= activeSubscriptionInfoList.get(1).getSimSlotIndex()) && (activeSubscriptionInfoList.get(0).getSubscriptionId() >= activeSubscriptionInfoList.get(1).getSubscriptionId() || activeSubscriptionInfoList.get(0).getSimSlotIndex() <= activeSubscriptionInfoList.get(1).getSimSlotIndex())) {
            return false;
        }
        return true;
    }

    public static boolean isTesting() {
        return "true".equals(System.getProperty("dexmaker.share_classloader"));
    }

    public static boolean isVoiceCapable(Context context) {
        boolean z;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            return false;
        }
        if (!telephonyManager.isVoiceCapable()) {
            if (DeviceType.isTablet() && Operator.QUICK_IS_ATT_BRANDING) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004d, code lost:
    
        if (r2 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0060, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0064, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0065, code lost:
    
        android.util.Log.e("DeviceState", "readFingerprintSensor : failed to close file", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
    
        if (r2 == null) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void setInDisplayFingerprintSensorPosition(android.util.DisplayMetrics r7) {
        /*
            java.lang.String r0 = "readFingerprintSensor : failed to close file"
            boolean r1 = com.android.systemui.util.DeviceState.sLoadedSensorValue
            if (r1 != 0) goto L7b
            java.io.File r1 = new java.io.File
            java.lang.String r2 = "/sys/class/fingerprint/fingerprint/position"
            r1.<init>(r2)
            boolean r2 = r1.exists()
            java.lang.String r3 = "DeviceState"
            if (r2 == 0) goto L75
            r2 = 0
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            long r5 = r1.length()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            int r1 = (int) r5     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            int r5 = r4.read(r1)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            if (r5 <= 0) goto L4c
            r4.close()     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L52
            java.lang.String r4 = new java.lang.String     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            java.nio.charset.Charset r5 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            r4.<init>(r1, r5)     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            java.lang.String r1 = ","
            java.lang.String[] r1 = r4.split(r1)     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            r4 = 0
            r4 = r1[r4]     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            com.android.systemui.util.DeviceState.sSemSensorMarginBottom = r4     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            r4 = 3
            r4 = r1[r4]     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            com.android.systemui.util.DeviceState.sSemSensorAreaHeight = r4     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            r4 = 7
            r1 = r1[r4]     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            com.android.systemui.util.DeviceState.sSemSensorImageSize = r1     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            r1 = 1
            com.android.systemui.util.DeviceState.sLoadedSensorValue = r1     // Catch: java.lang.Throwable -> L55 java.lang.Exception -> L57
            goto L4d
        L4c:
            r2 = r4
        L4d:
            if (r2 == 0) goto L7b
            goto L60
        L50:
            r7 = move-exception
            goto L6a
        L52:
            r1 = move-exception
            r2 = r4
            goto L58
        L55:
            r7 = move-exception
            goto L69
        L57:
            r1 = move-exception
        L58:
            java.lang.String r4 = "readFingerprintSensor : failure to read sensor info : "
            android.util.Log.e(r3, r4, r1)     // Catch: java.lang.Throwable -> L55
            if (r2 == 0) goto L7b
        L60:
            r2.close()     // Catch: java.lang.Exception -> L64
            goto L7b
        L64:
            r1 = move-exception
            android.util.Log.e(r3, r0, r1)
            goto L7b
        L69:
            r4 = r2
        L6a:
            if (r4 == 0) goto L74
            r4.close()     // Catch: java.lang.Exception -> L70
            goto L74
        L70:
            r1 = move-exception
            android.util.Log.e(r3, r0, r1)
        L74:
            throw r7
        L75:
            java.lang.String r0 = "readFingerprintSensor : No file for sensor pos"
            android.util.Log.w(r3, r0)
        L7b:
            java.lang.String r0 = com.android.systemui.util.DeviceState.sSemSensorImageSize
            float r0 = java.lang.Float.parseFloat(r0)
            r1 = 5
            float r0 = android.util.TypedValue.applyDimension(r1, r0, r7)
            java.lang.String r2 = com.android.systemui.util.DeviceState.sSemSensorMarginBottom
            float r2 = java.lang.Float.parseFloat(r2)
            float r2 = android.util.TypedValue.applyDimension(r1, r2, r7)
            java.lang.String r3 = com.android.systemui.util.DeviceState.sSemSensorAreaHeight
            float r3 = java.lang.Float.parseFloat(r3)
            float r7 = android.util.TypedValue.applyDimension(r1, r3, r7)
            int r1 = (int) r2
            int r7 = (int) r7
            int r7 = r7 / 2
            int r7 = r7 + r1
            int r0 = (int) r0
            int r2 = r0 / 2
            int r2 = r2 + r7
            com.android.systemui.util.DeviceState.sInDisplayFingerprintHeight = r2
            com.android.systemui.util.DeviceState.sInDisplayFingerprintImageSize = r0
            com.android.systemui.util.DeviceState.sInDisplayFingerprintMarginBottom = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.util.DeviceState.setInDisplayFingerprintSensorPosition(android.util.DisplayMetrics):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean shouldEnableKeyguardScreenRotation(Context context) {
        byte b;
        Resources resources = context.getResources();
        int i = SystemProperties.getInt("ro.product.first_api_level", 0);
        if (!SystemProperties.getBoolean("lockscreen.rot_override", false) && !resources.getBoolean(R.bool.config_enableLockScreenRotation) && !DeviceType.isTablet()) {
            if (DeviceType.supportSEPLite == -1) {
                DeviceType.supportSEPLite = context.getPackageManager().hasSystemFeature("com.samsung.feature.samsung_experience_mobile_lite") ? 1 : 0;
            }
            if (DeviceType.supportSEPLite == 1) {
                b = true;
            } else {
                b = false;
            }
            if (b != false || i < 28) {
                return false;
            }
        }
        return true;
    }

    public static boolean supportsMultipleUsers() {
        if (SystemProperties.getBoolean("debug.quick_mum_test_trigger", false)) {
            return true;
        }
        return UserManager.supportsMultipleUsers();
    }

    public static boolean updateScreenElements(Context context) {
        int screenWidth = getScreenWidth(context);
        int i = context.getResources().getConfiguration().screenLayout;
        if (sOldScreenWidthDp == screenWidth && sOldScreenLayout == i) {
            return false;
        }
        Point point = sSizePoint;
        point.x = screenWidth;
        point.y = getScreenHeight(context);
        sOldScreenWidthDp = screenWidth;
        sOldScreenLayout = i;
        return true;
    }
}
