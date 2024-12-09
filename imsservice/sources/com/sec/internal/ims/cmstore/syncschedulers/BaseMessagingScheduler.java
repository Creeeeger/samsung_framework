package com.sec.internal.ims.cmstore.syncschedulers;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUriParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet;
import com.sec.internal.ims.cmstore.querybuilders.QueryBuilderBase;
import com.sec.internal.ims.cmstore.querybuilders.SummaryQueryBuilder;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.interfaces.ims.cmstore.ITelephonyDBColumns;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.PayloadPartInfo;

/* loaded from: classes.dex */
public class BaseMessagingScheduler extends Handler {
    private String TAG;
    protected boolean isCmsEnabled;
    protected final IBufferDBEventListener mCallbackMsgApp;
    protected final Context mContext;
    protected int mDbTableContractIndex;
    protected final IDeviceDataChangeListener mDeviceDataChangeListener;
    protected int mMaxNumMsgsNotifyAppInIntent;
    protected final CloudMessageBufferDBEventSchedulingRule mScheduleRule;
    protected MessageStoreClient mStoreClient;
    protected SummaryQueryBuilder mSummaryDB;

    public String getAppTypeString(int i) {
        if (i == 1 || i == 14 || i == 3 || i == 4 || i == 11 || i == 12) {
            return CloudMessageProviderContract.ApplicationTypes.MSGDATA;
        }
        switch (i) {
            case 17:
            case 18:
            case 19:
            case 20:
                return "VVMDATA";
            default:
                return null;
        }
    }

    public String getMessageTypeString(int i, boolean z) {
        if (i != 1) {
            if (i == 3) {
                return CloudMessageProviderContract.DataTypes.SMS;
            }
            if (i == 4) {
                return CloudMessageProviderContract.DataTypes.MMS;
            }
            if (i != 11) {
                if (i == 12) {
                    return "FT";
                }
                switch (i) {
                    case 17:
                        return "VVMDATA";
                    case 18:
                        return CloudMessageProviderContract.DataTypes.VVMGREETING;
                    case 19:
                        return CloudMessageProviderContract.DataTypes.VVMPIN;
                    case 20:
                        return CloudMessageProviderContract.DataTypes.VVMPROFILE;
                    default:
                        return null;
                }
            }
        } else if (z) {
            return "FT";
        }
        return CloudMessageProviderContract.DataTypes.CHAT;
    }

    public void wipeOutData(int i, String str) {
    }

    public BaseMessagingScheduler(MessageStoreClient messageStoreClient, CloudMessageBufferDBEventSchedulingRule cloudMessageBufferDBEventSchedulingRule, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, Looper looper, SummaryQueryBuilder summaryQueryBuilder) {
        super(looper);
        this.TAG = BaseMessagingScheduler.class.getSimpleName();
        this.mMaxNumMsgsNotifyAppInIntent = 20;
        this.isCmsEnabled = false;
        this.mStoreClient = messageStoreClient;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        Context context = messageStoreClient.getContext();
        this.mContext = context;
        this.mScheduleRule = cloudMessageBufferDBEventSchedulingRule;
        this.mDeviceDataChangeListener = iDeviceDataChangeListener;
        this.mCallbackMsgApp = iBufferDBEventListener;
        this.mSummaryDB = summaryQueryBuilder;
        this.isCmsEnabled = CmsUtil.isMcsSupported(context, messageStoreClient.getClientID());
    }

    public void handleOutPutParamSyncFlagSet(ParamSyncFlagsSet paramSyncFlagsSet, long j, int i, boolean z, boolean z2, String str, BufferDBChangeParamList bufferDBChangeParamList, boolean z3) {
        String str2 = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("handleOutPutParamSyncFlagSet: ");
        sb.append(paramSyncFlagsSet);
        sb.append(" , mIsGoforwardSync: ");
        sb.append(z2);
        sb.append("changelist: ");
        sb.append(bufferDBChangeParamList == null ? "null" : "not null");
        Log.i(str2, sb.toString());
        if ((!paramSyncFlagsSet.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud) && !paramSyncFlagsSet.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud)) || z2) {
            if (paramSyncFlagsSet.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice) || paramSyncFlagsSet.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice)) {
                notifyMsgAppCldNotification(getAppTypeString(i), getMessageTypeString(i, z), j, z3);
                return;
            }
            return;
        }
        if (bufferDBChangeParamList == null) {
            BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
            bufferDBChangeParamList2.mChangelst.add(new BufferDBChangeParam(i, j, z2, str, paramSyncFlagsSet.mAction, this.mStoreClient));
            this.mDeviceDataChangeListener.sendDeviceUpdate(bufferDBChangeParamList2);
            return;
        }
        bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(i, j, z2, str, paramSyncFlagsSet.mAction, this.mStoreClient));
    }

    public void notifyMsgAppCldNotification(String str, String str2, long j, boolean z) {
        JsonArray jsonArray = new JsonArray();
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("id", String.valueOf(j));
        jsonArray.add(jsonObject);
        this.mCallbackMsgApp.notifyCloudMessageUpdate(str, str2, jsonArray.toString(), z);
    }

    public void notifyInitialSyncStatus(String str, String str2, String str3, CloudMessageBufferDBConstants.InitialSyncStatusFlag initialSyncStatusFlag, boolean z) {
        this.mCallbackMsgApp.notifyAppInitialSyncStatus(str, str2, str3, initialSyncStatusFlag, z);
    }

    public void wipeOutData(int i, String str, QueryBuilderBase queryBuilderBase) {
        queryBuilderBase.deleteAllUsingLineAndTableIndex(i, str);
        this.mSummaryDB.deleteAllUsingLineAndTableIndex(i, str);
        Log.i(this.TAG, "deleteAllUsingLineAndType: " + i + " , line = " + IMSLog.checker(str));
    }

    public void deleteMessageFromCloud(int i, long j, String str, QueryBuilderBase queryBuilderBase) {
        Log.i(this.TAG, "deleteMessageFromCloud: bufferID: " + j);
        if (queryBuilderBase == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Delete.getId()));
        queryBuilderBase.updateTable(i, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(i, j, false, str, this.mStoreClient));
        this.mDeviceDataChangeListener.sendDeviceUpdate(bufferDBChangeParamList);
    }

    public void msgAppFetchBuffer(Cursor cursor, String str, String str2) {
        JsonArray jsonArray = new JsonArray();
        do {
            int i = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("id", String.valueOf(i));
            jsonArray.add(jsonObject);
            if (jsonArray.size() == this.mMaxNumMsgsNotifyAppInIntent) {
                this.mCallbackMsgApp.notifyCloudMessageUpdate(str, str2, jsonArray.toString(), false);
                jsonArray = new JsonArray();
            }
        } while (cursor.moveToNext());
        if (jsonArray.size() > 0) {
            this.mCallbackMsgApp.notifyCloudMessageUpdate(str, str2, jsonArray.toString(), false);
        }
    }

    public void onUpdateFromDeviceFtUriFetch(DeviceMsgAppFetchUriParam deviceMsgAppFetchUriParam, QueryBuilderBase queryBuilderBase) {
        ContentValues contentValues = new ContentValues();
        Log.i(this.TAG, "onUpdateFromDeviceFtUriFetch param: " + deviceMsgAppFetchUriParam + " pdurid:" + deviceMsgAppFetchUriParam.mBufferRowId + " partid: " + deviceMsgAppFetchUriParam.mImsPartId);
        int i = deviceMsgAppFetchUriParam.mTableindex;
        if (i == 1) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.FILE_URI, "content://im/ft_original/" + deviceMsgAppFetchUriParam.mTelephonyRowId);
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.THUMBNAIL_URI, "content://im/ft_thumbnail/" + deviceMsgAppFetchUriParam.mTelephonyRowId);
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Downloading.getId()));
        } else if (i == 6) {
            contentValues.put("_id", Long.valueOf(deviceMsgAppFetchUriParam.mTelephonyRowId));
            Cursor queryTablewithBufferDbId = queryBuilderBase.queryTablewithBufferDbId(6, deviceMsgAppFetchUriParam.mImsPartId);
            if (queryTablewithBufferDbId != null) {
                try {
                    if (queryTablewithBufferDbId.moveToFirst()) {
                        String string = queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CT));
                        Log.i(this.TAG, "MMS contentType: " + string);
                        if (string != null && !string.equalsIgnoreCase(ITelephonyDBColumns.xml_smil_type) && !string.equalsIgnoreCase(MIMEContentType.PLAIN_TEXT) && !string.endsWith(MIMEContentType.JSON) && !string.contains(MIMEContentType.JSON)) {
                            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.FILE_URI, "content://mms/part/" + deviceMsgAppFetchUriParam.mTelephonyRowId);
                        }
                    }
                } catch (Throwable th) {
                    try {
                        queryTablewithBufferDbId.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryTablewithBufferDbId != null) {
                queryTablewithBufferDbId.close();
            }
        } else if (i == 17 || i == 18) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Downloading.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.FILE_URI, "content://com.samsung.vvm/files/" + deviceMsgAppFetchUriParam.mTelephonyRowId);
        } else {
            Log.e(this.TAG, "Invalid messageType");
            return;
        }
        long j = deviceMsgAppFetchUriParam.mImsPartId;
        if (j == -1) {
            j = deviceMsgAppFetchUriParam.mBufferRowId;
        }
        queryBuilderBase.updateTable(deviceMsgAppFetchUriParam.mTableindex, contentValues, "_bufferdbid=?", new String[]{Long.toString(j)});
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onUpdateFromDeviceMsgAppFetch(com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUpdateParam r17, boolean r18, com.sec.internal.ims.cmstore.querybuilders.QueryBuilderBase r19) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.BaseMessagingScheduler.onUpdateFromDeviceMsgAppFetch(com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUpdateParam, boolean, com.sec.internal.ims.cmstore.querybuilders.QueryBuilderBase):void");
    }

    public void onCloudUpdateFlagSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z, QueryBuilderBase queryBuilderBase) {
        ParamSyncFlagsSet paramSyncFlagsSet;
        Log.i(this.TAG, "onCloudUpdateFlagSuccess: " + paramOMAresponseforBufDB);
        Cursor queryTablewithBufferDbId = queryBuilderBase.queryTablewithBufferDbId(paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
        if (queryTablewithBufferDbId != null) {
            try {
                if (queryTablewithBufferDbId.moveToFirst()) {
                    CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
                    CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
                    String string = queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow("linenum"));
                    if (CloudMessageBufferDBConstants.ActionStatusFlag.Delete.equals(valueOf)) {
                        paramSyncFlagsSet = this.mScheduleRule.getSetFlagsForCldResponse(this.mDbTableContractIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId, valueOf2, valueOf, CloudMessageBufferDBConstants.CloudResponseFlag.SetDelete);
                    } else if (CloudMessageBufferDBConstants.ActionStatusFlag.Update.equals(valueOf)) {
                        paramSyncFlagsSet = this.mScheduleRule.getSetFlagsForCldResponse(this.mDbTableContractIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId, valueOf2, valueOf, CloudMessageBufferDBConstants.CloudResponseFlag.SetRead);
                    } else {
                        paramSyncFlagsSet = new ParamSyncFlagsSet(CloudMessageBufferDBConstants.DirectionFlag.Done, CloudMessageBufferDBConstants.ActionStatusFlag.None);
                        Log.d(this.TAG, "onCloudUpdateFlagSuccess: something wrong not processed cloud callback");
                    }
                    if (paramSyncFlagsSet.mIsChanged) {
                        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(paramSyncFlagsSet.mDirection.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(paramSyncFlagsSet.mAction.getId()));
                        queryBuilderBase.updateTable(paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, contentValues, "_bufferdbid=?", strArr);
                    }
                    if (!paramSyncFlagsSet.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.Done)) {
                        handleOutPutParamSyncFlagSet(paramSyncFlagsSet, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId, paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, false, z, string, null, false);
                    }
                }
            } finally {
            }
        }
        if (queryTablewithBufferDbId != null) {
            queryTablewithBufferDbId.close();
        }
    }

    public void updateQueryTable(ContentValues contentValues, long j, QueryBuilderBase queryBuilderBase) {
        queryBuilderBase.updateTable(this.mDbTableContractIndex, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
    }

    public void handleCloudUploadSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z, QueryBuilderBase queryBuilderBase, int i) {
        int i2 = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
        if (paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex == 12) {
            i2 = 1;
        }
        Cursor queryTablewithBufferDbId = queryBuilderBase.queryTablewithBufferDbId(i2, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
        if (queryTablewithBufferDbId != null) {
            try {
                if (queryTablewithBufferDbId.moveToFirst()) {
                    CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
                    CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
                    String string = queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow("linenum"));
                    ParamSyncFlagsSet setFlagsForCldResponse = this.mScheduleRule.getSetFlagsForCldResponse(this.mDbTableContractIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId, valueOf2, valueOf, CloudMessageBufferDBConstants.CloudResponseFlag.Inserted);
                    if (setFlagsForCldResponse.mIsChanged) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(setFlagsForCldResponse.mDirection.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForCldResponse.mAction.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAresponseforBufDB.getReference().resourceURL.toString()));
                        contentValues.put("path", paramOMAresponseforBufDB.getReference().path);
                        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
                        if (paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex == 12) {
                            onPayloadUploadSuccess(paramOMAresponseforBufDB, contentValues, queryBuilderBase);
                        }
                        queryBuilderBase.updateTable(i2, contentValues, "_bufferdbid=?", strArr);
                        if (i == 3) {
                            this.mSummaryDB.insertResUrlinSummaryIfNonExist(Util.decodeUrlFromServer(paramOMAresponseforBufDB.getReference().resourceURL.toString()), 3);
                        } else if (i == 4) {
                            this.mSummaryDB.insertResUrlinSummaryIfNonExist(Util.decodeUrlFromServer(paramOMAresponseforBufDB.getReference().resourceURL.toString()), 4);
                        } else if (i == 1) {
                            this.mSummaryDB.insertResUrlinSummaryIfNonExist(Util.decodeUrlFromServer(paramOMAresponseforBufDB.getReference().resourceURL.toString()), 1);
                        }
                    }
                    if (!setFlagsForCldResponse.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.Done)) {
                        handleOutPutParamSyncFlagSet(setFlagsForCldResponse, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId, i2, false, z, string, null, false);
                    }
                }
            } finally {
            }
        }
        if (queryTablewithBufferDbId != null) {
            queryTablewithBufferDbId.close();
        }
    }

    public void onPayloadUploadSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB, ContentValues contentValues, QueryBuilderBase queryBuilderBase) {
        IMSLog.i(this.TAG, "onPayloadUploadSuccess");
        Cursor queryTablewithBufferDbId = queryBuilderBase.queryTablewithBufferDbId(1, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
        if (queryTablewithBufferDbId != null) {
            try {
                if (queryTablewithBufferDbId.moveToFirst()) {
                    for (PayloadPartInfo payloadPartInfo : paramOMAresponseforBufDB.getObject().payloadPart) {
                        if (payloadPartInfo.contentDisposition.contains("icon")) {
                            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTTHUMB, payloadPartInfo.href.toString());
                        } else {
                            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTFULL, payloadPartInfo.href.toString());
                        }
                        IMSLog.i(this.TAG, "url: " + payloadPartInfo.href + " size: " + payloadPartInfo.size + " dis:" + payloadPartInfo.contentDisposition);
                    }
                }
            } catch (Throwable th) {
                try {
                    queryTablewithBufferDbId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryTablewithBufferDbId != null) {
            queryTablewithBufferDbId.close();
        }
    }
}
