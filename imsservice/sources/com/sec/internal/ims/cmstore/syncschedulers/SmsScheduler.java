package com.sec.internal.ims.cmstore.syncschedulers;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.DeviceLegacyUpdateParam;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUpdateParam;
import com.sec.internal.ims.cmstore.params.ParamAppJsonValue;
import com.sec.internal.ims.cmstore.params.ParamOMAObject;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet;
import com.sec.internal.ims.cmstore.querybuilders.SmsQueryBuilder;
import com.sec.internal.ims.cmstore.querybuilders.SummaryQueryBuilder;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.ChangedObject;
import com.sec.internal.omanetapi.nms.data.DeletedObject;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class SmsScheduler extends BaseMessagingScheduler {
    private String TAG;
    protected final SmsQueryBuilder mBufferDbQuery;
    private final MultiLineScheduler mMultiLineScheduler;

    public SmsScheduler(MessageStoreClient messageStoreClient, CloudMessageBufferDBEventSchedulingRule cloudMessageBufferDBEventSchedulingRule, SummaryQueryBuilder summaryQueryBuilder, MultiLineScheduler multiLineScheduler, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, Looper looper) {
        super(messageStoreClient, cloudMessageBufferDBEventSchedulingRule, iDeviceDataChangeListener, iBufferDBEventListener, looper, summaryQueryBuilder);
        this.TAG = SmsScheduler.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mBufferDbQuery = new SmsQueryBuilder(messageStoreClient, iBufferDBEventListener);
        this.mMultiLineScheduler = multiLineScheduler;
        this.mDbTableContractIndex = 3;
    }

    public long handleObjectSMSCloudSearch(ParamOMAObject paramOMAObject) {
        Log.i(this.TAG, "handleObjectSMSCloudSearch: " + paramOMAObject.correlationTag);
        Cursor searchUnSyncedSMSBufferUsingCorrelationTag = this.mBufferDbQuery.searchUnSyncedSMSBufferUsingCorrelationTag(paramOMAObject.correlationTag);
        try {
            handleObjectSMSCloudSearchFromCursor(searchUnSyncedSMSBufferUsingCorrelationTag, paramOMAObject, -1L);
            if (searchUnSyncedSMSBufferUsingCorrelationTag != null) {
                searchUnSyncedSMSBufferUsingCorrelationTag.close();
            }
            return -1L;
        } catch (Throwable th) {
            if (searchUnSyncedSMSBufferUsingCorrelationTag != null) {
                try {
                    searchUnSyncedSMSBufferUsingCorrelationTag.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void handleObjectSMSCloudSearchFromCursor(Cursor cursor, ParamOMAObject paramOMAObject, long j) {
        ParamSyncFlagsSet setFlagsForCldOperation;
        if (cursor != null && cursor.moveToFirst()) {
            long j2 = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
            long j3 = cursor.getLong(cursor.getColumnIndexOrThrow("date"));
            CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
            CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
            String string = cursor.getString(cursor.getColumnIndexOrThrow("body"));
            Log.d(this.TAG, "handleObjectSMSCloudSearch find bufferDB: " + paramOMAObject.correlationTag + " id: " + j2 + " time: " + j3 + " body:" + string);
            ContentValues contentValues = new ContentValues();
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, paramOMAObject.lastModSeq);
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAObject.resourceURL.toString()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(paramOMAObject.parentFolder.toString()));
            contentValues.put("path", Util.decodeUrlFromServer(paramOMAObject.path));
            ParamSyncFlagsSet paramSyncFlagsSet = new ParamSyncFlagsSet(CloudMessageBufferDBConstants.DirectionFlag.Done, CloudMessageBufferDBConstants.ActionStatusFlag.None);
            paramSyncFlagsSet.mIsChanged = false;
            CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag = paramOMAObject.mFlag;
            CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag2 = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
            if (actionStatusFlag.equals(actionStatusFlag2)) {
                paramSyncFlagsSet.setIsChangedActionAndDirection(true, actionStatusFlag2, CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice);
            } else {
                CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag3 = paramOMAObject.mFlag;
                CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag4 = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
                if (actionStatusFlag3.equals(actionStatusFlag4)) {
                    if (cursor.getInt(cursor.getColumnIndexOrThrow("read")) == 0) {
                        contentValues.put("read", (Integer) 1);
                    }
                    setFlagsForCldOperation = this.mScheduleRule.getSetFlagsForCldOperation(this.mDbTableContractIndex, j2, valueOf2, valueOf, actionStatusFlag4);
                } else {
                    setFlagsForCldOperation = this.mScheduleRule.getSetFlagsForCldOperation(this.mDbTableContractIndex, j2, valueOf2, valueOf, CloudMessageBufferDBConstants.ActionStatusFlag.Insert);
                }
                paramSyncFlagsSet = setFlagsForCldOperation;
            }
            this.mSummaryDB.insertSummaryDbUsingObjectIfNonExist(paramOMAObject, 3);
            if (paramSyncFlagsSet.mIsChanged) {
                contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(paramSyncFlagsSet.mAction.getId()));
                contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(paramSyncFlagsSet.mDirection.getId()));
                updateQueryTable(contentValues, j2, this.mBufferDbQuery);
                handleOutPutParamSyncFlagSet(paramSyncFlagsSet, j2, 3, false, paramOMAObject.mIsGoforwardSync, paramOMAObject.mLine, null, false);
                return;
            }
            updateQueryTable(contentValues, j2, this.mBufferDbQuery);
            return;
        }
        ArrayList<Long> insertSMSUsingObject = this.mBufferDbQuery.insertSMSUsingObject(paramOMAObject, false, 0L);
        this.mSummaryDB.insertSummaryDbUsingObjectIfNonExist(paramOMAObject, 3);
        Iterator<Long> it = insertSMSUsingObject.iterator();
        while (it.hasNext()) {
            long longValue = it.next().longValue();
            if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldSkipMessage(paramOMAObject)) {
                deleteMessageFromCloud(3, longValue, paramOMAObject.mLine, this.mBufferDbQuery);
            } else {
                handleOutPutParamSyncFlagSet(new ParamSyncFlagsSet(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice, CloudMessageBufferDBConstants.ActionStatusFlag.Insert), longValue, 3, false, paramOMAObject.mIsGoforwardSync, Util.getLineTelUriFromObjUrl(paramOMAObject.resourceURL.toString()), null, false);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x004f, code lost:
    
        if (com.sec.internal.constants.ims.cmstore.McsConstants.Protocol.SENDER_SD.equals(r13) == false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x022f A[Catch: NullPointerException -> 0x0246, TRY_ENTER, TRY_LEAVE, TryCatch #5 {NullPointerException -> 0x0246, blocks: (B:37:0x022f, B:52:0x0245, B:51:0x0242, B:46:0x023c), top: B:6:0x003d, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x023c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[Catch: NullPointerException -> 0x0246, SYNTHETIC, TRY_LEAVE, TryCatch #5 {NullPointerException -> 0x0246, blocks: (B:37:0x022f, B:52:0x0245, B:51:0x0242, B:46:0x023c), top: B:6:0x003d, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long handleNormalSyncObjectSmsDownload(com.sec.internal.ims.cmstore.params.ParamOMAObject r27) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.SmsScheduler.handleNormalSyncObjectSmsDownload(com.sec.internal.ims.cmstore.params.ParamOMAObject):long");
    }

    public void onNmsEventChangedObjSmsBufferDbAvailableUsingCorrTag(Cursor cursor, ChangedObject changedObject, boolean z) {
        onNmsEventChangedObjBufferDbSmsAvailable(cursor, changedObject, z, true);
    }

    public void onNmsEventDeletedObjSmsBufferDbAvailableUsingCorrTag(Cursor cursor, DeletedObject deletedObject, boolean z) {
        onNmsEventDeletedObjBufferDbSmsAvailable(cursor, deletedObject, z, true);
    }

    public void onNmsEventChangedObjBufferDbSmsAvailableUsingUrl(Cursor cursor, ChangedObject changedObject, boolean z) {
        onNmsEventChangedObjBufferDbSmsAvailable(cursor, changedObject, z, false);
    }

    public void onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(Cursor cursor, DeletedObject deletedObject, boolean z) {
        onNmsEventDeletedObjBufferDbSmsAvailable(cursor, deletedObject, z, false);
    }

    public void onNmsEventChangedObjBufferDbSmsAvailable(Cursor cursor, ChangedObject changedObject, boolean z, boolean z2) {
        String[] strArr;
        CloudMessageBufferDBConstants.ActionStatusFlag cloudActionPerFlag;
        boolean z3;
        long j = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
        long j2 = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("linenum"));
        long j3 = cursor.getLong(cursor.getColumnIndexOrThrow("date"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("body"));
        Log.d(this.TAG, "onNmsEventChangedObjBufferDbSmsAvailable find bufferDB: " + changedObject.correlationTag + " id: " + j + " time: " + j3 + " body:" + string2);
        String[] strArr2 = {String.valueOf(j)};
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, changedObject.lastModSeq);
        if (z2) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(changedObject.resourceURL.toString()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(changedObject.parentFolder.toString()));
        }
        if (this.isCmsEnabled) {
            if (cursor.getInt(cursor.getColumnIndexOrThrow("read")) == 1) {
                z3 = true;
                strArr = strArr2;
            } else {
                strArr = strArr2;
                z3 = false;
            }
            cloudActionPerFlag = this.mBufferDbQuery.getCloudActionPerFlag(changedObject.flags, z3, cursor.getInt(cursor.getColumnIndexOrThrow("locked")) == 1);
        } else {
            strArr = strArr2;
            cloudActionPerFlag = this.mBufferDbQuery.getCloudActionPerFlag(changedObject.flags);
        }
        if (CloudMessageBufferDBConstants.ActionStatusFlag.Update.equals(cloudActionPerFlag)) {
            contentValues.put("read", (Integer) 1);
        } else if (CloudMessageBufferDBConstants.ActionStatusFlag.Starred.equals(cloudActionPerFlag)) {
            contentValues.put("locked", (Integer) 1);
        } else if (CloudMessageBufferDBConstants.ActionStatusFlag.UnStarred.equals(cloudActionPerFlag)) {
            contentValues.put("locked", (Integer) 0);
        }
        String[] strArr3 = strArr;
        ParamSyncFlagsSet setFlagsForCldOperationForCms = this.isCmsEnabled ? this.mScheduleRule.getSetFlagsForCldOperationForCms(this.mDbTableContractIndex, j, valueOf2, valueOf, cloudActionPerFlag) : this.mScheduleRule.getSetFlagsForCldOperation(this.mDbTableContractIndex, j, valueOf2, valueOf, cloudActionPerFlag);
        if (setFlagsForCldOperationForCms.mIsChanged) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(setFlagsForCldOperationForCms.mDirection.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForCldOperationForCms.mAction.getId()));
        }
        this.mBufferDbQuery.updateTable(this.mDbTableContractIndex, contentValues, "_bufferdbid=?", strArr3);
        if (j2 > 0) {
            handleOutPutParamSyncFlagSet(setFlagsForCldOperationForCms, j, this.mDbTableContractIndex, false, z, string, null, false);
        }
    }

    public void onNmsEventDeletedObjBufferDbSmsAvailable(Cursor cursor, DeletedObject deletedObject, boolean z, boolean z2) {
        long j = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
        long j2 = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("linenum"));
        long j3 = cursor.getLong(cursor.getColumnIndexOrThrow("date"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("body"));
        Log.d(this.TAG, "onNmsEventDeletedObjBufferDbSmsAvailable find bufferDB: " + deletedObject.correlationTag + " id: " + j + " time: " + j3 + " body:" + string2);
        String[] strArr = {String.valueOf(j)};
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, Long.valueOf(deletedObject.lastModSeq));
        if (z2) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(deletedObject.resourceURL.toString()));
        }
        ParamSyncFlagsSet setFlagsForCldOperation = this.mScheduleRule.getSetFlagsForCldOperation(this.mDbTableContractIndex, j, valueOf2, valueOf, CloudMessageBufferDBConstants.ActionStatusFlag.Delete);
        if (setFlagsForCldOperation.mIsChanged) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(setFlagsForCldOperation.mDirection.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForCldOperation.mAction.getId()));
        }
        this.mBufferDbQuery.updateTable(this.mDbTableContractIndex, contentValues, "_bufferdbid=?", strArr);
        if (j2 > 0) {
            handleOutPutParamSyncFlagSet(setFlagsForCldOperation, j, this.mDbTableContractIndex, false, z, string, null, false);
        }
    }

    public void handleExistingBufferForGroupUpdate(long j, ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "handleExistingBufferForGroupUpdate:  groupId:" + j);
        Cursor queryNonHiddenSMSwithGroupId = this.mBufferDbQuery.queryNonHiddenSMSwithGroupId(j);
        if (queryNonHiddenSMSwithGroupId != null) {
            try {
                if (queryNonHiddenSMSwithGroupId.moveToNext()) {
                    int i = queryNonHiddenSMSwithGroupId.getInt(queryNonHiddenSMSwithGroupId.getColumnIndexOrThrow("_id"));
                    String string = queryNonHiddenSMSwithGroupId.getString(queryNonHiddenSMSwithGroupId.getColumnIndexOrThrow("address"));
                    long j2 = queryNonHiddenSMSwithGroupId.getLong(queryNonHiddenSMSwithGroupId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                    Log.i(this.TAG, "handleExistingBufferForGroupUpdate bufferdb:" + j2 + " appId: " + i + " address: " + IMSLog.numberChecker(string));
                    int i2 = paramAppJsonValue.mDataContractType;
                    CloudMessageBufferDBConstants.MsgOperationFlag msgOperationFlag = paramAppJsonValue.mOperation;
                    int i3 = paramAppJsonValue.mRowId;
                    String str = paramAppJsonValue.mCorrelationTag;
                    String str2 = paramAppJsonValue.mCorrelationId;
                    DeviceLegacyUpdateParam deviceLegacyUpdateParam = new DeviceLegacyUpdateParam(i2, msgOperationFlag, i3, str, str2, str2, paramAppJsonValue.mLine);
                    if (paramAppJsonValue.mOperation == CloudMessageBufferDBConstants.MsgOperationFlag.Sent) {
                        IMSLog.i(this.TAG, "handleExistingBufferForGroupUpdate nothing to be done on SentMessage update for group sms");
                    } else {
                        handleExistingBufferForDeviceLegacyUpdate(queryNonHiddenSMSwithGroupId, deviceLegacyUpdateParam, false, bufferDBChangeParamList);
                    }
                }
            } finally {
            }
        }
        if (queryNonHiddenSMSwithGroupId != null) {
            queryNonHiddenSMSwithGroupId.close();
        }
    }

    public void handleExistingBufferForDeviceLegacyUpdate(Cursor cursor, DeviceLegacyUpdateParam deviceLegacyUpdateParam, boolean z, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "handleExistingBufferForDeviceLegacyUpdate: " + deviceLegacyUpdateParam + ", mIsGoforwardSync: " + z + ", changelist: " + bufferDBChangeParamList);
        ContentValues contentValues = new ContentValues();
        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
        long j = cursor.getLong(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("linenum"));
        ParamSyncFlagsSet setFlagsForMsgOperation = this.mScheduleRule.getSetFlagsForMsgOperation(this.mDbTableContractIndex, j, valueOf2, valueOf, deviceLegacyUpdateParam.mOperation);
        if (setFlagsForMsgOperation.mIsChanged) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(setFlagsForMsgOperation.mDirection.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForMsgOperation.mAction.getId()));
        }
        if (CloudMessageBufferDBConstants.MsgOperationFlag.Read.equals(deviceLegacyUpdateParam.mOperation)) {
            contentValues.put("read", (Integer) 1);
        }
        if (CloudMessageBufferDBConstants.MsgOperationFlag.Starred.equals(deviceLegacyUpdateParam.mOperation)) {
            contentValues.put("locked", (Integer) 1);
        } else if (CloudMessageBufferDBConstants.MsgOperationFlag.UnStarred.equals(deviceLegacyUpdateParam.mOperation)) {
            contentValues.put("locked", (Integer) 0);
        }
        if (CloudMessageBufferDBConstants.MsgOperationFlag.Spam.equals(deviceLegacyUpdateParam.mOperation)) {
            contentValues.put("spam_type", (Integer) 1);
        }
        if (deviceLegacyUpdateParam.mTableindex == 3) {
            String[] strArr = {String.valueOf(j)};
            int i = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
            long j2 = deviceLegacyUpdateParam.mRowId;
            if (j2 != i) {
                contentValues.put("_id", Long.valueOf(j2));
            }
            this.mBufferDbQuery.updateTable(deviceLegacyUpdateParam.mTableindex, contentValues, "_bufferdbid=?", strArr);
        }
        if (setFlagsForMsgOperation.mIsChanged) {
            handleOutPutParamSyncFlagSet(setFlagsForMsgOperation, j, deviceLegacyUpdateParam.mTableindex, false, z, string, bufferDBChangeParamList, false);
        }
    }

    public void handleNonExistingBufferForDeviceLegacyUpdate(DeviceLegacyUpdateParam deviceLegacyUpdateParam) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
        contentValues.put("linenum", deviceLegacyUpdateParam.mLine);
        if (deviceLegacyUpdateParam.mTableindex == 3) {
            Cursor querySMSUseRowId = this.mBufferDbQuery.querySMSUseRowId(Long.valueOf(deviceLegacyUpdateParam.mRowId).longValue());
            if (querySMSUseRowId != null) {
                try {
                    if (querySMSUseRowId.moveToFirst()) {
                        this.mBufferDbQuery.insertToSMSBufferDB(querySMSUseRowId, contentValues, false, true);
                    }
                } catch (Throwable th) {
                    try {
                        querySMSUseRowId.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (querySMSUseRowId != null) {
                querySMSUseRowId.close();
            }
        }
    }

    public void notifyMsgAppFetchBuffer(Cursor cursor, int i) {
        if (i == 3) {
            JsonArray jsonArray = new JsonArray();
            do {
                int i2 = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("id", String.valueOf(i2));
                jsonArray.add(jsonObject);
                Log.i(this.TAG, "jsonArrayRowIdsSMS.size(): " + jsonArray.size() + ", SMS: " + jsonArray.toString());
                if (jsonArray.size() == this.mMaxNumMsgsNotifyAppInIntent) {
                    this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.SMS, jsonArray.toString(), false);
                    jsonArray = new JsonArray();
                }
            } while (cursor.moveToNext());
            if (jsonArray.size() > 0) {
                this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.SMS, jsonArray.toString(), false);
            }
        }
    }

    public Cursor queryToCloudUnsyncedSms() {
        return this.mBufferDbQuery.queryToCloudUnsyncedSms();
    }

    public Cursor queryToDeviceUnsyncedSms() {
        return this.mBufferDbQuery.queryToDeviceUnsyncedSms();
    }

    public Cursor querySMSMessagesToUpload() {
        return this.mBufferDbQuery.querySMSMessagesToUpload();
    }

    public Cursor querySMSBufferDBwithResUrl(String str) {
        return this.mBufferDbQuery.querySMSBufferDBwithResUrl(str);
    }

    public int deleteSMSBufferDBwithResUrl(String str) {
        return this.mBufferDbQuery.deleteSMSBufferDBwithResUrl(str);
    }

    public Cursor searchUnSyncedSMSBufferUsingCorrelationTag(String str) {
        return this.mBufferDbQuery.searchUnSyncedSMSBufferUsingCorrelationTag(str);
    }

    public Cursor querySMSMessagesBySycnDirection(int i, String str) {
        return this.mBufferDbQuery.queryMessageBySyncDirection(i, str);
    }

    public Cursor queryAllSMSfromTelephony() {
        return this.mBufferDbQuery.queryAllSMSfromTelephony();
    }

    public Cursor querySMSfromTelephonyWithIMSI(String str) {
        return this.mBufferDbQuery.querySMSfromTelephonyWithIMSI(str);
    }

    public Cursor querySMSfromTelephonyWoIMSI() {
        return this.mBufferDbQuery.querySMSfromTelephonyWoIMSI();
    }

    public Cursor queryForceInitDeltaSMSFromTP() {
        return this.mBufferDbQuery.queryForceInitDeltaSMSFromTP();
    }

    public Cursor queryDeltaSMSfromTelephony() {
        return this.mBufferDbQuery.queryDeltaSMSfromTelephony();
    }

    public Cursor queryDeltaSMSfromTelephonyWoImsi() {
        return this.mBufferDbQuery.queryDeltaSMSfromTelephonyWoImsi();
    }

    public void syncReadSmsFromTelephony() {
        ArrayList arrayList = new ArrayList();
        try {
            Cursor queryReadSMSfromTelephony = this.mBufferDbQuery.queryReadSMSfromTelephony();
            if (queryReadSMSfromTelephony != null) {
                try {
                    if (queryReadSMSfromTelephony.moveToFirst()) {
                        arrayList.add(queryReadSMSfromTelephony.getString(queryReadSMSfromTelephony.getColumnIndex("_id")));
                    }
                } finally {
                }
            }
            if (queryReadSMSfromTelephony != null) {
                queryReadSMSfromTelephony.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        for (int i = 0; i < arrayList.size(); i++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
            contentValues.put("read", (Integer) 1);
            this.mBufferDbQuery.updateTable(this.mDbTableContractIndex, contentValues, "_id=? AND read=? AND syncaction<>? AND syncaction<>?", new String[]{(String) arrayList.get(i), String.valueOf(0), String.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Delete.getId()), String.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Deleted.getId())});
        }
    }

    public void insertToSMSBufferDB(Cursor cursor, ContentValues contentValues, boolean z) {
        this.mBufferDbQuery.insertToSMSBufferDB(cursor, contentValues, z, false);
    }

    private void handleGroupSMSUpdateParam(ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "handleGroupSMSUpdateParam: " + paramAppJsonValue);
        Cursor cursor = null;
        try {
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[paramAppJsonValue.mOperation.ordinal()];
            if (i == 1) {
                cursor = this.mBufferDbQuery.searchSMSBufferUsingRowId(paramAppJsonValue.mRowId);
                if (cursor != null) {
                    if (!cursor.moveToNext()) {
                    }
                }
                IMSLog.i(this.TAG, "group message upload");
                bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(paramAppJsonValue.mDataContractType, this.mBufferDbQuery.handleGroupSMSUpload(paramAppJsonValue), false, paramAppJsonValue.mLine, CloudMessageBufferDBConstants.ActionStatusFlag.Update, this.mStoreClient, true));
                if (cursor != null) {
                    cursor.close();
                    return;
                }
                return;
            }
            if (i == 2) {
                cursor = this.mBufferDbQuery.searchSMSBufferUsingRowId(paramAppJsonValue.mRowId);
            }
            if (cursor != null && cursor.moveToFirst()) {
                long j = cursor.getLong(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.GROUP_ID));
                long j2 = cursor.getLong(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                IMSLog.i(this.TAG, "handleExistingBufferForGroupUpdate bufferId:" + j2);
                handleExistingBufferForGroupUpdate(j, paramAppJsonValue, bufferDBChangeParamList);
            } else {
                IMSLog.e(this.TAG, "handleGroupSMSUpdateParam Invalid operation");
            }
        } finally {
            if (0 != 0) {
                cursor.close();
            }
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.syncschedulers.SmsScheduler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag;

        static {
            int[] iArr = new int[CloudMessageBufferDBConstants.MsgOperationFlag.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag = iArr;
            try {
                iArr[CloudMessageBufferDBConstants.MsgOperationFlag.Sent.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Delete.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Received.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Sending.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Read.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.SendFail.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Spam.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Trash.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Restore.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Starred.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.UnStarred.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Receiving.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private void handleDeviceLegacyUpdateParam(DeviceLegacyUpdateParam deviceLegacyUpdateParam, boolean z, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "handleDeviceLegacyUpdateParam: " + deviceLegacyUpdateParam);
        if (deviceLegacyUpdateParam.mTableindex != 3 || deviceLegacyUpdateParam.mCorrelationTag == null) {
            return;
        }
        Cursor cursor = null;
        try {
            switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[deviceLegacyUpdateParam.mOperation.ordinal()]) {
                case 1:
                case 3:
                    cursor = this.mBufferDbQuery.searchSMSBufferUsingCorrelationTagForEarlierNmsEvent(deviceLegacyUpdateParam.mCorrelationTag, deviceLegacyUpdateParam.mLine);
                    break;
                case 2:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                    cursor = this.mBufferDbQuery.searchSMSBufferUsingRowId(deviceLegacyUpdateParam.mRowId);
                    break;
                case 12:
                    return;
            }
            if (cursor != null && cursor.moveToFirst()) {
                handleExistingBufferForDeviceLegacyUpdate(cursor, deviceLegacyUpdateParam, z, bufferDBChangeParamList);
            } else {
                handleNonExistingBufferForDeviceLegacyUpdate(deviceLegacyUpdateParam);
            }
        } finally {
            if (0 != 0) {
                cursor.close();
            }
        }
    }

    public void onUpdateFromDeviceMsgAppFetch(DeviceMsgAppFetchUpdateParam deviceMsgAppFetchUpdateParam, boolean z) {
        onUpdateFromDeviceMsgAppFetch(deviceMsgAppFetchUpdateParam, z, this.mBufferDbQuery);
    }

    public void onUpdateFromDeviceMsgAppFetchFailed(DeviceMsgAppFetchUpdateParam deviceMsgAppFetchUpdateParam) {
        this.mBufferDbQuery.updateAppFetchingFailed(deviceMsgAppFetchUpdateParam.mTableindex, deviceMsgAppFetchUpdateParam.mBufferRowId);
    }

    public void onCloudUpdateFlagSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        onCloudUpdateFlagSuccess(paramOMAresponseforBufDB, z, this.mBufferDbQuery);
    }

    public void onCloudUploadSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        if (paramOMAresponseforBufDB.getReference() == null) {
            return;
        }
        handleCloudUploadSuccess(paramOMAresponseforBufDB, z, this.mBufferDbQuery, 3);
    }

    public void onGroupSMSUploadSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB.getBufferDBChangeParam().mIsGroupSMSUpload) {
            handleGroupSMSUploadResponse(paramOMAresponseforBufDB);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0072  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleGroupSMSUploadResponse(com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.SmsScheduler.handleGroupSMSUploadResponse(com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB):void");
    }

    public void cleanAllBufferDB() {
        this.mBufferDbQuery.cleanAllBufferDB();
    }

    public void cleanAllBufferDB(String str) {
        this.mBufferDbQuery.cleanAllBufferDB(str);
    }

    public void onAppOperationReceived(ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "onAppOperationReceived: " + paramAppJsonValue);
        if (paramAppJsonValue.mIsGroupSMS) {
            handleGroupSMSUpdateParam(paramAppJsonValue, bufferDBChangeParamList);
            return;
        }
        int i = paramAppJsonValue.mDataContractType;
        CloudMessageBufferDBConstants.MsgOperationFlag msgOperationFlag = paramAppJsonValue.mOperation;
        int i2 = paramAppJsonValue.mRowId;
        String str = paramAppJsonValue.mCorrelationTag;
        String str2 = paramAppJsonValue.mCorrelationId;
        handleDeviceLegacyUpdateParam(new DeviceLegacyUpdateParam(i, msgOperationFlag, i2, str, str2, str2, paramAppJsonValue.mLine), false, bufferDBChangeParamList);
    }

    public boolean handleCrossSearchObj(ParamOMAObject paramOMAObject, String str, boolean z) {
        Log.i(this.TAG, "handleCrossSearchObj():  line: " + IMSLog.checker(str) + " objt: " + paramOMAObject);
        Cursor querySMSBufferDBwithResUrl = querySMSBufferDBwithResUrl(paramOMAObject.resourceURL.toString());
        if (querySMSBufferDBwithResUrl != null) {
            try {
                if (querySMSBufferDBwithResUrl.moveToFirst()) {
                    onCrossObjectSearchSmsAvailableUsingResUrl(querySMSBufferDBwithResUrl, paramOMAObject, str, z);
                    querySMSBufferDBwithResUrl.close();
                    return true;
                }
            } catch (Throwable th) {
                try {
                    querySMSBufferDBwithResUrl.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySMSBufferDBwithResUrl != null) {
            querySMSBufferDBwithResUrl.close();
        }
        Cursor searchUnSyncedSMSBufferUsingCorrelationTag = searchUnSyncedSMSBufferUsingCorrelationTag(paramOMAObject.correlationTag);
        if (searchUnSyncedSMSBufferUsingCorrelationTag != null) {
            try {
                if (searchUnSyncedSMSBufferUsingCorrelationTag.moveToFirst()) {
                    onCrossObjectSearchSmsAvailableUsingCorrTag(searchUnSyncedSMSBufferUsingCorrelationTag, paramOMAObject, str, z);
                    searchUnSyncedSMSBufferUsingCorrelationTag.close();
                    return true;
                }
            } catch (Throwable th3) {
                try {
                    searchUnSyncedSMSBufferUsingCorrelationTag.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (searchUnSyncedSMSBufferUsingCorrelationTag == null) {
            return false;
        }
        searchUnSyncedSMSBufferUsingCorrelationTag.close();
        return false;
    }

    private void onCrossObjectSearchSmsAvailableUsingResUrl(Cursor cursor, ParamOMAObject paramOMAObject, String str, boolean z) {
        onCrossObjectSearchSmsAvailable(cursor, paramOMAObject, str, z, false);
    }

    private void onCrossObjectSearchSmsAvailableUsingCorrTag(Cursor cursor, ParamOMAObject paramOMAObject, String str, boolean z) {
        onCrossObjectSearchSmsAvailable(cursor, paramOMAObject, str, z, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onCrossObjectSearchSmsAvailable(android.database.Cursor r21, com.sec.internal.ims.cmstore.params.ParamOMAObject r22, java.lang.String r23, boolean r24, boolean r25) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.SmsScheduler.onCrossObjectSearchSmsAvailable(android.database.Cursor, com.sec.internal.ims.cmstore.params.ParamOMAObject, java.lang.String, boolean, boolean):void");
    }

    public void updateCorrelationTagObject(ParamOMAObject paramOMAObject) {
        String msisdn;
        int i;
        Log.i(this.TAG, "updateCorrelationTagObject: " + paramOMAObject);
        try {
            String str = paramOMAObject.TEXT_CONTENT;
            if ("IN".equalsIgnoreCase(paramOMAObject.DIRECTION)) {
                msisdn = Util.getMsisdn(paramOMAObject.FROM, Util.getSimCountryCode(this.mContext, this.mStoreClient.getClientID()));
                i = 1;
            } else {
                msisdn = Util.getMsisdn(paramOMAObject.TO.get(0), Util.getSimCountryCode(this.mContext, this.mStoreClient.getClientID()));
                i = 2;
            }
            paramOMAObject.correlationTag = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getSmsHashTagOrCorrelationTag(msisdn, i, str);
        } catch (Exception e) {
            Log.e(this.TAG, "updateCorrelationTagObject: " + e.getMessage());
        }
    }

    public void notifyMsgAppDeleteFail(int i, long j, String str) {
        Log.i(this.TAG, "notifyMsgAppDeleteFail, dbIndex: " + i + " bufferDbId: " + j + " line: " + IMSLog.checker(str));
        if (i == 3) {
            JsonArray jsonArray = new JsonArray();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("id", String.valueOf(j));
            jsonArray.add(jsonObject);
            this.mCallbackMsgApp.notifyAppCloudDeleteFail(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.SMS, jsonArray.toString());
        }
    }

    public void onUpdateCmsConfig() {
        this.mBufferDbQuery.onUpdateCmsConfigInitSyncDataTtl();
    }
}
