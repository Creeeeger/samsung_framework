package com.sec.internal.ims.cmstore.omanetapi.polling;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.ims.cmstore.ATTConstants;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.omanetapi.SyncMsgType;
import com.sec.internal.helper.httpclient.HttpRequestParams;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.omanetapi.OMANetAPIHandler;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageCreateLargeDataPolling;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageCreateLongPolling;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageCreateNotificationChannels;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageDeleteIndividualChannel;
import com.sec.internal.ims.cmstore.omanetapi.nc.CloudMessageGetIndividualNotificationChannelInfo;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageCreateSubscriptionChannel;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageDeleteIndividualSubscription;
import com.sec.internal.ims.cmstore.omanetapi.nms.CloudMessageUpdateSubscriptionChannel;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.params.HttpResParamsWrapper;
import com.sec.internal.ims.cmstore.params.ParamOMAresponseforBufDB;
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
public class OMAPollingScheduler extends Handler implements IControllerCommonInterface, IAPICallFlowListener {
    public static final long POLLING_TIME_OUT = 360000;
    private final int NO_RETRY_AFTER_VALUE;
    public String TAG;
    private INetAPIEventListener mINetAPIEventListener;
    private boolean mIsCreateSubscriptionRunning;
    private boolean mIsOnePollingRunning;
    private boolean mIsPollingNonStopRunning;
    private boolean mIsPollingStarted;
    private boolean mIsSchedulerRunning;
    private final String mLine;
    private ArrayList<OMANetAPIHandler.OnApiSucceedOnceListener> mOnApiSucceedOnceListenerList;
    private final ReSyncParam mReSyncParam;
    private SchedulerHelper mSchedulerHelper;
    private MessageStoreClient mStoreClient;
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
    public boolean updateDelay(int i, long j) {
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateDelayRetry(int i, long j) {
        return false;
    }

    public OMAPollingScheduler(Looper looper, INetAPIEventListener iNetAPIEventListener, IUIEventCallback iUIEventCallback, MessageStoreClient messageStoreClient) {
        super(looper);
        this.TAG = OMAPollingScheduler.class.getSimpleName();
        this.mReSyncParam = ReSyncParam.getInstance();
        this.NO_RETRY_AFTER_VALUE = -1;
        this.mSchedulerHelper = null;
        this.mINetAPIEventListener = null;
        this.mIsPollingStarted = false;
        this.mIsSchedulerRunning = false;
        this.mIsOnePollingRunning = false;
        this.mIsPollingNonStopRunning = false;
        this.mIsCreateSubscriptionRunning = false;
        this.mOnApiSucceedOnceListenerList = new ArrayList<>();
        this.TAG += "[" + messageStoreClient.getClientID() + "]";
        this.mStoreClient = messageStoreClient;
        this.mLine = messageStoreClient.getPrerenceManager().getUserTelCtn();
        this.mINetAPIEventListener = iNetAPIEventListener;
        this.mUIInterface = iUIEventCallback;
        ReSyncParam.update(messageStoreClient);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String str;
        Object obj;
        if (this.mSchedulerHelper == null) {
            this.mSchedulerHelper = SchedulerHelper.getInstance(this);
        }
        super.handleMessage(message);
        OMASyncEventType valueOf = OMASyncEventType.valueOf(message.what);
        Log.i(this.TAG, "message: " + valueOf);
        logWorkingStatus();
        if (valueOf == null) {
            valueOf = OMASyncEventType.DEFAULT;
        }
        boolean z = false;
        switch (AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[valueOf.ordinal()]) {
            case 1:
                this.mIsPollingStarted = true;
                if (shouldSendPollRequest()) {
                    sendEmptyMessage(OMASyncEventType.CHECK_NOTIFICATION_CHANNEL.getId());
                    break;
                }
                break;
            case 2:
                if (!this.mIsSchedulerRunning) {
                    this.mIsSchedulerRunning = true;
                    if (shouldSendPollRequest()) {
                        sendEmptyMessage(OMASyncEventType.CHECK_NOTIFICATION_CHANNEL.getId());
                        break;
                    } else {
                        this.mIsPollingNonStopRunning = true;
                        break;
                    }
                } else {
                    Log.i(this.TAG, "already running");
                    break;
                }
            case 3:
                this.mIsSchedulerRunning = false;
                this.mIsPollingStarted = false;
                break;
            case 4:
                this.mIsSchedulerRunning = false;
                this.mIsPollingNonStopRunning = false;
                break;
            case 5:
                String oMAChannelResURL = this.mStoreClient.getPrerenceManager().getOMAChannelResURL();
                Log.i(this.TAG, "resUrl: " + oMAChannelResURL);
                if (!TextUtils.isEmpty(oMAChannelResURL)) {
                    this.mStoreClient.getHttpController().execute(new CloudMessageGetIndividualNotificationChannelInfo(this, this, oMAChannelResURL.substring(oMAChannelResURL.lastIndexOf(47) + 1), this.mStoreClient));
                    break;
                } else {
                    sendEmptyMessage(OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.getId());
                    break;
                }
            case 6:
                this.mStoreClient.getHttpController().execute(new CloudMessageCreateNotificationChannels(this, this, true, this.mStoreClient));
                break;
            case 7:
                if (shouldSendPollRequest()) {
                    checkAndUpdateSubscriptionChannel();
                    break;
                }
                break;
            case 8:
                if (!this.mIsCreateSubscriptionRunning) {
                    ReSyncParam.update(this.mStoreClient);
                    Log.i(this.TAG, "getNotifyURL: " + this.mReSyncParam.getNotifyURL());
                    if (!TextUtils.isEmpty(this.mReSyncParam.getNotifyURL())) {
                        this.mIsCreateSubscriptionRunning = true;
                        this.mStoreClient.getHttpController().execute(new CloudMessageCreateSubscriptionChannel(this, this.mReSyncParam.getNotifyURL(), this.mReSyncParam.getRestartToken(), this, false, this.mStoreClient));
                        break;
                    }
                }
                break;
            case 9:
                Log.i(this.TAG, "SEND_LONG_POLLING_REQUEST mIsSchedulerRunning: " + this.mIsSchedulerRunning);
                if (this.mIsSchedulerRunning) {
                    if (!this.mIsOnePollingRunning) {
                        this.mIsOnePollingRunning = true;
                        this.mIsPollingNonStopRunning = true;
                        CloudMessageCreateLongPolling cloudMessageCreateLongPolling = new CloudMessageCreateLongPolling(this, this.mStoreClient.getPrerenceManager().getOMAChannelURL(), this.mStoreClient);
                        cloudMessageCreateLongPolling.setReadTimeout(360000L);
                        this.mStoreClient.getHttpController().execute(cloudMessageCreateLongPolling);
                        break;
                    }
                } else {
                    this.mIsOnePollingRunning = false;
                    this.mIsPollingNonStopRunning = false;
                    this.mIsCreateSubscriptionRunning = false;
                    break;
                }
                break;
            case 10:
                this.mStoreClient.getHttpController().execute(new CloudMessageDeleteIndividualSubscription(this, (String) message.obj, this.mStoreClient));
                this.mStoreClient.getPrerenceManager().saveOMASubscriptionResUrl("");
                break;
            case 11:
                Object obj2 = message.obj;
                if (obj2 instanceof ChannelDeleteData) {
                    ChannelDeleteData channelDeleteData = (ChannelDeleteData) obj2;
                    str = channelDeleteData.channelUrl;
                    z = channelDeleteData.isNeedRecreateChannel;
                } else {
                    str = (String) obj2;
                }
                boolean z2 = z;
                if (!TextUtils.isEmpty(str)) {
                    this.mStoreClient.getHttpController().execute(new CloudMessageDeleteIndividualChannel(this, this, str.substring(str.lastIndexOf("/") + 1), z2, this.mStoreClient));
                    this.mStoreClient.getPrerenceManager().saveOMAChannelResURL("");
                    this.mStoreClient.getPrerenceManager().saveOMACallBackURL("");
                    this.mStoreClient.getPrerenceManager().saveOMAChannelURL("");
                    break;
                }
                break;
            case 12:
                ReSyncParam.update(this.mStoreClient);
                if (!TextUtils.isEmpty(this.mStoreClient.getPrerenceManager().getOMASubscriptionResUrl())) {
                    this.mStoreClient.getHttpController().execute(new CloudMessageUpdateSubscriptionChannel(this, this.mStoreClient.getPrerenceManager().getOMASSubscriptionRestartToken(), this.mStoreClient.getPrerenceManager().getOMASubscriptionResUrl(), this, this.mStoreClient));
                    break;
                }
                break;
            case 13:
                this.mINetAPIEventListener.onCloudSyncStopped(new ParamOMAresponseforBufDB.Builder().setActionType(ParamOMAresponseforBufDB.ActionType.MAILBOX_RESET).build());
                break;
            case 14:
                this.mINetAPIEventListener.onCloudObjectNotificationUpdated((ParamOMAresponseforBufDB) message.obj);
                break;
            case 15:
                Log.i(this.TAG, "MSTORE_REDIRECT mIsSchedulerRunning: " + this.mIsSchedulerRunning);
                if (this.mIsSchedulerRunning && (obj = message.obj) != null) {
                    HttpRequestParams httpRequestParams = (HttpRequestParams) obj;
                    Log.i(this.TAG, "ReExecute API " + httpRequestParams.getClass().getSimpleName() + " after 302 by using new url");
                    this.mStoreClient.getHttpController().execute(httpRequestParams);
                    break;
                }
                break;
            case 16:
                this.mIsOnePollingRunning = false;
                this.mIsSchedulerRunning = false;
                this.mIsPollingNonStopRunning = false;
                this.mIsCreateSubscriptionRunning = false;
                ParamOMAresponseforBufDB build = new ParamOMAresponseforBufDB.Builder().setLine(this.mLine).build();
                Object obj3 = message.obj;
                this.mINetAPIEventListener.onOmaAuthenticationFailed(build, (obj3 == null || !(obj3 instanceof Number)) ? 0L : ((Number) obj3).longValue());
                break;
            case 17:
                this.mINetAPIEventListener.onPauseCMNNetApiWithResumeDelay(((Integer) message.obj).intValue());
                break;
            case 18:
                this.mUIInterface.notifyAppUIScreen(ATTConstants.AttAmbsUIScreenNames.SteadyStateError_ErrMsg7.getId(), IUIEventCallback.POP_UP, 0);
                break;
            case 19:
                this.mIsOnePollingRunning = false;
                break;
            case 20:
                this.mIsCreateSubscriptionRunning = false;
                break;
            case 21:
                Object obj4 = message.obj;
                if (obj4 != null) {
                    onApiTreatAsSucceed((IHttpAPICommonInterface) obj4);
                    break;
                }
                break;
            case 22:
                Object obj5 = message.obj;
                if (obj5 != null) {
                    HttpResParamsWrapper httpResParamsWrapper = (HttpResParamsWrapper) obj5;
                    onApiTreatAsSucceed(httpResParamsWrapper.mApi);
                    gotoHandlerEvent(OMASyncEventType.CHECK_SUBSCRIPTION_AND_START_LONG_POLLING.getId(), httpResParamsWrapper.mBufDbParams);
                    break;
                }
                break;
            case 23:
                pause();
                this.mSchedulerHelper.deleteNotificationSubscriptionResource(this.mStoreClient);
                break;
        }
    }

    /* renamed from: com.sec.internal.ims.cmstore.omanetapi.polling.OMAPollingScheduler$1, reason: invalid class name */
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
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_NOTIFICATION_CHANNEL.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CHECK_SUBSCRIPTION_AND_START_LONG_POLLING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_SUBSCRIPTION_CHANNEL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SEND_LONG_POLLING_REQUEST.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_SUBCRIPTION_CHANNEL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_NOTIFICATION_CHANNEL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MAILBOX_RESET.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CLOUD_UPDATE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MSTORE_REDIRECT.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREDENTIAL_EXPIRED.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SELF_RETRY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.SYNC_ERR.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.ONE_POLLING_FINISHED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.CREATE_SUBSCRIPTION_FINISHED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.API_SUCCEED.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.MOVE_ON.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType[OMASyncEventType.DELETE_NOTIFICATION_SUBSCRIPTION_RESOURCE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
        }
    }

    private void gotoHandlerEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendEmptyMessage(i);
        }
    }

    private void gotoHandlerEventOnFailure(IHttpAPICommonInterface iHttpAPICommonInterface) {
        boolean isRetryEnabled = this.mStoreClient.getCloudMessageStrategyManager().getStrategy().isRetryEnabled();
        Log.i(this.TAG, "gotoHandlerEventOnFailure isRetryEnabled: " + isRetryEnabled);
        if (isRetryEnabled) {
            this.mINetAPIEventListener.onFallbackToProvision(this, iHttpAPICommonInterface, -1);
            this.mIsOnePollingRunning = false;
            this.mIsSchedulerRunning = false;
            this.mIsPollingNonStopRunning = false;
            this.mIsCreateSubscriptionRunning = false;
            return;
        }
        sendEmptyMessage(OMASyncEventType.DOWNLOAD_RETRIVED.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void start() {
        sendEmptyMessage(OMASyncEventType.START.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void pause() {
        sendEmptyMessage(OMASyncEventType.PAUSE.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void resume() {
        sendEmptyMessage(OMASyncEventType.RESUME.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public void stop() {
        sendEmptyMessage(OMASyncEventType.STOP.getId());
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener
    public void onGoToEvent(int i, Object obj) {
        if (obj != null) {
            sendMessage(obtainMessage(i, obj));
        } else {
            sendEmptyMessage(i);
        }
    }

    private synchronized void onApiTreatAsSucceed(IHttpAPICommonInterface iHttpAPICommonInterface) {
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
        Log.i(this.TAG, "apiShouldMoveOn lastFailedApi:" + lastFailedApi);
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
            sendEmptyMessage(OMASyncEventType.DOWNLOAD_RETRIVED.getId());
        }
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean update(int i) {
        sendMessage(obtainMessage(i));
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface
    public boolean updateMessage(Message message) {
        return sendMessage(message);
    }

    private void checkAndUpdateSubscriptionChannel() {
        ReSyncParam.update(this.mStoreClient);
        if (this.mStoreClient.getPrerenceManager().getOMASubscriptionTime() == 0) {
            sendEmptyMessage(OMASyncEventType.CREATE_SUBSCRIPTION_CHANNEL.getId());
        } else if (this.mSchedulerHelper.isSubscriptionChannelGoingExpired(this.mStoreClient) || !this.mIsPollingNonStopRunning) {
            sendEmptyMessage(OMASyncEventType.UPDATE_SUBSCRIPTION_CHANNEL.getId());
        } else {
            sendEmptyMessage(OMASyncEventType.SEND_LONG_POLLING_REQUEST.getId());
        }
    }

    private boolean shouldSendPollRequest() {
        return this.mIsPollingStarted && !this.mIsOnePollingRunning && this.mIsSchedulerRunning;
    }

    protected void logWorkingStatus() {
        Log.i(this.TAG, "mLine: " + IMSLog.checker(this.mLine) + " logWorkingStatus: [mIsPollingStarted: " + this.mIsPollingStarted + " mIsSchedulerRunning: " + this.mIsSchedulerRunning + " mIsPollingRunning: " + this.mIsOnePollingRunning + "]");
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
}
