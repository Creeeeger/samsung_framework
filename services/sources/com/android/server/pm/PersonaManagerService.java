package com.android.server.pm;

import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityManagerNative;
import android.app.ActivityThread;
import android.app.AppGlobals;
import android.app.ApplicationPackageManager;
import android.app.IApplicationThread;
import android.app.IServiceConnection;
import android.app.KeyguardManager;
import android.app.UserSwitchObserver;
import android.app.admin.DevicePolicyManager;
import android.app.admin.IDevicePolicyManager;
import android.app.trust.ITrustManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.IPackageDeleteObserver;
import android.content.pm.IPackageManager;
import android.content.pm.ISystemPersonaObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.UserInfo;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.ContainerStateReceiver;
import android.os.Debug;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.Log;
import android.util.Slog;
import android.util.SparseBooleanArray;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.widget.LockPatternUtils;
import com.android.internal.widget.LockSettingsInternal;
import com.android.server.LocalServices;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.knox.ContainerDependencyWrapper;
import com.android.server.knox.IKnoxAnalyticsContainerImpl;
import com.android.server.knox.KnoxAnalyticsContainer;
import com.android.server.knox.KnoxForesightService;
import com.android.server.knox.PersonaPolicyManagerService;
import com.android.server.knox.SeamLessSwitchHandler;
import com.samsung.android.knox.ContainerProxy;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.EnterpriseKnoxManager;
import com.samsung.android.knox.IBasicCommand;
import com.samsung.android.knox.ISemPersonaManager;
import com.samsung.android.knox.PersonaManagerInternal;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.analytics.activation.DevicePolicyListener;
import com.samsung.android.knox.container.IKnoxContainerManager;
import com.samsung.android.knox.container.KnoxContainerManager;
import com.samsung.android.knox.container.RCPPolicy;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public class PersonaManagerService extends ISemPersonaManager.Stub {
    public static PersonaManagerService sInstance;
    public final String APP_SEPARATION_ACTION_STATUS;
    public final String APP_SEPARATION_ACTION_TYPE;
    public final String APP_SEPARATION_ACTION_TYPE_ACTIVATE;
    public final String APP_SEPARATION_ACTION_TYPE_DEACTIVATE;
    public final String APP_SEPARATION_DEFAULT_NAME;
    public final String APP_SEPARATION_MIGRATION_COMPLETED;
    public final String APP_SEPARATION_WL_RETURN_EXTRA;
    public final String INTENT_APP_SEPARATION_ACTION_RETURN;
    public final String INTENT_APP_SEPARATION_ALLOWEDLIST_RETURN;
    public final int KA_DELAY_TIME;
    public final String KEY_USER_REMOVED;
    public String LOG_FS_TAG;
    public final String MDM_ENTERPRISE_APP_SEPARATION_PERMISSION;
    public final int UNKNOWN_USER_ID;
    public ContentObserver analyticsObserver;
    ContainerDependencyWrapper containerDependencyWrapper;
    public HashSet containerNames;
    public EnterpriseDeviceManager edm;
    public HandlerThread handlerThread;
    public boolean isFotaUpgradeVersionChanged;
    public ActivityManagerInternal mActivityManagerInternal;
    public BroadcastReceiver mAnalyticsReceiver;
    public final File mBaseUserPath;
    public final Context mContext;
    public List mCorePackageUid;
    public Object mDeviceEmergencyModeLock;
    public boolean mDeviceInteractive;
    public final SparseBooleanArray mDeviceLockedForUser;
    public DevicePolicyManager mDevicePolicyManager;
    public BroadcastReceiver mFingerPrintReceiver;
    public String mFirmwareVersion;
    public final Object mFocusLauncherLock;
    public final Object mFocusLock;
    public int mFocusedLauncherId;
    public int mFocusedUserId;
    public Set mImeSet;
    public final Injector mInjector;
    public boolean mIsFOTAUpgrade;
    public boolean mKALockscreenTimeoutAdminFlag;
    public KeyguardManager mKeyguardManager;
    public final KnoxAnalyticsContainer mKnoxAnalyticsContainer;
    public PersonaLegacyStateMonitor mLegacyStateMonitor;
    public final LocalService mLocalService;
    public LockPatternUtils mLockPatternUtils;
    public BroadcastReceiver mPackageReceiver;
    public final File mPersonaCacheFile;
    public final Object mPersonaCacheLock;
    public final HashMap mPersonaCacheMap;
    public final Object mPersonaDbLock;
    public final PersonaHandler mPersonaHandler;
    public final PersonaPolicyManagerService mPersonaPolicyManagerService;
    public PersonaServiceProxy mPersonaServiceProxy;
    public final PackageManagerService mPm;
    public PowerManagerInternal mPowerManagerInternal;
    public SeamLessSwitchHandler mSeamLessSwitchHandler;
    public int mSecureFolderId;
    public BroadcastReceiver mSetupWizardCompleteReceiver;
    public ITrustManager mTrustManager;
    public final SparseBooleanArray mUserHasBeenShutdownBefore;
    public final File mUserListFile;
    public UserManager mUserManager;
    public UserManagerInternal mUserManagerInternal;
    public BroadcastReceiver mUserReceiver;
    public UserSwitchObserver mUserSwitchObserver;
    public final File mUsersDir;
    public IntentFilter packageFilter;
    public SemPersonaManager personaManager;
    public List requiredApps;
    public boolean xmlnotParsedforFOTA;
    public static final boolean DEBUG = "eng".equals(SystemProperties.get("ro.build.type"));
    public static final String USER_INFO_DIR = "system" + File.separator + "users";
    public static List containerCriticalApps = new ArrayList(Arrays.asList("com.samsung.knox.securefolder", "com.samsung.android.knox.containercore", "com.sec.knox.bluetooth", "com.samsung.knox.appsupdateagent", "com.android.bbc.fileprovider"));
    static Bundle mSeparationConfiginCache = null;
    public static List mAppsListOnlyPresentInSeparatedApps = null;
    public static String mDeviceOwnerPackage = "";
    public static HashMap cachedTime = new HashMap();
    public static final boolean DEVICE_SUPPORT_KNOX = isKnoxSupported();
    public static ArrayList workTabSupportLauncherUids = new ArrayList();

    public final boolean isDpmEnforced(int i) {
        return i > 0 && i < Integer.MAX_VALUE;
    }

    public final boolean isTimeOutComputable(int i) {
        return i > 0;
    }

    public static boolean isKnoxSupported() {
        Bundle knoxInfo = SemPersonaManager.getKnoxInfo();
        String string = knoxInfo != null ? knoxInfo.getString("version") : null;
        return (string == null || string.isEmpty() || "v00".equals(string)) ? false : true;
    }

    public final int checkCallerPermissionFor(String str) {
        return ContainerDependencyWrapper.checkCallerPermissionFor(this.mContext, "PersonaManagerService", str);
    }

    public static PersonaManagerService getInstance() {
        PersonaManagerService personaManagerService;
        synchronized (PersonaManagerService.class) {
            personaManagerService = sInstance;
        }
        return personaManagerService;
    }

    public PersonaManagerService(Context context, PackageManagerService packageManagerService, Object obj) {
        this(context, packageManagerService, obj, Environment.getDataDirectory(), new File(Environment.getDataDirectory(), "user"));
    }

    public PersonaManagerService(Context context, PackageManagerService packageManagerService, Object obj, File file, File file2) {
        this(new Injector(context, packageManagerService, obj, file, file2, null, null, null, null, null, null, null, null, null, false));
    }

    public PersonaManagerService(Injector injector) {
        File file;
        this.INTENT_APP_SEPARATION_ALLOWEDLIST_RETURN = "com.samsung.android.knox.intent.action.SEPARATION_ALLOWEDLIST_RETURN";
        this.INTENT_APP_SEPARATION_ACTION_RETURN = "com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN";
        this.APP_SEPARATION_WL_RETURN_EXTRA = "SeparationWhiteListReturn";
        this.APP_SEPARATION_ACTION_TYPE = "type";
        this.APP_SEPARATION_ACTION_TYPE_DEACTIVATE = "deactivate";
        this.APP_SEPARATION_ACTION_TYPE_ACTIVATE = "activate";
        this.APP_SEPARATION_ACTION_STATUS = "status";
        this.MDM_ENTERPRISE_APP_SEPARATION_PERMISSION = "com.samsung.android.knox.permission.KNOX_APP_SEPARATION";
        this.APP_SEPARATION_DEFAULT_NAME = "Separated Apps";
        this.APP_SEPARATION_MIGRATION_COMPLETED = "persist.sys.knox.appseparation_migration";
        Object obj = new Object();
        this.mPersonaDbLock = obj;
        this.mFocusLock = new Object();
        this.mFocusLauncherLock = new Object();
        this.mPersonaCacheLock = new Object();
        this.UNKNOWN_USER_ID = -1;
        this.mPersonaCacheMap = new HashMap();
        this.mFirmwareVersion = null;
        this.KA_DELAY_TIME = 60000;
        this.handlerThread = null;
        this.mFocusedLauncherId = 0;
        this.mFocusedUserId = 0;
        this.mDeviceEmergencyModeLock = new Object();
        this.mIsFOTAUpgrade = false;
        this.isFotaUpgradeVersionChanged = false;
        this.xmlnotParsedforFOTA = true;
        this.mSecureFolderId = -1;
        this.mKALockscreenTimeoutAdminFlag = false;
        this.mCorePackageUid = new ArrayList();
        this.mUserHasBeenShutdownBefore = new SparseBooleanArray();
        this.personaManager = null;
        this.packageFilter = null;
        this.requiredApps = null;
        this.mDeviceLockedForUser = new SparseBooleanArray();
        this.mUserSwitchObserver = new UserSwitchObserver() { // from class: com.android.server.pm.PersonaManagerService.2
            public void onLockedBootComplete(int i) {
                Log.i("PersonaManagerService", "onLockedBootComplete: " + i);
                SemPersonaManager.sendContainerEvent(PersonaManagerService.this.mContext, i, 1);
                if (PersonaManagerService.this.mKeyguardManager.isDeviceSecure(i) && PersonaManagerService.this.mKeyguardManager.isDeviceLocked(i)) {
                    return;
                }
                Log.i("PersonaManagerService", "container is already unlocked");
                SemPersonaManager.sendContainerEvent(PersonaManagerService.this.mContext, i, 5);
                synchronized (PersonaManagerService.this.mDeviceLockedForUser) {
                    PersonaManagerService.this.mDeviceLockedForUser.put(i, false);
                }
            }

            public void onForegroundProfileSwitch(int i) {
                Log.i("PersonaManagerService", "onForegroundProfileSwitch: " + i);
                PersonaManagerService.this.mPersonaHandler.removeMessages(80);
                PersonaManagerService.this.mPersonaHandler.sendMessage(PersonaManagerService.this.mPersonaHandler.obtainMessage(80, i, 0));
            }
        };
        this.containerNames = new HashSet();
        this.mUserReceiver = new BroadcastReceiver() { // from class: com.android.server.pm.PersonaManagerService.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, final Intent intent) {
                String action = intent.getAction();
                int intExtra = intent.getIntExtra("android.intent.extra.user_handle", -1);
                Log.i("PersonaManagerService", "UserReceiver.onReceive() {action:" + action + " userHandle:" + intExtra + "}");
                int i = 0;
                if (DevicePolicyListener.ACTION_PROFILE_OWNER_ADDED.equals(action)) {
                    PersonaManagerService.this.mKALockscreenTimeoutAdminFlag = false;
                    final UserHandle userHandle = (UserHandle) intent.getExtra("android.intent.extra.USER");
                    if (PersonaManagerService.this.mLocalService.isKnoxId(userHandle.getIdentifier())) {
                        SemPersonaManager.sendContainerEvent(context, userHandle.getIdentifier(), 18);
                    }
                    UserInfo userInfo = PersonaManagerService.this.getUserManager().getUserInfo(userHandle.getIdentifier());
                    try {
                        PersonaManagerService.this.mContext.getContentResolver().registerContentObserver(Settings.System.getUriFor("caller_id_to_show_" + userInfo.name), false, PersonaManagerService.this.analyticsObserver, -1);
                        PersonaManagerService.this.containerNames.add(userInfo.name);
                        PersonaManagerService.this.mKnoxAnalyticsContainer.knoxAnalyticsContainer(userHandle.getIdentifier(), "DUAL_DAR_USER_ADDED");
                    } catch (Exception e) {
                        Log.d("PersonaManagerService", "DUAL_DAR_USER_ADDED KA failed : " + e);
                    }
                    PersonaManagerService.this.mPersonaHandler.postDelayed(new Runnable() { // from class: com.android.server.pm.PersonaManagerService.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PersonaManagerService.this.mKnoxAnalyticsContainer.onWorkProfileAdded(userHandle.getIdentifier(), intent.getStringExtra(DevicePolicyListener.EXTRA_DO_PO_PACKAGE_NAME));
                        }
                    }, 60000L);
                    if (userHandle.getIdentifier() < 95) {
                        PersonaManagerService.this.registerPackageReceiver();
                    }
                    if (PersonaManagerService.this.getAppSeparationId() == userInfo.id) {
                        Log.d("PersonaManagerService", "App Separation user added. Notify to KSP");
                        Intent intent2 = new Intent();
                        intent2.setAction("com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN");
                        intent2.putExtra("type", "activate");
                        intent2.putExtra("status", true);
                        PersonaManagerService.this.notifyStatusToKspAgent(intent2);
                        PersonaManagerService.this.processAppSeparationCreation();
                    }
                    PersonaManagerService personaManagerService = PersonaManagerService.this;
                    personaManagerService.edm = EnterpriseDeviceManager.getInstance(personaManagerService.mContext);
                    try {
                        EnterpriseKnoxManager.getInstance().getKnoxContainerManager(PersonaManagerService.this.mContext, ContainerDependencyWrapper.getContextInfo(ContainerDependencyWrapper.getOwnerUidFromEdm(PersonaManagerService.this.mContext, userHandle.getIdentifier()), userHandle.getIdentifier())).getContainerConfigurationPolicy().enableNFC(true, (Bundle) null);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    try {
                        PersonaManagerService.this.enableMyFilesLauncherActivity(userHandle.getIdentifier());
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    if (SemPersonaManager.isSecureFolderId(userInfo.id)) {
                        Log.i("PersonaManagerService", "set secure folder available state true");
                        SystemProperties.set("persist.sys.knox.secure_folder_state_available", "true");
                        return;
                    }
                    return;
                }
                if (DevicePolicyListener.ACTION_PROFILE_OWNER_REMOVED.equals(action)) {
                    Parcelable userInfo2 = PersonaManagerService.this.getUserManager().getUserInfo(intExtra);
                    Bundle bundle = new Bundle();
                    bundle.putParcelable(ContainerStateReceiver.EXTRA_USER_INFO, userInfo2);
                    SemPersonaManager.sendContainerEvent(context, intExtra, 10, bundle);
                    synchronized (PersonaManagerService.this.mDeviceLockedForUser) {
                        PersonaManagerService.this.mDeviceLockedForUser.delete(intExtra);
                    }
                    synchronized (PersonaManagerService.this.mUserHasBeenShutdownBefore) {
                        PersonaManagerService.this.mUserHasBeenShutdownBefore.delete(intExtra);
                    }
                    UserInfo userInfo3 = PersonaManagerService.this.mUserManager.getUserInfo(intExtra);
                    PersonaManagerService.this.mKnoxAnalyticsContainer.onWorkProfileRemoved(userInfo3.id);
                    PersonaManagerService.this.mKALockscreenTimeoutAdminFlag = false;
                    if (SemPersonaManager.isSecureFolderId(userInfo3.id)) {
                        Log.i("PersonaManagerService", "set secure folder available state false");
                        SystemProperties.set("persist.sys.knox.secure_folder_state_available", "false");
                        return;
                    }
                    return;
                }
                if ("android.intent.action.USER_PRESENT".equals(action)) {
                    List knoxIds = PersonaManagerService.this.getPersonaManager().getKnoxIds(true);
                    while (i < knoxIds.size()) {
                        int intValue = ((Integer) knoxIds.get(i)).intValue();
                        if (PersonaManagerService.this.mLocalService.isKnoxId(intValue) && !SemPersonaManager.isSecureFolderId(intValue) && !PersonaManagerService.this.mLockPatternUtils.isSeparateProfileChallengeEnabled(intValue)) {
                            SemPersonaManager.sendContainerEvent(PersonaManagerService.this.mContext, intValue, 5);
                        }
                        i++;
                    }
                    PersonaManagerService.this.checkForesightUpdate();
                    return;
                }
                if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    List knoxIds2 = PersonaManagerService.this.getPersonaManager().getKnoxIds(true);
                    while (i < knoxIds2.size()) {
                        int intValue2 = ((Integer) knoxIds2.get(i)).intValue();
                        if (PersonaManagerService.this.mLocalService.isKnoxId(intValue2) && !SemPersonaManager.isSecureFolderId(intValue2) && !PersonaManagerService.this.mLockPatternUtils.isSeparateProfileChallengeEnabled(intValue2)) {
                            SemPersonaManager.sendContainerEvent(PersonaManagerService.this.mContext, intValue2, 19);
                        }
                        i++;
                    }
                    return;
                }
                if ("android.intent.action.USER_UNLOCKED".equals(action)) {
                    SemPersonaManager.sendContainerEvent(PersonaManagerService.this.mContext, intExtra, 5);
                    synchronized (PersonaManagerService.this.mDeviceLockedForUser) {
                        PersonaManagerService.this.mDeviceLockedForUser.put(intExtra, false);
                    }
                    return;
                }
                if ("android.intent.action.USER_STOPPED".equals(action)) {
                    SemPersonaManager.sendContainerEvent(context, intExtra, 2);
                    synchronized (PersonaManagerService.this.mUserHasBeenShutdownBefore) {
                        PersonaManagerService.this.mUserHasBeenShutdownBefore.put(intExtra, true);
                    }
                    return;
                }
                if (DevicePolicyListener.ACTION_DEVICE_OWNER_CHANGED.equals(action)) {
                    if (SemPersonaManager.isDoEnabled(0)) {
                        PersonaManagerService.this.registerPackageReceiver();
                        SemPersonaManager.sendContainerEvent(context, 0, 13);
                    }
                    PersonaManagerService.this.mPersonaHandler.postDelayed(new Runnable() { // from class: com.android.server.pm.PersonaManagerService.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            PersonaManagerService.this.mKnoxAnalyticsContainer.onDeviceOwnerChanged(intent.getStringExtra(DevicePolicyListener.EXTRA_DO_PO_PACKAGE_NAME));
                        }
                    }, 60000L);
                    return;
                }
                if ("android.intent.action.MANAGED_PROFILE_AVAILABLE".equals(action)) {
                    if (SemPersonaManager.isSecureFolderId(intExtra)) {
                        Log.i("PersonaManagerService", "set secure folder available state true");
                        SystemProperties.set("persist.sys.knox.secure_folder_state_available", "true");
                        return;
                    }
                    return;
                }
                if ("android.intent.action.MANAGED_PROFILE_UNAVAILABLE".equals(action) && SemPersonaManager.isSecureFolderId(intExtra)) {
                    Log.i("PersonaManagerService", "set secure folder available state false");
                    SystemProperties.set("persist.sys.knox.secure_folder_state_available", "false");
                }
            }
        };
        this.mSetupWizardCompleteReceiver = new BroadcastReceiver() { // from class: com.android.server.pm.PersonaManagerService.4
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Log.i("PersonaManagerService", "SetupWizardCompleteReceiver, action: " + intent.getAction());
                PersonaManagerService.this.revokeSUWAgreements(context);
            }
        };
        this.mFingerPrintReceiver = new BroadcastReceiver() { // from class: com.android.server.pm.PersonaManagerService.5
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Log.i("PersonaManagerService", "FingerPrint data changed, action: " + intent.getAction());
                Bundle bundle = new Bundle();
                bundle.putInt("android.intent.extra.user_handle", PersonaManagerService.this.mFocusedUserId);
                ContainerProxy.sendEvent("knox.container.proxy.EVENT_FINGERPRINT_CHANGE", bundle);
            }
        };
        this.mPackageReceiver = new BroadcastReceiver() { // from class: com.android.server.pm.PersonaManagerService.6
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String schemeSpecificPart;
                if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction())) {
                    PersonaManagerService.this.mAnalyticsReceiver.onReceive(context, intent);
                }
                if ("android.intent.action.PACKAGE_REMOVED".equals(intent.getAction())) {
                    PersonaManagerService.this.mAnalyticsReceiver.onReceive(context, intent);
                }
                if ("android.intent.action.PACKAGE_CHANGED".equals(intent.getAction()) && (schemeSpecificPart = intent.getData().getSchemeSpecificPart()) != null && "com.samsung.android.knox.containercore".equals(schemeSpecificPart)) {
                    PackageManager packageManager = PersonaManagerService.this.mContext.getPackageManager();
                    if (packageManager == null) {
                        return;
                    }
                    if (packageManager.getApplicationEnabledSetting(schemeSpecificPart) == 3) {
                        Log.e("PersonaManagerService", "enable container critical app !");
                        packageManager.setApplicationEnabledSetting(schemeSpecificPart, 1, 0);
                    }
                }
                if ("android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) || "android.intent.action.PACKAGE_CHANGED".equals(intent.getAction())) {
                    try {
                        String schemeSpecificPart2 = intent.getData().getSchemeSpecificPart();
                        int intExtra = intent.getIntExtra("android.intent.extra.user_handle", -10000);
                        if (ContainerDependencyWrapper.isDisallowedAppForKnox(schemeSpecificPart2, intExtra)) {
                            PersonaManagerService.this.deletePkg(intExtra, schemeSpecificPart2);
                        }
                        if (SemPersonaManager.isKnoxId(intExtra) && PersonaManagerService.this.isPackageInstalledAsUser(intExtra, schemeSpecificPart2) && PersonaManagerService.this.isStubApp(schemeSpecificPart2, intExtra)) {
                            Log.d("PersonaManagerService", "Delete stub app. " + schemeSpecificPart2 + " / " + intExtra);
                            PersonaManagerService.this.deletePkg(intExtra, schemeSpecificPart2);
                            return;
                        }
                        return;
                    } catch (Exception e) {
                        e.printStackTrace();
                        return;
                    }
                }
                try {
                    String schemeSpecificPart3 = intent.getData().getSchemeSpecificPart();
                    if (intent.getIntExtra("android.intent.extra.user_handle", -10000) == 0) {
                        List knoxIds = PersonaManagerService.this.getPersonaManager().getKnoxIds(true);
                        for (int i = 0; i < knoxIds.size(); i++) {
                            int intValue = ((Integer) knoxIds.get(i)).intValue();
                            if (ContainerDependencyWrapper.isRequiredAppForKnox(schemeSpecificPart3, intValue)) {
                                PersonaManagerService.this.installExistingPackageForPersona(intValue, schemeSpecificPart3);
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        };
        this.mAnalyticsReceiver = new BroadcastReceiver() { // from class: com.android.server.pm.PersonaManagerService.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                PersonaManagerService.this.mKnoxAnalyticsContainer.onBroadcastIntentReceived(context, intent);
            }
        };
        this.mTrustManager = null;
        this.analyticsObserver = new ContentObserver(new Handler()) { // from class: com.android.server.pm.PersonaManagerService.8
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri, int i) {
                if ((i != 0 || SemPersonaManager.isDoEnabled(i)) && !SemPersonaManager.isSecureFolderId(i)) {
                    PersonaManagerService.this.mKnoxAnalyticsContainer.requestSendSnapshotLog(i);
                }
            }
        };
        this.KEY_USER_REMOVED = "USER-REMOVED";
        this.LOG_FS_TAG = "PersonaManagerService:KnoxForesight";
        Context context = injector.getContext();
        this.mContext = context;
        this.mInjector = injector;
        PackageManagerService packageManagerService = injector.getPackageManagerService();
        this.mPm = packageManagerService;
        sInstance = this;
        this.mKnoxAnalyticsContainer = new KnoxAnalyticsContainer(context, new IKnoxAnalyticsContainerImpl(context, packageManagerService, this));
        this.containerDependencyWrapper = injector.getContainerDependencyWrapper();
        synchronized (obj) {
            file = new File(injector.getDataDir(), USER_INFO_DIR);
            this.mUsersDir = file;
            this.mBaseUserPath = injector.getBaseUserPath();
            File file2 = new File(file, "userwithpersonalist.xml");
            this.mUserListFile = file2;
            if (!file2.exists()) {
                Slog.d("PersonaManagerService", "No need to create user persona list file from Knox 3.0");
            }
            Log.i("PersonaManagerService", "<init> adding PersonaPolicyManagerService");
            this.mPersonaPolicyManagerService = injector.getPersonaPolicyManagerService();
            HandlerThread handlerThread = new HandlerThread("PersonaManagerService", 10);
            this.handlerThread = handlerThread;
            handlerThread.start();
            this.mPersonaHandler = new PersonaHandler(this.handlerThread.getLooper());
        }
        File file3 = new File(file, "persona_cache.xml");
        this.mPersonaCacheFile = file3;
        if (!file3.exists()) {
            try {
                if (file3.createNewFile()) {
                    Slog.d("PersonaManagerService", "PMS cache file created ");
                } else {
                    Slog.e("PersonaManagerService", "Error Creating PMS cache file!!!! ");
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        synchronized (this.mPersonaCacheLock) {
            readPersonaCacheLocked();
        }
        LocalService localService = new LocalService();
        this.mLocalService = localService;
        if (!this.mInjector.isTestingMode()) {
            LocalServices.addService(PersonaManagerInternal.class, localService);
        } else {
            this.mDevicePolicyManager = this.mInjector.getDevicePolicyManager();
            this.mCorePackageUid = this.mInjector.getCorePackageUid();
        }
    }

    /* loaded from: classes3.dex */
    public class Injector {
        public final ActivityManager mActivityManager;
        public final File mBaseUserPath;
        public final ContainerDependencyWrapper mContainerDependencyWrapper;
        public final Context mContext;
        public final ArrayList mCorePackageUid;
        public final File mDataDir;
        public final DevicePolicyManager mDevicePolicyManager;
        public final boolean mIsTestingMode;
        public final Object mObject;
        public final PackageManager mPackageManager;
        public final PersonaManagerInternal mPersonaManagerInternal;
        public final PersonaPolicyManagerService mPersonaPolicyManagerService;
        public final PackageManagerService mPm;
        public final UserManager mUserManager;

        public Injector(Context context, PackageManagerService packageManagerService, Object obj, File file, File file2, ContainerDependencyWrapper containerDependencyWrapper, PersonaManagerInternal personaManagerInternal, DevicePolicyManager devicePolicyManager, ArrayList arrayList, ActivityManager activityManager, PackageManager packageManager, UserManager userManager, PersonaPolicyManagerService personaPolicyManagerService, IPackageManager iPackageManager, boolean z) {
            this.mContext = context;
            this.mPm = packageManagerService;
            this.mObject = obj;
            this.mDataDir = file;
            this.mBaseUserPath = file2;
            this.mPersonaManagerInternal = personaManagerInternal;
            this.mDevicePolicyManager = devicePolicyManager;
            this.mIsTestingMode = z;
            this.mCorePackageUid = arrayList;
            this.mActivityManager = activityManager;
            this.mPackageManager = packageManager;
            this.mUserManager = userManager;
            this.mContainerDependencyWrapper = containerDependencyWrapper;
            this.mPersonaPolicyManagerService = personaPolicyManagerService;
        }

        public long binderClearCallingIdentity() {
            return Binder.clearCallingIdentity();
        }

        public void binderRestoreCallingIdentity(long j) {
            Binder.restoreCallingIdentity(j);
        }

        public Context getContext() {
            return this.mContext;
        }

        public PackageManagerService getPackageManagerService() {
            return this.mPm;
        }

        public File getDataDir() {
            return this.mDataDir;
        }

        public File getBaseUserPath() {
            return this.mBaseUserPath;
        }

        public ContainerDependencyWrapper getContainerDependencyWrapper() {
            return ContainerDependencyWrapper.getInstance(this.mContext);
        }

        public PersonaManagerInternal getPersonaManagerInternal() {
            return this.mPersonaManagerInternal;
        }

        public DevicePolicyManager getDevicePolicyManager() {
            return this.mDevicePolicyManager;
        }

        public ArrayList getCorePackageUid() {
            return this.mCorePackageUid;
        }

        public final ApplicationPackageManager getApplicationPackageManager() {
            return this.mContext.getPackageManager();
        }

        public ActivityManager getActivityManager() {
            return (ActivityManager) this.mContext.getSystemService("activity");
        }

        public PackageManager getPackageManager() {
            return this.mContext.getPackageManager();
        }

        public UserManager getUserManager() {
            return (UserManager) this.mContext.getSystemService("user");
        }

        public PersonaPolicyManagerService getPersonaPolicyManagerService() {
            return PersonaPolicyManagerService.getInstance(this.mContext);
        }

        public IPackageManager getIPackageManager() {
            return ActivityThread.getPackageManager();
        }

        public boolean isTestingMode() {
            return this.mIsTestingMode;
        }
    }

    /* loaded from: classes3.dex */
    public final class LocalService extends PersonaManagerInternal {
        public LocalService() {
        }

        public boolean isKnoxId(int i) {
            return SemPersonaManager.isKnoxId(i);
        }

        public boolean shouldConfirmCredentials(int i) {
            UserInfo userInfo = PersonaManagerService.this.getUserManager().getUserInfo(i);
            if (!userInfo.isEnabled()) {
                return false;
            }
            boolean needSetupCredential = userInfo.needSetupCredential();
            boolean isPwdChangeRequested = ContainerDependencyWrapper.isPwdChangeRequested(i);
            boolean isBiometricsEnabledAfterFota = PersonaManagerService.this.isBiometricsEnabledAfterFota(i);
            if (needSetupCredential || isPwdChangeRequested || isBiometricsEnabledAfterFota) {
                Log.d("PersonaManagerService", "needSetupCredential : " + needSetupCredential + ", isPwdChangeRequested : " + isPwdChangeRequested + ", isBiometricsEnabledAfterFota : " + isBiometricsEnabledAfterFota);
                return true;
            }
            if (PersonaManagerService.this.mLockPatternUtils.isSeparateProfileChallengeEnabled(userInfo.id)) {
                boolean isDeviceLocked = PersonaManagerService.this.mKeyguardManager.isDeviceLocked(userInfo.id);
                boolean isDeviceSecure = PersonaManagerService.this.mKeyguardManager.isDeviceSecure(userInfo.id);
                Log.e("PersonaManagerService", "DeviceLocked : " + isDeviceLocked + ", DeviceSecure : " + isDeviceSecure);
                return isDeviceLocked && isDeviceSecure;
            }
            if (PersonaManagerService.this.getActivityManagerInternal().isUserRunning(i, 2)) {
                return true;
            }
            return PersonaManagerService.this.isOneLockOngoing();
        }

        public void doKeyguardTimeout() {
            Log.d("PersonaManagerService", "doKeyguardTimeout");
            PersonaManagerService.this.mPersonaHandler.sendMessage(PersonaManagerService.this.mPersonaHandler.obtainMessage(10, 0, 0));
        }

        public void onDeviceLockedChanged(int i) {
            boolean z;
            PersonaManagerService.this.checkCallerPermissionFor("onDeviceLockedChanged");
            if (!PersonaManagerService.DEVICE_SUPPORT_KNOX) {
                Log.e("PersonaManagerService", "Knox not supported - onDeviceLockedChanged");
                return;
            }
            synchronized (PersonaManagerService.this.mDeviceLockedForUser) {
                z = PersonaManagerService.this.mDeviceLockedForUser.get(i, true);
            }
            boolean isDeviceLocked = PersonaManagerService.this.mKeyguardManager.isDeviceLocked(i);
            if (isDeviceLocked != z) {
                Log.i("PersonaManagerService", "container lock state changed prevLock[" + z + "] lockState[" + isDeviceLocked + "]");
                if (isDeviceLocked) {
                    SemPersonaManager.sendContainerEvent(PersonaManagerService.this.mContext, i, 4);
                } else if (PersonaManagerService.this.getUserManager().isUserRunning(i)) {
                    SemPersonaManager.sendContainerEvent(PersonaManagerService.this.mContext, i, 5);
                } else {
                    Log.i("PersonaManagerService", "container is unlocked when user is not running. ignore");
                }
                synchronized (PersonaManagerService.this.mDeviceLockedForUser) {
                    PersonaManagerService.this.mDeviceLockedForUser.put(i, isDeviceLocked);
                }
            }
        }

        public ComponentName getAdminComponentNameFromEdm(int i) {
            PersonaManagerService personaManagerService = PersonaManagerService.this;
            ContainerDependencyWrapper containerDependencyWrapper = personaManagerService.containerDependencyWrapper;
            return ContainerDependencyWrapper.getAdminComponentNameFromEdm(personaManagerService.mContext, i);
        }

        public String getECName(int i) {
            ContainerDependencyWrapper containerDependencyWrapper = PersonaManagerService.this.containerDependencyWrapper;
            return ContainerDependencyWrapper.getECName(i);
        }
    }

    public final SemPersonaManager getPersonaManager() {
        if (this.personaManager == null) {
            this.personaManager = (SemPersonaManager) this.mContext.getSystemService("persona");
        }
        return this.personaManager;
    }

    public final UserManager getUserManager() {
        if (this.mUserManager == null) {
            this.mUserManager = (UserManager) this.mContext.getSystemService("user");
        }
        return this.mUserManager;
    }

    public boolean isFOTAUpgrade() {
        return this.mIsFOTAUpgrade;
    }

    public List getProfiles(int i, boolean z) {
        boolean z2 = false;
        try {
            if (getIPackageManager().checkUidSignatures(1000, Binder.getCallingUid()) == 0) {
                z2 = true;
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            ArrayList arrayList = new ArrayList();
            for (UserInfo userInfo : ((UserManager) this.mContext.getSystemService("user")).getProfiles(i)) {
                UserInfo userInfo2 = new UserInfo(userInfo);
                if (!userInfo.isDualAppProfile() && (z || userInfo.id != i)) {
                    if (!z2) {
                        userInfo2.name = null;
                        userInfo2.iconPath = null;
                    }
                    arrayList.add(userInfo2);
                }
            }
            return arrayList;
        } finally {
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        }
    }

    public boolean registerSystemPersonaObserver(ISystemPersonaObserver iSystemPersonaObserver) {
        checkCallerPermissionFor("registerSystemPersonaObserver");
        PersonaLegacyStateMonitor personaLegacyStateMonitor = this.mLegacyStateMonitor;
        if (personaLegacyStateMonitor != null) {
            return personaLegacyStateMonitor.register(iSystemPersonaObserver);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00a0, code lost:
    
        if (r2 == 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0095, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0093, code lost:
    
        if (r2 == 0) goto L57;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12, types: [int] */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readPersonaCacheLocked() {
        /*
            r10 = this;
            java.lang.String r0 = "readPersonaCacheLocked is called..."
            java.lang.String r1 = "PersonaManagerService"
            android.util.Log.d(r1, r0)
            android.util.AtomicFile r0 = new android.util.AtomicFile
            java.io.File r2 = r10.mPersonaCacheFile
            r0.<init>(r2)
            r2 = 0
            java.io.FileInputStream r3 = r0.openRead()     // Catch: java.lang.Throwable -> L8a org.xmlpull.v1.XmlPullParserException -> L8c java.io.IOException -> L99
            org.xmlpull.v1.XmlPullParser r4 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            r4.setInput(r3, r2)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
        L1b:
            int r2 = r4.next()     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            r5 = 1
            r6 = 2
            if (r2 == r6) goto L26
            if (r2 == r5) goto L26
            goto L1b
        L26:
            if (r2 == r6) goto L36
            r10.atomicFileProcessDamagedFile(r0)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            java.lang.String r2 = "Unable to read persona cache"
            android.util.Slog.e(r1, r2)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            if (r3 == 0) goto L35
            r3.close()     // Catch: java.io.IOException -> L35
        L35:
            return
        L36:
            int r2 = r4.next()     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            if (r2 == r5) goto L7b
            if (r2 != r6) goto L36
            java.lang.String r2 = r4.getName()     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            if (r2 == 0) goto L36
            java.lang.String r2 = r4.getName()     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            java.lang.String r7 = "cache"
            boolean r2 = r2.equals(r7)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            if (r2 == 0) goto L36
            r2 = 0
            java.lang.String r7 = r4.getAttributeName(r2)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            java.lang.String r2 = r4.getAttributeValue(r2)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            java.util.HashMap r8 = r10.mPersonaCacheMap     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            r8.put(r7, r2)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            r8.<init>()     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            java.lang.String r9 = "PersonaCache entry - "
            r8.append(r9)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            r8.append(r7)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            java.lang.String r7 = " - "
            r8.append(r7)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            r8.append(r2)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            java.lang.String r2 = r8.toString()     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> L81 org.xmlpull.v1.XmlPullParserException -> L84 java.io.IOException -> L87
            goto L36
        L7b:
            if (r3 == 0) goto La3
            r3.close()     // Catch: java.io.IOException -> La3
            goto La3
        L81:
            r10 = move-exception
            r2 = r3
            goto La4
        L84:
            r1 = move-exception
            r2 = r3
            goto L8d
        L87:
            r1 = move-exception
            r2 = r3
            goto L9a
        L8a:
            r10 = move-exception
            goto La4
        L8c:
            r1 = move-exception
        L8d:
            r10.atomicFileProcessDamagedFile(r0)     // Catch: java.lang.Throwable -> L8a
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L8a
            if (r2 == 0) goto La3
        L95:
            r2.close()     // Catch: java.io.IOException -> La3
            goto La3
        L99:
            r1 = move-exception
        L9a:
            r10.atomicFileProcessDamagedFile(r0)     // Catch: java.lang.Throwable -> L8a
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L8a
            if (r2 == 0) goto La3
            goto L95
        La3:
            return
        La4:
            if (r2 == 0) goto La9
            r2.close()     // Catch: java.io.IOException -> La9
        La9:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.readPersonaCacheLocked():void");
    }

    public void onNewUserCreated(UserInfo userInfo) {
        Log.i("PersonaManagerService", "onNewUserCreated: " + userInfo.id);
        if (userInfo.isManagedProfile()) {
            if (SemPersonaManager.isKnoxId(userInfo.id) && isMigrationStateSet(userInfo.id) == 0) {
                Settings.System.putIntForUser(this.mContext.getContentResolver(), "rcp_profile_migration_completed", 1, userInfo.id);
            }
            ((KnoxMUMContainerPolicyInternal) LocalServices.getService(KnoxMUMContainerPolicyInternal.class)).onNewUserCreated(userInfo.id);
        }
    }

    public final void writePersonaCacheLocked() {
        Log.i("PersonaManagerService", "writeUsersWithPersona() is called...");
        AtomicFile atomicFile = new AtomicFile(this.mPersonaCacheFile);
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream startWrite = atomicFile.startWrite();
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(startWrite);
                FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
                fastXmlSerializer.setOutput(bufferedOutputStream, "utf-8");
                fastXmlSerializer.startDocument(null, Boolean.TRUE);
                fastXmlSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                fastXmlSerializer.startTag(null, "personacache");
                for (Map.Entry entry : this.mPersonaCacheMap.entrySet()) {
                    String str = (String) entry.getKey();
                    String str2 = (String) entry.getValue();
                    if (!str.startsWith("volatile.")) {
                        fastXmlSerializer.startTag(null, "cache");
                        fastXmlSerializer.attribute(null, str, str2);
                        fastXmlSerializer.endTag(null, "cache");
                    }
                }
                fastXmlSerializer.endTag(null, "personacache");
                fastXmlSerializer.endDocument();
                atomicFile.finishWrite(startWrite);
            } catch (Exception unused) {
                fileOutputStream = startWrite;
                atomicFile.failWrite(fileOutputStream);
                Slog.e("PersonaManagerService", "writePersonaCacheLocked() Error writing persona cache list");
            }
        } catch (Exception unused2) {
        }
    }

    public final int installExistingPackageForPersona(int i, String str) {
        if (!ContainerDependencyWrapper.isPackageInstalled(this.mPm, str)) {
            return -1;
        }
        Log.d("PersonaManagerService", "packageAlreadyInstalled is true");
        Log.d("PersonaManagerService", " installExistingPackageForPersona " + str + " for  " + i);
        int installExistingPackageForPersona = ContainerDependencyWrapper.installExistingPackageForPersona(this.mPm, i, str);
        if (installExistingPackageForPersona == 1) {
            return 0;
        }
        Log.e("PersonaManagerService", " Failure to install package " + str + " package manager result code is " + installExistingPackageForPersona);
        return -1;
    }

    public final boolean isSecureFolderSupported() {
        if (!ContainerDependencyWrapper.isSecureFolderPkgAvailable()) {
            return false;
        }
        PackageManager packageManager = this.mContext.getPackageManager();
        if (packageManager == null) {
            Log.e("PersonaManagerService", "isSecureFolderSupported | package manager is null");
            return false;
        }
        boolean z = Integer.parseInt(ContainerDependencyWrapper.getSecProductFeature_SEC_PRODUCT_FEATURE_KNOX_CONFIG_SECURE_FOLDER_VERSION()) == 2;
        Log.d("PersonaManagerService", "isSecureFolderSupported | secure folder config supported  : " + z);
        if (z) {
            try {
                int applicationEnabledSetting = packageManager.getApplicationEnabledSetting("com.samsung.knox.securefolder");
                if (applicationEnabledSetting == 2 || applicationEnabledSetting == 3) {
                    Log.e("PersonaManagerService", "isSecureFolderSupported | secure folder is disabled or disabled_user : " + applicationEnabledSetting);
                    return false;
                }
            } catch (Exception e) {
                Log.d("PersonaManagerService", "isSecureFolderSupported | not found package");
                e.printStackTrace();
                return false;
            }
        }
        return z;
    }

    /* loaded from: classes3.dex */
    public class PackageDeleteObs extends IPackageDeleteObserver.Stub {
        public boolean finished;
        public boolean result;

        public PackageDeleteObs() {
        }

        public void packageDeleted(String str, int i) {
            synchronized (this) {
                boolean z = true;
                this.finished = true;
                if (i != 1) {
                    z = false;
                }
                this.result = z;
                Log.i("PersonaManagerService", "PackageDeleteObs::packageDeleted response for package -" + str + " is " + i);
                notifyAll();
            }
        }
    }

    public final boolean deletePkg(int i, String str) {
        if (!isPackageInstalledAsUser(i, str)) {
            Log.e("PersonaManagerService", "Ignore deletePkg request for personaId -" + i + " and pkg-" + str);
            return true;
        }
        Log.e("PersonaManagerService", "deletePkg request for personaId -" + i + " and pkg-" + str);
        PackageDeleteObs packageDeleteObs = new PackageDeleteObs();
        try {
            ContainerDependencyWrapper.deletePackageAsUserAndPersona(this.mPm, str, packageDeleteObs, i, 4);
            synchronized (packageDeleteObs) {
                while (!packageDeleteObs.finished) {
                    try {
                        Log.i("PersonaManagerService", "Waiting in while loop" + packageDeleteObs.finished);
                        packageDeleteObs.wait();
                    } catch (InterruptedException e) {
                        Log.w("PersonaManagerService", "deletePkg: InterruptedException = " + e);
                    }
                }
            }
        } catch (Exception e2) {
            Log.e("PersonaManagerService", "deletePkg exception -" + e2);
        }
        return packageDeleteObs.result;
    }

    public void systemReady() {
        checkCallerPermissionFor("systemReady");
        Log.i("PersonaManagerService", "systemReady");
        this.mDevicePolicyManager = (DevicePolicyManager) this.mContext.getSystemService("device_policy");
        this.mDeviceInteractive = ((PowerManager) this.mContext.getSystemService("power")).isInteractive();
        this.mPersonaServiceProxy = new PersonaServiceProxy(this.mContext);
        if (isQuickSwitchToSecureFolderSupported()) {
            Log.d("PersonaManagerService", "Quick Switch is supported");
            this.mSeamLessSwitchHandler = new SeamLessSwitchHandler(this.mContext, this.mPm, this);
        }
        this.mKeyguardManager = (KeyguardManager) this.mContext.getSystemService("keyguard");
        this.mLockPatternUtils = new LockPatternUtils(this.mContext);
        mSeparationConfiginCache = getAppSeparationConfig();
        cachedTime.put("separatedapps", Long.valueOf(System.currentTimeMillis()));
        this.mPersonaHandler.sendMessage(this.mPersonaHandler.obtainMessage(15));
        this.mContext.registerReceiver(new BootReceiver(), new IntentFilter("android.intent.action.BOOT_COMPLETED"));
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(DevicePolicyListener.ACTION_PROFILE_OWNER_ADDED);
        intentFilter.addAction(DevicePolicyListener.ACTION_PROFILE_OWNER_REMOVED);
        intentFilter.addAction("android.intent.action.MANAGED_PROFILE_AVAILABLE");
        intentFilter.addAction("android.intent.action.MANAGED_PROFILE_UNAVAILABLE");
        intentFilter.addAction("android.intent.action.USER_STOPPED");
        intentFilter.addAction("android.intent.action.USER_UNLOCKED");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction(DevicePolicyListener.ACTION_DEVICE_OWNER_CHANGED);
        this.mContext.registerReceiver(this.mUserReceiver, intentFilter);
        try {
            ActivityManagerNative.getDefault().registerUserSwitchObserver(this.mUserSwitchObserver, "PersonaManagerService");
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE");
        intentFilter2.addAction("com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE");
        this.mContext.registerReceiver(this.mSetupWizardCompleteReceiver, intentFilter2);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("com.samsung.android.intent.action.FINGERPRINT_ADDED");
        intentFilter3.addAction("com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED");
        intentFilter3.addAction("com.samsung.android.intent.action.FINGERPRINT_REMOVED");
        intentFilter3.addAction("com.samsung.android.intent.action.FINGERPRINT_RESET");
        this.mContext.registerReceiverAsUser(this.mFingerPrintReceiver, UserHandle.ALL, intentFilter3, null, null);
        List profiles = getProfiles(0, false);
        boolean z = false;
        for (int i = 0; i < profiles.size(); i++) {
            UserInfo userInfo = (UserInfo) profiles.get(i);
            if (this.mLocalService.isKnoxId(userInfo.id) && !SemPersonaManager.isSecureFolderId(userInfo.id)) {
                z = true;
            }
        }
        if (SemPersonaManager.isDoEnabled(0) || z) {
            registerPackageReceiver();
        }
        IntentFilter intentFilter4 = new IntentFilter();
        intentFilter4.addAction("android.intent.action.MANAGED_PROFILE_AVAILABLE");
        intentFilter4.addAction("android.intent.action.MANAGED_PROFILE_UNAVAILABLE");
        intentFilter4.addAction("android.intent.action.ACTION_SHUTDOWN");
        intentFilter4.addAction("android.intent.action.SCREEN_OFF");
        intentFilter4.addAction("android.intent.action.USER_INFO_CHANGED");
        intentFilter4.addAction("samsung.knox.intent.action.RCP_POLICY_CHANGED");
        intentFilter4.addAction("samsung.knox.intent.action.rcp.MOVEMENT");
        intentFilter4.addAction("samsung.knox.intent.action.CHANGE_LOCK_TYPE");
        intentFilter4.addAction("com.samsung.android.knox.profilepolicy.intent.action.update");
        this.mContext.registerReceiverAsUser(this.mAnalyticsReceiver, UserHandle.ALL, intentFilter4, null, null);
        registerContentObserver();
        clearHomeCrossProfileFilter("com.samsung.android.knox.containercore");
        if (this.mDevicePolicyManager.getDeviceOwnerComponentOnAnyUser() != null && getUserManager().getUserInfo(0).isSuperLocked()) {
            Log.e("PersonaManagerService", "Device is super locked - start lock screen");
        }
        try {
            this.mCorePackageUid.add(Integer.valueOf(this.mContext.getPackageManager().getPackageUidAsUser("com.samsung.knox.securefolder", 0)));
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e("PersonaManagerService", "Cannot get UID for securefolder");
        }
        try {
            this.mCorePackageUid.add(Integer.valueOf(this.mContext.getPackageManager().getPackageUidAsUser("com.samsung.android.knox.containercore", 0)));
        } catch (PackageManager.NameNotFoundException unused2) {
            Log.e("PersonaManagerService", "Cannot get UID for KnoxCore package");
        }
        try {
            this.mCorePackageUid.add(Integer.valueOf(this.mContext.getPackageManager().getPackageUidAsUser("com.samsung.android.appseparation", 0)));
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.e("PersonaManagerService", "Cannot get UID for App separation");
        }
    }

    public boolean isContainerCorePackageUID(int i) {
        return this.mCorePackageUid.contains(Integer.valueOf(i));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
    
        if ("com.samsung.knox.securefolder".equals(r5) != false) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isContainerService(int r5) {
        /*
            r4 = this;
            com.android.server.pm.PersonaManagerService$Injector r0 = r4.mInjector
            long r0 = r0.binderClearCallingIdentity()
            com.android.server.pm.PersonaManagerService$Injector r2 = r4.mInjector     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            android.app.ActivityManager r2 = r2.getActivityManager()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            java.lang.String r5 = r2.getPackageFromAppProcesses(r5)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            android.content.ComponentName r2 = com.samsung.android.knox.SemPersonaManager.getKnoxAdminReceiver()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            java.lang.String r2 = r2.getPackageName()     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            boolean r2 = r2.equals(r5)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            r3 = 1
            if (r2 == 0) goto L25
        L1f:
            com.android.server.pm.PersonaManagerService$Injector r4 = r4.mInjector
            r4.binderRestoreCallingIdentity(r0)
            return r3
        L25:
            java.lang.String r2 = "com.samsung.knox.securefolder"
            boolean r5 = r2.equals(r5)     // Catch: java.lang.Throwable -> L2e java.lang.Exception -> L30
            if (r5 == 0) goto L34
            goto L1f
        L2e:
            r5 = move-exception
            goto L3b
        L30:
            r5 = move-exception
            r5.printStackTrace()     // Catch: java.lang.Throwable -> L2e
        L34:
            com.android.server.pm.PersonaManagerService$Injector r4 = r4.mInjector
            r4.binderRestoreCallingIdentity(r0)
            r4 = 0
            return r4
        L3b:
            com.android.server.pm.PersonaManagerService$Injector r4 = r4.mInjector
            r4.binderRestoreCallingIdentity(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.isContainerService(int):boolean");
    }

    public final void registerPackageReceiver() {
        if (this.packageFilter == null) {
            IntentFilter intentFilter = new IntentFilter();
            this.packageFilter = intentFilter;
            intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
            this.packageFilter.addAction("android.intent.action.PACKAGE_REMOVED");
            this.packageFilter.addAction("android.intent.action.PACKAGE_CHANGED");
            this.packageFilter.addDataScheme("package");
            this.mContext.registerReceiverAsUser(this.mPackageReceiver, UserHandle.ALL, this.packageFilter, null, null);
        }
    }

    /* loaded from: classes3.dex */
    public class BootReceiver extends BroadcastReceiver {
        public BootReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.BOOT_COMPLETED")) {
                Log.d("PersonaManagerService", "ACTION_BOOT_COMPLETED");
                PersonaManagerService.this.mPersonaHandler.sendMessage(PersonaManagerService.this.mPersonaHandler.obtainMessage(13));
            }
        }
    }

    /* loaded from: classes3.dex */
    public class PersonaHandler extends Handler {
        public PersonaHandler(Looper looper) {
            super(looper);
            PersonaManagerService.this.checkCallerPermissionFor("PersonaHandler");
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i;
            PersonaManagerService.this.checkCallerPermissionFor("PersonaHandler");
            int i2 = message.what;
            if (i2 == 10) {
                PersonaManagerService.this.sendMessageAndLockTimeout(-1, message.arg1);
                return;
            }
            if (i2 == 30) {
                int i3 = message.arg1;
                String str = (String) message.obj;
                Log.d("PersonaManagerServiceHandler", " MSG_REMOVE_USER : " + i3);
                PersonaManagerService.this.logUserRemoval(i3, str);
                return;
            }
            if (i2 == 60) {
                message.getData();
                return;
            }
            if (i2 == 80) {
                int i4 = message.arg1;
                synchronized (new Object()) {
                    Log.i("PersonaManagerService", "setForegroundUser(newProfileId:" + i4 + ")");
                    SemPersonaManager.sendContainerEvent(PersonaManagerService.this.mContext, i4, 3);
                }
                return;
            }
            if (i2 == 90) {
                if (PersonaManagerService.this.mSeamLessSwitchHandler != null) {
                    PersonaManagerService.this.mSeamLessSwitchHandler.launchSeamLessForSF();
                    PersonaManagerService.this.mSeamLessSwitchHandler.insertSALog("2040", SeamLessSwitchHandler.packageExtraForSALog);
                    return;
                }
                return;
            }
            if (i2 == 110) {
                PersonaManagerService.this.mKnoxAnalyticsContainer.logDpmsKA((Bundle) message.obj);
                return;
            }
            if (i2 != 200) {
                switch (i2) {
                    case 13:
                        Log.d("PersonaManagerServiceHandler", " MSG_BOOT_COMPLETE_RECEIVED : soft start personas ");
                        KnoxForesightService.getInstance(PersonaManagerService.this.mContext);
                        try {
                            if (SemPersonaManager.isDoEnabled(0) && PersonaManagerService.this.getIPackageManager().getApplicationEnabledSetting("com.felicanetworks.mfm", 0) == 2) {
                                Log.d("PersonaManagerServiceHandler", " MSG_BOOT_COMPLETE_RECEIVED : DO is enabled. recorver disabled app.");
                                PersonaManagerService.this.getIPackageManager().setApplicationEnabledSetting("com.felicanetworks.mfm", 0, 0, 0, (String) null);
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        PersonaManagerService.this.handleFotaResetSecureFolderAdmin();
                        if (PersonaManagerService.this.containerNames.size() > 0) {
                            Iterator it = PersonaManagerService.this.getPersonaManager().getKnoxIds(true).iterator();
                            while (it.hasNext()) {
                                PersonaManagerService.this.setDpmScreenTimeoutFlag(((Integer) it.next()).intValue());
                            }
                        }
                        List profiles = PersonaManagerService.this.getProfiles(0, false);
                        for (int i5 = 0; i5 < profiles.size(); i5++) {
                            UserInfo userInfo = (UserInfo) profiles.get(i5);
                            try {
                                i = PersonaManagerService.this.getIPackageManager().getComponentEnabledSetting(new ComponentName("com.samsung.android.appseparation", "com.samsung.android.appseparation.view.launcher.LauncherActivity"), 0);
                            } catch (RemoteException e2) {
                                e2.printStackTrace();
                                i = 0;
                            }
                            if (userInfo.isUserTypeAppSeparation() && i != 1) {
                                PersonaManagerService.this.enforceAppSeparationDeletion();
                            }
                            try {
                                if (userInfo.isManagedProfile()) {
                                    PersonaManagerService.this.enableMyFilesLauncherActivity(userInfo.id);
                                }
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                        }
                        return;
                    case 14:
                        PersonaManagerService.this.sendMessageAndLockTimeout(-1, message.arg1);
                        return;
                    case 15:
                        Log.d("PersonaManagerService", "MSG_BOOT_LOAD_PERSONA_SYSTEMREADY is called...");
                        PersonaManagerService personaManagerService = PersonaManagerService.this;
                        personaManagerService.mLegacyStateMonitor = new PersonaLegacyStateMonitor(personaManagerService.mContext);
                        if (PersonaManagerService.this.getDeviceFirmwareVersion() != null && !PersonaManagerService.this.getDeviceFirmwareVersion().equals(PersonaManagerService.this.mPersonaCacheMap.get("fwversion"))) {
                            PersonaManagerService.this.handleFOTAInstallToPackages();
                            PersonaManagerService.this.removeDisallowedSFpackages();
                            PersonaManagerService.this.migrateKnoxLockTimeoutValueIfNeeded();
                            PersonaManagerService.this.migrateKnoxFingerprintPlusValueIfNeeded();
                            PersonaManagerService.this.migrateRCPSyncToProfilePolicyIfNeeded();
                            PersonaManagerService.this.migrateAppSeparationIfNeeded();
                        }
                        PersonaManagerService personaManagerService2 = PersonaManagerService.this;
                        personaManagerService2.requiredApps = personaManagerService2.getRequiredApps();
                        PersonaManagerService.workTabSupportLauncherUids = PersonaManagerService.this.getWorkTabSupportLauncherUids();
                        PersonaManagerService.this.recoverContainerInfo();
                        if (PersonaManagerService.this.mUserListFile != null && PersonaManagerService.this.mUserListFile.exists()) {
                            Log.i("PersonaManagerService:FOTA", "user list file delete status - " + PersonaManagerService.this.mUserListFile.delete());
                        }
                        File file = new File(PersonaManagerService.this.mUsersDir, "userwithpersonalist.xml.crt");
                        if (file.exists()) {
                            Log.i("PersonaManagerService:FOTA", "user list backup file delete status - " + file.delete());
                        }
                        synchronized (PersonaManagerService.this.mPersonaCacheMap) {
                            String str2 = (String) PersonaManagerService.this.mPersonaCacheMap.get("fwversion");
                            String deviceFirmwareVersion = PersonaManagerService.this.getDeviceFirmwareVersion();
                            if (str2 == null || (deviceFirmwareVersion != null && !deviceFirmwareVersion.equals(str2))) {
                                Log.d("PersonaManagerService", "Storing fw version - " + deviceFirmwareVersion + ", fota version - 10");
                                PersonaManagerService.this.mPersonaCacheMap.put("fwversion", PersonaManagerService.this.getDeviceFirmwareVersion());
                                PersonaManagerService.this.mPersonaCacheMap.put("fotaversion", "10");
                                PersonaManagerService.this.writePersonaCacheLocked();
                            }
                        }
                        PersonaManagerService.this.setPackageSettingInstalled("com.sec.knox.bluetooth", false, 0);
                        PersonaManagerService.this.setPackageSettingInstalled("com.samsung.android.bbc.fileprovider", false, 0);
                        return;
                    default:
                        switch (i2) {
                            case 70:
                                PersonaManagerService.this.mKnoxAnalyticsContainer.logEventAccountChanged(message.arg1, (String) message.obj, message.arg2);
                                return;
                            case 71:
                                Log.d("PersonaManagerService", "MSG_KNOX_APP_SEPARATION_LIST_UPDATE ");
                                PersonaManagerService.this.enforceAppSeparationAllowListUpdateInternal();
                                return;
                            case 72:
                                Log.d("PersonaManagerService", "MSG_KNOX_APP_SEPARATION_DELETION ");
                                PersonaManagerService.this.enforceAppSeparationDeletionInternal();
                                return;
                            case 73:
                                Log.d("PersonaManagerService", "MSG_KNOX_APP_SEPARATION_INSTALLATION - " + PersonaManagerService.this.processAppSeparationInstallationInternal((String) message.obj));
                                return;
                            case 74:
                                Log.d("PersonaManagerService", "MSG_KNOX_APP_SEPARATION_ACTIVATION");
                                String str3 = (String) message.obj;
                                PersonaManagerService personaManagerService3 = PersonaManagerService.this;
                                personaManagerService3.mImeSet = personaManagerService3.getIMEPackages();
                                ArrayList<String> arrayList = new ArrayList<>(PersonaManagerService.this.mImeSet);
                                arrayList.add(str3);
                                Iterator<String> it2 = arrayList.iterator();
                                while (it2.hasNext()) {
                                    Log.d("PersonaManagerService", "MSG_KNOX_APP_SEPARATION_ACTIVATION: packageName = " + it2.next());
                                }
                                Intent intent = new Intent("com.samsung.android.knox.action.PROVISION_KNOX_PROFILE");
                                intent.addFlags(268435456);
                                intent.setClassName("com.samsung.android.appseparation", "com.samsung.android.appseparation.receiver.ProvisionReceiver");
                                intent.putStringArrayListExtra("packageNames", arrayList);
                                PersonaManagerService.this.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
                                Bundle appSeparationConfig = PersonaManagerService.this.getAppSeparationConfig();
                                if (appSeparationConfig == null) {
                                    Log.d("PersonaManagerService", "handleMessage - MSG_KNOX_APP_SEPARATION_ACTIVATION : no app separation data found in db");
                                    return;
                                } else {
                                    PersonaManagerService.this.mKnoxAnalyticsContainer.logEventActivationForAppSep(arrayList, appSeparationConfig.getStringArrayList("APP_SEPARATION_APP_LIST"));
                                    return;
                                }
                            case 75:
                                Log.d("PersonaManagerService", "MSG_KNOX_APP_SEPARATION_CLEAN_UP ");
                                PersonaManagerService.this.enforceSeparatedAppsRemoveInternal();
                                return;
                            case 76:
                                Log.d("PersonaManagerService", "MSG_KNOX_APP_SEPARATION_COEXISTENCE_LIST_UPDATE ");
                                PersonaManagerService.this.enforceAppSeparationCoexistenceAllowListUpdateInternal();
                                return;
                            default:
                                Log.e("PersonaManagerService", "msg : ignore unknown message");
                                return;
                        }
                }
            }
            Log.d("PersonaManagerServiceHandler", "MSG_POST_NOTI_FOR_PWD_CHANGE_DO ");
            ContainerDependencyWrapper.handlePwdChangeNotificationForDeviceOwner(PersonaManagerService.this.mContext, message.arg1);
        }
    }

    public final void migrateRCPSyncToProfilePolicyIfNeeded() {
        Log.d("PersonaManagerService:FOTA", "migrateRCPSyncToProfilePolicyIfNeeded ");
        Iterator it = getProfiles(0, false).iterator();
        while (it.hasNext()) {
            int i = ((UserInfo) it.next()).id;
            if (!SemPersonaManager.isSecureFolderId(i) && SemPersonaManager.isKnoxId(i) && isDeviceSupportedForFotaMigrationTask() && isMigrationStateSet(i) == 0) {
                Log.d("PersonaManagerService:FOTA", "migrateRCPSyncToProfilePolicyIfNeeded: true");
                migrateRCPSyncToProfilePolicy(i);
            }
        }
    }

    public final void migrateAppSeparationIfNeeded() {
        PersonaHandler personaHandler;
        Log.d("PersonaManagerService:FOTA", "migrationAppSeparationIfNeeded ");
        if (getAppSeparationConfig() == null || getAppSeparationConfig() == null || isMigrationStateForAppSeparationSet() || !isDeviceSupportedForFotaMigrationTask() || (personaHandler = this.mPersonaHandler) == null) {
            return;
        }
        personaHandler.postDelayed(new Runnable() { // from class: com.android.server.pm.PersonaManagerService.1
            @Override // java.lang.Runnable
            public void run() {
                PersonaManagerService.this.appSeparationFotaMigrationTask();
            }
        }, 30000L);
        try {
            if (this.edm == null) {
                this.edm = EnterpriseDeviceManager.getInstance(this.mContext);
            }
            this.edm.getProfilePolicy().setRestriction("restriction_property_screencapture_save_to_owner", false);
        } catch (Exception unused) {
            Log.d("PersonaManagerService:FOTA", "error in setting Policy RESTRICTION_PROPERTY_SCREENCAPTURE_SAVE_TO_OWNER");
        }
    }

    public final boolean isMigrationStateForAppSeparationSet() {
        return SystemProperties.getBoolean("persist.sys.knox.appseparation_migration", false);
    }

    public final boolean isDeviceSupportedForFotaMigrationTask() {
        return SystemProperties.getInt("ro.product.first_api_level", 0) < 34;
    }

    public final int isMigrationStateSet(int i) {
        return Settings.System.getIntForUser(this.mContext.getContentResolver(), "rcp_profile_migration_completed", 0, i);
    }

    public final void migrateRCPSyncToProfilePolicy(int i) {
        try {
            try {
                try {
                    RCPPolicy rCPPolicy = EnterpriseKnoxManager.getInstance().getKnoxContainerManager(this.mContext, i).getRCPPolicy();
                    if (this.edm == null) {
                        this.edm = EnterpriseDeviceManager.getInstance(this.mContext);
                    }
                    if (rCPPolicy.isMoveFilesToContainerAllowed()) {
                        this.edm.getProfilePolicy().setRestriction("restriction_property_move_files_to_profile", true);
                    }
                    if (rCPPolicy.isMoveFilesToOwnerAllowed()) {
                        this.edm.getProfilePolicy().setRestriction("restriction_property_move_files_to_owner", true);
                    }
                } catch (NullPointerException unused) {
                    Log.d("PersonaManagerService:FOTA", "migrateRCPSyncToProfilePolicy : NullPointerException occurred");
                }
            } catch (SecurityException unused2) {
                Log.d("PersonaManagerService:FOTA", "migrateRCPSyncToProfilePolicy : SecurityException occurred");
            }
        } finally {
            Settings.System.putIntForUser(this.mContext.getContentResolver(), "rcp_profile_migration_completed", 1, i);
        }
    }

    public void appSeparationFotaMigrationTask() {
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                Log.d("PersonaManagerService:FOTA", "appSeparationFotaMigrationTask");
                Bundle appSeparationConfig = getAppSeparationConfig();
                boolean z = appSeparationConfig.getBoolean("APP_SEPARATION_OUTSIDE", false);
                ArrayList<String> arrayList = new ArrayList();
                HashSet hashSet = new HashSet(appSeparationConfig.getStringArrayList("APP_SEPARATION_APP_LIST"));
                this.mImeSet = getIMEPackages();
                for (PackageInfo packageInfo : this.mContext.getPackageManager().getInstalledPackagesAsUser(64, 0)) {
                    if (!isAppSeparationIndepdentApp(packageInfo)) {
                        Log.d("PersonaManagerService:FOTA", "appSeparationFotaMigrationTask packageName " + packageInfo.packageName);
                        if ((!hashSet.contains(packageInfo.packageName) && z) || (hashSet.contains(packageInfo.packageName) && !z)) {
                            arrayList.add(packageInfo.packageName);
                        }
                    }
                }
                for (String str : arrayList) {
                    if (!isKeyboardApp(str)) {
                        Log.d("PersonaManagerService:FOTA", "Enable Package: " + str);
                        enableAppInOwner(str);
                        Log.d("PersonaManagerService:FOTA", "Suspend Package:" + str);
                        suspendAppsInOwner(str, true);
                    }
                }
            } catch (Exception e) {
                Log.d("PersonaManagerService:FOTA", "Error in FotaMigration for AppSeparation");
                e.printStackTrace();
            }
        } finally {
            SystemProperties.set("persist.sys.knox.appseparation_migration", "true");
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        }
    }

    public void enableAppInOwner(String str) {
        Log.d("PersonaManagerService", "enableAppInOwner is called" + str);
        try {
            PackageInfo packageInfo = getIPackageManager().getPackageInfo(str, 527, 0);
            Log.d("PersonaManagerService", "enableAppInOwner Logic Started..." + packageInfo);
            if (packageInfo == null) {
                return;
            }
            HashSet hashSet = new HashSet();
            ArrayList arrayList = new ArrayList();
            ActivityInfo[] activityInfoArr = packageInfo.activities;
            if (activityInfoArr != null) {
                for (ActivityInfo activityInfo : activityInfoArr) {
                    if (!hashSet.contains(activityInfo.name)) {
                        hashSet.add(activityInfo.name);
                        arrayList.add(new PackageManager.ComponentEnabledSetting(new ComponentName(str, activityInfo.name), 0, 1));
                    }
                }
            }
            ServiceInfo[] serviceInfoArr = packageInfo.services;
            if (serviceInfoArr != null) {
                for (ServiceInfo serviceInfo : serviceInfoArr) {
                    if (!hashSet.contains(serviceInfo.name)) {
                        hashSet.add(serviceInfo.name);
                        arrayList.add(new PackageManager.ComponentEnabledSetting(new ComponentName(str, serviceInfo.name), 0, 1));
                    }
                }
            }
            ProviderInfo[] providerInfoArr = packageInfo.providers;
            if (providerInfoArr != null) {
                for (ProviderInfo providerInfo : providerInfoArr) {
                    if (!hashSet.contains(providerInfo.name)) {
                        hashSet.add(providerInfo.name);
                        arrayList.add(new PackageManager.ComponentEnabledSetting(new ComponentName(str, providerInfo.name), 0, 1));
                    }
                }
            }
            ActivityInfo[] activityInfoArr2 = packageInfo.receivers;
            if (activityInfoArr2 != null) {
                for (ActivityInfo activityInfo2 : activityInfoArr2) {
                    if (!hashSet.contains(activityInfo2.name)) {
                        hashSet.add(activityInfo2.name);
                        arrayList.add(new PackageManager.ComponentEnabledSetting(new ComponentName(str, activityInfo2.name), 0, 1));
                    }
                }
            }
            Log.d("PersonaManagerService", "printing enablepackageList");
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Log.d("PersonaManagerService", "Components:" + ((String) it.next()));
            }
            getIPackageManager().setComponentEnabledSettings(arrayList, 0, "persona");
            Log.d("PersonaManagerService", "enableAppInOwner Logic Ended...");
        } catch (Exception e) {
            Log.e("PersonaManagerService", "enableAppInOwner exception" + e);
        }
    }

    public final void sendMessageAndLockTimeout(int i, int i2) {
        int screenOffTimeoutLocked;
        for (UserInfo userInfo : getUserManager().getUsers()) {
            if (userInfo.isManagedProfile() && this.mKeyguardManager.isDeviceSecure(userInfo.id) && !this.mKeyguardManager.isDeviceLocked(userInfo.id) && this.mKeyguardManager.isDeviceSecure(userInfo.id) && !this.mKeyguardManager.isDeviceLocked(userInfo.id) && ((screenOffTimeoutLocked = getScreenOffTimeoutLocked(userInfo.id)) == 0 || screenOffTimeoutLocked == -2)) {
                Bundle bundle = new Bundle();
                bundle.putInt("android.intent.extra.user_handle", userInfo.id);
                long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
                ContainerProxy.sendEvent("knox.container.proxy.EVENT_LOCK_TIMEOUT", bundle);
                this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
            }
        }
    }

    public final void recoverContainerInfo() {
        try {
            String str = SystemProperties.get("persist.sys.knox.userinfo");
            if (getProfiles(0, false).size() > 0) {
                if (str == null || "".equals(str)) {
                    Log.d("PersonaManagerService", "UserInfo currupted, set again");
                    UserManagerService userManagerService = this.mPm.mUserManager;
                    if (userManagerService != null) {
                        ContainerDependencyWrapper.setContainerInfo(userManagerService);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final String getDeviceFirmwareVersion() {
        String str = this.mFirmwareVersion;
        if (str != null) {
            return str;
        }
        String str2 = SystemProperties.get("ro.build.PDA", "Unknown");
        Log.i("PersonaManagerService", "1. pdaVersion = " + str2);
        String trimHiddenVersion = trimHiddenVersion(str2);
        Log.i("PersonaManagerService", "2. pdaVersion = " + trimHiddenVersion);
        this.mFirmwareVersion = trimHiddenVersion;
        return trimHiddenVersion;
    }

    public final String trimHiddenVersion(String str) {
        Log.d("PersonaManagerService", "trimHiddenVersion(" + str + ")");
        return str.indexOf(95) != -1 ? str.substring(0, str.indexOf(95)) : str;
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (DumpUtils.checkDumpPermission(this.mContext, "PersonaManagerService", printWriter)) {
            String lastUserRemovalLog = getLastUserRemovalLog();
            printWriter.println("Last removed user:");
            printWriter.println(lastUserRemovalLog);
            printWriter.println("");
            printAllApprovedInstallers(printWriter);
            printWriter.println("");
            Bundle separationConfigfromCache = getSeparationConfigfromCache();
            int appSeparationId = getAppSeparationId();
            printWriter.println("App Separation:");
            printWriter.print("    STATE : ");
            if (appSeparationId == 0) {
                if (separationConfigfromCache == null) {
                    printWriter.println("NONE");
                    return;
                }
                printWriter.println("ACTIVATED");
            } else {
                printWriter.println("ENABLED");
            }
            if (separationConfigfromCache != null) {
                StringBuilder sb = new StringBuilder();
                StringBuilder sb2 = new StringBuilder();
                boolean z = separationConfigfromCache.getBoolean("APP_SEPARATION_OUTSIDE", false);
                ArrayList<String> stringArrayList = separationConfigfromCache.getStringArrayList("APP_SEPARATION_APP_LIST");
                ArrayList<String> stringArrayList2 = separationConfigfromCache.getStringArrayList("APP_SEPARATION_COEXISTANCE_LIST");
                if (stringArrayList != null) {
                    for (int i = 0; i < stringArrayList.size(); i++) {
                        sb.append("        ");
                        sb.append(i + " -> " + stringArrayList.get(i) + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                    }
                }
                if (stringArrayList2 != null) {
                    for (int i2 = 0; i2 < stringArrayList2.size(); i2++) {
                        sb2.append("        ");
                        sb2.append(i2 + " -> " + stringArrayList2.get(i2) + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                    }
                }
                printWriter.println("    Outside Option : " + z);
                printWriter.println("    AllowList Packages: ");
                printWriter.println(sb.toString());
                printWriter.println("    CoexistenceList Packages: ");
                printWriter.println(sb2.toString());
            }
        }
    }

    public void addAppPackageNameToAllowList(int i, List list) {
        try {
            if (getIPackageManager().checkUidSignatures(1000, Binder.getCallingUid()) != 0) {
                Log.d("PersonaManagerService", "addAppPackageNameToAllowList failed.");
                return;
            }
            long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
            try {
                ContainerDependencyWrapper.addAppPackageNameToAllowList(this.mContext, i, list);
            } finally {
                this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public final Set getLaunchableApps(int i) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        List queryIntentActivitiesAsUser = this.mContext.getPackageManager().queryIntentActivitiesAsUser(intent, 795136, i);
        ArraySet arraySet = new ArraySet();
        Iterator it = queryIntentActivitiesAsUser.iterator();
        while (it.hasNext()) {
            arraySet.add(((ResolveInfo) it.next()).activityInfo.packageName);
        }
        return arraySet;
    }

    public final List getRequiredApps() {
        List installedPackagesAsUser = this.mContext.getPackageManager().getInstalledPackagesAsUser(1048576, 0);
        ArrayList arrayList = new ArrayList();
        if (installedPackagesAsUser != null && !installedPackagesAsUser.isEmpty()) {
            Iterator it = installedPackagesAsUser.iterator();
            while (it.hasNext()) {
                arrayList.add(((PackageInfo) it.next()).packageName);
            }
        }
        arrayList.removeAll(getLaunchableApps(0));
        arrayList.removeAll(new ArraySet(Arrays.asList(this.mContext.getResources().getStringArray(17236466))));
        return arrayList;
    }

    public final List getSystemApps() {
        List installedPackagesAsUser = this.mContext.getPackageManager().getInstalledPackagesAsUser(1048576, 0);
        ArrayList arrayList = new ArrayList();
        if (installedPackagesAsUser != null && !installedPackagesAsUser.isEmpty()) {
            Iterator it = installedPackagesAsUser.iterator();
            while (it.hasNext()) {
                arrayList.add(((PackageInfo) it.next()).packageName);
            }
        }
        return arrayList;
    }

    public final void handleFOTAInstallToPackages() {
        for (UserInfo userInfo : UserManager.get(this.mContext).getProfiles(0)) {
            if (userInfo.isManagedProfile()) {
                try {
                    List requiredApps = getRequiredApps();
                    if (requiredApps != null && !requiredApps.isEmpty()) {
                        Iterator it = requiredApps.iterator();
                        while (it.hasNext()) {
                            installExistingPackageForPersona(userInfo.id, (String) it.next());
                        }
                    }
                } catch (Exception e) {
                    Log.i("PersonaManagerService", "Failed to install package for POP " + e);
                }
            }
            try {
                if (this.mLocalService.isKnoxId(userInfo.id)) {
                    for (String str : getSystemApps()) {
                        boolean z = getIPackageManager().getPackageInfo(str, 64L, userInfo.id) != null;
                        if (z && ContainerDependencyWrapper.isDisallowedAppForKnox(str, userInfo.id)) {
                            deletePkg(userInfo.id, str);
                        } else if (!z && ContainerDependencyWrapper.isRequiredAppForKnox(str, userInfo.id)) {
                            installExistingPackageForPersona(userInfo.id, str);
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void deactivateSecureFolderAdmin(Context context, ComponentName componentName) {
        ContainerDependencyWrapper.deactivateSecureFolderAdmin(context, componentName);
    }

    public static void resetSecureFolderAdmin(Context context) {
        ComponentName componentName = new ComponentName("com.samsung.knox.securefolder", "com.samsung.knox.securefolder.containeragent.detector.KnoxDeviceAdminReceiver");
        if (ContainerDependencyWrapper.isSecureFolderAdminActive(context, componentName)) {
            Log.d("PersonaManagerService:FOTA", "resetSecureFolderAdmin called");
            deactivateSecureFolderAdmin(context, componentName);
        }
    }

    public final void handleFotaResetSecureFolderAdmin() {
        Log.i("PersonaManagerService:FOTA", "handleFotaResetSecureFolderAdmin()");
        try {
            resetSecureFolderAdmin(this.mContext);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void removeDisallowedSFpackages() {
        Log.i("PersonaManagerService:FOTA", "removeDisallowedSFpackages() called.");
        UserManager userManager = getUserManager();
        if (userManager == null) {
            Log.d("PersonaManagerService:FOTA", "removeDisallowedSFpackages() - user manager is null");
            return;
        }
        for (UserInfo userInfo : userManager.getProfiles(0)) {
            if (userInfo.isEnabled() && userInfo.isSecureFolder()) {
                removeDisallowedSecureFolderPackages(userInfo);
            }
        }
    }

    public final void removeDisallowedSecureFolderPackages(UserInfo userInfo) {
        try {
            Log.i("PersonaManagerService:FOTA", "removeDisallowedSecureFolderPackages() user=" + userInfo);
            ArraySet<String> arraySet = new ArraySet(Arrays.asList(this.mContext.getResources().getStringArray(17236466)));
            ArraySet arraySet2 = new ArraySet(getSecureFolderPolicy("AllowPackage", userInfo.id));
            arraySet2.addAll((Collection) new ArraySet(getSecureFolderPolicy("DefaultPackage", userInfo.id)));
            arraySet.removeAll((Collection<?>) arraySet2);
            for (String str : arraySet) {
                if (DEBUG) {
                    Log.d("PersonaManagerService:FOTA", "dsallowedPackage: " + str);
                }
                deletePkg(userInfo.id, str);
            }
        } catch (Exception e) {
            Log.e("PersonaManagerService:FOTA", "exception occurred in removeDisallowedSecureFolderPackages()! " + e.getMessage());
        }
    }

    public final void migrateKnoxLockTimeoutValueIfNeeded() {
        Iterator it = getProfiles(0, false).iterator();
        while (it.hasNext()) {
            int i = ((UserInfo) it.next()).id;
            if (!SemPersonaManager.isSecureFolderId(i) && isMigrationNeededForKnoxLockTimeout(i)) {
                migrateKnoxLockTimeout(i);
            }
        }
    }

    public final boolean isMigrationNeededForKnoxLockTimeout(int i) {
        return isScreenOffTimeoutSystemValueExist(i) && !isScreenOffTimeoutSecureValueExist(i);
    }

    public final boolean isScreenOffTimeoutSystemValueExist(int i) {
        try {
            Settings.System.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", i);
            return true;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }

    public final boolean isScreenOffTimeoutSecureValueExist(int i) {
        try {
            Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", i);
            return true;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }

    public final void migrateKnoxLockTimeout(int i) {
        Log.d("PersonaManagerService:FOTA", "Migrate screen timeout settings value. knoxId = " + i);
        try {
            Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", Settings.System.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", 0, i), i);
        } catch (Exception e) {
            Log.d("PersonaManagerService:FOTA", "Migration failed! knoxId = " + i);
            e.printStackTrace();
        }
    }

    public final void migrateKnoxFingerprintPlusValueIfNeeded() {
        Iterator it = getProfiles(0, true).iterator();
        while (it.hasNext()) {
            int i = ((UserInfo) it.next()).id;
            if (i != 0 || SemPersonaManager.isDoEnabled(i)) {
                if (!SemPersonaManager.isSecureFolderId(i) && isMigrationNeededForKnoxFingerprintPlus(i)) {
                    migrateKnoxFingerprintPlus(i);
                }
            }
        }
    }

    public final boolean isMigrationNeededForKnoxFingerprintPlus(int i) {
        return isFingerprintPlusSystemValueExist(i) && !isFingerprintPlusSecureValueExist(i);
    }

    public final boolean isFingerprintPlusSystemValueExist(int i) {
        try {
            Settings.System.getIntForUser(this.mContext.getContentResolver(), "knox_finger_print_plus", i);
            return true;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }

    public final boolean isFingerprintPlusSecureValueExist(int i) {
        try {
            Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "knox_finger_print_plus", i);
            return true;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }

    public final void migrateKnoxFingerprintPlus(int i) {
        Log.d("PersonaManagerService:FOTA", "Migrate fingerprint plus settings value. knoxId = " + i);
        try {
            Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "knox_finger_print_plus", Settings.System.getIntForUser(this.mContext.getContentResolver(), "knox_finger_print_plus", 0, i), i);
        } catch (Exception e) {
            Log.d("PersonaManagerService:FOTA", "Migration failed! knoxId = " + i);
            e.printStackTrace();
        }
    }

    public void setFocusedLauncherId(int i) {
        checkCallerPermissionFor("setFocusedLauncherId");
        synchronized (this.mFocusLauncherLock) {
            this.mFocusedLauncherId = i;
            Log.d("PersonaManagerService", "setFocusedUser: Focus changed - current uesr id is " + this.mFocusedLauncherId);
        }
    }

    public int getFocusedLauncherId() {
        int i;
        synchronized (this.mFocusLauncherLock) {
            i = this.mFocusedLauncherId;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a A[Catch: all -> 0x001d, TRY_LEAVE, TryCatch #1 {all -> 0x001d, blocks: (B:17:0x0010, B:10:0x0032, B:12:0x003a, B:15:0x004a, B:20:0x0020), top: B:16:0x0010, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a A[Catch: all -> 0x001d, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x001d, blocks: (B:17:0x0010, B:10:0x0032, B:12:0x003a, B:15:0x004a, B:20:0x0020), top: B:16:0x0010, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.content.ComponentName getAdminComponentName(int r6) {
        /*
            r5 = this;
            com.android.server.pm.PersonaManagerService$Injector r0 = r5.mInjector
            long r0 = r0.binderClearCallingIdentity()
            boolean r2 = com.samsung.android.knox.SemPersonaManager.isKnoxId(r6)
            boolean r3 = com.android.server.knox.ContainerDependencyWrapper.isDualDarDO(r6)
            if (r2 != 0) goto L23
            android.os.UserManager r4 = r5.getUserManager()     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L1f
            android.content.pm.UserInfo r4 = r4.getUserInfo(r6)     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L1f
            boolean r4 = r4.isManagedProfile()     // Catch: java.lang.Throwable -> L1d java.lang.Exception -> L1f
            goto L24
        L1d:
            r6 = move-exception
            goto L51
        L1f:
            r4 = move-exception
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L1d
        L23:
            r4 = r2
        L24:
            if (r2 != 0) goto L32
            if (r4 != 0) goto L32
            if (r3 == 0) goto L2b
            goto L32
        L2b:
            com.android.server.pm.PersonaManagerService$Injector r5 = r5.mInjector
            r5.binderRestoreCallingIdentity(r0)
            r5 = 0
            return r5
        L32:
            com.android.server.pm.PersonaManagerService$Injector r2 = r5.mInjector     // Catch: java.lang.Throwable -> L1d
            boolean r2 = r2.isTestingMode()     // Catch: java.lang.Throwable -> L1d
            if (r2 == 0) goto L4a
            com.android.server.pm.PersonaManagerService$Injector r2 = r5.mInjector     // Catch: java.lang.Throwable -> L1d
            com.samsung.android.knox.PersonaManagerInternal r2 = r2.getPersonaManagerInternal()     // Catch: java.lang.Throwable -> L1d
            android.content.ComponentName r6 = r2.getAdminComponentNameFromEdm(r6)     // Catch: java.lang.Throwable -> L1d
        L44:
            com.android.server.pm.PersonaManagerService$Injector r5 = r5.mInjector
            r5.binderRestoreCallingIdentity(r0)
            return r6
        L4a:
            com.android.server.pm.PersonaManagerService$LocalService r2 = r5.mLocalService     // Catch: java.lang.Throwable -> L1d
            android.content.ComponentName r6 = r2.getAdminComponentNameFromEdm(r6)     // Catch: java.lang.Throwable -> L1d
            goto L44
        L51:
            com.android.server.pm.PersonaManagerService$Injector r5 = r5.mInjector
            r5.binderRestoreCallingIdentity(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.getAdminComponentName(int):android.content.ComponentName");
    }

    public static List getContainerCriticalApps() {
        return containerCriticalApps;
    }

    public boolean isFotaUpgradeVersionChanged() {
        return this.isFotaUpgradeVersionChanged;
    }

    public int getSecureFolderId() {
        return this.mSecureFolderId;
    }

    public String getContainerName(int i) {
        String containerNamePerTypes;
        if (i == -1) {
            return "Work profile";
        }
        if (i == 0) {
            return null;
        }
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        if (isSecureFolderIds(i)) {
            containerNamePerTypes = getSecureFolderName();
        } else {
            containerNamePerTypes = getContainerNamePerTypes(this.mInjector.getUserManager(), i);
        }
        this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        return containerNamePerTypes;
    }

    public final boolean isSecureFolderIds(int i) {
        return i == -1000 || SemPersonaManager.isSecureFolderId(i);
    }

    public final String getContainerNamePerTypes(UserManager userManager, int i) {
        String workProfileName;
        UserInfo userInfo = userManager.getUserInfo(i);
        if (userInfo == null) {
            return null;
        }
        if (getAppSeparationName(userInfo) != null) {
            workProfileName = getAppSeparationName(userInfo);
        } else if (getECName(i) != null) {
            workProfileName = getECName(i);
        } else if (getProfileName(i) != null) {
            workProfileName = getProfileName(i);
        } else {
            workProfileName = getWorkProfileName(this.mContext, i);
        }
        if (workProfileName == null) {
            workProfileName = userInfo.name;
        }
        Log.d("PersonaManagerService", "getContainerName return value for container id:" + i + " : " + workProfileName);
        return workProfileName;
    }

    public final String getAppSeparationName(UserInfo userInfo) {
        if (userInfo.isUserTypeAppSeparation()) {
            return TextUtils.isEmpty(userInfo.name) ? "Separated Apps" : userInfo.name;
        }
        return null;
    }

    public final String getWorkProfileName(final Context context, int i) {
        return this.mDevicePolicyManager.getResources().getString("Core.RESOLVER_WORK_TAB", new Supplier() { // from class: com.android.server.pm.PersonaManagerService$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                String string;
                string = context.getString(17043411);
                return string;
            }
        });
    }

    public String getWorkspaceName(UserInfo userInfo, boolean z) {
        if (userInfo != null) {
            Log.d("PersonaManagerService", "getWorkspaceName return value for container id:" + userInfo.id + " : Work Profile");
        }
        return "Work Profile";
    }

    public boolean isPossibleAddAppsToContainer(String str, int i) {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(str);
            List list = packageManager.queryIntentActivities(intent, (String) null, 0L, i).getList();
            if (list != null) {
                return list.size() == 0;
            }
            return true;
        } catch (RemoteException e) {
            e.printStackTrace();
            return true;
        }
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = !drawable.getBounds().isEmpty() ? drawable.getBounds().width() : drawable.getIntrinsicWidth();
        int height = !drawable.getBounds().isEmpty() ? drawable.getBounds().height() : drawable.getIntrinsicHeight();
        if (width <= 0) {
            width = 1;
        }
        if (height <= 0) {
            height = 1;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    public int getContainerOrder(int i) {
        int i2;
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        UserInfo userInfo = this.mInjector.getUserManager().getUserInfo(i);
        if (userInfo != null) {
            i2 = "KNOX".compareTo(userInfo.name) == 0 ? 1 : 2;
        } else {
            i2 = 0;
        }
        this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        return i2;
    }

    public final void registerContentObserver() {
        Log.d("PersonaManagerService", "registerContentObserver - 0");
        this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("knox_screen_off_timeout"), false, this.analyticsObserver, -1);
    }

    public final void atomicFileProcessDamagedFile(AtomicFile atomicFile) {
        if (atomicFile.getBaseFile().exists()) {
            atomicFile.getBaseFile().renameTo(new File(atomicFile.getBaseFile().getPath() + ".crt"));
        }
        atomicFile.getBaseFile().delete();
    }

    public boolean startActivityThroughPersona(Intent intent) {
        checkCallerPermissionFor("startActivityThroughPersona");
        Log.d("PersonaManagerService", "startActivityThroughPersona Intent =" + intent);
        Context context = this.mContext;
        if (context != null && intent != null) {
            try {
                context.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public boolean broadcastIntentThroughPersona(Intent intent, int i) {
        checkCallerPermissionFor("broadcastIntentThroughPersona");
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            Log.d("PersonaManagerService", "broadcastIntentThroughPersona Intent =" + intent);
            Context context = this.mContext;
            if (context != null && intent != null) {
                context.sendBroadcastAsUser(intent, new UserHandle(i));
                this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
                return true;
            }
            Log.d("PersonaManagerService", "broadcastIntentThroughPersona is canceled by mContext = " + this.mContext + " or intent = " + intent);
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
            return false;
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
            throw th;
        }
    }

    public void postActiveUserChange(int i, ComponentName componentName, boolean z, int i2, int i3, boolean z2, boolean z3, boolean z4) {
        this.mKnoxAnalyticsContainer.postActiveUserChange(i, componentName, z3);
    }

    public boolean appliedPasswordPolicy(int i) {
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        UserInfo userInfo = this.mInjector.getUserManager().getUserInfo(i);
        if (!checkNullParameter(userInfo) && userInfo.isEnabled()) {
            r4 = userInfo.needSetupCredential() || ContainerDependencyWrapper.isPwdChangeRequested(i) || isOneLockOngoing();
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        }
        return r4;
    }

    public final boolean isBiometricsEnabledAfterFota(int i) {
        return Settings.System.getIntForUser(this.mContext.getContentResolver(), "dedicated_biometrics", 0, i) > 0;
    }

    public final boolean isOneLockOngoing() {
        return Settings.System.getIntForUser(this.mContext.getContentResolver(), "enable_one_lock_ongoing", 0, 0) > 0;
    }

    public boolean isKnoxWindowExist(int i, int i2, int i3) {
        return ContainerDependencyWrapper.isKnoxWindowExist(i, i2, i3);
    }

    public void hideMultiWindows(int i) {
        ContainerDependencyWrapper.notifyWorkTaskStackChanged();
    }

    public final Intent createCrossUserServiceIntent(Intent intent, String str, int i) {
        ServiceInfo serviceInfo;
        ResolveInfo resolveService = AppGlobals.getPackageManager().resolveService(intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), 0L, i);
        if (resolveService == null || (serviceInfo = resolveService.serviceInfo) == null) {
            Log.e("PersonaManagerService", "Fail to look up the service: " + intent + " or user " + i + " is not running");
            return null;
        }
        if (!str.equals(serviceInfo.packageName)) {
            throw new SecurityException("Only allow to bind service in " + str);
        }
        ServiceInfo serviceInfo2 = resolveService.serviceInfo;
        if (serviceInfo2.exported && !"android.permission.BIND_DEVICE_ADMIN".equals(serviceInfo2.permission)) {
            throw new SecurityException("Service must be protected by BIND_DEVICE_ADMIN permission");
        }
        intent.setComponent(resolveService.serviceInfo.getComponentName());
        return intent;
    }

    public boolean bindCoreServiceAsUser(ComponentName componentName, IApplicationThread iApplicationThread, IBinder iBinder, Intent intent, IServiceConnection iServiceConnection, int i, int i2) {
        boolean z = false;
        try {
            if (getIPackageManager().checkUidSignatures(1000, Binder.getCallingUid()) != 0) {
                Log.d("PersonaManagerService", "bindCoreServiceAsUser() failed to bind.");
                return false;
            }
            String knoxCorePackageName = SemPersonaManager.getKnoxCorePackageName();
            long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
            try {
                if (createCrossUserServiceIntent(intent, knoxCorePackageName, i2) != null) {
                    if (ActivityManager.getService().bindService(iApplicationThread, iBinder, intent, intent.resolveTypeIfNeeded(this.mContext.getContentResolver()), iServiceConnection, i, this.mContext.getOpPackageName(), i2) != 0) {
                        z = true;
                    }
                }
                return z;
            } catch (RemoteException unused) {
                return false;
            } finally {
                this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getFotaVersion() {
        int parseInt;
        Log.d("PersonaManagerService", "getFotaVersion is called...");
        synchronized (this.mPersonaCacheLock) {
            String str = (String) this.mPersonaCacheMap.get("fotaversion");
            parseInt = (str == null || str.length() <= 0) ? -1 : Integer.parseInt(str);
        }
        Log.d("PersonaManagerService", "version - " + parseInt);
        return parseInt;
    }

    public String getPersonaCacheValue(String str) {
        String str2;
        checkCallerPermissionFor("getPersonaCacheValue");
        Log.d("PersonaManagerService", "getPersonaCacheValue is called for key " + str);
        if (str == null || str.length() <= 0 || !this.mPersonaCacheMap.containsKey(str)) {
            return null;
        }
        synchronized (this.mPersonaCacheLock) {
            str2 = (String) this.mPersonaCacheMap.get(str);
        }
        return str2;
    }

    public boolean updatePersonaCache(String str, String str2) {
        checkCallerPermissionFor("updatePersonaCache");
        boolean z = false;
        if (str != null && str.length() > 0) {
            synchronized (this.mPersonaCacheLock) {
                if (!"fwversion".equals(str) && !"fotaversion".equals(str)) {
                    if (this.mPersonaCacheMap.containsKey(str) && str2 == null) {
                        Log.d("PersonaManagerService", "Remove cache entry request");
                        this.mPersonaCacheMap.remove(str);
                        z = true;
                    }
                    if (!this.mPersonaCacheMap.containsKey(str) && str2 != null) {
                        Log.d("PersonaManagerService", "Add cache entry request");
                        this.mPersonaCacheMap.put(str, str2);
                        z = true;
                    }
                    if (this.mPersonaCacheMap.containsKey(str) && str2 != null) {
                        Log.d("PersonaManagerService", "update cache entry request");
                        this.mPersonaCacheMap.remove(str);
                        this.mPersonaCacheMap.put(str, str2);
                        z = true;
                    }
                    if (z) {
                        writePersonaCacheLocked();
                    }
                }
                return false;
            }
        }
        Log.d("PersonaManagerService", "updatePersonaCache status - " + z);
        return z;
    }

    public Bundle getSeparationConfigfromCache() {
        return mSeparationConfiginCache;
    }

    public boolean setPackageSettingInstalled(String str, boolean z, int i) {
        checkCallerPermissionFor("setPackageSettingInstalled");
        return ContainerDependencyWrapper.setPackageSettingInstalled(this.mPm, str, z, i);
    }

    public void refreshLockTimer(int i) {
        checkCallerPermissionFor("refreshLockTimer");
        Log.d("PersonaManagerService", "RefreshLockTimer for user : " + i);
        ContainerDependencyWrapper.setMaximumScreenOffTimeoutFromKnox(getPowerManagerInternal(), i, (long) getScreenOffTimeoutLocked(i));
    }

    public boolean isExternalStorageEnabled(int i) {
        return ContainerDependencyWrapper.isExternalStorageEnabled(i);
    }

    public void revokeSUWAgreements(Context context) {
        ContainerDependencyWrapper.revokeSUWAgreements(getUserManager(), this.mContext);
    }

    public final void setDpmScreenTimeoutFlag(int i) {
        int intForUser;
        DevicePolicyManager devicePolicyManager;
        ComponentName adminComponentName = getAdminComponentName(i);
        long maximumTimeToLock = (adminComponentName == null || (devicePolicyManager = this.mDevicePolicyManager) == null) ? 0L : devicePolicyManager.getMaximumTimeToLock(adminComponentName, i);
        int i2 = maximumTimeToLock > 2147483647L ? Integer.MAX_VALUE : (int) maximumTimeToLock;
        boolean z = i2 > 0 && i2 < Integer.MAX_VALUE;
        if (SemPersonaManager.isSecureFolderId(i)) {
            intForUser = Settings.System.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", -1, i);
        } else {
            intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", -1, i);
        }
        long j = intForUser;
        if (!z || j <= i2) {
            return;
        }
        this.mKALockscreenTimeoutAdminFlag = true;
        Log.d("PersonaManagerService:KnoxAnalytics", "setting mKALockscreenTimeoutAdminFlag true (at boot)");
    }

    public void notifyPersona(long j, int i) {
        int intForUser;
        if (SemPersonaManager.isSecureFolderId(i)) {
            intForUser = Settings.System.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", -1, i);
        } else {
            intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", -1, i);
        }
        long j2 = intForUser;
        boolean z = j > 0;
        if ((!z || j2 <= j) && ((!z || j2 > 0) && ((!z || j2 <= 0 || j2 > j || !this.mKALockscreenTimeoutAdminFlag) && (z || !this.mKALockscreenTimeoutAdminFlag)))) {
            return;
        }
        this.mKnoxAnalyticsContainer.requestSendSnapshotLog(i);
        if (z && j2 > j) {
            this.mKALockscreenTimeoutAdminFlag = true;
        } else {
            this.mKALockscreenTimeoutAdminFlag = false;
        }
    }

    public void knoxAnalyticsAccountsChanged(int i, String str, boolean z) {
        PersonaHandler personaHandler = this.mPersonaHandler;
        if (personaHandler == null) {
            return;
        }
        Message obtainMessage = personaHandler.obtainMessage(70);
        obtainMessage.arg1 = i;
        obtainMessage.arg2 = z ? 1 : 0;
        obtainMessage.obj = str;
        this.mPersonaHandler.sendMessage(obtainMessage);
    }

    public Bundle sendProxyMessage(String str, String str2, Bundle bundle) {
        checkCallerPermissionFor("sendProxyMessage");
        StringBuilder sb = new StringBuilder();
        sb.append("sendProxyMessage() name:");
        sb.append(str2);
        sb.append(" bundle:");
        sb.append(bundle == null ? "null" : bundle.toString());
        Log.e("PersonaManagerService", sb.toString());
        return this.mPersonaServiceProxy.sendProxyMessage(str, str2, bundle);
    }

    public final UserManagerInternal getUserManagerInternal() {
        if (this.mUserManagerInternal == null) {
            this.mUserManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
        }
        return this.mUserManagerInternal;
    }

    public final PowerManagerInternal getPowerManagerInternal() {
        if (this.mPowerManagerInternal == null) {
            this.mPowerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
        }
        return this.mPowerManagerInternal;
    }

    public final ActivityManagerInternal getActivityManagerInternal() {
        if (this.mActivityManagerInternal == null) {
            this.mActivityManagerInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        }
        return this.mActivityManagerInternal;
    }

    public boolean setAttributes(int i, int i2) {
        checkCallerPermissionFor("setAttributes");
        if (getUserManager().getUserInfo(i) == null) {
            Log.e("PersonaManagerService", "user not found " + i);
            return false;
        }
        return ContainerDependencyWrapper.setAttributes(getUserManagerInternal(), i, i2);
    }

    public int getAttributes(int i) {
        checkCallerPermissionFor("getAttributes");
        return ContainerDependencyWrapper.getAttributes(getUserManagerInternal(), i);
    }

    public boolean clearAttributes(int i, int i2) {
        checkCallerPermissionFor("clearAttributes");
        if (getUserManager().getUserInfo(i) == null) {
            Log.e("PersonaManagerService", "user not found " + i);
            return false;
        }
        return ContainerDependencyWrapper.clearAttributes(getUserManagerInternal(), i, i2);
    }

    public String getCustomResource(int i, String str) {
        return ContainerDependencyWrapper.getCustomResource(i, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0023 A[Catch: all -> 0x001e, TRY_LEAVE, TryCatch #0 {all -> 0x001e, blocks: (B:16:0x000a, B:18:0x0012, B:5:0x0023, B:9:0x002d, B:14:0x003f), top: B:15:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d A[Catch: all -> 0x001e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x001e, blocks: (B:16:0x000a, B:18:0x0012, B:5:0x0023, B:9:0x002d, B:14:0x003f), top: B:15:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public byte[] getKnoxIcon(java.lang.String r6, java.lang.String r7, int r8) {
        /*
            r5 = this;
            com.android.server.pm.PersonaManagerService$Injector r0 = r5.mInjector
            long r0 = r0.binderClearCallingIdentity()
            r2 = 2
            r3 = 1
            if (r7 == 0) goto L20
            java.lang.String r4 = "com.android.internal.app.ForwardIntentToManagedProfile"
            boolean r4 = r7.contains(r4)     // Catch: java.lang.Throwable -> L1e
            if (r4 == 0) goto L20
            java.lang.String r4 = "com.android.internal.app.ForwardIntentToManagedProfile4"
            boolean r4 = r4.equals(r7)     // Catch: java.lang.Throwable -> L1e
            if (r4 == 0) goto L1c
            r4 = r2
            goto L21
        L1c:
            r4 = r3
            goto L21
        L1e:
            r6 = move-exception
            goto L44
        L20:
            r4 = -1
        L21:
            if (r4 != r3) goto L2d
            byte[] r6 = r5.getKnoxSwitcherIcon(r6, r7, r8)     // Catch: java.lang.Throwable -> L1e
        L27:
            com.android.server.pm.PersonaManagerService$Injector r5 = r5.mInjector
            r5.binderRestoreCallingIdentity(r0)
            return r6
        L2d:
            java.lang.String r7 = "com.samsung.knox.securefolder"
            boolean r6 = r7.equals(r6)     // Catch: java.lang.Throwable -> L1e
            if (r6 != 0) goto L3f
            if (r4 != r2) goto L38
            goto L3f
        L38:
            com.android.server.pm.PersonaManagerService$Injector r5 = r5.mInjector
            r5.binderRestoreCallingIdentity(r0)
            r5 = 0
            return r5
        L3f:
            byte[] r6 = r5.getSecureFolderIcon()     // Catch: java.lang.Throwable -> L1e
            goto L27
        L44:
            com.android.server.pm.PersonaManagerService$Injector r5 = r5.mInjector
            r5.binderRestoreCallingIdentity(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.getKnoxIcon(java.lang.String, java.lang.String, int):byte[]");
    }

    public final byte[] getKnoxSwitcherIcon(String str, String str2, int i) {
        UserInfo userInfo;
        byte[] bArr;
        UserManager userManager = UserManager.get(this.mContext);
        if (i != 0 && i != -10000) {
            userInfo = userManager.getUserInfo(i);
            bArr = SemPersonaManager.getCustomResource(i, "custom-container-icon");
            if (bArr == null && userInfo != null) {
                Settings.System.getIntForUser(this.mContext.getContentResolver(), "knox_icon_upgraded", 0, userInfo.id);
            }
        } else {
            Iterator it = userManager.getUsers().iterator();
            while (true) {
                if (!it.hasNext()) {
                    userInfo = null;
                    bArr = null;
                    break;
                }
                userInfo = (UserInfo) it.next();
                if ((userInfo.flags & 0) == 0) {
                    bArr = SemPersonaManager.getCustomResource(userInfo.id, "custom-container-icon");
                    break;
                }
            }
        }
        return (userInfo == null || !userInfo.isQuietModeEnabled() || bArr == null) ? bArr : ContainerDependencyWrapper.convertToGreyIcon(bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f A[Catch: Exception -> 0x0050, TRY_LEAVE, TryCatch #0 {Exception -> 0x0050, blocks: (B:2:0x0000, B:5:0x0012, B:8:0x0019, B:9:0x0039, B:11:0x003f, B:16:0x0024), top: B:1:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final byte[] getSecureFolderIcon() {
        /*
            r3 = this;
            android.content.Context r0 = r3.mContext     // Catch: java.lang.Exception -> L50
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Exception -> L50
            java.lang.String r1 = "secure_folder_image_name"
            r2 = 0
            java.lang.String r0 = android.provider.Settings.Secure.getStringForUser(r0, r1, r2)     // Catch: java.lang.Exception -> L50
            java.lang.String r1 = "com.samsung.knox.securefolder"
            if (r0 == 0) goto L24
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Exception -> L50
            if (r0 == 0) goto L19
            goto L24
        L19:
            android.content.Context r3 = r3.mContext     // Catch: java.lang.Exception -> L50
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: java.lang.Exception -> L50
            android.graphics.drawable.Drawable r3 = r3.getApplicationIcon(r1)     // Catch: java.lang.Exception -> L50
            goto L39
        L24:
            android.app.ActivityThread r3 = android.app.ActivityThread.currentActivityThread()     // Catch: java.lang.Exception -> L50
            android.app.ContextImpl r3 = r3.getSystemUiContext()     // Catch: java.lang.Exception -> L50
            r3.getPackageManager()     // Catch: java.lang.Exception -> L50
            android.content.pm.PackageManager r3 = r3.getPackageManager()     // Catch: java.lang.Exception -> L50
            r0 = 32
            android.graphics.drawable.Drawable r3 = r3.semGetApplicationIconForIconTray(r1, r0)     // Catch: java.lang.Exception -> L50
        L39:
            android.graphics.Bitmap r3 = drawableToBitmap(r3)     // Catch: java.lang.Exception -> L50
            if (r3 == 0) goto L6b
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Exception -> L50
            r0.<init>()     // Catch: java.lang.Exception -> L50
            android.graphics.Bitmap$CompressFormat r1 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Exception -> L50
            r2 = 100
            r3.compress(r1, r2, r0)     // Catch: java.lang.Exception -> L50
            byte[] r3 = r0.toByteArray()     // Catch: java.lang.Exception -> L50
            return r3
        L50:
            r3 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Exception in getSecureFolderIcon : "
            r0.append(r1)
            java.lang.String r3 = r3.getMessage()
            r0.append(r3)
            java.lang.String r3 = r0.toString()
            java.lang.String r0 = "PersonaManagerService"
            android.util.Log.e(r0, r3)
        L6b:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.getSecureFolderIcon():byte[]");
    }

    public boolean getPersonaUserHasBeenShutdownBefore(int i) {
        boolean z;
        synchronized (this.mUserHasBeenShutdownBefore) {
            z = this.mUserHasBeenShutdownBefore.get(i, false);
        }
        return z;
    }

    public final synchronized ITrustManager getTrustManager() {
        if (this.mTrustManager == null) {
            this.mTrustManager = ITrustManager.Stub.asInterface(ServiceManager.getService("trust"));
        }
        return this.mTrustManager;
    }

    public String getECName(int i) {
        if (this.mInjector.isTestingMode()) {
            return this.mInjector.getPersonaManagerInternal().getECName(i);
        }
        return this.mLocalService.getECName(i);
    }

    public String getProfileName(int i) {
        String str;
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            str = this.mInjector.getPersonaPolicyManagerService().getCustomNamePersona(i);
        } catch (Exception unused) {
            Log.e("PersonaManagerService:FOTA", "getProfileName unable to getCustomName");
            str = null;
        }
        this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        Log.d("PersonaManagerService", "getProfileName return value for container id:" + i + " : " + str);
        return str;
    }

    public String getPersonalModeName(int i) {
        String str;
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            str = this.mPersonaPolicyManagerService.getCustomNamePersonalMode(i);
        } catch (Exception unused) {
            Log.e("PersonaManagerService:FOTA", "getPersonalModeName unable to getCustomName");
            str = null;
        }
        if (DEBUG) {
            Log.d("PersonaManagerService:FOTA", "getPersonalModeName name - " + str);
        }
        this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        return str;
    }

    public boolean setProfileName(int i, String str) {
        try {
            this.mPersonaPolicyManagerService.setCustomNamePersona(i, str);
            return false;
        } catch (Exception unused) {
            Log.e("PersonaManagerService:FOTA", "setProfileName unable to setProfileName");
            return false;
        }
    }

    public boolean setPersonalModeName(int i, String str) {
        try {
            this.mPersonaPolicyManagerService.setCustomNamePersonalMode(i, str);
        } catch (Exception unused) {
            Log.e("PersonaManagerService:FOTA", "setPersonalModeName unable to set PersonalModeName");
        }
        if (DEBUG) {
            Log.d("PersonaManagerService:FOTA", "setPersonalModeName name - " + str + " false");
        }
        return false;
    }

    public final boolean clearHomeCrossProfileFilter(String str) {
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                AppGlobals.getPackageManager().clearCrossProfileIntentFilters(0, str);
                this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
                return true;
            } catch (RemoteException e) {
                Log.e("PersonaManagerService:FOTA", "clearCrossProfileIntentFilters Exception: " + e);
                this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
                return false;
            }
        } catch (Throwable th) {
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
            throw th;
        }
    }

    public void sendRequestKeyStatus(int i) {
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            Intent intent = new Intent("com.sec.knox.containeragent.klms.licensekey.check");
            intent.putExtra("container_id", i);
            intent.setPackage("com.samsung.klmsagent");
            this.mContext.sendBroadcast(intent);
        } finally {
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        }
    }

    public final String getAppNameByPID(int i) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.mContext.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null || runningAppProcesses.isEmpty()) {
            return "";
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == i) {
                return runningAppProcessInfo.processName;
            }
        }
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0278 A[SYNTHETIC] */
    /* renamed from: getMoveToKnoxMenuList, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.ArrayList m9610getMoveToKnoxMenuList(int r24) {
        /*
            Method dump skipped, instructions count: 761
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.m9610getMoveToKnoxMenuList(int):java.util.ArrayList");
    }

    public int getFocusedUser() {
        int i;
        KeyguardManager keyguardManager = this.mKeyguardManager;
        if (keyguardManager != null && keyguardManager.isKeyguardLocked()) {
            long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
            int i2 = this.mFocusedUserId;
            try {
                try {
                    i2 = ActivityManager.getCurrentUser();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return i2;
            } finally {
                this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
            }
        }
        synchronized (this.mFocusLock) {
            i = this.mFocusedUserId;
        }
        return i;
    }

    public void setFocusedUser(int i) {
        synchronized (this.mFocusLock) {
            if (DEBUG) {
                Log.d("PersonaManagerService", "Current focused persona service handled id set to : " + this.mFocusedUserId);
            }
            this.mFocusedUserId = i;
        }
    }

    public int getScreenOffTimeoutLocked(int i) {
        int timeoutFromDeviceSettings = getTimeoutFromDeviceSettings(i);
        int dpmLimitTimeout = getDpmLimitTimeout(i, getAdminComponentName(i));
        if (isDpmEnforced(dpmLimitTimeout)) {
            timeoutFromDeviceSettings = timeoutFromDeviceSettings > 0 ? Math.min(dpmLimitTimeout, timeoutFromDeviceSettings) : dpmLimitTimeout;
        } else if (!isTimeOutComputable(timeoutFromDeviceSettings)) {
            return timeoutFromDeviceSettings;
        }
        if (isTimeOutComputable(timeoutFromDeviceSettings)) {
            timeoutFromDeviceSettings = Math.max(timeoutFromDeviceSettings, 5000);
        }
        Log.d("PersonaManagerService", "getScreenOffTimeoutLocked final: " + timeoutFromDeviceSettings);
        return timeoutFromDeviceSettings;
    }

    public final int getDpmLimitTimeout(int i, ComponentName componentName) {
        long maximumTimeToLock = componentName != null ? this.mDevicePolicyManager.getMaximumTimeToLock(componentName, i) : 0L;
        if (maximumTimeToLock > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) maximumTimeToLock;
    }

    public final int getTimeoutFromDeviceSettings(int i) {
        if (SemPersonaManager.isSecureFolderId(i)) {
            return Settings.System.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", -1, i);
        }
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "knox_screen_off_timeout", -1, i);
    }

    public boolean isKnoxProfileActivePasswordSufficientForParent(int i) {
        checkCallerPermissionFor("isKnoxProfileActivePasswordSufficientForParent");
        return ContainerDependencyWrapper.isKnoxProfileActivePasswordSufficientForParent(getUserManager(), i);
    }

    public boolean isPasswordSufficientAfterKnoxProfileUnification(int i) {
        checkCallerPermissionFor("isPasswordSufficientAfterKnoxProfileUnification");
        return ContainerDependencyWrapper.isPasswordSufficientAfterKnoxProfileUnification(i);
    }

    public Bundle getDualDARProfile() {
        return ContainerDependencyWrapper.getDualDARProfile(this.mContext);
    }

    public int setDualDARProfile(Bundle bundle) {
        return ContainerDependencyWrapper.setDualDARProfile(this.mContext, bundle);
    }

    public void unsetTwoFactorValueIfNeeded(int i) {
        ContainerDependencyWrapper.unsetTwoFactorValueIfNeeded(this.mContext, this.mLockPatternUtils, i);
    }

    public void updateProfileActivityTimeFromKnox(int i, long j) {
        checkCallerPermissionFor("updateProfileActivityTimeFromKnox");
        ContainerDependencyWrapper.updateProfileActivityTimeFromKnox(getPowerManagerInternal(), i, j);
    }

    public String getRCPDataPolicy(String str, String str2) {
        return this.mPersonaPolicyManagerService.getRCPDataPolicy(str, str2);
    }

    public String getRCPDataPolicyForUser(int i, String str, String str2) {
        return this.mPersonaPolicyManagerService.getRCPDataPolicyForUser(i, str, str2);
    }

    public boolean setRCPDataPolicy(String str, String str2, String str3) {
        return this.mPersonaPolicyManagerService.setRCPDataPolicy(str, str2, str3);
    }

    public List getSecureFolderPolicy(String str, int i) {
        return this.mPersonaPolicyManagerService.getSecureFolderPolicy(str, i);
    }

    public boolean setSecureFolderPolicy(String str, List list, int i) {
        try {
            if (getIPackageManager().checkUidSignatures(1000, Binder.getCallingUid()) != 0) {
                Log.d("PersonaManagerService", "setSecureFolderPolicy failed.");
                return false;
            }
            return this.mPersonaPolicyManagerService.setSecureFolderPolicy(str, list, i);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isShareClipboardDataToOwnerAllowed(int i) {
        if (getUserManager().getUserInfo(i).isUserTypeAppSeparation()) {
            return false;
        }
        try {
            KnoxContainerManager knoxContainerManager = EnterpriseKnoxManager.getInstance().getKnoxContainerManager(this.mContext, i);
            if (knoxContainerManager != null) {
                return knoxContainerManager.getRCPPolicy().isShareClipboardDataToOwnerAllowed();
            }
            return false;
        } catch (NullPointerException unused) {
            Log.d("PersonaManagerService", "allowShareClipboardDataToOwner : NullPointerException occurred");
            return false;
        } catch (SecurityException unused2) {
            Log.d("PersonaManagerService", "allowShareClipboardDataToOwner : SecurityException occurred");
            return false;
        }
    }

    public boolean isMoveFilesToContainerAllowed(int i) {
        try {
            if (this.edm == null) {
                this.edm = EnterpriseDeviceManager.getInstance(this.mContext);
            }
            return this.edm.getProfilePolicy().getRestriction("restriction_property_move_files_to_profile");
        } catch (NullPointerException unused) {
            Log.d("PersonaManagerService", "isMoveFilesToContainerAllowed : NullPointerException occurred");
            return false;
        } catch (SecurityException unused2) {
            Log.d("PersonaManagerService", "isMoveFilesToContainerAllowed : SecurityException occurred");
            return false;
        }
    }

    public boolean isMoveFilesToOwnerAllowed(int i) {
        try {
            if (this.edm == null) {
                this.edm = EnterpriseDeviceManager.getInstance(this.mContext);
            }
            return this.edm.getProfilePolicy().getRestriction("restriction_property_move_files_to_owner");
        } catch (NullPointerException unused) {
            Log.d("PersonaManagerService", "isMoveFilesToOwnerAllowed : NullPointerException occurred");
            return false;
        } catch (SecurityException unused2) {
            Log.d("PersonaManagerService", "isMoveFilesToOwnerAllowed : SecurityException occurred");
            return false;
        }
    }

    public void logDpmsKA(Bundle bundle) {
        try {
            Message obtainMessage = this.mPersonaHandler.obtainMessage(110);
            bundle.putInt("userId", UserHandle.getUserId(Binder.getCallingUid()));
            obtainMessage.obj = bundle;
            this.mPersonaHandler.sendMessage(obtainMessage);
        } catch (Exception e) {
            Log.e("PersonaManagerService", "logDpmsKA exception -" + e);
        }
    }

    public boolean isShareClipboardDataToContainerAllowed(int i) {
        if (getUserManager().getUserInfo(i).isUserTypeAppSeparation()) {
            return false;
        }
        try {
            Log.d("PersonaManagerService", "inside isShareClipboardDataToContainerAllowed method");
            KnoxContainerManager knoxContainerManager = EnterpriseKnoxManager.getInstance().getKnoxContainerManager(this.mContext, i);
            Log.d("PersonaManagerService", "container mgr object is " + knoxContainerManager);
            boolean isShareClipboardDataToContainerAllowed = knoxContainerManager != null ? knoxContainerManager.getRCPPolicy().isShareClipboardDataToContainerAllowed() : false;
            Log.d("PersonaManagerService", "inside isshareclipbd data to cnt allowed" + isShareClipboardDataToContainerAllowed);
            return isShareClipboardDataToContainerAllowed;
        } catch (NullPointerException e) {
            Log.d("PersonaManagerService", "isShareClipboardDataToContainer : NullPointerException occurred " + e);
            return false;
        } catch (SecurityException e2) {
            Log.d("PersonaManagerService", "isShareClipboardDataToContainer : SecurityException occurred " + e2);
            return false;
        }
    }

    public void CMFALock(int i) {
        checkCallerPermissionFor("CMFALock");
        if (this.mLocalService.isKnoxId(i)) {
            Log.d("PersonaManagerService", "CMFALock userId = " + i);
            try {
                getTrustManager().setDeviceLockedForUser(i, true);
            } catch (Exception e) {
                e.printStackTrace();
            }
            ContainerDependencyWrapper containerDependencyWrapper = this.containerDependencyWrapper;
            if (containerDependencyWrapper != null) {
                containerDependencyWrapper.callOnCMFALocked(i);
            }
        }
    }

    public void CMFAUnLock(int i) {
        checkCallerPermissionFor("CMFAUnLock");
        Log.d("PersonaManagerService", "CMFAUnLock not support yet.");
    }

    public void setAppSeparationDefaultPolicy(int i) {
        setOwnership(i);
        applyDefaultPolicyForAppSeparation(i);
    }

    public final void setOwnership(int i) {
        ContainerDependencyWrapper.setOwnership(this.mContext, i);
    }

    public final void applyDefaultPolicyForAppSeparation(int i) {
        ContainerDependencyWrapper.applyDefaultPolicyForAppSeparation(this.mContext, i);
    }

    public Bundle getAppSeparationConfig() {
        return ContainerDependencyWrapper.getAppSeparationConfig();
    }

    /* loaded from: classes3.dex */
    public class PackageDeleteObserver extends IPackageDeleteObserver.Stub {
        public boolean finished;
        public boolean result;

        public PackageDeleteObserver() {
        }

        public void packageDeleted(String str, int i) {
            synchronized (this) {
                boolean z = true;
                this.finished = true;
                if (i != 1) {
                    z = false;
                }
                this.result = z;
                Log.i("PersonaManagerService", "packageDeleted response for package -" + str + " is " + i);
                notifyAll();
            }
        }
    }

    public final boolean deletePackageAsUser(int i, String str, int i2) {
        Log.d("PersonaManagerService", "deletePackageAsUser request for userid -" + i + " and pkg-" + str);
        PackageDeleteObserver packageDeleteObserver = new PackageDeleteObserver();
        try {
            IPackageManager.Stub.asInterface(ServiceManager.getService("package")).deletePackageAsUser(str, -1, packageDeleteObserver, i, i2);
            synchronized (packageDeleteObserver) {
                while (!packageDeleteObserver.finished) {
                    try {
                        Log.i("PersonaManagerService", "Waiting in while loop -" + packageDeleteObserver.finished);
                        packageDeleteObserver.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        } catch (Exception e) {
            Log.e("PersonaManagerService", "deletePackage exception -" + e);
        }
        return packageDeleteObserver.result;
    }

    public final String getDeviceOwnerPackage() {
        IDevicePolicyManager asInterface = IDevicePolicyManager.Stub.asInterface(ServiceManager.getService("device_policy"));
        String str = null;
        if (asInterface != null) {
            try {
                ComponentName deviceOwnerComponent = asInterface.getDeviceOwnerComponent(false);
                if (deviceOwnerComponent != null) {
                    str = deviceOwnerComponent.getPackageName();
                }
            } catch (Exception e) {
                Log.e("PersonaManagerService", "getDeviceOwnerPackage exception -" + e);
            }
        }
        if (DEBUG) {
            Log.d("PersonaManagerService", "getDeviceOwnerPackage packageName -" + str);
        }
        return str;
    }

    public final String getProfileOwnerPackage(int i) {
        IDevicePolicyManager asInterface = IDevicePolicyManager.Stub.asInterface(ServiceManager.getService("device_policy"));
        String str = null;
        if (asInterface != null) {
            try {
                ComponentName profileOwnerAsUser = asInterface.getProfileOwnerAsUser(i);
                if (profileOwnerAsUser != null) {
                    str = profileOwnerAsUser.getPackageName();
                }
            } catch (Exception e) {
                Log.e("PersonaManagerService", "getProfileOwnerPackage exception -" + e);
            }
        }
        Log.d("PersonaManagerService", "getProfileOwnerPackage packageName -" + str);
        return str;
    }

    public final boolean isPackageInstalledAsUser(int i, String str) {
        try {
            return getIPackageManager().getPackageInfo(str, 64L, i) != null;
        } catch (Exception e) {
            Log.e("PersonaManagerService", "isPackageInstalledAsUser exception -" + e);
            return false;
        }
    }

    public final Set getIMEPackages() {
        HashSet hashSet = new HashSet();
        getIMEPackagesAsUser(0, hashSet);
        int appSeparationId = getAppSeparationId();
        if (appSeparationId != 0) {
            getIMEPackagesAsUser(appSeparationId, hashSet);
        }
        return hashSet;
    }

    public final void getIMEPackagesAsUser(int i, Set set) {
        PackageInfo packageInfo;
        List queryIntentServicesAsUser = this.mContext.getPackageManager().queryIntentServicesAsUser(new Intent("android.view.InputMethod"), 8422016, i);
        for (int i2 = 0; i2 < queryIntentServicesAsUser.size(); i2++) {
            ServiceInfo serviceInfo = ((ResolveInfo) queryIntentServicesAsUser.get(i2)).serviceInfo;
            if ("android.permission.BIND_INPUT_METHOD".equals(serviceInfo.permission)) {
                if (DEBUG) {
                    Log.d("PersonaManagerService", "getIMEPackages IME PackageName = " + serviceInfo.packageName);
                }
                try {
                    packageInfo = getIPackageManager().getPackageInfo(serviceInfo.packageName, 64L, i);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    packageInfo = null;
                }
                if (packageInfo != null && !isAppSeparationIndepdentApp(packageInfo)) {
                    if (DEBUG) {
                        Log.d("PersonaManagerService", "getIMEPackages third party IME PackageName = " + serviceInfo.packageName);
                    }
                    set.add(serviceInfo.packageName);
                }
            }
        }
    }

    public final boolean isInputMethodApp(String str) {
        if (isInputMethodAppAsUser(str, 0)) {
            Log.d("PersonaManagerService", "isInputMethodApp IME package name in DO = " + str);
            return true;
        }
        int appSeparationId = getAppSeparationId();
        if (appSeparationId == 0 || !isInputMethodAppAsUser(str, appSeparationId)) {
            return false;
        }
        Log.d("PersonaManagerService", "isInputMethodApp IME package name in App Separation = " + str);
        return true;
    }

    public final boolean isInputMethodAppAsUser(String str, int i) {
        ServiceInfo[] serviceInfoArr;
        try {
            PackageInfo packageInfo = getIPackageManager().getPackageInfo(str, 4L, i);
            if (packageInfo == null || (serviceInfoArr = packageInfo.services) == null || serviceInfoArr == null) {
                return false;
            }
            for (ServiceInfo serviceInfo : serviceInfoArr) {
                String str2 = serviceInfo.permission;
                if (str2 != null && str2.equals("android.permission.BIND_INPUT_METHOD")) {
                    Log.d("PersonaManagerService", "isAppSeparationApp IME package name = " + str);
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void enforceAppSeparationAllowListUpdate() {
        updateAppsListOnlyPresentInSeparatedApps();
        this.mPersonaHandler.sendMessage(this.mPersonaHandler.obtainMessage(71));
        Log.d("PersonaManagerService", "enforceAppSeparationAllowListUpdate");
    }

    public void enforceAppSeparationCoexistenceAllowListUpdate() {
        updateAppsListOnlyPresentInSeparatedApps();
        this.mPersonaHandler.sendMessage(this.mPersonaHandler.obtainMessage(76));
        Log.d("PersonaManagerService", "enforceAppSeparationCoexistenceAllowListUpdate");
    }

    public void enforceAppSeparationDeletion() {
        this.mPersonaHandler.sendMessage(this.mPersonaHandler.obtainMessage(72));
        Log.d("PersonaManagerService", "enforceAppSeparationDeletion");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r2 = r3.id;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getAppSeparationId() {
        /*
            r5 = this;
            com.android.server.pm.PersonaManagerService$Injector r0 = r5.mInjector
            long r0 = r0.binderClearCallingIdentity()
            com.android.server.pm.PersonaManagerService$Injector r2 = r5.mInjector     // Catch: java.lang.Throwable -> L31
            android.os.UserManager r2 = r2.getUserManager()     // Catch: java.lang.Throwable -> L31
            r3 = 1
            java.util.List r2 = r2.getUsers(r3)     // Catch: java.lang.Throwable -> L31
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L31
        L15:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L31
            if (r3 == 0) goto L2a
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L31
            android.content.pm.UserInfo r3 = (android.content.pm.UserInfo) r3     // Catch: java.lang.Throwable -> L31
            boolean r4 = r3.isUserTypeAppSeparation()     // Catch: java.lang.Throwable -> L31
            if (r4 == 0) goto L15
            int r2 = r3.id     // Catch: java.lang.Throwable -> L31
            goto L2b
        L2a:
            r2 = 0
        L2b:
            com.android.server.pm.PersonaManagerService$Injector r5 = r5.mInjector
            r5.binderRestoreCallingIdentity(r0)
            return r2
        L31:
            r2 = move-exception
            com.android.server.pm.PersonaManagerService$Injector r5 = r5.mInjector
            r5.binderRestoreCallingIdentity(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.getAppSeparationId():int");
    }

    public boolean isInSeparatedAppsOnly(String str) {
        if (mAppsListOnlyPresentInSeparatedApps == null) {
            updateAppsListOnlyPresentInSeparatedApps();
        }
        return mAppsListOnlyPresentInSeparatedApps.contains(str);
    }

    public List getUpdatedListWithAppSeparation(List list) {
        HashSet hashSet = new HashSet(getSeparatedAppsList());
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ResolveInfo resolveInfo = (ResolveInfo) it.next();
            if (!hashSet.contains(resolveInfo.activityInfo.packageName)) {
                arrayList.add(resolveInfo);
            }
        }
        return arrayList;
    }

    public final void updateAppsListOnlyPresentInSeparatedApps() {
        mAppsListOnlyPresentInSeparatedApps = getAppsListOnlyPresentInSeparatedApps();
    }

    public List getSeparatedAppsList() {
        if (!cachedTime.containsKey("separatedapps")) {
            cachedTime.put("separatedapps", Long.valueOf(System.currentTimeMillis()));
            updateAppsListOnlyPresentInSeparatedApps();
            return mAppsListOnlyPresentInSeparatedApps;
        }
        if (System.currentTimeMillis() - ((Long) cachedTime.get("separatedapps")).longValue() > 10000) {
            if (mAppsListOnlyPresentInSeparatedApps == null) {
                updateAppsListOnlyPresentInSeparatedApps();
            }
            return mAppsListOnlyPresentInSeparatedApps;
        }
        updateAppsListOnlyPresentInSeparatedApps();
        return mAppsListOnlyPresentInSeparatedApps;
    }

    public List getAppsListOnlyPresentInSeparatedApps() {
        ArrayList arrayList = new ArrayList();
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                Bundle appSeparationConfig = getAppSeparationConfig();
                if (appSeparationConfig != null) {
                    if (mDeviceOwnerPackage.equals("")) {
                        DevicePolicyManager devicePolicyManager = (DevicePolicyManager) this.mContext.getSystemService("device_policy");
                        mDeviceOwnerPackage = devicePolicyManager != null ? devicePolicyManager.getDeviceOwner() : "";
                    }
                    boolean z = appSeparationConfig.getBoolean("APP_SEPARATION_OUTSIDE", false);
                    HashSet hashSet = new HashSet(appSeparationConfig.getStringArrayList("APP_SEPARATION_APP_LIST"));
                    HashSet hashSet2 = new HashSet(appSeparationConfig.getStringArrayList("APP_SEPARATION_COEXISTANCE_LIST"));
                    HashSet hashSet3 = new HashSet(getSystemApps());
                    this.mImeSet = getIMEPackages();
                    Iterator it = this.mContext.getPackageManager().getInstalledPackagesAsUser(0, 0).iterator();
                    while (it.hasNext()) {
                        String str = ((PackageInfo) it.next()).packageName;
                        if (!hashSet2.contains(str) && !hashSet3.contains(str) && !isKeyboardApp(str) && z != hashSet.contains(str) && !mDeviceOwnerPackage.equals(str) && !isKpuPackage(str)) {
                            arrayList.add(str);
                        }
                    }
                }
            } catch (Exception e) {
                Log.e("PersonaManagerService", "Exception in getSeparatedAppsList");
                e.printStackTrace();
            }
            return arrayList;
        } finally {
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isAppSeparationPresent() {
        Bundle bundle;
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                bundle = getAppSeparationConfig();
            } catch (Exception unused) {
                Log.d("PersonaManagerService", "Exception in isAppSeparationPresent()");
                Injector injector = this.mInjector;
                injector.binderRestoreCallingIdentity(binderClearCallingIdentity);
                bundle = null;
                this = injector;
            }
            return bundle != null;
        } finally {
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        }
    }

    public final void suspendAppsInOwner(String str, boolean z) {
        Log.d("PersonaManagerService", "suspendAppInOwner is called" + str + ", suspend - " + z);
        if (isInputMethodApp(str)) {
            Log.d("PersonaManagerService", "suspendAppInOwner()" + str + ", do not suspend keyboard app- ");
            return;
        }
        Bundle appSeparationConfig = getAppSeparationConfig();
        if (appSeparationConfig == null) {
            Log.d("PersonaManagerService", "No appseparation present");
            return;
        }
        if (new HashSet(getAppSeparationCoexistenceList(appSeparationConfig)).contains(str) && z) {
            Log.i("PersonaManagerService", "Package is allowed for both users do not suspend: " + str);
            return;
        }
        try {
            this.mInjector.getApplicationPackageManager().setPackagesSuspended(new String[]{str}, z, (PersistableBundle) null, (PersistableBundle) null, "");
            Log.d("PersonaManagerService", (z ? "Suspend Package:" : "Unsuspend Package:") + str);
            Bundle bundle = new Bundle();
            bundle.putStringArray("android.intent.extra.changed_component_name_list", new String[]{str});
            this.mPm.sendPackageBroadcast("android.intent.action.PACKAGE_CHANGED", str, bundle, 0, null, null, null, null, null, null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final boolean enforceSeparatedAppsRemoveInternal() {
        Bundle separationConfigfromCache = getSeparationConfigfromCache();
        if (separationConfigfromCache == null) {
            Log.d("PersonaManagerService", "enforceSeparatedAppsRemoveInternal return immediately if App Separation has not been set");
            return false;
        }
        boolean z = separationConfigfromCache.getBoolean("APP_SEPARATION_OUTSIDE", false);
        ArrayList<String> arrayList = new ArrayList();
        HashSet hashSet = new HashSet(separationConfigfromCache.getStringArrayList("APP_SEPARATION_APP_LIST"));
        HashSet hashSet2 = new HashSet(separationConfigfromCache.getStringArrayList("APP_SEPARATION_COEXISTANCE_LIST"));
        HashSet hashSet3 = new HashSet();
        this.mImeSet = hashSet3;
        getIMEPackagesAsUser(0, hashSet3);
        for (PackageInfo packageInfo : this.mContext.getPackageManager().getInstalledPackagesAsUser(64, 0)) {
            if (!isAppSeparationIndepdentApp(packageInfo)) {
                Log.d("PersonaManagerService", "enforceSeparatedAppsRemoveInternal remove packageName " + packageInfo.packageName);
                if ((!hashSet.contains(packageInfo.packageName) && z) || (hashSet.contains(packageInfo.packageName) && !z)) {
                    arrayList.add(packageInfo.packageName);
                }
            }
        }
        boolean z2 = true;
        for (String str : arrayList) {
            if (!isKeyboardApp(str) && !hashSet2.contains(str) && isPackageInstalledAsUser(0, str)) {
                Log.d("PersonaManagerService", "enforceSeparatedAppsRemoveInternal remove use 0 packageName ? - " + str);
                if (!deletePackageAsUser(0, str, 268435456)) {
                    suspendAppsInOwner(str, true);
                    z2 = false;
                }
            }
        }
        try {
            Intent intent = new Intent();
            intent.setAction("com.samsung.android.knox.action.APP_SEPARATION_ACTION");
            intent.putExtra("removed", true);
            intent.setClassName("com.samsung.android.appseparation", "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver");
            this.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z2;
    }

    public final void enforceAppSeparationDeletionInternal() {
        try {
            Intent intent = new Intent();
            intent.setAction("com.samsung.android.knox.action.APP_SEPARATION_ACTION");
            intent.putExtra("removestart", true);
            intent.setClassName("com.samsung.android.appseparation", "com.samsung.android.appseparation.receiver.ProfileStateChangedReceiver");
            this.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
        } catch (Exception e) {
            e.printStackTrace();
        }
        Iterator it = getUserManager().getUsers(true).iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            UserInfo userInfo = (UserInfo) it.next();
            if (userInfo.isUserTypeAppSeparation()) {
                getUserManager().removeUser(userInfo.id);
                boolean enforceSeparatedAppsRemoveInternal = enforceSeparatedAppsRemoveInternal();
                Intent intent2 = new Intent();
                intent2.setAction("com.samsung.android.knox.intent.action.SEPARATION_ACTION_RETURN");
                intent2.putExtra("type", "deactivate");
                intent2.putExtra("status", enforceSeparatedAppsRemoveInternal);
                notifyStatusToKspAgent(intent2);
                break;
            }
        }
        this.mKnoxAnalyticsContainer.logEventDeactivationForAppSep();
        mSeparationConfiginCache = getAppSeparationConfig();
        this.mImeSet = null;
    }

    public final List getUpdatedPackageInfo(Bundle bundle, HashSet hashSet, HashSet hashSet2) {
        PackageInfo packageInfo;
        if (bundle == null) {
            return this.mContext.getPackageManager().getInstalledPackagesAsUser(64, 0);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = hashSet.iterator();
        while (true) {
            PackageInfo packageInfo2 = null;
            if (!it.hasNext()) {
                break;
            }
            String str = (String) it.next();
            if (!hashSet2.contains(str)) {
                Log.d("PersonaManagerService", "getUpdatedPackageInfo Installing prev package1 - " + str);
                try {
                    packageInfo2 = getIPackageManager().getPackageInfo(str, 64L, 0);
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
                if (packageInfo2 != null) {
                    arrayList.add(packageInfo2);
                }
            }
        }
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            if (!hashSet.contains(str2)) {
                Log.d("PersonaManagerService", "getUpdatedPackageInfo Installing prev package2 - " + str2);
                try {
                    packageInfo = getIPackageManager().getPackageInfo(str2, 64L, 0);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    packageInfo = null;
                }
                if (packageInfo != null) {
                    arrayList.add(packageInfo);
                }
            }
        }
        return arrayList;
    }

    public final void notifyStatusToKspAgent(Intent intent) {
        Log.d("PersonaManagerService", "notifyStatusToKspAgent() " + intent);
        try {
            this.mContext.sendBroadcastAsUser(intent, UserHandle.OWNER, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void processAppSeparationCreation() {
        Log.d("PersonaManagerService", "processAppSeparationCreation");
        Bundle appSeparationConfig = getAppSeparationConfig();
        ArrayList<String> arrayList = new ArrayList<>();
        int appSeparationId = getAppSeparationId();
        try {
        } catch (Exception e) {
            Log.e("PersonaManagerService", "Exception in processAppSeparationCreation " + e);
            e.printStackTrace();
        }
        if (appSeparationConfig == null) {
            Log.d("PersonaManagerService", "processAppSeparationCreation no app separation data found in db");
            return;
        }
        for (PackageInfo packageInfo : getUpdatedPackageInfo(null, null, null)) {
            if (isAppSeparationApp(packageInfo.packageName) && !isInputMethodApp(packageInfo.packageName)) {
                if (appSeparationId == 0) {
                    arrayList.add(packageInfo.packageName);
                    suspendAppsInOwner(packageInfo.packageName, true);
                } else {
                    boolean isPackageInstalledAsUser = isPackageInstalledAsUser(0, packageInfo.packageName);
                    boolean isPackageInstalledAsUser2 = isPackageInstalledAsUser(appSeparationId, packageInfo.packageName);
                    if (isPackageInstalledAsUser && !isPackageInstalledAsUser2) {
                        processAppSeparationInstallationInternal(packageInfo.packageName);
                    }
                }
            }
        }
        if (appSeparationId != 0 || arrayList.size() <= 0) {
            return;
        }
        Set iMEPackages = getIMEPackages();
        this.mImeSet = iMEPackages;
        arrayList.addAll(iMEPackages);
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            Log.d("PersonaManagerService", "processAppSeparationCreation: packageName = " + it.next());
        }
        Intent intent = new Intent("com.samsung.android.knox.action.PROVISION_KNOX_PROFILE");
        intent.addFlags(268435456);
        intent.setClassName("com.samsung.android.appseparation", "com.samsung.android.appseparation.receiver.ProvisionReceiver");
        intent.putStringArrayListExtra("packageNames", arrayList);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
        try {
            this.mKnoxAnalyticsContainer.logEventActivationForAppSep(arrayList, getAppSeparationConfig().getStringArrayList("APP_SEPARATION_APP_LIST"));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:156:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x05be  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0669  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x06b4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x073f  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x06ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void enforceAppSeparationAllowListUpdateInternal() {
        /*
            Method dump skipped, instructions count: 1859
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.enforceAppSeparationAllowListUpdateInternal():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x08ec  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x095c  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0a1d  */
    /* JADX WARN: Removed duplicated region for block: B:175:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0955  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0a42  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0ab6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0b74  */
    /* JADX WARN: Removed duplicated region for block: B:62:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0aad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void enforceAppSeparationCoexistenceAllowListUpdateInternal() {
        /*
            Method dump skipped, instructions count: 2936
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.enforceAppSeparationCoexistenceAllowListUpdateInternal():void");
    }

    public boolean isAppSeparationApp(String str) {
        Bundle separationConfigfromCache = getSeparationConfigfromCache();
        if (checkNullParameter(separationConfigfromCache, str)) {
            Log.d("PersonaManagerService", "isAppSeparationApp null");
            return false;
        }
        if (isInputMethodApp(str)) {
            Log.d("PersonaManagerService", "isAppSeparationApp IME package name after isInputMethodApp = " + str);
            return true;
        }
        PackageInfo separationPackageInfo = getSeparationPackageInfo(str);
        if (checkNullParameter(separationPackageInfo) || isAppSeparationIndepdentApp(separationPackageInfo)) {
            if (DEBUG) {
                Log.d("PersonaManagerService", "isAppSeparationApp Return false due to null or IndependentApp");
            }
            return false;
        }
        return isAppSeparationAppInternal(str, separationConfigfromCache);
    }

    public final boolean isAppSeparationAppInternal(String str, Bundle bundle) {
        boolean z = bundle.getBoolean("APP_SEPARATION_OUTSIDE", false);
        ArrayList<String> stringArrayList = bundle.getStringArrayList("APP_SEPARATION_APP_LIST");
        if (isCoexistenceListApp(str, bundle.getStringArrayList("APP_SEPARATION_COEXISTANCE_LIST"))) {
            return true;
        }
        return isAllowListApp(str, stringArrayList) ? !z : z;
    }

    public final boolean isAllowListApp(String str, List list) {
        return list != null && list.contains(str);
    }

    public final boolean isCoexistenceListApp(String str, List list) {
        return list != null && list.contains(str);
    }

    public final boolean checkNullParameter(Object... objArr) {
        int i = 1;
        for (Object obj : objArr) {
            if (obj == null) {
                Log.d("PersonaManagerService", "Parameter(" + i + ") is null.");
                return true;
            }
            i++;
        }
        return false;
    }

    public boolean isAppSeparationIndepdentApp(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if ((packageInfo.applicationInfo.flags & 129) != 0) {
            return true;
        }
        String str = packageInfo.packageName;
        String deviceOwnerPackage = getDeviceOwnerPackage();
        if (deviceOwnerPackage != null && deviceOwnerPackage.equals(str)) {
            Log.d("PersonaManagerService", "isAppSeparationIndepdentApp ignoring DO packageName - " + deviceOwnerPackage);
            return true;
        }
        if (!isKpuPackage(str)) {
            return false;
        }
        Log.d("PersonaManagerService", "isAppSeparationIndepdentApp ignoring KSP packageName - " + str);
        return true;
    }

    public final boolean isKeyboardApp(String str) {
        Set set = this.mImeSet;
        return set != null && set.contains(str);
    }

    public final boolean isKpuPackage(String str) {
        return str.startsWith("com.samsung.android.knox.kpu");
    }

    public int processAppSeparationInstallation(String str) {
        updateAppsListOnlyPresentInSeparatedApps();
        if (str != null && getAppSeparationId() == 0 && isAppSeparationApp(str) && !isInputMethodApp(str)) {
            Message obtainMessage = this.mPersonaHandler.obtainMessage(74);
            obtainMessage.obj = str;
            this.mPersonaHandler.sendMessage(obtainMessage);
            suspendAppsInOwner(str, true);
        } else {
            Message obtainMessage2 = this.mPersonaHandler.obtainMessage(73);
            obtainMessage2.obj = str;
            this.mPersonaHandler.sendMessage(obtainMessage2);
            Log.d("PersonaManagerService", "processAppSeparationInstallation packageName - " + str);
        }
        return 1;
    }

    public final PackageInfo getSeparationPackageInfo(String str) {
        return getSeparationPackageInfo(str, getAppSeparationId());
    }

    public final PackageInfo getSeparationPackageInfo(String str, int i) {
        PackageInfo packageInfo;
        try {
            packageInfo = getIPackageManager().getPackageInfo(str, 64L, 0);
        } catch (RemoteException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo != null) {
            return packageInfo;
        }
        try {
            packageInfo = getIPackageManager().getPackageInfo(str, 64L, i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
        if (packageInfo == null) {
            return null;
        }
        return packageInfo;
    }

    public int processAppSeparationInstallationInternal(String str) {
        Bundle separationConfigfromCache = getSeparationConfigfromCache();
        if (checkNullParameter(separationConfigfromCache, str)) {
            Log.d("PersonaManagerService", "processAppSeparationInstallationInternal null");
            return 1;
        }
        boolean z = separationConfigfromCache.getBoolean("APP_SEPARATION_OUTSIDE", false);
        List separationAppsList = getSeparationAppsList(separationConfigfromCache);
        List appSeparationCoexistenceList = getAppSeparationCoexistenceList(separationConfigfromCache);
        HashSet hashSet = new HashSet(separationAppsList);
        int appSeparationId = getAppSeparationId();
        Log.d("PersonaManagerService", "processAppSeparationInstallationInternal is called for isOutside - " + z + ", packageName - " + str);
        PackageInfo separationPackageInfo = getSeparationPackageInfo(str, appSeparationId);
        if (checkNullParameter(separationPackageInfo) || isAppSeparationIndepdentApp(separationPackageInfo)) {
            Log.d("PersonaManagerService", "processAppSeparationInstallationInternal Return false due to null or IndependentApp");
            return 1;
        }
        try {
            Log.d("PersonaManagerService", "processAppSeparationInstallationInternal Non system app - " + separationPackageInfo.packageName + ", Is in allowlist ? - " + hashSet.contains(separationPackageInfo.packageName) + ",  wlAppsSet size - " + hashSet.size());
            if (!isCoexistenceListApp(separationPackageInfo.packageName, appSeparationCoexistenceList) && !isAppSeparationInstallationRequired(z, hashSet, separationPackageInfo)) {
                return (!isPackageInstalledInAppSeparation(appSeparationId, separationPackageInfo) || deletePackageForAppSeparation(appSeparationId, separationPackageInfo)) ? 1 : -110;
            }
            Log.d("PersonaManagerService", "processAppSeparationInstallationInternal Disable package in Owner space and Install package in PO - " + separationPackageInfo.packageName);
            return installPackageForAppSeparation(appSeparationId, separationPackageInfo);
        } catch (Exception e) {
            Log.e("PersonaManagerService", "Exception in processAppSeparationAllowListInternal " + e);
            e.printStackTrace();
            return -110;
        }
    }

    public final boolean deletePackageForAppSeparation(int i, PackageInfo packageInfo) {
        boolean deletePackageAsUser = deletePackageAsUser(i, packageInfo.packageName, 268435456);
        Log.d("PersonaManagerService", "processAppSeparationInstallationInternal deletePackageAsUser result - " + deletePackageAsUser);
        return deletePackageAsUser;
    }

    public final boolean isPackageInstalledInAppSeparation(int i, PackageInfo packageInfo) {
        return i != 0 && isPackageInstalledAsUser(i, packageInfo.packageName);
    }

    public final int installPackageForAppSeparation(int i, PackageInfo packageInfo) {
        boolean isPackageInstalledAsUser = isPackageInstalledAsUser(0, packageInfo.packageName);
        boolean isPackageInstalledAsUser2 = isPackageInstalledAsUser(i, packageInfo.packageName);
        int i2 = 1;
        if (isPackageInstalledAsUser && isPackageInstalledAsUser2) {
            Log.d("PersonaManagerService", "processAppSeparationInstallationInternal Installing package " + packageInfo.packageName + " exist in both mode.");
            suspendAppsInOwner(packageInfo.packageName, true);
            return 1;
        }
        try {
            if (isPackageInstalledAsUser) {
                suspendAppsInOwner(packageInfo.packageName, true);
                i2 = getIPackageManager().installExistingPackageAsUser(packageInfo.packageName, i, 4194304, 0, (List) null);
                Log.d("PersonaManagerService", "processAppSeparationInstallationInternal Installing package " + packageInfo.packageName + " in user 0 out return -" + i2);
            } else {
                int installExistingPackageAsUser = getIPackageManager().installExistingPackageAsUser(packageInfo.packageName, 0, 4194304, 0, (List) null);
                try {
                    Log.d("PersonaManagerService", "processAppSeparationInstallationInternal Installing package " + packageInfo.packageName + " in user 0 out return -" + installExistingPackageAsUser);
                    suspendAppsInOwner(packageInfo.packageName, true);
                    i2 = installExistingPackageAsUser;
                } catch (RemoteException e) {
                    e = e;
                    i2 = installExistingPackageAsUser;
                    e.printStackTrace();
                    return i2;
                }
            }
        } catch (RemoteException e2) {
            e = e2;
        }
        return i2;
    }

    public final boolean isAppSeparationInstallationRequired(boolean z, HashSet hashSet, PackageInfo packageInfo) {
        return (z && !hashSet.contains(packageInfo.packageName)) || (!z && hashSet.contains(packageInfo.packageName)) || isInputMethodApp(packageInfo.packageName);
    }

    public final List getSeparationAppsList(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("APP_SEPARATION_APP_LIST");
        return stringArrayList == null ? new ArrayList() : stringArrayList;
    }

    public final List getAppSeparationCoexistenceList(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("APP_SEPARATION_COEXISTANCE_LIST");
        return stringArrayList == null ? new ArrayList() : stringArrayList;
    }

    public final boolean isQuickSwitchToSecureFolderSupported() {
        return ContainerDependencyWrapper.isSupportPrivateMode();
    }

    public void launchSeamLessSf() {
        if (isQuickSwitchToSecureFolderSupported()) {
            this.mPersonaHandler.sendMessage(this.mPersonaHandler.obtainMessage(90));
        }
    }

    public void clearStorageForUser(int i) {
        try {
            Log.d("PersonaManagerService", "clearStorageForUser " + i);
            ContainerDependencyWrapper.clearStorageForUser((LockSettingsInternal) LocalServices.getService(LockSettingsInternal.class), i);
        } catch (Exception e) {
            Log.d("PersonaManagerService", "clearStorageForUser err.");
            e.printStackTrace();
        }
    }

    public void startTermsActivity() {
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                Intent intent = new Intent("com.sec.android.app.secsetupwizard.TERMS");
                intent.addFlags(268435456);
                this.mContext.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
        }
    }

    public void startCountrySelectionActivity(boolean z) {
        long binderClearCallingIdentity = this.mInjector.binderClearCallingIdentity();
        try {
            try {
                if (!z) {
                    try {
                        Intent intent = new Intent("com.sec.android.app.secsetupwizard.NET_TSS_SETUP");
                        intent.addFlags(268435456);
                        this.mContext.startActivity(intent);
                    } catch (ActivityNotFoundException unused) {
                        Intent intent2 = new Intent("com.sec.android.app.secsetupwizard.TSS_SETUP");
                        intent2.addFlags(268435456);
                        this.mContext.startActivity(intent2);
                    }
                } else {
                    Intent intent3 = new Intent("com.sec.android.app.secsetupwizard.COUNTRY_SELECTION");
                    intent3.addFlags(268435456);
                    this.mContext.startActivity(intent3);
                }
            } finally {
                this.mInjector.binderRestoreCallingIdentity(binderClearCallingIdentity);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onUserRemoved(int i) {
        String str = "";
        int callingUid = Binder.getCallingUid();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                String str2 = "" + i;
                String format = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
                if (i == -1) {
                    str2 = "fallbackToSingleUserLP";
                } else {
                    try {
                        UserInfo userInfo = getUserManager().getUserInfo(i);
                        if (userInfo != null) {
                            userInfo.name = null;
                            userInfo.iconPath = null;
                            str2 = userInfo.toString();
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                try {
                    str = Debug.getCallers(20);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                String str3 = "====================\n UID : " + callingUid + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + format + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + str2 + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE + str + "\n\n";
                Log.e("PersonaManagerService", "onUserRemoved \n" + str3);
                try {
                    this.mPersonaHandler.removeMessages(30);
                    Message obtainMessage = this.mPersonaHandler.obtainMessage(30, i, 0);
                    obtainMessage.obj = str3;
                    this.mPersonaHandler.sendMessage(obtainMessage);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void logUserRemoval(int i, String str) {
        try {
            synchronized (this.mPersonaCacheMap) {
                this.mPersonaCacheMap.put("USER-REMOVED", str);
                writePersonaCacheLocked();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final String getLastUserRemovalLog() {
        String str;
        try {
            synchronized (this.mPersonaCacheMap) {
                str = (String) this.mPersonaCacheMap.get("USER-REMOVED");
            }
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return "NA";
        }
    }

    public String getSecureFolderName() {
        try {
            PackageManager packageManager = this.mInjector.getPackageManager();
            return (String) packageManager.getPackageInfo("com.samsung.knox.securefolder", 0).applicationInfo.loadUnsafeLabel(packageManager);
        } catch (Exception e) {
            e.printStackTrace();
            return "Secure Folder";
        }
    }

    public void postPwdChangeNotificationForDeviceOwner(int i) {
        this.mPersonaHandler.sendMessage(this.mPersonaHandler.obtainMessage(200, i, 0));
    }

    public final boolean isStubApp(String str, int i) {
        Set launchableApps;
        try {
            List list = this.requiredApps;
            if (list == null || !list.contains(str) || (launchableApps = getLaunchableApps(i)) == null) {
                return false;
            }
            return launchableApps.contains(str);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public final void printAllApprovedInstallers(PrintWriter printWriter) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                Iterator it = getPersonaManager().getKnoxIds(true).iterator();
                while (it.hasNext()) {
                    int intValue = ((Integer) it.next()).intValue();
                    printWriter.println("approved installers user : #" + intValue);
                    Iterator it2 = IKnoxContainerManager.Stub.asInterface(ServiceManager.getService("mum_container_policy")).getPackagesFromInstallWhiteList(ContainerDependencyWrapper.getContextInfo(ContainerDependencyWrapper.getOwnerUidFromEdm(this.mContext, intValue), intValue)).iterator();
                    while (it2.hasNext()) {
                        printWriter.println(" - " + ((String) it2.next()));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final IPackageManager getIPackageManager() {
        return this.mInjector.getIPackageManager();
    }

    public final void enableMyFilesLauncherActivity(int i) {
        Log.d("PersonaManagerService", "enableMyFilesLauncherActivity");
        Bundle bundle = new Bundle();
        bundle.putBoolean("visible_app_icon", true);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                this.mContext.createContextAsUser(UserHandle.of(i), 0).getContentResolver().call("myfiles", "SET_APP_ICON_STATUS", "", bundle);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final ArrayList getLauncherPackages() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        List<ResolveInfo> queryIntentActivitiesAsUser = this.mContext.getPackageManager().queryIntentActivitiesAsUser(intent, 786432, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivitiesAsUser) {
            new HashMap();
            arrayList.add(resolveInfo.activityInfo.packageName);
        }
        return arrayList;
    }

    public final ArrayList getWorkTabSupportLauncherUids() {
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"com.nttdocomo.android.dhome", "com.nttdocomo.android.homezozo"};
        Iterator it = getLauncherPackages().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (Arrays.asList(strArr).contains(str)) {
                try {
                    PackageInfo packageInfo = getIPackageManager().getPackageInfo(str, 64L, 0);
                    if (packageInfo != null) {
                        arrayList.add(Integer.valueOf(packageInfo.applicationInfo.uid));
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    public boolean isWorkTabSupported() {
        return workTabSupportLauncherUids.contains(Integer.valueOf(Binder.getCallingUid()));
    }

    public final void checkForesightUpdate() {
        String str = SystemProperties.get("persist.sys.knox.foresight.version");
        if (str == null || str.equals("") || !isVersionCheckNeeded()) {
            return;
        }
        Intent intent = new Intent("com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND");
        intent.setClassName("com.samsung.android.knox.containercore", "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver");
        intent.putExtra("check", "check");
        intent.addFlags(268435456);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    public final boolean isVersionCheckNeeded() {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy.MM.dd");
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.mContext);
            String string = defaultSharedPreferences.getString("knox_foresight_regulary_check", "");
            String format = simpleDateFormat.format(new Date());
            if (!string.equals("") && format.equals(string)) {
                Log.d(this.LOG_FS_TAG, "!isVersionCheckNeeded");
                return false;
            }
            Log.d(this.LOG_FS_TAG, "isVersionCheckNeeded");
            SharedPreferences.Editor edit = defaultSharedPreferences.edit();
            edit.putString("knox_foresight_regulary_check", format);
            edit.apply();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            Log.d(this.LOG_FS_TAG, "!isVersionCheckNeeded exception.");
            return false;
        }
    }

    public boolean sendKnoxForesightBroadcast(Intent intent) {
        Intent intent2 = new Intent("com.samsung.android.knox.containercore.action.FORESIGHT_COMMAND");
        intent2.setClassName("com.samsung.android.knox.containercore", "com.samsung.android.knox.containercore.KnoxForesightCommandReceiver");
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        boolean hasLicensePermission = hasLicensePermission(callingUid, "com.samsung.android.knox.permission.KNOX_FORESIGHT");
        if (hasLicensePermission) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    this.mContext.sendBroadcastAsUser(intent2, new UserHandle(userId));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return hasLicensePermission;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
    
        if (hasPermission(getProfileOwnerPackage(r0), r11, r0) != false) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean hasLicensePermission(int r10, java.lang.String r11) {
        /*
            r9 = this;
            int r0 = android.os.UserHandle.getUserId(r10)
            android.content.Context r1 = r9.mContext
            android.content.pm.PackageManager r1 = r1.getPackageManager()
            java.lang.String[] r10 = r1.getPackagesForUid(r10)
            int r1 = r10.length
            r2 = 0
            r3 = r2
        L11:
            r4 = 1
            if (r3 >= r1) goto L37
            r5 = r10[r3]
            java.lang.String r6 = r9.LOG_FS_TAG
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "hasLicensePermission : packageName = "
            r7.append(r8)
            r7.append(r5)
            java.lang.String r7 = r7.toString()
            android.util.Log.d(r6, r7)
            boolean r5 = r9.hasPermission(r5, r11, r0)
            if (r5 == 0) goto L34
            r10 = r4
            goto L38
        L34:
            int r3 = r3 + 1
            goto L11
        L37:
            r10 = r2
        L38:
            long r5 = android.os.Binder.clearCallingIdentity()
            boolean r1 = com.samsung.android.knox.SemPersonaManager.isDoEnabled(r0)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r1 == 0) goto L54
            java.lang.String r1 = r9.LOG_FS_TAG     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            java.lang.String r3 = "hasLicensePermission : DO"
            android.util.Log.d(r1, r3)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            java.lang.String r1 = r9.getDeviceOwnerPackage()     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            boolean r1 = r9.hasPermission(r1, r11, r2)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r1 == 0) goto L54
            r10 = r4
        L54:
            boolean r1 = com.samsung.android.knox.SemPersonaManager.isKnoxId(r0)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r1 == 0) goto L72
            boolean r1 = com.samsung.android.knox.SemPersonaManager.isSecureFolderId(r0)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r1 != 0) goto L72
            java.lang.String r1 = r9.LOG_FS_TAG     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            java.lang.String r2 = "hasLicensePermission : PO"
            android.util.Log.d(r1, r2)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            java.lang.String r1 = r9.getProfileOwnerPackage(r0)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            boolean r11 = r9.hasPermission(r1, r11, r0)     // Catch: java.lang.Throwable -> L77 java.lang.Exception -> L79
            if (r11 == 0) goto L72
            goto L73
        L72:
            r4 = r10
        L73:
            android.os.Binder.restoreCallingIdentity(r5)
            goto L81
        L77:
            r9 = move-exception
            goto L98
        L79:
            r11 = move-exception
            r11.printStackTrace()     // Catch: java.lang.Throwable -> L77
            android.os.Binder.restoreCallingIdentity(r5)
            r4 = r10
        L81:
            java.lang.String r9 = r9.LOG_FS_TAG
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "hasLicensePermission : "
            r10.append(r11)
            r10.append(r4)
            java.lang.String r10 = r10.toString()
            android.util.Log.d(r9, r10)
            return r4
        L98:
            android.os.Binder.restoreCallingIdentity(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.PersonaManagerService.hasLicensePermission(int, java.lang.String):boolean");
    }

    public final boolean hasPermission(String str, String str2, int i) {
        PackageManagerService packageManagerService;
        Log.d(this.LOG_FS_TAG, "hasPermission packageName " + str + " permission " + str2 + " userId " + i);
        return (str == null || (packageManagerService = this.mPm) == null || packageManagerService.checkPermission(str2, str, i) != 0) ? false : true;
    }

    public void notifyAppRestrictionChanged(String str, int i) {
        Intent intent = new Intent("android.intent.action.APPLICATION_RESTRICTIONS_CHANGED");
        intent.setPackage(str);
        intent.addFlags(1073741824);
        int appSeparationId = getAppSeparationId();
        if (appSeparationId != i) {
            this.mContext.sendBroadcastAsUser(intent, UserHandle.of(appSeparationId));
        }
        try {
            if (str.equals("com.samsung.android.appseparation")) {
                Intent intent2 = new Intent("com.samsung.android.knox.intent.action.NOTIFY_APPSEPARATION_INTERNAL");
                intent2.setPackage("com.samsung.android.appseparation");
                intent2.addFlags(32);
                this.mContext.sendBroadcastAsUser(intent2, UserHandle.of(i));
                if (appSeparationId != i) {
                    this.mContext.sendBroadcastAsUser(intent2, UserHandle.of(appSeparationId));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public IBasicCommand getKnoxForesightService() {
        return KnoxForesightService.getInstance(this.mContext);
    }
}
