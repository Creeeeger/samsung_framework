package com.sec.internal.ims.cmstore.querybuilders;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.log.IMSLog;

/* loaded from: classes.dex */
public class MultiLineStatusBuilder extends QueryBuilderBase {
    private String TAG;
    private int mPhoneId;

    public MultiLineStatusBuilder(MessageStoreClient messageStoreClient, IBufferDBEventListener iBufferDBEventListener) {
        super(messageStoreClient, iBufferDBEventListener);
        this.TAG = MultiLineStatusBuilder.class.getSimpleName();
        this.mPhoneId = messageStoreClient.getClientID();
        this.TAG += "[" + this.mPhoneId + "]";
    }

    public int updateLineUploadStatus(String str, SyncMsgType syncMsgType, int i) {
        EventLogHelper.infoLogAndAddWoPhoneId(this.TAG, this.mPhoneId, "updateLineUploadStatus(): " + IMSLog.checker(str) + " type: " + syncMsgType + " status: " + OMASyncEventType.valueOf(i));
        String[] strArr = {str, String.valueOf(syncMsgType.getId())};
        ContentValues contentValues = new ContentValues();
        if (this.isCmsEnabled) {
            IMSLog.c(LogClass.MCS_INIT_SYNC_STATUS, this.mPhoneId + "," + BaseSyncHandler.SyncOperation.UPLOAD.ordinal() + "," + i);
        }
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.INITUPLOADSTATUS, Integer.valueOf(i));
        return this.mBufferDB.updateTable(23, contentValues, "linenum=? AND messagetype=?", strArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int updateLineInitsyncStatus(java.lang.String r10, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r11, java.lang.String r12, int r13) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder.updateLineInitsyncStatus(java.lang.String, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType, java.lang.String, int):int");
    }

    public int updateSyncMessageStatus(String str, SyncMsgType syncMsgType, int i) {
        String str2;
        String[] strArr = {str, String.valueOf(syncMsgType.getId())};
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCMESSAGESTATUS, Integer.valueOf(i));
        int updateTable = this.mBufferDB.updateTable(23, contentValues, "linenum=? AND messagetype=?", strArr);
        String str3 = this.TAG;
        int i2 = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("updateSyncMessageStatus(): ");
        if (TextUtils.isEmpty(str)) {
            str2 = "empty line";
        } else {
            str2 = str.length() + IMSLog.checker(str);
        }
        sb.append(str2);
        sb.append(" type: ");
        sb.append(syncMsgType);
        sb.append(" status: ");
        sb.append(OMASyncEventType.valueOf(i));
        sb.append(" rowsUpdated ");
        sb.append(updateTable);
        EventLogHelper.infoLogAndAddWoPhoneId(str3, i2, sb.toString());
        IMSLog.c(LogClass.MCS_INIT_SYNC_STATUS, this.mPhoneId + "," + BaseSyncHandler.SyncOperation.SYNC_MESSAGE_STATUS.ordinal() + "," + i);
        return updateTable;
    }

    public Cursor queryUsingLineAndSyncMsgType(String str, SyncMsgType syncMsgType) {
        Log.i(this.TAG, "queryUsingLineAndSyncMsgType(): " + IMSLog.checker(str) + " type: " + syncMsgType);
        return this.mBufferDB.queryTable(23, (String[]) null, "linenum=? AND messagetype=?", new String[]{str, String.valueOf(syncMsgType.getId())}, (String) null);
    }

    public void insertNewLine(String str, SyncMsgType syncMsgType) {
        String str2;
        boolean isForceInitFullSync = this.mStoreClient.getPrerenceManager().isForceInitFullSync();
        ContentValues contentValues = new ContentValues();
        contentValues.put("linenum", str);
        contentValues.put("messagetype", Integer.valueOf(syncMsgType.getId()));
        contentValues.put("sim_imsi", this.IMSI);
        long insertTable = this.mBufferDB.insertTable(23, contentValues);
        String str3 = this.TAG;
        int i = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("insertNewLine(): ");
        if (TextUtils.isEmpty(str)) {
            str2 = "empty line";
        } else {
            str2 = str.length() + " " + IMSLog.checker(str);
        }
        sb.append(str2);
        sb.append(" type: ");
        sb.append(syncMsgType);
        sb.append(", IMSI: ");
        sb.append(IMSLog.checker(this.IMSI));
        sb.append(" rowdID: ");
        sb.append(insertTable);
        EventLogHelper.infoLogAndAdd(str3, i, sb.toString());
        IMSLog.c(LogClass.MCS_INIT_SYNC_STATUS, this.mPhoneId + ", INSERT ," + insertTable);
        if (isForceInitFullSync) {
            EventLogHelper.infoLogAndAddWoPhoneId(this.TAG, this.mPhoneId, "insertNewLine forceAllCase");
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCMESSAGESTATUS, Integer.valueOf(OMASyncEventType.SYNC_MESSAGE_FORCE_ALL_PENDING.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.INITUPLOADSTATUS, Integer.valueOf(OMASyncEventType.INITIAL_UPLOAD_PENDING.getId()));
            this.mStoreClient.getPrerenceManager().setForceInitFullSync(false);
        }
        this.mBufferDB.insertTable(23, contentValues);
    }

    public void deleteLine(String str, SyncMsgType syncMsgType) {
        Log.i(this.TAG, "deleteLine(): " + IMSLog.checker(str) + " type: " + syncMsgType);
        String[] strArr = {str, String.valueOf(syncMsgType.getId())};
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCCURSOR, "");
        OMASyncEventType oMASyncEventType = OMASyncEventType.DEFAULT;
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCSTATUS, Integer.valueOf(oMASyncEventType.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.INITUPLOADSTATUS, Integer.valueOf(oMASyncEventType.getId()));
        this.mBufferDB.updateTable(23, contentValues, "linenum=? AND messagetype=?", strArr);
    }

    public Cursor queryMultilineStatus() {
        return this.mBufferDB.queryTable(23, (String[]) null, (String) null, (String[]) null, (String) null);
    }
}
