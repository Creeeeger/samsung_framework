package com.android.server.wm;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.PerfLog;
import android.util.Slog;
import com.android.server.ServiceThread;
import com.android.server.backup.BackupAgentTimeoutParameters;
import java.io.File;

/* loaded from: classes3.dex */
public abstract class SluggishDetector {
    public static long Before_Store_time = -1;
    public static boolean ENABLE = true;
    public static final String TAG = "SluggishDetector";
    public static Context mContext;

    static {
        String simpleName = SluggishDetector.class.getSimpleName();
        if (new File("/proc/kperfmon").isFile()) {
            ENABLE = true;
        } else {
            Slog.d(simpleName, " [SD] kperfmon nonexist");
            ENABLE = false;
        }
        if (ENABLE) {
            SluggishDetectorHandler.init();
            PeriodicStoreOLOG.init();
            try {
                PeriodicStoreOLOG.step();
            } catch (Exception unused) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public final class SluggishDetectorHandler extends Handler {
        public static final String TAG = SluggishDetector.TAG + "_" + SluggishDetectorHandler.class.getSimpleName();
        public static ServiceThread sHandlerThread = null;
        public static SluggishDetectorHandler sHandler = null;
        public static boolean ENABLE_HANDLER = false;

        public static void init() {
            if (SluggishDetector.ENABLE) {
                ServiceThread serviceThread = new ServiceThread(SluggishDetectorHandler.class.getSimpleName(), 10, true);
                sHandlerThread = serviceThread;
                serviceThread.start();
                sHandler = new SluggishDetectorHandler(sHandlerThread.getLooper());
                setEnableWithDelay();
            }
        }

        public static boolean check() {
            return (sHandlerThread == null || sHandler == null) ? false : true;
        }

        public static void sendMessageToHandlerDelayed(int i, long j) {
            if (SluggishDetector.ENABLE) {
                if (!check()) {
                    init();
                }
                sHandler.sendEmptyMessageDelayed(i, j);
            }
        }

        public static void sendDataToHandler(int i, Object obj) {
            if (SluggishDetector.ENABLE && ENABLE_HANDLER && obj != null) {
                if (!check()) {
                    init();
                }
                sHandler.sendMessage(sHandler.obtainMessage(i, obj));
            }
        }

        public SluggishDetectorHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message == null) {
                return;
            }
            try {
                int i = message.what;
                if (i == 1) {
                    Slog.e(TAG, "case MSG_ENABLE_HANDLER");
                    setEnable();
                } else if (i == 21) {
                    storeOLOGDay();
                } else if (i != 22) {
                    switch (i) {
                        case 13:
                            Object obj = message.obj;
                            if (obj != null) {
                                LockContentionInfo lockContentionInfo = new LockContentionInfo(obj.toString());
                                if (lockContentionInfo.checkTime()) {
                                    lockContentionInfo.updateLCD();
                                    sendToInfoForLockContention(lockContentionInfo);
                                    break;
                                }
                            }
                            break;
                    }
                } else {
                    storeOLOGNow();
                }
            } catch (Exception unused) {
            }
        }

        public final void sendToInfoForLockContention(LockContentionInfo lockContentionInfo) {
            lockContentionInfo.LockInfo_Logging();
        }

        public final void storeOLOGDay() {
            removeMessages(21);
            PeriodicStoreOLOG.storeOLOG("/data/log/remaining_olog");
        }

        public final void storeOLOGNow() {
            removeMessages(22);
            PeriodicStoreOLOG.storeOLOG("/data/log/remaining_olog_now");
        }

        public static void setEnable() {
            ENABLE_HANDLER = true;
        }

        public static void setEnableWithDelay() {
            sendMessageToHandlerDelayed(1, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
        }
    }

    /* loaded from: classes3.dex */
    public abstract class PeriodicStoreOLOG {
        public static final String TAG = SluggishDetector.TAG + "_" + PeriodicStoreOLOG.class.getSimpleName();
        public static boolean STORE_FLAG_FOR_ADD = true;
        public static long Origin_OlogLength = 0;
        public static long Diff_OlogLength = 0;

        public static boolean check() {
            return true;
        }

        public static void init() {
            String str = SluggishDetector.TAG;
        }

        public static void step() {
            if (!check()) {
                init();
            }
            makestoreOLOG();
        }

        /* JADX WARN: Removed duplicated region for block: B:64:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:70:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public static boolean storeOLOG(java.lang.String r6) {
            /*
                long r0 = java.lang.System.currentTimeMillis()
                java.lang.System.nanoTime()
                long r2 = com.android.server.wm.SluggishDetector.m13485$$Nest$sfgetBefore_Store_time()
                r4 = 0
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                r3 = 0
                if (r2 <= 0) goto L1f
                long r4 = com.android.server.wm.SluggishDetector.m13485$$Nest$sfgetBefore_Store_time()
                long r0 = r0 - r4
                r4 = 14400000(0xdbba00, double:7.1145453E-317)
                int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                if (r0 >= 0) goto L1f
                return r3
            L1f:
                r0 = 2048(0x800, float:2.87E-42)
                byte[] r0 = new byte[r0]
                java.lang.System.currentTimeMillis()
                java.lang.System.nanoTime()
                java.io.File r1 = new java.io.File
                java.lang.String r2 = "/proc/kperfmon"
                r1.<init>(r2)
                java.io.File r2 = new java.io.File
                r2.<init>(r6)
                r6 = 0
                boolean r4 = r1.isFile()     // Catch: java.lang.Throwable -> L7c java.io.IOException -> L8b java.lang.NumberFormatException -> L94 java.io.FileNotFoundException -> L9d
                if (r4 == 0) goto L70
                java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L7c java.io.IOException -> L8b java.lang.NumberFormatException -> L94 java.io.FileNotFoundException -> L9d
                r4.<init>(r1)     // Catch: java.lang.Throwable -> L7c java.io.IOException -> L8b java.lang.NumberFormatException -> L94 java.io.FileNotFoundException -> L9d
                java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67 java.lang.NumberFormatException -> L6a java.io.FileNotFoundException -> L6d
                r1.<init>(r2)     // Catch: java.lang.Throwable -> L64 java.io.IOException -> L67 java.lang.NumberFormatException -> L6a java.io.FileNotFoundException -> L6d
            L46:
                int r6 = r4.read(r0)     // Catch: java.lang.Throwable -> L62 java.io.IOException -> L68 java.lang.NumberFormatException -> L6b java.io.FileNotFoundException -> L6e
                if (r6 <= 0) goto L50
                r1.write(r0, r3, r6)     // Catch: java.lang.Throwable -> L62 java.io.IOException -> L68 java.lang.NumberFormatException -> L6b java.io.FileNotFoundException -> L6e
                goto L46
            L50:
                r4.close()     // Catch: java.lang.Throwable -> L62 java.io.IOException -> L68 java.lang.NumberFormatException -> L6b java.io.FileNotFoundException -> L6e
                r1.close()     // Catch: java.lang.Throwable -> L62 java.io.IOException -> L68 java.lang.NumberFormatException -> L6b java.io.FileNotFoundException -> L6e
                long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L62 java.io.IOException -> L68 java.lang.NumberFormatException -> L6b java.io.FileNotFoundException -> L6e
                java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L62 java.io.IOException -> L68 java.lang.NumberFormatException -> L6b java.io.FileNotFoundException -> L6e
                com.android.server.wm.SluggishDetector.m13488$$Nest$sfputBefore_Store_time(r2)     // Catch: java.lang.Throwable -> L62 java.io.IOException -> L68 java.lang.NumberFormatException -> L6b java.io.FileNotFoundException -> L6e
                r6 = r4
                goto L71
            L62:
                r6 = move-exception
                goto L80
            L64:
                r0 = move-exception
                r1 = r6
                goto L7f
            L67:
                r1 = r6
            L68:
                r6 = r4
                goto L8c
            L6a:
                r1 = r6
            L6b:
                r6 = r4
                goto L95
            L6d:
                r1 = r6
            L6e:
                r6 = r4
                goto L9e
            L70:
                r1 = r6
            L71:
                if (r6 == 0) goto L76
                r6.close()     // Catch: java.io.IOException -> L76
            L76:
                if (r1 == 0) goto La6
            L78:
                r1.close()     // Catch: java.io.IOException -> La6
                goto La6
            L7c:
                r0 = move-exception
                r1 = r6
                r4 = r1
            L7f:
                r6 = r0
            L80:
                if (r4 == 0) goto L85
                r4.close()     // Catch: java.io.IOException -> L85
            L85:
                if (r1 == 0) goto L8a
                r1.close()     // Catch: java.io.IOException -> L8a
            L8a:
                throw r6
            L8b:
                r1 = r6
            L8c:
                if (r6 == 0) goto L91
                r6.close()     // Catch: java.io.IOException -> L91
            L91:
                if (r1 == 0) goto La6
                goto L78
            L94:
                r1 = r6
            L95:
                if (r6 == 0) goto L9a
                r6.close()     // Catch: java.io.IOException -> L9a
            L9a:
                if (r1 == 0) goto La6
                goto L78
            L9d:
                r1 = r6
            L9e:
                if (r6 == 0) goto La3
                r6.close()     // Catch: java.io.IOException -> La3
            La3:
                if (r1 == 0) goto La6
                goto L78
            La6:
                r6 = 1
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.wm.SluggishDetector.PeriodicStoreOLOG.storeOLOG(java.lang.String):boolean");
        }

        public static void makestoreOLOG() {
            sendPeriodicReportToHandler();
            clear();
        }

        public static void sendPeriodicReportToHandler() {
            SluggishDetectorHandler.sendMessageToHandlerDelayed(21, BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
        }

        public static void clear() {
            if (check()) {
                return;
            }
            init();
        }
    }

    /* loaded from: classes3.dex */
    public final class LockContentionInfo {
        public static final String TAG = SluggishDetector.TAG + "_" + LockContentionInfo.class.getSimpleName();
        public static long prevTime = -1;
        public int LcdOnValue;
        public int mOwnerFileLine;
        public String mOwnerFileName;
        public String mOwnerMethod;
        public String mThreadName;
        public int mWaitTime;

        public final void LockInfo_Logging() {
        }

        public LockContentionInfo(String str) {
            String[] split = str.split("/");
            this.mThreadName = split[0];
            this.mWaitTime = Integer.parseInt(split[1]);
            this.mOwnerFileName = split[2];
            this.mOwnerFileLine = Integer.parseInt(split[3]);
            this.mOwnerMethod = split[4];
            this.LcdOnValue = -1;
        }

        public boolean checkTime() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = prevTime;
            if (j != -1 && (elapsedRealtime - j) / 1000 < 5) {
                return false;
            }
            prevTime = elapsedRealtime;
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4, types: [int] */
        /* JADX WARN: Type inference failed for: r0v6 */
        public void updateLCD() {
            PowerManager powerManager = (PowerManager) SluggishDetector.mContext.getSystemService("power");
            this.LcdOnValue = powerManager != null ? powerManager.isInteractive() : -99;
        }

        public String toString() {
            return "\"SDVR\":\"1.2.0\",\"THNM\":\"" + this.mThreadName + "\",\"OMTD\":\"" + this.mOwnerMethod + "\",\"OFNM\":\"" + this.mOwnerFileName + "\",\"OFLN\":\"" + this.mOwnerFileLine + "\",\"WTTM\":\"" + this.mWaitTime + "\",\"LCDV\":\"" + this.LcdOnValue + "\"";
        }
    }

    public static void setLockContentionInfo(short s, String str) {
        if (ENABLE) {
            try {
                SluggishDetectorHandler.sendDataToHandler(13, str);
                PerfLog.d(14, s, str);
                PeriodicStoreOLOG.step();
            } catch (Exception unused) {
            }
        }
    }
}
