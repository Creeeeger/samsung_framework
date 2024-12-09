package com.sec.internal.ims.cmstore.cloudmessagebuffer;

import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.sec.internal.constants.ims.cmstore.CloudMessageBufferDBConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.helper.SyncParam;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUpdateParam;
import com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUriParam;
import com.sec.internal.ims.cmstore.params.DeviceSessionPartcptsUpdateParam;
import com.sec.internal.ims.cmstore.params.ParamAppJsonValue;
import com.sec.internal.ims.cmstore.params.ParamAppJsonValueList;
import com.sec.internal.ims.cmstore.params.ParamOMAObject;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.syncschedulers.MultiLineScheduler;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.McsNotificationListContainer;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.IBufferDBEventListener;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageBufferEvent;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IDeviceDataChangeListener;
import com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener;
import com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.data.McsLargePollingNotification;
import com.sec.internal.omanetapi.nc.data.NotificationList;
import com.sec.internal.omanetapi.nms.data.ChangedObject;
import com.sec.internal.omanetapi.nms.data.DeletedObject;
import com.sec.internal.omanetapi.nms.data.NmsEvent;
import com.sec.internal.omanetapi.nms.data.NmsEventList;
import com.sec.internal.omanetapi.nms.data.Object;
import com.sec.internal.omanetapi.nms.data.ObjectList;
import com.sec.internal.omanetapi.nms.data.Reference;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class CloudMessageBufferSchedulingHandler extends CloudMessageBufferDBHelper implements ICloudMessageBufferEvent {
    private String TAG;
    private ICloudMessageManagerHelper mICloudMessageManagerHelper;

    private void onBufferDBReadBatch(String str) {
    }

    private void onUpdateFromDeviceLegacy() {
    }

    public CloudMessageBufferSchedulingHandler(Looper looper, MessageStoreClient messageStoreClient, IDeviceDataChangeListener iDeviceDataChangeListener, IBufferDBEventListener iBufferDBEventListener, ICloudMessageManagerHelper iCloudMessageManagerHelper, boolean z) {
        super(looper, messageStoreClient, iDeviceDataChangeListener, iBufferDBEventListener, z);
        this.TAG = CloudMessageBufferSchedulingHandler.class.getSimpleName();
        String str = this.TAG + "[" + messageStoreClient.getClientID() + "]";
        this.TAG = str;
        Log.d(str, "onCreate");
        this.mICloudMessageManagerHelper = iCloudMessageManagerHelper;
        registerRegistrants();
        registerNmsEventListPushListener();
    }

    private void registerNmsEventListPushListener() {
        this.mStoreClient.setMcsFcmPushNotificationListener(new IMcsFcmPushNotificationListener() { // from class: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferSchedulingHandler.1
            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void largePollingPushNotification(McsLargePollingNotification mcsLargePollingNotification) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncBlockfilterPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncConfigPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncContactPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncStatusPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void nmsEventListPushNotification(NmsEventList nmsEventList) {
                boolean z;
                IMSLog.i(CloudMessageBufferSchedulingHandler.this.TAG, "nmsEventListPushNotification");
                long oMASubscriptionIndex = CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().getOMASubscriptionIndex();
                long longValue = nmsEventList.index.longValue();
                long j = oMASubscriptionIndex + 1;
                if (longValue > j) {
                    z = McsNotificationListContainer.getInstance(CloudMessageBufferSchedulingHandler.this.mStoreClient.getClientID()).isEmpty();
                    McsNotificationListContainer.getInstance(CloudMessageBufferSchedulingHandler.this.mStoreClient.getClientID()).insertContainer(Long.valueOf(longValue), nmsEventList, CloudMessageBufferSchedulingHandler.this.mStoreClient.getClientID(), Long.valueOf(oMASubscriptionIndex));
                } else {
                    if (longValue == j) {
                        CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().saveOMASubscriptionRestartToken(nmsEventList.restartToken);
                        CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().saveOMASubscriptionIndex(longValue);
                        CloudMessageBufferSchedulingHandler.this.onNativeChannelReceived(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.RECEIVE_NOTIFICATION).setMcsNmsEventList(nmsEventList).build());
                        long oMASubscriptionIndex2 = CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().getOMASubscriptionIndex();
                        while (!McsNotificationListContainer.getInstance(CloudMessageBufferSchedulingHandler.this.mStoreClient.getClientID()).isEmpty() && McsNotificationListContainer.getInstance(CloudMessageBufferSchedulingHandler.this.mStoreClient.getClientID()).peekFirstIndex() == oMASubscriptionIndex2 + 1) {
                            Map.Entry<Long, NmsEventList> popFirstEntry = McsNotificationListContainer.getInstance(CloudMessageBufferSchedulingHandler.this.mStoreClient.getClientID()).popFirstEntry();
                            if (popFirstEntry == null) {
                                Log.e(CloudMessageBufferSchedulingHandler.this.TAG, "handleNmsEvent: firstEntry is null");
                            } else {
                                NmsEventList value = popFirstEntry.getValue();
                                String str = value.restartToken;
                                long longValue2 = value.index.longValue();
                                CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().saveOMASubscriptionRestartToken(str);
                                CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().saveOMASubscriptionIndex(longValue2);
                                CloudMessageBufferSchedulingHandler.this.onNativeChannelReceived(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.RECEIVE_NOTIFICATION).setMcsNmsEventList(value).build());
                                IMSLog.i(CloudMessageBufferSchedulingHandler.this.TAG, "onComplete: Process nmsEventList from the NotificationListContainer, savedIndex: " + oMASubscriptionIndex2 + " currIndex:" + longValue2);
                                oMASubscriptionIndex2 = CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().getOMASubscriptionIndex();
                                if (McsNotificationListContainer.getInstance(CloudMessageBufferSchedulingHandler.this.mStoreClient.getClientID()).isEmpty()) {
                                    Log.i(CloudMessageBufferSchedulingHandler.this.TAG, "NotificationListContainer is empty, all the disordered notifications have been proceeded, remove UPDATE_SUBSCRIPTION_CHANNEL_DELAY");
                                    CloudMessageBufferSchedulingHandler.this.mStoreClient.getNetAPIWorkingStatusController().removeUpdateSubscriptionChannelEvent();
                                }
                            }
                        }
                    }
                    z = false;
                }
                if (z) {
                    CloudMessageBufferSchedulingHandler.this.mStoreClient.getNetAPIWorkingStatusController().updateDelayedSubscriptionChannel();
                }
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncMessagePushNotification(String str, int i) {
                String userTelCtn = CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().getUserTelCtn();
                MultiLineScheduler multiLineScheduler = CloudMessageBufferSchedulingHandler.this.mMultiLnScheduler;
                SyncMsgType syncMsgType = SyncMsgType.DEFAULT;
                int lineInitSyncStatus = multiLineScheduler.getLineInitSyncStatus(userTelCtn, syncMsgType);
                IMSLog.i(CloudMessageBufferSchedulingHandler.this.TAG, "syncMessagePushNotification  " + str + " initStatus:" + lineInitSyncStatus);
                if (TextUtils.equals(str, McsConstants.PushMessages.VALUE_INIT)) {
                    CloudMessageBufferSchedulingHandler.this.notifyUpdatedCmsData(i);
                    CloudMessageBufferSchedulingHandler.this.mMultiLnScheduler.updateSyncMessageStatus(userTelCtn, syncMsgType, OMASyncEventType.SYNC_MESSAGE_INIT_PENDING.getId());
                    if (lineInitSyncStatus != OMASyncEventType.INITIAL_SYNC_COMPLETE.getId()) {
                        Log.i(CloudMessageBufferSchedulingHandler.this.TAG, "initial sync not complete yet, no need to upload data");
                        CloudMessageBufferSchedulingHandler.this.mMultiLnScheduler.updateLineUploadStatus(userTelCtn, syncMsgType, OMASyncEventType.INITIAL_UPLOAD_PENDING.getId());
                        return;
                    } else {
                        CloudMessageBufferSchedulingHandler cloudMessageBufferSchedulingHandler = CloudMessageBufferSchedulingHandler.this;
                        cloudMessageBufferSchedulingHandler.notifyNetAPIUploadMessages(cloudMessageBufferSchedulingHandler.mStoreClient.getPrerenceManager().getUserTelCtn(), SyncMsgType.MESSAGE, false);
                        return;
                    }
                }
                if (TextUtils.equals(str, McsConstants.PushMessages.VALUE_FORCE_ALL)) {
                    int lineUploadStatus = CloudMessageBufferSchedulingHandler.this.mMultiLnScheduler.getLineUploadStatus(userTelCtn, syncMsgType);
                    if (lineUploadStatus == OMASyncEventType.INITIAL_UPLOAD_PENDING.getId() || lineUploadStatus == OMASyncEventType.INITIAL_UPLOAD_STARTED.getId() || lineInitSyncStatus != OMASyncEventType.INITIAL_SYNC_COMPLETE.getId()) {
                        EventLogHelper.infoLogAndAddWoPhoneId(CloudMessageBufferSchedulingHandler.this.TAG, CloudMessageBufferSchedulingHandler.this.mPhoneId, "forceAll push received while init/forceALL is in progress");
                        return;
                    }
                    boolean isForceInitFullSync = CloudMessageBufferSchedulingHandler.this.mStoreClient.getPrerenceManager().isForceInitFullSync();
                    boolean notifyUpdatedCmsData = CloudMessageBufferSchedulingHandler.this.notifyUpdatedCmsData(i);
                    if (isForceInitFullSync || notifyUpdatedCmsData) {
                        CloudMessageBufferSchedulingHandler.this.mMultiLnScheduler.updateSyncMessageStatus(userTelCtn, syncMsgType, OMASyncEventType.SYNC_MESSAGE_FORCE_ALL_PENDING.getId());
                        CloudMessageBufferSchedulingHandler.this.onForceInitSync((!isForceInitFullSync) & notifyUpdatedCmsData);
                        return;
                    }
                    IMSLog.e(CloudMessageBufferSchedulingHandler.this.TAG, CloudMessageBufferSchedulingHandler.this.mPhoneId, "Ignore - ForceAll without TTL change received on Init sync complete state");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean notifyUpdatedCmsData(int i) {
        int cmsDataTtl = this.mStoreClient.getPrerenceManager().getCmsDataTtl();
        if (i == cmsDataTtl) {
            return false;
        }
        EventLogHelper.infoLogAndAddWoPhoneId(this.TAG, this.mPhoneId, "notifyUpdatedCmsData oldTtl: " + cmsDataTtl + " newTtl: " + i);
        this.mStoreClient.getPrerenceManager().saveCmsDataTtl(i);
        updateCmsConfig();
        return true;
    }

    private void registerRegistrants() {
        Log.d(this.TAG, "registerRegistrants()");
        this.mDeviceDataChangeListener.registerForUpdateFromCloud(this, 3, null);
        this.mDeviceDataChangeListener.registerForUpdateOfWorkingStatus(this, 4, null);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        Log.i(this.TAG, "message: " + message.what);
        switch (message.what) {
            case 1:
                startInitialSyncDBCopyTask();
                break;
            case 3:
                onUpdateFromCloud((ParamOMAresponseforBufDB) ((AsyncResult) message.obj).result);
                break;
            case 4:
                onWorkingStatusChanged((IWorkingStatusProvisionListener.WorkingStatus) ((AsyncResult) message.obj).result);
                break;
            case 6:
                onUpdateFromDeviceLegacy();
                break;
            case 7:
                DeviceSessionPartcptsUpdateParam deviceSessionPartcptsUpdateParam = (DeviceSessionPartcptsUpdateParam) message.obj;
                int i = deviceSessionPartcptsUpdateParam.mTableindex;
                if (i != 2) {
                    if (i == 10) {
                        this.mRcsScheduler.onUpdateFromDeviceSession(deviceSessionPartcptsUpdateParam);
                        break;
                    }
                } else {
                    this.mRcsScheduler.onUpdateFromDeviceSessionPartcpts(deviceSessionPartcptsUpdateParam);
                    break;
                }
                break;
            case 8:
                onUpdateFromDeviceMsgAppFetch((DeviceMsgAppFetchUpdateParam) message.obj);
                break;
            case 11:
                handleRCSDbReady();
                break;
            case 12:
                onServiceRestarted();
                break;
            case 13:
                handleReceivedMessageJson((String) message.obj);
                break;
            case 14:
                handleSentMessageJson((String) message.obj);
                break;
            case 15:
                handleReadMessageJson((String) message.obj);
                break;
            case 16:
                handleUnReadMessageJson((String) message.obj);
                break;
            case 17:
                handleDeleteMessageJson((String) message.obj);
                break;
            case 18:
                handleUploadMessageJson((String) message.obj);
                break;
            case 19:
                handleDownloadMessageJson((String) message.obj);
                break;
            case 20:
                handleWipeOutMessageJson((String) message.obj);
                break;
            case 22:
                handleBufferDbReadMessageJson((String) message.obj);
                break;
            case 23:
                onBufferDBReadBatch((String) message.obj);
                break;
            case 24:
                handleStartSync((ParamAppJsonValueList) message.obj, true);
                break;
            case 25:
                handleStopSync((ParamAppJsonValueList) message.obj);
                break;
            case 26:
                onUpdateFromDeviceMsgAppFetchFailed((DeviceMsgAppFetchUpdateParam) message.obj);
                break;
            case 27:
                appFetchingFailedMsg(String.valueOf(CloudMessageBufferDBConstants.DirectionFlag.FetchingFail.getId()));
                break;
            case 28:
                fetchingPendingMsg();
                break;
            case 29:
                handleStartSync((ParamAppJsonValueList) message.obj, false);
                break;
            case 30:
                handleUpdateFromDeviceFtUriFetch((DeviceMsgAppFetchUriParam) message.obj);
                break;
            case 31:
                handleCancelMessageJson((String) message.obj);
                break;
            case 32:
                handleStarredMessageJson((String) message.obj);
                break;
            case 33:
                handleUnStarredMessageJson((String) message.obj);
                break;
            case 34:
                handleSpamMessageJson((String) message.obj);
                break;
            case 35:
                handleAcceptSessionJson((String) message.obj);
                break;
        }
    }

    private void onServiceRestarted() {
        this.mProvisionSuccess = false;
        setBufferDBLoaded(false);
    }

    private void handleStartSync(ParamAppJsonValueList paramAppJsonValueList, boolean z) {
        IMSLog.s(this.TAG, "handleStartSync: " + paramAppJsonValueList + " isFullSync: " + z);
        if (paramAppJsonValueList == null) {
            return;
        }
        Iterator<ParamAppJsonValue> it = paramAppJsonValueList.mOperationList.iterator();
        while (it.hasNext()) {
            ParamAppJsonValue next = it.next();
            String str = next.mLine;
            String str2 = next.mAppType;
            String str3 = next.mDataType;
            if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equalsIgnoreCase(str2) && CloudMessageProviderContract.DataTypes.MSGAPP_ALL.equalsIgnoreCase(str3)) {
                MultiLineScheduler multiLineScheduler = this.mMultiLnScheduler;
                SyncMsgType syncMsgType = SyncMsgType.MESSAGE;
                multiLineScheduler.insertNewLine(str, syncMsgType);
                this.mDeviceDataChangeListener.sendAppSync(new SyncParam(str, syncMsgType), z);
            } else if ("VVMDATA".equalsIgnoreCase(str2) && "VVMDATA".equalsIgnoreCase(str3)) {
                Log.i(this.TAG, "VM Normal Sync Processing: " + this.mDeviceDataChangeListener.isNormalVVMSyncing());
                if (!this.mDeviceDataChangeListener.isNormalVVMSyncing()) {
                    MultiLineScheduler multiLineScheduler2 = this.mMultiLnScheduler;
                    SyncMsgType syncMsgType2 = SyncMsgType.VM;
                    multiLineScheduler2.insertNewLine(str, syncMsgType2);
                    this.mDeviceDataChangeListener.sendAppSync(new SyncParam(str, syncMsgType2), z);
                } else {
                    notifyVVMNormalSyncStatus(str3, str, z);
                }
            } else if ("VVMDATA".equalsIgnoreCase(str2) && CloudMessageProviderContract.DataTypes.VVMGREETING.equalsIgnoreCase(str3)) {
                Log.i(this.TAG, "Greeting Normal Sync Processing: " + this.mDeviceDataChangeListener.isNormalVVMSyncing());
                if (!this.mDeviceDataChangeListener.isNormalVVMSyncing()) {
                    this.mVVMScheduler.wipeOutData(18, str);
                    this.mDeviceDataChangeListener.sendAppSync(new SyncParam(str, SyncMsgType.VM_GREETINGS), z);
                } else {
                    notifyVVMNormalSyncStatus(str3, str, z);
                }
            }
        }
    }

    private void notifyVVMNormalSyncStatus(String str, String str2, boolean z) {
        if ("VVMDATA".equalsIgnoreCase(str)) {
            this.mVVMScheduler.notifyInitialSyncStatus("VVMDATA", "VVMDATA", str2, CloudMessageBufferDBConstants.InitialSyncStatusFlag.IGNORED, z);
        } else if (CloudMessageProviderContract.DataTypes.VVMGREETING.equalsIgnoreCase(str)) {
            this.mVVMScheduler.notifyInitialSyncStatus("VVMDATA", CloudMessageProviderContract.DataTypes.VVMGREETING, str2, CloudMessageBufferDBConstants.InitialSyncStatusFlag.IGNORED, z);
        }
    }

    private void handleStopSync(ParamAppJsonValueList paramAppJsonValueList) {
        IMSLog.s(this.TAG, "handleStopSync: " + paramAppJsonValueList);
        if (paramAppJsonValueList == null) {
            return;
        }
        Iterator<ParamAppJsonValue> it = paramAppJsonValueList.mOperationList.iterator();
        while (it.hasNext()) {
            ParamAppJsonValue next = it.next();
            String str = next.mLine;
            String str2 = next.mAppType;
            if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equalsIgnoreCase(str2) || CloudMessageProviderContract.ApplicationTypes.RCSDATA.equalsIgnoreCase(str2)) {
                MultiLineScheduler multiLineScheduler = this.mMultiLnScheduler;
                SyncMsgType syncMsgType = SyncMsgType.MESSAGE;
                multiLineScheduler.deleteLine(str, syncMsgType);
                this.mDeviceDataChangeListener.stopAppSync(new SyncParam(str, syncMsgType));
            } else if ("VVMDATA".equalsIgnoreCase(str2)) {
                MultiLineScheduler multiLineScheduler2 = this.mMultiLnScheduler;
                SyncMsgType syncMsgType2 = SyncMsgType.VM;
                multiLineScheduler2.deleteLine(str, syncMsgType2);
                this.mDeviceDataChangeListener.stopAppSync(new SyncParam(str, syncMsgType2));
            }
        }
    }

    private void onWorkingStatusChanged(IWorkingStatusProvisionListener.WorkingStatus workingStatus) {
        Log.i(this.TAG, "onWorkingStatusChanged: " + workingStatus);
        int i = AnonymousClass2.$SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[workingStatus.ordinal()];
        if (i == 1) {
            handleProvisionSuccess();
        }
        if (i == 3) {
            onSendCloudUnSyncedUpdate();
            return;
        }
        switch (i) {
            case 5:
                handleDftMsgAppChangedToNative();
                break;
            case 6:
                restartService();
                break;
            case 7:
                cleanAllBufferDB();
                break;
            case 8:
                onMailBoxReset();
                break;
            case 9:
                updateCmsConfig();
                break;
        }
    }

    private void updateCmsConfig() {
        this.mSummaryQuery.onUpdateCmsConfigInitSyncDataTtl();
        this.mSmsScheduler.onUpdateCmsConfig();
        this.mMmsScheduler.onUpdateCmsConfig();
        this.mRcsScheduler.onUpdateCmsConfig();
    }

    private void handleDftMsgAppChangedToNative() {
        int lineInitSyncStatus = this.mMultiLnScheduler.getLineInitSyncStatus(this.mStoreClient.getPrerenceManager().getUserTelCtn(), SyncMsgType.DEFAULT);
        Log.i(this.TAG, "handleDftMsgAppChangedToNative initSyncStatus: " + lineInitSyncStatus);
        if (this.mIsCmsEnabled && this.mStoreClient.getPrerenceManager().getMcsUser() != 1) {
            EventLogHelper.infoLogAndAdd(this.TAG, this.mPhoneId, "default App changed to SM while MCS not registered");
        } else if (this.mIsCmsEnabled || lineInitSyncStatus == OMASyncEventType.INITIAL_SYNC_COMPLETE.getId()) {
            if (!this.mIsCmsEnabled) {
                this.mIsGoforwardSync = true;
            }
            startGoForwardSyncDbCopyTask();
        }
    }

    private void handleProvisionSuccess() {
        this.mProvisionSuccess = true;
        String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        MultiLineScheduler multiLineScheduler = this.mMultiLnScheduler;
        SyncMsgType syncMsgType = SyncMsgType.DEFAULT;
        int lineInitSyncStatus = multiLineScheduler.getLineInitSyncStatus(userTelCtn, syncMsgType);
        OMASyncEventType valueOf = OMASyncEventType.valueOf(lineInitSyncStatus);
        Log.i(this.TAG, "check initial sync status: " + lineInitSyncStatus + "event: " + valueOf + " linenum:" + IMSLog.checker(userTelCtn));
        if (valueOf == null) {
            valueOf = OMASyncEventType.DEFAULT;
        }
        int i = AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[valueOf.ordinal()];
        if (i != 1) {
            if (i == 2) {
                this.mDeviceDataChangeListener.onInitialDBCopyDone();
                onSendUnDownloadedMessage(userTelCtn, syncMsgType, false, CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId());
                this.mBufferDBloaded = this.mStoreClient.getPrerenceManager().getBufferDbLoaded();
                return;
            } else if (i == 3 || i == 4) {
                startInitialDBCopy();
                this.mDeviceDataChangeListener.onInitialDBCopyDone();
                return;
            } else {
                this.mDeviceDataChangeListener.onInitialDBCopyDone();
                return;
            }
        }
        this.mDeviceDataChangeListener.onInitialDBCopyDone();
        onSendCloudUnSyncedUpdate();
        onSendDeviceUnSyncedUpdate();
        this.mBufferDBloaded = this.mStoreClient.getPrerenceManager().getBufferDbLoaded();
        int lineUploadStatus = this.mMultiLnScheduler.getLineUploadStatus(userTelCtn, syncMsgType);
        IMSLog.i(this.TAG, "upload status: " + lineUploadStatus);
        if (this.mIsCmsEnabled) {
            if (lineUploadStatus == OMASyncEventType.INITIAL_UPLOAD_PENDING.getId() || lineUploadStatus == OMASyncEventType.INITIAL_UPLOAD_STARTED.getId()) {
                notifyNetAPIUploadMessages(userTelCtn, syncMsgType, false);
            }
        }
    }

    private void handleRCSDbReady() {
        this.mRCSDbReady = true;
        resetImsi();
        startInitialDBCopy();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleUpdateFromDeviceFtUriFetch(com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUriParam r14) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferSchedulingHandler.handleUpdateFromDeviceFtUriFetch(com.sec.internal.ims.cmstore.params.DeviceMsgAppFetchUriParam):void");
    }

    private void onNotifyToMsgAppFetched(String str, DeviceMsgAppFetchUriParam deviceMsgAppFetchUriParam) {
        Log.d(this.TAG, "onNotifyToMsgAppFetched");
        int lineInitSyncStatus = this.mMultiLnScheduler.getLineInitSyncStatus(this.mStoreClient.getPrerenceManager().getUserTelCtn(), SyncMsgType.DEFAULT);
        if (deviceMsgAppFetchUriParam.mTableindex != 6) {
            return;
        }
        this.mMmsScheduler.onMmsPayloadUpdateWithDB(deviceMsgAppFetchUriParam.mImsPartId, str);
        if (!(this.mMmsScheduler.queryPendingFetchForce() == 0 && this.mMmsScheduler.queryPendingUrlFetch() == 0) || lineInitSyncStatus == OMASyncEventType.INITIAL_SYNC_COMPLETE.getId()) {
            return;
        }
        processDownloadComplete(str);
    }

    private void downloadMessageOnFetchUrlSuccess(String str, String str2, int i) {
        int queryPendingUrlFetch = this.mRcsScheduler.queryPendingUrlFetch();
        int queryPendingUrlFetch2 = this.mMmsScheduler.queryPendingUrlFetch();
        int queryPendingVVMUrlFetch = this.mVVMScheduler.queryPendingVVMUrlFetch(17);
        int queryPendingVVMUrlFetch2 = this.mVVMScheduler.queryPendingVVMUrlFetch(18);
        Log.i(this.TAG, "downloadMessageOnFetchUrlSuccess pendingMMS: " + queryPendingUrlFetch2 + " pendingRCS: " + queryPendingUrlFetch + " pendingVVM : " + queryPendingVVMUrlFetch + " pendingVVMGreetingcount: " + queryPendingVVMUrlFetch2);
        if (!CloudMessageProviderContract.ApplicationTypes.MSGDATA.equalsIgnoreCase(str2)) {
            if (queryPendingVVMUrlFetch == 0 && i == 17) {
                onSendUnDownloadedMessage(str, SyncMsgType.VM, false, CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId());
                return;
            } else {
                if (queryPendingVVMUrlFetch2 == 0 && i == 18) {
                    onSendUnDownloadedMessage(str, SyncMsgType.VM_GREETINGS, false, CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId());
                    return;
                }
                return;
            }
        }
        if (!this.mIsCmsEnabled) {
            if (queryPendingUrlFetch2 == 0 && queryPendingUrlFetch == 0) {
                onSendUnDownloadedMessage(str, SyncMsgType.MESSAGE, false, CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId());
                return;
            }
            return;
        }
        if (queryPendingUrlFetch2 == 0 && queryPendingUrlFetch == 0) {
            Log.i(this.TAG, "downloadMessageOnFetchUrlSuccess onSendUnDownloadedMessage for RCS Message");
            onSendUnDownloadedMessage(str, SyncMsgType.MESSAGE, false, CloudMessageBufferDBConstants.ActionStatusFlag.DownLoad.getId());
        }
    }

    private void onUpdateFromDeviceMsgAppFetch(DeviceMsgAppFetchUpdateParam deviceMsgAppFetchUpdateParam) {
        int i = deviceMsgAppFetchUpdateParam.mTableindex;
        if (i != 1 && i != 14) {
            if (i == 3) {
                this.mSmsScheduler.onUpdateFromDeviceMsgAppFetch(deviceMsgAppFetchUpdateParam, this.mIsGoforwardSync);
                return;
            }
            if (i == 4) {
                this.mMmsScheduler.onUpdateFromDeviceMsgAppFetch(deviceMsgAppFetchUpdateParam, this.mIsGoforwardSync);
                return;
            } else if (i != 11 && i != 12) {
                switch (i) {
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                        this.mVVMScheduler.onUpdateFromDeviceMsgAppFetch(deviceMsgAppFetchUpdateParam, this.mIsGoforwardSync);
                        break;
                }
            }
        }
        this.mRcsScheduler.onUpdateFromDeviceMsgAppFetch(deviceMsgAppFetchUpdateParam, this.mIsGoforwardSync);
    }

    private void onUpdateFromDeviceMsgAppFetchFailed(DeviceMsgAppFetchUpdateParam deviceMsgAppFetchUpdateParam) {
        Log.d(this.TAG, "onUpdateFromDeviceMsgAppFetchFailed " + deviceMsgAppFetchUpdateParam);
        int i = deviceMsgAppFetchUpdateParam.mTableindex;
        if (i != 1 && i != 14) {
            if (i == 3) {
                this.mSmsScheduler.onUpdateFromDeviceMsgAppFetchFailed(deviceMsgAppFetchUpdateParam);
                return;
            } else if (i == 4) {
                this.mMmsScheduler.onUpdateFromDeviceMsgAppFetchFailed(deviceMsgAppFetchUpdateParam);
                return;
            } else if (i != 11 && i != 12) {
                return;
            }
        }
        this.mRcsScheduler.onUpdateFromDeviceMsgAppFetchFailed(deviceMsgAppFetchUpdateParam);
    }

    private void handleSearchObject(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        this.mMultiLnScheduler.updateLineInitsyncStatus(paramOMAresponseforBufDB.getLine(), paramOMAresponseforBufDB.getSyncMsgType(), paramOMAresponseforBufDB.getSearchCursor(), paramOMAresponseforBufDB.getOMASyncEventType().getId());
        if (SyncMsgType.DEFAULT.equals(paramOMAresponseforBufDB.getSyncMsgType()) || SyncMsgType.MESSAGE.equals(paramOMAresponseforBufDB.getSyncMsgType())) {
            this.mSmsScheduler.notifyInitialSyncStatus(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.MSGAPP_ALL, paramOMAresponseforBufDB.getLine(), CloudMessageBufferDBConstants.InitialSyncStatusFlag.START, paramOMAresponseforBufDB.getIsFullSync());
        } else if (SyncMsgType.VM.equals(paramOMAresponseforBufDB.getSyncMsgType())) {
            this.mVVMScheduler.notifyInitialSyncStatus("VVMDATA", "VVMDATA", paramOMAresponseforBufDB.getLine(), CloudMessageBufferDBConstants.InitialSyncStatusFlag.START, paramOMAresponseforBufDB.getIsFullSync());
        } else if (SyncMsgType.VM_GREETINGS.equals(paramOMAresponseforBufDB.getSyncMsgType())) {
            this.mVVMScheduler.notifyInitialSyncStatus("VVMDATA", CloudMessageProviderContract.DataTypes.VVMGREETING, paramOMAresponseforBufDB.getLine(), CloudMessageBufferDBConstants.InitialSyncStatusFlag.START, paramOMAresponseforBufDB.getIsFullSync());
        }
        ObjectList objectList = paramOMAresponseforBufDB.getObjectList();
        int i = 17;
        if (objectList != null && objectList.object != null) {
            int i2 = 0;
            while (true) {
                Object[] objectArr = objectList.object;
                if (i2 < objectArr.length) {
                    Object object = objectArr[i2];
                    ParamOMAObject paramOMAObject = new ParamOMAObject(object, false, -1, this.mICloudMessageManagerHelper, this.mStoreClient);
                    if (paramOMAObject.mObjectType != -1) {
                        Log.d(this.TAG, "param.mObjectType: " + paramOMAObject.mObjectType);
                        int i3 = paramOMAObject.mObjectType;
                        if (i3 == 3) {
                            this.mSmsScheduler.handleObjectSMSCloudSearch(paramOMAObject);
                        } else if (i3 == 4) {
                            this.mMmsScheduler.handleObjectMMSCloudSearch(paramOMAObject);
                        } else if (i3 == 17) {
                            this.mVVMScheduler.handleObjectVvmMessageCloudSearch(paramOMAObject, z);
                        } else if (i3 == 18) {
                            this.mVVMScheduler.handleObjectVvmGreetingCloudSearch(paramOMAObject);
                        } else if (i3 == 34) {
                            this.mRcsScheduler.handleCloudNotifyGSOChangedObj(paramOMAObject, object);
                        } else if (i3 != 38) {
                            switch (i3) {
                                case 11:
                                case 12:
                                case 14:
                                    if (!this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldSkipMessage(paramOMAObject)) {
                                        this.mRcsScheduler.handleObjectRCSMessageCloudSearch(paramOMAObject, z);
                                        break;
                                    } else {
                                        break;
                                    }
                                case 13:
                                    this.mRcsScheduler.handleObjectRCSIMDNCloudSearch(paramOMAObject);
                                    break;
                            }
                        } else {
                            this.mRcsScheduler.handleCloudNotifyConferenceInfo(paramOMAObject, object, true);
                        }
                    }
                    i2++;
                }
            }
        }
        if (paramOMAresponseforBufDB.getActionType().equals(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_SUMMARY_COMPLETE)) {
            SyncMsgType syncMsgType = paramOMAresponseforBufDB.getSyncMsgType();
            SyncMsgType syncMsgType2 = SyncMsgType.VM;
            if (syncMsgType == syncMsgType2 || paramOMAresponseforBufDB.getSyncMsgType() == SyncMsgType.VM_GREETINGS) {
                if (paramOMAresponseforBufDB.getSyncMsgType() == syncMsgType2) {
                    this.mVVMScheduler.handleSyncSummaryComplete(paramOMAresponseforBufDB.getLine());
                } else {
                    i = 18;
                }
                if (this.mVVMScheduler.queryPendingVVMUrlFetch(i) > 0) {
                    onSendUnDownloadedMessage(paramOMAresponseforBufDB.getLine(), paramOMAresponseforBufDB.getSyncMsgType(), false, CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId());
                    return;
                } else {
                    downloadMessageOnFetchUrlSuccess(paramOMAresponseforBufDB.getLine(), "VVMDATA", i);
                    return;
                }
            }
            if (!this.mRcsScheduler.isEmptySession()) {
                this.mRcsScheduler.handleNotifySessionToApp();
            }
            onSendUnDownloadedMessage(paramOMAresponseforBufDB.getLine(), paramOMAresponseforBufDB.getSyncMsgType(), false, CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId());
        }
    }

    private void handleSearchObjectForVVM(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        Log.d(this.TAG, "handleSearchObjectForVVM: " + paramOMAresponseforBufDB);
        ObjectList objectList = paramOMAresponseforBufDB.getObjectList();
        if (objectList == null || objectList.object == null) {
            return;
        }
        int i = 0;
        while (true) {
            Object[] objectArr = objectList.object;
            if (i >= objectArr.length) {
                return;
            }
            ParamOMAObject paramOMAObject = new ParamOMAObject(objectArr[i], false, -1, this.mICloudMessageManagerHelper, this.mStoreClient);
            if (paramOMAObject.mObjectType == -1) {
                Log.e(this.TAG, "errorL in object list");
            } else {
                Log.d(this.TAG, "param.mObjectType: " + paramOMAObject.mObjectType);
                int i2 = paramOMAObject.mObjectType;
                if (i2 == 0) {
                    Log.e(this.TAG, "invalid message context");
                } else if (i2 == 17) {
                    this.mVVMScheduler.handleObjectVvmMessageCloudSearch(paramOMAObject, z);
                }
            }
            i++;
        }
    }

    private void handleDownloadedPayload(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() == null) {
            return;
        }
        int i = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
        if (i == 1) {
            this.mRcsScheduler.onRcsPayloadDownloaded(paramOMAresponseforBufDB, false);
        } else {
            if (i != 6) {
                return;
            }
            this.mMmsScheduler.onMmsPayloadDownloaded(paramOMAresponseforBufDB, false);
        }
    }

    private void handleDownloadedAllPayloads(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() == null) {
            return;
        }
        int i = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
        if (i == 1) {
            this.mRcsScheduler.onRcsAllPayloadsDownloaded(paramOMAresponseforBufDB, false);
            return;
        }
        if (i == 4) {
            this.mMmsScheduler.onMmsAllPayloadsDownloadFromMcs(paramOMAresponseforBufDB);
        } else if (i == 17) {
            this.mVVMScheduler.onVvmAllPayloadDownloaded(paramOMAresponseforBufDB, false);
        } else {
            if (i != 18) {
                return;
            }
            this.mVVMScheduler.onGreetingAllPayloadDownloaded(paramOMAresponseforBufDB, false);
        }
    }

    private void onUpdateFromCloud(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Log.i(this.TAG, "onUpdateFromCloud: " + paramOMAresponseforBufDB + " mIsGoforwardSync:" + this.mIsGoforwardSync);
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getActionType() == null) {
            return;
        }
        switch (AnonymousClass2.$SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[paramOMAresponseforBufDB.getActionType().ordinal()]) {
            case 1:
                onInitialSyncComplete(true, paramOMAresponseforBufDB.getLine(), paramOMAresponseforBufDB.getSyncMsgType(), paramOMAresponseforBufDB);
                break;
            case 2:
            case 3:
                handleSearchObject(paramOMAresponseforBufDB, false);
                break;
            case 5:
                onInitialSyncComplete(false, paramOMAresponseforBufDB.getLine(), paramOMAresponseforBufDB.getSyncMsgType(), paramOMAresponseforBufDB);
                break;
            case 7:
                handleDownloadedPayload(paramOMAresponseforBufDB, true);
                break;
            case 8:
                handleDownloadedAllPayloads(paramOMAresponseforBufDB);
                break;
            case 9:
                int queryPendingFetchForce = this.mMmsScheduler.queryPendingFetchForce();
                String line = paramOMAresponseforBufDB.getLine();
                Log.i(this.TAG, "ALL_PAYLOAD_NOTIFY pendingMMScount: " + queryPendingFetchForce);
                if (queryPendingFetchForce == 0) {
                    processDownloadComplete(line);
                    break;
                } else {
                    onSendPayloadObject(line, SyncMsgType.DEFAULT);
                    break;
                }
            case 10:
                int lineUploadStatus = this.mMultiLnScheduler.getLineUploadStatus(paramOMAresponseforBufDB.getLine(), paramOMAresponseforBufDB.getSyncMsgType());
                IMSLog.i(this.TAG, "msg download complete, cmsEnable:" + this.mIsCmsEnabled + " uploadStatus:" + lineUploadStatus);
                if (!this.mIsCmsEnabled || lineUploadStatus == OMASyncEventType.INITIAL_UPLOAD_PENDING.getId()) {
                    notifyNetAPIUploadMessages(paramOMAresponseforBufDB.getLine(), paramOMAresponseforBufDB.getSyncMsgType(), false);
                    break;
                }
                break;
            case 11:
                this.mMultiLnScheduler.updateLineUploadStatus(paramOMAresponseforBufDB.getLine(), SyncMsgType.DEFAULT, OMASyncEventType.INITIAL_UPLOAD_STARTED.getId());
                break;
            case 12:
                onCloudUploadSuccess(paramOMAresponseforBufDB);
                break;
            case 13:
                this.mMultiLnScheduler.updateLineUploadStatus(paramOMAresponseforBufDB.getLine(), SyncMsgType.DEFAULT, OMASyncEventType.INITIAL_UPLOAD_COMPLETED.getId());
                this.mBufferDBChangeNetAPI.mChangelst.clear();
                break;
            case 14:
                onCloudNormalSyncObjectDownload(paramOMAresponseforBufDB, false);
                break;
            case 15:
                handleDownloadedPayload(paramOMAresponseforBufDB, false);
                break;
            case 16:
                handleDownloadedAllPayloads(paramOMAresponseforBufDB);
                break;
            case 17:
                handleDownloadedImdns(paramOMAresponseforBufDB);
                break;
            case 19:
                onMailBoxReset();
                break;
            case 21:
            case 22:
                onCloudUpdateFlagSuccess(paramOMAresponseforBufDB);
                break;
            case 23:
                onCloudNotificationReceivedUnknownType(paramOMAresponseforBufDB);
                break;
            case 24:
                onDownloadFailure(paramOMAresponseforBufDB);
                break;
            case 25:
                onUploadFailureHandling(paramOMAresponseforBufDB);
                break;
            case 26:
                onCloudDeleteObjectFailed(paramOMAresponseforBufDB);
                break;
            case 28:
                this.mVVMScheduler.handleVvmProfileDownloaded(paramOMAresponseforBufDB);
                break;
            case 29:
                this.mVVMScheduler.handleVvmQuotaInfo(paramOMAresponseforBufDB);
                break;
            case 30:
                onBulkFlagUpdateComplete(paramOMAresponseforBufDB);
                break;
            case 31:
                onBulkCreationComplete(paramOMAresponseforBufDB);
                break;
            case 32:
                handleSearchObjectForVVM(paramOMAresponseforBufDB, false);
                break;
            case 33:
                handleSearchObjectForVVM(paramOMAresponseforBufDB, false);
                int queryPendingVVMUrlFetch = this.mVVMScheduler.queryPendingVVMUrlFetch(17);
                Log.i(this.TAG, "onSendUnDownloadedMessage pendingVVMCount: " + queryPendingVVMUrlFetch);
                if (queryPendingVVMUrlFetch > 0) {
                    onSendUnDownloadedMessage(paramOMAresponseforBufDB.getLine(), SyncMsgType.VM, false, CloudMessageBufferDBConstants.ActionStatusFlag.FetchUri.getId());
                } else {
                    downloadMessageOnFetchUrlSuccess(paramOMAresponseforBufDB.getLine(), "VVMDATA", 17);
                }
                this.mVVMScheduler.handleSyncSummaryComplete(paramOMAresponseforBufDB.getLine());
                break;
            case 34:
                onAdhocV2tPayloadDownloadFailure(paramOMAresponseforBufDB);
                break;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferSchedulingHandler$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType;
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus;

        static {
            int[] iArr = new int[ParamOMAresponseforBufDB.ActionType.values().length];
            $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType = iArr;
            try {
                iArr[ParamOMAresponseforBufDB.ActionType.INIT_SYNC_COMPLETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.INIT_SYNC_SUMMARY_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.INIT_SYNC_PARTIAL_SYNC_SUMMARY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.MATCH_DB.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.SYNC_FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.ONE_MESSAGE_DOWNLOAD.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.ONE_PAYLOAD_DOWNLOAD.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.ALL_PAYLOAD_DOWNLOAD.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.ALL_PAYLOAD_NOTIFY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.MESSAGE_DOWNLOAD_COMPLETE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.INIT_UPLOAD_STARTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.ONE_MESSAGE_UPLOADED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.MESSAGE_UPLOAD_COMPLETE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.NOTIFICATION_OBJECT_DOWNLOADED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.NOTIFICATION_PAYLOAD_DOWNLOADED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.NOTIFICATION_ALL_PAYLOAD_DOWNLOADED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.NOTIFICATION_IMDN_DOWNLOADED.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.NOTIFICATION_OBJECTS_DOWNLOAD_COMPLETE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.MAILBOX_RESET.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.CLOUD_OBJECT_UPDATE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.OBJECT_FLAG_UPDATED.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_UPDATE_COMPLETE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.RECEIVE_NOTIFICATION.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.OBJECT_NOT_FOUND.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.VVM_FAX_ERROR_WITH_NO_RETRY.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.OBJECT_DELETE_UPDATE_FAILED.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.OBJECT_READ_UPDATE_FAILED.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.VVM_PROFILE_DOWNLOADED.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.VVM_QUOTA_INFO.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.OBJECT_FLAGS_BULK_UPDATE_COMPLETE.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.BULK_MESSAGES_UPLOADED.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.VVM_NORMAL_SYNC_SUMMARY_PARTIAL.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.VVM_NORMAL_SYNC_SUMMARY_COMPLETE.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$cmstore$params$ParamOMAresponseforBufDB$ActionType[ParamOMAresponseforBufDB.ActionType.ADHOC_PAYLOAD_DOWNLOAD_FAILED.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            int[] iArr2 = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr2;
            try {
                iArr2[OMASyncEventType.INITIAL_SYNC_COMPLETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.INITIAL_SYNC_SUMMARY_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.START_INITIAL_SYNC.ordinal()] = 3;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DEFAULT.ordinal()] = 4;
            } catch (NoSuchFieldError unused38) {
            }
            int[] iArr3 = new int[IWorkingStatusProvisionListener.WorkingStatus.values().length];
            $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus = iArr3;
            try {
                iArr3[IWorkingStatusProvisionListener.WorkingStatus.PROVISION_SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[IWorkingStatusProvisionListener.WorkingStatus.OMA_PROVISION_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[IWorkingStatusProvisionListener.WorkingStatus.SEND_TOCLOUD_UNSYNC.ordinal()] = 3;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[IWorkingStatusProvisionListener.WorkingStatus.NET_WORK_STATUS_CHANGED.ordinal()] = 4;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[IWorkingStatusProvisionListener.WorkingStatus.DEFAULT_MSGAPP_CHGTO_NATIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[IWorkingStatusProvisionListener.WorkingStatus.RESTART_SERVICE.ordinal()] = 6;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[IWorkingStatusProvisionListener.WorkingStatus.BUFFERDB_CLEAN.ordinal()] = 7;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[IWorkingStatusProvisionListener.WorkingStatus.MAILBOX_MIGRATION_RESET.ordinal()] = 8;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$com$sec$internal$interfaces$ims$cmstore$IWorkingStatusProvisionListener$WorkingStatus[IWorkingStatusProvisionListener.WorkingStatus.UPDATE_CMS_CONFIG.ordinal()] = 9;
            } catch (NoSuchFieldError unused47) {
            }
        }
    }

    private void processDownloadComplete(String str) {
        ParamOMAresponseforBufDB.Builder line = new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.MESSAGE_DOWNLOAD_COMPLETE).setLine(str);
        SyncMsgType syncMsgType = SyncMsgType.DEFAULT;
        sendMessage(obtainMessage(3, new AsyncResult(null, line.setSyncType(syncMsgType).build(), null)));
        sendMessage(obtainMessage(3, new AsyncResult(null, new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_COMPLETE).setOMASyncEventType(OMASyncEventType.INITIAL_SYNC_COMPLETE).setLine(str).setSyncType(syncMsgType).build(), null)));
    }

    private void onCloudDeleteObjectFailed(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getBufferDBChangeParam() == null) {
            return;
        }
        int i = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
        long j = paramOMAresponseforBufDB.getBufferDBChangeParam().mRowId;
        String str = paramOMAresponseforBufDB.getBufferDBChangeParam().mLine;
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isNotifyAppOnUpdateCloudFail()) {
            if (i == 1) {
                this.mRcsScheduler.notifyMsgAppDeleteFail(i, j, str);
                return;
            }
            if (i == 17) {
                this.mVVMScheduler.notifyMsgAppDeleteFail(i, j, str);
            } else if (i == 3) {
                this.mSmsScheduler.notifyMsgAppDeleteFail(i, j, str);
            } else {
                if (i != 4) {
                    return;
                }
                this.mMmsScheduler.notifyMsgAppDeleteFail(i, j, str);
            }
        }
    }

    private void onBulkFlagUpdateComplete(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB.getBulkResponseList() == null || paramOMAresponseforBufDB.getBulkResponseList().response == null) {
            Log.e(this.TAG, "onBulkFlagUpdateComplete: invalid return results");
            return;
        }
        for (int i = 0; i < paramOMAresponseforBufDB.getBulkResponseList().response.length; i++) {
            if (paramOMAresponseforBufDB.getBulkResponseList().response[i].success != null && paramOMAresponseforBufDB.getBulkResponseList().response[i].success.resourceURL != null) {
                handleBulkOpSingleUrlSuccess(paramOMAresponseforBufDB.getBulkResponseList().response[i].success.resourceURL.toString());
            } else if (paramOMAresponseforBufDB.getBulkResponseList().response[i].failure != null && this.mStoreClient.getCloudMessageStrategyManager().getStrategy().bulkOpTreatSuccessIndividualResponse(paramOMAresponseforBufDB.getBulkResponseList().response[i].code) && paramOMAresponseforBufDB.getBulkResponseList().response[i].failure != null && paramOMAresponseforBufDB.getBulkResponseList().response[i].failure.serviceException != null && paramOMAresponseforBufDB.getBulkResponseList().response[i].failure.serviceException.variables != null) {
                handleBulkOpSingleUrlSuccess(paramOMAresponseforBufDB.getBulkResponseList().response[i].failure.serviceException.variables[0]);
            }
        }
    }

    private void onUploadFailureHandling(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getBufferDBChangeParam() == null) {
            return;
        }
        int i = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
        if (i == 18 || i == 19 || i == 20 || i == 17) {
            this.mVVMScheduler.handleUpdateVVMResponse(paramOMAresponseforBufDB, false);
        }
    }

    private void onDownloadFailure(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getBufferDBChangeParam() == null) {
            return;
        }
        int i = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
        if (i == 17 || i == 18) {
            this.mVVMScheduler.handleDownLoadMessageResponse(paramOMAresponseforBufDB, false);
        } else if (i == 1) {
            this.mRcsScheduler.handleDownLoadMessageResponse(paramOMAresponseforBufDB, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onForceInitSync(boolean z) {
        EventLogHelper.infoLogAndAddWoPhoneId(this.TAG, this.mPhoneId, "onForceInitSync isDeltaSync: " + z);
        String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        MultiLineScheduler multiLineScheduler = this.mMultiLnScheduler;
        SyncMsgType syncMsgType = SyncMsgType.DEFAULT;
        multiLineScheduler.updateLineUploadStatus(userTelCtn, syncMsgType, OMASyncEventType.INITIAL_UPLOAD_PENDING.getId());
        if (z) {
            startForceInitDeltaMessageCopy();
            notifyNetAPIUploadMessages(userTelCtn, syncMsgType, true);
        } else {
            startInitialSyncDBCopyTask();
            this.mDeviceDataChangeListener.onForceInitSyncStart();
        }
    }

    private void onMailBoxReset() {
        cleanAllBufferDB();
        startInitialSyncDBCopyTask();
        this.mDeviceDataChangeListener.onMailBoxResetBufferDbDone();
    }

    private void onCloudNormalSyncObjectDownload(ParamOMAresponseforBufDB paramOMAresponseforBufDB, boolean z) {
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() == null) {
            return;
        }
        ParamOMAObject paramOMAObject = new ParamOMAObject(paramOMAresponseforBufDB.getObject(), paramOMAresponseforBufDB.getBufferDBChangeParam().mIsGoforwardSync, paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex, this.mICloudMessageManagerHelper, this.mStoreClient);
        if (paramOMAObject.mObjectType != -1 || paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex == 7) {
            this.mSummaryQuery.insertSummaryDbUsingObjectIfNonExist(paramOMAObject, paramOMAObject.mObjectType);
            int i = paramOMAObject.mObjectType;
            if (i != 1) {
                if (i == 34) {
                    this.mRcsScheduler.handleCloudNotifyGSOChangedObj(paramOMAObject, paramOMAresponseforBufDB.getObject());
                    return;
                }
                if (i == 38) {
                    this.mRcsScheduler.handleCloudNotifyConferenceInfo(paramOMAObject, paramOMAresponseforBufDB.getObject(), false);
                    return;
                }
                if (i == 3) {
                    this.mSmsScheduler.handleNormalSyncObjectSmsDownload(paramOMAObject);
                    return;
                }
                if (i == 4) {
                    this.mMmsScheduler.handleNormalSyncObjectMmsDownload(paramOMAObject, z);
                    return;
                }
                if (i == 17) {
                    this.mVVMScheduler.handleNormalSyncDownloadedVVMMessage(paramOMAObject);
                    return;
                } else {
                    if (i != 18) {
                        switch (i) {
                            case 13:
                                this.mRcsScheduler.handleNormalSyncObjectRcsImdnDownload(paramOMAObject);
                                break;
                        }
                        return;
                    }
                    this.mVVMScheduler.handleNormalSyncDownloadedVVMGreeting(paramOMAObject);
                    return;
                }
            }
            this.mRcsScheduler.handleNormalSyncObjectRcsMessageDownload(paramOMAObject, z);
        }
    }

    private void onCloudNotificationReceivedUnknownType(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        NotificationList[] notificationList = paramOMAresponseforBufDB.getNotificationList();
        if (CmsUtil.isMcsSupported(this.mContext, this.mStoreClient.getClientID())) {
            if (notificationList == null || notificationList.length == 0) {
                notificationList = new NotificationList[]{new NotificationList()};
            }
            notificationList[0].nmsEventList = paramOMAresponseforBufDB.getMcsNmsEventList();
        }
        BufferDBChangeParamList bufferDBChangeParamList = new BufferDBChangeParamList();
        if (notificationList == null) {
            this.mIsGoforwardSync = false;
            return;
        }
        boolean z = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isGoForwardSyncSupported() && this.mIsGoforwardSync;
        for (NotificationList notificationList2 : notificationList) {
            NmsEventList nmsEventList = notificationList2.nmsEventList;
            if (nmsEventList != null && nmsEventList.nmsEvent != null) {
                int i = 0;
                while (true) {
                    NmsEvent[] nmsEventArr = nmsEventList.nmsEvent;
                    if (i < nmsEventArr.length) {
                        NmsEvent nmsEvent = nmsEventArr[i];
                        String str = this.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("onCloudNotificationReceivedUnknownType, ChangedObj:");
                        sb.append(nmsEvent.changedObject == null ? null : "not null");
                        sb.append(" DeletedObj:");
                        sb.append(nmsEvent.deletedObject == null ? null : "not null");
                        sb.append(" ExpiredObj:");
                        sb.append(nmsEvent.expiredObject != null ? "not null" : null);
                        sb.append(" shouldSkipDeletedObjt:");
                        sb.append(z);
                        sb.append(" mIsGoforwardSync:");
                        sb.append(this.mIsGoforwardSync);
                        Log.i(str, sb.toString());
                        ChangedObject changedObject = nmsEvent.changedObject;
                        if (changedObject != null) {
                            handleCloudNotifyChangedObj(changedObject, bufferDBChangeParamList, this.mIsGoforwardSync);
                        }
                        DeletedObject deletedObject = nmsEvent.deletedObject;
                        if (deletedObject != null && !z) {
                            handleCloudNotifyDeletedObj(deletedObject, false);
                        }
                        DeletedObject deletedObject2 = nmsEvent.expiredObject;
                        if (deletedObject2 != null) {
                            handleExpiredObject(deletedObject2);
                        }
                        i++;
                    }
                }
            }
        }
        if (bufferDBChangeParamList.mChangelst.size() > 0) {
            this.mDeviceDataChangeListener.sendDeviceNormalSyncDownload(bufferDBChangeParamList);
        }
        if (this.mIsGoforwardSync) {
            onSendCloudUnSyncedUpdate();
            this.mIsGoforwardSync = false;
        }
    }

    private void onCloudUpdateFlagSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() == null) {
            return;
        }
        int i = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
        if (i != 1 && i != 14) {
            if (i == 17) {
                this.mVVMScheduler.onCloudUpdateFlagSuccess(paramOMAresponseforBufDB, false);
                return;
            }
            if (i == 3) {
                this.mSmsScheduler.onCloudUpdateFlagSuccess(paramOMAresponseforBufDB, false);
                return;
            } else if (i == 4) {
                this.mMmsScheduler.onCloudUpdateFlagSuccess(paramOMAresponseforBufDB, false);
                return;
            } else if (i != 11 && i != 12) {
                return;
            }
        }
        this.mRcsScheduler.onCloudUpdateFlagSuccess(paramOMAresponseforBufDB, false);
    }

    private void onCloudUploadSuccess(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() == null) {
        }
        if (paramOMAresponseforBufDB.getReference() != null) {
            int i = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
            if (i != 1 && i != 14) {
                if (i == 3) {
                    this.mSmsScheduler.onCloudUploadSuccess(paramOMAresponseforBufDB, false);
                    return;
                }
                if (i == 4) {
                    this.mMmsScheduler.onCloudUploadSuccess(paramOMAresponseforBufDB, false);
                    return;
                } else if (i != 11 && i != 12) {
                    switch (i) {
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                            this.mVVMScheduler.handleUpdateVVMResponse(paramOMAresponseforBufDB, true);
                            break;
                    }
                }
            }
            this.mRcsScheduler.onCloudUploadSuccess(paramOMAresponseforBufDB, false);
            return;
        }
        int i2 = paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex;
        if (i2 == 3) {
            this.mSmsScheduler.onGroupSMSUploadSuccess(paramOMAresponseforBufDB);
            return;
        }
        switch (i2) {
            case 17:
            case 18:
            case 19:
            case 20:
                this.mVVMScheduler.handleUpdateVVMResponse(paramOMAresponseforBufDB, true);
                break;
        }
    }

    private void onInitialSyncComplete(boolean z, String str, SyncMsgType syncMsgType, ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        String str2;
        if (str == null) {
            return;
        }
        boolean isFullSync = paramOMAresponseforBufDB.getIsFullSync();
        if (z) {
            this.mMultiLnScheduler.updateLineInitsyncStatus(str, paramOMAresponseforBufDB.getSyncMsgType(), paramOMAresponseforBufDB.getSearchCursor(), paramOMAresponseforBufDB.getOMASyncEventType().getId());
        } else {
            IMSLog.c(LogClass.MCS_INIT_SYNC_STATUS, this.mPhoneId + "," + BaseSyncHandler.SyncOperation.DOWNLOAD.ordinal() + "," + paramOMAresponseforBufDB.getOMASyncEventType().getId());
        }
        if (SyncMsgType.DEFAULT.equals(paramOMAresponseforBufDB.getSyncMsgType()) || SyncMsgType.MESSAGE.equals(paramOMAresponseforBufDB.getSyncMsgType())) {
            if (z) {
                this.mSmsScheduler.notifyInitialSyncStatus(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.MSGAPP_ALL, str, CloudMessageBufferDBConstants.InitialSyncStatusFlag.FINISHED, isFullSync);
            } else {
                this.mSmsScheduler.notifyInitialSyncStatus(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.MSGAPP_ALL, str, CloudMessageBufferDBConstants.InitialSyncStatusFlag.FAIL, isFullSync);
            }
        } else if (SyncMsgType.VM.equals(paramOMAresponseforBufDB.getSyncMsgType()) || SyncMsgType.VM_GREETINGS.equals(paramOMAresponseforBufDB.getSyncMsgType())) {
            if (isFullSync || this.mDeviceDataChangeListener.isNormalVVMSyncing()) {
                this.mStoreClient.getCloudMessageStrategyManager().getStrategy().setVVMPendingRequestCounts(false);
            }
            if (SyncMsgType.VM_GREETINGS.equals(paramOMAresponseforBufDB.getSyncMsgType())) {
                str2 = CloudMessageProviderContract.DataTypes.VVMGREETING;
            } else {
                if (this.mDeviceDataChangeListener.isNormalVVMSyncing()) {
                    Log.i(this.TAG, "Actually Normal Sync Completion");
                    this.mDeviceDataChangeListener.setVVMSyncState(false);
                    isFullSync = false;
                }
                str2 = "VVMDATA";
            }
            this.mVVMScheduler.notifyInitialSyncStatus("VVMDATA", str2, str, z ? CloudMessageBufferDBConstants.InitialSyncStatusFlag.FINISHED : CloudMessageBufferDBConstants.InitialSyncStatusFlag.FAIL, isFullSync);
        }
        onHandlePendingNmsEvent();
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getIsInitSyncIndicatorRequired()) {
            Log.i(this.TAG, "Send a to init sync termial flag(RowId = -1) to messaging app");
            this.mSmsScheduler.notifyMsgAppCldNotification(CloudMessageProviderContract.ApplicationTypes.MSGDATA, CloudMessageProviderContract.DataTypes.SMS, -1L, false);
        }
    }

    private void startInitialDBCopy() {
        this.mBufferDBloaded = this.mStoreClient.getPrerenceManager().getBufferDbLoaded();
        if (this.mIsCmsEnabled) {
            this.mProvisionSuccess = this.mStoreClient.getProvisionStatus();
        }
        EventLogHelper.infoLogAndAdd(this.TAG, this.mPhoneId, "startInitialDBCopy(), mProvisionSuccess: " + this.mProvisionSuccess + ", mRCSDbReady: " + this.mRCSDbReady + ", mBufferDBloaded: " + this.mBufferDBloaded);
        if (this.mRCSDbReady && !this.mBufferDBloaded && this.mProvisionSuccess) {
            IMSLog.c(LogClass.MCS_INIT_SYNC_STATUS, this.mPhoneId + ", COPY");
            sendMessage(obtainMessage(1, null));
        }
    }

    private void restartService() {
        sendMessage(obtainMessage(12, null));
    }

    public void onRCSDbReady() {
        Log.d(this.TAG, "onRCSDbReady()");
        sendMessage(obtainMessage(11, null));
    }

    public void onFtUriResponseJson(String str, String str2) {
        int i;
        int i2;
        try {
            JsonElement parse = new JsonParser().parse(str2);
            if (parse.isJsonArray()) {
                JsonArray asJsonArray = parse.getAsJsonArray();
                Log.i(this.TAG, "jsonArray size : " + asJsonArray.size());
                long j = -1;
                long j2 = -1L;
                String str3 = "";
                long j3 = -1;
                for (int i3 = 0; i3 < asJsonArray.size(); i3++) {
                    JsonObject asJsonObject = asJsonArray.get(i3).getAsJsonObject();
                    if (asJsonObject.get("id") != null && !asJsonObject.get("id").isJsonNull()) {
                        j = asJsonObject.get("id").getAsLong();
                    } else {
                        Log.e(this.TAG, "onFtUriResponseJson id is null");
                    }
                    if (asJsonObject.get(CloudMessageProviderContract.JsonData.REMOTE_ID) != null && !asJsonObject.get(CloudMessageProviderContract.JsonData.REMOTE_ID).isJsonNull()) {
                        j3 = asJsonObject.get(CloudMessageProviderContract.JsonData.REMOTE_ID).getAsLong();
                    } else {
                        Log.e(this.TAG, "onFtUriResponseJson remoteId is null");
                    }
                    if (asJsonObject.get("type") != null && !asJsonObject.get("type").isJsonNull()) {
                        str3 = asJsonObject.get("type").getAsString();
                    } else {
                        Log.e(this.TAG, "onFtUriResponseJson messageType is null");
                    }
                    if (asJsonObject.get(CloudMessageProviderContract.JsonData.IMS_PARTID) != null && !asJsonObject.get(CloudMessageProviderContract.JsonData.IMS_PARTID).isJsonNull()) {
                        j2 = asJsonObject.get(CloudMessageProviderContract.JsonData.IMS_PARTID).getAsLong();
                    } else {
                        Log.e(this.TAG, "onFtUriResponseJson imsPartId is null");
                    }
                    if (str3.equalsIgnoreCase(CloudMessageProviderContract.DataTypes.MMS)) {
                        i2 = 4;
                    } else if (str3.equalsIgnoreCase("FT")) {
                        i2 = 1;
                    } else if (str3.equalsIgnoreCase("VVMDATA")) {
                        i2 = 17;
                    } else if (str3.equalsIgnoreCase(CloudMessageProviderContract.DataTypes.VVMGREETING)) {
                        i2 = 18;
                    } else {
                        i = 0;
                        Log.i(this.TAG, "onFtUriResponseJson tableId: " + i + "localId: " + j + " remotId: " + j3 + " partId:" + j2);
                        sendMessage(obtainMessage(30, new DeviceMsgAppFetchUriParam(i, j, j3, j2, str)));
                    }
                    i = i2;
                    Log.i(this.TAG, "onFtUriResponseJson tableId: " + i + "localId: " + j + " remotId: " + j3 + " partId:" + j2);
                    sendMessage(obtainMessage(30, new DeviceMsgAppFetchUriParam(i, j, j3, j2, str)));
                }
            }
        } catch (Exception e) {
            Log.e(this.TAG, e.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00d4 A[Catch: NullPointerException | NumberFormatException -> 0x00e8, TryCatch #0 {NullPointerException | NumberFormatException -> 0x00e8, blocks: (B:7:0x004a, B:11:0x00ba, B:13:0x00d4, B:16:0x00de, B:18:0x0058, B:21:0x0062, B:24:0x006e, B:27:0x0079, B:29:0x0081, B:32:0x008a, B:35:0x0095, B:38:0x00a0), top: B:6:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00de A[Catch: NullPointerException | NumberFormatException -> 0x00e8, TRY_LEAVE, TryCatch #0 {NullPointerException | NumberFormatException -> 0x00e8, blocks: (B:7:0x004a, B:11:0x00ba, B:13:0x00d4, B:16:0x00de, B:18:0x0058, B:21:0x0062, B:24:0x006e, B:27:0x0079, B:29:0x0081, B:32:0x008a, B:35:0x0095, B:38:0x00a0), top: B:6:0x004a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onBufferDBReadResult(java.lang.String r11, java.lang.String r12, java.lang.String r13, int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.cloudmessagebuffer.CloudMessageBufferSchedulingHandler.onBufferDBReadResult(java.lang.String, java.lang.String, java.lang.String, int, boolean):void");
    }

    public void createSession(String str) {
        sendMessage(obtainMessage(7, new DeviceSessionPartcptsUpdateParam(10, CloudMessageBufferDBConstants.ActionStatusFlag.Insert, str)));
    }

    public void createParticipant(String str) {
        sendMessage(obtainMessage(7, new DeviceSessionPartcptsUpdateParam(2, CloudMessageBufferDBConstants.ActionStatusFlag.Insert, str)));
    }

    public void deleteSession(String str) {
        sendMessage(obtainMessage(7, new DeviceSessionPartcptsUpdateParam(10, CloudMessageBufferDBConstants.ActionStatusFlag.Delete, str)));
    }

    public void deleteParticipant(String str) {
        sendMessage(obtainMessage(7, new DeviceSessionPartcptsUpdateParam(2, CloudMessageBufferDBConstants.ActionStatusFlag.Delete, str)));
    }

    public void onReturnAppFetchingFailedMsg(String str) {
        if (CloudMessageProviderContract.ApplicationTypes.MSGDATA.equalsIgnoreCase(str)) {
            sendMessage(obtainMessage(27, null));
        }
    }

    public void onNativeChannelReceived(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (!this.mDeviceDataChangeListener.isNativeMsgAppDefault()) {
            Log.d(this.TAG, "onNativeChannelReceived: msg app not default application - Ignore native channel notification");
        } else {
            sendMessage(obtainMessage(3, new AsyncResult(null, paramOMAresponseforBufDB, null)));
        }
    }

    public void receivedMessageJson(String str) {
        sendMessage(obtainMessage(13, str));
    }

    public void sentMessageJson(String str) {
        sendMessage(obtainMessage(14, str));
    }

    public void readMessageJson(String str, String str2) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldEnableNetAPIPutFlag(str)) {
            sendMessage(obtainMessage(15, str2));
        }
    }

    public void cancelMessageJson(String str, String str2) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldEnableNetAPIPutFlag(str)) {
            sendMessage(obtainMessage(31, str2));
        }
    }

    public void starredMessageList(String str) {
        sendMessage(obtainMessage(32, str));
    }

    public void unStarredMessageList(String str) {
        sendMessage(obtainMessage(33, str));
    }

    public void acceptedGroupChatList(String str) {
        sendMessage(obtainMessage(35, str));
    }

    public void spamMessageList(String str) {
        sendMessage(obtainMessage(34, str));
    }

    public void unReadMessageJson(String str) {
        sendMessage(obtainMessage(16, str));
    }

    public void deleteMessageJson(String str) {
        sendMessage(obtainMessage(17, str));
    }

    public void uploadMessageJson(String str) {
        sendMessage(obtainMessage(18, str));
    }

    public void downloadMessageJson(String str) {
        sendMessage(obtainMessage(19, str));
    }

    public void wipeOutMessageJson(String str) {
        sendMessage(obtainMessage(20, str));
    }

    public void bufferDbReadBatchMessageJson(String str) {
        sendMessage(obtainMessage(23, str));
    }

    public void startFullSync(String str, String str2) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isAppTriggerMessageSearch()) {
            ParamAppJsonValueList decodeJson = decodeJson(str, str2, CloudMessageBufferDBConstants.MsgOperationFlag.StartFullSync);
            if (decodeJson == null) {
                Log.e(this.TAG, "error parsing startfullsync json value");
            } else {
                sendMessage(obtainMessage(24, decodeJson));
            }
        }
    }

    public void startDeltaSync(String str, String str2) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isAppTriggerMessageSearch()) {
            ParamAppJsonValueList decodeJson = decodeJson(str, str2, CloudMessageBufferDBConstants.MsgOperationFlag.StartDeltaSync);
            if (decodeJson == null) {
                Log.e(this.TAG, "error parsing startDeltaSync json value");
            } else {
                sendMessage(obtainMessage(29, decodeJson));
            }
        }
    }

    public void stopSync(String str, String str2) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isAppTriggerMessageSearch()) {
            ParamAppJsonValueList decodeJson = decodeJson(str, str2, CloudMessageBufferDBConstants.MsgOperationFlag.StopSync);
            if (decodeJson == null) {
                Log.e(this.TAG, "error parsing startfullsync json value");
            } else {
                sendMessage(obtainMessage(25, decodeJson));
            }
        }
    }

    public void resyncPendingMsg() {
        sendEmptyMessage(28);
    }

    private void onBulkCreationComplete(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB == null || paramOMAresponseforBufDB.getBufferDBChangeParamList() == null || paramOMAresponseforBufDB.getBufferDBChangeParamList().mChangelst == null) {
            Log.d(this.TAG, "DBchange list is empty: do nothting ");
            return;
        }
        if (paramOMAresponseforBufDB.getBulkResponseList() == null || paramOMAresponseforBufDB.getBulkResponseList().response == null) {
            return;
        }
        BufferDBChangeParamList bufferDBChangeParamList = paramOMAresponseforBufDB.getBufferDBChangeParamList();
        int length = paramOMAresponseforBufDB.getBulkResponseList().response.length;
        if (length > bufferDBChangeParamList.mChangelst.size()) {
            length = bufferDBChangeParamList.mChangelst.size();
        }
        for (int i = 0; i < length; i++) {
            if (paramOMAresponseforBufDB.getBulkResponseList().response[i].success != null && paramOMAresponseforBufDB.getBulkResponseList().response[i].success.resourceURL != null) {
                handleBulkOpSingleUrlSuccess(paramOMAresponseforBufDB.getBulkResponseList().response[i].success.resourceURL.toString());
                Reference reference = new Reference();
                reference.resourceURL = paramOMAresponseforBufDB.getBulkResponseList().response[i].success.resourceURL;
                reference.path = "";
                onCloudUploadSuccess(new ParamOMAresponseforBufDB.Builder().setReference(reference).setBufferDBChangeParam(bufferDBChangeParamList.mChangelst.get(i)).build());
            }
        }
    }

    private void handleDownloadedImdns(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() == null || paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex != 13) {
            return;
        }
        this.mRcsScheduler.onRcsChatImdnsDownloaded(paramOMAresponseforBufDB);
    }

    private void onAdhocV2tPayloadDownloadFailure(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB.getBufferDBChangeParam() != null && paramOMAresponseforBufDB.getBufferDBChangeParam().mIsAdhocV2t && paramOMAresponseforBufDB.getBufferDBChangeParam().mDBIndex == 17) {
            this.mVVMScheduler.onAdhocV2tPayloadDownloadFailure(paramOMAresponseforBufDB);
        }
    }
}
