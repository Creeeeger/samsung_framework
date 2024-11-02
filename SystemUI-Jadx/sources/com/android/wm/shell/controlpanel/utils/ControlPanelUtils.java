package com.android.wm.shell.controlpanel.utils;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.context.sdk.samsunganalytics.LogBuilders$EventBuilder;
import com.samsung.context.sdk.samsunganalytics.SamsungAnalytics;
import java.util.List;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class ControlPanelUtils {
    public static final String TALKBACK_SERVICE = "com.samsung.android.marvin.talkback.TalkBackService";
    static final String UNIVERSAL_SWITCH_SERVICE = "com.samsung.accessibility.universalswitch.UniversalSwitchService";

    public static void eventLogging(String str, String str2, Map map) {
        map.put("det", str2);
        Log.d("FlexPanelSALogging", "eventName : " + str + ", detail : " + str2 + ", customDimen : " + map);
        SamsungAnalytics samsungAnalytics = SamsungAnalytics.getInstance();
        LogBuilders$EventBuilder logBuilders$EventBuilder = new LogBuilders$EventBuilder();
        logBuilders$EventBuilder.setEventName(str);
        logBuilders$EventBuilder.setDimension(map);
        samsungAnalytics.sendLog(logBuilders$EventBuilder.build());
    }

    public static int getDisplayX(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.x;
    }

    public static int getDisplayY(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    public static String getPackageNameForMediaPanel(Context context, boolean z) {
        ComponentName componentName;
        try {
            if (z) {
                componentName = getTopActivity(context);
            } else {
                ActivityManager.RunningTaskInfo runningTaskExcept = getRunningTaskExcept(context);
                if (runningTaskExcept != null) {
                    componentName = runningTaskExcept.baseActivity;
                } else {
                    componentName = new ComponentName("", "");
                }
            }
            if ("com.android.systemui.stackdivider.ForcedResizableInfoActivity".equals(componentName.getClassName())) {
                ActivityManager.RunningTaskInfo runningTaskExcept2 = getRunningTaskExcept(context);
                if (runningTaskExcept2 == null) {
                    return "";
                }
                return runningTaskExcept2.baseActivity.getPackageName();
            }
            return componentName.getPackageName();
        } catch (NullPointerException e) {
            Log.e("ControlPanelUtils", e.toString(), e);
            return "";
        }
    }

    public static LinearLayout.LayoutParams getRatioLayoutParams(Context context, double d, double d2) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getDefaultDisplay().getRealSize(new Point());
        return new LinearLayout.LayoutParams((int) ((r0.x * d) / 100.0d), (int) ((r0.y * d2) / 100.0d));
    }

    public static RelativeLayout.LayoutParams getRatioRelativeLayoutParams(Context context, double d, double d2) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getDefaultDisplay().getRealSize(new Point());
        return new RelativeLayout.LayoutParams((int) ((r0.x * d) / 100.0d), (int) ((r0.y * d2) / 100.0d));
    }

    public static ActivityManager.RunningTaskInfo getRunningTaskExcept(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService(ActivityManager.class)).getRunningTasks(2);
        if (runningTasks.size() < 2) {
            KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m(5, new StringBuilder("no running Tasks callers="), "ControlPanelUtils");
            return null;
        }
        int i = 0;
        String shortClassName = runningTasks.get(0).topActivity.getShortClassName();
        if ("com.android.wm.shell.controlpanel.activity.FlexPanelActivity".equalsIgnoreCase(shortClassName) || "com.android.wm.shell.controlpanel.activity.VideoControlsActivity".equalsIgnoreCase(shortClassName)) {
            i = 1;
        }
        return runningTasks.get(i);
    }

    public static ComponentName getTopActivity(Context context) {
        ActivityManager.RunningTaskInfo runningTaskExcept = getRunningTaskExcept(context);
        if (runningTaskExcept != null) {
            return runningTaskExcept.topActivity;
        }
        return new ComponentName("", "");
    }

    public static int getTopTaskUserId(Context context) {
        ActivityManager.RunningTaskInfo runningTaskExcept = getRunningTaskExcept(context);
        if (runningTaskExcept != null) {
            return runningTaskExcept.userId;
        }
        return 0;
    }

    public static boolean isAccessibilityEnabled(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "enabled_accessibility_services");
        if (string == null) {
            return false;
        }
        if (!string.contains(TALKBACK_SERVICE) && !string.contains(UNIVERSAL_SWITCH_SERVICE)) {
            return false;
        }
        return true;
    }

    public static boolean isClockActivity(Context context) {
        if (!getTopActivity(context).toString().contains("com.sec.android.app.clockpackage.alarm.activity.AlarmSoundMainActivity") && !getTopActivity(context).toString().contains("com.sec.android.app.clockpackage.ringtonepicker.viewmodel.RingtonePickerActivity") && !getTopActivity(context).toString().contains("com.sec.android.app.clockpackage.alarm.activity.SpotifyActivity")) {
            return false;
        }
        return true;
    }

    public static boolean isKidsMode(Context context) {
        ComponentName componentName = new ComponentName("com.sec.android.app.kidshome", "com.sec.android.app.kidshome.start.ui.StartActivity");
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ActivityInfo activityInfo = packageManager.resolveActivity(intent, 65536).activityInfo;
        return new ComponentName(activityInfo.packageName, activityInfo.name).equals(componentName);
    }

    public static boolean isQuickPanelPressAvailable(Context context, String str) {
        boolean z;
        if (isKidsMode(context) || "com.sec.android.app.clockpackage.alarm.AlarmAlert".equalsIgnoreCase(str) || "com.sec.android.app.clockpackage.alarm.AlarmSmartAlert".equalsIgnoreCase(str) || "com.sec.android.app.clockpackage.timer.TimerAlarm".equalsIgnoreCase(str)) {
            return false;
        }
        if (Settings.Global.getInt(context.getContentResolver(), "device_provisioned", 0) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z || "com.samsung.android.app.telephonyui.emergencydialer.view.EmergencyDialerActivity".equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean isTouchPadEnabled(SharedPreferences sharedPreferences) {
        if (sharedPreferences.getBoolean("TOUCH_PAD_ENABLED", true) && !sharedPreferences.getBoolean("MEDIA_PANEL", false)) {
            return true;
        }
        if (sharedPreferences.getBoolean("MEDIA_TOUCH_PAD_ENABLED", false) && sharedPreferences.getBoolean("MEDIA_PANEL", false)) {
            return true;
        }
        return false;
    }

    public static boolean isTypeFold() {
        return SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_FOLDABLE_TYPE_FOLD");
    }

    public static boolean isWheelActive(Context context) {
        int i = Settings.Global.getInt(context.getContentResolver(), "flex_mode_scroll_wheel_pos", 2);
        if (i != -1 && i != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean makeGridButton(android.content.Context r10, android.widget.RelativeLayout r11, int r12, int r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.wm.shell.controlpanel.utils.ControlPanelUtils.makeGridButton(android.content.Context, android.widget.RelativeLayout, int, int, boolean, boolean):boolean");
    }

    public static void setRatioPadding(Context context, View view, double d, double d2, double d3, double d4) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        int i = point.x;
        int i2 = point.y;
        view.setPadding((int) ((i * d) / 100.0d), (int) ((i2 * d2) / 100.0d), (int) ((i * d3) / 100.0d), (int) ((i2 * d4) / 100.0d));
    }
}
