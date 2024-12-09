package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteFullException;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.util.ArrayUtils;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.header.WwwAuthenticateHeader;
import com.sec.internal.helper.httpclient.DigestAuth;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.config.ConfigContract;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.exception.InvalidXmlException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.ITelephonyAdapter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class WorkflowPrimaryDevice extends WorkflowBase {
    private static final String BODY = "";
    private static final String DIGEST_URI = "/";
    private static final String IMS_SWITCH = "imsswitch";
    private static final String LOG_TAG_BASE = WorkflowPrimaryDevice.class.getSimpleName();
    private static final String PASSWD = "";
    private static final String USER_NAME = "";
    private String LOG_TAG;
    protected boolean mIsheaderEnrichment;
    SharedPreferences.OnSharedPreferenceChangeListener mRcsSwitchListener;
    protected boolean mRescheduleValidityTimer;

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(SharedPreferences sharedPreferences, String str) {
        Log.i(this.LOG_TAG, "mRcsSwitchListener onChange");
        if (ImsConstants.SystemSettings.RCS_USER_SETTING1.getName().equals(str)) {
            sendMessage(obtainMessage(10, Boolean.valueOf(sharedPreferences.getBoolean(str, false))));
        }
    }

    public WorkflowPrimaryDevice(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, ITelephonyAdapter iTelephonyAdapter, int i) {
        super(looper, context, iConfigModule, mno, iTelephonyAdapter, new StorageAdapter(), new HttpAdapter(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule), i);
        String str = LOG_TAG_BASE;
        this.LOG_TAG = str;
        this.mIsheaderEnrichment = false;
        this.mRescheduleValidityTimer = false;
        this.mRcsSwitchListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.sec.internal.ims.config.workflow.WorkflowPrimaryDevice$$ExternalSyntheticLambda0
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                WorkflowPrimaryDevice.this.lambda$new$0(sharedPreferences, str2);
            }
        };
        if (ConfigUtil.isRcsEur(this.mMno)) {
            registerListenersAndObservers();
        }
        this.LOG_TAG = str + "[" + i + "]";
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, android.os.Handler
    public void handleMessage(Message message) {
        int i = message.what;
        if (i == 5) {
            if (ConfigUtil.isSecDmaPackageInuse(this.mContext, this.mPhoneId)) {
                if (ImsRegistry.isRcsEnabledByPhoneId(this.mPhoneId) && ConfigUtil.isRcsAvailable(this.mContext, this.mPhoneId, this.mSm)) {
                    Log.i(this.LOG_TAG, "sms default application is changed to samsung, schedule autoconf");
                    scheduleAutoconfig(getVersion());
                    return;
                } else {
                    this.mRescheduleValidityTimer = true;
                    return;
                }
            }
            Log.i(this.LOG_TAG, "sms default application is changed to non-samsung, cancel validity timer");
            cancelValidityTimer();
            return;
        }
        if (i == 10) {
            if (((Boolean) message.obj).booleanValue() && this.mRescheduleValidityTimer) {
                Log.i(this.LOG_TAG, "Rescheduling validity timer due to RCS switch change");
                this.mRescheduleValidityTimer = false;
                scheduleAutoconfig(getVersion());
                return;
            } else {
                cancelValidityTimer();
                this.mRescheduleValidityTimer = true;
                return;
            }
        }
        super.handleMessage(message);
    }

    private void registerListenersAndObservers() {
        this.mContext.getSharedPreferences("imsswitch_" + this.mPhoneId, 0).registerOnSharedPreferenceChangeListener(this.mRcsSwitchListener);
    }

    private void unregisterListenersAndObservers() {
        this.mContext.getSharedPreferences("imsswitch_" + this.mPhoneId, 0).unregisterOnSharedPreferenceChangeListener(this.mRcsSwitchListener);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    void work() {
        WorkflowBase.Workflow initialize;
        WorkflowBase.Workflow initialize2 = new Initialize();
        for (int i = WorkflowBase.AUTO_CONFIG_MAX_FLOWCOUNT; initialize2 != null && i > 0; i--) {
            try {
                initialize2 = initialize2.run();
            } catch (SQLiteFullException e) {
                Log.i(this.LOG_TAG, "SQLiteFullException occur:" + e.getMessage());
                Log.i(this.LOG_TAG, "finish workflow");
                initialize = new Finish();
                e.printStackTrace();
                initialize2 = initialize;
            } catch (NoInitialDataException e2) {
                Log.i(this.LOG_TAG, "NoInitialDataException occur:" + e2.getMessage());
                Log.i(this.LOG_TAG, "wait 10 sec. and retry");
                sleep(10000L);
                initialize = new Initialize();
                e2.printStackTrace();
                initialize2 = initialize;
            } catch (UnknownStatusException e3) {
                Log.i(this.LOG_TAG, "UnknownStatusException occur:" + e3.getMessage());
                Log.i(this.LOG_TAG, "wait 2 sec. and retry");
                sleep(UtStateMachine.HTTP_READ_TIMEOUT_GCF);
                initialize = new Initialize();
                e3.printStackTrace();
                initialize2 = initialize;
            } catch (Exception e4) {
                if (e4.getMessage() != null) {
                    Log.i(this.LOG_TAG, "unknown exception occur:" + e4.getMessage());
                }
                Log.i(this.LOG_TAG, "wait 1 sec. and retry");
                sleep(1000L);
                initialize = new Initialize();
                e4.printStackTrace();
                initialize2 = initialize;
            }
        }
    }

    class Initialize implements WorkflowBase.Workflow {
        Initialize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowBase.Workflow fetchHttp;
            WorkflowPrimaryDevice workflowPrimaryDevice = WorkflowPrimaryDevice.this;
            workflowPrimaryDevice.mSharedInfo.setUrl(workflowPrimaryDevice.mParamHandler.initUrl());
            WorkflowPrimaryDevice.this.mCookieHandler.clearCookie();
            WorkflowPrimaryDevice workflowPrimaryDevice2 = WorkflowPrimaryDevice.this;
            if (workflowPrimaryDevice2.mStartForce) {
                workflowPrimaryDevice2.setToken("", DiagnosisConstants.RCSA_TDRE.FORCE_ACS);
                fetchHttp = WorkflowPrimaryDevice.this.new FetchHttp();
            } else {
                int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[workflowPrimaryDevice2.getOpMode().ordinal()];
                if (i == 1 || i == 2 || i == 3) {
                    fetchHttp = WorkflowPrimaryDevice.this.new FetchHttp();
                } else {
                    fetchHttp = (i == 4 || i == 5) ? WorkflowPrimaryDevice.this.new Finish() : null;
                }
            }
            if (!(fetchHttp instanceof FetchHttp)) {
                return fetchHttp;
            }
            WorkflowPrimaryDevice workflowPrimaryDevice3 = WorkflowPrimaryDevice.this;
            if (workflowPrimaryDevice3.mMobileNetwork) {
                return fetchHttp;
            }
            Log.i(workflowPrimaryDevice3.LOG_TAG, "now use wifi. try non-ps step directly.");
            return WorkflowPrimaryDevice.this.new FetchHttps();
        }
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowPrimaryDevice$1, reason: invalid class name */
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
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.ENABLE_RCS_BY_USER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_RCS_BY_USER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    class FetchHttp implements WorkflowBase.Workflow {
        FetchHttp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowPrimaryDevice.this.mSharedInfo.setHttpDefault();
            WorkflowPrimaryDevice workflowPrimaryDevice = WorkflowPrimaryDevice.this;
            workflowPrimaryDevice.mSharedInfo.setHttpResponse(workflowPrimaryDevice.getHttpResponse());
            int statusCode = WorkflowPrimaryDevice.this.mSharedInfo.getHttpResponse().getStatusCode();
            if (statusCode == 200 || statusCode == 511) {
                if (statusCode == 511) {
                    WorkflowPrimaryDevice.this.mIsheaderEnrichment = true;
                }
                return WorkflowPrimaryDevice.this.new FetchHttps();
            }
            WorkflowPrimaryDevice workflowPrimaryDevice2 = WorkflowPrimaryDevice.this;
            return workflowPrimaryDevice2.handleResponse2(workflowPrimaryDevice2.new Initialize(), WorkflowPrimaryDevice.this.new FetchHttps(), WorkflowPrimaryDevice.this.new Finish());
        }
    }

    class FetchHttps implements WorkflowBase.Workflow {
        FetchHttps() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowPrimaryDevice.this.setSharedInfoWithParam();
            int statusCode = WorkflowPrimaryDevice.this.mSharedInfo.getHttpResponse().getStatusCode();
            if (statusCode == 200) {
                byte[] body = WorkflowPrimaryDevice.this.mSharedInfo.getHttpResponse().getBody();
                if (ArrayUtils.isEmpty(body)) {
                    Log.i(WorkflowPrimaryDevice.this.LOG_TAG, "200 OK received. Body empty or null. Start Parsing.");
                    return WorkflowPrimaryDevice.this.new Parse();
                }
                String str = new String(body, StandardCharsets.UTF_8);
                try {
                    new JSONObject(str.substring(str.indexOf("{"), str.lastIndexOf("}") + 1));
                } catch (Exception unused) {
                    Log.d(WorkflowPrimaryDevice.this.LOG_TAG, "200 OK received. Body non-empty, but not Json either. Start Parsing");
                    return WorkflowPrimaryDevice.this.new Parse();
                }
            } else if (statusCode == 403) {
                WorkflowPrimaryDevice workflowPrimaryDevice = WorkflowPrimaryDevice.this;
                if (workflowPrimaryDevice.mMno == Mno.BELL || (workflowPrimaryDevice.mMobileNetwork && !workflowPrimaryDevice.mIsheaderEnrichment)) {
                    Log.i(workflowPrimaryDevice.LOG_TAG, "403 received. Finish");
                    return WorkflowPrimaryDevice.this.new Finish();
                }
                if (!workflowPrimaryDevice.mSharedInfo.getHttpParams().containsKey("msisdn")) {
                    Log.i(WorkflowPrimaryDevice.this.LOG_TAG, "no msisdn. try to get user");
                    WorkflowPrimaryDevice.this.mPowerController.release();
                    WorkflowPrimaryDevice workflowPrimaryDevice2 = WorkflowPrimaryDevice.this;
                    String msisdn = workflowPrimaryDevice2.mDialog.getMsisdn(workflowPrimaryDevice2.mTelephonyAdapter.getSimCountryCode());
                    WorkflowPrimaryDevice.this.mPowerController.lock();
                    if (TextUtils.isEmpty(msisdn)) {
                        Log.i(WorkflowPrimaryDevice.this.LOG_TAG, "user didn't enter msisdn finish process");
                        return WorkflowPrimaryDevice.this.new Finish();
                    }
                    WorkflowPrimaryDevice.this.mSharedInfo.setUserMsisdn(msisdn);
                    return WorkflowPrimaryDevice.this.new Initialize();
                }
                if (!TextUtils.isEmpty(WorkflowPrimaryDevice.this.mSharedInfo.getUserMsisdn())) {
                    Log.i(WorkflowPrimaryDevice.this.LOG_TAG, "wrong MSISDN from USER. try again after 300");
                    WorkflowPrimaryDevice.this.setValidityTimer(300);
                    WorkflowPrimaryDevice.this.mMsisdnHandler.setMsisdnValue("");
                    return WorkflowPrimaryDevice.this.new Finish();
                }
            }
            WorkflowPrimaryDevice workflowPrimaryDevice3 = WorkflowPrimaryDevice.this;
            return workflowPrimaryDevice3.handleResponse2(workflowPrimaryDevice3.new Initialize(), WorkflowPrimaryDevice.this.new FetchHttps(), WorkflowPrimaryDevice.this.new Finish());
        }
    }

    protected void setSharedInfoWithParam() {
        this.mSharedInfo.setHttpsDefault();
        this.mCookieHandler.clearCookie();
        if (this.mParamHandler.isConfigProxy()) {
            this.mSharedInfo.changeConfigProxyUriForHttp();
            this.mSharedInfo.setHttpProxyDefault();
        }
        if (this.mMobileNetwork && this.mSharedInfo.getHttpResponse().getHeader().get(HttpController.HEADER_SET_COOKIE) != null) {
            this.mCookieHandler.handleCookie(this.mSharedInfo.getHttpResponse());
        }
        this.mSharedInfo.addHttpParam("vers", String.valueOf(getVersion()));
        this.mSharedInfo.addHttpParam("IMSI", this.mTelephonyAdapter.getSubscriberId(SimUtil.getSubId(this.mPhoneId)));
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, this.mTelephonyAdapter.getDeviceId(this.mPhoneId));
        this.mSharedInfo.addHttpParam("terminal_model", ConfigContract.BUILD.getTerminalModel());
        this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
        this.mSharedInfo.addHttpParam("terminal_sw_version", this.mParamHandler.getModelInfoFromCarrierVersion(ConfigUtil.getModelName(this.mPhoneId), ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 8, true));
        this.mSharedInfo.addHttpParam("default_sms_app", ConfigUtil.isSecDmaPackageInuse(this.mContext, this.mPhoneId) ? "1" : "2");
        setSharedInfoWithAuthParam();
        setOpenIdAuthParams();
        if (this.mStartForce) {
            this.mSharedInfo.addHttpParam("vers", "0");
        }
        if (getOpMode() == WorkflowBase.OpMode.DORMANT) {
            Log.i(this.LOG_TAG, "DORMANT mode. use backup version :" + getVersionBackup());
            this.mSharedInfo.addHttpParam("vers", getVersionBackup());
        }
        this.mSharedInfo.setHttpResponse(getHttpResponse());
    }

    protected void setOpenIdAuthParams() {
        if (this.mSharedInfo.getHttpResponse() == null) {
            return;
        }
        int statusCode = this.mSharedInfo.getHttpResponse().getStatusCode();
        if (statusCode == 401) {
            Optional.ofNullable(this.mSharedInfo.getHttpResponse().getHeader().get("WWW-Authenticate")).map(new Function() { // from class: com.sec.internal.ims.config.workflow.WorkflowPrimaryDevice$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$setOpenIdAuthParams$1;
                    lambda$setOpenIdAuthParams$1 = WorkflowPrimaryDevice.lambda$setOpenIdAuthParams$1((List) obj);
                    return lambda$setOpenIdAuthParams$1;
                }
            }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.config.workflow.WorkflowPrimaryDevice$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WorkflowPrimaryDevice.this.lambda$setOpenIdAuthParams$2((String) obj);
                }
            });
            return;
        }
        if (statusCode == 302) {
            Log.d(this.LOG_TAG, "302 Received");
            Optional.ofNullable(this.mSharedInfo.getHttpResponse().getHeader().get("Location")).map(new Function() { // from class: com.sec.internal.ims.config.workflow.WorkflowPrimaryDevice$$ExternalSyntheticLambda4
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$setOpenIdAuthParams$3;
                    lambda$setOpenIdAuthParams$3 = WorkflowPrimaryDevice.lambda$setOpenIdAuthParams$3((List) obj);
                    return lambda$setOpenIdAuthParams$3;
                }
            }).ifPresent(new Consumer() { // from class: com.sec.internal.ims.config.workflow.WorkflowPrimaryDevice$$ExternalSyntheticLambda5
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WorkflowPrimaryDevice.this.lambda$setOpenIdAuthParams$5((String) obj);
                }
            });
        } else if (statusCode == 200) {
            Optional.ofNullable(this.mSharedInfo.getHttpResponse().getBody()).ifPresent(new Consumer() { // from class: com.sec.internal.ims.config.workflow.WorkflowPrimaryDevice$$ExternalSyntheticLambda6
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WorkflowPrimaryDevice.this.lambda$setOpenIdAuthParams$6((byte[]) obj);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setOpenIdAuthParams$1(List list) {
        return (String) list.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenIdAuthParams$2(String str) {
        this.mSharedInfo.parseAkaParams(str);
        HashMap<String, String> aKAParams = this.mSharedInfo.getAKAParams();
        DigestAuth digestAuth = new DigestAuth();
        digestAuth.setDigestAuth("", "", aKAParams.get("realm"), aKAParams.get(WwwAuthenticateHeader.HEADER_PARAM_NONCE), "POST", DIGEST_URI, aKAParams.get(WwwAuthenticateHeader.HEADER_PARAM_ALGORITHM), aKAParams.get(AuthenticationHeaders.HEADER_PARAM_QOP), "");
        String createCnonce = DigestAuth.createCnonce();
        String resp = digestAuth.getResp();
        this.mSharedInfo.addHttpHeader("Authorization", Collections.singletonList(str + ",cnonce=" + createCnonce + ",response=" + resp));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setOpenIdAuthParams$3(List list) {
        return (String) list.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenIdAuthParams$5(String str) {
        Log.d(this.LOG_TAG, "TOP Location: " + str);
        Map<String, List<String>> header = this.mSharedInfo.getHttpResponse().getHeader();
        if (header.get("access_token") != null) {
            Log.d(this.LOG_TAG, "prepare for configuration request");
        } else if (header.get("code") != null) {
            Log.d(this.LOG_TAG, "should reach out token end point for access token");
        } else {
            this.mSharedInfo.parseOidcParams(str);
            this.mSharedInfo.getOidcParams().forEach(new BiConsumer() { // from class: com.sec.internal.ims.config.workflow.WorkflowPrimaryDevice$$ExternalSyntheticLambda1
                @Override // java.util.function.BiConsumer
                public final void accept(Object obj, Object obj2) {
                    WorkflowPrimaryDevice.this.lambda$setOpenIdAuthParams$4((String) obj, (String) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenIdAuthParams$4(String str, String str2) {
        this.mSharedInfo.addHttpParam(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOpenIdAuthParams$6(byte[] bArr) {
        try {
            String str = new String(bArr, "UTF-8");
            if (str.indexOf("{") != -1 && str.lastIndexOf("}") != -1) {
                JSONObject jSONObject = new JSONObject(str.substring(str.indexOf("{"), str.lastIndexOf("}") + 1));
                if (jSONObject.has("access_token")) {
                    this.mSharedInfo.addHttpParam("access_token", jSONObject.getString("access_token"));
                    if (jSONObject.has(AuthenticationHeaders.HEADER_PARAM_ID_TOKEN)) {
                        this.mSharedInfo.addHttpParam(AuthenticationHeaders.HEADER_PARAM_ID_TOKEN, jSONObject.getString(AuthenticationHeaders.HEADER_PARAM_ID_TOKEN));
                    }
                    this.mSharedInfo.setUrl(this.mParamHandler.initUrl());
                    return;
                }
                return;
            }
            Log.d(this.LOG_TAG, "Not a JSON Body");
        } catch (UnsupportedEncodingException unused) {
            Log.d(this.LOG_TAG, "fail to create a new string by UnsupportedEncodingException");
        } catch (JSONException unused2) {
            Log.d(this.LOG_TAG, "Not a JSON Body by JSONException");
        } catch (Exception unused3) {
            Log.d(this.LOG_TAG, "Not a JSON Body");
        }
    }

    protected void setSharedInfoWithAuthParam() {
        if (!this.mMobileNetwork || this.mIsheaderEnrichment || this.mSharedInfo.getHttpResponse().getStatusCode() == 511) {
            if (!TextUtils.isEmpty(this.mSharedInfo.getUserMsisdn())) {
                SharedInfo sharedInfo = this.mSharedInfo;
                sharedInfo.addHttpParam("msisdn", this.mParamHandler.encodeRFC3986(sharedInfo.getUserMsisdn()));
            } else if (!TextUtils.isEmpty(this.mTelephonyAdapter.getMsisdn())) {
                this.mSharedInfo.addHttpParam("msisdn", this.mParamHandler.encodeRFC3986(this.mTelephonyAdapter.getMsisdn()));
            } else if (!TextUtils.isEmpty(this.mMsisdnHandler.getLastMsisdnValue())) {
                this.mSharedInfo.addHttpParam("msisdn", this.mMsisdnHandler.getLastMsisdnValue());
            }
            this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SMS_PORT, this.mTelephonyAdapter.getSmsDestPort());
            this.mSharedInfo.addHttpParam("token", getToken());
        }
    }

    class FetchOtp implements WorkflowBase.Workflow {
        FetchOtp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowPrimaryDevice.this.mSharedInfo.setHttpClean();
            WorkflowPrimaryDevice.this.mCookieHandler.clearCookie();
            WorkflowPrimaryDevice workflowPrimaryDevice = WorkflowPrimaryDevice.this;
            workflowPrimaryDevice.mCookieHandler.handleCookie(workflowPrimaryDevice.mSharedInfo.getHttpResponse());
            SharedInfo sharedInfo = WorkflowPrimaryDevice.this.mSharedInfo;
            sharedInfo.addHttpParam(ConfigConstants.PNAME.OTP, sharedInfo.getOtp());
            WorkflowPrimaryDevice workflowPrimaryDevice2 = WorkflowPrimaryDevice.this;
            workflowPrimaryDevice2.mSharedInfo.setHttpResponse(workflowPrimaryDevice2.getHttpResponse());
            if (WorkflowPrimaryDevice.this.mSharedInfo.getHttpResponse().getStatusCode() == 200) {
                return WorkflowPrimaryDevice.this.new Parse();
            }
            WorkflowPrimaryDevice workflowPrimaryDevice3 = WorkflowPrimaryDevice.this;
            return workflowPrimaryDevice3.handleResponse2(workflowPrimaryDevice3.new Initialize(), WorkflowPrimaryDevice.this.new FetchHttps(), WorkflowPrimaryDevice.this.new Finish());
        }
    }

    class Authorize implements WorkflowBase.Workflow {
        Authorize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            Log.i(WorkflowPrimaryDevice.this.LOG_TAG, "get OTP & save it to shared info");
            WorkflowPrimaryDevice.this.mPowerController.release();
            String otp = WorkflowPrimaryDevice.this.mTelephonyAdapter.getOtp();
            if (otp == null) {
                WorkflowPrimaryDevice.this.setValidityTimer(0);
                return WorkflowPrimaryDevice.this.new Finish();
            }
            WorkflowPrimaryDevice.this.mSharedInfo.setOtp(otp);
            WorkflowPrimaryDevice.this.mPowerController.lock();
            return WorkflowPrimaryDevice.this.new FetchOtp();
        }
    }

    class Parse implements WorkflowBase.Workflow {
        Parse() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            byte[] body = WorkflowPrimaryDevice.this.mSharedInfo.getHttpResponse().getBody();
            if (body == null) {
                body = "".getBytes(StandardCharsets.UTF_8);
            }
            Map<String, String> parse = WorkflowPrimaryDevice.this.mXmlParser.parse(new String(body, "utf-8"));
            if (parse == null) {
                throw new InvalidXmlException("no parsed xml data.");
            }
            if (parse.get("root/vers/version") == null || parse.get("root/vers/validity") == null) {
                Log.i(WorkflowPrimaryDevice.this.LOG_TAG, "config xml must contain atleast 2 items(version & validity).");
                WorkflowPrimaryDevice workflowPrimaryDevice = WorkflowPrimaryDevice.this;
                if (workflowPrimaryDevice.mCookieHandler.isCookie(workflowPrimaryDevice.mSharedInfo.getHttpResponse())) {
                    return WorkflowPrimaryDevice.this.new Authorize();
                }
                throw new UnknownStatusException("no body & no cookie. something wrong");
            }
            parse.put(ConfigConstants.PATH.RAW_CONFIG_XML_FILE, new String(body, "utf-8"));
            WorkflowPrimaryDevice.this.mSharedInfo.setParsedXml(parse);
            WorkflowPrimaryDevice workflowPrimaryDevice2 = WorkflowPrimaryDevice.this;
            workflowPrimaryDevice2.mMsisdnHandler.setMsisdnValue(workflowPrimaryDevice2.mSharedInfo.getUserMsisdn());
            return WorkflowPrimaryDevice.this.new Store();
        }
    }

    class Store implements WorkflowBase.Workflow {
        Store() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1, types: [boolean, int] */
        /* JADX WARN: Type inference failed for: r3v3 */
        /* JADX WARN: Type inference failed for: r3v4 */
        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowPrimaryDevice workflowPrimaryDevice = WorkflowPrimaryDevice.this;
            Map<String, String> userMessage = workflowPrimaryDevice.mParamHandler.getUserMessage(workflowPrimaryDevice.mSharedInfo.getParsedXml());
            ?? r3 = 1;
            r3 = 1;
            if (userMessage.size() == 4) {
                int i = AnonymousClass1.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowPrimaryDevice.this.getOpMode().ordinal()];
                boolean z = i == 1 || i == 3 || i == 6 || i == 7;
                WorkflowPrimaryDevice workflowPrimaryDevice2 = WorkflowPrimaryDevice.this;
                int version = workflowPrimaryDevice2.getVersion(workflowPrimaryDevice2.mSharedInfo.getParsedXml());
                boolean z2 = WorkflowPrimaryDevice.this.getVersion() != version;
                boolean z3 = version < 1;
                if ((!z2 || z) && !z3) {
                    Log.i(WorkflowPrimaryDevice.this.LOG_TAG, "Previously working configuration available for this IMSI. Don't display T&C.");
                } else {
                    r3 = WorkflowPrimaryDevice.this.mParamHandler.getUserAcceptWithDialog(userMessage);
                }
            }
            WorkflowPrimaryDevice workflowPrimaryDevice3 = WorkflowPrimaryDevice.this;
            workflowPrimaryDevice3.mParamHandler.setOpModeWithUserAccept(r3, workflowPrimaryDevice3.mSharedInfo.getParsedXml(), WorkflowBase.OpMode.DISABLE);
            if (WorkflowPrimaryDevice.this.getOpMode() == WorkflowBase.OpMode.ACTIVE) {
                WorkflowPrimaryDevice workflowPrimaryDevice4 = WorkflowPrimaryDevice.this;
                workflowPrimaryDevice4.setValidityTimer(workflowPrimaryDevice4.getValidity());
            }
            WorkflowPrimaryDevice.this.setTcUserAccept(r3);
            return WorkflowPrimaryDevice.this.new Finish();
        }
    }

    class Finish implements WorkflowBase.Workflow {
        Finish() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            if (WorkflowPrimaryDevice.this.mSharedInfo.getHttpResponse() != null) {
                WorkflowPrimaryDevice workflowPrimaryDevice = WorkflowPrimaryDevice.this;
                workflowPrimaryDevice.setLastErrorCode(workflowPrimaryDevice.mSharedInfo.getHttpResponse().getStatusCode());
            }
            Log.i(WorkflowPrimaryDevice.this.LOG_TAG, "all workflow finished");
            WorkflowPrimaryDevice.this.createSharedInfo();
            return null;
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void cleanup() {
        super.cleanup();
        unregisterListenersAndObservers();
    }
}
