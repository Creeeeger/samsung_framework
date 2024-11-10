package com.android.server.am;

import android.R;
import android.app.ActivityClient;
import android.app.ActivityManager;
import android.app.ActivityManagerInternal;
import android.app.ActivityTaskManager;
import android.app.ActivityThread;
import android.app.AnrController;
import android.app.AppGlobals;
import android.app.AppOpsManager;
import android.app.AppOpsManagerInternal;
import android.app.ApplicationErrorReport;
import android.app.BackgroundStartPrivileges;
import android.app.BroadcastOptions;
import android.app.ContentProviderHolder;
import android.app.ContextImpl;
import android.app.ForegroundServiceDelegationOptions;
import android.app.IActivityController;
import android.app.IActivityManager;
import android.app.IApplicationStartInfoCompleteListener;
import android.app.IApplicationThread;
import android.app.IForegroundServiceObserver;
import android.app.IInstrumentationWatcher;
import android.app.INotificationManager;
import android.app.IProcessObserver;
import android.app.IServiceConnection;
import android.app.IStopUserCallback;
import android.app.ITaskStackListener;
import android.app.IUiAutomationConnection;
import android.app.IUidFrozenStateChangedCallback;
import android.app.IUidObserver;
import android.app.IUnsafeIntentStrictModeCallback;
import android.app.IUserSwitchObserver;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.ProcessMemoryState;
import android.app.ProfilerInfo;
import android.app.ServiceStartNotAllowedException;
import android.app.SyncNotedAppOp;
import android.app.WaitResult;
import android.app.assist.ActivityId;
import android.app.backup.IBackupManager;
import android.app.compat.CompatChanges;
import android.app.usage.UsageStatsManagerInternal;
import android.appwidget.AppWidgetManagerInternal;
import android.content.AttributionSource;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.LocusId;
import android.content.ServiceConnection;
import android.content.pm.ASKSManager;
import android.content.pm.ActivityInfo;
import android.content.pm.ActivityPresentationInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.IPackageManager;
import android.content.pm.IShortcutService;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ParceledListSlice;
import android.content.pm.ProcessInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.TestUtilityService;
import android.content.pm.UserInfo;
import android.content.pm.VersionedPackage;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManagerInternal;
import android.net.INetd;
import android.net.ProxyInfo;
import android.net.ProxyInfoWrapper;
import android.net.Uri;
import android.os.AppZygote;
import android.os.Binder;
import android.os.BinderProxy;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.CustomFrequencyManagerInternal;
import android.os.Debug;
import android.os.DropBoxManager;
import android.os.FactoryTest;
import android.os.FileUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.ICancellationSignal;
import android.os.ICustomFrequencyManager;
import android.os.IDeviceIdentifiersPolicyService;
import android.os.IInstalld;
import android.os.IPermissionController;
import android.os.IProcessInfoService;
import android.os.IProgressListener;
import android.os.InputConstants;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.PowerExemptionManager;
import android.os.PowerManager;
import android.os.PowerManagerInternal;
import android.os.PowerSaveState;
import android.os.Process;
import android.os.RemoteCallback;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;
import android.os.ShellCallback;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.WorkSource;
import android.os.incremental.IncrementalMetrics;
import android.os.storage.StorageManager;
import android.provider.DeviceConfig;
import android.provider.Settings;
import android.sysprop.InitProperties;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.FeatureFlagUtils;
import android.util.IndentingPrintWriter;
import android.util.IntArray;
import android.util.Log;
import android.util.Pair;
import android.util.PerfLog;
import android.util.PrintWriterPrinter;
import android.util.Slog;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.StatsEvent;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.util.proto.ProtoUtils;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.android.internal.app.AppLockPolicy;
import com.android.internal.app.IAppOpsActiveCallback;
import com.android.internal.app.IAppOpsCallback;
import com.android.internal.app.IAppOpsService;
import com.android.internal.app.ProcessMap;
import com.android.internal.app.SystemUserHomeActivity;
import com.android.internal.app.procstats.ProcessState;
import com.android.internal.app.procstats.ProcessStats;
import com.android.internal.content.InstallLocationUtils;
import com.android.internal.notification.SystemNotificationChannels;
import com.android.internal.os.BackgroundThread;
import com.android.internal.os.BinderCallHeavyHitterWatcher;
import com.android.internal.os.BinderInternal;
import com.android.internal.os.BinderTransactionNameResolver;
import com.android.internal.os.IResultReceiver;
import com.android.internal.os.ProcessCpuTracker;
import com.android.internal.os.SomeArgs;
import com.android.internal.os.TimeoutRecord;
import com.android.internal.os.TransferPipe;
import com.android.internal.os.Zygote;
import com.android.internal.policy.AttributeCache;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.DumpUtils;
import com.android.internal.util.FastPrintWriter;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.MemInfoReader;
import com.android.internal.util.Preconditions;
import com.android.internal.util.function.HeptFunction;
import com.android.internal.util.function.HexFunction;
import com.android.internal.util.function.QuadFunction;
import com.android.internal.util.function.QuintFunction;
import com.android.internal.util.function.UndecFunction;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.AlarmManagerInternal;
import com.android.server.BinderCallsStatsService;
import com.android.server.BootReceiver;
import com.android.server.DeviceIdleInternal;
import com.android.server.DisplayThread;
import com.android.server.DssController;
import com.android.server.IntentResolver;
import com.android.server.IoThread;
import com.android.server.LocalManagerRegistry;
import com.android.server.LocalServices;
import com.android.server.LockGuard;
import com.android.server.PackageWatchdog;
import com.android.server.ServiceThread;
import com.android.server.SystemConfig;
import com.android.server.SystemService;
import com.android.server.SystemServiceManager;
import com.android.server.ThreadPriorityBooster;
import com.android.server.UiThread;
import com.android.server.UserspaceRebootLogger;
import com.android.server.Watchdog;
import com.android.server.am.ActiveServices;
import com.android.server.am.ActivityManagerService;
import com.android.server.am.AppNotRespondingDialog;
import com.android.server.am.BinderTransaction;
import com.android.server.am.ComponentAliasResolver;
import com.android.server.am.DropboxRateLimiter;
import com.android.server.am.PendingIntentRecord;
import com.android.server.am.ProcessList;
import com.android.server.am.mars.MARsDebugConfig;
import com.android.server.am.mars.database.MARsComponentTracker;
import com.android.server.am.mars.filter.filter.ActiveMusicRecordFilter;
import com.android.server.am.pmm.PersonalizedMemoryManager;
import com.android.server.appop.AppOpsService;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.backup.BackupManagerConstants;
import com.android.server.bgslotmanager.CustomEFKManager;
import com.android.server.chimera.PerProcessNandswap;
import com.android.server.chimera.umr.KernelMemoryProxy$ReclaimerLog;
import com.android.server.chimera.umr.UnifiedMemoryReclaimer;
import com.android.server.clipboard.ClipboardService;
import com.android.server.compat.PlatformCompat;
import com.android.server.contentcapture.ContentCaptureManagerInternal;
import com.android.server.criticalevents.CriticalEventLog;
import com.android.server.display.DisplayPowerController2;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.firewall.IntentFirewall;
import com.android.server.job.JobSchedulerInternal;
import com.android.server.location.gnss.hal.GnssNative;
import com.android.server.net.NetworkManagementInternal;
import com.android.server.net.NetworkPolicyManagerInternal;
import com.android.server.os.NativeTombstoneManager;
import com.android.server.pm.Computer;
import com.android.server.pm.Installer;
import com.android.server.pm.UserManagerInternal;
import com.android.server.pm.permission.PermissionManagerServiceInternal;
import com.android.server.pm.pkg.AndroidPackage;
import com.android.server.pm.pkg.parsing.ParsingPackageUtils;
import com.android.server.power.ShutdownThread;
import com.android.server.power.stats.BatteryStatsImpl;
import com.android.server.sdksandbox.SdkSandboxManagerLocal;
import com.android.server.uri.GrantUri;
import com.android.server.uri.UriGrantsManagerInternal;
import com.android.server.utils.PriorityDump;
import com.android.server.utils.Slogf;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.vr.VrManagerInternal;
import com.android.server.wm.ActivityMetricsLaunchObserver;
import com.android.server.wm.ActivityServiceConnectionsHolder;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.ActivityTaskManagerService;
import com.android.server.wm.WindowManagerInternal;
import com.android.server.wm.WindowManagerService;
import com.android.server.wm.WindowProcessController;
import com.att.iqi.lib.BuildConfig;
import com.samsung.android.app.SemDualAppManager;
import com.samsung.android.fontutil.FlipFontOptimizer;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.SemPersonaManager;
import com.samsung.android.knox.application.IApplicationPolicy;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import com.samsung.android.knox.dar.ddar.DualDarManager;
import com.samsung.android.knox.dar.ddar.proxy.KnoxProxyManagerInternal;
import com.samsung.android.knox.devicesecurity.IPasswordPolicy;
import com.samsung.android.knox.multiuser.MultiUserManager;
import com.samsung.android.knox.restriction.RestrictionPolicy;
import com.samsung.android.localeoverlaymanager.LocaleOverlayManagerWrapper;
import com.samsung.android.os.SemDvfsManager;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.sdhms.SemAppRestrictionManager;
import com.samsung.android.server.pm.mm.MaintenanceModeManager;
import com.samsung.android.service.EngineeringMode.EngineeringModeManager;
import com.sec.tmodiagnostics.DeviceReportingSecurityChecker;
import dalvik.annotation.optimization.NeverCompile;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes.dex */
public class ActivityManagerService extends IActivityManager.Stub implements Watchdog.Monitor, BatteryStatsImpl.BatteryCallback, ActivityManagerGlobalLock {
    public static final int BROADCAST_BG_TIMEOUT;
    public static final int BROADCAST_FG_TIMEOUT;
    public static final String DEBUG_LEVEL;
    public static final boolean DEBUG_LEVEL_HIGH;
    public static final boolean DEBUG_LEVEL_LOW;
    public static final boolean DEBUG_LEVEL_MID;
    public static final long[] DUMP_MEM_BUCKETS;
    public static final int[] DUMP_MEM_OOM_ADJ;
    public static final String[] DUMP_MEM_OOM_COMPACT_LABEL;
    public static final String[] DUMP_MEM_OOM_LABEL;
    public static final String[] EMPTY_STRING_ARRAY;
    public static final FgsTempAllowListItem FAKE_TEMP_ALLOW_LIST_ITEM;
    public static final boolean IS_JDM_PROJECT;
    public static final int MY_PID;
    public static final int PROC_START_TIMEOUT;
    public static final boolean SHIP_BUILD;
    public static final boolean USER_BUILD;
    public static final List mRecentKillList;
    public static final SparseArray sActiveProcessInfoSelfLocked;
    public static final HostingRecord sNullHostingRecord;
    public static boolean sPmmEnabledBySpcm;
    public static ThreadPriorityBooster sProcThreadPriorityBooster;
    public static String sTheRealBuildSerial;
    public static ThreadPriorityBooster sThreadPriorityBooster;
    public String currentLauncherName;
    public boolean isNowAppLaunching;
    public final AbnormalUsageService mAbnormalUsageService;
    public final IntArray mActiveCameraUids;
    public final ArrayList mActiveInstrumentation;
    public final ActivityMetricsLaunchObserver mActivityLaunchObserver;
    public ActivityTaskManagerService mActivityTaskManager;
    public ArrayMap mAllowedAssociations;
    public final HashSet mAlreadyLoggedViolatedStacks;
    public boolean mAlwaysFinishActivities;
    public final AnrHelper mAnrHelper;
    public ArrayMap mAppBindArgs;
    public final AppErrors mAppErrors;
    public AppOpsManager mAppOpsManager;
    public final AppOpsService mAppOpsService;
    public final AppProfiler mAppProfiler;
    public final AppRestrictionController mAppRestrictionController;
    public IApplicationPolicy mApplicationPolicy;
    public final SparseArray mAssociations;
    public ActivityTaskManagerInternal mAtmInternal;
    public int[] mBackgroundAppIdAllowlist;
    public ArraySet mBackgroundLaunchBroadcasts;
    public final SparseArray mBackupTargets;
    public final BatteryStatsService mBatteryStatsService;
    public final CopyOnWriteArrayList mBindServiceEventListeners;
    public BinderCallsStatsService.Internal mBinderStatsService;
    public volatile boolean mBinderTransactionTrackingEnabled;
    public boolean mBootAnimationComplete;
    public int mBootPhase;
    public volatile boolean mBooted;
    public volatile boolean mBooting;
    public final CopyOnWriteArrayList mBroadcastEventListeners;
    public final BroadcastQueue[] mBroadcastQueues;
    public boolean mCallFinishBooting;
    public CustomFrequencyManagerInternal mCfmsManagerInt;
    public final Map mCompanionAppUidsMap;
    public final ComponentAliasResolver mComponentAliasResolver;
    public ActivityManagerConstants mConstants;
    public volatile ContentCaptureManagerInternal mContentCaptureService;
    public final Context mContext;
    public CoreSettingsObserver mCoreSettingsObserver;
    public final ContentProviderHelper mCpHelper;
    public BroadcastStats mCurBroadcastStats;
    public OomAdjObserver mCurOomAdjObserver;
    public int mCurOomAdjUid;
    public final Object mCurResumedAppLock;
    public String mCurResumedPackage;
    public int mCurResumedUid;
    public String mCurrentPackage;
    public CustomEFKManager mCustomEFKManager;
    public String mDebugApp;
    public boolean mDebugTransient;
    public final ArraySet mDeliveryGroupPolicyIgnoredActions;
    public volatile boolean mDeterministicUidIdle;
    public int[] mDeviceIdleAllowlist;
    public int[] mDeviceIdleExceptIdleAllowlist;
    public int[] mDeviceIdleTempAllowlist;
    public volatile int mDeviceOwnerUid;
    public final DropboxRateLimiter mDropboxRateLimiter;
    public DssController mDssController;
    public SemDvfsManager mDvfsMgr;
    public DynamicHiddenApp mDynamicHiddenApp;
    public final boolean mEnableModernQueue;
    public final boolean mEnableOffloadQueue;
    public ActivityManagerServiceExt mExt;
    public final int mFactoryTest;
    public final FgsTempAllowList mFgsStartTempAllowList;
    public final FgsTempAllowList mFgsWhileInUseTempAllowList;
    public boolean mForceBackgroundCheck;
    public final ProcessMap mForegroundPackages;
    public final ArrayList mForegroundServiceStateListeners;
    public final GetBackgroundStartPrivilegesFunctor mGetBackgroundStartPrivilegesFunctor;
    public final ActivityManagerGlobalLock mGlobalLock;
    public final MainHandler mHandler;
    public final ServiceThread mHandlerThread;
    public final HiddenApiSettings mHiddenApiBlacklist;
    public final SparseArray mImportantProcesses;
    public final Injector mInjector;
    public Installer mInstaller;
    public final InstrumentationReporter mInstrumentationReporter;
    public final IntentFirewall mIntentFirewall;
    public final ActivityManagerInternal mInternal;
    public ArrayMap mIsolatedAppBindArgs;
    public KillPolicyManager mKillPolicyManager;
    public long mLastBinderHeavyHitterAutoSamplerStart;
    public BroadcastStats mLastBroadcastStats;
    public long mLastIdleTime;
    public long mLastPowerCheckUptime;
    public ParcelFileDescriptor[] mLifeMonitorFds;
    public DeviceIdleInternal mLocalDeviceIdleController;
    public PowerManagerInternal mLocalPowerManager;
    public final SparseArray mMediaProjectionTokenMap;
    public String mNativeDebuggingApp;
    public volatile IUidObserver mNetworkPolicyUidObserver;
    public volatile boolean mOnBattery;
    public final Object mOomAdjObserverLock;
    public OomAdjProfiler mOomAdjProfiler;
    public OomAdjuster mOomAdjuster;
    public String mOrigDebugApp;
    public boolean mOrigWaitForDebugger;
    public PackageManagerInternal mPackageManagerInt;
    public final PackageWatchdog mPackageWatchdog;
    public final ArrayList mPendingCmdBR;
    public final PendingIntentController mPendingIntentController;
    public final Map mPendingSches;
    public final PendingStartActivityUids mPendingStartActivityUids;
    public final PendingTempAllowlists mPendingTempAllowlist;
    public PermissionManagerServiceInternal mPermissionManagerInt;
    public final ArrayList mPersistentStartingProcesses;
    public final PhantomProcessList mPhantomProcessList;
    public final PidMap mPidsSelfLocked;
    public final PlatformCompat mPlatformCompat;
    public String mPreviousPackage;
    public int mPreviousUserId;
    public final PriorityDump.PriorityDumper mPriorityDumper;
    public final ActivityManagerGlobalLock mProcLock;
    public final ProcessList.ProcStartHandler mProcStartHandler;
    public final ServiceThread mProcStartHandlerThread;
    public final ProcessCpuTracker mProcessCpuTracker;
    public ProcessCpusetController mProcessCpusetController;
    public final ProcessList mProcessList;
    public final ProcessStatsService mProcessStats;
    public final ArrayList mProcessesOnHold;
    public volatile boolean mProcessesReady;
    public ArraySet mProfileOwnerUids;
    public final IntentResolver mReceiverResolver;
    public final HashMap mRegisteredReceivers;
    public RestrictionPolicy mRestrictionPolicy;
    public boolean mSafeMode;
    public ScreenChangeObserver mScreenChangeObserver;
    public final ActiveServices mServices;
    public final SparseArray mStickyBroadcasts;
    public final SparseArray mStrictModeCallbacks;
    public boolean mSuspendUponWait;
    public volatile boolean mSystemReady;
    public SystemServiceManager mSystemServiceManager;
    public final ActivityThread mSystemThread;
    public TestUtilityService mTestUtilityService;
    public TraceErrorLogger mTraceErrorLogger;
    public String mTrackAllocationApp;
    public boolean mTrackingAssociations;
    public int mTransitionPlayerPid;
    public UriGrantsManagerInternal mUgmInternal;
    public final Context mUiContext;
    public final Handler mUiHandler;
    public final RemoteCallbackList mUidFrozenStateChangedCallbackList;
    public final SparseIntArray mUidNetworkBlockedReasons;
    public final UidObserverController mUidObserverController;
    public volatile UsageStatsManagerInternal mUsageStatsService;
    public final boolean mUseFifoUiScheduling;
    public final UserController mUserController;
    public volatile boolean mUserIsMonkey;
    public volatile ActivityManagerInternal.VoiceInteractionManagerProvider mVoiceInteractionManagerProvider;
    public boolean mWaitForDebugger;
    public AtomicInteger mWakefulness;
    public WindowManagerService mWindowManager;
    public WindowManagerInternal mWmInternal;

    /* loaded from: classes.dex */
    public class MemoryUsageDumpOptions {
        public boolean dumpDalvik;
        public boolean dumpDetails;
        public boolean dumpFullDetails;
        public boolean dumpProto;
        public boolean dumpSummaryOnly;
        public boolean dumpSwapPss;
        public boolean dumpUnreachable;
        public boolean isCheckinRequest;
        public boolean isCompact;
        public boolean localOnly;
        public boolean oomOnly;
        public boolean packages;

        public MemoryUsageDumpOptions() {
        }

        public /* synthetic */ MemoryUsageDumpOptions(MemoryUsageDumpOptionsIA memoryUsageDumpOptionsIA) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public interface OomAdjObserver {
        void onOomAdjMessage(String str);
    }

    /* loaded from: classes.dex */
    public final class ProcessChangeItem {
        public int changes;
        public boolean foregroundActivities;
        public int foregroundServiceTypes;
        public int pid;
        public int uid;
    }

    public static boolean doesReasonCodeAllowSchedulingUserInitiatedJobs(int i) {
        if (i == 50 || i == 51 || i == 53 || i == 60 || i == 62 || i == 67 || i == 57 || i == 58) {
            return true;
        }
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                return true;
            default:
                return false;
        }
    }

    public void addPackageData(String str, float f) {
    }

    public Bundle getOptionsForIntentSender(IIntentSender iIntentSender) {
        return null;
    }

    public float getScalingFactor(String str) {
        return 1.0f;
    }

    public final boolean isOnFgOffloadQueue(int i) {
        return (i & IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES) != 0;
    }

    public boolean isScaledApp(int i) {
        return false;
    }

    public boolean isScaledAppByPackageName(String str) {
        return false;
    }

    public void setDssForPackage(String str, float f) {
    }

    public void showAllDSSInfo() {
    }

    static {
        int i = Build.HW_TIMEOUT_MULTIPLIER;
        PROC_START_TIMEOUT = i * 10000;
        BROADCAST_FG_TIMEOUT = i * 10000;
        BROADCAST_BG_TIMEOUT = i * 60000;
        MY_PID = Process.myPid();
        EMPTY_STRING_ARRAY = new String[0];
        USER_BUILD = "user".equals(Build.TYPE);
        SHIP_BUILD = "true".equals(SystemProperties.get("ro.product_ship", "false"));
        IS_JDM_PROJECT = false;
        String str = SystemProperties.get("ro.boot.debug_level", "Unknown");
        DEBUG_LEVEL = str;
        DEBUG_LEVEL_LOW = "0x4f4c".equalsIgnoreCase(str);
        DEBUG_LEVEL_MID = "0x494d".equalsIgnoreCase(str);
        DEBUG_LEVEL_HIGH = "0x4948".equalsIgnoreCase(str);
        sPmmEnabledBySpcm = Boolean.parseBoolean(SystemProperties.get("persist.sys.kpm_onoff", "true"));
        sThreadPriorityBooster = new ThreadPriorityBooster(-2, 7);
        sProcThreadPriorityBooster = new ThreadPriorityBooster(-2, 6);
        sActiveProcessInfoSelfLocked = new SparseArray();
        FAKE_TEMP_ALLOW_LIST_ITEM = new FgsTempAllowListItem(Long.MAX_VALUE, 300, "", -1);
        sTheRealBuildSerial = "unknown";
        sNullHostingRecord = new HostingRecord("");
        mRecentKillList = new ArrayList();
        DUMP_MEM_BUCKETS = new long[]{5120, 7168, 10240, 15360, 20480, 30720, 40960, 81920, 122880, 163840, 204800, 256000, 307200, 358400, 409600, 512000, 614400, 819200, 1048576, 2097152, 5242880, 10485760, 20971520};
        DUMP_MEM_OOM_ADJ = new int[]{-1000, -900, -800, -700, 0, 100, 200, FrameworkStatsLog.CAMERA_SHOT_LATENCY_REPORTED__MODE__CONTROL_DS_MODE_MACRO_RAW_SR_MERGE, 225, 300, 400, 500, 600, 700, 800, 850, 900};
        DUMP_MEM_OOM_LABEL = new String[]{"Native", "System", "Persistent", "Persistent Service", "Foreground", "Visible", "Perceptible", "Perceptible Low", "Perceptible Medium", "Backup", "Heavy Weight", "A Services", "Home", "Previous", "B Services", "Picked", "Cached"};
        DUMP_MEM_OOM_COMPACT_LABEL = new String[]{"native", "sys", "pers", "persvc", "fore", "vis", "percept", "perceptl", "perceptm", "backup", "heavy", "servicea", "home", "prev", "serviceb", "picked", "cached"};
    }

    /* loaded from: classes.dex */
    public class MemDumpInfo {
        public long cachedProcessCount;
        public long cachedSlotCount;
        public long cpuTime;
        public long emptyProcessCount;
        public long emptySlotCount;
        public int hasDexRunning;
        public boolean hasExtra;
        public String label;
        public String procName;
        public int procNum;
        public long pss;
        public long rss;
        public long swap_out;
        public int uid;

        public MemDumpInfo() {
        }
    }

    public BroadcastQueue broadcastQueueForIntent(Intent intent) {
        return broadcastQueueForFlags(intent.getFlags(), intent);
    }

    public BroadcastQueue broadcastQueueForFlags(int i) {
        return broadcastQueueForFlags(i, null);
    }

    public BroadcastQueue broadcastQueueForFlags(int i, Object obj) {
        if (this.mEnableModernQueue) {
            return this.mBroadcastQueues[0];
        }
        if (isOnFgOffloadQueue(i)) {
            return this.mBroadcastQueues[3];
        }
        if (isOnBgOffloadQueue(i)) {
            return this.mBroadcastQueues[2];
        }
        if ((i & 268435456) != 0) {
            return this.mBroadcastQueues[0];
        }
        return this.mBroadcastQueues[1];
    }

    /* renamed from: com.android.server.am.ActivityManagerService$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements PriorityDump.PriorityDumper {
        public AnonymousClass1() {
        }

        @Override // com.android.server.utils.PriorityDump.PriorityDumper
        public void dumpCritical(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
            if (z) {
                return;
            }
            ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"activities"}, z);
            ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"service", "all-platform-critical"}, z);
        }

        @Override // com.android.server.utils.PriorityDump.PriorityDumper
        public void dumpNormal(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
            ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"-a", "--normal-priority"}, z);
        }

        @Override // com.android.server.utils.PriorityDump.PriorityDumper
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
            ActivityManagerService.this.doDump(fileDescriptor, printWriter, strArr, z);
        }
    }

    public static void boostPriorityForLockedSection() {
        sThreadPriorityBooster.boost();
    }

    public static void resetPriorityAfterLockedSection() {
        sThreadPriorityBooster.reset();
    }

    public static void boostPriorityForProcLockedSection() {
        sProcThreadPriorityBooster.boost();
    }

    public static void resetPriorityAfterProcLockedSection() {
        sProcThreadPriorityBooster.reset();
    }

    /* loaded from: classes.dex */
    public final class PackageAssociationInfo {
        public final ArraySet mAllowedPackageAssociations;
        public boolean mIsDebuggable;
        public final String mSourcePackage;

        public PackageAssociationInfo(String str, ArraySet arraySet, boolean z) {
            this.mSourcePackage = str;
            this.mAllowedPackageAssociations = arraySet;
            this.mIsDebuggable = z;
        }

        public boolean isPackageAssociationAllowed(String str) {
            return this.mIsDebuggable || this.mAllowedPackageAssociations.contains(str);
        }

        public boolean isDebuggable() {
            return this.mIsDebuggable;
        }

        public void setDebuggable(boolean z) {
            this.mIsDebuggable = z;
        }

        public ArraySet getAllowedPackageAssociations() {
            return this.mAllowedPackageAssociations;
        }
    }

    /* loaded from: classes.dex */
    public final class PidMap {
        public final SparseArray mPidMap = new SparseArray();

        public ProcessRecord get(int i) {
            return (ProcessRecord) this.mPidMap.get(i);
        }

        public int size() {
            return this.mPidMap.size();
        }

        public ProcessRecord valueAt(int i) {
            return (ProcessRecord) this.mPidMap.valueAt(i);
        }

        public int keyAt(int i) {
            return this.mPidMap.keyAt(i);
        }

        public int indexOfKey(int i) {
            return this.mPidMap.indexOfKey(i);
        }

        public void doAddInternal(int i, ProcessRecord processRecord) {
            this.mPidMap.put(i, processRecord);
        }

        public boolean doRemoveInternal(int i, ProcessRecord processRecord) {
            ProcessRecord processRecord2 = (ProcessRecord) this.mPidMap.get(i);
            if (processRecord2 == null || processRecord2.getStartSeq() != processRecord.getStartSeq()) {
                return false;
            }
            this.mPidMap.remove(i);
            return true;
        }
    }

    public void addPidLocked(ProcessRecord processRecord) {
        int pid = processRecord.getPid();
        synchronized (this.mPidsSelfLocked) {
            this.mPidsSelfLocked.doAddInternal(pid, processRecord);
        }
        SparseArray sparseArray = sActiveProcessInfoSelfLocked;
        synchronized (sparseArray) {
            ProcessInfo processInfo = processRecord.processInfo;
            if (processInfo != null) {
                sparseArray.put(pid, processInfo);
            } else {
                sparseArray.remove(pid);
            }
        }
        this.mAtmInternal.onProcessMapped(pid, processRecord.getWindowProcessController());
    }

    public boolean removePidLocked(int i, ProcessRecord processRecord) {
        boolean doRemoveInternal;
        synchronized (this.mPidsSelfLocked) {
            doRemoveInternal = this.mPidsSelfLocked.doRemoveInternal(i, processRecord);
        }
        if (doRemoveInternal) {
            SparseArray sparseArray = sActiveProcessInfoSelfLocked;
            synchronized (sparseArray) {
                sparseArray.remove(i);
            }
            this.mAtmInternal.onProcessUnMapped(i);
        }
        return doRemoveInternal;
    }

    /* loaded from: classes.dex */
    public abstract class ImportanceToken implements IBinder.DeathRecipient {
        public final int pid;
        public final String reason;
        public IBinder toastToken;
        public IBinder token;

        public ImportanceToken(int i, String str) {
            this.pid = i;
            this.reason = str;
        }

        public String toString() {
            return "ImportanceToken { " + Integer.toHexString(System.identityHashCode(this)) + " " + this.reason + " " + this.pid + " " + this.token + " }";
        }

        public void dumpDebug(ProtoOutputStream protoOutputStream, long j) {
            long start = protoOutputStream.start(j);
            protoOutputStream.write(1120986464257L, this.pid);
            IBinder iBinder = this.token;
            if (iBinder != null) {
                protoOutputStream.write(1138166333442L, iBinder.toString());
            }
            protoOutputStream.write(1138166333443L, this.reason);
            protoOutputStream.end(start);
        }
    }

    public boolean getAppLaunchFlag() {
        return this.isNowAppLaunching;
    }

    public final void setAppLaunchFlag(boolean z) {
        this.isNowAppLaunching = z;
    }

    /* renamed from: com.android.server.am.ActivityManagerService$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends ActivityMetricsLaunchObserver {
        public AnonymousClass2() {
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onActivityLaunched(long j, ComponentName componentName, int i) {
            ActivityManagerService.this.mAppProfiler.onActivityLaunched();
            ActivityManagerService.this.setAppLaunchFlag(true);
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onActivityLaunchCancelled(long j) {
            ActivityManagerService.this.setAppLaunchFlag(false);
        }

        @Override // com.android.server.wm.ActivityMetricsLaunchObserver
        public void onActivityLaunchFinished(long j, ComponentName componentName, long j2) {
            ActivityManagerService.this.setAppLaunchFlag(false);
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends IntentResolver {
        @Override // com.android.server.IntentResolver
        public IntentFilter getIntentFilter(BroadcastFilter broadcastFilter) {
            return broadcastFilter;
        }

        public AnonymousClass3() {
        }

        @Override // com.android.server.IntentResolver
        public boolean allowFilterResult(BroadcastFilter broadcastFilter, List list) {
            IBinder asBinder = broadcastFilter.receiverList.receiver.asBinder();
            for (int size = list.size() - 1; size >= 0; size--) {
                if (((BroadcastFilter) list.get(size)).receiverList.receiver.asBinder() == asBinder) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.android.server.IntentResolver
        public BroadcastFilter newResult(Computer computer, BroadcastFilter broadcastFilter, int i, int i2, long j) {
            int i3;
            if (i2 == -1 || (i3 = broadcastFilter.owningUserId) == -1 || i2 == i3) {
                return (BroadcastFilter) super.newResult(computer, (Object) broadcastFilter, i, i2, j);
            }
            return null;
        }

        @Override // com.android.server.IntentResolver
        public BroadcastFilter[] newArray(int i) {
            return new BroadcastFilter[i];
        }

        @Override // com.android.server.IntentResolver
        public boolean isPackageForFilter(String str, BroadcastFilter broadcastFilter) {
            return str.equals(broadcastFilter.packageName);
        }
    }

    /* loaded from: classes.dex */
    public final class StickyBroadcast {
        public boolean deferUntilActive;
        public Intent intent;
        public int originalCallingAppProcessState;
        public int originalCallingUid;

        public static StickyBroadcast create(Intent intent, boolean z, int i, int i2) {
            StickyBroadcast stickyBroadcast = new StickyBroadcast();
            stickyBroadcast.intent = intent;
            stickyBroadcast.deferUntilActive = z;
            stickyBroadcast.originalCallingUid = i;
            stickyBroadcast.originalCallingAppProcessState = i2;
            return stickyBroadcast;
        }

        public String toString() {
            return "{intent=" + this.intent + ", defer=" + this.deferUntilActive + ", originalCallingUid=" + this.originalCallingUid + ", originalCallingAppProcessState=" + this.originalCallingAppProcessState + "}";
        }
    }

    /* loaded from: classes.dex */
    public final class Association {
        public int mCount;
        public long mLastStateUptime;
        public int mNesting;
        public final String mSourceProcess;
        public final int mSourceUid;
        public long mStartTime;
        public final ComponentName mTargetComponent;
        public final String mTargetProcess;
        public final int mTargetUid;
        public long mTime;
        public int mLastState = 21;
        public long[] mStateTimes = new long[21];

        public Association(int i, String str, int i2, ComponentName componentName, String str2) {
            this.mSourceUid = i;
            this.mSourceProcess = str;
            this.mTargetUid = i2;
            this.mTargetComponent = componentName;
            this.mTargetProcess = str2;
        }
    }

    /* loaded from: classes.dex */
    public final class ScreenChangeObserver extends ContentObserver {
        public final Uri mDisplayChangeUri;

        public ScreenChangeObserver() {
            super(ActivityManagerService.this.mHandler);
            Uri uriFor = Settings.Global.getUriFor("display_size_forced");
            this.mDisplayChangeUri = uriFor;
            ActivityManagerService.this.mContext.getContentResolver().registerContentObserver(uriFor, false, this, -1);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            Slog.d("ActivityManager", "Changes ExtraFreeKbytes ..");
            if (this.mDisplayChangeUri.equals(uri)) {
                ActivityManagerService.this.updateExtraFreeKbytes();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class PendingTempAllowlist {
        public final int callingUid;
        public final long duration;
        public final int reasonCode;
        public final String tag;
        public final int targetUid;
        public final int type;

        public PendingTempAllowlist(int i, long j, int i2, String str, int i3, int i4) {
            this.targetUid = i;
            this.duration = j;
            this.tag = str;
            this.type = i3;
            this.reasonCode = i2;
            this.callingUid = i4;
        }

        public void dumpDebug(ProtoOutputStream protoOutputStream, long j) {
            long start = protoOutputStream.start(j);
            protoOutputStream.write(1120986464257L, this.targetUid);
            protoOutputStream.write(1112396529666L, this.duration);
            protoOutputStream.write(1138166333443L, this.tag);
            protoOutputStream.write(1120986464260L, this.type);
            protoOutputStream.write(1120986464261L, this.reasonCode);
            protoOutputStream.write(1120986464262L, this.callingUid);
            protoOutputStream.end(start);
        }
    }

    /* loaded from: classes.dex */
    public final class FgsTempAllowListItem {
        public final int mCallingUid;
        public final long mDuration;
        public final String mReason;
        public final int mReasonCode;

        public FgsTempAllowListItem(long j, int i, String str, int i2) {
            this.mDuration = j;
            this.mReasonCode = i;
            this.mReason = str;
            this.mCallingUid = i2;
        }

        public void dump(PrintWriter printWriter) {
            printWriter.print(" duration=" + this.mDuration + " callingUid=" + UserHandle.formatUid(this.mCallingUid) + " reasonCode=" + PowerExemptionManager.reasonCodeToString(this.mReasonCode) + " reason=" + this.mReason);
        }
    }

    /* loaded from: classes.dex */
    public final class AppDeathRecipient implements IBinder.DeathRecipient {
        public final ProcessRecord mApp;
        public final IApplicationThread mAppThread;
        public final int mPid;

        public AppDeathRecipient(ProcessRecord processRecord, int i, IApplicationThread iApplicationThread) {
            this.mApp = processRecord;
            this.mPid = i;
            this.mAppThread = iApplicationThread;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.appDiedLocked(this.mApp, this.mPid, this.mAppThread, true, null);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }
    }

    /* loaded from: classes.dex */
    public final class UiHandler extends Handler {
        public UiHandler() {
            super(UiThread.get().getLooper(), null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                ActivityManagerService.this.mAppErrors.handleShowAppErrorUi(message);
                ActivityManagerService.this.ensureBootCompleted();
                return;
            }
            if (i == 2) {
                ActivityManagerService.this.mAppErrors.handleShowAnrUi(message);
                ActivityManagerService.this.ensureBootCompleted();
                return;
            }
            if (i == 6) {
                ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
                ActivityManagerService.boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        ProcessRecord processRecord = (ProcessRecord) message.obj;
                        if (message.arg1 != 0) {
                            if (!processRecord.hasWaitedForDebugger()) {
                                processRecord.mErrorState.getDialogController().showDebugWaitingDialogs();
                                processRecord.setWaitedForDebugger(true);
                            }
                        } else {
                            processRecord.mErrorState.getDialogController().clearWaitingDialog();
                        }
                    } finally {
                    }
                }
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                return;
            }
            if (i != 26) {
                if (i == 68) {
                    ActivityManagerService.this.pushTempAllowlist();
                    return;
                }
                if (i == 70) {
                    ActivityManagerService.this.dispatchOomAdjObserver((String) message.obj);
                    return;
                }
                if (i == 31) {
                    ActivityManagerService.this.mProcessList.dispatchProcessesChanged();
                    return;
                }
                if (i == 32) {
                    ActivityManagerService.this.mProcessList.dispatchProcessDied(message.arg1, message.arg2);
                    return;
                } else if (i == 80) {
                    ActivityManagerService.this.mUidObserverController.addUidToObserverImpl((IBinder) message.obj, message.arg1);
                    return;
                } else {
                    if (i != 81) {
                        return;
                    }
                    ActivityManagerService.this.mUidObserverController.removeUidFromObserverImpl((IBinder) message.obj, message.arg1);
                    return;
                }
            }
            HashMap hashMap = (HashMap) message.obj;
            ActivityManagerGlobalLock activityManagerGlobalLock2 = ActivityManagerService.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock2) {
                try {
                    ProcessRecord processRecord2 = (ProcessRecord) hashMap.get("app");
                    if (processRecord2 == null) {
                        Slog.e("ActivityManager", "App not found when showing strict mode dialog.");
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                        return;
                    }
                    if (processRecord2.mErrorState.getDialogController().hasViolationDialogs()) {
                        Slog.e("ActivityManager", "App already has strict mode dialog: " + processRecord2);
                        return;
                    }
                    AppErrorResult appErrorResult = (AppErrorResult) hashMap.get(KnoxCustomManagerService.SPCM_KEY_RESULT);
                    if (ActivityManagerService.this.mAtmInternal.showStrictModeViolationDialog()) {
                        processRecord2.mErrorState.getDialogController().showViolationDialogs(appErrorResult);
                    } else {
                        appErrorResult.set(0);
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    ActivityManagerService.this.ensureBootCompleted();
                } finally {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class MainHandler extends Handler {
        public MainHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            int i = message.what;
            if (i == 5) {
                ActivityManagerService activityManagerService = ActivityManagerService.this;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService) {
                    try {
                        ActivityManagerService.this.mAppProfiler.performAppGcsIfAppropriateLocked();
                    } finally {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
                return;
            }
            if (i == 20) {
                ProcessRecord processRecord = (ProcessRecord) message.obj;
                ActivityManagerService activityManagerService2 = ActivityManagerService.this;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService2) {
                    try {
                        ActivityManagerService.this.handleProcessStartOrKillTimeoutLocked(processRecord, false);
                    } finally {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
                return;
            }
            if (i == 22) {
                ActivityManagerService activityManagerService3 = ActivityManagerService.this;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService3) {
                    try {
                        int i2 = message.arg1;
                        int i3 = message.arg2;
                        SomeArgs someArgs = (SomeArgs) message.obj;
                        String str = (String) someArgs.arg1;
                        String str2 = (String) someArgs.arg2;
                        int intValue = ((Integer) someArgs.arg3).intValue();
                        someArgs.recycle();
                        ActivityManagerService.this.mExt.forceStopPackageLocked(str, i2, false, false, true, false, false, i3, str2, intValue);
                    } finally {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
                return;
            }
            if (i == 33) {
                new Thread() { // from class: com.android.server.am.ActivityManagerService.MainHandler.1
                    public final /* synthetic */ ArrayList val$memInfos;

                    public AnonymousClass1(ArrayList arrayList) {
                        r2 = arrayList;
                    }

                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        ActivityManagerService.this.mAppProfiler.reportMemUsage(r2);
                    }
                }.start();
                return;
            }
            if (i == 41) {
                ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
                ActivityManagerService.boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        ActivityManagerService.this.mProcessList.updateAllTimePrefsLOSP(message.arg1);
                    } finally {
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                    }
                }
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                return;
            }
            if (i == 63) {
                ActivityManagerGlobalLock activityManagerGlobalLock2 = ActivityManagerService.this.mProcLock;
                ActivityManagerService.boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock2) {
                    try {
                        ActivityManagerService.this.mProcessList.handleAllTrustStorageUpdateLOSP();
                    } finally {
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                    }
                }
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                return;
            }
            if (i == 69) {
                SomeArgs someArgs2 = (SomeArgs) message.obj;
                ActivityManagerService.this.mServices.serviceForegroundCrash((ProcessRecord) someArgs2.arg1, (String) someArgs2.arg2, (ComponentName) someArgs2.arg3);
                someArgs2.recycle();
                return;
            }
            if (i == 12) {
                ActivityManagerService.this.mServices.serviceTimeout((ProcessRecord) message.obj);
                return;
            }
            if (i == 13) {
                ActivityManagerGlobalLock activityManagerGlobalLock3 = ActivityManagerService.this.mProcLock;
                ActivityManagerService.boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock3) {
                    try {
                        ActivityManagerService.this.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.ActivityManagerService$MainHandler$$ExternalSyntheticLambda0
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                ActivityManagerService.MainHandler.lambda$handleMessage$0((ProcessRecord) obj);
                            }
                        });
                    } finally {
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                    }
                }
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                return;
            }
            if (i == 66) {
                ActivityManagerService.this.mServices.serviceForegroundTimeout((ServiceRecord) message.obj);
                return;
            }
            if (i == 67) {
                SomeArgs someArgs3 = (SomeArgs) message.obj;
                ActivityManagerService.this.mServices.serviceForegroundTimeoutANR((ProcessRecord) someArgs3.arg1, (TimeoutRecord) someArgs3.arg2);
                someArgs3.recycle();
                return;
            }
            switch (i) {
                case 27:
                    ActivityManagerService.this.checkExcessivePowerUsage();
                    removeMessages(27);
                    sendMessageDelayed(obtainMessage(27), ActivityManagerService.this.mConstants.POWER_CHECK_INTERVAL);
                    return;
                case 28:
                    ActivityManagerGlobalLock activityManagerGlobalLock4 = ActivityManagerService.this.mProcLock;
                    ActivityManagerService.boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock4) {
                        try {
                            ActivityManagerService.this.mProcessList.clearAllDnsCacheLOSP();
                        } finally {
                        }
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    return;
                case 29:
                    ActivityManagerService.this.mProcessList.setAllHttpProxy();
                    return;
                default:
                    switch (i) {
                        case 49:
                            int i4 = message.arg1;
                            byte[] bArr = (byte[]) message.obj;
                            ActivityManagerGlobalLock activityManagerGlobalLock5 = ActivityManagerService.this.mProcLock;
                            ActivityManagerService.boostPriorityForProcLockedSection();
                            synchronized (activityManagerGlobalLock5) {
                                try {
                                    synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                                        for (int i5 = 0; i5 < ActivityManagerService.this.mPidsSelfLocked.size(); i5++) {
                                            ProcessRecord valueAt = ActivityManagerService.this.mPidsSelfLocked.valueAt(i5);
                                            IApplicationThread thread = valueAt.getThread();
                                            if (valueAt.uid == i4 && thread != null) {
                                                try {
                                                    thread.notifyCleartextNetwork(bArr);
                                                } catch (RemoteException unused) {
                                                }
                                            }
                                        }
                                    }
                                } finally {
                                }
                            }
                            ActivityManagerService.resetPriorityAfterProcLockedSection();
                            return;
                        case 50:
                            ActivityManagerService.this.mAppProfiler.handlePostDumpHeapNotification();
                            return;
                        case 51:
                            ActivityManagerService.this.mAppProfiler.handleAbortDumpHeap((String) message.obj);
                            return;
                        default:
                            switch (i) {
                                case 56:
                                    try {
                                        ((IUiAutomationConnection) message.obj).shutdown();
                                    } catch (RemoteException unused2) {
                                        Slog.w("ActivityManager", "Error shutting down UiAutomationConnection");
                                    }
                                    ActivityManagerService.this.mUserIsMonkey = false;
                                    return;
                                case 57:
                                    ProcessRecord processRecord2 = (ProcessRecord) message.obj;
                                    ActivityManagerService activityManagerService4 = ActivityManagerService.this;
                                    ActivityManagerService.boostPriorityForLockedSection();
                                    synchronized (activityManagerService4) {
                                        try {
                                            ActivityManagerService.this.mCpHelper.processContentProviderPublishTimedOutLocked(processRecord2);
                                        } finally {
                                            ActivityManagerService.resetPriorityAfterLockedSection();
                                        }
                                    }
                                    ActivityManagerService.resetPriorityAfterLockedSection();
                                    return;
                                case 58:
                                    ActivityManagerService.this.idleUids();
                                    return;
                                default:
                                    switch (i) {
                                        case 71:
                                            ActivityManagerService activityManagerService5 = ActivityManagerService.this;
                                            ActivityManagerService.boostPriorityForLockedSection();
                                            synchronized (activityManagerService5) {
                                                try {
                                                    ActivityManagerService.this.mProcessList.killAppZygoteIfNeededLocked((AppZygote) message.obj, false);
                                                } finally {
                                                }
                                            }
                                            ActivityManagerService.resetPriorityAfterLockedSection();
                                            return;
                                        case 72:
                                            ActivityManagerService.this.handleBinderHeavyHitterAutoSamplerTimeOut();
                                            return;
                                        case 73:
                                            ActivityManagerService activityManagerService6 = ActivityManagerService.this;
                                            ActivityManagerService.boostPriorityForLockedSection();
                                            synchronized (activityManagerService6) {
                                                try {
                                                    ((ContentProviderRecord) message.obj).onProviderPublishStatusLocked(false);
                                                } finally {
                                                }
                                            }
                                            ActivityManagerService.resetPriorityAfterLockedSection();
                                            return;
                                        case 74:
                                            ActivityManagerService.this.mBroadcastEventListeners.forEach(new Consumer() { // from class: com.android.server.am.ActivityManagerService$MainHandler$$ExternalSyntheticLambda1
                                                @Override // java.util.function.Consumer
                                                public final void accept(Object obj) {
                                                    ActivityManagerService.MainHandler.lambda$handleMessage$1(message, (ActivityManagerInternal.BroadcastEventListener) obj);
                                                }
                                            });
                                            return;
                                        case 75:
                                            ActivityManagerService.this.mBindServiceEventListeners.forEach(new Consumer() { // from class: com.android.server.am.ActivityManagerService$MainHandler$$ExternalSyntheticLambda2
                                                @Override // java.util.function.Consumer
                                                public final void accept(Object obj) {
                                                    ActivityManagerService.MainHandler.lambda$handleMessage$2(message, (ActivityManagerInternal.BindServiceEventListener) obj);
                                                }
                                            });
                                            return;
                                        case 76:
                                            ActivityManagerService.this.mServices.onShortFgsTimeout((ServiceRecord) message.obj);
                                            return;
                                        case 77:
                                            ActivityManagerService.this.mServices.onShortFgsProcstateTimeout((ServiceRecord) message.obj);
                                            return;
                                        case 78:
                                            ActivityManagerService.this.mServices.onShortFgsAnrTimeout((ServiceRecord) message.obj);
                                            return;
                                        case 79:
                                            ActivityManagerService.this.mAppProfiler.mCachedAppsWatermarkData.updateCachedAppsSnapshot(((Long) message.obj).longValue());
                                            return;
                                        case 80:
                                            ActivityManagerService activityManagerService7 = ActivityManagerService.this;
                                            if (activityManagerService7.mDvfsMgr == null) {
                                                activityManagerService7.mDvfsMgr = SemDvfsManager.createInstance(activityManagerService7.mContext, "APP_LAUNCH", 21);
                                            }
                                            SemDvfsManager semDvfsManager = ActivityManagerService.this.mDvfsMgr;
                                            if (semDvfsManager != null) {
                                                semDvfsManager.acquire();
                                                return;
                                            }
                                            return;
                                        default:
                                            return;
                                    }
                            }
                    }
            }
        }

        public static /* synthetic */ void lambda$handleMessage$0(ProcessRecord processRecord) {
            IApplicationThread thread = processRecord.getThread();
            if (thread != null) {
                try {
                    thread.updateTimeZone();
                } catch (RemoteException unused) {
                    Slog.w("ActivityManager", "Failed to update time zone for: " + processRecord.info.processName);
                }
            }
        }

        /* renamed from: com.android.server.am.ActivityManagerService$MainHandler$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends Thread {
            public final /* synthetic */ ArrayList val$memInfos;

            public AnonymousClass1(ArrayList arrayList) {
                r2 = arrayList;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                ActivityManagerService.this.mAppProfiler.reportMemUsage(r2);
            }
        }

        public static /* synthetic */ void lambda$handleMessage$1(Message message, ActivityManagerInternal.BroadcastEventListener broadcastEventListener) {
            broadcastEventListener.onSendingBroadcast((String) message.obj, message.arg1);
        }

        public static /* synthetic */ void lambda$handleMessage$2(Message message, ActivityManagerInternal.BindServiceEventListener bindServiceEventListener) {
            bindServiceEventListener.onBindingService((String) message.obj, message.arg1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setSystemProcess() {
        try {
            ServiceManager.addService("activity", this, true, 21);
            ServiceManager.addService("procstats", this.mProcessStats);
            ServiceManager.addService("meminfo", new MemBinder(this), false, 2);
            ServiceManager.addService("gfxinfo", new GraphicsBinder(this));
            ServiceManager.addService("dbinfo", new DbBinder(this));
            this.mAppProfiler.setCpuInfoService();
            ServiceManager.addService("permission", new PermissionController(this));
            ServiceManager.addService("processinfo", new ProcessInfoService(this));
            ServiceManager.addService("cacheinfo", new CacheBinder(this));
            ApplicationInfo applicationInfo = this.mContext.getPackageManager().getApplicationInfo("android", 1049600);
            this.mSystemThread.installSystemApplicationInfo(applicationInfo, getClass().getClassLoader());
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    ProcessRecord newProcessRecordLocked = this.mProcessList.newProcessRecordLocked(applicationInfo, applicationInfo.processName, false, 0, false, 0, null, new HostingRecord("system"));
                    newProcessRecordLocked.setPersistent(true);
                    newProcessRecordLocked.setPid(MY_PID);
                    newProcessRecordLocked.mState.setMaxAdj(-900);
                    newProcessRecordLocked.makeActive(this.mSystemThread.getApplicationThread(), this.mProcessStats);
                    newProcessRecordLocked.mProfile.addHostingComponentType(1);
                    addPidLocked(newProcessRecordLocked);
                    updateLruProcessLocked(newProcessRecordLocked, false, null);
                    updateOomAdjLocked(14);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            this.mAppOpsService.startWatchingMode(63, null, new IAppOpsCallback.Stub() { // from class: com.android.server.am.ActivityManagerService.4
                public AnonymousClass4() {
                }

                public void opChanged(int i, int i2, String str) {
                    if (i != 63 || str == null || ActivityManagerService.this.getAppOpsManager().checkOpNoThrow(i, i2, str) == 0) {
                        return;
                    }
                    ActivityManagerService.this.runInBackgroundDisabled(i2);
                }
            });
            this.mAppOpsService.startWatchingActive(new int[]{26}, new IAppOpsActiveCallback.Stub() { // from class: com.android.server.am.ActivityManagerService.5
                public AnonymousClass5() {
                }

                public void opActiveChanged(int i, int i2, String str, String str2, boolean z, int i3, int i4) {
                    ActivityManagerService.this.cameraActiveChanged(i2, z);
                }
            });
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find android system package", e);
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 extends IAppOpsCallback.Stub {
        public AnonymousClass4() {
        }

        public void opChanged(int i, int i2, String str) {
            if (i != 63 || str == null || ActivityManagerService.this.getAppOpsManager().checkOpNoThrow(i, i2, str) == 0) {
                return;
            }
            ActivityManagerService.this.runInBackgroundDisabled(i2);
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$5 */
    /* loaded from: classes.dex */
    public class AnonymousClass5 extends IAppOpsActiveCallback.Stub {
        public AnonymousClass5() {
        }

        public void opActiveChanged(int i, int i2, String str, String str2, boolean z, int i3, int i4) {
            ActivityManagerService.this.cameraActiveChanged(i2, z);
        }
    }

    public void setWindowManager(WindowManagerService windowManagerService) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mWindowManager = windowManagerService;
                this.mWmInternal = (WindowManagerInternal) LocalServices.getService(WindowManagerInternal.class);
                this.mActivityTaskManager.setWindowManager(windowManagerService);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void setUsageStatsManager(UsageStatsManagerInternal usageStatsManagerInternal) {
        this.mUsageStatsService = usageStatsManagerInternal;
        this.mActivityTaskManager.setUsageStatsManager(usageStatsManagerInternal);
    }

    public void setContentCaptureManager(ContentCaptureManagerInternal contentCaptureManagerInternal) {
        this.mContentCaptureService = contentCaptureManagerInternal;
    }

    public void startObservingNativeCrashes() {
        new NativeCrashListener(this).start();
    }

    public void setAppOpsPolicy(AppOpsManagerInternal.CheckOpsDelegate checkOpsDelegate) {
        this.mAppOpsService.setAppOpsPolicy(checkOpsDelegate);
    }

    public IAppOpsService getAppOpsService() {
        return this.mAppOpsService;
    }

    public final void setVoiceInteractionManagerProvider(ActivityManagerInternal.VoiceInteractionManagerProvider voiceInteractionManagerProvider) {
        this.mVoiceInteractionManagerProvider = voiceInteractionManagerProvider;
    }

    /* loaded from: classes.dex */
    public class MemBinder extends Binder {
        public ActivityManagerService mActivityManagerService;
        public final PriorityDump.PriorityDumper mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.am.ActivityManagerService.MemBinder.1
            public AnonymousClass1() {
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpHigh(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                dump(fileDescriptor, printWriter, new String[]{"-S", "-d"}, z);
                dump(fileDescriptor, printWriter, new String[]{"-a", "--package"}, z);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                MemBinder.this.mActivityManagerService.dumpApplicationMemoryUsage(fileDescriptor, printWriter, "  ", strArr, false, null, z);
            }
        };

        /* renamed from: com.android.server.am.ActivityManagerService$MemBinder$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements PriorityDump.PriorityDumper {
            public AnonymousClass1() {
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpHigh(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                dump(fileDescriptor, printWriter, new String[]{"-S", "-d"}, z);
                dump(fileDescriptor, printWriter, new String[]{"-a", "--package"}, z);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                MemBinder.this.mActivityManagerService.dumpApplicationMemoryUsage(fileDescriptor, printWriter, "  ", strArr, false, null, z);
            }
        }

        public MemBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            try {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                if (DumpUtils.checkDumpAndUsageStatsPermission(this.mActivityManagerService.mContext, "meminfo", printWriter)) {
                    PriorityDump.dump(this.mPriorityDumper, fileDescriptor, printWriter, strArr);
                }
            } finally {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
            }
        }
    }

    /* loaded from: classes.dex */
    public class GraphicsBinder extends Binder {
        public ActivityManagerService mActivityManagerService;

        public GraphicsBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            try {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                if (DumpUtils.checkDumpAndUsageStatsPermission(this.mActivityManagerService.mContext, "gfxinfo", printWriter)) {
                    this.mActivityManagerService.dumpGraphicsHardwareUsage(fileDescriptor, printWriter, strArr);
                }
            } finally {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
            }
        }
    }

    /* loaded from: classes.dex */
    public class DbBinder extends Binder {
        public ActivityManagerService mActivityManagerService;

        public DbBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            try {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                if (DumpUtils.checkDumpAndUsageStatsPermission(this.mActivityManagerService.mContext, "dbinfo", printWriter)) {
                    this.mActivityManagerService.dumpDbInfo(fileDescriptor, printWriter, strArr);
                }
            } finally {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
            }
        }
    }

    /* loaded from: classes.dex */
    public class CacheBinder extends Binder {
        public ActivityManagerService mActivityManagerService;

        public CacheBinder(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            try {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                if (DumpUtils.checkDumpAndUsageStatsPermission(this.mActivityManagerService.mContext, "cacheinfo", printWriter)) {
                    this.mActivityManagerService.dumpBinderCacheContents(fileDescriptor, printWriter, strArr);
                }
            } finally {
                this.mActivityManagerService.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class Lifecycle extends SystemService {
        public static ActivityTaskManagerService sAtm;
        public final ActivityManagerService mService;

        public Lifecycle(Context context) {
            super(context);
            this.mService = new ActivityManagerService(context, sAtm);
        }

        public static ActivityManagerService startService(SystemServiceManager systemServiceManager, ActivityTaskManagerService activityTaskManagerService) {
            sAtm = activityTaskManagerService;
            return ((Lifecycle) systemServiceManager.startService(Lifecycle.class)).getService();
        }

        @Override // com.android.server.SystemService
        public void onStart() {
            this.mService.start();
        }

        @Override // com.android.server.SystemService
        public void onBootPhase(int i) {
            ActivityManagerService activityManagerService = this.mService;
            activityManagerService.mBootPhase = i;
            if (i == 500) {
                activityManagerService.mBatteryStatsService.systemServicesReady();
                this.mService.mServices.systemServicesReady();
            } else if (i == 550) {
                activityManagerService.startBroadcastObservers();
            } else if (i == 600) {
                activityManagerService.mPackageWatchdog.onPackagesReady();
            }
        }

        @Override // com.android.server.SystemService
        public void onUserStopped(SystemService.TargetUser targetUser) {
            this.mService.mBatteryStatsService.onCleanupUser(targetUser.getUserIdentifier());
        }

        public ActivityManagerService getService() {
            return this.mService;
        }
    }

    public final void maybeLogUserspaceRebootEvent() {
        int currentUserId;
        if (UserspaceRebootLogger.shouldLogUserspaceRebootEvent() && (currentUserId = this.mUserController.getCurrentUserId()) == 0) {
            UserspaceRebootLogger.logEventAsync(StorageManager.isUserKeyUnlocked(currentUserId), BackgroundThread.getExecutor());
        }
    }

    /* loaded from: classes.dex */
    public class HiddenApiSettings extends ContentObserver implements DeviceConfig.OnPropertiesChangedListener {
        public boolean mBlacklistDisabled;
        public final Context mContext;
        public List mExemptions;
        public String mExemptionsStr;
        public int mLogSampleRate;
        public int mPolicy;
        public int mStatslogSampleRate;

        public void onPropertiesChanged(DeviceConfig.Properties properties) {
            int i = properties.getInt("hidden_api_access_log_sampling_rate", 0);
            if (i < 0 || i > 65536) {
                i = -1;
            }
            if (i != -1 && i != this.mLogSampleRate) {
                this.mLogSampleRate = i;
                Process.ZYGOTE_PROCESS.setHiddenApiAccessLogSampleRate(i);
            }
            int i2 = properties.getInt("hidden_api_access_statslog_sampling_rate", 0);
            if (i2 < 0 || i2 > 65536) {
                i2 = -1;
            }
            if (i2 == -1 || i2 == this.mStatslogSampleRate) {
                return;
            }
            this.mStatslogSampleRate = i2;
            Process.ZYGOTE_PROCESS.setHiddenApiAccessStatslogSampleRate(i2);
        }

        public HiddenApiSettings(Handler handler, Context context) {
            super(handler);
            this.mExemptions = Collections.emptyList();
            this.mLogSampleRate = -1;
            this.mStatslogSampleRate = -1;
            this.mPolicy = -1;
            this.mContext = context;
        }

        public void registerObserver() {
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("hidden_api_blacklist_exemptions"), false, this);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("hidden_api_policy"), false, this);
            DeviceConfig.addOnPropertiesChangedListener("app_compat", this.mContext.getMainExecutor(), this);
            update();
        }

        public final void update() {
            List asList;
            String string = Settings.Global.getString(this.mContext.getContentResolver(), "hidden_api_blacklist_exemptions");
            if (!TextUtils.equals(string, this.mExemptionsStr)) {
                this.mExemptionsStr = string;
                if ("*".equals(string)) {
                    this.mBlacklistDisabled = true;
                    this.mExemptions = Collections.emptyList();
                } else {
                    this.mBlacklistDisabled = false;
                    if (TextUtils.isEmpty(string)) {
                        asList = Collections.emptyList();
                    } else {
                        asList = Arrays.asList(string.split(","));
                    }
                    this.mExemptions = asList;
                }
                if (!Process.ZYGOTE_PROCESS.setApiDenylistExemptions(this.mExemptions)) {
                    Slog.e("ActivityManager", "Failed to set API blacklist exemptions!");
                    this.mExemptions = Collections.emptyList();
                }
            }
            this.mPolicy = getValidEnforcementPolicy("hidden_api_policy");
        }

        public final int getValidEnforcementPolicy(String str) {
            int i = Settings.Global.getInt(this.mContext.getContentResolver(), str, -1);
            if (ApplicationInfo.isValidHiddenApiEnforcementPolicy(i)) {
                return i;
            }
            return -1;
        }

        public boolean isDisabled() {
            return this.mBlacklistDisabled;
        }

        public int getPolicy() {
            return this.mPolicy;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            update();
        }
    }

    public AppOpsManager getAppOpsManager() {
        if (this.mAppOpsManager == null) {
            this.mAppOpsManager = (AppOpsManager) this.mContext.getSystemService(AppOpsManager.class);
        }
        return this.mAppOpsManager;
    }

    public ActivityManagerService(Injector injector, ServiceThread serviceThread) {
        this(injector, serviceThread, null);
    }

    public ActivityManagerService(Injector injector, ServiceThread serviceThread, UserController userController) {
        this.isNowAppLaunching = false;
        this.mInstrumentationReporter = new InstrumentationReporter();
        this.mActiveInstrumentation = new ArrayList();
        this.mOomAdjProfiler = new OomAdjProfiler();
        this.mGlobalLock = this;
        this.mProcLock = new ActivityManagerProcLock();
        this.mStrictModeCallbacks = new SparseArray();
        this.mApplicationPolicy = null;
        this.mRestrictionPolicy = null;
        this.mPreviousPackage = "";
        this.mCurrentPackage = "";
        this.mPreviousUserId = 0;
        this.mProcessCpusetController = null;
        this.mKillPolicyManager = null;
        this.currentLauncherName = null;
        this.mProcessCpuTracker = new ProcessCpuTracker(false);
        this.mDeviceOwnerUid = -1;
        this.mCompanionAppUidsMap = new ArrayMap();
        this.mProfileOwnerUids = null;
        this.mDeliveryGroupPolicyIgnoredActions = new ArraySet();
        this.mActiveCameraUids = new IntArray(4);
        this.mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.am.ActivityManagerService.1
            public AnonymousClass1() {
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpCritical(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                if (z) {
                    return;
                }
                ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"activities"}, z);
                ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"service", "all-platform-critical"}, z);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpNormal(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"-a", "--normal-priority"}, z);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                ActivityManagerService.this.doDump(fileDescriptor, printWriter, strArr, z);
            }
        };
        this.mDvfsMgr = null;
        this.mBackgroundAppIdAllowlist = new int[]{1002};
        this.mPidsSelfLocked = new PidMap();
        this.mImportantProcesses = new SparseArray();
        this.mProcessesOnHold = new ArrayList();
        this.mPersistentStartingProcesses = new ArrayList();
        this.mActivityLaunchObserver = new ActivityMetricsLaunchObserver() { // from class: com.android.server.am.ActivityManagerService.2
            public AnonymousClass2() {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunched(long j, ComponentName componentName, int i) {
                ActivityManagerService.this.mAppProfiler.onActivityLaunched();
                ActivityManagerService.this.setAppLaunchFlag(true);
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunchCancelled(long j) {
                ActivityManagerService.this.setAppLaunchFlag(false);
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunchFinished(long j, ComponentName componentName, long j2) {
                ActivityManagerService.this.setAppLaunchFlag(false);
            }
        };
        this.mBinderTransactionTrackingEnabled = false;
        this.mAlreadyLoggedViolatedStacks = new HashSet();
        this.mRegisteredReceivers = new HashMap();
        this.mReceiverResolver = new IntentResolver() { // from class: com.android.server.am.ActivityManagerService.3
            @Override // com.android.server.IntentResolver
            public IntentFilter getIntentFilter(BroadcastFilter broadcastFilter) {
                return broadcastFilter;
            }

            public AnonymousClass3() {
            }

            @Override // com.android.server.IntentResolver
            public boolean allowFilterResult(BroadcastFilter broadcastFilter, List list) {
                IBinder asBinder = broadcastFilter.receiverList.receiver.asBinder();
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (((BroadcastFilter) list.get(size)).receiverList.receiver.asBinder() == asBinder) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.android.server.IntentResolver
            public BroadcastFilter newResult(Computer computer, BroadcastFilter broadcastFilter, int i, int i2, long j) {
                int i3;
                if (i2 == -1 || (i3 = broadcastFilter.owningUserId) == -1 || i2 == i3) {
                    return (BroadcastFilter) super.newResult(computer, (Object) broadcastFilter, i, i2, j);
                }
                return null;
            }

            @Override // com.android.server.IntentResolver
            public BroadcastFilter[] newArray(int i) {
                return new BroadcastFilter[i];
            }

            @Override // com.android.server.IntentResolver
            public boolean isPackageForFilter(String str, BroadcastFilter broadcastFilter) {
                return str.equals(broadcastFilter.packageName);
            }
        };
        this.mStickyBroadcasts = new SparseArray();
        this.mAssociations = new SparseArray();
        this.mBackupTargets = new SparseArray();
        this.mDeviceIdleAllowlist = new int[0];
        this.mDeviceIdleExceptIdleAllowlist = new int[0];
        this.mDeviceIdleTempAllowlist = new int[0];
        this.mPendingTempAllowlist = new PendingTempAllowlists(this);
        this.mFgsStartTempAllowList = new FgsTempAllowList();
        this.mFgsWhileInUseTempAllowList = new FgsTempAllowList();
        this.mProcessesReady = false;
        this.mSystemReady = false;
        this.mOnBattery = false;
        this.mBooting = false;
        this.mCallFinishBooting = false;
        this.mBootAnimationComplete = false;
        this.mWakefulness = new AtomicInteger(1);
        this.mLastIdleTime = SystemClock.uptimeMillis();
        this.mCurResumedPackage = null;
        this.mCurResumedUid = -1;
        this.mCurResumedAppLock = new Object();
        this.mForegroundPackages = new ProcessMap();
        this.mForegroundServiceStateListeners = new ArrayList();
        this.mBroadcastEventListeners = new CopyOnWriteArrayList();
        this.mBindServiceEventListeners = new CopyOnWriteArrayList();
        this.mDebugApp = null;
        this.mWaitForDebugger = false;
        this.mSuspendUponWait = false;
        this.mDebugTransient = false;
        this.mOrigDebugApp = null;
        this.mOrigWaitForDebugger = false;
        this.mAlwaysFinishActivities = false;
        this.mTrackAllocationApp = null;
        this.mNativeDebuggingApp = null;
        this.mOomAdjObserverLock = new Object();
        this.mAnrHelper = new AnrHelper(this);
        this.mBooted = false;
        this.mDeterministicUidIdle = false;
        this.mUidNetworkBlockedReasons = new SparseIntArray();
        this.mMediaProjectionTokenMap = new SparseArray();
        this.mDynamicHiddenApp = null;
        this.mCustomEFKManager = null;
        this.mLastBinderHeavyHitterAutoSamplerStart = 0L;
        this.mPendingSches = new HashMap();
        this.mGetBackgroundStartPrivilegesFunctor = new GetBackgroundStartPrivilegesFunctor();
        this.mUidFrozenStateChangedCallbackList = new RemoteCallbackList();
        this.mTransitionPlayerPid = -1;
        this.mDropboxRateLimiter = new DropboxRateLimiter();
        this.mPendingCmdBR = new ArrayList();
        this.mInjector = injector;
        Context context = injector.getContext();
        this.mContext = context;
        this.mUiContext = null;
        this.mAppErrors = null;
        this.mPackageWatchdog = null;
        this.mAppOpsService = injector.getAppOpsService(null, null, null);
        this.mBatteryStatsService = injector.getBatteryStatsService();
        MainHandler mainHandler = new MainHandler(serviceThread.getLooper());
        this.mHandler = mainHandler;
        this.mHandlerThread = serviceThread;
        this.mConstants = new ActivityManagerConstants(context, this, mainHandler);
        ActiveUids activeUids = new ActiveUids(this, false);
        this.mPlatformCompat = null;
        ProcessList processList = injector.getProcessList(this);
        this.mProcessList = processList;
        processList.init(this, activeUids, null);
        this.mAppProfiler = new AppProfiler(this, BackgroundThread.getHandler().getLooper(), null);
        this.mPhantomProcessList = new PhantomProcessList(this);
        this.mOomAdjuster = new OomAdjuster(this, processList, activeUids, serviceThread);
        this.mIntentFirewall = null;
        this.mProcessStats = new ProcessStatsService(this, context.getCacheDir());
        this.mCpHelper = new ContentProviderHelper(this, false);
        this.mServices = injector.getActiveServices(this);
        this.mSystemThread = null;
        Handler uiHandler = injector.getUiHandler(null);
        this.mUiHandler = uiHandler;
        this.mUidObserverController = new UidObserverController(uiHandler);
        userController = userController == null ? new UserController(this) : userController;
        this.mUserController = userController;
        injector.mUserController = userController;
        this.mPendingIntentController = new PendingIntentController(serviceThread.getLooper(), userController, this.mConstants);
        this.mAppRestrictionController = new AppRestrictionController(context, this);
        this.mProcStartHandlerThread = null;
        this.mProcStartHandler = null;
        this.mHiddenApiBlacklist = null;
        this.mFactoryTest = 0;
        this.mUgmInternal = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);
        this.mInternal = new LocalService();
        this.mPendingStartActivityUids = new PendingStartActivityUids();
        this.mUseFifoUiScheduling = false;
        this.mEnableOffloadQueue = false;
        this.mEnableModernQueue = false;
        this.mBroadcastQueues = new BroadcastQueue[0];
        this.mComponentAliasResolver = new ComponentAliasResolver(this);
        this.mExt = new ActivityManagerServiceExt(context, this);
        this.mDssController = null;
        this.mAbnormalUsageService = null;
    }

    public ActivityManagerService(Context context, ActivityTaskManagerService activityTaskManagerService) {
        ProcessList processList;
        Handler handler;
        MainHandler mainHandler;
        this.isNowAppLaunching = false;
        this.mInstrumentationReporter = new InstrumentationReporter();
        this.mActiveInstrumentation = new ArrayList();
        this.mOomAdjProfiler = new OomAdjProfiler();
        this.mGlobalLock = this;
        this.mProcLock = new ActivityManagerProcLock();
        this.mStrictModeCallbacks = new SparseArray();
        this.mApplicationPolicy = null;
        this.mRestrictionPolicy = null;
        this.mPreviousPackage = "";
        this.mCurrentPackage = "";
        this.mPreviousUserId = 0;
        this.mProcessCpusetController = null;
        this.mKillPolicyManager = null;
        this.currentLauncherName = null;
        this.mProcessCpuTracker = new ProcessCpuTracker(false);
        this.mDeviceOwnerUid = -1;
        this.mCompanionAppUidsMap = new ArrayMap();
        this.mProfileOwnerUids = null;
        this.mDeliveryGroupPolicyIgnoredActions = new ArraySet();
        this.mActiveCameraUids = new IntArray(4);
        this.mPriorityDumper = new PriorityDump.PriorityDumper() { // from class: com.android.server.am.ActivityManagerService.1
            public AnonymousClass1() {
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpCritical(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                if (z) {
                    return;
                }
                ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"activities"}, z);
                ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"service", "all-platform-critical"}, z);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dumpNormal(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                ActivityManagerService.this.doDump(fileDescriptor, printWriter, new String[]{"-a", "--normal-priority"}, z);
            }

            @Override // com.android.server.utils.PriorityDump.PriorityDumper
            public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, boolean z) {
                ActivityManagerService.this.doDump(fileDescriptor, printWriter, strArr, z);
            }
        };
        this.mDvfsMgr = null;
        this.mBackgroundAppIdAllowlist = new int[]{1002};
        this.mPidsSelfLocked = new PidMap();
        this.mImportantProcesses = new SparseArray();
        this.mProcessesOnHold = new ArrayList();
        this.mPersistentStartingProcesses = new ArrayList();
        this.mActivityLaunchObserver = new ActivityMetricsLaunchObserver() { // from class: com.android.server.am.ActivityManagerService.2
            public AnonymousClass2() {
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunched(long j, ComponentName componentName, int i) {
                ActivityManagerService.this.mAppProfiler.onActivityLaunched();
                ActivityManagerService.this.setAppLaunchFlag(true);
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunchCancelled(long j) {
                ActivityManagerService.this.setAppLaunchFlag(false);
            }

            @Override // com.android.server.wm.ActivityMetricsLaunchObserver
            public void onActivityLaunchFinished(long j, ComponentName componentName, long j2) {
                ActivityManagerService.this.setAppLaunchFlag(false);
            }
        };
        this.mBinderTransactionTrackingEnabled = false;
        this.mAlreadyLoggedViolatedStacks = new HashSet();
        this.mRegisteredReceivers = new HashMap();
        this.mReceiverResolver = new IntentResolver() { // from class: com.android.server.am.ActivityManagerService.3
            @Override // com.android.server.IntentResolver
            public IntentFilter getIntentFilter(BroadcastFilter broadcastFilter) {
                return broadcastFilter;
            }

            public AnonymousClass3() {
            }

            @Override // com.android.server.IntentResolver
            public boolean allowFilterResult(BroadcastFilter broadcastFilter, List list) {
                IBinder asBinder = broadcastFilter.receiverList.receiver.asBinder();
                for (int size = list.size() - 1; size >= 0; size--) {
                    if (((BroadcastFilter) list.get(size)).receiverList.receiver.asBinder() == asBinder) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.android.server.IntentResolver
            public BroadcastFilter newResult(Computer computer, BroadcastFilter broadcastFilter, int i, int i2, long j) {
                int i3;
                if (i2 == -1 || (i3 = broadcastFilter.owningUserId) == -1 || i2 == i3) {
                    return (BroadcastFilter) super.newResult(computer, (Object) broadcastFilter, i, i2, j);
                }
                return null;
            }

            @Override // com.android.server.IntentResolver
            public BroadcastFilter[] newArray(int i) {
                return new BroadcastFilter[i];
            }

            @Override // com.android.server.IntentResolver
            public boolean isPackageForFilter(String str, BroadcastFilter broadcastFilter) {
                return str.equals(broadcastFilter.packageName);
            }
        };
        this.mStickyBroadcasts = new SparseArray();
        this.mAssociations = new SparseArray();
        this.mBackupTargets = new SparseArray();
        this.mDeviceIdleAllowlist = new int[0];
        this.mDeviceIdleExceptIdleAllowlist = new int[0];
        this.mDeviceIdleTempAllowlist = new int[0];
        this.mPendingTempAllowlist = new PendingTempAllowlists(this);
        this.mFgsStartTempAllowList = new FgsTempAllowList();
        this.mFgsWhileInUseTempAllowList = new FgsTempAllowList();
        this.mProcessesReady = false;
        this.mSystemReady = false;
        this.mOnBattery = false;
        this.mBooting = false;
        this.mCallFinishBooting = false;
        this.mBootAnimationComplete = false;
        this.mWakefulness = new AtomicInteger(1);
        this.mLastIdleTime = SystemClock.uptimeMillis();
        this.mCurResumedPackage = null;
        this.mCurResumedUid = -1;
        this.mCurResumedAppLock = new Object();
        this.mForegroundPackages = new ProcessMap();
        this.mForegroundServiceStateListeners = new ArrayList();
        this.mBroadcastEventListeners = new CopyOnWriteArrayList();
        this.mBindServiceEventListeners = new CopyOnWriteArrayList();
        this.mDebugApp = null;
        this.mWaitForDebugger = false;
        this.mSuspendUponWait = false;
        this.mDebugTransient = false;
        this.mOrigDebugApp = null;
        this.mOrigWaitForDebugger = false;
        this.mAlwaysFinishActivities = false;
        this.mTrackAllocationApp = null;
        this.mNativeDebuggingApp = null;
        this.mOomAdjObserverLock = new Object();
        this.mAnrHelper = new AnrHelper(this);
        this.mBooted = false;
        this.mDeterministicUidIdle = false;
        this.mUidNetworkBlockedReasons = new SparseIntArray();
        this.mMediaProjectionTokenMap = new SparseArray();
        this.mDynamicHiddenApp = null;
        this.mCustomEFKManager = null;
        this.mLastBinderHeavyHitterAutoSamplerStart = 0L;
        this.mPendingSches = new HashMap();
        this.mGetBackgroundStartPrivilegesFunctor = new GetBackgroundStartPrivilegesFunctor();
        this.mUidFrozenStateChangedCallbackList = new RemoteCallbackList();
        this.mTransitionPlayerPid = -1;
        this.mDropboxRateLimiter = new DropboxRateLimiter();
        this.mPendingCmdBR = new ArrayList();
        LockGuard.installLock(this, 7);
        Injector injector = new Injector(context);
        this.mInjector = injector;
        this.mContext = context;
        this.mFactoryTest = FactoryTest.getMode();
        ActivityThread currentActivityThread = ActivityThread.currentActivityThread();
        this.mSystemThread = currentActivityThread;
        ContextImpl systemUiContext = currentActivityThread.getSystemUiContext();
        this.mUiContext = systemUiContext;
        Slog.i("ActivityManager", "Memory class: " + ActivityManager.staticGetMemoryClass());
        ServiceThread serviceThread = new ServiceThread("ActivityManager", -2, false);
        this.mHandlerThread = serviceThread;
        serviceThread.start();
        if (CoreRune.SYSPERF_BOOST_OPT) {
            Process.setThreadGroup(serviceThread.getThreadId(), 10);
        }
        MainHandler mainHandler2 = new MainHandler(serviceThread.getLooper());
        this.mHandler = mainHandler2;
        Handler uiHandler = injector.getUiHandler(this);
        this.mUiHandler = uiHandler;
        ServiceThread serviceThread2 = new ServiceThread("ActivityManager:procStart", -2, false);
        this.mProcStartHandlerThread = serviceThread2;
        serviceThread2.start();
        ProcessList.ProcStartHandler procStartHandler = new ProcessList.ProcStartHandler(this, serviceThread2.getLooper());
        this.mProcStartHandler = procStartHandler;
        if (CoreRune.SYSPERF_BOOST_OPT) {
            Process.setThreadGroup(serviceThread2.getThreadId(), 10);
        }
        Watchdog.getInstance().addThread(procStartHandler);
        this.mConstants = new ActivityManagerConstants(context, this, mainHandler2);
        ActiveUids activeUids = new ActiveUids(this, true);
        PlatformCompat platformCompat = (PlatformCompat) ServiceManager.getService("platform_compat");
        this.mPlatformCompat = platformCompat;
        ProcessList processList2 = injector.getProcessList(this);
        this.mProcessList = processList2;
        processList2.init(this, activeUids, platformCompat);
        this.mAppProfiler = new AppProfiler(this, BackgroundThread.getHandler().getLooper(), new LowMemDetector(this));
        this.mPhantomProcessList = new PhantomProcessList(this);
        this.mOomAdjuster = new OomAdjuster(this, processList2, activeUids);
        BroadcastConstants broadcastConstants = new BroadcastConstants("bcast_fg_constants");
        broadcastConstants.TIMEOUT = BROADCAST_FG_TIMEOUT;
        BroadcastConstants broadcastConstants2 = new BroadcastConstants("bcast_bg_constants");
        int i = BROADCAST_BG_TIMEOUT;
        broadcastConstants2.TIMEOUT = i;
        BroadcastConstants broadcastConstants3 = new BroadcastConstants("bcast_offload_constants");
        broadcastConstants3.TIMEOUT = i;
        broadcastConstants3.SLOW_TIME = 2147483647L;
        this.mEnableOffloadQueue = SystemProperties.getBoolean("persist.device_config.activity_manager_native_boot.offload_queue_enabled", true);
        boolean z = broadcastConstants.MODERN_QUEUE_ENABLED;
        this.mEnableModernQueue = z;
        if (z) {
            this.mBroadcastQueues = r0;
            BroadcastQueue[] broadcastQueueArr = {new BroadcastQueueModernImpl(this, mainHandler2, broadcastConstants, broadcastConstants2)};
            processList = processList2;
            handler = uiHandler;
            mainHandler = mainHandler2;
        } else {
            this.mBroadcastQueues = r1;
            processList = processList2;
            handler = uiHandler;
            mainHandler = mainHandler2;
            BroadcastQueue[] broadcastQueueArr2 = {new BroadcastQueueImpl(this, mainHandler2, "foreground", broadcastConstants, false, 2), new BroadcastQueueImpl(this, mainHandler, "background", broadcastConstants2, true, 0), new BroadcastQueueImpl(this, mainHandler, "offload_bg", broadcastConstants3, true, 0), new BroadcastQueueImpl(this, mainHandler, "offload_fg", broadcastConstants, true, 0)};
        }
        this.mServices = new ActiveServices(this);
        this.mCpHelper = new ContentProviderHelper(this, true);
        PackageWatchdog packageWatchdog = PackageWatchdog.getInstance(systemUiContext);
        this.mPackageWatchdog = packageWatchdog;
        this.mAppErrors = new AppErrors(systemUiContext, this, packageWatchdog);
        this.mUidObserverController = new UidObserverController(handler);
        File ensureSystemDir = SystemServiceManager.ensureSystemDir();
        this.mDssController = DssController.getService();
        this.mAbnormalUsageService = new AbnormalUsageService(this);
        BatteryStatsService create = BatteryStatsService.create(context, ensureSystemDir, BackgroundThread.getHandler(), this);
        this.mBatteryStatsService = create;
        this.mOnBattery = create.getActiveStatistics().getIsOnBattery();
        this.mOomAdjProfiler.batteryPowerChanged(this.mOnBattery);
        this.mProcessStats = new ProcessStatsService(this, new File(ensureSystemDir, "procstats"));
        File file = new File(ensureSystemDir, "appops_accesses.xml");
        File file2 = new File(ensureSystemDir, "appops.xml");
        MainHandler mainHandler3 = mainHandler;
        this.mAppOpsService = injector.getAppOpsService(file, file2, mainHandler3);
        this.mUgmInternal = (UriGrantsManagerInternal) LocalServices.getService(UriGrantsManagerInternal.class);
        UserController userController = new UserController(this);
        this.mUserController = userController;
        injector.mUserController = userController;
        PendingIntentController pendingIntentController = new PendingIntentController(serviceThread.getLooper(), userController, this.mConstants);
        this.mPendingIntentController = pendingIntentController;
        this.mAppRestrictionController = new AppRestrictionController(context, this);
        this.mUseFifoUiScheduling = SystemProperties.getInt("sys.use_fifo_ui", 0) != 0;
        this.mTrackingAssociations = "1".equals(SystemProperties.get("debug.track-associations"));
        IntentFirewall intentFirewall = new IntentFirewall(new IntentFirewallInterface(), mainHandler3);
        this.mIntentFirewall = intentFirewall;
        this.mActivityTaskManager = activityTaskManagerService;
        activityTaskManagerService.initialize(intentFirewall, pendingIntentController, DisplayThread.get().getLooper());
        this.mAtmInternal = (ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class);
        this.mHiddenApiBlacklist = new HiddenApiSettings(mainHandler3, context);
        Watchdog.getInstance().addMonitor(this);
        Watchdog.getInstance().addThread(mainHandler3);
        MARsPolicyManager.getInstance().init(this, context);
        BaseRestrictionMgr.getInstance().init(context);
        DynamicHiddenApp dynamicHiddenApp = DynamicHiddenApp.getInstance();
        this.mDynamicHiddenApp = dynamicHiddenApp;
        dynamicHiddenApp.initDynamicHiddenApp(this, processList, this.mConstants);
        this.mCustomEFKManager = this.mDynamicHiddenApp.getCustomEFKManagerInstance();
        updateOomAdjLocked(14);
        try {
            Process.setThreadGroupAndCpuset(BackgroundThread.get().getThreadId(), 2);
            Process.setThreadGroupAndCpuset(this.mOomAdjuster.mCachedAppOptimizer.mCachedAppOptimizerThread.getThreadId(), 2);
        } catch (Exception unused) {
            Slog.w("ActivityManager", "Setting background thread cpuset failed");
        }
        this.mInternal = new LocalService();
        this.mPendingStartActivityUids = new PendingStartActivityUids();
        this.mTraceErrorLogger = new TraceErrorLogger();
        this.mComponentAliasResolver = new ComponentAliasResolver(this);
        ActivityManagerServiceExt activityManagerServiceExt = new ActivityManagerServiceExt(this.mContext, this);
        this.mExt = activityManagerServiceExt;
        activityManagerServiceExt.setAtmService(this.mActivityTaskManager);
        this.currentLauncherName = KnoxCustomManagerService.LAUNCHER_PACKAGE;
        Slog.d("ActivityManager_kpm", "Current Launcher: " + this.currentLauncherName);
        KillPolicyManager killPolicyManager = KillPolicyManager.getInstance();
        this.mKillPolicyManager = killPolicyManager;
        killPolicyManager.initKillPolicyManager(this, this.mContext, this.mConstants);
    }

    public void setSystemServiceManager(SystemServiceManager systemServiceManager) {
        this.mSystemServiceManager = systemServiceManager;
    }

    public void setInstaller(Installer installer) {
        this.mInstaller = installer;
    }

    public final void start() {
        this.mBatteryStatsService.publish();
        this.mAppOpsService.publish();
        this.mProcessStats.publish();
        Slog.d("AppOps", "AppOpsService published");
        LocalServices.addService(ActivityManagerInternal.class, this.mInternal);
        LocalManagerRegistry.addManager(ActivityManagerLocal.class, this.mInternal);
        this.mActivityTaskManager.onActivityManagerInternalAdded();
        this.mPendingIntentController.onActivityManagerInternalAdded();
        this.mAppProfiler.onActivityManagerInternalAdded();
        CriticalEventLog.init();
    }

    public void initPowerManagement() {
        this.mActivityTaskManager.onInitPowerManagement();
        this.mBatteryStatsService.initPowerManagement();
        this.mLocalPowerManager = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
    }

    public final ArraySet getBackgroundLaunchBroadcasts() {
        if (this.mBackgroundLaunchBroadcasts == null) {
            this.mBackgroundLaunchBroadcasts = SystemConfig.getInstance().getAllowImplicitBroadcasts();
        }
        return this.mBackgroundLaunchBroadcasts;
    }

    public void requireAllowedAssociationsLocked(String str) {
        ensureAllowedAssociations();
        if (this.mAllowedAssociations.get(str) == null) {
            this.mAllowedAssociations.put(str, new PackageAssociationInfo(str, new ArraySet(), false));
        }
    }

    public boolean validateAssociationAllowedLocked(String str, int i, String str2, int i2) {
        ensureAllowedAssociations();
        if (i != i2 && UserHandle.getAppId(i) != 1000 && UserHandle.getAppId(i2) != 1000) {
            PackageAssociationInfo packageAssociationInfo = (PackageAssociationInfo) this.mAllowedAssociations.get(str);
            if (packageAssociationInfo != null && !packageAssociationInfo.isPackageAssociationAllowed(str2)) {
                return false;
            }
            PackageAssociationInfo packageAssociationInfo2 = (PackageAssociationInfo) this.mAllowedAssociations.get(str2);
            if (packageAssociationInfo2 != null && !packageAssociationInfo2.isPackageAssociationAllowed(str)) {
                return false;
            }
        }
        return true;
    }

    public final void ensureAllowedAssociations() {
        boolean z;
        ApplicationInfo applicationInfo;
        if (this.mAllowedAssociations == null) {
            ArrayMap allowedAssociations = SystemConfig.getInstance().getAllowedAssociations();
            this.mAllowedAssociations = new ArrayMap(allowedAssociations.size());
            getPackageManagerInternal();
            for (int i = 0; i < allowedAssociations.size(); i++) {
                String str = (String) allowedAssociations.keyAt(i);
                ArraySet arraySet = (ArraySet) allowedAssociations.valueAt(i);
                try {
                    applicationInfo = AppGlobals.getPackageManager().getApplicationInfo(str, 131072L, 0);
                } catch (RemoteException unused) {
                }
                if (applicationInfo != null && (applicationInfo.flags & 2) != 0) {
                    z = true;
                    this.mAllowedAssociations.put(str, new PackageAssociationInfo(str, arraySet, z));
                }
                z = false;
                this.mAllowedAssociations.put(str, new PackageAssociationInfo(str, arraySet, z));
            }
        }
    }

    public final void updateAssociationForApp(ApplicationInfo applicationInfo) {
        ensureAllowedAssociations();
        PackageAssociationInfo packageAssociationInfo = (PackageAssociationInfo) this.mAllowedAssociations.get(applicationInfo.packageName);
        if (packageAssociationInfo != null) {
            packageAssociationInfo.setDebuggable((applicationInfo.flags & 2) != 0);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = false;
        if (i == 1599295570) {
            ArrayList arrayList = new ArrayList();
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    ArrayMap map = this.mProcessList.getProcessNamesLOSP().getMap();
                    int size = map.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        SparseArray sparseArray = (SparseArray) map.valueAt(i3);
                        int size2 = sparseArray.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            IApplicationThread thread = ((ProcessRecord) sparseArray.valueAt(i4)).getThread();
                            if (thread != null) {
                                arrayList.add(thread.asBinder());
                            }
                        }
                    }
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterProcLockedSection();
            int size3 = arrayList.size();
            for (int i5 = 0; i5 < size3; i5++) {
                Parcel obtain = Parcel.obtain();
                try {
                    ((IBinder) arrayList.get(i5)).transact(1599295570, obtain, null, 1);
                } catch (RemoteException unused) {
                }
                obtain.recycle();
            }
        } else {
            if (i == 9513) {
                parcel.enforceInterface("android.app.IActivityManager");
                reportDumpStarted();
                parcel2.writeNoException();
                return true;
            }
            if (i == 9516) {
                parcel.enforceInterface("android.app.IActivityManager");
                int readInt = parcel.readInt();
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                String str = "android.util.PerfLog.ACTION_BOTTLENECK_HINT";
                if ("RESOURCES".equals(readString)) {
                    str = "android.util.PerfLog.ACTION_RESOURCE_HINT";
                } else {
                    FreecessController.getInstance().enterOLAF(1000);
                    Intent intent = new Intent("com.samsung.BOTTLENECK_HINT_FOR_CHIMERA");
                    intent.setPackage("android");
                    this.mContext.sendBroadcast(intent);
                }
                Slog.d("ActivityManager", str + " onTransact() from uid = " + String.format("%d", Integer.valueOf(readInt)) + " with avg = " + String.format("%d", Integer.valueOf(readInt2)) + ", reason = " + readString + ", description = " + readString2 + ", jank = " + readInt3);
                Intent intent2 = new Intent(str);
                intent2.putExtra("avg", readInt2);
                intent2.putExtra("reason", readString);
                intent2.putExtra("description", readString2);
                intent2.putExtra("jank", readInt3);
                this.mContext.sendBroadcast(intent2);
                parcel2.writeNoException();
                MARsComponentTracker.getInstance().sendBHInfo(readInt2, readString, readString2, readInt3);
                return true;
            }
            if (i == 9903 && !USER_BUILD) {
                parcel.enforceInterface("android.app.IActivityManager");
                try {
                    z = this.mContext.getPackageManager().getApplicationInfo("com.samsung.android.game.gos", 0).enabled;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                }
                this.mDssController.addPackageData(parcel.readString(), z ? parcel.readFloat() : 1.0f);
                parcel2.writeNoException();
                return true;
            }
        }
        try {
            return super.onTransact(i, parcel, parcel2, i2);
        } catch (RuntimeException e2) {
            if (e2 instanceof SecurityException) {
                throw e2;
            }
            if (e2 instanceof IllegalArgumentException) {
                throw e2;
            }
            if (!(e2 instanceof IllegalStateException)) {
                Slog.wtf("ActivityManager", "Activity Manager Crash. UID:" + Binder.getCallingUid() + " PID:" + Binder.getCallingPid() + " TRANS:" + i, e2);
                throw e2;
            }
            throw e2;
        }
    }

    public void updateCpuStats() {
        this.mAppProfiler.updateCpuStats();
    }

    public void updateCpuStatsNow() {
        this.mAppProfiler.updateCpuStatsNow();
    }

    @Override // com.android.server.power.stats.BatteryStatsImpl.BatteryCallback
    public void batteryNeedsCpuUpdate() {
        updateCpuStatsNow();
    }

    @Override // com.android.server.power.stats.BatteryStatsImpl.BatteryCallback
    public void batteryPowerChanged(boolean z) {
        updateCpuStatsNow();
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mOnBattery = z;
                this.mOomAdjProfiler.batteryPowerChanged(z);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    @Override // com.android.server.power.stats.BatteryStatsImpl.BatteryCallback
    public void batteryStatsReset() {
        this.mOomAdjProfiler.reset();
    }

    @Override // com.android.server.power.stats.BatteryStatsImpl.BatteryCallback
    public void batterySendBroadcast(Intent intent) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                broadcastIntentLocked(null, null, null, intent, null, null, 0, null, null, null, null, null, -1, null, false, false, -1, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final ArrayMap getCommonServicesLocked(boolean z) {
        if (z) {
            if (this.mIsolatedAppBindArgs == null) {
                ArrayMap arrayMap = new ArrayMap(1);
                this.mIsolatedAppBindArgs = arrayMap;
                addServiceToMap(arrayMap, "package");
                addServiceToMap(this.mIsolatedAppBindArgs, "permissionmgr");
            }
            return this.mIsolatedAppBindArgs;
        }
        if (this.mAppBindArgs == null) {
            ArrayMap arrayMap2 = new ArrayMap();
            this.mAppBindArgs = arrayMap2;
            addServiceToMap(arrayMap2, "package");
            addServiceToMap(this.mAppBindArgs, "permissionmgr");
            addServiceToMap(this.mAppBindArgs, "window");
            addServiceToMap(this.mAppBindArgs, "alarm");
            addServiceToMap(this.mAppBindArgs, "display");
            addServiceToMap(this.mAppBindArgs, "network_management");
            addServiceToMap(this.mAppBindArgs, "connectivity");
            addServiceToMap(this.mAppBindArgs, "accessibility");
            addServiceToMap(this.mAppBindArgs, "input_method");
            addServiceToMap(this.mAppBindArgs, "input");
            addServiceToMap(this.mAppBindArgs, "graphicsstats");
            addServiceToMap(this.mAppBindArgs, "appops");
            addServiceToMap(this.mAppBindArgs, "content");
            addServiceToMap(this.mAppBindArgs, "jobscheduler");
            addServiceToMap(this.mAppBindArgs, "notification");
            addServiceToMap(this.mAppBindArgs, "vibrator");
            addServiceToMap(this.mAppBindArgs, "account");
            addServiceToMap(this.mAppBindArgs, "power");
            addServiceToMap(this.mAppBindArgs, "user");
            addServiceToMap(this.mAppBindArgs, "mount");
            addServiceToMap(this.mAppBindArgs, "platform_compat");
            addServiceToMap(this.mAppBindArgs, "activity_task");
            addServiceToMap(this.mAppBindArgs, "autofill");
            addServiceToMap(this.mAppBindArgs, "phone");
            addServiceToMap(this.mAppBindArgs, "clipboard");
            addServiceToMap(this.mAppBindArgs, "semclipboard");
            addServiceToMap(this.mAppBindArgs, "audio");
            addServiceToMap(this.mAppBindArgs, "webviewupdate");
            addServiceToMap(this.mAppBindArgs, "uimode");
            addServiceToMap(this.mAppBindArgs, "batterystats");
            addServiceToMap(this.mAppBindArgs, "batteryproperties");
            addServiceToMap(this.mAppBindArgs, "netpolicy");
        }
        return this.mAppBindArgs;
    }

    public static void addServiceToMap(ArrayMap arrayMap, String str) {
        IBinder service = ServiceManager.getService(str);
        if (service != null) {
            arrayMap.put(str, service);
        }
    }

    public void setFocusedRootTask(int i) {
        this.mActivityTaskManager.setFocusedRootTask(i);
    }

    public void registerTaskStackListener(ITaskStackListener iTaskStackListener) {
        this.mActivityTaskManager.registerTaskStackListener(iTaskStackListener);
    }

    public void unregisterTaskStackListener(ITaskStackListener iTaskStackListener) {
        this.mActivityTaskManager.unregisterTaskStackListener(iTaskStackListener);
    }

    public final void updateLruProcessLocked(ProcessRecord processRecord, boolean z, ProcessRecord processRecord2) {
        this.mProcessList.updateLruProcessLocked(processRecord, z, processRecord2);
    }

    public final void removeLruProcessLocked(ProcessRecord processRecord) {
        this.mProcessList.removeLruProcessLocked(processRecord);
    }

    public final ProcessRecord getProcessRecordLocked(String str, int i) {
        return this.mProcessList.getProcessRecordLocked(str, i);
    }

    public final ProcessMap getProcessNamesLOSP() {
        return this.mProcessList.getProcessNamesLOSP();
    }

    public void notifyPackageUse(String str, int i) {
        getPackageManagerInternal().notifyPackageUse(str, i);
    }

    public boolean startIsolatedProcess(String str, String[] strArr, String str2, String str3, int i, Runnable runnable) {
        boolean z;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ApplicationInfo applicationInfo = new ApplicationInfo();
                applicationInfo.uid = 1000;
                applicationInfo.processName = str2;
                applicationInfo.className = str;
                applicationInfo.packageName = "android";
                applicationInfo.seInfoUser = ":complete";
                applicationInfo.targetSdkVersion = Build.VERSION.SDK_INT;
                z = this.mProcessList.startProcessLocked(str2, applicationInfo, false, 0, sNullHostingRecord, 0, true, true, i, false, 0, null, str3, str, strArr, runnable) != null;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return z;
    }

    public final ProcessRecord startSdkSandboxProcessLocked(String str, ApplicationInfo applicationInfo, boolean z, int i, HostingRecord hostingRecord, int i2, int i3, String str2) {
        return this.mProcessList.startProcessLocked(str, applicationInfo, z, i, hostingRecord, i2, false, false, 0, true, i3, str2, null, null, null, null);
    }

    public final ProcessRecord startProcessLocked(String str, ApplicationInfo applicationInfo, boolean z, int i, HostingRecord hostingRecord, int i2, boolean z2, boolean z3) {
        if (hostingRecord != null && hostingRecord.getName() != null && needToBlockImsRequest(hostingRecord.getName(), UserHandle.getUserId(applicationInfo.uid))) {
            Slog.d("ActivityManager", "[IMS-AM] startProcessLocked(0) Block [" + hostingRecord.getName() + "] of non-active user [" + applicationInfo.uid + "]");
            return null;
        }
        return this.mProcessList.startProcessLocked(str, applicationInfo, z, i, hostingRecord, i2, z2, z3, 0, false, 0, null, null, null, null, null);
    }

    public final ProcessRecord startProcessLocked(String str, ApplicationInfo applicationInfo, boolean z, int i, HostingRecord hostingRecord, int i2, boolean z2, boolean z3, boolean z4, boolean z5, int i3) {
        return this.mProcessList.startProcessLocked(str, applicationInfo, z, i, hostingRecord, i2, z2, z3, 0, false, 0, null, null, null, null, null, z5, i3);
    }

    public boolean isAllowedWhileBooting(ApplicationInfo applicationInfo) {
        return (applicationInfo.flags & 8) != 0;
    }

    public void updateBatteryStats(ComponentName componentName, int i, int i2, boolean z) {
        this.mBatteryStatsService.updateBatteryStatsOnActivityUsage(componentName.getPackageName(), componentName.getShortClassName(), i, i2, z);
    }

    public void updateActivityUsageStats(ComponentName componentName, int i, int i2, IBinder iBinder, ComponentName componentName2, ActivityId activityId) {
        updateActivityUsageStats(componentName, i, i2, iBinder, componentName2, activityId, null);
    }

    public void updateActivityUsageStats(ComponentName componentName, int i, int i2, IBinder iBinder, ComponentName componentName2, ActivityId activityId, Intent intent) {
        if (i2 == 1) {
            EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance(this.mContext);
            if (enterpriseDeviceManager != null && enterpriseDeviceManager.isMdmAdminPresent()) {
                try {
                    IApplicationPolicy applicationPolicy = getApplicationPolicy();
                    this.mApplicationPolicy = applicationPolicy;
                    if (applicationPolicy != null) {
                        this.mCurrentPackage = componentName.getPackageName();
                        String str = this.mPreviousPackage;
                        if (str != null && str.length() == 0) {
                            this.mApplicationPolicy.applicationUsageAppLaunchCount(this.mCurrentPackage, i);
                        } else if (!TextUtils.isEmpty(this.mCurrentPackage) && !this.mCurrentPackage.equals(this.mPreviousPackage)) {
                            this.mApplicationPolicy.applicationUsageAppPauseTime(this.mPreviousPackage, this.mPreviousUserId);
                            this.mApplicationPolicy.applicationUsageAppLaunchCount(this.mCurrentPackage, i);
                        }
                    }
                } catch (RemoteException unused) {
                }
            }
        } else if (i2 == 2) {
            this.mPreviousPackage = componentName.getPackageName();
            this.mPreviousUserId = i;
        }
        if (this.mUsageStatsService != null) {
            this.mUsageStatsService.reportEvent(componentName, i, i2, iBinder.hashCode(), componentName2, intent);
            if (i2 == 1) {
                this.mUsageStatsService.reportEvent(componentName.getPackageName(), i, 31);
            }
        }
        ContentCaptureManagerInternal contentCaptureManagerInternal = this.mContentCaptureService;
        if (contentCaptureManagerInternal != null && (i2 == 2 || i2 == 1 || i2 == 23 || i2 == 24)) {
            contentCaptureManagerInternal.notifyActivityEvent(i, componentName, i2, activityId);
        }
        if (this.mVoiceInteractionManagerProvider == null || i2 != 24) {
            return;
        }
        this.mVoiceInteractionManagerProvider.notifyActivityDestroyed(iBinder);
    }

    public void updateForegroundServiceUsageStats(ComponentName componentName, int i, boolean z) {
        if (this.mUsageStatsService != null) {
            this.mUsageStatsService.reportEvent(componentName, i, z ? 19 : 20, 0, null);
        }
    }

    public CompatibilityInfo compatibilityInfoForPackage(ApplicationInfo applicationInfo) {
        return this.mAtmInternal.compatibilityInfoForPackage(applicationInfo);
    }

    public void enforceNotIsolatedCaller(String str) {
        if (UserHandle.isIsolated(Binder.getCallingUid())) {
            throw new SecurityException("Isolated process not allowed to call " + str);
        }
    }

    public void enforceNotIsolatedOrSdkSandboxCaller(String str) {
        enforceNotIsolatedCaller(str);
        if (Process.isSdkSandboxUid(Binder.getCallingUid())) {
            throw new SecurityException("SDK sandbox process not allowed to call " + str);
        }
    }

    public final void enforceAllowedToStartOrBindServiceIfSdkSandbox(Intent intent) {
        if (Process.isSdkSandboxUid(Binder.getCallingUid())) {
            SdkSandboxManagerLocal sdkSandboxManagerLocal = (SdkSandboxManagerLocal) LocalManagerRegistry.getManager(SdkSandboxManagerLocal.class);
            if (sdkSandboxManagerLocal != null) {
                sdkSandboxManagerLocal.enforceAllowedToStartOrBindService(intent);
                return;
            }
            throw new IllegalStateException("SdkSandboxManagerLocal not found when checking whether SDK sandbox uid may start or bind to a service.");
        }
    }

    public final void enforceCallingPackage(String str, int i) {
        if (getPackageManagerInternal().getPackageUid(str, 0L, UserHandle.getUserId(i)) == i) {
            return;
        }
        throw new SecurityException(str + " does not belong to uid " + i);
    }

    public void setPackageScreenCompatMode(String str, int i) {
        this.mActivityTaskManager.setPackageScreenCompatMode(str, i);
    }

    public final boolean hasUsageStatsPermission(String str, int i, int i2) {
        int opMode = this.mAppOpsService.noteOperation(43, i, str, null, false, "", false).getOpMode();
        return opMode == 3 ? checkPermission("android.permission.PACKAGE_USAGE_STATS", i2, i) == 0 : opMode == 0;
    }

    public final boolean hasUsageStatsPermission(String str) {
        return hasUsageStatsPermission(str, Binder.getCallingUid(), Binder.getCallingPid());
    }

    public int getPackageProcessState(final String str, String str2) {
        if (!hasUsageStatsPermission(str2)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "getPackageProcessState");
        }
        final int[] iArr = {20};
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda7
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ActivityManagerService.lambda$getPackageProcessState$0(iArr, str, (ProcessRecord) obj);
                    }
                });
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return iArr[0];
    }

    public static /* synthetic */ void lambda$getPackageProcessState$0(int[] iArr, String str, ProcessRecord processRecord) {
        if (iArr[0] > processRecord.mState.getSetProcState()) {
            if (processRecord.getPkgList().containsKey(str) || (processRecord.getPkgDeps() != null && processRecord.getPkgDeps().contains(str))) {
                iArr[0] = processRecord.mState.getSetProcState();
            }
        }
    }

    public boolean setProcessMemoryTrimLevel(String str, int i, int i2) {
        if (!isCallerShell()) {
            throw new SecurityException("Only shell can call it");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord findProcessLOSP = findProcessLOSP(str, i, "setProcessMemoryTrimLevel");
                if (findProcessLOSP == null) {
                    throw new IllegalArgumentException("Unknown process: " + str);
                }
                IApplicationThread thread = findProcessLOSP.getThread();
                if (thread == null) {
                    throw new IllegalArgumentException("Process has no app thread");
                }
                if (findProcessLOSP.mProfile.getTrimMemoryLevel() >= i2) {
                    throw new IllegalArgumentException("Unable to set a higher trim level than current level");
                }
                if (i2 >= 20 && findProcessLOSP.mState.getCurProcState() <= 6) {
                    throw new IllegalArgumentException("Unable to set a background trim level on a foreground process");
                }
                if (UnifiedMemoryReclaimer.getReclaimerMode("onTrim") == 1) {
                    KernelMemoryProxy$ReclaimerLog.write("onTrim: skip scheduleTrimMemory in ams", false);
                    resetPriorityAfterLockedSection();
                    return true;
                }
                KernelMemoryProxy$ReclaimerLog.write("B|scheduleTrimMemory: Trimming memory of force " + findProcessLOSP.processName + " to " + i2, false);
                thread.scheduleTrimMemory(i2);
                KernelMemoryProxy$ReclaimerLog.write("E|scheduleTrimMemory", false);
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        findProcessLOSP.mProfile.setTrimMemoryLevel(i2);
                    } catch (Throwable th) {
                        resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterProcLockedSection();
                resetPriorityAfterLockedSection();
                return true;
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
    }

    public void dispatchOomAdjObserver(String str) {
        OomAdjObserver oomAdjObserver;
        synchronized (this.mOomAdjObserverLock) {
            oomAdjObserver = this.mCurOomAdjObserver;
        }
        if (oomAdjObserver != null) {
            oomAdjObserver.onOomAdjMessage(str);
        }
    }

    public void setOomAdjObserver(int i, OomAdjObserver oomAdjObserver) {
        synchronized (this.mOomAdjObserverLock) {
            this.mCurOomAdjUid = i;
            this.mCurOomAdjObserver = oomAdjObserver;
        }
    }

    public void clearOomAdjObserver() {
        synchronized (this.mOomAdjObserverLock) {
            this.mCurOomAdjUid = -1;
            this.mCurOomAdjObserver = null;
        }
    }

    public void reportUidInfoMessageLocked(String str, String str2, int i) {
        Slog.i("ActivityManager", str2);
        synchronized (this.mOomAdjObserverLock) {
            if (this.mCurOomAdjObserver != null && i == this.mCurOomAdjUid) {
                this.mUiHandler.obtainMessage(70, str2).sendToTarget();
            }
        }
    }

    public int startActivity(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i, int i2, ProfilerInfo profilerInfo, Bundle bundle) {
        return this.mActivityTaskManager.startActivity(iApplicationThread, str, null, intent, str2, iBinder, str3, i, i2, profilerInfo, bundle);
    }

    public int startActivityWithFeature(IApplicationThread iApplicationThread, String str, String str2, Intent intent, String str3, IBinder iBinder, String str4, int i, int i2, ProfilerInfo profilerInfo, Bundle bundle) {
        return this.mActivityTaskManager.startActivity(iApplicationThread, str, str2, intent, str3, iBinder, str4, i, i2, profilerInfo, bundle);
    }

    public final int startActivityAsUser(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IBinder iBinder, String str3, int i, int i2, ProfilerInfo profilerInfo, Bundle bundle, int i3) {
        return startActivityAsUserWithFeature(iApplicationThread, str, null, intent, str2, iBinder, str3, i, i2, profilerInfo, bundle, i3);
    }

    public final int startActivityAsUserWithFeature(IApplicationThread iApplicationThread, String str, String str2, Intent intent, String str3, IBinder iBinder, String str4, int i, int i2, ProfilerInfo profilerInfo, Bundle bundle, int i3) {
        return this.mActivityTaskManager.startActivityAsUser(iApplicationThread, str, str2, intent, str3, iBinder, str4, i, i2, profilerInfo, bundle, i3);
    }

    public WaitResult startActivityAndWait(IApplicationThread iApplicationThread, String str, String str2, Intent intent, String str3, IBinder iBinder, String str4, int i, int i2, ProfilerInfo profilerInfo, Bundle bundle, int i3) {
        return this.mActivityTaskManager.startActivityAndWait(iApplicationThread, str, str2, intent, str3, iBinder, str4, i, i2, profilerInfo, bundle, i3);
    }

    public final int startActivityFromRecents(int i, Bundle bundle) {
        return this.mActivityTaskManager.startActivityFromRecents(i, bundle);
    }

    public final boolean finishActivity(IBinder iBinder, int i, Intent intent, int i2) {
        return ActivityClient.getInstance().finishActivity(iBinder, i, intent, i2);
    }

    public void setRequestedOrientation(IBinder iBinder, int i) {
        ActivityClient.getInstance().setRequestedOrientation(iBinder, i);
    }

    public final void finishHeavyWeightApp() {
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            String str = "Permission Denial: finishHeavyWeightApp() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.FORCE_STOP_PACKAGES";
            Slog.w("ActivityManager", str);
            throw new SecurityException(str);
        }
        this.mAtmInternal.finishHeavyWeightApp();
    }

    public void crashApplicationWithType(int i, int i2, String str, int i3, String str2, boolean z, int i4) {
        crashApplicationWithTypeWithExtras(i, i2, str, i3, str2, z, i4, null);
    }

    public void crashApplicationWithTypeWithExtras(int i, int i2, String str, int i3, String str2, boolean z, int i4, Bundle bundle) {
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            String str3 = "Permission Denial: crashApplication() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.FORCE_STOP_PACKAGES";
            Slog.w("ActivityManager", str3);
            throw new SecurityException(str3);
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mAppErrors.scheduleAppCrashLocked(i, i2, str, i3, str2, z, i4, bundle);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void pendingScheduleServiceRestart(int i, ServiceRecord serviceRecord) {
        List list;
        Slog.d("ActivityManager", "pendingScheduleServiceRestart: u=" + i + ", sr=" + serviceRecord.toString());
        synchronized (this.mPendingSches) {
            if (!this.mPendingSches.containsKey(Integer.valueOf(i))) {
                list = new LinkedList();
                this.mPendingSches.put(Integer.valueOf(i), list);
            } else {
                list = (List) this.mPendingSches.get(Integer.valueOf(i));
            }
            list.add(serviceRecord);
        }
    }

    public final void unpendingScheduleServiceRestart(int i, boolean z) {
        Slog.d("ActivityManager", "unpendingScheduleServiceRestart: u=" + i + ", drop=" + z);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                synchronized (this.mPendingSches) {
                    List list = (List) this.mPendingSches.get(Integer.valueOf(i));
                    if (list != null) {
                        if (z) {
                            list.clear();
                        } else {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                ServiceRecord serviceRecord = (ServiceRecord) it.next();
                                Slog.d("ActivityManager", "up tryScheduleServiceRestartLocked(" + i + "): sr=" + serviceRecord.toString());
                                try {
                                    this.mServices.tryScheduleServiceRestartLocked(serviceRecord);
                                } catch (IllegalStateException unused) {
                                    Slog.e("ActivityManager", "ISE while USR of " + serviceRecord.toString());
                                }
                                it.remove();
                            }
                        }
                        if (list.isEmpty()) {
                            this.mPendingSches.remove(Integer.valueOf(i));
                        }
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final void handleAppDiedLocked(final ProcessRecord processRecord, int i, boolean z, boolean z2, boolean z3) {
        KillPolicyManager killPolicyManager;
        if (isPmmEnabled() && (killPolicyManager = this.mKillPolicyManager) != null) {
            killPolicyManager.loggingAppDied(processRecord);
        }
        if (!cleanUpApplicationRecordLocked(processRecord, i, z, z2, -1, false, z3) && !z) {
            removeLruProcessLocked(processRecord);
            if (i > 0) {
                ProcessList.remove(i);
            }
        }
        this.mAppProfiler.onAppDiedLocked(processRecord);
        this.mAtmInternal.handleAppDied(processRecord.getWindowProcessController(), z, new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerService.this.lambda$handleAppDiedLocked$1(processRecord);
            }
        });
        this.mExt.handleAppDiedLocked(processRecord);
        if (MARsPolicyManager.MARs_ENABLE && MARsPolicyManager.getInstance().isChinaPolicyEnabled()) {
            if ((MARsPolicyManager.getInstance().isForegroundPackage(processRecord.info.packageName, processRecord.userId) || MARsPolicyManager.getInstance().getScreenOnState()) ? false : true) {
                Slog.d("MARsPolicyManager", "Package: " + processRecord.info.packageName + ", userid: " + processRecord.userId + ", hostingType: activity is Restricted by policy: autorun(2)");
            }
        }
    }

    public /* synthetic */ void lambda$handleAppDiedLocked$1(ProcessRecord processRecord) {
        Slog.w("ActivityManager", "Crash of app " + processRecord.processName + " running instrumentation " + processRecord.getActiveInstrumentation().mClass);
        Bundle bundle = new Bundle();
        bundle.putString("shortMsg", "Process crashed.");
        finishInstrumentationLocked(processRecord, 0, bundle);
    }

    public ProcessRecord getRecordForAppLOSP(IApplicationThread iApplicationThread) {
        if (iApplicationThread == null) {
            return null;
        }
        return getRecordForAppLOSP(iApplicationThread.asBinder());
    }

    public ProcessRecord getRecordForAppLOSP(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        ProcessRecord lRURecordForAppLOSP = this.mProcessList.getLRURecordForAppLOSP(iBinder);
        if (lRURecordForAppLOSP != null) {
            return lRURecordForAppLOSP;
        }
        ArrayMap map = this.mProcessList.getProcessNamesLOSP().getMap();
        for (int size = map.size() - 1; size >= 0; size--) {
            SparseArray sparseArray = (SparseArray) map.valueAt(size);
            for (int size2 = sparseArray.size() - 1; size2 >= 0; size2--) {
                ProcessRecord processRecord = (ProcessRecord) sparseArray.valueAt(size2);
                IApplicationThread thread = processRecord.getThread();
                if (thread != null && thread.asBinder() == iBinder) {
                    if (!processRecord.isPendingFinishAttach()) {
                        Slog.wtf("ActivityManager", "getRecordForApp: exists in name list but not in LRU list: " + processRecord);
                    }
                    return processRecord;
                }
            }
        }
        return null;
    }

    public final void appDiedLocked(ProcessRecord processRecord, String str) {
        appDiedLocked(processRecord, processRecord.getPid(), processRecord.getThread(), false, str);
    }

    public final void appDiedLocked(ProcessRecord processRecord, int i, IApplicationThread iApplicationThread, boolean z, String str) {
        ProcessRecord processRecord2;
        IApplicationThread thread;
        boolean z2;
        ASKSManager.removePackageWithPid(i);
        synchronized (this.mPidsSelfLocked) {
            processRecord2 = this.mPidsSelfLocked.get(i);
        }
        if (processRecord2 != processRecord) {
            if (z && this.mProcessList.handleDyingAppDeathLocked(processRecord, i)) {
                return;
            }
            Slog.w("ActivityManager", "Spurious death for " + processRecord + ", curProc for " + i + ": " + processRecord2);
            return;
        }
        this.mBatteryStatsService.noteProcessDied(processRecord.info.uid, i);
        BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.6
            public final /* synthetic */ ProcessRecord val$app;
            public final /* synthetic */ int val$pid;

            public AnonymousClass6(int i2, ProcessRecord processRecord3) {
                r2 = i2;
                r3 = processRecord3;
            }

            @Override // java.lang.Runnable
            public void run() {
                BinderCallsStatsService.Internal binderStatsServiceInternal = ActivityManagerService.this.getBinderStatsServiceInternal();
                int i2 = r2;
                ProcessRecord processRecord3 = r3;
                binderStatsServiceInternal.reportProcessDied(i2, processRecord3.uid, processRecord3.processName);
            }
        });
        MemInfoReader memInfoReader = new MemInfoReader();
        memInfoReader.readLightMemInfo();
        int freeSize = (int) (memInfoReader.getFreeSize() / 1048576);
        int cachedSizeLegacy = (int) (memInfoReader.getCachedSizeLegacy() / 1048576);
        BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.7
            public final /* synthetic */ ProcessRecord val$app;
            public final /* synthetic */ int val$pid;

            public AnonymousClass7(ProcessRecord processRecord3, int i2) {
                r2 = processRecord3;
                r3 = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                ActivityManagerService.this.reportDiedAppPid(r2, r3);
            }
        });
        if (!processRecord3.isKilled()) {
            if (!z) {
                if (Process.getThreadGroupLeader(i2) != i2) {
                    if (!"TGL@".equals(str)) {
                        Slog.w("ActivityManager", "Not TGL " + i2 + "in appDiedLocked");
                    }
                } else {
                    Process.killProcessQuiet(i2);
                    this.mProcessList.noteAppKill(processRecord3, 13, 0, str);
                }
            }
            processRecord3.killProcessGroupIfNecessaryLocked(true);
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    processRecord3.setKilled(true);
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterProcLockedSection();
        }
        int setAdj = processRecord3.mState.getSetAdj();
        int setProcState = processRecord3.mState.getSetProcState();
        if (processRecord3.getPid() == i2 && (thread = processRecord3.getThread()) != null && thread.asBinder() == iApplicationThread.asBinder()) {
            boolean z3 = processRecord3.getActiveInstrumentation() == null;
            if (!processRecord3.isKilledByAm()) {
                reportUidInfoMessageLocked("ActivityManager", "Process " + processRecord3.processName + " (pid " + i2 + ") has died: " + ProcessList.makeOomAdjString(setAdj, true) + " " + ProcessList.makeProcStateString(setProcState) + "(" + freeSize + "," + cachedSizeLegacy + ")", processRecord3.info.uid);
                this.mAppProfiler.setAllowLowerMemLevelLocked(true);
                z2 = z3;
            } else {
                this.mAppProfiler.setAllowLowerMemLevelLocked(false);
                z2 = false;
            }
            EventLogTags.writeAmProcDied(processRecord3.userId, i2, processRecord3.processName, setAdj, setProcState, freeSize, cachedSizeLegacy);
            PerProcessNandswap.getInstance().notifyDiedAppToPPR(processRecord3.getPid());
            Pageboost.onProcStatusChange(2, processRecord3.info.packageName, processRecord3.getPid());
            handleAppDiedLocked(processRecord3, i2, false, true, z);
            if (z3) {
                updateOomAdjLocked(12);
            }
            if (z2) {
                this.mAppProfiler.doLowMemReportIfNeededLocked(processRecord3);
            }
        } else if (processRecord3.getPid() != i2) {
            reportUidInfoMessageLocked("ActivityManager", "Process " + processRecord3.processName + " (pid " + i2 + ") has died and restarted (pid " + processRecord3.getPid() + ").(" + freeSize + "," + cachedSizeLegacy + ")", processRecord3.info.uid);
            PerProcessNandswap.getInstance().notifyDiedAppToPPR(processRecord3.getPid());
            Pageboost.onProcStatusChange(2, processRecord3.info.packageName, processRecord3.getPid());
            EventLogTags.writeAmProcDied(processRecord3.userId, processRecord3.getPid(), processRecord3.processName, setAdj, setProcState, freeSize, cachedSizeLegacy);
        }
        if (MemoryStatUtil.hasMemcg()) {
            return;
        }
        FrameworkStatsLog.write(65, SystemClock.elapsedRealtime());
    }

    /* renamed from: com.android.server.am.ActivityManagerService$6 */
    /* loaded from: classes.dex */
    public class AnonymousClass6 implements Runnable {
        public final /* synthetic */ ProcessRecord val$app;
        public final /* synthetic */ int val$pid;

        public AnonymousClass6(int i2, ProcessRecord processRecord3) {
            r2 = i2;
            r3 = processRecord3;
        }

        @Override // java.lang.Runnable
        public void run() {
            BinderCallsStatsService.Internal binderStatsServiceInternal = ActivityManagerService.this.getBinderStatsServiceInternal();
            int i2 = r2;
            ProcessRecord processRecord3 = r3;
            binderStatsServiceInternal.reportProcessDied(i2, processRecord3.uid, processRecord3.processName);
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$7 */
    /* loaded from: classes.dex */
    public class AnonymousClass7 implements Runnable {
        public final /* synthetic */ ProcessRecord val$app;
        public final /* synthetic */ int val$pid;

        public AnonymousClass7(ProcessRecord processRecord3, int i2) {
            r2 = processRecord3;
            r3 = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActivityManagerService.this.reportDiedAppPid(r2, r3);
        }
    }

    public boolean clearApplicationUserData(String str, boolean z, IPackageDataObserver iPackageDataObserver, int i) {
        long j;
        IPackageManager packageManager;
        boolean z2;
        ApplicationInfo applicationInfo;
        ApplicationInfo applicationInfo2;
        enforceNotIsolatedCaller("clearApplicationUserData");
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        int handleIncomingUser = this.mUserController.handleIncomingUser(callingPid, callingUid, i, false, 2, "clearApplicationUserData", null);
        if (isApplicationClearDataDisabled(str, i)) {
            return false;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            packageManager = AppGlobals.getPackageManager();
            if (!getPackageManagerInternal().isPackageDataProtected(handleIncomingUser, str)) {
                z2 = true;
            } else {
                if (ActivityManager.checkUidPermission("android.permission.MANAGE_USERS", callingUid) == 0) {
                    throw new SecurityException("Cannot clear data for a protected package: " + str);
                }
                z2 = false;
            }
            if (z2) {
                try {
                    applicationInfo2 = packageManager.getApplicationInfo(str, 8192L, handleIncomingUser);
                } catch (RemoteException unused) {
                    applicationInfo2 = null;
                }
                z2 = (applicationInfo2 != null && applicationInfo2.uid == callingUid) || checkComponentPermission("android.permission.CLEAR_APP_USER_DATA", callingPid, callingUid, -1, true) == 0;
                applicationInfo = applicationInfo2;
            } else {
                applicationInfo = null;
            }
        } catch (Throwable th) {
            th = th;
            j = clearCallingIdentity;
        }
        try {
            if (!z2) {
                throw new SecurityException("PID " + callingPid + " does not have permission android.permission.CLEAR_APP_USER_DATA to clear data of package " + str);
            }
            boolean hasInstantApplicationMetadata = getPackageManagerInternal().hasInstantApplicationMetadata(str, handleIncomingUser);
            boolean z3 = applicationInfo == null && !hasInstantApplicationMetadata;
            boolean z4 = (applicationInfo != null && applicationInfo.isInstantApp()) || hasInstantApplicationMetadata;
            boolean z5 = checkComponentPermission("android.permission.ACCESS_INSTANT_APPS", callingPid, callingUid, -1, true) == 0;
            if (!z3 && (!z4 || z5)) {
                boostPriorityForLockedSection();
                synchronized (this) {
                    if (applicationInfo != null) {
                        try {
                            forceStopPackageLocked(str, applicationInfo.uid, "clear data");
                            this.mAtmInternal.removeRecentTasksByPackageName(str, handleIncomingUser);
                            if (MARsPolicyManager.getInstance().isChinaPolicyEnabled() && MARsPolicyManager.getInstance().isAutoRunBlockedApp(str, i)) {
                                MARsPolicyManager.getInstance().addRestrictListAvoidAssoicationLaunch(str, i, "clear data", "UserClearData");
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            while (true) {
                                try {
                                    break;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                }
                resetPriorityAfterLockedSection();
                ApplicationInfo applicationInfo3 = applicationInfo;
                try {
                    packageManager.clearApplicationUserData(str, new IPackageDataObserver.Stub() { // from class: com.android.server.am.ActivityManagerService.8
                        public final /* synthetic */ ApplicationInfo val$appInfo;
                        public final /* synthetic */ boolean val$isInstantApp;
                        public final /* synthetic */ IPackageDataObserver val$observer;
                        public final /* synthetic */ int val$pid;
                        public final /* synthetic */ int val$resolvedUserId;
                        public final /* synthetic */ int val$uid;

                        public AnonymousClass8(ApplicationInfo applicationInfo4, int handleIncomingUser2, boolean z42, int callingUid2, int callingPid2, IPackageDataObserver iPackageDataObserver2) {
                            r2 = applicationInfo4;
                            r3 = handleIncomingUser2;
                            r4 = z42;
                            r5 = callingUid2;
                            r6 = callingPid2;
                            r7 = iPackageDataObserver2;
                        }

                        public void onRemoveCompleted(String str2, boolean z6) {
                            if (r2 != null) {
                                ActivityManagerService activityManagerService = ActivityManagerService.this;
                                ActivityManagerService.boostPriorityForLockedSection();
                                synchronized (activityManagerService) {
                                    try {
                                        ActivityManagerService.this.finishForceStopPackageLocked(str2, r2.uid);
                                    } catch (Throwable th4) {
                                        ActivityManagerService.resetPriorityAfterLockedSection();
                                        throw th4;
                                    }
                                }
                                ActivityManagerService.resetPriorityAfterLockedSection();
                            }
                            if (z6) {
                                Intent intent = new Intent("android.intent.action.PACKAGE_DATA_CLEARED", Uri.fromParts("package", str2, null));
                                intent.addFlags(83886080);
                                ApplicationInfo applicationInfo4 = r2;
                                intent.putExtra("android.intent.extra.UID", applicationInfo4 != null ? applicationInfo4.uid : -1);
                                intent.putExtra("android.intent.extra.user_handle", r3);
                                if (r4) {
                                    intent.putExtra("android.intent.extra.PACKAGE_NAME", str2);
                                }
                                ActivityManagerService.this.broadcastIntentInPackage("android", null, 1000, r5, r6, intent, null, null, null, 0, null, null, r4 ? "android.permission.ACCESS_INSTANT_APPS" : null, null, false, false, r3, BackgroundStartPrivileges.NONE, ActivityManagerService.this.mPackageManagerInt.getVisibilityAllowList(str2, r3));
                            }
                            IPackageDataObserver iPackageDataObserver2 = r7;
                            if (iPackageDataObserver2 != null) {
                                iPackageDataObserver2.onRemoveCompleted(str2, z6);
                            }
                        }
                    }, handleIncomingUser2);
                    if (applicationInfo3 != null) {
                        if (!z) {
                            this.mUgmInternal.removeUriPermissionsForPackage(str, handleIncomingUser2, true, false);
                            INotificationManager service = NotificationManager.getService();
                            int i2 = applicationInfo3.uid;
                            service.clearData(str, i2, callingUid2 == i2);
                        }
                        ((JobSchedulerInternal) LocalServices.getService(JobSchedulerInternal.class)).cancelJobsForUid(applicationInfo3.uid, true, 13, 8, "clear data");
                        ((AlarmManagerInternal) LocalServices.getService(AlarmManagerInternal.class)).removeAlarmsForUid(applicationInfo3.uid);
                    }
                } catch (RemoteException unused2) {
                }
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return true;
            }
            j = clearCallingIdentity;
            Slog.w("ActivityManager", "Invalid packageName: " + str);
            if (iPackageDataObserver2 != null) {
                try {
                    iPackageDataObserver2.onRemoveCompleted(str, false);
                } catch (RemoteException unused3) {
                    Slog.i("ActivityManager", "Observer no longer exists.");
                }
            }
            Binder.restoreCallingIdentity(j);
            return false;
        } catch (Throwable th4) {
            th = th4;
            Binder.restoreCallingIdentity(j);
            throw th;
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$8 */
    /* loaded from: classes.dex */
    public class AnonymousClass8 extends IPackageDataObserver.Stub {
        public final /* synthetic */ ApplicationInfo val$appInfo;
        public final /* synthetic */ boolean val$isInstantApp;
        public final /* synthetic */ IPackageDataObserver val$observer;
        public final /* synthetic */ int val$pid;
        public final /* synthetic */ int val$resolvedUserId;
        public final /* synthetic */ int val$uid;

        public AnonymousClass8(ApplicationInfo applicationInfo4, int handleIncomingUser2, boolean z42, int callingUid2, int callingPid2, IPackageDataObserver iPackageDataObserver2) {
            r2 = applicationInfo4;
            r3 = handleIncomingUser2;
            r4 = z42;
            r5 = callingUid2;
            r6 = callingPid2;
            r7 = iPackageDataObserver2;
        }

        public void onRemoveCompleted(String str2, boolean z6) {
            if (r2 != null) {
                ActivityManagerService activityManagerService = ActivityManagerService.this;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService) {
                    try {
                        ActivityManagerService.this.finishForceStopPackageLocked(str2, r2.uid);
                    } catch (Throwable th4) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th4;
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
            if (z6) {
                Intent intent = new Intent("android.intent.action.PACKAGE_DATA_CLEARED", Uri.fromParts("package", str2, null));
                intent.addFlags(83886080);
                ApplicationInfo applicationInfo4 = r2;
                intent.putExtra("android.intent.extra.UID", applicationInfo4 != null ? applicationInfo4.uid : -1);
                intent.putExtra("android.intent.extra.user_handle", r3);
                if (r4) {
                    intent.putExtra("android.intent.extra.PACKAGE_NAME", str2);
                }
                ActivityManagerService.this.broadcastIntentInPackage("android", null, 1000, r5, r6, intent, null, null, null, 0, null, null, r4 ? "android.permission.ACCESS_INSTANT_APPS" : null, null, false, false, r3, BackgroundStartPrivileges.NONE, ActivityManagerService.this.mPackageManagerInt.getVisibilityAllowList(str2, r3));
            }
            IPackageDataObserver iPackageDataObserver2 = r7;
            if (iPackageDataObserver2 != null) {
                iPackageDataObserver2.onRemoveCompleted(str2, z6);
            }
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:? -> B:41:0x00f2). Please report as a decompilation issue!!! */
    public void killBackgroundProcesses(String str, int i) {
        int i2;
        ActivityManagerGlobalLock activityManagerGlobalLock;
        int i3;
        IPackageManager iPackageManager;
        if (checkCallingPermission("android.permission.KILL_BACKGROUND_PROCESSES") != 0 && checkCallingPermission("android.permission.RESTART_PACKAGES") != 0) {
            String str2 = "Permission Denial: killBackgroundProcesses() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.KILL_BACKGROUND_PROCESSES";
            Slog.w("ActivityManager", str2);
            throw new SecurityException(str2);
        }
        int i4 = 0;
        boolean z = checkCallingPermission("android.permission.KILL_ALL_BACKGROUND_PROCESSES") == 0;
        int callingUid = Binder.getCallingUid();
        int appId = UserHandle.getAppId(callingUid);
        EventLogTags.writeAmKillBgProc(str, i, Binder.getCallingPid());
        int handleIncomingUser = this.mUserController.handleIncomingUser(Binder.getCallingPid(), callingUid, i, true, 2, "killBackgroundProcesses", null);
        int[] expandUserId = this.mUserController.expandUserId(handleIncomingUser);
        if (this.mActivityTaskManager.isForceStopDisabled(str, handleIncomingUser, null, null, null, false, false)) {
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            IPackageManager packageManager = AppGlobals.getPackageManager();
            int length = expandUserId.length;
            while (i4 < length) {
                int i5 = expandUserId[i4];
                try {
                    i2 = UserHandle.getAppId(packageManager.getPackageUid(str, 268435456L, i5));
                } catch (RemoteException unused) {
                    i2 = -1;
                }
                if (i2 == -1 || (!z && i2 != appId)) {
                    Slog.w("ActivityManager", "Invalid packageName: " + str);
                    return;
                }
                boostPriorityForLockedSection();
                synchronized (this) {
                    try {
                        ActivityManagerGlobalLock activityManagerGlobalLock2 = this.mProcLock;
                        boostPriorityForProcLockedSection();
                        synchronized (activityManagerGlobalLock2) {
                            try {
                                activityManagerGlobalLock = activityManagerGlobalLock2;
                                i3 = length;
                                iPackageManager = packageManager;
                            } catch (Throwable th) {
                                th = th;
                                activityManagerGlobalLock = activityManagerGlobalLock2;
                                resetPriorityAfterProcLockedSection();
                                throw th;
                            }
                            try {
                                this.mProcessList.killPackageProcessesLSP(str, i2, i5, 500, 10, 24, "kill background");
                                resetPriorityAfterProcLockedSection();
                            } catch (Throwable th2) {
                                th = th2;
                                resetPriorityAfterProcLockedSection();
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        resetPriorityAfterLockedSection();
                        throw th3;
                    }
                }
                resetPriorityAfterLockedSection();
                i4++;
                length = i3;
                packageManager = iPackageManager;
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void killAllBackgroundProcesses() {
        if (checkCallingPermission("android.permission.KILL_ALL_BACKGROUND_PROCESSES") != 0) {
            String str = "Permission Denial: killAllBackgroundProcesses() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.KILL_ALL_BACKGROUND_PROCESSES";
            Slog.w("ActivityManager", str);
            throw new SecurityException(str);
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    this.mAppProfiler.setAllowLowerMemLevelLocked(true);
                    ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                    boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            this.mProcessList.killPackageProcessesLSP(null, -1, -1, 850, 10, 24, "kill all background");
                        } catch (Throwable th) {
                            resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    resetPriorityAfterProcLockedSection();
                    this.mAppProfiler.doLowMemReportIfNeededLocked(null);
                } catch (Throwable th2) {
                    resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            resetPriorityAfterLockedSection();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void killAllBackgroundProcessesExcept(int i, int i2) {
        if (checkCallingPermission("android.permission.KILL_ALL_BACKGROUND_PROCESSES") != 0) {
            String str = "Permission Denial: killAllBackgroundProcessesExcept() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.KILL_ALL_BACKGROUND_PROCESSES";
            Slog.w("ActivityManager", str);
            throw new SecurityException(str);
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                    boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            this.mProcessList.killAllBackgroundProcessesExceptLSP(i, i2);
                        } catch (Throwable th) {
                            resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    resetPriorityAfterProcLockedSection();
                } catch (Throwable th2) {
                    resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            resetPriorityAfterLockedSection();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void stopAppForUser(String str, int i) {
        if (checkCallingPermission("android.permission.MANAGE_ACTIVITY_TASKS") != 0) {
            String str2 = "Permission Denial: stopAppForUser() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.MANAGE_ACTIVITY_TASKS";
            Slog.w("ActivityManager", str2);
            throw new SecurityException(str2);
        }
        int handleIncomingUser = this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), i, true, 2, "stopAppForUser", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            stopAppForUserInternal(str, handleIncomingUser);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean registerForegroundServiceObserver(IForegroundServiceObserver iForegroundServiceObserver) {
        boolean registerForegroundServiceObserverLocked;
        int callingUid = Binder.getCallingUid();
        int checkCallingPermission = checkCallingPermission("android.permission.MANAGE_ACTIVITY_TASKS");
        int checkCallingPermission2 = checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL");
        if (checkCallingPermission != 0 || checkCallingPermission2 != 0) {
            String str = "Permission Denial: registerForegroundServiceObserver() from pid=" + Binder.getCallingPid() + ", uid=" + callingUid + " requires android.permission.MANAGE_ACTIVITY_TASKS and android.permission.INTERACT_ACROSS_USERS_FULL";
            Slog.w("ActivityManager", str);
            throw new SecurityException(str);
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                registerForegroundServiceObserverLocked = this.mServices.registerForegroundServiceObserverLocked(callingUid, iForegroundServiceObserver);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return registerForegroundServiceObserverLocked;
    }

    public void forceStopPackage(String str, int i) {
        if (this.mExt.shouldAvoidForceStopForTmoPkg(str)) {
            return;
        }
        forceStopPackage(str, i, 0, false);
        if (MARsPolicyManager.getInstance().isChinaPolicyEnabled() && MARsPolicyManager.getInstance().isAutoRunBlockedApp(str, i)) {
            MARsPolicyManager.getInstance().addRestrictListAvoidAssoicationLaunch(str, i, "forceStop", "UserForceStop");
        }
    }

    public void forceStopPackageByAdmin(String str, int i) {
        forceStopPackage(str, i, 0, true);
    }

    public void forceStopPackageEvenWhenStopping(String str, int i) {
        forceStopPackage(str, i, 1, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b0 A[Catch: all -> 0x013f, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x013f, blocks: (B:10:0x0032, B:11:0x003d, B:13:0x0042, B:52:0x004e, B:53:0x006c, B:17:0x0077, B:21:0x009d, B:25:0x00a8, B:27:0x00b0, B:29:0x00c7, B:45:0x00cd, B:30:0x00eb, B:32:0x00f5, B:35:0x0106, B:37:0x0132, B:58:0x0137, B:62:0x0039), top: B:8:0x0030, outer: #1, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void forceStopPackage(java.lang.String r21, int r22, int r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.forceStopPackage(java.lang.String, int, int, boolean):void");
    }

    public final boolean isSettingsCloseAllowed(String str, int i) {
        if (TextUtils.isEmpty(str) || !str.equals("com.android.settings")) {
            return true;
        }
        try {
            IPasswordPolicy asInterface = IPasswordPolicy.Stub.asInterface(ServiceManager.getService("password_policy"));
            if (asInterface != null) {
                return asInterface.isChangeRequestedAsUser(i) <= 0;
            }
            return true;
        } catch (RemoteException unused) {
            return true;
        }
    }

    public void addPackageDependency(String str) {
        ProcessRecord processRecord;
        if (Binder.getCallingPid() == Process.myPid()) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        if (getPackageManagerInternal().filterAppAccess(str, callingUid, UserHandle.getUserId(callingUid))) {
            Slog.w("ActivityManager", "Failed trying to add dependency on non-existing package: " + str);
            return;
        }
        synchronized (this.mPidsSelfLocked) {
            processRecord = this.mPidsSelfLocked.get(Binder.getCallingPid());
        }
        if (processRecord != null) {
            ArraySet pkgDeps = processRecord.getPkgDeps();
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                    boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        if (pkgDeps == null) {
                            try {
                                pkgDeps = new ArraySet(1);
                                processRecord.setPkgDeps(pkgDeps);
                            } catch (Throwable th) {
                                resetPriorityAfterProcLockedSection();
                                throw th;
                            }
                        }
                        pkgDeps.add(str);
                    }
                    resetPriorityAfterProcLockedSection();
                } catch (Throwable th2) {
                    resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            resetPriorityAfterLockedSection();
        }
    }

    public void killApplication(String str, int i, int i2, String str2, int i3) {
        if (str == null) {
            return;
        }
        if (i < 0) {
            Slog.w("ActivityManager", "Invalid appid specified for pkg : " + str);
            return;
        }
        int callingUid = Binder.getCallingUid();
        if (UserHandle.getAppId(callingUid) == 1000) {
            Message obtainMessage = this.mHandler.obtainMessage(22);
            obtainMessage.arg1 = i;
            obtainMessage.arg2 = i2;
            SomeArgs obtain = SomeArgs.obtain();
            obtain.arg1 = str;
            obtain.arg2 = str2;
            obtain.arg3 = Integer.valueOf(i3);
            obtainMessage.obj = obtain;
            this.mHandler.sendMessage(obtainMessage);
            return;
        }
        throw new SecurityException(callingUid + " cannot kill pkg: " + str);
    }

    public void closeSystemDialogs(String str) {
        this.mAtmInternal.closeSystemDialogs(str);
    }

    public void closeSystemDialogsInDisplay(String str, int i) {
        this.mAtmInternal.closeSystemDialogs(str, i);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:? -> B:79:0x013d). Please report as a decompilation issue!!! */
    public Debug.MemoryInfo[] getProcessMemoryInfo(int[] iArr) {
        boolean z;
        final ProcessRecord processRecord;
        ProcessProfileRecord processProfileRecord;
        int i;
        Object obj;
        long j;
        boolean z2;
        ActiveInstrumentation activeInstrumentation;
        int i2;
        ActivityManagerService activityManagerService = this;
        int[] iArr2 = iArr;
        activityManagerService.enforceNotIsolatedCaller("getProcessMemoryInfo");
        long uptimeMillis = SystemClock.uptimeMillis() - activityManagerService.mConstants.MEMORY_INFO_THROTTLE_TIME;
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        boolean z3 = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) == 0;
        boolean isGetTasksAllowed = activityManagerService.mAtmInternal.isGetTasksAllowed("getProcessMemoryInfo", callingPid, callingUid);
        ActivityManagerGlobalLock activityManagerGlobalLock = activityManagerService.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                synchronized (activityManagerService.mPidsSelfLocked) {
                    ProcessRecord processRecord2 = activityManagerService.mPidsSelfLocked.get(callingPid);
                    z = (processRecord2 == null || (activeInstrumentation = processRecord2.getActiveInstrumentation()) == null || ((i2 = activeInstrumentation.mSourceUid) != 2000 && i2 != 0)) ? false : true;
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        Debug.MemoryInfo[] memoryInfoArr = new Debug.MemoryInfo[iArr2.length];
        int length = iArr2.length - 1;
        while (length >= 0) {
            final Debug.MemoryInfo memoryInfo = new Debug.MemoryInfo();
            memoryInfoArr[length] = memoryInfo;
            synchronized (activityManagerService.mAppProfiler.mProfilerLock) {
                synchronized (activityManagerService.mPidsSelfLocked) {
                    processRecord = activityManagerService.mPidsSelfLocked.get(iArr2[length]);
                    if (processRecord != null) {
                        ProcessProfileRecord processProfileRecord2 = processRecord.mProfile;
                        processProfileRecord = processProfileRecord2;
                        i = processProfileRecord2.getSetAdj();
                    } else {
                        processProfileRecord = null;
                        i = 0;
                    }
                }
            }
            int i3 = processRecord != null ? processRecord.uid : -1;
            int userId2 = processRecord != null ? UserHandle.getUserId(i3) : -1;
            if (callingUid == i3 || (isGetTasksAllowed && (z3 || userId2 == userId))) {
                if (processRecord != null) {
                    synchronized (activityManagerService.mAppProfiler.mProfilerLock) {
                        if (processProfileRecord.getLastMemInfoTime() >= uptimeMillis && processProfileRecord.getLastMemInfo() != null && !z) {
                            memoryInfo.set(processProfileRecord.getLastMemInfo());
                        }
                    }
                }
                long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
                Debug.MemoryInfo memoryInfo2 = new Debug.MemoryInfo();
                Debug.getMemoryInfo(iArr2[length], memoryInfo2);
                final long currentThreadTimeMillis2 = SystemClock.currentThreadTimeMillis() - currentThreadTimeMillis;
                memoryInfo.set(memoryInfo2);
                if (processRecord != null) {
                    Object obj2 = activityManagerService.mAppProfiler.mProfilerLock;
                    synchronized (obj2) {
                        final ProcessProfileRecord processProfileRecord3 = processProfileRecord;
                        try {
                            processProfileRecord3.setLastMemInfo(memoryInfo2);
                            j = uptimeMillis;
                            processProfileRecord3.setLastMemInfoTime(SystemClock.uptimeMillis());
                            if (processProfileRecord3.getThread() == null || processProfileRecord3.getSetAdj() != i) {
                                z2 = z;
                                obj = obj2;
                            } else {
                                z2 = z;
                                processProfileRecord3.addPss(memoryInfo.getTotalPss(), memoryInfo.getTotalUss(), memoryInfo.getTotalRss(), false, 4, currentThreadTimeMillis2);
                                obj = obj2;
                                try {
                                    processRecord.getPkgList().forEachPackageProcessStats(new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda0
                                        @Override // java.util.function.Consumer
                                        public final void accept(Object obj3) {
                                            ActivityManagerService.lambda$getProcessMemoryInfo$2(ProcessRecord.this, memoryInfo, currentThreadTimeMillis2, processProfileRecord3, (ProcessStats.ProcessStateHolder) obj3);
                                        }
                                    });
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                            length--;
                            activityManagerService = this;
                            iArr2 = iArr;
                            uptimeMillis = j;
                            z = z2;
                        } catch (Throwable th3) {
                            th = th3;
                            obj = obj2;
                            throw th;
                        }
                    }
                }
            }
            j = uptimeMillis;
            z2 = z;
            length--;
            activityManagerService = this;
            iArr2 = iArr;
            uptimeMillis = j;
            z = z2;
        }
        return memoryInfoArr;
    }

    public static /* synthetic */ void lambda$getProcessMemoryInfo$2(ProcessRecord processRecord, Debug.MemoryInfo memoryInfo, long j, ProcessProfileRecord processProfileRecord, ProcessStats.ProcessStateHolder processStateHolder) {
        ProcessState processState = processStateHolder.state;
        FrameworkStatsLog.write(18, processRecord.info.uid, processState != null ? processState.getName() : processRecord.processName, processState != null ? processState.getPackage() : processRecord.info.packageName, memoryInfo.getTotalPss(), memoryInfo.getTotalUss(), memoryInfo.getTotalRss(), 4, j, processStateHolder.appVersion, processProfileRecord.getCurrentHostingComponentTypes(), processProfileRecord.getHistoricalHostingComponentTypes());
    }

    public long[] getProcessPss(int[] iArr) {
        final ProcessRecord processRecord;
        int setAdj;
        enforceNotIsolatedCaller("getProcessPss");
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        int i = 0;
        boolean z = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) == 0;
        boolean isGetTasksAllowed = this.mAtmInternal.isGetTasksAllowed("getProcessPss", callingPid, callingUid);
        long[] jArr = new long[iArr.length];
        int length = iArr.length - 1;
        while (length >= 0) {
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    synchronized (this.mPidsSelfLocked) {
                        processRecord = this.mPidsSelfLocked.get(iArr[length]);
                        setAdj = processRecord != null ? processRecord.mState.getSetAdj() : i;
                    }
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterProcLockedSection();
            if (isGetTasksAllowed && (z || UserHandle.getUserId(processRecord.uid) == userId)) {
                final long[] jArr2 = new long[3];
                long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
                final long pss = Debug.getPss(iArr[length], jArr2, null);
                jArr[length] = pss;
                final long currentThreadTimeMillis2 = SystemClock.currentThreadTimeMillis() - currentThreadTimeMillis;
                if (processRecord != null) {
                    final ProcessProfileRecord processProfileRecord = processRecord.mProfile;
                    synchronized (this.mAppProfiler.mProfilerLock) {
                        if (processProfileRecord.getThread() != null && processProfileRecord.getSetAdj() == setAdj) {
                            processProfileRecord.addPss(pss, jArr2[i], jArr2[2], false, 3, currentThreadTimeMillis2);
                            processRecord.getPkgList().forEachPackageProcessStats(new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda18
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    ActivityManagerService.lambda$getProcessPss$3(ProcessRecord.this, pss, jArr2, currentThreadTimeMillis2, processProfileRecord, (ProcessStats.ProcessStateHolder) obj);
                                }
                            });
                        }
                    }
                } else {
                    continue;
                }
            }
            length--;
            i = 0;
        }
        return jArr;
    }

    public static /* synthetic */ void lambda$getProcessPss$3(ProcessRecord processRecord, long j, long[] jArr, long j2, ProcessProfileRecord processProfileRecord, ProcessStats.ProcessStateHolder processStateHolder) {
        FrameworkStatsLog.write(18, processRecord.info.uid, processStateHolder.state.getName(), processStateHolder.state.getPackage(), j, jArr[0], jArr[2], 3, j2, processStateHolder.appVersion, processProfileRecord.getCurrentHostingComponentTypes(), processProfileRecord.getHistoricalHostingComponentTypes());
    }

    public void killApplicationProcess(String str, int i) {
        IApplicationThread thread;
        if (str == null) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1000) {
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    ProcessRecord processRecordLocked = getProcessRecordLocked(str, i);
                    if (processRecordLocked != null && (thread = processRecordLocked.getThread()) != null) {
                        try {
                            thread.scheduleSuicide();
                        } catch (RemoteException unused) {
                        }
                    } else {
                        Slog.w("ActivityManager", "Process/uid not found attempting kill of " + str + " / " + i);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            return;
        }
        throw new SecurityException(callingUid + " cannot kill app process: " + str);
    }

    public final void forceStopPackageLocked(String str, int i, String str2) {
        forceStopPackageLocked(str, UserHandle.getAppId(i), false, false, true, false, false, UserHandle.getUserId(i), str2);
    }

    public final void finishForceStopPackageLocked(String str, int i) {
        Intent intent = new Intent("android.intent.action.PACKAGE_RESTARTED", Uri.fromParts("package", str, null));
        if (!this.mProcessesReady) {
            intent.addFlags(1342177280);
        }
        int userId = UserHandle.getUserId(i);
        int[] visibilityAllowList = getPackageManagerInternal().getVisibilityAllowList(str, userId);
        intent.putExtra("android.intent.extra.UID", i);
        intent.putExtra("android.intent.extra.user_handle", userId);
        broadcastIntentLocked(null, null, null, intent, null, null, null, 0, null, null, null, null, null, -1, null, false, false, MY_PID, 1000, Binder.getCallingUid(), Binder.getCallingPid(), userId, BackgroundStartPrivileges.NONE, visibilityAllowList, null);
    }

    public final void cleanupDisabledPackageComponentsLocked(String str, int i, String[] strArr) {
        ArraySet arraySet;
        IPackageManager packageManager = AppGlobals.getPackageManager();
        boolean z = CoreRune.FW_TEMP_UPSM_DEBUG_LOG;
        if (z) {
            this.mActivityTaskManager.setShouldDebugForUPSM(z && KnoxCustomManagerService.LAUNCHER_PACKAGE.equals(str));
            this.mActivityTaskManager.writeDebugLogForUPSM("Start CleanupDisabledPackage checking, changedClasses=" + Arrays.toString(strArr));
        }
        if (strArr == null) {
            if (CoreRune.FW_TEMP_UPSM_DEBUG_LOG) {
                this.mActivityTaskManager.writeDebugLogForUPSM("Drop cleanupDisabledPackage for unchanged classes");
                this.mActivityTaskManager.setShouldDebugForUPSM(false);
                return;
            }
            return;
        }
        int length = strArr.length - 1;
        boolean z2 = false;
        ArraySet arraySet2 = null;
        while (true) {
            if (length < 0) {
                arraySet = arraySet2;
                break;
            }
            String str2 = strArr[length];
            if (str2.equals(str)) {
                try {
                    int applicationEnabledSetting = packageManager.getApplicationEnabledSetting(str, i != -1 ? i : 0);
                    z2 = (applicationEnabledSetting == 1 || applicationEnabledSetting == 0) ? false : true;
                    if (z2) {
                        this.mExt.removeLongLivePackageWhenUninstalledLocked(str);
                        if (CoreRune.FW_DEDICATED_MEMORY) {
                            this.mExt.removeLongLiveTaskLocked(str, i);
                        }
                        arraySet = null;
                    }
                } catch (Exception unused) {
                    return;
                }
            } else {
                try {
                    int componentEnabledSetting = packageManager.getComponentEnabledSetting(new ComponentName(str, str2), i != -1 ? i : 0);
                    if (componentEnabledSetting != 1 && componentEnabledSetting != 0) {
                        if (arraySet2 == null) {
                            arraySet2 = new ArraySet(strArr.length);
                        }
                        arraySet2.add(str2);
                    }
                } catch (Exception unused2) {
                    return;
                }
            }
            length--;
        }
        if (!z2 && arraySet == null) {
            if (CoreRune.FW_TEMP_UPSM_DEBUG_LOG) {
                this.mActivityTaskManager.writeDebugLogForUPSM("No need to do further work, no packageDisabled and disabledClass");
                this.mActivityTaskManager.setShouldDebugForUPSM(false);
                return;
            }
            return;
        }
        this.mAtmInternal.cleanupDisabledPackageComponents(str, arraySet, i, this.mBooted);
        ArraySet arraySet3 = arraySet;
        this.mServices.bringDownDisabledPackageServicesLocked(str, arraySet3, i, false, false, true);
        ArrayList arrayList = new ArrayList();
        this.mCpHelper.getProviderMap().collectPackageProvidersLocked(str, (Set) arraySet3, true, false, i, arrayList);
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            this.mCpHelper.removeDyingProviderLocked(null, (ContentProviderRecord) arrayList.get(size), true);
        }
        for (int length2 = this.mBroadcastQueues.length - 1; length2 >= 0; length2--) {
            this.mBroadcastQueues[length2].cleanupDisabledPackageReceiversLocked(str, arraySet, i);
        }
        if (CoreRune.FW_TEMP_UPSM_DEBUG_LOG) {
            this.mActivityTaskManager.writeDebugLogForUPSM("cleanUpPackage is done");
            this.mActivityTaskManager.setShouldDebugForUPSM(false);
        }
    }

    public final boolean clearBroadcastQueueForUserLocked(int i) {
        boolean z = false;
        for (int length = this.mBroadcastQueues.length - 1; length >= 0; length--) {
            z |= this.mBroadcastQueues[length].cleanupDisabledPackageReceiversLocked(null, null, i);
        }
        return z;
    }

    public final void forceStopAppZygoteLocked(String str, int i, int i2) {
        if (str == null) {
            return;
        }
        if (i < 0) {
            i = UserHandle.getAppId(getPackageManagerInternal().getPackageUid(str, 272629760L, 0));
        }
        this.mProcessList.killAppZygotesLocked(str, i, i2, true);
    }

    public void stopAppForUserInternal(String str, int i) {
        int packageUid = getPackageManagerInternal().getPackageUid(str, 272629760L, i);
        if (packageUid < 0) {
            Slog.w("ActivityManager", "Asked to stop " + str + "/u" + i + " but does not exist in that user");
            return;
        }
        if (getPackageManagerInternal().isPackageStateProtected(str, i)) {
            Slog.w("ActivityManager", "Asked to stop " + str + "/u" + i + " but it is protected");
            return;
        }
        if (this.mActivityTaskManager.isForceStopDisabled(str, i, null, null, null, false, true)) {
            Slog.w("ActivityManager", "Asked to stop " + str + "/u" + i + " but it is protected by knox policy");
            return;
        }
        Slog.i("ActivityManager", "Stopping app for user: " + str + "/" + i);
        int appId = UserHandle.getAppId(packageUid);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                try {
                    synchronized (activityManagerGlobalLock) {
                        try {
                            this.mAtmInternal.onForceStopPackage(str, true, false, i);
                            this.mProcessList.killPackageProcessesLSP(str, appId, i, -10000, true, false, true, false, true, false, 10, 23, "fully stop " + str + "/" + i + " by user request");
                            resetPriorityAfterProcLockedSection();
                            this.mServices.bringDownDisabledPackageServicesLocked(str, null, i, false, true, true);
                            if (this.mBooted) {
                                this.mAtmInternal.resumeTopActivities(true);
                            }
                        } catch (Throwable th) {
                            th = th;
                            resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                resetPriorityAfterLockedSection();
                throw th3;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final boolean forceStopPackageLocked(String str, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, String str2) {
        return forceStopPackageLocked(str, i, z, z2, z3, z4, z5, i2, str2, str == null ? 11 : 10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v4 */
    public final boolean forceStopPackageLocked(String str, int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, String str2, int i3) {
        StringBuilder sb;
        ?? r8;
        String str3;
        int i4;
        AttributeCache instance;
        if (i2 == -1 && str == null) {
            Slog.w("ActivityManager", "Can't force stop all processes of all users, that is insane!");
        }
        int appId = (i >= 0 || str == null) ? i : UserHandle.getAppId(getPackageManagerInternal().getPackageUid(str, 272629760L, 0));
        if (z3) {
            if (str != null) {
                Slog.i("ActivityManager", "Force stopping " + str + " appid=" + appId + " user=" + i2 + ": " + str2);
            } else {
                Slog.i("ActivityManager", "Force stopping u" + i2 + ": " + str2);
            }
            this.mAppErrors.resetProcessCrashTime(str == null, appId, i2);
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                try {
                    boolean onForceStopPackage = this.mAtmInternal.onForceStopPackage(str, z3, z4, i2);
                    int i5 = i3 == 10 ? 21 : 0;
                    ProcessList processList = this.mProcessList;
                    StringBuilder sb2 = new StringBuilder();
                    if (str == null) {
                        sb = new StringBuilder();
                        sb.append("stop user ");
                        sb.append(i2);
                    } else {
                        sb = new StringBuilder();
                        sb.append("stop ");
                        sb.append(str);
                    }
                    sb2.append(sb.toString());
                    sb2.append(" due to ");
                    sb2.append(str2);
                    int i6 = appId;
                    boolean killPackageProcessesLSP = onForceStopPackage | processList.killPackageProcessesLSP(str, appId, i2, -10000, z, false, z3, z4, true, z5, i3, i5, sb2.toString());
                    resetPriorityAfterProcLockedSection();
                    if (!this.mServices.bringDownDisabledPackageServicesLocked(str, null, i2, z4, true, z3)) {
                        r8 = 1;
                        str3 = str;
                    } else {
                        if (!z3) {
                            return true;
                        }
                        r8 = 1;
                        str3 = str;
                        killPackageProcessesLSP = true;
                    }
                    if (str3 == null) {
                        i4 = i2;
                        this.mStickyBroadcasts.remove(i4);
                    } else {
                        i4 = i2;
                    }
                    ArrayList arrayList = new ArrayList();
                    if (this.mCpHelper.getProviderMap().collectPackageProvidersLocked(str, (Set) null, z3, z4, i2, arrayList)) {
                        if (!z3) {
                            return r8;
                        }
                        killPackageProcessesLSP = r8;
                    }
                    for (int size = arrayList.size() - r8; size >= 0; size--) {
                        this.mCpHelper.removeDyingProviderLocked(null, (ContentProviderRecord) arrayList.get(size), r8);
                    }
                    this.mUgmInternal.removeUriPermissionsForPackage(str3, i4, false, false);
                    if (z3 && !"update-overlay".equals(Integer.valueOf(i3))) {
                        for (int length = this.mBroadcastQueues.length - r8; length >= 0; length--) {
                            killPackageProcessesLSP |= this.mBroadcastQueues[length].cleanupDisabledPackageReceiversLocked(str3, null, i4);
                        }
                    }
                    if (str3 == null || z5) {
                        killPackageProcessesLSP |= this.mPendingIntentController.removePendingIntentsForPackage(str3, i4, i6, z3);
                    }
                    if (z3) {
                        if (z2 && str3 != null && (instance = AttributeCache.instance()) != null) {
                            instance.removePackage(str3);
                        }
                        if (this.mBooted) {
                            this.mAtmInternal.resumeTopActivities(r8);
                        }
                    }
                    return killPackageProcessesLSP;
                } catch (Throwable th) {
                    th = th;
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public void handleProcessStartOrKillTimeoutLocked(ProcessRecord processRecord, boolean z) {
        int pid = processRecord.getPid();
        if (z || removePidLocked(pid, processRecord)) {
            if (z) {
                ProcessRecord processRecord2 = processRecord.mSuccessor;
                if (processRecord2 == null) {
                    return;
                }
                Slog.wtf("ActivityManager", processRecord.toString() + " " + processRecord.getDyingPid() + " refused to die while trying to launch " + processRecord2 + ", cancelling the process start");
                processRecord.mSuccessorStartRunnable = null;
                processRecord.mSuccessor = null;
                processRecord2.mPredecessor = null;
                processRecord = processRecord2;
            } else {
                String str = "Process " + processRecord + " failed to attach";
                Slog.w("ActivityManager", str);
                EventLogTags.writeAmProcessStartTimeout(processRecord.userId, pid, processRecord.uid, processRecord.processName);
                if (processRecord.getActiveInstrumentation() != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("shortMsg", "failed to attach");
                    bundle.putString("longMsg", str);
                    finishInstrumentationLocked(processRecord, 0, bundle);
                }
            }
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    this.mProcessList.removeProcessNameLocked(processRecord.processName, processRecord.uid);
                    this.mAtmInternal.clearHeavyWeightProcessIfEquals(processRecord.getWindowProcessController());
                    this.mCpHelper.cleanupAppInLaunchingProvidersLocked(processRecord, true);
                    this.mServices.processStartTimedOutLocked(processRecord);
                    for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
                        broadcastQueue.onApplicationTimeoutLocked(processRecord);
                    }
                    if (!z) {
                        this.mBatteryStatsService.noteProcessFinish(processRecord.processName, processRecord.info.uid);
                        processRecord.killLocked("start timeout", 7, true);
                        removeLruProcessLocked(processRecord);
                    }
                    if (processRecord.isolated) {
                        this.mBatteryStatsService.removeIsolatedUid(processRecord.uid, processRecord.info.uid);
                        this.mProcessList.mAppExitInfoTracker.mIsolatedUidRecords.removeIsolatedUid(processRecord.uid, processRecord.info.uid);
                        getPackageManagerInternal().removeIsolatedUid(processRecord.uid);
                    }
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterProcLockedSection();
            BackupRecord backupRecord = (BackupRecord) this.mBackupTargets.get(processRecord.userId);
            if (z || backupRecord == null || backupRecord.app.getPid() != pid) {
                return;
            }
            Slog.w("ActivityManager", "Unattached app died before backup, skipping");
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.9
                public final /* synthetic */ String val$packageName;
                public final /* synthetic */ int val$userId;

                public AnonymousClass9(int i, String str2) {
                    r2 = i;
                    r3 = str2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IBackupManager.Stub.asInterface(ServiceManager.getService("backup")).agentDisconnectedForUser(r2, r3);
                    } catch (RemoteException unused) {
                    }
                }
            });
            return;
        }
        Slog.w("ActivityManager", "Spurious process start timeout - pid not known for " + processRecord);
    }

    /* renamed from: com.android.server.am.ActivityManagerService$9 */
    /* loaded from: classes.dex */
    public class AnonymousClass9 implements Runnable {
        public final /* synthetic */ String val$packageName;
        public final /* synthetic */ int val$userId;

        public AnonymousClass9(int i, String str2) {
            r2 = i;
            r3 = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                IBackupManager.Stub.asInterface(ServiceManager.getService("backup")).agentDisconnectedForUser(r2, r3);
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:133:0x033b A[Catch: Exception -> 0x04f7, TryCatch #3 {Exception -> 0x04f7, blocks: (B:204:0x02ef, B:206:0x02f9, B:126:0x030c, B:128:0x0318, B:130:0x0322, B:131:0x0331, B:133:0x033b, B:134:0x0344, B:136:0x038a, B:137:0x0391, B:139:0x03ad, B:140:0x03b2, B:142:0x03bc, B:144:0x048a, B:145:0x048d, B:146:0x0497, B:150:0x04a7, B:151:0x04bb, B:155:0x04c7, B:187:0x03d2, B:192:0x03ee, B:194:0x0432, B:199:0x0454), top: B:203:0x02ef }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x038a A[Catch: Exception -> 0x04f7, TryCatch #3 {Exception -> 0x04f7, blocks: (B:204:0x02ef, B:206:0x02f9, B:126:0x030c, B:128:0x0318, B:130:0x0322, B:131:0x0331, B:133:0x033b, B:134:0x0344, B:136:0x038a, B:137:0x0391, B:139:0x03ad, B:140:0x03b2, B:142:0x03bc, B:144:0x048a, B:145:0x048d, B:146:0x0497, B:150:0x04a7, B:151:0x04bb, B:155:0x04c7, B:187:0x03d2, B:192:0x03ee, B:194:0x0432, B:199:0x0454), top: B:203:0x02ef }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03ad A[Catch: Exception -> 0x04f7, TryCatch #3 {Exception -> 0x04f7, blocks: (B:204:0x02ef, B:206:0x02f9, B:126:0x030c, B:128:0x0318, B:130:0x0322, B:131:0x0331, B:133:0x033b, B:134:0x0344, B:136:0x038a, B:137:0x0391, B:139:0x03ad, B:140:0x03b2, B:142:0x03bc, B:144:0x048a, B:145:0x048d, B:146:0x0497, B:150:0x04a7, B:151:0x04bb, B:155:0x04c7, B:187:0x03d2, B:192:0x03ee, B:194:0x0432, B:199:0x0454), top: B:203:0x02ef }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03bc A[Catch: Exception -> 0x04f7, TryCatch #3 {Exception -> 0x04f7, blocks: (B:204:0x02ef, B:206:0x02f9, B:126:0x030c, B:128:0x0318, B:130:0x0322, B:131:0x0331, B:133:0x033b, B:134:0x0344, B:136:0x038a, B:137:0x0391, B:139:0x03ad, B:140:0x03b2, B:142:0x03bc, B:144:0x048a, B:145:0x048d, B:146:0x0497, B:150:0x04a7, B:151:0x04bb, B:155:0x04c7, B:187:0x03d2, B:192:0x03ee, B:194:0x0432, B:199:0x0454), top: B:203:0x02ef }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x048a A[Catch: Exception -> 0x04f7, TryCatch #3 {Exception -> 0x04f7, blocks: (B:204:0x02ef, B:206:0x02f9, B:126:0x030c, B:128:0x0318, B:130:0x0322, B:131:0x0331, B:133:0x033b, B:134:0x0344, B:136:0x038a, B:137:0x0391, B:139:0x03ad, B:140:0x03b2, B:142:0x03bc, B:144:0x048a, B:145:0x048d, B:146:0x0497, B:150:0x04a7, B:151:0x04bb, B:155:0x04c7, B:187:0x03d2, B:192:0x03ee, B:194:0x0432, B:199:0x0454), top: B:203:0x02ef }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0498 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0342  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void attachApplicationLocked(android.app.IApplicationThread r49, int r50, int r51, long r52) {
        /*
            Method dump skipped, instructions count: 1364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.attachApplicationLocked(android.app.IApplicationThread, int, int, long):void");
    }

    public final void attachApplication(IApplicationThread iApplicationThread, long j) {
        if (iApplicationThread == null) {
            throw new SecurityException("Invalid application interface");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                long clearCallingIdentity = Binder.clearCallingIdentity();
                attachApplicationLocked(iApplicationThread, callingPid, callingUid, j);
                Binder.restoreCallingIdentity(clearCallingIdentity);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010b A[Catch: all -> 0x0194, TryCatch #1 {all -> 0x0194, blocks: (B:16:0x0031, B:18:0x0038, B:22:0x0044, B:70:0x0048, B:64:0x0073, B:55:0x009a, B:57:0x009f, B:59:0x00a9, B:27:0x00c7, B:30:0x00d5, B:32:0x00d9, B:34:0x00e1, B:37:0x00f2, B:39:0x010b, B:40:0x011c, B:46:0x0125, B:47:0x012d, B:49:0x013d, B:50:0x014b, B:51:0x018f, B:62:0x00b0, B:67:0x0081, B:74:0x0056), top: B:15:0x0031, inners: #0, #3, #4, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x009a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0048 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void finishAttachApplicationInner(long r23, int r25, int r26) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.finishAttachApplicationInner(long, int, int):void");
    }

    public /* synthetic */ void lambda$finishAttachApplicationInner$4(String str, int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord processRecordLocked = this.mProcessList.getProcessRecordLocked(str, i);
                if (processRecordLocked != null && this.mActivityTaskManager.isDedicatedProcess(processRecordLocked.userId, processRecordLocked.processName)) {
                    this.mExt.promoteAsDedicatedLocked(processRecordLocked);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final void finishAttachApplication(long j) {
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        if (!this.mConstants.mEnableWaitForFinishAttachApplication) {
            Slog.i("ActivityManager", "Flag disabled. Ignoring finishAttachApplication from uid: " + callingUid + ". pid: " + callingPid);
            return;
        }
        if (callingPid == MY_PID && callingUid == 1000) {
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            finishAttachApplicationInner(j, callingUid, callingPid);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public static String getShortAction(String str) {
        int lastIndexOf;
        return (str == null || (lastIndexOf = str.lastIndexOf(46)) == -1 || lastIndexOf == str.length() + (-1)) ? str : str.substring(lastIndexOf + 1);
    }

    public void checkTime(long j, String str) {
        long uptimeMillis = SystemClock.uptimeMillis() - j;
        if (uptimeMillis > 50) {
            StringBuilder sb = new StringBuilder();
            sb.append("Slow operation: ");
            sb.append(uptimeMillis);
            sb.append("ms so far, now at ");
            sb.append(str);
            Slog.w("ActivityManager", sb.toString());
            if (uptimeMillis > 150) {
                PerfLog.d(8, sb.toString());
            }
        }
    }

    public void showBootMessage(CharSequence charSequence, boolean z) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException();
        }
        this.mWindowManager.showBootMessage(charSequence, z);
    }

    public final void finishBooting() {
        boolean z;
        TimingsTraceAndSlog timingsTraceAndSlog = new TimingsTraceAndSlog("ActivityManagerTiming", 64L);
        timingsTraceAndSlog.traceBegin("FinishBooting");
        EventLogTags.writeBootProgressAmsState(0, -1, 0, "finishBooting", "NULL");
        this.mProcessCpusetController = ProcessCpusetController.getController(this);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (!this.mBootAnimationComplete) {
                    this.mCallFinishBooting = true;
                    EventLogTags.writeBootProgressAmsState(0, -1, 2, "finishBooting", "mBootAnimationComplete is not ready");
                    return;
                }
                this.mCallFinishBooting = false;
                resetPriorityAfterLockedSection();
                Process.ZYGOTE_PROCESS.bootCompleted();
                VMRuntime.bootCompleted();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.QUERY_PACKAGE_RESTART");
                intentFilter.addDataScheme("package");
                this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.am.ActivityManagerService.10
                    public AnonymousClass10() {
                    }

                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        String[] stringArrayExtra = intent.getStringArrayExtra("android.intent.extra.PACKAGES");
                        if (stringArrayExtra != null) {
                            for (String str : stringArrayExtra) {
                                ActivityManagerService activityManagerService = ActivityManagerService.this;
                                ActivityManagerService.boostPriorityForLockedSection();
                                synchronized (activityManagerService) {
                                    try {
                                        if (ActivityManagerService.this.forceStopPackageLocked(str, -1, false, false, false, false, false, 0, "query restart")) {
                                            setResultCode(-1);
                                            ActivityManagerService.resetPriorityAfterLockedSection();
                                            return;
                                        }
                                    } catch (Throwable th) {
                                        ActivityManagerService.resetPriorityAfterLockedSection();
                                        throw th;
                                    }
                                }
                                ActivityManagerService.resetPriorityAfterLockedSection();
                            }
                        }
                    }
                }, intentFilter);
                try {
                    Slog.i("ActivityManager", "About to commit checkpoint");
                    InstallLocationUtils.getStorageManager().commitChanges();
                } catch (Exception unused) {
                    ((PowerManager) this.mInjector.getContext().getSystemService("power")).reboot("Checkpoint commit failed");
                }
                this.mDynamicHiddenApp.initDHAPostBoot();
                this.mSystemServiceManager.startBootPhase(timingsTraceAndSlog, 1000);
                this.mActivityTaskManager.initActivityManagerPerformance();
                if (DualDarManager.isOnDeviceOwnerEnabled()) {
                    boostPriorityForLockedSection();
                    synchronized (this) {
                        try {
                            int size = this.mProcessesOnHold.size();
                            if (size > 0) {
                                ArrayList arrayList = new ArrayList(this.mProcessesOnHold);
                                z = false;
                                for (int i = 0; i < size; i++) {
                                    if ("com.samsung.android.knox.containercore".equals(((ProcessRecord) arrayList.get(i)).processName)) {
                                        this.mProcessList.startProcessLocked((ProcessRecord) arrayList.get(i), new HostingRecord("on-hold"), 2);
                                        z = true;
                                    }
                                }
                            } else {
                                z = false;
                            }
                        } finally {
                        }
                    }
                    resetPriorityAfterLockedSection();
                    if (z) {
                        ensureAgentBinding();
                        DualDarManager.getInstance(this.mContext).ensureDataUnlockedIfRequired();
                    }
                }
                boostPriorityForLockedSection();
                synchronized (this) {
                    try {
                        int size2 = this.mProcessesOnHold.size();
                        if (size2 > 0) {
                            ArrayList arrayList2 = new ArrayList(this.mProcessesOnHold);
                            for (int i2 = 0; i2 < size2; i2++) {
                                if (((ProcessRecord) arrayList2.get(i2)).getWindowProcessController().getConfiguration().getLocales().isEmpty()) {
                                    Slog.d("ActivityManager", "Proc " + arrayList2.get(i2) + "has empty locales now, updating it with newly updated configuration.");
                                    ((ProcessRecord) arrayList2.get(i2)).getWindowProcessController().updateGlobalConfiguration();
                                }
                                this.mProcessList.startProcessLocked((ProcessRecord) arrayList2.get(i2), new HostingRecord("on-hold"), 2);
                            }
                        }
                        if (this.mFactoryTest == 1) {
                            resetPriorityAfterLockedSection();
                            return;
                        }
                        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(27), this.mConstants.POWER_CHECK_INTERVAL);
                        if (((Boolean) InitProperties.userspace_reboot_in_progress().orElse(Boolean.FALSE)).booleanValue()) {
                            UserspaceRebootLogger.noteUserspaceRebootSuccess();
                        }
                        SystemProperties.set("sys.boot_completed", "1");
                        SystemProperties.set("dev.bootcomplete", "1");
                        this.mUserController.onBootComplete(new IIntentReceiver.Stub() { // from class: com.android.server.am.ActivityManagerService.11
                            public AnonymousClass11() {
                            }

                            public void performReceive(Intent intent, int i3, String str, Bundle bundle, boolean z2, boolean z3, int i4) {
                                ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
                                ActivityManagerService.boostPriorityForProcLockedSection();
                                synchronized (activityManagerGlobalLock) {
                                    try {
                                        ActivityManagerService.this.mAppProfiler.requestPssAllProcsLPr(SystemClock.uptimeMillis(), true, false);
                                    } catch (Throwable th) {
                                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                                        throw th;
                                    }
                                }
                                ActivityManagerService.resetPriorityAfterProcLockedSection();
                            }
                        });
                        maybeLogUserspaceRebootEvent();
                        this.mUserController.scheduleStartProfiles();
                        if (CoreRune.MNO_TMO_DEVICE_REPORTING) {
                            Slog.d("ActivityManager", "TMO finishBooting");
                            DeviceReportingSecurityChecker.enable(this.mContext);
                            AppStateBroadcaster.enableIntentBroadcast(this.mContext, this.mProcessList.getProcessNamesLOSP());
                        }
                        resetPriorityAfterLockedSection();
                        showConsoleNotificationIfActive();
                        showMteOverrideNotificationIfActive();
                        MARsPolicyManager.getInstance().postInit(true);
                        FreecessController.getInstance().init(this.mContext, this);
                        Looper.getMainLooper().setPerfLogEnable();
                        new CountDownTimer(600000L, 600000L) { // from class: com.android.server.am.ActivityManagerService.12
                            @Override // android.os.CountDownTimer
                            public void onTick(long j) {
                            }

                            public AnonymousClass12(long j, long j2) {
                                super(j, j2);
                            }

                            @Override // android.os.CountDownTimer
                            public void onFinish() {
                                Slog.i("ActivityManager", "setMaxStartingBackgroundTimer onfinish");
                                ActivityManagerService.this.mServices.setMaxStartingBackground();
                            }
                        }.start();
                        this.mDynamicHiddenApp.bootBGSlotSettingTimer();
                        if (!(Settings.Secure.getInt(this.mContext.getContentResolver(), "sem_sp_edition_flipfont_changed", 0) == 1)) {
                            new FlipFontOptimizer().setFlipfont(this.mContext);
                            Settings.Secure.putInt(this.mContext.getContentResolver(), "sem_sp_edition_flipfont_changed", 1);
                        }
                        Slog.i("ActivityManager", "!@Boot: bootcomplete");
                        Slog.i("ActivityManager", "!@Boot_EBS_F: bootcomplete");
                        EventLogTags.writeBootProgressAmsState(0, -1, 2, "finishBooting", "NULL");
                        Pageboost.initPageboost(this.mContext, this);
                        Pageboost.updatePackages();
                        IntentFilter intentFilter2 = new IntentFilter();
                        intentFilter2.addAction("com.android.server.am.BROADCAST_SET_KPM_POLICY");
                        intentFilter2.addAction("com.android.server.am.BROADCAST_SET_KPM_DEBUG");
                        intentFilter2.addAction("com.android.server.am.BROADCAST_SET_KPM_STATE");
                        intentFilter2.addAction("com.android.server.am.BROADCAST_SET_KPM_ONOFF");
                        intentFilter2.addAction("com.sec.server.am.BROADCAST_SET_PMM_DMABUF_LEAK_DETECTOR_SOURCE");
                        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.android.server.am.ActivityManagerService.13
                            public AnonymousClass13() {
                            }

                            @Override // android.content.BroadcastReceiver
                            public void onReceive(Context context, Intent intent) {
                                if (ActivityManagerService.this.mKillPolicyManager == null) {
                                    return;
                                }
                                if ("com.android.server.am.BROADCAST_SET_KPM_POLICY".equals(intent.getAction())) {
                                    Slog.d("ActivityManager", "BROADCAST_SET_KPM_POLICY_RECEIVED");
                                    KillPolicyManager killPolicyManager = ActivityManagerService.this.mKillPolicyManager;
                                    KillPolicyManager.KPM_POLICY_ENABLE = true;
                                    return;
                                }
                                if ("com.android.server.am.BROADCAST_SET_KPM_DEBUG".equals(intent.getAction())) {
                                    Slog.d("ActivityManager", "BROADCAST_SET_KPM_DEBUG_RECEIVED");
                                    KillPolicyManager killPolicyManager2 = ActivityManagerService.this.mKillPolicyManager;
                                    KillPolicyManager.KPM_DEBUG = true;
                                    return;
                                }
                                if ("com.android.server.am.BROADCAST_SET_KPM_ONOFF".equals(intent.getAction())) {
                                    Slog.d("ActivityManager", "BROADCAST_SET_KPM_ONOFF_RECEIVED");
                                    if (ActivityManagerService.isPmmEnabled()) {
                                        ActivityManagerService.this.mKillPolicyManager.forceChangeState("Normal");
                                        ActivityManagerService.sPmmEnabledBySpcm = false;
                                        SystemProperties.set("persist.sys.kpm_onoff", "false");
                                        return;
                                    } else {
                                        ActivityManagerService.sPmmEnabledBySpcm = true;
                                        SystemProperties.set("persist.sys.kpm_onoff", "true");
                                        return;
                                    }
                                }
                                if ("com.android.server.am.BROADCAST_SET_KPM_STATE".equals(intent.getAction())) {
                                    Slog.d("ActivityManager", "BROADCAST_SET_KPM_STATE_RECEIVED");
                                    String stringExtra = intent.getStringExtra("KpmState");
                                    if (stringExtra != null && ActivityManagerService.this.mKillPolicyManager != null) {
                                        Slog.d("ActivityManager", "KPM CHANGE STATE: " + stringExtra);
                                        ActivityManagerService.this.mKillPolicyManager.forceChangeState(stringExtra);
                                        return;
                                    }
                                    Slog.d("ActivityManager", "getExtras is null");
                                    return;
                                }
                                if ("com.sec.server.am.BROADCAST_SET_PMM_DMABUF_LEAK_DETECTOR_SOURCE".equals(intent.getAction())) {
                                    Slog.d("ActivityManager", "BROADCAST_PMM_DMABUF_LEAK_DETECTOR_SOURCE_RECEIVED");
                                    String stringExtra2 = intent.getStringExtra("SOURCE");
                                    PersonalizedMemoryManager personalizedMemoryManager = PersonalizedMemoryManager.getInstance();
                                    if (personalizedMemoryManager == null || stringExtra2 == null) {
                                        return;
                                    }
                                    personalizedMemoryManager.receiveDmabufLeakDetectorSource(stringExtra2);
                                }
                            }
                        }, intentFilter2);
                        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda11
                            @Override // java.lang.Runnable
                            public final void run() {
                                ActivityManagerService.this.lambda$finishBooting$5();
                            }
                        });
                        if (CoreRune.FW_APPLOCK) {
                            this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda12
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ActivityManagerService.this.lambda$finishBooting$6();
                                }
                            });
                        }
                        timingsTraceAndSlog.traceEnd();
                    } finally {
                        resetPriorityAfterLockedSection();
                    }
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$10 */
    /* loaded from: classes.dex */
    public class AnonymousClass10 extends BroadcastReceiver {
        public AnonymousClass10() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String[] stringArrayExtra = intent.getStringArrayExtra("android.intent.extra.PACKAGES");
            if (stringArrayExtra != null) {
                for (String str : stringArrayExtra) {
                    ActivityManagerService activityManagerService = ActivityManagerService.this;
                    ActivityManagerService.boostPriorityForLockedSection();
                    synchronized (activityManagerService) {
                        try {
                            if (ActivityManagerService.this.forceStopPackageLocked(str, -1, false, false, false, false, false, 0, "query restart")) {
                                setResultCode(-1);
                                ActivityManagerService.resetPriorityAfterLockedSection();
                                return;
                            }
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                }
            }
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$11 */
    /* loaded from: classes.dex */
    public class AnonymousClass11 extends IIntentReceiver.Stub {
        public AnonymousClass11() {
        }

        public void performReceive(Intent intent, int i3, String str, Bundle bundle, boolean z2, boolean z3, int i4) {
            ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    ActivityManagerService.this.mAppProfiler.requestPssAllProcsLPr(SystemClock.uptimeMillis(), true, false);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterProcLockedSection();
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$12 */
    /* loaded from: classes.dex */
    public class AnonymousClass12 extends CountDownTimer {
        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }

        public AnonymousClass12(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            Slog.i("ActivityManager", "setMaxStartingBackgroundTimer onfinish");
            ActivityManagerService.this.mServices.setMaxStartingBackground();
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$13 */
    /* loaded from: classes.dex */
    public class AnonymousClass13 extends BroadcastReceiver {
        public AnonymousClass13() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (ActivityManagerService.this.mKillPolicyManager == null) {
                return;
            }
            if ("com.android.server.am.BROADCAST_SET_KPM_POLICY".equals(intent.getAction())) {
                Slog.d("ActivityManager", "BROADCAST_SET_KPM_POLICY_RECEIVED");
                KillPolicyManager killPolicyManager = ActivityManagerService.this.mKillPolicyManager;
                KillPolicyManager.KPM_POLICY_ENABLE = true;
                return;
            }
            if ("com.android.server.am.BROADCAST_SET_KPM_DEBUG".equals(intent.getAction())) {
                Slog.d("ActivityManager", "BROADCAST_SET_KPM_DEBUG_RECEIVED");
                KillPolicyManager killPolicyManager2 = ActivityManagerService.this.mKillPolicyManager;
                KillPolicyManager.KPM_DEBUG = true;
                return;
            }
            if ("com.android.server.am.BROADCAST_SET_KPM_ONOFF".equals(intent.getAction())) {
                Slog.d("ActivityManager", "BROADCAST_SET_KPM_ONOFF_RECEIVED");
                if (ActivityManagerService.isPmmEnabled()) {
                    ActivityManagerService.this.mKillPolicyManager.forceChangeState("Normal");
                    ActivityManagerService.sPmmEnabledBySpcm = false;
                    SystemProperties.set("persist.sys.kpm_onoff", "false");
                    return;
                } else {
                    ActivityManagerService.sPmmEnabledBySpcm = true;
                    SystemProperties.set("persist.sys.kpm_onoff", "true");
                    return;
                }
            }
            if ("com.android.server.am.BROADCAST_SET_KPM_STATE".equals(intent.getAction())) {
                Slog.d("ActivityManager", "BROADCAST_SET_KPM_STATE_RECEIVED");
                String stringExtra = intent.getStringExtra("KpmState");
                if (stringExtra != null && ActivityManagerService.this.mKillPolicyManager != null) {
                    Slog.d("ActivityManager", "KPM CHANGE STATE: " + stringExtra);
                    ActivityManagerService.this.mKillPolicyManager.forceChangeState(stringExtra);
                    return;
                }
                Slog.d("ActivityManager", "getExtras is null");
                return;
            }
            if ("com.sec.server.am.BROADCAST_SET_PMM_DMABUF_LEAK_DETECTOR_SOURCE".equals(intent.getAction())) {
                Slog.d("ActivityManager", "BROADCAST_PMM_DMABUF_LEAK_DETECTOR_SOURCE_RECEIVED");
                String stringExtra2 = intent.getStringExtra("SOURCE");
                PersonalizedMemoryManager personalizedMemoryManager = PersonalizedMemoryManager.getInstance();
                if (personalizedMemoryManager == null || stringExtra2 == null) {
                    return;
                }
                personalizedMemoryManager.receiveDmabufLeakDetectorSource(stringExtra2);
            }
        }
    }

    public /* synthetic */ void lambda$finishBooting$5() {
        if (MaintenanceModeManager.isInMaintenanceMode()) {
            Log.i("ActivityManager", "Switch to Maintenance mode");
            this.mUserController.switchUser(77);
        }
    }

    public /* synthetic */ void lambda$finishBooting$6() {
        this.mActivityTaskManager.mAppLockPolicy = AppLockPolicy.getInstance(this.mContext, this.mHandler);
    }

    public final void showConsoleNotificationIfActive() {
        if (SystemProperties.get("init.svc.console").equals(INetd.IF_FLAG_RUNNING)) {
            String string = this.mContext.getString(R.string.immersive_cling_description);
            ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).notifyAsUser(null, 55, new Notification.Builder(this.mContext, SystemNotificationChannels.DEVELOPER).setSmallIcon(17304219).setWhen(0L).setOngoing(true).setTicker(string).setDefaults(0).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).setContentTitle(string).setContentText(this.mContext.getString(R.string.imei)).setVisibility(1).build(), UserHandle.ALL);
        }
    }

    public final void showMteOverrideNotificationIfActive() {
        if (!Arrays.asList(SystemProperties.get("arm64.memtag.bootctl").split(",")).contains("memtag") && SystemProperties.getBoolean("ro.arm64.memtag.bootctl_supported", false) && Zygote.nativeSupportsMemoryTagging()) {
            String string = this.mContext.getString(R.string.wfc_mode_wifi_only_summary);
            ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).notifyAsUser(null, 69, new Notification.Builder(this.mContext, SystemNotificationChannels.DEVELOPER).setSmallIcon(17304219).setOngoing(true).setTicker(string).setDefaults(0).setColor(this.mContext.getColor(R.color.system_notification_accent_color)).setContentTitle(string).setContentText(this.mContext.getString(R.string.wfc_mode_cellular_preferred_summary)).setVisibility(1).build(), UserHandle.ALL);
        }
    }

    public void bootAnimationComplete() {
        boolean z;
        EventLogTags.writeBootProgressAmsState(0, -1, 0, "bootAnimationComplete", "NULL");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                z = this.mCallFinishBooting;
                this.mBootAnimationComplete = true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        if (z) {
            finishBooting();
        }
        EventLogTags.writeBootProgressAmsState(0, -1, 2, "bootAnimationComplete", "NULL");
    }

    public final void ensureBootCompleted() {
        boolean z;
        boolean z2;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                z = this.mBooting;
                this.mBooting = false;
                z2 = this.mBooted ? false : true;
                this.mBooted = true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        Slog.d("ActivityManager", "!@AM_BOOT_PROGRESS , ensureBootCompleted booting:" + z + " /enableScreen:" + z2 + " /caller:" + Debug.getCallers(2));
        if (z) {
            finishBooting();
        }
        if (z2) {
            this.mAtmInternal.enableScreenAfterBoot(this.mBooted);
        }
    }

    public IIntentSender getIntentSender(int i, String str, IBinder iBinder, String str2, int i2, Intent[] intentArr, String[] strArr, int i3, Bundle bundle, int i4) {
        return getIntentSenderWithFeature(i, str, null, iBinder, str2, i2, intentArr, strArr, i3, bundle, i4);
    }

    public IIntentSender getIntentSenderWithFeature(int i, String str, String str2, IBinder iBinder, String str3, int i2, Intent[] intentArr, String[] strArr, int i3, Bundle bundle, int i4) {
        enforceNotIsolatedCaller("getIntentSender");
        return getIntentSenderWithFeatureAsApp(i, str, str2, iBinder, str3, i2, intentArr, strArr, i3, bundle, i4, Binder.getCallingUid());
    }

    public IIntentSender getIntentSenderWithFeatureAsApp(int i, String str, String str2, IBinder iBinder, String str3, int i2, Intent[] intentArr, String[] strArr, int i3, Bundle bundle, int i4, int i5) {
        if (intentArr != null) {
            if (intentArr.length < 1) {
                throw new IllegalArgumentException("Intents array length must be >= 1");
            }
            int i6 = 0;
            while (i6 < intentArr.length) {
                Intent intent = intentArr[i6];
                if (intent != null) {
                    if (intent.hasFileDescriptors()) {
                        throw new IllegalArgumentException("File descriptors passed in Intent");
                    }
                    if (i == 1 && (intent.getFlags() & 33554432) != 0) {
                        throw new IllegalArgumentException("Can't use FLAG_RECEIVER_BOOT_UPGRADE here");
                    }
                    if (PendingIntent.isNewMutableDisallowedImplicitPendingIntent(i3, intent, i == 3)) {
                        boolean isChangeEnabled = CompatChanges.isChangeEnabled(236704164L, str, UserHandle.of(i4));
                        ActivityManagerUtils.logUnsafeIntentEvent(4, i5, intent, (strArr == null || i6 >= strArr.length) ? null : strArr[i6], isChangeEnabled);
                        if (isChangeEnabled) {
                            throw new IllegalArgumentException(str + ": Targeting U+ (version 34 and above) disallows creating or retrieving a PendingIntent with FLAG_MUTABLE, an implicit Intent within and without FLAG_NO_CREATE and FLAG_ALLOW_UNSAFE_IMPLICIT_INTENT for security reasons. To retrieve an already existing PendingIntent, use FLAG_NO_CREATE, however, to create a new PendingIntent with an implicit Intent use FLAG_IMMUTABLE.");
                        }
                    }
                    intentArr[i6] = new Intent(intent);
                }
                i6++;
            }
            if (strArr != null && strArr.length != intentArr.length) {
                throw new IllegalArgumentException("Intent array length does not match resolvedTypes length");
            }
        }
        if (bundle != null && bundle.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in options");
        }
        int handleIncomingUser = this.mUserController.handleIncomingUser(Binder.getCallingPid(), i5, i4, i == 1, 0, "getIntentSender", null);
        if (i4 == -2) {
            handleIncomingUser = -2;
        }
        if (i5 != 0 && i5 != 1000) {
            try {
                int packageUid = AppGlobals.getPackageManager().getPackageUid(str, 268435456L, UserHandle.getUserId(i5));
                if (!UserHandle.isSameApp(i5, packageUid)) {
                    String str4 = "Permission Denial: getIntentSender() from pid=" + Binder.getCallingPid() + ", uid=" + i5 + ", (need uid=" + packageUid + ") is not allowed to send as package " + str;
                    Slog.w("ActivityManager", str4);
                    throw new SecurityException(str4);
                }
            } catch (RemoteException e) {
                throw new SecurityException(e);
            }
        }
        if (i == 3) {
            return this.mAtmInternal.getIntentSender(i, str, str2, i5, handleIncomingUser, iBinder, str3, i2, intentArr, strArr, i3, bundle);
        }
        return this.mPendingIntentController.getIntentSender(i, str, str2, i5, handleIncomingUser, iBinder, str3, i2, intentArr, strArr, i3, bundle);
    }

    public int sendIntentSender(IApplicationThread iApplicationThread, IIntentSender iIntentSender, IBinder iBinder, int i, Intent intent, String str, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
        return sendIntentSender(iApplicationThread, iIntentSender, iBinder, i, intent, str, iIntentReceiver, str2, bundle, -1, -1);
    }

    public int sendIntentSender(IApplicationThread iApplicationThread, IIntentSender iIntentSender, IBinder iBinder, int i, Intent intent, String str, IIntentReceiver iIntentReceiver, String str2, Bundle bundle, int i2, int i3) {
        Intent intent2;
        if (iIntentSender instanceof PendingIntentRecord) {
            PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) iIntentSender;
            PendingIntentRecord.Key key = pendingIntentRecord.key;
            UserManagerInternal userManagerInternal = (UserManagerInternal) LocalServices.getService(UserManagerInternal.class);
            int callingUserId = UserHandle.getCallingUserId();
            if (UserManager.isVisibleBackgroundUsersEnabled() && key.userId == -2 && callingUserId != 0 && userManagerInternal.isUserVisible(callingUserId)) {
                EventLogTags.writeAmIntentSenderRedirectUser(callingUserId);
                return new PendingIntentRecord(pendingIntentRecord.controller, new PendingIntentRecord.Key(key.type, key.packageName, key.featureId, key.activity, key.who, key.requestCode, key.allIntents, key.allResolvedTypes, key.flags, key.options, callingUserId), pendingIntentRecord.uid).sendInner(iApplicationThread, i, intent, str, iBinder, iIntentReceiver, str2, null, null, 0, 0, 0, bundle, i2, i3);
            }
            return pendingIntentRecord.sendInner(iApplicationThread, i, intent, str, iBinder, iIntentReceiver, str2, null, null, 0, 0, 0, bundle, i2, i3);
        }
        if (intent == null) {
            Slog.wtf("ActivityManager", "Can't use null intent with direct IIntentSender call");
            intent2 = new Intent("android.intent.action.MAIN");
        } else {
            intent2 = intent;
        }
        if (iBinder != null) {
            try {
                int callingUid = Binder.getCallingUid();
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    String nameForUid = AppGlobals.getPackageManager().getNameForUid(callingUid);
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    Slog.wtf("ActivityManager", "Send a non-null allowlistToken to a non-PI target. Calling package: " + nameForUid + "; intent: " + intent2 + "; options: " + bundle);
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    throw th;
                }
            } catch (RemoteException unused) {
            }
        }
        iIntentSender.send(i, intent2, str, (IBinder) null, (IIntentReceiver) null, str2, bundle);
        if (iIntentReceiver == null) {
            return 0;
        }
        try {
            iIntentReceiver.performReceive(intent2, 0, (String) null, (Bundle) null, false, false, UserHandle.getCallingUserId());
            return 0;
        } catch (RemoteException unused2) {
            return 0;
        }
    }

    public void cancelIntentSender(IIntentSender iIntentSender) {
        this.mPendingIntentController.cancelIntentSender(iIntentSender);
    }

    public boolean registerIntentSenderCancelListenerEx(IIntentSender iIntentSender, IResultReceiver iResultReceiver) {
        return this.mPendingIntentController.registerIntentSenderCancelListener(iIntentSender, iResultReceiver);
    }

    public void unregisterIntentSenderCancelListener(IIntentSender iIntentSender, IResultReceiver iResultReceiver) {
        this.mPendingIntentController.unregisterIntentSenderCancelListener(iIntentSender, iResultReceiver);
    }

    public ActivityManager.PendingIntentInfo getInfoForIntentSender(IIntentSender iIntentSender) {
        if (iIntentSender instanceof PendingIntentRecord) {
            PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) iIntentSender;
            String str = pendingIntentRecord.key.packageName;
            int i = pendingIntentRecord.uid;
            boolean filterAppAccess = getPackageManagerInternal().filterAppAccess(str, Binder.getCallingUid(), UserHandle.getUserId(i));
            String str2 = filterAppAccess ? null : str;
            int i2 = filterAppAccess ? -1 : i;
            PendingIntentRecord.Key key = pendingIntentRecord.key;
            return new ActivityManager.PendingIntentInfo(str2, i2, (key.flags & 67108864) != 0, key.type);
        }
        return new ActivityManager.PendingIntentInfo((String) null, -1, false, 0);
    }

    public boolean isIntentSenderTargetedToPackage(IIntentSender iIntentSender) {
        if (!(iIntentSender instanceof PendingIntentRecord)) {
            return false;
        }
        try {
            PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) iIntentSender;
            if (pendingIntentRecord.key.allIntents == null) {
                return false;
            }
            int i = 0;
            while (true) {
                Intent[] intentArr = pendingIntentRecord.key.allIntents;
                if (i >= intentArr.length) {
                    return true;
                }
                Intent intent = intentArr[i];
                if (intent.getPackage() != null && intent.getComponent() != null) {
                    return false;
                }
                i++;
            }
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public void updateProxyPacConfigurationForKnoxVpn(HashMap hashMap, int i, ProxyInfo proxyInfo, HashSet hashSet) {
        boolean z;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                try {
                    for (int lruSizeLOSP = this.mProcessList.getLruSizeLOSP() - 1; lruSizeLOSP >= 0; lruSizeLOSP--) {
                        ProcessRecord processRecord = (ProcessRecord) this.mProcessList.getLruProcessesLOSP().get(lruSizeLOSP);
                        if (processRecord.uid == i && processRecord.getThread() != null) {
                            Log.d("ActivityManager", "knox vpn pac proxy setting is not going to be set for the uid in AMS" + processRecord.uid);
                        } else {
                            Iterator it = hashSet.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z = false;
                                    break;
                                }
                                if (processRecord.uid == ((Integer) it.next()).intValue()) {
                                    Log.d("ActivityManager", "knox vpn pac proxy setting is not going to be set for the exempted uid in AMS" + processRecord.uid);
                                    z = true;
                                    break;
                                }
                            }
                            if (!z) {
                                if (processRecord.getThread() != null && hashMap.containsKey(Integer.valueOf(processRecord.uid))) {
                                    Log.d("ActivityManager", "knox vpn pac proxy setting has been set for the uid of the knox vpn application in AMS " + processRecord.uid);
                                    processRecord.getThread().setHttpProxyInfo(new ProxyInfoWrapper(proxyInfo));
                                } else if (processRecord.getThread() != null && hashMap.containsKey(Integer.valueOf(processRecord.userId))) {
                                    Log.d("ActivityManager", "knox vpn pac proxy setting has been set for the user in AMS " + processRecord.userId + " and the uid is " + processRecord.uid);
                                    processRecord.getThread().setHttpProxyInfo(new ProxyInfoWrapper(proxyInfo));
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    Log.e("ActivityManager", "Exception occurred while updating the proxy configuration for knox vpn profile " + Log.getStackTraceString(e));
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public boolean checkIfProcessIsRunning(String str, int i) {
        boolean z;
        if (Binder.getCallingUid() == 1000) {
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    z = getProcessRecordLocked(str, i) != null;
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            Log.d("ActivityManager", "check to see if the app added to knox vpn profile is running " + z);
            return z;
        }
        throw new SecurityException("The caller is not authorized to access the API");
    }

    public boolean isImsProcess(String str) {
        return "com.sec.sve".equals(str);
    }

    public boolean needToBlockImsRequest(String str, int i) {
        return isImsProcess(str) && i != ActivityManager.getCurrentUser();
    }

    public final void startImsService(String str) {
        Slog.d("ActivityManager", "[IMS-AM] startImsService() Start [" + str + "] of active user [" + ActivityManager.getCurrentUser() + "]");
        this.mContext.startServiceAsUser(new Intent("com.sec.sve.service.SecVideoEngineService").setPackage(str), UserHandle.CURRENT);
    }

    public boolean isIntentSenderAnActivity(IIntentSender iIntentSender) {
        if (iIntentSender instanceof PendingIntentRecord) {
            return ((PendingIntentRecord) iIntentSender).key.type == 2;
        }
        return false;
    }

    public Intent getIntentForIntentSender(IIntentSender iIntentSender) {
        enforceCallingPermission("android.permission.GET_INTENT_SENDER_INTENT", "getIntentForIntentSender()");
        if (!(iIntentSender instanceof PendingIntentRecord)) {
            return null;
        }
        try {
            PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) iIntentSender;
            if (pendingIntentRecord.key.requestIntent != null) {
                return new Intent(pendingIntentRecord.key.requestIntent);
            }
            return null;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public ParceledListSlice queryIntentComponentsForIntentSender(IIntentSender iIntentSender, int i) {
        enforceCallingPermission("android.permission.GET_INTENT_SENDER_INTENT", "queryIntentComponentsForIntentSender()");
        Objects.requireNonNull(iIntentSender);
        try {
            PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) iIntentSender;
            PendingIntentRecord.Key key = pendingIntentRecord.key;
            Intent intent = key.requestIntent;
            if (intent == null) {
                return null;
            }
            int i2 = key.userId;
            int i3 = pendingIntentRecord.uid;
            String str = key.requestResolvedType;
            int i4 = key.type;
            if (i4 == 1) {
                return new ParceledListSlice(this.mPackageManagerInt.queryIntentReceivers(intent, str, i, i3, i2, false));
            }
            if (i4 == 2) {
                return new ParceledListSlice(this.mPackageManagerInt.queryIntentActivities(intent, str, i, i3, i2));
            }
            if (i4 == 4 || i4 == 5) {
                return new ParceledListSlice(this.mPackageManagerInt.queryIntentServices(intent, i, i3, i2));
            }
            throw new IllegalStateException("Unsupported intent sender type: " + pendingIntentRecord.key.type);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public String getTagForIntentSender(IIntentSender iIntentSender, String str) {
        String tagForIntentSenderLocked;
        if (!(iIntentSender instanceof PendingIntentRecord)) {
            return null;
        }
        try {
            PendingIntentRecord pendingIntentRecord = (PendingIntentRecord) iIntentSender;
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    tagForIntentSenderLocked = getTagForIntentSenderLocked(pendingIntentRecord, str);
                } finally {
                }
            }
            resetPriorityAfterLockedSection();
            return tagForIntentSenderLocked;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public String getTagForIntentSenderLocked(PendingIntentRecord pendingIntentRecord, String str) {
        String str2;
        Intent intent = pendingIntentRecord.key.requestIntent;
        if (intent == null) {
            return null;
        }
        if (pendingIntentRecord.lastTag != null && (str2 = pendingIntentRecord.lastTagPrefix) == str && (str2 == null || str2.equals(str))) {
            return pendingIntentRecord.lastTag;
        }
        pendingIntentRecord.lastTagPrefix = str;
        StringBuilder sb = new StringBuilder(128);
        if (str != null) {
            sb.append(str);
        }
        if (intent.getAction() != null) {
            sb.append(intent.getAction());
        } else if (intent.getComponent() != null) {
            intent.getComponent().appendShortString(sb);
        } else {
            sb.append("?");
        }
        String sb2 = sb.toString();
        pendingIntentRecord.lastTag = sb2;
        return sb2;
    }

    public void setProcessLimit(int i) {
        RestrictionPolicy restrictionPolicy;
        enforceCallingPermission("android.permission.SET_PROCESS_LIMIT", "setProcessLimit()");
        if (i >= 0 && (restrictionPolicy = this.mRestrictionPolicy) != null && !restrictionPolicy.isBackgroundProcessLimitAllowed()) {
            Slog.v("ActivityManager", "setProcessLimit: denied");
            return;
        }
        Slog.v("ActivityManager", "setProcessLimit: " + i + " from uid " + Binder.getCallingUid() + " pid " + Binder.getCallingPid());
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mConstants.setOverrideMaxCachedProcesses(i);
                trimApplicationsLocked(true, 12);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public int getProcessLimit() {
        int overrideMaxCachedProcesses;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                overrideMaxCachedProcesses = this.mConstants.getOverrideMaxCachedProcesses();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return overrideMaxCachedProcesses;
    }

    public void importanceTokenDied(ImportanceToken importanceToken) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                synchronized (this.mPidsSelfLocked) {
                    if (((ImportanceToken) this.mImportantProcesses.get(importanceToken.pid)) != importanceToken) {
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    this.mImportantProcesses.remove(importanceToken.pid);
                    ProcessRecord processRecord = this.mPidsSelfLocked.get(importanceToken.pid);
                    if (processRecord == null) {
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    processRecord.mState.setForcingToImportant(null);
                    clearProcessForegroundLocked(processRecord);
                    updateOomAdjLocked(processRecord, 9);
                    resetPriorityAfterLockedSection();
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf A[Catch: all -> 0x0102, TryCatch #0 {, blocks: (B:10:0x0054, B:13:0x005e, B:14:0x0075, B:19:0x007b, B:23:0x008a, B:73:0x008e, B:25:0x009d, B:27:0x00a1, B:30:0x00a7, B:31:0x00a9, B:33:0x00b0, B:38:0x00bf, B:40:0x00c6, B:42:0x00cb, B:43:0x00ce, B:45:0x00d5, B:46:0x00d7, B:47:0x00e8, B:63:0x00c9, B:65:0x00df, B:67:0x00e4, B:70:0x00e2, B:74:0x0091, B:77:0x0094, B:80:0x0098, B:81:0x009b), top: B:9:0x0054, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00eb A[Catch: all -> 0x0105, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0105, blocks: (B:7:0x0051, B:8:0x0053, B:15:0x0076, B:49:0x00eb, B:53:0x00f4, B:56:0x00f9, B:57:0x00fc, B:58:0x00fd, B:87:0x0104, B:10:0x0054, B:13:0x005e, B:14:0x0075, B:19:0x007b, B:23:0x008a, B:73:0x008e, B:25:0x009d, B:27:0x00a1, B:30:0x00a7, B:31:0x00a9, B:33:0x00b0, B:38:0x00bf, B:40:0x00c6, B:42:0x00cb, B:43:0x00ce, B:45:0x00d5, B:46:0x00d7, B:47:0x00e8, B:63:0x00c9, B:65:0x00df, B:67:0x00e4, B:70:0x00e2, B:74:0x0091, B:77:0x0094, B:80:0x0098, B:81:0x009b, B:52:0x00f1), top: B:6:0x0051, inners: #0, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setProcessImportant(android.os.IBinder r10, int r11, boolean r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.setProcessImportant(android.os.IBinder, int, boolean, java.lang.String):void");
    }

    /* renamed from: com.android.server.am.ActivityManagerService$14 */
    /* loaded from: classes.dex */
    public class AnonymousClass14 extends ImportanceToken {
        public AnonymousClass14(int i, String str) {
            super(i, str);
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ActivityManagerService.this.importanceTokenDied(this);
        }
    }

    public final boolean isAppForeground(int i) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                UidRecord uidRecord = this.mProcessList.mActiveUids.get(i);
                if (uidRecord != null && !uidRecord.isIdle()) {
                    boolean z = uidRecord.getCurProcState() <= 6;
                    resetPriorityAfterProcLockedSection();
                    return z;
                }
                resetPriorityAfterProcLockedSection();
                return false;
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public final boolean isAppBad(String str, int i) {
        return this.mAppErrors.isBadProcess(str, i);
    }

    public int getUidState(int i) {
        int uidProcStateLOSP;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                uidProcStateLOSP = this.mProcessList.getUidProcStateLOSP(i);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return uidProcStateLOSP;
    }

    public int getUidStateLocked(int i) {
        return this.mProcessList.getUidProcStateLOSP(i);
    }

    public int getUidProcessCapabilityLocked(int i) {
        return this.mProcessList.getUidProcessCapabilityLOSP(i);
    }

    /* loaded from: classes.dex */
    public class ProcessInfoService extends IProcessInfoService.Stub {
        public final ActivityManagerService mActivityManagerService;

        public ProcessInfoService(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        public void getProcessStatesFromPids(int[] iArr, int[] iArr2) {
            this.mActivityManagerService.getProcessStatesAndOomScoresForPIDs(iArr, iArr2, null);
        }

        public void getProcessStatesAndOomScoresFromPids(int[] iArr, int[] iArr2, int[] iArr3) {
            this.mActivityManagerService.getProcessStatesAndOomScoresForPIDs(iArr, iArr2, iArr3);
        }
    }

    public void getProcessStatesAndOomScoresForPIDs(int[] iArr, int[] iArr2, int[] iArr3) {
        if (iArr3 != null) {
            enforceCallingPermission("android.permission.GET_PROCESS_STATE_AND_OOM_SCORE", "getProcessStatesAndOomScoresForPIDs()");
        }
        if (iArr == null) {
            throw new NullPointerException("pids");
        }
        if (iArr2 == null) {
            throw new NullPointerException("states");
        }
        if (iArr.length != iArr2.length) {
            throw new IllegalArgumentException("pids and states arrays have different lengths!");
        }
        if (iArr3 != null && iArr.length != iArr3.length) {
            throw new IllegalArgumentException("pids and scores arrays have different lengths!");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                synchronized (this.mPidsSelfLocked) {
                    long j = Long.MIN_VALUE;
                    int i = -1;
                    for (int i2 = 0; i2 < iArr.length; i2++) {
                        ProcessRecord processRecord = this.mPidsSelfLocked.get(iArr[i2]);
                        if (processRecord != null) {
                            long pendingTopPidTime = this.mPendingStartActivityUids.getPendingTopPidTime(processRecord.uid, iArr[i2]);
                            if (pendingTopPidTime != 0) {
                                iArr2[i2] = 2;
                                if (iArr3 != null) {
                                    iArr3[i2] = -1;
                                }
                                if (pendingTopPidTime > j) {
                                    i = i2;
                                    j = pendingTopPidTime;
                                }
                            } else {
                                iArr2[i2] = processRecord.mState.getCurProcState();
                                if (iArr3 != null) {
                                    iArr3[i2] = processRecord.mState.getCurAdj();
                                }
                            }
                        } else {
                            iArr2[i2] = 20;
                            if (iArr3 != null) {
                                iArr3[i2] = -10000;
                            }
                        }
                    }
                    if (i != -1 && iArr3 != null) {
                        iArr3[i] = -2;
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    /* loaded from: classes.dex */
    public class PermissionController extends IPermissionController.Stub {
        public ActivityManagerService mActivityManagerService;

        public PermissionController(ActivityManagerService activityManagerService) {
            this.mActivityManagerService = activityManagerService;
        }

        public boolean checkPermission(String str, int i, int i2) {
            return this.mActivityManagerService.checkPermission(str, i, i2) == 0;
        }

        public int noteOp(String str, int i, String str2) {
            return this.mActivityManagerService.mAppOpsService.noteOperation(AppOpsManager.strOpToOp(str), i, str2, null, false, "", false).getOpMode();
        }

        public String[] getPackagesForUid(int i) {
            return this.mActivityManagerService.mContext.getPackageManager().getPackagesForUid(i);
        }

        public boolean isRuntimePermission(String str) {
            try {
                return (this.mActivityManagerService.mContext.getPackageManager().getPermissionInfo(str, 0).protectionLevel & 15) == 1;
            } catch (PackageManager.NameNotFoundException e) {
                Slog.e("ActivityManager", "No such permission: " + str, e);
                return false;
            }
        }

        public int getPackageUid(String str, int i) {
            try {
                return this.mActivityManagerService.mContext.getPackageManager().getPackageUid(str, i);
            } catch (PackageManager.NameNotFoundException unused) {
                return -1;
            }
        }
    }

    /* loaded from: classes.dex */
    public class IntentFirewallInterface implements IntentFirewall.AMSInterface {
        public IntentFirewallInterface() {
        }

        @Override // com.android.server.firewall.IntentFirewall.AMSInterface
        public int checkComponentPermission(String str, int i, int i2, int i3, boolean z) {
            return ActivityManagerService.checkComponentPermission(str, i, i2, i3, z);
        }

        @Override // com.android.server.firewall.IntentFirewall.AMSInterface
        public Object getAMSLock() {
            return ActivityManagerService.this;
        }
    }

    public static int checkComponentPermission(String str, int i, int i2, int i3, boolean z) {
        ArraySet arraySet;
        if (i == MY_PID) {
            return 0;
        }
        String packageNameFromPid = ASKSManager.getPackageNameFromPid(i);
        if (packageNameFromPid != null && ASKSManager.isRestrictedTarget(packageNameFromPid, "REVOKE")) {
            try {
                if (ASKSManager.getASKSManager() != null) {
                    if (ASKSManager.getASKSManager().checkRestrictedPermission(packageNameFromPid, str) == 4) {
                        Slog.e("AASA_ActivityManager", "denied =" + i + " " + str);
                        return -1;
                    }
                } else {
                    Slog.e("AASA_ActivityManager", "ASKSManager is null.");
                }
            } catch (RemoteException unused) {
            }
        }
        if (str != null) {
            SparseArray sparseArray = sActiveProcessInfoSelfLocked;
            synchronized (sparseArray) {
                ProcessInfo processInfo = (ProcessInfo) sparseArray.get(i);
                if (processInfo != null && (arraySet = processInfo.deniedPermissions) != null && arraySet.contains(str)) {
                    return -1;
                }
            }
        }
        return ActivityManager.checkComponentPermission(str, i2, i3, z);
    }

    public final boolean isHeapDumpAllowed() {
        if (!USER_BUILD || !SHIP_BUILD || "0x1".equals(SystemProperties.get("ro.boot.em.status", "0x0"))) {
            return true;
        }
        EngineeringModeManager engineeringModeManager = new EngineeringModeManager(this.mContext);
        if (engineeringModeManager.isConnected() && engineeringModeManager.getStatus(65) == 1) {
            return true;
        }
        if (IS_JDM_PROJECT && isTestAppInstalled()) {
            return true;
        }
        Slog.i("ActivityManager", "heapdump is not allowed");
        return false;
    }

    public final boolean isTestAppInstalled() {
        String[] strArr = {"com.salab.act", "com.salab.issuetracker"};
        for (int i = 0; i < 2; i++) {
            if (AppGlobals.getPackageManager().getApplicationInfo(strArr[i], 128L, UserHandle.getCallingUserId()) != null) {
                return true;
            }
        }
        return false;
    }

    public final void enforceDebuggable(ProcessRecord processRecord) {
        if ((isHeapDumpAllowed() && (processRecord.getProcessClassEnum() == 2 || processRecord.getProcessClassEnum() == 3)) || Build.IS_DEBUGGABLE || processRecord.isDebuggable()) {
            return;
        }
        throw new SecurityException("Process not debuggable: " + processRecord.info.packageName);
    }

    public final void enforceDebuggable(ApplicationInfo applicationInfo) {
        if (Build.IS_DEBUGGABLE || (applicationInfo.flags & 2) != 0) {
            return;
        }
        throw new SecurityException("Process not debuggable: " + applicationInfo.packageName);
    }

    public int checkPermission(String str, int i, int i2) {
        if (str == null) {
            return -1;
        }
        return checkComponentPermission(str, i, i2, -1, true);
    }

    public int checkCallingPermission(String str) {
        return checkPermission(str, Binder.getCallingPid(), Binder.getCallingUid());
    }

    public void enforceCallingPermission(String str, String str2) {
        if (checkCallingPermission(str) == 0) {
            return;
        }
        String str3 = "Permission Denial: " + str2 + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires " + str;
        Slog.w("ActivityManager", str3);
        throw new SecurityException(str3);
    }

    public final void enforceCallingHasAtLeastOnePermission(String str, String... strArr) {
        for (String str2 : strArr) {
            if (checkCallingPermission(str2) == 0) {
                return;
            }
        }
        String str3 = "Permission Denial: " + str + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires one of " + Arrays.toString(strArr);
        Slog.w("ActivityManager", str3);
        throw new SecurityException(str3);
    }

    public void enforcePermission(String str, int i, int i2, String str2) {
        if (checkPermission(str, i, i2) == 0) {
            return;
        }
        String str3 = "Permission Denial: " + str2 + " from pid=" + i + ", uid=" + i2 + " requires " + str;
        Slog.w("ActivityManager", str3);
        throw new SecurityException(str3);
    }

    public boolean isAppStartModeDisabled(int i, String str) {
        boolean z;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                z = getAppStartModeLOSP(i, str, 0, -1, false, true, false) == 3;
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return z;
    }

    public final boolean isInRestrictedBucket(int i, String str, long j) {
        return 45 <= this.mUsageStatsService.getAppStandbyBucket(str, i, j);
    }

    public int appRestrictedInBackgroundLOSP(int i, String str, int i2) {
        if (i2 >= 26) {
            return 2;
        }
        if (this.mOnBattery && this.mConstants.FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS && isInRestrictedBucket(UserHandle.getUserId(i), str, SystemClock.elapsedRealtime())) {
            return 1;
        }
        int noteOpNoThrow = getAppOpsManager().noteOpNoThrow(63, i, str, (String) null, "");
        return noteOpNoThrow != 0 ? noteOpNoThrow != 1 ? 2 : 1 : (!this.mForceBackgroundCheck || UserHandle.isCore(i) || isOnDeviceIdleAllowlistLOSP(i, true)) ? 0 : 1;
    }

    public int appServicesRestrictedInBackgroundLOSP(int i, String str, int i2) {
        if (this.mPackageManagerInt.isPackagePersistent(str) || uidOnBackgroundAllowlistLOSP(i) || isOnDeviceIdleAllowlistLOSP(i, false)) {
            return 0;
        }
        return appRestrictedInBackgroundLOSP(i, str, i2);
    }

    public int getAppStartModeLOSP(int i, String str, int i2, int i3, boolean z, boolean z2, boolean z3) {
        boolean isEphemeral;
        int appServicesRestrictedInBackgroundLOSP;
        ProcessRecord processRecord;
        if (this.mInternal.isPendingTopUid(i)) {
            return 0;
        }
        UidRecord uidRecordLOSP = this.mProcessList.getUidRecordLOSP(i);
        if (uidRecordLOSP != null && !z && !z3 && !uidRecordLOSP.isIdle()) {
            return 0;
        }
        if (uidRecordLOSP == null) {
            isEphemeral = getPackageManagerInternal().isPackageEphemeral(UserHandle.getUserId(i), str);
        } else {
            isEphemeral = uidRecordLOSP.isEphemeral();
        }
        if (isEphemeral) {
            return 3;
        }
        if (z2) {
            return 0;
        }
        if (z) {
            appServicesRestrictedInBackgroundLOSP = appRestrictedInBackgroundLOSP(i, str, i2);
        } else {
            appServicesRestrictedInBackgroundLOSP = appServicesRestrictedInBackgroundLOSP(i, str, i2);
        }
        if (appServicesRestrictedInBackgroundLOSP == 1 && i3 >= 0) {
            synchronized (this.mPidsSelfLocked) {
                processRecord = this.mPidsSelfLocked.get(i3);
            }
            if (processRecord != null && !ActivityManager.isProcStateBackground(processRecord.mState.getCurProcState())) {
                return 0;
            }
        }
        return appServicesRestrictedInBackgroundLOSP;
    }

    public boolean isOnDeviceIdleAllowlistLOSP(int i, boolean z) {
        int[] iArr;
        int appId = UserHandle.getAppId(i);
        if (z) {
            iArr = this.mDeviceIdleExceptIdleAllowlist;
        } else {
            iArr = this.mDeviceIdleAllowlist;
        }
        return Arrays.binarySearch(iArr, appId) >= 0 || Arrays.binarySearch(this.mDeviceIdleTempAllowlist, appId) >= 0 || this.mPendingTempAllowlist.get(i) != null;
    }

    public FgsTempAllowListItem isAllowlistedForFgsStartLOSP(int i) {
        if (Arrays.binarySearch(this.mDeviceIdleExceptIdleAllowlist, UserHandle.getAppId(i)) >= 0) {
            return FAKE_TEMP_ALLOW_LIST_ITEM;
        }
        Pair pair = this.mFgsStartTempAllowList.get(i);
        if (pair == null) {
            return null;
        }
        return (FgsTempAllowListItem) pair.second;
    }

    /* loaded from: classes.dex */
    public class GetBackgroundStartPrivilegesFunctor implements Consumer {
        public BackgroundStartPrivileges mBackgroundStartPrivileges;
        public int mUid;

        public /* synthetic */ GetBackgroundStartPrivilegesFunctor(GetBackgroundStartPrivilegesFunctorIA getBackgroundStartPrivilegesFunctorIA) {
            this();
        }

        public GetBackgroundStartPrivilegesFunctor() {
            this.mBackgroundStartPrivileges = BackgroundStartPrivileges.NONE;
        }

        public void prepare(int i) {
            this.mUid = i;
            this.mBackgroundStartPrivileges = BackgroundStartPrivileges.NONE;
        }

        public BackgroundStartPrivileges getResult() {
            return this.mBackgroundStartPrivileges;
        }

        @Override // java.util.function.Consumer
        public void accept(ProcessRecord processRecord) {
            if (processRecord.uid == this.mUid) {
                this.mBackgroundStartPrivileges = this.mBackgroundStartPrivileges.merge(processRecord.getBackgroundStartPrivileges());
            }
        }
    }

    public final BackgroundStartPrivileges getBackgroundStartPrivileges(int i) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                UidRecord uidRecordLOSP = this.mProcessList.getUidRecordLOSP(i);
                if (uidRecordLOSP == null) {
                    BackgroundStartPrivileges backgroundStartPrivileges = BackgroundStartPrivileges.NONE;
                    resetPriorityAfterProcLockedSection();
                    return backgroundStartPrivileges;
                }
                this.mGetBackgroundStartPrivilegesFunctor.prepare(i);
                uidRecordLOSP.forEachProcess(this.mGetBackgroundStartPrivilegesFunctor);
                BackgroundStartPrivileges result = this.mGetBackgroundStartPrivilegesFunctor.getResult();
                resetPriorityAfterProcLockedSection();
                return result;
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public final boolean isProcessInStateToScheduleUserInitiatedJobsLocked(ProcessRecord processRecord, long j) {
        if (processRecord == null) {
            return false;
        }
        if (processRecord.getBackgroundStartPrivileges().allowsBackgroundActivityStarts()) {
            return true;
        }
        ProcessStateRecord processStateRecord = processRecord.mState;
        int curProcState = processStateRecord.getCurProcState();
        if (curProcState <= 3 && doesReasonCodeAllowSchedulingUserInitiatedJobs(PowerExemptionManager.getReasonCodeFromProcState(curProcState))) {
            return true;
        }
        long lastInvisibleTime = processStateRecord.getLastInvisibleTime();
        if (lastInvisibleTime > 0 && lastInvisibleTime < Long.MAX_VALUE && j - lastInvisibleTime < this.mConstants.mVisibleToInvisibleUijScheduleGraceDurationMs) {
            return true;
        }
        ProcessServiceRecord processServiceRecord = processRecord.mServices;
        if (processServiceRecord != null && processServiceRecord.hasForegroundServices()) {
            for (int numberOfRunningServices = processServiceRecord.numberOfRunningServices() - 1; numberOfRunningServices >= 0; numberOfRunningServices--) {
                ServiceRecord runningServiceAt = processServiceRecord.getRunningServiceAt(numberOfRunningServices);
                if (runningServiceAt.isForeground && runningServiceAt.mAllowUiJobScheduling) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean canScheduleUserInitiatedJobs(int i, int i2, String str) {
        ProcessRecord processRecord;
        BackgroundStartPrivileges backgroundStartPrivileges;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                synchronized (this.mPidsSelfLocked) {
                    processRecord = this.mPidsSelfLocked.get(i2);
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (processRecord != null) {
                    if (isProcessInStateToScheduleUserInitiatedJobsLocked(processRecord, elapsedRealtime)) {
                        resetPriorityAfterLockedSection();
                        return true;
                    }
                    backgroundStartPrivileges = processRecord.getBackgroundStartPrivileges();
                } else {
                    backgroundStartPrivileges = getBackgroundStartPrivileges(i);
                }
                BackgroundStartPrivileges backgroundStartPrivileges2 = backgroundStartPrivileges;
                if (backgroundStartPrivileges2.allowsBackgroundActivityStarts()) {
                    resetPriorityAfterLockedSection();
                    return true;
                }
                if (this.mServices.canAllowWhileInUsePermissionInFgsLocked(i2, i, str, processRecord, backgroundStartPrivileges2)) {
                    resetPriorityAfterLockedSection();
                    return true;
                }
                UidRecord uidRecordLOSP = this.mProcessList.getUidRecordLOSP(i);
                if (uidRecordLOSP != null) {
                    for (int numOfProcs = uidRecordLOSP.getNumOfProcs() - 1; numOfProcs >= 0; numOfProcs--) {
                        if (isProcessInStateToScheduleUserInitiatedJobsLocked(uidRecordLOSP.getProcessRecordByIndex(numOfProcs), elapsedRealtime)) {
                            resetPriorityAfterLockedSection();
                            return true;
                        }
                    }
                }
                if (this.mAtmInternal.hasSystemAlertWindowPermission(i, i2, str)) {
                    resetPriorityAfterLockedSection();
                    return true;
                }
                if (this.mInternal.isAssociatedCompanionApp(UserHandle.getUserId(i), i) && checkPermission("android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND", i2, i) == 0) {
                    resetPriorityAfterLockedSection();
                    return true;
                }
                resetPriorityAfterLockedSection();
                return false;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void grantImplicitAccess(int i, Intent intent, int i2, int i3) {
        getPackageManagerInternal().grantImplicitAccess(i, intent, i3, i2, true);
    }

    public int checkUriPermission(Uri uri, int i, int i2, int i3, int i4, IBinder iBinder) {
        enforceNotIsolatedCaller("checkUriPermission");
        if (i == MY_PID) {
            return 0;
        }
        return ((i2 == 0 || !this.mPackageManagerInt.filterAppAccess(i2, Binder.getCallingUid())) && this.mUgmInternal.checkUriPermission(new GrantUri(i4, uri, i3), i2, i3)) ? 0 : -1;
    }

    public int[] checkUriPermissions(List list, int i, int i2, int i3, int i4, IBinder iBinder) {
        int size = list.size();
        int[] iArr = new int[size];
        Arrays.fill(iArr, -1);
        for (int i5 = 0; i5 < size; i5++) {
            Uri uri = (Uri) list.get(i5);
            iArr[i5] = checkUriPermission(ContentProvider.getUriWithoutUserId(uri), i, i2, i3, ContentProvider.getUserIdFromUri(uri, i4), iBinder);
        }
        return iArr;
    }

    public void grantUriPermission(IApplicationThread iApplicationThread, String str, Uri uri, int i, int i2) {
        enforceNotIsolatedCaller("grantUriPermission");
        GrantUri grantUri = new GrantUri(i2, uri, i);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord recordForAppLOSP = getRecordForAppLOSP(iApplicationThread);
                if (recordForAppLOSP == null) {
                    throw new SecurityException("Unable to find app for caller " + iApplicationThread + " when granting permission to uri " + grantUri);
                }
                if (str == null) {
                    throw new IllegalArgumentException("null target");
                }
                int userId = UserHandle.getUserId(recordForAppLOSP.uid);
                if (this.mPackageManagerInt.filterAppAccess(str, recordForAppLOSP.uid, userId)) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                Preconditions.checkFlagsArgument(i, 195);
                Intent intent = new Intent();
                intent.setData(uri);
                intent.setFlags(i);
                if (i2 != UserHandle.getUserId(recordForAppLOSP.uid) && (SemPersonaManager.isSecureFolderId(i2) || SemPersonaManager.isSecureFolderId(UserHandle.getUserId(recordForAppLOSP.uid)))) {
                    intent.prepareToLeaveUser(i2);
                }
                if (i2 != UserHandle.getUserId(recordForAppLOSP.uid) && (SemDualAppManager.isDualAppId(i2) || SemDualAppManager.isDualAppId(UserHandle.getUserId(recordForAppLOSP.uid)))) {
                    intent.prepareToLeaveUser(i2);
                }
                this.mUgmInternal.grantUriPermissionUncheckedFromIntent(this.mUgmInternal.checkGrantUriPermissionFromIntent(intent, recordForAppLOSP.uid, str, userId), null);
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void revokeUriPermission(IApplicationThread iApplicationThread, String str, Uri uri, int i, int i2) {
        enforceNotIsolatedCaller("revokeUriPermission");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord recordForAppLOSP = getRecordForAppLOSP(iApplicationThread);
                if (recordForAppLOSP == null) {
                    throw new SecurityException("Unable to find app for caller " + iApplicationThread + " when revoking permission to uri " + uri);
                }
                if (uri == null) {
                    Slog.w("ActivityManager", "revokeUriPermission: null uri");
                    resetPriorityAfterLockedSection();
                    return;
                }
                if (!Intent.isAccessUriMode(i)) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                if (this.mCpHelper.getProviderInfoLocked(uri.getAuthority(), i2, 786432) == null) {
                    Slog.w("ActivityManager", "No content provider found for permission revoke: " + uri.toSafeString());
                    resetPriorityAfterLockedSection();
                    return;
                }
                this.mUgmInternal.revokeUriPermission(str, recordForAppLOSP.uid, new GrantUri(i2, uri, i), i);
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void showWaitingForDebugger(IApplicationThread iApplicationThread, boolean z) {
        ProcessRecord recordForAppLOSP;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            if (iApplicationThread != null) {
                try {
                    recordForAppLOSP = getRecordForAppLOSP(iApplicationThread);
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            } else {
                recordForAppLOSP = null;
            }
            if (recordForAppLOSP == null) {
                resetPriorityAfterProcLockedSection();
                return;
            }
            Message obtain = Message.obtain();
            obtain.what = 6;
            obtain.obj = recordForAppLOSP;
            obtain.arg1 = z ? 1 : 0;
            this.mUiHandler.sendMessage(obtain);
            resetPriorityAfterProcLockedSection();
        }
    }

    public void getMemoryInfo(ActivityManager.MemoryInfo memoryInfo) {
        this.mProcessList.getMemoryInfo(memoryInfo);
    }

    public List getTasks(int i) {
        return this.mActivityTaskManager.getTasks(i);
    }

    public void cancelTaskWindowTransition(int i) {
        this.mActivityTaskManager.cancelTaskWindowTransition(i);
    }

    public void setTaskResizeable(int i, int i2) {
        this.mActivityTaskManager.setTaskResizeable(i, i2);
    }

    public void resizeTask(int i, Rect rect, int i2) {
        this.mActivityTaskManager.resizeTask(i, rect, i2);
    }

    public Rect getTaskBounds(int i) {
        return this.mActivityTaskManager.getTaskBounds(i);
    }

    public boolean removeTask(int i) {
        return this.mActivityTaskManager.removeTask(i);
    }

    public void moveTaskToFront(IApplicationThread iApplicationThread, String str, int i, int i2, Bundle bundle) {
        this.mActivityTaskManager.moveTaskToFront(iApplicationThread, str, i, i2, bundle);
    }

    public boolean moveActivityTaskToBack(IBinder iBinder, boolean z) {
        return ActivityClient.getInstance().moveActivityTaskToBack(iBinder, z);
    }

    public void moveTaskToRootTask(int i, int i2, boolean z) {
        this.mActivityTaskManager.moveTaskToRootTask(i, i2, z);
    }

    public ParceledListSlice getRecentTasks(int i, int i2, int i3) {
        return this.mActivityTaskManager.getRecentTasks(i, i2, i3);
    }

    public List getAllRootTaskInfos() {
        return this.mActivityTaskManager.getAllRootTaskInfos();
    }

    public int getTaskForActivity(IBinder iBinder, boolean z) {
        return ActivityClient.getInstance().getTaskForActivity(iBinder, z);
    }

    public void updateLockTaskPackages(int i, String[] strArr) {
        this.mActivityTaskManager.updateLockTaskPackages(i, strArr);
    }

    public boolean isInLockTaskMode() {
        return this.mActivityTaskManager.isInLockTaskMode();
    }

    public int getLockTaskModeState() {
        return this.mActivityTaskManager.getLockTaskModeState();
    }

    public void startSystemLockTaskMode(int i) {
        RestrictionPolicy restrictionPolicy = this.mRestrictionPolicy;
        if (restrictionPolicy == null || restrictionPolicy.isScreenPinningAllowed()) {
            this.mActivityTaskManager.startSystemLockTaskMode(i);
        }
    }

    public void killProcessForChimera(String str, int i, String str2) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord processRecordLocked = getProcessRecordLocked(str, i);
                if (processRecordLocked != null) {
                    if (processRecordLocked.getPid() == MY_PID) {
                        Slog.d("ActivityManager", "Chimera kill failed, this is system process: " + str);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    KernelMemoryProxy$ReclaimerLog.write("B|killProcessForChimera " + str + "(" + processRecordLocked.getPid() + ")", false);
                    this.mProcessList.removeProcessLocked(processRecordLocked, false, true, 13, str2);
                    KernelMemoryProxy$ReclaimerLog.write("E|killProcessForChimera " + str + "(" + processRecordLocked.getPid() + ")", false);
                }
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public boolean hasRestartService(String str, int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord processRecordLocked = getProcessRecordLocked(str, i);
                if (processRecordLocked == null || !processRecordLocked.hasRestartService()) {
                    resetPriorityAfterLockedSection();
                    return false;
                }
                resetPriorityAfterLockedSection();
                return true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public List dumpProcessListForPPN(int i, BiFunction biFunction) {
        ArrayList arrayList;
        long[] writebackSizePid;
        PerProcessNandswap perProcessNandswap;
        int i2;
        int i3 = 0;
        ArrayList collectProcesses = collectProcesses(null, 0, false, null);
        if (collectProcesses == null || collectProcesses.isEmpty()) {
            return Collections.emptyList();
        }
        PerProcessNandswap perProcessNandswap2 = PerProcessNandswap.getInstance();
        int length = DUMP_MEM_OOM_LABEL.length;
        int size = collectProcesses.size();
        final long[] jArr = new long[length];
        final ArrayList[] arrayListArr = new ArrayList[length];
        final SparseArray sparseArray = new SparseArray();
        long uptimeMillis = SystemClock.uptimeMillis();
        int i4 = 0;
        while (i4 < size) {
            ProcessRecord processRecord = (ProcessRecord) collectProcesses.get(i4);
            String str = processRecord.processName;
            int pid = processRecord.getPid();
            int setAdjWithServices = processRecord.mState.getSetAdjWithServices();
            long[] jArr2 = (long[]) biFunction.apply(perProcessNandswap2, Integer.valueOf(pid));
            if (jArr2 == null) {
                arrayList = collectProcesses;
            } else {
                arrayList = collectProcesses;
                int i5 = (int) jArr2[0];
                long j = uptimeMillis - jArr2[1];
                if (pid != 0 && (writebackSizePid = PerProcessNandswap.getWritebackSizePid(pid)) != null && (writebackSizePid[1] != 0 || i5 != i)) {
                    perProcessNandswap = perProcessNandswap2;
                    i2 = 0;
                    PerProcessNandswap.MemoryItem memoryItem = new PerProcessNandswap.MemoryItem(str + " (pid " + pid + ")", writebackSizePid[0], writebackSizePid[1], i5, j);
                    sparseArray.put(pid, memoryItem);
                    for (int i6 = 0; i6 < length; i6++) {
                        if (i6 != length - 1) {
                            int[] iArr = DUMP_MEM_OOM_ADJ;
                            if (setAdjWithServices < iArr[i6] || setAdjWithServices >= iArr[i6 + 1]) {
                            }
                        }
                        jArr[i6] = jArr[i6] + writebackSizePid[1];
                        if (arrayListArr[i6] == null) {
                            arrayListArr[i6] = new ArrayList();
                        }
                        arrayListArr[i6].add(memoryItem);
                        i4++;
                        i3 = i2;
                        collectProcesses = arrayList;
                        perProcessNandswap2 = perProcessNandswap;
                    }
                    i4++;
                    i3 = i2;
                    collectProcesses = arrayList;
                    perProcessNandswap2 = perProcessNandswap;
                }
            }
            perProcessNandswap = perProcessNandswap2;
            i2 = 0;
            i4++;
            i3 = i2;
            collectProcesses = arrayList;
            perProcessNandswap2 = perProcessNandswap;
        }
        this.mAppProfiler.forAllCpuStats(new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda44
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ActivityManagerService.lambda$dumpProcessListForPPN$7(sparseArray, jArr, arrayListArr, (ProcessCpuTracker.Stats) obj);
            }
        });
        ArrayList arrayList2 = new ArrayList();
        while (i3 < length) {
            long j2 = jArr[i3];
            if (j2 != 0) {
                PerProcessNandswap.MemoryItem memoryItem2 = new PerProcessNandswap.MemoryItem(DUMP_MEM_OOM_LABEL[i3], 0L, j2, 0, -1L);
                memoryItem2.subitems = arrayListArr[i3];
                arrayList2.add(memoryItem2);
            }
            i3++;
        }
        return arrayList2;
    }

    public static /* synthetic */ void lambda$dumpProcessListForPPN$7(SparseArray sparseArray, long[] jArr, ArrayList[] arrayListArr, ProcessCpuTracker.Stats stats) {
        long[] writebackSizePid;
        if (stats.vsize <= 0 || sparseArray.indexOfKey(stats.pid) >= 0 || (writebackSizePid = PerProcessNandswap.getWritebackSizePid(stats.pid)) == null) {
            return;
        }
        PerProcessNandswap.MemoryItem memoryItem = new PerProcessNandswap.MemoryItem(stats.name + " (pid " + stats.pid + ")", writebackSizePid[0], writebackSizePid[1], 0, -1L);
        jArr[0] = jArr[0] + writebackSizePid[1];
        if (arrayListArr[0] == null) {
            arrayListArr[0] = new ArrayList();
        }
        arrayListArr[0].add(memoryItem);
    }

    public boolean isKilledByRecentTask(int i, String str) {
        boolean contains;
        List list = mRecentKillList;
        synchronized (list) {
            contains = list.contains(str + "," + i);
        }
        return contains;
    }

    public int hasChimeraProtectedProc(String str, int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord processRecordLocked = getProcessRecordLocked(str, i);
                if (processRecordLocked != null) {
                    if (!processRecordLocked.isKilled() && !processRecordLocked.isKilledByAm()) {
                        if (processRecordLocked.mServices.numberOfExecutingServices() > 0) {
                            resetPriorityAfterLockedSection();
                            return 2;
                        }
                        if (processRecordLocked.mReceivers.numberOfCurReceivers() > 0) {
                            resetPriorityAfterLockedSection();
                            return 3;
                        }
                        if (processRecordLocked.mState.getCurAdj() < 100) {
                            resetPriorityAfterLockedSection();
                            return 5;
                        }
                        if (hasContentProviderConnection(processRecordLocked)) {
                            resetPriorityAfterLockedSection();
                            return 6;
                        }
                        long j = SystemProperties.getLong("ro.slmk.chimera.protect_activitytime_ms", -1L);
                        if (j >= 60000 && SystemClock.uptimeMillis() - processRecordLocked.getLastActivityTime() < j) {
                            resetPriorityAfterLockedSection();
                            return 4;
                        }
                    }
                    resetPriorityAfterLockedSection();
                    return 1;
                }
                resetPriorityAfterLockedSection();
                return 0;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public boolean hasContentProviderConnection(String str, int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord processRecordLocked = getProcessRecordLocked(str, i);
                if (processRecordLocked == null) {
                    resetPriorityAfterLockedSection();
                    return false;
                }
                boolean hasContentProviderConnection = hasContentProviderConnection(processRecordLocked);
                resetPriorityAfterLockedSection();
                return hasContentProviderConnection;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public final boolean hasContentProviderConnection(ProcessRecord processRecord) {
        ProcessRecord processRecord2;
        for (int numberOfProviders = processRecord.mProviders.numberOfProviders() - 1; numberOfProviders >= 0; numberOfProviders--) {
            ContentProviderRecord providerAt = processRecord.mProviders.getProviderAt(numberOfProviders);
            if (providerAt != null && providerAt.proc == processRecord) {
                for (int size = providerAt.connections.size() - 1; size >= 0; size--) {
                    ContentProviderConnection contentProviderConnection = (ContentProviderConnection) providerAt.connections.get(size);
                    if (contentProviderConnection != null && (processRecord2 = contentProviderConnection.client) != null && !processRecord2.isPersistent() && processRecord2.getThread() != null && processRecord2.mProfile.getPid() != 0 && processRecord2.mProfile.getPid() != MY_PID && processRecord2.uid != providerAt.uid) {
                        Slog.d("ActivityManager", "hasConnectionProvider " + processRecord2.toShortString() + " (adj " + processRecord2.mState.getSetAdj() + ")");
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean isOnScreenWindow(int i) {
        WindowManagerService windowManagerService = this.mWindowManager;
        if (windowManagerService != null) {
            return windowManagerService.isOnScreenWindow(i);
        }
        return false;
    }

    public void forceGc(int i) {
        ProcessRecord processRecordFromPidLocked = getProcessRecordFromPidLocked(i);
        if (processRecordFromPidLocked == null || processRecordFromPidLocked.getThread() == null) {
            return;
        }
        try {
            processRecordFromPidLocked.getThread().forceGc();
        } catch (RemoteException unused) {
            Slog.e("ActivityManager", "Failed to forceGc");
        }
    }

    public boolean useCompaction() {
        return this.mOomAdjuster.mCachedAppOptimizer.useCompaction();
    }

    public static boolean isPmmEnabled() {
        return sPmmEnabledBySpcm;
    }

    public List getDumpMemoryInfo() {
        return getDumpMemoryInfo(true);
    }

    public List getDumpMemoryInfo(boolean z) {
        ArrayList arrayList;
        int i;
        int i2;
        IApplicationThread thread;
        int pid;
        int i3;
        String str;
        int setAdjWithServices;
        ArrayList arrayList2;
        ActivityManagerService activityManagerService = this;
        int callingUid = Binder.getCallingUid();
        long[] jArr = null;
        if (ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) != 0) {
            Slog.d("ActivityManager", "getDumpMemoryInfo() - permission is not granted. callingUid: " + callingUid);
            return null;
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                arrayList = new ArrayList(activityManagerService.mProcessList.getLruProcessesLOSP());
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
        resetPriorityAfterLockedSection();
        ArrayList arrayList3 = new ArrayList();
        SparseArray sparseArray = new SparseArray();
        int i4 = 1;
        int size = arrayList.size() - 1;
        int i5 = 0;
        while (true) {
            i = 3;
            if (size < 0) {
                break;
            }
            ProcessRecord processRecord = (ProcessRecord) arrayList.get(size);
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    thread = processRecord.getThread();
                    pid = processRecord.getPid();
                    i3 = processRecord.uid;
                    str = processRecord.processName;
                    setAdjWithServices = processRecord.mState.getSetAdjWithServices();
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            break;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            if (thread != null) {
                long[] jArr2 = new long[3];
                long pss = Debug.getPss(pid, jArr2, jArr);
                int i6 = 0;
                while (true) {
                    int[] iArr = DUMP_MEM_OOM_ADJ;
                    if (i6 >= iArr.length) {
                        break;
                    }
                    if (i6 == iArr.length - i4 || (setAdjWithServices >= iArr[i6] && setAdjWithServices < iArr[i6 + 1])) {
                        break;
                    }
                    i6++;
                }
                MemDumpInfo memDumpInfo = new MemDumpInfo();
                ArrayList arrayList4 = arrayList;
                long j = jArr2[i4];
                arrayList2 = arrayList4;
                memDumpInfo.pss = pss - j;
                memDumpInfo.swap_out = j;
                memDumpInfo.rss = jArr2[2];
                memDumpInfo.label = DUMP_MEM_OOM_COMPACT_LABEL[i6];
                memDumpInfo.uid = i3;
                memDumpInfo.procName = str;
                arrayList3.add(memDumpInfo);
                sparseArray.append(pid, memDumpInfo);
                i5++;
                size--;
                arrayList = arrayList2;
                jArr = null;
                i4 = 1;
                activityManagerService = this;
            }
            arrayList2 = arrayList;
            size--;
            arrayList = arrayList2;
            jArr = null;
            i4 = 1;
            activityManagerService = this;
        }
        if (arrayList.size() > 1) {
            try {
                updateCpuStatsNow();
                final ArrayList arrayList5 = new ArrayList();
                activityManagerService.mAppProfiler.forAllCpuStats(new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda39
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        arrayList5.add((ProcessCpuTracker.Stats) obj);
                    }
                });
                int size2 = arrayList5.size() - 1;
                int i7 = 0;
                while (size2 >= 0) {
                    try {
                        ProcessCpuTracker.Stats stats = (ProcessCpuTracker.Stats) arrayList5.get(size2);
                        if (stats.vsize > 0 && sparseArray.indexOfKey(stats.pid) < 0) {
                            long[] jArr3 = new long[i];
                            if (i7 == 0 && stats.name.equals("dex2oat")) {
                                i7 = 1;
                            }
                            long pss2 = Debug.getPss(stats.pid, jArr3, null);
                            MemDumpInfo memDumpInfo2 = new MemDumpInfo();
                            long j2 = jArr3[1];
                            memDumpInfo2.pss = pss2 - j2;
                            memDumpInfo2.swap_out = j2;
                            memDumpInfo2.rss = jArr3[2];
                            memDumpInfo2.label = DUMP_MEM_OOM_COMPACT_LABEL[0];
                            memDumpInfo2.procName = stats.name;
                            memDumpInfo2.cpuTime = stats.rel_utime + stats.rel_stime;
                            arrayList3.add(memDumpInfo2);
                            sparseArray.append(stats.pid, memDumpInfo2);
                            i5++;
                        } else if (sparseArray.indexOfKey(stats.pid) >= 0) {
                            ((MemDumpInfo) sparseArray.get(stats.pid)).cpuTime = stats.rel_utime + stats.rel_stime;
                        }
                        size2--;
                        i = 3;
                    } catch (Exception unused) {
                    }
                }
                i2 = i7;
            } catch (Exception unused2) {
            }
            MemDumpInfo memDumpInfo3 = new MemDumpInfo();
            memDumpInfo3.cpuTime = activityManagerService.mProcessCpuTracker.getLastSystemTime() + activityManagerService.mProcessCpuTracker.getLastUserTime();
            memDumpInfo3.hasExtra = true;
            memDumpInfo3.hasDexRunning = i2;
            memDumpInfo3.procNum = i5;
            OomAdjuster oomAdjuster = activityManagerService.mOomAdjuster;
            memDumpInfo3.cachedProcessCount = oomAdjuster.mNumCachedProcessCount;
            memDumpInfo3.emptyProcessCount = oomAdjuster.mNumEmptyProcessCount;
            memDumpInfo3.cachedSlotCount = oomAdjuster.mNumCachedSlotCount;
            memDumpInfo3.emptySlotCount = oomAdjuster.mNumEmptySlotCount;
            arrayList3.add(memDumpInfo3);
            return arrayList3;
        }
        i2 = 0;
        MemDumpInfo memDumpInfo32 = new MemDumpInfo();
        memDumpInfo32.cpuTime = activityManagerService.mProcessCpuTracker.getLastSystemTime() + activityManagerService.mProcessCpuTracker.getLastUserTime();
        memDumpInfo32.hasExtra = true;
        memDumpInfo32.hasDexRunning = i2;
        memDumpInfo32.procNum = i5;
        OomAdjuster oomAdjuster2 = activityManagerService.mOomAdjuster;
        memDumpInfo32.cachedProcessCount = oomAdjuster2.mNumCachedProcessCount;
        memDumpInfo32.emptyProcessCount = oomAdjuster2.mNumEmptyProcessCount;
        memDumpInfo32.cachedSlotCount = oomAdjuster2.mNumCachedSlotCount;
        memDumpInfo32.emptySlotCount = oomAdjuster2.mNumEmptySlotCount;
        arrayList3.add(memDumpInfo32);
        return arrayList3;
    }

    public IPackageManager getPackageManager() {
        return AppGlobals.getPackageManager();
    }

    public PackageManagerInternal getPackageManagerInternal() {
        if (this.mPackageManagerInt == null) {
            this.mPackageManagerInt = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        }
        return this.mPackageManagerInt;
    }

    public BinderCallsStatsService.Internal getBinderStatsServiceInternal() {
        if (this.mBinderStatsService == null) {
            this.mBinderStatsService = (BinderCallsStatsService.Internal) LocalServices.getService(BinderCallsStatsService.Internal.class);
        }
        return this.mBinderStatsService;
    }

    public final PermissionManagerServiceInternal getPermissionManagerInternal() {
        if (this.mPermissionManagerInt == null) {
            this.mPermissionManagerInt = (PermissionManagerServiceInternal) LocalServices.getService(PermissionManagerServiceInternal.class);
        }
        return this.mPermissionManagerInt;
    }

    public final TestUtilityService getTestUtilityServiceLocked() {
        if (this.mTestUtilityService == null) {
            this.mTestUtilityService = (TestUtilityService) LocalServices.getService(TestUtilityService.class);
        }
        return this.mTestUtilityService;
    }

    public void appNotResponding(String str) {
        appNotResponding(str, false);
    }

    public void appNotResponding(String str, boolean z) {
        TimeoutRecord forApp = TimeoutRecord.forApp("App requested: " + str);
        int callingPid = Binder.getCallingPid();
        forApp.mLatencyTracker.waitingOnPidLockStarted();
        synchronized (this.mPidsSelfLocked) {
            forApp.mLatencyTracker.waitingOnPidLockEnded();
            ProcessRecord processRecord = this.mPidsSelfLocked.get(callingPid);
            if (processRecord == null) {
                throw new SecurityException("Unknown process: " + callingPid);
            }
            this.mAnrHelper.appNotResponding(processRecord, null, processRecord.info, null, null, false, forApp, z);
        }
    }

    public void appNotResponding(ProcessRecord processRecord, TimeoutRecord timeoutRecord) {
        this.mAnrHelper.appNotResponding(processRecord, timeoutRecord);
    }

    public final void appNotResponding(String str, int i, TimeoutRecord timeoutRecord) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(timeoutRecord);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord processRecordLocked = getProcessRecordLocked(str, i);
                if (processRecordLocked == null) {
                    Slog.e("ActivityManager", "Unknown process: " + str);
                    resetPriorityAfterLockedSection();
                    return;
                }
                this.mAnrHelper.appNotResponding(processRecordLocked, timeoutRecord);
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void startPersistentApps(int i) {
        ProcessRecord addAppLocked;
        if (this.mFactoryTest == 1) {
            return;
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                try {
                    for (ApplicationInfo applicationInfo : AppGlobals.getPackageManager().getPersistentApplications(i | 1024).getList()) {
                        if (!"android".equals(applicationInfo.packageName) && (addAppLocked = addAppLocked(applicationInfo, null, false, null, 2)) != null) {
                            addAppLocked.mProfile.addHostingComponentType(2);
                        }
                    }
                } catch (RemoteException unused) {
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public ContentProviderHelper getContentProviderHelper() {
        return this.mCpHelper;
    }

    public final ContentProviderHolder getContentProvider(IApplicationThread iApplicationThread, String str, String str2, int i, boolean z) {
        String str3;
        traceBegin(64L, "getContentProvider: ", str2);
        try {
            if (MARsPolicyManager.isSpecialProviderName(str2)) {
                boostPriorityForLockedSection();
                synchronized (this) {
                    try {
                        ProcessRecord recordForAppLOSP = getRecordForAppLOSP(iApplicationThread);
                        str3 = (recordForAppLOSP == null || recordForAppLOSP.info == null) ? null : recordForAppLOSP.info.packageName;
                    } catch (Throwable th) {
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterLockedSection();
                MARsPolicyManager.onSpecialProviderActions(str3, str2, i);
            }
            return this.mCpHelper.getContentProvider(iApplicationThread, str, str2, i, z);
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public ContentProviderHolder getContentProviderExternal(String str, int i, IBinder iBinder, String str2) {
        traceBegin(64L, "getContentProviderExternal: ", str);
        try {
            return this.mCpHelper.getContentProviderExternal(str, i, iBinder, str2);
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public void removeContentProvider(IBinder iBinder, boolean z) {
        this.mCpHelper.removeContentProvider(iBinder, z);
    }

    public void removeContentProviderExternal(String str, IBinder iBinder) {
        traceBegin(64L, "removeContentProviderExternal: ", str);
        try {
            removeContentProviderExternalAsUser(str, iBinder, UserHandle.getCallingUserId());
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public void removeContentProviderExternalAsUser(String str, IBinder iBinder, int i) {
        traceBegin(64L, "removeContentProviderExternalAsUser: ", str);
        try {
            this.mCpHelper.removeContentProviderExternalAsUser(str, iBinder, i);
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public final void publishContentProviders(IApplicationThread iApplicationThread, List list) {
        ProviderInfo providerInfo;
        String str;
        if (Trace.isTagEnabled(64L)) {
            StringBuilder sb = new StringBuilder(256);
            sb.append("publishContentProviders: ");
            if (list != null) {
                int size = list.size();
                boolean z = true;
                int i = 0;
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    ContentProviderHolder contentProviderHolder = (ContentProviderHolder) list.get(i);
                    if (contentProviderHolder != null && (providerInfo = contentProviderHolder.info) != null && (str = providerInfo.authority) != null) {
                        if (sb.length() + str.length() > 256) {
                            sb.append("[[TRUNCATED]]");
                            break;
                        }
                        if (z) {
                            z = false;
                        } else {
                            sb.append(';');
                        }
                        sb.append(contentProviderHolder.info.authority);
                    }
                    i++;
                }
            }
            Trace.traceBegin(64L, sb.toString());
        }
        try {
            this.mCpHelper.publishContentProviders(iApplicationThread, list);
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public boolean refContentProvider(IBinder iBinder, int i, int i2) {
        return this.mCpHelper.refContentProvider(iBinder, i, i2);
    }

    public void unstableProviderDied(IBinder iBinder) {
        this.mCpHelper.unstableProviderDied(iBinder);
    }

    public void appNotRespondingViaProvider(IBinder iBinder) {
        this.mCpHelper.appNotRespondingViaProvider(iBinder);
    }

    public void getMimeTypeFilterAsync(Uri uri, int i, RemoteCallback remoteCallback) {
        this.mCpHelper.getMimeTypeFilterAsync(uri, i, remoteCallback);
    }

    public final boolean uidOnBackgroundAllowlistLOSP(int i) {
        int appId = UserHandle.getAppId(i);
        for (int i2 : this.mBackgroundAppIdAllowlist) {
            if (appId == i2) {
                return true;
            }
        }
        return false;
    }

    public boolean isBackgroundRestricted(String str) {
        int callingUid = Binder.getCallingUid();
        if (AppGlobals.getPackageManager().getPackageUid(str, 268435456L, UserHandle.getUserId(callingUid)) != callingUid) {
            throw new IllegalArgumentException("Uid " + callingUid + " cannot query restriction state for package " + str);
        }
        return isBackgroundRestrictedNoCheck(callingUid, str);
    }

    public boolean isBackgroundRestrictedNoCheck(int i, String str) {
        return getAppOpsManager().checkOpNoThrow(70, i, str) != 0;
    }

    public void backgroundAllowlistUid(int i) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Only the OS may call backgroundAllowlistUid()");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        int[] iArr = this.mBackgroundAppIdAllowlist;
                        int length = iArr.length;
                        int[] iArr2 = new int[length + 1];
                        System.arraycopy(iArr, 0, iArr2, 0, length);
                        iArr2[length] = UserHandle.getAppId(i);
                        this.mBackgroundAppIdAllowlist = iArr2;
                    } catch (Throwable th) {
                        resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterProcLockedSection();
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final ProcessRecord addAppLocked(ApplicationInfo applicationInfo, String str, boolean z, String str2, int i) {
        return addAppLocked(applicationInfo, str, z, false, str2, i);
    }

    public final ProcessRecord addAppLocked(ApplicationInfo applicationInfo, String str, boolean z, boolean z2, String str2, int i) {
        return addAppLocked(applicationInfo, str, z, z2, false, str2, i);
    }

    public final ProcessRecord addAppLocked(ApplicationInfo applicationInfo, String str, boolean z, boolean z2, boolean z3, String str2, int i) {
        return addAppLocked(applicationInfo, str, z, false, 0, null, z2, z3, str2, i);
    }

    public final ProcessRecord addAppLocked(ApplicationInfo applicationInfo, String str, boolean z, boolean z2, int i, String str2, boolean z3, boolean z4, String str3, int i2) {
        ProcessRecord processRecord;
        if (z) {
            processRecord = null;
        } else {
            processRecord = getProcessRecordLocked(str != null ? str : applicationInfo.processName, applicationInfo.uid);
        }
        if (processRecord == null) {
            processRecord = this.mProcessList.newProcessRecordLocked(applicationInfo, str, z, 0, z2, i, str2, new HostingRecord("added application", str != null ? str : applicationInfo.processName));
            updateLruProcessLocked(processRecord, false, null);
            updateOomAdjLocked(processRecord, 11);
        }
        this.mUsageStatsService.reportEvent(applicationInfo.packageName, UserHandle.getUserId(processRecord.uid), 31);
        if (!z2) {
            try {
                this.mPackageManagerInt.setPackageStoppedState(applicationInfo.packageName, false, UserHandle.getUserId(processRecord.uid));
            } catch (IllegalArgumentException e) {
                Slog.w("ActivityManager", "Failed trying to unstop package " + applicationInfo.packageName + ": " + e);
            }
        }
        if ((applicationInfo.flags & 9) == 9) {
            processRecord.setPersistent(true);
            processRecord.mState.setMaxAdj(-800);
        }
        if (processRecord.getThread() == null && this.mPersistentStartingProcesses.indexOf(processRecord) < 0) {
            this.mPersistentStartingProcesses.add(processRecord);
            this.mProcessList.startProcessLocked(processRecord, new HostingRecord("added application", str != null ? str : processRecord.processName), i2, z3, z4, str3);
        }
        return processRecord;
    }

    public void unhandledBack() {
        this.mActivityTaskManager.unhandledBack();
    }

    public ParcelFileDescriptor openContentUri(String str) {
        AndroidPackage androidPackage;
        enforceNotIsolatedCaller("openContentUri");
        int callingUserId = UserHandle.getCallingUserId();
        Uri parse = Uri.parse(str);
        String authority = parse.getAuthority();
        ContentProviderHolder contentProviderExternalUnchecked = this.mCpHelper.getContentProviderExternalUnchecked(authority, null, Binder.getCallingUid(), "*opencontent*", callingUserId);
        if (contentProviderExternalUnchecked != null) {
            try {
                int callingUid = Binder.getCallingUid();
                String resolvePackageName = AppOpsManager.resolvePackageName(callingUid, null);
                if (resolvePackageName != null) {
                    androidPackage = this.mPackageManagerInt.getPackage(resolvePackageName);
                } else {
                    androidPackage = this.mPackageManagerInt.getPackage(callingUid);
                }
                if (androidPackage == null) {
                    Log.e("ActivityManager", "Cannot find package for uid: " + callingUid);
                } else {
                    ApplicationInfo applicationInfo = this.mPackageManagerInt.getApplicationInfo(androidPackage.getPackageName(), 0L, 1000, 0);
                    if (!applicationInfo.isVendor() && !applicationInfo.isSystemApp() && !applicationInfo.isSystemExt() && !applicationInfo.isProduct()) {
                        Log.e("ActivityManager", "openContentUri may only be used by vendor/system/product.");
                    } else {
                        return contentProviderExternalUnchecked.provider.openFile(new AttributionSource(Binder.getCallingUid(), androidPackage.getPackageName(), null), parse, "r", (ICancellationSignal) null);
                    }
                }
                return null;
            } catch (FileNotFoundException unused) {
                return null;
            } finally {
                this.mCpHelper.removeContentProviderExternalUnchecked(authority, null, callingUserId);
            }
        }
        Slog.d("ActivityManager", "Failed to get provider for authority '" + authority + "'");
        return null;
    }

    public void reportGlobalUsageEvent(int i) {
        int currentUserId = this.mUserController.getCurrentUserId();
        this.mUsageStatsService.reportEvent("android", currentUserId, i);
        int[] currentProfileIds = this.mUserController.getCurrentProfileIds();
        if (currentProfileIds != null) {
            for (int length = currentProfileIds.length - 1; length >= 0; length--) {
                if (currentProfileIds[length] != currentUserId) {
                    this.mUsageStatsService.reportEvent("android", currentProfileIds[length], i);
                }
            }
        }
    }

    public void reportCurWakefulnessUsageEvent() {
        reportGlobalUsageEvent(this.mWakefulness.get() == 1 ? 15 : 16);
    }

    public void onWakefulnessChanged(int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                boolean z = this.mWakefulness.getAndSet(i) == 1;
                boolean z2 = i == 1;
                if (z != z2) {
                    this.mServices.updateScreenStateLocked(z2);
                    reportCurWakefulnessUsageEvent();
                    this.mActivityTaskManager.onScreenAwakeChanged(z2);
                    this.mOomAdjProfiler.onWakefulnessChanged(i);
                    this.mOomAdjuster.onWakefulnessChanged(i);
                    if (CoreRune.MNO_TMO_DEVICE_REPORTING && DeviceReportingSecurityChecker.getStatus()) {
                        Slog.d("ActivityManager", "TMO onWakefulnessChanged");
                        this.mActivityTaskManager.sendAppStateBroadcaster();
                    }
                    updateOomAdjLocked(9);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void notifyCleartextNetwork(int i, byte[] bArr) {
        this.mHandler.obtainMessage(49, i, 0, bArr).sendToTarget();
    }

    public boolean shutdown(int i) {
        if (checkCallingPermission("android.permission.SHUTDOWN") != 0) {
            throw new SecurityException("Requires permission android.permission.SHUTDOWN");
        }
        if (CoreRune.MNO_TMO_DEVICE_REPORTING) {
            Slog.d("ActivityManager", "TMO shutdown");
            AppStateBroadcaster.disableIntentBroadcast();
            DeviceReportingSecurityChecker.disable();
        }
        ShutdownThread.get();
        ShutdownThread.sendMylog("ActivityManager", "!@AMS down AtmInternal...");
        boolean shuttingDown = this.mAtmInternal.shuttingDown(this.mBooted, i);
        ShutdownThread.get();
        ShutdownThread.sendMylog("ActivityManager", "!@AMS down AppOpsService...");
        this.mAppOpsService.shutdown();
        if (this.mUsageStatsService != null) {
            ShutdownThread.get();
            ShutdownThread.sendMylog("ActivityManager", "!@AMS down UsageStatsService...");
            this.mUsageStatsService.prepareShutdown();
        }
        ShutdownThread.get();
        ShutdownThread.sendMylog("ActivityManager", "!@AMS down BatteryStatsService...");
        this.mBatteryStatsService.shutdown();
        ShutdownThread.get();
        ShutdownThread.sendMylog("ActivityManager", "!@AMS down ProcessStats...");
        this.mProcessStats.shutdown();
        BinderCallsStatsService.Internal binderStatsServiceInternal = getBinderStatsServiceInternal();
        ShutdownThread.get();
        ShutdownThread.sendMylog("ActivityManager", "!@AMS down BinderCallsStatsService...");
        binderStatsServiceInternal.shutdown();
        return shuttingDown;
    }

    public void notifyLockedProfile(int i) {
        this.mAtmInternal.notifyLockedProfile(i);
    }

    public void startConfirmDeviceCredentialIntent(Intent intent, Bundle bundle) {
        this.mAtmInternal.startConfirmDeviceCredentialIntent(intent, bundle);
    }

    public void stopAppSwitches() {
        this.mActivityTaskManager.stopAppSwitches();
    }

    public void resumeAppSwitches() {
        this.mActivityTaskManager.resumeAppSwitches();
    }

    public void setDebugApp(String str, boolean z, boolean z2) {
        setDebugApp(str, z, z2, false);
    }

    public final void setDebugApp(String str, boolean z, boolean z2, boolean z3) {
        enforceCallingPermission("android.permission.SET_DEBUG_APP", "setDebugApp()");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        boolean z4 = true;
        if (z2) {
            try {
                ContentResolver contentResolver = this.mContext.getContentResolver();
                Settings.Global.putString(contentResolver, "debug_app", str);
                Settings.Global.putInt(contentResolver, "wait_for_debugger", z ? 1 : 0);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            if (!z2) {
                try {
                    this.mOrigDebugApp = this.mDebugApp;
                    this.mOrigWaitForDebugger = this.mWaitForDebugger;
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            this.mDebugApp = str;
            this.mWaitForDebugger = z;
            this.mSuspendUponWait = z3;
            if (z2) {
                z4 = false;
            }
            this.mDebugTransient = z4;
            if (str != null) {
                forceStopPackageLocked(str, -1, false, false, true, true, false, -1, "set debug app");
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void setAgentApp(String str, String str2) {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        synchronized (this.mAppProfiler.mProfilerLock) {
            this.mAppProfiler.setAgentAppLPf(str, str2);
        }
    }

    public void setTrackAllocationApp(ApplicationInfo applicationInfo, String str) {
        enforceDebuggable(applicationInfo);
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mTrackAllocationApp = str;
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public void setProfileApp(ApplicationInfo applicationInfo, String str, ProfilerInfo profilerInfo, ApplicationInfo applicationInfo2) {
        synchronized (this.mAppProfiler.mProfilerLock) {
            if (!Build.IS_DEBUGGABLE) {
                boolean z = true;
                boolean z2 = (applicationInfo.flags & 2) != 0;
                boolean isProfileableByShell = applicationInfo.isProfileableByShell();
                if (applicationInfo2 != null) {
                    if ((applicationInfo2.flags & 2) == 0) {
                        z = false;
                    }
                    z2 |= z;
                    isProfileableByShell |= applicationInfo2.isProfileableByShell();
                }
                if (!z2 && !isProfileableByShell) {
                    throw new SecurityException("Process not debuggable, and not profileable by shell: " + applicationInfo.packageName);
                }
            }
            this.mAppProfiler.setProfileAppLPf(str, profilerInfo);
        }
    }

    public void setNativeDebuggingAppLocked(ApplicationInfo applicationInfo, String str) {
        enforceDebuggable(applicationInfo);
        this.mNativeDebuggingApp = str;
    }

    public void setAlwaysFinish(boolean z) {
        enforceCallingPermission("android.permission.SET_ALWAYS_FINISH", "setAlwaysFinish()");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Settings.Global.putInt(this.mContext.getContentResolver(), "always_finish_activities", z ? 1 : 0);
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    this.mAlwaysFinishActivities = z;
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setActivityController(IActivityController iActivityController, boolean z) {
        if (iActivityController != null) {
            Binder.allowBlocking(iActivityController.asBinder());
        }
        this.mActivityTaskManager.setActivityController(iActivityController, z);
    }

    public void setUserIsMonkey(boolean z) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                synchronized (this.mPidsSelfLocked) {
                    int callingPid = Binder.getCallingPid();
                    ProcessRecord processRecord = this.mPidsSelfLocked.get(callingPid);
                    if (processRecord == null) {
                        throw new SecurityException("Unknown process: " + callingPid);
                    }
                    if (processRecord.getActiveInstrumentation() == null || processRecord.getActiveInstrumentation().mUiAutomationConnection == null) {
                        throw new SecurityException("Only an instrumentation process with a UiAutomation can call setUserIsMonkey");
                    }
                }
                this.mUserIsMonkey = z;
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public boolean isUserAMonkey() {
        boolean z;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                z = this.mUserIsMonkey || this.mActivityTaskManager.isControllerAMonkey();
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return z;
    }

    public void requestSystemServerHeapDump() {
        ProcessRecord processRecord;
        if (!Build.IS_DEBUGGABLE) {
            Slog.wtf("ActivityManager", "requestSystemServerHeapDump called on a user build");
            return;
        }
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("Only the system process is allowed to request a system heap dump");
        }
        synchronized (this.mPidsSelfLocked) {
            processRecord = this.mPidsSelfLocked.get(Process.myPid());
        }
        if (processRecord == null) {
            Slog.w("ActivityManager", "system process not in mPidsSelfLocked: " + Process.myPid());
            return;
        }
        synchronized (this.mAppProfiler.mProfilerLock) {
            this.mAppProfiler.startHeapDumpLPf(processRecord.mProfile, true);
        }
    }

    public void requestBugReport(int i) {
        requestBugReportWithDescription(null, null, i, 0L);
    }

    public void requestBugReportWithDescription(String str, String str2, int i) {
        requestBugReportWithDescription(str, str2, i, 0L);
    }

    public void requestBugReportWithDescription(String str, String str2, int i, long j) {
        requestBugReportWithDescription(str, str2, i, j, false);
    }

    public void requestBugReportWithDescription(String str, String str2, int i, long j, boolean z) {
        String str3;
        if (i == 0) {
            str3 = "bugreportfull";
        } else if (i == 1) {
            str3 = "bugreportplus";
        } else if (i == 2) {
            str3 = "bugreportremote";
        } else if (i == 3) {
            str3 = "bugreportwear";
        } else if (i == 4) {
            str3 = "bugreporttelephony";
        } else {
            if (i != 5) {
                throw new IllegalArgumentException("Provided bugreport type is not correct, value: " + i);
            }
            str3 = "bugreportwifi";
        }
        Slog.i("ActivityManager", str3 + " requested by UID " + Binder.getCallingUid());
        enforceCallingPermission("android.permission.DUMP", "requestBugReport");
        if (!TextUtils.isEmpty(str)) {
            if (str.length() > 100) {
                throw new IllegalArgumentException("shareTitle should be less than 100 characters");
            }
            if (!TextUtils.isEmpty(str2) && str2.length() > 150) {
                throw new IllegalArgumentException("shareDescription should be less than 150 characters");
            }
            Slog.d("ActivityManager", "Bugreport notification title " + str + " description " + str2);
        }
        Intent intent = new Intent();
        intent.setAction("com.android.internal.intent.action.BUGREPORT_REQUESTED");
        intent.setPackage("com.android.shell");
        intent.putExtra("android.intent.extra.BUGREPORT_TYPE", i);
        intent.putExtra("android.intent.extra.BUGREPORT_NONCE", j);
        intent.addFlags(268435456);
        intent.addFlags(16777216);
        intent.putExtra("android.intent.extra.USE_CUSTOM_BUGREPORT", z);
        if (str != null) {
            intent.putExtra("android.intent.extra.TITLE", str);
        }
        if (str2 != null) {
            intent.putExtra("android.intent.extra.DESCRIPTION", str2);
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (i == 2) {
                this.mContext.sendBroadcastAsUser(intent, UserHandle.SYSTEM);
            } else {
                this.mContext.sendBroadcastAsUser(intent, getCurrentUser().getUserHandle());
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void requestTelephonyBugReport(String str, String str2) {
        requestBugReportWithDescription(str, str2, 4);
    }

    public void requestWifiBugReport(String str, String str2) {
        requestBugReportWithDescription(str, str2, 5);
    }

    public void requestInteractiveBugReport() {
        requestBugReportWithDescription(null, null, 1);
    }

    public void requestInteractiveBugReportWithDescription(String str, String str2) {
        requestBugReportWithDescription(str, str2, 1);
    }

    public void requestFullBugReport() {
        requestBugReportWithDescription(null, null, 0);
    }

    public void requestRemoteBugReport(long j) {
        requestBugReportWithDescription(null, null, 2, j);
    }

    public boolean launchBugReportHandlerApp() {
        Context createContextAsUser = this.mContext.createContextAsUser(getCurrentUser().getUserHandle(), 0);
        if (!BugReportHandlerUtil.isBugReportHandlerEnabled(createContextAsUser)) {
            return false;
        }
        Slog.i("ActivityManager", "launchBugReportHandlerApp requested by UID " + Binder.getCallingUid());
        enforceCallingPermission("android.permission.DUMP", "launchBugReportHandlerApp");
        return BugReportHandlerUtil.launchBugReportHandlerApp(createContextAsUser);
    }

    public List getBugreportWhitelistedPackages() {
        enforceCallingPermission("android.permission.MANAGE_DEBUGGING", "getBugreportWhitelistedPackages");
        return new ArrayList(SystemConfig.getInstance().getBugreportWhitelistedPackages());
    }

    public void registerProcessObserver(IProcessObserver iProcessObserver) {
        enforceCallingPermission("android.permission.SET_ACTIVITY_WATCHER", "registerProcessObserver()");
        this.mProcessList.registerProcessObserver(iProcessObserver);
    }

    public void unregisterProcessObserver(IProcessObserver iProcessObserver) {
        this.mProcessList.unregisterProcessObserver(iProcessObserver);
    }

    public int getUidProcessState(int i, String str) {
        if (!hasUsageStatsPermission(str)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "getUidProcessState");
        }
        this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), UserHandle.getUserId(i), false, 2, "getUidProcessState", str);
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                if (this.mPendingStartActivityUids.isPendingTopUid(i)) {
                    resetPriorityAfterProcLockedSection();
                    return 2;
                }
                int uidProcStateLOSP = this.mProcessList.getUidProcStateLOSP(i);
                resetPriorityAfterProcLockedSection();
                return uidProcStateLOSP;
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public int getUidProcessCapabilities(int i, String str) {
        int uidProcessCapabilityLOSP;
        if (!hasUsageStatsPermission(str)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "getUidProcessState");
        }
        this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), UserHandle.getUserId(i), false, 2, "getUidProcessCapabilities", str);
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                uidProcessCapabilityLOSP = this.mProcessList.getUidProcessCapabilityLOSP(i);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return uidProcessCapabilityLOSP;
    }

    public void registerUidObserver(IUidObserver iUidObserver, int i, int i2, String str) {
        if (!hasUsageStatsPermission(str)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "registerUidObserver");
        }
        this.mUidObserverController.register(iUidObserver, i, i2, str, Binder.getCallingUid(), null);
    }

    public IBinder registerUidObserverForUids(IUidObserver iUidObserver, int i, int i2, String str, int[] iArr) {
        if (!hasUsageStatsPermission(str)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "registerUidObserver");
        }
        return this.mUidObserverController.register(iUidObserver, i, i2, str, Binder.getCallingUid(), iArr);
    }

    public void unregisterUidObserver(IUidObserver iUidObserver) {
        this.mUidObserverController.unregister(iUidObserver);
    }

    public void addUidToObserver(IBinder iBinder, String str, int i) {
        if (!hasUsageStatsPermission(str)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "registerUidObserver");
        }
        this.mUidObserverController.addUidToObserver(iBinder, i);
    }

    public void removeUidFromObserver(IBinder iBinder, String str, int i) {
        if (!hasUsageStatsPermission(str)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "registerUidObserver");
        }
        this.mUidObserverController.removeUidFromObserver(iBinder, i);
    }

    public boolean isUidActive(int i, String str) {
        if (!hasUsageStatsPermission(str)) {
            enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "isUidActive");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                if (isUidActiveLOSP(i)) {
                    resetPriorityAfterProcLockedSection();
                    return true;
                }
                resetPriorityAfterProcLockedSection();
                return this.mInternal.isPendingTopUid(i);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public boolean isUidActiveLOSP(int i) {
        UidRecord uidRecordLOSP = this.mProcessList.getUidRecordLOSP(i);
        return (uidRecordLOSP == null || uidRecordLOSP.isSetIdle()) ? false : true;
    }

    public void registerUidFrozenStateChangedCallback(IUidFrozenStateChangedCallback iUidFrozenStateChangedCallback) {
        Preconditions.checkNotNull(iUidFrozenStateChangedCallback, "callback cannot be null");
        enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "registerUidFrozenStateChangedCallback()");
        synchronized (this.mUidFrozenStateChangedCallbackList) {
            if (!this.mUidFrozenStateChangedCallbackList.register(iUidFrozenStateChangedCallback)) {
                Slog.w("ActivityManager", "Failed to register with RemoteCallbackList!");
            }
        }
    }

    public void unregisterUidFrozenStateChangedCallback(IUidFrozenStateChangedCallback iUidFrozenStateChangedCallback) {
        Preconditions.checkNotNull(iUidFrozenStateChangedCallback, "callback cannot be null");
        enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "unregisterUidFrozenStateChangedCallback()");
        synchronized (this.mUidFrozenStateChangedCallbackList) {
            this.mUidFrozenStateChangedCallbackList.unregister(iUidFrozenStateChangedCallback);
        }
    }

    public int[] getUidFrozenState(int[] iArr) {
        Preconditions.checkNotNull(iArr, "uid array cannot be null");
        enforceCallingPermission("android.permission.PACKAGE_USAGE_STATS", "getUidFrozenState()");
        int[] iArr2 = new int[iArr.length];
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            for (int i = 0; i < iArr.length; i++) {
                try {
                    UidRecord uidRecord = this.mProcessList.mActiveUids.get(iArr[i]);
                    if (uidRecord != null && uidRecord.areAllProcessesFrozen()) {
                        iArr2[i] = 1;
                    } else {
                        iArr2[i] = 2;
                    }
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
        }
        resetPriorityAfterProcLockedSection();
        return iArr2;
    }

    public void reportUidFrozenStateChanged(int[] iArr, int[] iArr2) {
        synchronized (this.mUidFrozenStateChangedCallbackList) {
            int beginBroadcast = this.mUidFrozenStateChangedCallbackList.beginBroadcast();
            for (int i = 0; i < beginBroadcast; i++) {
                try {
                    this.mUidFrozenStateChangedCallbackList.getBroadcastItem(i).onUidFrozenStateChanged(iArr, iArr2);
                } catch (RemoteException unused) {
                }
            }
            this.mUidFrozenStateChangedCallbackList.finishBroadcast();
        }
    }

    public void setPersistentVrThread(int i) {
        this.mActivityTaskManager.setPersistentVrThread(i);
    }

    public static boolean scheduleAsRegularPriority(int i, boolean z) {
        try {
            Process.setThreadScheduler(i, 0, 0);
            return true;
        } catch (IllegalArgumentException e) {
            if (!z) {
                Slog.w("ActivityManager", "Failed to set scheduling policy, thread does not exist:\n" + e);
            }
            return false;
        } catch (SecurityException e2) {
            if (!z) {
                Slog.w("ActivityManager", "Failed to set scheduling policy, not allowed:\n" + e2);
            }
            return false;
        }
    }

    public static boolean scheduleAsFifoPriority(int i, boolean z) {
        try {
            Process.setThreadScheduler(i, 1073741825, 1);
            return true;
        } catch (IllegalArgumentException e) {
            if (z) {
                return false;
            }
            Slog.w("ActivityManager", "Failed to set scheduling policy, thread does not exist:\n" + e);
            return false;
        } catch (SecurityException e2) {
            if (z) {
                return false;
            }
            Slog.w("ActivityManager", "Failed to set scheduling policy, not allowed:\n" + e2);
            return false;
        }
    }

    public void setRenderThread(int i) {
        ProcessRecord processRecord;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                int callingPid = Binder.getCallingPid();
                if (callingPid == Process.myPid()) {
                    demoteSystemServerRenderThread(i);
                    resetPriorityAfterProcLockedSection();
                    return;
                }
                synchronized (this.mPidsSelfLocked) {
                    processRecord = this.mPidsSelfLocked.get(callingPid);
                }
                if (processRecord != null && processRecord.getRenderThreadTid() == 0 && i > 0) {
                    if (!Process.isThreadInProcess(callingPid, i)) {
                        throw new IllegalArgumentException("Render thread does not belong to process");
                    }
                    processRecord.setRenderThreadTid(i);
                    if (processRecord.mState.getCurrentSchedulingGroup() == 3) {
                        if (this.mUseFifoUiScheduling) {
                            Process.setThreadScheduler(processRecord.getRenderThreadTid(), 1073741825, 1);
                        } else {
                            Process.setThreadPriority(processRecord.getRenderThreadTid(), -10);
                        }
                    }
                }
                resetPriorityAfterProcLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public final void demoteSystemServerRenderThread(int i) {
        Process.setThreadPriority(i, 10);
    }

    public boolean isVrModePackageEnabled(ComponentName componentName) {
        this.mActivityTaskManager.enforceSystemHasVrFeature();
        return ((VrManagerInternal) LocalServices.getService(VrManagerInternal.class)).hasVrPackage(componentName, UserHandle.getCallingUserId()) == 0;
    }

    public boolean isTopActivityImmersive() {
        return this.mActivityTaskManager.isTopActivityImmersive();
    }

    public boolean isTopOfTask(IBinder iBinder) {
        return ActivityClient.getInstance().isTopOfTask(iBinder);
    }

    public void setHasTopUi(boolean z) {
        if (checkCallingPermission("android.permission.INTERNAL_SYSTEM_WINDOW") != 0) {
            String str = "Permission Denial: setHasTopUi() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.INTERNAL_SYSTEM_WINDOW";
            Slog.w("ActivityManager", str);
            throw new SecurityException(str);
        }
        int callingPid = Binder.getCallingPid();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            setHasTopUiInternal(callingPid, z);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setHasTopUiInternal(int i, boolean z) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                synchronized (this.mPidsSelfLocked) {
                    ProcessRecord processRecord = this.mPidsSelfLocked.get(i);
                    if (processRecord == null) {
                        Slog.w("ActivityManager", "setHasTopUi called on unknown pid: " + i);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    int i2 = this.mTransitionPlayerPid;
                    boolean z2 = true;
                    if (i2 >= 0 && i2 == i) {
                        boolean hasTopUi = processRecord.mState.hasTopUi();
                        processRecord.mState.requestHasTopUi(z);
                        if (hasTopUi != processRecord.mState.hasTopUi()) {
                        }
                        z2 = false;
                    } else {
                        if (processRecord.mState.hasTopUi() != z) {
                            processRecord.mState.setHasTopUi(z);
                        }
                        z2 = false;
                    }
                    if (z2) {
                        updateOomAdjLocked(processRecord, 9);
                    }
                    resetPriorityAfterLockedSection();
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void updateTransitionPlayerPid(int i) {
        if (i >= 0 && this.mTransitionPlayerPid >= 0) {
            Slog.w("ActivityManager", "Transition player is changed without death receipt. cur=" + this.mTransitionPlayerPid + " new=" + i);
        }
        this.mTransitionPlayerPid = i;
    }

    public final void enterSafeMode() {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (!this.mSystemReady) {
                    try {
                        AppGlobals.getPackageManager().enterSafeMode();
                    } catch (RemoteException unused) {
                    }
                }
                this.mSafeMode = true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final void showSafeModeOverlay() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.text_edit_suggestion_item, (ViewGroup) null);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2015;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.gravity = 8388691;
        layoutParams.format = inflate.getBackground().getOpacity();
        layoutParams.flags = 24;
        layoutParams.privateFlags |= 16;
        ((WindowManager) this.mContext.getSystemService("window")).addView(inflate, layoutParams);
    }

    public void noteWakeupAlarm(IIntentSender iIntentSender, WorkSource workSource, int i, String str, String str2) {
        if (workSource != null && workSource.isEmpty()) {
            workSource = null;
        }
        if (i <= 0 && workSource == null) {
            if (iIntentSender == null || !(iIntentSender instanceof PendingIntentRecord)) {
                return;
            }
            int callingUid = Binder.getCallingUid();
            int i2 = ((PendingIntentRecord) iIntentSender).uid;
            if (i2 == callingUid) {
                i2 = 1000;
            }
            i = i2;
        }
        int i3 = i;
        this.mBatteryStatsService.noteWakupAlarm(str, i3, workSource, str2);
        if (workSource != null) {
            String packageName = workSource.getPackageName(0);
            int attributionUid = workSource.getAttributionUid();
            if (packageName == null) {
                packageName = str;
            } else {
                i3 = attributionUid;
            }
            FrameworkStatsLog.write(35, workSource, str2, str, this.mUsageStatsService != null ? this.mUsageStatsService.getAppStandbyBucket(packageName, UserHandle.getUserId(i3), SystemClock.elapsedRealtime()) : 0);
            return;
        }
        FrameworkStatsLog.write_non_chained(35, i3, (String) null, str2, str, this.mUsageStatsService != null ? this.mUsageStatsService.getAppStandbyBucket(str, UserHandle.getUserId(i3), SystemClock.elapsedRealtime()) : 0);
    }

    public void noteAlarmStart(IIntentSender iIntentSender, WorkSource workSource, int i, String str) {
        if (workSource != null && workSource.isEmpty()) {
            workSource = null;
        }
        if (i <= 0 && workSource == null) {
            if (iIntentSender == null || !(iIntentSender instanceof PendingIntentRecord)) {
                return;
            }
            int callingUid = Binder.getCallingUid();
            int i2 = ((PendingIntentRecord) iIntentSender).uid;
            if (i2 == callingUid) {
                i2 = 1000;
            }
            i = i2;
        }
        this.mBatteryStatsService.noteAlarmStart(str, workSource, i);
    }

    public void noteAlarmFinish(IIntentSender iIntentSender, WorkSource workSource, int i, String str) {
        if (workSource != null && workSource.isEmpty()) {
            workSource = null;
        }
        if (i <= 0 && workSource == null) {
            if (iIntentSender == null || !(iIntentSender instanceof PendingIntentRecord)) {
                return;
            }
            int callingUid = Binder.getCallingUid();
            int i2 = ((PendingIntentRecord) iIntentSender).uid;
            if (i2 == callingUid) {
                i2 = 1000;
            }
            i = i2;
        }
        this.mBatteryStatsService.noteAlarmFinish(str, workSource, i);
    }

    public boolean killPids(int[] iArr, final String str, boolean z) {
        boolean z2;
        int setAdj;
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("killPids only available to the system");
        }
        if (str == null) {
            str = "Unknown";
        }
        final ArrayList arrayList = new ArrayList();
        synchronized (this.mPidsSelfLocked) {
            int i = 0;
            for (int i2 : iArr) {
                ProcessRecord processRecord = this.mPidsSelfLocked.get(i2);
                if (processRecord != null && (setAdj = processRecord.mState.getSetAdj()) > i) {
                    i = setAdj;
                }
            }
            if (i < 999 && i > 900) {
                i = 900;
            }
            if (!z && i < 500) {
                i = 500;
            }
            Slog.w("ActivityManager", "Killing processes " + str + " at adjustment " + i);
            z2 = false;
            for (int i3 : iArr) {
                ProcessRecord processRecord2 = this.mPidsSelfLocked.get(i3);
                if (processRecord2 != null && processRecord2.mState.getSetAdj() >= i && !processRecord2.isKilledByAm()) {
                    arrayList.add(processRecord2);
                    z2 = true;
                }
            }
        }
        if (!arrayList.isEmpty()) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityManagerService.this.lambda$killPids$9(arrayList, str);
                }
            });
        }
        return z2;
    }

    public /* synthetic */ void lambda$killPids$9(ArrayList arrayList, String str) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((ProcessRecord) arrayList.get(i)).killLocked(str, 13, 12, true);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void killUid(int i, int i2, String str) {
        enforceCallingPermission("android.permission.KILL_UID", "killUid");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                    boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            this.mProcessList.killPackageProcessesLSP(null, i, i2, -800, false, true, true, true, false, false, 13, 11, str != null ? str : "kill uid");
                        } catch (Throwable th) {
                            resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    resetPriorityAfterProcLockedSection();
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void killUidForPermissionChange(int i, int i2, String str) {
        enforceCallingPermission("android.permission.KILL_UID", "killUid");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                    boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            this.mProcessList.killPackageProcessesLSP(null, i, i2, -800, false, true, true, true, false, false, 8, 0, str != null ? str : "kill uid");
                        } catch (Throwable th) {
                            resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    resetPriorityAfterProcLockedSection();
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public boolean killProcessesBelowForeground(String str) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("killProcessesBelowForeground() only available to system");
        }
        return killProcessesBelowAdj(0, str);
    }

    public final boolean killProcessesBelowAdj(int i, String str) {
        boolean z;
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("killProcessesBelowAdj() only available to system");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        synchronized (this.mPidsSelfLocked) {
                            int size = this.mPidsSelfLocked.size();
                            z = false;
                            for (int i2 = 0; i2 < size; i2++) {
                                this.mPidsSelfLocked.keyAt(i2);
                                ProcessRecord valueAt = this.mPidsSelfLocked.valueAt(i2);
                                if (valueAt != null && valueAt.mState.getSetAdj() > i && !valueAt.isKilledByAm()) {
                                    valueAt.killLocked(str, 8, true);
                                    z = true;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterProcLockedSection();
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
        return z;
    }

    public void killProcessesWhenImperceptible(int[] iArr, String str) {
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            throw new SecurityException("Requires permission android.permission.FORCE_STOP_PACKAGES");
        }
        int callingUid = Binder.getCallingUid();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mProcessList.killProcessesWhenImperceptible(iArr, str, callingUid);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void hang(IBinder iBinder, boolean z) {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        AnonymousClass16 anonymousClass16 = new IBinder.DeathRecipient() { // from class: com.android.server.am.ActivityManagerService.16
            public AnonymousClass16() {
            }

            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                synchronized (this) {
                    notifyAll();
                }
            }
        };
        try {
            iBinder.linkToDeath(anonymousClass16, 0);
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    Watchdog.getInstance().setAllowRestart(z);
                    Slog.i("ActivityManager", "Hanging system process at request of pid " + Binder.getCallingPid());
                    synchronized (anonymousClass16) {
                        while (iBinder.isBinderAlive()) {
                            try {
                                anonymousClass16.wait();
                            } catch (InterruptedException unused) {
                            }
                        }
                    }
                    Watchdog.getInstance().setAllowRestart(true);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
        } catch (RemoteException unused2) {
            Slog.w("ActivityManager", "hang: given caller IBinder is already dead.");
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$16 */
    /* loaded from: classes.dex */
    public class AnonymousClass16 implements IBinder.DeathRecipient {
        public AnonymousClass16() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (this) {
                notifyAll();
            }
        }
    }

    public void restart() {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        Log.i("ActivityManager", "Sending shutdown broadcast...");
        AnonymousClass17 anonymousClass17 = new BroadcastReceiver() { // from class: com.android.server.am.ActivityManagerService.17
            public AnonymousClass17() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                Log.i("ActivityManager", "Shutting down activity manager...");
                ActivityManagerService.this.shutdown(10000);
                Log.i("ActivityManager", "Shutdown complete, restarting!");
                Process.killProcess(Process.myPid());
                System.exit(10);
            }
        };
        Intent intent = new Intent("android.intent.action.ACTION_SHUTDOWN");
        intent.addFlags(268435456);
        intent.putExtra("android.intent.extra.SHUTDOWN_USERSPACE_ONLY", true);
        anonymousClass17.onReceive(this.mContext, intent);
    }

    /* renamed from: com.android.server.am.ActivityManagerService$17 */
    /* loaded from: classes.dex */
    public class AnonymousClass17 extends BroadcastReceiver {
        public AnonymousClass17() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.i("ActivityManager", "Shutting down activity manager...");
            ActivityManagerService.this.shutdown(10000);
            Log.i("ActivityManager", "Shutdown complete, restarting!");
            Process.killProcess(Process.myPid());
            System.exit(10);
        }
    }

    public void performIdleMaintenance() {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                final long uptimeMillis = SystemClock.uptimeMillis();
                final long j = uptimeMillis - this.mLastIdleTime;
                this.mOomAdjuster.mCachedAppOptimizer.compactAllSystem();
                final long lowRamTimeSinceIdleLPr = this.mAppProfiler.getLowRamTimeSinceIdleLPr(uptimeMillis);
                this.mLastIdleTime = uptimeMillis;
                this.mAppProfiler.updateLowRamTimestampLPr(uptimeMillis);
                StringBuilder sb = new StringBuilder(128);
                sb.append("Idle maintenance over ");
                TimeUtils.formatDuration(j, sb);
                sb.append(" low RAM for ");
                TimeUtils.formatDuration(lowRamTimeSinceIdleLPr, sb);
                Slog.i("ActivityManager", sb.toString());
                final boolean z = lowRamTimeSinceIdleLPr > j / 3;
                final long max = Math.max((Process.getTotalMemory() / 1000) / 100, 10000L);
                this.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda4
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ActivityManagerService.this.lambda$performIdleMaintenance$11(z, max, j, lowRamTimeSinceIdleLPr, uptimeMillis, (ProcessRecord) obj);
                    }
                });
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public /* synthetic */ void lambda$performIdleMaintenance$11(boolean z, long j, long j2, long j3, long j4, final ProcessRecord processRecord) {
        final long initialIdlePss;
        final long lastPss;
        long lastSwapPss;
        if (processRecord.getThread() == null) {
            return;
        }
        ProcessProfileRecord processProfileRecord = processRecord.mProfile;
        ProcessStateRecord processStateRecord = processRecord.mState;
        int setProcState = processStateRecord.getSetProcState();
        if (!processStateRecord.isNotCachedSinceIdle()) {
            if (setProcState >= 14 || setProcState < 0) {
                return;
            }
            processStateRecord.setNotCachedSinceIdle(true);
            synchronized (this.mAppProfiler.mProfilerLock) {
                processProfileRecord.setInitialIdlePss(0L);
                this.mAppProfiler.updateNextPssTimeLPf(processStateRecord.getSetProcState(), processRecord.mProfile, j4, true);
            }
            return;
        }
        if (setProcState < 5 || setProcState > 10) {
            return;
        }
        synchronized (this.mAppProfiler.mProfilerLock) {
            initialIdlePss = processProfileRecord.getInitialIdlePss();
            lastPss = processProfileRecord.getLastPss();
            lastSwapPss = processProfileRecord.getLastSwapPss();
        }
        if (!z || initialIdlePss == 0 || lastPss <= (3 * initialIdlePss) / 2 || lastPss <= initialIdlePss + j) {
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("Kill");
        sb.append(processRecord.processName);
        sb.append(" in idle maint: pss=");
        sb.append(lastPss);
        sb.append(", swapPss=");
        sb.append(lastSwapPss);
        sb.append(", initialPss=");
        sb.append(initialIdlePss);
        sb.append(", period=");
        TimeUtils.formatDuration(j2, sb);
        sb.append(", lowRamPeriod=");
        TimeUtils.formatDuration(j3, sb);
        Slog.wtfQuiet("ActivityManager", sb.toString());
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerService.this.lambda$performIdleMaintenance$10(processRecord, lastPss, initialIdlePss);
            }
        });
    }

    public /* synthetic */ void lambda$performIdleMaintenance$10(ProcessRecord processRecord, long j, long j2) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                processRecord.killLocked("idle maint (pss " + j + " from " + j2 + ")", 13, 6, true);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void sendIdleJobTrigger() {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            broadcastIntent(null, new Intent("com.android.server.ACTION_TRIGGER_IDLE").setPackage("android").addFlags(1073741824), null, null, 0, null, null, null, -1, null, false, false, -1);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final void retrieveSettings() {
        Resources resources;
        ContentResolver contentResolver = this.mContext.getContentResolver();
        this.mActivityTaskManager.retrieveSettings(contentResolver);
        String string = Settings.Global.getString(contentResolver, "debug_app");
        boolean z = Settings.Global.getInt(contentResolver, "wait_for_debugger", 0) != 0;
        boolean z2 = Settings.Global.getInt(contentResolver, "always_finish_activities", 0) != 0;
        this.mHiddenApiBlacklist.registerObserver();
        this.mPlatformCompat.registerContentObserver();
        this.mAppProfiler.retrieveSettings();
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mOrigDebugApp = string;
                this.mDebugApp = string;
                this.mOrigWaitForDebugger = z;
                this.mWaitForDebugger = z;
                this.mAlwaysFinishActivities = z2;
                resources = this.mContext.getResources();
                this.mUserController.setInitialConfig(resources.getBoolean(R.bool.config_zramWriteback) ? false : true, resources.getInteger(R.integer.kg_carousel_angle), resources.getBoolean(17891771));
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        this.mAppErrors.loadAppsNotReportingCrashesFromConfig(resources.getString(R.string.enablePin));
    }

    public void systemReady(Runnable runnable, TimingsTraceAndSlog timingsTraceAndSlog) {
        ArrayList arrayList;
        timingsTraceAndSlog.traceBegin("PhaseActivityManagerReady");
        EventLogTags.writeBootProgressAmsState(0, -1, 0, "systemReady", "NULL");
        this.mSystemServiceManager.preSystemReady();
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (this.mSystemReady) {
                    if (runnable != null) {
                        runnable.run();
                    }
                    EventLogTags.writeBootProgressAmsState(0, -1, 2, "systemReady", "finish goingCallback");
                    timingsTraceAndSlog.traceEnd();
                    return;
                }
                timingsTraceAndSlog.traceBegin("controllersReady");
                this.mLocalDeviceIdleController = (DeviceIdleInternal) LocalServices.getService(DeviceIdleInternal.class);
                this.mActivityTaskManager.onSystemReady();
                this.mUserController.onSystemReady();
                this.mAppOpsService.systemReady();
                this.mProcessList.onSystemReady();
                this.mAppRestrictionController.onSystemReady();
                this.mAppProfiler.onSystemReady();
                this.mSystemReady = true;
                timingsTraceAndSlog.traceEnd();
                resetPriorityAfterLockedSection();
                try {
                    sTheRealBuildSerial = IDeviceIdentifiersPolicyService.Stub.asInterface(ServiceManager.getService("device_identifiers")).getSerial();
                } catch (RemoteException unused) {
                }
                timingsTraceAndSlog.traceBegin("killProcesses");
                synchronized (this.mPidsSelfLocked) {
                    arrayList = null;
                    for (int size = this.mPidsSelfLocked.size() - 1; size >= 0; size--) {
                        ProcessRecord valueAt = this.mPidsSelfLocked.valueAt(size);
                        if (!isAllowedWhileBooting(valueAt.info)) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(valueAt);
                        }
                    }
                }
                boostPriorityForLockedSection();
                synchronized (this) {
                    if (arrayList != null) {
                        try {
                            for (int size2 = arrayList.size() - 1; size2 >= 0; size2 += -1) {
                                ProcessRecord processRecord = (ProcessRecord) arrayList.get(size2);
                                Slog.i("ActivityManager", "Removing system update proc: " + processRecord);
                                this.mProcessList.removeProcessLocked(processRecord, true, false, 13, 8, "system update done");
                            }
                        } finally {
                            resetPriorityAfterLockedSection();
                        }
                    }
                    this.mProcessesReady = true;
                }
                resetPriorityAfterLockedSection();
                timingsTraceAndSlog.traceEnd();
                Slog.i("ActivityManager", "System now ready");
                Slog.i("ActivityManager", "!@Boot_EBS_F: boot_progress_ams_ready");
                EventLogTags.writeBootProgressAmsReady(SystemClock.uptimeMillis());
                EnterpriseDeviceManager enterpriseDeviceManager = EnterpriseDeviceManager.getInstance(this.mContext);
                if (enterpriseDeviceManager != null) {
                    this.mRestrictionPolicy = enterpriseDeviceManager.getRestrictionPolicy();
                }
                timingsTraceAndSlog.traceBegin("updateTopComponentForFactoryTest");
                this.mAtmInternal.updateTopComponentForFactoryTest();
                timingsTraceAndSlog.traceEnd();
                timingsTraceAndSlog.traceBegin("registerActivityLaunchObserver");
                this.mAtmInternal.getLaunchObserverRegistry().registerLaunchObserver(this.mActivityLaunchObserver);
                timingsTraceAndSlog.traceEnd();
                timingsTraceAndSlog.traceBegin("watchDeviceProvisioning");
                watchDeviceProvisioning(this.mContext);
                timingsTraceAndSlog.traceEnd();
                timingsTraceAndSlog.traceBegin("retrieveSettings");
                retrieveSettings();
                timingsTraceAndSlog.traceEnd();
                timingsTraceAndSlog.traceBegin("Ugm.onSystemReady");
                this.mUgmInternal.onSystemReady();
                timingsTraceAndSlog.traceEnd();
                timingsTraceAndSlog.traceBegin("updateForceBackgroundCheck");
                PowerManagerInternal powerManagerInternal = (PowerManagerInternal) LocalServices.getService(PowerManagerInternal.class);
                if (powerManagerInternal != null) {
                    powerManagerInternal.registerLowPowerModeObserver(12, new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda20
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ActivityManagerService.this.lambda$systemReady$12((PowerSaveState) obj);
                        }
                    });
                    updateForceBackgroundCheck(powerManagerInternal.getLowPowerState(12).batterySaverEnabled);
                } else {
                    Slog.wtf("ActivityManager", "PowerManagerInternal not found.");
                }
                timingsTraceAndSlog.traceEnd();
                timingsTraceAndSlog.traceBegin("earlyPhoneStart");
                try {
                    if ("true".equals(SystemProperties.get("sys.config.phone_start_early", "true")) && !AppGlobals.getPackageManager().isFirstBoot() && !AppGlobals.getPackageManager().isDeviceUpgrading()) {
                        Slog.d("ActivityManager", "Phone app starts early due to booting performance");
                        boostPriorityForLockedSection();
                        synchronized (this) {
                            try {
                                ApplicationInfo applicationInfo = AppGlobals.getPackageManager().getApplicationInfo("com.android.phone", 1024L, UserHandle.getCallingUserId());
                                if (applicationInfo != null) {
                                    Slog.i("ActivityManager", "!@Boot_EBS_N: addAppLocked com.android.phone");
                                    addAppLocked(applicationInfo, null, false, null, 2);
                                }
                                resetPriorityAfterLockedSection();
                            } finally {
                            }
                        }
                    }
                } catch (RemoteException unused2) {
                    Slog.e("ActivityManager", "Failed to get metadata of Phone app");
                }
                timingsTraceAndSlog.traceEnd();
                if (runnable != null) {
                    runnable.run();
                }
                timingsTraceAndSlog.traceBegin("getCurrentUser");
                int currentUserId = this.mUserController.getCurrentUserId();
                Slog.i("ActivityManager", "Current user:" + currentUserId);
                if (currentUserId != 0 && !this.mUserController.isSystemUserStarted()) {
                    throw new RuntimeException("System user not started while current user is:" + currentUserId);
                }
                timingsTraceAndSlog.traceEnd();
                timingsTraceAndSlog.traceBegin("ActivityManagerStartApps");
                this.mBatteryStatsService.onSystemReady();
                this.mBatteryStatsService.noteEvent(32775, Integer.toString(currentUserId), currentUserId);
                this.mBatteryStatsService.noteEvent(32776, Integer.toString(currentUserId), currentUserId);
                this.mUserController.onSystemUserStarting();
                boostPriorityForLockedSection();
                synchronized (this) {
                    try {
                        timingsTraceAndSlog.traceBegin("startPersistentApps");
                        startPersistentApps(524288);
                        timingsTraceAndSlog.traceEnd();
                        EventLogTags.writeBootProgressAmsState(currentUserId, -1, 1, "systemReady", "startPersistentApps MATCH_DIRECT_BOOT_AWARE");
                        this.mBooting = true;
                        if (SystemProperties.getBoolean("ro.system_user_home_needed", false)) {
                            timingsTraceAndSlog.traceBegin("enableHomeActivity");
                            try {
                                AppGlobals.getPackageManager().setComponentEnabledSetting(new ComponentName(this.mContext, (Class<?>) SystemUserHomeActivity.class), 1, 0, 0, "am");
                                timingsTraceAndSlog.traceEnd();
                            } catch (RemoteException e) {
                                throw e.rethrowAsRuntimeException();
                            }
                        }
                        boolean z = currentUserId == 0;
                        if (z && !UserManager.isHeadlessSystemUserMode()) {
                            timingsTraceAndSlog.traceBegin("startHomeOnAllDisplays");
                            this.mAtmInternal.startHomeOnAllDisplays(currentUserId, "systemReady");
                            timingsTraceAndSlog.traceEnd();
                        }
                        timingsTraceAndSlog.traceBegin("showSystemReadyErrorDialogs");
                        this.mAtmInternal.showSystemReadyErrorDialogsIfNeeded();
                        timingsTraceAndSlog.traceEnd();
                        if (z) {
                            timingsTraceAndSlog.traceBegin("sendUserStartBroadcast");
                            int callingUid = Binder.getCallingUid();
                            int callingPid = Binder.getCallingPid();
                            long clearCallingIdentity = Binder.clearCallingIdentity();
                            try {
                                this.mUserController.sendUserStartedBroadcast(currentUserId, callingUid, callingPid);
                                EventLogTags.writeBootProgressAmsState(currentUserId, -1, 1, "systemReady", "send USER STARTED");
                                this.mUserController.sendUserStartingBroadcast(currentUserId, callingUid, callingPid);
                                EventLogTags.writeBootProgressAmsState(currentUserId, -1, 1, "systemReady", "send USER STARTING");
                            } finally {
                                try {
                                    timingsTraceAndSlog.traceEnd();
                                } finally {
                                }
                            }
                            timingsTraceAndSlog.traceEnd();
                        } else {
                            Slog.i("ActivityManager", "Not sending multi-user broadcasts for non-system user " + currentUserId);
                        }
                        timingsTraceAndSlog.traceBegin("resumeTopActivities");
                        this.mAtmInternal.resumeTopActivities(false);
                        timingsTraceAndSlog.traceEnd();
                        if (z) {
                            timingsTraceAndSlog.traceBegin("sendUserSwitchBroadcasts");
                            this.mUserController.sendUserSwitchBroadcasts(-1, currentUserId);
                            timingsTraceAndSlog.traceEnd();
                        }
                        timingsTraceAndSlog.traceBegin("setBinderProxies");
                        BinderInternal.nSetBinderProxyCountWatermarks(6000, 5500);
                        BinderInternal.nSetBinderProxyCountEnabled(true);
                        BinderInternal.setBinderProxyCountCallback(new BinderInternal.BinderProxyLimitListener() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda21
                            public final void onLimitReached(int i) {
                                ActivityManagerService.this.lambda$systemReady$13(i);
                            }
                        }, this.mHandler);
                        timingsTraceAndSlog.traceEnd();
                        timingsTraceAndSlog.traceEnd();
                        timingsTraceAndSlog.traceBegin("componentAlias");
                        this.mComponentAliasResolver.onSystemReady(this.mConstants.mEnableComponentAlias, this.mConstants.mComponentAliasOverrides);
                        timingsTraceAndSlog.traceEnd();
                        BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda22
                            @Override // java.lang.Runnable
                            public final void run() {
                                ActivityManagerService.this.lambda$systemReady$14();
                            }
                        });
                        BackgroundThread.getHandler().post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda23
                            @Override // java.lang.Runnable
                            public final void run() {
                                ActivityManagerService.this.lambda$systemReady$15();
                            }
                        });
                        EventLogTags.writeBootProgressAmsState(0, -1, 2, "systemReady", "NULL");
                        timingsTraceAndSlog.traceEnd();
                        resetPriorityAfterLockedSection();
                        updateExtraFreeKbytes();
                        this.mScreenChangeObserver = new ScreenChangeObserver();
                    } finally {
                        resetPriorityAfterLockedSection();
                    }
                }
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public /* synthetic */ void lambda$systemReady$12(PowerSaveState powerSaveState) {
        updateForceBackgroundCheck(powerSaveState.batterySaverEnabled);
    }

    public /* synthetic */ void lambda$systemReady$13(int i) {
        Slog.wtf("ActivityManager", "Uid " + i + " sent too many Binders to uid " + Process.myUid());
        BinderProxy.dumpProxyDebugInfo();
        if (i == 1000) {
            Slog.i("ActivityManager", "Skipping kill (uid is SYSTEM)");
        } else {
            killUid(UserHandle.getAppId(i), UserHandle.getUserId(i), "Too many Binders sent to SYSTEM");
            VMRuntime.getRuntime().requestConcurrentGC();
        }
    }

    public /* synthetic */ void lambda$systemReady$14() {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mExt.initLongLivePackageLocked();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public /* synthetic */ void lambda$systemReady$15() {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mExt.initTmoForceStopPolicy();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final void watchDeviceProvisioning(Context context) {
        if (isDeviceProvisioned(context)) {
            SystemProperties.set("persist.sys.device_provisioned", "1");
        } else {
            context.getContentResolver().registerContentObserver(Settings.Global.getUriFor("device_provisioned"), false, new ContentObserver(new Handler(Looper.getMainLooper())) { // from class: com.android.server.am.ActivityManagerService.18
                public final /* synthetic */ Context val$context;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass18(Handler handler, Context context2) {
                    super(handler);
                    r3 = context2;
                }

                @Override // android.database.ContentObserver
                public void onChange(boolean z) {
                    if (ActivityManagerService.this.isDeviceProvisioned(r3)) {
                        SystemProperties.set("persist.sys.device_provisioned", "1");
                        r3.getContentResolver().unregisterContentObserver(this);
                    }
                }
            });
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$18 */
    /* loaded from: classes.dex */
    public class AnonymousClass18 extends ContentObserver {
        public final /* synthetic */ Context val$context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass18(Handler handler, Context context2) {
            super(handler);
            r3 = context2;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (ActivityManagerService.this.isDeviceProvisioned(r3)) {
                SystemProperties.set("persist.sys.device_provisioned", "1");
                r3.getContentResolver().unregisterContentObserver(this);
            }
        }
    }

    public final boolean isDeviceProvisioned(Context context) {
        return Settings.Global.getInt(context.getContentResolver(), "device_provisioned", 0) != 0;
    }

    public final void startBroadcastObservers() {
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            broadcastQueue.start(this.mContext.getContentResolver());
        }
    }

    public final void updateForceBackgroundCheck(boolean z) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        if (this.mForceBackgroundCheck != z) {
                            this.mForceBackgroundCheck = z;
                            if (z) {
                                this.mProcessList.doStopUidForIdleUidsLocked();
                            }
                        }
                    } catch (Throwable th) {
                        resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterProcLockedSection();
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void killAppAtUsersRequest(ProcessRecord processRecord) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mAppErrors.killAppAtUserRequestLocked(processRecord);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void handleApplicationCrash(IBinder iBinder, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo) {
        String str;
        PackageManager packageManager;
        ProcessRecord findAppProcess = findAppProcess(iBinder, "Crash");
        if (iBinder == null) {
            str = "system_server";
        } else {
            str = findAppProcess == null ? "unknown" : findAppProcess.processName;
        }
        if (CoreRune.SYSFW_APP_SPEG && (packageManager = this.mContext.getPackageManager()) != null && findAppProcess != null && packageManager.isSpeg(findAppProcess.info.packageName, findAppProcess.userId)) {
            Slog.i("SPEG", "Skipping crash report of " + findAppProcess.info.packageName + ": launched by SPEG");
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                boostPriorityForLockedSection();
                synchronized (this) {
                    try {
                        this.mAppErrors.killAppAtUserRequestLocked(findAppProcess);
                    } catch (Throwable th) {
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterLockedSection();
                return;
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        handleApplicationCrashInner("crash", findAppProcess, str, parcelableCrashInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0266  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleApplicationCrashInner(java.lang.String r49, com.android.server.am.ProcessRecord r50, java.lang.String r51, android.app.ApplicationErrorReport.CrashInfo r52) {
        /*
            Method dump skipped, instructions count: 672
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.handleApplicationCrashInner(java.lang.String, com.android.server.am.ProcessRecord, java.lang.String, android.app.ApplicationErrorReport$CrashInfo):void");
    }

    public void handleApplicationStrictModeViolation(IBinder iBinder, int i, StrictMode.ViolationInfo violationInfo) {
        boolean z;
        ProcessRecord findAppProcess = findAppProcess(iBinder, "StrictMode");
        if ((67108864 & i) != 0) {
            Integer valueOf = Integer.valueOf(violationInfo.hashCode());
            synchronized (this.mAlreadyLoggedViolatedStacks) {
                if (this.mAlreadyLoggedViolatedStacks.contains(valueOf)) {
                    z = false;
                } else {
                    if (this.mAlreadyLoggedViolatedStacks.size() >= 5000) {
                        this.mAlreadyLoggedViolatedStacks.clear();
                    }
                    this.mAlreadyLoggedViolatedStacks.add(valueOf);
                    z = true;
                }
            }
            if (z) {
                logStrictModeViolationToDropBox(findAppProcess, violationInfo);
            }
        }
        if ((i & 536870912) != 0) {
            AppErrorResult appErrorResult = new AppErrorResult();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                Message obtain = Message.obtain();
                obtain.what = 26;
                HashMap hashMap = new HashMap();
                hashMap.put(KnoxCustomManagerService.SPCM_KEY_RESULT, appErrorResult);
                hashMap.put("app", findAppProcess);
                hashMap.put("info", violationInfo);
                obtain.obj = hashMap;
                this.mUiHandler.sendMessage(obtain);
                Binder.restoreCallingIdentity(clearCallingIdentity);
                Slog.w("ActivityManager", "handleApplicationStrictModeViolation; res=" + appErrorResult.get());
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }
    }

    public void registerStrictModeCallback(IBinder iBinder) {
        int callingPid = Binder.getCallingPid();
        this.mStrictModeCallbacks.put(callingPid, IUnsafeIntentStrictModeCallback.Stub.asInterface(iBinder));
        try {
            iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.android.server.am.ActivityManagerService.19
                public final /* synthetic */ int val$callingPid;

                public AnonymousClass19(int callingPid2) {
                    r2 = callingPid2;
                }

                @Override // android.os.IBinder.DeathRecipient
                public void binderDied() {
                    ActivityManagerService.this.mStrictModeCallbacks.remove(r2);
                }
            }, 0);
        } catch (RemoteException unused) {
            this.mStrictModeCallbacks.remove(callingPid2);
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$19 */
    /* loaded from: classes.dex */
    public class AnonymousClass19 implements IBinder.DeathRecipient {
        public final /* synthetic */ int val$callingPid;

        public AnonymousClass19(int callingPid2) {
            r2 = callingPid2;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ActivityManagerService.this.mStrictModeCallbacks.remove(r2);
        }
    }

    public final void logStrictModeViolationToDropBox(ProcessRecord processRecord, StrictMode.ViolationInfo violationInfo) {
        if (violationInfo == null) {
            return;
        }
        boolean z = processRecord == null || (processRecord.info.flags & 129) != 0;
        String str = processRecord == null ? "unknown" : processRecord.processName;
        final DropBoxManager dropBoxManager = (DropBoxManager) this.mContext.getSystemService("dropbox");
        final String str2 = processClass(processRecord) + "_strictmode";
        if (dropBoxManager == null || !dropBoxManager.isTagEnabled(str2)) {
            return;
        }
        StringBuilder sb = new StringBuilder(1024);
        synchronized (sb) {
            appendDropBoxProcessHeaders(processRecord, str, sb);
            sb.append("Build: ");
            sb.append(Build.FINGERPRINT);
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            sb.append("System-App: ");
            sb.append(z);
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            sb.append("Uptime-Millis: ");
            sb.append(violationInfo.violationUptimeMillis);
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            if (violationInfo.violationNumThisLoop != 0) {
                sb.append("Loop-Violation-Number: ");
                sb.append(violationInfo.violationNumThisLoop);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (violationInfo.numAnimationsRunning != 0) {
                sb.append("Animations-Running: ");
                sb.append(violationInfo.numAnimationsRunning);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (violationInfo.broadcastIntentAction != null) {
                sb.append("Broadcast-Intent-Action: ");
                sb.append(violationInfo.broadcastIntentAction);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (violationInfo.durationMillis != -1) {
                sb.append("Duration-Millis: ");
                sb.append(violationInfo.durationMillis);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (violationInfo.numInstances != -1) {
                sb.append("Instance-Count: ");
                sb.append(violationInfo.numInstances);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            String[] strArr = violationInfo.tags;
            if (strArr != null) {
                for (String str3 : strArr) {
                    sb.append("Span-Tag: ");
                    sb.append(str3);
                    sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                }
            }
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            sb.append(violationInfo.getStackTrace());
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            if (violationInfo.getViolationDetails() != null) {
                sb.append(violationInfo.getViolationDetails());
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
        }
        final String sb2 = sb.toString();
        IoThread.getHandler().post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                dropBoxManager.addText(str2, sb2);
            }
        });
    }

    public boolean handleApplicationWtf(IBinder iBinder, String str, boolean z, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo, int i) {
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        Preconditions.checkNotNull(parcelableCrashInfo);
        if (z || i == Process.myPid()) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.20
                public final /* synthetic */ IBinder val$app;
                public final /* synthetic */ int val$callingPid;
                public final /* synthetic */ int val$callingUid;
                public final /* synthetic */ ApplicationErrorReport.ParcelableCrashInfo val$crashInfo;
                public final /* synthetic */ String val$tag;

                public AnonymousClass20(int callingUid2, int callingPid2, IBinder iBinder2, String str2, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo2) {
                    r2 = callingUid2;
                    r3 = callingPid2;
                    r4 = iBinder2;
                    r5 = str2;
                    r6 = parcelableCrashInfo2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ActivityManagerService.this.handleApplicationWtfInner(r2, r3, r4, r5, r6);
                }
            });
            return false;
        }
        ProcessRecord handleApplicationWtfInner = handleApplicationWtfInner(callingUid2, callingPid2, iBinder2, str2, parcelableCrashInfo2);
        boolean z2 = Build.IS_ENG || Settings.Global.getInt(this.mContext.getContentResolver(), "wtf_is_fatal", 0) != 0;
        boolean z3 = handleApplicationWtfInner == null || handleApplicationWtfInner.isPersistent();
        if (!z2 || z3) {
            return false;
        }
        if (Build.IS_ENG && this.mUserController.getCurrentUserId() == 77) {
            return false;
        }
        Slog.v("ActivityManager", "handleApplicationWtf: crashing " + handleApplicationWtfInner + " from " + callingPid2);
        this.mAppErrors.crashApplication(handleApplicationWtfInner, parcelableCrashInfo2);
        return true;
    }

    /* renamed from: com.android.server.am.ActivityManagerService$20 */
    /* loaded from: classes.dex */
    public class AnonymousClass20 implements Runnable {
        public final /* synthetic */ IBinder val$app;
        public final /* synthetic */ int val$callingPid;
        public final /* synthetic */ int val$callingUid;
        public final /* synthetic */ ApplicationErrorReport.ParcelableCrashInfo val$crashInfo;
        public final /* synthetic */ String val$tag;

        public AnonymousClass20(int callingUid2, int callingPid2, IBinder iBinder2, String str2, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo2) {
            r2 = callingUid2;
            r3 = callingPid2;
            r4 = iBinder2;
            r5 = str2;
            r6 = parcelableCrashInfo2;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActivityManagerService.this.handleApplicationWtfInner(r2, r3, r4, r5, r6);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.server.am.ProcessRecord handleApplicationWtfInner(int r17, int r18, android.os.IBinder r19, java.lang.String r20, android.app.ApplicationErrorReport.CrashInfo r21) {
        /*
            r16 = this;
            r0 = r19
            r10 = r21
            java.lang.String r1 = "WTF"
            r2 = r16
            com.android.server.am.ProcessRecord r14 = r2.findAppProcess(r0, r1)
            java.lang.String r1 = "unknown"
            if (r0 != 0) goto L16
            java.lang.String r0 = "system_server"
        L14:
            r9 = r0
            goto L1d
        L16:
            if (r14 != 0) goto L1a
            r9 = r1
            goto L1d
        L1a:
            java.lang.String r0 = r14.processName
            goto L14
        L1d:
            int r3 = android.os.UserHandle.getUserId(r17)
            if (r14 != 0) goto L25
            r0 = -1
            goto L29
        L25:
            android.content.pm.ApplicationInfo r0 = r14.info
            int r0 = r0.flags
        L29:
            r6 = r0
            if (r10 != 0) goto L2d
            goto L2f
        L2d:
            java.lang.String r1 = r10.exceptionMessage
        L2f:
            r8 = r1
            r4 = r18
            r5 = r9
            r7 = r20
            com.android.server.am.EventLogTags.writeAmWtf(r3, r4, r5, r6, r7, r8)
            r3 = 80
            if (r14 == 0) goto L41
            int r0 = r14.getProcessClassEnum()
            goto L42
        L41:
            r0 = 0
        L42:
            r8 = r0
            r4 = r17
            r5 = r20
            r6 = r9
            r7 = r18
            com.android.internal.util.FrameworkStatsLog.write(r3, r4, r5, r6, r7, r8)
            java.lang.String r1 = "wtf"
            r4 = 0
            r5 = 0
            r6 = 0
            r8 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r15 = 0
            r0 = r16
            r2 = r14
            r3 = r9
            r7 = r20
            r9 = r11
            r10 = r21
            r11 = r12
            r12 = r13
            r13 = r15
            r0.addErrorToDropBox(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.handleApplicationWtfInner(int, int, android.os.IBinder, java.lang.String, android.app.ApplicationErrorReport$CrashInfo):com.android.server.am.ProcessRecord");
    }

    public void schedulePendingSystemServerWtfs(final LinkedList linkedList) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerService.this.lambda$schedulePendingSystemServerWtfs$17(linkedList);
            }
        });
    }

    /* renamed from: handlePendingSystemServerWtfs */
    public final void lambda$schedulePendingSystemServerWtfs$17(LinkedList linkedList) {
        ProcessRecord processRecord;
        synchronized (this.mPidsSelfLocked) {
            processRecord = this.mPidsSelfLocked.get(MY_PID);
        }
        Pair pair = (Pair) linkedList.poll();
        while (pair != null) {
            addErrorToDropBox("wtf", processRecord, "system_server", null, null, null, (String) pair.first, null, null, (ApplicationErrorReport.CrashInfo) pair.second, null, null, null);
            pair = (Pair) linkedList.poll();
        }
    }

    public final ProcessRecord findAppProcess(IBinder iBinder, String str) {
        ProcessRecord findAppProcessLOSP;
        if (iBinder == null) {
            return null;
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                findAppProcessLOSP = this.mProcessList.findAppProcessLOSP(iBinder, str);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return findAppProcessLOSP;
    }

    public void appendDropBoxProcessHeaders(ProcessRecord processRecord, String str, final StringBuilder sb) {
        if (processRecord == null) {
            sb.append("Process: ");
            sb.append(str);
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            return;
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                sb.append("Process: ");
                sb.append(str);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                sb.append("PID: ");
                sb.append(processRecord.getPid());
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                sb.append("UID: ");
                sb.append(processRecord.uid);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                if (processRecord.mOptRecord != null) {
                    sb.append("Frozen: ");
                    sb.append(processRecord.mOptRecord.isFrozen());
                    sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                }
                int i = processRecord.info.flags;
                final IPackageManager packageManager = AppGlobals.getPackageManager();
                sb.append("Flags: 0x");
                sb.append(Integer.toHexString(i));
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                final int callingUserId = UserHandle.getCallingUserId();
                processRecord.getPkgList().forEachPackage(new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda17
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ActivityManagerService.lambda$appendDropBoxProcessHeaders$18(sb, packageManager, callingUserId, (String) obj);
                    }
                });
                if (processRecord.info.isInstantApp()) {
                    sb.append("Instant-App: true\n");
                }
                if (processRecord.isSdkSandbox) {
                    String str2 = processRecord.sdkSandboxClientAppPackage;
                    try {
                        PackageInfo packageInfo = packageManager.getPackageInfo(str2, 1024L, callingUserId);
                        if (packageInfo != null) {
                            appendSdkSandboxClientPackageHeader(sb, packageInfo);
                            appendSdkSandboxLibraryHeaders(sb, packageInfo);
                        } else {
                            Slog.e("ActivityManager", "PackageInfo is null for SDK sandbox client: " + str2);
                        }
                    } catch (RemoteException e) {
                        Slog.e("ActivityManager", "Error getting package info for SDK sandbox client: " + str2, e);
                    }
                    sb.append("SdkSandbox: true\n");
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public static /* synthetic */ void lambda$appendDropBoxProcessHeaders$18(StringBuilder sb, IPackageManager iPackageManager, int i, String str) {
        sb.append("Package: ");
        sb.append(str);
        try {
            PackageInfo packageInfo = iPackageManager.getPackageInfo(str, 0L, i);
            if (packageInfo != null) {
                sb.append(" v");
                sb.append(packageInfo.getLongVersionCode());
                if (packageInfo.versionName != null) {
                    sb.append(" (");
                    sb.append(packageInfo.versionName);
                    sb.append(")");
                }
            }
        } catch (RemoteException e) {
            Slog.e("ActivityManager", "Error getting package info: " + str, e);
        }
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
    }

    public final void appendSdkSandboxClientPackageHeader(StringBuilder sb, PackageInfo packageInfo) {
        sb.append("SdkSandbox-Client-Package: ");
        sb.append(packageInfo.packageName);
        sb.append(" v");
        sb.append(packageInfo.getLongVersionCode());
        if (packageInfo.versionName != null) {
            sb.append(" (");
            sb.append(packageInfo.versionName);
            sb.append(")");
        }
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
    }

    public final void appendSdkSandboxLibraryHeaders(StringBuilder sb, PackageInfo packageInfo) {
        List sharedLibraryInfos = packageInfo.applicationInfo.getSharedLibraryInfos();
        int size = sharedLibraryInfos.size();
        for (int i = 0; i < size; i++) {
            SharedLibraryInfo sharedLibraryInfo = (SharedLibraryInfo) sharedLibraryInfos.get(i);
            if (sharedLibraryInfo.isSdk()) {
                sb.append("SdkSandbox-Library: ");
                sb.append(sharedLibraryInfo.getPackageName());
                VersionedPackage declaringPackage = sharedLibraryInfo.getDeclaringPackage();
                sb.append(" v");
                sb.append(declaringPackage.getLongVersionCode());
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
        }
    }

    public static String processClass(ProcessRecord processRecord) {
        return (processRecord == null || processRecord.getPid() == MY_PID) ? "system_server" : (processRecord.info.isSystemApp() || processRecord.info.isSystemExt()) ? "system_app" : "data_app";
    }

    public void addErrorToDropBox(String str, ProcessRecord processRecord, String str2, String str3, String str4, ProcessRecord processRecord2, String str5, String str6, File file, ApplicationErrorReport.CrashInfo crashInfo, Float f, IncrementalMetrics incrementalMetrics, UUID uuid) {
        addErrorToDropBox(str, processRecord, str2, str3, str4, processRecord2, str5, str6, file, crashInfo, f, incrementalMetrics, uuid, null);
    }

    public void addErrorToDropBox(String str, ProcessRecord processRecord, String str2, String str3, String str4, ProcessRecord processRecord2, String str5, String str6, File file, ApplicationErrorReport.CrashInfo crashInfo, Float f, IncrementalMetrics incrementalMetrics, UUID uuid, BinderTransaction.BinderProcsInfo binderProcsInfo) {
        ArrayList arrayList;
        String str7;
        String str8;
        try {
            DropBoxManager dropBoxManager = (DropBoxManager) this.mContext.getSystemService(DropBoxManager.class);
            String str9 = processClass(processRecord) + "_" + str;
            if (dropBoxManager == null || !dropBoxManager.isTagEnabled(str9)) {
                return;
            }
            DropboxRateLimiter.RateLimitResult shouldRateLimit = this.mDropboxRateLimiter.shouldRateLimit(str, str2);
            if (shouldRateLimit.shouldRateLimit()) {
                return;
            }
            StringBuilder sb = new StringBuilder(1024);
            appendDropBoxProcessHeaders(processRecord, str2, sb);
            if (processRecord != null) {
                sb.append("Foreground: ");
                sb.append(processRecord.isInterestingToUserLocked() ? "Yes" : "No");
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                if (processRecord.getStartUptime() > 0) {
                    long uptimeMillis = SystemClock.uptimeMillis() - processRecord.getStartUptime();
                    sb.append("Process-Runtime: ");
                    sb.append(uptimeMillis);
                    sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                }
            }
            if (str3 != null) {
                sb.append("Activity: ");
                sb.append(str3);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (str4 != null) {
                if (processRecord2 != null && processRecord2.getPid() != processRecord.getPid()) {
                    sb.append("Parent-Process: ");
                    sb.append(processRecord2.processName);
                    sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                }
                if (!str4.equals(str3)) {
                    sb.append("Parent-Activity: ");
                    sb.append(str4);
                    sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                }
            }
            if (str5 != null) {
                sb.append("Subject: ");
                sb.append(str5);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (uuid != null) {
                sb.append("ErrorId: ");
                sb.append(uuid.toString());
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            sb.append("Build: ");
            sb.append(Build.FINGERPRINT);
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            if (Debug.isDebuggerConnected()) {
                sb.append("Debugger: Connected\n");
            }
            if (crashInfo != null && (str8 = crashInfo.exceptionHandlerClassName) != null && !str8.isEmpty()) {
                sb.append("Crash-Handler: ");
                sb.append(crashInfo.exceptionHandlerClassName);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (crashInfo != null && (str7 = crashInfo.crashTag) != null && !str7.isEmpty()) {
                sb.append("Crash-Tag: ");
                sb.append(crashInfo.crashTag);
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (f != null) {
                sb.append("Loading-Progress: ");
                sb.append(f.floatValue());
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
            if (incrementalMetrics != null) {
                sb.append("Incremental: Yes");
                sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                long millisSinceOldestPendingRead = incrementalMetrics.getMillisSinceOldestPendingRead();
                if (millisSinceOldestPendingRead > 0) {
                    sb.append("Millis-Since-Oldest-Pending-Read: ");
                    sb.append(millisSinceOldestPendingRead);
                    sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                }
            }
            sb.append(shouldRateLimit.createHeader());
            sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            if (binderProcsInfo != null && (arrayList = binderProcsInfo.rawInfo) != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    sb.append(((String) it.next()) + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                }
            }
            boolean z = processRecord == null;
            AnonymousClass21 anonymousClass21 = new Thread("Error dump: " + str9) { // from class: com.android.server.am.ActivityManagerService.21
                public final /* synthetic */ ApplicationErrorReport.CrashInfo val$crashInfo;
                public final /* synthetic */ File val$dataFile;
                public final /* synthetic */ DropBoxManager val$dbox;
                public final /* synthetic */ String val$dropboxTag;
                public final /* synthetic */ String val$report;
                public final /* synthetic */ boolean val$runSynchronously;
                public final /* synthetic */ StringBuilder val$sb;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass21(String str10, String str62, StringBuilder sb2, String str92, File file2, ApplicationErrorReport.CrashInfo crashInfo2, boolean z2, DropBoxManager dropBoxManager2) {
                    super(str10);
                    r3 = str62;
                    r4 = sb2;
                    r5 = str92;
                    r6 = file2;
                    r7 = crashInfo2;
                    r8 = z2;
                    r9 = dropBoxManager2;
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    String str10;
                    String str11 = r3;
                    if (str11 != null) {
                        r4.append(str11);
                    }
                    String str12 = "logcat_for_" + r5;
                    String str13 = "max_error_bytes_for_" + r5;
                    int i = Build.IS_USER ? 0 : Settings.Global.getInt(ActivityManagerService.this.mContext.getContentResolver(), str12, 0);
                    int i2 = (Settings.Global.getInt(ActivityManagerService.this.mContext.getContentResolver(), str13, 524288) - r4.length()) - (i * 100);
                    File file2 = r6;
                    if (file2 != null && i2 > 0) {
                        try {
                            r4.append(FileUtils.readTextFile(file2, i2, "\n\n[[TRUNCATED]]"));
                        } catch (IOException e) {
                            Slog.e("ActivityManager", "Error reading " + r6, e);
                        }
                    }
                    ApplicationErrorReport.CrashInfo crashInfo2 = r7;
                    if (crashInfo2 != null && (str10 = crashInfo2.stackTrace) != null) {
                        r4.append(str10);
                    }
                    if (i > 0 && !r8) {
                        r4.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                        InputStreamReader inputStreamReader = null;
                        try {
                            try {
                                try {
                                    Process start = new ProcessBuilder("/system/bin/timeout", "-i", "-s", "SEGV", "10s", "/system/bin/logcat", "-v", "threadtime", "-b", "events", "-b", "system", "-b", "main", "-b", "crash", "-t", String.valueOf(i)).redirectErrorStream(true).start();
                                    try {
                                        start.getOutputStream().close();
                                    } catch (IOException unused) {
                                    }
                                    try {
                                        start.getErrorStream().close();
                                    } catch (IOException unused2) {
                                    }
                                    InputStreamReader inputStreamReader2 = new InputStreamReader(start.getInputStream());
                                    try {
                                        char[] cArr = new char[IInstalld.FLAG_FORCE];
                                        while (true) {
                                            int read = inputStreamReader2.read(cArr);
                                            if (read <= 0) {
                                                break;
                                            } else {
                                                r4.append(cArr, 0, read);
                                            }
                                        }
                                        inputStreamReader2.close();
                                    } catch (IOException e2) {
                                        e = e2;
                                        inputStreamReader = inputStreamReader2;
                                        Slog.e("ActivityManager", "Error running logcat", e);
                                        if (inputStreamReader != null) {
                                            inputStreamReader.close();
                                        }
                                        r9.addText(r5, r4.toString());
                                    } catch (Throwable th) {
                                        th = th;
                                        inputStreamReader = inputStreamReader2;
                                        if (inputStreamReader != null) {
                                            try {
                                                inputStreamReader.close();
                                            } catch (IOException unused3) {
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            } catch (IOException e3) {
                                e = e3;
                            }
                        } catch (IOException unused4) {
                        }
                    }
                    r9.addText(r5, r4.toString());
                }
            };
            if (z2) {
                int allowThreadDiskWritesMask = StrictMode.allowThreadDiskWritesMask();
                try {
                    anonymousClass21.run();
                    return;
                } finally {
                    StrictMode.setThreadPolicyMask(allowThreadDiskWritesMask);
                }
            }
            anonymousClass21.start();
        } catch (Exception unused) {
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$21 */
    /* loaded from: classes.dex */
    public class AnonymousClass21 extends Thread {
        public final /* synthetic */ ApplicationErrorReport.CrashInfo val$crashInfo;
        public final /* synthetic */ File val$dataFile;
        public final /* synthetic */ DropBoxManager val$dbox;
        public final /* synthetic */ String val$dropboxTag;
        public final /* synthetic */ String val$report;
        public final /* synthetic */ boolean val$runSynchronously;
        public final /* synthetic */ StringBuilder val$sb;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass21(String str10, String str62, StringBuilder sb2, String str92, File file2, ApplicationErrorReport.CrashInfo crashInfo2, boolean z2, DropBoxManager dropBoxManager2) {
            super(str10);
            r3 = str62;
            r4 = sb2;
            r5 = str92;
            r6 = file2;
            r7 = crashInfo2;
            r8 = z2;
            r9 = dropBoxManager2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            String str10;
            String str11 = r3;
            if (str11 != null) {
                r4.append(str11);
            }
            String str12 = "logcat_for_" + r5;
            String str13 = "max_error_bytes_for_" + r5;
            int i = Build.IS_USER ? 0 : Settings.Global.getInt(ActivityManagerService.this.mContext.getContentResolver(), str12, 0);
            int i2 = (Settings.Global.getInt(ActivityManagerService.this.mContext.getContentResolver(), str13, 524288) - r4.length()) - (i * 100);
            File file2 = r6;
            if (file2 != null && i2 > 0) {
                try {
                    r4.append(FileUtils.readTextFile(file2, i2, "\n\n[[TRUNCATED]]"));
                } catch (IOException e) {
                    Slog.e("ActivityManager", "Error reading " + r6, e);
                }
            }
            ApplicationErrorReport.CrashInfo crashInfo2 = r7;
            if (crashInfo2 != null && (str10 = crashInfo2.stackTrace) != null) {
                r4.append(str10);
            }
            if (i > 0 && !r8) {
                r4.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                InputStreamReader inputStreamReader = null;
                try {
                    try {
                        try {
                            Process start = new ProcessBuilder("/system/bin/timeout", "-i", "-s", "SEGV", "10s", "/system/bin/logcat", "-v", "threadtime", "-b", "events", "-b", "system", "-b", "main", "-b", "crash", "-t", String.valueOf(i)).redirectErrorStream(true).start();
                            try {
                                start.getOutputStream().close();
                            } catch (IOException unused) {
                            }
                            try {
                                start.getErrorStream().close();
                            } catch (IOException unused2) {
                            }
                            InputStreamReader inputStreamReader2 = new InputStreamReader(start.getInputStream());
                            try {
                                char[] cArr = new char[IInstalld.FLAG_FORCE];
                                while (true) {
                                    int read = inputStreamReader2.read(cArr);
                                    if (read <= 0) {
                                        break;
                                    } else {
                                        r4.append(cArr, 0, read);
                                    }
                                }
                                inputStreamReader2.close();
                            } catch (IOException e2) {
                                e = e2;
                                inputStreamReader = inputStreamReader2;
                                Slog.e("ActivityManager", "Error running logcat", e);
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                r9.addText(r5, r4.toString());
                            } catch (Throwable th) {
                                th = th;
                                inputStreamReader = inputStreamReader2;
                                if (inputStreamReader != null) {
                                    try {
                                        inputStreamReader.close();
                                    } catch (IOException unused3) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (IOException e3) {
                        e = e3;
                    }
                } catch (IOException unused4) {
                }
            }
            r9.addText(r5, r4.toString());
        }
    }

    public List getProcessesInErrorState() {
        enforceNotIsolatedCaller("getProcessesInErrorState");
        final List[] listArr = new List[1];
        final int callingUid = Binder.getCallingUid();
        final boolean z = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) == 0;
        final int userId = UserHandle.getUserId(callingUid);
        final boolean z2 = ActivityManager.checkUidPermission("android.permission.DUMP", callingUid) == 0;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda10
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ActivityManagerService.lambda$getProcessesInErrorState$19(z, userId, z2, callingUid, listArr, (ProcessRecord) obj);
                    }
                });
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return listArr[0];
    }

    public static /* synthetic */ void lambda$getProcessesInErrorState$19(boolean z, int i, boolean z2, int i2, List[] listArr, ProcessRecord processRecord) {
        ActivityManager.ProcessErrorStateInfo notRespondingReport;
        if (z || processRecord.userId == i) {
            if (z2 || processRecord.info.uid == i2) {
                ProcessErrorStateRecord processErrorStateRecord = processRecord.mErrorState;
                boolean isCrashing = processErrorStateRecord.isCrashing();
                boolean isNotResponding = processErrorStateRecord.isNotResponding();
                if (processRecord.getThread() != null) {
                    if (isCrashing || isNotResponding) {
                        if (isCrashing) {
                            notRespondingReport = processErrorStateRecord.getCrashingReport();
                        } else {
                            notRespondingReport = isNotResponding ? processErrorStateRecord.getNotRespondingReport() : null;
                        }
                        if (notRespondingReport != null) {
                            if (listArr[0] == null) {
                                listArr[0] = new ArrayList(1);
                            }
                            listArr[0].add(notRespondingReport);
                            return;
                        }
                        Slog.w("ActivityManager", "Missing app error report, app = " + processRecord.processName + " crashing = " + isCrashing + " notResponding = " + isNotResponding);
                    }
                }
            }
        }
    }

    public List getRunningAppProcesses() {
        List runningAppProcessesLOSP;
        enforceNotIsolatedCaller("getRunningAppProcesses");
        int callingUid = Binder.getCallingUid();
        int uidTargetSdkVersion = this.mPackageManagerInt.getUidTargetSdkVersion(callingUid);
        boolean z = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) == 0;
        int userId = UserHandle.getUserId(callingUid);
        boolean isGetTasksAllowed = this.mAtmInternal.isGetTasksAllowed("getRunningAppProcesses", Binder.getCallingPid(), callingUid);
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                runningAppProcessesLOSP = this.mProcessList.getRunningAppProcessesLOSP(z, userId, isGetTasksAllowed, callingUid, uidTargetSdkVersion);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return runningAppProcessesLOSP;
    }

    public List getRunningExternalApplications() {
        enforceNotIsolatedCaller("getRunningExternalApplications");
        List runningAppProcesses = getRunningAppProcesses();
        ArrayList arrayList = new ArrayList();
        if (runningAppProcesses != null && runningAppProcesses.size() > 0) {
            HashSet hashSet = new HashSet();
            Iterator it = runningAppProcesses.iterator();
            while (it.hasNext()) {
                String[] strArr = ((ActivityManager.RunningAppProcessInfo) it.next()).pkgList;
                if (strArr != null) {
                    for (String str : strArr) {
                        hashSet.add(str);
                    }
                }
            }
            IPackageManager packageManager = AppGlobals.getPackageManager();
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                try {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo((String) it2.next(), 0L, UserHandle.getCallingUserId());
                    if ((applicationInfo.flags & 262144) != 0) {
                        arrayList.add(applicationInfo);
                    }
                } catch (RemoteException unused) {
                }
            }
        }
        return arrayList;
    }

    public ParceledListSlice getHistoricalProcessStartReasons(String str, int i, int i2) {
        if (!this.mConstants.mFlagApplicationStartInfoEnabled) {
            return new ParceledListSlice(new ArrayList());
        }
        enforceNotIsolatedCaller("getHistoricalProcessStartReasons");
        return new ParceledListSlice(new ArrayList());
    }

    public void setApplicationStartInfoCompleteListener(IApplicationStartInfoCompleteListener iApplicationStartInfoCompleteListener, int i) {
        if (this.mConstants.mFlagApplicationStartInfoEnabled) {
            enforceNotIsolatedCaller("setApplicationStartInfoCompleteListener");
        }
    }

    public void removeApplicationStartInfoCompleteListener(int i) {
        if (this.mConstants.mFlagApplicationStartInfoEnabled) {
            enforceNotIsolatedCaller("removeApplicationStartInfoCompleteListener");
        }
    }

    public ParceledListSlice getHistoricalProcessExitReasons(String str, int i, int i2, int i3) {
        enforceNotIsolatedCaller("getHistoricalProcessExitReasons");
        if (i3 == -1 || i3 == -2) {
            throw new IllegalArgumentException("Unsupported userId");
        }
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        UserHandle.getCallingUserId();
        this.mUserController.handleIncomingUser(callingPid, callingUid, i3, true, 0, "getHistoricalProcessExitReasons", null);
        NativeTombstoneManager nativeTombstoneManager = (NativeTombstoneManager) LocalServices.getService(NativeTombstoneManager.class);
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            int enforceDumpPermissionForPackage = enforceDumpPermissionForPackage(str, i3, callingUid, "getHistoricalProcessExitReasons");
            if (enforceDumpPermissionForPackage != -1) {
                this.mProcessList.mAppExitInfoTracker.getExitInfo(str, enforceDumpPermissionForPackage, i, i2, arrayList);
                nativeTombstoneManager.collectTombstones(arrayList, enforceDumpPermissionForPackage, i, i2);
            }
        } else {
            this.mProcessList.mAppExitInfoTracker.getExitInfo(str, callingUid, i, i2, arrayList);
            nativeTombstoneManager.collectTombstones(arrayList, callingUid, i, i2);
        }
        return new ParceledListSlice(arrayList);
    }

    public void setProcessStateSummary(byte[] bArr) {
        if (bArr != null && bArr.length > 128) {
            throw new IllegalArgumentException("Data size is too large");
        }
        this.mProcessList.mAppExitInfoTracker.setProcessStateSummary(Binder.getCallingUid(), Binder.getCallingPid(), bArr);
    }

    public int enforceDumpPermissionForPackage(String str, int i, int i2, String str2) {
        try {
            if (Process.isSdkSandboxUid(i2)) {
                if (getPackageManager().getSdkSandboxPackageName().equals(str)) {
                    return i2;
                }
            }
        } catch (RemoteException unused) {
            Log.e("ActivityManager", "Could not get SDK sandbox package name");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            int packageUid = this.mPackageManagerInt.getPackageUid(str, 786432L, i);
            Binder.restoreCallingIdentity(clearCallingIdentity);
            if (UserHandle.getAppId(packageUid) != UserHandle.getAppId(i2)) {
                enforceCallingPermission("android.permission.DUMP", str2);
            }
            return packageUid;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public void getMyMemoryState(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        ProcessRecord processRecord;
        if (runningAppProcessInfo == null) {
            throw new IllegalArgumentException("outState is null");
        }
        enforceNotIsolatedCaller("getMyMemoryState");
        int uidTargetSdkVersion = this.mPackageManagerInt.getUidTargetSdkVersion(Binder.getCallingUid());
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                synchronized (this.mPidsSelfLocked) {
                    processRecord = this.mPidsSelfLocked.get(Binder.getCallingPid());
                }
                if (processRecord != null) {
                    this.mProcessList.fillInProcMemInfoLOSP(processRecord, runningAppProcessInfo, uidTargetSdkVersion);
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public int getMemoryTrimLevel() {
        int lastMemoryLevelLocked;
        enforceNotIsolatedCaller("getMyMemoryState");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                lastMemoryLevelLocked = this.mAppProfiler.getLastMemoryLevelLocked();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return lastMemoryLevelLocked;
    }

    public void setMemFactorOverride(int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (i == this.mAppProfiler.getLastMemoryLevelLocked()) {
                    resetPriorityAfterLockedSection();
                    return;
                }
                this.mAppProfiler.setMemFactorOverrideLocked(i);
                updateOomAdjLocked(16);
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void setServiceRestartBackoffEnabled(String str, boolean z, String str2) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mServices.setServiceRestartBackoffEnabledLocked(str, z, str2);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public boolean isServiceRestartBackoffEnabled(String str) {
        boolean isServiceRestartBackoffEnabledLocked;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                isServiceRestartBackoffEnabledLocked = this.mServices.isServiceRestartBackoffEnabledLocked(str);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return isServiceRestartBackoffEnabledLocked;
    }

    public ArrayList getPendingCmdedBroadcast() {
        return this.mPendingCmdBR;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ShellCallback shellCallback, ResultReceiver resultReceiver) {
        int i;
        if (strArr != null && strArr.length > 0 && ("start".equals(strArr[0]) || "start-activity".equals(strArr[0]))) {
            this.mHandler.sendEmptyMessage(80);
        }
        int i2 = 1;
        boolean z = strArr != null && INetd.IF_FLAG_BROADCAST.equals(strArr[0]);
        StringBuilder sb = new StringBuilder();
        if (z) {
            while (true) {
                if (i2 < strArr.length) {
                    if ("-a".equals(strArr[i2]) && (i = i2 + 1) < strArr.length) {
                        sb.append("-a ");
                        sb.append(strArr[i]);
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
            sb.append(" from u ");
            sb.append(Binder.getCallingUid());
            sb.append(" p ");
            sb.append(Binder.getCallingPid());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-HH-mm-ss");
            sb.append(" ");
            sb.append(simpleDateFormat.format(new Date(System.currentTimeMillis())));
            this.mPendingCmdBR.add(sb);
        }
        try {
            new ActivityManagerShellCommand(this, false).exec(this, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
        } finally {
            if (z) {
                this.mPendingCmdBR.remove(sb);
            }
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        PriorityDump.dump(this.mPriorityDumper, fileDescriptor, printWriter, strArr);
    }

    public final void dumpEverything(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i, boolean z, String str, int i2, boolean z2, boolean z3, int i3, boolean z4) {
        ActiveServices.ServiceDumper newServiceDumperLocked;
        boolean z5;
        String str2;
        PrintWriter printWriter2;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mConstants.dump(printWriter);
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        this.mOomAdjuster.dumpCachedAppOptimizerSettings(printWriter);
                    } finally {
                    }
                }
                resetPriorityAfterProcLockedSection();
                this.mOomAdjuster.dumpCacheOomRankerSettings(printWriter);
                printWriter.println();
                if (z) {
                    printWriter.println("-------------------------------------------------------------------------------");
                }
                dumpAllowedAssociationsLocked(fileDescriptor, printWriter, strArr, i, z, str);
                printWriter.println();
                if (z) {
                    printWriter.println("-------------------------------------------------------------------------------");
                }
                this.mPendingIntentController.dumpPendingIntents(printWriter, z, str);
                printWriter.println();
                if (z) {
                    printWriter.println("-------------------------------------------------------------------------------");
                }
                dumpBroadcastsLocked(fileDescriptor, printWriter, strArr, i, z, str);
                printWriter.println();
                if (z) {
                    printWriter.println("-------------------------------------------------------------------------------");
                }
                if (z || str != null) {
                    dumpBroadcastStatsLocked(fileDescriptor, printWriter, strArr, i, z, str);
                    printWriter.println();
                    if (z) {
                        printWriter.println("-------------------------------------------------------------------------------");
                    }
                }
                this.mCpHelper.dumpProvidersLocked(fileDescriptor, printWriter, strArr, i, z, str);
                printWriter.println();
                if (z) {
                    printWriter.println("-------------------------------------------------------------------------------");
                }
                dumpPermissions(fileDescriptor, printWriter, strArr, i, z, str);
                printWriter.println();
                newServiceDumperLocked = this.mServices.newServiceDumperLocked(fileDescriptor, printWriter, strArr, i, z, str);
                if (!z2) {
                    if (z) {
                        printWriter.println("-------------------------------------------------------------------------------");
                    }
                    newServiceDumperLocked.dumpLocked();
                }
            } finally {
            }
        }
        resetPriorityAfterLockedSection();
        if (z2) {
            if (z) {
                printWriter.println("-------------------------------------------------------------------------------");
            }
            newServiceDumperLocked.dumpWithClient();
        }
        if (str == null && z4) {
            printWriter.println();
            if (z) {
                printWriter.println("-------------------------------------------------------------------------------");
            }
            dumpBinderProxies(printWriter, 6000);
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                printWriter.println();
                if (z) {
                    printWriter.println("-------------------------------------------------------------------------------");
                }
                this.mAtmInternal.dump("recents", fileDescriptor, printWriter, strArr, i, z, z2, str, i2);
                printWriter.println();
                if (z) {
                    printWriter.println("-------------------------------------------------------------------------------");
                }
                this.mAtmInternal.dump("lastanr", fileDescriptor, printWriter, strArr, i, z, z2, str, i2);
                printWriter.println();
                if (z) {
                    printWriter.println("-------------------------------------------------------------------------------");
                }
                this.mAtmInternal.dump("starter", fileDescriptor, printWriter, strArr, i, z, z2, str, i2);
                if (str == null) {
                    printWriter.println();
                    if (z) {
                        printWriter.println("-------------------------------------------------------------------------------");
                    }
                    this.mAtmInternal.dump("containers", fileDescriptor, printWriter, strArr, i, z, z2, str, i2);
                }
                if (!z3) {
                    printWriter.println();
                    if (z) {
                        printWriter.println("-------------------------------------------------------------------------------");
                    }
                    this.mAtmInternal.dump("activities", fileDescriptor, printWriter, strArr, i, z, z2, str, i2);
                }
                if (this.mAssociations.size() > 0) {
                    printWriter.println();
                    if (z) {
                        printWriter.println("-------------------------------------------------------------------------------");
                    }
                    z5 = z;
                    str2 = str;
                    printWriter2 = printWriter;
                    dumpAssociationsLocked(fileDescriptor, printWriter, strArr, i, z, z2, str);
                } else {
                    z5 = z;
                    str2 = str;
                    printWriter2 = printWriter;
                }
                printWriter.println();
                if (z5) {
                    printWriter2.println("-------------------------------------------------------------------------------");
                    this.mProcessList.mAppExitInfoTracker.dumpHistoryProcessExitInfo(printWriter2, str2);
                }
                if (str2 == null) {
                    printWriter.println();
                    if (z5) {
                        printWriter2.println("-------------------------------------------------------------------------------");
                    }
                    this.mOomAdjProfiler.dump(printWriter2);
                    printWriter.println();
                    if (z5) {
                        printWriter2.println("-------------------------------------------------------------------------------");
                    }
                    dumpLmkLocked(printWriter2);
                }
                printWriter.println();
                if (z5) {
                    printWriter2.println("-------------------------------------------------------------------------------");
                }
                if (MARsPolicyManager.MARs_ENABLE) {
                    printWriter.println();
                    if (z5) {
                        printWriter2.println("-------------------------------------------------------------------------------");
                    }
                    MARsPolicyManager.getInstance().dumpMARs(fileDescriptor, printWriter2);
                    MARsPolicyManager.getInstance().dumpMARsHistory(fileDescriptor, printWriter2);
                    if (FreecessController.getInstance().getFreecessEnabled()) {
                        FreecessController.getInstance().dumpFreecess(fileDescriptor, printWriter2);
                    }
                }
                ActivityManagerGlobalLock activityManagerGlobalLock2 = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock2) {
                    try {
                        this.mProcessList.dumpProcessesLSP(fileDescriptor, printWriter, strArr, i, z, str, i3);
                    } finally {
                    }
                }
                resetPriorityAfterProcLockedSection();
                printWriter.println();
                if (z5) {
                    printWriter2.println("-------------------------------------------------------------------------------");
                }
                dumpUsers(printWriter2);
                printWriter.println();
                if (z5) {
                    printWriter2.println("-------------------------------------------------------------------------------");
                }
                this.mExt.dumpLocaleChangedHistoryLocked(fileDescriptor, printWriter2, z5);
                printWriter.println();
                if (z5) {
                    printWriter2.println("-------------------------------------------------------------------------------");
                }
                this.mExt.dumpMetaDataLocked(fileDescriptor, printWriter2);
                printWriter.println();
                if (z5) {
                    printWriter2.println("-------------------------------------------------------------------------------");
                }
                PrintWriter printWriter3 = printWriter2;
                boolean z6 = z5;
                this.mAtmInternal.dump("multitasking", fileDescriptor, printWriter, strArr, i, z, z2, str, i2);
                printWriter.println();
                if (z6) {
                    printWriter3.println("-------------------------------------------------------------------------------");
                }
                this.mExt.dumpDexPrimaryProcess(fileDescriptor, printWriter3);
                this.mExt.dumpLongLivePackageLocked(fileDescriptor, printWriter3, z6);
                this.mActivityTaskManager.mContentDispatcher.dump(printWriter3);
                printWriter.println();
                if (z6) {
                    printWriter3.println("-------------------------------------------------------------------------------");
                }
                this.mComponentAliasResolver.dump(printWriter3);
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public final void dumpAppRestrictionController(PrintWriter printWriter) {
        printWriter.println("-------------------------------------------------------------------------------");
        this.mAppRestrictionController.dump(printWriter, "");
    }

    public void dumpAppRestrictionController(ProtoOutputStream protoOutputStream, int i) {
        this.mAppRestrictionController.dumpAsProto(protoOutputStream, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:613:0x0121, code lost:
    
        r0 = new android.content.Intent();
        r0.setClassName("com.samsung.android.da.daagent", "com.samsung.android.da.daagent.service.DADebugService");
        r29.mContext.startServiceAsUser(r0, android.os.UserHandle.OWNER);
     */
    /* JADX WARN: Code restructure failed: missing block: B:615:0x0135, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x0136, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x087b A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x087f  */
    /* JADX WARN: Removed duplicated region for block: B:607:0x0168 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @dalvik.annotation.optimization.NeverCompile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void doDump(java.io.FileDescriptor r30, java.io.PrintWriter r31, java.lang.String[] r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 2287
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.doDump(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[], boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:60:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dumpAssociationsLocked(java.io.FileDescriptor r18, java.io.PrintWriter r19, java.lang.String[] r20, int r21, boolean r22, boolean r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.dumpAssociationsLocked(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[], int, boolean, boolean, java.lang.String):void");
    }

    public int getAppId(String str) {
        if (str == null) {
            return -1;
        }
        try {
            return UserHandle.getAppId(this.mContext.getPackageManager().getApplicationInfo(str, 0).uid);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public void dumpBinderProxyInterfaceCounts(PrintWriter printWriter, String str) {
        BinderProxy.InterfaceCount[] sortedInterfaceCounts = BinderProxy.getSortedInterfaceCounts(50);
        printWriter.println(str);
        int i = 0;
        while (i < sortedInterfaceCounts.length) {
            StringBuilder sb = new StringBuilder();
            sb.append("    #");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(": ");
            sb.append(sortedInterfaceCounts[i]);
            printWriter.println(sb.toString());
            i = i2;
        }
    }

    public boolean dumpBinderProxiesCounts(PrintWriter printWriter, String str) {
        SparseIntArray nGetBinderProxyPerUidCounts = BinderInternal.nGetBinderProxyPerUidCounts();
        if (nGetBinderProxyPerUidCounts == null) {
            return false;
        }
        printWriter.println(str);
        for (int i = 0; i < nGetBinderProxyPerUidCounts.size(); i++) {
            int keyAt = nGetBinderProxyPerUidCounts.keyAt(i);
            int valueAt = nGetBinderProxyPerUidCounts.valueAt(i);
            printWriter.print("    UID ");
            printWriter.print(keyAt);
            printWriter.print(", binder count = ");
            printWriter.print(valueAt);
            printWriter.print(", package(s)= ");
            String[] packagesForUid = this.mContext.getPackageManager().getPackagesForUid(keyAt);
            if (packagesForUid != null) {
                for (String str2 : packagesForUid) {
                    printWriter.print(str2);
                    printWriter.print("; ");
                }
            } else {
                printWriter.print("NO PACKAGE NAME FOUND");
            }
            printWriter.println();
        }
        return true;
    }

    public void dumpBinderProxies(PrintWriter printWriter, int i) {
        printWriter.println("ACTIVITY MANAGER BINDER PROXY STATE (dumpsys activity binder-proxies)");
        int proxyCount = BinderProxy.getProxyCount();
        if (proxyCount >= i) {
            dumpBinderProxyInterfaceCounts(printWriter, "Top proxy interface names held by SYSTEM");
        } else {
            printWriter.print("Not dumping proxy interface counts because size (" + Integer.toString(proxyCount) + ") looks reasonable");
            printWriter.println();
        }
        dumpBinderProxiesCounts(printWriter, "  Counts of Binder Proxies held by SYSTEM");
    }

    public boolean dumpActiveInstruments(PrintWriter printWriter, String str, boolean z) {
        int size = this.mActiveInstrumentation.size();
        if (size > 0) {
            boolean z2 = false;
            for (int i = 0; i < size; i++) {
                ActiveInstrumentation activeInstrumentation = (ActiveInstrumentation) this.mActiveInstrumentation.get(i);
                if (str == null || activeInstrumentation.mClass.getPackageName().equals(str) || activeInstrumentation.mTargetInfo.packageName.equals(str)) {
                    if (!z2) {
                        if (z) {
                            printWriter.println();
                        }
                        printWriter.println("  Active instrumentation:");
                        z = true;
                        z2 = true;
                    }
                    printWriter.print("    Instrumentation #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(activeInstrumentation);
                    activeInstrumentation.dump(printWriter, "      ");
                }
            }
        }
        return z;
    }

    @NeverCompile
    public void dumpOtherProcessesInfoLSP(FileDescriptor fileDescriptor, final PrintWriter printWriter, boolean z, String str, int i, int i2, boolean z2) {
        boolean z3;
        boolean dumpMemWatchProcessesLPf;
        KillPolicyManager killPolicyManager;
        boolean z4 = false;
        boolean z5 = true;
        if (z || str != null) {
            SparseArray sparseArray = new SparseArray();
            synchronized (this.mPidsSelfLocked) {
                int size = this.mPidsSelfLocked.size();
                z3 = z2;
                boolean z6 = false;
                for (int i3 = 0; i3 < size; i3++) {
                    ProcessRecord valueAt = this.mPidsSelfLocked.valueAt(i3);
                    sparseArray.put(valueAt.getPid(), valueAt);
                    if (str == null || valueAt.getPkgList().containsKey(str)) {
                        if (!z6) {
                            if (z3) {
                                printWriter.println();
                            }
                            printWriter.println("  PID mappings:");
                            z3 = true;
                            z6 = true;
                        }
                        printWriter.print("    PID #");
                        printWriter.print(this.mPidsSelfLocked.keyAt(i3));
                        printWriter.print(": ");
                        printWriter.println(this.mPidsSelfLocked.valueAt(i3));
                    }
                }
            }
            SparseArray sparseArray2 = sActiveProcessInfoSelfLocked;
            synchronized (sparseArray2) {
                int size2 = sparseArray2.size();
                boolean z7 = false;
                for (int i4 = 0; i4 < size2; i4++) {
                    SparseArray sparseArray3 = sActiveProcessInfoSelfLocked;
                    ProcessInfo processInfo = (ProcessInfo) sparseArray3.valueAt(i4);
                    ProcessRecord processRecord = (ProcessRecord) sparseArray.get(sparseArray3.keyAt(i4));
                    if (processRecord == null || str == null || processRecord.getPkgList().containsKey(str)) {
                        if (!z7) {
                            if (z3) {
                                printWriter.println();
                            }
                            printWriter.println("  Active process infos:");
                            z3 = true;
                            z7 = true;
                        }
                        printWriter.print("    Pinfo PID #");
                        printWriter.print(sparseArray3.keyAt(i4));
                        printWriter.println(XmlUtils.STRING_ARRAY_SEPARATOR);
                        printWriter.print("      name=");
                        printWriter.println(processInfo.name);
                        if (processInfo.deniedPermissions != null) {
                            for (int i5 = 0; i5 < processInfo.deniedPermissions.size(); i5++) {
                                printWriter.print("      deny: ");
                                printWriter.println((String) processInfo.deniedPermissions.valueAt(i5));
                            }
                        }
                    }
                }
            }
        } else {
            z3 = z2;
        }
        if (z) {
            this.mPhantomProcessList.dump(printWriter, "  ");
        }
        if (this.mImportantProcesses.size() > 0) {
            synchronized (this.mPidsSelfLocked) {
                int size3 = this.mImportantProcesses.size();
                boolean z8 = false;
                for (int i6 = 0; i6 < size3; i6++) {
                    ProcessRecord processRecord2 = this.mPidsSelfLocked.get(((ImportanceToken) this.mImportantProcesses.valueAt(i6)).pid);
                    if (str == null || (processRecord2 != null && processRecord2.getPkgList().containsKey(str))) {
                        if (!z8) {
                            if (z3) {
                                printWriter.println();
                            }
                            printWriter.println("  Foreground Processes:");
                            z3 = true;
                            z8 = true;
                        }
                        printWriter.print("    PID #");
                        printWriter.print(this.mImportantProcesses.keyAt(i6));
                        printWriter.print(": ");
                        printWriter.println(this.mImportantProcesses.valueAt(i6));
                    }
                }
            }
        }
        if (this.mPersistentStartingProcesses.size() > 0) {
            if (z3) {
                printWriter.println();
            }
            printWriter.println("  Persisent processes that are starting:");
            dumpProcessList(printWriter, this, this.mPersistentStartingProcesses, "    ", "Starting Norm", "Restarting PERS", str);
            z3 = true;
        }
        if (this.mProcessList.mRemovedProcesses.size() > 0) {
            if (z3) {
                printWriter.println();
            }
            printWriter.println("  Processes that are being removed:");
            dumpProcessList(printWriter, this, this.mProcessList.mRemovedProcesses, "    ", "Removed Norm", "Removed PERS", str);
            z3 = true;
        }
        if (this.mProcessesOnHold.size() > 0) {
            if (z3) {
                printWriter.println();
            }
            printWriter.println("  Processes that are on old until the system is ready:");
            dumpProcessList(printWriter, this, this.mProcessesOnHold, "    ", "OnHold Norm", "OnHold PERS", str);
            z3 = true;
        }
        boolean dumpForProcesses = this.mAtmInternal.dumpForProcesses(fileDescriptor, printWriter, z, str, i, this.mAppErrors.dumpLPr(fileDescriptor, printWriter, z3, str), this.mAppProfiler.getTestPssMode(), this.mWakefulness.get());
        if (!z || this.mProcessList.mPendingStarts.size() <= 0) {
            z5 = dumpForProcesses;
        } else {
            if (dumpForProcesses) {
                printWriter.println();
            }
            printWriter.println("  mPendingStarts: ");
            int size4 = this.mProcessList.mPendingStarts.size();
            for (int i7 = 0; i7 < size4; i7++) {
                printWriter.println("    " + this.mProcessList.mPendingStarts.keyAt(i7) + ": " + this.mProcessList.mPendingStarts.valueAt(i7));
            }
        }
        printWriter.println("  mProcessLimit: " + this.mConstants.MAX_CACHED_PROCESSES);
        printWriter.println("  mNumNonCachedProcs: " + this.mOomAdjuster.mNumNonCachedProcs);
        printWriter.println("  mNumCachedHiddenProcs: " + this.mOomAdjuster.mNumCachedHiddenProcs);
        printWriter.println("  mProcessLimitOverride(OverrideMaxCachedProcesses): " + this.mConstants.getOverrideMaxCachedProcesses());
        DynamicHiddenApp dynamicHiddenApp = this.mDynamicHiddenApp;
        if (dynamicHiddenApp != null) {
            dynamicHiddenApp.dumpLMKDParameter(printWriter);
            if (isPmmEnabled() && (killPolicyManager = this.mKillPolicyManager) != null) {
                killPolicyManager.dump(printWriter, null);
            }
            if (DynamicHiddenApp.IS_HIGH_CAPACITY_RAM) {
                printWriter.println("  IS_HIGH_CAPACITY_RAM: true");
            }
            if (DynamicHiddenApp.PICKED_ADJ_ENABLE) {
                this.mDynamicHiddenApp.dumpMLList(printWriter);
            }
        }
        if (z) {
            this.mUidObserverController.dump(printWriter, str);
            printWriter.println("  mDeviceIdleAllowlist=" + Arrays.toString(this.mDeviceIdleAllowlist));
            printWriter.println("  mDeviceIdleExceptIdleAllowlist=" + Arrays.toString(this.mDeviceIdleExceptIdleAllowlist));
            printWriter.println("  mDeviceIdleTempAllowlist=" + Arrays.toString(this.mDeviceIdleTempAllowlist));
            if (this.mPendingTempAllowlist.size() > 0) {
                printWriter.println("  mPendingTempAllowlist:");
                int size5 = this.mPendingTempAllowlist.size();
                for (int i8 = 0; i8 < size5; i8++) {
                    PendingTempAllowlist valueAt2 = this.mPendingTempAllowlist.valueAt(i8);
                    printWriter.print("    ");
                    UserHandle.formatUid(printWriter, valueAt2.targetUid);
                    printWriter.print(": ");
                    TimeUtils.formatDuration(valueAt2.duration, printWriter);
                    printWriter.print(" ");
                    printWriter.println(valueAt2.tag);
                    printWriter.print(" ");
                    printWriter.print(valueAt2.type);
                    printWriter.print(" ");
                    printWriter.print(valueAt2.reasonCode);
                    printWriter.print(" ");
                    printWriter.print(valueAt2.callingUid);
                }
            }
            printWriter.println("  mFgsStartTempAllowList:");
            final long currentTimeMillis = System.currentTimeMillis();
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            this.mFgsStartTempAllowList.forEach(new BiConsumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda26
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    ActivityManagerService.lambda$dumpOtherProcessesInfoLSP$20(printWriter, currentTimeMillis, elapsedRealtime, (Integer) obj, (Pair) obj2);
                }
            });
            if (!this.mProcessList.mAppsInBackgroundRestricted.isEmpty()) {
                printWriter.println("  Processes that are in background restricted:");
                int size6 = this.mProcessList.mAppsInBackgroundRestricted.size();
                for (int i9 = 0; i9 < size6; i9++) {
                    printWriter.println(String.format("%s #%2d: %s", "    ", Integer.valueOf(i9), ((ProcessRecord) this.mProcessList.mAppsInBackgroundRestricted.valueAt(i9)).toString()));
                }
            }
        }
        String str2 = this.mDebugApp;
        if ((str2 != null || this.mOrigDebugApp != null || this.mDebugTransient || this.mOrigWaitForDebugger) && (str == null || str.equals(str2) || str.equals(this.mOrigDebugApp))) {
            if (z5) {
                printWriter.println();
                z5 = false;
            }
            printWriter.println("  mDebugApp=" + this.mDebugApp + "/orig=" + this.mOrigDebugApp + " mDebugTransient=" + this.mDebugTransient + " mOrigWaitForDebugger=" + this.mOrigWaitForDebugger);
        }
        synchronized (this.mAppProfiler.mProfilerLock) {
            dumpMemWatchProcessesLPf = this.mAppProfiler.dumpMemWatchProcessesLPf(printWriter, z5);
        }
        String str3 = this.mTrackAllocationApp;
        if (str3 != null && (str == null || str.equals(str3))) {
            if (dumpMemWatchProcessesLPf) {
                printWriter.println();
            } else {
                z4 = dumpMemWatchProcessesLPf;
            }
            printWriter.println("  mTrackAllocationApp=" + this.mTrackAllocationApp);
            dumpMemWatchProcessesLPf = z4;
        }
        boolean dumpProfileDataLocked = this.mAppProfiler.dumpProfileDataLocked(printWriter, str, dumpMemWatchProcessesLPf);
        String str4 = this.mNativeDebuggingApp;
        if (str4 != null && (str == null || str.equals(str4))) {
            if (dumpProfileDataLocked) {
                printWriter.println();
            }
            printWriter.println("  mNativeDebuggingApp=" + this.mNativeDebuggingApp);
        }
        if (str == null) {
            if (this.mAlwaysFinishActivities) {
                printWriter.println("  mAlwaysFinishActivities=" + this.mAlwaysFinishActivities);
            }
            if (z) {
                printWriter.println("  Total persistent processes: " + i2);
                printWriter.println("  mProcessesReady=" + this.mProcessesReady + " mSystemReady=" + this.mSystemReady + " mBooted=" + this.mBooted + " mFactoryTest=" + this.mFactoryTest);
                StringBuilder sb = new StringBuilder();
                sb.append("  mBooting=");
                sb.append(this.mBooting);
                sb.append(" mCallFinishBooting=");
                sb.append(this.mCallFinishBooting);
                sb.append(" mBootAnimationComplete=");
                sb.append(this.mBootAnimationComplete);
                printWriter.println(sb.toString());
                printWriter.print("  mLastPowerCheckUptime=");
                TimeUtils.formatDuration(this.mLastPowerCheckUptime, printWriter);
                printWriter.println("");
                this.mOomAdjuster.dumpSequenceNumbersLocked(printWriter);
                this.mOomAdjuster.dumpProcCountsLocked(printWriter);
                this.mAppProfiler.dumpMemoryLevelsLocked(printWriter);
                long uptimeMillis = SystemClock.uptimeMillis();
                printWriter.print("  mLastIdleTime=");
                TimeUtils.formatDuration(uptimeMillis, this.mLastIdleTime, printWriter);
                printWriter.print(" mLowRamSinceLastIdle=");
                TimeUtils.formatDuration(this.mAppProfiler.getLowRamTimeSinceIdleLPr(uptimeMillis), printWriter);
                printWriter.println();
                printWriter.println();
                printWriter.println("  ServiceManager statistics:");
                ServiceManager.sStatLogger.dump(printWriter, "    ");
                printWriter.println();
            }
        }
        printWriter.println("  mForceBackgroundCheck=" + this.mForceBackgroundCheck);
        printWriter.print("  CUR_TRIM_EMPTY_PROCESSES:" + this.mConstants.CUR_TRIM_EMPTY_PROCESSES);
        printWriter.print("  CUR_TRIM_CACHED_PROCESSES:" + this.mConstants.CUR_TRIM_CACHED_PROCESSES);
        printWriter.println("  TRIM_CRITICAL_THRESHOLD: " + ProcessList.TRIM_CRITICAL_THRESHOLD);
        printWriter.println("  TRIM_LOW_THRESHOLD: " + ProcessList.TRIM_LOW_THRESHOLD);
    }

    public static /* synthetic */ void lambda$dumpOtherProcessesInfoLSP$20(PrintWriter printWriter, long j, long j2, Integer num, Pair pair) {
        printWriter.print("    " + UserHandle.formatUid(num.intValue()) + ": ");
        ((FgsTempAllowListItem) pair.second).dump(printWriter);
        printWriter.print(" expiration=");
        TimeUtils.dumpTimeWithDelta(printWriter, (j - j2) + ((Long) pair.first).longValue(), j);
        printWriter.println();
    }

    public final void dumpUsers(PrintWriter printWriter) {
        printWriter.println("ACTIVITY MANAGER USERS (dumpsys activity users)");
        this.mUserController.dump(printWriter);
    }

    public void writeOtherProcessesInfoToProtoLSP(ProtoOutputStream protoOutputStream, String str, int i, int i2) {
        int size = this.mActiveInstrumentation.size();
        for (int i3 = 0; i3 < size; i3++) {
            ActiveInstrumentation activeInstrumentation = (ActiveInstrumentation) this.mActiveInstrumentation.get(i3);
            if (str == null || activeInstrumentation.mClass.getPackageName().equals(str) || activeInstrumentation.mTargetInfo.packageName.equals(str)) {
                activeInstrumentation.dumpDebug(protoOutputStream, 2246267895811L);
            }
        }
        this.mUidObserverController.dumpValidateUidsProto(protoOutputStream, str, i, 2246267895813L);
        if (str != null) {
            synchronized (this.mPidsSelfLocked) {
                int size2 = this.mPidsSelfLocked.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    ProcessRecord valueAt = this.mPidsSelfLocked.valueAt(i4);
                    if (valueAt.getPkgList().containsKey(str)) {
                        valueAt.dumpDebug(protoOutputStream, 2246267895815L);
                    }
                }
            }
        }
        if (this.mImportantProcesses.size() > 0) {
            synchronized (this.mPidsSelfLocked) {
                int size3 = this.mImportantProcesses.size();
                for (int i5 = 0; i5 < size3; i5++) {
                    ImportanceToken importanceToken = (ImportanceToken) this.mImportantProcesses.valueAt(i5);
                    ProcessRecord processRecord = this.mPidsSelfLocked.get(importanceToken.pid);
                    if (str == null || (processRecord != null && processRecord.getPkgList().containsKey(str))) {
                        importanceToken.dumpDebug(protoOutputStream, 2246267895816L);
                    }
                }
            }
        }
        int size4 = this.mPersistentStartingProcesses.size();
        for (int i6 = 0; i6 < size4; i6++) {
            ProcessRecord processRecord2 = (ProcessRecord) this.mPersistentStartingProcesses.get(i6);
            if (str == null || str.equals(processRecord2.info.packageName)) {
                processRecord2.dumpDebug(protoOutputStream, 2246267895817L);
            }
        }
        int size5 = this.mProcessList.mRemovedProcesses.size();
        for (int i7 = 0; i7 < size5; i7++) {
            ProcessRecord processRecord3 = (ProcessRecord) this.mProcessList.mRemovedProcesses.get(i7);
            if (str == null || str.equals(processRecord3.info.packageName)) {
                processRecord3.dumpDebug(protoOutputStream, 2246267895818L);
            }
        }
        int size6 = this.mProcessesOnHold.size();
        for (int i8 = 0; i8 < size6; i8++) {
            ProcessRecord processRecord4 = (ProcessRecord) this.mProcessesOnHold.get(i8);
            if (str == null || str.equals(processRecord4.info.packageName)) {
                processRecord4.dumpDebug(protoOutputStream, 2246267895819L);
            }
        }
        synchronized (this.mAppProfiler.mProfilerLock) {
            this.mAppProfiler.writeProcessesToGcToProto(protoOutputStream, 2246267895820L, str);
        }
        this.mAppErrors.dumpDebugLPr(protoOutputStream, 1146756268045L, str);
        this.mAtmInternal.writeProcessesToProto(protoOutputStream, str, this.mWakefulness.get(), this.mAppProfiler.getTestPssMode());
        if (str == null) {
            this.mUserController.dumpDebug(protoOutputStream, 1146756268046L);
        }
        this.mUidObserverController.dumpDebug(protoOutputStream, str);
        for (int i9 : this.mDeviceIdleAllowlist) {
            protoOutputStream.write(2220498092056L, i9);
        }
        for (int i10 : this.mDeviceIdleTempAllowlist) {
            protoOutputStream.write(2220498092057L, i10);
        }
        if (this.mPendingTempAllowlist.size() > 0) {
            int size7 = this.mPendingTempAllowlist.size();
            for (int i11 = 0; i11 < size7; i11++) {
                this.mPendingTempAllowlist.valueAt(i11).dumpDebug(protoOutputStream, 2246267895834L);
            }
        }
        String str2 = this.mDebugApp;
        if ((str2 != null || this.mOrigDebugApp != null || this.mDebugTransient || this.mOrigWaitForDebugger) && (str == null || str.equals(str2) || str.equals(this.mOrigDebugApp))) {
            long start = protoOutputStream.start(1146756268062L);
            protoOutputStream.write(1138166333441L, this.mDebugApp);
            protoOutputStream.write(1138166333442L, this.mOrigDebugApp);
            protoOutputStream.write(1133871366147L, this.mDebugTransient);
            protoOutputStream.write(1133871366148L, this.mOrigWaitForDebugger);
            protoOutputStream.end(start);
        }
        synchronized (this.mAppProfiler.mProfilerLock) {
            this.mAppProfiler.writeMemWatchProcessToProtoLPf(protoOutputStream);
        }
        String str3 = this.mTrackAllocationApp;
        if (str3 != null && (str == null || str.equals(str3))) {
            protoOutputStream.write(1138166333473L, this.mTrackAllocationApp);
        }
        this.mAppProfiler.writeProfileDataToProtoLocked(protoOutputStream, str);
        if (str == null || str.equals(this.mNativeDebuggingApp)) {
            protoOutputStream.write(1138166333475L, this.mNativeDebuggingApp);
        }
        if (str == null) {
            protoOutputStream.write(1133871366180L, this.mAlwaysFinishActivities);
            protoOutputStream.write(1120986464294L, i2);
            protoOutputStream.write(1133871366183L, this.mProcessesReady);
            protoOutputStream.write(1133871366184L, this.mSystemReady);
            protoOutputStream.write(1133871366185L, this.mBooted);
            protoOutputStream.write(1120986464298L, this.mFactoryTest);
            protoOutputStream.write(1133871366187L, this.mBooting);
            protoOutputStream.write(1133871366188L, this.mCallFinishBooting);
            protoOutputStream.write(1133871366189L, this.mBootAnimationComplete);
            protoOutputStream.write(1112396529710L, this.mLastPowerCheckUptime);
            this.mOomAdjuster.dumpProcessListVariablesLocked(protoOutputStream);
            this.mAppProfiler.writeMemoryLevelsToProtoLocked(protoOutputStream);
            long uptimeMillis = SystemClock.uptimeMillis();
            ProtoUtils.toDuration(protoOutputStream, 1146756268090L, this.mLastIdleTime, uptimeMillis);
            protoOutputStream.write(1112396529723L, this.mAppProfiler.getLowRamTimeSinceIdleLPr(uptimeMillis));
        }
    }

    public final boolean reportLmkKillAtOrBelow(PrintWriter printWriter, int i) {
        Integer lmkdKillCount = ProcessList.getLmkdKillCount(0, i);
        if (lmkdKillCount == null) {
            return false;
        }
        printWriter.println("    kills at or below oom_adj " + i + ": " + lmkdKillCount);
        return true;
    }

    public boolean dumpLmkLocked(PrintWriter printWriter) {
        printWriter.println("ACTIVITY MANAGER LMK KILLS (dumpsys activity lmk)");
        Integer lmkdKillCount = ProcessList.getLmkdKillCount(1001, 1001);
        if (lmkdKillCount == null) {
            return false;
        }
        printWriter.println("  Total number of kills: " + lmkdKillCount);
        return reportLmkKillAtOrBelow(printWriter, 999) && reportLmkKillAtOrBelow(printWriter, 900) && reportLmkKillAtOrBelow(printWriter, 860) && reportLmkKillAtOrBelow(printWriter, 850) && reportLmkKillAtOrBelow(printWriter, 800) && reportLmkKillAtOrBelow(printWriter, 700) && reportLmkKillAtOrBelow(printWriter, 600) && reportLmkKillAtOrBelow(printWriter, 500) && reportLmkKillAtOrBelow(printWriter, 400) && reportLmkKillAtOrBelow(printWriter, 350) && reportLmkKillAtOrBelow(printWriter, 300) && reportLmkKillAtOrBelow(printWriter, FrameworkStatsLog.CAMERA_SHOT_LATENCY_REPORTED__MODE__CONTROL_DS_MODE_MACRO_RAW_SR_MERGE) && reportLmkKillAtOrBelow(printWriter, 225) && reportLmkKillAtOrBelow(printWriter, 200) && reportLmkKillAtOrBelow(printWriter, 100) && reportLmkKillAtOrBelow(printWriter, 0);
    }

    /* loaded from: classes.dex */
    public class ItemMatcher {
        public boolean all = true;
        public ArrayList components;
        public ArrayList objects;
        public ArrayList strings;

        public void build(String str) {
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
            if (unflattenFromString != null) {
                if (this.components == null) {
                    this.components = new ArrayList();
                }
                this.components.add(unflattenFromString);
                this.all = false;
                return;
            }
            try {
                int parseInt = Integer.parseInt(str, 16);
                if (this.objects == null) {
                    this.objects = new ArrayList();
                }
                this.objects.add(Integer.valueOf(parseInt));
                this.all = false;
            } catch (RuntimeException unused) {
                if (this.strings == null) {
                    this.strings = new ArrayList();
                }
                this.strings.add(str);
                this.all = false;
            }
        }

        public int build(String[] strArr, int i) {
            while (i < strArr.length) {
                String str = strArr[i];
                if ("--".equals(str)) {
                    return i + 1;
                }
                build(str);
                i++;
            }
            return i;
        }

        public boolean match(Object obj, ComponentName componentName) {
            if (this.all) {
                return true;
            }
            if (this.components != null) {
                for (int i = 0; i < this.components.size(); i++) {
                    if (((ComponentName) this.components.get(i)).equals(componentName)) {
                        return true;
                    }
                }
            }
            if (this.objects != null) {
                for (int i2 = 0; i2 < this.objects.size(); i2++) {
                    if (System.identityHashCode(obj) == ((Integer) this.objects.get(i2)).intValue()) {
                        return true;
                    }
                }
            }
            if (this.strings != null) {
                String flattenToString = componentName.flattenToString();
                for (int i3 = 0; i3 < this.strings.size(); i3++) {
                    if (flattenToString.contains((CharSequence) this.strings.get(i3))) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public void writeBroadcastsToProtoLocked(ProtoOutputStream protoOutputStream) {
        if (this.mRegisteredReceivers.size() > 0) {
            Iterator it = this.mRegisteredReceivers.values().iterator();
            while (it.hasNext()) {
                ((ReceiverList) it.next()).dumpDebug(protoOutputStream, 2246267895809L);
            }
        }
        this.mReceiverResolver.dumpDebug(protoOutputStream, 1146756268034L);
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            broadcastQueue.dumpDebug(protoOutputStream, 2246267895811L);
        }
        int i = 0;
        while (true) {
            long j = 1138166333441L;
            if (i < this.mStickyBroadcasts.size()) {
                long start = protoOutputStream.start(2246267895812L);
                protoOutputStream.write(1120986464257L, this.mStickyBroadcasts.keyAt(i));
                for (Map.Entry entry : ((ArrayMap) this.mStickyBroadcasts.valueAt(i)).entrySet()) {
                    long start2 = protoOutputStream.start(2246267895810L);
                    protoOutputStream.write(j, (String) entry.getKey());
                    Iterator it2 = ((ArrayList) entry.getValue()).iterator();
                    while (it2.hasNext()) {
                        ((StickyBroadcast) it2.next()).intent.dumpDebug(protoOutputStream, 2246267895810L, false, true, true, false);
                        start2 = start2;
                        start = start;
                    }
                    protoOutputStream.end(start2);
                    j = 1138166333441L;
                }
                protoOutputStream.end(start);
                i++;
            } else {
                long start3 = protoOutputStream.start(1146756268037L);
                protoOutputStream.write(1138166333441L, this.mHandler.toString());
                this.mHandler.getLooper().dumpDebug(protoOutputStream, 1146756268034L);
                protoOutputStream.end(start3);
                return;
            }
        }
    }

    public void dumpAllowedAssociationsLocked(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i, boolean z, String str) {
        printWriter.println("ACTIVITY MANAGER ALLOWED ASSOCIATION STATE (dumpsys activity allowed-associations)");
        boolean z2 = false;
        if (this.mAllowedAssociations != null) {
            boolean z3 = false;
            for (int i2 = 0; i2 < this.mAllowedAssociations.size(); i2++) {
                String str2 = (String) this.mAllowedAssociations.keyAt(i2);
                ArraySet allowedPackageAssociations = ((PackageAssociationInfo) this.mAllowedAssociations.valueAt(i2)).getAllowedPackageAssociations();
                if (!z3) {
                    printWriter.println("  Allowed associations (by restricted package):");
                    z3 = true;
                }
                printWriter.print("  * ");
                printWriter.print(str2);
                printWriter.println(XmlUtils.STRING_ARRAY_SEPARATOR);
                for (int i3 = 0; i3 < allowedPackageAssociations.size(); i3++) {
                    if (str == null || str2.equals(str) || ((String) allowedPackageAssociations.valueAt(i3)).equals(str)) {
                        printWriter.print("      Allow: ");
                        printWriter.println((String) allowedPackageAssociations.valueAt(i3));
                    }
                }
                if (((PackageAssociationInfo) this.mAllowedAssociations.valueAt(i2)).isDebuggable()) {
                    printWriter.println("      (debuggable)");
                }
            }
            z2 = z3;
        }
        if (z2) {
            return;
        }
        printWriter.println("  (No association restrictions)");
    }

    @NeverCompile
    public void dumpBroadcastsLocked(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i, boolean z, String str) {
        boolean z2;
        boolean z3;
        String str2;
        int i2;
        boolean z4;
        boolean z5;
        boolean z6;
        ProcessRecord processRecord;
        boolean z7 = true;
        boolean z8 = true;
        String str3 = str;
        boolean z9 = true;
        if ("history".equals(str3)) {
            z2 = (i >= strArr.length || !"-s".equals(strArr[i])) ? z : false;
            str3 = null;
            z3 = true;
        } else {
            z2 = z;
            z3 = false;
        }
        if ("receivers".equals(str3)) {
            if (i + 2 <= strArr.length) {
                i2 = -1;
                int i3 = i;
                while (i3 < strArr.length) {
                    String str4 = strArr[i3];
                    str4.hashCode();
                    if (str4.equals("--uid")) {
                        int i4 = i3 + 1;
                        i2 = getIntArg(printWriter, strArr, i4, -1);
                        if (i2 == -1) {
                            return;
                        } else {
                            i3 = i4 + 1;
                        }
                    } else {
                        printWriter.printf("Invalid argument at index %d: %s\n", Integer.valueOf(i3), str4);
                        return;
                    }
                }
                str2 = null;
            } else {
                str2 = null;
                i2 = -1;
            }
            z4 = true;
        } else {
            str2 = str3;
            i2 = -1;
            z4 = false;
        }
        printWriter.println("ACTIVITY MANAGER BROADCAST STATE (dumpsys activity broadcasts)");
        String str5 = "    ";
        if (z3 || !z2) {
            z5 = false;
            z6 = false;
        } else {
            if (this.mRegisteredReceivers.size() > 0) {
                boolean z10 = false;
                boolean z11 = false;
                boolean z12 = false;
                for (ReceiverList receiverList : this.mRegisteredReceivers.values()) {
                    if (str2 == null || ((processRecord = receiverList.app) != null && str2.equals(processRecord.info.packageName))) {
                        if (i2 == -1 || i2 == receiverList.app.uid) {
                            if (!z12) {
                                printWriter.println("  Registered Receivers:");
                                z10 = true;
                                z11 = true;
                                z12 = true;
                            }
                            printWriter.print("  * ");
                            printWriter.println(receiverList);
                            receiverList.dump(printWriter, "    ");
                        }
                    }
                }
                z5 = z10;
                z6 = z11;
            } else {
                if (z4) {
                    printWriter.println("  (no registered receivers)");
                }
                z5 = false;
                z6 = false;
            }
            if (!z4) {
                if (this.mReceiverResolver.dump(printWriter, z5 ? "\n  Receiver Resolver Table:" : "  Receiver Resolver Table:", "    ", str2, false, false)) {
                    z5 = true;
                    z6 = true;
                }
            }
        }
        if (!z4) {
            BroadcastQueue[] broadcastQueueArr = this.mBroadcastQueues;
            int length = broadcastQueueArr.length;
            int i5 = 0;
            while (i5 < length) {
                z5 = broadcastQueueArr[i5].dumpLocked(fileDescriptor, printWriter, strArr, i, z7, z8, z2, str2, z5);
                z6 |= z5;
                i5++;
                str5 = str5;
                length = length;
                broadcastQueueArr = broadcastQueueArr;
                z7 = true;
                z8 = true;
            }
        }
        String str6 = str5;
        String str7 = str2;
        int i6 = 0;
        if (!z3 && !z4 && this.mStickyBroadcasts != null && str7 == null) {
            int i7 = 0;
            while (i7 < this.mStickyBroadcasts.size()) {
                printWriter.println();
                printWriter.print("  Sticky broadcasts for user ");
                printWriter.print(this.mStickyBroadcasts.keyAt(i7));
                printWriter.println(XmlUtils.STRING_ARRAY_SEPARATOR);
                StringBuilder sb = new StringBuilder(128);
                for (Map.Entry entry : ((ArrayMap) this.mStickyBroadcasts.valueAt(i7)).entrySet()) {
                    printWriter.print("  * Sticky action ");
                    printWriter.print((String) entry.getKey());
                    if (z2) {
                        printWriter.println(XmlUtils.STRING_ARRAY_SEPARATOR);
                        ArrayList arrayList = (ArrayList) entry.getValue();
                        int size = arrayList.size();
                        int i8 = i6;
                        while (i8 < size) {
                            Intent intent = ((StickyBroadcast) arrayList.get(i8)).intent;
                            boolean z13 = ((StickyBroadcast) arrayList.get(i8)).deferUntilActive;
                            sb.setLength(i6);
                            sb.append("    Intent: ");
                            int i9 = i8;
                            intent.toShortString(sb, false, true, false, false);
                            printWriter.print(sb);
                            if (z13) {
                                printWriter.print(" [D]");
                            }
                            printWriter.println();
                            printWriter.print("      originalCallingUid: ");
                            printWriter.println(((StickyBroadcast) arrayList.get(i9)).originalCallingUid);
                            printWriter.println();
                            Object extras = intent.getExtras();
                            if (extras != null) {
                                printWriter.print("      extras: ");
                                printWriter.println(extras);
                            }
                            i8 = i9 + 1;
                            i6 = 0;
                        }
                    } else {
                        printWriter.println("");
                    }
                    i6 = 0;
                }
                i7++;
                z6 = true;
                i6 = 0;
            }
        }
        if (!z3 && !z4) {
            this.mExt.dumpBrAllowList(printWriter);
        }
        if (!z3) {
            this.mExt.dumpBroadcastRecordCount(printWriter);
        }
        if (z3 || z4 || !z2) {
            z9 = z6;
        } else {
            printWriter.println();
            for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
                printWriter.println("  Queue " + broadcastQueue.toString() + ": " + broadcastQueue.describeStateLocked());
            }
            printWriter.println("  mHandler:");
            this.mHandler.dump(new PrintWriterPrinter(printWriter), str6);
        }
        if (z9) {
            return;
        }
        printWriter.println("  (nothing)");
    }

    @NeverCompile
    public void dumpBroadcastStatsLocked(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i, boolean z, String str) {
        if (this.mCurBroadcastStats == null) {
            return;
        }
        printWriter.println("ACTIVITY MANAGER BROADCAST STATS STATE (dumpsys activity broadcast-stats)");
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (this.mLastBroadcastStats != null) {
            printWriter.print("  Last stats (from ");
            TimeUtils.formatDuration(this.mLastBroadcastStats.mStartRealtime, elapsedRealtime, printWriter);
            printWriter.print(" to ");
            TimeUtils.formatDuration(this.mLastBroadcastStats.mEndRealtime, elapsedRealtime, printWriter);
            printWriter.print(", ");
            BroadcastStats broadcastStats = this.mLastBroadcastStats;
            TimeUtils.formatDuration(broadcastStats.mEndUptime - broadcastStats.mStartUptime, printWriter);
            printWriter.println(" uptime):");
            if (!this.mLastBroadcastStats.dumpStats(printWriter, "    ", str)) {
                printWriter.println("    (nothing)");
            }
            printWriter.println();
        }
        printWriter.print("  Current stats (from ");
        TimeUtils.formatDuration(this.mCurBroadcastStats.mStartRealtime, elapsedRealtime, printWriter);
        printWriter.print(" to now, ");
        TimeUtils.formatDuration(SystemClock.uptimeMillis() - this.mCurBroadcastStats.mStartUptime, printWriter);
        printWriter.println(" uptime):");
        if (this.mCurBroadcastStats.dumpStats(printWriter, "    ", str)) {
            return;
        }
        printWriter.println("    (nothing)");
    }

    @NeverCompile
    public void dumpBroadcastStatsCheckinLocked(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i, boolean z, String str) {
        if (this.mCurBroadcastStats == null) {
            return;
        }
        BroadcastStats broadcastStats = this.mLastBroadcastStats;
        if (broadcastStats != null) {
            broadcastStats.dumpCheckinStats(printWriter, str);
            if (z) {
                this.mLastBroadcastStats = null;
                return;
            }
        }
        this.mCurBroadcastStats.dumpCheckinStats(printWriter, str);
        if (z) {
            this.mCurBroadcastStats = null;
        }
    }

    public void dumpPermissions(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i, boolean z, String str) {
        printWriter.println("ACTIVITY MANAGER URI PERMISSIONS (dumpsys activity permissions)");
        this.mUgmInternal.dump(printWriter, z, str);
    }

    public static int dumpProcessList(PrintWriter printWriter, ActivityManagerService activityManagerService, List list, String str, String str2, String str3, String str4) {
        int i = 0;
        for (int size = list.size() - 1; size >= 0; size--) {
            ProcessRecord processRecord = (ProcessRecord) list.get(size);
            if (str4 == null || str4.equals(processRecord.info.packageName)) {
                Object[] objArr = new Object[4];
                objArr[0] = str;
                objArr[1] = processRecord.isPersistent() ? str3 : str2;
                objArr[2] = Integer.valueOf(size);
                objArr[3] = processRecord.toString();
                printWriter.println(String.format("%s%s #%2d: %s", objArr));
                if (processRecord.isPersistent()) {
                    i++;
                    processRecord.dump(printWriter, "    ");
                }
            }
        }
        return i;
    }

    public ArrayList collectProcesses(PrintWriter printWriter, int i, boolean z, String[] strArr) {
        ArrayList collectProcessesLOSP;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                collectProcessesLOSP = this.mProcessList.collectProcessesLOSP(i, z, strArr);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return collectProcessesLOSP;
    }

    public final void dumpGraphicsHardwareUsage(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        ArrayList collectProcesses = collectProcesses(printWriter, 0, false, strArr);
        if (collectProcesses == null) {
            printWriter.println("No process found for: " + strArr[0]);
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        printWriter.println("Applications Graphics Acceleration Info:");
        printWriter.println("Uptime: " + uptimeMillis + " Realtime: " + elapsedRealtime);
        for (int size = collectProcesses.size() + (-1); size >= 0; size--) {
            ProcessRecord processRecord = (ProcessRecord) collectProcesses.get(size);
            int pid = processRecord.getPid();
            IApplicationThread thread = processRecord.getThread();
            if (thread != null) {
                printWriter.println("\n** Graphics info for pid " + pid + " [" + processRecord.processName + "] **");
                printWriter.flush();
                try {
                    TransferPipe transferPipe = new TransferPipe();
                    try {
                        thread.dumpGfxInfo(transferPipe.getWriteFd(), strArr);
                        transferPipe.go(fileDescriptor);
                        transferPipe.kill();
                    } catch (Throwable th) {
                        transferPipe.kill();
                        throw th;
                        break;
                    }
                } catch (RemoteException unused) {
                    printWriter.println("Got a RemoteException while dumping the app " + processRecord);
                    printWriter.flush();
                } catch (IOException unused2) {
                    printWriter.println("Failure while dumping the app: " + processRecord);
                    printWriter.flush();
                }
            }
        }
    }

    public final void dumpBinderCacheContents(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        ArrayList collectProcesses = collectProcesses(printWriter, 0, false, strArr);
        if (collectProcesses == null) {
            printWriter.println("No process found for: " + strArr[0]);
            return;
        }
        printWriter.println("Per-process Binder Cache Contents");
        for (int size = collectProcesses.size() - 1; size >= 0; size--) {
            ProcessRecord processRecord = (ProcessRecord) collectProcesses.get(size);
            int pid = processRecord.getPid();
            IApplicationThread thread = processRecord.getThread();
            if (thread != null) {
                printWriter.println("\n\n** Cache info for pid " + pid + " [" + processRecord.processName + "] **");
                printWriter.flush();
                try {
                    TransferPipe transferPipe = new TransferPipe();
                    try {
                        thread.dumpCacheInfo(transferPipe.getWriteFd(), strArr);
                        transferPipe.go(fileDescriptor);
                        transferPipe.kill();
                    } catch (Throwable th) {
                        transferPipe.kill();
                        throw th;
                        break;
                    }
                } catch (RemoteException unused) {
                    printWriter.println("Got a RemoteException while dumping the app " + processRecord);
                    printWriter.flush();
                } catch (IOException unused2) {
                    printWriter.println("Failure while dumping the app " + processRecord);
                    printWriter.flush();
                }
            }
        }
    }

    public final void dumpDbInfo(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        ArrayList collectProcesses = collectProcesses(printWriter, 0, false, strArr);
        if (collectProcesses == null) {
            printWriter.println("No process found for: " + strArr[0]);
            return;
        }
        printWriter.println("Applications Database Info:");
        for (int size = collectProcesses.size() - 1; size >= 0; size--) {
            ProcessRecord processRecord = (ProcessRecord) collectProcesses.get(size);
            int pid = processRecord.getPid();
            IApplicationThread thread = processRecord.getThread();
            if (thread != null) {
                printWriter.println("\n** Database info for pid " + pid + " [" + processRecord.processName + "] **");
                printWriter.flush();
                try {
                    TransferPipe transferPipe = new TransferPipe();
                    try {
                        thread.dumpDbInfo(transferPipe.getWriteFd(), strArr);
                        transferPipe.go(fileDescriptor);
                        transferPipe.kill();
                    } catch (Throwable th) {
                        transferPipe.kill();
                        throw th;
                        break;
                    }
                } catch (RemoteException unused) {
                    printWriter.println("Got a RemoteException while dumping the app " + processRecord);
                    printWriter.flush();
                } catch (IOException unused2) {
                    printWriter.println("Failure while dumping the app: " + processRecord);
                    printWriter.flush();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class MemItem {
        public final boolean hasActivities;
        public final int id;
        public final boolean isProc;
        public final String label;
        public final long mRss;
        public final long pss;
        public final String shortLabel;
        public ArrayList subitems;
        public final long swapPss;
        public final int userId;

        public MemItem(String str, String str2, long j, long j2, long j3, int i, int i2, boolean z) {
            this.isProc = true;
            this.label = str;
            this.shortLabel = str2;
            this.pss = j;
            this.swapPss = j2;
            this.mRss = j3;
            this.id = i;
            this.userId = i2;
            this.hasActivities = z;
        }

        public MemItem(String str, String str2, long j, long j2, long j3, int i) {
            this.isProc = false;
            this.label = str;
            this.shortLabel = str2;
            this.pss = j;
            this.swapPss = j2;
            this.mRss = j3;
            this.id = i;
            this.userId = 0;
            this.hasActivities = false;
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$22 */
    /* loaded from: classes.dex */
    public class AnonymousClass22 implements Comparator {
        public final /* synthetic */ boolean val$pss;

        public AnonymousClass22(boolean z) {
            r1 = z;
        }

        @Override // java.util.Comparator
        public int compare(MemItem memItem, MemItem memItem2) {
            boolean z = r1;
            long j = z ? memItem.pss : memItem.mRss;
            long j2 = z ? memItem2.pss : memItem2.mRss;
            if (j < j2) {
                return 1;
            }
            return j > j2 ? -1 : 0;
        }
    }

    public static void sortMemItems(List list, boolean z) {
        Collections.sort(list, new Comparator() { // from class: com.android.server.am.ActivityManagerService.22
            public final /* synthetic */ boolean val$pss;

            public AnonymousClass22(boolean z2) {
                r1 = z2;
            }

            @Override // java.util.Comparator
            public int compare(MemItem memItem, MemItem memItem2) {
                boolean z2 = r1;
                long j = z2 ? memItem.pss : memItem.mRss;
                long j2 = z2 ? memItem2.pss : memItem2.mRss;
                if (j < j2) {
                    return 1;
                }
                return j > j2 ? -1 : 0;
            }
        });
    }

    public static final void dumpMemItems(PrintWriter printWriter, String str, String str2, ArrayList arrayList, boolean z, boolean z2, boolean z3, boolean z4) {
        if (z && !z2) {
            sortMemItems(arrayList, z3);
        }
        for (int i = 0; i < arrayList.size(); i++) {
            MemItem memItem = (MemItem) arrayList.get(i);
            if (z2) {
                if (memItem.isProc) {
                    printWriter.print("proc,");
                    printWriter.print(str2);
                    printWriter.print(",");
                    printWriter.print(memItem.shortLabel);
                    printWriter.print(",");
                    printWriter.print(memItem.id);
                    printWriter.print(",");
                    printWriter.print(z3 ? memItem.pss : memItem.mRss);
                    printWriter.print(",");
                    printWriter.print(z4 ? Long.valueOf(memItem.swapPss) : "N/A");
                    printWriter.println(memItem.hasActivities ? ",a" : ",e");
                } else {
                    printWriter.print(str2);
                    printWriter.print(",");
                    printWriter.print(memItem.shortLabel);
                    printWriter.print(",");
                    printWriter.print(z3 ? memItem.pss : memItem.mRss);
                    printWriter.print(",");
                    printWriter.println(z4 ? Long.valueOf(memItem.swapPss) : "N/A");
                }
            } else if (z3 && z4) {
                printWriter.printf("%s%s: %-60s (%s in swap)\n", str, stringifyKBSize(memItem.pss), memItem.label, stringifyKBSize(memItem.swapPss));
            } else {
                Object[] objArr = new Object[4];
                objArr[0] = str;
                objArr[1] = stringifyKBSize(z3 ? memItem.pss : memItem.mRss);
                objArr[2] = memItem.label;
                objArr[3] = memItem.userId != 0 ? " (user " + memItem.userId + ")" : "";
                printWriter.printf("%s%s: %s%s\n", objArr);
            }
            if (memItem.subitems != null) {
                dumpMemItems(printWriter, str + "    ", memItem.shortLabel, memItem.subitems, true, z2, z3, z4);
            }
        }
    }

    public static final void dumpMemItems(ProtoOutputStream protoOutputStream, long j, String str, ArrayList arrayList, boolean z, boolean z2, boolean z3) {
        if (z) {
            sortMemItems(arrayList, z2);
        }
        for (int i = 0; i < arrayList.size(); i++) {
            MemItem memItem = (MemItem) arrayList.get(i);
            long start = protoOutputStream.start(j);
            protoOutputStream.write(1138166333441L, str);
            protoOutputStream.write(1138166333442L, memItem.shortLabel);
            protoOutputStream.write(1133871366148L, memItem.isProc);
            protoOutputStream.write(1120986464259L, memItem.id);
            protoOutputStream.write(1133871366149L, memItem.hasActivities);
            protoOutputStream.write(1112396529670L, memItem.pss);
            protoOutputStream.write(1112396529673L, memItem.mRss);
            if (z3) {
                protoOutputStream.write(1112396529671L, memItem.swapPss);
            }
            ArrayList arrayList2 = memItem.subitems;
            if (arrayList2 != null) {
                dumpMemItems(protoOutputStream, 2246267895816L, memItem.shortLabel, arrayList2, true, z2, z3);
            }
            protoOutputStream.end(start);
        }
    }

    public static final void appendMemBucket(StringBuilder sb, long j, String str, boolean z) {
        int lastIndexOf = str.lastIndexOf(46);
        int i = 0;
        int i2 = lastIndexOf >= 0 ? lastIndexOf + 1 : 0;
        int length = str.length();
        while (true) {
            long[] jArr = DUMP_MEM_BUCKETS;
            if (i < jArr.length) {
                long j2 = jArr[i];
                if (j2 >= j) {
                    sb.append(j2 / 1024);
                    sb.append(z ? "MB." : "MB ");
                    sb.append((CharSequence) str, i2, length);
                    return;
                }
                i++;
            } else {
                sb.append(j / 1024);
                sb.append(z ? "MB." : "MB ");
                sb.append((CharSequence) str, i2, length);
                return;
            }
        }
    }

    public final void dumpApplicationMemoryUsageHeader(PrintWriter printWriter, long j, long j2, boolean z, boolean z2) {
        if (z2) {
            printWriter.print("version,");
            printWriter.println(1);
        }
        if (z || z2) {
            printWriter.print("time,");
            printWriter.print(j);
            printWriter.print(",");
            printWriter.println(j2);
            return;
        }
        printWriter.println("Applications Memory Usage (in Kilobytes):");
        printWriter.println("Uptime: " + j + " Realtime: " + j2);
    }

    public static final long[] getKsmInfo() {
        int[] iArr = {8224};
        Process.readProcFile("/sys/kernel/mm/ksm/pages_shared", iArr, null, r3, null);
        long[] jArr = {0};
        Process.readProcFile("/sys/kernel/mm/ksm/pages_sharing", iArr, null, jArr, null);
        jArr[0] = 0;
        Process.readProcFile("/sys/kernel/mm/ksm/pages_unshared", iArr, null, jArr, null);
        jArr[0] = 0;
        Process.readProcFile("/sys/kernel/mm/ksm/pages_volatile", iArr, null, jArr, null);
        return new long[]{(jArr[0] * 4096) / 1024, (jArr[0] * 4096) / 1024, (jArr[0] * 4096) / 1024, (jArr[0] * 4096) / 1024};
    }

    public static String stringifySize(long j, int i) {
        Locale locale = Locale.US;
        if (i == 1) {
            return String.format(locale, "%,13d", Long.valueOf(j));
        }
        if (i == 1024) {
            return String.format(locale, "%,9dK", Long.valueOf(j / 1024));
        }
        if (i == 1048576) {
            return String.format(locale, "%,5dM", Long.valueOf((j / 1024) / 1024));
        }
        if (i == 1073741824) {
            return String.format(locale, "%,1dG", Long.valueOf(((j / 1024) / 1024) / 1024));
        }
        throw new IllegalArgumentException("Invalid size order");
    }

    public static String stringifyKBSize(long j) {
        return stringifySize(j * 1024, 1024);
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x023d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:141:? A[SYNTHETIC] */
    @dalvik.annotation.optimization.NeverCompile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dumpApplicationMemoryUsage(java.io.FileDescriptor r18, java.io.PrintWriter r19, java.lang.String r20, java.lang.String[] r21, boolean r22, java.io.PrintWriter r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 792
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.dumpApplicationMemoryUsage(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String, java.lang.String[], boolean, java.io.PrintWriter, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0098, code lost:
    
        if (android.os.Debug.getMemoryInfo(r9, r1) == false) goto L438;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0415 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0397 A[Catch: RemoteException -> 0x03a0, IOException -> 0x03a2, TryCatch #11 {RemoteException -> 0x03a0, IOException -> 0x03a2, blocks: (B:178:0x0379, B:180:0x037e, B:191:0x0392, B:193:0x0397, B:194:0x039f), top: B:177:0x0379 }] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x06ed A[LOOP:7: B:243:0x06eb->B:244:0x06ed, LOOP_END] */
    @dalvik.annotation.optimization.NeverCompile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dumpApplicationMemoryUsage(java.io.FileDescriptor r88, java.io.PrintWriter r89, java.lang.String r90, final com.android.server.am.ActivityManagerService.MemoryUsageDumpOptions r91, final java.lang.String[] r92, final boolean r93, java.util.ArrayList r94, java.io.PrintWriter r95) {
        /*
            Method dump skipped, instructions count: 3135
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.dumpApplicationMemoryUsage(java.io.FileDescriptor, java.io.PrintWriter, java.lang.String, com.android.server.am.ActivityManagerService$MemoryUsageDumpOptions, java.lang.String[], boolean, java.util.ArrayList, java.io.PrintWriter):void");
    }

    public static /* synthetic */ void lambda$dumpApplicationMemoryUsage$21(int i, String[] strArr, ArrayList arrayList, ProcessCpuTracker.Stats stats) {
        String str;
        if (stats.pid == i || ((str = stats.baseName) != null && str.equals(strArr[0]))) {
            arrayList.add(stats);
        }
    }

    public static /* synthetic */ void lambda$dumpApplicationMemoryUsage$22(ProcessRecord processRecord, long j, long j2, long j3, int i, long j4, long j5, ProcessStats.ProcessStateHolder processStateHolder) {
        FrameworkStatsLog.write(18, processRecord.info.uid, processStateHolder.state.getName(), processStateHolder.state.getPackage(), j, j2, j3, i, j4 - j5, processStateHolder.appVersion, processRecord.mProfile.getCurrentHostingComponentTypes(), processRecord.mProfile.getHistoricalHostingComponentTypes());
    }

    public static /* synthetic */ void lambda$dumpApplicationMemoryUsage$23(SparseArray sparseArray, Debug.MemoryInfo[] memoryInfoArr, boolean z, MemoryUsageDumpOptions memoryUsageDumpOptions, long[] jArr, long[] jArr2, long[] jArr3, ArrayList arrayList, long[] jArr4, long[] jArr5, long[] jArr6, long[] jArr7, long[] jArr8, long[] jArr9, long[] jArr10, long[] jArr11, ArrayList[] arrayListArr, long[] jArr12, ProcessCpuTracker.Stats stats) {
        long j;
        long j2;
        if (stats.vsize <= 0 || sparseArray.indexOfKey(stats.pid) >= 0) {
            return;
        }
        if (memoryInfoArr[0] == null) {
            memoryInfoArr[0] = new Debug.MemoryInfo();
        }
        Debug.MemoryInfo memoryInfo = memoryInfoArr[0];
        if (!z && !memoryUsageDumpOptions.oomOnly) {
            if (!Debug.getMemoryInfo(stats.pid, memoryInfo)) {
                return;
            }
            j = memoryInfo.getOtherPrivate(14);
            j2 = memoryInfo.getOtherPrivate(15);
        } else {
            long pss = Debug.getPss(stats.pid, jArr, jArr2);
            if (pss == 0) {
                return;
            }
            memoryInfo.nativePss = (int) pss;
            memoryInfo.nativePrivateDirty = (int) jArr[0];
            memoryInfo.nativeRss = (int) jArr[2];
            j = jArr2[1];
            j2 = jArr2[2];
        }
        long totalPss = memoryInfo.getTotalPss();
        long totalSwappedOutPss = memoryInfo.getTotalSwappedOutPss();
        long totalRss = memoryInfo.getTotalRss();
        jArr3[9] = jArr3[9] + totalPss;
        jArr3[10] = jArr3[10] + totalSwappedOutPss;
        jArr3[11] = jArr3[11] + totalRss;
        jArr3[12] = jArr3[12] + totalPss;
        jArr3[13] = jArr3[13] + j;
        jArr3[14] = jArr3[14] + j2;
        MemItem memItem = new MemItem(stats.name + " (pid " + stats.pid + ")", stats.name, totalPss, memoryInfo.getSummaryTotalSwapPss(), totalRss, stats.pid, UserHandle.getUserId(stats.uid), false);
        arrayList.add(memItem);
        jArr3[0] = jArr3[0] + ((long) memoryInfo.nativePss);
        jArr3[1] = jArr3[1] + ((long) memoryInfo.nativeSwappedOutPss);
        jArr3[2] = jArr3[2] + ((long) memoryInfo.nativeRss);
        jArr3[3] = jArr3[3] + ((long) memoryInfo.dalvikPss);
        jArr3[4] = jArr3[4] + memoryInfo.dalvikSwappedOutPss;
        jArr3[5] = jArr3[5] + memoryInfo.dalvikRss;
        for (int i = 0; i < jArr4.length; i++) {
            int i2 = i + 17;
            jArr4[i] = jArr4[i] + memoryInfo.getOtherPss(i2);
            jArr5[i] = jArr5[i] + memoryInfo.getOtherSwappedOutPss(i2);
            jArr6[i] = jArr6[i] + memoryInfo.getOtherRss(i2);
        }
        jArr3[6] = jArr3[6] + memoryInfo.otherPss;
        jArr3[7] = jArr3[7] + memoryInfo.otherSwappedOutPss;
        jArr3[8] = jArr3[8] + memoryInfo.otherRss;
        for (int i3 = 0; i3 < 17; i3++) {
            long otherPss = memoryInfo.getOtherPss(i3);
            jArr7[i3] = jArr7[i3] + otherPss;
            jArr3[6] = jArr3[6] - otherPss;
            long otherSwappedOutPss = memoryInfo.getOtherSwappedOutPss(i3);
            jArr8[i3] = jArr8[i3] + otherSwappedOutPss;
            jArr3[7] = jArr3[7] - otherSwappedOutPss;
            long otherRss = memoryInfo.getOtherRss(i3);
            jArr9[i3] = jArr9[i3] + otherRss;
            jArr3[8] = jArr3[8] - otherRss;
        }
        jArr10[0] = jArr10[0] + totalPss;
        jArr11[0] = jArr11[0] + totalSwappedOutPss;
        if (arrayListArr[0] == null) {
            arrayListArr[0] = new ArrayList();
        }
        arrayListArr[0].add(memItem);
        jArr12[0] = jArr12[0] + totalRss;
    }

    public List getNativeProcesses(final Set set) {
        final ArrayList arrayList = new ArrayList();
        if (set == null) {
            set = new HashSet();
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    Iterator it = this.mProcessList.getmLruProcesses().iterator();
                    while (it.hasNext()) {
                        set.add(Integer.valueOf(((ProcessRecord) it.next()).getPid()));
                    }
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterProcLockedSection();
        }
        updateCpuStats();
        this.mAppProfiler.forAllCpuStats(new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda41
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ActivityManagerService.lambda$getNativeProcesses$24(set, arrayList, (ProcessCpuTracker.Stats) obj);
            }
        });
        return arrayList;
    }

    public static /* synthetic */ void lambda$getNativeProcesses$24(Set set, ArrayList arrayList, ProcessCpuTracker.Stats stats) {
        if (stats.vsize <= 0 || set.contains(Integer.valueOf(stats.pid))) {
            return;
        }
        arrayList.add(stats);
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x0371 A[Catch: RemoteException -> 0x037a, IOException -> 0x037c, TryCatch #9 {RemoteException -> 0x037a, IOException -> 0x037c, blocks: (B:158:0x033b, B:160:0x0340, B:167:0x036c, B:169:0x0371, B:170:0x0379), top: B:157:0x033b }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x06f4 A[LOOP:7: B:214:0x06f2->B:215:0x06f4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0409 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @dalvik.annotation.optimization.NeverCompile
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void dumpApplicationMemoryUsage(java.io.FileDescriptor r82, final com.android.server.am.ActivityManagerService.MemoryUsageDumpOptions r83, final java.lang.String[] r84, final boolean r85, java.util.ArrayList r86) {
        /*
            Method dump skipped, instructions count: 2412
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.dumpApplicationMemoryUsage(java.io.FileDescriptor, com.android.server.am.ActivityManagerService$MemoryUsageDumpOptions, java.lang.String[], boolean, java.util.ArrayList):void");
    }

    public static /* synthetic */ void lambda$dumpApplicationMemoryUsage$25(int i, String[] strArr, ArrayList arrayList, ProcessCpuTracker.Stats stats) {
        String str;
        if (stats.pid == i || ((str = stats.baseName) != null && str.equals(strArr[0]))) {
            arrayList.add(stats);
        }
    }

    public static /* synthetic */ void lambda$dumpApplicationMemoryUsage$26(ProcessRecord processRecord, long j, long j2, long j3, int i, long j4, long j5, ProcessStats.ProcessStateHolder processStateHolder) {
        FrameworkStatsLog.write(18, processRecord.info.uid, processStateHolder.state.getName(), processStateHolder.state.getPackage(), j, j2, j3, i, j4 - j5, processStateHolder.appVersion, processRecord.mProfile.getCurrentHostingComponentTypes(), processRecord.mProfile.getHistoricalHostingComponentTypes());
    }

    public static /* synthetic */ void lambda$dumpApplicationMemoryUsage$27(SparseArray sparseArray, Debug.MemoryInfo[] memoryInfoArr, boolean z, MemoryUsageDumpOptions memoryUsageDumpOptions, long[] jArr, long[] jArr2, ArrayList arrayList, long[] jArr3, long[] jArr4, long[] jArr5, long[] jArr6, long[] jArr7, long[] jArr8, long[] jArr9, long[] jArr10, ArrayList[] arrayListArr, long[] jArr11, ProcessCpuTracker.Stats stats) {
        if (stats.vsize <= 0 || sparseArray.indexOfKey(stats.pid) >= 0) {
            return;
        }
        if (memoryInfoArr[0] == null) {
            memoryInfoArr[0] = new Debug.MemoryInfo();
        }
        Debug.MemoryInfo memoryInfo = memoryInfoArr[0];
        if (!z && !memoryUsageDumpOptions.oomOnly) {
            if (!Debug.getMemoryInfo(stats.pid, memoryInfo)) {
                return;
            }
        } else {
            long pss = Debug.getPss(stats.pid, jArr, null);
            if (pss == 0) {
                return;
            }
            memoryInfo.nativePss = (int) pss;
            memoryInfo.nativePrivateDirty = (int) jArr[0];
            memoryInfo.nativeRss = (int) jArr[2];
        }
        long totalPss = memoryInfo.getTotalPss();
        long totalSwappedOutPss = memoryInfo.getTotalSwappedOutPss();
        long totalRss = memoryInfo.getTotalRss();
        jArr2[9] = jArr2[9] + totalPss;
        jArr2[10] = jArr2[10] + totalSwappedOutPss;
        jArr2[11] = jArr2[11] + totalRss;
        jArr2[12] = jArr2[12] + totalPss;
        MemItem memItem = new MemItem(stats.name + " (pid " + stats.pid + ")", stats.name, totalPss, memoryInfo.getSummaryTotalSwapPss(), totalRss, stats.pid, UserHandle.getUserId(stats.uid), false);
        arrayList.add(memItem);
        jArr2[0] = jArr2[0] + ((long) memoryInfo.nativePss);
        jArr2[1] = jArr2[1] + ((long) memoryInfo.nativeSwappedOutPss);
        jArr2[2] = jArr2[2] + ((long) memoryInfo.nativeRss);
        jArr2[3] = jArr2[3] + ((long) memoryInfo.dalvikPss);
        jArr2[4] = jArr2[4] + memoryInfo.dalvikSwappedOutPss;
        jArr2[5] = jArr2[5] + memoryInfo.dalvikRss;
        for (int i = 0; i < jArr3.length; i++) {
            int i2 = i + 17;
            jArr3[i] = jArr3[i] + memoryInfo.getOtherPss(i2);
            jArr4[i] = jArr4[i] + memoryInfo.getOtherSwappedOutPss(i2);
            jArr5[i] = jArr5[i] + memoryInfo.getOtherRss(i2);
        }
        jArr2[6] = jArr2[6] + memoryInfo.otherPss;
        jArr2[7] = jArr2[7] + memoryInfo.otherSwappedOutPss;
        jArr2[8] = jArr2[8] + memoryInfo.otherRss;
        for (int i3 = 0; i3 < 17; i3++) {
            long otherPss = memoryInfo.getOtherPss(i3);
            jArr6[i3] = jArr6[i3] + otherPss;
            jArr2[6] = jArr2[6] - otherPss;
            long otherSwappedOutPss = memoryInfo.getOtherSwappedOutPss(i3);
            jArr7[i3] = jArr7[i3] + otherSwappedOutPss;
            jArr2[7] = jArr2[7] - otherSwappedOutPss;
            long otherRss = memoryInfo.getOtherRss(i3);
            jArr8[i3] = jArr8[i3] + otherRss;
            jArr2[8] = jArr2[8] - otherRss;
        }
        jArr9[0] = jArr9[0] + totalPss;
        jArr10[0] = jArr10[0] + totalSwappedOutPss;
        if (arrayListArr[0] == null) {
            arrayListArr[0] = new ArrayList();
        }
        arrayListArr[0].add(memItem);
        jArr11[0] = jArr11[0] + totalRss;
    }

    public static void appendBasicMemEntry(StringBuilder sb, int i, int i2, long j, long j2, String str) {
        sb.append("  ");
        sb.append(ProcessList.makeOomAdjString(i, false));
        sb.append(' ');
        sb.append(ProcessList.makeProcStateString(i2));
        sb.append(' ');
        ProcessList.appendRamKb(sb, j);
        sb.append(": ");
        sb.append(str);
        if (j2 > 0) {
            sb.append(" (");
            sb.append(stringifyKBSize(j2));
            sb.append(" memtrack)");
        }
    }

    public static void appendMemInfo(StringBuilder sb, ProcessMemInfo processMemInfo) {
        appendBasicMemEntry(sb, processMemInfo.oomAdj, processMemInfo.procState, processMemInfo.pss, processMemInfo.memtrack, processMemInfo.name);
        sb.append(" (pid ");
        sb.append(processMemInfo.pid);
        sb.append(") ");
        sb.append(processMemInfo.adjType);
        sb.append('\n');
        if (processMemInfo.adjReason != null) {
            sb.append("                      ");
            sb.append(processMemInfo.adjReason);
            sb.append('\n');
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0075 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void filterNonExportedComponents(final android.content.Intent r4, int r5, final int r6, java.util.List r7, com.android.server.compat.PlatformCompat r8, java.lang.String r9, java.lang.String r10) {
        /*
            r3 = this;
            if (r7 == 0) goto L96
            java.lang.String r9 = r4.getPackage()
            if (r9 != 0) goto L96
            android.content.ComponentName r9 = r4.getComponent()
            if (r9 != 0) goto L96
            boolean r9 = android.app.ActivityManager.canAccessUnexportedComponents(r5)
            if (r9 == 0) goto L16
            goto L96
        L16:
            android.util.SparseArray r9 = r3.mStrictModeCallbacks
            java.lang.Object r9 = r9.get(r6)
            android.app.IUnsafeIntentStrictModeCallback r9 = (android.app.IUnsafeIntentStrictModeCallback) r9
            int r0 = r7.size()
            int r0 = r0 + (-1)
        L24:
            if (r0 < 0) goto L96
            java.lang.Object r1 = r7.get(r0)
            boolean r1 = r1 instanceof android.content.pm.ResolveInfo
            if (r1 == 0) goto L49
            java.lang.Object r1 = r7.get(r0)
            android.content.pm.ResolveInfo r1 = (android.content.pm.ResolveInfo) r1
            android.content.pm.ComponentInfo r2 = r1.getComponentInfo()
            boolean r2 = r2.exported
            if (r2 == 0) goto L3d
            goto L93
        L3d:
            android.content.pm.ComponentInfo r1 = r1.getComponentInfo()
            android.content.ComponentName r1 = r1.getComponentName()
            r1.flattenToShortString()
            goto L5c
        L49:
            java.lang.Object r1 = r7.get(r0)
            boolean r1 = r1 instanceof com.android.server.am.BroadcastFilter
            if (r1 == 0) goto L93
            java.lang.Object r1 = r7.get(r0)
            com.android.server.am.BroadcastFilter r1 = (com.android.server.am.BroadcastFilter) r1
            boolean r1 = r1.exported
            if (r1 == 0) goto L5c
            goto L93
        L5c:
            if (r9 == 0) goto L68
            com.android.server.am.ActivityManagerService$MainHandler r1 = r3.mHandler
            com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda13 r2 = new com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda13
            r2.<init>()
            r1.post(r2)
        L68:
            r1 = 229362273(0xdabca61, double:1.133200195E-315)
            boolean r1 = r8.isChangeEnabledByUid(r1, r5)
            r2 = 2
            com.android.server.am.ActivityManagerUtils.logUnsafeIntentEvent(r2, r5, r4, r10, r1)
            if (r1 != 0) goto L76
            return
        L76:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "filterNonExportedComponents remove "
            r1.append(r2)
            java.lang.Object r2 = r7.get(r0)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "ActivityManager"
            android.util.Slog.i(r2, r1)
            r7.remove(r0)
        L93:
            int r0 = r0 + (-1)
            goto L24
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.filterNonExportedComponents(android.content.Intent, int, int, java.util.List, com.android.server.compat.PlatformCompat, java.lang.String, java.lang.String):void");
    }

    public /* synthetic */ void lambda$filterNonExportedComponents$28(IUnsafeIntentStrictModeCallback iUnsafeIntentStrictModeCallback, Intent intent, int i) {
        try {
            iUnsafeIntentStrictModeCallback.onImplicitIntentMatchedInternalComponent(intent.cloneFilter());
        } catch (RemoteException unused) {
            this.mStrictModeCallbacks.remove(i);
        }
    }

    public final boolean cleanUpApplicationRecordLocked(ProcessRecord processRecord, int i, boolean z, boolean z2, int i2, boolean z3, boolean z4) {
        boolean z5;
        boolean onCleanupApplicationRecordLSP;
        boolean z6;
        boolean z7 = MARsPolicyManager.MARs_ENABLE && FreecessController.getInstance().isPidUfzEnabled() && FreecessController.getInstance().isPackageRestricted(processRecord.info.packageName, processRecord.userId);
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            if (i2 >= 0) {
                try {
                    removeLruProcessLocked(processRecord);
                    ProcessList.remove(i);
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            ProcessStatsService processStatsService = this.mProcessStats;
            boolean z8 = z2 && !z7;
            if (!z4 && !processRecord.isolated) {
                z5 = false;
                onCleanupApplicationRecordLSP = processRecord.onCleanupApplicationRecordLSP(processStatsService, z8, z5);
                this.mOomAdjuster.mCachedAppOptimizer.onCleanupApplicationRecordLocked(processRecord);
            }
            z5 = true;
            onCleanupApplicationRecordLSP = processRecord.onCleanupApplicationRecordLSP(processStatsService, z8, z5);
            this.mOomAdjuster.mCachedAppOptimizer.onCleanupApplicationRecordLocked(processRecord);
        }
        resetPriorityAfterProcLockedSection();
        this.mAppProfiler.onCleanupApplicationRecordLocked(processRecord);
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            broadcastQueue.onApplicationCleanupLocked(processRecord);
        }
        clearProcessForegroundLocked(processRecord);
        this.mServices.killServicesLocked(processRecord, z2, z7);
        this.mPhantomProcessList.onAppDied(i);
        BackupRecord backupRecord = (BackupRecord) this.mBackupTargets.get(processRecord.userId);
        if (backupRecord != null && i == backupRecord.app.getPid()) {
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.23
                public final /* synthetic */ ProcessRecord val$app;

                public AnonymousClass23(ProcessRecord processRecord2) {
                    r2 = processRecord2;
                }

                @Override // java.lang.Runnable
                public void run() {
                    try {
                        IBackupManager asInterface = IBackupManager.Stub.asInterface(ServiceManager.getService("backup"));
                        ProcessRecord processRecord2 = r2;
                        asInterface.agentDisconnectedForUser(processRecord2.userId, processRecord2.info.packageName);
                    } catch (RemoteException unused) {
                    }
                }
            });
        }
        this.mProcessList.scheduleDispatchProcessDiedLocked(i, processRecord2.info.uid);
        boolean handlePrecedingAppDiedLocked = this.mProcessList.handlePrecedingAppDiedLocked(processRecord2);
        ProcessRecord processRecord2 = processRecord2.mPredecessor;
        if (processRecord2 != null) {
            processRecord2.mSuccessor = null;
            processRecord2.mSuccessorStartRunnable = null;
            processRecord2.mPredecessor = null;
        }
        if (z) {
            return false;
        }
        if (needToBlockImsRequest(processRecord2.info.packageName, processRecord2.userId)) {
            Slog.d("ActivityManager", "[IMS-AM] cleanUpApplicationRecordLocked() Clean up [" + processRecord2.info.packageName + "] of non-active user [" + processRecord2.userId + "]");
            this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.24
                public final /* synthetic */ ProcessRecord val$app;

                public AnonymousClass24(ProcessRecord processRecord22) {
                    r2 = processRecord22;
                }

                @Override // java.lang.Runnable
                public void run() {
                    ActivityManagerService.this.startImsService(r2.info.packageName);
                }
            });
            z6 = true;
        } else {
            z6 = false;
        }
        if (!processRecord22.isPersistent() || processRecord22.isolated || z6) {
            if (!z3) {
                this.mProcessList.removeProcessNameLocked(processRecord22.processName, processRecord22.uid, processRecord22);
            }
            this.mAtmInternal.clearHeavyWeightProcessIfEquals(processRecord22.getWindowProcessController());
        } else if (!processRecord22.isRemoved() && this.mPersistentStartingProcesses.indexOf(processRecord22) < 0) {
            this.mPersistentStartingProcesses.add(processRecord22);
            onCleanupApplicationRecordLSP = true;
        }
        this.mProcessesOnHold.remove(processRecord22);
        this.mAtmInternal.onCleanUpApplicationRecord(processRecord22.getWindowProcessController());
        this.mProcessList.noteProcessDiedLocked(processRecord22);
        if (onCleanupApplicationRecordLSP && handlePrecedingAppDiedLocked && !processRecord22.isolated && !z7) {
            if (i2 < 0) {
                ProcessList.remove(i);
            }
            this.mHandler.removeMessages(57, processRecord22);
            this.mProcessList.addProcessNameLocked(processRecord22);
            processRecord22.setPendingStart(false);
            processRecord22.mIsRemovedName = false;
            this.mProcessList.startProcessLocked(processRecord22, new HostingRecord("restart", processRecord22.processName), 0);
            return true;
        }
        if (i > 0 && i != MY_PID) {
            removePidLocked(i, processRecord22);
            this.mHandler.removeMessages(20, processRecord22);
            this.mBatteryStatsService.noteProcessFinish(processRecord22.processName, processRecord22.info.uid);
            if (processRecord22.isolated) {
                this.mBatteryStatsService.removeIsolatedUid(processRecord22.uid, processRecord22.info.uid);
            }
            processRecord22.setPid(0);
        }
        return false;
    }

    /* renamed from: com.android.server.am.ActivityManagerService$23 */
    /* loaded from: classes.dex */
    public class AnonymousClass23 implements Runnable {
        public final /* synthetic */ ProcessRecord val$app;

        public AnonymousClass23(ProcessRecord processRecord22) {
            r2 = processRecord22;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                IBackupManager asInterface = IBackupManager.Stub.asInterface(ServiceManager.getService("backup"));
                ProcessRecord processRecord2 = r2;
                asInterface.agentDisconnectedForUser(processRecord2.userId, processRecord2.info.packageName);
            } catch (RemoteException unused) {
            }
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$24 */
    /* loaded from: classes.dex */
    public class AnonymousClass24 implements Runnable {
        public final /* synthetic */ ProcessRecord val$app;

        public AnonymousClass24(ProcessRecord processRecord22) {
            r2 = processRecord22;
        }

        @Override // java.lang.Runnable
        public void run() {
            ActivityManagerService.this.startImsService(r2.info.packageName);
        }
    }

    public List getServices(int i, int i2) {
        List runningServiceInfoLocked;
        enforceNotIsolatedCaller("getServices");
        int callingUid = Binder.getCallingUid();
        boolean z = ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", callingUid) == 0;
        boolean isGetTasksAllowed = this.mAtmInternal.isGetTasksAllowed("getServices", Binder.getCallingPid(), callingUid);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                runningServiceInfoLocked = this.mServices.getRunningServiceInfoLocked(i, i2, callingUid, isGetTasksAllowed, z);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return runningServiceInfoLocked;
    }

    public PendingIntent getRunningServiceControlPanel(ComponentName componentName) {
        PendingIntent runningServiceControlPanelLocked;
        enforceNotIsolatedCaller("getRunningServiceControlPanel");
        int callingUid = Binder.getCallingUid();
        int userId = UserHandle.getUserId(callingUid);
        if (componentName == null || getPackageManagerInternal().filterAppAccess(componentName.getPackageName(), callingUid, userId)) {
            return null;
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                runningServiceControlPanelLocked = this.mServices.getRunningServiceControlPanelLocked(componentName);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return runningServiceControlPanelLocked;
    }

    public void logFgsApiBegin(int i, int i2, int i3) {
        enforceCallingPermission("android.permission.LOG_FOREGROUND_RESOURCE_USE", "logFgsApiBegin");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mServices.logFgsApiBeginLocked(i, i2, i3);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void logFgsApiEnd(int i, int i2, int i3) {
        enforceCallingPermission("android.permission.LOG_FOREGROUND_RESOURCE_USE", "logFgsApiEnd");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mServices.logFgsApiEndLocked(i, i2, i3);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void logFgsApiStateChanged(int i, int i2, int i3, int i4) {
        enforceCallingPermission("android.permission.LOG_FOREGROUND_RESOURCE_USE", "logFgsApiEvent");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mServices.logFgsApiStateChangedLocked(i, i3, i4, i2);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public ComponentName startService(IApplicationThread iApplicationThread, Intent intent, String str, boolean z, String str2, String str3, int i) {
        return startService(iApplicationThread, intent, str, z, str2, str3, i, false, -1, null, null);
    }

    public final ComponentName startService(IApplicationThread iApplicationThread, Intent intent, String str, boolean z, String str2, String str3, int i, boolean z2, int i2, String str4, String str5) {
        enforceNotIsolatedCaller("startService");
        enforceAllowedToStartOrBindServiceIfSdkSandbox(intent);
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("callingPackage cannot be null");
        }
        if (z2 && str5 == null) {
            throw new IllegalArgumentException("No instance name provided for SDK sandbox process");
        }
        validateServiceInstanceName(str5);
        int callingPid = Binder.getCallingPid();
        int callingUid = Binder.getCallingUid();
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            if (Trace.isTagEnabled(64L)) {
                Trace.traceBegin(64L, "startService: intent=" + intent + ", caller=" + str2 + ", fgRequired=" + z);
            }
            boostPriorityForLockedSection();
            try {
                try {
                    synchronized (this) {
                        try {
                            ComponentName startServiceLocked = this.mServices.startServiceLocked(iApplicationThread, intent, str, callingPid, callingUid, z, str2, str3, i, z2, i2, str4, str5);
                            resetPriorityAfterLockedSection();
                            Trace.traceEnd(64L);
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                            return startServiceLocked;
                        } catch (Throwable th) {
                            th = th;
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    Trace.traceEnd(64L);
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public final void validateServiceInstanceName(String str) {
        if (str != null && !str.matches("[a-zA-Z0-9_.]+")) {
            throw new IllegalArgumentException("Illegal instanceName");
        }
    }

    public int stopService(IApplicationThread iApplicationThread, Intent intent, String str, int i) {
        return stopService(iApplicationThread, intent, str, i, false, -1, null, null);
    }

    public final int stopService(IApplicationThread iApplicationThread, Intent intent, String str, int i, boolean z, int i2, String str2, String str3) {
        int stopServiceLocked;
        enforceNotIsolatedCaller("stopService");
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        try {
            if (Trace.isTagEnabled(64L)) {
                Trace.traceBegin(64L, "stopService: " + intent);
            }
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    stopServiceLocked = this.mServices.stopServiceLocked(iApplicationThread, intent, str, i, z, i2, str2, str3);
                } finally {
                }
            }
            resetPriorityAfterLockedSection();
            return stopServiceLocked;
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public IBinder peekService(Intent intent, String str, String str2) {
        IBinder peekServiceLocked;
        enforceNotIsolatedCaller("peekService");
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("callingPackage cannot be null");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                peekServiceLocked = this.mServices.peekServiceLocked(intent, str, str2);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return peekServiceLocked;
    }

    public boolean stopServiceToken(ComponentName componentName, IBinder iBinder, int i) {
        boolean stopServiceTokenLocked;
        String str;
        try {
            if (Trace.isTagEnabled(64L)) {
                StringBuilder sb = new StringBuilder();
                sb.append("stopServiceToken: ");
                if (componentName != null) {
                    str = componentName.toShortString();
                } else {
                    str = "from " + Binder.getCallingPid();
                }
                sb.append(str);
                Trace.traceBegin(64L, sb.toString());
            }
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    stopServiceTokenLocked = this.mServices.stopServiceTokenLocked(componentName, iBinder, i);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
            return stopServiceTokenLocked;
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public void setServiceForeground(ComponentName componentName, IBinder iBinder, int i, Notification notification, int i2, int i3) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mServices.setServiceForegroundLocked(componentName, iBinder, i, notification, i2, i3);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public int getForegroundServiceType(ComponentName componentName, IBinder iBinder) {
        int foregroundServiceTypeLocked;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                foregroundServiceTypeLocked = this.mServices.getForegroundServiceTypeLocked(componentName, iBinder);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return foregroundServiceTypeLocked;
    }

    public boolean shouldServiceTimeOut(ComponentName componentName, IBinder iBinder) {
        boolean shouldServiceTimeOutLocked;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                shouldServiceTimeOutLocked = this.mServices.shouldServiceTimeOutLocked(componentName, iBinder);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return shouldServiceTimeOutLocked;
    }

    public int handleIncomingUser(int i, int i2, int i3, boolean z, boolean z2, String str, String str2) {
        return this.mUserController.handleIncomingUser(i, i2, i3, z, z2 ? 2 : 0, str, str2);
    }

    public boolean isSingleton(String str, ApplicationInfo applicationInfo, String str2, int i) {
        if (UserHandle.getAppId(applicationInfo.uid) >= 10000) {
            if ((i & 1073741824) != 0) {
                if (ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS", applicationInfo.uid) == 0) {
                    return true;
                }
                String str3 = "Permission Denial: Component " + new ComponentName(applicationInfo.packageName, str2).flattenToShortString() + " requests FLAG_SINGLE_USER, but app does not hold android.permission.INTERACT_ACROSS_USERS";
                Slog.w("ActivityManager", str3);
                throw new SecurityException(str3);
            }
        } else {
            if ("system".equals(str)) {
                return true;
            }
            if ((i & 1073741824) != 0 && (UserHandle.isSameApp(applicationInfo.uid, 1001) || (applicationInfo.flags & 8) != 0)) {
                return true;
            }
        }
        return false;
    }

    public boolean isValidSingletonCall(int i, int i2) {
        int appId = UserHandle.getAppId(i2);
        return UserHandle.isSameApp(i, i2) || appId == 1000 || appId == 1001 || ActivityManager.checkUidPermission("android.permission.INTERACT_ACROSS_USERS_FULL", i2) == 0;
    }

    public int bindService(IApplicationThread iApplicationThread, IBinder iBinder, Intent intent, String str, IServiceConnection iServiceConnection, long j, String str2, int i) {
        return bindServiceInstance(iApplicationThread, iBinder, intent, str, iServiceConnection, j, null, str2, i);
    }

    public int bindServiceInstance(IApplicationThread iApplicationThread, IBinder iBinder, Intent intent, String str, IServiceConnection iServiceConnection, long j, String str2, String str3, int i) {
        return bindServiceInstance(iApplicationThread, iBinder, intent, str, iServiceConnection, j, str2, false, -1, null, null, str3, i);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0080 A[Catch: all -> 0x00dd, TryCatch #4 {all -> 0x00dd, blocks: (B:32:0x007a, B:34:0x0080, B:36:0x0090, B:37:0x0099, B:38:0x0095, B:39:0x00a3, B:41:0x00a6), top: B:31:0x007a }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int bindServiceInstance(android.app.IApplicationThread r20, android.os.IBinder r21, android.content.Intent r22, java.lang.String r23, android.app.IServiceConnection r24, long r25, java.lang.String r27, boolean r28, int r29, java.lang.String r30, android.app.IApplicationThread r31, java.lang.String r32, int r33) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.bindServiceInstance(android.app.IApplicationThread, android.os.IBinder, android.content.Intent, java.lang.String, android.app.IServiceConnection, long, java.lang.String, boolean, int, java.lang.String, android.app.IApplicationThread, java.lang.String, int):int");
    }

    public void updateServiceGroup(IServiceConnection iServiceConnection, int i, int i2) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mServices.updateServiceGroupLocked(iServiceConnection, i, i2);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public boolean unbindService(IServiceConnection iServiceConnection) {
        boolean unbindServiceLocked;
        try {
            if (Trace.isTagEnabled(64L)) {
                Trace.traceBegin(64L, "unbindService");
            }
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    unbindServiceLocked = this.mServices.unbindServiceLocked(iServiceConnection);
                } finally {
                }
            }
            resetPriorityAfterLockedSection();
            return unbindServiceLocked;
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public void publishService(IBinder iBinder, Intent intent, IBinder iBinder2) {
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (!(iBinder instanceof ServiceRecord)) {
                    throw new IllegalArgumentException("Invalid service token");
                }
                this.mServices.publishServiceLocked((ServiceRecord) iBinder, intent, iBinder2);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void unbindFinished(IBinder iBinder, Intent intent, boolean z) {
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mServices.unbindFinishedLocked((ServiceRecord) iBinder, intent, z);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void serviceDoneExecuting(IBinder iBinder, int i, int i2, int i3) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (!(iBinder instanceof ServiceRecord)) {
                    Slog.e("ActivityManager", "serviceDoneExecuting: Invalid service token=" + iBinder);
                    throw new IllegalArgumentException("Invalid service token");
                }
                this.mServices.serviceDoneExecutingLocked((ServiceRecord) iBinder, i, i2, i3, false);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0106 A[Catch: all -> 0x00a7, TryCatch #2 {all -> 0x00a7, blocks: (B:32:0x0099, B:33:0x00cb, B:37:0x00d5, B:38:0x00e8, B:40:0x0106, B:41:0x011c, B:44:0x0121, B:48:0x012c, B:49:0x012f, B:51:0x013c, B:52:0x0142, B:54:0x0148, B:55:0x014e, B:66:0x0164, B:57:0x0167, B:71:0x00df, B:78:0x00ab), top: B:31:0x0099, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0121 A[Catch: all -> 0x00a7, TRY_ENTER, TryCatch #2 {all -> 0x00a7, blocks: (B:32:0x0099, B:33:0x00cb, B:37:0x00d5, B:38:0x00e8, B:40:0x0106, B:41:0x011c, B:44:0x0121, B:48:0x012c, B:49:0x012f, B:51:0x013c, B:52:0x0142, B:54:0x0148, B:55:0x014e, B:66:0x0164, B:57:0x0167, B:71:0x00df, B:78:0x00ab), top: B:31:0x0099, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean bindBackupAgent(java.lang.String r19, int r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.bindBackupAgent(java.lang.String, int, int, int):boolean");
    }

    public final void clearPendingBackup(int i) {
        ProcessRecord processRecord;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                int indexOfKey = this.mBackupTargets.indexOfKey(i);
                if (indexOfKey >= 0) {
                    BackupRecord backupRecord = (BackupRecord) this.mBackupTargets.valueAt(indexOfKey);
                    if (backupRecord != null && (processRecord = backupRecord.app) != null) {
                        processRecord.mProfile.clearHostingComponentType(4);
                    }
                    this.mBackupTargets.removeAt(indexOfKey);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        ((JobSchedulerInternal) LocalServices.getService(JobSchedulerInternal.class)).clearAllBackingUpUids();
    }

    public void backupAgentCreated(String str, IBinder iBinder, int i) {
        int callingUid = Binder.getCallingUid();
        enforceCallingPackage(str, callingUid);
        int handleIncomingUser = this.mUserController.handleIncomingUser(Binder.getCallingPid(), callingUid, i, false, 2, "backupAgentCreated", null);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                BackupRecord backupRecord = (BackupRecord) this.mBackupTargets.get(handleIncomingUser);
                if (!str.equals(backupRecord == null ? null : backupRecord.appInfo.packageName)) {
                    Slog.e("ActivityManager", "Backup agent created for " + str + " but not requested!");
                    resetPriorityAfterLockedSection();
                    return;
                }
                resetPriorityAfterLockedSection();
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    try {
                        IBackupManager.Stub.asInterface(ServiceManager.getService("backup")).agentConnectedForUser(handleIncomingUser, str, iBinder);
                    } catch (RemoteException unused) {
                    } catch (Exception e) {
                        Slog.w("ActivityManager", "Exception trying to deliver BackupAgent binding: ");
                        e.printStackTrace();
                    }
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void unbindBackupAgent(ApplicationInfo applicationInfo) {
        enforceCallingPermission("android.permission.CONFIRM_FULL_BACKUP", "unbindBackupAgent");
        if (applicationInfo == null) {
            Slog.w("ActivityManager", "unbind backup agent for null app");
            return;
        }
        int userId = UserHandle.getUserId(applicationInfo.uid);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                BackupRecord backupRecord = (BackupRecord) this.mBackupTargets.get(userId);
                String str = backupRecord == null ? null : backupRecord.appInfo.packageName;
                try {
                    if (str == null) {
                        Slog.w("ActivityManager", "Unbinding backup agent with no active backup");
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    if (!str.equals(applicationInfo.packageName)) {
                        Slog.e("ActivityManager", "Unbind of " + applicationInfo + " but is not the current backup target");
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    ProcessRecord processRecord = backupRecord.app;
                    updateOomAdjLocked(processRecord, 15);
                    processRecord.setInFullBackup(false);
                    processRecord.mProfile.clearHostingComponentType(4);
                    int i = backupRecord.appInfo.uid;
                    IApplicationThread thread = processRecord.getThread();
                    if (thread != null) {
                        try {
                            thread.scheduleDestroyBackupAgent(applicationInfo, userId);
                        } catch (Exception e) {
                            Slog.e("ActivityManager", "Exception when unbinding backup agent:");
                            e.printStackTrace();
                        }
                    }
                    resetPriorityAfterLockedSection();
                    if (i != -1) {
                        ((JobSchedulerInternal) LocalServices.getService(JobSchedulerInternal.class)).removeBackingUpUid(i);
                    }
                } finally {
                    this.mBackupTargets.delete(userId);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public final boolean isInstantApp(ProcessRecord processRecord, String str, int i) {
        if (UserHandle.getAppId(i) < 10000) {
            return false;
        }
        if (processRecord != null) {
            return processRecord.info.isInstantApp();
        }
        IPackageManager packageManager = AppGlobals.getPackageManager();
        if (str == null) {
            try {
                String[] packagesForUid = packageManager.getPackagesForUid(i);
                if (packagesForUid == null || packagesForUid.length == 0) {
                    throw new IllegalArgumentException("Unable to determine caller package name");
                }
                str = packagesForUid[0];
            } catch (RemoteException e) {
                Slog.e("ActivityManager", "Error looking up if " + str + " is an instant app.", e);
                return true;
            }
        }
        this.mAppOpsService.checkPackage(i, str);
        return packageManager.isInstantApp(str, UserHandle.getUserId(i));
    }

    public int checkProcDiedOrComponentExecutingForFreeze(ArrayList arrayList, ArrayList arrayList2) {
        int i = 0;
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                ProcessRecord processRecordFromPidLocked = getProcessRecordFromPidLocked(num.intValue());
                if (processRecordFromPidLocked != null) {
                    arrayList2.add(processRecordFromPidLocked);
                    i = getReasonProcShouldNotBeFrozen(processRecordFromPidLocked);
                } else if (!MARsPolicyManager.getInstance().isChinaPolicyEnabled() && "logcat".equals(FreecessController.getInstance().getPidProcessName(num.intValue()))) {
                    i = 7;
                }
                if (i != 0) {
                    break;
                }
            }
        }
        return i;
    }

    public int getReasonProcShouldNotBeFrozen(ProcessRecord processRecord) {
        if (processRecord != null) {
            if (processRecord.isKilled() || processRecord.isKilledByAm()) {
                return 1;
            }
            if (processRecord.mServices.numberOfExecutingServices() > 0) {
                return 2;
            }
            if (processRecord.mReceivers.numberOfCurReceivers() > 0) {
                return 3;
            }
            if (this.mCpHelper.checkAppInLaunchingProvidersMARsLocked(processRecord)) {
                return 4;
            }
            if (SystemClock.elapsedRealtime() - processRecord.getStartTime() < 2000) {
                return 5;
            }
            if (processRecord.mState.getCurAdj() <= 0 && processRecord.mState.getCurProcState() != 12) {
                if (!MARsPolicyManager.getInstance().isChinaPolicyEnabled() || MARsPolicyManager.getInstance().getScreenOnState()) {
                    return 6;
                }
            } else if (processRecord.mState.getCurProcState() == 3) {
                return 8;
            }
        }
        return 0;
    }

    public Intent registerReceiver(IApplicationThread iApplicationThread, String str, IIntentReceiver iIntentReceiver, IntentFilter intentFilter, String str2, int i, int i2) {
        return registerReceiverWithFeature(iApplicationThread, str, null, null, iIntentReceiver, intentFilter, str2, i, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x01f9, code lost:
    
        if (r58 != null) goto L377;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01fb, code lost:
    
        if (r5 != false) goto L377;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0225, code lost:
    
        r1 = r1 | 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0228, code lost:
    
        resetPriorityAfterLockedSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x022c, code lost:
    
        if ((r1 & 2) == 0) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x022e, code lost:
    
        r21 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0233, code lost:
    
        if (r0 == null) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0235, code lost:
    
        r1 = r53.mContext.getContentResolver();
        r2 = r0.size();
        r12 = 0;
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0241, code lost:
    
        if (r12 >= r2) goto L521;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0243, code lost:
    
        r5 = (com.android.server.am.ActivityManagerService.StickyBroadcast) r0.get(r12);
        r9 = r5.intent;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x024b, code lost:
    
        if (r18 == false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0254, code lost:
    
        if ((r9.getFlags() & 2097152) != 0) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x026a, code lost:
    
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x025d, code lost:
    
        if (r3.match(r1, r9, true, "ActivityManager") < 0) goto L523;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x025f, code lost:
    
        if (r14 != null) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0261, code lost:
    
        r14 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0267, code lost:
    
        r14.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x026d, code lost:
    
        r0 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0271, code lost:
    
        if (r0 == null) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0273, code lost:
    
        r22 = ((com.android.server.am.ActivityManagerService.StickyBroadcast) r0.get(0)).intent;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0280, code lost:
    
        if (r58 != null) goto L416;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0282, code lost:
    
        return r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0289, code lost:
    
        if (r9 == android.os.Process.myPid()) goto L423;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0291, code lost:
    
        if (r3.hasAction("com.android.server.net.action.SNOOZE_WARNING") != false) goto L422;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0299, code lost:
    
        if (r3.hasAction("com.android.server.net.action.SNOOZE_RAPID") == false) goto L423;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x029b, code lost:
    
        android.util.EventLog.writeEvent(1397638484, "177931370", java.lang.Integer.valueOf(r10), "");
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02ad, code lost:
    
        boostPriorityForLockedSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x02b0, code lost:
    
        monitor-enter(r53);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x02b1, code lost:
    
        r1 = r15.getThread();
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02b5, code lost:
    
        if (r1 == null) goto L490;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02bf, code lost:
    
        if (r1.asBinder() == r54.asBinder()) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02c3, code lost:
    
        r1 = (com.android.server.am.ReceiverList) r53.mRegisteredReceivers.get(r58.asBinder());
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02cf, code lost:
    
        if (r1 != null) goto L452;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02d1, code lost:
    
        r14 = r3;
        r13 = 0;
        r12 = r55;
        r10 = new com.android.server.am.ReceiverList(r53, r15, r9, r10, r15, r58);
        r1 = r10.app;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x02e8, code lost:
    
        if (r1 == null) goto L503;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02ea, code lost:
    
        r1 = r1.mReceivers.numberOfReceivers();
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02f0, code lost:
    
        if (r1 < 1000) goto L443;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x02f8, code lost:
    
        if (android.os.Process.myPid() != r10.pid) goto L441;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x02fa, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x02fb, code lost:
    
        if (r5 >= r1) goto L525;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x02fd, code lost:
    
        android.util.Slog.d("ActivityManager", "receiver list #" + r5 + " " + r10.app.mReceivers.getReceiverAt(r5));
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x034f, code lost:
    
        throw new java.lang.IllegalStateException("Too many receivers, total of " + r1 + ", registered for pid: " + r10.pid + ", callerPackage: " + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0350, code lost:
    
        r10.app.mReceivers.addReceiver(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0362, code lost:
    
        r53.mRegisteredReceivers.put(r58.asBinder(), r10);
        r1 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0381, code lost:
    
        r4 = r12;
        r5 = r13;
        r6 = r14;
        r2 = new com.android.server.am.BroadcastFilter(r14, r1, r55, r56, r57, r60, r10, r15, r18, r19, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x03a2, code lost:
    
        if (r1.containsFilter(r6) == false) goto L462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x03a4, code lost:
    
        android.util.Slog.w("ActivityManager", "Receiver with filter " + r6 + " already registered for pid " + r1.pid + ", callerPackage is " + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x03ea, code lost:
    
        if (r0 == null) goto L478;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x03ec, code lost:
    
        r1 = new java.util.ArrayList();
        r1.add(r2);
        r2 = r0.size();
        r14 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x03f9, code lost:
    
        if (r5 >= r2) goto L526;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x03fb, code lost:
    
        r4 = (com.android.server.am.ActivityManagerService.StickyBroadcast) r0.get(r5);
        r6 = ((com.android.server.am.ActivityManagerService.StickyBroadcast) r0.get(r5)).originalCallingUid;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0409, code lost:
    
        if (r14 != null) goto L528;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x040b, code lost:
    
        if (r21 != false) goto L475;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x040d, code lost:
    
        if (r6 == r10) goto L475;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0413, code lost:
    
        if (android.app.ActivityManager.canAccessUnexportedComponents(r6) == false) goto L529;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x0418, code lost:
    
        r7 = broadcastQueueForIntent(r4.intent);
        r7.enqueueBroadcastLocked(new com.android.server.am.BroadcastRecord(r7, r4.intent, null, null, null, -1, -1, false, null, null, null, null, -1, android.app.BroadcastOptions.makeWithDeferUntilActive(r4.deferUntilActive), r1, null, null, 0, null, null, false, true, true, -1, r6, android.app.BackgroundStartPrivileges.NONE, false, null, r4.originalCallingAppProcessState));
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0415, code lost:
    
        r14 = r4.intent;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x046d, code lost:
    
        r22 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x046f, code lost:
    
        monitor-exit(r53);
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0470, code lost:
    
        resetPriorityAfterLockedSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0473, code lost:
    
        return r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x03cd, code lost:
    
        r1.add(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x03d4, code lost:
    
        if (r2.debugCheck() != false) goto L465;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03d6, code lost:
    
        android.util.Slog.w("ActivityManager", "==> For Dynamic broadcast");
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x03dd, code lost:
    
        r53.mReceiverResolver.addFilter(getPackageManagerInternal().snapshot(), r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0358, code lost:
    
        r58.asBinder().linkToDeath(r10, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0360, code lost:
    
        r10.linkedToDeath = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0371, code lost:
    
        return r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x0372, code lost:
    
        r14 = r3;
        r13 = 0;
        r12 = r55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0377, code lost:
    
        if (r1.uid != r10) goto L486;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x037b, code lost:
    
        if (r1.pid != r9) goto L484;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x037f, code lost:
    
        if (r1.userId != r15) goto L481;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x04a1, code lost:
    
        throw new java.lang.IllegalArgumentException("Receiver requested to register for user " + r15 + " was previously registered for user " + r1.userId + " callerPackage is " + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04cb, code lost:
    
        throw new java.lang.IllegalArgumentException("Receiver requested to register for pid " + r9 + " was previously registered for pid " + r1.pid + " callerPackage is " + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x04f6, code lost:
    
        throw new java.lang.IllegalArgumentException("Receiver requested to register for uid " + r10 + " was previously registered for uid " + r1.uid + " callerPackage is " + r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x04fa, code lost:
    
        monitor-exit(r53);
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x04fb, code lost:
    
        resetPriorityAfterLockedSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x04fe, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x04f7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0500, code lost:
    
        resetPriorityAfterLockedSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0503, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x027e, code lost:
    
        r22 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x026f, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0231, code lost:
    
        r21 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x01fe, code lost:
    
        if (r9 == false) goto L382;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0200, code lost:
    
        if (r5 == false) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0219, code lost:
    
        throw new java.lang.SecurityException(r55 + ": One of RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED should be specified when a receiver isn't being registered exclusively for system broadcasts");
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x021a, code lost:
    
        if (r9 != false) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x021e, code lost:
    
        if ((r1 & 4) != 0) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0223, code lost:
    
        if ((r1 & 4) == 0) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0105, code lost:
    
        r3.setPriority(1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cc A[Catch: all -> 0x0504, TryCatch #2 {all -> 0x0504, blocks: (B:7:0x001c, B:9:0x002d, B:10:0x0046, B:15:0x004d, B:17:0x0055, B:19:0x005f, B:22:0x0068, B:23:0x0086, B:24:0x0087, B:26:0x00bc, B:33:0x00cc, B:35:0x00d3, B:37:0x00df, B:39:0x00e7, B:41:0x00ef, B:43:0x00f7, B:45:0x0100, B:49:0x0105, B:56:0x0108, B:58:0x010e, B:59:0x011d, B:60:0x012d, B:62:0x0133, B:64:0x013e, B:66:0x014a, B:69:0x0154, B:70:0x015c, B:80:0x0169, B:86:0x0174, B:90:0x0182, B:92:0x018c, B:94:0x0196, B:97:0x019d, B:98:0x01b7, B:99:0x01b8, B:100:0x01bf, B:101:0x01c0, B:104:0x01c7, B:106:0x01cb, B:109:0x01d0, B:110:0x01d7, B:111:0x01d8, B:113:0x01e3, B:119:0x01ef, B:120:0x01f6, B:125:0x0225, B:126:0x0227, B:247:0x0203, B:248:0x0219, B:250:0x021c, B:253:0x0221), top: B:6:0x001c, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.content.Intent registerReceiverWithFeature(android.app.IApplicationThread r54, java.lang.String r55, java.lang.String r56, java.lang.String r57, android.content.IIntentReceiver r58, android.content.IntentFilter r59, java.lang.String r60, int r61, int r62) {
        /*
            Method dump skipped, instructions count: 1290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.registerReceiverWithFeature(android.app.IApplicationThread, java.lang.String, java.lang.String, java.lang.String, android.content.IIntentReceiver, android.content.IntentFilter, java.lang.String, int, int):android.content.Intent");
    }

    public void unregisterReceiver(IIntentReceiver iIntentReceiver) {
        boolean z;
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    ReceiverList receiverList = (ReceiverList) this.mRegisteredReceivers.get(iIntentReceiver.asBinder());
                    if (receiverList != null) {
                        BroadcastRecord broadcastRecord = receiverList.curBroadcast;
                        z = broadcastRecord != null && broadcastRecord.queue.finishReceiverLocked(receiverList.app, broadcastRecord.resultCode, broadcastRecord.resultData, broadcastRecord.resultExtras, broadcastRecord.resultAbort, false);
                        ProcessRecord processRecord = receiverList.app;
                        if (processRecord != null) {
                            processRecord.mReceivers.removeReceiver(receiverList);
                        }
                        removeReceiverLocked(receiverList);
                        if (receiverList.linkedToDeath) {
                            receiverList.linkedToDeath = false;
                            receiverList.receiver.asBinder().unlinkToDeath(receiverList, 0);
                        }
                    } else {
                        z = false;
                    }
                    if (!z) {
                        resetPriorityAfterLockedSection();
                    } else {
                        trimApplicationsLocked(false, 2);
                        resetPriorityAfterLockedSection();
                    }
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void removeReceiverLocked(ReceiverList receiverList) {
        this.mRegisteredReceivers.remove(receiverList.receiver.asBinder());
        for (int size = receiverList.size() - 1; size >= 0; size--) {
            this.mReceiverResolver.removeFilter((BroadcastFilter) receiverList.get(size));
        }
    }

    public final void sendPackageBroadcastLocked(int i, String[] strArr, int i2) {
        this.mProcessList.sendPackageBroadcastLocked(i, strArr, i2);
    }

    public final List collectReceiverComponents(Intent intent, String str, int i, int[] iArr, int[] iArr2) {
        List list = null;
        boolean z = false;
        HashSet hashSet = null;
        for (int i2 : iArr) {
            if (i != 2000 || !this.mUserController.hasUserRestriction("no_debugging_features", i2)) {
                List queryIntentReceivers = this.mPackageManagerInt.queryIntentReceivers(intent, str, 268436480, i, i2, true);
                if (i2 != 0 && queryIntentReceivers != null) {
                    int i3 = 0;
                    while (i3 < queryIntentReceivers.size()) {
                        if ((((ResolveInfo) queryIntentReceivers.get(i3)).activityInfo.flags & 536870912) != 0) {
                            queryIntentReceivers.remove(i3);
                            i3--;
                        }
                        i3++;
                    }
                }
                if (queryIntentReceivers != null) {
                    int size = queryIntentReceivers.size() - 1;
                    while (size >= 0) {
                        int i4 = size;
                        List list2 = queryIntentReceivers;
                        ComponentAliasResolver.Resolution resolveReceiver = this.mComponentAliasResolver.resolveReceiver(intent, (ResolveInfo) queryIntentReceivers.get(size), str, 268436480, i2, i, true);
                        if (resolveReceiver == null) {
                            list2.remove(i4);
                        } else if (resolveReceiver.isAlias()) {
                            list2.set(i4, (ResolveInfo) resolveReceiver.getTarget());
                        }
                        size = i4 - 1;
                        queryIntentReceivers = list2;
                    }
                }
                List list3 = queryIntentReceivers;
                List list4 = (list3 == null || list3.size() != 0) ? list3 : null;
                if (list == null) {
                    list = list4;
                } else if (list4 != null) {
                    if (!z) {
                        for (int i5 = 0; i5 < list.size(); i5++) {
                            ResolveInfo resolveInfo = (ResolveInfo) list.get(i5);
                            if ((resolveInfo.activityInfo.flags & 1073741824) != 0) {
                                ActivityInfo activityInfo = resolveInfo.activityInfo;
                                ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
                                if (hashSet == null) {
                                    hashSet = new HashSet();
                                }
                                hashSet.add(componentName);
                            }
                        }
                        z = true;
                    }
                    for (int i6 = 0; i6 < list4.size(); i6++) {
                        ResolveInfo resolveInfo2 = (ResolveInfo) list4.get(i6);
                        if ((resolveInfo2.activityInfo.flags & 1073741824) != 0) {
                            ActivityInfo activityInfo2 = resolveInfo2.activityInfo;
                            ComponentName componentName2 = new ComponentName(activityInfo2.packageName, activityInfo2.name);
                            if (hashSet == null) {
                                hashSet = new HashSet();
                            }
                            if (!hashSet.contains(componentName2)) {
                                hashSet.add(componentName2);
                                list.add(resolveInfo2);
                            }
                        } else {
                            list.add(resolveInfo2);
                        }
                    }
                }
            }
        }
        if (list != null && iArr2 != null) {
            for (int size2 = list.size() - 1; size2 >= 0; size2--) {
                int appId = UserHandle.getAppId(((ResolveInfo) list.get(size2)).activityInfo.applicationInfo.uid);
                if (appId >= 10000 && Arrays.binarySearch(iArr2, appId) < 0) {
                    list.remove(size2);
                }
            }
        }
        return list;
    }

    public final void checkBroadcastFromSystem(Intent intent, ProcessRecord processRecord, String str, int i, boolean z, List list) {
        if ((intent.getFlags() & 4194304) != 0) {
            return;
        }
        String action = intent.getAction();
        if (!CoreRune.SAFE_DEBUG && Build.IS_USERDEBUG && DEBUG_LEVEL_LOW) {
            return;
        }
        if ((!z && action != null && this.mExt.isRelaxedBroadcastAction(action)) || z || "android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(action) || "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS".equals(action) || "android.intent.action.MEDIA_BUTTON".equals(action) || "android.intent.action.MEDIA_SCANNER_SCAN_FILE".equals(action) || "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS".equals(action) || "android.intent.action.MASTER_CLEAR".equals(action) || "android.intent.action.FACTORY_RESET".equals(action) || "android.appwidget.action.APPWIDGET_CONFIGURE".equals(action) || "android.appwidget.action.APPWIDGET_UPDATE".equals(action) || "com.android.omadm.service.CONFIGURATION_UPDATE".equals(action) || "android.text.style.SUGGESTION_PICKED".equals(action) || "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION".equals(action) || "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION".equals(action)) {
            return;
        }
        if (intent.getPackage() != null || intent.getComponent() != null) {
            if (list == null || list.size() == 0) {
                return;
            }
            boolean z2 = true;
            for (int size = list.size() - 1; size >= 0; size--) {
                Object obj = list.get(size);
                if (obj instanceof ResolveInfo) {
                    ActivityInfo activityInfo = ((ResolveInfo) obj).activityInfo;
                    if (activityInfo.exported && activityInfo.permission == null) {
                        z2 = false;
                        break;
                    }
                } else {
                    BroadcastFilter broadcastFilter = (BroadcastFilter) obj;
                    if (broadcastFilter.exported && broadcastFilter.requiredPermission == null) {
                        z2 = false;
                        break;
                    }
                }
            }
            if (z2) {
                return;
            }
        }
        if (processRecord != null) {
            Log.wtf("ActivityManager", "Sending non-protected broadcast " + action + " from system " + processRecord.toShortString() + " pkg " + str, new Throwable());
            return;
        }
        Log.wtf("ActivityManager", "Sending non-protected broadcast " + action + " from system uid " + UserHandle.formatUid(i) + " pkg " + str, new Throwable());
    }

    public void enforceBroadcastOptionPermissionsInternal(Bundle bundle, int i) {
        enforceBroadcastOptionPermissionsInternal(BroadcastOptions.fromBundleNullable(bundle), i);
    }

    public void enforceBroadcastOptionPermissionsInternal(BroadcastOptions broadcastOptions, int i) {
        if (broadcastOptions == null || i == 1000) {
            return;
        }
        if (broadcastOptions.isAlarmBroadcast()) {
            throw new SecurityException("Non-system callers may not flag broadcasts as alarm");
        }
        if (broadcastOptions.isInteractive()) {
            enforceCallingPermission("android.permission.BROADCAST_OPTION_INTERACTIVE", "setInteractive");
        }
    }

    public final int broadcastIntentLocked(ProcessRecord processRecord, String str, String str2, Intent intent, String str3, IIntentReceiver iIntentReceiver, int i, String str4, Bundle bundle, String[] strArr, String[] strArr2, String[] strArr3, int i2, Bundle bundle2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7) {
        return broadcastIntentLocked(processRecord, str, str2, intent, str3, null, iIntentReceiver, i, str4, bundle, strArr, strArr2, strArr3, i2, bundle2, z, z2, i3, i4, i5, i6, i7, BackgroundStartPrivileges.NONE, null, null, false);
    }

    public final int broadcastIntentLocked(ProcessRecord processRecord, String str, String str2, Intent intent, String str3, ProcessRecord processRecord2, IIntentReceiver iIntentReceiver, int i, String str4, Bundle bundle, String[] strArr, String[] strArr2, String[] strArr3, int i2, Bundle bundle2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, BackgroundStartPrivileges backgroundStartPrivileges, int[] iArr, BiFunction biFunction) {
        return broadcastIntentLocked(processRecord, str, str2, intent, str3, processRecord2, iIntentReceiver, i, str4, bundle, strArr, strArr2, strArr3, i2, bundle2, z, z2, i3, i4, i5, i6, i7, backgroundStartPrivileges, iArr, biFunction, false);
    }

    public final int broadcastIntentLocked(ProcessRecord processRecord, String str, String str2, Intent intent, String str3, ProcessRecord processRecord2, IIntentReceiver iIntentReceiver, int i, String str4, Bundle bundle, String[] strArr, String[] strArr2, String[] strArr3, int i2, Bundle bundle2, boolean z, boolean z2, int i3, int i4, int i5, int i6, int i7, BackgroundStartPrivileges backgroundStartPrivileges, int[] iArr, BiFunction biFunction, boolean z3) {
        int traceBegin = BroadcastQueue.traceBegin("broadcastIntentLockedTraced");
        int broadcastIntentLockedTraced = broadcastIntentLockedTraced(processRecord, str, str2, intent, str3, processRecord2, iIntentReceiver, i, str4, bundle, strArr, strArr2, strArr3, i2, BroadcastOptions.fromBundleNullable(bundle2), z, z2, i3, i4, i5, i6, i7, backgroundStartPrivileges, iArr, biFunction, z3);
        BroadcastQueue.traceEnd(traceBegin);
        return broadcastIntentLockedTraced;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x071f, code lost:
    
        if (r6.equals("android.intent.action.PACKAGES_SUSPENDED") == false) goto L948;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:123:0x0513. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:439:0x0743. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x09ae  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x09e4  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0b38  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0b53  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0b6d  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0bd2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0c32  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0c3c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:239:0x0d10  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0dcb  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0dd3  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0e08 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0e0c  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0e14  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0e2e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0e22 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0e3d  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0e54  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0e66  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0f2c  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0e37  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0c37  */
    /* JADX WARN: Removed duplicated region for block: B:357:0x0bc6  */
    /* JADX WARN: Removed duplicated region for block: B:358:0x0b64  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0b3f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0b2c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:609:0x09d3  */
    /* JADX WARN: Removed duplicated region for block: B:623:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0319  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x032f  */
    /* JADX WARN: Type inference failed for: r1v81, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v131 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v43, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int broadcastIntentLockedTraced(com.android.server.am.ProcessRecord r54, java.lang.String r55, java.lang.String r56, android.content.Intent r57, java.lang.String r58, com.android.server.am.ProcessRecord r59, android.content.IIntentReceiver r60, int r61, java.lang.String r62, android.os.Bundle r63, java.lang.String[] r64, java.lang.String[] r65, java.lang.String[] r66, int r67, android.app.BroadcastOptions r68, boolean r69, boolean r70, int r71, int r72, int r73, int r74, int r75, android.app.BackgroundStartPrivileges r76, int[] r77, java.util.function.BiFunction r78, boolean r79) {
        /*
            Method dump skipped, instructions count: 4142
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.broadcastIntentLockedTraced(com.android.server.am.ProcessRecord, java.lang.String, java.lang.String, android.content.Intent, java.lang.String, com.android.server.am.ProcessRecord, android.content.IIntentReceiver, int, java.lang.String, android.os.Bundle, java.lang.String[], java.lang.String[], java.lang.String[], int, android.app.BroadcastOptions, boolean, boolean, int, int, int, int, int, android.app.BackgroundStartPrivileges, int[], java.util.function.BiFunction, boolean):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void scheduleCanceledResultTo(com.android.server.am.ProcessRecord r17, android.content.IIntentReceiver r18, android.content.Intent r19, int r20, android.app.BroadcastOptions r21, int r22, java.lang.String r23) {
        /*
            r16 = this;
            r1 = r17
            if (r18 != 0) goto L5
            return
        L5:
            r0 = 0
            if (r1 == 0) goto Ld
            android.app.IApplicationThread r2 = r17.getOnewayThread()
            goto Le
        Ld:
            r2 = r0
        Le:
            if (r2 == 0) goto L72
            r15 = 1
            if (r21 == 0) goto L1d
            boolean r3 = r21.isShareIdentityEnabled()     // Catch: android.os.RemoteException -> L1b
            if (r3 == 0) goto L1d
            r3 = r15
            goto L1e
        L1b:
            r0 = move-exception
            goto L41
        L1d:
            r3 = 0
        L1e:
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            r10 = 1
            com.android.server.am.ProcessStateRecord r4 = r1.mState     // Catch: android.os.RemoteException -> L1b
            int r12 = r4.getReportedProcState()     // Catch: android.os.RemoteException -> L1b
            if (r3 == 0) goto L2f
            r13 = r22
            goto L31
        L2f:
            r4 = -1
            r13 = r4
        L31:
            if (r3 == 0) goto L36
            r14 = r23
            goto L37
        L36:
            r14 = r0
        L37:
            r3 = r18
            r4 = r19
            r11 = r20
            r2.scheduleRegisteredReceiver(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)     // Catch: android.os.RemoteException -> L1b
            goto L72
        L41:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Failed to schedule result of "
            r2.append(r3)
            r3 = r19
            r2.append(r3)
            java.lang.String r3 = " via "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r3 = ": "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r2 = 13
            r3 = 26
            java.lang.String r4 = "Can't schedule resultTo"
            r1.killLocked(r4, r2, r3, r15)
            java.lang.String r1 = "ActivityManager"
            android.util.Slog.d(r1, r0)
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.scheduleCanceledResultTo(com.android.server.am.ProcessRecord, android.content.IIntentReceiver, android.content.Intent, int, android.app.BroadcastOptions, int, java.lang.String):void");
    }

    public final int getRealProcessStateLocked(ProcessRecord processRecord, int i) {
        if (processRecord == null) {
            synchronized (this.mPidsSelfLocked) {
                processRecord = this.mPidsSelfLocked.get(i);
            }
        }
        if (processRecord == null || processRecord.getThread() == null || processRecord.isKilled()) {
            return 20;
        }
        return processRecord.mState.getCurProcState();
    }

    public ArrayList getStickyBroadcasts(String str, int i) {
        ArrayMap arrayMap = (ArrayMap) this.mStickyBroadcasts.get(i);
        if (arrayMap == null) {
            return null;
        }
        return (ArrayList) arrayMap.get(str);
    }

    public final int getUidFromIntent(Intent intent) {
        if (intent == null) {
            return -1;
        }
        Bundle extras = intent.getExtras();
        if (intent.hasExtra("android.intent.extra.UID")) {
            return extras.getInt("android.intent.extra.UID");
        }
        return -1;
    }

    public final void rotateBroadcastStatsIfNeededLocked() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        BroadcastStats broadcastStats = this.mCurBroadcastStats;
        if (broadcastStats == null || broadcastStats.mStartRealtime + BackupManagerConstants.DEFAULT_FULL_BACKUP_INTERVAL_MILLISECONDS < elapsedRealtime) {
            this.mLastBroadcastStats = broadcastStats;
            if (broadcastStats != null) {
                broadcastStats.mEndRealtime = SystemClock.elapsedRealtime();
                this.mLastBroadcastStats.mEndUptime = SystemClock.uptimeMillis();
            }
            this.mCurBroadcastStats = new BroadcastStats();
        }
    }

    public final void addBroadcastStatLocked(String str, String str2, int i, int i2, long j) {
        rotateBroadcastStatsIfNeededLocked();
        this.mCurBroadcastStats.addBroadcast(str, str2, i, i2, j);
    }

    public final void addBackgroundCheckViolationLocked(String str, String str2) {
        rotateBroadcastStatsIfNeededLocked();
        this.mCurBroadcastStats.addBackgroundCheckViolation(str, str2);
    }

    public final void notifyBroadcastFinishedLocked(BroadcastRecord broadcastRecord) {
        ProcessRecord processRecord = broadcastRecord.callerApp;
        ApplicationInfo applicationInfo = processRecord != null ? processRecord.info : null;
        String str = applicationInfo != null ? applicationInfo.packageName : broadcastRecord.callerPackage;
        if (str != null) {
            this.mHandler.obtainMessage(74, broadcastRecord.callingUid, 0, str).sendToTarget();
        }
    }

    public final Intent verifyBroadcastLocked(Intent intent) {
        int callingUid;
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        int flags = intent.getFlags();
        if (!this.mProcessesReady && (67108864 & flags) == 0 && (1073741824 & flags) == 0) {
            Slog.e("ActivityManager", "Attempt to launch receivers of broadcast intent " + intent + " before boot completion");
            throw new IllegalStateException("Cannot broadcast before boot completed");
        }
        if ((33554432 & flags) != 0) {
            throw new IllegalArgumentException("Can't use FLAG_RECEIVER_BOOT_UPGRADE here");
        }
        if ((flags & 4194304) != 0 && (callingUid = Binder.getCallingUid()) != 0 && callingUid != 2000) {
            Slog.w("ActivityManager", "Removing FLAG_RECEIVER_FROM_SHELL because caller is UID " + Binder.getCallingUid());
            intent.removeFlags(4194304);
        }
        return intent;
    }

    public final int broadcastIntent(IApplicationThread iApplicationThread, Intent intent, String str, IIntentReceiver iIntentReceiver, int i, String str2, Bundle bundle, String[] strArr, int i2, Bundle bundle2, boolean z, boolean z2, int i3) {
        return broadcastIntentWithFeature(iApplicationThread, null, intent, str, iIntentReceiver, i, str2, bundle, strArr, null, null, i2, bundle2, z, z2, i3);
    }

    public final int broadcastIntentWithFeature(IApplicationThread iApplicationThread, String str, Intent intent, String str2, IIntentReceiver iIntentReceiver, int i, String str3, Bundle bundle, String[] strArr, String[] strArr2, String[] strArr3, int i2, Bundle bundle2, boolean z, boolean z2, int i3) {
        String str4;
        int broadcastIntentLocked;
        enforceNotIsolatedCaller("broadcastIntent");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                Intent verifyBroadcastLocked = verifyBroadcastLocked(intent);
                ProcessRecord recordForAppLOSP = getRecordForAppLOSP(iApplicationThread);
                int callingPid = Binder.getCallingPid();
                int callingUid = Binder.getCallingUid();
                enforceBroadcastOptionPermissionsInternal(bundle2, callingUid);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                if (recordForAppLOSP != null) {
                    try {
                        str4 = recordForAppLOSP.info.packageName;
                    } catch (Throwable th) {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                        throw th;
                    }
                } else {
                    str4 = null;
                }
                broadcastIntentLocked = broadcastIntentLocked(recordForAppLOSP, str4, str, verifyBroadcastLocked, str2, recordForAppLOSP, iIntentReceiver, i, str3, bundle, strArr, strArr2, strArr3, i2, bundle2, z, z2, callingPid, callingUid, callingUid, callingPid, i3, BackgroundStartPrivileges.NONE, null, null);
                Binder.restoreCallingIdentity(clearCallingIdentity);
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
        return broadcastIntentLocked;
    }

    public int broadcastIntentInPackage(String str, String str2, int i, int i2, int i3, Intent intent, String str3, ProcessRecord processRecord, IIntentReceiver iIntentReceiver, int i4, String str4, Bundle bundle, String str5, Bundle bundle2, boolean z, boolean z2, int i5, BackgroundStartPrivileges backgroundStartPrivileges, int[] iArr) {
        return broadcastIntentInPackage(null, str, str2, i, i2, i3, intent, str3, processRecord, iIntentReceiver, i4, str4, bundle, str5, bundle2, z, z2, i5, backgroundStartPrivileges, iArr);
    }

    public int broadcastIntentInPackage(IApplicationThread iApplicationThread, String str, String str2, int i, int i2, int i3, Intent intent, String str3, ProcessRecord processRecord, IIntentReceiver iIntentReceiver, int i4, String str4, Bundle bundle, String str5, Bundle bundle2, boolean z, boolean z2, int i5, BackgroundStartPrivileges backgroundStartPrivileges, int[] iArr) {
        int broadcastIntentLocked;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                Intent verifyBroadcastLocked = verifyBroadcastLocked(intent);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    broadcastIntentLocked = broadcastIntentLocked(getRecordForAppLOSP(iApplicationThread), str, str2, verifyBroadcastLocked, str3, processRecord, iIntentReceiver, i4, str4, bundle, str5 == null ? null : new String[]{str5}, null, null, -1, bundle2, z, z2, -1, i, i2, i3, i5, backgroundStartPrivileges, iArr, null, iApplicationThread != null);
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return broadcastIntentLocked;
    }

    public final void unbroadcastIntent(IApplicationThread iApplicationThread, Intent intent, int i) {
        if (intent != null && intent.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        int handleIncomingUser = this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), i, true, 0, "removeStickyBroadcast", null);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (checkCallingPermission("android.permission.BROADCAST_STICKY") != 0) {
                    String str = "Permission Denial: unbroadcastIntent() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.BROADCAST_STICKY";
                    Slog.w("ActivityManager", str);
                    throw new SecurityException(str);
                }
                ArrayMap arrayMap = (ArrayMap) this.mStickyBroadcasts.get(handleIncomingUser);
                if (arrayMap != null) {
                    ArrayList arrayList = (ArrayList) arrayMap.get(intent.getAction());
                    if (arrayList != null) {
                        int size = arrayList.size();
                        int i2 = 0;
                        while (true) {
                            if (i2 >= size) {
                                break;
                            }
                            if (intent.filterEquals(((StickyBroadcast) arrayList.get(i2)).intent)) {
                                arrayList.remove(i2);
                                break;
                            }
                            i2++;
                        }
                        if (arrayList.size() <= 0) {
                            arrayMap.remove(intent.getAction());
                        }
                    }
                    if (arrayMap.size() <= 0) {
                        this.mStickyBroadcasts.remove(handleIncomingUser);
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void backgroundServicesFinishedLocked(int i) {
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            broadcastQueue.backgroundServicesFinishedLocked(i);
        }
    }

    public void finishReceiver(IBinder iBinder, int i, String str, Bundle bundle, boolean z, int i2) {
        if (bundle != null && bundle.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Bundle");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    ProcessRecord recordForAppLOSP = getRecordForAppLOSP(iBinder);
                    if (recordForAppLOSP == null) {
                        Slog.w("ActivityManager", "finishReceiver: no app for " + iBinder);
                        resetPriorityAfterLockedSection();
                        return;
                    }
                    broadcastQueueForFlags(i2).finishReceiverLocked(recordForAppLOSP, i, str, bundle, z, true);
                    trimApplicationsLocked(false, 2);
                    resetPriorityAfterLockedSection();
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00c7 A[Catch: all -> 0x00ab, TRY_ENTER, TryCatch #4 {all -> 0x00ab, blocks: (B:19:0x005e, B:23:0x0064, B:24:0x0078, B:27:0x007d, B:29:0x0087, B:30:0x009d, B:34:0x00b1, B:37:0x00bd, B:38:0x00c2, B:42:0x00e8, B:46:0x00f7, B:49:0x00fd, B:51:0x0101, B:52:0x0129, B:53:0x016e, B:54:0x016f, B:61:0x017d, B:64:0x0184, B:65:0x01c5, B:66:0x01c6, B:68:0x01cc, B:73:0x01d8, B:79:0x01ed, B:81:0x01f1, B:82:0x020b, B:85:0x0210, B:87:0x021d, B:89:0x0240, B:92:0x025b, B:95:0x0268, B:96:0x0275, B:104:0x02eb, B:106:0x02f2, B:107:0x0302, B:109:0x0307, B:110:0x030a, B:125:0x0314, B:126:0x0317, B:131:0x0224, B:133:0x022c, B:134:0x0233, B:135:0x01e6, B:140:0x00c7, B:142:0x00cd, B:143:0x00e3), top: B:18:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01d8 A[Catch: all -> 0x00ab, TryCatch #4 {all -> 0x00ab, blocks: (B:19:0x005e, B:23:0x0064, B:24:0x0078, B:27:0x007d, B:29:0x0087, B:30:0x009d, B:34:0x00b1, B:37:0x00bd, B:38:0x00c2, B:42:0x00e8, B:46:0x00f7, B:49:0x00fd, B:51:0x0101, B:52:0x0129, B:53:0x016e, B:54:0x016f, B:61:0x017d, B:64:0x0184, B:65:0x01c5, B:66:0x01c6, B:68:0x01cc, B:73:0x01d8, B:79:0x01ed, B:81:0x01f1, B:82:0x020b, B:85:0x0210, B:87:0x021d, B:89:0x0240, B:92:0x025b, B:95:0x0268, B:96:0x0275, B:104:0x02eb, B:106:0x02f2, B:107:0x0302, B:109:0x0307, B:110:0x030a, B:125:0x0314, B:126:0x0317, B:131:0x0224, B:133:0x022c, B:134:0x0233, B:135:0x01e6, B:140:0x00c7, B:142:0x00cd, B:143:0x00e3), top: B:18:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f1 A[Catch: all -> 0x00ab, TryCatch #4 {all -> 0x00ab, blocks: (B:19:0x005e, B:23:0x0064, B:24:0x0078, B:27:0x007d, B:29:0x0087, B:30:0x009d, B:34:0x00b1, B:37:0x00bd, B:38:0x00c2, B:42:0x00e8, B:46:0x00f7, B:49:0x00fd, B:51:0x0101, B:52:0x0129, B:53:0x016e, B:54:0x016f, B:61:0x017d, B:64:0x0184, B:65:0x01c5, B:66:0x01c6, B:68:0x01cc, B:73:0x01d8, B:79:0x01ed, B:81:0x01f1, B:82:0x020b, B:85:0x0210, B:87:0x021d, B:89:0x0240, B:92:0x025b, B:95:0x0268, B:96:0x0275, B:104:0x02eb, B:106:0x02f2, B:107:0x0302, B:109:0x0307, B:110:0x030a, B:125:0x0314, B:126:0x0317, B:131:0x0224, B:133:0x022c, B:134:0x0233, B:135:0x01e6, B:140:0x00c7, B:142:0x00cd, B:143:0x00e3), top: B:18:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0210 A[Catch: all -> 0x00ab, TRY_ENTER, TryCatch #4 {all -> 0x00ab, blocks: (B:19:0x005e, B:23:0x0064, B:24:0x0078, B:27:0x007d, B:29:0x0087, B:30:0x009d, B:34:0x00b1, B:37:0x00bd, B:38:0x00c2, B:42:0x00e8, B:46:0x00f7, B:49:0x00fd, B:51:0x0101, B:52:0x0129, B:53:0x016e, B:54:0x016f, B:61:0x017d, B:64:0x0184, B:65:0x01c5, B:66:0x01c6, B:68:0x01cc, B:73:0x01d8, B:79:0x01ed, B:81:0x01f1, B:82:0x020b, B:85:0x0210, B:87:0x021d, B:89:0x0240, B:92:0x025b, B:95:0x0268, B:96:0x0275, B:104:0x02eb, B:106:0x02f2, B:107:0x0302, B:109:0x0307, B:110:0x030a, B:125:0x0314, B:126:0x0317, B:131:0x0224, B:133:0x022c, B:134:0x0233, B:135:0x01e6, B:140:0x00c7, B:142:0x00cd, B:143:0x00e3), top: B:18:0x005e }] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v21 */
    /* JADX WARN: Type inference failed for: r6v22 */
    /* JADX WARN: Type inference failed for: r6v7, types: [com.android.server.am.ActivityManagerGlobalLock] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean startInstrumentation(android.content.ComponentName r27, java.lang.String r28, int r29, android.os.Bundle r30, android.app.IInstrumentationWatcher r31, android.app.IUiAutomationConnection r32, int r33, java.lang.String r34) {
        /*
            Method dump skipped, instructions count: 799
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ActivityManagerService.startInstrumentation(android.content.ComponentName, java.lang.String, int, android.os.Bundle, android.app.IInstrumentationWatcher, android.app.IUiAutomationConnection, int, java.lang.String):boolean");
    }

    public final boolean hasActiveInstrumentationLocked(int i) {
        boolean z = false;
        if (i == 0) {
            return false;
        }
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord processRecord = this.mPidsSelfLocked.get(i);
            if (processRecord != null && processRecord.getActiveInstrumentation() != null) {
                z = true;
            }
        }
        return z;
    }

    public final boolean startInstrumentationOfSdkSandbox(ComponentName componentName, String str, Bundle bundle, IInstrumentationWatcher iInstrumentationWatcher, IUiAutomationConnection iUiAutomationConnection, int i, String str2, InstrumentationInfo instrumentationInfo, ApplicationInfo applicationInfo, boolean z, boolean z2, boolean z3) {
        if (z) {
            reportStartInstrumentationFailureLocked(iInstrumentationWatcher, componentName, "Instrumenting sdk sandbox with --no-restart flag is not supported");
            return false;
        }
        try {
            PackageManager packageManager = this.mContext.getPackageManager();
            ApplicationInfo applicationInfoAsUser = packageManager.getApplicationInfoAsUser(packageManager.getSdkSandboxPackageName(), 0, i);
            SdkSandboxManagerLocal sdkSandboxManagerLocal = (SdkSandboxManagerLocal) LocalManagerRegistry.getManager(SdkSandboxManagerLocal.class);
            if (sdkSandboxManagerLocal == null) {
                reportStartInstrumentationFailureLocked(iInstrumentationWatcher, componentName, "Can't locate SdkSandboxManagerLocal");
                return false;
            }
            String sdkSandboxProcessNameForInstrumentation = sdkSandboxManagerLocal.getSdkSandboxProcessNameForInstrumentation(applicationInfo);
            ActiveInstrumentation activeInstrumentation = new ActiveInstrumentation(this);
            activeInstrumentation.mClass = componentName;
            activeInstrumentation.mTargetProcesses = new String[]{sdkSandboxProcessNameForInstrumentation};
            activeInstrumentation.mTargetInfo = applicationInfoAsUser;
            activeInstrumentation.mProfileFile = str;
            activeInstrumentation.mArguments = bundle;
            activeInstrumentation.mWatcher = iInstrumentationWatcher;
            activeInstrumentation.mUiAutomationConnection = iUiAutomationConnection;
            activeInstrumentation.mResultClass = componentName;
            activeInstrumentation.mHasBackgroundActivityStartsPermission = false;
            activeInstrumentation.mHasBackgroundForegroundServiceStartsPermission = false;
            activeInstrumentation.mNoRestart = false;
            int callingUid = Binder.getCallingUid();
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                sdkSandboxManagerLocal.notifyInstrumentationStarted(applicationInfo.packageName, applicationInfo.uid);
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                try {
                    synchronized (activityManagerGlobalLock) {
                        try {
                            int sdkSandboxUid = Process.toSdkSandboxUid(applicationInfo.uid);
                            forceStopPackageLocked(instrumentationInfo.targetPackage, -1, true, false, true, true, false, i, "start instr");
                            ProcessRecord addAppLocked = addAppLocked(applicationInfoAsUser, sdkSandboxProcessNameForInstrumentation, false, true, sdkSandboxUid, applicationInfo.packageName, z2, z3, str2, 0);
                            addAppLocked.setActiveInstrumentation(activeInstrumentation);
                            activeInstrumentation.mFinished = false;
                            activeInstrumentation.mSourceUid = callingUid;
                            activeInstrumentation.mRunningProcesses.add(addAppLocked);
                            if (!this.mActiveInstrumentation.contains(activeInstrumentation)) {
                                this.mActiveInstrumentation.add(activeInstrumentation);
                            }
                            addAppLocked.mProfile.addHostingComponentType(8);
                            resetPriorityAfterProcLockedSection();
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                            return true;
                        } catch (Throwable th) {
                            th = th;
                            resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th3;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            reportStartInstrumentationFailureLocked(iInstrumentationWatcher, componentName, "Can't find SdkSandbox package");
            return false;
        }
    }

    public final void instrumentWithoutRestart(ActiveInstrumentation activeInstrumentation, ApplicationInfo applicationInfo) {
        ProcessRecord processRecordLocked;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                processRecordLocked = getProcessRecordLocked(applicationInfo.processName, applicationInfo.uid);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        try {
            processRecordLocked.getThread().instrumentWithoutRestart(activeInstrumentation.mClass, activeInstrumentation.mArguments, activeInstrumentation.mWatcher, activeInstrumentation.mUiAutomationConnection, applicationInfo);
        } catch (RemoteException e) {
            Slog.i("ActivityManager", "RemoteException from instrumentWithoutRestart", e);
        }
    }

    public final boolean isCallerShell() {
        int callingUid = Binder.getCallingUid();
        return callingUid == 2000 || callingUid == 0;
    }

    public final void reportStartInstrumentationFailureLocked(IInstrumentationWatcher iInstrumentationWatcher, ComponentName componentName, String str) {
        Slog.w("ActivityManager", str);
        if (iInstrumentationWatcher != null) {
            Bundle bundle = new Bundle();
            bundle.putString("id", "ActivityManagerService");
            bundle.putString("Error", str);
            this.mInstrumentationReporter.reportStatus(iInstrumentationWatcher, componentName, -1, bundle);
        }
    }

    public void addInstrumentationResultsLocked(ProcessRecord processRecord, Bundle bundle) {
        ActiveInstrumentation activeInstrumentation = processRecord.getActiveInstrumentation();
        if (activeInstrumentation == null) {
            Slog.w("ActivityManager", "finishInstrumentation called on non-instrumented: " + processRecord);
            return;
        }
        if (activeInstrumentation.mFinished || bundle == null) {
            return;
        }
        Bundle bundle2 = activeInstrumentation.mCurResults;
        if (bundle2 == null) {
            activeInstrumentation.mCurResults = new Bundle(bundle);
        } else {
            bundle2.putAll(bundle);
        }
    }

    public void addInstrumentationResults(IApplicationThread iApplicationThread, Bundle bundle) {
        UserHandle.getCallingUserId();
        if (bundle != null && bundle.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord recordForAppLOSP = getRecordForAppLOSP(iApplicationThread);
                if (recordForAppLOSP == null) {
                    Slog.w("ActivityManager", "addInstrumentationResults: no app for " + iApplicationThread);
                    resetPriorityAfterLockedSection();
                    return;
                }
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    addInstrumentationResultsLocked(recordForAppLOSP, bundle);
                    resetPriorityAfterLockedSection();
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void finishInstrumentationLocked(ProcessRecord processRecord, int i, Bundle bundle) {
        try {
            Trace.traceBegin(64L, "finishInstrumentationLocked()");
            ActiveInstrumentation activeInstrumentation = processRecord.getActiveInstrumentation();
            if (activeInstrumentation == null) {
                Slog.w("ActivityManager", "finishInstrumentation called on non-instrumented: " + processRecord);
                return;
            }
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    if (!activeInstrumentation.mFinished) {
                        if (activeInstrumentation.mWatcher != null) {
                            Bundle bundle2 = activeInstrumentation.mCurResults;
                            if (bundle2 != null) {
                                if (bundle2 != null && bundle != null) {
                                    bundle2.putAll(bundle);
                                }
                                bundle = bundle2;
                            }
                            this.mInstrumentationReporter.reportFinished(activeInstrumentation.mWatcher, activeInstrumentation.mClass, i, bundle);
                        }
                        if (activeInstrumentation.mUiAutomationConnection != null) {
                            this.mAppOpsService.setMode(99, processRecord.uid, processRecord.info.packageName, 2);
                            this.mAppOpsService.setAppOpsServiceDelegate(null);
                            getPermissionManagerInternal().stopShellPermissionIdentityDelegation();
                            this.mHandler.obtainMessage(56, activeInstrumentation.mUiAutomationConnection).sendToTarget();
                        }
                        activeInstrumentation.mFinished = true;
                    }
                    activeInstrumentation.removeProcess(processRecord);
                    processRecord.setActiveInstrumentation(null);
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterProcLockedSection();
            processRecord.mProfile.clearHostingComponentType(8);
            if (processRecord.isSdkSandbox) {
                killUid(UserHandle.getAppId(processRecord.uid), UserHandle.getUserId(processRecord.uid), "finished instr");
                SdkSandboxManagerLocal sdkSandboxManagerLocal = (SdkSandboxManagerLocal) LocalManagerRegistry.getManager(SdkSandboxManagerLocal.class);
                if (sdkSandboxManagerLocal != null) {
                    sdkSandboxManagerLocal.notifyInstrumentationFinished(processRecord.sdkSandboxClientAppPackage, Process.getAppUidForSdkSandboxUid(processRecord.uid));
                }
            } else if (!activeInstrumentation.mNoRestart) {
                forceStopPackageLocked(processRecord.info.packageName, -1, false, false, true, true, false, processRecord.userId, "finished inst");
            }
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public void finishInstrumentation(IApplicationThread iApplicationThread, int i, Bundle bundle) {
        UserHandle.getCallingUserId();
        if (bundle != null && bundle.hasFileDescriptors()) {
            throw new IllegalArgumentException("File descriptors passed in Intent");
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord recordForAppLOSP = getRecordForAppLOSP(iApplicationThread);
                if (recordForAppLOSP == null) {
                    Slog.w("ActivityManager", "finishInstrumentation: no app for " + iApplicationThread);
                    resetPriorityAfterLockedSection();
                    return;
                }
                long clearCallingIdentity = Binder.clearCallingIdentity();
                finishInstrumentationLocked(recordForAppLOSP, i, bundle);
                Binder.restoreCallingIdentity(clearCallingIdentity);
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public ActivityTaskManager.RootTaskInfo getFocusedRootTaskInfo() {
        return this.mActivityTaskManager.getFocusedRootTaskInfo();
    }

    public Configuration getConfiguration() {
        return this.mActivityTaskManager.getConfiguration();
    }

    public void suppressResizeConfigChanges(boolean z) {
        this.mActivityTaskManager.suppressResizeConfigChanges(z);
    }

    public void updatePersistentConfiguration(Configuration configuration) {
        updatePersistentConfigurationWithAttribution(configuration, Settings.getPackageNameForUid(this.mContext, Binder.getCallingUid()), null);
    }

    public void updatePersistentConfigurationAndLocaleOverlays(Configuration configuration, String str, String str2, LocaleList localeList) {
        enforceCallingPermission("android.permission.CHANGE_CONFIGURATION", "updatePersistentConfiguration()");
        enforceWriteSettingsPermission("updatePersistentConfiguration()", str, str2);
        if (configuration == null) {
            throw new NullPointerException("Configuration must not be null");
        }
        if (!isDeviceProvisioned(this.mContext)) {
            updatePersistentConfigurationWithAttribution(configuration, str, str2);
        }
        updateLocaleOverlays(configuration, str, str2, Binder.getCallingPid(), localeList);
    }

    public void overlaysInstallComplete(Configuration configuration, String str, String str2, int i, int i2) {
        overlaysInstallComplete(configuration, str, str2, i, i2, null);
    }

    public void overlaysInstallComplete(Configuration configuration, String str, String str2, int i, int i2, Runnable runnable) {
        Slog.e("ActivityManager", "LocaleChange End: Time = " + System.currentTimeMillis());
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
        }
        Slog.d("ActivityManager", "overlaysInstallComplete() called with: configuration = [" + configuration + "], callingPackage = [" + str + "], callingAttributionTag = [" + str2 + "], timeoutRunnable = [" + runnable + "]");
        if (isDeviceProvisioned(this.mContext)) {
            updatePersistentConfigurationWithAttribution(configuration, str, str2, i, i2);
            return;
        }
        try {
            IShortcutService.Stub.asInterface(ServiceManager.getService("shortcut")).handleLocaleChanged(true);
        } catch (RemoteException e) {
            Log.e("ActivityManager", "Unable to start ShortcutService: " + e.getMessage());
        }
    }

    public final void updateLocaleOverlays(Configuration configuration, String str, String str2, int i, LocaleList localeList) {
        Slog.e("ActivityManager", "LocaleChange Start: Locale List = " + localeList + ", Time = " + System.currentTimeMillis());
        int callingUserId = UserHandle.getCallingUserId();
        if (localeList == null || localeList.isEmpty()) {
            Slog.e("ActivityManager", "updateLocaleOverlays() called with null localelist");
            overlaysInstallComplete(configuration, str, str2, callingUserId, i);
            return;
        }
        LocaleOverlayManagerWrapper localeOverlayManagerWrapper = LocaleOverlayManagerWrapper.getInstance(this.mContext);
        try {
            OverlayChangeObserverImpl overlayChangeObserverImpl = new OverlayChangeObserverImpl(configuration, str, str2, callingUserId, i, this);
            this.mHandler.postDelayed(overlayChangeObserverImpl.mTimeoutRunnable, 30000L);
            localeOverlayManagerWrapper.applyLocales(localeList, callingUserId, overlayChangeObserverImpl);
        } catch (Exception e) {
            overlaysInstallComplete(configuration, str, str2, callingUserId, i);
            e.printStackTrace();
        }
    }

    public void updatePersistentConfigurationWithAttribution(Configuration configuration, String str, String str2) {
        updatePersistentConfigurationWithAttribution(configuration, str, str2, UserHandle.getCallingUserId(), Binder.getCallingPid());
    }

    public final void updatePersistentConfigurationWithAttribution(Configuration configuration, String str, String str2, int i, int i2) {
        enforceCallingPermission("android.permission.CHANGE_CONFIGURATION", "updatePersistentConfiguration()");
        enforceWriteSettingsPermission("updatePersistentConfiguration()", str, str2);
        if (configuration == null) {
            throw new NullPointerException("Configuration must not be null");
        }
        this.mActivityTaskManager.updatePersistentConfiguration(configuration, i, i2);
    }

    public final void updateExtraFreeKbytes() {
        Slog.d("ActivityManager", "updateExtraFreeKbytes before : " + this.mProcessList.getmIsDisplayChanged());
        if (this.mWindowManager != null) {
            this.mProcessList.setmIsDisplayChanged(true);
            Slog.d("ActivityManager", "updateExtraFreeKbytes after : " + this.mProcessList.getmIsDisplayChanged());
            this.mProcessList.applyDisplaySize(this.mWindowManager);
        }
    }

    public final void enforceWriteSettingsPermission(String str, String str2, String str3) {
        String str4;
        int callingUid = Binder.getCallingUid();
        if (callingUid == 0) {
            return;
        }
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord processRecord = this.mPidsSelfLocked.get(Binder.getCallingPid());
            str4 = processRecord != null ? processRecord.info.packageName : null;
        }
        if (str4 != null) {
            str2 = str4;
        }
        if (Settings.checkAndNoteWriteSettingsOperation(this.mContext, callingUid, str2, str3, false)) {
            return;
        }
        String str5 = "Permission Denial: " + str + " from pid=" + Binder.getCallingPid() + ", uid=" + callingUid + " requires android.permission.WRITE_SETTINGS";
        Slog.w("ActivityManager", str5);
        throw new SecurityException(str5);
    }

    public boolean updateConfiguration(Configuration configuration) {
        return this.mActivityTaskManager.updateConfiguration(configuration);
    }

    public boolean updateMccMncConfiguration(String str, String str2) {
        try {
            int parseInt = Integer.parseInt(str);
            int parseInt2 = Integer.parseInt(str2);
            Configuration configuration = new Configuration();
            configuration.mcc = parseInt;
            if (parseInt2 == 0) {
                parseInt2 = GnssNative.GNSS_AIDING_TYPE_ALL;
            }
            configuration.mnc = parseInt2;
            return this.mActivityTaskManager.updateConfiguration(configuration);
        } catch (NumberFormatException | StringIndexOutOfBoundsException e) {
            Slog.e("ActivityManager", "Error parsing mcc: " + str + " mnc: " + str2 + ". ex=" + e);
            return false;
        }
    }

    public int getLaunchedFromUid(IBinder iBinder) {
        return ActivityClient.getInstance().getLaunchedFromUid(iBinder);
    }

    public String getLaunchedFromPackage(IBinder iBinder) {
        return ActivityClient.getInstance().getLaunchedFromPackage(iBinder);
    }

    public boolean isReceivingBroadcastLocked(ProcessRecord processRecord, int[] iArr) {
        int i = Integer.MIN_VALUE;
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            i = Math.max(i, broadcastQueue.getPreferredSchedulingGroupLocked(processRecord));
        }
        iArr[0] = i;
        return i != Integer.MIN_VALUE;
    }

    public Association startAssociationLocked(int i, String str, int i2, int i3, long j, ComponentName componentName, String str2) {
        if (!this.mTrackingAssociations) {
            return null;
        }
        ArrayMap arrayMap = (ArrayMap) this.mAssociations.get(i3);
        if (arrayMap == null) {
            arrayMap = new ArrayMap();
            this.mAssociations.put(i3, arrayMap);
        }
        SparseArray sparseArray = (SparseArray) arrayMap.get(componentName);
        if (sparseArray == null) {
            sparseArray = new SparseArray();
            arrayMap.put(componentName, sparseArray);
        }
        ArrayMap arrayMap2 = (ArrayMap) sparseArray.get(i);
        if (arrayMap2 == null) {
            arrayMap2 = new ArrayMap();
            sparseArray.put(i, arrayMap2);
        }
        Association association = (Association) arrayMap2.get(str);
        if (association == null) {
            association = new Association(i, str, i3, componentName, str2);
            arrayMap2.put(str, association);
        }
        association.mCount++;
        int i4 = association.mNesting + 1;
        association.mNesting = i4;
        if (i4 == 1) {
            long uptimeMillis = SystemClock.uptimeMillis();
            association.mLastStateUptime = uptimeMillis;
            association.mStartTime = uptimeMillis;
            association.mLastState = i2;
        }
        return association;
    }

    public void stopAssociationLocked(int i, String str, int i2, long j, ComponentName componentName, String str2) {
        ArrayMap arrayMap;
        SparseArray sparseArray;
        ArrayMap arrayMap2;
        Association association;
        int i3;
        if (!this.mTrackingAssociations || (arrayMap = (ArrayMap) this.mAssociations.get(i2)) == null || (sparseArray = (SparseArray) arrayMap.get(componentName)) == null || (arrayMap2 = (ArrayMap) sparseArray.get(i)) == null || (association = (Association) arrayMap2.get(str)) == null || (i3 = association.mNesting) <= 0) {
            return;
        }
        int i4 = i3 - 1;
        association.mNesting = i4;
        if (i4 == 0) {
            long uptimeMillis = SystemClock.uptimeMillis();
            association.mTime += uptimeMillis - association.mStartTime;
            long[] jArr = association.mStateTimes;
            int i5 = association.mLastState + 0;
            jArr[i5] = jArr[i5] + (uptimeMillis - association.mLastStateUptime);
            association.mLastState = 22;
        }
    }

    public void noteUidProcessState(int i, int i2, int i3) {
        int i4;
        ActivityManagerService activityManagerService = this;
        activityManagerService.mBatteryStatsService.noteUidProcessState(i, i2);
        activityManagerService.mAppOpsService.updateUidProcState(i, i2, i3);
        if (activityManagerService.mTrackingAssociations) {
            int size = activityManagerService.mAssociations.size();
            int i5 = 0;
            int i6 = 0;
            while (i6 < size) {
                ArrayMap arrayMap = (ArrayMap) activityManagerService.mAssociations.valueAt(i6);
                int size2 = arrayMap.size();
                int i7 = i5;
                while (i7 < size2) {
                    ArrayMap arrayMap2 = (ArrayMap) ((SparseArray) arrayMap.valueAt(i7)).get(i);
                    if (arrayMap2 != null) {
                        int size3 = arrayMap2.size();
                        int i8 = i5;
                        while (i8 < size3) {
                            Association association = (Association) arrayMap2.valueAt(i8);
                            if (association.mNesting >= 1) {
                                long uptimeMillis = SystemClock.uptimeMillis();
                                long[] jArr = association.mStateTimes;
                                int i9 = association.mLastState - i5;
                                i4 = i6;
                                jArr[i9] = jArr[i9] + (uptimeMillis - association.mLastStateUptime);
                                association.mLastState = i2;
                                association.mLastStateUptime = uptimeMillis;
                            } else {
                                i4 = i6;
                            }
                            i8++;
                            i6 = i4;
                            i5 = 0;
                        }
                    }
                    i7++;
                    i6 = i6;
                    i5 = 0;
                }
                i6++;
                activityManagerService = this;
                i5 = 0;
            }
        }
    }

    public final boolean canGcNowLocked() {
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            if (!broadcastQueue.lambda$waitForIdle$1()) {
                return false;
            }
        }
        return this.mAtmInternal.canGcNow();
    }

    public final void checkExcessivePowerUsage() {
        updateCpuStatsNow();
        final boolean z = this.mSystemReady && FeatureFlagUtils.isEnabled(this.mContext, "settings_enable_monitor_phantom_procs");
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                final boolean z2 = this.mLastPowerCheckUptime != 0;
                final long uptimeMillis = SystemClock.uptimeMillis();
                final long j = uptimeMillis - this.mLastPowerCheckUptime;
                this.mLastPowerCheckUptime = uptimeMillis;
                this.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda24
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ActivityManagerService.this.lambda$checkExcessivePowerUsage$29(uptimeMillis, j, z2, z, (ProcessRecord) obj);
                    }
                });
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public /* synthetic */ void lambda$checkExcessivePowerUsage$29(long j, long j2, boolean z, boolean z2, ProcessRecord processRecord) {
        int i;
        if (processRecord.getThread() != null && processRecord.mState.getSetProcState() >= 14) {
            long whenUnimportant = j - processRecord.mState.getWhenUnimportant();
            ActivityManagerConstants activityManagerConstants = this.mConstants;
            long j3 = activityManagerConstants.POWER_CHECK_INTERVAL;
            if (whenUnimportant <= j3) {
                i = activityManagerConstants.POWER_CHECK_MAX_CPU_1;
            } else if (whenUnimportant <= j3 * 2 || processRecord.mState.getSetProcState() <= 14) {
                i = this.mConstants.POWER_CHECK_MAX_CPU_2;
            } else {
                ActivityManagerConstants activityManagerConstants2 = this.mConstants;
                if (whenUnimportant <= activityManagerConstants2.POWER_CHECK_INTERVAL * 3) {
                    i = activityManagerConstants2.POWER_CHECK_MAX_CPU_3;
                } else {
                    i = activityManagerConstants2.POWER_CHECK_MAX_CPU_4;
                }
            }
            int i2 = i;
            updateAppProcessCpuTimeLPr(j2, z, whenUnimportant, i2, processRecord);
            if (z2) {
                updatePhantomProcessCpuTimeLPr(j2, z, whenUnimportant, i2, processRecord);
            }
        }
    }

    public final void updateAppProcessCpuTimeLPr(final long j, boolean z, final long j2, final int i, final ProcessRecord processRecord) {
        synchronized (this.mAppProfiler.mProfilerLock) {
            ProcessProfileRecord processProfileRecord = processRecord.mProfile;
            long j3 = processProfileRecord.mCurCpuTime.get();
            long j4 = processProfileRecord.mLastCpuTime.get();
            if (j4 > 0) {
                final long j5 = j3 - j4;
                if (checkExcessivePowerUsageLPr(j, z, j5, processRecord.processName, processRecord.toShortString(), i, processRecord)) {
                    this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda32
                        @Override // java.lang.Runnable
                        public final void run() {
                            ActivityManagerService.this.lambda$updateAppProcessCpuTimeLPr$30(processRecord, j5, j, j2, i);
                        }
                    });
                    processProfileRecord.reportExcessiveCpu();
                }
            }
            processProfileRecord.mLastCpuTime.set(j3);
        }
    }

    public /* synthetic */ void lambda$updateAppProcessCpuTimeLPr$30(ProcessRecord processRecord, long j, long j2, long j3, int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (processRecord.getThread() != null && processRecord.mState.getSetProcState() >= 14) {
                    processRecord.killLocked("excessive cpu " + j + " during " + j2 + " dur=" + j3 + " limit=" + i, 9, 7, true);
                    resetPriorityAfterLockedSection();
                    return;
                }
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public final void updatePhantomProcessCpuTimeLPr(final long j, final boolean z, final long j2, final int i, final ProcessRecord processRecord) {
        this.mPhantomProcessList.forEachPhantomProcessOfApp(processRecord, new Function() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda40
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$updatePhantomProcessCpuTimeLPr$32;
                lambda$updatePhantomProcessCpuTimeLPr$32 = ActivityManagerService.this.lambda$updatePhantomProcessCpuTimeLPr$32(j, z, processRecord, i, j2, (PhantomProcessRecord) obj);
                return lambda$updatePhantomProcessCpuTimeLPr$32;
            }
        });
    }

    public /* synthetic */ Boolean lambda$updatePhantomProcessCpuTimeLPr$32(final long j, boolean z, final ProcessRecord processRecord, final int i, final long j2, final PhantomProcessRecord phantomProcessRecord) {
        long j3 = phantomProcessRecord.mLastCputime;
        if (j3 > 0) {
            final long j4 = phantomProcessRecord.mCurrentCputime - j3;
            if (checkExcessivePowerUsageLPr(j, z, j4, processRecord.processName, phantomProcessRecord.toString(), i, processRecord)) {
                this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda43
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActivityManagerService.this.lambda$updatePhantomProcessCpuTimeLPr$31(processRecord, phantomProcessRecord, j4, j, j2, i);
                    }
                });
                return Boolean.FALSE;
            }
        }
        phantomProcessRecord.mLastCputime = phantomProcessRecord.mCurrentCputime;
        return Boolean.TRUE;
    }

    public /* synthetic */ void lambda$updatePhantomProcessCpuTimeLPr$31(ProcessRecord processRecord, PhantomProcessRecord phantomProcessRecord, long j, long j2, long j3, int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (processRecord.getThread() != null && processRecord.mState.getSetProcState() >= 14) {
                    this.mPhantomProcessList.killPhantomProcessGroupLocked(processRecord, phantomProcessRecord, 9, 7, "excessive cpu " + j + " during " + j2 + " dur=" + j3 + " limit=" + i);
                    resetPriorityAfterLockedSection();
                    return;
                }
                resetPriorityAfterLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public final boolean checkExcessivePowerUsageLPr(long j, boolean z, long j2, final String str, String str2, int i, final ProcessRecord processRecord) {
        if (!z || j <= 0 || (100 * j2) / j < i) {
            return false;
        }
        this.mBatteryStatsService.reportExcessiveCpu(processRecord.info.uid, processRecord.processName, j, j2);
        processRecord.getPkgList().forEachPackageProcessStats(new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda45
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ActivityManagerService.lambda$checkExcessivePowerUsageLPr$33(ProcessRecord.this, str, (ProcessStats.ProcessStateHolder) obj);
            }
        });
        return true;
    }

    public static /* synthetic */ void lambda$checkExcessivePowerUsageLPr$33(ProcessRecord processRecord, String str, ProcessStats.ProcessStateHolder processStateHolder) {
        ProcessState processState = processStateHolder.state;
        FrameworkStatsLog.write(16, processRecord.info.uid, str, processState != null ? processState.getPackage() : processRecord.info.packageName, processStateHolder.appVersion);
    }

    public final boolean isEphemeralLocked(int i) {
        String[] packagesForUid = this.mContext.getPackageManager().getPackagesForUid(i);
        if (packagesForUid == null || packagesForUid.length != 1) {
            return false;
        }
        return getPackageManagerInternal().isPackageEphemeral(UserHandle.getUserId(i), packagesForUid[0]);
    }

    public void enqueueUidChangeLocked(UidRecord uidRecord, int i, int i2) {
        if (uidRecord != null) {
            i = uidRecord.getUid();
        }
        if (i < 0) {
            throw new IllegalArgumentException("No UidRecord or uid");
        }
        int setProcState = uidRecord != null ? uidRecord.getSetProcState() : 20;
        int minProcAdj = uidRecord != null ? uidRecord.getMinProcAdj() : -10000;
        long j = uidRecord != null ? uidRecord.curProcStateSeq : 0L;
        int setCapability = uidRecord != null ? uidRecord.getSetCapability() : 0;
        boolean isEphemeral = uidRecord != null ? uidRecord.isEphemeral() : isEphemeralLocked(i);
        if (uidRecord != null && uidRecord.isIdle() && (i2 & 2) != 0) {
            this.mProcessList.killAppIfBgRestrictedAndCachedIdleLocked(uidRecord);
        }
        if (uidRecord != null && !uidRecord.isIdle() && (i2 & 1) != 0) {
            i2 |= 2;
        }
        int enqueueUidChange = this.mUidObserverController.enqueueUidChange(uidRecord == null ? null : uidRecord.pendingChange, i, i2, setProcState, minProcAdj, j, setCapability, isEphemeral);
        if (uidRecord != null) {
            uidRecord.setLastReportedChange(enqueueUidChange);
        }
        PowerManagerInternal powerManagerInternal = this.mLocalPowerManager;
        if (powerManagerInternal != null) {
            if ((enqueueUidChange & 4) != 0) {
                powerManagerInternal.uidActive(i);
            }
            if ((enqueueUidChange & 2) != 0) {
                this.mLocalPowerManager.uidIdle(i);
            }
            if ((enqueueUidChange & 1) != 0) {
                this.mLocalPowerManager.uidGone(i);
            } else if ((Integer.MIN_VALUE & enqueueUidChange) != 0) {
                this.mLocalPowerManager.updateUidProcState(i, setProcState);
            }
        }
    }

    public final void setProcessTrackerStateLOSP(ProcessRecord processRecord, int i) {
        if (processRecord.getThread() != null) {
            processRecord.mProfile.setProcessTrackerState(processRecord.mState.getReportedProcState(), i);
        }
    }

    public final void clearProcessForegroundLocked(ProcessRecord processRecord) {
        updateProcessForegroundLocked(processRecord, false, 0, false, false);
    }

    public final void updateProcessForegroundLocked(ProcessRecord processRecord, boolean z, int i, boolean z2, boolean z3) {
        ProcessServiceRecord processServiceRecord = processRecord.mServices;
        boolean z4 = z != processServiceRecord.hasForegroundServices();
        if (z4 || !processServiceRecord.areForegroundServiceTypesSame(i, z2)) {
            if (z4) {
                for (int size = this.mForegroundServiceStateListeners.size() - 1; size >= 0; size--) {
                    ((ActivityManagerInternal.ForegroundServiceStateListener) this.mForegroundServiceStateListeners.get(size)).onForegroundServiceStateChanged(processRecord.info.packageName, processRecord.info.uid, processRecord.getPid(), z);
                }
            }
            processServiceRecord.setHasForegroundServices(z, i, z2);
            ArrayList arrayList = (ArrayList) this.mForegroundPackages.get(processRecord.info.packageName, processRecord.info.uid);
            if (z) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    this.mForegroundPackages.put(processRecord.info.packageName, processRecord.info.uid, arrayList);
                    MARsPolicyManager.getInstance().updateForegroundPackageToPkgStatus(processRecord.info.packageName, processRecord.userId, processRecord.info.uid, z);
                }
                if (!arrayList.contains(processRecord)) {
                    arrayList.add(processRecord);
                    this.mBatteryStatsService.noteEvent(32770, processRecord.info.packageName, processRecord.info.uid);
                }
            } else if (arrayList != null && arrayList.remove(processRecord)) {
                this.mBatteryStatsService.noteEvent(16386, processRecord.info.packageName, processRecord.info.uid);
                if (arrayList.size() <= 0) {
                    this.mForegroundPackages.remove(processRecord.info.packageName, processRecord.info.uid);
                    MARsPolicyManager.getInstance().updateForegroundPackageToPkgStatus(processRecord.info.packageName, processRecord.userId, processRecord.info.uid, z);
                }
            }
            processServiceRecord.setReportedForegroundServiceTypes(i);
            ProcessChangeItem enqueueProcessChangeItemLocked = this.mProcessList.enqueueProcessChangeItemLocked(processRecord.getPid(), processRecord.info.uid);
            enqueueProcessChangeItemLocked.changes |= 2;
            enqueueProcessChangeItemLocked.foregroundServiceTypes = i;
        }
        if (z3) {
            updateOomAdjLocked(processRecord, 9);
        }
    }

    public ProcessRecord getTopApp() {
        int i;
        String str;
        ActivityTaskManagerInternal activityTaskManagerInternal = this.mAtmInternal;
        String str2 = null;
        WindowProcessController topApp = activityTaskManagerInternal != null ? activityTaskManagerInternal.getTopApp() : null;
        ProcessRecord processRecord = topApp != null ? (ProcessRecord) topApp.mOwner : null;
        if (processRecord != null) {
            str2 = processRecord.processName;
            i = processRecord.info.uid;
        } else {
            i = -1;
        }
        synchronized (this.mCurResumedAppLock) {
            if (i != this.mCurResumedUid || (str2 != (str = this.mCurResumedPackage) && (str2 == null || !str2.equals(str)))) {
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    String str3 = this.mCurResumedPackage;
                    if (str3 != null) {
                        this.mBatteryStatsService.noteEvent(16387, str3, this.mCurResumedUid);
                    }
                    this.mCurResumedPackage = str2;
                    this.mCurResumedUid = i;
                    if (str2 != null) {
                        this.mBatteryStatsService.noteEvent(32771, str2, i);
                    }
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
        }
        return processRecord;
    }

    public void enqueueOomAdjTargetLocked(ProcessRecord processRecord) {
        this.mOomAdjuster.enqueueOomAdjTargetLocked(processRecord);
    }

    public void removeOomAdjTargetLocked(ProcessRecord processRecord, boolean z) {
        this.mOomAdjuster.removeOomAdjTargetLocked(processRecord, z);
    }

    public void updateOomAdjPendingTargetsLocked(int i) {
        this.mOomAdjuster.updateOomAdjPendingTargetsLocked(i);
    }

    /* loaded from: classes.dex */
    public final class ProcStatsRunnable implements Runnable {
        public final ProcessStatsService mProcessStats;
        public final ActivityManagerService mService;

        public ProcStatsRunnable(ActivityManagerService activityManagerService, ProcessStatsService processStatsService) {
            this.mService = activityManagerService;
            this.mProcessStats = processStatsService;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mProcessStats.writeStateAsync();
        }
    }

    public final void updateOomAdjLocked(int i) {
        this.mOomAdjuster.updateOomAdjLocked(i);
    }

    public final boolean updateOomAdjLocked(ProcessRecord processRecord, int i) {
        return this.mOomAdjuster.updateOomAdjLocked(processRecord, i);
    }

    public void makePackageIdle(String str, int i) {
        int i2;
        if (checkCallingPermission("android.permission.FORCE_STOP_PACKAGES") != 0) {
            String str2 = "Permission Denial: makePackageIdle() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.FORCE_STOP_PACKAGES";
            Slog.w("ActivityManager", str2);
            throw new SecurityException(str2);
        }
        int handleIncomingUser = this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), i, true, 2, "makePackageIdle", null);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                i2 = AppGlobals.getPackageManager().getPackageUid(str, 268443648L, 0);
            } catch (RemoteException unused) {
                i2 = -1;
            }
            if (i2 == -1) {
                throw new IllegalArgumentException("Unknown package name " + str);
            }
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    try {
                        PowerManagerInternal powerManagerInternal = this.mLocalPowerManager;
                        if (powerManagerInternal != null) {
                            powerManagerInternal.startUidChanges();
                        }
                        int appId = UserHandle.getAppId(i2);
                        for (int size = this.mProcessList.mActiveUids.size() - 1; size >= 0; size--) {
                            UidRecord valueAt = this.mProcessList.mActiveUids.valueAt(size);
                            if (valueAt.getLastBackgroundTime() > 0 && !valueAt.isIdle()) {
                                int uid = valueAt.getUid();
                                if (UserHandle.getAppId(uid) == appId && (handleIncomingUser == -1 || handleIncomingUser == UserHandle.getUserId(uid))) {
                                    EventLogTags.writeAmUidIdle(uid);
                                    ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                                    boostPriorityForProcLockedSection();
                                    synchronized (activityManagerGlobalLock) {
                                        try {
                                            valueAt.setIdle(true);
                                            valueAt.setSetIdle(true);
                                        } finally {
                                        }
                                    }
                                    resetPriorityAfterProcLockedSection();
                                    Slog.w("ActivityManager", "Idling uid " + UserHandle.formatUid(uid) + " from package " + str + " user " + handleIncomingUser);
                                    doStopUidLocked(uid, valueAt);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                } finally {
                    PowerManagerInternal powerManagerInternal2 = this.mLocalPowerManager;
                    if (powerManagerInternal2 != null) {
                        powerManagerInternal2.finishUidChanges();
                    }
                }
            }
            resetPriorityAfterLockedSection();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setDeterministicUidIdle(boolean z) {
        this.mDeterministicUidIdle = z;
    }

    public final void idleUids() {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                this.mOomAdjuster.idleUidsLocked();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final void runInBackgroundDisabled(int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                UidRecord uidRecordLOSP = this.mProcessList.getUidRecordLOSP(i);
                if (uidRecordLOSP != null) {
                    if (uidRecordLOSP.isIdle()) {
                        doStopUidLocked(uidRecordLOSP.getUid(), uidRecordLOSP);
                    }
                } else {
                    doStopUidLocked(i, null);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final void cameraActiveChanged(int i, boolean z) {
        synchronized (this.mActiveCameraUids) {
            int indexOf = this.mActiveCameraUids.indexOf(i);
            if (z) {
                if (indexOf < 0) {
                    this.mActiveCameraUids.add(i);
                }
            } else if (indexOf >= 0) {
                this.mActiveCameraUids.remove(indexOf);
            }
        }
    }

    public final boolean isCameraActiveForUid(int i) {
        boolean z;
        synchronized (this.mActiveCameraUids) {
            z = this.mActiveCameraUids.indexOf(i) >= 0;
        }
        return z;
    }

    public final void doStopUidLocked(int i, UidRecord uidRecord) {
        this.mServices.stopInBackgroundLocked(i);
        enqueueUidChangeLocked(uidRecord, i, -2147483646);
    }

    public void tempAllowlistForPendingIntentLocked(int i, int i2, int i3, long j, int i4, int i5, String str) {
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord processRecord = this.mPidsSelfLocked.get(i);
            if (processRecord == null) {
                Slog.w("ActivityManager", "tempAllowlistForPendingIntentLocked() no ProcessRecord for pid " + i);
                return;
            }
            if (processRecord.mServices.mAllowlistManager || checkPermission("android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST", i, i2) == 0 || checkPermission("android.permission.START_ACTIVITIES_FROM_BACKGROUND", i, i2) == 0 || checkPermission("android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND", i, i2) == 0) {
                tempAllowlistUidLocked(i3, j, i5, str, i4, i2);
            }
        }
    }

    public void tempAllowlistUidLocked(int i, long j, int i2, String str, int i3, int i4) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                DeviceIdleInternal deviceIdleInternal = this.mLocalDeviceIdleController;
                int tempAllowListType = deviceIdleInternal != null ? deviceIdleInternal.getTempAllowListType(i2, i3) : i3;
                if (tempAllowListType == -1) {
                    resetPriorityAfterProcLockedSection();
                    return;
                }
                this.mPendingTempAllowlist.put(i, new PendingTempAllowlist(i, j, i2, str, tempAllowListType, i4));
                setUidTempAllowlistStateLSP(i, true);
                this.mUiHandler.obtainMessage(68).sendToTarget();
                if (tempAllowListType == 0) {
                    this.mFgsStartTempAllowList.add(i, j, new FgsTempAllowListItem(j, i2, str, i4));
                }
                resetPriorityAfterProcLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public void pushTempAllowlist() {
        int size;
        PendingTempAllowlist[] pendingTempAllowlistArr;
        int i;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        size = this.mPendingTempAllowlist.size();
                        pendingTempAllowlistArr = new PendingTempAllowlist[size];
                        for (int i2 = 0; i2 < size; i2++) {
                            pendingTempAllowlistArr[i2] = this.mPendingTempAllowlist.valueAt(i2);
                        }
                    } finally {
                    }
                }
                resetPriorityAfterProcLockedSection();
            } finally {
            }
        }
        resetPriorityAfterLockedSection();
        if (this.mLocalDeviceIdleController != null) {
            for (int i3 = 0; i3 < size; i3++) {
                PendingTempAllowlist pendingTempAllowlist = pendingTempAllowlistArr[i3];
                this.mLocalDeviceIdleController.addPowerSaveTempWhitelistAppDirect(pendingTempAllowlist.targetUid, pendingTempAllowlist.duration, pendingTempAllowlist.type, true, pendingTempAllowlist.reasonCode, pendingTempAllowlist.tag, pendingTempAllowlist.callingUid);
            }
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock2 = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock2) {
                    for (i = 0; i < size; i++) {
                        try {
                            PendingTempAllowlist pendingTempAllowlist2 = pendingTempAllowlistArr[i];
                            int indexOfKey = this.mPendingTempAllowlist.indexOfKey(pendingTempAllowlist2.targetUid);
                            if (indexOfKey >= 0 && this.mPendingTempAllowlist.valueAt(indexOfKey) == pendingTempAllowlist2) {
                                this.mPendingTempAllowlist.removeAt(indexOfKey);
                            }
                        } finally {
                        }
                    }
                }
                resetPriorityAfterProcLockedSection();
            } finally {
                resetPriorityAfterLockedSection();
            }
        }
    }

    public final void setAppIdTempAllowlistStateLSP(int i, boolean z) {
        this.mOomAdjuster.setAppIdTempAllowlistStateLSP(i, z);
    }

    public final void setUidTempAllowlistStateLSP(int i, boolean z) {
        this.mOomAdjuster.setUidTempAllowlistStateLSP(i, z);
    }

    public final void trimApplications(boolean z, int i) {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                trimApplicationsLocked(z, i);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final void trimApplicationsLocked(boolean z, int i) {
        boolean z2 = false;
        for (int size = this.mProcessList.mRemovedProcesses.size() - 1; size >= 0; size--) {
            ProcessRecord processRecord = (ProcessRecord) this.mProcessList.mRemovedProcesses.get(size);
            if (!processRecord.hasActivitiesOrRecentTasks() && processRecord.mReceivers.numberOfCurReceivers() == 0 && processRecord.mServices.numberOfRunningServices() == 0) {
                IApplicationThread thread = processRecord.getThread();
                StringBuilder sb = new StringBuilder();
                sb.append("Exiting empty application process ");
                sb.append(processRecord.toShortString());
                sb.append(" (");
                sb.append(thread != null ? thread.asBinder() : null);
                sb.append(")\n");
                Slog.i("ActivityManager", sb.toString());
                int pid = processRecord.getPid();
                if (pid > 0 && pid != MY_PID) {
                    processRecord.killLocked("empty", 13, 4, false);
                } else if (thread != null) {
                    try {
                        thread.scheduleExit();
                    } catch (Exception unused) {
                    }
                }
                cleanUpApplicationRecordLocked(processRecord, pid, false, true, -1, false, false);
                this.mProcessList.mRemovedProcesses.remove(size);
                if (processRecord.isPersistent()) {
                    addAppLocked(processRecord.info, null, false, null, 2);
                    processRecord.mProfile.addHostingComponentType(2);
                }
                z2 = true;
            }
        }
        if (z2 || z) {
            updateOomAdjLocked(i);
        } else {
            updateOomAdjPendingTargetsLocked(i);
        }
    }

    public void signalPersistentProcesses(final int i) {
        if (i != 10) {
            throw new SecurityException("Only SIGNAL_USR1 is allowed");
        }
        if (checkCallingPermission("android.permission.SIGNAL_PERSISTENT_PROCESSES") != 0) {
            throw new SecurityException("Requires permission android.permission.SIGNAL_PERSISTENT_PROCESSES");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mProcessList.forEachLruProcessesLOSP(false, new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda2
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ActivityManagerService.lambda$signalPersistentProcesses$34(i, (ProcessRecord) obj);
                    }
                });
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public static /* synthetic */ void lambda$signalPersistentProcesses$34(int i, ProcessRecord processRecord) {
        if (processRecord.getThread() == null || !processRecord.isPersistent()) {
            return;
        }
        Process.sendSignal(processRecord.getPid(), i);
    }

    public boolean profileControl(String str, int i, boolean z, ProfilerInfo profilerInfo, int i2) {
        ProcessRecord findProcessLOSP;
        boolean profileControlLPf;
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        if (z && (profilerInfo == null || profilerInfo.profileFd == null)) {
            throw new IllegalArgumentException("null profile info or fd");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            if (str != null) {
                try {
                    findProcessLOSP = findProcessLOSP(str, i, "profileControl");
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            } else {
                findProcessLOSP = null;
            }
            if (z && (findProcessLOSP == null || findProcessLOSP.getThread() == null)) {
                throw new IllegalArgumentException("Unknown process: " + str);
            }
        }
        resetPriorityAfterProcLockedSection();
        synchronized (this.mAppProfiler.mProfilerLock) {
            profileControlLPf = this.mAppProfiler.profileControlLPf(findProcessLOSP, z, profilerInfo, i2);
        }
        return profileControlLPf;
    }

    public final ProcessRecord findProcessLOSP(String str, int i, String str2) {
        SparseArray sparseArray;
        int handleIncomingUser = this.mUserController.handleIncomingUser(Binder.getCallingPid(), Binder.getCallingUid(), i, true, 2, str2, null);
        ProcessRecord processRecord = null;
        try {
            int parseInt = Integer.parseInt(str);
            synchronized (this.mPidsSelfLocked) {
                processRecord = this.mPidsSelfLocked.get(parseInt);
            }
        } catch (NumberFormatException unused) {
        }
        if (processRecord != null || (sparseArray = (SparseArray) this.mProcessList.getProcessNamesLOSP().getMap().get(str)) == null || sparseArray.size() <= 0) {
            return processRecord;
        }
        ProcessRecord processRecord2 = (ProcessRecord) sparseArray.valueAt(0);
        if (handleIncomingUser == -1 || processRecord2.userId == handleIncomingUser) {
            return processRecord2;
        }
        for (int i2 = 1; i2 < sparseArray.size(); i2++) {
            ProcessRecord processRecord3 = (ProcessRecord) sparseArray.valueAt(i2);
            if (processRecord3.userId == handleIncomingUser) {
                return processRecord3;
            }
        }
        return processRecord2;
    }

    public boolean dumpHeap(String str, int i, boolean z, boolean z2, boolean z3, String str2, ParcelFileDescriptor parcelFileDescriptor, RemoteCallback remoteCallback) {
        IApplicationThread thread;
        try {
            try {
                if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
                    throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
                }
                if (parcelFileDescriptor == null) {
                    throw new IllegalArgumentException("null fd");
                }
                boostPriorityForLockedSection();
                synchronized (this) {
                    try {
                        ProcessRecord findProcessLOSP = findProcessLOSP(str, i, "dumpHeap");
                        if (findProcessLOSP == null || (thread = findProcessLOSP.getThread()) == null) {
                            throw new IllegalArgumentException("Unknown process: " + str);
                        }
                        if (MARsPolicyManager.MARs_ENABLE && FreecessController.getInstance().getFreecessEnabled()) {
                            FreecessController.getInstance().protectFreezePackage(findProcessLOSP.uid, "dumpHeap", 30000L);
                        }
                        enforceDebuggable(findProcessLOSP);
                        this.mOomAdjuster.mCachedAppOptimizer.enableFreezer(false);
                        thread.dumpHeap(z, z2, z3, str2, parcelFileDescriptor, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.am.ActivityManagerService.25
                            public final /* synthetic */ RemoteCallback val$finishCallback;

                            public AnonymousClass25(RemoteCallback remoteCallback2) {
                                r2 = remoteCallback2;
                            }

                            public void onResult(Bundle bundle) {
                                r2.sendResult(bundle);
                                ActivityManagerService.this.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
                            }
                        }, (Handler) null));
                        try {
                            resetPriorityAfterLockedSection();
                            return true;
                        } catch (Throwable th) {
                            th = th;
                            resetPriorityAfterLockedSection();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (RemoteException unused) {
                throw new IllegalStateException("Process disappeared");
            }
        } catch (Throwable th3) {
            if (parcelFileDescriptor != null) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException unused2) {
                }
            }
            throw th3;
        }
    }

    /* renamed from: com.android.server.am.ActivityManagerService$25 */
    /* loaded from: classes.dex */
    public class AnonymousClass25 implements RemoteCallback.OnResultListener {
        public final /* synthetic */ RemoteCallback val$finishCallback;

        public AnonymousClass25(RemoteCallback remoteCallback2) {
            r2 = remoteCallback2;
        }

        public void onResult(Bundle bundle) {
            r2.sendResult(bundle);
            ActivityManagerService.this.mOomAdjuster.mCachedAppOptimizer.enableFreezer(true);
        }
    }

    public boolean dumpResources(String str, ParcelFileDescriptor parcelFileDescriptor, RemoteCallback remoteCallback) {
        IApplicationThread thread;
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord findProcessLOSP = findProcessLOSP(str, -2, "dumpResources");
                if (findProcessLOSP == null || (thread = findProcessLOSP.getThread()) == null) {
                    throw new IllegalArgumentException("Unknown process: " + str);
                }
                thread.dumpResources(parcelFileDescriptor, remoteCallback);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return true;
    }

    public void dumpAllResources(ParcelFileDescriptor parcelFileDescriptor, PrintWriter printWriter) {
        ArrayList arrayList = new ArrayList();
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                arrayList.addAll(this.mProcessList.getLruProcessesLOSP());
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ProcessRecord processRecord = (ProcessRecord) arrayList.get(i);
            printWriter.println(String.format("Resources History for %s (%s)", processRecord.processName, processRecord.info.packageName));
            if (processRecord.mOptRecord.isFrozen()) {
                printWriter.println("  Skipping frozen process");
                printWriter.flush();
            } else {
                printWriter.flush();
                try {
                    TransferPipe transferPipe = new TransferPipe("  ");
                    try {
                        if (processRecord.getThread() != null) {
                            processRecord.getThread().dumpResources(transferPipe.getWriteFd(), (RemoteCallback) null);
                            transferPipe.go(parcelFileDescriptor.getFileDescriptor(), 2000L);
                        } else {
                            printWriter.println(String.format("  Resources history for %s (%s) failed, no thread", processRecord.processName, processRecord.info.packageName));
                        }
                        transferPipe.kill();
                    } catch (Throwable th2) {
                        transferPipe.kill();
                        throw th2;
                        break;
                    }
                } catch (IOException e) {
                    printWriter.println("  " + e.getMessage());
                    printWriter.flush();
                }
            }
        }
    }

    public void setDumpHeapDebugLimit(String str, int i, long j, String str2) {
        String str3;
        int i2;
        int i3;
        String str4;
        if (str != null) {
            enforceCallingPermission("android.permission.SET_DEBUG_APP", "setDumpHeapDebugLimit()");
            str4 = str;
            i3 = i;
        } else {
            synchronized (this.mPidsSelfLocked) {
                ProcessRecord processRecord = this.mPidsSelfLocked.get(Binder.getCallingPid());
                if (processRecord == null) {
                    throw new SecurityException("No process found for calling pid " + Binder.getCallingPid());
                }
                enforceDebuggable(processRecord);
                str3 = processRecord.processName;
                i2 = processRecord.uid;
                if (str2 != null && !processRecord.getPkgList().containsKey(str2)) {
                    throw new SecurityException("Package " + str2 + " is not running in " + processRecord);
                }
            }
            i3 = i2;
            str4 = str3;
        }
        this.mAppProfiler.setDumpHeapDebugLimit(str4, i3, j, str2);
    }

    public void dumpHeapFinished(String str) {
        this.mAppProfiler.dumpHeapFinished(str, Binder.getCallingPid());
    }

    @Override // com.android.server.Watchdog.Monitor
    public void monitor() {
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void onCoreSettingsChange(Bundle bundle) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mProcessList.updateCoreSettingsLOSP(bundle);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public boolean startUserInBackground(int i) {
        return startUserInBackgroundWithListener(i, null);
    }

    public boolean startUserInBackgroundWithListener(int i, IProgressListener iProgressListener) {
        return this.mUserController.startUser(i, 2, iProgressListener);
    }

    public boolean startUserInForegroundWithListener(int i, IProgressListener iProgressListener) {
        return this.mUserController.startUser(i, 1, iProgressListener);
    }

    public boolean startUserInBackgroundVisibleOnDisplay(int i, int i2, IProgressListener iProgressListener) {
        int[] displayIdsForStartingVisibleBackgroundUsers = getDisplayIdsForStartingVisibleBackgroundUsers();
        boolean z = false;
        if (displayIdsForStartingVisibleBackgroundUsers != null) {
            int i3 = 0;
            while (true) {
                if (i3 >= displayIdsForStartingVisibleBackgroundUsers.length) {
                    break;
                }
                if (i2 == displayIdsForStartingVisibleBackgroundUsers[i3]) {
                    z = true;
                    break;
                }
                i3++;
            }
        }
        if (!z) {
            throw new IllegalArgumentException("Invalid display (" + i2 + ") to start user. Valid options are: " + Arrays.toString(displayIdsForStartingVisibleBackgroundUsers));
        }
        return this.mInjector.startUserInBackgroundVisibleOnDisplay(i, i2, iProgressListener);
    }

    public int[] getDisplayIdsForStartingVisibleBackgroundUsers() {
        enforceCallingHasAtLeastOnePermission("getDisplayIdsForStartingVisibleBackgroundUsers()", "android.permission.MANAGE_USERS", "android.permission.INTERACT_ACROSS_USERS");
        return this.mInjector.getDisplayIdsForStartingVisibleBackgroundUsers();
    }

    public boolean unlockUser(int i, byte[] bArr, byte[] bArr2, IProgressListener iProgressListener) {
        return this.mUserController.unlockUser(i, iProgressListener);
    }

    public boolean unlockUser2(int i, IProgressListener iProgressListener) {
        EventLogTags.writeBootProgressAmsState(i, -1, 0, "AMS.unlockUser2", "NULL");
        return this.mUserController.unlockUser(i, iProgressListener);
    }

    public boolean switchUser(int i) {
        if (UserManager.getMaxSupportedUsers() > 1 && !MultiUserManager.getInstance(this.mContext).multipleUsersAllowed(true)) {
            Slog.w("ActivityManager", "MDM blocks multiuser mode");
            return false;
        }
        return this.mUserController.switchUser(i);
    }

    public String getSwitchingFromUserMessage() {
        return this.mUserController.getSwitchingFromSystemUserMessage();
    }

    public String getSwitchingToUserMessage() {
        return this.mUserController.getSwitchingToSystemUserMessage();
    }

    public void setStopUserOnSwitch(int i) {
        this.mUserController.setStopUserOnSwitch(i);
    }

    public int stopUser(int i, boolean z, IStopUserCallback iStopUserCallback) {
        return this.mUserController.stopUser(i, z, false, iStopUserCallback, null);
    }

    public int stopUserWithDelayedLocking(int i, boolean z, IStopUserCallback iStopUserCallback) {
        return this.mUserController.stopUser(i, z, true, iStopUserCallback, null);
    }

    public boolean startProfile(int i) {
        return this.mUserController.startProfile(i, false, null);
    }

    public boolean startProfileWithListener(int i, IProgressListener iProgressListener) {
        return this.mUserController.startProfile(i, false, iProgressListener);
    }

    public boolean stopProfile(int i) {
        return this.mUserController.stopProfile(i);
    }

    public UserInfo getCurrentUser() {
        return this.mUserController.getCurrentUser();
    }

    public int getCurrentUserId() {
        return this.mUserController.getCurrentUserIdChecked();
    }

    public String getStartedUserState(int i) {
        return UserState.stateToString(this.mUserController.getStartedUserState(i).state);
    }

    public boolean isUserRunning(int i, int i2) {
        if (!this.mUserController.isSameProfileGroup(i, UserHandle.getCallingUserId()) && checkCallingPermission("android.permission.INTERACT_ACROSS_USERS") != 0) {
            String str = "Permission Denial: isUserRunning() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.INTERACT_ACROSS_USERS";
            Slog.w("ActivityManager", str);
            throw new SecurityException(str);
        }
        return this.mUserController.isUserRunning(i, i2);
    }

    public int[] getRunningUserIds() {
        if (checkCallingPermission("android.permission.INTERACT_ACROSS_USERS") != 0) {
            String str = "Permission Denial: isUserRunning() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid() + " requires android.permission.INTERACT_ACROSS_USERS";
            Slog.w("ActivityManager", str);
            throw new SecurityException(str);
        }
        return this.mUserController.getStartedUserArray();
    }

    public void registerUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver, String str) {
        this.mUserController.registerUserSwitchObserver(iUserSwitchObserver, str);
    }

    public void unregisterUserSwitchObserver(IUserSwitchObserver iUserSwitchObserver) {
        this.mUserController.unregisterUserSwitchObserver(iUserSwitchObserver);
    }

    public ApplicationInfo getAppInfoForUser(ApplicationInfo applicationInfo, int i) {
        if (applicationInfo == null) {
            return null;
        }
        ApplicationInfo applicationInfo2 = new ApplicationInfo(applicationInfo);
        applicationInfo2.initForUser(i);
        return applicationInfo2;
    }

    public boolean isUserStopped(int i) {
        return this.mUserController.getStartedUserState(i) == null;
    }

    public ActivityInfo getActivityInfoForUser(ActivityInfo activityInfo, int i) {
        if (activityInfo == null || (i < 1 && activityInfo.applicationInfo.uid < 100000)) {
            return activityInfo;
        }
        ActivityInfo activityInfo2 = new ActivityInfo(activityInfo);
        activityInfo2.applicationInfo = getAppInfoForUser(activityInfo2.applicationInfo, i);
        return activityInfo2;
    }

    public final boolean processSanityChecksLPr(ProcessRecord processRecord, IApplicationThread iApplicationThread) {
        if (processRecord == null || iApplicationThread == null) {
            return false;
        }
        if (Binder.isSystemServerBinderTrackerEnabled) {
            return true;
        }
        return Build.IS_DEBUGGABLE || processRecord.isDebuggable();
    }

    public boolean startBinderTracking() {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mBinderTransactionTrackingEnabled = true;
                this.mProcessList.forEachLruProcessesLOSP(true, new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda15
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ActivityManagerService.this.lambda$startBinderTracking$35((ProcessRecord) obj);
                    }
                });
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return true;
    }

    public /* synthetic */ void lambda$startBinderTracking$35(ProcessRecord processRecord) {
        IApplicationThread thread = processRecord.getThread();
        if (processSanityChecksLPr(processRecord, thread)) {
            try {
                thread.startBinderTracking();
            } catch (RemoteException unused) {
                Log.v("ActivityManager", "Process disappared");
            }
        }
    }

    public boolean stopBinderTrackingAndDump(final ParcelFileDescriptor parcelFileDescriptor) {
        if (checkCallingPermission("android.permission.SET_ACTIVITY_WATCHER") != 0) {
            throw new SecurityException("Requires permission android.permission.SET_ACTIVITY_WATCHER");
        }
        boolean z = true;
        try {
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    if (parcelFileDescriptor == null) {
                        throw new IllegalArgumentException("null fd");
                    }
                    this.mBinderTransactionTrackingEnabled = false;
                    final FastPrintWriter fastPrintWriter = new FastPrintWriter(new FileOutputStream(parcelFileDescriptor.getFileDescriptor()));
                    fastPrintWriter.println("Binder transaction traces for all processes.\n");
                    if (FreecessController.getInstance().getFreecessEnabled()) {
                        Slog.w("ActivityManager", "!@ unFreezeAllPackages for BinderTracker");
                        FreecessHandler.getInstance().sendResetAllStateMsg("BinderTracker");
                    }
                    this.mProcessList.forEachLruProcessesLOSP(true, new Consumer() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda9
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            ActivityManagerService.this.lambda$stopBinderTrackingAndDump$36(fastPrintWriter, parcelFileDescriptor, (ProcessRecord) obj);
                        }
                    });
                    try {
                        resetPriorityAfterProcLockedSection();
                        return true;
                    } catch (Throwable th) {
                        th = th;
                        z = false;
                        resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (parcelFileDescriptor != null && z) {
                try {
                    parcelFileDescriptor.close();
                } catch (IOException unused) {
                }
            }
            throw th3;
        }
    }

    public /* synthetic */ void lambda$stopBinderTrackingAndDump$36(PrintWriter printWriter, ParcelFileDescriptor parcelFileDescriptor, ProcessRecord processRecord) {
        IApplicationThread thread = processRecord.getThread();
        if (processSanityChecksLPr(processRecord, thread)) {
            if (CachedAppOptimizer.isFreezerSupported()) {
                this.mOomAdjuster.mCachedAppOptimizer.unfreezeAppLSP(processRecord, 23);
            }
            printWriter.println("Traces for process: " + processRecord.processName);
            printWriter.flush();
            try {
                TransferPipe transferPipe = new TransferPipe();
                try {
                    if (Binder.isSystemServerBinderTrackerEnabled) {
                        thread.stopBinderTrackingAndDumpSystemServer(transferPipe.getWriteFd(), processRecord.processName, processRecord.getPkgList().getPackageList()[0], processRecord.mPid, processRecord.uid);
                        transferPipe.go(parcelFileDescriptor.getFileDescriptor(), 10000L);
                    } else {
                        thread.stopBinderTrackingAndDump(transferPipe.getWriteFd());
                        transferPipe.go(parcelFileDescriptor.getFileDescriptor());
                    }
                    transferPipe.kill();
                } catch (Throwable th) {
                    transferPipe.kill();
                    throw th;
                }
            } catch (RemoteException e) {
                printWriter.println("Got a RemoteException while dumping IPC traces from " + processRecord + ".  Exception: " + e);
                printWriter.flush();
            } catch (IOException e2) {
                printWriter.println("Failure while dumping IPC traces from " + processRecord + ".  Exception: " + e2);
                printWriter.flush();
            }
        }
    }

    public void onProcessFreezableChangedLocked(ProcessRecord processRecord) {
        if (this.mEnableModernQueue) {
            this.mBroadcastQueues[0].onProcessFreezableChangedLocked(processRecord);
        }
    }

    /* loaded from: classes.dex */
    public final class LocalService extends ActivityManagerInternal implements ActivityManagerLocal {
        public boolean getIsDataClearedInAms(String str, int i) {
            return false;
        }

        public Intent getLaunchIntentForPackage(String str, int i) {
            return null;
        }

        public final boolean isSplitConfigurationChange(int i) {
            return (i & 4100) != 0;
        }

        public LocalService() {
        }

        public List getPendingIntentStats() {
            return ActivityManagerService.this.mPendingIntentController.dumpPendingIntentStatsForStatsd();
        }

        public Pair getAppProfileStatsForDebugging(long j, int i) {
            return ActivityManagerService.this.mAppProfiler.getAppProfileStatsForDebugging(j, i);
        }

        public String checkContentProviderAccess(String str, int i) {
            return ActivityManagerService.this.mCpHelper.checkContentProviderAccess(str, i);
        }

        public int checkContentProviderUriPermission(Uri uri, int i, int i2, int i3) {
            return ActivityManagerService.this.mCpHelper.checkContentProviderUriPermission(uri, i, i2, i3);
        }

        public void onWakefulnessChanged(int i) {
            ActivityManagerService.this.onWakefulnessChanged(i);
        }

        public boolean startIsolatedProcess(String str, String[] strArr, String str2, String str3, int i, Runnable runnable) {
            return ActivityManagerService.this.startIsolatedProcess(str, strArr, str2, str3, i, runnable);
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public ComponentName startSdkSandboxService(Intent intent, int i, String str, String str2) {
            validateSdkSandboxParams(intent, i, str, str2);
            if (ActivityManagerService.this.mAppOpsService.checkPackage(i, str) != 0) {
                throw new IllegalArgumentException("uid does not belong to provided package");
            }
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ComponentName startService = activityManagerService.startService(activityManagerService.mContext.getIApplicationThread(), intent, intent.resolveTypeIfNeeded(ActivityManagerService.this.mContext.getContentResolver()), false, ActivityManagerService.this.mContext.getOpPackageName(), ActivityManagerService.this.mContext.getAttributionTag(), UserHandle.getUserId(i), true, i, str, str2);
            if (startService != null) {
                if (startService.getPackageName().equals("!")) {
                    throw new SecurityException("Not allowed to start service " + intent + " without permission " + startService.getClassName());
                }
                if (startService.getPackageName().equals("!!")) {
                    throw new SecurityException("Unable to start service " + intent + ": " + startService.getClassName());
                }
                if (startService.getPackageName().equals("?")) {
                    throw ServiceStartNotAllowedException.newInstance(false, "Not allowed to start service " + intent + ": " + startService.getClassName());
                }
            }
            return startService;
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public boolean stopSdkSandboxService(Intent intent, int i, String str, String str2) {
            validateSdkSandboxParams(intent, i, str, str2);
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            int stopService = activityManagerService.stopService(activityManagerService.mContext.getIApplicationThread(), intent, intent.resolveTypeIfNeeded(ActivityManagerService.this.mContext.getContentResolver()), UserHandle.getUserId(i), true, i, str, str2);
            if (stopService >= 0) {
                return stopService != 0;
            }
            throw new SecurityException("Not allowed to stop service " + intent);
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public boolean bindSdkSandboxService(Intent intent, ServiceConnection serviceConnection, int i, IBinder iBinder, String str, String str2, int i2) {
            return bindSdkSandboxServiceInternal(intent, serviceConnection, i, iBinder, str, str2, Integer.toUnsignedLong(i2));
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public boolean bindSdkSandboxService(Intent intent, ServiceConnection serviceConnection, int i, IBinder iBinder, String str, String str2, Context.BindServiceFlags bindServiceFlags) {
            return bindSdkSandboxServiceInternal(intent, serviceConnection, i, iBinder, str, str2, bindServiceFlags.getValue());
        }

        public final boolean bindSdkSandboxServiceInternal(Intent intent, ServiceConnection serviceConnection, int i, IBinder iBinder, String str, String str2, long j) {
            IApplicationThread iApplicationThread;
            validateSdkSandboxParams(intent, i, str, str2);
            if (ActivityManagerService.this.mAppOpsService.checkPackage(i, str) != 0) {
                throw new IllegalArgumentException("uid does not belong to provided package");
            }
            if (serviceConnection == null) {
                throw new IllegalArgumentException("connection is null");
            }
            Handler mainThreadHandler = ActivityManagerService.this.mContext.getMainThreadHandler();
            if (iBinder != null) {
                synchronized (this) {
                    ProcessRecord recordForAppLOSP = ActivityManagerService.this.getRecordForAppLOSP(iBinder);
                    if (recordForAppLOSP == null) {
                        Slog.i("ActivityManager", "clientApplicationThread process not found.");
                        return false;
                    }
                    if (recordForAppLOSP.info.uid != i) {
                        throw new IllegalArgumentException("clientApplicationThread does not match  client uid");
                    }
                    iApplicationThread = recordForAppLOSP.getThread();
                }
            } else {
                iApplicationThread = null;
            }
            IApplicationThread iApplicationThread2 = iApplicationThread;
            IServiceConnection serviceDispatcher = ActivityManagerService.this.mContext.getServiceDispatcher(serviceConnection, mainThreadHandler, j);
            intent.prepareToLeaveProcess(ActivityManagerService.this.mContext);
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            return activityManagerService.bindServiceInstance(activityManagerService.mContext.getIApplicationThread(), ActivityManagerService.this.mContext.getActivityToken(), intent, intent.resolveTypeIfNeeded(ActivityManagerService.this.mContext.getContentResolver()), serviceDispatcher, j, str2, true, i, str, iApplicationThread2, ActivityManagerService.this.mContext.getOpPackageName(), UserHandle.getUserId(i)) != 0;
        }

        public final void validateSdkSandboxParams(Intent intent, int i, String str, String str2) {
            if (intent == null) {
                throw new IllegalArgumentException("intent is null");
            }
            if (str == null) {
                throw new IllegalArgumentException("clientAppPackage is null");
            }
            if (str2 == null) {
                throw new IllegalArgumentException("processName is null");
            }
            if (intent.getComponent() == null) {
                throw new IllegalArgumentException("service must specify explicit component");
            }
            if (!UserHandle.isApp(i)) {
                throw new IllegalArgumentException("uid is not within application range");
            }
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public boolean bindSdkSandboxService(Intent intent, ServiceConnection serviceConnection, int i, String str, String str2, int i2) {
            return bindSdkSandboxService(intent, serviceConnection, i, (IBinder) null, str, str2, i2);
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public void killSdkSandboxClientAppProcess(IBinder iBinder) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ProcessRecord recordForAppLOSP = ActivityManagerService.this.getRecordForAppLOSP(iBinder);
                    if (recordForAppLOSP != null) {
                        recordForAppLOSP.killLocked("sdk sandbox died", 12, 27, true);
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void onUserRemoved(int i) {
            ActivityManagerService.this.mAtmInternal.onUserStopped(i);
            ActivityManagerService.this.mBatteryStatsService.onUserRemoved(i);
        }

        public void killForegroundAppsForUser(int i) {
            int i2;
            if (ActivityManagerService.this.mActivityTaskManager.getPersonaActivityHelper().notifyKillForegroundAppsForUser(i)) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    int size = ActivityManagerService.this.mProcessList.getProcessNamesLOSP().getMap().size();
                    for (int i3 = 0; i3 < size; i3++) {
                        SparseArray sparseArray = (SparseArray) ActivityManagerService.this.mProcessList.getProcessNamesLOSP().getMap().valueAt(i3);
                        int size2 = sparseArray.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            ProcessRecord processRecord = (ProcessRecord) sparseArray.valueAt(i4);
                            if (!processRecord.isPersistent() && (processRecord.isRemoved() || (processRecord.userId == i && processRecord.mState.hasForegroundActivities()))) {
                                arrayList.add(processRecord);
                            }
                        }
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterProcLockedSection();
            int size3 = arrayList.size();
            if (size3 > 0) {
                ActivityManagerService activityManagerService = ActivityManagerService.this;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService) {
                    for (i2 = 0; i2 < size3; i2++) {
                        try {
                            ActivityManagerService.this.mProcessList.removeProcessLocked((ProcessRecord) arrayList.get(i2), false, true, 13, 9, "kill all fg");
                        } catch (Throwable th2) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            throw th2;
                        }
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
            }
        }

        public void setPendingIntentAllowlistDuration(IIntentSender iIntentSender, IBinder iBinder, long j, int i, int i2, String str) {
            ActivityManagerService.this.mPendingIntentController.setPendingIntentAllowlistDuration(iIntentSender, iBinder, j, i, i2, str);
        }

        public int getPendingIntentFlags(IIntentSender iIntentSender) {
            return ActivityManagerService.this.mPendingIntentController.getPendingIntentFlags(iIntentSender);
        }

        public int[] getStartedUserIds() {
            return ActivityManagerService.this.mUserController.getStartedUserArray();
        }

        public void setPendingIntentAllowBgActivityStarts(IIntentSender iIntentSender, IBinder iBinder, int i) {
            if (!(iIntentSender instanceof PendingIntentRecord)) {
                Slog.w("ActivityManager", "setPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: " + iIntentSender);
                return;
            }
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ((PendingIntentRecord) iIntentSender).setAllowBgActivityStarts(iBinder, i);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void clearPendingIntentAllowBgActivityStarts(IIntentSender iIntentSender, IBinder iBinder) {
            if (!(iIntentSender instanceof PendingIntentRecord)) {
                Slog.w("ActivityManager", "clearPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: " + iIntentSender);
                return;
            }
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ((PendingIntentRecord) iIntentSender).clearAllowBgActivityStarts(iBinder);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void setDeviceIdleAllowlist(int[] iArr, int[] iArr2) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
                    ActivityManagerService.boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            ActivityManagerService activityManagerService2 = ActivityManagerService.this;
                            activityManagerService2.mDeviceIdleAllowlist = iArr;
                            activityManagerService2.mDeviceIdleExceptIdleAllowlist = iArr2;
                            activityManagerService2.mAppRestrictionController.setDeviceIdleAllowlist(iArr, iArr2);
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                } catch (Throwable th2) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void updateDeviceIdleTempAllowlist(int[] iArr, int i, boolean z, long j, int i2, int i3, String str, int i4) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
                    ActivityManagerService.boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        if (iArr != null) {
                            try {
                                ActivityManagerService.this.mDeviceIdleTempAllowlist = iArr;
                            } catch (Throwable th) {
                                ActivityManagerService.resetPriorityAfterProcLockedSection();
                                throw th;
                            }
                        }
                        if (!z) {
                            ActivityManagerService.this.mFgsStartTempAllowList.removeUid(i);
                        } else if (i2 == 0) {
                            ActivityManagerService.this.mFgsStartTempAllowList.add(i, j, new FgsTempAllowListItem(j, i3, str, i4));
                        }
                        ActivityManagerService.this.setAppIdTempAllowlistStateLSP(i, z);
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                } catch (Throwable th2) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public int getUidProcessState(int i) {
            return ActivityManagerService.this.getUidState(i);
        }

        public Map getProcessesWithPendingBindMounts(int i) {
            return ActivityManagerService.this.mProcessList.getProcessesWithPendingBindMounts(i);
        }

        public boolean isSystemReady() {
            return ActivityManagerService.this.mSystemReady;
        }

        public boolean isModernQueueEnabled() {
            return ActivityManagerService.this.mEnableModernQueue;
        }

        public void enforceBroadcastOptionsPermissions(Bundle bundle, int i) {
            ActivityManagerService.this.enforceBroadcastOptionPermissionsInternal(bundle, i);
        }

        public String getPackageNameByPid(int i) {
            synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                ProcessRecord processRecord = ActivityManagerService.this.mPidsSelfLocked.get(i);
                if (processRecord == null || processRecord.info == null) {
                    return null;
                }
                return processRecord.info.packageName;
            }
        }

        public void setHasOverlayUi(int i, boolean z) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                        ProcessRecord processRecord = ActivityManagerService.this.mPidsSelfLocked.get(i);
                        if (processRecord == null) {
                            Slog.w("ActivityManager", "setHasOverlayUi called on unknown pid: " + i);
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return;
                        }
                        if (processRecord.mState.hasOverlayUi() == z) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return;
                        }
                        processRecord.mState.setHasOverlayUi(z);
                        ActivityManagerService.this.updateOomAdjLocked(processRecord, 9);
                        ActivityManagerService.resetPriorityAfterLockedSection();
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public void notifyNetworkPolicyRulesUpdated(int i, long j) {
            ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    UidRecord uidRecordLOSP = ActivityManagerService.this.mProcessList.getUidRecordLOSP(i);
                    if (uidRecordLOSP == null) {
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                        return;
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    synchronized (uidRecordLOSP.networkStateLock) {
                        if (uidRecordLOSP.lastNetworkUpdatedProcStateSeq >= j) {
                            return;
                        }
                        uidRecordLOSP.lastNetworkUpdatedProcStateSeq = j;
                        if (uidRecordLOSP.procStateSeqWaitingForNetwork != 0 && j >= uidRecordLOSP.procStateSeqWaitingForNetwork) {
                            uidRecordLOSP.networkStateLock.notifyAll();
                        }
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
        }

        public void onUidBlockedReasonsChanged(int i, int i2) {
            synchronized (ActivityManagerService.this.mUidNetworkBlockedReasons) {
                if (i2 == 0) {
                    ActivityManagerService.this.mUidNetworkBlockedReasons.delete(i);
                } else {
                    ActivityManagerService.this.mUidNetworkBlockedReasons.put(i, i2);
                }
            }
        }

        public boolean isRuntimeRestarted() {
            return ActivityManagerService.this.mSystemServiceManager.isRuntimeRestarted();
        }

        public boolean canStartMoreUsers() {
            return ActivityManagerService.this.mUserController.canStartMoreUsers();
        }

        public void setSwitchingFromSystemUserMessage(String str) {
            ActivityManagerService.this.mUserController.setSwitchingFromSystemUserMessage(str);
        }

        public void setSwitchingToSystemUserMessage(String str) {
            ActivityManagerService.this.mUserController.setSwitchingToSystemUserMessage(str);
        }

        public int getMaxRunningUsers() {
            return ActivityManagerService.this.mUserController.getMaxRunningUsers();
        }

        public boolean isUidActive(int i) {
            boolean isUidActiveLOSP;
            ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    isUidActiveLOSP = ActivityManagerService.this.isUidActiveLOSP(i);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterProcLockedSection();
            return isUidActiveLOSP;
        }

        public List getMemoryStateForProcesses() {
            ArrayList arrayList = new ArrayList();
            synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                int size = ActivityManagerService.this.mPidsSelfLocked.size();
                for (int i = 0; i < size; i++) {
                    ProcessRecord valueAt = ActivityManagerService.this.mPidsSelfLocked.valueAt(i);
                    arrayList.add(new ProcessMemoryState(valueAt.uid, valueAt.getPid(), valueAt.processName, valueAt.mState.getCurAdj(), valueAt.mServices.hasForegroundServices(), valueAt.mProfile.getCurrentHostingComponentTypes(), valueAt.mProfile.getHistoricalHostingComponentTypes()));
                }
            }
            return arrayList;
        }

        public int handleIncomingUser(int i, int i2, int i3, boolean z, int i4, String str, String str2) {
            return ActivityManagerService.this.mUserController.handleIncomingUser(i, i2, i3, z, i4, str, str2);
        }

        public void enforceCallingPermission(String str, String str2) {
            ActivityManagerService.this.enforceCallingPermission(str, str2);
        }

        public Pair getCurrentAndTargetUserIds() {
            return ActivityManagerService.this.mUserController.getCurrentAndTargetUserIds();
        }

        public int getCurrentUserId() {
            return ActivityManagerService.this.mUserController.getCurrentUserId();
        }

        public boolean isUserRunning(int i, int i2) {
            return ActivityManagerService.this.mUserController.isUserRunning(i, i2);
        }

        public void trimApplications() {
            ActivityManagerService.this.trimApplications(true, 1);
        }

        public void killProcessesForRemovedTask(ArrayList arrayList) {
            String str;
            String str2;
            if (MARsPolicyManager.getInstance().isChinaPolicyEnabled()) {
                ActiveMusicRecordFilter.getInstance().getUidListUsingAudio();
            }
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ArrayList arrayList2 = new ArrayList();
                    for (int i = 0; i < arrayList.size(); i++) {
                        WindowProcessController windowProcessController = (WindowProcessController) arrayList.get(i);
                        ProcessRecord processRecord = (ProcessRecord) windowProcessController.mOwner;
                        if (processRecord.mInfant) {
                            Slog.v("ActivityManager", "Skipped removedTask " + processRecord.processName);
                        } else if (ActivityManager.isProcStateBackground(processRecord.mState.getSetProcState()) && processRecord.mReceivers.numberOfCurReceivers() == 0 && !processRecord.mKeepSEMPrcp) {
                            if (MARsPolicyManager.MARs_ENABLE) {
                                if (MARsPolicyManager.getInstance().isAutoRunBlockedApp(processRecord.info.packageName, processRecord.userId)) {
                                    if (!arrayList2.contains(processRecord.info.packageName + "," + processRecord.userId) && (str2 = windowProcessController.mReason) != null) {
                                        if ("setFixedAspectRatioPackages".contains(str2)) {
                                            processRecord.killLocked("remove task", 10, 22, true);
                                        } else {
                                            arrayList2.add(processRecord.info.packageName + "," + processRecord.userId);
                                        }
                                        windowProcessController.mReason = null;
                                    }
                                } else {
                                    processRecord.killLocked("remove task", 10, 22, true);
                                }
                            } else {
                                processRecord.killLocked("remove task", 10, 22, true);
                            }
                        } else if (MARsPolicyManager.MARs_ENABLE) {
                            if (MARsPolicyManager.getInstance().isAutoRunBlockedApp(processRecord.info.packageName, processRecord.userId)) {
                                if (!arrayList2.contains(processRecord.info.packageName + "," + processRecord.userId) && (str = windowProcessController.mReason) != null) {
                                    if ("setFixedAspectRatioPackages".contains(str)) {
                                        processRecord.setWaitingToKill("remove task");
                                    } else {
                                        arrayList2.add(processRecord.info.packageName + "," + processRecord.userId);
                                    }
                                    windowProcessController.mReason = null;
                                }
                            } else {
                                processRecord.setWaitingToKill("remove task");
                            }
                        } else {
                            processRecord.setWaitingToKill("remove task");
                        }
                    }
                    for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                        String str3 = (String) arrayList2.get(i2);
                        if (!MARsPolicyManager.getInstance().forceRunPolicyForRecentKill(2, str3)) {
                            MARsPolicyManager.getInstance().forceStopForRecentKill(str3);
                        }
                    }
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        ProcessRecord processRecord2 = (ProcessRecord) ((WindowProcessController) arrayList.get(i3)).mOwner;
                        ActivityManagerService.mRecentKillList.add(processRecord2.info.packageName + "," + processRecord2.uid);
                        if (ActivityManagerService.mRecentKillList.size() > 50) {
                            ActivityManagerService.mRecentKillList.remove(0);
                        }
                        Slog.d("ActivityManager", "[SD] user menu kill listen remove action name:" + processRecord2.info.packageName + " uid:" + processRecord2.info.uid);
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void killProcess(String str, int i, String str2) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ProcessRecord processRecordLocked = ActivityManagerService.this.getProcessRecordLocked(str, i);
                    if (processRecordLocked != null) {
                        ActivityManagerService.this.mProcessList.removeProcessLocked(processRecordLocked, false, true, 13, str2);
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public boolean hasRunningActivity(final int i, final String str) {
            boolean z;
            if (str == null) {
                return false;
            }
            ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    z = ActivityManagerService.this.mProcessList.searchEachLruProcessesLOSP(true, new Function() { // from class: com.android.server.am.ActivityManagerService$LocalService$$ExternalSyntheticLambda0
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            Boolean lambda$hasRunningActivity$0;
                            lambda$hasRunningActivity$0 = ActivityManagerService.LocalService.lambda$hasRunningActivity$0(i, str, (ProcessRecord) obj);
                            return lambda$hasRunningActivity$0;
                        }
                    }) != null;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterProcLockedSection();
            return z;
        }

        public static /* synthetic */ Boolean lambda$hasRunningActivity$0(int i, String str, ProcessRecord processRecord) {
            if (processRecord.uid == i && processRecord.getWindowProcessController().hasRunningActivity(str)) {
                return Boolean.TRUE;
            }
            return null;
        }

        public void updateOomAdj(int i) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.updateOomAdjLocked(i);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void updateCpuStats() {
            ActivityManagerService.this.updateCpuStats();
        }

        public void updateBatteryStats(ComponentName componentName, int i, int i2, boolean z) {
            ActivityManagerService.this.updateBatteryStats(componentName, i, i2, z);
        }

        public void updateActivityUsageStats(ComponentName componentName, int i, int i2, IBinder iBinder, ComponentName componentName2, ActivityId activityId) {
            ActivityManagerService.this.updateActivityUsageStats(componentName, i, i2, iBinder, componentName2, activityId);
        }

        public void updateActivityUsageStatsWithIntent(ComponentName componentName, int i, int i2, IBinder iBinder, ComponentName componentName2, ActivityId activityId, Intent intent) {
            ActivityManagerService.this.updateActivityUsageStats(componentName, i, i2, iBinder, componentName2, activityId, intent);
        }

        public void updateForegroundTimeIfOnBattery(String str, int i, long j) {
            ActivityManagerService.this.mBatteryStatsService.updateForegroundTimeIfOnBattery(str, i, j);
        }

        public void sendForegroundProfileChanged(int i) {
            ActivityManagerService.this.mUserController.sendForegroundProfileChanged(i);
        }

        public boolean shouldConfirmCredentials(int i) {
            return ActivityManagerService.this.mUserController.shouldConfirmCredentials(i);
        }

        public void noteAlarmFinish(PendingIntent pendingIntent, WorkSource workSource, int i, String str) {
            ActivityManagerService.this.noteAlarmFinish(pendingIntent != null ? pendingIntent.getTarget() : null, workSource, i, str);
        }

        public void noteAlarmStart(PendingIntent pendingIntent, WorkSource workSource, int i, String str) {
            ActivityManagerService.this.noteAlarmStart(pendingIntent != null ? pendingIntent.getTarget() : null, workSource, i, str);
        }

        public void noteWakeupAlarm(PendingIntent pendingIntent, WorkSource workSource, int i, String str, String str2) {
            ActivityManagerService.this.noteWakeupAlarm(pendingIntent != null ? pendingIntent.getTarget() : null, workSource, i, str, str2);
        }

        public boolean isAppStartModeDisabled(int i, String str) {
            return ActivityManagerService.this.isAppStartModeDisabled(i, str);
        }

        public int[] getCurrentProfileIds() {
            return ActivityManagerService.this.mUserController.getCurrentProfileIds();
        }

        public UserInfo getCurrentUser() {
            return ActivityManagerService.this.mUserController.getCurrentUser();
        }

        public void ensureNotSpecialUser(int i) {
            ActivityManagerService.this.mUserController.ensureNotSpecialUser(i);
        }

        public boolean isCurrentProfile(int i) {
            return ActivityManagerService.this.mUserController.isCurrentProfile(i);
        }

        public boolean hasStartedUserState(int i) {
            return ActivityManagerService.this.mUserController.hasStartedUserState(i);
        }

        public void finishUserSwitch(Object obj) {
            ActivityManagerService.this.mUserController.finishUserSwitch((UserState) obj);
        }

        public void scheduleAppGcs() {
            synchronized (ActivityManagerService.this.mAppProfiler.mProfilerLock) {
                ActivityManagerService.this.mAppProfiler.scheduleAppGcsLPf();
            }
        }

        public int getTaskIdForActivity(IBinder iBinder, boolean z) {
            return ActivityManagerService.this.getTaskForActivity(iBinder, z);
        }

        public ActivityPresentationInfo getActivityPresentationInfo(IBinder iBinder) {
            ActivityClient activityClient = ActivityClient.getInstance();
            return new ActivityPresentationInfo(activityClient.getTaskForActivity(iBinder, false), activityClient.getDisplayId(iBinder), ActivityManagerService.this.mAtmInternal.getActivityName(iBinder));
        }

        public void setBooting(boolean z) {
            ActivityManagerService.this.mBooting = z;
        }

        public boolean isBooting() {
            return ActivityManagerService.this.mBooting;
        }

        public void setBooted(boolean z) {
            ActivityManagerService.this.mBooted = z;
        }

        public boolean isBooted() {
            return ActivityManagerService.this.mBooted;
        }

        public void finishBooting() {
            ActivityManagerService.this.finishBooting();
        }

        public void tempAllowlistForPendingIntent(int i, int i2, int i3, long j, int i4, int i5, String str) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.tempAllowlistForPendingIntentLocked(i, i2, i3, j, i4, i5, str);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public int broadcastIntentInPackage(IApplicationThread iApplicationThread, String str, String str2, int i, int i2, int i3, Intent intent, String str3, IApplicationThread iApplicationThread2, IIntentReceiver iIntentReceiver, int i4, String str4, Bundle bundle, String str5, Bundle bundle2, boolean z, boolean z2, int i5, BackgroundStartPrivileges backgroundStartPrivileges, int[] iArr) {
            int broadcastIntentInPackage;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    broadcastIntentInPackage = ActivityManagerService.this.broadcastIntentInPackage(iApplicationThread, str, str2, i, i2, i3, intent, str3, ActivityManagerService.this.getRecordForAppLOSP(iApplicationThread2), iIntentReceiver, i4, str4, bundle, str5, bundle2, z, z2, i5, backgroundStartPrivileges, iArr);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return broadcastIntentInPackage;
        }

        public int broadcastIntent(Intent intent, IIntentReceiver iIntentReceiver, String[] strArr, boolean z, int i, int[] iArr, BiFunction biFunction, Bundle bundle) {
            int broadcastIntentLocked;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    Intent verifyBroadcastLocked = ActivityManagerService.this.verifyBroadcastLocked(intent);
                    int callingPid = Binder.getCallingPid();
                    int callingUid = Binder.getCallingUid();
                    long clearCallingIdentity = Binder.clearCallingIdentity();
                    try {
                        broadcastIntentLocked = ActivityManagerService.this.broadcastIntentLocked(null, null, null, verifyBroadcastLocked, null, null, iIntentReceiver, 0, null, null, strArr, null, null, -1, bundle, z, false, callingPid, callingUid, callingUid, callingPid, i, BackgroundStartPrivileges.NONE, iArr, biFunction, false);
                    } finally {
                        Binder.restoreCallingIdentity(clearCallingIdentity);
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return broadcastIntentLocked;
        }

        public int broadcastIntentWithCallback(Intent intent, IIntentReceiver iIntentReceiver, String[] strArr, int i, int[] iArr, BiFunction biFunction, Bundle bundle) {
            return broadcastIntent(intent, iIntentReceiver, strArr, !isModernQueueEnabled(), i, iArr, biFunction, bundle);
        }

        public ComponentName startServiceInPackage(IApplicationThread iApplicationThread, int i, Intent intent, String str, boolean z, String str2, String str3, int i2, BackgroundStartPrivileges backgroundStartPrivileges) {
            ComponentName startServiceLocked;
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                if (Trace.isTagEnabled(64L)) {
                    Trace.traceBegin(64L, "startServiceInPackage: intent=" + intent + ", caller=" + str2 + ", fgRequired=" + z);
                }
                ActivityManagerService activityManagerService = ActivityManagerService.this;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService) {
                    try {
                        startServiceLocked = ActivityManagerService.this.mServices.startServiceLocked(iApplicationThread, intent, str, -1, i, z, str2, str3, i2, backgroundStartPrivileges);
                    } catch (Throwable th) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
                return startServiceLocked;
            } finally {
                Trace.traceEnd(64L);
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }

        public void disconnectActivityFromServices(Object obj) {
            final ActivityServiceConnectionsHolder activityServiceConnectionsHolder = (ActivityServiceConnectionsHolder) obj;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
                    ActivityManagerService.boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            activityServiceConnectionsHolder.forEachConnection(new Consumer() { // from class: com.android.server.am.ActivityManagerService$LocalService$$ExternalSyntheticLambda1
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj2) {
                                    ActivityManagerService.LocalService.this.lambda$disconnectActivityFromServices$1(activityServiceConnectionsHolder, obj2);
                                }
                            });
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                } catch (Throwable th2) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public /* synthetic */ void lambda$disconnectActivityFromServices$1(ActivityServiceConnectionsHolder activityServiceConnectionsHolder, Object obj) {
            ActivityManagerService.this.mServices.removeConnectionLocked((ConnectionRecord) obj, null, activityServiceConnectionsHolder, false);
        }

        public void cleanUpServices(int i, ComponentName componentName, Intent intent) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.mServices.cleanUpServices(i, componentName, intent);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public ActivityInfo getActivityInfoForUser(ActivityInfo activityInfo, int i) {
            return ActivityManagerService.this.getActivityInfoForUser(activityInfo, i);
        }

        public void ensureBootCompleted() {
            ActivityManagerService.this.ensureBootCompleted();
        }

        public void updateOomLevelsForDisplay(int i) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService activityManagerService2 = ActivityManagerService.this;
                    WindowManagerService windowManagerService = activityManagerService2.mWindowManager;
                    if (windowManagerService != null) {
                        activityManagerService2.mProcessList.applyDisplaySize(windowManagerService);
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public boolean isActivityStartsLoggingEnabled() {
            return ActivityManagerService.this.mConstants.mFlagActivityStartsLoggingEnabled;
        }

        public boolean isBackgroundActivityStartsEnabled() {
            return ActivityManagerService.this.mConstants.mFlagBackgroundActivityStartsEnabled;
        }

        public BackgroundStartPrivileges getBackgroundStartPrivileges(int i) {
            return ActivityManagerService.this.getBackgroundStartPrivileges(i);
        }

        public boolean canScheduleUserInitiatedJobs(int i, int i2, String str) {
            return ActivityManagerService.this.canScheduleUserInitiatedJobs(i, i2, str);
        }

        public void reportCurKeyguardUsageEvent(boolean z) {
            ActivityManagerService.this.reportGlobalUsageEvent(z ? 17 : 18);
        }

        public void monitor() {
            ActivityManagerService.this.monitor();
        }

        public long inputDispatchingTimedOut(int i, boolean z, TimeoutRecord timeoutRecord) {
            return ActivityManagerService.this.inputDispatchingTimedOut(i, z, timeoutRecord);
        }

        public boolean inputDispatchingTimedOut(Object obj, String str, ApplicationInfo applicationInfo, String str2, Object obj2, boolean z, TimeoutRecord timeoutRecord) {
            return ActivityManagerService.this.inputDispatchingTimedOut((ProcessRecord) obj, str, applicationInfo, str2, (WindowProcessController) obj2, z, timeoutRecord);
        }

        public void inputDispatchingResumed(int i) {
            ProcessRecord processRecord;
            synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                processRecord = ActivityManagerService.this.mPidsSelfLocked.get(i);
            }
            if (processRecord != null) {
                ActivityManagerService.this.mAppErrors.handleDismissAnrDialogs(processRecord);
            }
        }

        public void rescheduleAnrDialog(Object obj) {
            Message obtain = Message.obtain();
            obtain.what = 2;
            obtain.obj = (AppNotRespondingDialog.Data) obj;
            ActivityManagerService.this.mUiHandler.sendMessageDelayed(obtain, InputConstants.DEFAULT_DISPATCHING_TIMEOUT_MILLIS);
        }

        public void broadcastGlobalConfigurationChanged(int i, boolean z) {
            int i2;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    Intent intent = new Intent("android.intent.action.CONFIGURATION_CHANGED");
                    intent.addFlags(1881145344);
                    Bundle bundle = new BroadcastOptions().setDeliveryGroupPolicy(1).setDeferralPolicy(2).toBundle();
                    ActivityManagerService activityManagerService2 = ActivityManagerService.this;
                    int i3 = ActivityManagerService.MY_PID;
                    activityManagerService2.broadcastIntentLocked(null, null, null, intent, null, null, 0, null, null, null, null, null, -1, bundle, false, false, i3, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                    if ((i & 4) != 0) {
                        Intent intent2 = new Intent("android.intent.action.LOCALE_CHANGED");
                        intent2.addFlags(18876416);
                        if (z || !ActivityManagerService.this.mProcessesReady) {
                            intent2.addFlags(1073741824);
                        }
                        BroadcastOptions makeBasic = BroadcastOptions.makeBasic();
                        makeBasic.setTemporaryAppAllowlist(ActivityManagerService.this.mInternal.getBootTimeTempAllowListDuration(), 0, 206, "");
                        i2 = 1;
                        makeBasic.setDeliveryGroupPolicy(1);
                        makeBasic.setDeferralPolicy(2);
                        ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent2, null, null, 0, null, null, null, null, null, -1, makeBasic.toBundle(), false, false, i3, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                    } else {
                        i2 = 1;
                    }
                    if (!z && isSplitConfigurationChange(i)) {
                        Intent intent3 = new Intent("android.intent.action.SPLIT_CONFIGURATION_CHANGED");
                        intent3.addFlags(553648128);
                        String[] strArr = new String[i2];
                        strArr[0] = "android.permission.INSTALL_PACKAGES";
                        ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent3, null, null, 0, null, null, strArr, null, null, -1, null, false, false, i3, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void broadcastCloseSystemDialogs(String str) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    Intent intent = new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS");
                    intent.addFlags(1342177280);
                    if (str != null) {
                        intent.putExtra("reason", str);
                    }
                    BroadcastOptions deferralPolicy = new BroadcastOptions().setDeliveryGroupPolicy(1).setDeferralPolicy(2);
                    if (str != null) {
                        deferralPolicy.setDeliveryGroupMatchingKey("android.intent.action.CLOSE_SYSTEM_DIALOGS", str);
                    }
                    ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent, null, null, 0, null, null, null, null, null, -1, deferralPolicy.toBundle(), false, false, -1, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void broadcastCloseSystemDialogs(String str, int i) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    Intent intent = new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS");
                    intent.addFlags(1342177280);
                    if (str != null) {
                        intent.putExtra("reason", str);
                    }
                    if (i != -1) {
                        intent.putExtra("displayId", i);
                    }
                    ActivityManagerService.this.broadcastIntentLocked(null, null, null, intent, null, null, 0, null, null, null, null, null, -1, null, false, false, -1, 1000, Binder.getCallingUid(), Binder.getCallingPid(), -1);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void appNotResponding(String str, int i, TimeoutRecord timeoutRecord) {
            ActivityManagerService.this.appNotResponding(str, i, timeoutRecord);
        }

        public void killAllBackgroundProcessesExcept(int i, int i2) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.killAllBackgroundProcessesExcept(i, i2);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void setLongLiveProcess(int i) {
            ActivityManagerService.this.mExt.setLongLiveProcess(i);
        }

        public void startProcess(String str, ApplicationInfo applicationInfo, boolean z, boolean z2, String str2, ComponentName componentName) {
            try {
                if (Trace.isTagEnabled(64L)) {
                    Trace.traceBegin(64L, "startProcess:" + str);
                }
                ActivityManagerService activityManagerService = ActivityManagerService.this;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService) {
                    try {
                        ActivityManagerService.this.startProcessLocked(str, applicationInfo, z, 0, new HostingRecord(str2, componentName, z2), 1, false, false);
                    } catch (Throwable th) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
            } finally {
                Trace.traceEnd(64L);
            }
        }

        public void setDebugFlagsForStartingActivity(ActivityInfo activityInfo, int i, ProfilerInfo profilerInfo, Object obj) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    synchronized (obj) {
                        if ((i & 2) != 0) {
                            try {
                                ActivityManagerService.this.setDebugApp(activityInfo.processName, true, false, (i & 16) != 0);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if ((i & 8) != 0) {
                            ActivityManagerService.this.setNativeDebuggingAppLocked(activityInfo.applicationInfo, activityInfo.processName);
                        }
                        if ((i & 4) != 0) {
                            ActivityManagerService.this.setTrackAllocationApp(activityInfo.applicationInfo, activityInfo.processName);
                        }
                        if (profilerInfo != null) {
                            ActivityManagerService.this.setProfileApp(activityInfo.applicationInfo, activityInfo.processName, profilerInfo, null);
                        }
                        obj.notify();
                    }
                } catch (Throwable th2) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public int getStorageMountMode(int i, int i2) {
            int mountMode;
            if (i2 == 2000 || i2 == 0) {
                return 1;
            }
            synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                ProcessRecord processRecord = ActivityManagerService.this.mPidsSelfLocked.get(i);
                mountMode = processRecord == null ? 0 : processRecord.getMountMode();
            }
            return mountMode;
        }

        public boolean isAppForeground(int i) {
            return ActivityManagerService.this.isAppForeground(i);
        }

        public boolean isAppBad(String str, int i) {
            return ActivityManagerService.this.isAppBad(str, i);
        }

        public void clearPendingBackup(int i) {
            ActivityManagerService.this.clearPendingBackup(i);
        }

        public void prepareForPossibleShutdown() {
            ActivityManagerService.this.prepareForPossibleShutdown();
        }

        public boolean hasRunningForegroundService(int i, int i2) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    UidRecord uidRecord = ActivityManagerService.this.mProcessList.mActiveUids.get(i);
                    if (uidRecord == null) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        return false;
                    }
                    for (int numOfProcs = uidRecord.getNumOfProcs() - 1; numOfProcs >= 0; numOfProcs--) {
                        if (uidRecord.getProcessRecordByIndex(numOfProcs).mServices.containsAnyForegroundServiceTypes(i2)) {
                            ActivityManagerService.resetPriorityAfterLockedSection();
                            return true;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    return false;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
        }

        public boolean hasForegroundServiceNotification(String str, int i, String str2) {
            boolean hasForegroundServiceNotificationLocked;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    hasForegroundServiceNotificationLocked = ActivityManagerService.this.mServices.hasForegroundServiceNotificationLocked(str, i, str2);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return hasForegroundServiceNotificationLocked;
        }

        public ActivityManagerInternal.ServiceNotificationPolicy applyForegroundServiceNotification(Notification notification, String str, int i, String str2, int i2) {
            ActivityManagerInternal.ServiceNotificationPolicy applyForegroundServiceNotificationLocked;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    applyForegroundServiceNotificationLocked = ActivityManagerService.this.mServices.applyForegroundServiceNotificationLocked(notification, str, i, str2, i2);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return applyForegroundServiceNotificationLocked;
        }

        public void onForegroundServiceNotificationUpdate(boolean z, Notification notification, int i, String str, int i2) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.mServices.onForegroundServiceNotificationUpdateLocked(z, notification, i, str, i2);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void stopAppForUser(String str, int i) {
            ActivityManagerService.this.stopAppForUserInternal(str, i);
        }

        public void registerProcessObserver(IProcessObserver iProcessObserver) {
            ActivityManagerService.this.registerProcessObserver(iProcessObserver);
        }

        public void unregisterProcessObserver(IProcessObserver iProcessObserver) {
            ActivityManagerService.this.unregisterProcessObserver(iProcessObserver);
        }

        public int getInstrumentationSourceUid(int i) {
            ApplicationInfo applicationInfo;
            ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    for (int size = ActivityManagerService.this.mActiveInstrumentation.size() - 1; size >= 0; size--) {
                        ActiveInstrumentation activeInstrumentation = (ActiveInstrumentation) ActivityManagerService.this.mActiveInstrumentation.get(size);
                        if (!activeInstrumentation.mFinished && (applicationInfo = activeInstrumentation.mTargetInfo) != null && applicationInfo.uid == i) {
                            int i2 = activeInstrumentation.mSourceUid;
                            ActivityManagerService.resetPriorityAfterProcLockedSection();
                            return i2;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    return -1;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
        }

        public void setDeviceOwnerUid(int i) {
            ActivityManagerService.this.mDeviceOwnerUid = i;
        }

        public boolean isDeviceOwner(int i) {
            return i >= 0 && ActivityManagerService.this.mDeviceOwnerUid == i;
        }

        public void setProfileOwnerUid(ArraySet arraySet) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.mProfileOwnerUids = arraySet;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public boolean isProfileOwner(int i) {
            boolean z;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    z = ActivityManagerService.this.mProfileOwnerUids != null && ActivityManagerService.this.mProfileOwnerUids.indexOf(Integer.valueOf(i)) >= 0;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return z;
        }

        public void setCompanionAppUids(int i, Set set) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.mCompanionAppUidsMap.put(Integer.valueOf(i), set);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public boolean isAssociatedCompanionApp(int i, int i2) {
            Set set = (Set) ActivityManagerService.this.mCompanionAppUidsMap.get(Integer.valueOf(i));
            if (set == null) {
                return false;
            }
            return set.contains(Integer.valueOf(i2));
        }

        public void addPendingTopUid(int i, int i2, IApplicationThread iApplicationThread) {
            boolean add = ActivityManagerService.this.mPendingStartActivityUids.add(i, i2);
            if (add) {
                ActivityManagerService.this.mOomAdjuster.mCachedAppOptimizer.unfreezeProcess(i2, 1);
            }
            if (!add || ActivityManagerService.this.mNetworkPolicyUidObserver == null) {
                return;
            }
            try {
                long nextProcStateSeq = ActivityManagerService.this.mProcessList.getNextProcStateSeq();
                ActivityManagerService.this.mNetworkPolicyUidObserver.onUidStateChanged(i, 2, nextProcStateSeq, 63);
                if (iApplicationThread == null || !shouldWaitForNetworkRulesUpdate(i)) {
                    return;
                }
                iApplicationThread.setNetworkBlockSeq(nextProcStateSeq);
            } catch (RemoteException e) {
                Slog.d("ActivityManager", "Error calling setNetworkBlockSeq", e);
            }
        }

        public final boolean shouldWaitForNetworkRulesUpdate(int i) {
            boolean z;
            synchronized (ActivityManagerService.this.mUidNetworkBlockedReasons) {
                z = false;
                int i2 = ActivityManagerService.this.mUidNetworkBlockedReasons.get(i, 0);
                if (i2 != 0 && NetworkPolicyManagerInternal.updateBlockedReasonsWithProcState(i2, 2) == 0) {
                    z = true;
                }
            }
            return z;
        }

        public void deletePendingTopUid(int i, long j) {
            ActivityManagerService.this.mPendingStartActivityUids.delete(i, j);
        }

        public boolean isPendingTopUid(int i) {
            return ActivityManagerService.this.mPendingStartActivityUids.isPendingTopUid(i);
        }

        public Intent getIntentForIntentSender(IIntentSender iIntentSender) {
            return ActivityManagerService.this.getIntentForIntentSender(iIntentSender);
        }

        public PendingIntent getPendingIntentActivityAsApp(int i, Intent intent, int i2, Bundle bundle, String str, int i3) {
            return getPendingIntentActivityAsApp(i, new Intent[]{intent}, i2, bundle, str, i3);
        }

        public PendingIntent getPendingIntentActivityAsApp(int i, Intent[] intentArr, int i2, Bundle bundle, String str, int i3) {
            if (((i2 & 67108864) != 0) == ((i2 & 33554432) != 0)) {
                throw new IllegalArgumentException("Must set exactly one of FLAG_IMMUTABLE or FLAG_MUTABLE");
            }
            Context context = ActivityManagerService.this.mContext;
            ContentResolver contentResolver = context.getContentResolver();
            int length = intentArr.length;
            String[] strArr = new String[length];
            for (int i4 = 0; i4 < length; i4++) {
                Intent intent = intentArr[i4];
                strArr[i4] = intent.resolveTypeIfNeeded(contentResolver);
                intent.migrateExtraStreamToClipData(context);
                intent.prepareToLeaveProcess(context);
            }
            IIntentSender intentSenderWithFeatureAsApp = ActivityManagerService.this.getIntentSenderWithFeatureAsApp(2, str, context.getAttributionTag(), null, null, i, intentArr, strArr, i2, bundle, UserHandle.getUserId(i3), i3);
            if (intentSenderWithFeatureAsApp != null) {
                return new PendingIntent(intentSenderWithFeatureAsApp);
            }
            return null;
        }

        public long getBootTimeTempAllowListDuration() {
            return ActivityManagerService.this.mConstants.mBootTimeTempAllowlistDuration;
        }

        public void registerAnrController(AnrController anrController) {
            ActivityManagerService.this.mActivityTaskManager.registerAnrController(anrController);
        }

        public void unregisterAnrController(AnrController anrController) {
            ActivityManagerService.this.mActivityTaskManager.unregisterAnrController(anrController);
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public boolean canStartForegroundService(int i, int i2, String str) {
            boolean canStartForegroundServiceLocked;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    canStartForegroundServiceLocked = ActivityManagerService.this.mServices.canStartForegroundServiceLocked(i, i2, str);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return canStartForegroundServiceLocked;
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public void tempAllowWhileInUsePermissionInFgs(int i, long j) {
            ActivityManagerService.this.mFgsWhileInUseTempAllowList.add(i, j, "");
        }

        public boolean isTempAllowlistedForFgsWhileInUse(int i) {
            return ActivityManagerService.this.mFgsWhileInUseTempAllowList.isAllowed(i);
        }

        @Override // com.android.server.am.ActivityManagerLocal
        public boolean canAllowWhileInUsePermissionInFgs(int i, int i2, String str) {
            boolean canAllowWhileInUsePermissionInFgsLocked;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    canAllowWhileInUsePermissionInFgsLocked = ActivityManagerService.this.mServices.canAllowWhileInUsePermissionInFgsLocked(i, i2, str);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return canAllowWhileInUsePermissionInFgsLocked;
        }

        public int getPushMessagingOverQuotaBehavior() {
            int i;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    i = ActivityManagerService.this.mConstants.mPushMessagingOverQuotaBehavior;
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return i;
        }

        public int getServiceStartForegroundTimeout() {
            return ActivityManagerService.this.mConstants.mServiceStartForegroundTimeoutMs;
        }

        public int getUidCapability(int i) {
            int curCapability;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    UidRecord uidRecordLOSP = ActivityManagerService.this.mProcessList.getUidRecordLOSP(i);
                    if (uidRecordLOSP == null) {
                        throw new IllegalArgumentException("uid record for " + i + " not found");
                    }
                    curCapability = uidRecordLOSP.getCurCapability();
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return curCapability;
        }

        public List getIsolatedProcesses(int i) {
            List isolatedProcessesLocked;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    isolatedProcessesLocked = ActivityManagerService.this.mProcessList.getIsolatedProcessesLocked(i);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return isolatedProcessesLocked;
        }

        public int sendIntentSender(IIntentSender iIntentSender, IBinder iBinder, int i, Intent intent, String str, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
            return ActivityManagerService.this.sendIntentSender(null, iIntentSender, iBinder, i, intent, str, iIntentReceiver, str2, bundle);
        }

        public int sendIntentSender(IIntentSender iIntentSender, IBinder iBinder, int i, Intent intent, String str, IIntentReceiver iIntentReceiver, String str2, Bundle bundle, int i2, int i3) {
            return ActivityManagerService.this.sendIntentSender(null, iIntentSender, iBinder, i, intent, str, iIntentReceiver, str2, bundle, i2, i3);
        }

        public void setVoiceInteractionManagerProvider(ActivityManagerInternal.VoiceInteractionManagerProvider voiceInteractionManagerProvider) {
            ActivityManagerService.this.setVoiceInteractionManagerProvider(voiceInteractionManagerProvider);
        }

        public void setStopUserOnSwitch(int i) {
            ActivityManagerService.this.setStopUserOnSwitch(i);
        }

        public int getRestrictionLevel(int i) {
            return ActivityManagerService.this.mAppRestrictionController.getRestrictionLevel(i);
        }

        public int getRestrictionLevel(String str, int i) {
            return ActivityManagerService.this.mAppRestrictionController.getRestrictionLevel(str, i);
        }

        public boolean isBgAutoRestrictedBucketFeatureFlagEnabled() {
            return ActivityManagerService.this.mAppRestrictionController.isBgAutoRestrictedBucketFeatureFlagEnabled();
        }

        public void addAppBackgroundRestrictionListener(ActivityManagerInternal.AppBackgroundRestrictionListener appBackgroundRestrictionListener) {
            ActivityManagerService.this.mAppRestrictionController.addAppBackgroundRestrictionListener(appBackgroundRestrictionListener);
        }

        public void addForegroundServiceStateListener(ActivityManagerInternal.ForegroundServiceStateListener foregroundServiceStateListener) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.mForegroundServiceStateListeners.add(foregroundServiceStateListener);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void addBroadcastEventListener(ActivityManagerInternal.BroadcastEventListener broadcastEventListener) {
            ActivityManagerService.this.mBroadcastEventListeners.add(broadcastEventListener);
        }

        public void addBindServiceEventListener(ActivityManagerInternal.BindServiceEventListener bindServiceEventListener) {
            ActivityManagerService.this.mBindServiceEventListeners.add(bindServiceEventListener);
        }

        public void restart() {
            ActivityManagerService.this.restart();
        }

        public void registerNetworkPolicyUidObserver(IUidObserver iUidObserver, int i, int i2, String str) {
            ActivityManagerService.this.mNetworkPolicyUidObserver = iUidObserver;
            ActivityManagerService.this.mUidObserverController.register(iUidObserver, i, i2, str, Binder.getCallingUid(), null);
        }

        public void setUpdateConfigurationCallerLocked(int i) {
            ActivityManagerService.this.mExt.setUpdateConfigurationCallerLocked(i);
        }

        public void resetUpdateConfigurationCallerLocked() {
            ActivityManagerService.this.mExt.resetUpdateConfigurationCallerLocked();
        }

        public void addToLocaleChangedHistoryLocked(LocaleList localeList, LocaleList localeList2, boolean z) {
            ActivityManagerService.this.mExt.addToLocaleChangedHistoryLocked(localeList, localeList2, z);
        }

        public boolean startForegroundServiceDelegate(ForegroundServiceDelegationOptions foregroundServiceDelegationOptions, ServiceConnection serviceConnection) {
            boolean startForegroundServiceDelegateLocked;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    startForegroundServiceDelegateLocked = ActivityManagerService.this.mServices.startForegroundServiceDelegateLocked(foregroundServiceDelegationOptions, serviceConnection);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return startForegroundServiceDelegateLocked;
        }

        public void stopForegroundServiceDelegate(ForegroundServiceDelegationOptions foregroundServiceDelegationOptions) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.mServices.stopForegroundServiceDelegateLocked(foregroundServiceDelegationOptions);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void stopForegroundServiceDelegate(ServiceConnection serviceConnection) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.mServices.stopForegroundServiceDelegateLocked(serviceConnection);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public ArraySet getClientPackages(String str) {
            ArraySet clientPackagesLocked;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    clientPackagesLocked = ActivityManagerService.this.mServices.getClientPackagesLocked(str);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
            return clientPackagesLocked;
        }

        public IUnsafeIntentStrictModeCallback getRegisteredStrictModeCallback(int i) {
            return (IUnsafeIntentStrictModeCallback) ActivityManagerService.this.mStrictModeCallbacks.get(i);
        }

        public void unregisterStrictModeCallback(int i) {
            ActivityManagerService.this.mStrictModeCallbacks.remove(i);
        }

        public boolean startProfileEvenWhenDisabled(int i) {
            return ActivityManagerService.this.mUserController.startProfile(i, true, null);
        }

        public void logFgsApiBegin(int i, int i2, int i3) {
            synchronized (this) {
                ActivityManagerService.this.mServices.logFgsApiBeginLocked(i, i2, i3);
            }
        }

        public void logFgsApiEnd(int i, int i2, int i3) {
            synchronized (this) {
                ActivityManagerService.this.mServices.logFgsApiEndLocked(i, i2, i3);
            }
        }

        public void notifyMediaProjectionEvent(int i, IBinder iBinder, int i2) {
            ActivityManagerService.this.notifyMediaProjectionEvent(i, iBinder, i2);
        }

        public StatsEvent getCachedAppsHighWatermarkStats(int i, boolean z) {
            return ActivityManagerService.this.mAppProfiler.mCachedAppsWatermarkData.getCachedAppsHighWatermarkStats(i, z);
        }

        public boolean hasMetaData(String str, String str2) {
            return ActivityManagerService.this.mExt.hasMetaData(str, str2);
        }

        public void killPackageProcesses(String str, int i, int i2, String str2, Runnable runnable, Runnable runnable2) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
                    ActivityManagerService.boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            synchronized (ActivityManagerService.this.mWindowManager.getWindowManagerLock()) {
                                runnable.run();
                                ActivityManagerService.this.mProcessList.killPackageProcessesLSP(str, i, i2, 0, false, true, true, false, true, false, 13, 0, str2);
                                runnable2.run();
                            }
                        } catch (Throwable th) {
                            ActivityManagerService.resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                } catch (Throwable th2) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void killAllBackgroundProcessesExcept(int i, int i2, Bundle bundle) {
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    ActivityManagerService.this.mExt.killAllBackgroundProcessesExcept(i, i2, bundle);
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void startProcess(String str, ApplicationInfo applicationInfo, boolean z, boolean z2, String str2, ComponentName componentName, int i, int i2) {
            if (i != -1) {
                killProcessForDex(i, i2, "proc_display_changed");
            }
            if (i2 == 2 && "top-activity".equals(str2)) {
                str2 = str2 + "-on-dex";
            }
            startProcess(str, applicationInfo, z, z2, str2, componentName);
        }

        public void killProcessForDex(int i, int i2, String str) {
            ProcessRecord processRecord;
            ActivityManagerService activityManagerService = ActivityManagerService.this;
            ActivityManagerService.boostPriorityForLockedSection();
            synchronized (activityManagerService) {
                try {
                    synchronized (ActivityManagerService.this.mPidsSelfLocked) {
                        processRecord = ActivityManagerService.this.mPidsSelfLocked.get(i);
                    }
                    if (processRecord != null) {
                        processRecord.setRemoved(true);
                        processRecord.setSkipToFinishActivities(true);
                        ActivityManagerService.this.mProcessList.removeProcessLocked(processRecord, false, false, 13, str);
                        processRecord.setSkipToFinishActivities(false);
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterLockedSection();
        }

        public void killProcessWhenDexExit() {
            ActivityManagerService.this.mExt.killProcessWhenDexExit();
        }

        public void cancelKillProcessWhenDexExit() {
            ActivityManagerService.this.mExt.cancelKillProcessWhenDexExit();
        }

        public void requestCustomFullBugreport() {
            ActivityManagerService.this.requestBugReportWithDescription(null, null, 0, 0L, true);
        }

        public void setHasTopUiInternal(int i, boolean z) {
            ActivityManagerService.this.setHasTopUiInternal(i, z);
        }

        public void updateTransitionPlayerPid(int i) {
            ActivityManagerService.this.updateTransitionPlayerPid(i);
        }

        public void startProcess(String str, ApplicationInfo applicationInfo, boolean z, boolean z2, String str2, ComponentName componentName, boolean z3, int i) {
            try {
                if (Trace.isTagEnabled(64L)) {
                    Trace.traceBegin(64L, "startProcess:" + str);
                }
                ActivityManagerService activityManagerService = ActivityManagerService.this;
                ActivityManagerService.boostPriorityForLockedSection();
                synchronized (activityManagerService) {
                    try {
                        ActivityManagerService.this.startProcessLocked(str, applicationInfo, z, 0, new HostingRecord(str2, componentName, z2), 1, false, false, true, z3, i);
                    } catch (Throwable th) {
                        ActivityManagerService.resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
                ActivityManagerService.resetPriorityAfterLockedSection();
            } finally {
                Trace.traceEnd(64L);
            }
        }

        public void onPackagePausedBG(String str, String str2, boolean z, int i) {
            if (MARsPolicyManager.MARs_ENABLE) {
                MARsPolicyManager.getInstance().onPackagePausedBG(str, str2, z, i);
            }
        }

        public void onPackageResumedFG(List list, String str, String str2, boolean z, Intent intent, int i) {
            if (MARsPolicyManager.MARs_ENABLE) {
                MARsPolicyManager.getInstance().onPackageResumedFG(list, str, str2, z, intent, i);
            }
        }

        public boolean isAutoRunBlockedApp(String str, int i) {
            if (MARsPolicyManager.MARs_ENABLE) {
                return MARsPolicyManager.getInstance().isAutoRunBlockedApp(str, i);
            }
            return false;
        }

        public boolean cancelDisablePolicy(String str, int i, int i2) {
            if (MARsPolicyManager.MARs_ENABLE) {
                return MARsPolicyManager.getInstance().cancelDisablePolicy(str, i, i2);
            }
            return false;
        }

        public boolean isRestrictedPackage(ComponentName componentName, String str, int i, String str2, Intent intent, int i2) {
            if (MARsPolicyManager.MARs_ENABLE) {
                return BaseRestrictionMgr.getInstance().isRestrictedPackage(componentName, str, i, str2, intent, i2, null, 0, 0);
            }
            return false;
        }

        public void setKeyguardPkgInfo(String str, int i) {
            if (MARsPolicyManager.MARs_ENABLE) {
                MARsPolicyManager.getInstance().setKeyguardPkgInfo(str, i);
            }
        }

        public void updateBackupServicePkg(int i, boolean z) {
            MARsPolicyManager.getInstance().updateBackupServicePkg(i, z);
        }
    }

    public long inputDispatchingTimedOut(int i, boolean z, TimeoutRecord timeoutRecord) {
        ProcessRecord processRecord;
        long j;
        if (checkCallingPermission("android.permission.FILTER_EVENTS") != 0) {
            throw new SecurityException("Requires permission android.permission.FILTER_EVENTS");
        }
        timeoutRecord.mLatencyTracker.waitingOnPidLockStarted();
        synchronized (this.mPidsSelfLocked) {
            timeoutRecord.mLatencyTracker.waitingOnPidLockEnded();
            processRecord = this.mPidsSelfLocked.get(i);
        }
        if (processRecord != null) {
            j = processRecord.getInputDispatchingTimeoutMillis();
        } else {
            j = InputConstants.DEFAULT_DISPATCHING_TIMEOUT_MILLIS;
        }
        if (inputDispatchingTimedOut(processRecord, null, null, null, null, z, timeoutRecord)) {
            return 0L;
        }
        return j;
    }

    public boolean inputDispatchingTimedOut(ProcessRecord processRecord, String str, ApplicationInfo applicationInfo, String str2, WindowProcessController windowProcessController, boolean z, TimeoutRecord timeoutRecord) {
        try {
            Trace.traceBegin(64L, "inputDispatchingTimedOut()");
            if (checkCallingPermission("android.permission.FILTER_EVENTS") != 0) {
                throw new SecurityException("Requires permission android.permission.FILTER_EVENTS");
            }
            if (processRecord != null) {
                timeoutRecord.mLatencyTracker.waitingOnAMSLockStarted();
                boostPriorityForLockedSection();
                synchronized (this) {
                    try {
                        timeoutRecord.mLatencyTracker.waitingOnAMSLockEnded();
                        if (processRecord.isDebugging()) {
                            resetPriorityAfterLockedSection();
                            return false;
                        }
                        if (processRecord.getActiveInstrumentation() != null) {
                            Bundle bundle = new Bundle();
                            bundle.putString("shortMsg", "keyDispatchingTimedOut");
                            bundle.putString("longMsg", timeoutRecord.mReason);
                            finishInstrumentationLocked(processRecord, 0, bundle);
                            resetPriorityAfterLockedSection();
                            return true;
                        }
                        resetPriorityAfterLockedSection();
                        this.mAnrHelper.appNotResponding(processRecord, str, applicationInfo, str2, windowProcessController, z, timeoutRecord, true);
                    } catch (Throwable th) {
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            }
            return true;
        } finally {
            Trace.traceEnd(64L);
        }
    }

    public void waitForNetworkStateUpdate(long j) {
        int callingUid = Binder.getCallingUid();
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                UidRecord uidRecordLOSP = this.mProcessList.getUidRecordLOSP(callingUid);
                if (uidRecordLOSP == null) {
                    resetPriorityAfterProcLockedSection();
                    return;
                }
                resetPriorityAfterProcLockedSection();
                synchronized (uidRecordLOSP.networkStateLock) {
                    if (uidRecordLOSP.lastNetworkUpdatedProcStateSeq >= j) {
                        return;
                    }
                    try {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        uidRecordLOSP.procStateSeqWaitingForNetwork = j;
                        uidRecordLOSP.networkStateLock.wait(this.mConstants.mNetworkAccessTimeoutMs);
                        uidRecordLOSP.procStateSeqWaitingForNetwork = 0L;
                        long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
                        if (uptimeMillis2 >= this.mConstants.mNetworkAccessTimeoutMs) {
                            Slog.w("ActivityManager_Network", "Total time waited for network rules to get updated: " + uptimeMillis2 + ". Uid: " + callingUid + " procStateSeq: " + j + " UidRec: " + uidRecordLOSP + " validateUidRec: " + this.mUidObserverController.getValidateUidRecord(callingUid));
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public void waitForBroadcastIdle() {
        waitForBroadcastIdle(ActivityManagerDebugConfig.LOG_WRITER_INFO, false);
    }

    public void waitForBroadcastIdle(PrintWriter printWriter, boolean z) {
        enforceCallingPermission("android.permission.DUMP", "waitForBroadcastIdle()");
        if (z) {
            BroadcastLoopers.waitForIdle(printWriter);
        }
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            broadcastQueue.waitForIdle(printWriter);
        }
        printWriter.println("All broadcast queues are idle!");
        printWriter.flush();
    }

    public void waitForBroadcastBarrier() {
        waitForBroadcastBarrier(ActivityManagerDebugConfig.LOG_WRITER_INFO, false, false);
    }

    public void waitForBroadcastBarrier(PrintWriter printWriter, boolean z, boolean z2) {
        enforceCallingPermission("android.permission.DUMP", "waitForBroadcastBarrier()");
        if (z) {
            BroadcastLoopers.waitForBarrier(printWriter);
        }
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            broadcastQueue.waitForBarrier(printWriter);
        }
        if (z2) {
            waitForApplicationBarrier(printWriter);
        }
    }

    public void waitForApplicationBarrier(PrintWriter printWriter) {
        ArrayMap arrayMap;
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        int i = 0;
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        final AtomicInteger atomicInteger2 = new AtomicInteger(0);
        RemoteCallback remoteCallback = new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda1
            public final void onResult(Bundle bundle) {
                ActivityManagerService.lambda$waitForApplicationBarrier$37(atomicInteger2, atomicInteger, countDownLatch, bundle);
            }
        });
        atomicInteger.incrementAndGet();
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        ArrayMap map = this.mProcessList.getProcessNamesLOSP().getMap();
                        int size = map.size();
                        int i2 = 0;
                        while (i2 < size) {
                            SparseArray sparseArray = (SparseArray) map.valueAt(i2);
                            int size2 = sparseArray.size();
                            int i3 = i;
                            while (i3 < size2) {
                                ProcessRecord processRecord = (ProcessRecord) sparseArray.valueAt(i3);
                                IApplicationThread onewayThread = processRecord.getOnewayThread();
                                if (onewayThread != null) {
                                    arrayMap = map;
                                    this.mOomAdjuster.mCachedAppOptimizer.unfreezeTemporarily(processRecord, 15);
                                    atomicInteger.incrementAndGet();
                                    try {
                                        onewayThread.schedulePing(remoteCallback);
                                    } catch (RemoteException unused) {
                                        remoteCallback.sendResult((Bundle) null);
                                    }
                                } else {
                                    arrayMap = map;
                                }
                                i3++;
                                map = arrayMap;
                            }
                            i2++;
                            i = 0;
                        }
                    } catch (Throwable th) {
                        resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                resetPriorityAfterProcLockedSection();
            } catch (Throwable th2) {
                resetPriorityAfterLockedSection();
                throw th2;
            }
        }
        resetPriorityAfterLockedSection();
        remoteCallback.sendResult((Bundle) null);
        for (int i4 = 0; i4 < 30; i4++) {
            if (countDownLatch.await(1L, TimeUnit.SECONDS)) {
                printWriter.println("Finished application barriers!");
                printWriter.flush();
                return;
            }
            printWriter.println("Waiting for application barriers, at " + atomicInteger2.get() + " of " + atomicInteger.get() + "...");
            printWriter.flush();
        }
        printWriter.println("Gave up waiting for application barriers!");
        printWriter.flush();
    }

    public static /* synthetic */ void lambda$waitForApplicationBarrier$37(AtomicInteger atomicInteger, AtomicInteger atomicInteger2, CountDownLatch countDownLatch, Bundle bundle) {
        if (atomicInteger.incrementAndGet() == atomicInteger2.get()) {
            countDownLatch.countDown();
        }
    }

    public void waitForBroadcastDispatch(PrintWriter printWriter, Intent intent) {
        enforceCallingPermission("android.permission.DUMP", "waitForBroadcastDispatch");
        for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
            broadcastQueue.waitForDispatched(intent, printWriter);
        }
    }

    public void setIgnoreDeliveryGroupPolicy(String str) {
        Objects.requireNonNull(str);
        enforceCallingPermission("android.permission.DUMP", "waitForBroadcastBarrier()");
        synchronized (this.mDeliveryGroupPolicyIgnoredActions) {
            this.mDeliveryGroupPolicyIgnoredActions.add(str);
        }
    }

    public void clearIgnoreDeliveryGroupPolicy(String str) {
        Objects.requireNonNull(str);
        enforceCallingPermission("android.permission.DUMP", "waitForBroadcastBarrier()");
        synchronized (this.mDeliveryGroupPolicyIgnoredActions) {
            this.mDeliveryGroupPolicyIgnoredActions.remove(str);
        }
    }

    public boolean shouldIgnoreDeliveryGroupPolicy(String str) {
        boolean contains;
        if (str == null) {
            return false;
        }
        synchronized (this.mDeliveryGroupPolicyIgnoredActions) {
            contains = this.mDeliveryGroupPolicyIgnoredActions.contains(str);
        }
        return contains;
    }

    public void dumpDeliveryGroupPolicyIgnoredActions(IndentingPrintWriter indentingPrintWriter) {
        synchronized (this.mDeliveryGroupPolicyIgnoredActions) {
            indentingPrintWriter.println(this.mDeliveryGroupPolicyIgnoredActions);
        }
    }

    public void forceDelayBroadcastDelivery(String str, long j) {
        Objects.requireNonNull(str);
        Preconditions.checkArgumentNonnegative(j);
        enforceCallingPermission("android.permission.DUMP", "forceDelayBroadcastDelivery()");
        if (this.mEnableModernQueue) {
            for (BroadcastQueue broadcastQueue : this.mBroadcastQueues) {
                broadcastQueue.forceDelayBroadcastDelivery(str, j);
            }
        }
    }

    public boolean isModernBroadcastQueueEnabled() {
        enforceCallingPermission("android.permission.DUMP", "isModernBroadcastQueueEnabled()");
        return this.mEnableModernQueue;
    }

    public boolean isProcessFrozen(int i) {
        enforceCallingPermission("android.permission.DUMP", "isProcessFrozen()");
        return this.mOomAdjuster.mCachedAppOptimizer.isProcessFrozen(i);
    }

    public int getBackgroundRestrictionExemptionReason(int i) {
        enforceCallingPermission("android.permission.DEVICE_POWER", "getBackgroundRestrictionExemptionReason()");
        return this.mAppRestrictionController.getBackgroundRestrictionExemptionReason(i);
    }

    public void setBackgroundRestrictionLevel(String str, int i, int i2, int i3, int i4, int i5) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1000 && callingUid != 0 && callingUid != 2000) {
            throw new SecurityException("No permission to change app restriction level");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            this.mAppRestrictionController.applyRestrictionLevel(str, i, i3, null, this.mUsageStatsService.getAppStandbyBucket(str, i2, SystemClock.elapsedRealtime()), true, i4, i5);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public int getBackgroundRestrictionLevel(String str, int i) {
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1000 && callingUid != 0 && callingUid != 2000) {
            throw new SecurityException("Don't have permission to query app background restriction level");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mInternal.getRestrictionLevel(str, i);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void setForegroundServiceDelegate(String str, int i, boolean z, int i2, String str2) {
        long j;
        int callingUid = Binder.getCallingUid();
        if (callingUid != 1000 && callingUid != 0 && callingUid != 2000) {
            throw new SecurityException("No permission to start/stop foreground service delegate");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            boostPriorityForLockedSection();
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                synchronized (this) {
                    try {
                        ArrayList arrayList = new ArrayList();
                        synchronized (this.mPidsSelfLocked) {
                            boolean z2 = false;
                            int i3 = 0;
                            while (i3 < this.mPidsSelfLocked.size()) {
                                try {
                                    ProcessRecord valueAt = this.mPidsSelfLocked.valueAt(i3);
                                    IApplicationThread thread = valueAt.getThread();
                                    if (valueAt.uid != i || thread == null) {
                                        j = clearCallingIdentity;
                                    } else {
                                        j = clearCallingIdentity;
                                        try {
                                            arrayList.add(new ForegroundServiceDelegationOptions(this.mPidsSelfLocked.keyAt(i3), i, str, (IApplicationThread) null, false, str2, 0, i2));
                                            z2 = true;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            throw th;
                                        }
                                    }
                                    i3++;
                                    clearCallingIdentity = j;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                            long j2 = clearCallingIdentity;
                            for (int size = arrayList.size() - 1; size >= 0; size--) {
                                ForegroundServiceDelegationOptions foregroundServiceDelegationOptions = (ForegroundServiceDelegationOptions) arrayList.get(size);
                                if (z) {
                                    this.mInternal.startForegroundServiceDelegate(foregroundServiceDelegationOptions, (ServiceConnection) null);
                                } else {
                                    this.mInternal.stopForegroundServiceDelegate(foregroundServiceDelegationOptions);
                                }
                            }
                            resetPriorityAfterLockedSection();
                            if (!z2) {
                                Slog.e("ActivityManager", "setForegroundServiceDelegate can not find process for packageName:" + str + " uid:" + i);
                            }
                            Binder.restoreCallingIdentity(j2);
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        resetPriorityAfterLockedSection();
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Throwable th6) {
            th = th6;
            Binder.restoreCallingIdentity(clearCallingIdentity);
            throw th;
        }
    }

    public void refreshSettingsCache() {
        this.mCoreSettingsObserver.onChange(true);
    }

    public final void ensureAgentBinding() {
        KnoxProxyManagerInternal knoxProxyManagerInternal = (KnoxProxyManagerInternal) LocalServices.getService(KnoxProxyManagerInternal.class);
        if (knoxProxyManagerInternal == null) {
            return;
        }
        knoxProxyManagerInternal.ensureProxyAgentBindingIfRequired("KNOXCORE_PROXY_AGENT");
        String clientPackage = DualDarManager.getInstance(this.mContext).getClientPackage(0);
        if (clientPackage != null) {
            knoxProxyManagerInternal.ensureProxyAgentBindingIfRequired(clientPackage);
        }
    }

    public void resetDropboxRateLimiter() {
        this.mDropboxRateLimiter.reset();
        BootReceiver.resetDropboxRateLimiter();
    }

    public void killPackageDependents(String str, int i) {
        int i2;
        enforceCallingPermission("android.permission.KILL_UID", "killPackageDependents()");
        if (str == null) {
            throw new NullPointerException("Cannot kill the dependents of a package without its name.");
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            i2 = AppGlobals.getPackageManager().getPackageUid(str, 268435456L, i);
        } catch (RemoteException unused) {
            i2 = -1;
        }
        if (i != -1 && i2 == -1) {
            throw new IllegalArgumentException("Cannot kill dependents of non-existing package " + str);
        }
        try {
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                    boostPriorityForProcLockedSection();
                    synchronized (activityManagerGlobalLock) {
                        try {
                            this.mProcessList.killPackageProcessesLSP(str, UserHandle.getAppId(i2), i, 0, 12, 0, "dep: " + str);
                        } catch (Throwable th) {
                            resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                    resetPriorityAfterProcLockedSection();
                } catch (Throwable th2) {
                    resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            resetPriorityAfterLockedSection();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public int restartUserInBackground(int i, int i2) {
        return this.mUserController.restartUser(i, i2);
    }

    public void scheduleApplicationInfoChanged(List list, int i) {
        boolean z;
        enforceCallingPermission("android.permission.CHANGE_CONFIGURATION", "scheduleApplicationInfoChanged()");
        if (list.contains("framework-res")) {
            list.remove("framework-res");
            list.add("android");
            z = true;
        } else {
            z = false;
        }
        scheduleApplicationInfoChanged(list, i, z);
    }

    public final void scheduleApplicationInfoChanged(List list, int i, boolean z) {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            boolean contains = list.contains("android");
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    updateApplicationInfoLOSP(list, contains, i, z);
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterProcLockedSection();
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        try {
                            ApplicationInfo applicationInfo = AppGlobals.getPackageManager().getApplicationInfo(str, 1024L, i);
                            if (applicationInfo != null) {
                                this.mServices.updateServiceApplicationInfoLocked(applicationInfo);
                            }
                        } catch (RemoteException unused) {
                            Slog.w("ActivityManager", String.format("Failed to update %s ApplicationInfo", str));
                        }
                    }
                } catch (Throwable th2) {
                    resetPriorityAfterLockedSection();
                    throw th2;
                }
            }
            resetPriorityAfterLockedSection();
            AppWidgetManagerInternal appWidgetManagerInternal = (AppWidgetManagerInternal) LocalServices.getService(AppWidgetManagerInternal.class);
            if (appWidgetManagerInternal != null) {
                appWidgetManagerInternal.applyResourceOverlaysToWidgets(new HashSet(list), i, contains);
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void updateSystemUiContext() {
        ActivityThread.currentActivityThread().handleSystemApplicationInfoChanged(getPackageManagerInternal().getApplicationInfo("android", 1024L, Binder.getCallingUid(), 0));
    }

    public final void updateApplicationInfoLOSP(List list, boolean z, int i, boolean z2) {
        if (z) {
            ParsingPackageUtils.readConfigUseRoundIcon(null);
        }
        this.mProcessList.updateApplicationInfoLOSP(list, i, z, z2);
        if (z) {
            Executor executor = ActivityThread.currentActivityThread().getExecutor();
            final DisplayManagerInternal displayManagerInternal = (DisplayManagerInternal) LocalServices.getService(DisplayManagerInternal.class);
            if (displayManagerInternal != null) {
                executor.execute(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        displayManagerInternal.onOverlayChanged();
                    }
                });
            }
            final WindowManagerService windowManagerService = this.mWindowManager;
            if (windowManagerService != null) {
                Objects.requireNonNull(windowManagerService);
                executor.execute(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WindowManagerService.this.onOverlayChanged();
                    }
                });
            }
        }
    }

    public void scheduleUpdateBinderHeavyHitterWatcherConfig() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerService.this.lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$42();
            }
        });
    }

    public /* synthetic */ void lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$42() {
        int i;
        float f;
        BinderCallHeavyHitterWatcher.BinderCallHeavyHitterListener binderCallHeavyHitterListener;
        boolean z;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                if (ActivityManagerConstants.BINDER_HEAVY_HITTER_WATCHER_ENABLED) {
                    this.mHandler.removeMessages(72);
                    i = ActivityManagerConstants.BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE;
                    f = ActivityManagerConstants.BINDER_HEAVY_HITTER_WATCHER_THRESHOLD;
                    binderCallHeavyHitterListener = new BinderCallHeavyHitterWatcher.BinderCallHeavyHitterListener() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda37
                        public final void onHeavyHit(List list, int i2, float f2, long j) {
                            ActivityManagerService.this.lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$39(list, i2, f2, j);
                        }
                    };
                    z = true;
                } else if (this.mHandler.hasMessages(72)) {
                    boolean z2 = ActivityManagerConstants.BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED;
                    int i2 = ActivityManagerConstants.BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE;
                    float f2 = ActivityManagerConstants.BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD;
                    BinderCallHeavyHitterWatcher.BinderCallHeavyHitterListener binderCallHeavyHitterListener2 = new BinderCallHeavyHitterWatcher.BinderCallHeavyHitterListener() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda38
                        public final void onHeavyHit(List list, int i3, float f3, long j) {
                            ActivityManagerService.this.lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$41(list, i3, f3, j);
                        }
                    };
                    z = z2;
                    i = i2;
                    f = f2;
                    binderCallHeavyHitterListener = binderCallHeavyHitterListener2;
                } else {
                    i = 0;
                    f = DisplayPowerController2.RATE_FROM_DOZE_TO_ON;
                    binderCallHeavyHitterListener = null;
                    z = false;
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        Binder.setHeavyHitterWatcherConfig(z, i, f, binderCallHeavyHitterListener);
    }

    public /* synthetic */ void lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$39(final List list, final int i, final float f, final long j) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerService.this.lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$38(list, i, f, j);
            }
        });
    }

    public /* synthetic */ void lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$41(final List list, final int i, final float f, final long j) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerService.this.lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$40(list, i, f, j);
            }
        });
    }

    public void scheduleBinderHeavyHitterAutoSampler() {
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerService.this.lambda$scheduleBinderHeavyHitterAutoSampler$45();
            }
        });
    }

    public /* synthetic */ void lambda$scheduleBinderHeavyHitterAutoSampler$45() {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                if (!ActivityManagerConstants.BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED) {
                    resetPriorityAfterProcLockedSection();
                    return;
                }
                if (ActivityManagerConstants.BINDER_HEAVY_HITTER_WATCHER_ENABLED) {
                    resetPriorityAfterProcLockedSection();
                    return;
                }
                long uptimeMillis = SystemClock.uptimeMillis();
                if (this.mLastBinderHeavyHitterAutoSamplerStart + ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS > uptimeMillis) {
                    resetPriorityAfterProcLockedSection();
                    return;
                }
                int i = ActivityManagerConstants.BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE;
                float f = ActivityManagerConstants.BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD;
                resetPriorityAfterProcLockedSection();
                this.mLastBinderHeavyHitterAutoSamplerStart = uptimeMillis;
                Binder.setHeavyHitterWatcherConfig(true, i, f, new BinderCallHeavyHitterWatcher.BinderCallHeavyHitterListener() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda33
                    public final void onHeavyHit(List list, int i2, float f2, long j) {
                        ActivityManagerService.this.lambda$scheduleBinderHeavyHitterAutoSampler$44(list, i2, f2, j);
                    }
                });
                MainHandler mainHandler = this.mHandler;
                mainHandler.sendMessageDelayed(mainHandler.obtainMessage(72), BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public /* synthetic */ void lambda$scheduleBinderHeavyHitterAutoSampler$44(final List list, final int i, final float f, final long j) {
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService$$ExternalSyntheticLambda42
            @Override // java.lang.Runnable
            public final void run() {
                ActivityManagerService.this.lambda$scheduleBinderHeavyHitterAutoSampler$43(list, i, f, j);
            }
        });
    }

    public final void handleBinderHeavyHitterAutoSamplerTimeOut() {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                if (ActivityManagerConstants.BINDER_HEAVY_HITTER_WATCHER_ENABLED) {
                    resetPriorityAfterProcLockedSection();
                } else {
                    resetPriorityAfterProcLockedSection();
                    Binder.setHeavyHitterWatcherConfig(false, 0, DisplayPowerController2.RATE_FROM_DOZE_TO_ON, null);
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    /* renamed from: handleBinderHeavyHitters, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$40(List list, int i, float f, long j) {
        int size = list.size();
        if (size == 0) {
            return;
        }
        BinderTransactionNameResolver binderTransactionNameResolver = new BinderTransactionNameResolver();
        StringBuilder sb = new StringBuilder("Excessive incoming binder calls(>");
        sb.append(String.format("%.1f%%", Float.valueOf(f * 100.0f)));
        sb.append(',');
        sb.append(i);
        sb.append(',');
        sb.append(j);
        sb.append("ms): ");
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            BinderCallHeavyHitterWatcher.HeavyHitterContainer heavyHitterContainer = (BinderCallHeavyHitterWatcher.HeavyHitterContainer) list.get(i2);
            sb.append('[');
            sb.append(heavyHitterContainer.mUid);
            sb.append(',');
            sb.append(heavyHitterContainer.mClass.getName());
            sb.append(',');
            sb.append(binderTransactionNameResolver.getMethodName(heavyHitterContainer.mClass, heavyHitterContainer.mCode));
            sb.append(',');
            sb.append(heavyHitterContainer.mCode);
            sb.append(',');
            sb.append(String.format("%.1f%%", Float.valueOf(heavyHitterContainer.mFrequency * 100.0f)));
            sb.append(']');
        }
        Slog.w("ActivityManager", sb.toString());
    }

    public void attachAgent(String str, String str2) {
        IApplicationThread thread;
        try {
            ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
            boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    ProcessRecord findProcessLOSP = findProcessLOSP(str, 0, "attachAgent");
                    if (findProcessLOSP == null || (thread = findProcessLOSP.getThread()) == null) {
                        throw new IllegalArgumentException("Unknown process: " + str);
                    }
                    enforceDebuggable(findProcessLOSP);
                    thread.attachAgent(str2);
                } catch (Throwable th) {
                    resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterProcLockedSection();
        } catch (RemoteException unused) {
            throw new IllegalStateException("Process disappeared");
        }
    }

    public void prepareForPossibleShutdown() {
        if (this.mUsageStatsService != null) {
            this.mUsageStatsService.prepareForPossibleShutdown();
        }
    }

    /* loaded from: classes.dex */
    public class Injector {
        public final Context mContext;
        public NetworkManagementInternal mNmi;
        public UserController mUserController;

        public Injector(Context context) {
            this.mContext = context;
        }

        public Context getContext() {
            return this.mContext;
        }

        public AppOpsService getAppOpsService(File file, File file2, Handler handler) {
            return new AppOpsService(file, file2, handler, getContext());
        }

        public Handler getUiHandler(ActivityManagerService activityManagerService) {
            Objects.requireNonNull(activityManagerService);
            return new UiHandler();
        }

        public boolean isNetworkRestrictedForUid(int i) {
            if (ensureHasNetworkManagementInternal()) {
                return this.mNmi.isNetworkRestrictedForUid(i);
            }
            return false;
        }

        public int[] getDisplayIdsForStartingVisibleBackgroundUsers() {
            boolean z;
            if (!UserManager.isVisibleBackgroundUsersEnabled()) {
                Slogf.w("ActivityManager", "getDisplayIdsForStartingVisibleBackgroundUsers(): not supported");
                return null;
            }
            DisplayManager displayManager = (DisplayManager) this.mContext.getSystemService(DisplayManager.class);
            Display[] displays = displayManager.getDisplays();
            if (displays == null || displays.length == 0) {
                Slogf.wtf("ActivityManager", "displayManager (%s) returned no displays", displayManager);
                return null;
            }
            int length = displays.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                if (displays[i].getDisplayId() == 0) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                Slogf.wtf("ActivityManager", "displayManager (%s) has %d displays (%s), but none has id DEFAULT_DISPLAY (%d)", displayManager, Integer.valueOf(displays.length), Arrays.toString(displays), 0);
                return null;
            }
            boolean isVisibleBackgroundUsersOnDefaultDisplayEnabled = UserManager.isVisibleBackgroundUsersOnDefaultDisplayEnabled();
            int length2 = displays.length;
            if (!isVisibleBackgroundUsersOnDefaultDisplayEnabled) {
                length2--;
            }
            int[] iArr = new int[length2];
            int i2 = 0;
            for (Display display : displays) {
                int displayId = display.getDisplayId();
                if (display.isValid() && (isVisibleBackgroundUsersOnDefaultDisplayEnabled || displayId != 0)) {
                    iArr[i2] = displayId;
                    i2++;
                }
            }
            if (i2 != 0) {
                if (i2 == length2) {
                    return iArr;
                }
                int[] iArr2 = new int[i2];
                System.arraycopy(iArr, 0, iArr2, 0, i2);
                return iArr2;
            }
            int i3 = SystemProperties.getInt("fw.display_ids_for_starting_users_for_testing_purposes", 0);
            if ((isVisibleBackgroundUsersOnDefaultDisplayEnabled && i3 == 0) || i3 > 0) {
                Slogf.w("ActivityManager", "getDisplayIdsForStartingVisibleBackgroundUsers(): no valid display found, but returning %d as set by property %s", Integer.valueOf(i3), "fw.display_ids_for_starting_users_for_testing_purposes");
                return new int[]{i3};
            }
            Slogf.e("ActivityManager", "getDisplayIdsForStartingVisibleBackgroundUsers(): no valid display on %s", Arrays.toString(displays));
            return null;
        }

        public boolean startUserInBackgroundVisibleOnDisplay(int i, int i2, IProgressListener iProgressListener) {
            return this.mUserController.startUserVisibleOnDisplay(i, i2, iProgressListener);
        }

        public ProcessList getProcessList(ActivityManagerService activityManagerService) {
            return new ProcessList();
        }

        public BatteryStatsService getBatteryStatsService() {
            Context context = this.mContext;
            File ensureSystemDir = SystemServiceManager.ensureSystemDir();
            BackgroundThread.get();
            return new BatteryStatsService(context, ensureSystemDir, BackgroundThread.getHandler());
        }

        public ActiveServices getActiveServices(ActivityManagerService activityManagerService) {
            return new ActiveServices(activityManagerService);
        }

        public final boolean ensureHasNetworkManagementInternal() {
            if (this.mNmi == null) {
                this.mNmi = (NetworkManagementInternal) LocalServices.getService(NetworkManagementInternal.class);
            }
            return this.mNmi != null;
        }
    }

    public void startDelegateShellPermissionIdentity(int i, String[] strArr) {
        if (UserHandle.getCallingAppId() != 2000 && UserHandle.getCallingAppId() != 0) {
            throw new SecurityException("Only the shell can delegate its permissions");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                if (this.mAppOpsService.getAppOpsServiceDelegate() != null) {
                    if (!(this.mAppOpsService.getAppOpsServiceDelegate() instanceof ShellDelegate)) {
                        throw new IllegalStateException("Bad shell delegate state");
                    }
                    if (((ShellDelegate) this.mAppOpsService.getAppOpsServiceDelegate()).getDelegateUid() != i) {
                        throw new SecurityException("Shell can delegate permissions only to one instrumentation at a time");
                    }
                }
                int size = this.mActiveInstrumentation.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ActiveInstrumentation activeInstrumentation = (ActiveInstrumentation) this.mActiveInstrumentation.get(i2);
                    if (activeInstrumentation.mTargetInfo.uid == i) {
                        if (activeInstrumentation.mUiAutomationConnection == null) {
                            throw new SecurityException("Shell can delegate its permissions only to an instrumentation started from the shell");
                        }
                        this.mAppOpsService.setAppOpsServiceDelegate(new ShellDelegate(i, strArr));
                        getPermissionManagerInternal().startShellPermissionIdentityDelegation(i, activeInstrumentation.mTargetInfo.packageName, strArr != null ? Arrays.asList(strArr) : null);
                        resetPriorityAfterProcLockedSection();
                        return;
                    }
                }
                resetPriorityAfterProcLockedSection();
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
    }

    public void stopDelegateShellPermissionIdentity() {
        if (UserHandle.getCallingAppId() != 2000 && UserHandle.getCallingAppId() != 0) {
            throw new SecurityException("Only the shell can delegate its permissions");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                this.mAppOpsService.setAppOpsServiceDelegate(null);
                getPermissionManagerInternal().stopShellPermissionIdentityDelegation();
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public List getDelegatedShellPermissions() {
        List delegatedShellPermissions;
        if (UserHandle.getCallingAppId() != 2000 && UserHandle.getCallingAppId() != 0) {
            throw new SecurityException("Only the shell can get delegated permissions");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                delegatedShellPermissions = getPermissionManagerInternal().getDelegatedShellPermissions();
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return delegatedShellPermissions;
    }

    /* loaded from: classes.dex */
    public class ShellDelegate implements AppOpsManagerInternal.CheckOpsDelegate {
        public final String[] mPermissions;
        public final int mTargetUid;

        public ShellDelegate(int i, String[] strArr) {
            this.mTargetUid = i;
            this.mPermissions = strArr;
        }

        public int getDelegateUid() {
            return this.mTargetUid;
        }

        public int checkOperation(int i, int i2, String str, String str2, boolean z, QuintFunction quintFunction) {
            if (i2 == this.mTargetUid && isTargetOp(i)) {
                int uid = UserHandle.getUid(UserHandle.getUserId(i2), 2000);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return ((Integer) quintFunction.apply(Integer.valueOf(i), Integer.valueOf(uid), "com.android.shell", (Object) null, Boolean.valueOf(z))).intValue();
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            return ((Integer) quintFunction.apply(Integer.valueOf(i), Integer.valueOf(i2), str, str2, Boolean.valueOf(z))).intValue();
        }

        public int checkAudioOperation(int i, int i2, int i3, String str, QuadFunction quadFunction) {
            if (i3 == this.mTargetUid && isTargetOp(i)) {
                int uid = UserHandle.getUid(UserHandle.getUserId(i3), 2000);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return ((Integer) quadFunction.apply(Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(uid), "com.android.shell")).intValue();
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            return ((Integer) quadFunction.apply(Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), str)).intValue();
        }

        public SyncNotedAppOp noteOperation(int i, int i2, String str, String str2, boolean z, String str3, boolean z2, HeptFunction heptFunction) {
            if (i2 == this.mTargetUid && isTargetOp(i)) {
                int uid = UserHandle.getUid(UserHandle.getUserId(i2), 2000);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return (SyncNotedAppOp) heptFunction.apply(Integer.valueOf(i), Integer.valueOf(uid), "com.android.shell", str2, Boolean.valueOf(z), str3, Boolean.valueOf(z2));
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            return (SyncNotedAppOp) heptFunction.apply(Integer.valueOf(i), Integer.valueOf(i2), str, str2, Boolean.valueOf(z), str3, Boolean.valueOf(z2));
        }

        public SyncNotedAppOp noteProxyOperation(int i, AttributionSource attributionSource, boolean z, String str, boolean z2, boolean z3, HexFunction hexFunction) {
            if (attributionSource.getUid() == this.mTargetUid && isTargetOp(i)) {
                int uid = UserHandle.getUid(UserHandle.getUserId(attributionSource.getUid()), 2000);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return (SyncNotedAppOp) hexFunction.apply(Integer.valueOf(i), new AttributionSource(uid, -1, "com.android.shell", attributionSource.getAttributionTag(), attributionSource.getToken(), null, attributionSource.getNext()), Boolean.valueOf(z), str, Boolean.valueOf(z2), Boolean.valueOf(z3));
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            return (SyncNotedAppOp) hexFunction.apply(Integer.valueOf(i), attributionSource, Boolean.valueOf(z), str, Boolean.valueOf(z2), Boolean.valueOf(z3));
        }

        public SyncNotedAppOp startOperation(IBinder iBinder, int i, int i2, String str, String str2, boolean z, boolean z2, String str3, boolean z3, int i3, int i4, UndecFunction undecFunction) {
            if (i2 == this.mTargetUid && isTargetOp(i)) {
                int uid = UserHandle.getUid(UserHandle.getUserId(i2), 2000);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return (SyncNotedAppOp) undecFunction.apply(iBinder, Integer.valueOf(i), Integer.valueOf(uid), "com.android.shell", str2, Boolean.valueOf(z), Boolean.valueOf(z2), str3, Boolean.valueOf(z3), Integer.valueOf(i3), Integer.valueOf(i4));
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            return (SyncNotedAppOp) undecFunction.apply(iBinder, Integer.valueOf(i), Integer.valueOf(i2), str, str2, Boolean.valueOf(z), Boolean.valueOf(z2), str3, Boolean.valueOf(z3), Integer.valueOf(i3), Integer.valueOf(i4));
        }

        public SyncNotedAppOp startProxyOperation(IBinder iBinder, int i, AttributionSource attributionSource, boolean z, boolean z2, String str, boolean z3, boolean z4, int i2, int i3, int i4, UndecFunction undecFunction) {
            if (attributionSource.getUid() == this.mTargetUid && isTargetOp(i)) {
                int uid = UserHandle.getUid(UserHandle.getUserId(attributionSource.getUid()), 2000);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return (SyncNotedAppOp) undecFunction.apply(iBinder, Integer.valueOf(i), new AttributionSource(uid, -1, "com.android.shell", attributionSource.getAttributionTag(), attributionSource.getToken(), null, attributionSource.getNext()), Boolean.valueOf(z), Boolean.valueOf(z2), str, Boolean.valueOf(z3), Boolean.valueOf(z4), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            return (SyncNotedAppOp) undecFunction.apply(iBinder, Integer.valueOf(i), attributionSource, Boolean.valueOf(z), Boolean.valueOf(z2), str, Boolean.valueOf(z3), Boolean.valueOf(z4), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        }

        public void finishProxyOperation(IBinder iBinder, int i, AttributionSource attributionSource, boolean z, QuadFunction quadFunction) {
            if (attributionSource.getUid() == this.mTargetUid && isTargetOp(i)) {
                int uid = UserHandle.getUid(UserHandle.getUserId(attributionSource.getUid()), 2000);
                long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    quadFunction.apply(iBinder, Integer.valueOf(i), new AttributionSource(uid, -1, "com.android.shell", attributionSource.getAttributionTag(), attributionSource.getToken(), null, attributionSource.getNext()), Boolean.valueOf(z));
                } finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
            }
            quadFunction.apply(iBinder, Integer.valueOf(i), attributionSource, Boolean.valueOf(z));
        }

        public final boolean isTargetOp(int i) {
            String opToPermission;
            if (this.mPermissions == null || (opToPermission = AppOpsManager.opToPermission(i)) == null) {
                return true;
            }
            return isTargetPermission(opToPermission);
        }

        public final boolean isTargetPermission(String str) {
            String[] strArr = this.mPermissions;
            return strArr == null || ArrayUtils.contains(strArr, str);
        }
    }

    public final boolean isOnBgOffloadQueue(int i) {
        return this.mEnableOffloadQueue && (Integer.MIN_VALUE & i) != 0;
    }

    public ParcelFileDescriptor getLifeMonitor() {
        ParcelFileDescriptor dup;
        if (!isCallerShell()) {
            throw new SecurityException("Only shell can call it");
        }
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                try {
                    if (this.mLifeMonitorFds == null) {
                        this.mLifeMonitorFds = ParcelFileDescriptor.createPipe();
                    }
                    dup = this.mLifeMonitorFds[0].dup();
                } catch (IOException e) {
                    Slog.w("ActivityManager", "Unable to create pipe", e);
                    resetPriorityAfterProcLockedSection();
                    return null;
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return dup;
    }

    public void setActivityLocusContext(ComponentName componentName, LocusId locusId, IBinder iBinder) {
        int callingUid = Binder.getCallingUid();
        int callingUserId = UserHandle.getCallingUserId();
        if (getPackageManagerInternal().getPackageUid(componentName.getPackageName(), 0L, callingUserId) != callingUid) {
            throw new SecurityException("Calling uid " + callingUid + " cannot set locusIdfor package " + componentName.getPackageName());
        }
        this.mActivityTaskManager.setLocusId(locusId, iBinder);
        if (this.mUsageStatsService != null) {
            this.mUsageStatsService.reportLocusUpdate(componentName, callingUserId, locusId, iBinder);
        }
    }

    public boolean isAppFreezerSupported() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            CachedAppOptimizer cachedAppOptimizer = this.mOomAdjuster.mCachedAppOptimizer;
            return CachedAppOptimizer.isFreezerSupported();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public boolean isAppFreezerEnabled() {
        return this.mOomAdjuster.mCachedAppOptimizer.useFreezer();
    }

    public final boolean isApplicationClearDataDisabled(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        IApplicationPolicy applicationPolicy = getApplicationPolicy();
        this.mApplicationPolicy = applicationPolicy;
        if (applicationPolicy == null) {
            return false;
        }
        try {
            return applicationPolicy.isApplicationClearDataDisabled(str, i, true);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public final IApplicationPolicy getApplicationPolicy() {
        if (this.mApplicationPolicy == null) {
            this.mApplicationPolicy = IApplicationPolicy.Stub.asInterface(ServiceManager.getService("application_policy"));
        }
        return this.mApplicationPolicy;
    }

    public boolean isAppFreezerExemptInstPkg() {
        return this.mOomAdjuster.mCachedAppOptimizer.freezerExemptInstPkg();
    }

    public void resetAppErrors() {
        enforceCallingPermission("android.permission.RESET_APP_ERRORS", "resetAppErrors");
        this.mAppErrors.resetState();
    }

    public boolean enableAppFreezer(boolean z) {
        int callingUid = Binder.getCallingUid();
        if (callingUid == 1000 || Build.IS_DEBUGGABLE) {
            return this.mOomAdjuster.mCachedAppOptimizer.enableFreezer(z);
        }
        throw new SecurityException("Caller uid " + callingUid + " cannot set freezer state ");
    }

    public boolean enableFgsNotificationRateLimit(boolean z) {
        boolean enableFgsNotificationRateLimitLocked;
        enforceCallingPermission("android.permission.WRITE_DEVICE_CONFIG", "enableFgsNotificationRateLimit");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                enableFgsNotificationRateLimitLocked = this.mServices.enableFgsNotificationRateLimitLocked(z);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return enableFgsNotificationRateLimitLocked;
    }

    public void holdLock(IBinder iBinder, int i) {
        getTestUtilityServiceLocked().verifyHoldLockToken(iBinder);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                SystemClock.sleep(i);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public static void traceBegin(long j, String str, String str2) {
        if (Trace.isTagEnabled(j)) {
            Trace.traceBegin(j, str + str2);
        }
    }

    public static int getIntArg(PrintWriter printWriter, String[] strArr, int i, int i2) {
        if (i > strArr.length) {
            printWriter.println("Missing argument");
            return i2;
        }
        String str = strArr[i];
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            printWriter.printf("Non-numeric argument at index %d: %s\n", Integer.valueOf(i), str);
            return i2;
        }
    }

    public final void notifyMediaProjectionEvent(int i, IBinder iBinder, int i2) {
        ArraySet arraySet;
        synchronized (this.mMediaProjectionTokenMap) {
            int indexOfKey = this.mMediaProjectionTokenMap.indexOfKey(i);
            if (i2 == 0) {
                if (indexOfKey < 0) {
                    arraySet = new ArraySet();
                    this.mMediaProjectionTokenMap.put(i, arraySet);
                } else {
                    arraySet = (ArraySet) this.mMediaProjectionTokenMap.valueAt(indexOfKey);
                }
                arraySet.add(iBinder);
            } else if (i2 == 1 && indexOfKey >= 0) {
                ArraySet arraySet2 = (ArraySet) this.mMediaProjectionTokenMap.valueAt(indexOfKey);
                arraySet2.remove(iBinder);
                if (arraySet2.isEmpty()) {
                    this.mMediaProjectionTokenMap.removeAt(indexOfKey);
                }
            }
        }
    }

    public boolean isAllowedMediaProjectionNoOpCheck(int i) {
        boolean z;
        synchronized (this.mMediaProjectionTokenMap) {
            int indexOfKey = this.mMediaProjectionTokenMap.indexOfKey(i);
            z = indexOfKey >= 0 && !((ArraySet) this.mMediaProjectionTokenMap.valueAt(indexOfKey)).isEmpty();
        }
        return z;
    }

    public String[] queryRegisteredReceiverPackages(Intent intent, String str, int i) {
        return this.mExt.queryRegisteredReceiverPackages(intent, str, i);
    }

    public void dismissUserSwitchingDialog(int i) {
        this.mUserController.dismissUserSwitchingDialog(i);
    }

    public boolean moveTaskToBack(int i, boolean z) {
        return moveTaskToBackWithBundle(i, z, null);
    }

    public boolean moveTaskToBackWithBundle(int i, boolean z, Bundle bundle) {
        enforceCallingPermission("android.permission.REORDER_TASKS", "moveTaskToBack()");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mAtmInternal.moveTaskToBack(i, z, bundle);
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public Configuration getGlobalConfiguration() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return this.mActivityTaskManager.getConfiguration();
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void parseApplicationInfoLocked(ProcessRecord processRecord) {
        boolean z;
        ApplicationInfo applicationInfo = processRecord.info;
        if ("com.google.android.cellbroadcastreceiver".equals(processRecord.processName) || "com.google.android.providers.media.module".equals(processRecord.processName)) {
            Slog.d("ActivityManager", "Allow to move it other display without killing the process for DeX. :" + processRecord.processName);
            z = true;
        } else {
            Bundle bundle = applicationInfo.metaData;
            if (bundle != null) {
                z = bundle.getBoolean("com.samsung.android.multidisplay.keep_process_alive");
            } else {
                z = this.mExt.hasMetaData(applicationInfo.packageName, "com.samsung.android.multidisplay.keep_process_alive");
            }
        }
        processRecord.setKeepProcessAlive(z);
        if (CoreRune.SAFE_DEBUG && z) {
            StringBuilder sb = new StringBuilder();
            sb.append("parseApplicationInfoLocked: keepProcessAlive=true from ");
            sb.append(z ? "metadata" : "list");
            sb.append(", app=");
            sb.append(processRecord);
            Slog.i("ActivityManager", sb.toString());
        }
    }

    public void parseDexKillProcessTimeout(ProcessRecord processRecord) {
        int parseKillTimeout;
        ApplicationInfo applicationInfo = processRecord.info;
        Bundle bundle = applicationInfo.metaData;
        if (bundle != null) {
            parseKillTimeout = parseKillTimeout(bundle.getString("com.samsung.android.dex.kill_process_timeout", ""));
        } else {
            parseKillTimeout = parseKillTimeout(this.mExt.getStringMetaData(applicationInfo.packageName, "com.samsung.android.dex.kill_process_timeout"));
        }
        if (parseKillTimeout != -1) {
            Slog.d("ActivityManager", "kill dex related process - setKillProcessTimeout : " + processRecord.processName + "(" + String.valueOf(parseKillTimeout) + ")");
            processRecord.setKillProcessTimeout(parseKillTimeout);
        }
    }

    public final int parseKillTimeout(String str) {
        if (str == null) {
            return -1;
        }
        if ("immediate".equals(str)) {
            return 0;
        }
        if (str.length() <= 3 || !"sec".equals(str.substring(str.length() - 3))) {
            return -1;
        }
        try {
            return Integer.parseInt(str.substring(0, str.length() - 3)) * 1000;
        } catch (NumberFormatException unused) {
            Slog.d("ActivityManager", "kill dex related process - NumberFormatException");
            return -1;
        }
    }

    public CustomFrequencyManagerInternal getCfmsInternalLocked() {
        if (this.mCfmsManagerInt == null) {
            this.mCfmsManagerInt = (CustomFrequencyManagerInternal) LocalServices.getService(CustomFrequencyManagerInternal.class);
        }
        return this.mCfmsManagerInt;
    }

    public ProcessRecord getProcessRecordFromPidLocked(int i) {
        ProcessRecord processRecord;
        synchronized (this.mPidsSelfLocked) {
            processRecord = this.mPidsSelfLocked.get(i);
        }
        return processRecord;
    }

    /* renamed from: com.android.server.am.ActivityManagerService$26 */
    /* loaded from: classes.dex */
    public class AnonymousClass26 implements Runnable {
        public final /* synthetic */ List val$packageNames;

        public AnonymousClass26(List list) {
            r2 = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (r2 == null) {
                ActivityManagerService.this.mDynamicHiddenApp.addAllowlistList(false);
            } else if (!ActivityManagerService.this.mDynamicHiddenApp.IsAllowListCleared()) {
                ActivityManagerService.this.mDynamicHiddenApp.removeAllowlistByBUB();
            }
            ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
            ActivityManagerService.boostPriorityForProcLockedSection();
            synchronized (activityManagerGlobalLock) {
                try {
                    ArrayList arrayList = ActivityManagerService.this.mProcessList.getmLruProcesses();
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ProcessRecord processRecord = (ProcessRecord) arrayList.get(size);
                        if (ActivityManagerService.this.mDynamicHiddenApp.appIsPickedProcess(processRecord.processName, processRecord.userId) >= 0) {
                            processRecord.setIpmLaunchType(-1);
                        }
                        List list = r2;
                        if (list != null) {
                            if (list.contains(processRecord.userId + "_&_" + processRecord.processName)) {
                                processRecord.setIpmLaunchType(1);
                            }
                        }
                        if (r2 == null) {
                            ActivityManagerService.this.mDynamicHiddenApp.resetKillExceptFlag(processRecord);
                        } else if (!ActivityManagerService.this.mDynamicHiddenApp.IsAllowListCleared()) {
                            ActivityManagerService.this.mDynamicHiddenApp.resetKillExceptFlag(processRecord);
                        }
                    }
                } catch (Throwable th) {
                    ActivityManagerService.resetPriorityAfterProcLockedSection();
                    throw th;
                }
            }
            ActivityManagerService.resetPriorityAfterProcLockedSection();
            ActivityManagerService.this.mDynamicHiddenApp.updatePickedProcessLists(r2);
            if (r2 == null) {
                ActivityManagerService.this.mDynamicHiddenApp.setAllowListCleared(false);
                Slog.d("ActivityManager", "ALLOWLIST set in bootupbooster");
            } else {
                if (ActivityManagerService.this.mDynamicHiddenApp.IsAllowListCleared()) {
                    return;
                }
                ActivityManagerService.this.mDynamicHiddenApp.setAllowListCleared(true);
                Slog.d("ActivityManager", "ALLOWLIST clear in bootupbooster");
            }
        }
    }

    public void preloadBoosterAppsFromIpm(List list, int i) {
        if (this.mDynamicHiddenApp == null) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: com.android.server.am.ActivityManagerService.26
            public final /* synthetic */ List val$packageNames;

            public AnonymousClass26(List list2) {
                r2 = list2;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (r2 == null) {
                    ActivityManagerService.this.mDynamicHiddenApp.addAllowlistList(false);
                } else if (!ActivityManagerService.this.mDynamicHiddenApp.IsAllowListCleared()) {
                    ActivityManagerService.this.mDynamicHiddenApp.removeAllowlistByBUB();
                }
                ActivityManagerGlobalLock activityManagerGlobalLock = ActivityManagerService.this.mProcLock;
                ActivityManagerService.boostPriorityForProcLockedSection();
                synchronized (activityManagerGlobalLock) {
                    try {
                        ArrayList arrayList = ActivityManagerService.this.mProcessList.getmLruProcesses();
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            ProcessRecord processRecord = (ProcessRecord) arrayList.get(size);
                            if (ActivityManagerService.this.mDynamicHiddenApp.appIsPickedProcess(processRecord.processName, processRecord.userId) >= 0) {
                                processRecord.setIpmLaunchType(-1);
                            }
                            List list2 = r2;
                            if (list2 != null) {
                                if (list2.contains(processRecord.userId + "_&_" + processRecord.processName)) {
                                    processRecord.setIpmLaunchType(1);
                                }
                            }
                            if (r2 == null) {
                                ActivityManagerService.this.mDynamicHiddenApp.resetKillExceptFlag(processRecord);
                            } else if (!ActivityManagerService.this.mDynamicHiddenApp.IsAllowListCleared()) {
                                ActivityManagerService.this.mDynamicHiddenApp.resetKillExceptFlag(processRecord);
                            }
                        }
                    } catch (Throwable th) {
                        ActivityManagerService.resetPriorityAfterProcLockedSection();
                        throw th;
                    }
                }
                ActivityManagerService.resetPriorityAfterProcLockedSection();
                ActivityManagerService.this.mDynamicHiddenApp.updatePickedProcessLists(r2);
                if (r2 == null) {
                    ActivityManagerService.this.mDynamicHiddenApp.setAllowListCleared(false);
                    Slog.d("ActivityManager", "ALLOWLIST set in bootupbooster");
                } else {
                    if (ActivityManagerService.this.mDynamicHiddenApp.IsAllowListCleared()) {
                        return;
                    }
                    ActivityManagerService.this.mDynamicHiddenApp.setAllowListCleared(true);
                    Slog.d("ActivityManager", "ALLOWLIST clear in bootupbooster");
                }
            }
        });
    }

    public void checkProfileForADCP(int i, String str) {
        ProcessRecord processRecord;
        synchronized (this.mPidsSelfLocked) {
            processRecord = this.mPidsSelfLocked.get(i);
        }
        if (processRecord == null || processRecord.getThread() == null) {
            return;
        }
        try {
            processRecord.getThread().getProfileLength(str);
        } catch (RemoteException unused) {
            Slog.w("ActivityManager", "Failed to get profile length");
        }
    }

    public void updateFlingerFlag(int i, String str) {
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                synchronized (this.mPidsSelfLocked) {
                    ProcessRecord processRecord = this.mPidsSelfLocked.get(i);
                    if (processRecord != null && processRecord.getThread() != null) {
                        try {
                            processRecord.getThread().setFlingerFlag(str);
                        } catch (RemoteException e) {
                            Slog.w("ActivityManager", "updateFlingerFlag exception", e);
                        }
                    }
                }
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
    }

    public SemAppRestrictionManager.RestrictionInfo getRestrictionInfo(int i, String str, int i2) {
        return MARsPolicyManager.getInstance().getRestrictionInfoBySEP(i, str, i2);
    }

    public boolean canRestrict(int i, String str, int i2) {
        return MARsPolicyManager.getInstance().canRestrictBySEP(i, str, i2);
    }

    public boolean restrict(int i, int i2, boolean z, String str, int i3) {
        return MARsPolicyManager.getInstance().restrictBySEP(i, i2, z, str, i3);
    }

    public List getRestrictableList(int i) {
        return MARsPolicyManager.getInstance().getRestrictableList(i);
    }

    public List getAllRestrictedList() {
        return MARsPolicyManager.getInstance().getAllRestrictedList();
    }

    public List getRestrictedList(int i) {
        return MARsPolicyManager.getInstance().getRestrictedList(i);
    }

    public boolean updateRestrictionInfo(SemAppRestrictionManager.RestrictionInfo restrictionInfo, List list) {
        return MARsPolicyManager.getInstance().updateRestrictionInfo(restrictionInfo, list);
    }

    public boolean clearRestrictionInfo(List list) {
        return MARsPolicyManager.getInstance().clearRestrictionInfo(list);
    }

    public String getPackageFromAppProcesses(int i) {
        int callingUid = Binder.getCallingUid();
        if (i <= 0 || 1000 != UserHandle.getAppId(callingUid)) {
            return null;
        }
        synchronized (this.mPidsSelfLocked) {
            ProcessRecord processRecord = this.mPidsSelfLocked.get(i);
            if (processRecord == null || processRecord.mPid != i || processRecord.info == null) {
                return null;
            }
            return processRecord.info.packageName;
        }
    }

    public String[] getContentByTask(int i) {
        return this.mActivityTaskManager.mContentDispatcher.getContentByTask(i);
    }

    public final void ensureCallingPkg(String[] strArr, String str) {
        if (CoreRune.SAFE_DEBUG) {
            return;
        }
        try {
            String[] packagesForUid = AppGlobals.getPackageManager().getPackagesForUid(Binder.getCallingUid());
            if (strArr != null && strArr.length > 0 && packagesForUid != null && packagesForUid.length > 0) {
                for (String str2 : packagesForUid) {
                    for (String str3 : strArr) {
                        if (str3 != null && str3.equals(str2)) {
                            return;
                        }
                    }
                }
            }
        } catch (RemoteException unused) {
        }
        throw new SecurityException("Permission Denial: " + str + " from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
    }

    public final void checkLongLivePermissions(String str) {
        if (Binder.getCallingUid() == Process.myUid()) {
            return;
        }
        ensureCallingPkg(new String[]{"com.samsung.android.multistar", "com.android.systemui", KnoxCustomManagerService.LAUNCHER_PACKAGE, "com.sec.android.app.desktoplauncher", "system", "com.samsung.android.sidegesturepad"}, str);
        enforceCallingPermission("android.permission.FORCE_STOP_PACKAGES", str);
    }

    public boolean setLongLiveApp(String str) {
        checkLongLivePermissions("setLongLiveApp");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (!this.mExt.setLongLivePackageLocked(str)) {
                    resetPriorityAfterLockedSection();
                    return false;
                }
                updateOomAdjLocked(0);
                resetPriorityAfterLockedSection();
                return true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public String getLongLiveApp() {
        String longLivePackageLocked;
        checkLongLivePermissions("getLongLiveApp");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                longLivePackageLocked = this.mExt.getLongLivePackageLocked(0);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return longLivePackageLocked;
    }

    public List getLongLiveApps() {
        ArrayList longLivePackagesLocked;
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return null;
        }
        checkLongLivePermissions("getLongLiveApps");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                longLivePackagesLocked = this.mExt.getLongLivePackagesLocked();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return longLivePackagesLocked;
    }

    public boolean addLongLiveApp(String str) {
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return false;
        }
        checkLongLivePermissions("addLongLiveApp");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (!this.mExt.addLongLivePackageLocked(str)) {
                    resetPriorityAfterLockedSection();
                    return false;
                }
                updateOomAdjLocked(0);
                resetPriorityAfterLockedSection();
                return true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public boolean removeLongLiveApp(String str) {
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return false;
        }
        checkLongLivePermissions("removeLongLiveApp");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (!this.mExt.removeLongLivePackageLocked(str)) {
                    resetPriorityAfterLockedSection();
                    return false;
                }
                updateOomAdjLocked(0);
                resetPriorityAfterLockedSection();
                return true;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public int getMaxLongLiveApps() {
        int maxLongLiveApps;
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return 0;
        }
        checkLongLivePermissions("getMaxLongLiveApps");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                maxLongLiveApps = this.mExt.getMaxLongLiveApps();
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return maxLongLiveApps;
    }

    public boolean setLongLiveTask(int i) {
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return false;
        }
        checkLongLivePermissions("setLongLiveTask");
        this.mExt.setLongLiveTask(i, true);
        return true;
    }

    public boolean clearLongLiveTask(int i) {
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return false;
        }
        checkLongLivePermissions("clearLongLiveTask");
        this.mExt.setLongLiveTask(i, false);
        return true;
    }

    public List getLongLiveProcesses() {
        ArrayList dedicatedProcessesLocked;
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return null;
        }
        checkLongLivePermissions("getLongLiveProcesses");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                dedicatedProcessesLocked = this.mExt.getDedicatedProcessesLocked(-1);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return dedicatedProcessesLocked;
    }

    public List getLongLiveProcessesForUser(int i) {
        ArrayList dedicatedProcessesLocked;
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return null;
        }
        checkLongLivePermissions("getLongLiveProcessesForUser");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                dedicatedProcessesLocked = this.mExt.getDedicatedProcessesLocked(i);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return dedicatedProcessesLocked;
    }

    public List getLongLiveTaskIdsForUser(int i) {
        ArrayList dedicatedTaskIdsLocked;
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return null;
        }
        checkLongLivePermissions("getLongLiveTaskIdsForUser");
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                dedicatedTaskIdsLocked = this.mExt.getDedicatedTaskIdsLocked(i);
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
        return dedicatedTaskIdsLocked;
    }

    public boolean getAutoRemoveRecents(int i) {
        boolean autoRemoveRecents;
        if (!CoreRune.FW_DEDICATED_MEMORY) {
            return false;
        }
        checkLongLivePermissions("getAutoRemoveRecents");
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    autoRemoveRecents = this.mExt.getAutoRemoveRecents(i);
                } finally {
                }
            }
            resetPriorityAfterLockedSection();
            return autoRemoveRecents;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public void registerDedicatedCallback(RemoteCallback remoteCallback, int i) {
        if (CoreRune.FW_DEDICATED_MEMORY) {
            checkLongLivePermissions("registerDedicatedCallback");
            boostPriorityForLockedSection();
            synchronized (this) {
                try {
                    this.mExt.registerDedicatedCallbackLocked(remoteCallback, i);
                } catch (Throwable th) {
                    resetPriorityAfterLockedSection();
                    throw th;
                }
            }
            resetPriorityAfterLockedSection();
        }
    }

    public final boolean hasFixedAppContextDisplayMetaData(ApplicationInfo applicationInfo) {
        Bundle bundle = applicationInfo.metaData;
        if (bundle == null) {
            try {
                ApplicationInfo applicationInfo2 = AppGlobals.getPackageManager().getApplicationInfo(applicationInfo.packageName, 128L, UserHandle.getUserId(applicationInfo.uid));
                if (applicationInfo2 != null) {
                    bundle = applicationInfo2.metaData;
                }
            } catch (RemoteException unused) {
            }
        }
        if (bundle != null) {
            return bundle.getBoolean("com.samsung.android.multidisplay.fixed_app_context_display", false);
        }
        return false;
    }

    public void killProcessForCalmMode(String str, int i, int i2, String str2) {
        killProcessForMARs(str, i, i2, 0, true, str2);
    }

    public void killProcessForMARs(String str, int i, int i2, int i3, boolean z, String str2) {
        int appId = UserHandle.getAppId(i);
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
                boostPriorityForProcLockedSection();
                try {
                    synchronized (activityManagerGlobalLock) {
                        try {
                            this.mProcessList.killPackageProcessesLSP(str, appId, i2, i3, false, z, true, false, false, false, 13, 0, str2);
                            resetPriorityAfterProcLockedSection();
                        } catch (Throwable th) {
                            th = th;
                            resetPriorityAfterProcLockedSection();
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                resetPriorityAfterLockedSection();
                throw th3;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public final void reportDumpStarted() {
        if (MARsPolicyManager.MARs_ENABLE && FreecessController.getInstance().getFreecessEnabled()) {
            Slog.d("MARsPolicyManager", "Receive dump started from dumpstate");
            FreecessController.getInstance().setFreecessEnableForDump(false);
        }
    }

    public boolean isPendingBroadcastPackageLocked(int i) {
        if (this.mEnableModernQueue) {
            return ((BroadcastQueueModernImpl) this.mBroadcastQueues[0]).isPendingBroadcastPackageLocked(i);
        }
        return ((BroadcastQueueImpl) this.mBroadcastQueues[0]).isPendingBroadcastPackageLocked(i) || ((BroadcastQueueImpl) this.mBroadcastQueues[1]).isPendingBroadcastPackageLocked(i) || ((BroadcastQueueImpl) this.mBroadcastQueues[2]).isPendingBroadcastPackageLocked(i) || ((BroadcastQueueImpl) this.mBroadcastQueues[3]).isPendingBroadcastPackageLocked(i);
    }

    public boolean forceStopPackageForMARsLocked(String str, String str2, boolean z, int i, boolean z2, int i2, int i3) {
        if (z) {
            int size = this.mProcessList.getProcessNamesLOSP().getMap().size();
            for (int i4 = 0; i4 < size; i4++) {
                SparseArray sparseArray = (SparseArray) this.mProcessList.getProcessNamesLOSP().getMap().valueAt(i4);
                int size2 = sparseArray.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    ProcessRecord processRecord = (ProcessRecord) sparseArray.valueAt(i5);
                    if (processRecord.getPkgList().containsKey(str) && processRecord.mState.getSetAdj() < i) {
                        if (MARsDebugConfig.DEBUG_MARs) {
                            Slog.e("MARsPolicyManager", "Choosed Package " + str + " has the process under ADJ " + i + " - Skip EM KILL");
                        }
                        return false;
                    }
                }
            }
        }
        forceStopPackageLocked(str, UserHandle.getAppId(i3), false, false, true, false, false, i2, str2);
        if (!z2) {
            return true;
        }
        finishForceStopPackageForMARsLocked(str, i3);
        return true;
    }

    public void finishForceStopPackageForMARsLocked(String str, int i) {
        Intent intent = new Intent("android.intent.action.PACKAGE_RESTARTED", Uri.fromParts("package", str, null));
        if (!this.mProcessesReady) {
            intent.addFlags(1342177280);
        }
        intent.putExtra("android.intent.extra.UID", i);
        intent.putExtra("android.intent.extra.user_handle", UserHandle.getUserId(i));
        int i2 = MY_PID;
        broadcastIntentLocked(null, null, null, intent, null, null, null, 0, null, null, null, null, null, -1, null, false, false, i2, 1000, UserHandle.getUserId(i), i2, UserHandle.getUserId(i), BackgroundStartPrivileges.NONE, null, null);
    }

    public void setTTSPkgInfo(int i) {
        if (MARsPolicyManager.MARs_ENABLE) {
            MARsPolicyManager.getInstance().setTTSPkgInfo(i);
        }
    }

    public int getOomAdjByPid(int i) {
        ProcessRecord processRecordFromPidLocked = getProcessRecordFromPidLocked(i);
        if (processRecordFromPidLocked != null) {
            return processRecordFromPidLocked.mState.getCurAdj();
        }
        return 0;
    }

    public void clearTTSPkgInfo() {
        if (MARsPolicyManager.MARs_ENABLE) {
            MARsPolicyManager.getInstance().clearTTSPkgInfo();
        }
    }

    public ParceledListSlice getInstalledPackageListFromMARs(int i, int i2) {
        if (MARsPolicyManager.MARs_ENABLE) {
            return MARsPolicyManager.getInstance().getInstalledPackageListFromMARs(i, i2);
        }
        return null;
    }

    public Map getActiveUids() {
        Map allUidRecords;
        ActivityManagerGlobalLock activityManagerGlobalLock = this.mProcLock;
        boostPriorityForProcLockedSection();
        synchronized (activityManagerGlobalLock) {
            try {
                allUidRecords = this.mProcessList.mActiveUids.getAllUidRecords();
            } catch (Throwable th) {
                resetPriorityAfterProcLockedSection();
                throw th;
            }
        }
        resetPriorityAfterProcLockedSection();
        return allUidRecords;
    }

    public final void showRescuePartyDialog() {
        if ("emergency".equals(SystemProperties.get("persist.sys.emergency_reset", ""))) {
            this.mAtmInternal.showRescuePartyDialog();
        }
    }

    public final void reportDiedAppPid(ProcessRecord processRecord, int i) {
        IBinder service;
        ICustomFrequencyManager asInterface;
        if (FreecessController.getInstance() != null && FreecessController.getInstance().getFreecessEnabled()) {
            FreecessController.getInstance().releaseFreezedAppPid(i);
        }
        if (!processRecord.mState.getAbnormalStatus() || (service = ServiceManager.getService("CustomFrequencyManagerService")) == null || (asInterface = ICustomFrequencyManager.Stub.asInterface(service)) == null) {
            return;
        }
        try {
            asInterface.requestFreezeSlowdown(i, false, BuildConfig.BUILD_TYPE);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean setFGSFilter(int i, boolean z) {
        if (checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            Slog.d("ActivityManager", "setFGSFilter - permission is not granted. callingUid: " + Binder.getCallingUid());
            return false;
        }
        ProcessCpusetController processCpusetController = this.mProcessCpusetController;
        if (processCpusetController == null) {
            return false;
        }
        return processCpusetController.setFGSFilter(i, z);
    }

    public void resetAbnormalList() {
        if (checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            Slog.d("ActivityManager", "resetAbnormalList - permission is not granted. callingUid: " + Binder.getCallingUid());
            return;
        }
        ProcessCpusetController processCpusetController = this.mProcessCpusetController;
        if (processCpusetController != null) {
            processCpusetController.resetAbnormalList();
        }
    }

    public boolean isFreezableUid(int i) {
        if (checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            Slog.d("ActivityManager", "isFreezableUid - permission is not granted. callingUid: " + Binder.getCallingUid());
            return false;
        }
        if (this.mWindowManager != null) {
            return !r1.hasFloatingOrOnScreenWindow(i);
        }
        return true;
    }

    public boolean setProcessSlowdown(int i, boolean z) {
        if (checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            Slog.d("ActivityManager", "setProcessSlowdown - permission is not granted. callingUid: " + Binder.getCallingUid());
            return false;
        }
        ProcessCpusetController processCpusetController = this.mProcessCpusetController;
        if (processCpusetController == null) {
            return false;
        }
        return processCpusetController.setProcessSlowdown(i, z);
    }

    public int[] getIsolatedProcessList() {
        if (checkCallingPermission("android.permission.INTERACT_ACROSS_USERS_FULL") != 0) {
            Slog.d("ActivityManager", "getIsolatedProcessList - permission is not granted. callingUid: " + Binder.getCallingUid());
            return null;
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                if (this.mProcessList.mIsolatedProcesses.size() <= 0) {
                    resetPriorityAfterLockedSection();
                    return null;
                }
                int[] iArr = new int[this.mProcessList.mIsolatedProcesses.size()];
                for (int i = 0; i < this.mProcessList.mIsolatedProcesses.size(); i++) {
                    iArr[i] = ((ProcessRecord) this.mProcessList.mIsolatedProcesses.valueAt(i)).getPid();
                }
                resetPriorityAfterLockedSection();
                return iArr;
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
    }

    public void reportAbnormalUsage(int i, int i2) {
        int callingPid = Binder.getCallingPid();
        if (Binder.getCallingUid() != 1000 && callingPid != i) {
            Slog.e("ActivityManager", "PID mismatch: PID=" + i + ", CallingPid=" + callingPid);
            return;
        }
        boostPriorityForLockedSection();
        synchronized (this) {
            try {
                ProcessRecord processRecordFromPidLocked = getProcessRecordFromPidLocked(i);
                if (processRecordFromPidLocked != null) {
                    Slog.i("ActivityManager", "excessive resource usage reported: " + processRecordFromPidLocked.toShortString() + ", type: " + i2);
                    this.mAbnormalUsageService.processAbnormalUsage(this.mContext, processRecordFromPidLocked, i2, i);
                } else {
                    Slog.e("ActivityManager", "Invalid PID: " + i);
                }
            } catch (Throwable th) {
                resetPriorityAfterLockedSection();
                throw th;
            }
        }
        resetPriorityAfterLockedSection();
    }

    public void updateDelayServiceEnable(boolean z) {
        this.mServices.delayServiceEnable = z;
    }
}
