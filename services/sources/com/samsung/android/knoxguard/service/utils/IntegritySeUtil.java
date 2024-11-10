package com.samsung.android.knoxguard.service.utils;

import android.app.ActivityManager;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.admin.DevicePolicyManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ComponentInfo;
import android.content.pm.IPackageManager;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.IInstalld;
import android.os.RemoteException;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Slog;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import com.samsung.android.knoxguard.service.KnoxGuardNative;
import com.samsung.android.knoxguard.service.KnoxGuardSeService;
import com.samsung.android.server.pm.mm.MaintenanceModeManager;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public abstract class IntegritySeUtil {
    public static final String TAG = "KG." + IntegritySeUtil.class.getSimpleName();

    /* loaded from: classes2.dex */
    public class IntegritySeResult {
        public boolean isOk = false;
        public boolean validSignature = false;
        public boolean enabled = false;
        public boolean validVersion = false;
        public boolean enabledAdminReceiver = false;
        public boolean enabledSystemIntentReceiver = false;
        public boolean enabledSelfUpdateReceiver = false;
        public boolean enabledKgEventService = false;
        public boolean enabledAlarmService = false;
        public boolean enabledKGProvider = false;
    }

    public static IntegritySeResult checkKGClientIntegrity(Context context, int i) {
        String str = TAG;
        Slog.i(str, "checkKGClientIntegrity()");
        Slog.i(str, "kgState() : " + i);
        IntegritySeResult integritySeResult = new IntegritySeResult();
        if (4 == i) {
            Slog.d(str, "checkKGClientIntegrity() KG_STATE_COMPLETED. Do nothing.");
            integritySeResult.isOk = true;
            return integritySeResult;
        }
        try {
            boolean checkSignatures = checkSignatures(context);
            boolean isSystemApp = isSystemApp(context);
            boolean isEnabled = isEnabled(context);
            boolean isValidVersion = isValidVersion(context);
            Slog.d(str, "checkSignatures : " + checkSignatures);
            Slog.d(str, "isSystemApp : " + isSystemApp);
            Slog.d(str, "isEnabled : " + isEnabled);
            Slog.d(str, "isValidVersion : " + isValidVersion);
            integritySeResult.validSignature = checkSignatures;
            integritySeResult.enabled = isEnabled;
            integritySeResult.validVersion = isValidVersion;
            boolean checkComponents = checkComponents(context, integritySeResult);
            Slog.d(str, "isComponentEnabled : " + checkComponents);
            if (!isValidVersion) {
                Slog.d(str, "kgclient is invalid. makes client disable");
                disableClient(context);
            }
            integritySeResult.isOk = checkSignatures & isEnabled & isValidVersion & checkComponents;
            return integritySeResult;
        } catch (Exception e) {
            Slog.e(TAG, e.getMessage());
            return integritySeResult;
        }
    }

    public static int getActiveUserId() {
        int i;
        try {
            i = ActivityManager.semGetCurrentUser();
        } catch (Throwable th) {
            th = th;
            i = 0;
        }
        try {
            Slog.i(TAG, "user id is " + i);
        } catch (Throwable th2) {
            th = th2;
            Slog.e(TAG, "semGetCurrentUser error: " + th.getMessage());
            return i;
        }
        return i;
    }

    public static void enableComponents(Context context) {
        Slog.i(TAG, "enableComponents()");
        int activeUserId = getActiveUserId();
        enableComponent(context, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver", activeUserId);
        enableComponent(context, "com.samsung.android.kgclient.receiver.SystemIntentReceiver", activeUserId);
        enableComponent(context, "com.samsung.android.kgclient.selfupdate.SelfupdateReceiver", activeUserId);
        enableComponent(context, "com.samsung.android.kgclient.events.KGEventService", activeUserId);
        enableComponent(context, "com.samsung.android.kgclient.alarm.AlarmService", activeUserId);
        enableComponent(context, "com.samsung.android.kgclient.provider.KGProvider", activeUserId);
    }

    public static void enableComponent(Context context, String str, int i) {
        try {
            ComponentName componentName = new ComponentName(KnoxCustomManagerService.KG_PKG_NAME, str);
            if (MaintenanceModeManager.isInMaintenanceMode()) {
                IPackageManager packageManager = AppGlobals.getPackageManager();
                if (packageManager == null) {
                    Slog.w(TAG, "IPackageManager is null");
                    return;
                } else {
                    packageManager.setComponentEnabledSetting(componentName, 1, 1, i, (String) null);
                    return;
                }
            }
            context.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
        } catch (Exception e) {
            Slog.e(TAG, "enableComponent Exception. " + e);
        }
    }

    public static IntegritySeResult checkKGClientIntegrityAndEnableComponent(Context context, int i) {
        IntegritySeResult checkKGClientIntegrity = checkKGClientIntegrity(context, i);
        if (checkKGClientIntegrity.isOk) {
            return checkKGClientIntegrity;
        }
        enableComponents(context);
        return checkKGClientIntegrity(context, i);
    }

    public static String getFailedIntegrityResult(IntegritySeResult integritySeResult) {
        StringBuilder sb = new StringBuilder();
        if (!integritySeResult.validSignature) {
            sb.append("SIGNATURE,");
        }
        if (!integritySeResult.enabled) {
            sb.append("ENABLED,");
        }
        if (!integritySeResult.validVersion) {
            sb.append("VERSION,");
        }
        if (!integritySeResult.enabledAdminReceiver) {
            sb.append("KGDeviceAdminReceiver,");
        }
        if (!integritySeResult.enabledSystemIntentReceiver) {
            sb.append("SystemIntentReceiver,");
        }
        if (!integritySeResult.enabledSelfUpdateReceiver) {
            sb.append("SelfUpdateReceiver,");
        }
        if (!integritySeResult.enabledKgEventService) {
            sb.append("KgEventService,");
        }
        if (!integritySeResult.enabledAlarmService) {
            sb.append("AlarmService,");
        }
        if (!integritySeResult.enabledKGProvider) {
            sb.append("KGProvider,");
        }
        return sb.toString();
    }

    public static boolean checkTaIntegrity(int i) {
        try {
            return (Utils.isOtpBitFusedWithActive() && -1006 == i) ? false : true;
        } catch (Exception e) {
            Slog.e(TAG, "checkTaIntegrity Exception. " + e);
            return false;
        }
    }

    public static boolean checkAPSerialIntegrity(int i) {
        return !Utils.isSingleOtpBitFusedWithActive() || 4 == i || isAPSerialValid();
    }

    public static boolean isAPSerialValid() {
        String stringResult = KnoxGuardSeService.getStringResult(KnoxGuardNative.getTAInfo(4));
        boolean z = !TextUtils.isEmpty(stringResult) && stringResult.length() == 32 && Pattern.matches("[a-fA-F0-9]{32}", stringResult);
        Slog.d(TAG, "isAPSerialValid - " + z);
        return z;
    }

    public static boolean checkSignatures(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(KnoxCustomManagerService.KG_PKG_NAME, 64);
            String str = TAG;
            Slog.d(str, "pkgInfo : " + packageInfo.toString());
            if (packageManager.checkSignatures("android", KnoxCustomManagerService.KG_PKG_NAME) != 0) {
                Slog.i(str, "KG Client signature doesn't match with platform.");
                return false;
            }
            Slog.i(str, "KG Client signature match with platform.");
            return true;
        } catch (Exception e) {
            Slog.e(TAG, "checkKGClientIntegrity Exception. " + e);
            return false;
        }
    }

    public static boolean isSystemApp(Context context) {
        try {
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "isSystemApp NameNotFoundException : " + e);
        }
        return (context.getPackageManager().getApplicationInfo(KnoxCustomManagerService.KG_PKG_NAME, 0).flags & 1) != 0;
    }

    public static boolean isEnabled(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(KnoxCustomManagerService.KG_PKG_NAME, 0).enabled;
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "isEnabled NameNotFoundException : " + e);
            return false;
        }
    }

    public static void checkSystemUiIntegrity(Context context) {
        Slog.i(TAG, "checkSystemUiIntegrity()");
        int testSystemUiCorrupted = testSystemUiCorrupted(context);
        if (testSystemUiCorrupted > 0) {
            Utils.powerOff(context, testSystemUiCorrupted);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004f A[Catch: Exception -> 0x0055, TRY_LEAVE, TryCatch #2 {Exception -> 0x0055, blocks: (B:13:0x0049, B:15:0x004f), top: B:12:0x0049 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int testSystemUiCorrupted(android.content.Context r9) {
        /*
            java.lang.String r9 = "com.android.systemui"
            android.content.pm.IPackageManager r6 = android.app.AppGlobals.getPackageManager()
            r7 = 0
            if (r6 != 0) goto L11
            java.lang.String r9 = com.samsung.android.knoxguard.service.utils.IntegritySeUtil.TAG
            java.lang.String r0 = "PackageManager is null"
            android.util.Slog.w(r9, r0)
            return r7
        L11:
            r0 = 0
            android.content.pm.ApplicationInfo r0 = r6.getApplicationInfo(r9, r0, r7)     // Catch: java.lang.Exception -> L2c
            boolean r0 = r0.enabled     // Catch: java.lang.Exception -> L2c
            r8 = 1
            r0 = r0 ^ r8
            if (r0 == 0) goto L2a
            java.lang.String r1 = "com.android.systemui"
            r2 = 1
            r3 = 0
            r4 = 0
            r5 = 0
            r0 = r6
            r0.setApplicationEnabledSetting(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L28
            goto L49
        L28:
            r0 = move-exception
            goto L2e
        L2a:
            r8 = r7
            goto L49
        L2c:
            r0 = move-exception
            r8 = r7
        L2e:
            java.lang.String r1 = com.samsung.android.knoxguard.service.utils.IntegritySeUtil.TAG
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "testSystemUiCorrupted : Exception in checking enabled value: "
            r2.append(r3)
            java.lang.String r0 = r0.getMessage()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Slog.e(r1, r0)
        L49:
            boolean r0 = r6.getApplicationHiddenSettingAsUser(r9, r7)     // Catch: java.lang.Exception -> L55
            if (r0 == 0) goto L71
            r8 = r8 | 2
            r6.setApplicationHiddenSettingAsUser(r9, r7, r7)     // Catch: java.lang.Exception -> L55
            goto L71
        L55:
            r9 = move-exception
            java.lang.String r0 = com.samsung.android.knoxguard.service.utils.IntegritySeUtil.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "testSystemUiCorrupted : Exception in checking hidden value: "
            r1.append(r2)
            java.lang.String r9 = r9.getMessage()
            r1.append(r9)
            java.lang.String r9 = r1.toString()
            android.util.Slog.e(r0, r9)
        L71:
            java.lang.String r9 = com.samsung.android.knoxguard.service.utils.IntegritySeUtil.TAG
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "testSystemUiCorrupted: "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r0 = r0.toString()
            android.util.Slog.w(r9, r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knoxguard.service.utils.IntegritySeUtil.testSystemUiCorrupted(android.content.Context):int");
    }

    public static boolean isValidVersion(Context context) {
        return 300000000 <= getClientVersionCode(context, 300000000L);
    }

    public static long getClientVersionCode(Context context, long j) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            Slog.w(TAG, "PackageManager is null");
            return j;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(KnoxCustomManagerService.KG_PKG_NAME, 0);
            if (packageInfo != null) {
                return packageInfo.getLongVersionCode();
            }
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "Client Notfound : " + e);
        }
        return j;
    }

    public static void disableClient(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            Slog.w(TAG, "PackageManager is null");
            return;
        }
        try {
            Slog.i(TAG, "disable kgclient");
            packageManager.setApplicationEnabledSetting(KnoxCustomManagerService.KG_PKG_NAME, 2, 0);
        } catch (Exception e) {
            Slog.e(TAG, "disable exception: " + e.getMessage());
        }
    }

    public static boolean checkComponents(Context context, IntegritySeResult integritySeResult) {
        PackageInfo packageInfo;
        try {
            if (MaintenanceModeManager.isInMaintenanceMode()) {
                IPackageManager packageManager = AppGlobals.getPackageManager();
                if (packageManager == null) {
                    Slog.w(TAG, "IPackageManager is null");
                    return false;
                }
                packageInfo = packageManager.getPackageInfo(KnoxCustomManagerService.KG_PKG_NAME, 14L, getActiveUserId());
            } else {
                PackageManager packageManager2 = context.getPackageManager();
                if (packageManager2 == null) {
                    Slog.w(TAG, "PackageManager is null");
                    return false;
                }
                packageInfo = packageManager2.getPackageInfo(KnoxCustomManagerService.KG_PKG_NAME, 14);
            }
            integritySeResult.enabledAdminReceiver = hasEnabledComponent(packageInfo.receivers, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver");
            integritySeResult.enabledSystemIntentReceiver = hasEnabledComponent(packageInfo.receivers, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.receiver.SystemIntentReceiver");
            integritySeResult.enabledSelfUpdateReceiver = hasEnabledComponent(packageInfo.receivers, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.selfupdate.SelfupdateReceiver");
            integritySeResult.enabledKgEventService = hasEnabledComponent(packageInfo.services, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.events.KGEventService");
            integritySeResult.enabledAlarmService = hasEnabledComponent(packageInfo.services, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.alarm.AlarmService");
            integritySeResult.enabledKGProvider = hasEnabledComponent(packageInfo.providers, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.provider.KGProvider");
        } catch (PackageManager.NameNotFoundException | RemoteException e) {
            Slog.e(TAG, "checkComponents error: " + e.getMessage());
        }
        return integritySeResult.enabledAdminReceiver && integritySeResult.enabledSystemIntentReceiver && integritySeResult.enabledSelfUpdateReceiver && integritySeResult.enabledKgEventService && integritySeResult.enabledAlarmService && integritySeResult.enabledKGProvider;
    }

    public static boolean hasEnabledComponent(ComponentInfo[] componentInfoArr, String str, String str2) {
        if (componentInfoArr == null) {
            return false;
        }
        for (ComponentInfo componentInfo : componentInfoArr) {
            if (componentInfo.name.equals(str2) && componentInfo.packageName.equals(str)) {
                return componentInfo.isEnabled();
            }
        }
        return false;
    }

    public static int toErrorCode(IntegritySeResult integritySeResult) {
        if (integritySeResult == null) {
            return 0;
        }
        return (integritySeResult.validSignature ? 0 : 2) | 4097 | (integritySeResult.enabled ? 0 : 4) | (integritySeResult.validVersion ? 0 : 8) | (integritySeResult.enabledAdminReceiver ? 0 : 64) | (integritySeResult.enabledSystemIntentReceiver ? 0 : 128) | (integritySeResult.enabledSelfUpdateReceiver ? 0 : 256) | (integritySeResult.enabledKgEventService ? 0 : 512) | (integritySeResult.enabledAlarmService ? 0 : 1024) | (integritySeResult.enabledKGProvider ? 0 : IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v7, types: [android.app.AppOpsManager] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0092 -> B:27:0x00a8). Please report as a decompilation issue!!! */
    public static void setInitialState(Context context, int i) {
        Context context2;
        String str = TAG;
        Slog.i(str, "setInitialState, state : " + i);
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy");
        if (devicePolicyManager == null) {
            Slog.e(str, "DPM is not available");
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getApplicationInfo(KnoxCustomManagerService.KG_PKG_NAME, 0);
            if (!checkSignatures(context)) {
                Slog.e(str, "KGClient is malicious, it will be locked");
                return;
            }
            if (4 != i) {
                try {
                    int callingUserId = UserHandle.getCallingUserId();
                    IPackageManager packageManager2 = AppGlobals.getPackageManager();
                    if (packageManager2.getApplicationHiddenSettingAsUser(KnoxCustomManagerService.KG_PKG_NAME, callingUserId)) {
                        packageManager2.setApplicationHiddenSettingAsUser(KnoxCustomManagerService.KG_PKG_NAME, false, callingUserId);
                    }
                } catch (RemoteException e) {
                    Slog.e(TAG, "RemoteException " + e.getMessage());
                }
                ComponentName componentName = new ComponentName(KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.agent.KGDeviceAdminReceiver");
                try {
                    if (2 == i || 3 == i) {
                        Slog.d(TAG, "setInitialState call edm admin api for adding edm services!!!");
                        EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance(context);
                        context2 = context;
                        if (enterpriseDeviceManager != null) {
                            enterpriseDeviceManager.setActiveAdmin(componentName, false);
                            context2 = context;
                        }
                    } else {
                        devicePolicyManager.setActiveAdmin(componentName, false);
                        context2 = context;
                    }
                } catch (Exception e2) {
                    Slog.e(TAG, "com.samsung.android.kgclientsetActiveAdmin" + e2);
                    context2 = context;
                }
                try {
                    context = (AppOpsManager) context2.getSystemService("appops");
                    PackageInfo packageInfo = packageManager.getPackageInfo(KnoxCustomManagerService.KG_PKG_NAME, 0);
                    if (context.checkOp(63, packageInfo.applicationInfo.uid, KnoxCustomManagerService.KG_PKG_NAME) != 0) {
                        Slog.i(TAG, "com.samsung.android.kgclient does not have OP_RUN_IN_BACKGROUND:  (fixing)");
                        context.setMode(63, packageInfo.applicationInfo.uid, KnoxCustomManagerService.KG_PKG_NAME, 0);
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    Slog.e(TAG, "com.samsung.android.kgclientNot found??");
                }
            }
        } catch (PackageManager.NameNotFoundException e3) {
            Slog.e(TAG, "Client Notfound : " + e3);
        }
    }
}
