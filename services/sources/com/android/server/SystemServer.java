package com.android.server;

import android.R;
import android.app.ActivityThread;
import android.app.AppCompatCallbacks;
import android.app.AppGlobals;
import android.app.ApplicationErrorReport;
import android.app.ContextImpl;
import android.app.SystemServiceRegistry;
import android.app.admin.DevicePolicySafetyChecker;
import android.app.usage.UsageStatsManagerInternal;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManagerInternal;
import android.database.sqlite.SQLiteCompatibilityWalFlags;
import android.database.sqlite.SQLiteGlobal;
import android.graphics.Typeface;
import android.hardware.display.DisplayManagerInternal;
import android.net.ConnectivityManager;
import android.net.ConnectivityModuleConnector;
import android.net.NetworkStackClient;
import android.os.ArtModuleServiceManager;
import android.os.BaseBundle;
import android.os.Binder;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.FactoryTest;
import android.os.FileUtils;
import android.os.IBinder;
import android.os.IIncidentManager;
import android.os.IServiceCreator;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.DeviceConfig;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Dumpable;
import android.util.EventLog;
import android.util.IndentingPrintWriter;
import android.util.Pair;
import android.util.Slog;
import android.util.TimeUtils;
import com.android.internal.os.BinderInternal;
import com.android.internal.os.RuntimeInit;
import com.android.internal.policy.AttributeCache;
import com.android.internal.util.ConcurrentUtils;
import com.android.internal.util.FrameworkStatsLog;
import com.android.server.BinderCallsStatsService;
import com.android.server.LooperStatsService;
import com.android.server.VaultKeeperService;
import com.android.server.am.ActivityManagerService;
import com.android.server.ambientcontext.AmbientContextManagerService;
import com.android.server.art.ArtModuleServiceInitializer;
import com.android.server.art.DexUseManagerLocal;
import com.android.server.asks.ASKSManagerService;
import com.android.server.attention.AttentionManagerService;
import com.android.server.clipboard.ClipboardService;
import com.android.server.compat.PlatformCompat;
import com.android.server.compat.PlatformCompatNative;
import com.android.server.contentcapture.ContentCaptureManagerInternal;
import com.android.server.cpu.CpuMonitorService;
import com.android.server.devicepolicy.DevicePolicyManagerService;
import com.android.server.display.DisplayManagerService;
import com.android.server.display.exynos.ExynosDisplaySolutionManagerService;
import com.android.server.emailksproxy.EmailKeystoreService;
import com.android.server.enterprise.EnterpriseDeviceManagerService;
import com.android.server.gpu.GpuService;
import com.android.server.input.InputManagerService;
import com.android.server.ledcover.LedBackCoverService;
import com.android.server.ledcoverapp.LedCoverAppService;
import com.android.server.lights.LightsService;
import com.android.server.media.MediaRouterService;
import com.android.server.net.NetworkManagementService;
import com.android.server.net.NetworkPolicyManagerService;
import com.android.server.net.UrspService;
import com.android.server.om.OverlayManagerService;
import com.android.server.os.BugreportManagerService;
import com.android.server.os.DeviceIdentifiersPolicyService;
import com.android.server.os.NativeTombstoneManagerService;
import com.android.server.pdp.PdpService;
import com.android.server.permission.access.AccessCheckingService;
import com.android.server.pm.ApexManager;
import com.android.server.pm.ApexSystemServiceInfo;
import com.android.server.pm.DataLoaderManagerService;
import com.android.server.pm.Installer;
import com.android.server.pm.OtaDexoptService;
import com.android.server.pm.PackageManagerService;
import com.android.server.pm.UserManagerService;
import com.android.server.pm.dex.OdsignStatsLogger;
import com.android.server.pm.verify.domain.DomainVerificationService;
import com.android.server.policy.AppOpsPolicy;
import com.android.server.power.PowerManagerService;
import com.android.server.power.ShutdownThread;
import com.android.server.power.ThermalManagerService;
import com.android.server.power.hint.HintManagerService;
import com.android.server.powerstats.PowerStatsService;
import com.android.server.recoverysystem.RecoverySystemService;
import com.android.server.resources.ResourcesManagerService;
import com.android.server.rotationresolver.RotationResolverManagerService;
import com.android.server.samsungnotes.SamsungNotesService;
import com.android.server.security.FileIntegrityService;
import com.android.server.security.rkp.RemoteProvisioningService;
import com.android.server.sensorprivacy.SensorPrivacyService;
import com.android.server.sensors.SensorService;
import com.android.server.shealth.SamsungHealthService;
import com.android.server.smartthings.SmartThingsService;
import com.android.server.timedetector.NetworkTimeUpdateService;
import com.android.server.uri.UriGrantsManagerService;
import com.android.server.usage.UsageStatsService;
import com.android.server.utils.TimingsTraceAndSlog;
import com.android.server.voicenote.VoiceNoteService;
import com.android.server.wearable.WearableSensingManagerService;
import com.android.server.webkit.WebViewUpdateService;
import com.android.server.wm.ActivityTaskManagerService;
import com.android.server.wm.WindowManagerGlobalLock;
import com.android.server.wm.WindowManagerService;
import com.samsung.accessory.manager.SAccessoryManager;
import com.samsung.android.authnrservice.service.SemAuthnrService;
import com.samsung.android.battauthmanager.BattAuthManager;
import com.samsung.android.displayquality.SemDisplayQualityFeature;
import com.samsung.android.displayquality.SemDisplayQualityManagerService;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.samsung.android.jdsms.DsmsService;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import com.samsung.android.localeoverlaymanager.LocaleOverlayManagerWrapper;
import com.samsung.android.media.codec.VideoTranscodingService;
import com.samsung.android.rune.CoreRune;
import dalvik.system.VMRuntime;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.TreeSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public final class SystemServer implements Dumpable {
    public static final File HEAP_DUMP_PATH = new File("/data/system/heapdump/");
    public static LinkedList sPendingWtfs;
    public ASKSManagerService mASKSManagerService;
    public ActivityManagerService mActivityManagerService;
    public ContentResolver mContentResolver;
    public DataLoaderManagerService mDataLoaderManagerService;
    public DisplayManagerService mDisplayManagerService;
    public EntropyMixer mEntropyMixer;
    public boolean mFirstBoot;
    public LedBackCoverService mLedBackCoverService;
    public LedCoverAppService mLedCoverAppService;
    public PackageManager mPackageManager;
    public PackageManagerService mPackageManagerService;
    public PowerManagerService mPowerManagerService;
    public final boolean mRuntimeRestart;
    public final long mRuntimeStartElapsedTime;
    public final long mRuntimeStartUptime;
    public SamsungHealthService mSHealthService;
    public SamsungNotesService mSamsungNotesService;
    public SmartThingsService mSmartThingsService;
    public final int mStartCount;
    public Context mSystemContext;
    public SystemServiceManager mSystemServiceManager;
    public VoiceNoteService mVoiceNoteService;
    public WebViewUpdateService mWebViewUpdateService;
    public WindowManagerGlobalLock mWindowManagerGlobalLock;
    public Future mZygotePreload;
    public EnterpriseDeviceManagerService enterprisePolicy = null;
    public KnoxCustomManagerService knoxCustomPolicy = null;
    public long mIncrementalServiceHandle = 0;
    public DualAppManagerService mDualAppService = null;
    public SAccessoryManager sAccessoryManager = null;
    public BattAuthManager mBattAuthManager = null;
    public final SystemServerDumper mDumper = new SystemServerDumper();
    public final int mFactoryTestMode = FactoryTest.getMode();

    private static native void fdtrackAbort();

    private static native void initZygoteChildHeapProfiling();

    private static native void setIncrementalServiceSystemReady(long j);

    private static native void startHidlServices();

    private static native void startISensorManagerService();

    private static native void startIStatsService();

    private static native long startIncrementalService();

    private static native void startMemtrackProxyService();

    public static int getMaxFd() {
        FileDescriptor fileDescriptor = null;
        try {
            try {
                fileDescriptor = Os.open("/dev/null", OsConstants.O_RDONLY | OsConstants.O_CLOEXEC, 0);
                int int$ = fileDescriptor.getInt$();
                try {
                    Os.close(fileDescriptor);
                    return int$;
                } catch (ErrnoException e) {
                    throw new RuntimeException(e);
                }
            } catch (ErrnoException e2) {
                Slog.e("System", "Failed to get maximum fd: " + e2);
                if (fileDescriptor == null) {
                    return Integer.MAX_VALUE;
                }
                try {
                    Os.close(fileDescriptor);
                    return Integer.MAX_VALUE;
                } catch (ErrnoException e3) {
                    throw new RuntimeException(e3);
                }
            }
        } catch (Throwable th) {
            if (fileDescriptor != null) {
                try {
                    Os.close(fileDescriptor);
                } catch (ErrnoException e4) {
                    throw new RuntimeException(e4);
                }
            }
            throw th;
        }
    }

    public static void dumpHprof() {
        TreeSet treeSet = new TreeSet();
        for (File file : HEAP_DUMP_PATH.listFiles()) {
            if (file.isFile() && file.getName().startsWith("fdtrack-")) {
                treeSet.add(file);
            }
        }
        if (treeSet.size() >= 2) {
            treeSet.pollLast();
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                File file2 = (File) it.next();
                if (!file2.delete()) {
                    Slog.w("System", "Failed to clean up hprof " + file2);
                }
            }
        }
        try {
            Debug.dumpHprofData("/data/system/heapdump/fdtrack-" + new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date()) + ".hprof");
        } catch (IOException e) {
            Slog.e("System", "Failed to dump fdtrack hprof", e);
        }
    }

    public static void spawnFdLeakCheckThread() {
        final int i = SystemProperties.getInt("persist.sys.debug.fdtrack_enable_threshold", 1600);
        final int i2 = SystemProperties.getInt("persist.sys.debug.fdtrack_abort_threshold", 3000);
        final int i3 = SystemProperties.getInt("persist.sys.debug.fdtrack_interval", 120);
        new Thread(new Runnable() { // from class: com.android.server.SystemServer$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                SystemServer.lambda$spawnFdLeakCheckThread$0(i, i2, i3);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$spawnFdLeakCheckThread$0(int i, int i2, int i3) {
        boolean z = false;
        long j = 0;
        while (true) {
            int maxFd = getMaxFd();
            if (maxFd > i) {
                System.gc();
                System.runFinalization();
                maxFd = getMaxFd();
            }
            if (maxFd > i && !z) {
                Slog.i("System", "fdtrack enable threshold reached, enabling");
                FrameworkStatsLog.write(364, 2, maxFd);
                System.loadLibrary("fdtrack");
                z = true;
            } else if (maxFd > i2) {
                Slog.i("System", "fdtrack abort threshold reached, dumping and aborting");
                FrameworkStatsLog.write(364, 3, maxFd);
                dumpHprof();
                fdtrackAbort();
            } else {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                if (elapsedRealtime > j) {
                    long j2 = elapsedRealtime + ClipboardService.DEFAULT_CLIPBOARD_TIMEOUT_MILLIS;
                    FrameworkStatsLog.write(364, z ? 2 : 1, maxFd);
                    j = j2;
                }
            }
            try {
                Thread.sleep(i3 * 1000);
            } catch (InterruptedException unused) {
            }
        }
    }

    public static void main(String[] strArr) {
        new SystemServer().run();
    }

    public SystemServer() {
        int i = SystemProperties.getInt("sys.system_server.start_count", 0) + 1;
        this.mStartCount = i;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        this.mRuntimeStartElapsedTime = elapsedRealtime;
        long uptimeMillis = SystemClock.uptimeMillis();
        this.mRuntimeStartUptime = uptimeMillis;
        Process.setStartTimes(elapsedRealtime, uptimeMillis, elapsedRealtime, uptimeMillis);
        this.mRuntimeRestart = i > 1;
    }

    @Override // android.util.Dumpable
    public String getDumpableName() {
        return SystemServer.class.getSimpleName();
    }

    @Override // android.util.Dumpable
    public void dump(PrintWriter printWriter, String[] strArr) {
        printWriter.printf("Runtime restart: %b\n", Boolean.valueOf(this.mRuntimeRestart));
        printWriter.printf("Start count: %d\n", Integer.valueOf(this.mStartCount));
        printWriter.print("Runtime start-up time: ");
        TimeUtils.formatDuration(this.mRuntimeStartUptime, printWriter);
        printWriter.println();
        printWriter.print("Runtime start-elapsed time: ");
        TimeUtils.formatDuration(this.mRuntimeStartElapsedTime, printWriter);
        printWriter.println();
    }

    /* loaded from: classes.dex */
    public final class SystemServerDumper extends Binder {
        public final ArrayMap mDumpables;

        public SystemServerDumper() {
            this.mDumpables = new ArrayMap(4);
        }

        @Override // android.os.Binder
        public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            IndentingPrintWriter indentingPrintWriter;
            boolean z = strArr != null && strArr.length > 0;
            synchronized (this.mDumpables) {
                if (z) {
                    try {
                        if ("--list".equals(strArr[0])) {
                            int size = this.mDumpables.size();
                            for (int i = 0; i < size; i++) {
                                printWriter.println((String) this.mDumpables.keyAt(i));
                            }
                            return;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z && "--name".equals(strArr[0])) {
                    if (strArr.length < 2) {
                        printWriter.println("Must pass at least one argument to --name");
                        return;
                    }
                    String str = strArr[1];
                    Dumpable dumpable = (Dumpable) this.mDumpables.get(str);
                    if (dumpable == null) {
                        printWriter.printf("No dumpable named %s\n", str);
                        return;
                    }
                    indentingPrintWriter = new IndentingPrintWriter(printWriter, "  ");
                    try {
                        dumpable.dump(indentingPrintWriter, (String[]) Arrays.copyOfRange(strArr, 2, strArr.length));
                        indentingPrintWriter.close();
                        return;
                    } finally {
                    }
                }
                int size2 = this.mDumpables.size();
                indentingPrintWriter = new IndentingPrintWriter(printWriter, "  ");
                for (int i2 = 0; i2 < size2; i2++) {
                    try {
                        Dumpable dumpable2 = (Dumpable) this.mDumpables.valueAt(i2);
                        indentingPrintWriter.printf("%s:\n", new Object[]{dumpable2.getDumpableName()});
                        indentingPrintWriter.increaseIndent();
                        dumpable2.dump(indentingPrintWriter, strArr);
                        indentingPrintWriter.decreaseIndent();
                        indentingPrintWriter.println();
                    } finally {
                    }
                }
                indentingPrintWriter.close();
                return;
                throw th;
            }
        }

        public final void addDumpable(Dumpable dumpable) {
            synchronized (this.mDumpables) {
                this.mDumpables.put(dumpable.getDumpableName(), dumpable);
            }
        }
    }

    public final void run() {
        TimingsTraceAndSlog timingsTraceAndSlog = new TimingsTraceAndSlog();
        try {
            timingsTraceAndSlog.traceBegin("InitBeforeStartServices");
            SystemProperties.set("sys.system_server.start_count", String.valueOf(this.mStartCount));
            SystemProperties.set("sys.system_server.start_elapsed", String.valueOf(this.mRuntimeStartElapsedTime));
            SystemProperties.set("sys.system_server.start_uptime", String.valueOf(this.mRuntimeStartUptime));
            SystemProperties.set("sys.system_server.pid", String.valueOf(Process.myPid()));
            Slog.i("SystemServer", "!@Boot_EBS_F: SYSTEM_SERVER_START");
            EventLog.writeEvent(3011, Integer.valueOf(this.mStartCount), Long.valueOf(this.mRuntimeStartUptime), Long.valueOf(this.mRuntimeStartElapsedTime));
            SystemTimeZone.initializeTimeZoneSettingsIfRequired();
            if (!SystemProperties.get("persist.sys.language").isEmpty()) {
                SystemProperties.set("persist.sys.locale", Locale.getDefault().toLanguageTag());
                SystemProperties.set("persist.sys.language", "");
                SystemProperties.set("persist.sys.country", "");
                SystemProperties.set("persist.sys.localevar", "");
            }
            Binder.setSystemServerProcess();
            Binder.setWarnOnBlocking(true);
            PackageItemInfo.forceSafeLabels();
            SQLiteGlobal.sDefaultSyncMode = "FULL";
            SQLiteCompatibilityWalFlags.init((String) null);
            Slog.i("SystemServer", "Entered the Android system server!");
            Slog.i("SystemServer", "!@Boot: Entered the Android system server!");
            Slog.i("SystemServer", "!@Boot_EBS_F: BOOT_PROGRESS_SYSTEM_RUN");
            long elapsedRealtime = SystemClock.elapsedRealtime();
            EventLog.writeEvent(3010, elapsedRealtime);
            if (!this.mRuntimeRestart) {
                FrameworkStatsLog.write(240, 19, elapsedRealtime);
            }
            SystemProperties.set("persist.sys.dalvik.vm.lib.2", VMRuntime.getRuntime().vmLibrary());
            VMRuntime.getRuntime().clearGrowthLimit();
            Build.ensureFingerprintProperty();
            Environment.setUserRequired(true);
            BaseBundle.setShouldDefuse(true);
            Parcel.setStackTraceParceling(true);
            BinderInternal.disableBackgroundScheduling(true);
            BinderInternal.setMaxThreads(31);
            Process.setThreadPriority(-2);
            Process.setCanSelfBackground(false);
            Looper.prepareMainLooper();
            Looper.getMainLooper().setSlowLogThresholdMs(100L, 200L);
            SystemServiceRegistry.sEnableServiceNotFoundWtf = true;
            System.loadLibrary("android_servers");
            initZygoteChildHeapProfiling();
            if (Build.IS_DEBUGGABLE) {
                spawnFdLeakCheckThread();
            }
            performPendingShutdown();
            createSystemContext();
            ActivityThread.initializeMainlineModules();
            ServiceManager.addService("system_server_dumper", this.mDumper);
            this.mDumper.addDumpable(this);
            SystemServiceManager systemServiceManager = new SystemServiceManager(this.mSystemContext);
            this.mSystemServiceManager = systemServiceManager;
            systemServiceManager.setStartInfo(this.mRuntimeRestart, this.mRuntimeStartElapsedTime, this.mRuntimeStartUptime);
            this.mDumper.addDumpable(this.mSystemServiceManager);
            LocalServices.addService(SystemServiceManager.class, this.mSystemServiceManager);
            this.mDumper.addDumpable(SystemServerInitThreadPool.start());
            Typeface.loadPreinstalledSystemFontMap();
            if (Build.IS_DEBUGGABLE) {
                String str = SystemProperties.get("persist.sys.dalvik.jvmtiagent");
                if (!str.isEmpty()) {
                    int indexOf = str.indexOf(61);
                    try {
                        Debug.attachJvmtiAgent(str.substring(0, indexOf), str.substring(indexOf + 1, str.length()), null);
                    } catch (Exception unused) {
                        Slog.e("System", "*************************************************");
                        Slog.e("System", "********** Failed to load jvmti plugin: " + str);
                    }
                }
            }
            timingsTraceAndSlog.traceEnd();
            RuntimeInit.setDefaultApplicationWtfHandler(new RuntimeInit.ApplicationWtfHandler() { // from class: com.android.server.SystemServer$$ExternalSyntheticLambda0
                public final boolean handleApplicationWtf(IBinder iBinder, String str2, boolean z, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo, int i) {
                    boolean handleEarlySystemWtf;
                    handleEarlySystemWtf = SystemServer.handleEarlySystemWtf(iBinder, str2, z, parcelableCrashInfo, i);
                    return handleEarlySystemWtf;
                }
            });
            try {
                timingsTraceAndSlog.traceBegin("StartServices");
                Slog.i("SystemServer", "!@Boot_EBS_F: startBootstrapServices");
                startBootstrapServices(timingsTraceAndSlog);
                Slog.i("SystemServer", "!@Boot_EBS_F: startCoreServices");
                startCoreServices(timingsTraceAndSlog);
                Slog.i("SystemServer", "!@Boot_EBS_F: startOtherServices");
                startOtherServices(timingsTraceAndSlog);
                startApexServices(timingsTraceAndSlog);
                updateWatchdogTimeout(timingsTraceAndSlog);
                timingsTraceAndSlog.traceEnd();
                StrictMode.initVmDefaults(null);
                try {
                    if (AppGlobals.getPackageManager().getApplicationInfo("com.samsung.android.voc", 128L, UserHandle.getCallingUserId()) != null) {
                        SystemProperties.set("sys.members.installed", "true");
                    }
                } catch (RemoteException unused2) {
                }
                if (!this.mRuntimeRestart && !isFirstBootOrUpgrade()) {
                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    FrameworkStatsLog.write(240, 20, elapsedRealtime2);
                    if (elapsedRealtime2 > 60000) {
                        Slog.wtf("SystemServerTiming", "SystemServer init took too long. uptimeMillis=" + elapsedRealtime2);
                    }
                }
                if (CoreRune.SYSPERF_BOOST_OPT) {
                    final int myTid = Process.myTid();
                    new Timer().schedule(new TimerTask() { // from class: com.android.server.SystemServer.1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            Process.setThreadGroupAndCpuset(myTid, 10);
                        }
                    }, 30000L);
                }
                Slog.i("SystemServer", "!@Boot: Loop forever");
                Slog.i("SystemServer", "!@Boot_EBS_D: Loop forever");
                Looper.loop();
                throw new RuntimeException("Main thread loop unexpectedly exited");
            } finally {
            }
        } finally {
        }
    }

    public final boolean isFirstBootOrUpgrade() {
        return this.mPackageManagerService.isFirstBoot() || this.mPackageManagerService.isDeviceUpgrading();
    }

    public final void reportWtf(String str, Throwable th) {
        Slog.w("SystemServer", "***********************************************");
        Slog.wtf("SystemServer", "BOOT FAILURE " + str, th);
    }

    public final void performPendingShutdown() {
        String str = SystemProperties.get("sys.shutdown.requested", "");
        if (str == null || str.length() <= 0) {
            return;
        }
        final boolean z = str.charAt(0) == '1';
        String str2 = null;
        final String substring = str.length() > 1 ? str.substring(1, str.length()) : null;
        if (substring != null && substring.startsWith("recovery-update")) {
            File file = new File("/cache/recovery/uncrypt_file");
            if (file.exists()) {
                try {
                    str2 = FileUtils.readTextFile(file, 0, null);
                } catch (IOException e) {
                    Slog.e("SystemServer", "Error reading uncrypt package file", e);
                }
                if (str2 != null && str2.startsWith("/data") && !new File("/cache/recovery/block.map").exists()) {
                    Slog.e("SystemServer", "Can't find block map file, uncrypt failed or unexpected runtime restart?");
                    return;
                }
            }
        }
        Message obtain = Message.obtain(UiThread.getHandler(), new Runnable() { // from class: com.android.server.SystemServer.2
            @Override // java.lang.Runnable
            public void run() {
                ShutdownThread.rebootOrShutdown(null, z, substring);
            }
        });
        obtain.setAsynchronous(true);
        UiThread.getHandler().sendMessage(obtain);
    }

    public final void createSystemContext() {
        ActivityThread systemMain = ActivityThread.systemMain();
        ContextImpl systemContext = systemMain.getSystemContext();
        this.mSystemContext = systemContext;
        systemContext.setTheme(R.style.Theme.Material.SearchBar);
        systemMain.getSystemUiContext().setTheme(R.style.Theme.Material.SearchBar);
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.server.compat.PlatformCompat, android.os.IBinder] */
    public final void startBootstrapServices(TimingsTraceAndSlog timingsTraceAndSlog) {
        timingsTraceAndSlog.traceBegin("startBootstrapServices");
        timingsTraceAndSlog.traceBegin("ArtModuleServiceInitializer");
        ArtModuleServiceInitializer.setArtModuleServiceManager(new ArtModuleServiceManager());
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartWatchdog");
        Watchdog watchdog = Watchdog.getInstance();
        watchdog.start();
        this.mDumper.addDumpable(watchdog);
        timingsTraceAndSlog.traceEnd();
        Slog.i("SystemServer", "Reading configuration...");
        timingsTraceAndSlog.traceBegin("ReadingSystemConfig");
        SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.SystemServer$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SystemConfig.getInstance();
            }
        }, "ReadingSystemConfig");
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("PlatformCompat");
        ?? platformCompat = new PlatformCompat(this.mSystemContext);
        ServiceManager.addService("platform_compat", (IBinder) platformCompat);
        ServiceManager.addService("platform_compat_native", new PlatformCompatNative(platformCompat));
        AppCompatCallbacks.install(new long[0]);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartFileIntegrityService");
        this.mSystemServiceManager.startService(FileIntegrityService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartInstaller");
        Installer installer = (Installer) this.mSystemServiceManager.startService(Installer.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("DeviceIdentifiersPolicyService");
        this.mSystemServiceManager.startService(DeviceIdentifiersPolicyService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("UriGrantsManagerService");
        this.mSystemServiceManager.startService(UriGrantsManagerService.Lifecycle.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartPowerStatsService");
        this.mSystemServiceManager.startService(PowerStatsService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartIStatsService");
        startIStatsService();
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MemtrackProxyService");
        startMemtrackProxyService();
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartAccessCheckingService");
        this.mSystemServiceManager.startService(AccessCheckingService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartActivityManager");
        ActivityTaskManagerService service = ((ActivityTaskManagerService.Lifecycle) this.mSystemServiceManager.startService(ActivityTaskManagerService.Lifecycle.class)).getService();
        ActivityManagerService startService = ActivityManagerService.Lifecycle.startService(this.mSystemServiceManager, service);
        this.mActivityManagerService = startService;
        startService.setSystemServiceManager(this.mSystemServiceManager);
        this.mActivityManagerService.setInstaller(installer);
        this.mWindowManagerGlobalLock = service.getGlobalLock();
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartDataLoaderManagerService");
        this.mDataLoaderManagerService = (DataLoaderManagerService) this.mSystemServiceManager.startService(DataLoaderManagerService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartIncrementalService");
        this.mIncrementalServiceHandle = startIncrementalService();
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartPowerManager");
        this.mPowerManagerService = (PowerManagerService) this.mSystemServiceManager.startService(PowerManagerService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartThermalManager");
        this.mSystemServiceManager.startService(ThermalManagerService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartHintManager");
        this.mSystemServiceManager.startService(HintManagerService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("InitPowerManagement");
        this.mActivityManagerService.initPowerManagement();
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("VaultKeeperService");
        this.mSystemServiceManager.startService(VaultKeeperService.LifeCycle.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartRecoverySystemService");
        this.mSystemServiceManager.startService(RecoverySystemService.Lifecycle.class);
        timingsTraceAndSlog.traceEnd();
        RescueParty.registerHealthObserver(this.mSystemContext);
        PackageWatchdog.getInstance(this.mSystemContext).noteBoot();
        timingsTraceAndSlog.traceBegin("StartLightsService");
        this.mSystemServiceManager.startService(LightsService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartPdpService");
        this.mSystemServiceManager.startService(PdpService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartDisplayOffloadService");
        if (SystemProperties.getBoolean("config.enable_display_offload", false)) {
            this.mSystemServiceManager.startService("com.android.clockwork.displayoffload.DisplayOffloadService");
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartSidekickService");
        if (SystemProperties.getBoolean("config.enable_sidekick_graphics", false)) {
            this.mSystemServiceManager.startService("com.google.android.clockwork.sidekick.SidekickService");
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartDisplayManager");
        this.mDisplayManagerService = (DisplayManagerService) this.mSystemServiceManager.startService(DisplayManagerService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("WaitForDisplay");
        Slog.i("SystemServer", "!@Boot_EBS_D: PHASE_WAIT_FOR_DEFAULT_DISPLAY");
        this.mSystemServiceManager.startBootPhase(timingsTraceAndSlog, 100);
        timingsTraceAndSlog.traceEnd();
        if (!this.mRuntimeRestart) {
            FrameworkStatsLog.write(240, 14, SystemClock.elapsedRealtime());
        }
        timingsTraceAndSlog.traceBegin("StartDomainVerificationService");
        DomainVerificationService domainVerificationService = new DomainVerificationService(this.mSystemContext, SystemConfig.getInstance(), platformCompat);
        this.mSystemServiceManager.startService(domainVerificationService);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartPackageManagerService");
        Slog.i("SystemServer", "!@Boot: Start PackageManagerService");
        try {
            Watchdog.getInstance().pauseWatchingCurrentThread("packagemanagermain");
            this.mPackageManagerService = PackageManagerService.main(this.mSystemContext, installer, domainVerificationService, this.mFactoryTestMode != 0);
            Watchdog.getInstance().resumeWatchingCurrentThread("packagemanagermain");
            Slog.i("SystemServer", "!@Boot: End PackageManagerService");
            this.mFirstBoot = this.mPackageManagerService.isFirstBoot();
            this.mPackageManager = this.mSystemContext.getPackageManager();
            timingsTraceAndSlog.traceEnd();
            timingsTraceAndSlog.traceBegin("DexUseManagerLocal");
            LocalManagerRegistry.addManager(DexUseManagerLocal.class, DexUseManagerLocal.createInstance(this.mSystemContext));
            timingsTraceAndSlog.traceEnd();
            if (!this.mRuntimeRestart && !isFirstBootOrUpgrade()) {
                FrameworkStatsLog.write(240, 15, SystemClock.elapsedRealtime());
            }
            timingsTraceAndSlog.traceBegin("StartASKSManagerService");
            this.mASKSManagerService = ASKSManagerService.main(this.mSystemContext);
            timingsTraceAndSlog.traceEnd();
            if (!SystemProperties.getBoolean("config.disable_otadexopt", false)) {
                timingsTraceAndSlog.traceBegin("StartOtaDexOptService");
                try {
                    Watchdog.getInstance().pauseWatchingCurrentThread("moveab");
                    OtaDexoptService.main(this.mSystemContext, this.mPackageManagerService);
                } finally {
                    try {
                    } finally {
                    }
                }
            }
            timingsTraceAndSlog.traceBegin("StartUserManagerService");
            this.mSystemServiceManager.startService(UserManagerService.LifeCycle.class);
            timingsTraceAndSlog.traceEnd();
            timingsTraceAndSlog.traceBegin("InitAttributerCache");
            AttributeCache.init(this.mSystemContext);
            timingsTraceAndSlog.traceEnd();
            timingsTraceAndSlog.traceBegin("SetSystemProcess");
            this.mActivityManagerService.setSystemProcess();
            timingsTraceAndSlog.traceEnd();
            platformCompat.registerPackageReceiver(this.mSystemContext);
            timingsTraceAndSlog.traceBegin("InitWatchdog");
            Slog.i("SystemServer", "!@Boot_EBS_D: InitWatchdog");
            watchdog.init(this.mSystemContext, this.mActivityManagerService);
            timingsTraceAndSlog.traceEnd();
            this.mDisplayManagerService.setupSchedulerPolicies();
            timingsTraceAndSlog.traceBegin("StartOverlayManagerService");
            this.mSystemServiceManager.startService(new OverlayManagerService(this.mSystemContext));
            timingsTraceAndSlog.traceEnd();
            timingsTraceAndSlog.traceBegin("StartResourcesManagerService");
            ResourcesManagerService resourcesManagerService = new ResourcesManagerService(this.mSystemContext);
            resourcesManagerService.setActivityManagerService(this.mActivityManagerService);
            this.mSystemServiceManager.startService(resourcesManagerService);
            timingsTraceAndSlog.traceEnd();
            timingsTraceAndSlog.traceBegin("StartSensorPrivacyService");
            this.mSystemServiceManager.startService(new SensorPrivacyService(this.mSystemContext));
            timingsTraceAndSlog.traceEnd();
            timingsTraceAndSlog.traceBegin("PACMService");
            this.mSystemServiceManager.startService("com.android.server.PACMService");
            timingsTraceAndSlog.traceEnd();
            if (SystemProperties.getInt("persist.sys.displayinset.top", 0) > 0) {
                this.mActivityManagerService.updateSystemUiContext();
                ((DisplayManagerInternal) LocalServices.getService(DisplayManagerInternal.class)).onOverlayChanged();
            }
            timingsTraceAndSlog.traceBegin("StartSensorService");
            this.mSystemServiceManager.startService(SensorService.class);
            timingsTraceAndSlog.traceEnd();
            timingsTraceAndSlog.traceEnd();
        } catch (Throwable th) {
            Watchdog.getInstance().resumeWatchingCurrentThread("packagemanagermain");
            throw th;
        }
    }

    public final void startCoreServices(TimingsTraceAndSlog timingsTraceAndSlog) {
        timingsTraceAndSlog.traceBegin("startCoreServices");
        if (SystemProperties.getBoolean("persist.sys.enable_isrb", false)) {
            timingsTraceAndSlog.traceBegin("StartISRBService");
            this.mSystemServiceManager.startService("com.android.server.isrb.IsrbManagerService");
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceBegin("StartSystemConfigService");
        this.mSystemServiceManager.startService(SystemConfigService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartBatteryService");
        this.mSystemServiceManager.startService(BatteryService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartUsageService");
        this.mSystemServiceManager.startService(UsageStatsService.class);
        this.mActivityManagerService.setUsageStatsManager((UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class));
        timingsTraceAndSlog.traceEnd();
        if (this.mPackageManager.hasSystemFeature("android.software.webview")) {
            timingsTraceAndSlog.traceBegin("StartWebViewUpdateService");
            this.mWebViewUpdateService = (WebViewUpdateService) this.mSystemServiceManager.startService(WebViewUpdateService.class);
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceBegin("StartCachedDeviceStateService");
        this.mSystemServiceManager.startService(CachedDeviceStateService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartBinderCallsStatsService");
        this.mSystemServiceManager.startService(BinderCallsStatsService.LifeCycle.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartLooperStatsService");
        this.mSystemServiceManager.startService(LooperStatsService.Lifecycle.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartRollbackManagerService");
        this.mSystemServiceManager.startService("com.android.server.rollback.RollbackManagerService");
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartNativeTombstoneManagerService");
        this.mSystemServiceManager.startService(NativeTombstoneManagerService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartBugreportManagerService");
        this.mSystemServiceManager.startService(BugreportManagerService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("GpuService");
        this.mSystemServiceManager.startService(GpuService.class);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartRemoteProvisioningService");
        this.mSystemServiceManager.startService(RemoteProvisioningService.class);
        timingsTraceAndSlog.traceEnd();
        if (Build.IS_DEBUGGABLE || Build.IS_ENG) {
            timingsTraceAndSlog.traceBegin(CpuMonitorService.TAG);
            this.mSystemServiceManager.startService(CpuMonitorService.class);
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceEnd();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(158:9|10|(2:11|12)|13|(4:15|16|17|18)(1:1093)|19|(2:20|21)|22|(2:23|24)|25|26|(1:1077)|32|33|34|35|36|(9:1045|1046|1047|1048|1049|1050|1051|1052|1053)|38|39|40|41|42|44|45|46|47|48|49|(1:51)|52|(1:54)|55|56|57|58|59|(1:61)|62|63|64|65|(1:67)(1:1014)|68|(1:71)|72|(1:74)(2:1010|(1:1012)(1:1013))|75|76|77|78|(6:80|81|82|(1:84)(1:88)|85|86)|92|(1:96)|97|98|99|100|101|(3:989|990|991)|103|(1:105)(2:986|(1:988))|106|(6:108|(1:110)(5:974|975|976|977|978)|111|112|113|114)(1:985)|115|116|117|118|(4:122|123|124|125)|129|(2:130|131)|132|133|134|135|136|137|138|(4:139|140|(1:142)(1:956)|143)|144|145|146|(1:148)(1:952)|149|150|(6:152|153|154|(1:156)(1:160)|157|158)|163|(11:167|168|169|170|171|172|173|174|175|(1:177)|179)|188|189|190|191|192|193|194|195|196|197|198|199|200|(1:202)(236:353|354|355|356|(1:358)|359|(1:929)|363|364|365|(1:367)|369|370|371|372|373|(1:375)(1:923)|376|377|378|379|(2:915|916)(1:381)|382|383|384|385|386|387|388|(1:390)(1:908)|391|(1:393)(1:907)|394|395|396|397|398|(1:885)|402|403|404|(1:408)|410|411|412|413|414|415|416|417|418|419|420|421|(7:423|424|425|426|427|428|(4:431|432|433|434))|444|(1:446)|447|448|449|450|451|452|453|454|455|456|457|(1:459)(1:855)|460|(1:462)|463|(1:465)|466|(1:468)|469|(1:471)|472|473|474|475|(6:477|478|479|(1:481)(1:485)|482|483)|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|(4:541|542|543|544)|548|549|550|(1:552)|554|555|(4:557|558|559|560)|564|(1:566)(1:791)|567|(1:569)(3:785|786|787)|570|(1:572)|(1:574)|(1:576)|(4:578|579|580|581)|585|(1:587)|588|589|590|591|(1:782)|(4:597|598|599|600)|604|605|606|607|(1:609)|610|(1:612)|613|(1:778)|617|(1:619)|620|(1:622)|623|624|625|626|627|628|629|(1:771)(6:632|633|634|635|636|637)|638|639|640|641|(1:643)|644|(1:646)|647|(1:649)|650|651|652|653|(2:655|(1:657))|658|659|660|(1:670)|672|673|674|(1:678)|680|(1:682)|683|(1:753)|687|(1:752)|691|(1:693)|694|(1:696)|697|(1:699)|700|701|702|703|704|705|(1:707)|(1:709)|(1:711)|712|(4:714|715|716|717)|(4:722|723|724|725)|729|730|731|732|(1:734)|735|(1:737)|738|(1:740)|741)|203|(4:205|206|207|208)(1:352)|(1:210)|211|(1:213)|214|(1:216)|217|218|219|220|(1:222)|223|(1:225)|226|(1:345)(1:229)|230|(1:232)|233|(2:235|(1:237)(1:238))|239|(1:241)(1:344)|242|(2:339|340)|244|(4:329|330|332|333)|246|(1:248)|249|250|251|252|253|254|255|1cde|(1:263)|264|(1:266)|267|(3:268|269|(1:271))|273|(2:274|275)|276|(6:278|279|280|281|282|283)|288|289|(4:291|292|293|294)(1:312)|295|(1:297)|298|(1:300)|301|(2:302|303)|304|305) */
    /* JADX WARN: Can't wrap try/catch for region: R(159:9|10|11|12|13|(4:15|16|17|18)(1:1093)|19|(2:20|21)|22|(2:23|24)|25|26|(1:1077)|32|33|34|35|36|(9:1045|1046|1047|1048|1049|1050|1051|1052|1053)|38|39|40|41|42|44|45|46|47|48|49|(1:51)|52|(1:54)|55|56|57|58|59|(1:61)|62|63|64|65|(1:67)(1:1014)|68|(1:71)|72|(1:74)(2:1010|(1:1012)(1:1013))|75|76|77|78|(6:80|81|82|(1:84)(1:88)|85|86)|92|(1:96)|97|98|99|100|101|(3:989|990|991)|103|(1:105)(2:986|(1:988))|106|(6:108|(1:110)(5:974|975|976|977|978)|111|112|113|114)(1:985)|115|116|117|118|(4:122|123|124|125)|129|(2:130|131)|132|133|134|135|136|137|138|(4:139|140|(1:142)(1:956)|143)|144|145|146|(1:148)(1:952)|149|150|(6:152|153|154|(1:156)(1:160)|157|158)|163|(11:167|168|169|170|171|172|173|174|175|(1:177)|179)|188|189|190|191|192|193|194|195|196|197|198|199|200|(1:202)(236:353|354|355|356|(1:358)|359|(1:929)|363|364|365|(1:367)|369|370|371|372|373|(1:375)(1:923)|376|377|378|379|(2:915|916)(1:381)|382|383|384|385|386|387|388|(1:390)(1:908)|391|(1:393)(1:907)|394|395|396|397|398|(1:885)|402|403|404|(1:408)|410|411|412|413|414|415|416|417|418|419|420|421|(7:423|424|425|426|427|428|(4:431|432|433|434))|444|(1:446)|447|448|449|450|451|452|453|454|455|456|457|(1:459)(1:855)|460|(1:462)|463|(1:465)|466|(1:468)|469|(1:471)|472|473|474|475|(6:477|478|479|(1:481)(1:485)|482|483)|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|(4:541|542|543|544)|548|549|550|(1:552)|554|555|(4:557|558|559|560)|564|(1:566)(1:791)|567|(1:569)(3:785|786|787)|570|(1:572)|(1:574)|(1:576)|(4:578|579|580|581)|585|(1:587)|588|589|590|591|(1:782)|(4:597|598|599|600)|604|605|606|607|(1:609)|610|(1:612)|613|(1:778)|617|(1:619)|620|(1:622)|623|624|625|626|627|628|629|(1:771)(6:632|633|634|635|636|637)|638|639|640|641|(1:643)|644|(1:646)|647|(1:649)|650|651|652|653|(2:655|(1:657))|658|659|660|(1:670)|672|673|674|(1:678)|680|(1:682)|683|(1:753)|687|(1:752)|691|(1:693)|694|(1:696)|697|(1:699)|700|701|702|703|704|705|(1:707)|(1:709)|(1:711)|712|(4:714|715|716|717)|(4:722|723|724|725)|729|730|731|732|(1:734)|735|(1:737)|738|(1:740)|741)|203|(4:205|206|207|208)(1:352)|(1:210)|211|(1:213)|214|(1:216)|217|218|219|220|(1:222)|223|(1:225)|226|(1:345)(1:229)|230|(1:232)|233|(2:235|(1:237)(1:238))|239|(1:241)(1:344)|242|(2:339|340)|244|(4:329|330|332|333)|246|(1:248)|249|250|251|252|253|254|255|1cde|(1:263)|264|(1:266)|267|(3:268|269|(1:271))|273|(2:274|275)|276|(6:278|279|280|281|282|283)|288|289|(4:291|292|293|294)(1:312)|295|(1:297)|298|(1:300)|301|(2:302|303)|304|305) */
    /* JADX WARN: Can't wrap try/catch for region: R(160:9|10|11|12|13|(4:15|16|17|18)(1:1093)|19|(2:20|21)|22|(2:23|24)|25|26|(1:1077)|32|33|34|35|36|(9:1045|1046|1047|1048|1049|1050|1051|1052|1053)|38|39|40|41|42|44|45|46|47|48|49|(1:51)|52|(1:54)|55|56|57|58|59|(1:61)|62|63|64|65|(1:67)(1:1014)|68|(1:71)|72|(1:74)(2:1010|(1:1012)(1:1013))|75|76|77|78|(6:80|81|82|(1:84)(1:88)|85|86)|92|(1:96)|97|98|99|100|101|(3:989|990|991)|103|(1:105)(2:986|(1:988))|106|(6:108|(1:110)(5:974|975|976|977|978)|111|112|113|114)(1:985)|115|116|117|118|(4:122|123|124|125)|129|(2:130|131)|132|133|134|135|136|137|138|(4:139|140|(1:142)(1:956)|143)|144|145|146|(1:148)(1:952)|149|150|(6:152|153|154|(1:156)(1:160)|157|158)|163|(11:167|168|169|170|171|172|173|174|175|(1:177)|179)|188|189|190|191|192|193|194|195|196|197|198|199|200|(1:202)(236:353|354|355|356|(1:358)|359|(1:929)|363|364|365|(1:367)|369|370|371|372|373|(1:375)(1:923)|376|377|378|379|(2:915|916)(1:381)|382|383|384|385|386|387|388|(1:390)(1:908)|391|(1:393)(1:907)|394|395|396|397|398|(1:885)|402|403|404|(1:408)|410|411|412|413|414|415|416|417|418|419|420|421|(7:423|424|425|426|427|428|(4:431|432|433|434))|444|(1:446)|447|448|449|450|451|452|453|454|455|456|457|(1:459)(1:855)|460|(1:462)|463|(1:465)|466|(1:468)|469|(1:471)|472|473|474|475|(6:477|478|479|(1:481)(1:485)|482|483)|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|(4:541|542|543|544)|548|549|550|(1:552)|554|555|(4:557|558|559|560)|564|(1:566)(1:791)|567|(1:569)(3:785|786|787)|570|(1:572)|(1:574)|(1:576)|(4:578|579|580|581)|585|(1:587)|588|589|590|591|(1:782)|(4:597|598|599|600)|604|605|606|607|(1:609)|610|(1:612)|613|(1:778)|617|(1:619)|620|(1:622)|623|624|625|626|627|628|629|(1:771)(6:632|633|634|635|636|637)|638|639|640|641|(1:643)|644|(1:646)|647|(1:649)|650|651|652|653|(2:655|(1:657))|658|659|660|(1:670)|672|673|674|(1:678)|680|(1:682)|683|(1:753)|687|(1:752)|691|(1:693)|694|(1:696)|697|(1:699)|700|701|702|703|704|705|(1:707)|(1:709)|(1:711)|712|(4:714|715|716|717)|(4:722|723|724|725)|729|730|731|732|(1:734)|735|(1:737)|738|(1:740)|741)|203|(4:205|206|207|208)(1:352)|(1:210)|211|(1:213)|214|(1:216)|217|218|219|220|(1:222)|223|(1:225)|226|(1:345)(1:229)|230|(1:232)|233|(2:235|(1:237)(1:238))|239|(1:241)(1:344)|242|(2:339|340)|244|(4:329|330|332|333)|246|(1:248)|249|250|251|252|253|254|255|1cde|(1:263)|264|(1:266)|267|(3:268|269|(1:271))|273|274|275|276|(6:278|279|280|281|282|283)|288|289|(4:291|292|293|294)(1:312)|295|(1:297)|298|(1:300)|301|(2:302|303)|304|305) */
    /* JADX WARN: Can't wrap try/catch for region: R(221:353|(2:354|355)|356|(1:358)|359|(1:929)|363|(5:364|365|(1:367)|369|370)|(2:371|372)|373|(1:375)(1:923)|376|(2:377|378)|379|(2:915|916)(1:381)|382|(2:383|384)|385|(2:386|387)|388|(1:390)(1:908)|391|(1:393)(1:907)|394|395|396|397|398|(1:885)|402|(3:403|404|(1:408))|410|411|412|413|414|415|416|(2:417|418)|(2:419|420)|421|(7:423|424|425|426|427|428|(4:431|432|433|434))|444|(1:446)|447|448|449|450|451|452|(2:453|454)|(2:455|456)|457|(1:459)(1:855)|460|(1:462)|463|(1:465)|466|(1:468)|469|(1:471)|472|473|474|475|(6:477|478|479|(1:481)(1:485)|482|483)|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|(4:541|542|543|544)|548|549|550|(1:552)|554|555|(4:557|558|559|560)|564|(1:566)(1:791)|567|(1:569)(3:785|786|787)|570|(1:572)|(1:574)|(1:576)|(4:578|579|580|581)|585|(1:587)|588|589|590|591|(1:782)|(4:597|598|599|600)|604|605|606|607|(1:609)|610|(1:612)|613|(1:778)|617|(1:619)|620|(1:622)|623|624|625|626|627|628|629|(1:771)(6:632|633|634|635|636|637)|638|639|640|641|(1:643)|644|(1:646)|647|(1:649)|650|651|652|653|(2:655|(1:657))|658|659|660|(1:670)|672|673|674|(1:678)|680|(1:682)|683|(1:753)|687|(1:752)|691|(1:693)|694|(1:696)|697|(1:699)|700|701|702|703|704|705|(1:707)|(1:709)|(1:711)|712|(4:714|715|716|717)|(4:722|723|724|725)|729|730|731|732|(1:734)|735|(1:737)|738|(1:740)|741) */
    /* JADX WARN: Can't wrap try/catch for region: R(226:353|(2:354|355)|356|(1:358)|359|(1:929)|363|364|365|(1:367)|369|370|371|372|373|(1:375)(1:923)|376|(2:377|378)|379|(2:915|916)(1:381)|382|(2:383|384)|385|(2:386|387)|388|(1:390)(1:908)|391|(1:393)(1:907)|394|395|396|397|398|(1:885)|402|(3:403|404|(1:408))|410|411|412|413|414|415|416|(2:417|418)|(2:419|420)|421|(7:423|424|425|426|427|428|(4:431|432|433|434))|444|(1:446)|447|448|449|450|451|452|(2:453|454)|(2:455|456)|457|(1:459)(1:855)|460|(1:462)|463|(1:465)|466|(1:468)|469|(1:471)|472|473|474|475|(6:477|478|479|(1:481)(1:485)|482|483)|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|(4:541|542|543|544)|548|549|550|(1:552)|554|555|(4:557|558|559|560)|564|(1:566)(1:791)|567|(1:569)(3:785|786|787)|570|(1:572)|(1:574)|(1:576)|(4:578|579|580|581)|585|(1:587)|588|589|590|591|(1:782)|(4:597|598|599|600)|604|605|606|607|(1:609)|610|(1:612)|613|(1:778)|617|(1:619)|620|(1:622)|623|624|625|626|627|628|629|(1:771)(6:632|633|634|635|636|637)|638|639|640|641|(1:643)|644|(1:646)|647|(1:649)|650|651|652|653|(2:655|(1:657))|658|659|660|(1:670)|672|673|674|(1:678)|680|(1:682)|683|(1:753)|687|(1:752)|691|(1:693)|694|(1:696)|697|(1:699)|700|701|702|703|704|705|(1:707)|(1:709)|(1:711)|712|(4:714|715|716|717)|(4:722|723|724|725)|729|730|731|732|(1:734)|735|(1:737)|738|(1:740)|741) */
    /* JADX WARN: Can't wrap try/catch for region: R(227:353|(2:354|355)|356|(1:358)|359|(1:929)|363|364|365|(1:367)|369|370|371|372|373|(1:375)(1:923)|376|(2:377|378)|379|(2:915|916)(1:381)|382|(2:383|384)|385|386|387|388|(1:390)(1:908)|391|(1:393)(1:907)|394|395|396|397|398|(1:885)|402|(3:403|404|(1:408))|410|411|412|413|414|415|416|(2:417|418)|(2:419|420)|421|(7:423|424|425|426|427|428|(4:431|432|433|434))|444|(1:446)|447|448|449|450|451|452|(2:453|454)|(2:455|456)|457|(1:459)(1:855)|460|(1:462)|463|(1:465)|466|(1:468)|469|(1:471)|472|473|474|475|(6:477|478|479|(1:481)(1:485)|482|483)|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|(4:541|542|543|544)|548|549|550|(1:552)|554|555|(4:557|558|559|560)|564|(1:566)(1:791)|567|(1:569)(3:785|786|787)|570|(1:572)|(1:574)|(1:576)|(4:578|579|580|581)|585|(1:587)|588|589|590|591|(1:782)|(4:597|598|599|600)|604|605|606|607|(1:609)|610|(1:612)|613|(1:778)|617|(1:619)|620|(1:622)|623|624|625|626|627|628|629|(1:771)(6:632|633|634|635|636|637)|638|639|640|641|(1:643)|644|(1:646)|647|(1:649)|650|651|652|653|(2:655|(1:657))|658|659|660|(1:670)|672|673|674|(1:678)|680|(1:682)|683|(1:753)|687|(1:752)|691|(1:693)|694|(1:696)|697|(1:699)|700|701|702|703|704|705|(1:707)|(1:709)|(1:711)|712|(4:714|715|716|717)|(4:722|723|724|725)|729|730|731|732|(1:734)|735|(1:737)|738|(1:740)|741) */
    /* JADX WARN: Can't wrap try/catch for region: R(228:353|(2:354|355)|356|(1:358)|359|(1:929)|363|364|365|(1:367)|369|370|371|372|373|(1:375)(1:923)|376|(2:377|378)|379|(2:915|916)(1:381)|382|383|384|385|386|387|388|(1:390)(1:908)|391|(1:393)(1:907)|394|395|396|397|398|(1:885)|402|(3:403|404|(1:408))|410|411|412|413|414|415|416|(2:417|418)|(2:419|420)|421|(7:423|424|425|426|427|428|(4:431|432|433|434))|444|(1:446)|447|448|449|450|451|452|(2:453|454)|(2:455|456)|457|(1:459)(1:855)|460|(1:462)|463|(1:465)|466|(1:468)|469|(1:471)|472|473|474|475|(6:477|478|479|(1:481)(1:485)|482|483)|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|(4:541|542|543|544)|548|549|550|(1:552)|554|555|(4:557|558|559|560)|564|(1:566)(1:791)|567|(1:569)(3:785|786|787)|570|(1:572)|(1:574)|(1:576)|(4:578|579|580|581)|585|(1:587)|588|589|590|591|(1:782)|(4:597|598|599|600)|604|605|606|607|(1:609)|610|(1:612)|613|(1:778)|617|(1:619)|620|(1:622)|623|624|625|626|627|628|629|(1:771)(6:632|633|634|635|636|637)|638|639|640|641|(1:643)|644|(1:646)|647|(1:649)|650|651|652|653|(2:655|(1:657))|658|659|660|(1:670)|672|673|674|(1:678)|680|(1:682)|683|(1:753)|687|(1:752)|691|(1:693)|694|(1:696)|697|(1:699)|700|701|702|703|704|705|(1:707)|(1:709)|(1:711)|712|(4:714|715|716|717)|(4:722|723|724|725)|729|730|731|732|(1:734)|735|(1:737)|738|(1:740)|741) */
    /* JADX WARN: Can't wrap try/catch for region: R(231:353|354|355|356|(1:358)|359|(1:929)|363|364|365|(1:367)|369|370|371|372|373|(1:375)(1:923)|376|(2:377|378)|379|(2:915|916)(1:381)|382|383|384|385|386|387|388|(1:390)(1:908)|391|(1:393)(1:907)|394|395|396|397|398|(1:885)|402|(3:403|404|(1:408))|410|411|412|413|414|415|416|417|418|419|420|421|(7:423|424|425|426|427|428|(4:431|432|433|434))|444|(1:446)|447|448|449|450|451|452|(2:453|454)|(2:455|456)|457|(1:459)(1:855)|460|(1:462)|463|(1:465)|466|(1:468)|469|(1:471)|472|473|474|475|(6:477|478|479|(1:481)(1:485)|482|483)|488|489|490|491|492|493|494|495|496|497|498|499|500|501|502|503|504|505|506|507|508|509|510|511|512|513|514|515|516|517|518|519|520|521|522|523|524|525|526|527|528|529|530|531|532|533|534|535|536|537|538|539|(4:541|542|543|544)|548|549|550|(1:552)|554|555|(4:557|558|559|560)|564|(1:566)(1:791)|567|(1:569)(3:785|786|787)|570|(1:572)|(1:574)|(1:576)|(4:578|579|580|581)|585|(1:587)|588|589|590|591|(1:782)|(4:597|598|599|600)|604|605|606|607|(1:609)|610|(1:612)|613|(1:778)|617|(1:619)|620|(1:622)|623|624|625|626|627|628|629|(1:771)(6:632|633|634|635|636|637)|638|639|640|641|(1:643)|644|(1:646)|647|(1:649)|650|651|652|653|(2:655|(1:657))|658|659|660|(1:670)|672|673|674|(1:678)|680|(1:682)|683|(1:753)|687|(1:752)|691|(1:693)|694|(1:696)|697|(1:699)|700|701|702|703|704|705|(1:707)|(1:709)|(1:711)|712|(4:714|715|716|717)|(4:722|723|724|725)|729|730|731|732|(1:734)|735|(1:737)|738|(1:740)|741) */
    /* JADX WARN: Code restructure failed: missing block: B:1003:0x066c, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1005:0x066e, code lost:
    
        reportWtf("Failed To Start SemInputDeviceManagerService loader", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1007:0x0542, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1009:0x0544, code lost:
    
        android.util.Slog.e("SystemServer", "hqm.jar not found");
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:1016:0x041a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1018:0x041c, code lost:
    
        reportWtf("Failed To Start powerSolutionManagerService Service ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1020:0x0390, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1023:0x0392, code lost:
    
        android.util.Slog.e("SystemServer", "ssrm.jar not found");
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:1025:0x1f52, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1026:0x1f53, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1028:0x1f58, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1029:0x038b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1030:0x038c, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1032:0x0291, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1033:0x0292, code lost:
    
        r11 = r0;
        r19 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1034:0x029a, code lost:
    
        r20 = r12;
        android.util.Slog.e("SystemServer", "Failure starting KnoxMUMContainerPolicy Service", r11);
        r2 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1036:0x0296, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1037:0x0297, code lost:
    
        r11 = r0;
        r19 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1038:0x0265, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1039:0x0266, code lost:
    
        r11 = r0;
        r10 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1040:0x026b, code lost:
    
        r19 = r10;
        android.util.Slog.e("SystemServer", "Failure starting Persona Manager Service", r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:1041:0x0274, code lost:
    
        r10 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1043:0x0268, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1044:0x0269, code lost:
    
        r11 = r0;
        r10 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:1076:0x01cf, code lost:
    
        android.util.Slog.e("SystemServer", "Failed to add SATService.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x1cd2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x1cd3, code lost:
    
        reportWtf("RegisterLogMteState", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x1cbe, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x1cbf, code lost:
    
        reportWtf("making Window Manager Service ready", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x1aa4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x1aa5, code lost:
    
        reportWtf("starting SpenGestureManagerService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:743:0x195b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:744:0x195c, code lost:
    
        android.util.Slog.e("SystemServer", "Failure adding ChimeraManagerService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:746:0x1830, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:747:0x1831, code lost:
    
        r5 = r0;
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:748:0x1836, code lost:
    
        reportWtf("starting MediaRouterService", r5);
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:750:0x1833, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:751:0x1834, code lost:
    
        r5 = r0;
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:754:0x175b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:755:0x175c, code lost:
    
        reportWtf("starting BattAuthManager", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:756:0x1729, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:757:0x172a, code lost:
    
        reportWtf("starting SAccessoryManager", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:759:0x16a8, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:760:0x16a9, code lost:
    
        reportWtf("Failed To Call SemInputDeviceManagerService SystemReady loader ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:762:0x15b7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:763:0x15b8, code lost:
    
        reportWtf("starting CertBlacklister", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:773:0x157b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:774:0x157c, code lost:
    
        reportWtf("starting RuntimeService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:776:0x155f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:777:0x1560, code lost:
    
        reportWtf("starting DiskStats Service", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:780:0x1467, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:781:0x1468, code lost:
    
        android.util.Slog.e("SystemServer", "Failure starting HardwarePropertiesManagerService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:784:0x1409, code lost:
    
        android.util.Slog.e("SystemServer", "Failure starting AdbService");
     */
    /* JADX WARN: Code restructure failed: missing block: B:792:0x12ba, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:793:0x12bb, code lost:
    
        r30 = r1;
        android.util.Slog.e("SystemServer", "Failure starting KnoxVpnEngineService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:795:0x125e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:796:0x125f, code lost:
    
        reportWtf("starting LocationTimeZoneManagerService service", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:798:0x1246, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:799:0x1247, code lost:
    
        reportWtf("starting AltitudeService service", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:801:0x122e, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:802:0x122f, code lost:
    
        reportWtf("starting TimeZoneDetectorService service", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:804:0x1212, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:805:0x1213, code lost:
    
        r2 = r0;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:806:0x1218, code lost:
    
        reportWtf("starting Country Detector", r2);
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:808:0x1215, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:809:0x1216, code lost:
    
        r2 = r0;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:811:0x11f8, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:812:0x11f9, code lost:
    
        reportWtf("Failed To Start SemDisplaySolution Service ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:814:0x11bf, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:815:0x11c0, code lost:
    
        reportWtf("Failed To Start Mdnie Service ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:817:0x117a, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:818:0x117b, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:819:0x1186, code lost:
    
        reportWtf("Starting SLocationService", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:821:0x117d, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:822:0x1184, code lost:
    
        r1 = r0;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:824:0x117f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:825:0x1180, code lost:
    
        r28 = r2;
        r29 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:827:0x1128, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:828:0x1129, code lost:
    
        reportWtf("starting TimeDetectorService service", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:830:0x10e2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:831:0x10e3, code lost:
    
        reportWtf("starting UpdateLockService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:833:0x10c6, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:834:0x10c7, code lost:
    
        reportWtf("starting SystemUpdateManagerService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:836:0x10a2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:837:0x10a3, code lost:
    
        r10 = r0;
        r27 = r1;
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:838:0x10ac, code lost:
    
        reportWtf("starting VCN Management Service", r10);
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:840:0x10a7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:841:0x10a8, code lost:
    
        r10 = r0;
        r27 = r1;
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:843:0x1081, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:844:0x1082, code lost:
    
        r4 = r0;
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:845:0x1087, code lost:
    
        reportWtf("starting VPN Manager Service", r4);
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:847:0x1084, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:848:0x1085, code lost:
    
        r4 = r0;
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:850:0x1065, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:851:0x1066, code lost:
    
        android.util.Slog.e("SystemServer", "Failed to start ExtendedEthernetService.", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:853:0x0fe9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:854:0x0fea, code lost:
    
        reportWtf("starting PacProxyService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:864:0x0f04, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:865:0x0f05, code lost:
    
        r3 = r0;
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:866:0x0f0a, code lost:
    
        reportWtf("starting NetworkPolicy Service", r3);
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:868:0x0f07, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:869:0x0f08, code lost:
    
        r3 = r0;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:878:0x0e1f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:879:0x0e20, code lost:
    
        reportWtf("initializing NetworkStackClient", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:881:0x0e08, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:882:0x0e09, code lost:
    
        reportWtf("initializing ConnectivityModuleConnector", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:887:0x0d9b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:890:0x0d9d, code lost:
    
        android.util.Slog.e("SystemServer", "Failure starting SemContextService", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:892:0x1f38, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:893:0x1f39, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:895:0x1f3e, code lost:
    
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:896:0x0d96, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:897:0x0d97, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:899:0x0d1b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:906:0x1f45, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:934:0x0b08, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:935:0x0b09, code lost:
    
        reportWtf("performing fstrim", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:937:0x0ae9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:944:0x1f51, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:946:0x0aa7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:947:0x0aa8, code lost:
    
        reportWtf("starting GrammarInflectionService service", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:949:0x0a8f, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:950:0x0a90, code lost:
    
        reportWtf("starting LocaleManagerService service", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:953:0x0986, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:954:0x0987, code lost:
    
        android.util.Slog.e("SystemServer", "Failed to start SehHdrSolutionService ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:960:0x08bc, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:961:0x08bd, code lost:
    
        reportWtf("Failure starting IcccManagerService ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:963:0x0891, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:964:0x0892, code lost:
    
        android.util.Slog.e("SystemServer", "Failed to add GameSDKService.", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:969:0x07d4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:970:0x07d5, code lost:
    
        reportWtf("making display ready", r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:1010:0x04da A[Catch: all -> 0x1f60, TryCatch #40 {all -> 0x1f60, blocks: (B:10:0x008d, B:13:0x00b2, B:15:0x00c6, B:18:0x00dd, B:19:0x00e8, B:21:0x0100, B:22:0x0119, B:25:0x015c, B:26:0x016a, B:28:0x0174, B:30:0x017e, B:32:0x0197, B:35:0x01d6, B:1047:0x0200, B:1053:0x0235, B:1061:0x0246, B:1062:0x0249, B:38:0x024e, B:49:0x02a5, B:51:0x031e, B:52:0x032d, B:54:0x035a, B:55:0x036c, B:58:0x0387, B:59:0x039e, B:61:0x03cb, B:62:0x03e9, B:65:0x0421, B:68:0x043e, B:71:0x048f, B:72:0x049e, B:74:0x04d2, B:75:0x04ff, B:77:0x0515, B:78:0x054e, B:80:0x0560, B:82:0x0565, B:84:0x0599, B:86:0x05c7, B:88:0x05b5, B:91:0x05bd, B:92:0x05ca, B:94:0x05fb, B:96:0x0601, B:97:0x0610, B:100:0x0673, B:991:0x0704, B:1000:0x0714, B:1001:0x0717, B:1005:0x066e, B:1009:0x0544, B:1010:0x04da, B:1012:0x04e6, B:1013:0x04ee, B:1018:0x041c, B:1027:0x1f55, B:1028:0x1f58, B:1034:0x029a, B:1040:0x026b, B:1073:0x024a, B:1074:0x024d, B:1076:0x01cf, B:1077:0x0188, B:1085:0x1f5a, B:1086:0x1f5f, B:1090:0x0112, B:1092:0x00d6, B:1093:0x00e1, B:1095:0x00ab, B:1049:0x0211, B:1051:0x0225, B:1052:0x0232, B:1058:0x022b, B:1065:0x023e, B:1082:0x0162, B:24:0x014d, B:99:0x0640, B:12:0x00a0, B:34:0x01c4, B:17:0x00cb, B:1046:0x01ea, B:1069:0x0209, B:990:0x06b1, B:996:0x070a, B:64:0x03ef), top: B:9:0x008d, inners: #12, #21, #33, #39, #47, #64, #76, #89, #93, #106, #110, #113, #118, #120 }] */
    /* JADX WARN: Removed duplicated region for block: B:1014:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:1045:0x01ea A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0754  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x07ef  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x08e1 A[Catch: all -> 0x0920, TryCatch #1 {all -> 0x0920, blocks: (B:140:0x08cb, B:142:0x08e1, B:956:0x08e9), top: B:139:0x08cb }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0947 A[Catch: all -> 0x0986, TryCatch #57 {all -> 0x0986, blocks: (B:146:0x0931, B:148:0x0947, B:952:0x094f), top: B:145:0x0931 }] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0996  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x09ff  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0a53 A[Catch: all -> 0x0a68, TRY_LEAVE, TryCatch #44 {all -> 0x0a68, blocks: (B:175:0x0a4d, B:177:0x0a53), top: B:174:0x0a4d }] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0b18  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x19e1  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x1a05  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x1a69  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x1a84  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x1b2d  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x1b48  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x1b62 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x1b86  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x1b9f  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x1bca  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x1c94  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x1cdf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:329:0x1c4c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x1c25 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x1bda  */
    /* JADX WARN: Removed duplicated region for block: B:352:0x19fc  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0b2d  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0bef  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0c4b  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0ccc  */
    /* JADX WARN: Removed duplicated region for block: B:393:0x0cec  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0d55 A[Catch: all -> 0x0d96, Exception -> 0x0d9b, TryCatch #122 {Exception -> 0x0d9b, all -> 0x0d96, blocks: (B:398:0x0d44, B:400:0x0d55, B:885:0x0d61), top: B:397:0x0d44 }] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x0db2 A[Catch: Exception -> 0x0def, TryCatch #2 {Exception -> 0x0def, blocks: (B:404:0x0dac, B:406:0x0db2, B:408:0x0dba), top: B:403:0x0dac }] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0e4c  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0ec2  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x0f3f  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0f72  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0f8f  */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0fac  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x0fc9  */
    /* JADX WARN: Removed duplicated region for block: B:477:0x100c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x031e A[Catch: all -> 0x1f60, TryCatch #40 {all -> 0x1f60, blocks: (B:10:0x008d, B:13:0x00b2, B:15:0x00c6, B:18:0x00dd, B:19:0x00e8, B:21:0x0100, B:22:0x0119, B:25:0x015c, B:26:0x016a, B:28:0x0174, B:30:0x017e, B:32:0x0197, B:35:0x01d6, B:1047:0x0200, B:1053:0x0235, B:1061:0x0246, B:1062:0x0249, B:38:0x024e, B:49:0x02a5, B:51:0x031e, B:52:0x032d, B:54:0x035a, B:55:0x036c, B:58:0x0387, B:59:0x039e, B:61:0x03cb, B:62:0x03e9, B:65:0x0421, B:68:0x043e, B:71:0x048f, B:72:0x049e, B:74:0x04d2, B:75:0x04ff, B:77:0x0515, B:78:0x054e, B:80:0x0560, B:82:0x0565, B:84:0x0599, B:86:0x05c7, B:88:0x05b5, B:91:0x05bd, B:92:0x05ca, B:94:0x05fb, B:96:0x0601, B:97:0x0610, B:100:0x0673, B:991:0x0704, B:1000:0x0714, B:1001:0x0717, B:1005:0x066e, B:1009:0x0544, B:1010:0x04da, B:1012:0x04e6, B:1013:0x04ee, B:1018:0x041c, B:1027:0x1f55, B:1028:0x1f58, B:1034:0x029a, B:1040:0x026b, B:1073:0x024a, B:1074:0x024d, B:1076:0x01cf, B:1077:0x0188, B:1085:0x1f5a, B:1086:0x1f5f, B:1090:0x0112, B:1092:0x00d6, B:1093:0x00e1, B:1095:0x00ab, B:1049:0x0211, B:1051:0x0225, B:1052:0x0232, B:1058:0x022b, B:1065:0x023e, B:1082:0x0162, B:24:0x014d, B:99:0x0640, B:12:0x00a0, B:34:0x01c4, B:17:0x00cb, B:1046:0x01ea, B:1069:0x0209, B:990:0x06b1, B:996:0x070a, B:64:0x03ef), top: B:9:0x008d, inners: #12, #21, #33, #39, #47, #64, #76, #89, #93, #106, #110, #113, #118, #120 }] */
    /* JADX WARN: Removed duplicated region for block: B:541:0x1276  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x035a A[Catch: all -> 0x1f60, TryCatch #40 {all -> 0x1f60, blocks: (B:10:0x008d, B:13:0x00b2, B:15:0x00c6, B:18:0x00dd, B:19:0x00e8, B:21:0x0100, B:22:0x0119, B:25:0x015c, B:26:0x016a, B:28:0x0174, B:30:0x017e, B:32:0x0197, B:35:0x01d6, B:1047:0x0200, B:1053:0x0235, B:1061:0x0246, B:1062:0x0249, B:38:0x024e, B:49:0x02a5, B:51:0x031e, B:52:0x032d, B:54:0x035a, B:55:0x036c, B:58:0x0387, B:59:0x039e, B:61:0x03cb, B:62:0x03e9, B:65:0x0421, B:68:0x043e, B:71:0x048f, B:72:0x049e, B:74:0x04d2, B:75:0x04ff, B:77:0x0515, B:78:0x054e, B:80:0x0560, B:82:0x0565, B:84:0x0599, B:86:0x05c7, B:88:0x05b5, B:91:0x05bd, B:92:0x05ca, B:94:0x05fb, B:96:0x0601, B:97:0x0610, B:100:0x0673, B:991:0x0704, B:1000:0x0714, B:1001:0x0717, B:1005:0x066e, B:1009:0x0544, B:1010:0x04da, B:1012:0x04e6, B:1013:0x04ee, B:1018:0x041c, B:1027:0x1f55, B:1028:0x1f58, B:1034:0x029a, B:1040:0x026b, B:1073:0x024a, B:1074:0x024d, B:1076:0x01cf, B:1077:0x0188, B:1085:0x1f5a, B:1086:0x1f5f, B:1090:0x0112, B:1092:0x00d6, B:1093:0x00e1, B:1095:0x00ab, B:1049:0x0211, B:1051:0x0225, B:1052:0x0232, B:1058:0x022b, B:1065:0x023e, B:1082:0x0162, B:24:0x014d, B:99:0x0640, B:12:0x00a0, B:34:0x01c4, B:17:0x00cb, B:1046:0x01ea, B:1069:0x0209, B:990:0x06b1, B:996:0x070a, B:64:0x03ef), top: B:9:0x008d, inners: #12, #21, #33, #39, #47, #64, #76, #89, #93, #106, #110, #113, #118, #120 }] */
    /* JADX WARN: Removed duplicated region for block: B:552:0x1297 A[Catch: all -> 0x12ba, TRY_LEAVE, TryCatch #81 {all -> 0x12ba, blocks: (B:550:0x1293, B:552:0x1297), top: B:549:0x1293 }] */
    /* JADX WARN: Removed duplicated region for block: B:557:0x12ca  */
    /* JADX WARN: Removed duplicated region for block: B:566:0x12ef  */
    /* JADX WARN: Removed duplicated region for block: B:569:0x131c  */
    /* JADX WARN: Removed duplicated region for block: B:572:0x1397  */
    /* JADX WARN: Removed duplicated region for block: B:574:0x13a8  */
    /* JADX WARN: Removed duplicated region for block: B:576:0x13b9  */
    /* JADX WARN: Removed duplicated region for block: B:578:0x13ca  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x13ed  */
    /* JADX WARN: Removed duplicated region for block: B:593:0x141d  */
    /* JADX WARN: Removed duplicated region for block: B:597:0x143a  */
    /* JADX WARN: Removed duplicated region for block: B:609:0x1475  */
    /* JADX WARN: Removed duplicated region for block: B:612:0x14ca  */
    /* JADX WARN: Removed duplicated region for block: B:615:0x14e3  */
    /* JADX WARN: Removed duplicated region for block: B:619:0x1518  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x03cb A[Catch: all -> 0x1f60, TryCatch #40 {all -> 0x1f60, blocks: (B:10:0x008d, B:13:0x00b2, B:15:0x00c6, B:18:0x00dd, B:19:0x00e8, B:21:0x0100, B:22:0x0119, B:25:0x015c, B:26:0x016a, B:28:0x0174, B:30:0x017e, B:32:0x0197, B:35:0x01d6, B:1047:0x0200, B:1053:0x0235, B:1061:0x0246, B:1062:0x0249, B:38:0x024e, B:49:0x02a5, B:51:0x031e, B:52:0x032d, B:54:0x035a, B:55:0x036c, B:58:0x0387, B:59:0x039e, B:61:0x03cb, B:62:0x03e9, B:65:0x0421, B:68:0x043e, B:71:0x048f, B:72:0x049e, B:74:0x04d2, B:75:0x04ff, B:77:0x0515, B:78:0x054e, B:80:0x0560, B:82:0x0565, B:84:0x0599, B:86:0x05c7, B:88:0x05b5, B:91:0x05bd, B:92:0x05ca, B:94:0x05fb, B:96:0x0601, B:97:0x0610, B:100:0x0673, B:991:0x0704, B:1000:0x0714, B:1001:0x0717, B:1005:0x066e, B:1009:0x0544, B:1010:0x04da, B:1012:0x04e6, B:1013:0x04ee, B:1018:0x041c, B:1027:0x1f55, B:1028:0x1f58, B:1034:0x029a, B:1040:0x026b, B:1073:0x024a, B:1074:0x024d, B:1076:0x01cf, B:1077:0x0188, B:1085:0x1f5a, B:1086:0x1f5f, B:1090:0x0112, B:1092:0x00d6, B:1093:0x00e1, B:1095:0x00ab, B:1049:0x0211, B:1051:0x0225, B:1052:0x0232, B:1058:0x022b, B:1065:0x023e, B:1082:0x0162, B:24:0x014d, B:99:0x0640, B:12:0x00a0, B:34:0x01c4, B:17:0x00cb, B:1046:0x01ea, B:1069:0x0209, B:990:0x06b1, B:996:0x070a, B:64:0x03ef), top: B:9:0x008d, inners: #12, #21, #33, #39, #47, #64, #76, #89, #93, #106, #110, #113, #118, #120 }] */
    /* JADX WARN: Removed duplicated region for block: B:622:0x1540  */
    /* JADX WARN: Removed duplicated region for block: B:631:0x1588 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:643:0x1606  */
    /* JADX WARN: Removed duplicated region for block: B:646:0x1622  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x164a  */
    /* JADX WARN: Removed duplicated region for block: B:655:0x16b7  */
    /* JADX WARN: Removed duplicated region for block: B:662:0x16f0 A[Catch: all -> 0x1729, TryCatch #9 {all -> 0x1729, blocks: (B:660:0x16ea, B:662:0x16f0, B:664:0x16f8, B:666:0x1700, B:668:0x1708, B:670:0x1710), top: B:659:0x16ea }] */
    /* JADX WARN: Removed duplicated region for block: B:676:0x173f A[Catch: all -> 0x175b, TryCatch #35 {all -> 0x175b, blocks: (B:674:0x1739, B:676:0x173f, B:678:0x1747), top: B:673:0x1739 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:682:0x177f  */
    /* JADX WARN: Removed duplicated region for block: B:685:0x1798  */
    /* JADX WARN: Removed duplicated region for block: B:689:0x17bb  */
    /* JADX WARN: Removed duplicated region for block: B:693:0x17de  */
    /* JADX WARN: Removed duplicated region for block: B:696:0x17f7  */
    /* JADX WARN: Removed duplicated region for block: B:699:0x1810  */
    /* JADX WARN: Removed duplicated region for block: B:707:0x1859  */
    /* JADX WARN: Removed duplicated region for block: B:709:0x186d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x048d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:711:0x187e  */
    /* JADX WARN: Removed duplicated region for block: B:714:0x18b0  */
    /* JADX WARN: Removed duplicated region for block: B:722:0x18c6  */
    /* JADX WARN: Removed duplicated region for block: B:734:0x1973  */
    /* JADX WARN: Removed duplicated region for block: B:737:0x198e  */
    /* JADX WARN: Removed duplicated region for block: B:740:0x19a9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x04d2 A[Catch: all -> 0x1f60, TryCatch #40 {all -> 0x1f60, blocks: (B:10:0x008d, B:13:0x00b2, B:15:0x00c6, B:18:0x00dd, B:19:0x00e8, B:21:0x0100, B:22:0x0119, B:25:0x015c, B:26:0x016a, B:28:0x0174, B:30:0x017e, B:32:0x0197, B:35:0x01d6, B:1047:0x0200, B:1053:0x0235, B:1061:0x0246, B:1062:0x0249, B:38:0x024e, B:49:0x02a5, B:51:0x031e, B:52:0x032d, B:54:0x035a, B:55:0x036c, B:58:0x0387, B:59:0x039e, B:61:0x03cb, B:62:0x03e9, B:65:0x0421, B:68:0x043e, B:71:0x048f, B:72:0x049e, B:74:0x04d2, B:75:0x04ff, B:77:0x0515, B:78:0x054e, B:80:0x0560, B:82:0x0565, B:84:0x0599, B:86:0x05c7, B:88:0x05b5, B:91:0x05bd, B:92:0x05ca, B:94:0x05fb, B:96:0x0601, B:97:0x0610, B:100:0x0673, B:991:0x0704, B:1000:0x0714, B:1001:0x0717, B:1005:0x066e, B:1009:0x0544, B:1010:0x04da, B:1012:0x04e6, B:1013:0x04ee, B:1018:0x041c, B:1027:0x1f55, B:1028:0x1f58, B:1034:0x029a, B:1040:0x026b, B:1073:0x024a, B:1074:0x024d, B:1076:0x01cf, B:1077:0x0188, B:1085:0x1f5a, B:1086:0x1f5f, B:1090:0x0112, B:1092:0x00d6, B:1093:0x00e1, B:1095:0x00ab, B:1049:0x0211, B:1051:0x0225, B:1052:0x0232, B:1058:0x022b, B:1065:0x023e, B:1082:0x0162, B:24:0x014d, B:99:0x0640, B:12:0x00a0, B:34:0x01c4, B:17:0x00cb, B:1046:0x01ea, B:1069:0x0209, B:990:0x06b1, B:996:0x070a, B:64:0x03ef), top: B:9:0x008d, inners: #12, #21, #33, #39, #47, #64, #76, #89, #93, #106, #110, #113, #118, #120 }] */
    /* JADX WARN: Removed duplicated region for block: B:785:0x1324  */
    /* JADX WARN: Removed duplicated region for block: B:791:0x12ff  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0560 A[Catch: all -> 0x1f60, TRY_LEAVE, TryCatch #40 {all -> 0x1f60, blocks: (B:10:0x008d, B:13:0x00b2, B:15:0x00c6, B:18:0x00dd, B:19:0x00e8, B:21:0x0100, B:22:0x0119, B:25:0x015c, B:26:0x016a, B:28:0x0174, B:30:0x017e, B:32:0x0197, B:35:0x01d6, B:1047:0x0200, B:1053:0x0235, B:1061:0x0246, B:1062:0x0249, B:38:0x024e, B:49:0x02a5, B:51:0x031e, B:52:0x032d, B:54:0x035a, B:55:0x036c, B:58:0x0387, B:59:0x039e, B:61:0x03cb, B:62:0x03e9, B:65:0x0421, B:68:0x043e, B:71:0x048f, B:72:0x049e, B:74:0x04d2, B:75:0x04ff, B:77:0x0515, B:78:0x054e, B:80:0x0560, B:82:0x0565, B:84:0x0599, B:86:0x05c7, B:88:0x05b5, B:91:0x05bd, B:92:0x05ca, B:94:0x05fb, B:96:0x0601, B:97:0x0610, B:100:0x0673, B:991:0x0704, B:1000:0x0714, B:1001:0x0717, B:1005:0x066e, B:1009:0x0544, B:1010:0x04da, B:1012:0x04e6, B:1013:0x04ee, B:1018:0x041c, B:1027:0x1f55, B:1028:0x1f58, B:1034:0x029a, B:1040:0x026b, B:1073:0x024a, B:1074:0x024d, B:1076:0x01cf, B:1077:0x0188, B:1085:0x1f5a, B:1086:0x1f5f, B:1090:0x0112, B:1092:0x00d6, B:1093:0x00e1, B:1095:0x00ab, B:1049:0x0211, B:1051:0x0225, B:1052:0x0232, B:1058:0x022b, B:1065:0x023e, B:1082:0x0162, B:24:0x014d, B:99:0x0640, B:12:0x00a0, B:34:0x01c4, B:17:0x00cb, B:1046:0x01ea, B:1069:0x0209, B:990:0x06b1, B:996:0x070a, B:64:0x03ef), top: B:9:0x008d, inners: #12, #21, #33, #39, #47, #64, #76, #89, #93, #106, #110, #113, #118, #120 }] */
    /* JADX WARN: Removed duplicated region for block: B:855:0x0f64  */
    /* JADX WARN: Removed duplicated region for block: B:907:0x0cfc  */
    /* JADX WARN: Removed duplicated region for block: B:908:0x0cdc  */
    /* JADX WARN: Removed duplicated region for block: B:915:0x0c31 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:923:0x0bff  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x05fb A[Catch: all -> 0x1f60, TryCatch #40 {all -> 0x1f60, blocks: (B:10:0x008d, B:13:0x00b2, B:15:0x00c6, B:18:0x00dd, B:19:0x00e8, B:21:0x0100, B:22:0x0119, B:25:0x015c, B:26:0x016a, B:28:0x0174, B:30:0x017e, B:32:0x0197, B:35:0x01d6, B:1047:0x0200, B:1053:0x0235, B:1061:0x0246, B:1062:0x0249, B:38:0x024e, B:49:0x02a5, B:51:0x031e, B:52:0x032d, B:54:0x035a, B:55:0x036c, B:58:0x0387, B:59:0x039e, B:61:0x03cb, B:62:0x03e9, B:65:0x0421, B:68:0x043e, B:71:0x048f, B:72:0x049e, B:74:0x04d2, B:75:0x04ff, B:77:0x0515, B:78:0x054e, B:80:0x0560, B:82:0x0565, B:84:0x0599, B:86:0x05c7, B:88:0x05b5, B:91:0x05bd, B:92:0x05ca, B:94:0x05fb, B:96:0x0601, B:97:0x0610, B:100:0x0673, B:991:0x0704, B:1000:0x0714, B:1001:0x0717, B:1005:0x066e, B:1009:0x0544, B:1010:0x04da, B:1012:0x04e6, B:1013:0x04ee, B:1018:0x041c, B:1027:0x1f55, B:1028:0x1f58, B:1034:0x029a, B:1040:0x026b, B:1073:0x024a, B:1074:0x024d, B:1076:0x01cf, B:1077:0x0188, B:1085:0x1f5a, B:1086:0x1f5f, B:1090:0x0112, B:1092:0x00d6, B:1093:0x00e1, B:1095:0x00ab, B:1049:0x0211, B:1051:0x0225, B:1052:0x0232, B:1058:0x022b, B:1065:0x023e, B:1082:0x0162, B:24:0x014d, B:99:0x0640, B:12:0x00a0, B:34:0x01c4, B:17:0x00cb, B:1046:0x01ea, B:1069:0x0209, B:990:0x06b1, B:996:0x070a, B:64:0x03ef), top: B:9:0x008d, inners: #12, #21, #33, #39, #47, #64, #76, #89, #93, #106, #110, #113, #118, #120 }] */
    /* JADX WARN: Removed duplicated region for block: B:952:0x094f A[Catch: all -> 0x0986, TRY_LEAVE, TryCatch #57 {all -> 0x0986, blocks: (B:146:0x0931, B:148:0x0947, B:952:0x094f), top: B:145:0x0931 }] */
    /* JADX WARN: Removed duplicated region for block: B:956:0x08e9 A[Catch: all -> 0x0920, TRY_LEAVE, TryCatch #1 {all -> 0x0920, blocks: (B:140:0x08cb, B:142:0x08e1, B:956:0x08e9), top: B:139:0x08cb }] */
    /* JADX WARN: Removed duplicated region for block: B:985:0x07c9  */
    /* JADX WARN: Removed duplicated region for block: B:986:0x0735  */
    /* JADX WARN: Removed duplicated region for block: B:989:0x06b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v53, types: [android.os.IBinder, com.android.server.wm.WindowManagerService] */
    /* JADX WARN: Type inference failed for: r12v10, types: [com.android.server.input.InputManagerService, android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r2v438, types: [com.samsung.android.knox.custom.KnoxCustomManagerService, android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r2v511, types: [com.android.server.DirEncryptService, android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.samsung.ucm.ucmservice.CredentialManagerService, android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r4v114, types: [com.android.server.statusbar.StatusBarManagerService, android.os.IBinder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startOtherServices(final com.android.server.utils.TimingsTraceAndSlog r39) {
        /*
            Method dump skipped, instructions count: 8049
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.SystemServer.startOtherServices(com.android.server.utils.TimingsTraceAndSlog):void");
    }

    public static /* synthetic */ void lambda$startOtherServices$1() {
        try {
            Slog.i("SystemServer", "SecondaryZygotePreload");
            TimingsTraceAndSlog newAsyncLog = TimingsTraceAndSlog.newAsyncLog();
            newAsyncLog.traceBegin("SecondaryZygotePreload");
            String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
            if (strArr.length > 0 && !Process.ZYGOTE_PROCESS.preloadDefault(strArr[0])) {
                Slog.e("SystemServer", "Unable to preload default resources for secondary");
            }
            newAsyncLog.traceEnd();
        } catch (Exception e) {
            Slog.e("SystemServer", "Exception preloading default resources", e);
        }
    }

    public static /* synthetic */ void lambda$startOtherServices$2() {
        TimingsTraceAndSlog newAsyncLog = TimingsTraceAndSlog.newAsyncLog();
        newAsyncLog.traceBegin("StartISensorManagerService");
        startISensorManagerService();
        newAsyncLog.traceEnd();
    }

    public static /* synthetic */ void lambda$startOtherServices$3() {
        TimingsTraceAndSlog newAsyncLog = TimingsTraceAndSlog.newAsyncLog();
        newAsyncLog.traceBegin("StartHidlServices");
        startHidlServices();
        newAsyncLog.traceEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOtherServices$7(TimingsTraceAndSlog timingsTraceAndSlog, DevicePolicyManagerService.Lifecycle lifecycle, boolean z, Context context, boolean z2, ConnectivityManager connectivityManager, NetworkManagementService networkManagementService, NetworkPolicyManagerService networkPolicyManagerService, VpnManagerService vpnManagerService, VcnManagementService vcnManagementService, UrspService urspService, HsumBootUserInitializer hsumBootUserInitializer, IBinder iBinder, IBinder iBinder2, SAccessoryManager sAccessoryManager, CountryDetectorService countryDetectorService, NetworkTimeUpdateService networkTimeUpdateService, InputManagerService inputManagerService, TelephonyRegistry telephonyRegistry, MediaRouterService mediaRouterService, boolean z3, MmsServiceBroker mmsServiceBroker, final boolean z4) {
        Slog.i("SystemServer", "Making services ready");
        timingsTraceAndSlog.traceBegin("StartActivityManagerReadyPhase");
        Slog.i("SystemServer", "!@Boot_EBS_D: PHASE_ACTIVITY_MANAGER_READY");
        this.mSystemServiceManager.startBootPhase(timingsTraceAndSlog, SystemService.PHASE_ACTIVITY_MANAGER_READY);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartObservingNativeCrashes");
        try {
            this.mActivityManagerService.startObservingNativeCrashes();
        } catch (Throwable th) {
            reportWtf("observing native crashes", th);
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("RegisterAppOpsPolicy");
        try {
            this.mActivityManagerService.setAppOpsPolicy(new AppOpsPolicy(this.mSystemContext));
        } catch (Throwable th2) {
            reportWtf("registering app ops policy", th2);
        }
        timingsTraceAndSlog.traceEnd();
        Future submit = this.mWebViewUpdateService != null ? SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.SystemServer$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                SystemServer.this.lambda$startOtherServices$4();
            }
        }, "WebViewFactoryPreparation") : null;
        if (this.mPackageManager.hasSystemFeature("android.hardware.type.automotive")) {
            timingsTraceAndSlog.traceBegin("StartCarServiceHelperService");
            DevicePolicySafetyChecker startService = this.mSystemServiceManager.startService("com.android.internal.car.CarServiceHelperService");
            if (startService instanceof Dumpable) {
                this.mDumper.addDumpable((Dumpable) startService);
            }
            if (startService instanceof DevicePolicySafetyChecker) {
                lifecycle.setDevicePolicySafetyChecker(startService);
            }
            timingsTraceAndSlog.traceEnd();
        }
        if (z) {
            timingsTraceAndSlog.traceBegin("StartWearService");
            String string = context.getString(R.string.imProtocolCustom);
            if (!TextUtils.isEmpty(string)) {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(string);
                if (unflattenFromString != null) {
                    Intent intent = new Intent();
                    intent.setComponent(unflattenFromString);
                    intent.addFlags(256);
                    context.startServiceAsUser(intent, UserHandle.SYSTEM);
                } else {
                    Slog.d("SystemServer", "Null wear service component name.");
                }
            }
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceBegin("startResourceOverlayService");
        try {
            startResourceOverlayService(z2);
        } catch (Throwable th3) {
            reportWtf("starting Resource Overlay Service", th3);
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("startThemeService");
        try {
            startThemeService(z2);
        } catch (Throwable th4) {
            reportWtf("starting Theme Service", th4);
        }
        timingsTraceAndSlog.traceEnd();
        if (z2) {
            timingsTraceAndSlog.traceBegin("EnableAirplaneModeInSafeMode");
            try {
                connectivityManager.setAirplaneMode(true);
            } catch (Throwable th5) {
                reportWtf("enabling Airplane Mode during Safe Mode bootup", th5);
            }
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceBegin("MakeNetworkManagementServiceReady");
        if (networkManagementService != null) {
            try {
                Slog.i("SystemServer", "!@Boot_DEBUG: start networkManagement");
                Slog.i("SystemServer", "!@Boot_EBS_D: start networkManagement");
                networkManagementService.systemReady();
                Slog.i("SystemServer", "!@Boot_DEBUG: end networkManagement");
                Slog.i("SystemServer", "!@Boot_EBS_D: end networkManagement");
            } catch (Throwable th6) {
                reportWtf("making Network Managment Service ready", th6);
            }
        }
        CountDownLatch networkScoreAndNetworkManagementServiceReady = networkPolicyManagerService != null ? networkPolicyManagerService.networkScoreAndNetworkManagementServiceReady() : null;
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeConnectivityServiceReady");
        if (connectivityManager != null) {
            try {
                connectivityManager.systemReady();
            } catch (Throwable th7) {
                reportWtf("making Connectivity Service ready", th7);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeVpnManagerServiceReady");
        if (vpnManagerService != null) {
            try {
                vpnManagerService.systemReady();
            } catch (Throwable th8) {
                reportWtf("making VpnManagerService ready", th8);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeVcnManagementServiceReady");
        if (vcnManagementService != null) {
            try {
                vcnManagementService.systemReady();
            } catch (Throwable th9) {
                reportWtf("making VcnManagementService ready", th9);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeNetworkPolicyServiceReady");
        if (networkPolicyManagerService != null) {
            try {
                networkPolicyManagerService.systemReady(networkScoreAndNetworkManagementServiceReady);
            } catch (Throwable th10) {
                reportWtf("making Network Policy Service ready", th10);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeUrspServiceReady");
        if (urspService != null) {
            try {
                urspService.systemReady();
            } catch (Throwable th11) {
                reportWtf("making ursp Service ready", th11);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("WaitForAppDataPrepared");
        this.mPackageManagerService.waitForAppDataPrepared();
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("PhaseThirdPartyAppsCanStart");
        if (submit != null) {
            ConcurrentUtils.waitForFutureNoInterrupt(submit, "WebViewFactoryPreparation");
        }
        Slog.i("SystemServer", "!@Boot_EBS_D: PHASE_THIRD_PARTY_APPS_CAN_START");
        this.mSystemServiceManager.startBootPhase(timingsTraceAndSlog, 600);
        timingsTraceAndSlog.traceEnd();
        if (hsumBootUserInitializer != null) {
            timingsTraceAndSlog.traceBegin("HsumBootUserInitializer.systemRunning");
            hsumBootUserInitializer.systemRunning(timingsTraceAndSlog);
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceBegin("StartNetworkStack");
        try {
            NetworkStackClient.getInstance().start();
        } catch (Throwable th12) {
            reportWtf("starting Network Stack", th12);
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartTethering");
        try {
            ConnectivityModuleConnector.getInstance().startModuleService("android.net.ITetheringConnector", "android.permission.MAINLINE_NETWORK_STACK", new ConnectivityModuleConnector.ModuleServiceCallback() { // from class: com.android.server.SystemServer$$ExternalSyntheticLambda8
                @Override // android.net.ConnectivityModuleConnector.ModuleServiceCallback
                public final void onModuleServiceConnected(IBinder iBinder3) {
                    ServiceManager.addService("tethering", iBinder3, false, 6);
                }
            });
        } catch (Throwable th13) {
            reportWtf("starting Tethering", th13);
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("SLocationServiceReady");
        boolean z5 = false;
        if (iBinder != null) {
            try {
                Class.forName("com.samsung.android.location.SLocationLoader").getDeclaredMethod("systemReady", Context.class, IBinder.class).invoke(null, context, iBinder);
            } catch (Throwable th14) {
                reportWtf("making SLocation Service ready : ", th14);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("SAccessoryManager");
        if (sAccessoryManager != null) {
            try {
                sAccessoryManager.systemReady();
            } catch (Exception e) {
                reportWtf("Notifying SAccessoryManager running", e);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeCountryDetectionServiceReady");
        if (countryDetectorService != null) {
            try {
                countryDetectorService.systemRunning();
            } catch (Throwable th15) {
                reportWtf("Notifying CountryDetectorService running", th15);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeNetworkTimeUpdateReady");
        if (networkTimeUpdateService != null) {
            try {
                networkTimeUpdateService.systemRunning();
            } catch (Throwable th16) {
                reportWtf("Notifying NetworkTimeService running", th16);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeInputManagerServiceReady");
        if (inputManagerService != null) {
            try {
                inputManagerService.systemRunning();
            } catch (Throwable th17) {
                reportWtf("Notifying InputManagerService running", th17);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeTelephonyRegistryReady");
        if (telephonyRegistry != null) {
            try {
                telephonyRegistry.systemRunning();
            } catch (Throwable th18) {
                reportWtf("Notifying TelephonyRegistry running", th18);
            }
        }
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("MakeMediaRouterServiceReady");
        if (mediaRouterService != null) {
            try {
                mediaRouterService.systemRunning();
            } catch (Throwable th19) {
                reportWtf("Notifying MediaRouterService running", th19);
            }
        }
        timingsTraceAndSlog.traceEnd();
        try {
            startEmergencyModeService(context);
        } catch (Exception e2) {
            reportWtf("Notifying EmergencyModeService running", e2);
        }
        if (this.mPackageManager.hasSystemFeature("android.hardware.telephony") || z3) {
            timingsTraceAndSlog.traceBegin("MakeMmsServiceReady");
            if (mmsServiceBroker != null) {
                try {
                    mmsServiceBroker.systemRunning();
                } catch (Throwable th20) {
                    reportWtf("Notifying MmsService running", th20);
                }
            }
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceBegin("IncidentDaemonReady");
        try {
            IIncidentManager asInterface = IIncidentManager.Stub.asInterface(ServiceManager.getService("incident"));
            if (asInterface != null) {
                asInterface.systemRunning();
            }
        } catch (Throwable th21) {
            reportWtf("Notifying incident daemon running", th21);
        }
        timingsTraceAndSlog.traceEnd();
        if (this.mIncrementalServiceHandle != 0) {
            timingsTraceAndSlog.traceBegin("MakeIncrementalServiceReady");
            setIncrementalServiceSystemReady(this.mIncrementalServiceHandle);
            timingsTraceAndSlog.traceEnd();
        }
        try {
            z5 = context.getResources().getBoolean(17891662);
        } catch (Exception e3) {
            Slog.e("SystemServer", "Not starting ExynosDisplaySolutionService", e3);
        }
        if (z5) {
            timingsTraceAndSlog.traceBegin("ExynosDisplaySolution");
            try {
                Slog.i("SystemServer", "ExynosDisplaySolution Service");
                ServiceManager.addService("exynos_display", new ExynosDisplaySolutionManagerService(context));
            } catch (Throwable th22) {
                reportWtf("Failed To Start ExynosDisplaySolution Service ", th22);
            }
            timingsTraceAndSlog.traceEnd();
        }
        Slog.i("SystemServer", "SemDisplayQualityFeature.ENABLED:" + SemDisplayQualityFeature.ENABLED + ",PLATFORM:" + SemDisplayQualityFeature.PLATFORM);
        if (SemDisplayQualityFeature.ENABLED) {
            timingsTraceAndSlog.traceBegin("SemDisplayQuality");
            try {
                Slog.i("SystemServer", "SemDisplayQuality Service");
                ServiceManager.addService("DisplayQuality", new SemDisplayQualityManagerService(context));
            } catch (Throwable th23) {
                reportWtf("Failed To Start SemDisplayQuality Service ", th23);
            }
            timingsTraceAndSlog.traceEnd();
        }
        timingsTraceAndSlog.traceBegin("OdsignStatsLogger");
        try {
            OdsignStatsLogger.triggerStatsWrite();
        } catch (Throwable th24) {
            reportWtf("Triggering OdsignStatsLogger", th24);
        }
        timingsTraceAndSlog.traceEnd();
        Future submit2 = SystemServerInitThreadPool.submit(new Runnable() { // from class: com.android.server.SystemServer$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                SystemServer.this.lambda$startOtherServices$6(z4);
            }
        }, "Load of Classes of Lazy Services");
        timingsTraceAndSlog.traceBegin("Mobile Payment Service");
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartSamsungHealthService");
        this.mSHealthService = new SamsungHealthService(context);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("StartVoiceNoteService");
        this.mVoiceNoteService = new VoiceNoteService(context);
        timingsTraceAndSlog.traceEnd();
        timingsTraceAndSlog.traceBegin("LazyService Wait Here");
        ConcurrentUtils.waitForFutureNoInterrupt(submit2, "Lazy Service");
        timingsTraceAndSlog.traceEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOtherServices$4() {
        Slog.i("SystemServer", "WebViewFactoryPreparation");
        TimingsTraceAndSlog newAsyncLog = TimingsTraceAndSlog.newAsyncLog();
        newAsyncLog.traceBegin("WebViewFactoryPreparation");
        ConcurrentUtils.waitForFutureNoInterrupt(this.mZygotePreload, "Zygote preload");
        this.mZygotePreload = null;
        this.mWebViewUpdateService.prepareWebViewInSystemServer();
        newAsyncLog.traceEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOtherServices$6(boolean z) {
        TimingsTraceAndSlog newAsyncLog = TimingsTraceAndSlog.newAsyncLog();
        newAsyncLog.traceBegin("Email Keystore Service");
        try {
            Slog.i("SystemServer", "Email Keystore Service");
            ServiceManager.addService("emailksproxy", new IServiceCreator() { // from class: com.android.server.SystemServer.6
                public IBinder createService(Context context) {
                    return new EmailKeystoreService(context);
                }
            });
        } catch (Throwable th) {
            Slog.e("SystemServer", "Failure starting Email Keystore Service", th);
        }
        newAsyncLog.traceEnd();
        newAsyncLog.traceBegin("SemAuthnrService");
        try {
            ServiceManager.addService("SemAuthnrService", new IServiceCreator() { // from class: com.android.server.SystemServer.7
                public IBinder createService(Context context) {
                    Slog.e("SystemServer", "before SemAuthnrService adding");
                    return new SemAuthnrService(context);
                }
            });
        } catch (Throwable unused) {
            Slog.e("SystemServer", "Failed to add SemAuthnrService.");
        }
        newAsyncLog.traceEnd();
        startRCPService(null, newAsyncLog, true);
        newAsyncLog.traceBegin("VideoTranscodingService");
        try {
            ServiceManager.addService("SemVideoTranscodingService", VideoTranscodingService.class);
        } catch (Throwable th2) {
            Slog.e("SystemServer", "Failed to start VideoTranscodingService ", th2);
        }
        newAsyncLog.traceEnd();
        if (z) {
            return;
        }
        newAsyncLog.traceBegin("DsmsService");
        try {
            ServiceManager.addService("dsms", DsmsService.class);
        } catch (Throwable th3) {
            reportWtf("DsmsService", th3);
        }
        newAsyncLog.traceEnd();
    }

    public static final void startEmergencyModeService(Context context) {
        try {
            SemEmergencyManager semEmergencyManager = SemEmergencyManager.getInstance(context);
            if (semEmergencyManager != null) {
                semEmergencyManager.readyEmergencyMode();
            } else {
                Slog.d("SystemServer", "Starting emergency service failed: emMgr is null");
            }
        } catch (Exception e) {
            Slog.d("SystemServer", "Starting emergency service failed: " + e);
        }
    }

    public final void startApexServices(TimingsTraceAndSlog timingsTraceAndSlog) {
        timingsTraceAndSlog.traceBegin("startApexServices");
        for (ApexSystemServiceInfo apexSystemServiceInfo : ApexManager.getInstance().getApexSystemServices()) {
            String name = apexSystemServiceInfo.getName();
            String jarPath = apexSystemServiceInfo.getJarPath();
            timingsTraceAndSlog.traceBegin("starting " + name);
            if (TextUtils.isEmpty(jarPath)) {
                this.mSystemServiceManager.startService(name);
            } else {
                this.mSystemServiceManager.startServiceFromJar(name, jarPath);
            }
            timingsTraceAndSlog.traceEnd();
        }
        this.mSystemServiceManager.sealStartedServices();
        timingsTraceAndSlog.traceEnd();
    }

    public final void updateWatchdogTimeout(TimingsTraceAndSlog timingsTraceAndSlog) {
        timingsTraceAndSlog.traceBegin("UpdateWatchdogTimeout");
        Watchdog.getInstance().registerSettingsObserver(this.mSystemContext);
        timingsTraceAndSlog.traceEnd();
    }

    public final boolean deviceHasConfigString(Context context, int i) {
        return !TextUtils.isEmpty(context.getString(i));
    }

    public final void startSystemCaptionsManagerService(Context context, TimingsTraceAndSlog timingsTraceAndSlog) {
        if (!deviceHasConfigString(context, R.string.face_acquired_too_low)) {
            Slog.d("SystemServer", "SystemCaptionsManagerService disabled because resource is not overlaid");
            return;
        }
        timingsTraceAndSlog.traceBegin("StartSystemCaptionsManagerService");
        this.mSystemServiceManager.startService("com.android.server.systemcaptions.SystemCaptionsManagerService");
        timingsTraceAndSlog.traceEnd();
    }

    public final void startTextToSpeechManagerService(Context context, TimingsTraceAndSlog timingsTraceAndSlog) {
        timingsTraceAndSlog.traceBegin("StartTextToSpeechManagerService");
        this.mSystemServiceManager.startService("com.android.server.texttospeech.TextToSpeechManagerService");
        timingsTraceAndSlog.traceEnd();
    }

    public final void startContentCaptureService(Context context, TimingsTraceAndSlog timingsTraceAndSlog) {
        boolean z;
        ActivityManagerService activityManagerService;
        String property = DeviceConfig.getProperty("content_capture", "service_explicitly_enabled");
        if (property == null || property.equalsIgnoreCase("default")) {
            z = false;
        } else {
            z = Boolean.parseBoolean(property);
            if (z) {
                Slog.d("SystemServer", "ContentCaptureService explicitly enabled by DeviceConfig");
            } else {
                Slog.d("SystemServer", "ContentCaptureService explicitly disabled by DeviceConfig");
                return;
            }
        }
        if (!z && !deviceHasConfigString(context, R.string.ext_media_status_removed)) {
            Slog.d("SystemServer", "ContentCaptureService disabled because resource is not overlaid");
            return;
        }
        timingsTraceAndSlog.traceBegin("StartContentCaptureService");
        this.mSystemServiceManager.startService("com.android.server.contentcapture.ContentCaptureManagerService");
        ContentCaptureManagerInternal contentCaptureManagerInternal = (ContentCaptureManagerInternal) LocalServices.getService(ContentCaptureManagerInternal.class);
        if (contentCaptureManagerInternal != null && (activityManagerService = this.mActivityManagerService) != null) {
            activityManagerService.setContentCaptureManager(contentCaptureManagerInternal);
        }
        timingsTraceAndSlog.traceEnd();
    }

    public final void startAttentionService(Context context, TimingsTraceAndSlog timingsTraceAndSlog) {
        if (!AttentionManagerService.isServiceConfigured(context)) {
            Slog.d("SystemServer", "AttentionService is not configured on this device");
            return;
        }
        timingsTraceAndSlog.traceBegin("StartAttentionManagerService");
        this.mSystemServiceManager.startService(AttentionManagerService.class);
        timingsTraceAndSlog.traceEnd();
    }

    public final void startRotationResolverService(Context context, TimingsTraceAndSlog timingsTraceAndSlog) {
        if (!RotationResolverManagerService.isServiceConfigured(context)) {
            Slog.d("SystemServer", "RotationResolverService is not configured on this device");
            return;
        }
        timingsTraceAndSlog.traceBegin("StartRotationResolverService");
        this.mSystemServiceManager.startService(RotationResolverManagerService.class);
        timingsTraceAndSlog.traceEnd();
    }

    public final void startAmbientContextService(TimingsTraceAndSlog timingsTraceAndSlog) {
        timingsTraceAndSlog.traceBegin("StartAmbientContextService");
        this.mSystemServiceManager.startService(AmbientContextManagerService.class);
        timingsTraceAndSlog.traceEnd();
    }

    public final void startWearableSensingService(TimingsTraceAndSlog timingsTraceAndSlog) {
        timingsTraceAndSlog.traceBegin("startWearableSensingService");
        this.mSystemServiceManager.startService(WearableSensingManagerService.class);
        timingsTraceAndSlog.traceEnd();
    }

    public static void startSystemUi(Context context, WindowManagerService windowManagerService) {
        PackageManagerInternal packageManagerInternal = (PackageManagerInternal) LocalServices.getService(PackageManagerInternal.class);
        Intent intent = new Intent();
        intent.setComponent(packageManagerInternal.getSystemUiServiceComponent());
        intent.addFlags(256);
        context.startServiceAsUser(intent, UserHandle.SYSTEM);
        windowManagerService.onSystemUiStarted();
    }

    public static boolean handleEarlySystemWtf(IBinder iBinder, String str, boolean z, ApplicationErrorReport.ParcelableCrashInfo parcelableCrashInfo, int i) {
        int myPid = Process.myPid();
        com.android.server.am.EventLogTags.writeAmWtf(UserHandle.getUserId(1000), myPid, "system_server", -1, str, parcelableCrashInfo.exceptionMessage);
        FrameworkStatsLog.write(80, 1000, str, "system_server", myPid, 3);
        synchronized (SystemServer.class) {
            if (sPendingWtfs == null) {
                sPendingWtfs = new LinkedList();
            }
            sPendingWtfs.add(new Pair(str, parcelableCrashInfo));
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r3v2, types: [com.android.server.DualAppManagerService, android.os.IBinder] */
    public final void startDualAppManagerService(Context context, TimingsTraceAndSlog timingsTraceAndSlog) {
        try {
            timingsTraceAndSlog.traceBegin("DualAppManagerService");
            Slog.d("SystemServer", "startDualAppManagerService | add Service : startDualAppManagerService");
        } finally {
            try {
            } finally {
            }
        }
        if (context == null) {
            Slog.d("SystemServer", "startDualAppManagerService | context is null");
            return;
        }
        if (this.mDualAppService == null) {
            ?? dualAppManagerService = DualAppManagerService.getInstance(context);
            this.mDualAppService = dualAppManagerService;
            ServiceManager.addService("dual_app", (IBinder) dualAppManagerService);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae A[Catch: all -> 0x00be, TRY_LEAVE, TryCatch #3 {all -> 0x00be, blocks: (B:26:0x008d, B:30:0x009a, B:33:0x00a6, B:35:0x00ae, B:38:0x00b5), top: B:25:0x008d }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b5 A[Catch: all -> 0x00be, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x00be, blocks: (B:26:0x008d, B:30:0x009a, B:33:0x00a6, B:35:0x00ae, B:38:0x00b5), top: B:25:0x008d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void startRCPService(android.content.Context r7, com.android.server.utils.TimingsTraceAndSlog r8, boolean r9) {
        /*
            r6 = this;
            java.lang.String r6 = "startRCPService | context is null"
            java.lang.String r0 = "startRCPService | Fail to start service"
            java.lang.String r1 = "persist.sys.knox.userinfo"
            java.lang.String r1 = android.os.SystemProperties.get(r1)
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L19
            int r1 = r1.length()
            if (r1 <= 0) goto L19
            r1 = r2
            goto L1a
        L19:
            r1 = r3
        L1a:
            java.lang.String r4 = "persist.sys.knox.device_owner"
            java.lang.String r4 = android.os.SystemProperties.get(r4)
            if (r4 == 0) goto L2d
            java.lang.String r5 = "true"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L2d
            goto L2e
        L2d:
            r2 = r3
        L2e:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "startRCPService | KnoxPresentInDevice : "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r4 = ", DoEnabled : "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "SystemServer"
            android.util.Slog.d(r4, r3)
            java.lang.String r3 = "RCPManagerService"
            r8.traceBegin(r3)     // Catch: java.lang.Throwable -> L88
            java.lang.String r3 = "rcp"
            if (r9 != 0) goto L73
            if (r1 != 0) goto L5b
            if (r2 == 0) goto L73
        L5b:
            java.lang.String r9 = "startRCPService | add Service : RCPManagerService , rcp"
            android.util.Slog.d(r4, r9)     // Catch: java.lang.Throwable -> L88
            if (r7 != 0) goto L6a
            android.util.Slog.d(r4, r6)     // Catch: java.lang.Throwable -> L88
            r8.traceEnd()
            return
        L6a:
            com.android.server.RCPManagerService r9 = new com.android.server.RCPManagerService     // Catch: java.lang.Throwable -> L88
            r9.<init>(r7)     // Catch: java.lang.Throwable -> L88
            android.os.ServiceManager.addService(r3, r9)     // Catch: java.lang.Throwable -> L88
            goto L84
        L73:
            if (r9 == 0) goto L84
            if (r1 != 0) goto L84
            if (r2 != 0) goto L84
            java.lang.String r9 = "startRCPService | add Lazy Service : RCPManagerService , rcp"
            android.util.Slog.d(r4, r9)     // Catch: java.lang.Throwable -> L88
            java.lang.Class<com.android.server.RCPManagerService> r9 = com.android.server.RCPManagerService.class
            android.os.ServiceManager.addService(r3, r9)     // Catch: java.lang.Throwable -> L88
        L84:
            r8.traceEnd()
            goto L8d
        L88:
            r9 = move-exception
            android.util.Slog.e(r4, r0, r9)     // Catch: java.lang.Throwable -> Lcb
            goto L84
        L8d:
            java.lang.String r9 = "KnoxMUMRCPPolicyService"
            r8.traceBegin(r9)     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r9 = "mum_container_rcp_policy"
            if (r1 != 0) goto La6
            if (r2 == 0) goto L9a
            goto La6
        L9a:
            java.lang.String r6 = "startRCPService | add Lazy Service : KnoxMUMRCPPolicyService , mumrcppolicy"
            android.util.Slog.d(r4, r6)     // Catch: java.lang.Throwable -> Lbe
            java.lang.Class<com.android.server.enterprise.container.KnoxMUMRCPPolicyService> r6 = com.android.server.enterprise.container.KnoxMUMRCPPolicyService.class
            android.os.ServiceManager.addService(r9, r6)     // Catch: java.lang.Throwable -> Lbe
            goto Lc2
        La6:
            java.lang.String r1 = "startRCPService | add Service : KnoxMUMRCPPolicyService , mumrcppolicy"
            android.util.Slog.d(r4, r1)     // Catch: java.lang.Throwable -> Lbe
            if (r7 != 0) goto Lb5
            android.util.Slog.d(r4, r6)     // Catch: java.lang.Throwable -> Lbe
            r8.traceEnd()
            return
        Lb5:
            com.android.server.enterprise.container.KnoxMUMRCPPolicyService r6 = new com.android.server.enterprise.container.KnoxMUMRCPPolicyService     // Catch: java.lang.Throwable -> Lbe
            r6.<init>(r7)     // Catch: java.lang.Throwable -> Lbe
            android.os.ServiceManager.addService(r9, r6)     // Catch: java.lang.Throwable -> Lbe
            goto Lc2
        Lbe:
            r6 = move-exception
            android.util.Slog.e(r4, r0, r6)     // Catch: java.lang.Throwable -> Lc6
        Lc2:
            r8.traceEnd()
            return
        Lc6:
            r6 = move-exception
            r8.traceEnd()
            throw r6
        Lcb:
            r6 = move-exception
            r8.traceEnd()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.SystemServer.startRCPService(android.content.Context, com.android.server.utils.TimingsTraceAndSlog, boolean):void");
    }

    public final void startThemeService(boolean z) {
        Context context = this.mSystemContext;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.samsung.android.themecenter", "com.samsung.android.thememanager.ThemeManagerService"));
        intent.putExtra("safeMode", z);
        intent.putExtra("isStartedBySystemServer", true);
        context.startServiceAsUser(intent, UserHandle.OWNER);
    }

    public final void startResourceOverlayService(boolean z) {
        try {
            LocaleOverlayManagerWrapper.getInstance(this.mSystemContext).initializeOverlays(z);
        } catch (Exception e) {
            Slog.e("SystemServer", "Error while starting LOM: " + e);
        }
    }
}
