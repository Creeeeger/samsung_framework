package com.sec.internal.ims.cmstore.cloudmessagebuffer;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.constants.ims.servicemodules.im.ImContract;
import com.sec.internal.ims.cmstore.CloudMessageBufferDBEventSchedulingRule;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.ParamAppJsonValue;
import com.sec.internal.ims.cmstore.params.ParamAppJsonValueList;
import com.sec.internal.ims.cmstore.params.ParamVvmUpdate;
import com.sec.internal.ims.cmstore.querybuilders.SummaryQueryBuilder;
import com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler;
import com.sec.internal.ims.cmstore.syncschedulers.MultiLineScheduler;
import com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler;
import com.sec.internal.ims.cmstore.syncschedulers.SmsScheduler;
import com.sec.internal.ims.cmstore.syncschedulers.VVMScheduler;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.data.DeletedObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CloudMessageBufferDBHelper extends Handler {
    private String TAG;
    protected BufferDBChangeParamList mBufferDBChangeNetAPI;
    protected boolean mBufferDBloaded;
    protected final IBufferDBEventListener mCallbackMsgApp;
    protected final Context mContext;
    protected final IDeviceDataChangeListener mDeviceDataChangeListener;
    protected boolean mIsCmsEnabled;
    protected boolean mIsGoforwardSync;
    protected final MmsScheduler mMmsScheduler;
    protected final MultiLineScheduler mMultiLnScheduler;
    protected int mPhoneId;
    protected boolean mProvisionSuccess;
    protected boolean mRCSDbReady;
    protected final RcsScheduler mRcsScheduler;
    protected final CloudMessageBufferDBEventSchedulingRule mScheduleRule;
    protected final SmsScheduler mSmsScheduler;
    protected MessageStoreClient mStoreClient;
    protected final SummaryQueryBuilder mSummaryQuery;
    protected final VVMScheduler mVVMScheduler;

    protected void handleBufferDbReadMessageJson(String str) {
    }

    public CloudMessageBufferDBHelper(Looper looper, MessageStoreClient messageStoreClient, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, boolean z) {
        super(looper);
        this.TAG = CloudMessageBufferDBHelper.class.getSimpleName();
        this.mBufferDBChangeNetAPI = null;
        this.mRCSDbReady = false;
        this.mProvisionSuccess = false;
        this.mBufferDBloaded = false;
        this.mIsGoforwardSync = false;
        this.mIsCmsEnabled = false;
        this.mPhoneId = 0;
        String str = this.TAG + "[" + messageStoreClient.getClientID() + "]";
        this.TAG = str;
        Log.d(str, "onCreate");
        this.mStoreClient = messageStoreClient;
        this.mPhoneId = messageStoreClient.getClientID();
        this.mContext = messageStoreClient.getContext();
        this.mIsCmsEnabled = z;
        this.mBufferDBloaded = this.mStoreClient.getPrerenceManager().getBufferDbLoaded();
        CloudMessageBufferDBEventSchedulingRule cloudMessageBufferDBEventSchedulingRule = new CloudMessageBufferDBEventSchedulingRule();
        this.mScheduleRule = cloudMessageBufferDBEventSchedulingRule;
        this.mDeviceDataChangeListener = iDeviceDataChangeListener;
        this.mCallbackMsgApp = iBufferDBEventListener;
        this.mBufferDBChangeNetAPI = new BufferDBChangeParamList();
        SummaryQueryBuilder summaryQueryBuilder = new SummaryQueryBuilder(this.mStoreClient, iBufferDBEventListener);
        this.mSummaryQuery = summaryQueryBuilder;
        MultiLineScheduler multiLineScheduler = new MultiLineScheduler(this.mStoreClient, cloudMessageBufferDBEventSchedulingRule, summaryQueryBuilder, iDeviceDataChangeListener, iBufferDBEventListener, looper);
        this.mMultiLnScheduler = multiLineScheduler;
        SmsScheduler smsScheduler = new SmsScheduler(this.mStoreClient, cloudMessageBufferDBEventSchedulingRule, summaryQueryBuilder, multiLineScheduler, iDeviceDataChangeListener, iBufferDBEventListener, looper);
        this.mSmsScheduler = smsScheduler;
        MmsScheduler mmsScheduler = new MmsScheduler(this.mStoreClient, cloudMessageBufferDBEventSchedulingRule, summaryQueryBuilder, multiLineScheduler, iDeviceDataChangeListener, iBufferDBEventListener, looper);
        this.mMmsScheduler = mmsScheduler;
        this.mRcsScheduler = new RcsScheduler(this.mStoreClient, cloudMessageBufferDBEventSchedulingRule, summaryQueryBuilder, iDeviceDataChangeListener, iBufferDBEventListener, mmsScheduler, smsScheduler, looper);
        this.mVVMScheduler = new VVMScheduler(this.mStoreClient, cloudMessageBufferDBEventSchedulingRule, summaryQueryBuilder, iDeviceDataChangeListener, iBufferDBEventListener, looper);
    }

    public void resetImsi() {
        this.mRcsScheduler.resetImsi();
        this.mMultiLnScheduler.resetImsi();
        this.mSummaryQuery.resetImsi();
        this.mVVMScheduler.resetImsi();
    }

    protected void buildBufferList(BufferDBChangeParamList bufferDBChangeParamList, Cursor cursor, int i, boolean z, boolean z2) {
        if (z2) {
            if (cursor == null || !cursor.moveToFirst()) {
                return;
            }
            Log.i(this.TAG, "bufferlist query count for isUpload : " + cursor.getCount());
            do {
                bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(i, cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID)), z, cursor.getString(cursor.getColumnIndexOrThrow("linenum")), this.mStoreClient));
            } while (cursor.moveToNext());
            return;
        }
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        Log.i(this.TAG, "bufferlist query count: " + cursor.getCount());
        do {
            bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(i, cursor.getInt(cursor.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID)), z, cursor.getString(cursor.getColumnIndexOrThrow("linenum")), this.mStoreClient));
        } while (cursor.moveToNext());
    }

    protected void onSendPayloadObject(String str, SyncMsgType syncMsgType) {
        Log.i(this.TAG, "onSendPayloadObject");
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        if (SyncMsgType.MESSAGE.equals(syncMsgType) || SyncMsgType.DEFAULT.equals(syncMsgType)) {
            MmsScheduler mmsScheduler = this.mMmsScheduler;
            CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri;
            Cursor queryToDeviceUnDownloadedMms = mmsScheduler.queryToDeviceUnDownloadedMms(str, actionStatusFlag.getId());
            try {
                buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedMms, 4, false, false);
                if (queryToDeviceUnDownloadedMms != null) {
                    queryToDeviceUnDownloadedMms.close();
                }
                queryToDeviceUnDownloadedMms = this.mMmsScheduler.queryToDeviceUnDownloadedMms(str, CloudMessageBufferDBConstants.ActionStatusFlag.FetchForce.getId());
                try {
                    buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedMms, 4, false, false);
                    if (queryToDeviceUnDownloadedMms != null) {
                        queryToDeviceUnDownloadedMms.close();
                    }
                    Cursor queryToDeviceUnDownloadedRcs = this.mRcsScheduler.queryToDeviceUnDownloadedRcs(str, actionStatusFlag.getId());
                    try {
                        buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedRcs, 1, false, false);
                        if (queryToDeviceUnDownloadedRcs != null) {
                            queryToDeviceUnDownloadedRcs.close();
                        }
                    } catch (Throwable th) {
                        if (queryToDeviceUnDownloadedRcs != null) {
                            try {
                                queryToDeviceUnDownloadedRcs.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } finally {
                }
            } finally {
            }
        }
        if (bufferDBChangeParamList.mChangelst.size() > 0) {
            notifyUriRequesttoApp(bufferDBChangeParamList);
        }
    }

    protected void onUnDownloadedMmsMessageForMcs(String str, SyncMsgType syncMsgType) {
        Log.i(this.TAG, "onUnDownloadedMmsMessageForMcs");
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        int messageType = getMessageType(syncMsgType);
        if (SyncMsgType.MESSAGE.equals(syncMsgType) || SyncMsgType.DEFAULT.equals(syncMsgType)) {
            Cursor queryToDeviceUnDownloadedMms = this.mMmsScheduler.queryToDeviceUnDownloadedMms(str, CloudMessageBufferDBConstants.ActionStatusFlag.FetchForce.getId());
            try {
                buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedMms, 4, false, false);
                if (queryToDeviceUnDownloadedMms != null) {
                    queryToDeviceUnDownloadedMms.close();
                }
            } catch (Throwable th) {
                if (queryToDeviceUnDownloadedMms != null) {
                    try {
                        queryToDeviceUnDownloadedMms.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (bufferDBChangeParamList.mChangelst.size() > 0) {
            this.mDeviceDataChangeListener.sendDeviceInitialSyncDownload(bufferDBChangeParamList);
        } else if (messageType >= 0) {
            bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(messageType, 0L, false, str, this.mStoreClient));
            this.mDeviceDataChangeListener.sendDeviceInitialSyncDownload(bufferDBChangeParamList);
        }
    }

    protected void onSendMCSUnDownloadedMessage(String str, SyncMsgType syncMsgType, boolean z) {
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        int messageType = getMessageType(syncMsgType);
        if (this.mMmsScheduler.queryPendingFetchForce() > 0) {
            onUnDownloadedMmsMessageForMcs(str, SyncMsgType.MESSAGE);
            return;
        }
        if (SyncMsgType.MESSAGE.equals(syncMsgType) || SyncMsgType.DEFAULT.equals(syncMsgType)) {
            MmsScheduler mmsScheduler = this.mMmsScheduler;
            CloudMessageBufferDBConstants.ActionStatusFlag actionStatusFlag = CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad;
            Cursor queryToDeviceUnDownloadedMms = mmsScheduler.queryToDeviceUnDownloadedMms(str, actionStatusFlag.getId());
            try {
                buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedMms, 4, z, false);
                if (queryToDeviceUnDownloadedMms != null) {
                    queryToDeviceUnDownloadedMms.close();
                }
                Cursor queryToDeviceUnDownloadedRcs = this.mRcsScheduler.queryToDeviceUnDownloadedRcs(str, actionStatusFlag.getId());
                try {
                    buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedRcs, 1, z, false);
                    if (queryToDeviceUnDownloadedRcs != null) {
                        queryToDeviceUnDownloadedRcs.close();
                    }
                } finally {
                }
            } finally {
            }
        }
        if (bufferDBChangeParamList.mChangelst.size() > 0) {
            this.mDeviceDataChangeListener.sendDeviceInitialSyncDownload(bufferDBChangeParamList);
        } else if (messageType >= 0) {
            bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(messageType, 0L, z, str, this.mStoreClient));
            this.mDeviceDataChangeListener.sendDeviceInitialSyncDownload(bufferDBChangeParamList);
        }
    }

    protected void onSendUnDownloadedMessage(String str, SyncMsgType syncMsgType, boolean z, int i) {
        int i2;
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        int messageType = getMessageType(syncMsgType);
        if (SyncMsgType.MESSAGE.equals(syncMsgType) || SyncMsgType.DEFAULT.equals(syncMsgType)) {
            int queryPendingUrlFetch = this.mRcsScheduler.queryPendingUrlFetch();
            int queryPendingFetchForce = this.mMmsScheduler.queryPendingFetchForce();
            Log.i(this.TAG, "onSendUnDownloadedMessage syncAction: " + i + ", pendingRCSCount: " + queryPendingUrlFetch + " pendingLegacyMMSCount" + queryPendingFetchForce);
            Cursor queryToDeviceUnDownloadedMms = this.mMmsScheduler.queryToDeviceUnDownloadedMms(str, i);
            try {
                if (i == CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId()) {
                    buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedMms, 4, z, false);
                } else if (queryToDeviceUnDownloadedMms != null && queryToDeviceUnDownloadedMms.moveToFirst()) {
                    do {
                        this.mMmsScheduler.addMmsPartDownloadList(bufferDBChangeParamList, queryToDeviceUnDownloadedMms.getInt(queryToDeviceUnDownloadedMms.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID)), queryToDeviceUnDownloadedMms.getString(queryToDeviceUnDownloadedMms.getColumnIndexOrThrow("linenum")), z);
                    } while (queryToDeviceUnDownloadedMms.moveToNext());
                }
                if (queryToDeviceUnDownloadedMms != null) {
                    queryToDeviceUnDownloadedMms.close();
                }
                Cursor queryToDeviceUnDownloadedRcs = this.mRcsScheduler.queryToDeviceUnDownloadedRcs(str, i);
                try {
                    buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedRcs, 1, z, false);
                    if (queryToDeviceUnDownloadedRcs != null) {
                        queryToDeviceUnDownloadedRcs.close();
                    }
                    i2 = queryPendingFetchForce;
                } finally {
                }
            } finally {
            }
        } else {
            if (SyncMsgType.VM.equals(syncMsgType)) {
                Cursor queryToDeviceUnDownloadedVvm = this.mVVMScheduler.queryToDeviceUnDownloadedVvm(str, i);
                try {
                    buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedVvm, 17, z, false);
                    if (bufferDBChangeParamList.mChangelst.size() == 0) {
                        this.mDeviceDataChangeListener.setVVMSyncState(false);
                    }
                    if (queryToDeviceUnDownloadedVvm != null) {
                        queryToDeviceUnDownloadedVvm.close();
                    }
                } finally {
                }
            } else if (SyncMsgType.VM_GREETINGS.equals(syncMsgType)) {
                Cursor queryToDeviceUnDownloadedGreeting = this.mVVMScheduler.queryToDeviceUnDownloadedGreeting(str, i);
                try {
                    buildBufferList(bufferDBChangeParamList, queryToDeviceUnDownloadedGreeting, 18, z, false);
                    if (queryToDeviceUnDownloadedGreeting != null) {
                        queryToDeviceUnDownloadedGreeting.close();
                    }
                } finally {
                }
            }
            i2 = -1;
        }
        if (bufferDBChangeParamList.mChangelst.size() > 0) {
            if (this.mIsCmsEnabled) {
                if (i == CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId() && i2 > 0) {
                    onUnDownloadedMmsMessageForMcs(str, SyncMsgType.MESSAGE);
                    return;
                } else if (i == CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()) {
                    this.mDeviceDataChangeListener.sendDeviceInitialSyncDownload(bufferDBChangeParamList);
                    return;
                } else {
                    notifyUriRequesttoApp(bufferDBChangeParamList);
                    return;
                }
            }
            if (i == CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId()) {
                this.mDeviceDataChangeListener.sendDeviceInitialSyncDownload(bufferDBChangeParamList);
                return;
            } else {
                notifyUriRequesttoApp(bufferDBChangeParamList);
                return;
            }
        }
        if (messageType >= 0 && this.mIsCmsEnabled && i == CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId()) {
            onSendMCSUnDownloadedMessage(str, SyncMsgType.MESSAGE, false);
        } else if (messageType >= 0) {
            bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(messageType, 0L, z, str, this.mStoreClient));
            this.mDeviceDataChangeListener.sendDeviceInitialSyncDownload(bufferDBChangeParamList);
        }
    }

    protected void checkRCSNotifyUriRequestToApp(BufferDBChangeParamList bufferDBChangeParamList, int i) {
        ArrayList<BufferDBChangeParam> arrayList = bufferDBChangeParamList.mChangelst;
        Log.i(this.TAG, "checkRCSNotifyUriRequestToApp " + arrayList.size());
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new JsonArray());
        if (i == CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId()) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                BufferDBChangeParam bufferDBChangeParam = arrayList.get(i2);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("id", String.valueOf(bufferDBChangeParam.mRowId));
                if (bufferDBChangeParam.mDBIndex == 1) {
                    ((JsonArray) arrayList2.get(0)).add(jsonObject);
                }
            }
            if (((JsonArray) arrayList2.get(0)).size() > 0) {
                this.mCallbackMsgApp.notifyCloudMessageUpdate(CloudMessageProviderContract.ApplicationTypes.MSGDATA, "FT", ((JsonArray) arrayList2.get(0)).toString(), false);
            }
        }
    }

    protected void notifyUriRequesttoApp(BufferDBChangeParamList bufferDBChangeParamList) {
        String str;
        ArrayList<BufferDBChangeParam> arrayList = bufferDBChangeParamList.mChangelst;
        Log.i(this.TAG, "notifyUriRequesttoApp " + arrayList.size());
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < 4; i++) {
            arrayList2.add(new JsonArray());
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            BufferDBChangeParam bufferDBChangeParam = arrayList.get(i2);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("id", String.valueOf(bufferDBChangeParam.mRowId));
            int i3 = bufferDBChangeParam.mDBIndex;
            if (i3 == 4) {
                ((JsonArray) arrayList2.get(0)).add(jsonObject);
            } else if (i3 == 17) {
                ((JsonArray) arrayList2.get(2)).add(jsonObject);
            } else if (i3 == 18) {
                ((JsonArray) arrayList2.get(3)).add(jsonObject);
            } else {
                ((JsonArray) arrayList2.get(1)).add(jsonObject);
            }
        }
        Log.i(this.TAG, "notifyAppForFtUri notifyMMS " + ((JsonArray) arrayList2.get(0)).size() + " notifyRCS " + ((JsonArray) arrayList2.get(1)).size() + " notifyVVM count " + ((JsonArray) arrayList2.get(2)).size() + " notifyGreeting count " + ((JsonArray) arrayList2.get(3)).size());
        for (int i4 = 0; i4 < arrayList2.size(); i4++) {
            if (((JsonArray) arrayList2.get(i4)).size() > 0) {
                String str2 = CloudMessageProviderContract.ApplicationTypes.MSGDATA;
                if (i4 == 0) {
                    str = CloudMessageProviderContract.DataTypes.MMS;
                } else if (i4 != 1) {
                    str2 = "VVMDATA";
                    if (i4 != 2) {
                        if (i4 != 3) {
                            Log.d(this.TAG, "default apptype: datatype:");
                            str2 = "";
                        } else {
                            str = CloudMessageProviderContract.DataTypes.VVMGREETING;
                        }
                    }
                    str = str2;
                } else {
                    str = "FT";
                }
                this.mCallbackMsgApp.notifyCloudMessageUpdate(str2, str, ((JsonArray) arrayList2.get(i4)).toString(), false);
            }
        }
    }

    protected void onSendCloudUnSyncedUpdate() {
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        Cursor queryToCloudUnsyncedSms = this.mSmsScheduler.queryToCloudUnsyncedSms();
        try {
            buildBufferList(bufferDBChangeParamList, queryToCloudUnsyncedSms, 3, false, false);
            if (queryToCloudUnsyncedSms != null) {
                queryToCloudUnsyncedSms.close();
            }
            Cursor queryToCloudUnsyncedMms = this.mMmsScheduler.queryToCloudUnsyncedMms();
            try {
                buildBufferList(bufferDBChangeParamList, queryToCloudUnsyncedMms, 4, false, false);
                if (queryToCloudUnsyncedMms != null) {
                    queryToCloudUnsyncedMms.close();
                }
                Cursor queryToCloudUnsyncedRcs = this.mRcsScheduler.queryToCloudUnsyncedRcs();
                try {
                    buildBufferList(bufferDBChangeParamList, queryToCloudUnsyncedRcs, 1, false, false);
                    if (queryToCloudUnsyncedRcs != null) {
                        queryToCloudUnsyncedRcs.close();
                    }
                    if (bufferDBChangeParamList.mChangelst.size() > 0) {
                        this.mDeviceDataChangeListener.sendDeviceUpdate(bufferDBChangeParamList);
                    }
                } catch (Throwable th) {
                    if (queryToCloudUnsyncedRcs != null) {
                        try {
                            queryToCloudUnsyncedRcs.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (queryToCloudUnsyncedMms != null) {
                    try {
                        queryToCloudUnsyncedMms.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (Throwable th5) {
            if (queryToCloudUnsyncedSms != null) {
                try {
                    queryToCloudUnsyncedSms.close();
                } catch (Throwable th6) {
                    th5.addSuppressed(th6);
                }
            }
            throw th5;
        }
    }

    protected void onSendDeviceUnSyncedUpdate() {
        Cursor queryToDeviceUnsyncedSms = this.mSmsScheduler.queryToDeviceUnsyncedSms();
        if (queryToDeviceUnsyncedSms != null) {
            try {
                if (queryToDeviceUnsyncedSms.moveToFirst()) {
                    do {
                        int i = queryToDeviceUnsyncedSms.getInt(queryToDeviceUnsyncedSms.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        SmsScheduler smsScheduler = this.mSmsScheduler;
                        smsScheduler.notifyMsgAppCldNotification(CloudMessageProviderContract.ApplicationTypes.MSGDATA, smsScheduler.getMessageTypeString(3, false), i, false);
                    } while (queryToDeviceUnsyncedSms.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    queryToDeviceUnsyncedSms.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryToDeviceUnsyncedSms != null) {
            queryToDeviceUnsyncedSms.close();
        }
        Cursor queryToDeviceUnsyncedMms = this.mMmsScheduler.queryToDeviceUnsyncedMms();
        if (queryToDeviceUnsyncedMms != null) {
            try {
                if (queryToDeviceUnsyncedMms.moveToFirst()) {
                    do {
                        int i2 = queryToDeviceUnsyncedMms.getInt(queryToDeviceUnsyncedMms.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        MmsScheduler mmsScheduler = this.mMmsScheduler;
                        mmsScheduler.notifyMsgAppCldNotification(CloudMessageProviderContract.ApplicationTypes.MSGDATA, mmsScheduler.getMessageTypeString(4, false), i2, false);
                    } while (queryToDeviceUnsyncedMms.moveToNext());
                }
            } catch (Throwable th3) {
                try {
                    queryToDeviceUnsyncedMms.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (queryToDeviceUnsyncedMms != null) {
            queryToDeviceUnsyncedMms.close();
        }
        Cursor queryToDeviceUnsyncedRcs = this.mRcsScheduler.queryToDeviceUnsyncedRcs();
        if (queryToDeviceUnsyncedRcs != null) {
            try {
                if (queryToDeviceUnsyncedRcs.moveToFirst()) {
                    do {
                        int i3 = queryToDeviceUnsyncedRcs.getInt(queryToDeviceUnsyncedRcs.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID));
                        boolean z = queryToDeviceUnsyncedRcs.getInt(queryToDeviceUnsyncedRcs.getColumnIndexOrThrow(ImContract.ChatItem.IS_FILE_TRANSFER)) == 1;
                        RcsScheduler rcsScheduler = this.mRcsScheduler;
                        rcsScheduler.notifyMsgAppCldNotification(CloudMessageProviderContract.ApplicationTypes.MSGDATA, rcsScheduler.getMessageTypeString(1, z), i3, false);
                    } while (queryToDeviceUnsyncedRcs.moveToNext());
                }
            } catch (Throwable th5) {
                try {
                    queryToDeviceUnsyncedRcs.close();
                } catch (Throwable th6) {
                    th5.addSuppressed(th6);
                }
                throw th5;
            }
        }
        if (queryToDeviceUnsyncedRcs != null) {
            queryToDeviceUnsyncedRcs.close();
        }
    }

    private int getMessageType(SyncMsgType syncMsgType) {
        if (SyncMsgType.MESSAGE.equals(syncMsgType) || SyncMsgType.DEFAULT.equals(syncMsgType)) {
            return 1;
        }
        if (SyncMsgType.VM.equals(syncMsgType)) {
            return 17;
        }
        return SyncMsgType.VM_GREETINGS.equals(syncMsgType) ? 18 : -1;
    }

    protected void notifyNetAPIUploadMessages(String str, SyncMsgType syncMsgType, boolean z) {
        IMSLog.i(this.TAG, "notifyNetAPIUploadMessages Message upload started");
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        if (!this.mStoreClient.getCloudMessageStrategyManager().getStrategy().requiresMsgUploadInInitSync()) {
            int messageType = getMessageType(syncMsgType);
            if (messageType >= 0) {
                bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(messageType, 0L, false, str, this.mStoreClient));
            }
            this.mDeviceDataChangeListener.sendDeviceUpload(bufferDBChangeParamList);
            return;
        }
        if (this.mIsCmsEnabled) {
            Cursor queryGroupSession = this.mRcsScheduler.queryGroupSession();
            if (!z) {
                try {
                    buildBufferList(bufferDBChangeParamList, queryGroupSession, 10, false, true);
                } catch (Throwable th) {
                    if (queryGroupSession != null) {
                        try {
                            queryGroupSession.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            addSessionMessagesToList(queryGroupSession, bufferDBChangeParamList, false);
            if (queryGroupSession != null) {
                queryGroupSession.close();
            }
            Cursor queryOneToOneSession = this.mRcsScheduler.queryOneToOneSession();
            try {
                addSessionMessagesToList(queryOneToOneSession, bufferDBChangeParamList, false);
                if (queryOneToOneSession != null) {
                    queryOneToOneSession.close();
                }
            } catch (Throwable th3) {
                if (queryOneToOneSession != null) {
                    try {
                        queryOneToOneSession.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        }
        Cursor querySMSMessagesToUpload = this.mSmsScheduler.querySMSMessagesToUpload();
        try {
            buildBufferList(bufferDBChangeParamList, querySMSMessagesToUpload, 3, false, true);
            if (querySMSMessagesToUpload != null) {
                querySMSMessagesToUpload.close();
            }
            Cursor queryMMSMessagesToUpload = this.mMmsScheduler.queryMMSMessagesToUpload();
            try {
                buildBufferList(bufferDBChangeParamList, queryMMSMessagesToUpload, 4, false, true);
                if (queryMMSMessagesToUpload != null) {
                    queryMMSMessagesToUpload.close();
                }
                if (!this.mIsCmsEnabled) {
                    Cursor queryRCSMessagesToUpload = this.mRcsScheduler.queryRCSMessagesToUpload();
                    try {
                        buildBufferList(bufferDBChangeParamList, queryRCSMessagesToUpload, 1, false, true);
                        if (queryRCSMessagesToUpload != null) {
                            queryRCSMessagesToUpload.close();
                        }
                        Cursor queryImdnMessagesToUpload = this.mRcsScheduler.queryImdnMessagesToUpload();
                        try {
                            buildBufferList(bufferDBChangeParamList, queryImdnMessagesToUpload, 13, false, true);
                            if (queryImdnMessagesToUpload != null) {
                                queryImdnMessagesToUpload.close();
                            }
                        } catch (Throwable th5) {
                            if (queryImdnMessagesToUpload != null) {
                                try {
                                    queryImdnMessagesToUpload.close();
                                } catch (Throwable th6) {
                                    th5.addSuppressed(th6);
                                }
                            }
                            throw th5;
                        }
                    } catch (Throwable th7) {
                        if (queryRCSMessagesToUpload != null) {
                            try {
                                queryRCSMessagesToUpload.close();
                            } catch (Throwable th8) {
                                th7.addSuppressed(th8);
                            }
                        }
                        throw th7;
                    }
                }
                if (bufferDBChangeParamList.mChangelst.size() > 0) {
                    this.mDeviceDataChangeListener.sendDeviceUpload(bufferDBChangeParamList);
                } else {
                    bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(1, 0L, false, str, this.mStoreClient));
                    this.mDeviceDataChangeListener.sendDeviceUpload(bufferDBChangeParamList);
                }
            } catch (Throwable th9) {
                if (queryMMSMessagesToUpload != null) {
                    try {
                        queryMMSMessagesToUpload.close();
                    } catch (Throwable th10) {
                        th9.addSuppressed(th10);
                    }
                }
                throw th9;
            }
        } catch (Throwable th11) {
            if (querySMSMessagesToUpload != null) {
                try {
                    querySMSMessagesToUpload.close();
                } catch (Throwable th12) {
                    th11.addSuppressed(th12);
                }
            }
            throw th11;
        }
    }

    private void addSessionMessagesToList(Cursor cursor, BufferDBChangeParamList bufferDBChangeParamList, boolean z) {
        if (cursor == null || !cursor.moveToFirst()) {
            return;
        }
        do {
            String string = cursor.getString(cursor.getColumnIndexOrThrow("chat_id"));
            Cursor queryRCSMessagesToUploadByMessageType = this.mRcsScheduler.queryRCSMessagesToUploadByMessageType(string);
            try {
                buildBufferList(bufferDBChangeParamList, queryRCSMessagesToUploadByMessageType, 1, z, true);
                if (queryRCSMessagesToUploadByMessageType != null) {
                    queryRCSMessagesToUploadByMessageType.close();
                }
                Cursor queryRCSFtMessagesToUpload = this.mRcsScheduler.queryRCSFtMessagesToUpload(string);
                try {
                    buildBufferList(bufferDBChangeParamList, queryRCSFtMessagesToUpload, 12, z, true);
                    if (queryRCSFtMessagesToUpload != null) {
                        queryRCSFtMessagesToUpload.close();
                    }
                } catch (Throwable th) {
                    if (queryRCSFtMessagesToUpload != null) {
                        try {
                            queryRCSFtMessagesToUpload.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (queryRCSMessagesToUploadByMessageType != null) {
                    try {
                        queryRCSMessagesToUploadByMessageType.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } while (cursor.moveToNext());
    }

    protected void handleBulkOpSingleUrlSuccess(String str) {
        Log.d(this.TAG, "handleBulkDeleteSingleUrlSuccess: " + IMSLog.checker(str));
        if (str == null) {
            return;
        }
        Cursor querySummaryDBwithResUrl = this.mSummaryQuery.querySummaryDBwithResUrl(str);
        if (querySummaryDBwithResUrl != null) {
            try {
                if (querySummaryDBwithResUrl.moveToFirst()) {
                    onUpdateBufferDBBulkUpdateSuccess(querySummaryDBwithResUrl, str);
                }
            } catch (Throwable th) {
                try {
                    querySummaryDBwithResUrl.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySummaryDBwithResUrl != null) {
            querySummaryDBwithResUrl.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onUpdateBufferDBBulkUpdateSuccess(android.database.Cursor r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferDBHelper.onUpdateBufferDBBulkUpdateSuccess(android.database.Cursor, java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onNmsEventChangedObjSummaryDbAvailableUsingUrl(android.database.Cursor r4, com.sec.internal.omanetapi.nms.data.ChangedObject r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferDBHelper.onNmsEventChangedObjSummaryDbAvailableUsingUrl(android.database.Cursor, com.sec.internal.omanetapi.nms.data.ChangedObject, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void handleCloudNotifyChangedObj(com.sec.internal.omanetapi.nms.data.ChangedObject r10, com.sec.internal.ims.cmstore.params.BufferDBChangeParamList r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferDBHelper.handleCloudNotifyChangedObj(com.sec.internal.omanetapi.nms.data.ChangedObject, com.sec.internal.ims.cmstore.params.BufferDBChangeParamList, boolean):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void onNmsEventDeletedObjSummaryDbAvailableUsingUrl(android.database.Cursor r4, com.sec.internal.omanetapi.nms.data.DeletedObject r5, boolean r6) {
        /*
            r3 = this;
            java.lang.String r0 = "messagetype"
            int r0 = r4.getColumnIndexOrThrow(r0)
            int r4 = r4.getInt(r0)
            java.lang.String r0 = r3.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "onNmsEventDeletedObjSummaryDbAvailableUsingUrl(), type: "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
            r0 = 1
            if (r4 == r0) goto L94
            r0 = 14
            if (r4 == r0) goto L94
            r0 = 3
            if (r4 == r0) goto L61
            r0 = 4
            if (r4 == r0) goto L37
            r0 = 11
            if (r4 == r0) goto L94
            r0 = 12
            if (r4 == r0) goto L94
            goto Lbd
        L37:
            com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler r4 = r3.mMmsScheduler
            java.net.URL r0 = r5.resourceURL
            java.lang.String r0 = r0.toString()
            android.database.Cursor r4 = r4.queryMMSBufferDBwithResUrl(r0)
            if (r4 == 0) goto L5b
            boolean r0 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L51
            if (r0 == 0) goto L5b
            com.sec.internal.ims.cmstore.syncschedulers.MmsScheduler r3 = r3.mMmsScheduler     // Catch: java.lang.Throwable -> L51
            r3.onNmsEventDeletedObjBufferDbMmsAvailableUsingUrl(r4, r5, r6)     // Catch: java.lang.Throwable -> L51
            goto L5b
        L51:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> L56
            goto L5a
        L56:
            r4 = move-exception
            r3.addSuppressed(r4)
        L5a:
            throw r3
        L5b:
            if (r4 == 0) goto Lbd
            r4.close()
            goto Lbd
        L61:
            com.sec.internal.ims.cmstore.syncschedulers.SmsScheduler r4 = r3.mSmsScheduler
            java.net.URL r0 = r5.resourceURL
            java.lang.String r0 = r0.toString()
            android.database.Cursor r4 = r4.querySMSBufferDBwithResUrl(r0)
            if (r4 == 0) goto L7b
            boolean r0 = r4.moveToFirst()     // Catch: java.lang.Throwable -> L88
            if (r0 == 0) goto L7b
            com.sec.internal.ims.cmstore.syncschedulers.SmsScheduler r3 = r3.mSmsScheduler     // Catch: java.lang.Throwable -> L88
            r3.onNmsEventDeletedObjBufferDbSmsAvailableUsingUrl(r4, r5, r6)     // Catch: java.lang.Throwable -> L88
            goto L82
        L7b:
            java.lang.String r3 = r3.TAG     // Catch: java.lang.Throwable -> L88
            java.lang.String r5 = "inconsistency between buffer or duplicated nms event"
            android.util.Log.e(r3, r5)     // Catch: java.lang.Throwable -> L88
        L82:
            if (r4 == 0) goto Lbd
            r4.close()
            goto Lbd
        L88:
            r3 = move-exception
            if (r4 == 0) goto L93
            r4.close()     // Catch: java.lang.Throwable -> L8f
            goto L93
        L8f:
            r4 = move-exception
            r3.addSuppressed(r4)
        L93:
            throw r3
        L94:
            com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler r4 = r3.mRcsScheduler
            java.net.URL r0 = r5.resourceURL
            java.lang.String r0 = r0.toString()
            android.database.Cursor r4 = r4.queryRCSBufferDBwithResUrl(r0)
            if (r4 == 0) goto Lb8
            boolean r0 = r4.moveToFirst()     // Catch: java.lang.Throwable -> Lae
            if (r0 == 0) goto Lb8
            com.sec.internal.ims.cmstore.syncschedulers.RcsScheduler r3 = r3.mRcsScheduler     // Catch: java.lang.Throwable -> Lae
            r3.onNmsEventDeletedObjBufferDbRcsAvailableUsingUrl(r4, r5, r6)     // Catch: java.lang.Throwable -> Lae
            goto Lb8
        Lae:
            r3 = move-exception
            r4.close()     // Catch: java.lang.Throwable -> Lb3
            goto Lb7
        Lb3:
            r4 = move-exception
            r3.addSuppressed(r4)
        Lb7:
            throw r3
        Lb8:
            if (r4 == 0) goto Lbd
            r4.close()
        Lbd:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferDBHelper.onNmsEventDeletedObjSummaryDbAvailableUsingUrl(android.database.Cursor, com.sec.internal.omanetapi.nms.data.DeletedObject, boolean):void");
    }

    protected void handleExpiredObject(DeletedObject deletedObject) {
        Cursor querySummaryDBwithResUrl = this.mSummaryQuery.querySummaryDBwithResUrl(deletedObject.resourceURL.toString());
        if (querySummaryDBwithResUrl != null) {
            try {
                if (querySummaryDBwithResUrl.moveToFirst()) {
                    int i = querySummaryDBwithResUrl.getInt(querySummaryDBwithResUrl.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION));
                    Log.d(this.TAG, "handleExpiredObject, Status:" + i);
                    if (i != CloudMessageBufferDBConstants.ActionStatusFlag.Deleted.getId()) {
                        onNmsEventExpiredObjSummaryDbAvailableUsingUrl(querySummaryDBwithResUrl, deletedObject);
                        this.mSummaryQuery.deleteSummaryDBwithResUrl(deletedObject.resourceURL.toString());
                    } else {
                        querySummaryDBwithResUrl.close();
                        return;
                    }
                }
            } catch (Throwable th) {
                try {
                    querySummaryDBwithResUrl.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySummaryDBwithResUrl != null) {
            querySummaryDBwithResUrl.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00b7 A[Catch: all -> 0x0171, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0171, blocks: (B:89:0x0018, B:91:0x001e, B:95:0x004b, B:3:0x0050, B:5:0x0066, B:11:0x0073, B:14:0x007c, B:18:0x00b7, B:22:0x00c6, B:27:0x00c3, B:41:0x00c9, B:43:0x00cd, B:48:0x0109, B:53:0x0119, B:58:0x0116, B:64:0x011c, B:66:0x0120, B:70:0x015b, B:74:0x016a, B:79:0x0167, B:24:0x00be, B:55:0x0111, B:76:0x0162, B:37:0x009e, B:39:0x00a4, B:16:0x00b0, B:60:0x00ef, B:62:0x00f5, B:45:0x0101, B:81:0x0142, B:83:0x0148, B:68:0x0154), top: B:88:0x0018, inners: #1, #2, #3, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0109 A[Catch: all -> 0x0171, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0171, blocks: (B:89:0x0018, B:91:0x001e, B:95:0x004b, B:3:0x0050, B:5:0x0066, B:11:0x0073, B:14:0x007c, B:18:0x00b7, B:22:0x00c6, B:27:0x00c3, B:41:0x00c9, B:43:0x00cd, B:48:0x0109, B:53:0x0119, B:58:0x0116, B:64:0x011c, B:66:0x0120, B:70:0x015b, B:74:0x016a, B:79:0x0167, B:24:0x00be, B:55:0x0111, B:76:0x0162, B:37:0x009e, B:39:0x00a4, B:16:0x00b0, B:60:0x00ef, B:62:0x00f5, B:45:0x0101, B:81:0x0142, B:83:0x0148, B:68:0x0154), top: B:88:0x0018, inners: #1, #2, #3, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015b A[Catch: all -> 0x0171, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0171, blocks: (B:89:0x0018, B:91:0x001e, B:95:0x004b, B:3:0x0050, B:5:0x0066, B:11:0x0073, B:14:0x007c, B:18:0x00b7, B:22:0x00c6, B:27:0x00c3, B:41:0x00c9, B:43:0x00cd, B:48:0x0109, B:53:0x0119, B:58:0x0116, B:64:0x011c, B:66:0x0120, B:70:0x015b, B:74:0x016a, B:79:0x0167, B:24:0x00be, B:55:0x0111, B:76:0x0162, B:37:0x009e, B:39:0x00a4, B:16:0x00b0, B:60:0x00ef, B:62:0x00f5, B:45:0x0101, B:81:0x0142, B:83:0x0148, B:68:0x0154), top: B:88:0x0018, inners: #1, #2, #3, #5, #6, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:87:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void handleCloudNotifyDeletedObj(com.sec.internal.omanetapi.nms.data.DeletedObject r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferDBHelper.handleCloudNotifyDeletedObj(com.sec.internal.omanetapi.nms.data.DeletedObject, boolean):void");
    }

    protected void onHandlePendingNmsEvent() {
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        Cursor queryAllPendingNmsEventInSummaryDB = this.mSummaryQuery.queryAllPendingNmsEventInSummaryDB();
        if (queryAllPendingNmsEventInSummaryDB != null) {
            try {
                if (queryAllPendingNmsEventInSummaryDB.moveToFirst()) {
                    Log.d(this.TAG, "NmsEvent sync");
                    do {
                        bufferDBChangeParamList.mChangelst.add(new BufferDBChangeParam(7, queryAllPendingNmsEventInSummaryDB.getInt(queryAllPendingNmsEventInSummaryDB.getColumnIndexOrThrow(CloudMessageProviderContract.BufferDBExtensionBase.BUFFERDBID)), false, null, this.mStoreClient));
                    } while (queryAllPendingNmsEventInSummaryDB.moveToNext());
                }
            } catch (Throwable th) {
                try {
                    queryAllPendingNmsEventInSummaryDB.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryAllPendingNmsEventInSummaryDB != null) {
            queryAllPendingNmsEventInSummaryDB.close();
        }
        if (bufferDBChangeParamList.mChangelst.size() > 0) {
            this.mDeviceDataChangeListener.sendDeviceNormalSyncDownload(bufferDBChangeParamList);
        }
    }

    protected void startForceInitDeltaMessageCopy() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
        Cursor queryForceInitDeltaSMSFromTP = this.mSmsScheduler.queryForceInitDeltaSMSFromTP();
        if (queryForceInitDeltaSMSFromTP != null) {
            try {
                if (queryForceInitDeltaSMSFromTP.moveToFirst()) {
                    EventLogHelper.infoLogAndAddWoPhoneId(this.TAG, this.mPhoneId, "startForceInitDeltaMessageCopy SMS count : " + queryForceInitDeltaSMSFromTP.getCount());
                    this.mSmsScheduler.insertToSMSBufferDB(queryForceInitDeltaSMSFromTP, contentValues, true);
                }
            } catch (Throwable th) {
                try {
                    queryForceInitDeltaSMSFromTP.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryForceInitDeltaSMSFromTP != null) {
            queryForceInitDeltaSMSFromTP.close();
        }
        Cursor queryForceInitDeltaMMSFromTP = this.mMmsScheduler.queryForceInitDeltaMMSFromTP();
        if (queryForceInitDeltaMMSFromTP != null) {
            try {
                if (queryForceInitDeltaMMSFromTP.moveToFirst()) {
                    EventLogHelper.infoLogAndAddWoPhoneId(this.TAG, this.mPhoneId, "startForceInitDeltaMessageCopy MMS count : " + queryForceInitDeltaMMSFromTP.getCount());
                    this.mMmsScheduler.insertToMMSPDUBufferDB(queryForceInitDeltaMMSFromTP, contentValues, true);
                }
            } catch (Throwable th3) {
                try {
                    queryForceInitDeltaMMSFromTP.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (queryForceInitDeltaMMSFromTP != null) {
            queryForceInitDeltaMMSFromTP.close();
        }
    }

    protected void startGoForwardSyncDbCopyTask() {
        ContentValues contentValues = new ContentValues();
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.None.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.Done.getId()));
        Cursor queryDeltaSMSfromTelephony = this.mSmsScheduler.queryDeltaSMSfromTelephony();
        if (queryDeltaSMSfromTelephony != null) {
            try {
                if (queryDeltaSMSfromTelephony.moveToFirst()) {
                    Log.d(this.TAG, "SMS DB loading");
                    this.mSmsScheduler.insertToSMSBufferDB(queryDeltaSMSfromTelephony, contentValues, true);
                }
            } catch (Throwable th) {
                try {
                    queryDeltaSMSfromTelephony.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (queryDeltaSMSfromTelephony != null) {
            queryDeltaSMSfromTelephony.close();
        }
        Cursor queryDeltaMMSPduFromTelephonyDb = this.mMmsScheduler.queryDeltaMMSPduFromTelephonyDb();
        if (queryDeltaMMSPduFromTelephonyDb != null) {
            try {
                if (queryDeltaMMSPduFromTelephonyDb.moveToFirst()) {
                    Log.d(this.TAG, "MMS DB loading");
                    this.mMmsScheduler.insertToMMSPDUBufferDB(queryDeltaMMSPduFromTelephonyDb, contentValues, true);
                }
            } catch (Throwable th3) {
                try {
                    queryDeltaMMSPduFromTelephonyDb.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (queryDeltaMMSPduFromTelephonyDb != null) {
            queryDeltaMMSPduFromTelephonyDb.close();
        }
        if (!this.mIsCmsEnabled) {
            Cursor queryDeltaSMSfromTelephonyWoImsi = this.mSmsScheduler.queryDeltaSMSfromTelephonyWoImsi();
            if (queryDeltaSMSfromTelephonyWoImsi != null) {
                try {
                    if (queryDeltaSMSfromTelephonyWoImsi.moveToFirst()) {
                        Log.d(this.TAG, "Null Imsi SMS DB loading");
                        this.mSmsScheduler.insertToSMSBufferDB(queryDeltaSMSfromTelephonyWoImsi, contentValues, true);
                    }
                } catch (Throwable th5) {
                    try {
                        queryDeltaSMSfromTelephonyWoImsi.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
            if (queryDeltaSMSfromTelephonyWoImsi != null) {
                queryDeltaSMSfromTelephonyWoImsi.close();
            }
            Cursor queryDeltaMMSPduFromTelephonyDbWoImsi = this.mMmsScheduler.queryDeltaMMSPduFromTelephonyDbWoImsi();
            if (queryDeltaMMSPduFromTelephonyDbWoImsi != null) {
                try {
                    if (queryDeltaMMSPduFromTelephonyDbWoImsi.moveToFirst()) {
                        Log.d(this.TAG, "Null Imsi MMS DB loading");
                        this.mMmsScheduler.insertToMMSPDUBufferDB(queryDeltaMMSPduFromTelephonyDbWoImsi, contentValues, true);
                    }
                } catch (Throwable th7) {
                    try {
                        queryDeltaMMSPduFromTelephonyDbWoImsi.close();
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                    }
                    throw th7;
                }
            }
            if (queryDeltaMMSPduFromTelephonyDbWoImsi != null) {
                queryDeltaMMSPduFromTelephonyDbWoImsi.close();
            }
        }
        this.mSmsScheduler.syncReadSmsFromTelephony();
        this.mMmsScheduler.syncReadMmsFromTelephony();
        setBufferDBLoaded(true);
    }

    protected void cleanAllBufferDB() {
        this.mSmsScheduler.cleanAllBufferDB();
        this.mMmsScheduler.cleanAllBufferDB();
        this.mRcsScheduler.cleanAllBufferDB();
        setBufferDBLoaded(false);
    }

    public void cleanAllBufferDB(String str) {
        this.mSmsScheduler.cleanAllBufferDB(str);
        this.mMmsScheduler.cleanAllBufferDB(str);
        this.mRcsScheduler.cleanAllBufferDB(str);
        setBufferDBLoaded(false);
    }

    protected void startInitialSyncDBCopyTask() {
        cleanAllBufferDB();
        ContentValues contentValues = new ContentValues();
        this.mMultiLnScheduler.insertNewLine(this.mStoreClient.getPrerenceManager().getUserTelCtn(), SyncMsgType.DEFAULT);
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCDIRECTION, Integer.valueOf(CloudMessageBufferDBConstants.ActionStatusFlag.Insert.getId()));
        contentValues.put(CloudMessageProviderContract.BufferDBExtensionBase.SYNCACTION, Integer.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendCloud.getId()));
        Cursor querySMSfromTelephonyWithIMSI = this.mSmsScheduler.querySMSfromTelephonyWithIMSI(this.mStoreClient.getCurrentIMSI());
        if (querySMSfromTelephonyWithIMSI != null) {
            try {
                if (querySMSfromTelephonyWithIMSI.moveToFirst()) {
                    Log.d(this.TAG, "SMS DB loading");
                    this.mSmsScheduler.insertToSMSBufferDB(querySMSfromTelephonyWithIMSI, contentValues, false);
                }
            } catch (Throwable th) {
                try {
                    querySMSfromTelephonyWithIMSI.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySMSfromTelephonyWithIMSI != null) {
            querySMSfromTelephonyWithIMSI.close();
        }
        Cursor queryMMSPduFromTelephonyDbWithIMSI = this.mMmsScheduler.queryMMSPduFromTelephonyDbWithIMSI(this.mStoreClient.getCurrentIMSI());
        if (queryMMSPduFromTelephonyDbWithIMSI != null) {
            try {
                if (queryMMSPduFromTelephonyDbWithIMSI.moveToFirst()) {
                    Log.d(this.TAG, "MMS DB loading");
                    this.mMmsScheduler.insertToMMSPDUBufferDB(queryMMSPduFromTelephonyDbWithIMSI, contentValues, false);
                }
            } catch (Throwable th3) {
                try {
                    queryMMSPduFromTelephonyDbWithIMSI.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (queryMMSPduFromTelephonyDbWithIMSI != null) {
            queryMMSPduFromTelephonyDbWithIMSI.close();
        }
        if (!this.mIsCmsEnabled) {
            Cursor querySMSfromTelephonyWoIMSI = this.mSmsScheduler.querySMSfromTelephonyWoIMSI();
            if (querySMSfromTelephonyWoIMSI != null) {
                try {
                    if (querySMSfromTelephonyWoIMSI.moveToFirst()) {
                        Log.i(this.TAG, "SMS Loading for IMSI null case");
                        this.mSmsScheduler.insertToSMSBufferDB(querySMSfromTelephonyWoIMSI, contentValues, false);
                    }
                } catch (Throwable th5) {
                    try {
                        querySMSfromTelephonyWoIMSI.close();
                    } catch (Throwable th6) {
                        th5.addSuppressed(th6);
                    }
                    throw th5;
                }
            }
            if (querySMSfromTelephonyWoIMSI != null) {
                querySMSfromTelephonyWoIMSI.close();
            }
            Cursor queryMMSPduFromTelephonyDbWoIMSI = this.mMmsScheduler.queryMMSPduFromTelephonyDbWoIMSI();
            if (queryMMSPduFromTelephonyDbWoIMSI != null) {
                try {
                    if (queryMMSPduFromTelephonyDbWoIMSI.moveToFirst()) {
                        Log.i(this.TAG, "MMS Loading for IMSI null case");
                        this.mMmsScheduler.insertToMMSPDUBufferDB(queryMMSPduFromTelephonyDbWoIMSI, contentValues, false);
                    }
                } catch (Throwable th7) {
                    try {
                        queryMMSPduFromTelephonyDbWoIMSI.close();
                    } catch (Throwable th8) {
                        th7.addSuppressed(th8);
                    }
                    throw th7;
                }
            }
            if (queryMMSPduFromTelephonyDbWoIMSI != null) {
                queryMMSPduFromTelephonyDbWoIMSI.close();
            }
        }
        Cursor queryAllSessionWithIMSI = this.mRcsScheduler.queryAllSessionWithIMSI(this.mStoreClient.getCurrentIMSI());
        if (queryAllSessionWithIMSI != null) {
            try {
                if (queryAllSessionWithIMSI.moveToFirst()) {
                    Log.d(this.TAG, "RCS DB loading");
                    this.mRcsScheduler.insertAllSessionToRCSSessionBufferDB(queryAllSessionWithIMSI);
                }
            } catch (Throwable th9) {
                try {
                    queryAllSessionWithIMSI.close();
                } catch (Throwable th10) {
                    th9.addSuppressed(th10);
                }
                throw th9;
            }
        }
        if (queryAllSessionWithIMSI != null) {
            queryAllSessionWithIMSI.close();
        }
        if (CmsUtil.isMcsSupported(this.mContext, this.mPhoneId)) {
            Cursor queryAllSessionsFromTelephony = this.mRcsScheduler.queryAllSessionsFromTelephony(this.mStoreClient.getCurrentIMSI());
            try {
                Log.i(this.TAG, "TP DB loading");
                if (queryAllSessionsFromTelephony != null && queryAllSessionsFromTelephony.moveToFirst()) {
                    this.mRcsScheduler.insertSessionFromTPDBToRCSSessionBufferDB(queryAllSessionsFromTelephony);
                }
                if (queryAllSessionsFromTelephony != null) {
                    queryAllSessionsFromTelephony.close();
                }
            } catch (Throwable th11) {
                if (queryAllSessionsFromTelephony != null) {
                    try {
                        queryAllSessionsFromTelephony.close();
                    } catch (Throwable th12) {
                        th11.addSuppressed(th12);
                    }
                }
                throw th11;
            }
        }
        setBufferDBLoaded(true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int getTableIndex(String str, CloudMessageBufferDBConstants.MsgOperationFlag msgOperationFlag) {
        char c;
        String upperCase = str.toUpperCase();
        upperCase.hashCode();
        switch (upperCase.hashCode()) {
            case -1980813630:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.NUTOFF)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1511670668:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.DEACTIVATE)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -873347853:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.ACTIVATE)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -531263623:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.SESSION)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -324399745:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.ADHOC_V2TLANGUAGE)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 2254:
                if (upperCase.equals("FT")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 76467:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.MMS)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 79221:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.VVMPIN)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 82233:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.SMS)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 2067288:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.CHAT)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 74650124:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.NUTON)) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 310666545:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.VOICEMAILTOTEXT)) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 408556937:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.VVMPROFILE)) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 445658549:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.V2T_EMAIL)) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 527850930:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.V2T_SMS)) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 806950032:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.V2TLANGUAGE)) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 988049465:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.VVMGREETING)) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 1551214263:
                if (upperCase.equals("VVMDATA")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 2062991267:
                if (upperCase.equals(CloudMessageProviderContract.DataTypes.MSGAPP_ALL)) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case '\n':
            case 11:
            case '\f':
            case '\r':
            case 14:
            case 15:
                return 20;
            case 3:
                return 10;
            case 4:
            case 17:
                return 17;
            case 5:
            case '\t':
                return 1;
            case 6:
                return 4;
            case 7:
                return 19;
            case '\b':
                return 3;
            case 16:
                return 18;
            case 18:
                break;
            default:
                if (!CloudMessageBufferDBConstants.MsgOperationFlag.StartFullSync.equals(msgOperationFlag) && !CloudMessageBufferDBConstants.MsgOperationFlag.StopSync.equals(msgOperationFlag) && !CloudMessageBufferDBConstants.MsgOperationFlag.StartDeltaSync.equals(msgOperationFlag)) {
                    return -1;
                }
                break;
        }
        return 0;
    }

    private ParamVvmUpdate getVvmParam(JsonElement jsonElement, String str, CloudMessageBufferDBConstants.MsgOperationFlag msgOperationFlag, int i) {
        String upperCase = str.toUpperCase();
        upperCase.hashCode();
        switch (upperCase) {
            case "NUTOFF":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.NUTOFF);
            case "DEACTIVATE":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.DEACTIVATE);
            case "ACTIVATE":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.ACTIVATE);
            case "ADHOCV2T":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.ADHOC_V2T);
            case "PIN":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.PIN);
            case "NUTON":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.NUTON);
            case "VOICEMAILTOTEXT":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.VOICEMAILTOTEXT);
            case "PROFILE":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.FULLPROFILE);
            case "V2T_EMAIL":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.V2T_EMAIL);
            case "V2T_SMS":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.V2T_SMS);
            case "V2TLANGUAGE":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.V2TLANGUAGE);
            case "GREETING":
                return getVvmChangeParam(jsonElement.toString(), i, ParamVvmUpdate.VvmTypeChange.GREETING);
            default:
                return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01eb A[Catch: Exception -> 0x031a, TryCatch #0 {Exception -> 0x031a, blocks: (B:3:0x002e, B:5:0x0038, B:6:0x0041, B:8:0x0047, B:10:0x0065, B:12:0x0073, B:17:0x009e, B:19:0x00a8, B:21:0x00b6, B:22:0x00c2, B:24:0x00ce, B:26:0x00dc, B:27:0x00ed, B:29:0x00f7, B:31:0x0105, B:32:0x0116, B:34:0x011c, B:37:0x014a, B:39:0x0154, B:41:0x0162, B:42:0x0173, B:44:0x017d, B:46:0x018b, B:47:0x019a, B:49:0x01a4, B:51:0x01b2, B:52:0x01be, B:54:0x01ca, B:56:0x01d8, B:58:0x01eb, B:60:0x01f5, B:62:0x0203, B:63:0x0212, B:65:0x021c, B:67:0x022a, B:68:0x0239, B:70:0x0243, B:72:0x0251, B:73:0x0271, B:75:0x027b, B:77:0x0289, B:78:0x029a, B:80:0x02a6, B:82:0x02b4, B:84:0x02c2, B:87:0x02c8, B:88:0x02ca, B:93:0x02d5, B:90:0x02dd), top: B:2:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02c2 A[Catch: Exception -> 0x031a, TryCatch #0 {Exception -> 0x031a, blocks: (B:3:0x002e, B:5:0x0038, B:6:0x0041, B:8:0x0047, B:10:0x0065, B:12:0x0073, B:17:0x009e, B:19:0x00a8, B:21:0x00b6, B:22:0x00c2, B:24:0x00ce, B:26:0x00dc, B:27:0x00ed, B:29:0x00f7, B:31:0x0105, B:32:0x0116, B:34:0x011c, B:37:0x014a, B:39:0x0154, B:41:0x0162, B:42:0x0173, B:44:0x017d, B:46:0x018b, B:47:0x019a, B:49:0x01a4, B:51:0x01b2, B:52:0x01be, B:54:0x01ca, B:56:0x01d8, B:58:0x01eb, B:60:0x01f5, B:62:0x0203, B:63:0x0212, B:65:0x021c, B:67:0x022a, B:68:0x0239, B:70:0x0243, B:72:0x0251, B:73:0x0271, B:75:0x027b, B:77:0x0289, B:78:0x029a, B:80:0x02a6, B:82:0x02b4, B:84:0x02c2, B:87:0x02c8, B:88:0x02ca, B:93:0x02d5, B:90:0x02dd), top: B:2:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02dd A[Catch: Exception -> 0x031a, TRY_LEAVE, TryCatch #0 {Exception -> 0x031a, blocks: (B:3:0x002e, B:5:0x0038, B:6:0x0041, B:8:0x0047, B:10:0x0065, B:12:0x0073, B:17:0x009e, B:19:0x00a8, B:21:0x00b6, B:22:0x00c2, B:24:0x00ce, B:26:0x00dc, B:27:0x00ed, B:29:0x00f7, B:31:0x0105, B:32:0x0116, B:34:0x011c, B:37:0x014a, B:39:0x0154, B:41:0x0162, B:42:0x0173, B:44:0x017d, B:46:0x018b, B:47:0x019a, B:49:0x01a4, B:51:0x01b2, B:52:0x01be, B:54:0x01ca, B:56:0x01d8, B:58:0x01eb, B:60:0x01f5, B:62:0x0203, B:63:0x0212, B:65:0x021c, B:67:0x022a, B:68:0x0239, B:70:0x0243, B:72:0x0251, B:73:0x0271, B:75:0x027b, B:77:0x0289, B:78:0x029a, B:80:0x02a6, B:82:0x02b4, B:84:0x02c2, B:87:0x02c8, B:88:0x02ca, B:93:0x02d5, B:90:0x02dd), top: B:2:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02d5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected com.sec.internal.ims.cmstore.params.ParamAppJsonValueList decodeJson(java.lang.String r42, java.lang.String r43, com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants.MsgOperationFlag r44) {
        /*
            Method dump skipped, instructions count: 822
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferDBHelper.decodeJson(java.lang.String, java.lang.String, com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants$MsgOperationFlag):com.sec.internal.ims.cmstore.params.ParamAppJsonValueList");
    }

    private boolean isValidPreferredLineValue(JsonElement jsonElement) {
        boolean z = jsonElement.getAsJsonObject().get("preferred_line") != null;
        return z && (z ? jsonElement.getAsJsonObject().get("preferred_line").isJsonNull() ^ true : false);
    }

    private ParamVvmUpdate getVvmChangeParam(String str, int i, ParamVvmUpdate.VvmTypeChange vvmTypeChange) {
        Log.d(this.TAG, "getVvmChangeParam: " + str + " tableindex: " + i + " VvmTypeChange: " + vvmTypeChange);
        try {
            ParamVvmUpdate paramVvmUpdate = (ParamVvmUpdate) new Gson().fromJson(str, ParamVvmUpdate.class);
            paramVvmUpdate.mVvmChange = vvmTypeChange;
            if (TextUtils.isEmpty(paramVvmUpdate.mLine)) {
                paramVvmUpdate.mLine = this.mStoreClient.getPrerenceManager().getUserTelCtn();
            }
            paramVvmUpdate.mLine = Util.getTelUri(paramVvmUpdate.mLine, Util.getSimCountryCode(this.mContext, this.mStoreClient.getClientID()));
            return paramVvmUpdate;
        } catch (Exception e) {
            Log.e(this.TAG, "getVvmChangeParam: " + e.getMessage());
            return null;
        }
    }

    protected void handleReceivedMessageJson(String str) {
        ParamAppJsonValueList decodeJson = decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Received);
        processParamAppJsonList(decodeJson);
        if (isSpam(decodeJson)) {
            handleSpamMessageJson(str);
        }
    }

    protected void handleSentMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Sent));
    }

    protected void handleReadMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Read));
    }

    protected void handleCancelMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Cancel));
    }

    protected void handleStarredMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Starred));
    }

    protected void handleUnStarredMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.UnStarred));
    }

    protected void handleAcceptSessionJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.AcceptChat));
    }

    protected void handleSpamMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Spam));
    }

    protected void handleUnReadMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.UnRead));
    }

    protected void handleDeleteMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Delete));
    }

    protected void handleUploadMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Upload));
    }

    protected void handleDownloadMessageJson(String str) {
        processParamAppJsonList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.Download));
    }

    protected void handleWipeOutMessageJson(String str) {
        processWipeOutList(decodeJson(null, str, CloudMessageBufferDBConstants.MsgOperationFlag.WipeOut));
    }

    private boolean isSpam(ParamAppJsonValueList paramAppJsonValueList) {
        ArrayList<ParamAppJsonValue> arrayList;
        IMSLog.s(this.TAG, "isSpam: " + paramAppJsonValueList);
        if (paramAppJsonValueList != null && (arrayList = paramAppJsonValueList.mOperationList) != null && arrayList.size() >= 1) {
            Iterator<ParamAppJsonValue> it = paramAppJsonValueList.mOperationList.iterator();
            while (it.hasNext()) {
                if (it.next().mIsSpam) {
                    return true;
                }
            }
        }
        return false;
    }

    private void processParamAppJsonList(ParamAppJsonValueList paramAppJsonValueList) {
        ArrayList<ParamAppJsonValue> arrayList;
        IMSLog.s(this.TAG, "processParamAppJsonList: " + paramAppJsonValueList);
        if (paramAppJsonValueList == null || (arrayList = paramAppJsonValueList.mOperationList) == null || arrayList.size() < 1) {
            return;
        }
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        Iterator<ParamAppJsonValue> it = paramAppJsonValueList.mOperationList.iterator();
        while (it.hasNext()) {
            ParamAppJsonValue next = it.next();
            int i = next.mDataContractType;
            if (i == 1 || i == 10) {
                this.mRcsScheduler.onAppOperationReceived(next, bufferDBChangeParamList);
            } else if (i == 3) {
                this.mSmsScheduler.onAppOperationReceived(next, bufferDBChangeParamList);
            } else if (i == 4) {
                this.mMmsScheduler.onAppOperationReceived(next, bufferDBChangeParamList);
            } else {
                switch (i) {
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                        this.mVVMScheduler.onAppOperationReceived(next, bufferDBChangeParamList);
                        break;
                }
            }
        }
        if (bufferDBChangeParamList.mChangelst.size() > 0) {
            this.mDeviceDataChangeListener.sendDeviceUpdate(bufferDBChangeParamList);
        }
    }

    protected void setBufferDBLoaded(boolean z) {
        this.mBufferDBloaded = z;
        this.mStoreClient.getPrerenceManager().saveBufferDbLoaded(this.mBufferDBloaded);
    }

    private void processWipeOutList(ParamAppJsonValueList paramAppJsonValueList) {
        ArrayList<ParamAppJsonValue> arrayList;
        if (paramAppJsonValueList == null || (arrayList = paramAppJsonValueList.mOperationList) == null || arrayList.size() < 1) {
            return;
        }
        Log.d(this.TAG, "processWipeOutList: " + paramAppJsonValueList);
        Iterator<ParamAppJsonValue> it = paramAppJsonValueList.mOperationList.iterator();
        while (it.hasNext()) {
            String str = it.next().mLine;
            if (CloudMessageProviderContract.DataTypes.MSGAPP_ALL.equalsIgnoreCase(paramAppJsonValueList.mOperationList.get(0).mDataType)) {
                this.mSmsScheduler.wipeOutData(3, str);
                this.mMmsScheduler.wipeOutData(4, str);
                this.mRcsScheduler.wipeOutData(1, str);
            } else if ("VVMDATA".equalsIgnoreCase(paramAppJsonValueList.mOperationList.get(0).mDataType)) {
                this.mDeviceDataChangeListener.onWipeOutResetSyncHandler();
                this.mVVMScheduler.wipeOutData(17, str);
                this.mVVMScheduler.wipeOutData(18, str);
                this.mVVMScheduler.wipeOutData(19, str);
                this.mVVMScheduler.wipeOutData(20, str);
                this.mVVMScheduler.wipeOutData(36, str);
                this.mVVMScheduler.wipeOutData(23, str);
                this.mDeviceDataChangeListener.setVVMSyncState(false);
            }
        }
    }

    private void onNmsEventExpiredObjSummaryDbAvailableUsingUrl(Cursor cursor, DeletedObject deletedObject) {
        int i = cursor.getInt(cursor.getColumnIndexOrThrow("messagetype"));
        Log.d(this.TAG, "onNmsEventExpiredObjSummaryDbAvailableUsingUrl(), type: " + i);
        if (i != 1 && i != 14) {
            if (i == 3) {
                this.mSmsScheduler.deleteSMSBufferDBwithResUrl(deletedObject.resourceURL.toString());
                return;
            } else if (i == 4) {
                this.mMmsScheduler.deleteMMSBufferDBwithResUrl(deletedObject.resourceURL.toString());
                return;
            } else if (i != 11 && i != 12) {
                return;
            }
        }
        this.mRcsScheduler.deleteRCSBufferDBwithResUrl(deletedObject.resourceURL.toString());
    }

    protected void appFetchingFailedMsg(String str) {
        Cursor querySMSMessagesBySycnDirection = this.mSmsScheduler.querySMSMessagesBySycnDirection(3, str);
        if (querySMSMessagesBySycnDirection != null) {
            try {
                if (querySMSMessagesBySycnDirection.moveToFirst()) {
                    this.mSmsScheduler.notifyMsgAppFetchBuffer(querySMSMessagesBySycnDirection, 3);
                }
            } catch (Throwable th) {
                try {
                    querySMSMessagesBySycnDirection.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySMSMessagesBySycnDirection != null) {
            querySMSMessagesBySycnDirection.close();
        }
        Cursor queryMMSMessagesBySycnDirection = this.mMmsScheduler.queryMMSMessagesBySycnDirection(4, str);
        if (queryMMSMessagesBySycnDirection != null) {
            try {
                if (queryMMSMessagesBySycnDirection.moveToFirst()) {
                    this.mMmsScheduler.notifyMsgAppFetchBuffer(queryMMSMessagesBySycnDirection, 4);
                }
            } catch (Throwable th3) {
                try {
                    queryMMSMessagesBySycnDirection.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (queryMMSMessagesBySycnDirection != null) {
            queryMMSMessagesBySycnDirection.close();
        }
        Cursor queryRCSMessagesBySycnDirection = this.mRcsScheduler.queryRCSMessagesBySycnDirection(1, str);
        if (queryRCSMessagesBySycnDirection != null) {
            try {
                if (queryRCSMessagesBySycnDirection.moveToFirst()) {
                    this.mRcsScheduler.notifyMsgAppFetchBuffer(queryRCSMessagesBySycnDirection, 1);
                }
            } catch (Throwable th5) {
                try {
                    queryRCSMessagesBySycnDirection.close();
                } catch (Throwable th6) {
                    th5.addSuppressed(th6);
                }
                throw th5;
            }
        }
        if (queryRCSMessagesBySycnDirection != null) {
            queryRCSMessagesBySycnDirection.close();
        }
    }

    protected void fetchingPendingMsg() {
        String valueOf = String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.ToSendDevice.getId());
        Cursor querySMSMessagesBySycnDirection = this.mSmsScheduler.querySMSMessagesBySycnDirection(3, valueOf);
        if (querySMSMessagesBySycnDirection != null) {
            try {
                if (querySMSMessagesBySycnDirection.moveToFirst()) {
                    this.mSmsScheduler.msgAppFetchBuffer(querySMSMessagesBySycnDirection, CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.SMS);
                }
            } catch (Throwable th) {
                try {
                    querySMSMessagesBySycnDirection.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (querySMSMessagesBySycnDirection != null) {
            querySMSMessagesBySycnDirection.close();
        }
        Cursor queryMMSMessagesBySycnDirection = this.mMmsScheduler.queryMMSMessagesBySycnDirection(4, valueOf);
        if (queryMMSMessagesBySycnDirection != null) {
            try {
                if (queryMMSMessagesBySycnDirection.moveToFirst()) {
                    this.mMmsScheduler.msgAppFetchBuffer(queryMMSMessagesBySycnDirection, CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.MMS);
                }
            } catch (Throwable th3) {
                try {
                    queryMMSMessagesBySycnDirection.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (queryMMSMessagesBySycnDirection != null) {
            queryMMSMessagesBySycnDirection.close();
        }
        Cursor queryRCSMessagesBySycnDirection = this.mRcsScheduler.queryRCSMessagesBySycnDirection(1, valueOf);
        if (queryRCSMessagesBySycnDirection != null) {
            try {
                if (queryRCSMessagesBySycnDirection.moveToFirst()) {
                    this.mRcsScheduler.msgAppFetchBuffer(queryRCSMessagesBySycnDirection, CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.CHAT);
                }
            } catch (Throwable th5) {
                try {
                    queryRCSMessagesBySycnDirection.close();
                } catch (Throwable th6) {
                    th5.addSuppressed(th6);
                }
                throw th5;
            }
        }
        if (queryRCSMessagesBySycnDirection != null) {
            queryRCSMessagesBySycnDirection.close();
        }
    }

    public List<String> getMulitLineStatusTable() {
        return this.mMultiLnScheduler.getMulitLineStatusTable();
    }
}
