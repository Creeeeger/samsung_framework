package com.sec.internal.ims.cmstore.syncschedulers;

import android.content.ContentValues;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.data.AttributeNames;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.DeviceIMFTUpdateParam;
import com.sec.internal.ims.cmstore.params.ParamAppJsonValue;
import com.sec.internal.ims.cmstore.params.ParamOMAObject;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet;
import com.sec.internal.ims.cmstore.querybuilders.SummaryQueryBuilder;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.XmlParser;
import com.sec.internal.omanetapi.nms.data.Attribute;
import com.sec.internal.omanetapi.nms.data.GroupState;
import com.sec.internal.omanetapi.nms.data.Object;
import com.sec.internal.omanetapi.nms.data.Part;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* loaded from: classes.dex */
public class RcsScheduler extends RcsSchedulerHelper {
    private String TAG;
    private RcsDbSessionObserver mRcsDbSessionObserver;
    private final Queue<ContentValues> mSessionQueue;

    private void handleExistingBufferForDeviceIMDNUpdate(Cursor cursor, DeviceIMFTUpdateParam deviceIMFTUpdateParam) {
    }

    private void handleNonExistingBufferForDeviceIMDNUpdate(DeviceIMFTUpdateParam deviceIMFTUpdateParam) {
    }

    public RcsScheduler(MessageStoreClient messageStoreClient, CloudMessageBufferDBEventSchedulingRule cloudMessageBufferDBEventSchedulingRule, SummaryQueryBuilder summaryQueryBuilder, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, MmsScheduler mmsScheduler, SmsScheduler smsScheduler, Looper looper) {
        super(messageStoreClient, cloudMessageBufferDBEventSchedulingRule, summaryQueryBuilder, iDeviceDataChangeListener, iBufferDBEventListener, mmsScheduler, smsScheduler, looper);
        this.TAG = RcsScheduler.class.getSimpleName();
        this.mRcsDbSessionObserver = null;
        LinkedList linkedList = new LinkedList();
        this.mSessionQueue = linkedList;
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        registerRcsDbSessionObserver(looper);
        linkedList.clear();
    }

    private void updateSyncFlag(int i, boolean z, String str, long j, ParamSyncFlagsSet paramSyncFlagsSet, ContentValues contentValues, boolean z2) {
        if (i > 0) {
            if (paramSyncFlagsSet.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice) || paramSyncFlagsSet.mDirection.equals(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice)) {
                if (paramSyncFlagsSet.mAction.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Update) || paramSyncFlagsSet.mAction.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Cancel)) {
                    this.mBufferDbQuery.updateRCSMessageDb(i, contentValues);
                } else if (paramSyncFlagsSet.mAction.equals(CloudMessageBufferDBConstants.ActionStatusFlag.Delete)) {
                    this.mBufferDbQuery.deleteRCSMessageDb(i);
                }
            }
            handleOutPutParamSyncFlagSet(paramSyncFlagsSet, j, 1, z2, z, str, null, false);
        }
    }

    private void updateSyncDirection(ContentValues contentValues, ParamSyncFlagsSet paramSyncFlagsSet, String str, String str2) {
        if (TextUtils.isEmpty(str2) && Util.isDownloadObject(str, this.mStoreClient, 1)) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Downloading.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()));
        } else if (paramSyncFlagsSet.mIsChanged) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(paramSyncFlagsSet.mDirection.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(paramSyncFlagsSet.mAction.getId()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0148 A[Catch: all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x0038, B:7:0x0042, B:12:0x0055, B:14:0x005b, B:16:0x00ed, B:20:0x010b, B:22:0x0113, B:24:0x011b, B:26:0x0123, B:28:0x012b, B:29:0x0130, B:31:0x0148, B:32:0x0155, B:35:0x0166, B:37:0x0178, B:38:0x017b, B:40:0x0183, B:42:0x018d, B:44:0x01e9, B:46:0x01f3, B:50:0x01fd, B:56:0x020c, B:57:0x021d, B:59:0x0245, B:62:0x0251, B:65:0x025b, B:71:0x0277, B:79:0x0103, B:80:0x019c, B:86:0x01c4, B:92:0x01d4), top: B:4:0x0038 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0178 A[Catch: all -> 0x0280, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x0038, B:7:0x0042, B:12:0x0055, B:14:0x005b, B:16:0x00ed, B:20:0x010b, B:22:0x0113, B:24:0x011b, B:26:0x0123, B:28:0x012b, B:29:0x0130, B:31:0x0148, B:32:0x0155, B:35:0x0166, B:37:0x0178, B:38:0x017b, B:40:0x0183, B:42:0x018d, B:44:0x01e9, B:46:0x01f3, B:50:0x01fd, B:56:0x020c, B:57:0x021d, B:59:0x0245, B:62:0x0251, B:65:0x025b, B:71:0x0277, B:79:0x0103, B:80:0x019c, B:86:0x01c4, B:92:0x01d4), top: B:4:0x0038 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c4 A[Catch: all -> 0x0280, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0280, blocks: (B:5:0x0038, B:7:0x0042, B:12:0x0055, B:14:0x005b, B:16:0x00ed, B:20:0x010b, B:22:0x0113, B:24:0x011b, B:26:0x0123, B:28:0x012b, B:29:0x0130, B:31:0x0148, B:32:0x0155, B:35:0x0166, B:37:0x0178, B:38:0x017b, B:40:0x0183, B:42:0x018d, B:44:0x01e9, B:46:0x01f3, B:50:0x01fd, B:56:0x020c, B:57:0x021d, B:59:0x0245, B:62:0x0251, B:65:0x025b, B:71:0x0277, B:79:0x0103, B:80:0x019c, B:86:0x01c4, B:92:0x01d4), top: B:4:0x0038 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long handleNormalSyncObjectRcsMessageDownload(com.sec.internal.ims.cmstore.params.ParamOMAObject r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 684
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler.handleNormalSyncObjectRcsMessageDownload(com.sec.internal.ims.cmstore.params.ParamOMAObject, boolean):long");
    }

    private boolean getSessionStatus(String str) {
        int id = ChatData.State.ACTIVE.getId();
        Cursor querySessionByChatId = this.mBufferDbQuery.querySessionByChatId(str);
        if (querySessionByChatId != null) {
            try {
                if (querySessionByChatId.moveToFirst()) {
                    id = querySessionByChatId.getInt(querySessionByChatId.getColumnIndexOrThrow("status"));
                    IMSLog.i(this.TAG, "handleNormalSyncObjectRcsMessageDownload getSessionStatus status:" + id);
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
        return ChatData.State.INACTIVE.equals(Integer.valueOf(id));
    }

    private int handleObjectDownloadCrossSearch(ParamOMAObject paramOMAObject, String str, boolean z) {
        int crossObjectSearchLegacy;
        Log.d(this.TAG, "handleObjectDownloadCrossSearch: " + paramOMAObject);
        if (!this.mStoreClient.getCloudMessageStrategyManager().getStrategy().requiresInterworkingCrossSearch() || (crossObjectSearchLegacy = crossObjectSearchLegacy(paramOMAObject, str, z)) == 1) {
            return 1;
        }
        this.mSummaryDB.insertSummaryDbUsingObjectIfNonExist(paramOMAObject, crossObjectSearchLegacy);
        return crossObjectSearchLegacy;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long handleNormalSyncObjectRcsImdnDownload(com.sec.internal.ims.cmstore.params.ParamOMAObject r10) {
        /*
            r9 = this;
            java.lang.String r0 = r9.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "handleNormalSyncObjectRcsImdnDownload: "
            r1.append(r2)
            r1.append(r10)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            java.lang.String r0 = r10.DISPOSITION_ORIGINAL_TO
            java.lang.String r0 = com.sec.internal.ims.cmstore.utils.Util.getPhoneNum(r0)
            android.content.Context r1 = r9.mContext
            com.sec.internal.ims.cmstore.MessageStoreClient r2 = r9.mStoreClient
            int r2 = r2.getClientID()
            java.lang.String r1 = com.sec.internal.ims.cmstore.utils.Util.getSimCountryCode(r1, r2)
            java.lang.String r0 = com.sec.internal.ims.cmstore.utils.Util.getTelUri(r0, r1)
            com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder r1 = r9.mBufferDbQuery
            java.lang.String r2 = r10.DISPOSITION_ORIGINAL_MESSAGEID
            android.database.Cursor r0 = r1.searchBufferNotificationUsingImdnAndTelUri(r2, r0)
            if (r0 == 0) goto Lf0
            boolean r1 = r0.moveToFirst()     // Catch: java.lang.Throwable -> Lfd
            if (r1 == 0) goto Lf0
            java.lang.String r1 = "_bufferdbid"
            int r1 = r0.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> Lfd
            int r1 = r0.getInt(r1)     // Catch: java.lang.Throwable -> Lfd
            long r1 = (long) r1     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r3 = "_bufferdbid=?"
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r5 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> Lfd
            r6 = 0
            r4[r6] = r5     // Catch: java.lang.Throwable -> Lfd
            android.content.ContentValues r5 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Lfd
            r5.<init>()     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "lastmodseq"
            java.lang.Long r7 = r10.lastModSeq     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "res_url"
            java.net.URL r7 = r10.resourceURL     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r7 = com.sec.internal.ims.cmstore.utils.Util.decodeUrlFromServer(r7)     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "parentfolder"
            java.net.URL r7 = r10.parentFolder     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r7 = com.sec.internal.ims.cmstore.utils.Util.decodeUrlFromServer(r7)     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "path"
            java.lang.String r7 = r10.path     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r7 = com.sec.internal.ims.cmstore.utils.Util.decodeUrlFromServer(r7)     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "imdn_id"
            java.lang.String r7 = r10.DISPOSITION_ORIGINAL_MESSAGEID     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "syncaction"
            com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants$ActionStatusFlag r7 = com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.ActionStatusFlag.None     // Catch: java.lang.Throwable -> Lfd
            int r7 = r7.getId()     // Catch: java.lang.Throwable -> Lfd
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "syncdirection"
            com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants$DirectionFlag r7 = com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.DirectionFlag.Done     // Catch: java.lang.Throwable -> Lfd
            int r7 = r7.getId()     // Catch: java.lang.Throwable -> Lfd
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "timestamp"
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lfd
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r7)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "displayed"
            java.lang.String r10 = r10.DISPOSITION_STATUS     // Catch: java.lang.Throwable -> Lfd
            boolean r10 = r6.equalsIgnoreCase(r10)     // Catch: java.lang.Throwable -> Lfd
            java.lang.String r6 = "status"
            if (r10 == 0) goto Ldb
            com.sec.internal.constants.ims.servicemodules.im.NotificationStatus r10 = com.sec.internal.constants.ims.servicemodules.im.NotificationStatus.DISPLAYED     // Catch: java.lang.Throwable -> Lfd
            int r10 = r10.getId()     // Catch: java.lang.Throwable -> Lfd
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r10)     // Catch: java.lang.Throwable -> Lfd
            goto Le8
        Ldb:
            com.sec.internal.constants.ims.servicemodules.im.NotificationStatus r10 = com.sec.internal.constants.ims.servicemodules.im.NotificationStatus.DELIVERED     // Catch: java.lang.Throwable -> Lfd
            int r10 = r10.getId()     // Catch: java.lang.Throwable -> Lfd
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Throwable -> Lfd
            r5.put(r6, r10)     // Catch: java.lang.Throwable -> Lfd
        Le8:
            com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder r9 = r9.mBufferDbQuery     // Catch: java.lang.Throwable -> Lfd
            r10 = 13
            r9.updateTable(r10, r5, r3, r4)     // Catch: java.lang.Throwable -> Lfd
            goto Lf7
        Lf0:
            com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder r9 = r9.mBufferDbQuery     // Catch: java.lang.Throwable -> Lfd
            r9.insertRCSimdnToBufferDBUsingObject(r10)     // Catch: java.lang.Throwable -> Lfd
            r1 = -1
        Lf7:
            if (r0 == 0) goto Lfc
            r0.close()
        Lfc:
            return r1
        Lfd:
            r9 = move-exception
            if (r0 == 0) goto L108
            r0.close()     // Catch: java.lang.Throwable -> L104
            goto L108
        L104:
            r10 = move-exception
            r9.addSuppressed(r10)
        L108:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler.handleNormalSyncObjectRcsImdnDownload(com.sec.internal.ims.cmstore.params.ParamOMAObject):long");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|1|(4:2|3|4|5)|(3:104|105|(10:107|(1:109)(2:127|(10:129|(1:131)|132|111|(3:113|(1:115)|116)(1:126)|117|(3:119|(1:121)(1:124)|122)(1:125)|123|(1:81)|82))|110|111|(0)(0)|117|(0)(0)|123|(0)|82))|7|8|9|10|11|(1:(2:14|15)(1:17))(2:18|(1:(2:21|22)(1:23))(15:24|25|26|27|28|(1:30)(1:92)|31|32|(11:34|(3:85|86|(1:88))|(1:37)|52|53|(1:83)(2:56|57)|58|(3:60|(3:64|65|(1:67))|(1:63))|79|(0)|82)|89|58|(0)|79|(0)|82))|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x01b8, code lost:
    
        r12 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02f3, code lost:
    
        android.util.Log.e(r22.TAG, "nullpointer or ArrayIndexOutOfBoundsException: " + r0.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x025b, code lost:
    
        if (com.sec.internal.ims.cmstore.utils.CmsUtil.isMcsSupported(r22.mStoreClient.getContext(), r22.mStoreClient.getClientID()) != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01b7, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x00ea A[Catch: all -> 0x018c, TryCatch #10 {all -> 0x018c, blocks: (B:105:0x0039, B:107:0x003f, B:109:0x0092, B:111:0x00e2, B:113:0x00ea, B:115:0x00ee, B:116:0x00f1, B:117:0x0102, B:119:0x013f, B:122:0x0168, B:125:0x017b, B:127:0x00a0, B:129:0x00ac, B:131:0x00be), top: B:104:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x013f A[Catch: all -> 0x018c, TryCatch #10 {all -> 0x018c, blocks: (B:105:0x0039, B:107:0x003f, B:109:0x0092, B:111:0x00e2, B:113:0x00ea, B:115:0x00ee, B:116:0x00f1, B:117:0x0102, B:119:0x013f, B:122:0x0168, B:125:0x017b, B:127:0x00a0, B:129:0x00ac, B:131:0x00be), top: B:104:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x017b A[Catch: all -> 0x018c, TRY_LEAVE, TryCatch #10 {all -> 0x018c, blocks: (B:105:0x0039, B:107:0x003f, B:109:0x0092, B:111:0x00e2, B:113:0x00ea, B:115:0x00ee, B:116:0x00f1, B:117:0x0102, B:119:0x013f, B:122:0x0168, B:125:0x017b, B:127:0x00a0, B:129:0x00ac, B:131:0x00be), top: B:104:0x0039 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x02e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[Catch: ArrayIndexOutOfBoundsException | NullPointerException -> 0x02ed, ArrayIndexOutOfBoundsException | NullPointerException -> 0x02ed, SYNTHETIC, TRY_LEAVE, TryCatch #4 {ArrayIndexOutOfBoundsException | NullPointerException -> 0x02ed, blocks: (B:81:0x02cd, B:50:0x02ec, B:50:0x02ec, B:49:0x02e9, B:49:0x02e9), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02a0 A[Catch: all -> 0x02d1, TRY_LEAVE, TryCatch #0 {all -> 0x02d1, blocks: (B:57:0x0272, B:58:0x0289, B:60:0x02a0, B:63:0x02c6, B:78:0x02c3, B:77:0x02c0, B:83:0x0276, B:65:0x02aa, B:67:0x02b0, B:72:0x02ba), top: B:32:0x022d, inners: #6, #11 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02cd A[Catch: ArrayIndexOutOfBoundsException | NullPointerException -> 0x02ed, TRY_ENTER, TRY_LEAVE, TryCatch #4 {ArrayIndexOutOfBoundsException | NullPointerException -> 0x02ed, blocks: (B:81:0x02cd, B:50:0x02ec, B:50:0x02ec, B:49:0x02e9, B:49:0x02e9), top: B:5:0x0037 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long handleObjectRCSMessageCloudSearch(com.sec.internal.ims.cmstore.params.ParamOMAObject r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 782
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler.handleObjectRCSMessageCloudSearch(com.sec.internal.ims.cmstore.params.ParamOMAObject, boolean):long");
    }

    public void updateRCSImdnToBufferDBUsingObject(ParamOMAObject paramOMAObject, Cursor cursor) {
        Log.d(this.TAG, "updateRCSImdnToBufferDBUsingObject:");
        if (paramOMAObject.mImdns == null || "IN".equalsIgnoreCase(paramOMAObject.DIRECTION)) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAObject.resourceURL.toString()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(paramOMAObject.parentFolder.toString()));
        if (!TextUtils.isEmpty(paramOMAObject.path)) {
            contentValues.put("path", Util.decodeUrlFromServer(paramOMAObject.path));
        }
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
        updateRCSImdnToBufferDB(paramOMAObject.mImdns, contentValues, cursor);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0185 A[Catch: all -> 0x01b2, TRY_LEAVE, TryCatch #1 {all -> 0x01b2, blocks: (B:51:0x0044, B:53:0x004a, B:56:0x0057, B:58:0x0067, B:61:0x0072, B:63:0x00f1, B:65:0x00fb, B:66:0x0116, B:67:0x0128, B:4:0x0138, B:7:0x0172, B:8:0x0175, B:10:0x0185, B:13:0x01a9, B:22:0x01a6, B:26:0x01a3, B:46:0x016f, B:49:0x016c, B:68:0x0109, B:69:0x0123, B:3:0x012e, B:21:0x019e, B:39:0x0142, B:41:0x0148, B:45:0x0167, B:15:0x018f, B:17:0x0195), top: B:50:0x0044, inners: #0, #2, #4, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0142 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0172 A[Catch: all -> 0x01b2, TryCatch #1 {all -> 0x01b2, blocks: (B:51:0x0044, B:53:0x004a, B:56:0x0057, B:58:0x0067, B:61:0x0072, B:63:0x00f1, B:65:0x00fb, B:66:0x0116, B:67:0x0128, B:4:0x0138, B:7:0x0172, B:8:0x0175, B:10:0x0185, B:13:0x01a9, B:22:0x01a6, B:26:0x01a3, B:46:0x016f, B:49:0x016c, B:68:0x0109, B:69:0x0123, B:3:0x012e, B:21:0x019e, B:39:0x0142, B:41:0x0148, B:45:0x0167, B:15:0x018f, B:17:0x0195), top: B:50:0x0044, inners: #0, #2, #4, #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long handleObjectRCSIMDNCloudSearch(com.sec.internal.ims.cmstore.params.ParamOMAObject r13) {
        /*
            Method dump skipped, instructions count: 446
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler.handleObjectRCSIMDNCloudSearch(com.sec.internal.ims.cmstore.params.ParamOMAObject):long");
    }

    public void handleExistingBufferForDeviceRCSUpdate(Cursor cursor, DeviceIMFTUpdateParam deviceIMFTUpdateParam, boolean z, BufferDBChangeParamList bufferDBChangeParamList) {
        IMSLog.s(this.TAG, "handleExistingBufferForDeviceRCSUpdate: " + deviceIMFTUpdateParam);
        ContentValues contentValues = new ContentValues();
        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("linenum"));
        long j = cursor.getLong(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
        ParamSyncFlagsSet setFlagsForMsgOperation = this.mScheduleRule.getSetFlagsForMsgOperation(this.mDbTableContractIndex, j, valueOf2, valueOf, deviceIMFTUpdateParam.mOperation);
        int i = cursor.getInt(cursor.getColumnIndexOrThrow("status"));
        if (setFlagsForMsgOperation.mIsChanged) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(setFlagsForMsgOperation.mDirection.getId()));
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForMsgOperation.mAction.getId()));
        }
        long j2 = deviceIMFTUpdateParam.mRowId;
        if (j2 > 0) {
            contentValues.put("_id", Long.valueOf(j2));
        }
        boolean z2 = cursor.getInt(cursor.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER)) == 1;
        Log.d(this.TAG, "isFt: " + z2 + " , action: " + deviceIMFTUpdateParam.mUpdateType + " currStatus:" + i);
        if (z2 && CloudMessageBufferDBConstants.ActionStatusFlag.Delete.equals(deviceIMFTUpdateParam.mUpdateType)) {
            String string2 = cursor.getString(cursor.getColumnIndex(ImContract.CsSession.FILE_PATH));
            String string3 = cursor.getString(cursor.getColumnIndex(ImContract.CsSession.THUMBNAIL_PATH));
            Log.d(this.TAG, "filepath: " + string2 + " , thumbpath: " + string3);
            if (!TextUtils.isEmpty(string2)) {
                File file = new File(string2);
                if (file.exists()) {
                    file.delete();
                }
            }
            if (!TextUtils.isEmpty(string3)) {
                File file2 = new File(string3);
                if (file2.exists()) {
                    file2.delete();
                }
            }
        }
        if (CloudMessageBufferDBConstants.MsgOperationFlag.Read.equals(deviceIMFTUpdateParam.mOperation)) {
            if (i == ImConstants.Status.CANCELLATION_UNREAD.getId()) {
                ImConstants.Status status = ImConstants.Status.CANCELLATION;
                contentValues.put("status", Integer.valueOf(status.getId()));
                contentValues.put(ImContract.CsSession.STATUS, Integer.valueOf(status.getId()));
            } else if (i != ImConstants.Status.CANCELLATION.getId()) {
                ImConstants.Status status2 = ImConstants.Status.READ;
                contentValues.put("status", Integer.valueOf(status2.getId()));
                contentValues.put(ImContract.CsSession.STATUS, Integer.valueOf(status2.getId()));
            }
        } else if (CloudMessageBufferDBConstants.MsgOperationFlag.Cancel.equals(deviceIMFTUpdateParam.mOperation)) {
            ImConstants.Status status3 = ImConstants.Status.CANCELLATION;
            contentValues.put("status", Integer.valueOf(status3.getId()));
            contentValues.put(ImContract.CsSession.STATUS, Integer.valueOf(status3.getId()));
        }
        if (CloudMessageBufferDBConstants.MsgOperationFlag.Starred.equals(deviceIMFTUpdateParam.mOperation)) {
            contentValues.put("locked", (Integer) 1);
        } else if (CloudMessageBufferDBConstants.MsgOperationFlag.UnStarred.equals(deviceIMFTUpdateParam.mOperation)) {
            contentValues.put("locked", (Integer) 0);
        }
        if (CloudMessageBufferDBConstants.MsgOperationFlag.Spam.equals(deviceIMFTUpdateParam.mOperation)) {
            contentValues.put("spam_type", (Integer) 1);
        }
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isSupportExpiredRule() && CloudMessageBufferDBConstants.MsgOperationFlag.Received.equals(deviceIMFTUpdateParam.mOperation) && z2) {
            Cursor queryIMFTUsingRowId = this.mBufferDbQuery.queryIMFTUsingRowId(deviceIMFTUpdateParam.mRowId);
            if (queryIMFTUsingRowId != null) {
                try {
                    if (queryIMFTUsingRowId.moveToFirst()) {
                        contentValues.put(ImContract.CsSession.THUMBNAIL_PATH, queryIMFTUsingRowId.getString(queryIMFTUsingRowId.getColumnIndexOrThrow(ImContract.CsSession.THUMBNAIL_PATH)));
                    }
                } finally {
                }
            }
            if (queryIMFTUsingRowId != null) {
                queryIMFTUsingRowId.close();
            }
        }
        this.mBufferDbQuery.updateTable(deviceIMFTUpdateParam.mTableindex, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
        if (setFlagsForMsgOperation.mIsChanged) {
            handleOutPutParamSyncFlagSet(setFlagsForMsgOperation, j, deviceIMFTUpdateParam.mTableindex, z2, z, string, bufferDBChangeParamList, false);
        }
    }

    public void handleNonExistingBufferForDeviceRCSUpdate(DeviceIMFTUpdateParam deviceIMFTUpdateParam) {
        IMSLog.s(this.TAG, "handleNonExistingBufferForDeviceRCSUpdate: " + deviceIMFTUpdateParam);
        Cursor queryIMFTUsingRowId = this.mBufferDbQuery.queryIMFTUsingRowId(deviceIMFTUpdateParam.mRowId);
        if (queryIMFTUsingRowId != null) {
            try {
                if (queryIMFTUsingRowId.moveToFirst()) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
                    if (this.mBufferDbQuery.insertToRCSMessagesBufferDB(queryIMFTUsingRowId, deviceIMFTUpdateParam.mLine, contentValues) < 1) {
                        Log.e(this.TAG, "handleNonExistingBufferForDeviceRCSUpdate: insert RCS Buffer DB error or meet blocked number!");
                    }
                }
            } catch (Throwable th) {
                try {
                    queryIMFTUsingRowId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryIMFTUsingRowId != null) {
            queryIMFTUsingRowId.close();
        }
    }

    public void handleDownLoadMessageResponse(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        if (z || !ParamOMAresponseforBufDB.ActionType.OBJECT_NOT_FOUND.equals(paramOMAresponseforBufDB.getActionType())) {
            return;
        }
        this.mBufferDbQuery.setMsgDeleted(paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:59:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:81:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onUpdateFromDeviceIMFT(com.sec.internal.ims.cmstore.params.DeviceIMFTUpdateParam r5, boolean r6, com.sec.internal.ims.cmstore.params.BufferDBChangeParamList r7) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler.onUpdateFromDeviceIMFT(com.sec.internal.ims.cmstore.params.DeviceIMFTUpdateParam, boolean, com.sec.internal.ims.cmstore.params.BufferDBChangeParamList):void");
    }

    /* renamed from: com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler$1, reason: invalid class name */
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
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Cancel.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Starred.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Spam.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Trash.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Restore.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Delete.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.UnStarred.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.SendFail.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Receiving.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Sending.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Download.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.AcceptChat.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    private void handleExistingBufferForSessionAccpetUpdate(Cursor cursor, DeviceIMFTUpdateParam deviceIMFTUpdateParam, BufferDBChangeParamList bufferDBChangeParamList) {
        IMSLog.s(this.TAG, "handleExistingBufferForSessionAccpetUpdate " + deviceIMFTUpdateParam.mChatId);
        String string = cursor.getString(cursor.getColumnIndexOrThrow("linenum"));
        long j = cursor.getLong(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
        if (bufferDBChangeParamList != null) {
            bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(deviceIMFTUpdateParam.mTableindex, j, false, string, deviceIMFTUpdateParam.mUpdateType, this.mStoreClient));
        }
    }

    public void onAppOperationReceived(ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        IMSLog.s(this.TAG, "onAppOperationReceived: " + paramAppJsonValue);
        CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.None;
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[paramAppJsonValue.mOperation.ordinal()];
        if (i == 14) {
            actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad;
        } else if (i != 15) {
            switch (i) {
                case 1:
                case 2:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Insert;
                    break;
                case 3:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Update;
                    break;
                case 4:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Cancel;
                    break;
                case 5:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Starred;
                    break;
                case 6:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Spam;
                    break;
                case 7:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Trash;
                    break;
                case 8:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Restore;
                    break;
                case 9:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Delete;
                    break;
                case 10:
                    actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.UnStarred;
                    break;
            }
        } else {
            actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Accepted;
        }
        DeviceIMFTUpdateParam deviceIMFTUpdateParam = new DeviceIMFTUpdateParam(paramAppJsonValue.mDataContractType, actionStatusFlag, paramAppJsonValue.mOperation, paramAppJsonValue.mRowId, paramAppJsonValue.mChatId, paramAppJsonValue.mCorrelationId, paramAppJsonValue.mLine);
        if (CloudMessageBufferDBConstants.MsgOperationFlag.Download.equals(paramAppJsonValue.mOperation)) {
            onDownloadRequestFromApp(deviceIMFTUpdateParam);
        } else {
            onUpdateFromDeviceIMFT(deviceIMFTUpdateParam, false, bufferDBChangeParamList);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0234 A[Catch: all -> 0x0512, TRY_LEAVE, TryCatch #1 {all -> 0x0512, blocks: (B:17:0x00d9, B:19:0x00fd, B:20:0x0108, B:22:0x010e, B:72:0x0130, B:74:0x0145, B:75:0x0182, B:77:0x018f, B:78:0x0194, B:80:0x01a2, B:82:0x01af, B:84:0x01b5, B:85:0x01b7, B:86:0x01bf, B:88:0x01d4, B:90:0x01da, B:92:0x01de, B:94:0x01e4, B:96:0x01f1, B:98:0x020f, B:101:0x021f, B:103:0x0234, B:106:0x0246, B:108:0x024a, B:110:0x025a, B:111:0x028e, B:113:0x0292, B:115:0x0296, B:117:0x029d, B:119:0x02a5, B:120:0x02ac, B:122:0x02b0, B:124:0x02b8, B:128:0x02e2, B:134:0x026a, B:136:0x026e, B:138:0x0279, B:140:0x0281, B:142:0x02c8, B:144:0x02ce, B:146:0x02d9, B:153:0x02f4, B:155:0x02fa, B:157:0x030a, B:160:0x033c, B:163:0x0312, B:165:0x0322, B:168:0x0328, B:170:0x0336, B:173:0x0348, B:175:0x034e, B:176:0x035a, B:219:0x0511, B:218:0x050e, B:192:0x04e8, B:242:0x0218, B:247:0x0206, B:249:0x01bc, B:250:0x01aa, B:251:0x0157, B:253:0x015f, B:255:0x0169, B:257:0x0173, B:223:0x0362, B:225:0x0368, B:228:0x03ad, B:230:0x03b3, B:232:0x03c3, B:233:0x03e1, B:237:0x03e7, B:178:0x0408, B:180:0x0410, B:189:0x04c8, B:206:0x04db, B:205:0x04d8, B:213:0x0508), top: B:16:0x00d9, inners: #2, #3, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x034e A[Catch: all -> 0x0512, TryCatch #1 {all -> 0x0512, blocks: (B:17:0x00d9, B:19:0x00fd, B:20:0x0108, B:22:0x010e, B:72:0x0130, B:74:0x0145, B:75:0x0182, B:77:0x018f, B:78:0x0194, B:80:0x01a2, B:82:0x01af, B:84:0x01b5, B:85:0x01b7, B:86:0x01bf, B:88:0x01d4, B:90:0x01da, B:92:0x01de, B:94:0x01e4, B:96:0x01f1, B:98:0x020f, B:101:0x021f, B:103:0x0234, B:106:0x0246, B:108:0x024a, B:110:0x025a, B:111:0x028e, B:113:0x0292, B:115:0x0296, B:117:0x029d, B:119:0x02a5, B:120:0x02ac, B:122:0x02b0, B:124:0x02b8, B:128:0x02e2, B:134:0x026a, B:136:0x026e, B:138:0x0279, B:140:0x0281, B:142:0x02c8, B:144:0x02ce, B:146:0x02d9, B:153:0x02f4, B:155:0x02fa, B:157:0x030a, B:160:0x033c, B:163:0x0312, B:165:0x0322, B:168:0x0328, B:170:0x0336, B:173:0x0348, B:175:0x034e, B:176:0x035a, B:219:0x0511, B:218:0x050e, B:192:0x04e8, B:242:0x0218, B:247:0x0206, B:249:0x01bc, B:250:0x01aa, B:251:0x0157, B:253:0x015f, B:255:0x0169, B:257:0x0173, B:223:0x0362, B:225:0x0368, B:228:0x03ad, B:230:0x03b3, B:232:0x03c3, B:233:0x03e1, B:237:0x03e7, B:178:0x0408, B:180:0x0410, B:189:0x04c8, B:206:0x04db, B:205:0x04d8, B:213:0x0508), top: B:16:0x00d9, inners: #2, #3, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0410 A[Catch: all -> 0x0404, TRY_LEAVE, TryCatch #2 {all -> 0x0404, blocks: (B:223:0x0362, B:225:0x0368, B:228:0x03ad, B:230:0x03b3, B:232:0x03c3, B:233:0x03e1, B:237:0x03e7, B:178:0x0408, B:180:0x0410, B:189:0x04c8, B:206:0x04db, B:205:0x04d8, B:200:0x04d2, B:182:0x041c, B:184:0x0422, B:186:0x047b, B:188:0x04aa, B:194:0x0483), top: B:222:0x0362, outer: #1, inners: #5, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x04e8 A[Catch: all -> 0x0512, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0512, blocks: (B:17:0x00d9, B:19:0x00fd, B:20:0x0108, B:22:0x010e, B:72:0x0130, B:74:0x0145, B:75:0x0182, B:77:0x018f, B:78:0x0194, B:80:0x01a2, B:82:0x01af, B:84:0x01b5, B:85:0x01b7, B:86:0x01bf, B:88:0x01d4, B:90:0x01da, B:92:0x01de, B:94:0x01e4, B:96:0x01f1, B:98:0x020f, B:101:0x021f, B:103:0x0234, B:106:0x0246, B:108:0x024a, B:110:0x025a, B:111:0x028e, B:113:0x0292, B:115:0x0296, B:117:0x029d, B:119:0x02a5, B:120:0x02ac, B:122:0x02b0, B:124:0x02b8, B:128:0x02e2, B:134:0x026a, B:136:0x026e, B:138:0x0279, B:140:0x0281, B:142:0x02c8, B:144:0x02ce, B:146:0x02d9, B:153:0x02f4, B:155:0x02fa, B:157:0x030a, B:160:0x033c, B:163:0x0312, B:165:0x0322, B:168:0x0328, B:170:0x0336, B:173:0x0348, B:175:0x034e, B:176:0x035a, B:219:0x0511, B:218:0x050e, B:192:0x04e8, B:242:0x0218, B:247:0x0206, B:249:0x01bc, B:250:0x01aa, B:251:0x0157, B:253:0x015f, B:255:0x0169, B:257:0x0173, B:223:0x0362, B:225:0x0368, B:228:0x03ad, B:230:0x03b3, B:232:0x03c3, B:233:0x03e1, B:237:0x03e7, B:178:0x0408, B:180:0x0410, B:189:0x04c8, B:206:0x04db, B:205:0x04d8, B:213:0x0508), top: B:16:0x00d9, inners: #2, #3, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04dc  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0362 A[EXC_TOP_SPLITTER, LOOP:3: B:222:0x0362->B:236:0x0362, LOOP_START, PHI: r22 r32
      0x0362: PHI (r22v5 boolean) = (r22v4 boolean), (r22v6 boolean) binds: [B:177:0x0360, B:236:0x0362] A[DONT_GENERATE, DONT_INLINE]
      0x0362: PHI (r32v5 java.util.HashSet) = (r32v4 java.util.HashSet), (r32v6 java.util.HashSet) binds: [B:177:0x0360, B:236:0x0362] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0218 A[Catch: all -> 0x0512, TryCatch #1 {all -> 0x0512, blocks: (B:17:0x00d9, B:19:0x00fd, B:20:0x0108, B:22:0x010e, B:72:0x0130, B:74:0x0145, B:75:0x0182, B:77:0x018f, B:78:0x0194, B:80:0x01a2, B:82:0x01af, B:84:0x01b5, B:85:0x01b7, B:86:0x01bf, B:88:0x01d4, B:90:0x01da, B:92:0x01de, B:94:0x01e4, B:96:0x01f1, B:98:0x020f, B:101:0x021f, B:103:0x0234, B:106:0x0246, B:108:0x024a, B:110:0x025a, B:111:0x028e, B:113:0x0292, B:115:0x0296, B:117:0x029d, B:119:0x02a5, B:120:0x02ac, B:122:0x02b0, B:124:0x02b8, B:128:0x02e2, B:134:0x026a, B:136:0x026e, B:138:0x0279, B:140:0x0281, B:142:0x02c8, B:144:0x02ce, B:146:0x02d9, B:153:0x02f4, B:155:0x02fa, B:157:0x030a, B:160:0x033c, B:163:0x0312, B:165:0x0322, B:168:0x0328, B:170:0x0336, B:173:0x0348, B:175:0x034e, B:176:0x035a, B:219:0x0511, B:218:0x050e, B:192:0x04e8, B:242:0x0218, B:247:0x0206, B:249:0x01bc, B:250:0x01aa, B:251:0x0157, B:253:0x015f, B:255:0x0169, B:257:0x0173, B:223:0x0362, B:225:0x0368, B:228:0x03ad, B:230:0x03b3, B:232:0x03c3, B:233:0x03e1, B:237:0x03e7, B:178:0x0408, B:180:0x0410, B:189:0x04c8, B:206:0x04db, B:205:0x04d8, B:213:0x0508), top: B:16:0x00d9, inners: #2, #3, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:303:0x06bb A[Catch: all -> 0x07b4, TryCatch #4 {all -> 0x07b4, blocks: (B:34:0x06e7, B:36:0x0704, B:37:0x070e, B:40:0x0716, B:41:0x0727, B:43:0x072d, B:45:0x073f, B:47:0x074a, B:48:0x0750, B:50:0x0757, B:53:0x0765, B:54:0x0786, B:56:0x078c, B:262:0x052c, B:264:0x0546, B:266:0x0558, B:268:0x055c, B:270:0x0560, B:272:0x0567, B:274:0x056f, B:276:0x0580, B:281:0x0577, B:284:0x058b, B:286:0x05ba, B:287:0x05bc, B:288:0x05c4, B:290:0x05d5, B:291:0x05dc, B:293:0x05e2, B:295:0x05e6, B:297:0x05ec, B:299:0x05f9, B:301:0x0617, B:303:0x06bb, B:304:0x06c2, B:307:0x060e, B:309:0x05c1), top: B:33:0x06e7, inners: #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x07bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleCloudNotifyConferenceInfo(com.sec.internal.ims.cmstore.params.ParamOMAObject r38, com.sec.internal.omanetapi.nms.data.Object r39, boolean r40) {
        /*
            Method dump skipped, instructions count: 2015
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler.handleCloudNotifyConferenceInfo(com.sec.internal.ims.cmstore.params.ParamOMAObject, com.sec.internal.omanetapi.nms.data.Object, boolean):void");
    }

    public void handleCloudNotifyGSOChangedObj(ParamOMAObject paramOMAObject, Object object) {
        Attribute[] attributeArr;
        int i;
        int i2;
        String str;
        String[] strArr;
        int i3;
        String str2;
        int i4;
        String str3;
        String str4;
        int i5;
        int i6;
        long j;
        Part part;
        boolean z;
        Log.d(this.TAG, "handleCloudNotifyGSOChangedObj(), objt is: " + object);
        Attribute[] attributeArr2 = object.attributes.attribute;
        int length = attributeArr2.length;
        int i7 = 0;
        int i8 = 0;
        String str5 = null;
        while (i8 < length) {
            Attribute attribute = attributeArr2[i8];
            String[] strArr2 = attribute.value;
            int length2 = strArr2.length;
            for (int i9 = i7; i9 < length2; i9++) {
                String str6 = strArr2[i9];
                Log.d(this.TAG, "Attribute key: " + attribute.name + ", value: " + str6);
            }
            String str7 = "subject";
            if ("subject".equals(attribute.name)) {
                str5 = attribute.value[i7];
            }
            if (AttributeNames.textcontent.equalsIgnoreCase(attribute.name)) {
                String[] strArr3 = attribute.value;
                int length3 = strArr3.length;
                int i10 = i7;
                while (i10 < length3) {
                    GroupState parseGroupState = XmlParser.parseGroupState(strArr3[i10]);
                    Log.i(this.TAG, "GroupState after xmlParser: " + parseGroupState.toString());
                    parseGroupState.subject = str5;
                    ContentValues contentValues = new ContentValues();
                    if ("open".equalsIgnoreCase(parseGroupState.group_type)) {
                        contentValues.put(ImContract.ImSession.CHAT_TYPE, (Integer) 1);
                    } else {
                        contentValues.put(ImContract.ImSession.CHAT_TYPE, (Integer) 2);
                    }
                    contentValues.put(str7, parseGroupState.subject);
                    contentValues.put("session_uri", parseGroupState.lastfocussessionid);
                    Cursor queryAllSession = this.mBufferDbQuery.queryAllSession();
                    if (queryAllSession == null) {
                        if (queryAllSession != null) {
                            queryAllSession.close();
                        }
                        attributeArr = attributeArr2;
                        i = length;
                        i2 = i8;
                        str = str5;
                    } else {
                        try {
                            String str8 = parseGroupState.lastfocussessionid;
                            int indexOf = str8 != null ? str8.indexOf("@") : -1;
                            if (indexOf > 0) {
                                String substring = parseGroupState.lastfocussessionid.substring(i7, indexOf);
                                while (true) {
                                    str3 = "chat_id";
                                    if (!queryAllSession.moveToNext()) {
                                        attributeArr = attributeArr2;
                                        i = length;
                                        str = str5;
                                        str4 = null;
                                        break;
                                    }
                                    String string = queryAllSession.getString(queryAllSession.getColumnIndexOrThrow("session_uri"));
                                    attributeArr = attributeArr2;
                                    String str9 = this.TAG;
                                    i = length;
                                    StringBuilder sb = new StringBuilder();
                                    str = str5;
                                    sb.append("session uri: ");
                                    sb.append(string);
                                    Log.d(str9, sb.toString());
                                    if (string != null && string.toLowerCase().contains(substring.toLowerCase())) {
                                        str4 = queryAllSession.getString(queryAllSession.getColumnIndexOrThrow("chat_id"));
                                        break;
                                    } else {
                                        attributeArr2 = attributeArr;
                                        length = i;
                                        str5 = str;
                                    }
                                }
                                queryAllSession.close();
                                Log.i(this.TAG, "chat id: " + str4);
                                if (str4 != null) {
                                    this.mBufferDbQuery.updateSessionBufferDb(str4, contentValues);
                                    this.mBufferDbQuery.updateRCSSessionDb(str4, contentValues);
                                    contentValues.put("chat_id", str4);
                                    notifyMsgAppFetchBuffer(contentValues, 10);
                                    Cursor queryParticipantsUsingChatId = this.mBufferDbQuery.queryParticipantsUsingChatId(str4);
                                    String str10 = "uri";
                                    String str11 = "alias";
                                    if (queryParticipantsUsingChatId != null) {
                                        while (queryParticipantsUsingChatId.moveToNext()) {
                                            try {
                                                Part part2 = new Part();
                                                part2.name = queryParticipantsUsingChatId.getString(queryParticipantsUsingChatId.getColumnIndexOrThrow(str11));
                                                part2.comm_addr = queryParticipantsUsingChatId.getString(queryParticipantsUsingChatId.getColumnIndexOrThrow(str10));
                                                part2.role = queryParticipantsUsingChatId.getString(queryParticipantsUsingChatId.getColumnIndexOrThrow("type"));
                                                String[] strArr4 = strArr3;
                                                String simCountryCode = Util.getSimCountryCode(this.mContext, this.mStoreClient.getClientID());
                                                String telUri = Util.getTelUri(part2.comm_addr, simCountryCode);
                                                int i11 = length3;
                                                String msisdn = Util.getMsisdn(telUri, simCountryCode);
                                                String str12 = str7;
                                                Iterator<Part> it = parseGroupState.participantList.iterator();
                                                while (true) {
                                                    i5 = i8;
                                                    if (!it.hasNext()) {
                                                        i6 = i10;
                                                        j = 0;
                                                        part = null;
                                                        z = false;
                                                        break;
                                                    }
                                                    Iterator<Part> it2 = it;
                                                    part = it.next();
                                                    i6 = i10;
                                                    if (Util.getTelUri(part.comm_addr, simCountryCode).contains(msisdn)) {
                                                        j = queryParticipantsUsingChatId.getLong(queryParticipantsUsingChatId.getColumnIndexOrThrow("_id"));
                                                        parseGroupState.participantList.remove(part);
                                                        z = true;
                                                        break;
                                                    } else {
                                                        i10 = i6;
                                                        i8 = i5;
                                                        it = it2;
                                                    }
                                                }
                                                long j2 = j;
                                                String str13 = str10;
                                                String str14 = str3;
                                                String str15 = this.TAG;
                                                String str16 = str11;
                                                StringBuilder sb2 = new StringBuilder();
                                                GroupState groupState = parseGroupState;
                                                sb2.append("Participant: ");
                                                sb2.append(part2.toString());
                                                sb2.append(", telLine = ");
                                                sb2.append(IMSLog.checker(telUri));
                                                sb2.append(", line = ");
                                                sb2.append(IMSLog.checker(msisdn));
                                                sb2.append("isExist: ");
                                                sb2.append(z);
                                                sb2.append(", tempPart: ");
                                                sb2.append(part != null ? part.toString() : "");
                                                Log.i(str15, sb2.toString());
                                                if (!z) {
                                                    this.mBufferDbQuery.deleteParticipantsUsingRowId(queryParticipantsUsingChatId.getLong(queryParticipantsUsingChatId.getColumnIndexOrThrow("_id")));
                                                    this.mBufferDbQuery.deleteParticipantsFromBufferDb(part2.comm_addr, str4);
                                                } else if (part != null) {
                                                    ContentValues contentValues2 = new ContentValues();
                                                    String str17 = part.role;
                                                    if (str17 != null && str17.equalsIgnoreCase("Administrator")) {
                                                        String str18 = part.role;
                                                        ImParticipant.Type type = ImParticipant.Type.CHAIRMAN;
                                                        if (!str18.equals(String.valueOf(type.getId()))) {
                                                            contentValues2.put("type", Integer.valueOf(type.getId()));
                                                            this.mBufferDbQuery.updateRCSParticipantsDb(j2, contentValues2);
                                                            this.mBufferDbQuery.updateParticipantsBufferDb(part2.comm_addr, contentValues2);
                                                        }
                                                    }
                                                    contentValues2.put("type", Integer.valueOf(ImParticipant.Type.REGULAR.getId()));
                                                    this.mBufferDbQuery.updateRCSParticipantsDb(j2, contentValues2);
                                                    this.mBufferDbQuery.updateParticipantsBufferDb(part2.comm_addr, contentValues2);
                                                }
                                                strArr3 = strArr4;
                                                length3 = i11;
                                                str7 = str12;
                                                i10 = i6;
                                                i8 = i5;
                                                str10 = str13;
                                                str3 = str14;
                                                str11 = str16;
                                                parseGroupState = groupState;
                                            } finally {
                                            }
                                        }
                                    }
                                    String str19 = str10;
                                    String str20 = str3;
                                    i2 = i8;
                                    strArr = strArr3;
                                    i3 = length3;
                                    str2 = str7;
                                    i4 = i10;
                                    GroupState groupState2 = parseGroupState;
                                    String str21 = str11;
                                    if (queryParticipantsUsingChatId != null) {
                                        queryParticipantsUsingChatId.close();
                                    }
                                    Iterator<Part> it3 = groupState2.participantList.iterator();
                                    while (it3.hasNext()) {
                                        Part next = it3.next();
                                        Log.d(this.TAG, "Insert participant : " + next.toString());
                                        ContentValues contentValues3 = new ContentValues();
                                        String str22 = next.role;
                                        if (str22 != null && str22.equalsIgnoreCase("Administrator")) {
                                            contentValues3.put("type", Integer.valueOf(ImParticipant.Type.CHAIRMAN.getId()));
                                            contentValues3.put("status", Integer.valueOf(ImParticipant.Status.INITIAL.getId()));
                                        } else {
                                            contentValues3.put("type", Integer.valueOf(ImParticipant.Type.REGULAR.getId()));
                                            contentValues3.put("status", Integer.valueOf(ImParticipant.Status.ACCEPTED.getId()));
                                        }
                                        contentValues3.put(str21, next.name);
                                        contentValues3.put(str20, str4);
                                        contentValues3.put(str19, Util.getTelUri(next.comm_addr, Util.getSimCountryCode(this.mContext, this.mStoreClient.getClientID())));
                                        this.mBufferDbQuery.insertRCSParticipantsDb(contentValues3);
                                        contentValues3.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
                                        this.mBufferDbQuery.insertDeviceMsgToBuffer(2, contentValues3);
                                    }
                                } else {
                                    i2 = i8;
                                }
                            } else {
                                attributeArr = attributeArr2;
                                i = length;
                                i2 = i8;
                                str = str5;
                                strArr = strArr3;
                                i3 = length3;
                                str2 = str7;
                                i4 = i10;
                                queryAllSession.close();
                            }
                            i10 = i4 + 1;
                            attributeArr2 = attributeArr;
                            length = i;
                            str5 = str;
                            strArr3 = strArr;
                            length3 = i3;
                            str7 = str2;
                            i8 = i2;
                            i7 = 0;
                        } finally {
                        }
                    }
                    strArr = strArr3;
                    i3 = length3;
                    str2 = str7;
                    i4 = i10;
                    i10 = i4 + 1;
                    attributeArr2 = attributeArr;
                    length = i;
                    str5 = str;
                    strArr3 = strArr;
                    length3 = i3;
                    str7 = str2;
                    i8 = i2;
                    i7 = 0;
                }
            }
            i8++;
            attributeArr2 = attributeArr2;
            length = length;
            str5 = str5;
            i7 = 0;
        }
    }

    private int crossObjectSearchLegacy(ParamOMAObject paramOMAObject, String str, boolean z) {
        if (paramOMAObject.correlationTag == null && paramOMAObject.TEXT_CONTENT != null) {
            this.mSmsScheduler.updateCorrelationTagObject(paramOMAObject);
        }
        if (paramOMAObject.correlationTag != null && this.mSmsScheduler.handleCrossSearchObj(paramOMAObject, str, z)) {
            return 3;
        }
        if (paramOMAObject.correlationTag != null || paramOMAObject.correlationId == null) {
            return 1;
        }
        String str2 = paramOMAObject.TEXT_CONTENT;
        return ((str2 == null || str2.isEmpty()) && this.mMmsScheduler.handleCrossSearchObj(paramOMAObject, str, z)) ? 4 : 1;
    }

    public boolean isEmptySession() {
        return this.mSessionQueue.isEmpty();
    }

    public void handleNotifySessionToApp() {
        while (!this.mSessionQueue.isEmpty()) {
            notifyMsgAppFetchBuffer(this.mSessionQueue.peek(), 10);
            this.mSessionQueue.poll();
        }
    }

    private class RcsDbSessionObserver extends ContentObserver {
        public RcsDbSessionObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            Log.d(RcsScheduler.this.TAG, "RcsDbSessionObserver chatId: " + lastPathSegment);
            ContentValues contentValues = new ContentValues();
            Cursor querySessionUsingChatId = RcsScheduler.this.mBufferDbQuery.querySessionUsingChatId(lastPathSegment);
            if (querySessionUsingChatId != null) {
                try {
                    if (querySessionUsingChatId.moveToFirst()) {
                        if (!TextUtils.equals(querySessionUsingChatId.getString(querySessionUsingChatId.getColumnIndexOrThrow("sim_imsi")), RcsScheduler.this.mStoreClient.getCurrentIMSI())) {
                            Log.d(RcsScheduler.this.TAG, "different sim imsi return");
                            querySessionUsingChatId.close();
                            return;
                        }
                        String string = querySessionUsingChatId.getString(querySessionUsingChatId.getColumnIndexOrThrow(ImContract.ImSession.ICON_PATH));
                        String string2 = querySessionUsingChatId.getString(querySessionUsingChatId.getColumnIndexOrThrow("conversation_id"));
                        String string3 = querySessionUsingChatId.getString(querySessionUsingChatId.getColumnIndexOrThrow("contribution_id"));
                        Log.d(RcsScheduler.this.TAG, "onChange iconPath:  " + string);
                        if (!TextUtils.isEmpty(string)) {
                            String string4 = querySessionUsingChatId.getString(querySessionUsingChatId.getColumnIndexOrThrow(ImContract.ImSession.ICON_PARTICIPANT));
                            String string5 = querySessionUsingChatId.getString(querySessionUsingChatId.getColumnIndexOrThrow(ImContract.ImSession.ICON_TIMESTAMP));
                            contentValues.put(ImContract.ImSession.ICON_PATH, string);
                            contentValues.put(ImContract.ImSession.ICON_PARTICIPANT, string4);
                            contentValues.put(ImContract.ImSession.ICON_TIMESTAMP, string5);
                        }
                        long j = querySessionUsingChatId.getLong(querySessionUsingChatId.getColumnIndexOrThrow(ImContract.ImSession.INSERTED_TIMESTAMP));
                        Cursor queryBufferDBSessionByChatId = RcsScheduler.this.mBufferDbQuery.queryBufferDBSessionByChatId(lastPathSegment);
                        if (queryBufferDBSessionByChatId != null) {
                            try {
                                if (queryBufferDBSessionByChatId.moveToFirst()) {
                                    String string6 = queryBufferDBSessionByChatId.getString(queryBufferDBSessionByChatId.getColumnIndexOrThrow("session_uri"));
                                    Log.d(RcsScheduler.this.TAG, "on Change existiongSessionUri: " + string6);
                                    if (TextUtils.isEmpty(string6)) {
                                        String string7 = querySessionUsingChatId.getString(querySessionUsingChatId.getColumnIndexOrThrow("session_uri"));
                                        Log.d(RcsScheduler.this.TAG, "onChange sessionUri: " + string7);
                                        if (!TextUtils.isEmpty(string7)) {
                                            contentValues.put("is_group_chat", (Integer) 1);
                                            contentValues.put("session_uri", string7);
                                        }
                                    }
                                    String string8 = queryBufferDBSessionByChatId.getString(queryBufferDBSessionByChatId.getColumnIndexOrThrow(ImContract.ImSession.INSERTED_TIMESTAMP));
                                    if (j > (!TextUtils.isEmpty(string8) ? Long.valueOf(string8).longValue() : 0L)) {
                                        contentValues.put(ImContract.ImSession.INSERTED_TIMESTAMP, Long.valueOf(j));
                                    }
                                }
                            } finally {
                            }
                        }
                        if (queryBufferDBSessionByChatId != null) {
                            queryBufferDBSessionByChatId.close();
                        }
                        contentValues.put("contribution_id", string3);
                        contentValues.put("conversation_id", string2);
                        contentValues.put("status", Integer.valueOf(querySessionUsingChatId.getInt(querySessionUsingChatId.getColumnIndexOrThrow("status"))));
                        RcsScheduler.this.mBufferDbQuery.updateSessionBufferDb(lastPathSegment, contentValues);
                    }
                } finally {
                }
            }
            if (querySessionUsingChatId != null) {
                querySessionUsingChatId.close();
            }
            HashSet hashSet = new HashSet();
            Cursor queryParticipantsUsingChatId = RcsScheduler.this.mBufferDbQuery.queryParticipantsUsingChatId(lastPathSegment);
            if (queryParticipantsUsingChatId != null) {
                while (queryParticipantsUsingChatId.moveToNext()) {
                    try {
                        hashSet.add(ImsUri.parse(queryParticipantsUsingChatId.getString(queryParticipantsUsingChatId.getColumnIndex("uri"))));
                    } finally {
                    }
                }
            }
            if (queryParticipantsUsingChatId != null) {
                queryParticipantsUsingChatId.close();
            }
            Cursor queryParticipantsFromBufferDb = RcsScheduler.this.mBufferDbQuery.queryParticipantsFromBufferDb(lastPathSegment);
            if (queryParticipantsFromBufferDb != null) {
                while (queryParticipantsFromBufferDb.moveToNext()) {
                    try {
                        String string9 = queryParticipantsFromBufferDb.getString(queryParticipantsFromBufferDb.getColumnIndexOrThrow("uri"));
                        RcsScheduler rcsScheduler = RcsScheduler.this;
                        ImsUri normalizedTelUri = Util.getNormalizedTelUri(string9, Util.getSimCountryCode(rcsScheduler.mContext, rcsScheduler.mStoreClient.getClientID()));
                        Log.e(RcsScheduler.this.TAG, "participant = " + IMSLog.checker(string9) + ", telUri = " + IMSLog.checker(normalizedTelUri));
                        if (normalizedTelUri != null) {
                            if (hashSet.contains(normalizedTelUri)) {
                                hashSet.remove(normalizedTelUri);
                            } else {
                                Log.d(RcsScheduler.this.TAG, "remove participant = " + IMSLog.checker(string9));
                                RcsScheduler.this.mBufferDbQuery.deleteParticipantsFromBufferDb(string9, lastPathSegment);
                            }
                        }
                    } finally {
                    }
                }
            }
            if (hashSet.size() > 0) {
                Log.d(RcsScheduler.this.TAG, "insert new participant");
                RcsScheduler.this.mBufferDbQuery.insertNewParticipantToBufferDB(hashSet, lastPathSegment);
            }
            if (queryParticipantsFromBufferDb != null) {
                queryParticipantsFromBufferDb.close();
            }
        }
    }

    private void registerRcsDbSessionObserver(Looper looper) {
        if (this.mRcsDbSessionObserver != null) {
            return;
        }
        this.mRcsDbSessionObserver = new RcsDbSessionObserver(this);
        this.mContext.getContentResolver().registerContentObserver(Uri.parse("content://com.samsung.rcs.cmstore/chat/"), true, this.mRcsDbSessionObserver);
    }

    public void updateMessageReceivedBeforeConfInfo(String str) {
        Log.d(this.TAG, "updateMessageReceivedBeforeConfInfo");
        Cursor searchIMFTBufferUsingChatId = this.mBufferDbQuery.searchIMFTBufferUsingChatId(str);
        if (searchIMFTBufferUsingChatId != null) {
            try {
                if (searchIMFTBufferUsingChatId.moveToFirst()) {
                    do {
                        String string = searchIMFTBufferUsingChatId.getString(searchIMFTBufferUsingChatId.getColumnIndexOrThrow("imdn_message_id"));
                        this.mBufferDbQuery.queryImdnBufferDBandUpdateRcsMessageBufferDb(string, str);
                        long j = searchIMFTBufferUsingChatId.getLong(searchIMFTBufferUsingChatId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        int i = searchIMFTBufferUsingChatId.getInt(searchIMFTBufferUsingChatId.getColumnIndexOrThrow("direction"));
                        boolean z = true;
                        if (searchIMFTBufferUsingChatId.getInt(searchIMFTBufferUsingChatId.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER)) != 1) {
                            z = false;
                        }
                        this.mBufferDbQuery.queryBufferDbandUpdateRcsMessageDb(string);
                        Log.i(this.TAG, "updateMessageReceivedBeforeConfInfo bufferDbId: " + j + ", direction: " + i);
                        if (i == ImDirection.OUTGOING.getId()) {
                            notifyMsgAppCldNotification(CloudMessageProviderContract.ApplicationTypes.MSGDATA, z ? CloudMessageProviderContract.DataTypes.RCS_IMDN_FT : CloudMessageProviderContract.DataTypes.RCS_IMDN_CHAT, j, false);
                        }
                    } while (searchIMFTBufferUsingChatId.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    searchIMFTBufferUsingChatId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (searchIMFTBufferUsingChatId != null) {
            searchIMFTBufferUsingChatId.close();
        }
    }

    public void onUpdateCmsConfig() {
        this.mBufferDbQuery.onUpdateCmsConfigInitSyncDataTtl();
    }
}
