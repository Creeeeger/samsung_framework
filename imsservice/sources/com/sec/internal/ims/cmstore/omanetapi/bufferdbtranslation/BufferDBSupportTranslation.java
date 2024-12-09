package com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Pair;
import com.google.gson.Gson;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber$PhoneNumber;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.data.FlagNames;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.helper.TelephonyDbHelper;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferQueryDBTranslation;
import com.sec.internal.ims.cmstore.omanetapi.nms.data.AttributeTranslator;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamVvmUpdate;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.ITelephonyDBColumns;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.FileUploadResponse;
import com.sec.internal.omanetapi.nms.data.ConferenceDescription;
import com.sec.internal.omanetapi.nms.data.ConferenceInfo;
import com.sec.internal.omanetapi.nms.data.ConferenceState;
import com.sec.internal.omanetapi.nms.data.FlagList;
import com.sec.internal.omanetapi.nms.data.Object;
import com.sec.internal.omanetapi.nms.data.Users;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class BufferDBSupportTranslation extends BufferQueryDBTranslation {
    private String LOG_TAG;
    protected ICloudMessageManagerHelper mCloudMessageManagerHelper;
    protected final TelephonyDbHelper mTeleDBHelper;
    protected SimpleDateFormat sFormatOfName;

    public static class MessageStatus {
        public static final int MESSAGE_TYPE_INBOX = 1;
        public static final int MESSAGE_TYPE_SENT = 2;
    }

    protected Pair<Object, HttpPostBody> getObjectPairFromCursor(Cursor cursor, BufferQueryDBTranslation.MessageType messageType, List<FileUploadResponse> list) {
        return null;
    }

    public BufferDBSupportTranslation(MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(messageStoreClient);
        this.LOG_TAG = BufferDBSupportTranslation.class.getSimpleName();
        this.LOG_TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mTeleDBHelper = new TelephonyDbHelper(this.mContext);
        this.sFormatOfName = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getDateFormat();
    }

    protected Object getVvmObjectFromDB(BufferDBChangeParam bufferDBChangeParam) {
        Object object = new Object();
        Cursor queryVvmGreetingBufferDB = queryVvmGreetingBufferDB(bufferDBChangeParam.mRowId);
        if (queryVvmGreetingBufferDB != null) {
            try {
                if (queryVvmGreetingBufferDB.moveToFirst()) {
                    FlagList flagList = new FlagList();
                    object.flags = flagList;
                    flagList.flag = new String[]{FlagNames.Cns_Greeting_on};
                    AttributeTranslator attributeTranslator = new AttributeTranslator(this.mStoreClient);
                    attributeTranslator.setDate(new String[]{this.sFormatOfName.format(Long.valueOf(System.currentTimeMillis()))});
                    attributeTranslator.setMessageId(new String[]{Util.generateHash()});
                    attributeTranslator.setMimeVersion(new String[]{"1.0"});
                    int i = queryVvmGreetingBufferDB.getInt(queryVvmGreetingBufferDB.getColumnIndex(CloudMessageProviderContract.VVMGreetingColumns.GREETINGTYPE));
                    Log.i(this.LOG_TAG, "getVvmObjectFromDB greetingType: " + i);
                    attributeTranslator.setGreetingType(new String[]{ParamVvmUpdate.VvmGreetingType.valueOf(i).getName()});
                    attributeTranslator.setContentDuration(new String[]{String.valueOf(queryVvmGreetingBufferDB.getInt(queryVvmGreetingBufferDB.getColumnIndex(CloudMessageProviderContract.VVMGreetingColumns.DURATION)))});
                    object.attributes = attributeTranslator.getAttributeList();
                }
            } catch (Throwable th) {
                try {
                    queryVvmGreetingBufferDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryVvmGreetingBufferDB != null) {
            queryVvmGreetingBufferDB.close();
        }
        return object;
    }

    protected HttpPostBody getVvmGreetingBodyFromDB(BufferDBChangeParam bufferDBChangeParam) {
        byte[] fileContentInBytes;
        ArrayList arrayList = new ArrayList();
        Cursor queryVvmGreetingBufferDB = queryVvmGreetingBufferDB(bufferDBChangeParam.mRowId);
        if (queryVvmGreetingBufferDB != null) {
            try {
                if (queryVvmGreetingBufferDB.moveToFirst()) {
                    do {
                        String string = queryVvmGreetingBufferDB.getString(queryVvmGreetingBufferDB.getColumnIndex("filepath"));
                        if (string != null && (fileContentInBytes = getFileContentInBytes(Uri.parse(string), CloudMessageBufferDBConstants.PayloadEncoding.Base64)) != null) {
                            String string2 = queryVvmGreetingBufferDB.getString(queryVvmGreetingBufferDB.getColumnIndex("fileName"));
                            if (string2 == null) {
                                string2 = string.substring(string.lastIndexOf(47) + 1);
                            }
                            String string3 = queryVvmGreetingBufferDB.getString(queryVvmGreetingBufferDB.getColumnIndex("mimeType"));
                            if (!TextUtils.isEmpty(string3)) {
                                HttpPostBody httpPostBody = new HttpPostBody("attachment;filename=\"" + string2 + CmcConstants.E_NUM_STR_QUOTE, string3, fileContentInBytes);
                                httpPostBody.setContentTransferEncoding(HttpPostBody.CONTENT_TRANSFER_ENCODING_BASE64);
                                Log.i(this.LOG_TAG, "getVvmGreetingBodyFromDB data size: " + fileContentInBytes.length + " filename: " + string2 + " contentType: " + string3);
                                arrayList.add(httpPostBody);
                            }
                        }
                    } while (queryVvmGreetingBufferDB.moveToNext());
                    HttpPostBody httpPostBody2 = new HttpPostBody("form-data;name=\"attachments\"", "multipart/mixed", arrayList);
                    queryVvmGreetingBufferDB.close();
                    return httpPostBody2;
                }
            } catch (Throwable th) {
                try {
                    queryVvmGreetingBufferDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryVvmGreetingBufferDB == null) {
            return null;
        }
        queryVvmGreetingBufferDB.close();
        return null;
    }

    protected HttpPostBody getThumbnailPayloadPart(Cursor cursor, File file, File file2, String str) {
        if (file != null && file.exists()) {
            String string = cursor.getString(cursor.getColumnIndex(ImContract.CsSession.FILE_NAME));
            if (TextUtils.isEmpty(string)) {
                string = Util.getRandomFileName("jpg");
            }
            String str2 = "attachment;filename=\"" + string + CmcConstants.E_NUM_STR_QUOTE;
            String string2 = cursor.getString(cursor.getColumnIndex("content_type"));
            if (!TextUtils.isEmpty(string2) && MIMEContentType.FT_HTTP.equals(string2)) {
                string2 = (file2 == null || !file2.exists()) ? FileUtils.getContentType(file) : FileUtils.getContentType(file2);
            }
            String str3 = string2;
            byte[] fileContentInBytes = getFileContentInBytes(str, CloudMessageBufferDBConstants.PayloadEncoding.None);
            if (fileContentInBytes != null && fileContentInBytes.length != 0 && !TextUtils.isEmpty(str3)) {
                if (file2 != null && file2.exists()) {
                    return new HttpPostBody("icon;filename=\"thumbnail_" + string + CmcConstants.E_NUM_STR_QUOTE, str3, fileContentInBytes, null, "thumbnail");
                }
                return new HttpPostBody(str2, str3, fileContentInBytes);
            }
        }
        return null;
    }

    protected HttpPostBody getFilePayloadPart(Cursor cursor, File file, File file2, String str) {
        if (file != null && file.exists()) {
            String str2 = "attachment;filename=\"" + cursor.getString(cursor.getColumnIndex(ImContract.CsSession.FILE_NAME)) + CmcConstants.E_NUM_STR_QUOTE;
            String string = cursor.getString(cursor.getColumnIndex("content_type"));
            if (!TextUtils.isEmpty(string) && MIMEContentType.FT_HTTP.equals(string)) {
                string = FileUtils.getContentType(file);
            }
            String str3 = string;
            byte[] fileContentInBytes = getFileContentInBytes(str, CloudMessageBufferDBConstants.PayloadEncoding.None);
            if (fileContentInBytes != null && fileContentInBytes.length != 0 && !TextUtils.isEmpty(str3)) {
                if (file2 != null && file2.exists()) {
                    return new HttpPostBody(str2, str3, fileContentInBytes, "cid:thumbnail", null);
                }
                return new HttpPostBody(str2, str3, fileContentInBytes);
            }
        }
        return null;
    }

    protected String getLocalFilePathForFt(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex("imdn_message_id"));
        long ftRowFromTelephony = this.mTeleDBHelper.getFtRowFromTelephony(string);
        if (ftRowFromTelephony == -1) {
            Log.e(this.LOG_TAG, "Invalid rowId received for imdn id: " + string);
            return null;
        }
        Log.i(this.LOG_TAG, "row id : " + ftRowFromTelephony + " for imdn id:" + string);
        return FileUtils.copyFileToCacheFromUri(this.mContext, cursor.getString(cursor.getColumnIndex(ImContract.CsSession.FILE_NAME)), ContentUris.withAppendedId(Uri.parse("content://im/ft_original/"), ftRowFromTelephony));
    }

    protected List<HttpPostBody> getFtMultiBody(Cursor cursor, String str) {
        String str2;
        File file;
        String localFilePathForFt = getLocalFilePathForFt(cursor);
        Log.i(this.LOG_TAG, "getFtMultiBody localFilePath : " + localFilePathForFt + " filePath: " + str);
        String string = cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.THUMBNAIL_PATH));
        if (!TextUtils.isEmpty(localFilePathForFt)) {
            file = new File(localFilePathForFt);
            str2 = localFilePathForFt;
        } else if (TextUtils.isEmpty(str)) {
            str2 = str;
            file = null;
        } else {
            str2 = str;
            file = new File(str);
        }
        File file2 = TextUtils.isEmpty(string) ? null : new File(string);
        ArrayList arrayList = new ArrayList();
        if (ATTGlobalVariables.isAmbsPhaseIV()) {
            HttpPostBody filePayloadPart = getFilePayloadPart(cursor, file, file2, str2);
            if (filePayloadPart != null) {
                arrayList.add(filePayloadPart);
            }
            HttpPostBody thumbnailPayloadPart = getThumbnailPayloadPart(cursor, file2, file, string);
            if (thumbnailPayloadPart != null) {
                arrayList.add(thumbnailPayloadPart);
            }
            Log.d(this.LOG_TAG, "Filepath: " + file + " File payload size: " + arrayList.size() + " thumbnailpath: " + string + " Thumbnail payload size: " + arrayList.size());
        } else {
            if (file != null && file.exists()) {
                String str3 = "attachment;filename=\"" + cursor.getString(cursor.getColumnIndex(ImContract.CsSession.FILE_NAME)) + CmcConstants.E_NUM_STR_QUOTE;
                String string2 = cursor.getString(cursor.getColumnIndex("content_type"));
                byte[] fileContentInBytes = getFileContentInBytes(str2, CloudMessageBufferDBConstants.PayloadEncoding.None);
                if (fileContentInBytes == null || fileContentInBytes.length == 0 || TextUtils.isEmpty(string2)) {
                    return arrayList;
                }
                arrayList.add(new HttpPostBody(str3, string2, fileContentInBytes));
            }
            Log.d(this.LOG_TAG, "thumbnail filepath : " + string + " ,body size: " + arrayList.size());
        }
        FileUtils.removeFile(localFilePathForFt);
        return arrayList;
    }

    protected List<HttpPostBody> getSlmMultiBody(Cursor cursor, String str, BufferQueryDBTranslation.MessageType messageType, String str2) {
        return getChatSlmMultiBody(cursor, str, messageType, str2, TextUtils.isEmpty(str) ? getLocalFilePathForFt(cursor) : null);
    }

    protected List<HttpPostBody> getChatSlmMultiBody(Cursor cursor, String str, BufferQueryDBTranslation.MessageType messageType, String str2, String str3) {
        Log.i(this.LOG_TAG, "getChatSlmMultiBody localFilePath : " + str3 + " filePath: " + str2);
        if (!TextUtils.isEmpty(str3)) {
            str2 = str3;
        }
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            arrayList.add(new HttpPostBody("form-data;name=\"attachments\";filename=\"sms.txt\"", MIMEContentType.PLAIN_TEXT, str));
        } else if (!TextUtils.isEmpty(str2)) {
            String string = cursor.getString(cursor.getColumnIndex(ImContract.CsSession.FILE_NAME));
            String str4 = "attachment;name=file;filename=\"" + string + CmcConstants.E_NUM_STR_QUOTE;
            if (messageType == BufferQueryDBTranslation.MessageType.MESSAGE_CHAT) {
                str4 = "attachment;filename=\"" + string + CmcConstants.E_NUM_STR_QUOTE;
            }
            String string2 = cursor.getString(cursor.getColumnIndex("content_type"));
            byte[] fileContentInBytes = getFileContentInBytes(str2, CloudMessageBufferDBConstants.PayloadEncoding.None);
            if (fileContentInBytes == null || fileContentInBytes.length == 0 || TextUtils.isEmpty(string2)) {
                return arrayList;
            }
            arrayList.add(new HttpPostBody(str4, string2, fileContentInBytes));
        }
        FileUtils.removeFile(str3);
        return arrayList;
    }

    protected boolean setCpmTransMessage(AttributeTranslator attributeTranslator, Set<String> set, BufferQueryDBTranslation.MessageType messageType, String str) {
        boolean z = true;
        if (set.size() > 1) {
            attributeTranslator.setCpmGroup(new String[]{"yes"});
        } else {
            attributeTranslator.setCpmGroup(new String[]{"no"});
            z = false;
        }
        Log.i(this.LOG_TAG, "setCpmTransMessage  type" + messageType);
        if (messageType == BufferQueryDBTranslation.MessageType.MESSAGE_CHAT) {
            if (Util.isLocationPushContentType(str)) {
                attributeTranslator.setMessageContext(new String[]{McsConstants.McsMessageContextValues.geolocationMessage});
            } else if (Util.isBotMessageContentType(str)) {
                attributeTranslator.setMessageContext(new String[]{McsConstants.McsMessageContextValues.botMessage});
            } else if (Util.isBotResponseMessageContentType(str)) {
                attributeTranslator.setMessageContext(new String[]{McsConstants.McsMessageContextValues.responseMessage});
            } else {
                attributeTranslator.setMessageContext(new String[]{"chat-message"});
            }
        } else if (messageType == BufferQueryDBTranslation.MessageType.MESSAGE_SLM) {
            attributeTranslator.setMessageContext(new String[]{"standalone-message"});
        } else if (messageType == BufferQueryDBTranslation.MessageType.MESSAGE_FT) {
            attributeTranslator.setMessageContext(new String[]{"file-message"});
        }
        return z;
    }

    protected void setConversationId(AttributeTranslator attributeTranslator, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Cursor queryRCSSessionDB = queryRCSSessionDB(str);
        if (queryRCSSessionDB != null) {
            try {
                if (queryRCSSessionDB.moveToFirst()) {
                    String string = queryRCSSessionDB.getString(queryRCSSessionDB.getColumnIndex("conversation_id"));
                    Log.i(this.LOG_TAG, "getObjectPairFromCursor :: conversationId : " + string);
                    attributeTranslator.setConversationId(new String[]{string});
                }
            } catch (Throwable th) {
                try {
                    queryRCSSessionDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryRCSSessionDB != null) {
            queryRCSSessionDB.close();
        }
    }

    protected Pair<Object, HttpPostBody> getFtObjectPairFromCursor(Cursor cursor, List<FileUploadResponse> list) {
        return getObjectPairFromCursor(cursor, BufferQueryDBTranslation.MessageType.MESSAGE_FT, list);
    }

    protected Pair<Object, HttpPostBody> getFtObjectPairFromCursor(Cursor cursor) {
        return getObjectPairFromCursor(cursor, BufferQueryDBTranslation.MessageType.MESSAGE_FT);
    }

    protected Pair<Object, HttpPostBody> getChatObjectPairFromCursor(Cursor cursor) {
        return getObjectPairFromCursor(cursor, BufferQueryDBTranslation.MessageType.MESSAGE_CHAT);
    }

    protected Pair<Object, HttpPostBody> getSlmObjectPairFromCursor(Cursor cursor) {
        return getObjectPairFromCursor(cursor, BufferQueryDBTranslation.MessageType.MESSAGE_SLM);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00e0 A[Catch: all -> 0x01ee, TryCatch #1 {all -> 0x01ee, blocks: (B:7:0x001b, B:11:0x0025, B:14:0x0063, B:16:0x0069, B:19:0x0075, B:20:0x008b, B:22:0x00e0, B:24:0x00ed, B:28:0x00f5, B:29:0x0131, B:32:0x0153, B:33:0x01c0, B:43:0x0187, B:45:0x018b, B:46:0x01b8, B:48:0x01bc, B:49:0x00f9, B:51:0x0104, B:54:0x007e), top: B:6:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0153 A[Catch: all -> 0x01ee, TRY_ENTER, TryCatch #1 {all -> 0x01ee, blocks: (B:7:0x001b, B:11:0x0025, B:14:0x0063, B:16:0x0069, B:19:0x0075, B:20:0x008b, B:22:0x00e0, B:24:0x00ed, B:28:0x00f5, B:29:0x0131, B:32:0x0153, B:33:0x01c0, B:43:0x0187, B:45:0x018b, B:46:0x01b8, B:48:0x01bc, B:49:0x00f9, B:51:0x0104, B:54:0x007e), top: B:6:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0187 A[Catch: all -> 0x01ee, TryCatch #1 {all -> 0x01ee, blocks: (B:7:0x001b, B:11:0x0025, B:14:0x0063, B:16:0x0069, B:19:0x0075, B:20:0x008b, B:22:0x00e0, B:24:0x00ed, B:28:0x00f5, B:29:0x0131, B:32:0x0153, B:33:0x01c0, B:43:0x0187, B:45:0x018b, B:46:0x01b8, B:48:0x01bc, B:49:0x00f9, B:51:0x0104, B:54:0x007e), top: B:6:0x001b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f9 A[Catch: all -> 0x01ee, TryCatch #1 {all -> 0x01ee, blocks: (B:7:0x001b, B:11:0x0025, B:14:0x0063, B:16:0x0069, B:19:0x0075, B:20:0x008b, B:22:0x00e0, B:24:0x00ed, B:28:0x00f5, B:29:0x0131, B:32:0x0153, B:33:0x01c0, B:43:0x0187, B:45:0x018b, B:46:0x01b8, B:48:0x01bc, B:49:0x00f9, B:51:0x0104, B:54:0x007e), top: B:6:0x001b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected android.util.Pair<com.sec.internal.omanetapi.nms.data.Object, com.sec.internal.helper.httpclient.HttpPostBody> getObjectPairFromCursor(android.database.Cursor r18, com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferQueryDBTranslation.MessageType r19) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBSupportTranslation.getObjectPairFromCursor(android.database.Cursor, com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferQueryDBTranslation$MessageType):android.util.Pair");
    }

    private Set<String> getAddrFromParticipantTable(String str) {
        HashSet hashSet = new HashSet();
        Cursor queryRCSParticipantDB = queryRCSParticipantDB(str);
        if (queryRCSParticipantDB != null) {
            try {
                if (queryRCSParticipantDB.moveToFirst()) {
                    do {
                        String string = queryRCSParticipantDB.getString(queryRCSParticipantDB.getColumnIndex("uri"));
                        if (!TextUtils.isEmpty(string)) {
                            hashSet.add(ImsUri.parse(string).getMsisdn());
                        }
                    } while (queryRCSParticipantDB.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    queryRCSParticipantDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryRCSParticipantDB != null) {
            queryRCSParticipantDB.close();
        }
        Log.i(this.LOG_TAG, "getAddrFromParticipantTable : " + IMSLog.checker(hashSet));
        return hashSet;
    }

    private void setSubjectAndGroup(String str, AttributeTranslator attributeTranslator) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Cursor queryRCSSessionDB = queryRCSSessionDB(str);
        if (queryRCSSessionDB != null) {
            try {
                if (queryRCSSessionDB.moveToFirst()) {
                    String string = queryRCSSessionDB.getString(queryRCSSessionDB.getColumnIndex("subject"));
                    if (string == null) {
                        string = "";
                    }
                    attributeTranslator.setSubject(new String[]{string});
                    ChatData.ChatType fromId = ChatData.ChatType.fromId(queryRCSSessionDB.getInt(queryRCSSessionDB.getColumnIndexOrThrow(ImContract.ImSession.CHAT_TYPE)));
                    Log.i(this.LOG_TAG, "getChatObjectPairFromCursor :: subject : " + string + " chatType : " + fromId);
                    if (fromId == ChatData.ChatType.REGULAR_GROUP_CHAT) {
                        attributeTranslator.setOpenGroup(new String[]{"yes"});
                    } else {
                        attributeTranslator.setOpenGroup(new String[]{"no"});
                    }
                }
            } catch (Throwable th) {
                try {
                    queryRCSSessionDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryRCSSessionDB != null) {
            queryRCSSessionDB.close();
        }
    }

    protected HttpPostBody getMmsPartHttpPayloadFromCursor(Cursor cursor) {
        byte[] dataFromPartFile;
        ArrayList arrayList = new ArrayList();
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(cursor.getColumnIndex("_id"));
                        String string2 = cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpart.CT));
                        if (!TextUtils.isEmpty(string2)) {
                            if (TextUtils.isEmpty(cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpart._DATA)))) {
                                String string3 = cursor.getString(cursor.getColumnIndex("text"));
                                dataFromPartFile = string3 != null ? string3.getBytes() : null;
                            } else {
                                dataFromPartFile = getDataFromPartFile(Long.parseLong(string));
                            }
                            if (dataFromPartFile != null) {
                                String string4 = cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpart.CL));
                                HttpPostBody httpPostBody = new HttpPostBody("attachment;filename=\"" + string4 + CmcConstants.E_NUM_STR_QUOTE, string2, dataFromPartFile);
                                Log.i(this.LOG_TAG, "getMmsPartHttpPayloadFromCursor id: " + string + ", contentType: " + string2 + " data size: " + dataFromPartFile.length + " filename: " + string4);
                                arrayList.add(httpPostBody);
                            }
                        }
                    } while (cursor.moveToNext());
                    if (!arrayList.isEmpty()) {
                        HttpPostBody httpPostBody2 = new HttpPostBody("form-data;name=\"attachments\"", "multipart/mixed", arrayList);
                        cursor.close();
                        return httpPostBody2;
                    }
                    cursor.close();
                    return null;
                }
                cursor.close();
            } catch (Throwable th) {
                try {
                    cursor.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        return null;
    }

    protected Object getMmsObjectFromPduAndAddress(BufferDBChangeParam bufferDBChangeParam) {
        Object object = new Object();
        Cursor querymmsPduBufferDB = querymmsPduBufferDB(bufferDBChangeParam.mRowId);
        if (querymmsPduBufferDB != null) {
            try {
                if (querymmsPduBufferDB.moveToFirst()) {
                    object.flags = new FlagList();
                    int i = querymmsPduBufferDB.getInt(querymmsPduBufferDB.getColumnIndex("read"));
                    long j = querymmsPduBufferDB.getLong(querymmsPduBufferDB.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.MSG_BOX));
                    if (i == 1 || j == 2) {
                        object.flags.flag = new String[]{FlagNames.Flagged, FlagNames.Seen};
                    } else {
                        object.flags.flag = new String[]{FlagNames.Flagged};
                    }
                    String string = querymmsPduBufferDB.getString(querymmsPduBufferDB.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.TR_ID));
                    Log.d(this.LOG_TAG, "getMmsObjectFromPduAndAddress: " + bufferDBChangeParam.mRowId + ", trid : " + string);
                    if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isTrIdCorrelationId() && string != null && string.length() > 2) {
                        object.correlationId = string.substring(2);
                    } else {
                        object.correlationId = querymmsPduBufferDB.getString(querymmsPduBufferDB.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.M_ID));
                    }
                    AttributeTranslator attributeTranslator = new AttributeTranslator(this.mStoreClient);
                    attributeTranslator.setDate(new String[]{this.sFormatOfName.format(new Date(querymmsPduBufferDB.getLong(querymmsPduBufferDB.getColumnIndex("date"))))});
                    MmsParticipant addrFromPduId = getAddrFromPduId(bufferDBChangeParam.mRowId);
                    if (j == 1) {
                        attributeTranslator.setDirection(new String[]{"IN"});
                        Set<String> set = addrFromPduId.mFrom;
                        attributeTranslator.setFrom((String[]) set.toArray(new String[set.size()]));
                        addrFromPduId.mTo.add(getE164FormatNumber(this.mStoreClient.getPrerenceManager().getUserCtn()));
                        Set<String> set2 = addrFromPduId.mTo;
                        attributeTranslator.setTo((String[]) set2.toArray(new String[set2.size()]));
                    } else if (j == 2) {
                        attributeTranslator.setDirection(new String[]{"OUT"});
                        if (addrFromPduId.mTo.size() != 0) {
                            Set<String> set3 = addrFromPduId.mTo;
                            attributeTranslator.setTo((String[]) set3.toArray(new String[set3.size()]));
                        }
                        if (addrFromPduId.mBcc.size() != 0) {
                            Set<String> set4 = addrFromPduId.mBcc;
                            attributeTranslator.setBCC((String[]) set4.toArray(new String[set4.size()]));
                        }
                        if (addrFromPduId.mCc.size() != 0) {
                            Set<String> set5 = addrFromPduId.mCc;
                            attributeTranslator.setCC((String[]) set5.toArray(new String[set5.size()]));
                        }
                        attributeTranslator.setFrom(new String[]{getE164FormatNumber(this.mStoreClient.getPrerenceManager().getUserCtn())});
                    }
                    attributeTranslator.setCpmGroup(new String[]{"no"});
                    attributeTranslator.setMessageContext(new String[]{"multimedia-message"});
                    object.attributes = attributeTranslator.getAttributeList();
                }
            } catch (Throwable th) {
                try {
                    querymmsPduBufferDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querymmsPduBufferDB != null) {
            querymmsPduBufferDB.close();
        }
        if (!TextUtils.isEmpty(object.correlationId)) {
            return object;
        }
        Log.e(this.LOG_TAG, "getMmsObjectFromPduAndAddress: correlation id is empty!!!");
        return null;
    }

    public Pair<Object, HttpPostBody> getConferenceInfoObjectPair(Cursor cursor) {
        int count;
        int i;
        int i2;
        if (cursor == null) {
            return null;
        }
        Object object = new Object();
        AttributeTranslator attributeTranslator = new AttributeTranslator(this.mStoreClient);
        ConferenceInfo conferenceInfo = new ConferenceInfo();
        try {
            if (!cursor.moveToFirst()) {
                cursor.close();
                return null;
            }
            String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
            conferenceInfo.mTimestamp = cursor.getString(cursor.getColumnIndexOrThrow(ImContract.ImSession.INSERTED_TIMESTAMP));
            conferenceInfo.mEntity = cursor.getString(cursor.getColumnIndex("session_uri"));
            conferenceInfo.mState = "full";
            conferenceInfo.mConferenceDescription = new ConferenceDescription();
            String string = cursor.getString(cursor.getColumnIndexOrThrow(ImContract.ImSession.ICON_PATH));
            if (!TextUtils.isEmpty(string)) {
                try {
                    conferenceInfo.mConferenceDescription.mIcon = new ConferenceDescription.Icon();
                    conferenceInfo.mConferenceDescription.mIcon.mFileInfo = new ConferenceDescription.Icon.FileInfo();
                    File file = new File(string);
                    String contentType = FileUtils.getContentType(file);
                    if (TextUtils.equals(contentType, HttpPostBody.CONTENT_TYPE_DEFAULT)) {
                        contentType = "image/jpeg";
                    }
                    ConferenceDescription.Icon.FileInfo fileInfo = conferenceInfo.mConferenceDescription.mIcon.mFileInfo;
                    fileInfo.mContentType = contentType;
                    fileInfo.mData = Base64.encodeToString(Files.readAllBytes(file.toPath()), 2);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            conferenceInfo.mConferenceDescription.mSubject = cursor.getString(cursor.getColumnIndex("subject"));
            long j = cursor.getLong(cursor.getColumnIndexOrThrow("subject_timestamp"));
            if (j > 0) {
                ConferenceDescription conferenceDescription = conferenceInfo.mConferenceDescription;
                if (conferenceDescription.mSubjectExt == null) {
                    conferenceDescription.mSubjectExt = new ConferenceDescription.SubjectExt();
                }
                conferenceInfo.mConferenceDescription.mSubjectExt.mTimestamp = String.valueOf(j);
            }
            conferenceInfo.mConferenceDescription.mMaxCount = cursor.getInt(cursor.getColumnIndex(ImContract.ImSession.MAX_PARTICIPANTS_COUNT));
            String string2 = cursor.getString(cursor.getColumnIndex("chat_id"));
            if (TextUtils.isEmpty(conferenceInfo.mEntity)) {
                Log.e(this.LOG_TAG, "Session URI is null with chatId " + string2);
                cursor.close();
                return null;
            }
            conferenceInfo.mConferenceState = new ConferenceState();
            boolean z = cursor.getInt(cursor.getColumnIndexOrThrow("status")) == ChatData.State.NONE.getId();
            conferenceInfo.mConferenceState.mActivation = !z;
            conferenceInfo.mUsers = new Users();
            Cursor queryRCSParticipantDB = queryRCSParticipantDB(string2);
            if (queryRCSParticipantDB != null) {
                try {
                    count = queryRCSParticipantDB.getCount();
                    conferenceInfo.mUsers.mUser = new Users.User[count + 1];
                    if (queryRCSParticipantDB.moveToFirst()) {
                        i = 0;
                        while (true) {
                            String string3 = queryRCSParticipantDB.getString(queryRCSParticipantDB.getColumnIndex("uri"));
                            conferenceInfo.mUsers.mUser[i] = new Users.User();
                            Users.User user = conferenceInfo.mUsers.mUser[i];
                            user.mEntity = string3;
                            user.mState = "full";
                            String string4 = queryRCSParticipantDB.getString(queryRCSParticipantDB.getColumnIndex("alias"));
                            if (!TextUtils.isEmpty(string4)) {
                                conferenceInfo.mUsers.mUser[i].mDisplayText = string4;
                            }
                            if (queryRCSParticipantDB.getInt(queryRCSParticipantDB.getColumnIndex("type")) == 2) {
                                i2 = count;
                                conferenceInfo.mUsers.mUser[i].mRole = new String[]{"Administrator"};
                            } else {
                                i2 = count;
                                conferenceInfo.mUsers.mUser[i].mRole = new String[]{"participant"};
                            }
                            conferenceInfo.mUsers.mUser[i].mEndpoint = new Users.User.Endpoint[]{new Users.User.Endpoint()};
                            Users.User.Endpoint endpoint = conferenceInfo.mUsers.mUser[i].mEndpoint[0];
                            endpoint.mEntity = string3;
                            endpoint.mState = "full";
                            endpoint.mStatus = "connected";
                            i++;
                            if (!queryRCSParticipantDB.moveToNext()) {
                                break;
                            }
                            count = i2;
                        }
                        conferenceInfo.mUsers.mUser[i] = new Users.User();
                        Users.User[] userArr = conferenceInfo.mUsers.mUser;
                        Users.User user2 = userArr[i];
                        user2.mEntity = userTelCtn;
                        user2.mState = "full";
                        user2.mOwn = true;
                        user2.mRole = new String[]{"participant"};
                        userArr[i].mEndpoint = new Users.User.Endpoint[]{new Users.User.Endpoint()};
                        Users.User.Endpoint endpoint2 = conferenceInfo.mUsers.mUser[i].mEndpoint[0];
                        endpoint2.mEntity = userTelCtn;
                        endpoint2.mState = "full";
                        endpoint2.mStatus = z ? "disconnected" : "connected";
                        count = i2;
                    } else {
                        i = 0;
                    }
                } finally {
                }
            } else {
                i = 0;
                count = 0;
            }
            if (queryRCSParticipantDB != null) {
                queryRCSParticipantDB.close();
            }
            if (count <= 0) {
                cursor.close();
                return null;
            }
            conferenceInfo.mConferenceState.mUserCount = i + 1;
            attributeTranslator.setMessageContext(new String[]{McsConstants.McsMessageContextValues.conferenceMessage});
            attributeTranslator.setContentType(new String[]{MIMEContentType.CONFERENCE_INFO});
            attributeTranslator.setDate(new String[]{this.sFormatOfName.format(Long.valueOf(System.currentTimeMillis()))});
            attributeTranslator.setMessageBody(new String[]{new Gson().toJson(conferenceInfo)});
            cursor.close();
            setConversationId(attributeTranslator, string2);
            object.attributes = attributeTranslator.getAttributeList();
            return new Pair<>(object, null);
        } finally {
        }
    }

    protected MmsParticipant getAddrFromPduId(long j) {
        HashSet hashSet;
        Log.d(this.LOG_TAG, "getAddrFromPduId: " + j);
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        Cursor queryAddrBufferDB = queryAddrBufferDB(j);
        if (queryAddrBufferDB != null) {
            try {
                if (queryAddrBufferDB.moveToFirst()) {
                    do {
                        String string = queryAddrBufferDB.getString(queryAddrBufferDB.getColumnIndex("address"));
                        int i = queryAddrBufferDB.getInt(queryAddrBufferDB.getColumnIndex("type"));
                        Log.d(this.LOG_TAG, " direction: " + i + "address is: " + IMSLog.checker(string));
                        if (i == 137) {
                            hashSet = hashSet2;
                        } else if (i == 151) {
                            hashSet = hashSet3;
                        } else if (i == 129) {
                            hashSet = hashSet4;
                        } else if (i == 130) {
                            hashSet = hashSet5;
                        }
                        if (!TextUtils.isEmpty(string)) {
                            if (string.equals(ITelephonyDBColumns.FROM_INSERT_ADDRESS_TOKEN_STR)) {
                                hashSet.add(getE164FormatNumber(this.mStoreClient.getPrerenceManager().getUserCtn(), Util.getSimCountryCode(this.mContext, this.mPhoneId)));
                            } else {
                                hashSet.add(getE164FormatNumber(string, Util.getSimCountryCode(this.mContext, this.mPhoneId)));
                            }
                        }
                    } while (queryAddrBufferDB.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    queryAddrBufferDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryAddrBufferDB != null) {
            queryAddrBufferDB.close();
        }
        return new MmsParticipant(hashSet2, hashSet3, hashSet4, hashSet5);
    }

    protected byte[] getDataFromPartFile(long j) {
        InputStream inputStream;
        Uri parse = Uri.parse("content://mms/part/" + j);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        InputStream inputStream2 = null;
        try {
            inputStream = this.mTeleDBHelper.getInputStream(parse);
            if (inputStream != null) {
                try {
                    byte[] bArr = new byte[256];
                    for (int read = inputStream.read(bArr); read >= 0; read = inputStream.read(bArr)) {
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                } catch (IOException unused) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            Log.e(this.LOG_TAG, "getDataFromPartFile is.close() error: " + e);
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    inputStream2 = inputStream;
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (IOException e2) {
                            Log.e(this.LOG_TAG, "getDataFromPartFile is.close() error: " + e2);
                        }
                    }
                    throw th;
                }
            }
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    Log.e(this.LOG_TAG, "getDataFromPartFile is.close() error: " + e3);
                }
            }
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused2) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private byte[] getFileContentInBytes(Uri uri, CloudMessageBufferDBConstants.PayloadEncoding payloadEncoding) {
        if (uri == null) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                InputStream openInputStream = this.mContext.getContentResolver().openInputStream(uri);
                try {
                    if (openInputStream == null) {
                        Log.e(this.LOG_TAG, "URI open failed!!!! Uri = " + uri);
                        if (openInputStream != null) {
                            openInputStream.close();
                        }
                        byteArrayOutputStream.close();
                        return null;
                    }
                    Log.i(this.LOG_TAG, "FileUri  ==> " + uri);
                    byte[] bArr = new byte[256];
                    int read = openInputStream.read(bArr);
                    while (read >= 0) {
                        byteArrayOutputStream.write(bArr, 0, read);
                        read = openInputStream.read(bArr);
                    }
                    Log.i(this.LOG_TAG, "getFileContentInBytes: " + uri + " " + payloadEncoding + " bytes " + read + " getVVMGreetingPayloadFromPath, all bytes: " + byteArrayOutputStream.size());
                    if (CloudMessageBufferDBConstants.PayloadEncoding.Base64.equals(payloadEncoding)) {
                        byte[] encode = Base64.encode(byteArrayOutputStream.toByteArray(), 0);
                        openInputStream.close();
                        byteArrayOutputStream.close();
                        return encode;
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    openInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } finally {
                }
            } finally {
            }
        } catch (IOException e) {
            Log.e(this.LOG_TAG, "getVVMGreetingPayloadFromPath :: " + e.getMessage());
            return null;
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
                    Log.i(this.LOG_TAG, "getFileContentInBytes: read:" + read);
                    while (read >= 0) {
                        byteArrayOutputStream.write(bArr, 0, read);
                        read = fileInputStream.read(bArr);
                    }
                    Log.i(this.LOG_TAG, "getFileContentInBytes: " + str + " " + payloadEncoding + " bytes " + read + " getRcsFilePayloadFromPath, all bytes: " + byteArrayOutputStream.size());
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
            Log.e(this.LOG_TAG, "getFileContentInBytes :: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

    private void setTransToFrom(AttributeTranslator attributeTranslator, Set<String> set, String str) {
        String msisdn = ImsUri.parse(str).getMsisdn();
        attributeTranslator.setDirection(new String[]{"IN"});
        attributeTranslator.setFrom(new String[]{msisdn});
        Log.i(this.LOG_TAG, "parsed address : " + IMSLog.checker(msisdn) + " participants size: " + set.size());
        if (set.size() <= 1) {
            set.clear();
        } else {
            set.remove(msisdn);
        }
        set.add(getE164FormatNumber(this.mStoreClient.getPrerenceManager().getUserCtn()));
        attributeTranslator.setTo((String[]) set.toArray(new String[set.size()]));
    }

    protected String getE164FormatNumber(String str) {
        return getE164FormatNumber(str, "US");
    }

    protected String getE164FormatNumber(String str, String str2) {
        Log.d(this.LOG_TAG, "getE164FormatNumber: old[" + IMSLog.checker(str) + "]");
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            Phonenumber$PhoneNumber parse = phoneNumberUtil.parse(str, str2);
            if ((!str2.equalsIgnoreCase("KR") || (!str.contains("*") && !str.contains("#"))) && parse != null) {
                String format = phoneNumberUtil.format(parse, PhoneNumberUtil.PhoneNumberFormat.E164);
                Log.d(this.LOG_TAG, "getE164FormatNumber: E164[" + IMSLog.checker(format) + "]");
                return format;
            }
        } catch (NumberParseException | NullPointerException e) {
            System.err.println("NumberParseException was thrown: " + e);
        }
        return str;
    }

    protected String getTelE164FormatNumber(String str, String str2) {
        Phonenumber$PhoneNumber parse;
        Log.d(this.LOG_TAG, "getTelE164FormatNumber: old[" + IMSLog.checker(str) + "]");
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            parse = phoneNumberUtil.parse(str, str2);
        } catch (NumberParseException | NullPointerException e) {
            System.err.println("NumberParseException was thrown: " + e.toString());
        }
        if (str2.equalsIgnoreCase("KR") && (str.contains("*") || str.contains("#"))) {
            return "tel:" + str;
        }
        if (parse != null) {
            String format = phoneNumberUtil.format(parse, PhoneNumberUtil.PhoneNumberFormat.E164);
            Log.d(this.LOG_TAG, "getTelE164FormatNumber: E164[" + IMSLog.checker(format) + "]");
            return "tel:" + format;
        }
        return str;
    }

    protected static class MmsParticipant {
        Set<String> mBcc;
        Set<String> mCc;
        Set<String> mFrom;
        Set<String> mTo;

        MmsParticipant(Set<String> set, Set<String> set2, Set<String> set3, Set<String> set4) {
            this.mFrom = set;
            this.mTo = set2;
            this.mBcc = set3;
            this.mCc = set4;
        }
    }
}
