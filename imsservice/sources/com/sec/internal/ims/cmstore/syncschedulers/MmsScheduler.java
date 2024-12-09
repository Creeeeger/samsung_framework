package com.sec.internal.ims.cmstore.syncschedulers;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import android.text.TextUtils;
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
import com.sec.internal.ims.cmstore.params.DeviceLegacyUpdateParam;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUpdateParam;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUriParam;
import com.sec.internal.ims.cmstore.params.ParamAppJsonValue;
import com.sec.internal.ims.cmstore.params.ParamOMAObject;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet;
import com.sec.internal.ims.cmstore.querybuilders.MmsQueryBuilder;
import com.sec.internal.ims.cmstore.querybuilders.SummaryQueryBuilder;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.interfaces.ims.cmstore.ITelephonyDBColumns;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.ChangedObject;
import com.sec.internal.omanetapi.nms.data.DeletedObject;
import java.net.URL;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class MmsScheduler extends BaseMessagingScheduler {
    private String TAG;
    protected final MmsQueryBuilder mBufferDbQuery;
    private final MultiLineScheduler mMultiLineScheduler;

    public MmsScheduler(MessageStoreClient messageStoreClient, CloudMessageBufferDBEventSchedulingRule cloudMessageBufferDBEventSchedulingRule, SummaryQueryBuilder summaryQueryBuilder, MultiLineScheduler multiLineScheduler, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, Looper looper) {
        super(messageStoreClient, cloudMessageBufferDBEventSchedulingRule, iDeviceDataChangeListener, iBufferDBEventListener, looper, summaryQueryBuilder);
        this.TAG = MmsScheduler.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mBufferDbQuery = new MmsQueryBuilder(messageStoreClient, iBufferDBEventListener);
        this.mMultiLineScheduler = multiLineScheduler;
        this.mDbTableContractIndex = 4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0153 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[Catch: NullPointerException -> 0x015d, SYNTHETIC, TRY_LEAVE, TryCatch #0 {NullPointerException -> 0x015d, blocks: (B:3:0x0027, B:8:0x014b, B:41:0x015c, B:40:0x0159, B:35:0x0153), top: B:2:0x0027, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x014b A[Catch: NullPointerException -> 0x015d, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NullPointerException -> 0x015d, blocks: (B:3:0x0027, B:8:0x014b, B:41:0x015c, B:40:0x0159, B:35:0x0153), top: B:2:0x0027, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long handleObjectMMSCloudSearch(com.sec.internal.ims.cmstore.params.ParamOMAObject r20) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler.handleObjectMMSCloudSearch(com.sec.internal.ims.cmstore.params.ParamOMAObject):long");
    }

    public long handleNormalSyncObjectMmsDownload(ParamOMAObject paramOMAObject, boolean z) {
        Log.i(this.TAG, "handleNormalSyncObjectMmsDownload: " + paramOMAObject);
        long j = -1;
        try {
            Cursor searchMMsPduBufferUsingCorrelationId = this.mBufferDbQuery.searchMMsPduBufferUsingCorrelationId(paramOMAObject.correlationId);
            try {
                String lineTelUriFromObjUrl = Util.getLineTelUriFromObjUrl(paramOMAObject.resourceURL.toString());
                if (searchMMsPduBufferUsingCorrelationId != null && searchMMsPduBufferUsingCorrelationId.moveToFirst()) {
                    j = searchMMsPduBufferUsingCorrelationId.getInt(searchMMsPduBufferUsingCorrelationId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                    long j2 = searchMMsPduBufferUsingCorrelationId.getInt(searchMMsPduBufferUsingCorrelationId.getColumnIndexOrThrow("_id"));
                    CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(searchMMsPduBufferUsingCorrelationId.getInt(searchMMsPduBufferUsingCorrelationId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
                    CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(searchMMsPduBufferUsingCorrelationId.getInt(searchMMsPduBufferUsingCorrelationId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, paramOMAObject.lastModSeq);
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAObject.resourceURL.toString()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(paramOMAObject.parentFolder.toString()));
                    contentValues.put("path", Util.decodeUrlFromServer(paramOMAObject.path));
                    if (searchMMsPduBufferUsingCorrelationId.getInt(searchMMsPduBufferUsingCorrelationId.getColumnIndexOrThrow("read")) == 1) {
                        valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
                        valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
                    }
                    ParamSyncFlagsSet setFlagsForCldOperation = this.mScheduleRule.getSetFlagsForCldOperation(this.mDbTableContractIndex, j, valueOf2, valueOf, paramOMAObject.mFlag);
                    if (setFlagsForCldOperation.mIsChanged) {
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(setFlagsForCldOperation.mDirection.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForCldOperation.mAction.getId()));
                    }
                    updateQueryTable(contentValues, j, this.mBufferDbQuery);
                    if (j2 > 0) {
                        handleOutPutParamSyncFlagSet(setFlagsForCldOperation, j, 4, false, z, lineTelUriFromObjUrl, null, false);
                    }
                } else {
                    Log.i(this.TAG, "handleNormalSyncObjectMmsDownload: MMS not found");
                    ParamSyncFlagsSet insertMMSUsingObject = this.mBufferDbQuery.insertMMSUsingObject(paramOMAObject, false, 0L, false);
                    if (("OUT".equalsIgnoreCase(paramOMAObject.DIRECTION) || ("IN".equalsIgnoreCase(paramOMAObject.DIRECTION) && Util.isDownloadObject(paramOMAObject.DATE, this.mStoreClient, 4))) && !CloudMessageBufferDBConstants.ActionStatusFlag.Delete.equals(paramOMAObject.mFlag) && !paramOMAObject.mIsGoforwardSync) {
                        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
                        bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(4, insertMMSUsingObject.mBufferId, z, lineTelUriFromObjUrl, insertMMSUsingObject.mAction, this.mStoreClient));
                        if (insertMMSUsingObject.mBufferId > 0 && insertMMSUsingObject.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice)) {
                            if (this.isCmsEnabled && insertMMSUsingObject.mAction.equals(CloudMessageBufferDBConstants.ActionStatusFlag.FetchForce)) {
                                this.mDeviceDataChangeListener.sendDeviceNormalSyncDownload(bufferDBChangeParamList);
                            } else {
                                handleOutPutParamSyncFlagSet(insertMMSUsingObject, insertMMSUsingObject.mBufferId, 4, false, z, lineTelUriFromObjUrl, bufferDBChangeParamList, false);
                            }
                        }
                    }
                }
                if (searchMMsPduBufferUsingCorrelationId != null) {
                    searchMMsPduBufferUsingCorrelationId.close();
                }
            } finally {
            }
        } catch (NullPointerException e) {
            Log.e(this.TAG, e.toString());
        }
        return j;
    }

    public void addMmsPartDownloadList(BufferDBChangeParamList bufferDBChangeParamList, long j, String str, boolean z) {
        Cursor queryOneMmsUndownloadedParts = queryOneMmsUndownloadedParts(j);
        if (queryOneMmsUndownloadedParts != null) {
            try {
                if (queryOneMmsUndownloadedParts.moveToFirst()) {
                    do {
                        bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(6, queryOneMmsUndownloadedParts.getLong(queryOneMmsUndownloadedParts.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID)), z, str, this.mStoreClient));
                    } while (queryOneMmsUndownloadedParts.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    queryOneMmsUndownloadedParts.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryOneMmsUndownloadedParts != null) {
            queryOneMmsUndownloadedParts.close();
        }
    }

    public void addMmsPartDownloadListForFtUri(BufferDBChangeParamList bufferDBChangeParamList, long j, String str, boolean z) {
        Cursor queryOneMmsUndownloadedParts = queryOneMmsUndownloadedParts(j);
        if (queryOneMmsUndownloadedParts != null) {
            try {
                if (queryOneMmsUndownloadedParts.moveToFirst()) {
                    Log.i(this.TAG, "addMmsPartDownloadListForFtUri pduid: " + j + " count:" + queryOneMmsUndownloadedParts.getCount());
                    do {
                        queryOneMmsUndownloadedParts.getLong(queryOneMmsUndownloadedParts.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        String string = queryOneMmsUndownloadedParts.getString(queryOneMmsUndownloadedParts.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpart.CT));
                        if (!ITelephonyDBColumns.xml_smil_type.equalsIgnoreCase(string) && !MIMEContentType.PLAIN_TEXT.equalsIgnoreCase(string)) {
                            bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(4, j, z, str, this.mStoreClient));
                        }
                    } while (queryOneMmsUndownloadedParts.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    queryOneMmsUndownloadedParts.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryOneMmsUndownloadedParts != null) {
            queryOneMmsUndownloadedParts.close();
        }
    }

    public void onNmsEventDeletedObjMmsBufferDbAvailableUsingCorrId(Cursor cursor, DeletedObject deletedObject, boolean z) {
        onNmsEventDeletedObjMMSBufferDbAvailable(cursor, deletedObject, z, true);
    }

    public void onNmsEventChangedObjMmsBufferDbAvailableUsingCorrId(Cursor cursor, ChangedObject changedObject, boolean z) {
        onNmsEventChangedObjMMSBufferDbAvailable(cursor, changedObject, z);
    }

    public void onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(Cursor cursor, DeletedObject deletedObject, boolean z) {
        onNmsEventDeletedObjMMSBufferDbAvailable(cursor, deletedObject, z, false);
    }

    public void onNmsEventChangedObjBufferDbMmsAvailableUsingUrl(Cursor cursor, ChangedObject changedObject, boolean z) {
        onNmsEventChangedObjMMSBufferDbAvailable(cursor, changedObject, z);
    }

    private void onNmsEventChangedObjMMSBufferDbAvailable(Cursor cursor, ChangedObject changedObject, boolean z) {
        String str;
        CloudMessageBufferDBConstants.ActionStatusFlag cloudActionPerFlag;
        boolean z2;
        long j = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
        long j2 = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("linenum"));
        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, changedObject.lastModSeq);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(changedObject.resourceURL.toString()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(changedObject.parentFolder.toString()));
        if (this.isCmsEnabled) {
            if (cursor.getInt(cursor.getColumnIndexOrThrow("read")) == 1) {
                z2 = true;
                str = CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION;
            } else {
                str = CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION;
                z2 = false;
            }
            cloudActionPerFlag = this.mBufferDbQuery.getCloudActionPerFlag(changedObject.flags, z2, cursor.getInt(cursor.getColumnIndexOrThrow("locked")) == 1);
        } else {
            str = CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION;
            cloudActionPerFlag = this.mBufferDbQuery.getCloudActionPerFlag(changedObject.flags);
        }
        if (CloudMessageBufferDBConstants.ActionStatusFlag.Update.equals(cloudActionPerFlag)) {
            contentValues.put("read", (Integer) 1);
        } else if (CloudMessageBufferDBConstants.ActionStatusFlag.Starred.equals(cloudActionPerFlag)) {
            contentValues.put("locked", (Integer) 1);
        } else if (CloudMessageBufferDBConstants.ActionStatusFlag.UnStarred.equals(cloudActionPerFlag)) {
            contentValues.put("locked", (Integer) 0);
        }
        String str2 = str;
        ParamSyncFlagsSet setFlagsForCldOperationForCms = this.isCmsEnabled ? this.mScheduleRule.getSetFlagsForCldOperationForCms(this.mDbTableContractIndex, j, valueOf2, valueOf, cloudActionPerFlag) : this.mScheduleRule.getSetFlagsForCldOperation(this.mDbTableContractIndex, j, valueOf2, valueOf, cloudActionPerFlag);
        if (setFlagsForCldOperationForCms.mIsChanged) {
            contentValues.put(str2, Integer.valueOf(setFlagsForCldOperationForCms.mDirection.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForCldOperationForCms.mAction.getId()));
        }
        updateQueryTable(contentValues, j, this.mBufferDbQuery);
        if (j2 > 0) {
            handleOutPutParamSyncFlagSet(setFlagsForCldOperationForCms, j, 4, false, z, string, null, false);
        }
    }

    private void onNmsEventDeletedObjMMSBufferDbAvailable(Cursor cursor, DeletedObject deletedObject, boolean z, boolean z2) {
        long j = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
        long j2 = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("linenum"));
        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
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
        updateQueryTable(contentValues, j, this.mBufferDbQuery);
        if (j2 > 0) {
            handleOutPutParamSyncFlagSet(setFlagsForCldOperation, j, 4, false, z, string, null, false);
        }
    }

    public Cursor queryOneMmsUndownloadedParts(long j) {
        Log.i(this.TAG, "queryOneMmsUndownloadedParts: " + j);
        return this.mBufferDbQuery.queryUndownloadedPart(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00dc A[Catch: IOException | NullPointerException | MessagingException -> 0x00f5, TryCatch #0 {IOException | NullPointerException | MessagingException -> 0x00f5, blocks: (B:3:0x0009, B:6:0x0016, B:8:0x0020, B:10:0x003c, B:13:0x0045, B:16:0x005d, B:17:0x006c, B:19:0x0072, B:21:0x0091, B:24:0x009a, B:25:0x00c7, B:27:0x00dc, B:28:0x00e7, B:30:0x00b9), top: B:2:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMmsAllPayloadsDownloadFromMcs(com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB r13) {
        /*
            r12 = this;
            java.lang.String r0 = "Content-ID"
            java.lang.String r1 = ";"
            android.content.ContentValues r2 = new android.content.ContentValues
            r2.<init>()
            java.util.List r3 = r13.getAllPayloads()     // Catch: java.lang.Throwable -> Lf5
            int r3 = r3.size()     // Catch: java.lang.Throwable -> Lf5
            r4 = 1
            if (r3 < r4) goto Lf9
            r3 = 0
            r5 = r3
        L16:
            java.util.List r6 = r13.getAllPayloads()     // Catch: java.lang.Throwable -> Lf5
            int r6 = r6.size()     // Catch: java.lang.Throwable -> Lf5
            if (r5 >= r6) goto Lf9
            java.util.List r6 = r13.getAllPayloads()     // Catch: java.lang.Throwable -> Lf5
            java.lang.Object r6 = r6.get(r5)     // Catch: java.lang.Throwable -> Lf5
            javax.mail.BodyPart r6 = (javax.mail.BodyPart) r6     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r7 = r6.getContentType()     // Catch: java.lang.Throwable -> Lf5
            java.lang.String[] r7 = r7.split(r1)     // Catch: java.lang.Throwable -> Lf5
            r7 = r7[r3]     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r8 = "multipart/related"
            boolean r8 = r7.equalsIgnoreCase(r8)     // Catch: java.lang.Throwable -> Lf5
            if (r8 != 0) goto L5d
            java.lang.String r8 = "multipart/mixed"
            boolean r8 = r7.equalsIgnoreCase(r8)     // Catch: java.lang.Throwable -> Lf5
            if (r8 == 0) goto L45
            goto L5d
        L45:
            java.lang.String r6 = r12.TAG     // Catch: java.lang.Throwable -> Lf5
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lf5
            r8.<init>()     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r9 = "Ignore Content type "
            r8.append(r9)     // Catch: java.lang.Throwable -> Lf5
            r8.append(r7)     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r7 = r8.toString()     // Catch: java.lang.Throwable -> Lf5
            android.util.Log.i(r6, r7)     // Catch: java.lang.Throwable -> Lf5
            goto Lf1
        L5d:
            javax.mail.internet.MimeMultipart r8 = new javax.mail.internet.MimeMultipart     // Catch: java.lang.Throwable -> Lf5
            javax.mail.util.ByteArrayDataSource r9 = new javax.mail.util.ByteArrayDataSource     // Catch: java.lang.Throwable -> Lf5
            java.io.InputStream r6 = r6.getInputStream()     // Catch: java.lang.Throwable -> Lf5
            r9.<init>(r6, r7)     // Catch: java.lang.Throwable -> Lf5
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lf5
            r6 = r3
        L6c:
            int r7 = r8.getCount()     // Catch: java.lang.Throwable -> Lf5
            if (r6 >= r7) goto Lf1
            r2.clear()     // Catch: java.lang.Throwable -> Lf5
            javax.mail.BodyPart r7 = r8.getBodyPart(r6)     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r9 = r7.getContentType()     // Catch: java.lang.Throwable -> Lf5
            java.lang.String[] r9 = r9.split(r1)     // Catch: java.lang.Throwable -> Lf5
            r9 = r9[r3]     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r10 = "ct"
            r2.put(r10, r9)     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r10 = "text/plain"
            boolean r10 = r9.contains(r10)     // Catch: java.lang.Throwable -> Lf5
            if (r10 != 0) goto Lb9
            java.lang.String r10 = "application/smil"
            boolean r9 = r9.contains(r10)     // Catch: java.lang.Throwable -> Lf5
            if (r9 == 0) goto L9a
            goto Lb9
        L9a:
            java.lang.String r9 = ""
            java.lang.String r9 = com.sec.internal.ims.cmstore.utils.Util.getRandomFileName(r9)     // Catch: java.lang.Throwable -> Lf5
            android.content.Context r10 = r12.mContext     // Catch: java.lang.Throwable -> Lf5
            com.sec.internal.ims.cmstore.MessageStoreClient r11 = r12.mStoreClient     // Catch: java.lang.Throwable -> Lf5
            int r11 = r11.getClientID()     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r9 = com.sec.internal.ims.cmstore.utils.Util.generateUniqueFilePath(r10, r9, r4, r11)     // Catch: java.lang.Throwable -> Lf5
            java.io.InputStream r10 = r7.getInputStream()     // Catch: java.lang.Throwable -> Lf5
            com.sec.internal.ims.cmstore.utils.Util.saveInputStreamtoPath(r10, r9)     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r10 = "_data"
            r2.put(r10, r9)     // Catch: java.lang.Throwable -> Lf5
            goto Lc7
        Lb9:
            java.io.InputStream r9 = r7.getInputStream()     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r9 = com.sec.internal.ims.cmstore.utils.Util.convertStreamToString(r9)     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r10 = "text"
            r2.put(r10, r9)     // Catch: java.lang.Throwable -> Lf5
        Lc7:
            java.lang.String r9 = "mid"
            com.sec.internal.ims.cmstore.params.BufferDBChangeParam r10 = r13.getBufferDBChangeParam()     // Catch: java.lang.Throwable -> Lf5
            long r10 = r10.mRowId     // Catch: java.lang.Throwable -> Lf5
            java.lang.Long r10 = java.lang.Long.valueOf(r10)     // Catch: java.lang.Throwable -> Lf5
            r2.put(r9, r10)     // Catch: java.lang.Throwable -> Lf5
            java.lang.String[] r9 = r7.getHeader(r0)     // Catch: java.lang.Throwable -> Lf5
            if (r9 == 0) goto Le7
            java.lang.String[] r7 = r7.getHeader(r0)     // Catch: java.lang.Throwable -> Lf5
            r7 = r7[r3]     // Catch: java.lang.Throwable -> Lf5
            java.lang.String r9 = "cid"
            r2.put(r9, r7)     // Catch: java.lang.Throwable -> Lf5
        Le7:
            com.sec.internal.ims.cmstore.querybuilders.MmsQueryBuilder r7 = r12.mBufferDbQuery     // Catch: java.lang.Throwable -> Lf5
            r9 = 6
            r7.insertTable(r9, r2)     // Catch: java.lang.Throwable -> Lf5
            int r6 = r6 + 1
            goto L6c
        Lf1:
            int r5 = r5 + 1
            goto L16
        Lf5:
            r12 = move-exception
            r12.printStackTrace()
        Lf9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler.onMmsAllPayloadsDownloadFromMcs(com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00e5 A[Catch: all -> 0x00fe, TRY_LEAVE, TryCatch #2 {all -> 0x00fe, blocks: (B:11:0x0021, B:13:0x0027, B:15:0x005e, B:17:0x0067, B:20:0x0071, B:22:0x009f, B:24:0x00a5, B:25:0x00d7, B:27:0x00e5, B:29:0x00d0), top: B:10:0x0021, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMmsPayloadUpdateWithDB(long r13, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler.onMmsPayloadUpdateWithDB(long, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00f4 A[Catch: all -> 0x010d, TRY_LEAVE, TryCatch #2 {all -> 0x010d, blocks: (B:11:0x0027, B:13:0x002d, B:15:0x0070, B:17:0x0079, B:20:0x0083, B:22:0x009d, B:23:0x00a8, B:24:0x00e6, B:26:0x00f4, B:29:0x00c1, B:32:0x00d2, B:33:0x00e1), top: B:10:0x0027, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMmsPayloadDownloaded(com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler.onMmsPayloadDownloaded(com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB, boolean):void");
    }

    public void handleExistingBufferForDeviceLegacyUpdate(Cursor cursor, DeviceLegacyUpdateParam deviceLegacyUpdateParam, boolean z, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "handleExistingBufferForDeviceLegacyUpdate: " + deviceLegacyUpdateParam);
        ContentValues contentValues = new ContentValues();
        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("linenum"));
        long j = cursor.getLong(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
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
        String[] strArr = {String.valueOf(j)};
        int i = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        long j2 = deviceLegacyUpdateParam.mRowId;
        if (j2 != i) {
            contentValues.put("_id", Long.valueOf(j2));
        }
        this.mBufferDbQuery.updateTable(deviceLegacyUpdateParam.mTableindex, contentValues, "_bufferdbid=?", strArr);
        if (setFlagsForMsgOperation.mIsChanged) {
            handleOutPutParamSyncFlagSet(setFlagsForMsgOperation, j, deviceLegacyUpdateParam.mTableindex, false, z, string, bufferDBChangeParamList, false);
        }
    }

    public void handleNonExistingBufferForDeviceLegacyUpdate(DeviceLegacyUpdateParam deviceLegacyUpdateParam) {
        Log.i(this.TAG, "handleNonExistingBufferForDeviceLegacyUpdate: " + deviceLegacyUpdateParam);
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
        contentValues.put("linenum", deviceLegacyUpdateParam.mLine);
        if (deviceLegacyUpdateParam.mTableindex == 4) {
            Cursor queryMMSPduFromTelephonyDbUseID = this.mBufferDbQuery.queryMMSPduFromTelephonyDbUseID(Long.valueOf(deviceLegacyUpdateParam.mRowId).longValue());
            if (queryMMSPduFromTelephonyDbUseID != null) {
                try {
                    if (queryMMSPduFromTelephonyDbUseID.moveToFirst()) {
                        this.mBufferDbQuery.insertToMMSPDUBufferDB(queryMMSPduFromTelephonyDbUseID, contentValues, false, true);
                    }
                } catch (Throwable th) {
                    try {
                        queryMMSPduFromTelephonyDbUseID.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryMMSPduFromTelephonyDbUseID != null) {
                queryMMSPduFromTelephonyDbUseID.close();
            }
        }
    }

    public void notifyMsgAppFetchBuffer(Cursor cursor, int i) {
        Log.i(this.TAG, "notifyMsgAppFetchBuffer: " + i);
        if (i == 4) {
            JsonArray jsonArray = new JsonArray();
            do {
                int i2 = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("id", String.valueOf(i2));
                jsonArray.add(jsonObject);
                if (jsonArray.size() == this.mMaxNumMsgsNotifyAppInIntent) {
                    Log.i(this.TAG, "notify message app: MMS: " + jsonArray.toString());
                    this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.MMS, jsonArray.toString(), false);
                    jsonArray = new JsonArray();
                }
            } while (cursor.moveToNext());
            if (jsonArray.size() > 0) {
                Log.d(this.TAG, "notify message app: MMS: " + jsonArray.toString());
                this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.MMS, jsonArray.toString(), false);
            }
        }
    }

    public Cursor queryToDeviceUnDownloadedMms(String str, int i) {
        return this.mBufferDbQuery.queryToDeviceUnDownloadedMms(str, i);
    }

    public int queryPendingUrlFetch() {
        Cursor queryMessageBySyncAction = this.mBufferDbQuery.queryMessageBySyncAction(4, CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId());
        if (queryMessageBySyncAction == null) {
            if (queryMessageBySyncAction == null) {
                return 0;
            }
            queryMessageBySyncAction.close();
            return 0;
        }
        try {
            int count = queryMessageBySyncAction.getCount();
            queryMessageBySyncAction.close();
            return count;
        } catch (Throwable th) {
            try {
                queryMessageBySyncAction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public int queryPendingFetchForce() {
        Cursor queryMessageBySyncAction = this.mBufferDbQuery.queryMessageBySyncAction(4, CloudMessageBufferDBConstants.ActionStatusFlag.FetchForce.getId());
        if (queryMessageBySyncAction == null) {
            if (queryMessageBySyncAction == null) {
                return 0;
            }
            queryMessageBySyncAction.close();
            return 0;
        }
        try {
            int count = queryMessageBySyncAction.getCount();
            queryMessageBySyncAction.close();
            return count;
        } catch (Throwable th) {
            try {
                queryMessageBySyncAction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean queryPartType(long r4) {
        /*
            r3 = this;
            java.lang.String r0 = r3.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = " queryPartType partId : "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            android.util.Log.i(r0, r1)
            com.sec.internal.ims.cmstore.querybuilders.MmsQueryBuilder r0 = r3.mBufferDbQuery
            r1 = 6
            android.database.Cursor r4 = r0.queryTablewithBufferDbId(r1, r4)
            if (r4 == 0) goto L3b
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L31
            if (r5 == 0) goto L3b
            java.lang.String r5 = "payloadurl"
            int r5 = r4.getColumnIndexOrThrow(r5)     // Catch: java.lang.Throwable -> L31
            java.lang.String r5 = r4.getString(r5)     // Catch: java.lang.Throwable -> L31
            goto L3c
        L31:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L36
            goto L3a
        L36:
            r4 = move-exception
            r3.addSuppressed(r4)
        L3a:
            throw r3
        L3b:
            r5 = 0
        L3c:
            if (r4 == 0) goto L41
            r4.close()
        L41:
            java.lang.String r3 = r3.TAG
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r0 = " queryPartType "
            r4.append(r0)
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            android.util.Log.i(r3, r4)
            boolean r3 = android.text.TextUtils.isEmpty(r5)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler.queryPartType(long):boolean");
    }

    public boolean queryAllPartIsUpdated(long j) {
        Cursor queryMMSPartRowIdWithoutAppId = this.mBufferDbQuery.queryMMSPartRowIdWithoutAppId(j);
        if (queryMMSPartRowIdWithoutAppId != null) {
            try {
                if (queryMMSPartRowIdWithoutAppId.getCount() == 0) {
                    queryMMSPartRowIdWithoutAppId.close();
                    return true;
                }
            } catch (Throwable th) {
                try {
                    queryMMSPartRowIdWithoutAppId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryMMSPartRowIdWithoutAppId == null) {
            return false;
        }
        queryMMSPartRowIdWithoutAppId.close();
        return false;
    }

    public Cursor queryToCloudUnsyncedMms() {
        return this.mBufferDbQuery.queryToCloudUnsyncedMms();
    }

    public Cursor queryToDeviceUnsyncedMms() {
        return this.mBufferDbQuery.queryToDeviceUnsyncedMms();
    }

    public Cursor queryMMSMessagesToUpload() {
        return this.mBufferDbQuery.queryMMSMessagesToUpload();
    }

    public Cursor queryMMSBufferDBwithResUrl(String str) {
        return this.mBufferDbQuery.queryMMSBufferDBwithResUrl(str);
    }

    public int deleteMMSBufferDBwithResUrl(String str) {
        return this.mBufferDbQuery.deleteMMSBufferDBwithResUrl(str);
    }

    public Cursor searchMMsPduBufferUsingCorrelationId(String str) {
        return this.mBufferDbQuery.searchMMsPduBufferUsingCorrelationId(str);
    }

    public Cursor queryMMSMessagesBySycnDirection(int i, String str) {
        return this.mBufferDbQuery.queryMessageBySyncDirection(i, str);
    }

    public Cursor queryMMSPduFromTelephonyDbWithIMSI(String str) {
        return this.mBufferDbQuery.queryAllMMSPduFromTelephonyDbWithIMSI(str);
    }

    public Cursor queryMMSPduFromTelephonyDbWoIMSI() {
        return this.mBufferDbQuery.queryMMSPduFromTelephonyDbWoIMSI();
    }

    public Cursor queryForceInitDeltaMMSFromTP() {
        return this.mBufferDbQuery.queryForceInitDeltaMMSFromTP();
    }

    public Cursor queryDeltaMMSPduFromTelephonyDb() {
        return this.mBufferDbQuery.queryDeltaMMSPduFromTelephonyDb();
    }

    public Cursor queryDeltaMMSPduFromTelephonyDbWoImsi() {
        return this.mBufferDbQuery.queryDeltaMMSPduFromTelephonyDbWoImsi();
    }

    public void syncReadMmsFromTelephony() {
        ArrayList arrayList = new ArrayList();
        try {
            Cursor queryReadMmsfromTelephony = this.mBufferDbQuery.queryReadMmsfromTelephony();
            if (queryReadMmsfromTelephony != null) {
                try {
                    if (queryReadMmsfromTelephony.moveToFirst()) {
                        arrayList.add(queryReadMmsfromTelephony.getString(queryReadMmsfromTelephony.getColumnIndex("_id")));
                    }
                } finally {
                }
            }
            if (queryReadMmsfromTelephony != null) {
                queryReadMmsfromTelephony.close();
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

    public void insertToMMSPDUBufferDB(Cursor cursor, ContentValues contentValues, boolean z) {
        this.mBufferDbQuery.insertToMMSPDUBufferDB(cursor, contentValues, z, false);
    }

    public Cursor queryMMSPduFromTelephonyDbUseID(long j) {
        return this.mBufferDbQuery.queryMMSPduFromTelephonyDbUseID(j);
    }

    private void handleDeviceLegacyUpdateParam(DeviceLegacyUpdateParam deviceLegacyUpdateParam, boolean z, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "handleDeviceLegacyUpdateParam: " + deviceLegacyUpdateParam);
        if (deviceLegacyUpdateParam.mTableindex != 4 || CloudMessageBufferDBConstants.MsgOperationFlag.Sending.equals(deviceLegacyUpdateParam.mOperation) || CloudMessageBufferDBConstants.MsgOperationFlag.SendFail.equals(deviceLegacyUpdateParam.mOperation) || deviceLegacyUpdateParam.mMId == null) {
            return;
        }
        Cursor cursor = null;
        try {
            switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[deviceLegacyUpdateParam.mOperation.ordinal()]) {
                case 1:
                case 2:
                    cursor = this.mBufferDbQuery.searchMMSPduBufferUsingMidorTrId(deviceLegacyUpdateParam.mMId, deviceLegacyUpdateParam.mTRId);
                    break;
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    cursor = this.mBufferDbQuery.searchMMSPduBufferUsingRowId(deviceLegacyUpdateParam.mRowId);
                    break;
                case 10:
                case 11:
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

    /* renamed from: com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag;

        static {
            int[] iArr = new int[CloudMessageBufferDBConstants.MsgOperationFlag.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag = iArr;
            try {
                iArr[CloudMessageBufferDBConstants.MsgOperationFlag.Received.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Sent.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Read.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Spam.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Delete.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Trash.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Restore.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Starred.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.UnStarred.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.SendFail.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Receiving.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Sending.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public boolean onUpdateFromDeviceFtUriFetch(DeviceMsgAppFetchUriParam deviceMsgAppFetchUriParam) {
        deviceMsgAppFetchUriParam.mTableindex = 6;
        onUpdateFromDeviceFtUriFetch(deviceMsgAppFetchUriParam, this.mBufferDbQuery);
        boolean queryAllPartIsUpdated = queryAllPartIsUpdated(deviceMsgAppFetchUriParam.mBufferRowId);
        if (queryAllPartIsUpdated) {
            Log.i(this.TAG, "onUpdateFromDeviceFtUriFetch: All parts downloaded, set state as Download");
            ContentValues contentValues = new ContentValues();
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Downloading.getId()));
            updateQueryTable(contentValues, deviceMsgAppFetchUriParam.mBufferRowId, this.mBufferDbQuery);
        }
        return queryAllPartIsUpdated;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int queryMMSPDUActionStatus(long r2) {
        /*
            r1 = this;
            com.sec.internal.ims.cmstore.querybuilders.MmsQueryBuilder r1 = r1.mBufferDbQuery
            r0 = 4
            android.database.Cursor r1 = r1.queryTablewithBufferDbId(r0, r2)
            if (r1 == 0) goto L25
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L1b
            if (r2 == 0) goto L25
            java.lang.String r2 = "syncaction"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L1b
            int r2 = r1.getInt(r2)     // Catch: java.lang.Throwable -> L1b
            goto L26
        L1b:
            r2 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L20
            goto L24
        L20:
            r1 = move-exception
            r2.addSuppressed(r1)
        L24:
            throw r2
        L25:
            r2 = -1
        L26:
            if (r1 == 0) goto L2b
            r1.close()
        L2b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler.queryMMSPDUActionStatus(long):int");
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
        handleCloudUploadSuccess(paramOMAresponseforBufDB, z, this.mBufferDbQuery, 4);
    }

    public void cleanAllBufferDB() {
        this.mBufferDbQuery.cleanAllBufferDB();
    }

    public void cleanAllBufferDB(String str) {
        this.mBufferDbQuery.cleanAllBufferDB(str);
    }

    public void onAppOperationReceived(ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "onAppOperationReceived: " + paramAppJsonValue);
        if (CloudMessageBufferDBConstants.MsgOperationFlag.Delete.equals(paramAppJsonValue.mOperation) || CloudMessageBufferDBConstants.MsgOperationFlag.Trash.equals(paramAppJsonValue.mOperation) || CloudMessageBufferDBConstants.MsgOperationFlag.Restore.equals(paramAppJsonValue.mOperation)) {
            int i = paramAppJsonValue.mDataContractType;
            CloudMessageBufferDBConstants.MsgOperationFlag msgOperationFlag = paramAppJsonValue.mOperation;
            int i2 = paramAppJsonValue.mRowId;
            String str = paramAppJsonValue.mCorrelationId;
            handleDeviceLegacyUpdateParam(new DeviceLegacyUpdateParam(i, msgOperationFlag, i2, null, str, str, paramAppJsonValue.mLine), false, bufferDBChangeParamList);
            return;
        }
        Cursor queryMMSPduFromTelephonyDbUseID = queryMMSPduFromTelephonyDbUseID(paramAppJsonValue.mRowId);
        if (queryMMSPduFromTelephonyDbUseID != null) {
            try {
                if (queryMMSPduFromTelephonyDbUseID.moveToFirst()) {
                    String string = queryMMSPduFromTelephonyDbUseID.getString(queryMMSPduFromTelephonyDbUseID.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.TR_ID));
                    String str2 = paramAppJsonValue.mCorrelationId;
                    if (TextUtils.isEmpty(str2)) {
                        str2 = queryMMSPduFromTelephonyDbUseID.getString(queryMMSPduFromTelephonyDbUseID.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.M_ID));
                    }
                    handleDeviceLegacyUpdateParam(new DeviceLegacyUpdateParam(paramAppJsonValue.mDataContractType, paramAppJsonValue.mOperation, paramAppJsonValue.mRowId, null, str2, string, paramAppJsonValue.mLine), false, bufferDBChangeParamList);
                    Log.d(this.TAG, "onAppOperationReceived: no mms pdu exists");
                }
            } catch (Throwable th) {
                try {
                    queryMMSPduFromTelephonyDbUseID.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryMMSPduFromTelephonyDbUseID != null) {
            queryMMSPduFromTelephonyDbUseID.close();
        }
    }

    public boolean handleCrossSearchObj(ParamOMAObject paramOMAObject, String str, boolean z) {
        Log.i(this.TAG, "handleCrossSearchObj():  line: " + IMSLog.checker(str) + " objt: " + paramOMAObject);
        Cursor searchMMsPduBufferUsingCorrelationId = searchMMsPduBufferUsingCorrelationId(paramOMAObject.correlationId);
        if (searchMMsPduBufferUsingCorrelationId != null) {
            try {
                if (searchMMsPduBufferUsingCorrelationId.moveToFirst()) {
                    onCrossObjectSearchMmsAvailableUsingCorrelationId(searchMMsPduBufferUsingCorrelationId, paramOMAObject, str, z);
                    searchMMsPduBufferUsingCorrelationId.close();
                    return true;
                }
            } catch (Throwable th) {
                try {
                    searchMMsPduBufferUsingCorrelationId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (searchMMsPduBufferUsingCorrelationId == null) {
            return false;
        }
        searchMMsPduBufferUsingCorrelationId.close();
        return false;
    }

    private void onCrossObjectSearchMmsAvailableUsingCorrelationId(Cursor cursor, ParamOMAObject paramOMAObject, String str, boolean z) {
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag;
        CloudMessageBufferDBConstants.DirectionFlag directionFlag;
        long j = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
        long j2 = cursor.getLong(cursor.getColumnIndexOrThrow("date"));
        long j3 = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        long j4 = cursor.getLong(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBMMSpdu.M_ID));
        Log.d(this.TAG, "handleCrossSearchObj find bufferDB: " + paramOMAObject.correlationId + " id: " + j + " time: " + j2 + " m_id: " + j4);
        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, paramOMAObject.lastModSeq);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAObject.resourceURL.toString()));
        URL url = paramOMAObject.parentFolder;
        if (url != null) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(url.toString()));
        }
        String str2 = paramOMAObject.path;
        if (str2 != null) {
            contentValues.put("path", Util.decodeUrlFromServer(str2));
        }
        if (cursor.getInt(cursor.getColumnIndexOrThrow("read")) == 1) {
            actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
            directionFlag = CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud;
        } else {
            actionStatusFlag = valueOf;
            directionFlag = valueOf2;
        }
        if (CloudMessageBufferDBConstants.ActionStatusFlag.Update.equals(paramOMAObject.mFlag)) {
            contentValues.put("read", (Integer) 1);
        }
        ParamSyncFlagsSet setFlagsForCldOperation = this.mScheduleRule.getSetFlagsForCldOperation(this.mDbTableContractIndex, j, directionFlag, actionStatusFlag, paramOMAObject.mFlag);
        if (setFlagsForCldOperation.mIsChanged) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(setFlagsForCldOperation.mDirection.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForCldOperation.mAction.getId()));
        }
        updateQueryTable(contentValues, j, this.mBufferDbQuery);
        if (j3 > 0) {
            handleOutPutParamSyncFlagSet(setFlagsForCldOperation, j, 4, false, z, str, null, false);
        }
    }

    public void notifyMsgAppDeleteFail(int i, long j, String str) {
        Log.i(this.TAG, "notifyMsgAppDeleteFail, dbIndex: " + i + " bufferDbId: " + j + " line: " + IMSLog.checker(str));
        if (i == 4) {
            JsonArray jsonArray = new JsonArray();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("id", String.valueOf(j));
            jsonArray.add(jsonObject);
            this.mCallbackMsgApp.notifyAppCloudDeleteFail(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.MMS, jsonArray.toString());
        }
    }

    public void onUpdateCmsConfig() {
        this.mBufferDbQuery.onUpdateCmsConfigInitSyncDataTtl();
    }
}
