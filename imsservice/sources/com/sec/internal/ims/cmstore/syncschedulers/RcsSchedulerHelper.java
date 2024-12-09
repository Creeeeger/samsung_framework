package com.sec.internal.ims.cmstore.syncschedulers;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.CmsJsonConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.adapters.CloudMessageTelephonyStorageAdapter;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.DeviceIMFTUpdateParam;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUpdateParam;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUriParam;
import com.sec.internal.ims.cmstore.params.DeviceSessionPartcptsUpdateParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet;
import com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder;
import com.sec.internal.ims.cmstore.querybuilders.SummaryQueryBuilder;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.servicemodules.gls.GlsXmlParser;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.ChangedObject;
import com.sec.internal.omanetapi.nms.data.DeletedObject;
import com.sec.internal.omanetapi.nms.data.Object;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class RcsSchedulerHelper extends BaseMessagingScheduler {
    private String TAG;
    protected final RcsQueryBuilder mBufferDbQuery;
    protected final MmsScheduler mMmsScheduler;
    protected final SmsScheduler mSmsScheduler;
    private final CloudMessageTelephonyStorageAdapter mTelephonyStorage;

    public RcsSchedulerHelper(MessageStoreClient messageStoreClient, CloudMessageBufferDBEventSchedulingRule cloudMessageBufferDBEventSchedulingRule, SummaryQueryBuilder summaryQueryBuilder, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, MmsScheduler mmsScheduler, SmsScheduler smsScheduler, Looper looper) {
        super(messageStoreClient, cloudMessageBufferDBEventSchedulingRule, iDeviceDataChangeListener, iBufferDBEventListener, looper, summaryQueryBuilder);
        this.TAG = RcsSchedulerHelper.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mSummaryDB = summaryQueryBuilder;
        this.mBufferDbQuery = new RcsQueryBuilder(messageStoreClient, iBufferDBEventListener);
        this.mDbTableContractIndex = 1;
        this.mMmsScheduler = mmsScheduler;
        this.mSmsScheduler = smsScheduler;
        this.mTelephonyStorage = new CloudMessageTelephonyStorageAdapter(messageStoreClient.getContext());
    }

    public void resetImsi() {
        Log.i(this.TAG, "resetImsi");
        this.mBufferDbQuery.resetImsi();
        this.mMmsScheduler.mBufferDbQuery.resetImsi();
        this.mSmsScheduler.mBufferDbQuery.resetImsi();
    }

    public void onNmsEventChangedSessionObjBufferDb(Cursor cursor, ChangedObject changedObject) {
        if (CloudMessageBufferDBConstants.ActionStatusFlag.Accepted.equals(this.mBufferDbQuery.getCloudSessionPerFlag(changedObject.flags))) {
            ContentValues contentValues = new ContentValues();
            int i = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
            String string = cursor.getString(cursor.getColumnIndexOrThrow("chat_id"));
            String string2 = cursor.getString(cursor.getColumnIndexOrThrow("session_uri"));
            String string3 = cursor.getString(cursor.getColumnIndexOrThrow("session_uri"));
            contentValues.put("_id", Integer.valueOf(i));
            contentValues.put("chat_id", string);
            contentValues.put("session_uri", string2);
            contentValues.put("conversation_id", string3);
            contentValues.put(CmsJsonConstants.GROUPCHAT_ACCEPT, Boolean.TRUE);
            notifyMsgAppFetchBuffer(contentValues, 10);
        }
    }

    public void onNmsEventChangedObjBufferDbRcsAvailableUsingUrl(Cursor cursor, ChangedObject changedObject, boolean z) {
        onNmsEventChangedObjRCSBufferDbAvailable(cursor, changedObject, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0282  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onNmsEventChangedObjRCSBufferDbAvailable(android.database.Cursor r34, com.sec.internal.omanetapi.nms.data.ChangedObject r35, boolean r36) {
        /*
            Method dump skipped, instructions count: 924
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsSchedulerHelper.onNmsEventChangedObjRCSBufferDbAvailable(android.database.Cursor, com.sec.internal.omanetapi.nms.data.ChangedObject, boolean):void");
    }

    public void onNmsEventChangedObjRcsBufferDbAvailableUsingImdnId(Cursor cursor, ChangedObject changedObject, boolean z) {
        onNmsEventChangedObjRCSBufferDbAvailable(cursor, changedObject, z);
    }

    public void onNmsEventDeletedObjBufferDbRcsAvailableUsingImdnId(Cursor cursor, DeletedObject deletedObject, boolean z) {
        onNmsEventDeletedObjBufferDbRcsAvailable(cursor, deletedObject, z);
    }

    public void onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(Cursor cursor, DeletedObject deletedObject, boolean z) {
        onNmsEventDeletedObjBufferDbRcsAvailable(cursor, deletedObject, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x014c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onNmsEventDeletedObjBufferDbRcsAvailable(android.database.Cursor r22, com.sec.internal.omanetapi.nms.data.DeletedObject r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsSchedulerHelper.onNmsEventDeletedObjBufferDbRcsAvailable(android.database.Cursor, com.sec.internal.omanetapi.nms.data.DeletedObject, boolean):void");
    }

    public void addRcsDownloadListForUri(BufferDBChangeParamList bufferDBChangeParamList, long j, String str, boolean z) {
        Cursor queryTablewithBufferDbId = this.mBufferDbQuery.queryTablewithBufferDbId(1, j);
        if (queryTablewithBufferDbId != null) {
            try {
                if (queryTablewithBufferDbId.moveToFirst()) {
                    Log.i(this.TAG, "addRcsDownloadListForUri " + queryTablewithBufferDbId.getCount());
                    do {
                        long j2 = queryTablewithBufferDbId.getLong(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        if (!queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow("content_type")).toLowerCase().contains("botmessage")) {
                            bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(6, j2, z, str, this.mStoreClient));
                        }
                    } while (queryTablewithBufferDbId.moveToNext());
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

    protected byte[] getFileContentInBytes(String str, CloudMessageBufferDBConstants.PayloadEncoding payloadEncoding) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                FileInputStream fileInputStream = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[256];
                    int read = fileInputStream.read(bArr);
                    while (read >= 0) {
                        byteArrayOutputStream.write(bArr, 0, read);
                        read = fileInputStream.read(bArr);
                    }
                    Log.i(this.TAG, "getFileContentInBytes: " + str + " " + payloadEncoding + " bytes " + read + " getRcsFilePayloadFromPath, all bytes: " + byteArrayOutputStream.size());
                    if (CloudMessageBufferDBConstants.PayloadEncoding.Base64.equals(payloadEncoding)) {
                        byte[] encode = Base64.encode(byteArrayOutputStream.toByteArray(), 0);
                        fileInputStream.close();
                        byteArrayOutputStream.close();
                        return encode;
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    fileInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            Log.e(this.TAG, "getFileContentInBytes :: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [int] */
    private Pair<Long, byte[]> saveOrCopyFileToAppUri(String str, ParamOMAresponseforBufDB paramOMAresponseforBufDB, String str2, int i, boolean z) {
        byte[] decode;
        byte[] bArr = null;
        if (z) {
            if (CloudMessageBufferDBConstants.PayloadEncoding.None.getId() == i) {
                r0 = FileUtils.copyFile(this.mContext, str, Uri.parse(str2));
            } else if (CloudMessageBufferDBConstants.PayloadEncoding.Base64.getId() == i) {
                r0 = FileUtils.copyFile(this.mContext, str, Uri.parse(str2));
            }
        } else {
            try {
                ?? id = CloudMessageBufferDBConstants.PayloadEncoding.None.getId();
                try {
                    if (id == i) {
                        decode = paramOMAresponseforBufDB.getData();
                        r0 = decode != null ? decode.length : 0L;
                        Util.saveFileToAppUri(this.mContext, decode, str2);
                    } else if (CloudMessageBufferDBConstants.PayloadEncoding.Base64.getId() == i) {
                        decode = Base64.decode(paramOMAresponseforBufDB.getData(), 0);
                        r0 = decode != null ? decode.length : 0L;
                        Util.saveFileToAppUri(this.mContext, decode, str2);
                    }
                    bArr = decode;
                } catch (IOException e) {
                    e = e;
                    bArr = id;
                    e.printStackTrace();
                    return new Pair<>(Long.valueOf(r0), bArr);
                }
            } catch (IOException e2) {
                e = e2;
            }
        }
        return new Pair<>(Long.valueOf(r0), bArr);
    }

    private boolean saveToAppUriOnRcsPayloadDownloaded(Cursor cursor, ParamOMAresponseforBufDB paramOMAresponseforBufDB, ContentValues contentValues, boolean z) {
        long j;
        boolean z2;
        byte[] bArr;
        boolean z3;
        boolean z4;
        String string = cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.FILE_URI));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.THUMBNAIL_URI));
        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("content_type"));
        int i = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADENCODING));
        String string4 = cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.THUMBNAIL_PATH));
        byte[] bArr2 = null;
        String filePath = z ? paramOMAresponseforBufDB.getFilePath() : null;
        Log.i(this.TAG, "large-file case, filePath: " + filePath);
        if (paramOMAresponseforBufDB.getBufferDBChangeParam().mIsFTThumbnail && TextUtils.isEmpty(string4)) {
            Log.i(this.TAG, "app generated thumbnail uri: " + string2 + " encoding method: " + i);
            if (string2 != null) {
                z3 = true;
                z4 = false;
                bArr = (byte[]) saveOrCopyFileToAppUri(filePath, paramOMAresponseforBufDB, string2, i, z).second;
            } else {
                z3 = true;
                z4 = false;
                Log.e(this.TAG, "file copy to APP failed. thumbUri=null");
                bArr = null;
            }
            contentValues.put(ImContract.CsSession.THUMBNAIL_PATH, string2);
            paramOMAresponseforBufDB.getBufferDBChangeParam().mIsFTThumbnail = z4;
            paramOMAresponseforBufDB.getBufferDBChangeParam().mFTThumbnailFileName = null;
            paramOMAresponseforBufDB.getBufferDBChangeParam().mPayloadThumbnailUrl = null;
            z2 = z3;
        } else {
            if ((cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER)) != 1) && (string3.endsWith(MIMEContentType.JSON) || string3.contains(MIMEContentType.PLAIN_TEXT) || string3.endsWith(MIMEContentType.XML))) {
                String str = "";
                if (z) {
                    bArr2 = getFileContentInBytes(filePath, CloudMessageBufferDBConstants.PayloadEncoding.None);
                    if (bArr2 != null) {
                        str = new String(bArr2, StandardCharsets.UTF_8);
                    }
                } else if (paramOMAresponseforBufDB.getData() != null) {
                    str = new String(paramOMAresponseforBufDB.getData(), StandardCharsets.UTF_8);
                }
                contentValues.put("body", str);
                z2 = false;
            } else {
                if (string != null) {
                    Pair<Long, byte[]> saveOrCopyFileToAppUri = saveOrCopyFileToAppUri(filePath, paramOMAresponseforBufDB, string, i, z);
                    j = ((Long) saveOrCopyFileToAppUri.first).longValue();
                    bArr2 = (byte[]) saveOrCopyFileToAppUri.second;
                } else {
                    Log.e(this.TAG, "file copy to APP failed. fileUri=null");
                    j = 0;
                }
                Log.i(this.TAG, "app generated file uri: " + string + " encoding method: " + i + " size:" + j);
                contentValues.put(ImContract.CsSession.FILE_SIZE, Long.valueOf(j));
                contentValues.put(ImContract.CsSession.BYTES_TRANSFERRED, Long.valueOf(j));
                contentValues.put(ImContract.CsSession.FILE_PATH, string);
                z2 = true;
            }
            bArr = bArr2;
        }
        if (z) {
            FileUtils.removeFile(filePath);
        } else if (string3 != null && string3.equalsIgnoreCase(MIMEContentType.LOCATION_PUSH) && bArr != null) {
            contentValues.put(ImContract.ChatItem.EXT_INFO, new GlsXmlParser().getGlsExtInfo(new String(bArr, StandardCharsets.UTF_8)));
        }
        return z2;
    }

    public void onRcsPayloadDownloaded(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        boolean saveToAppUriOnRcsPayloadDownloaded;
        Cursor queryTablewithBufferDbId = this.mBufferDbQuery.queryTablewithBufferDbId(paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
        if (queryTablewithBufferDbId != null) {
            try {
                if (queryTablewithBufferDbId.moveToFirst()) {
                    int i = queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                    int i2 = queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow("_id"));
                    String string = queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow("linenum"));
                    boolean z2 = queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER)) == 1;
                    int i3 = queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow("status"));
                    int i4 = queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION));
                    if ((this.isCmsEnabled && i3 == ImConstants.Status.CANCELLATION.getId()) || i4 == CloudMessageBufferDBConstants.ActionStatusFlag.Deleted.getId()) {
                        Log.d(this.TAG, "Message is deleted/cancelled msgStatus: " + i3 + " syncAction: " + i4);
                        queryTablewithBufferDbId.close();
                        return;
                    }
                    ContentValues contentValues = new ContentValues();
                    if (this.isCmsEnabled && paramOMAresponseforBufDB.getPayloadUrl() != null && CmsUtil.urlContainsLargeFile(this.mStoreClient, paramOMAresponseforBufDB.getPayloadUrl())) {
                        saveToAppUriOnRcsPayloadDownloaded = saveToAppUriOnRcsPayloadDownloaded(queryTablewithBufferDbId, paramOMAresponseforBufDB, contentValues, true);
                    } else {
                        saveToAppUriOnRcsPayloadDownloaded = saveToAppUriOnRcsPayloadDownloaded(queryTablewithBufferDbId, paramOMAresponseforBufDB, contentValues, false);
                    }
                    if (!saveToAppUriOnRcsPayloadDownloaded) {
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
                    } else {
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.UpdatePayload.getId()));
                    }
                    updateQueryTable(contentValues, i, this.mBufferDbQuery);
                    if (i2 > 0) {
                        this.mBufferDbQuery.updateRCSMessageDb(i2, contentValues);
                    }
                    handleOutPutParamSyncFlagSet(new ParamSyncFlagsSet(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice, !saveToAppUriOnRcsPayloadDownloaded ? CloudMessageBufferDBConstants.ActionStatusFlag.Insert : CloudMessageBufferDBConstants.ActionStatusFlag.UpdatePayload), paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId, 1, z2, z, string, null, false);
                }
            } finally {
            }
        }
        if (queryTablewithBufferDbId != null) {
            queryTablewithBufferDbId.close();
        }
    }

    private void setInlineTextCV(String str, ContentValues contentValues) {
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(ImContract.ChatItem.IS_FILE_TRANSFER, (Integer) 0);
        contentValues.put("content_type", MIMEContentType.PLAIN_TEXT);
        contentValues.put("body", str);
    }

    private void getPayloadCV(String str, String str2, String str3, long j, ContentValues contentValues) {
        contentValues.put(ImContract.CsSession.FILE_NAME, str);
        contentValues.put(ImContract.CsSession.FILE_SIZE, Long.valueOf(j));
        contentValues.put(ImContract.CsSession.BYTES_TRANSFERRED, Long.valueOf(j));
        contentValues.put(ImContract.CsSession.FILE_PATH, str2);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x036e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0295 A[Catch: IOException | NullPointerException | MessagingException -> 0x01b8, IOException | NullPointerException | MessagingException -> 0x01b8, IOException | NullPointerException | MessagingException -> 0x01b8, all -> 0x0355, TRY_LEAVE, TryCatch #6 {IOException | NullPointerException | MessagingException -> 0x01b8, blocks: (B:114:0x017e, B:116:0x0193, B:53:0x028f, B:53:0x028f, B:53:0x028f, B:55:0x0295, B:55:0x0295, B:55:0x0295, B:58:0x02a0, B:58:0x02a0, B:58:0x02a0, B:52:0x01d5, B:52:0x01d5, B:52:0x01d5, B:93:0x021d, B:93:0x021d, B:93:0x021d, B:95:0x0231, B:95:0x0231, B:95:0x0231, B:97:0x024e, B:97:0x024e, B:97:0x024e), top: B:113:0x017e }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02a0 A[Catch: IOException | NullPointerException | MessagingException -> 0x01b8, IOException | NullPointerException | MessagingException -> 0x01b8, IOException | NullPointerException | MessagingException -> 0x01b8, all -> 0x0355, TRY_ENTER, TRY_LEAVE, TryCatch #6 {IOException | NullPointerException | MessagingException -> 0x01b8, blocks: (B:114:0x017e, B:116:0x0193, B:53:0x028f, B:53:0x028f, B:53:0x028f, B:55:0x0295, B:55:0x0295, B:55:0x0295, B:58:0x02a0, B:58:0x02a0, B:58:0x02a0, B:52:0x01d5, B:52:0x01d5, B:52:0x01d5, B:93:0x021d, B:93:0x021d, B:93:0x021d, B:95:0x0231, B:95:0x0231, B:95:0x0231, B:97:0x024e, B:97:0x024e, B:97:0x024e), top: B:113:0x017e }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0314 A[Catch: all -> 0x034e, TRY_ENTER, TryCatch #8 {all -> 0x034e, blocks: (B:66:0x0314, B:67:0x0322, B:69:0x032b, B:70:0x0330, B:73:0x0318), top: B:64:0x0312 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x032b A[Catch: all -> 0x034e, TryCatch #8 {all -> 0x034e, blocks: (B:66:0x0314, B:67:0x0322, B:69:0x032b, B:70:0x0330, B:73:0x0318), top: B:64:0x0312 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0318 A[Catch: all -> 0x034e, TryCatch #8 {all -> 0x034e, blocks: (B:66:0x0314, B:67:0x0322, B:69:0x032b, B:70:0x0330, B:73:0x0318), top: B:64:0x0312 }] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0365 A[Catch: all -> 0x0369, TRY_LEAVE, TryCatch #5 {all -> 0x0369, blocks: (B:8:0x0365, B:83:0x0361, B:82:0x035e, B:77:0x0358), top: B:4:0x001c, inners: #18 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onRcsAllPayloadsDownloaded(com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 903
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsSchedulerHelper.onRcsAllPayloadsDownloaded(com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB, boolean):void");
    }

    protected void onDownloadRequestFromApp(DeviceIMFTUpdateParam deviceIMFTUpdateParam) {
        Log.i(this.TAG, "onDownloadRequestFromApp: " + deviceIMFTUpdateParam);
        if (deviceIMFTUpdateParam.mTableindex == 1) {
            Cursor searchIMFTBufferUsingImdn = this.mBufferDbQuery.searchIMFTBufferUsingImdn(String.valueOf(deviceIMFTUpdateParam.mImdnId), deviceIMFTUpdateParam.mLine);
            if (searchIMFTBufferUsingImdn != null) {
                try {
                    if (searchIMFTBufferUsingImdn.moveToFirst()) {
                        boolean z = searchIMFTBufferUsingImdn.getInt(searchIMFTBufferUsingImdn.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER)) == 1;
                        String string = searchIMFTBufferUsingImdn.getString(searchIMFTBufferUsingImdn.getColumnIndexOrThrow(ImContract.CsSession.FILE_PATH));
                        int i = searchIMFTBufferUsingImdn.getInt(searchIMFTBufferUsingImdn.getColumnIndexOrThrow(ImContract.CsSession.BYTES_TRANSFERRED));
                        long j = searchIMFTBufferUsingImdn.getLong(searchIMFTBufferUsingImdn.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isSupportExpiredRule() && z && !TextUtils.isEmpty(string) && i > 0) {
                            Log.i(this.TAG, "file already downloaded, should not have received another download, notify message app directly: " + string);
                            notifyMsgAppCldNotification(getAppTypeString(deviceIMFTUpdateParam.mTableindex), getMessageTypeString(deviceIMFTUpdateParam.mTableindex, true), j, false);
                            searchIMFTBufferUsingImdn.close();
                            return;
                        }
                        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(searchIMFTBufferUsingImdn.getInt(searchIMFTBufferUsingImdn.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
                        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(searchIMFTBufferUsingImdn.getInt(searchIMFTBufferUsingImdn.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
                        if (!CloudMessageBufferDBConstants.ActionStatusFlag.None.equals(valueOf) && !CloudMessageBufferDBConstants.DirectionFlag.Done.equals(valueOf2)) {
                            Log.i(this.TAG, "duplicate download request!");
                            searchIMFTBufferUsingImdn.close();
                            return;
                        }
                        ContentValues contentValues = new ContentValues();
                        long ftRowFromTelephonyDb = this.mTelephonyStorage.getFtRowFromTelephonyDb(deviceIMFTUpdateParam.mImdnId);
                        if (ftRowFromTelephonyDb == -1) {
                            Log.e(this.TAG, "para.mImdnId not present in DB " + deviceIMFTUpdateParam.mImdnId);
                            searchIMFTBufferUsingImdn.close();
                            return;
                        }
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.FILE_URI, "content://im/ft_original/" + ftRowFromTelephonyDb);
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.THUMBNAIL_URI, "content://im/ft_thumbnail/" + ftRowFromTelephonyDb);
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Downloading.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()));
                        updateQueryTable(contentValues, j, this.mBufferDbQuery);
                        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
                        BufferDBChangeParam bufferDBChangeParam = new BufferDBChangeParam(deviceIMFTUpdateParam.mTableindex, j, false, deviceIMFTUpdateParam.mLine, this.mStoreClient);
                        bufferDBChangeParam.mIsDownloadRequestFromApp = true;
                        bufferDBChangeParamList.mChangelst.add(bufferDBChangeParam);
                        this.mDeviceDataChangeListener.sendDeviceNormalSyncDownload(bufferDBChangeParamList);
                    }
                } finally {
                }
            }
            if (searchIMFTBufferUsingImdn != null) {
                searchIMFTBufferUsingImdn.close();
            }
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.syncschedulers.RcsSchedulerHelper$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag;

        static {
            int[] iArr = new int[CloudMessageBufferDBConstants.ActionStatusFlag.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag = iArr;
            try {
                iArr[CloudMessageBufferDBConstants.ActionStatusFlag.Insert.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.Delete.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[CloudMessageBufferDBConstants.ActionStatusFlag.Update.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public void onUpdateFromDeviceSessionPartcpts(DeviceSessionPartcptsUpdateParam deviceSessionPartcptsUpdateParam) {
        Log.i(this.TAG, "onUpdateFromDeviceSessionPartcpts: " + deviceSessionPartcptsUpdateParam);
        if (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[deviceSessionPartcptsUpdateParam.mUpdateType.ordinal()] != 1) {
            return;
        }
        onNewPartcptsInserted(deviceSessionPartcptsUpdateParam);
    }

    private void onNewPartcptsInserted(DeviceSessionPartcptsUpdateParam deviceSessionPartcptsUpdateParam) {
        Cursor queryParticipantsUsingChatId = this.mBufferDbQuery.queryParticipantsUsingChatId(deviceSessionPartcptsUpdateParam.mChatId);
        if (queryParticipantsUsingChatId != null) {
            try {
                if (queryParticipantsUsingChatId.moveToFirst()) {
                    this.mBufferDbQuery.insertToRCSParticipantsBufferDB(queryParticipantsUsingChatId);
                }
            } catch (Throwable th) {
                try {
                    queryParticipantsUsingChatId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryParticipantsUsingChatId != null) {
            queryParticipantsUsingChatId.close();
        }
    }

    public void onUpdateFromDeviceSession(DeviceSessionPartcptsUpdateParam deviceSessionPartcptsUpdateParam) {
        Log.i(this.TAG, "onUpdateFromDeviceSession: " + deviceSessionPartcptsUpdateParam);
        if (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$ActionStatusFlag[deviceSessionPartcptsUpdateParam.mUpdateType.ordinal()] != 1) {
            return;
        }
        onNewSessionInserted(deviceSessionPartcptsUpdateParam);
    }

    private void onNewSessionInserted(DeviceSessionPartcptsUpdateParam deviceSessionPartcptsUpdateParam) {
        Cursor querySessionByChatId = this.mBufferDbQuery.querySessionByChatId(deviceSessionPartcptsUpdateParam.mChatId);
        if (querySessionByChatId != null) {
            try {
                if (querySessionByChatId.moveToFirst()) {
                    Log.d(this.TAG, "session already exists in BufferDb");
                    querySessionByChatId.close();
                    return;
                }
            } catch (Throwable th) {
                try {
                    querySessionByChatId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySessionByChatId != null) {
            querySessionByChatId.close();
        }
        Cursor querySessionUsingChatId = this.mBufferDbQuery.querySessionUsingChatId(deviceSessionPartcptsUpdateParam.mChatId);
        if (querySessionUsingChatId != null) {
            try {
                if (querySessionUsingChatId.moveToFirst()) {
                    this.mBufferDbQuery.insertSingleSessionToRcsBuffer(querySessionUsingChatId);
                }
            } catch (Throwable th3) {
                try {
                    querySessionUsingChatId.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (querySessionUsingChatId != null) {
            querySessionUsingChatId.close();
        }
    }

    public void notifyMsgAppFetchBuffer(Cursor cursor, int i) {
        if (i == 1) {
            JsonArray jsonArray = new JsonArray();
            JsonArray jsonArray2 = new JsonArray();
            do {
                int i2 = cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                String string = cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.FILE_PATH));
                String string2 = cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.THUMBNAIL_PATH));
                if ((string != null && string.length() > 1) || (string2 != null && string2.length() > 1)) {
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty("id", String.valueOf(i2));
                    jsonArray2.add(jsonObject);
                } else {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("id", String.valueOf(i2));
                    jsonArray.add(jsonObject2);
                }
                Log.d(this.TAG, "jsonArrayRowIdsCHAT.size(): " + jsonArray.size() + ",notify message app: CHAT: " + jsonArray.toString() + ", jsonArrayRowIdsFT.size(): " + jsonArray2.size() + "notify message app: FT: " + jsonArray2.toString());
                if (jsonArray.size() == this.mMaxNumMsgsNotifyAppInIntent) {
                    this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.CHAT, jsonArray.toString(), false);
                    jsonArray = new JsonArray();
                }
                if (jsonArray2.size() == this.mMaxNumMsgsNotifyAppInIntent) {
                    this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, "FT", jsonArray2.toString(), false);
                    jsonArray2 = new JsonArray();
                }
            } while (cursor.moveToNext());
            if (jsonArray.size() > 0) {
                this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.CHAT, jsonArray.toString(), false);
            }
            if (jsonArray2.size() > 0) {
                this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, "FT", jsonArray2.toString(), false);
            }
        }
    }

    public void notifyMsgAppFetchBuffer(ContentValues contentValues, int i) {
        if (i == 10) {
            String asString = contentValues.getAsString("chat_id");
            String asString2 = contentValues.getAsString("session_uri");
            String asString3 = contentValues.getAsString("conversation_id");
            Integer asInteger = contentValues.getAsInteger("_id");
            if (asInteger != null) {
                JsonArray jsonElements = CmsUtil.getJsonElements(contentValues, asString, asString2, asString3, asInteger.intValue());
                Log.i(this.TAG, "notifyMsgAppFetchBuffer, chatId : " + asString + ", jsonArrayRowIdsSession: " + jsonElements);
                if (jsonElements.size() > 0) {
                    this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.SESSION, jsonElements.toString(), false);
                }
            }
        }
    }

    public Cursor searchIMFTBufferUsingImdn(String str, String str2) {
        return this.mBufferDbQuery.searchIMFTBufferUsingImdn(str, str2);
    }

    public Cursor queryToDeviceUnDownloadedRcs(String str, int i) {
        return this.mBufferDbQuery.queryToDeviceUnDownloadedRcs(str, i);
    }

    public int queryPendingUrlFetch() {
        Cursor queryMessageBySyncAction = this.mBufferDbQuery.queryMessageBySyncAction(1, CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId());
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

    /* JADX WARN: Removed duplicated region for block: B:5:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int queryRCSPDUActionStatus(long r2) {
        /*
            r1 = this;
            com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder r1 = r1.mBufferDbQuery
            r0 = 1
            android.database.Cursor r1 = r1.queryTablewithBufferDbId(r0, r2)
            if (r1 == 0) goto L25
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L1b
            if (r2 == 0) goto L25
            java.lang.String r2 = "syncaction"
            int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L1b
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
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsSchedulerHelper.queryRCSPDUActionStatus(long):int");
    }

    public Cursor queryToCloudUnsyncedRcs() {
        return this.mBufferDbQuery.queryToCloudUnsyncedRcs();
    }

    public Cursor queryToDeviceUnsyncedRcs() {
        return this.mBufferDbQuery.queryToDeviceUnsyncedRcs();
    }

    public Cursor queryRCSMessagesToUploadByMessageType(String str) {
        return this.mBufferDbQuery.queryRCSMessagesToUploadByMessageType(str);
    }

    public Cursor queryRCSMessagesToUpload() {
        return this.mBufferDbQuery.queryRCSMessagesToUpload();
    }

    public Cursor queryRCSFtMessagesToUpload(String str) {
        return this.mBufferDbQuery.queryRCSFtMessagesToUpload(str);
    }

    public Cursor queryImdnMessagesToUpload() {
        return this.mBufferDbQuery.queryImdnMessagesToUpload();
    }

    public Cursor queryRCSBufferDBwithResUrl(String str) {
        return this.mBufferDbQuery.queryRCSBufferDBwithResUrl(str);
    }

    public int deleteRCSBufferDBwithResUrl(String str) {
        return this.mBufferDbQuery.deleteRCSBufferDBwithResUrl(str);
    }

    public Cursor queryRCSMessagesBySycnDirection(int i, String str) {
        return this.mBufferDbQuery.queryMessageBySyncDirection(i, str);
    }

    public Cursor queryAllSession() {
        return this.mBufferDbQuery.queryAllSession();
    }

    public Cursor queryGroupSession() {
        return this.mBufferDbQuery.queryGroupSession();
    }

    public Cursor queryGroupSessionWithConversation(String str) {
        return this.mBufferDbQuery.querySessionByConversationId(str);
    }

    public Cursor queryOneToOneSession() {
        return this.mBufferDbQuery.queryOneToOneSession();
    }

    public Cursor queryAllSessionWithIMSI(String str) {
        return this.mBufferDbQuery.queryAllSessionWithIMSI(str);
    }

    public Cursor queryAllSessionsFromTelephony(String str) {
        return this.mTelephonyStorage.queryAllSessionsFromTelephony(str);
    }

    public void insertAllSessionToRCSSessionBufferDB(Cursor cursor) {
        this.mBufferDbQuery.insertAllToRCSSessionBufferDB(cursor);
    }

    public void insertSessionFromTPDBToRCSSessionBufferDB(Cursor cursor) {
        this.mBufferDbQuery.insertSessionFromTPDBToRCSSessionBufferDB(cursor);
    }

    public void cleanAllBufferDB() {
        this.mBufferDbQuery.cleanAllBufferDB();
    }

    public void cleanAllBufferDB(String str) {
        this.mBufferDbQuery.cleanAllBufferDB(str);
    }

    public void onUpdateFromDeviceFtUriFetch(DeviceMsgAppFetchUriParam deviceMsgAppFetchUriParam) {
        onUpdateFromDeviceFtUriFetch(deviceMsgAppFetchUriParam, this.mBufferDbQuery);
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
        IMSLog.i(this.TAG, "onCloudUploadSuccess ");
        if (paramOMAresponseforBufDB.getReference() == null) {
            return;
        }
        handleCloudUploadSuccess(paramOMAresponseforBufDB, z, this.mBufferDbQuery, 1);
    }

    public void notifyMsgAppDeleteFail(int i, long j, String str) {
        Log.i(this.TAG, "notifyMsgAppDeleteFail, dbIndex: " + i + " bufferDbId: " + j + " line: " + IMSLog.checker(str));
        if (i == 1) {
            this.mCallbackMsgApp.notifyAppCloudDeleteFail(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.CHAT, CmsUtil.getJsonElements(j));
        }
    }

    @Override // com.sec.internal.ims.cmstore.syncschedulers.BaseMessagingScheduler
    public void wipeOutData(int i, String str) {
        wipeOutData(i, str, this.mBufferDbQuery);
    }

    public void onRcsChatImdnsDownloaded(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Cursor queryTablewithBufferDbId = this.mBufferDbQuery.queryTablewithBufferDbId(1, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
        if (queryTablewithBufferDbId != null) {
            try {
                if (queryTablewithBufferDbId.moveToFirst()) {
                    Object object = paramOMAresponseforBufDB.getObject();
                    ContentValues contentValues = new ContentValues();
                    if (!TextUtils.isEmpty(object.imdns.resourceURL)) {
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(object.imdns.resourceURL));
                    }
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
                    updateRCSImdnToBufferDB(object.imdns, contentValues, queryTablewithBufferDbId);
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

    /* JADX WARN: Removed duplicated region for block: B:50:0x027a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void updateRCSImdnToBufferDB(com.sec.internal.omanetapi.nms.data.ImdnList r26, android.content.ContentValues r27, android.database.Cursor r28) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsSchedulerHelper.updateRCSImdnToBufferDB(com.sec.internal.omanetapi.nms.data.ImdnList, android.content.ContentValues, android.database.Cursor):void");
    }
}
