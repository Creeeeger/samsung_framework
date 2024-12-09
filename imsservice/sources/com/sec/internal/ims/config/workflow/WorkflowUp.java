package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteFullException;
import android.os.CountDownTimer;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsCallUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.config.ConfigContract;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapterUp;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceUp;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.exception.EmptyBodyAndCookieException;
import com.sec.internal.ims.config.exception.InvalidHeaderException;
import com.sec.internal.ims.config.exception.InvalidXmlException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.config.workflow.WorkflowParamHandler;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class WorkflowUp extends WorkflowUpBase {
    static final String CHAT_AUTH_FULL_PATH = "root/application/1/services/ChatAuth";
    protected static final int INTERNAL403ERR_RETRY_MAX_COUNT = 60;
    protected static final int INTERNAL404ERR_RETRY_MAX_COUNT = 30;
    protected static final int UNKNOWNERR_RETRY_MAX_COUNT = 70;
    protected int mAuthHiddenTryCount;
    protected int mAuthTryCount;
    protected boolean mIsHeaderEnrichment;
    protected boolean mIsXmlReceived;
    protected CountDownTimer mMsisdnTimer;
    protected String mSmsPort;
    private static final String LOG_TAG = WorkflowUp.class.getSimpleName();
    protected static final int[] mExponentialInternalErrorRetry = {5, 60, 300, 600, 1800, 7200, 21600, 43200, 86400};

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        return null;
    }

    public WorkflowUp(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDeviceUp(context, iConfigModule, i), new StorageAdapter(), new HttpAdapterUp(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule, i), i);
        this.mMsisdnTimer = null;
        this.mIsXmlReceived = false;
        this.mSmsPort = null;
        this.mAuthTryCount = 0;
        this.mAuthHiddenTryCount = 0;
        this.mIsHeaderEnrichment = false;
        this.mSharedInfo.setInternal403ErrRetryCount(0);
        this.mSharedInfo.setInternal404ErrRetryCount(0);
        this.mSharedInfo.setUnknownErrRetryCount(0);
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
            if (i != 5) {
                if (i == 7) {
                    Log.i(str, "show MSISDN dialog,");
                    sendEmptyMessage(1);
                    return;
                } else {
                    super.handleMessage(message);
                    return;
                }
            }
            if (DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, this.mPhoneId) == 1) {
                Log.i(str, "sms default application is changed to samsung");
                if (this.mMno == Mno.PLUS_POLAND) {
                    setOpMode(WorkflowBase.OpMode.ENABLE_RCS_BY_USER, null);
                    return;
                }
                WorkflowBase.OpMode opMode = WorkflowBase.OpMode.DISABLE_TEMPORARY;
                setVersion(opMode.value());
                setRcsState(String.valueOf(opMode.value()));
                setRcsDisabledState("");
                setValidity(opMode.value());
                cancelValidityTimer();
                setNextAutoconfigTime(opMode.value());
                return;
            }
            Log.i(str, "sms default application is changed to non-samsung");
            setOpMode(WorkflowBase.OpMode.DISABLE_RCS_BY_USER, null);
            sendEmptyMessage(1);
            return;
        }
        if (this.mIsConfigOngoing) {
            Log.i(str, "AutoConfig: ongoing");
            return;
        }
        this.mIsConfigOngoing = true;
        IMSLog.i(str, this.mPhoneId, "AutoConfig: start");
        this.mIsXmlReceived = false;
        this.mMsisdnHandler.setMsisdnTimer(this.mMsisdnTimer);
        this.mModule.getHandler().removeMessages(3, Integer.valueOf(this.mPhoneId));
        this.mSmsPort = null;
        this.mAuthTryCount = 0;
        this.mAuthHiddenTryCount = 0;
        this.mSharedInfo.setInternalErrRetryCount(0);
        this.mPowerController.lock();
        this.mOldVersion = getVersion();
        if (needScheduleAutoconfig(this.mPhoneId)) {
            scheduleAutoconfig(this.mOldVersion);
        }
        this.mNewVersion = getVersion();
        IMSLog.i(str, this.mPhoneId, "oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion);
        IMSLog.i(str, this.mPhoneId, "AutoConfig: finish");
        setCompleted(true);
        Log.i(str, "mIsReceicedXml: " + this.mIsXmlReceived);
        if (this.mIsXmlReceived) {
            this.mMsisdnHandler.cancelMsisdnTimer(this.mMsisdnTimer, true);
            this.mIsXmlReceived = false;
        }
        this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
        this.mStartForce = false;
        this.mPowerController.release();
        this.mIsConfigOngoing = false;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase, com.sec.internal.ims.config.workflow.WorkflowBase
    void work() {
        WorkflowBase.Workflow initialize;
        WorkflowBase.Workflow initialize2 = new Initialize();
        for (int i = WorkflowBase.AUTO_CONFIG_MAX_FLOWCOUNT; initialize2 != null && i > 0; i--) {
            try {
                initialize2 = initialize2.run();
            } catch (SQLiteFullException e) {
                Log.i(LOG_TAG, "SQLiteFullException occur:" + e.getMessage());
                Log.i(LOG_TAG, "finish workflow");
                initialize = new Finish();
                e.printStackTrace();
                initialize2 = initialize;
            } catch (NoInitialDataException e2) {
                Log.i(LOG_TAG, "NoInitialDataException: " + e2.getMessage());
                Log.i(LOG_TAG, "wait 10 sec and retry");
                sleep(10000L);
                initialize = new Initialize();
                e2.printStackTrace();
                initialize2 = initialize;
            } catch (UnknownStatusException e3) {
                String message = e3.getMessage();
                Log.i(LOG_TAG, "UnknownStatusException: " + message);
                if (e3 instanceof EmptyBodyAndCookieException) {
                    initialize = new Finish();
                    e3.printStackTrace();
                } else {
                    Log.i(LOG_TAG, "wait 2 sec and retry");
                    sleep(UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                    initialize = new Initialize();
                    e3.printStackTrace();
                }
                initialize2 = initialize;
            } catch (Exception e4) {
                if (e4.getMessage() != null) {
                    Log.i(LOG_TAG, "unknown exception occur:" + e4.getMessage());
                }
                Log.i(LOG_TAG, "wait 1 sec and retry");
                sleep(1000L);
                initialize = new Initialize();
                e4.printStackTrace();
                initialize2 = initialize;
            }
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected WorkflowBase.Workflow handleResponseForUpOther(WorkflowBase.Workflow workflow, WorkflowBase.Workflow workflow2, WorkflowBase.Workflow workflow3) throws InvalidHeaderException {
        int i;
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleResponseForUpOther: mLastErrorCode: " + getLastErrorCode());
        int lastErrorCode = getLastErrorCode();
        if (lastErrorCode == 200) {
            Log.i(str, "normal case");
            return workflow2;
        }
        if (lastErrorCode == 503) {
            sleep(getretryAfterTime() * 1000);
            return workflow2;
        }
        if (lastErrorCode != 511) {
            if (lastErrorCode == 403) {
                int internal403ErrRetryCount = this.mSharedInfo.getInternal403ErrRetryCount();
                Log.i(str, "set version to zero & retry after 24 hours, retryCount: " + internal403ErrRetryCount);
                setOpMode(WorkflowBase.OpMode.DISABLE_TEMPORARY, null);
                if (internal403ErrRetryCount < 60) {
                    this.mSharedInfo.setInternal403ErrRetryCount(internal403ErrRetryCount + 1);
                    setValidityTimer(86400);
                    setNextAutoconfigTimeAfter(86400);
                }
            } else if (lastErrorCode == 404) {
                int internal404ErrRetryCount = this.mSharedInfo.getInternal404ErrRetryCount();
                Log.i(str, "retry after 24 hours, retryCount: " + internal404ErrRetryCount);
                if (internal404ErrRetryCount < 30) {
                    this.mSharedInfo.setInternal404ErrRetryCount(internal404ErrRetryCount + 1);
                    setValidityTimer(86400);
                    setNextAutoconfigTimeAfter(86400);
                }
            }
            return workflow3;
        }
        Log.i(str, "The token is no longer valid");
        setToken("", DiagnosisConstants.RCSA_TDRE.INVALID_TOKEN);
        removeValidToken();
        int unknownErrRetryCount = this.mSharedInfo.getUnknownErrRetryCount();
        Log.i(str, "fail. run retry mechanism. retryCount: " + unknownErrRetryCount);
        if (unknownErrRetryCount < 70) {
            int[] iArr = mExponentialInternalErrorRetry;
            if (unknownErrRetryCount < iArr.length) {
                i = iArr[unknownErrRetryCount];
            } else {
                i = iArr[iArr.length - 1];
            }
            this.mSharedInfo.setUnknownErrRetryCount(unknownErrRetryCount + 1);
            setValidityTimer(i);
            setNextAutoconfigTimeAfter(i);
        }
        return workflow3;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected boolean isDataFullUpdateNeeded(Map<String, String> map) {
        IMSLog.i(LOG_TAG, "startForce = " + this.mStartForce + ", isRcsByUser = " + this.mSharedInfo.isRcsByUser() + ", rcsState = " + getRcsState());
        int version = getVersion(map);
        return ((getVersion() >= version && ((!this.mStartForce || this.mSharedInfo.isRcsByUser()) && (!this.mMno.isOneOf(Mno.SWISSCOM, Mno.MTS_RUSSIA) || version <= 0))) || String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()).equals(getRcsState()) || (this.mMno.isOneOf(Mno.SWISSCOM, Mno.MTS_RUSSIA) && TextUtils.isEmpty(map.get(CHAT_AUTH_FULL_PATH.toLowerCase(Locale.US))))) ? false : true;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected void checkAndUpdateData(Map<String, String> map) {
        IMSLog.i(LOG_TAG, "Update of client configuration control parameters");
        setValidity(getValidity(map));
        String token = getToken(map);
        if (TextUtils.isEmpty(token)) {
            return;
        }
        setToken(token, DiagnosisConstants.RCSA_TDRE.UPDATE_TOKEN);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected void setDisableRcsByUserOpMode() {
        super.setDisableRcsByUserOpMode();
        this.mSharedInfo.setRcsByUser(true);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected void setEnableRcsByUserOpMode() {
        super.setEnableRcsByUserOpMode();
        if (getOpMode() == WorkflowBase.OpMode.ACTIVE) {
            this.mSharedInfo.setRcsByUser(true);
        }
        this.mModule.getAcsConfig(this.mPhoneId).disableRcsByAcs(false);
    }

    class Initialize implements WorkflowBase.Workflow {
        Initialize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowBase.Workflow fetchHttp;
            WorkflowUp workflowUp = WorkflowUp.this;
            workflowUp.mSharedInfo.setUrl(workflowUp.mParamHandler.initUrl());
            WorkflowUp.this.mCookieHandler.clearCookie();
            if (WorkflowUp.this.mMno.isEur()) {
                int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
                WorkflowUp workflowUp2 = WorkflowUp.this;
                if (activeDataPhoneId == workflowUp2.mPhoneId) {
                    workflowUp2.mMobileNetwork = workflowUp2.isMobilePreferred();
                } else if (RcsUtils.DualRcs.isDualRcsReg()) {
                    WorkflowUp.this.mMobileNetwork = false;
                }
            }
            WorkflowUp workflowUp3 = WorkflowUp.this;
            if (workflowUp3.mStartForce) {
                fetchHttp = workflowUp3.new FetchHttp();
            } else {
                int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[workflowUp3.getOpMode().ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    fetchHttp = WorkflowUp.this.new FetchHttp();
                } else {
                    fetchHttp = (i == 4 || i == 5) ? WorkflowUp.this.new Finish() : null;
                }
            }
            if (!(fetchHttp instanceof FetchHttp) || WorkflowUp.this.mMobileNetwork) {
                return fetchHttp;
            }
            Log.i(WorkflowUp.LOG_TAG, "mMobileNetwork: false, try FetchHttps step");
            return WorkflowUp.this.new FetchHttps();
        }
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowUp$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode;

        static {
            int[] iArr = new int[WorkflowBase.OpMode.values().length];
            $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode = iArr;
            try {
                iArr[WorkflowBase.OpMode.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_TEMPORARY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DORMANT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_PERMANENTLY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    class FetchHttp implements WorkflowBase.Workflow {
        FetchHttp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowUp.this.mSharedInfo.setHttpDefault();
            WorkflowUp workflowUp = WorkflowUp.this;
            workflowUp.mSharedInfo.setHttpResponse(workflowUp.getHttpResponse());
            int statusCode = WorkflowUp.this.mSharedInfo.getHttpResponse().getStatusCode();
            if (statusCode == 200 || statusCode == 511) {
                if (statusCode == 511) {
                    WorkflowUp.this.mIsHeaderEnrichment = true;
                }
                return WorkflowUp.this.new FetchHttps();
            }
            WorkflowUp workflowUp2 = WorkflowUp.this;
            return workflowUp2.handleResponseForUp(workflowUp2.new Initialize(), WorkflowUp.this.new FetchHttps(), WorkflowUp.this.new Finish());
        }
    }

    class FetchHttps implements WorkflowBase.Workflow {
        FetchHttps() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowUp.this.setSharedInfoWithParamForUp();
            int statusCode = WorkflowUp.this.mSharedInfo.getHttpResponse().getStatusCode();
            if (statusCode == 200) {
                Log.i(WorkflowUp.LOG_TAG, "200 OK is received, try to parse");
                return WorkflowUp.this.new Parse();
            }
            if (statusCode == 403) {
                if (String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()).equals(WorkflowUp.this.getRcsState())) {
                    return WorkflowUp.this.new Finish();
                }
                WorkflowUp workflowUp = WorkflowUp.this;
                if (workflowUp.mMobileNetwork && !workflowUp.mIsHeaderEnrichment) {
                    workflowUp.setOpMode(WorkflowBase.OpMode.DISABLE_TEMPORARY, null);
                    Log.i(WorkflowUp.LOG_TAG, "403 is received, set version to zero");
                    return WorkflowUp.this.new Finish();
                }
                if (!workflowUp.mSharedInfo.getHttpParams().containsKey("msisdn")) {
                    return WorkflowUp.this.getMsisdnWithDialog();
                }
                if (!TextUtils.isEmpty(WorkflowUp.this.mSharedInfo.getUserMsisdn())) {
                    Log.i(WorkflowUp.LOG_TAG, "msisdn is wrong from user, try it again after 300 sec");
                    WorkflowUp.this.setValidityTimer(300);
                    return WorkflowUp.this.new Finish();
                }
            }
            WorkflowUp workflowUp2 = WorkflowUp.this;
            return workflowUp2.handleResponseForUp(workflowUp2.new Initialize(), WorkflowUp.this.new FetchHttps(), WorkflowUp.this.new Finish());
        }
    }

    WorkflowBase.Workflow getMsisdnWithDialog() {
        String msisdn;
        int msisdnSkipCount = this.mMsisdnHandler.getMsisdnSkipCount();
        if (!this.mMobileNetwork && msisdnSkipCount == 3) {
            Log.i(LOG_TAG, "Retry counter for msisdn reached. Abort.");
            return new Finish();
        }
        String str = LOG_TAG;
        Log.i(str, "no msisdn, try to get user");
        if (msisdnSkipCount == -1) {
            this.mMsisdnHandler.setMsisdnSkipCount(0);
            msisdnSkipCount = 0;
        }
        this.mPowerController.release();
        String lastMsisdnValue = this.mMsisdnHandler.getLastMsisdnValue();
        if (!TextUtils.isEmpty(lastMsisdnValue)) {
            msisdn = this.mDialog.getMsisdn(this.mTelephonyAdapter.getSimCountryCode(), lastMsisdnValue);
        } else {
            msisdn = this.mDialog.getMsisdn(this.mTelephonyAdapter.getSimCountryCode());
        }
        this.mPowerController.lock();
        if (TextUtils.isEmpty(msisdn)) {
            Log.i(str, "user didn't enter msisdn finish process");
            return new Finish();
        }
        if ("skip".equals(msisdn)) {
            this.mMsisdnHandler.setMsisdnSkipCount(msisdnSkipCount + 1);
            Log.i(str, "user enter skip msisdn.");
            this.mMsisdnHandler.setMsisdnMsguiDisplay(CloudMessageProviderContract.JsonData.TRUE);
            Intent intent = new Intent("com.sec.rcs.config.action.SET_SHOW_MSISDN_DIALOG");
            intent.putExtra("isNeeded", this.mMsisdnHandler.getIsNeeded());
            ContextExt.sendBroadcastAsUser(this.mContext, intent, ContextExt.ALL);
            return new Finish();
        }
        this.mSharedInfo.setUserMsisdn(msisdn);
        return new Initialize();
    }

    protected void setSharedInfoWithParamForUp() {
        if (ConfigUtil.shallUsePreviousCookie(this.mLastErrorCode, this.mMno)) {
            this.mSharedInfo.setHttpsWithPreviousCookies();
        } else {
            this.mSharedInfo.setHttpsDefault();
        }
        if (this.mParamHandler.isConfigProxy()) {
            this.mSharedInfo.changeConfigProxyUriForHttp();
            this.mSharedInfo.setHttpProxyDefault();
        }
        IConfigModule configModule = ImsRegistry.getConfigModule();
        if (configModule.getAcsConfig(this.mPhoneId).isTriggeredByNrcr() && this.mMno.isOneOf(Mno.SWISSCOM, Mno.TMOBILE)) {
            setRcsState(String.valueOf(getVersion()));
            setRcsDisabledState("");
        }
        this.mCookieHandler.handleCookie(this.mSharedInfo.getHttpResponse());
        this.mSharedInfo.addHttpParam("vers", String.valueOf(getVersion()));
        this.mSharedInfo.addHttpParam("terminal_model", ConfigContract.BUILD.getTerminalModel());
        this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
        this.mSharedInfo.addHttpParam("terminal_sw_version", this.mParamHandler.getModelInfoFromCarrierVersion(ConfigUtil.getModelName(this.mPhoneId), ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 8, true));
        this.mSharedInfo.addHttpParam("IMSI", this.mTelephonyAdapter.getSubscriberId(SimUtil.getSubId(this.mPhoneId)));
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, this.mTelephonyAdapter.getDeviceId(this.mPhoneId));
        this.mSharedInfo.addHttpParam("default_sms_app", ConfigUtil.isSecDmaPackageInuse(this.mContext, this.mPhoneId) ? "1" : "2");
        this.mSharedInfo.addHttpParam("rcs_version", this.mRcsVersion);
        String str = LOG_TAG;
        Log.i(str, "rcsProfile read and used : " + this.mRcsUPProfile);
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_PROFILE, this.mRcsUPProfile);
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.PROVISIONING_VERSION, this.mRcsProvisioningVersion);
        if (!ConfigUtil.doesUpRcsProfileMatchProvisioningVersion(this.mRcsUPProfile, this.mRcsProvisioningVersion)) {
            Log.w(str, "Provisioning version <-> RCS profile mismatch. Rcs profile is: " + this.mRcsUPProfile + " Provisioning version is: " + this.mRcsProvisioningVersion);
        }
        if (ImsProfile.isRcsUp2Profile(this.mRcsUPProfile) && !this.mRcsAppList.isEmpty()) {
            this.mSharedInfo.addHttpParam("app", String.join("||", this.mRcsAppList));
        }
        setRcsState(convertRcsStateWithSpecificParam());
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_STATE, getRcsState());
        setSharedInfoWithAuthParamForUp();
        if (this.mStartForce && !String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()).equals(getRcsState()) && (!configModule.getAcsConfig(this.mPhoneId).isTriggeredByNrcr() || this.mMno != Mno.MTS_RUSSIA)) {
            Log.i(str, "mStartForce: true, vers: 0");
            this.mSharedInfo.addHttpParam("vers", "0");
        }
        if (getOpMode() == WorkflowBase.OpMode.DORMANT) {
            Log.i(str, "use backup version in case of dormant, vers: " + getVersionBackup());
            this.mSharedInfo.addHttpParam("vers", getVersionBackup());
        }
        this.mSharedInfo.setHttpResponse(getHttpResponse());
    }

    protected void setSharedInfoWithAuthParamForUp() {
        if (!this.mMobileNetwork || this.mIsHeaderEnrichment || this.mSharedInfo.getHttpResponse().getStatusCode() == 511) {
            String msisdn = this.mTelephonyAdapter.getMsisdn(SimUtil.getSubId(this.mPhoneId));
            if (!TextUtils.isEmpty(msisdn)) {
                this.mSharedInfo.addHttpParam("msisdn", this.mParamHandler.encodeRFC3986(ImsCallUtil.validatePhoneNumber(msisdn, this.mTelephonyAdapter.getSimCountryCode())));
            }
            if (!TextUtils.isEmpty(this.mSharedInfo.getUserMsisdn())) {
                SharedInfo sharedInfo = this.mSharedInfo;
                sharedInfo.addHttpParam("msisdn", this.mParamHandler.encodeRFC3986(sharedInfo.getUserMsisdn()));
            }
            this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SMS_PORT, ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.SMS_DEST_PORT, this.mTelephonyAdapter.getSmsDestPort()));
            this.mSharedInfo.addHttpParam("token", getToken());
        }
    }

    class FetchOtp implements WorkflowBase.Workflow {
        FetchOtp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowUp.this.mSharedInfo.setHttpClean();
            IHttpAdapter.Response httpResponse = WorkflowUp.this.mSharedInfo.getHttpResponse();
            if (WorkflowUp.this.mMno.isEmeasewaoce()) {
                WorkflowUp.this.mCookieHandler.handleCookie(httpResponse);
            } else {
                WorkflowUp.this.mSharedInfo.addHttpHeader(HttpController.HEADER_COOKIE, httpResponse.getHeader().get(HttpController.HEADER_SET_COOKIE));
            }
            SharedInfo sharedInfo = WorkflowUp.this.mSharedInfo;
            sharedInfo.addHttpParam(ConfigConstants.PNAME.OTP, sharedInfo.getOtp());
            IHttpAdapter.Response httpResponse2 = WorkflowUp.this.getHttpResponse();
            WorkflowUp.this.mSharedInfo.setHttpResponse(httpResponse2);
            if (httpResponse2.getStatusCode() == 200) {
                return WorkflowUp.this.new Parse();
            }
            WorkflowUp workflowUp = WorkflowUp.this;
            return workflowUp.handleResponseForUp(workflowUp.new Initialize(), WorkflowUp.this.new FetchHttps(), WorkflowUp.this.new Finish());
        }
    }

    class Authorize implements WorkflowBase.Workflow {
        Authorize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            String existingPortOtp;
            WorkflowUp workflowUp;
            int i;
            WorkflowUp workflowUp2;
            int i2;
            WorkflowUp.this.mPowerController.release();
            String otp = WorkflowUp.this.mSharedInfo.getOtp();
            if ("0".equals(WorkflowUp.this.mSmsPort)) {
                existingPortOtp = WorkflowUp.this.mTelephonyAdapter.getExistingOtp();
                if ((existingPortOtp == null || TextUtils.equals(existingPortOtp, otp)) && (i2 = (workflowUp2 = WorkflowUp.this).mAuthTryCount) < 1) {
                    workflowUp2.mAuthTryCount = i2 + 1;
                    existingPortOtp = workflowUp2.mTelephonyAdapter.getOtp();
                }
            } else {
                existingPortOtp = WorkflowUp.this.mTelephonyAdapter.getExistingPortOtp();
                if ((existingPortOtp == null || TextUtils.equals(existingPortOtp, otp)) && (i = (workflowUp = WorkflowUp.this).mAuthHiddenTryCount) < 3) {
                    workflowUp.mAuthHiddenTryCount = i + 1;
                    existingPortOtp = workflowUp.mTelephonyAdapter.getPortOtp();
                    if (existingPortOtp == null) {
                        WorkflowUp.this.setValidityTimer(0);
                    }
                }
            }
            if (existingPortOtp != null) {
                Log.i(WorkflowUp.LOG_TAG, "otp: " + IMSLog.checker(existingPortOtp));
                WorkflowUp.this.mSharedInfo.setOtp(existingPortOtp);
                WorkflowUp.this.mPowerController.lock();
                return WorkflowUp.this.new FetchOtp();
            }
            Log.i(WorkflowUp.LOG_TAG, "otp: null, go to finish state");
            return WorkflowUp.this.new Finish();
        }
    }

    class Parse implements WorkflowBase.Workflow {
        Parse() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            byte[] body = WorkflowUp.this.mSharedInfo.getHttpResponse().getBody();
            if (body == null) {
                body = "".getBytes();
            }
            Map<String, String> parse = WorkflowUp.this.mXmlParser.parse(new String(body, "utf-8"));
            if (parse == null) {
                throw new InvalidXmlException("parsedXml is null");
            }
            if (parse.get("root/vers/version") == null || parse.get("root/vers/validity") == null) {
                Log.i(WorkflowUp.LOG_TAG, "parsedXml need to contain version, validity items");
                WorkflowUp workflowUp = WorkflowUp.this;
                if (workflowUp.mCookieHandler.isCookie(workflowUp.mSharedInfo.getHttpResponse())) {
                    WorkflowUp.this.mSmsPort = parse.get(ConfigConstants.PATH.POLICY_SMS_PORT);
                    return WorkflowUp.this.new Authorize();
                }
                throw new EmptyBodyAndCookieException("body and cookie are null");
            }
            WorkflowUp workflowUp2 = WorkflowUp.this;
            workflowUp2.mIsXmlReceived = true;
            workflowUp2.mSharedInfo.setParsedXml(parse);
            WorkflowUp workflowUp3 = WorkflowUp.this;
            workflowUp3.mMsisdnHandler.setMsisdnValue(workflowUp3.mSharedInfo.getUserMsisdn());
            return WorkflowUp.this.new Store();
        }
    }

    class Store implements WorkflowBase.Workflow {
        Store() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowBase.OpMode opMode = WorkflowBase.OpMode.DISABLE_RCS_BY_USER;
            if (String.valueOf(opMode.value()).equals(WorkflowUp.this.getRcsState()) && !WorkflowUp.this.mMno.isOneOf(Mno.TELEFONICA_GERMANY, Mno.TELEFONICA_SPAIN, Mno.TELEFONICA_UK, Mno.MTS_RUSSIA)) {
                return WorkflowUp.this.new Finish();
            }
            Map<String, String> parsedXml = WorkflowUp.this.mSharedInfo.getParsedXml();
            WorkflowBase.OpMode rcsDisabledState = WorkflowUp.this.getRcsDisabledState(parsedXml);
            if (WorkflowUp.this.isValidRcsDisabledState(rcsDisabledState)) {
                WorkflowUp.this.setOpMode(rcsDisabledState, parsedXml);
                return WorkflowUp.this.new Finish();
            }
            WorkflowParamHandler.UserAccept userAcceptDetailed = WorkflowUp.this.mParamHandler.getUserAcceptDetailed(parsedXml);
            if (userAcceptDetailed == WorkflowParamHandler.UserAccept.NON_DEFAULT_MSG_APP) {
                WorkflowUp.this.setOpMode(opMode, null);
            } else {
                WorkflowUp.this.mParamHandler.setOpModeWithUserAccept(userAcceptDetailed == WorkflowParamHandler.UserAccept.ACCEPT, parsedXml, WorkflowBase.OpMode.DISABLE);
                if (WorkflowUp.this.getOpMode() == WorkflowBase.OpMode.ACTIVE) {
                    WorkflowUp workflowUp = WorkflowUp.this;
                    workflowUp.setValidityTimer(workflowUp.getValidity());
                }
            }
            WorkflowUp.this.mMsisdnHandler.setMsisdnSkipCount(0);
            WorkflowUp.this.setTcUserAccept(userAcceptDetailed != WorkflowParamHandler.UserAccept.ACCEPT ? 0 : 1);
            return WorkflowUp.this.new Finish();
        }
    }

    class Finish implements WorkflowBase.Workflow {
        Finish() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            if (WorkflowUp.this.mSharedInfo.getHttpResponse() != null) {
                if (WorkflowUp.this.mSharedInfo.getHttpResponse().getStatusCode() == 200) {
                    WorkflowUp.this.mSharedInfo.setInternal403ErrRetryCount(0);
                    WorkflowUp.this.mSharedInfo.setInternal404ErrRetryCount(0);
                    WorkflowUp.this.mSharedInfo.setUnknownErrRetryCount(0);
                }
                WorkflowUp workflowUp = WorkflowUp.this;
                workflowUp.setLastErrorCode(workflowUp.mSharedInfo.getHttpResponse().getStatusCode());
            }
            WorkflowUp.this.mSharedInfo.setRcsByUser(false);
            Log.i(WorkflowUp.LOG_TAG, "all workflow is finished");
            return null;
        }
    }
}
