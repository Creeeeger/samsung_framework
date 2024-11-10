package com.android.server.chimera.umr;

import android.os.StrictMode;
import android.util.Slog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public abstract class KernelMemoryProxy$ReclaimerLog {
    public static boolean RECLAIMER_LOG_SUPPORT = true;
    public static boolean RECLAIMER_LOG_SUPPORT_CHECKED = false;
    public static String reclaimerLogPath = "/proc/reclaimer_log";

    public static boolean reclaimerLogSupported() {
        if (!RECLAIMER_LOG_SUPPORT_CHECKED) {
            RECLAIMER_LOG_SUPPORT_CHECKED = true;
            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
            if (!new File(reclaimerLogPath).exists()) {
                RECLAIMER_LOG_SUPPORT = false;
            }
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
        return RECLAIMER_LOG_SUPPORT;
    }

    public static void write(String str, boolean z) {
        if (z) {
            Slog.i("UMR", str);
        }
        if (reclaimerLogSupported()) {
            StrictMode.ThreadPolicy allowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
            OutputStreamWriter outputStreamWriter = null;
            try {
                try {
                    try {
                        OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(new FileOutputStream(reclaimerLogPath), StandardCharsets.UTF_8);
                        try {
                            outputStreamWriter2.write("UMR: " + str);
                            outputStreamWriter2.close();
                        } catch (Exception e) {
                            e = e;
                            outputStreamWriter = outputStreamWriter2;
                            e.printStackTrace();
                            if (outputStreamWriter != null) {
                                outputStreamWriter.close();
                            }
                            StrictMode.setThreadPolicy(allowThreadDiskWrites);
                        } catch (Throwable th) {
                            th = th;
                            outputStreamWriter = outputStreamWriter2;
                            if (outputStreamWriter != null) {
                                try {
                                    outputStreamWriter.close();
                                } catch (Exception unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Exception unused2) {
            }
            StrictMode.setThreadPolicy(allowThreadDiskWrites);
        }
    }

    public static void write(String str) {
        write(str, true);
    }
}
