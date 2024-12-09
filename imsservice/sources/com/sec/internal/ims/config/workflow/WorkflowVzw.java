package com.sec.internal.ims.config.workflow;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.stream.JsonReader;
import com.sec.ims.IImsRegistrationListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.ImsRegistrationError;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.AlarmTimer;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.ims.config.adapters.DialogAdapter;
import com.sec.internal.ims.config.adapters.HttpAdapterVzw;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.config.adapters.TelephonyAdapterPrimaryDeviceVzw;
import com.sec.internal.ims.config.adapters.XmlParserAdapter;
import com.sec.internal.ims.config.adapters.XmlParserAdapterMultipleServer;
import com.sec.internal.ims.config.exception.InvalidHeaderException;
import com.sec.internal.ims.config.exception.InvalidXmlException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.exception.UnknownStatusException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.interfaces.ims.config.IWorkflow;
import com.sec.internal.interfaces.ims.config.IXmlParserAdapter;
import com.sec.internal.log.IMSLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class WorkflowVzw extends WorkflowUpBase {
    protected static final int GENERAL_ERROR_MAX_RETRY = 3;
    protected static final String INTENT_GENERAL_ERROR_MAX_RETRY = "com.sec.internal.ims.config.workflow.general_error_max_retry";
    protected static final String LOCAL_CONFIG_BASE = "base";
    protected static final String LOCAL_CONFIG_FILE = "localconfig";
    protected static final int LOCAL_CONFIG_MAX_RETRY = 5;
    protected static final String LOCAL_CONFIG_TARGET = "vzw_up";
    protected static final int LOCAL_CONFIG_VERS = 59;
    protected static final int NO_INITIAL_DATA_MAX_RETRY = 5;
    protected static final int UP_VERSION_DISABLED_VERS = 101;
    protected int m511ResponseRetryCount;
    protected int mAdsSubId;
    protected String mAppToken;
    protected int mBackupVersion;
    protected String mCurClientVendor;
    protected String mCurClientVersion;
    protected boolean mCurConfigStartForce;
    protected String mCurRcsProfile;
    protected String mCurRcsVersion;
    protected int mCurVersion;
    protected String mDmaPackage;
    protected PendingIntent mGeneralErrorRetryIntent;
    protected BroadcastReceiver mGeneralErrorRetryIntentReceiver;
    protected int mHttpResponse;
    protected IImsRegistrationListener mImsRegistrationListener;
    protected IntentFilter mIntentFilter;
    protected boolean mIsDmaPackageChanged;
    protected boolean mIsGeneralErrorRetryFailed;
    protected boolean mIsGeneralErrorRetryTimerRunning;
    protected boolean mIsImsRegiNotifyReceived;
    protected boolean mIsMobileAutoConfigOngoing;
    protected boolean mIsMobileConnectionAvailable;
    protected boolean mIsSecAndGoogDmaPackageSwitched;
    protected ConnectivityManager.NetworkCallback mMobileStateCallback;
    protected WorkflowBase.Workflow mNextWorkflow;
    protected int mNoAppTokenRetryCount;
    protected int mNoInitialDataRetryCount;
    protected int mNoRemainingValidityRetryCount;
    protected int mNoResponseRetryCount;
    protected int mRcsDisabledStateRetryCount;
    protected IXmlParserAdapter mXmlMultipleParser;
    protected static final String LOG_TAG = WorkflowVzw.class.getSimpleName();
    protected static final long[] GENERAL_ERROR_RETRY_TIME = {0, 120000, 240000};

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected WorkflowBase.Workflow getNextWorkflow(int i) {
        return null;
    }

    public WorkflowVzw(Looper looper, Context context, IConfigModule iConfigModule, Mno mno, int i) {
        super(looper, context, iConfigModule, mno, new TelephonyAdapterPrimaryDeviceVzw(context, iConfigModule, i), new StorageAdapter(), new HttpAdapterVzw(i), new XmlParserAdapter(), new DialogAdapter(context, iConfigModule), i);
        this.mCurRcsVersion = null;
        this.mCurRcsProfile = null;
        this.mCurClientVendor = null;
        this.mCurClientVersion = null;
        this.mDmaPackage = null;
        this.mAppToken = null;
        this.mCurVersion = 0;
        this.mBackupVersion = 0;
        this.mAdsSubId = 0;
        this.mHttpResponse = 0;
        this.mNoInitialDataRetryCount = 0;
        this.mNoAppTokenRetryCount = 0;
        this.m511ResponseRetryCount = 0;
        this.mNoResponseRetryCount = 0;
        this.mRcsDisabledStateRetryCount = 0;
        this.mNoRemainingValidityRetryCount = 0;
        this.mCurConfigStartForce = false;
        this.mIsMobileAutoConfigOngoing = false;
        this.mIsImsRegiNotifyReceived = false;
        this.mIsDmaPackageChanged = false;
        this.mIsSecAndGoogDmaPackageSwitched = false;
        this.mIsMobileConnectionAvailable = false;
        this.mIsGeneralErrorRetryTimerRunning = false;
        this.mIsGeneralErrorRetryFailed = false;
        this.mNextWorkflow = null;
        this.mImsRegistrationListener = null;
        this.mMobileStateCallback = null;
        this.mGeneralErrorRetryIntent = null;
        this.mGeneralErrorRetryIntentReceiver = null;
        registerImsRegistrationListener();
        this.mIntentFilter = new IntentFilter(INTENT_GENERAL_ERROR_MAX_RETRY);
        this.mXmlMultipleParser = new XmlParserAdapterMultipleServer();
    }

    protected void registerImsRegistrationListener() {
        unregisterImsRegistrationListener();
        IImsRegistrationListener iImsRegistrationListener = new IImsRegistrationListener.Stub() { // from class: com.sec.internal.ims.config.workflow.WorkflowVzw.1
            public void onRegistered(ImsRegistration imsRegistration) {
                WorkflowVzw.this.sendEmptyMessage(12);
            }

            public void onDeregistered(ImsRegistration imsRegistration, ImsRegistrationError imsRegistrationError) {
                WorkflowVzw.this.sendEmptyMessage(12);
            }
        };
        this.mImsRegistrationListener = iImsRegistrationListener;
        this.mRm.registerListener(iImsRegistrationListener, this.mPhoneId);
    }

    protected void unregisterImsRegistrationListener() {
        removeMessages(12);
        IImsRegistrationListener iImsRegistrationListener = this.mImsRegistrationListener;
        if (iImsRegistrationListener != null) {
            this.mRm.unregisterListener(iImsRegistrationListener, this.mPhoneId);
            this.mImsRegistrationListener = null;
        }
    }

    protected boolean registerMobileNetwork() {
        try {
            unregisterMobileNetwork();
            this.mAdsSubId = SimUtil.getSubId();
            this.mNetworkRequest = new NetworkRequest.Builder().addTransportType(0).addCapability(0).setNetworkSpecifier(Integer.toString(this.mAdsSubId)).build();
            ConnectivityManager.NetworkCallback mobileStateCallback = getMobileStateCallback();
            this.mMobileStateCallback = mobileStateCallback;
            this.mConnectivityManager.requestNetwork(this.mNetworkRequest, mobileStateCallback);
            IMSLog.i(LOG_TAG, this.mPhoneId, "registerMobileNetwork: registered with ads subId: " + this.mAdsSubId + " instead of this subId: " + SimUtil.getSubId(this.mPhoneId));
            return true;
        } catch (IllegalArgumentException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "registerMobileNetwork: can not register: " + e.getMessage());
            return false;
        }
    }

    protected ConnectivityManager.NetworkCallback getMobileStateCallback() {
        return new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.config.workflow.WorkflowVzw.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                WorkflowVzw workflowVzw = WorkflowVzw.this;
                workflowVzw.mNetwork = network;
                workflowVzw.mIsMobileConnectionAvailable = true;
                String str = WorkflowVzw.LOG_TAG;
                IMSLog.i(str, workflowVzw.mPhoneId, "mobileStateCallback: onAvailable with network: " + network + " registered with ads subId: " + WorkflowVzw.this.mAdsSubId + " cur ads subId: " + SimUtil.getSubId());
                if (WorkflowVzw.this.mAdsSubId == SimUtil.getSubId()) {
                    WorkflowVzw.this.sendEmptyMessage(3);
                } else {
                    IMSLog.i(str, WorkflowVzw.this.mPhoneId, "mobileStateCallback: onAvailable: ads subId is changed: the connection is not available");
                    WorkflowVzw.this.sendEmptyMessage(4);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                WorkflowVzw workflowVzw = WorkflowVzw.this;
                workflowVzw.mNetwork = network;
                workflowVzw.mIsMobileConnectionAvailable = false;
                IMSLog.i(WorkflowVzw.LOG_TAG, workflowVzw.mPhoneId, "mobileStateCallback: onLost with network: " + network + " registered with ads subId: " + WorkflowVzw.this.mAdsSubId + " cur ads subId: " + SimUtil.getSubId());
                WorkflowVzw.this.sendEmptyMessage(4);
            }
        };
    }

    protected void unregisterMobileNetwork() {
        try {
            try {
                ConnectivityManager.NetworkCallback networkCallback = this.mMobileStateCallback;
                if (networkCallback != null) {
                    this.mConnectivityManager.unregisterNetworkCallback(networkCallback);
                    IMSLog.i(LOG_TAG, this.mPhoneId, "unregisterMobileNetwork: unregistered");
                }
            } catch (IllegalArgumentException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "unregisterMobileNetwork: can not unregister: " + e.getMessage());
            }
        } finally {
            this.mNetworkRequest = null;
            this.mMobileStateCallback = null;
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, android.os.Handler
    public void handleMessage(Message message) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleMessage: msg: " + message.what);
        int i = message.what;
        if (i == 0) {
            this.mStartForce = true;
        } else if (i != 1) {
            if (i == 2) {
                IMSLog.i(str, this.mPhoneId, "handleMessage: config info is cleared");
                this.mPowerController.lock();
                clearStorage();
                this.mCurConfigStartForce = true;
                this.mStartForce = true;
                if (isGoogDmaPackageInuse(this.mDmaPackage)) {
                    IMSLog.i(str, this.mPhoneId, "handleMessage: config info is cleared: notify autoConfigRemoved");
                    SecImsNotifier.getInstance().notifyRcsAutoConfigurationRemoved(this.mPhoneId);
                }
                this.mPowerController.release();
                return;
            }
            if (i == 3) {
                removeMessages(4);
                if (this.mIsMobileAutoConfigOngoing) {
                    IMSLog.i(str, this.mPhoneId, "autoConfig: mobile connection is successful: ongoing");
                    return;
                }
                IMSLog.i(str, this.mPhoneId, "autoConfig: mobile connection is successful");
                this.mPowerController.lock();
                this.mIsMobileAutoConfigOngoing = true;
                executeAutoConfig(this.mNextWorkflow);
                if (this.mIsGeneralErrorRetryTimerRunning) {
                    IMSLog.i(str, this.mPhoneId, "autoConfig: mobile connection is successful: generalErrorRetryTimer is running");
                    endMobileAutoConfig();
                } else {
                    endAutoConfig();
                }
                this.mIsConfigOngoing = false;
                this.mPowerController.release();
                return;
            }
            if (i == 4) {
                removeMessages(4);
                if (this.mIsMobileAutoConfigOngoing) {
                    IMSLog.i(str, this.mPhoneId, "autoConfig: mobile connection is failure: ongoing");
                    return;
                }
                IMSLog.i(str, this.mPhoneId, "autoConfig: mobile connection is failure");
                this.mPowerController.lock();
                this.mIsMobileAutoConfigOngoing = true;
                endFailureAutoConfig();
                this.mIsConfigOngoing = false;
                this.mPowerController.release();
                return;
            }
            if (i != 5) {
                switch (i) {
                    case 11:
                        if (this.mIsConfigOngoing) {
                            IMSLog.i(str, this.mPhoneId, "curConfig: ongoing");
                            break;
                        } else {
                            IMSLog.i(str, this.mPhoneId, "curConfig: start curConfig with curConfigStartForce: " + this.mCurConfigStartForce);
                            this.mPowerController.lock();
                            this.mIsConfigOngoing = true;
                            executeCurConfig();
                            endCurConfig();
                            this.mPowerController.release();
                            break;
                        }
                    case 12:
                        IMSLog.i(str, this.mPhoneId, "handleMessage: ims regi status is changed");
                        this.mPowerController.lock();
                        this.mIsImsRegiNotifyReceived = true;
                        sendRestartAutoConfigMsg();
                        this.mPowerController.release();
                        break;
                    case 13:
                        removeMessages(13);
                        if (this.mIsConfigOngoing) {
                            IMSLog.i(str, this.mPhoneId, "autoConfig: generalErrorRetryTimer is expired: ongoing");
                            break;
                        } else {
                            IMSLog.i(str, this.mPhoneId, "autoConfig: generalErrorRetryTimer is expired");
                            this.mPowerController.lock();
                            if (this.mIsGeneralErrorRetryTimerRunning) {
                                this.mIsConfigOngoing = true;
                                startMobileAutoConfig();
                            }
                            this.mPowerController.release();
                            break;
                        }
                    case 14:
                        IMSLog.i(str, this.mPhoneId, "handleMessage: cleanup");
                        this.mPowerController.lock();
                        cancelValidityTimer();
                        stopGeneralErrorRetryTimer();
                        unregisterImsRegistrationListener();
                        removeMessages(3);
                        removeMessages(4);
                        this.mIsConfigOngoing = false;
                        this.mPowerController.release();
                        break;
                    case 15:
                        IMSLog.i(str, this.mPhoneId, "handleMessage: ads is changed");
                        this.mPowerController.lock();
                        this.mModule.getHandler().sendMessage(obtainMessage(17, Integer.valueOf(this.mPhoneId)));
                        this.mPowerController.release();
                        break;
                    case 16:
                        if (message.obj == null) {
                            IMSLog.i(str, this.mPhoneId, "handleMessage: client info is empty");
                            break;
                        } else {
                            IMSLog.i(str, this.mPhoneId, "handleMessage: client info is changed");
                            this.mPowerController.lock();
                            Bundle bundle = (Bundle) message.obj;
                            if (isGoogDmaPackageInuse(this.mDmaPackage) && !this.mIsSecAndGoogDmaPackageSwitched && this.mParamHandler.setRcsClientConfiguration(bundle.getString("rcsVersion"), bundle.getString("rcsProfile"), bundle.getString("clientVendor"), bundle.getString("clientVersion"))) {
                                IMSLog.i(str, this.mPhoneId, "handleMessage: client info is changed: need autoConfig to use the changed client info");
                                this.mStartForce = true;
                                this.mModule.getHandler().sendMessageDelayed(obtainMessage(2, this.mPhoneId, 0, null), 1000L);
                            }
                            this.mPowerController.release();
                            break;
                        }
                        break;
                    default:
                        IMSLog.i(str, this.mPhoneId, "handleMessage: unknown msg");
                        super.handleMessage(message);
                        break;
                }
            }
            IMSLog.i(str, this.mPhoneId, "handleMessage: dmaPackage is changed");
            this.mPowerController.lock();
            checkAndUpdateDmaPackageInfo();
            this.mPowerController.release();
            this.mModule.clearWorkflowByDmaChange(this.mPhoneId);
            return;
        }
        if (this.mIsConfigOngoing) {
            IMSLog.i(str, this.mPhoneId, "autoConfig: ongoing");
            return;
        }
        IMSLog.i(str, this.mPhoneId, "autoConfig: start autoConfig with startForce: " + this.mStartForce);
        this.mPowerController.lock();
        this.mIsConfigOngoing = true;
        if (scheduleAutoconfig()) {
            initAutoConfig();
            startMobileAutoConfig();
        } else {
            IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: false");
            endAutoConfig();
            this.mIsConfigOngoing = false;
        }
        this.mPowerController.release();
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void startCurConfig() {
        sendEmptyMessage(11);
    }

    protected void executeCurConfig() {
        this.mOldVersion = getVersion();
        WorkflowBase.OpMode rcsDisabledState = getRcsDisabledState();
        if (this.mCurConfigStartForce) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "curConfig: need force localconfig info");
            startLocalConfig(WorkflowBase.OpMode.DISABLE_TEMPORARY.value(), WorkflowBase.OpMode.NONE);
        } else if (isNonActiveVersion(this.mOldVersion) || ((isActiveVersion(this.mOldVersion) && isValidRcsDisabledState(rcsDisabledState)) || this.mOldVersion == 101)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "curConfig: need localconfig info");
            startLocalConfig(this.mOldVersion, rcsDisabledState);
        }
    }

    protected void startLocalConfig(int i, WorkflowBase.OpMode opMode) {
        Map<String, String> treeMap = new TreeMap<>();
        int i2 = 0;
        while (true) {
            if (i2 >= 5) {
                break;
            }
            treeMap = loadLocalConfig();
            if (treeMap == null) {
                i2++;
            } else {
                IMSLog.i(LOG_TAG, this.mPhoneId, "startLocalConfig: load localconfig");
                checkAndKeepData(treeMap);
                if (isValidRcsDisabledState(opMode)) {
                    checkAndKeepRcsDisabledState(treeMap, opMode);
                }
                checkAndKeepSpgUrl(treeMap);
                checkAndKeepRcsClientConfiguration(treeMap);
                clearStorage(DiagnosisConstants.RCSA_TDRE.UPDATE_LOCAL_CONFIG);
                this.mStorage.writeAll(treeMap);
                this.mSharedInfo.setParsedXml(treeMap);
                if (getValidity() > WorkflowBase.OpMode.DISABLE_TEMPORARY.value()) {
                    setNextAutoconfigTimeAfter(getValidity());
                    setValidityTimer(getValidity());
                } else {
                    setNextAutoconfigTime(r1.value());
                    cancelValidityTimer();
                }
                setVersionBackup(i);
            }
        }
        if (treeMap == null) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "startLocalConfig: can not load localconfig");
        }
    }

    private Map<String, String> loadLocalConfig() {
        try {
            JsonReader jsonReader = new JsonReader(new BufferedReader(new InputStreamReader(getInputStream())));
            try {
                JsonElement parse = new JsonParser().parse(jsonReader);
                JsonObject asJsonObject = parse.getAsJsonObject().get(LOCAL_CONFIG_BASE).getAsJsonObject();
                JsonObject jsonObject = null;
                for (Map.Entry entry : parse.getAsJsonObject().entrySet()) {
                    String[] split = ((String) entry.getKey()).trim().split(",");
                    int length = split.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        if (TextUtils.equals(LOCAL_CONFIG_TARGET, split[i])) {
                            jsonObject = ((JsonElement) entry.getValue()).getAsJsonObject();
                            break;
                        }
                        i++;
                    }
                    if (jsonObject != null) {
                        break;
                    }
                }
                jsonReader.close();
                if (asJsonObject == null || jsonObject == null) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "loadLocalConfig: base/target object is empty");
                    return null;
                }
                TreeMap treeMap = new TreeMap();
                for (Map.Entry entry2 : asJsonObject.entrySet()) {
                    WorkflowLocalFile.path((JsonElement) entry2.getValue(), "root/" + ((String) entry2.getKey()), treeMap);
                }
                for (Map.Entry entry3 : jsonObject.entrySet()) {
                    WorkflowLocalFile.path((JsonElement) entry3.getValue(), "root/" + ((String) entry3.getKey()), treeMap);
                }
                return treeMap;
            } catch (Throwable th) {
                try {
                    jsonReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | JsonParseException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "loadLocalConfig: can not open/parse localconfig: " + e.getMessage());
            return null;
        }
    }

    InputStream getInputStream() {
        return this.mContext.getResources().openRawResource(this.mContext.getResources().getIdentifier("localconfig", "raw", this.mContext.getPackageName()));
    }

    private void endCurConfig() {
        this.mNewVersion = getVersion();
        this.mBackupVersion = getParsedIntVersionBackup();
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "curConfig: oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion + " backupVersion: " + this.mBackupVersion);
        checkAndUpdateDmaPackage();
        checkAndUpdateRcsClientConfiguration();
        if (isGoogDmaPackageInuse(this.mDmaPackage) && !this.mIsSecAndGoogDmaPackageSwitched) {
            boolean z = this.mNewVersion == 59 && isActiveVersion(this.mBackupVersion);
            if (z) {
                setVersion(this.mBackupVersion);
            }
            IMSLog.i(str, this.mPhoneId, "curConfig: notify preConfig: isBackupVersionUpdateNeeded: " + z);
            SecImsNotifier.getInstance().notifyRcsPreConfigurationReceived(this.mPhoneId, this.mParamHandler.getProvisioningXml(false));
            if (z) {
                setVersion(this.mNewVersion);
            }
        }
        this.mCurConfigStartForce = false;
        setCompleted(true);
        this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
        IMSLog.i(str, this.mPhoneId, "curConfig: isImsRegiNotifyReceived: " + this.mIsImsRegiNotifyReceived);
        if (this.mIsImsRegiNotifyReceived) {
            sendRestartAutoConfigMsg();
        } else {
            sendMessageDelayed(obtainMessage(12), SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF);
        }
    }

    protected void sendRestartAutoConfigMsg() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "curConfig: send restart autoConfig msg: isConfigOngoing: " + this.mIsConfigOngoing);
        if (this.mIsConfigOngoing) {
            this.mModule.getHandler().sendMessage(obtainMessage(19, this.mPhoneId, 0, null));
            unregisterImsRegistrationListener();
            this.mIsConfigOngoing = false;
        }
    }

    protected void startGeneralErrorRetryTimer(long j) {
        stopGeneralErrorRetryTimer();
        IMSLog.i(LOG_TAG, this.mPhoneId, "startGeneralErrorRetryTimer: retryTimer: " + j);
        this.mIsGeneralErrorRetryTimerRunning = true;
        if (j == 0) {
            sendMessageDelayed(obtainMessage(13), 1000L);
            return;
        }
        BroadcastReceiver generalErrorRetryIntentReceiver = getGeneralErrorRetryIntentReceiver();
        this.mGeneralErrorRetryIntentReceiver = generalErrorRetryIntentReceiver;
        this.mContext.registerReceiver(generalErrorRetryIntentReceiver, this.mIntentFilter);
        Intent intent = new Intent(INTENT_GENERAL_ERROR_MAX_RETRY);
        intent.putExtra(PhoneConstants.PHONE_KEY, this.mPhoneId);
        intent.setPackage(this.mContext.getPackageName());
        PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, this.mPhoneId, intent, 33554432);
        this.mGeneralErrorRetryIntent = broadcast;
        AlarmTimer.start(this.mContext, broadcast, j);
    }

    protected BroadcastReceiver getGeneralErrorRetryIntentReceiver() {
        return new BroadcastReceiver() { // from class: com.sec.internal.ims.config.workflow.WorkflowVzw.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (TextUtils.equals(WorkflowVzw.INTENT_GENERAL_ERROR_MAX_RETRY, intent.getAction())) {
                    int intExtra = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                    IMSLog.i(WorkflowVzw.LOG_TAG, WorkflowVzw.this.mPhoneId, "generalErrorRetryIntentReceiver: received with phoneId: " + intExtra);
                    WorkflowVzw workflowVzw = WorkflowVzw.this;
                    if (intExtra == workflowVzw.mPhoneId) {
                        workflowVzw.sendEmptyMessage(13);
                    }
                }
            }
        };
    }

    protected void stopGeneralErrorRetryTimer() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "stopGeneralErrorRetryTimer:");
        removeMessages(13);
        try {
            try {
                PendingIntent pendingIntent = this.mGeneralErrorRetryIntent;
                if (pendingIntent != null) {
                    AlarmTimer.stop(this.mContext, pendingIntent);
                }
                BroadcastReceiver broadcastReceiver = this.mGeneralErrorRetryIntentReceiver;
                if (broadcastReceiver != null) {
                    this.mContext.unregisterReceiver(broadcastReceiver);
                }
            } catch (IllegalArgumentException e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "stopGeneralErrorRetryTimer: can not stop/unregister: " + e.getMessage());
            }
        } finally {
            this.mGeneralErrorRetryIntent = null;
            this.mGeneralErrorRetryIntentReceiver = null;
            this.mIsGeneralErrorRetryTimerRunning = false;
        }
    }

    protected boolean scheduleAutoconfig() {
        this.mOldVersion = getVersion();
        int parsedIntVersionBackup = getParsedIntVersionBackup();
        this.mBackupVersion = parsedIntVersionBackup;
        int i = this.mOldVersion;
        if (i != 59) {
            parsedIntVersionBackup = i;
        }
        this.mCurVersion = parsedIntVersionBackup;
        checkAndUpdateDmaPackage();
        checkAndUpdateRcsClientConfiguration();
        checkAndUpdateDmaPackageInfo();
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: oldVersion: " + this.mOldVersion + " curVersion: " + this.mCurVersion + " backupVersion: " + this.mBackupVersion);
        if (!needScheduleAutoconfig(this.mPhoneId)) {
            return false;
        }
        String lastSwVersion = getLastSwVersion();
        String str2 = ConfigConstants.BUILD.TERMINAL_SW_VERSION;
        if (!TextUtils.equals(lastSwVersion, str2) && isDmaPackageInuse(this.mDmaPackage)) {
            IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: software version is changed: force autoConfig");
            this.mStartForce = true;
            setLastSwVersion(str2);
            cancelValidityTimer();
            return true;
        }
        if (this.mStartForce) {
            IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: startForce is true: force autoConfig");
            cancelValidityTimer();
            return true;
        }
        if (this.mIsDmaPackageChanged) {
            this.mStartForce = isNonActiveVersion(this.mCurVersion);
            IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: dmaPackage is changed: need autoConfig with startForce: " + this.mStartForce);
            return true;
        }
        if (this.mCurVersion == WorkflowBase.OpMode.DISABLE_PERMANENTLY.value() || this.mCurVersion == WorkflowBase.OpMode.DISABLE.value()) {
            IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: disable_permanently/disable opMode: skip autoConfig");
            return false;
        }
        if (this.mIsGeneralErrorRetryFailed) {
            IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: generalErrorRetry is failed: skip autoConfig");
            return false;
        }
        long nextAutoconfigTime = getNextAutoconfigTime();
        int remainingValidityTime = getRemainingValidityTime(nextAutoconfigTime);
        if (remainingValidityTime > WorkflowBase.OpMode.DISABLE_TEMPORARY.value()) {
            if (nextAutoconfigTime > r3.value()) {
                IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: validity is not expired: skip autoConfig");
                setValidityTimer(remainingValidityTime);
            }
            return false;
        }
        this.mStartForce = isNonActiveVersion(this.mCurVersion) || this.mStartForce;
        IMSLog.i(str, this.mPhoneId, "autoConfig: schedule: validity is expired: need autoConfig with startForce: " + this.mStartForce);
        return true;
    }

    protected int getRemainingValidityTime(long j) {
        int time = (int) ((j - new Date().getTime()) / 1000);
        IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: getRemainingValidityTime: nextAutoconfigTime: " + j + " remainingValidityTime: " + time);
        return time;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected void setValidityTimer(int i) {
        cancelValidityTimer();
        IMSLog.i(LOG_TAG, this.mPhoneId, "setValidityTimer: validityPeriod: " + i);
        if (i > WorkflowBase.OpMode.DISABLE_TEMPORARY.value()) {
            Intent intent = new Intent("com.sec.internal.ims.config.workflow.validity_timeout");
            intent.putExtra(PhoneConstants.PHONE_KEY, this.mPhoneId);
            intent.setPackage(this.mContext.getPackageName());
            PendingIntent broadcast = PendingIntent.getBroadcast(this.mContext, this.mPhoneId, intent, 33554432);
            this.mValidityIntent = broadcast;
            AlarmTimer.start(this.mContext, broadcast, i * 1000);
        }
    }

    protected void initAutoConfig() {
        this.mNextWorkflow = new Initialize();
        this.mHttpResponse = 0;
        this.mNoInitialDataRetryCount = 0;
        this.mNoAppTokenRetryCount = 0;
        this.m511ResponseRetryCount = 0;
        this.mNoResponseRetryCount = 0;
        this.mRcsDisabledStateRetryCount = 0;
        this.mNoRemainingValidityRetryCount = 0;
        this.mAppToken = "";
        this.mNetwork = null;
    }

    protected void startMobileAutoConfig() {
        this.mIsMobileAutoConfigOngoing = false;
        this.mIsMobileConnectionAvailable = false;
        stopGeneralErrorRetryTimer();
        checkAndUpdateDmaPackageInfo();
        if (TextUtils.isEmpty(this.mDmaPackage) || ((isGoogDmaPackageInuse(this.mDmaPackage) && !this.mIsSecAndGoogDmaPackageSwitched && this.mParamHandler.isRcsClientConfigurationInfoNotSet()) || !registerMobileNetwork())) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "mobileAutoConfig: dmaPackage/client info/mobile network is not available");
            sendEmptyMessage(4);
        } else {
            IMSLog.i(LOG_TAG, this.mPhoneId, "mobileAutoConfig: start using mobile network");
            sendEmptyMessageDelayed(4, SoftphoneNamespaces.SoftphoneSettings.LONG_BACKOFF);
        }
    }

    protected void endMobileAutoConfig() {
        IMSLog.i(LOG_TAG, this.mPhoneId, "mobileAutoConfig: end using mobile network");
        unregisterMobileNetwork();
        this.mIsMobileConnectionAvailable = false;
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void onADSChanged() {
        if (hasMessages(4) && this.mIsConfigOngoing) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "onADSChanged: waiting for the result of mobile connection");
            removeMessages(4);
            sendEmptyMessage(4);
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "onADSChanged: send ads changed msg");
        this.mTelephonyAdapter.onADSChanged();
        this.mHttp.close();
        endMobileAutoConfig();
        sendEmptyMessage(15);
    }

    protected void executeAutoConfig(WorkflowBase.Workflow workflow) {
        IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: execute: next: " + workflow);
        while (workflow != null) {
            try {
                workflow = workflow.run();
            } catch (NoInitialDataException unused) {
                if (this.mNoInitialDataRetryCount < 5 && this.mIsMobileConnectionAvailable) {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: execute: noInitialDataException: noInitialDataRetryCount: " + this.mNoInitialDataRetryCount + " wait 10 seconds and retry");
                    startGeneralErrorRetryTimer(10000L);
                    this.mNoInitialDataRetryCount = this.mNoInitialDataRetryCount + 1;
                    this.mNextWorkflow = new Initialize();
                } else {
                    IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: execute: noInitialDataException: no need to retry anymore");
                    this.mNextWorkflow = null;
                }
                workflow = new Finish();
            } catch (Exception e) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: execute: exception: " + e.getMessage());
                this.mNextWorkflow = null;
                workflow = new Finish();
            }
        }
    }

    protected void endAutoConfig() {
        endMobileAutoConfig();
        this.mNewVersion = getVersion();
        WorkflowBase.OpMode rcsDisabledState = getRcsDisabledState();
        if (isNonActiveVersion(this.mNewVersion) || ((isActiveVersion(this.mNewVersion) && isValidRcsDisabledState(rcsDisabledState)) || this.mNewVersion == 101)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: end: need localconfig info");
            startLocalConfig(this.mNewVersion, rcsDisabledState);
            this.mNewVersion = getVersion();
        }
        this.mBackupVersion = getParsedIntVersionBackup();
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "autoConfig: end: oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion + " backupVersion: " + this.mBackupVersion);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mPhoneId);
        sb.append("OV:");
        sb.append(this.mOldVersion);
        sb.append(",NV:");
        sb.append(this.mNewVersion);
        IMSLog.c(LogClass.WFVM_LAST_VERSION_INFO, sb.toString());
        addEventLog(str + ": OV: " + this.mOldVersion + " NV: " + this.mNewVersion);
        String spgUrl = getSpgUrl();
        String spgParamsUrl = getSpgParamsUrl();
        boolean isEmpty = TextUtils.isEmpty(spgUrl);
        boolean isEmpty2 = TextUtils.isEmpty(spgParamsUrl);
        IMSLog.i(str, this.mPhoneId, "autoConfig: end: rcsDisabledState: " + displayRcsDisabledState(rcsDisabledState) + " isSpgUrlEmpty: " + isEmpty + " isSpgParamsUrlEmpty: " + isEmpty2);
        int i = this.mPhoneId;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("autoConfig: end: spgUrl: ");
        sb2.append(spgUrl);
        sb2.append(" spgParamsUrl: ");
        sb2.append(spgParamsUrl);
        IMSLog.s(str, i, sb2.toString());
        IMSLog.c(LogClass.WFVM_PARAM_INFO, this.mPhoneId + "DV:" + displayRcsDisabledState(rcsDisabledState) + ",SU:" + isEmpty + ",SPU:" + isEmpty2);
        addEventLog(str + ": rcsDisabledState: " + displayRcsDisabledState(rcsDisabledState) + " isSpgUrlEmpty: " + isEmpty + " isSpgParamsUrlEmpty: " + isEmpty2);
        notifyAutoConfig();
        this.mStartForce = false;
        this.mIsDmaPackageChanged = false;
        setCompleted(true);
        this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
        if (isDmaPackageInuse(this.mDmaPackage) && this.mIsSecAndGoogDmaPackageSwitched) {
            this.mCurConfigStartForce = true;
            this.mStartForce = true;
            IMSLog.i(str, this.mPhoneId, "autoConfig: end: need autoConfig to use the changed dmaPackage");
            this.mModule.getHandler().sendMessageDelayed(obtainMessage(2, this.mPhoneId, 0, null), 1000L);
        }
        this.mIsSecAndGoogDmaPackageSwitched = false;
    }

    protected void endFailureAutoConfig() {
        endMobileAutoConfig();
        this.mNewVersion = getVersion();
        WorkflowBase.OpMode rcsDisabledState = getRcsDisabledState();
        if (isNonActiveVersion(this.mNewVersion) || ((isActiveVersion(this.mNewVersion) && isValidRcsDisabledState(rcsDisabledState)) || this.mNewVersion == 101)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: endfailure: need localconfig info");
            startLocalConfig(this.mNewVersion, rcsDisabledState);
            this.mNewVersion = getVersion();
        }
        this.mBackupVersion = getParsedIntVersionBackup();
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "autoConfig: endfailure: oldVersion: " + this.mOldVersion + " newVersion: " + this.mNewVersion + " backupVersion: " + this.mBackupVersion);
        setCompleted(true);
        this.mModule.getHandler().sendMessage(obtainMessage(3, this.mOldVersion, this.mNewVersion, Integer.valueOf(this.mPhoneId)));
        IMSLog.i(str, this.mPhoneId, "autoConfig: endfailure: need autoConfig next time with suitable network");
        this.mModule.getHandler().sendMessage(obtainMessage(17, Integer.valueOf(this.mPhoneId)));
    }

    protected void notifyAutoConfig() {
        if (isGoogDmaPackageInuse(this.mDmaPackage) && !this.mIsSecAndGoogDmaPackageSwitched) {
            int i = this.mLastErrorCode;
            if (i != 987 && i != 200) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: notify: autoConfigError");
                SecImsNotifier.getInstance().notifyRcsAutoConfigurationErrorReceived(this.mPhoneId, this.mLastErrorCode, this.mLastErrorMessage);
                return;
            }
            boolean z = this.mNewVersion == 59 && isActiveVersion(this.mBackupVersion);
            if (z) {
                setVersion(this.mBackupVersion);
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: notify: autoConfigReceived");
            SecImsNotifier.getInstance().notifyRcsAutoConfigurationReceived(this.mPhoneId, this.mParamHandler.getProvisioningXml(false), false);
            if (z) {
                setVersion(this.mNewVersion);
                return;
            }
            return;
        }
        if (isSecDmaPackageInuse(this.mDmaPackage) && !this.mIsSecAndGoogDmaPackageSwitched && ImsProfile.isRcsUp2Profile(this.mCurRcsProfile)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "autoConfig: notify: autoConfigCompleted");
            this.mTelephonyAdapter.notifyAutoConfigurationListener(52, isActiveVersion(this.mNewVersion));
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected boolean isActiveVersion(int i) {
        return i >= WorkflowBase.OpMode.ACTIVE.value() && i != 59;
    }

    protected boolean isNonActiveVersion(int i) {
        return i <= WorkflowBase.OpMode.DISABLE_TEMPORARY.value();
    }

    protected boolean isDmaPackageInuse(String str) {
        return isSecDmaPackageInuse(str) || isGoogDmaPackageInuse(str);
    }

    protected boolean isSecDmaPackageInuse(String str) {
        return !TextUtils.isEmpty(str) && TextUtils.equals(str, PackageUtils.getMsgAppPkgName(this.mContext));
    }

    protected boolean isGoogDmaPackageInuse(String str) {
        String string = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.GOOG_MESSAGE_APP_PACKAGE, "");
        return RcsUtils.isImsSingleRegiRequired(this.mContext, this.mPhoneId) && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(string) && TextUtils.equals(str, string);
    }

    protected boolean isSecAndGoogDmaPackageSwitched(String str, String str2) {
        return RcsUtils.isImsSingleRegiRequired(this.mContext, this.mPhoneId) && isDmaPackageInuse(str) && isDmaPackageInuse(str2) && !TextUtils.equals(str, str2);
    }

    protected boolean isNonSecGoogDmaPackageInuse(String str) {
        return RcsUtils.isImsSingleRegiRequired(this.mContext, this.mPhoneId) && !isDmaPackageInuse(str);
    }

    @Override // com.sec.internal.interfaces.ims.config.IWorkflow
    public void setRcsClientConfiguration(String str, String str2, String str3, String str4, String str5) {
        Bundle bundle = new Bundle();
        bundle.putString("rcsVersion", str);
        bundle.putString("rcsProfile", str2);
        bundle.putString("clientVendor", str3);
        bundle.putString("clientVersion", str4);
        sendMessage(obtainMessage(16, bundle));
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected boolean isValidRcsDisabledState(WorkflowBase.OpMode opMode) {
        return opMode == WorkflowBase.OpMode.TURNEDOFF_BY_RCS_DISABLED_STATE || super.isValidRcsDisabledState(opMode);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected WorkflowBase.OpMode getRcsDisabledState() {
        return super.getRcsDisabledState(ConfigConstants.CONFIG_TYPE.STORAGE_DATA, ConfigConstants.PATH.RCS_DISABLED_STATE_FOR_VZW, null);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected WorkflowBase.OpMode getRcsDisabledState(Map<String, String> map) {
        return super.getRcsDisabledState(ConfigConstants.CONFIG_TYPE.PARSEDXML_DATA, ConfigConstants.PATH.RCS_DISABLED_STATE_FOR_VZW, map);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected void setRcsDisabledState(String str) {
        this.mStorage.write(ConfigConstants.PATH.RCS_DISABLED_STATE_FOR_VZW, str);
    }

    protected String getSpgUrl() {
        return this.mStorage.read(ConfigConstants.PATH.SPG_URL);
    }

    protected String getSpgParamsUrl() {
        return this.mStorage.read(ConfigConstants.PATH.SPG_PARAMS_URL);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected WorkflowBase.OpMode convertRcsDisabledStateToOpMode(String str) {
        if (TextUtils.equals(String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value()), str)) {
            return WorkflowBase.OpMode.TURNEDOFF_BY_RCS_DISABLED_STATE;
        }
        return super.convertRcsDisabledStateToOpMode(str);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected int convertRcsDisabledStateToValue(WorkflowBase.OpMode opMode) {
        if (opMode == WorkflowBase.OpMode.TURNEDOFF_BY_RCS_DISABLED_STATE) {
            return WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value();
        }
        return super.convertRcsDisabledStateToValue(opMode);
    }

    protected String convertRcsStateWithSpecificParam(int i) {
        if (!isDmaPackageInuse(this.mDmaPackage) || this.mIsSecAndGoogDmaPackageSwitched) {
            return String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER.value());
        }
        if (this.mStartForce) {
            return String.valueOf(WorkflowBase.OpMode.DISABLE_TEMPORARY.value());
        }
        WorkflowBase.OpMode rcsDisabledState = getRcsDisabledState();
        if (isValidRcsDisabledState(rcsDisabledState)) {
            return String.valueOf(convertRcsDisabledStateToValue(rcsDisabledState));
        }
        return String.valueOf(i);
    }

    protected String displayRcsDisabledState(WorkflowBase.OpMode opMode) {
        int convertRcsDisabledStateToValue = convertRcsDisabledStateToValue(opMode);
        return convertRcsDisabledStateToValue == WorkflowBase.OpMode.NONE.value() ? "" : String.valueOf(convertRcsDisabledStateToValue);
    }

    protected void checkAndKeepData(Map<String, String> map) {
        String token = getToken();
        if (TextUtils.isEmpty(token)) {
            token = "";
        }
        map.put("root/token/token", token);
        int validity = getValidity();
        WorkflowBase.OpMode opMode = WorkflowBase.OpMode.DISABLE_TEMPORARY;
        map.put("root/vers/validity", validity > opMode.value() ? String.valueOf(getValidity()) : String.valueOf(opMode.value()));
    }

    protected void checkAndKeepRcsDisabledState(Map<String, String> map, WorkflowBase.OpMode opMode) {
        map.put(ConfigConstants.PATH.RCS_DISABLED_STATE_FOR_VZW, String.valueOf(convertRcsDisabledStateToValue(opMode)));
    }

    protected void checkAndKeepSpgUrl(Map<String, String> map) {
        String spgUrl = getSpgUrl();
        if (TextUtils.isEmpty(spgUrl)) {
            spgUrl = "";
        }
        map.put(ConfigConstants.PATH.SPG_URL, spgUrl);
        String spgParamsUrl = getSpgParamsUrl();
        map.put(ConfigConstants.PATH.SPG_PARAMS_URL, TextUtils.isEmpty(spgParamsUrl) ? "" : spgParamsUrl);
    }

    protected void checkAndKeepRcsClientConfiguration(Map<String, String> map) {
        String rcsVersion = this.mParamHandler.getRcsVersion(false);
        if (TextUtils.isEmpty(rcsVersion)) {
            rcsVersion = "";
        }
        map.put(ConfigConstants.PATH.INFO_RCS_VERSION, rcsVersion);
        String rcsProfile = this.mParamHandler.getRcsProfile(false);
        if (TextUtils.isEmpty(rcsProfile)) {
            rcsProfile = "";
        }
        map.put(ConfigConstants.PATH.INFO_RCS_PROFILE, rcsProfile);
        String clientVendor = this.mParamHandler.getClientVendor(false);
        if (TextUtils.isEmpty(clientVendor)) {
            clientVendor = "";
        }
        map.put(ConfigConstants.PATH.INFO_CLIENT_VENDOR, clientVendor);
        String clientVersion = this.mParamHandler.getClientVersion(false);
        map.put(ConfigConstants.PATH.INFO_CLIENT_VERSION, TextUtils.isEmpty(clientVersion) ? "" : clientVersion);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected void checkAndUpdateData(Map<String, String> map) {
        String token = getToken(map);
        if (!TextUtils.isEmpty(token) && !TextUtils.equals(token, getToken())) {
            setToken(token, DiagnosisConstants.RCSA_TDRE.UPDATE_TOKEN);
        }
        int validity = getValidity(map);
        if (validity != getValidity()) {
            setValidity(Math.max(validity, WorkflowBase.OpMode.DISABLE_TEMPORARY.value()));
        }
    }

    protected void checkAndUpdateDmaPackage() {
        this.mDmaPackage = TextUtils.isEmpty(this.mDmaPackage) ? ConfigUtil.getDmaPackage(this.mContext, this.mPhoneId) : this.mDmaPackage;
    }

    protected void checkAndUpdateDmaPackageInfo() {
        String dmaPackage = ConfigUtil.getDmaPackage(this.mContext, this.mPhoneId);
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "checkAndUpdateDmaPackageInfo: dmaPackage: " + this.mDmaPackage + " cur dmaPackage: " + dmaPackage);
        if (TextUtils.isEmpty(dmaPackage) || TextUtils.equals(dmaPackage, this.mDmaPackage)) {
            return;
        }
        boolean z = true;
        this.mIsDmaPackageChanged = true;
        this.mIsSecAndGoogDmaPackageSwitched = isSecAndGoogDmaPackageSwitched(this.mDmaPackage, dmaPackage);
        this.mCurConfigStartForce = (isNonSecGoogDmaPackageInuse(this.mDmaPackage) && isDmaPackageInuse(dmaPackage)) || this.mCurConfigStartForce;
        if ((!isNonSecGoogDmaPackageInuse(this.mDmaPackage) || !isDmaPackageInuse(dmaPackage)) && !this.mStartForce) {
            z = false;
        }
        this.mStartForce = z;
        IMSLog.i(str, this.mPhoneId, "checkAndUpdateDmaPackageInfo: dmaPackage is changed isSecAndGoogDmaPackageSwitched: " + this.mIsSecAndGoogDmaPackageSwitched + " curConfigStartForce: " + this.mCurConfigStartForce + " startForce: " + this.mStartForce);
        if (isGoogDmaPackageInuse(this.mDmaPackage) && !isGoogDmaPackageInuse(dmaPackage)) {
            IMSLog.i(str, this.mPhoneId, "checkAndUpdateDmaPackageInfo: dmaPackage is changed from goog to non-goog: notify autoConfigRemoved");
            SecImsNotifier.getInstance().notifyRcsAutoConfigurationRemoved(this.mPhoneId);
        }
        checkAndUpdateRcsClientConfiguration();
        this.mDmaPackage = dmaPackage;
        cancelValidityTimer();
        stopGeneralErrorRetryTimer();
    }

    protected void checkAndUpdateRcsClientConfiguration() {
        String str;
        if (isGoogDmaPackageInuse(this.mDmaPackage)) {
            this.mCurRcsVersion = TextUtils.isEmpty(this.mCurRcsVersion) ? this.mParamHandler.getRcsVersion(true) : this.mCurRcsVersion;
            this.mCurRcsProfile = TextUtils.isEmpty(this.mCurRcsProfile) ? this.mParamHandler.getRcsProfile(true) : this.mCurRcsProfile;
            this.mCurClientVendor = TextUtils.isEmpty(this.mCurClientVendor) ? this.mParamHandler.getClientVendor(true) : this.mCurClientVendor;
            this.mCurClientVersion = TextUtils.isEmpty(this.mCurClientVersion) ? this.mParamHandler.getClientVersion(true) : this.mCurClientVersion;
            return;
        }
        this.mCurRcsVersion = TextUtils.isEmpty(this.mCurRcsVersion) ? this.mRcsVersion : this.mCurRcsVersion;
        this.mCurRcsProfile = TextUtils.isEmpty(this.mCurRcsProfile) ? ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.UP_PROFILE, "UP_1.0") : this.mCurRcsProfile;
        this.mCurClientVendor = TextUtils.isEmpty(this.mCurClientVendor) ? "SEC" : this.mCurClientVendor;
        if (TextUtils.isEmpty(this.mCurClientVersion)) {
            str = this.mClientPlatform + this.mClientVersion;
        } else {
            str = this.mCurClientVersion;
        }
        this.mCurClientVersion = str;
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase
    protected WorkflowBase.Workflow handleResponseForUp(WorkflowBase.Workflow workflow, WorkflowBase.Workflow workflow2, WorkflowBase.Workflow workflow3) throws InvalidHeaderException, UnknownStatusException {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "handleResponseForUp: " + getLastErrorCode() + " response");
        int lastErrorCode = getLastErrorCode();
        if (lastErrorCode != 0) {
            if (lastErrorCode == 403) {
                setOpMode(WorkflowBase.OpMode.DISABLE_TEMPORARY, null);
            } else if (lastErrorCode != 500) {
                if (lastErrorCode == 503) {
                    startGeneralErrorRetryTimer(getretryAfterTime() * 1000);
                    this.mNextWorkflow = workflow2;
                } else if (lastErrorCode == 511) {
                    if (this.m511ResponseRetryCount < 3) {
                        int i = this.mPhoneId;
                        StringBuilder sb = new StringBuilder();
                        sb.append("handleResponseForUp: 511 response: retryCount: ");
                        sb.append(this.m511ResponseRetryCount);
                        sb.append(" retryTime: ");
                        long[] jArr = GENERAL_ERROR_RETRY_TIME;
                        sb.append(jArr[this.m511ResponseRetryCount]);
                        IMSLog.i(str, i, sb.toString());
                        startGeneralErrorRetryTimer(jArr[this.m511ResponseRetryCount]);
                        this.mNextWorkflow = workflow2;
                        this.m511ResponseRetryCount++;
                    } else {
                        IMSLog.i(str, this.mPhoneId, "handleResponseForUp: 511 response: no need to retry anymore");
                        this.mNextWorkflow = null;
                        this.mIsGeneralErrorRetryFailed = true;
                        cancelValidityTimer();
                    }
                    setToken("", DiagnosisConstants.RCSA_TDRE.INVALID_TOKEN);
                    this.mAppToken = "";
                } else {
                    throw new UnknownStatusException("handleResponseForUp: unknown https status code");
                }
            }
            stopGeneralErrorRetryTimer();
            this.mNextWorkflow = null;
            this.mIsGeneralErrorRetryFailed = true;
            cancelValidityTimer();
        } else if (this.mNoResponseRetryCount < 3) {
            int i2 = this.mPhoneId;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("handleResponseForUp: no response: retryCount: ");
            sb2.append(this.mNoResponseRetryCount);
            sb2.append(" retryTime: ");
            long[] jArr2 = GENERAL_ERROR_RETRY_TIME;
            sb2.append(jArr2[this.mNoResponseRetryCount]);
            IMSLog.i(str, i2, sb2.toString());
            startGeneralErrorRetryTimer(jArr2[this.mNoResponseRetryCount]);
            this.mNextWorkflow = workflow2;
            this.mNoResponseRetryCount++;
        } else {
            IMSLog.i(str, this.mPhoneId, "handleResponseForUp: no response: no need to retry anymore for no response");
            this.mNextWorkflow = null;
            this.mIsGeneralErrorRetryFailed = true;
            cancelValidityTimer();
        }
        return workflow3;
    }

    /* renamed from: com.sec.internal.ims.config.workflow.WorkflowVzw$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {
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
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE_PERMANENTLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DISABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.DORMANT.ordinal()] = 5;
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
            try {
                $SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[WorkflowBase.OpMode.TURNEDOFF_BY_RCS_DISABLED_STATE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowUpBase, com.sec.internal.ims.config.workflow.WorkflowBase
    protected void setOpMode(WorkflowBase.OpMode opMode, Map<String, String> map) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "setOpMode: " + opMode.name());
        switch (AnonymousClass4.$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode[opMode.ordinal()]) {
            case 1:
                if (map == null) {
                    IMSLog.i(str, this.mPhoneId, "setOpMode: active: data is empty");
                    break;
                } else {
                    IMSLog.s(str, this.mPhoneId, "setOpMode: active: data: " + map);
                    if ((this.mCurVersion <= getVersion(map) || this.mStartForce) && isDmaPackageInuse(this.mDmaPackage) && !this.mIsSecAndGoogDmaPackageSwitched) {
                        IMSLog.i(str, this.mPhoneId, "setOpMode: active: update the new config info");
                        checkAndKeepRcsClientConfiguration(map);
                        clearStorage(DiagnosisConstants.RCSA_TDRE.UPDATE_REMOTE_CONFIG);
                        this.mStorage.writeAll(map);
                        setVersionBackup(getVersion(map));
                    } else {
                        IMSLog.i(str, this.mPhoneId, "setOpMode: active: maintain the previous config info");
                        checkAndUpdateData(map);
                    }
                    int validity = getValidity();
                    setNextAutoconfigTimeAfter(validity);
                    setValidityTimer(validity);
                    break;
                }
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                if (map == null) {
                    IMSLog.i(str, this.mPhoneId, "setOpMode: data is empty");
                    String rcsVersion = this.mParamHandler.getRcsVersion(false);
                    String rcsProfile = this.mParamHandler.getRcsProfile(false);
                    String clientVendor = this.mParamHandler.getClientVendor(false);
                    String clientVersion = this.mParamHandler.getClientVersion(false);
                    clearStorage(DiagnosisConstants.RCSA_TDRE.DISABLE_RCS);
                    WorkflowBase.OpMode opMode2 = WorkflowBase.OpMode.DISABLE_TEMPORARY;
                    if (opMode == opMode2 || opMode == WorkflowBase.OpMode.DISABLE_PERMANENTLY || opMode == WorkflowBase.OpMode.DISABLE || opMode == WorkflowBase.OpMode.DORMANT) {
                        setVersion(opMode.value());
                    } else {
                        setVersion(opMode2.value());
                        setRcsDisabledState(String.valueOf(convertRcsDisabledStateToValue(opMode)));
                    }
                    setValidity(opMode2.value());
                    this.mParamHandler.setRcsClientConfiguration(rcsVersion, rcsProfile, clientVendor, clientVersion);
                    break;
                } else {
                    IMSLog.i(str, this.mPhoneId, "setOpMode: update the new config info");
                    checkAndKeepRcsClientConfiguration(map);
                    clearStorage(DiagnosisConstants.RCSA_TDRE.DISABLE_RCS);
                    this.mStorage.writeAll(map);
                    break;
                }
            default:
                IMSLog.i(str, this.mPhoneId, "setOpMode: unknown opMode");
                break;
        }
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase, com.sec.internal.interfaces.ims.config.IWorkflow
    public void cleanup() {
        if (hasMessages(4) && this.mIsConfigOngoing) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "cleanup: waiting for the result of mobile connection");
            removeMessages(4);
            sendEmptyMessage(4);
        }
        super.cleanup();
        endMobileAutoConfig();
        IMSLog.i(LOG_TAG, this.mPhoneId, "cleanup: send cleanup msg");
        sendEmptyMessage(14);
    }

    @Override // com.sec.internal.ims.config.workflow.WorkflowBase
    protected IHttpAdapter.Response getHttpResponse() {
        this.mHttp.close();
        this.mHttp.setHeaders(this.mSharedInfo.getHttpHeaders());
        this.mHttp.setParams(this.mSharedInfo.getHttpParams());
        this.mHttp.setContext(this.mContext);
        this.mHttp.setNetwork(this.mNetwork);
        this.mHttp.open(this.mSharedInfo.getUrl());
        IHttpAdapter.Response request = this.mHttp.request();
        this.mHttp.close();
        return request;
    }

    protected void setHttpParameter() {
        int value;
        String rcsProfile;
        String clientVersion;
        if (this.mStartForce || isNonActiveVersion(this.mCurVersion) || (value = this.mCurVersion) == 59) {
            value = WorkflowBase.OpMode.DISABLE_TEMPORARY.value();
        }
        this.mCurVersion = value;
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "setHttpParameter: curVersion: " + this.mCurVersion + " startForce: " + this.mStartForce);
        this.mSharedInfo.addHttpParam("vers", String.valueOf(this.mCurVersion));
        this.mSharedInfo.addHttpParam("IMSI", this.mTelephonyAdapter.getImsi());
        this.mSharedInfo.addHttpParam("terminal_vendor", "SEC");
        this.mSharedInfo.addHttpParam("terminal_model", ConfigConstants.BUILD.TERMINAL_MODEL);
        this.mSharedInfo.addHttpParam("terminal_sw_version", this.mParamHandler.getModelInfoFromBuildVersion(ConfigUtil.getModelName(this.mPhoneId), ConfigConstants.PVALUE.TERMINAL_SW_VERSION, 8, true));
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.IMEI, this.mTelephonyAdapter.getImei());
        String msisdn = this.mTelephonyAdapter.getMsisdn(SimUtil.getSubId(this.mPhoneId));
        if (!TextUtils.isEmpty(msisdn)) {
            IMSLog.i(str, this.mPhoneId, "setHttpParameter: use msisdn from telephony with current subId: " + SimUtil.getSubId(this.mPhoneId));
            this.mSharedInfo.addHttpParam("msisdn", this.mParamHandler.encodeRFC3986(msisdn));
        }
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.SMS_PORT, this.mTelephonyAdapter.getSmsDestPort());
        String token = getToken();
        if (TextUtils.isEmpty(token)) {
            IMSLog.i(str, this.mPhoneId, "setHttpParameter: rcstoken is empty so use apptoken");
            this.mSharedInfo.addHttpParam("token", this.mAppToken);
        } else {
            IMSLog.i(str, this.mPhoneId, "setHttpParameter: rcstoken is existed so use rcstoken");
            this.mSharedInfo.addHttpParam("token", token);
        }
        String convertRcsStateWithSpecificParam = convertRcsStateWithSpecificParam(this.mCurVersion);
        IMSLog.i(str, this.mPhoneId, "setHttpParameter: rcsState: " + convertRcsStateWithSpecificParam);
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_STATE, convertRcsStateWithSpecificParam);
        if (isDmaPackageInuse(this.mDmaPackage) && !this.mIsSecAndGoogDmaPackageSwitched) {
            boolean isSecDmaPackageInuse = isSecDmaPackageInuse(this.mDmaPackage);
            this.mCurRcsVersion = isSecDmaPackageInuse ? this.mRcsVersion : this.mParamHandler.getRcsVersion(true);
            if (isSecDmaPackageInuse) {
                rcsProfile = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.UP_PROFILE, "UP_1.0");
            } else {
                rcsProfile = this.mParamHandler.getRcsProfile(true);
            }
            this.mCurRcsProfile = rcsProfile;
            this.mCurClientVendor = isSecDmaPackageInuse ? "SEC" : this.mParamHandler.getClientVendor(true);
            if (isSecDmaPackageInuse) {
                clientVersion = this.mClientPlatform + this.mClientVersion;
            } else {
                clientVersion = this.mParamHandler.getClientVersion(true);
            }
            this.mCurClientVersion = clientVersion;
        }
        IMSLog.i(str, this.mPhoneId, "setHttpParameter: curRcsVersion: " + this.mCurRcsVersion + " curRcsProfile: " + this.mCurRcsProfile + " curClientVendor: " + this.mCurClientVendor + " curClientVersion: " + this.mCurClientVersion);
        this.mSharedInfo.addHttpParam("rcs_version", this.mCurRcsVersion);
        this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.RCS_PROFILE, this.mCurRcsProfile);
        this.mSharedInfo.addHttpParam("client_vendor", this.mCurClientVendor);
        this.mSharedInfo.addHttpParam("client_version", this.mCurClientVersion);
        if (ImsProfile.isRcsUp2Profile(this.mCurRcsProfile)) {
            IMSLog.i(str, this.mPhoneId, "setHttpParameter: app: ap2002 provisioningVersion: 5.0");
            this.mSharedInfo.addHttpParam("app", ConfigConstants.PVALUE.APP_ID_2);
            this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.PROVISIONING_VERSION, ConfigConstants.PVALUE.PROVISIONING_VERSION_5_0);
        } else {
            this.mSharedInfo.addHttpParam(ConfigConstants.PNAME.PROVISIONING_VERSION, "2.0");
        }
        this.mSharedInfo.addHttpParam("default_sms_app", (!isDmaPackageInuse(this.mDmaPackage) || this.mIsSecAndGoogDmaPackageSwitched) ? "2" : "1");
    }

    class Initialize implements WorkflowBase.Workflow {
        Initialize() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowVzw workflowVzw = WorkflowVzw.this;
            workflowVzw.mHttpResponse = 0;
            IMSLog.i(WorkflowVzw.LOG_TAG, workflowVzw.mPhoneId, "initialize: initUrl and clearCookie");
            WorkflowVzw workflowVzw2 = WorkflowVzw.this;
            workflowVzw2.mSharedInfo.setUrl(workflowVzw2.mParamHandler.initUrl());
            WorkflowVzw.this.mCookieHandler.clearCookie();
            return WorkflowVzw.this.new FetchToken();
        }
    }

    class FetchToken implements WorkflowBase.Workflow {
        FetchToken() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            if (TextUtils.isEmpty(WorkflowVzw.this.getToken())) {
                return WorkflowVzw.this.new FetchAppToken();
            }
            IMSLog.i(WorkflowVzw.LOG_TAG, WorkflowVzw.this.mPhoneId, "fetchToken: rcstoken is existed");
            return WorkflowVzw.this.new FetchHttps();
        }
    }

    class FetchAppToken implements WorkflowBase.Workflow {
        FetchAppToken() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            IMSLog.i(WorkflowVzw.LOG_TAG, WorkflowVzw.this.mPhoneId, "fetchAppToken: apptoken is needed");
            WorkflowVzw.this.mPowerController.release();
            WorkflowVzw workflowVzw = WorkflowVzw.this;
            workflowVzw.mAppToken = workflowVzw.mTelephonyAdapter.getAppToken(false);
            WorkflowVzw.this.mPowerController.lock();
            return WorkflowVzw.this.new AuthorizeAppToken();
        }
    }

    class AuthorizeAppToken implements WorkflowBase.Workflow {
        AuthorizeAppToken() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            String str = WorkflowVzw.LOG_TAG;
            IMSLog.i(str, WorkflowVzw.this.mPhoneId, "authorizeAppToken: apptoken is received");
            if (TextUtils.isEmpty(WorkflowVzw.this.mAppToken)) {
                IMSLog.i(str, WorkflowVzw.this.mPhoneId, "authorizeAppToken: apptoken is empty");
                return WorkflowVzw.this.new ReFetchAppToken();
            }
            IMSLog.i(str, WorkflowVzw.this.mPhoneId, "authorizeAppToken: apptoken is existed");
            return WorkflowVzw.this.new FetchHttps();
        }
    }

    class ReFetchAppToken implements WorkflowBase.Workflow {
        ReFetchAppToken() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowVzw workflowVzw = WorkflowVzw.this;
            if (workflowVzw.mNoAppTokenRetryCount < 3) {
                String str = WorkflowVzw.LOG_TAG;
                int i = workflowVzw.mPhoneId;
                StringBuilder sb = new StringBuilder();
                sb.append("reFetchAppToken: noAppTokenRetryCount: ");
                sb.append(WorkflowVzw.this.mNoAppTokenRetryCount);
                sb.append(" noAppTokenRetryTime: ");
                long[] jArr = WorkflowVzw.GENERAL_ERROR_RETRY_TIME;
                sb.append(jArr[WorkflowVzw.this.mNoAppTokenRetryCount]);
                IMSLog.i(str, i, sb.toString());
                WorkflowVzw workflowVzw2 = WorkflowVzw.this;
                workflowVzw2.startGeneralErrorRetryTimer(jArr[workflowVzw2.mNoAppTokenRetryCount]);
                WorkflowVzw workflowVzw3 = WorkflowVzw.this;
                workflowVzw3.mNextWorkflow = workflowVzw3.new FetchAppToken();
                WorkflowVzw.this.mNoAppTokenRetryCount++;
            } else {
                IMSLog.i(WorkflowVzw.LOG_TAG, workflowVzw.mPhoneId, "reFetchAppToken: no need to retry anymore for no apptoken");
                WorkflowVzw workflowVzw4 = WorkflowVzw.this;
                workflowVzw4.mNextWorkflow = null;
                workflowVzw4.mIsGeneralErrorRetryFailed = true;
                workflowVzw4.cancelValidityTimer();
            }
            return WorkflowVzw.this.new Finish();
        }
    }

    class ReFetchAppTokenFor511Response implements WorkflowBase.Workflow {
        ReFetchAppTokenFor511Response() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            IMSLog.i(WorkflowVzw.LOG_TAG, WorkflowVzw.this.mPhoneId, "reFetchAppTokenFor511Response: apptoken is needed");
            WorkflowVzw.this.mPowerController.release();
            WorkflowVzw workflowVzw = WorkflowVzw.this;
            workflowVzw.mAppToken = workflowVzw.mTelephonyAdapter.getAppToken(workflowVzw.m511ResponseRetryCount != 0);
            WorkflowVzw.this.mPowerController.lock();
            return WorkflowVzw.this.new AuthorizeAppToken();
        }
    }

    class FetchHttps implements WorkflowBase.Workflow {
        FetchHttps() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowVzw workflowVzw = WorkflowVzw.this;
            workflowVzw.mSharedInfo.setUrl(workflowVzw.mParamHandler.initUrl());
            WorkflowVzw.this.mSharedInfo.setHttpClean();
            WorkflowVzw.this.mSharedInfo.setHttpsDefault();
            WorkflowVzw.this.setHttpParameter();
            WorkflowVzw workflowVzw2 = WorkflowVzw.this;
            workflowVzw2.mSharedInfo.setHttpResponse(workflowVzw2.getHttpResponse());
            IHttpAdapter.Response httpResponse = WorkflowVzw.this.mSharedInfo.getHttpResponse();
            WorkflowVzw.this.mHttpResponse = httpResponse.getStatusCode();
            WorkflowVzw workflowVzw3 = WorkflowVzw.this;
            workflowVzw3.setLastErrorCode(workflowVzw3.mHttpResponse);
            WorkflowVzw.this.setLastErrorMessage(httpResponse.getStatusMessage());
            String str = WorkflowVzw.LOG_TAG;
            IMSLog.i(str, WorkflowVzw.this.mPhoneId, "fetchHttps: https response: " + WorkflowVzw.this.mHttpResponse + " https response msg: " + WorkflowVzw.this.getLastErrorMessage());
            WorkflowVzw workflowVzw4 = WorkflowVzw.this;
            int i = workflowVzw4.mHttpResponse;
            if (i != 200) {
                if (i == 511) {
                    return workflowVzw4.handleResponseForUp(workflowVzw4.new Initialize(), WorkflowVzw.this.new ReFetchAppTokenFor511Response(), WorkflowVzw.this.new Finish());
                }
                return workflowVzw4.handleResponseForUp(workflowVzw4.new Initialize(), WorkflowVzw.this.new FetchHttps(), WorkflowVzw.this.new Finish());
            }
            if (httpResponse.getBody() != null) {
                IMSLog.i(str, WorkflowVzw.this.mPhoneId, "fetchHttps: https response's body is existed");
                return WorkflowVzw.this.new Parse();
            }
            throw new UnknownStatusException("fetchHttps: there is no https response's body");
        }
    }

    class Parse implements WorkflowBase.Workflow {
        Parse() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            Map<String, String> parse;
            if (ImsProfile.isRcsUp2Profile(WorkflowVzw.this.mCurRcsProfile)) {
                WorkflowVzw workflowVzw = WorkflowVzw.this;
                parse = workflowVzw.mXmlMultipleParser.parse(new String(workflowVzw.mSharedInfo.getHttpResponse().getBody(), "utf-8"));
            } else {
                WorkflowVzw workflowVzw2 = WorkflowVzw.this;
                parse = workflowVzw2.mXmlParser.parse(new String(workflowVzw2.mSharedInfo.getHttpResponse().getBody(), "utf-8"));
            }
            if (parse == null || TextUtils.isEmpty(parse.get("root/vers/version")) || TextUtils.isEmpty(parse.get("root/vers/validity"))) {
                throw new InvalidXmlException("parse: parsedXml is invalid!");
            }
            IMSLog.i(WorkflowVzw.LOG_TAG, WorkflowVzw.this.mPhoneId, "parse: parsedXml is received from the network server: version: " + parse.get("root/vers/version") + " validity: " + parse.get("root/vers/validity") + " rcsDisabledState: " + WorkflowVzw.this.getRcsDisabledState(parse));
            WorkflowVzw.this.mParamHandler.checkSetToGS(parse);
            WorkflowVzw.this.mSharedInfo.setParsedXml(parse);
            return WorkflowVzw.this.new Store();
        }
    }

    class Store implements WorkflowBase.Workflow {
        Store() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            Map<String, String> parsedXml = WorkflowVzw.this.mSharedInfo.getParsedXml();
            WorkflowBase.OpMode rcsDisabledState = WorkflowVzw.this.getRcsDisabledState(parsedXml);
            if (WorkflowVzw.this.isValidRcsDisabledState(rcsDisabledState)) {
                WorkflowVzw.this.setOpMode(rcsDisabledState, parsedXml);
                if (rcsDisabledState != WorkflowBase.OpMode.DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE) {
                    IMSLog.i(WorkflowVzw.LOG_TAG, WorkflowVzw.this.mPhoneId, "store: no need to retry for rcsDisabledState");
                } else {
                    WorkflowVzw workflowVzw = WorkflowVzw.this;
                    if (workflowVzw.mRcsDisabledStateRetryCount < 3) {
                        String str = WorkflowVzw.LOG_TAG;
                        int i = workflowVzw.mPhoneId;
                        StringBuilder sb = new StringBuilder();
                        sb.append("store: rcsDisabledStateRetryCount: ");
                        sb.append(WorkflowVzw.this.mRcsDisabledStateRetryCount);
                        sb.append(" rcsDisabledStateRetryTime: ");
                        long[] jArr = WorkflowVzw.GENERAL_ERROR_RETRY_TIME;
                        sb.append(jArr[WorkflowVzw.this.mRcsDisabledStateRetryCount]);
                        IMSLog.i(str, i, sb.toString());
                        WorkflowVzw workflowVzw2 = WorkflowVzw.this;
                        workflowVzw2.startGeneralErrorRetryTimer(jArr[workflowVzw2.mRcsDisabledStateRetryCount]);
                        WorkflowVzw workflowVzw3 = WorkflowVzw.this;
                        workflowVzw3.mNextWorkflow = workflowVzw3.new FetchHttps();
                        WorkflowVzw.this.mRcsDisabledStateRetryCount++;
                    } else {
                        IMSLog.i(WorkflowVzw.LOG_TAG, workflowVzw.mPhoneId, "store: no need to retry anymore for rcsDisabledState");
                        WorkflowVzw.this.mNextWorkflow = null;
                    }
                }
                return WorkflowVzw.this.new Finish();
            }
            WorkflowVzw workflowVzw4 = WorkflowVzw.this;
            workflowVzw4.setOpMode(workflowVzw4.getOpMode(parsedXml), parsedXml);
            int version = WorkflowVzw.this.getVersion();
            if (WorkflowVzw.this.isActiveVersion(version) && version != 101) {
                WorkflowVzw workflowVzw5 = WorkflowVzw.this;
                if (workflowVzw5.getRemainingValidityTime(workflowVzw5.getNextAutoconfigTime()) <= WorkflowBase.OpMode.DISABLE_TEMPORARY.value()) {
                    WorkflowVzw workflowVzw6 = WorkflowVzw.this;
                    if (workflowVzw6.mNoRemainingValidityRetryCount < 3) {
                        String str2 = WorkflowVzw.LOG_TAG;
                        int i2 = workflowVzw6.mPhoneId;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("store: remainingValidityTime is not valid: noRemainingValidityRetryCount: ");
                        sb2.append(WorkflowVzw.this.mNoRemainingValidityRetryCount);
                        sb2.append(" noRemainingValidityRetryTime: ");
                        long[] jArr2 = WorkflowVzw.GENERAL_ERROR_RETRY_TIME;
                        sb2.append(jArr2[WorkflowVzw.this.mNoRemainingValidityRetryCount]);
                        IMSLog.i(str2, i2, sb2.toString());
                        WorkflowVzw workflowVzw7 = WorkflowVzw.this;
                        workflowVzw7.startGeneralErrorRetryTimer(jArr2[workflowVzw7.mNoRemainingValidityRetryCount]);
                        WorkflowVzw workflowVzw8 = WorkflowVzw.this;
                        workflowVzw8.mNextWorkflow = workflowVzw8.new FetchHttps();
                        WorkflowVzw.this.mNoRemainingValidityRetryCount++;
                    } else {
                        IMSLog.i(WorkflowVzw.LOG_TAG, workflowVzw6.mPhoneId, "store: no need to retry anymore for noRemainingValidityTime");
                        WorkflowVzw.this.mNextWorkflow = null;
                    }
                }
            }
            return WorkflowVzw.this.new Finish();
        }
    }

    class Finish implements WorkflowBase.Workflow {
        Finish() {
        }

        @Override // com.sec.internal.ims.config.workflow.WorkflowBase.Workflow
        public WorkflowBase.Workflow run() throws Exception {
            WorkflowVzw workflowVzw = WorkflowVzw.this;
            workflowVzw.setLastErrorCode(workflowVzw.mSharedInfo.getHttpResponse() == null ? IWorkflow.DEFAULT_ERROR_CODE : WorkflowVzw.this.mSharedInfo.getHttpResponse().getStatusCode());
            WorkflowVzw workflowVzw2 = WorkflowVzw.this;
            workflowVzw2.setLastErrorMessage(workflowVzw2.mSharedInfo.getHttpResponse() == null ? "" : WorkflowVzw.this.mSharedInfo.getHttpResponse().getStatusMessage());
            IMSLog.i(WorkflowVzw.LOG_TAG, WorkflowVzw.this.mPhoneId, "finish: lastErrorCode: " + WorkflowVzw.this.getLastErrorCode() + " lastErrorMsg: " + WorkflowVzw.this.getLastErrorMessage());
            return null;
        }
    }
}
