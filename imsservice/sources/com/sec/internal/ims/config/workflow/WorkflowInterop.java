package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.database.sqlite.SQLiteFullException;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapterJibeAndSec;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceUp;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.exception.EmptyBodyAndCookieException;
import com.sec.internal.ims.config.exception.InvalidHeaderException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.util.Date;
import java.util.Map;

/* loaded from: classes.dex */
public class WorkflowInterop extends WorkflowUpBase {
    protected static final int HTTPERR_RETRY_AFTER_TIME = 10;
    protected static final int HTTPERR_TRY_MAX_COUNT = 2;
    protected static final String LOG_TAG = WorkflowJibe.class.getSimpleName();
    protected static final String OTP_SMS_BINARY_TYPE = "binary";
    protected static final String OTP_SMS_TEXT_TYPE = "text";
    protected static final int OTP_SMS_TIME_OUT = 700;
    protected int m503ErrCount;
    protected int m511ErrCount;
    protected int mAuthHiddenTryCount;
    protected int mAuthTryCount;
    protected int mHttpResponse;
    protected boolean mIsMobileConfigCompleted;
    protected boolean mIsMobileConnected;
    protected boolean mIsMobileRequested;

    public WorkflowInterop(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDeviceUp(context, iConfigModule, i), new StorageAdapter(), new HttpAdapterJibeAndSec(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule), i);
        this.mIsMobileRequested = false;
        this.mIsMobileConnected = false;
        this.mIsMobileConfigCompleted = false;
        this.mHttpResponse = 0;
        this.mAuthTryCount = 0;
        this.mAuthHiddenTryCount = 0;
        this.m511ErrCount = 0;
        this.m503ErrCount = 0;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleMessage: " + message.what);
        int i = message.what;
        if (i == 0) {
            this.mStartForce = true;
        } else if (i != 1) {
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
                    return;
                }
                IMSLog.i(str, this.mPhoneId, "sms default application is changed to non-samsung");
                setOpMode(WorkflowBase.OpMode.DISABLE_RCS_BY_USER, null);
                removeMessages(1);
                sendEmptyMessage(1);
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
        if (scheduleAutoconfigForInterop(version)) {
            executeAutoConfig();
        }
        this.mNewVersion = getVersion();
        endAutoConfig(true);
        IMSLog.i(str, this.mPhoneId, "oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion);
        IMSLog.i(str, this.mPhoneId, "AutoConfig: finish");
        this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
        this.mPowerController.release();
    }

    protected boolean scheduleAutoconfigForInterop(int i) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "scheduleAutoconfigForInterop");
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
        this.mAuthTryCount = 0;
        this.mAuthHiddenTryCount = 0;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected void endAutoConfig(boolean z) {
        super.endAutoConfig(z);
        this.mIsMobileRequested = false;
        this.mIsMobileConnected = false;
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
        Log.i(str, "mIsMobileRequested: " + this.mIsMobileRequested + ", mIsMobileConnected: " + this.mIsMobileConnected);
        this.mHttp.setNetwork(null);
        this.mHttp.open(this.mSharedInfo.getUrl());
        IHttpAdapter.Response request = this.mHttp.request();
        this.mHttp.close();
        return request;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow handleResponse(WorkflowBase.Workflow workflow, int i) throws InvalidHeaderException, UnknownStatusException {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleResponse: " + i);
        addEventLog(str + "handleResponse: " + i);
        setLastErrorCode(i);
        int lastErrorCode = getLastErrorCode();
        if (lastErrorCode == 0) {
            return super.handleResponse(workflow, i);
        }
        if (lastErrorCode == 200) {
            this.m511ErrCount = 0;
            this.m503ErrCount = 0;
        } else {
            if (lastErrorCode == 403) {
                Log.i(str, "set version to zero");
                setOpMode(WorkflowBase.OpMode.DISABLE_TEMPORARY, null);
                return getNextWorkflow(8);
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
        }
        return super.handleResponse(workflow, i);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        switch (i) {
            case 1:
                return new WorkflowBase.Initialize() { // from class: com.sec.internal.ims.config.workflow.WorkflowInterop.1
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Initialize, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        String str = WorkflowInterop.LOG_TAG;
                        IMSLog.i(str, WorkflowInterop.this.mPhoneId, "Initialize:");
                        WorkflowBase.Workflow run = super.run();
                        if (!(run instanceof WorkflowBase.FetchHttp) || WorkflowInterop.this.mMobileNetwork) {
                            return run;
                        }
                        Log.i(str, "mMobileNetwork: false, try FetchHttps step");
                        return WorkflowInterop.this.getNextWorkflow(3);
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Initialize
                    protected void init() throws NoInitialDataException {
                        WorkflowInterop.this.mHttpResponse = 0;
                        super.init();
                    }
                };
            case 2:
                return new WorkflowBase.FetchHttp() { // from class: com.sec.internal.ims.config.workflow.WorkflowInterop.2
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttp, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowInterop.LOG_TAG, WorkflowInterop.this.mPhoneId, "FetchHttp:");
                        WorkflowBase.Workflow run = super.run();
                        WorkflowInterop workflowInterop = WorkflowInterop.this;
                        workflowInterop.mHttpResponse = workflowInterop.mSharedInfo.getHttpResponse().getStatusCode();
                        return run;
                    }
                };
            case 3:
                return new WorkflowBase.FetchHttps() { // from class: com.sec.internal.ims.config.workflow.WorkflowInterop.3
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttps, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowInterop.LOG_TAG, WorkflowInterop.this.mPhoneId, "FetchHttps:");
                        return super.run();
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttps
                    protected void setHttps() {
                        WorkflowInterop.this.mSharedInfo.setHttpsDefault();
                        int subId = SimUtil.getSubId(WorkflowInterop.this.mPhoneId);
                        WorkflowInterop workflowInterop = WorkflowInterop.this;
                        workflowInterop.mSharedInfo.addHttpParam("IMSI", workflowInterop.mTelephonyAdapter.getSubscriberId(subId));
                        WorkflowInterop workflowInterop2 = WorkflowInterop.this;
                        workflowInterop2.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, workflowInterop2.mTelephonyAdapter.getDeviceId(workflowInterop2.mPhoneId));
                        WorkflowInterop workflowInterop3 = WorkflowInterop.this;
                        workflowInterop3.mSharedInfo.addHttpParam("default_sms_app", ConfigUtil.isSecDmaPackageInuse(workflowInterop3.mContext, workflowInterop3.mPhoneId) ? "1" : "2");
                        WorkflowInterop workflowInterop4 = WorkflowInterop.this;
                        if (!workflowInterop4.mMobileNetwork || workflowInterop4.mHttpResponse == 511) {
                            String msisdn = workflowInterop4.mTelephonyAdapter.getMsisdn();
                            if (!TextUtils.isEmpty(msisdn)) {
                                Log.i(WorkflowInterop.LOG_TAG, "use msisdn from telephony");
                                WorkflowInterop workflowInterop5 = WorkflowInterop.this;
                                workflowInterop5.mSharedInfo.addHttpParam("msisdn", workflowInterop5.mParamHandler.encodeRFC3986(msisdn));
                            }
                            String userMsisdn = WorkflowInterop.this.mSharedInfo.getUserMsisdn();
                            if (!TextUtils.isEmpty(userMsisdn)) {
                                Log.i(WorkflowInterop.LOG_TAG, "use msisdn from sharedInfo");
                                WorkflowInterop workflowInterop6 = WorkflowInterop.this;
                                workflowInterop6.mSharedInfo.addHttpParam("msisdn", workflowInterop6.mParamHandler.encodeRFC3986(userMsisdn));
                            }
                            WorkflowInterop workflowInterop7 = WorkflowInterop.this;
                            workflowInterop7.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SMS_PORT, ConfigUtil.getSmsPort(workflowInterop7.mPhoneId));
                            IMSLog.c(LogClass.WFJ_OTP_SMS_PORT, WorkflowInterop.this.mPhoneId + ",OSP:" + ConfigUtil.getSmsPort(WorkflowInterop.this.mPhoneId));
                            WorkflowInterop workflowInterop8 = WorkflowInterop.this;
                            workflowInterop8.mSharedInfo.addHttpParam("token", workflowInterop8.getToken());
                        }
                        WorkflowInterop.this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
                        WorkflowInterop.this.mSharedInfo.addHttpParam("terminal_model", ConfigConstants.PVALUE.TERMINAL_MODEL);
                        WorkflowInterop workflowInterop9 = WorkflowInterop.this;
                        workflowInterop9.mSharedInfo.addHttpParam("terminal_sw_version", workflowInterop9.mParamHandler.getModelInfoFromBuildVersion(ConfigUtil.getModelName(workflowInterop9.mPhoneId), ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 8, true));
                        WorkflowInterop.this.mSharedInfo.addHttpParam("client_vendor", "SEC");
                        WorkflowInterop.this.mSharedInfo.addHttpParam("client_version", WorkflowInterop.this.mClientPlatform + WorkflowInterop.this.mClientVersion);
                        WorkflowInterop.this.mSharedInfo.addHttpParam("rcs_version", ConfigConstants.PVALUE.GOOG_DEFAULT_RCS_VERSION);
                        WorkflowInterop.this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_PROFILE, "UP_2.0-b1");
                        WorkflowInterop.this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.PROVISIONING_VERSION, ConfigConstants.PVALUE.PROVISIONING_VERSION_4_0);
                        WorkflowInterop workflowInterop10 = WorkflowInterop.this;
                        workflowInterop10.setRcsState(workflowInterop10.convertRcsStateWithSpecificParam());
                        WorkflowInterop workflowInterop11 = WorkflowInterop.this;
                        workflowInterop11.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_STATE, workflowInterop11.getRcsState());
                        if (WorkflowInterop.this.mStartForce && !String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()).equals(WorkflowInterop.this.getRcsState())) {
                            Log.i(WorkflowInterop.LOG_TAG, "mStartForce: true, vers: 0");
                            WorkflowInterop.this.mSharedInfo.addHttpParam("vers", "0");
                        }
                        if (WorkflowInterop.this.getOpMode() == WorkflowBase.OpMode.DORMANT) {
                            Log.i(WorkflowInterop.LOG_TAG, "use backup version in case of dormant, vers: " + WorkflowInterop.this.getVersionBackup());
                            WorkflowInterop workflowInterop12 = WorkflowInterop.this;
                            workflowInterop12.mSharedInfo.addHttpParam("vers", workflowInterop12.getVersionBackup());
                        }
                    }
                };
            case 4:
                return new WorkflowBase.Authorize() { // from class: com.sec.internal.ims.config.workflow.WorkflowInterop.5
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Authorize, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowInterop.LOG_TAG, WorkflowInterop.this.mPhoneId, "Authorize:");
                        WorkflowBase.Workflow run = super.run();
                        if (run instanceof WorkflowBase.Finish) {
                            WorkflowInterop.this.mSharedInfo.getHttpResponse().setStatusCode(700);
                        }
                        return run;
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Authorize
                    protected String getOtp() {
                        WorkflowInterop workflowInterop;
                        int i2;
                        WorkflowInterop workflowInterop2;
                        int i3;
                        String smsType = ConfigUtil.getSmsType(WorkflowInterop.this.mPhoneId);
                        IMSLog.i(WorkflowInterop.LOG_TAG, WorkflowInterop.this.mPhoneId, "otpSmsType: " + smsType + " mAuthTryCount: " + WorkflowInterop.this.mAuthTryCount + " mAuthHiddenTryCount: " + WorkflowInterop.this.mAuthHiddenTryCount);
                        StringBuilder sb = new StringBuilder();
                        sb.append(WorkflowInterop.this.mPhoneId);
                        sb.append(",OST:");
                        sb.append(smsType);
                        IMSLog.c(LogClass.WFJ_OTP_SMS_TYPE, sb.toString());
                        if ("text".equals(smsType) && (i3 = (workflowInterop2 = WorkflowInterop.this).mAuthTryCount) < 1) {
                            workflowInterop2.mAuthTryCount = i3 + 1;
                            return workflowInterop2.mTelephonyAdapter.getOtp();
                        }
                        if (!"binary".equals(smsType) || (i2 = (workflowInterop = WorkflowInterop.this).mAuthHiddenTryCount) >= 3) {
                            return null;
                        }
                        workflowInterop.mAuthHiddenTryCount = i2 + 1;
                        return workflowInterop.mTelephonyAdapter.getPortOtp();
                    }
                };
            case 5:
                return new WorkflowBase.FetchOtp() { // from class: com.sec.internal.ims.config.workflow.WorkflowInterop.6
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchOtp, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowInterop.LOG_TAG, WorkflowInterop.this.mPhoneId, "FetchOtp:");
                        return super.run();
                    }

                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchOtp
                    protected void setHttp() {
                        super.setHttp();
                        SharedInfo sharedInfo = WorkflowInterop.this.mSharedInfo;
                        sharedInfo.addHttpHeader(HttpController.HEADER_COOKIE, sharedInfo.getHttpResponse().getHeader().get(HttpController.HEADER_SET_COOKIE));
                    }
                };
            case 6:
                return new WorkflowBase.Parse() { // from class: com.sec.internal.ims.config.workflow.WorkflowInterop.4
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Parse, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        IMSLog.i(WorkflowInterop.LOG_TAG, WorkflowInterop.this.mPhoneId, "Parse:");
                        return super.run();
                    }
                };
            case 7:
                return new WorkflowBase.Store() { // from class: com.sec.internal.ims.config.workflow.WorkflowInterop.7
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Store, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() throws Exception {
                        String str = WorkflowInterop.LOG_TAG;
                        IMSLog.i(str, WorkflowInterop.this.mPhoneId, "Store:");
                        Map<String, String> parsedXml = WorkflowInterop.this.mSharedInfo.getParsedXml();
                        Log.i(str, "versionChange: " + (WorkflowInterop.this.getVersion() != WorkflowInterop.this.getVersion(parsedXml)));
                        WorkflowBase.OpMode rcsDisabledState = WorkflowInterop.this.getRcsDisabledState(parsedXml);
                        if (WorkflowInterop.this.isValidRcsDisabledState(rcsDisabledState)) {
                            WorkflowInterop.this.setOpMode(rcsDisabledState, parsedXml);
                            return WorkflowInterop.this.getNextWorkflow(8);
                        }
                        WorkflowInterop workflowInterop = WorkflowInterop.this;
                        workflowInterop.setOpMode(workflowInterop.getOpMode(parsedXml), parsedXml);
                        if (WorkflowInterop.this.getOpMode() == WorkflowBase.OpMode.ACTIVE) {
                            WorkflowInterop workflowInterop2 = WorkflowInterop.this;
                            workflowInterop2.setValidityTimer(workflowInterop2.getValidity());
                        }
                        return WorkflowInterop.this.getNextWorkflow(8);
                    }
                };
            case 8:
                return new WorkflowBase.Finish() { // from class: com.sec.internal.ims.config.workflow.WorkflowInterop.8
                    @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Finish, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                    public WorkflowBase.Workflow run() {
                        IMSLog.i(WorkflowInterop.LOG_TAG, WorkflowInterop.this.mPhoneId, "Finish:");
                        return null;
                    }
                };
            default:
                Log.i(LOG_TAG, "getNextWorkflow: Unexpected type [" + i + "] !!!");
                return null;
        }
    }
}
