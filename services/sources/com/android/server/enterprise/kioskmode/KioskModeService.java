package com.android.server.enterprise.kioskmode;

import android.R;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.ActivityTaskManager;
import android.app.AppGlobals;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.UserInfo;
import android.content.res.Configuration;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.LocalServices;
import com.android.server.enterprise.EdmCache;
import com.android.server.enterprise.EnterpriseService;
import com.android.server.enterprise.EnterpriseServiceCallback;
import com.android.server.enterprise.RestrictionToastManager;
import com.android.server.enterprise.adapterlayer.SystemUIAdapter;
import com.android.server.enterprise.application.ApplicationPolicy;
import com.android.server.enterprise.common.KeyCodeMediator;
import com.android.server.enterprise.common.KeyCodeRestrictionCallback;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.android.server.enterprise.storage.SettingNotFoundException;
import com.android.server.enterprise.utils.KpuHelper;
import com.android.server.enterprise.utils.Utils;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.samsung.android.desktopmode.SemDesktopModeManager;
import com.samsung.android.desktopmode.SemDesktopModeState;
import com.samsung.android.feature.SemFloatingFeature;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import com.samsung.android.knox.kiosk.IKioskMode;
import com.samsung.android.knox.kiosk.KioskMode;
import com.samsung.android.multiwindow.MultiWindowManager;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class KioskModeService extends IKioskMode.Stub implements EnterpriseServiceCallback, KeyCodeRestrictionCallback {
    public static int NO_MASK_POLICY = -1;
    public static final boolean SUPPORT_EDGE_MUM;
    public static Object mLock;
    public final SemDesktopModeManager.DesktopModeBlocker blocker = new SemDesktopModeManager.DesktopModeBlocker() { // from class: com.android.server.enterprise.kioskmode.KioskModeService.1
        public String onBlocked() {
            return KioskModeService.this.mContext.getString(R.string.lockscreen_access_pattern_start);
        }
    };
    public ApplicationPolicy mAppPolicy;
    public final List mAvailableKeyCodesList;
    public final KioskModeCache mCache;
    public final Context mContext;
    public EnterpriseDeviceManager mEDM;
    public final EdmStorageProvider mEdmStorageProvider;
    public KioskHandler mHandler;
    public HandlerThread mHandlerThread;
    public KeyCodeMediator mKeyCodeMediator;
    public final MultiWindowManager mMultiWindowManager;
    public final PackageManager mPm;
    public Map mPolicyDefinitions;
    public final BroadcastReceiver mReceiver;
    public UserManager mUserManager;
    public static final String ACTION_REFRESH_HWKEY_INTERNAL = KioskMode.ACTION_REFRESH_HWKEY_INTERNAL;
    public static final String[] TASKMANAGER_PKGS = {"com.sec.android.app.controlpanel", "com.sec.android.app.taskmanager"};
    public static volatile Map packageRemoveIntentReceiver = null;
    public static volatile Map terminateIntentReceiver = null;
    public static boolean mProcessing = false;

    @Override // com.android.server.enterprise.common.KeyCodeRestrictionCallback
    public String getServiceName() {
        return "KioskModeService";
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void notifyToAddSystemService(String str, IBinder iBinder) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminAdded(int i) {
    }

    static {
        SUPPORT_EDGE_MUM = Build.VERSION.SEM_PLATFORM_INT >= 140500;
    }

    /* loaded from: classes2.dex */
    public class PolicyDefinition {
        public String defaultMessage;
        public int defaultValue;
        public String enforcedMessage;
        public int policyMask;

        public PolicyDefinition(int i, int i2, String str) {
            this.policyMask = i;
            this.defaultValue = i2;
            this.defaultMessage = str;
            this.enforcedMessage = String.valueOf(!Boolean.parseBoolean(str));
        }
    }

    public KioskModeService(Context context) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.enterprise.kioskmode.KioskModeService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL".equals(intent.getAction())) {
                    KioskModeService.this.updateSystemUIMonitor(intent.getIntExtra("com.samsung.android.knox.intent.extra.USER_ID_INTERNAL", 0));
                }
            }
        };
        this.mReceiver = broadcastReceiver;
        this.mEDM = null;
        this.mAppPolicy = null;
        this.mHandlerThread = null;
        this.mHandler = null;
        this.mCache = new KioskModeCache();
        this.mAvailableKeyCodesList = new ArrayList();
        this.mContext = context;
        this.mEdmStorageProvider = new EdmStorageProvider(context);
        this.mPm = context.getPackageManager();
        initializeHandlerThread();
        this.mAppPolicy = (ApplicationPolicy) EnterpriseService.getPolicyService("application_policy");
        if (mLock == null) {
            mLock = new Object();
        }
        this.mUserManager = (UserManager) context.getSystemService("user");
        packageRemoveIntentReceiver = new HashMap();
        terminateIntentReceiver = new HashMap();
        context.registerReceiver(broadcastReceiver, new IntentFilter("com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"));
        this.mMultiWindowManager = new MultiWindowManager();
        SemDesktopModeManager semDesktopModeManager = (SemDesktopModeManager) context.getSystemService("desktopmode");
        if (semDesktopModeManager != null) {
            semDesktopModeManager.registerListener(new SemDesktopModeManager.DesktopModeListener() { // from class: com.android.server.enterprise.kioskmode.KioskModeService.3
                public void onDesktopModeStateChanged(SemDesktopModeState semDesktopModeState) {
                    if (semDesktopModeState.state == 20 && semDesktopModeState.enabled == 3) {
                        Log.d("KioskModeService", "listner - Dex Enabling");
                        if (KioskModeService.this.isKioskModeEnabledAsUser(0)) {
                            KioskModeService.this.registerDexBlocker();
                        }
                    }
                }
            });
        }
        this.mPolicyDefinitions = new HashMap() { // from class: com.android.server.enterprise.kioskmode.KioskModeService.4
            {
                put("systemBarEnabled", new PolicyDefinition(3, 0, "false"));
                put("statusBarHidden", new PolicyDefinition(1, 0, "false"));
                put("navigationBarHidden", new PolicyDefinition(2, 0, "false"));
                put("multiWindowEnabled", new PolicyDefinition(KioskModeService.NO_MASK_POLICY, 1, "true"));
                put("taskManagerEnabled", new PolicyDefinition(KioskModeService.NO_MASK_POLICY, 1, "true"));
                put("kioskModeAirCommandAllowed", new PolicyDefinition(KioskModeService.NO_MASK_POLICY, 1, "true"));
                put("kioskModeAirViewAllowed", new PolicyDefinition(KioskModeService.NO_MASK_POLICY, 1, "true"));
                put("edgeScreenBlockedFunctions", new PolicyDefinition(31, 0, "true"));
            }
        };
    }

    public final void initializeHandlerThread() {
        HandlerThread handlerThread = new HandlerThread("KioskModeService");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new KioskHandler(this.mHandlerThread.getLooper());
    }

    public final EnterpriseDeviceManager getEDM() {
        if (this.mEDM == null) {
            this.mEDM = EnterpriseDeviceManager.getInstance(this.mContext);
        }
        return this.mEDM;
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void systemReady() {
        Iterator it = this.mUserManager.getUsers().iterator();
        while (it.hasNext()) {
            int identifier = ((UserInfo) it.next()).getUserHandle().getIdentifier();
            if (isKioskModeEnabledAsUser(identifier)) {
                String kioskHomePackageAsUser = getKioskHomePackageAsUser(identifier);
                String defaultHomeScreen = getDefaultHomeScreen(identifier);
                if (kioskHomePackageAsUser != null && defaultHomeScreen != null && !kioskHomePackageAsUser.equals(defaultHomeScreen)) {
                    setDefaultHomeScreen(identifier, defaultHomeScreen, kioskHomePackageAsUser);
                }
                registerPackageRemoveReceiver(identifier);
                registerTerminationReceiver(identifier);
            }
        }
        registerSwitchingUserReceiver();
        initializeKeyCodeLists();
        this.mCache.updateCache();
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onPreAdminRemoval(int i) {
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(new ContextInfo(i, 0));
        ContextInfo contextInfo = new ContextInfo(i);
        if (!isMultiWindowModeAllowed(contextInfo, false)) {
            allowMultiWindowMode(contextInfo, true);
        }
        if (!isAirCommandModeAllowed(contextInfo)) {
            allowAirCommandMode(contextInfo, true);
        }
        if (callingOrCurrentUserId == 0) {
            boolean z = false;
            boolean z2 = false;
            for (ContentValues contentValues : this.mEdmStorageProvider.getValues("KIOSKMODE", new String[]{"adminUid", "edgeScreenBlockedFunctions"}, (ContentValues) null)) {
                Integer asInteger = contentValues.getAsInteger("edgeScreenBlockedFunctions");
                if (asInteger != null) {
                    boolean z3 = (asInteger.intValue() & 4) > 0;
                    if (i != contentValues.getAsLong("adminUid").longValue()) {
                        if (z3) {
                            z2 = true;
                        }
                    } else if (z3) {
                        z = true;
                    }
                }
            }
            if (z && !z2) {
                broadcastBlockedEdgeScreenIntent(true);
            }
        }
        if (isKioskModeEnabledAsUser(callingOrCurrentUserId) && i == getActiveKioskAdmin(callingOrCurrentUserId)) {
            forceTerminateKiosk(callingOrCurrentUserId);
        }
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminRemoved(int i) {
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(new ContextInfo(i, 0));
        if (callingOrCurrentUserId == ActivityManager.getCurrentUser()) {
            updateSystemUIMonitor(callingOrCurrentUserId);
        }
        this.mCache.updateCache();
        applyMultiWindowPolicy(true, callingOrCurrentUserId);
    }

    public final ContextInfo enforceKioskModePermission(ContextInfo contextInfo) {
        return getEDM().enforceActiveAdminPermissionByContext(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_KIOSK_MODE")));
    }

    public final ContextInfo enforceOwnerOnlyAndKioskModePermission(ContextInfo contextInfo) {
        return getEDM().enforceOwnerOnlyAndActiveAdminPermission(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_KIOSK_MODE")));
    }

    public void enableKioskMode(ContextInfo contextInfo, String str) {
        Log.d("KioskModeService", "enableKioskMode");
        ContextInfo enforceOwnerOnlyAndKioskModePermission = enforceOwnerOnlyAndKioskModePermission(contextInfo);
        if (Utils.isDexActivated(this.mContext)) {
            Log.d("KioskModeService", "enableKioskMode was failed due to DeX mode");
            return;
        }
        if (mProcessing) {
            broadcastKioskResult(enforceOwnerOnlyAndKioskModePermission.mCallerUid, 1, -4);
            return;
        }
        Message obtainMessage = this.mHandler.obtainMessage(1);
        Bundle bundle = new Bundle();
        bundle.putString("package", str);
        bundle.putInt("adminuid", enforceOwnerOnlyAndKioskModePermission.mCallerUid);
        obtainMessage.setData(bundle);
        this.mHandler.sendMessage(obtainMessage);
    }

    public void disableKioskMode(ContextInfo contextInfo) {
        Log.d("KioskModeService", "disableKioskMode");
        ContextInfo enforceOwnerOnlyAndKioskModePermission = enforceOwnerOnlyAndKioskModePermission(contextInfo);
        if (mProcessing) {
            broadcastKioskResult(enforceOwnerOnlyAndKioskModePermission.mCallerUid, 2, -4);
            return;
        }
        Message obtainMessage = this.mHandler.obtainMessage(2);
        Bundle bundle = new Bundle();
        bundle.putInt("adminuid", enforceOwnerOnlyAndKioskModePermission.mCallerUid);
        obtainMessage.setData(bundle);
        this.mHandler.sendMessage(obtainMessage);
    }

    public boolean isKioskModeEnabled(ContextInfo contextInfo) {
        boolean z = false;
        try {
            List valuesList = this.mEdmStorageProvider.getValuesList("KIOSKMODE", new String[]{"kioskModeEnabled"});
            if (valuesList != null && !valuesList.isEmpty()) {
                Iterator it = valuesList.iterator();
                boolean z2 = false;
                while (it.hasNext()) {
                    try {
                        Integer asInteger = ((ContentValues) it.next()).getAsInteger("kioskModeEnabled");
                        if (asInteger != null) {
                            z2 = asInteger.intValue() == 1;
                            if (z2) {
                                break;
                            }
                        }
                    } catch (Exception unused) {
                        z = z2;
                        Log.e("KioskModeService", "isKioskModeEnabledAsUser() failed");
                        return z;
                    }
                }
                z = z2;
            } else {
                Log.e("KioskModeService", "There's no matched data");
            }
        } catch (Exception unused2) {
        }
        return z;
    }

    public boolean isKioskModeProcessingOrEnabled(ContextInfo contextInfo) {
        if (mProcessing) {
            return true;
        }
        return isKioskModeEnabled(contextInfo);
    }

    public boolean isEnableKioskModeAllowed(ContextInfo contextInfo) {
        return UserHandle.getUserId(contextInfo.mCallerUid) == 0 && contextInfo.mContainerId == 0;
    }

    public boolean isKioskModeEnabledAsUser(int i) {
        boolean z = false;
        try {
            List valuesListAsUser = this.mEdmStorageProvider.getValuesListAsUser("KIOSKMODE", new String[]{"kioskModeEnabled"}, i);
            if (valuesListAsUser != null && !valuesListAsUser.isEmpty()) {
                Iterator it = valuesListAsUser.iterator();
                boolean z2 = false;
                while (it.hasNext()) {
                    try {
                        Integer asInteger = ((ContentValues) it.next()).getAsInteger("kioskModeEnabled");
                        if (asInteger != null) {
                            z2 = asInteger.intValue() == 1;
                            if (z2) {
                                break;
                            }
                        }
                    } catch (Exception unused) {
                        z = z2;
                        Log.e("KioskModeService", "isKioskModeEnabledAsUser() failed");
                        return z;
                    }
                }
                z = z2;
            } else {
                Log.e("KioskModeService", "There's no matched data");
            }
        } catch (Exception unused2) {
        }
        return z;
    }

    public String getKioskHomePackage(ContextInfo contextInfo) {
        int userIdByPackageNameOrUid = getUserIdByPackageNameOrUid(contextInfo);
        if (isKioskModeEnabledAsUser(userIdByPackageNameOrUid)) {
            return getKioskHomePackageAsUser(userIdByPackageNameOrUid);
        }
        return null;
    }

    public String getKioskHomePackageAsUser(int i) {
        try {
            List<ContentValues> valuesListAsUser = this.mEdmStorageProvider.getValuesListAsUser("KIOSKMODE", new String[]{"kioskModeEnabled", "kioskModeKioskPackage"}, i);
            if (valuesListAsUser == null || valuesListAsUser.isEmpty()) {
                return null;
            }
            for (ContentValues contentValues : valuesListAsUser) {
                Integer asInteger = contentValues.getAsInteger("kioskModeEnabled");
                if (asInteger != null && asInteger.intValue() == 1) {
                    return contentValues.getAsString("kioskModeKioskPackage");
                }
            }
            return null;
        } catch (Exception unused) {
            Log.e("KioskModeService", "getKioskHomePackageAsUser() failed user : " + i);
            return null;
        }
    }

    public final void _enableKioskMode(ContextInfo contextInfo, String str) {
        synchronized (mLock) {
            mProcessing = true;
            int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
            long clearCallingIdentity = Binder.clearCallingIdentity();
            int i = contextInfo.mCallerUid;
            Log.d("KioskModeService", " _enableKioskMode");
            if (SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD")) {
                Log.d("KioskModeService", " support HW keyboard ");
                try {
                    Configuration configuration = this.mContext.getResources().getConfiguration();
                    if (configuration != null && configuration.semMobileKeyboardCovered == 1) {
                        Log.e("KioskModeService", "Kiosk Mode - mobile keypad enabled::: return false");
                        broadcastKioskResult(i, 1, -2000);
                        return;
                    }
                } catch (Exception unused) {
                    Log.d("KioskModeService", "_enableKioskMode :: NoSuchFieldException");
                }
            }
            if (isKioskModeEnabled(contextInfo)) {
                Log.e("KioskModeService", "Kiosk Mode already enabled");
                broadcastKioskResult(i, 1, -1);
            } else {
                String defaultHomeScreen = getDefaultHomeScreen(callingOrCurrentUserId);
                int initKioskMode = initKioskMode(contextInfo, str);
                Log.d("KioskModeService", "Kiosk  result   " + initKioskMode);
                if (initKioskMode != 0) {
                    Log.e("KioskModeService", "Kiosk Mode App not validated");
                    broadcastKioskResult(i, 1, initKioskMode);
                } else if (!setDefaultHomeScreen(callingOrCurrentUserId, defaultHomeScreen, str)) {
                    Log.e("KioskModeService", "Cannot find HOME activity");
                    ApplicationPolicy applicationPolicy = this.mAppPolicy;
                    if (applicationPolicy != null) {
                        applicationPolicy.setApplicationUninstallationDisabledBySystem(i, str, false);
                        this.mAppPolicy.setApplicationInstallationDisabledBySystem(i, str, false);
                        this.mAppPolicy.removePackagesFromClearDataBlackList(contextInfo, new ArrayList(Arrays.asList(str)));
                    }
                    cleanUpKioskMode(contextInfo, str);
                    broadcastKioskResult(i, 1, -2000);
                } else {
                    Settings.System.putInt(this.mContext.getContentResolver(), "toolbox_onoff", 0);
                    updateDB(i, true, str, defaultHomeScreen);
                    clearHomeStack();
                    launchHomeActivity(callingOrCurrentUserId);
                    registerPackageRemoveReceiver(callingOrCurrentUserId);
                    registerTerminationReceiver(callingOrCurrentUserId);
                    int i2 = 100;
                    while (true) {
                        int i3 = i2 - 1;
                        if (i2 <= 0) {
                            break;
                        }
                        try {
                            ActivityManagerNative.getDefault().getRecentTasks(10, 0, callingOrCurrentUserId);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        i2 = i3;
                    }
                    wipeRecentTasks(callingOrCurrentUserId);
                    launchHomeActivity(callingOrCurrentUserId);
                    if (this.mUserManager == null) {
                        this.mUserManager = (UserManager) this.mContext.getSystemService("user");
                    }
                    List users = this.mUserManager.getUsers();
                    if (users != null && !users.isEmpty()) {
                        Iterator it = users.iterator();
                        while (it.hasNext()) {
                            int identifier = ((UserInfo) it.next()).getUserHandle().getIdentifier();
                            if (identifier != callingOrCurrentUserId) {
                                wipeRecentTasks(identifier);
                            }
                        }
                    }
                    broadcastKioskResult(i, 1, 0);
                }
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            setKioskModeEnabledSystemUI(callingOrCurrentUserId, isKioskModeEnabledAsUser(callingOrCurrentUserId));
            mProcessing = false;
        }
    }

    public final void clearHomeStack() {
        try {
            ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).clearHomeStack(0);
        } catch (Exception e) {
            Log.w("KioskModeService", "Remote exception calling clearHomeStack", e);
        }
    }

    public final void _disableKioskMode(final ContextInfo contextInfo, final int i) {
        synchronized (mLock) {
            boolean z = true;
            mProcessing = true;
            if (UserHandle.getAppId(Binder.getCallingUid()) != 1000) {
                z = false;
            }
            final int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
            final int i2 = contextInfo.mCallerUid;
            final long clearCallingIdentity = Binder.clearCallingIdentity();
            if (!isKioskModeEnabledAsUser(callingOrCurrentUserId)) {
                Log.e("KioskModeService", "Kiosk Mode already disabled");
                broadcastKioskResult(i2, i, 0);
            } else if (getActiveKioskAdmin(callingOrCurrentUserId) != i2) {
                Log.e("KioskModeService", "Kiosk Mode enabled by different admin");
                broadcastKioskResult(i2, i, -2);
            } else {
                unregisterTerminationReceiver(callingOrCurrentUserId);
                unregisterPackageRemoveReceiver(callingOrCurrentUserId);
                final String string = this.mEdmStorageProvider.getString(i2, "KIOSKMODE", "kioskModeKioskPackage");
                String string2 = this.mEdmStorageProvider.getString(i2, "KIOSKMODE", "kioskModeDefaultPackage");
                updateDB(i2, false, null, null);
                setDefaultHomeScreen(callingOrCurrentUserId, string, string2);
                unRegisterDexBlocker();
                ApplicationPolicy applicationPolicy = this.mAppPolicy;
                if (applicationPolicy != null) {
                    applicationPolicy.setApplicationUninstallationDisabledBySystem(i2, string, false);
                    this.mAppPolicy.setApplicationInstallationDisabledBySystem(i2, string, false);
                    this.mAppPolicy.removePackagesFromClearDataBlackList(contextInfo, new ArrayList(Arrays.asList(string)));
                }
                if (z) {
                    new Thread(new Runnable() { // from class: com.android.server.enterprise.kioskmode.KioskModeService.5
                        @Override // java.lang.Runnable
                        public void run() {
                            KioskModeService.this.cleanUpKioskMode(contextInfo, string);
                            KioskModeService.this.wipeRecentTasks(callingOrCurrentUserId);
                            KioskModeService.this.launchHomeActivity(callingOrCurrentUserId);
                            KioskModeService.this.broadcastKioskResult(i2, i, 0);
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                            KioskModeService.mProcessing = false;
                        }
                    }).start();
                    return;
                }
                cleanUpKioskMode(contextInfo, string);
                wipeRecentTasks(callingOrCurrentUserId);
                launchHomeActivity(callingOrCurrentUserId);
                broadcastKioskResult(i2, i, 0);
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            setKioskModeEnabledSystemUI(callingOrCurrentUserId, isKioskModeEnabledAsUser(callingOrCurrentUserId));
            mProcessing = false;
        }
    }

    public final void forceTerminateKiosk(int i) {
        int activeKioskAdmin = getActiveKioskAdmin(i);
        Log.d("KioskModeService", "forceTerminateKiosk() - uid : " + activeKioskAdmin + " /userId : " + i);
        _disableKioskMode(new ContextInfo(activeKioskAdmin), 3);
    }

    public final void registerPackageRemoveReceiver(int i) {
        try {
            if (packageRemoveIntentReceiver.containsKey(Integer.valueOf(i))) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_REMOVED");
            intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
            intentFilter.addDataScheme("package");
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.enterprise.kioskmode.KioskModeService.6
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
                    int intValue = Integer.valueOf(intent.getIntExtra("android.intent.extra.user_handle", -10000)).intValue();
                    if (intValue == -10000) {
                        Log.e("KioskModeService", "can't get user id");
                        return;
                    }
                    String kioskHomePackageAsUser = KioskModeService.this.getKioskHomePackageAsUser(intValue);
                    if (kioskHomePackageAsUser == null || !kioskHomePackageAsUser.equals(schemeSpecificPart)) {
                        return;
                    }
                    try {
                        if (AppGlobals.getPackageManager().getApplicationInfo(kioskHomePackageAsUser, 128L, intValue) == null) {
                            Log.e("KioskModeService", kioskHomePackageAsUser + " is not installed at userId : " + intValue);
                            KioskModeService.this.forceTerminateKiosk(intValue);
                            return;
                        }
                    } catch (Exception unused) {
                    }
                    if (!KioskModeService.this.mAppPolicy.getApplicationStateEnabledAsUser(kioskHomePackageAsUser, false, intValue)) {
                        Log.e("KioskModeService", kioskHomePackageAsUser + " is disabled by admin");
                        KioskModeService.this.forceTerminateKiosk(intValue);
                        return;
                    }
                    if (kioskHomePackageAsUser.equals(KioskModeService.this.getDefaultHomeScreen(intValue))) {
                        return;
                    }
                    KioskModeService.this.forceTerminateKiosk(intValue);
                }
            };
            this.mContext.registerReceiverAsUser(broadcastReceiver, new UserHandle(i), intentFilter, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL", null);
            packageRemoveIntentReceiver.put(Integer.valueOf(i), broadcastReceiver);
        } catch (Exception unused) {
            Log.e("KioskModeService", "Cannot register packageRemoveIntentReceiver");
        }
    }

    public final void unregisterPackageRemoveReceiver(int i) {
        if (packageRemoveIntentReceiver.containsKey(Integer.valueOf(i))) {
            this.mContext.unregisterReceiver((BroadcastReceiver) packageRemoveIntentReceiver.get(Integer.valueOf(i)));
            packageRemoveIntentReceiver.remove(Integer.valueOf(i));
        } else {
            Log.e("KioskModeService", "There's no matched key");
        }
    }

    public final void registerTerminationReceiver(int i) {
        try {
            if (terminateIntentReceiver.containsKey(Integer.valueOf(i))) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter("com.samsung.android.knox.intent.action.TERMINATE_KIOSK_INTERNAL");
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.android.server.enterprise.kioskmode.KioskModeService.7
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    int intValue = Integer.valueOf(intent.getIntExtra("android.intent.extra.user_handle", -10000)).intValue();
                    if (intValue == -10000) {
                        Log.e("KioskModeService", "can't get user id");
                    }
                    if (KioskModeService.this.isKioskModeEnabledAsUser(intValue)) {
                        String kioskHomePackageAsUser = KioskModeService.this.getKioskHomePackageAsUser(intValue);
                        try {
                            if (AppGlobals.getPackageManager().getApplicationInfo(kioskHomePackageAsUser, 128L, intValue) == null) {
                                Log.e("KioskModeService", kioskHomePackageAsUser + " is not installed at userId : " + intValue);
                                KioskModeService.this.forceTerminateKiosk(intValue);
                                return;
                            }
                        } catch (Exception unused) {
                        }
                        if (!KioskModeService.this.mAppPolicy.getApplicationStateEnabledAsUser(kioskHomePackageAsUser, false, intValue)) {
                            Log.e("KioskModeService", kioskHomePackageAsUser + " is disabled by admin");
                            KioskModeService.this.forceTerminateKiosk(intValue);
                            return;
                        }
                        if (kioskHomePackageAsUser == null || kioskHomePackageAsUser.equals(KioskModeService.this.getDefaultHomeScreen(intValue))) {
                            return;
                        }
                        KioskModeService.this.forceTerminateKiosk(intValue);
                    }
                }
            };
            terminateIntentReceiver.put(Integer.valueOf(i), broadcastReceiver);
            this.mContext.registerReceiverAsUser(broadcastReceiver, new UserHandle(i), intentFilter, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE_INTERNAL", null);
        } catch (Exception unused) {
            Log.e("KioskModeService", "Cannot register terminateIntentReceiver");
        }
    }

    public final void unregisterTerminationReceiver(int i) {
        if (terminateIntentReceiver.containsKey(Integer.valueOf(i))) {
            this.mContext.unregisterReceiver((BroadcastReceiver) terminateIntentReceiver.get(Integer.valueOf(i)));
            terminateIntentReceiver.remove(Integer.valueOf(i));
        } else {
            Log.e("KioskModeService", "There's no matched key");
        }
    }

    public final void registerSwitchingUserReceiver() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.USER_SWITCHED");
            this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.enterprise.kioskmode.KioskModeService.8
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    KioskModeService.this.applyMultiWindowPolicy(false, intent.getIntExtra("android.intent.extra.user_handle", 0));
                }
            }, intentFilter, null, null);
        } catch (Exception unused) {
            Log.e("KioskModeService", "Cannot register registerSwitchingUserReceiver");
        }
    }

    public final void broadcastKioskResult(int i, int i2, int i3) {
        Intent intent;
        String packageNameForUid = getPackageNameForUid(i);
        if (packageNameForUid == null) {
            return;
        }
        if (i2 == 1) {
            intent = new Intent("com.samsung.android.knox.intent.action.ENABLE_KIOSK_MODE_RESULT");
            intent.putExtra("com.samsung.android.knox.intent.extra.KIOSK_RESULT", i3);
            intent.putExtra("com.samsung.android.knox.intent.extra.ADMIN_UID", i);
            intent.setPackage(packageNameForUid);
        } else if (i2 == 2) {
            intent = new Intent("com.samsung.android.knox.intent.action.DISABLE_KIOSK_MODE_RESULT");
            intent.putExtra("com.samsung.android.knox.intent.extra.KIOSK_RESULT", i3);
            intent.putExtra("com.samsung.android.knox.intent.extra.ADMIN_UID", i);
            intent.setPackage(packageNameForUid);
        } else {
            if (i2 != 3) {
                return;
            }
            intent = new Intent("com.samsung.android.knox.intent.action.UNEXPECTED_KIOSK_BEHAVIOR");
            intent.putExtra("com.samsung.android.knox.intent.extra.ADMIN_UID", i);
            intent.setPackage(packageNameForUid);
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE");
        try {
            String kpuPackageName = KpuHelper.getInstance(this.mContext).getKpuPackageName();
            Intent intent2 = new Intent(intent);
            intent2.putExtra("com.samsung.android.knox.intent.extra.ADMIN_UID", this.mContext.getPackageManager().getPackageUidAsUser(kpuPackageName, UserHandle.getCallingUserId()));
            intent2.setPackage(kpuPackageName);
            this.mContext.sendBroadcastAsUser(intent2, UserHandle.ALL, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE");
        } catch (Exception e) {
            e.printStackTrace();
        }
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public final String getPackageNameForUid(int i) {
        int appId = UserHandle.getAppId(i);
        return (appId == 1000 || (appId >= 10000 && appId <= 19999)) ? this.mPm.getNameForUid(i) : "com.sec.enterprise.knox.cloudmdm.smdms";
    }

    public final int getActiveKioskAdmin(int i) {
        try {
            List<ContentValues> valuesListAsUser = this.mEdmStorageProvider.getValuesListAsUser("KIOSKMODE", new String[]{"kioskModeEnabled", "adminUid"}, i);
            if (valuesListAsUser != null && !valuesListAsUser.isEmpty()) {
                for (ContentValues contentValues : valuesListAsUser) {
                    if (contentValues.getAsInteger("kioskModeEnabled").intValue() == 1) {
                        return contentValues.getAsInteger("adminUid").intValue();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        Log.e("KioskModeService", "getActiveKioskAdmin() failed for user : " + i);
        return -1;
    }

    public final int initKioskMode(ContextInfo contextInfo, String str) {
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(contextInfo);
        if ("com.sec.android.kiosk".equals(str)) {
            int extractDefaultApkAndInstall = extractDefaultApkAndInstall(contextInfo);
            if (extractDefaultApkAndInstall != 0) {
                return extractDefaultApkAndInstall;
            }
        } else {
            try {
                if (AppGlobals.getPackageManager().getApplicationInfo(str, 128L, callingOrCurrentUserId) == null) {
                    Log.d("KioskModeService", "Check if Kiosk App exists and is enabled  - fail ");
                    return -3;
                }
            } catch (Exception unused) {
            }
            if (!this.mAppPolicy.getApplicationStateEnabledAsUser(str, false, callingOrCurrentUserId)) {
                Log.d("KioskModeService", "Check if Kiosk App Disabled  - fail ");
                return -3;
            }
            if (getHomeActivity(callingOrCurrentUserId, str) == null) {
                Log.d("KioskModeService", "Check if Kiosk App have home activities  - fail ");
                return -2000;
            }
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mAppPolicy.setApplicationUninstallationDisabledBySystem(contextInfo.mCallerUid, str, true);
            this.mAppPolicy.setApplicationInstallationDisabledBySystem(contextInfo.mCallerUid, str, true);
            this.mAppPolicy.addPackagesToClearDataBlackList(contextInfo, new ArrayList(Arrays.asList(str)));
            return 0;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.io.OutputStream, java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.android.server.enterprise.kioskmode.KioskModeService] */
    public final int extractDefaultApkAndInstall(ContextInfo contextInfo) {
        InputStream inputStream;
        File file;
        OutputStream outputStream;
        ?? r0 = "kioskdefault.apk";
        File file2 = null;
        try {
            try {
                try {
                    Context createPackageContext = this.mContext.createPackageContext(KnoxCustomManagerService.KNOX_PP_AGENT_PKG_NAME, 2);
                    if (createPackageContext == null) {
                        Log.d("KioskModeService", "MDMApp context could not be created!");
                        outputStream = null;
                        inputStream = null;
                    } else {
                        inputStream = createPackageContext.getAssets().open("kioskdefault.apk");
                        try {
                            file = new File(Environment.getDataDirectory().getAbsolutePath() + "/system/kioskdefault.apk");
                            try {
                                r0 = new FileOutputStream(file);
                            } catch (PackageManager.NameNotFoundException e) {
                                e = e;
                                r0 = 0;
                            } catch (IOException e2) {
                                e = e2;
                                r0 = 0;
                            } catch (Throwable th) {
                                th = th;
                                r0 = 0;
                            }
                        } catch (PackageManager.NameNotFoundException e3) {
                            e = e3;
                            r0 = 0;
                        } catch (IOException e4) {
                            e = e4;
                            r0 = 0;
                        } catch (Throwable th2) {
                            th = th2;
                            r0 = 0;
                        }
                        try {
                            copyFile(inputStream, r0);
                            FileUtils.setPermissions(file, 436, -1, -1);
                            if (this.mAppPolicy.installApplication(contextInfo, file.getAbsolutePath(), false, null)) {
                                file.delete();
                                try {
                                    r0.close();
                                } catch (IOException e5) {
                                    Log.d("KioskModeService", "IOException while closing OutputStream", e5);
                                }
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e6) {
                                        Log.d("KioskModeService", "IOException while closing InputStream", e6);
                                    }
                                }
                                return 0;
                            }
                            file2 = file;
                            outputStream = r0;
                        } catch (PackageManager.NameNotFoundException e7) {
                            e = e7;
                            file2 = file;
                            r0 = r0;
                            Log.d("KioskModeService", "NameNotFoundException while creating package context", e);
                            if (file2 != null) {
                                file2.delete();
                            }
                            if (r0 != 0) {
                                try {
                                    r0.close();
                                } catch (IOException e8) {
                                    Log.d("KioskModeService", "IOException while closing OutputStream", e8);
                                }
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return -2000;
                        } catch (IOException e9) {
                            e = e9;
                            file2 = file;
                            r0 = r0;
                            Log.d("KioskModeService", "IOException while extracting default apk", e);
                            if (file2 != null) {
                                file2.delete();
                            }
                            if (r0 != 0) {
                                try {
                                    r0.close();
                                } catch (IOException e10) {
                                    Log.d("KioskModeService", "IOException while closing OutputStream", e10);
                                }
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return -2000;
                        } catch (Throwable th3) {
                            th = th3;
                            file2 = file;
                            if (file2 != null) {
                                file2.delete();
                            }
                            if (r0 != 0) {
                                try {
                                    r0.close();
                                } catch (IOException e11) {
                                    Log.d("KioskModeService", "IOException while closing OutputStream", e11);
                                }
                            }
                            if (inputStream == null) {
                                throw th;
                            }
                            try {
                                inputStream.close();
                                throw th;
                            } catch (IOException e12) {
                                Log.d("KioskModeService", "IOException while closing InputStream", e12);
                                throw th;
                            }
                        }
                    }
                    if (file2 != null) {
                        file2.delete();
                    }
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (IOException e13) {
                            Log.d("KioskModeService", "IOException while closing OutputStream", e13);
                        }
                    }
                } catch (PackageManager.NameNotFoundException e14) {
                    e = e14;
                    r0 = 0;
                    inputStream = null;
                } catch (IOException e15) {
                    e = e15;
                    r0 = 0;
                    inputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    r0 = 0;
                    inputStream = null;
                }
                if (inputStream == null) {
                    return -2000;
                }
                inputStream.close();
                return -2000;
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (IOException e16) {
            Log.d("KioskModeService", "IOException while closing InputStream", e16);
            return -2000;
        }
    }

    public final void copyFile(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[1024];
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }

    public final void cleanUpKioskMode(ContextInfo contextInfo, String str) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        if (this.mAppPolicy != null && "com.sec.android.kiosk".equals(str)) {
            this.mAppPolicy.uninstallApplicationInternalBySystem(contextInfo.mCallerUid, "com.sec.android.kiosk", false);
        }
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public final String getDefaultHomeScreen(int i) {
        ComponentName componentName;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.addCategory("android.intent.category.DEFAULT");
        ResolveInfo resolveActivityAsUser = this.mPm.resolveActivityAsUser(intent, 65536, i);
        if (resolveActivityAsUser != null) {
            ActivityInfo activityInfo = resolveActivityAsUser.activityInfo;
            componentName = new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name);
        } else {
            componentName = null;
        }
        if (componentName == null) {
            Log.e("KioskModeService", "getDefaultHomeScreen() fail");
            return null;
        }
        if (componentName.getPackageName().equals("android")) {
            return null;
        }
        return componentName.getPackageName();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:(2:23|24)|(7:26|27|(1:40)(1:30)|31|32|33|34)|41|27|(0)|40|31|32|33|34) */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x004c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004d, code lost:
    
        android.os.Binder.restoreCallingIdentity(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0050, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean setDefaultHomeScreen(int r17, java.lang.String r18, java.lang.String r19) {
        /*
            r16 = this;
            r0 = r16
            r5 = r17
            r1 = r18
            r2 = r19
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r4 = "android.intent.action.MAIN"
            r3.<init>(r4)
            java.lang.String r6 = "android.intent.category.HOME"
            r3.addCategory(r6)
            java.lang.String r7 = "android.intent.category.DEFAULT"
            r3.addCategory(r7)
            java.lang.String r8 = "com.sec.android.kiosk"
            r9 = 1
            r10 = 0
            if (r1 == 0) goto L55
            android.content.pm.IPackageManager r11 = android.app.AppGlobals.getPackageManager()     // Catch: java.lang.Exception -> L2d
            r12 = 128(0x80, double:6.32E-322)
            android.content.pm.ApplicationInfo r11 = r11.getApplicationInfo(r2, r12, r5)     // Catch: java.lang.Exception -> L2d
            if (r11 == 0) goto L2d
            r11 = r9
            goto L2e
        L2d:
            r11 = r10
        L2e:
            boolean r12 = r1.equals(r8)
            if (r12 == 0) goto L38
            if (r11 == 0) goto L38
            r11 = r9
            goto L39
        L38:
            r11 = r10
        L39:
            long r12 = android.os.Binder.clearCallingIdentity()
            java.lang.String r14 = "package"
            android.os.IBinder r14 = android.os.ServiceManager.getService(r14)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L51
            android.content.pm.IPackageManager r14 = android.content.pm.IPackageManager.Stub.asInterface(r14)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L51
            r14.clearPackagePreferredActivitiesAsUserForMDM(r1, r5)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L51
            goto L51
        L4c:
            r0 = move-exception
            android.os.Binder.restoreCallingIdentity(r12)
            throw r0
        L51:
            android.os.Binder.restoreCallingIdentity(r12)
            goto L56
        L55:
            r11 = r10
        L56:
            if (r2 == 0) goto Ld0
            long r12 = android.os.Binder.clearCallingIdentity()
            android.content.pm.PackageManager r1 = r0.mPm
            r14 = 65536(0x10000, float:9.18355E-41)
            java.util.List r1 = r1.queryIntentActivitiesAsUser(r3, r14, r5)
            android.os.Binder.restoreCallingIdentity(r12)
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r12 = r10
        L6d:
            int r13 = r1.size()
            if (r12 >= r13) goto L9b
            java.lang.Object r13 = r1.get(r12)
            android.content.pm.ResolveInfo r13 = (android.content.pm.ResolveInfo) r13
            android.content.pm.ActivityInfo r13 = r13.activityInfo
            java.lang.String r13 = r13.packageName
            java.lang.Object r14 = r1.get(r12)
            android.content.pm.ResolveInfo r14 = (android.content.pm.ResolveInfo) r14
            android.content.pm.ActivityInfo r14 = r14.activityInfo
            java.lang.String r14 = r14.name
            if (r11 == 0) goto L90
            boolean r15 = r13.equals(r8)
            if (r15 == 0) goto L90
            goto L98
        L90:
            android.content.ComponentName r15 = new android.content.ComponentName
            r15.<init>(r13, r14)
            r3.add(r15)
        L98:
            int r12 = r12 + 1
            goto L6d
        L9b:
            int r1 = r3.size()
            android.content.ComponentName[] r1 = new android.content.ComponentName[r1]
            java.lang.Object[] r1 = r3.toArray(r1)
            r3 = r1
            android.content.ComponentName[] r3 = (android.content.ComponentName[]) r3
            java.lang.String r1 = r0.getHomeActivity(r5, r2)
            if (r1 != 0) goto Laf
            return r10
        Laf:
            android.content.ComponentName r8 = new android.content.ComponentName
            r8.<init>(r2, r1)
            android.content.IntentFilter r1 = new android.content.IntentFilter
            r1.<init>(r4)
            r1.addCategory(r6)
            r1.addCategory(r7)
            long r6 = android.os.Binder.clearCallingIdentity()
            android.content.pm.PackageManager r0 = r0.mPm
            r2 = 1048576(0x100000, float:1.469368E-39)
            r4 = r8
            r5 = r17
            r0.addPreferredActivityAsUser(r1, r2, r3, r4, r5)
            android.os.Binder.restoreCallingIdentity(r6)
        Ld0:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.kioskmode.KioskModeService.setDefaultHomeScreen(int, java.lang.String, java.lang.String):boolean");
    }

    public final String getHomeActivity(int i, String str) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.addCategory("android.intent.category.DEFAULT");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        List queryIntentActivitiesAsUser = this.mPm.queryIntentActivitiesAsUser(intent, 65536, i);
        Binder.restoreCallingIdentity(clearCallingIdentity);
        for (int i2 = 0; i2 < queryIntentActivitiesAsUser.size(); i2++) {
            if (str.equals(((ResolveInfo) queryIntentActivitiesAsUser.get(i2)).activityInfo.packageName)) {
                return ((ResolveInfo) queryIntentActivitiesAsUser.get(i2)).activityInfo.name;
            }
        }
        Log.e("KioskModeService", " - cannot find matched home activity");
        return null;
    }

    public final void updateDB(int i, boolean z, String str, String str2) {
        this.mEdmStorageProvider.putBoolean(i, "KIOSKMODE", "kioskModeEnabled", z);
        this.mEdmStorageProvider.putString(i, "KIOSKMODE", "kioskModeDefaultPackage", str2);
        this.mEdmStorageProvider.putString(i, "KIOSKMODE", "kioskModeKioskPackage", str);
    }

    public final void launchHomeActivity(int i) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        intent.setFlags(268435456);
        try {
            this.mContext.startActivityAsUser(intent, new UserHandle(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean hideSystemBar(ContextInfo contextInfo, boolean z) {
        ContextInfo enforceKioskModePermission = enforceKioskModePermission(contextInfo);
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(enforceKioskModePermission);
        int i = 0;
        if (callingOrCurrentUserId != 0) {
            Log.i("KioskModeService", "hideSystemBar() failed. Caller is not owner");
            return false;
        }
        int i2 = enforceKioskModePermission.mCallerUid;
        try {
            i = this.mEdmStorageProvider.getInt(i2, "KIOSKMODE", "systemBarEnabled");
        } catch (SettingNotFoundException unused) {
        }
        boolean putInt = this.mEdmStorageProvider.putInt(i2, "KIOSKMODE", "systemBarEnabled", z ? i | 3 : i & (-4));
        if (putInt) {
            applyHideSystemBarSystemUI(callingOrCurrentUserId);
        }
        return putInt;
    }

    public boolean isSystemBarHidden(ContextInfo contextInfo) {
        return isSystemBarHidden();
    }

    public final boolean isSystemBarHidden() {
        Iterator it = this.mEdmStorageProvider.getIntListAsUser("KIOSKMODE", "systemBarEnabled", 0).iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if ((intValue & 1) != 0 && (intValue & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean applyMultiWindowPolicy(boolean z, int i) {
        boolean isMultiWindowModeAllowedAsUser = isMultiWindowModeAllowedAsUser(i);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z2 = false;
        try {
            try {
            } catch (Exception e) {
                Log.d("KioskModeService", "applyMultiWindowPolicy() : Failed to update multi window policy", e);
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
            if (!isMultiWindowModeAllowedAsUser) {
                this.mMultiWindowManager.setMultiWindowEnabledForUser("com.android.server.enterprise.kioskmode", "disable", false, i);
            } else {
                if (z) {
                    this.mMultiWindowManager.setMultiWindowEnabledForUser("com.android.server.enterprise.kioskmode", "enable", true, i);
                }
                Binder.restoreCallingIdentity(clearCallingIdentity);
                z2 = true;
                Log.i("KioskModeService", "applyMultiWindowPolicy() : ret = " + z2 + ", allowed = " + isMultiWindowModeAllowedAsUser + ", userId = " + i + " ,isCalledAdmin=" + z);
                return z2;
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
            z2 = true;
            Log.i("KioskModeService", "applyMultiWindowPolicy() : ret = " + z2 + ", allowed = " + isMultiWindowModeAllowedAsUser + ", userId = " + i + " ,isCalledAdmin=" + z);
            return z2;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public boolean wipeRecentTasks(ContextInfo contextInfo) {
        return wipeRecentTasks(Utils.getCallingOrCurrentUserId(enforceKioskModePermission(contextInfo)));
    }

    public final boolean wipeRecentTasks(int i) {
        boolean z;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                z = ActivityTaskManager.getService().clearRecentTasks(i);
            } catch (Exception e) {
                Log.w("KioskModeService", "Remote exception calling clearRecentTasks!", e);
                Binder.restoreCallingIdentity(clearCallingIdentity);
                z = false;
            }
            return z;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public List getHardwareKeyList(ContextInfo contextInfo) {
        List list;
        enforceKioskModePermission(contextInfo);
        synchronized (this.mAvailableKeyCodesList) {
            list = this.mAvailableKeyCodesList;
        }
        return list;
    }

    public int[] allowHardwareKeys(ContextInfo contextInfo, int[] iArr, boolean z) {
        ContextInfo enforceKioskModePermission = enforceKioskModePermission(contextInfo);
        if (Utils.getCallingOrCurrentUserId(enforceKioskModePermission) != 0) {
            Log.i("KioskModeService", "allowHardwareKeys() failed. Caller is not owner");
            return null;
        }
        int i = enforceKioskModePermission.mCallerUid;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (iArr == null || iArr.length == 0) {
            Log.i("KioskModeService", "allowHardwareKeys() return null because invalid request. ");
            return null;
        }
        for (int i2 : iArr) {
            arrayList2.add(Integer.valueOf(i2));
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (!z) {
                if (addToBlocked(i, String.valueOf(intValue))) {
                    arrayList.add(Integer.valueOf(intValue));
                }
            } else if (removeFromBlocked(i, String.valueOf(intValue))) {
                arrayList.add(Integer.valueOf(intValue));
            }
        }
        this.mCache.updateCache();
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i3 = 0; i3 < size; i3++) {
            int intValue2 = ((Integer) arrayList.get(i3)).intValue();
            iArr2[i3] = intValue2;
            KeyCodeMediator keyCodeMediator = this.mKeyCodeMediator;
            if (keyCodeMediator == null) {
                Log.e("KioskModeService", "mKeyCodeMediator must not be null! This will cause problems on hardware key restriction.");
            } else {
                keyCodeMediator.update(intValue2);
            }
        }
        return iArr2;
    }

    public final boolean addToBlocked(int i, String str) {
        Set blockedList = getBlockedList(i);
        if (blockedList.contains(str)) {
            return true;
        }
        blockedList.add(str);
        return saveBlockedList(i, blockedList);
    }

    public final boolean removeFromBlocked(int i, String str) {
        Set blockedList = getBlockedList(i);
        if (!blockedList.contains(str)) {
            return true;
        }
        blockedList.remove(str);
        return saveBlockedList(i, blockedList);
    }

    public final boolean saveBlockedList(int i, Set set) {
        if (set.isEmpty()) {
            return this.mEdmStorageProvider.putString(i, "KIOSKMODE", "blockedHwKeyList", null);
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            sb.append(((String) it.next()) + ",");
        }
        return this.mEdmStorageProvider.putString(i, "KIOSKMODE", "blockedHwKeyList", sb.toString());
    }

    public final Map getAllBlockedList() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        List users = this.mUserManager.getUsers();
        Binder.restoreCallingIdentity(clearCallingIdentity);
        HashMap hashMap = new HashMap();
        Iterator it = users.iterator();
        while (it.hasNext()) {
            int identifier = ((UserInfo) it.next()).getUserHandle().getIdentifier();
            List stringListAsUser = this.mEdmStorageProvider.getStringListAsUser("KIOSKMODE", "blockedHwKeyList", identifier);
            HashSet hashSet = new HashSet();
            Iterator it2 = stringListAsUser.iterator();
            while (it2.hasNext()) {
                hashSet.addAll(Arrays.asList(((String) it2.next()).split(",")));
            }
            if (!hashSet.isEmpty()) {
                hashMap.put(Integer.valueOf(identifier), hashSet);
            }
        }
        return hashMap;
    }

    public Map getBlockedHwKeysCache() {
        return this.mCache.mBlockedHwKeys;
    }

    public final Set getBlockedList(int i) {
        String string = this.mEdmStorageProvider.getString(i, "KIOSKMODE", "blockedHwKeyList");
        HashSet hashSet = new HashSet();
        if (string != null) {
            for (String str : string.split(",")) {
                hashSet.add(str);
            }
        }
        return hashSet;
    }

    public List getAllBlockedHardwareKeys(ContextInfo contextInfo) {
        Set set = (Set) getAllBlockedList().get(0);
        ArrayList arrayList = new ArrayList();
        if (set != null) {
            for (String str : new ArrayList(set)) {
                if (!str.isEmpty()) {
                    arrayList.add(Integer.valueOf(Integer.parseInt(str)));
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0031, code lost:
    
        if (((java.util.Set) r2.mCache.mBlockedHwKeys.get(0)).contains(java.lang.String.valueOf(r4)) != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isHardwareKeyAllowed(com.samsung.android.knox.ContextInfo r3, int r4, boolean r5) {
        /*
            r2 = this;
            com.android.server.enterprise.kioskmode.KioskModeService$KioskModeCache r3 = r2.mCache
            java.util.Map r3 = com.android.server.enterprise.kioskmode.KioskModeService.KioskModeCache.m6327$$Nest$fgetmBlockedHwKeys(r3)
            if (r3 == 0) goto L34
            com.android.server.enterprise.kioskmode.KioskModeService$KioskModeCache r3 = r2.mCache
            java.util.Map r3 = com.android.server.enterprise.kioskmode.KioskModeService.KioskModeCache.m6327$$Nest$fgetmBlockedHwKeys(r3)
            r0 = 0
            java.lang.Integer r1 = java.lang.Integer.valueOf(r0)
            java.lang.Object r3 = r3.get(r1)
            if (r3 == 0) goto L34
            com.android.server.enterprise.kioskmode.KioskModeService$KioskModeCache r2 = r2.mCache
            java.util.Map r2 = com.android.server.enterprise.kioskmode.KioskModeService.KioskModeCache.m6327$$Nest$fgetmBlockedHwKeys(r2)
            java.lang.Integer r3 = java.lang.Integer.valueOf(r0)
            java.lang.Object r2 = r2.get(r3)
            java.util.Set r2 = (java.util.Set) r2
            java.lang.String r3 = java.lang.String.valueOf(r4)
            boolean r2 = r2.contains(r3)
            if (r2 == 0) goto L34
            goto L35
        L34:
            r0 = 1
        L35:
            if (r5 == 0) goto L3f
            if (r0 != 0) goto L3f
            r2 = 17040863(0x10405df, float:2.4248783E-38)
            com.android.server.enterprise.RestrictionToastManager.show(r2)
        L3f:
            if (r0 != 0) goto L5c
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "isHardwareKeyAllowed() key "
            r2.append(r3)
            r2.append(r4)
            java.lang.String r3 = " is blocked"
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            java.lang.String r3 = "KioskModeService"
            android.util.Log.i(r3, r2)
        L5c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.kioskmode.KioskModeService.isHardwareKeyAllowed(com.samsung.android.knox.ContextInfo, int, boolean):boolean");
    }

    public final void initializeKeyCodeLists() {
        int samsungLastKeyCode = KeyEvent.getSamsungLastKeyCode();
        int[] iArr = new int[samsungLastKeyCode];
        int i = 0;
        while (i < samsungLastKeyCode) {
            int i2 = i + 1;
            iArr[i] = i2;
            i = i2;
        }
        boolean[] deviceHasKeys = KeyCharacterMap.deviceHasKeys(iArr);
        if (deviceHasKeys != null) {
            synchronized (this.mAvailableKeyCodesList) {
                for (int i3 = 0; i3 < deviceHasKeys.length; i3++) {
                    if (deviceHasKeys[i3]) {
                        this.mAvailableKeyCodesList.add(Integer.valueOf(i3 + 1));
                    }
                }
            }
        }
    }

    public boolean allowTaskManager(ContextInfo contextInfo, boolean z) {
        ContextInfo enforceKioskModePermission = enforceKioskModePermission(contextInfo);
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(enforceKioskModePermission);
        if (!isTaskManagerAvailable(enforceKioskModePermission.mContainerId)) {
            Log.v("KioskModeService", "allowTaskManager() - Task Manager is not available in this device");
            return false;
        }
        if (callingOrCurrentUserId != 0) {
            Log.w("KioskModeService", "allowTaskManager() - failed. Caller is not owner");
            return false;
        }
        if (!z) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    ActivityManagerNative.getDefault().forceStopPackage(KioskMode.CONTROL_PANEL_PKGNAME, callingOrCurrentUserId);
                    ActivityManagerNative.getDefault().forceStopPackage(KioskMode.TASK_MANAGER_PKGNAME, callingOrCurrentUserId);
                    ActivityManagerNative.getDefault().forceStopPackage(KioskMode.MINI_TASK_MANAGER_PKGNAME, callingOrCurrentUserId);
                } catch (Exception e) {
                    Log.e("KioskModeService", "allowTaskManager() failed to force stopping packages", e);
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return this.mEdmStorageProvider.putBoolean(enforceKioskModePermission.mCallerUid, "KIOSKMODE", "taskManagerEnabled", z);
    }

    public boolean isTaskManagerAllowed(ContextInfo contextInfo, boolean z) {
        return isTaskManagerAllowedAsUser(z, 0);
    }

    public boolean isTaskManagerAllowedAsUser(boolean z, int i) {
        Iterator it = this.mEdmStorageProvider.getBooleanListAsUser("KIOSKMODE", "taskManagerEnabled", 0).iterator();
        boolean z2 = true;
        while (it.hasNext()) {
            if (!((Boolean) it.next()).booleanValue()) {
                z2 = false;
            }
        }
        if (z && !z2) {
            RestrictionToastManager.show(17042989);
        }
        return z2;
    }

    public final boolean isTaskManagerAvailable(int i) {
        List<ApplicationInfo> installedApplications;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        Context createContextAsUser = Utils.createContextAsUser(this.mContext, "android", 0, i);
        if (createContextAsUser == null || (installedApplications = createContextAsUser.getPackageManager().getInstalledApplications(512)) == null) {
            return true;
        }
        boolean z = false;
        for (ApplicationInfo applicationInfo : installedApplications) {
            String[] strArr = TASKMANAGER_PKGS;
            int length = strArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (applicationInfo.packageName.equals(strArr[i2])) {
                    z = true;
                    break;
                }
                i2++;
            }
            if (z) {
                break;
            }
        }
        Binder.restoreCallingIdentity(clearCallingIdentity);
        return z;
    }

    public boolean hideStatusBar(ContextInfo contextInfo, boolean z) {
        ContextInfo enforceKioskModePermission = enforceKioskModePermission(contextInfo);
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(enforceKioskModePermission);
        int i = 0;
        if (callingOrCurrentUserId != 0) {
            Log.i("KioskModeService", "hideStatusBar() failed. Caller is not owner");
            return false;
        }
        int i2 = enforceKioskModePermission.mCallerUid;
        try {
            i = this.mEdmStorageProvider.getInt(i2, "KIOSKMODE", "systemBarEnabled");
        } catch (SettingNotFoundException unused) {
        }
        boolean putInt = this.mEdmStorageProvider.putInt(i2, "KIOSKMODE", "systemBarEnabled", z ? i | 1 : i & (-2));
        boolean isStatusBarHiddenAsUser = isStatusBarHiddenAsUser(callingOrCurrentUserId);
        if (putInt) {
            applyHideStatusBarSystemUI(callingOrCurrentUserId, isStatusBarHiddenAsUser);
        }
        return putInt;
    }

    public boolean isStatusBarHidden(ContextInfo contextInfo) {
        return isStatusBarHiddenAsUser(0);
    }

    public boolean isStatusBarHiddenAsUser(int i) {
        Iterator it = this.mEdmStorageProvider.getIntListAsUser("KIOSKMODE", "systemBarEnabled", 0).iterator();
        while (it.hasNext()) {
            if ((((Integer) it.next()).intValue() & 1) != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean hideNavigationBar(ContextInfo contextInfo, boolean z) {
        ContextInfo enforceKioskModePermission = enforceKioskModePermission(contextInfo);
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(enforceKioskModePermission);
        int i = 0;
        if (callingOrCurrentUserId != 0) {
            Log.i("KioskModeService", "hideNavigationBar() failed. Caller is not owner");
            return false;
        }
        int i2 = enforceKioskModePermission.mCallerUid;
        try {
            i = this.mEdmStorageProvider.getInt(i2, "KIOSKMODE", "systemBarEnabled");
        } catch (SettingNotFoundException unused) {
        }
        boolean putInt = this.mEdmStorageProvider.putInt(i2, "KIOSKMODE", "systemBarEnabled", z ? i | 2 : i & (-3));
        boolean isNavigationBarHidden = isNavigationBarHidden();
        if (putInt) {
            applyHideNavigationBarSystemUI(callingOrCurrentUserId, isNavigationBarHidden);
        }
        return putInt;
    }

    public boolean isNavigationBarHidden(ContextInfo contextInfo) {
        return isNavigationBarHidden();
    }

    public final boolean isNavigationBarHidden() {
        Iterator it = this.mEdmStorageProvider.getIntListAsUser("KIOSKMODE", "systemBarEnabled", 0).iterator();
        while (it.hasNext()) {
            if ((((Integer) it.next()).intValue() & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    public boolean allowMultiWindowMode(ContextInfo contextInfo, boolean z) {
        boolean z2;
        ContextInfo enforceKioskModePermission = enforceKioskModePermission(contextInfo);
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(enforceKioskModePermission);
        Log.i("KioskModeService", "allowMultiWindowMode() : " + z + ", userId = " + callingOrCurrentUserId);
        if (callingOrCurrentUserId != 0) {
            Log.i("KioskModeService", "allowMultiWindowMode() failed. Caller is not owner");
            return false;
        }
        try {
            z2 = this.mEdmStorageProvider.getBoolean(enforceKioskModePermission.mCallerUid, "KIOSKMODE", "multiWindowEnabled");
        } catch (Exception unused) {
            Log.i("KioskModeService", "allowMultiWindowMode() : fail to get admin policy value = " + enforceKioskModePermission.mCallerUid);
            z2 = true;
        }
        boolean putBoolean = this.mEdmStorageProvider.putBoolean(enforceKioskModePermission.mCallerUid, "KIOSKMODE", "multiWindowEnabled", z);
        if (putBoolean) {
            putBoolean = applyMultiWindowPolicy(true, callingOrCurrentUserId);
            if (!putBoolean) {
                Log.i("KioskModeService", "allowMultiWindowMode() : restore policy because fail to update multiwindow setting. = " + this.mEdmStorageProvider.putBoolean(enforceKioskModePermission.mCallerUid, "KIOSKMODE", "multiWindowEnabled", z2));
            }
        } else {
            Log.i("KioskModeService", "allowMultiWindowMode() : failed to update policy. ");
        }
        return putBoolean;
    }

    public boolean isMultiWindowModeAllowed(ContextInfo contextInfo, boolean z) {
        boolean isMultiWindowModeAllowedAsUser = isMultiWindowModeAllowedAsUser(getUserIdByPackageNameOrUid(contextInfo));
        if (z && !isMultiWindowModeAllowedAsUser) {
            RestrictionToastManager.show(R.string.whichEditApplication);
        }
        return isMultiWindowModeAllowedAsUser;
    }

    public boolean isMultiWindowModeAllowedAsUser(int i) {
        Iterator it = this.mEdmStorageProvider.getBooleanListAsUser("KIOSKMODE", "multiWindowEnabled", 0).iterator();
        boolean z = true;
        while (it.hasNext()) {
            if (!((Boolean) it.next()).booleanValue()) {
                z = false;
            }
        }
        return z;
    }

    public final int getUserIdByPackageNameOrUid(ContextInfo contextInfo) {
        if (contextInfo == null) {
            contextInfo = new ContextInfo(Binder.getCallingUid());
        }
        String nameForUid = this.mContext.getPackageManager().getNameForUid(contextInfo.mCallerUid);
        if (nameForUid != null) {
            int lastIndexOf = nameForUid.lastIndexOf(XmlUtils.STRING_ARRAY_SEPARATOR);
            if (lastIndexOf != -1) {
                nameForUid = nameForUid.substring(0, lastIndexOf);
            }
            if (nameForUid.equals("android.uid.systemui")) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                int currentUser = ActivityManager.getCurrentUser();
                Log.d("KioskModeService", "System UI : " + contextInfo.mCallerUid + " / userId : " + currentUser);
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return currentUser;
            }
        }
        return Utils.getCallingOrCurrentUserId(contextInfo);
    }

    public boolean clearAllNotifications(ContextInfo contextInfo) {
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(enforceKioskModePermission(contextInfo));
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            boolean clearAllNotificationsAsUser = SystemUIAdapter.getInstance(this.mContext).clearAllNotificationsAsUser(callingOrCurrentUserId);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return clearAllNotificationsAsUser;
        } catch (Exception unused) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public boolean isAirCommandModeAllowed(ContextInfo contextInfo) {
        Iterator it = this.mEdmStorageProvider.getBooleanList("KIOSKMODE", "kioskModeAirCommandAllowed").iterator();
        while (it.hasNext()) {
            boolean booleanValue = ((Boolean) it.next()).booleanValue();
            if (!booleanValue) {
                return booleanValue;
            }
        }
        return true;
    }

    public boolean allowAirCommandMode(ContextInfo contextInfo, boolean z) {
        boolean z2;
        ContextInfo enforceOwnerOnlyAndKioskModePermission = enforceOwnerOnlyAndKioskModePermission(contextInfo);
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(enforceOwnerOnlyAndKioskModePermission);
        try {
            z2 = this.mEdmStorageProvider.getBoolean(enforceOwnerOnlyAndKioskModePermission.mCallerUid, "KIOSKMODE", "kioskModeAirCommandAllowed");
        } catch (Exception unused) {
            Log.i("KioskModeService", "allowAirCommandMode() : fail to get admin policy value = " + enforceOwnerOnlyAndKioskModePermission.mCallerUid);
            z2 = true;
        }
        Log.i("KioskModeService", "allowAirCommandMode() : " + z + ", userId = " + callingOrCurrentUserId);
        boolean putBoolean = this.mEdmStorageProvider.putBoolean(enforceOwnerOnlyAndKioskModePermission.mCallerUid, "KIOSKMODE", "kioskModeAirCommandAllowed", z);
        if (putBoolean) {
            if (isAirCommandModeAllowed(enforceOwnerOnlyAndKioskModePermission)) {
                putBoolean = setAirCommandOn(callingOrCurrentUserId, true);
            } else {
                putBoolean = resetAirCommandConfigurationAsUser(callingOrCurrentUserId);
            }
            if (!putBoolean) {
                Log.i("KioskModeService", "allowAirCommandMode() : restore policy because fail to update aircommand setting. = " + this.mEdmStorageProvider.putBoolean(enforceOwnerOnlyAndKioskModePermission.mCallerUid, "KIOSKMODE", "kioskModeAirCommandAllowed", z2));
            }
        } else {
            Log.i("KioskModeService", "allowAirCommandMode() : failed to update policy. ");
        }
        return putBoolean;
    }

    public final boolean resetAirCommandConfigurationAsUser(int i) {
        boolean airCommandOn = setAirCommandOn(i, false);
        if (airCommandOn && getPenDetachmentOption(i).equals(PenDetachmentOption.AIR_COMMAND)) {
            setPenDetachmentOption(i, PenDetachmentOption.NONE);
        }
        return airCommandOn;
    }

    public boolean isAirViewModeAllowed(ContextInfo contextInfo) {
        Iterator it = this.mEdmStorageProvider.getBooleanList("KIOSKMODE", "kioskModeAirViewAllowed").iterator();
        while (it.hasNext()) {
            boolean booleanValue = ((Boolean) it.next()).booleanValue();
            if (!booleanValue) {
                return booleanValue;
            }
        }
        return true;
    }

    public boolean allowAirViewMode(ContextInfo contextInfo, boolean z) {
        ContextInfo enforceOwnerOnlyAndKioskModePermission = enforceOwnerOnlyAndKioskModePermission(contextInfo);
        int callingOrCurrentUserId = Utils.getCallingOrCurrentUserId(enforceOwnerOnlyAndKioskModePermission);
        if (!z && isAirViewModeAllowed(enforceOwnerOnlyAndKioskModePermission)) {
            resetAirViewConfigurationAsUser(callingOrCurrentUserId);
        }
        return this.mEdmStorageProvider.putBoolean(enforceOwnerOnlyAndKioskModePermission.mCallerUid, "KIOSKMODE", "kioskModeAirViewAllowed", z);
    }

    public final void resetAirViewConfigurationAsUser(int i) {
        setAirViewOn(i, false);
        setFingerAirViewOn(i, false);
        setFingerAirViewInformationPreviewOn(i, false);
        setPenHoveringOn(i, false);
    }

    public final boolean setAirCommandOn(int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z2 = false;
        try {
            try {
                z2 = Settings.System.putIntForUser(this.mContext.getContentResolver(), "air_button_onoff", z ? 1 : 0, i);
            } catch (Exception e) {
                Log.i("KioskModeService", "setAirCommandOn() : failed to update setting value .", e);
            }
            if (!z2) {
                Log.i("KioskModeService", "setAirCommandOn() : failed to update setting value .");
            }
            return z2;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void setAirViewOn(int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        Settings.System.putIntForUser(this.mContext.getContentResolver(), "air_view_master_onoff", z ? 1 : 0, i);
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public final void setFingerAirViewOn(int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        Settings.System.putIntForUser(this.mContext.getContentResolver(), "finger_air_view", z ? 1 : 0, i);
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public final void setFingerAirViewInformationPreviewOn(int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        Settings.System.putIntForUser(this.mContext.getContentResolver(), "finger_air_view_information_preview", z ? 1 : 0, i);
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public final PenDetachmentOption getPenDetachmentOption(int i) {
        return PenDetachmentOption.values()[Settings.System.getIntForUser(this.mContext.getContentResolver(), "pen_detachment_option", 0, i)];
    }

    public final void setPenDetachmentOption(int i, PenDetachmentOption penDetachmentOption) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        Settings.System.putIntForUser(this.mContext.getContentResolver(), "pen_detachment_option", penDetachmentOption.ordinal(), i);
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public final void setPenHoveringOn(int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        Settings.System.putIntForUser(this.mContext.getContentResolver(), "pen_hovering", z ? 1 : 0, i);
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public boolean allowEdgeScreen(ContextInfo contextInfo, int i, boolean z) {
        boolean z2;
        ContextInfo enforceOwnerOnlyAndKioskModePermission = enforceOwnerOnlyAndKioskModePermission(contextInfo);
        if (i != 31) {
            return false;
        }
        if ((i & 31) > 0 && !z) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                if (SUPPORT_EDGE_MUM) {
                    Iterator it = this.mUserManager.getUsers().iterator();
                    while (it.hasNext()) {
                        Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "edge_enable", 0, ((UserInfo) it.next()).getUserHandle().getIdentifier());
                    }
                } else {
                    Settings.Global.putInt(this.mContext.getContentResolver(), "edge_enable", 0);
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        if ((i & 1) > 0 && !z && isNightClockAllowed(enforceOwnerOnlyAndKioskModePermission)) {
            resetEdgeScreenSetting("night_mode", 0);
        }
        if ((i & 2) > 0 && !z && isPeopleEdgeAllowed(enforceOwnerOnlyAndKioskModePermission)) {
            resetEdgeScreenSetting("people_stripe", 0);
        }
        if ((i & 8) > 0 && !z && isEdgeLightingAllowed(enforceOwnerOnlyAndKioskModePermission)) {
            resetEdgeScreenSetting("turn_over_lighting", 0);
            resetEdgeScreenSetting("edge_lighting", 0);
        }
        int i2 = i & 4;
        if (i2 > 0) {
            z2 = isInformationStreamAllowed(enforceOwnerOnlyAndKioskModePermission);
            if (!z && z2) {
                resetEdgeScreenSetting("edge_information_stream", 0);
                broadcastBlockedEdgeScreenIntent(false);
            }
        } else {
            z2 = true;
        }
        if ((i & 16) > 0 && !z && isAppsEdgeAllowed(enforceOwnerOnlyAndKioskModePermission)) {
            resetEdgeScreenSetting("task_edge", 0);
        }
        int blockedEdgeScreenByAdmin = getBlockedEdgeScreenByAdmin(enforceOwnerOnlyAndKioskModePermission);
        boolean putInt = this.mEdmStorageProvider.putInt(enforceOwnerOnlyAndKioskModePermission.mCallerUid, "KIOSKMODE", "edgeScreenBlockedFunctions", z ? (~i) & blockedEdgeScreenByAdmin : i | blockedEdgeScreenByAdmin);
        if (putInt && i2 > 0 && z && !z2 && isInformationStreamAllowed(enforceOwnerOnlyAndKioskModePermission)) {
            broadcastBlockedEdgeScreenIntent(true);
        }
        return putInt;
    }

    public int getBlockedEdgeScreen(ContextInfo contextInfo) {
        Iterator it = this.mEdmStorageProvider.getIntList("KIOSKMODE", "edgeScreenBlockedFunctions").iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= ((Integer) it.next()).intValue();
        }
        return i;
    }

    public final int getBlockedEdgeScreenByAdmin(ContextInfo contextInfo) {
        try {
            return this.mEdmStorageProvider.getInt(contextInfo.mCallerUid, "KIOSKMODE", "edgeScreenBlockedFunctions");
        } catch (SettingNotFoundException unused) {
            Log.e("KioskModeService", "getBlockedEdgeScreen() failed");
            return 0;
        }
    }

    public boolean isEdgeAllowed(ContextInfo contextInfo) {
        return isEdgeScreenFunctionalityAllowed(31);
    }

    public boolean isNightClockAllowed(ContextInfo contextInfo) {
        return isEdgeScreenFunctionalityAllowed(1);
    }

    public boolean isPeopleEdgeAllowed(ContextInfo contextInfo) {
        return isEdgeScreenFunctionalityAllowed(2);
    }

    public boolean isEdgeLightingAllowed(ContextInfo contextInfo) {
        return isEdgeScreenFunctionalityAllowed(8);
    }

    public boolean isInformationStreamAllowed(ContextInfo contextInfo) {
        return isEdgeScreenFunctionalityAllowed(4);
    }

    public boolean isAppsEdgeAllowed(ContextInfo contextInfo) {
        return isEdgeScreenFunctionalityAllowed(16);
    }

    public final boolean isEdgeScreenFunctionalityAllowed(int i) {
        return (getBlockedEdgeScreen(null) & i) <= 0;
    }

    public final void resetEdgeScreenSetting(String str, int i) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Settings.System.putIntForUser(this.mContext.getContentResolver(), str, 0, i);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void broadcastBlockedEdgeScreenIntent(boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Intent intent = new Intent("com.samsung.android.knox.intent.action.INFORMATION_STREAM_INTERNAL");
            intent.putExtra("com.samsung.android.knox.intent.extra.BLOCKED_STATUS", !z);
            this.mContext.sendBroadcast(intent, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE");
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // com.android.server.enterprise.common.KeyCodeCallback
    public void setMediator(KeyCodeMediator keyCodeMediator) {
        if (this.mKeyCodeMediator == null) {
            this.mKeyCodeMediator = keyCodeMediator;
            keyCodeMediator.registerCallback(this);
        }
    }

    @Override // com.android.server.enterprise.common.KeyCodeRestrictionCallback
    public boolean isKeyCodeInputAllowed(int i) {
        return isHardwareKeyAllowed(null, i, false);
    }

    @Override // com.android.server.enterprise.common.KeyCodeRestrictionCallback
    public Set getRestrictedKeyCodes() {
        return new HashSet(getAllBlockedHardwareKeys(null));
    }

    public final void updateSystemUIMonitor(int i) {
        applyHideSystemBarSystemUI(i);
        setKioskModeEnabledSystemUI(i, isKioskModeEnabledAsUser(i));
    }

    public final void applyHideSystemBarSystemUI(int i) {
        boolean isSystemBarHidden = isSystemBarHidden();
        boolean isStatusBarHiddenAsUser = isStatusBarHiddenAsUser(i);
        boolean isNavigationBarHidden = isNavigationBarHidden();
        applyHideStatusBarSystemUI(i, isSystemBarHidden || isStatusBarHiddenAsUser);
        applyHideNavigationBarSystemUI(i, isSystemBarHidden || isNavigationBarHidden);
    }

    public final void applyHideStatusBarSystemUI(int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                SystemUIAdapter.getInstance(this.mContext).setStatusBarHiddenAsUser(i, z);
            } catch (Exception e) {
                Log.e("KioskModeService", "applyHideStatusBarSystemUI() failed. ", e);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void applyHideNavigationBarSystemUI(int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                SystemUIAdapter.getInstance(this.mContext).setNavigationBarHiddenAsUser(i, z);
            } catch (Exception e) {
                Log.e("KioskModeService", "applyHideNavigationBarSystemUI() failed. ", e);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void setKioskModeEnabledSystemUI(int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                SystemUIAdapter.getInstance(this.mContext).setKioskModeEnabledAsUser(i, z);
            } catch (Exception e) {
                Log.e("KioskModeService", "setKioskModeEnabledSystemUI() failed. ", e);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void registerDexBlocker() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ((SemDesktopModeManager) this.mContext.getApplicationContext().getSystemService("desktopmode")).registerBlocker(this.blocker);
            Log.d("KioskModeService", "registerDexBlocker was registered");
        } catch (Exception unused) {
            Log.d("KioskModeService", "registerDexBlocker was failed");
        }
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public final void unRegisterDexBlocker() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ((SemDesktopModeManager) this.mContext.getApplicationContext().getSystemService("desktopmode")).unregisterBlocker(this.blocker);
            Log.d("KioskModeService", "registerDexBlocker was unregistered");
        } catch (Exception unused) {
            Log.d("KioskModeService", "unRegisterDexBlocker was failed");
        }
        Binder.restoreCallingIdentity(clearCallingIdentity);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.DUMP") != 0) {
            printWriter.println("Permission Denial: can't dump KioskModeService");
            return;
        }
        this.mCache.dump(printWriter, "[KioskMode Cache]" + System.lineSeparator());
        printWriter.println("KioskMode Enabled : " + isKioskModeProcessingOrEnabled(new ContextInfo(Binder.getCallingUid())));
        if (mProcessing) {
            printWriter.println("\tKiosk Mode is busy on processing.");
        }
        ArrayList dataByFields = this.mEdmStorageProvider.getDataByFields("KIOSKMODE", null, null, new String[]{"adminUid", "systemBarEnabled", "multiWindowEnabled", "taskManagerEnabled", "kioskModeAirCommandAllowed", "kioskModeAirViewAllowed", "edgeScreenBlockedFunctions"});
        printWriter.println("[userId = 0]");
        printWriter.println("\tSystem Bar Hidden = " + dumpMaskedPolicy("systemBarEnabled", dataByFields));
        printWriter.println("\tStatus Bar Hidden = " + dumpMaskedPolicy("statusBarHidden", dataByFields));
        printWriter.println("\tNavigation Bar Hidden = " + dumpMaskedPolicy("navigationBarHidden", dataByFields));
        printWriter.println("\tMultiWindow Allow = " + dumpPolicy("multiWindowEnabled", dataByFields));
        printWriter.println("\tTaskManager Allow = " + dumpPolicy("taskManagerEnabled", dataByFields));
        printWriter.println("\tAirCommand Allow = " + dumpPolicy("kioskModeAirCommandAllowed", dataByFields));
        printWriter.println("\tAirView Allow = " + dumpPolicy("kioskModeAirViewAllowed", dataByFields));
        printWriter.println("\tEdgeScreenFunctions Allow = " + dumpMaskedPolicy("edgeScreenBlockedFunctions", dataByFields));
    }

    public final String dumpPolicy(String str, ArrayList arrayList) {
        int i = ((PolicyDefinition) this.mPolicyDefinitions.get(str)).defaultValue;
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ContentValues contentValues = (ContentValues) it.next();
            String asString = contentValues.getAsString("adminUid");
            Integer asInteger = contentValues.getAsInteger(str);
            if (asString != null && asInteger != null && asInteger.intValue() != i) {
                sb.append(asString + " ");
            }
        }
        if (sb.length() == 0) {
            return ((PolicyDefinition) this.mPolicyDefinitions.get(str)).defaultMessage;
        }
        sb.insert(0, " Enforced [ ");
        sb.insert(0, ((PolicyDefinition) this.mPolicyDefinitions.get(str)).enforcedMessage);
        sb.append("]");
        return sb.toString();
    }

    public final String dumpMaskedPolicy(String str, ArrayList arrayList) {
        int i = ((PolicyDefinition) this.mPolicyDefinitions.get(str)).policyMask;
        if (str.equals("statusBarHidden") || str.equals("navigationBarHidden")) {
            str = "systemBarEnabled";
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ContentValues contentValues = (ContentValues) it.next();
            String asString = contentValues.getAsString("adminUid");
            Integer asInteger = contentValues.getAsInteger(str);
            if (asString != null && asInteger != null && (asInteger.intValue() & i) == i) {
                sb.append(asString + " ");
            }
        }
        if (sb.length() == 0) {
            return ((PolicyDefinition) this.mPolicyDefinitions.get(str)).defaultMessage;
        }
        sb.insert(0, " Enforced [ ");
        sb.insert(0, ((PolicyDefinition) this.mPolicyDefinitions.get(str)).enforcedMessage);
        sb.append("]");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public enum PenDetachmentOption {
        NONE(0),
        ACTION_MEMO(1),
        AIR_COMMAND(2);

        private final int option;

        PenDetachmentOption(int i) {
            this.option = i;
        }
    }

    /* loaded from: classes2.dex */
    public final class KioskHandler extends Handler {
        public KioskHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message != null) {
                int i = message.what;
                if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    KioskModeService.mProcessing = true;
                    KioskModeService.this._disableKioskMode(new ContextInfo(message.getData().getInt("adminuid")), 2);
                    KioskModeService.mProcessing = false;
                    return;
                }
                KioskModeService.mProcessing = true;
                Bundle data = message.getData();
                int i2 = data.getInt("adminuid");
                KioskModeService.this._enableKioskMode(new ContextInfo(i2), data.getString("package"));
                KioskModeService.mProcessing = false;
            }
        }
    }

    /* loaded from: classes2.dex */
    public class KioskModeCache extends EdmCache {
        public Map mBlockedHwKeys;

        public KioskModeCache() {
            this.mBlockedHwKeys = null;
        }

        public boolean updateCache() {
            boolean z = this.mBlockedHwKeys != null;
            this.mBlockedHwKeys = KioskModeService.this.getAllBlockedList();
            if (z) {
                Intent intent = new Intent(KioskModeService.ACTION_REFRESH_HWKEY_INTERNAL);
                intent.addFlags(67108864);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    KioskModeService.this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
                } catch (Exception unused) {
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    throw th;
                }
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
            return true;
        }

        public void dump(PrintWriter printWriter, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            Map map = this.mBlockedHwKeys;
            if (map != null) {
                Set<Integer> keySet = map.keySet();
                if (keySet.size() > 0) {
                    for (Integer num : keySet) {
                        sb.append("BlockedKeyList for userId ");
                        sb.append(num);
                        sb.append(" {");
                        Iterator it = ((Set) this.mBlockedHwKeys.get(num)).iterator();
                        while (it.hasNext()) {
                            sb.append((String) it.next());
                            if (it.hasNext()) {
                                sb.append(", ");
                            }
                        }
                        sb.append("} ");
                        sb.append(System.lineSeparator());
                    }
                }
            }
            printWriter.write(sb.toString());
        }
    }
}
