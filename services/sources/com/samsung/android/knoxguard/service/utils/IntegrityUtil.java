package com.samsung.android.knoxguard.service.utils;

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
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Slog;
import com.samsung.android.knox.custom.KnoxCustomManagerService;

/* loaded from: classes2.dex */
public abstract class IntegrityUtil {
    public static final String TAG = "KG." + IntegrityUtil.class.getSimpleName();

    /* loaded from: classes2.dex */
    public class IntegrityResult {
        public boolean isOk = false;
        public boolean validSignature = false;
        public boolean enabled = false;
        public boolean validVersion = false;
        public boolean enabledAdminReceiver = false;
        public boolean enabledSystemIntentReceiver = false;
        public boolean enabledSystemIntentReceiverService = false;
        public boolean enabledKgIntentService = false;
        public boolean enabledAlarmService = false;
        public boolean enabledKGProvider = false;
    }

    public static IntegrityResult checkKGClientIntegrity(Context context, String str) {
        String str2 = TAG;
        Slog.i(str2, "checkKGClientIntegrity()");
        Slog.i(str2, "rlcState() : " + str);
        IntegrityResult integrityResult = new IntegrityResult();
        if (str == null || "Completed".equalsIgnoreCase(str) || "".equalsIgnoreCase(str)) {
            Slog.d(str2, "checkKGClientIntegrity() RLC_STATE_COMPLETED || RLC_STATE_NULL. Do nothing.");
            integrityResult.isOk = true;
            return integrityResult;
        }
        try {
            boolean checkSignatures = checkSignatures(context);
            boolean isSystemApp = isSystemApp(context);
            boolean isEnabled = isEnabled(context);
            Slog.d(str2, "checkSignatures : " + checkSignatures);
            Slog.d(str2, "isSystemApp : " + isSystemApp);
            Slog.d(str2, "isEnabled : " + isEnabled);
            integrityResult.validSignature = checkSignatures;
            integrityResult.enabled = isEnabled;
            integrityResult.validVersion = true;
            boolean checkComponents = checkComponents(context, integrityResult);
            Slog.d(str2, "isComponentEnabled : " + checkComponents);
            integrityResult.isOk = checkComponents & checkSignatures & isEnabled;
            return integrityResult;
        } catch (Exception e) {
            Slog.e(TAG, e.getMessage());
            return integrityResult;
        }
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
            ((PowerManager) context.getSystemService("power")).shutdown(false, String.format("KnoxGuard : system recovery (%d)", Integer.valueOf(testSystemUiCorrupted)), false);
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
            java.lang.String r9 = com.samsung.android.knoxguard.service.utils.IntegrityUtil.TAG
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
            java.lang.String r1 = com.samsung.android.knoxguard.service.utils.IntegrityUtil.TAG
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
            java.lang.String r0 = com.samsung.android.knoxguard.service.utils.IntegrityUtil.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "testSystemUiCorrupted : Exception in checking hidden value: "
            r1.append(r2)
            java.lang.String r9 = r9.getMessage()
            r1.append(r9)
            java.lang.String r9 = r1.toString()
            android.util.Slog.e(r0, r9)
        L71:
            java.lang.String r9 = com.samsung.android.knoxguard.service.utils.IntegrityUtil.TAG
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "testSystemUiCorrupted: "
            r0.append(r1)
            r0.append(r8)
            java.lang.String r0 = r0.toString()
            android.util.Slog.w(r9, r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.knoxguard.service.utils.IntegrityUtil.testSystemUiCorrupted(android.content.Context):int");
    }

    public static boolean checkComponents(Context context, IntegrityResult integrityResult) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            Slog.w(TAG, "PackageManager is null");
            return false;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(KnoxCustomManagerService.KG_PKG_NAME, 14);
            integrityResult.enabledAdminReceiver = hasEnabledComponent(packageInfo.receivers, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.receiver.KGAdminReceiver");
            integrityResult.enabledSystemIntentReceiver = hasEnabledComponent(packageInfo.receivers, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.receiver.systemIntent.SystemIntentReceiver");
            integrityResult.enabledSystemIntentReceiverService = hasEnabledComponent(packageInfo.services, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.receiver.systemIntent.SystemIntentReceiverService");
            integrityResult.enabledKgIntentService = hasEnabledComponent(packageInfo.services, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.service.KGIntentService");
            integrityResult.enabledAlarmService = hasEnabledComponent(packageInfo.services, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.alarm.AlarmService");
            integrityResult.enabledKGProvider = hasEnabledComponent(packageInfo.providers, KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.provider.KGProvider");
        } catch (PackageManager.NameNotFoundException e) {
            Slog.e(TAG, "checkComponents error: " + e.getMessage());
        }
        return integrityResult.enabledAdminReceiver && integrityResult.enabledSystemIntentReceiver && integrityResult.enabledSystemIntentReceiverService && integrityResult.enabledKgIntentService && integrityResult.enabledAlarmService && integrityResult.enabledKGProvider;
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

    public static int toErrorCode(IntegrityResult integrityResult) {
        if (integrityResult == null) {
            return 0;
        }
        return (integrityResult.validSignature ? 0 : 2) | IInstalld.FLAG_USE_QUOTA | (integrityResult.enabled ? 0 : 4) | (integrityResult.validVersion ? 0 : 8) | (integrityResult.enabledAdminReceiver ? 0 : 64) | (integrityResult.enabledSystemIntentReceiver ? 0 : 128) | (integrityResult.enabledSystemIntentReceiverService ? 0 : 256) | (integrityResult.enabledKgIntentService ? 0 : 512) | (integrityResult.enabledAlarmService ? 0 : 1024) | (integrityResult.enabledKGProvider ? 0 : IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES);
    }

    public static void setInitialState(Context context, String str) {
        String str2 = TAG;
        Slog.i(str2, "setInitialState");
        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) context.getSystemService("device_policy");
        if (devicePolicyManager == null) {
            Slog.e(str2, "DPM is not available");
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getApplicationInfo(KnoxCustomManagerService.KG_PKG_NAME, 0);
            if (!checkSignatures(context)) {
                Slog.e(str2, "KGClient is malicious, it will be locked");
                return;
            }
            if (str == null || "".equalsIgnoreCase(str) || "Completed".equalsIgnoreCase(str)) {
                return;
            }
            try {
                int callingUserId = UserHandle.getCallingUserId();
                IPackageManager packageManager2 = AppGlobals.getPackageManager();
                if (packageManager2.getApplicationHiddenSettingAsUser(KnoxCustomManagerService.KG_PKG_NAME, callingUserId)) {
                    packageManager2.setApplicationHiddenSettingAsUser(KnoxCustomManagerService.KG_PKG_NAME, false, callingUserId);
                }
            } catch (RemoteException e) {
                Slog.e(TAG, "RemoteException " + e.getMessage());
            }
            ComponentName componentName = new ComponentName(KnoxCustomManagerService.KG_PKG_NAME, "com.samsung.android.kgclient.receiver.KGAdminReceiver");
            if (!devicePolicyManager.isAdminActive(componentName)) {
                try {
                    devicePolicyManager.setActiveAdmin(componentName, false);
                } catch (Exception e2) {
                    Slog.e(TAG, "com.samsung.android.kgclientsetActiveAdmin" + e2);
                }
            }
            try {
                AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
                PackageInfo packageInfo = packageManager.getPackageInfo(KnoxCustomManagerService.KG_PKG_NAME, 0);
                if (appOpsManager.checkOp(63, packageInfo.applicationInfo.uid, KnoxCustomManagerService.KG_PKG_NAME) != 0) {
                    Slog.i(TAG, "com.samsung.android.kgclient does not have OP_RUN_IN_BACKGROUND:  (fixing)");
                    appOpsManager.setMode(63, packageInfo.applicationInfo.uid, KnoxCustomManagerService.KG_PKG_NAME, 0);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Slog.e(TAG, "com.samsung.android.kgclientNot found??");
            }
        } catch (PackageManager.NameNotFoundException e3) {
            Slog.e(TAG, "Client Notfound : " + e3);
        }
    }
}
