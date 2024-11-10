package com.android.server.am;

import android.R;
import android.app.ActivityManagerInternal;
import android.app.BackgroundStartPrivileges;
import android.app.IApplicationThread;
import android.app.IServiceConnection;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.SystemClock;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Slog;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.util.proto.ProtoUtils;
import com.android.internal.app.procstats.ServiceState;
import com.android.internal.util.Preconditions;
import com.android.server.LocalServices;
import com.android.server.am.ActivityManagerService;
import com.android.server.notification.NotificationManagerInternal;
import com.android.server.uri.NeededUriGrants;
import com.android.server.uri.UriPermissionOwner;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class ServiceRecord extends Binder implements ComponentName.WithComponentName {
    public boolean allowlistManager;
    public final ActivityManagerService ams;
    public ProcessRecord app;
    public ApplicationInfo appInfo;
    public boolean callStart;
    public int crashCount;
    public final long createRealTime;
    public boolean createdFromFg;
    public final String definingPackageName;
    public final int definingUid;
    public int delayCount;
    public boolean delayService;
    public boolean delayServiceStop;
    public long delayTimeout;
    public boolean delayed;
    public boolean delayedStop;
    public long destroyTime;
    public boolean destroying;
    public boolean executeFg;
    public int executeNesting;
    public long executingStart;
    public final boolean exported;
    public long fgDisplayTime;
    public boolean fgRequired;
    public boolean fgWaiting;
    public int foregroundId;
    public Notification foregroundNoti;
    public int foregroundServiceType;
    public boolean inSharedIsolatedProcess;
    public final ComponentName instanceName;
    public final Intent.FilterComparison intent;
    public boolean isForeground;
    public boolean isNotAppComponentUsage;
    public final boolean isSdkSandbox;
    public ProcessRecord isolationHostProc;
    public long lastActivity;
    public int lastStartId;
    public long lastTopAlmostPerceptibleBindRequestUptimeMs;
    public boolean mAllowUiJobScheduling;
    public boolean mAllowWhileInUsePermissionInFgs;
    public boolean mAllowWhileInUsePermissionInFgsAtEntering;
    public ProcessRecord mAppForAllowingBgActivityStartsByStart;
    public Runnable mCleanUpAllowBgActivityStartsByStartCallback;
    public long mEarliestRestartTime;
    public ForegroundServiceDelegation mFgsDelegation;
    public boolean mFgsHasNotificationPermission;
    public boolean mFgsNotificationDeferred;
    public boolean mFgsNotificationShown;
    public boolean mFgsNotificationWasDeferred;
    public String mInfoAllowStartForeground;
    public ActivityManagerService.FgsTempAllowListItem mInfoTempFgsAllowListReason;
    public boolean mIsAllowedBgActivityStartsByBinding;
    public boolean mIsFgsDelegate;
    public boolean mKeepWarming;
    public boolean mLoggedInfoAllowStartForeground;
    public int mProcessStateOnRequest;
    public ApplicationInfo mRecentCallerApplicationInfo;
    public String mRecentCallingPackage;
    public int mRecentCallingUid;
    public long mRestartSchedulingTime;
    public ShortFgsInfo mShortFgsInfo;
    public int mStartForegroundCount;
    public final ComponentName name;
    public long nextRestartTime;
    public final String packageName;
    public int pendingConnectionGroup;
    public int pendingConnectionImportance;
    public final String permission;
    public final String processName;
    public int restartCount;
    public long restartDelay;
    public long restartTime;
    public ServiceState restartTracker;
    public final Runnable restarter;
    public final String sdkSandboxClientAppPackage;
    public final int sdkSandboxClientAppUid;
    public boolean serviceDelayed;
    public final ServiceInfo serviceInfo;
    public final String shortInstanceName;
    public int startCommandResult;
    public boolean startRequested;
    public long startingBgTimeout;
    public boolean stopIfKilled;
    public String stringName;
    public int totalRestartCount;
    public ServiceState tracker;
    public final int userId;
    public final ArrayMap bindings = new ArrayMap();
    public final ArrayMap connections = new ArrayMap();
    public ArrayList mBackgroundStartPrivilegesByStart = new ArrayList();
    public BackgroundStartPrivileges mBackgroundStartPrivilegesByStartMerged = BackgroundStartPrivileges.NONE;
    public int mAllowWhileInUsePermissionInFgsReason = -1;
    public long mFgsEnterTime = 0;
    public long mFgsExitTime = 0;
    public int mAllowStartForeground = -1;
    public int mAllowStartForegroundAtEntering = -1;
    public final ArrayList pendingBinds = new ArrayList();
    public final ArrayList deliveredStarts = new ArrayList();
    public final ArrayList pendingStarts = new ArrayList();

    /* loaded from: classes.dex */
    public class StartItem {
        public final int callingId;
        public long deliveredTime;
        public int deliveryCount;
        public int doneExecutingCount;
        public final int id;
        public final Intent intent;
        public final String mCallingPackageName;
        public final String mCallingProcessName;
        public final int mCallingProcessState;
        public final NeededUriGrants neededGrants;
        public final ServiceRecord sr;
        public String stringName;
        public final boolean taskRemoved;
        public UriPermissionOwner uriPermissions;

        public StartItem(ServiceRecord serviceRecord, boolean z, int i, Intent intent, NeededUriGrants neededUriGrants, int i2, String str, String str2, int i3) {
            this.sr = serviceRecord;
            this.taskRemoved = z;
            this.id = i;
            this.intent = intent;
            this.neededGrants = neededUriGrants;
            this.callingId = i2;
            this.mCallingProcessName = str;
            this.mCallingPackageName = str2;
            this.mCallingProcessState = i3;
        }

        public UriPermissionOwner getUriPermissionsLocked() {
            if (this.uriPermissions == null) {
                this.uriPermissions = new UriPermissionOwner(this.sr.ams.mUgmInternal, this);
            }
            return this.uriPermissions;
        }

        public void removeUriPermissionsLocked() {
            UriPermissionOwner uriPermissionOwner = this.uriPermissions;
            if (uriPermissionOwner != null) {
                uriPermissionOwner.removeUriPermissions();
                this.uriPermissions = null;
            }
        }

        public void dumpDebug(ProtoOutputStream protoOutputStream, long j, long j2) {
            long start = protoOutputStream.start(j);
            protoOutputStream.write(1120986464257L, this.id);
            ProtoUtils.toDuration(protoOutputStream, 1146756268034L, this.deliveredTime, j2);
            protoOutputStream.write(1120986464259L, this.deliveryCount);
            protoOutputStream.write(1120986464260L, this.doneExecutingCount);
            Intent intent = this.intent;
            if (intent != null) {
                intent.dumpDebug(protoOutputStream, 1146756268037L, true, true, true, false);
            }
            NeededUriGrants neededUriGrants = this.neededGrants;
            if (neededUriGrants != null) {
                neededUriGrants.dumpDebug(protoOutputStream, 1146756268038L);
            }
            UriPermissionOwner uriPermissionOwner = this.uriPermissions;
            if (uriPermissionOwner != null) {
                uriPermissionOwner.dumpDebug(protoOutputStream, 1146756268039L);
            }
            protoOutputStream.end(start);
        }

        public String toString() {
            String str = this.stringName;
            if (str != null) {
                return str;
            }
            StringBuilder sb = new StringBuilder(128);
            sb.append("ServiceRecord{");
            sb.append(Integer.toHexString(System.identityHashCode(this.sr)));
            sb.append(' ');
            sb.append(this.sr.shortInstanceName);
            sb.append(" StartItem ");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" id=");
            sb.append(this.id);
            sb.append('}');
            String sb2 = sb.toString();
            this.stringName = sb2;
            return sb2;
        }
    }

    /* loaded from: classes.dex */
    public class BindItem {
        public final IApplicationThread caller;
        public final String callingPackage;
        public final IServiceConnection connection;
        public long flags;
        public final String instanceName;
        public boolean isSdkSandboxService;
        public final String resolvedType;
        public final String sdkSandboxClientAppPackage;
        public int sdkSandboxClientAppUid;
        public final IApplicationThread sdkSandboxClientApplicationThread;
        public final Intent service;
        public final IBinder token;
        public int userId;

        public BindItem(IApplicationThread iApplicationThread, IBinder iBinder, Intent intent, String str, IServiceConnection iServiceConnection, long j, String str2, boolean z, int i, String str3, IApplicationThread iApplicationThread2, String str4, int i2) {
            this.caller = iApplicationThread;
            this.token = iBinder;
            this.service = intent;
            this.resolvedType = str;
            this.connection = iServiceConnection;
            this.flags = j;
            this.instanceName = str2;
            this.isSdkSandboxService = z;
            this.sdkSandboxClientAppUid = i;
            this.sdkSandboxClientAppPackage = str3;
            this.sdkSandboxClientApplicationThread = iApplicationThread2;
            this.callingPackage = str4;
            this.userId = i2;
        }
    }

    /* loaded from: classes.dex */
    public class ShortFgsInfo {
        public int mStartForegroundCount;
        public int mStartId;
        public final long mStartTime;

        public ShortFgsInfo(long j) {
            this.mStartTime = j;
            update();
        }

        public void update() {
            ServiceRecord serviceRecord = ServiceRecord.this;
            this.mStartForegroundCount = serviceRecord.mStartForegroundCount;
            this.mStartId = serviceRecord.getLastStartId();
        }

        public long getStartTime() {
            return this.mStartTime;
        }

        public int getStartForegroundCount() {
            return this.mStartForegroundCount;
        }

        public int getStartId() {
            return this.mStartId;
        }

        public boolean isCurrent() {
            return this.mStartForegroundCount == ServiceRecord.this.mStartForegroundCount;
        }

        public long getTimeoutTime() {
            return this.mStartTime + ServiceRecord.this.ams.mConstants.mShortFgsTimeoutDuration;
        }

        public long getProcStateDemoteTime() {
            return this.mStartTime + ServiceRecord.this.ams.mConstants.mShortFgsTimeoutDuration + ServiceRecord.this.ams.mConstants.mShortFgsProcStateExtraWaitDuration;
        }

        public long getAnrTime() {
            return this.mStartTime + ServiceRecord.this.ams.mConstants.mShortFgsTimeoutDuration + ServiceRecord.this.ams.mConstants.mShortFgsAnrExtraWaitDuration;
        }
    }

    public void dumpStartList(PrintWriter printWriter, String str, List list, long j) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            StartItem startItem = (StartItem) list.get(i);
            printWriter.print(str);
            printWriter.print("#");
            printWriter.print(i);
            printWriter.print(" id=");
            printWriter.print(startItem.id);
            if (j != 0) {
                printWriter.print(" dur=");
                TimeUtils.formatDuration(startItem.deliveredTime, j, printWriter);
            }
            if (startItem.deliveryCount != 0) {
                printWriter.print(" dc=");
                printWriter.print(startItem.deliveryCount);
            }
            if (startItem.doneExecutingCount != 0) {
                printWriter.print(" dxc=");
                printWriter.print(startItem.doneExecutingCount);
            }
            printWriter.println("");
            printWriter.print(str);
            printWriter.print("  intent=");
            Intent intent = startItem.intent;
            if (intent != null) {
                printWriter.println(intent.toString());
            } else {
                printWriter.println("null");
            }
            if (startItem.neededGrants != null) {
                printWriter.print(str);
                printWriter.print("  neededGrants=");
                printWriter.println(startItem.neededGrants);
            }
            UriPermissionOwner uriPermissionOwner = startItem.uriPermissions;
            if (uriPermissionOwner != null) {
                uriPermissionOwner.dump(printWriter, str);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x01f6, code lost:
    
        if (r1 == 0) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dumpDebug(android.util.proto.ProtoOutputStream r20, long r21) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ServiceRecord.dumpDebug(android.util.proto.ProtoOutputStream, long):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0325, code lost:
    
        if (r0 == 0) goto L65;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dump(java.io.PrintWriter r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 1061
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.ServiceRecord.dump(java.io.PrintWriter, java.lang.String):void");
    }

    public ServiceRecord(ActivityManagerService activityManagerService, ComponentName componentName, ComponentName componentName2, String str, int i, Intent.FilterComparison filterComparison, ServiceInfo serviceInfo, boolean z, Runnable runnable, String str2, int i2, String str3, boolean z2) {
        this.ams = activityManagerService;
        this.name = componentName;
        this.instanceName = componentName2;
        this.shortInstanceName = componentName2.flattenToShortString();
        this.definingPackageName = str;
        this.definingUid = i;
        this.intent = filterComparison;
        this.serviceInfo = serviceInfo;
        ApplicationInfo applicationInfo = serviceInfo.applicationInfo;
        this.appInfo = applicationInfo;
        this.packageName = applicationInfo.packageName;
        this.isSdkSandbox = i2 != -1;
        this.sdkSandboxClientAppUid = i2;
        this.sdkSandboxClientAppPackage = str3;
        this.inSharedIsolatedProcess = z2;
        this.processName = str2;
        this.permission = serviceInfo.permission;
        this.exported = serviceInfo.exported;
        this.restarter = runnable;
        this.createRealTime = SystemClock.elapsedRealtime();
        this.lastActivity = SystemClock.uptimeMillis();
        this.userId = UserHandle.getUserId(this.appInfo.uid);
        this.createdFromFg = z;
        updateKeepWarmLocked();
        updateFgsHasNotificationPermission();
    }

    public ServiceState getTracker() {
        ServiceState serviceState = this.tracker;
        if (serviceState != null) {
            return serviceState;
        }
        ServiceInfo serviceInfo = this.serviceInfo;
        ApplicationInfo applicationInfo = serviceInfo.applicationInfo;
        if ((applicationInfo.flags & 8) == 0) {
            ServiceState serviceState2 = this.ams.mProcessStats.getServiceState(serviceInfo.packageName, applicationInfo.uid, applicationInfo.longVersionCode, serviceInfo.processName, serviceInfo.name);
            this.tracker = serviceState2;
            if (serviceState2 != null) {
                serviceState2.applyNewOwner(this);
            }
        }
        return this.tracker;
    }

    public void forceClearTracker() {
        ServiceState serviceState = this.tracker;
        if (serviceState != null) {
            serviceState.clearCurrentOwner(this, true);
            this.tracker = null;
        }
    }

    public void makeRestarting(int i, long j) {
        if (this.restartTracker == null) {
            ServiceInfo serviceInfo = this.serviceInfo;
            ApplicationInfo applicationInfo = serviceInfo.applicationInfo;
            if ((applicationInfo.flags & 8) == 0) {
                this.restartTracker = this.ams.mProcessStats.getServiceState(serviceInfo.packageName, applicationInfo.uid, applicationInfo.longVersionCode, serviceInfo.processName, serviceInfo.name);
            }
            if (this.restartTracker == null) {
                return;
            }
        }
        this.restartTracker.setRestarting(true, i, j);
    }

    public void setProcess(ProcessRecord processRecord, IApplicationThread iApplicationThread, int i, UidRecord uidRecord) {
        if (processRecord != null) {
            ProcessRecord processRecord2 = this.mAppForAllowingBgActivityStartsByStart;
            if (processRecord2 != null && processRecord2 != processRecord) {
                processRecord2.removeBackgroundStartPrivileges(this);
                this.ams.mHandler.removeCallbacks(this.mCleanUpAllowBgActivityStartsByStartCallback);
            }
            this.mAppForAllowingBgActivityStartsByStart = this.mBackgroundStartPrivilegesByStartMerged.allowsAny() ? processRecord : null;
            BackgroundStartPrivileges backgroundStartPrivilegesWithExclusiveToken = getBackgroundStartPrivilegesWithExclusiveToken();
            if (backgroundStartPrivilegesWithExclusiveToken.allowsAny()) {
                processRecord.addOrUpdateBackgroundStartPrivileges(this, backgroundStartPrivilegesWithExclusiveToken);
            } else {
                processRecord.removeBackgroundStartPrivileges(this);
            }
        }
        ProcessRecord processRecord3 = this.app;
        if (processRecord3 != null && processRecord3 != processRecord) {
            if (this.mBackgroundStartPrivilegesByStartMerged.allowsNothing()) {
                this.app.removeBackgroundStartPrivileges(this);
            }
            this.app.mServices.updateBoundClientUids();
            this.app.mServices.updateHostingComonentTypeForBindingsLocked();
        }
        this.app = processRecord;
        updateProcessStateOnRequest();
        if (this.pendingConnectionGroup > 0 && processRecord != null) {
            ProcessServiceRecord processServiceRecord = processRecord.mServices;
            processServiceRecord.setConnectionService(this);
            processServiceRecord.setConnectionGroup(this.pendingConnectionGroup);
            processServiceRecord.setConnectionImportance(this.pendingConnectionImportance);
            this.pendingConnectionImportance = 0;
            this.pendingConnectionGroup = 0;
        }
        for (int size = this.connections.size() - 1; size >= 0; size--) {
            ArrayList arrayList = (ArrayList) this.connections.valueAt(size);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ConnectionRecord connectionRecord = (ConnectionRecord) arrayList.get(i2);
                if (processRecord != null) {
                    connectionRecord.startAssociationIfNeeded();
                } else {
                    connectionRecord.stopAssociation();
                }
            }
        }
        if (processRecord != null) {
            processRecord.mServices.updateBoundClientUids();
            processRecord.mServices.updateHostingComonentTypeForBindingsLocked();
        }
    }

    public void updateProcessStateOnRequest() {
        ProcessRecord processRecord = this.app;
        this.mProcessStateOnRequest = (processRecord == null || processRecord.getThread() == null || this.app.isKilled()) ? 20 : this.app.mState.getCurProcState();
    }

    public ArrayMap getConnections() {
        return this.connections;
    }

    public void addConnection(IBinder iBinder, ConnectionRecord connectionRecord) {
        ArrayList arrayList = (ArrayList) this.connections.get(iBinder);
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.connections.put(iBinder, arrayList);
        }
        arrayList.add(connectionRecord);
        ProcessRecord processRecord = this.app;
        if (processRecord != null) {
            processRecord.mServices.addBoundClientUid(connectionRecord.clientUid, connectionRecord.clientPackageName, connectionRecord.getFlags());
            this.app.mProfile.addHostingComponentType(512);
        }
    }

    public void removeConnection(IBinder iBinder) {
        this.connections.remove(iBinder);
        ProcessRecord processRecord = this.app;
        if (processRecord != null) {
            processRecord.mServices.updateBoundClientUids();
            this.app.mServices.updateHostingComonentTypeForBindingsLocked();
        }
    }

    public boolean canStopIfKilled(boolean z) {
        if (isShortFgs()) {
            return true;
        }
        return this.startRequested && (this.stopIfKilled || z) && this.pendingStarts.isEmpty();
    }

    public void updateIsAllowedBgActivityStartsByBinding() {
        boolean z = false;
        for (int size = this.connections.size() - 1; size >= 0; size--) {
            ArrayList arrayList = (ArrayList) this.connections.valueAt(size);
            int i = 0;
            while (true) {
                if (i >= arrayList.size()) {
                    break;
                }
                if (((ConnectionRecord) arrayList.get(i)).hasFlag(1048576)) {
                    z = true;
                    break;
                }
                i++;
            }
            if (z) {
                break;
            }
        }
        setAllowedBgActivityStartsByBinding(z);
    }

    public void setAllowedBgActivityStartsByBinding(boolean z) {
        this.mIsAllowedBgActivityStartsByBinding = z;
        updateParentProcessBgActivityStartsToken();
    }

    public void allowBgActivityStartsOnServiceStart(BackgroundStartPrivileges backgroundStartPrivileges) {
        Preconditions.checkArgument(backgroundStartPrivileges.allowsAny());
        this.mBackgroundStartPrivilegesByStart.add(backgroundStartPrivileges);
        setAllowedBgActivityStartsByStart(backgroundStartPrivileges.merge(this.mBackgroundStartPrivilegesByStartMerged));
        ProcessRecord processRecord = this.app;
        if (processRecord != null) {
            this.mAppForAllowingBgActivityStartsByStart = processRecord;
        }
        if (this.mCleanUpAllowBgActivityStartsByStartCallback == null) {
            this.mCleanUpAllowBgActivityStartsByStartCallback = new Runnable() { // from class: com.android.server.am.ServiceRecord$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ServiceRecord.this.lambda$allowBgActivityStartsOnServiceStart$0();
                }
            };
        }
        ActivityManagerService activityManagerService = this.ams;
        activityManagerService.mHandler.postDelayed(this.mCleanUpAllowBgActivityStartsByStartCallback, activityManagerService.mConstants.SERVICE_BG_ACTIVITY_START_TIMEOUT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$allowBgActivityStartsOnServiceStart$0() {
        ActivityManagerService activityManagerService = this.ams;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                this.mBackgroundStartPrivilegesByStart.remove(0);
                if (!this.mBackgroundStartPrivilegesByStart.isEmpty()) {
                    BackgroundStartPrivileges merge = BackgroundStartPrivileges.merge(this.mBackgroundStartPrivilegesByStart);
                    this.mBackgroundStartPrivilegesByStartMerged = merge;
                    if (merge.allowsAny()) {
                        ProcessRecord processRecord = this.mAppForAllowingBgActivityStartsByStart;
                        if (processRecord != null) {
                            processRecord.addOrUpdateBackgroundStartPrivileges(this, getBackgroundStartPrivilegesWithExclusiveToken());
                        }
                    } else {
                        Slog.wtf("ActivityManager", "Service callback to revoke bg activity starts by service start triggered but mBackgroundStartPrivilegesByStartMerged = " + this.mBackgroundStartPrivilegesByStartMerged + ". This should never happen.");
                    }
                } else {
                    ProcessRecord processRecord2 = this.app;
                    ProcessRecord processRecord3 = this.mAppForAllowingBgActivityStartsByStart;
                    if (processRecord2 == processRecord3) {
                        setAllowedBgActivityStartsByStart(BackgroundStartPrivileges.NONE);
                    } else if (processRecord3 != null) {
                        processRecord3.removeBackgroundStartPrivileges(this);
                    }
                    this.mAppForAllowingBgActivityStartsByStart = null;
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public void updateAllowUiJobScheduling(boolean z) {
        if (this.mAllowUiJobScheduling == z) {
            return;
        }
        this.mAllowUiJobScheduling = z;
    }

    public final void setAllowedBgActivityStartsByStart(BackgroundStartPrivileges backgroundStartPrivileges) {
        if (this.mBackgroundStartPrivilegesByStartMerged == backgroundStartPrivileges) {
            return;
        }
        this.mBackgroundStartPrivilegesByStartMerged = backgroundStartPrivileges;
        updateParentProcessBgActivityStartsToken();
    }

    public final void updateParentProcessBgActivityStartsToken() {
        if (this.app == null) {
            return;
        }
        BackgroundStartPrivileges backgroundStartPrivilegesWithExclusiveToken = getBackgroundStartPrivilegesWithExclusiveToken();
        if (backgroundStartPrivilegesWithExclusiveToken.allowsAny()) {
            this.app.addOrUpdateBackgroundStartPrivileges(this, backgroundStartPrivilegesWithExclusiveToken);
        } else {
            this.app.removeBackgroundStartPrivileges(this);
        }
    }

    public final BackgroundStartPrivileges getBackgroundStartPrivilegesWithExclusiveToken() {
        if (this.mIsAllowedBgActivityStartsByBinding) {
            return BackgroundStartPrivileges.ALLOW_BAL;
        }
        if (this.mBackgroundStartPrivilegesByStart.isEmpty()) {
            return BackgroundStartPrivileges.NONE;
        }
        return this.mBackgroundStartPrivilegesByStartMerged;
    }

    public void updateKeepWarmLocked() {
        boolean z;
        if (this.ams.mConstants.KEEP_WARMING_SERVICES.contains(this.name)) {
            int currentUserId = this.ams.mUserController.getCurrentUserId();
            int i = this.userId;
            if (currentUserId == i || this.ams.mUserController.isCurrentProfile(i) || this.ams.isSingleton(this.processName, this.appInfo, this.instanceName.getClassName(), this.serviceInfo.flags)) {
                z = true;
                this.mKeepWarming = z;
            }
        }
        z = false;
        this.mKeepWarming = z;
    }

    public AppBindRecord retrieveAppBindingLocked(Intent intent, ProcessRecord processRecord, ProcessRecord processRecord2) {
        Intent.FilterComparison filterComparison = new Intent.FilterComparison(intent);
        IntentBindRecord intentBindRecord = (IntentBindRecord) this.bindings.get(filterComparison);
        if (intentBindRecord == null) {
            intentBindRecord = new IntentBindRecord(this, filterComparison);
            this.bindings.put(filterComparison, intentBindRecord);
        }
        AppBindRecord appBindRecord = (AppBindRecord) intentBindRecord.apps.get(processRecord);
        if (appBindRecord != null) {
            return appBindRecord;
        }
        AppBindRecord appBindRecord2 = new AppBindRecord(this, intentBindRecord, processRecord, processRecord2);
        intentBindRecord.apps.put(processRecord, appBindRecord2);
        return appBindRecord2;
    }

    public boolean hasAutoCreateConnections() {
        int size = this.connections.size() - 1;
        while (true) {
            if (size < 0) {
                return false;
            }
            ArrayList arrayList = (ArrayList) this.connections.valueAt(size);
            for (int i = 0; i < arrayList.size(); i++) {
                if (((ConnectionRecord) arrayList.get(i)).hasFlag(1)) {
                    return true;
                }
            }
            size--;
        }
    }

    public void updateAllowlistManager() {
        this.allowlistManager = false;
        for (int size = this.connections.size() - 1; size >= 0; size--) {
            ArrayList arrayList = (ArrayList) this.connections.valueAt(size);
            for (int i = 0; i < arrayList.size(); i++) {
                if (((ConnectionRecord) arrayList.get(i)).hasFlag(16777216)) {
                    this.allowlistManager = true;
                    return;
                }
            }
        }
    }

    public void resetRestartCounter() {
        this.restartCount = 0;
        this.restartDelay = 0L;
        this.restartTime = 0L;
        this.mEarliestRestartTime = 0L;
        this.mRestartSchedulingTime = 0L;
    }

    public StartItem findDeliveredStart(int i, boolean z, boolean z2) {
        int size = this.deliveredStarts.size();
        for (int i2 = 0; i2 < size; i2++) {
            StartItem startItem = (StartItem) this.deliveredStarts.get(i2);
            if (startItem.id == i && startItem.taskRemoved == z) {
                if (z2) {
                    this.deliveredStarts.remove(i2);
                }
                return startItem;
            }
        }
        return null;
    }

    public int getLastStartId() {
        return this.lastStartId;
    }

    public int makeNextStartId() {
        int i = this.lastStartId + 1;
        this.lastStartId = i;
        if (i < 1) {
            this.lastStartId = 1;
        }
        return this.lastStartId;
    }

    public final void updateFgsHasNotificationPermission() {
        final String str = this.packageName;
        final int i = this.appInfo.uid;
        this.ams.mHandler.post(new Runnable() { // from class: com.android.server.am.ServiceRecord.1
            @Override // java.lang.Runnable
            public void run() {
                NotificationManagerInternal notificationManagerInternal = (NotificationManagerInternal) LocalServices.getService(NotificationManagerInternal.class);
                if (notificationManagerInternal == null) {
                    return;
                }
                ServiceRecord.this.mFgsHasNotificationPermission = notificationManagerInternal.areNotificationsEnabledForPackage(str, i);
            }
        });
    }

    public void postNotification(final boolean z) {
        ProcessRecord processRecord;
        if (!this.isForeground || this.foregroundNoti == null || (processRecord = this.app) == null) {
            return;
        }
        final int i = this.appInfo.uid;
        final int pid = processRecord.getPid();
        final String str = this.packageName;
        final int i2 = this.foregroundId;
        final Notification notification = this.foregroundNoti;
        this.ams.mHandler.post(new Runnable() { // from class: com.android.server.am.ServiceRecord.2
            @Override // java.lang.Runnable
            public void run() {
                int i3;
                NotificationManagerInternal notificationManagerInternal = (NotificationManagerInternal) LocalServices.getService(NotificationManagerInternal.class);
                if (notificationManagerInternal == null) {
                    return;
                }
                ServiceRecord.this.mFgsHasNotificationPermission = notificationManagerInternal.areNotificationsEnabledForPackage(str, i);
                Notification notification2 = notification;
                try {
                    if (notification2.getSmallIcon() == null) {
                        Slog.v("ActivityManager", "Attempted to start a foreground service (" + ServiceRecord.this.shortInstanceName + ") with a broken notification (no icon: " + notification2 + ")");
                        ServiceRecord serviceRecord = ServiceRecord.this;
                        CharSequence loadLabel = serviceRecord.appInfo.loadLabel(serviceRecord.ams.mContext.getPackageManager());
                        if (loadLabel == null) {
                            loadLabel = ServiceRecord.this.appInfo.packageName;
                        }
                        try {
                            ServiceRecord serviceRecord2 = ServiceRecord.this;
                            Notification.Builder builder = new Notification.Builder(serviceRecord2.ams.mContext.createPackageContextAsUser(serviceRecord2.appInfo.packageName, 0, new UserHandle(ServiceRecord.this.userId)), notification2.getChannelId());
                            builder.setSmallIcon(ServiceRecord.this.appInfo.icon);
                            builder.setFlag(64, true);
                            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                            intent.setData(Uri.fromParts("package", ServiceRecord.this.appInfo.packageName, null));
                            ServiceRecord serviceRecord3 = ServiceRecord.this;
                            PendingIntent activityAsUser = PendingIntent.getActivityAsUser(serviceRecord3.ams.mContext, 0, intent, 201326592, null, UserHandle.of(serviceRecord3.userId));
                            builder.setColor(ServiceRecord.this.ams.mContext.getColor(R.color.system_notification_accent_color));
                            builder.setContentTitle(ServiceRecord.this.ams.mContext.getString(R.string.config_batterymeterPowersavePath, loadLabel));
                            builder.setContentText(ServiceRecord.this.ams.mContext.getString(R.string.config_batterymeterPerimeterPath, loadLabel));
                            builder.setContentIntent(activityAsUser);
                            notification2 = builder.build();
                        } catch (PackageManager.NameNotFoundException unused) {
                        }
                    }
                    if (notificationManagerInternal.getNotificationChannel(str, i, notification2.getChannelId()) == null) {
                        try {
                            PackageManager packageManager = ServiceRecord.this.ams.mContext.getPackageManager();
                            ServiceRecord serviceRecord4 = ServiceRecord.this;
                            i3 = packageManager.getApplicationInfoAsUser(serviceRecord4.appInfo.packageName, 0, serviceRecord4.userId).targetSdkVersion;
                        } catch (PackageManager.NameNotFoundException unused2) {
                            i3 = 27;
                        }
                        if (i3 >= 27) {
                            throw new RuntimeException("invalid channel for service notification: " + ServiceRecord.this.foregroundNoti);
                        }
                    }
                    if (notification2.getSmallIcon() == null) {
                        throw new RuntimeException("invalid service notification: " + ServiceRecord.this.foregroundNoti);
                    }
                    String str2 = str;
                    notificationManagerInternal.enqueueNotification(str2, str2, i, pid, null, i2, notification2, ServiceRecord.this.userId, z);
                    ServiceRecord serviceRecord5 = ServiceRecord.this;
                    serviceRecord5.foregroundNoti = notification2;
                    serviceRecord5.signalForegroundServiceNotification(serviceRecord5.packageName, serviceRecord5.appInfo.uid, i2, false);
                } catch (RuntimeException e) {
                    Slog.w("ActivityManager", "Error showing notification for service", e);
                    ServiceRecord.this.ams.mServices.killMisbehavingService(this, i, pid, str, 2);
                }
            }
        });
    }

    public void cancelNotification() {
        final String str = this.packageName;
        final int i = this.foregroundId;
        final int i2 = this.appInfo.uid;
        ProcessRecord processRecord = this.app;
        final int pid = processRecord != null ? processRecord.getPid() : 0;
        this.ams.mHandler.post(new Runnable() { // from class: com.android.server.am.ServiceRecord.3
            @Override // java.lang.Runnable
            public void run() {
                NotificationManagerInternal notificationManagerInternal = (NotificationManagerInternal) LocalServices.getService(NotificationManagerInternal.class);
                if (notificationManagerInternal == null) {
                    return;
                }
                try {
                    String str2 = str;
                    notificationManagerInternal.cancelNotification(str2, str2, i2, pid, null, i, ServiceRecord.this.userId);
                } catch (RuntimeException e) {
                    Slog.w("ActivityManager", "Error canceling notification for service", e);
                }
                ServiceRecord serviceRecord = ServiceRecord.this;
                serviceRecord.signalForegroundServiceNotification(serviceRecord.packageName, serviceRecord.appInfo.uid, i, true);
            }
        });
    }

    public final void signalForegroundServiceNotification(String str, int i, int i2, boolean z) {
        ActivityManagerService activityManagerService = this.ams;
        ActivityManagerService.boostPriorityForLockedSection();
        synchronized (activityManagerService) {
            try {
                for (int size = this.ams.mForegroundServiceStateListeners.size() - 1; size >= 0; size--) {
                    ((ActivityManagerInternal.ForegroundServiceStateListener) this.ams.mForegroundServiceStateListeners.get(size)).onForegroundServiceNotificationUpdated(str, this.appInfo.uid, i2, z);
                }
            } catch (Throwable th) {
                ActivityManagerService.resetPriorityAfterLockedSection();
                throw th;
            }
        }
        ActivityManagerService.resetPriorityAfterLockedSection();
    }

    public void stripForegroundServiceFlagFromNotification() {
        final int i = this.foregroundId;
        final int i2 = this.userId;
        final String str = this.packageName;
        this.ams.mHandler.post(new Runnable() { // from class: com.android.server.am.ServiceRecord.4
            @Override // java.lang.Runnable
            public void run() {
                NotificationManagerInternal notificationManagerInternal = (NotificationManagerInternal) LocalServices.getService(NotificationManagerInternal.class);
                if (notificationManagerInternal == null) {
                    return;
                }
                notificationManagerInternal.removeForegroundServiceFlagFromNotification(str, i, i2);
            }
        });
    }

    public void clearDeliveredStartsLocked() {
        for (int size = this.deliveredStarts.size() - 1; size >= 0; size--) {
            ((StartItem) this.deliveredStarts.get(size)).removeUriPermissionsLocked();
        }
        this.deliveredStarts.clear();
    }

    public String toString() {
        String str = this.stringName;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("ServiceRecord{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" u");
        sb.append(this.userId);
        sb.append(' ');
        sb.append(this.shortInstanceName);
        sb.append('}');
        String sb2 = sb.toString();
        this.stringName = sb2;
        return sb2;
    }

    public ComponentName getComponentName() {
        return this.name;
    }

    public boolean isShortFgs() {
        return this.startRequested && this.isForeground && this.foregroundServiceType == 2048;
    }

    public ShortFgsInfo getShortFgsInfo() {
        if (isShortFgs()) {
            return this.mShortFgsInfo;
        }
        return null;
    }

    public void setShortFgsInfo(long j) {
        this.mShortFgsInfo = new ShortFgsInfo(j);
    }

    public boolean hasShortFgsInfo() {
        return this.mShortFgsInfo != null;
    }

    public void clearShortFgsInfo() {
        this.mShortFgsInfo = null;
    }

    public final boolean shouldTriggerShortFgsTimedEvent(long j, long j2) {
        ShortFgsInfo shortFgsInfo;
        return isAppAlive() && this.startRequested && isShortFgs() && (shortFgsInfo = this.mShortFgsInfo) != null && shortFgsInfo.isCurrent() && j <= j2;
    }

    public boolean shouldTriggerShortFgsTimeout(long j) {
        ShortFgsInfo shortFgsInfo = this.mShortFgsInfo;
        return shouldTriggerShortFgsTimedEvent(shortFgsInfo == null ? 0L : shortFgsInfo.getTimeoutTime(), j);
    }

    public boolean shouldDemoteShortFgsProcState(long j) {
        ShortFgsInfo shortFgsInfo = this.mShortFgsInfo;
        return shouldTriggerShortFgsTimedEvent(shortFgsInfo == null ? 0L : shortFgsInfo.getProcStateDemoteTime(), j);
    }

    public boolean shouldTriggerShortFgsAnr(long j) {
        ShortFgsInfo shortFgsInfo = this.mShortFgsInfo;
        return shouldTriggerShortFgsTimedEvent(shortFgsInfo == null ? 0L : shortFgsInfo.getAnrTime(), j);
    }

    public final boolean isAppAlive() {
        ProcessRecord processRecord = this.app;
        return (processRecord == null || processRecord.getThread() == null || this.app.isKilled() || this.app.isKilledByAm()) ? false : true;
    }
}
