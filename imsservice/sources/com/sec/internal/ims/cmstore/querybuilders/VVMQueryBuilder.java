package com.sec.internal.ims.cmstore.querybuilders;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.params.ParamOMAObject;
import com.sec.internal.ims.cmstore.params.ParamVvmUpdate;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import java.net.URL;

/* loaded from: classes.dex */
public class VVMQueryBuilder extends QueryBuilderBase {
    private String TAG;

    public VVMQueryBuilder(MessageStoreClient messageStoreClient, IBufferDBEventListener iBufferDBEventListener) {
        super(messageStoreClient, iBufferDBEventListener);
        this.TAG = VVMQueryBuilder.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
    }

    public long insertVvmMessageUsingObject(ParamOMAObject paramOMAObject, String str, boolean z) {
        ContentValues createDataVvm = createDataVvm(paramOMAObject, str, z);
        createDataVvm.put("messageId", paramOMAObject.MESSAGE_ID);
        createDataVvm.put(CloudMessageProviderContract.VVMMessageColumns.FLAG_READ, Integer.valueOf(getIfSeenValueUsingFlag(paramOMAObject.mFlagList)));
        createDataVvm.put(CloudMessageProviderContract.VVMMessageColumns.SENDER, paramOMAObject.FROM);
        createDataVvm.put(CloudMessageProviderContract.VVMMessageColumns.RECIPIENT, paramOMAObject.TO.get(0));
        createDataVvm.put(CloudMessageProviderContract.VVMMessageColumns.TIMESTAMP, Long.valueOf(getDateFromDateString(paramOMAObject.DATE)));
        createDataVvm.put("importance", paramOMAObject.IMPORTANCE);
        createDataVvm.put(CloudMessageProviderContract.VVMMessageColumns.SENSITIVITY, paramOMAObject.SENSITIVITY);
        createDataVvm.put(CloudMessageProviderContract.BufferDBExtensionBase.FILE_URI, "");
        return this.mBufferDB.insertTable(17, createDataVvm);
    }

    public long insertVvmGreetingUsingObject(ParamOMAObject paramOMAObject, String str, boolean z) {
        ContentValues createDataVvm = createDataVvm(paramOMAObject, str, z);
        createDataVvm.put("mimeType", paramOMAObject.CONTENT_TYPE);
        createDataVvm.put(CloudMessageProviderContract.VVMGreetingColumns.DURATION, paramOMAObject.CONTENT_DURATION);
        createDataVvm.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        createDataVvm.put(CloudMessageProviderContract.VVMGreetingColumns.ACCOUNT_NUMBER, str);
        createDataVvm.put("messageId", paramOMAObject.MESSAGE_ID);
        createDataVvm.put(CloudMessageProviderContract.VVMGreetingColumns.GREETINGTYPE, Integer.valueOf(ParamVvmUpdate.VvmGreetingType.nameOf(paramOMAObject.X_CNS_Greeting_Type)));
        createDataVvm.put("flags", Integer.valueOf(getIfisGreetingOnUsingFlag(paramOMAObject.mFlagList)));
        return this.mBufferDB.insertTable(18, createDataVvm);
    }

    private ContentValues createDataVvm(ParamOMAObject paramOMAObject, String str, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.CORRELATION_ID, paramOMAObject.correlationId);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.LASTMODSEQ, paramOMAObject.lastModSeq);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAObject.resourceURL.toString()));
        URL url = paramOMAObject.parentFolder;
        if (url != null) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PARENTFOLDER, Util.decodeUrlFromServer(url.toString()));
        }
        contentValues.put("path", Util.decodeUrlFromServer(paramOMAObject.path));
        URL url2 = paramOMAObject.payloadURL;
        if (url2 != null) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADURL, url2.toString());
        }
        contentValues.put("linenum", str);
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        if (z) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId()));
        } else {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.FetchIndividualUri.getId()));
        }
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Downloading.getId()));
        return contentValues;
    }

    public Cursor queryBufferDBWithResUrl(int i, String str) {
        return this.mBufferDB.queryTablewithResUrl(i, str);
    }

    public Cursor queryVvmMessageBufferDBwithAppId(long j) {
        Log.i(this.TAG, "queryVvmMessageBufferDBwithAppId: " + j);
        return this.mBufferDB.queryTable(17, (String[]) null, "_id=?", new String[]{String.valueOf(j)}, (String) null);
    }

    public Cursor queryVvmGreetingBufferDBwithAppId(long j) {
        Log.i(this.TAG, "queryVvmGreetingBufferDBwithAppId: " + j);
        return this.mBufferDB.queryTable(18, (String[]) null, "_id=?", new String[]{String.valueOf(j)}, (String) null);
    }

    public long insertVvmNewPinDeviceUpdate(ParamVvmUpdate paramVvmUpdate) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.VVMPin.OLDPWD, paramVvmUpdate.mOldPwd);
        contentValues.put(CloudMessageProviderContract.VVMPin.NEWPWD, paramVvmUpdate.mNewPwd);
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        contentValues.put("linenum", paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        return this.mBufferDB.insertTable(19, contentValues);
    }

    public long insertVvmNewGreetingDeviceUpdate(ParamVvmUpdate paramVvmUpdate) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("filepath", paramVvmUpdate.mGreetingUri);
        contentValues.put(CloudMessageProviderContract.VVMGreetingColumns.ACCOUNT_NUMBER, paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.VVMGreetingColumns.DURATION, Integer.valueOf(paramVvmUpdate.mDuration));
        contentValues.put("mimeType", paramVvmUpdate.mMimeType);
        contentValues.put("fileName", paramVvmUpdate.mfileName);
        contentValues.put("_id", Integer.valueOf(paramVvmUpdate.mId));
        if ("name".equalsIgnoreCase(paramVvmUpdate.mGreetingType)) {
            contentValues.put(CloudMessageProviderContract.VVMGreetingColumns.GREETINGTYPE, Integer.valueOf(ParamVvmUpdate.VvmGreetingType.Name.getId()));
        } else if ("custom".equalsIgnoreCase(paramVvmUpdate.mGreetingType)) {
            contentValues.put(CloudMessageProviderContract.VVMGreetingColumns.GREETINGTYPE, Integer.valueOf(ParamVvmUpdate.VvmGreetingType.Custom.getId()));
        } else {
            contentValues.put(CloudMessageProviderContract.VVMGreetingColumns.GREETINGTYPE, Integer.valueOf(ParamVvmUpdate.VvmGreetingType.Default.getId()));
        }
        contentValues.put("linenum", paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        return this.mBufferDB.insertTable(18, contentValues);
    }

    public long insertDefaultGreetingValues(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.VVMGreetingColumns.GREETINGTYPE, Integer.valueOf(ParamVvmUpdate.VvmGreetingType.Default.getId()));
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        contentValues.put(CloudMessageProviderContract.VVMGreetingColumns.ACCOUNT_NUMBER, str);
        contentValues.put("linenum", str);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        return this.mBufferDB.insertTable(18, contentValues);
    }

    /* renamed from: com.sec.internal.ims.cmstore.querybuilders.VVMQueryBuilder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange;

        static {
            int[] iArr = new int[ParamVvmUpdate.VvmTypeChange.values().length];
            $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange = iArr;
            try {
                iArr[ParamVvmUpdate.VvmTypeChange.ACTIVATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.DEACTIVATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.NUTOFF.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.NUTON.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.VOICEMAILTOTEXT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.V2TLANGUAGE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.V2T_SMS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.V2T_EMAIL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public long insertVvmNewProfileDeviceUpdate(ParamVvmUpdate paramVvmUpdate) {
        ContentValues contentValues = new ContentValues();
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[paramVvmUpdate.mVvmChange.ordinal()]) {
            case 1:
                contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.VVMON, Boolean.TRUE.toString());
                break;
            case 2:
                contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.VVMON, Boolean.FALSE.toString());
                break;
            case 3:
                contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.NUT, Boolean.FALSE.toString());
                break;
            case 4:
                contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.NUT, Boolean.TRUE.toString());
                break;
            case 5:
                if (!TextUtils.isEmpty(paramVvmUpdate.mEmail1)) {
                    contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.EMAIL_ADDR1, paramVvmUpdate.mEmail1);
                }
                if (!TextUtils.isEmpty(paramVvmUpdate.mEmail2)) {
                    contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.EMAIL_ADDR2, paramVvmUpdate.mEmail2);
                    break;
                }
                break;
            case 6:
                contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_LANGUAGE, paramVvmUpdate.mV2tLang);
                break;
            case 7:
                contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_SMS, paramVvmUpdate.mv2t_sms);
                break;
            case 8:
                contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_EMAIL, paramVvmUpdate.mv2t_email);
                break;
        }
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.LINE_NUMBER, paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.PROFILE_CHANGETYPE, Integer.valueOf(paramVvmUpdate.mVvmChange.getId()));
        contentValues.put("linenum", paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        return this.mBufferDB.insertTable(20, contentValues);
    }

    public long insertDownloadNewProfileRequest(ParamVvmUpdate paramVvmUpdate) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.PROFILE_CHANGETYPE, Integer.valueOf(ParamVvmUpdate.VvmTypeChange.FULLPROFILE.getId()));
        contentValues.put("linenum", paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Downloading.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        return this.mBufferDB.insertTable(20, contentValues);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005f, code lost:
    
        if (r9.isClosed() == false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long getValidVVMQuotaRowID() {
        /*
            r10 = this;
            java.lang.String r0 = "_bufferdbid"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            java.lang.String r4 = "_bufferdbid>0"
            r7 = -1
            r9 = 0
            com.sec.internal.ims.cmstore.adapters.CloudMessageBufferDBPersister r1 = r10.mBufferDB     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            r2 = 36
            r5 = 0
            r6 = 0
            android.database.Cursor r9 = r1.queryTable(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            if (r9 == 0) goto L3d
            boolean r1 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            if (r1 == 0) goto L3d
            int r0 = r9.getColumnIndex(r0)     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            int r0 = r9.getInt(r0)     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            long r7 = (long) r0     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            java.lang.String r0 = r10.TAG     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            r1.<init>()     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            java.lang.String r2 = " Assigning Already present row "
            r1.append(r2)     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            r1.append(r7)     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
            goto L41
        L3d:
            long r7 = r10.insertVVMQuotaInfo()     // Catch: java.lang.Throwable -> L4d java.lang.NullPointerException -> L4f
        L41:
            if (r9 == 0) goto L62
            boolean r10 = r9.isClosed()
            if (r10 != 0) goto L62
        L49:
            r9.close()
            goto L62
        L4d:
            r10 = move-exception
            goto L63
        L4f:
            r0 = move-exception
            java.lang.String r10 = r10.TAG     // Catch: java.lang.Throwable -> L4d
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L4d
            android.util.Log.e(r10, r0)     // Catch: java.lang.Throwable -> L4d
            if (r9 == 0) goto L62
            boolean r10 = r9.isClosed()
            if (r10 != 0) goto L62
            goto L49
        L62:
            return r7
        L63:
            if (r9 == 0) goto L6e
            boolean r0 = r9.isClosed()
            if (r0 != 0) goto L6e
            r9.close()
        L6e:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.querybuilders.VVMQueryBuilder.getValidVVMQuotaRowID():long");
    }

    public long insertVVMQuotaInfo() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.TOTAL_STORAGE, (Integer) 0);
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.OCCUPIED_STORAGE, (Integer) 0);
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.VMMESSAGES_QUOTA, (Integer) 0);
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.VMOCUPPIED_MESSAGES, (Integer) 0);
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.LAST_UPDATED, (Integer) 0);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
        contentValues.put("linenum", this.mStoreClient.getPrerenceManager().getUserTelCtn());
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        return this.mBufferDB.insertTable(36, contentValues);
    }

    public long insertVvmNewEmailProfileCloudUpdate(ParamVvmUpdate paramVvmUpdate) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.EMAIL_ADDR1, paramVvmUpdate.mEmail1);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.LINE_NUMBER, paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.PROFILE_CHANGETYPE, Integer.valueOf(ParamVvmUpdate.VvmTypeChange.VOICEMAILTOTEXT.getId()));
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        contentValues.put("linenum", paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        return this.mBufferDB.insertTable(20, contentValues);
    }

    public long insertVvmNewPinCloudUpdate(ParamVvmUpdate paramVvmUpdate) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        contentValues.put(CloudMessageProviderContract.VVMPin.NEWPWD, paramVvmUpdate.mNewPwd);
        contentValues.put("linenum", paramVvmUpdate.mLine);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        return this.mBufferDB.insertTable(19, contentValues);
    }

    public Cursor queryToDeviceUnDownloadedVvm(String str, int i) {
        return this.mBufferDB.queryTable(17, (String[]) null, "syncaction=? AND linenum=?", new String[]{String.valueOf(i), str}, (String) null);
    }

    public Cursor queryToDeviceUnDownloadedGreeting(String str, int i) {
        return this.mBufferDB.queryTable(18, (String[]) null, "syncaction=? AND linenum=?", new String[]{String.valueOf(i), str}, (String) null);
    }
}
