package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteFullException;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.extensions.ContextExt;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapterJibeAndSec;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceJibe;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.exception.EmptyBodyAndCookieException;
import com.sec.internal.ims.config.exception.InvalidHeaderException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.config.workflow.WorkflowParamHandler;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class WorkflowJibe extends WorkflowUpBase {
    protected static final int BADREQERR_RETRY_AFTER_TIME = 43200;
    protected static final int HTTPERR_RETRY_AFTER_TIME = 10;
    protected static final int HTTPERR_TRY_MAX_COUNT = 2;
    protected static final int IIDTOKENERR_RETRY_AFTER_TIME = 60;
    protected static final int IIDTOKENERR_RETRY_LIMIT = 3;
    protected static final String LOG_TAG = WorkflowJibe.class.getSimpleName();
    protected static final int MSISDN_TRY_MAX_COUNT = 1;
    protected static final int MSISDN_TRY_MAX_COUNT_NON_GC = 3;
    protected static final String OTP_SMS_BINARY_TYPE = "binary";
    protected static final String OTP_SMS_TEXT_TYPE = "text";
    protected static final int OTP_SMS_TIME_OUT = 700;
    protected int m503ErrCount;
    protected int m511ErrCount;
    protected int mAuthHiddenTryCount;
    protected int mAuthTryCount;
    protected int mHttpResponse;
    protected String mIidToken;
    protected int mIidTokenRetryLimit;
    protected boolean mIsEnrichedHeaderFailed;
    protected boolean mIsMobileConfigCompleted;
    protected boolean mIsMobileConfigNeeded;
    protected boolean mIsMobileConnected;
    protected boolean mIsMobileRequested;
    protected boolean mIsWifiConnected;
    final ConnectivityManager.NetworkCallback mMobileStateCallback;
    protected int mMsisdnTryCount;
    protected Runnable mPendingTask;

    public WorkflowJibe(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDeviceJibe(context, iConfigModule, i), new StorageAdapter(), new HttpAdapterJibeAndSec(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule, i), i);
        this.mIsMobileRequested = false;
        this.mIsMobileConnected = false;
        this.mIsWifiConnected = false;
        this.mIsMobileConfigNeeded = false;
        this.mIsMobileConfigCompleted = false;
        this.mIsEnrichedHeaderFailed = false;
        this.mIidToken = null;
        this.mIidTokenRetryLimit = 0;
        this.mHttpResponse = 0;
        this.mAuthTryCount = 0;
        this.mAuthHiddenTryCount = 0;
        this.mMsisdnTryCount = 0;
        this.m511ErrCount = 0;
        this.m503ErrCount = 0;
        this.mMobileStateCallback = new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                WorkflowJibe.this.onMobileConnectionChanged(network, true);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                WorkflowJibe.this.onMobileConnectionChanged(network, false);
            }
        };
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleMessage: " + message.what);
        int i = message.what;
        if (i == 0) {
            this.mStartForce = true;
        } else if (i != 1) {
            if (i == 3) {
                removeMessages(4);
                if (this.mIsMobileConfigCompleted) {
                    Log.i(str, "mIsMobileConfigCompleted: " + this.mIsMobileConfigCompleted);
                    return;
                }
                this.mPowerController.lock();
                executeAutoConfig();
                this.mIsMobileConfigCompleted = true;
                unregisterMobileNetwork(this.mConnectivityManager, this.mMobileStateCallback);
                this.mNewVersion = getVersion();
                endAutoConfig(true);
                IMSLog.i(str, this.mPhoneId, "oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion);
                IMSLog.i(str, this.mPhoneId, "AutoConfig: finish");
                this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
                this.mPowerController.release();
                return;
            }
            if (i == 4) {
                if (this.mIsMobileConfigCompleted) {
                    Log.i(str, "mIsMobileConfigCompleted: " + this.mIsMobileConfigCompleted);
                    return;
                }
                this.mPowerController.lock();
                changeOpMode(true);
                unregisterMobileNetwork(this.mConnectivityManager, this.mMobileStateCallback);
                this.mNewVersion = getVersion();
                endAutoConfig(false);
                IMSLog.i(str, this.mPhoneId, "oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion);
                IMSLog.i(str, this.mPhoneId, "AutoConfig: finish");
                this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
                this.mPowerController.release();
                return;
            }
            if (i == 5) {
                if (DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, this.mPhoneId) == 1) {
                    IMSLog.i(str, this.mPhoneId, "sms default application is changed to samsung");
                    WorkflowBase.OpMode opMode = WorkflowBase.OpMode.DISABLE_TEMPORARY;
                    setVersion(opMode.value());
                    setRcsState(String.valueOf(opMode.value()));
                    setRcsDisabledState("");
                    setValidity(opMode.value());
                    cancelValidityTimer();
                    setNextAutoconfigTime(opMode.value());
                    this.mIsConfigOngoing = false;
                    return;
                }
                if (this.mModule.isValidConfigDb(this.mPhoneId) && !TextUtils.isEmpty(getToken())) {
                    IMSLog.i(str, this.mPhoneId, "sms default application is changed to non-samsung");
                    setOpMode(WorkflowBase.OpMode.DISABLE_RCS_BY_USER, null);
                    this.mPendingTask = new Runnable() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WorkflowJibe.this.lambda$handleMessage$1();
                        }
                    };
                    removeMessages(1);
                    sendEmptyMessage(1);
                    return;
                }
                IMSLog.i(str, this.mPhoneId, "not to trigger a config because of invalid config");
                this.mModule.clearWorkflowByDmaChange(this.mPhoneId);
                return;
            }
            super.handleMessage(message);
            return;
        }
        if (this.mIsConfigOngoing) {
            Log.i(str, "AutoConfig: ongoing");
            return;
        }
        this.mIsConfigOngoing = true;
        IMSLog.i(str, this.mPhoneId, "AutoConfig: start, mStartForce: " + this.mStartForce);
        this.mModule.getHandler().removeMessages(3, Integer.valueOf(this.mPhoneId));
        this.mPowerController.lock();
        initAutoConfig();
        int version = getVersion();
        this.mOldVersion = version;
        if (scheduleAutoconfigForJibe(version)) {
            Log.i(str, "mIsWifiConnected: " + this.mIsWifiConnected + " mIsMobileConfigNeeded: " + this.mIsMobileConfigNeeded);
            if (this.mIsWifiConnected && this.mIsMobileConfigNeeded) {
                Log.i(str, "use mobile network");
                this.mIsMobileRequested = true;
                NetworkRequest build = new NetworkRequest.Builder().addTransportType(0).addCapability(12).build();
                this.mNetworkRequest = build;
                registerMobileNetwork(this.mConnectivityManager, build, this.mMobileStateCallback);
                removeMessages(4);
                sendMessageDelayed(obtainMessage(4), SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF);
                this.mPowerController.release();
                return;
            }
            executeAutoConfig();
        }
        this.mNewVersion = getVersion();
        endAutoConfig(true);
        IMSLog.i(str, this.mPhoneId, "oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion);
        IMSLog.i(str, this.mPhoneId, "AutoConfig: finish");
        this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
        Optional.ofNullable(this.mPendingTask).ifPresent(new Consumer() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                WorkflowJibe.this.lambda$handleMessage$0((Runnable) obj);
            }
        });
        this.mPowerController.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleMessage$0(Runnable runnable) {
        runnable.run();
        this.mPendingTask = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleMessage$1() {
        this.mModule.clearWorkflowByDmaChange(this.mPhoneId);
    }

    void onMobileConnectionChanged(Network network, boolean z) {
        if (z) {
            if (!this.mIsMobileRequested || this.mIsMobileConnected) {
                return;
            }
            String str = LOG_TAG;
            Log.i(str, "onMobileConnectionChanged: onAvailable");
            if (network != null) {
                Log.i(str, "mobile connection is successful");
                this.mNetwork = network;
                this.mIsMobileConnected = true;
                sendEmptyMessage(3);
                return;
            }
            Log.i(str, "mobile connection info is empty");
            return;
        }
        if (this.mIsMobileRequested) {
            Log.i(LOG_TAG, "onMobileConnectionChanged: onLost");
            this.mIsMobileConnected = false;
        }
    }

    protected boolean scheduleAutoconfigForJibe(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "scheduleAutoconfigForJibe");
        if (!needScheduleAutoconfig(this.mPhoneId)) {
            Log.i(str, "needScheduleAutoconfig: false");
            return false;
        }
        if (this.mStartForce) {
            cancelValidityTimer();
            Log.i(str, "force autoconfig");
            return true;
        }
        if (i == -1 || i == -2) {
            Log.i(str, "currentVersion: " + i + " skip autoconfig");
            return false;
        }
        long nextAutoconfigTime = getNextAutoconfigTime();
        Log.i(str, "nextAutoconfigTime: " + nextAutoconfigTime);
        int time = (int) ((nextAutoconfigTime - new Date().getTime()) / 1000);
        Log.i(str, "remainValidity: " + time);
        if (time <= 0) {
            Log.i(str, "need autoconfig");
            return true;
        }
        if (nextAutoconfigTime > 0) {
            Log.i(str, "autoconfig schedule: after " + time + " seconds");
            IMSLog.c(LogClass.WFJ_VALIDITY_NON_EXPIRED, this.mPhoneId + ",VNE:" + time);
            addEventLog(str + ": autoconfig schedule: after " + time + " seconds");
            setValidityTimer(time);
        }
        return false;
    }

    protected void initAutoConfig() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "initAutoConfig");
        this.mNetwork = null;
        this.mIsMobileRequested = false;
        this.mIsMobileConnected = false;
        this.mIsWifiConnected = checkWifiConnection(this.mConnectivityManager);
        if (this.mMno == Mno.SPRINT) {
            this.mIsMobileConfigNeeded = true;
        }
        this.mIsMobileConfigCompleted = false;
        this.mAuthTryCount = 0;
        this.mAuthHiddenTryCount = 0;
        this.mMsisdnTryCount = 0;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected void endAutoConfig(boolean z) {
        super.endAutoConfig(z);
        this.mIsMobileRequested = false;
        this.mIsMobileConnected = false;
        this.mIsMobileConfigNeeded = false;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase, com.sec.internal.ims.config.workflow.WorkflowBase
    void work() {
        WorkflowBase.Workflow nextWorkflow;
        WorkflowBase.Workflow nextWorkflow2 = getNextWorkflow(1);
        for (int i = WorkflowBase.AUTO_CONFIG_MAX_FLOWCOUNT; nextWorkflow2 != null && i > 0; i--) {
            try {
                nextWorkflow2 = nextWorkflow2.run();
            } catch (SQLiteFullException e) {
                Log.i(LOG_TAG, "SQLiteFullException occur: " + e.getMessage());
                nextWorkflow = getNextWorkflow(8);
                e.printStackTrace();
                nextWorkflow2 = nextWorkflow;
            } catch (NoInitialDataException e2) {
                Log.i(LOG_TAG, "NoInitialDataException: " + e2.getMessage());
                Log.i(LOG_TAG, "wait 10 sec and retry");
                sleep(10000L);
                nextWorkflow = getNextWorkflow(1);
                e2.printStackTrace();
                nextWorkflow2 = nextWorkflow;
            } catch (UnknownStatusException e3) {
                String message = e3.getMessage();
                Log.i(LOG_TAG, "UnknownStatusException: " + message);
                if (e3 instanceof EmptyBodyAndCookieException) {
                    nextWorkflow = getNextWorkflow(8);
                } else {
                    Log.i(LOG_TAG, "wait 2 sec and retry");
                    sleep(UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                    nextWorkflow = getNextWorkflow(1);
                }
                e3.printStackTrace();
                nextWorkflow2 = nextWorkflow;
            } catch (Exception e4) {
                if (e4.getMessage() != null) {
                    Log.i(LOG_TAG, "unknown exception occur: " + e4.getMessage());
                }
                Log.i(LOG_TAG, "wait 1 sec and retry");
                sleep(1000L);
                nextWorkflow = getNextWorkflow(1);
                e4.printStackTrace();
                nextWorkflow2 = nextWorkflow;
            }
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected IHttpAdapter.Response getHttpResponse() {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "getHttpResponse");
        this.mHttp.close();
        this.mHttp.setHeaders(this.mSharedInfo.getHttpHeaders());
        this.mHttp.setParams(this.mSharedInfo.getHttpParams());
        this.mHttp.setContext(this.mContext);
        Log.i(str, "mIsMobileConfigNeeded: " + this.mIsMobileConfigNeeded + ", mIsMobileRequested: " + this.mIsMobileRequested + ", mIsMobileConnected: " + this.mIsMobileConnected);
        if (this.mIsMobileConfigNeeded && this.mIsMobileRequested && this.mIsMobileConnected && checkMobileConnection(this.mConnectivityManager)) {
            Log.i(str, "set network to mobile network");
            this.mHttp.setNetwork(this.mNetwork);
        } else {
            Log.i(str, "set network to default network");
            this.mHttp.setNetwork(null);
        }
        this.mHttp.open(this.mSharedInfo.getUrl());
        IHttpAdapter.Response request = this.mHttp.request();
        this.mHttp.close();
        return request;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow handleResponse(WorkflowBase.Workflow workflow, int i) throws InvalidHeaderException, UnknownStatusException {
        String msisdnForJibe;
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleResponse: " + i);
        addEventLog(str + ": handleResponse: " + i);
        setLastErrorCode(i);
        int lastErrorCode = getLastErrorCode();
        if (lastErrorCode != 0) {
            if (lastErrorCode == 200) {
                this.m511ErrCount = 0;
                this.m503ErrCount = 0;
            } else {
                if (lastErrorCode == 403) {
                    if (!(workflow instanceof WorkflowBase.FetchHttps)) {
                        return getNextWorkflow(8);
                    }
                    if (String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()).equals(getRcsState())) {
                        return getNextWorkflow(8);
                    }
                    Log.i(str, "403 is received, mMsisdnTryCount:" + this.mMsisdnTryCount);
                    if (isMsisdnForGcNeeded()) {
                        this.mMsisdnTryCount++;
                        if (!this.mMobileNetwork && this.mMsisdnHandler.getMsisdnSkipCount() == 3) {
                            Log.i(str, "Retry counter for msisdn reached. Abort.");
                            return getNextWorkflow(8);
                        }
                        msisdnForJibe = getMsisdnForGc();
                        if ("skip".equals(msisdnForJibe)) {
                            WorkflowMsisdnHandler workflowMsisdnHandler = this.mMsisdnHandler;
                            workflowMsisdnHandler.setMsisdnSkipCount(workflowMsisdnHandler.getMsisdnSkipCount() + 1);
                            Log.i(str, "user enter skip msisdn.");
                            this.mMsisdnHandler.setMsisdnMsguiDisplay(CloudMessageProviderContract.JsonData.TRUE);
                            Intent intent = new Intent();
                            intent.setAction("com.sec.rcs.config.action.SET_SHOW_MSISDN_DIALOG");
                            intent.putExtra("isNeeded", this.mMsisdnHandler.getIsNeeded());
                            ContextExt.sendBroadcastAsUser(this.mContext, intent, ContextExt.ALL);
                            return getNextWorkflow(8);
                        }
                    } else {
                        msisdnForJibe = getMsisdnForJibe();
                    }
                    this.mSharedInfo.setUserMsisdn(msisdnForJibe);
                    if (TextUtils.isEmpty(msisdnForJibe)) {
                        Log.i(str, "msisdn doesn't exist");
                        return getNextWorkflow(8);
                    }
                    Log.i(str, "msisdn exists");
                    return getNextWorkflow(1);
                }
                if (lastErrorCode == 503) {
                    long j = getretryAfterTime();
                    Log.i(str, "m503ErrCount: " + this.m503ErrCount + " retryAfterTime: " + j);
                    int i2 = this.m503ErrCount;
                    if (i2 < 2) {
                        this.m503ErrCount = i2 + 1;
                        Log.i(str, "retry after " + j + " sec");
                        int i3 = (int) j;
                        setValidityTimer(i3);
                        setNextAutoconfigTimeAfter(i3);
                    }
                    return getNextWorkflow(8);
                }
                if (lastErrorCode == 511) {
                    if (workflow instanceof WorkflowBase.FetchHttp) {
                        return getNextWorkflow(3);
                    }
                    Log.i(str, "The token isn't valid: m511ErrCount: " + this.m511ErrCount);
                    setToken("", DiagnosisConstants.RCSA_TDRE.INVALID_TOKEN);
                    int i4 = this.m511ErrCount;
                    if (i4 < 2) {
                        this.m511ErrCount = i4 + 1;
                        Log.i(str, "retry after 10 sec");
                        setValidityTimer(10);
                        setNextAutoconfigTimeAfter(10);
                    }
                    return getNextWorkflow(8);
                }
                if (lastErrorCode == 400) {
                    Log.i(str, "bad request received, set version to zero");
                    setOpMode(WorkflowBase.OpMode.DISABLE_TEMPORARY, null);
                    return getNextWorkflow(8);
                }
                if (lastErrorCode == 401) {
                    setToken("", DiagnosisConstants.RCSA_TDRE.INVALID_IIDTOKEN);
                    Log.i(str, "retry after 43200 sec");
                    setValidityTimer(BADREQERR_RETRY_AFTER_TIME);
                    setNextAutoconfigTimeAfter(BADREQERR_RETRY_AFTER_TIME);
                    return getNextWorkflow(8);
                }
                switch (lastErrorCode) {
                }
            }
            return super.handleResponse(workflow, i);
        }
        if (this.mMno == Mno.SPRINT && (workflow instanceof WorkflowBase.FetchHttp) && !this.mIsEnrichedHeaderFailed) {
            Log.i(str, "http enriched header is failed, retry it with default header");
            this.mIsEnrichedHeaderFailed = true;
            return getNextWorkflow(2);
        }
        return super.handleResponse(workflow, i);
    }

    private String getMsisdnForJibe() {
        int i = this.mMsisdnTryCount;
        if (i >= 1) {
            return null;
        }
        this.mMsisdnTryCount = i + 1;
        String str = LOG_TAG;
        Log.i(str, "need msisdn from telephony/application");
        this.mPowerController.release();
        String msisdnNumber = this.mTelephonyAdapter.getMsisdnNumber();
        Log.i(str, "receive msisdn from telephony/application");
        IMSLog.s(str, "msisdn: " + msisdnNumber);
        this.mPowerController.lock();
        return msisdnNumber;
    }

    private boolean isMsisdnForGcNeeded() {
        return this.mMsisdnTryCount < 3 && !ConfigUtil.isRcsPreConsent(this.mPhoneId) && (this.mMno.isEmeasewaoce() || this.mMno == Mno.CLARO_DOMINICAN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isIidTokenInvalid(String str) {
        if (str != null && !"".equals(str)) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        String str2 = LOG_TAG;
        sb.append(str2);
        sb.append("iidToken is null or empty");
        addEventLog(sb.toString());
        Log.i(str2, "retry after 60 sec, IIDTOKENERR_RETRY_LIMIT is " + this.mIidTokenRetryLimit);
        int i = this.mIidTokenRetryLimit;
        if (i < 3) {
            this.mIidTokenRetryLimit = i + 1;
            setValidityTimer(60);
            setNextAutoconfigTimeAfter(60);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void retryConfigAfterTime() {
        Log.i(LOG_TAG, "retry after 60 sec, IIDTOKENERR_RETRY_LIMIT is " + this.mIidTokenRetryLimit);
        int i = this.mIidTokenRetryLimit;
        if (i < 3) {
            this.mIidTokenRetryLimit = i + 1;
            setValidityTimer(60);
            setNextAutoconfigTimeAfter(60);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getIidToken() {
        String str = LOG_TAG;
        Log.i(str, "need iid token from telephony/application");
        this.mPowerController.release();
        String iidToken = this.mTelephonyAdapter.getIidToken();
        Log.i(str, "receive iid token from telephony/application");
        IMSLog.s(str, "iidToken: " + iidToken);
        this.mPowerController.lock();
        return iidToken;
    }

    private String getMsisdnForGc() {
        String msisdn;
        if (this.mMsisdnHandler.getMsisdnSkipCount() == -1) {
            this.mMsisdnHandler.setMsisdnSkipCount(0);
        }
        this.mPowerController.release();
        if (!TextUtils.isEmpty(this.mMsisdnHandler.getLastMsisdnValue())) {
            msisdn = this.mDialog.getMsisdn(this.mTelephonyAdapter.getSimCountryCode(), this.mMsisdnHandler.getLastMsisdnValue());
        } else {
            msisdn = this.mDialog.getMsisdn(this.mTelephonyAdapter.getSimCountryCode());
        }
        IMSLog.s(LOG_TAG, "msisdn: " + msisdn);
        this.mPowerController.lock();
        return msisdn;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        switch (i) {
            case 1:
                return new WorkflowBase.Initialize() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.2
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Initialize, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        String str = WorkflowJibe.LOG_TAG;
                        IMSLog.i(str, WorkflowJibe.this.mPhoneId, "Initialize:");
                        WorkflowBase.Workflow run = super.run();
                        if (!(run instanceof WorkflowBase.FetchHttp)) {
                            return run;
                        }
                        WorkflowJibe workflowJibe = WorkflowJibe.this;
                        if (workflowJibe.mMobileNetwork || workflowJibe.mIsMobileConfigNeeded) {
                            return run;
                        }
                        Log.i(str, "mMobileNetwork: false, try FetchHttps step");
                        return WorkflowJibe.this.getNextWorkflow(3);
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Initialize
                    protected void init() throws NoInitialDataException {
                        WorkflowJibe workflowJibe = WorkflowJibe.this;
                        workflowJibe.mIsEnrichedHeaderFailed = false;
                        workflowJibe.mHttpResponse = 0;
                        super.init();
                    }
                };
            case 2:
                return new WorkflowBase.FetchHttp() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.3
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttp, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        String str = WorkflowJibe.LOG_TAG;
                        IMSLog.i(str, WorkflowJibe.this.mPhoneId, "FetchHttp:");
                        WorkflowJibe workflowJibe = WorkflowJibe.this;
                        if (ConfigUtil.getGmsVersion(workflowJibe.mContext, workflowJibe.mPhoneId) == 0) {
                            IMSLog.i(str, WorkflowJibe.this.mPhoneId, "GmsVersion is invalid.");
                            WorkflowJibe.this.retryConfigAfterTime();
                            return WorkflowJibe.this.getNextWorkflow(8);
                        }
                        WorkflowJibe workflowJibe2 = WorkflowJibe.this;
                        if (ConfigUtil.isIidTokenNeeded(workflowJibe2.mContext, workflowJibe2.mPhoneId, workflowJibe2.getRcsState())) {
                            WorkflowJibe workflowJibe3 = WorkflowJibe.this;
                            workflowJibe3.mIidToken = workflowJibe3.getIidToken();
                            WorkflowJibe workflowJibe4 = WorkflowJibe.this;
                            if (workflowJibe4.isIidTokenInvalid(workflowJibe4.mIidToken)) {
                                WorkflowJibe workflowJibe5 = WorkflowJibe.this;
                                workflowJibe5.mIidToken = null;
                                return workflowJibe5.getNextWorkflow(8);
                            }
                            WorkflowJibe.this.mIidTokenRetryLimit = 0;
                        }
                        WorkflowBase.Workflow run = super.run();
                        if (!(run instanceof WorkflowBase.FetchHttps)) {
                            WorkflowJibe.this.mIidToken = null;
                        }
                        WorkflowJibe workflowJibe6 = WorkflowJibe.this;
                        workflowJibe6.mHttpResponse = workflowJibe6.mSharedInfo.getHttpResponse().getStatusCode();
                        return run;
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttp
                    protected void setHttpHeader() {
                        if (WorkflowJibe.this.mMno == Mno.SPRINT) {
                            Log.i(WorkflowJibe.LOG_TAG, "mIsEnrichedHeaderFailed: " + WorkflowJibe.this.mIsEnrichedHeaderFailed);
                            WorkflowJibe workflowJibe = WorkflowJibe.this;
                            if (!workflowJibe.mIsEnrichedHeaderFailed) {
                                workflowJibe.mSharedInfo.setHttpSPR();
                                return;
                            } else {
                                workflowJibe.mSharedInfo.resetHttpSPR();
                                return;
                            }
                        }
                        super.setHttpHeader();
                    }
                };
            case 3:
                return new WorkflowBase.FetchHttps() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.4
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttps, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        String str;
                        String str2 = WorkflowJibe.LOG_TAG;
                        IMSLog.i(str2, WorkflowJibe.this.mPhoneId, "FetchHttps:");
                        WorkflowJibe workflowJibe = WorkflowJibe.this;
                        if (ConfigUtil.getGmsVersion(workflowJibe.mContext, workflowJibe.mPhoneId) == 0) {
                            IMSLog.i(str2, WorkflowJibe.this.mPhoneId, "GmsVersion is invalid.");
                            WorkflowJibe.this.retryConfigAfterTime();
                            return WorkflowJibe.this.getNextWorkflow(8);
                        }
                        WorkflowJibe workflowJibe2 = WorkflowJibe.this;
                        if (ConfigUtil.isIidTokenNeeded(workflowJibe2.mContext, workflowJibe2.mPhoneId, workflowJibe2.getRcsState()) && ((str = WorkflowJibe.this.mIidToken) == null || "".equals(str))) {
                            WorkflowJibe workflowJibe3 = WorkflowJibe.this;
                            workflowJibe3.mIidToken = workflowJibe3.getIidToken();
                            WorkflowJibe workflowJibe4 = WorkflowJibe.this;
                            if (workflowJibe4.isIidTokenInvalid(workflowJibe4.mIidToken)) {
                                WorkflowJibe workflowJibe5 = WorkflowJibe.this;
                                workflowJibe5.mIidToken = null;
                                return workflowJibe5.getNextWorkflow(8);
                            }
                            WorkflowJibe.this.mIidTokenRetryLimit = 0;
                        }
                        return super.run();
                    }

                    /* JADX WARN: Removed duplicated region for block: B:33:0x0257  */
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttps
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    protected void setHttps() {
                        /*
                            Method dump skipped, instructions count: 680
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.config.workflow.WorkflowJibe.AnonymousClass4.setHttps():void");
                    }
                };
            case 4:
                return new WorkflowBase.Authorize() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.6
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Authorize, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowJibe.LOG_TAG, WorkflowJibe.this.mPhoneId, "Authorize:");
                        WorkflowBase.Workflow run = super.run();
                        if (run instanceof WorkflowBase.Finish) {
                            WorkflowJibe.this.mSharedInfo.getHttpResponse().setStatusCode(700);
                        }
                        return run;
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Authorize
                    protected String getOtp() {
                        WorkflowJibe workflowJibe;
                        int i2;
                        WorkflowJibe workflowJibe2;
                        int i3;
                        String smsType = ConfigUtil.getSmsType(WorkflowJibe.this.mPhoneId);
                        IMSLog.i(WorkflowJibe.LOG_TAG, WorkflowJibe.this.mPhoneId, "otpSmsType: " + smsType + " mAuthTryCount: " + WorkflowJibe.this.mAuthTryCount + " mAuthHiddenTryCount: " + WorkflowJibe.this.mAuthHiddenTryCount);
                        StringBuilder sb = new StringBuilder();
                        sb.append(WorkflowJibe.this.mPhoneId);
                        sb.append(",OST:");
                        sb.append(smsType);
                        IMSLog.c(LogClass.WFJ_OTP_SMS_TYPE, sb.toString());
                        if ("text".equals(smsType) && (i3 = (workflowJibe2 = WorkflowJibe.this).mAuthTryCount) < 1) {
                            workflowJibe2.mAuthTryCount = i3 + 1;
                            return workflowJibe2.mTelephonyAdapter.getOtp();
                        }
                        if (!"binary".equals(smsType) || (i2 = (workflowJibe = WorkflowJibe.this).mAuthHiddenTryCount) >= 3) {
                            return null;
                        }
                        workflowJibe.mAuthHiddenTryCount = i2 + 1;
                        return workflowJibe.mTelephonyAdapter.getPortOtp();
                    }
                };
            case 5:
                return new WorkflowBase.FetchOtp() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.7
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchOtp, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowJibe.LOG_TAG, WorkflowJibe.this.mPhoneId, "FetchOtp:");
                        return super.run();
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchOtp
                    protected void setHttp() {
                        super.setHttp();
                        if (WorkflowJibe.this.mMno.isEmeasewaoce()) {
                            WorkflowJibe workflowJibe = WorkflowJibe.this;
                            workflowJibe.mCookieHandler.handleCookie(workflowJibe.mSharedInfo.getHttpResponse());
                        } else {
                            SharedInfo sharedInfo = WorkflowJibe.this.mSharedInfo;
                            sharedInfo.addHttpHeader(HttpController.HEADER_COOKIE, sharedInfo.getHttpResponse().getHeader().get(HttpController.HEADER_SET_COOKIE));
                        }
                    }
                };
            case 6:
                return new WorkflowBase.Parse() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.5
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Parse, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowJibe.LOG_TAG, WorkflowJibe.this.mPhoneId, "Parse:");
                        return super.run();
                    }
                };
            case 7:
                return new WorkflowBase.Store() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.8
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Store, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        String str = WorkflowJibe.LOG_TAG;
                        IMSLog.i(str, WorkflowJibe.this.mPhoneId, "Store:");
                        Map<String, String> parsedXml = WorkflowJibe.this.mSharedInfo.getParsedXml();
                        Log.i(str, String.format(Locale.US, "Store: version [%d] => [%d]", Integer.valueOf(WorkflowJibe.this.getVersion()), Integer.valueOf(WorkflowJibe.this.getVersion(parsedXml))));
                        WorkflowBase.OpMode rcsDisabledState = WorkflowJibe.this.getRcsDisabledState(parsedXml);
                        if (WorkflowJibe.this.isValidRcsDisabledState(rcsDisabledState)) {
                            WorkflowJibe.this.setOpMode(rcsDisabledState, parsedXml);
                            return WorkflowJibe.this.getNextWorkflow(8);
                        }
                        WorkflowParamHandler.UserAccept userAccept = WorkflowParamHandler.UserAccept.ACCEPT;
                        WorkflowParamHandler.UserAccept userAcceptDetailed = (ConfigUtil.isRcsPreConsent(WorkflowJibe.this.mPhoneId) || !WorkflowJibe.this.mMno.isEmeasewaoce()) ? userAccept : WorkflowJibe.this.mParamHandler.getUserAcceptDetailed(parsedXml);
                        if (userAcceptDetailed == WorkflowParamHandler.UserAccept.NON_DEFAULT_MSG_APP) {
                            WorkflowJibe.this.setOpMode(WorkflowBase.OpMode.DISABLE_RCS_BY_USER, null);
                        } else {
                            WorkflowJibe.this.mParamHandler.setOpModeWithUserAccept(userAcceptDetailed == userAccept, parsedXml, WorkflowBase.OpMode.DISABLE);
                        }
                        if (WorkflowJibe.this.getOpMode() == WorkflowBase.OpMode.ACTIVE || (WorkflowJibe.this.getOpMode() == WorkflowBase.OpMode.DISABLE_TEMPORARY && WorkflowJibe.this.getValidity() > 0)) {
                            WorkflowJibe workflowJibe = WorkflowJibe.this;
                            workflowJibe.setValidityTimer(workflowJibe.getValidity());
                        }
                        WorkflowJibe.this.mMsisdnHandler.setMsisdnSkipCount(0);
                        WorkflowJibe.this.setTcUserAccept(userAcceptDetailed != userAccept ? 0 : 1);
                        return WorkflowJibe.this.getNextWorkflow(8);
                    }
                };
            case 8:
                return new WorkflowBase.Finish() { // from class: com.sec.internal.ims.config.workflow.WorkflowJibe.9
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Finish, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() {
                        IMSLog.i(WorkflowJibe.LOG_TAG, WorkflowJibe.this.mPhoneId, "Finish:");
                        return null;
                    }
                };
            default:
                Log.i(LOG_TAG, "getNextWorkflow: Unexpected type [" + i + "] !!!");
                return null;
        }
    }
}
