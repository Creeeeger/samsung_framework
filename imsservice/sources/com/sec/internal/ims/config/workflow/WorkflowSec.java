package com.sec.internal.ims.config.workflow;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.sqlite.SQLiteFullException;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapterJibeAndSec;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceSec;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.exception.EmptyBodyAndCookieException;
import com.sec.internal.ims.config.exception.InvalidHeaderException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.config.workflow.WorkflowSec;
import com.sec.internal.ims.core.handler.secims.imsCommonStruc.Id;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes.dex */
public class WorkflowSec extends WorkflowUpBase {
    static final int INTERNALERR_RETRY_MAX_COUNT = 1;
    static final int INTERNAL_503_ERR_RETRY_MAX_COUNT = 1;
    static final int INTERNAL_511_ERR_RETRY_MAX_COUNT = 1;
    static final String OTP_SMS_BINARY_TYPE = "binary";
    static final String OTP_SMS_TEXT_TYPE = "text";
    static final int OTP_SMS_TIME_OUT = 700;
    static final int RESET_RETRY_MAX_COUNT = 3;
    static final int RETRY_INTERVAL_DAILY = 86400;
    static final int STORAGE_STATE_READY = 1;
    private int mAuthHiddenTryCount;
    private int mAuthTryCount;
    protected int mHttpResponse;
    BroadcastReceiver mIntentReceiver;
    int mResetRetryCount;
    int mTrialCount;
    protected static final String LOG_TAG = WorkflowSec.class.getSimpleName();
    static final int[] RETRY_INTERVAL = {Id.REQUEST_SIP_DIALOG_SEND_SIP, 3600, 7200, 14400, 28800};
    static final List<String> VALID_REJECT_CODES = Arrays.asList("2", DiagnosisConstants.RCSM_ORST_REGI, "6", "8");

    public WorkflowSec(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDeviceSec(context, iConfigModule, i), new StorageAdapter(), new HttpAdapterJibeAndSec(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule), i);
        this.mHttpResponse = 0;
        this.mAuthTryCount = 0;
        this.mAuthHiddenTryCount = 0;
        this.mResetRetryCount = 0;
        this.mIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                String str = WorkflowSec.LOG_TAG;
                IMSLog.i(str, WorkflowSec.this.mPhoneId, "onReceive: " + action);
                if (ImsConstants.Intents.INTENT_ACTION_REGIST_REJECT.equals(action) || ImsConstants.Intents.INTENT_ACTION_LTE_REJECT.equals(action)) {
                    String stringExtra = intent.getStringExtra(ImsConstants.Intents.EXTRA_CAUSE_KEY);
                    IMSLog.c(LogClass.WFS_LTE_REJECT, WorkflowSec.this.mPhoneId + ", LTE reject by cause " + stringExtra);
                    if (WorkflowSec.VALID_REJECT_CODES.contains(stringExtra)) {
                        WorkflowSec workflowSec = WorkflowSec.this;
                        workflowSec.mResetRetryCount = 0;
                        workflowSec.mModule.setAcsTryReason(workflowSec.mPhoneId, DiagnosisConstants.RCSA_ATRE.REJECT_LTE);
                        if (WorkflowSec.this.mStorage.getState() != 1) {
                            Log.i(str, "StorageAdapter's state is idle");
                            WorkflowSec.this.removeMessages(8);
                            WorkflowSec workflowSec2 = WorkflowSec.this;
                            workflowSec2.sendMessageDelayed(workflowSec2.obtainMessage(8), 10000L);
                            return;
                        }
                        WorkflowSec.this.resetAutoConfigInfo(Boolean.TRUE);
                    }
                }
            }
        };
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ImsConstants.Intents.INTENT_ACTION_REGIST_REJECT);
        intentFilter.addAction(ImsConstants.Intents.INTENT_ACTION_LTE_REJECT);
        this.mContext.registerReceiver(this.mIntentReceiver, intentFilter);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleMessage: " + message.what);
        addEventLog(str + "handleMessage: " + message.what);
        int i = message.what;
        if (i == 0) {
            this.mStartForce = true;
        } else if (i != 1) {
            if (i == 5) {
                if (DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, this.mPhoneId) == 1) {
                    IMSLog.i(str, this.mPhoneId, "sms default application is changed to samsung");
                    resetAutoConfigInfo(Boolean.FALSE);
                    this.mModule.setAcsTryReason(this.mPhoneId, DiagnosisConstants.RCSA_ATRE.CHANGE_MSG_APP);
                    return;
                } else {
                    IMSLog.i(str, this.mPhoneId, "sms default application is changed to non-samsung");
                    setOpMode(WorkflowBase.OpMode.DISABLE_RCS_BY_USER, null);
                    return;
                }
            }
            if (i == 8) {
                if (checkMobileConnection(this.mConnectivityManager)) {
                    Log.i(str, "ignore auto config reset in mobile connection state");
                    return;
                }
                this.mResetRetryCount++;
                if (this.mStorage.getState() != 1 && this.mResetRetryCount < 3) {
                    Log.i(str, "StorageAdapter's state is idle");
                    removeMessages(8);
                    sendMessageDelayed(obtainMessage(8), 10000L);
                    return;
                }
                resetAutoConfigInfo(Boolean.TRUE);
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
        this.mModule.getHandler().removeMessages(3, Integer.valueOf(this.mPhoneId));
        this.mAuthTryCount = 0;
        this.mAuthHiddenTryCount = 0;
        this.mSharedInfo.setInternalErrRetryCount(0);
        this.mSharedInfo.setInternal503ErrRetryCount(0);
        this.mSharedInfo.setInternal511ErrRetryCount(0);
        this.mPowerController.lock();
        this.mOldVersion = getVersion();
        if (needScheduleAutoconfig(this.mPhoneId)) {
            scheduleAutoconfig(this.mOldVersion);
        }
        this.mNewVersion = getVersion();
        IMSLog.i(str, this.mPhoneId, "oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion);
        IMSLog.i(str, this.mPhoneId, "AutoConfig: finish");
        if (this.mOldVersion >= 0 && !isValidRcsDisabledState(getRcsDisabledState())) {
            this.mTelephonyAdapter.notifyAutoConfigurationListener(52, this.mNewVersion > 0);
        }
        setCompleted(true);
        this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
        this.mStartForce = false;
        this.mPowerController.release();
        this.mIsConfigOngoing = false;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void reInitIfNeeded() {
        if (this.mTelephonyAdapter.isReady()) {
            String identityByPhoneId = this.mTelephonyAdapter.getIdentityByPhoneId(this.mPhoneId);
            if (TextUtils.isEmpty(identityByPhoneId) || TextUtils.equals(this.mIdentity, identityByPhoneId)) {
                return;
            }
            String str = LOG_TAG;
            IMSLog.i(str, this.mPhoneId, "reInitIfNeeded: identity changed, re-init storage");
            IMSLog.c(LogClass.WFS_STORAGE_RE_INIT, this.mPhoneId + ",STOR_RI");
            addEventLog(str + ": reInitIfNeeded: identity changed, re-init storage");
            resetStorage();
        }
    }

    void resetAutoConfigInfo(Boolean bool) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "resetAutoConfigInfo");
        IMSLog.c(LogClass.WFB_RESET_CONFIG, this.mPhoneId + ",resetAutoConfigInfo");
        if (bool.booleanValue()) {
            setVersion(WorkflowBase.OpMode.DISABLE_TEMPORARY.value());
        }
        WorkflowBase.OpMode opMode = WorkflowBase.OpMode.DISABLE_TEMPORARY;
        setRcsState(String.valueOf(opMode.value()));
        setRcsDisabledState("");
        setValidity(opMode.value());
        cancelValidityTimer();
        setNextAutoconfigTime(0L);
        IConfigModule iConfigModule = this.mModule;
        if (iConfigModule != null) {
            iConfigModule.getAcsConfig(this.mPhoneId).setAcsCompleteStatus(false);
            this.mModule.getAcsConfig(this.mPhoneId).setForceAcs(true);
        }
    }

    int getTrialInterval() {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "mTrialCount=" + this.mTrialCount);
        int i = this.mTrialCount;
        int[] iArr = RETRY_INTERVAL;
        if (i < iArr.length) {
            return iArr[i];
        }
        Log.i(str, "Trial Count is bigger than retry count. So retry once a day");
        return -1;
    }

    void retryExpBackoff() {
        WorkflowBase.OpMode rcsDisabledState = getRcsDisabledState();
        int version = getVersion();
        if (rcsDisabledState == WorkflowBase.OpMode.DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE || version == WorkflowBase.OpMode.DISABLE_TEMPORARY.value()) {
            String str = LOG_TAG;
            IMSLog.i(str, this.mPhoneId, "retryExpBackoff: rcsDisabledState: " + convertRcsDisabledStateToValue(rcsDisabledState) + ", Current version: " + version);
            int trialInterval = getTrialInterval();
            if (this.mLastErrorCode == 403) {
                Log.i(str, "mLastErrorCode is 403, No retry");
                cancelValidityTimer();
                return;
            }
            if (trialInterval < 0) {
                Log.i(str, "retryExpBackoff: Once a day");
                IMSLog.c(LogClass.WFS_RETRY_DAILY, this.mPhoneId + ",RID");
                addEventLog(str + ": retryExpBackoff: Once a day");
                setValidityTimer(86400);
                setNextAutoconfigTimeAfter(86400);
                return;
            }
            Log.i(str, "retryExpBackoff: interval: " + trialInterval + ImsConstants.RCS_AS.SEC);
            IMSLog.c(LogClass.WFS_RETRY_DAILY, this.mPhoneId + ",RBOI:" + trialInterval);
            addEventLog(str + ": retryExpBackoff: interval: " + trialInterval + ImsConstants.RCS_AS.SEC);
            setValidityTimer(trialInterval);
            setNextAutoconfigTimeAfter(trialInterval);
            this.mTrialCount = this.mTrialCount + 1;
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase, com.sec.internal.ims.config.workflow.WorkflowBase
    void work() {
        WorkflowBase.Workflow nextWorkflow;
        WorkflowBase.Workflow nextWorkflow2 = getNextWorkflow(1);
        for (int i = WorkflowBase.AUTO_CONFIG_MAX_FLOWCOUNT; nextWorkflow2 != null && i > 0; i--) {
            try {
                nextWorkflow2 = nextWorkflow2.run();
            } catch (SQLiteFullException e) {
                Log.i(LOG_TAG, "SQLiteFullException occur:" + e.getMessage());
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
                Log.i(LOG_TAG, "UnknownStatusException: " + e3.getMessage());
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
                    Log.i(LOG_TAG, "unknown exception occur:" + e4.getMessage());
                }
                Log.i(LOG_TAG, "wait 1 sec and retry");
                sleep(1000L);
                nextWorkflow = getNextWorkflow(1);
                e4.printStackTrace();
                nextWorkflow2 = nextWorkflow;
            }
        }
        if (ImsRegistry.getBoolean(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_SUPPORT_EXPONENTIAL_RETRY_ACS, false)) {
            retryExpBackoff();
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow handleResponse(WorkflowBase.Workflow workflow, int i) throws InvalidHeaderException, UnknownStatusException {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleResponse: " + i);
        addEventLog(str + "handleResponse: " + i);
        this.mLastErrorCode = i;
        if (i == 511) {
            if (workflow instanceof WorkflowBase.FetchHttp) {
                return getNextWorkflow(3);
            }
            setToken("", DiagnosisConstants.RCSA_TDRE.INVALID_TOKEN);
            removeValidToken();
            int internal511ErrRetryCount = this.mSharedInfo.getInternal511ErrRetryCount() + 1;
            if (internal511ErrRetryCount <= 1) {
                IMSLog.i(str, this.mPhoneId, "The token is no longer valid, retry511Cnt: " + internal511ErrRetryCount);
                this.mSharedInfo.setInternal511ErrRetryCount(internal511ErrRetryCount);
                return getNextWorkflow(1);
            }
            IMSLog.i(str, this.mPhoneId, "The token is no longer valid, finish");
            return getNextWorkflow(8);
        }
        if (i == 403 && (workflow instanceof WorkflowBase.FetchHttps)) {
            if (this.mMobileNetwork && this.mHttpResponse != 511) {
                setOpMode(WorkflowBase.OpMode.DISABLE_TEMPORARY, null);
                IMSLog.i(str, this.mPhoneId, "403 received. Set version to 0. Finish");
                return getNextWorkflow(8);
            }
            if (!this.mSharedInfo.getHttpParams().containsKey("msisdn")) {
                IMSLog.i(str, this.mPhoneId, "no msisdn. try to get user");
                this.mPowerController.release();
                String msisdn = this.mDialog.getMsisdn(this.mTelephonyAdapter.getSimCountryCode());
                this.mPowerController.lock();
                if (TextUtils.isEmpty(msisdn)) {
                    Log.i(str, "user didn't enter msisdn finish process");
                    return getNextWorkflow(8);
                }
                this.mSharedInfo.setUserMsisdn(msisdn);
                return getNextWorkflow(1);
            }
            if (!TextUtils.isEmpty(this.mSharedInfo.getUserMsisdn())) {
                IMSLog.i(str, this.mPhoneId, "msisdn is wrong from user, try it again after 300 sec");
                setValidityTimer(300);
                return getNextWorkflow(8);
            }
            return super.handleResponse(workflow, i);
        }
        if (i == 500) {
            IMSLog.i(str, this.mPhoneId, "internal server error");
            int internalErrRetryCount = this.mSharedInfo.getInternalErrRetryCount() + 1;
            if (internalErrRetryCount <= 1) {
                Log.i(str, "retryCnt: " + internalErrRetryCount);
                this.mSharedInfo.setInternalErrRetryCount(internalErrRetryCount);
                return getNextWorkflow(1);
            }
            return getNextWorkflow(8);
        }
        if (i == 503) {
            IMSLog.i(str, this.mPhoneId, "service unavailable");
            int internal503ErrRetryCount = this.mSharedInfo.getInternal503ErrRetryCount() + 1;
            if (internal503ErrRetryCount <= 1) {
                Log.i(str, "retry503Cnt: " + internal503ErrRetryCount);
                this.mSharedInfo.setInternal503ErrRetryCount(internal503ErrRetryCount);
                sleep(getretryAfterTime() * 1000);
                return getNextWorkflow(3);
            }
            return getNextWorkflow(8);
        }
        return super.handleResponse(workflow, i);
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowSec$9, reason: invalid class name */
    class AnonymousClass9 extends WorkflowBase.Finish {
        AnonymousClass9() {
            super();
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Finish, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            Optional.ofNullable(WorkflowSec.this.mSharedInfo.getHttpResponse()).map(new Function() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec$9$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Integer.valueOf(((IHttpAdapter.Response) obj).getStatusCode());
                }
            }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec$9$$ExternalSyntheticLambda1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WorkflowSec.AnonymousClass9.this.lambda$run$0((Integer) obj);
                }
            });
            IMSLog.i(WorkflowSec.LOG_TAG, WorkflowSec.this.mPhoneId, "workflow is finished");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0(Integer num) {
            WorkflowSec.this.setLastErrorCode(num.intValue());
            WorkflowSec.this.mStorage.write(ConfigConstants.PATH.INFO_LAST_ERROR_CODE, String.valueOf(num));
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        switch (i) {
            case 1:
                return new WorkflowBase.Initialize() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec.2
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Initialize, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        String str = WorkflowSec.LOG_TAG;
                        IMSLog.i(str, WorkflowSec.this.mPhoneId, "Initialize:");
                        WorkflowSec.this.mHttpResponse = 0;
                        WorkflowBase.Workflow run = super.run();
                        if (!(run instanceof WorkflowBase.FetchHttp)) {
                            return run;
                        }
                        if (WorkflowSec.this.mStorage.getState() != 1) {
                            IMSLog.i(str, WorkflowSec.this.mPhoneId, "getNextWorkflow: mStorage is not ready");
                            IMSLog.c(LogClass.WFS_STORAGE_NOT_READY, WorkflowSec.this.mPhoneId + ",STOR_NR");
                            WorkflowSec.this.addEventLog(str + ": getNextWorkflow: mStorage is not ready");
                            return WorkflowSec.this.getNextWorkflow(8);
                        }
                        if (WorkflowSec.this.mMobileNetwork) {
                            return run;
                        }
                        Log.i(str, "mMobileNetwork: false, try FetchHttps step");
                        return WorkflowSec.this.getNextWorkflow(3);
                    }
                };
            case 2:
                return new WorkflowBase.FetchHttp() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec.3
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttp, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowSec.LOG_TAG, WorkflowSec.this.mPhoneId, "FetchHttp:");
                        WorkflowBase.Workflow run = super.run();
                        WorkflowSec workflowSec = WorkflowSec.this;
                        workflowSec.mHttpResponse = workflowSec.mSharedInfo.getHttpResponse().getStatusCode();
                        return run;
                    }
                };
            case 3:
                return new WorkflowBase.FetchHttps() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec.4
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttps, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowSec.LOG_TAG, WorkflowSec.this.mPhoneId, "FetchHttps:");
                        return super.run();
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttps
                    protected void setHttps() {
                        WorkflowSec.this.mSharedInfo.setHttpsDefault();
                        if (WorkflowSec.this.mParamHandler.isConfigProxy()) {
                            WorkflowSec.this.mSharedInfo.changeConfigProxyUriForHttp();
                            WorkflowSec.this.mSharedInfo.setHttpProxyDefault();
                        }
                        String str = WorkflowSec.LOG_TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("FetchHttps: NetType = ");
                        sb.append(WorkflowSec.this.mTelephonyAdapter.getNetType());
                        sb.append(", Identity = ");
                        WorkflowSec workflowSec = WorkflowSec.this;
                        sb.append(workflowSec.mTelephonyAdapter.getIdentityByPhoneId(workflowSec.mPhoneId));
                        sb.append(", SipUri = ");
                        sb.append(WorkflowSec.this.mTelephonyAdapter.getSipUri());
                        IMSLog.s(str, sb.toString());
                        WorkflowSec workflowSec2 = WorkflowSec.this;
                        workflowSec2.mSharedInfo.addHttpParam("vers", String.valueOf(workflowSec2.getVersion()));
                        WorkflowSec workflowSec3 = WorkflowSec.this;
                        workflowSec3.mSharedInfo.addHttpParam("IMSI", workflowSec3.mTelephonyAdapter.getImsi());
                        WorkflowSec workflowSec4 = WorkflowSec.this;
                        workflowSec4.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, workflowSec4.mTelephonyAdapter.getImei());
                        WorkflowSec.this.mSharedInfo.addHttpParam("terminal_model", ConfigConstants.BUILD.TERMINAL_MODEL);
                        WorkflowSec workflowSec5 = WorkflowSec.this;
                        workflowSec5.mSharedInfo.addHttpParam("default_sms_app", ConfigUtil.isSecDmaPackageInuse(workflowSec5.mContext, workflowSec5.mPhoneId) ? "1" : "2");
                        WorkflowSec workflowSec6 = WorkflowSec.this;
                        if (!workflowSec6.mMobileNetwork || workflowSec6.mHttpResponse == 511) {
                            if (!TextUtils.isEmpty(workflowSec6.mTelephonyAdapter.getMsisdn())) {
                                WorkflowSec workflowSec7 = WorkflowSec.this;
                                workflowSec7.mSharedInfo.addHttpParam("msisdn", workflowSec7.mParamHandler.encodeRFC3986(workflowSec7.mTelephonyAdapter.getMsisdn()));
                            } else {
                                IMSLog.i(str, "FetchHttps: MSISDN is null, using the PAU");
                                WorkflowSec workflowSec8 = WorkflowSec.this;
                                String string = ImsSharedPrefHelper.getString(workflowSec8.mPhoneId, workflowSec8.mContext, IConfigModule.MSISDN_FROM_PAU, "IMSI_" + SimManagerFactory.getImsiFromPhoneId(WorkflowSec.this.mPhoneId), "");
                                WorkflowSec.this.addEventLog(str + ": pauFromSP");
                                IMSLog.s(str, "pauFromSP: " + string);
                                IMSLog.c(LogClass.WFS_PAU_FROM_SP, WorkflowSec.this.mPhoneId + "PAU_FROM_SP");
                                if (!TextUtils.isEmpty(string)) {
                                    WorkflowSec workflowSec9 = WorkflowSec.this;
                                    workflowSec9.mSharedInfo.addHttpParam("msisdn", workflowSec9.mParamHandler.encodeRFC3986(string));
                                }
                            }
                            if (!TextUtils.isEmpty(WorkflowSec.this.mSharedInfo.getUserMsisdn())) {
                                WorkflowSec workflowSec10 = WorkflowSec.this;
                                SharedInfo sharedInfo = workflowSec10.mSharedInfo;
                                sharedInfo.addHttpParam("msisdn", workflowSec10.mParamHandler.encodeRFC3986(sharedInfo.getUserMsisdn()));
                            }
                            WorkflowSec workflowSec11 = WorkflowSec.this;
                            workflowSec11.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SMS_PORT, ConfigUtil.getSmsPort(workflowSec11.mPhoneId));
                            String token = WorkflowSec.this.getToken();
                            if (TextUtils.isEmpty(token)) {
                                WorkflowSec workflowSec12 = WorkflowSec.this;
                                String string2 = ImsSharedPrefHelper.getString(workflowSec12.mPhoneId, workflowSec12.mContext, ImsSharedPrefHelper.VALID_RCS_CONFIG, "IMSI_" + SimManagerFactory.getImsiFromPhoneId(WorkflowSec.this.mPhoneId), "");
                                if (!TextUtils.isEmpty(string2)) {
                                    Log.i(str, "use last valid token");
                                    token = string2;
                                }
                            }
                            WorkflowSec.this.mSharedInfo.addHttpParam("token", token);
                        }
                        WorkflowSec.this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
                        WorkflowSec workflowSec13 = WorkflowSec.this;
                        workflowSec13.mSharedInfo.addHttpParam("terminal_sw_version", workflowSec13.mParamHandler.getModelInfoFromBuildVersion(ConfigUtil.getModelName(workflowSec13.mPhoneId), ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 8, true));
                        WorkflowSec workflowSec14 = WorkflowSec.this;
                        workflowSec14.mSharedInfo.addHttpParam("rcs_version", workflowSec14.mRcsVersion);
                        WorkflowSec.this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_PROFILE, "UP_1.0");
                        WorkflowSec.this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.PROVISIONING_VERSION, "2.0");
                        WorkflowSec workflowSec15 = WorkflowSec.this;
                        workflowSec15.setRcsState(workflowSec15.convertRcsStateWithSpecificParam());
                        WorkflowSec workflowSec16 = WorkflowSec.this;
                        workflowSec16.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_STATE, workflowSec16.getRcsState());
                        if (WorkflowSec.this.mStartForce && !String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()).equals(WorkflowSec.this.getRcsState())) {
                            Log.i(str, "mStartForce: true, vers: 0");
                            WorkflowSec.this.mSharedInfo.addHttpParam("vers", "0");
                        }
                        if (WorkflowSec.this.getOpMode() == WorkflowBase.OpMode.DORMANT) {
                            Log.i(str, "use backup version in case of dormant, vers: " + WorkflowSec.this.getVersionBackup());
                            WorkflowSec workflowSec17 = WorkflowSec.this;
                            workflowSec17.mSharedInfo.addHttpParam("vers", workflowSec17.getVersionBackup());
                        }
                    }
                };
            case 4:
                return new WorkflowBase.Authorize() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec.6
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Authorize, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowSec.LOG_TAG, WorkflowSec.this.mPhoneId, "Authorize:");
                        WorkflowBase.Workflow run = super.run();
                        if (run instanceof WorkflowBase.Finish) {
                            WorkflowSec.this.mSharedInfo.getHttpResponse().setStatusCode(700);
                        }
                        return run;
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Authorize
                    protected String getOtp() {
                        String portOtp;
                        String smsType = ConfigUtil.getSmsType(WorkflowSec.this.mPhoneId);
                        if ("text".equals(smsType)) {
                            if (WorkflowSec.this.mAuthTryCount < 1) {
                                WorkflowSec.this.mAuthTryCount++;
                                portOtp = WorkflowSec.this.mTelephonyAdapter.getOtp();
                            }
                            portOtp = null;
                        } else {
                            if ("binary".equals(smsType) && WorkflowSec.this.mAuthHiddenTryCount < 3) {
                                WorkflowSec.this.mAuthHiddenTryCount++;
                                portOtp = WorkflowSec.this.mTelephonyAdapter.getPortOtp();
                            }
                            portOtp = null;
                        }
                        Log.i(WorkflowSec.LOG_TAG, "otp: " + IMSLog.checker(portOtp));
                        return portOtp;
                    }
                };
            case 5:
                return new WorkflowBase.FetchOtp() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec.7
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchOtp, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowSec.LOG_TAG, WorkflowSec.this.mPhoneId, "FetchOtp:");
                        return super.run();
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchOtp
                    protected void setHttp() {
                        super.setHttp();
                        SharedInfo sharedInfo = WorkflowSec.this.mSharedInfo;
                        sharedInfo.addHttpHeader(HttpController.HEADER_COOKIE, sharedInfo.getHttpResponse().getHeader().get(HttpController.HEADER_SET_COOKIE));
                    }
                };
            case 6:
                return new WorkflowBase.Parse() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec.5
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Parse, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowSec.LOG_TAG, WorkflowSec.this.mPhoneId, "Parse:");
                        return super.run();
                    }
                };
            case 7:
                return new WorkflowBase.Store() { // from class: com.sec.internal.ims.config.workflow.WorkflowSec.8
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Store, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        String str = WorkflowSec.LOG_TAG;
                        IMSLog.i(str, WorkflowSec.this.mPhoneId, "Store:");
                        Map<String, String> parsedXml = WorkflowSec.this.mSharedInfo.getParsedXml();
                        int version = WorkflowSec.this.getVersion(parsedXml);
                        Log.i(str, String.format(Locale.US, "Store: version [%s] => [%s]", Integer.valueOf(WorkflowSec.this.getVersion()), Integer.valueOf(version)));
                        if (version == 0) {
                            WorkflowSec workflowSec = WorkflowSec.this;
                            workflowSec.mModule.setAcsTryReason(workflowSec.mPhoneId, DiagnosisConstants.RCSA_ATRE.VERSION_ZERO);
                        }
                        WorkflowBase.OpMode rcsDisabledState = WorkflowSec.this.getRcsDisabledState(parsedXml);
                        if (WorkflowSec.this.isValidRcsDisabledState(rcsDisabledState)) {
                            WorkflowSec.this.setOpMode(rcsDisabledState, parsedXml);
                            return WorkflowSec.this.getNextWorkflow(8);
                        }
                        WorkflowSec workflowSec2 = WorkflowSec.this;
                        workflowSec2.setOpMode(workflowSec2.getOpMode(parsedXml), parsedXml);
                        if (WorkflowSec.this.getOpMode() == WorkflowBase.OpMode.ACTIVE) {
                            WorkflowSec workflowSec3 = WorkflowSec.this;
                            workflowSec3.setValidityTimer(workflowSec3.getValidity());
                        }
                        return WorkflowSec.this.getNextWorkflow(8);
                    }
                };
            case 8:
                return new AnonymousClass9();
            default:
                return null;
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void cleanup() {
        super.cleanup();
        this.mContext.unregisterReceiver(this.mIntentReceiver);
    }
}
