package com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation;

import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.data.FlagNames;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.helper.FileUtils;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.helper.translate.FileExtensionTranslator;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBSupportTranslation;
import com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferQueryDBTranslation;
import com.sec.internal.ims.cmstore.omanetapi.nms.data.AttributeTranslator;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamObjectUpload;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.ITelephonyDBColumns;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.FileUploadResponse;
import com.sec.internal.omanetapi.file.FileData;
import com.sec.internal.omanetapi.nms.data.FlagList;
import com.sec.internal.omanetapi.nms.data.Object;
import com.sec.internal.omanetapi.nms.data.PayloadPartInfo;
import java.io.File;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class BufferDBTranslationMcs extends BufferDBTranslation {
    private String LOG_TAG;

    public BufferDBTranslationMcs(MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(messageStoreClient, iCloudMessageManagerHelper);
        this.LOG_TAG = BufferDBTranslationMcs.class.getSimpleName();
        this.LOG_TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    protected List<HttpPostBody> getMcsThumbBody(Cursor cursor, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        String localFilePathForFtthumb = getLocalFilePathForFtthumb(cursor, str2);
        if (TextUtils.isEmpty(localFilePathForFtthumb)) {
            localFilePathForFtthumb = cursor.getString(cursor.getColumnIndexOrThrow(ImContract.CsSession.THUMBNAIL_PATH));
        }
        File file = !TextUtils.isEmpty(localFilePathForFtthumb) ? new File(localFilePathForFtthumb) : null;
        Log.i(this.LOG_TAG, "getMcsThumbBody filePath: " + str + " localThumbPath: " + localFilePathForFtthumb + " thumbfile:" + file);
        if (file != null && file.exists()) {
            String fileNameFromPath = FileUtils.getFileNameFromPath(localFilePathForFtthumb);
            if (TextUtils.isEmpty(fileNameFromPath)) {
                fileNameFromPath = Util.getRandomFileName("jpg");
            }
            String str3 = "form-data; name=\"file\"; filename=\"" + fileNameFromPath + CmcConstants.E_NUM_STR_QUOTE;
            String contentType = FileUtils.getContentType(file);
            if (TextUtils.isEmpty(contentType)) {
                contentType = "image/jpeg";
            }
            byte[] fileContentInBytes = getFileContentInBytes(localFilePathForFtthumb, CloudMessageBufferDBConstants.PayloadEncoding.None);
            if (fileContentInBytes != null && fileContentInBytes.length != 0 && !TextUtils.isEmpty(contentType)) {
                arrayList.add(new HttpPostBody(str3, contentType, fileContentInBytes));
            }
        }
        Log.i(this.LOG_TAG, " ThumbnailFile payload size: " + arrayList.size());
        if (localFilePathForFtthumb != null && !localFilePathForFtthumb.startsWith("content:")) {
            FileUtils.removeFile(localFilePathForFtthumb);
        }
        return arrayList;
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    public FileData getLocalFileData(BufferDBChangeParam bufferDBChangeParam) {
        FileData fileData = new FileData();
        IMSLog.i(this.LOG_TAG, "getLocalFileData  ");
        if (bufferDBChangeParam.mDBIndex == 12) {
            Cursor queryrcsMessageBufferDB = queryrcsMessageBufferDB(bufferDBChangeParam.mRowId);
            if (queryrcsMessageBufferDB != null) {
                try {
                    if (queryrcsMessageBufferDB.moveToFirst()) {
                        String string = queryrcsMessageBufferDB.getString(queryrcsMessageBufferDB.getColumnIndex("imdn_message_id"));
                        if (TextUtils.isEmpty(string)) {
                            Log.e(this.LOG_TAG, "getLocalFileData CorrelationId is empty! Do not upload");
                            queryrcsMessageBufferDB.close();
                            return null;
                        }
                        long ftRowFromTelephony = this.mTeleDBHelper.getFtRowFromTelephony(string);
                        if (ftRowFromTelephony == -1) {
                            Log.e(this.LOG_TAG, "Invalid rowId received for imdn id: " + string);
                            queryrcsMessageBufferDB.close();
                            return null;
                        }
                        Log.i(this.LOG_TAG, "row id : " + ftRowFromTelephony + " for imdn id:" + string);
                        Uri withAppendedId = ContentUris.withAppendedId(Uri.parse("content://im/ft_original/"), ftRowFromTelephony);
                        String string2 = queryrcsMessageBufferDB.getString(queryrcsMessageBufferDB.getColumnIndexOrThrow(ImContract.CsSession.FILE_NAME));
                        String copyFileToCacheFromUri = FileUtils.copyFileToCacheFromUri(this.mContext, string2, withAppendedId);
                        String str = "form-data; name=\"file-part\"; filename=\"" + string2 + CmcConstants.E_NUM_STR_QUOTE;
                        String string3 = queryrcsMessageBufferDB.getString(queryrcsMessageBufferDB.getColumnIndexOrThrow("content_type"));
                        if (TextUtils.isEmpty(copyFileToCacheFromUri)) {
                            copyFileToCacheFromUri = queryrcsMessageBufferDB.getString(queryrcsMessageBufferDB.getColumnIndexOrThrow(ImContract.CsSession.FILE_PATH));
                        }
                        fileData.fileName = string2;
                        fileData.filePath = copyFileToCacheFromUri;
                        fileData.contentType = string3;
                        fileData.contentDisposition = str;
                        queryrcsMessageBufferDB.close();
                        return fileData;
                    }
                } catch (Throwable th) {
                    try {
                        queryrcsMessageBufferDB.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryrcsMessageBufferDB != null) {
                queryrcsMessageBufferDB.close();
            }
        }
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    public Pair<Object, HttpPostBody> getRCSObjectPairFromCursor(BufferDBChangeParam bufferDBChangeParam, List<FileUploadResponse> list) {
        Pair<Object, HttpPostBody> chatObjectPairFromCursor;
        Log.i(this.LOG_TAG, "getRCSObjectPairFromCursor ::");
        int i = bufferDBChangeParam.mDBIndex;
        Pair<Object, HttpPostBody> pair = null;
        if (i == 1 || i == 12) {
            Cursor queryrcsMessageBufferDB = queryrcsMessageBufferDB(bufferDBChangeParam.mRowId);
            if (queryrcsMessageBufferDB != null) {
                try {
                    if (queryrcsMessageBufferDB.moveToFirst()) {
                        int i2 = queryrcsMessageBufferDB.getInt(queryrcsMessageBufferDB.getColumnIndex(ImContract.ChatItem.IS_FILE_TRANSFER));
                        Log.i(this.LOG_TAG, "getRCSObjectPairFromCursor :: isFt: " + i2);
                        if (i2 == 1) {
                            chatObjectPairFromCursor = getFtObjectPairFromCursor(queryrcsMessageBufferDB, list);
                        } else {
                            chatObjectPairFromCursor = getChatObjectPairFromCursor(queryrcsMessageBufferDB);
                        }
                        pair = chatObjectPairFromCursor;
                    }
                } catch (Throwable th) {
                    try {
                        queryrcsMessageBufferDB.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryrcsMessageBufferDB != null) {
                queryrcsMessageBufferDB.close();
            }
        }
        return pair;
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBSupportTranslation
    protected Pair<Object, HttpPostBody> getObjectPairFromCursor(Cursor cursor, BufferQueryDBTranslation.MessageType messageType) {
        return getObjectPairFromCursor(cursor, messageType, null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:(4:269|270|271|(28:273|117|(5:119|120|121|122|123)|129|130|131|132|133|(2:135|(1:146)(3:139|140|141))(3:218|219|(17:221|222|223|224|225|226|227|228|(1:230)|231|232|233|234|235|236|237|238)(4:252|253|254|255))|147|(2:149|(1:151))|152|(1:154)|155|(1:157)|159|161|162|163|(1:165)(2:174|(9:176|177|178|179|180|181|182|183|(1:185))(12:193|194|(2:196|(12:198|199|200|201|202|203|168|169|170|(1:81)(5:31|(5:33|(3:41|42|(6:44|(7:46|47|(1:49)(2:53|(1:55))|50|(1:52)|(2:37|38)(1:40)|39)(1:57)|56|(0)|(0)(0)|39))|35|(0)(0)|39)|68|69|(5:71|(1:73)|74|(1:76)|77)(1:80))|78|79))|211|203|168|169|170|(1:29)|81|78|79))|166|168|169|170|(0)|81|78|79))(1:104)|(29:111|(1:264)|117|(0)|129|130|131|132|133|(0)(0)|147|(0)|152|(0)|155|(0)|159|161|162|163|(0)(0)|166|168|169|170|(0)|81|78|79)|163|(0)(0)|166|168|169|170|(0)|81|78|79) */
    /* JADX WARN: Can't wrap try/catch for region: R(15:(12:(4:269|270|271|(28:273|117|(5:119|120|121|122|123)|129|130|131|132|133|(2:135|(1:146)(3:139|140|141))(3:218|219|(17:221|222|223|224|225|226|227|228|(1:230)|231|232|233|234|235|236|237|238)(4:252|253|254|255))|147|(2:149|(1:151))|152|(1:154)|155|(1:157)|159|161|162|163|(1:165)(2:174|(9:176|177|178|179|180|181|182|183|(1:185))(12:193|194|(2:196|(12:198|199|200|201|202|203|168|169|170|(1:81)(5:31|(5:33|(3:41|42|(6:44|(7:46|47|(1:49)(2:53|(1:55))|50|(1:52)|(2:37|38)(1:40)|39)(1:57)|56|(0)|(0)(0)|39))|35|(0)(0)|39)|68|69|(5:71|(1:73)|74|(1:76)|77)(1:80))|78|79))|211|203|168|169|170|(1:29)|81|78|79))|166|168|169|170|(0)|81|78|79))(1:104)|(29:111|(1:264)|117|(0)|129|130|131|132|133|(0)(0)|147|(0)|152|(0)|155|(0)|159|161|162|163|(0)(0)|166|168|169|170|(0)|81|78|79)|163|(0)(0)|166|168|169|170|(0)|81|78|79)|130|131|132|133|(0)(0)|147|(0)|152|(0)|155|(0)|159|161|162) */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0384, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0385, code lost:
    
        r13 = r13;
        r14 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x038d, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x01ff, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0200, code lost:
    
        r3 = r0;
        r13 = r13;
        r14 = r22;
        r4 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:0x015f A[Catch: all -> 0x0151, TRY_ENTER, TRY_LEAVE, TryCatch #20 {all -> 0x0151, blocks: (B:273:0x010a, B:119:0x015f, B:123:0x0164, B:108:0x012b, B:111:0x0134, B:113:0x013c, B:115:0x0142, B:264:0x014d), top: B:102:0x00f9 }] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01dd A[Catch: all -> 0x01ff, TRY_ENTER, TryCatch #14 {all -> 0x01ff, blocks: (B:135:0x01dd, B:137:0x01ea, B:146:0x01fb, B:149:0x026b, B:151:0x0273, B:154:0x02bd, B:157:0x02d4, B:230:0x0220), top: B:133:0x01db }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x026b A[Catch: all -> 0x01ff, TRY_ENTER, TryCatch #14 {all -> 0x01ff, blocks: (B:135:0x01dd, B:137:0x01ea, B:146:0x01fb, B:149:0x026b, B:151:0x0273, B:154:0x02bd, B:157:0x02d4, B:230:0x0220), top: B:133:0x01db }] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02bd A[Catch: all -> 0x01ff, TRY_ENTER, TRY_LEAVE, TryCatch #14 {all -> 0x01ff, blocks: (B:135:0x01dd, B:137:0x01ea, B:146:0x01fb, B:149:0x026b, B:151:0x0273, B:154:0x02bd, B:157:0x02d4, B:230:0x0220), top: B:133:0x01db }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02d4 A[Catch: all -> 0x01ff, TRY_ENTER, TRY_LEAVE, TryCatch #14 {all -> 0x01ff, blocks: (B:135:0x01dd, B:137:0x01ea, B:146:0x01fb, B:149:0x026b, B:151:0x0273, B:154:0x02bd, B:157:0x02d4, B:230:0x0220), top: B:133:0x01db }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02eb A[Catch: all -> 0x02ff, TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x02ff, blocks: (B:165:0x02eb, B:183:0x031f, B:185:0x032d), top: B:163:0x02e9 }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0307 A[Catch: all -> 0x038d, TRY_ENTER, TRY_LEAVE, TryCatch #18 {all -> 0x038d, blocks: (B:162:0x02e5, B:174:0x0307, B:193:0x034a, B:196:0x0350), top: B:161:0x02e5 }] */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0208 A[Catch: all -> 0x03b1, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x03b1, blocks: (B:131:0x01cb, B:147:0x025a, B:152:0x02ac, B:155:0x02c4, B:159:0x02db, B:218:0x0208, B:228:0x021b, B:234:0x0232, B:238:0x0257), top: B:130:0x01cb }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x052f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0532 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0501 A[Catch: all -> 0x0517, TRY_LEAVE, TryCatch #25 {all -> 0x0517, blocks: (B:42:0x046e, B:44:0x0474, B:46:0x0494, B:49:0x04c7, B:52:0x0501, B:53:0x04d0, B:55:0x04d8), top: B:41:0x046e }] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [int] */
    /* JADX WARN: Type inference failed for: r10v4, types: [int] */
    /* JADX WARN: Type inference failed for: r12v19, types: [com.sec.internal.constants.ims.servicemodules.im.ImConstants$Status] */
    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBSupportTranslation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected android.util.Pair<com.sec.internal.omanetapi.nms.data.Object, com.sec.internal.helper.httpclient.HttpPostBody> getObjectPairFromCursor(android.database.Cursor r27, com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferQueryDBTranslation.MessageType r28, java.util.List<com.sec.internal.omanetapi.common.data.FileUploadResponse> r29) {
        /*
            Method dump skipped, instructions count: 1437
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslationMcs.getObjectPairFromCursor(android.database.Cursor, com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferQueryDBTranslation$MessageType, java.util.List):android.util.Pair");
    }

    private void updatePayloadInfo(Object object, List<FileUploadResponse> list, int i, AttributeTranslator attributeTranslator) {
        IMSLog.i(this.LOG_TAG, "updatePayloadInfo ");
        if (list.isEmpty()) {
            IMSLog.e(this.LOG_TAG, "empty response data");
            return;
        }
        ArrayList arrayList = new ArrayList();
        FileUploadResponse fileUploadResponse = null;
        FileUploadResponse fileUploadResponse2 = (list.size() <= 1 || list.get(1) == null) ? null : list.get(1);
        if (list.size() > 0 && list.get(0) != null) {
            fileUploadResponse = list.get(0);
        }
        String str = i > 0 ? "render" : HttpPostBody.CONTENT_DISPOSITION_ATTACHMENT;
        if (fileUploadResponse2 != null) {
            IMSLog.i(this.LOG_TAG, "updatePayloadInfo fullpart updation");
            PayloadPartInfo payloadPartInfo = new PayloadPartInfo();
            payloadPartInfo.contentType = fileUploadResponse2.contentType;
            payloadPartInfo.contentDisposition = "attachment;filename=" + fileUploadResponse2.fileName;
            payloadPartInfo.disposition = str;
            payloadPartInfo.playingLength = i;
            payloadPartInfo.size = (long) fileUploadResponse2.size;
            try {
                payloadPartInfo.href = fileUploadResponse2.href;
                payloadPartInfo.fileIcon = new URI("cid:thumbnail_1");
            } catch (Exception e) {
                IMSLog.e(this.LOG_TAG, "File URL or URI exception, msg: " + e.getMessage());
            }
            arrayList.add(payloadPartInfo);
            attributeTranslator.setContentType(new String[]{fileUploadResponse2.contentType});
        }
        if (fileUploadResponse != null) {
            IMSLog.i(this.LOG_TAG, "updatePayloadInfo thumbPart updation");
            PayloadPartInfo payloadPartInfo2 = new PayloadPartInfo();
            payloadPartInfo2.contentType = fileUploadResponse.contentType;
            payloadPartInfo2.contentDisposition = "icon";
            payloadPartInfo2.disposition = str;
            payloadPartInfo2.contentId = "thumbnail_1";
            payloadPartInfo2.size = fileUploadResponse.size;
            try {
                payloadPartInfo2.href = fileUploadResponse.href;
            } catch (Exception e2) {
                IMSLog.e(this.LOG_TAG, "Thumbs URL or URI exception, msg: " + e2.getMessage());
            }
            arrayList.add(payloadPartInfo2);
        }
        object.payloadPart = new PayloadPartInfo[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            object.payloadPart[i2] = (PayloadPartInfo) arrayList.get(i2);
        }
    }

    protected void setTransToFrom(AttributeTranslator attributeTranslator, String str) {
        attributeTranslator.setDirection(new String[]{"In"});
        attributeTranslator.setFrom(new String[]{str});
        attributeTranslator.setTo(new String[]{this.mStoreClient.getPrerenceManager().getUserTelCtn()});
    }

    protected boolean setInformationFromSession(AttributeTranslator attributeTranslator, String str, long j) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            Cursor queryRCSSessionDB = queryRCSSessionDB(str);
            if (queryRCSSessionDB != null) {
                try {
                    if (queryRCSSessionDB.moveToFirst()) {
                        boolean z2 = queryRCSSessionDB.getInt(queryRCSSessionDB.getColumnIndexOrThrow("is_group_chat")) == 1;
                        String string = queryRCSSessionDB.getString(queryRCSSessionDB.getColumnIndex("conversation_id"));
                        Log.i(this.LOG_TAG, "getObjectPairFromCursor :: conversationId : " + string);
                        attributeTranslator.setConversationId(new String[]{string});
                        if (z2) {
                            String string2 = queryRCSSessionDB.getString(queryRCSSessionDB.getColumnIndex("session_uri"));
                            Log.d(this.LOG_TAG, "setGroupSessionURItoTO :: session_uri : " + string2);
                            if (j == ImDirection.OUTGOING.getId()) {
                                attributeTranslator.setTo(new String[]{string2});
                            }
                            attributeTranslator.setPAssertedService(new String[]{"urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session.group"});
                        } else {
                            attributeTranslator.setPAssertedService(new String[]{"urn:urn-7:3gpp-service.ims.icsi.oma.cpm.session"});
                        }
                        z = z2;
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
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x006f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String[] getAllToAddress(long r7, boolean r9) {
        /*
            r6 = this;
            android.database.Cursor r7 = r6.queryGroupSMS(r7)
            if (r7 == 0) goto L6c
            int r8 = r7.getCount()     // Catch: java.lang.Throwable -> L62
            if (r8 == 0) goto L6c
            int r8 = r7.getCount()     // Catch: java.lang.Throwable -> L62
            java.lang.String[] r0 = new java.lang.String[r8]     // Catch: java.lang.Throwable -> L62
            java.lang.String r1 = r6.LOG_TAG     // Catch: java.lang.Throwable -> L62
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L62
            r2.<init>()     // Catch: java.lang.Throwable -> L62
            java.lang.String r3 = "getAllToAddress added address:"
            r2.append(r3)     // Catch: java.lang.Throwable -> L62
            r2.append(r8)     // Catch: java.lang.Throwable -> L62
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Throwable -> L62
            android.util.Log.d(r1, r8)     // Catch: java.lang.Throwable -> L62
            r8 = 0
        L29:
            boolean r1 = r7.moveToNext()     // Catch: java.lang.Throwable -> L62
            if (r1 == 0) goto L6d
            java.lang.String r1 = "address"
            int r1 = r7.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L62
            java.lang.String r1 = r7.getString(r1)     // Catch: java.lang.Throwable -> L62
            java.lang.String r2 = "KR"
            if (r9 == 0) goto L47
            int r3 = r8 + 1
            java.lang.String r1 = r6.getE164FormatNumber(r1, r2)     // Catch: java.lang.Throwable -> L62
            r0[r8] = r1     // Catch: java.lang.Throwable -> L62
        L45:
            r8 = r3
            goto L29
        L47:
            int r3 = r8 + 1
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L62
            r4.<init>()     // Catch: java.lang.Throwable -> L62
            java.lang.String r5 = "tel:"
            r4.append(r5)     // Catch: java.lang.Throwable -> L62
            java.lang.String r1 = r6.getE164FormatNumber(r1, r2)     // Catch: java.lang.Throwable -> L62
            r4.append(r1)     // Catch: java.lang.Throwable -> L62
            java.lang.String r1 = r4.toString()     // Catch: java.lang.Throwable -> L62
            r0[r8] = r1     // Catch: java.lang.Throwable -> L62
            goto L45
        L62:
            r6 = move-exception
            r7.close()     // Catch: java.lang.Throwable -> L67
            goto L6b
        L67:
            r7 = move-exception
            r6.addSuppressed(r7)
        L6b:
            throw r6
        L6c:
            r0 = 0
        L6d:
            if (r7 == 0) goto L72
            r7.close()
        L72:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslationMcs.getAllToAddress(long, boolean):java.lang.String[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x01be  */
    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair<com.sec.internal.omanetapi.nms.data.Object, com.sec.internal.helper.httpclient.HttpPostBody> getSmsObjectPairFromCursor(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r17) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslationMcs.getSmsObjectPairFromCursor(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):android.util.Pair");
    }

    protected Object getMmsObjectFromPduAndAddress(Cursor cursor) {
        Object object = new Object();
        if (cursor != null && cursor.moveToFirst()) {
            object.flags = new FlagList();
            ArrayList<String> arrayList = new ArrayList<>();
            int i = cursor.getInt(cursor.getColumnIndex("read"));
            long j = cursor.getLong(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.MSG_BOX));
            if (i == 1 || j == 2) {
                arrayList.add(FlagNames.Seen);
            }
            checkAndAddFlags(cursor, arrayList);
            if (!arrayList.isEmpty()) {
                object.flags.flag = (String[]) arrayList.toArray(new String[0]);
            }
            String string = cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.TR_ID));
            if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isTrIdCorrelationId() && string != null && string.length() > 2) {
                object.correlationId = string.substring(2);
            } else {
                object.correlationId = cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.M_ID));
            }
            AttributeTranslator attributeTranslator = new AttributeTranslator(this.mStoreClient);
            attributeTranslator.setDate(new String[]{this.sFormatOfName.format(new Date(cursor.getLong(cursor.getColumnIndex("date"))))});
            String string2 = cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.SUB));
            if (!TextUtils.isEmpty(string2)) {
                attributeTranslator.setSubject(new String[]{new String(string2.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8)});
            }
            long j2 = cursor.getLong(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
            BufferDBSupportTranslation.MmsParticipant addrFromPduId = getAddrFromPduId(j2);
            if (j == 1) {
                attributeTranslator.setDirection(new String[]{"IN"});
                if (addrFromPduId.mFrom.isEmpty()) {
                    attributeTranslator.setFrom(new String[]{"unknown_address"});
                } else {
                    attributeTranslator.setFrom(new String[]{"tel:" + addrFromPduId.mFrom.stream().findFirst().get()});
                }
                attributeTranslator.setTo(new String[]{getTelE164FormatNumber(this.mStoreClient.getPrerenceManager().getUserCtn(), "KR")});
            } else if (j == 2) {
                attributeTranslator.setDirection(new String[]{"OUT"});
                if (addrFromPduId.mTo.size() != 0) {
                    HashSet hashSet = new HashSet();
                    Iterator<String> it = addrFromPduId.mTo.iterator();
                    while (it.hasNext()) {
                        hashSet.add(getTelE164FormatNumber(it.next(), "KR"));
                    }
                    attributeTranslator.setTo((String[]) hashSet.toArray(new String[hashSet.size()]));
                }
                attributeTranslator.setFrom(new String[]{getTelE164FormatNumber(this.mStoreClient.getPrerenceManager().getUserCtn(), "KR")});
            }
            attributeTranslator.setMessageContext(new String[]{"multimedia-message"});
            cursor.getInt(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.TEXT_ONLY));
            StringBuffer stringBuffer = new StringBuffer();
            Cursor queryPartsBufferDBUsingPduBufferId = queryPartsBufferDBUsingPduBufferId(j2);
            if (queryPartsBufferDBUsingPduBufferId != null) {
                try {
                    if (queryPartsBufferDBUsingPduBufferId.moveToFirst()) {
                        do {
                            if (MIMEContentType.PLAIN_TEXT.equalsIgnoreCase(queryPartsBufferDBUsingPduBufferId.getString(queryPartsBufferDBUsingPduBufferId.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpart.CT)))) {
                                stringBuffer.append(queryPartsBufferDBUsingPduBufferId.getString(queryPartsBufferDBUsingPduBufferId.getColumnIndex("text")));
                            }
                        } while (queryPartsBufferDBUsingPduBufferId.moveToNext());
                    }
                } catch (Throwable th) {
                    try {
                        queryPartsBufferDBUsingPduBufferId.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryPartsBufferDBUsingPduBufferId != null) {
                queryPartsBufferDBUsingPduBufferId.close();
            }
            String stringBuffer2 = stringBuffer.toString();
            if (!TextUtils.isEmpty(stringBuffer2)) {
                attributeTranslator.setTextContent(stringBuffer2);
            }
            if (cursor.getInt(cursor.getColumnIndexOrThrow("safe_message")) == 1) {
                attributeTranslator.setSafetyMessage(new String[]{CloudMessageProviderContract.JsonData.TRUE});
            }
            object.attributes = attributeTranslator.getAttributeList();
        }
        if (!TextUtils.isEmpty(object.correlationId)) {
            return object;
        }
        Log.e(this.LOG_TAG, "getMmsObjectFromPduAndAddress: correlation id is empty!!!");
        return null;
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    public Pair<Object, HttpPostBody> getMmsObjectPairFromCursor(BufferDBChangeParam bufferDBChangeParam) {
        Cursor querymmsPduBufferDB = querymmsPduBufferDB(bufferDBChangeParam.mRowId);
        try {
            Object mmsObjectFromPduAndAddress = getMmsObjectFromPduAndAddress(querymmsPduBufferDB);
            querymmsPduBufferDB.getInt(querymmsPduBufferDB.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpdu.TEXT_ONLY));
            HttpPostBody mmsPartHttpPayloadFromCursor = getMmsPartHttpPayloadFromCursor(queryPartsBufferDBUsingPduBufferId(bufferDBChangeParam.mRowId));
            querymmsPduBufferDB.close();
            return new Pair<>(mmsObjectFromPduAndAddress, mmsPartHttpPayloadFromCursor);
        } catch (Throwable th) {
            if (querymmsPduBufferDB != null) {
                try {
                    querymmsPduBufferDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBSupportTranslation
    protected HttpPostBody getMmsPartHttpPayloadFromCursor(Cursor cursor) {
        String str;
        HttpPostBody httpPostBody;
        ArrayList arrayList = new ArrayList();
        if (cursor != null) {
            try {
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(cursor.getColumnIndex("_id"));
                        String string2 = cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpart.CT));
                        if (!TextUtils.isEmpty(string2) && FileExtensionTranslator.isTranslationDefined(string2)) {
                            String string3 = cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpart.CL));
                            if (TextUtils.isEmpty(string3)) {
                                str = cursor.getString(cursor.getColumnIndex("name"));
                                if (TextUtils.isEmpty(str)) {
                                    str = Util.getRandomFileName(FileExtensionTranslator.translate(string2));
                                }
                            } else {
                                str = new String(string3.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
                            }
                            if (!TextUtils.isEmpty(str) && str.lastIndexOf(".") == -1) {
                                str = str + "." + FileExtensionTranslator.translate(string2);
                            }
                            String str2 = "attachment;filename=\"" + str + CmcConstants.E_NUM_STR_QUOTE;
                            String string4 = cursor.getString(cursor.getColumnIndex(CloudMessageProviderContract.BufferDBMMSpart.CID));
                            if (!TextUtils.isEmpty(string4)) {
                                string4 = new String(string4.getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
                            }
                            if (!ITelephonyDBColumns.xml_smil_type.equalsIgnoreCase(string2) && !MIMEContentType.PLAIN_TEXT.equalsIgnoreCase(string2)) {
                                byte[] dataFromPartFile = getDataFromPartFile(Long.parseLong(string));
                                if (dataFromPartFile != null) {
                                    httpPostBody = new HttpPostBody(str2, string2, dataFromPartFile, string4);
                                    httpPostBody.setContentTransferEncoding(HttpPostBody.CONTENT_TRANSFER_ENCODING_BINARY);
                                    arrayList.add(httpPostBody);
                                }
                            }
                            httpPostBody = new HttpPostBody(str2, string2, cursor.getString(cursor.getColumnIndex("text")), string4);
                            arrayList.add(httpPostBody);
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

    private Set<String> getTelAddrFromParticipantTable(String str) {
        HashSet hashSet = new HashSet();
        Cursor queryRCSParticipantDB = queryRCSParticipantDB(str);
        if (queryRCSParticipantDB != null) {
            try {
                if (queryRCSParticipantDB.moveToFirst()) {
                    do {
                        String string = queryRCSParticipantDB.getString(queryRCSParticipantDB.getColumnIndex("uri"));
                        if (!TextUtils.isEmpty(string)) {
                            hashSet.add(string);
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

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    public ParamObjectUpload getThumbnailPart(BufferDBChangeParam bufferDBChangeParam) {
        Log.i(this.LOG_TAG, "getThumbNailPart " + bufferDBChangeParam);
        List<HttpPostBody> arrayList = new ArrayList<>();
        if (bufferDBChangeParam.mDBIndex == 12) {
            Cursor queryrcsMessageBufferDB = queryrcsMessageBufferDB(bufferDBChangeParam.mRowId);
            if (queryrcsMessageBufferDB != null) {
                try {
                    if (!queryrcsMessageBufferDB.moveToFirst()) {
                        IMSLog.e(this.LOG_TAG, "getAllParts cursor is null, shouldn't occur");
                        queryrcsMessageBufferDB.close();
                        return null;
                    }
                    String string = queryrcsMessageBufferDB.getString(queryrcsMessageBufferDB.getColumnIndexOrThrow("imdn_message_id"));
                    if (TextUtils.isEmpty(string)) {
                        IMSLog.i(this.LOG_TAG, "getThumbNailPart CorrelationId Empty, do not process");
                        queryrcsMessageBufferDB.close();
                        return null;
                    }
                    String ftFileDataFromTelephony = this.mTeleDBHelper.getFtFileDataFromTelephony(string, ImContract.CsSession.FILE_PATH);
                    String ftFileDataFromTelephony2 = this.mTeleDBHelper.getFtFileDataFromTelephony(string, ImContract.CsSession.THUMBNAIL_PATH);
                    if (!TextUtils.isEmpty(ftFileDataFromTelephony2)) {
                        arrayList = getMcsThumbBody(queryrcsMessageBufferDB, ftFileDataFromTelephony, ftFileDataFromTelephony2);
                    }
                    if (!arrayList.isEmpty()) {
                        ParamObjectUpload paramObjectUpload = new ParamObjectUpload(new Pair(null, new HttpPostBody(arrayList)), bufferDBChangeParam);
                        IMSLog.i(this.LOG_TAG, "thumb body is added!!!!");
                        queryrcsMessageBufferDB.close();
                        return paramObjectUpload;
                    }
                } catch (Throwable th) {
                    try {
                        queryrcsMessageBufferDB.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryrcsMessageBufferDB != null) {
                queryrcsMessageBufferDB.close();
            }
        }
        return null;
    }

    protected String getLocalFilePathForFtthumb(Cursor cursor, String str) {
        String string = cursor.getString(cursor.getColumnIndex("imdn_message_id"));
        if (TextUtils.isEmpty(string)) {
            Log.e(this.LOG_TAG, "getLocalFilePathForFtthumb CorrelationId is empty! Do not upload");
            return null;
        }
        long ftRowFromTelephony = this.mTeleDBHelper.getFtRowFromTelephony(string);
        if (ftRowFromTelephony == -1) {
            Log.e(this.LOG_TAG, "getLocalFilePathForFtthumb Invalid rowId received for imdn id: " + string);
            return null;
        }
        Log.i(this.LOG_TAG, "row id : " + ftRowFromTelephony + " for imdn id:" + string);
        return FileUtils.copyFileToCacheFromUri(this.mContext, FileUtils.getFileNameFromPath(str), ContentUris.withAppendedId(Uri.parse("content://im/ft_thumbnail/"), ftRowFromTelephony));
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    public boolean needToSkipDownloadLargeFileAndUpdateDB(long j, int i, int i2, String str, boolean z) {
        Cursor queryrcsMessageBufferDB = queryrcsMessageBufferDB(j);
        if (queryrcsMessageBufferDB != null) {
            try {
                if (queryrcsMessageBufferDB.moveToFirst()) {
                    if (!(queryrcsMessageBufferDB.getInt(queryrcsMessageBufferDB.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER)) == 1)) {
                        Log.i(this.LOG_TAG, "needToSkipDownloadLargeFileAndUpdateDB isFt false");
                        queryrcsMessageBufferDB.close();
                        return false;
                    }
                    int i3 = queryrcsMessageBufferDB.getInt(queryrcsMessageBufferDB.getColumnIndexOrThrow("status"));
                    boolean z2 = queryrcsMessageBufferDB.getInt(queryrcsMessageBufferDB.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)) == CloudMessageBufferDBConstants.ActionStatusFlag.Deleted.getId();
                    long j2 = queryrcsMessageBufferDB.getLong(queryrcsMessageBufferDB.getColumnIndexOrThrow(ImContract.CsSession.FILE_SIZE));
                    int i4 = queryrcsMessageBufferDB.getInt(queryrcsMessageBufferDB.getColumnIndexOrThrow("direction"));
                    boolean isPayloadExpired = Util.isPayloadExpired(str);
                    boolean isEmpty = TextUtils.isEmpty(queryrcsMessageBufferDB.getString(queryrcsMessageBufferDB.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTTHUMB)));
                    Log.i(this.LOG_TAG, "needToSkipDownloadLargeFileAndUpdateDB fileSize: " + j2 + ", isExpired: " + isPayloadExpired + ", isThumbnailNotPresent: " + isEmpty + ", msgStatus = " + i3 + " deleted: " + z2);
                    if (!z2 && i3 != ImConstants.Status.CANCELLATION.getId()) {
                        if (isPayloadExpired) {
                            updateRcsMessageBufferDB(j, i, i2);
                            queryrcsMessageBufferDB.close();
                            return true;
                        }
                        if (z) {
                            queryrcsMessageBufferDB.close();
                            return false;
                        }
                        if (i4 == ImDirection.INCOMING.getId() && CmsUtil.isLargeSizeFile(this.mStoreClient, j2)) {
                            if (isEmpty) {
                                updateRcsMessageBufferDB(j, i, i2);
                            }
                            queryrcsMessageBufferDB.close();
                            return true;
                        }
                    }
                    queryrcsMessageBufferDB.close();
                    return true;
                }
            } finally {
            }
        }
        if (queryrcsMessageBufferDB != null) {
            queryrcsMessageBufferDB.close();
        }
        return false;
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    public String getImdnResUrl(long j) {
        Cursor queryRCSMessageDBUsingRowId = queryRCSMessageDBUsingRowId(j);
        if (queryRCSMessageDBUsingRowId != null) {
            try {
                if (queryRCSMessageDBUsingRowId.moveToFirst()) {
                    String string = queryRCSMessageDBUsingRowId.getString(queryRCSMessageDBUsingRowId.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL));
                    Log.i(this.LOG_TAG, "getImdnResUrl resUrl: " + IMSLog.numberChecker(string));
                    if (string != null) {
                        string = string + "/imdns";
                    }
                    queryRCSMessageDBUsingRowId.close();
                    return string;
                }
            } catch (Throwable th) {
                try {
                    queryRCSMessageDBUsingRowId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryRCSMessageDBUsingRowId == null) {
            return null;
        }
        queryRCSMessageDBUsingRowId.close();
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004e, code lost:
    
        if (r0 == com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.ActionStatusFlag.Deleted.getId()) goto L10;
     */
    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isMessageStatusCancelledorDeleted(long r4) {
        /*
            r3 = this;
            android.database.Cursor r4 = r3.queryRCSMessageDBUsingRowId(r4)
            if (r4 == 0) goto L5f
            boolean r5 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L55
            if (r5 == 0) goto L5f
            java.lang.String r5 = "status"
            int r5 = r4.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L55
            int r5 = r4.getInt(r5)     // Catch: java.lang.Throwable -> L55
            java.lang.String r0 = "syncaction"
            int r0 = r4.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L55
            int r0 = r4.getInt(r0)     // Catch: java.lang.Throwable -> L55
            java.lang.String r3 = r3.LOG_TAG     // Catch: java.lang.Throwable -> L55
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L55
            r1.<init>()     // Catch: java.lang.Throwable -> L55
            java.lang.String r2 = "getMessageStatus resUrl: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L55
            r1.append(r5)     // Catch: java.lang.Throwable -> L55
            java.lang.String r2 = " syncAction: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L55
            r1.append(r0)     // Catch: java.lang.Throwable -> L55
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L55
            android.util.Log.i(r3, r1)     // Catch: java.lang.Throwable -> L55
            com.sec.internal.constants.ims.servicemodules.im.ImConstants$Status r3 = com.sec.internal.constants.ims.servicemodules.im.ImConstants.Status.CANCELLATION     // Catch: java.lang.Throwable -> L55
            int r3 = r3.getId()     // Catch: java.lang.Throwable -> L55
            if (r5 == r3) goto L50
            com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants$ActionStatusFlag r3 = com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.ActionStatusFlag.Deleted     // Catch: java.lang.Throwable -> L55
            int r3 = r3.getId()     // Catch: java.lang.Throwable -> L55
            if (r0 != r3) goto L5f
        L50:
            r4.close()
            r3 = 1
            return r3
        L55:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L5a
            goto L5e
        L5a:
            r4 = move-exception
            r3.addSuppressed(r4)
        L5e:
            throw r3
        L5f:
            if (r4 == 0) goto L64
            r4.close()
        L64:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslationMcs.isMessageStatusCancelledorDeleted(long):boolean");
    }

    @Override // com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation
    public Pair<Object, HttpPostBody> getGroupSMSForSteadyUpload(BufferDBChangeParam bufferDBChangeParam) {
        String[] strArr;
        Cursor querySMSBufferDB = querySMSBufferDB(bufferDBChangeParam.mRowId);
        Pair<Object, HttpPostBody> pair = null;
        if (querySMSBufferDB != null) {
            try {
                if (querySMSBufferDB.moveToFirst()) {
                    Object object = new Object();
                    long j = querySMSBufferDB.getInt(querySMSBufferDB.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBSMS.GROUP_ID));
                    if (j == 0) {
                        strArr = null;
                    } else {
                        if (querySMSBufferDB.getInt(querySMSBufferDB.getColumnIndexOrThrow("hidden")) == 1) {
                            Log.e(this.LOG_TAG, "getSmsObjectPairFromCursor hidden msg - shouldn't have been added for upload");
                            querySMSBufferDB.close();
                            return null;
                        }
                        strArr = getAllToAddress(j, true);
                    }
                    AttributeTranslator attributeTranslator = new AttributeTranslator(this.mStoreClient);
                    attributeTranslator.setTo(strArr);
                    attributeTranslator.setTextContent(querySMSBufferDB.getString(querySMSBufferDB.getColumnIndex("body")));
                    object.attributes = attributeTranslator.getAttributeList();
                    pair = new Pair<>(object, null);
                }
            } catch (Throwable th) {
                try {
                    querySMSBufferDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySMSBufferDB != null) {
            querySMSBufferDB.close();
        }
        return pair;
    }

    public void checkAndAddFlags(Cursor cursor, ArrayList<String> arrayList) {
        if (cursor.getInt(cursor.getColumnIndex("locked")) == 1) {
            arrayList.add(FlagNames.Starred);
        }
        if (cursor.getInt(cursor.getColumnIndex("spam_type")) == 1) {
            arrayList.add(FlagNames.Spam);
        }
    }
}
