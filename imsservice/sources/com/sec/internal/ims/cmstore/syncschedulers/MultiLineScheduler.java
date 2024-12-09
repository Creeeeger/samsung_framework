package com.sec.internal.ims.cmstore.syncschedulers;

import android.database.Cursor;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder;
import com.sec.internal.ims.cmstore.querybuilders.SummaryQueryBuilder;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class MultiLineScheduler extends BaseMessagingScheduler {
    private String TAG;
    private final MultiLineStatusBuilder mBufferDbQuery;

    public MultiLineScheduler(MessageStoreClient messageStoreClient, CloudMessageBufferDBEventSchedulingRule cloudMessageBufferDBEventSchedulingRule, SummaryQueryBuilder summaryQueryBuilder, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, Looper looper) {
        super(messageStoreClient, cloudMessageBufferDBEventSchedulingRule, iDeviceDataChangeListener, iBufferDBEventListener, looper, summaryQueryBuilder);
        this.TAG = MultiLineScheduler.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mBufferDbQuery = new MultiLineStatusBuilder(messageStoreClient, iBufferDBEventListener);
    }

    public void resetImsi() {
        Log.i(this.TAG, "resetImsi");
        this.mBufferDbQuery.resetImsi();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void insertNewLine(java.lang.String r6, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r7) {
        /*
            r5 = this;
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r0 = r5.mBufferDbQuery
            android.database.Cursor r0 = r0.queryUsingLineAndSyncMsgType(r6, r7)
            if (r0 == 0) goto L68
            boolean r1 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L73
            if (r1 == 0) goto L68
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r1 = r5.mBufferDbQuery     // Catch: java.lang.Throwable -> L73
            java.lang.String r2 = ""
            com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r3 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.DEFAULT     // Catch: java.lang.Throwable -> L73
            int r4 = r3.getId()     // Catch: java.lang.Throwable -> L73
            r1.updateLineInitsyncStatus(r6, r7, r2, r4)     // Catch: java.lang.Throwable -> L73
            com.sec.internal.ims.cmstore.MessageStoreClient r1 = r5.mStoreClient     // Catch: java.lang.Throwable -> L73
            com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager r1 = r1.getPrerenceManager()     // Catch: java.lang.Throwable -> L73
            boolean r1 = r1.isForceInitFullSync()     // Catch: java.lang.Throwable -> L73
            if (r1 == 0) goto L55
            java.lang.String r1 = r5.TAG     // Catch: java.lang.Throwable -> L73
            com.sec.internal.ims.cmstore.MessageStoreClient r2 = r5.mStoreClient     // Catch: java.lang.Throwable -> L73
            int r2 = r2.getClientID()     // Catch: java.lang.Throwable -> L73
            java.lang.String r3 = "insertNewLine : update forceAll"
            com.sec.internal.ims.cmstore.helper.EventLogHelper.infoLogAndAddWoPhoneId(r1, r2, r3)     // Catch: java.lang.Throwable -> L73
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r1 = r5.mBufferDbQuery     // Catch: java.lang.Throwable -> L73
            com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r2 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.SYNC_MESSAGE_FORCE_ALL_PENDING     // Catch: java.lang.Throwable -> L73
            int r2 = r2.getId()     // Catch: java.lang.Throwable -> L73
            r1.updateSyncMessageStatus(r6, r7, r2)     // Catch: java.lang.Throwable -> L73
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r1 = r5.mBufferDbQuery     // Catch: java.lang.Throwable -> L73
            com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r2 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.INITIAL_UPLOAD_PENDING     // Catch: java.lang.Throwable -> L73
            int r2 = r2.getId()     // Catch: java.lang.Throwable -> L73
            r1.updateLineUploadStatus(r6, r7, r2)     // Catch: java.lang.Throwable -> L73
            com.sec.internal.ims.cmstore.MessageStoreClient r5 = r5.mStoreClient     // Catch: java.lang.Throwable -> L73
            com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager r5 = r5.getPrerenceManager()     // Catch: java.lang.Throwable -> L73
            r6 = 0
            r5.setForceInitFullSync(r6)     // Catch: java.lang.Throwable -> L73
            goto L6d
        L55:
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r1 = r5.mBufferDbQuery     // Catch: java.lang.Throwable -> L73
            int r2 = r3.getId()     // Catch: java.lang.Throwable -> L73
            r1.updateLineUploadStatus(r6, r7, r2)     // Catch: java.lang.Throwable -> L73
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r5 = r5.mBufferDbQuery     // Catch: java.lang.Throwable -> L73
            int r1 = r3.getId()     // Catch: java.lang.Throwable -> L73
            r5.updateSyncMessageStatus(r6, r7, r1)     // Catch: java.lang.Throwable -> L73
            goto L6d
        L68:
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r5 = r5.mBufferDbQuery     // Catch: java.lang.Throwable -> L73
            r5.insertNewLine(r6, r7)     // Catch: java.lang.Throwable -> L73
        L6d:
            if (r0 == 0) goto L72
            r0.close()
        L72:
            return
        L73:
            r5 = move-exception
            if (r0 == 0) goto L7e
            r0.close()     // Catch: java.lang.Throwable -> L7a
            goto L7e
        L7a:
            r6 = move-exception
            r5.addSuppressed(r6)
        L7e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MultiLineScheduler.insertNewLine(java.lang.String, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType):void");
    }

    public void updateLineUploadStatus(String str, SyncMsgType syncMsgType, int i) {
        this.mBufferDbQuery.updateLineUploadStatus(str, syncMsgType, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getLineUploadStatus(java.lang.String r3, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r4) {
        /*
            r2 = this;
            com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r0 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.DEFAULT
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r1 = r2.mBufferDbQuery
            android.database.Cursor r3 = r1.queryUsingLineAndSyncMsgType(r3, r4)
            if (r3 == 0) goto L29
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L1f
            if (r4 == 0) goto L29
            java.lang.String r4 = "initupload_status"
            int r4 = r3.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L1f
            int r4 = r3.getInt(r4)     // Catch: java.lang.Throwable -> L1f
            com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r4 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.valueOf(r4)     // Catch: java.lang.Throwable -> L1f
            goto L2a
        L1f:
            r2 = move-exception
            r3.close()     // Catch: java.lang.Throwable -> L24
            goto L28
        L24:
            r3 = move-exception
            r2.addSuppressed(r3)
        L28:
            throw r2
        L29:
            r4 = r0
        L2a:
            if (r3 == 0) goto L2f
            r3.close()
        L2f:
            java.lang.String r2 = r2.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r1 = "getLineUploadStatus(): "
            r3.append(r1)
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            android.util.Log.i(r2, r3)
            if (r4 != 0) goto L4c
            int r2 = r0.getId()
            goto L50
        L4c:
            int r2 = r4.getId()
        L50:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MultiLineScheduler.getLineUploadStatus(java.lang.String, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType):int");
    }

    public void updateLineInitsyncStatus(String str, SyncMsgType syncMsgType, String str2, int i) {
        this.mBufferDbQuery.updateLineInitsyncStatus(str, syncMsgType, str2, i);
    }

    public void updateSyncMessageStatus(String str, SyncMsgType syncMsgType, int i) {
        this.mBufferDbQuery.updateSyncMessageStatus(str, syncMsgType, i);
    }

    public void deleteLine(String str, SyncMsgType syncMsgType) {
        this.mBufferDbQuery.deleteLine(str, syncMsgType);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getLineInitSyncStatus(java.lang.String r4, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType r5) {
        /*
            r3 = this;
            com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r0 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.DEFAULT
            com.sec.internal.ims.cmstore.querybuilders.MultiLineStatusBuilder r1 = r3.mBufferDbQuery
            android.database.Cursor r4 = r1.queryUsingLineAndSyncMsgType(r4, r5)
            if (r4 == 0) goto L1f
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L54
            if (r5 == 0) goto L1f
            java.lang.String r5 = "initsync_status"
            int r5 = r4.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L54
            int r5 = r4.getInt(r5)     // Catch: java.lang.Throwable -> L54
            com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r5 = com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType.valueOf(r5)     // Catch: java.lang.Throwable -> L54
            goto L2d
        L1f:
            java.lang.String r5 = r3.TAG     // Catch: java.lang.Throwable -> L54
            com.sec.internal.ims.cmstore.MessageStoreClient r1 = r3.mStoreClient     // Catch: java.lang.Throwable -> L54
            int r1 = r1.getClientID()     // Catch: java.lang.Throwable -> L54
            java.lang.String r2 = "getLineInitSyncStatus: NOT_FOUND"
            com.sec.internal.ims.cmstore.helper.EventLogHelper.infoLogAndAddWoPhoneId(r5, r1, r2)     // Catch: java.lang.Throwable -> L54
            r5 = r0
        L2d:
            if (r4 == 0) goto L32
            r4.close()
        L32:
            java.lang.String r3 = r3.TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r1 = "getLineInitSyncStatus(): "
            r4.append(r1)
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            android.util.Log.i(r3, r4)
            if (r5 != 0) goto L4f
            int r3 = r0.getId()
            goto L53
        L4f:
            int r3 = r5.getId()
        L53:
            return r3
        L54:
            r3 = move-exception
            if (r4 == 0) goto L5f
            r4.close()     // Catch: java.lang.Throwable -> L5b
            goto L5f
        L5b:
            r4 = move-exception
            r3.addSuppressed(r4)
        L5f:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MultiLineScheduler.getLineInitSyncStatus(java.lang.String, com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType):int");
    }

    public List<String> getMulitLineStatusTable() {
        ArrayList arrayList = new ArrayList();
        try {
            Cursor queryMultilineStatus = this.mBufferDbQuery.queryMultilineStatus();
            if (queryMultilineStatus != null) {
                try {
                    if (queryMultilineStatus.moveToFirst()) {
                        do {
                            int i = queryMultilineStatus.getInt(queryMultilineStatus.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                            String numberChecker = IMSLog.numberChecker(queryMultilineStatus.getString(queryMultilineStatus.getColumnIndexOrThrow("linenum")));
                            SyncMsgType valueOf = SyncMsgType.valueOf(queryMultilineStatus.getInt(queryMultilineStatus.getColumnIndexOrThrow("messagetype")));
                            OMASyncEventType valueOf2 = OMASyncEventType.valueOf(queryMultilineStatus.getInt(queryMultilineStatus.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCSTATUS)));
                            OMASyncEventType valueOf3 = OMASyncEventType.valueOf(queryMultilineStatus.getInt(queryMultilineStatus.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.INITUPLOADSTATUS)));
                            String string = queryMultilineStatus.getString(queryMultilineStatus.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCCURSOR));
                            String numberChecker2 = IMSLog.numberChecker(queryMultilineStatus.getString(queryMultilineStatus.getColumnIndexOrThrow("sim_imsi")));
                            OMASyncEventType valueOf4 = OMASyncEventType.valueOf(queryMultilineStatus.getInt(queryMultilineStatus.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCMESSAGESTATUS)));
                            if (!TextUtils.isEmpty(string) && string.length() >= 4) {
                                string = "*" + string.substring(string.length() - 4);
                            }
                            arrayList.add("id: " + i + " line: " + numberChecker + " messagetype: " + valueOf + " cursor: " + string + " initSyncStatus: " + valueOf2 + " initUploadStatus: " + valueOf3 + " simImsi: " + numberChecker2 + " syncMessageStatus: " + valueOf4);
                        } while (queryMultilineStatus.moveToNext());
                    }
                } finally {
                }
            }
            if (queryMultilineStatus != null) {
                queryMultilineStatus.close();
            }
        } catch (IllegalArgumentException e) {
            IMSLog.e(this.TAG, "exception " + e.getMessage());
        }
        return arrayList;
    }
}
