package com.android.server.am;

import android.app.IInstrumentationWatcher;
import android.content.ComponentName;
import android.os.Binder;
import android.os.Bundle;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class InstrumentationReporter {
    public final Object mLock = new Object();
    public ArrayList mPendingReports;
    public Thread mThread;

    /* loaded from: classes.dex */
    public final class MyThread extends Thread {
        public MyThread() {
            super("InstrumentationReporter");
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x001b, code lost:
        
            r1 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0020, code lost:
        
            if (r1 >= r4.size()) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0022, code lost:
        
            r2 = (com.android.server.am.InstrumentationReporter.Report) r4.get(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x002a, code lost:
        
            if (r2.mType != 0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x002c, code lost:
        
            r2.mWatcher.instrumentationStatus(r2.mName, r2.mResultCode, r2.mResults);
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0038, code lost:
        
            r2.mWatcher.instrumentationFinished(r2.mName, r2.mResultCode, r2.mResults);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x0044, code lost:
        
            android.util.Slog.i("ActivityManager", "Failure reporting to instrumentation watcher: comp=" + r2.mName + " results=" + r2.mResults);
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x006b, code lost:
        
            r8.this$0.mLock.wait(10000);
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                r8 = this;
                r0 = 0
                android.os.Process.setThreadPriority(r0)
            L4:
                r1 = r0
            L5:
                com.android.server.am.InstrumentationReporter r2 = com.android.server.am.InstrumentationReporter.this
                java.lang.Object r2 = r2.mLock
                monitor-enter(r2)
                com.android.server.am.InstrumentationReporter r3 = com.android.server.am.InstrumentationReporter.this     // Catch: java.lang.Throwable -> L7d
                java.util.ArrayList r4 = r3.mPendingReports     // Catch: java.lang.Throwable -> L7d
                r5 = 0
                r3.mPendingReports = r5     // Catch: java.lang.Throwable -> L7d
                if (r4 == 0) goto L69
                boolean r3 = r4.isEmpty()     // Catch: java.lang.Throwable -> L7d
                if (r3 == 0) goto L1a
                goto L69
            L1a:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7d
                r1 = r0
            L1c:
                int r2 = r4.size()
                if (r1 >= r2) goto L4
                java.lang.Object r2 = r4.get(r1)
                com.android.server.am.InstrumentationReporter$Report r2 = (com.android.server.am.InstrumentationReporter.Report) r2
                int r3 = r2.mType     // Catch: android.os.RemoteException -> L44
                if (r3 != 0) goto L38
                android.app.IInstrumentationWatcher r3 = r2.mWatcher     // Catch: android.os.RemoteException -> L44
                android.content.ComponentName r5 = r2.mName     // Catch: android.os.RemoteException -> L44
                int r6 = r2.mResultCode     // Catch: android.os.RemoteException -> L44
                android.os.Bundle r7 = r2.mResults     // Catch: android.os.RemoteException -> L44
                r3.instrumentationStatus(r5, r6, r7)     // Catch: android.os.RemoteException -> L44
                goto L66
            L38:
                android.app.IInstrumentationWatcher r3 = r2.mWatcher     // Catch: android.os.RemoteException -> L44
                android.content.ComponentName r5 = r2.mName     // Catch: android.os.RemoteException -> L44
                int r6 = r2.mResultCode     // Catch: android.os.RemoteException -> L44
                android.os.Bundle r7 = r2.mResults     // Catch: android.os.RemoteException -> L44
                r3.instrumentationFinished(r5, r6, r7)     // Catch: android.os.RemoteException -> L44
                goto L66
            L44:
                java.lang.String r3 = "ActivityManager"
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r6 = "Failure reporting to instrumentation watcher: comp="
                r5.append(r6)
                android.content.ComponentName r6 = r2.mName
                r5.append(r6)
                java.lang.String r6 = " results="
                r5.append(r6)
                android.os.Bundle r2 = r2.mResults
                r5.append(r2)
                java.lang.String r2 = r5.toString()
                android.util.Slog.i(r3, r2)
            L66:
                int r1 = r1 + 1
                goto L1c
            L69:
                if (r1 != 0) goto L77
                com.android.server.am.InstrumentationReporter r1 = com.android.server.am.InstrumentationReporter.this     // Catch: java.lang.InterruptedException -> L74 java.lang.Throwable -> L7d
                java.lang.Object r1 = r1.mLock     // Catch: java.lang.InterruptedException -> L74 java.lang.Throwable -> L7d
                r3 = 10000(0x2710, double:4.9407E-320)
                r1.wait(r3)     // Catch: java.lang.InterruptedException -> L74 java.lang.Throwable -> L7d
            L74:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7d
                r1 = 1
                goto L5
            L77:
                com.android.server.am.InstrumentationReporter r8 = com.android.server.am.InstrumentationReporter.this     // Catch: java.lang.Throwable -> L7d
                r8.mThread = r5     // Catch: java.lang.Throwable -> L7d
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7d
                return
            L7d:
                r8 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7d
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.am.InstrumentationReporter.MyThread.run():void");
        }
    }

    /* loaded from: classes.dex */
    public final class Report {
        public final ComponentName mName;
        public final int mResultCode;
        public final Bundle mResults;
        public final int mType;
        public final IInstrumentationWatcher mWatcher;

        public Report(int i, IInstrumentationWatcher iInstrumentationWatcher, ComponentName componentName, int i2, Bundle bundle) {
            this.mType = i;
            this.mWatcher = iInstrumentationWatcher;
            this.mName = componentName;
            this.mResultCode = i2;
            this.mResults = bundle;
            Binder.allowBlocking(iInstrumentationWatcher.asBinder());
        }
    }

    public void reportStatus(IInstrumentationWatcher iInstrumentationWatcher, ComponentName componentName, int i, Bundle bundle) {
        report(new Report(0, iInstrumentationWatcher, componentName, i, bundle));
    }

    public void reportFinished(IInstrumentationWatcher iInstrumentationWatcher, ComponentName componentName, int i, Bundle bundle) {
        report(new Report(1, iInstrumentationWatcher, componentName, i, bundle));
    }

    public final void report(Report report) {
        synchronized (this.mLock) {
            if (this.mThread == null) {
                MyThread myThread = new MyThread();
                this.mThread = myThread;
                myThread.start();
            }
            if (this.mPendingReports == null) {
                this.mPendingReports = new ArrayList();
            }
            this.mPendingReports.add(report);
            this.mLock.notifyAll();
        }
    }
}
