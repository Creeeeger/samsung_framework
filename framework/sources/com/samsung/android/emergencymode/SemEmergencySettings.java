package com.samsung.android.emergencymode;

import android.app.ActivityThread;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.os.SemSystemProperties;
import android.telephony.PhoneNumberUtils;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.android.internal.telephony.TelephonyProperties;
import java.util.Arrays;

/* loaded from: classes5.dex */
public class SemEmergencySettings {
    private static final String TAG = "SemEmergencySettings";

    private SemEmergencySettings() {
    }

    public static void put(ContentResolver resolver, String pref, Object value) {
        if (resolver == null || pref == null || value == null) {
            return;
        }
        String selection = "pref='" + pref + "'";
        resolver.delete(SemEmergencyConstants.URI_PREFSETTINGS, selection, null);
        ContentValues values = new ContentValues();
        values.put(SemEmergencyConstants.PREF, pref);
        values.put("value", String.valueOf(value));
        resolver.insert(SemEmergencyConstants.URI_PREFSETTINGS, values);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x006a, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0067, code lost:
    
        if (r1 == null) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String get(android.content.ContentResolver r9, java.lang.String r10) {
        /*
            if (r9 == 0) goto L71
            if (r10 != 0) goto L5
            goto L71
        L5:
            r0 = 0
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r2.<init>()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r3 = "pref='"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.StringBuilder r2 = r2.append(r10)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r3 = "'"
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            android.net.Uri r4 = com.samsung.android.emergencymode.SemEmergencyConstants.URI_PREFSETTINGS     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r5 = 0
            r7 = 0
            r8 = 0
            r3 = r9
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r1 = r2
            if (r1 == 0) goto L46
            int r2 = r1.getCount()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            if (r2 <= 0) goto L46
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r2 = "value"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
            r0 = r2
            r1.close()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L4e
        L46:
            if (r1 == 0) goto L6a
        L48:
            r1.close()
            goto L6a
        L4c:
            r2 = move-exception
            goto L6b
        L4e:
            r2 = move-exception
            java.lang.String r3 = "SemEmergencySettings"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4c
            r4.<init>()     // Catch: java.lang.Throwable -> L4c
            java.lang.String r5 = "Exception "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L4c
            java.lang.StringBuilder r4 = r4.append(r2)     // Catch: java.lang.Throwable -> L4c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L4c
            com.samsung.android.emergencymode.Elog.d(r3, r4)     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L6a
            goto L48
        L6a:
            return r0
        L6b:
            if (r1 == 0) goto L70
            r1.close()
        L70:
            throw r2
        L71:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.emergencymode.SemEmergencySettings.get(android.content.ContentResolver, java.lang.String):java.lang.String");
    }

    public static int getInt(ContentResolver resolver, String pref, int defaultValue) {
        String ret = get(resolver, pref);
        try {
            return Integer.parseInt(ret);
        } catch (Exception e) {
            Elog.d(TAG, "Exception " + e);
            return defaultValue;
        }
    }

    public static boolean getBoolean(ContentResolver resolver, String pref, boolean defaultValue) {
        String ret = get(resolver, pref);
        if (ret == null) {
            return defaultValue;
        }
        return Boolean.parseBoolean(ret);
    }

    public static String getString(ContentResolver resolver, String pref, String defaultValue) {
        String ret = get(resolver, pref);
        if (ret == null) {
            return defaultValue;
        }
        return ret;
    }

    public static long getLong(ContentResolver resolver, String pref, long defaultValue) {
        String ret = get(resolver, pref);
        try {
            return Long.parseLong(ret);
        } catch (Exception e) {
            Elog.d(TAG, "Exception " + e);
            return defaultValue;
        }
    }

    public static double getDouble(ContentResolver resolver, String pref, double defaultValue) {
        String ret = get(resolver, pref);
        try {
            return Double.parseDouble(ret);
        } catch (Exception e) {
            Elog.d(TAG, "Exception " + e);
            return defaultValue;
        }
    }

    @Deprecated
    public static String getEmergencyNumber(ContentResolver resolver, String type) {
        Context context = ActivityThread.currentApplication().getApplicationContext();
        return getEmergencyNumber(context, resolver, type);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003a, code lost:
    
        if (r11 != 1) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x012c, code lost:
    
        if ("China".equalsIgnoreCase(r0) != false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return "119";
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
    
        return "911";
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00f4, code lost:
    
        if ("China".equalsIgnoreCase(r0) != false) goto L143;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String getEmergencyNumber(android.content.Context r20, android.content.ContentResolver r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.emergencymode.SemEmergencySettings.getEmergencyNumber(android.content.Context, android.content.ContentResolver, java.lang.String):java.lang.String");
    }

    private static String checkForMCC() {
        String[] arrIsReady;
        String mccmn = SemSystemProperties.get(TelephonyProperties.PROPERTY_ICC_OPERATOR_NUMERIC);
        String isReady = SemSystemProperties.get(TelephonyProperties.PROPERTY_SIM_STATE);
        Elog.d(TAG, "checkForMCC: gsm.sim.operator.numeric mccmn= " + mccmn + isReady);
        if (mccmn == null || TextUtils.isEmpty(mccmn)) {
            return null;
        }
        String[] arrMcc = mccmn.split(",");
        if (isReady == null) {
            arrIsReady = null;
        } else {
            arrIsReady = isReady.split(",");
        }
        int simCount = arrMcc.length;
        String[] mcc1 = new String[2];
        for (int i = 0; i < simCount; i++) {
            if (arrMcc[i] != null && arrMcc[i].length() > 2) {
                mcc1[i] = arrMcc[i].substring(0, 3);
            } else {
                mcc1[i] = null;
            }
        }
        int size_readystate = arrIsReady.length;
        String arrIsReadyValue = Arrays.toString(arrIsReady);
        if (size_readystate > 0 && arrIsReady[0].equals("READY")) {
            Elog.d(TAG, "checkForMCC: requested Country : mcc1[0] " + mcc1[0] + " sim ready = " + arrIsReady[0]);
            return mcc1[0];
        }
        if (size_readystate > 1 && arrIsReady[1].equals("READY")) {
            Elog.d(TAG, "checkForMCC: requested Country : mcc1[1] " + mcc1[1] + " sim ready = " + arrIsReady[1]);
            return mcc1[1];
        }
        if (simCount > 0 && mcc1[0] != null) {
            Elog.d(TAG, "checkForMCC: requested Country : mcc1[0] " + mcc1[0] + " sim ready = " + arrIsReadyValue);
            return mcc1[0];
        }
        if (simCount > 1 && mcc1[1] != null) {
            Elog.d(TAG, "checkForMCC: requested Country : mcc1[1] " + mcc1[1] + " sim ready = " + arrIsReadyValue);
            return mcc1[1];
        }
        Elog.d(TAG, "checkForMCC: requested Country : default cond. sim ready = " + arrIsReadyValue);
        return null;
    }

    private static int getSubId(Context context, int slotId) {
        SubscriptionInfo info;
        SubscriptionManager sm = SubscriptionManager.from(context);
        if (sm != null && (info = sm.getActiveSubscriptionInfoForSimSlotIndex(slotId)) != null) {
            return info.getSubscriptionId();
        }
        return 0;
    }

    private static String makeEmergencyNumber(Context context, String number, boolean isReady) {
        if (PhoneNumberUtils.isEmergencyNumber(number)) {
            Elog.d(TAG, "This is Emergency number");
            return number;
        }
        if (isReady && isPossibleNormalCall(context)) {
            Elog.d(TAG, "SIM Ready, not emergency number.");
            return number;
        }
        Elog.d(TAG, "SIM Ready = " + isReady + ", default emergency number.");
        return null;
    }

    private static boolean isPossibleNormalCall(Context context) {
        try {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                if (telephonyManager.getServiceState().getState() != 0) {
                    return false;
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        } catch (Throwable th) {
            return false;
        }
    }
}
