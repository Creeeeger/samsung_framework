package com.android.server.pm;

import android.R;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityManagerNative;
import android.app.BroadcastOptions;
import android.app.IActivityManager;
import android.app.IStopUserCallback;
import android.app.KeyguardManager;
import android.app.PendingIntent;
import android.app.StatsManager;
import android.app.admin.DevicePolicyEventLogger;
import android.app.admin.DevicePolicyManagerInternal;
import android.app.trust.TrustManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.PackagePartitions;
import android.content.pm.ShortcutServiceInternal;
import android.content.pm.UserInfo;
import android.content.pm.UserPackage;
import android.content.pm.UserProperties;
import android.content.pm.parsing.FrameworkParsingPackageUtils;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.FileUtils;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInstalld;
import android.os.IProgressListener;
import android.os.IUserManager;
import android.os.IUserRestrictionsListener;
import android.os.Looper;
import android.os.Message;
import android.os.PackageTagsList;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SELinux;
import android.os.SemSystemProperties;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.ShellCallback;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.os.storage.StorageManagerInternal;
import android.provider.Settings;
import android.service.voice.VoiceInteractionManagerInternal;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.AtomicFile;
import android.util.IndentingPrintWriter;
import android.util.IntArray;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.TypedValue;
import android.util.Xml;
import com.android.internal.app.IAppOpsService;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.RoSystemProperties;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.FunctionalUtils;
import com.android.internal.util.Preconditions;
import com.android.internal.util.XmlUtils;
import com.android.internal.widget.LockPatternUtils;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.BundleUtils;
import com.android.server.LocalServices;
import com.android.server.LockGuard;
import com.android.server.SystemService;
import com.android.server.am.UserState;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.knox.ContainerDependencyWrapper;
import com.android.server.knox.dar.sdp.SdpManagerImpl;
import com.android.server.knox.dar.sdp.SdpManagerInternal;
import com.android.server.pm.ResilientAtomicFile;
import com.android.server.pm.UserManagerInternal;
import com.android.server.pm.UserManagerService;
import com.android.server.pm.UserTypeFactory;
import com.android.server.utils.Slogf;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.samsung.android.app.SemDualAppManager;
import com.samsung.android.core.pm.mm.MaintenanceModeUtils;
import com.samsung.android.core.pm.multiuser.MultiUserSupportsHelper;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.analytics.activation.DevicePolicyListener;
import com.samsung.android.knox.application.ApplicationPolicy;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import com.samsung.android.knox.dar.IDarManagerService;
import com.samsung.android.knox.dar.ddar.DualDARController;
import com.samsung.android.knox.dar.ddar.DualDarManager;
import com.samsung.android.knox.dar.ddar.fsm.State;
import com.samsung.android.knox.dar.ddar.fsm.StateMachine;
import com.samsung.android.knox.multiuser.MultiUserManager;
import com.samsung.android.knox.restriction.IRestrictionPolicy;
import com.samsung.android.rune.PMRune;
import com.samsung.android.server.pm.PmLog;
import com.samsung.android.server.pm.mm.MaintenanceModeManager;
import com.samsung.android.server.pm.user.BmodeUtils;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes3.dex */
public class UserManagerService extends IUserManager.Stub {
    static final int MAX_RECENTLY_REMOVED_IDS_SIZE = 100;
    static final int MAX_USER_ID = 21474;
    static final int MIN_USER_ID = 10;
    public static Context sContext;
    public static UserManagerService sInstance;
    public final String ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK;
    public ActivityManagerInternal mAmInternal;
    public IAppOpsService mAppOpsService;
    public final Object mAppRestrictionsLock;
    public final RestrictionsSet mAppliedUserRestrictions;
    public final RestrictionsSet mBaseUserRestrictions;
    public int mBootUser;
    public final CountDownLatch mBootUserLatch;
    public final RestrictionsSet mCachedEffectiveUserRestrictions;
    public final BroadcastReceiver mConfigurationChangeReceiver;
    public final Context mContext;
    public IDarManagerService mDarManagerService;
    public DevicePolicyManagerInternal mDevicePolicyManagerInternal;
    public final RestrictionsSet mDevicePolicyUserRestrictions;
    public final BroadcastReceiver mDisableQuietModeCallback;
    public boolean mForceEphemeralUsers;
    public final Bundle mGuestRestrictions;
    public final Handler mHandler;
    public boolean mIsDeviceManaged;
    public final SparseBooleanArray mIsUserManaged;
    public final Configuration mLastConfiguration;
    public final LocalService mLocalService;
    public final LockPatternUtils mLockPatternUtils;
    public MaintenanceModeManager mMaintenanceModeManager;
    public int mNextSerialNumber;
    public final AtomicReference mOwnerName;
    public final TypedValue mOwnerNameTypedValue;
    public final Object mPackagesLock;
    public final PackageManagerService mPm;
    public PackageManagerInternal mPmInternal;
    public final IBinder mQuietModeToken;
    public final LinkedList mRecentlyRemovedIds;
    public final SparseBooleanArray mRemovingUserIds;
    public final Object mRestrictionsLock;
    public SdpManagerImpl mSdpManager;
    public SdpManagerInternal mSdpManagerInternal;
    public final UserSystemPackageInstaller mSystemPackageInstaller;
    public boolean mUpdatingSystemUserMode;
    public final AtomicInteger mUser0Allocations;
    public final UserDataPreparer mUserDataPreparer;
    public int[] mUserIds;
    public int[] mUserIdsIncludingPreCreated;
    public final UserJourneyLogger mUserJourneyLogger;
    public final ArrayList mUserLifecycleListeners;
    public final File mUserListFile;
    public final IBinder mUserRestrictionToken;
    public final ArrayList mUserRestrictionsListeners;
    public final WatchedUserStates mUserStates;
    public int mUserTypeVersion;
    public final ArrayMap mUserTypes;
    public int mUserVersion;
    public final UserVisibilityMediator mUserVisibilityMediator;
    public final SparseArray mUsers;
    public final File mUsersDir;
    public final Object mUsersLock;
    public final PersonaManagerService sPersonaManager;
    public static final String USER_INFO_DIR = "system" + File.separator + "users";
    public static final int[] QUIET_MODE_RESTRICTED_APP_OPS = {0, 1, 2, 56, 79, 77, 116, 27, 26};

    public static boolean isAtMostOneFlag(int i) {
        return (i & (i + (-1))) == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class UserData {
        public String account;
        public UserInfo info;
        public boolean mIgnorePrepareStorageErrors;
        public long mLastEnteredForegroundTimeMillis;
        public long mLastRequestQuietModeEnabledMillis;
        public boolean persistSeedData;
        public String seedAccountName;
        public PersistableBundle seedAccountOptions;
        public String seedAccountType;
        public long startRealtime;
        public long unlockRealtime;
        public UserProperties userProperties;

        public void setLastRequestQuietModeEnabledMillis(long j) {
            this.mLastRequestQuietModeEnabledMillis = j;
        }

        public long getLastRequestQuietModeEnabledMillis() {
            return this.mLastRequestQuietModeEnabledMillis;
        }

        public boolean getIgnorePrepareStorageErrors() {
            return this.mIgnorePrepareStorageErrors;
        }

        public void setIgnorePrepareStorageErrors() {
            if (Build.VERSION.DEVICE_INITIAL_SDK_INT < 33) {
                this.mIgnorePrepareStorageErrors = true;
            } else {
                Slog.w("UserManagerService", "Not setting mIgnorePrepareStorageErrors to true since this is a new device");
            }
        }

        public void clearSeedAccountData() {
            this.seedAccountName = null;
            this.seedAccountType = null;
            this.seedAccountOptions = null;
            this.persistSeedData = false;
        }
    }

    /* renamed from: com.android.server.pm.UserManagerService$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK".equals(intent.getAction())) {
                final IntentSender intentSender = (IntentSender) intent.getParcelableExtra("android.intent.extra.INTENT", IntentSender.class);
                final int intExtra = intent.getIntExtra("android.intent.extra.USER_ID", -10000);
                BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.pm.UserManagerService$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        UserManagerService.AnonymousClass1.this.lambda$onReceive$0(intExtra, intentSender);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0(int i, IntentSender intentSender) {
            UserManagerService.this.setQuietModeEnabled(i, false, intentSender, null);
        }
    }

    /* loaded from: classes3.dex */
    public class DisableQuietModeUserUnlockedCallback extends IProgressListener.Stub {
        public final IntentSender mTarget;

        public void onProgress(int i, int i2, Bundle bundle) {
        }

        public void onStarted(int i, Bundle bundle) {
        }

        public DisableQuietModeUserUnlockedCallback(IntentSender intentSender) {
            Objects.requireNonNull(intentSender);
            this.mTarget = intentSender;
        }

        public void onFinished(int i, Bundle bundle) {
            UserManagerService.this.mHandler.post(new Runnable() { // from class: com.android.server.pm.UserManagerService$DisableQuietModeUserUnlockedCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    UserManagerService.DisableQuietModeUserUnlockedCallback.this.lambda$onFinished$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFinished$0() {
            try {
                UserManagerService.this.mContext.startIntentSender(this.mTarget, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                Slog.e("UserManagerService", "Failed to start the target in the callback", e);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WatchedUserStates {
        public final SparseIntArray states = new SparseIntArray();

        public WatchedUserStates() {
            invalidateIsUserUnlockedCache();
        }

        public int get(int i, int i2) {
            return this.states.indexOfKey(i) >= 0 ? this.states.get(i) : i2;
        }

        public void put(int i, int i2) {
            this.states.put(i, i2);
            invalidateIsUserUnlockedCache();
        }

        public void delete(int i) {
            this.states.delete(i);
            invalidateIsUserUnlockedCache();
        }

        public boolean has(int i) {
            return this.states.get(i, -10000) != -10000;
        }

        public String toString() {
            return this.states.toString();
        }

        public final void invalidateIsUserUnlockedCache() {
            UserManager.invalidateIsUserUnlockedCache();
        }
    }

    public static UserManagerService getInstance() {
        UserManagerService userManagerService;
        synchronized (UserManagerService.class) {
            userManagerService = sInstance;
        }
        return userManagerService;
    }

    /* loaded from: classes3.dex */
    public class LifeCycle extends SystemService {
        public UserManagerService mUms;

        public LifeCycle(Context context) {
            super(context);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.android.server.pm.UserManagerService, android.os.IBinder] */
        @Override // com.android.server.SystemService
        public void onStart() {
            ?? userManagerService = UserManagerService.getInstance();
            this.mUms = userManagerService;
            publishBinderService("user", userManagerService);
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int i) {
            if (i == 550) {
                this.mUms.cleanupPartialUsers();
                if (this.mUms.mPm.isDeviceUpgrading()) {
                    this.mUms.cleanupPreCreatedUsers();
                }
                this.mUms.registerStatsCallbacks();
            }
        }

        @Override // com.android.server.SystemService
        public void onUserStarting(SystemService.TargetUser targetUser) {
            boolean z;
            synchronized (this.mUms.mUsersLock) {
                UserData userDataLU = this.mUms.getUserDataLU(targetUser.getUserIdentifier());
                z = false;
                if (userDataLU != null) {
                    userDataLU.startRealtime = SystemClock.elapsedRealtime();
                    if (targetUser.getUserIdentifier() == 0 && targetUser.isFull()) {
                        this.mUms.setLastEnteredForegroundTimeToNow(userDataLU);
                    } else if (userDataLU.info.isManagedProfile() && userDataLU.info.isQuietModeEnabled()) {
                        z = true;
                    }
                    if (MaintenanceModeUtils.isMaintenanceModeUser(userDataLU.info)) {
                        this.mUms.mMaintenanceModeManager.onUserStartingAsync();
                    }
                }
            }
            if (z) {
                this.mUms.setAppOpsRestrictedForQuietMode(targetUser.getUserIdentifier(), true);
            }
        }

        @Override // com.android.server.SystemService
        public void onUserUnlocking(SystemService.TargetUser targetUser) {
            synchronized (this.mUms.mUsersLock) {
                UserData userDataLU = this.mUms.getUserDataLU(targetUser.getUserIdentifier());
                if (userDataLU != null) {
                    userDataLU.unlockRealtime = SystemClock.elapsedRealtime();
                }
            }
        }

        @Override // com.android.server.SystemService
        public void onUserUnlocked(SystemService.TargetUser targetUser) {
            synchronized (this.mUms.mUsersLock) {
                UserData userDataLU = this.mUms.getUserDataLU(targetUser.getUserIdentifier());
                if (userDataLU != null && MaintenanceModeUtils.isMaintenanceModeUser(userDataLU.info)) {
                    this.mUms.mMaintenanceModeManager.onUserUnlockedAsync();
                }
            }
        }

        @Override // com.android.server.SystemService
        public void onUserSwitching(SystemService.TargetUser targetUser, SystemService.TargetUser targetUser2) {
            synchronized (this.mUms.mUsersLock) {
                UserData userDataLU = this.mUms.getUserDataLU(targetUser2.getUserIdentifier());
                if (userDataLU != null) {
                    this.mUms.setLastEnteredForegroundTimeToNow(userDataLU);
                }
            }
        }

        @Override // com.android.server.SystemService
        public void onUserStopping(SystemService.TargetUser targetUser) {
            synchronized (this.mUms.mUsersLock) {
                UserData userDataLU = this.mUms.getUserDataLU(targetUser.getUserIdentifier());
                if (userDataLU != null) {
                    userDataLU.startRealtime = 0L;
                    userDataLU.unlockRealtime = 0L;
                }
            }
        }
    }

    public UserManagerService(Context context) {
        this(context, null, null, new Object(), context.getCacheDir(), null, null);
    }

    public UserManagerService(Context context, PackageManagerService packageManagerService, UserDataPreparer userDataPreparer, Object obj, PersonaManagerService personaManagerService) {
        this(context, packageManagerService, userDataPreparer, obj, Environment.getDataDirectory(), null, personaManagerService);
    }

    public UserManagerService(Context context, PackageManagerService packageManagerService, UserDataPreparer userDataPreparer, Object obj, File file, SparseArray sparseArray, PersonaManagerService personaManagerService) {
        this.mUsersLock = LockGuard.installNewLock(2);
        this.mRestrictionsLock = new Object();
        this.mAppRestrictionsLock = new Object();
        this.mUserRestrictionToken = new Binder();
        this.mQuietModeToken = new Binder();
        this.mDarManagerService = null;
        this.mSdpManager = null;
        this.mSdpManagerInternal = null;
        this.mBootUserLatch = new CountDownLatch(1);
        this.mBaseUserRestrictions = new RestrictionsSet();
        this.mCachedEffectiveUserRestrictions = new RestrictionsSet();
        this.mAppliedUserRestrictions = new RestrictionsSet();
        this.mDevicePolicyUserRestrictions = new RestrictionsSet();
        this.mGuestRestrictions = new Bundle();
        this.mRemovingUserIds = new SparseBooleanArray();
        this.mRecentlyRemovedIds = new LinkedList();
        this.mUserVersion = 0;
        this.mUserTypeVersion = 0;
        this.mIsUserManaged = new SparseBooleanArray();
        this.mUserRestrictionsListeners = new ArrayList();
        this.mUserLifecycleListeners = new ArrayList();
        this.mUserJourneyLogger = new UserJourneyLogger();
        this.ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK = "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK";
        this.mDisableQuietModeCallback = new AnonymousClass1();
        this.mOwnerName = new AtomicReference();
        this.mOwnerNameTypedValue = new TypedValue();
        this.mLastConfiguration = new Configuration();
        this.mConfigurationChangeReceiver = new BroadcastReceiver() { // from class: com.android.server.pm.UserManagerService.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if ("android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction())) {
                    UserManagerService.this.invalidateOwnerNameIfNecessary(context2.getResources(), false);
                }
            }
        };
        WatchedUserStates watchedUserStates = new WatchedUserStates();
        this.mUserStates = watchedUserStates;
        this.mBootUser = -10000;
        this.mMaintenanceModeManager = null;
        this.mContext = context;
        this.mPm = packageManagerService;
        this.mPackagesLock = obj;
        this.mUsers = sparseArray == null ? new SparseArray() : sparseArray;
        HandlerThread handlerThread = new HandlerThread("UserManagerHandler");
        handlerThread.start();
        MainHandler mainHandler = new MainHandler(handlerThread.getLooper());
        this.mHandler = mainHandler;
        this.mUserVisibilityMediator = new UserVisibilityMediator(mainHandler);
        this.mUserDataPreparer = userDataPreparer;
        ArrayMap userTypes = UserTypeFactory.getUserTypes();
        this.mUserTypes = userTypes;
        invalidateOwnerNameIfNecessary(context.getResources(), true);
        sContext = context;
        this.sPersonaManager = personaManagerService;
        synchronized (obj) {
            File file2 = new File(file, USER_INFO_DIR);
            this.mUsersDir = file2;
            file2.mkdirs();
            new File(file2, String.valueOf(0)).mkdirs();
            FileUtils.setPermissions(file2.toString(), 509, -1, -1);
            this.mUserListFile = new File(file2, "userlist.xml");
            initDefaultGuestRestrictions();
            readUserListLP();
            sInstance = this;
        }
        this.mSystemPackageInstaller = new UserSystemPackageInstaller(this, userTypes);
        LocalService localService = new LocalService();
        this.mLocalService = localService;
        LocalServices.addService(UserManagerInternal.class, localService);
        this.mLockPatternUtils = new LockPatternUtils(context);
        this.mMaintenanceModeManager = new MaintenanceModeManager(context, mainHandler, this);
        watchedUserStates.put(0, 0);
        this.mUser0Allocations = null;
        emulateSystemUserModeIfNeeded();
    }

    public void systemReady() {
        this.mAppOpsService = IAppOpsService.Stub.asInterface(ServiceManager.getService("appops"));
        synchronized (this.mRestrictionsLock) {
            applyUserRestrictionsLR(0);
        }
        this.mContext.registerReceiver(this.mDisableQuietModeCallback, new IntentFilter("com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"), null, this.mHandler);
        this.mContext.registerReceiver(this.mConfigurationChangeReceiver, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"), null, this.mHandler);
        MaintenanceModeManager.registerATCommandReceiver(this.mContext, this.mHandler);
        markEphemeralUsersForRemoval();
    }

    public UserManagerInternal getInternalForInjectorOnly() {
        return this.mLocalService;
    }

    public final void markEphemeralUsersForRemoval() {
        int i;
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i2 = 0; i2 < size; i2++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i2)).info;
                if (userInfo.isEphemeral() && !userInfo.preCreated && (i = userInfo.id) != 0) {
                    addRemovingUserIdLocked(i);
                    userInfo.partial = true;
                    userInfo.flags |= 64;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0069 A[Catch: all -> 0x00b0, TryCatch #0 {, blocks: (B:4:0x0008, B:6:0x0012, B:9:0x001d, B:11:0x0023, B:13:0x0029, B:15:0x002f, B:18:0x0050, B:20:0x0054, B:23:0x0070, B:24:0x0058, B:26:0x005c, B:28:0x0069, B:29:0x006e, B:35:0x004a, B:37:0x0073), top: B:3:0x0008, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void cleanupPartialUsers() {
        /*
            r10 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.Object r1 = r10.mUsersLock
            monitor-enter(r1)
            android.util.SparseArray r2 = r10.mUsers     // Catch: java.lang.Throwable -> Lb0
            int r2 = r2.size()     // Catch: java.lang.Throwable -> Lb0
            r3 = 0
            r4 = r3
        L10:
            if (r4 >= r2) goto L73
            android.util.SparseArray r5 = r10.mUsers     // Catch: java.lang.Throwable -> Lb0
            java.lang.Object r5 = r5.valueAt(r4)     // Catch: java.lang.Throwable -> Lb0
            com.android.server.pm.UserManagerService$UserData r5 = (com.android.server.pm.UserManagerService.UserData) r5     // Catch: java.lang.Throwable -> Lb0
            android.content.pm.UserInfo r5 = r5.info     // Catch: java.lang.Throwable -> Lb0
            r6 = 1
            boolean r7 = r5.isManagedProfile()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            if (r7 == 0) goto L4d
            boolean r7 = r5.isEnabled()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            if (r7 == 0) goto L2f
            boolean r7 = r5.isInitialized()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            if (r7 != 0) goto L4d
        L2f:
            java.lang.String r7 = "UserManagerService"
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            r8.<init>()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            java.lang.String r9 = "cleanupPartialUsers. set partial user. ID : "
            r8.append(r9)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            int r9 = r5.id     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            r8.append(r9)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            android.util.Slog.i(r7, r8)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> Lb0
            r7 = r6
            goto L4e
        L49:
            r7 = move-exception
            r7.printStackTrace()     // Catch: java.lang.Throwable -> Lb0
        L4d:
            r7 = r3
        L4e:
            if (r7 != 0) goto L58
            boolean r7 = r5.partial     // Catch: java.lang.Throwable -> Lb0
            if (r7 != 0) goto L58
            boolean r7 = r5.guestToRemove     // Catch: java.lang.Throwable -> Lb0
            if (r7 == 0) goto L70
        L58:
            int r7 = r5.id     // Catch: java.lang.Throwable -> Lb0
            if (r7 == 0) goto L70
            r0.add(r5)     // Catch: java.lang.Throwable -> Lb0
            android.util.SparseBooleanArray r7 = r10.mRemovingUserIds     // Catch: java.lang.Throwable -> Lb0
            int r8 = r5.id     // Catch: java.lang.Throwable -> Lb0
            boolean r7 = r7.get(r8)     // Catch: java.lang.Throwable -> Lb0
            if (r7 != 0) goto L6e
            int r7 = r5.id     // Catch: java.lang.Throwable -> Lb0
            r10.addRemovingUserIdLocked(r7)     // Catch: java.lang.Throwable -> Lb0
        L6e:
            r5.partial = r6     // Catch: java.lang.Throwable -> Lb0
        L70:
            int r4 = r4 + 1
            goto L10
        L73:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb0
            int r1 = r0.size()
        L78:
            if (r3 >= r1) goto Laf
            java.lang.Object r2 = r0.get(r3)
            android.content.pm.UserInfo r2 = (android.content.pm.UserInfo) r2
            java.lang.String r4 = "UserManagerService"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Removing partially created user "
            r5.append(r6)
            int r6 = r2.id
            r5.append(r6)
            java.lang.String r6 = " (name="
            r5.append(r6)
            java.lang.String r6 = r2.name
            r5.append(r6)
            java.lang.String r6 = ")"
            r5.append(r6)
            java.lang.String r5 = r5.toString()
            android.util.Slog.w(r4, r5)
            int r2 = r2.id
            r10.removeUserState(r2)
            int r3 = r3 + 1
            goto L78
        Laf:
            return
        Lb0:
            r10 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> Lb0
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.cleanupPartialUsers():void");
    }

    public final void cleanupPreCreatedUsers() {
        ArrayList arrayList;
        int i;
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            arrayList = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i2)).info;
                if (userInfo.preCreated) {
                    arrayList.add(userInfo);
                    addRemovingUserIdLocked(userInfo.id);
                    userInfo.flags |= 64;
                    userInfo.partial = true;
                }
            }
        }
        int size2 = arrayList.size();
        for (i = 0; i < size2; i++) {
            UserInfo userInfo2 = (UserInfo) arrayList.get(i);
            Slog.i("UserManagerService", "Removing pre-created user " + userInfo2.id);
            removeUserState(userInfo2.id);
        }
    }

    public String getUserAccount(int i) {
        String str;
        checkManageUserAndAcrossUsersFullPermission("get user account");
        synchronized (this.mUsersLock) {
            str = ((UserData) this.mUsers.get(i)).account;
        }
        return str;
    }

    public void setUserAccount(int i, String str) {
        checkManageUserAndAcrossUsersFullPermission("set user account");
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                UserData userData = (UserData) this.mUsers.get(i);
                if (userData == null) {
                    Slog.e("UserManagerService", "User not found for setting user account: u" + i);
                    return;
                }
                if (Objects.equals(userData.account, str)) {
                    userData = null;
                } else {
                    userData.account = str;
                }
                if (userData != null) {
                    writeUserLP(userData);
                }
            }
        }
    }

    public UserInfo getPrimaryUser() {
        checkManageUsersPermission("query users");
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i = 0; i < size; i++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i)).info;
                if (userInfo.isPrimary() && !this.mRemovingUserIds.get(userInfo.id)) {
                    return userInfo;
                }
            }
            return null;
        }
    }

    public int getMainUserId() {
        checkQueryOrCreateUsersPermission("get main user id");
        return getMainUserIdUnchecked();
    }

    public final int getMainUserIdUnchecked() {
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i = 0; i < size; i++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i)).info;
                if (userInfo.isMain() && !this.mRemovingUserIds.get(userInfo.id)) {
                    return userInfo.id;
                }
            }
            return -10000;
        }
    }

    public void setBootUser(int i) {
        checkCreateUsersPermission("Set boot user");
        synchronized (this.mUsersLock) {
            Slogf.i("UserManagerService", "setBootUser %d", Integer.valueOf(i));
            this.mBootUser = i;
        }
        this.mBootUserLatch.countDown();
    }

    public int getBootUser() {
        checkCreateUsersPermission("Get boot user");
        try {
            return getBootUserUnchecked();
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    public final int getBootUserUnchecked() {
        synchronized (this.mUsersLock) {
            int i = this.mBootUser;
            if (i != -10000) {
                UserData userData = (UserData) this.mUsers.get(i);
                if (userData != null && userData.info.supportsSwitchToByUser()) {
                    Slogf.i("UserManagerService", "Using provided boot user: %d", Integer.valueOf(this.mBootUser));
                    return this.mBootUser;
                }
                Slogf.w("UserManagerService", "Provided boot user cannot be switched to: %d", Integer.valueOf(this.mBootUser));
            }
            if (!isHeadlessSystemUserMode()) {
                return 0;
            }
            int previousFullUserToEnterForeground = getPreviousFullUserToEnterForeground();
            if (previousFullUserToEnterForeground != -10000) {
                Slogf.i("UserManagerService", "Boot user is previous user %d", Integer.valueOf(previousFullUserToEnterForeground));
                return previousFullUserToEnterForeground;
            }
            synchronized (this.mUsersLock) {
                int size = this.mUsers.size();
                for (int i2 = 0; i2 < size; i2++) {
                    UserData userData2 = (UserData) this.mUsers.valueAt(i2);
                    if (userData2.info.supportsSwitchToByUser()) {
                        int i3 = userData2.info.id;
                        Slogf.i("UserManagerService", "Boot user is first switchable user %d", Integer.valueOf(i3));
                        return i3;
                    }
                }
                throw new UserManager.CheckedUserOperationException("No switchable users found", 1);
            }
        }
    }

    public int getPreviousFullUserToEnterForeground() {
        int i;
        checkQueryOrCreateUsersPermission("get previous user");
        int currentUserId = getCurrentUserId();
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            i = -10000;
            long j = 0;
            for (int i2 = 0; i2 < size; i2++) {
                UserData userData = (UserData) this.mUsers.valueAt(i2);
                UserInfo userInfo = userData.info;
                int i3 = userInfo.id;
                if (i3 != currentUserId && userInfo.isFull() && !userData.info.partial && !this.mRemovingUserIds.get(i3)) {
                    long j2 = userData.mLastEnteredForegroundTimeMillis;
                    if (j2 > j) {
                        j = j2;
                        i = i3;
                    }
                }
            }
        }
        return i;
    }

    public List getUsers(boolean z) {
        return getUsers(true, z, true);
    }

    public List getUsers(boolean z, boolean z2, boolean z3) {
        checkCreateUsersPermission("query users");
        return getUsersInternal(z, z2, z3);
    }

    public final List getUsersInternal(boolean z, boolean z2, boolean z3) {
        ArrayList arrayList;
        synchronized (this.mUsersLock) {
            arrayList = new ArrayList(this.mUsers.size());
            int size = this.mUsers.size();
            for (int i = 0; i < size; i++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i)).info;
                if ((!z || !userInfo.partial) && ((!z2 || !this.mRemovingUserIds.get(userInfo.id)) && (!z3 || !userInfo.preCreated))) {
                    arrayList.add(userWithName(userInfo));
                }
            }
        }
        return arrayList;
    }

    public List getProfiles(int i, boolean z) {
        boolean hasCreateUsersPermission;
        List profilesLU;
        if (i != UserHandle.getCallingUserId()) {
            checkQueryOrCreateUsersPermission("getting profiles related to user " + i);
            hasCreateUsersPermission = true;
        } else {
            hasCreateUsersPermission = hasCreateUsersPermission();
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            synchronized (this.mUsersLock) {
                profilesLU = getProfilesLU(i, null, z, hasCreateUsersPermission);
            }
            return profilesLU;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public int[] getProfileIds(int i, boolean z) {
        return getProfileIds(i, null, z);
    }

    public int[] getProfileIds(int i, String str, boolean z) {
        long clearCallingIdentity;
        int[] array;
        if (i != UserHandle.getCallingUserId()) {
            checkQueryOrCreateUsersPermission("getting profiles related to user " + i);
        }
        if (this.sPersonaManager.isWorkTabSupported()) {
            clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                synchronized (this.mUsersLock) {
                    IntArray profileIdsLU = getProfileIdsLU(i, str, z);
                    int i2 = 0;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= profileIdsLU.size()) {
                            break;
                        }
                        if (profileIdsLU.get(i3) >= 150) {
                            i2 = profileIdsLU.get(i3);
                            break;
                        }
                        i3++;
                    }
                    if (i2 >= 150) {
                        profileIdsLU.remove(profileIdsLU.indexOf(i2));
                        return profileIdsLU.toArray();
                    }
                }
            } finally {
            }
        }
        clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            synchronized (this.mUsersLock) {
                array = getProfileIdsLU(i, str, z).toArray();
            }
            return array;
        } finally {
        }
    }

    public final List getProfilesLU(int i, String str, boolean z, boolean z2) {
        UserInfo userWithName;
        IntArray profileIdsLU = getProfileIdsLU(i, str, z);
        ArrayList arrayList = new ArrayList(profileIdsLU.size());
        for (int i2 = 0; i2 < profileIdsLU.size(); i2++) {
            UserInfo userInfo = ((UserData) this.mUsers.get(profileIdsLU.get(i2))).info;
            if (!z2) {
                userWithName = new UserInfo(userInfo);
                userWithName.name = null;
                userWithName.iconPath = null;
            } else {
                userWithName = userWithName(userInfo);
            }
            arrayList.add(userWithName);
        }
        return arrayList;
    }

    public final IntArray getProfileIdsLU(int i, String str, boolean z) {
        UserInfo userInfoLU = getUserInfoLU(i);
        IntArray intArray = new IntArray(this.mUsers.size());
        if (userInfoLU == null) {
            return intArray;
        }
        int size = this.mUsers.size();
        for (int i2 = 0; i2 < size; i2++) {
            UserInfo userInfo = ((UserData) this.mUsers.valueAt(i2)).info;
            if (isProfileOf(userInfoLU, userInfo) && ((!z || userInfo.isEnabled()) && !this.mRemovingUserIds.get(userInfo.id) && !userInfo.partial && (str == null || str.equals(userInfo.userType)))) {
                intArray.add(userInfo.id);
            }
        }
        return intArray;
    }

    public int getCredentialOwnerProfile(int i) {
        checkManageUsersPermission("get the credential owner");
        if (!this.mLockPatternUtils.isSeparateProfileChallengeEnabled(i)) {
            synchronized (this.mUsersLock) {
                UserInfo profileParentLU = getProfileParentLU(i);
                if (profileParentLU != null) {
                    return profileParentLU.id;
                }
            }
        }
        return i;
    }

    public boolean isSameProfileGroup(int i, int i2) {
        if (i == i2) {
            return true;
        }
        checkQueryUsersPermission("check if in the same profile group");
        return isSameProfileGroupNoChecks(i, i2);
    }

    public final boolean isSameProfileGroupNoChecks(int i, int i2) {
        int i3;
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            if (userInfoLU != null && userInfoLU.profileGroupId != -10000) {
                UserInfo userInfoLU2 = getUserInfoLU(i2);
                if (userInfoLU2 != null && (i3 = userInfoLU2.profileGroupId) != -10000) {
                    return userInfoLU.profileGroupId == i3;
                }
                return false;
            }
            return false;
        }
    }

    public UserInfo getProfileParent(int i) {
        UserInfo profileParentLU;
        if (!hasManageUsersOrPermission("android.permission.INTERACT_ACROSS_USERS")) {
            throw new SecurityException("You need MANAGE_USERS or INTERACT_ACROSS_USERS permission to get the profile parent");
        }
        synchronized (this.mUsersLock) {
            profileParentLU = getProfileParentLU(i);
        }
        return profileParentLU;
    }

    public int getProfileParentId(int i) {
        checkManageUsersPermission("get the profile parent");
        return getProfileParentIdUnchecked(i);
    }

    public final int getProfileParentIdUnchecked(int i) {
        synchronized (this.mUsersLock) {
            UserInfo profileParentLU = getProfileParentLU(i);
            if (profileParentLU == null) {
                return i;
            }
            return profileParentLU.id;
        }
    }

    public final UserInfo getProfileParentLU(int i) {
        int i2;
        UserInfo userInfoLU = getUserInfoLU(i);
        if (userInfoLU == null || (i2 = userInfoLU.profileGroupId) == i || i2 == -10000) {
            return null;
        }
        return getUserInfoLU(i2);
    }

    public static boolean isProfileOf(UserInfo userInfo, UserInfo userInfo2) {
        int i;
        return userInfo.id == userInfo2.id || ((i = userInfo.profileGroupId) != -10000 && i == userInfo2.profileGroupId);
    }

    public final void broadcastProfileAvailabilityChanges(UserHandle userHandle, UserHandle userHandle2, boolean z) {
        Intent intent = new Intent();
        if (z) {
            intent.setAction("android.intent.action.MANAGED_PROFILE_UNAVAILABLE");
        } else {
            intent.setAction("android.intent.action.MANAGED_PROFILE_AVAILABLE");
        }
        intent.putExtra("android.intent.extra.QUIET_MODE", z);
        intent.putExtra("android.intent.extra.USER", userHandle);
        intent.putExtra("android.intent.extra.user_handle", userHandle.getIdentifier());
        getDevicePolicyManagerInternal().broadcastIntentToManifestReceivers(intent, userHandle2, true);
        intent.addFlags(1342177280);
        this.mContext.sendBroadcastAsUser(intent, userHandle2, null, new BroadcastOptions().setDeferralPolicy(2).setDeliveryGroupPolicy(1).setDeliveryGroupMatchingKey("android.intent.action.MANAGED_PROFILE_AVAILABLE", String.valueOf(userHandle.getIdentifier())).toBundle());
    }

    public boolean requestQuietModeEnabled(String str, boolean z, int i, IntentSender intentSender, int i2) {
        Objects.requireNonNull(str);
        if (z && intentSender != null) {
            throw new IllegalArgumentException("target should only be specified when we are disabling quiet mode.");
        }
        boolean z2 = (i2 & 2) != 0;
        boolean z3 = (i2 & 1) != 0;
        if (z2 && z3) {
            throw new IllegalArgumentException("invalid flags: " + i2);
        }
        ensureCanModifyQuietMode(str, Binder.getCallingUid(), i, intentSender != null, z2);
        if (z3 && str.equals(getPackageManagerInternal().getSystemUiServiceComponent().getPackageName())) {
            throw new SecurityException("SystemUI is not allowed to set QUIET_MODE_DISABLE_ONLY_IF_CREDENTIAL_NOT_REQUIRED");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (z) {
                setQuietModeEnabled(i, true, intentSender, str);
                return true;
            }
            boolean isManagedProfileWithUnifiedChallenge = this.mLockPatternUtils.isManagedProfileWithUnifiedChallenge(i);
            if (isManagedProfileWithUnifiedChallenge && (!((KeyguardManager) this.mContext.getSystemService(KeyguardManager.class)).isDeviceLocked(this.mLocalService.getProfileParentId(i)) || z3)) {
                this.mLockPatternUtils.tryUnlockWithCachedUnifiedChallenge(i);
            }
            if (!((z2 || !this.mLockPatternUtils.isSecure(i) || (isManagedProfileWithUnifiedChallenge && StorageManager.isUserKeyUnlocked(i))) ? false : true)) {
                setQuietModeEnabled(i, false, intentSender, str);
                return true;
            }
            if (z3) {
                return false;
            }
            showConfirmCredentialToDisableQuietMode(i, intentSender);
            return false;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void ensureCanModifyQuietMode(String str, int i, int i2, boolean z, boolean z2) {
        verifyCallingPackage(str, i);
        if (hasManageUsersPermission()) {
            return;
        }
        if (z) {
            throw new SecurityException("MANAGE_USERS permission is required to start intent after disabling quiet mode.");
        }
        if (z2) {
            throw new SecurityException("MANAGE_USERS permission is required to disable quiet mode without credentials.");
        }
        if (!isSameProfileGroupNoChecks(UserHandle.getUserId(i), i2)) {
            throw new SecurityException("MANAGE_USERS permission is required to modify quiet mode for a different profile group.");
        }
        if (hasPermissionGranted("android.permission.MODIFY_QUIET_MODE", i)) {
            return;
        }
        ShortcutServiceInternal shortcutServiceInternal = (ShortcutServiceInternal) LocalServices.getService(ShortcutServiceInternal.class);
        if (shortcutServiceInternal == null || !shortcutServiceInternal.isForegroundDefaultLauncher(str, i)) {
            throw new SecurityException("Can't modify quiet mode, caller is neither foreground default launcher nor has MANAGE_USERS/MODIFY_QUIET_MODE permission");
        }
    }

    public final void setQuietModeEnabled(int i, boolean z, IntentSender intentSender, String str) {
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            UserInfo profileParentLU = getProfileParentLU(i);
            if (userInfoLU == null || !userInfoLU.isManagedProfile()) {
                throw new IllegalArgumentException("User " + i + " is not a profile");
            }
            if (userInfoLU.isQuietModeEnabled() == z) {
                Slog.i("UserManagerService", "Quiet mode is already " + z);
                return;
            }
            userInfoLU.flags ^= 128;
            UserData userDataLU = getUserDataLU(userInfoLU.id);
            synchronized (this.mPackagesLock) {
                writeUserLP(userDataLU);
            }
            if (getDevicePolicyManagerInternal().isKeepProfilesRunningEnabled() && !SemPersonaManager.isSecureFolderId(i)) {
                getPackageManagerInternal().setPackagesSuspendedForQuietMode(i, z);
                setAppOpsRestrictedForQuietMode(i, z);
                if (z && !this.mLockPatternUtils.isManagedProfileWithUnifiedChallenge(i)) {
                    ((TrustManager) this.mContext.getSystemService(TrustManager.class)).setDeviceLockedForUser(i, true);
                }
                if (!z && intentSender != null) {
                    try {
                        this.mContext.startIntentSender(intentSender, null, 0, 0, 0);
                    } catch (IntentSender.SendIntentException e) {
                        Slog.e("UserManagerService", "Failed to start intent after disabling quiet mode", e);
                    }
                }
            } else {
                try {
                    if (z) {
                        ActivityManager.getService().stopUser(i, true, (IStopUserCallback) null);
                        ((ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class)).killForegroundAppsForUser(i);
                    } else {
                        ActivityManager.getService().startProfileWithListener(i, intentSender != null ? new DisableQuietModeUserUnlockedCallback(intentSender) : null);
                    }
                } catch (RemoteException e2) {
                    e2.rethrowAsRuntimeException();
                }
            }
            logQuietModeEnabled(i, z, str);
            broadcastProfileAvailabilityChanges(userInfoLU.getUserHandle(), profileParentLU.getUserHandle(), z);
        }
    }

    public final void setAppOpsRestrictedForQuietMode(int i, boolean z) {
        for (int i2 : QUIET_MODE_RESTRICTED_APP_OPS) {
            try {
                this.mAppOpsService.setUserRestriction(i2, z, this.mQuietModeToken, i, (PackageTagsList) null);
            } catch (RemoteException e) {
                Slog.w("UserManagerService", "Unable to limit app ops", e);
            }
        }
    }

    public final void logQuietModeEnabled(int i, boolean z, String str) {
        UserData userDataLU;
        long j;
        Slogf.i("UserManagerService", "requestQuietModeEnabled called by package %s, with enableQuietMode %b.", str, Boolean.valueOf(z));
        synchronized (this.mUsersLock) {
            userDataLU = getUserDataLU(i);
        }
        if (userDataLU == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (userDataLU.getLastRequestQuietModeEnabledMillis() != 0) {
            j = userDataLU.getLastRequestQuietModeEnabledMillis();
        } else {
            j = userDataLU.info.creationTime;
        }
        DevicePolicyEventLogger.createEvent(55).setStrings(new String[]{str}).setBoolean(z).setTimePeriod(currentTimeMillis - j).write();
        userDataLU.setLastRequestQuietModeEnabledMillis(currentTimeMillis);
    }

    public boolean isQuietModeEnabled(int i) {
        UserInfo userInfoLU;
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                userInfoLU = getUserInfoLU(i);
            }
            if (userInfoLU != null && userInfoLU.isManagedProfile()) {
                return userInfoLU.isQuietModeEnabled();
            }
            return false;
        }
    }

    public final void showConfirmCredentialToDisableQuietMode(int i, IntentSender intentSender) {
        Intent createConfirmDeviceCredentialIntent = ((KeyguardManager) this.mContext.getSystemService("keyguard")).createConfirmDeviceCredentialIntent(null, null, i);
        if (createConfirmDeviceCredentialIntent == null) {
            return;
        }
        Intent intent = new Intent("com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK");
        if (intentSender != null) {
            intent.putExtra("android.intent.extra.INTENT", intentSender);
        }
        intent.putExtra("android.intent.extra.USER_ID", i);
        intent.setPackage(this.mContext.getPackageName());
        intent.addFlags(268435456);
        createConfirmDeviceCredentialIntent.putExtra("android.intent.extra.INTENT", PendingIntent.getBroadcast(this.mContext, 0, intent, 1409286144).getIntentSender());
        createConfirmDeviceCredentialIntent.setFlags(276824064);
        this.mContext.startActivityAsUser(createConfirmDeviceCredentialIntent, UserHandle.of(getProfileParentIdUnchecked(i)));
    }

    public void setUserEnabled(int i) {
        UserInfo userInfoLU;
        boolean z;
        checkManageUsersPermission("enable user");
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                userInfoLU = getUserInfoLU(i);
                if (userInfoLU == null || userInfoLU.isEnabled()) {
                    z = false;
                } else {
                    userInfoLU.flags ^= 64;
                    writeUserLP(getUserDataLU(userInfoLU.id));
                    z = true;
                }
            }
        }
        if (z && userInfoLU != null && userInfoLU.isProfile()) {
            sendProfileAddedBroadcast(userInfoLU.profileGroupId, userInfoLU.id);
        }
    }

    public void setUserAdmin(int i) {
        UserInfo userInfoLU;
        checkManageUserAndAcrossUsersFullPermission("set user admin");
        this.mUserJourneyLogger.logUserJourneyBegin(i, 7);
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                userInfoLU = getUserInfoLU(i);
            }
            if (userInfoLU == null) {
                this.mUserJourneyLogger.logNullUserJourneyError(7, getCurrentUserId(), i, "", -1);
            } else {
                if (userInfoLU.isAdmin()) {
                    this.mUserJourneyLogger.logUserJourneyFinishWithError(getCurrentUserId(), userInfoLU, 7, 5);
                    return;
                }
                userInfoLU.flags ^= 2;
                writeUserLP(getUserDataLU(userInfoLU.id));
                this.mUserJourneyLogger.logUserJourneyFinishWithError(getCurrentUserId(), userInfoLU, 7, -1);
            }
        }
    }

    public void revokeUserAdmin(int i) {
        checkManageUserAndAcrossUsersFullPermission("revoke admin privileges");
        this.mUserJourneyLogger.logUserJourneyBegin(i, 8);
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                UserData userDataLU = getUserDataLU(i);
                if (userDataLU == null) {
                    this.mUserJourneyLogger.logNullUserJourneyError(8, getCurrentUserId(), i, "", -1);
                    return;
                }
                if (!userDataLU.info.isAdmin()) {
                    this.mUserJourneyLogger.logUserJourneyFinishWithError(getCurrentUserId(), userDataLU.info, 8, 6);
                    return;
                }
                userDataLU.info.flags ^= 2;
                writeUserLP(userDataLU);
                this.mUserJourneyLogger.logUserJourneyFinishWithError(getCurrentUserId(), userDataLU.info, 8, -1);
            }
        }
    }

    public void evictCredentialEncryptionKey(int i) {
        checkManageUsersPermission("evict CE key");
        IActivityManager iActivityManager = ActivityManagerNative.getDefault();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                iActivityManager.restartUserInBackground(i, isProfileUnchecked(i) ? 3 : 2);
            } catch (RemoteException e) {
                throw e.rethrowAsRuntimeException();
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean isUserOfType(int i, String str) {
        checkQueryOrCreateUsersPermission("check user type");
        return str != null && str.equals(getUserTypeNoChecks(i));
    }

    public final String getUserTypeNoChecks(int i) {
        String str;
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            str = userInfoLU != null ? userInfoLU.userType : null;
        }
        return str;
    }

    public final UserTypeDetails getUserTypeDetailsNoChecks(int i) {
        String userTypeNoChecks = getUserTypeNoChecks(i);
        if (userTypeNoChecks != null) {
            return (UserTypeDetails) this.mUserTypes.get(userTypeNoChecks);
        }
        return null;
    }

    public final UserTypeDetails getUserTypeDetails(UserInfo userInfo) {
        String str = userInfo != null ? userInfo.userType : null;
        if (str != null) {
            return (UserTypeDetails) this.mUserTypes.get(str);
        }
        return null;
    }

    public UserInfo getUserInfo(int i) {
        UserInfo userWithName;
        checkQueryOrCreateUsersPermission("query user");
        if (UserManager.isVirtualUserId(i)) {
            return new UserInfo(i, (String) null, (String) null, Integer.MIN_VALUE);
        }
        synchronized (this.mUsersLock) {
            userWithName = userWithName(getUserInfoLU(i));
        }
        return userWithName;
    }

    public final UserInfo userWithName(UserInfo userInfo) {
        String guestName;
        if (userInfo != null && userInfo.name == null) {
            if (userInfo.id == 0) {
                guestName = getOwnerName();
            } else if (userInfo.isMain()) {
                guestName = getOwnerName();
            } else {
                guestName = userInfo.isGuest() ? getGuestName() : null;
            }
            if (guestName != null) {
                UserInfo userInfo2 = new UserInfo(userInfo);
                userInfo2.name = guestName;
                return userInfo2;
            }
        }
        return userInfo;
    }

    public boolean isUserTypeSubtypeOfFull(String str) {
        UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(str);
        return userTypeDetails != null && userTypeDetails.isFull();
    }

    public boolean isUserTypeSubtypeOfProfile(String str) {
        UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(str);
        return userTypeDetails != null && userTypeDetails.isProfile();
    }

    public boolean isUserTypeSubtypeOfSystem(String str) {
        UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(str);
        return userTypeDetails != null && userTypeDetails.isSystem();
    }

    public UserProperties getUserPropertiesCopy(int i) {
        checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(i, "getUserProperties");
        UserProperties userPropertiesInternal = getUserPropertiesInternal(i);
        if (userPropertiesInternal != null) {
            return new UserProperties(userPropertiesInternal, Binder.getCallingUid() == 1000, hasManageUsersPermission(), hasQueryUsersPermission());
        }
        throw new IllegalArgumentException("Cannot access properties for user " + i);
    }

    public final UserProperties getUserPropertiesInternal(int i) {
        synchronized (this.mUsersLock) {
            UserData userDataLU = getUserDataLU(i);
            if (userDataLU == null) {
                return null;
            }
            return userDataLU.userProperties;
        }
    }

    public boolean hasBadge(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "hasBadge");
        UserTypeDetails userTypeDetailsNoChecks = getUserTypeDetailsNoChecks(i);
        return userTypeDetailsNoChecks != null && userTypeDetailsNoChecks.hasBadge();
    }

    public int getUserBadgeLabelResId(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "getUserBadgeLabelResId");
        UserInfo userInfoNoChecks = getUserInfoNoChecks(i);
        UserTypeDetails userTypeDetails = getUserTypeDetails(userInfoNoChecks);
        if (userInfoNoChecks == null || userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e("UserManagerService", "Requested badge label for non-badged user " + i);
            return 0;
        }
        return userTypeDetails.getBadgeLabel(userInfoNoChecks.profileBadge);
    }

    public int getUserBadgeColorResId(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "getUserBadgeColorResId");
        UserInfo userInfoNoChecks = getUserInfoNoChecks(i);
        UserTypeDetails userTypeDetails = getUserTypeDetails(userInfoNoChecks);
        if (userInfoNoChecks == null || userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e("UserManagerService", "Requested badge dark color for non-badged user " + i);
            return 0;
        }
        return userTypeDetails.getBadgeColor(userInfoNoChecks.profileBadge);
    }

    public int getUserBadgeDarkColorResId(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "getUserBadgeDarkColorResId");
        UserInfo userInfoNoChecks = getUserInfoNoChecks(i);
        UserTypeDetails userTypeDetails = getUserTypeDetails(userInfoNoChecks);
        if (userInfoNoChecks == null || userTypeDetails == null || !userTypeDetails.hasBadge()) {
            Slog.e("UserManagerService", "Requested badge color for non-badged user " + i);
            return 0;
        }
        return userTypeDetails.getDarkThemeBadgeColor(userInfoNoChecks.profileBadge);
    }

    public int getUserIconBadgeResId(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "getUserIconBadgeResId");
        UserTypeDetails userTypeDetailsNoChecks = getUserTypeDetailsNoChecks(i);
        if (userTypeDetailsNoChecks == null || !userTypeDetailsNoChecks.hasBadge()) {
            Slog.e("UserManagerService", "Requested icon badge for non-badged user " + i);
            return 0;
        }
        return userTypeDetailsNoChecks.getIconBadge();
    }

    public int getUserBadgeResId(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "getUserBadgeResId");
        UserTypeDetails userTypeDetailsNoChecks = getUserTypeDetailsNoChecks(i);
        if (userTypeDetailsNoChecks == null || !userTypeDetailsNoChecks.hasBadge()) {
            Slog.e("UserManagerService", "Requested badge for non-badged user " + i);
            return 0;
        }
        return userTypeDetailsNoChecks.getBadgePlain();
    }

    public int getUserBadgeNoBackgroundResId(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "getUserBadgeNoBackgroundResId");
        UserTypeDetails userTypeDetailsNoChecks = getUserTypeDetailsNoChecks(i);
        if (userTypeDetailsNoChecks == null || !userTypeDetailsNoChecks.hasBadge()) {
            Slog.e("UserManagerService", "Requested badge (no background) for non-badged user " + i);
            return 0;
        }
        return userTypeDetailsNoChecks.getBadgeNoBackground();
    }

    public boolean isProfile(int i) {
        checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(i, "isProfile");
        return isProfileUnchecked(i);
    }

    public final boolean isProfileUnchecked(int i) {
        boolean z;
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            z = userInfoLU != null && userInfoLU.isProfile();
        }
        return z;
    }

    public String getProfileType(int i) {
        checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(i, "getProfileType");
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            if (userInfoLU != null) {
                return userInfoLU.isProfile() ? userInfoLU.userType : "";
            }
            return null;
        }
    }

    public boolean isUserUnlockingOrUnlocked(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "isUserUnlockingOrUnlocked");
        return this.mLocalService.isUserUnlockingOrUnlocked(i);
    }

    public boolean isUserUnlocked(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "isUserUnlocked");
        return this.mLocalService.isUserUnlocked(i);
    }

    public boolean isUserRunning(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "isUserRunning");
        return this.mLocalService.isUserRunning(i);
    }

    public boolean isUserForeground(int i) {
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId == i || hasManageUsersOrPermission("android.permission.INTERACT_ACROSS_USERS")) {
            return i == getCurrentUserId();
        }
        throw new SecurityException("Caller from user " + callingUserId + " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user (" + i + ") is running in the foreground");
    }

    public boolean isUserVisible(int i) {
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId != i && !hasManageUsersOrPermission("android.permission.INTERACT_ACROSS_USERS")) {
            throw new SecurityException("Caller from user " + callingUserId + " needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to check if another user (" + i + ") is visible");
        }
        return this.mUserVisibilityMediator.isUserVisible(i);
    }

    public Pair getCurrentAndTargetUserIds() {
        ActivityManagerInternal activityManagerInternal = getActivityManagerInternal();
        if (activityManagerInternal == null) {
            Slog.w("UserManagerService", "getCurrentAndTargetUserId() called too early, ActivityManagerInternal is not set yet");
            return new Pair(-10000, -10000);
        }
        return activityManagerInternal.getCurrentAndTargetUserIds();
    }

    public int getCurrentUserId() {
        ActivityManagerInternal activityManagerInternal = getActivityManagerInternal();
        if (activityManagerInternal == null) {
            Slog.w("UserManagerService", "getCurrentUserId() called too early, ActivityManagerInternal is not set yet");
            return -10000;
        }
        return activityManagerInternal.getCurrentUserId();
    }

    public boolean isCurrentUserOrRunningProfileOfCurrentUser(int i) {
        int currentUserId = getCurrentUserId();
        if (currentUserId == i) {
            return true;
        }
        if (isProfileUnchecked(i) && getProfileParentIdUnchecked(i) == currentUserId) {
            return isUserRunning(i);
        }
        return false;
    }

    public boolean isUserVisibleOnDisplay(int i, int i2) {
        return this.mUserVisibilityMediator.isUserVisible(i, i2);
    }

    public int[] getVisibleUsers() {
        if (!hasManageUsersOrPermission("android.permission.INTERACT_ACROSS_USERS")) {
            throw new SecurityException("Caller needs MANAGE_USERS or INTERACT_ACROSS_USERS permission to get list of visible users");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mUserVisibilityMediator.getVisibleUsers().toArray();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public int getMainDisplayIdAssignedToUser() {
        return this.mUserVisibilityMediator.getMainDisplayAssignedToUser(UserHandle.getUserId(Binder.getCallingUid()));
    }

    public String getUserName() {
        String str;
        int callingUid = Binder.getCallingUid();
        if (!hasQueryOrCreateUsersPermission() && !hasPermissionGranted("android.permission.GET_ACCOUNTS_PRIVILEGED", callingUid)) {
            throw new SecurityException("You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get user name");
        }
        int userId = UserHandle.getUserId(callingUid);
        synchronized (this.mUsersLock) {
            UserInfo userWithName = userWithName(getUserInfoLU(userId));
            return (userWithName == null || (str = userWithName.name) == null) ? "" : str;
        }
    }

    public long getUserStartRealtime() {
        int userId = UserHandle.getUserId(Binder.getCallingUid());
        synchronized (this.mUsersLock) {
            UserData userDataLU = getUserDataLU(userId);
            if (userDataLU == null) {
                return 0L;
            }
            return userDataLU.startRealtime;
        }
    }

    public long getUserUnlockRealtime() {
        synchronized (this.mUsersLock) {
            UserData userDataLU = getUserDataLU(UserHandle.getUserId(Binder.getCallingUid()));
            if (userDataLU == null) {
                return 0L;
            }
            return userDataLU.unlockRealtime;
        }
    }

    public final void checkManageOrInteractPermissionIfCallerInOtherProfileGroup(int i, String str) {
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId == i || isSameProfileGroupNoChecks(callingUserId, i) || hasManageUsersPermission() || hasPermissionGranted("android.permission.INTERACT_ACROSS_USERS", Binder.getCallingUid())) {
            return;
        }
        throw new SecurityException("You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check " + str);
    }

    public final void checkQueryOrInteractPermissionIfCallerInOtherProfileGroup(int i, String str) {
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId == i || isSameProfileGroupNoChecks(callingUserId, i) || hasQueryUsersPermission() || hasPermissionGranted("android.permission.INTERACT_ACROSS_USERS", Binder.getCallingUid())) {
            return;
        }
        throw new SecurityException("You need INTERACT_ACROSS_USERS, MANAGE_USERS, or QUERY_USERS permission to: check " + str);
    }

    public final void checkQueryOrCreateUsersPermissionIfCallerInOtherProfileGroup(int i, String str) {
        int callingUserId = UserHandle.getCallingUserId();
        if (callingUserId == i || isSameProfileGroupNoChecks(callingUserId, i)) {
            return;
        }
        checkQueryOrCreateUsersPermission(str);
    }

    public boolean isDemoUser(int i) {
        boolean z;
        if (UserHandle.getCallingUserId() != i && !hasManageUsersPermission()) {
            throw new SecurityException("You need MANAGE_USERS permission to query if u=" + i + " is a demo user");
        }
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            z = userInfoLU != null && userInfoLU.isDemo();
        }
        return z;
    }

    public boolean isAdminUser(int i) {
        boolean z;
        checkQueryOrCreateUsersPermissionIfCallerInOtherProfileGroup(i, "isAdminUser");
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            z = userInfoLU != null && userInfoLU.isAdmin();
        }
        return z;
    }

    public boolean isPreCreated(int i) {
        boolean z;
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "isPreCreated");
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            z = userInfoLU != null && userInfoLU.preCreated;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getUserSwitchability(int r7) {
        /*
            r6 = this;
            java.lang.String r0 = "getUserSwitchability"
            r6.checkManageOrInteractPermissionIfCallerInOtherProfileGroup(r7, r0)
            com.android.server.utils.TimingsTraceAndSlog r0 = new com.android.server.utils.TimingsTraceAndSlog
            r0.<init>()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "getUserSwitchability-"
            r1.append(r2)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            r0.traceBegin(r1)
            java.lang.String r1 = "TM.isInCall"
            r0.traceBegin(r1)
            long r1 = android.os.Binder.clearCallingIdentity()
            android.content.Context r3 = r6.mContext     // Catch: java.lang.Throwable -> L8f
            java.lang.Class<android.telecom.TelecomManager> r4 = android.telecom.TelecomManager.class
            java.lang.Object r3 = r3.getSystemService(r4)     // Catch: java.lang.Throwable -> L8f
            android.telecom.TelecomManager r3 = (android.telecom.TelecomManager) r3     // Catch: java.lang.Throwable -> L8f
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L3d
            boolean r3 = r3.isInCall()     // Catch: java.lang.Throwable -> L8f
            if (r3 == 0) goto L3d
            r3 = r4
            goto L3e
        L3d:
            r3 = r5
        L3e:
            android.os.Binder.restoreCallingIdentity(r1)
            r0.traceEnd()
            java.lang.String r1 = "hasUserRestriction-DISALLOW_USER_SWITCH"
            r0.traceBegin(r1)
            com.android.server.pm.UserManagerService$LocalService r1 = r6.mLocalService
            java.lang.String r2 = "no_user_switch"
            boolean r7 = r1.hasUserRestriction(r2, r7)
            if (r7 == 0) goto L56
            r3 = r3 | 2
        L56:
            r0.traceEnd()
            boolean r7 = r6.isHeadlessSystemUserMode()
            if (r7 != 0) goto L8b
            java.lang.String r7 = "getInt-ALLOW_USER_SWITCHING_WHEN_SYSTEM_USER_LOCKED"
            r0.traceBegin(r7)
            android.content.Context r7 = r6.mContext
            android.content.ContentResolver r7 = r7.getContentResolver()
            java.lang.String r1 = "allow_user_switching_when_system_user_locked"
            int r7 = android.provider.Settings.Global.getInt(r7, r1, r5)
            if (r7 == 0) goto L73
            goto L74
        L73:
            r4 = r5
        L74:
            r0.traceEnd()
            java.lang.String r7 = "isUserUnlocked-USER_SYSTEM"
            r0.traceBegin(r7)
            com.android.server.pm.UserManagerService$LocalService r6 = r6.mLocalService
            boolean r6 = r6.isUserUnlocked(r5)
            r0.traceEnd()
            if (r4 != 0) goto L8b
            if (r6 != 0) goto L8b
            r3 = r3 | 4
        L8b:
            r0.traceEnd()
            return r3
        L8f:
            r6 = move-exception
            android.os.Binder.restoreCallingIdentity(r1)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.getUserSwitchability(int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isUserSwitcherEnabled(int i) {
        return UserManager.supportsMultipleUsers() && !hasUserRestriction("no_user_switch", i) && !UserManager.isDeviceInDemoMode(this.mContext) && (Settings.Global.getInt(this.mContext.getContentResolver(), "user_switcher_enabled", MultiUserSupportsHelper.IS_TABLET ? 1 : 0) != 0) == true;
    }

    public boolean isUserSwitcherEnabled(boolean z, int i) {
        if (isUserSwitcherEnabled(i)) {
            return z || !hasUserRestriction("no_add_user", i) || areThereMultipleSwitchableUsers();
        }
        return false;
    }

    public final boolean areThereMultipleSwitchableUsers() {
        Iterator it = getUsers(true, true, true).iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((UserInfo) it.next()).supportsSwitchToByUser()) {
                if (z) {
                    return true;
                }
                z = true;
            }
        }
        return false;
    }

    public boolean isRestricted(int i) {
        boolean isRestricted;
        if (i != UserHandle.getCallingUserId()) {
            checkCreateUsersPermission("query isRestricted for user " + i);
        }
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            isRestricted = userInfoLU == null ? false : userInfoLU.isRestricted();
        }
        return isRestricted;
    }

    public boolean canHaveRestrictedProfile(int i) {
        checkManageUsersPermission("canHaveRestrictedProfile");
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            boolean z = false;
            if (userInfoLU != null && userInfoLU.canHaveProfile()) {
                if (!userInfoLU.isAdmin()) {
                    return false;
                }
                if (!this.mIsDeviceManaged && !this.mIsUserManaged.get(i)) {
                    z = true;
                }
                return z;
            }
            return false;
        }
    }

    public boolean hasRestrictedProfiles(int i) {
        checkManageUsersPermission("hasRestrictedProfiles");
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i2 = 0; i2 < size; i2++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i2)).info;
                if (i != userInfo.id && userInfo.restrictedProfileParentId == i) {
                    return true;
                }
            }
            return false;
        }
    }

    public final UserInfo getUserInfoLU(int i) {
        UserData userData = (UserData) this.mUsers.get(i);
        if (userData == null || !userData.info.partial || this.mRemovingUserIds.get(i)) {
            if (userData != null) {
                return userData.info;
            }
            return null;
        }
        Slog.w("UserManagerService", "getUserInfo: unknown user #" + i);
        return null;
    }

    public final UserData getUserDataLU(int i) {
        UserData userData = (UserData) this.mUsers.get(i);
        if (userData == null || !userData.info.partial || this.mRemovingUserIds.get(i)) {
            return userData;
        }
        return null;
    }

    public final UserInfo getUserInfoNoChecks(int i) {
        UserInfo userInfo;
        synchronized (this.mUsersLock) {
            UserData userData = (UserData) this.mUsers.get(i);
            userInfo = userData != null ? userData.info : null;
        }
        return userInfo;
    }

    public final UserData getUserDataNoChecks(int i) {
        UserData userData;
        synchronized (this.mUsersLock) {
            userData = (UserData) this.mUsers.get(i);
        }
        return userData;
    }

    public boolean exists(int i) {
        return this.mLocalService.exists(i);
    }

    public final int getCrossProfileIntentFilterAccessControl(int i) {
        UserProperties userPropertiesInternal = getUserPropertiesInternal(i);
        if (userPropertiesInternal != null) {
            return userPropertiesInternal.getCrossProfileIntentFilterAccessControl();
        }
        return 0;
    }

    public void enforceCrossProfileIntentFilterAccess(int i, int i2, int i3, boolean z) {
        if (isCrossProfileIntentFilterAccessible(i, i2, z)) {
            return;
        }
        throw new SecurityException("CrossProfileIntentFilter cannot be accessed by user " + i3);
    }

    public boolean isCrossProfileIntentFilterAccessible(int i, int i2, boolean z) {
        int crossProfileIntentFilterAccessControl = getCrossProfileIntentFilterAccessControl(i, i2);
        if (10 == crossProfileIntentFilterAccessControl && !PackageManagerServiceUtils.isSystemOrRoot()) {
            return false;
        }
        if (20 == crossProfileIntentFilterAccessControl) {
            return z && PackageManagerServiceUtils.isSystemOrRoot();
        }
        return true;
    }

    public int getCrossProfileIntentFilterAccessControl(int i, int i2) {
        return Math.max(getCrossProfileIntentFilterAccessControl(i), getCrossProfileIntentFilterAccessControl(i2));
    }

    public void setUserName(int i, String str) {
        checkManageUsersPermission("rename users");
        synchronized (this.mPackagesLock) {
            UserData userDataNoChecks = getUserDataNoChecks(i);
            if (userDataNoChecks != null) {
                UserInfo userInfo = userDataNoChecks.info;
                if (!userInfo.partial) {
                    if (Objects.equals(str, userInfo.name)) {
                        Slogf.i("UserManagerService", "setUserName: ignoring for user #%d as it didn't change (%s)", Integer.valueOf(i), getRedacted(str));
                        String str2 = userDataNoChecks.info.name;
                        return;
                    }
                    if (str == null) {
                        Slogf.i("UserManagerService", "setUserName: resetting name of user #%d", Integer.valueOf(i));
                    } else {
                        Slogf.i("UserManagerService", "setUserName: setting name of user #%d to %s", Integer.valueOf(i), getRedacted(str));
                    }
                    userDataNoChecks.info.name = str;
                    writeUserLP(userDataNoChecks);
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        sendUserInfoChangedBroadcast(i);
                        return;
                    } finally {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                }
            }
            Slogf.w("UserManagerService", "setUserName: unknown user #%d", Integer.valueOf(i));
        }
    }

    public boolean setUserEphemeral(int i, boolean z) {
        checkCreateUsersPermission("update ephemeral user flag");
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                UserData userData = (UserData) this.mUsers.get(i);
                if (userData == null) {
                    Slog.e("UserManagerService", "User not found for setting ephemeral mode: u" + i);
                    return false;
                }
                UserInfo userInfo = userData.info;
                int i2 = userInfo.flags;
                boolean z2 = (i2 & 256) != 0;
                if (((i2 & IInstalld.FLAG_FORCE) != 0) && !z) {
                    Slog.e("UserManagerService", "Failed to change user state to non-ephemeral for user " + i);
                    return false;
                }
                if (z2 == z) {
                    userData = null;
                } else if (z) {
                    userInfo.flags = i2 | 256;
                } else {
                    userInfo.flags = i2 & (-257);
                }
                if (userData != null) {
                    writeUserLP(userData);
                }
                return true;
            }
        }
    }

    public void setUserIcon(int i, Bitmap bitmap) {
        try {
            checkManageUsersPermission("update users");
            enforceUserRestriction("no_set_user_icon", i, "Cannot set user icon");
            this.mLocalService.setUserIcon(i, bitmap);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    public final void sendUserInfoChangedBroadcast(int i) {
        Intent intent = new Intent("android.intent.action.USER_INFO_CHANGED");
        intent.putExtra("android.intent.extra.user_handle", i);
        intent.addFlags(1073741824);
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    public ParcelFileDescriptor getUserIcon(int i) {
        if (!hasManageUsersOrPermission("android.permission.GET_ACCOUNTS_PRIVILEGED")) {
            throw new SecurityException("You need MANAGE_USERS or GET_ACCOUNTS_PRIVILEGED permissions to: get user icon");
        }
        synchronized (this.mPackagesLock) {
            UserInfo userInfoNoChecks = getUserInfoNoChecks(i);
            if (userInfoNoChecks != null && !userInfoNoChecks.partial) {
                int callingUserId = UserHandle.getCallingUserId();
                int i2 = getUserInfoNoChecks(callingUserId).profileGroupId;
                boolean z = i2 != -10000 && i2 == userInfoNoChecks.profileGroupId;
                if (callingUserId != i && !z) {
                    checkManageUsersPermission("get the icon of a user who is not related");
                }
                String str = userInfoNoChecks.iconPath;
                if (str == null) {
                    return null;
                }
                try {
                    return ParcelFileDescriptor.open(new File(str), 268435456);
                } catch (FileNotFoundException e) {
                    Slog.e("UserManagerService", "Couldn't find icon file", e);
                    return null;
                }
            }
            Slog.w("UserManagerService", "getUserIcon: unknown user #" + i);
            return null;
        }
    }

    public void makeInitialized(int i) {
        boolean z;
        checkManageUsersPermission("makeInitialized");
        synchronized (this.mUsersLock) {
            UserData userData = (UserData) this.mUsers.get(i);
            if (userData != null) {
                UserInfo userInfo = userData.info;
                if (!userInfo.partial) {
                    int i2 = userInfo.flags;
                    if ((i2 & 16) == 0) {
                        userInfo.flags = i2 | 16;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        scheduleWriteUser(i);
                        return;
                    }
                    return;
                }
            }
            Slog.w("UserManagerService", "makeInitialized: unknown user #" + i);
        }
    }

    public final void initDefaultGuestRestrictions() {
        synchronized (this.mGuestRestrictions) {
            if (this.mGuestRestrictions.isEmpty()) {
                UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get("android.os.usertype.full.GUEST");
                if (userTypeDetails == null) {
                    Slog.wtf("UserManagerService", "Can't set default guest restrictions: type doesn't exist.");
                    return;
                }
                userTypeDetails.addDefaultRestrictionsTo(this.mGuestRestrictions);
            }
        }
    }

    public Bundle getDefaultGuestRestrictions() {
        Bundle bundle;
        checkManageUsersPermission("getDefaultGuestRestrictions");
        synchronized (this.mGuestRestrictions) {
            bundle = new Bundle(this.mGuestRestrictions);
        }
        return bundle;
    }

    public void setDefaultGuestRestrictions(Bundle bundle) {
        checkManageUsersPermission("setDefaultGuestRestrictions");
        synchronized (this.mGuestRestrictions) {
            this.mGuestRestrictions.clear();
            this.mGuestRestrictions.putAll(bundle);
            List guestUsers = getGuestUsers();
            for (int i = 0; i < guestUsers.size(); i++) {
                synchronized (this.mRestrictionsLock) {
                    updateUserRestrictionsInternalLR(new Bundle(this.mGuestRestrictions), ((UserInfo) guestUsers.get(i)).id);
                }
            }
        }
        synchronized (this.mPackagesLock) {
            writeUserListLP();
        }
    }

    public void setUserRestrictionInner(int i, String str, boolean z) {
        if (!UserRestrictionsUtils.isValidRestriction(str)) {
            Slog.e("UserManagerService", "Setting invalid restriction " + str);
            return;
        }
        synchronized (this.mRestrictionsLock) {
            Bundle clone = BundleUtils.clone(this.mDevicePolicyUserRestrictions.getRestrictions(i));
            clone.putBoolean(str, z);
            if (this.mDevicePolicyUserRestrictions.updateRestrictions(i, clone)) {
                if (i == -1) {
                    applyUserRestrictionsForAllUsersLR();
                } else {
                    applyUserRestrictionsLR(i);
                }
            }
        }
    }

    public final void setDevicePolicyUserRestrictionsInner(int i, Bundle bundle, RestrictionsSet restrictionsSet, boolean z) {
        synchronized (this.mRestrictionsLock) {
            IntArray userIds = this.mDevicePolicyUserRestrictions.getUserIds();
            this.mCachedEffectiveUserRestrictions.removeAllRestrictions();
            this.mDevicePolicyUserRestrictions.removeAllRestrictions();
            this.mDevicePolicyUserRestrictions.updateRestrictions(-1, bundle);
            IntArray userIds2 = restrictionsSet.getUserIds();
            for (int i2 = 0; i2 < userIds2.size(); i2++) {
                int i3 = userIds2.get(i2);
                this.mDevicePolicyUserRestrictions.updateRestrictions(i3, restrictionsSet.getRestrictions(i3));
                userIds.add(i3);
            }
            applyUserRestrictionsForAllUsersLR();
            for (int i4 = 0; i4 < userIds.size(); i4++) {
                if (userIds.get(i4) != -1) {
                    applyUserRestrictionsLR(userIds.get(i4));
                }
            }
        }
    }

    public final Bundle computeEffectiveUserRestrictionsLR(int i) {
        Bundle restrictionsNonNull = this.mBaseUserRestrictions.getRestrictionsNonNull(i);
        Bundle restrictionsNonNull2 = this.mDevicePolicyUserRestrictions.getRestrictionsNonNull(-1);
        Bundle restrictionsNonNull3 = this.mDevicePolicyUserRestrictions.getRestrictionsNonNull(i);
        if (restrictionsNonNull2.isEmpty() && restrictionsNonNull3.isEmpty()) {
            return restrictionsNonNull;
        }
        Bundle clone = BundleUtils.clone(restrictionsNonNull);
        UserRestrictionsUtils.merge(clone, restrictionsNonNull2);
        UserRestrictionsUtils.merge(clone, restrictionsNonNull3);
        return clone;
    }

    public final Bundle getEffectiveUserRestrictions(int i) {
        Bundle restrictions;
        synchronized (this.mRestrictionsLock) {
            restrictions = this.mCachedEffectiveUserRestrictions.getRestrictions(i);
            if (restrictions == null) {
                restrictions = computeEffectiveUserRestrictionsLR(i);
                this.mCachedEffectiveUserRestrictions.updateRestrictions(i, restrictions);
            }
        }
        return restrictions;
    }

    public boolean hasUserRestriction(String str, int i) {
        if (!userExists(i)) {
            return false;
        }
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "hasUserRestriction");
        return this.mLocalService.hasUserRestriction(str, i);
    }

    public boolean hasUserRestrictionOnAnyUser(String str) {
        if (!UserRestrictionsUtils.isValidRestriction(str)) {
            return false;
        }
        List users = getUsers(true);
        for (int i = 0; i < users.size(); i++) {
            Bundle effectiveUserRestrictions = getEffectiveUserRestrictions(((UserInfo) users.get(i)).id);
            if (effectiveUserRestrictions != null && effectiveUserRestrictions.getBoolean(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean isSettingRestrictedForUser(String str, int i, String str2, int i2) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Non-system caller");
        }
        return UserRestrictionsUtils.isSettingRestrictedForUser(this.mContext, str, i, str2, i2);
    }

    public void addUserRestrictionsListener(final IUserRestrictionsListener iUserRestrictionsListener) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Non-system caller");
        }
        this.mLocalService.addUserRestrictionsListener(new UserManagerInternal.UserRestrictionsListener() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda1
            @Override // com.android.server.pm.UserManagerInternal.UserRestrictionsListener
            public final void onUserRestrictionsChanged(int i, Bundle bundle, Bundle bundle2) {
                UserManagerService.lambda$addUserRestrictionsListener$0(iUserRestrictionsListener, i, bundle, bundle2);
            }
        });
    }

    public static /* synthetic */ void lambda$addUserRestrictionsListener$0(IUserRestrictionsListener iUserRestrictionsListener, int i, Bundle bundle, Bundle bundle2) {
        try {
            iUserRestrictionsListener.onUserRestrictionsChanged(i, bundle, bundle2);
        } catch (RemoteException e) {
            Slog.e("IUserRestrictionsListener", "Unable to invoke listener: " + e.getMessage());
        }
    }

    public int getUserRestrictionSource(String str, int i) {
        List userRestrictionSources = getUserRestrictionSources(str, i);
        int i2 = 0;
        for (int size = userRestrictionSources.size() - 1; size >= 0; size--) {
            i2 |= ((UserManager.EnforcingUser) userRestrictionSources.get(size)).getUserRestrictionSource();
        }
        return i2;
    }

    public List getUserRestrictionSources(String str, int i) {
        checkQueryUsersPermission("call getUserRestrictionSources.");
        if (!hasUserRestriction(str, i)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        if (hasBaseUserRestriction(str, i)) {
            arrayList.add(new UserManager.EnforcingUser(-10000, 1));
        }
        arrayList.addAll(getDevicePolicyManagerInternal().getUserRestrictionSources(str, i));
        return arrayList;
    }

    public Bundle getUserRestrictions(int i) {
        checkManageOrInteractPermissionIfCallerInOtherProfileGroup(i, "getUserRestrictions");
        return BundleUtils.clone(getEffectiveUserRestrictions(i));
    }

    public boolean hasBaseUserRestriction(String str, int i) {
        checkCreateUsersPermission("hasBaseUserRestriction");
        boolean z = false;
        if (!UserRestrictionsUtils.isValidRestriction(str)) {
            return false;
        }
        synchronized (this.mRestrictionsLock) {
            Bundle restrictions = this.mBaseUserRestrictions.getRestrictions(i);
            if (restrictions != null && restrictions.getBoolean(str, false)) {
                z = true;
            }
        }
        return z;
    }

    public void setUserRestriction(final String str, final boolean z, final int i) {
        IRestrictionPolicy asInterface;
        checkManageUsersPermission("setUserRestriction");
        if (UserRestrictionsUtils.isValidRestriction(str)) {
            if (!userExists(i)) {
                Slogf.w("UserManagerService", "Cannot set user restriction %s. User with id %d does not exist", str, Integer.valueOf(i));
                return;
            }
            synchronized (this.mRestrictionsLock) {
                Bundle clone = BundleUtils.clone(this.mBaseUserRestrictions.getRestrictions(i));
                clone.putBoolean(str, z);
                updateUserRestrictionsInternalLR(clone, i);
                if (UserHandle.getUserId(Binder.getCallingUid()) == 0 && (asInterface = IRestrictionPolicy.Stub.asInterface(ServiceManager.getService("restriction_policy"))) != null) {
                    try {
                        asInterface.updateUserRestrictionsByKC(str, z);
                    } catch (RemoteException e) {
                        Log.d("UserManagerService", "Failed talking with IRestrictionPolicy: ", e);
                    }
                }
            }
            if (i == 0) {
                final String callers = Debug.getCallers(1, 10);
                final int callingUid = Binder.getCallingUid();
                this.mHandler.post(new Runnable() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        UserManagerService.lambda$setUserRestriction$1(str, z, i, callingUid, callers);
                    }
                });
            }
        }
    }

    public static /* synthetic */ void lambda$setUserRestriction$1(String str, boolean z, int i, int i2, String str2) {
        PmLog.logDebugInfo("Updated restriction " + str + "(" + z + ") for User " + i + ", callingUid: " + i2 + ", stack: " + str2);
    }

    public final void updateUserRestrictionsInternalLR(Bundle bundle, final int i) {
        Bundle nonNull = UserRestrictionsUtils.nonNull(this.mAppliedUserRestrictions.getRestrictions(i));
        if (bundle != null) {
            Preconditions.checkState(this.mBaseUserRestrictions.getRestrictions(i) != bundle);
            Preconditions.checkState(this.mCachedEffectiveUserRestrictions.getRestrictions(i) != bundle);
            if (this.mBaseUserRestrictions.updateRestrictions(i, bundle)) {
                scheduleWriteUser(i);
            }
        }
        final Bundle computeEffectiveUserRestrictionsLR = computeEffectiveUserRestrictionsLR(i);
        this.mCachedEffectiveUserRestrictions.updateRestrictions(i, computeEffectiveUserRestrictionsLR);
        if (this.mAppOpsService != null) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    UserManagerService.this.lambda$updateUserRestrictionsInternalLR$2(computeEffectiveUserRestrictionsLR, i);
                }
            });
        }
        propagateUserRestrictionsLR(i, computeEffectiveUserRestrictionsLR, nonNull);
        this.mAppliedUserRestrictions.updateRestrictions(i, new Bundle(computeEffectiveUserRestrictionsLR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateUserRestrictionsInternalLR$2(Bundle bundle, int i) {
        try {
            this.mAppOpsService.setUserRestrictions(bundle, this.mUserRestrictionToken, i);
        } catch (RemoteException unused) {
            Slog.w("UserManagerService", "Unable to notify AppOpsService of UserRestrictions");
        }
    }

    public final void propagateUserRestrictionsLR(final int i, Bundle bundle, Bundle bundle2) {
        if (UserRestrictionsUtils.areEqual(bundle, bundle2)) {
            return;
        }
        final Bundle bundle3 = new Bundle(bundle);
        final Bundle bundle4 = new Bundle(bundle2);
        this.mHandler.post(new Runnable() { // from class: com.android.server.pm.UserManagerService.3
            @Override // java.lang.Runnable
            public void run() {
                int size;
                UserManagerInternal.UserRestrictionsListener[] userRestrictionsListenerArr;
                UserRestrictionsUtils.applyUserRestrictions(UserManagerService.this.mContext, i, bundle3, bundle4);
                synchronized (UserManagerService.this.mUserRestrictionsListeners) {
                    size = UserManagerService.this.mUserRestrictionsListeners.size();
                    userRestrictionsListenerArr = new UserManagerInternal.UserRestrictionsListener[size];
                    UserManagerService.this.mUserRestrictionsListeners.toArray(userRestrictionsListenerArr);
                }
                for (int i2 = 0; i2 < size; i2++) {
                    userRestrictionsListenerArr[i2].onUserRestrictionsChanged(i, bundle3, bundle4);
                }
                UserManagerService.this.mContext.sendBroadcastAsUser(new Intent("android.os.action.USER_RESTRICTIONS_CHANGED").setFlags(1073741824), UserHandle.of(i), null, BroadcastOptions.makeBasic().setDeliveryGroupPolicy(1).toBundle());
            }
        });
    }

    public final void applyUserRestrictionsLR(int i) {
        updateUserRestrictionsInternalLR(null, i);
        scheduleWriteUser(i);
    }

    public final void applyUserRestrictionsForAllUsersLR() {
        this.mCachedEffectiveUserRestrictions.removeAllRestrictions();
        this.mHandler.post(new Runnable() { // from class: com.android.server.pm.UserManagerService.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    int[] runningUserIds = ActivityManager.getService().getRunningUserIds();
                    synchronized (UserManagerService.this.mRestrictionsLock) {
                        for (int i : runningUserIds) {
                            UserManagerService.this.applyUserRestrictionsLR(i);
                        }
                    }
                } catch (RemoteException unused) {
                    Slog.w("UserManagerService", "Unable to access ActivityManagerService");
                }
            }
        });
    }

    public final boolean isUserLimitReached() {
        int aliveUsersExcludingGuestsCountLU;
        synchronized (this.mUsersLock) {
            aliveUsersExcludingGuestsCountLU = getAliveUsersExcludingGuestsCountLU();
        }
        return aliveUsersExcludingGuestsCountLU >= UserManager.getMaxSupportedUsers() && !isCreationOverrideEnabled();
    }

    public final boolean canAddMoreUsersOfType(UserTypeDetails userTypeDetails) {
        if (!isUserTypeEnabled(userTypeDetails)) {
            return false;
        }
        int maxAllowed = userTypeDetails.getMaxAllowed();
        if (maxAllowed == -1) {
            return true;
        }
        return getNumberOfUsersOfType(userTypeDetails.getName()) < maxAllowed || isCreationOverrideEnabled();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c A[Catch: all -> 0x007b, TryCatch #0 {, blocks: (B:8:0x001b, B:10:0x0028, B:13:0x002f, B:14:0x0036, B:16:0x003c, B:18:0x004a, B:26:0x0057, B:32:0x005d, B:34:0x005f, B:37:0x0071, B:38:0x0079, B:40:0x0067), top: B:7:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005d A[Catch: all -> 0x007b, DONT_GENERATE, TryCatch #0 {, blocks: (B:8:0x001b, B:10:0x0028, B:13:0x002f, B:14:0x0036, B:16:0x003c, B:18:0x004a, B:26:0x0057, B:32:0x005d, B:34:0x005f, B:37:0x0071, B:38:0x0079, B:40:0x0067), top: B:7:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005f A[Catch: all -> 0x007b, TryCatch #0 {, blocks: (B:8:0x001b, B:10:0x0028, B:13:0x002f, B:14:0x0036, B:16:0x003c, B:18:0x004a, B:26:0x0057, B:32:0x005d, B:34:0x005f, B:37:0x0071, B:38:0x0079, B:40:0x0067), top: B:7:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getRemainingCreatableUserCount(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "get the remaining number of users that can be added."
            checkQueryOrCreateUsersPermission(r0)
            android.util.ArrayMap r0 = r8.mUserTypes
            java.lang.Object r0 = r0.get(r9)
            com.android.server.pm.UserTypeDetails r0 = (com.android.server.pm.UserTypeDetails) r0
            r1 = 0
            if (r0 == 0) goto L7e
            boolean r2 = r8.isUserTypeEnabled(r0)
            if (r2 != 0) goto L18
            goto L7e
        L18:
            java.lang.Object r2 = r8.mUsersLock
            monitor-enter(r2)
            int r3 = r8.getAliveUsersExcludingGuestsCountLU()     // Catch: java.lang.Throwable -> L7b
            boolean r4 = android.os.UserManager.isUserTypeGuest(r9)     // Catch: java.lang.Throwable -> L7b
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != 0) goto L35
            boolean r4 = android.os.UserManager.isUserTypeDemo(r9)     // Catch: java.lang.Throwable -> L7b
            if (r4 == 0) goto L2f
            goto L35
        L2f:
            int r4 = android.os.UserManager.getMaxSupportedUsers()     // Catch: java.lang.Throwable -> L7b
            int r4 = r4 - r3
            goto L36
        L35:
            r4 = r5
        L36:
            boolean r6 = r0.isManagedProfile()     // Catch: java.lang.Throwable -> L7b
            if (r6 == 0) goto L5b
            android.content.Context r6 = r8.mContext     // Catch: java.lang.Throwable -> L7b
            android.content.pm.PackageManager r6 = r6.getPackageManager()     // Catch: java.lang.Throwable -> L7b
            java.lang.String r7 = "android.software.managed_users"
            boolean r6 = r6.hasSystemFeature(r7)     // Catch: java.lang.Throwable -> L7b
            if (r6 != 0) goto L4c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L7b
            return r1
        L4c:
            r6 = 1
            if (r4 > 0) goto L51
            r7 = r6
            goto L52
        L51:
            r7 = r1
        L52:
            if (r3 != r6) goto L56
            r3 = r6
            goto L57
        L56:
            r3 = r1
        L57:
            r3 = r3 & r7
            if (r3 == 0) goto L5b
            r4 = r6
        L5b:
            if (r4 > 0) goto L5f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L7b
            return r1
        L5f:
            int r3 = r0.getMaxAllowed()     // Catch: java.lang.Throwable -> L7b
            r6 = -1
            if (r3 != r6) goto L67
            goto L71
        L67:
            int r0 = r0.getMaxAllowed()     // Catch: java.lang.Throwable -> L7b
            int r8 = r8.getNumberOfUsersOfType(r9)     // Catch: java.lang.Throwable -> L7b
            int r5 = r0 - r8
        L71:
            int r8 = java.lang.Math.min(r4, r5)     // Catch: java.lang.Throwable -> L7b
            int r8 = java.lang.Math.max(r1, r8)     // Catch: java.lang.Throwable -> L7b
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L7b
            return r8
        L7b:
            r8 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L7b
            throw r8
        L7e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.getRemainingCreatableUserCount(java.lang.String):int");
    }

    public final int getNumberOfUsersOfType(String str) {
        int i;
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i2)).info;
                if (userInfo.userType.equals(str) && !userInfo.guestToRemove && !this.mRemovingUserIds.get(userInfo.id) && !userInfo.preCreated) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean canAddMoreUsersOfType(String str) {
        checkCreateUsersPermission("check if more users can be added.");
        UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(str);
        return userTypeDetails != null && canAddMoreUsersOfType(userTypeDetails);
    }

    public boolean isUserTypeEnabled(String str) {
        checkCreateUsersPermission("check if user type is enabled.");
        UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(str);
        return userTypeDetails != null && isUserTypeEnabled(userTypeDetails);
    }

    public final boolean isUserTypeEnabled(UserTypeDetails userTypeDetails) {
        return userTypeDetails.isEnabled() || isCreationOverrideEnabled();
    }

    public final boolean isCreationOverrideEnabled() {
        return Build.isDebuggable() && SystemProperties.getBoolean("debug.user.creation_override", false);
    }

    public boolean canAddMoreManagedProfiles(int i, boolean z) {
        return canAddMoreProfilesToUser("android.os.usertype.profile.MANAGED", i, z);
    }

    public boolean canAddMoreProfilesToUser(String str, int i, boolean z) {
        return getRemainingCreatableProfileCount(str, i, z) > 0 || isCreationOverrideEnabled();
    }

    public int getRemainingCreatableProfileCount(String str, int i) {
        return getRemainingCreatableProfileCount(str, i, false);
    }

    public final int getRemainingCreatableProfileCount(String str, int i, boolean z) {
        checkQueryOrCreateUsersPermission("get the remaining number of profiles that can be added to the given user.");
        UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(str);
        if (userTypeDetails == null || !isUserTypeEnabled(userTypeDetails)) {
            return 0;
        }
        boolean isManagedProfile = userTypeDetails.isManagedProfile();
        boolean isUserTypeCloneProfile = UserManager.isUserTypeCloneProfile(str);
        if (isManagedProfile && !this.mContext.getPackageManager().hasSystemFeature("android.software.managed_users")) {
            return 0;
        }
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            if (userInfoLU != null && userInfoLU.canHaveProfile()) {
                int length = getProfileIds(i, str, false).length;
                Iterator it = getProfiles(i, false).iterator();
                while (it.hasNext()) {
                    if (SemPersonaManager.isSecureFolderId(((UserInfo) it.next()).id)) {
                        length--;
                    }
                }
                int i2 = 1;
                int i3 = (length <= 0 || !z) ? 0 : 1;
                int aliveUsersExcludingGuestsCountLU = getAliveUsersExcludingGuestsCountLU() - i3;
                int maxSupportedUsers = UserManager.getMaxSupportedUsers() - aliveUsersExcludingGuestsCountLU;
                if (maxSupportedUsers > 0 || ((!isManagedProfile && !isUserTypeCloneProfile) || aliveUsersExcludingGuestsCountLU != 1)) {
                    i2 = maxSupportedUsers;
                }
                int maxUsersOfTypePerParent = getMaxUsersOfTypePerParent(userTypeDetails);
                if (maxUsersOfTypePerParent != -1) {
                    i2 = Math.min(i2, maxUsersOfTypePerParent - (length - i3));
                }
                if (i2 <= 0) {
                    return 0;
                }
                if (userTypeDetails.getMaxAllowed() != -1) {
                    i2 = Math.min(i2, userTypeDetails.getMaxAllowed() - (getNumberOfUsersOfType(str) - i3));
                }
                return Math.max(0, i2);
            }
            return 0;
        }
    }

    public final int getAliveUsersExcludingGuestsCountLU() {
        int size = this.mUsers.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            UserInfo userInfo = ((UserData) this.mUsers.valueAt(i2)).info;
            if (!this.mRemovingUserIds.get(userInfo.id) && !userInfo.isGuest() && !userInfo.preCreated && !userInfo.isCloneProfile() && !userInfo.isBMode() && !userInfo.isManagedProfile()) {
                i++;
            }
        }
        return i;
    }

    public static final void checkManageUserAndAcrossUsersFullPermission(String str) {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1000 || callingUid == 0) {
            return;
        }
        if (hasPermissionGranted("android.permission.MANAGE_USERS", callingUid) && hasPermissionGranted("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid)) {
            return;
        }
        throw new SecurityException("You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: " + str);
    }

    public static boolean hasPermissionGranted(String str, int i) {
        if (i == 2000 && MaintenanceModeManager.isInMaintenanceModeFromProperty()) {
            throw new SecurityException("Cannot manage users : unauthorized");
        }
        return ActivityManager.checkComponentPermission(str, i, -1, true) == 0;
    }

    public static final void checkManageUsersPermission(String str) {
        if (hasManageUsersPermission()) {
            return;
        }
        throw new SecurityException("You need MANAGE_USERS permission to: " + str);
    }

    public static final void checkCreateUsersPermission(String str) {
        if (hasCreateUsersPermission()) {
            return;
        }
        throw new SecurityException("You either need MANAGE_USERS or CREATE_USERS permission to: " + str);
    }

    public static final void checkQueryUsersPermission(String str) {
        if (hasQueryUsersPermission()) {
            return;
        }
        throw new SecurityException("You either need MANAGE_USERS or QUERY_USERS permission to: " + str);
    }

    public static final void checkQueryOrCreateUsersPermission(String str) {
        if (hasQueryOrCreateUsersPermission()) {
            return;
        }
        throw new SecurityException("You either need MANAGE_USERS, CREATE_USERS, or QUERY_USERS permission to: " + str);
    }

    public static final void checkCreateUsersPermission(int i) {
        if (((-38701) & i) == 0) {
            if (hasCreateUsersPermission()) {
                return;
            }
            throw new SecurityException("You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: " + i);
        }
        if (hasManageUsersPermission()) {
            return;
        }
        throw new SecurityException("You need MANAGE_USERS permission to create an user  with flags: " + i);
    }

    public static final boolean hasManageUsersPermission() {
        return hasManageUsersPermission(Binder.getCallingUid());
    }

    public static boolean hasManageUsersPermission(int i) {
        if (i == 2000 && MaintenanceModeManager.isInMaintenanceModeFromProperty()) {
            throw new SecurityException("Cannot manage users : unauthorized");
        }
        return UserHandle.isSameApp(i, 1000) || i == 0 || hasPermissionGranted("android.permission.MANAGE_USERS", i);
    }

    public static final boolean hasManageUsersOrPermission(String str) {
        int callingUid = Binder.getCallingUid();
        return hasManageUsersPermission(callingUid) || hasPermissionGranted(str, callingUid);
    }

    public static final boolean hasCreateUsersPermission() {
        return hasManageUsersOrPermission("android.permission.CREATE_USERS");
    }

    public static final boolean hasQueryUsersPermission() {
        return hasManageUsersOrPermission("android.permission.QUERY_USERS");
    }

    public static final boolean hasQueryOrCreateUsersPermission() {
        return hasCreateUsersPermission() || hasPermissionGranted("android.permission.QUERY_USERS", Binder.getCallingUid());
    }

    public static void checkSystemOrRoot(String str) {
        int callingUid = Binder.getCallingUid();
        if (UserHandle.isSameApp(callingUid, 1000) || callingUid == 0) {
            return;
        }
        throw new SecurityException("Only system may: " + str);
    }

    public final void writeBitmapLP(UserInfo userInfo, Bitmap bitmap) {
        try {
            File file = new File(this.mUsersDir, Integer.toString(userInfo.id));
            File file2 = new File(file, "photo.png");
            File file3 = new File(file, "photo.png.tmp");
            if (!file.exists()) {
                file.mkdir();
                FileUtils.setPermissions(file.getPath(), 505, -1, -1);
            }
            Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.PNG;
            FileOutputStream fileOutputStream = new FileOutputStream(file3);
            if (bitmap.compress(compressFormat, 100, fileOutputStream) && file3.renameTo(file2) && SELinux.restorecon(file2)) {
                userInfo.iconPath = file2.getAbsolutePath();
            }
            try {
                fileOutputStream.close();
            } catch (IOException unused) {
            }
            file3.delete();
        } catch (FileNotFoundException e) {
            Slog.w("UserManagerService", "Error setting photo for user ", e);
        }
    }

    public int[] getUserIds() {
        int[] iArr;
        synchronized (this.mUsersLock) {
            iArr = this.mUserIds;
        }
        return iArr;
    }

    public boolean userExists(int i) {
        synchronized (this.mUsersLock) {
            for (int i2 : this.mUserIds) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }
    }

    public int[] getUserIdsIncludingPreCreated() {
        int[] iArr;
        synchronized (this.mUsersLock) {
            iArr = this.mUserIdsIncludingPreCreated;
        }
        return iArr;
    }

    public boolean isHeadlessSystemUserMode() {
        boolean z;
        synchronized (this.mUsersLock) {
            z = ((UserData) this.mUsers.get(0)).info.isFull() ? false : true;
        }
        return z;
    }

    public final boolean isDefaultHeadlessSystemUserMode() {
        if (!Build.isDebuggable()) {
            return RoSystemProperties.MULTIUSER_HEADLESS_SYSTEM_USER;
        }
        String str = SystemProperties.get("persist.debug.user_mode_emulation");
        if (!TextUtils.isEmpty(str)) {
            if ("headless".equals(str)) {
                return true;
            }
            if ("full".equals(str)) {
                return false;
            }
            if (!"default".equals(str)) {
                Slogf.e("UserManagerService", "isDefaultHeadlessSystemUserMode(): ignoring invalid valued of property %s: %s", "persist.debug.user_mode_emulation", str);
            }
        }
        return RoSystemProperties.MULTIUSER_HEADLESS_SYSTEM_USER;
    }

    public final void emulateSystemUserModeIfNeeded() {
        String str;
        int i;
        UserInfo earliestCreatedFullUser;
        if (Build.isDebuggable() && !TextUtils.isEmpty(SystemProperties.get("persist.debug.user_mode_emulation"))) {
            boolean isDefaultHeadlessSystemUserMode = isDefaultHeadlessSystemUserMode();
            synchronized (this.mPackagesLock) {
                synchronized (this.mUsersLock) {
                    boolean z = false;
                    UserData userData = (UserData) this.mUsers.get(0);
                    if (userData == null) {
                        Slogf.wtf("UserManagerService", "emulateSystemUserModeIfNeeded(): no system user data");
                        return;
                    }
                    int mainUserIdUnchecked = getMainUserIdUnchecked();
                    UserInfo userInfo = userData.info;
                    int i2 = userInfo.flags;
                    if (isDefaultHeadlessSystemUserMode) {
                        str = "android.os.usertype.system.HEADLESS";
                        i = i2 & (-1025) & (-16385);
                    } else {
                        str = "android.os.usertype.full.SYSTEM";
                        i = i2 | 1024 | 16384;
                    }
                    if (userInfo.userType.equals(str)) {
                        Slogf.d("UserManagerService", "emulateSystemUserModeIfNeeded(): system user type is already %s, returning", str);
                        return;
                    }
                    Slogf.i("UserManagerService", "Persisting emulated system user data: type changed from %s to %s, flags changed from %s to %s", userData.info.userType, str, UserInfo.flagsToString(i2), UserInfo.flagsToString(i));
                    UserInfo userInfo2 = userData.info;
                    userInfo2.userType = str;
                    userInfo2.flags = i;
                    writeUserLP(userData);
                    UserData userDataNoChecks = getUserDataNoChecks(mainUserIdUnchecked);
                    if (isDefaultHeadlessSystemUserMode) {
                        if (userDataNoChecks != null && (userDataNoChecks.info.flags & IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES) == 0) {
                            z = true;
                        }
                        if (!z && isMainUserPermanentAdmin() && (earliestCreatedFullUser = getEarliestCreatedFullUser()) != null) {
                            Slogf.i("UserManagerService", "Designating user " + earliestCreatedFullUser.id + " to be Main");
                            earliestCreatedFullUser.flags = earliestCreatedFullUser.flags | 16384;
                            writeUserLP(getUserDataNoChecks(earliestCreatedFullUser.id));
                        }
                    } else if (userDataNoChecks != null && (userDataNoChecks.info.flags & IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES) == 0) {
                        Slogf.i("UserManagerService", "Transferring Main to user 0 from " + userDataNoChecks.info.id);
                        UserInfo userInfo3 = userDataNoChecks.info;
                        userInfo3.flags = userInfo3.flags & (-16385);
                        writeUserLP(userDataNoChecks);
                    } else {
                        Slogf.i("UserManagerService", "Designated user 0 to be Main");
                    }
                    this.mUpdatingSystemUserMode = true;
                }
            }
        }
    }

    public final ResilientAtomicFile getUserListFile() {
        return new ResilientAtomicFile(this.mUserListFile, new File(this.mUserListFile.getParent(), this.mUserListFile.getName() + ".backup"), new File(this.mUserListFile.getParent(), this.mUserListFile.getName() + ".reservecopy"), 505, "user list", new ResilientAtomicFile.ReadEventLogger() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda2
            @Override // com.android.server.pm.ResilientAtomicFile.ReadEventLogger
            public final void logEvent(int i, String str) {
                UserManagerService.this.lambda$getUserListFile$3(i, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getUserListFile$3(int i, String str) {
        Slog.e("UserManagerService", str);
        scheduleWriteUserList();
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00db, code lost:
    
        if (r3.getName().equals("restrictions") == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00dd, code lost:
    
        r4 = r11.mGuestRestrictions;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00df, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e0, code lost:
    
        com.android.server.pm.UserRestrictionsUtils.readRestrictions(r3, r11.mGuestRestrictions);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e5, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x006a, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void readUserListLP() {
        /*
            Method dump skipped, instructions count: 299
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.readUserListLP():void");
    }

    public final void upgradeIfNecessaryLP() {
        upgradeIfNecessaryLP(this.mUserVersion, this.mUserTypeVersion);
    }

    public void upgradeIfNecessaryLP(int i, int i2) {
        UserInfo earliestCreatedFullUser;
        Slog.i("UserManagerService", "Upgrading users from userVersion " + i + " to 11");
        ArraySet arraySet = new ArraySet();
        int i3 = this.mUserVersion;
        int i4 = this.mUserTypeVersion;
        if (i < 1) {
            UserData userDataNoChecks = getUserDataNoChecks(0);
            if ("Primary".equals(userDataNoChecks.info.name)) {
                userDataNoChecks.info.name = this.mContext.getResources().getString(17041611);
                arraySet.add(Integer.valueOf(userDataNoChecks.info.id));
            }
            i = 1;
        }
        if (i < 2) {
            UserInfo userInfo = getUserDataNoChecks(0).info;
            int i5 = userInfo.flags;
            if ((i5 & 16) == 0) {
                userInfo.flags = i5 | 16;
                arraySet.add(Integer.valueOf(userInfo.id));
            }
            i = 2;
        }
        if (i < 4) {
            i = 4;
        }
        if (i < 5) {
            initDefaultGuestRestrictions();
            i = 5;
        }
        if (i < 6) {
            synchronized (this.mUsersLock) {
                for (int i6 = 0; i6 < this.mUsers.size(); i6++) {
                    UserData userData = (UserData) this.mUsers.valueAt(i6);
                    if (userData.info.isRestricted()) {
                        UserInfo userInfo2 = userData.info;
                        if (userInfo2.restrictedProfileParentId == -10000) {
                            userInfo2.restrictedProfileParentId = 0;
                            arraySet.add(Integer.valueOf(userInfo2.id));
                        }
                    }
                }
            }
            i = 6;
        }
        if (i < 7) {
            synchronized (this.mRestrictionsLock) {
                if (this.mDevicePolicyUserRestrictions.removeRestrictionsForAllUsers("ensure_verify_apps")) {
                    this.mDevicePolicyUserRestrictions.getRestrictionsNonNull(-1).putBoolean("ensure_verify_apps", true);
                }
            }
            List guestUsers = getGuestUsers();
            for (int i7 = 0; i7 < guestUsers.size(); i7++) {
                UserInfo userInfo3 = (UserInfo) guestUsers.get(i7);
                if (userInfo3 != null && !hasUserRestriction("no_config_wifi", userInfo3.id)) {
                    setUserRestriction("no_config_wifi", true, userInfo3.id);
                }
            }
            i = 7;
        }
        if (i < 8) {
            synchronized (this.mUsersLock) {
                UserData userData2 = (UserData) this.mUsers.get(0);
                userData2.info.flags |= IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES;
                if (!isDefaultHeadlessSystemUserMode()) {
                    userData2.info.flags |= 1024;
                }
                arraySet.add(Integer.valueOf(userData2.info.id));
                for (int i8 = 1; i8 < this.mUsers.size(); i8++) {
                    UserInfo userInfo4 = ((UserData) this.mUsers.valueAt(i8)).info;
                    int i9 = userInfo4.flags;
                    if ((i9 & 32) == 0) {
                        userInfo4.flags = i9 | 1024;
                        arraySet.add(Integer.valueOf(userInfo4.id));
                    }
                }
            }
            i = 8;
        }
        if (i < 9) {
            synchronized (this.mUsersLock) {
                for (int i10 = 0; i10 < this.mUsers.size(); i10++) {
                    UserData userData3 = (UserData) this.mUsers.valueAt(i10);
                    UserInfo userInfo5 = userData3.info;
                    int i11 = userInfo5.flags;
                    if ((i11 & IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES) == 0) {
                        try {
                            userInfo5.userType = UserInfo.getDefaultUserType(i11);
                        } catch (IllegalArgumentException e) {
                            throw new IllegalStateException("Cannot upgrade user with flags " + Integer.toHexString(i11) + " because it doesn't correspond to a valid user type.", e);
                        }
                    } else if ((i11 & 1024) != 0) {
                        userInfo5.userType = "android.os.usertype.full.SYSTEM";
                    } else {
                        userInfo5.userType = "android.os.usertype.system.HEADLESS";
                    }
                    UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(userData3.info.userType);
                    if (userTypeDetails == null) {
                        throw new IllegalStateException("Cannot upgrade user with flags " + Integer.toHexString(i11) + " because " + userData3.info.userType + " isn't defined on this device!");
                    }
                    UserInfo userInfo6 = userData3.info;
                    userInfo6.flags = userTypeDetails.getDefaultUserInfoFlags() | userInfo6.flags;
                    arraySet.add(Integer.valueOf(userData3.info.id));
                }
            }
            i = 9;
        }
        if (i < 10) {
            synchronized (this.mUsersLock) {
                for (int i12 = 0; i12 < this.mUsers.size(); i12++) {
                    UserData userData4 = (UserData) this.mUsers.valueAt(i12);
                    UserTypeDetails userTypeDetails2 = (UserTypeDetails) this.mUserTypes.get(userData4.info.userType);
                    if (userTypeDetails2 == null) {
                        throw new IllegalStateException("Cannot upgrade user because " + userData4.info.userType + " isn't defined on this device!");
                    }
                    userData4.userProperties = new UserProperties(userTypeDetails2.getDefaultUserPropertiesReference());
                    arraySet.add(Integer.valueOf(userData4.info.id));
                }
            }
            i = 10;
        }
        if (i < 11) {
            if (DualDarManager.isOnDeviceOwnerEnabled()) {
                migrateDualDarUserInfo(0);
                arraySet.add(0);
            } else {
                UserInfo legacyDualDarUser = getLegacyDualDarUser();
                if (legacyDualDarUser != null) {
                    migrateDualDarUserInfo(legacyDualDarUser.id);
                    arraySet.add(Integer.valueOf(legacyDualDarUser.id));
                }
            }
            if (isHeadlessSystemUserMode()) {
                if (isMainUserPermanentAdmin() && (earliestCreatedFullUser = getEarliestCreatedFullUser()) != null) {
                    earliestCreatedFullUser.flags |= 16384;
                    arraySet.add(Integer.valueOf(earliestCreatedFullUser.id));
                }
            } else {
                synchronized (this.mUsersLock) {
                    UserInfo userInfo7 = ((UserData) this.mUsers.get(0)).info;
                    userInfo7.flags |= 16384;
                    arraySet.add(Integer.valueOf(userInfo7.id));
                }
            }
            i = 11;
        }
        int userTypeVersion = UserTypeFactory.getUserTypeVersion();
        if (userTypeVersion > i2) {
            synchronized (this.mUsersLock) {
                upgradeUserTypesLU(UserTypeFactory.getUserTypeUpgrades(), this.mUserTypes, i2, arraySet);
            }
        }
        if (i < 11) {
            Slog.w("UserManagerService", "User version " + this.mUserVersion + " didn't upgrade as expected to 11");
            return;
        }
        if (i > 11) {
            Slog.wtf("UserManagerService", "Upgraded user version " + this.mUserVersion + " is higher the SDK's one of 11. Someone forgot to update USER_VERSION?");
        }
        this.mUserVersion = i;
        this.mUserTypeVersion = userTypeVersion;
        if (i3 < i || i4 < userTypeVersion) {
            Iterator it = arraySet.iterator();
            while (it.hasNext()) {
                UserData userDataNoChecks2 = getUserDataNoChecks(((Integer) it.next()).intValue());
                if (userDataNoChecks2 != null) {
                    writeUserLP(userDataNoChecks2);
                }
            }
            writeUserListLP();
        }
    }

    public final void upgradeUserTypesLU(List list, ArrayMap arrayMap, int i, Set set) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UserTypeFactory.UserTypeUpgrade userTypeUpgrade = (UserTypeFactory.UserTypeUpgrade) it.next();
            if (i <= userTypeUpgrade.getUpToVersion()) {
                for (int i2 = 0; i2 < this.mUsers.size(); i2++) {
                    UserData userData = (UserData) this.mUsers.valueAt(i2);
                    if (userTypeUpgrade.getFromType().equals(userData.info.userType)) {
                        UserTypeDetails userTypeDetails = (UserTypeDetails) arrayMap.get(userTypeUpgrade.getToType());
                        if (userTypeDetails == null) {
                            throw new IllegalStateException("Upgrade destination user type not defined: " + userTypeUpgrade.getToType());
                        }
                        upgradeProfileToTypeLU(userData.info, userTypeDetails);
                        set.add(Integer.valueOf(userData.info.id));
                    }
                }
            }
        }
    }

    public void upgradeProfileToTypeLU(UserInfo userInfo, UserTypeDetails userTypeDetails) {
        Slog.i("UserManagerService", "Upgrading user " + userInfo.id + " from " + userInfo.userType + " to " + userTypeDetails.getName());
        if (!userInfo.isProfile()) {
            throw new IllegalStateException("Can only upgrade profile types. " + userInfo.userType + " is not a profile type.");
        }
        if (!canAddMoreProfilesToUser(userTypeDetails.getName(), userInfo.profileGroupId, false)) {
            Slog.w("UserManagerService", "Exceeded maximum profiles of type " + userTypeDetails.getName() + " for user " + userInfo.id + ". Maximum allowed= " + userTypeDetails.getMaxAllowedPerParent());
        }
        UserTypeDetails userTypeDetails2 = (UserTypeDetails) this.mUserTypes.get(userInfo.userType);
        int defaultUserInfoFlags = userTypeDetails2 != null ? userTypeDetails2.getDefaultUserInfoFlags() : IInstalld.FLAG_USE_QUOTA;
        userInfo.userType = userTypeDetails.getName();
        userInfo.flags = (defaultUserInfoFlags ^ userInfo.flags) | userTypeDetails.getDefaultUserInfoFlags();
        synchronized (this.mRestrictionsLock) {
            if (!BundleUtils.isEmpty(userTypeDetails.getDefaultRestrictions())) {
                Bundle clone = BundleUtils.clone(this.mBaseUserRestrictions.getRestrictions(userInfo.id));
                UserRestrictionsUtils.merge(clone, userTypeDetails.getDefaultRestrictions());
                updateUserRestrictionsInternalLR(clone, userInfo.id);
            }
        }
        userInfo.profileBadge = getFreeProfileBadgeLU(userInfo.profileGroupId, userInfo.userType);
    }

    public final UserInfo getEarliestCreatedFullUser() {
        List usersInternal = getUsersInternal(true, true, true);
        UserInfo userInfo = null;
        long j = Long.MAX_VALUE;
        for (int i = 0; i < usersInternal.size(); i++) {
            UserInfo userInfo2 = (UserInfo) usersInternal.get(i);
            if (userInfo2.isFull() && userInfo2.isAdmin()) {
                long j2 = userInfo2.creationTime;
                if (j2 >= 0 && j2 < j) {
                    userInfo = userInfo2;
                    j = j2;
                }
            }
        }
        return userInfo;
    }

    public final void fallbackToSingleUserLP() {
        PersonaManagerService personaManagerService = this.sPersonaManager;
        if (personaManagerService != null) {
            personaManagerService.onUserRemoved(-1);
        }
        String str = isDefaultHeadlessSystemUserMode() ? "android.os.usertype.system.HEADLESS" : "android.os.usertype.full.SYSTEM";
        UserData putUserInfo = putUserInfo(new UserInfo(0, (String) null, (String) null, ((UserTypeDetails) this.mUserTypes.get(str)).getDefaultUserInfoFlags() | 16, str));
        putUserInfo.userProperties = new UserProperties(((UserTypeDetails) this.mUserTypes.get(putUserInfo.info.userType)).getDefaultUserPropertiesReference());
        this.mNextSerialNumber = 10;
        this.mUserVersion = 11;
        this.mUserTypeVersion = UserTypeFactory.getUserTypeVersion();
        Bundle bundle = new Bundle();
        try {
            for (String str2 : this.mContext.getResources().getStringArray(17236156)) {
                if (UserRestrictionsUtils.isValidRestriction(str2)) {
                    bundle.putBoolean(str2, true);
                }
            }
        } catch (Resources.NotFoundException e) {
            Slog.e("UserManagerService", "Couldn't find resource: config_defaultFirstUserRestrictions", e);
        }
        if (!bundle.isEmpty()) {
            synchronized (this.mRestrictionsLock) {
                this.mBaseUserRestrictions.updateRestrictions(0, bundle);
            }
        }
        initDefaultGuestRestrictions();
        writeUserLP(putUserInfo);
        writeUserListLP();
    }

    public final String getOwnerName() {
        return (String) this.mOwnerName.get();
    }

    public final String getGuestName() {
        return this.mContext.getString(R.string.permdesc_use_sip);
    }

    public final void invalidateOwnerNameIfNecessary(Resources resources, boolean z) {
        int updateFrom = this.mLastConfiguration.updateFrom(resources.getConfiguration());
        if (z || (this.mOwnerNameTypedValue.changingConfigurations & updateFrom) != 0) {
            resources.getValue(17041611, this.mOwnerNameTypedValue, true);
            CharSequence coerceToString = this.mOwnerNameTypedValue.coerceToString();
            this.mOwnerName.set(coerceToString != null ? coerceToString.toString() : null);
        }
    }

    public final void scheduleWriteUserList() {
        if (this.mHandler.hasMessages(2)) {
            return;
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(2), 2000L);
    }

    public final void scheduleWriteUser(int i) {
        if (this.mHandler.hasMessages(1, Integer.valueOf(i))) {
            return;
        }
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, Integer.valueOf(i)), 2000L);
    }

    public final ResilientAtomicFile getUserFile(final int i) {
        return new ResilientAtomicFile(new File(this.mUsersDir, i + ".xml"), new File(this.mUsersDir, i + ".xml.backup"), new File(this.mUsersDir, i + ".xml.reservecopy"), 505, "user info", new ResilientAtomicFile.ReadEventLogger() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda5
            @Override // com.android.server.pm.ResilientAtomicFile.ReadEventLogger
            public final void logEvent(int i2, String str) {
                UserManagerService.this.lambda$getUserFile$4(i, i2, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getUserFile$4(int i, int i2, String str) {
        Slog.e("UserManagerService", str);
        if (getUserDataNoChecks(i) != null) {
            scheduleWriteUser(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void writeUserLP(com.android.server.pm.UserManagerService.UserData r6) {
        /*
            r5 = this;
            android.content.pm.UserInfo r0 = r6.info
            int r0 = r0.id
            com.android.server.pm.ResilientAtomicFile r0 = r5.getUserFile(r0)
            java.io.FileOutputStream r1 = r0.startWrite()     // Catch: java.lang.Throwable -> L15 java.lang.Exception -> L17
            r5.writeUserLP(r6, r1)     // Catch: java.lang.Exception -> L13 java.lang.Throwable -> L15
            r0.finishWrite(r1)     // Catch: java.lang.Exception -> L13 java.lang.Throwable -> L15
            goto L36
        L13:
            r5 = move-exception
            goto L19
        L15:
            r5 = move-exception
            goto L3c
        L17:
            r5 = move-exception
            r1 = 0
        L19:
            java.lang.String r2 = "UserManagerService"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L15
            r3.<init>()     // Catch: java.lang.Throwable -> L15
            java.lang.String r4 = "Error writing user info "
            r3.append(r4)     // Catch: java.lang.Throwable -> L15
            android.content.pm.UserInfo r6 = r6.info     // Catch: java.lang.Throwable -> L15
            int r6 = r6.id     // Catch: java.lang.Throwable -> L15
            r3.append(r6)     // Catch: java.lang.Throwable -> L15
            java.lang.String r6 = r3.toString()     // Catch: java.lang.Throwable -> L15
            android.util.Slog.e(r2, r6, r5)     // Catch: java.lang.Throwable -> L15
            r0.failWrite(r1)     // Catch: java.lang.Throwable -> L15
        L36:
            if (r0 == 0) goto L3b
            r0.close()
        L3b:
            return
        L3c:
            if (r0 == 0) goto L46
            r0.close()     // Catch: java.lang.Throwable -> L42
            goto L46
        L42:
            r6 = move-exception
            r5.addSuppressed(r6)
        L46:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.writeUserLP(com.android.server.pm.UserManagerService$UserData):void");
    }

    public void writeUserLP(UserData userData, OutputStream outputStream) {
        TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(outputStream);
        resolveSerializer.startDocument((String) null, Boolean.TRUE);
        resolveSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
        UserInfo userInfo = userData.info;
        resolveSerializer.startTag((String) null, "user");
        resolveSerializer.attributeInt((String) null, "id", userInfo.id);
        resolveSerializer.attributeInt((String) null, "serialNumber", userInfo.serialNumber);
        resolveSerializer.attributeInt((String) null, "flags", userInfo.flags);
        resolveSerializer.attribute((String) null, "attributes", Integer.toString(userInfo.getAttributes()));
        resolveSerializer.attribute((String) null, "type", userInfo.userType);
        resolveSerializer.attributeLong((String) null, "created", userInfo.creationTime);
        resolveSerializer.attributeLong((String) null, "lastLoggedIn", userInfo.lastLoggedInTime);
        String str = userInfo.lastLoggedInFingerprint;
        if (str != null) {
            resolveSerializer.attribute((String) null, "lastLoggedInFingerprint", str);
        }
        resolveSerializer.attributeLong((String) null, "lastEnteredForeground", userData.mLastEnteredForegroundTimeMillis);
        String str2 = userInfo.iconPath;
        if (str2 != null) {
            resolveSerializer.attribute((String) null, KnoxCustomManagerService.ICON, str2);
        }
        if (userInfo.partial) {
            resolveSerializer.attributeBoolean((String) null, "partial", true);
        }
        if (userInfo.preCreated) {
            resolveSerializer.attributeBoolean((String) null, "preCreated", true);
        }
        if (userInfo.convertedFromPreCreated) {
            resolveSerializer.attributeBoolean((String) null, "convertedFromPreCreated", true);
        }
        if (userInfo.guestToRemove) {
            resolveSerializer.attributeBoolean((String) null, "guestToRemove", true);
        }
        int i = userInfo.profileGroupId;
        if (i != -10000) {
            resolveSerializer.attributeInt((String) null, "profileGroupId", i);
        }
        resolveSerializer.attributeInt((String) null, "profileBadge", userInfo.profileBadge);
        int i2 = userInfo.restrictedProfileParentId;
        if (i2 != -10000) {
            resolveSerializer.attributeInt((String) null, "restrictedProfileParentId", i2);
        }
        if (userData.persistSeedData) {
            String str3 = userData.seedAccountName;
            if (str3 != null) {
                resolveSerializer.attribute((String) null, "seedAccountName", truncateString(str3, 500));
            }
            String str4 = userData.seedAccountType;
            if (str4 != null) {
                resolveSerializer.attribute((String) null, "seedAccountType", truncateString(str4, 500));
            }
        }
        if (userInfo.name != null) {
            resolveSerializer.startTag((String) null, "name");
            resolveSerializer.text(truncateString(userInfo.name, 100));
            resolveSerializer.endTag((String) null, "name");
        }
        synchronized (this.mRestrictionsLock) {
            UserRestrictionsUtils.writeRestrictions(resolveSerializer, this.mBaseUserRestrictions.getRestrictions(userInfo.id), "restrictions");
            UserRestrictionsUtils.writeRestrictions(resolveSerializer, this.mDevicePolicyUserRestrictions.getRestrictions(-1), "device_policy_global_restrictions");
            UserRestrictionsUtils.writeRestrictions(resolveSerializer, this.mDevicePolicyUserRestrictions.getRestrictions(userInfo.id), "device_policy_local_restrictions");
        }
        if (userData.account != null) {
            resolveSerializer.startTag((String) null, "account");
            resolveSerializer.text(userData.account);
            resolveSerializer.endTag((String) null, "account");
        }
        if (userData.persistSeedData && userData.seedAccountOptions != null) {
            resolveSerializer.startTag((String) null, "seedAccountOptions");
            userData.seedAccountOptions.saveToXml(resolveSerializer);
            resolveSerializer.endTag((String) null, "seedAccountOptions");
        }
        if (userData.userProperties != null) {
            resolveSerializer.startTag((String) null, "userProperties");
            userData.userProperties.writeToXml(resolveSerializer);
            resolveSerializer.endTag((String) null, "userProperties");
        }
        if (userData.getLastRequestQuietModeEnabledMillis() != 0) {
            resolveSerializer.startTag((String) null, "lastRequestQuietModeEnabledCall");
            resolveSerializer.text(String.valueOf(userData.getLastRequestQuietModeEnabledMillis()));
            resolveSerializer.endTag((String) null, "lastRequestQuietModeEnabledCall");
        }
        resolveSerializer.startTag((String) null, "ignorePrepareStorageErrors");
        resolveSerializer.text(String.valueOf(userData.getIgnorePrepareStorageErrors()));
        resolveSerializer.endTag((String) null, "ignorePrepareStorageErrors");
        resolveSerializer.endTag((String) null, "user");
        resolveSerializer.endDocument();
    }

    public final String truncateString(String str, int i) {
        return (str == null || str.length() <= i) ? str : str.substring(0, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void writeUserListLP() {
        /*
            r10 = this;
            r10.setContainerInfo()
            com.android.server.pm.ResilientAtomicFile r0 = r10.getUserListFile()
            r1 = 0
            java.io.FileOutputStream r2 = r0.startWrite()     // Catch: java.lang.Throwable -> L9e java.lang.Exception -> La0
            com.android.modules.utils.TypedXmlSerializer r3 = android.util.Xml.resolveSerializer(r2)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.Boolean r4 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            r3.startDocument(r1, r4)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r4 = "http://xmlpull.org/v1/doc/features.html#indent-output"
            r5 = 1
            r3.setFeature(r4, r5)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r4 = "users"
            r3.startTag(r1, r4)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r4 = "nextSerialNumber"
            int r5 = r10.mNextSerialNumber     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            r3.attributeInt(r1, r4, r5)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r4 = "version"
            int r5 = r10.mUserVersion     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            r3.attributeInt(r1, r4, r5)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r4 = "userTypeConfigVersion"
            int r5 = r10.mUserTypeVersion     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            r3.attributeInt(r1, r4, r5)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r4 = "guestRestrictions"
            r3.startTag(r1, r4)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            android.os.Bundle r4 = r10.mGuestRestrictions     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            monitor-enter(r4)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            android.os.Bundle r5 = r10.mGuestRestrictions     // Catch: java.lang.Throwable -> L98
            java.lang.String r6 = "restrictions"
            com.android.server.pm.UserRestrictionsUtils.writeRestrictions(r3, r5, r6)     // Catch: java.lang.Throwable -> L98
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L98
            java.lang.String r4 = "guestRestrictions"
            r3.endTag(r1, r4)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.Object r4 = r10.mUsersLock     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            monitor-enter(r4)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            android.util.SparseArray r5 = r10.mUsers     // Catch: java.lang.Throwable -> L95
            int r5 = r5.size()     // Catch: java.lang.Throwable -> L95
            int[] r6 = new int[r5]     // Catch: java.lang.Throwable -> L95
            r7 = 0
            r8 = r7
        L5c:
            if (r8 >= r5) goto L6f
            android.util.SparseArray r9 = r10.mUsers     // Catch: java.lang.Throwable -> L95
            java.lang.Object r9 = r9.valueAt(r8)     // Catch: java.lang.Throwable -> L95
            com.android.server.pm.UserManagerService$UserData r9 = (com.android.server.pm.UserManagerService.UserData) r9     // Catch: java.lang.Throwable -> L95
            android.content.pm.UserInfo r9 = r9.info     // Catch: java.lang.Throwable -> L95
            int r9 = r9.id     // Catch: java.lang.Throwable -> L95
            r6[r8] = r9     // Catch: java.lang.Throwable -> L95
            int r8 = r8 + 1
            goto L5c
        L6f:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L95
        L70:
            if (r7 >= r5) goto L88
            r10 = r6[r7]     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r4 = "user"
            r3.startTag(r1, r4)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r4 = "id"
            r3.attributeInt(r1, r4, r10)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            java.lang.String r10 = "user"
            r3.endTag(r1, r10)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            int r7 = r7 + 1
            goto L70
        L88:
            java.lang.String r10 = "users"
            r3.endTag(r1, r10)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            r3.endDocument()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            r0.finishWrite(r2)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
            goto Lab
        L95:
            r10 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L95
            throw r10     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
        L98:
            r10 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L98
            throw r10     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> L9e
        L9b:
            r10 = move-exception
            r1 = r2
            goto La1
        L9e:
            r10 = move-exception
            goto Lb1
        La0:
            r10 = move-exception
        La1:
            java.lang.String r2 = "UserManagerService"
            java.lang.String r3 = "Error writing user list"
            android.util.Slog.e(r2, r3, r10)     // Catch: java.lang.Throwable -> L9e
            r0.failWrite(r1)     // Catch: java.lang.Throwable -> L9e
        Lab:
            if (r0 == 0) goto Lb0
            r0.close()
        Lb0:
            return
        Lb1:
            if (r0 == 0) goto Lbb
            r0.close()     // Catch: java.lang.Throwable -> Lb7
            goto Lbb
        Lb7:
            r0 = move-exception
            r10.addSuppressed(r0)
        Lbb:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.writeUserListLP():void");
    }

    public final UserData readUserLP(int i, int i2) {
        FileInputStream fileInputStream;
        Exception e;
        ResilientAtomicFile userFile = getUserFile(i);
        try {
            try {
                fileInputStream = userFile.openRead();
            } catch (Throwable th) {
                if (userFile != null) {
                    try {
                        userFile.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            fileInputStream = null;
            e = e2;
        }
        try {
            if (fileInputStream == null) {
                Slog.e("UserManagerService", "User info not found, returning null, user id: " + i);
                userFile.close();
                return null;
            }
            UserData readUserLP = readUserLP(i, fileInputStream, i2);
            userFile.close();
            return readUserLP;
        } catch (Exception e3) {
            e = e3;
            Slog.e("UserManagerService", "Error reading user info, user id: " + i);
            userFile.failRead(fileInputStream, e);
            UserData readUserLP2 = readUserLP(i, i2);
            userFile.close();
            return readUserLP2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0209, code lost:
    
        r46 = r4;
        r7 = r10;
        r47 = r11;
        r29 = r13;
        r4 = r14;
        r10 = r15;
        r44 = r20;
        r42 = r22;
        r15 = r2;
        r0 = r2;
        r41 = r27;
        r3 = r30;
        r20 = r31;
        r16 = r33;
        r54 = r34;
        r2 = r36;
        r1 = r37;
        r19 = r38;
        r5 = r40;
        r21 = r6;
        r22 = r9;
        r23 = r12;
        r12 = r17;
        r17 = r32;
        r6 = r35;
        r18 = r2;
        r9 = r8;
        r8 = r2;
        r24 = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.server.pm.UserManagerService.UserData readUserLP(int r52, java.io.InputStream r53, int r54) {
        /*
            Method dump skipped, instructions count: 784
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.readUserLP(int, java.io.InputStream, int):com.android.server.pm.UserManagerService$UserData");
    }

    public static boolean cleanAppRestrictionsForPackageLAr(String str, int i) {
        File file = new File(Environment.getUserSystemDirectory(i), packageToRestrictionsFileName(str));
        if (!file.exists()) {
            return false;
        }
        file.delete();
        return true;
    }

    public UserInfo createProfileForUserWithThrow(String str, String str2, int i, int i2, String[] strArr) {
        checkCreateUsersPermission(i);
        try {
            return createUserInternal(str, str2, i, i2, strArr);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    public UserInfo createProfileForUserEvenWhenDisallowedWithThrow(String str, String str2, int i, int i2, String[] strArr) {
        checkCreateUsersPermission(i);
        try {
            return createUserInternalUnchecked(str, str2, i, i2, false, strArr, null);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    public UserInfo createUserWithThrow(String str, String str2, int i) {
        checkCreateUsersPermission(i);
        try {
            return createUserInternal(str, str2, i, -10000, null);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    public UserInfo preCreateUserWithThrow(String str) {
        UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(str);
        int defaultUserInfoFlags = userTypeDetails != null ? userTypeDetails.getDefaultUserInfoFlags() : 0;
        checkCreateUsersPermission(defaultUserInfoFlags);
        Preconditions.checkArgument(isUserTypeEligibleForPreCreation(userTypeDetails), "cannot pre-create user of type " + str);
        Slog.i("UserManagerService", "Pre-creating user of type " + str);
        try {
            return createUserInternalUnchecked(null, str, defaultUserInfoFlags, -10000, true, null, null);
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    public UserHandle createUserWithAttributes(String str, String str2, int i, Bitmap bitmap, String str3, String str4, PersistableBundle persistableBundle) {
        checkCreateUsersPermission(i);
        if (someUserHasAccountNoChecks(str3, str4)) {
            throw new ServiceSpecificException(7);
        }
        try {
            UserInfo createUserInternal = createUserInternal(str, str2, i, -10000, null);
            if (bitmap != null) {
                this.mLocalService.setUserIcon(createUserInternal.id, bitmap);
            }
            setSeedAccountDataNoChecks(createUserInternal.id, str3, str4, persistableBundle, true);
            return createUserInternal.getUserHandle();
        } catch (UserManager.CheckedUserOperationException e) {
            throw e.toServiceSpecificException();
        }
    }

    public final UserInfo createUserInternal(String str, String str2, int i, int i2, String[] strArr) {
        String str3;
        if (UserManager.isUserTypeCloneProfile(str2)) {
            str3 = "no_add_clone_profile";
        } else {
            str3 = UserManager.isUserTypeManagedProfile(str2) ? "no_add_managed_profile" : "no_add_user";
        }
        enforceUserRestriction(str3, UserHandle.getCallingUserId(), "Cannot add user");
        boolean z = (i & 32) != 0;
        EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance(this.mContext);
        if (UserManager.supportsMultipleUsers() && !z && (!enterpriseDeviceManager.getMultiUserManager().isUserCreationAllowed(true) || !enterpriseDeviceManager.getMultiUserManager().multipleUsersAllowed(true))) {
            Log.d("UserManagerService", "MultiUserManager policy blocked to create user");
            throwCheckedUserOperationException("Cannot create user due to Knox security policy.", 1);
        }
        return createUserInternalUnchecked(str, str2, i, i2, false, strArr, null);
    }

    public final UserInfo createUserInternalUnchecked(String str, String str2, int i, int i2, boolean z, String[] strArr, Object obj) {
        TimingsTraceAndSlog timingsTraceAndSlog = new TimingsTraceAndSlog();
        timingsTraceAndSlog.traceBegin("createUser-" + i);
        this.mUserJourneyLogger.logUserJourneyBegin(-1, 4);
        boolean z2 = (524288 & i) != 0;
        if (z2 && !this.mMaintenanceModeManager.openUserCreationSession()) {
            return null;
        }
        try {
            UserInfo createUserInternalUncheckedNoTracing = createUserInternalUncheckedNoTracing(str, str2, i, i2, z, strArr, timingsTraceAndSlog, obj);
            if (createUserInternalUncheckedNoTracing != null) {
                this.mUserJourneyLogger.logUserCreateJourneyFinish(getCurrentUserId(), createUserInternalUncheckedNoTracing);
            } else {
                this.mUserJourneyLogger.logNullUserJourneyError(4, getCurrentUserId(), -1, str2, i);
            }
            timingsTraceAndSlog.traceEnd();
            if (z2) {
                this.mMaintenanceModeManager.closeUserCreationSession();
            }
            return createUserInternalUncheckedNoTracing;
        } finally {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0513  */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v13, types: [java.lang.Object, com.android.server.pm.UserManagerService$UserData] */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r29v0, types: [com.android.server.pm.UserManagerService] */
    /* JADX WARN: Type inference failed for: r5v17, types: [com.android.server.pm.PackageManagerService] */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v16, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v21, types: [com.android.server.pm.RestrictionsSet] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v34 */
    /* JADX WARN: Type inference failed for: r9v35 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.content.pm.UserInfo createUserInternalUncheckedNoTracing(java.lang.String r30, java.lang.String r31, int r32, int r33, boolean r34, java.lang.String[] r35, com.android.server.utils.TimingsTraceAndSlog r36, java.lang.Object r37) {
        /*
            Method dump skipped, instructions count: 1317
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.createUserInternalUncheckedNoTracing(java.lang.String, java.lang.String, int, int, boolean, java.lang.String[], com.android.server.utils.TimingsTraceAndSlog, java.lang.Object):android.content.pm.UserInfo");
    }

    public final void applyDefaultUserSettings(UserTypeDetails userTypeDetails, int i) {
        Bundle defaultSystemSettings = userTypeDetails.getDefaultSystemSettings();
        Bundle defaultSecureSettings = userTypeDetails.getDefaultSecureSettings();
        if (defaultSystemSettings.isEmpty() && defaultSecureSettings.isEmpty()) {
            return;
        }
        int size = defaultSystemSettings.size();
        String[] strArr = (String[]) defaultSystemSettings.keySet().toArray(new String[size]);
        for (int i2 = 0; i2 < size; i2++) {
            String str = strArr[i2];
            if (!Settings.System.putStringForUser(this.mContext.getContentResolver(), str, defaultSystemSettings.getString(str), i)) {
                Slog.e("UserManagerService", "Failed to insert default system setting: " + str);
            }
        }
        int size2 = defaultSecureSettings.size();
        String[] strArr2 = (String[]) defaultSecureSettings.keySet().toArray(new String[size2]);
        for (int i3 = 0; i3 < size2; i3++) {
            String str2 = strArr2[i3];
            if (!Settings.Secure.putStringForUser(this.mContext.getContentResolver(), str2, defaultSecureSettings.getString(str2), i)) {
                Slog.e("UserManagerService", "Failed to insert default secure setting: " + str2);
            }
        }
    }

    public final void setDefaultCrossProfileIntentFilters(int i, UserTypeDetails userTypeDetails, Bundle bundle, int i2) {
        if (userTypeDetails == null || !userTypeDetails.isProfile() || userTypeDetails.getDefaultCrossProfileIntentFilters().isEmpty()) {
            return;
        }
        boolean z = bundle.getBoolean("no_sharing_into_profile", false);
        int size = userTypeDetails.getDefaultCrossProfileIntentFilters().size();
        for (int i3 = 0; i3 < size; i3++) {
            DefaultCrossProfileIntentFilter defaultCrossProfileIntentFilter = (DefaultCrossProfileIntentFilter) userTypeDetails.getDefaultCrossProfileIntentFilters().get(i3);
            if (!z || !defaultCrossProfileIntentFilter.letsPersonalDataIntoProfile) {
                if (defaultCrossProfileIntentFilter.direction == 0) {
                    PackageManagerService packageManagerService = this.mPm;
                    packageManagerService.addCrossProfileIntentFilter(packageManagerService.snapshotComputer(), defaultCrossProfileIntentFilter.filter, this.mContext.getOpPackageName(), i, i2, defaultCrossProfileIntentFilter.flags);
                } else {
                    PackageManagerService packageManagerService2 = this.mPm;
                    packageManagerService2.addCrossProfileIntentFilter(packageManagerService2.snapshotComputer(), defaultCrossProfileIntentFilter.filter, this.mContext.getOpPackageName(), i2, i, defaultCrossProfileIntentFilter.flags);
                }
            }
        }
    }

    public final UserInfo convertPreCreatedUserIfPossible(String str, int i, String str2, final Object obj) {
        UserData preCreatedUserLU;
        synchronized (this.mUsersLock) {
            preCreatedUserLU = getPreCreatedUserLU(str);
        }
        if (preCreatedUserLU == null) {
            return null;
        }
        synchronized (this.mUserStates) {
            if (this.mUserStates.has(preCreatedUserLU.info.id)) {
                Slog.w("UserManagerService", "Cannot reuse pre-created user " + preCreatedUserLU.info.id + " because it didn't stop yet");
                return null;
            }
            final UserInfo userInfo = preCreatedUserLU.info;
            int i2 = userInfo.flags | i;
            if (!checkUserTypeConsistency(i2)) {
                Slog.wtf("UserManagerService", "Cannot reuse pre-created user " + userInfo.id + " of type " + str + " because flags are inconsistent. Flags (" + Integer.toHexString(i) + "); preCreatedUserFlags ( " + Integer.toHexString(userInfo.flags) + ").");
                return null;
            }
            Slog.i("UserManagerService", "Reusing pre-created user " + userInfo.id + " of type " + str + " and bestowing on it flags " + UserInfo.flagsToString(i));
            userInfo.name = str2;
            userInfo.flags = i2;
            userInfo.preCreated = false;
            userInfo.convertedFromPreCreated = true;
            userInfo.creationTime = getCreationTime();
            synchronized (this.mPackagesLock) {
                writeUserLP(preCreatedUserLU);
                writeUserListLP();
            }
            updateUserIds();
            Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingRunnable() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda6
                public final void runOrThrow() {
                    UserManagerService.this.lambda$convertPreCreatedUserIfPossible$6(userInfo, obj);
                }
            });
            return userInfo;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$convertPreCreatedUserIfPossible$6(UserInfo userInfo, Object obj) {
        this.mPm.onNewUserCreated(userInfo.id, true);
        dispatchUserAdded(userInfo, obj);
        VoiceInteractionManagerInternal voiceInteractionManagerInternal = (VoiceInteractionManagerInternal) LocalServices.getService(VoiceInteractionManagerInternal.class);
        if (voiceInteractionManagerInternal != null) {
            voiceInteractionManagerInternal.onPreCreatedUserConversion(userInfo.id);
        }
    }

    public static boolean checkUserTypeConsistency(int i) {
        return isAtMostOneFlag(i & 4620) && isAtMostOneFlag(i & 5120) && isAtMostOneFlag(i & 6144);
    }

    public boolean installWhitelistedSystemPackages(boolean z, boolean z2, ArraySet arraySet) {
        return this.mSystemPackageInstaller.installWhitelistedSystemPackages(z || this.mUpdatingSystemUserMode, z2, arraySet);
    }

    public String[] getPreInstallableSystemPackages(String str) {
        checkCreateUsersPermission("getPreInstallableSystemPackages");
        Set installablePackagesForUserType = this.mSystemPackageInstaller.getInstallablePackagesForUserType(str);
        if (installablePackagesForUserType == null) {
            return null;
        }
        return (String[]) installablePackagesForUserType.toArray(new String[installablePackagesForUserType.size()]);
    }

    public final long getCreationTime() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis > 946080000000L) {
            return currentTimeMillis;
        }
        return 0L;
    }

    public final void dispatchUserAdded(UserInfo userInfo, Object obj) {
        String str;
        synchronized (this.mUserLifecycleListeners) {
            for (int i = 0; i < this.mUserLifecycleListeners.size(); i++) {
                ((UserManagerInternal.UserLifecycleListener) this.mUserLifecycleListeners.get(i)).onUserCreated(userInfo, obj);
            }
        }
        Intent intent = new Intent("android.intent.action.USER_ADDED");
        intent.addFlags(16777216);
        intent.addFlags(67108864);
        intent.putExtra("android.intent.extra.user_handle", userInfo.id);
        intent.putExtra("android.intent.extra.USER", UserHandle.of(userInfo.id));
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL, "android.permission.MANAGE_USERS");
        Context context = this.mContext;
        if (userInfo.isGuest()) {
            str = "users_guest_created";
        } else {
            str = userInfo.isDemo() ? "users_demo_created" : "users_user_created";
        }
        MetricsLogger.count(context, str, 1);
        if (userInfo.isProfile()) {
            sendProfileAddedBroadcast(userInfo.profileGroupId, userInfo.id);
        } else if (Settings.Global.getString(this.mContext.getContentResolver(), "user_switcher_enabled") == null) {
            Settings.Global.putInt(this.mContext.getContentResolver(), "user_switcher_enabled", 1);
        }
    }

    public final UserData getPreCreatedUserLU(String str) {
        int size = this.mUsers.size();
        for (int i = 0; i < size; i++) {
            UserData userData = (UserData) this.mUsers.valueAt(i);
            UserInfo userInfo = userData.info;
            if (userInfo.preCreated && !userInfo.partial && userInfo.userType.equals(str)) {
                if (userData.info.isInitialized()) {
                    return userData;
                }
                Slog.w("UserManagerService", "found pre-created user of type " + str + ", but it's not initialized yet: " + userData.info.toFullString());
            }
        }
        return null;
    }

    public static boolean isUserTypeEligibleForPreCreation(UserTypeDetails userTypeDetails) {
        return (userTypeDetails == null || userTypeDetails.isProfile() || userTypeDetails.getName().equals("android.os.usertype.full.RESTRICTED")) ? false : true;
    }

    public final void registerStatsCallbacks() {
        StatsManager statsManager = (StatsManager) this.mContext.getSystemService(StatsManager.class);
        statsManager.setPullAtomCallback(FrameworkStatsLog.USER_INFO, (StatsManager.PullAtomMetadata) null, BackgroundThread.getExecutor(), new StatsManager.StatsPullAtomCallback() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda7
            public final int onPullAtom(int i, List list) {
                int onPullAtom;
                onPullAtom = UserManagerService.this.onPullAtom(i, list);
                return onPullAtom;
            }
        });
        statsManager.setPullAtomCallback(FrameworkStatsLog.MULTI_USER_INFO, (StatsManager.PullAtomMetadata) null, BackgroundThread.getExecutor(), new StatsManager.StatsPullAtomCallback() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda7
            public final int onPullAtom(int i, List list) {
                int onPullAtom;
                onPullAtom = UserManagerService.this.onPullAtom(i, list);
                return onPullAtom;
            }
        });
    }

    public final int onPullAtom(int i, List list) {
        boolean z;
        int i2 = -1;
        if (i != 10152) {
            if (i == 10160) {
                if (UserManager.getMaxSupportedUsers() <= 1) {
                    return 0;
                }
                list.add(FrameworkStatsLog.buildStatsEvent(FrameworkStatsLog.MULTI_USER_INFO, UserManager.getMaxSupportedUsers(), isUserSwitcherEnabled(-1), UserManager.supportsMultipleUsers() && !hasUserRestriction("no_add_user", -1)));
                return 0;
            }
            Slogf.e("UserManagerService", "Unexpected atom tag: %d", Integer.valueOf(i));
            return 1;
        }
        List usersInternal = getUsersInternal(true, true, true);
        int size = usersInternal.size();
        if (size <= 1) {
            return 0;
        }
        int i3 = 0;
        while (i3 < size) {
            UserInfo userInfo = (UserInfo) usersInternal.get(i3);
            int userTypeForStatsd = UserJourneyLogger.getUserTypeForStatsd(userInfo.userType);
            String str = userTypeForStatsd == 0 ? userInfo.userType : null;
            synchronized (this.mUserStates) {
                z = this.mUserStates.get(userInfo.id, i2) == 3;
            }
            list.add(FrameworkStatsLog.buildStatsEvent(FrameworkStatsLog.USER_INFO, userInfo.id, userTypeForStatsd, str, userInfo.flags, userInfo.creationTime, userInfo.lastLoggedInTime, z));
            i3++;
            i2 = -1;
        }
        return 0;
    }

    public UserData putUserInfo(UserInfo userInfo) {
        UserData userData = new UserData();
        userData.info = userInfo;
        synchronized (this.mUsersLock) {
            this.mUsers.put(userInfo.id, userData);
        }
        updateUserIds();
        return userData;
    }

    public void removeUserInfo(int i) {
        synchronized (this.mUsersLock) {
            this.mUsers.remove(i);
        }
    }

    public UserInfo createRestrictedProfileWithThrow(String str, int i) {
        checkCreateUsersPermission("setupRestrictedProfile");
        UserInfo createProfileForUserWithThrow = createProfileForUserWithThrow(str, "android.os.usertype.full.RESTRICTED", 0, i, null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            setUserRestriction("no_modify_accounts", true, createProfileForUserWithThrow.id);
            Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "location_mode", 0, createProfileForUserWithThrow.id);
            setUserRestriction("no_share_location", true, createProfileForUserWithThrow.id);
            return createProfileForUserWithThrow;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public List getGuestUsers() {
        checkManageUsersPermission("getGuestUsers");
        ArrayList arrayList = new ArrayList();
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i = 0; i < size; i++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i)).info;
                if (userInfo.isGuest() && !userInfo.guestToRemove && !userInfo.preCreated && !this.mRemovingUserIds.get(userInfo.id)) {
                    arrayList.add(userInfo);
                }
            }
        }
        return arrayList;
    }

    public final void cleanUpMaintenanceModeUserDebris(UserData userData) {
        markMaintenanceModeUserForDeletion(userData);
        this.mMaintenanceModeManager.reboot("Failed to enable");
    }

    public final boolean removeMaintenanceModeUser(UserData userData) {
        if (!this.mMaintenanceModeManager.isAllowedToManage()) {
            return false;
        }
        markMaintenanceModeUserForDeletion(userData);
        this.mMaintenanceModeManager.finishUserDeletion();
        return true;
    }

    public final void markMaintenanceModeUserForDeletion(UserData userData) {
        if (userData == null || userData.info == null) {
            return;
        }
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                addRemovingUserIdLocked(77);
            }
            UserInfo userInfo = userData.info;
            userInfo.partial = true;
            userInfo.flags |= 64;
            writeUserLP(userData);
        }
    }

    public boolean markGuestForDeletion(int i) {
        checkManageUsersPermission("Only the system can remove users");
        if (getUserRestrictions(UserHandle.getCallingUserId()).getBoolean("no_remove_user", false)) {
            Slog.w("UserManagerService", "Cannot remove user. DISALLOW_REMOVE_USER is enabled.");
            return false;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            synchronized (this.mPackagesLock) {
                synchronized (this.mUsersLock) {
                    UserData userData = (UserData) this.mUsers.get(i);
                    if (i != 0 && userData != null && !this.mRemovingUserIds.get(i)) {
                        if (!userData.info.isGuest()) {
                            return false;
                        }
                        UserInfo userInfo = userData.info;
                        userInfo.guestToRemove = true;
                        userInfo.flags |= 64;
                        writeUserLP(userData);
                        return true;
                    }
                    return false;
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean removeUser(int i) {
        UserData userData;
        Slog.i("UserManagerService", "removeUser u" + i);
        checkCreateUsersPermission("Only the system can remove users");
        if (i == 77) {
            synchronized (this.mUsersLock) {
                userData = (UserData) this.mUsers.get(i);
            }
            if (userData != null && MaintenanceModeUtils.isMaintenanceModeUser(userData.info)) {
                return removeMaintenanceModeUser(userData);
            }
        }
        String userRemovalRestriction = getUserRemovalRestriction(i);
        if (getUserRestrictions(UserHandle.getCallingUserId()).getBoolean(userRemovalRestriction, false)) {
            Slog.w("UserManagerService", "Cannot remove user. " + userRemovalRestriction + " is enabled.");
            return false;
        }
        return removeUserWithProfilesUnchecked(i);
    }

    public final boolean removeUserWithProfilesUnchecked(int i) {
        UserInfo userInfoNoChecks = getUserInfoNoChecks(i);
        if (userInfoNoChecks == null) {
            Slog.e("UserManagerService", TextUtils.formatSimple("Cannot remove user %d, invalid user id provided.", new Object[]{Integer.valueOf(i)}));
            return false;
        }
        if (!userInfoNoChecks.isProfile()) {
            for (int i2 : getProfileIds(i, false)) {
                if (i2 != i) {
                    Slog.i("UserManagerService", "removing profile:" + i2 + "associated with user:" + i);
                    if (removeUserUnchecked(i2)) {
                        continue;
                    } else {
                        Slog.i("UserManagerService", "Unable to immediately remove profile " + i2 + "associated with user " + i + ". User is set as ephemeral and will be removed on user switch or reboot.");
                        synchronized (this.mPackagesLock) {
                            UserData userDataNoChecks = getUserDataNoChecks(i);
                            userDataNoChecks.info.flags |= 256;
                            writeUserLP(userDataNoChecks);
                        }
                    }
                }
            }
        }
        return removeUserUnchecked(i);
    }

    public boolean removeUserEvenWhenDisallowed(int i) {
        checkCreateUsersPermission("Only the system can remove users");
        return removeUserWithProfilesUnchecked(i);
    }

    public final String getUserRemovalRestriction(int i) {
        UserInfo userInfoLU;
        synchronized (this.mUsersLock) {
            userInfoLU = getUserInfoLU(i);
        }
        return userInfoLU != null && userInfoLU.isManagedProfile() ? "no_remove_managed_profile" : "no_remove_user";
    }

    public final boolean removeUserUnchecked(int i) {
        PersonaManagerService personaManagerService = this.sPersonaManager;
        if (personaManagerService != null) {
            personaManagerService.onUserRemoved(i);
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Pair currentAndTargetUserIds = getCurrentAndTargetUserIds();
            if (i == ((Integer) currentAndTargetUserIds.first).intValue()) {
                Slog.w("UserManagerService", "Current user cannot be removed.");
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return false;
            }
            if (i == ((Integer) currentAndTargetUserIds.second).intValue()) {
                Slog.w("UserManagerService", "Target user of an ongoing user switch cannot be removed.");
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return false;
            }
            synchronized (this.mPackagesLock) {
                synchronized (this.mUsersLock) {
                    final UserData userData = (UserData) this.mUsers.get(i);
                    if (i == 0) {
                        Slog.e("UserManagerService", "System user cannot be removed.");
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return false;
                    }
                    if (userData == null) {
                        Slog.e("UserManagerService", TextUtils.formatSimple("Cannot remove user %d, invalid user id provided.", new Object[]{Integer.valueOf(i)}));
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return false;
                    }
                    if (isNonRemovableMainUser(userData.info)) {
                        Slog.e("UserManagerService", "Main user cannot be removed when it's a permanent admin user.");
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return false;
                    }
                    if (this.mRemovingUserIds.get(i)) {
                        Slog.e("UserManagerService", TextUtils.formatSimple("User %d is already scheduled for removal.", new Object[]{Integer.valueOf(i)}));
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return false;
                    }
                    if (!userData.info.isManagedProfile() && !userData.info.isCloneProfile() && !userData.info.isUserTypeAppSeparation() && (!MultiUserManager.getInstance(this.mContext).isUserRemovalAllowed(true) || !MultiUserManager.getInstance(this.mContext).multipleUsersAllowed(true))) {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return false;
                    }
                    Slog.i("UserManagerService", "Removing user " + i);
                    addRemovingUserIdLocked(i);
                    UserInfo userInfo = userData.info;
                    userInfo.partial = true;
                    userInfo.flags |= 64;
                    writeUserLP(userData);
                    this.mUserJourneyLogger.logUserJourneyBegin(i, 6);
                    this.mUserJourneyLogger.startSessionForDelayedJourney(i, 9, userData.info.creationTime);
                    try {
                        this.mAppOpsService.removeUser(i);
                    } catch (RemoteException e) {
                        Slog.w("UserManagerService", "Unable to notify AppOpsService of removing user.", e);
                    }
                    UserInfo userInfo2 = userData.info;
                    if (userInfo2.profileGroupId != -10000 && userInfo2.isProfile()) {
                        UserInfo userInfo3 = userData.info;
                        sendProfileRemovedBroadcast(userInfo3.profileGroupId, userInfo3.id, userInfo3.userType);
                        resetDefaultIconandName(i);
                        Slog.i("UserManagerService", "resetDefaultIconandName");
                    }
                    if (PMRune.UM_BMODE && userData.info.isBMode()) {
                        synchronized (this.mUsersLock) {
                            if (getAliveUsersExcludingGuestsCountLU() == 1) {
                                BmodeUtils.disableBMode();
                            }
                        }
                    }
                    try {
                        boolean z = ActivityManager.getService().stopUser(i, true, new IStopUserCallback.Stub() { // from class: com.android.server.pm.UserManagerService.5
                            public void userStopped(int i2) {
                                UserManagerService.this.finishRemoveUser(i2);
                                int currentUserId = UserManagerService.this.getCurrentUserId();
                                UserManagerService.this.mUserJourneyLogger.logUserJourneyFinishWithError(currentUserId, userData.info, 6, -1);
                                UserManagerService.this.mUserJourneyLogger.logDelayedUserJourneyFinishWithError(currentUserId, userData.info, 9, -1);
                            }

                            public void userStopAborted(int i2) {
                                int currentUserId = UserManagerService.this.getCurrentUserId();
                                UserManagerService.this.mUserJourneyLogger.logUserJourneyFinishWithError(currentUserId, userData.info, 6, 3);
                                UserManagerService.this.mUserJourneyLogger.logDelayedUserJourneyFinishWithError(currentUserId, userData.info, 9, 3);
                            }
                        }) == 0;
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return z;
                    } catch (RemoteException e2) {
                        Slog.w("UserManagerService", "Failed to stop user during removal.", e2);
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return false;
                    }
                }
            }
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public void addRemovingUserIdLocked(int i) {
        this.mRemovingUserIds.put(i, true);
        this.mRecentlyRemovedIds.add(Integer.valueOf(i));
        if (this.mRecentlyRemovedIds.size() > 100) {
            this.mRecentlyRemovedIds.removeFirst();
        }
    }

    public int removeUserWhenPossible(int i, boolean z) {
        checkCreateUsersPermission("Only the system can remove users");
        if (!z) {
            String userRemovalRestriction = getUserRemovalRestriction(i);
            if (getUserRestrictions(UserHandle.getCallingUserId()).getBoolean(userRemovalRestriction, false)) {
                Slog.w("UserManagerService", "Cannot remove user. " + userRemovalRestriction + " is enabled.");
                return -2;
            }
        }
        if (i == 0) {
            Slog.e("UserManagerService", "System user cannot be removed.");
            return -4;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            synchronized (this.mPackagesLock) {
                synchronized (this.mUsersLock) {
                    UserData userData = (UserData) this.mUsers.get(i);
                    if (userData == null) {
                        Slog.e("UserManagerService", "Cannot remove user " + i + ", invalid user id provided.");
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return -3;
                    }
                    if (isNonRemovableMainUser(userData.info)) {
                        Slog.e("UserManagerService", "Main user cannot be removed when it's a permanent admin user.");
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        return -5;
                    }
                    if (this.mRemovingUserIds.get(i)) {
                        Slog.e("UserManagerService", "User " + i + " is already scheduled for removal.");
                        return 2;
                    }
                    Pair currentAndTargetUserIds = getCurrentAndTargetUserIds();
                    if (i != ((Integer) currentAndTargetUserIds.first).intValue() && i != ((Integer) currentAndTargetUserIds.second).intValue() && removeUserWithProfilesUnchecked(i)) {
                        return 0;
                    }
                    Object[] objArr = new Object[3];
                    objArr[0] = Integer.valueOf(i);
                    objArr[1] = i == ((Integer) currentAndTargetUserIds.first).intValue() ? "current user" : "target user of an ongoing user switch";
                    objArr[2] = Integer.valueOf(i);
                    Slog.i("UserManagerService", TextUtils.formatSimple("Unable to immediately remove user %d (%s is %d). User is set as ephemeral and will be removed on user switch or reboot.", objArr));
                    userData.info.flags |= 256;
                    writeUserLP(userData);
                    return 1;
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void finishRemoveUser(int i) {
        UserInfo userInfoLU;
        Slog.i("UserManagerService", "finishRemoveUser " + i);
        synchronized (this.mUsersLock) {
            userInfoLU = getUserInfoLU(i);
        }
        if (userInfoLU != null && userInfoLU.preCreated) {
            Slog.i("UserManagerService", "Removing a pre-created user with user id: " + i);
            ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).onUserStopped(i);
            removeUserState(i);
            return;
        }
        synchronized (this.mUserLifecycleListeners) {
            for (int i2 = 0; i2 < this.mUserLifecycleListeners.size(); i2++) {
                ((UserManagerInternal.UserLifecycleListener) this.mUserLifecycleListeners.get(i2)).onUserRemoved(userInfoLU);
            }
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Intent intent = new Intent("android.intent.action.USER_REMOVED");
            intent.addFlags(16777216);
            intent.putExtra("android.intent.extra.user_handle", i);
            intent.putExtra("android.intent.extra.USER", UserHandle.of(i));
            getActivityManagerInternal().broadcastIntentWithCallback(intent, new AnonymousClass6(i), new String[]{"android.permission.MANAGE_USERS"}, -1, (int[]) null, (BiFunction) null, (Bundle) null);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* renamed from: com.android.server.pm.UserManagerService$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass6 extends IIntentReceiver.Stub {
        public final /* synthetic */ int val$userId;

        public AnonymousClass6(int i) {
            this.val$userId = i;
        }

        public void performReceive(Intent intent, int i, String str, Bundle bundle, boolean z, boolean z2, int i2) {
            final int i3 = this.val$userId;
            new Thread(new Runnable() { // from class: com.android.server.pm.UserManagerService$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    UserManagerService.AnonymousClass6.this.lambda$performReceive$0(i3);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$performReceive$0(int i) {
            UserManagerService.this.getActivityManagerInternal().onUserRemoved(i);
            UserManagerService.this.removeUserState(i);
        }
    }

    public final void removeUserState(int i) {
        UserData userData;
        Slog.i("UserManagerService", "Removing user state of user " + i);
        this.mLockPatternUtils.removeUser(i);
        try {
            ((StorageManager) this.mContext.getSystemService(StorageManager.class)).destroyUserKey(i);
        } catch (IllegalStateException e) {
            Slog.i("UserManagerService", "Destroying key for user " + i + " failed, continuing anyway", e);
        }
        this.mPm.cleanUpUser(this, i);
        this.mUserDataPreparer.destroyUserData(i, 3);
        synchronized (this.mUsersLock) {
            userData = (UserData) this.mUsers.get(i);
        }
        UserInfo userInfo = userData != null ? userData.info : null;
        if (userInfo != null && (userInfo.flags & 100663296) != 0) {
            DualDARController.getInstance(this.mContext).onUserRemoved(i);
        }
        synchronized (this.mUsersLock) {
            this.mUsers.remove(i);
            this.mIsUserManaged.delete(i);
        }
        synchronized (this.mUserStates) {
            this.mUserStates.delete(i);
        }
        synchronized (this.mRestrictionsLock) {
            this.mBaseUserRestrictions.remove(i);
            this.mAppliedUserRestrictions.remove(i);
            this.mCachedEffectiveUserRestrictions.remove(i);
            if (this.mDevicePolicyUserRestrictions.remove(i)) {
                applyUserRestrictionsForAllUsersLR();
            }
        }
        synchronized (this.mPackagesLock) {
            writeUserListLP();
        }
        getUserFile(i).delete();
        updateUserIds();
        if (userInfo == null || !userInfo.isDualAppProfile()) {
            return;
        }
        synchronized (this.mUsers) {
            if (i == 99) {
                for (int i2 = 95; i2 <= 99; i2++) {
                    this.mRemovingUserIds.delete(i2);
                }
            }
        }
    }

    public final void sendProfileAddedBroadcast(int i, int i2) {
        sendProfileBroadcast(new Intent("android.intent.action.PROFILE_ADDED"), i, i2);
    }

    public final void sendProfileRemovedBroadcast(int i, int i2, String str) {
        if (Objects.equals(str, "android.os.usertype.profile.MANAGED")) {
            sendManagedProfileRemovedBroadcast(i, i2);
        }
        sendProfileBroadcast(new Intent("android.intent.action.PROFILE_REMOVED"), i, i2);
    }

    public final void sendProfileBroadcast(Intent intent, int i, int i2) {
        UserHandle of = UserHandle.of(i);
        intent.putExtra("android.intent.extra.USER", UserHandle.of(i2));
        intent.addFlags(1342177280);
        this.mContext.sendBroadcastAsUser(intent, of, null);
    }

    public final void sendManagedProfileRemovedBroadcast(int i, int i2) {
        Intent intent = new Intent(DevicePolicyListener.ACTION_PROFILE_OWNER_REMOVED);
        intent.putExtra("android.intent.extra.USER", UserHandle.of(i2));
        intent.putExtra("android.intent.extra.user_handle", i2);
        UserHandle of = UserHandle.of(i);
        getDevicePolicyManagerInternal().broadcastIntentToManifestReceivers(intent, of, false);
        intent.addFlags(1342177280);
        this.mContext.sendBroadcastAsUser(intent, of, null);
    }

    public Bundle getApplicationRestrictions(String str) {
        return getApplicationRestrictionsForUser(str, UserHandle.getCallingUserId());
    }

    public Bundle getApplicationRestrictionsForUser(String str, int i) {
        Bundle readApplicationRestrictionsLAr;
        if (UserHandle.getCallingUserId() != i || !UserHandle.isSameApp(Binder.getCallingUid(), getUidForPackage(str))) {
            checkSystemOrRoot("get application restrictions for other user/app " + str);
        }
        if (this.sPersonaManager.getAppSeparationId() == i) {
            i = 0;
        }
        synchronized (this.mAppRestrictionsLock) {
            readApplicationRestrictionsLAr = readApplicationRestrictionsLAr(str, i);
        }
        return readApplicationRestrictionsLAr;
    }

    public void setApplicationRestrictions(String str, Bundle bundle, int i) {
        boolean z;
        checkSystemOrRoot("set application restrictions");
        String validateName = FrameworkParsingPackageUtils.validateName(str, false, false);
        if (validateName != null) {
            throw new IllegalArgumentException("Invalid package name: " + validateName);
        }
        if (bundle != null) {
            bundle.setDefusable(true);
        }
        synchronized (this.mAppRestrictionsLock) {
            if (bundle != null) {
                if (!bundle.isEmpty()) {
                    writeApplicationRestrictionsLAr(str, bundle, i);
                    z = true;
                }
            }
            z = cleanAppRestrictionsForPackageLAr(str, i);
        }
        if (z) {
            Intent intent = new Intent("android.intent.action.APPLICATION_RESTRICTIONS_CHANGED");
            intent.setPackage(str);
            intent.addFlags(1073741824);
            this.mContext.sendBroadcastAsUser(intent, UserHandle.of(i));
            try {
                if (isKPUAgent(str)) {
                    Slog.i("UserManagerService", "@setApplicationRestrictions called for KSP");
                    if (!SystemProperties.getBoolean("ro.product_ship", true) || isKPUPlatformSigned(str, i)) {
                        Slog.i("UserManagerService", "Send intent to KSP");
                        Intent intent2 = new Intent("com.samsung.android.knox.intent.action.NOTIFY_KPU_INTERNAL");
                        intent2.setPackage(str);
                        intent2.addFlags(32);
                        this.mContext.sendBroadcastAsUser(intent2, UserHandle.of(i));
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.sPersonaManager.notifyAppRestrictionChanged(str, i);
        }
    }

    public boolean isKPUAgent(String str) {
        try {
            if ("com.samsung.android.knox.kpu".equals(str)) {
                return true;
            }
            return this.mContext.getPackageManager().checkPermission("com.samsung.android.knox.permission.KNOX_KPU_INTERNAL", str) == 0;
        } catch (Exception e) {
            Log.e("UserManagerService", "Exception: " + e.getMessage());
            return false;
        }
    }

    public boolean isKPUPlatformSigned(String str, int i) {
        try {
            return EnterpriseDeviceManager.getInstance(this.mContext).isKPUPlatformSigned(str, i);
        } catch (Exception e) {
            Log.e("UserManagerService", "Exception: " + e.getMessage());
            return false;
        }
    }

    public final int getUidForPackage(String str) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            int i = this.mContext.getPackageManager().getApplicationInfo(str, 4194304).uid;
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return i;
        } catch (PackageManager.NameNotFoundException unused) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            return -1;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public static Bundle readApplicationRestrictionsLAr(String str, int i) {
        return readApplicationRestrictionsLAr(new AtomicFile(new File(Environment.getUserSystemDirectory(i), packageToRestrictionsFileName(str))));
    }

    public static Bundle readApplicationRestrictionsLAr(AtomicFile atomicFile) {
        TypedXmlPullParser resolvePullParser;
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        if (!atomicFile.getBaseFile().exists()) {
            return bundle;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                fileInputStream = atomicFile.openRead();
                resolvePullParser = Xml.resolvePullParser(fileInputStream);
                XmlUtils.nextElement(resolvePullParser);
            } catch (IOException | XmlPullParserException e) {
                Slog.w("UserManagerService", "Error parsing " + atomicFile.getBaseFile(), e);
            }
            if (resolvePullParser.getEventType() != 2) {
                Slog.e("UserManagerService", "Unable to read restrictions file " + atomicFile.getBaseFile());
                return bundle;
            }
            while (resolvePullParser.next() != 1) {
                readEntry(bundle, arrayList, resolvePullParser);
            }
            return bundle;
        } finally {
            IoUtils.closeQuietly((AutoCloseable) null);
        }
    }

    public static void readEntry(Bundle bundle, ArrayList arrayList, TypedXmlPullParser typedXmlPullParser) {
        if (typedXmlPullParser.getEventType() == 2 && typedXmlPullParser.getName().equals("entry")) {
            String attributeValue = typedXmlPullParser.getAttributeValue((String) null, "key");
            String attributeValue2 = typedXmlPullParser.getAttributeValue((String) null, "type");
            int attributeInt = typedXmlPullParser.getAttributeInt((String) null, "m", -1);
            if (attributeInt != -1) {
                arrayList.clear();
                while (attributeInt > 0) {
                    int next = typedXmlPullParser.next();
                    if (next == 1) {
                        break;
                    }
                    if (next == 2 && typedXmlPullParser.getName().equals("value")) {
                        arrayList.add(typedXmlPullParser.nextText().trim());
                        attributeInt--;
                    }
                }
                String[] strArr = new String[arrayList.size()];
                arrayList.toArray(strArr);
                bundle.putStringArray(attributeValue, strArr);
                return;
            }
            if ("B".equals(attributeValue2)) {
                bundle.putBundle(attributeValue, readBundleEntry(typedXmlPullParser, arrayList));
                return;
            }
            if ("BA".equals(attributeValue2)) {
                int depth = typedXmlPullParser.getDepth();
                ArrayList arrayList2 = new ArrayList();
                while (XmlUtils.nextElementWithin(typedXmlPullParser, depth)) {
                    arrayList2.add(readBundleEntry(typedXmlPullParser, arrayList));
                }
                bundle.putParcelableArray(attributeValue, (Parcelable[]) arrayList2.toArray(new Bundle[arrayList2.size()]));
                return;
            }
            String trim = typedXmlPullParser.nextText().trim();
            if ("b".equals(attributeValue2)) {
                bundle.putBoolean(attributeValue, Boolean.parseBoolean(trim));
            } else if ("i".equals(attributeValue2)) {
                bundle.putInt(attributeValue, Integer.parseInt(trim));
            } else {
                bundle.putString(attributeValue, trim);
            }
        }
    }

    public static Bundle readBundleEntry(TypedXmlPullParser typedXmlPullParser, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        int depth = typedXmlPullParser.getDepth();
        while (XmlUtils.nextElementWithin(typedXmlPullParser, depth)) {
            readEntry(bundle, arrayList, typedXmlPullParser);
        }
        return bundle;
    }

    public static void writeApplicationRestrictionsLAr(String str, Bundle bundle, int i) {
        writeApplicationRestrictionsLAr(bundle, new AtomicFile(new File(Environment.getUserSystemDirectory(i), packageToRestrictionsFileName(str))));
    }

    public static void writeApplicationRestrictionsLAr(Bundle bundle, AtomicFile atomicFile) {
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream startWrite = atomicFile.startWrite();
            try {
                TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
                resolveSerializer.startDocument((String) null, Boolean.TRUE);
                resolveSerializer.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
                resolveSerializer.startTag((String) null, "restrictions");
                writeBundle(bundle, resolveSerializer);
                resolveSerializer.endTag((String) null, "restrictions");
                resolveSerializer.endDocument();
                atomicFile.finishWrite(startWrite);
            } catch (Exception e) {
                e = e;
                fileOutputStream = startWrite;
                atomicFile.failWrite(fileOutputStream);
                Slog.e("UserManagerService", "Error writing application restrictions list", e);
            }
        } catch (Exception e2) {
            e = e2;
        }
    }

    public static void writeBundle(Bundle bundle, TypedXmlSerializer typedXmlSerializer) {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            typedXmlSerializer.startTag((String) null, "entry");
            typedXmlSerializer.attribute((String) null, "key", str);
            if (obj instanceof Boolean) {
                typedXmlSerializer.attribute((String) null, "type", "b");
                typedXmlSerializer.text(obj.toString());
            } else if (obj instanceof Integer) {
                typedXmlSerializer.attribute((String) null, "type", "i");
                typedXmlSerializer.text(obj.toString());
            } else if (obj == null || (obj instanceof String)) {
                typedXmlSerializer.attribute((String) null, "type", "s");
                typedXmlSerializer.text(obj != null ? (String) obj : "");
            } else if (obj instanceof Bundle) {
                typedXmlSerializer.attribute((String) null, "type", "B");
                writeBundle((Bundle) obj, typedXmlSerializer);
            } else {
                int i = 0;
                if (obj instanceof Parcelable[]) {
                    typedXmlSerializer.attribute((String) null, "type", "BA");
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    int length = parcelableArr.length;
                    while (i < length) {
                        Parcelable parcelable = parcelableArr[i];
                        if (!(parcelable instanceof Bundle)) {
                            throw new IllegalArgumentException("bundle-array can only hold Bundles");
                        }
                        typedXmlSerializer.startTag((String) null, "entry");
                        typedXmlSerializer.attribute((String) null, "type", "B");
                        writeBundle((Bundle) parcelable, typedXmlSerializer);
                        typedXmlSerializer.endTag((String) null, "entry");
                        i++;
                    }
                } else {
                    typedXmlSerializer.attribute((String) null, "type", "sa");
                    String[] strArr = (String[]) obj;
                    typedXmlSerializer.attributeInt((String) null, "m", strArr.length);
                    int length2 = strArr.length;
                    while (i < length2) {
                        String str2 = strArr[i];
                        typedXmlSerializer.startTag((String) null, "value");
                        if (str2 == null) {
                            str2 = "";
                        }
                        typedXmlSerializer.text(str2);
                        typedXmlSerializer.endTag((String) null, "value");
                        i++;
                    }
                }
            }
            typedXmlSerializer.endTag((String) null, "entry");
        }
    }

    public int getUserSerialNumber(int i) {
        int i2;
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            i2 = userInfoLU != null ? userInfoLU.serialNumber : -1;
        }
        return i2;
    }

    public boolean isUserNameSet(int i) {
        boolean z;
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        if (!hasQueryOrCreateUsersPermission() && (userId != i || !hasPermissionGranted("android.permission.GET_ACCOUNTS_PRIVILEGED", callingUid))) {
            throw new SecurityException("You need MANAGE_USERS, CREATE_USERS, QUERY_USERS, or GET_ACCOUNTS_PRIVILEGED permissions to: get whether user name is set");
        }
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            z = (userInfoLU == null || userInfoLU.name == null) ? false : true;
        }
        return z;
    }

    public int getUserHandle(int i) {
        synchronized (this.mUsersLock) {
            for (int i2 : this.mUserIds) {
                UserInfo userInfoLU = getUserInfoLU(i2);
                if (userInfoLU != null && userInfoLU.serialNumber == i) {
                    return i2;
                }
            }
            return -1;
        }
    }

    public long getUserCreationTime(int i) {
        UserInfo userInfoLU;
        int callingUserId = UserHandle.getCallingUserId();
        synchronized (this.mUsersLock) {
            if (callingUserId == i) {
                userInfoLU = getUserInfoLU(i);
            } else {
                UserInfo profileParentLU = getProfileParentLU(i);
                userInfoLU = (profileParentLU == null || profileParentLU.id != callingUserId) ? null : getUserInfoLU(i);
            }
        }
        if (userInfoLU == null) {
            throw new SecurityException("userId can only be the calling user or a profile associated with this user");
        }
        return userInfoLU.creationTime;
    }

    public final void updateUserIds() {
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i3)).info;
                if (!userInfo.partial) {
                    i2++;
                    if (!userInfo.preCreated) {
                        i++;
                    }
                }
            }
            int[] iArr = new int[i];
            int[] iArr2 = new int[i2];
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                UserInfo userInfo2 = ((UserData) this.mUsers.valueAt(i6)).info;
                if (!userInfo2.partial) {
                    int keyAt = this.mUsers.keyAt(i6);
                    int i7 = i4 + 1;
                    iArr2[i4] = keyAt;
                    if (!userInfo2.preCreated) {
                        iArr[i5] = keyAt;
                        i5++;
                    }
                    i4 = i7;
                }
            }
            this.mUserIds = iArr;
            this.mUserIdsIncludingPreCreated = iArr2;
            UserPackage.setValidUserIds(iArr);
        }
    }

    public void onBeforeStartUser(int i) {
        UserInfo userInfo = getUserInfo(i);
        if (userInfo == null) {
            return;
        }
        TimingsTraceAndSlog timingsTraceAndSlog = new TimingsTraceAndSlog();
        timingsTraceAndSlog.traceBegin("onBeforeStartUser-" + i);
        int i2 = userInfo.serialNumber;
        boolean equals = PackagePartitions.FINGERPRINT.equals(userInfo.lastLoggedInFingerprint) ^ true;
        timingsTraceAndSlog.traceBegin("prepareUserData");
        this.mUserDataPreparer.prepareUserData(i, i2, 1);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("reconcileAppsData");
        getPackageManagerInternal().reconcileAppsData(i, 1, equals);
        timingsTraceAndSlog.traceEnd();
        if (i != 0) {
            timingsTraceAndSlog.traceBegin("applyUserRestrictions");
            synchronized (this.mRestrictionsLock) {
                applyUserRestrictionsLR(i);
            }
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceEnd();
    }

    public void onBeforeUnlockUser(int i) {
        UserInfo userInfo = getUserInfo(i);
        if (userInfo == null) {
            return;
        }
        int i2 = userInfo.serialNumber;
        boolean z = !PackagePartitions.FINGERPRINT.equals(userInfo.lastLoggedInFingerprint);
        TimingsTraceAndSlog timingsTraceAndSlog = new TimingsTraceAndSlog();
        timingsTraceAndSlog.traceBegin("prepareUserData-" + i);
        this.mUserDataPreparer.prepareUserData(i, i2, 2);
        timingsTraceAndSlog.traceEnd();
        if (userInfo.isManagedProfile() && (userInfo.flags & 100663296) > 0) {
            Log.d("UserManagerService", "Apply policies on CE storage for dualdar user " + i);
            if (!DualDARController.getInstance(this.mContext).handleBeforeUnlockUser(i)) {
                Log.e("UserManagerService", "To set DualDAR Policy on CE storage was failed.");
                removeInvalidEnterpriseUser(i);
                return;
            }
        }
        ((StorageManagerInternal) LocalServices.getService(StorageManagerInternal.class)).markCeStoragePrepared(i);
        timingsTraceAndSlog.traceBegin("reconcileAppsData-" + i);
        getPackageManagerInternal().reconcileAppsData(i, 2, z);
        timingsTraceAndSlog.traceEnd();
    }

    public final void removeInvalidEnterpriseUser(int i) {
        synchronized (this.mPackagesLock) {
            UserData userDataNoChecks = getUserDataNoChecks(i);
            if (userDataNoChecks == null) {
                Log.e("UserManagerService", "Failed to remove invalid enterprise user - Couldn't get UserData");
                return;
            }
            UserInfo userInfo = userDataNoChecks.info;
            userInfo.partial = true;
            userInfo.flags |= 64;
            writeUserLP(userDataNoChecks);
            removeUser(i);
        }
    }

    public void reconcileUsers(String str) {
        this.mUserDataPreparer.reconcileUsers(str, getUsers(true, true, false));
    }

    public void onUserLoggedIn(int i) {
        UserData userDataNoChecks = getUserDataNoChecks(i);
        if (userDataNoChecks == null || userDataNoChecks.info.partial) {
            Slog.w("UserManagerService", "userForeground: unknown user #" + i);
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis > 946080000000L) {
            userDataNoChecks.info.lastLoggedInTime = currentTimeMillis;
        }
        userDataNoChecks.info.lastLoggedInFingerprint = PackagePartitions.FINGERPRINT;
        scheduleWriteUser(i);
    }

    public int getNextAvailableId() {
        return getNextAvailableId(false, false);
    }

    public int getNextAvailableId(boolean z, boolean z2) {
        synchronized (this.mUsersLock) {
            int scanNextAvailableIdLocked = scanNextAvailableIdLocked(z, z2);
            if (scanNextAvailableIdLocked >= 0) {
                return scanNextAvailableIdLocked;
            }
            if (this.mRemovingUserIds.size() > 0) {
                Slog.i("UserManagerService", "All available IDs are used. Recycling LRU ids.");
                this.mRemovingUserIds.clear();
                Iterator it = this.mRecentlyRemovedIds.iterator();
                while (it.hasNext()) {
                    this.mRemovingUserIds.put(((Integer) it.next()).intValue(), true);
                }
                scanNextAvailableIdLocked = scanNextAvailableIdLocked(z, z2);
            }
            UserManager.invalidateStaticUserProperties();
            UserManager.invalidateUserPropertiesCache();
            if (scanNextAvailableIdLocked >= 0) {
                return scanNextAvailableIdLocked;
            }
            throw new IllegalStateException("No user id available!");
        }
    }

    public final int scanNextAvailableIdLocked(boolean z, boolean z2) {
        int i = z ? 150 : 10;
        if (z2) {
            i = 95;
        }
        while (i < MAX_USER_ID) {
            if (i != 77) {
                if (z && i > 160) {
                    return -1;
                }
                if (z2) {
                    if (!SemDualAppManager.isDualAppId(i)) {
                        return -1;
                    }
                } else if (SemDualAppManager.isDualAppId(i)) {
                    continue;
                }
                if (this.mUsers.indexOfKey(i) < 0 && !this.mRemovingUserIds.get(i)) {
                    return i;
                }
            }
            i++;
        }
        return -1;
    }

    public static String packageToRestrictionsFileName(String str) {
        return "res_" + str + ".xml";
    }

    public static String getRedacted(String str) {
        if (str == null) {
            return null;
        }
        return str.length() + "_chars";
    }

    public void setSeedAccountData(int i, String str, String str2, PersistableBundle persistableBundle, boolean z) {
        checkManageUsersPermission("set user seed account data");
        setSeedAccountDataNoChecks(i, str, str2, persistableBundle, z);
    }

    public final void setSeedAccountDataNoChecks(int i, String str, String str2, PersistableBundle persistableBundle, boolean z) {
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                UserData userDataLU = getUserDataLU(i);
                if (userDataLU == null) {
                    Slog.e("UserManagerService", "No such user for settings seed data u=" + i);
                    return;
                }
                userDataLU.seedAccountName = truncateString(str, 500);
                userDataLU.seedAccountType = truncateString(str2, 500);
                if (persistableBundle != null && persistableBundle.isBundleContentsWithinLengthLimit(1000)) {
                    userDataLU.seedAccountOptions = persistableBundle;
                }
                userDataLU.persistSeedData = z;
                if (z) {
                    writeUserLP(userDataLU);
                }
            }
        }
    }

    public String getSeedAccountName(int i) {
        String str;
        checkManageUsersPermission("Cannot get seed account information");
        synchronized (this.mUsersLock) {
            UserData userDataLU = getUserDataLU(i);
            str = userDataLU == null ? null : userDataLU.seedAccountName;
        }
        return str;
    }

    public String getSeedAccountType(int i) {
        String str;
        checkManageUsersPermission("Cannot get seed account information");
        synchronized (this.mUsersLock) {
            UserData userDataLU = getUserDataLU(i);
            str = userDataLU == null ? null : userDataLU.seedAccountType;
        }
        return str;
    }

    public PersistableBundle getSeedAccountOptions(int i) {
        PersistableBundle persistableBundle;
        checkManageUsersPermission("Cannot get seed account information");
        synchronized (this.mUsersLock) {
            UserData userDataLU = getUserDataLU(i);
            persistableBundle = userDataLU == null ? null : userDataLU.seedAccountOptions;
        }
        return persistableBundle;
    }

    public void clearSeedAccountData(int i) {
        checkManageUsersPermission("Cannot clear seed account information");
        synchronized (this.mPackagesLock) {
            synchronized (this.mUsersLock) {
                UserData userDataLU = getUserDataLU(i);
                if (userDataLU == null) {
                    return;
                }
                userDataLU.clearSeedAccountData();
                writeUserLP(userDataLU);
            }
        }
    }

    public boolean someUserHasSeedAccount(String str, String str2) {
        checkManageUsersPermission("check seed account information");
        return someUserHasSeedAccountNoChecks(str, str2);
    }

    public final boolean someUserHasSeedAccountNoChecks(String str, String str2) {
        String str3;
        String str4;
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i = 0; i < size; i++) {
                UserData userData = (UserData) this.mUsers.valueAt(i);
                if (!userData.info.isInitialized() && !this.mRemovingUserIds.get(userData.info.id) && (str3 = userData.seedAccountName) != null && str3.equals(str) && (str4 = userData.seedAccountType) != null && str4.equals(str2)) {
                    return true;
                }
            }
            return false;
        }
    }

    public boolean someUserHasAccount(String str, String str2) {
        checkCreateUsersPermission("check seed account information");
        return someUserHasAccountNoChecks(str, str2);
    }

    public final boolean someUserHasAccountNoChecks(final String str, final String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        final Account account = new Account(str, str2);
        return ((Boolean) Binder.withCleanCallingIdentity(new FunctionalUtils.ThrowingSupplier() { // from class: com.android.server.pm.UserManagerService$$ExternalSyntheticLambda0
            public final Object getOrThrow() {
                Boolean lambda$someUserHasAccountNoChecks$7;
                lambda$someUserHasAccountNoChecks$7 = UserManagerService.this.lambda$someUserHasAccountNoChecks$7(account, str, str2);
                return lambda$someUserHasAccountNoChecks$7;
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$someUserHasAccountNoChecks$7(Account account, String str, String str2) {
        return Boolean.valueOf(AccountManager.get(this.mContext).someUserHasAccount(account) || someUserHasSeedAccountNoChecks(str, str2));
    }

    public final void setLastEnteredForegroundTimeToNow(UserData userData) {
        userData.mLastEnteredForegroundTimeMillis = System.currentTimeMillis();
        scheduleWriteUser(userData.info.id);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
        new UserManagerServiceShellCommand(this, this.mSystemPackageInstaller, this.mLockPatternUtils, this.mContext).exec(this, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        Object obj;
        Object obj2;
        int i;
        Object obj3;
        int i2;
        long j;
        int i3;
        if (!DumpUtils.checkDumpPermission(this.mContext, "UserManagerService", printWriter)) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i4 = Settings.Secure.getInt(this.mContext.getContentResolver(), "klm_eula_shown", 0);
        StringBuilder sb = new StringBuilder();
        int i5 = 1;
        if (strArr != null && strArr.length > 0) {
            String str = strArr[0];
            str.hashCode();
            if (str.equals("--visibility-mediator")) {
                this.mUserVisibilityMediator.dump(printWriter, strArr);
                return;
            } else if (str.equals("--user")) {
                dumpUser(printWriter, UserHandle.parseUserArg(strArr[1]), sb, currentTimeMillis, elapsedRealtime);
                return;
            }
        }
        int currentUserId = getCurrentUserId();
        printWriter.print("Current user: ");
        if (currentUserId != -10000) {
            printWriter.println(currentUserId);
        } else {
            printWriter.println("N/A");
        }
        printWriter.println();
        Object obj4 = this.mPackagesLock;
        synchronized (obj4) {
            try {
            } catch (Throwable th) {
                th = th;
            }
            try {
                Object obj5 = this.mUsersLock;
                synchronized (obj5) {
                    try {
                        printWriter.println("Users:");
                        int i6 = 0;
                        while (i6 < this.mUsers.size()) {
                            UserData userData = (UserData) this.mUsers.valueAt(i6);
                            if (userData == null) {
                                i = i6;
                                obj3 = obj4;
                                obj2 = obj5;
                                i2 = i4;
                                j = currentTimeMillis;
                                i3 = i5;
                            } else {
                                i = i6;
                                obj3 = obj4;
                                obj2 = obj5;
                                long j2 = currentTimeMillis;
                                i2 = i4;
                                j = currentTimeMillis;
                                i3 = i5;
                                try {
                                    dumpUserLocked(printWriter, userData, sb, j2, elapsedRealtime);
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                            i6 = i + 1;
                            i5 = i3;
                            i4 = i2;
                            obj4 = obj3;
                            obj5 = obj2;
                            currentTimeMillis = j;
                        }
                        obj = obj4;
                        int i7 = i4;
                        int i8 = i5;
                        printWriter.println();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("  agree Knox Privacy Policy: ");
                        sb2.append(i7 == i8 ? "true" : "false");
                        printWriter.println(sb2.toString());
                        printWriter.println();
                        printWriter.println("Device properties:");
                        printWriter.println("  Device policy global restrictions:");
                        synchronized (this.mRestrictionsLock) {
                            UserRestrictionsUtils.dumpRestrictions(printWriter, "    ", this.mDevicePolicyUserRestrictions.getRestrictions(-1));
                        }
                        printWriter.println("  Guest restrictions:");
                        synchronized (this.mGuestRestrictions) {
                            UserRestrictionsUtils.dumpRestrictions(printWriter, "    ", this.mGuestRestrictions);
                        }
                        synchronized (this.mUsersLock) {
                            printWriter.println();
                            printWriter.println("  Device managed: " + this.mIsDeviceManaged);
                            if (this.mRemovingUserIds.size() > 0) {
                                printWriter.println();
                                printWriter.println("  Recently removed userIds: " + this.mRecentlyRemovedIds);
                            }
                        }
                        synchronized (this.mUserStates) {
                            printWriter.print("  Started users state: [");
                            int size = this.mUserStates.states.size();
                            for (int i9 = 0; i9 < size; i9++) {
                                int keyAt = this.mUserStates.states.keyAt(i9);
                                int valueAt = this.mUserStates.states.valueAt(i9);
                                printWriter.print(keyAt);
                                printWriter.print('=');
                                printWriter.print(UserState.stateToString(valueAt));
                                if (i9 != size - 1) {
                                    printWriter.print(", ");
                                }
                            }
                            printWriter.println(']');
                        }
                        synchronized (this.mUsersLock) {
                            printWriter.print("  Cached user IDs: ");
                            printWriter.println(Arrays.toString(this.mUserIds));
                            printWriter.print("  Cached user IDs (including pre-created): ");
                            printWriter.println(Arrays.toString(this.mUserIdsIncludingPreCreated));
                        }
                        printWriter.println();
                        this.mUserVisibilityMediator.dump(printWriter, strArr);
                        printWriter.println();
                        printWriter.println();
                        printWriter.print("  Max users: " + UserManager.getMaxSupportedUsers());
                        printWriter.println(" (limit reached: " + isUserLimitReached() + ")");
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("  Supports switchable users: ");
                        sb3.append(UserManager.supportsMultipleUsers());
                        printWriter.println(sb3.toString());
                        printWriter.println("  All guests ephemeral: " + Resources.getSystem().getBoolean(17891715));
                        printWriter.println("  Force ephemeral users: " + this.mForceEphemeralUsers);
                        boolean isHeadlessSystemUserMode = isHeadlessSystemUserMode();
                        printWriter.println("  Is headless-system mode: " + isHeadlessSystemUserMode);
                        if (isHeadlessSystemUserMode != RoSystemProperties.MULTIUSER_HEADLESS_SYSTEM_USER) {
                            printWriter.println("  (differs from the current default build value)");
                        }
                        if (!TextUtils.isEmpty(SystemProperties.get("persist.debug.user_mode_emulation"))) {
                            printWriter.println("  (emulated by 'cmd user set-system-user-mode-emulation')");
                            if (this.mUpdatingSystemUserMode) {
                                printWriter.println("  (and being updated after boot)");
                            }
                        }
                        printWriter.println("  User version: " + this.mUserVersion);
                        printWriter.println("  Owner name: " + getOwnerName());
                        synchronized (this.mUsersLock) {
                            printWriter.println("  Boot user: " + this.mBootUser);
                        }
                        printWriter.println();
                        printWriter.println("Number of listeners for");
                        synchronized (this.mUserRestrictionsListeners) {
                            printWriter.println("  restrictions: " + this.mUserRestrictionsListeners.size());
                        }
                        synchronized (this.mUserLifecycleListeners) {
                            printWriter.println("  user lifecycle events: " + this.mUserLifecycleListeners.size());
                        }
                        printWriter.println();
                        printWriter.println("User types version: " + this.mUserTypeVersion);
                        printWriter.println("User types (" + this.mUserTypes.size() + " types):");
                        for (int i10 = 0; i10 < this.mUserTypes.size(); i10++) {
                            printWriter.println("    " + ((String) this.mUserTypes.keyAt(i10)) + ": ");
                            ((UserTypeDetails) this.mUserTypes.valueAt(i10)).dump(printWriter, "        ");
                        }
                        IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter);
                        try {
                            indentingPrintWriter.println();
                            this.mSystemPackageInstaller.dump(indentingPrintWriter);
                            indentingPrintWriter.close();
                        } finally {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        obj2 = obj5;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                obj = obj4;
                throw th;
            }
        }
    }

    public final void dumpUser(PrintWriter printWriter, int i, StringBuilder sb, long j, long j2) {
        int i2;
        if (i == -2) {
            i2 = getCurrentUserId();
            printWriter.print("Current user: ");
            if (i2 == -10000) {
                printWriter.println("Cannot determine current user");
                return;
            }
        } else {
            i2 = i;
        }
        synchronized (this.mUsersLock) {
            UserData userData = (UserData) this.mUsers.get(i2);
            if (userData == null) {
                printWriter.println("User " + i2 + " not found");
                return;
            }
            dumpUserLocked(printWriter, userData, sb, j, j2);
        }
    }

    public final void dumpUserLocked(PrintWriter printWriter, UserData userData, StringBuilder sb, long j, long j2) {
        int i;
        UserInfo userInfo = userData.info;
        int i2 = userInfo.id;
        if (!Build.IS_DEBUGGABLE) {
            printWriter.print("  ");
            printWriter.print("UserInfo{" + userInfo.id + ":xxx:" + Integer.toHexString(userInfo.flags) + "}");
        } else {
            printWriter.print("  ");
            printWriter.print(userInfo);
        }
        printWriter.print(" serialNo=");
        printWriter.print(userInfo.serialNumber);
        printWriter.print(" isPrimary=");
        printWriter.print(userInfo.isPrimary());
        int i3 = userInfo.profileGroupId;
        if (i3 != userInfo.id && i3 != -10000) {
            printWriter.print(" parentId=");
            printWriter.print(userInfo.profileGroupId);
        }
        if (this.mRemovingUserIds.get(i2)) {
            printWriter.print(" <removing> ");
        }
        if (userInfo.partial) {
            printWriter.print(" <partial>");
        }
        if (userInfo.preCreated) {
            printWriter.print(" <pre-created>");
        }
        if (userInfo.convertedFromPreCreated) {
            printWriter.print(" <converted>");
        }
        printWriter.println();
        printWriter.print("    Type: ");
        printWriter.println(userInfo.userType);
        printWriter.print("    Flags: ");
        printWriter.print(userInfo.flags);
        printWriter.print(" (");
        printWriter.print(UserInfo.flagsToString(userInfo.flags));
        printWriter.println(")");
        printWriter.print("    State: ");
        synchronized (this.mUserStates) {
            i = this.mUserStates.get(i2, -1);
        }
        printWriter.println(UserState.stateToString(i));
        printWriter.print("    Created: ");
        dumpTimeAgo(printWriter, sb, j, userInfo.creationTime);
        printWriter.print("    Last logged in: ");
        dumpTimeAgo(printWriter, sb, j, userInfo.lastLoggedInTime);
        printWriter.print("    Last logged in fingerprint: ");
        printWriter.println(userInfo.lastLoggedInFingerprint);
        printWriter.print("    Start time: ");
        dumpTimeAgo(printWriter, sb, j2, userData.startRealtime);
        printWriter.print("    Unlock time: ");
        dumpTimeAgo(printWriter, sb, j2, userData.unlockRealtime);
        printWriter.print("    Last entered foreground: ");
        dumpTimeAgo(printWriter, sb, j, userData.mLastEnteredForegroundTimeMillis);
        printWriter.print("    Has profile owner: ");
        printWriter.println(this.mIsUserManaged.get(i2));
        printWriter.println("    Restrictions:");
        synchronized (this.mRestrictionsLock) {
            UserRestrictionsUtils.dumpRestrictions(printWriter, "      ", this.mBaseUserRestrictions.getRestrictions(userInfo.id));
            printWriter.println("    Device policy restrictions:");
            UserRestrictionsUtils.dumpRestrictions(printWriter, "      ", this.mDevicePolicyUserRestrictions.getRestrictions(userInfo.id));
            printWriter.println("    Effective restrictions:");
            UserRestrictionsUtils.dumpRestrictions(printWriter, "      ", this.mCachedEffectiveUserRestrictions.getRestrictions(userInfo.id));
        }
        if (userData.account != null) {
            printWriter.print("    Account name: " + userData.account);
            printWriter.println();
        }
        if (userData.seedAccountName != null) {
            printWriter.print("    Seed account name: " + userData.seedAccountName);
            printWriter.println();
            if (userData.seedAccountType != null) {
                printWriter.print("         account type: " + userData.seedAccountType);
                printWriter.println();
            }
            if (userData.seedAccountOptions != null) {
                printWriter.print("         account options exist");
                printWriter.println();
            }
        }
        UserProperties userProperties = userData.userProperties;
        if (userProperties != null) {
            userProperties.println(printWriter, "    ");
        }
        printWriter.println("    Ignore errors preparing storage: " + userData.getIgnorePrepareStorageErrors());
        if (SemPersonaManager.isDoEnabled(i2)) {
            printWriter.print("    KNOX attributes: ");
            printWriter.print(Integer.toHexString(userInfo.getAttributes()));
            if (userInfo.isPremiumContainer()) {
                printWriter.print(" <PREMIUM> ");
            }
            printWriter.println();
        }
        if (userInfo.isManagedProfile()) {
            printWriter.print("    KNOX flags: ");
            printWriter.println();
            printWriter.print("    KNOX attributes: ");
            printWriter.print(Integer.toHexString(userInfo.getAttributes()));
            if (userInfo.isPremiumContainer()) {
                printWriter.print(" <PREMIUM> ");
            }
            if (userInfo.isSuperLocked()) {
                if (userInfo.isAdminLocked()) {
                    printWriter.print(" <admin locked> ");
                }
                if (userInfo.isLicenseLocked()) {
                    printWriter.print(" <license expired> ");
                }
                if (userInfo.isDeviceCompromised()) {
                    printWriter.print(" <device compromise detected> ");
                }
            }
            printWriter.println();
        }
        int i4 = userInfo.flags;
        if ((100663296 & i4) != 0) {
            if ((i4 & 67108864) != 0) {
                printWriter.print(" <DUALDAR CUSTOM CRYPTO>");
            }
            if ((userInfo.flags & 33554432) != 0) {
                printWriter.print(" <DUALDAR NATIVE CRYPTO>");
            }
            State currentState = StateMachine.getCurrentState(userInfo.id);
            if (currentState != null) {
                printWriter.print(" - " + currentState.toString());
            }
        }
    }

    public static void dumpTimeAgo(PrintWriter printWriter, StringBuilder sb, long j, long j2) {
        if (j2 == 0) {
            printWriter.println("<unknown>");
            return;
        }
        sb.setLength(0);
        TimeUtils.formatDuration(j - j2, sb);
        sb.append(" ago");
        printWriter.println(sb);
    }

    /* loaded from: classes3.dex */
    public final class MainHandler extends Handler {
        public MainHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                removeMessages(2);
                synchronized (UserManagerService.this.mPackagesLock) {
                    UserManagerService.this.writeUserListLP();
                }
                return;
            }
            removeMessages(1, message.obj);
            synchronized (UserManagerService.this.mPackagesLock) {
                int intValue = ((Integer) message.obj).intValue();
                UserData userDataNoChecks = UserManagerService.this.getUserDataNoChecks(intValue);
                if (userDataNoChecks != null) {
                    UserManagerService.this.writeUserLP(userDataNoChecks);
                } else {
                    Slog.i("UserManagerService", "handle(WRITE_USER_MSG): no data for user " + intValue + ", it was probably removed before handler could handle it");
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalService extends UserManagerInternal {
        public LocalService() {
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void setDevicePolicyUserRestrictions(int i, Bundle bundle, RestrictionsSet restrictionsSet, boolean z) {
            UserManagerService.this.setDevicePolicyUserRestrictionsInner(i, bundle, restrictionsSet, z);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void setUserRestriction(int i, String str, boolean z) {
            UserManagerService.this.setUserRestrictionInner(i, str, z);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean getUserRestriction(int i, String str) {
            return UserManagerService.this.getUserRestrictions(i).getBoolean(str);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void addUserRestrictionsListener(UserManagerInternal.UserRestrictionsListener userRestrictionsListener) {
            synchronized (UserManagerService.this.mUserRestrictionsListeners) {
                UserManagerService.this.mUserRestrictionsListeners.add(userRestrictionsListener);
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void addUserLifecycleListener(UserManagerInternal.UserLifecycleListener userLifecycleListener) {
            synchronized (UserManagerService.this.mUserLifecycleListeners) {
                UserManagerService.this.mUserLifecycleListeners.add(userLifecycleListener);
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void removeUserLifecycleListener(UserManagerInternal.UserLifecycleListener userLifecycleListener) {
            synchronized (UserManagerService.this.mUserLifecycleListeners) {
                UserManagerService.this.mUserLifecycleListeners.remove(userLifecycleListener);
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void addMaintenanceModeLifecycleListener(UserManagerInternal.MaintenanceModeLifecycleListener maintenanceModeLifecycleListener) {
            UserManagerService.this.mMaintenanceModeManager.addLifecycleListener(maintenanceModeLifecycleListener);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void setDeviceManaged(boolean z) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserManagerService.this.mIsDeviceManaged = z;
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean isDeviceManaged() {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                z = UserManagerService.this.mIsDeviceManaged;
            }
            return z;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void setUserManaged(int i, boolean z) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserManagerService.this.mIsUserManaged.put(i, z);
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean isUserManaged(int i) {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                z = UserManagerService.this.mIsUserManaged.get(i);
            }
            return z;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void setUserIcon(int i, Bitmap bitmap) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                synchronized (UserManagerService.this.mPackagesLock) {
                    UserData userDataNoChecks = UserManagerService.this.getUserDataNoChecks(i);
                    if (userDataNoChecks != null) {
                        UserInfo userInfo = userDataNoChecks.info;
                        if (!userInfo.partial) {
                            UserManagerService.this.writeBitmapLP(userInfo, bitmap);
                            UserManagerService.this.writeUserLP(userDataNoChecks);
                            UserManagerService.this.sendUserInfoChangedBroadcast(i);
                            return;
                        }
                    }
                    Slog.w("UserManagerService", "setUserIcon: unknown user #" + i);
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void setForceEphemeralUsers(boolean z) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserManagerService.this.mForceEphemeralUsers = z;
            }
        }

        /* renamed from: com.android.server.pm.UserManagerService$LocalService$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends BroadcastReceiver {
            public final /* synthetic */ LocalService this$1;

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (intent.getIntExtra("android.intent.extra.user_handle", -10000) != 0) {
                    return;
                }
                UserManagerService.this.mContext.unregisterReceiver(this);
                UserManagerService.this.removeAllUsersExceptSystemAndPermanentAdminMain();
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void onEphemeralUserStop(int i) {
            synchronized (UserManagerService.this.mUsersLock) {
                UserInfo userInfoLU = UserManagerService.this.getUserInfoLU(i);
                if (userInfoLU != null && userInfoLU.isEphemeral()) {
                    userInfoLU.flags |= 64;
                    if (userInfoLU.isGuest()) {
                        userInfoLU.guestToRemove = true;
                    }
                }
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public UserInfo createUserEvenWhenDisallowed(String str, String str2, int i, String[] strArr, Object obj) {
            return UserManagerService.this.createUserInternalUnchecked(str, str2, i, -10000, false, strArr, obj);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean removeUserEvenWhenDisallowed(int i) {
            return UserManagerService.this.removeUserWithProfilesUnchecked(i);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean isUserRunning(int i) {
            int i2;
            synchronized (UserManagerService.this.mUserStates) {
                i2 = UserManagerService.this.mUserStates.get(i, -1);
            }
            return (i2 == -1 || i2 == 4 || i2 == 5) ? false : true;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void setUserState(int i, int i2) {
            synchronized (UserManagerService.this.mUserStates) {
                UserManagerService.this.mUserStates.put(i, i2);
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void removeUserState(int i) {
            synchronized (UserManagerService.this.mUserStates) {
                UserManagerService.this.mUserStates.delete(i);
            }
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int[] getUserIds() {
            return UserManagerService.this.getUserIds();
        }

        @Override // com.android.server.pm.UserManagerInternal
        public List getUsers(boolean z) {
            return getUsers(true, z, true);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public List getUsers(boolean z, boolean z2, boolean z3) {
            return UserManagerService.this.getUsersInternal(z, z2, z3);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int[] getProfileIds(int i, boolean z) {
            int[] array;
            synchronized (UserManagerService.this.mUsersLock) {
                array = UserManagerService.this.getProfileIdsLU(i, null, z).toArray();
            }
            return array;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean isUserUnlockingOrUnlocked(int i) {
            int i2;
            synchronized (UserManagerService.this.mUserStates) {
                i2 = UserManagerService.this.mUserStates.get(i, -1);
            }
            if (i2 == 4 || i2 == 5) {
                return StorageManager.isUserKeyUnlocked(i);
            }
            return i2 == 2 || i2 == 3;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean isUserUnlocked(int i) {
            int i2;
            if (SemPersonaManager.isDarDualEncrypted(i)) {
                return false;
            }
            synchronized (UserManagerService.this.mUserStates) {
                i2 = UserManagerService.this.mUserStates.get(i, -1);
            }
            if (i2 == 4 || i2 == 5) {
                return StorageManager.isUserKeyUnlocked(i);
            }
            return i2 == 3;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean exists(int i) {
            return UserManagerService.this.getUserInfoNoChecks(i) != null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:27:0x003a, code lost:
        
            return false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0057, code lost:
        
            android.util.Slog.w("UserManagerService", r8 + " for disabled profile " + r7 + " from " + r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
        
            android.util.Slog.w("UserManagerService", r8 + " for another profile " + r7 + " from " + r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x009e, code lost:
        
            return false;
         */
        @Override // com.android.server.pm.UserManagerInternal
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean isProfileAccessible(int r6, int r7, java.lang.String r8, boolean r9) {
            /*
                r5 = this;
                r0 = 1
                if (r7 != r6) goto L4
                return r0
            L4:
                com.android.server.pm.UserManagerService r1 = com.android.server.pm.UserManagerService.this
                java.lang.Object r1 = com.android.server.pm.UserManagerService.m9747$$Nest$fgetmUsersLock(r1)
                monitor-enter(r1)
                com.android.server.pm.UserManagerService r2 = com.android.server.pm.UserManagerService.this     // Catch: java.lang.Throwable -> Lc1
                android.content.pm.UserInfo r2 = com.android.server.pm.UserManagerService.m9763$$Nest$mgetUserInfoLU(r2, r6)     // Catch: java.lang.Throwable -> Lc1
                r3 = 0
                if (r2 == 0) goto L7a
                boolean r4 = r2.isProfile()     // Catch: java.lang.Throwable -> Lc1
                if (r4 == 0) goto L1b
                goto L7a
            L1b:
                com.android.server.pm.UserManagerService r5 = com.android.server.pm.UserManagerService.this     // Catch: java.lang.Throwable -> Lc1
                android.content.pm.UserInfo r5 = com.android.server.pm.UserManagerService.m9763$$Nest$mgetUserInfoLU(r5, r7)     // Catch: java.lang.Throwable -> Lc1
                if (r5 == 0) goto L55
                boolean r4 = r5.isEnabled()     // Catch: java.lang.Throwable -> Lc1
                if (r4 != 0) goto L2a
                goto L55
            L2a:
                int r5 = r5.profileGroupId     // Catch: java.lang.Throwable -> Lc1
                r6 = -10000(0xffffffffffffd8f0, float:NaN)
                if (r5 == r6) goto L37
                int r6 = r2.profileGroupId     // Catch: java.lang.Throwable -> Lc1
                if (r5 == r6) goto L35
                goto L37
            L35:
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Lc1
                return r0
            L37:
                if (r9 != 0) goto L3b
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Lc1
                return r3
            L3b:
                java.lang.SecurityException r5 = new java.lang.SecurityException     // Catch: java.lang.Throwable -> Lc1
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc1
                r6.<init>()     // Catch: java.lang.Throwable -> Lc1
                r6.append(r8)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r8 = " for unrelated profile "
                r6.append(r8)     // Catch: java.lang.Throwable -> Lc1
                r6.append(r7)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> Lc1
                r5.<init>(r6)     // Catch: java.lang.Throwable -> Lc1
                throw r5     // Catch: java.lang.Throwable -> Lc1
            L55:
                if (r9 == 0) goto L78
                java.lang.String r5 = "UserManagerService"
                java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc1
                r9.<init>()     // Catch: java.lang.Throwable -> Lc1
                r9.append(r8)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r8 = " for disabled profile "
                r9.append(r8)     // Catch: java.lang.Throwable -> Lc1
                r9.append(r7)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r7 = " from "
                r9.append(r7)     // Catch: java.lang.Throwable -> Lc1
                r9.append(r6)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r6 = r9.toString()     // Catch: java.lang.Throwable -> Lc1
                android.util.Slog.w(r5, r6)     // Catch: java.lang.Throwable -> Lc1
            L78:
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Lc1
                return r3
            L7a:
                if (r9 != 0) goto L9f
                java.lang.String r5 = "UserManagerService"
                java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc1
                r9.<init>()     // Catch: java.lang.Throwable -> Lc1
                r9.append(r8)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r8 = " for another profile "
                r9.append(r8)     // Catch: java.lang.Throwable -> Lc1
                r9.append(r7)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r7 = " from "
                r9.append(r7)     // Catch: java.lang.Throwable -> Lc1
                r9.append(r6)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r6 = r9.toString()     // Catch: java.lang.Throwable -> Lc1
                android.util.Slog.w(r5, r6)     // Catch: java.lang.Throwable -> Lc1
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Lc1
                return r3
            L9f:
                java.lang.SecurityException r5 = new java.lang.SecurityException     // Catch: java.lang.Throwable -> Lc1
                java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc1
                r9.<init>()     // Catch: java.lang.Throwable -> Lc1
                r9.append(r8)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r8 = " for another profile "
                r9.append(r8)     // Catch: java.lang.Throwable -> Lc1
                r9.append(r7)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r7 = " from "
                r9.append(r7)     // Catch: java.lang.Throwable -> Lc1
                r9.append(r6)     // Catch: java.lang.Throwable -> Lc1
                java.lang.String r6 = r9.toString()     // Catch: java.lang.Throwable -> Lc1
                r5.<init>(r6)     // Catch: java.lang.Throwable -> Lc1
                throw r5     // Catch: java.lang.Throwable -> Lc1
            Lc1:
                r5 = move-exception
                monitor-exit(r1)     // Catch: java.lang.Throwable -> Lc1
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.pm.UserManagerService.LocalService.isProfileAccessible(int, int, java.lang.String, boolean):boolean");
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int getProfileParentId(int i) {
            return UserManagerService.this.getProfileParentIdUnchecked(i);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean setAttributes(int i, int i2) {
            UserData userData;
            Log.d("UserManagerService", "setAttributes, user ID: " + i + ", attribute: " + i2);
            synchronized (UserManagerService.this.mUsersLock) {
                int size = UserManagerService.this.mUsers.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        userData = null;
                        break;
                    }
                    UserInfo userInfo = ((UserData) UserManagerService.this.mUsers.valueAt(i3)).info;
                    if (userInfo.id == i) {
                        userData = new UserData();
                        userInfo.setAttributes(i2 | userInfo.getAttributes());
                        userData.userProperties = UserManagerService.this.getUserPropertiesInternal(i);
                        userData.info = userInfo;
                        break;
                    }
                    i3++;
                }
            }
            if (userData != null) {
                UserManagerService.this.writeUserLP(userData);
                return true;
            }
            Log.d("UserManagerService", "setAttributes: user not found: " + i);
            return false;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean clearAttributes(int i, int i2) {
            UserData userData;
            boolean z = false;
            if (i2 <= 0) {
                return false;
            }
            synchronized (UserManagerService.this.mUsersLock) {
                int size = UserManagerService.this.mUsers.size();
                int i3 = 0;
                while (true) {
                    userData = null;
                    if (i3 >= size) {
                        break;
                    }
                    UserInfo userInfo = ((UserData) UserManagerService.this.mUsers.valueAt(i3)).info;
                    if (userInfo.id == i) {
                        if ((userInfo.getAttributes() & i2) > 0) {
                            userData = new UserData();
                            userInfo.setAttributes((~i2) & userInfo.getAttributes());
                            userData.userProperties = UserManagerService.this.getUserPropertiesInternal(i);
                            userData.info = userInfo;
                        }
                        z = true;
                    } else {
                        i3++;
                    }
                }
                if (userData != null) {
                    UserManagerService.this.writeUserLP(userData);
                }
            }
            return z;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int getAttributes(int i) {
            int attributes;
            synchronized (UserManagerService.this.mUsersLock) {
                UserInfo userInfoLU = UserManagerService.this.getUserInfoLU(i);
                attributes = userInfoLU != null ? userInfoLU.getAttributes() : -1;
            }
            return attributes;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean hasUserRestriction(String str, int i) {
            Bundle effectiveUserRestrictions;
            return UserRestrictionsUtils.isValidRestriction(str) && (effectiveUserRestrictions = UserManagerService.this.getEffectiveUserRestrictions(i)) != null && effectiveUserRestrictions.getBoolean(str);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public UserInfo getUserInfo(int i) {
            UserData userData;
            synchronized (UserManagerService.this.mUsersLock) {
                userData = (UserData) UserManagerService.this.mUsers.get(i);
            }
            if (userData == null) {
                return null;
            }
            return userData.info;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public UserInfo[] getUserInfos() {
            UserInfo[] userInfoArr;
            synchronized (UserManagerService.this.mUsersLock) {
                int size = UserManagerService.this.mUsers.size();
                userInfoArr = new UserInfo[size];
                for (int i = 0; i < size; i++) {
                    userInfoArr[i] = ((UserData) UserManagerService.this.mUsers.valueAt(i)).info;
                }
            }
            return userInfoArr;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void setDefaultCrossProfileIntentFilters(int i, int i2) {
            UserManagerService.this.setDefaultCrossProfileIntentFilters(i2, UserManagerService.this.getUserTypeDetailsNoChecks(i2), UserManagerService.this.getEffectiveUserRestrictions(i2), i);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean shouldIgnorePrepareStorageErrors(int i) {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                UserData userData = (UserData) UserManagerService.this.mUsers.get(i);
                z = userData != null && userData.getIgnorePrepareStorageErrors();
            }
            return z;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public UserProperties getUserProperties(int i) {
            UserProperties userPropertiesInternal = UserManagerService.this.getUserPropertiesInternal(i);
            if (userPropertiesInternal == null) {
                Slog.w("UserManagerService", "A null UserProperties was returned for user " + i);
            }
            return userPropertiesInternal;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int assignUserToDisplayOnStart(int i, int i2, int i3, int i4) {
            return UserManagerService.this.mUserVisibilityMediator.assignUserToDisplayOnStart(i, i2, i3, i4);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void unassignUserFromDisplayOnStop(int i) {
            UserManagerService.this.mUserVisibilityMediator.unassignUserFromDisplayOnStop(i);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean isUserVisible(int i) {
            return UserManagerService.this.mUserVisibilityMediator.isUserVisible(i);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean isUserVisible(int i, int i2) {
            return UserManagerService.this.mUserVisibilityMediator.isUserVisible(i, i2);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int getMainDisplayAssignedToUser(int i) {
            return UserManagerService.this.mUserVisibilityMediator.getMainDisplayAssignedToUser(i);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int getUserAssignedToDisplay(int i) {
            return UserManagerService.this.mUserVisibilityMediator.getUserAssignedToDisplay(i);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void addUserVisibilityListener(UserManagerInternal.UserVisibilityListener userVisibilityListener) {
            UserManagerService.this.mUserVisibilityMediator.addListener(userVisibilityListener);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public void onSystemUserVisibilityChanged(boolean z) {
            UserManagerService.this.mUserVisibilityMediator.onSystemUserVisibilityChanged(z);
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int[] getUserTypesForStatsd(int[] iArr) {
            if (iArr == null) {
                return null;
            }
            int length = iArr.length;
            int[] iArr2 = new int[length];
            for (int i = 0; i < length; i++) {
                UserInfo userInfo = getUserInfo(iArr[i]);
                if (userInfo == null) {
                    UserJourneyLogger unused = UserManagerService.this.mUserJourneyLogger;
                    iArr2[i] = UserJourneyLogger.getUserTypeForStatsd("");
                } else {
                    UserJourneyLogger unused2 = UserManagerService.this.mUserJourneyLogger;
                    iArr2[i] = UserJourneyLogger.getUserTypeForStatsd(userInfo.userType);
                }
            }
            return iArr2;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int getMainUserId() {
            return UserManagerService.this.getMainUserIdUnchecked();
        }

        @Override // com.android.server.pm.UserManagerInternal
        public int getBootUser(boolean z) {
            if (z) {
                TimingsTraceAndSlog timingsTraceAndSlog = new TimingsTraceAndSlog();
                timingsTraceAndSlog.traceBegin("wait-boot-user");
                try {
                    if (UserManagerService.this.mBootUserLatch.getCount() != 0) {
                        Slogf.d("UserManagerService", "Sleeping for boot user to be set. Max sleep for Time: %d", Long.valueOf(BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS));
                    }
                    if (!UserManagerService.this.mBootUserLatch.await(BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS)) {
                        Slogf.w("UserManagerService", "Boot user not set. Timeout: %d", Long.valueOf(BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS));
                    }
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    Slogf.w("UserManagerService", e, "InterruptedException during wait for boot user.", new Object[0]);
                }
                timingsTraceAndSlog.traceEnd();
            }
            return UserManagerService.this.getBootUserUnchecked();
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean setDualDarInfo(int i, int i2) {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                UserData userData = (UserData) UserManagerService.this.mUsers.get(i);
                z = false;
                if (userData != null && (100663296 & i2) != 0) {
                    if ((67108864 & i2) != 0) {
                        Log.d("UserManagerService", "Set DUAL_DAR flag as custom crypto for user " + i);
                    } else if ((33554432 & i2) != 0) {
                        Log.d("UserManagerService", "Set DUAL_DAR flag as samsung crypto for user " + i);
                    } else {
                        i2 = 0;
                    }
                    if (i2 != 0) {
                        UserInfo userInfo = userData.info;
                        userInfo.flags = i2 | userInfo.flags;
                        UserManagerService.this.writeUserLP(userData);
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean setVolatiles(int i, int i2) {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                UserData userData = (UserData) UserManagerService.this.mUsers.get(i);
                if (userData != null) {
                    userData.info.setVolatiles(userData.info.getVolatiles() | i2);
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }

        @Override // com.android.server.pm.UserManagerInternal
        public boolean clearVolatiles(int i, int i2) {
            boolean z;
            synchronized (UserManagerService.this.mUsersLock) {
                UserData userData = (UserData) UserManagerService.this.mUsers.get(i);
                if (userData != null) {
                    userData.info.setVolatiles(userData.info.getVolatiles() & (~i2));
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        }
    }

    public final void enforceUserRestriction(String str, int i, String str2) {
        String str3;
        if (hasUserRestriction(str, i)) {
            StringBuilder sb = new StringBuilder();
            if (str2 != null) {
                str3 = str2 + ": ";
            } else {
                str3 = "";
            }
            sb.append(str3);
            sb.append(str);
            sb.append(" is enabled.");
            String sb2 = sb.toString();
            Slog.w("UserManagerService", sb2);
            throw new UserManager.CheckedUserOperationException(sb2, 1);
        }
    }

    public final void throwCheckedUserOperationException(String str, int i) {
        Slog.e("UserManagerService", str);
        throw new UserManager.CheckedUserOperationException(str, i);
    }

    public final void removeAllUsersExceptSystemAndPermanentAdminMain() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mUsersLock) {
            int size = this.mUsers.size();
            for (int i = 0; i < size; i++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i)).info;
                if (userInfo.id != 0 && !isNonRemovableMainUser(userInfo)) {
                    arrayList.add(userInfo);
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            removeUser(((UserInfo) it.next()).id);
        }
    }

    public int getMaxUsersOfTypePerParent(String str) {
        UserTypeDetails userTypeDetails = (UserTypeDetails) this.mUserTypes.get(str);
        if (userTypeDetails == null) {
            return 0;
        }
        return getMaxUsersOfTypePerParent(userTypeDetails);
    }

    public static int getMaxUsersOfTypePerParent(UserTypeDetails userTypeDetails) {
        int maxAllowedPerParent = userTypeDetails.getMaxAllowedPerParent();
        return (Build.IS_DEBUGGABLE && userTypeDetails.isManagedProfile()) ? SystemProperties.getInt("persist.sys.max_profiles", maxAllowedPerParent) : maxAllowedPerParent;
    }

    public int getFreeProfileBadgeLU(int i, String str) {
        ArraySet arraySet = new ArraySet();
        int size = this.mUsers.size();
        for (int i2 = 0; i2 < size; i2++) {
            UserInfo userInfo = ((UserData) this.mUsers.valueAt(i2)).info;
            if (userInfo.userType.equals(str) && userInfo.profileGroupId == i && !this.mRemovingUserIds.get(userInfo.id)) {
                arraySet.add(Integer.valueOf(userInfo.profileBadge));
            }
        }
        int maxUsersOfTypePerParent = getMaxUsersOfTypePerParent(str);
        if (maxUsersOfTypePerParent == -1) {
            maxUsersOfTypePerParent = Integer.MAX_VALUE;
        }
        for (int i3 = 0; i3 < maxUsersOfTypePerParent; i3++) {
            if (!arraySet.contains(Integer.valueOf(i3))) {
                return i3;
            }
        }
        return 0;
    }

    public boolean hasProfile(int i) {
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            int size = this.mUsers.size();
            for (int i2 = 0; i2 < size; i2++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i2)).info;
                if (i != userInfo.id && isProfileOf(userInfoLU, userInfo)) {
                    return true;
                }
            }
            return false;
        }
    }

    public final void verifyCallingPackage(String str, int i) {
        if (this.mPm.snapshotComputer().getPackageUid(str, 0L, UserHandle.getUserId(i)) == i) {
            return;
        }
        throw new SecurityException("Specified package " + str + " does not match the calling uid " + i);
    }

    public final PackageManagerInternal getPackageManagerInternal() {
        if (this.mPmInternal == null) {
            this.mPmInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        }
        return this.mPmInternal;
    }

    public final DevicePolicyManagerInternal getDevicePolicyManagerInternal() {
        if (this.mDevicePolicyManagerInternal == null) {
            this.mDevicePolicyManagerInternal = (DevicePolicyManagerInternal) LocalServices.getService(DevicePolicyManagerInternal.class);
        }
        return this.mDevicePolicyManagerInternal;
    }

    public final ActivityManagerInternal getActivityManagerInternal() {
        if (this.mAmInternal == null) {
            this.mAmInternal = (ActivityManagerInternal) LocalServices.getService(ActivityManagerInternal.class);
        }
        return this.mAmInternal;
    }

    public final boolean isNonRemovableMainUser(UserInfo userInfo) {
        return userInfo.isMain() && isMainUserPermanentAdmin();
    }

    public boolean isMainUserPermanentAdmin() {
        return Resources.getSystem().getBoolean(17891732);
    }

    public boolean canSwitchToHeadlessSystemUser() {
        return Resources.getSystem().getBoolean(R.bool.config_disableTransitionAnimation);
    }

    public UserJourneyLogger getUserJourneyLogger() {
        return this.mUserJourneyLogger;
    }

    public static int checkCallerPermissionFor(String str) {
        return ContainerDependencyWrapper.checkCallerPermissionFor(sContext, "UserManagerService", str);
    }

    public boolean updateUserInfo(int i, Bundle bundle) {
        UserData userData;
        boolean z;
        Log.d("UserManagerService", "updateUserInfo is called for user " + i);
        checkCallerPermissionFor("updateUserInfo");
        boolean z2 = false;
        if (getProfileParentLU(i) == null) {
            Log.d("UserManagerService", "updateUserInfoFlags userid is not knox workspace..");
        } else if (bundle != null) {
            synchronized (this.mUsersLock) {
                userData = (UserData) this.mUsers.get(i);
                if (userData != null) {
                    UserInfo userInfo = userData.info;
                    if (userInfo != null) {
                        int i2 = bundle.getInt("flags", 0);
                        bundle.getInt("fotaUpgradeVersion", 8);
                        int i3 = bundle.getInt("update-flags", 0);
                        if (i2 > 0) {
                            userInfo.flags = i2 | userInfo.flags;
                            Log.d("UserManagerService", "updateUserInfo flags is updated");
                            z = true;
                        } else {
                            z = false;
                        }
                        if (i3 > 0) {
                            userInfo.flags = i3;
                            Log.d("UserManagerService", "updateUserInfo flags is updated");
                            z = true;
                        }
                        int i4 = bundle.getInt("attributes", 0);
                        if (i4 > 0) {
                            userInfo.setAttributes(userInfo.getAttributes() | i4);
                            Log.d("UserManagerService", "updateUserInfo attributes is updated");
                            z = true;
                        }
                        String string = bundle.getString("name");
                        if (string != null && string.length() > 0) {
                            userInfo.name = string;
                            Log.d("UserManagerService", "updateUserInfo attributes is updated");
                            z = true;
                        }
                        Log.d("UserManagerService", "updateUserInfoFlags needUpdate - " + z);
                        if (z) {
                            this.mUsers.put(userData.info.id, userData);
                            Log.d("UserManagerService", "updateUserInfoFlags updated user cache");
                        }
                    } else {
                        Log.d("UserManagerService", "updateUserInfoFlags user info is null");
                    }
                } else {
                    Log.d("UserManagerService", "updateUserInfoFlags user data is null");
                }
                z = false;
            }
            if (z) {
                synchronized (this.mPackagesLock) {
                    writeUserLP(userData);
                    writeUserListLP();
                    Log.d("UserManagerService", "updateUserInfoFlags updated user xml");
                }
                z2 = true;
            }
        } else {
            Log.d("UserManagerService", "updateUserInfoFlags bundle data is null");
        }
        Log.d("UserManagerService", "updateUserInfoFlags status - " + z2);
        return z2;
    }

    public void setContainerInfo() {
        String str = "";
        synchronized (this.mUsersLock) {
            for (int i = 0; i < this.mUsers.size(); i++) {
                UserInfo userInfo = ((UserData) this.mUsers.valueAt(i)).info;
                if (userInfo.isManagedProfile()) {
                    str = str + Integer.toString(userInfo.id) + "," + Integer.toString(userInfo.flags) + com.android.internal.util.jobs.XmlUtils.STRING_ARRAY_SEPARATOR;
                }
            }
            if (str.length() > 0) {
                str = str.substring(0, str.length() - 1);
            }
        }
        try {
            SystemProperties.set("persist.sys.knox.userinfo", str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final boolean canAddMoreProfilesToUser(String str, int i, boolean z, int i2) {
        checkManageUsersPermission("check if more managed profiles can be added.");
        if (((UserTypeDetails) this.mUserTypes.get(str)) == null || ActivityManager.isLowRamDeviceStatic() || !this.mContext.getPackageManager().hasSystemFeature("android.software.managed_users")) {
            return false;
        }
        synchronized (this.mUsersLock) {
            UserInfo userInfoLU = getUserInfoLU(i);
            if (userInfoLU != null && userInfoLU.canHaveProfile()) {
                if (UserManager.isUserTypeCloneProfile(str) && canAddMoreProfilesToUser(str, i, z)) {
                    return true;
                }
                return PersonaServiceHelper.canAddMoreManagedProfiles(this.mContext, z, i2, getProfiles(i, true));
            }
            return false;
        }
    }

    public final void resetDefaultIconandName(int i) {
        try {
            if (SemPersonaManager.isSecureFolderId(i)) {
                ApplicationPolicy applicationPolicy = EnterpriseDeviceManager.getInstance(this.mContext).getApplicationPolicy();
                applicationPolicy.changeApplicationIcon("com.samsung.knox.securefolder", (byte[]) null);
                applicationPolicy.changeApplicationName("com.samsung.knox.securefolder", (String) null);
            }
        } catch (Exception e) {
            Log.e("UserManagerService", "Exception: " + e.getMessage());
        }
    }

    public final IDarManagerService getDarManagerService() {
        if (this.mDarManagerService == null) {
            this.mDarManagerService = IDarManagerService.Stub.asInterface(ServiceManager.getService("dar"));
        }
        return this.mDarManagerService;
    }

    public final boolean verifyDeviceIntegrity() {
        if (getDarManagerService() != null) {
            try {
                return getDarManagerService().isKnoxKeyInstallable();
            } catch (RemoteException e) {
                Log.e("UserManagerService", "check Device Integrity - Remote Exception : " + e);
                return false;
            }
        }
        Log.d("UserManagerService", "check Device Integrity - failed. cannot get DAR Service");
        return false;
    }

    public final boolean isDeviceRootKeyInstalled() {
        if (getDarManagerService() != null) {
            try {
                return getDarManagerService().isDeviceRootKeyInstalled();
            } catch (RemoteException e) {
                Log.e("UserManagerService", "check Device Root Key - Remote Exception : " + e);
                return false;
            }
        }
        Log.d("UserManagerService", "check Device Root Key - failed. cannot get DAR Service");
        return false;
    }

    public final void migrateDualDarUserInfo(int i) {
        if (SemSystemProperties.getInt("ro.product.first_api_level", 0) < 34 && SystemProperties.getInt("persist.sys.dualdarinfo.update", 0) <= 0) {
            synchronized (this.mUsersLock) {
                UserData userData = (UserData) this.mUsers.get(i);
                if (userData == null) {
                    Log.e("UserManagerService", "migrate DualDar user info failed! : cannot get UserData");
                    return;
                }
                UserInfo userInfo = userData.info;
                int i2 = userInfo.flags;
                if ((i2 & IInstalld.FLAG_FORCE) != 0) {
                    userInfo.flags = (i2 ^ IInstalld.FLAG_FORCE) | 33554432;
                } else if ((i2 & 16384) != 0) {
                    userInfo.flags = (i2 ^ 16384) | 67108864;
                }
                SystemProperties.set("persist.sys.dualdarinfo.update", "1");
            }
        }
    }

    public final UserInfo getLegacyDualDarUser() {
        List usersInternal = getUsersInternal(true, true, true);
        for (int i = 0; i < usersInternal.size(); i++) {
            UserInfo userInfo = (UserInfo) usersInternal.get(i);
            if (userInfo.isManagedProfile() && (userInfo.flags & 24576) != 0) {
                return userInfo;
            }
        }
        return null;
    }
}
