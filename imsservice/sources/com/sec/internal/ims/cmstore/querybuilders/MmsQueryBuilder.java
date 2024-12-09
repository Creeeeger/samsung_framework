package com.sec.internal.ims.cmstore.querybuilders;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.adapters.CloudMessageTelephonyStorageAdapter;
import com.sec.internal.ims.cmstore.params.ParamOMAObject;
import com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet;
import com.sec.internal.ims.cmstore.utils.CursorContentValueTranslator;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.ITelephonyDBColumns;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class MmsQueryBuilder extends QueryBuilderBase {
    private String TAG;
    private final CloudMessageTelephonyStorageAdapter mTelephonyStorage;

    public MmsQueryBuilder(MessageStoreClient messageStoreClient, IBufferDBEventListener iBufferDBEventListener) {
        super(messageStoreClient, iBufferDBEventListener);
        this.TAG = MmsQueryBuilder.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mTelephonyStorage = new CloudMessageTelephonyStorageAdapter(messageStoreClient.getContext());
    }

    public Cursor searchMMSPduBufferUsingMidorTrId(String str, String str2) {
        String str3;
        if (str2 == null || str2.length() <= 2) {
            str2 = "invalid string";
            str3 = "invalid string";
        } else {
            str3 = str2.substring(2);
        }
        String[] strArr = {str, str2, str, str3};
        Log.d(this.TAG, "searchMMSPduBufferUsingMidorTrId, mid: " + str + " tr_id: " + str2 + " subtrid:" + str3);
        return this.mBufferDB.queryMMSPDUMessages(null, "m_id=? OR tr_id=? OR correlation_id=? OR correlation_id=?", strArr, null);
    }

    public Cursor searchMMsPduBufferUsingCorrelationId(String str) {
        Log.d(this.TAG, "searchMMsPduBufferUsingCorrelationId: " + str);
        return this.mBufferDB.queryMMSPDUMessages(null, "m_id=? OR tr_id GLOB ?", new String[]{str, "*" + str + "*"}, null);
    }

    public Cursor searchMMSPduBufferUsingRowId(long j) {
        Log.d(this.TAG, "searchMMSPduBufferUsingRowId: " + j);
        return this.mBufferDB.queryMMSPDUMessages(null, "_id=?", new String[]{String.valueOf(j)}, null);
    }

    public Cursor queryMMSMessagesToUpload() {
        return this.mBufferDB.queryMMSPDUMessages(null, "syncdirection=? AND (res_url IS NULL OR res_url = '') AND date > ? AND sim_imsi=?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()), String.valueOf(System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync)), this.IMSI}, null);
    }

    public void updateMMSUpdateingDevice(long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.UpdatePayload.getId()));
        updateTable(4, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
    }

    public long insertToMMSPDUBufferDB(Cursor cursor, ContentValues contentValues, boolean z, boolean z2) {
        ArrayList<ContentValues> convertPDUtoCV = CursorContentValueTranslator.convertPDUtoCV(cursor);
        if (convertPDUtoCV == null) {
            return 0L;
        }
        String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        Log.d(this.TAG, "insertToPDUBufferDB size: " + convertPDUtoCV.size() + " isImsiUpdateReq " + z2);
        int i = 0;
        long j = 0L;
        int i2 = 0;
        while (i2 < convertPDUtoCV.size()) {
            ContentValues contentValues2 = convertPDUtoCV.get(i2);
            if (contentValues2 != null) {
                Integer asInteger = contentValues2.getAsInteger("read");
                int intValue = asInteger == null ? i : asInteger.intValue();
                if (z && intValue == 1) {
                    contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud.getId()));
                    contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
                } else {
                    contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, contentValues.getAsInteger(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION));
                    contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, contentValues.getAsInteger(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION));
                }
                contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, Integer.valueOf(i));
                contentValues2.put("linenum", userTelCtn);
                if (z2) {
                    contentValues2.put("sim_imsi", this.IMSI);
                }
                j = insertDeviceMsgToBuffer(4, contentValues2);
                Integer asInteger2 = contentValues2.getAsInteger("_id");
                long longValue = asInteger2 == null ? 0L : asInteger2.longValue();
                Cursor telephonyAddr = this.mTelephonyStorage.getTelephonyAddr(longValue);
                if (telephonyAddr != null) {
                    try {
                        if (telephonyAddr.moveToFirst()) {
                            Log.d(this.TAG, "insertToAddrBufferDB: " + j);
                            insertToMMSAddrBufferDB(telephonyAddr, j);
                        }
                    } finally {
                    }
                }
                if (telephonyAddr != null) {
                    telephonyAddr.close();
                }
                Cursor telephonyPart = this.mTelephonyStorage.getTelephonyPart(longValue);
                if (telephonyPart != null) {
                    try {
                        if (telephonyPart.moveToFirst()) {
                            Log.d(this.TAG, "insertToPartBufferDB: " + j);
                            insertToMMSPartBufferDB(telephonyPart, j);
                        }
                    } finally {
                    }
                }
                if (telephonyPart != null) {
                    telephonyPart.close();
                }
            }
            i2++;
            i = 0;
        }
        if (convertPDUtoCV.size() == 1) {
            return j;
        }
        return 0L;
    }

    protected void insertToMMSPartBufferDB(Cursor cursor, long j) {
        Log.d(this.TAG, "we do get something from telephony MMS Part: " + cursor.getCount() + ", row=" + j);
        ArrayList<ContentValues> convertPARTtoCV = CursorContentValueTranslator.convertPARTtoCV(cursor);
        if (convertPARTtoCV == null) {
            return;
        }
        for (int i = 0; i < convertPARTtoCV.size(); i++) {
            ContentValues contentValues = convertPARTtoCV.get(i);
            contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.MID, Long.valueOf(j));
            insertDeviceMsgToBuffer(6, contentValues);
        }
    }

    protected void insertToMMSAddrBufferDB(Cursor cursor, long j) {
        Log.d(this.TAG, "insertToAddrBufferDB: " + j + "we do get something from telephony MMS Addr: " + cursor.getCount());
        ArrayList<ContentValues> convertADDRtoCV = CursorContentValueTranslator.convertADDRtoCV(cursor);
        if (convertADDRtoCV == null) {
            return;
        }
        for (int i = 0; i < convertADDRtoCV.size(); i++) {
            ContentValues contentValues = convertADDRtoCV.get(i);
            contentValues.put("msg_id", Long.valueOf(j));
            insertDeviceMsgToBuffer(5, contentValues);
        }
    }

    public Cursor queryMMSPduFromTelephonyDbUseID(long j) {
        Log.d(this.TAG, "queryMMSPduFromTelephonyDbUseID: " + j);
        return this.mTelephonyStorage.queryMMSPduFromTelephonyDbUseID(j);
    }

    public Cursor queryAllMMSPduFromTelephonyDbWithIMSI(String str) {
        String[] strArr;
        String str2;
        Log.d(this.TAG, "queryMMSPduFromTelephonyDbWithSlot()");
        if (this.isCmsEnabled) {
            strArr = new String[]{str, String.valueOf((System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync + 24)) / 1000)};
            str2 = "sim_imsi=? AND date > ?";
        } else {
            strArr = new String[]{str};
            str2 = "sim_imsi=?";
        }
        return this.mTelephonyStorage.queryMMSPduFromTelephonyDb(null, str2, strArr, null);
    }

    public Cursor queryMMSPduFromTelephonyDbWoIMSI() {
        String str;
        String[] strArr;
        Log.i(this.TAG, "queryMMSPduFromTelephonyDbWoIMSI()");
        if (this.isCmsEnabled) {
            strArr = new String[]{String.valueOf((System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync + 24)) / 1000)};
            str = "(sim_imsi IS NULL OR sim_imsi = '' ) AND date > ?";
        } else {
            str = "sim_imsi IS NULL OR sim_imsi = ''";
            strArr = null;
        }
        return this.mTelephonyStorage.queryMMSPduFromTelephonyDb(null, str, strArr, null);
    }

    public Cursor queryForceInitDeltaMMSFromTP() {
        Log.i(this.TAG, "queryForceInitDeltaMMSFromTP");
        return this.mTelephonyStorage.queryMMSPduFromTelephonyDb(null, "sim_imsi=? AND date > ? AND date < ?", new String[]{this.IMSI, String.valueOf((System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync + 24)) / 1000), String.valueOf(queryLastMsgTimeStamp(4, "date") / 1000)}, null);
    }

    public Cursor queryDeltaMMSPduFromTelephonyDb() {
        String[] strArr;
        String str;
        int queryMmsPduBufferDBLargestTelephonyId = queryMmsPduBufferDBLargestTelephonyId();
        Log.i(this.TAG, "queryDeltaMMSPduFromTelephonyDb largest MMS _id: " + queryMmsPduBufferDBLargestTelephonyId);
        if (this.isCmsEnabled) {
            str = "_id > ? AND sim_imsi=? AND CREATOR != 'com.samsung.android.messaging' AND date > ?";
            strArr = new String[]{String.valueOf(queryMmsPduBufferDBLargestTelephonyId), this.IMSI, String.valueOf((System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync + 24)) / 1000)};
        } else {
            strArr = new String[]{String.valueOf(queryMmsPduBufferDBLargestTelephonyId), this.IMSI};
            str = "_id>?  AND sim_imsi=?";
        }
        return this.mTelephonyStorage.queryMMSPduFromTelephonyDb(null, str, strArr, null);
    }

    public Cursor queryDeltaMMSPduFromTelephonyDbWoImsi() {
        String[] strArr;
        int queryMmsPduBufferDBLargestTelephonyIdWoImsi = queryMmsPduBufferDBLargestTelephonyIdWoImsi();
        Log.i(this.TAG, "queryDeltaMMSPduFromTelephonyDbWoImsi largest MMS _id: " + queryMmsPduBufferDBLargestTelephonyIdWoImsi);
        String str = "_id > ? AND (sim_imsi IS NULL OR sim_imsi = '')";
        if (this.isCmsEnabled) {
            str = "_id > ? AND (sim_imsi IS NULL OR sim_imsi = '') AND CREATOR != 'com.samsung.android.messaging' AND date > ?";
            strArr = new String[]{String.valueOf(queryMmsPduBufferDBLargestTelephonyIdWoImsi), String.valueOf((System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync + 24)) / 1000)};
        } else {
            strArr = new String[]{String.valueOf(queryMmsPduBufferDBLargestTelephonyIdWoImsi)};
        }
        return this.mTelephonyStorage.queryMMSPduFromTelephonyDb(null, str, strArr, null);
    }

    public Cursor queryReadMmsfromTelephony() {
        return this.mTelephonyStorage.queryMMSPduFromTelephonyDb(null, "read=? AND sim_imsi=?", new String[]{String.valueOf(1), this.IMSI}, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int queryMmsPduBufferDBLargestTelephonyId() {
        /*
            r5 = this;
            java.lang.String r0 = r5.TAG
            java.lang.String r1 = "queryMmsPduBufferDBLargestTelephonyId: "
            android.util.Log.d(r0, r1)
            java.lang.String r0 = "MAX(_id)"
            java.lang.String r1 = "_id"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}
            java.lang.String r2 = r5.IMSI
            java.lang.String[] r2 = new java.lang.String[]{r2}
            com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister r5 = r5.mBufferDB
            r3 = 0
            java.lang.String r4 = "sim_imsi=?"
            android.database.Cursor r5 = r5.queryMMSPDUMessages(r0, r4, r2, r3)
            if (r5 == 0) goto L3b
            boolean r0 = r5.moveToFirst()     // Catch: java.lang.Throwable -> L31
            if (r0 == 0) goto L3b
            int r0 = r5.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L31
            int r0 = r5.getInt(r0)     // Catch: java.lang.Throwable -> L31
            goto L3c
        L31:
            r0 = move-exception
            r5.close()     // Catch: java.lang.Throwable -> L36
            goto L3a
        L36:
            r5 = move-exception
            r0.addSuppressed(r5)
        L3a:
            throw r0
        L3b:
            r0 = 0
        L3c:
            if (r5 == 0) goto L41
            r5.close()
        L41:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.MmsQueryBuilder.queryMmsPduBufferDBLargestTelephonyId():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int queryMmsPduBufferDBLargestTelephonyIdWoImsi() {
        /*
            r4 = this;
            java.lang.String r0 = r4.TAG
            java.lang.String r1 = "queryMmsPduBufferDBLargestTelephonyId: "
            android.util.Log.d(r0, r1)
            java.lang.String r0 = "MAX(_id)"
            java.lang.String r1 = "_id"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}
            com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister r4 = r4.mBufferDB
            r2 = 0
            java.lang.String r3 = "sim_imsi IS NULL OR sim_imsi = ''"
            android.database.Cursor r4 = r4.queryMMSPDUMessages(r0, r3, r2, r2)
            if (r4 == 0) goto L35
            boolean r0 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L35
            int r0 = r4.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L2b
            int r0 = r4.getInt(r0)     // Catch: java.lang.Throwable -> L2b
            goto L36
        L2b:
            r0 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L30
            goto L34
        L30:
            r4 = move-exception
            r0.addSuppressed(r4)
        L34:
            throw r0
        L35:
            r0 = 0
        L36:
            if (r4 == 0) goto L3b
            r4.close()
        L3b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.MmsQueryBuilder.queryMmsPduBufferDBLargestTelephonyIdWoImsi():int");
    }

    public ParamSyncFlagsSet insertMMSUsingObject(ParamOMAObject paramOMAObject, boolean z, long j, boolean z2) {
        CloudMessageBufferDBConstants.DirectionFlag directionFlag;
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag;
        long insertTable;
        int i;
        ContentValues contentValues = new ContentValues();
        CloudMessageBufferDBConstants.DirectionFlag directionFlag2 = CloudMessageBufferDBConstants.DirectionFlag.Done;
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag2 = CloudMessageBufferDBConstants.ActionStatusFlag.None;
        ParamSyncFlagsSet paramSyncFlagsSet = new ParamSyncFlagsSet(directionFlag2, actionStatusFlag2);
        paramSyncFlagsSet.mBufferId = -1L;
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.CORRELATION_ID, paramOMAObject.correlationId);
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.M_ID, paramOMAObject.correlationId);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, paramOMAObject.lastModSeq);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAObject.resourceURL.toString()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(paramOMAObject.parentFolder.toString()));
        contentValues.put("path", Util.decodeUrlFromServer(paramOMAObject.path));
        contentValues.put("linenum", Util.getLineTelUriFromObjUrl(paramOMAObject.resourceURL.toString()));
        contentValues.put("date", Long.valueOf(getDateFromDateString(paramOMAObject.DATE)));
        contentValues.put("_id", Integer.valueOf(this.VALUE_ID_UNFETCHED));
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.CT_T, paramOMAObject.MULTIPARTCONTENTTYPE);
        if (this.isCmsEnabled) {
            contentValues.put("safe_message", Integer.valueOf(paramOMAObject.SAFE_MESSAGE));
        }
        if ("IN".equalsIgnoreCase(paramOMAObject.DIRECTION)) {
            contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.MSG_BOX, (Integer) 1);
            contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.M_TYPE, (Integer) 132);
        } else {
            contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.MSG_BOX, (Integer) 2);
            contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.M_TYPE, (Integer) 128);
        }
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.SUB, paramOMAObject.SUBJECT);
        if (paramOMAObject.mIsGoforwardSync) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(actionStatusFlag2.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(directionFlag2.getId()));
        } else if (paramOMAObject.mFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Delete)) {
            CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag3 = CloudMessageBufferDBConstants.ActionStatusFlag.Deleted;
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(actionStatusFlag3.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(directionFlag2.getId()));
            paramSyncFlagsSet.mAction = actionStatusFlag3;
        } else {
            if (this.isCmsEnabled && paramOMAObject.payloadPart == null && paramOMAObject.payloadURL == null) {
                actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Insert;
                if (z2) {
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.FetchForce;
                }
                directionFlag = CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice;
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.TEXT_ONLY, (Integer) 1);
            } else {
                directionFlag = directionFlag2;
                actionStatusFlag = actionStatusFlag2;
            }
            if (paramOMAObject.payloadPart != null) {
                if (z2) {
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri;
                    directionFlag = CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice;
                } else if ("OUT".equalsIgnoreCase(paramOMAObject.DIRECTION) || ("IN".equalsIgnoreCase(paramOMAObject.DIRECTION) && Util.isDownloadObject(paramOMAObject.DATE, this.mStoreClient, 4))) {
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.FetchIndividualUri;
                    directionFlag = CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice;
                } else {
                    directionFlag = directionFlag2;
                    actionStatusFlag = actionStatusFlag2;
                }
            }
            if (paramOMAObject.payloadURL != null) {
                if (z2 || Util.isDownloadObject(paramOMAObject.DATE, this.mStoreClient, 4)) {
                    actionStatusFlag2 = CloudMessageBufferDBConstants.ActionStatusFlag.FetchForce;
                    directionFlag2 = CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice;
                }
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.CT_L, paramOMAObject.payloadURL.toString());
                directionFlag = directionFlag2;
                actionStatusFlag = actionStatusFlag2;
            }
            Log.i(this.TAG, "SyncAction: " + actionStatusFlag.getId() + " direction: " + directionFlag.getId());
            boolean equals = paramOMAObject.mFlag.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Update);
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(actionStatusFlag.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(directionFlag.getId()));
            contentValues.put("read", Integer.valueOf(equals ? 1 : 0));
            contentValues.put("seen", Integer.valueOf(equals ? 1 : 0));
            paramSyncFlagsSet.mAction = actionStatusFlag;
            paramSyncFlagsSet.mDirection = directionFlag;
        }
        checkStarredFlagAndUpdateCV(contentValues, paramOMAObject.mFlagList);
        checkSpamFlagAndUpdateCV(contentValues, paramOMAObject.mFlagList);
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.M_CLS, "personal");
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.V, (Integer) 18);
        contentValues.put("pri", (Integer) 129);
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.RR, (Integer) 129);
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.D_RPT, (Integer) 129);
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.RETR_ST, (Integer) 128);
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.TR_ID, "D4" + paramOMAObject.correlationId);
        contentValues.put("sim_imsi", this.IMSI);
        if (z) {
            insertTable = updateTable(4, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
        } else {
            insertTable = insertTable(4, contentValues);
        }
        paramSyncFlagsSet.mBufferId = insertTable;
        Log.d(this.TAG, "insert MMS: " + insertTable + " res url: " + IMSLog.checker(paramOMAObject.resourceURL.toString()) + " lastmdf: " + paramOMAObject.lastModSeq + " objt size: " + IMSLog.checker(Integer.valueOf(paramOMAObject.TO.size())) + " payloadPart: " + IMSLog.checker(paramOMAObject.payloadPart) + " isUpdate:" + z);
        contentValues.clear();
        contentValues.put("msg_id", Long.valueOf(insertTable));
        String str = "IN".equalsIgnoreCase(paramOMAObject.DIRECTION) ? paramOMAObject.FROM : ITelephonyDBColumns.FROM_INSERT_ADDRESS_TOKEN_STR;
        if (!TextUtils.isEmpty(str)) {
            if (str.contains("tel:")) {
                str = str.replace("tel:", "");
            } else if (this.isCmsEnabled && str.contains("unknown_address")) {
                str = "";
            }
        }
        contentValues.put("address", str);
        contentValues.put("type", (Integer) 137);
        contentValues.put("charset", (Integer) 106);
        insertTable(5, contentValues);
        for (int i2 = 0; i2 < paramOMAObject.TO.size(); i2++) {
            contentValues.clear();
            contentValues.put("msg_id", Long.valueOf(insertTable));
            String str2 = paramOMAObject.TO.get(i2);
            if (str2 != null && str2.contains("tel:")) {
                str2 = str2.replace("tel:", "");
            }
            contentValues.put("address", str2);
            contentValues.put("type", (Integer) 151);
            contentValues.put("charset", (Integer) 106);
            insertTable(5, contentValues);
        }
        if (paramOMAObject.payloadPart != null) {
            contentValues.clear();
            int i3 = 0;
            for (int i4 = 0; i4 < paramOMAObject.payloadPart.length; i4++) {
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.MID, Long.valueOf(insertTable));
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CT, paramOMAObject.payloadPart[i4].contentType.split(";")[0]);
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CID, Util.encodedToIso8859(paramOMAObject.payloadPart[i4].contentId));
                contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADURL, paramOMAObject.payloadPart[i4].href.toString());
                contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CL, Util.generateLocationWithEncoding(paramOMAObject.payloadPart[i4]));
                insertTable(6, contentValues);
                i3 = (int) (i3 + paramOMAObject.payloadPart[i4].size);
            }
            i = i3;
        } else {
            i = 0;
        }
        contentValues.clear();
        contentValues.put(CloudMessageProviderContract.BufferDBMMSpdu.M_SIZE, Integer.valueOf(i));
        int updateTable = updateTable(4, contentValues, "_bufferdbid= ?", new String[]{String.valueOf(insertTable)});
        IMSLog.d(this.TAG, "onMmsPayloadDownloaded payloadSize: " + i + " success:" + updateTable);
        if (this.isCmsEnabled && paramOMAObject.payloadURL == null && !TextUtils.isEmpty(paramOMAObject.TEXT_CONTENT)) {
            contentValues.clear();
            contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.MID, Long.valueOf(insertTable));
            contentValues.put(CloudMessageProviderContract.BufferDBMMSpart.CT, MIMEContentType.PLAIN_TEXT);
            contentValues.put("text", paramOMAObject.TEXT_CONTENT);
            insertTable(6, contentValues);
        }
        return paramSyncFlagsSet;
    }

    @Override // com.sec.internal.ims.cmstore.querybuilders.QueryBuilderBase
    public void cleanAllBufferDB() {
        if (this.isCmsEnabled) {
            Util.deleteFilesinMmsBufferFolder(this.mStoreClient.getClientID());
            cleanMMSBufferDBUsingIMSIAndTableIndex();
        } else {
            Log.i(this.TAG, "cleanAllBufferDB: Cms is disabled");
        }
    }

    @Override // com.sec.internal.ims.cmstore.querybuilders.QueryBuilderBase
    public void cleanAllBufferDB(String str) {
        Util.deleteFilesinMmsBufferFolder(this.mStoreClient.getClientID());
        cleanMMSBufferDBUsingIMSIAndTableIndex(str);
    }

    public void cleanMMSBufferDBUsingIMSIAndTableIndex() {
        cleanMMSBufferDBUsingIMSIAndTableIndex(this.IMSI);
    }

    public void cleanMMSBufferDBUsingIMSIAndTableIndex(String str) {
        Log.i(this.TAG, "cleanMMSBufferDBUsingIMSIAndTableIndex");
        String[] strArr = {str};
        Cursor queryMMSPDUMessages = this.mBufferDB.queryMMSPDUMessages(new String[]{CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID}, "sim_imsi= ?", strArr, null);
        if (queryMMSPDUMessages != null) {
            try {
                if (queryMMSPDUMessages.moveToFirst()) {
                    do {
                        long j = queryMMSPDUMessages.getLong(queryMMSPDUMessages.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        Log.i(this.TAG, "delete addr and part entries for bufferDbId: " + j);
                        deleteAddrTable(j);
                        deletePartTable(j);
                    } while (queryMMSPDUMessages.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    queryMMSPDUMessages.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryMMSPDUMessages != null) {
            queryMMSPDUMessages.close();
        }
        int deleteTable = this.mBufferDB.deleteTable(4, "sim_imsi= ?", strArr);
        Log.i(this.TAG, "cleanMMSBufferDBUsingIMSIAndTableIndex isSuccess: " + deleteTable);
    }

    private void deleteAddrTable(long j) {
        this.mBufferDB.deleteTable(5, "msg_id= ?", new String[]{String.valueOf(j)});
    }

    private void deletePartTable(long j) {
        this.mBufferDB.deleteTable(6, "mid= ?", new String[]{String.valueOf(j)});
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean queryIfMmsPartsDownloadComplete(long r4) {
        /*
            r3 = this;
            java.lang.String r0 = r3.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "queryIfMmsPartsDownloadComplete: "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            android.util.Log.i(r0, r1)
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.String[] r4 = new java.lang.String[]{r4}
            com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister r3 = r3.mBufferDB
            r5 = 0
            java.lang.String r0 = "mid= ? AND (_data IS NULL OR _data = '') AND (text IS NULL OR text = '')"
            android.database.Cursor r3 = r3.queryMMSPARTMessages(r5, r0, r4, r5)
            if (r3 == 0) goto L3c
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L32
            if (r4 == 0) goto L3c
            r4 = 0
            goto L3d
        L32:
            r4 = move-exception
            r3.close()     // Catch: java.lang.Throwable -> L37
            goto L3b
        L37:
            r3 = move-exception
            r4.addSuppressed(r3)
        L3b:
            throw r4
        L3c:
            r4 = 1
        L3d:
            if (r3 == 0) goto L42
            r3.close()
        L42:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.MmsQueryBuilder.queryIfMmsPartsDownloadComplete(long):boolean");
    }

    public Cursor queryUndownloadedPart(long j) {
        return this.mBufferDB.queryMMSPARTMessages(null, "mid= ? AND (_data IS NULL OR _data = '') AND (text IS NULL OR text = '')", new String[]{String.valueOf(j)}, null);
    }

    public Cursor queryMMSPartRowIdWithoutAppId(long j) {
        return this.mBufferDB.queryMMSPARTMessages(null, "mid= ? AND (_id IS NULL OR _id = '')", new String[]{String.valueOf(j)}, null);
    }

    public Cursor queryMMSBufferDBwithResUrl(String str) {
        return this.mBufferDB.queryTablewithResUrl(4, str);
    }

    public int deleteMMSBufferDBwithResUrl(String str) {
        return this.mBufferDB.deleteTablewithResUrl(4, str);
    }

    public Cursor queryToDeviceUnDownloadedMms(String str, int i) {
        return this.mBufferDB.queryMMSPDUMessages(null, "syncaction=? AND linenum=? AND sim_imsi=?", new String[]{String.valueOf(i), str, this.IMSI}, null);
    }

    public Cursor queryToCloudUnsyncedMms() {
        Log.d(this.TAG, "queryToCloudUnsyncedMms: ");
        return this.mBufferDB.queryMMSPDUMessages(null, "syncdirection=? AND res_url IS NOT NULL AND date > ? AND sim_imsi=?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud.getId()), String.valueOf(System.currentTimeMillis() - TimeUnit.HOURS.toMillis(10L)), this.IMSI}, null);
    }

    public Cursor queryToDeviceUnsyncedMms() {
        Log.d(this.TAG, "queryToDeviceUnsyncedMms: ");
        return this.mBufferDB.queryMMSPDUMessages(null, "syncdirection=? AND sim_imsi=?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice.getId()), this.IMSI}, null);
    }
}
