package com.sec.internal.ims.cmstore.syncschedulers;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.os.Looper;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.data.VvmFolders;
import com.sec.internal.ims.cmstore.omanetapi.tmoappapi.data.VvmServiceProfile;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUpdateParam;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUriParam;
import com.sec.internal.ims.cmstore.params.ParamAppJsonValue;
import com.sec.internal.ims.cmstore.params.ParamOMAObject;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet;
import com.sec.internal.ims.cmstore.params.ParamVvmUpdate;
import com.sec.internal.ims.cmstore.querybuilders.SummaryQueryBuilder;
import com.sec.internal.ims.cmstore.querybuilders.VVMQueryBuilder;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.Attribute;
import com.sec.internal.omanetapi.nms.data.AttributeList;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import javax.mail.MessagingException;

/* loaded from: classes.dex */
public class VVMScheduler extends BaseMessagingScheduler {
    private static final String CONFIDENTIAL_SENSITIVITY = "CONFIDENTIAL";
    private static final String HIGH_IMPORTANCE = "HIGH";
    private static final String NORMAL_IMPORTANCE = "NORMAL";
    private static final String PERSONAL_SENSITIVITY = "PERSONAL";
    private static final String PRIVATE_SENSITIVITY = "PRIVATE";
    private String TAG;
    private final VVMQueryBuilder mBufferDbQuery;

    public VVMScheduler(MessageStoreClient messageStoreClient, CloudMessageBufferDBEventSchedulingRule cloudMessageBufferDBEventSchedulingRule, SummaryQueryBuilder summaryQueryBuilder, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, Looper looper) {
        super(messageStoreClient, cloudMessageBufferDBEventSchedulingRule, iDeviceDataChangeListener, iBufferDBEventListener, looper, summaryQueryBuilder);
        this.TAG = VVMScheduler.class.getSimpleName();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mBufferDbQuery = new VVMQueryBuilder(messageStoreClient, iBufferDBEventListener);
        this.mDbTableContractIndex = 17;
    }

    public void resetImsi() {
        Log.i(this.TAG, "resetImsi");
        this.mBufferDbQuery.resetImsi();
    }

    public void handleVvmProfileDownloaded(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        VvmProfileAttributes parseDownloadedVvmAttributes;
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(false);
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() == null || paramOMAresponseforBufDB.getVvmServiceProfile() == null || (parseDownloadedVvmAttributes = parseDownloadedVvmAttributes(paramOMAresponseforBufDB.getVvmServiceProfile())) == null) {
            return;
        }
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        EventLogHelper.add(this.TAG, this.mStoreClient.getClientID(), "handleVvmProfileDownloaded  nut value: " + parseDownloadedVvmAttributes.NUT);
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.VVMON, parseDownloadedVvmAttributes.VVMOn);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.ISBLOCKED, parseDownloadedVvmAttributes.IsBlocked);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.COS, parseDownloadedVvmAttributes.COSName);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.LANGUAGE, parseDownloadedVvmAttributes.Language);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.NUT, parseDownloadedVvmAttributes.NUT);
        if (parseDownloadedVvmAttributes.EmailAddress.size() == 1) {
            contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.EMAIL_ADDR1, parseDownloadedVvmAttributes.EmailAddress.get(0));
        } else if (parseDownloadedVvmAttributes.EmailAddress.size() == 2) {
            contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.EMAIL_ADDR1, parseDownloadedVvmAttributes.EmailAddress.get(0));
            contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.EMAIL_ADDR2, parseDownloadedVvmAttributes.EmailAddress.get(1));
        }
        Log.i(this.TAG, "handleVvmProfileDownloaded nut value: " + parseDownloadedVvmAttributes.NUT + ", COSName value: " + parseDownloadedVvmAttributes.COSName + ", V2t_Language: " + parseDownloadedVvmAttributes.V2t_Language + ", EmailAddress count: " + parseDownloadedVvmAttributes.EmailAddress.size() + ", VVMOn: " + parseDownloadedVvmAttributes.VVMOn + ", IsBlocked: " + parseDownloadedVvmAttributes.IsBlocked + ", v2t_sms: " + parseDownloadedVvmAttributes.v2t_sms + ", v2t_email: " + parseDownloadedVvmAttributes.v2t_email);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_LANGUAGE, parseDownloadedVvmAttributes.V2t_Language);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_SMS, parseDownloadedVvmAttributes.v2t_sms);
        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_EMAIL, parseDownloadedVvmAttributes.v2t_email);
        this.mBufferDbQuery.updateTable(20, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMPROFILE, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    public void handleVvmQuotaInfo(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        VvmQuotaAttributes parseDownloadedVvmQuotaAttributes;
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() == null || paramOMAresponseforBufDB.getVvmFolders() == null || (parseDownloadedVvmQuotaAttributes = parseDownloadedVvmQuotaAttributes(paramOMAresponseforBufDB.getVvmFolders())) == null) {
            return;
        }
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.TOTAL_STORAGE, Long.valueOf(parseDownloadedVvmQuotaAttributes.TotalStorage));
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.OCCUPIED_STORAGE, Long.valueOf(parseDownloadedVvmQuotaAttributes.OccupiedStorage));
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.VMMESSAGES_QUOTA, Integer.valueOf(parseDownloadedVvmQuotaAttributes.VMMessagesQuota));
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.VMOCUPPIED_MESSAGES, Integer.valueOf(parseDownloadedVvmQuotaAttributes.VMOccupiedMessages));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.VVMQuotaColumns.LAST_UPDATED, Long.valueOf(System.currentTimeMillis()));
        contentValues.put("linenum", paramOMAresponseforBufDB.getBufferDBChangeParam().mLine);
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        try {
            this.mBufferDbQuery.updateTable(36, contentValues, "_bufferdbid=?", strArr);
            this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMQUOTA, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
        } catch (SQLException e) {
            Log.e(this.TAG, e.getMessage());
        }
    }

    private static class VvmProfileAttributes {
        ArrayList<String> EmailAddress;
        String VVMOn = null;
        String IsBlocked = null;
        String COSName = null;
        String Language = "eng";
        String NUT = null;
        String V2t_Language = "None";
        String v2t_email = null;
        String v2t_sms = null;

        VvmProfileAttributes() {
            this.EmailAddress = null;
            this.EmailAddress = new ArrayList<>();
        }
    }

    private static class VvmQuotaAttributes {
        long OccupiedStorage;
        long TotalStorage;
        int VMMessagesQuota;
        int VMOccupiedMessages;

        private VvmQuotaAttributes() {
            this.TotalStorage = 0L;
            this.OccupiedStorage = 0L;
            this.VMMessagesQuota = 0;
            this.VMOccupiedMessages = 0;
        }
    }

    public enum VvmMessageSensitivity {
        INVALID(-1),
        PERSONAL(0),
        PRIVATE(1),
        CONFIDENTIAL(2);

        private final int mId;

        VvmMessageSensitivity(int i) {
            this.mId = i;
        }

        @Override // java.lang.Enum
        public String toString() {
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity[ordinal()];
            return i != 2 ? i != 3 ? "Personal" : "Confidential" : "Private";
        }
    }

    public enum VvmMessageImportance {
        INVALID(-1),
        NORMAL(0),
        HIGH(1);

        private final int mId;

        VvmMessageImportance(int i) {
            this.mId = i;
        }

        @Override // java.lang.Enum
        public String toString() {
            return AnonymousClass1.$SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageImportance[ordinal()] != 2 ? "Normal" : "High";
        }
    }

    private VvmProfileAttributes parseDownloadedVvmAttributes(VvmServiceProfile vvmServiceProfile) {
        AttributeList attributeList = vvmServiceProfile.attributes;
        if (attributeList == null || attributeList.attribute == null) {
            Log.i(this.TAG, "parseDownloadedVvmAttributes: invalid profile");
            return null;
        }
        VvmProfileAttributes vvmProfileAttributes = new VvmProfileAttributes();
        int i = 0;
        while (true) {
            Attribute[] attributeArr = vvmServiceProfile.attributes.attribute;
            if (i >= attributeArr.length) {
                return vvmProfileAttributes;
            }
            Attribute attribute = attributeArr[i];
            String str = attribute.name;
            if (str != null && attribute.value[0] != null) {
                if ("cosname".equalsIgnoreCase(str)) {
                    vvmProfileAttributes.COSName = vvmServiceProfile.attributes.attribute[i].value[0];
                } else if (CloudMessageProviderContract.VVMAccountInfoColumns.ISBLOCKED.equalsIgnoreCase(vvmServiceProfile.attributes.attribute[i].name)) {
                    vvmProfileAttributes.IsBlocked = vvmServiceProfile.attributes.attribute[i].value[0];
                } else if (CloudMessageProviderContract.VVMAccountInfoColumns.LANGUAGE.equalsIgnoreCase(vvmServiceProfile.attributes.attribute[i].name)) {
                    vvmProfileAttributes.Language = vvmServiceProfile.attributes.attribute[i].value[0];
                } else if (CloudMessageProviderContract.VVMAccountInfoColumns.NUT.equalsIgnoreCase(vvmServiceProfile.attributes.attribute[i].name)) {
                    vvmProfileAttributes.NUT = vvmServiceProfile.attributes.attribute[i].value[0];
                } else if (CloudMessageProviderContract.VVMAccountInfoColumns.VVMON.equalsIgnoreCase(vvmServiceProfile.attributes.attribute[i].name)) {
                    vvmProfileAttributes.VVMOn = vvmServiceProfile.attributes.attribute[i].value[0];
                } else if ("EmailAddress".equalsIgnoreCase(vvmServiceProfile.attributes.attribute[i].name)) {
                    int i2 = 0;
                    while (true) {
                        String[] strArr = vvmServiceProfile.attributes.attribute[i].value;
                        if (i2 < strArr.length) {
                            vvmProfileAttributes.EmailAddress.add(strArr[i2]);
                            i2++;
                        }
                    }
                } else if ("V2t_Language".equalsIgnoreCase(vvmServiceProfile.attributes.attribute[i].name)) {
                    vvmProfileAttributes.V2t_Language = vvmServiceProfile.attributes.attribute[i].value[0];
                } else if ("V2E_ON".equalsIgnoreCase(vvmServiceProfile.attributes.attribute[i].name)) {
                    vvmProfileAttributes.v2t_email = vvmServiceProfile.attributes.attribute[i].value[0];
                } else if ("SMSDirectLink".equalsIgnoreCase(vvmServiceProfile.attributes.attribute[i].name)) {
                    vvmProfileAttributes.v2t_sms = vvmServiceProfile.attributes.attribute[i].value[0];
                }
            }
            i++;
        }
    }

    private VvmQuotaAttributes parseDownloadedVvmQuotaAttributes(VvmFolders vvmFolders) {
        AttributeList attributeList = vvmFolders.attributes;
        if (attributeList == null || attributeList.attribute == null) {
            Log.i(this.TAG, "parseDownloadedVvmQuotaAttributes: invalid profile");
            return null;
        }
        VvmQuotaAttributes vvmQuotaAttributes = new VvmQuotaAttributes();
        int i = 0;
        while (true) {
            Attribute[] attributeArr = vvmFolders.attributes.attribute;
            if (i < attributeArr.length) {
                Attribute attribute = attributeArr[i];
                String str = attribute.name;
                if (str != null && attribute.value[0] != null) {
                    if (CloudMessageProviderContract.VVMQuotaColumns.TOTAL_STORAGE.equalsIgnoreCase(str)) {
                        vvmQuotaAttributes.TotalStorage = Long.valueOf(vvmFolders.attributes.attribute[i].value[0]).longValue();
                    } else if (CloudMessageProviderContract.VVMQuotaColumns.OCCUPIED_STORAGE.equalsIgnoreCase(vvmFolders.attributes.attribute[i].name)) {
                        vvmQuotaAttributes.OccupiedStorage = Long.valueOf(vvmFolders.attributes.attribute[i].value[0]).longValue();
                    } else if (CloudMessageProviderContract.VVMQuotaColumns.VMMESSAGES_QUOTA.equalsIgnoreCase(vvmFolders.attributes.attribute[i].name)) {
                        vvmQuotaAttributes.VMMessagesQuota = Integer.valueOf(vvmFolders.attributes.attribute[i].value[0]).intValue();
                    } else if (CloudMessageProviderContract.VVMQuotaColumns.VMOCUPPIED_MESSAGES.equalsIgnoreCase(vvmFolders.attributes.attribute[i].name)) {
                        vvmQuotaAttributes.VMOccupiedMessages = Integer.valueOf(vvmFolders.attributes.attribute[i].value[0]).intValue();
                    }
                }
                i++;
            } else {
                Log.i(this.TAG, "Total Storage " + vvmQuotaAttributes.TotalStorage + " OccupiedStorage " + vvmQuotaAttributes.OccupiedStorage + " VMMessagesQuota " + vvmQuotaAttributes.VMMessagesQuota + " VMOccupiedMessages " + vvmQuotaAttributes.VMOccupiedMessages);
                return vvmQuotaAttributes;
            }
        }
    }

    public void handleUpdateVVMResponse(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        Log.i(this.TAG, "handleUpdateVVMResponse: " + paramOMAresponseforBufDB + ", isSuccess: " + z);
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(false);
        if (z) {
            switch (paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex) {
                case 17:
                    onAdhocV2tUpdateSuccess(paramOMAresponseforBufDB);
                    break;
                case 18:
                    onVvmGreetingUpdateSuccess(paramOMAresponseforBufDB);
                    break;
                case 19:
                    onVvmPINUpdateSuccess(paramOMAresponseforBufDB);
                    break;
                case 20:
                    onVvmProfileUpdateSuccess(paramOMAresponseforBufDB);
                    break;
            }
        }
        switch (paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex) {
            case 17:
                onAdhocV2tUpdateFailure(paramOMAresponseforBufDB);
                break;
            case 18:
                onVvmGreetingUpdateFailure(paramOMAresponseforBufDB);
                break;
            case 19:
                onVvmPINUpdateFailure(paramOMAresponseforBufDB);
                break;
            case 20:
                onVvmProfileUpdateFailure(paramOMAresponseforBufDB);
                break;
        }
    }

    private void setVVMImportanceSensitivity(ParamOMAObject paramOMAObject, ContentValues contentValues) {
        VvmMessageImportance vvmMessageImportance = VvmMessageImportance.INVALID;
        VvmMessageSensitivity vvmMessageSensitivity = VvmMessageSensitivity.INVALID;
        String str = paramOMAObject.SENSITIVITY;
        if (str != null) {
            if (str.equalsIgnoreCase(PERSONAL_SENSITIVITY)) {
                vvmMessageSensitivity = VvmMessageSensitivity.PERSONAL;
            } else if (paramOMAObject.SENSITIVITY.equalsIgnoreCase(PRIVATE_SENSITIVITY)) {
                vvmMessageSensitivity = VvmMessageSensitivity.PRIVATE;
            } else if (paramOMAObject.SENSITIVITY.equalsIgnoreCase(CONFIDENTIAL_SENSITIVITY)) {
                vvmMessageSensitivity = VvmMessageSensitivity.CONFIDENTIAL;
            }
        }
        String str2 = paramOMAObject.IMPORTANCE;
        if (str2 != null) {
            if (str2.equalsIgnoreCase("NORMAL")) {
                vvmMessageImportance = VvmMessageImportance.NORMAL;
            } else if (paramOMAObject.IMPORTANCE.equalsIgnoreCase(HIGH_IMPORTANCE)) {
                vvmMessageImportance = VvmMessageImportance.HIGH;
            }
        }
        contentValues.put("importance", vvmMessageImportance.toString());
        contentValues.put(CloudMessageProviderContract.VVMMessageColumns.SENSITIVITY, vvmMessageSensitivity.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00fb, code lost:
    
        if (r14.equals(com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud) != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ff, code lost:
    
        if (r10 >= r0) goto L36;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0109 A[Catch: all -> 0x01d1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x01d1, blocks: (B:21:0x0109, B:52:0x00bf, B:54:0x00c7, B:57:0x00d3, B:59:0x00db, B:60:0x00df, B:61:0x00e8, B:65:0x00f5, B:78:0x01b3), top: B:6:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0166 A[Catch: all -> 0x01a8, TRY_LEAVE, TryCatch #3 {all -> 0x01a8, blocks: (B:16:0x00ad, B:19:0x0103, B:23:0x0128, B:26:0x0166, B:50:0x00b7), top: B:15:0x00ad }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x019a A[Catch: all -> 0x01a4, TRY_LEAVE, TryCatch #2 {all -> 0x01a4, blocks: (B:28:0x0196, B:36:0x019a), top: B:24:0x0164 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[Catch: NullPointerException -> 0x01e3, SYNTHETIC, TRY_LEAVE, TryCatch #5 {NullPointerException -> 0x01e3, blocks: (B:3:0x002e, B:31:0x01cd, B:47:0x01e2, B:46:0x01df, B:41:0x01d9), top: B:2:0x002e, inners: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0121  */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v13 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [com.sec.internal.ims.cmstore.params.ParamSyncFlagsSet] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long handleObjectVvmMessageCloudSearch(com.sec.internal.ims.cmstore.params.ParamOMAObject r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 494
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.VVMScheduler.handleObjectVvmMessageCloudSearch(com.sec.internal.ims.cmstore.params.ParamOMAObject, boolean):long");
    }

    public long handleObjectVvmGreetingCloudSearch(ParamOMAObject paramOMAObject) {
        Log.i(this.TAG, "handleObjectVvmGreetingCloudSearch: " + paramOMAObject);
        try {
            String lineTelUriFromObjUrl = Util.getLineTelUriFromObjUrl(paramOMAObject.resourceURL.toString());
            this.mSummaryDB.insertSummaryDbUsingObjectIfNonExist(paramOMAObject, 18);
            return this.mBufferDbQuery.insertVvmGreetingUsingObject(paramOMAObject, lineTelUriFromObjUrl, true);
        } catch (NullPointerException e) {
            Log.e(this.TAG, e.toString());
            return -1L;
        }
    }

    public void handleNormalSyncDownloadedVVMGreeting(ParamOMAObject paramOMAObject) {
        Log.i(this.TAG, "handleNormalSyncDownloadedVVMGreeting: " + paramOMAObject);
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        Cursor queryBufferDBWithResUrl = this.mBufferDbQuery.queryBufferDBWithResUrl(18, paramOMAObject.resourceURL.toString());
        try {
            String lineTelUriFromObjUrl = Util.getLineTelUriFromObjUrl(paramOMAObject.resourceURL.toString());
            if (queryBufferDBWithResUrl != null && queryBufferDBWithResUrl.moveToFirst()) {
                long j = queryBufferDBWithResUrl.getLong(queryBufferDBWithResUrl.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                ContentValues contentValues = new ContentValues();
                contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
                contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
                contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
                this.mBufferDbQuery.updateTable(18, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
                this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMGREETING, j);
            } else {
                bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(18, this.mBufferDbQuery.insertVvmGreetingUsingObject(paramOMAObject, lineTelUriFromObjUrl, true), false, lineTelUriFromObjUrl, this.mStoreClient));
            }
            if (queryBufferDBWithResUrl != null) {
                queryBufferDBWithResUrl.close();
            }
            if (bufferDBChangeParamList.mChangelst.size() > 0) {
                this.mDeviceDataChangeListener.sendDeviceNormalSyncDownload(bufferDBChangeParamList);
            }
        } catch (Throwable th) {
            if (queryBufferDBWithResUrl != null) {
                try {
                    queryBufferDBWithResUrl.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public int queryPendingVVMUrlFetch(int i) {
        Cursor queryMessageBySyncAction = this.mBufferDbQuery.queryMessageBySyncAction(i, CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId());
        if (queryMessageBySyncAction == null) {
            if (queryMessageBySyncAction == null) {
                return 0;
            }
            queryMessageBySyncAction.close();
            return 0;
        }
        try {
            Log.i(this.TAG, " count : " + queryMessageBySyncAction.getCount());
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

    public Cursor queryVVMwithResUrl(String str) {
        return this.mBufferDbQuery.queryBufferDBWithResUrl(17, str);
    }

    public void handleNormalSyncDownloadedVVMMessage(ParamOMAObject paramOMAObject) {
        Log.i(this.TAG, "handleNormalSyncDownloadedVVMMessage: " + paramOMAObject);
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        Cursor queryVVMwithResUrl = queryVVMwithResUrl(paramOMAObject.resourceURL.toString());
        if (queryVVMwithResUrl != null) {
            try {
                if (queryVVMwithResUrl.moveToFirst()) {
                    int i = queryVVMwithResUrl.getInt(queryVVMwithResUrl.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
                    URL url = paramOMAObject.payloadURL;
                    if (url != null) {
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.PAYLOADURL, url.toString());
                    }
                    String[] strArr = {String.valueOf(i)};
                    String lineTelUriFromObjUrl = Util.getLineTelUriFromObjUrl(paramOMAObject.resourceURL.toString());
                    this.mBufferDbQuery.updateTable(17, contentValues, "_bufferdbid=?", strArr);
                    bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(17, i, false, lineTelUriFromObjUrl, this.mStoreClient));
                }
            } catch (Throwable th) {
                try {
                    queryVVMwithResUrl.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryVVMwithResUrl != null) {
            queryVVMwithResUrl.close();
        }
        if (bufferDBChangeParamList.mChangelst.size() > 0) {
            this.mDeviceDataChangeListener.sendDeviceNormalSyncDownload(bufferDBChangeParamList);
        }
    }

    public void onUpdateFromDeviceFtUriFetch(DeviceMsgAppFetchUriParam deviceMsgAppFetchUriParam) {
        onUpdateFromDeviceFtUriFetch(deviceMsgAppFetchUriParam, this.mBufferDbQuery);
    }

    public void onUpdateFromDeviceMsgAppFetch(DeviceMsgAppFetchUpdateParam deviceMsgAppFetchUpdateParam, boolean z) {
        onUpdateFromDeviceMsgAppFetch(deviceMsgAppFetchUpdateParam, z, this.mBufferDbQuery);
    }

    public void onVvmAllPayloadDownloaded(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getAllPayloads() == null || paramOMAresponseforBufDB.getAllPayloads().size() < 1) {
            return;
        }
        try {
            Cursor queryTablewithBufferDbId = this.mBufferDbQuery.queryTablewithBufferDbId(paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
            if (queryTablewithBufferDbId != null) {
                try {
                    if (queryTablewithBufferDbId.moveToFirst()) {
                        int i = queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        String string = queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow("linenum"));
                        String[] strArr = {String.valueOf(i)};
                        ContentValues contentValues = new ContentValues();
                        for (int i2 = 0; i2 < paramOMAresponseforBufDB.getAllPayloads().size(); i2++) {
                            String contentType = paramOMAresponseforBufDB.getAllPayloads().get(i2).getContentType();
                            InputStream inputStream = null;
                            try {
                                if (contentType.contains("text")) {
                                    String[] header = paramOMAresponseforBufDB.getAllPayloads().get(i2).getHeader("X-Transcription-Language");
                                    if (header != null && header.length > 0) {
                                        Log.i(this.TAG, "onVvmAllPayloadDownloaded adhocV2tReceived value: " + header[0]);
                                        contentValues.put(CloudMessageProviderContract.VVMAccountInfoColumns.V2T_LANGUAGE, header[0]);
                                    }
                                    inputStream = paramOMAresponseforBufDB.getAllPayloads().get(i2).getInputStream();
                                    Log.i(this.TAG, "onVvmAllPayloadDownloaded VM transcription present");
                                    contentValues.put("text", getTextDatafromInputStream(inputStream));
                                } else if (contentType.contains("audio") && !paramOMAresponseforBufDB.getBufferDBChangeParam().mIsAdhocV2t) {
                                    try {
                                        String string2 = queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.FILE_URI));
                                        if (string2 != null) {
                                            inputStream = paramOMAresponseforBufDB.getAllPayloads().get(i2).getInputStream();
                                            contentValues.put("size", Long.valueOf(Util.saveInputStreamtoAppUri(this.mContext, inputStream, string2)));
                                        }
                                    } catch (SQLException e) {
                                        e.printStackTrace();
                                    }
                                }
                            } finally {
                                if (0 != 0) {
                                    inputStream.close();
                                }
                            }
                        }
                        ParamSyncFlagsSet paramSyncFlagsSet = new ParamSyncFlagsSet(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice, CloudMessageBufferDBConstants.ActionStatusFlag.UpdatePayload);
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(paramSyncFlagsSet.mDirection.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(paramSyncFlagsSet.mAction.getId()));
                        this.mBufferDbQuery.updateTable(17, contentValues, "_bufferdbid= ?", strArr);
                        if (paramOMAresponseforBufDB.getBufferDBChangeParam().mIsAdhocV2t) {
                            this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.ADHOC_V2TLANGUAGE, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
                            this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(false);
                        } else {
                            handleOutPutParamSyncFlagSet(paramSyncFlagsSet, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId, 17, false, z, string, null, false);
                        }
                    }
                } finally {
                }
            }
            if (queryTablewithBufferDbId != null) {
                queryTablewithBufferDbId.close();
            }
        } catch (IOException | NullPointerException | MessagingException e2) {
            e2.printStackTrace();
        }
    }

    private String getTextDatafromInputStream(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (inputStream != null) {
            try {
                try {
                    byte[] bArr = new byte[256];
                    int read = inputStream.read(bArr);
                    while (read >= 0) {
                        byteArrayOutputStream.write(bArr, 0, read);
                        read = inputStream.read(bArr);
                    }
                } catch (IOException e) {
                    Log.e(this.TAG, "getTextDatafromInputStream error: " + e);
                    try {
                        inputStream.close();
                        return null;
                    } catch (IOException e2) {
                        Log.e(this.TAG, "getTextDatafromInputStream: error:" + e2);
                        return null;
                    }
                }
            } finally {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                    Log.e(this.TAG, "getTextDatafromInputStream: error:" + e3);
                }
            }
        }
        if (inputStream != null) {
        }
        Log.i(this.TAG, "getTextDatafromInputStream size: " + byteArrayOutputStream.size() + ", value: " + IMSLog.checker(byteArrayOutputStream.toString()));
        return byteArrayOutputStream.toString();
    }

    public void onGreetingAllPayloadDownloaded(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getAllPayloads() == null || paramOMAresponseforBufDB.getAllPayloads().size() < 1) {
            return;
        }
        try {
            Cursor queryTablewithBufferDbId = this.mBufferDbQuery.queryTablewithBufferDbId(paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
            try {
                InputStream inputStream = paramOMAresponseforBufDB.getAllPayloads().get(0).getInputStream();
                if (queryTablewithBufferDbId != null) {
                    try {
                        if (queryTablewithBufferDbId.moveToFirst()) {
                            int i = queryTablewithBufferDbId.getInt(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                            String string = queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow("linenum"));
                            String[] strArr = {String.valueOf(i)};
                            ContentValues contentValues = new ContentValues();
                            long j = 0;
                            try {
                                String string2 = queryTablewithBufferDbId.getString(queryTablewithBufferDbId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.FILE_URI));
                                if (string2 != null) {
                                    j = Util.saveInputStreamtoAppUri(this.mContext, inputStream, string2);
                                }
                            } catch (SQLException e) {
                                e.printStackTrace();
                            }
                            ParamSyncFlagsSet paramSyncFlagsSet = new ParamSyncFlagsSet(CloudMessageBufferDBConstants.DirectionFlag.UpdatingDevice, CloudMessageBufferDBConstants.ActionStatusFlag.UpdatePayload);
                            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(paramSyncFlagsSet.mDirection.getId()));
                            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(paramSyncFlagsSet.mAction.getId()));
                            contentValues.put("size", Long.valueOf(j));
                            this.mBufferDbQuery.updateTable(18, contentValues, "_bufferdbid= ?", strArr);
                            handleOutPutParamSyncFlagSet(paramSyncFlagsSet, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId, 18, false, z, string, null, false);
                        }
                    } finally {
                    }
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                if (queryTablewithBufferDbId != null) {
                    queryTablewithBufferDbId.close();
                }
            } finally {
            }
        } catch (IOException | NullPointerException | MessagingException e2) {
            e2.printStackTrace();
        }
    }

    public void handleDownLoadMessageResponse(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        Log.d(this.TAG, "handleDownLoadMessageResponse: " + paramOMAresponseforBufDB + ", isSuccess: " + z);
        if (z || !ParamOMAresponseforBufDB.ActionType.OBJECT_NOT_FOUND.equals(paramOMAresponseforBufDB.getActionType())) {
            return;
        }
        this.mBufferDbQuery.setMsgDeleted(paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    public void onAppOperationReceived(ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "onAppOperationReceived: " + paramAppJsonValue);
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[paramAppJsonValue.mOperation.ordinal()];
        if (i == 1) {
            handleUploadVvm(paramAppJsonValue);
            return;
        }
        if (i == 2) {
            handleReadVvm(paramAppJsonValue, bufferDBChangeParamList);
            return;
        }
        if (i == 3) {
            handleUnReadVvm(paramAppJsonValue, bufferDBChangeParamList);
        } else if (i == 4) {
            handledeleteVvm(paramAppJsonValue, bufferDBChangeParamList);
        } else {
            if (i != 5) {
                return;
            }
            onDownloadRequestFromApp(paramAppJsonValue);
        }
    }

    private void onDownloadRequestFromApp(ParamAppJsonValue paramAppJsonValue) {
        long j = 0;
        if (paramAppJsonValue != null && ParamVvmUpdate.VvmTypeChange.FULLPROFILE.equals(paramAppJsonValue.mVvmUpdate.mVvmChange)) {
            long insertDownloadNewProfileRequest = this.mBufferDbQuery.insertDownloadNewProfileRequest(paramAppJsonValue.mVvmUpdate);
            if (insertDownloadNewProfileRequest > 0) {
                this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(true);
                BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
                bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(20, insertDownloadNewProfileRequest, false, paramAppJsonValue.mLine, this.mStoreClient));
                this.mDeviceDataChangeListener.sendDeviceNormalSyncDownload(bufferDBChangeParamList);
                return;
            }
            return;
        }
        if (paramAppJsonValue == null || paramAppJsonValue.mDataContractType != 17) {
            return;
        }
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("onDownloadRequestFromApp ADHOCV2T present: ");
        ParamVvmUpdate.VvmTypeChange vvmTypeChange = ParamVvmUpdate.VvmTypeChange.ADHOC_V2T;
        sb.append(vvmTypeChange.equals(paramAppJsonValue.mVvmUpdate.mVvmChange));
        Log.i(str, sb.toString());
        Cursor queryVvmMessageBufferDBwithAppId = this.mBufferDbQuery.queryVvmMessageBufferDBwithAppId(paramAppJsonValue.mRowId);
        if (queryVvmMessageBufferDBwithAppId != null) {
            try {
                if (queryVvmMessageBufferDBwithAppId.moveToFirst()) {
                    j = queryVvmMessageBufferDBwithAppId.getLong(queryVvmMessageBufferDBwithAppId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                }
            } catch (Throwable th) {
                if (queryVvmMessageBufferDBwithAppId != null) {
                    try {
                        queryVvmMessageBufferDBwithAppId.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        String[] strArr = {String.valueOf(j)};
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Downloading.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()));
        this.mBufferDbQuery.updateTable(17, contentValues, "_bufferdbid=?", strArr);
        if (queryVvmMessageBufferDBwithAppId != null) {
            queryVvmMessageBufferDBwithAppId.close();
        }
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(true);
        BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
        bufferDBChangeParamList2.mChangelst.add(new BufferDBChangeParam(paramAppJsonValue.mDataContractType, j, false, paramAppJsonValue.mLine, this.mStoreClient, vvmTypeChange.equals(paramAppJsonValue.mVvmUpdate.mVvmChange)));
        this.mDeviceDataChangeListener.sendDeviceNormalSyncDownload(bufferDBChangeParamList2);
    }

    public void handleSyncSummaryComplete(String str) {
        long validVVMQuotaRowID = this.mBufferDbQuery.getValidVVMQuotaRowID();
        if (validVVMQuotaRowID > 0) {
            BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
            bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(36, validVVMQuotaRowID, false, str, this.mStoreClient));
            this.mDeviceDataChangeListener.sendGetVVMQuotaInfo(bufferDBChangeParamList);
        }
    }

    private void handleReadVvm(ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        Cursor queryVvmMessageBufferDBwithAppId = this.mBufferDbQuery.queryVvmMessageBufferDBwithAppId(paramAppJsonValue.mRowId);
        if (queryVvmMessageBufferDBwithAppId != null) {
            try {
                if (queryVvmMessageBufferDBwithAppId.moveToFirst()) {
                    this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(true);
                    ContentValues contentValues = new ContentValues();
                    String string = queryVvmMessageBufferDBwithAppId.getString(queryVvmMessageBufferDBwithAppId.getColumnIndexOrThrow("linenum"));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud.getId()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
                    contentValues.put(CloudMessageProviderContract.VVMMessageColumns.FLAG_READ, (Integer) 1);
                    long j = queryVvmMessageBufferDBwithAppId.getLong(queryVvmMessageBufferDBwithAppId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                    this.mBufferDbQuery.updateTable(paramAppJsonValue.mDataContractType, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
                    bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(paramAppJsonValue.mDataContractType, j, false, string, this.mStoreClient));
                }
            } catch (Throwable th) {
                try {
                    queryVvmMessageBufferDBwithAppId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryVvmMessageBufferDBwithAppId != null) {
            queryVvmMessageBufferDBwithAppId.close();
        }
    }

    private void handleUnReadVvm(ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        Cursor queryVvmMessageBufferDBwithAppId = this.mBufferDbQuery.queryVvmMessageBufferDBwithAppId(paramAppJsonValue.mRowId);
        if (queryVvmMessageBufferDBwithAppId != null) {
            try {
                if (queryVvmMessageBufferDBwithAppId.moveToFirst()) {
                    this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(true);
                    ContentValues contentValues = new ContentValues();
                    String string = queryVvmMessageBufferDBwithAppId.getString(queryVvmMessageBufferDBwithAppId.getColumnIndexOrThrow("linenum"));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.UpdatingCloud.getId()));
                    contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
                    contentValues.put(CloudMessageProviderContract.VVMMessageColumns.FLAG_READ, (Integer) 0);
                    long j = queryVvmMessageBufferDBwithAppId.getLong(queryVvmMessageBufferDBwithAppId.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                    this.mBufferDbQuery.updateTable(paramAppJsonValue.mDataContractType, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
                    bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(paramAppJsonValue.mDataContractType, j, false, string, this.mStoreClient));
                }
            } catch (Throwable th) {
                try {
                    queryVvmMessageBufferDBwithAppId.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryVvmMessageBufferDBwithAppId != null) {
            queryVvmMessageBufferDBwithAppId.close();
        }
    }

    private void handledeleteVvm(ParamAppJsonValue paramAppJsonValue, BufferDBChangeParamList bufferDBChangeParamList) {
        Cursor queryVvmGreetingBufferDBwithAppId;
        Cursor cursor = null;
        try {
            int i = paramAppJsonValue.mDataContractType;
            if (i == 17) {
                queryVvmGreetingBufferDBwithAppId = this.mBufferDbQuery.queryVvmMessageBufferDBwithAppId(paramAppJsonValue.mRowId);
            } else if (i == 18) {
                queryVvmGreetingBufferDBwithAppId = this.mBufferDbQuery.queryVvmGreetingBufferDBwithAppId(paramAppJsonValue.mRowId);
            } else {
                Log.e(this.TAG, "handledeleteVvm, unrecognized datatype: " + paramAppJsonValue.mDataContractType);
                return;
            }
            Cursor cursor2 = queryVvmGreetingBufferDBwithAppId;
            if (cursor2 != null) {
                try {
                    if (cursor2.moveToFirst()) {
                        ContentValues contentValues = new ContentValues();
                        long j = cursor2.getLong(cursor2.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        CloudMessageBufferDBConstants.ActionStatusFlag valueOf = CloudMessageBufferDBConstants.ActionStatusFlag.valueOf(cursor2.getInt(cursor2.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION)));
                        CloudMessageBufferDBConstants.DirectionFlag valueOf2 = CloudMessageBufferDBConstants.DirectionFlag.valueOf(cursor2.getInt(cursor2.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION)));
                        String string = cursor2.getString(cursor2.getColumnIndexOrThrow("linenum"));
                        ParamSyncFlagsSet setFlagsForMsgOperation = this.mScheduleRule.getSetFlagsForMsgOperation(paramAppJsonValue.mDataContractType, j, valueOf2, valueOf, CloudMessageBufferDBConstants.MsgOperationFlag.Delete);
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(setFlagsForMsgOperation.mDirection.getId()));
                        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(setFlagsForMsgOperation.mAction.getId()));
                        this.mBufferDbQuery.updateTable(paramAppJsonValue.mDataContractType, contentValues, "_bufferdbid=?", new String[]{String.valueOf(j)});
                        if (setFlagsForMsgOperation.mIsChanged) {
                            this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(true);
                            handleOutPutParamSyncFlagSet(setFlagsForMsgOperation, j, paramAppJsonValue.mDataContractType, false, false, string, bufferDBChangeParamList, false);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursor2;
                    if (cursor != null && !cursor.isClosed()) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor2 == null || cursor2.isClosed()) {
                return;
            }
            cursor2.close();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void onVvmPINUpdateSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        this.mBufferDbQuery.updateTable(19, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMPIN, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    private void onVvmPINUpdateFailure(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.FAILURE.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("error_message", paramOMAresponseforBufDB.getReasonPhrase());
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        this.mBufferDbQuery.updateTable(19, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMPIN, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    private void onVvmGreetingUpdateSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        if (paramOMAresponseforBufDB.getReference() != null && paramOMAresponseforBufDB.getReference().resourceURL != null) {
            contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.RES_URL, Util.decodeUrlFromServer(paramOMAresponseforBufDB.getReference().resourceURL.toString()));
        }
        this.mBufferDbQuery.updateTable(18, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMGREETING, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    private void onVvmGreetingUpdateFailure(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.FAILURE.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        this.mBufferDbQuery.updateTable(18, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMGREETING, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    private void onVvmProfileUpdateSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        this.mBufferDbQuery.updateTable(20, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMPROFILE, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    private void onVvmProfileUpdateFailure(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.FAILURE.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        this.mBufferDbQuery.updateTable(20, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.VVMPROFILE, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    private void onAdhocV2tUpdateSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.SUCCESS.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        this.mBufferDbQuery.updateTable(17, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.ADHOC_V2TLANGUAGE, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    private void onAdhocV2tUpdateFailure(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.FAILURE.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        this.mBufferDbQuery.updateTable(17, contentValues, "_bufferdbid=?", strArr);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.ADHOC_V2TLANGUAGE, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleUploadVvm(com.sec.internal.ims.cmstore.params.ParamAppJsonValue r15) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.VVMScheduler.handleUploadVvm(com.sec.internal.ims.cmstore.params.ParamAppJsonValue):void");
    }

    /* renamed from: com.sec.internal.ims.cmstore.syncschedulers.VVMScheduler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageImportance;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity;

        static {
            int[] iArr = new int[ParamVvmUpdate.VvmTypeChange.values().length];
            $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange = iArr;
            try {
                iArr[ParamVvmUpdate.VvmTypeChange.GREETING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.PIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.VOICEMAILTOTEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.ACTIVATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.DEACTIVATE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.NUTOFF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.NUTON.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.V2TLANGUAGE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.V2T_SMS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.V2T_EMAIL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamVvmUpdate$VvmTypeChange[ParamVvmUpdate.VvmTypeChange.ADHOC_V2T.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr2 = new int[CloudMessageBufferDBConstants.MsgOperationFlag.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag = iArr2;
            try {
                iArr2[CloudMessageBufferDBConstants.MsgOperationFlag.Upload.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Read.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.UnRead.ordinal()] = 3;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Delete.ordinal()] = 4;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$CloudMessageBufferDBConstants$MsgOperationFlag[CloudMessageBufferDBConstants.MsgOperationFlag.Download.ordinal()] = 5;
            } catch (NoSuchFieldError unused16) {
            }
            int[] iArr3 = new int[VvmMessageImportance.values().length];
            $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageImportance = iArr3;
            try {
                iArr3[VvmMessageImportance.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageImportance[VvmMessageImportance.HIGH.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr4 = new int[VvmMessageSensitivity.values().length];
            $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity = iArr4;
            try {
                iArr4[VvmMessageSensitivity.PERSONAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity[VvmMessageSensitivity.PRIVATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$syncschedulers$VVMScheduler$VvmMessageSensitivity[VvmMessageSensitivity.CONFIDENTIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
        }
    }

    public Cursor queryToDeviceUnDownloadedVvm(String str, int i) {
        return this.mBufferDbQuery.queryToDeviceUnDownloadedVvm(str, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int queryVVMPDUActionStatus(long r2) {
        /*
            r1 = this;
            com.sec.internal.ims.cmstore.querybuilders.VVMQueryBuilder r1 = r1.mBufferDbQuery
            r0 = 17
            android.database.Cursor r1 = r1.queryTablewithBufferDbId(r0, r2)
            if (r1 == 0) goto L26
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L1c
            if (r2 == 0) goto L26
            java.lang.String r2 = "syncaction"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L1c
            int r2 = r1.getInt(r2)     // Catch: java.lang.Throwable -> L1c
            goto L27
        L1c:
            r2 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L21
            goto L25
        L21:
            r1 = move-exception
            r2.addSuppressed(r1)
        L25:
            throw r2
        L26:
            r2 = -1
        L27:
            if (r1 == 0) goto L2c
            r1.close()
        L2c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.syncschedulers.VVMScheduler.queryVVMPDUActionStatus(long):int");
    }

    public Cursor queryToDeviceUnDownloadedGreeting(String str, int i) {
        return this.mBufferDbQuery.queryToDeviceUnDownloadedGreeting(str, i);
    }

    public void notifyMsgAppDeleteFail(int i, long j, String str) {
        Log.i(this.TAG, "notifyMsgAppDeleteFail, dbIndex: " + i + " bufferDbId: " + j + " line: " + IMSLog.checker(str));
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(false);
        if (i == 17) {
            JsonArray jsonArray = new JsonArray();
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("id", String.valueOf(j));
            jsonArray.add(jsonObject);
            this.mCallbackMsgApp.notifyAppCloudDeleteFail("VVMDATA", "VVMDATA", jsonArray.toString());
        }
    }

    @Override // com.sec.internal.ims.cmstore.syncschedulers.BaseMessagingScheduler
    public void wipeOutData(int i, String str) {
        wipeOutData(i, str, this.mBufferDbQuery);
    }

    public void onCloudUpdateFlagSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(false);
        onCloudUpdateFlagSuccess(paramOMAresponseforBufDB, z, this.mBufferDbQuery);
    }

    public void onAdhocV2tPayloadDownloadFailure(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Log.i(this.TAG, "onAdhocV2tPayloadDownloadFailure");
        String[] strArr = {String.valueOf(paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId)};
        ContentValues contentValues = new ContentValues();
        contentValues.put("uploadstatus", Integer.valueOf(CloudMessageBufferDBConstants.UploadStatusFlag.FAILURE.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Update.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId()));
        contentValues.put("sim_imsi", this.mStoreClient.getCurrentIMSI());
        this.mBufferDbQuery.updateTable(17, contentValues, "_bufferdbid=?", strArr);
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(false);
        this.mBufferDbQuery.notifyApplication("VVMDATA", CloudMessageProviderContract.DataTypes.ADHOC_V2TLANGUAGE, paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId);
    }
}
