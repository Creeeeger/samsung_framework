package com.samsung.android.hardware.secinputdev.taas;

import android.util.Log;
import com.samsung.android.hardware.secinputdev.SemInputDeviceManagerService;
import com.samsung.android.hardware.secinputdev.device.SemInputDeviceFactory;
import com.samsung.android.hardware.secinputdev.device.Taas;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.StringTokenizer;

/* loaded from: classes.dex */
public class SemInputDeviceHqmData {
    private static final int Case1 = 1;
    private static final int Case2 = 2;
    private static final int Case3 = 3;
    private static final String TAG = "SemInputDeviceHqmData";
    private static final String TSP_CASE1_COUNT = "CASA";
    private static final String TSP_CASE2_COUNT = "CASB";
    private static final String TSP_CASE3_COUNT = "CASC";
    private int mCase1Count;
    private int mCase2Count;
    private int mCase3Count = 0;
    private HashMap<String, Integer> mLoggingData = new HashMap<>();
    private final Taas taas;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.HashMap] */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public SemInputDeviceHqmData() {
        Integer valueOf;
        this.mCase1Count = 0;
        this.mCase2Count = 0;
        Taas taas = (Taas) SemInputDeviceFactory.create("TAAS", 41, 0, "NG");
        this.taas = taas;
        try {
            String read = taas.read();
            ?? r3 = TSP_CASE1_COUNT;
            if (read != null) {
                try {
                    if (!"NG".equals(read)) {
                        try {
                            StringTokenizer stringTokenizer = new StringTokenizer(read);
                            this.mCase1Count = Integer.parseInt(stringTokenizer.nextToken());
                            this.mCase2Count = Integer.parseInt(stringTokenizer.nextToken());
                            Log.d(TAG, "init: mCase1Count:" + this.mCase1Count + " mCase2Count:" + this.mCase2Count);
                            this.mLoggingData.put(TSP_CASE1_COUNT, Integer.valueOf(this.mCase1Count));
                            HashMap<String, Integer> hashMap = this.mLoggingData;
                            valueOf = Integer.valueOf(this.mCase2Count);
                            r3 = hashMap;
                        } catch (Exception e) {
                            SemInputDeviceManagerService.loggingException(TAG, "parseInt", e);
                            this.mLoggingData.put(TSP_CASE1_COUNT, Integer.valueOf(this.mCase1Count));
                            HashMap<String, Integer> hashMap2 = this.mLoggingData;
                            valueOf = Integer.valueOf(this.mCase2Count);
                            r3 = hashMap2;
                        }
                        r3.put(TSP_CASE2_COUNT, valueOf);
                        return;
                    }
                } finally {
                    this.mLoggingData.put(r3, Integer.valueOf(this.mCase1Count));
                    this.mLoggingData.put(TSP_CASE2_COUNT, Integer.valueOf(this.mCase2Count));
                }
            }
            Log.d(TAG, "readTaas init failed");
        } catch (Exception e2) {
            Log.d(TAG, "init: failed to set initial value");
            SemInputDeviceManagerService.loggingException(TAG, "init", e2);
        }
    }

    public void clear() {
        this.mCase1Count = 0;
        this.mCase2Count = 0;
        this.mCase3Count = 0;
    }

    public void increaseCount(int usage, String buf) {
        long mNow = System.currentTimeMillis();
        Date mDate = new Date(mNow);
        SimpleDateFormat mFormat = new SimpleDateFormat("yyyy/MMdd/HH:mm:ss");
        String getTime = mFormat.format(mDate);
        String TaasLog = buf.length() > 160 ? buf.substring(buf.length() - 160, buf.length()) : buf;
        switch (usage) {
            case 1:
                int i = this.mCase1Count;
                if (i < 2147483547) {
                    this.mCase1Count = i + 1;
                } else {
                    this.mCase1Count = 2147483547;
                }
                try {
                    this.mLoggingData.put(TSP_CASE1_COUNT, Integer.valueOf(this.mCase1Count));
                } catch (Exception e) {
                    SemInputDeviceManagerService.loggingException(TAG, "increaseCount:case1", e);
                }
                String tempStr = Integer.toString(this.mCase1Count) + " " + Integer.toString(this.mCase2Count) + " " + getTime + " A " + TaasLog;
                Log.d(TAG, "increaseCount mCase1Count:" + this.mCase1Count + " mCase2Count:" + this.mCase2Count + "tempStr:" + tempStr);
                int ret = this.taas.write(tempStr);
                if (ret < 0) {
                    Log.d(TAG, "writeTaas error case1");
                    break;
                }
                break;
            case 2:
                int i2 = this.mCase2Count;
                if (i2 < 2147483547) {
                    this.mCase2Count = i2 + 1;
                } else {
                    this.mCase2Count = 2147483547;
                }
                try {
                    this.mLoggingData.put(TSP_CASE2_COUNT, Integer.valueOf(this.mCase2Count));
                } catch (Exception e2) {
                    SemInputDeviceManagerService.loggingException(TAG, "increaseCount:case2", e2);
                }
                String tempStr1 = Integer.toString(this.mCase1Count) + " " + Integer.toString(this.mCase2Count) + " " + getTime + " B " + TaasLog;
                Log.d(TAG, "increaseCount mCase1Count:" + this.mCase1Count + " mCase2Count:" + this.mCase2Count + "tempStr1:" + tempStr1);
                int ret2 = this.taas.write(tempStr1);
                if (ret2 < 0) {
                    Log.d(TAG, "writeTaas error case2");
                    break;
                }
                break;
            case 3:
                int i3 = this.mCase3Count;
                if (i3 < 2147483547) {
                    this.mCase3Count = i3 + 1;
                } else {
                    this.mCase3Count = 2147483547;
                }
                String tempStr2 = Integer.toString(this.mCase3Count) + " " + getTime + " C " + TaasLog;
                Log.d(TAG, "increaseCount mCase3Count:" + this.mCase3Count + "tempStr2:" + tempStr2);
                break;
        }
    }

    public int get(String key) {
        if (key == null) {
            return 0;
        }
        return this.mLoggingData.getOrDefault(key, 0).intValue();
    }
}
