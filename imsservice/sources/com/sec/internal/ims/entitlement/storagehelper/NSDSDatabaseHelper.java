package com.sec.internal.ims.entitlement.storagehelper;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import com.sec.ims.extensions.ContextExt;
import com.sec.internal.constants.ims.entitilement.EntitlementConfigContract;
import com.sec.internal.constants.ims.entitilement.NSDSContractExt;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.entitilement.data.LineDetail;
import com.sec.internal.constants.ims.entitilement.data.ResponseGetMSISDN;
import com.sec.internal.constants.ims.entitilement.data.ResponseManageConnectivity;
import com.sec.internal.constants.ims.entitilement.data.ResponseManageLocationAndTC;
import com.sec.internal.constants.ims.entitilement.data.ServiceInstanceDetail;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.ims.entitlement.util.DeviceNameHelper;
import com.sec.internal.ims.entitlement.util.NSDSConfigHelper;
import com.sec.internal.ims.entitlement.util.SimSwapNSDSConfigHelper;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class NSDSDatabaseHelper {
    private static final String LOG_TAG = "NSDSDatabaseHelper";
    protected Context mContext;
    protected ContentResolver mResolver;

    public NSDSDatabaseHelper(Context context) {
        Context createCredentialProtectedStorageContext = context.createCredentialProtectedStorageContext();
        this.mContext = createCredentialProtectedStorageContext;
        this.mResolver = createCredentialProtectedStorageContext.getContentResolver();
    }

    public void insertOrUpdateGcmPushToken(String str, String str2, String str3, String str4) {
        String str5 = LOG_TAG;
        IMSLog.s(str5, "insertOrUpdateForGcmToken: token " + str2 + ", senderId " + str);
        if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            IMSLog.e(str5, "insertFcmToken: empty or null input");
        } else if (isGcmTokenAvailable(str, str4)) {
            updateGcmPushToken(str2, str, str4);
        } else {
            insertGcmPushToken(str2, str, str3, str4);
        }
    }

    private void insertGcmPushToken(String str, String str2, String str3, String str4) {
        String str5 = LOG_TAG;
        IMSLog.i(str5, "insertGcmPushToken()");
        ContentValues contentValues = new ContentValues();
        contentValues.put(NSDSContractExt.GcmTokensColumns.GCM_TOKEN, str);
        contentValues.put(NSDSContractExt.GcmTokensColumns.SENDER_ID, str2);
        contentValues.put(NSDSContractExt.GcmTokensColumns.PROTOCOL_TO_SERVER, str3);
        contentValues.put("device_uid", str4);
        if (this.mResolver.insert(NSDSContractExt.GcmTokens.CONTENT_URI, contentValues) != null) {
            IMSLog.i(str5, "inserted GCM token successfully");
        }
    }

    private void updateGcmPushToken(String str, String str2, String str3) {
        String str4 = LOG_TAG;
        IMSLog.i(str4, "updateGcmPushToken()");
        ContentValues contentValues = new ContentValues();
        contentValues.put(NSDSContractExt.GcmTokensColumns.GCM_TOKEN, str);
        if (this.mResolver.update(NSDSContractExt.GcmTokens.CONTENT_URI, contentValues, "sender_id = ? AND device_uid = ?", new String[]{str2, str3}) > 0) {
            IMSLog.s(str4, "update GCM token for sender ID: " + str2 + " for deviceId:" + str3);
        }
    }

    public boolean isGcmTokenAvailable(String str, String str2) {
        if (str != null && getGcmToken(str, str2) != null) {
            return true;
        }
        IMSLog.i(LOG_TAG, "isGcmTokenAvailable: no GCM token");
        return false;
    }

    public String getGcmToken(String str, String str2) {
        Cursor query = this.mResolver.query(NSDSContractExt.GcmTokens.CONTENT_URI, new String[]{NSDSContractExt.GcmTokensColumns.GCM_TOKEN}, "sender_id = ? AND device_uid = ?", new String[]{str, str2}, null);
        if (query != null) {
            try {
                if (query.moveToFirst() && query.getString(0) != null) {
                    String string = query.getString(0);
                    query.close();
                    return string;
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query == null) {
            return null;
        }
        query.close();
        return null;
    }

    public boolean isDeviceConfigAvailable(String str) {
        if (getDeviceConfig(str) != null) {
            return true;
        }
        IMSLog.i(LOG_TAG, "isDeviceConfigAvailable: no config");
        return false;
    }

    public static String getConfigVersion(Context context, String str) {
        Cursor query = context.getContentResolver().query(EntitlementConfigContract.DeviceConfig.CONTENT_URI, new String[]{"version"}, "imsi = ?", new String[]{str}, null);
        if (query != null) {
            try {
                if (query.moveToFirst() && query.getString(0) != null) {
                    String string = query.getString(0);
                    query.close();
                    return string;
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query == null) {
            return "0";
        }
        query.close();
        return "0";
    }

    public String getDeviceConfig(String str) {
        Uri uri = EntitlementConfigContract.DeviceConfig.CONTENT_URI;
        Cursor query = this.mResolver.query(uri, new String[]{"device_config"}, "imsi = ?", new String[]{str}, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    String string = query.getString(0);
                    query.close();
                    return string;
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query == null) {
            return null;
        }
        query.close();
        return null;
    }

    public void insertDeviceConfig(ResponseManageConnectivity responseManageConnectivity, String str, String str2) {
        ContentValues contentValues;
        if (TextUtils.isEmpty(responseManageConnectivity.deviceConfig)) {
            contentValues = null;
        } else {
            contentValues = new ContentValues();
            contentValues.put("device_id", str2);
            if (str != null) {
                contentValues.put("version", str);
            }
            String str3 = responseManageConnectivity.deviceConfig;
            if (str3 != null) {
                contentValues.put("device_config", str3);
            }
        }
        if (contentValues == null || contentValues.size() == 0 || this.mResolver.insert(NSDSContractExt.DeviceConfig.CONTENT_URI, contentValues) == null) {
            return;
        }
        IMSLog.i(LOG_TAG, "inserted device config in device config successfully");
    }

    public void updateDeviceConfig(ResponseManageConnectivity responseManageConnectivity, String str, String str2) {
        ContentValues contentValues;
        String str3 = LOG_TAG;
        IMSLog.i(str3, "updateDeviceConfig: version:" + str);
        if (TextUtils.isEmpty(responseManageConnectivity.deviceConfig)) {
            contentValues = null;
        } else {
            contentValues = new ContentValues();
            if (str != null) {
                contentValues.put("version", str);
            }
            String str4 = responseManageConnectivity.deviceConfig;
            if (str4 != null) {
                contentValues.put("device_config", str4);
            }
        }
        if (contentValues != null && contentValues.size() != 0) {
            IMSLog.i(str3, "No of entries deleted from nsds_config :" + this.mResolver.delete(NSDSContractExt.NsdsConfigs.CONTENT_URI, null, null));
            if (this.mResolver.update(NSDSContractExt.DeviceConfig.CONTENT_URI, contentValues, "device_id = ?", new String[]{str2}) > 0) {
                IMSLog.i(str3, "updated device config in device config successfully with version:" + str + " for deviceId:" + str2);
                return;
            }
            return;
        }
        IMSLog.i(str3, "No update on the config");
    }

    public void deleteNsdsConfigs(String str) {
        if (this.mResolver.delete(NSDSContractExt.NsdsConfigs.CONTENT_URI, "imsi = ?", new String[]{str}) > 0) {
            IMSLog.i(LOG_TAG, "Deleted NSDS configs: successfully");
        }
    }

    public void copyConfigEntriesForSimSwap(String str, String str2, int i) {
        try {
            IMSLog.i(LOG_TAG, "Copying config entries for sim swap");
            HashMap hashMap = new HashMap();
            hashMap.put(SimSwapNSDSConfigHelper.KEY_NATIVE_MSISDN, getNativeMsisdn(str));
            hashMap.put(NSDSNamespaces.NSDSSharedPref.PREF_AKA_TOKEN, NSDSSharedPrefHelper.getAkaToken(this.mContext, str2));
            hashMap.put(NSDSNamespaces.NSDSSharedPref.PREF_PUSH_TOKEN, NSDSSharedPrefHelper.get(this.mContext, str, NSDSNamespaces.NSDSSharedPref.PREF_PUSH_TOKEN));
            hashMap.put("imsi", NSDSSharedPrefHelper.getPrefForSlot(this.mContext, i, NSDSNamespaces.NSDSSharedPref.PREF_PREV_IMSI));
            hashMap.put(NSDSNamespaces.NSDSSharedPref.PREF_IMSI_EAP, NSDSSharedPrefHelper.getPrefForSlot(this.mContext, i, NSDSNamespaces.NSDSSharedPref.PREF_IMSI_EAP));
            hashMap.put("device_id", NSDSSharedPrefHelper.getPrefForSlot(this.mContext, i, "device_id"));
            hashMap.put(NSDSNamespaces.NSDSSharedPref.PREF_DEVICE_STATE, NSDSSharedPrefHelper.get(this.mContext, str, NSDSNamespaces.NSDSSharedPref.PREF_DEVICE_STATE));
            ContentValues[] contentValuesArr = new ContentValues[hashMap.size()];
            int i2 = 0;
            for (String str3 : hashMap.keySet()) {
                ContentValues contentValues = new ContentValues();
                contentValuesArr[i2] = contentValues;
                contentValues.put(NSDSContractExt.NsdsConfigColumns.PNAME, str3);
                contentValuesArr[i2].put(NSDSContractExt.NsdsConfigColumns.PVALUE, (String) hashMap.get(str3));
                contentValuesArr[i2].put("imsi", str2);
                i2++;
            }
            Uri.Builder buildUpon = NSDSContractExt.SimSwapNsdsConfigs.CONTENT_URI.buildUpon();
            buildUpon.appendQueryParameter("imsi", str2);
            int bulkInsert = this.mResolver.bulkInsert(buildUpon.build(), contentValuesArr);
            IMSLog.i(LOG_TAG, "copied shared pref and nsds config entries for sim swap:" + bulkInsert);
        } finally {
            deleteConfigAndResetDeviceAndAccountStatus(str, str2, i);
        }
    }

    public void deleteConfigAndResetDeviceAndAccountStatus(String str, String str2, int i) {
        IMSLog.s(LOG_TAG, "deleteConfigAndResetDeviceAndAccountStatus: imsi " + str2);
        resetAccountStatus(str);
        resetDeviceStatus(str, str2, i);
        deleteNsdsConfigs(str2);
        NSDSConfigHelper.clear();
    }

    public void resetAccountStatus(String str) {
        IMSLog.i(LOG_TAG, "resetAccountStatus()");
        setLocalDevicePrimary(str, false);
    }

    public void resetDeviceStatus(String str, String str2, int i) {
        NSDSSharedPrefHelper.save(this.mContext, str, NSDSNamespaces.NSDSSharedPref.PREF_DEVICE_STATE, NSDSNamespaces.NSDSDeviceState.DEACTIVATED);
        NSDSSharedPrefHelper.remove(this.mContext, str, NSDSNamespaces.NSDSSharedPref.PREF_ENTITLEMENT_STATE);
        NSDSSharedPrefHelper.removePrefForSlot(this.mContext, i, NSDSNamespaces.NSDSSharedPref.PREF_IMSI_EAP);
        NSDSSharedPrefHelper.removeAkaToken(this.mContext, str2);
        NSDSSharedPrefHelper.remove(this.mContext, str, NSDSNamespaces.NSDSSharedPref.PREF_PUSH_TOKEN);
        NSDSSharedPrefHelper.remove(this.mContext, str, NSDSNamespaces.NSDSSharedPref.PREF_SENT_TOKEN_TO_SERVER);
        NSDSSharedPrefHelper.clearEntitlementServerUrl(this.mContext, str);
        resetE911AidInfoForNativeLine(str);
    }

    public boolean isE911InfoAvailForNativeLine(String str) {
        LineDetail nativeLineDetail = getNativeLineDetail(str, false);
        if (nativeLineDetail == null) {
            IMSLog.e(LOG_TAG, "isE911InfoAvailForNativeLine: line info missing");
            return false;
        }
        if (nativeLineDetail.e911AddressId == null) {
            IMSLog.e(LOG_TAG, "isE911InfoAvailForNativeLine: e911 aid missing");
            return false;
        }
        if (nativeLineDetail.locationStatus == 1) {
            return true;
        }
        IMSLog.e(LOG_TAG, "isE911InfoAvailForNativeLine: loc status false");
        return false;
    }

    public void resetE911AidInfoForNativeLine(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.putNull(NSDSContractExt.LineColumns.E911_ADDRESS_ID);
        contentValues.putNull("e911_aid_expiration");
        contentValues.putNull(NSDSContractExt.LineColumns.E911_SERVER_DATA);
        contentValues.putNull(NSDSContractExt.LineColumns.E911_SERVER_URL);
        int update = this.mResolver.update(NSDSContractExt.Lines.CONTENT_URI, contentValues, "_id = ?", new String[]{String.valueOf(getNativeLineId(str))});
        if (update > 0) {
            IMSLog.i(LOG_TAG, "resetE911AidInfoForNativeLine: success " + update);
        }
    }

    public void updateRegistationStatusForLines(List<String> list, int i, int i2, int i3) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NSDSContractExt.LineColumns.REG_STATUS, Integer.valueOf(i3));
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            this.mResolver.update(NSDSContractExt.Lines.CONTENT_URI, contentValues, "msisdn = ? AND status = ? AND reg_status = ?", new String[]{it.next(), String.valueOf(i), String.valueOf(i2)});
        }
    }

    public void updateRegistationStatusForLines(int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NSDSContractExt.LineColumns.REG_STATUS, Integer.valueOf(i2));
        if (this.mResolver.update(NSDSContractExt.Lines.CONTENT_URI, contentValues, "reg_status = ?", new String[]{String.valueOf(i)}) > 0) {
            IMSLog.i(LOG_TAG, "updateStatusForLines fromStatus:" + i + " toStatus:" + i2);
            return;
        }
        IMSLog.e(LOG_TAG, "Updating lines failed");
    }

    public void updateLocationAndTcStatus(long j, ResponseManageLocationAndTC responseManageLocationAndTC, String str, int i) {
        int i2;
        String str2 = LOG_TAG;
        IMSLog.i(str2, "updateLocationAndTcStatus: lineId " + j);
        ContentValues contentValues = new ContentValues();
        if (responseManageLocationAndTC != null) {
            Boolean bool = responseManageLocationAndTC.locationStatus;
            int i3 = 1;
            if (bool == null) {
                i2 = -1;
            } else {
                i2 = bool.booleanValue() ? 1 : 0;
            }
            Boolean bool2 = responseManageLocationAndTC.tcStatus;
            if (bool2 == null) {
                i3 = -1;
            } else if (!bool2.booleanValue()) {
                i3 = 0;
            }
            contentValues.put(NSDSContractExt.LineColumns.LOCATION_STATUS, Integer.valueOf(i2));
            contentValues.put("tc_status", Integer.valueOf(i3));
            contentValues.put(NSDSContractExt.LineColumns.E911_ADDRESS_ID, responseManageLocationAndTC.addressId);
            contentValues.put("e911_aid_expiration", responseManageLocationAndTC.aidExpiration);
            contentValues.put(NSDSContractExt.LineColumns.E911_SERVER_DATA, responseManageLocationAndTC.serverData);
            contentValues.put(NSDSContractExt.LineColumns.E911_SERVER_URL, responseManageLocationAndTC.serverUrl);
            if (this.mResolver.update(NSDSContractExt.Lines.CONTENT_URI, contentValues, "_id = ?", new String[]{String.valueOf(j)}) > 0) {
                IMSLog.i(str2, "updateLocationAndTcStatus: success");
            }
            LineDetail lineDetail = getLineDetail(j, str, false);
            if (lineDetail == null) {
                IMSLog.e(str2, "updateLocationAndTcStatus Line detail is NULL");
                return;
            }
            IMSLog.i(str2, "updateLocationAndTcStatus location status: " + lineDetail.locationStatus + ", tc status: " + lineDetail.tcStatus + ", e911 AID Expirsation: " + lineDetail.e911AidExpiration);
            StringBuilder sb = new StringBuilder();
            sb.append(", e911 AID: ");
            sb.append(lineDetail.e911AddressId);
            IMSLog.s(str2, sb.toString());
            broadcastE911AID(responseManageLocationAndTC, i);
        }
    }

    private void broadcastE911AID(ResponseManageLocationAndTC responseManageLocationAndTC, int i) {
        if (responseManageLocationAndTC.addressId == null || responseManageLocationAndTC.aidExpiration == null) {
            IMSLog.e(LOG_TAG, "broadcastE911AID: invalid e911 AID info, vail");
            return;
        }
        Intent intent = new Intent(NSDSNamespaces.NSDSActions.E911_AID_INFO_RECEIVED);
        intent.putExtra(NSDSNamespaces.NSDSExtras.E911_AID, responseManageLocationAndTC.addressId);
        intent.putExtra("e911_aid_expiration", responseManageLocationAndTC.aidExpiration);
        intent.putExtra(NSDSNamespaces.NSDSExtras.SIM_SLOT_IDX, i);
        intent.setPackage(this.mContext.getPackageName());
        IntentUtil.sendBroadcast(this.mContext, intent, ContextExt.CURRENT_OR_SELF);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long getLineIdOnDevice(java.lang.String r8, java.lang.String r9, int r10) {
        /*
            r7 = this;
            java.lang.String r0 = java.lang.String.valueOf(r10)
            java.lang.String[] r0 = new java.lang.String[]{r8, r0}
            r1 = -1
            if (r10 != r1) goto L12
            java.lang.String[] r0 = new java.lang.String[]{r8}
            java.lang.String r8 = "msisdn = ?"
            goto L14
        L12:
            java.lang.String r8 = "msisdn = ? AND status = ?"
        L14:
            r4 = r8
            r5 = r0
            java.lang.String r8 = "_id"
            java.lang.String[] r3 = new java.lang.String[]{r8}
            android.net.Uri r8 = com.sec.internal.constants.ims.entitilement.NSDSContractExt.Lines.CONTENT_URI
            android.net.Uri$Builder r8 = r8.buildUpon()
            java.lang.String r10 = "device_uid"
            r8.appendQueryParameter(r10, r9)
            android.content.ContentResolver r1 = r7.mResolver
            android.net.Uri r2 = r8.build()
            r6 = 0
            android.database.Cursor r7 = r1.query(r2, r3, r4, r5, r6)
            if (r7 == 0) goto L4a
            boolean r8 = r7.moveToFirst()     // Catch: java.lang.Throwable -> L40
            if (r8 == 0) goto L4a
            r8 = 0
            long r8 = r7.getLong(r8)     // Catch: java.lang.Throwable -> L40
            goto L4c
        L40:
            r8 = move-exception
            r7.close()     // Catch: java.lang.Throwable -> L45
            goto L49
        L45:
            r7 = move-exception
            r8.addSuppressed(r7)
        L49:
            throw r8
        L4a:
            r8 = -1
        L4c:
            if (r7 == 0) goto L51
            r7.close()
        L51:
            java.lang.String r7 = com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper.LOG_TAG
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r0 = "getLineIdOnDevice(): lineId: "
            r10.append(r0)
            r10.append(r8)
            java.lang.String r10 = r10.toString()
            com.sec.internal.log.IMSLog.i(r7, r10)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper.getLineIdOnDevice(java.lang.String, java.lang.String, int):long");
    }

    private long insertLineWithServiceDetail(long j, long j2, String str, String str2, Boolean bool, String str3, String str4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("account_id", Long.valueOf(j));
        contentValues.put("msisdn", str);
        contentValues.put(NSDSContractExt.LineColumns.FRIENDLY_NAME, str2);
        contentValues.put("is_owner", bool);
        contentValues.put("status", (Integer) 0);
        Uri insert = this.mResolver.insert(NSDSContractExt.Lines.CONTENT_URI, contentValues);
        String str5 = LOG_TAG;
        IMSLog.s(str5, "inserted lineUri:" + insert);
        if (insert != null && insert.getPathSegments() != null) {
            long longValue = Long.valueOf(insert.getPathSegments().get(1)).longValue();
            IMSLog.s(str5, "insertLineWithServiceDetail: inserted line service Uri:" + insertServiceNameAndFingerPrint(longValue, j2, str3, str4, null, str));
            return longValue;
        }
        IMSLog.s(str5, "insertLineWithServiceDetail: failed for msisdn:" + str);
        return -1L;
    }

    private Uri insertServiceNameAndFingerPrint(long j, long j2, String str, String str2, String str3, String str4) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("service_name", str);
        contentValues.put(NSDSContractExt.ServiceColumns.SERVICE_MSISDN, str4);
        contentValues.put(NSDSContractExt.ServiceColumns.SERVICE_FINGERPRINT, str2);
        contentValues.put(NSDSContractExt.ServiceColumns.SERVICE_INSTANCE_ID, str3);
        return this.mResolver.insert(NSDSContractExt.Lines.buildServicesUri(j2, j), contentValues);
    }

    public long insertOrUpdateNativeLine(long j, String str, ResponseGetMSISDN responseGetMSISDN) {
        long insertDeviceIfNotExists = insertDeviceIfNotExists(j, str, false, true);
        long lineIdFromAllLinesIf = getLineIdFromAllLinesIf(responseGetMSISDN.msisdn);
        if (lineIdFromAllLinesIf == -1) {
            String str2 = LOG_TAG;
            IMSLog.s(str2, "native msisdn does not exist in db, creating one");
            String str3 = responseGetMSISDN.msisdn;
            lineIdFromAllLinesIf = insertLineWithServiceDetail(j, insertDeviceIfNotExists, str3, str3, Boolean.TRUE, "vowifi", responseGetMSISDN.serviceFingerprint);
            ContentValues contentValues = new ContentValues();
            contentValues.put("is_native", (Integer) 1);
            if (this.mResolver.update(NSDSContractExt.Lines.buildServicesUri(insertDeviceIfNotExists, lineIdFromAllLinesIf), contentValues, null, null) > 0) {
                IMSLog.s(str2, "insertOrUpdateNativeLine: Updated service.is_native successfully for device:" + insertDeviceIfNotExists + " and lineId:" + lineIdFromAllLinesIf);
            }
        } else {
            String str4 = LOG_TAG;
            IMSLog.s(str4, "native msisdn does exist in db, add service fingerprint and is_native attribute");
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("is_native", (Integer) 1);
            contentValues2.put("service_name", "vowifi");
            contentValues2.put(NSDSContractExt.ServiceColumns.SERVICE_MSISDN, responseGetMSISDN.msisdn);
            contentValues2.put(NSDSContractExt.ServiceColumns.SERVICE_FINGERPRINT, responseGetMSISDN.serviceFingerprint);
            if (!doesServiceExists(insertDeviceIfNotExists, lineIdFromAllLinesIf)) {
                if (this.mResolver.insert(NSDSContractExt.Lines.buildServicesUri(insertDeviceIfNotExists, lineIdFromAllLinesIf), contentValues2) != null) {
                    IMSLog.s(str4, "insertOrUpdateNativeLine: created service entry for:" + insertDeviceIfNotExists + " and lineId:" + lineIdFromAllLinesIf);
                }
            } else if (this.mResolver.update(NSDSContractExt.Lines.buildServicesUri(insertDeviceIfNotExists, lineIdFromAllLinesIf), contentValues2, null, null) > 0) {
                IMSLog.s(str4, "insertOrUpdateNativeLine: Updated service.is_native successfully for device:" + insertDeviceIfNotExists + " and lineId:" + lineIdFromAllLinesIf);
            }
        }
        return lineIdFromAllLinesIf;
    }

    private long insertDeviceIfNotExists(long j, String str, boolean z, boolean z2) {
        long deviceId = getDeviceId(str);
        if (deviceId != -1) {
            return deviceId;
        }
        IMSLog.s(LOG_TAG, "device does not exist with :" + str + " creating one");
        String deviceName = DeviceNameHelper.getDeviceName(this.mContext);
        return insertDevice(j, str, TextUtils.isEmpty(deviceName) ? str : deviceName, z, 0, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long getLineIdFromAllLinesIf(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String r3 = "msisdn = ? AND account_id = 0"
            java.lang.String[] r4 = new java.lang.String[]{r7}
            java.lang.String r7 = "_id"
            java.lang.String[] r2 = new java.lang.String[]{r7}
            android.content.ContentResolver r0 = r6.mResolver
            android.net.Uri r1 = com.sec.internal.constants.ims.entitilement.NSDSContractExt.Lines.buildAllLinesInternalUri()
            r5 = 0
            android.database.Cursor r6 = r0.query(r1, r2, r3, r4, r5)
            if (r6 == 0) goto L2f
            boolean r7 = r6.moveToFirst()     // Catch: java.lang.Throwable -> L25
            if (r7 == 0) goto L2f
            r7 = 0
            long r0 = r6.getLong(r7)     // Catch: java.lang.Throwable -> L25
            goto L31
        L25:
            r7 = move-exception
            r6.close()     // Catch: java.lang.Throwable -> L2a
            goto L2e
        L2a:
            r6 = move-exception
            r7.addSuppressed(r6)
        L2e:
            throw r7
        L2f:
            r0 = -1
        L31:
            if (r6 == 0) goto L36
            r6.close()
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.entitlement.storagehelper.NSDSDatabaseHelper.getLineIdFromAllLinesIf(java.lang.String):long");
    }

    private long insertDevice(long j, String str, String str2, boolean z, int i, boolean z2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NSDSContractExt.DeviceColumns.ACCOUNT_ID, Long.valueOf(j));
        contentValues.put("device_uid", str);
        contentValues.put("device_name", str2);
        contentValues.put("is_primary", Boolean.valueOf(z));
        contentValues.put(NSDSContractExt.DeviceColumns.DEVICE_TYPE, Integer.valueOf(i));
        contentValues.put(NSDSContractExt.DeviceColumns.DEVICE_IS_LOCAL, Integer.valueOf(z2 ? 1 : 0));
        Uri insert = this.mResolver.insert(NSDSContractExt.Devices.CONTENT_URI, contentValues);
        IMSLog.s(LOG_TAG, "inserted deviceUri:" + insert);
        if (insert != null) {
            return Long.valueOf(insert.getPathSegments().get(1)).longValue();
        }
        return -1L;
    }

    public String getNativeMsisdn(String str) {
        String str2 = null;
        try {
            Cursor query = this.mResolver.query(NSDSContractExt.Lines.buildLinesUri(str), new String[]{"msisdn"}, "is_native = ?", new String[]{"1"}, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        str2 = query.getString(0);
                    } finally {
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteException e) {
            IMSLog.s(LOG_TAG, "getNativeMsisdn failed with:" + e.getMessage());
        }
        return str2;
    }

    public int getNativeLineId(String str) {
        int i = -1;
        try {
            Cursor query = this.mResolver.query(NSDSContractExt.Lines.buildLinesUri(str), new String[]{"_id"}, "is_native = ?", new String[]{"1"}, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        i = query.getInt(0);
                    } finally {
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteException e) {
            IMSLog.i(LOG_TAG, "getNativeLineId failed with:" + e.getMessage());
        }
        return i;
    }

    public LineDetail getNativeLineDetail(String str, boolean z) {
        long nativeLineId = getNativeLineId(str);
        if (nativeLineId == -1) {
            IMSLog.e(LOG_TAG, "getNativeLineDetail: native line id not found");
            return null;
        }
        return getLineDetail(nativeLineId, str, z);
    }

    public LineDetail getLineDetail(long j, String str, boolean z) {
        ServiceInstanceDetail serviceInstanceForLocalDevice;
        if (j <= 0) {
            IMSLog.e(LOG_TAG, "getLineDetail: lineId is zero/negative");
            return null;
        }
        LineDetail lineDetail = getLineDetail("lines._id = ?", new String[]{String.valueOf(j)}, str);
        if (z && (serviceInstanceForLocalDevice = getServiceInstanceForLocalDevice(j, str)) != null) {
            lineDetail.serviceFingerPrint = serviceInstanceForLocalDevice.serviceFingerPrint;
            lineDetail.serviceInstanceId = serviceInstanceForLocalDevice.serviceInstanceId;
            lineDetail.serviceTokenExpiryTime = serviceInstanceForLocalDevice.serviceTokenExpiryTime;
        }
        return lineDetail;
    }

    public String getNativeLineE911AidExp(String str) {
        LineDetail nativeLineDetail = getNativeLineDetail(str, false);
        if (nativeLineDetail != null) {
            return nativeLineDetail.e911AidExpiration;
        }
        return null;
    }

    private LineDetail getLineDetail(String str, String[] strArr, String str2) {
        LineDetail lineDetail = new LineDetail();
        Cursor query = this.mResolver.query(NSDSContractExt.Lines.buildLinesUri(str2), new String[]{"_id", "msisdn", NSDSContractExt.LineColumns.LOCATION_STATUS, "tc_status", NSDSContractExt.LineColumns.E911_ADDRESS_ID, "e911_aid_expiration"}, str, strArr, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    lineDetail.lineId = query.getInt(0);
                    lineDetail.msisdn = query.getString(1);
                    lineDetail.locationStatus = query.getInt(2);
                    lineDetail.tcStatus = query.getInt(3);
                    lineDetail.e911AddressId = query.getString(4);
                    lineDetail.e911AidExpiration = query.getString(5);
                }
            } finally {
            }
        }
        if (query != null) {
            query.close();
        }
        return lineDetail;
    }

    public ServiceInstanceDetail getServiceInstanceForLocalDevice(long j, String str) {
        Cursor query = this.mResolver.query(NSDSContractExt.Lines.buildServicesUri(getDeviceId(str), j), new String[]{"service_name", NSDSContractExt.ServiceColumns.SERVICE_FINGERPRINT, NSDSContractExt.ServiceColumns.SERVICE_INSTANCE_ID, NSDSContractExt.ServiceColumns.SERVICE_INSTANCE_TOKEN, NSDSContractExt.ServiceColumns.SERVICE_TOKEN_EXPIRE_TIME}, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    ServiceInstanceDetail serviceInstanceDetail = new ServiceInstanceDetail();
                    serviceInstanceDetail.serviceName = query.getString(0);
                    serviceInstanceDetail.serviceFingerPrint = query.getString(1);
                    serviceInstanceDetail.serviceInstanceId = query.getString(2);
                    serviceInstanceDetail.serviceInstanceToken = query.getString(3);
                    serviceInstanceDetail.serviceTokenExpiryTime = query.getString(4);
                    query.close();
                    return serviceInstanceDetail;
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query == null) {
            return null;
        }
        query.close();
        return null;
    }

    private boolean doesServiceExists(long j, long j2) {
        Cursor query = this.mResolver.query(NSDSContractExt.Lines.buildServicesUri(j, j2), null, null, null, null);
        if (query == null) {
            if (query == null) {
                return false;
            }
            query.close();
            return false;
        }
        try {
            boolean moveToFirst = query.moveToFirst();
            query.close();
            return moveToFirst;
        } catch (Throwable th) {
            try {
                query.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void setLocalDevicePrimary(String str, boolean z) {
        String str2 = LOG_TAG;
        IMSLog.s(str2, "setLocalDevicePrimary: isPrimary " + z);
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_primary", Integer.valueOf(z ? 1 : 0));
        if (this.mResolver.update(NSDSContractExt.Devices.CONTENT_URI, contentValues, "is_local = ? AND device_uid = ?", new String[]{"1", str}) > 0) {
            IMSLog.s(str2, "setLocalDevicePrimary: update success");
        }
    }

    public void updateDeviceName(String str, String str2) {
        IMSLog.s(LOG_TAG, "Updating device name for deviceUID: " + str);
        updateDeviceName((long) getDeviceId(str), str2);
    }

    public void updateDeviceName(long j, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("device_name", str);
        if (this.mResolver.update(NSDSContractExt.Devices.CONTENT_URI, contentValues, "_id = ?", new String[]{String.valueOf(j)}) > 0) {
            IMSLog.s(LOG_TAG, "Updated device name successsfully to: " + str);
        }
    }

    public void updateLineName(long j, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(NSDSContractExt.LineColumns.FRIENDLY_NAME, str);
        if (this.mResolver.update(NSDSContractExt.Lines.CONTENT_URI, contentValues, "_id = ?", new String[]{String.valueOf(j)}) > 0) {
            IMSLog.s(LOG_TAG, "UpdateLineName Successful. Line name: " + str);
        }
    }

    public int getDeviceId(String str) {
        String str2 = LOG_TAG;
        IMSLog.s(str2, "getDeviceId: for deviceId :" + str);
        try {
            Cursor query = this.mResolver.query(NSDSContractExt.Devices.CONTENT_URI, new String[]{"_id"}, "device_uid = ?", new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        int i = query.getInt(0);
                        IMSLog.i(str2, "getDeviceId: returned :" + i);
                        query.close();
                        return i;
                    }
                } finally {
                }
            }
            IMSLog.s(str2, "getDeviceId: Could not find deviceUID :" + str);
            if (query == null) {
                return -1;
            }
            query.close();
            return -1;
        } catch (SQLiteException e) {
            IMSLog.s(LOG_TAG, "SQL exception while getDeviceId " + e.getMessage());
            return -1;
        }
    }

    public Map<String, Long> getActiveMsisdns(String str) {
        HashMap hashMap = new HashMap();
        try {
            Cursor query = this.mResolver.query(NSDSContractExt.Lines.buildActiveLinesWithServicveUri(str), new String[]{"msisdn", "_id"}, "service_instance_id IS NOT NULL", null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        hashMap.put(query.getString(0), Long.valueOf(query.getLong(1)));
                    } finally {
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteException e) {
            IMSLog.s(LOG_TAG, "getActiveLines failed with:" + e.getMessage());
        }
        return hashMap;
    }

    public List<String> getReadyForUseMsisdns(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            Cursor query = this.mResolver.query(NSDSContractExt.Lines.buildLinesUri(str), new String[]{"msisdn"}, "reg_status = ?", new String[]{String.valueOf(2)}, null);
            if (query != null) {
                while (query.moveToNext()) {
                    try {
                        arrayList.add(query.getString(0));
                    } finally {
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteException e) {
            IMSLog.s(LOG_TAG, "getActiveLines failed with:" + e.getMessage());
        }
        return arrayList;
    }

    public static boolean migrationToCe(Context context, String str) {
        if (!context.createCredentialProtectedStorageContext().moveDatabaseFrom(context, str)) {
            IMSLog.e(LOG_TAG, "Failed to maigrate DB.");
            return false;
        }
        if (!context.deleteDatabase(str)) {
            IMSLog.e(LOG_TAG, "Failed delete DB on DE.");
            return false;
        }
        IMSLog.i(LOG_TAG, "migration is done");
        return true;
    }
}
