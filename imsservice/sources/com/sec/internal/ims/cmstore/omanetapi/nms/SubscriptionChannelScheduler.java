package com.sec.internal.ims.cmstore.omanetapi.nms;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.State;
import com.sec.internal.helper.StateMachine;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.callHandling.errorHandling.ErrorRuleHandling;
import com.sec.internal.ims.cmstore.helper.EventLogHelper;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.nc.McsCreateLargeDataPolling;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
import com.sec.internal.ims.cmstore.utils.CmsHttpController;
import com.sec.internal.ims.cmstore.utils.McsNotificationListContainer;
import com.sec.internal.ims.cmstore.utils.ReSyncParam;
import com.sec.internal.ims.cmstore.utils.RetryParam;
import com.sec.internal.ims.cmstore.utils.SchedulerHelper;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nc.data.McsLargePollingNotification;
import com.sec.internal.omanetapi.nms.data.NmsEventList;

/* loaded from: classes.dex */
public class SubscriptionChannelScheduler extends StateMachine implements IAPICallFlowListener, IControllerCommonInterface {
    private static final String INTENT_ACTION_RETRY_SUBSCRIPTION_FAILED_API = "com.samsung.ims.mcs.ACTION_RETRY_SUBSCRIPTION_FAILED_API";
    private final int NO_RETRY_AFTER_VALUE;
    public String TAG;
    private boolean isDelaySubscriptionUpdateInProgress;
    private Context mContext;
    State mDefaultState;
    private INetAPIEventListener mINetAPIEventListener;
    State mLargePollingState;
    private String mLine;
    private int mPhoneId;
    private final ReSyncParam mReSyncParam;
    private PendingIntent mRetryIntent;
    private SchedulerHelper mSchedulerHelper;
    MessageStoreClient mStoreClient;
    State mSubscribedState;
    State mSubscribingState;

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
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, Object obj) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulCall(IHttpAPICommonInterface iHttpAPICommonInterface, String str) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void setOnApiSucceedOnceListener(OMANetAPIHandler.OnApiSucceedOnceListener onApiSucceedOnceListener) {
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    public SubscriptionChannelScheduler(Looper looper, INetAPIEventListener iNetAPIEventListener, MessageStoreClient messageStoreClient) {
        super("SubscriptionChannelScheduler[" + messageStoreClient.getClientID() + "]", looper);
        this.TAG = SubscriptionChannelScheduler.class.getSimpleName();
        this.mReSyncParam = ReSyncParam.getInstance();
        this.mDefaultState = new DefaultState();
        this.mSubscribingState = new SubscribingState();
        this.mSubscribedState = new SubscribedState();
        this.mLargePollingState = new LargePollingState();
        this.mINetAPIEventListener = null;
        this.mSchedulerHelper = null;
        this.isDelaySubscriptionUpdateInProgress = false;
        this.NO_RETRY_AFTER_VALUE = -1;
        this.mStoreClient = messageStoreClient;
        this.mPhoneId = messageStoreClient.getClientID();
        this.mContext = this.mStoreClient.getContext();
        this.mLine = this.mStoreClient.getPrerenceManager().getUserTelCtn();
        this.mINetAPIEventListener = iNetAPIEventListener;
        ReSyncParam.update(messageStoreClient);
        this.mSchedulerHelper = SchedulerHelper.getInstance(getHandler());
        initStates();
        registerLargePollingNotificationListener();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(INTENT_ACTION_RETRY_SUBSCRIPTION_FAILED_API);
        this.mContext.registerReceiver(new BroadcastReceiver() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                IMSLog.i(SubscriptionChannelScheduler.this.TAG, "onReceive: " + intent.getAction());
                if (intent.getIntExtra("phoneId", -1) == SubscriptionChannelScheduler.this.mPhoneId && SubscriptionChannelScheduler.INTENT_ACTION_RETRY_SUBSCRIPTION_FAILED_API.equals(intent.getAction())) {
                    RetryParam retryParam = SubscriptionChannelScheduler.this.mStoreClient.getMcsRetryMapAdapter().getRetryParam(intent.getStringExtra("apiName"));
                    if (retryParam != null) {
                        SubscriptionChannelScheduler.this.sendMessage(OMASyncEventType.API_FAILED.getId(), retryParam.getMrequest());
                    }
                }
            }
        }, intentFilter);
    }

    private void registerLargePollingNotificationListener() {
        this.mStoreClient.setMcsFcmPushNotificationListener(new IMcsFcmPushNotificationListener() { // from class: com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.2
            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void nmsEventListPushNotification(NmsEventList nmsEventList) {
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
            public void syncMessagePushNotification(String str, int i) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void syncStatusPushNotification(String str) {
            }

            @Override // com.sec.internal.interfaces.ims.cmstore.IMcsFcmPushNotificationListener
            public void largePollingPushNotification(McsLargePollingNotification mcsLargePollingNotification) {
                if (Util.hasChannelExpired(mcsLargePollingNotification.channelExpiry)) {
                    IMSLog.i(SubscriptionChannelScheduler.this.TAG, "Large polling channel has expired");
                    return;
                }
                String str = mcsLargePollingNotification.channelURL;
                if (TextUtils.isEmpty(str) || SubscriptionChannelScheduler.this.isDelaySubscriptionUpdateInProgress) {
                    return;
                }
                SubscriptionChannelScheduler.this.sendMessage(OMASyncEventType.SEND_LARGE_DATA_POLLING_REQUEST.getId(), str);
            }
        });
    }

    private void initStates() {
        addState(this.mDefaultState);
        addState(this.mSubscribingState, this.mDefaultState);
        addState(this.mSubscribedState, this.mSubscribingState);
        addState(this.mLargePollingState, this.mSubscribedState);
        setInitialState(this.mDefaultState);
        super.start();
    }

    OMASyncEventType InitEvent(Message message) {
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        return valueOf == null ? OMASyncEventType.DEFAULT : valueOf;
    }

    private class DefaultState extends State {
        private DefaultState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            SubscriptionChannelScheduler.this.log("DefaultState, enter");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            boolean z;
            OMASyncEventType InitEvent = SubscriptionChannelScheduler.this.InitEvent(message);
            IMSLog.d(SubscriptionChannelScheduler.this.TAG, "Default state processMessage:  " + InitEvent);
            switch (AnonymousClass3.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()]) {
                case 1:
                case 2:
                    SubscriptionChannelScheduler.this.sendMessage(OMASyncEventType.RESET_STATE.getId());
                    z = true;
                    break;
                case 3:
                    z = true;
                    break;
                case 4:
                    SubscriptionChannelScheduler.this.checkAndUpdateSubscriptionChannel();
                    z = true;
                    break;
                case 5:
                    ReSyncParam unused = SubscriptionChannelScheduler.this.mReSyncParam;
                    ReSyncParam.update(SubscriptionChannelScheduler.this.mStoreClient);
                    if (!TextUtils.isEmpty(SubscriptionChannelScheduler.this.mReSyncParam.getNotifyURL())) {
                        CmsHttpController httpController = SubscriptionChannelScheduler.this.mStoreClient.getHttpController();
                        SubscriptionChannelScheduler subscriptionChannelScheduler = SubscriptionChannelScheduler.this;
                        String notifyURL = subscriptionChannelScheduler.mReSyncParam.getNotifyURL();
                        String restartToken = SubscriptionChannelScheduler.this.mReSyncParam.getRestartToken();
                        SubscriptionChannelScheduler subscriptionChannelScheduler2 = SubscriptionChannelScheduler.this;
                        httpController.execute(new CloudMessageCreateSubscriptionChannel(subscriptionChannelScheduler, notifyURL, restartToken, subscriptionChannelScheduler2, false, subscriptionChannelScheduler2.mStoreClient));
                        SubscriptionChannelScheduler subscriptionChannelScheduler3 = SubscriptionChannelScheduler.this;
                        subscriptionChannelScheduler3.transitionTo(subscriptionChannelScheduler3.mSubscribingState);
                    }
                    z = true;
                    break;
                case 6:
                    CmsHttpController httpController2 = SubscriptionChannelScheduler.this.mStoreClient.getHttpController();
                    SubscriptionChannelScheduler subscriptionChannelScheduler4 = SubscriptionChannelScheduler.this;
                    httpController2.execute(new CloudMessageDeleteIndividualSubscription(subscriptionChannelScheduler4, (String) message.obj, subscriptionChannelScheduler4.mStoreClient));
                    SubscriptionChannelScheduler.this.mStoreClient.getPrerenceManager().saveOMASubscriptionResUrl("");
                    z = true;
                    break;
                case 7:
                    IHttpAPICommonInterface iHttpAPICommonInterface = (IHttpAPICommonInterface) message.obj;
                    if (iHttpAPICommonInterface != null) {
                        SubscriptionChannelScheduler subscriptionChannelScheduler5 = SubscriptionChannelScheduler.this;
                        ErrorRuleHandling.handleMcsError(subscriptionChannelScheduler5, subscriptionChannelScheduler5.mStoreClient, iHttpAPICommonInterface);
                    }
                    z = true;
                    break;
                case 8:
                    ParamOMAresponseforBufDB build = new ParamOMAresponseforBufDB.Builder().setLine(SubscriptionChannelScheduler.this.mLine).build();
                    Object obj = message.obj;
                    SubscriptionChannelScheduler.this.mINetAPIEventListener.onOmaAuthenticationFailed(build, (obj == null || !(obj instanceof Number)) ? 0L : ((Number) obj).longValue());
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            if (z) {
                SubscriptionChannelScheduler.this.log("Default, Handled : " + InitEvent);
            }
            return z;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType;

        static {
            int[] iArr = new int[OMASyncEventType.values().length];
            $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType = iArr;
            try {
                iArr[OMASyncEventType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.PAUSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CHECK_SUBSCRIPTION_CHANNEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_SUBSCRIPTION_CHANNEL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_SUBCRIPTION_CHANNEL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_FAILED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREDENTIAL_EXPIRED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.RESET_STATE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_SUBSCRIPTION_FINISHED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SEND_LARGE_DATA_POLLING_REQUEST.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL_DELAY.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_DELAYED_SUBSCRIPTION_COMPLETE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SEND_LARGE_DATA_POLLING_FINISHED.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    private class SubscribingState extends State {
        private SubscribingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            SubscriptionChannelScheduler.this.log("SubscribingState, enter");
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0042  */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean processMessage(android.os.Message r4) {
            /*
                r3 = this;
                com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.this
                com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType r4 = r0.InitEvent(r4)
                com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.this
                java.lang.String r0 = r0.TAG
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Subscribing state processMessage:  "
                r1.append(r2)
                r1.append(r4)
                java.lang.String r1 = r1.toString()
                com.sec.internal.log.IMSLog.d(r0, r1)
                int[] r0 = com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.AnonymousClass3.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType
                int r1 = r4.ordinal()
                r0 = r0[r1]
                r1 = 9
                if (r0 == r1) goto L38
                r1 = 10
                if (r0 == r1) goto L30
                r0 = 0
                goto L40
            L30:
                com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.this
                com.sec.internal.helper.State r1 = r0.mSubscribedState
                r0.transitionTo(r1)
                goto L3f
            L38:
                com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler r0 = com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.this
                com.sec.internal.helper.State r1 = r0.mDefaultState
                r0.transitionTo(r1)
            L3f:
                r0 = 1
            L40:
                if (r0 == 0) goto L58
                com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler r3 = com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.this
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "SubscribingState, Handled : "
                r1.append(r2)
                r1.append(r4)
                java.lang.String r4 = r1.toString()
                r3.log(r4)
            L58:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.cmstore.omanetapi.nms.SubscriptionChannelScheduler.SubscribingState.processMessage(android.os.Message):boolean");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            SubscriptionChannelScheduler.this.log("SubscribingState, exit");
        }
    }

    private class SubscribedState extends State {
        private SubscribedState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            SubscriptionChannelScheduler.this.log("SubscribedState, enter");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            OMASyncEventType InitEvent = SubscriptionChannelScheduler.this.InitEvent(message);
            IMSLog.d(SubscriptionChannelScheduler.this.TAG, "Subscribed state processMessage:  " + InitEvent);
            boolean z = false;
            switch (AnonymousClass3.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()]) {
                case 10:
                    z = true;
                    break;
                case 11:
                    ReSyncParam unused = SubscriptionChannelScheduler.this.mReSyncParam;
                    ReSyncParam.update(SubscriptionChannelScheduler.this.mStoreClient);
                    if (!TextUtils.isEmpty(SubscriptionChannelScheduler.this.mReSyncParam.getChannelResURL())) {
                        CmsHttpController httpController = SubscriptionChannelScheduler.this.mStoreClient.getHttpController();
                        SubscriptionChannelScheduler subscriptionChannelScheduler = SubscriptionChannelScheduler.this;
                        String restartToken = subscriptionChannelScheduler.mReSyncParam.getRestartToken();
                        String channelResURL = SubscriptionChannelScheduler.this.mReSyncParam.getChannelResURL();
                        SubscriptionChannelScheduler subscriptionChannelScheduler2 = SubscriptionChannelScheduler.this;
                        httpController.execute(new CloudMessageUpdateSubscriptionChannel(subscriptionChannelScheduler, restartToken, channelResURL, subscriptionChannelScheduler2, subscriptionChannelScheduler2.mStoreClient));
                    }
                    z = true;
                    break;
                case 12:
                    String str = (String) message.obj;
                    IMSLog.s(SubscriptionChannelScheduler.this.TAG, "large data polling channelUrl:" + str);
                    SubscriptionChannelScheduler subscriptionChannelScheduler3 = SubscriptionChannelScheduler.this;
                    SubscriptionChannelScheduler.this.mStoreClient.getHttpController().execute(new McsCreateLargeDataPolling(subscriptionChannelScheduler3, subscriptionChannelScheduler3, str, subscriptionChannelScheduler3.mStoreClient));
                    SubscriptionChannelScheduler subscriptionChannelScheduler4 = SubscriptionChannelScheduler.this;
                    subscriptionChannelScheduler4.transitionTo(subscriptionChannelScheduler4.mLargePollingState);
                    z = true;
                    break;
                case 13:
                    if (!McsNotificationListContainer.getInstance(SubscriptionChannelScheduler.this.mStoreClient.getClientID()).isEmpty()) {
                        SubscriptionChannelScheduler subscriptionChannelScheduler5 = SubscriptionChannelScheduler.this;
                        OMASyncEventType oMASyncEventType = OMASyncEventType.SEND_LARGE_DATA_POLLING_REQUEST;
                        if (subscriptionChannelScheduler5.hasMessages(oMASyncEventType.getId())) {
                            SubscriptionChannelScheduler.this.removeMessages(oMASyncEventType.getId());
                        } else {
                            ReSyncParam unused2 = SubscriptionChannelScheduler.this.mReSyncParam;
                            ReSyncParam.update(SubscriptionChannelScheduler.this.mStoreClient);
                            if (!TextUtils.isEmpty(SubscriptionChannelScheduler.this.mReSyncParam.getChannelResURL())) {
                                CmsHttpController httpController2 = SubscriptionChannelScheduler.this.mStoreClient.getHttpController();
                                SubscriptionChannelScheduler subscriptionChannelScheduler6 = SubscriptionChannelScheduler.this;
                                String restartToken2 = subscriptionChannelScheduler6.mReSyncParam.getRestartToken();
                                String channelResURL2 = SubscriptionChannelScheduler.this.mReSyncParam.getChannelResURL();
                                SubscriptionChannelScheduler subscriptionChannelScheduler7 = SubscriptionChannelScheduler.this;
                                httpController2.execute(new CloudMessageUpdateSubscriptionChannel(subscriptionChannelScheduler6, restartToken2, channelResURL2, subscriptionChannelScheduler7, subscriptionChannelScheduler7.mStoreClient));
                                SubscriptionChannelScheduler subscriptionChannelScheduler8 = SubscriptionChannelScheduler.this;
                                EventLogHelper.add(subscriptionChannelScheduler8.TAG, subscriptionChannelScheduler8.mStoreClient.getClientID(), " UPDATE_SUBSCRIPTION_CHANNEL_DELAY restartToken " + SubscriptionChannelScheduler.this.mReSyncParam.getRestartToken());
                                McsNotificationListContainer.getInstance(SubscriptionChannelScheduler.this.mStoreClient.getClientID()).clear(SubscriptionChannelScheduler.this.mStoreClient.getClientID());
                                SubscriptionChannelScheduler.this.isDelaySubscriptionUpdateInProgress = true;
                            }
                        }
                    }
                    z = true;
                    break;
                case 14:
                    SubscriptionChannelScheduler.this.isDelaySubscriptionUpdateInProgress = false;
                    z = true;
                    break;
            }
            if (z) {
                SubscriptionChannelScheduler.this.log("SubscribedState, Handled : " + InitEvent);
            }
            return z;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            SubscriptionChannelScheduler.this.log("SubscribedState, exit");
        }
    }

    private class LargePollingState extends State {
        private LargePollingState() {
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void enter() {
            Log.i(SubscriptionChannelScheduler.this.TAG, "LargePollingState State Enter");
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public boolean processMessage(Message message) {
            boolean z;
            OMASyncEventType InitEvent = SubscriptionChannelScheduler.this.InitEvent(message);
            IMSLog.d(SubscriptionChannelScheduler.this.TAG, "LargePolling state processMessage:  " + InitEvent);
            if (AnonymousClass3.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[InitEvent.ordinal()] != 15) {
                z = false;
            } else {
                SubscriptionChannelScheduler subscriptionChannelScheduler = SubscriptionChannelScheduler.this;
                subscriptionChannelScheduler.transitionTo(subscriptionChannelScheduler.mSubscribedState);
                z = true;
            }
            Log.i(SubscriptionChannelScheduler.this.TAG, "LargePollingState processMessage : " + InitEvent + " " + z);
            return z;
        }

        @Override // com.sec.internal.helper.State, com.sec.internal.helper.IState
        public void exit() {
            Log.i(SubscriptionChannelScheduler.this.TAG, "LargePollingState State Exit");
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onSuccessfulEvent(IHttpAPICommonInterface iHttpAPICommonInterface, int i, Object obj) {
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

    private void gotoHandlerEventOnFailure(IHttpAPICommonInterface iHttpAPICommonInterface) {
        IMSLog.i(this.TAG, "gotoHandlerEventOnFailure isRetryEnabled: " + this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled());
        if (this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled()) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, -1);
        }
    }

    private void gotoHandlerEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendMessage(i);
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
        IMSLog.i(this.TAG, " OnOverRequest : request " + simpleName + "  error code " + str + "  retryAfter " + i);
        updateDelayRetryRequest(simpleName, (long) i);
    }

    public void updateDelayRetryRequest(String str, long j) {
        PendingIntent pendingIntent = this.mRetryIntent;
        if (pendingIntent != null) {
            AlarmTimer.stop(this.mContext, pendingIntent);
            this.mRetryIntent = null;
        }
        Intent intent = new Intent(INTENT_ACTION_RETRY_SUBSCRIPTION_FAILED_API);
        intent.setPackage(this.mContext.getPackageName());
        intent.putExtra("phoneId", this.mPhoneId);
        intent.putExtra("apiName", str);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, 0, intent, 33554432);
        this.mRetryIntent = broadcast;
        AlarmTimer.start(this.mContext, broadcast, j, false);
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
    public boolean updateMessage(Message message) {
        sendMessage(message);
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelay(int i, long j) {
        sendMessageDelayed(obtainMessage(i), j);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndUpdateSubscriptionChannel() {
        ReSyncParam.update(this.mStoreClient);
        if (this.mStoreClient.getPrerenceManager().getOMASubscriptionTime() == 0) {
            sendMessage(OMASyncEventType.CREATE_SUBSCRIPTION_CHANNEL.getId());
        } else if (this.mSchedulerHelper.isSubscriptionChannelGoingExpired(this.mStoreClient)) {
            sendMessage(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL.getId());
        }
    }
}
