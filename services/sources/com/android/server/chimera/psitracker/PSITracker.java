package com.android.server.chimera.psitracker;

import android.app.AlarmManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.android.server.backup.BackupManagerConstants;
import com.android.server.chimera.SystemEventListener;
import com.android.server.chimera.SystemRepository;
import java.io.PrintWriter;
import java.util.Calendar;

/* loaded from: classes.dex */
public class PSITracker implements SystemEventListener.TimeOrTimeZoneChangedListener {
    public static boolean DEBUG = true;
    public static boolean mFirstTriggeredAfterBooting = false;
    public PSIDBManager db;
    public final AlarmManager.OnAlarmListener mAvailMemRecord240AlarmListener = new AlarmManager.OnAlarmListener() { // from class: com.android.server.chimera.psitracker.PSITracker.1
        @Override // android.app.AlarmManager.OnAlarmListener
        public void onAlarm() {
            PSITracker.this.scheduleAvailMem240PeriodRecord("240 Alarm fired");
            PSITracker.this.mHandler.sendMessage(PSITracker.this.mHandler.obtainMessage(1));
        }
    };
    public PSITrackerCollector mCollector;
    public Context mContext;
    public PSITrackerHandler mHandler;
    public SystemRepository mSystemRepository;

    public static boolean isSystemApp(int i) {
        if (i < 10000) {
            return ((i >= 5000 && i <= 5999) || i == 1200 || i == 1201) ? false : true;
        }
        return false;
    }

    public PSITracker(SystemRepository systemRepository, Context context, Looper looper) {
        this.mSystemRepository = systemRepository;
        this.mContext = context;
        this.mCollector = new PSITrackerCollector(this.mContext);
        PSIDBManager.init(this.mContext);
        this.mHandler = new PSITrackerHandler(looper);
    }

    public void scheduleAvailMem240PeriodRecord(String str) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        long currentTimeMillis = System.currentTimeMillis();
        calendar.setTimeInMillis(System.currentTimeMillis() + BackupManagerConstants.DEFAULT_KEY_VALUE_BACKUP_INTERVAL_MILLISECONDS);
        Log.d("PSITracker", "Schedule next trigger time interval: 4 /now Time: " + currentTimeMillis);
        Log.d("PSITracker", "Schedule next trigger time: " + calendar.getTimeInMillis() + " reason = " + str);
        AlarmManager alarmManager = (AlarmManager) this.mContext.getSystemService("alarm");
        alarmManager.cancel(this.mAvailMemRecord240AlarmListener);
        alarmManager.set(1, calendar.getTimeInMillis(), "RecordAvailMem240", this.mAvailMemRecord240AlarmListener, this.mHandler);
    }

    public final void recordAvailableMemValue(long j, long j2, long j3) {
        PSIAvailableMemRecord generateAvailableMemRecord = this.mCollector.generateAvailableMemRecord(j, j2, j3, System.currentTimeMillis());
        if (generateAvailableMemRecord != null) {
            this.mCollector.saveAvailableMemRecord(generateAvailableMemRecord);
        }
        if (this.mCollector.isAvailableMemRecordsSizeMax()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(2));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void record240MinutesAvailMem() {
        /*
            r13 = this;
            com.android.server.chimera.SystemRepository r0 = r13.mSystemRepository
            android.app.ActivityManager$MemoryInfo r0 = r0.getMemoryInfo()
            r1 = 0
            com.android.server.chimera.SystemRepository r3 = r13.mSystemRepository     // Catch: java.lang.Exception -> L43
            java.util.List r3 = r3.getRunningAppProcesses()     // Catch: java.lang.Exception -> L43
            java.util.Iterator r3 = r3.iterator()     // Catch: java.lang.Exception -> L43
            r4 = r1
        L13:
            boolean r6 = r3.hasNext()     // Catch: java.lang.Exception -> L41
            if (r6 == 0) goto L48
            java.lang.Object r6 = r3.next()     // Catch: java.lang.Exception -> L41
            com.android.server.chimera.SystemRepository$RunningAppProcessInfo r6 = (com.android.server.chimera.SystemRepository.RunningAppProcessInfo) r6     // Catch: java.lang.Exception -> L41
            int r7 = r6.importance     // Catch: java.lang.Exception -> L41
            r8 = 400(0x190, float:5.6E-43)
            if (r7 < r8) goto L2f
            com.android.server.chimera.SystemRepository r7 = r13.mSystemRepository     // Catch: java.lang.Exception -> L41
            int r6 = r6.pid     // Catch: java.lang.Exception -> L41
            long r6 = r7.getMemmoryOfPid(r6)     // Catch: java.lang.Exception -> L41
            long r1 = r1 + r6
            goto L13
        L2f:
            int r7 = r6.uid     // Catch: java.lang.Exception -> L41
            boolean r7 = isSystemApp(r7)     // Catch: java.lang.Exception -> L41
            if (r7 != 0) goto L13
            com.android.server.chimera.SystemRepository r7 = r13.mSystemRepository     // Catch: java.lang.Exception -> L41
            int r6 = r6.pid     // Catch: java.lang.Exception -> L41
            long r6 = r7.getMemmoryOfPid(r6)     // Catch: java.lang.Exception -> L41
            long r4 = r4 + r6
            goto L13
        L41:
            r3 = move-exception
            goto L45
        L43:
            r3 = move-exception
            r4 = r1
        L45:
            r3.printStackTrace()
        L48:
            r11 = r1
            r9 = r4
            long r1 = r0.availMem
            r3 = 1024(0x400, double:5.06E-321)
            long r7 = r1 / r3
            boolean r1 = com.android.server.chimera.psitracker.PSITracker.DEBUG
            if (r1 == 0) goto L84
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = " getAvailable memInfo.totalMem = "
            r1.append(r2)
            long r2 = r0.totalMem
            r1.append(r2)
            java.lang.String r0 = "  available = "
            r1.append(r0)
            r1.append(r7)
            java.lang.String r0 = " runningSize = "
            r1.append(r0)
            r1.append(r9)
            java.lang.String r0 = " cachedSize = "
            r1.append(r0)
            r1.append(r11)
            java.lang.String r0 = r1.toString()
            java.lang.String r1 = "PSITracker"
            android.util.Log.d(r1, r0)
        L84:
            r6 = r13
            r6.recordAvailableMemValue(r7, r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.chimera.psitracker.PSITracker.record240MinutesAvailMem():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00e4, code lost:
    
        if (r2 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f2, code lost:
    
        r0 = new java.util.ArrayList();
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00fc, code lost:
    
        if (r1 >= r5.size()) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00fe, code lost:
    
        r0.add(new com.samsung.android.chimera.PSIAvailableMem(((java.lang.Long) r6.get(r1)).longValue(), ((java.lang.Long) r7.get(r1)).longValue(), ((java.lang.Long) r8.get(r1)).longValue(), ((java.lang.Long) r9.get(r1)).longValue()));
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0132, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ef, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ed, code lost:
    
        if (r2 == null) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.List getAvailableMemInfo(long r20, long r22) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.chimera.psitracker.PSITracker.getAvailableMemInfo(long, long):java.util.List");
    }

    @Override // com.android.server.chimera.SystemEventListener.TimeOrTimeZoneChangedListener
    public void onTimeOrTimeZoneChanged(String str) {
        if (DEBUG) {
            this.mSystemRepository.log("PSITracker", "onTimeOrTimeZoneChanged() action: " + str);
        }
        scheduleAvailMem240PeriodRecord("TIME_CHANGED");
    }

    /* loaded from: classes.dex */
    public class PSITrackerHandler extends Handler {
        public PSITrackerHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                PSITracker.this.record240MinutesAvailMem();
            } else if (i == 2 && PSITracker.this.mCollector != null) {
                PSITracker.this.mCollector.saveAvailableMemRecords();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00df, code lost:
    
        if (r13 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ed, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00f2, code lost:
    
        if (r10 >= r0.size()) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00f4, code lost:
    
        r11.println("AvailMem ID : " + r0.get(r10) + "Availmem : " + r1.get(r10) + ", running : " + r2.get(r10) + ", cached : " + r3.get(r10) + ", checkTime : " + r4.get(r10));
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x013f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ea, code lost:
    
        r13.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e8, code lost:
    
        if (r13 == null) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void getPSIValueListDump(java.io.PrintWriter r11, long r12, long r14) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.chimera.psitracker.PSITracker.getPSIValueListDump(java.io.PrintWriter, long, long):void");
    }

    public void dumpInfo(PrintWriter printWriter, String[] strArr) {
        if (strArr.length == 3) {
            String str = strArr[1];
            String str2 = strArr[2];
            if ("0".equals(str) || "0".equals(str2)) {
                getPSIValueListDump(printWriter, 0L, 0L);
                return;
            }
            try {
                getPSIValueListDump(printWriter, Long.parseLong(str), Long.parseLong(str2));
                return;
            } catch (NumberFormatException unused) {
                getPSIValueListDump(printWriter, 0L, 0L);
                return;
            }
        }
        getPSIValueListDump(printWriter, 0L, 0L);
    }
}
