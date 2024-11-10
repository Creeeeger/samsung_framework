package com.android.server.wm;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.BackgroundStartPrivileges;
import android.content.ComponentName;
import android.content.Intent;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.am.PendingIntentRecord;

/* loaded from: classes3.dex */
public class BackgroundActivityStartController {
    public final ActivityTaskManagerService mService;
    public final ActivityTaskSupervisor mSupervisor;

    public static String balCodeToString(int i) {
        switch (i) {
            case 0:
                return "BAL_BLOCK";
            case 1:
                return "BAL_ALLOW_DEFAULT";
            case 2:
                return "BAL_ALLOW_ALLOWLISTED_UID";
            case 3:
                return "BAL_ALLOW_ALLOWLISTED_COMPONENT";
            case 4:
                return "BAL_ALLOW_VISIBLE_WINDOW";
            case 5:
                return "BAL_ALLOW_PENDING_INTENT";
            case 6:
                return "BAL_ALLOW_PERMISSION";
            case 7:
                return "BAL_ALLOW_SAW_PERMISSION";
            case 8:
                return "BAL_ALLOW_GRACE_PERIOD";
            case 9:
                return "BAL_ALLOW_FOREGROUND";
            case 10:
                return "BAL_ALLOW_SDK_SANDBOX";
            default:
                throw new IllegalArgumentException("Unexpected value: " + i);
        }
    }

    public BackgroundActivityStartController(ActivityTaskManagerService activityTaskManagerService, ActivityTaskSupervisor activityTaskSupervisor) {
        this.mService = activityTaskManagerService;
        this.mSupervisor = activityTaskSupervisor;
    }

    public final boolean isHomeApp(int i, String str) {
        if (this.mService.mHomeProcess != null) {
            return i == this.mService.mHomeProcess.mUid;
        }
        if (str == null) {
            return false;
        }
        ComponentName defaultHomeActivity = this.mService.getPackageManagerInternalLocked().getDefaultHomeActivity(UserHandle.getUserId(i));
        return defaultHomeActivity != null && str.equals(defaultHomeActivity.getPackageName());
    }

    public boolean shouldAbortBackgroundActivityStart(int i, int i2, String str, int i3, int i4, WindowProcessController windowProcessController, PendingIntentRecord pendingIntentRecord, BackgroundStartPrivileges backgroundStartPrivileges, Intent intent, ActivityOptions activityOptions) {
        return checkBackgroundActivityStart(i, i2, str, i3, i4, windowProcessController, pendingIntentRecord, backgroundStartPrivileges, intent, activityOptions) == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int checkBackgroundActivityStart(int r31, int r32, java.lang.String r33, int r34, int r35, com.android.server.wm.WindowProcessController r36, com.android.server.am.PendingIntentRecord r37, android.app.BackgroundStartPrivileges r38, android.content.Intent r39, android.app.ActivityOptions r40) {
        /*
            Method dump skipped, instructions count: 1352
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.BackgroundActivityStartController.checkBackgroundActivityStart(int, int, java.lang.String, int, int, com.android.server.wm.WindowProcessController, com.android.server.am.PendingIntentRecord, android.app.BackgroundStartPrivileges, android.content.Intent, android.app.ActivityOptions):int");
    }

    public final int checkPiBackgroundActivityStart(int i, int i2, BackgroundStartPrivileges backgroundStartPrivileges, Intent intent, ActivityOptions activityOptions, boolean z, boolean z2, String str) {
        if (PendingIntentRecord.isPendingIntentBalAllowedByPermission(activityOptions) && ActivityManager.checkComponentPermission("android.permission.START_ACTIVITIES_FROM_BACKGROUND", i2, -1, true) == 0) {
            return logStartAllowedAndReturnCode(5, false, i, i2, intent, "realCallingUid has BAL permission. realCallingUid: " + i2, str);
        }
        if (z) {
            return logStartAllowedAndReturnCode(5, false, i, i2, intent, "realCallingUid has visible (non-toast) window. realCallingUid: " + i2, str);
        }
        if (z2 && backgroundStartPrivileges.allowsBackgroundActivityStarts()) {
            return logStartAllowedAndReturnCode(5, false, i, i2, intent, "realCallingUid is persistent system process AND intent sender allowed (allowBackgroundActivityStart = true). realCallingUid: " + i2, str);
        }
        if (!this.mService.isAssociatedCompanionApp(UserHandle.getUserId(i2), i2)) {
            return 0;
        }
        return logStartAllowedAndReturnCode(5, false, i, i2, intent, "realCallingUid is a companion app. realCallingUid: " + i2, str);
    }

    public static int logStartAllowedAndReturnCode(int i, boolean z, int i2, int i3, Intent intent, int i4, String str) {
        return logStartAllowedAndReturnCode(i, z, i2, i3, intent, "");
    }

    public static int logStartAllowedAndReturnCode(int i, boolean z, int i2, int i3, Intent intent, String str) {
        return logStartAllowedAndReturnCode(i, z, i2, i3, intent, str, "Activity start allowed");
    }

    public static int logStartAllowedAndReturnCode(int i, int i2, BackgroundStartPrivileges backgroundStartPrivileges, boolean z, int i3, int i4, Intent intent, String str) {
        return (i2 == 0 || !backgroundStartPrivileges.allowsBackgroundActivityStarts()) ? logStartAllowedAndReturnCode(i, z, i3, i4, intent, str, "Activity start allowed") : i2;
    }

    public static int logStartAllowedAndReturnCode(int i, boolean z, int i2, int i3, Intent intent, String str, String str2) {
        statsLogBalAllowed(i, i2, i3, intent);
        return i;
    }

    public static boolean isSystemExemptFlagEnabled() {
        return DeviceConfig.getBoolean("window_manager", "system_exempt_from_activity_bg_start_restriction_enabled", true);
    }

    public static void statsLogBalAllowed(int i, int i2, int i3, Intent intent) {
        if (i == 5 && (i2 == 1000 || i3 == 1000)) {
            FrameworkStatsLog.write(FrameworkStatsLog.BAL_ALLOWED, intent != null ? intent.getComponent().flattenToShortString() : "", i, i2, i3);
        }
        if (i == 6 || i == 9 || i == 7) {
            FrameworkStatsLog.write(FrameworkStatsLog.BAL_ALLOWED, "", i, i2, i3);
        }
    }
}
