package com.sec.internal.ims.cmstore.omanetapi.gcm;

import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.helper.ATTGlobalVariables;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageCreateLargeDataPolling;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageCreateLongPolling;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageCreateNotificationChannels;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageDeleteIndividualChannel;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageGetActiveNotificationChannels;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageGetIndividualNotificationChannelInfo;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageUpdateNotificationChannelLifeTime;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateSubscriptionChannel;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageDeleteIndividualSubscription;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageUpdateSubscriptionChannel;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.HttpResParamsWrapper;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CmsHttpController;
import com.sec.internal.ims.cmstore.utils.NotificationListContainer;
import com.sec.internal.ims.cmstore.utils.ReSyncParam;
import com.sec.internal.ims.cmstore.utils.SchedulerHelper;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.interfaces.ims.cmstore.IUIEventCallback;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.data.ChannelDeleteData;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ChannelScheduler extends StateMachine implements IControllerCommonInterface, IAPICallFlowListener {
    private static final int STATE_EXPIRED = 2;
    private static final int STATE_GOING_EXPIRED = 1;
    private static final int STATE_NOT_EXPIRED = 0;
    private final int NO_RETRY_AFTER_VALUE;
    public String TAG;
    public final String TAG_CN;
    State mChannelCheckingState;
    State mChannelCreatedState;
    State mChannelCreatingState;
    State mDefaultState;
    private INetAPIEventListener mINetAPIEventListener;
    State mLargePollingState;
    private String mLine;
    State mLongPollingState;
    private ArrayList<OMANetAPIHandler.OnApiSucceedOnceListener> mOnApiSucceedOnceListenerList;
    private final ReSyncParam mReSyncParam;
    private SchedulerHelper mSchedulerHelper;
    private MessageStoreClient mStoreClient;
    State mSubscribedState;
    State mSubscribingState;
    private final IUIEventCallback mUIInterface;

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam, SyncMsgType syncMsgType, int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlow(int i) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFixedFlowWithMessage(Message message) {
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

    public ChannelScheduler(Looper looper, INetAPIEventListener iNetAPIEventListener, IUIEventCallback iUIEventCallback, MessageStoreClient messageStoreClient) {
        super("ChannelScheduler[" + messageStoreClient.getClientID() + "]", looper);
        this.TAG = ChannelScheduler.class.getSimpleName();
        this.TAG_CN = ChannelScheduler.class.getSimpleName();
        this.mReSyncParam = ReSyncParam.getInstance();
        this.NO_RETRY_AFTER_VALUE = -1;
        this.mDefaultState = new DefaultState();
        this.mChannelCheckingState = new ChannelCheckingState();
        this.mChannelCreatingState = new ChannelCreatingState();
        this.mChannelCreatedState = new ChannelCreatedState();
        this.mSubscribingState = new SubscribingState();
        this.mSubscribedState = new SubscribedState();
        this.mLongPollingState = new LongPollingState();
        this.mLargePollingState = new LargePollingState();
        this.mSchedulerHelper = null;
        this.mINetAPIEventListener = null;
        this.mOnApiSucceedOnceListenerList = new ArrayList<>();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mStoreClient = messageStoreClient;
        this.mLine = messageStoreClient.getPrerenceManager().getUserTelCtn();
        this.mINetAPIEventListener = iNetAPIEventListener;
        this.mUIInterface = iUIEventCallback;
        ReSyncParam.update(messageStoreClient);
        this.mSchedulerHelper = SchedulerHelper.getInstance(getHandler());
        initStates();
    }

    OMASyncEventType InitEvent(Message message) {
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        return valueOf == null ? OMASyncEventType.DEFAULT : valueOf;
    }

    private void initStates() {
        addState(this.mDefaultState);
        addState(this.mChannelCheckingState, this.mDefaultState);
        addState(this.mChannelCreatingState, this.mChannelCheckingState);
        addState(this.mChannelCreatedState, this.mChannelCreatingState);
        addState(this.mSubscribingState, this.mChannelCreatedState);
        addState(this.mSubscribedState, this.mSubscribingState);
        if (ATTGlobalVariables.isGcmReplacePolling()) {
            addState(this.mLargePollingState, this.mSubscribedState);
        } else {
            addState(this.mLongPollingState, this.mSubscribedState);
        }
        setInitialState(this.mDefaultState);
        super.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gotoHandlerEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendMessage(i);
        }
    }

    private void gotoHandlerEventOnFailure(IHttpAPICommonInterface iHttpAPICommonInterface) {
        boolean isRetryEnabled = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled();
        EventLogHelper.infoLogAndAdd(this.TAG_CN, this.mStoreClient.getClientID(), "gotoHandlerEventOnFailure isRetryEnabled: " + isRetryEnabled);
        if (isRetryEnabled) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, -1);
            sendMessage(OMASyncEventType.RESET_STATE.getId());
            NotificationListContainer.getInstance(this.mStoreClient.getClientID()).clear();
            return;
        }
        sendMessage(OMASyncEventType.DOWNLOAD_RETRIVED.getId());
    }

    @Override // com.sec.internal.helper.StateMachine, com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        sendMessage(OMASyncEventType.START.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void pause() {
        sendMessage(OMASyncEventType.PAUSE.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void resume() {
        sendMessage(OMASyncEventType.RESUME.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void stop() {
        sendMessage(OMASyncEventType.STOP.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendMessage(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onApiTreatAsSucceed(IHttpAPICommonInterface iHttpAPICommonInterface) {
        this.mINetAPIEventListener.onOmaSuccess(iHttpAPICommonInterface);
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled() && ((this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getControllerOfLastFailedApi() == null || apiShouldMoveOn()) && this.mOnApiSucceedOnceListenerList.size() > 0)) {
            Log.i(this.TAG, "mOnApiSucceedOnceListenerList.size() = " + this.mOnApiSucceedOnceListenerList.size());
            Iterator<OMANetAPIHandler.OnApiSucceedOnceListener> it = this.mOnApiSucceedOnceListenerList.iterator();
            while (it.hasNext()) {
                OMANetAPIHandler.OnApiSucceedOnceListener next = it.next();
                if (next != null) {
                    next.onMoveOn();
                }
            }
            this.mOnApiSucceedOnceListenerList.clear();
        }
    }

    private boolean apiShouldMoveOn() {
        Class<? extends IHttpAPICommonInterface> lastFailedApi = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().getLastFailedApi();
        if (lastFailedApi == null) {
            return false;
        }
        EventLogHelper.infoLogAndAdd(this.TAG_CN, this.mStoreClient.getClientID(), "apiShouldMoveOn lastFailedApi:" + lastFailedApi);
        return CloudMessageCreateLargeDataPolling.class.getSimpleName().equalsIgnoreCase(lastFailedApi.getSimpleName());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onMoveOnToNext(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
        gotoHandlerEvent(OMASyncEventType.MOVE_ON.getId(), new HttpResParamsWrapper(iHttpAPICommonInterface, obj));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
        gotoHandlerEvent(OMASyncEventType.API_SUCCEED.getId(), iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        gotoHandlerEvent(OMASyncEventType.MOVE_ON.getId(), new HttpResParamsWrapper(iHttpAPICommonInterface, null));
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
        gotoHandlerEvent(OMASyncEventType.API_SUCCEED.getId(), iHttpAPICommonInterface);
        gotoHandlerEvent(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface, BufferDBChangeParam bufferDBChangeParam) {
        gotoHandlerEventOnFailure(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
        gotoHandlerEventOnFailure(iHttpAPICommonInterface);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onFailedEvent(int i, Object obj) {
        gotoHandlerEvent(i, obj);
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onOverRequest(IHttpAPICommonInterface iHttpAPICommonInterface, String str, int i) {
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled()) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, i);
        } else {
            sendMessage(OMASyncEventType.DOWNLOAD_RETRIVED.getId());
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean update(int i) {
        if (i == OMASyncEventType.REMOVE_UPDATE_SUBSCRIPTION_CHANNEL.getId()) {
            removeMessages(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL_DELAY.getId());
            return true;
        }
        sendMessage(obtainMessage(i));
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelay(int i, long j) {
        Log.i(this.TAG, "update with " + i + " delayed " + j);
        if (hasMessages(i)) {
            removeMessages(i);
        }
        sendMessageDelayed(obtainMessage(i), j);
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateMessage(Message message) {
        sendMessage(message);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndUpdateSubscriptionChannel() {
        ReSyncParam.update(this.mStoreClient);
        if (this.mStoreClient.getPrerenceManager().getOMASubscriptionTime() == 0) {
            sendMessage(OMASyncEventType.CREATE_SUBSCRIPTION_CHANNEL.getId());
        } else if (this.mSchedulerHelper.isSubscriptionChannelGoingExpired(this.mStoreClient)) {
            sendMessage(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL.getId());
        } else {
            if (ATTGlobalVariables.isGcmReplacePolling()) {
                return;
            }
            sendMessage(OMASyncEventType.SEND_LONG_POLLING_REQUEST.getId());
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public synchronized void setOnApiSucceedOnceListener(OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener) {
        if (onApiSucceedOnceListener == null) {
            Log.i(this.TAG, "listener == null, onOmaApiCredentialFailed, clear mOnApiSucceedOnceListenerList");
            this.mOnApiSucceedOnceListenerList.clear();
        } else {
            this.mOnApiSucceedOnceListenerList.add(onApiSucceedOnceListener);
        }
    }

    public void updateNotificationChannnelLifeTime() {
        String oMAChannelResURL = this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
        Log.i(this.TAG, "updateNotificationChannnelLifeTime resUrl: " + IMSLog.checker(oMAChannelResURL));
        if (TextUtils.isEmpty(oMAChannelResURL)) {
            return;
        }
        this.mStoreClient.getHttpController().execute(new CloudMessageUpdateNotificationChannelLifeTime(this, this, oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf(47) + 1), this.mStoreClient));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int isNotificationChannelGoingExpired() {
        long oMAChannelCreateTime = (this.mStoreClient.getPrerenceManager().getOMAChannelCreateTime() + (this.mStoreClient.getPrerenceManager().getOMAChannelLifeTime() * 1000)) - System.currentTimeMillis();
        Log.i(this.TAG, "isNotificationChannelGoingExpired remainingTime:" + oMAChannelCreateTime);
        if (oMAChannelCreateTime <= 0) {
            return 2;
        }
        if (oMAChannelCreateTime < 900000) {
            return 1;
        }
        OMASyncEventType oMASyncEventType = OMASyncEventType.UPDATE_NOTIFICATION_CHANNEL_LIFETIME;
        if (hasMessages(oMASyncEventType.getId())) {
            return 0;
        }
        updateDelay(oMASyncEventType.getId(), oMAChannelCreateTime - 900000);
        return 0;
    }

    private class DefaultState extends State {
        private DefaultState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ChannelScheduler.this.log("DefaultState, enter");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            String str;
            OMASyncEventType InitEvent = ChannelScheduler.this.InitEvent(message);
            boolean z = false;
            switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()]) {
                case 1:
                    ChannelScheduler.this.sendMessage(OMASyncEventType.RESET_STATE.getId());
                    z = true;
                    break;
                case 2:
                    ChannelScheduler.this.sendMessage(OMASyncEventType.CHECK_NOTIFICATION_CHANNEL.getId());
                    z = true;
                    break;
                case 3:
                    ChannelScheduler.this.sendMessage(OMASyncEventType.RESET_STATE.getId());
                    z = true;
                    break;
                case 4:
                    z = true;
                    break;
                case 5:
                    if (ATTGlobalVariables.isGcmReplacePolling()) {
                        ChannelScheduler.this.sendMessage(OMASyncEventType.CHECK_ACTIVE_NOTIFICATION_CHANNEL.getId());
                    } else {
                        String oMAChannelResURL = ChannelScheduler.this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
                        if (!TextUtils.isEmpty(oMAChannelResURL)) {
                            String substring = oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf(47) + 1);
                            CmsHttpController httpController = ChannelScheduler.this.mStoreClient.getHttpController();
                            ChannelScheduler channelScheduler = ChannelScheduler.this;
                            httpController.execute(new CloudMessageGetIndividualNotificationChannelInfo(channelScheduler, channelScheduler, substring, channelScheduler.mStoreClient));
                        } else {
                            ChannelScheduler.this.sendMessage(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId());
                        }
                    }
                    ChannelScheduler channelScheduler2 = ChannelScheduler.this;
                    channelScheduler2.transitionTo(channelScheduler2.mChannelCheckingState);
                    z = true;
                    break;
                case 6:
                    CmsHttpController httpController2 = ChannelScheduler.this.mStoreClient.getHttpController();
                    ChannelScheduler channelScheduler3 = ChannelScheduler.this;
                    httpController2.execute(new CloudMessageDeleteIndividualSubscription(channelScheduler3, (String) message.obj, channelScheduler3.mStoreClient));
                    ChannelScheduler.this.mStoreClient.getPrerenceManager().saveOMASubscriptionResUrl("");
                    z = true;
                    break;
                case 7:
                    Object obj = message.obj;
                    if (obj instanceof ChannelDeleteData) {
                        ChannelDeleteData channelDeleteData = (ChannelDeleteData) obj;
                        str = channelDeleteData.channelUrl;
                        z = channelDeleteData.isNeedRecreateChannel;
                        Log.d(ChannelScheduler.this.TAG, "need recreate channel");
                    } else {
                        str = (String) obj;
                    }
                    boolean z2 = z;
                    if (!TextUtils.isEmpty(str)) {
                        CmsHttpController httpController3 = ChannelScheduler.this.mStoreClient.getHttpController();
                        ChannelScheduler channelScheduler4 = ChannelScheduler.this;
                        httpController3.execute(new CloudMessageDeleteIndividualChannel(channelScheduler4, channelScheduler4, str.substring(str.lastIndexOf("/") + 1), z2, ChannelScheduler.this.mStoreClient));
                    }
                    z = true;
                    break;
                case 8:
                    ChannelScheduler.this.mINetAPIEventListener.onCloudSyncStopped(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.MAILBOX_RESET).build());
                    z = true;
                    break;
                case 9:
                    ChannelScheduler.this.mINetAPIEventListener.onCloudObjectNotificationUpdated((ParamOMAresponseforBufDB) message.obj);
                    z = true;
                    break;
                case 10:
                    Object obj2 = message.obj;
                    if (obj2 != null) {
                        HttpRequestParams httpRequestParams = (HttpRequestParams) obj2;
                        ChannelScheduler channelScheduler5 = ChannelScheduler.this;
                        EventLogHelper.infoLogAndAdd(channelScheduler5.TAG_CN, channelScheduler5.mStoreClient.getClientID(), "ReExecute API " + httpRequestParams.getClass().getSimpleName() + " after 302 by using new url");
                        ChannelScheduler.this.mStoreClient.getHttpController().execute(httpRequestParams);
                    }
                    z = true;
                    break;
                case 11:
                    ParamOMAresponseforBufDB build = new ParamOMAresponseforBufDB.Builder().setLine(ChannelScheduler.this.mLine).build();
                    Object obj3 = message.obj;
                    ChannelScheduler.this.mINetAPIEventListener.onOmaAuthenticationFailed(build, (obj3 == null || !(obj3 instanceof Number)) ? 0L : ((Number) obj3).longValue());
                    ChannelScheduler.this.sendMessage(OMASyncEventType.RESET_STATE.getId());
                    z = true;
                    break;
                case 12:
                    ChannelScheduler.this.mINetAPIEventListener.onPauseCMNNetApiWithResumeDelay(((Integer) message.obj).intValue());
                    z = true;
                    break;
                case 13:
                    ChannelScheduler.this.mUIInterface.notifyAppUIScreen(ATTConstants.AttAmbsUIScreenNames.SteadyStateError_ErrMsg7.getId(), IUIEventCallback.POP_UP, 0);
                    z = true;
                    break;
                case 14:
                    Object obj4 = message.obj;
                    if (obj4 != null) {
                        ChannelScheduler.this.onApiTreatAsSucceed((IHttpAPICommonInterface) obj4);
                    }
                    z = true;
                    break;
                case 15:
                    Object obj5 = message.obj;
                    if (obj5 != null) {
                        HttpResParamsWrapper httpResParamsWrapper = (HttpResParamsWrapper) obj5;
                        ChannelScheduler.this.onApiTreatAsSucceed(httpResParamsWrapper.mApi);
                        ChannelScheduler.this.gotoHandlerEvent(OMASyncEventType.CHECK_SUBSCRIPTION_AND_START_LONG_POLLING.getId(), httpResParamsWrapper.mBufDbParams);
                    }
                    z = true;
                    break;
                case 16:
                    ChannelScheduler.this.pause();
                    ChannelScheduler.this.mSchedulerHelper.deleteNotificationSubscriptionResource(ChannelScheduler.this.mStoreClient);
                    z = true;
                    break;
            }
            if (z) {
                ChannelScheduler.this.log("DefaultState, Handled : " + InitEvent);
            }
            return z;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            ChannelScheduler.this.log("DefaultState, exit");
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
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
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CHECK_NOTIFICATION_CHANNEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_SUBCRIPTION_CHANNEL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_NOTIFICATION_CHANNEL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MAILBOX_RESET.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CLOUD_UPDATE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MSTORE_REDIRECT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREDENTIAL_EXPIRED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SELF_RETRY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_ERR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_SUCCEED.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MOVE_ON.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_NOTIFICATION_SUBSCRIPTION_RESOURCE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.RESET_STATE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CHECK_ACTIVE_NOTIFICATION_CHANNEL.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_NOTIFICATION_CHANNEL_FINISHED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_SUBSCRIPTION_CHANNEL.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_NOTIFICATION_CHANNEL_LIFETIME.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CHECK_SUBSCRIPTION_AND_START_LONG_POLLING.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_SUBSCRIPTION_FINISHED.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.REQUEST_SUBSCRIPTION_AFTER_PSF_REMOVED.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SEND_LONG_POLLING_REQUEST.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SEND_LARGE_DATA_POLLING_REQUEST.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL_DELAY.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ONE_POLLING_FINISHED.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SEND_LARGE_DATA_POLLING_FINISHED.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
        }
    }

    private class ChannelCheckingState extends State {
        private ChannelCheckingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ChannelScheduler.this.log("ChannelCheckingState, enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = ChannelScheduler.this.InitEvent(message);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            boolean z = true;
            if (i != 5) {
                switch (i) {
                    case 17:
                        ChannelScheduler channelScheduler = ChannelScheduler.this;
                        OMASyncEventType oMASyncEventType = OMASyncEventType.SEND_LARGE_DATA_POLLING_REQUEST;
                        if (channelScheduler.hasMessages(oMASyncEventType.getId())) {
                            ChannelScheduler.this.removeMessages(oMASyncEventType.getId());
                        }
                        ChannelScheduler channelScheduler2 = ChannelScheduler.this;
                        channelScheduler2.transitionTo(channelScheduler2.mDefaultState);
                        break;
                    case 18:
                        CmsHttpController httpController = ChannelScheduler.this.mStoreClient.getHttpController();
                        ChannelScheduler channelScheduler3 = ChannelScheduler.this;
                        httpController.execute(new CloudMessageGetActiveNotificationChannels(channelScheduler3, channelScheduler3, channelScheduler3.mStoreClient));
                        break;
                    case 19:
                        if (ATTGlobalVariables.isGcmReplacePolling()) {
                            String gcmTokenFromVsim = ChannelScheduler.this.mStoreClient.getPrerenceManager().getGcmTokenFromVsim();
                            ChannelScheduler channelScheduler4 = ChannelScheduler.this;
                            EventLogHelper.infoLogAndAdd(channelScheduler4.TAG_CN, channelScheduler4.mStoreClient.getClientID(), "Get GCM token from NSDSProvider, gcmToken=" + IMSLog.checker(gcmTokenFromVsim));
                            if (TextUtils.isEmpty(gcmTokenFromVsim)) {
                                ChannelScheduler.this.mStoreClient.getPrerenceManager().getGcmTokenFromVsim();
                            } else if (message.obj == null) {
                                CmsHttpController httpController2 = ChannelScheduler.this.mStoreClient.getHttpController();
                                ChannelScheduler channelScheduler5 = ChannelScheduler.this;
                                httpController2.execute(new CloudMessageCreateNotificationChannels(channelScheduler5, channelScheduler5, false, channelScheduler5.mStoreClient));
                            } else {
                                CmsHttpController httpController3 = ChannelScheduler.this.mStoreClient.getHttpController();
                                ChannelScheduler channelScheduler6 = ChannelScheduler.this;
                                httpController3.execute(new CloudMessageCreateNotificationChannels(channelScheduler6, channelScheduler6, true, channelScheduler6.mStoreClient));
                            }
                        } else {
                            CmsHttpController httpController4 = ChannelScheduler.this.mStoreClient.getHttpController();
                            ChannelScheduler channelScheduler7 = ChannelScheduler.this;
                            httpController4.execute(new CloudMessageCreateNotificationChannels(channelScheduler7, channelScheduler7, true, channelScheduler7.mStoreClient));
                        }
                        ChannelScheduler channelScheduler8 = ChannelScheduler.this;
                        channelScheduler8.transitionTo(channelScheduler8.mChannelCreatingState);
                        break;
                    default:
                        z = false;
                        break;
                }
            }
            if (z) {
                ChannelScheduler.this.log("ChannelCheckingState, Handled : " + InitEvent);
            }
            return z;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            ChannelScheduler.this.log("ChannelCheckingState, exit");
        }
    }

    private class ChannelCreatingState extends State {
        private ChannelCreatingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ChannelScheduler.this.log("ChannelCreatingState, enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            boolean z;
            OMASyncEventType InitEvent = ChannelScheduler.this.InitEvent(message);
            if (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()] != 20) {
                z = false;
            } else {
                ChannelScheduler channelScheduler = ChannelScheduler.this;
                channelScheduler.transitionTo(channelScheduler.mChannelCreatedState);
                z = true;
            }
            if (z) {
                ChannelScheduler.this.log("ChannelCreatingState, Handled : " + InitEvent);
            }
            return z;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            ChannelScheduler.this.log("ChannelCreatingState, exit");
        }
    }

    private class ChannelCreatedState extends State {
        private ChannelCreatedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ChannelScheduler.this.log("ChannelCreatedState, enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = ChannelScheduler.this.InitEvent(message);
            int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()];
            boolean z = true;
            if (i != 5) {
                switch (i) {
                    case 21:
                        ReSyncParam unused = ChannelScheduler.this.mReSyncParam;
                        ReSyncParam.update(ChannelScheduler.this.mStoreClient);
                        if (!TextUtils.isEmpty(ChannelScheduler.this.mReSyncParam.getNotifyURL())) {
                            CmsHttpController httpController = ChannelScheduler.this.mStoreClient.getHttpController();
                            ChannelScheduler channelScheduler = ChannelScheduler.this;
                            String notifyURL = channelScheduler.mReSyncParam.getNotifyURL();
                            String restartToken = ChannelScheduler.this.mReSyncParam.getRestartToken();
                            ChannelScheduler channelScheduler2 = ChannelScheduler.this;
                            httpController.execute(new CloudMessageCreateSubscriptionChannel(channelScheduler, notifyURL, restartToken, channelScheduler2, false, channelScheduler2.mStoreClient));
                            ChannelScheduler channelScheduler3 = ChannelScheduler.this;
                            EventLogHelper.add(channelScheduler3.TAG, channelScheduler3.mStoreClient.getClientID(), " CREATE_SUBSCRIPTION_CHANNEL restartToken " + ChannelScheduler.this.mReSyncParam.getRestartToken());
                            ChannelScheduler channelScheduler4 = ChannelScheduler.this;
                            channelScheduler4.transitionTo(channelScheduler4.mSubscribingState);
                            break;
                        }
                        break;
                    case 22:
                        ChannelScheduler.this.updateNotificationChannnelLifeTime();
                        break;
                    case 23:
                        ChannelScheduler.this.checkAndUpdateSubscriptionChannel();
                        break;
                    default:
                        z = false;
                        break;
                }
            } else {
                String oMAChannelResURL = ChannelScheduler.this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
                Log.i(ChannelScheduler.this.TAG, "resUrl: " + IMSLog.checker(oMAChannelResURL));
                if (TextUtils.isEmpty(oMAChannelResURL)) {
                    ChannelScheduler.this.sendMessage(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId());
                } else if (ATTGlobalVariables.isGcmReplacePolling()) {
                    int isNotificationChannelGoingExpired = ChannelScheduler.this.isNotificationChannelGoingExpired();
                    if (isNotificationChannelGoingExpired == 1) {
                        String substring = oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf(47) + 1);
                        CmsHttpController httpController2 = ChannelScheduler.this.mStoreClient.getHttpController();
                        ChannelScheduler channelScheduler5 = ChannelScheduler.this;
                        httpController2.execute(new CloudMessageGetIndividualNotificationChannelInfo(channelScheduler5, channelScheduler5, substring, channelScheduler5.mStoreClient));
                    } else if (isNotificationChannelGoingExpired == 2) {
                        ChannelScheduler.this.sendMessage(ChannelScheduler.this.obtainMessage(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId(), Boolean.TRUE));
                    }
                } else {
                    String substring2 = oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf(47) + 1);
                    CmsHttpController httpController3 = ChannelScheduler.this.mStoreClient.getHttpController();
                    ChannelScheduler channelScheduler6 = ChannelScheduler.this;
                    httpController3.execute(new CloudMessageGetIndividualNotificationChannelInfo(channelScheduler6, channelScheduler6, substring2, channelScheduler6.mStoreClient));
                }
            }
            if (z) {
                ChannelScheduler.this.log("ChannelCreatedState, Handled : " + InitEvent);
            }
            return z;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            ChannelScheduler.this.log("ChannelCreatedState, exit");
        }
    }

    private class SubscribingState extends State {
        private SubscribingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ChannelScheduler.this.log("SubscribingState, enter");
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x007b  */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean processMessage(android.os.Message r10) {
            /*
                r9 = this;
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r10 = r0.InitEvent(r10)
                int[] r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType
                int r1 = r10.ordinal()
                r0 = r0[r1]
                r1 = 24
                if (r0 == r1) goto L71
                r1 = 25
                if (r0 == r1) goto L18
                r0 = 0
                goto L79
            L18:
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.ims.cmstore.MessageStoreClient r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.m262$$Nest$fgetmStoreClient(r0)
                com.sec.internal.ims.cmstore.utils.CmsHttpController r0 = r0.getHttpController()
                com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateSubscriptionChannel r8 = new com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateSubscriptionChannel
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r2 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.ims.cmstore.utils.ReSyncParam r1 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.m260$$Nest$fgetmReSyncParam(r2)
                java.lang.String r3 = r1.getNotifyURL()
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r1 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.ims.cmstore.utils.ReSyncParam r1 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.m260$$Nest$fgetmReSyncParam(r1)
                java.lang.String r4 = r1.getRestartToken()
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r5 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                r6 = 1
                com.sec.internal.ims.cmstore.MessageStoreClient r7 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.m262$$Nest$fgetmStoreClient(r5)
                r1 = r8
                r1.<init>(r2, r3, r4, r5, r6, r7)
                r0.execute(r8)
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                java.lang.String r1 = r0.TAG
                com.sec.internal.ims.cmstore.MessageStoreClient r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.m262$$Nest$fgetmStoreClient(r0)
                int r0 = r0.getClientID()
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = " REQUEST_SUBSCRIPTION_AFTER_PSF_REMOVED restartToken "
                r2.append(r3)
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r3 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.ims.cmstore.utils.ReSyncParam r3 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.m260$$Nest$fgetmReSyncParam(r3)
                java.lang.String r3 = r3.getRestartToken()
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                com.sec.internal.ims.cmstore.helper.EventLogHelper.add(r1, r0, r2)
                goto L78
            L71:
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.helper.State r1 = r0.mSubscribedState
                r0.transitionTo(r1)
            L78:
                r0 = 1
            L79:
                if (r0 == 0) goto L91
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r9 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "SubscribingState, Handled : "
                r1.append(r2)
                r1.append(r10)
                java.lang.String r10 = r1.toString()
                r9.log(r10)
            L91:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.SubscribingState.processMessage(android.os.Message):boolean");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            ChannelScheduler.this.log("SubscribingState, exit");
        }
    }

    private class SubscribedState extends State {
        private SubscribedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ChannelScheduler.this.log("SubscribedState, enter");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            boolean z;
            OMASyncEventType InitEvent = ChannelScheduler.this.InitEvent(message);
            Log.i(ChannelScheduler.this.TAG, "event:  " + InitEvent.getId());
            switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()]) {
                case 24:
                    z = true;
                    break;
                case 25:
                default:
                    z = false;
                    break;
                case 26:
                    ReSyncParam unused = ChannelScheduler.this.mReSyncParam;
                    ReSyncParam.update(ChannelScheduler.this.mStoreClient);
                    if (!TextUtils.isEmpty(ChannelScheduler.this.mReSyncParam.getChannelResURL())) {
                        CmsHttpController httpController = ChannelScheduler.this.mStoreClient.getHttpController();
                        ChannelScheduler channelScheduler = ChannelScheduler.this;
                        String restartToken = channelScheduler.mReSyncParam.getRestartToken();
                        String channelResURL = ChannelScheduler.this.mReSyncParam.getChannelResURL();
                        ChannelScheduler channelScheduler2 = ChannelScheduler.this;
                        httpController.execute(new CloudMessageUpdateSubscriptionChannel(channelScheduler, restartToken, channelResURL, channelScheduler2, channelScheduler2.mStoreClient));
                        ChannelScheduler channelScheduler3 = ChannelScheduler.this;
                        EventLogHelper.add(channelScheduler3.TAG, channelScheduler3.mStoreClient.getClientID(), "UPDATE_SUBSCRIPTION_CHANNEL + restartToken " + ChannelScheduler.this.mReSyncParam.getRestartToken());
                    }
                    z = true;
                    break;
                case 27:
                    ChannelScheduler channelScheduler4 = ChannelScheduler.this;
                    CloudMessageCreateLongPolling cloudMessageCreateLongPolling = new CloudMessageCreateLongPolling(channelScheduler4, channelScheduler4.mReSyncParam.getChannelURL(), ChannelScheduler.this.mStoreClient);
                    cloudMessageCreateLongPolling.setReadTimeout(360000L);
                    ChannelScheduler.this.mStoreClient.getHttpController().execute(cloudMessageCreateLongPolling);
                    ChannelScheduler channelScheduler5 = ChannelScheduler.this;
                    channelScheduler5.transitionTo(channelScheduler5.mLongPollingState);
                    z = true;
                    break;
                case 28:
                    ChannelScheduler channelScheduler6 = ChannelScheduler.this;
                    CloudMessageCreateLargeDataPolling cloudMessageCreateLargeDataPolling = new CloudMessageCreateLargeDataPolling(channelScheduler6, channelScheduler6, (String) message.obj, channelScheduler6.mStoreClient);
                    cloudMessageCreateLargeDataPolling.setReadTimeout(360000L);
                    ChannelScheduler.this.mStoreClient.getHttpController().execute(cloudMessageCreateLargeDataPolling);
                    ChannelScheduler channelScheduler7 = ChannelScheduler.this;
                    channelScheduler7.transitionTo(channelScheduler7.mLargePollingState);
                    z = true;
                    break;
                case 29:
                    if (!NotificationListContainer.getInstance(ChannelScheduler.this.mStoreClient.getClientID()).isEmpty()) {
                        if (ChannelScheduler.this.hasMessages(OMASyncEventType.SEND_LARGE_DATA_POLLING_REQUEST.getId())) {
                            ChannelScheduler.this.sendMessageDelayed(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL_DELAY.getId(), SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF);
                        } else {
                            ReSyncParam unused2 = ChannelScheduler.this.mReSyncParam;
                            ReSyncParam.update(ChannelScheduler.this.mStoreClient);
                            if (!TextUtils.isEmpty(ChannelScheduler.this.mReSyncParam.getChannelResURL())) {
                                CmsHttpController httpController2 = ChannelScheduler.this.mStoreClient.getHttpController();
                                ChannelScheduler channelScheduler8 = ChannelScheduler.this;
                                String restartToken2 = channelScheduler8.mReSyncParam.getRestartToken();
                                String channelResURL2 = ChannelScheduler.this.mReSyncParam.getChannelResURL();
                                ChannelScheduler channelScheduler9 = ChannelScheduler.this;
                                httpController2.execute(new CloudMessageUpdateSubscriptionChannel(channelScheduler8, restartToken2, channelResURL2, channelScheduler9, channelScheduler9.mStoreClient));
                                ChannelScheduler channelScheduler10 = ChannelScheduler.this;
                                EventLogHelper.add(channelScheduler10.TAG, channelScheduler10.mStoreClient.getClientID(), " UPDATE_SUBSCRIPTION_CHANNEL_DELAY restartToken " + ChannelScheduler.this.mReSyncParam.getRestartToken());
                                NotificationListContainer.getInstance(ChannelScheduler.this.mStoreClient.getClientID()).clear();
                            }
                        }
                    }
                    z = true;
                    break;
            }
            if (z) {
                ChannelScheduler.this.log("SubscribedState, Handled : " + InitEvent);
            }
            return z;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            ChannelScheduler.this.log("SubscribedState, exit");
        }
    }

    private class LongPollingState extends State {
        private LongPollingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ChannelScheduler.this.log("LongPollingState, enter");
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x003e  */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean processMessage(android.os.Message r4) {
            /*
                r3 = this;
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r4 = r0.InitEvent(r4)
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                java.lang.String r0 = r0.TAG
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "event:  "
                r1.append(r2)
                int r2 = r4.getId()
                r1.append(r2)
                java.lang.String r1 = r1.toString()
                android.util.Log.i(r0, r1)
                int[] r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType
                int r1 = r4.ordinal()
                r0 = r0[r1]
                r1 = 27
                if (r0 == r1) goto L3b
                r1 = 30
                if (r0 == r1) goto L34
                r0 = 0
                goto L3c
            L34:
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.helper.State r1 = r0.mSubscribedState
                r0.transitionTo(r1)
            L3b:
                r0 = 1
            L3c:
                if (r0 == 0) goto L54
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r3 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "LongPollingState, Handled : "
                r1.append(r2)
                r1.append(r4)
                java.lang.String r4 = r1.toString()
                r3.log(r4)
            L54:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.LongPollingState.processMessage(android.os.Message):boolean");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            ChannelScheduler.this.log("LongPollingState, exit");
        }
    }

    private class LargePollingState extends State {
        private LargePollingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            ChannelScheduler.this.log("LargePollingState, enter");
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0044  */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean processMessage(android.os.Message r5) {
            /*
                r4 = this;
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r0 = r0.InitEvent(r5)
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r1 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                java.lang.String r1 = r1.TAG
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r3 = "event:  "
                r2.append(r3)
                int r3 = r0.getId()
                r2.append(r3)
                java.lang.String r2 = r2.toString()
                android.util.Log.i(r1, r2)
                int[] r1 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType
                int r2 = r0.ordinal()
                r1 = r1[r2]
                r2 = 28
                if (r1 == r2) goto L3c
                r5 = 31
                if (r1 == r5) goto L34
                r5 = 0
                goto L42
            L34:
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r5 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                com.sec.internal.helper.State r1 = r5.mSubscribedState
                r5.transitionTo(r1)
                goto L41
            L3c:
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r1 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                r1.deferMessage(r5)
            L41:
                r5 = 1
            L42:
                if (r5 == 0) goto L5a
                com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler r4 = com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.this
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "LargePollingState, Handled : "
                r1.append(r2)
                r1.append(r0)
                java.lang.String r0 = r1.toString()
                r4.log(r0)
            L5a:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler.LargePollingState.processMessage(android.os.Message):boolean");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            ChannelScheduler.this.log("LargePollingState, exit");
        }
    }
}
