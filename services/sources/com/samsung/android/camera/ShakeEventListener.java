package com.samsung.android.camera;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Pair;
import android.util.Slog;
import com.samsung.android.camera.Logger;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ShakeEventListener extends BroadcastReceiver implements SensorEventListener {
    public final AlarmManager mAlarmManager;
    public final CameraServiceWorker mCameraServiceWorker;
    public final Context mContext;
    public final Handler mHandler;
    public PendingIntent mPendingIntent;
    public final SensorManager mSensorManager;
    public final Sensor mShakeDetector;
    public final PowerManager.WakeLock mWakeLock;
    public final Object mLock = new Object();
    public final List mDailyLog = new ArrayList();
    public boolean mEnabled = false;
    public boolean mInCall = false;
    public boolean mShakeDetected = false;
    public boolean mApplied = false;
    public long mShakeCount = 0;
    public long mAccumulatedShakeTime = 0;
    public long mShakeStartTime = 0;
    public String mLastEventMessage = "No event.";
    public final Runnable mShakeOffRunnable = new Runnable() { // from class: com.samsung.android.camera.ShakeEventListener.1
        @Override // java.lang.Runnable
        public void run() {
            if (ShakeEventListener.this.isSupported()) {
                Slog.w("ShakeEventListener", "Force shake off, possible sensor crash");
                Logger.log(Logger.ID.SHAKE_EVENT_LISTENER, "Force shake off, possible sensor crash");
                ShakeEventListener.this.onSensorChanged(new SensorEvent(ShakeEventListener.this.mShakeDetector, 0, 0L, new float[]{2.0f}));
            }
        }
    };

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public ShakeEventListener(CameraServiceWorker cameraServiceWorker, Context context, Handler handler) {
        this.mPendingIntent = null;
        this.mCameraServiceWorker = cameraServiceWorker;
        this.mContext = context;
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.mSensorManager = sensorManager;
        this.mShakeDetector = sensorManager.getDefaultSensor(65612, true);
        this.mWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "ShakeEventListener");
        this.mAlarmManager = (AlarmManager) context.getSystemService("alarm");
        this.mHandler = handler;
        this.mPendingIntent = PendingIntent.getBroadcast(context, 0, new Intent("com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"), 67108864);
    }

    @Override // android.hardware.SensorEventListener
    public synchronized void onSensorChanged(SensorEvent sensorEvent) {
        if (sensorEvent.sensor.getType() == 65612) {
            int i = (int) sensorEvent.values[0];
            if (i == 1) {
                this.mShakeDetected = true;
                handleShakeEventChanged();
                this.mHandler.removeCallbacks(this.mShakeOffRunnable);
                this.mHandler.postDelayed(this.mShakeOffRunnable, TimeUnit.SECONDS.toMillis(10L));
            } else if (i == 2) {
                this.mShakeDetected = false;
                handleShakeEventChanged();
                this.mHandler.removeCallbacks(this.mShakeOffRunnable);
            } else {
                Slog.w("ShakeEventListener", "Unknown shake event. ignore");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0046 A[Catch: all -> 0x0080, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x0009, B:19:0x0034, B:21:0x0038, B:22:0x0046, B:29:0x006b, B:31:0x006f, B:32:0x0075, B:34:0x0079, B:35:0x001a, B:38:0x0024), top: B:2:0x0001 }] */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void onReceive(android.content.Context r5, android.content.Intent r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.lang.String r5 = r6.getAction()     // Catch: java.lang.Throwable -> L80
            if (r5 != 0) goto L9
            monitor-exit(r4)
            return
        L9:
            int r0 = r5.hashCode()     // Catch: java.lang.Throwable -> L80
            r1 = -1966727609(0xffffffff8ac61e47, float:-1.9078096E-32)
            r2 = 0
            r3 = 1
            if (r0 == r1) goto L24
            r1 = 154725547(0x938ecab, float:2.2259475E-33)
            if (r0 == r1) goto L1a
            goto L2e
        L1a:
            java.lang.String r0 = "com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING"
            boolean r5 = r5.equals(r0)     // Catch: java.lang.Throwable -> L80
            if (r5 == 0) goto L2e
            r5 = r3
            goto L2f
        L24:
            java.lang.String r0 = "android.samsung.media.action.AUDIO_MODE"
            boolean r5 = r5.equals(r0)     // Catch: java.lang.Throwable -> L80
            if (r5 == 0) goto L2e
            r5 = r2
            goto L2f
        L2e:
            r5 = -1
        L2f:
            if (r5 == 0) goto L46
            if (r5 == r3) goto L34
            goto L7e
        L34:
            boolean r5 = r4.mEnabled     // Catch: java.lang.Throwable -> L80
            if (r5 == 0) goto L7e
            java.lang.String r5 = "ShakeEventListener"
            java.lang.String r6 = "Time to log proxy activity."
            android.util.Slog.i(r5, r6)     // Catch: java.lang.Throwable -> L80
            r4.dumpDMALog()     // Catch: java.lang.Throwable -> L80
            r4.scheduleLogging()     // Catch: java.lang.Throwable -> L80
            goto L7e
        L46:
            java.lang.String r5 = "android.samsung.media.extra.AUDIO_MODE"
            int r5 = r6.getIntExtra(r5, r2)     // Catch: java.lang.Throwable -> L80
            java.lang.String r6 = "ShakeEventListener"
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L80
            r0.<init>()     // Catch: java.lang.Throwable -> L80
            java.lang.String r1 = "Audio mode changed: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L80
            r0.append(r5)     // Catch: java.lang.Throwable -> L80
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L80
            android.util.Slog.d(r6, r0)     // Catch: java.lang.Throwable -> L80
            if (r5 == 0) goto L75
            r6 = 2
            if (r5 == r6) goto L6b
            r6 = 3
            if (r5 == r6) goto L6b
            goto L7e
        L6b:
            boolean r5 = r4.mInCall     // Catch: java.lang.Throwable -> L80
            if (r5 != 0) goto L7e
            r4.mInCall = r3     // Catch: java.lang.Throwable -> L80
            r4.handleShakeEventChanged()     // Catch: java.lang.Throwable -> L80
            goto L7e
        L75:
            boolean r5 = r4.mInCall     // Catch: java.lang.Throwable -> L80
            if (r5 == 0) goto L7e
            r4.mInCall = r2     // Catch: java.lang.Throwable -> L80
            r4.handleShakeEventChanged()     // Catch: java.lang.Throwable -> L80
        L7e:
            monitor-exit(r4)
            return
        L80:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.camera.ShakeEventListener.onReceive(android.content.Context, android.content.Intent):void");
    }

    public synchronized boolean isSupported() {
        return false;
    }

    public synchronized void start() {
        if (!this.mEnabled && isSupported()) {
            this.mSensorManager.registerListener(this, this.mShakeDetector, 3, this.mHandler);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.samsung.media.action.AUDIO_MODE");
            intentFilter.addAction("com.samsung.android.intent.ACTION_CAMERA_SERVICE_WORKER_LOGGING");
            this.mContext.registerReceiver(this, intentFilter, null, this.mHandler);
            scheduleLogging();
            this.mEnabled = true;
        }
    }

    public final synchronized void scheduleLogging() {
        this.mAlarmManager.setExactAndAllowWhileIdle(2, SystemClock.elapsedRealtime() + TimeUnit.DAYS.toMillis(1L), this.mPendingIntent);
    }

    public final synchronized void dumpDMALog() {
        if (this.mCameraServiceWorker.isEnableSurveyMode()) {
            this.mCameraServiceWorker.insertDMALog("0125", null, Long.valueOf(this.mShakeCount));
            this.mCameraServiceWorker.insertDMALog("0124", null, Long.valueOf(this.mAccumulatedShakeTime));
        }
        Logger.log(Logger.ID.SHAKE_EVENT_LISTENER, String.format("Reset and dump, count(%d), duration(%d)", Long.valueOf(this.mShakeCount), Long.valueOf(this.mAccumulatedShakeTime)));
        this.mDailyLog.add(new Pair(Long.valueOf(this.mShakeCount), Long.valueOf(this.mAccumulatedShakeTime)));
        if (this.mDailyLog.size() > 10) {
            this.mDailyLog.remove(0);
        }
        this.mShakeCount = 0L;
        this.mAccumulatedShakeTime = 0L;
    }

    public final void handleShakeEventChanged() {
        String format;
        synchronized (this.mLock) {
            boolean z = this.mEnabled && !this.mInCall && this.mShakeDetected;
            String format2 = String.format("Shake event changed now(%b) -> next(%b), enable(%b) call(%b) shake(%b)", Boolean.valueOf(this.mApplied), Boolean.valueOf(z), Boolean.valueOf(this.mEnabled), Boolean.valueOf(this.mInCall), Boolean.valueOf(this.mShakeDetected));
            Slog.w("ShakeEventListener", format2);
            Logger.ID id = Logger.ID.SHAKE_EVENT_LISTENER;
            Logger.log(id, format2);
            if (this.mApplied != z) {
                this.mApplied = z;
                if (z) {
                    if (!this.mWakeLock.isHeld()) {
                        this.mWakeLock.acquire();
                        Slog.w("ShakeEventListener", "wakelock acquired");
                        Logger.log(id, "wakelock acquired");
                    }
                    Pair notifyDeviceChangeLocked = this.mCameraServiceWorker.notifyDeviceChangeLocked(12884901888L, true);
                    format = String.format("ON: %s", notifyDeviceChangeLocked.second);
                    Slog.w("ShakeEventListener", format);
                    Logger.log(id, format);
                    if (((Boolean) notifyDeviceChangeLocked.first).booleanValue() && !this.mCameraServiceWorker.isCameraOpened()) {
                        this.mShakeCount++;
                        this.mShakeStartTime = SystemClock.elapsedRealtime();
                    } else {
                        Logger.log(id, String.format("Logging Skipped, event(%b) camera open(%b)", notifyDeviceChangeLocked.first, Boolean.valueOf(this.mCameraServiceWorker.isCameraOpened())));
                        this.mShakeStartTime = 0L;
                    }
                } else {
                    format = String.format("OFF: %s", this.mCameraServiceWorker.notifyDeviceChangeLocked(4294967296L, true).second);
                    Slog.w("ShakeEventListener", format);
                    Logger.log(id, format);
                    if (this.mShakeStartTime != 0) {
                        long elapsedRealtime = SystemClock.elapsedRealtime() - this.mShakeStartTime;
                        this.mAccumulatedShakeTime += elapsedRealtime;
                        Logger.log(id, String.format("Duration: %d ms", Long.valueOf(elapsedRealtime)));
                    }
                    this.mShakeStartTime = 0L;
                    if (this.mWakeLock.isHeld()) {
                        this.mWakeLock.release();
                        Slog.w("ShakeEventListener", "wakelock released");
                        Logger.log(id, "wakelock released");
                    }
                }
                this.mLastEventMessage = format;
            }
        }
    }

    public synchronized void dump(PrintWriter printWriter) {
        synchronized (this.mLock) {
            printWriter.println("\n\tShake EventListener: " + isSupported());
            printWriter.println("\tLast event: " + this.mLastEventMessage);
            if (isSupported()) {
                printWriter.println("\n\tDump of ShakeEventListener Activity");
                printWriter.println("\t\tTotal # of shake detection (since update): " + this.mShakeCount);
                printWriter.println("\t\tAccumulated shake power on duration (since update): " + this.mAccumulatedShakeTime);
                printWriter.println("\t\tDaily accumulated (old first):");
                for (Pair pair : this.mDailyLog) {
                    printWriter.println(String.format("\t\t\tcount(%d), duration(%d)", pair.first, pair.second));
                }
            }
            Logger.dumpLog(Logger.ID.SHAKE_EVENT_LISTENER, printWriter);
        }
    }
}
