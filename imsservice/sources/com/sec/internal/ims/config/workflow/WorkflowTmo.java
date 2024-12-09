package com.sec.internal.ims.config.workflow;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDevice;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.exception.InvalidXmlException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.Map;

/* loaded from: classes.dex */
public class WorkflowTmo extends WorkflowUpBase {
    private static final String DEVICE_CONFIG = "device_config";
    private static final String TAG_AUTOCONFIG_HEAD = "<RCSConfig>";
    private static final String TAG_AUTOCONFIG_TAIL = "</RCSConfig>";
    private static final String TAG_NEW_XML_HEADER = "<?xml version=\"1.0\"?>";
    ConfigurationParamObserver mConfigurationParamObserver;
    protected String mConfigurationParams;
    protected boolean mIsNoInitialData;
    protected boolean mIsObserverRegistered;
    private static final String LOG_TAG = WorkflowTmo.class.getSimpleName();
    static final Uri CONFIG_PARAMS_URI = Uri.parse("content://com.samsung.ims.entitlementconfig.provider/config");

    public WorkflowTmo(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDevice(context, iConfigModule, i), new StorageAdapter(), new HttpAdapter(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule), i);
        this.mIsObserverRegistered = false;
        this.mIsNoInitialData = false;
        this.mConfigurationParamObserver = new ConfigurationParamObserver(context);
        registerContentObserver();
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleMessage: " + message.what);
        int i = message.what;
        if (i == 0) {
            IMSLog.i(str, this.mPhoneId, "forced startAutoConfig");
            this.mStartForce = true;
        } else if (i != 1) {
            if (i == 5) {
                if (ConfigUtil.isGoogDmaPackageInuse(this.mContext, this.mPhoneId) && this.mSharedInfo.getParsedXml() != null && RcsUtils.isImsSingleRegiRequired(this.mContext, this.mPhoneId)) {
                    IMSLog.i(str, this.mPhoneId, "default app is changed to google, notify Provisioning XML");
                    SecImsNotifier.getInstance().notifyRcsAutoConfigurationReceived(this.mPhoneId, this.mParamHandler.getProvisioningXml(false), false);
                }
                this.mModule.clearWorkflowByDmaChange(this.mPhoneId);
                return;
            }
            super.handleMessage(message);
            return;
        }
        if (this.mIsConfigOngoing) {
            IMSLog.i(str, this.mPhoneId, "AutoConfig:Already started");
            return;
        }
        this.mIsConfigOngoing = true;
        int version = getVersion();
        addEventLog("AutoConfig:START, oldVersion=" + version);
        this.mPowerController.lock();
        work();
        int version2 = getVersion();
        addEventLog("AutoConfig:FINISH, newVersion=" + version2);
        setCompleted(true);
        setLastErrorCode(this.mLastErrorCodeNonRemote);
        this.mModule.getHandler().sendMessage(obtainMessage(3, version, version2, Integer.valueOf(this.mPhoneId)));
        this.mStartForce = false;
        this.mPowerController.release();
        this.mIsConfigOngoing = false;
        if (this.mSharedInfo.getParsedXml() == null || !RcsUtils.isImsSingleRegiRequired(this.mContext, this.mPhoneId)) {
            return;
        }
        IMSLog.i(str, this.mPhoneId, "notify Provisioning XML");
        SecImsNotifier.getInstance().notifyRcsAutoConfigurationReceived(this.mPhoneId, this.mParamHandler.getProvisioningXml(false), false);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase, com.sec.internal.ims.config.workflow.WorkflowBase
    void work() {
        WorkflowBase.Workflow nextWorkflow;
        WorkflowBase.Workflow nextWorkflow2 = getNextWorkflow(1);
        while (nextWorkflow2 != null) {
            try {
                nextWorkflow2 = nextWorkflow2.run();
            } catch (NoInitialDataException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "NoInitialDataException occur: " + e.getMessage());
                addEventLog(LOG_TAG + ": No valid device config params, skip autoconfig");
                IMSLog.c(LogClass.WFTJ_EXCEPTION, this.mPhoneId + ",NODC");
                this.mIsNoInitialData = true;
                nextWorkflow = getNextWorkflow(8);
                e.printStackTrace();
                nextWorkflow2 = nextWorkflow;
            } catch (Exception e2) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "unknown exception occur: " + e2);
                nextWorkflow = getNextWorkflow(8);
                e2.printStackTrace();
                nextWorkflow2 = nextWorkflow;
            }
        }
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowTmo$6, reason: invalid class name */
    static /* synthetic */ class AnonymousClass6 {
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
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_TEMPORARY_BY_RCS_DISABLED_STATE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_BY_RCS_DISABLED_STATE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DORMANT_BY_RCS_DISABLED_STATE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        if (i == 1) {
            return new WorkflowBase.Initialize() { // from class: com.sec.internal.ims.config.workflow.WorkflowTmo.1
                @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Initialize, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                public WorkflowBase.Workflow run() throws Exception {
                    IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "Initialize:");
                    WorkflowTmo workflowTmo = WorkflowTmo.this;
                    if (workflowTmo.mStartForce) {
                        return workflowTmo.getNextWorkflow(2);
                    }
                    int i2 = AnonymousClass6.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[workflowTmo.getOpMode().ordinal()];
                    if (i2 == 1 || i2 == 2 || i2 == 3) {
                        return WorkflowTmo.this.getNextWorkflow(2);
                    }
                    if (i2 == 4 || i2 == 5) {
                        return WorkflowTmo.this.getNextWorkflow(8);
                    }
                    return null;
                }
            };
        }
        if (i == 2) {
            return new WorkflowBase.FetchHttp() { // from class: com.sec.internal.ims.config.workflow.WorkflowTmo.2
                @Override // com.sec.internal.ims.config.workflow.WorkflowBase.FetchHttp, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                public WorkflowBase.Workflow run() throws Exception {
                    IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "Fetch:");
                    if (WorkflowTmo.this.mConfigurationParamObserver.retrieveConfiguration()) {
                        return WorkflowTmo.this.getNextWorkflow(6);
                    }
                    return WorkflowTmo.this.getNextWorkflow(8);
                }
            };
        }
        if (i == 6) {
            return new WorkflowBase.Parse() { // from class: com.sec.internal.ims.config.workflow.WorkflowTmo.3
                @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Parse, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                public WorkflowBase.Workflow run() throws Exception {
                    IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "Parse:");
                    WorkflowTmo workflowTmo = WorkflowTmo.this;
                    Map<String, String> parse = workflowTmo.mXmlParser.parse(workflowTmo.mConfigurationParams);
                    if (parse == null) {
                        throw new InvalidXmlException("no parsed xml data.");
                    }
                    if (parse.get("root/vers/version") == null || parse.get("root/vers/validity") == null) {
                        throw new InvalidXmlException("config xml must contain at least 2 items(version & validity).");
                    }
                    WorkflowTmo.this.mParamHandler.moveHttpParam(parse);
                    parse.put(ConfigConstants.PATH.RAW_CONFIG_XML_FILE, WorkflowTmo.this.mConfigurationParams);
                    WorkflowTmo.this.mSharedInfo.setParsedXml(parse);
                    WorkflowTmo workflowTmo2 = WorkflowTmo.this;
                    workflowTmo2.mConfigurationParams = null;
                    return workflowTmo2.getNextWorkflow(7);
                }
            };
        }
        if (i == 7) {
            return new WorkflowBase.Store() { // from class: com.sec.internal.ims.config.workflow.WorkflowTmo.4
                @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Store, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
                public WorkflowBase.Workflow run() throws Exception {
                    IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "Store:");
                    Map<String, String> parsedXml = WorkflowTmo.this.mSharedInfo.getParsedXml();
                    WorkflowBase.OpMode rcsDisabledState = WorkflowTmo.this.getRcsDisabledState(parsedXml);
                    if (WorkflowTmo.this.isValidRcsDisabledState(rcsDisabledState)) {
                        WorkflowTmo.this.setOpMode(rcsDisabledState, parsedXml);
                        WorkflowTmo.this.addEventLog(WorkflowTmo.LOG_TAG + ": Receive rcsDisabledState = " + WorkflowTmo.this.convertRcsDisabledStateToValue(rcsDisabledState));
                        return WorkflowTmo.this.getNextWorkflow(8);
                    }
                    WorkflowTmo workflowTmo = WorkflowTmo.this;
                    workflowTmo.setOpMode(workflowTmo.getOpMode(parsedXml), parsedXml);
                    return WorkflowTmo.this.getNextWorkflow(8);
                }
            };
        }
        if (i != 8) {
            return null;
        }
        return new WorkflowBase.Finish() { // from class: com.sec.internal.ims.config.workflow.WorkflowTmo.5
            @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Finish, com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
            public WorkflowBase.Workflow run() throws Exception {
                IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "Finish:");
                return null;
            }
        };
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase, com.sec.internal.ims.config.workflow.WorkflowBase
    protected void setOpMode(WorkflowBase.OpMode opMode, Map<String, String> map) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "new operation mode: " + opMode.name());
        switch (AnonymousClass6.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[opMode.ordinal()]) {
            case 1:
                if (map != null) {
                    if (getVersion() >= getVersion(map)) {
                        IMSLog.i(str, this.mPhoneId, "the same or lower version. update the data");
                    }
                    writeDataToStorage(map);
                    break;
                } else {
                    IMSLog.i(str, this.mPhoneId, "null data. remain previous mode & data");
                    break;
                }
            case 2:
            case 4:
            case 5:
                clearStorage(DiagnosisConstants.RCSA_TDRE.DISABLE_RCS);
                setVersion(opMode.value());
                setValidity(opMode.value());
                break;
            case 3:
                if (getVersion() != WorkflowBase.OpMode.DORMANT.value()) {
                    setVersionBackup(getVersion());
                }
                setVersion(opMode.value());
                break;
            case 6:
            case 7:
            case 8:
            case 9:
                setDisabledStateOpMode(opMode, map);
                break;
            default:
                IMSLog.i(str, this.mPhoneId, "setOpMode: unknown");
                break;
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public boolean checkNetworkConnectivity() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "checkNetworkConnectivity is false because device config is used");
        return false;
    }

    private void registerContentObserver() {
        if (this.mIsObserverRegistered) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "ConfigurationParamObserver is registered.");
        this.mConfigurationParamObserver.registerObserver();
        this.mIsObserverRegistered = true;
    }

    private void unregisterContentObserver() {
        if (this.mIsObserverRegistered) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "ConfigurationParamObserver is unregistered.");
            this.mConfigurationParamObserver.unregisterObserver();
            this.mIsObserverRegistered = false;
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void cleanup() {
        super.cleanup();
        unregisterContentObserver();
        this.mIsNoInitialData = false;
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void onBootCompleted() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "onBootCompleted");
        if (this.mIsNoInitialData) {
            this.mIsNoInitialData = false;
            sendEmptyMessage(0);
        }
    }

    class ConfigurationParamObserver extends ContentObserver {
        private static final int AUTOCONFIG_START_DELAY = 2000;
        private Context mContext;

        ConfigurationParamObserver(Context context) {
            super(new Handler());
            this.mContext = context;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            super.onChange(z, uri);
            IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "device config is changed so start autoconfiguration.");
            WorkflowTmo.this.addEventLog(WorkflowTmo.LOG_TAG + ": Device config is changed, start autoconfig");
            IMSLog.c(LogClass.WFTJ_ON_CHANGE, WorkflowTmo.this.mPhoneId + ",CHDC");
            WorkflowTmo workflowTmo = WorkflowTmo.this;
            workflowTmo.mIsNoInitialData = false;
            workflowTmo.sendEmptyMessageDelayed(0, UtStateMachine.HTTP_READ_TIMEOUT_GCF);
        }

        void registerObserver() {
            IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "registerObserver");
            try {
                this.mContext.getContentResolver().registerContentObserver(WorkflowTmo.CONFIG_PARAMS_URI, false, this);
            } catch (SecurityException e) {
                IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "registerObserver is failed: " + e.getMessage());
            }
        }

        void unregisterObserver() {
            IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "unregisterObserver");
            try {
                this.mContext.getContentResolver().unregisterContentObserver(this);
            } catch (SecurityException e) {
                IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "unregisterObserver is failed: " + e.getMessage());
            }
        }

        boolean retrieveConfiguration() throws Exception {
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(WorkflowTmo.this.mPhoneId);
            String str = "";
            String imsi = simManagerFromSimSlot == null ? "" : simManagerFromSimSlot.getImsi();
            IMSLog.s(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "imsi: " + imsi);
            Cursor query = this.mContext.getContentResolver().query(WorkflowTmo.CONFIG_PARAMS_URI, new String[]{"device_config"}, "imsi=?", new String[]{imsi}, null);
            if (query != null) {
                try {
                    if (query.moveToNext()) {
                        str = query.getString(0);
                    }
                } catch (Throwable th) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
            if (str == null) {
                IMSLog.i(WorkflowTmo.LOG_TAG, WorkflowTmo.this.mPhoneId, "Not the correct imsi");
                return false;
            }
            try {
                WorkflowTmo.this.mConfigurationParams = str.substring(str.indexOf(WorkflowTmo.TAG_AUTOCONFIG_HEAD) + 11, str.indexOf(WorkflowTmo.TAG_AUTOCONFIG_TAIL));
                WorkflowTmo.this.mConfigurationParams = WorkflowTmo.TAG_NEW_XML_HEADER + WorkflowTmo.this.mConfigurationParams;
                return true;
            } catch (StringIndexOutOfBoundsException unused) {
                WorkflowTmo.this.mConfigurationParams = null;
                throw new NoInitialDataException("Configuration Params in ContentProvider is not valid");
            }
        }
    }
}
