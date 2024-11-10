package com.android.server.power;

import android.os.FileUtils;
import android.os.Process;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public abstract class Slog {
    static ArrayList sLogList = new ArrayList(500);

    public static String getFileName(boolean z) {
        return z ? "/data/log/Last.kpsn" : "/data/log/Latest.kpsn";
    }

    public static synchronized void addPMSLogList(String str) {
        synchronized (Slog.class) {
            if (sLogList.size() >= 500) {
                return;
            }
            sLogList.add(TimeUtil.getCurrentTimeToLoggingFormat() + "  " + Process.myTid() + " " + str);
        }
    }

    public static synchronized void dump(PrintWriter printWriter) {
        synchronized (Slog.class) {
            if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
                printWriter.println(joiningListToString());
                printWriter.println("size : " + sLogList.size());
            } else {
                printWriter.println("Pass savePMSLog");
            }
        }
    }

    public static synchronized void saveLogAsFile(boolean z) {
        synchronized (Slog.class) {
            if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
                if (sLogList.isEmpty()) {
                    i("PMS_SLog", "Normal_log size is zero");
                } else {
                    try {
                        FileUtils.stringToFile(new File(getFileName(z)), joiningListToString());
                    } catch (IOException unused) {
                    }
                }
            } else {
                i("PMS_SLog", "Pass savePMSLog");
            }
        }
    }

    public static String joiningListToString() {
        return String.join(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE, sLogList);
    }

    public static int dk(String str, String str2) {
        return d(str, "!@" + str2);
    }

    public static int ik(String str, String str2) {
        return i(str, "!@" + str2);
    }

    public static int v(String str, String str2) {
        if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
            addPMSLogList("V " + str + ": " + str2);
        }
        return android.util.Slog.v(str, str2);
    }

    public static int d(String str, String str2) {
        if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
            addPMSLogList("D " + str + ": " + str2);
        }
        return android.util.Slog.d(str, str2);
    }

    public static int i(String str, String str2) {
        if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
            addPMSLogList("I " + str + ": " + str2);
        }
        return android.util.Slog.i(str, str2);
    }

    public static int w(String str, String str2) {
        if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
            addPMSLogList("W " + str + ": " + str2);
        }
        return android.util.Slog.w(str, str2);
    }

    public static int w(String str, String str2, Throwable th) {
        if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
            addPMSLogList("W " + str + ": " + str2);
        }
        return android.util.Slog.w(str, str2, th);
    }

    public static int e(String str, String str2) {
        if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
            addPMSLogList("E " + str + ": " + str2);
        }
        return android.util.Slog.e(str, str2);
    }

    public static int e(String str, String str2, Throwable th) {
        if (PowerManagerUtil.SEC_FEATURE_USE_PMS_LOG) {
            addPMSLogList("E " + str + ": " + str2);
        }
        return android.util.Slog.e(str, str2, th);
    }

    public static int wtf(String str, String str2) {
        return android.util.Slog.wtf(str, str2);
    }

    public static int wtf(String str, Throwable th) {
        return android.util.Slog.wtf(str, th);
    }

    public static int wtf(String str, String str2, Throwable th) {
        return android.util.Slog.wtf(str, str2, th);
    }

    /* loaded from: classes3.dex */
    public abstract class TimeUtil {
        public static final DateTimeFormatter FORMATTER = DateTimeFormatter.ofPattern("MM-dd HH:mm:ss.SSS");

        public static LocalDateTime now() {
            return LocalDateTime.now();
        }

        public static String getCurrentTimeToLoggingFormat() {
            return now().format(FORMATTER);
        }
    }
}
