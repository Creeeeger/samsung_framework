package com.android.server.job.controllers.idle;

import android.R;
import android.app.AlarmManager;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.util.Log;
import android.util.Slog;
import android.util.proto.ProtoOutputStream;
import com.android.server.AppSchedulingModuleThread;
import com.android.server.job.JobSchedulerService;
import java.io.PrintWriter;
import java.util.Set;

/* loaded from: classes2.dex */
public final class DeviceIdlenessTracker extends BroadcastReceiver implements IdlenessTracker {
    public static final boolean DEBUG;
    public AlarmManager mAlarm;
    public boolean mDockIdle;
    public boolean mIdle;
    public IdlenessListener mIdleListener;
    public long mIdleWindowSlop;
    public long mInactivityIdleThreshold;
    public PowerManager mPowerManager;
    public boolean mProjectionActive;
    public final UiModeManager.OnProjectionStateChangedListener mOnProjectionStateChangedListener = new UiModeManager.OnProjectionStateChangedListener() { // from class: com.android.server.job.controllers.idle.DeviceIdlenessTracker$$ExternalSyntheticLambda0
        public final void onProjectionStateChanged(int i, Set set) {
            DeviceIdlenessTracker.this.onProjectionStateChanged(i, set);
        }
    };
    public AlarmManager.OnAlarmListener mIdleAlarmListener = new AlarmManager.OnAlarmListener() { // from class: com.android.server.job.controllers.idle.DeviceIdlenessTracker$$ExternalSyntheticLambda1
        @Override // android.app.AlarmManager.OnAlarmListener
        public final void onAlarm() {
            DeviceIdlenessTracker.this.lambda$new$0();
        }
    };
    public boolean mScreenOn = true;

    static {
        DEBUG = JobSchedulerService.DEBUG || Log.isLoggable("JobScheduler.DeviceIdlenessTracker", 3);
    }

    @Override // com.android.server.job.controllers.idle.IdlenessTracker
    public boolean isIdle() {
        return this.mIdle;
    }

    @Override // com.android.server.job.controllers.idle.IdlenessTracker
    public void startTracking(Context context, IdlenessListener idlenessListener) {
        this.mIdleListener = idlenessListener;
        this.mInactivityIdleThreshold = context.getResources().getInteger(R.integer.config_screenBrightnessForVrSettingMinimum);
        this.mIdleWindowSlop = context.getResources().getInteger(R.integer.config_screenBrightnessForVrSettingMaximum);
        this.mAlarm = (AlarmManager) context.getSystemService("alarm");
        this.mPowerManager = (PowerManager) context.getSystemService(PowerManager.class);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.DREAMING_STARTED");
        intentFilter.addAction("android.intent.action.DREAMING_STOPPED");
        intentFilter.addAction("com.android.server.ACTION_TRIGGER_IDLE");
        intentFilter.addAction("android.intent.action.DOCK_IDLE");
        intentFilter.addAction("android.intent.action.DOCK_ACTIVE");
        context.registerReceiver(this, intentFilter, null, AppSchedulingModuleThread.getHandler());
        ((UiModeManager) context.getSystemService(UiModeManager.class)).addOnProjectionStateChangedListener(-1, AppSchedulingModuleThread.getExecutor(), this.mOnProjectionStateChangedListener);
    }

    public final void onProjectionStateChanged(int i, Set set) {
        boolean z = i != 0;
        if (this.mProjectionActive == z) {
            return;
        }
        if (DEBUG) {
            Slog.v("JobScheduler.DeviceIdlenessTracker", "Projection state changed: " + z);
        }
        this.mProjectionActive = z;
        if (z) {
            cancelIdlenessCheck();
            if (this.mIdle) {
                this.mIdle = false;
                this.mIdleListener.reportNewIdleState(false);
                return;
            }
            return;
        }
        maybeScheduleIdlenessCheck("Projection ended");
    }

    @Override // com.android.server.job.controllers.idle.IdlenessTracker
    public void dump(PrintWriter printWriter) {
        printWriter.print("  mIdle: ");
        printWriter.println(this.mIdle);
        printWriter.print("  mScreenOn: ");
        printWriter.println(this.mScreenOn);
        printWriter.print("  mDockIdle: ");
        printWriter.println(this.mDockIdle);
        printWriter.print("  mProjectionActive: ");
        printWriter.println(this.mProjectionActive);
    }

    @Override // com.android.server.job.controllers.idle.IdlenessTracker
    public void dump(ProtoOutputStream protoOutputStream, long j) {
        long start = protoOutputStream.start(j);
        long start2 = protoOutputStream.start(1146756268033L);
        protoOutputStream.write(1133871366145L, this.mIdle);
        protoOutputStream.write(1133871366146L, this.mScreenOn);
        protoOutputStream.write(1133871366147L, this.mDockIdle);
        protoOutputStream.write(1133871366149L, this.mProjectionActive);
        protoOutputStream.end(start2);
        protoOutputStream.end(start);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0078. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onReceive(android.content.Context r7, android.content.Intent r8) {
        /*
            r6 = this;
            java.lang.String r7 = r8.getAction()
            boolean r8 = com.android.server.job.controllers.idle.DeviceIdlenessTracker.DEBUG
            java.lang.String r0 = "JobScheduler.DeviceIdlenessTracker"
            if (r8 == 0) goto L1e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Received action: "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r1 = r1.toString()
            android.util.Slog.v(r0, r1)
        L1e:
            r7.hashCode()
            int r1 = r7.hashCode()
            java.lang.String r2 = "android.intent.action.DOCK_IDLE"
            r3 = 1
            r4 = 0
            r5 = -1
            switch(r1) {
                case -2128145023: goto L6e;
                case -1454123155: goto L63;
                case -905264325: goto L5a;
                case 244891622: goto L4f;
                case 257757490: goto L44;
                case 1456569541: goto L39;
                case 1689632941: goto L2e;
                default: goto L2d;
            }
        L2d:
            goto L78
        L2e:
            java.lang.String r1 = "android.intent.action.DOCK_ACTIVE"
            boolean r1 = r7.equals(r1)
            if (r1 != 0) goto L37
            goto L78
        L37:
            r5 = 6
            goto L78
        L39:
            java.lang.String r1 = "com.android.server.ACTION_TRIGGER_IDLE"
            boolean r1 = r7.equals(r1)
            if (r1 != 0) goto L42
            goto L78
        L42:
            r5 = 5
            goto L78
        L44:
            java.lang.String r1 = "android.intent.action.DREAMING_STOPPED"
            boolean r1 = r7.equals(r1)
            if (r1 != 0) goto L4d
            goto L78
        L4d:
            r5 = 4
            goto L78
        L4f:
            java.lang.String r1 = "android.intent.action.DREAMING_STARTED"
            boolean r1 = r7.equals(r1)
            if (r1 != 0) goto L58
            goto L78
        L58:
            r5 = 3
            goto L78
        L5a:
            boolean r1 = r7.equals(r2)
            if (r1 != 0) goto L61
            goto L78
        L61:
            r5 = 2
            goto L78
        L63:
            java.lang.String r1 = "android.intent.action.SCREEN_ON"
            boolean r1 = r7.equals(r1)
            if (r1 != 0) goto L6c
            goto L78
        L6c:
            r5 = r3
            goto L78
        L6e:
            java.lang.String r1 = "android.intent.action.SCREEN_OFF"
            boolean r1 = r7.equals(r1)
            if (r1 != 0) goto L77
            goto L78
        L77:
            r5 = r4
        L78:
            switch(r5) {
                case 0: goto La8;
                case 1: goto L8e;
                case 2: goto La8;
                case 3: goto La8;
                case 4: goto L85;
                case 5: goto L81;
                case 6: goto L7c;
                default: goto L7b;
            }
        L7b:
            goto Lbd
        L7c:
            boolean r7 = r6.mScreenOn
            if (r7 != 0) goto L85
            return
        L81:
            r6.lambda$new$0()
            goto Lbd
        L85:
            android.os.PowerManager r7 = r6.mPowerManager
            boolean r7 = r7.isInteractive()
            if (r7 != 0) goto L8e
            return
        L8e:
            r6.mScreenOn = r3
            r6.mDockIdle = r4
            if (r8 == 0) goto L99
            java.lang.String r7 = "exiting idle"
            android.util.Slog.v(r0, r7)
        L99:
            r6.cancelIdlenessCheck()
            boolean r7 = r6.mIdle
            if (r7 == 0) goto Lbd
            r6.mIdle = r4
            com.android.server.job.controllers.idle.IdlenessListener r6 = r6.mIdleListener
            r6.reportNewIdleState(r4)
            goto Lbd
        La8:
            boolean r8 = r7.equals(r2)
            if (r8 == 0) goto Lb6
            boolean r8 = r6.mScreenOn
            if (r8 != 0) goto Lb3
            return
        Lb3:
            r6.mDockIdle = r3
            goto Lba
        Lb6:
            r6.mScreenOn = r4
            r6.mDockIdle = r4
        Lba:
            r6.maybeScheduleIdlenessCheck(r7)
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.job.controllers.idle.DeviceIdlenessTracker.onReceive(android.content.Context, android.content.Intent):void");
    }

    public final void maybeScheduleIdlenessCheck(String str) {
        if ((!this.mScreenOn || this.mDockIdle) && !this.mProjectionActive) {
            long millis = JobSchedulerService.sElapsedRealtimeClock.millis();
            long j = millis + this.mInactivityIdleThreshold;
            if (DEBUG) {
                Slog.v("JobScheduler.DeviceIdlenessTracker", "Scheduling idle : " + str + " now:" + millis + " when=" + j);
            }
            this.mAlarm.setWindow(2, j, this.mIdleWindowSlop, "JS idleness", AppSchedulingModuleThread.getExecutor(), this.mIdleAlarmListener);
        }
    }

    public final void cancelIdlenessCheck() {
        this.mAlarm.cancel(this.mIdleAlarmListener);
    }

    /* renamed from: handleIdleTrigger, reason: merged with bridge method [inline-methods] */
    public final void lambda$new$0() {
        if (!this.mIdle && ((!this.mScreenOn || this.mDockIdle) && !this.mProjectionActive)) {
            if (DEBUG) {
                Slog.v("JobScheduler.DeviceIdlenessTracker", "Idle trigger fired @ " + JobSchedulerService.sElapsedRealtimeClock.millis());
            }
            this.mIdle = true;
            this.mIdleListener.reportNewIdleState(true);
            return;
        }
        if (DEBUG) {
            Slog.v("JobScheduler.DeviceIdlenessTracker", "TRIGGER_IDLE received but not changing state; idle=" + this.mIdle + " screen=" + this.mScreenOn + " projection=" + this.mProjectionActive);
        }
    }
}
