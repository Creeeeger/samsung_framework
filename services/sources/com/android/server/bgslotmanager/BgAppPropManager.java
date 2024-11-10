package com.android.server.bgslotmanager;

import android.os.Bundle;
import android.os.SemSystemProperties;
import android.os.SystemProperties;
import android.util.Slog;
import com.android.server.am.DynamicHiddenApp;
import com.android.server.am.ProcessList;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class BgAppPropManager {
    public DynamicHiddenApp mDynamicHiddenApp;
    public ProcessList mProcessList;
    public static final long mTotalMemMb = MemInfoGetter.getTotalMemoryMB();
    public static int TOTAL_MEMORY_2ND = Integer.parseInt(SystemProperties.get("ro.slmk.dha_2ndprop_thMB", "4096"));
    public static int TOTAL_MEMORY_3RD = Integer.parseInt(SystemProperties.get("ro.slmk.3rd.over_thMB", "9999999"));

    public BgAppPropManager(ProcessList processList, DynamicHiddenApp dynamicHiddenApp) {
        this.mProcessList = processList;
        this.mDynamicHiddenApp = dynamicHiddenApp;
    }

    public static void setSystemPropertyString(String str, String str2) {
        SystemProperties.set(str, str2);
    }

    public static String getSystemPropertyString(String str, String str2) {
        return SystemProperties.get(str, str2);
    }

    public static int getSemSystemPropertyInt(String str, String str2) {
        return SemSystemProperties.getInt(str, Integer.parseInt(str2));
    }

    public static String getSlmkPropertyString(String str, String str2) {
        String str3 = SystemProperties.get("ro.slmk." + str, str2);
        long j = mTotalMemMb;
        if (j > TOTAL_MEMORY_2ND) {
            str3 = SystemProperties.get("ro.slmk.2nd." + str, str3);
        }
        if (j <= TOTAL_MEMORY_3RD) {
            return str3;
        }
        return SystemProperties.get("ro.slmk.3rd." + str, str3);
    }

    public static boolean getSlmkPropertyBool(String str, String str2) {
        return Boolean.parseBoolean(getSlmkPropertyString(str, str2));
    }

    public static int getSlmkPropertyInt(String str, String str2) {
        return Integer.parseInt(getSlmkPropertyString(str, str2));
    }

    public static float getSlmkPropertyFloat(String str, String str2) {
        return Float.parseFloat(getSlmkPropertyString(str, str2));
    }

    public void dumpLMKDParameter(PrintWriter printWriter) {
        printWriter.println("  DHA_CACHE_MIN: " + BGSlotManager.MIN_CACHED_APPS);
        printWriter.println("  DHA_CACHE_MAX: " + BGSlotManager.MAX_CACHED_APPS);
        printWriter.println("  DHA_EMPTY_MIN: " + BGSlotManager.MIN_EMPTY_APPS);
        printWriter.println("  DHA_EMPTY_MAX: " + BGSlotManager.MAX_EMPTY_APPS);
        this.mDynamicHiddenApp.printAmcCachedEmpty(printWriter);
        printWriter.println();
        printWriter.println("  LMKD_enable_userspace_lmk " + DynamicHiddenApp.LMK_ENABLE_USERSPACE_LMK);
        printWriter.println("  LMKD_use_minfree_levels " + DynamicHiddenApp.LMK_USE_MINFREE_LEVELS);
        printWriter.println("  LMKD_enable_upgrade_criadj " + DynamicHiddenApp.LMK_ENABLE_UPGRADE_CRIADJ);
        printWriter.println("  LMKD_freelimit_enable " + DynamicHiddenApp.LMK_FREELIMIT_ENABLE);
        printWriter.println("  LMKD_freelimit_val " + DynamicHiddenApp.LMK_FREELIMIT_VAL);
        printWriter.println("  LMKD_upgrade_pressure " + DynamicHiddenApp.LMK_UPGRADE_PRESSURE);
        printWriter.println("  LMKD_custom_sw_limit " + DynamicHiddenApp.LMK_CUSTOM_SW_LIMIT);
        printWriter.println("  LMKD_custom_tm_limit " + DynamicHiddenApp.LMK_CUSTOM_TM_LIMIT);
        printWriter.println("  LMKD_psi_medium_th " + DynamicHiddenApp.LMK_PSI_MEDIUM_TH);
        printWriter.println("  LMKD_psi_critical_th " + DynamicHiddenApp.LMK_PSI_CRITICAL_TH);
        printWriter.println("  LMKD_use_lowmem_keep_except " + DynamicHiddenApp.LMK_LOW_MEM_KEEP_ENABLE);
        this.mDynamicHiddenApp.printLowMemDectectorEnable(printWriter);
        this.mDynamicHiddenApp.printAppCompactorEnable(printWriter);
        printWriter.println();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0082 -> B:18:0x008e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x007d -> B:18:0x008e). Please report as a decompilation issue!!! */
    public void updateParamsFile() {
        String readLine;
        BufferedReader bufferedReader = null;
        BufferedReader bufferedReader2 = null;
        BufferedReader bufferedReader3 = null;
        BufferedReader bufferedReader4 = null;
        bufferedReader = null;
        bufferedReader = null;
        try {
        } catch (IOException e) {
            e.printStackTrace();
            bufferedReader = bufferedReader;
        } catch (NullPointerException e2) {
            e2.printStackTrace();
            bufferedReader = bufferedReader;
        }
        try {
            try {
                Slog.i("DynamicHiddenApp_BgAppPropManager", "Start updateParamsFile");
                FileReader fileReader = new FileReader("/data/log/dha_parameter.dat");
                Slog.i("DynamicHiddenApp_BgAppPropManager", "updateParamsFile dha_parameter.dat exist");
                BufferedReader bufferedReader5 = new BufferedReader(fileReader);
                while (true) {
                    try {
                        readLine = bufferedReader5.readLine();
                        if (readLine == null) {
                            break;
                        }
                        if (!readLine.isEmpty() && !readLine.trim().equals("") && !readLine.trim().equals(KnoxVpnFirewallHelper.DELIMITER_IP_RESTORE)) {
                            updateTuningParameter(readLine.split("[=:]")[0].trim(), readLine.split("[=:]")[1].trim());
                        }
                    } catch (FileNotFoundException unused) {
                        bufferedReader2 = bufferedReader5;
                        Slog.w("DynamicHiddenApp_BgAppPropManager", "file does not exist");
                        bufferedReader2.close();
                        bufferedReader = bufferedReader2;
                    } catch (IOException e3) {
                        e = e3;
                        bufferedReader3 = bufferedReader5;
                        e.printStackTrace();
                        bufferedReader3.close();
                        bufferedReader = bufferedReader3;
                    } catch (ArrayIndexOutOfBoundsException e4) {
                        e = e4;
                        bufferedReader4 = bufferedReader5;
                        e.printStackTrace();
                        bufferedReader4.close();
                        bufferedReader = bufferedReader4;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader5;
                        try {
                            bufferedReader.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        } catch (NullPointerException e6) {
                            e6.printStackTrace();
                        }
                        throw th;
                    }
                }
                bufferedReader5.close();
                bufferedReader = readLine;
            } catch (FileNotFoundException unused2) {
            } catch (IOException e7) {
                e = e7;
            } catch (ArrayIndexOutOfBoundsException e8) {
                e = e8;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void updateParamsIntent(Bundle bundle) {
        Slog.i("DynamicHiddenApp_BgAppPropManager", "Start updateParamsIntent");
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                updateTuningParameter(str, obj.toString());
            } else {
                Slog.w("DynamicHiddenApp_BgAppPropManager", str + " - value is null");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x040e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateTuningParameter(java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1111
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.bgslotmanager.BgAppPropManager.updateTuningParameter(java.lang.String, java.lang.String):void");
    }
}
