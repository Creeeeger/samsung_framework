package com.android.settingslib.applications;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.net.Uri;
import android.os.SystemProperties;
import com.samsung.android.sdhms.SemAppRestrictionManager;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class AppUtils {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        new Intent().setAction("android.intent.action.VIEW").addCategory("android.intent.category.BROWSABLE").setData(Uri.parse("http:"));
    }

    public static boolean isAutoDisabled(ApplicationInfo applicationInfo) {
        SemAppRestrictionManager.RestrictionInfo restrictionInfo = new SemAppRestrictionManager().getRestrictionInfo(0, applicationInfo.packageName, applicationInfo.uid);
        if (restrictionInfo == null || restrictionInfo.getState() != 1 || restrictionInfo.isChangedByUser()) {
            return false;
        }
        return true;
    }

    public static boolean isInstant(ApplicationInfo applicationInfo) {
        String[] split;
        if (applicationInfo.isInstantApp()) {
            return true;
        }
        String str = SystemProperties.get("settingsdebug.instant.packages");
        if (str != null && !str.isEmpty() && applicationInfo.packageName != null && (split = str.split(",")) != null) {
            for (String str2 : split) {
                if (applicationInfo.packageName.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isLanguagePackApk(android.content.Context r8, android.content.pm.ApplicationInfo r9) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.settingslib.applications.AppUtils.isLanguagePackApk(android.content.Context, android.content.pm.ApplicationInfo):boolean");
    }

    public static boolean isManualDisabled(ApplicationInfo applicationInfo) {
        SemAppRestrictionManager.RestrictionInfo restrictionInfo = new SemAppRestrictionManager().getRestrictionInfo(0, applicationInfo.packageName, applicationInfo.uid);
        if (restrictionInfo == null || restrictionInfo.getState() != 1 || !restrictionInfo.isChangedByUser()) {
            return false;
        }
        return true;
    }
}
