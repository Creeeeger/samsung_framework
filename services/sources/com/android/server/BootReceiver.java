package com.android.server;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.DropBoxManager;
import android.os.Environment;
import android.os.FileUtils;
import android.os.IInstalld;
import android.os.MessageQueue;
import android.os.ParcelFileDescriptor;
import android.os.SemHqmManager;
import android.os.SystemProperties;
import android.provider.Downloads;
import android.provider.Settings;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.AtomicFile;
import android.util.EventLog;
import android.util.Pair;
import android.util.Slog;
import android.util.Xml;
import android.util.proto.ProtoOutputStream;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.util.FrameworkStatsLog;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.am.DropboxRateLimiter;
import com.android.server.backup.BackupAgentTimeoutParameters;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.InvocationTargetException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.attribute.PosixFilePermissions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public class BootReceiver extends BroadcastReceiver {
    public static final int LASTK_LOG_SIZE;
    public static final String[] LAST_KMSG_FILES;
    public static final int LOG_SIZE;
    public static final String[] MOUNT_DURATION_PROPS_POSTFIX;
    public static final File TOMBSTONE_TMP_DIR;
    public static final File lastHeaderFile;
    public static String logFileKernel;
    public static boolean proc_rr_read_done;
    public static String proc_rr_value;
    public static final DropboxRateLimiter sDropboxRateLimiter;
    public static final AtomicFile sFile;
    public static int sSentReports;
    public static String storeExtraInfo;
    public static boolean store_lastkmsg_read_done;
    public static int store_lastkmsg_val;
    public int reset = -1;
    public String EVENT_ID = Build.VERSION.INCREMENTAL;
    public String RESULT_CODE = null;
    public String LOG_FILE = null;
    public boolean isRescueParty = false;
    public SaveLastkmsg saveLastkmsg = null;
    public SemHqmManager mSemHqmManager = null;
    public UUID uniqueID = null;
    public AudioManager mAudioManager = null;

    static {
        LOG_SIZE = SystemProperties.getInt("ro.debuggable", 0) == 1 ? 98304 : 65536;
        LASTK_LOG_SIZE = SystemProperties.getInt("ro.debuggable", 0) == 1 ? 196608 : 65536;
        TOMBSTONE_TMP_DIR = new File("/data/tombstones");
        sFile = new AtomicFile(new File(Environment.getDataSystemDirectory(), "log-files.xml"), "log-files");
        lastHeaderFile = new File(Environment.getDataSystemDirectory(), "last-header.txt");
        MOUNT_DURATION_PROPS_POSTFIX = new String[]{"early", "default", "late"};
        LAST_KMSG_FILES = new String[]{"/sys/fs/pstore/console-ramoops", "/proc/last_kmsg"};
        sSentReports = 0;
        storeExtraInfo = "";
        logFileKernel = "";
        store_lastkmsg_read_done = false;
        store_lastkmsg_val = -1;
        proc_rr_read_done = false;
        proc_rr_value = null;
        sDropboxRateLimiter = new DropboxRateLimiter();
    }

    public final void waitUntileRRpDone(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                if (SystemProperties.getInt("sys.boot.errp", 0) == 1) {
                    Slog.i("BootReceiver", "We waited make eRRp Done for " + i2 + "s");
                    return;
                }
                Thread.sleep(1000L);
            } catch (Exception e) {
                Slog.e("BootReceiver", "waitUntileRRpDone error" + e);
            }
        }
        Slog.i("BootReceiver", "Waited enough time(30s) for eRRp done, but timed out");
    }

    public final void logLastAboxMsg(ZipOutputStream zipOutputStream) {
        String[] strArr = {"/sys/kernel/debug/abox/snapshot_0/log", "/sys/kernel/debug/abox/snapshot_1/log", "/proc/abox/snapshot_0/log", "/proc/abox/snapshot_1/log"};
        String[] strArr2 = {"/sys/kernel/debug/abox/snapshot_0/valid", "/sys/kernel/debug/abox/snapshot_1/valid", "/proc/abox/snapshot_0/valid", "/proc/abox/snapshot_1/valid"};
        byte[] bArr = new byte[IInstalld.FLAG_USE_QUOTA];
        FileInputStream fileInputStream = null;
        for (int i = 0; i < 4; i++) {
            File file = new File(strArr[i]);
            File file2 = new File(strArr2[i]);
            String str = "lastaboxmsg_" + (i % 2) + ".bin";
            if (file.isFile()) {
                try {
                    try {
                        if (file2.isFile()) {
                            String readTextFile = FileUtils.readTextFile(file2, 4, null);
                            if (readTextFile.contains("Y")) {
                                Slog.d("BootReceiver", "get " + str);
                                FileInputStream fileInputStream2 = new FileInputStream(file);
                                try {
                                    zipOutputStream.putNextEntry(new ZipEntry(str));
                                    while (true) {
                                        int read = fileInputStream2.read(bArr);
                                        if (read <= 0) {
                                            break;
                                        } else {
                                            zipOutputStream.write(bArr, 0, read);
                                        }
                                    }
                                    fileInputStream2.close();
                                    zipOutputStream.closeEntry();
                                    fileInputStream = fileInputStream2;
                                } catch (IOException e) {
                                    e = e;
                                    fileInputStream = fileInputStream2;
                                    Slog.e("BootReceiver", "logLastAboxMsg IO err :" + e);
                                    e.printStackTrace();
                                    if (fileInputStream == null) {
                                        return;
                                    }
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException unused) {
                                        return;
                                    }
                                } catch (NullPointerException e2) {
                                    e = e2;
                                    fileInputStream = fileInputStream2;
                                    Slog.e("BootReceiver", "logLastAboxMsg Null pointer :" + e);
                                    e.printStackTrace();
                                    if (fileInputStream == null) {
                                        return;
                                    }
                                    fileInputStream.close();
                                } catch (Throwable th) {
                                    th = th;
                                    fileInputStream = fileInputStream2;
                                    if (fileInputStream != null) {
                                        try {
                                            fileInputStream.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    throw th;
                                }
                            } else {
                                Slog.d("BootReceiver", "skip dump " + str + " valid:" + readTextFile);
                            }
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException unused3) {
                            }
                        }
                    } catch (IOException e3) {
                        e = e3;
                    } catch (NullPointerException e4) {
                        e = e4;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class SaveLastkmsg extends Thread {
        public byte[] buffer;
        public int debughistoryDone;
        public FileInputStream fin;
        public FileOutputStream fout;
        public boolean isSaveLastkmsgDone;

        public SaveLastkmsg() {
            this.fin = null;
            this.fout = null;
            this.buffer = new byte[IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES];
            this.isSaveLastkmsgDone = false;
            this.debughistoryDone = 0;
        }

        public int waitUntilSaveLastkmsgDone(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                try {
                    if (this.isSaveLastkmsgDone) {
                        return i2;
                    }
                    Thread.sleep(1000L);
                } catch (Exception e) {
                    Slog.e("BootReceiver", "waitUntilSaveLastkmsgDone error" + e);
                    return -1;
                }
            }
            return -1;
        }

        public final int waitUntildebughistoryDone(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                try {
                    int i3 = SystemProperties.getInt("sys.boot.debug_history", 0);
                    this.debughistoryDone = i3;
                    if (i3 == 1) {
                        return i2;
                    }
                    Thread.sleep(1000L);
                } catch (Exception e) {
                    Slog.e("BootReceiver", "waitUntildebughistoryDone error" + e);
                    return -1;
                }
            }
            return -1;
        }

        public final void trimDumps() {
            File file = new File("/data/log");
            File[] listFiles = file.listFiles();
            if (!file.exists()) {
                if (file.mkdir()) {
                    return;
                }
                Slog.e("BootReceiver", "trimLastKmsg - logFolder mkdir failed");
                return;
            }
            if (listFiles == null) {
                return;
            }
            ArrayList<Dump> arrayList = new ArrayList();
            arrayList.add(new Dump(new ArrayList(), 5, "lastkmsg"));
            arrayList.add(new Dump(new ArrayList(), 1, "latest_lastkmsg"));
            for (Dump dump : arrayList) {
                try {
                    BootReceiver.this._trimADumpFile(listFiles, dump.getFileList(), dump.getListMax(), dump.getDumpInFix());
                } catch (Exception e) {
                    Slog.e("BootReceiver", "trim" + dump.getDumpInFix() + " error" + e);
                }
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:147:0x0527
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
            	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
            */
        public final void logLastKmsg() {
            /*
                Method dump skipped, instructions count: 1398
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.SaveLastkmsg.logLastKmsg():void");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            trimDumps();
            logLastKmsg();
            this.isSaveLastkmsgDone = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x0235, code lost:
    
        if (r7.exists() == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x023f, code lost:
    
        if (r7.length() <= 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0241, code lost:
    
        r5 = r5 + "InsufficientLogInfo";
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0251, code lost:
    
        r5 = r5 + "EmptyCrashBuffer";
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0261, code lost:
    
        r5 = r5 + "NoLogFile";
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x02ee, code lost:
    
        if (r13 == null) goto L136;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 15, insn: 0x0351: MOVE (r12 I:??[OBJECT, ARRAY]) = (r15 I:??[OBJECT, ARRAY]), block:B:212:0x0350 */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0369 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0364 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x035f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5, types: [java.io.BufferedReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String GetRescuePartyLog() {
        /*
            Method dump skipped, instructions count: 877
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.GetRescuePartyLog():java.lang.String");
    }

    public final void setISRBmode() {
        SystemProperties.set("persist.sys.isrb_havesentlog", Boolean.toString(true));
        if (SystemProperties.getBoolean("sys.isrblevel.callreboot", false)) {
            return;
        }
        SystemProperties.set("persist.sys.rescue_level", Integer.toString(6));
        SystemProperties.set("persist.sys.enable_isrb", Boolean.toString(false));
        SystemProperties.set("persist.sys.rescue_mode", "isrb_boot");
    }

    public final boolean isNotRescueParty() {
        int i = SystemProperties.getInt("persist.sys.rescue_level", 0);
        String str = SystemProperties.get("persist.sys.emergency_reset", "");
        if (i == 0) {
            return true;
        }
        if (i == 7 && !"emergency".equals(str)) {
            SystemProperties.set("persist.sys.rescue_level", "0");
            return true;
        }
        SystemProperties.set("sys.reset_reason", "N|R" + Integer.toString(i));
        this.isRescueParty = true;
        return false;
    }

    public final void sendBroadcastToHWParm(String str, String str2, String str3) {
        if (this.mSemHqmManager != null) {
            Slog.d("BootReceiver", "sendBroadcastToHWParm() mSemHqmManager.sendHWParamToHQM");
            this.mSemHqmManager.sendHWParamToHQM(0, str, str2, "ph", "0.0", "", "", str3, "");
        } else {
            Slog.d("BootReceiver", "sendBroadcastToHWParm() mSemHqmManager is null");
        }
    }

    public final int is_store_lastkmsg() {
        String str;
        File file = new File("/proc/store_lastkmsg");
        if (!store_lastkmsg_read_done) {
            if (!file.isFile()) {
                Slog.e("BootReceiver", "PROC_STORE_KMSG : no exist");
            } else {
                store_lastkmsg_val = 0;
                try {
                    str = FileUtils.readTextFile(file, 1024, KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                } catch (IOException e) {
                    Slog.e("BootReceiver", "PROC_STORE_KMSG : read fail " + e);
                    str = null;
                }
                if (str != null && str.length() >= 1 && str.substring(0, 1).equals("1")) {
                    store_lastkmsg_val = 1;
                }
            }
            store_lastkmsg_read_done = true;
        }
        return store_lastkmsg_val;
    }

    public final String proc_reset_reason() {
        File file = new File("/proc/reset_reason");
        if (!proc_rr_read_done) {
            if (!file.isFile()) {
                Slog.e("BootReceiver", "/proc/reset_reason : no exist");
            } else {
                try {
                    proc_rr_value = FileUtils.readTextFile(file, 1024, KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
                } catch (IOException e) {
                    Slog.e("BootReceiver", "PROC_RESET_REASON : read fail " + e);
                }
                Slog.d("BootReceiver", "reset_reason = " + proc_rr_value);
                String str = proc_rr_value;
                if (str != null && str.length() >= 2) {
                    proc_rr_value = proc_rr_value.substring(0, 2);
                }
            }
            if (proc_rr_value == null) {
                proc_rr_value = "NA";
            }
            proc_rr_read_done = true;
        }
        return proc_rr_value;
    }

    public final void sendHWParamInfo(String str, String str2) {
        File file = new File(str2);
        if (file.isFile()) {
            String str3 = "";
            if ("ETRA".equals(str)) {
                try {
                    String readTextFile = FileUtils.readTextFile(file, IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES, null);
                    String str4 = SystemProperties.get("ro.crypto.state", "none");
                    String str5 = SystemProperties.get("ro.crypto.type", "none");
                    if (readTextFile.length() > 1) {
                        str3 = readTextFile + ",\"CPT\":\"" + str4 + "/" + str5 + "\"";
                    }
                } catch (IOException e) {
                    Slog.e(str, "readTextFile error" + e);
                }
            } else if ("ETRT".equals(str)) {
                String str6 = SystemProperties.get("ro.soc.model", "none");
                if (str6.equals("none")) {
                    str6 = SystemProperties.get("ro.hardware.chipname", "none");
                }
                try {
                    String readTextFile2 = FileUtils.readTextFile(file, IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES, null);
                    if (readTextFile2.length() > 1) {
                        str3 = readTextFile2 + ",\"APNM\":\"" + str6 + "\"";
                    }
                } catch (IOException e2) {
                    Slog.e(str, "readTextFile error" + e2);
                }
            } else {
                try {
                    str3 = FileUtils.readTextFile(file, IInstalld.FLAG_FREE_CACHE_DEFY_TARGET_FREE_BYTES, null);
                } catch (IOException e3) {
                    Slog.e(str, "readTextFile error" + e3);
                }
            }
            if (str3.length() > 1) {
                sendBroadcastToHWParm("AP", str, str3);
                storeExtraInfo += str + " - " + str3 + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE;
            }
        }
    }

    /* loaded from: classes.dex */
    public class Dump {
        public final String dumpInFix;
        public final List fileList;
        public final int listMax;

        public Dump(List list, int i, String str) {
            this.fileList = list;
            this.listMax = i;
            this.dumpInFix = str;
        }

        public List getFileList() {
            return this.fileList;
        }

        public int getListMax() {
            return this.listMax;
        }

        public String getDumpInFix() {
            return this.dumpInFix;
        }
    }

    public final void _trimADumpFile(File[] fileArr, List list, int i, String str) {
        for (File file : fileArr) {
            String name = file.getName();
            if (file.isFile()) {
                if (name.startsWith("dumpstate_" + str)) {
                    list.add(file);
                }
            }
        }
        Collections.sort(list, new Comparator() { // from class: com.android.server.BootReceiver.1
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return Long.valueOf(file2.lastModified()).compareTo(Long.valueOf(file3.lastModified()));
            }
        });
        Slog.i("BootReceiver", "trim" + str + " - Num of existing listOf" + str + " is " + list.size());
        while (list.size() >= i) {
            Slog.i("BootReceiver", "trim" + str + " - Delete file" + ((File) list.get(0)).getName());
            if (!((File) list.get(0)).delete()) {
                Slog.e("BootReceiver", "trim" + str + " - " + ((File) list.get(0)).getName() + " delete failed");
            }
            list.remove(0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cb, code lost:
    
        if (r5 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f3, code lost:
    
        if (r2 != null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f5, code lost:
    
        r7 = r2.getCanonicalPath();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f9, code lost:
    
        if (r7 != null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00fb, code lost:
    
        android.os.FileUtils.setPermissions(r7, com.android.internal.util.FrameworkStatsLog.DISPLAY_HBM_STATE_CHANGED, 1000, 1007);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x011a, code lost:
    
        android.os.SystemProperties.set("sys.boot.debug_history", "1");
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x011f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0105, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0106, code lost:
    
        android.util.Slog.e("BootReceiver", "dumpstate_debug_history - getCanonicalPath error" + r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00cd, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f0, code lost:
    
        if (r5 == null) goto L56;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0123 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void makeDebugHistory() {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.makeDebugHistory():void");
    }

    public final void logResetReason() {
        String str;
        File file = new File("/proc/reset_reason");
        File file2 = new File("/proc/store_lastkmsg");
        if (!file.isFile()) {
            Slog.e("BootReceiver", "Can't find PROC_RESET_REASON");
            return;
        }
        try {
            str = FileUtils.readTextFile(file, 1024, KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        } catch (IOException e) {
            Slog.e("BootReceiver", "readTextFile error" + e);
            str = null;
        }
        if (str == null) {
            Slog.e("BootReceiver", "resetString is null");
            str = "NA";
        } else {
            Slog.i("BootReceiver", "resetString = " + str);
        }
        if (str.length() >= 2) {
            str = str.substring(0, 2);
        }
        if (!file2.isFile()) {
            if ("RP".equals(str) || "BP".equals(str) || "NP".equals(str)) {
                if (isNotRescueParty()) {
                    SystemProperties.set("sys.reset_reason", "N|" + str);
                }
                this.reset = 0;
            } else {
                SystemProperties.set("sys.reset_reason", "K|" + str);
                this.reset = 1;
            }
            SystemProperties.set("ctl.restart", "resetreason");
            return;
        }
        if ("KP".equals(str) || "PP".equals(str) || "DP".equals(str) || "WP".equals(str) || "TP".equals(str) || "SP".equals(str)) {
            SystemProperties.set("sys.reset_reason", "K|" + str);
            this.reset = 1;
        } else {
            if ("MP".equals(str) || isNotRescueParty()) {
                SystemProperties.set("sys.reset_reason", "N|" + str);
            }
            this.reset = 0;
        }
        SystemProperties.set("ctl.restart", "resetreason");
        if (this.reset == 1 && is_store_lastkmsg() == 1) {
            sendHWParamInfo("ETRA", "/sys/class/sec/sec_hw_param/extra_info");
            sendHWParamInfo("ETRB", "/sys/class/sec/sec_hw_param/extrb_info");
            sendHWParamInfo("ETRC", "/sys/class/sec/sec_hw_param/extrc_info");
            sendHWParamInfo("ETRM", "/sys/class/sec/sec_hw_param/extrm_info");
            sendHWParamInfo("ETRF", "/sys/class/sec/sec_hw_param/extrf_info");
            sendHWParamInfo("ETRT", "/sys/class/sec/sec_hw_param/extrt_info");
        }
    }

    public final void sendResetLog(Context context, String str) {
        SemHqmManager semHqmManager = (SemHqmManager) context.getSystemService("HqmManagerService");
        if (semHqmManager != null) {
            boolean z = false;
            if (this.isRescueParty) {
                try {
                    Thread.sleep(BackupAgentTimeoutParameters.DEFAULT_FULL_BACKUP_AGENT_TIMEOUT_MILLIS);
                    if (SystemProperties.getInt("persist.sys.rescue_level", 0) == 6) {
                        boolean z2 = SystemProperties.getBoolean("persist.sys.isrb_havesentlog", false);
                        try {
                            setISRBmode();
                        } catch (InterruptedException unused) {
                        }
                        z = z2;
                    } else {
                        SystemProperties.set("persist.sys.rescue_level", "0");
                    }
                } catch (InterruptedException unused2) {
                }
            }
            if (!z) {
                semHqmManager.sendHWParamToHQM(0, "AP", "REST", "ph", "0.0", "", "", str, "");
            }
            Slog.i("BootReceiver", "send broadcast to HQM about reset reason : " + str);
        }
    }

    public final void sendToMembers(Context context, String str, String str2) {
        if (this.LOG_FILE == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.samsung.android.voc.action.SYSTEM_ERROR");
        intent.setPackage("com.samsung.android.voc");
        intent.putExtra("com.samsung.android.voc.extra.SYSTEM_TYPE", str);
        intent.putExtra("com.samsung.android.voc.extra.RESET_REASON", str2);
        intent.putExtra("com.samsung.android.voc.extra.TAG", this.uniqueID.toString());
        intent.putExtra("com.samsung.android.voc.extra.LOG_PATH", this.LOG_FILE);
        Slog.i("BootReceiver", "Send to Samsung Members, system type: " + str + ", reset_reason: " + str2 + ", tag: " + this.uniqueID.toString() + ", log file: " + this.LOG_FILE + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        context.sendBroadcast(intent, "android.permission.DUMP");
    }

    public final void sendToDiagmon(Context context, String str, String str2) {
        if (Settings.System.getInt(context.getContentResolver(), "samsung_errorlog_agree", 0) != 1 || this.LOG_FILE == null) {
            return;
        }
        Slog.i("BootReceiver", "send broadcast intent to diagmon : " + this.LOG_FILE);
        this.EVENT_ID += System.currentTimeMillis();
        this.RESULT_CODE = str2 + KnoxVpnFirewallHelper.DELIMITER + str;
        Intent intent = new Intent("com.sec.android.diagmonagent.intent.REPORT_ERROR_V2");
        Bundle bundle = new Bundle();
        intent.setPackage("com.sec.android.diagmonagent");
        intent.addFlags(32);
        try {
            bundle.putBundle("DiagMon", new Bundle());
            bundle.getBundle("DiagMon").putBundle("CFailLogUpload", new Bundle());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").putString("ServiceID", "ny6xfd3iri");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").putBundle("Ext", new Bundle());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("ClientV", Build.VERSION.INCREMENTAL);
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("UiMode", "0");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("ResultCode", this.RESULT_CODE);
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("WifiOnlyFeature", "1");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("EventID", this.EVENT_ID);
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("Ext").putString("Tag", this.uniqueID.toString());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").putBundle("IntentOnly", new Bundle());
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("IntentOnly").putString("IntentOnlyMode", "1");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("IntentOnly").putString("Agree", "D");
            bundle.getBundle("DiagMon").getBundle("CFailLogUpload").getBundle("IntentOnly").putString("LogPath", this.LOG_FILE);
            intent.putExtra("uploadMO", bundle);
            intent.setFlags(32);
            context.sendBroadcast(intent);
        } catch (Exception e) {
            Slog.e("BootReceiver", "Exception while sending a bug report.", e);
        }
    }

    public final String getDumpFilename(String str) {
        File file = new File("/data/log");
        String str2 = null;
        if ("P|UR".equals(str)) {
            Path path = Paths.get("/data/log/unknown_platform_reset.log", new String[0]);
            if (Files.exists(path, new LinkOption[0]) && Files.isRegularFile(path, new LinkOption[0])) {
                return "/data/log/unknown_platform_reset.log";
            }
            return null;
        }
        File[] listFiles = file.listFiles(new FilenameFilter() { // from class: com.android.server.BootReceiver$$ExternalSyntheticLambda1
            @Override // java.io.FilenameFilter
            public final boolean accept(File file2, String str3) {
                boolean lambda$getDumpFilename$0;
                lambda$getDumpFilename$0 = BootReceiver.lambda$getDumpFilename$0(file2, str3);
                return lambda$getDumpFilename$0;
            }
        });
        if (listFiles == null) {
            return null;
        }
        String addSuffix = getResetReasonFactory().createResetReasonCode(str).addSuffix();
        if ("".equals(addSuffix)) {
            if (!this.isRescueParty) {
                return null;
            }
            addSuffix = "sys_error";
        }
        Arrays.sort(listFiles);
        for (File file2 : listFiles) {
            if (file2.isFile()) {
                if (file2.getName().startsWith("dumpstate_" + addSuffix)) {
                    str2 = "/data/log/" + file2.getName();
                }
            }
        }
        return str2;
    }

    public static /* synthetic */ boolean lambda$getDumpFilename$0(File file, String str) {
        return str.endsWith("zip") || str.endsWith("gz");
    }

    public final String getANRFileName() {
        File[] listFiles = new File("/data/anr").listFiles(new FilenameFilter() { // from class: com.android.server.BootReceiver$$ExternalSyntheticLambda0
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str) {
                boolean lambda$getANRFileName$1;
                lambda$getANRFileName$1 = BootReceiver.lambda$getANRFileName$1(file, str);
                return lambda$getANRFileName$1;
            }
        });
        if (listFiles == null || listFiles.length == 0) {
            return null;
        }
        Arrays.sort(listFiles);
        return "/data/anr/" + listFiles[listFiles.length - 1].getName();
    }

    public static /* synthetic */ boolean lambda$getANRFileName$1(File file, String str) {
        return str.startsWith("anr_");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0131 A[LOOP:1: B:49:0x012f->B:50:0x0131, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0145 A[LOOP:2: B:53:0x013f->B:55:0x0145, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02ca A[Catch: IOException -> 0x02c6, TRY_LEAVE, TryCatch #0 {IOException -> 0x02c6, blocks: (B:97:0x02c2, B:88:0x02ca), top: B:96:0x02c2 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String GetPWatchdog() {
        /*
            Method dump skipped, instructions count: 725
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.GetPWatchdog():java.lang.String");
    }

    public final String GetResetLog(String str) {
        Pattern pattern;
        String GetPWatchdog;
        if (str.matches(".*R[1-9].*")) {
            return GetRescuePartyLog();
        }
        String str2 = "\"TAG\":\"" + this.uniqueID + "\",";
        if (str.equals("P|WD") && (GetPWatchdog = GetPWatchdog()) != null) {
            return str2 + GetPWatchdog;
        }
        ResetReasonCode createResetReasonCode = getResetReasonFactory().createResetReasonCode(str);
        Pattern patternByReason = createResetReasonCode.getPatternByReason();
        String str3 = "\"CAUSE\":\"" + createResetReasonCode.addCauseContents();
        String str4 = "\"STACK\":\"" + createResetReasonCode.addStackContents();
        String str5 = "";
        if (Pattern.compile(".*").equals(patternByReason)) {
            if (!str.equals("N|RP") && !str.equals("N|NP")) {
                return "";
            }
            return str2 + str3 + "\"," + str4 + "\"";
        }
        Pattern compile = Pattern.compile("[EFW]\\/(.*)\\((\\s*\\d+)\\):\\s+(.*)");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat -v brief -b crash -d -t 1000").getInputStream()));
        ArrayList<Pair> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            Matcher matcher = compile.matcher(readLine);
            if (matcher.matches()) {
                String group = matcher.group(1);
                if ("AndroidRuntime".equals(group) || "Watchdog".equals(group) || group.startsWith("DEBUG")) {
                    pattern = compile;
                    arrayList.add(Pair.create(matcher.group(2), matcher.group(3)));
                    sb.append(matcher.group(1) + "(" + matcher.group(2) + ") : " + matcher.group(3));
                } else {
                    pattern = compile;
                }
                compile = pattern;
            }
        }
        for (Pair pair : arrayList) {
            if (patternByReason.matcher((CharSequence) pair.second).matches()) {
                str5 = (String) pair.first;
            }
        }
        for (Pair pair2 : arrayList) {
            if (str5.equals(pair2.first)) {
                arrayList2.add((String) pair2.second);
            }
        }
        if (arrayList2.size() <= 1) {
            String str6 = str2 + "\"CAUSE\":\"NO_LOG\",\"STACK\":\"";
            int length = sb.length();
            return str6.concat(sb.substring(length - (length <= 59000 ? length : 59000))).concat("\"");
        }
        List addCauseStackFromContexts = createResetReasonCode.addCauseStackFromContexts(arrayList2);
        String replace = (str2 + (str3 + ((String) addCauseStackFromContexts.get(0))) + "\"," + (str4 + ((String) addCauseStackFromContexts.get(1)))).replace("\t", " ");
        if (replace.length() >= 59999) {
            replace = replace.substring(0, 59999);
        }
        return replace.concat("\"");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        new Thread() { // from class: com.android.server.BootReceiver.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    BootReceiver.this.logBootEvents(context);
                } catch (Exception e) {
                    Slog.e("BootReceiver", "Can't log boot events", e);
                }
                try {
                    BootReceiver.this.removeOldUpdatePackages(context);
                } catch (Exception e2) {
                    Slog.e("BootReceiver", "Can't remove old update packages", e2);
                }
            }
        }.start();
        try {
            FileDescriptor open = Os.open("/sys/kernel/tracing/instances/bootreceiver/trace_pipe", OsConstants.O_RDONLY, FrameworkStatsLog.NON_A11Y_TOOL_SERVICE_WARNING_REPORT);
            IoThread.get().getLooper().getQueue().addOnFileDescriptorEventListener(open, 1, new MessageQueue.OnFileDescriptorEventListener() { // from class: com.android.server.BootReceiver.3
                public final int mBufferSize = 1024;
                public byte[] mTraceBuffer = new byte[1024];

                @Override // android.os.MessageQueue.OnFileDescriptorEventListener
                public int onFileDescriptorEvents(FileDescriptor fileDescriptor, int i) {
                    try {
                        if (Os.read(fileDescriptor, this.mTraceBuffer, 0, 1024) > 0 && new String(this.mTraceBuffer).indexOf(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE) != -1 && BootReceiver.sSentReports < 8) {
                            SystemProperties.set("dmesgd.start", "1");
                            BootReceiver.sSentReports++;
                        }
                        return 1;
                    } catch (Exception e) {
                        Slog.wtf("BootReceiver", "Error watching for trace events", e);
                        return 0;
                    }
                }
            });
        } catch (ErrnoException e) {
            Slog.wtf("BootReceiver", "Could not open /sys/kernel/tracing/instances/bootreceiver/trace_pipe", e);
        }
    }

    public final void removeOldUpdatePackages(Context context) {
        Downloads.removeAllDownloadsByPackage(context, "com.google.android.systemupdater", "com.google.android.systemupdater.SystemUpdateReceiver");
    }

    public static String getPreviousBootHeaders() {
        try {
            return FileUtils.readTextFile(lastHeaderFile, 0, null);
        } catch (IOException unused) {
            return null;
        }
    }

    public static String getCurrentBootHeaders() {
        StringBuilder sb = new StringBuilder(512);
        sb.append("Build: ");
        sb.append(Build.FINGERPRINT);
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        sb.append("Hardware: ");
        sb.append(Build.BOARD);
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        sb.append("Revision: ");
        sb.append(SystemProperties.get("ro.revision", ""));
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        sb.append("Bootloader: ");
        sb.append(Build.BOOTLOADER);
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        sb.append("Radio: ");
        sb.append(Build.getRadioVersion());
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        sb.append("Kernel: ");
        sb.append(FileUtils.readTextFile(new File("/proc/version"), 1024, "...\n"));
        sb.append(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        return sb.toString();
    }

    public static String getBootHeadersToLogAndUpdate() {
        String previousBootHeaders = getPreviousBootHeaders();
        String currentBootHeaders = getCurrentBootHeaders();
        try {
            FileUtils.stringToFile(lastHeaderFile, currentBootHeaders);
        } catch (IOException e) {
            Slog.e("BootReceiver", "Error writing " + lastHeaderFile, e);
        }
        if (previousBootHeaders == null) {
            return "isPrevious: false\n" + currentBootHeaders;
        }
        return "isPrevious: true\n" + previousBootHeaders;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:21|(3:72|(1:74)|75)|25|26|27|(6:41|(2:43|(1:63)(2:47|(1:49)(2:60|(1:62))))(2:64|(3:66|(1:68)|69))|50|(1:52)(1:59)|53|(7:55|(1:57)(1:58)|32|33|(1:35)|36|37))|31|32|33|(0)|36|37) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x03b2, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x03b3, code lost:
    
        android.util.Slog.e(r12, "get reset log error", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0396 A[Catch: IOException | IllegalStateException -> 0x03b2, TryCatch #5 {IOException | IllegalStateException -> 0x03b2, blocks: (B:33:0x038c, B:35:0x0396, B:36:0x03aa), top: B:32:0x038c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void logBootEvents(android.content.Context r23) {
        /*
            Method dump skipped, instructions count: 980
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.logBootEvents(android.content.Context):void");
    }

    public static void resetDropboxRateLimiter() {
        sDropboxRateLimiter.reset();
    }

    public static void addTombstoneToDropBox(Context context, File file, boolean z, String str, ReentrantLock reentrantLock) {
        DropBoxManager dropBoxManager = (DropBoxManager) context.getSystemService(DropBoxManager.class);
        if (dropBoxManager == null) {
            Slog.e("BootReceiver", "Can't log tombstone: DropBoxManager not available");
            return;
        }
        DropboxRateLimiter.RateLimitResult shouldRateLimit = sDropboxRateLimiter.shouldRateLimit(z ? "SYSTEM_TOMBSTONE_PROTO_WITH_HEADERS" : "SYSTEM_TOMBSTONE", str);
        if (shouldRateLimit.shouldRateLimit()) {
            return;
        }
        HashMap readTimestamps = readTimestamps();
        try {
            if (z) {
                if (recordFileTimestamp(file, readTimestamps)) {
                    reentrantLock.lock();
                    try {
                        addAugmentedProtoToDropbox(file, dropBoxManager, shouldRateLimit);
                        reentrantLock.unlock();
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                }
            } else {
                addFileToDropBox(dropBoxManager, readTimestamps, getBootHeadersToLogAndUpdate() + shouldRateLimit.createHeader(), file.getPath(), LOG_SIZE, "SYSTEM_TOMBSTONE");
            }
        } catch (IOException e) {
            Slog.e("BootReceiver", "Can't log tombstone", e);
        }
        writeTimestamps(readTimestamps);
    }

    public static void addAugmentedProtoToDropbox(File file, DropBoxManager dropBoxManager, DropboxRateLimiter.RateLimitResult rateLimitResult) {
        if (file.length() > 10485760) {
            Slog.w("BootReceiver", "Tombstone too large to add to DropBox: " + file.toPath());
            return;
        }
        byte[] readAllBytes = Files.readAllBytes(file.toPath());
        File createTempFile = File.createTempFile(file.getName(), ".tmp", TOMBSTONE_TMP_DIR);
        Files.setPosixFilePermissions(createTempFile.toPath(), PosixFilePermissions.fromString("rw-rw----"));
        try {
            try {
                try {
                    ParcelFileDescriptor open = ParcelFileDescriptor.open(createTempFile, 805306368);
                    try {
                        ProtoOutputStream protoOutputStream = new ProtoOutputStream(open.getFileDescriptor());
                        protoOutputStream.write(1151051235329L, readAllBytes);
                        protoOutputStream.write(1120986464258L, rateLimitResult.droppedCountSinceRateLimitActivated());
                        protoOutputStream.flush();
                        dropBoxManager.addFile("SYSTEM_TOMBSTONE_PROTO_WITH_HEADERS", createTempFile, 0);
                        open.close();
                    } catch (Throwable th) {
                        if (open != null) {
                            try {
                                open.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException | RuntimeException e) {
                    Slog.e("BootReceiver", "Exception during write: " + createTempFile, e);
                }
                try {
                    createTempFile.delete();
                } catch (Exception unused) {
                }
            } catch (FileNotFoundException e2) {
                Slog.e("BootReceiver", "failed to open for write: " + createTempFile, e2);
                throw e2;
            }
        } catch (Throwable th3) {
            try {
                createTempFile.delete();
            } catch (Exception unused2) {
            }
            throw th3;
        }
    }

    public static void addLastkToDropBox(DropBoxManager dropBoxManager, HashMap hashMap, String str, String str2, String str3, int i, String str4) {
        int length = str.length() + 14 + str2.length();
        if (LASTK_LOG_SIZE + length > 196608) {
            i = 196608 > length ? -(196608 - length) : 0;
        }
        addFileWithFootersToDropBox(dropBoxManager, hashMap, str, str2, str3, i, str4);
    }

    public static void addFileToDropBox(DropBoxManager dropBoxManager, HashMap hashMap, String str, String str2, int i, String str3) {
        addFileWithFootersToDropBox(dropBoxManager, hashMap, str, "", str2, i, str3);
    }

    public static void addFileWithFootersToDropBox(DropBoxManager dropBoxManager, HashMap hashMap, String str, String str2, String str3, int i, String str4) {
        if (dropBoxManager == null || !dropBoxManager.isTagEnabled(str4)) {
            return;
        }
        File file = new File(str3);
        if (recordFileTimestamp(file, hashMap)) {
            String readTextFile = FileUtils.readTextFile(file, i, "[[TRUNCATED]]\n");
            String str5 = str + readTextFile + str2;
            if (str4.equals("SYSTEM_TOMBSTONE") && readTextFile.contains(">>> system_server <<<")) {
                addTextToDropBox(dropBoxManager, "system_server_native_crash", str5, str3, i);
            }
            if (str4.equals("SYSTEM_TOMBSTONE")) {
                FrameworkStatsLog.write(186);
            }
            addTextToDropBox(dropBoxManager, str4, str5, str3, i);
        }
    }

    public static boolean recordFileTimestamp(File file, HashMap hashMap) {
        long lastModified = file.lastModified();
        if (lastModified <= 0) {
            return false;
        }
        String path = file.getPath();
        if (hashMap.containsKey(path) && ((Long) hashMap.get(path)).longValue() == lastModified) {
            return false;
        }
        hashMap.put(path, Long.valueOf(lastModified));
        return true;
    }

    public static void addTextToDropBox(DropBoxManager dropBoxManager, String str, String str2, String str3, int i) {
        Slog.i("BootReceiver", "Copying " + str3 + " to DropBox (" + str + ")");
        dropBoxManager.addText(str, str2);
        EventLog.writeEvent(81002, str3, Integer.valueOf(i), str);
    }

    public static void addAuditErrorsToDropBox(DropBoxManager dropBoxManager, HashMap hashMap, String str, int i, String str2) {
        if (dropBoxManager == null || !dropBoxManager.isTagEnabled(str2)) {
            return;
        }
        Slog.i("BootReceiver", "Copying audit failures to DropBox");
        File file = new File("/proc/last_kmsg");
        long lastModified = file.lastModified();
        if (lastModified <= 0) {
            file = new File("/sys/fs/pstore/console-ramoops");
            lastModified = file.lastModified();
            if (lastModified <= 0) {
                file = new File("/sys/fs/pstore/console-ramoops-0");
                lastModified = file.lastModified();
            }
        }
        if (lastModified <= 0) {
            return;
        }
        if (hashMap.containsKey(str2) && ((Long) hashMap.get(str2)).longValue() == lastModified) {
            return;
        }
        hashMap.put(str2, Long.valueOf(lastModified));
        String readTextFile = FileUtils.readTextFile(file, i, "[[TRUNCATED]]\n");
        StringBuilder sb = new StringBuilder();
        for (String str3 : readTextFile.split(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE)) {
            if (str3.contains("audit")) {
                sb.append(str3 + KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
            }
        }
        Slog.i("BootReceiver", "Copied " + sb.toString().length() + " worth of audits to DropBox");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(sb.toString());
        dropBoxManager.addText(str2, sb2.toString());
    }

    public static void addFsckErrorsToDropBoxAndLogFsStat(DropBoxManager dropBoxManager, HashMap hashMap, String str, int i, String str2) {
        boolean z = dropBoxManager != null && dropBoxManager.isTagEnabled(str2);
        Slog.i("BootReceiver", "Checking for fsck errors");
        File file = new File("/dev/fscklogs/log");
        if (file.lastModified() <= 0) {
            return;
        }
        String readTextFile = FileUtils.readTextFile(file, i, "[[TRUNCATED]]\n");
        Pattern compile = Pattern.compile("fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)");
        String[] split = readTextFile.split(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE);
        boolean z2 = false;
        int i2 = 0;
        int i3 = 0;
        for (String str3 : split) {
            if (str3.contains("FILE SYSTEM WAS MODIFIED") || str3.contains("[FSCK] Unreachable")) {
                z2 = true;
            } else if (str3.contains("fs_stat")) {
                Matcher matcher = compile.matcher(str3);
                if (matcher.find()) {
                    handleFsckFsStat(matcher, split, i2, i3);
                    i2 = i3;
                } else {
                    Slog.w("BootReceiver", "cannot parse fs_stat:" + str3);
                }
            }
            i3++;
        }
        if (z && z2) {
            addFileToDropBox(dropBoxManager, hashMap, str, "/dev/fscklogs/log", i, str2);
        }
        file.renameTo(new File("/dev/fscklogs/fsck"));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0029. Please report as an issue. */
    public static void logFsMountTime() {
        int i;
        for (String str : MOUNT_DURATION_PROPS_POSTFIX) {
            int i2 = SystemProperties.getInt("ro.boottime.init.mount_all." + str, 0);
            if (i2 != 0) {
                str.hashCode();
                char c = 65535;
                switch (str.hashCode()) {
                    case 3314342:
                        if (str.equals("late")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 96278371:
                        if (str.equals("early")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1544803905:
                        if (str.equals("default")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        i = 12;
                        break;
                    case 1:
                        i = 11;
                        break;
                    case 2:
                        i = 10;
                        break;
                }
                FrameworkStatsLog.write(FrameworkStatsLog.BOOT_TIME_EVENT_DURATION_REPORTED, i, i2);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void logSystemServerShutdownTimeMetrics() {
        /*
            java.io.File r0 = new java.io.File
            java.lang.String r1 = "/data/system/shutdown-metrics.txt"
            r0.<init>(r1)
            boolean r1 = r0.exists()
            java.lang.String r2 = "BootReceiver"
            r3 = 0
            r4 = 0
            if (r1 == 0) goto L2b
            java.lang.String r1 = android.os.FileUtils.readTextFile(r0, r3, r4)     // Catch: java.io.IOException -> L16
            goto L2c
        L16:
            r1 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Problem reading "
            r5.append(r6)
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            android.util.Slog.e(r2, r5, r1)
        L2b:
            r1 = r4
        L2c:
            boolean r5 = android.text.TextUtils.isEmpty(r1)
            if (r5 != 0) goto Lae
            java.lang.String r5 = ","
            java.lang.String[] r5 = r1.split(r5)
            int r6 = r5.length
            r10 = r3
            r7 = r4
            r8 = r7
            r9 = r8
        L3d:
            if (r10 >= r6) goto Lab
            r11 = r5[r10]
            java.lang.String r12 = ":"
            java.lang.String[] r11 = r11.split(r12)
            int r12 = r11.length
            r13 = 2
            if (r12 == r13) goto L60
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "Wrong format of shutdown metrics - "
            r11.append(r12)
            r11.append(r1)
            java.lang.String r11 = r11.toString()
            android.util.Slog.e(r2, r11)
            goto La8
        L60:
            r12 = r11[r3]
            java.lang.String r13 = "shutdown_"
            boolean r12 = r12.startsWith(r13)
            r13 = 1
            if (r12 == 0) goto L80
            r12 = r11[r3]
            r14 = r11[r13]
            logTronShutdownMetric(r12, r14)
            r12 = r11[r3]
            java.lang.String r14 = "shutdown_system_server"
            boolean r12 = r12.equals(r14)
            if (r12 == 0) goto L80
            r9 = r11[r13]
        L80:
            r12 = r11[r3]
            java.lang.String r14 = "reboot"
            boolean r12 = r12.equals(r14)
            if (r12 == 0) goto L8e
            r4 = r11[r13]
            goto La8
        L8e:
            r12 = r11[r3]
            java.lang.String r14 = "reason"
            boolean r12 = r12.equals(r14)
            if (r12 == 0) goto L9c
            r7 = r11[r13]
            goto La8
        L9c:
            r12 = r11[r3]
            java.lang.String r14 = "begin_shutdown"
            boolean r12 = r12.equals(r14)
            if (r12 == 0) goto La8
            r8 = r11[r13]
        La8:
            int r10 = r10 + 1
            goto L3d
        Lab:
            logStatsdShutdownAtom(r4, r7, r8, r9)
        Lae:
            r0.delete()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.logSystemServerShutdownTimeMetrics():void");
    }

    public static void logTronShutdownMetric(String str, String str2) {
        try {
            int parseInt = Integer.parseInt(str2);
            if (parseInt >= 0) {
                MetricsLogger.histogram((Context) null, str, parseInt);
            }
        } catch (NumberFormatException unused) {
            Slog.e("BootReceiver", "Cannot parse metric " + str + " int value - " + str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void logStatsdShutdownAtom(java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            java.lang.String r0 = "BootReceiver"
            if (r8 == 0) goto L2d
            java.lang.String r1 = "y"
            boolean r1 = r8.equals(r1)
            if (r1 == 0) goto Lf
            r8 = 1
            goto L33
        Lf:
            java.lang.String r1 = "n"
            boolean r1 = r8.equals(r1)
            if (r1 != 0) goto L32
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unexpected value for reboot : "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r8 = r1.toString()
            android.util.Slog.e(r0, r8)
            goto L32
        L2d:
            java.lang.String r8 = "No value received for reboot"
            android.util.Slog.e(r0, r8)
        L32:
            r8 = 0
        L33:
            r2 = r8
            if (r9 == 0) goto L37
            goto L3e
        L37:
            java.lang.String r8 = "No value received for shutdown reason"
            android.util.Slog.e(r0, r8)
            java.lang.String r9 = "<EMPTY>"
        L3e:
            r3 = r9
            r8 = 0
            if (r10 == 0) goto L5d
            long r4 = java.lang.Long.parseLong(r10)     // Catch: java.lang.NumberFormatException -> L48
            goto L63
        L48:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r4 = "Cannot parse shutdown start time: "
            r1.append(r4)
            r1.append(r10)
            java.lang.String r1 = r1.toString()
            android.util.Slog.e(r0, r1)
            goto L62
        L5d:
            java.lang.String r1 = "No value received for shutdown start time"
            android.util.Slog.e(r0, r1)
        L62:
            r4 = r8
        L63:
            if (r11 == 0) goto L7f
            long r8 = java.lang.Long.parseLong(r11)     // Catch: java.lang.NumberFormatException -> L6a
            goto L84
        L6a:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r1 = "Cannot parse shutdown duration: "
            r11.append(r1)
            r11.append(r10)
            java.lang.String r10 = r11.toString()
            android.util.Slog.e(r0, r10)
            goto L84
        L7f:
            java.lang.String r10 = "No value received for shutdown duration"
            android.util.Slog.e(r0, r10)
        L84:
            r6 = r8
            r1 = 56
            com.android.internal.util.FrameworkStatsLog.write(r1, r2, r3, r4, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.logStatsdShutdownAtom(java.lang.String, java.lang.String, java.lang.String, java.lang.String):void");
    }

    public static void logFsShutdownTime() {
        File file;
        String[] strArr = LAST_KMSG_FILES;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                file = null;
                break;
            }
            file = new File(strArr[i]);
            if (file.exists()) {
                break;
            } else {
                i++;
            }
        }
        if (file == null) {
            return;
        }
        try {
            Matcher matcher = Pattern.compile("powerctl_shutdown_time_ms:([0-9]+):([0-9]+)", 8).matcher(FileUtils.readTextFile(file, -16384, null));
            if (matcher.find()) {
                FrameworkStatsLog.write(FrameworkStatsLog.BOOT_TIME_EVENT_DURATION_REPORTED, 9, Integer.parseInt(matcher.group(1)));
                FrameworkStatsLog.write(242, 2, Integer.parseInt(matcher.group(2)));
                Slog.i("BootReceiver", "boot_fs_shutdown," + matcher.group(1) + "," + matcher.group(2));
                return;
            }
            FrameworkStatsLog.write(242, 2, 4);
            Slog.w("BootReceiver", "boot_fs_shutdown, string not found");
        } catch (IOException e) {
            Slog.w("BootReceiver", "cannot read last msg", e);
        }
    }

    public static int fixFsckFsStat(String str, int i, String[] strArr, int i2, int i3) {
        String str2;
        boolean z;
        int i4;
        if ((i & 1024) != 0) {
            Pattern compile = Pattern.compile("Pass ([1-9]E?):");
            Pattern compile2 = Pattern.compile("Inode [0-9]+ extent tree.*could be shorter");
            String str3 = "";
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            int i5 = i2;
            while (i5 < i3) {
                str2 = strArr[i5];
                if (str2.contains("FILE SYSTEM WAS MODIFIED") || str2.contains("[FSCK] Unreachable")) {
                    break;
                }
                if (str2.startsWith("Pass ")) {
                    Matcher matcher = compile.matcher(str2);
                    if (matcher.find()) {
                        str3 = matcher.group(1);
                    }
                    i4 = 1;
                } else if (str2.startsWith("Inode ")) {
                    if (!compile2.matcher(str2).find() || !str3.equals("1")) {
                        z = true;
                        break;
                    }
                    Slog.i("BootReceiver", "fs_stat, partition:" + str + " found tree optimization:" + str2);
                    i4 = 1;
                    z2 = true;
                } else if (str2.startsWith("[QUOTA WARNING]") && str3.equals("5")) {
                    Slog.i("BootReceiver", "fs_stat, partition:" + str + " found quota warning:" + str2);
                    if (!z2) {
                        z = false;
                        z3 = true;
                        break;
                    }
                    i4 = 1;
                    z3 = true;
                } else {
                    if (!str2.startsWith("Update quota info") || !str3.equals("5")) {
                        if (str2.startsWith("Timestamp(s) on inode") && str2.contains("beyond 2310-04-04 are likely pre-1970") && str3.equals("1")) {
                            Slog.i("BootReceiver", "fs_stat, partition:" + str + " found timestamp adjustment:" + str2);
                            int i6 = i5 + 1;
                            if (strArr[i6].contains("Fix? yes")) {
                                i5 = i6;
                            }
                            i4 = 1;
                            z4 = true;
                        } else {
                            str2 = str2.trim();
                            if (!str2.isEmpty() && !str3.isEmpty()) {
                                z = true;
                                break;
                            }
                        }
                    }
                    i4 = 1;
                }
                i5 += i4;
            }
            str2 = null;
            z = false;
            if (z) {
                if (str2 != null) {
                    Slog.i("BootReceiver", "fs_stat, partition:" + str + " fix:" + str2);
                }
            } else if (z3 && !z2) {
                Slog.i("BootReceiver", "fs_stat, got quota fix without tree optimization, partition:" + str);
            } else if ((z2 && z3) || z4) {
                Slog.i("BootReceiver", "fs_stat, partition:" + str + " fix ignored");
                return i & (-1025);
            }
        }
        return i;
    }

    public static void handleFsckFsStat(Matcher matcher, String[] strArr, int i, int i2) {
        String group = matcher.group(1);
        try {
            int fixFsckFsStat = fixFsckFsStat(group, Integer.decode(matcher.group(2)).intValue(), strArr, i, i2);
            if ("userdata".equals(group) || "data".equals(group)) {
                FrameworkStatsLog.write(242, 3, fixFsckFsStat);
            }
            Slog.i("BootReceiver", "fs_stat, partition:" + group + " stat:0x" + Integer.toHexString(fixFsckFsStat));
        } catch (NumberFormatException unused) {
            Slog.w("BootReceiver", "cannot parse fs_stat: partition:" + group + " stat:" + matcher.group(2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x013c, code lost:
    
        if (r2 != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0116, code lost:
    
        if (r7 != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00be, code lost:
    
        if (r7 != false) goto L90;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.HashMap readTimestamps() {
        /*
            Method dump skipped, instructions count: 330
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.BootReceiver.readTimestamps():java.util.HashMap");
    }

    public static void writeTimestamps(HashMap hashMap) {
        AtomicFile atomicFile = sFile;
        synchronized (atomicFile) {
            try {
                try {
                    FileOutputStream startWrite = atomicFile.startWrite();
                    try {
                        TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(startWrite);
                        resolveSerializer.startDocument((String) null, Boolean.TRUE);
                        resolveSerializer.startTag((String) null, "log-files");
                        for (String str : hashMap.keySet()) {
                            resolveSerializer.startTag((String) null, "log");
                            resolveSerializer.attribute((String) null, "filename", str);
                            resolveSerializer.attributeLong((String) null, "timestamp", ((Long) hashMap.get(str)).longValue());
                            resolveSerializer.endTag((String) null, "log");
                        }
                        resolveSerializer.endTag((String) null, "log-files");
                        resolveSerializer.endDocument();
                        sFile.finishWrite(startWrite);
                    } catch (IOException e) {
                        Slog.w("BootReceiver", "Failed to write timestamp file, using the backup: " + e);
                        sFile.failWrite(startWrite);
                    }
                } catch (IOException e2) {
                    Slog.w("BootReceiver", "Failed to write timestamp file: " + e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public ResetReasonFactory getResetReasonFactory() {
        return ResetReasonFactory.getInstance();
    }

    /* loaded from: classes.dex */
    public class ResetReasonFactory {
        public static ResetReasonFactory instance;

        public static ResetReasonFactory getInstance() {
            if (instance == null) {
                instance = new ResetReasonFactory();
            }
            return instance;
        }

        public ResetReasonCode createResetReasonCode(String str) {
            String[] split = str.split("\\|");
            StringBuilder sb = new StringBuilder();
            sb.append("com.android.server.ResetReason");
            sb.append(split.length > 1 ? split[1] : "Unknown");
            try {
                return (ResetReasonCode) Class.forName(sb.toString()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException | NoSuchMethodException e) {
                Slog.w("BootReceiver", "Cannot find class " + e.getMessage());
                return new ResetReasonUnknown();
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
                Slog.w("BootReceiver", "Cannot obtain an instance of parameterless constructor: " + e2.getMessage());
                return new ResetReasonUnknown();
            }
        }
    }
}
