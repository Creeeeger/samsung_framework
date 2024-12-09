package com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.helper.httpclient.HttpPostBody;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.nms.data.AttributeTranslator;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.data.VvmServiceProfile;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamObjectUpload;
import com.sec.internal.ims.cmstore.params.ParamVvmUpdate;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.common.data.FileUploadResponse;
import com.sec.internal.omanetapi.file.FileData;
import com.sec.internal.omanetapi.nms.data.Object;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class BufferDBTranslation extends BufferDBSupportTranslation {
    private String LOG_TAG;

    public Pair<Object, HttpPostBody> getGroupSMSForSteadyUpload(BufferDBChangeParam bufferDBChangeParam) {
        return null;
    }

    public String getImdnResUrl(long j) {
        return null;
    }

    public FileData getLocalFileData(BufferDBChangeParam bufferDBChangeParam) {
        return null;
    }

    public Pair<Object, HttpPostBody> getRCSFtPairFromCursor(BufferDBChangeParam bufferDBChangeParam) {
        return null;
    }

    public ParamObjectUpload getThumbnailPart(BufferDBChangeParam bufferDBChangeParam) {
        return null;
    }

    public boolean isMessageStatusCancelledorDeleted(long j) {
        return false;
    }

    public boolean needToSkipDownloadLargeFileAndUpdateDB(long j, int i, int i2, String str, boolean z) {
        return false;
    }

    public BufferDBTranslation(MessageStoreClient messageStoreClient, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(messageStoreClient, iCloudMessageManagerHelper);
        this.LOG_TAG = BufferDBTranslation.class.getSimpleName();
        this.LOG_TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    public void resetDateFormat() {
        this.sFormatOfName = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getDateFormat();
        String str = this.LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("resetDateFormat sFormatOfName is null: ");
        sb.append(this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getDateFormat() == null);
        Log.i(str, sb.toString());
    }

    public String getSearchCursorByLine(String str, SyncMsgType syncMsgType) {
        Uri parse;
        Log.d(this.LOG_TAG, "getSearchCursorByLine: line " + IMSLog.checker(str) + " type: " + syncMsgType);
        if (this.mStoreClient.getClientID() == 1) {
            parse = Uri.parse(BufferQueryDBTranslation.CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MULTILINESTATUS + "/slot2/" + str);
        } else {
            parse = Uri.parse(BufferQueryDBTranslation.CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MULTILINESTATUS + "/" + str);
        }
        Cursor query = this.mResolver.query(parse, null, null, null, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    do {
                        String string = query.getString(query.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCCURSOR));
                        if (syncMsgType.equals(SyncMsgType.valueOf(query.getInt(query.getColumnIndex("messagetype"))))) {
                            this.mStoreClient.getPrerenceManager().saveObjectSearchCursor(string);
                            query.close();
                            return string;
                        }
                    } while (query.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (query == null) {
            return "";
        }
        query.close();
        return "";
    }

    public OMASyncEventType getInitialSyncStatusByLine(String str, SyncMsgType syncMsgType, String str2) {
        Uri parse;
        Log.d(this.LOG_TAG, "getInitialSyncStatusByLine: line " + IMSLog.checker(str) + " type: " + syncMsgType + " column:" + str2);
        if (this.mStoreClient.getClientID() == 1) {
            parse = Uri.parse(BufferQueryDBTranslation.CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MULTILINESTATUS + "/slot2/" + str);
        } else {
            parse = Uri.parse(BufferQueryDBTranslation.CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MULTILINESTATUS + "/" + str);
        }
        Cursor query = this.mResolver.query(parse, null, null, null, null);
        try {
            if (query != null) {
                if (query.moveToFirst()) {
                    int i = query.getInt(query.getColumnIndex(str2));
                    if (syncMsgType.equals(SyncMsgType.valueOf(query.getInt(query.getColumnIndex("messagetype")))) && str2.equals(CloudMessageProviderContract.BufferDBExtensionBase.INITSYNCSTATUS)) {
                        this.mStoreClient.getPrerenceManager().saveInitialSyncStatus(i);
                    }
                    OMASyncEventType valueOf = OMASyncEventType.valueOf(i);
                    query.close();
                    return valueOf;
                }
            } else {
                EventLogHelper.infoLogAndAddWoPhoneId(this.LOG_TAG, this.mPhoneId, "getInitialSyncStatusByLine: NOT_FOUND");
            }
            if (query != null) {
                query.close();
            }
            return OMASyncEventType.DEFAULT;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public void updateSyncStatusByLine(String str, SyncMsgType syncMsgType, String str2, OMASyncEventType oMASyncEventType) {
        Uri parse;
        String str3;
        if (this.mStoreClient.getClientID() == 1) {
            parse = Uri.parse(BufferQueryDBTranslation.CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MULTILINESTATUS + "/slot2/" + str);
        } else {
            parse = Uri.parse(BufferQueryDBTranslation.CONTENT_URI_BUFFERDB + "/" + CloudMessageProviderContract.CONTENTPRDR_MULTILINESTATUS + "/" + str);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(str2, Integer.valueOf(oMASyncEventType.getId()));
        int i = 0;
        try {
            i = this.mResolver.update(parse, contentValues, null, null);
            Log.d(this.LOG_TAG, "rows Updated " + i);
        } catch (SQLiteException e) {
            Log.e(this.LOG_TAG, "Catch a SQLiteException when update: ", e);
        }
        String str4 = this.LOG_TAG;
        int i2 = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("updateSyncStatusByLine: line ");
        if (TextUtils.isEmpty(str)) {
            str3 = "empty line";
        } else {
            str3 = str.length() + IMSLog.checker(str);
        }
        sb.append(str3);
        sb.append(" type: ");
        sb.append(syncMsgType);
        sb.append(" column:");
        sb.append(str2);
        sb.append(" eventType ");
        sb.append(oMASyncEventType);
        sb.append("rowsUpdated ");
        sb.append(i);
        EventLogHelper.infoLogAndAddWoPhoneId(str4, i2, sb.toString());
        IMSLog.c(LogClass.MCS_INIT_SYNC_STATUS, this.mPhoneId + "," + BaseSyncHandler.SyncOperation.SYNC_MESSAGE_STATUS.ordinal() + "," + oMASyncEventType);
    }

    public Pair<String, String> getObjectIdFlagNamePairFromBufDb(BufferDBChangeParam bufferDBChangeParam) {
        return getFlagNamePairFromBufDb(bufferDBChangeParam, false);
    }

    public Pair<String, String> getResourceUrlFlagNamePairFromBufDb(BufferDBChangeParam bufferDBChangeParam) {
        return getFlagNamePairFromBufDb(bufferDBChangeParam, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair<java.lang.String, java.lang.String> getFlagNamePairFromBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getFlagNamePairFromBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam, boolean):android.util.Pair");
    }

    public String getSummaryObjectIdFromBufDb(BufferDBChangeParam bufferDBChangeParam) {
        Cursor querySummaryDB = querySummaryDB(bufferDBChangeParam.mRowId);
        if (querySummaryDB != null) {
            try {
                if (querySummaryDB.moveToFirst()) {
                    String string = querySummaryDB.getString(querySummaryDB.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL));
                    if (string != null) {
                        String substring = string.substring(string.lastIndexOf(47) + 1);
                        querySummaryDB.close();
                        return substring;
                    }
                    querySummaryDB.close();
                    return "";
                }
            } catch (Throwable th) {
                try {
                    querySummaryDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySummaryDB != null) {
            querySummaryDB.close();
        }
        return "";
    }

    public String getSmsObjectIdFromBufDb(BufferDBChangeParam bufferDBChangeParam) {
        Cursor querySMSBufferDB = querySMSBufferDB(bufferDBChangeParam.mRowId);
        if (querySMSBufferDB != null) {
            try {
                if (querySMSBufferDB.moveToFirst()) {
                    String string = querySMSBufferDB.getString(querySMSBufferDB.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL));
                    if (string != null) {
                        String substring = string.substring(string.lastIndexOf(47) + 1);
                        querySMSBufferDB.close();
                        return substring;
                    }
                    querySMSBufferDB.close();
                    return "";
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
        return "";
    }

    public String getVVMObjectIdFromBufDb(BufferDBChangeParam bufferDBChangeParam) {
        Cursor queryVvmDataBufferDB = queryVvmDataBufferDB(bufferDBChangeParam.mRowId);
        if (queryVvmDataBufferDB != null) {
            try {
                if (queryVvmDataBufferDB.moveToFirst()) {
                    String string = queryVvmDataBufferDB.getString(queryVvmDataBufferDB.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL));
                    if (string != null) {
                        String substring = string.substring(string.lastIndexOf(47) + 1);
                        queryVvmDataBufferDB.close();
                        return substring;
                    }
                    queryVvmDataBufferDB.close();
                    return "";
                }
            } catch (Throwable th) {
                try {
                    queryVvmDataBufferDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryVvmDataBufferDB != null) {
            queryVvmDataBufferDB.close();
        }
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getVVMpayLoadUrlFromBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r3) {
        /*
            r2 = this;
            long r0 = r3.mRowId
            android.database.Cursor r2 = r2.queryVvmDataBufferDB(r0)
            if (r2 == 0) goto L2b
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L21
            if (r3 == 0) goto L2b
            java.lang.String r3 = "payloadurl"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L21
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L21
            if (r3 != 0) goto L2c
            java.lang.String r3 = ""
            r2.close()
            return r3
        L21:
            r3 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L26
            goto L2a
        L26:
            r2 = move-exception
            r3.addSuppressed(r2)
        L2a:
            throw r3
        L2b:
            r3 = 0
        L2c:
            if (r2 == 0) goto L31
            r2.close()
        L31:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getVVMpayLoadUrlFromBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getVVMGreetingpayLoadUrlFromBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r3) {
        /*
            r2 = this;
            long r0 = r3.mRowId
            android.database.Cursor r2 = r2.queryVvmGreetingBufferDB(r0)
            if (r2 == 0) goto L2b
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L21
            if (r3 == 0) goto L2b
            java.lang.String r3 = "payloadurl"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L21
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L21
            if (r3 != 0) goto L2c
            java.lang.String r3 = ""
            r2.close()
            return r3
        L21:
            r3 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L26
            goto L2a
        L26:
            r2 = move-exception
            r3.addSuppressed(r2)
        L2a:
            throw r3
        L2b:
            r3 = 0
        L2c:
            if (r2 == 0) goto L31
            r2.close()
        L31:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getVVMGreetingpayLoadUrlFromBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):java.lang.String");
    }

    public ParamVvmUpdate.VvmTypeChange getVVMServiceProfileFromBufDb(BufferDBChangeParam bufferDBChangeParam, VvmServiceProfile vvmServiceProfile) {
        ParamVvmUpdate.VvmTypeChange vvmTypeChange = null;
        String[] strArr = null;
        vvmTypeChange = null;
        vvmTypeChange = null;
        vvmTypeChange = null;
        vvmTypeChange = null;
        vvmTypeChange = null;
        vvmTypeChange = null;
        vvmTypeChange = null;
        vvmTypeChange = null;
        vvmTypeChange = null;
        if (bufferDBChangeParam != null && vvmServiceProfile != null) {
            int i = bufferDBChangeParam.mDBIndex;
            long j = bufferDBChangeParam.mRowId;
            if (i == 17) {
                Cursor queryVvmDataBufferDB = queryVvmDataBufferDB(j);
                if (queryVvmDataBufferDB != null) {
                    try {
                        if (queryVvmDataBufferDB.moveToFirst()) {
                            String string = queryVvmDataBufferDB.getString(queryVvmDataBufferDB.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL));
                            String string2 = queryVvmDataBufferDB.getString(queryVvmDataBufferDB.getColumnIndexOrThrow(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_LANGUAGE));
                            AttributeTranslator attributeTranslator = new AttributeTranslator(this.mStoreClient);
                            attributeTranslator.setV2tLanguage(new String[]{string2});
                            attributeTranslator.setV2tResourceURL(new String[]{encodeResURL(string)});
                            ParamVvmUpdate.VvmTypeChange vvmTypeChange2 = ParamVvmUpdate.VvmTypeChange.ADHOC_V2T;
                            vvmServiceProfile.attributes = attributeTranslator.getAttributeList();
                            vvmTypeChange = vvmTypeChange2;
                        }
                    } catch (Throwable th) {
                        try {
                            queryVvmDataBufferDB.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (queryVvmDataBufferDB != null) {
                    queryVvmDataBufferDB.close();
                }
            } else if (i == 19) {
                Cursor queryVvmPinBufferDB = queryVvmPinBufferDB(j);
                if (queryVvmPinBufferDB != null) {
                    try {
                        if (queryVvmPinBufferDB.moveToFirst()) {
                            String string3 = queryVvmPinBufferDB.getString(queryVvmPinBufferDB.getColumnIndex(CloudMessageProviderContract.VVMPin.OLDPWD));
                            String string4 = queryVvmPinBufferDB.getString(queryVvmPinBufferDB.getColumnIndex(CloudMessageProviderContract.VVMPin.NEWPWD));
                            AttributeTranslator attributeTranslator2 = new AttributeTranslator(this.mStoreClient);
                            attributeTranslator2.setOldPwd(new String[]{string3});
                            attributeTranslator2.setPwd(new String[]{string4});
                            vvmServiceProfile.attributes = attributeTranslator2.getAttributeList();
                        }
                    } catch (Throwable th3) {
                        try {
                            queryVvmPinBufferDB.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                }
                if (queryVvmPinBufferDB != null) {
                    queryVvmPinBufferDB.close();
                }
            } else if (i == 20) {
                Cursor queryVvmProfileBufferDB = queryVvmProfileBufferDB(j);
                if (queryVvmProfileBufferDB != null) {
                    try {
                        if (queryVvmProfileBufferDB.moveToFirst()) {
                            int i2 = queryVvmProfileBufferDB.getInt(queryVvmProfileBufferDB.getColumnIndex(CloudMessageProviderContract.VVMAccountInfoColumns.PROFILE_CHANGETYPE));
                            AttributeTranslator attributeTranslator3 = new AttributeTranslator(this.mStoreClient);
                            ParamVvmUpdate.VvmTypeChange vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.VOICEMAILTOTEXT;
                            if (vvmTypeChange3.getId() == i2) {
                                String string5 = queryVvmProfileBufferDB.getString(queryVvmProfileBufferDB.getColumnIndex(CloudMessageProviderContract.VVMAccountInfoColumns.EMAIL_ADDR1));
                                String string6 = queryVvmProfileBufferDB.getString(queryVvmProfileBufferDB.getColumnIndex(CloudMessageProviderContract.VVMAccountInfoColumns.EMAIL_ADDR2));
                                if (string5 != null && string6 != null) {
                                    strArr = new String[]{string5, string6};
                                } else if (string5 != null) {
                                    strArr = new String[]{string5};
                                } else if (string6 != null) {
                                    strArr = new String[]{string6};
                                }
                                if (strArr != null) {
                                    attributeTranslator3.setEmailAddress(strArr);
                                }
                            } else {
                                vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.ACTIVATE;
                                if (vvmTypeChange3.getId() == i2) {
                                    attributeTranslator3.setVVMOn(new String[]{CloudMessageProviderContract.JsonData.TRUE});
                                } else {
                                    vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.DEACTIVATE;
                                    if (vvmTypeChange3.getId() == i2) {
                                        attributeTranslator3.setVVMOn(new String[]{ConfigConstants.VALUE.INFO_COMPLETED});
                                    } else {
                                        vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.FULLPROFILE;
                                        if (vvmTypeChange3.getId() != i2) {
                                            vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.NUTOFF;
                                            if (vvmTypeChange3.getId() == i2) {
                                                attributeTranslator3.setNUT(new String[]{ConfigConstants.VALUE.INFO_COMPLETED});
                                            } else {
                                                vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.NUTON;
                                                if (vvmTypeChange3.getId() == i2) {
                                                    attributeTranslator3.setNUT(new String[]{CloudMessageProviderContract.JsonData.TRUE});
                                                } else {
                                                    vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.V2TLANGUAGE;
                                                    if (vvmTypeChange3.getId() == i2) {
                                                        attributeTranslator3.setV2tLanguage(new String[]{queryVvmProfileBufferDB.getString(queryVvmProfileBufferDB.getColumnIndex(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_LANGUAGE))});
                                                    } else {
                                                        vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.V2T_SMS;
                                                        if (vvmTypeChange3.getId() == i2) {
                                                            attributeTranslator3.setV2tSMS(new String[]{queryVvmProfileBufferDB.getString(queryVvmProfileBufferDB.getColumnIndex(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_SMS))});
                                                        } else {
                                                            vvmTypeChange3 = ParamVvmUpdate.VvmTypeChange.V2T_EMAIL;
                                                            if (vvmTypeChange3.getId() == i2) {
                                                                attributeTranslator3.setV2tEmail(new String[]{queryVvmProfileBufferDB.getString(queryVvmProfileBufferDB.getColumnIndex(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_EMAIL))});
                                                            }
                                                            vvmServiceProfile.attributes = attributeTranslator3.getAttributeList();
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            vvmTypeChange = vvmTypeChange3;
                            vvmServiceProfile.attributes = attributeTranslator3.getAttributeList();
                        }
                    } catch (Throwable th5) {
                        try {
                            queryVvmProfileBufferDB.close();
                        } catch (Throwable th6) {
                            th5.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
                if (queryVvmProfileBufferDB != null) {
                    queryVvmProfileBufferDB.close();
                }
            }
        }
        return vvmTypeChange;
    }

    public Pair<Object, HttpPostBody> getVVMGreetingObjectPairFromBufDb(BufferDBChangeParam bufferDBChangeParam) {
        return new Pair<>(getVvmObjectFromDB(bufferDBChangeParam), getVvmGreetingBodyFromDB(bufferDBChangeParam));
    }

    public Pair<String, List<String>> getObjectIdPartIdFromRCSBufDb(BufferDBChangeParam bufferDBChangeParam) {
        ArrayList arrayList = new ArrayList();
        Cursor queryRCSMessageDBUsingRowId = queryRCSMessageDBUsingRowId(bufferDBChangeParam.mRowId);
        String str = "";
        if (queryRCSMessageDBUsingRowId != null) {
            try {
                if (queryRCSMessageDBUsingRowId.moveToFirst()) {
                    String string = queryRCSMessageDBUsingRowId.getString(queryRCSMessageDBUsingRowId.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL));
                    Log.i(this.LOG_TAG, "resUrl: " + IMSLog.checker(string));
                    if (string != null) {
                        str = string.substring(string.lastIndexOf(47) + 1);
                    }
                    String string2 = queryRCSMessageDBUsingRowId.getString(queryRCSMessageDBUsingRowId.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADPARTFULL));
                    if (string2 != null) {
                        arrayList.add(string2.substring(string2.lastIndexOf(47) + 1));
                    }
                }
            } catch (Throwable th) {
                if (queryRCSMessageDBUsingRowId != null) {
                    try {
                        queryRCSMessageDBUsingRowId.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (queryRCSMessageDBUsingRowId != null) {
            queryRCSMessageDBUsingRowId.close();
        }
        return new Pair<>(str, arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair<java.lang.String, java.lang.String> getPayloadPartandAllPayloadUrlFromRCSBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r3) {
        /*
            r2 = this;
            long r0 = r3.mRowId
            android.database.Cursor r2 = r2.queryRCSMessageDBUsingRowId(r0)
            if (r2 == 0) goto L2f
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Throwable -> L25
            if (r3 == 0) goto L2f
            java.lang.String r3 = "payloadpartFull"
            int r3 = r2.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L25
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L25
            java.lang.String r0 = "payloadurl"
            int r0 = r2.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L25
            java.lang.String r0 = r2.getString(r0)     // Catch: java.lang.Throwable -> L25
            goto L32
        L25:
            r3 = move-exception
            r2.close()     // Catch: java.lang.Throwable -> L2a
            goto L2e
        L2a:
            r2 = move-exception
            r3.addSuppressed(r2)
        L2e:
            throw r3
        L2f:
            java.lang.String r3 = ""
            r0 = r3
        L32:
            if (r2 == 0) goto L37
            r2.close()
        L37:
            android.util.Pair r2 = new android.util.Pair
            r2.<init>(r3, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getPayloadPartandAllPayloadUrlFromRCSBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair<java.lang.String, java.lang.String> getAllPayloadUrlFromRCSBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r4) {
        /*
            r3 = this;
            long r0 = r4.mRowId
            android.database.Cursor r3 = r3.queryRCSMessageDBUsingRowId(r0)
            if (r3 == 0) goto L49
            boolean r0 = r3.moveToFirst()     // Catch: java.lang.Throwable -> L3f
            if (r0 == 0) goto L49
            java.lang.String r0 = "payloadpartFull"
            int r0 = r3.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r0 = r3.getString(r0)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r1 = "payloadurl"
            int r1 = r3.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r1 = r3.getString(r1)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = "payloadpartThumb"
            int r2 = r3.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = r3.getString(r2)     // Catch: java.lang.Throwable -> L3f
            r4.mPayloadThumbnailUrl = r2     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = "payloadpartThumb_filename"
            int r2 = r3.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L3f
            java.lang.String r2 = r3.getString(r2)     // Catch: java.lang.Throwable -> L3f
            r4.mFTThumbnailFileName = r2     // Catch: java.lang.Throwable -> L3f
            goto L4c
        L3f:
            r4 = move-exception
            r3.close()     // Catch: java.lang.Throwable -> L44
            goto L48
        L44:
            r3 = move-exception
            r4.addSuppressed(r3)
        L48:
            throw r4
        L49:
            java.lang.String r0 = ""
            r1 = r0
        L4c:
            if (r3 == 0) goto L51
            r3.close()
        L51:
            java.lang.String r3 = r4.mPayloadThumbnailUrl
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L5c
            r3 = 1
            r4.mIsFTThumbnail = r3
        L5c:
            android.util.Pair r3 = new android.util.Pair
            r3.<init>(r0, r1)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getAllPayloadUrlFromRCSBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair<java.lang.String, java.util.List<java.lang.String>> getObjectIdPartIdFromMmsBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r10) {
        /*
            r9 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            long r1 = r10.mRowId
            android.database.Cursor r10 = r9.querymmsPduBufferDB(r1)
            r3 = 47
            java.lang.String r4 = ""
            if (r10 == 0) goto L57
            boolean r5 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L4b
            if (r5 == 0) goto L57
            java.lang.String r5 = "res_url"
            int r5 = r10.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L4b
            java.lang.String r5 = r10.getString(r5)     // Catch: java.lang.Throwable -> L4b
            java.lang.String r6 = r9.LOG_TAG     // Catch: java.lang.Throwable -> L4b
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4b
            r7.<init>()     // Catch: java.lang.Throwable -> L4b
            java.lang.String r8 = "resUrl: "
            r7.append(r8)     // Catch: java.lang.Throwable -> L4b
            java.lang.String r8 = com.sec.internal.log.IMSLog.checker(r5)     // Catch: java.lang.Throwable -> L4b
            r7.append(r8)     // Catch: java.lang.Throwable -> L4b
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> L4b
            android.util.Log.i(r6, r7)     // Catch: java.lang.Throwable -> L4b
            if (r5 != 0) goto L40
            goto L57
        L40:
            int r6 = r5.lastIndexOf(r3)     // Catch: java.lang.Throwable -> L4b
            int r6 = r6 + 1
            java.lang.String r5 = r5.substring(r6)     // Catch: java.lang.Throwable -> L4b
            goto L58
        L4b:
            r9 = move-exception
            if (r10 == 0) goto L56
            r10.close()     // Catch: java.lang.Throwable -> L52
            goto L56
        L52:
            r10 = move-exception
            r9.addSuppressed(r10)
        L56:
            throw r9
        L57:
            r5 = r4
        L58:
            if (r10 == 0) goto L5d
            r10.close()
        L5d:
            android.database.Cursor r10 = r9.queryPartsBufferDBUsingPduBufferId(r1)
            if (r10 == 0) goto Lc5
            boolean r1 = r10.moveToFirst()     // Catch: java.lang.Throwable -> Lbb
            if (r1 == 0) goto Lc5
        L69:
            java.lang.String r1 = "payloadurl"
            int r1 = r10.getColumnIndex(r1)     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r1 = r10.getString(r1)     // Catch: java.lang.Throwable -> Lbb
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Lbb
            if (r2 == 0) goto L7c
            r2 = r4
            goto L86
        L7c:
            int r2 = r1.lastIndexOf(r3)     // Catch: java.lang.Throwable -> Lbb
            int r2 = r2 + 1
            java.lang.String r2 = r1.substring(r2)     // Catch: java.lang.Throwable -> Lbb
        L86:
            java.lang.String r6 = r9.LOG_TAG     // Catch: java.lang.Throwable -> Lbb
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbb
            r7.<init>()     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r8 = "payLoadurl: "
            r7.append(r8)     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r1 = com.sec.internal.log.IMSLog.checker(r1)     // Catch: java.lang.Throwable -> Lbb
            r7.append(r1)     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r1 = "partId: "
            r7.append(r1)     // Catch: java.lang.Throwable -> Lbb
            r7.append(r2)     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r1 = r7.toString()     // Catch: java.lang.Throwable -> Lbb
            android.util.Log.i(r6, r1)     // Catch: java.lang.Throwable -> Lbb
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Throwable -> Lbb
            if (r1 == 0) goto Lb1
            goto Lb4
        Lb1:
            r0.add(r2)     // Catch: java.lang.Throwable -> Lbb
        Lb4:
            boolean r1 = r10.moveToNext()     // Catch: java.lang.Throwable -> Lbb
            if (r1 != 0) goto L69
            goto Lc5
        Lbb:
            r9 = move-exception
            r10.close()     // Catch: java.lang.Throwable -> Lc0
            goto Lc4
        Lc0:
            r10 = move-exception
            r9.addSuppressed(r10)
        Lc4:
            throw r9
        Lc5:
            if (r10 == 0) goto Lca
            r10.close()
        Lca:
            android.util.Pair r9 = new android.util.Pair
            r9.<init>(r5, r0)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getObjectIdPartIdFromMmsBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):android.util.Pair");
    }

    public List<String> getPayloadPartUrlFromMmsBufDb(BufferDBChangeParam bufferDBChangeParam) {
        ArrayList arrayList = new ArrayList();
        Cursor queryPartsBufferDBUsingPduBufferId = queryPartsBufferDBUsingPduBufferId(bufferDBChangeParam.mRowId);
        if (queryPartsBufferDBUsingPduBufferId != null) {
            try {
                if (queryPartsBufferDBUsingPduBufferId.moveToFirst()) {
                    do {
                        String string = queryPartsBufferDBUsingPduBufferId.getString(queryPartsBufferDBUsingPduBufferId.getColumnIndex(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADURL));
                        Log.i(this.LOG_TAG, "payLoadurl: " + IMSLog.checker(string));
                        if (!TextUtils.isEmpty(string)) {
                            arrayList.add(string);
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
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getPayloadUrlfromMmsPduBufferId(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r4) {
        /*
            r3 = this;
            long r0 = r4.mRowId
            android.database.Cursor r4 = r3.querymmsPduBufferDB(r0)
            if (r4 == 0) goto L39
            boolean r0 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L39
            java.lang.String r0 = "ct_l"
            int r0 = r4.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r0 = r4.getString(r0)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r3 = r3.LOG_TAG     // Catch: java.lang.Throwable -> L2f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L2f
            r1.<init>()     // Catch: java.lang.Throwable -> L2f
            java.lang.String r2 = "get Payload URL "
            r1.append(r2)     // Catch: java.lang.Throwable -> L2f
            r1.append(r0)     // Catch: java.lang.Throwable -> L2f
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L2f
            android.util.Log.i(r3, r1)     // Catch: java.lang.Throwable -> L2f
            goto L3a
        L2f:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L34
            goto L38
        L34:
            r4 = move-exception
            r3.addSuppressed(r4)
        L38:
            throw r3
        L39:
            r0 = 0
        L3a:
            if (r4 == 0) goto L3f
            r4.close()
        L3f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getPayloadUrlfromMmsPduBufferId(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):java.lang.String");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getPayloadPartUrlFromMmsPartUsingPartBufferId(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r4) {
        /*
            r3 = this;
            long r0 = r4.mRowId
            android.database.Cursor r4 = r3.queryPartsBufferDBUsingPartBufferId(r0)
            if (r4 == 0) goto L3f
            boolean r0 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L35
            if (r0 == 0) goto L3f
            java.lang.String r0 = "payloadurl"
            int r0 = r4.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L35
            java.lang.String r0 = r4.getString(r0)     // Catch: java.lang.Throwable -> L35
            java.lang.String r3 = r3.LOG_TAG     // Catch: java.lang.Throwable -> L35
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L35
            r1.<init>()     // Catch: java.lang.Throwable -> L35
            java.lang.String r2 = "payLoadurl: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L35
            java.lang.String r2 = com.sec.internal.log.IMSLog.checker(r0)     // Catch: java.lang.Throwable -> L35
            r1.append(r2)     // Catch: java.lang.Throwable -> L35
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L35
            android.util.Log.d(r3, r1)     // Catch: java.lang.Throwable -> L35
            goto L40
        L35:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L3a
            goto L3e
        L3a:
            r4 = move-exception
            r3.addSuppressed(r4)
        L3e:
            throw r3
        L3f:
            r0 = 0
        L40:
            if (r4 == 0) goto L45
            r4.close()
        L45:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getPayloadPartUrlFromMmsPartUsingPartBufferId(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):java.lang.String");
    }

    public ParamVvmUpdate.VvmGreetingType getVVMGreetingTypeFromBufDb(BufferDBChangeParam bufferDBChangeParam) {
        Cursor queryVvmGreetingBufferDB = queryVvmGreetingBufferDB(bufferDBChangeParam.mRowId);
        if (queryVvmGreetingBufferDB != null) {
            try {
                if (queryVvmGreetingBufferDB.moveToFirst()) {
                    int i = queryVvmGreetingBufferDB.getInt(queryVvmGreetingBufferDB.getColumnIndex(CloudMessageProviderContract.VVMGreetingColumns.GREETINGTYPE));
                    Log.i(this.LOG_TAG, "getVVMGreetingTypeFromBufDb : type " + i);
                    ParamVvmUpdate.VvmGreetingType valueOf = ParamVvmUpdate.VvmGreetingType.valueOf(i);
                    queryVvmGreetingBufferDB.close();
                    return valueOf;
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
        return ParamVvmUpdate.VvmGreetingType.Default;
    }

    public Pair<Object, HttpPostBody> getRCSObjectPairFromCursor(BufferDBChangeParam bufferDBChangeParam, List<FileUploadResponse> list) {
        Pair<Object, HttpPostBody> chatObjectPairFromCursor;
        Log.d(this.LOG_TAG, bufferDBChangeParam.toString());
        Pair<Object, HttpPostBody> pair = null;
        if (bufferDBChangeParam.mDBIndex == 1) {
            Cursor queryrcsMessageBufferDB = queryrcsMessageBufferDB(bufferDBChangeParam.mRowId);
            if (queryrcsMessageBufferDB != null) {
                try {
                    if (queryrcsMessageBufferDB.moveToFirst()) {
                        int i = queryrcsMessageBufferDB.getInt(queryrcsMessageBufferDB.getColumnIndex(ImContract.Message.MESSAGE_ISSLM));
                        int i2 = queryrcsMessageBufferDB.getInt(queryrcsMessageBufferDB.getColumnIndex(ImContract.ChatItem.IS_FILE_TRANSFER));
                        Log.i(this.LOG_TAG, "getRCSObjectPairFromCursor :: isSlm: " + i + " isFt: " + i2);
                        if (i == 1) {
                            chatObjectPairFromCursor = getSlmObjectPairFromCursor(queryrcsMessageBufferDB);
                        } else if (i2 == 1) {
                            chatObjectPairFromCursor = getFtObjectPairFromCursor(queryrcsMessageBufferDB);
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

    public Pair<Object, HttpPostBody> getRcsSessionFromCursor(BufferDBChangeParam bufferDBChangeParam) {
        Log.i(this.LOG_TAG, "getRcsSessionFromCursor " + bufferDBChangeParam.mRowId);
        Pair<Object, HttpPostBody> pair = null;
        if (bufferDBChangeParam.mDBIndex == 10) {
            Cursor queryGroupSessionDB = queryGroupSessionDB(bufferDBChangeParam.mRowId);
            if (queryGroupSessionDB != null) {
                try {
                    if (queryGroupSessionDB.moveToFirst()) {
                        pair = getConferenceInfoObjectPair(queryGroupSessionDB);
                    }
                } catch (Throwable th) {
                    try {
                        queryGroupSessionDB.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (queryGroupSessionDB != null) {
                queryGroupSessionDB.close();
            }
        }
        return pair;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair<com.sec.internal.omanetapi.nms.data.Object, com.sec.internal.helper.httpclient.HttpPostBody> getSmsObjectPairFromCursor(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r13) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getSmsObjectPairFromCursor(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):android.util.Pair");
    }

    public Pair<Object, HttpPostBody> getMmsObjectPairFromCursor(BufferDBChangeParam bufferDBChangeParam) {
        return new Pair<>(getMmsObjectFromPduAndAddress(bufferDBChangeParam), getMmsPartHttpPayloadFromCursor(queryPartsBufferDBUsingPduBufferId(bufferDBChangeParam.mRowId)));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair<java.lang.String, java.lang.String> getSessionObjectIdFromBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r4) {
        /*
            r3 = this;
            int r0 = r4.mDBIndex
            r1 = 10
            if (r0 != r1) goto Ld
            long r0 = r4.mRowId
            android.database.Cursor r4 = r3.queryGroupSessionDB(r0)
            goto Le
        Ld:
            r4 = 0
        Le:
            java.lang.String r0 = "\\Accepted"
            if (r4 == 0) goto L61
            boolean r1 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L57
            if (r1 == 0) goto L61
            java.lang.String r3 = r3.LOG_TAG     // Catch: java.lang.Throwable -> L57
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L57
            r1.<init>()     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "FlagNames: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L57
            r1.append(r0)     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L57
            android.util.Log.i(r3, r1)     // Catch: java.lang.Throwable -> L57
            java.lang.String r3 = "conversation_id"
            int r3 = r4.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> L57
            java.lang.String r3 = r4.getString(r3)     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = "inserted_time_stamp"
            int r1 = r4.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L57
            java.lang.String r1 = r4.getString(r1)     // Catch: java.lang.Throwable -> L57
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L57
            r2.<init>()     // Catch: java.lang.Throwable -> L57
            r2.append(r3)     // Catch: java.lang.Throwable -> L57
            java.lang.String r3 = "_"
            r2.append(r3)     // Catch: java.lang.Throwable -> L57
            r2.append(r1)     // Catch: java.lang.Throwable -> L57
            java.lang.String r3 = r2.toString()     // Catch: java.lang.Throwable -> L57
            goto L63
        L57:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L5c
            goto L60
        L5c:
            r4 = move-exception
            r3.addSuppressed(r4)
        L60:
            throw r3
        L61:
            java.lang.String r3 = ""
        L63:
            if (r4 == 0) goto L68
            r4.close()
        L68:
            android.util.Pair r4 = new android.util.Pair
            r4.<init>(r3, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getSessionObjectIdFromBufDb(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):android.util.Pair");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0150 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x011c A[Catch: all -> 0x0139, TryCatch #2 {all -> 0x0139, blocks: (B:17:0x0089, B:19:0x008f, B:21:0x00a2, B:23:0x00d2, B:26:0x011c, B:28:0x0127, B:31:0x00b5, B:33:0x00bd), top: B:16:0x0089 }] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.util.Pair<com.sec.internal.omanetapi.nms.data.Object, com.sec.internal.helper.httpclient.HttpPostBody> getImdnObjectPair(com.sec.internal.ims.cmstore.params.BufferDBChangeParam r13) {
        /*
            Method dump skipped, instructions count: 343
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.bufferdbtranslation.BufferDBTranslation.getImdnObjectPair(com.sec.internal.ims.cmstore.params.BufferDBChangeParam):android.util.Pair");
    }

    private String encodeResURL(String str) {
        StringBuilder sb = new StringBuilder(str);
        int lastIndexOf = str.lastIndexOf(":+");
        if (lastIndexOf > 0) {
            sb.replace(lastIndexOf, lastIndexOf + 2, "%3a%2b");
        }
        int lastIndexOf2 = sb.toString().lastIndexOf(":");
        if (lastIndexOf2 > 0) {
            sb.replace(lastIndexOf2, lastIndexOf2 + 1, "%3a");
        }
        String sb2 = sb.toString();
        Log.i(this.LOG_TAG, "encoded startIndex: " + lastIndexOf2 + ", endIndex: " + lastIndexOf + ", newResUrl: " + IMSLog.checker(sb2));
        return sb2;
    }
}
