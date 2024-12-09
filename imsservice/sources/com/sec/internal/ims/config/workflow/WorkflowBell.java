package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.database.sqlite.SQLiteFullException;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.exception.InvalidXmlException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.log.IMSLog;
import java.util.Map;

/* loaded from: classes.dex */
public class WorkflowBell extends WorkflowBase {
    public static final String LOG_TAG = WorkflowBell.class.getSimpleName();

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        return null;
    }

    public WorkflowBell(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, i);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
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
                Log.i(LOG_TAG, "NoInitialDataException occur:" + e2.getMessage());
                Log.i(LOG_TAG, "wait 10 sec. and retry");
                sleep(10000L);
                initialize = new Initialize();
                e2.printStackTrace();
                initialize2 = initialize;
            } catch (UnknownStatusException e3) {
                Log.i(LOG_TAG, "UnknownStatusException occur:" + e3.getMessage());
                Log.i(LOG_TAG, "wait 2 sec. and retry");
                sleep(UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                initialize = new Initialize();
                e3.printStackTrace();
                initialize2 = initialize;
            } catch (Exception e4) {
                if (e4.getMessage() != null) {
                    Log.i(LOG_TAG, "unknown exception occur:" + e4.getMessage());
                }
                Log.i(LOG_TAG, "wait 1 sec. and retry");
                sleep(1000L);
                initialize = new Initialize();
                e4.printStackTrace();
                initialize2 = initialize;
            }
        }
    }

    protected class Initialize implements WorkflowBase.Workflow {
        protected Initialize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowBase.Workflow fetchHttp;
            String str = WorkflowBell.LOG_TAG;
            IMSLog.i(str, WorkflowBell.this.mPhoneId, "Initialize:");
            WorkflowBell workflowBell = WorkflowBell.this;
            workflowBell.mSharedInfo.setUrl(workflowBell.mParamHandler.initUrl());
            WorkflowBell.this.mCookieHandler.clearCookie();
            WorkflowBell workflowBell2 = WorkflowBell.this;
            if (workflowBell2.mStartForce) {
                fetchHttp = workflowBell2.new FetchHttp();
            } else {
                int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[workflowBell2.getOpMode().ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    fetchHttp = WorkflowBell.this.new FetchHttp();
                } else {
                    fetchHttp = (i == 4 || i == 5) ? WorkflowBell.this.new Finish() : null;
                }
            }
            if (!(fetchHttp instanceof FetchHttp) || WorkflowBell.this.mMobileNetwork) {
                return fetchHttp;
            }
            Log.i(str, "now use wifi. try non-ps step directly.");
            return WorkflowBell.this.new FetchHttps();
        }
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowBell$1, reason: invalid class name */
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

    protected class FetchHttp implements WorkflowBase.Workflow {
        protected FetchHttp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            IMSLog.i(WorkflowBell.LOG_TAG, WorkflowBell.this.mPhoneId, "FetchHttp:");
            WorkflowBell.this.mSharedInfo.setHttpDefault();
            WorkflowBell workflowBell = WorkflowBell.this;
            workflowBell.mSharedInfo.setHttpResponse(workflowBell.getHttpResponse());
            if (WorkflowBell.this.mSharedInfo.getHttpResponse().getStatusCode() == 200 || WorkflowBell.this.mSharedInfo.getHttpResponse().getStatusCode() == 511) {
                return WorkflowBell.this.new FetchHttps();
            }
            WorkflowBell workflowBell2 = WorkflowBell.this;
            return workflowBell2.handleResponse2(workflowBell2.new Initialize(), WorkflowBell.this.new FetchHttps(), WorkflowBell.this.new Finish());
        }
    }

    protected class FetchHttps implements WorkflowBase.Workflow {
        protected FetchHttps() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            String str = WorkflowBell.LOG_TAG;
            IMSLog.i(str, WorkflowBell.this.mPhoneId, "FetchHttps:");
            WorkflowBell.this.mSharedInfo.setHttpsDefault();
            WorkflowBell workflowBell = WorkflowBell.this;
            workflowBell.mSharedInfo.addHttpParam("vers", String.valueOf(workflowBell.getVersion()));
            WorkflowBell workflowBell2 = WorkflowBell.this;
            workflowBell2.mSharedInfo.addHttpParam("IMSI", workflowBell2.mTelephonyAdapter.getImsi());
            WorkflowBell workflowBell3 = WorkflowBell.this;
            workflowBell3.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, workflowBell3.mTelephonyAdapter.getImei());
            WorkflowBell.this.mSharedInfo.addHttpParam("terminal_model", ConfigConstants.BUILD.TERMINAL_MODEL);
            WorkflowBell workflowBell4 = WorkflowBell.this;
            workflowBell4.mSharedInfo.addHttpParam("default_sms_app", ConfigUtil.isSecDmaPackageInuse(workflowBell4.mContext, workflowBell4.mPhoneId) ? "1" : "2");
            WorkflowBell workflowBell5 = WorkflowBell.this;
            if (!workflowBell5.mMobileNetwork || workflowBell5.mSharedInfo.getHttpResponse().getStatusCode() == 511) {
                if (!TextUtils.isEmpty(WorkflowBell.this.mTelephonyAdapter.getMsisdn())) {
                    WorkflowBell workflowBell6 = WorkflowBell.this;
                    workflowBell6.mSharedInfo.addHttpParam("msisdn", workflowBell6.mParamHandler.encodeRFC3986(workflowBell6.mTelephonyAdapter.getMsisdn()));
                }
                if (!TextUtils.isEmpty(WorkflowBell.this.mSharedInfo.getUserMsisdn())) {
                    WorkflowBell workflowBell7 = WorkflowBell.this;
                    SharedInfo sharedInfo = workflowBell7.mSharedInfo;
                    sharedInfo.addHttpParam("msisdn", workflowBell7.mParamHandler.encodeRFC3986(sharedInfo.getUserMsisdn()));
                }
                WorkflowBell workflowBell8 = WorkflowBell.this;
                workflowBell8.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SMS_PORT, workflowBell8.mTelephonyAdapter.getSmsDestPort());
                WorkflowBell workflowBell9 = WorkflowBell.this;
                workflowBell9.mSharedInfo.addHttpParam("token", workflowBell9.getToken());
            }
            WorkflowBell.this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
            WorkflowBell workflowBell10 = WorkflowBell.this;
            workflowBell10.mSharedInfo.addHttpParam("terminal_sw_version", workflowBell10.mParamHandler.getModelInfoFromBuildVersion(ConfigUtil.getModelName(workflowBell10.mPhoneId), ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 8, true));
            WorkflowBell workflowBell11 = WorkflowBell.this;
            if (workflowBell11.mStartForce) {
                workflowBell11.mSharedInfo.addHttpParam("vers", "0");
            }
            if (WorkflowBell.this.getOpMode() == WorkflowBase.OpMode.DORMANT) {
                Log.i(str, "DORMANT mode. use backup version :" + WorkflowBell.this.getVersionBackup());
                WorkflowBell.this.addEventLog(str + "DORMANT mode. use backup version :" + WorkflowBell.this.getVersionBackup());
                WorkflowBell workflowBell12 = WorkflowBell.this;
                workflowBell12.mSharedInfo.addHttpParam("vers", workflowBell12.getVersionBackup());
            }
            WorkflowBell workflowBell13 = WorkflowBell.this;
            workflowBell13.mSharedInfo.setHttpResponse(workflowBell13.getHttpResponse());
            if (WorkflowBell.this.mSharedInfo.getHttpResponse().getStatusCode() == 200) {
                Log.i(str, "200 OK received. try parsing");
                return WorkflowBell.this.new Parse();
            }
            if (WorkflowBell.this.mSharedInfo.getHttpResponse().getStatusCode() == 403) {
                if (!WorkflowBell.this.mSharedInfo.getHttpParams().containsKey("msisdn")) {
                    Log.i(str, "no msisdn. try to get user");
                    WorkflowBell.this.addEventLog(str + "no msisdn. try to get user");
                    WorkflowBell.this.mPowerController.release();
                    WorkflowBell workflowBell14 = WorkflowBell.this;
                    String msisdn = workflowBell14.mDialog.getMsisdn(workflowBell14.mTelephonyAdapter.getSimCountryCode());
                    WorkflowBell.this.mPowerController.lock();
                    if (TextUtils.isEmpty(msisdn)) {
                        Log.i(str, "user didn't enter msisdn finish process");
                        return WorkflowBell.this.new Finish();
                    }
                    WorkflowBell.this.mSharedInfo.setUserMsisdn(msisdn);
                    return WorkflowBell.this.new Initialize();
                }
                if (!TextUtils.isEmpty(WorkflowBell.this.mSharedInfo.getUserMsisdn())) {
                    Log.i(str, "wrong MSISDN from USER. try again after AUTO_CONFIG_RETRY_INTERVAL.");
                    WorkflowBell.this.setValidityTimer(300);
                    return WorkflowBell.this.new Finish();
                }
            }
            WorkflowBell workflowBell15 = WorkflowBell.this;
            return workflowBell15.handleResponse2(workflowBell15.new Initialize(), WorkflowBell.this.new FetchHttps(), WorkflowBell.this.new Finish());
        }
    }

    protected class FetchOtp implements WorkflowBase.Workflow {
        protected FetchOtp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            IMSLog.i(WorkflowBell.LOG_TAG, WorkflowBell.this.mPhoneId, "FetchOtp:");
            WorkflowBell.this.mSharedInfo.setHttpClean();
            SharedInfo sharedInfo = WorkflowBell.this.mSharedInfo;
            sharedInfo.addHttpParam(ConfigConstants.PNAME.OTP, sharedInfo.getOtp());
            WorkflowBell workflowBell = WorkflowBell.this;
            workflowBell.mSharedInfo.setHttpResponse(workflowBell.getHttpResponse());
            if (WorkflowBell.this.mSharedInfo.getHttpResponse().getStatusCode() == 200) {
                return WorkflowBell.this.new Parse();
            }
            WorkflowBell workflowBell2 = WorkflowBell.this;
            return workflowBell2.handleResponse2(workflowBell2.new Initialize(), WorkflowBell.this.new FetchHttps(), WorkflowBell.this.new Finish());
        }
    }

    protected class Authorize implements WorkflowBase.Workflow {
        protected Authorize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            IMSLog.i(WorkflowBell.LOG_TAG, WorkflowBell.this.mPhoneId, "get OTP & save it to shared info");
            WorkflowBell.this.mPowerController.release();
            String otp = WorkflowBell.this.mTelephonyAdapter.getOtp();
            if (otp == null) {
                WorkflowBell.this.setValidityTimer(0);
                return WorkflowBell.this.new Finish();
            }
            WorkflowBell.this.mSharedInfo.setOtp(otp);
            WorkflowBell.this.mPowerController.lock();
            return WorkflowBell.this.new FetchOtp();
        }
    }

    protected class Parse implements WorkflowBase.Workflow {
        protected Parse() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            String str = WorkflowBell.LOG_TAG;
            IMSLog.i(str, WorkflowBell.this.mPhoneId, "Parse:");
            byte[] body = WorkflowBell.this.mSharedInfo.getHttpResponse().getBody();
            if (body == null) {
                body = "".getBytes();
            }
            Map<String, String> parse = WorkflowBell.this.mXmlParser.parse(new String(body, "utf-8"));
            if (parse == null) {
                throw new InvalidXmlException("no parsed xml data.");
            }
            if (parse.get("root/vers/version") == null || parse.get("root/vers/validity") == null) {
                IMSLog.i(str, WorkflowBell.this.mPhoneId, "config xml must contain atleast 2 items(version & validity).");
                WorkflowBell workflowBell = WorkflowBell.this;
                if (workflowBell.mCookieHandler.isCookie(workflowBell.mSharedInfo.getHttpResponse())) {
                    return WorkflowBell.this.new Authorize();
                }
                throw new UnknownStatusException("no body & no cookie. something wrong");
            }
            WorkflowBell.this.mSharedInfo.setParsedXml(parse);
            return WorkflowBell.this.new Store();
        }
    }

    protected class Store implements WorkflowBase.Workflow {
        protected Store() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            IMSLog.i(WorkflowBell.LOG_TAG, WorkflowBell.this.mPhoneId, "Store:");
            WorkflowBell workflowBell = WorkflowBell.this;
            WorkflowParamHandler workflowParamHandler = workflowBell.mParamHandler;
            workflowParamHandler.setOpModeWithUserAccept(workflowParamHandler.getUserAccept(workflowBell.mSharedInfo.getParsedXml()), WorkflowBell.this.mSharedInfo.getParsedXml(), WorkflowBase.OpMode.DISABLE);
            if (WorkflowBell.this.getOpMode() == WorkflowBase.OpMode.ACTIVE) {
                WorkflowBell workflowBell2 = WorkflowBell.this;
                workflowBell2.setValidityTimer(workflowBell2.getValidity());
            }
            return WorkflowBell.this.new Finish();
        }
    }

    protected class Finish implements WorkflowBase.Workflow {
        protected Finish() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            if (WorkflowBell.this.mSharedInfo.getHttpResponse() != null) {
                WorkflowBell workflowBell = WorkflowBell.this;
                workflowBell.setLastErrorCode(workflowBell.mSharedInfo.getHttpResponse().getStatusCode());
            }
            IMSLog.i(WorkflowBell.LOG_TAG, WorkflowBell.this.mPhoneId, "all workflow finished");
            WorkflowBell.this.createSharedInfo();
            return null;
        }
    }
}
