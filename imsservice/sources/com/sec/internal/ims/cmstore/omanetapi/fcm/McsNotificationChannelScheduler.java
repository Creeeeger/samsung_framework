package com.sec.internal.ims.cmstore.omanetapi.fcm;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.callHandling.errorHandling.ErrorRuleHandling;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.nc.McsCreateNotificationChannel;
import com.sec.internal.ims.cmstore.omanetapi.nc.McsDeleteNotificationChannel;
import com.sec.internal.ims.cmstore.omanetapi.nc.McsGetNotificationChannelInfo;
import com.sec.internal.ims.cmstore.omanetapi.nc.McsGetNotificationChannelLifetime;
import com.sec.internal.ims.cmstore.omanetapi.nc.McsGetNotificationChannelListInfo;
import com.sec.internal.ims.cmstore.omanetapi.nc.McsUpdateNotificationChannelLifetime;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CloudMessagePreferenceManager;
import com.sec.internal.ims.cmstore.utils.CmsHttpController;
import com.sec.internal.ims.cmstore.utils.RetryParam;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.data.ChannelDeleteData;

/* loaded from: classes.dex */
public class McsNotificationChannelScheduler extends StateMachine implements IAPICallFlowListener, IControllerCommonInterface {
    private static final String INTENT_ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME = "com.samsung.ims.mcs.ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME";
    private static final String INTENT_ACTION_RETRY_FAILED_API = "com.samsung.ims.mcs.ACTION_RETRY_FAILED_API";
    private final int NO_RETRY_AFTER_VALUE;
    private String TAG;
    private State mChannelCheckingState;
    private State mChannelCreatedState;
    private State mChannelCreatingState;
    private PendingIntent mChannelLifeTimeExpiry;
    private Context mContext;
    private State mDefaultState;
    private INetAPIEventListener mINetAPIEventListener;
    private String mLine;
    private IControllerCommonInterface mNetApiController;
    private OMANetAPIHandler.OnApiSucceedOnceListener mOnApiSucceedOnceListener;
    private boolean mPaused;
    private int mPhoneId;
    private PendingIntent mRetryIntent;
    private MessageStoreClient mStoreClient;

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedEvent(int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlow(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlowWithMessage(Message message) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    public McsNotificationChannelScheduler(Looper looper, IControllerCommonInterface iControllerCommonInterface, INetAPIEventListener iNetAPIEventListener, MessageStoreClient messageStoreClient) {
        super("McsNotificationChannelScheduler[" + messageStoreClient.getClientID() + "]", looper);
        this.TAG = McsNotificationChannelScheduler.class.getSimpleName();
        this.mDefaultState = new DefaultState();
        this.mChannelCheckingState = new ChannelCheckingState();
        this.mChannelCreatingState = new ChannelCreatingState();
        this.mChannelCreatedState = new ChannelCreatedState();
        this.mOnApiSucceedOnceListener = null;
        this.mNetApiController = null;
        this.mINetAPIEventListener = null;
        this.mPaused = false;
        this.NO_RETRY_AFTER_VALUE = -1;
        this.mPhoneId = messageStoreClient.getClientID();
        this.TAG += "[" + this.mPhoneId + "]";
        this.mStoreClient = messageStoreClient;
        this.mNetApiController = iControllerCommonInterface;
        this.mINetAPIEventListener = iNetAPIEventListener;
        addState(this.mDefaultState);
        addState(this.mChannelCheckingState, this.mDefaultState);
        addState(this.mChannelCreatingState, this.mChannelCheckingState);
        addState(this.mChannelCreatedState, this.mChannelCreatingState);
        setInitialState(this.mDefaultState);
        this.mContext = this.mStoreClient.getContext();
        this.mLine = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME);
        intentFilter.addAction(INTENT_ACTION_RETRY_FAILED_API);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.omanetapi.fcm.McsNotificationChannelScheduler.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                IMSLog.i(McsNotificationChannelScheduler.this.TAG, "onReceive: " + intent.getAction());
                int intExtra = intent.getIntExtra("phoneId", -1);
                if (intExtra == McsNotificationChannelScheduler.this.mPhoneId) {
                    String action = intent.getAction();
                    action.hashCode();
                    if (action.equals(McsNotificationChannelScheduler.INTENT_ACTION_RETRY_FAILED_API)) {
                        RetryParam retryParam = McsNotificationChannelScheduler.this.mStoreClient.getMcsRetryMapAdapter().getRetryParam(intent.getStringExtra("apiName"));
                        if (retryParam != null) {
                            McsNotificationChannelScheduler.this.sendMessage(OMASyncEventType.API_FAILED.getId(), retryParam.getMrequest());
                            return;
                        }
                        return;
                    }
                    if (action.equals(McsNotificationChannelScheduler.INTENT_ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME)) {
                        EventLogHelper.add(McsNotificationChannelScheduler.this.TAG, intExtra, "onReceive: INTENT_ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME");
                        IMSLog.c(LogClass.MCS_NC_LIFETIME_EXPIRY, McsNotificationChannelScheduler.this.mPhoneId + ",NC:LT_EX");
                        McsNotificationChannelScheduler.this.sendMessage(OMASyncEventType.CHECK_NOTIFICATION_CHANNEL_LIFETIME.getId());
                    }
                }
            }
        }, intentFilter);
        super.start();
    }

    OMASyncEventType InitEvent(Message message) {
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        return valueOf != null ? valueOf : OMASyncEventType.DEFAULT;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        gotoHandlerEvent(OMASyncEventType.API_SUCCEED.getId(), iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        if (iHttpAPICommonInterface instanceof McsDeleteNotificationChannel) {
            removeChannelLifeTimeEvent();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeChannelLifeTimeEvent() {
        IMSLog.i(this.TAG, "removeChannelLifeTimeEvent mChannelLifeTimeExpiry: " + this.mChannelLifeTimeExpiry);
        PendingIntent pendingIntent = this.mChannelLifeTimeExpiry;
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mChannelLifeTimeExpiry = null;
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
        if (iHttpAPICommonInterface instanceof McsDeleteNotificationChannel) {
            removeChannelLifeTimeEvent();
        }
        gotoHandlerEvent(OMASyncEventType.API_SUCCEED.getId(), iHttpAPICommonInterface);
        gotoHandlerEvent(i, obj);
    }

    private void gotoHandlerEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendMessage(i);
        }
    }

    private void gotoHandlerEventOnFailure(IHttpAPICommonInterface iHttpAPICommonInterface) {
        IMSLog.i(this.TAG, "gotoHandlerEventOnFailure isRetryEnabled: " + this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled());
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled()) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, -1);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        gotoHandlerEventOnFailure(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        String simpleName = iHttpAPICommonInterface.getClass().getSimpleName();
        IMSLog.i(this.TAG, "onFailedCall: " + simpleName + " errorCode " + str);
        boolean checkAndIncreaseRetry = this.mStoreClient.getMcsRetryMapAdapter().checkAndIncreaseRetry(iHttpAPICommonInterface, Integer.valueOf(str).intValue());
        int retryCount = this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(simpleName);
        if (checkAndIncreaseRetry) {
            if (retryCount == 1) {
                updateDelayRetryRequest(simpleName, 10000L);
                return;
            }
            if (retryCount == 2) {
                updateDelayRetryRequest(simpleName, 30000L);
                return;
            }
            if (retryCount == 3) {
                updateDelayRetryRequest(simpleName, SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF);
                return;
            }
            IMSLog.i(this.TAG, " onFailed Call retry count " + retryCount);
            if (simpleName.equalsIgnoreCase(McsCreateNotificationChannel.class.getSimpleName())) {
                handleChannelCreationRecovery(iHttpAPICommonInterface, simpleName, retryCount);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendMessage(i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        String simpleName = iHttpAPICommonInterface.getClass().getSimpleName();
        int retryCount = this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(simpleName);
        IMSLog.i(this.TAG, " OnOverRequest : request " + simpleName + "  error code " + str + "  retryAfter " + i);
        if (simpleName.equalsIgnoreCase(McsCreateNotificationChannel.class.getSimpleName()) && retryCount > 3) {
            EventLogHelper.infoLogAndAdd(this.TAG, this.mPhoneId, "onOverRequest: max retry limit of create NC reached");
            this.mStoreClient.getMcsRetryMapAdapter().remove(iHttpAPICommonInterface);
        } else {
            updateDelayRetryRequest(simpleName, i);
        }
    }

    private void handleChannelCreationRecovery(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        if (i >= 4 && i <= 9) {
            long pow = ((long) Math.pow(2.0d, i - 4)) * 60 * 60 * 1000;
            EventLogHelper.infoLogAndAdd(this.TAG, this.mPhoneId, "exponential backoff retry for create NC delay:" + pow);
            updateDelayRetryRequest(str, pow);
            return;
        }
        EventLogHelper.infoLogAndAdd(this.TAG, this.mPhoneId, "handleChannelCreationRecovery: max retry limit of create NC reached");
        this.mStoreClient.getMcsRetryMapAdapter().remove(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.helper.StateMachine, com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        sendMessage(OMASyncEventType.RESET_STATE.getId());
        sendMessage(OMASyncEventType.START.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void pause() {
        sendMessage(OMASyncEventType.RESET_STATE.getId());
        sendMessage(OMASyncEventType.PAUSE.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void resume() {
        if (this.mPaused) {
            sendMessage(OMASyncEventType.RESET_STATE.getId());
            sendMessage(OMASyncEventType.RESUME.getId());
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void stop() {
        sendMessage(OMASyncEventType.RESET_STATE.getId());
        sendMessage(OMASyncEventType.STOP.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean update(int i) {
        sendMessage(obtainMessage(i));
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateMessage(Message message) {
        sendMessage(message);
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelay(int i, long j) {
        if (i == OMASyncEventType.CHECK_NOTIFICATION_CHANNEL_LIFETIME.getId()) {
            PendingIntent pendingIntent = this.mChannelLifeTimeExpiry;
            if (pendingIntent != null) {
                AlarmTimer.stop(this.mContext, pendingIntent);
                this.mChannelLifeTimeExpiry = null;
            }
            Intent intent = new Intent(INTENT_ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME);
            intent.setPackage(this.mContext.getPackageName());
            intent.putExtra("phoneId", this.mPhoneId);
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
            this.mChannelLifeTimeExpiry = broadcast;
            AlarmTimer.start(this.mContext, broadcast, j, false);
            return true;
        }
        if (hasMessages(i)) {
            removeMessages(i);
        }
        sendMessageDelayed(obtainMessage(i), j);
        return true;
    }

    public void updateDelayRetryRequest(String str, long j) {
        removeRetryEvent();
        Intent intent = new Intent(INTENT_ACTION_RETRY_FAILED_API);
        intent.setPackage(this.mContext.getPackageName());
        intent.putExtra("phoneId", this.mPhoneId);
        intent.putExtra("apiName", str);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
        this.mRetryIntent = broadcast;
        AlarmTimer.start(this.mContext, broadcast, j, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeRetryEvent() {
        PendingIntent pendingIntent = this.mRetryIntent;
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mRetryIntent = null;
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void setOnApiSucceedOnceListener(OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener) {
        if (onApiSucceedOnceListener == null) {
            IMSLog.e(this.TAG, "setOnApiSucceedOnceListener: listener is null");
        } else {
            this.mOnApiSucceedOnceListener = onApiSucceedOnceListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onApiTreatAsSucceed() {
        IMSLog.i(this.TAG, "onApiTreatAsSucceed: mOnApiSucceedOnceListener: " + this.mOnApiSucceedOnceListener);
        OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener = this.mOnApiSucceedOnceListener;
        if (onApiSucceedOnceListener != null) {
            onApiSucceedOnceListener.onMoveOn();
        }
        this.mOnApiSucceedOnceListener = null;
    }

    private class DefaultState extends State {
        private DefaultState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "DefaultState: enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            String str;
            String str2;
            OMASyncEventType InitEvent = McsNotificationChannelScheduler.this.InitEvent(message);
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "DefaultState: processMessage: " + InitEvent);
            boolean z = false;
            switch (AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    McsNotificationChannelScheduler.this.removeRetryEvent();
                    McsNotificationChannelScheduler.this.sendMessage(OMASyncEventType.CHECK_NOTIFICATION_CHANNEL_LIST_INFO.getId());
                    McsNotificationChannelScheduler.this.mPaused = false;
                    return true;
                case 4:
                    if (McsNotificationChannelScheduler.this.mPaused) {
                        IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelScheduler already paused");
                        return true;
                    }
                    break;
                case 5:
                    break;
                case 6:
                    if (!McsNotificationChannelScheduler.this.mPaused) {
                        McsNotificationChannelScheduler.this.mPaused = true;
                        McsNotificationChannelScheduler.this.resetChannelData();
                    }
                    return true;
                case 7:
                    if (McsNotificationChannelScheduler.this.isAlreadyInRetry(McsGetNotificationChannelListInfo.class.getSimpleName())) {
                        McsNotificationChannelScheduler.this.removeRetryEvent();
                    }
                    CmsHttpController httpController = McsNotificationChannelScheduler.this.mStoreClient.getHttpController();
                    McsNotificationChannelScheduler mcsNotificationChannelScheduler = McsNotificationChannelScheduler.this;
                    httpController.execute(new McsGetNotificationChannelListInfo(mcsNotificationChannelScheduler, mcsNotificationChannelScheduler.mStoreClient));
                    McsNotificationChannelScheduler mcsNotificationChannelScheduler2 = McsNotificationChannelScheduler.this;
                    mcsNotificationChannelScheduler2.transitionTo(mcsNotificationChannelScheduler2.mChannelCheckingState);
                    return true;
                case 8:
                    String oMAChannelResURL = McsNotificationChannelScheduler.this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
                    if (!TextUtils.isEmpty(oMAChannelResURL)) {
                        String substring = oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf(47) + 1);
                        IMSLog.s(McsNotificationChannelScheduler.this.TAG, "DefaultState: processMessage: channelId: " + substring + " resUrl: " + oMAChannelResURL);
                        if (McsNotificationChannelScheduler.this.isAlreadyInRetry(McsGetNotificationChannelInfo.class.getSimpleName())) {
                            McsNotificationChannelScheduler.this.removeRetryEvent();
                        }
                        CmsHttpController httpController2 = McsNotificationChannelScheduler.this.mStoreClient.getHttpController();
                        McsNotificationChannelScheduler mcsNotificationChannelScheduler3 = McsNotificationChannelScheduler.this;
                        httpController2.execute(new McsGetNotificationChannelInfo(mcsNotificationChannelScheduler3, mcsNotificationChannelScheduler3, substring, mcsNotificationChannelScheduler3.mStoreClient));
                    }
                    return true;
                case 9:
                    Object obj = message.obj;
                    if (obj == null || !(obj instanceof ChannelDeleteData)) {
                        str = "";
                        str2 = McsConstants.ChannelDeleteReason.NORMAL;
                    } else {
                        ChannelDeleteData channelDeleteData = (ChannelDeleteData) obj;
                        str = channelDeleteData.channelUrl;
                        z = channelDeleteData.isNeedRecreateChannel;
                        str2 = channelDeleteData.deleteReason;
                    }
                    String str3 = str;
                    boolean z2 = z;
                    if (!TextUtils.isEmpty(str3)) {
                        String substring2 = str3.substring(str3.lastIndexOf(47) + 1);
                        IMSLog.s(McsNotificationChannelScheduler.this.TAG, "DefaultState: processMessage: channelId: " + substring2 + " resUrl: " + str3 + " isNeedRecreateChannel: " + z2);
                        if (McsNotificationChannelScheduler.this.isAlreadyInRetry(McsDeleteNotificationChannel.class.getSimpleName())) {
                            McsNotificationChannelScheduler.this.removeRetryEvent();
                        }
                        CmsHttpController httpController3 = McsNotificationChannelScheduler.this.mStoreClient.getHttpController();
                        McsNotificationChannelScheduler mcsNotificationChannelScheduler4 = McsNotificationChannelScheduler.this;
                        httpController3.execute(new McsDeleteNotificationChannel(mcsNotificationChannelScheduler4, mcsNotificationChannelScheduler4.mStoreClient, substring2, z2, str2, str3));
                    }
                    if (str2 == McsConstants.ChannelDeleteReason.NONDMA) {
                        IMSLog.i(McsNotificationChannelScheduler.this.TAG, "DMA change, move to default state and pause scheduler");
                        McsNotificationChannelScheduler.this.mPaused = true;
                        McsNotificationChannelScheduler mcsNotificationChannelScheduler5 = McsNotificationChannelScheduler.this;
                        mcsNotificationChannelScheduler5.transitionTo(mcsNotificationChannelScheduler5.mDefaultState);
                    }
                    return true;
                case 10:
                    IHttpAPICommonInterface iHttpAPICommonInterface = (IHttpAPICommonInterface) message.obj;
                    if (iHttpAPICommonInterface != null) {
                        McsNotificationChannelScheduler mcsNotificationChannelScheduler6 = McsNotificationChannelScheduler.this;
                        ErrorRuleHandling.handleMcsError(mcsNotificationChannelScheduler6, mcsNotificationChannelScheduler6.mStoreClient, iHttpAPICommonInterface);
                    }
                    return true;
                case 11:
                    ParamOMAresponseforBufDB build = new ParamOMAresponseforBufDB.Builder().setLine(McsNotificationChannelScheduler.this.mLine).build();
                    Object obj2 = message.obj;
                    McsNotificationChannelScheduler.this.mINetAPIEventListener.onOmaAuthenticationFailed(build, (obj2 == null || !(obj2 instanceof Number)) ? 0L : ((Number) obj2).longValue());
                    return true;
                case 12:
                    if (message.obj != null) {
                        McsNotificationChannelScheduler.this.onApiTreatAsSucceed();
                    }
                    return true;
                default:
                    IMSLog.i(McsNotificationChannelScheduler.this.TAG, "DefaultState: processMessage: unknown event");
                    return false;
            }
            McsNotificationChannelScheduler.this.mPaused = true;
            McsNotificationChannelScheduler.this.removeRetryEvent();
            String oMAChannelResURL2 = McsNotificationChannelScheduler.this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
            if (TextUtils.isEmpty(oMAChannelResURL2)) {
                IMSLog.e(McsNotificationChannelScheduler.this.TAG, "Empty url, do not process delete");
            } else {
                String substring3 = oMAChannelResURL2.substring(oMAChannelResURL2.lastIndexOf(47) + 1);
                IMSLog.s(McsNotificationChannelScheduler.this.TAG, "DefaultState: processMessage: channelId: " + substring3 + " resUrl: " + oMAChannelResURL2 + " isNeedRecreateChannel: false");
                if (McsNotificationChannelScheduler.this.isAlreadyInRetry(McsDeleteNotificationChannel.class.getSimpleName())) {
                    McsNotificationChannelScheduler.this.removeRetryEvent();
                }
                CmsHttpController httpController4 = McsNotificationChannelScheduler.this.mStoreClient.getHttpController();
                McsNotificationChannelScheduler mcsNotificationChannelScheduler7 = McsNotificationChannelScheduler.this;
                httpController4.execute(new McsDeleteNotificationChannel(mcsNotificationChannelScheduler7, mcsNotificationChannelScheduler7.mStoreClient, substring3, false, McsConstants.ChannelDeleteReason.NORMAL, oMAChannelResURL2));
            }
            return true;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "DefaultState: exit");
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.fcm.McsNotificationChannelScheduler$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;

        static {
            int[] iArr = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr;
            try {
                iArr[OMASyncEventType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.RESUME_ON_FCM_TOKEN_REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.STOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.PAUSE_ON_DEREGISTRATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CHECK_NOTIFICATION_CHANNEL_LIST_INFO.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CHECK_NOTIFICATION_CHANNEL_INFO.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_NOTIFICATION_CHANNEL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_FAILED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREDENTIAL_EXPIRED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_SUCCEED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.RESET_STATE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_NOTIFICATION_CHANNEL_FINISHED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CHECK_NOTIFICATION_CHANNEL_LIFETIME.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_NOTIFICATION_CHANNEL_LIFETIME.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    private class ChannelCheckingState extends State {
        private ChannelCheckingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCheckingState: enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = McsNotificationChannelScheduler.this.InitEvent(message);
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCheckingState: processMessage: " + InitEvent);
            int i = AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            if (i == 13) {
                McsNotificationChannelScheduler.this.removeChannelLifeTimeEvent();
                McsNotificationChannelScheduler mcsNotificationChannelScheduler = McsNotificationChannelScheduler.this;
                mcsNotificationChannelScheduler.transitionTo(mcsNotificationChannelScheduler.mDefaultState);
            } else if (i == 14) {
                String fcmRegistrationToken = McsNotificationChannelScheduler.this.mStoreClient.getPrerenceManager().getFcmRegistrationToken();
                if (TextUtils.isEmpty(fcmRegistrationToken)) {
                    EventLogHelper.infoLogAndAdd(McsNotificationChannelScheduler.this.TAG, McsNotificationChannelScheduler.this.mPhoneId, "fcm registration token is empty wait for token");
                    McsNotificationChannelScheduler.this.mNetApiController.update(20);
                    McsNotificationChannelScheduler mcsNotificationChannelScheduler2 = McsNotificationChannelScheduler.this;
                    mcsNotificationChannelScheduler2.transitionTo(mcsNotificationChannelScheduler2.mDefaultState);
                } else if (McsNotificationChannelScheduler.this.isAlreadyInRetry(McsCreateNotificationChannel.class.getSimpleName())) {
                    McsNotificationChannelScheduler.this.removeRetryEvent();
                }
                CmsHttpController httpController = McsNotificationChannelScheduler.this.mStoreClient.getHttpController();
                McsNotificationChannelScheduler mcsNotificationChannelScheduler3 = McsNotificationChannelScheduler.this;
                httpController.execute(new McsCreateNotificationChannel(mcsNotificationChannelScheduler3, mcsNotificationChannelScheduler3, fcmRegistrationToken, mcsNotificationChannelScheduler3.mStoreClient));
                McsNotificationChannelScheduler mcsNotificationChannelScheduler4 = McsNotificationChannelScheduler.this;
                mcsNotificationChannelScheduler4.transitionTo(mcsNotificationChannelScheduler4.mChannelCreatingState);
            } else {
                IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCheckingState: processMessage: unknown event");
                return false;
            }
            return true;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCheckingState: exit");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAlreadyInRetry(String str) {
        return this.mStoreClient.getMcsRetryMapAdapter() != null && this.mStoreClient.getMcsRetryMapAdapter().isAlreadyInRetry(str);
    }

    private class ChannelCreatingState extends State {
        private ChannelCreatingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatingState: enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = McsNotificationChannelScheduler.this.InitEvent(message);
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatingState: processMessage: " + InitEvent);
            int i = AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            if (i == 13) {
                McsNotificationChannelScheduler.this.removeChannelLifeTimeEvent();
                McsNotificationChannelScheduler mcsNotificationChannelScheduler = McsNotificationChannelScheduler.this;
                mcsNotificationChannelScheduler.transitionTo(mcsNotificationChannelScheduler.mDefaultState);
            } else if (i == 15) {
                IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatingState: processMessage: update EVENT_CHECK_SUBSCRIPTION_CHANNEL");
                McsNotificationChannelScheduler.this.mNetApiController.update(18);
                McsNotificationChannelScheduler mcsNotificationChannelScheduler2 = McsNotificationChannelScheduler.this;
                mcsNotificationChannelScheduler2.transitionTo(mcsNotificationChannelScheduler2.mChannelCreatedState);
            } else {
                IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatingState: processMessage: unknown event");
                return false;
            }
            return true;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatingState: exit");
        }
    }

    private class ChannelCreatedState extends State {
        private ChannelCreatedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatedState: enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = McsNotificationChannelScheduler.this.InitEvent(message);
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatedState: processMessage: " + InitEvent);
            int i = AnonymousClass2.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            if (i == 13) {
                McsNotificationChannelScheduler.this.removeChannelLifeTimeEvent();
                McsNotificationChannelScheduler mcsNotificationChannelScheduler = McsNotificationChannelScheduler.this;
                mcsNotificationChannelScheduler.transitionTo(mcsNotificationChannelScheduler.mDefaultState);
                return true;
            }
            switch (i) {
                case 16:
                    String oMAChannelResURL = McsNotificationChannelScheduler.this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
                    if (TextUtils.isEmpty(oMAChannelResURL)) {
                        return true;
                    }
                    String substring = oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf(47) + 1);
                    IMSLog.s(McsNotificationChannelScheduler.this.TAG, "ChannelCreatedState: processMessage: channelId: " + substring + " resUrl: " + oMAChannelResURL);
                    if (McsNotificationChannelScheduler.this.isAlreadyInRetry(McsGetNotificationChannelLifetime.class.getSimpleName())) {
                        McsNotificationChannelScheduler.this.removeRetryEvent();
                    }
                    CmsHttpController httpController = McsNotificationChannelScheduler.this.mStoreClient.getHttpController();
                    McsNotificationChannelScheduler mcsNotificationChannelScheduler2 = McsNotificationChannelScheduler.this;
                    httpController.execute(new McsGetNotificationChannelLifetime(mcsNotificationChannelScheduler2, mcsNotificationChannelScheduler2, substring, mcsNotificationChannelScheduler2.mStoreClient));
                    return true;
                case 17:
                    String oMAChannelResURL2 = McsNotificationChannelScheduler.this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
                    if (TextUtils.isEmpty(oMAChannelResURL2)) {
                        return true;
                    }
                    String substring2 = oMAChannelResURL2.substring(oMAChannelResURL2.lastIndexOf(47) + 1);
                    IMSLog.s(McsNotificationChannelScheduler.this.TAG, "ChannelCreatedState: processMessage: channelId: " + substring2 + " resUrl: " + oMAChannelResURL2);
                    if (McsNotificationChannelScheduler.this.isAlreadyInRetry(McsUpdateNotificationChannelLifetime.class.getSimpleName())) {
                        McsNotificationChannelScheduler.this.removeRetryEvent();
                    }
                    CmsHttpController httpController2 = McsNotificationChannelScheduler.this.mStoreClient.getHttpController();
                    McsNotificationChannelScheduler mcsNotificationChannelScheduler3 = McsNotificationChannelScheduler.this;
                    httpController2.execute(new McsUpdateNotificationChannelLifetime(mcsNotificationChannelScheduler3, mcsNotificationChannelScheduler3, substring2, mcsNotificationChannelScheduler3.mStoreClient));
                    return true;
                case 18:
                    boolean booleanValue = ((Boolean) message.obj).booleanValue();
                    IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatedState: processMessage: success: " + booleanValue);
                    if (!booleanValue) {
                        ChannelDeleteData channelDeleteData = new ChannelDeleteData();
                        channelDeleteData.deleteReason = McsConstants.ChannelDeleteReason.NORMAL;
                        channelDeleteData.isNeedRecreateChannel = false;
                        channelDeleteData.channelUrl = McsNotificationChannelScheduler.this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
                        IMSLog.s(McsNotificationChannelScheduler.this.TAG, "ChannelCreatedState: processMessage: send DELETE_NOTIFICATION_CHANNEL resUrl: " + channelDeleteData.channelUrl);
                        McsNotificationChannelScheduler mcsNotificationChannelScheduler4 = McsNotificationChannelScheduler.this;
                        mcsNotificationChannelScheduler4.sendMessage(mcsNotificationChannelScheduler4.obtainMessage(OMASyncEventType.DELETE_NOTIFICATION_CHANNEL.getId(), channelDeleteData));
                    }
                    McsNotificationChannelScheduler.this.mNetApiController.updateMessage(McsNotificationChannelScheduler.this.obtainMessage(19, Boolean.valueOf(booleanValue)));
                    return true;
                default:
                    IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatedState: processMessage: unknown event");
                    return false;
            }
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            IMSLog.i(McsNotificationChannelScheduler.this.TAG, "ChannelCreatedState: exit");
        }
    }

    public void resetChannelData() {
        IMSLog.i(this.TAG, "resetChannelData");
        CloudMessagePreferenceManager prerenceManager = this.mStoreClient.getPrerenceManager();
        prerenceManager.saveOMAChannelResURL("");
        prerenceManager.saveOMACallBackURL("");
        prerenceManager.saveOMAChannelLifeTime(0L);
        prerenceManager.saveOMAChannelCreateTime(0L);
    }
}
