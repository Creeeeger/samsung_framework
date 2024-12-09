package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.database.sqlite.SQLiteFullException;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceRjil;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.exception.InvalidXmlException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import java.net.ConnectException;
import java.util.Map;
import java.util.Optional;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class WorkflowRjil extends WorkflowBase {
    public static final String LOG_TAG = WorkflowRjil.class.getSimpleName();

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        return null;
    }

    public WorkflowRjil(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDeviceRjil(context, iConfigModule, i), new StorageAdapter(), new HttpAdapter(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule), i);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    void work() {
        Initialize initialize;
        WorkflowBase.Workflow initialize2 = new Initialize();
        for (int i = WorkflowBase.AUTO_CONFIG_MAX_FLOWCOUNT; !this.mNeedToStopWork && initialize2 != null && i > 0; i--) {
            try {
                initialize2 = initialize2.run();
            } catch (SQLiteFullException e) {
                Log.i(LOG_TAG, "SQLiteFullException occur:" + e.getMessage());
                Log.i(LOG_TAG, "finish");
                e.printStackTrace();
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
            } catch (ConnectException e4) {
                Log.i(LOG_TAG, "ConnectException occur:" + e4.getMessage());
                Log.i(LOG_TAG, "wait 2 sec. and retry");
                sleep(UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                initialize = new Initialize();
                e4.printStackTrace();
                initialize2 = initialize;
            } catch (Exception e5) {
                Log.i(LOG_TAG, "unknown exception occur:" + e5.getMessage());
                Log.i(LOG_TAG, "wait 1 sec. and retry");
                sleep(1000L);
                initialize = new Initialize();
                e5.printStackTrace();
                initialize2 = initialize;
            }
        }
        if (this.mNeedToStopWork) {
            Log.i(LOG_TAG, "work interrupted");
            this.mNeedToStopWork = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getStorage$0(IStorageAdapter iStorageAdapter) {
        return iStorageAdapter.getState() == 1;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public IStorageAdapter getStorage() {
        return (IStorageAdapter) Optional.ofNullable(this.mStorage).filter(new Predicate() { // from class: com.sec.internal.ims.config.workflow.WorkflowRjil$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getStorage$0;
                lambda$getStorage$0 = WorkflowRjil.lambda$getStorage$0((IStorageAdapter) obj);
                return lambda$getStorage$0;
            }
        }).orElse(null);
    }

    class Initialize implements WorkflowBase.Workflow {
        Initialize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowBase.Workflow fetchHttp;
            WorkflowRjil workflowRjil = WorkflowRjil.this;
            workflowRjil.mSharedInfo.setUrl(workflowRjil.mParamHandler.initUrl());
            WorkflowRjil.this.mCookieHandler.clearCookie();
            WorkflowRjil workflowRjil2 = WorkflowRjil.this;
            if (workflowRjil2.mStartForce) {
                fetchHttp = workflowRjil2.new FetchHttp();
            } else {
                int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[workflowRjil2.getOpMode().ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    fetchHttp = WorkflowRjil.this.new FetchHttp();
                } else {
                    fetchHttp = (i == 4 || i == 5) ? WorkflowRjil.this.new Finish() : null;
                }
            }
            if (!(fetchHttp instanceof FetchHttp) || WorkflowRjil.this.mMobileNetwork) {
                return fetchHttp;
            }
            Log.i(WorkflowRjil.LOG_TAG, "now use wifi. try non-ps step directly.");
            return WorkflowRjil.this.new FetchHttps();
        }
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowRjil$1, reason: invalid class name */
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
            WorkflowRjil.this.mSharedInfo.setHttpDefault();
            WorkflowRjil workflowRjil = WorkflowRjil.this;
            workflowRjil.mSharedInfo.setHttpResponse(workflowRjil.getHttpResponse());
            if (WorkflowRjil.this.mSharedInfo.getHttpResponse().getStatusCode() == 511) {
                return WorkflowRjil.this.new FetchHttps();
            }
            WorkflowRjil workflowRjil2 = WorkflowRjil.this;
            return workflowRjil2.handleResponse2(workflowRjil2.new Initialize(), WorkflowRjil.this.new FetchHttps(), WorkflowRjil.this.new Finish());
        }
    }

    class FetchHttps implements WorkflowBase.Workflow {
        FetchHttps() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowRjil.this.mSharedInfo.setHttpsDefault();
            WorkflowRjil workflowRjil = WorkflowRjil.this;
            workflowRjil.mCookieHandler.handleCookie(workflowRjil.mSharedInfo.getHttpResponse());
            WorkflowRjil workflowRjil2 = WorkflowRjil.this;
            workflowRjil2.mSharedInfo.addHttpParam("vers", String.valueOf(workflowRjil2.getVersion()));
            WorkflowRjil workflowRjil3 = WorkflowRjil.this;
            workflowRjil3.mSharedInfo.addHttpParam("IMSI", workflowRjil3.mTelephonyAdapter.getImsi());
            WorkflowRjil workflowRjil4 = WorkflowRjil.this;
            workflowRjil4.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, workflowRjil4.mTelephonyAdapter.getImei());
            WorkflowRjil workflowRjil5 = WorkflowRjil.this;
            workflowRjil5.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RJIL_TOKEN, workflowRjil5.mParamHandler.encodeRFC7254(workflowRjil5.mTelephonyAdapter.getImei()));
            WorkflowRjil workflowRjil6 = WorkflowRjil.this;
            workflowRjil6.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SIM_MODE, workflowRjil6.mTelephonyAdapter.getMnc());
            WorkflowRjil.this.mSharedInfo.addHttpParam("terminal_model", ConfigConstants.BUILD.TERMINAL_MODEL);
            WorkflowRjil.this.mSharedInfo.addHttpParam("client_version", "RCSAndJIO-" + WorkflowRjil.this.mClientVersion);
            WorkflowRjil.this.mSharedInfo.addHttpParam("default_sms_app", "1");
            WorkflowRjil workflowRjil7 = WorkflowRjil.this;
            if (!workflowRjil7.mMobileNetwork || workflowRjil7.mSharedInfo.getHttpResponse().getStatusCode() == 511) {
                String userMsisdn = WorkflowRjil.this.mSharedInfo.getUserMsisdn();
                if (TextUtils.isEmpty(userMsisdn)) {
                    userMsisdn = WorkflowRjil.this.mTelephonyAdapter.getMsisdn();
                }
                if (!TextUtils.isEmpty(userMsisdn)) {
                    WorkflowRjil workflowRjil8 = WorkflowRjil.this;
                    workflowRjil8.mSharedInfo.addHttpParam("msisdn", workflowRjil8.mParamHandler.encodeRFC3986(userMsisdn));
                }
                WorkflowRjil workflowRjil9 = WorkflowRjil.this;
                workflowRjil9.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SMS_PORT, workflowRjil9.mTelephonyAdapter.getSmsDestPort());
                WorkflowRjil workflowRjil10 = WorkflowRjil.this;
                workflowRjil10.mSharedInfo.addHttpParam("token", workflowRjil10.getToken());
            }
            WorkflowRjil.this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
            WorkflowRjil workflowRjil11 = WorkflowRjil.this;
            workflowRjil11.mSharedInfo.addHttpParam("terminal_sw_version", workflowRjil11.mParamHandler.getModelInfoFromCarrierVersion(ConfigUtil.getModelName(workflowRjil11.mPhoneId), ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 8, true));
            WorkflowRjil workflowRjil12 = WorkflowRjil.this;
            if (workflowRjil12.mStartForce) {
                workflowRjil12.mSharedInfo.addHttpParam("vers", "0");
            }
            if (WorkflowRjil.this.getOpMode() == WorkflowBase.OpMode.DORMANT) {
                Log.i(WorkflowRjil.LOG_TAG, "DORMANT mode. use backup version :" + WorkflowRjil.this.getVersionBackup());
                WorkflowRjil workflowRjil13 = WorkflowRjil.this;
                workflowRjil13.mSharedInfo.addHttpParam("vers", workflowRjil13.getVersionBackup());
            }
            WorkflowRjil workflowRjil14 = WorkflowRjil.this;
            workflowRjil14.mSharedInfo.setHttpResponse(workflowRjil14.getHttpResponse());
            int statusCode = WorkflowRjil.this.mSharedInfo.getHttpResponse().getStatusCode();
            if (statusCode == 200) {
                Log.i(WorkflowRjil.LOG_TAG, "200 OK received. try parsing");
                return WorkflowRjil.this.new Parse();
            }
            if (statusCode == 403) {
                Log.i(WorkflowRjil.LOG_TAG, "403 received. Finish");
                return WorkflowRjil.this.new Finish();
            }
            Log.i(WorkflowRjil.LOG_TAG, " http status : " + statusCode);
            WorkflowRjil workflowRjil15 = WorkflowRjil.this;
            return workflowRjil15.handleResponse2(workflowRjil15.new Initialize(), WorkflowRjil.this.new FetchHttps(), WorkflowRjil.this.new Finish());
        }
    }

    class FetchOtp implements WorkflowBase.Workflow {
        FetchOtp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowRjil.this.mSharedInfo.setHttpClean();
            SharedInfo sharedInfo = WorkflowRjil.this.mSharedInfo;
            sharedInfo.addHttpParam(ConfigConstants.PNAME.OTP, sharedInfo.getOtp());
            WorkflowRjil workflowRjil = WorkflowRjil.this;
            workflowRjil.mSharedInfo.setHttpResponse(workflowRjil.getHttpResponse());
            if (WorkflowRjil.this.mSharedInfo.getHttpResponse().getStatusCode() == 200) {
                return WorkflowRjil.this.new Parse();
            }
            WorkflowRjil workflowRjil2 = WorkflowRjil.this;
            return workflowRjil2.handleResponse2(workflowRjil2.new Initialize(), WorkflowRjil.this.new FetchHttps(), WorkflowRjil.this.new Finish());
        }
    }

    class Authorize implements WorkflowBase.Workflow {
        Authorize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            Log.i(WorkflowRjil.LOG_TAG, "get OTP & save it to shared info");
            WorkflowRjil.this.mPowerController.release();
            WorkflowRjil.this.mTelephonyAdapter.registerUneregisterForOTP(true);
            String otp = WorkflowRjil.this.mTelephonyAdapter.getOtp();
            if (otp == null) {
                WorkflowRjil.this.mTelephonyAdapter.registerUneregisterForOTP(false);
                return WorkflowRjil.this.new Finish();
            }
            WorkflowRjil.this.mTelephonyAdapter.registerUneregisterForOTP(false);
            WorkflowRjil.this.mSharedInfo.setOtp(otp);
            WorkflowRjil.this.mPowerController.lock();
            return WorkflowRjil.this.new FetchOtp();
        }
    }

    class Parse implements WorkflowBase.Workflow {
        Parse() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            byte[] body = WorkflowRjil.this.mSharedInfo.getHttpResponse().getBody();
            if (body == null) {
                body = "".getBytes();
            }
            Map<String, String> parse = WorkflowRjil.this.mXmlParser.parse(new String(body, "utf-8"));
            if (parse == null) {
                throw new InvalidXmlException("no parsed xml ConfigContract.");
            }
            if (parse.get("root/vers/version") == null || parse.get("root/vers/validity") == null) {
                Log.i(WorkflowRjil.LOG_TAG, "config xml must contain atleast 2 items(version & validity).");
                WorkflowRjil workflowRjil = WorkflowRjil.this;
                if (workflowRjil.mCookieHandler.isCookie(workflowRjil.mSharedInfo.getHttpResponse())) {
                    return WorkflowRjil.this.new Authorize();
                }
                throw new UnknownStatusException("no body & no cookie. something wrong");
            }
            WorkflowRjil.this.mSharedInfo.setParsedXml(parse);
            return WorkflowRjil.this.new Store();
        }
    }

    class Store implements WorkflowBase.Workflow {
        Store() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowRjil workflowRjil = WorkflowRjil.this;
            boolean userAccept = workflowRjil.mParamHandler.getUserAccept(workflowRjil.mSharedInfo.getParsedXml());
            WorkflowRjil workflowRjil2 = WorkflowRjil.this;
            workflowRjil2.mParamHandler.setOpModeWithUserAccept(userAccept, workflowRjil2.mSharedInfo.getParsedXml(), WorkflowBase.OpMode.DISABLE);
            if (WorkflowRjil.this.getOpMode() == WorkflowBase.OpMode.ACTIVE) {
                WorkflowRjil workflowRjil3 = WorkflowRjil.this;
                workflowRjil3.setValidityTimer(workflowRjil3.getValidity());
            }
            WorkflowRjil.this.setTcUserAccept(userAccept ? 1 : 0);
            return WorkflowRjil.this.new Finish();
        }
    }

    class Finish implements WorkflowBase.Workflow {
        Finish() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            if (WorkflowRjil.this.mSharedInfo.getHttpResponse() != null) {
                WorkflowRjil workflowRjil = WorkflowRjil.this;
                workflowRjil.setLastErrorCode(workflowRjil.mSharedInfo.getHttpResponse().getStatusCode());
            }
            Log.i(WorkflowRjil.LOG_TAG, "all workflow finished");
            WorkflowRjil.this.createSharedInfo();
            return null;
        }
    }
}
