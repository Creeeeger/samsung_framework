package com.android.server.sepunion.cover;

import android.content.Context;
import android.content.Intent;
import android.os.UserHandle;
import com.samsung.android.cover.CoverState;
import com.samsung.android.os.SemDvfsManager;
import com.samsung.android.sepunion.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class CoverManagerUtils {
    public static final String TAG = "CoverManager_" + CoverManagerUtils.class.getSimpleName();
    public static SemDvfsManager sCoverCpuBooster = null;
    public static SemDvfsManager sCoverCoreNumLockHelper = null;
    public static SemDvfsManager sCoverBusBooster = null;
    public static int BOOSTING_TIMEOUT = 2000;
    public static final boolean isSupportWirelessCharge = isSupportWirelessCharge();

    public static boolean isCoverTypeForWirelessCharger(int i) {
        return i == 7 || i == 8 || i == 14 || i == 15 || i == 16 || i == 0 || i == 17;
    }

    public static boolean needsCPUBoostCover(int i) {
        if (i == 8) {
            return true;
        }
        switch (i) {
            case 15:
            case 16:
            case 17:
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
    
        if (r0 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0035, code lost:
    
        if (r0 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getValueFromSysFS(java.lang.String r4, int r5) {
        /*
            boolean r0 = isFileExists(r4)
            if (r0 == 0) goto L3e
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L2e java.lang.NumberFormatException -> L35 java.io.IOException -> L3b
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L2e java.lang.NumberFormatException -> L35 java.io.IOException -> L3b
            r4 = 15
            char[] r4 = new char[r4]     // Catch: java.lang.Throwable -> L27 java.lang.NumberFormatException -> L2a java.io.IOException -> L2c
            int r0 = r1.read(r4)     // Catch: java.lang.Throwable -> L27 java.lang.NumberFormatException -> L2a java.io.IOException -> L2c
            if (r0 <= 0) goto L23
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Throwable -> L27 java.lang.NumberFormatException -> L2a java.io.IOException -> L2c
            int r0 = r0 + (-1)
            r3 = 0
            r2.<init>(r4, r3, r0)     // Catch: java.lang.Throwable -> L27 java.lang.NumberFormatException -> L2a java.io.IOException -> L2c
            int r4 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L27 java.lang.NumberFormatException -> L2a java.io.IOException -> L2c
            r5 = r4
        L23:
            r1.close()     // Catch: java.io.IOException -> L3e
            goto L3e
        L27:
            r4 = move-exception
            r0 = r1
            goto L2f
        L2a:
            r0 = r1
            goto L35
        L2c:
            r0 = r1
            goto L3b
        L2e:
            r4 = move-exception
        L2f:
            if (r0 == 0) goto L34
            r0.close()     // Catch: java.io.IOException -> L34
        L34:
            throw r4
        L35:
            if (r0 == 0) goto L3e
        L37:
            r0.close()     // Catch: java.io.IOException -> L3e
            goto L3e
        L3b:
            if (r0 == 0) goto L3e
            goto L37
        L3e:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.sepunion.cover.CoverManagerUtils.getValueFromSysFS(java.lang.String, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
    
        if (r0 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r0 == null) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getValueFromSysFS(java.lang.String r4, java.lang.String r5) {
        /*
            boolean r0 = isFileExists(r4)
            if (r0 == 0) goto L3a
            r0 = 0
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L2a java.lang.NumberFormatException -> L31 java.io.IOException -> L37
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L2a java.lang.NumberFormatException -> L31 java.io.IOException -> L37
            r4 = 15
            char[] r4 = new char[r4]     // Catch: java.lang.Throwable -> L23 java.lang.NumberFormatException -> L26 java.io.IOException -> L28
            int r0 = r1.read(r4)     // Catch: java.lang.Throwable -> L23 java.lang.NumberFormatException -> L26 java.io.IOException -> L28
            if (r0 <= 0) goto L1f
            java.lang.String r2 = new java.lang.String     // Catch: java.lang.Throwable -> L23 java.lang.NumberFormatException -> L26 java.io.IOException -> L28
            int r0 = r0 + (-1)
            r3 = 0
            r2.<init>(r4, r3, r0)     // Catch: java.lang.Throwable -> L23 java.lang.NumberFormatException -> L26 java.io.IOException -> L28
            r5 = r2
        L1f:
            r1.close()     // Catch: java.io.IOException -> L3a
            goto L3a
        L23:
            r4 = move-exception
            r0 = r1
            goto L2b
        L26:
            r0 = r1
            goto L31
        L28:
            r0 = r1
            goto L37
        L2a:
            r4 = move-exception
        L2b:
            if (r0 == 0) goto L30
            r0.close()     // Catch: java.io.IOException -> L30
        L30:
            throw r4
        L31:
            if (r0 == 0) goto L3a
        L33:
            r0.close()     // Catch: java.io.IOException -> L3a
            goto L3a
        L37:
            if (r0 == 0) goto L3a
            goto L33
        L3a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.sepunion.cover.CoverManagerUtils.getValueFromSysFS(java.lang.String, java.lang.String):java.lang.String");
    }

    public static boolean isFileExists(String str) {
        return new File(str).exists();
    }

    public static boolean isSamsungCover(CoverState coverState) {
        return coverState.getType() != 2 && coverState.getFriendsType() == 0;
    }

    public static boolean isClearCover(CoverState coverState) {
        int type = coverState.getType();
        return type == 8 || type == 15 || type == 16 || type == 17;
    }

    public static boolean isBackCover(CoverState coverState) {
        int type = coverState.getType();
        return type == 9 || type == 10 || type == 14 || type == 13 || type == 12;
    }

    public static void performCPUBoostCover(Context context) {
        int[] supportedFrequency;
        int[] supportedFrequency2;
        int i;
        int[] supportedFrequency3;
        if (sCoverCpuBooster == null) {
            SemDvfsManager createInstance = SemDvfsManager.createInstance(context, "COVER_BOOSTER", 12);
            sCoverCpuBooster = createInstance;
            if (createInstance != null && (supportedFrequency3 = createInstance.getSupportedFrequency()) != null) {
                sCoverCpuBooster.setDvfsValue(supportedFrequency3[0]);
            }
        }
        SemDvfsManager semDvfsManager = sCoverCpuBooster;
        if (semDvfsManager != null) {
            try {
                semDvfsManager.acquire(BOOSTING_TIMEOUT);
            } catch (Exception e) {
                Log.e(TAG, "sCoverCpuBooster.acquire is failed", e);
            }
        }
        if (sCoverCoreNumLockHelper == null) {
            SemDvfsManager createInstance2 = SemDvfsManager.createInstance(context, "COVER_CORE_BOOSTER", 14);
            sCoverCoreNumLockHelper = createInstance2;
            if (createInstance2 != null && (supportedFrequency2 = createInstance2.getSupportedFrequency()) != null && supportedFrequency2.length > 0 && (i = supportedFrequency2[0]) >= 2) {
                sCoverCoreNumLockHelper.setDvfsValue(i);
            }
        }
        SemDvfsManager semDvfsManager2 = sCoverCoreNumLockHelper;
        if (semDvfsManager2 != null) {
            try {
                semDvfsManager2.acquire(BOOSTING_TIMEOUT);
            } catch (Exception e2) {
                Log.e(TAG, "sCoverCoreNumLockHelper.acquire is failed", e2);
            }
        }
        if (sCoverBusBooster == null) {
            SemDvfsManager createInstance3 = SemDvfsManager.createInstance(context, "COVER_BUS_BOOSTER", 19);
            sCoverBusBooster = createInstance3;
            if (createInstance3 != null && (supportedFrequency = createInstance3.getSupportedFrequency()) != null && supportedFrequency.length > 0) {
                sCoverBusBooster.setDvfsValue(supportedFrequency[0]);
            }
        }
        SemDvfsManager semDvfsManager3 = sCoverBusBooster;
        if (semDvfsManager3 != null) {
            try {
                semDvfsManager3.acquire(BOOSTING_TIMEOUT);
            } catch (Exception e3) {
                Log.e(TAG, "sCoverBusBooster.acquire is failed", e3);
            }
        }
    }

    public static void sendCoverInformationToAgent(Context context, String str, boolean z) {
        if (!Feature.getInstance(context).isNfcAuthEnabled()) {
            str = getValueFromSysFS("/sys/devices/w1_bus_master1/w1_master_check_sn", (String) null);
        }
        if (str != null) {
            Intent intent = new Intent("com.samsung.android.intent.action.COVER_ATTACHED");
            intent.setClassName("com.sec.android.soagent", "com.sec.android.soagent.receiver.PhoneCoverReceiver");
            intent.putExtra("isBoot", z);
            intent.putExtra("serialNumber", str);
            context.sendBroadcastAsUser(intent, UserHandle.CURRENT, "com.samsung.android.permission.COVER");
            Log.d(TAG, "sendCoverInformationToAgent : broadcast !!");
        }
    }

    public static boolean isSupportWirelessCharge() {
        String valueFromSysFS = getValueFromSysFS("/sys/class/power_supply/wireless/present", "0");
        if (valueFromSysFS == null) {
            Log.d(TAG, "Feature for Wireless Charge is NOT existed");
            return false;
        }
        if ("0".equals(valueFromSysFS.trim())) {
            Log.d(TAG, "Wireless Charge is NOT Supported");
            return false;
        }
        Log.d(TAG, "Wireless Charge is Supported: Type " + valueFromSysFS);
        return true;
    }

    public static boolean fileWriteInt(String str, int i) {
        String str2 = TAG;
        Log.d(str2, "fileWriteInt to " + str + ", " + i);
        if (i != 0 && i != 1) {
            Log.e(str2, "Invalid value : " + i);
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(new File(str));
                try {
                    fileOutputStream2.write(Integer.toString(i).getBytes());
                    fileOutputStream2.close();
                    return true;
                } catch (IOException e) {
                    e = e;
                    fileOutputStream = fileOutputStream2;
                    e.printStackTrace();
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return false;
                    }
                }
            } catch (FileNotFoundException e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (IOException e4) {
            e = e4;
        }
    }
}
