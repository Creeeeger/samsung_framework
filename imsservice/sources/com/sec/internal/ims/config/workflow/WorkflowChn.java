package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteFullException;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.HashManager;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.config.ConfigProvider;
import com.sec.internal.ims.config.SharedInfo;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapterChn;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceChn;
import com.sec.internal.ims.config.adapters.XmlParserAdapterMultipleServer;
import com.sec.internal.ims.config.exception.InvalidXmlException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class WorkflowChn extends WorkflowUpBase {
    protected static final int AUTO_CONFIG_MAX_FLOWCOUNT = 20;
    public static final String INTENT_ACTION_RCS_ENABLE = "android.intent.action.RCS_ENABLE";
    public static final String INTENT_PARAM_RCS_ENABLE = "RCS_ENABLE";
    public static final String INTENT_PARAM_RCS_ENABLE_TYPE = "action_type";
    public static final String INTENT_VALUE_RCS_ENABLE_TYPE_ALL_RCS = "ALL_RCS";
    private static final String LOG_TAG = WorkflowChn.class.getSimpleName();
    protected static final int MAX_SERVER_COUNT = ConfigConstants.APPID_MAP.size();
    protected boolean hasNotified;
    protected boolean mChangeOpModeIsRcsEnabled;
    protected int mHttpResult;
    protected boolean mIsReceicedXml;
    protected int mMinValidity;
    protected boolean mNeedChangeOpMode;
    protected List<ServerInfo> mNewServerInfoList;
    protected List<ServerInfo> mOldServerInfoList;
    protected int mServerCount;
    protected int mServerId;
    protected List<SharedInfo> mSharedInfoList;

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        return null;
    }

    class ServerInfo {
        public List<String> appIdList = new ArrayList();
        public String fqdn;

        ServerInfo() {
        }
    }

    public WorkflowChn(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDeviceChn(context, iConfigModule, i), new StorageAdapter(), new HttpAdapterChn(i), new XmlParserAdapterMultipleServer(), new DialogAdapter(context, iConfigModule), i);
        this.mHttpResult = 0;
        this.mMinValidity = Integer.MAX_VALUE;
        this.hasNotified = false;
        this.mServerId = 0;
        this.mNewServerInfoList = new ArrayList();
        this.mOldServerInfoList = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.mSharedInfoList = arrayList;
        this.mIsReceicedXml = false;
        this.mServerCount = 0;
        this.mNeedChangeOpMode = false;
        this.mChangeOpModeIsRcsEnabled = false;
        arrayList.add(this.mSharedInfo);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, android.os.Handler
    public void handleMessage(Message message) {
        boolean handleAdditionalServer;
        String str = LOG_TAG;
        Log.i(str, "handleMessage: " + message.what);
        int i = message.what;
        if (i == 0) {
            resetStorage();
            this.mStartForce = true;
        } else if (i != 1) {
            super.handleMessage(message);
            return;
        }
        if (this.mNeedChangeOpMode) {
            Log.i(str, "postponed changeOpMode");
            changeOpModeInternal(this.mChangeOpModeIsRcsEnabled);
        }
        if (this.mIsConfigOngoing) {
            Log.i(str, "AutoConfig: ongoing");
            return;
        }
        this.mIsConfigOngoing = true;
        Log.i(str, "AutoConfig: start");
        this.mModule.getHandler().removeMessages(3, Integer.valueOf(this.mPhoneId));
        this.mPowerController.lock();
        if (this.mServerId == 0) {
            ArrayList arrayList = new ArrayList();
            this.mOldServerInfoList = arrayList;
            if (setDefaultServerInfo(arrayList)) {
                setAdditionalServerInfo(this.mOldServerInfoList);
            }
        }
        int version = getVersion();
        if (needScheduleAutoconfig(this.mPhoneId)) {
            scheduleAutoconfig(version);
        }
        int version2 = getVersion();
        String identityByPhoneId = this.mTelephonyAdapter.getIdentityByPhoneId(this.mPhoneId);
        this.mIdentity = identityByPhoneId;
        if (identityByPhoneId == null) {
            this.mServerId = 0;
            handleAdditionalServer = false;
        } else {
            handleAdditionalServer = handleAdditionalServer();
        }
        Log.i(str, "mIsReceicedXml: " + this.mIsReceicedXml);
        this.mIsConfigOngoing = false;
        Log.i(str, "oldVersion: " + version + " newVersion: " + version2 + " next serverID: " + this.mServerId);
        if (!handleAdditionalServer) {
            Log.i(str, "AutoConfig: finish");
            setCompleted(true);
            this.mModule.getHandler().sendMessage(obtainMessage(3, version, version2, Integer.valueOf(this.mPhoneId)));
            this.hasNotified = false;
            this.mStartForce = false;
            this.mPowerController.release();
            this.mNeedChangeOpMode = false;
            return;
        }
        if (version2 <= 0 && !this.hasNotified) {
            Log.i(str, "Notifying ConfigModule");
            this.mModule.getHandler().sendMessage(obtainMessage(3, version, version2, Integer.valueOf(this.mPhoneId)));
            this.hasNotified = true;
        }
        sendEmptyMessage(1);
    }

    protected boolean handleAdditionalServer() {
        boolean z;
        int i = this.mServerId;
        if (i == 0) {
            ArrayList arrayList = new ArrayList();
            this.mNewServerInfoList = arrayList;
            z = setDefaultServerInfo(arrayList);
            if (z) {
                Log.i(LOG_TAG, "handleAdditionalServer: Access-control present");
                setAdditionalServerInfo(this.mNewServerInfoList);
                this.mServerCount = this.mNewServerInfoList.size();
            }
            updateTables();
        } else {
            z = i < this.mServerCount - 1;
        }
        if (z) {
            Log.i(LOG_TAG, "handleAdditionalServer: updating storage");
            this.mServerId++;
            this.mStorage.close();
            this.mStorage.open(this.mContext, ConfigProvider.CONFIG_DB_NAME_PREFIX + HashManager.generateMD5(this.mIdentity) + "_" + this.mServerId, this.mPhoneId);
            if (this.mServerId < this.mSharedInfoList.size()) {
                this.mSharedInfo = this.mSharedInfoList.get(this.mServerId);
            } else {
                SharedInfo sharedInfo = new SharedInfo(this.mContext, this.mSm, this.mRcsProfile, this.mRcsVersion, this.mClientPlatform, this.mClientVersion, this.mRcsEnabledByUser);
                this.mSharedInfo = sharedInfo;
                this.mSharedInfoList.add(sharedInfo);
            }
        } else {
            this.mServerId = 0;
            this.mStorage.close();
            this.mStorage.open(this.mContext, ConfigProvider.CONFIG_DB_NAME_PREFIX + HashManager.generateMD5(this.mIdentity), this.mPhoneId);
        }
        Log.i(LOG_TAG, "hasAdditionalServer: " + z);
        return z;
    }

    protected boolean setDefaultServerInfo(List<ServerInfo> list) {
        if (this.mStorage.read("root/access-control/server/0/app-id/0") == null) {
            return false;
        }
        ServerInfo serverInfo = new ServerInfo();
        for (int i = 0; i < MAX_SERVER_COUNT; i++) {
            String read = this.mStorage.read("root/access-control/default/app-id/" + i);
            if (read == null) {
                break;
            }
            serverInfo.appIdList.add(read);
        }
        list.add(serverInfo);
        return true;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected void writeDataToStorage(Map<String, String> map) {
        synchronized (IRcsPolicyManager.class) {
            int version = getVersion();
            int version2 = getVersion(map);
            if (getRcsDisabledState(map) == WorkflowBase.OpMode.NONE) {
                Log.i(LOG_TAG, "writeDataToStorage clear RcsDisabledState");
                setRcsDisabledState("");
            }
            Log.i(LOG_TAG, "writeDataToStorage oldVersion : " + version + " newVersion : " + version2);
            if (version2 <= 0 || version != version2) {
                clearStorage(DiagnosisConstants.RCSA_TDRE.UPDATE_REMOTE_CONFIG);
            }
            this.mStorage.writeAll(map);
        }
    }

    protected void setAdditionalServerInfo(List<ServerInfo> list) {
        for (int i = 0; i < MAX_SERVER_COUNT; i++) {
            String read = this.mStorage.read("root/access-control/server/" + i + "/fqdn");
            if (read == null) {
                return;
            }
            ServerInfo serverInfo = new ServerInfo();
            serverInfo.fqdn = read;
            for (int i2 = 0; i2 < MAX_SERVER_COUNT; i2++) {
                String read2 = this.mStorage.read("root/access-control/server/" + i + "/app-id/" + i2);
                if (read2 == null) {
                    break;
                }
                serverInfo.appIdList.add(read2);
            }
            list.add(serverInfo);
        }
    }

    void updateTables() {
        Log.i(LOG_TAG, "updateTables: mOldServerInfoList.size() " + this.mOldServerInfoList.size() + " mNewServerInfoList.size() " + this.mNewServerInfoList.size());
        for (int i = 1; i < this.mOldServerInfoList.size(); i++) {
            if ((i < this.mNewServerInfoList.size() && !this.mNewServerInfoList.get(i).fqdn.equals(this.mOldServerInfoList.get(i).fqdn)) || i >= this.mNewServerInfoList.size()) {
                Log.i(LOG_TAG, "updateTables: delete table " + i);
                this.mStorage.close();
                this.mStorage.open(this.mContext, ConfigProvider.CONFIG_DB_NAME_PREFIX + HashManager.generateMD5(this.mIdentity) + "_" + i, this.mPhoneId);
                this.mStorage.deleteAll();
            }
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase, com.sec.internal.ims.config.workflow.WorkflowBase
    void work() {
        WorkflowBase.Workflow initialize;
        WorkflowBase.Workflow initialize2 = new Initialize();
        for (int i = 20; initialize2 != null && i > 0; i--) {
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
                if (!RcsUtils.DualRcs.isDualRcsReg() && SimUtil.getActiveDataPhoneId() != this.mPhoneId) {
                    Log.i(LOG_TAG, "finish workflow");
                    initialize = new Finish();
                } else {
                    Log.i(LOG_TAG, "wait 10 sec. and retry");
                    sleep(10000L);
                    initialize = new Initialize();
                }
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

    class Initialize implements WorkflowBase.Workflow {
        Initialize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowBase.Workflow fetchHttp;
            WorkflowChn workflowChn = WorkflowChn.this;
            if (workflowChn.mHttpRedirect) {
                if (workflowChn.mSharedInfo.getUrl() == null) {
                    WorkflowChn workflowChn2 = WorkflowChn.this;
                    int i = workflowChn2.mServerId;
                    if (i != 0) {
                        workflowChn2.mSharedInfo.setUrl(workflowChn2.mParamHandler.initUrl(workflowChn2.mNewServerInfoList.get(i).fqdn));
                    } else {
                        workflowChn2.mSharedInfo.setUrl(workflowChn2.mParamHandler.initUrl(""));
                    }
                }
                WorkflowChn.this.mHttpRedirect = false;
            } else {
                int i2 = workflowChn.mServerId;
                if (i2 != 0) {
                    workflowChn.mSharedInfo.setUrl(workflowChn.mParamHandler.initUrl(workflowChn.mNewServerInfoList.get(i2).fqdn));
                } else {
                    workflowChn.mSharedInfo.setUrl(workflowChn.mParamHandler.initUrl(""));
                }
            }
            WorkflowChn.this.mCookieHandler.clearCookie();
            WorkflowChn workflowChn3 = WorkflowChn.this;
            if (workflowChn3.mStartForce) {
                fetchHttp = workflowChn3.new FetchHttp();
            } else {
                int i3 = AnonymousClass1.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[workflowChn3.getOpMode().ordinal()];
                if (i3 == 1 || i3 == 2 || i3 == 3) {
                    fetchHttp = WorkflowChn.this.new FetchHttp();
                } else {
                    fetchHttp = (i3 == 4 || i3 == 5) ? WorkflowChn.this.new Finish() : null;
                }
            }
            if (!(fetchHttp instanceof FetchHttp) || WorkflowChn.this.mMobileNetwork) {
                return fetchHttp;
            }
            Log.i(WorkflowChn.LOG_TAG, "now use wifi. try non-ps step directly.");
            return WorkflowChn.this.new FetchHttps();
        }
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowChn$1, reason: invalid class name */
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
            int subId = SimUtil.getSubId(WorkflowChn.this.mPhoneId);
            Log.i(WorkflowChn.LOG_TAG, "FetchHttp:run() mPhoneId: " + WorkflowChn.this.mPhoneId + " subId:" + subId);
            WorkflowChn workflowChn = WorkflowChn.this;
            workflowChn.mSharedInfo.setUserImsi(workflowChn.mTelephonyAdapter.getSubscriberId(subId));
            WorkflowChn workflowChn2 = WorkflowChn.this;
            if (!workflowChn2.mMobileNetwork) {
                workflowChn2.mSharedInfo.setHttpsCHN();
                return WorkflowChn.this.new FetchHttps();
            }
            workflowChn2.mSharedInfo.setHttpCHN();
            WorkflowChn workflowChn3 = WorkflowChn.this;
            workflowChn3.mSharedInfo.setHttpResponse(workflowChn3.getHttpResponse());
            WorkflowChn workflowChn4 = WorkflowChn.this;
            workflowChn4.mHttpResult = workflowChn4.mSharedInfo.getHttpResponse().getStatusCode();
            WorkflowChn workflowChn5 = WorkflowChn.this;
            int i = workflowChn5.mHttpResult;
            if (i == 200 || i == 511) {
                return workflowChn5.new FetchHttps();
            }
            if (ImsProfile.isRcsUpProfile(workflowChn5.mRcsProfile)) {
                WorkflowChn workflowChn6 = WorkflowChn.this;
                return workflowChn6.handleResponseForUp(workflowChn6.new Initialize(), WorkflowChn.this.new FetchHttps(), WorkflowChn.this.new Finish());
            }
            WorkflowChn workflowChn7 = WorkflowChn.this;
            return workflowChn7.handleResponse2(workflowChn7.new Initialize(), WorkflowChn.this.new FetchHttps(), WorkflowChn.this.new Finish());
        }
    }

    class FetchHttps implements WorkflowBase.Workflow {
        FetchHttps() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            int subId = SimUtil.getSubId(WorkflowChn.this.mPhoneId);
            Log.i(WorkflowChn.LOG_TAG, "FetchHttps() mPhoneId: " + WorkflowChn.this.mPhoneId + " subId:" + subId);
            if (WorkflowChn.this.mParamHandler.isConfigProxy()) {
                Log.i(WorkflowChn.LOG_TAG, "FetchHttps() fake server, use http mPhoneId: " + WorkflowChn.this.mPhoneId + " subId:" + subId);
                WorkflowChn.this.mSharedInfo.setHttpCHN();
            } else {
                Log.i(WorkflowChn.LOG_TAG, "FetchHttps() auto config server, use http mPhoneId: " + WorkflowChn.this.mPhoneId + " subId:" + subId);
                WorkflowChn.this.mSharedInfo.setHttpsCHN();
            }
            WorkflowChn workflowChn = WorkflowChn.this;
            workflowChn.mCookieHandler.handleCookie(workflowChn.mSharedInfo.getHttpResponse());
            WorkflowChn workflowChn2 = WorkflowChn.this;
            workflowChn2.mSharedInfo.addHttpParam("vers", String.valueOf(workflowChn2.getVersion()));
            WorkflowChn workflowChn3 = WorkflowChn.this;
            workflowChn3.mSharedInfo.addHttpParam("IMSI", workflowChn3.mTelephonyAdapter.getSubscriberId(subId));
            WorkflowChn workflowChn4 = WorkflowChn.this;
            workflowChn4.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, workflowChn4.mTelephonyAdapter.getDeviceId(workflowChn4.mPhoneId));
            SharedInfo sharedInfo = WorkflowChn.this.mSharedInfo;
            String str = ConfigConstants.PVALUE.TERMINAL_MODEL;
            sharedInfo.addHttpParam("terminal_model", str);
            WorkflowChn.this.mSharedInfo.addHttpParam("default_sms_app", "1");
            WorkflowChn workflowChn5 = WorkflowChn.this;
            workflowChn5.setRcsState(workflowChn5.convertRcsStateWithSpecificParam());
            WorkflowChn workflowChn6 = WorkflowChn.this;
            workflowChn6.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_STATE, workflowChn6.getRcsState());
            if (ImsProfile.isRcsUpProfile(WorkflowChn.this.mRcsProfile)) {
                WorkflowChn.this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.PROVISIONING_VERSION, ConfigConstants.PVALUE.PROVISIONING_VERSION_5_0);
            }
            WorkflowChn workflowChn7 = WorkflowChn.this;
            if (!workflowChn7.mMobileNetwork || workflowChn7.mHttpResult == 511) {
                if (!TextUtils.isEmpty(workflowChn7.mTelephonyAdapter.getMsisdn(subId))) {
                    WorkflowChn workflowChn8 = WorkflowChn.this;
                    workflowChn8.mSharedInfo.addHttpParam("msisdn", workflowChn8.mParamHandler.encodeRFC3986(workflowChn8.mTelephonyAdapter.getMsisdn(subId)));
                }
                if (!TextUtils.isEmpty(WorkflowChn.this.mSharedInfo.getUserMsisdn())) {
                    WorkflowChn workflowChn9 = WorkflowChn.this;
                    SharedInfo sharedInfo2 = workflowChn9.mSharedInfo;
                    sharedInfo2.addHttpParam("msisdn", workflowChn9.mParamHandler.encodeRFC3986(sharedInfo2.getUserMsisdn()));
                }
                WorkflowChn workflowChn10 = WorkflowChn.this;
                workflowChn10.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SMS_PORT, workflowChn10.mTelephonyAdapter.getSmsDestPort());
                WorkflowChn workflowChn11 = WorkflowChn.this;
                workflowChn11.mSharedInfo.addHttpParam("token", workflowChn11.getToken());
            }
            WorkflowChn.this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
            WorkflowChn workflowChn12 = WorkflowChn.this;
            workflowChn12.mSharedInfo.addHttpParam("terminal_sw_version", workflowChn12.mParamHandler.getModelInfoFromBuildVersion(str, ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 10, false));
            WorkflowChn workflowChn13 = WorkflowChn.this;
            if (workflowChn13.mStartForce) {
                workflowChn13.mSharedInfo.addHttpParam("vers", "0");
            }
            if (WorkflowChn.this.getOpMode() == WorkflowBase.OpMode.DORMANT) {
                Log.i(WorkflowChn.LOG_TAG, "DORMANT mode. use backup version :" + WorkflowChn.this.getVersionBackup());
                WorkflowChn.this.addEventLog(WorkflowChn.LOG_TAG + "DORMANT mode. use backup version :" + WorkflowChn.this.getVersionBackup());
                WorkflowChn workflowChn14 = WorkflowChn.this;
                workflowChn14.mSharedInfo.addHttpParam("vers", workflowChn14.getVersionBackup());
            }
            WorkflowChn workflowChn15 = WorkflowChn.this;
            workflowChn15.mSharedInfo.setHttpResponse(workflowChn15.getHttpResponse());
            if (WorkflowChn.this.mSharedInfo.getHttpResponse().getStatusCode() == 200) {
                Log.i(WorkflowChn.LOG_TAG, "200 OK received. try parsing");
                return WorkflowChn.this.new Parse();
            }
            if (WorkflowChn.this.mSharedInfo.getHttpResponse().getStatusCode() == 403) {
                return WorkflowChn.this.new Finish();
            }
            if (WorkflowChn.this.mSharedInfo.getHttpResponse().getStatusCode() == 0) {
                Log.i(WorkflowChn.LOG_TAG, "RCS configuration server is unreachable. retry max times");
                throw new UnknownStatusException("RCS configuration server is unreachable");
            }
            if (ImsProfile.isRcsUpProfile(WorkflowChn.this.mRcsProfile)) {
                WorkflowChn workflowChn16 = WorkflowChn.this;
                return workflowChn16.handleResponseForUp(workflowChn16.new Initialize(), WorkflowChn.this.new FetchHttps(), WorkflowChn.this.new Finish());
            }
            WorkflowChn workflowChn17 = WorkflowChn.this;
            return workflowChn17.handleResponse2(workflowChn17.new Initialize(), WorkflowChn.this.new FetchHttps(), WorkflowChn.this.new Finish());
        }
    }

    class FetchOtp implements WorkflowBase.Workflow {
        FetchOtp() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowChn.this.mSharedInfo.setHttpClean();
            WorkflowChn workflowChn = WorkflowChn.this;
            workflowChn.mCookieHandler.handleCookie(workflowChn.mSharedInfo.getHttpResponse());
            WorkflowChn.this.mSharedInfo.addHttpParam("client_vendor", "SEC");
            WorkflowChn.this.mSharedInfo.addHttpParam("client_version", WorkflowChn.this.mClientPlatform + WorkflowChn.this.mClientVersion);
            WorkflowChn workflowChn2 = WorkflowChn.this;
            workflowChn2.mSharedInfo.addHttpParam("IMSI", workflowChn2.mTelephonyAdapter.getImsi());
            WorkflowChn workflowChn3 = WorkflowChn.this;
            workflowChn3.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, workflowChn3.mTelephonyAdapter.getImei());
            WorkflowChn.this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
            SharedInfo sharedInfo = WorkflowChn.this.mSharedInfo;
            String str = ConfigConstants.PVALUE.TERMINAL_MODEL;
            sharedInfo.addHttpParam("terminal_model", str);
            WorkflowChn workflowChn4 = WorkflowChn.this;
            workflowChn4.mSharedInfo.addHttpParam("terminal_sw_version", workflowChn4.mParamHandler.getModelInfoFromBuildVersion(str, ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 10, false));
            SharedInfo sharedInfo2 = WorkflowChn.this.mSharedInfo;
            sharedInfo2.addHttpParam(ConfigConstants.PNAME.OTP, sharedInfo2.getOtp());
            WorkflowChn workflowChn5 = WorkflowChn.this;
            workflowChn5.mSharedInfo.setHttpResponse(workflowChn5.getHttpResponse());
            if (WorkflowChn.this.mSharedInfo.getHttpResponse().getStatusCode() == 200) {
                return WorkflowChn.this.new Parse();
            }
            if (ImsProfile.isRcsUpProfile(WorkflowChn.this.mRcsProfile)) {
                WorkflowChn workflowChn6 = WorkflowChn.this;
                return workflowChn6.handleResponseForUp(workflowChn6.new Initialize(), WorkflowChn.this.new FetchHttps(), WorkflowChn.this.new Finish());
            }
            WorkflowChn workflowChn7 = WorkflowChn.this;
            return workflowChn7.handleResponse2(workflowChn7.new Initialize(), WorkflowChn.this.new FetchHttps(), WorkflowChn.this.new Finish());
        }
    }

    class Authorize implements WorkflowBase.Workflow {
        Authorize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            Log.i(WorkflowChn.LOG_TAG, "get OTP & save it to shared info");
            WorkflowChn.this.mPowerController.release();
            String otp = WorkflowChn.this.mTelephonyAdapter.getOtp();
            if (otp == null) {
                WorkflowChn.this.setValidityTimer(0);
                return WorkflowChn.this.new Finish();
            }
            WorkflowChn.this.mSharedInfo.setOtp(otp);
            WorkflowChn.this.mPowerController.lock();
            return WorkflowChn.this.new FetchOtp();
        }
    }

    class Parse implements WorkflowBase.Workflow {
        Parse() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            byte[] body = WorkflowChn.this.mSharedInfo.getHttpResponse().getBody();
            if (body == null) {
                body = "".getBytes();
            }
            if (Build.IS_DEBUGGABLE) {
                Util.saveFiletoPath(body, WorkflowChn.this.mContext.getExternalCacheDir().getAbsolutePath() + "/AutoConfigFromServer_" + WorkflowChn.this.mServerId + ".xml");
            }
            Map<String, String> parse = WorkflowChn.this.mXmlParser.parse(new String(body, "utf-8"));
            if (parse == null) {
                throw new InvalidXmlException("no parsed xml data.");
            }
            if (parse.get("root/vers/version") == null || parse.get("root/vers/validity") == null) {
                Log.i(WorkflowChn.LOG_TAG, "config xml must contain atleast 2 items(version & validity).");
                WorkflowChn workflowChn = WorkflowChn.this;
                if (workflowChn.mCookieHandler.isCookie(workflowChn.mSharedInfo.getHttpResponse())) {
                    return WorkflowChn.this.new Authorize();
                }
                throw new UnknownStatusException("no body & no cookie. something wrong");
            }
            WorkflowChn.this.mSharedInfo.setParsedXml(parse);
            return WorkflowChn.this.new Store();
        }
    }

    class Store implements WorkflowBase.Workflow {
        Store() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            if (!TextUtils.isEmpty(WorkflowChn.this.mSharedInfo.getUserMsisdn())) {
                WorkflowChn workflowChn = WorkflowChn.this;
                if (workflowChn.getVersion(workflowChn.mSharedInfo.getParsedXml()) == 0) {
                    Log.i(WorkflowChn.LOG_TAG, "version is 0. need to be retry");
                    WorkflowChn.this.setValidityTimer(300);
                    return WorkflowChn.this.new Finish();
                }
            }
            Map<String, String> parsedXml = WorkflowChn.this.mSharedInfo.getParsedXml();
            WorkflowBase.OpMode rcsDisabledState = WorkflowChn.this.getRcsDisabledState(parsedXml);
            if (WorkflowChn.this.isValidRcsDisabledState(rcsDisabledState)) {
                WorkflowChn.this.setOpMode(rcsDisabledState, parsedXml);
                return WorkflowChn.this.new Finish();
            }
            boolean userAccept = WorkflowChn.this.mParamHandler.getUserAccept(parsedXml);
            WorkflowChn.this.mParamHandler.setOpModeWithUserAccept(userAccept, parsedXml, WorkflowBase.OpMode.DISABLE_TEMPORARY);
            if (!userAccept) {
                WorkflowChn.this.enableRcs(false);
            }
            if (WorkflowChn.this.getOpMode() == WorkflowBase.OpMode.ACTIVE) {
                WorkflowChn workflowChn2 = WorkflowChn.this;
                workflowChn2.setValidityTimer(workflowChn2.getValidity());
            }
            return WorkflowChn.this.new Finish();
        }
    }

    class Finish implements WorkflowBase.Workflow {
        Finish() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            if (WorkflowChn.this.mSharedInfo.getHttpResponse() != null) {
                WorkflowChn workflowChn = WorkflowChn.this;
                workflowChn.setLastErrorCode(workflowChn.mSharedInfo.getHttpResponse().getStatusCode());
            }
            Log.i(WorkflowChn.LOG_TAG, "all workflow finished");
            WorkflowChn.this.createSharedInfo();
            return null;
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void changeOpMode(boolean z) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "changeOpMode: isRcsEnabled: " + z);
        this.mNeedChangeOpMode = true;
        this.mChangeOpModeIsRcsEnabled = z;
        if (z) {
            IMSLog.i(str, this.mPhoneId, "changeOpMode: set disableRcsByAcs: false");
            ImsRegistry.getConfigModule().getAcsConfig(this.mPhoneId).disableRcsByAcs(false);
        }
    }

    public void changeOpModeInternal(boolean z) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "changeOpModeInternal: isRcsEnabled: " + z);
        if (z) {
            setOpMode(WorkflowBase.OpMode.ENABLE_RCS_BY_USER, null);
        } else {
            setOpMode(WorkflowBase.OpMode.DISABLE_RCS_BY_USER, null);
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected boolean isDataFullUpdateNeeded(Map<String, String> map) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "isDataFullUpdateNeeded: true");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enableRcs(boolean z) {
        String str = LOG_TAG;
        Log.i(str, "enableRcs: " + z);
        if (this.mContext != null) {
            Intent intent = new Intent(INTENT_ACTION_RCS_ENABLE);
            intent.putExtra(INTENT_PARAM_RCS_ENABLE_TYPE, INTENT_VALUE_RCS_ENABLE_TYPE_ALL_RCS);
            intent.putExtra(INTENT_PARAM_RCS_ENABLE, z);
            this.mContext.sendBroadcast(intent);
            Log.i(str, "enableRcs: Intent has been transmitted sucessfully !!");
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected void setValidityTimer(int i) {
        Log.i(LOG_TAG, "setValidityTimer: validityPeriod:" + i + " mMinValidity:" + this.mMinValidity);
        if (i <= this.mMinValidity) {
            this.mMinValidity = i;
            super.setValidityTimer(i);
        }
    }
}
