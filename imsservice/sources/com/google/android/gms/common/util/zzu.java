package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzu {
    private static String zzglf;
    private static final int zzglg = Process.myPid();

    public static String zzany() {
        if (zzglf == null) {
            zzglf = zzci(zzglg);
        }
        return zzglf;
    }

    private static String zzci(int i) {
        BufferedReader bufferedReader;
        StrictMode.ThreadPolicy allowThreadDiskReads;
        BufferedReader bufferedReader2 = null;
        r0 = null;
        String str = null;
        if (i <= 0) {
            return null;
        }
        try {
            allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        } catch (IOException unused) {
            bufferedReader = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReader = new BufferedReader(new FileReader(sb.toString()));
            try {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                str = bufferedReader.readLine().trim();
            } catch (IOException unused2) {
            } catch (Throwable th2) {
                th = th2;
                bufferedReader2 = bufferedReader;
                zzp.closeQuietly(bufferedReader2);
                throw th;
            }
            zzp.closeQuietly(bufferedReader);
            return str;
        } finally {
        }
    }
}
