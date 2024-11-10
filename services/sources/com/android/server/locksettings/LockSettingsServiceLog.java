package com.android.server.locksettings;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.format.Time;
import android.util.Log;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes2.dex */
public class LockSettingsServiceLog {
    public static final String SECURITY_LOG_VERSION = Build.VERSION.INCREMENTAL;
    public String BUILD_ID;
    public String EVENT_ID;
    public final Lock F_LOCK;
    public String LOG_FILE;
    public final Context mContext;
    public final Object mFileWriteLock = new Object();
    public LogFileManager[] mLogFile;
    public SaveLssLog saveLssLog;

    public LockSettingsServiceLog(Context context) {
        String str = Build.VERSION.INCREMENTAL;
        this.BUILD_ID = str;
        this.EVENT_ID = str;
        this.saveLssLog = null;
        this.LOG_FILE = null;
        this.F_LOCK = new ReentrantLock();
        this.mLogFile = new LogFileManager[5];
        this.mContext = context;
        init();
    }

    public void init() {
        this.mLogFile[0] = new LogFileManager("Enroll", 7);
        this.mLogFile[1] = new LogFileManager("Verify", 7);
        this.mLogFile[2] = new LogFileManager("KeystoreErr", 7);
        this.mLogFile[3] = new LogFileManager("Restore", 7);
        this.mLogFile[4] = new LogFileManager("Debug", 4);
    }

    public void addLog(int i, String str) {
        if (this.mLogFile[i] == null) {
            Log.e("LockSettingsLog", "mLogFile is null. type = " + i);
            return;
        }
        SaveLssLog saveLssLog = new SaveLssLog(i, str);
        this.saveLssLog = saveLssLog;
        saveLssLog.start();
    }

    public void uploadLogFile(final int i) {
        if (this.mLogFile[i] == null) {
            Log.e("LockSettingsLog", "mLogFile is null. type = " + i);
            return;
        }
        new Thread() { // from class: com.android.server.locksettings.LockSettingsServiceLog.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(2000L);
                } catch (Exception e) {
                    Log.e("LockSettingsLog", "sleep error" + e);
                }
                LockSettingsServiceLog.this.mLogFile[i].prepareUpload();
                LockSettingsServiceLog lockSettingsServiceLog = LockSettingsServiceLog.this;
                lockSettingsServiceLog.LOG_FILE = lockSettingsServiceLog.zipLogFile(i);
                LockSettingsServiceLog.this.mLogFile[i].deleteUploadFile();
                LockSettingsServiceLog.this.sendToDiagmon(i);
            }
        }.start();
    }

    public static String gethashStr(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            return Arrays.toString(Arrays.copyOf(messageDigest.digest(), 5));
        } catch (NoSuchAlgorithmException e) {
            Log.d("LockSettingsLog", "gethashStr() failed. " + e);
            return null;
        }
    }

    public static boolean isShipBuild() {
        return "true".equals(SystemProperties.get("ro.product_ship", "false"));
    }

    public static boolean isDevBuild() {
        String str = Build.TYPE;
        return "eng".equals(str) || "userdebug".equals(str);
    }

    public final String getCurTime() {
        Time time = new Time();
        time.setToNow();
        return time.format("%Y%m%d_%H%M%S");
    }

    public final String makeLogTime() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        return String.format("%02d-%02d %02d:%02d:%02d.%03d ", Integer.valueOf(calendar.get(2) + 1), Integer.valueOf(calendar.get(5)), Integer.valueOf(calendar.get(11)), Integer.valueOf(calendar.get(12)), Integer.valueOf(calendar.get(13)), Integer.valueOf(calendar.get(14)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 8, insn: 0x00e1: MOVE (r3 I:??[OBJECT, ARRAY]) = (r8 I:??[OBJECT, ARRAY]), block:B:101:0x00e1 */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.zip.ZipOutputStream] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.zip.ZipOutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String zipLogFile(int r14) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.locksettings.LockSettingsServiceLog.zipLogFile(int):java.lang.String");
    }

    public final void sendToDiagmon(int i) {
        if (Settings.System.getInt(this.mContext.getContentResolver(), "samsung_errorlog_agree", 0) != 1) {
            Log.i("LockSettingsLog", "sendToDiagmon failed. errorlog_agree is not true!!");
            return;
        }
        if (this.LOG_FILE == null) {
            Log.i("LockSettingsLog", "sendToDiagmon failed. filename is null!!");
            return;
        }
        if (!this.mLogFile[i].hasLogType(1)) {
            Log.i("LockSettingsLog", "sendToDiagmon failed. Cannot upload this log : " + this.mLogFile[i].getErrorCode());
            return;
        }
        if (!isShipBuild() && !isDevBuild()) {
            Log.i("LockSettingsLog", "sendToDiagmon failed. Can upload only ship or dev!");
            return;
        }
        Log.i("LockSettingsLog", "send broadcast intent to diagmon : " + this.LOG_FILE);
        Intent intent = new Intent("com.sec.android.diagmonagent.intent.REPORT_ERROR_V2");
        Bundle bundle = new Bundle();
        intent.addFlags(32);
        try {
            bundle.putBundle("DiagMon", new Bundle());
            bundle.getBundle("DiagMon").putBundle("CFailLogUpload", new Bundle());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").putString("ServiceID", "sp4xkeu9ef");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").putBundle("Ext", new Bundle());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("ClientV", this.BUILD_ID);
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("UiMode", "0");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("ResultCode", this.mLogFile[i].getErrorCode());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("WifiOnlyFeature", "1");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("EventID", this.EVENT_ID);
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("Description", this.mLogFile[i].getErrorCode());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").putBundle("IntentOnly", new Bundle());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("IntentOnly").putString("IntentOnlyMode", "1");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("IntentOnly").putString("Agree", "D");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("IntentOnly").putString("LogPath", this.LOG_FILE);
            intent.putExtra("uploadMO", bundle);
            intent.setFlags(32);
            intent.setPackage("com.sec.android.diagmonagent");
            this.mContext.sendBroadcast(intent);
        } catch (Exception e) {
            Log.e("LockSettingsLog", "Exception while sending a bug report.", e);
        }
        this.LOG_FILE = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x008a, code lost:
    
        if (r4 != null) goto L46;
     */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dump(java.io.PrintWriter r13) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.locksettings.LockSettingsServiceLog.dump(java.io.PrintWriter):void");
    }

    public void writeLog() {
        new Thread() { // from class: com.android.server.locksettings.LockSettingsServiceLog.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Thread.sleep(1000L);
                } catch (Exception e) {
                    Log.e("LockSettingsLog", "sleep error" + e);
                }
                LockSettingsServiceLog.this.showDump();
            }
        }.start();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0080, code lost:
    
        if (r4 != null) goto L43;
     */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void showDump() {
        /*
            Method dump skipped, instructions count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.locksettings.LockSettingsServiceLog.showDump():void");
    }

    public void migrateLssLog() {
        try {
            final String errorCode = this.mLogFile[4].getErrorCode();
            File file = new File("/data/log/");
            if (!file.exists()) {
                Log.e("LockSettingsLog", "No log folder");
                return;
            }
            File[] listFiles = file.listFiles(new FilenameFilter() { // from class: com.android.server.locksettings.LockSettingsServiceLog.3
                @Override // java.io.FilenameFilter
                public boolean accept(File file2, String str) {
                    if (str.startsWith("LockSettingsLog")) {
                        return str.endsWith(".zip") || str.contains(errorCode);
                    }
                    return false;
                }
            });
            if (listFiles == null) {
                Log.e("LockSettingsLog", "No log files");
                return;
            }
            for (File file2 : listFiles) {
                if (file2.exists()) {
                    file2.delete();
                    Log.i("LockSettingsLog", "file : " + file2 + " deleted!");
                }
            }
        } catch (Exception e) {
            Log.e("LockSettingsLog", "delete file error = " + e);
        }
    }

    /* loaded from: classes2.dex */
    public class SaveLssLog extends Thread {
        public String mContents;
        public boolean mIsSaveLssLogDone = false;
        public int mType;

        public SaveLssLog(int i, String str) {
            this.mType = i;
            this.mContents = str;
            if (LockSettingsServiceLog.this.mLogFile[i].hasLogType(2)) {
                Log.i("LockSettingsLog", str);
            }
        }

        public final void writeLockSettingsLog() {
            try {
                if (!LockSettingsServiceLog.this.F_LOCK.tryLock() && !LockSettingsServiceLog.this.F_LOCK.tryLock(1L, TimeUnit.SECONDS)) {
                    Log.d("LockSettingsLog", "maybe dump is in progress!! Cannot written log");
                    return;
                }
                synchronized (LockSettingsServiceLog.this.mFileWriteLock) {
                    try {
                        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(LockSettingsServiceLog.this.mLogFile[this.mType].getLastFileName(), true));
                        bufferedWriter.append((CharSequence) LockSettingsServiceLog.this.makeLogTime());
                        bufferedWriter.append((CharSequence) (this.mContents + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE));
                        bufferedWriter.close();
                    } catch (IOException e) {
                        Log.e("LockSettingsLog", "makefile error" + e);
                    }
                }
                LockSettingsServiceLog.this.F_LOCK.unlock();
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            writeLockSettingsLog();
            this.mIsSaveLssLogDone = true;
        }
    }

    /* loaded from: classes2.dex */
    public class LogFileManager {
        public String mErrorCode;
        public int mLogType;
        public String mLastFileName = null;
        public String mUploadFileName = null;

        public LogFileManager(String str, int i) {
            this.mErrorCode = str;
            this.mLogType = i;
        }

        public String getErrorCode() {
            return this.mErrorCode;
        }

        public boolean hasLogType(int i) {
            return (this.mLogType & i) != 0;
        }

        public String getLastFileName() {
            if (this.mLastFileName == null) {
                this.mLastFileName = "/data/log/LockSettingsLog_" + this.mErrorCode + ".log";
            }
            return this.mLastFileName;
        }

        public String getUploadFileName() {
            return this.mUploadFileName;
        }

        public void prepareUpload() {
            String str = this.mLastFileName;
            if (str != null) {
                this.mUploadFileName = str;
                this.mLastFileName = null;
            }
        }

        public void deleteUploadFile() {
            if (this.mUploadFileName == null) {
                return;
            }
            try {
                File file = new File(this.mUploadFileName);
                if (file.exists() && file.length() > 102400) {
                    Log.i("LockSettingsLog", "delete uploaded Filename = " + this.mUploadFileName + ", FileSize = " + file.length() + " byte");
                    file.delete();
                }
            } catch (Exception e) {
                Log.e("LockSettingsLog", "delete uploaded Filename = " + this.mUploadFileName + ", error = " + e);
            }
            this.mUploadFileName = null;
        }
    }
}
