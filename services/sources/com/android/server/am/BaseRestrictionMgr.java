package com.android.server.am;

import android.R;
import android.app.AppGlobals;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Slog;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.am.mars.MARsDebugConfig;
import com.android.server.am.mars.database.MARsVersionManager;
import com.android.server.am.mars.filter.filter.AccessibilityAppFilter;
import com.android.server.am.mars.filter.filter.DefaultAppFilter;
import com.android.server.am.mars.util.UidStateMgr;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BaseRestrictionMgr {
    public static String TAG = "BaseRestrictionMgr";
    public Context mContext;
    public final ArrayList mRestrictActivityTheme;

    /* loaded from: classes.dex */
    public abstract class BaseRestrictionMgrHolder {
        public static final BaseRestrictionMgr INSTANCE = new BaseRestrictionMgr();
    }

    public final boolean isBlockAssociatedActivity(ActivityInfo activityInfo) {
        if (MARsPolicyManager.getInstance().checkIsChinaModel() && activityInfo != null && activityInfo.taskAffinity != null && this.mRestrictActivityTheme.contains(Integer.valueOf(activityInfo.theme))) {
            if (MARsVersionManager.getInstance().isAdjustRestrictionMatch(27, activityInfo.taskAffinity, null, null)) {
                return true;
            }
            String[] split = activityInfo.taskAffinity.split(XmlUtils.STRING_ARRAY_SEPARATOR);
            if (split.length <= 1) {
                Slog.e(TAG, "Failed to analyze taskAffinity: [" + activityInfo.taskAffinity + "]");
                return false;
            }
            if (MARsVersionManager.getInstance().isAdjustRestrictionMatch(27, split[1], null, null)) {
                return true;
            }
        }
        return false;
    }

    public BaseRestrictionMgr() {
        this.mContext = null;
        this.mRestrictActivityTheme = new ArrayList() { // from class: com.android.server.am.BaseRestrictionMgr.1
            {
                add(Integer.valueOf(R.style.Theme.Translucent.NoTitleBar));
            }
        };
    }

    public static BaseRestrictionMgr getInstance() {
        return BaseRestrictionMgrHolder.INSTANCE;
    }

    public final void setContext(Context context) {
        this.mContext = context;
    }

    public void init(Context context) {
        setContext(context);
    }

    public final int getRestrictionsByCurrentLevel(int i, boolean z) {
        switch (i) {
            case 1:
                return 536870920;
            case 2:
                if (MARsPolicyManager.getInstance().isChinaPolicyEnabled()) {
                    return (MARsPolicyManager.getInstance().getScreenOnState() && z) ? 536870920 : 1344014472;
                }
                return 536870920;
            case 3:
                return !MARsPolicyManager.getInstance().isChinaPolicyEnabled() ? 336888080 : 1344014472;
            case 4:
                return !MARsPolicyManager.getInstance().isChinaPolicyEnabled() ? 8736 : 1075579016;
            case 5:
            default:
                return 0;
            case 6:
                return 16777760;
            case 7:
                return 16777490;
            case 8:
                return 1344014472;
            case 9:
                return 16785952;
        }
    }

    public boolean isRestrictedPackage(ComponentName componentName, String str, int i, String str2, Intent intent, int i2, String str3, int i3, int i4) {
        return isRestrictedPackage(componentName, str, i, str2, intent, null, i2, false, false, null, str3, i3, i4);
    }

    public boolean isRestrictedPackage(ComponentName componentName, String str, int i, String str2, Intent intent, int i2, ActivityInfo activityInfo, String str3, int i3, int i4) {
        return isRestrictedPackage(componentName, str, i, str2, intent, null, i2, false, false, activityInfo, str3, i3, i4);
    }

    public boolean isRestrictedPackage(ComponentName componentName, String str, int i, String str2, Intent intent, String str3, int i2, boolean z, boolean z2, String str4, int i3, int i4) {
        return isRestrictedPackage(componentName, str, i, str2, intent, str3, i2, z, z2, null, str4, i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:376:0x0526, code lost:
    
        if (isPolicyBlockedPackage(r27, r28, r26, r29, r30, r20, r32) > 0) goto L328;
     */
    /* JADX WARN: Removed duplicated region for block: B:260:0x038b A[Catch: all -> 0x06a2, TryCatch #0 {, blocks: (B:17:0x0047, B:19:0x0051, B:21:0x0059, B:23:0x0065, B:24:0x0078, B:26:0x0085, B:29:0x009a, B:31:0x00a0, B:33:0x00aa, B:35:0x00b9, B:36:0x00b2, B:41:0x00bc, B:44:0x00d0, B:46:0x00d8, B:48:0x00e4, B:51:0x00f8, B:53:0x00fe, B:55:0x010a, B:57:0x011d, B:58:0x0113, B:64:0x0121, B:66:0x013c, B:69:0x0148, B:70:0x014f, B:72:0x0156, B:73:0x015c, B:76:0x0170, B:78:0x0179, B:79:0x018c, B:84:0x0194, B:87:0x01a0, B:88:0x01a7, B:90:0x01ae, B:91:0x01b4, B:94:0x01c8, B:97:0x01cc, B:100:0x01d4, B:103:0x01e0, B:104:0x01e7, B:106:0x01ee, B:107:0x01f4, B:110:0x0208, B:113:0x020c, B:116:0x021c, B:118:0x0222, B:120:0x0232, B:123:0x0242, B:128:0x024b, B:131:0x0255, B:133:0x025b, B:136:0x0261, B:138:0x0266, B:141:0x0272, B:143:0x0277, B:146:0x0283, B:148:0x0288, B:151:0x0294, B:153:0x0299, B:157:0x02a7, B:159:0x02af, B:166:0x0534, B:169:0x0548, B:170:0x0555, B:172:0x055f, B:175:0x056b, B:177:0x0574, B:178:0x0589, B:181:0x05c3, B:182:0x05ca, B:184:0x05d1, B:185:0x05d8, B:188:0x05ec, B:190:0x0582, B:194:0x05f4, B:196:0x05fa, B:197:0x0603, B:200:0x0609, B:201:0x0641, B:222:0x02c2, B:224:0x02c6, B:228:0x02d9, B:230:0x02dd, B:234:0x02e5, B:236:0x02e9, B:238:0x02ef, B:240:0x02f7, B:242:0x0306, B:246:0x033b, B:248:0x0344, B:251:0x034e, B:253:0x0357, B:255:0x035b, B:258:0x0387, B:260:0x038b, B:264:0x039a, B:266:0x039e, B:269:0x03ae, B:271:0x03b2, B:283:0x03ca, B:286:0x03dd, B:289:0x03e3, B:291:0x03e7, B:295:0x03fa, B:297:0x03fe, B:301:0x0406, B:303:0x040c, B:307:0x0424, B:311:0x042e, B:313:0x043a, B:317:0x0446, B:319:0x044b, B:323:0x0453, B:325:0x0458, B:329:0x0464, B:331:0x0469, B:333:0x0473, B:337:0x047b, B:339:0x0480, B:350:0x04a4, B:352:0x04ae, B:356:0x04bd, B:358:0x04c9, B:362:0x04ea, B:364:0x04ee, B:368:0x04fa, B:370:0x04fe, B:373:0x050e, B:375:0x0512), top: B:16:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:266:0x039e A[Catch: all -> 0x06a2, TryCatch #0 {, blocks: (B:17:0x0047, B:19:0x0051, B:21:0x0059, B:23:0x0065, B:24:0x0078, B:26:0x0085, B:29:0x009a, B:31:0x00a0, B:33:0x00aa, B:35:0x00b9, B:36:0x00b2, B:41:0x00bc, B:44:0x00d0, B:46:0x00d8, B:48:0x00e4, B:51:0x00f8, B:53:0x00fe, B:55:0x010a, B:57:0x011d, B:58:0x0113, B:64:0x0121, B:66:0x013c, B:69:0x0148, B:70:0x014f, B:72:0x0156, B:73:0x015c, B:76:0x0170, B:78:0x0179, B:79:0x018c, B:84:0x0194, B:87:0x01a0, B:88:0x01a7, B:90:0x01ae, B:91:0x01b4, B:94:0x01c8, B:97:0x01cc, B:100:0x01d4, B:103:0x01e0, B:104:0x01e7, B:106:0x01ee, B:107:0x01f4, B:110:0x0208, B:113:0x020c, B:116:0x021c, B:118:0x0222, B:120:0x0232, B:123:0x0242, B:128:0x024b, B:131:0x0255, B:133:0x025b, B:136:0x0261, B:138:0x0266, B:141:0x0272, B:143:0x0277, B:146:0x0283, B:148:0x0288, B:151:0x0294, B:153:0x0299, B:157:0x02a7, B:159:0x02af, B:166:0x0534, B:169:0x0548, B:170:0x0555, B:172:0x055f, B:175:0x056b, B:177:0x0574, B:178:0x0589, B:181:0x05c3, B:182:0x05ca, B:184:0x05d1, B:185:0x05d8, B:188:0x05ec, B:190:0x0582, B:194:0x05f4, B:196:0x05fa, B:197:0x0603, B:200:0x0609, B:201:0x0641, B:222:0x02c2, B:224:0x02c6, B:228:0x02d9, B:230:0x02dd, B:234:0x02e5, B:236:0x02e9, B:238:0x02ef, B:240:0x02f7, B:242:0x0306, B:246:0x033b, B:248:0x0344, B:251:0x034e, B:253:0x0357, B:255:0x035b, B:258:0x0387, B:260:0x038b, B:264:0x039a, B:266:0x039e, B:269:0x03ae, B:271:0x03b2, B:283:0x03ca, B:286:0x03dd, B:289:0x03e3, B:291:0x03e7, B:295:0x03fa, B:297:0x03fe, B:301:0x0406, B:303:0x040c, B:307:0x0424, B:311:0x042e, B:313:0x043a, B:317:0x0446, B:319:0x044b, B:323:0x0453, B:325:0x0458, B:329:0x0464, B:331:0x0469, B:333:0x0473, B:337:0x047b, B:339:0x0480, B:350:0x04a4, B:352:0x04ae, B:356:0x04bd, B:358:0x04c9, B:362:0x04ea, B:364:0x04ee, B:368:0x04fa, B:370:0x04fe, B:373:0x050e, B:375:0x0512), top: B:16:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x03b2 A[Catch: all -> 0x06a2, TryCatch #0 {, blocks: (B:17:0x0047, B:19:0x0051, B:21:0x0059, B:23:0x0065, B:24:0x0078, B:26:0x0085, B:29:0x009a, B:31:0x00a0, B:33:0x00aa, B:35:0x00b9, B:36:0x00b2, B:41:0x00bc, B:44:0x00d0, B:46:0x00d8, B:48:0x00e4, B:51:0x00f8, B:53:0x00fe, B:55:0x010a, B:57:0x011d, B:58:0x0113, B:64:0x0121, B:66:0x013c, B:69:0x0148, B:70:0x014f, B:72:0x0156, B:73:0x015c, B:76:0x0170, B:78:0x0179, B:79:0x018c, B:84:0x0194, B:87:0x01a0, B:88:0x01a7, B:90:0x01ae, B:91:0x01b4, B:94:0x01c8, B:97:0x01cc, B:100:0x01d4, B:103:0x01e0, B:104:0x01e7, B:106:0x01ee, B:107:0x01f4, B:110:0x0208, B:113:0x020c, B:116:0x021c, B:118:0x0222, B:120:0x0232, B:123:0x0242, B:128:0x024b, B:131:0x0255, B:133:0x025b, B:136:0x0261, B:138:0x0266, B:141:0x0272, B:143:0x0277, B:146:0x0283, B:148:0x0288, B:151:0x0294, B:153:0x0299, B:157:0x02a7, B:159:0x02af, B:166:0x0534, B:169:0x0548, B:170:0x0555, B:172:0x055f, B:175:0x056b, B:177:0x0574, B:178:0x0589, B:181:0x05c3, B:182:0x05ca, B:184:0x05d1, B:185:0x05d8, B:188:0x05ec, B:190:0x0582, B:194:0x05f4, B:196:0x05fa, B:197:0x0603, B:200:0x0609, B:201:0x0641, B:222:0x02c2, B:224:0x02c6, B:228:0x02d9, B:230:0x02dd, B:234:0x02e5, B:236:0x02e9, B:238:0x02ef, B:240:0x02f7, B:242:0x0306, B:246:0x033b, B:248:0x0344, B:251:0x034e, B:253:0x0357, B:255:0x035b, B:258:0x0387, B:260:0x038b, B:264:0x039a, B:266:0x039e, B:269:0x03ae, B:271:0x03b2, B:283:0x03ca, B:286:0x03dd, B:289:0x03e3, B:291:0x03e7, B:295:0x03fa, B:297:0x03fe, B:301:0x0406, B:303:0x040c, B:307:0x0424, B:311:0x042e, B:313:0x043a, B:317:0x0446, B:319:0x044b, B:323:0x0453, B:325:0x0458, B:329:0x0464, B:331:0x0469, B:333:0x0473, B:337:0x047b, B:339:0x0480, B:350:0x04a4, B:352:0x04ae, B:356:0x04bd, B:358:0x04c9, B:362:0x04ea, B:364:0x04ee, B:368:0x04fa, B:370:0x04fe, B:373:0x050e, B:375:0x0512), top: B:16:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0398  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isRestrictedPackage(android.content.ComponentName r26, java.lang.String r27, int r28, java.lang.String r29, android.content.Intent r30, java.lang.String r31, int r32, boolean r33, boolean r34, android.content.pm.ActivityInfo r35, java.lang.String r36, int r37, int r38) {
        /*
            Method dump skipped, instructions count: 1701
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.BaseRestrictionMgr.isRestrictedPackage(android.content.ComponentName, java.lang.String, int, java.lang.String, android.content.Intent, java.lang.String, int, boolean, boolean, android.content.pm.ActivityInfo, java.lang.String, int, int):boolean");
    }

    public Intent getLaunchIntentForPackage(String str, int i) {
        PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.INFO");
        intent.setPackage(str);
        List queryIntentActivitiesAsUser = packageManager.queryIntentActivitiesAsUser(intent, 0, i);
        if (queryIntentActivitiesAsUser == null || queryIntentActivitiesAsUser.isEmpty()) {
            intent.removeCategory("android.intent.category.INFO");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(str);
            queryIntentActivitiesAsUser = packageManager.queryIntentActivitiesAsUser(intent, 0, i);
        }
        if (queryIntentActivitiesAsUser == null || queryIntentActivitiesAsUser.isEmpty()) {
            return null;
        }
        Intent intent2 = new Intent(intent);
        intent2.setFlags(268435456);
        intent2.setClassName(((ResolveInfo) queryIntentActivitiesAsUser.get(0)).activityInfo.packageName, ((ResolveInfo) queryIntentActivitiesAsUser.get(0)).activityInfo.name);
        return intent2;
    }

    public final int isPolicyBlockedPackage(String str, int i, ComponentName componentName, String str2, Intent intent, int i2, int i3) {
        String packageName = componentName.getPackageName();
        int userId = UserHandle.getUserId(i2);
        if (str == null) {
            if (MARsDebugConfig.DEBUG_MARs) {
                Slog.d(TAG, "Blocked by policy:" + i3 + " -- Caller is null!!");
            }
            return -1;
        }
        if (str.equals(packageName) && !FreecessController.getInstance().isCalmModeOnoff()) {
            return 1;
        }
        if (i3 != 4 && !FreecessController.getInstance().isCalmModeOnoff()) {
            if (MARsPolicyManager.getInstance().checkIsChinaModel() && !UidStateMgr.getInstance().isUidGone(i2)) {
                return 1;
            }
            if (!MARsPolicyManager.getInstance().checkIsChinaModel() && UidStateMgr.getInstance().isUidRunning(i2)) {
                return 1;
            }
        }
        if ((("startService".equals(str2) || "bindService".equals(str2)) && isShouldSkipCaseForPolicy(str, i, packageName, intent)) || "com.sec.android.app.samsungapps".equals(packageName)) {
            return 1;
        }
        if (isLauncherableApp(packageName, userId) && isLauncherableApp(str, i)) {
            if (!isSamsungService(str, i)) {
                if (MARsDebugConfig.DEBUG_MARs) {
                    Slog.d(TAG, "is Blocked by Policy:" + i3 + " -- Caller is not samsung!!");
                }
                return -1;
            }
            if (FreecessController.getInstance().isCalmModeOnoff()) {
                if (MARsDebugConfig.DEBUG_MARs) {
                    Slog.d(TAG, "is Blocked by Policy:" + i3 + " -- isCalmMode!!");
                }
                return -1;
            }
        }
        if (isShouldBlockCase(str, packageName, intent)) {
            if (MARsDebugConfig.DEBUG_MARs) {
                Slog.d(TAG, "Blocked by policy:" + i3 + " -- should Block cases!!");
            }
            return -1;
        }
        if (!MARsPolicyManager.getInstance().isChinaPolicyEnabled() || !"bindService".equals(str2)) {
            return 2;
        }
        if (i3 != 4 && isJobSchedulerPackage(str, componentName, userId)) {
            if (MARsDebugConfig.DEBUG_MARs) {
                Slog.d(TAG, "Blocked by policy:" + i3 + " -- JobSchedulerPackage!!");
            }
            return -1;
        }
        if (isSyncManagerPackage(str, componentName, intent)) {
            if (MARsDebugConfig.DEBUG_MARs) {
                Slog.d(TAG, "Blocked by policy:" + i3 + " -- SyncManagerPackage!!");
            }
            return -1;
        }
        if (!isBindNotificationListenerPackage(str, componentName, userId)) {
            return 2;
        }
        if (MARsDebugConfig.DEBUG_MARs) {
            Slog.d(TAG, "Blocked by policy:" + i3 + " -- isBindNotificationListenerPackage!!");
        }
        return -1;
    }

    public final boolean isEssentialIntent(String str, String str2, String str3) {
        return MARsVersionManager.getInstance().isAdjustRestrictionMatch(3, str, str2, str3);
    }

    public final boolean isSelfIntent(String str, String str2) {
        if (str == null || !str.equals(str2)) {
            return false;
        }
        if (!MARsDebugConfig.DEBUG_MARs) {
            return true;
        }
        Slog.v(TAG, "isSelfIntent :" + str);
        return true;
    }

    public final boolean isCurrentLauncherApp(String str) {
        if (str == null || !str.equals(DefaultAppFilter.getInstance().getDefaultHomePackage())) {
            return false;
        }
        Slog.d(TAG, "Call from Current Launcher app :" + str);
        return true;
    }

    public final boolean isSpageApp(String str) {
        if (str == null || !str.equals("com.samsung.android.app.spage")) {
            return false;
        }
        Slog.d(TAG, "Call from spage app :" + str);
        return true;
    }

    public final boolean isShouldSkipCaseForPolicy(String str, int i, String str2, Intent intent) {
        String action = (intent == null || intent.getAction() == null) ? null : intent.getAction();
        if ("android".equals(str) && action == null && AccessibilityAppFilter.getInstance().isEnabledAccessibilityApp(str2)) {
            Slog.d(TAG, "isShouldSkipCase: Enable AccessibilityService callee = " + str2);
            return true;
        }
        if (MARsPolicyManager.getInstance().isChinaPolicyEnabled() && MARsVersionManager.getInstance().isAdjustRestrictionMatch(1, str2, str, action)) {
            return true;
        }
        if (!MARsPolicyManager.getInstance().isChinaPolicyEnabled() || !MARsVersionManager.getInstance().isAdjustRestrictionMatch(7, str2, str, action) || !MARsPolicyManager.getInstance().isForegroundPackage(str, i)) {
            return false;
        }
        Slog.d(TAG, "isShouldSkipCase: Foreground caller and callee = " + str2);
        return true;
    }

    public final boolean isSamsungService(String str, int i) {
        if ("system".equals(str) || str.startsWith("com.sec.") || str.startsWith("com.samsung.")) {
            if (MARsDebugConfig.DEBUG_MARs) {
                Slog.d(TAG, "isSamsungService -- SamsungService:" + str);
            }
            return true;
        }
        if ("com.baidu.BaiduMap".equals(str) || "com.baidu.searchbox_samsung".equals(str) || "com.baidu.netdisk_ss".equals(str) || !isSystemPackage(str, i)) {
            return false;
        }
        if (MARsDebugConfig.DEBUG_MARs) {
            Slog.d(TAG, "isSamsungService -- SystemPackage:" + str);
        }
        return true;
    }

    public final boolean isLauncherableApp(String str, int i) {
        if (!"com.baidu.searchbox_samsung".equals(str) && !"com.bst.floatingmsgproxy".equals(str)) {
            try {
                if (getLaunchIntentForPackage(str, i) == null) {
                    if (MARsPolicyManager.getInstance().isMARsTarget(str, i)) {
                        if (MARsDebugConfig.DEBUG_MARs) {
                            Slog.d(TAG, "AutoRun Policy isLauncherableApp -- Not launcherable 3rd party package:" + str);
                        }
                        return true;
                    }
                    if (!MARsDebugConfig.DEBUG_MARs) {
                        return false;
                    }
                    Slog.d(TAG, "AutoRun Policy isLauncherableApp -- Not launcherable system package:" + str);
                    return false;
                }
            } catch (Exception e) {
                Slog.e(TAG, "isLaucherableApp exception=" + e);
            }
        }
        return true;
    }

    public final boolean isShouldBlockCase(String str, String str2, Intent intent) {
        String action = (intent == null || intent.getAction() == null) ? null : intent.getAction();
        if ("android".equals(str) && "android.accounts.AccountAuthenticator".equals(action)) {
            if (intent.getIntExtra("binderCallingUid", 1000) != 1000) {
                Slog.d(TAG, "isShouldBlockCase: block AccountAuthenticator");
                return true;
            }
            Slog.d(TAG, "isShouldBlockCase: not block AccountAuthenticator");
        }
        return MARsPolicyManager.getInstance().isChinaPolicyEnabled() && MARsVersionManager.getInstance().isAdjustRestrictionMatch(2, str2, str, action);
    }

    public final boolean isJobSchedulerPackage(String str, ComponentName componentName, int i) {
        IPackageManager packageManager;
        boolean z = false;
        if (str == null || (packageManager = AppGlobals.getPackageManager()) == null) {
            return false;
        }
        try {
            ServiceInfo serviceInfo = packageManager.getServiceInfo(componentName, 0L, i);
            if (serviceInfo == null || !"android.permission.BIND_JOB_SERVICE".equals(serviceInfo.permission) || !"android".equals(str)) {
                return false;
            }
            z = true;
            Slog.d(TAG, "AutoRun Policy isJobSchedulerPackage -- package = " + componentName.getPackageName());
            return true;
        } catch (RemoteException e) {
            Slog.e(TAG, "isJobSchedulerPackage exception=" + e);
            return z;
        }
    }

    public final boolean isSyncManagerPackage(String str, ComponentName componentName, Intent intent) {
        boolean z = false;
        if (str == null) {
            return false;
        }
        try {
            if (intent.getAction() == null || !"android".equals(str) || !"android.content.SyncAdapter".equals(intent.getAction())) {
                return false;
            }
            z = true;
            Slog.d(TAG, "AutoRun Policy isSyncManagerPackage -- package = " + componentName.getPackageName());
            return true;
        } catch (Exception e) {
            Slog.e(TAG, "isSyncManagerPackage exception=" + e);
            return z;
        }
    }

    public final boolean isBindNotificationListenerPackage(String str, ComponentName componentName, int i) {
        IPackageManager packageManager;
        boolean z = false;
        if (str == null || (packageManager = AppGlobals.getPackageManager()) == null) {
            return false;
        }
        try {
            ServiceInfo serviceInfo = packageManager.getServiceInfo(componentName, 0L, i);
            if (serviceInfo == null || !"android.permission.BIND_NOTIFICATION_LISTENER_SERVICE".equals(serviceInfo.permission) || !"android".equals(str)) {
                return false;
            }
            z = true;
            Slog.d(TAG, "AutoRun Policy isBindNotificationListenerPackage -- package = " + componentName.getPackageName());
            return true;
        } catch (RemoteException e) {
            Slog.e(TAG, "isBindNotificationListenerPackage exception=" + e);
            return z;
        }
    }

    public final boolean isSystemPackage(String str, int i) {
        try {
            ApplicationInfo applicationInfoAsUser = this.mContext.getPackageManager().getApplicationInfoAsUser(str, 0, i);
            if (applicationInfoAsUser == null || (applicationInfoAsUser.flags & 1) == 0) {
                return false;
            }
            return this.mContext.getPackageManager().checkSignatures(str, "android") >= 0;
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "isSystemPackage exception=" + e);
            return false;
        }
    }
}
