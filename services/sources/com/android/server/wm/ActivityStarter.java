package com.android.server.wm;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.BackgroundStartPrivileges;
import android.app.IApplicationThread;
import android.app.ProfilerInfo;
import android.app.WaitResult;
import android.app.WindowConfiguration;
import android.content.ComponentName;
import android.content.Context;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.AuxiliaryResolveInfo;
import android.content.pm.PackageManagerInternal;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInstalld;
import android.os.Trace;
import android.os.UserHandle;
import android.service.voice.IVoiceInteractionSession;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Pools;
import android.util.Slog;
import android.util.SparseBooleanArray;
import android.view.Display;
import android.view.RemoteAnimationAdapter;
import android.widget.Toast;
import android.window.RemoteTransition;
import android.window.WindowContainerToken;
import com.android.internal.app.AppLockPolicy;
import com.android.internal.app.HeavyWeightSwitcherActivity;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.protolog.ProtoLogGroup;
import com.android.internal.protolog.ProtoLogImpl;
import com.android.internal.util.FrameworkStatsLog;
import com.android.internal.util.jobs.XmlUtils;
import com.android.server.DualAppManagerService;
import com.android.server.LocalServices;
import com.android.server.UiThread;
import com.android.server.am.Pageboost;
import com.android.server.am.PendingIntentRecord;
import com.android.server.appprelauncher.AppPrelaunchManagerService;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.pm.ContentDispatcher;
import com.android.server.pm.InstantAppResolver;
import com.android.server.power.ShutdownCheckPoints;
import com.android.server.uri.NeededUriGrants;
import com.android.server.wm.ActivityMetricsLogger;
import com.android.server.wm.ActivityRecord;
import com.android.server.wm.LaunchParamsController;
import com.samsung.android.app.SemDualAppManager;
import com.samsung.android.core.CoreSaLogger;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import com.samsung.android.knox.localservice.ApplicationPolicyInternal;
import com.samsung.android.knox.localservice.PasswordPolicyInternal;
import com.samsung.android.knox.localservice.SecurityPolicyInternal;
import com.samsung.android.multiwindow.MultiWindowCoreState;
import com.samsung.android.rune.CoreRune;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.StringJoiner;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

/* loaded from: classes3.dex */
public class ActivityStarter {
    boolean mAddingToTask;
    public TaskFragment mAddingToTaskFragment;
    public ApplicationPolicyInternal mApplicationPolicy;
    public boolean mAvoidMoveToFront;
    public int mBalCode;
    public int mCallingUid;
    public final ActivityStartController mController;
    public boolean mDisplayLockAndOccluded;
    public boolean mDoResume;
    public boolean mFrozeTaskList;
    public Task mInTask;
    public TaskFragment mInTaskFragment;
    public Intent mIntent;
    public boolean mIntentDelivered;
    public final ActivityStartInterceptor mInterceptor;
    public boolean mIsPrelaunch;
    public boolean mIsTaskCleared;
    public ActivityRecord mLastStartActivityRecord;
    public int mLastStartActivityResult;
    public long mLastStartActivityTimeMs;
    public String mLastStartReason;
    public boolean mLateTransientLaunch;
    public int mLaunchFlags;
    public int mLaunchMode;
    public boolean mLaunchTaskBehind;
    public boolean mMovedToFront;
    ActivityRecord mMovedToTopActivity;
    public boolean mNoAnimation;
    public ActivityRecord mNotTop;
    public ActivityOptions mOptions;
    public PasswordPolicyInternal mPasswordPolicy;
    public TaskDisplayArea mPreferredTaskDisplayArea;
    public int mPreferredWindowingMode;
    public Task mPriorAboveTask;
    public int mRealCallingUid;
    public final RootWindowContainer mRootWindowContainer;
    public SecurityPolicyInternal mSecurityPolicy;
    public final ActivityTaskManagerService mService;
    public ActivityRecord mSourceRecord;
    public Task mSourceRootTask;
    ActivityRecord mStartActivity;
    public int mStartFlags;
    public final ActivityTaskSupervisor mSupervisor;
    public Task mTargetRootTask;
    public Task mTargetTask;
    public boolean mTransientLaunch;
    public IVoiceInteractor mVoiceInteractor;
    public IVoiceInteractionSession mVoiceSession;
    public LaunchParamsController.LaunchParams mLaunchParams = new LaunchParamsController.LaunchParams();
    public boolean mSplitAdjacentRequested = false;
    public Intent mOriginalIntentForCoverLauncher = null;
    Request mRequest = new Request();
    public final SparseBooleanArray mSavedFrontTaskIds = new SparseBooleanArray();
    public int mCustomizedCoverDensityFromOptions = 0;
    public boolean mIsFreeformLaunching = false;
    public int mPrelTrackId = 0;

    /* loaded from: classes3.dex */
    public interface Factory {
        ActivityStarter obtain();

        void recycle(ActivityStarter activityStarter);

        void setController(ActivityStartController activityStartController);
    }

    public static int computeResolveFilterUid(int i, int i2, int i3) {
        return i3 != -10000 ? i3 : i >= 0 ? i : i2;
    }

    public static int getExternalResult(int i) {
        if (i != 102) {
            return i;
        }
        return 0;
    }

    public static boolean isDocumentLaunchesIntoExisting(int i) {
        return (524288 & i) != 0 && (i & 134217728) == 0;
    }

    public final boolean shouldWriteStartActivityDebugLog(int i) {
        return (i == 0 || i == 1 || i == 2 || i == 3) ? false : true;
    }

    /* loaded from: classes3.dex */
    public class DefaultFactory implements Factory {
        public ActivityStartController mController;
        public ActivityStartInterceptor mInterceptor;
        public ActivityTaskManagerService mService;
        public ActivityTaskSupervisor mSupervisor;
        public final int MAX_STARTER_COUNT = 3;
        public Pools.SynchronizedPool mStarterPool = new Pools.SynchronizedPool(3);

        public DefaultFactory(ActivityTaskManagerService activityTaskManagerService, ActivityTaskSupervisor activityTaskSupervisor, ActivityStartInterceptor activityStartInterceptor) {
            this.mService = activityTaskManagerService;
            this.mSupervisor = activityTaskSupervisor;
            this.mInterceptor = activityStartInterceptor;
        }

        @Override // com.android.server.wm.ActivityStarter.Factory
        public void setController(ActivityStartController activityStartController) {
            this.mController = activityStartController;
        }

        @Override // com.android.server.wm.ActivityStarter.Factory
        public ActivityStarter obtain() {
            ActivityStarter activityStarter = (ActivityStarter) this.mStarterPool.acquire();
            if (activityStarter != null) {
                return activityStarter;
            }
            ActivityTaskManagerService activityTaskManagerService = this.mService;
            if (activityTaskManagerService.mRootWindowContainer == null) {
                throw new IllegalStateException("Too early to start activity.");
            }
            return new ActivityStarter(this.mController, activityTaskManagerService, this.mSupervisor, this.mInterceptor);
        }

        @Override // com.android.server.wm.ActivityStarter.Factory
        public void recycle(ActivityStarter activityStarter) {
            activityStarter.reset(true);
            this.mStarterPool.release(activityStarter);
        }
    }

    /* loaded from: classes3.dex */
    public class Request {
        public ActivityInfo activityInfo;
        public SafeActivityOptions activityOptions;
        public boolean allowPendingRemoteAnimationRegistryLookup;
        public boolean avoidMoveToFront;
        public BackgroundStartPrivileges backgroundStartPrivileges;
        public IApplicationThread caller;
        public String callingFeatureId;
        public String callingPackage;
        public boolean componentSpecified;
        public Intent ephemeralIntent;
        public IBinder errorCallbackToken;
        public int filterCallingUid;
        public boolean freezeScreen;
        public Configuration globalConfig;
        public boolean ignoreTargetSecurity;
        public Task inTask;
        public TaskFragment inTaskFragment;
        public Intent intent;
        public NeededUriGrants intentGrants;
        public PendingIntentRecord originatingPendingIntent;
        public ActivityRecord[] outActivity;
        public ProfilerInfo profilerInfo;
        public String reason;
        public int requestCode;
        public ResolveInfo resolveInfo;
        public String resolvedType;
        public IBinder resultTo;
        public String resultWho;
        public int startFlags;
        public int userId;
        public IVoiceInteractor voiceInteractor;
        public IVoiceInteractionSession voiceSession;
        public WaitResult waitResult;
        public int callingPid = 0;
        public int callingUid = -1;
        public int realCallingPid = 0;
        public int realCallingUid = -1;
        public final StringBuilder logMessage = new StringBuilder();

        public Request() {
            reset();
        }

        public void reset() {
            this.caller = null;
            this.intent = null;
            this.intentGrants = null;
            this.ephemeralIntent = null;
            this.resolvedType = null;
            this.activityInfo = null;
            this.resolveInfo = null;
            this.voiceSession = null;
            this.voiceInteractor = null;
            this.resultTo = null;
            this.resultWho = null;
            this.requestCode = 0;
            this.callingPid = 0;
            this.callingUid = -1;
            this.callingPackage = null;
            this.callingFeatureId = null;
            this.realCallingPid = 0;
            this.realCallingUid = -1;
            this.startFlags = 0;
            this.activityOptions = null;
            this.ignoreTargetSecurity = false;
            this.componentSpecified = false;
            this.outActivity = null;
            this.inTask = null;
            this.inTaskFragment = null;
            this.reason = null;
            this.profilerInfo = null;
            this.globalConfig = null;
            this.userId = 0;
            this.waitResult = null;
            this.avoidMoveToFront = false;
            this.allowPendingRemoteAnimationRegistryLookup = true;
            this.filterCallingUid = -10000;
            this.originatingPendingIntent = null;
            this.backgroundStartPrivileges = BackgroundStartPrivileges.NONE;
            this.freezeScreen = false;
            this.errorCallbackToken = null;
        }

        public void set(Request request) {
            this.caller = request.caller;
            this.intent = request.intent;
            this.intentGrants = request.intentGrants;
            this.ephemeralIntent = request.ephemeralIntent;
            this.resolvedType = request.resolvedType;
            this.activityInfo = request.activityInfo;
            this.resolveInfo = request.resolveInfo;
            this.voiceSession = request.voiceSession;
            this.voiceInteractor = request.voiceInteractor;
            this.resultTo = request.resultTo;
            this.resultWho = request.resultWho;
            this.requestCode = request.requestCode;
            this.callingPid = request.callingPid;
            this.callingUid = request.callingUid;
            this.callingPackage = request.callingPackage;
            this.callingFeatureId = request.callingFeatureId;
            this.realCallingPid = request.realCallingPid;
            this.realCallingUid = request.realCallingUid;
            this.startFlags = request.startFlags;
            this.activityOptions = request.activityOptions;
            this.ignoreTargetSecurity = request.ignoreTargetSecurity;
            this.componentSpecified = request.componentSpecified;
            this.outActivity = request.outActivity;
            this.inTask = request.inTask;
            this.inTaskFragment = request.inTaskFragment;
            this.reason = request.reason;
            this.profilerInfo = request.profilerInfo;
            this.globalConfig = request.globalConfig;
            this.userId = request.userId;
            this.waitResult = request.waitResult;
            this.avoidMoveToFront = request.avoidMoveToFront;
            this.allowPendingRemoteAnimationRegistryLookup = request.allowPendingRemoteAnimationRegistryLookup;
            this.filterCallingUid = request.filterCallingUid;
            this.originatingPendingIntent = request.originatingPendingIntent;
            this.backgroundStartPrivileges = request.backgroundStartPrivileges;
            this.freezeScreen = request.freezeScreen;
            this.errorCallbackToken = request.errorCallbackToken;
        }

        /* JADX WARN: Removed duplicated region for block: B:56:0x010c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void resolveActivity(com.android.server.wm.ActivityTaskSupervisor r12) {
            /*
                Method dump skipped, instructions count: 340
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityStarter.Request.resolveActivity(com.android.server.wm.ActivityTaskSupervisor):void");
        }
    }

    public ActivityStarter(ActivityStartController activityStartController, ActivityTaskManagerService activityTaskManagerService, ActivityTaskSupervisor activityTaskSupervisor, ActivityStartInterceptor activityStartInterceptor) {
        this.mController = activityStartController;
        this.mService = activityTaskManagerService;
        this.mRootWindowContainer = activityTaskManagerService.mRootWindowContainer;
        this.mSupervisor = activityTaskSupervisor;
        this.mInterceptor = activityStartInterceptor;
        reset(true);
    }

    public void set(ActivityStarter activityStarter) {
        this.mStartActivity = activityStarter.mStartActivity;
        this.mIntent = activityStarter.mIntent;
        this.mCallingUid = activityStarter.mCallingUid;
        this.mRealCallingUid = activityStarter.mRealCallingUid;
        this.mOptions = activityStarter.mOptions;
        this.mBalCode = activityStarter.mBalCode;
        this.mLaunchTaskBehind = activityStarter.mLaunchTaskBehind;
        this.mLaunchFlags = activityStarter.mLaunchFlags;
        this.mLaunchMode = activityStarter.mLaunchMode;
        this.mLaunchParams.set(activityStarter.mLaunchParams);
        this.mNotTop = activityStarter.mNotTop;
        this.mDoResume = activityStarter.mDoResume;
        this.mStartFlags = activityStarter.mStartFlags;
        this.mSourceRecord = activityStarter.mSourceRecord;
        this.mPreferredTaskDisplayArea = activityStarter.mPreferredTaskDisplayArea;
        this.mPreferredWindowingMode = activityStarter.mPreferredWindowingMode;
        this.mInTask = activityStarter.mInTask;
        this.mInTaskFragment = activityStarter.mInTaskFragment;
        this.mAddingToTask = activityStarter.mAddingToTask;
        this.mSourceRootTask = activityStarter.mSourceRootTask;
        this.mTargetTask = activityStarter.mTargetTask;
        this.mTargetRootTask = activityStarter.mTargetRootTask;
        this.mIsTaskCleared = activityStarter.mIsTaskCleared;
        this.mMovedToFront = activityStarter.mMovedToFront;
        this.mNoAnimation = activityStarter.mNoAnimation;
        this.mAvoidMoveToFront = activityStarter.mAvoidMoveToFront;
        this.mFrozeTaskList = activityStarter.mFrozeTaskList;
        this.mVoiceSession = activityStarter.mVoiceSession;
        this.mVoiceInteractor = activityStarter.mVoiceInteractor;
        this.mIntentDelivered = activityStarter.mIntentDelivered;
        this.mLastStartActivityResult = activityStarter.mLastStartActivityResult;
        this.mLastStartActivityTimeMs = activityStarter.mLastStartActivityTimeMs;
        this.mLastStartReason = activityStarter.mLastStartReason;
        this.mRequest.set(activityStarter.mRequest);
    }

    public boolean relatedToPackage(String str) {
        ActivityRecord activityRecord;
        ActivityRecord activityRecord2 = this.mLastStartActivityRecord;
        return (activityRecord2 != null && str.equals(activityRecord2.packageName)) || ((activityRecord = this.mStartActivity) != null && str.equals(activityRecord.packageName));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v21, types: [long] */
    /* JADX WARN: Type inference failed for: r3v23, types: [long] */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.android.server.wm.ActivityMetricsLogger$LaunchingState] */
    public int execute() {
        long notifyActivityLaunching;
        boolean z;
        AppPrelaunchManagerService appPrelaunchManagerService;
        int i;
        Intent intent;
        AppPrelaunchManagerService appPrelaunchManagerService2;
        int i2;
        Intent intent2;
        AppPrelaunchManagerService appPrelaunchManagerService3;
        int i3;
        AppPrelaunchManagerService appPrelaunchManagerService4;
        int i4;
        AppPrelaunchManagerService appPrelaunchManagerService5;
        int i5;
        AppPrelaunchManagerService appPrelaunchManagerService6;
        int i6;
        AppPrelaunchManagerService appPrelaunchManagerService7;
        int i7;
        AppPrelaunchManagerService appPrelaunchManagerService8;
        int i8;
        AppPrelaunchManagerService appPrelaunchManagerService9;
        int i9;
        AppPrelaunchManagerService appPrelaunchManagerService10;
        int i10;
        AppPrelaunchManagerService appPrelaunchManagerService11;
        int i11;
        try {
            try {
                onExecutionStarted();
                Intent intent3 = this.mRequest.intent;
                if (intent3 != null && intent3.hasFileDescriptors()) {
                    throw new IllegalArgumentException("File descriptors passed in Intent");
                }
                WindowManagerGlobalLock windowManagerGlobalLock = this.mService.mGlobalLock;
                WindowManagerService.boostPriorityForLockedSection();
                synchronized (windowManagerGlobalLock) {
                    try {
                        ActivityRecord forTokenLocked = ActivityRecord.forTokenLocked(this.mRequest.resultTo);
                        int i12 = this.mRequest.realCallingUid;
                        if (i12 == -1) {
                            i12 = Binder.getCallingUid();
                        }
                        notifyActivityLaunching = this.mSupervisor.getActivityMetricsLogger().notifyActivityLaunching(this.mRequest.intent, forTokenLocked, i12);
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
                WindowManagerService.resetPriorityAfterLockedSection();
                Request request = this.mRequest;
                if (request.activityInfo == null) {
                    request.resolveActivity(this.mSupervisor);
                }
                SafeActivityOptions safeActivityOptions = this.mRequest.activityOptions;
                ActivityOptions options = safeActivityOptions != null ? safeActivityOptions.getOptions(this.mSupervisor) : null;
                if (options != null && options.isActiveApplaunch() && this.mRequest.activityInfo != null) {
                    try {
                        notifyActivityLaunching = Binder.clearCallingIdentity();
                        try {
                            WindowManagerGlobalLock windowManagerGlobalLock2 = this.mService.mGlobalLock;
                            WindowManagerService.boostPriorityForLockedSection();
                            synchronized (windowManagerGlobalLock2) {
                                try {
                                    Slog.d("ActivityTaskManager", "request preloading for newly launching app");
                                    ActivityTaskManagerService activityTaskManagerService = this.mService;
                                    TaskOrganizerController taskOrganizerController = activityTaskManagerService.mTaskOrganizerController;
                                    Request request2 = this.mRequest;
                                    taskOrganizerController.preloadSplashScreenAppIcon(request2.activityInfo, request2.userId, activityTaskManagerService.getGlobalConfiguration());
                                    boolean z2 = CoreRune.FW_APPLOCK && !AppLockPolicy.isSupportSSecure() && this.mService.isAppLockedPackage(this.mRequest.activityInfo.processName);
                                    Slog.e("ActivityTaskManager", "TouchDown intent received, starting ActiveLaunch");
                                    ActivityTaskManagerService activityTaskManagerService2 = this.mService;
                                    ActivityInfo activityInfo = this.mRequest.activityInfo;
                                    String str = activityInfo.processName;
                                    ApplicationInfo applicationInfo = activityInfo.applicationInfo;
                                    ActivityInfo activityInfo2 = this.mRequest.activityInfo;
                                    activityTaskManagerService2.startProcessAsyncForActiveLaunch(str, applicationInfo, false, false, "activelaunch", new ComponentName(activityInfo2.packageName, activityInfo2.name), !z2, -1);
                                } finally {
                                }
                            }
                            WindowManagerService.resetPriorityAfterLockedSection();
                            options.setActiveApplaunch(false);
                            Binder.restoreCallingIdentity(notifyActivityLaunching);
                            onExecutionComplete();
                            if (CoreRune.SYSFW_APP_PREL && (appPrelaunchManagerService11 = this.mService.mAps) != null && (i11 = this.mPrelTrackId) != 0) {
                                appPrelaunchManagerService11.stopTrackIntent(i11);
                            }
                            return 0;
                        } catch (Exception e) {
                            Slog.e("ActivityTaskManager", "ActiveLaunching Fail, " + e);
                            options.setActiveApplaunch(false);
                            Binder.restoreCallingIdentity(notifyActivityLaunching);
                            onExecutionComplete();
                            if (CoreRune.SYSFW_APP_PREL && (appPrelaunchManagerService10 = this.mService.mAps) != null && (i10 = this.mPrelTrackId) != 0) {
                                appPrelaunchManagerService10.stopTrackIntent(i10);
                            }
                            return -96;
                        }
                    } catch (Throwable unused) {
                        options.setActiveApplaunch(false);
                        Binder.restoreCallingIdentity(notifyActivityLaunching);
                        onExecutionComplete();
                        if (CoreRune.SYSFW_APP_PREL && (appPrelaunchManagerService9 = this.mService.mAps) != null && (i9 = this.mPrelTrackId) != 0) {
                            appPrelaunchManagerService9.stopTrackIntent(i9);
                        }
                        return 0;
                    }
                }
                if (options != null && options.isMlLaunch() > -1 && this.mRequest.activityInfo != null) {
                    try {
                        notifyActivityLaunching = Binder.clearCallingIdentity();
                        try {
                            WindowManagerGlobalLock windowManagerGlobalLock3 = this.mService.mGlobalLock;
                            WindowManagerService.boostPriorityForLockedSection();
                            synchronized (windowManagerGlobalLock3) {
                                try {
                                    Slog.i("ActivityTaskManager", "[SecIpm] intent received, starting preload launch:" + this.mRequest.activityInfo.processName);
                                    ActivityTaskManagerService activityTaskManagerService3 = this.mService;
                                    ActivityInfo activityInfo3 = this.mRequest.activityInfo;
                                    String str2 = activityInfo3.processName;
                                    ApplicationInfo applicationInfo2 = activityInfo3.applicationInfo;
                                    ActivityInfo activityInfo4 = this.mRequest.activityInfo;
                                    activityTaskManagerService3.startProcessAsyncForActiveLaunch(str2, applicationInfo2, false, false, "IpmLaunch", new ComponentName(activityInfo4.packageName, activityInfo4.name), false, options.isMlLaunch());
                                } finally {
                                }
                            }
                            WindowManagerService.resetPriorityAfterLockedSection();
                            options.setMlLaunch(-1);
                            Binder.restoreCallingIdentity(notifyActivityLaunching);
                            onExecutionComplete();
                            if (CoreRune.SYSFW_APP_PREL && (appPrelaunchManagerService8 = this.mService.mAps) != null && (i8 = this.mPrelTrackId) != 0) {
                                appPrelaunchManagerService8.stopTrackIntent(i8);
                            }
                            return 0;
                        } catch (Exception e2) {
                            Slog.e("ActivityTaskManager", "[SecIpm] Launching Fail, " + e2);
                            options.setMlLaunch(-1);
                            Binder.restoreCallingIdentity(notifyActivityLaunching);
                            onExecutionComplete();
                            if (!CoreRune.SYSFW_APP_PREL || (appPrelaunchManagerService7 = this.mService.mAps) == null || (i7 = this.mPrelTrackId) == 0) {
                                return -96;
                            }
                            appPrelaunchManagerService7.stopTrackIntent(i7);
                            return -96;
                        }
                    } catch (Throwable unused2) {
                        options.setMlLaunch(-1);
                        Binder.restoreCallingIdentity(notifyActivityLaunching);
                        onExecutionComplete();
                        if (CoreRune.SYSFW_APP_PREL && (appPrelaunchManagerService6 = this.mService.mAps) != null && (i6 = this.mPrelTrackId) != 0) {
                            appPrelaunchManagerService6.stopTrackIntent(i6);
                        }
                        return 0;
                    }
                }
                if (CoreRune.SYSFW_APP_PREL && this.mService.mAps != null) {
                    if ("com.samsung.speg".equals(this.mRequest.callingPackage) || (intent2 = this.mRequest.intent) == null || intent2.getComponent() == null) {
                        AppPrelaunchManagerService appPrelaunchManagerService12 = this.mService.mAps;
                        Request request3 = this.mRequest;
                        this.mPrelTrackId = appPrelaunchManagerService12.startTrackIntent(request3.intent, request3.userId);
                    } else {
                        AppPrelaunchManagerService appPrelaunchManagerService13 = this.mService.mAps;
                        Request request4 = this.mRequest;
                        this.mPrelTrackId = appPrelaunchManagerService13.startTrackIntent(request4.intent, request4.userId);
                        String packageName = this.mRequest.intent.getComponent().getPackageName();
                        int i13 = this.mRequest.realCallingUid;
                        if (i13 == -1) {
                            i13 = Binder.getCallingUid();
                        }
                        boolean isAppPrelaunched = this.mService.mAps.isAppPrelaunched(i13);
                        boolean isAppPrelaunched2 = this.mService.mAps.isAppPrelaunched(packageName, this.mRequest.userId);
                        if (!isAppPrelaunched && !isAppPrelaunched2) {
                            SafeActivityOptions safeActivityOptions2 = this.mRequest.activityOptions;
                            if (safeActivityOptions2 != null && safeActivityOptions2.getOriginalOptions() != null && this.mRequest.activityOptions.getOriginalOptions().getPrelaunch()) {
                                Slog.e("PREL", "Unauthorized prelaunching attempt " + this.mRequest.intent);
                                onExecutionComplete();
                                if (!CoreRune.SYSFW_APP_PREL || (appPrelaunchManagerService5 = this.mService.mAps) == null || (i5 = this.mPrelTrackId) == 0) {
                                    return -96;
                                }
                                appPrelaunchManagerService5.stopTrackIntent(i5);
                                return -96;
                            }
                        }
                        SafeActivityOptions safeActivityOptions3 = this.mRequest.activityOptions;
                        ActivityOptions options2 = safeActivityOptions3 != null ? safeActivityOptions3.getOptions(this.mSupervisor) : null;
                        if ((options2 != null && (options2.isActiveApplaunch() || options2.isMlLaunch() > -1)) && this.mRequest.activityInfo != null) {
                            Slog.i("PRELstarter", packageName + " start canceled due to AL");
                            onExecutionComplete();
                            if (!CoreRune.SYSFW_APP_PREL || (appPrelaunchManagerService4 = this.mService.mAps) == null || (i4 = this.mPrelTrackId) == 0) {
                                return -96;
                            }
                            appPrelaunchManagerService4.stopTrackIntent(i4);
                            return -96;
                        }
                        SafeActivityOptions safeActivityOptions4 = this.mRequest.activityOptions;
                        ActivityOptions options3 = safeActivityOptions4 != null ? safeActivityOptions4.getOptions(this.mSupervisor) : ActivityOptions.makeBasic();
                        if (!isAppPrelaunched || isAppPrelaunched2) {
                            AppPrelaunchManagerService appPrelaunchManagerService14 = this.mService.mAps;
                            Request request5 = this.mRequest;
                            int handleActivityExecution = appPrelaunchManagerService14.handleActivityExecution(request5.intent, request5.userId, i13, options3);
                            if (ActivityManager.isStartResultSuccessful(handleActivityExecution)) {
                                WaitResult waitResult = this.mRequest.waitResult;
                                if (waitResult != null) {
                                    waitResult.result = handleActivityExecution;
                                }
                                int externalResult = getExternalResult(handleActivityExecution);
                                onExecutionComplete();
                                if (CoreRune.SYSFW_APP_PREL && (appPrelaunchManagerService3 = this.mService.mAps) != null && (i3 = this.mPrelTrackId) != 0) {
                                    appPrelaunchManagerService3.stopTrackIntent(i3);
                                }
                                return externalResult;
                            }
                        } else {
                            Slog.e("PREL", "Try to launch external app, don't resume " + this.mRequest.intent);
                            options3.setAvoidMoveToFront();
                        }
                        this.mRequest.activityOptions = new SafeActivityOptions(options3);
                    }
                }
                Intent intent4 = this.mRequest.intent;
                if (intent4 != null) {
                    String action = intent4.getAction();
                    String str3 = this.mRequest.callingPackage;
                    if (action != null && str3 != null && ("com.android.internal.intent.action.REQUEST_SHUTDOWN".equals(action) || "android.intent.action.ACTION_SHUTDOWN".equals(action) || "android.intent.action.REBOOT".equals(action))) {
                        ShutdownCheckPoints.recordCheckPoint(action, str3, null);
                    }
                }
                ActivityInfo activityInfo5 = this.mRequest.activityInfo;
                if (activityInfo5 != null) {
                    int userId = UserHandle.getUserId(activityInfo5.applicationInfo.uid);
                    int i14 = this.mRequest.callingUid;
                    int userId2 = i14 == -1 ? UserHandle.getUserId(Binder.getCallingUid()) : UserHandle.getUserId(i14);
                    if (userId2 != userId && ((userId2 == 0 && SemDualAppManager.isDualAppId(userId)) || (userId == 0 && SemDualAppManager.isDualAppId(userId2)))) {
                        DualAppManagerService.changeUriForDualApp(this.mRequest.intent, userId2);
                    }
                    if (SemDualAppManager.isDualAppId(SemDualAppManager.getDualAppProfileId()) && !SemDualAppManager.isDualAppId(userId2)) {
                        Context context = this.mService.mContext;
                        Request request6 = this.mRequest;
                        DualAppManagerService.recordDaUsageCount(context, request6.intent, userId2, request6.userId, request6.callingPackage);
                    }
                }
                Intent intent5 = this.mRequest.intent;
                if (intent5 != null && ("android.intent.action.DELETE".equals(intent5.getAction()) || "android.intent.action.UNINSTALL_PACKAGE".equals(this.mRequest.intent.getAction()))) {
                    Request request7 = this.mRequest;
                    request7.activityInfo = DualAppManagerService.changeInfoIfDeletingDualApp(this.mService.mContext, request7.activityInfo, request7.intent, request7.userId, request7.callingPackage);
                }
                WindowManagerGlobalLock windowManagerGlobalLock4 = this.mService.mGlobalLock;
                WindowManagerService.boostPriorityForLockedSection();
                synchronized (windowManagerGlobalLock4) {
                    try {
                        boolean z3 = (this.mRequest.globalConfig == null || this.mService.getGlobalConfiguration().diff(this.mRequest.globalConfig) == 0) ? false : true;
                        Task topDisplayFocusedRootTask = this.mRootWindowContainer.getTopDisplayFocusedRootTask();
                        if (topDisplayFocusedRootTask != null) {
                            topDisplayFocusedRootTask.mConfigWillChange = z3;
                        }
                        if (ProtoLogCache.WM_DEBUG_CONFIGURATION_enabled) {
                            z = true;
                            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_CONFIGURATION, -1492881555, 3, (String) null, new Object[]{Boolean.valueOf(z3)});
                        } else {
                            z = true;
                        }
                        long clearCallingIdentity = Binder.clearCallingIdentity();
                        int resolveToHeavyWeightSwitcherIfNeeded = resolveToHeavyWeightSwitcherIfNeeded();
                        if (resolveToHeavyWeightSwitcherIfNeeded != 0) {
                            WindowManagerService.resetPriorityAfterLockedSection();
                            onExecutionComplete();
                            if (CoreRune.SYSFW_APP_PREL && (appPrelaunchManagerService2 = this.mService.mAps) != null && (i2 = this.mPrelTrackId) != 0) {
                                appPrelaunchManagerService2.stopTrackIntent(i2);
                            }
                            return resolveToHeavyWeightSwitcherIfNeeded;
                        }
                        Pageboost.onAppLaunch(this.mRequest.intent);
                        try {
                            int executeRequest = executeRequest(this.mRequest);
                            StringBuilder sb = this.mRequest.logMessage;
                            sb.append(" result code=");
                            sb.append(executeRequest);
                            Slog.i("ActivityTaskManager", this.mRequest.logMessage.toString());
                            this.mRequest.logMessage.setLength(0);
                            Pageboost.stopActiveLaunch();
                            Binder.restoreCallingIdentity(clearCallingIdentity);
                            if (z3) {
                                this.mService.mAmInternal.enforceCallingPermission("android.permission.CHANGE_CONFIGURATION", "updateConfiguration()");
                                if (topDisplayFocusedRootTask != null) {
                                    topDisplayFocusedRootTask.mConfigWillChange = false;
                                }
                                if (ProtoLogCache.WM_DEBUG_CONFIGURATION_enabled) {
                                    ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_CONFIGURATION, -1868048288, 0, (String) null, (Object[]) null);
                                }
                                this.mService.updateConfigurationLocked(this.mRequest.globalConfig, null, false);
                            }
                            SafeActivityOptions safeActivityOptions5 = this.mRequest.activityOptions;
                            ActivityOptions originalOptions = safeActivityOptions5 != null ? safeActivityOptions5.getOriginalOptions() : null;
                            ActivityRecord activityRecord = this.mDoResume ? this.mLastStartActivityRecord : null;
                            this.mSupervisor.getActivityMetricsLogger().notifyActivityLaunched(notifyActivityLaunching, executeRequest, this.mStartActivity == activityRecord ? z : false, activityRecord, originalOptions);
                            Request request8 = this.mRequest;
                            if (request8.waitResult != null) {
                                if (CoreRune.SYSFW_APP_PREL && this.mService.mAps != null && "com.samsung.speg".equals(request8.callingPackage) && (intent = this.mRequest.intent) != null && intent.getComponent() != null) {
                                    this.mService.mAps.setStartExecutionComplete(this.mRequest.intent.getComponent().getPackageName(), this.mRequest.userId);
                                }
                                WaitResult waitResult2 = this.mRequest.waitResult;
                                waitResult2.result = executeRequest;
                                executeRequest = waitResultIfNeeded(waitResult2, this.mLastStartActivityRecord, notifyActivityLaunching);
                            }
                            if (shouldWriteStartActivityDebugLog(executeRequest)) {
                                Slog.d("ActivityTaskManager", "startActivity: reason=" + this.mRequest.reason + ", result=" + executeRequest);
                            }
                            int externalResult2 = getExternalResult(executeRequest);
                            WindowManagerService.resetPriorityAfterLockedSection();
                            onExecutionComplete();
                            if (CoreRune.SYSFW_APP_PREL && (appPrelaunchManagerService = this.mService.mAps) != null && (i = this.mPrelTrackId) != 0) {
                                appPrelaunchManagerService.stopTrackIntent(i);
                            }
                            return externalResult2;
                        } catch (Throwable th) {
                            StringBuilder sb2 = this.mRequest.logMessage;
                            sb2.append(" result code=");
                            sb2.append(resolveToHeavyWeightSwitcherIfNeeded);
                            Slog.i("ActivityTaskManager", this.mRequest.logMessage.toString());
                            this.mRequest.logMessage.setLength(0);
                            throw th;
                        }
                    } finally {
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                }
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Throwable th2) {
                Slog.w("ActivityTaskManager", "startActivity: reason=" + this.mRequest.reason, th2);
                throw th2;
            }
        } catch (Throwable th3) {
            onExecutionComplete();
            if (!CoreRune.SYSFW_APP_PREL) {
                throw th3;
            }
            AppPrelaunchManagerService appPrelaunchManagerService15 = this.mService.mAps;
            if (appPrelaunchManagerService15 == null) {
                throw th3;
            }
            int i15 = this.mPrelTrackId;
            if (i15 == 0) {
                throw th3;
            }
            appPrelaunchManagerService15.stopTrackIntent(i15);
            throw th3;
        }
    }

    public final int resolveToHeavyWeightSwitcherIfNeeded() {
        WindowProcessController windowProcessController;
        ActivityInfo activityInfo = this.mRequest.activityInfo;
        if (activityInfo != null && this.mService.mHasHeavyWeightFeature) {
            ApplicationInfo applicationInfo = activityInfo.applicationInfo;
            if ((applicationInfo.privateFlags & 2) != 0 && activityInfo.processName.equals(applicationInfo.packageName) && (windowProcessController = this.mService.mHeavyWeightProcess) != null) {
                int i = windowProcessController.mInfo.uid;
                ActivityInfo activityInfo2 = this.mRequest.activityInfo;
                if (i != activityInfo2.applicationInfo.uid || !windowProcessController.mName.equals(activityInfo2.processName)) {
                    Request request = this.mRequest;
                    int i2 = request.callingUid;
                    IApplicationThread iApplicationThread = request.caller;
                    if (iApplicationThread != null) {
                        WindowProcessController processController = this.mService.getProcessController(iApplicationThread);
                        if (processController != null) {
                            i2 = processController.mInfo.uid;
                        } else {
                            Slog.w("ActivityTaskManager", "Unable to find app for caller " + this.mRequest.caller + " (pid=" + this.mRequest.callingPid + ") when starting: " + this.mRequest.intent.toString());
                            SafeActivityOptions.abort(this.mRequest.activityOptions);
                            return -94;
                        }
                    }
                    ActivityTaskManagerService activityTaskManagerService = this.mService;
                    Request request2 = this.mRequest;
                    IIntentSender intentSenderLocked = activityTaskManagerService.getIntentSenderLocked(2, "android", null, i2, request2.userId, null, null, 0, new Intent[]{request2.intent}, new String[]{request2.resolvedType}, 1342177280, null);
                    Intent intent = new Intent();
                    if (this.mRequest.requestCode >= 0) {
                        intent.putExtra("has_result", true);
                    }
                    intent.putExtra(KnoxCustomManagerService.INTENT, new IntentSender(intentSenderLocked));
                    windowProcessController.updateIntentForHeavyWeightActivity(intent);
                    intent.putExtra("new_app", this.mRequest.activityInfo.packageName);
                    intent.setFlags(this.mRequest.intent.getFlags());
                    intent.setClassName("android", HeavyWeightSwitcherActivity.class.getName());
                    Request request3 = this.mRequest;
                    request3.intent = intent;
                    request3.resolvedType = null;
                    request3.caller = null;
                    request3.callingUid = Binder.getCallingUid();
                    this.mRequest.callingPid = Binder.getCallingPid();
                    Request request4 = this.mRequest;
                    request4.componentSpecified = true;
                    request4.resolveInfo = this.mSupervisor.resolveIntent(request4.intent, null, request4.userId, 0, computeResolveFilterUid(request4.callingUid, request4.realCallingUid, request4.filterCallingUid), this.mRequest.realCallingPid);
                    Request request5 = this.mRequest;
                    ResolveInfo resolveInfo = request5.resolveInfo;
                    ActivityInfo activityInfo3 = resolveInfo != null ? resolveInfo.activityInfo : null;
                    request5.activityInfo = activityInfo3;
                    if (activityInfo3 != null) {
                        request5.activityInfo = this.mService.mAmInternal.getActivityInfoForUser(activityInfo3, request5.userId);
                    }
                }
            }
        }
        return 0;
    }

    public final int waitResultIfNeeded(WaitResult waitResult, ActivityRecord activityRecord, ActivityMetricsLogger.LaunchingState launchingState) {
        int i = waitResult.result;
        if (i == 3 || (i == 2 && activityRecord.nowVisible && activityRecord.isState(ActivityRecord.State.RESUMED))) {
            waitResult.timeout = false;
            waitResult.who = activityRecord.mActivityComponent;
            waitResult.totalTime = 0L;
            return i;
        }
        this.mSupervisor.waitActivityVisibleOrLaunched(waitResult, activityRecord, launchingState);
        if (i == 0 && waitResult.result == 2) {
            return 2;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x06d7  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0735  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0904  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x095a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:252:0x09b6  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x09d8  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x09de A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:262:0x09ee  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0a2a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0a2d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x09b8  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x08ef  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x08f6  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x06c1  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x03f4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:377:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0252 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int executeRequest(com.android.server.wm.ActivityStarter.Request r62) {
        /*
            Method dump skipped, instructions count: 2828
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityStarter.executeRequest(com.android.server.wm.ActivityStarter$Request):int");
    }

    public final boolean handleBackgroundActivityAbort(ActivityRecord activityRecord) {
        if (!(!this.mService.isBackgroundActivityStartsEnabled())) {
            return false;
        }
        ActivityRecord activityRecord2 = activityRecord.resultTo;
        String str = activityRecord.resultWho;
        int i = activityRecord.requestCode;
        if (activityRecord2 != null) {
            activityRecord2.sendResult(-1, str, i, 0, null, null);
        }
        ActivityOptions.abort(activityRecord.getOptions());
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x02bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v26, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference failed for: r7v17, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v25, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.lang.StringBuilder] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int checkStartActivityAllowedByEDM(android.content.Intent r22, android.content.pm.ActivityInfo r23, int r24, com.android.server.wm.SafeActivityOptions r25, android.content.ComponentName r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 807
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityStarter.checkStartActivityAllowedByEDM(android.content.Intent, android.content.pm.ActivityInfo, int, com.android.server.wm.SafeActivityOptions, android.content.ComponentName, java.lang.String):int");
    }

    public final ApplicationPolicyInternal getApplicationPolicy() {
        if (this.mApplicationPolicy == null) {
            this.mApplicationPolicy = (ApplicationPolicyInternal) LocalServices.getService(ApplicationPolicyInternal.class);
        }
        return this.mApplicationPolicy;
    }

    public final PasswordPolicyInternal getPasswordPolicy() {
        if (this.mPasswordPolicy == null) {
            this.mPasswordPolicy = (PasswordPolicyInternal) LocalServices.getService(PasswordPolicyInternal.class);
        }
        return this.mPasswordPolicy;
    }

    public final SecurityPolicyInternal getSecurityPolicy() {
        if (this.mSecurityPolicy == null) {
            this.mSecurityPolicy = (SecurityPolicyInternal) LocalServices.getService(SecurityPolicyInternal.class);
        }
        return this.mSecurityPolicy;
    }

    public final String getStartInfo() {
        return this.mRequest.reason + XmlUtils.STRING_ARRAY_SEPARATOR + this.mRequest.callingPackage + XmlUtils.STRING_ARRAY_SEPARATOR + this.mRequest.callingPid;
    }

    public final void onExecutionComplete() {
        this.mController.onExecutionComplete(this);
    }

    public final void onExecutionStarted() {
        this.mController.onExecutionStarted();
    }

    public final Intent createLaunchIntent(AuxiliaryResolveInfo auxiliaryResolveInfo, Intent intent, String str, String str2, Bundle bundle, String str3, int i) {
        if (auxiliaryResolveInfo != null && auxiliaryResolveInfo.needsPhaseTwo) {
            PackageManagerInternal packageManagerInternalLocked = this.mService.getPackageManagerInternalLocked();
            packageManagerInternalLocked.requestInstantAppResolutionPhaseTwo(auxiliaryResolveInfo, intent, str3, str, str2, packageManagerInternalLocked.isInstantApp(str, i), bundle, i);
        }
        return InstantAppResolver.buildEphemeralInstallerIntent(intent, InstantAppResolver.sanitizeIntent(intent), auxiliaryResolveInfo == null ? null : auxiliaryResolveInfo.failureIntent, str, str2, bundle, str3, i, auxiliaryResolveInfo == null ? null : auxiliaryResolveInfo.installFailureActivity, auxiliaryResolveInfo == null ? null : auxiliaryResolveInfo.token, auxiliaryResolveInfo != null && auxiliaryResolveInfo.needsPhaseTwo, auxiliaryResolveInfo != null ? auxiliaryResolveInfo.filters : null);
    }

    public void postStartActivityProcessing(ActivityRecord activityRecord, int i, Task task) {
        Task task2;
        if (!ActivityManager.isStartResultSuccessful(i) && this.mFrozeTaskList) {
            this.mSupervisor.mRecentTasks.resetFreezeTaskListReorderingOnTimeout();
        }
        if (ActivityManager.isStartResultFatalError(i)) {
            return;
        }
        this.mSupervisor.reportWaitingActivityLaunchedIfNeeded(activityRecord, i);
        if (activityRecord.getTask() != null) {
            task2 = activityRecord.getTask();
        } else {
            task2 = this.mTargetTask;
        }
        if (task == null || task2 == null || !task2.isAttached()) {
            return;
        }
        if (i == 2 || i == 3) {
            Task rootHomeTask = task2.getDisplayArea().getRootHomeTask();
            boolean z = rootHomeTask != null && rootHomeTask.shouldBeVisible(null);
            ActivityRecord topNonFinishingActivity = task2.getTopNonFinishingActivity();
            this.mService.getTaskChangeNotificationController().notifyActivityRestartAttempt(task2.getTaskInfo(), z, this.mIsTaskCleared, topNonFinishingActivity != null && topNonFinishingActivity.isVisible());
        }
        if (ActivityManager.isStartResultSuccessful(i)) {
            this.mInterceptor.onActivityLaunched(task2.getTaskInfo(), activityRecord);
        }
        if (activityRecord.isDexMode() && (activityRecord.isActivityTypeHome() || activityRecord.isActivityTypeRecents())) {
            this.mService.mDexController.moveTasksToDisplayIfNeededLocked(activityRecord.getDisplayId());
        }
        if (CoreRune.MW_SA_LOGGING) {
            sendMultiWindowSALogging(activityRecord);
        }
    }

    public final int startActivityUnchecked(ActivityRecord activityRecord, ActivityRecord activityRecord2, IVoiceInteractionSession iVoiceInteractionSession, IVoiceInteractor iVoiceInteractor, int i, ActivityOptions activityOptions, Task task, TaskFragment taskFragment, int i2, NeededUriGrants neededUriGrants, int i3) {
        TaskDisplayArea defaultTaskDisplayArea;
        TransitionController transitionController = activityRecord.mTransitionController;
        Transition collectingTransition = transitionController.getCollectingTransition();
        if (activityRecord.isLaunchAdjacent() && activityRecord2 != null && activityRecord2.finishing && activityRecord2.getTaskDisplayArea() != null && !activityRecord2.getTaskDisplayArea().isSplitScreenModeActivated() && collectingTransition != null && collectingTransition.mType == 2) {
            Slog.w("ActivityTaskManager", "Start Adjacent Activity, Collecting Transition is TRANSIT_CLOSE");
            collectingTransition.abort();
        }
        Transition createAndStartCollecting = transitionController.isShellTransitionsEnabled() ? transitionController.createAndStartCollecting(1) : null;
        RemoteTransition takeRemoteTransition = activityRecord.takeRemoteTransition();
        Request request = this.mRequest;
        if (request != null && request.freezeScreen && createAndStartCollecting != null) {
            if (this.mLaunchParams.hasPreferredTaskDisplayArea()) {
                defaultTaskDisplayArea = this.mLaunchParams.mPreferredTaskDisplayArea;
            } else {
                defaultTaskDisplayArea = this.mRootWindowContainer.getDefaultTaskDisplayArea();
            }
            DisplayContent displayContentOrCreate = this.mRootWindowContainer.getDisplayContentOrCreate(defaultTaskDisplayArea.getDisplayId());
            if (displayContentOrCreate != null) {
                transitionController.collect(displayContentOrCreate);
                transitionController.collectVisibleChange(displayContentOrCreate);
            }
        }
        try {
            this.mService.deferWindowLayout();
            transitionController.collect(activityRecord);
            try {
                Trace.traceBegin(32L, "startActivityInner");
                int startActivityInner = startActivityInner(activityRecord, activityRecord2, iVoiceInteractionSession, iVoiceInteractor, i, activityOptions, task, taskFragment, i2, neededUriGrants, i3);
                Trace.traceEnd(32L);
                Task handleStartResult = handleStartResult(activityRecord, activityOptions, startActivityInner, createAndStartCollecting, takeRemoteTransition);
                this.mService.continueWindowLayout();
                if (this.mService.mWindowOrganizerController.whileEnterSplitWithSingleStage()) {
                    this.mService.mWindowOrganizerController.onEnterSplitWithSingleStageFinished("adjacent");
                }
                postStartActivityProcessing(activityRecord, startActivityInner, handleStartResult);
                if (this.mRequest != null && handleStartResult != null && this.mStartActivity != null) {
                    int i4 = (activityRecord2 == null || activityRecord2.getTask() == null) ? -1 : activityRecord2.getTask().mTaskId;
                    Request request2 = this.mRequest;
                    int i5 = request2.callingUid;
                    if (request2.caller != null) {
                        WindowManagerGlobalLock windowManagerGlobalLock = this.mService.mGlobalLock;
                        WindowManagerService.boostPriorityForLockedSection();
                        synchronized (windowManagerGlobalLock) {
                            try {
                                WindowProcessController processController = this.mService.getProcessController(this.mRequest.caller);
                                if (processController != null) {
                                    i5 = processController.mInfo.uid;
                                }
                            } catch (Throwable th) {
                                WindowManagerService.resetPriorityAfterLockedSection();
                                throw th;
                            }
                        }
                        WindowManagerService.resetPriorityAfterLockedSection();
                    }
                    ContentDispatcher contentDispatcher = this.mService.mContentDispatcher;
                    Request request3 = this.mRequest;
                    contentDispatcher.openPdfFile(i5, request3.callingPackage, request3.intent, request3.activityInfo, i4, handleStartResult.mTaskId, new BiConsumer() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda3
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            ActivityStarter.this.lambda$startActivityUnchecked$0((Integer) obj, (Uri) obj2);
                        }
                    });
                }
                return startActivityInner;
            } catch (Throwable th2) {
                Trace.traceEnd(32L);
                handleStartResult(activityRecord, activityOptions, -96, createAndStartCollecting, takeRemoteTransition);
                throw th2;
            }
        } catch (Throwable th3) {
            this.mService.continueWindowLayout();
            throw th3;
        }
    }

    public /* synthetic */ void lambda$startActivityUnchecked$0(Integer num, Uri uri) {
        Intent intent = new Intent();
        intent.setData(uri);
        intent.setFlags(1);
        this.mService.mUgmInternal.grantUriPermissionUncheckedFromIntent(this.mService.mUgmInternal.checkGrantUriPermissionFromIntent(intent, num.intValue(), "com.google.android.googlequicksearchbox", this.mService.getCurrentUserId()), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.android.server.wm.Task handleStartResult(com.android.server.wm.ActivityRecord r17, android.app.ActivityOptions r18, int r19, com.android.server.wm.Transition r20, android.window.RemoteTransition r21) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityStarter.handleStartResult(com.android.server.wm.ActivityRecord, android.app.ActivityOptions, int, com.android.server.wm.Transition, android.window.RemoteTransition):com.android.server.wm.Task");
    }

    public int startActivityInner(ActivityRecord activityRecord, ActivityRecord activityRecord2, IVoiceInteractionSession iVoiceInteractionSession, IVoiceInteractor iVoiceInteractor, int i, ActivityOptions activityOptions, Task task, TaskFragment taskFragment, int i2, NeededUriGrants neededUriGrants, int i3) {
        boolean z;
        boolean shouldAbortStartActivity;
        Task task2;
        String str;
        ActivityRecord activityRecord3;
        AppLockPolicy appLockPolicy;
        Bundle bundle;
        ActivityRecord activityRecord4;
        TaskDisplayArea taskDisplayArea;
        Task rootSideStageTask;
        ActivityOptions activityOptions2;
        int deliverToCurrentTopIfNeeded;
        ActivityRecord activityRecord5;
        ActivityRecord findActivity;
        int i4;
        DisplayManager displayManager;
        Display display;
        setInitialState(activityRecord, activityOptions, task, taskFragment, i, activityRecord2, iVoiceInteractionSession, iVoiceInteractor, i2, i3);
        computeLaunchingTaskFlags();
        this.mIntent.setFlags(this.mLaunchFlags);
        Iterator it = this.mSupervisor.mStoppingActivities.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (((ActivityRecord) it.next()).getActivityType() == 5) {
                z = true;
                break;
            }
        }
        Task focusedRootTask = this.mPreferredTaskDisplayArea.getFocusedRootTask();
        Task topLeafTask = focusedRootTask != null ? focusedRootTask.getTopLeafTask() : null;
        Task reusableTask = getReusableTask();
        ActivityOptions activityOptions3 = this.mOptions;
        if (activityOptions3 != null && activityOptions3.freezeRecentTasksReordering() && this.mSupervisor.mRecentTasks.isCallerRecents(activityRecord.launchedFromUid) && !this.mSupervisor.mRecentTasks.isFreezeTaskListReorderingSet()) {
            this.mFrozeTaskList = true;
            this.mSupervisor.mRecentTasks.setFreezeTaskListReordering();
        }
        Task computeTargetTask = reusableTask != null ? reusableTask : computeTargetTask();
        boolean z2 = computeTargetTask == null;
        this.mTargetTask = computeTargetTask;
        ActivityOptions activityOptions4 = this.mOptions;
        if (activityOptions4 != null && shouldCleanLaunchWindowingMode(activityOptions4, reusableTask)) {
            this.mOptions.setForceLaunchWindowingMode(0);
            this.mOptions.setLaunchWindowingMode(0);
        }
        computeLaunchParams(activityRecord, activityRecord2, computeTargetTask);
        int isAllowedToStart = isAllowedToStart(activityRecord, z2, computeTargetTask);
        if (isAllowedToStart != 0) {
            ActivityRecord activityRecord6 = activityRecord.resultTo;
            if (activityRecord6 != null) {
                activityRecord6.sendResult(-1, activityRecord.resultWho, activityRecord.requestCode, 0, null, null);
            }
            return isAllowedToStart;
        }
        ActivityManagerPerformance activityManagerPerformance = this.mService.mAMBooster;
        if (activityManagerPerformance != null) {
            activityManagerPerformance.onActivityStartLocked(activityRecord);
        }
        if (CoreRune.SYSFW_APP_SPEG) {
            int launchDisplayId = activityOptions != null ? activityOptions.getLaunchDisplayId() : -1;
            if (launchDisplayId != -1 && launchDisplayId != this.mPreferredTaskDisplayArea.getDisplayId() && (displayManager = (DisplayManager) this.mService.mContext.getSystemService(DisplayManager.class)) != null && (display = displayManager.getDisplay(launchDisplayId)) != null && (display.getFlags() & 32768) != 0) {
                Slog.i("SPEG", "Abort feature because app launch display is changed forcibly");
                ActivityOptions.abort(activityOptions);
                return 102;
            }
        }
        if (computeTargetTask != null) {
            if (computeTargetTask.getTreeWeight() > 300) {
                Slog.e("ActivityTaskManager", "Remove " + computeTargetTask + " because it has contained too many activities or windows (abort starting " + activityRecord + " from uid=" + this.mCallingUid);
                computeTargetTask.removeImmediately("bulky-task");
                return 102;
            }
            if (!this.mAvoidMoveToFront && activityRecord.mTransitionController.isTransientHide(computeTargetTask)) {
                this.mAvoidMoveToFront = true;
            }
            this.mPriorAboveTask = TaskDisplayArea.getRootTaskAbove(computeTargetTask.getRootTask());
        }
        if (this.mOptions != null && this.mIntent.getLaunchOverTargetTaskId() != -1 && this.mIntent.getForceLaunchOverTargetTask()) {
            if (this.mOptions.getLaunchWindowingMode() != 0) {
                i4 = 0;
                this.mOptions.setLaunchWindowingMode(0);
            } else {
                i4 = 0;
            }
            if (this.mOptions.getForceLaunchWindowingMode() != 0) {
                this.mOptions.setForceLaunchWindowingMode(i4);
            }
        }
        if (this.mService.mMultiTaskingController.needAffordanceAnimation(reusableTask, activityOptions)) {
            this.mService.mMultiTaskingController.setAffordanceTargetTask(reusableTask);
        }
        if (canDismissSplitStart(activityRecord, reusableTask, activityOptions) && this.mRootWindowContainer.getDefaultTaskDisplayArea().isSplitScreenModeActivated()) {
            if (activityOptions.getForceLaunchWindowingMode() != 1) {
                activityOptions.setForceLaunchWindowingMode(1);
            }
            this.mService.mChangeTransitController.requestDisplayChangeTransition(0, "MW_SPLIT_DISMISS_START");
        }
        int dexModeLocked = this.mService.mDexController.getDexModeLocked();
        if (dexModeLocked == 1 || (dexModeLocked == 2 && this.mPreferredTaskDisplayArea.getDisplayId() == 2)) {
            shouldAbortStartActivity = this.mService.mDexController.shouldAbortStartActivity(activityRecord.info);
            this.mService.mDexController.showWarningToastIfNeeded(activityRecord.info, computeTargetTask);
            if (activityRecord.isActivityTypeHome() && activityRecord2 != null && (task2 = activityRecord2.getTask()) != null && task2.inFreeformWindowingMode() && task2.isVisible()) {
                task2.getRootTask().moveTaskToBack(task2);
                Slog.w("ActivityTaskManager", "Start launcher is not allowed on desktop mode. source=" + activityRecord2.mActivityComponent.toShortString());
                shouldAbortStartActivity = true;
            }
        } else if (CoreRune.MT_NEW_DEX_LAUNCH_POLICY && dexModeLocked == 3) {
            boolean shouldAbortStartActivity2 = this.mService.mNewDexController.shouldAbortStartActivity(activityRecord.info);
            if (shouldAbortStartActivity2) {
                this.mService.mDexController.showWarningToastIfNeeded(activityRecord.info, computeTargetTask);
            }
            shouldAbortStartActivity = shouldAbortStartActivity2;
        } else {
            shouldAbortStartActivity = false;
        }
        if (shouldAbortStartActivity) {
            ActivityRecord activityRecord7 = this.mStartActivity;
            ActivityRecord activityRecord8 = activityRecord7.resultTo;
            String str2 = activityRecord7.resultWho;
            if (activityRecord8 != null) {
                activityRecord8.sendResult(-1, str2, activityRecord7.requestCode, 0, null, null);
            }
            ActivityOptions.abort(this.mOptions);
            return 102;
        }
        if (this.mService.mMultiTaskingController.interceptStartActivityLocked(reusableTask, activityRecord, activityRecord2, i, this.mLaunchFlags, this.mPreferredTaskDisplayArea.getDisplayId(), this.mOptions, neededUriGrants, computeTargetTask, false, this.mRequest)) {
            return 10;
        }
        ActivityRecord topNonFinishingActivity = z2 ? null : computeTargetTask.getTopNonFinishingActivity();
        if ((CoreRune.FW_FOLD_SA_LOGGING || CoreRune.FW_FLIP_LARGE_COVER_SCREEN_SA_LOGGING) && (z2 || ((str = this.mRequest.callingPackage) != null && !activityRecord.packageName.equals(str)))) {
            CoreSaLogger.logForBasic(this.mService.mWindowManager.isFolded() ? "W002" : "W005", activityRecord.packageName);
        }
        if (topNonFinishingActivity != null) {
            if (3 == this.mLaunchMode && (activityRecord5 = this.mSourceRecord) != null && computeTargetTask == activityRecord5.getTask() && (findActivity = this.mRootWindowContainer.findActivity(this.mIntent, this.mStartActivity.info, false)) != null && findActivity.getTask() != computeTargetTask) {
                findActivity.destroyIfPossible("Removes redundant singleInstance");
            }
            if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH && this.mLateTransientLaunch) {
                this.mService.getTransitionController().setLateTransientLaunch(topNonFinishingActivity);
            }
            int recycleTask = recycleTask(computeTargetTask, topNonFinishingActivity, reusableTask, neededUriGrants);
            if (recycleTask != 0) {
                return recycleTask;
            }
        } else {
            this.mAddingToTask = true;
        }
        Task focusedRootTask2 = this.mPreferredTaskDisplayArea.getFocusedRootTask();
        if (focusedRootTask2 != null && (deliverToCurrentTopIfNeeded = deliverToCurrentTopIfNeeded(focusedRootTask2, neededUriGrants)) != 0) {
            return deliverToCurrentTopIfNeeded;
        }
        if (z2) {
            MultiTaskingController multiTaskingController = this.mService.mMultiTaskingController;
            ActivityRecord activityRecord9 = this.mStartActivity;
            ActivityRecord activityRecord10 = this.mSourceRecord;
            ActivityOptions activityOptions5 = this.mOptions;
            int displayId = this.mPreferredTaskDisplayArea.getDisplayId();
            Request request = this.mRequest;
            if (multiTaskingController.interceptNewTaskIfNeededLocked(activityRecord9, activityRecord10, activityOptions5, displayId, request.intentGrants, request)) {
                return 10;
            }
        }
        if (this.mTargetRootTask == null) {
            this.mTargetRootTask = getOrCreateRootTask(this.mStartActivity, this.mLaunchFlags, computeTargetTask, this.mOptions);
        }
        if (this.mTargetRootTask.inFreeformWindowingMode() && (activityOptions2 = this.mOptions) != null && activityOptions2.isForceLaunchTaskOnHome()) {
            this.mTargetRootTask.setLaunchTaskOnHomeToken();
        }
        if ((this.mLaunchFlags & IInstalld.FLAG_USE_QUOTA) != 0 && (taskDisplayArea = this.mTargetRootTask.getTaskDisplayArea()) != null && !taskDisplayArea.isSplitScreenModeActivated() && (rootSideStageTask = taskDisplayArea.getRootSideStageTask()) != null && rootSideStageTask.hasChild(this.mTargetRootTask)) {
            this.mService.mWindowOrganizerController.onEnterSplitWithSingleStageStarted("adjacent");
        }
        if (z2) {
            setNewTask((!this.mLaunchTaskBehind || (activityRecord4 = this.mSourceRecord) == null) ? null : activityRecord4.getTask());
            activityRecord3 = activityRecord2;
            if ((activityRecord3 != null && activityRecord3.mIsAliasActivity) || ((bundle = this.mStartActivity.info.metaData) != null && !TextUtils.isEmpty(bundle.getString("com.samsung.android.multiwindow.activity.alias.targetactivity")))) {
                this.mStartActivity.getTask().setAliasManagedTask();
            }
        } else {
            activityRecord3 = activityRecord2;
            if (this.mAddingToTask) {
                addOrReparentStartingActivity(computeTargetTask, "adding to task");
            }
        }
        if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH && this.mLateTransientLaunch) {
            this.mService.getTransitionController().setLateTransientLaunch(this.mLastStartActivityRecord);
        }
        if (!this.mAvoidMoveToFront && this.mDoResume) {
            this.mTargetRootTask.getRootTask().moveToFront("reuseOrNewTask", computeTargetTask);
            if (!this.mTargetRootTask.isTopRootTaskInDisplayArea() && this.mService.isDreaming() && !z) {
                this.mLaunchTaskBehind = true;
                activityRecord.mLaunchTaskBehind = true;
            }
        }
        this.mService.mUgmInternal.grantUriPermissionUncheckedFromIntent(neededUriGrants, this.mStartActivity.getUriPermissionsLocked());
        ActivityRecord activityRecord11 = this.mStartActivity;
        ActivityRecord activityRecord12 = activityRecord11.resultTo;
        if (activityRecord12 != null && activityRecord12.info != null) {
            PackageManagerInternal packageManagerInternalLocked = this.mService.getPackageManagerInternalLocked();
            ActivityRecord activityRecord13 = this.mStartActivity;
            int packageUid = packageManagerInternalLocked.getPackageUid(activityRecord13.resultTo.info.packageName, 0L, activityRecord13.mUserId);
            ActivityRecord activityRecord14 = this.mStartActivity;
            packageManagerInternalLocked.grantImplicitAccess(activityRecord14.mUserId, this.mIntent, UserHandle.getAppId(activityRecord14.info.applicationInfo.uid), packageUid, true);
        } else if (activityRecord11.mShareIdentity) {
            PackageManagerInternal packageManagerInternalLocked2 = this.mService.getPackageManagerInternalLocked();
            ActivityRecord activityRecord15 = this.mStartActivity;
            packageManagerInternalLocked2.grantImplicitAccess(activityRecord15.mUserId, this.mIntent, UserHandle.getAppId(activityRecord15.info.applicationInfo.uid), activityRecord.launchedFromUid, true);
        }
        Task task3 = this.mStartActivity.getTask();
        if (z2) {
            EventLogTags.writeWmCreateTask(this.mStartActivity.mUserId, task3.mTaskId, task3.getRootTaskId(), task3.getDisplayId(), task3.getWindowingMode());
        }
        this.mStartActivity.logStartActivity(30005, task3, getStartInfo());
        if (this.mStartActivity.intent.getLaunchOverTargetTaskId() != -1) {
            this.mStartActivity.intent.semSetLaunchOverTargetTask(-1, false);
        }
        ActivityRecord activityBelow = activityRecord.getTask().getActivityBelow(activityRecord);
        boolean z3 = CoreRune.FW_APPLOCK && (appLockPolicy = this.mService.mAppLockPolicy) != null && this.mAddingToTask && appLockPolicy.isActivityInExceptionList(activityRecord.info.name);
        if (CoreRune.FW_APPLOCK && z3 && activityBelow != null && activityBelow.isAlwaysOnTop() && activityBelow.packageName.contains("com.samsung.android.applock")) {
            activityRecord.mIsAppLockExceptionActivity = true;
        }
        this.mStartActivity.getTaskFragment().clearLastPausedActivity();
        this.mRootWindowContainer.startPowerModeLaunchIfNeeded(false, this.mStartActivity);
        boolean z4 = z2;
        this.mTargetRootTask.startActivityLocked(this.mStartActivity, focusedRootTask2, z2, task3 != topLeafTask, this.mOptions, activityRecord2, this.mRequest.reason.equals("startActivityFromRecents"));
        if (this.mDoResume) {
            ActivityRecord activityRecord16 = task3.topRunningActivityLocked();
            if (!this.mTargetRootTask.isTopActivityFocusable() || (activityRecord16 != null && activityRecord16.isTaskOverlay() && this.mStartActivity != activityRecord16)) {
                this.mTargetRootTask.ensureActivitiesVisible(null, 0, false);
                this.mTargetRootTask.mDisplayContent.executeAppTransition();
            } else {
                if (!this.mAvoidMoveToFront && this.mTargetRootTask.isTopActivityFocusable() && !this.mRootWindowContainer.isTopDisplayFocusedRootTask(this.mTargetRootTask)) {
                    this.mTargetRootTask.moveToFront("startActivityInner");
                }
                this.mRootWindowContainer.resumeFocusedTasksTopActivities(this.mTargetRootTask, this.mStartActivity, this.mOptions, this.mTransientLaunch);
            }
        } else if (CoreRune.SYSFW_APP_PREL) {
            ActivityRecord activityRecord17 = this.mStartActivity;
            if (activityRecord17.mIsPrelMode && !activityRecord17.attachedToProcess()) {
                this.mSupervisor.startSpecificActivity(this.mStartActivity, false, false);
            }
        }
        this.mRootWindowContainer.updateUserRootTask(this.mStartActivity.mUserId, this.mTargetRootTask);
        this.mSupervisor.mRecentTasks.add(task3);
        this.mSupervisor.handleNonResizableTaskIfNeeded(task3, this.mPreferredWindowingMode, this.mPreferredTaskDisplayArea, this.mTargetRootTask);
        ActivityOptions activityOptions6 = this.mOptions;
        if (activityOptions6 != null && activityOptions6.isLaunchIntoPip() && activityRecord3 != null && activityRecord2.getTask() == this.mStartActivity.getTask() && i2 != 0 && this.mStartActivity.checkEnterPictureInPictureState("launch-into-pip", false, true)) {
            this.mRootWindowContainer.moveActivityToPinnedRootTask(this.mStartActivity, activityRecord3, "launch-into-pip");
        }
        if (!CoreRune.MT_NEW_DEX_LAUNCH_POLICY || !task3.isNewDexMode()) {
            boolean z5 = activityRecord3 != null && activityRecord2.inFreeformWindowingMode();
            boolean z6 = this.mStartActivity.getWindowingMode() == 1;
            boolean isResizeable = true ^ this.mStartActivity.isResizeable();
            if (z5 && z4 && z6 && isResizeable) {
                this.mService.mFreeformController.showNotSupportMultiWindowToast(this.mStartActivity);
            }
        }
        if (!CoreRune.FW_APPLOCK || !z3) {
            return 0;
        }
        activityRecord.mIsAppLockExceptionActivity = false;
        return 0;
    }

    public final Task computeTargetTask() {
        ActivityRecord activityRecord = this.mStartActivity;
        if (activityRecord.resultTo == null && this.mInTask == null && !this.mAddingToTask && (this.mLaunchFlags & 268435456) != 0) {
            return null;
        }
        ActivityRecord activityRecord2 = this.mSourceRecord;
        if (activityRecord2 != null) {
            return activityRecord2.getTask();
        }
        Task task = this.mInTask;
        if (task != null) {
            if (!task.isAttached()) {
                getOrCreateRootTask(this.mStartActivity, this.mLaunchFlags, this.mInTask, this.mOptions);
            }
            return this.mInTask;
        }
        Task orCreateRootTask = getOrCreateRootTask(activityRecord, this.mLaunchFlags, null, this.mOptions);
        ActivityRecord topNonFinishingActivity = orCreateRootTask.getTopNonFinishingActivity();
        if (topNonFinishingActivity != null) {
            return topNonFinishingActivity.getTask();
        }
        orCreateRootTask.removeIfPossible("computeTargetTask");
        return null;
    }

    public final void computeLaunchParams(ActivityRecord activityRecord, ActivityRecord activityRecord2, Task task) {
        TaskDisplayArea defaultTaskDisplayArea;
        ActivityOptions activityOptions;
        Task task2 = this.mSourceRootTask;
        if (task2 == null) {
            task2 = this.mRootWindowContainer.getTopDisplayFocusedRootTask();
        }
        if (task2 != null && task2.inSplitScreenWindowingMode() && ((activityOptions = this.mOptions) == null || activityOptions.getLaunchWindowingMode() == 0)) {
            int windowingMode = (task == null || !task.isDexMode() || task.getDisplayId() == task2.getDisplayId()) ? task != null ? task.getWindowingMode() : 0 : 0;
            if (this.mOptions == null) {
                this.mOptions = ActivityOptions.makeBasic();
            }
            this.mOptions.setLaunchWindowingMode(windowingMode);
        }
        if (CoreRune.MT_NEW_DEX_LAUNCH_POLICY && this.mService.mDexController.getDexModeLocked() == 3 && activityRecord.isActivityTypeRecents() && (task == null || task.isActivityTypeRecents())) {
            if (this.mOptions == null) {
                this.mOptions = ActivityOptions.makeBasic();
            }
            this.mOptions.setLaunchWindowingMode(1);
        }
        this.mSupervisor.getLaunchParamsController().calculate(task, activityRecord.info.windowLayout, activityRecord, activityRecord2, this.mOptions, this.mRequest, 3, this.mLaunchParams, this.mPreferredTaskDisplayArea);
        if (this.mLaunchParams.mWindowingMode == 5) {
            if (this.mOptions == null) {
                this.mOptions = ActivityOptions.makeBasic();
            }
            this.mOptions.setLaunchWindowingMode(5);
        }
        if (this.mLaunchParams.hasPreferredTaskDisplayArea()) {
            defaultTaskDisplayArea = this.mLaunchParams.mPreferredTaskDisplayArea;
        } else {
            defaultTaskDisplayArea = this.mRootWindowContainer.getDefaultTaskDisplayArea();
        }
        this.mPreferredTaskDisplayArea = defaultTaskDisplayArea;
        this.mPreferredWindowingMode = this.mLaunchParams.mWindowingMode;
    }

    public int isAllowedToStart(ActivityRecord activityRecord, boolean z, Task task) {
        DisplayContent displayContentOrCreate;
        if (activityRecord.packageName == null) {
            ActivityOptions.abort(this.mOptions);
            return -92;
        }
        if (activityRecord.isActivityTypeHome() && !this.mRootWindowContainer.canStartHomeOnDisplayArea(activityRecord.info, this.mPreferredTaskDisplayArea, true)) {
            Slog.w("ActivityTaskManager", "Cannot launch home on display area " + this.mPreferredTaskDisplayArea);
            return -96;
        }
        boolean z2 = z || !task.isUidPresent(this.mCallingUid) || (3 == this.mLaunchMode && task.inPinnedWindowingMode());
        if (this.mBalCode == 0 && z2 && handleBackgroundActivityAbort(activityRecord)) {
            Slog.e("ActivityTaskManager", "Abort background activity starts from " + this.mCallingUid);
            return 102;
        }
        boolean z3 = (this.mLaunchFlags & 268468224) == 268468224;
        if (!z) {
            if (this.mService.getLockTaskController().isLockTaskModeViolation(task, z3)) {
                Slog.e("ActivityTaskManager", "Attempted Lock Task Mode violation r=" + activityRecord);
                return 101;
            }
        } else if (this.mService.getLockTaskController().isNewTaskLockTaskModeViolation(activityRecord)) {
            Slog.e("ActivityTaskManager", "Attempted Lock Task Mode violation r=" + activityRecord);
            return 101;
        }
        TaskDisplayArea taskDisplayArea = this.mPreferredTaskDisplayArea;
        if (taskDisplayArea != null && (displayContentOrCreate = this.mRootWindowContainer.getDisplayContentOrCreate(taskDisplayArea.getDisplayId())) != null) {
            int windowingMode = task != null ? task.getWindowingMode() : displayContentOrCreate.getWindowingMode();
            ActivityRecord activityRecord2 = this.mSourceRecord;
            if (!displayContentOrCreate.mDwpcHelper.canActivityBeLaunched(activityRecord.info, activityRecord.intent, windowingMode, activityRecord2 != null ? activityRecord2.getDisplayId() : 0, z)) {
                Slog.w("ActivityTaskManager", "Abort to launch " + activityRecord.info.getComponentName() + " on display area " + this.mPreferredTaskDisplayArea);
                return 102;
            }
        }
        return !checkActivitySecurityModel(activityRecord, z, task) ? 102 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.android.server.wm.ActivityRecord] */
    public final boolean checkActivitySecurityModel(ActivityRecord activityRecord, boolean z, Task task) {
        boolean z2;
        int i;
        ActivityRecord activityRecord2;
        ActivityRecord activityRecord3;
        ActivityRecord activityRecord4;
        boolean z3;
        int i2 = this.mBalCode;
        if (i2 == 2) {
            return true;
        }
        boolean z4 = z || (this.mLaunchFlags & 268435456) == 268435456;
        if (z4 && (i2 == 3 || i2 == 6 || i2 == 5 || i2 == 7 || i2 == 4)) {
            return true;
        }
        ActivityRecord activityRecord5 = this.mSourceRecord;
        if (activityRecord5 != null) {
            Task task2 = activityRecord5.getTask();
            if (!z4 || (task2 != null && (task2.isVisible() || task2 == task))) {
                if (!z4) {
                    task2 = task;
                }
                Pair doesTopActivityMatchingUidExistForAsm = ActivityTaskSupervisor.doesTopActivityMatchingUidExistForAsm(task2, this.mSourceRecord.getUid(), this.mSourceRecord);
                z2 = !((Boolean) doesTopActivityMatchingUidExistForAsm.first).booleanValue();
                z3 = !((Boolean) doesTopActivityMatchingUidExistForAsm.second).booleanValue();
            } else {
                z3 = true;
                z2 = true;
            }
            if (!z3) {
                return true;
            }
        } else {
            z2 = true;
        }
        ActivityRecord activity = task == null ? null : task.getActivity(new Predicate() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$checkActivitySecurityModel$1;
                lambda$checkActivitySecurityModel$1 = ActivityStarter.lambda$checkActivitySecurityModel$1((ActivityRecord) obj);
                return lambda$checkActivitySecurityModel$1;
            }
        });
        if (z || (activityRecord4 = this.mSourceRecord) == null) {
            i = 3;
        } else {
            i = (activityRecord4.getTask() == null || !this.mSourceRecord.getTask().equals(task)) ? 2 : 1;
        }
        ActivityRecord activityRecord6 = this.mSourceRecord;
        int uid = activityRecord6 != null ? activityRecord6.getUid() : this.mCallingUid;
        ActivityRecord activityRecord7 = this.mSourceRecord;
        FrameworkStatsLog.write(FrameworkStatsLog.ACTIVITY_ACTION_BLOCKED, uid, activityRecord7 != null ? activityRecord7.info.name : null, activity != null ? activity.getUid() : -1, activity != null ? activity.info.name : null, z || (activityRecord3 = this.mSourceRecord) == null || task == null || !task.equals(activityRecord3.getTask()), activityRecord.getUid(), activityRecord.info.name, activityRecord.intent.getAction(), this.mLaunchFlags, i, 7, (task == null || (activityRecord2 = this.mSourceRecord) == null || task.equals(activityRecord2.getTask()) || !task.isVisible()) ? false : true, this.mBalCode);
        boolean z5 = ActivitySecurityModelFeatureFlags.shouldRestrictActivitySwitch(this.mCallingUid) && z2;
        String str = activityRecord.launchedFromPackage;
        if (ActivitySecurityModelFeatureFlags.shouldShowToast(this.mCallingUid)) {
            StringBuilder sb = new StringBuilder();
            sb.append("go/android-asm");
            sb.append(z5 ? " blocked " : " would block ");
            sb.append((Object) ActivityTaskSupervisor.getApplicationLabel(this.mService.mContext.getPackageManager(), str));
            final String sb2 = sb.toString();
            UiThread.getHandler().post(new Runnable() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityStarter.this.lambda$checkActivitySecurityModel$2(sb2);
                }
            });
            logDebugInfoForActivitySecurity("Launch", activityRecord, task, activity, z5, z4);
        }
        if (!z5) {
            return true;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("[ASM] Abort Launching r: ");
        sb3.append(activityRecord);
        sb3.append(" as source: ");
        ?? r1 = this.mSourceRecord;
        if (r1 != 0) {
            str = r1;
        }
        sb3.append((Object) str);
        sb3.append(" is in background. New task: ");
        sb3.append(z);
        sb3.append(". Top activity: ");
        sb3.append(activity);
        sb3.append(". BAL Code: ");
        sb3.append(BackgroundActivityStartController.balCodeToString(this.mBalCode));
        Slog.e("ActivityTaskManager", sb3.toString());
        return false;
    }

    public static /* synthetic */ boolean lambda$checkActivitySecurityModel$1(ActivityRecord activityRecord) {
        return (activityRecord.finishing || activityRecord.isAlwaysOnTop()) ? false : true;
    }

    public /* synthetic */ void lambda$checkActivitySecurityModel$2(String str) {
        Toast.makeText(this.mService.mContext, str, 1).show();
    }

    public final void logDebugInfoForActivitySecurity(String str, final ActivityRecord activityRecord, Task task, final ActivityRecord activityRecord2, boolean z, boolean z2) {
        ActivityRecord activityRecord3;
        final Function function = new Function() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$logDebugInfoForActivitySecurity$3;
                lambda$logDebugInfoForActivitySecurity$3 = ActivityStarter.this.lambda$logDebugInfoForActivitySecurity$3(activityRecord2, activityRecord, (ActivityRecord) obj);
                return lambda$logDebugInfoForActivitySecurity$3;
            }
        };
        final StringJoiner stringJoiner = new StringJoiner(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        stringJoiner.add("[ASM] ------ Activity Security " + str + " Debug Logging Start ------");
        StringBuilder sb = new StringBuilder();
        sb.append("[ASM] Block Enabled: ");
        sb.append(z);
        stringJoiner.add(sb.toString());
        stringJoiner.add("[ASM] ASM Version: 7");
        boolean z3 = (task == null || (activityRecord3 = this.mSourceRecord) == null || activityRecord3.getTask() != task) ? false : true;
        if (this.mSourceRecord == null) {
            stringJoiner.add("[ASM] Source Package: " + activityRecord.launchedFromPackage);
            stringJoiner.add("[ASM] Real Calling Uid Package: " + this.mService.mContext.getPackageManager().getNameForUid(this.mRealCallingUid));
        } else {
            stringJoiner.add("[ASM] Source Record: " + ((String) function.apply(this.mSourceRecord)));
            if (z3) {
                stringJoiner.add("[ASM] Source/Target Task: " + this.mSourceRecord.getTask());
                stringJoiner.add("[ASM] Source/Target Task Stack: ");
            } else {
                stringJoiner.add("[ASM] Source Task: " + this.mSourceRecord.getTask());
                stringJoiner.add("[ASM] Source Task Stack: ");
            }
            this.mSourceRecord.getTask().forAllActivities(new Consumer() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ActivityStarter.lambda$logDebugInfoForActivitySecurity$4(stringJoiner, function, (ActivityRecord) obj);
                }
            });
        }
        stringJoiner.add("[ASM] Target Task Top: " + ((String) function.apply(activityRecord2)));
        if (!z3) {
            stringJoiner.add("[ASM] Target Task: " + task);
            if (task != null) {
                stringJoiner.add("[ASM] Target Task Stack: ");
                task.forAllActivities(new Consumer() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ActivityStarter.lambda$logDebugInfoForActivitySecurity$5(stringJoiner, function, (ActivityRecord) obj);
                    }
                });
            }
        }
        stringJoiner.add("[ASM] Target Record: " + ((String) function.apply(activityRecord)));
        stringJoiner.add("[ASM] Intent: " + this.mIntent);
        stringJoiner.add("[ASM] TaskToFront: " + z2);
        stringJoiner.add("[ASM] BalCode: " + BackgroundActivityStartController.balCodeToString(this.mBalCode));
        stringJoiner.add("[ASM] ------ Activity Security " + str + " Debug Logging End ------");
        Slog.i("ActivityTaskManager", stringJoiner.toString());
    }

    public /* synthetic */ String lambda$logDebugInfoForActivitySecurity$3(ActivityRecord activityRecord, ActivityRecord activityRecord2, ActivityRecord activityRecord3) {
        if (activityRecord3 == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(activityRecord3 == this.mSourceRecord ? " [source]=> " : activityRecord3 == activityRecord ? " [ top  ]=> " : activityRecord3 == activityRecord2 ? " [target]=> " : "         => ");
        sb.append(activityRecord3);
        sb.append(" :: visible=");
        sb.append(activityRecord3.isVisible());
        sb.append(", finishing=");
        sb.append(activityRecord3.isFinishing());
        sb.append(", alwaysOnTop=");
        sb.append(activityRecord3.isAlwaysOnTop());
        sb.append(", taskFragment=");
        sb.append(activityRecord3.getTaskFragment());
        return sb.toString();
    }

    public static /* synthetic */ void lambda$logDebugInfoForActivitySecurity$4(StringJoiner stringJoiner, Function function, ActivityRecord activityRecord) {
        stringJoiner.add("[ASM] " + ((String) function.apply(activityRecord)));
    }

    public static /* synthetic */ void lambda$logDebugInfoForActivitySecurity$5(StringJoiner stringJoiner, Function function, ActivityRecord activityRecord) {
        stringJoiner.add("[ASM] " + ((String) function.apply(activityRecord)));
    }

    public static int canEmbedActivity(TaskFragment taskFragment, ActivityRecord activityRecord, Task task) {
        Task task2 = taskFragment.getTask();
        if (task2 == null || task != task2) {
            return 3;
        }
        return taskFragment.isAllowedToEmbedActivity(activityRecord);
    }

    public int recycleTask(Task task, ActivityRecord activityRecord, Task task2, NeededUriGrants neededUriGrants) {
        int i = task.mUserId;
        ActivityRecord activityRecord2 = this.mStartActivity;
        if (i != activityRecord2.mUserId) {
            this.mTargetRootTask = task.getRootTask();
            this.mAddingToTask = true;
            return 0;
        }
        if (task2 != null) {
            if (task.intent == null) {
                task.setIntent(activityRecord2);
            } else {
                if ((activityRecord2.intent.getFlags() & 16384) != 0) {
                    task.intent.addFlags(16384);
                } else {
                    task.intent.removeFlags(16384);
                }
            }
        }
        boolean isFreeformForceHidden = task.isFreeformForceHidden();
        this.mRootWindowContainer.startPowerModeLaunchIfNeeded(false, activityRecord);
        setTargetRootTaskIfNeeded(activityRecord);
        if (this.mTargetRootTask.inFreeformWindowingMode() && this.mTargetRootTask.isFreeformStashed()) {
            this.mService.mTaskOrganizerController.resetStashedFreeform(this.mTargetRootTask, this.mTargetRootTask.isVisible() && !isFreeformForceHidden);
        }
        ActivityRecord activityRecord3 = this.mLastStartActivityRecord;
        if (activityRecord3 != null && (activityRecord3.finishing || activityRecord3.noDisplay)) {
            this.mLastStartActivityRecord = activityRecord;
        }
        if ((this.mStartFlags & 1) != 0) {
            if (!this.mMovedToFront && this.mDoResume) {
                if (ProtoLogCache.WM_DEBUG_TASKS_enabled) {
                    ProtoLogImpl.d(ProtoLogGroup.WM_DEBUG_TASKS, -1585311008, 0, (String) null, new Object[]{String.valueOf(this.mTargetRootTask), String.valueOf(activityRecord)});
                }
                this.mTargetRootTask.moveToFront("intentActivityFound");
            }
            resumeTargetRootTaskIfNeeded();
            return 1;
        }
        complyActivityFlags(task, task2 != null ? task2.getTopNonFinishingActivity() : null, neededUriGrants);
        if (this.mAddingToTask) {
            clearTopIfNeeded(task, this.mCallingUid, this.mRealCallingUid, this.mStartActivity.getUid(), this.mLaunchFlags);
            return 0;
        }
        if (activityRecord.finishing) {
            activityRecord = task.getTopNonFinishingActivity();
        }
        if (this.mMovedToFront) {
            activityRecord.showStartingWindow(true);
        } else if (this.mDoResume) {
            this.mTargetRootTask.moveToFront("intentActivityFound");
        }
        resumeTargetRootTaskIfNeeded();
        if (this.mService.isDreaming() && activityRecord.canTurnScreenOn()) {
            activityRecord.mTaskSupervisor.wakeUp("recycleTask#turnScreenOnFlag::" + activityRecord.packageName);
        }
        this.mLastStartActivityRecord = activityRecord;
        return this.mMovedToFront ? 2 : 3;
    }

    public final void clearTopIfNeeded(Task task, final int i, final int i2, final int i3, int i4) {
        if ((i4 & 268435456) != 268435456 || this.mBalCode == 2) {
            return;
        }
        Predicate predicate = new Predicate() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$clearTopIfNeeded$6;
                lambda$clearTopIfNeeded$6 = ActivityStarter.lambda$clearTopIfNeeded$6(i3, i, i2, (ActivityRecord) obj);
                return lambda$clearTopIfNeeded$6;
            }
        };
        ActivityRecord topMostActivity = task.getTopMostActivity();
        if (topMostActivity == null || predicate.test(topMostActivity)) {
            return;
        }
        final boolean shouldRestrictActivitySwitch = ActivitySecurityModelFeatureFlags.shouldRestrictActivitySwitch(i);
        int[] iArr = new int[0];
        if (shouldRestrictActivitySwitch) {
            ActivityRecord activity = task.getActivity(predicate);
            if (activity == null) {
                activity = this.mStartActivity;
            }
            int[] iArr2 = new int[1];
            task.performClearTop(activity, i4, iArr2);
            if (iArr2[0] > 0) {
                Slog.w("ActivityTaskManager", "Cleared top n: " + iArr2[0] + " activities from task t: " + task + " not matching top uid: " + i);
            }
            iArr = iArr2;
        }
        if (ActivitySecurityModelFeatureFlags.shouldShowToast(i)) {
            if (!shouldRestrictActivitySwitch || iArr[0] > 0) {
                UiThread.getHandler().post(new Runnable() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActivityStarter.this.lambda$clearTopIfNeeded$7(shouldRestrictActivitySwitch);
                    }
                });
                logDebugInfoForActivitySecurity("Clear Top", this.mStartActivity, task, topMostActivity, shouldRestrictActivitySwitch, true);
            }
        }
    }

    public static /* synthetic */ boolean lambda$clearTopIfNeeded$6(int i, int i2, int i3, ActivityRecord activityRecord) {
        return activityRecord.isUid(i) || activityRecord.isUid(i2) || activityRecord.isUid(i3);
    }

    public /* synthetic */ void lambda$clearTopIfNeeded$7(boolean z) {
        Context context = this.mService.mContext;
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "Top activities cleared by " : "Top activities would be cleared by ");
        sb.append("go/android-asm");
        Toast.makeText(context, sb.toString(), 1).show();
    }

    public final int deliverToCurrentTopIfNeeded(Task task, NeededUriGrants neededUriGrants) {
        ActivityRecord activityRecord = task.topRunningNonDelayedActivityLocked(this.mNotTop);
        if (!(activityRecord != null && activityRecord.mActivityComponent.equals(this.mStartActivity.mActivityComponent) && activityRecord.mUserId == this.mStartActivity.mUserId && activityRecord.attachedToProcess() && ((this.mLaunchFlags & 536870912) != 0 || 1 == this.mLaunchMode) && (!activityRecord.isActivityTypeHome() || activityRecord.getDisplayArea() == this.mPreferredTaskDisplayArea))) {
            return 0;
        }
        ActivityRecord activityRecord2 = this.mSourceRecord;
        if (activityRecord2 != null && activityRecord2.mIsAliasActivity && (activityRecord2.getWindowingMode() != task.getWindowingMode() || (WindowConfiguration.isSplitScreenWindowingMode(this.mSourceRecord.getWindowConfiguration()) && this.mSourceRecord.getWindowConfiguration().getStageType() != task.getWindowConfiguration().getStageType()))) {
            return 0;
        }
        activityRecord.getTaskFragment().clearLastPausedActivity();
        if (this.mDoResume) {
            this.mRootWindowContainer.resumeFocusedTasksTopActivities();
        }
        ActivityOptions.abort(this.mOptions);
        if ((this.mStartFlags & 1) != 0) {
            return 1;
        }
        ActivityRecord activityRecord3 = this.mStartActivity;
        ActivityRecord activityRecord4 = activityRecord3.resultTo;
        if (activityRecord4 != null) {
            activityRecord4.sendResult(-1, activityRecord3.resultWho, activityRecord3.requestCode, 0, null, null);
            this.mStartActivity.resultTo = null;
        }
        deliverNewIntent(activityRecord, neededUriGrants);
        this.mSupervisor.handleNonResizableTaskIfNeeded(activityRecord.getTask(), this.mLaunchParams.mWindowingMode, this.mPreferredTaskDisplayArea, task);
        return 3;
    }

    public final void complyActivityFlags(Task task, ActivityRecord activityRecord, NeededUriGrants neededUriGrants) {
        ActivityRecord topNonFinishingActivity = task.getTopNonFinishingActivity();
        boolean z = (activityRecord == null || (this.mLaunchFlags & 2097152) == 0) ? false : true;
        if (z) {
            topNonFinishingActivity = this.mTargetRootTask.resetTaskIfNeeded(topNonFinishingActivity, this.mStartActivity);
        }
        int i = this.mLaunchFlags;
        if ((i & 268468224) == 268468224) {
            task.performClearTaskForReuse(true);
            task.setIntent(this.mStartActivity);
            this.mAddingToTask = true;
            this.mIsTaskCleared = true;
            return;
        }
        if ((i & 67108864) != 0 || isDocumentLaunchesIntoExisting(i) || isLaunchModeOneOf(3, 2, 4)) {
            int[] iArr = new int[1];
            ActivityRecord performClearTop = task.performClearTop(this.mStartActivity, this.mLaunchFlags, iArr);
            if (performClearTop != null && !performClearTop.finishing) {
                if (iArr[0] > 0) {
                    this.mMovedToTopActivity = performClearTop;
                }
                if (performClearTop.isRootOfTask()) {
                    performClearTop.getTask().setIntent(this.mStartActivity);
                }
                deliverNewIntent(performClearTop, neededUriGrants);
                return;
            }
            this.mAddingToTask = true;
            if (performClearTop != null && performClearTop.getTaskFragment() != null && performClearTop.getTaskFragment().isEmbedded()) {
                this.mAddingToTaskFragment = performClearTop.getTaskFragment();
            }
            if (task.getRootTask() == null) {
                Task orCreateRootTask = getOrCreateRootTask(this.mStartActivity, this.mLaunchFlags, null, this.mOptions);
                this.mTargetRootTask = orCreateRootTask;
                orCreateRootTask.addChild(task, !this.mLaunchTaskBehind, (this.mStartActivity.info.flags & 1024) != 0);
                return;
            }
            return;
        }
        int i2 = this.mLaunchFlags;
        if ((67108864 & i2) == 0 && !this.mAddingToTask && (i2 & IInstalld.FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES) != 0) {
            ActivityRecord activityRecord2 = this.mStartActivity;
            ActivityRecord findActivityInHistory = task.findActivityInHistory(activityRecord2.mActivityComponent, activityRecord2.mUserId);
            if (findActivityInHistory != null) {
                Task task2 = findActivityInHistory.getTask();
                if (task2.getDisplayContent() != null && task2.getDisplayContent().getFocusedRootTask() == task.getRootTask() && task.inSplitScreenWindowingMode() && !findActivityInHistory.isVisible() && task2.topRunningActivity() != findActivityInHistory && findActivityInHistory.getState() != ActivityRecord.State.RESUMED) {
                    task2.getDisplayContent().prepareAppTransition(3);
                }
                if (task2.moveActivityToFront(findActivityInHistory)) {
                    this.mMovedToTopActivity = findActivityInHistory;
                    if (this.mNoAnimation) {
                        findActivityInHistory.mDisplayContent.prepareAppTransition(0);
                    } else {
                        findActivityInHistory.mDisplayContent.prepareAppTransition(3);
                    }
                }
                findActivityInHistory.updateOptionsLocked(this.mOptions);
                deliverNewIntent(findActivityInHistory, neededUriGrants);
                findActivityInHistory.getTaskFragment().clearLastPausedActivity();
                return;
            }
            this.mAddingToTask = true;
            return;
        }
        if (!this.mStartActivity.mActivityComponent.equals(task.realActivity)) {
            if (!z) {
                this.mAddingToTask = true;
                return;
            } else {
                if (task.rootWasReset) {
                    return;
                }
                task.setIntent(this.mStartActivity);
                return;
            }
        }
        if (task == this.mInTask) {
            return;
        }
        if (((this.mLaunchFlags & 536870912) != 0 || 1 == this.mLaunchMode) && topNonFinishingActivity.mActivityComponent.equals(this.mStartActivity.mActivityComponent) && this.mStartActivity.resultTo == null) {
            if (topNonFinishingActivity.isRootOfTask()) {
                topNonFinishingActivity.getTask().setIntent(this.mStartActivity);
            }
            deliverNewIntent(topNonFinishingActivity, neededUriGrants);
        } else if (!task.isSameIntentFilter(this.mStartActivity)) {
            this.mAddingToTask = true;
        } else if (activityRecord == null) {
            this.mAddingToTask = true;
        }
    }

    public void reset(boolean z) {
        this.mStartActivity = null;
        this.mIntent = null;
        this.mCallingUid = -1;
        this.mRealCallingUid = -1;
        this.mOptions = null;
        this.mBalCode = 1;
        this.mLaunchTaskBehind = false;
        this.mLaunchFlags = 0;
        this.mLaunchMode = -1;
        this.mLaunchParams.reset();
        this.mNotTop = null;
        this.mDoResume = false;
        this.mStartFlags = 0;
        this.mSourceRecord = null;
        this.mPreferredTaskDisplayArea = null;
        this.mPreferredWindowingMode = 0;
        this.mInTask = null;
        this.mInTaskFragment = null;
        this.mAddingToTaskFragment = null;
        this.mAddingToTask = false;
        this.mSourceRootTask = null;
        this.mTargetRootTask = null;
        this.mTargetTask = null;
        this.mIsTaskCleared = false;
        this.mMovedToFront = false;
        this.mNoAnimation = false;
        this.mAvoidMoveToFront = false;
        this.mFrozeTaskList = false;
        this.mTransientLaunch = false;
        this.mPriorAboveTask = null;
        this.mDisplayLockAndOccluded = false;
        this.mVoiceSession = null;
        this.mVoiceInteractor = null;
        this.mIntentDelivered = false;
        if (z) {
            this.mRequest.reset();
        }
        this.mSavedFrontTaskIds.clear();
        this.mSplitAdjacentRequested = false;
        this.mService.mMultiTaskingController.setAffordanceTargetTask(null);
        if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH) {
            this.mLateTransientLaunch = false;
        }
        if (CoreRune.SYSFW_APP_PREL) {
            this.mIsPrelaunch = false;
        }
    }

    public final void setInitialState(ActivityRecord activityRecord, ActivityOptions activityOptions, Task task, TaskFragment taskFragment, int i, ActivityRecord activityRecord2, IVoiceInteractionSession iVoiceInteractionSession, IVoiceInteractor iVoiceInteractor, int i2, int i3) {
        TaskDisplayArea defaultTaskDisplayArea;
        TaskFragment taskFragment2;
        Task task2;
        boolean z;
        Task topDisplayFocusedRootTask;
        Task task3;
        ActivityRecord activityRecord3;
        reset(false);
        if (CoreRune.MW_SA_LOGGING && activityOptions != null && activityOptions.getLaunchBounds() != null && !activityOptions.getLaunchBounds().isEmpty()) {
            this.mIsFreeformLaunching = true;
        } else {
            this.mIsFreeformLaunching = false;
        }
        this.mStartActivity = activityRecord;
        this.mIntent = activityRecord.intent;
        this.mOptions = activityOptions;
        this.mCallingUid = activityRecord.launchedFromUid;
        this.mRealCallingUid = i3;
        this.mSourceRecord = activityRecord2;
        this.mSourceRootTask = activityRecord2 != null ? activityRecord2.getRootTask() : null;
        this.mVoiceSession = iVoiceInteractionSession;
        this.mVoiceInteractor = iVoiceInteractor;
        this.mBalCode = i2;
        this.mLaunchParams.reset();
        this.mSupervisor.getLaunchParamsController().calculate(task, activityRecord.info.windowLayout, activityRecord, activityRecord2, activityOptions, this.mRequest, 0, this.mLaunchParams);
        if (this.mLaunchParams.hasPreferredTaskDisplayArea()) {
            defaultTaskDisplayArea = this.mLaunchParams.mPreferredTaskDisplayArea;
        } else {
            defaultTaskDisplayArea = this.mRootWindowContainer.getDefaultTaskDisplayArea();
        }
        this.mPreferredTaskDisplayArea = defaultTaskDisplayArea;
        this.mPreferredWindowingMode = this.mLaunchParams.mWindowingMode;
        int i4 = activityRecord.launchMode;
        this.mLaunchMode = i4;
        int i5 = 3;
        this.mLaunchFlags = adjustLaunchFlagsToDocumentMode(activityRecord, 3 == i4, 2 == i4, this.mIntent.getFlags());
        this.mLaunchTaskBehind = (!activityRecord.mLaunchTaskBehind || isLaunchModeOneOf(2, 3) || (this.mLaunchFlags & 524288) == 0) ? false : true;
        if (this.mLaunchMode == 4) {
            this.mLaunchFlags |= 268435456;
        }
        String str = activityRecord.info.requiredDisplayCategory;
        if (str != null && (activityRecord3 = this.mSourceRecord) != null && !str.equals(activityRecord3.info.requiredDisplayCategory)) {
            this.mLaunchFlags |= 268435456;
        }
        if (!"startResolvedActivity".equals(this.mLastStartReason)) {
            sendNewTaskResultRequestIfNeeded();
        }
        int i6 = this.mLaunchFlags;
        if ((524288 & i6) != 0 && activityRecord.resultTo == null) {
            this.mLaunchFlags = i6 | 268435456;
        }
        int i7 = this.mLaunchFlags;
        if ((i7 & 268435456) != 0 && (this.mLaunchTaskBehind || activityRecord.info.documentLaunchMode == 2)) {
            this.mLaunchFlags = i7 | 134217728;
        }
        if (activityRecord.isLaunchAdjacent() && !MultiWindowCoreState.MW_ENABLED) {
            this.mLaunchFlags &= -4097;
        }
        this.mSupervisor.mUserLeaving = (this.mLaunchFlags & 262144) == 0;
        if (!activityRecord.showToCurrentUser() || this.mLaunchTaskBehind) {
            activityRecord.delayedResume = true;
            this.mDoResume = false;
        } else {
            this.mDoResume = true;
        }
        ActivityOptions activityOptions2 = this.mOptions;
        if (activityOptions2 != null) {
            if (activityOptions2.getLaunchTaskId() != -1 && this.mOptions.getTaskOverlay()) {
                activityRecord.setTaskOverlay(true);
                if (!this.mOptions.canTaskOverlayResume()) {
                    Task anyTaskForId = this.mRootWindowContainer.anyTaskForId(this.mOptions.getLaunchTaskId());
                    ActivityRecord topNonFinishingActivity = anyTaskForId != null ? anyTaskForId.getTopNonFinishingActivity() : null;
                    if (topNonFinishingActivity != null && !topNonFinishingActivity.isState(ActivityRecord.State.RESUMED)) {
                        this.mDoResume = false;
                        this.mAvoidMoveToFront = true;
                    }
                }
            } else if (this.mOptions.getAvoidMoveToFront()) {
                this.mDoResume = false;
                this.mAvoidMoveToFront = true;
            }
            this.mTransientLaunch = this.mOptions.getTransientLaunch();
            KeyguardController keyguardController = this.mSupervisor.getKeyguardController();
            int displayId = this.mPreferredTaskDisplayArea.getDisplayId();
            boolean z2 = keyguardController.isKeyguardLocked(displayId) && keyguardController.isDisplayOccluded(displayId);
            this.mDisplayLockAndOccluded = z2;
            if (this.mTransientLaunch && z2 && this.mService.getTransitionController().isShellTransitionsEnabled()) {
                this.mDoResume = false;
                this.mAvoidMoveToFront = true;
            }
            this.mTargetRootTask = Task.fromWindowContainerToken(this.mOptions.getLaunchRootTask());
            if (taskFragment == null) {
                taskFragment2 = TaskFragment.fromTaskFragmentToken(this.mOptions.getLaunchTaskFragmentToken(), this.mService);
                if (taskFragment2 != null && taskFragment2.isEmbeddedTaskFragmentInPip()) {
                    Slog.w("ActivityTaskManager", "Can not start activity in TaskFragment in PIP: " + taskFragment2);
                    taskFragment2 = null;
                }
            } else {
                taskFragment2 = taskFragment;
            }
            if (CoreRune.MW_EMBED_ACTIVITY && taskFragment2 != null && this.mOptions.isActivityEmbeddedPlaceholder()) {
                Task task4 = taskFragment2.getTask();
                if (task4 != null && task4.inFullscreenWindowingMode() && task4.getDisplayArea() != null && (task3 = task4.getDisplayArea().getTask(new Predicate() { // from class: com.android.server.wm.ActivityStarter$$ExternalSyntheticLambda2
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        boolean lambda$setInitialState$8;
                        lambda$setInitialState$8 = ActivityStarter.lambda$setInitialState$8((Task) obj);
                        return lambda$setInitialState$8;
                    }
                })) != null && task3 != task4) {
                    this.mAvoidMoveToFront = true;
                    this.mDoResume = false;
                }
                taskFragment2.setPlaceholderTaskFragment(true);
            }
            if (CoreRune.FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH) {
                this.mLateTransientLaunch = this.mOptions.getLateTransientLaunch();
            }
            if (CoreRune.SYSFW_APP_PREL) {
                this.mStartActivity.mIsPrelMode = this.mOptions.getPrelaunch();
            }
        } else {
            taskFragment2 = taskFragment;
        }
        this.mNotTop = (this.mLaunchFlags & 16777216) != 0 ? activityRecord2 : null;
        this.mInTask = task;
        if (task == null || task.inRecents) {
            task2 = null;
        } else {
            Slog.w("ActivityTaskManager", "Starting activity in task not in recents: " + task);
            task2 = null;
            this.mInTask = null;
        }
        Task task5 = this.mInTask;
        if (task5 != null && !task5.isSameRequiredDisplayCategory(activityRecord.info)) {
            Slog.w("ActivityTaskManager", "Starting activity in task with different display category: " + this.mInTask);
            this.mInTask = task2;
        }
        this.mInTaskFragment = taskFragment2;
        this.mStartFlags = i;
        if ((i & 1) != 0) {
            ActivityRecord activityRecord4 = (activityRecord2 != null || (topDisplayFocusedRootTask = this.mRootWindowContainer.getTopDisplayFocusedRootTask()) == null) ? activityRecord2 : topDisplayFocusedRootTask.topRunningNonDelayedActivityLocked(this.mNotTop);
            if (activityRecord4 == null || !activityRecord4.mActivityComponent.equals(activityRecord.mActivityComponent)) {
                this.mStartFlags &= -2;
            }
        }
        this.mNoAnimation = (this.mLaunchFlags & 65536) != 0;
        if (this.mBalCode != 0 || this.mService.isBackgroundActivityStartsEnabled()) {
            z = false;
        } else {
            this.mAvoidMoveToFront = true;
            z = false;
            this.mDoResume = false;
        }
        if (activityRecord.intent.getLaunchOverTargetTaskId() != -1) {
            saveFrontTaskId();
        }
        if ((this.mLaunchFlags & 268439552) != 268439552 || activityRecord2 == null || activityRecord2.isDexMode() || activityRecord2.getWindowingMode() != 1 || activityRecord2.getTask() == null || !activityRecord2.getTask().isResizeable()) {
            return;
        }
        if (activityOptions != null && activityOptions.hasValidLaunchAdjacentExt()) {
            if (activityOptions.hasValidHorizontalSplitLayoutWithAdjacentFlag()) {
                if (activityOptions.launchToTopSideWithAdjacentFlag()) {
                    i5 = 5;
                }
            } else {
                i5 = activityOptions.launchToRightSideWithAdjacentFlag() ? 2 : 4;
            }
            this.mService.mTaskOrganizerController.changeSplitScreenCreateMode(i5);
            this.mService.mMultiTaskingController.deferEnsureConfig();
        } else {
            Task rootSideStageTask = this.mRootWindowContainer.getDefaultTaskDisplayArea().getRootSideStageTask();
            if (rootSideStageTask != null) {
                int stagePosition = rootSideStageTask.getWindowConfiguration().getStagePosition();
                if (CoreRune.MW_MULTI_SPLIT_LAUNCH_ADJACENT) {
                    if (stagePosition == 8 || stagePosition == 32) {
                        z = true;
                    }
                    if ((z && stagePosition == 8) || !z) {
                        this.mService.mMultiTaskingController.deferEnsureConfig();
                    }
                } else if (stagePosition == 16 || stagePosition == 8) {
                    this.mService.mMultiTaskingController.deferEnsureConfig();
                }
            }
        }
        if (CoreRune.MW_SPLIT_LAUNCH_ADJACENT_SA_LOGGING) {
            CoreSaLogger.logForAdvanced("1000", "From application");
        }
        this.mSplitAdjacentRequested = true;
    }

    public static /* synthetic */ boolean lambda$setInitialState$8(Task task) {
        return task.inFullscreenWindowingMode() && task.hasChild();
    }

    public final void sendNewTaskResultRequestIfNeeded() {
        if (this.mStartActivity.resultTo == null || (this.mLaunchFlags & 268435456) == 0) {
            return;
        }
        Slog.w("ActivityTaskManager", "Activity is launching as a new task, so cancelling activity result.");
        ActivityRecord activityRecord = this.mStartActivity;
        activityRecord.resultTo.sendResult(-1, activityRecord.resultWho, activityRecord.requestCode, 0, null, null);
        this.mStartActivity.resultTo = null;
    }

    public final void computeLaunchingTaskFlags() {
        ActivityRecord activityRecord;
        int i;
        ActivityRecord activityRecord2;
        ActivityOptions activityOptions;
        Task task;
        int i2 = 0;
        if (this.mSourceRecord == null && (task = this.mInTask) != null && task.getRootTask() != null) {
            Intent baseIntent = this.mInTask.getBaseIntent();
            ActivityRecord rootActivity = this.mInTask.getRootActivity();
            if (baseIntent == null) {
                ActivityOptions.abort(this.mOptions);
                throw new IllegalArgumentException("Launching into task without base intent: " + this.mInTask);
            }
            if (isLaunchModeOneOf(3, 2)) {
                if (!baseIntent.getComponent().equals(this.mStartActivity.intent.getComponent())) {
                    ActivityOptions.abort(this.mOptions);
                    throw new IllegalArgumentException("Trying to launch singleInstance/Task " + this.mStartActivity + " into different task " + this.mInTask);
                }
                if (rootActivity != null) {
                    ActivityOptions.abort(this.mOptions);
                    throw new IllegalArgumentException("Caller with mInTask " + this.mInTask + " has root " + rootActivity + " but target is singleInstance/Task");
                }
            }
            if (rootActivity == null) {
                int flags = (baseIntent.getFlags() & 403185664) | (this.mLaunchFlags & (-403185665));
                this.mLaunchFlags = flags;
                this.mIntent.setFlags(flags);
                this.mInTask.setIntent(this.mStartActivity);
                this.mAddingToTask = true;
            } else if ((this.mLaunchFlags & 268435456) != 0) {
                this.mAddingToTask = false;
            } else {
                this.mAddingToTask = true;
            }
        } else {
            this.mInTask = null;
            if (this.mStartActivity.isResolverOrDelegateActivity() && (activityRecord = this.mSourceRecord) != null && (activityRecord.inFreeformWindowingMode() || (this.mPreferredTaskDisplayArea.getDisplayId() == 2 && this.mSourceRecord.getDisplayId() == this.mPreferredTaskDisplayArea.getDisplayId() && !this.mSourceRecord.isActivityTypeHome()))) {
                this.mAddingToTask = true;
            }
        }
        Task task2 = this.mInTask;
        if (task2 == null) {
            ActivityRecord activityRecord3 = this.mSourceRecord;
            if (activityRecord3 == null) {
                if ((this.mLaunchFlags & 268435456) == 0 && task2 == null) {
                    Slog.w("ActivityTaskManager", "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: " + this.mIntent);
                    this.mLaunchFlags = this.mLaunchFlags | 268435456;
                }
            } else if (activityRecord3.launchMode == 3) {
                this.mLaunchFlags |= 268435456;
            } else if (isLaunchModeOneOf(3, 2)) {
                this.mLaunchFlags |= 268435456;
            }
        }
        int i3 = this.mLaunchFlags;
        if ((i3 & IInstalld.FLAG_USE_QUOTA) != 0 && ((i3 & 268435456) == 0 || this.mSourceRecord == null)) {
            this.mLaunchFlags = i3 & (-4097);
        }
        if (this.mStartActivity.launchMode == 4) {
            if ((this.mLaunchFlags & 134217728) == 0 || ((activityOptions = this.mOptions) != null && activityOptions.isStartedFromWindowTypeLauncher())) {
                ActivityOptions activityOptions2 = this.mOptions;
                if (activityOptions2 != null) {
                    i = activityOptions2.getLaunchWindowingMode();
                    if (i == 0) {
                        i = this.mOptions.getForceLaunchWindowingMode();
                    }
                    Task fromWindowContainerToken = Task.fromWindowContainerToken(this.mOptions.getLaunchRootTask());
                    if (fromWindowContainerToken != null && fromWindowContainerToken.inSplitScreenWindowingMode()) {
                        i2 = fromWindowContainerToken.getStageType();
                    }
                } else {
                    i = 0;
                }
                if (i2 == 0 && (activityRecord2 = this.mSourceRecord) != null && activityRecord2.inSplitScreenWindowingMode()) {
                    i2 = this.mSourceRecord.getStageType();
                }
                if (this.mService.mMultiInstanceController.allowMultipleTask(this.mStartActivity, i, i2, this.mSourceRecord)) {
                    this.mLaunchFlags |= 134217728;
                }
            }
        }
    }

    public final Task getReusableTask() {
        ActivityRecord activityRecord;
        ActivityOptions activityOptions;
        ActivityOptions activityOptions2 = this.mOptions;
        if (activityOptions2 != null && activityOptions2.getLaunchTaskId() != -1) {
            Task anyTaskForId = this.mRootWindowContainer.anyTaskForId(this.mOptions.getLaunchTaskId());
            if (anyTaskForId != null) {
                return anyTaskForId;
            }
            return null;
        }
        int i = this.mLaunchFlags;
        if ((((268435456 & i) != 0 && (i & 134217728) == 0) || isLaunchModeOneOf(3, 2) || this.mStartActivity.intent.getLaunchTaskIdForAliasManagedTarget() != -1) && (this.mInTask == null && this.mStartActivity.resultTo == null)) {
            int i2 = this.mLaunchMode;
            if (3 == i2) {
                RootWindowContainer rootWindowContainer = this.mRootWindowContainer;
                Intent intent = this.mIntent;
                ActivityRecord activityRecord2 = this.mStartActivity;
                activityRecord = rootWindowContainer.findActivity(intent, activityRecord2.info, activityRecord2.isActivityTypeHome());
            } else if ((this.mLaunchFlags & IInstalld.FLAG_USE_QUOTA) != 0) {
                activityRecord = this.mRootWindowContainer.findActivity(this.mIntent, this.mStartActivity.info, 2 != i2);
            } else {
                activityRecord = this.mRootWindowContainer.findTask(this.mStartActivity, this.mPreferredTaskDisplayArea);
            }
        } else {
            activityRecord = null;
        }
        if (activityRecord != null && this.mLaunchMode == 4 && !activityRecord.getTask().getRootActivity().mActivityComponent.equals(this.mStartActivity.mActivityComponent)) {
            activityRecord = null;
        }
        if (activityRecord != null && ((this.mStartActivity.isActivityTypeHome() || activityRecord.isActivityTypeHome()) && activityRecord.getDisplayArea() != this.mPreferredTaskDisplayArea)) {
            activityRecord = null;
        }
        if (CoreRune.MW_EMBED_ACTIVITY && this.mInTaskFragment != null && (activityOptions = this.mOptions) != null && activityOptions.isActivityEmbeddedPlaceholder() && activityRecord != null && activityRecord.getTask() != this.mInTaskFragment.getTask()) {
            return this.mInTaskFragment.getTask();
        }
        if (activityRecord != null) {
            return activityRecord.getTask();
        }
        return null;
    }

    public final void setTargetRootTaskIfNeeded(ActivityRecord activityRecord) {
        boolean z;
        boolean z2;
        ActivityRecord activityRecord2;
        ActivityRecord activityRecord3;
        Task fromWindowContainerToken;
        Task task;
        ActivityOptions activityOptions;
        WindowContainerToken windowContainerToken;
        ActivityRecord activityRecord4;
        activityRecord.getTaskFragment().clearLastPausedActivity();
        Task task2 = activityRecord.getTask();
        Task rootTask = task2 != null ? task2.getRootTask() : null;
        boolean isAlwaysOnTopFreeform = activityRecord.isAlwaysOnTopFreeform();
        Intent intent = this.mIntent;
        if (intent == null || intent.getLaunchOverTargetTaskId() == -1 || !setLaunchOverTargetRootTaskIfNeeded(activityRecord)) {
            boolean z3 = this.mTargetRootTask == null && (activityRecord4 = this.mSourceRecord) != null && activityRecord4.getRootTask() != null && this.mSourceRecord.getRootTask().getTopMostTask() == this.mSourceRecord.getTask();
            boolean z4 = task2 != null && task2.inSplitScreenWindowingMode();
            boolean inTopNonFinishingTask = inTopNonFinishingTask(this.mSourceRecord);
            boolean z5 = task2 != null && task2.inFreeformWindowingMode();
            if (this.mTargetRootTask == null) {
                ActivityRecord activityRecord5 = this.mSourceRecord;
                if (activityRecord5 != null && (windowContainerToken = activityRecord5.mLaunchRootTask) != null) {
                    this.mTargetRootTask = Task.fromWindowContainerToken(windowContainerToken);
                } else {
                    this.mTargetRootTask = getOrCreateRootTask(this.mStartActivity, this.mLaunchFlags, task2, this.mOptions);
                }
            }
            if (CoreRune.MT_NEW_DEX_LAUNCH_POLICY && this.mTargetRootTask.inFreeformWindowingMode() && (activityOptions = this.mOptions) != null && activityOptions.isForceLaunchTaskOnHome()) {
                this.mTargetRootTask.setLaunchTaskOnHomeToken();
            }
            Task adjacentTask = this.mTargetRootTask.getAdjacentTask();
            if (adjacentTask != null && activityRecord.isDescendantOf(adjacentTask) && task2.isOnTop()) {
                this.mTargetRootTask = adjacentTask;
            }
            Task task3 = this.mTargetRootTask;
            int displayId = task3 != null ? task3.getDisplayId() : -1;
            if (this.mTargetRootTask.getDisplayArea() == this.mPreferredTaskDisplayArea) {
                Task focusedRootTask = this.mTargetRootTask.mDisplayContent.getFocusedRootTask();
                ActivityRecord activityRecord6 = focusedRootTask == null ? null : focusedRootTask.topRunningNonDelayedActivityLocked(this.mNotTop);
                Task task4 = activityRecord6 != null ? activityRecord6.getTask() : null;
                z2 = (this.mTargetRootTask.inSplitScreenWindowingMode() && !task2.isDescendantOf(this.mTargetRootTask)) || (!isAlwaysOnTopFreeform && task2.isAlwaysOnTopFreeform());
                z = (task4 == task2 && (focusedRootTask == null || task4 == focusedRootTask.getTopMostTask()) && (focusedRootTask == null || focusedRootTask == rootTask)) ? false : true;
            } else {
                z = true;
                z2 = false;
            }
            boolean z6 = (!this.mAvoidMoveToFront && z3 && z && !z4 && task2.inSplitScreenWindowingMode() && !activityRecord.isVisible() && this.mTargetRootTask == this.mSourceRecord.getRootTask() && this.mTargetRootTask.getTopMostTask() != this.mSourceRecord.getTask()) || (z && "startResolvedActivity".equals(this.mLastStartReason) && (activityRecord2 = this.mSourceRecord) != null && activityRecord2.finishing && activityRecord2.getTask() == null);
            if ((z || z2) && !this.mAvoidMoveToFront) {
                if (z) {
                    this.mStartActivity.intent.addFlags(4194304);
                }
                ActivityOptions activityOptions2 = this.mOptions;
                boolean z7 = activityOptions2 != null && (fromWindowContainerToken = Task.fromWindowContainerToken(activityOptions2.getLaunchRootTask())) != null && fromWindowContainerToken == this.mTargetRootTask && fromWindowContainerToken.inSplitScreenWindowingMode();
                ActivityRecord activityRecord7 = this.mSourceRecord;
                if (activityRecord7 == null || inTopNonFinishingTask(activityRecord7) || ((inTopNonFinishingTask && z5) || z6)) {
                    if (this.mLaunchTaskBehind && (activityRecord3 = this.mSourceRecord) != null) {
                        activityRecord.setTaskToAffiliateWith(activityRecord3.getTask());
                    }
                    if (activityRecord.isDescendantOf(this.mTargetRootTask)) {
                        Task task5 = this.mTargetRootTask;
                        if (task5 != task2 && task5 != task2.getParent().asTask()) {
                            task2.getParent().positionChildAt(Integer.MAX_VALUE, task2, false);
                            task2 = task2.getParent().asTaskFragment().getTask();
                        }
                        boolean z8 = activityRecord.isVisibleRequested() && activityRecord.inMultiWindowMode() && activityRecord == this.mTargetRootTask.topRunningActivity();
                        this.mTargetRootTask.moveTaskToFront(task2, this.mNoAnimation, this.mOptions, this.mStartActivity.appTimeTracker, true, "bringingFoundTaskToFront");
                        this.mMovedToFront = !z8;
                    } else if (activityRecord.getWindowingMode() != 2 || z7) {
                        if (activityRecord.inFreeformWindowingMode() && !this.mTargetRootTask.inFreeformWindowingMode()) {
                            ActivityOptions activityOptions3 = this.mOptions;
                            Rect launchBounds = activityOptions3 != null ? activityOptions3.getLaunchBounds() : null;
                            if (launchBounds != null) {
                                task2.mLastNonFullscreenBounds = new Rect(launchBounds);
                            }
                        }
                        task2.reparent(this.mTargetRootTask, true, 0, true, true, "reparentToTargetRootTask");
                        this.mMovedToFront = true;
                    }
                    this.mOptions = null;
                }
            }
            ActivityRecord activityRecord8 = this.mStartActivity;
            IBinder iBinder = activityRecord8.mLaunchCookie;
            if (iBinder != null) {
                activityRecord.mLaunchCookie = iBinder;
            }
            RemoteAnimationAdapter remoteAnimationAdapter = activityRecord8.mPendingRemoteAnimation;
            if (remoteAnimationAdapter != null) {
                activityRecord.mPendingRemoteAnimation = remoteAnimationAdapter;
            }
            this.mTargetRootTask = activityRecord.getRootTask();
            if (!this.mLaunchParams.mBounds.isEmpty() && displayId == 0 && (task = this.mTargetRootTask) != null && task.getDisplayId() == 2 && this.mTargetRootTask.getWindowingMode() == 5) {
                this.mTargetRootTask.setBounds(this.mLaunchParams.mBounds);
            }
            this.mSupervisor.handleNonResizableTaskIfNeeded(task2, 0, this.mRootWindowContainer.getDefaultTaskDisplayArea(), this.mTargetRootTask);
        }
    }

    public final boolean inTopNonFinishingTask(ActivityRecord activityRecord) {
        if (activityRecord == null || activityRecord.getTask() == null) {
            return false;
        }
        Task task = activityRecord.getTask();
        Task createdByOrganizerTask = task.getCreatedByOrganizerTask() != null ? task.getCreatedByOrganizerTask() : activityRecord.getRootTask();
        ActivityRecord topNonFinishingActivity = createdByOrganizerTask != null ? createdByOrganizerTask.getTopNonFinishingActivity() : null;
        return topNonFinishingActivity != null && topNonFinishingActivity.getTask() == task;
    }

    public final void resumeTargetRootTaskIfNeeded() {
        if (this.mDoResume) {
            ActivityRecord activityRecord = this.mTargetRootTask.topRunningActivity(true);
            if (activityRecord != null) {
                activityRecord.setCurrentLaunchCanTurnScreenOn(true);
            }
            if (this.mTargetRootTask.isFocusable()) {
                this.mRootWindowContainer.resumeFocusedTasksTopActivities(this.mTargetRootTask, null, this.mOptions, this.mTransientLaunch);
            } else {
                this.mRootWindowContainer.ensureActivitiesVisible(null, 0, false);
            }
        } else {
            ActivityOptions.abort(this.mOptions);
        }
        this.mRootWindowContainer.updateUserRootTask(this.mStartActivity.mUserId, this.mTargetRootTask);
    }

    public final void setNewTask(Task task) {
        boolean z = (this.mLaunchTaskBehind || this.mAvoidMoveToFront) ? false : true;
        Task task2 = this.mTargetRootTask;
        ActivityRecord activityRecord = this.mStartActivity;
        Task reuseOrCreateTask = task2.reuseOrCreateTask(activityRecord.info, this.mIntent, this.mVoiceSession, this.mVoiceInteractor, z, activityRecord, this.mSourceRecord, this.mOptions);
        reuseOrCreateTask.mTransitionController.collectExistenceChange(reuseOrCreateTask);
        addOrReparentStartingActivity(reuseOrCreateTask, "setTaskFromReuseOrCreateNewTask");
        if (ProtoLogCache.WM_DEBUG_TASKS_enabled) {
            ProtoLogImpl.v(ProtoLogGroup.WM_DEBUG_TASKS, -1304806505, 0, (String) null, new Object[]{String.valueOf(this.mStartActivity), String.valueOf(this.mStartActivity.getTask())});
        }
        if (task != null) {
            this.mStartActivity.setTaskToAffiliateWith(task);
        }
    }

    public final void deliverNewIntent(ActivityRecord activityRecord, NeededUriGrants neededUriGrants) {
        if (this.mIntentDelivered) {
            return;
        }
        activityRecord.logStartActivity(30003, activityRecord.getTask(), getStartInfo());
        int i = this.mCallingUid;
        ActivityRecord activityRecord2 = this.mStartActivity;
        activityRecord.deliverNewIntentLocked(i, activityRecord2.intent, neededUriGrants, activityRecord2.launchedFromPackage);
        this.mIntentDelivered = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x003e, code lost:
    
        if (canEmbedActivity(r0, r4.mStartActivity, r5) == 0) goto L75;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void addOrReparentStartingActivity(com.android.server.wm.Task r5, java.lang.String r6) {
        /*
            r4 = this;
            com.android.server.wm.TaskFragment r0 = r4.mInTaskFragment
            if (r0 == 0) goto L1d
            com.android.server.wm.ActivityRecord r1 = r4.mStartActivity
            int r0 = canEmbedActivity(r0, r1, r5)
            if (r0 != 0) goto L17
            com.android.server.wm.TaskFragment r0 = r4.mInTaskFragment
            com.android.server.wm.ActivityRecord r1 = r4.mStartActivity
            android.os.IBinder r2 = r0.getFragmentToken()
            r1.mRequestedLaunchingTaskFragmentToken = r2
            goto L42
        L17:
            com.android.server.wm.TaskFragment r1 = r4.mInTaskFragment
            r4.sendCanNotEmbedActivityError(r1, r0)
            goto L41
        L1d:
            com.android.server.wm.TaskFragment r0 = r4.mAddingToTaskFragment
            if (r0 == 0) goto L22
            goto L23
        L22:
            r0 = 0
        L23:
            if (r0 != 0) goto L30
            r1 = 0
            com.android.server.wm.ActivityRecord r1 = r5.topRunningActivity(r1)
            if (r1 == 0) goto L30
            com.android.server.wm.TaskFragment r0 = r1.getTaskFragment()
        L30:
            if (r0 == 0) goto L41
            boolean r1 = r0.isEmbedded()
            if (r1 == 0) goto L41
            com.android.server.wm.ActivityRecord r1 = r4.mStartActivity
            int r1 = canEmbedActivity(r0, r1, r5)
            if (r1 != 0) goto L41
            goto L42
        L41:
            r0 = r5
        L42:
            com.android.server.wm.ActivityRecord r1 = r4.mStartActivity
            com.android.server.wm.TaskFragment r1 = r1.getTaskFragment()
            r2 = 1
            if (r1 == 0) goto L5e
            com.android.server.wm.ActivityRecord r1 = r4.mStartActivity
            com.android.server.wm.TaskFragment r1 = r1.getTaskFragment()
            if (r1 != r0) goto L54
            goto L5e
        L54:
            com.android.server.wm.ActivityRecord r1 = r4.mStartActivity
            int r3 = r0.getChildCount()
            r1.reparent(r0, r3, r6)
            goto L87
        L5e:
            boolean r6 = com.samsung.android.rune.CoreRune.MW_EMBED_ACTIVITY
            if (r6 == 0) goto L7f
            com.android.server.wm.TaskFragment r6 = r4.mInTaskFragment
            if (r6 != 0) goto L7f
            boolean r6 = r0.isEmbedded()
            if (r6 == 0) goto L7f
            com.android.server.wm.ActivityRecord r6 = r4.mSourceRecord
            if (r6 == 0) goto L7a
            com.android.server.wm.Task r6 = r6.getTask()
            com.android.server.wm.Task r1 = r0.getTask()
            if (r6 == r1) goto L7f
        L7a:
            com.android.server.wm.ActivityRecord r6 = r4.mStartActivity
            r6.setActivityReparentToEmbeddedTask(r2)
        L7f:
            com.android.server.wm.ActivityRecord r6 = r4.mStartActivity
            r1 = 2147483647(0x7fffffff, float:NaN)
            r0.addChild(r6, r1)
        L87:
            boolean r6 = r5.isDexCompatEnabled()
            if (r6 == 0) goto La6
            com.android.server.wm.Task r6 = r5.getRootTask()
            if (r6 == 0) goto La6
            int r6 = r5.getChildCount()
            if (r6 <= r2) goto La6
            com.android.server.wm.ActivityTaskManagerService r6 = r4.mService
            com.android.server.wm.DexCompatController r6 = r6.mDexCompatController
            com.android.server.wm.Task r0 = r5.getRootTask()
            com.android.server.wm.ActivityRecord r4 = r4.mStartActivity
            r6.changeWindowingModeIfNeeded(r0, r5, r4)
        La6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.ActivityStarter.addOrReparentStartingActivity(com.android.server.wm.Task, java.lang.String):void");
    }

    public final void sendCanNotEmbedActivityError(TaskFragment taskFragment, int i) {
        String str;
        if (i == 1) {
            str = "The app:" + this.mCallingUid + "is not trusted to " + this.mStartActivity;
        } else if (i == 2) {
            str = "Cannot embed " + this.mStartActivity + ". TaskFragment's bounds:" + taskFragment.getBounds() + ", minimum dimensions:" + this.mStartActivity.getMinDimensions();
        } else if (i == 3) {
            str = "Cannot embed " + this.mStartActivity + " that launched on another task,mLaunchMode=" + ActivityInfo.launchModeToString(this.mLaunchMode) + ",mLaunchFlag=" + Integer.toHexString(this.mLaunchFlags);
        } else {
            str = "Unhandled embed result:" + i;
        }
        if (taskFragment.isOrganized()) {
            this.mService.mWindowOrganizerController.sendTaskFragmentOperationFailure(taskFragment.getTaskFragmentOrganizer(), this.mRequest.errorCallbackToken, taskFragment, 2, new SecurityException(str));
        } else {
            Slog.w("ActivityTaskManager", str);
        }
    }

    public final int adjustLaunchFlagsToDocumentMode(ActivityRecord activityRecord, boolean z, boolean z2, int i) {
        int i2 = i & 524288;
        if (i2 != 0 && (z || z2)) {
            Slog.i("ActivityTaskManager", "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\"");
        } else {
            int i3 = activityRecord.info.documentLaunchMode;
            if (i3 == 1 || i3 == 2) {
                return i | 524288;
            }
            if (i3 != 3) {
                return i;
            }
            if (this.mLaunchMode == 4 && i2 == 0) {
                return i;
            }
        }
        return i & (-134742017);
    }

    public final Task getOrCreateRootTask(ActivityRecord activityRecord, int i, Task task, ActivityOptions activityOptions) {
        Task launchOverTargetRootTask;
        Intent intent = this.mIntent;
        if (intent != null && intent.getLaunchOverTargetTaskId() != -1 && (launchOverTargetRootTask = getLaunchOverTargetRootTask(activityRecord, i, task, activityOptions)) != null && launchOverTargetRootTask.getDisplayContent() != null) {
            if (!(launchOverTargetRootTask.inSplitScreenWindowingMode() && this.mService.mKeyguardController.isKeyguardLocked(launchOverTargetRootTask.getDisplayId()))) {
                return launchOverTargetRootTask;
            }
        }
        boolean z = (activityOptions == null || !activityOptions.getAvoidMoveToFront()) && !this.mLaunchTaskBehind;
        ActivityRecord activityRecord2 = this.mSourceRecord;
        Task orCreateRootTask = this.mRootWindowContainer.getOrCreateRootTask(activityRecord, activityOptions, task, activityRecord2 != null ? activityRecord2.getTask() : null, z, this.mLaunchParams, i);
        if (orCreateRootTask.inFreeformWindowingMode() && !orCreateRootTask.hasChild() && orCreateRootTask == this.mInTask && !this.mLaunchParams.mBounds.isEmpty()) {
            orCreateRootTask.setBounds(this.mLaunchParams.mBounds);
        }
        return orCreateRootTask;
    }

    public final boolean isLaunchModeOneOf(int i, int i2) {
        int i3 = this.mLaunchMode;
        return i == i3 || i2 == i3;
    }

    public final boolean isLaunchModeOneOf(int i, int i2, int i3) {
        int i4 = this.mLaunchMode;
        return i == i4 || i2 == i4 || i3 == i4;
    }

    public ActivityStarter setIntent(Intent intent) {
        this.mRequest.intent = intent;
        return this;
    }

    public Intent getIntent() {
        return this.mRequest.intent;
    }

    public ActivityStarter setIntentGrants(NeededUriGrants neededUriGrants) {
        this.mRequest.intentGrants = neededUriGrants;
        return this;
    }

    public ActivityStarter setReason(String str) {
        this.mRequest.reason = str;
        return this;
    }

    public ActivityStarter setCaller(IApplicationThread iApplicationThread) {
        this.mRequest.caller = iApplicationThread;
        return this;
    }

    public ActivityStarter setResolvedType(String str) {
        this.mRequest.resolvedType = str;
        return this;
    }

    public ActivityStarter setActivityInfo(ActivityInfo activityInfo) {
        this.mRequest.activityInfo = activityInfo;
        return this;
    }

    public ActivityStarter setVoiceSession(IVoiceInteractionSession iVoiceInteractionSession) {
        this.mRequest.voiceSession = iVoiceInteractionSession;
        return this;
    }

    public ActivityStarter setVoiceInteractor(IVoiceInteractor iVoiceInteractor) {
        this.mRequest.voiceInteractor = iVoiceInteractor;
        return this;
    }

    public ActivityStarter setResultTo(IBinder iBinder) {
        this.mRequest.resultTo = iBinder;
        return this;
    }

    public ActivityStarter setResultWho(String str) {
        this.mRequest.resultWho = str;
        return this;
    }

    public ActivityStarter setRequestCode(int i) {
        this.mRequest.requestCode = i;
        return this;
    }

    public ActivityStarter setCallingPid(int i) {
        this.mRequest.callingPid = i;
        return this;
    }

    public ActivityStarter setCallingUid(int i) {
        this.mRequest.callingUid = i;
        return this;
    }

    public ActivityStarter setCallingPackage(String str) {
        this.mRequest.callingPackage = str;
        return this;
    }

    public ActivityStarter setCallingFeatureId(String str) {
        this.mRequest.callingFeatureId = str;
        return this;
    }

    public ActivityStarter setRealCallingPid(int i) {
        this.mRequest.realCallingPid = i;
        return this;
    }

    public ActivityStarter setRealCallingUid(int i) {
        this.mRequest.realCallingUid = i;
        return this;
    }

    public ActivityStarter setStartFlags(int i) {
        this.mRequest.startFlags = i;
        return this;
    }

    public ActivityStarter setActivityOptions(SafeActivityOptions safeActivityOptions) {
        this.mRequest.activityOptions = safeActivityOptions;
        return this;
    }

    public ActivityStarter setActivityOptions(Bundle bundle) {
        return setActivityOptions(SafeActivityOptions.fromBundle(bundle));
    }

    public ActivityStarter setIgnoreTargetSecurity(boolean z) {
        this.mRequest.ignoreTargetSecurity = z;
        return this;
    }

    public ActivityStarter setFilterCallingUid(int i) {
        this.mRequest.filterCallingUid = i;
        return this;
    }

    public ActivityStarter setComponentSpecified(boolean z) {
        this.mRequest.componentSpecified = z;
        return this;
    }

    public ActivityStarter setOutActivity(ActivityRecord[] activityRecordArr) {
        this.mRequest.outActivity = activityRecordArr;
        return this;
    }

    public ActivityStarter setInTask(Task task) {
        this.mRequest.inTask = task;
        return this;
    }

    public ActivityStarter setInTaskFragment(TaskFragment taskFragment) {
        this.mRequest.inTaskFragment = taskFragment;
        return this;
    }

    public ActivityStarter setWaitResult(WaitResult waitResult) {
        this.mRequest.waitResult = waitResult;
        return this;
    }

    public ActivityStarter setProfilerInfo(ProfilerInfo profilerInfo) {
        this.mRequest.profilerInfo = profilerInfo;
        return this;
    }

    public ActivityStarter setGlobalConfiguration(Configuration configuration) {
        this.mRequest.globalConfig = configuration;
        return this;
    }

    public ActivityStarter setUserId(int i) {
        this.mRequest.userId = i;
        return this;
    }

    public ActivityStarter setAllowPendingRemoteAnimationRegistryLookup(boolean z) {
        this.mRequest.allowPendingRemoteAnimationRegistryLookup = z;
        return this;
    }

    public ActivityStarter setOriginatingPendingIntent(PendingIntentRecord pendingIntentRecord) {
        this.mRequest.originatingPendingIntent = pendingIntentRecord;
        return this;
    }

    public ActivityStarter setBackgroundStartPrivileges(BackgroundStartPrivileges backgroundStartPrivileges) {
        this.mRequest.backgroundStartPrivileges = backgroundStartPrivileges;
        return this;
    }

    public ActivityStarter setFreezeScreen(boolean z) {
        this.mRequest.freezeScreen = z;
        return this;
    }

    public ActivityStarter setErrorCallbackToken(IBinder iBinder) {
        this.mRequest.errorCallbackToken = iBinder;
        return this;
    }

    public void startResolvedActivity(ActivityRecord activityRecord, ActivityRecord activityRecord2, IVoiceInteractionSession iVoiceInteractionSession, IVoiceInteractor iVoiceInteractor, int i, ActivityOptions activityOptions, Task task, TaskFragment taskFragment, int i2, NeededUriGrants neededUriGrants) {
        try {
            ActivityMetricsLogger.LaunchingState notifyActivityLaunching = this.mSupervisor.getActivityMetricsLogger().notifyActivityLaunching(activityRecord.intent, activityRecord.resultTo, Binder.getCallingUid());
            this.mLastStartReason = "startResolvedActivity";
            this.mLastStartActivityTimeMs = System.currentTimeMillis();
            this.mLastStartActivityRecord = activityRecord;
            this.mLastStartActivityResult = startActivityUnchecked(activityRecord, activityRecord2, iVoiceInteractionSession, iVoiceInteractor, i, activityOptions, task, taskFragment, i2, neededUriGrants, 0);
            this.mSupervisor.getActivityMetricsLogger().notifyActivityLaunched(notifyActivityLaunching, this.mLastStartActivityResult, this.mStartActivity == this.mLastStartActivityRecord, this.mLastStartActivityRecord, activityOptions);
        } finally {
            onExecutionComplete();
        }
    }

    public boolean setLaunchOverTargetRootTaskIfNeeded(ActivityRecord activityRecord) {
        Task orCreateRootTask;
        if (!activityRecord.isActivityTypeStandardOrUndefined() || !activityRecord.isResizeable()) {
            return false;
        }
        Task task = activityRecord.getTask();
        if ((!canMoveTaskToBottomTask(task, this.mIntent.getLaunchOverTargetTaskId()) && !this.mIntent.getForceLaunchOverTargetTask()) || task == (orCreateRootTask = getOrCreateRootTask(activityRecord, this.mLaunchFlags, task, this.mOptions)) || task.isDescendantOf(orCreateRootTask)) {
            return false;
        }
        ActivityRecord findEnterPipOnTaskSwitchCandidate = Task.findEnterPipOnTaskSwitchCandidate(orCreateRootTask);
        if (findEnterPipOnTaskSwitchCandidate != null && findEnterPipOnTaskSwitchCandidate.getTask() != task) {
            Task.enableEnterPipOnTaskSwitch(findEnterPipOnTaskSwitchCandidate, null, activityRecord, this.mOptions);
        }
        task.reparent(orCreateRootTask, true, 0, true, true, "reparentToLaunchPolicy");
        this.mMovedToFront = true;
        this.mTargetRootTask = orCreateRootTask;
        return true;
    }

    public final boolean canMoveTaskToBottomTask(Task task, int i) {
        if (task == null || task.mTaskId == i) {
            return false;
        }
        if ((!task.inFreeformWindowingMode() || (CoreRune.MT_NEW_DEX_LAUNCH_POLICY && task.isNewDexMode() && !task.isVisible() && isSavedFrontTask(i))) && !this.mService.mMultiTaskingController.isAffordanceTargetTask(task)) {
            return task.getTopVisibleActivity() == null || !isSavedFrontTask(task.mTaskId);
        }
        return false;
    }

    public Task getLaunchOverTargetRootTask(ActivityRecord activityRecord, int i, Task task, ActivityOptions activityOptions) {
        ActivityOptions activityOptions2;
        Task orCreateRootTask;
        if (activityRecord == null || !activityRecord.isActivityTypeStandardOrUndefined() || !activityRecord.isResizeable() || (task != null && task.isActivityTypeHomeOrRecents())) {
            return null;
        }
        int launchOverTargetTaskId = this.mIntent.getLaunchOverTargetTaskId();
        boolean canMoveTaskToBottomTask = canMoveTaskToBottomTask(task, launchOverTargetTaskId);
        if (task == null || canMoveTaskToBottomTask || this.mIntent.getForceLaunchOverTargetTask()) {
            Task anyTaskForId = (launchOverTargetTaskId == -1 || launchOverTargetTaskId == -10000) ? null : this.mRootWindowContainer.anyTaskForId(launchOverTargetTaskId, 0, null, false);
            TaskDisplayArea taskDisplayArea = this.mPreferredTaskDisplayArea;
            ActivityRecord focusedActivity = taskDisplayArea != null ? taskDisplayArea.getFocusedActivity() : null;
            if (anyTaskForId == null || anyTaskForId.getTopVisibleActivity() == null || (!anyTaskForId.inFreeformWindowingMode() && !isSavedFrontTask(anyTaskForId.mTaskId))) {
                anyTaskForId = (focusedActivity == null || !(focusedActivity.getWindowingMode() == 1 || focusedActivity.getWindowingMode() == 5 || WindowConfiguration.isSplitScreenWindowingMode(focusedActivity.getWindowConfiguration()))) ? null : focusedActivity.getTask();
            }
            if (anyTaskForId != null) {
                if (anyTaskForId.getWindowConfiguration().getStageType() != 0) {
                    return anyTaskForId.getParent().asTask();
                }
                int windowingMode = anyTaskForId.getWindowingMode();
                if (windowingMode == 1 || windowingMode == 5) {
                    if (activityOptions == null) {
                        activityOptions2 = ActivityOptions.makeBasic();
                        this.mOptions = activityOptions2;
                    } else {
                        activityOptions2 = activityOptions;
                    }
                    activityOptions2.setForceLaunchWindowingMode(windowingMode);
                    int resolveActivityType = this.mRootWindowContainer.resolveActivityType(activityRecord, activityOptions2, task);
                    TaskDisplayArea displayArea = anyTaskForId.getDisplayArea();
                    if (displayArea != null && (orCreateRootTask = displayArea.getOrCreateRootTask(activityRecord, activityOptions2, task, null, null, i, resolveActivityType, true)) != null) {
                        return orCreateRootTask;
                    }
                }
            }
        }
        return null;
    }

    public final void saveFrontTaskId() {
        TaskDisplayArea defaultTaskDisplayArea = this.mRootWindowContainer.getDefaultTaskDisplayArea();
        if (!defaultTaskDisplayArea.isSplitScreenModeActivated()) {
            Task rootTask = defaultTaskDisplayArea.getRootTask(1, 0);
            if (rootTask == null || rootTask.getTopVisibleActivity() == null) {
                return;
            }
            this.mSavedFrontTaskIds.put(rootTask.getTopMostTask().mTaskId, true);
            return;
        }
        for (int i = 1; i <= 2; i++) {
            Task topRootTaskInStageType = defaultTaskDisplayArea.getTopRootTaskInStageType(i);
            if (topRootTaskInStageType != null && topRootTaskInStageType.getTopVisibleActivity() != null) {
                this.mSavedFrontTaskIds.put(topRootTaskInStageType.getTopMostTask().mTaskId, true);
            }
        }
    }

    public final boolean isSavedFrontTask(int i) {
        return this.mSavedFrontTaskIds.get(i, false);
    }

    public final boolean canDismissSplitStart(ActivityRecord activityRecord, Task task, ActivityOptions activityOptions) {
        if (activityOptions == null) {
            return false;
        }
        if (this.mService.mMultiTaskingController.isAffordanceTargetTask(task) && !this.mSupervisor.mRecentTasks.isLauncherUid(this.mCallingUid)) {
            return false;
        }
        if (ForceLaunchWindowingModeUtils.shouldDismissSplitBeforeLaunch(activityOptions, activityRecord)) {
            return true;
        }
        if (activityOptions.isDismissSplitBeforeLaunch()) {
            return task == null || task.isMinimized();
        }
        return false;
    }

    public final boolean isBlockedFreeformLaunchSALogging(ActivityRecord activityRecord) {
        return (activityRecord.isDexMode() || "startActivityFromRecents".equals(this.mLastStartReason) || "android.server.wm.app".equals(this.mRequest.callingPackage) || TextUtils.isEmpty(this.mRequest.callingPackage) || this.mService.getRecentTasks().isRecentsUid(this.mRequest.realCallingUid) || this.mService.getRecentTasks().isLauncherUid(this.mRequest.realCallingUid) || this.mService.mMultiTaskingController.getSystemUiUid() == this.mRequest.realCallingUid) ? false : true;
    }

    public final void sendMultiWindowSALogging(ActivityRecord activityRecord) {
        if (this.mIsFreeformLaunching && activityRecord.inFreeformWindowingMode() && !isBlockedFreeformLaunchSALogging(activityRecord)) {
            CoreSaLogger.logForAdvanced("2004", "From application");
            CoreSaLogger.logForAdvanced("2013", this.mRequest.callingPackage);
        }
    }

    public void dump(PrintWriter printWriter, String str) {
        printWriter.print(str);
        printWriter.print("mCurrentUser=");
        printWriter.println(this.mRootWindowContainer.mCurrentUser);
        printWriter.print(str);
        printWriter.print("mLastStartReason=");
        printWriter.println(this.mLastStartReason);
        printWriter.print(str);
        printWriter.print("mLastStartActivityTimeMs=");
        printWriter.println(DateFormat.getDateTimeInstance().format(new Date(this.mLastStartActivityTimeMs)));
        printWriter.print(str);
        printWriter.print("mLastStartActivityResult=");
        printWriter.println(this.mLastStartActivityResult);
        if (this.mLastStartActivityRecord != null) {
            printWriter.print(str);
            printWriter.println("mLastStartActivityRecord:");
            this.mLastStartActivityRecord.dump(printWriter, str + "  ", true);
        }
        if (this.mStartActivity != null) {
            printWriter.print(str);
            printWriter.println("mStartActivity:");
            this.mStartActivity.dump(printWriter, str + "  ", true);
        }
        if (this.mIntent != null) {
            printWriter.print(str);
            printWriter.print("mIntent=");
            printWriter.println(this.mIntent);
        }
        if (this.mOptions != null) {
            printWriter.print(str);
            printWriter.print("mOptions=");
            printWriter.println(this.mOptions);
        }
        printWriter.print(str);
        printWriter.print("mLaunchMode=");
        printWriter.print(ActivityInfo.launchModeToString(this.mLaunchMode));
        printWriter.print(str);
        printWriter.print("mLaunchFlags=0x");
        printWriter.print(Integer.toHexString(this.mLaunchFlags));
        printWriter.print(" mDoResume=");
        printWriter.print(this.mDoResume);
        printWriter.print(" mAddingToTask=");
        printWriter.print(this.mAddingToTask);
        printWriter.print(" mInTaskFragment=");
        printWriter.println(this.mInTaskFragment);
    }

    public final boolean shouldCleanLaunchWindowingMode(ActivityOptions activityOptions, Task task) {
        int forceLaunchWindowingMode = activityOptions.getForceLaunchWindowingMode();
        return forceLaunchWindowingMode > 1 && forceLaunchWindowingMode < 5;
    }
}
