package com.sec.internal.ims.cmstore.querybuilders;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BlockedNumberContract;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImParticipant;
import com.sec.internal.constants.ims.servicemodules.im.NotificationStatus;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.adapters.CloudMessageRCSStorageAdapter;
import com.sec.internal.ims.cmstore.adapters.CloudMessageTelephonyStorageAdapter;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.params.ParamOMAObject;
import com.sec.internal.ims.cmstore.utils.CursorContentValueTranslator;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.util.PhoneUtils;
import com.sec.internal.ims.util.StringIdGenerator;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.ImdnInfo;
import com.sec.internal.omanetapi.nms.data.ImdnList;
import com.sec.internal.omanetapi.nms.data.ImdnObject;
import com.sec.internal.omanetapi.nms.data.PayloadPartInfo;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class RcsQueryBuilder extends QueryBuilderBase {
    private String TAG;
    protected String mCountryCode;
    private final CloudMessageRCSStorageAdapter mRCSStorage;
    private final CloudMessageTelephonyStorageAdapter mTelephonyStorage;

    public RcsQueryBuilder(MessageStoreClient messageStoreClient, IBufferDBEventListener iBufferDBEventListener) {
        super(messageStoreClient, iBufferDBEventListener);
        this.TAG = RcsQueryBuilder.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mRCSStorage = new CloudMessageRCSStorageAdapter(messageStoreClient.getContext());
        this.mTelephonyStorage = new CloudMessageTelephonyStorageAdapter(messageStoreClient.getContext());
        this.mCountryCode = Util.getSimCountryCode(this.mContext, messageStoreClient.getClientID());
    }

    public Cursor searchIMFTBufferUsingImdn(String str, String str2) {
        IMSLog.s(this.TAG, "searchIMFTBufferUsingImdn: " + IMSLog.checker(str) + " line:" + IMSLog.checker(str2));
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isMultiLineSupported()) {
            return this.mBufferDB.queryRCSMessages(null, "imdn_message_id=? AND linenum=?", new String[]{str, str2}, null);
        }
        return this.mBufferDB.queryRCSMessages(null, "imdn_message_id=?", new String[]{str}, null);
    }

    public Cursor searchBufferNotificationUsingImdn(String str) {
        Log.d(this.TAG, "searchBufferNotificationUsingImdn: " + IMSLog.checker(str));
        return this.mBufferDB.queryRCSImdnUseImdnId(str);
    }

    public Cursor searchBufferNotificationUsingImdnAndTelUri(String str, String str2) {
        Log.d(this.TAG, "searchBufferNotificationUsingImdnAndTelUri: " + IMSLog.checker(str) + ", telUri=" + IMSLog.checker(str2));
        return this.mBufferDB.queryRCSImdnUseImdnIdAndTelUri(str, str2);
    }

    public Cursor searchIMFTBufferUsingRowId(String str) {
        return this.mBufferDB.queryRCSMessages(null, "_id=?", new String[]{str}, null);
    }

    public Cursor searchIMFTBufferUsingChatId(String str) {
        return this.mBufferDB.queryRCSMessages(null, "chat_id=?", new String[]{str}, null);
    }

    public Cursor queryRCSMessagesToUploadByMessageType(String str) {
        Log.d(this.TAG, "queryRCSMessagesToUploadByMessageType()");
        return this.mBufferDB.queryRCSMessages(null, "syncdirection=? AND (res_url IS NULL OR res_url = '') AND inserted_timestamp > ? AND sim_imsi=?" + (" AND (message_type = " + McsConstants.RCSMessageType.MULTIMEDIA.getId() + " OR message_type = " + McsConstants.RCSMessageType.TEXT.getId() + " OR message_type = " + McsConstants.RCSMessageType.LOCATION.getId() + " OR message_type = " + McsConstants.RCSMessageType.SINGLE.getId() + " OR message_type = " + McsConstants.RCSMessageType.GROUP.getId() + ")") + " AND " + ImContract.ChatItem.IS_FILE_TRANSFER + "=? AND chat_id=?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()), String.valueOf(System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync)), this.IMSI, "0", str}, null);
    }

    public Cursor queryRCSMessagesToUpload() {
        Log.d(this.TAG, "queryRCSMessagesToUpload()");
        return this.mBufferDB.queryRCSMessages(null, "syncdirection=? AND (res_url IS NULL OR res_url = '') AND inserted_timestamp > ? AND sim_imsi=?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()), String.valueOf(System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync)), this.IMSI}, null);
    }

    public Cursor queryRCSFtMessagesToUpload(String str) {
        Log.d(this.TAG, "queryRCSFtMessagesToUpload()");
        return this.mBufferDB.queryRCSMessages(null, "syncdirection=? AND (res_url IS NULL OR res_url = '') AND inserted_timestamp > ? AND sim_imsi=? AND is_filetransfer=? AND chat_id=?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()), String.valueOf(System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync)), this.IMSI, "1", str}, null);
    }

    public Cursor queryRCSMessagesByChatId(String str, String str2) {
        return this.mBufferDB.queryRCSMessages(null, "chat_id=?", new String[]{str}, str2);
    }

    public Cursor queryImdnMessagesToUpload() {
        Log.d(this.TAG, "queryImdnMessagesToUpload()");
        return this.mBufferDB.queryRCSImdnMessages(null, "syncdirection=? AND (res_url IS NULL OR res_url = '') AND timestamp > ?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()), String.valueOf(System.currentTimeMillis() - TimeUnit.HOURS.toMillis(this.mHoursToUploadMessageInitSync))}, null);
    }

    public long insertToRCSMessagesBufferDB(Cursor cursor, String str, ContentValues contentValues) {
        IMSLog.s(this.TAG, "insertToRCSMessagesBufferDB(): " + IMSLog.checker(str) + "we do get something from RCS messages: " + cursor.getCount());
        ArrayList<ContentValues> convertRCSimfttoCV = CursorContentValueTranslator.convertRCSimfttoCV(cursor, this.mContext, this.mStoreClient.getClientID());
        Log.d(this.TAG, "insertToRCSMessagesBufferDB() size: " + convertRCSimfttoCV.size());
        long j = 0;
        for (int i = 0; i < convertRCSimfttoCV.size(); i++) {
            ContentValues contentValues2 = convertRCSimfttoCV.get(i);
            String extractNumberFromUri = PhoneUtils.extractNumberFromUri(contentValues2.getAsString("remote_uri"));
            if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isNeedCheckBlockedNumberBeforeCopyRcsDb() && !TextUtils.isEmpty(extractNumberFromUri) && BlockedNumberContract.isBlocked(this.mContext, extractNumberFromUri)) {
                Log.i(this.TAG, "The number [" + IMSLog.checker(extractNumberFromUri) + "] has been add to block list. This message should avoid to save to BuffedDB!");
            } else {
                contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, contentValues.getAsInteger(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION));
                contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, contentValues.getAsInteger(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION));
                contentValues2.put("linenum", str);
                if (contentValues2.getAsString("sim_imsi") == null) {
                    contentValues2.put("sim_imsi", this.IMSI);
                }
                String asString = contentValues2.getAsString("imdn_message_id");
                long insertDeviceMsgToBuffer = this.mBufferDB.insertDeviceMsgToBuffer(1, contentValues2);
                if (TextUtils.isEmpty(asString)) {
                    EventLogHelper.infoLogAndAdd(this.TAG, this.mStoreClient.getClientID(), "insertToRCSMessagesBufferDB correlationId Empty for bufferDbId: " + insertDeviceMsgToBuffer);
                }
                Cursor queryImdnUsingImdnId = queryImdnUsingImdnId(asString);
                if (queryImdnUsingImdnId != null) {
                    try {
                        if (queryImdnUsingImdnId.moveToFirst()) {
                            insertToImdnNotificationBufferDB(queryImdnUsingImdnId, contentValues);
                        }
                    } catch (Throwable th) {
                        try {
                            queryImdnUsingImdnId.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (queryImdnUsingImdnId != null) {
                    queryImdnUsingImdnId.close();
                }
                j = insertDeviceMsgToBuffer;
            }
        }
        convertRCSimfttoCV.size();
        return j;
    }

    public long insertToImdnNotificationBufferDB(Cursor cursor, ContentValues contentValues) {
        ArrayList<ContentValues> convertImdnNotificationtoCV = CursorContentValueTranslator.convertImdnNotificationtoCV(cursor);
        long j = 0;
        if (convertImdnNotificationtoCV == null) {
            return 0L;
        }
        Log.d(this.TAG, "insertToImdnNotificationBufferDB size: " + convertImdnNotificationtoCV.size());
        for (int i = 0; i < convertImdnNotificationtoCV.size(); i++) {
            ContentValues contentValues2 = convertImdnNotificationtoCV.get(i);
            contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, contentValues.getAsInteger(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION));
            contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, contentValues.getAsInteger(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION));
            contentValues2.put("sim_imsi", this.IMSI);
            j = this.mBufferDB.insertDeviceMsgToBuffer(13, contentValues2);
        }
        Log.d(this.TAG, "insertToImdnNotificationBufferDB row: " + j);
        convertImdnNotificationtoCV.size();
        return j;
    }

    public void insertToRCSParticipantsBufferDB(Cursor cursor) {
        ArrayList<ContentValues> convertRCSparticipantstoCV = CursorContentValueTranslator.convertRCSparticipantstoCV(cursor);
        if (convertRCSparticipantstoCV == null) {
            return;
        }
        Log.d(this.TAG, "insertToRCSParticipantsBufferDB size: " + convertRCSparticipantstoCV.size());
        for (int i = 0; i < convertRCSparticipantstoCV.size(); i++) {
            ContentValues contentValues = convertRCSparticipantstoCV.get(i);
            String asString = contentValues.getAsString("chat_id");
            String asString2 = contentValues.getAsString("uri");
            Cursor queryParticipantFromBufferDb = queryParticipantFromBufferDb(asString, asString2);
            if (queryParticipantFromBufferDb != null) {
                try {
                    if (queryParticipantFromBufferDb.moveToFirst()) {
                        Log.d(this.TAG, " participant " + IMSLog.checker(asString2) + " already exist in buffer db");
                        queryParticipantFromBufferDb.close();
                    }
                } catch (Throwable th) {
                    try {
                        queryParticipantFromBufferDb.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryParticipantFromBufferDb != null) {
                queryParticipantFromBufferDb.close();
            }
            contentValues.put("sim_imsi", this.IMSI);
            insertDeviceMsgToBuffer(2, contentValues);
        }
    }

    public Cursor querySessionByConversationId(String str) {
        return this.mBufferDB.querySessionByConversationId(str);
    }

    public Cursor queryBufferDBSessionByChatId(String str) {
        return this.mBufferDB.querySessionByChatId(str);
    }

    public Cursor queryAllSession() {
        return this.mRCSStorage.queryAllSessionWithIMSI(this.IMSI);
    }

    public int insertSessionFromBufferDbToRCSDb(ContentValues contentValues, ArrayList<ContentValues> arrayList) {
        return this.mRCSStorage.insertSessionFromBufferDbToRCSDb(contentValues, arrayList);
    }

    public Cursor queryAllSessionWithIMSI(String str) {
        Log.d(this.TAG, "queryAllSession()");
        return this.mRCSStorage.queryAllSessionWithIMSI(str);
    }

    public Cursor queryGroupSession() {
        return this.mBufferDB.queryGroupSession(this.IMSI);
    }

    public Cursor queryOneToOneSession() {
        return this.mBufferDB.queryOneToOneSession(this.IMSI);
    }

    public Cursor queryParticipantsUsingChatId(String str) {
        return this.mRCSStorage.queryParticipantsUsingChatId(str);
    }

    public Cursor queryParticipantsFromBufferDb(String str) {
        return this.mBufferDB.queryParticipant(str);
    }

    public Cursor queryParticipantFromBufferDb(String str, String str2) {
        return this.mBufferDB.queryParticipant(str, str2);
    }

    public int deleteParticipantsUsingRowId(long j) {
        return this.mRCSStorage.deleteParticipantsUsingRowId(j);
    }

    public int deleteParticipantsFromBufferDb(String str, String str2) {
        return this.mBufferDB.deleteTable(2, "uri=? AND chat_id=?", new String[]{str, str2});
    }

    public int updateRCSParticipantsDb(long j, ContentValues contentValues) {
        if (contentValues.size() > 0) {
            return this.mRCSStorage.updateParticipantsFromBufferDbToRCSDb(j, contentValues);
        }
        return 0;
    }

    public int updateParticipantsBufferDb(String str, ContentValues contentValues) {
        String[] strArr = {str};
        if (contentValues.size() > 0) {
            return this.mBufferDB.updateRCSParticipantsTable(contentValues, "uri=?", strArr);
        }
        return 0;
    }

    public Uri insertRCSParticipantsDb(ContentValues contentValues) {
        if (contentValues.size() > 0) {
            return this.mRCSStorage.insertParticipantsFromBufferDbToRCSDb(contentValues);
        }
        return null;
    }

    public void insertRCSParticipantsDb(ArrayList<ContentValues> arrayList) {
        Uri insertParticipantsFromBufferDbToRCSDb;
        Iterator<ContentValues> it = arrayList.iterator();
        while (it.hasNext()) {
            ContentValues next = it.next();
            if (next.size() > 0 && (insertParticipantsFromBufferDbToRCSDb = this.mRCSStorage.insertParticipantsFromBufferDbToRCSDb(next)) != null) {
                Log.d(this.TAG, "insert RCS participant into ImProvider result: " + IMSLog.checker(insertParticipantsFromBufferDbToRCSDb.toString()));
                int intValue = Integer.valueOf(insertParticipantsFromBufferDbToRCSDb.getLastPathSegment()).intValue();
                if (intValue > 0) {
                    String asString = next.getAsString("chat_id");
                    String asString2 = next.getAsString("uri");
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(intValue));
                    this.mBufferDB.updateRCSParticipantsTable(contentValues, "chat_id=? AND uri=?", new String[]{String.valueOf(asString), asString2});
                }
            }
        }
    }

    public void makeNewSystemUserMessageToRcsDb(ContentValues contentValues) {
        this.mRCSStorage.insertSystemUserMessage(contentValues);
    }

    public Cursor queryIMFTUsingChatId(String str) {
        return this.mRCSStorage.queryIMFTUsingChatId(str);
    }

    public Cursor queryImdnUsingImdnId(String str) {
        return this.mRCSStorage.queryNotificationUsingImdn(str);
    }

    public Cursor queryIMFTUsingRowId(long j) {
        return this.mRCSStorage.queryIMFTUsingRowId(j);
    }

    public Cursor queryRcsDBMessageUsingImdnId(String str) {
        return this.mRCSStorage.queryRcsDBMessageUsingImdnId(str);
    }

    public void insertAllToRCSSessionBufferDB(Cursor cursor) {
        ArrayList<ContentValues> convertRCSSessiontoCV = CursorContentValueTranslator.convertRCSSessiontoCV(cursor);
        Log.d(this.TAG, "insertAllToRCSSessionBufferDB size: " + convertRCSSessiontoCV.size());
        String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        for (int i = 0; i < convertRCSSessiontoCV.size(); i++) {
            ContentValues contentValues = convertRCSSessiontoCV.get(i);
            String asString = contentValues.getAsString(ImContract.ImSession.PREFERRED_URI);
            if (asString == null) {
                asString = this.mStoreClient.getPrerenceManager().getUserTelCtn();
            }
            String asString2 = contentValues.getAsString("chat_id");
            contentValues.put("linenum", asString);
            ImsUri normalizedTelUri = Util.getNormalizedTelUri(contentValues.getAsString(ImContract.ImSession.OWN_PHONE_NUMBER), this.mCountryCode);
            if (normalizedTelUri != null && !TextUtils.equals(normalizedTelUri.toString(), userTelCtn)) {
                String generateConversationId = StringIdGenerator.generateConversationId();
                contentValues.put("conversation_id", generateConversationId);
                Log.d(this.TAG, "new conv id====" + generateConversationId);
            }
            CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.Insert;
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(actionStatusFlag.getId()));
            CloudMessageBufferDBConstants.DirectionFlag directionFlag = CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud;
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(directionFlag.getId()));
            insertDeviceMsgToBuffer(10, contentValues);
            Cursor queryParticipantsUsingChatId = queryParticipantsUsingChatId(asString2);
            if (queryParticipantsUsingChatId != null) {
                try {
                    if (queryParticipantsUsingChatId.moveToFirst()) {
                        insertToRCSParticipantsBufferDB(queryParticipantsUsingChatId);
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
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(actionStatusFlag.getId()));
            contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(directionFlag.getId()));
            Cursor queryIMFTUsingChatId = queryIMFTUsingChatId(asString2);
            if (queryIMFTUsingChatId != null) {
                try {
                    if (queryIMFTUsingChatId.moveToFirst()) {
                        insertToRCSMessagesBufferDB(queryIMFTUsingChatId, asString, contentValues2);
                    }
                } catch (Throwable th3) {
                    try {
                        queryIMFTUsingChatId.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
            if (queryIMFTUsingChatId != null) {
                queryIMFTUsingChatId.close();
            }
        }
    }

    public void insertSingleSessionToRcsBuffer(Cursor cursor) {
        ArrayList<ContentValues> convertRCSSessiontoCV = CursorContentValueTranslator.convertRCSSessiontoCV(cursor);
        for (int i = 0; i < convertRCSSessiontoCV.size(); i++) {
            ContentValues contentValues = convertRCSSessiontoCV.get(i);
            String asString = contentValues.getAsString(ImContract.ImSession.PREFERRED_URI);
            if (asString == null) {
                asString = this.mStoreClient.getPrerenceManager().getUserTelCtn();
            }
            contentValues.put("linenum", asString);
            contentValues.put("sim_imsi", this.IMSI);
            insertDeviceMsgToBuffer(10, contentValues);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x021b A[Catch: all -> 0x0244, TRY_LEAVE, TryCatch #1 {all -> 0x0244, blocks: (B:101:0x01a5, B:103:0x01ab, B:106:0x01df, B:108:0x01e7, B:109:0x01fd, B:112:0x01ed, B:117:0x0215, B:119:0x021b), top: B:100:0x01a5, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0240 A[Catch: all -> 0x0257, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0257, blocks: (B:143:0x00c6, B:145:0x00cc, B:77:0x00d9, B:79:0x0134, B:81:0x013a, B:82:0x0148, B:84:0x014c, B:86:0x015c, B:88:0x0166, B:90:0x0175, B:92:0x0179, B:94:0x017f, B:95:0x018c, B:97:0x0192, B:98:0x0198, B:122:0x0240, B:125:0x024f, B:130:0x024c, B:101:0x01a5, B:103:0x01ab, B:106:0x01df, B:108:0x01e7, B:109:0x01fd, B:112:0x01ed, B:117:0x0215, B:119:0x021b, B:127:0x0247), top: B:142:0x00c6, outer: #8, inners: #1, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0252 A[Catch: all -> 0x0404, NullPointerException -> 0x0407, TRY_ENTER, TRY_LEAVE, TryCatch #8 {NullPointerException -> 0x0407, all -> 0x0404, blocks: (B:72:0x0099, B:74:0x009f, B:141:0x0252, B:133:0x0262, B:138:0x025f, B:28:0x0263, B:33:0x0292, B:34:0x02ac, B:37:0x02d4, B:39:0x02e4, B:41:0x02e8, B:42:0x02ed, B:43:0x0334, B:45:0x035d, B:46:0x036a, B:48:0x03a3, B:50:0x03b3, B:51:0x03bb, B:57:0x0364, B:58:0x02eb, B:60:0x02fb, B:61:0x0309, B:63:0x0319, B:64:0x0327, B:66:0x029a, B:69:0x02a5, B:143:0x00c6, B:145:0x00cc, B:77:0x00d9, B:79:0x0134, B:81:0x013a, B:82:0x0148, B:84:0x014c, B:86:0x015c, B:88:0x0166, B:90:0x0175, B:92:0x0179, B:94:0x017f, B:95:0x018c, B:97:0x0192, B:98:0x0198, B:122:0x0240, B:125:0x024f, B:130:0x024c, B:101:0x01a5, B:103:0x01ab, B:106:0x01df, B:108:0x01e7, B:109:0x01fd, B:112:0x01ed, B:117:0x0215, B:119:0x021b, B:127:0x0247, B:135:0x025a), top: B:71:0x0099, inners: #3, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0192 A[Catch: all -> 0x0257, TryCatch #3 {all -> 0x0257, blocks: (B:143:0x00c6, B:145:0x00cc, B:77:0x00d9, B:79:0x0134, B:81:0x013a, B:82:0x0148, B:84:0x014c, B:86:0x015c, B:88:0x0166, B:90:0x0175, B:92:0x0179, B:94:0x017f, B:95:0x018c, B:97:0x0192, B:98:0x0198, B:122:0x0240, B:125:0x024f, B:130:0x024c, B:101:0x01a5, B:103:0x01ab, B:106:0x01df, B:108:0x01e7, B:109:0x01fd, B:112:0x01ed, B:117:0x0215, B:119:0x021b, B:127:0x0247), top: B:142:0x00c6, outer: #8, inners: #1, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String searchOrCreateSession(com.sec.internal.ims.cmstore.params.ParamOMAObject r14) {
        /*
            Method dump skipped, instructions count: 1087
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder.searchOrCreateSession(com.sec.internal.ims.cmstore.params.ParamOMAObject):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String updateBufferDbChatIdFromRcsDb(java.lang.String r3, int r4) {
        /*
            r2 = this;
            r0 = 1
            if (r4 >= r0) goto L4
            return r3
        L4:
            com.sec.internal.ims.cmstore.adapters.CloudMessageRCSStorageAdapter r0 = r2.mRCSStorage
            android.database.Cursor r0 = r0.querySessionUsingId(r4)
            if (r0 == 0) goto L27
            boolean r1 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L1d
            if (r1 == 0) goto L27
            java.lang.String r1 = "chat_id"
            int r1 = r0.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L1d
            java.lang.String r1 = r0.getString(r1)     // Catch: java.lang.Throwable -> L1d
            goto L28
        L1d:
            r2 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L22
            goto L26
        L22:
            r3 = move-exception
            r2.addSuppressed(r3)
        L26:
            throw r2
        L27:
            r1 = 0
        L28:
            if (r0 == 0) goto L2d
            r0.close()
        L2d:
            if (r1 == 0) goto L3c
            r2.updateIdFromRcsDb(r4, r1)
            boolean r4 = r3.equalsIgnoreCase(r1)
            if (r4 != 0) goto L3c
            r2.updateChatId(r3, r1)
            return r1
        L3c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder.updateBufferDbChatIdFromRcsDb(java.lang.String, int):java.lang.String");
    }

    private void updateIdFromRcsDb(int i, String str) {
        Log.d(this.TAG, " updateIdFromRcsDb id: " + i);
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(i));
        this.mBufferDB.updateRCSSessionTable(contentValues, "chat_id=?", new String[]{str});
    }

    private void updateChatId(String str, String str2) {
        Log.d(this.TAG, "updateChatId: " + str + " chatid: " + str2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("chat_id", str2);
        this.mBufferDB.updateRCSSessionTable(contentValues, "chat_id=?", new String[]{str});
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("chat_id", str2);
        this.mBufferDB.updateRCSParticipantsTable(contentValues2, "chat_id=?", new String[]{str});
    }

    public ArrayList<ContentValues> insertRCSParticipantToBufferDBUsingObject(ParamOMAObject paramOMAObject, String str) {
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        for (ImsUri imsUri : paramOMAObject.mNomalizedOtherParticipants) {
            Log.i(this.TAG, "insertParticipant " + IMSLog.numberChecker(imsUri.toString()));
            if (!imsUri.toString().contains("groupchat")) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("chat_id", str);
                contentValues.put("type", Integer.valueOf(ImParticipant.Type.REGULAR.getId()));
                contentValues.put("status", Integer.valueOf(ImParticipant.Status.ACCEPTED.getId()));
                contentValues.put("uri", imsUri.toString());
                contentValues.put("sim_imsi", this.IMSI);
                insertTable(2, contentValues);
                arrayList.add(contentValues);
            }
        }
        return arrayList;
    }

    public ArrayList<ContentValues> insertRCSParticipantToBufferDBUsingObject(Set<ImsUri> set, String str) {
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        for (ImsUri imsUri : set) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("chat_id", str);
            contentValues.put("type", Integer.valueOf(ImParticipant.Type.REGULAR.getId()));
            contentValues.put("status", Integer.valueOf(ImParticipant.Status.ACCEPTED.getId()));
            contentValues.put("uri", imsUri.toString());
            contentValues.put("sim_imsi", this.IMSI);
            insertTable(2, contentValues);
            arrayList.add(contentValues);
        }
        return arrayList;
    }

    public ArrayList<ContentValues> insertNewParticipantToBufferDB(Set<ImsUri> set, String str) {
        ArrayList<ContentValues> arrayList = new ArrayList<>();
        for (ImsUri imsUri : set) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("chat_id", str);
            contentValues.put("type", Integer.valueOf(ImParticipant.Type.REGULAR.getId()));
            contentValues.put("status", Integer.valueOf(ImParticipant.Status.ACCEPTED.getId()));
            contentValues.put("uri", imsUri.toString());
            contentValues.put("sim_imsi", this.IMSI);
            insertTable(2, contentValues);
            arrayList.add(contentValues);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int queryParticipantCount(java.lang.String r4) {
        /*
            r3 = this;
            android.database.Cursor r4 = r3.queryParticipantsUsingChatId(r4)
            if (r4 == 0) goto L32
            boolean r0 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L28
            if (r0 == 0) goto L32
            int r0 = r4.getCount()     // Catch: java.lang.Throwable -> L28
            java.lang.String r3 = r3.TAG     // Catch: java.lang.Throwable -> L28
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L28
            r1.<init>()     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = "queryParticipantCount participantCount = "
            r1.append(r2)     // Catch: java.lang.Throwable -> L28
            r1.append(r0)     // Catch: java.lang.Throwable -> L28
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L28
            com.sec.internal.log.IMSLog.i(r3, r1)     // Catch: java.lang.Throwable -> L28
            goto L33
        L28:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L2d
            goto L31
        L2d:
            r4 = move-exception
            r3.addSuppressed(r4)
        L31:
            throw r3
        L32:
            r0 = 0
        L33:
            if (r4 == 0) goto L38
            r4.close()
        L38:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder.queryParticipantCount(java.lang.String):int");
    }

    public int queryImdnBufferDBandUpdateRcsMessageBufferDb(String str, String str2) {
        NotificationStatus notificationStatus;
        int queryParticipantCount = queryParticipantCount(str2);
        Log.i(this.TAG, "queryImdnBufferDBandUpdateRcsMessageBufferDb: " + IMSLog.checker(str) + ", notDisplayedCnt: " + queryParticipantCount);
        Cursor queryRCSImdnUseImdnId = this.mBufferDB.queryRCSImdnUseImdnId(str);
        int i = 0;
        if (queryRCSImdnUseImdnId != null) {
            try {
                if (queryRCSImdnUseImdnId.moveToFirst()) {
                    if (this.isCmsEnabled) {
                        queryParticipantCount = queryRCSImdnUseImdnId.getCount();
                        Log.i(this.TAG, "updated notDisplayedCnt: " + queryParticipantCount);
                    }
                    ContentValues contentValues = new ContentValues();
                    int i2 = 0;
                    int i3 = 0;
                    do {
                        int i4 = queryRCSImdnUseImdnId.getInt(queryRCSImdnUseImdnId.getColumnIndexOrThrow("status"));
                        notificationStatus = NotificationStatus.DISPLAYED;
                        if (i4 == notificationStatus.getId()) {
                            i2++;
                            contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(notificationStatus.getId()));
                            contentValues.put(ImContract.Message.DISPLAYED_TIMESTAMP, Long.valueOf(queryRCSImdnUseImdnId.getLong(queryRCSImdnUseImdnId.getColumnIndexOrThrow("timestamp"))));
                        } else {
                            NotificationStatus notificationStatus2 = NotificationStatus.DELIVERED;
                            if (i4 == notificationStatus2.getId()) {
                                contentValues.put("notification_status", Integer.valueOf(notificationStatus2.getId()));
                                i3++;
                            }
                        }
                    } while (queryRCSImdnUseImdnId.moveToNext());
                    Log.d(this.TAG, "queryImdnBufferDBandUpdateRcsMessageBufferDb: displayedCnt=" + i2 + ", deliveredCnt=" + i3);
                    if (i2 == 0 && i3 > 0) {
                        queryRCSImdnUseImdnId.moveToFirst();
                        contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(NotificationStatus.DELIVERED.getId()));
                        contentValues.put(ImContract.ChatItem.DELIVERED_TIMESTAMP, Long.valueOf(queryRCSImdnUseImdnId.getLong(queryRCSImdnUseImdnId.getColumnIndexOrThrow("timestamp"))));
                    }
                    if (i2 > 0) {
                        int i5 = queryParticipantCount - i2;
                        if (i5 < 0) {
                            i5 = 0;
                        }
                        contentValues.put(ImContract.Message.NOT_DISPLAYED_COUNTER, Integer.valueOf(i5));
                    }
                    if (i2 == queryParticipantCount) {
                        contentValues.put("notification_status", Integer.valueOf(notificationStatus.getId()));
                    }
                    if (contentValues.size() > 0) {
                        i = this.mBufferDB.updateRCSTable(contentValues, "imdn_message_id=?", new String[]{str});
                    }
                }
            } catch (Throwable th) {
                try {
                    queryRCSImdnUseImdnId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryRCSImdnUseImdnId != null) {
            queryRCSImdnUseImdnId.close();
        }
        return i;
    }

    public int updateRcsMessageBufferDbIfNewIMDNReceived(String str, int i, int i2, String str2) {
        int id;
        Log.d(this.TAG, "updateRcsMessageBufferDbIfNewIMDNReceived: " + IMSLog.checker(str) + ", notDisplayedCnt = " + i + ", rcsMsgDisplayStatus = " + i2 + ", status = " + str2);
        if ("displayed".equalsIgnoreCase(str2)) {
            id = NotificationStatus.DISPLAYED.getId();
        } else {
            id = NotificationStatus.DELIVERED.getId();
        }
        ContentValues contentValues = new ContentValues();
        NotificationStatus notificationStatus = NotificationStatus.DISPLAYED;
        if (id == notificationStatus.getId()) {
            if (i2 == NotificationStatus.NONE.getId() || i2 == NotificationStatus.DELIVERED.getId()) {
                contentValues.put("notification_status", Integer.valueOf(notificationStatus.getId()));
                contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(notificationStatus.getId()));
            }
            i--;
            contentValues.put(ImContract.Message.NOT_DISPLAYED_COUNTER, Integer.valueOf(i >= 0 ? i : 0));
        } else {
            NotificationStatus notificationStatus2 = NotificationStatus.DELIVERED;
            if (id == notificationStatus2.getId() && i2 == NotificationStatus.NONE.getId()) {
                contentValues.put("notification_status", Integer.valueOf(notificationStatus2.getId()));
                contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(notificationStatus2.getId()));
            }
        }
        Log.i(this.TAG, "updateRcsMessageBufferDbIfNewIMDNReceived: newNotDisplayedCnt = " + i);
        if (contentValues.size() > 0) {
            return this.mBufferDB.updateRCSTable(contentValues, "imdn_message_id=?", new String[]{str});
        }
        return 0;
    }

    public void setNotificationStatusAndTimestamp(ImdnObject imdnObject, ContentValues contentValues) {
        Log.i(this.TAG, "setNotificationStatusAndTimestamp");
        contentValues.put(ImContract.MessageNotification.SENDER_URI, imdnObject.originalTo);
        ImdnInfo[] imdnInfoArr = imdnObject.imdnInfo;
        int length = imdnInfoArr.length;
        String str = "";
        int i = 0;
        String str2 = "";
        String str3 = str2;
        while (true) {
            if (i >= length) {
                break;
            }
            ImdnInfo imdnInfo = imdnInfoArr[i];
            if ("displayed".equalsIgnoreCase(imdnInfo.type)) {
                str = imdnInfo.date;
                break;
            }
            if ("delivered".equalsIgnoreCase(imdnInfo.type)) {
                str2 = imdnInfo.date;
            } else {
                str3 = imdnInfo.date;
            }
            i++;
        }
        if (!TextUtils.isEmpty(str)) {
            contentValues.put("timestamp", Long.valueOf(getDateFromDateString(str)));
            contentValues.put("status", Integer.valueOf(NotificationStatus.DISPLAYED.getId()));
        } else if (!TextUtils.isEmpty(str2)) {
            contentValues.put("timestamp", Long.valueOf(getDateFromDateString(str2)));
            contentValues.put("status", Integer.valueOf(NotificationStatus.DELIVERED.getId()));
        } else {
            contentValues.put("timestamp", Long.valueOf(getDateFromDateString(str3)));
            contentValues.put("status", Integer.valueOf(NotificationStatus.NONE.getId()));
        }
    }

    public HashMap<String, Integer> queryRCSNotificationStatus(String str) {
        HashMap<String, Integer> hashMap = new HashMap<>();
        Cursor queryImdnUsingImdnId = queryImdnUsingImdnId(str);
        if (queryImdnUsingImdnId != null) {
            try {
                if (queryImdnUsingImdnId.moveToFirst()) {
                    Log.i(this.TAG, "queryRCSNotificationStatus notificationCursor:" + queryImdnUsingImdnId.getCount());
                    do {
                        hashMap.put(queryImdnUsingImdnId.getString(queryImdnUsingImdnId.getColumnIndexOrThrow(ImContract.MessageNotification.SENDER_URI)), Integer.valueOf(queryImdnUsingImdnId.getInt(queryImdnUsingImdnId.getColumnIndexOrThrow("status"))));
                    } while (queryImdnUsingImdnId.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    queryImdnUsingImdnId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryImdnUsingImdnId != null) {
            queryImdnUsingImdnId.close();
        }
        return hashMap;
    }

    public boolean insertOrUpdateToNotificationDB(ImdnList imdnList, ContentValues contentValues, String str, String str2, int i) {
        Cursor searchBufferNotificationUsingImdnAndTelUri = searchBufferNotificationUsingImdnAndTelUri(str, str2);
        if (searchBufferNotificationUsingImdnAndTelUri != null) {
            try {
                if (searchBufferNotificationUsingImdnAndTelUri.moveToFirst() && imdnList != null && imdnList.imdn != null) {
                    int i2 = searchBufferNotificationUsingImdnAndTelUri.getInt(searchBufferNotificationUsingImdnAndTelUri.getColumnIndexOrThrow("status"));
                    if ((i == NotificationStatus.DELIVERED.getId() && i2 == NotificationStatus.DISPLAYED.getId()) || i == i2) {
                        Log.d(this.TAG, "insertOrUpdateToNotificationDB delivered comes after displayed or same update, shouldn't update. cloudNotificationStatus: " + i + ", bufferDBNotificationStatus: " + i2);
                        searchBufferNotificationUsingImdnAndTelUri.close();
                        return false;
                    }
                    updateTable(13, contentValues, "_bufferdbid=?", new String[]{String.valueOf(searchBufferNotificationUsingImdnAndTelUri.getLong(searchBufferNotificationUsingImdnAndTelUri.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID)))});
                    searchBufferNotificationUsingImdnAndTelUri.close();
                    return true;
                }
            } catch (Throwable th) {
                if (searchBufferNotificationUsingImdnAndTelUri != null) {
                    try {
                        searchBufferNotificationUsingImdnAndTelUri.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        int insertRCSNotificationDbfromBufferDB = insertRCSNotificationDbfromBufferDB(new ContentValues(contentValues));
        if (insertRCSNotificationDbfromBufferDB > 0) {
            contentValues.put("id", Integer.valueOf(insertRCSNotificationDbfromBufferDB));
        }
        contentValues.put("sim_imsi", this.IMSI);
        insertTable(13, contentValues);
        if (searchBufferNotificationUsingImdnAndTelUri != null) {
            searchBufferNotificationUsingImdnAndTelUri.close();
        }
        return false;
    }

    public void insertRCSImdnToBufferDBUsingObject(ParamOMAObject paramOMAObject, String str, ContentValues contentValues) {
        ImdnObject[] imdnObjectArr;
        Log.i(this.TAG, "insertRCSImdnToBufferDBUsingObject: " + paramOMAObject);
        if ("IN".equalsIgnoreCase(paramOMAObject.DIRECTION)) {
            Log.i(this.TAG, "insertRCSImdnToBufferDBUsingObject skip for incoming");
            return;
        }
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAObject.resourceURL.toString()));
        contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(paramOMAObject.parentFolder.toString()));
        if (!TextUtils.isEmpty(paramOMAObject.path)) {
            contentValues2.put("path", Util.decodeUrlFromServer(paramOMAObject.path));
        }
        contentValues2.put("imdn_id", paramOMAObject.correlationId);
        contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
        contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
        ImdnList imdnList = paramOMAObject.mImdns;
        if (imdnList != null) {
            contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, Long.valueOf(imdnList.lastModSeq));
        }
        ArrayList arrayList = new ArrayList();
        Cursor queryParticipantsUsingChatId = queryParticipantsUsingChatId(str);
        while (queryParticipantsUsingChatId != null) {
            try {
                if (!queryParticipantsUsingChatId.moveToNext()) {
                    break;
                } else {
                    arrayList.add(queryParticipantsUsingChatId.getString(queryParticipantsUsingChatId.getColumnIndexOrThrow("uri")));
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
        ArrayList arrayList2 = new ArrayList();
        ImdnList imdnList2 = paramOMAObject.mImdns;
        boolean z = false;
        if (imdnList2 != null && (imdnObjectArr = imdnList2.imdn) != null) {
            for (ImdnObject imdnObject : imdnObjectArr) {
                if (imdnObject.imdnInfo != null) {
                    arrayList.remove(imdnObject.originalTo);
                    arrayList2.add(imdnObject);
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            ImdnObject imdnObject2 = new ImdnObject();
            imdnObject2.originalTo = str2;
            imdnObject2.imdnInfo = new ImdnInfo[]{new ImdnInfo()};
            imdnObject2.imdnInfo[0].date = paramOMAObject.DATE;
            arrayList2.add(imdnObject2);
        }
        int size = arrayList2.size();
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ImdnObject imdnObject3 = (ImdnObject) it2.next();
            ContentValues contentValues3 = new ContentValues(contentValues2);
            setNotificationStatusAndTimestamp(imdnObject3, contentValues3);
            Integer asInteger = contentValues3.getAsInteger("status");
            if (asInteger != null) {
                if (asInteger.intValue() != NotificationStatus.DELIVERED.getId()) {
                    if (asInteger.intValue() == NotificationStatus.DISPLAYED.getId()) {
                        if (size > 0) {
                            size--;
                        }
                    }
                    insertOrUpdateToNotificationDB(paramOMAObject.mImdns, contentValues3, paramOMAObject.correlationId, imdnObject3.originalTo, asInteger.intValue());
                }
                z = true;
                insertOrUpdateToNotificationDB(paramOMAObject.mImdns, contentValues3, paramOMAObject.correlationId, imdnObject3.originalTo, asInteger.intValue());
            }
        }
        if (size == 0) {
            NotificationStatus notificationStatus = NotificationStatus.DISPLAYED;
            contentValues.put("notification_status", Integer.valueOf(notificationStatus.getId()));
            contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(notificationStatus.getId()));
        } else if (z) {
            NotificationStatus notificationStatus2 = NotificationStatus.DELIVERED;
            contentValues.put("notification_status", Integer.valueOf(notificationStatus2.getId()));
            contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(notificationStatus2.getId()));
        }
        if (size != arrayList2.size()) {
            contentValues.put(ImContract.Message.DISPOSITION_NOTIFICATION_STATUS, Integer.valueOf(NotificationStatus.DISPLAYED.getId()));
        }
        Log.i(this.TAG, "insertRCSImdnToBufferDBUsingObject notDisplayedCount: " + size + " isDelivered: " + z + " participants count: " + arrayList2.size());
        contentValues.put(ImContract.Message.NOT_DISPLAYED_COUNTER, Integer.valueOf(size));
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int queryBufferDbandUpdateRcsMessageDb(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.String r0 = "not_displayed_counter"
            java.lang.String r1 = "displayed_timestamp"
            java.lang.String r2 = "delivered_timestamp"
            java.lang.String r3 = "disposition_notification_status"
            java.lang.String r4 = "notification_status"
            java.lang.String r5 = r8.TAG
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "queryBufferDbandUpdateRcsMessageDb: "
            r6.append(r7)
            java.lang.String r7 = com.sec.internal.log.IMSLog.checker(r9)
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            android.util.Log.d(r5, r6)
            java.lang.String[] r9 = new java.lang.String[]{r9}
            com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister r5 = r8.mBufferDB
            r6 = 0
            java.lang.String r7 = "imdn_message_id=?"
            android.database.Cursor r9 = r5.queryRCSMessages(r6, r7, r9, r6)
            if (r9 == 0) goto L9d
            boolean r5 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L93
            if (r5 == 0) goto L9d
            android.content.ContentValues r5 = new android.content.ContentValues     // Catch: java.lang.Throwable -> L93
            r5.<init>()     // Catch: java.lang.Throwable -> L93
            int r6 = r9.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L93
            java.lang.String r6 = r9.getString(r6)     // Catch: java.lang.Throwable -> L93
            r5.put(r4, r6)     // Catch: java.lang.Throwable -> L93
            int r4 = r9.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L93
            java.lang.String r4 = r9.getString(r4)     // Catch: java.lang.Throwable -> L93
            r5.put(r3, r4)     // Catch: java.lang.Throwable -> L93
            int r3 = r9.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L93
            long r3 = r9.getLong(r3)     // Catch: java.lang.Throwable -> L93
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: java.lang.Throwable -> L93
            r5.put(r2, r3)     // Catch: java.lang.Throwable -> L93
            int r2 = r9.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L93
            long r2 = r9.getLong(r2)     // Catch: java.lang.Throwable -> L93
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L93
            r5.put(r1, r2)     // Catch: java.lang.Throwable -> L93
            int r1 = r9.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L93
            int r1 = r9.getInt(r1)     // Catch: java.lang.Throwable -> L93
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L93
            r5.put(r0, r1)     // Catch: java.lang.Throwable -> L93
            java.lang.String r0 = "_id"
            int r0 = r9.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L93
            int r0 = r9.getInt(r0)     // Catch: java.lang.Throwable -> L93
            com.sec.internal.ims.cmstore.adapters.CloudMessageRCSStorageAdapter r8 = r8.mRCSStorage     // Catch: java.lang.Throwable -> L93
            int r8 = r8.updateMessageFromBufferDb(r0, r5)     // Catch: java.lang.Throwable -> L93
            goto L9e
        L93:
            r8 = move-exception
            r9.close()     // Catch: java.lang.Throwable -> L98
            goto L9c
        L98:
            r9 = move-exception
            r8.addSuppressed(r9)
        L9c:
            throw r8
        L9d:
            r8 = 0
        L9e:
            if (r9 == 0) goto La3
            r9.close()
        La3:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder.queryBufferDbandUpdateRcsMessageDb(java.lang.String):int");
    }

    public long insertRCSimdnToBufferDBUsingObject(ParamOMAObject paramOMAObject) {
        int insertRCSNotificationDbfromBufferDB;
        Log.i(this.TAG, "insertRCSimdnToBufferDBUsingObject: " + paramOMAObject);
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, paramOMAObject.lastModSeq);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAObject.resourceURL.toString()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(paramOMAObject.parentFolder.toString()));
        if (!TextUtils.isEmpty(paramOMAObject.path)) {
            contentValues.put("path", Util.decodeUrlFromServer(paramOMAObject.path));
        }
        contentValues.put("imdn_id", paramOMAObject.DISPOSITION_ORIGINAL_MESSAGEID);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
        if ("IN".equalsIgnoreCase(paramOMAObject.DIRECTION)) {
            contentValues.put(ImContract.MessageNotification.SENDER_URI, Util.getTelUri(Util.getPhoneNum(paramOMAObject.DISPOSITION_ORIGINAL_TO), this.mCountryCode));
        }
        if ("displayed".equalsIgnoreCase(paramOMAObject.DISPOSITION_STATUS)) {
            contentValues.put("status", Integer.valueOf(NotificationStatus.DISPLAYED.getId()));
        } else {
            contentValues.put("status", Integer.valueOf(NotificationStatus.DELIVERED.getId()));
        }
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isStoreImdnEnabled() && (insertRCSNotificationDbfromBufferDB = insertRCSNotificationDbfromBufferDB(new ContentValues(contentValues))) > 0) {
            contentValues.put("id", Integer.valueOf(insertRCSNotificationDbfromBufferDB));
        }
        contentValues.put("sim_imsi", this.IMSI);
        return insertTable(13, contentValues);
    }

    public int updateRCSNotificationUsingImdnId(String str, ContentValues contentValues, String str2) {
        ContentValues removeExtensionColumns = removeExtensionColumns(contentValues, false);
        if (removeExtensionColumns.size() > 0) {
            return this.mRCSStorage.updateRCSNotificationUsingImdnId(str, removeExtensionColumns, str2);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x057c  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02ca  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0329  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0360  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03a7  */
    /* JADX WARN: Type inference failed for: r13v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet insertRCSMessageToBufferDBUsingObject(com.sec.internal.ims.cmstore.params.ParamOMAObject r22, java.lang.String r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 1443
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder.insertRCSMessageToBufferDBUsingObject(com.sec.internal.ims.cmstore.params.ParamOMAObject, java.lang.String, boolean):com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet");
    }

    public int updateRCSMessageInBufferDBUsingObject(ParamOMAObject paramOMAObject, ContentValues contentValues, String str, String[] strArr) {
        ContentValues contentValues2 = new ContentValues();
        PayloadPartInfo[] payloadPartInfoArr = paramOMAObject.payloadPart;
        if (payloadPartInfoArr != null && payloadPartInfoArr.length > 0) {
            ArrayList<PayloadPartInfo> arrayList = new ArrayList<>();
            PayloadPartInfo[] payloadPartInfoArr2 = paramOMAObject.payloadPart;
            if (payloadPartInfoArr2.length > 1) {
                arrayList = getValidPayload(payloadPartInfoArr2, MIMEContentType.BOT_SUGGESTION);
            }
            if (arrayList != null && arrayList.size() == 0) {
                Log.d(this.TAG, "no visible payload!");
                arrayList.add(paramOMAObject.payloadPart[0]);
            }
            contentValues2 = handlePayloadWithThumbnail(arrayList, paramOMAObject);
        }
        contentValues.putAll(contentValues2);
        return updateTable(1, contentValues, str, strArr);
    }

    protected ArrayList<PayloadPartInfo> getValidPayload(PayloadPartInfo[] payloadPartInfoArr, String str) {
        if (payloadPartInfoArr == null) {
            return null;
        }
        ArrayList<PayloadPartInfo> arrayList = new ArrayList<>();
        for (PayloadPartInfo payloadPartInfo : payloadPartInfoArr) {
            if (payloadPartInfo != null && !payloadPartInfo.contentType.toUpperCase().contains(str.toUpperCase())) {
                arrayList.add(payloadPartInfo);
            }
        }
        return arrayList;
    }

    public ContentValues handlePayloadParts(PayloadPartInfo[] payloadPartInfoArr, String str) {
        ContentValues contentValues = new ContentValues();
        if (payloadPartInfoArr == null) {
            return contentValues;
        }
        if (str.contains("start")) {
            for (PayloadPartInfo payloadPartInfo : payloadPartInfoArr) {
                String str2 = payloadPartInfo.contentId;
                if (str2 != null && payloadPartInfo.contentEncoding != null && str.contains(str2) && HttpPostBody.CONTENT_TRANSFER_ENCODING_BASE64.equalsIgnoreCase(payloadPartInfo.contentEncoding)) {
                    try {
                        URL url = payloadPartInfo.href;
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTTHUMB, url != null ? url.toString() : null);
                        byte[] decode = Base64.decode(payloadPartInfo.content, 0);
                        String randomFileName = Util.getRandomFileName(getFileExtension(payloadPartInfo.contentType));
                        String generateUniqueFilePath = Util.generateUniqueFilePath(this.mContext, randomFileName, false, this.mStoreClient.getClientID());
                        Util.saveFiletoPath(decode, generateUniqueFilePath);
                        contentValues.put("content_type", payloadPartInfo.contentType);
                        contentValues.put(ImContract.CsSession.THUMBNAIL_PATH, generateUniqueFilePath);
                        contentValues.put(ImContract.CsSession.FILE_NAME, randomFileName);
                    } catch (IOException e) {
                        Log.e(this.TAG, "IOException: " + e.getMessage());
                        e.printStackTrace();
                        return contentValues;
                    } catch (NullPointerException e2) {
                        Log.e(this.TAG, "nullpointer: " + e2.getMessage());
                        e2.printStackTrace();
                        return contentValues;
                    }
                } else {
                    String str3 = payloadPartInfo.contentType;
                    if (str3 != null && isContentTypeDefined(str3)) {
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADENCODING, Integer.valueOf(translatePayloadEncoding(payloadPartInfo.contentEncoding).getId()));
                        URL url2 = payloadPartInfo.href;
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTFULL, url2 != null ? url2.toString() : null);
                        String randomFileName2 = Util.getRandomFileName(getFileExtension(payloadPartInfo.contentType));
                        contentValues.put("content_type", payloadPartInfo.contentType);
                        contentValues.put(ImContract.CsSession.FILE_NAME, randomFileName2);
                    }
                }
            }
        } else {
            for (PayloadPartInfo payloadPartInfo2 : payloadPartInfoArr) {
                if (isContentTypeDefined(payloadPartInfo2.contentType)) {
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADENCODING, Integer.valueOf(translatePayloadEncoding(payloadPartInfo2.contentEncoding).getId()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTFULL, payloadPartInfo2.href.toString());
                    String randomFileName3 = Util.getRandomFileName(getFileExtension(payloadPartInfo2.contentType));
                    contentValues.put("content_type", payloadPartInfo2.contentType);
                    contentValues.put(ImContract.CsSession.FILE_NAME, randomFileName3);
                }
            }
        }
        return contentValues;
    }

    public ContentValues handlePayloadWithThumbnail(ArrayList<PayloadPartInfo> arrayList, ParamOMAObject paramOMAObject) {
        ContentValues contentValues = new ContentValues();
        if (arrayList == null) {
            return contentValues;
        }
        if (arrayList.size() > 1) {
            Iterator<PayloadPartInfo> it = arrayList.iterator();
            String str = null;
            while (it.hasNext()) {
                PayloadPartInfo next = it.next();
                URI uri = next.fileIcon;
                if (uri != null) {
                    str = uri.toString();
                    String[] split = str.split(":");
                    if (split != null && split.length > 1) {
                        str = split[1];
                    }
                    Log.d(this.TAG, "fileIconCId : " + str);
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTFULL, next.href.toString());
                    if (ATTGlobalVariables.isAmbsPhaseIV()) {
                        contentValues.put(ImContract.CsSession.FILE_NAME, Util.generateUniqueFileName(next));
                    } else {
                        contentValues.put(ImContract.CsSession.FILE_NAME, Util.generateLocation(next));
                    }
                    contentValues.put(ImContract.CsSession.FILE_SIZE, Long.valueOf(next.size));
                    contentValues.put("content_type", next.contentType.split(";")[0]);
                } else {
                    String str2 = next.contentId;
                    if (str2 != null && str != null && str.equals(str2)) {
                        URL url = next.href;
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTTHUMB, url != null ? url.toString() : null);
                        if (ATTGlobalVariables.isAmbsPhaseIV()) {
                            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTTHUMB_FILENAME, Util.generateUniqueFileName(next));
                        } else {
                            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTTHUMB_FILENAME, Util.generateLocation(next));
                        }
                    }
                }
            }
        } else {
            Iterator<PayloadPartInfo> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                PayloadPartInfo next2 = it2.next();
                contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTFULL, next2.href.toString());
                contentValues.put(ImContract.CsSession.FILE_NAME, Util.generateLocation(next2));
                contentValues.put(ImContract.CsSession.FILE_SIZE, Long.valueOf(next2.size));
                String[] split2 = next2.contentType.split(";");
                contentValues.put("content_type", split2[0]);
                contentValues.put("file_disposition", Integer.valueOf("render".equalsIgnoreCase(next2.disposition) ? 1 : 0));
                contentValues.put("playing_length", Integer.valueOf(next2.playingLength));
                if (paramOMAObject.mObjectType == 14 && split2[0].trim().equalsIgnoreCase(MIMEContentType.PLAIN_TEXT)) {
                    Log.d(this.TAG, "this message should be large message, not fileTransfer");
                    contentValues.put(ImContract.ChatItem.IS_FILE_TRANSFER, (Integer) 0);
                }
            }
        }
        return contentValues;
    }

    private ContentValues removeExtensionColumns(ContentValues contentValues, boolean z) {
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.CORRELATION_ID);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.CORRELATION_TAG);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADURL);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTTHUMB);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTTHUMB_FILENAME);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTFULL);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADENCODING);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.FLAGRESOURCEURL);
        contentValues.remove("path");
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDERPATH);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION);
        contentValues.remove(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION);
        contentValues.remove("linenum");
        contentValues.remove("locked");
        contentValues.remove("spam_type");
        if (!z) {
            contentValues.remove("sim_imsi");
        }
        return contentValues;
    }

    public void insertRCSMessageDbfromBufferDB(long j, ContentValues contentValues) {
        Uri insertMessageFromBufferDb = this.mRCSStorage.insertMessageFromBufferDb(removeExtensionColumns(contentValues, true));
        if (insertMessageFromBufferDb != null) {
            Log.d(this.TAG, "insert RCS message into ImProvider result: " + IMSLog.checker(insertMessageFromBufferDb.toString()));
            String lastPathSegment = insertMessageFromBufferDb.getLastPathSegment();
            ContentValues contentValues2 = new ContentValues();
            int intValue = Integer.valueOf(lastPathSegment).intValue();
            if (intValue > 0) {
                contentValues2.put("_id", Integer.valueOf(intValue));
                this.mBufferDB.updateRCSTable(contentValues2, "_bufferdbid=?", new String[]{String.valueOf(j)});
            }
        }
    }

    public int deleteRCSMessageDb(int i) {
        return this.mRCSStorage.deleteRCSDBmessageUsingId(i);
    }

    public int updateRCSMessageDb(int i, ContentValues contentValues) {
        Log.d(this.TAG, "updateRCSMessageDb: " + i);
        ContentValues removeExtensionColumns = removeExtensionColumns(contentValues, false);
        if (removeExtensionColumns.size() > 0) {
            return this.mRCSStorage.updateMessageFromBufferDb(i, removeExtensionColumns);
        }
        return 0;
    }

    public int insertRCSNotificationDbfromBufferDB(ContentValues contentValues) {
        if (contentValues == null) {
            Log.d(this.TAG, "insertRCSNotificationDbfromBufferDB null input");
            return 0;
        }
        Uri insertNotificationFromBufferDb = this.mRCSStorage.insertNotificationFromBufferDb(removeExtensionColumns(contentValues, false));
        if (insertNotificationFromBufferDb == null) {
            return 0;
        }
        Log.d(this.TAG, "insert RCS notification into ImProvider result: " + IMSLog.checker(insertNotificationFromBufferDb.toString()));
        return Integer.valueOf(insertNotificationFromBufferDb.getLastPathSegment()).intValue();
    }

    public int updateRCSSessionDb(String str, ContentValues contentValues) {
        ContentValues removeExtensionColumns = removeExtensionColumns(contentValues, false);
        if (removeExtensionColumns.size() > 0) {
            return this.mRCSStorage.updateSessionFromBufferDbToRCSDb(str, removeExtensionColumns);
        }
        return 0;
    }

    public int updateSessionBufferDb(String str, ContentValues contentValues) {
        Log.i(this.TAG, "updateSessionBufferDb: " + str);
        String[] strArr = {str};
        if (contentValues.size() > 0) {
            return this.mBufferDB.updateRCSSessionTable(contentValues, "chat_id=?", strArr);
        }
        return 0;
    }

    public Cursor queryRCSBufferDBwithResUrl(String str) {
        Log.d(this.TAG, "queryRCSBufferDBwithResUrl: " + IMSLog.checker(str));
        return this.mBufferDB.queryTablewithResUrl(1, str);
    }

    public int deleteRCSBufferDBwithResUrl(String str) {
        Log.d(this.TAG, "deleteRCSBufferDBwithResUrl: " + IMSLog.checker(str));
        return this.mBufferDB.deleteTablewithResUrl(1, str);
    }

    public Cursor queryToDeviceUnDownloadedRcs(String str, int i) {
        return this.mBufferDB.queryRCSMessages(null, "syncaction=? AND linenum=? AND sim_imsi=?", new String[]{String.valueOf(i), str, this.IMSI}, null);
    }

    public Cursor queryToCloudUnsyncedRcs() {
        return this.mBufferDB.queryRCSMessages(null, "syncdirection=? AND res_url IS NOT NULL AND inserted_timestamp > ? AND sim_imsi=?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud.getId()), String.valueOf(System.currentTimeMillis() - TimeUnit.HOURS.toMillis(10L)), this.IMSI}, null);
    }

    public Cursor queryToDeviceUnsyncedRcs() {
        return this.mBufferDB.queryRCSMessages(null, "syncdirection=? AND sim_imsi=?", new String[]{String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice.getId()), this.IMSI}, null);
    }

    public Cursor querySessionUsingChatId(String str) {
        return this.mRCSStorage.querySessionUsingChatId(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void insertToRCSMessagesBufferDBFromTP(android.database.Cursor r11, java.lang.String r12, android.content.ContentValues r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder.insertToRCSMessagesBufferDBFromTP(android.database.Cursor, java.lang.String, android.content.ContentValues, boolean):void");
    }

    private boolean isUpdateRequired(int i) {
        return i == McsConstants.RCSMessageType.MULTIMEDIA.getId() || i == McsConstants.RCSMessageType.TEXT.getId() || i == McsConstants.RCSMessageType.SINGLE.getId() || i == McsConstants.RCSMessageType.GROUP.getId();
    }

    private void insertToImdnNotificationBufferDBFromTP(ContentValues contentValues, String str, String str2) {
        Integer asInteger = contentValues.getAsInteger("notification_status");
        if (asInteger != null) {
            Log.i(this.TAG, "insertToImdnNotificationBufferDBFromTP recipients isempty: " + TextUtils.isEmpty(str2) + ", status: " + asInteger);
            Long asLong = contentValues.getAsLong(ImContract.ChatItem.DELIVERED_TIMESTAMP);
            Integer asInteger2 = contentValues.getAsInteger("direction");
            if (asInteger2 == null || asInteger2.intValue() != ImDirection.OUTGOING.getId() || TextUtils.isEmpty(str2)) {
                return;
            }
            ContentValues contentValues2 = new ContentValues();
            String[] split = str2.split(";");
            contentValues2.put("id", contentValues.getAsString("_id"));
            contentValues2.put("imdn_id", str);
            contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
            contentValues2.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
            contentValues2.put("status", asInteger);
            for (String str3 : split) {
                insertToImdnNotificationBufferDBHelper(contentValues2, str3, asLong, asInteger.intValue());
            }
        }
    }

    private void insertToImdnNotificationBufferDBHelper(ContentValues contentValues, String str, Long l, int i) {
        contentValues.put(ImContract.MessageNotification.SENDER_URI, Util.getTelUri(str, this.mCountryCode));
        if (i == NotificationStatus.NONE.getId()) {
            contentValues.put("timestamp", (Integer) 0);
        } else if (i == NotificationStatus.DELIVERED.getId()) {
            contentValues.put("timestamp", l);
        } else if (i == NotificationStatus.DISPLAYED.getId()) {
            contentValues.put("timestamp", l);
        }
        contentValues.put("sim_imsi", this.IMSI);
        this.mBufferDB.insertDeviceMsgToBuffer(13, contentValues);
    }

    private void addCVValuesFromSessionCursor(ContentValues contentValues, ContentValues contentValues2) {
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
        contentValues.put("chat_id", contentValues2.getAsString("chat_id"));
        contentValues.put("conversation_id", contentValues2.getAsString("conversation_id"));
        contentValues.put("contribution_id", contentValues2.getAsString("contribution_id"));
        contentValues.put("linenum", contentValues2.getAsString("linenum"));
        contentValues.put("sim_imsi", contentValues2.getAsString("sim_imsi"));
    }

    public Cursor queryParticipantsUsingChatIdFromTP(String str) {
        return this.mTelephonyStorage.queryParticipantsUsingChatIdFromTP(str);
    }

    public Cursor queryParticipantsInfoFromTP(String str) {
        return this.mTelephonyStorage.queryParticipantsInfoFromTP(str);
    }

    public Cursor queryAllRCSChatFromTP(String str, String str2) {
        return this.mTelephonyStorage.queryAllRCSChatFromTP(str, str2);
    }

    public Cursor queryAllFtRCSFromTelephony(String str, String str2) {
        return this.mTelephonyStorage.queryAllFtRCSFromTelephony(str, str2);
    }

    public void insertSessionFromTPDBToRCSSessionBufferDB(Cursor cursor) {
        ArrayList<ContentValues> convertTPRCSSessionToCV = CursorContentValueTranslator.convertTPRCSSessionToCV(cursor, this.mStoreClient);
        Log.d(this.TAG, "insertSessionFromTPDBToRCSSessionBufferDB size: " + convertTPRCSSessionToCV.size());
        String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        for (int i = 0; i < convertTPRCSSessionToCV.size(); i++) {
            ContentValues contentValues = convertTPRCSSessionToCV.get(i);
            String asString = contentValues.getAsString(ImContract.ImSession.PREFERRED_URI);
            if (asString == null) {
                asString = this.mStoreClient.getPrerenceManager().getUserTelCtn();
            }
            String asString2 = contentValues.getAsString("chat_id");
            if (TextUtils.isEmpty(asString2)) {
                Log.i(this.TAG, "insertSessionFromTPDBToRCSSessionBufferDB chatId is empty");
            } else {
                contentValues.put("linenum", asString);
                ImsUri normalizedTelUri = Util.getNormalizedTelUri(contentValues.getAsString(ImContract.ImSession.OWN_PHONE_NUMBER), this.mCountryCode);
                if (normalizedTelUri != null && !TextUtils.equals(normalizedTelUri.toString(), userTelCtn)) {
                    String generateConversationId = StringIdGenerator.generateConversationId();
                    contentValues.put("conversation_id", generateConversationId);
                    Log.d(this.TAG, "new conv id====" + generateConversationId);
                }
                if (checkIfSessionPresentInBufferDB(asString2).longValue() == -1) {
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
                    insertDeviceMsgToBuffer(10, contentValues);
                    copyParticipantsToBuffer(asString2);
                }
                Cursor queryAllRCSChatFromTP = queryAllRCSChatFromTP(asString2, this.IMSI);
                if (queryAllRCSChatFromTP != null) {
                    try {
                        if (queryAllRCSChatFromTP.moveToFirst()) {
                            insertToRCSMessagesBufferDBFromTP(queryAllRCSChatFromTP, asString, contentValues, false);
                        }
                    } catch (Throwable th) {
                        try {
                            queryAllRCSChatFromTP.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (queryAllRCSChatFromTP != null) {
                    queryAllRCSChatFromTP.close();
                }
                Cursor queryAllFtRCSFromTelephony = queryAllFtRCSFromTelephony(asString2, this.IMSI);
                if (queryAllFtRCSFromTelephony != null) {
                    try {
                        if (queryAllFtRCSFromTelephony.moveToFirst()) {
                            insertToRCSMessagesBufferDBFromTP(queryAllFtRCSFromTelephony, asString, contentValues, true);
                        }
                    } catch (Throwable th3) {
                        try {
                            queryAllFtRCSFromTelephony.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (queryAllFtRCSFromTelephony != null) {
                    queryAllFtRCSFromTelephony.close();
                }
            }
        }
    }

    private void copyParticipantsToBuffer(String str) {
        Cursor queryParticipantsUsingChatIdFromTP = queryParticipantsUsingChatIdFromTP(str);
        if (queryParticipantsUsingChatIdFromTP != null) {
            try {
                if (queryParticipantsUsingChatIdFromTP.moveToFirst()) {
                    for (String str2 : queryParticipantsUsingChatIdFromTP.getString(queryParticipantsUsingChatIdFromTP.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.RECIPIENT_ID)).split(" ")) {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("chat_id", str);
                        Cursor queryParticipantsInfoFromTP = queryParticipantsInfoFromTP(str2);
                        if (queryParticipantsInfoFromTP != null) {
                            try {
                                if (queryParticipantsInfoFromTP.moveToFirst()) {
                                    String string = queryParticipantsInfoFromTP.getString(queryParticipantsInfoFromTP.getColumnIndexOrThrow("address"));
                                    contentValues.put("_id", Integer.valueOf(queryParticipantsInfoFromTP.getInt(queryParticipantsInfoFromTP.getColumnIndexOrThrow("_id"))));
                                    contentValues.put("uri", Util.getTelUri(string, this.mCountryCode));
                                    contentValues.put("sim_imsi", this.IMSI);
                                    insertDeviceMsgToBuffer(2, contentValues);
                                }
                            } catch (Throwable th) {
                                try {
                                    queryParticipantsInfoFromTP.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        }
                        if (queryParticipantsInfoFromTP != null) {
                            queryParticipantsInfoFromTP.close();
                        }
                    }
                }
            } catch (Throwable th3) {
                try {
                    queryParticipantsUsingChatIdFromTP.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (queryParticipantsUsingChatIdFromTP != null) {
            queryParticipantsUsingChatIdFromTP.close();
        }
    }

    public Cursor querySessionByChatId(String str) {
        return this.mBufferDB.querySessionByChatId(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Long checkIfSessionPresentInBufferDB(java.lang.String r3) {
        /*
            r2 = this;
            android.database.Cursor r2 = r2.querySessionByChatId(r3)
            if (r2 == 0) goto L21
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L17
            if (r3 == 0) goto L21
            java.lang.String r3 = "_id"
            int r3 = r2.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> L17
            long r0 = r2.getLong(r3)     // Catch: java.lang.Throwable -> L17
            goto L23
        L17:
            r3 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L1c
            goto L20
        L1c:
            r2 = move-exception
            r3.addSuppressed(r2)
        L20:
            throw r3
        L21:
            r0 = -1
        L23:
            if (r2 == 0) goto L28
            r2.close()
        L28:
            java.lang.Long r2 = java.lang.Long.valueOf(r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.RcsQueryBuilder.checkIfSessionPresentInBufferDB(java.lang.String):java.lang.Long");
    }

    public Cursor queryLargestLastModSeqRow(String str) {
        Log.i(this.TAG, "queryLargestLastModSeqRow imdnID: " + str);
        return this.mBufferDB.queryRCSImdnMessages(null, "imdn_id=?", new String[]{str}, "lastmodseq DESC LIMIT 1");
    }

    public void updateParticipantsIdFromRcsDb(String str) {
        Log.d(this.TAG, "updateParticipantsIdFromRcsDb chatId " + str);
        Cursor queryParticipantsUsingChatId = queryParticipantsUsingChatId(str);
        if (queryParticipantsUsingChatId != null) {
            while (queryParticipantsUsingChatId.moveToNext()) {
                try {
                    int i = queryParticipantsUsingChatId.getInt(queryParticipantsUsingChatId.getColumnIndexOrThrow("_id"));
                    String[] strArr = {str, queryParticipantsUsingChatId.getString(queryParticipantsUsingChatId.getColumnIndexOrThrow("uri"))};
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_id", Integer.valueOf(i));
                    this.mBufferDB.updateRCSParticipantsTable(contentValues, "chat_id=? AND uri=?", strArr);
                } catch (Throwable th) {
                    try {
                        queryParticipantsUsingChatId.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        }
        if (queryParticipantsUsingChatId != null) {
            queryParticipantsUsingChatId.close();
        }
    }
}
