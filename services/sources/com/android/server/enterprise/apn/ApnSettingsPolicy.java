package com.android.server.enterprise.apn;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.SystemProperties;
import android.provider.Settings;
import android.provider.Telephony;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.server.enterprise.EnterpriseServiceCallback;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.EnterpriseDeviceManager;
import com.samsung.android.knox.KnoxInternalFeature;
import com.samsung.android.knox.net.apn.IApnSettingsPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class ApnSettingsPolicy extends IApnSettingsPolicy.Stub implements EnterpriseServiceCallback {
    public static int AUTH_TYPE_NOTSET = -1;
    public Context mContext;
    public boolean dunRequired = false;
    public EnterpriseDeviceManager mEDM = null;
    public int mMDMConfigVersion = KnoxInternalFeature.KNOX_CONFIG_MDM_VERSION;
    public HashMap mPendingGetApnList = new HashMap();

    /* loaded from: classes2.dex */
    public abstract class Carriers {
        public static final Uri CONTENT_URI = Uri.parse("content://telephony/carriers");
        public static final Uri PREFERAPN_URI = Uri.parse("content://telephony/carriers/preferapn");
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void notifyToAddSystemService(String str, IBinder iBinder) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminAdded(int i) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onAdminRemoved(int i) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void onPreAdminRemoval(int i) {
    }

    @Override // com.android.server.enterprise.EnterpriseServiceCallback
    public void systemReady() {
    }

    public final EnterpriseDeviceManager getEDM() {
        if (this.mEDM == null) {
            this.mEDM = EnterpriseDeviceManager.getInstance(this.mContext);
        }
        return this.mEDM;
    }

    public final ContextInfo enforceOwnerOnlyAndApnPermission(ContextInfo contextInfo) {
        return getEDM().enforceOwnerOnlyAndActiveAdminPermission(contextInfo, new ArrayList(Arrays.asList("com.samsung.android.knox.permission.KNOX_APN")));
    }

    public ApnSettingsPolicy(Context context) {
        this.mContext = context;
    }

    public synchronized boolean setPreferredApn(ContextInfo contextInfo, long j) {
        boolean z;
        enforceOwnerOnlyAndApnPermission(contextInfo);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            try {
                if (0 != j && 0 > j) {
                    Log.w("ApnSettingsPolicyService", "setPreferedAp() : invalid ap Id " + j);
                } else if (isValidApnId(j)) {
                    ContentValues contentValues = new ContentValues();
                    if (0 == j) {
                        j = -1;
                    }
                    contentValues.put("apn_id", Long.valueOf(j));
                    int update = this.mContext.getContentResolver().update(Carriers.PREFERAPN_URI, contentValues, null, null);
                    z = update > 0;
                    Log.w("ApnSettingsPolicyService", "setPreferedAp() row count : " + update);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
        return z;
    }

    public synchronized boolean deleteApn(ContextInfo contextInfo, long j) {
        enforceOwnerOnlyAndApnPermission(contextInfo);
        long clearCallingIdentity = Binder.clearCallingIdentity();
        if (1 > j) {
            Log.w("ApnSettingsPolicyService", "deleteAp : apId is invalid");
            return false;
        }
        int i = -1;
        try {
            try {
                i = this.mContext.getContentResolver().delete(ContentUris.withAppendedId(Carriers.CONTENT_URI, j), null, null);
                Log.w("ApnSettingsPolicyService", "deleteAp : deleted rowCount from ApTable : " + i);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return i > 0;
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:163:0x0167, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x01bc, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013c, code lost:
    
        if (1 <= r5) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0140, code lost:
    
        r23 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0142, code lost:
    
        android.util.Log.w("ApnSettingsPolicyService", "addUpdateAp() : invalid ap Id " + r5);
     */
    /* JADX WARN: Not initialized variable reg: 24, insn: 0x0389: INVOKE (r24 I:long) STATIC call: android.os.Binder.restoreCallingIdentity(long):void A[Catch: all -> 0x039b, MD:(long):void (c)], block:B:157:0x0389 */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0274 A[Catch: all -> 0x037f, Exception -> 0x0381, TryCatch #3 {Exception -> 0x0381, blocks: (B:90:0x01c6, B:92:0x01d8, B:94:0x01de, B:95:0x01ee, B:99:0x0232, B:100:0x0243, B:102:0x0274, B:103:0x027b, B:110:0x029f, B:111:0x02b8, B:114:0x02c4, B:116:0x02cc, B:118:0x02d4, B:120:0x02e4, B:121:0x02f4, B:123:0x0304, B:124:0x0314, B:127:0x032c, B:131:0x033f, B:136:0x034c, B:140:0x0366, B:142:0x0372, B:143:0x029d, B:149:0x02af), top: B:89:0x01c6, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02e4 A[Catch: all -> 0x037f, Exception -> 0x0381, TryCatch #3 {Exception -> 0x0381, blocks: (B:90:0x01c6, B:92:0x01d8, B:94:0x01de, B:95:0x01ee, B:99:0x0232, B:100:0x0243, B:102:0x0274, B:103:0x027b, B:110:0x029f, B:111:0x02b8, B:114:0x02c4, B:116:0x02cc, B:118:0x02d4, B:120:0x02e4, B:121:0x02f4, B:123:0x0304, B:124:0x0314, B:127:0x032c, B:131:0x033f, B:136:0x034c, B:140:0x0366, B:142:0x0372, B:143:0x029d, B:149:0x02af), top: B:89:0x01c6, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0304 A[Catch: all -> 0x037f, Exception -> 0x0381, TryCatch #3 {Exception -> 0x0381, blocks: (B:90:0x01c6, B:92:0x01d8, B:94:0x01de, B:95:0x01ee, B:99:0x0232, B:100:0x0243, B:102:0x0274, B:103:0x027b, B:110:0x029f, B:111:0x02b8, B:114:0x02c4, B:116:0x02cc, B:118:0x02d4, B:120:0x02e4, B:121:0x02f4, B:123:0x0304, B:124:0x0314, B:127:0x032c, B:131:0x033f, B:136:0x034c, B:140:0x0366, B:142:0x0372, B:143:0x029d, B:149:0x02af), top: B:89:0x01c6, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0372 A[Catch: all -> 0x037f, Exception -> 0x0381, TRY_LEAVE, TryCatch #3 {Exception -> 0x0381, blocks: (B:90:0x01c6, B:92:0x01d8, B:94:0x01de, B:95:0x01ee, B:99:0x0232, B:100:0x0243, B:102:0x0274, B:103:0x027b, B:110:0x029f, B:111:0x02b8, B:114:0x02c4, B:116:0x02cc, B:118:0x02d4, B:120:0x02e4, B:121:0x02f4, B:123:0x0304, B:124:0x0314, B:127:0x032c, B:131:0x033f, B:136:0x034c, B:140:0x0366, B:142:0x0372, B:143:0x029d, B:149:0x02af), top: B:89:0x01c6, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019a A[Catch: Exception -> 0x0167, all -> 0x039b, TryCatch #1 {Exception -> 0x0167, blocks: (B:59:0x0142, B:60:0x0159, B:62:0x015f, B:63:0x0169, B:65:0x016f, B:67:0x0178, B:70:0x0187, B:75:0x019a, B:77:0x01a4, B:159:0x01b1, B:161:0x0190, B:162:0x017e), top: B:58:0x0142 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a4 A[Catch: Exception -> 0x0167, all -> 0x039b, TryCatch #1 {Exception -> 0x0167, blocks: (B:59:0x0142, B:60:0x0159, B:62:0x015f, B:63:0x0169, B:65:0x016f, B:67:0x0178, B:70:0x0187, B:75:0x019a, B:77:0x01a4, B:159:0x01b1, B:161:0x0190, B:162:0x017e), top: B:58:0x0142 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized long addUpdateApn(com.samsung.android.knox.ContextInfo r29, boolean r30, com.samsung.android.knox.net.apn.ApnSettings r31) {
        /*
            Method dump skipped, instructions count: 926
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.apn.ApnSettingsPolicy.addUpdateApn(com.samsung.android.knox.ContextInfo, boolean, com.samsung.android.knox.net.apn.ApnSettings):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ee, code lost:
    
        if (r0.getString(2).equals("mms") != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0102, code lost:
    
        if (r0 == null) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isValidApnId(long r12) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.apn.ApnSettingsPolicy.isValidApnId(long):boolean");
    }

    public List getApnList(ContextInfo contextInfo, int i) {
        enforceOwnerOnlyAndApnPermission(contextInfo);
        ArrayList arrayList = new ArrayList();
        if (this.mPendingGetApnList.containsKey(Integer.valueOf(i))) {
            arrayList.addAll((Collection) this.mPendingGetApnList.get(Integer.valueOf(i)));
        } else {
            arrayList.addAll(retrieveApnListFromDatabase());
        }
        if (arrayList.size() >= com.samsung.android.knox.net.apn.ApnSettingsPolicy.MAXIMUM_APNS_OVER_IPC) {
            this.mPendingGetApnList.put(Integer.valueOf(i), arrayList.subList(com.samsung.android.knox.net.apn.ApnSettingsPolicy.MAXIMUM_APNS_OVER_IPC, arrayList.size()));
            return arrayList.subList(0, com.samsung.android.knox.net.apn.ApnSettingsPolicy.MAXIMUM_APNS_OVER_IPC);
        }
        this.mPendingGetApnList.remove(Integer.valueOf(i));
        return arrayList.subList(0, arrayList.size());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x01ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List retrieveApnListFromDatabase() {
        /*
            Method dump skipped, instructions count: 475
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.apn.ApnSettingsPolicy.retrieveApnListFromDatabase():java.util.List");
    }

    public final Uri getApnListUri(int i) {
        Log.d("ApnSettingsPolicyService", "getApnListUri");
        TelephonyManager telephonyManager = TelephonyManager.getDefault();
        if (telephonyManager.getSimState() == 0 || telephonyManager.getSimState() == 1) {
            Log.w("ApnSettingsPolicyService", "No SIM ");
            return Carriers.CONTENT_URI;
        }
        SubscriptionInfo subscriptionInfo = getSubscriptionInfo((i == -1 || SubscriptionManager.getSubId(i) == null) ? -1 : SubscriptionManager.getSubId(i)[0]);
        return Uri.withAppendedPath(Telephony.Carriers.SIM_APN_URI, String.valueOf(subscriptionInfo != null ? subscriptionInfo.getSubscriptionId() : -1));
    }

    public final String getWhereClause(int i) {
        Log.d("ApnSettingsPolicyService", "getWhereClause");
        StringBuilder sb = new StringBuilder("NOT (type='ia' AND (apn=\"\" OR apn IS NULL))");
        int slotIndex = SubscriptionManager.getSlotIndex(SubscriptionManager.getDefaultDataSubscriptionId());
        boolean z = false;
        boolean z2 = (Settings.Global.getInt(this.mContext.getContentResolver(), "phone1_on", 1) == 1) && !"0".equals(getTelephonyProperty("ril.ICC_TYPE0", 0, "0"));
        if (getDeviceSimSlotCnt() > 1) {
            String telephonyProperty = getTelephonyProperty("ril.ICC_TYPE1", 1, "0");
            if ((Settings.System.getInt(this.mContext.getContentResolver(), "phone2_on", 1) == 1) && !"0".equals(telephonyProperty)) {
                z = true;
            }
            if (z2 && slotIndex == 0) {
                sb.append(" AND current = 1 ");
            } else if (z && slotIndex == 1) {
                sb.append(" AND current1 = 1 ");
            }
        } else if (z2 && slotIndex == 0) {
            sb.append(" AND current = 1");
        }
        return sb.toString();
    }

    public final SubscriptionInfo getSubscriptionInfo(int i) {
        return SubscriptionManager.from(this.mContext).getActiveSubscriptionInfo(i);
    }

    public final int getDeviceSimSlotCnt() {
        int phoneCount = TelephonyManager.getDefault().getPhoneCount();
        Log.d("ApnSettingsPolicyService", "simSlotCnt : " + phoneCount);
        return phoneCount;
    }

    public final int getFirstSlotIndex() {
        int i = 0;
        String telephonyProperty = getTelephonyProperty("ril.ICC_TYPE0", 0, "0");
        String telephonyProperty2 = getTelephonyProperty("ril.ICC_TYPE1", 1, "0");
        boolean z = Settings.Global.getInt(this.mContext.getContentResolver(), "phone1_on", 1) == 1;
        boolean z2 = Settings.Global.getInt(this.mContext.getContentResolver(), "phone2_on", 1) == 1;
        if (!z || "0".equals(telephonyProperty)) {
            i = (!z2 || "0".equals(telephonyProperty2)) ? -1 : 1;
        }
        Log.d("ApnSettingsPolicyService", "getFirstSlotIndex : " + i);
        return i;
    }

    public final String getTelephonyProperty(String str, int i, String str2) {
        String str3 = SystemProperties.get("ril.ICC_TYPE0");
        String str4 = SystemProperties.get("ril.ICC_TYPE1");
        if (str.equals("ril.ICC_TYPE0")) {
            if (str3 == null || str3.length() <= 0) {
                str3 = str2;
            }
        } else if (str.equals("ril.ICC_TYPE1")) {
            if (str4 == null || str4.length() <= 0) {
                str4 = str2;
            }
            str3 = str4;
        } else {
            str3 = null;
        }
        if (TextUtils.isEmpty(str3)) {
            str3 = TelephonyManager.getTelephonyProperty(i, str, str2);
        }
        Log.d("ApnSettingsPolicyService", "getTelephonyProperty : " + str3);
        return str3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0121, code lost:
    
        if (r10 != null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0130, code lost:
    
        android.os.Binder.restoreCallingIdentity(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0133, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x012d, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x012b, code lost:
    
        if (r10 == null) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.samsung.android.knox.net.apn.ApnSettings getApnSettings(com.samsung.android.knox.ContextInfo r10, long r11) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.apn.ApnSettingsPolicy.getApnSettings(com.samsung.android.knox.ContextInfo, long):com.samsung.android.knox.net.apn.ApnSettings");
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0096: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:28:0x0096 */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0099 A[Catch: all -> 0x00a0, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:9:0x006c, B:10:0x006f, B:25:0x008f, B:30:0x0099, B:31:0x009c, B:32:0x009f), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized com.samsung.android.knox.net.apn.ApnSettings getPreferredApn(com.samsung.android.knox.ContextInfo r11) {
        /*
            r10 = this;
            monitor-enter(r10)
            r10.enforceOwnerOnlyAndApnPermission(r11)     // Catch: java.lang.Throwable -> La0
            java.lang.String r0 = "ApnSettingsPolicyService"
            java.lang.String r1 = "getPreferredApn():"
            android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> La0
            long r0 = android.os.Binder.clearCallingIdentity()     // Catch: java.lang.Throwable -> La0
            r2 = 0
            android.content.Context r3 = r10.mContext     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            android.content.ContentResolver r4 = r3.getContentResolver()     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            android.net.Uri r5 = com.android.server.enterprise.apn.ApnSettingsPolicy.Carriers.PREFERAPN_URI     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            r3 = 3
            java.lang.String[] r6 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            java.lang.String r3 = "_id"
            r7 = 0
            r6[r7] = r3     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            java.lang.String r3 = "name"
            r7 = 1
            r6[r7] = r3     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            java.lang.String r3 = "apn"
            r7 = 2
            r6[r7] = r3     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            r7 = 0
            r8 = 0
            java.lang.String r9 = "name ASC"
            android.database.Cursor r3 = r4.query(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L73 java.lang.Exception -> L75
            if (r3 == 0) goto L6a
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            if (r4 == 0) goto L6a
            java.lang.String r4 = "_id"
            int r4 = r3.getColumnIndexOrThrow(r4)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            long r4 = r3.getLong(r4)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            java.lang.String r6 = "ApnSettingsPolicyService"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            r7.<init>()     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            java.lang.String r8 = "getPreferredApn():"
            r7.append(r8)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            r7.append(r4)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            android.util.Log.w(r6, r7)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            r6 = 0
            int r6 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r6 <= 0) goto L6a
            com.samsung.android.knox.net.apn.ApnSettings r11 = r10.getApnSettings(r11, r4)     // Catch: java.lang.Exception -> L68 java.lang.Throwable -> L95
            r2 = r11
            goto L6a
        L68:
            r11 = move-exception
            goto L77
        L6a:
            if (r3 == 0) goto L6f
            r3.close()     // Catch: java.lang.Throwable -> La0
        L6f:
            android.os.Binder.restoreCallingIdentity(r0)     // Catch: java.lang.Throwable -> La0
            goto L93
        L73:
            r11 = move-exception
            goto L97
        L75:
            r11 = move-exception
            r3 = r2
        L77:
            java.lang.String r4 = "ApnSettingsPolicyService"
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L95
            r5.<init>()     // Catch: java.lang.Throwable -> L95
            java.lang.String r6 = "getPreferredApn Ex: "
            r5.append(r6)     // Catch: java.lang.Throwable -> L95
            r5.append(r11)     // Catch: java.lang.Throwable -> L95
            java.lang.String r11 = r5.toString()     // Catch: java.lang.Throwable -> L95
            android.util.Log.w(r4, r11)     // Catch: java.lang.Throwable -> L95
            if (r3 == 0) goto L6f
            r3.close()     // Catch: java.lang.Throwable -> La0
            goto L6f
        L93:
            monitor-exit(r10)
            return r2
        L95:
            r11 = move-exception
            r2 = r3
        L97:
            if (r2 == 0) goto L9c
            r2.close()     // Catch: java.lang.Throwable -> La0
        L9c:
            android.os.Binder.restoreCallingIdentity(r0)     // Catch: java.lang.Throwable -> La0
            throw r11     // Catch: java.lang.Throwable -> La0
        La0:
            r11 = move-exception
            monitor-exit(r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.apn.ApnSettingsPolicy.getPreferredApn(com.samsung.android.knox.ContextInfo):com.samsung.android.knox.net.apn.ApnSettings");
    }

    public final String getColumnValue(String str, Cursor cursor) {
        try {
            String string = cursor.getString(cursor.getColumnIndexOrThrow(str));
            return string == null ? "" : string;
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public final void setColumnValue(boolean z, ContentValues contentValues, String str, String str2) {
        if (z) {
            contentValues.put(str, str2 == null ? "" : str2.trim());
        } else if (str2 != null) {
            contentValues.put(str, str2.trim());
        }
        Log.w("ApnSettingsPolicyService", "setColumnValue: key=" + str + " value=" + str2);
    }

    public final String validateString(String str) {
        return str == null ? str : str.trim();
    }

    public final boolean validateProtocol(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -2128542875:
                if (str.equals("IPV4V6")) {
                    c = 0;
                    break;
                }
                break;
            case 2343:
                if (str.equals("IP")) {
                    c = 1;
                    break;
                }
                break;
            case 2254343:
                if (str.equals("IPV6")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                return true;
            default:
                return false;
        }
    }

    public final boolean validateMVNOType(String str) {
        if (str != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case 0:
                    if (str.equals("")) {
                        c = 0;
                        break;
                    }
                    break;
                case 102338:
                    if (str.equals("gid")) {
                        c = 1;
                        break;
                    }
                    break;
                case 114097:
                    if (str.equals("spn")) {
                        c = 2;
                        break;
                    }
                    break;
                case 3236474:
                    if (str.equals("imsi")) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                case 2:
                case 3:
                    return true;
            }
        }
        return false;
    }
}
