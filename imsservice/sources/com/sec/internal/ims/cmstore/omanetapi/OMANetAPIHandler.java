package com.sec.internal.ims.cmstore.omanetapi;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.helper.AsyncResult;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.ims.cmstore.LineManager;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.helper.SyncParam;
import com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.BaseDeviceDataUpdateHandler;
import com.sec.internal.ims.cmstore.omanetapi.fcm.McsNotificationChannelScheduler;
import com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler;
import com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler;
import com.sec.internal.ims.cmstore.omanetapi.polling.OMAPollingScheduler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParamList;
import com.sec.internal.ims.cmstore.params.ParamNetAPIStatusControl;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.interfaces.ims.cmstore.ICloudMessageManagerHelper;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.interfaces.ims.cmstore.IWorkingStatusProvisionListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.data.ChannelDeleteData;
import java.util.Iterator;

/* loaded from: classes.dex */
public class OMANetAPIHandler extends Handler implements IControllerCommonInterface, INetAPIEventListener {
    private static final int EVENT_APP_DATA_SYNC = 6;
    public static final int EVENT_CHECK_SUBSCRIPTION_CHANNEL = 18;
    private static final int EVENT_DEVICE_DATA_UPDATE = 5;
    public static final int EVENT_FCM_RETRY_ON_EMPTY_FCMTOKEN = 20;
    private static final int EVENT_INITSYNC_DATA_DOWNLOAD = 7;
    private static final int EVENT_INITSYNC_DATA_UPLOAD = 8;
    private static final int EVENT_MCS_PAUSE_CMN_NETAPI = 17;
    private static final int EVENT_MCS_RESUME_CMN_NETAPI = 16;
    private static final int EVENT_MCS_START_CMN_NETAPI = 14;
    private static final int EVENT_MCS_STOP_CMN_NETAPI = 15;
    private static final int EVENT_NORMALSYNC_DATA_DOWNLOAD = 9;
    private static final int EVENT_PAUSE_CMN_NETAPI = 3;
    private static final int EVENT_PAUSE_CMN_NETAPI_WITH_CONTROLPARAM = 11;
    private static final int EVENT_RESETBOX_START_CMN_NETAPI = 10;
    private static final int EVENT_RESUME_CMN_NETAPI = 2;
    private static final int EVENT_RESUME_CMN_NETAPI_WITH_CONTROLPARAM = 12;
    private static final int EVENT_START_CMN_NETAPI = 1;
    private static final int EVENT_STOP_CMN_NETAPI = 4;
    private static final int EVENT_STOP_INITSYNC_AS_COMPLETE = 13;
    public static final int EVENT_UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED = 19;
    public String TAG;
    private IControllerCommonInterface mChannelScheduler;
    private final Context mContext;
    private final IWorkingStatusProvisionListener mIWorkingStatusProvisionListener;
    private boolean mIsCmsMcsEnabled;
    private boolean mIsFallbackProvisionInProcess;
    private boolean mIsRunning;
    private final LineManager mLineManager;
    private Looper mLooper;
    private int mPhoneId;
    private MessageStoreClient mStoreClient;
    private IControllerCommonInterface mSubscriptionChannelScheduler;
    private boolean mSyncFailNotifyReq;
    private final SyncHandlerFactory mSyncHandlerFactory;
    private final RegistrantList mUpdateFromCloudRegistrants;
    private IUIEventCallback muiCallBack;

    public interface OnApiSucceedOnceListener {
        void onMoveOn();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onInitialSyncStarted() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void pause() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void resume() {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void setOnApiSucceedOnceListener(OnApiSucceedOnceListener onApiSucceedOnceListener) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    public OMANetAPIHandler(Looper looper, MessageStoreClient messageStoreClient, IWorkingStatusProvisionListener iWorkingStatusProvisionListener, IUIEventCallback iUIEventCallback, LineManager lineManager, ICloudMessageManagerHelper iCloudMessageManagerHelper) {
        super(looper);
        this.TAG = OMANetAPIHandler.class.getSimpleName();
        this.mUpdateFromCloudRegistrants = new RegistrantList();
        this.mIsRunning = true;
        this.mIsCmsMcsEnabled = false;
        this.mIsFallbackProvisionInProcess = false;
        this.mSyncFailNotifyReq = false;
        this.mStoreClient = messageStoreClient;
        this.mPhoneId = messageStoreClient.getClientID();
        this.TAG += "[" + this.mPhoneId + "]";
        Context context = messageStoreClient.getContext();
        this.mContext = context;
        this.mLineManager = lineManager;
        this.muiCallBack = iUIEventCallback;
        this.mLooper = looper;
        this.mIsCmsMcsEnabled = CmsUtil.isMcsSupported(context, this.mPhoneId);
        resetChannelScheduler();
        this.mSyncHandlerFactory = new SyncHandlerFactory(looper, this.mStoreClient, this, iUIEventCallback, lineManager, iCloudMessageManagerHelper);
        this.mIWorkingStatusProvisionListener = iWorkingStatusProvisionListener;
    }

    public void registerForUpdateFromCloud(Handler handler, int i, Object obj) {
        this.mUpdateFromCloudRegistrants.add(new Registrant(handler, i, obj));
    }

    public void resetChannelScheduler() {
        IMSLog.i(this.TAG, "resetChannelScheduler: isCmsMcsEnabled: " + this.mIsCmsMcsEnabled);
        if (ATTGlobalVariables.isGcmReplacePolling()) {
            this.mChannelScheduler = new ChannelScheduler(this.mLooper, this, this.muiCallBack, this.mStoreClient);
        } else if (this.mIsCmsMcsEnabled) {
            this.mChannelScheduler = new McsNotificationChannelScheduler(this.mLooper, this, this, this.mStoreClient);
            this.mSubscriptionChannelScheduler = new SubscriptionChannelScheduler(this.mLooper, this, this.mStoreClient);
        } else {
            this.mChannelScheduler = new OMAPollingScheduler(this.mLooper, this, this.muiCallBack, this.mStoreClient);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        Log.i(this.TAG, "message: " + message.what);
        logWorkingStatus();
        switch (message.what) {
            case 1:
                this.mIsRunning = true;
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed()) {
                    this.mChannelScheduler.setOnApiSucceedOnceListener(new OnApiSucceedOnceListener() { // from class: com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler.1
                        @Override // com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler.OnApiSucceedOnceListener
                        public void onMoveOn() {
                            Log.i(OMANetAPIHandler.this.TAG, "Move on: start sync mIsRunning:" + OMANetAPIHandler.this.mIsRunning);
                            if (OMANetAPIHandler.this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isMultiLineSupported() || !OMANetAPIHandler.this.mIsRunning) {
                                return;
                            }
                            OMANetAPIHandler oMANetAPIHandler = OMANetAPIHandler.this;
                            oMANetAPIHandler.sendAppSync(new SyncParam(oMANetAPIHandler.mStoreClient.getPrerenceManager().getUserTelCtn(), SyncMsgType.DEFAULT), true);
                        }
                    });
                    this.mChannelScheduler.start();
                }
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isMultiLineSupported()) {
                    startAllSyncHandler();
                    break;
                }
                break;
            case 2:
                if (!this.mIsFallbackProvisionInProcess) {
                    Log.i(this.TAG, "Resume all handlers");
                    this.mIsRunning = true;
                    if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed()) {
                        this.mChannelScheduler.resume();
                    }
                    resumeAllSyncHandler();
                    break;
                }
                break;
            case 3:
                this.mIsRunning = false;
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed()) {
                    this.mChannelScheduler.pause();
                }
                pauseAllSyncHandler();
                break;
            case 4:
                this.mIsRunning = false;
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed()) {
                    this.mChannelScheduler.stop();
                }
                stopAllSyncHandler();
                break;
            case 5:
                BufferDBChangeParamList bufferDBChangeParamList = (BufferDBChangeParamList) message.obj;
                if (bufferDBChangeParamList != null) {
                    sendDeviceUpdateToHandlers(bufferDBChangeParamList);
                    break;
                }
                break;
            case 7:
                BufferDBChangeParamList bufferDBChangeParamList2 = (BufferDBChangeParamList) message.obj;
                if (bufferDBChangeParamList2 != null) {
                    sendDownloadToHandlers(bufferDBChangeParamList2);
                    break;
                }
                break;
            case 8:
                BufferDBChangeParamList bufferDBChangeParamList3 = (BufferDBChangeParamList) message.obj;
                if (bufferDBChangeParamList3 != null) {
                    sendUploadToHandlers(bufferDBChangeParamList3);
                    break;
                }
                break;
            case 9:
                BufferDBChangeParamList bufferDBChangeParamList4 = (BufferDBChangeParamList) message.obj;
                if (bufferDBChangeParamList4 != null) {
                    sendDownloadToDataChangeHandlers(bufferDBChangeParamList4);
                    break;
                }
                break;
            case 10:
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed()) {
                    this.mChannelScheduler.start();
                }
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isMultiLineSupported() || this.mIsCmsMcsEnabled) {
                    sendAppSyncResetBox(new SyncParam(this.mStoreClient.getPrerenceManager().getUserTelCtn(), SyncMsgType.DEFAULT));
                    break;
                }
                break;
            case 11:
                ParamNetAPIStatusControl paramNetAPIStatusControl = (ParamNetAPIStatusControl) message.obj;
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed() && !paramNetAPIStatusControl.mIsMsgAppForeground) {
                    Log.d(this.TAG, "Pause polling");
                    this.mChannelScheduler.pause();
                }
                if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isTokenRequestedFromProvision()) {
                    if (paramNetAPIStatusControl.mIsNetworkValid && paramNetAPIStatusControl.mIsProvisionSuccess && !paramNetAPIStatusControl.mIsUserDeleteAccount && !paramNetAPIStatusControl.mIsServicePaused) {
                        Log.d(this.TAG, "Should only disable polling");
                        break;
                    } else {
                        pauseAllSyncHandler();
                        break;
                    }
                } else if (!paramNetAPIStatusControl.mIsNetworkValid) {
                    pauseAllSyncHandler();
                    break;
                }
                break;
            case 12:
                ParamNetAPIStatusControl paramNetAPIStatusControl2 = (ParamNetAPIStatusControl) message.obj;
                this.mIsRunning = true;
                this.mIsFallbackProvisionInProcess = false;
                IControllerCommonInterface controllerOfLastFailedApi = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getControllerOfLastFailedApi();
                if (controllerOfLastFailedApi != null) {
                    if ((controllerOfLastFailedApi instanceof OMAPollingScheduler) || (controllerOfLastFailedApi instanceof ChannelScheduler)) {
                        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed() && paramNetAPIStatusControl2.mIsMsgAppForeground) {
                            resumeControllerOfLastFailedApi(controllerOfLastFailedApi, paramNetAPIStatusControl2);
                            break;
                        }
                    } else if (paramNetAPIStatusControl2.mIsNetworkValid) {
                        resumeControllerOfLastFailedApi(controllerOfLastFailedApi, paramNetAPIStatusControl2);
                        break;
                    }
                } else {
                    Log.i(this.TAG, "no failed API before, resume all handlers");
                    resumeHandlers(paramNetAPIStatusControl2);
                    break;
                }
                break;
            case 13:
                stopInitSyncAsComplete();
                break;
            case 14:
                this.mIsRunning = true;
                this.mChannelScheduler.setOnApiSucceedOnceListener(new OnApiSucceedOnceListener() { // from class: com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler.2
                    @Override // com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler.OnApiSucceedOnceListener
                    public void onMoveOn() {
                        Log.i(OMANetAPIHandler.this.TAG, "Move on: start init sync mIsRunning:" + OMANetAPIHandler.this.mIsRunning);
                        if (OMANetAPIHandler.this.mIsRunning) {
                            OMANetAPIHandler oMANetAPIHandler = OMANetAPIHandler.this;
                            oMANetAPIHandler.sendAppSync(new SyncParam(oMANetAPIHandler.mStoreClient.getPrerenceManager().getUserTelCtn(), SyncMsgType.DEFAULT), true);
                        }
                    }
                });
                IMSLog.i(this.TAG, "handleMessage: EVENT_MCS_START_CMN_NETAPI: start");
                this.mChannelScheduler.start();
                this.mSubscriptionChannelScheduler.start();
                break;
            case 15:
                IMSLog.i(this.TAG, "handleMessage: EVENT_MCS_STOP_CMN_NETAPI: stop");
                this.mChannelScheduler.stop();
                this.mSubscriptionChannelScheduler.stop();
                stopAllSyncHandler();
                this.mIsRunning = false;
                break;
            case 16:
                boolean booleanValue = ((Boolean) message.obj).booleanValue();
                IMSLog.i(this.TAG, "handleMessage: EVENT_MCS_RESUME_CMN_NETAPI: resume isTokenRefresh:" + booleanValue);
                this.mIsFallbackProvisionInProcess = this.mStoreClient.getProvisionStatus() ^ true;
                this.mIsRunning = true;
                if (booleanValue) {
                    resumeMcsAfterTokenRefresh();
                } else {
                    this.mChannelScheduler.resume();
                }
                resumeAllSyncHandler();
                break;
            case 17:
                IMSLog.i(this.TAG, "handleMessage: EVENT_MCS_PAUSE_CMN_NETAPI: pause");
                this.mIsRunning = false;
                this.mChannelScheduler.pause();
                pauseAllSyncHandler();
                break;
            case 18:
                IMSLog.i(this.TAG, "handleMessage: EVENT_CHECK_SUBSCRIPTION_CHANNEL: update");
                this.mSubscriptionChannelScheduler.update(OMASyncEventType.CHECK_SUBSCRIPTION_CHANNEL.getId());
                break;
            case 19:
                boolean booleanValue2 = ((Boolean) message.obj).booleanValue();
                IMSLog.i(this.TAG, "handleMessage: EVENT_UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED: update success:" + booleanValue2);
                if (!booleanValue2) {
                    this.mIWorkingStatusProvisionListener.onChannelLifetimeUpdateComplete();
                    break;
                } else {
                    this.mSubscriptionChannelScheduler.update(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL.getId());
                    break;
                }
            case 20:
                this.mIWorkingStatusProvisionListener.onStartFcmRetry();
                break;
        }
    }

    private void resumeControllerOfLastFailedApi(IControllerCommonInterface iControllerCommonInterface, final ParamNetAPIStatusControl paramNetAPIStatusControl) {
        iControllerCommonInterface.setOnApiSucceedOnceListener(new OnApiSucceedOnceListener() { // from class: com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler.3
            @Override // com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler.OnApiSucceedOnceListener
            public void onMoveOn() {
                Log.i(OMANetAPIHandler.this.TAG, "Last failed API succeed, resume all handlers");
                OMANetAPIHandler.this.resumeHandlers(paramNetAPIStatusControl);
            }
        });
        iControllerCommonInterface.resume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resumeHandlers(ParamNetAPIStatusControl paramNetAPIStatusControl) {
        Log.i(this.TAG, "resumeHandlers mIsMsgAppForeground: " + paramNetAPIStatusControl.mIsMsgAppForeground + " isPollingAllowed: " + this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed() + " mIsNetworkValid: " + paramNetAPIStatusControl.mIsNetworkValid);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed() && paramNetAPIStatusControl.mIsMsgAppForeground) {
            this.mChannelScheduler.resume();
        }
        if (paramNetAPIStatusControl.mIsNetworkValid) {
            resumeAllSyncHandler();
        }
    }

    public void onLineSITRefreshed(String str) {
        Log.i(this.TAG, "onLineSITRefreshed : " + IMSLog.checker(str));
        if (TextUtils.isEmpty(str)) {
            return;
        }
        resumeAllSyncHandlerByLine(str);
    }

    private void resumeAllSyncHandlerByLine(String str) {
        Iterator<BaseSyncHandler> it = this.mSyncHandlerFactory.getAllSyncHandlerInstancesByLine(str).iterator();
        while (it.hasNext()) {
            it.next().resume();
        }
        Iterator<BaseDataChangeHandler> it2 = this.mSyncHandlerFactory.getAllDataChangeHandlerInstancesByLine(str).iterator();
        while (it2.hasNext()) {
            it2.next().resume();
        }
        Iterator<BaseDeviceDataUpdateHandler> it3 = this.mSyncHandlerFactory.getAllDeviceDataUpdateHandlerInstancesByLine(str).iterator();
        while (it3.hasNext()) {
            it3.next().resume();
        }
    }

    private void startAllSyncHandler() {
        Iterator<BaseSyncHandler> it = this.mSyncHandlerFactory.getAllSyncHandlerInstances().iterator();
        while (it.hasNext()) {
            it.next().start();
        }
        Iterator<BaseDataChangeHandler> it2 = this.mSyncHandlerFactory.getAllDataChangeHandlerInstances().iterator();
        while (it2.hasNext()) {
            it2.next().start();
        }
        Iterator<BaseDeviceDataUpdateHandler> it3 = this.mSyncHandlerFactory.getAllDeviceDataUpdateHandlerInstances().iterator();
        while (it3.hasNext()) {
            it3.next().start();
        }
    }

    private void resumeAllSyncHandler() {
        Iterator<BaseSyncHandler> it = this.mSyncHandlerFactory.getAllSyncHandlerInstances().iterator();
        while (it.hasNext()) {
            it.next().resume();
        }
        Iterator<BaseDataChangeHandler> it2 = this.mSyncHandlerFactory.getAllDataChangeHandlerInstances().iterator();
        while (it2.hasNext()) {
            it2.next().resume();
        }
        Iterator<BaseDeviceDataUpdateHandler> it3 = this.mSyncHandlerFactory.getAllDeviceDataUpdateHandlerInstances().iterator();
        while (it3.hasNext()) {
            it3.next().resume();
        }
    }

    private void stopAllSyncHandler() {
        Iterator<BaseSyncHandler> it = this.mSyncHandlerFactory.getAllSyncHandlerInstances().iterator();
        while (it.hasNext()) {
            it.next().stop();
        }
        this.mSyncHandlerFactory.clearAllSyncHandlerInstances();
        Iterator<BaseDataChangeHandler> it2 = this.mSyncHandlerFactory.getAllDataChangeHandlerInstances().iterator();
        while (it2.hasNext()) {
            it2.next().stop();
        }
        this.mSyncHandlerFactory.clearAllDataChangeHandlerInstances();
        Iterator<BaseDeviceDataUpdateHandler> it3 = this.mSyncHandlerFactory.getAllDeviceDataUpdateHandlerInstances().iterator();
        while (it3.hasNext()) {
            it3.next().stop();
        }
        this.mSyncHandlerFactory.clearAllDeviceDataUpdateHandlerInstances();
    }

    private void pauseAllSyncHandler() {
        Iterator<BaseSyncHandler> it = this.mSyncHandlerFactory.getAllSyncHandlerInstances().iterator();
        while (it.hasNext()) {
            it.next().pause();
        }
        Iterator<BaseDataChangeHandler> it2 = this.mSyncHandlerFactory.getAllDataChangeHandlerInstances().iterator();
        while (it2.hasNext()) {
            it2.next().pause();
        }
        Iterator<BaseDeviceDataUpdateHandler> it3 = this.mSyncHandlerFactory.getAllDeviceDataUpdateHandlerInstances().iterator();
        while (it3.hasNext()) {
            it3.next().pause();
        }
    }

    private void sendDeviceUpdateToHandlers(BufferDBChangeParamList bufferDBChangeParamList) {
        Log.i(this.TAG, "sendDeviceUpdateToHandlers: " + bufferDBChangeParamList);
        BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
        BufferDBChangeParamList bufferDBChangeParamList3 = new BufferDBChangeParamList();
        Iterator<BufferDBChangeParam> it = bufferDBChangeParamList.mChangelst.iterator();
        while (it.hasNext()) {
            BufferDBChangeParam next = it.next();
            int i = next.mDBIndex;
            if (i == 1 || i == 10 || i == 13 || i == 3 || i == 4) {
                bufferDBChangeParamList2.mChangelst.add(next);
            } else if (i == 17 || i == 18) {
                bufferDBChangeParamList3.mChangelst.add(next);
            }
        }
        if (bufferDBChangeParamList2.mChangelst.size() > 0) {
            String str = bufferDBChangeParamList2.mChangelst.get(0).mLine;
            Log.i(this.TAG, "sendDeviceUpdateToHandlers get handler : " + IMSLog.checker(str) + " type = msg");
            BaseDeviceDataUpdateHandler deviceDataUpdateHandlerInstance = this.mSyncHandlerFactory.getDeviceDataUpdateHandlerInstance(new SyncParam(str, SyncMsgType.MESSAGE));
            if (deviceDataUpdateHandlerInstance != null) {
                deviceDataUpdateHandlerInstance.appendToWorkingQueue(bufferDBChangeParamList2);
                resumeSingleHandler(deviceDataUpdateHandlerInstance);
            }
        }
        if (bufferDBChangeParamList3.mChangelst.size() > 0) {
            String str2 = bufferDBChangeParamList3.mChangelst.get(0).mLine;
            Log.i(this.TAG, "sendDeviceUpdateToHandlers get handler : " + IMSLog.checker(str2) + " type = vvm");
            BaseDeviceDataUpdateHandler deviceDataUpdateHandlerInstance2 = this.mSyncHandlerFactory.getDeviceDataUpdateHandlerInstance(new SyncParam(str2, SyncMsgType.VM));
            if (deviceDataUpdateHandlerInstance2 != null) {
                deviceDataUpdateHandlerInstance2.appendToWorkingQueue(bufferDBChangeParamList3);
                resumeSingleHandler(deviceDataUpdateHandlerInstance2);
            }
        }
    }

    private void sendDownloadToDataChangeHandlers(BufferDBChangeParamList bufferDBChangeParamList) {
        BaseDataChangeHandler dataChangeHandlerInstance;
        Log.i(this.TAG, "sendDownloadToDataChangeHandlers : " + bufferDBChangeParamList);
        Iterator<BufferDBChangeParam> it = bufferDBChangeParamList.mChangelst.iterator();
        BaseDataChangeHandler baseDataChangeHandler = null;
        while (it.hasNext()) {
            BufferDBChangeParam next = it.next();
            String str = next.mLine;
            int i = next.mDBIndex;
            if (i == 1 || i == 13 || i == 38 || i == 3 || i == 4) {
                dataChangeHandlerInstance = this.mSyncHandlerFactory.getDataChangeHandlerInstance(new SyncParam(str, SyncMsgType.MESSAGE));
                if (dataChangeHandlerInstance != null) {
                    dataChangeHandlerInstance.appendToWorkingQueue(next);
                }
            } else if (i == 17) {
                dataChangeHandlerInstance = this.mSyncHandlerFactory.getDataChangeHandlerInstance(new SyncParam(str, SyncMsgType.VM));
                if (dataChangeHandlerInstance != null) {
                    dataChangeHandlerInstance.appendToWorkingQueue(next);
                }
            } else if (i == 18) {
                dataChangeHandlerInstance = this.mSyncHandlerFactory.getDataChangeHandlerInstance(new SyncParam(str, SyncMsgType.VM_GREETINGS));
                if (dataChangeHandlerInstance != null) {
                    dataChangeHandlerInstance.appendToWorkingQueue(next);
                }
            } else {
                dataChangeHandlerInstance = this.mSyncHandlerFactory.getDataChangeHandlerInstance(new SyncParam(str, SyncMsgType.MESSAGE));
                if (dataChangeHandlerInstance != null) {
                    dataChangeHandlerInstance.appendToWorkingQueue(next);
                }
            }
            baseDataChangeHandler = dataChangeHandlerInstance;
        }
        resumeSingleHandler(baseDataChangeHandler);
    }

    private void sendDownloadToHandlers(BufferDBChangeParamList bufferDBChangeParamList) {
        sendToHandlerInternal(bufferDBChangeParamList, BaseSyncHandler.SyncOperation.DOWNLOAD);
    }

    private void sendToHandlerInternal(BufferDBChangeParamList bufferDBChangeParamList, BaseSyncHandler.SyncOperation syncOperation) {
        SyncMsgType syncMsgType;
        BaseSyncHandler syncHandlerInstance;
        Log.i(this.TAG, "sendToHandlerInternal: " + bufferDBChangeParamList + ", operation: " + syncOperation);
        BufferDBChangeParamList bufferDBChangeParamList2 = new BufferDBChangeParamList();
        Iterator<BufferDBChangeParam> it = bufferDBChangeParamList.mChangelst.iterator();
        while (true) {
            BaseSyncHandler baseSyncHandler = null;
            while (it.hasNext()) {
                BufferDBChangeParam next = it.next();
                String str = next.mLine;
                int i = next.mDBIndex;
                if (i == 0) {
                    notifyOperationsComplete(null, syncOperation, next, null, false);
                    return;
                }
                if (i == 1 || i == 3 || i == 4 || i == 10 || i == 12 || i == 13) {
                    if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isEnableFolderIdInSearch()) {
                        syncMsgType = SyncMsgType.MESSAGE;
                    } else {
                        syncMsgType = SyncMsgType.DEFAULT;
                    }
                    SyncMsgType syncMsgType2 = syncMsgType;
                    syncHandlerInstance = this.mSyncHandlerFactory.getSyncHandlerInstance(new SyncParam(str, SyncMsgType.MESSAGE));
                    if (next.mRowId == 0) {
                        if (BaseSyncHandler.SyncOperation.UPLOAD.equals(syncOperation) && this.mIsCmsMcsEnabled) {
                            syncHandlerInstance.onGoToEvent(OMASyncEventType.OBJECT_END_UPLOAD.getId(), null);
                        } else {
                            notifyOperationsComplete(syncHandlerInstance, syncOperation, next, syncMsgType2, syncHandlerInstance.getIsFullSyncParam());
                        }
                    } else {
                        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkCreationEnabled() && BaseSyncHandler.SyncOperation.UPLOAD.equals(syncOperation)) {
                            bufferDBChangeParamList2.mChangelst.add(next);
                        } else {
                            syncHandlerInstance.appendToWorkingQueue(next, syncOperation);
                        }
                        baseSyncHandler = syncHandlerInstance;
                    }
                } else if (i == 17) {
                    SyncMsgType syncMsgType3 = SyncMsgType.VM;
                    syncHandlerInstance = this.mSyncHandlerFactory.getSyncHandlerInstance(new SyncParam(str, syncMsgType3));
                    if (next.mRowId == 0) {
                        notifyOperationsComplete(syncHandlerInstance, syncOperation, next, syncMsgType3, syncHandlerInstance.getIsFullSyncParam());
                    } else {
                        syncHandlerInstance.appendToWorkingQueue(next, syncOperation);
                        baseSyncHandler = syncHandlerInstance;
                    }
                } else if (i == 18) {
                    SyncMsgType syncMsgType4 = SyncMsgType.VM_GREETINGS;
                    syncHandlerInstance = this.mSyncHandlerFactory.getSyncHandlerInstance(new SyncParam(str, syncMsgType4));
                    if (next.mRowId == 0) {
                        notifyOperationsComplete(syncHandlerInstance, syncOperation, next, syncMsgType4, syncHandlerInstance.getIsFullSyncParam());
                    } else {
                        syncHandlerInstance.appendToWorkingQueue(next, syncOperation);
                        baseSyncHandler = syncHandlerInstance;
                    }
                } else {
                    baseSyncHandler = this.mSyncHandlerFactory.getSyncHandlerInstance(new SyncParam(str, SyncMsgType.MESSAGE));
                    baseSyncHandler.appendToWorkingQueue(next, syncOperation);
                }
            }
            if (isHandleAppendToWorkingQueue(baseSyncHandler, syncOperation, bufferDBChangeParamList2)) {
                baseSyncHandler.appendToWorkingQueue(bufferDBChangeParamList2, BaseSyncHandler.SyncOperation.BULK_UPLOAD);
            }
            resumeSingleHandler(baseSyncHandler);
            return;
        }
    }

    private boolean isHandleAppendToWorkingQueue(BaseSyncHandler baseSyncHandler, BaseSyncHandler.SyncOperation syncOperation, BufferDBChangeParamList bufferDBChangeParamList) {
        return this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isBulkCreationEnabled() && baseSyncHandler != null && BaseSyncHandler.SyncOperation.UPLOAD.equals(syncOperation) && !bufferDBChangeParamList.mChangelst.isEmpty();
    }

    private void resumeSingleHandler(Handler handler) {
        Log.i(this.TAG, "resumeSingleHandler , isRunning: " + this.mIsRunning);
        if (handler != null) {
            if (!this.mStoreClient.getCloudMessageStrategyManager().getStrategy().shouldStopSendingAPIwhenNetworklost() || this.mIsRunning) {
                Message obtain = Message.obtain();
                obtain.what = OMASyncEventType.TRANSIT_TO_RESUME.getId();
                handler.sendMessage(obtain);
            }
        }
    }

    private void notifyOperationsComplete(BaseSyncHandler baseSyncHandler, BaseSyncHandler.SyncOperation syncOperation, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, boolean z) {
        Log.i(this.TAG, "notifyOperationsComplete operation: " + syncOperation);
        if (BaseSyncHandler.SyncOperation.DOWNLOAD.equals(syncOperation)) {
            onMessageDownloadCompleted(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.MESSAGE_DOWNLOAD_COMPLETE).setSyncType(syncMsgType).setLine(bufferDBChangeParam.mLine).build());
            if (CmsUtil.isMcsSupported(this.mContext, this.mPhoneId)) {
                processInitSyncComplete(baseSyncHandler, bufferDBChangeParam.mLine, syncMsgType, z);
                return;
            }
            return;
        }
        if (BaseSyncHandler.SyncOperation.UPLOAD.equals(syncOperation)) {
            if (CmsUtil.isMcsSupported(this.mContext, this.mPhoneId)) {
                onMessageUploadCompleted(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.MESSAGE_UPLOAD_COMPLETE).setSyncType(syncMsgType).setLine(bufferDBChangeParam.mLine).build());
            } else {
                processInitSyncComplete(baseSyncHandler, bufferDBChangeParam.mLine, syncMsgType, z);
            }
        }
    }

    private void processInitSyncComplete(BaseSyncHandler baseSyncHandler, String str, SyncMsgType syncMsgType, boolean z) {
        onInitSyncCompleted(new ParamOMAresponseforBufDB.Builder().setLine(str).setSyncType(syncMsgType).setActionType(ParamOMAresponseforBufDB.ActionType.INIT_SYNC_COMPLETE).setIsFullSync(z).setOMASyncEventType(OMASyncEventType.INITIAL_SYNC_COMPLETE).setMStoreClient(this.mStoreClient).build());
        if (baseSyncHandler != null) {
            baseSyncHandler.setInitSyncComplete();
        }
    }

    private void sendUploadToHandlers(BufferDBChangeParamList bufferDBChangeParamList) {
        sendToHandlerInternal(bufferDBChangeParamList, BaseSyncHandler.SyncOperation.UPLOAD);
    }

    public void sendAppSync(SyncParam syncParam, boolean z) {
        this.mSyncFailNotifyReq = false;
        BaseSyncHandler syncHandlerInstance = this.mSyncHandlerFactory.getSyncHandlerInstance(syncParam, z);
        syncHandlerInstance.setIsFullSyncParam(z);
        syncHandlerInstance.start();
    }

    public void sendAppSyncResetBox(SyncParam syncParam) {
        BaseSyncHandler syncHandlerInstance = this.mSyncHandlerFactory.getSyncHandlerInstance(syncParam);
        syncHandlerInstance.resetSearchParam();
        syncHandlerInstance.start();
    }

    public void stopAppSync(SyncParam syncParam) {
        this.mSyncHandlerFactory.getSyncHandlerInstance(syncParam).stop();
    }

    public void sendUpdate(BufferDBChangeParamList bufferDBChangeParamList) {
        Message obtainMessage = obtainMessage(5);
        obtainMessage.obj = bufferDBChangeParamList;
        sendMessage(obtainMessage);
    }

    public void sendInitialSyncDownload(BufferDBChangeParamList bufferDBChangeParamList) {
        Message obtainMessage = obtainMessage(7);
        obtainMessage.obj = bufferDBChangeParamList;
        sendMessage(obtainMessage);
    }

    public void sendNormalSyncDownload(BufferDBChangeParamList bufferDBChangeParamList) {
        Message obtainMessage = obtainMessage(9);
        obtainMessage.obj = bufferDBChangeParamList;
        sendMessage(obtainMessage);
    }

    public void sendUpload(BufferDBChangeParamList bufferDBChangeParamList) {
        Message obtainMessage = obtainMessage(8);
        obtainMessage.obj = bufferDBChangeParamList;
        sendMessage(obtainMessage);
    }

    private void notifyBufferDB(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        if (paramOMAresponseforBufDB == null) {
            Log.e(this.TAG, "notifyBufferDB ParamOMAresponseforBufDB is null");
        }
        this.mUpdateFromCloudRegistrants.notifyRegistrants(new AsyncResult(null, paramOMAresponseforBufDB, null));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        sendEmptyMessage(1);
    }

    public void start_resetBox() {
        sendEmptyMessage(10);
    }

    public void startforMcs() {
        sendEmptyMessage(14);
    }

    public void pauseMcsForDeregi() {
        this.mChannelScheduler.updateMessage(obtainMessage(OMASyncEventType.PAUSE_ON_DEREGISTRATION.getId(), Boolean.FALSE));
        this.mSubscriptionChannelScheduler.stop();
    }

    public void resumeMcsAfterTokenRefresh() {
        this.mChannelScheduler.updateMessage(obtainMessage(OMASyncEventType.RESUME_ON_FCM_TOKEN_REFRESH.getId(), Boolean.FALSE));
    }

    public void pausewithStatusParam(ParamNetAPIStatusControl paramNetAPIStatusControl) {
        Log.i(this.TAG, "pausewithStatusParam: " + paramNetAPIStatusControl);
        Message obtainMessage = obtainMessage(11);
        obtainMessage.obj = paramNetAPIStatusControl;
        sendMessage(obtainMessage);
    }

    public void pauseforMcs() {
        sendEmptyMessage(17);
    }

    public void resumewithStatusParam(ParamNetAPIStatusControl paramNetAPIStatusControl) {
        Log.i(this.TAG, "resumewithStatusParam: " + paramNetAPIStatusControl);
        Message obtainMessage = obtainMessage(12);
        obtainMessage.obj = paramNetAPIStatusControl;
        sendMessage(obtainMessage);
    }

    public void resumeforMcs(boolean z) {
        Log.i(this.TAG, "resumeforMcs isTokenRefresh: " + z);
        Message obtainMessage = obtainMessage(16);
        obtainMessage.obj = Boolean.valueOf(z);
        sendMessage(obtainMessage);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void stop() {
        sendEmptyMessage(4);
    }

    public void stopforMcs() {
        sendEmptyMessage(15);
    }

    public void onWipeOutResetSyncHandler() {
        this.mSyncFailNotifyReq = true;
        stop();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onInitUploadStarted(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onDeviceFlagUpdateSchedulerStarted() {
        this.mIWorkingStatusProvisionListener.onDeviceFlagUpdateSchedulerStarted();
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onInitSyncCompleted(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Log.i(this.TAG, "onInitSyncCompleted getUserTbs: " + this.mStoreClient.getPrerenceManager().getUserTbs());
        if (this.mStoreClient.getPrerenceManager().getUserTbs()) {
            this.mIWorkingStatusProvisionListener.onInitialDBSyncCompleted();
        }
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onInitSyncSummaryCompleted(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onCloudSyncStopped(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onSyncFailed(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        Log.i(this.TAG, "onSyncFailed mSyncFailNotifyReq: " + this.mSyncFailNotifyReq);
        if (this.mSyncFailNotifyReq) {
            return;
        }
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onMessageDownloadCompleted(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onMessageUploadCompleted(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onOneMessageDownloaded(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onOneMessageUploaded(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onCloudObjectNotificationUpdated(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onPartialSyncSummaryCompleted(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onNotificationObjectDownloaded(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onOmaAuthenticationFailed(ParamOMAresponseforBufDB paramOMAresponseforBufDB, long j) {
        this.mIWorkingStatusProvisionListener.onOmaProvisionFailed(paramOMAresponseforBufDB, j);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onOneDeviceFlagUpdated(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onDeviceFlagUpdateCompleted(ParamOMAresponseforBufDB paramOMAresponseforBufDB) {
        notifyBufferDB(paramOMAresponseforBufDB);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean update(int i) {
        IMSLog.i(this.TAG, "update: eventType: " + i);
        return sendEmptyMessage(i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelay(int i, long j) {
        return sendEmptyMessageDelayed(i, j);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateMessage(Message message) {
        sendMessage(message);
        return true;
    }

    public void deleteNotificationSubscriptionResource() {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isPollingAllowed()) {
            this.mChannelScheduler.update(OMASyncEventType.DELETE_NOTIFICATION_SUBSCRIPTION_RESOURCE.getId());
        }
    }

    public void deleteNotificationForDMAChange() {
        Log.i(this.TAG, "deleteNotificationForDMAChange");
        ChannelDeleteData channelDeleteData = new ChannelDeleteData();
        channelDeleteData.deleteReason = McsConstants.ChannelDeleteReason.NONDMA;
        channelDeleteData.isNeedRecreateChannel = false;
        channelDeleteData.channelUrl = this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
        Message obtainMessage = obtainMessage(OMASyncEventType.DELETE_NOTIFICATION_CHANNEL.getId(), channelDeleteData);
        Log.i(this.TAG, "deleteNotificationForDMAChange: updateMessage: channelDeleteData.channelUrl: " + channelDeleteData.channelUrl + " channelDeleteData.deleteReason: " + channelDeleteData.deleteReason + " channelDeleteData.isNeedRecreateChannel: " + channelDeleteData.isNeedRecreateChannel);
        this.mChannelScheduler.updateMessage(obtainMessage);
    }

    public void onPauseCMNNetApi() {
        if (this.mIsCmsMcsEnabled) {
            sendEmptyMessage(17);
        } else {
            sendEmptyMessage(3);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onPauseCMNNetApiWithResumeDelay(int i) {
        Log.i(this.TAG, "pause all net API, resume all " + i + " seconds later");
        removeMessages(2);
        sendEmptyMessage(3);
        sendEmptyMessageDelayed(2, ((long) i) * 1000);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onFallbackToProvision(IControllerCommonInterface iControllerCommonInterface, IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
        String str = this.TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("check fallback to provision: ");
        sb.append(this.mIsFallbackProvisionInProcess ? "provision is in process, wait until next resume" : "");
        Log.i(str, sb.toString());
        if (this.mIsCmsMcsEnabled) {
            pauseMcsForDeregi();
        }
        onPauseCMNNetApi();
        if (this.mIsFallbackProvisionInProcess) {
            return;
        }
        this.mIsFallbackProvisionInProcess = true;
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().onOmaApiCredentialFailed(iControllerCommonInterface, this, iHttpAPICommonInterface, i);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onOmaSuccess(IHttpAPICommonInterface iHttpAPICommonInterface) {
        this.mStoreClient.getCloudMessageStrategyManager().getStrategy().onOmaSuccess(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onOmaFailExceedMaxCount() {
        this.mIWorkingStatusProvisionListener.onOmaFailExceedMaxCount();
    }

    protected void logWorkingStatus() {
        Log.i(this.TAG, "logWorkingStatus: [mIsRunning: " + this.mIsRunning + " mIsFallbackProvisionInProcess: " + this.mIsFallbackProvisionInProcess + "]");
    }

    public void updateDelayedSubscriptionChannel() {
        if (this.mIsCmsMcsEnabled) {
            this.mSubscriptionChannelScheduler.updateDelay(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL_DELAY.getId(), SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF);
        } else {
            this.mChannelScheduler.updateDelay(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL_DELAY.getId(), SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF);
        }
    }

    public void updateSubscriptionChannel() {
        this.mChannelScheduler.updateDelay(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL.getId(), SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF);
    }

    public void removeUpdateSubscriptionChannelEvent() {
        if (this.mIsCmsMcsEnabled) {
            this.mSubscriptionChannelScheduler.update(OMASyncEventType.REMOVE_UPDATE_SUBSCRIPTION_CHANNEL.getId());
        } else {
            this.mChannelScheduler.update(OMASyncEventType.REMOVE_UPDATE_SUBSCRIPTION_CHANNEL.getId());
        }
    }

    public void handleLargeDataPolling() {
        String oMAChannelURL = this.mStoreClient.getPrerenceManager().getOMAChannelURL();
        Log.d(this.TAG, "handleLargeDataPolling " + oMAChannelURL);
        this.mChannelScheduler.updateMessage(obtainMessage(OMASyncEventType.SEND_LARGE_DATA_POLLING_REQUEST.getId(), oMAChannelURL));
    }

    private void stopInitSyncAsComplete() {
        String userTelCtn = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        SyncHandlerFactory syncHandlerFactory = this.mSyncHandlerFactory;
        SyncMsgType syncMsgType = SyncMsgType.DEFAULT;
        processInitSyncComplete(syncHandlerFactory.getSyncHandlerInstance(new SyncParam(userTelCtn, syncMsgType)), userTelCtn, syncMsgType, false);
    }

    public void resetChannelState() {
        this.mChannelScheduler.update(OMASyncEventType.RESET_STATE.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener
    public void onNormalSyncComplete(boolean z) {
        if (this.mIsCmsMcsEnabled) {
            return;
        }
        this.mIWorkingStatusProvisionListener.onVVMNormalSyncComplete(z);
    }
}
