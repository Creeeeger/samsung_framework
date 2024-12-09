package com.sec.internal.ims.config;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.sec.ims.IAutoConfigurationListener;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.SipErrorBase;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.PhoneIdKeyMap;
import com.sec.internal.helper.Preconditions;
import com.sec.internal.helper.RcsConfigurationHelper;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.config.params.ACSConfig;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.ImsProfileLoaderInternal;
import com.sec.internal.ims.settings.JibeRcsAutoConfig;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IConfigModule;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import com.sec.internal.interfaces.ims.config.IWorkflow;
import com.sec.internal.interfaces.ims.core.IJibeRcsAutoConfig;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.core.IUserAgent;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class ConfigModule extends Handler implements IConfigModule {
    private static final String AUTOCONF_TAG = "Autoconf";
    static final int AUTO_CONFIG_IMS_PDN = 1;
    static final int ERROR_WORKFLOW_IS_NULL = 708;
    static final int LOCAL_CONFIG_VERS = 59;
    private static final String LOG_TAG = ConfigModule.class.getSimpleName();
    int m403ForbiddenCounter;
    List<String> mAcsEncrNeededParams;
    int mCallState;
    PhoneIdKeyMap<Boolean> mClearTokenNeededList;
    ConfigComplete mConfigComplete;
    ConfigTrigger mConfigTrigger;
    private final Context mContext;
    protected SimpleEventLog mEventLog;
    private String mIidToken;
    IntentReceiver mIntentReceiver;
    boolean mIsConfigModuleBootUp;
    boolean mIsMessagingReady;
    boolean mIsRcsEnabled;
    IJibeRcsAutoConfig mJibeRcsAutoConfig;
    private SparseArray<IAutoConfigurationListener> mListener;
    private boolean mMobileNetwork;
    private String mMsisdnNumber;
    boolean mNeedRetryOverNetwork;
    boolean mNeedRetryOverWifi;
    private PhoneIdKeyMap<HashMap<Integer, ConnectivityManager.NetworkCallback>> mNetworkListeners;
    PhoneIdKeyMap<HashMap<Integer, Network>> mNetworkLists;
    SparseArray<Message> mOnCompleteList;
    boolean mPendingAutoComplete;
    boolean mPendingAutoConfig;
    boolean mPendingDeregi;
    PhoneIdKeyMap<Boolean> mReadyNetwork;
    private int mRetryCount;
    IRegistrationManager mRm;
    PhoneIdKeyMap<Boolean> mSimRefreshReceivedList;
    private String mVerificationCode;
    boolean mWifiNetwork;
    WorkFlowController mWorkFlowController;
    SparseArray<HandlerThread> mWorkflowThreadList;

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public Handler getHandler() {
        return this;
    }

    public ConfigModule(Looper looper, Context context, IRegistrationManager iRegistrationManager) {
        super(looper);
        this.mOnCompleteList = new SparseArray<>();
        this.mListener = new SparseArray<>();
        this.mVerificationCode = null;
        this.mMsisdnNumber = null;
        this.mIidToken = null;
        this.mIsRcsEnabled = false;
        this.mWorkflowThreadList = new SparseArray<>();
        this.mMobileNetwork = false;
        this.mWifiNetwork = false;
        this.mNeedRetryOverNetwork = false;
        this.mNeedRetryOverWifi = false;
        this.mPendingAutoComplete = false;
        this.mPendingDeregi = false;
        this.mPendingAutoConfig = false;
        this.mIsConfigModuleBootUp = false;
        this.mIsMessagingReady = false;
        this.mCallState = 0;
        this.mRetryCount = 1;
        this.m403ForbiddenCounter = 0;
        this.mAcsEncrNeededParams = Arrays.asList(ConfigConstants.ConfigTable.CAPDISCOVERY_ALLOWED_PREFIXES.toLowerCase(), ConfigConstants.ConfigTable.CAPDISCOVERY_CAPINFO_EXPIRY.toLowerCase(), ConfigConstants.ConfigTable.CAPDISCOVERY_DEFAULT_DISC.toLowerCase(), ConfigConstants.ConfigTable.CAPDISCOVERY_DISABLE_INITIAL_SCAN.toLowerCase(), ConfigConstants.ConfigTable.CAPDISCOVERY_NON_RCS_CAPINFO_EXPIRY.toLowerCase(), ConfigConstants.ConfigTable.CAPDISCOVERY_POLLING_PERIOD.toLowerCase(), ConfigConstants.ConfigTable.IM_IM_MSG_TECH.toLowerCase(), ConfigConstants.ConfigTable.SERVICES_CHAT_AUTH.toLowerCase(), ConfigConstants.ConfigTable.SERVICES_GROUP_CHAT_AUTH.toLowerCase(), ConfigConstants.ConfigTable.SERVICES_FT_AUTH.toLowerCase(), ConfigConstants.ConfigTable.SERVICES_SLM_AUTH.toLowerCase(), ConfigConstants.ConfigTable.UX_CANCEL_MESSAGE_UX.toLowerCase(), "validity".toLowerCase(), "version".toLowerCase(), ConfigConstants.ConfigTable.SERVICES_RCS_DISABLED_STATE.toLowerCase(), ConfigConstants.ConfigTable.SERVICES_GEOPUSH_AUTH.toLowerCase(), ConfigConstants.ConfigTable.PRESENCE_THROTTLE_PUBLISH.toLowerCase(), ConfigConstants.ConfigTable.PRESENCE_MAX_SUBSCRIPTION_LIST.toLowerCase());
        this.mContext = context;
        this.mRm = iRegistrationManager;
        this.mEventLog = new SimpleEventLog(context, LOG_TAG, 100);
        this.mJibeRcsAutoConfig = new JibeRcsAutoConfig(context);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        this.mIntentReceiver = new IntentReceiver();
        for (ISimManager iSimManager : SimManagerFactory.getAllSimManagers()) {
            if (iSimManager.getSimMno() == Mno.KT) {
                this.mIntentReceiver.addActionAirplaneMode();
            }
            iSimManager.registerForSimRefresh(this, 12, null);
            iSimManager.registerForSimRemoved(this, 12, null);
            iSimManager.registerForSimReady(this, 11, null);
        }
        Context context = this.mContext;
        IntentReceiver intentReceiver = this.mIntentReceiver;
        context.registerReceiver(intentReceiver, intentReceiver.getIntentFilter());
        int phoneCount = SimUtil.getPhoneCount();
        if (phoneCount > 1) {
            Log.d(LOG_TAG, " Registering for ADS");
            SimManagerFactory.registerForADSChange(this, 10, null);
        }
        this.mNetworkListeners = new PhoneIdKeyMap<>(phoneCount, null);
        this.mNetworkLists = new PhoneIdKeyMap<>(phoneCount, null);
        for (int i = 0; i < phoneCount; i++) {
            this.mNetworkLists.put(i, new HashMap<>());
            this.mNetworkListeners.put(i, new HashMap<>());
        }
        Boolean bool = Boolean.FALSE;
        this.mReadyNetwork = new PhoneIdKeyMap<>(phoneCount, bool);
        this.mSimRefreshReceivedList = new PhoneIdKeyMap<>(phoneCount, bool);
        this.mClearTokenNeededList = new PhoneIdKeyMap<>(phoneCount, bool);
        this.mWorkFlowController = new WorkFlowController(this.mContext);
        this.mConfigTrigger = new ConfigTrigger(this.mContext, this.mRm, this, this.mEventLog);
        this.mConfigComplete = new ConfigComplete(this.mContext, this.mRm, this, this.mEventLog);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:316:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x06f6  */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void handleMessage(android.os.Message r17) {
        /*
            Method dump skipped, instructions count: 2470
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.config.ConfigModule.handleMessage(android.os.Message):void");
    }

    protected void onSimRefresh(int i) {
        IMSLog.i(LOG_TAG, i, "onSimRefresh:");
        this.mConfigTrigger.setReadyStartCmdList(i, false);
        if (getAcsConfig(i) != null) {
            getAcsConfig(i).clear();
        }
        this.mReadyNetwork.put(i, Boolean.FALSE);
        deregisterNetworkCallback(i);
        this.mSimRefreshReceivedList.put(i, Boolean.TRUE);
        this.mWorkFlowController.onSimRefresh(i);
    }

    protected void onTelephonyCallStatusChanged(int i, int i2) {
        this.mCallState = i2;
        IMSLog.i(LOG_TAG, i, "onTelephonyCallStatusChanged: " + this.mCallState);
        if (this.mCallState == 0) {
            boolean z = DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, i) == 1;
            if (this.mPendingAutoComplete) {
                this.mPendingAutoComplete = false;
                Bundle bundle = new Bundle();
                bundle.putInt("lastError", getAcsConfig(i).getAcsLastError());
                sendMessage(obtainMessage(13, bundle));
                return;
            }
            if (this.mPendingDeregi) {
                this.mPendingDeregi = false;
                List<IRegisterTask> pendingRegistration = this.mRm.getPendingRegistration(i);
                if (pendingRegistration == null) {
                    return;
                }
                for (IRegisterTask iRegisterTask : pendingRegistration) {
                    if (iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED) && iRegisterTask.getPdnType() != 15) {
                        iRegisterTask.setDeregiReason(36);
                        this.mRm.deregister(iRegisterTask, false, true, "MsgApp is changed");
                    } else if (z) {
                        this.mRm.requestTryRegister(iRegisterTask.getPhoneId());
                    }
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public ACSConfig getAcsConfig(int i) {
        return this.mWorkFlowController.getAcsConfig(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void setRegisterFromApp(boolean z, int i) {
        this.mConfigTrigger.setRegisterFromApp(z, i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void updateTelephonyCallStatus(int i, int i2) {
        IMSLog.i(LOG_TAG, i, "updateTelephonyCallStatus: " + i2);
        sendMessage(obtainMessage(14, i, i2, null));
    }

    public void onNewRcsConfigurationAvailable(int i, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("phoneId", i);
        bundle.putInt("lastError", i2);
        sendMessage(obtainMessage(13, bundle));
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public boolean isWaitAutoconfig(IRegisterTask iRegisterTask) {
        return this.mConfigTrigger.isWaitAutoconfig(iRegisterTask);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void triggerAutoConfig(boolean z, int i, List<IRegisterTask> list) {
        if (this.mConfigTrigger.triggerAutoConfig(z, i, list)) {
            sendMessageDelayed(obtainMessage(18, i, 0, null), 1000L);
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public Message obtainConfigMessage(int i, Bundle bundle) {
        return obtainMessage(i, bundle);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void sendConfigMessage(int i, int i2) {
        sendMessage(obtainMessage(i, i2, 0, null));
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void sendConfigMessageDelayed(int i, int i2, int i3) {
        sendMessageDelayed(obtainMessage(i, i2, 0, null), i3);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void sendConfigMessageDelayed(int i, int i2, Object obj, int i3) {
        sendMessageDelayed(obtainMessage(i, i2, 0, obj), i3);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void startAutoConfig(boolean z, Message message, int i) {
        if (message == null) {
            Bundle bundle = new Bundle();
            bundle.putInt("phoneId", i);
            message = obtainMessage(13, bundle);
        }
        this.mOnCompleteList.put(i, message);
        this.mConfigTrigger.startAutoConfig(z, message, i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void startAutoConfigDualsim(int i, Message message) {
        this.mOnCompleteList.put(i, message);
        this.mConfigTrigger.startAutoConfigDualsim(i, message);
    }

    public void registerAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener, int i) {
        this.mListener.put(i, iAutoConfigurationListener);
        this.mConfigTrigger.startConfig(5, null, i);
    }

    public void unregisterAutoConfigurationListener(IAutoConfigurationListener iAutoConfigurationListener, int i) {
        this.mListener.put(i, iAutoConfigurationListener);
        this.mConfigTrigger.startConfig(6, null, i);
    }

    public void sendVerificationCode(String str, int i) {
        this.mVerificationCode = str;
        this.mConfigTrigger.startConfig(7, null, i);
    }

    public void sendMsisdnNumber(String str, int i) {
        this.mMsisdnNumber = str;
        this.mConfigTrigger.startConfig(20, null, i);
    }

    public void sendIidToken(String str, int i) {
        this.mIidToken = str;
        this.mConfigTrigger.startConfig(27, null, i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void changeOpMode(boolean z, int i, int i2) {
        this.mIsRcsEnabled = z;
        String str = LOG_TAG;
        IMSLog.i(str, i, "changeOpMode: mIsRcsEnabled: " + this.mIsRcsEnabled);
        IMSLog.c(LogClass.CM_OP_MODE, i + ",RCSE:" + this.mIsRcsEnabled);
        Mno simMno = SimUtil.getSimMno(i);
        IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
        if (rcsStrategy != null && rcsStrategy.isRemoteConfigNeeded(i)) {
            IMSLog.i(str, i, "changeOpMode: it is not supported");
            return;
        }
        if (ImsProfile.isRcsUpProfile(getRcsProfile(i)) || ConfigUtil.isRcsChn(simMno)) {
            getAcsConfig(i).resetAcsSettings();
            if (!z) {
                String acsServerType = ConfigUtil.getAcsServerType(i);
                IStorageAdapter storage = getStorage(i);
                if (!ImsConstants.RCS_AS.JIBE.equals(acsServerType) || (isValidConfigDb(i) && storage != null && !TextUtils.isEmpty(storage.read("root/token/token")))) {
                    IMSLog.i(str, i, "force autoconfig for supporting up profile");
                    this.mConfigTrigger.startConfig(8, null, i);
                    startAutoConfig(true, null, i);
                    return;
                }
                IMSLog.i(str, i, "not to trigger a config because of invalid config");
                return;
            }
        }
        this.mConfigTrigger.startConfig(8, null, i);
        IMSLog.i(str, i, "tcPopupUserAccept: " + i2);
        if (i2 == 0 && z) {
            getAcsConfig(i).resetAcsSettings();
            IMSLog.i(str, i, "force autoconfig in case tcPopupUserAccept is zero");
            startAutoConfig(true, null, i);
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public String getRcsProfile(int i) {
        return this.mWorkFlowController.getRcsProfile(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public String getRcsConfigMark(int i) {
        Mno simMno = SimUtil.getSimMno(i);
        String str = "";
        if (simMno == Mno.DEFAULT) {
            IMSLog.i(LOG_TAG, i, "getRcsConfigMark: no SIM loaded");
            return "";
        }
        List<ImsProfile> profileListWithMnoName = ImsProfileLoaderInternal.getProfileListWithMnoName(this.mContext, simMno.getName(), i);
        if (profileListWithMnoName != null && !profileListWithMnoName.isEmpty()) {
            Iterator<ImsProfile> it = profileListWithMnoName.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ImsProfile next = it.next();
                str = next.getRcsConfigMark();
                if (next.getEnableStatus() == 2 && !TextUtils.isEmpty(str)) {
                    IMSLog.i(LOG_TAG, i, "getRcsConfigMark: " + str);
                    break;
                }
            }
        }
        return str;
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public boolean isValidAcsVersion(int i) {
        return this.mConfigTrigger.isValidAcsVersion(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public Integer getRcsConfVersion(int i) {
        return RcsConfigurationHelper.readIntParam(this.mContext, ImsUtil.getPathWithPhoneId("version", i), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0067 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isValidConfigDb(int r10) {
        /*
            r9 = this;
            java.lang.Integer r0 = r9.getRcsConfVersion(r10)
            r1 = 0
            if (r0 == 0) goto L68
            java.lang.Integer r0 = r9.getRcsConfVersion(r10)
            int r0 = r0.intValue()
            if (r0 >= 0) goto L12
            goto L68
        L12:
            java.util.Date r0 = new java.util.Date
            r0.<init>()
            android.content.Context r9 = r9.mContext
            java.lang.String r2 = "info/next_autoconfig_time"
            java.lang.String r2 = com.sec.internal.ims.util.ImsUtil.getPathWithPhoneId(r2, r10)
            java.lang.String r9 = com.sec.internal.helper.RcsConfigurationHelper.readStringParamWithPath(r9, r2)
            boolean r2 = android.text.TextUtils.isEmpty(r9)
            r3 = 0
            if (r2 != 0) goto L46
            long r5 = java.lang.Long.parseLong(r9)     // Catch: java.lang.NumberFormatException -> L30
            goto L47
        L30:
            java.lang.String r2 = com.sec.internal.ims.config.ConfigModule.LOG_TAG
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "Invalid next autoconfig time: "
            r5.append(r6)
            r5.append(r9)
            java.lang.String r9 = r5.toString()
            com.sec.internal.log.IMSLog.i(r2, r10, r9)
        L46:
            r5 = r3
        L47:
            long r7 = r0.getTime()
            long r5 = r5 - r7
            java.lang.String r9 = com.sec.internal.ims.config.ConfigModule.LOG_TAG
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "remainingValidity: "
            r0.append(r2)
            r0.append(r5)
            java.lang.String r0 = r0.toString()
            com.sec.internal.log.IMSLog.i(r9, r10, r0)
            int r9 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r9 <= 0) goto L68
            r1 = 1
        L68:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.config.ConfigModule.isValidConfigDb(int):boolean");
    }

    boolean rcsProfileInit(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null || simManagerFromSimSlot.hasNoSim()) {
            this.mEventLog.logAndAdd(i, "rcsProfileInit: no SIM loaded");
            IMSLog.c(LogClass.CM_NO_SIM_LOADED, i + ",NOSL");
            return false;
        }
        Integer rcsConfVersion = getRcsConfVersion(simManagerFromSimSlot.getSimSlotIndex());
        IMSLog.i(LOG_TAG, i, "rcsProfileInit: ConfigDBVer = " + rcsConfVersion);
        if (rcsConfVersion != null) {
            getAcsConfig(simManagerFromSimSlot.getSimSlotIndex()).setAcsVersion(rcsConfVersion.intValue());
        }
        String simMnoName = simManagerFromSimSlot.getSimMnoName();
        if (TextUtils.isEmpty(simMnoName) && !simManagerFromSimSlot.hasVsim()) {
            this.mEventLog.logAndAdd(i, "rcsProfileInit: mnoName is not valid");
            IMSLog.c(LogClass.CM_INVALID_MNONAME, i + ",INVMNO");
            return false;
        }
        String rcsProfileLoaderInternalWithFeature = ConfigUtil.getRcsProfileLoaderInternalWithFeature(this.mContext, simMnoName, i);
        this.mWorkFlowController.putRcsProfile(i, rcsProfileLoaderInternalWithFeature);
        this.mEventLog.logAndAdd(i, "Autoconfig init: mnoName = " + simMnoName + ", rcsProfile = " + rcsProfileLoaderInternalWithFeature);
        IMSLog.c(LogClass.CM_RCS_PROFILE, i + "," + simMnoName + "," + rcsProfileLoaderInternalWithFeature);
        return true;
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public boolean updateMobileNetworkforDualRcs(int i) {
        if (RcsUtils.DualRcs.isDualRcsReg() && SimUtil.getActiveDataPhoneId() != i) {
            IMSLog.i(LOG_TAG, i, "tryAutoConfig: getActiveDataPhoneId() != phoneId ->mobileNetwork = false");
            this.mMobileNetwork = false;
        }
        return this.mMobileNetwork;
    }

    void init(int i) {
        sendMessage(obtainMessage(0, i, 0, null));
    }

    void onSimReady(int i, boolean z) {
        String str = LOG_TAG;
        IMSLog.i(str, i, "onSimReady:");
        deregisterNetworkCallback(i);
        registerNetworkCallback(i);
        boolean isSimInfochanged = this.mWorkFlowController.isSimInfochanged(i, z);
        boolean isValidAcsVersion = isValidAcsVersion(i);
        IWorkflow workflow = this.mWorkFlowController.getWorkflow(i);
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        Mno simMno = SimUtil.getSimMno(i);
        int i2 = ImsRegistry.getInt(i, GlobalSettingsConstants.RCS.RCS_DEFAULT_ENABLED, -1);
        IMSLog.i(str, i, "isRcsAvailable: " + isValidAcsVersion + " isChanged: " + isSimInfochanged + " isRemoteConfigNeeded: " + z + " isSimRefreshReceived: " + this.mSimRefreshReceivedList.get(i) + " rcsDefaultEnabled: " + i2);
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append(",RCSE:");
        sb.append(isValidAcsVersion);
        sb.append(",SIM:");
        sb.append(isSimInfochanged);
        IMSLog.c(LogClass.CM_SIM_READY, sb.toString());
        this.mEventLog.logAndAdd(i, "isRcsEnabled: " + isValidAcsVersion + " isChanged: " + isSimInfochanged);
        String nWCode = OmcCode.getNWCode(i);
        String string = ImsSharedPrefHelper.getString(i, this.mContext, IConfigModule.PREF_OMCNW_CODE, IConfigModule.KEY_OMCNW_CODE, "");
        boolean equalsIgnoreCase = nWCode.equalsIgnoreCase(string) ^ true;
        ImsSharedPrefHelper.save(i, this.mContext, IConfigModule.PREF_OMCNW_CODE, IConfigModule.KEY_OMCNW_CODE, nWCode);
        this.mEventLog.logAndAdd(i, "onSimReady: OMCNW_CODE: " + string + " => " + nWCode);
        boolean equals = ImsConstants.RCS_AS.JIBE.equals(ConfigUtil.getAcsServerType(i));
        if (workflow == null && isValidAcsVersion && ((z || (isSimInfochanged && equals)) && (this.mSimRefreshReceivedList.get(i).booleanValue() || equalsIgnoreCase))) {
            IMSLog.i(str, i, "sim info is refreshed and reset acsSettings");
            IMSLog.c(LogClass.CM_SIMINFO_REFRESHED, i + ",SIMINFO:REF,RACS");
            this.mEventLog.logAndAdd(i, "SIM info is refreshed or OMCNW_CODE changed. Reset ACS settings");
            if (!equals) {
                ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, i2, i);
            } else {
                this.mClearTokenNeededList.put(i, Boolean.TRUE);
            }
            setAcsTryReason(i, DiagnosisConstants.RCSA_ATRE.SIM_SWAP);
            getAcsConfig(i).resetAcsSettings();
            this.mConfigTrigger.setReadyStartForceCmd(i, true);
            this.mSimRefreshReceivedList.put(i, Boolean.TRUE);
            clearWorkFlowThread(i);
            return;
        }
        if (isSimInfochanged) {
            setAcsTryReason(i, DiagnosisConstants.RCSA_ATRE.SIM_SWAP);
            if (simMno.isKor()) {
                IMSLog.i(str, i, "changed sim info, reset to MSISDN_FROM_PAU");
                resetMsisdnFromPau(i);
            }
        }
        this.mSimRefreshReceivedList.put(i, Boolean.FALSE);
        if (workflow == null) {
            if ((simMno.isKor() || simMno.isEur() || simMno.isChn()) && simManagerFromSimSlot != null && !simManagerFromSimSlot.hasNoSim()) {
                IMSLog.i(str, i, "init workflow");
                IMSLog.c(LogClass.CM_INIT_WORKFLOW, i + ",WF:INIT");
                sendMessage(obtainMessage(0, i, 0, null));
            }
            if (RcsUtils.DualRcs.isDualRcsReg()) {
                updateDualRcsNetwork(i);
                return;
            }
            return;
        }
        if (isSimInfochanged && isValidAcsVersion) {
            IMSLog.i(str, i, "reinit workflow");
            IMSLog.c(LogClass.CM_REINIT_WORKFLOW, i + ",WF:REINIT");
            if (equals) {
                workflow.clearAutoConfigStorage(DiagnosisConstants.RCSA_TDRE.SIM_CHANGED);
                IMSLog.i(str, i, "setting for starting auto config by Message app is clear");
                ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, -1, i);
            } else if (simMno.isOneOf(Mno.TMOUS, Mno.DISH)) {
                getAcsConfig(i).setAcsCompleteStatus(false);
            } else if (z) {
                IMSLog.i(str, i, "sim info is changed and reset acsSettings");
                IMSLog.c(LogClass.CM_SIMINFO_CHANGED, i + ",SIMINFO:CHA,RACS");
                ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, i2, i);
                getAcsConfig(i).resetAcsSettings();
                this.mConfigTrigger.setReadyStartForceCmd(i, true);
                this.mSimRefreshReceivedList.put(i, Boolean.TRUE);
            }
            workflow.cleanup();
            this.mConfigTrigger.setReadyStartCmdList(i, false);
            this.mWorkFlowController.removeWorkFlow(i);
            clearWorkFlowThread(i);
            IMSLog.i(str, i, "clear WorkFlow/WorkFlowThread and send init msg");
            sendMessage(obtainMessage(0, i, 0, null));
        }
    }

    void updateDualRcsNetwork(int i) {
        Network availableNetworkForNetworkType = getAvailableNetworkForNetworkType(i == 0 ? 1 : 0, 1);
        if (availableNetworkForNetworkType == null || SimUtil.getActiveDataPhoneId() == i) {
            return;
        }
        sendMessage(obtainMessage(24, i, 1, availableNetworkForNetworkType));
        IMSLog.d(LOG_TAG, i, "updateDualRcsNetwork : ");
    }

    void clearWorkFlow(int i) {
        IWorkflow workflow = this.mWorkFlowController.getWorkflow(i);
        HandlerThread handlerThread = this.mWorkflowThreadList.get(i);
        if (workflow == null || handlerThread == null || !workflow.isConfigOngoing()) {
            return;
        }
        String str = LOG_TAG;
        IMSLog.i(str, i, "clearWorkFlow started");
        workflow.stopWorkFlow();
        handlerThread.interrupt();
        this.mConfigTrigger.setReadyStartCmdList(i, true);
        IMSLog.i(str, i, "clearWorkFlow done");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.util.SparseArray, android.util.SparseArray<android.os.HandlerThread>] */
    void clearWorkFlowThread(int i) {
        HandlerThread handlerThread = this.mWorkflowThreadList.get(i);
        if (handlerThread == null) {
            IMSLog.i(LOG_TAG, i, "clearWorkFlowThread: workflowThread is null");
            return;
        }
        IMSLog.i(LOG_TAG, i, "clearWorkFlowThread: started");
        handlerThread.interrupt();
        try {
            try {
                handlerThread.join(100L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            IMSLog.i(LOG_TAG, i, "clearWorkFlowThread: done");
        } finally {
            this.mWorkflowThreadList.remove(i);
        }
    }

    boolean isMobileDataOn() {
        return Settings.Global.getInt(this.mContext.getContentResolver(), Extensions.Settings.Global.MOBILE_DATA, 1) != 0;
    }

    boolean isRoamingMobileDataOn(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot == null) {
            return false;
        }
        int subscriptionId = simManagerFromSimSlot.getSubscriptionId();
        if (!TelephonyManagerWrapper.getInstance(this.mContext).isNetworkRoaming(subscriptionId)) {
            IMSLog.i(LOG_TAG, i, "is in Home Network");
            return true;
        }
        ImsConstants.SystemSettings.SettingsItem settingsItem = ImsConstants.SystemSettings.DATA_ROAMING;
        boolean z = settingsItem.getbySubId(this.mContext, ImsConstants.SystemSettings.DATA_ROAMING_UNKNOWN, subscriptionId) == ImsConstants.SystemSettings.ROAMING_DATA_ENABLED || settingsItem.get(this.mContext, ImsConstants.SystemSettings.DATA_ROAMING_UNKNOWN) == ImsConstants.SystemSettings.ROAMING_DATA_ENABLED;
        IMSLog.i(LOG_TAG, i, "Roaming && isDataRoamingOn = " + z);
        return z;
    }

    private boolean isWifiSwitchOn() {
        WifiManager wifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        return wifiManager != null && wifiManager.isWifiEnabled();
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void setAcsTryReason(int i, DiagnosisConstants.RCSA_ATRE rcsa_atre) {
        this.mConfigTrigger.setAcsTryReason(i, rcsa_atre);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public DiagnosisConstants.RCSA_ATRE getAcsTryReason(int i) {
        return this.mConfigTrigger.getAcsTryReason(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void resetAcsTryReason(int i) {
        this.mConfigTrigger.resetAcsTryReason(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void setTokenDeletedReason(int i, DiagnosisConstants.RCSA_TDRE rcsa_tdre) {
        this.mConfigTrigger.setTokenDeletedReason(i, rcsa_tdre);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public DiagnosisConstants.RCSA_TDRE getTokenDeletedReason(int i) {
        return this.mConfigTrigger.getTokenDeletedReason(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void resetTokenDeletedReason(int i) {
        this.mConfigTrigger.resetTokenDeletedReason(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void onNewRcsConfigurationNeeded(String str, String str2, Message message) throws NullPointerException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        Preconditions.checkNotNull(message);
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        IUserAgent userAgentByImsi = registrationManager != null ? registrationManager.getUserAgentByImsi(str2, str) : null;
        if (userAgentByImsi != null) {
            startAcs(userAgentByImsi.getPhoneId());
            message.arg1 = 1;
        } else {
            message.arg1 = 0;
        }
        message.sendToTarget();
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void startAcs(int i) {
        sendMessage(obtainMessage(15, i, -1));
    }

    void startAcsWithDelay(int i) {
        int i2;
        Integer rcsConfVersion = getRcsConfVersion(i);
        if (rcsConfVersion != null && rcsConfVersion.intValue() == 0 && (i2 = this.mRetryCount) > 0) {
            this.mRetryCount = i2 - 1;
            IMSLog.i(LOG_TAG, i, "SSL Handshake failed. delay 5 minutes");
            sendMessageDelayed(obtainMessage(15, i, -1), 300000L);
        }
    }

    void updateMsisdn(ImsRegistration imsRegistration) {
        if (SimUtil.getSimMno(imsRegistration.getPhoneId()).isKor() && TextUtils.isEmpty(TelephonyManagerWrapper.getInstance(this.mContext).getMsisdn(imsRegistration.getSubscriptionId())) && imsRegistration.hasVolteService() && !imsRegistration.getImsProfile().hasEmergencySupport() && imsRegistration.getImsProfile().getCmcType() == 0) {
            IMSLog.i(LOG_TAG, imsRegistration.getPhoneId(), "MSISDN is null, SP needs to be set to PAU");
            setMsisdnFromPau(imsRegistration);
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void onRegistrationStatusChanged(boolean z, int i, ImsRegistration imsRegistration) {
        int phoneId = imsRegistration.getPhoneId();
        if (z) {
            updateMsisdn(imsRegistration);
        }
        ImsProfile imsProfile = imsRegistration.getImsProfile();
        String str = LOG_TAG;
        IMSLog.i(str, phoneId, "onRegistrationStatusChanged: [" + imsProfile.getName() + "] registered[" + z + "], response [" + i + "], 403Forbidden Count [" + this.m403ForbiddenCounter + "]");
        StringBuilder sb = new StringBuilder();
        sb.append(phoneId);
        sb.append(",EC:");
        sb.append(i);
        sb.append(",CNT:");
        sb.append(this.m403ForbiddenCounter);
        IMSLog.c(LogClass.CM_REGI_ERROR, sb.toString());
        Mno fromName = Mno.fromName(imsProfile.getMnoName());
        if (!z) {
            if (ImsConstants.RCS_AS.JIBE.equals(ConfigUtil.getAcsServerType(phoneId)) && ConfigUtil.isRcsOnly(imsProfile)) {
                if (i == SipErrorBase.FORBIDDEN.getCode()) {
                    int i2 = this.m403ForbiddenCounter + 1;
                    this.m403ForbiddenCounter = i2;
                    if (i2 >= 2) {
                        IMSLog.i(str, phoneId, "Two consecutive 403 errors. Permanently prohibited.");
                        this.m403ForbiddenCounter = 0;
                        return;
                    } else {
                        IMSLog.i(str, phoneId, "403 error. Restart ACS");
                        startAcs(phoneId);
                        return;
                    }
                }
                return;
            }
            if (ConfigUtil.isRcsEur(fromName) && i == SipErrorBase.UNAUTHORIZED.getCode()) {
                this.mWorkFlowController.deleteConfiguration(imsRegistration.getPhoneId(), DiagnosisConstants.RCSA_TDRE.SIPERROR_UNAUTHORIZED);
                return;
            }
            return;
        }
        if (fromName.isKor() && imsRegistration.hasVolteService()) {
            IMSLog.i(str, phoneId, "VoLTE regi. is done. It's time for RCS registration!");
            List<IRegisterTask> pendingRegistration = this.mRm.getPendingRegistration(phoneId);
            if (pendingRegistration != null) {
                Iterator<IRegisterTask> it = pendingRegistration.iterator();
                while (it.hasNext()) {
                    tryAutoconfiguration(it.next());
                }
            }
        }
        if (imsRegistration.hasRcsService()) {
            this.m403ForbiddenCounter = 0;
        }
    }

    public void dump() {
        String str = LOG_TAG;
        IMSLog.dump(str, "Dump of " + getClass().getSimpleName() + ":");
        IMSLog.increaseIndent(str);
        IMSLog.dump(str, "Autoconfig History:");
        this.mEventLog.dump();
        if (!IMSLog.isShipBuild()) {
            if (this.mContext != null) {
                if (SimUtil.isMultiSimSupported()) {
                    IMSLog.dump(AUTOCONF_TAG, "Dump of configuration db for simslot0:", true);
                    StringBuilder sb = new StringBuilder();
                    Uri uri = ConfigConstants.CONTENT_URI;
                    sb.append(uri);
                    sb.append("*#simslot0");
                    dumpAutoConfDb(Uri.parse(sb.toString()));
                    IMSLog.dump(AUTOCONF_TAG, "Dump of configuration db for simslot1:", true);
                    dumpAutoConfDb(Uri.parse(uri + "*#simslot1"));
                } else {
                    IMSLog.dump(AUTOCONF_TAG, "Dump of configuration db:", true);
                    dumpAutoConfDb(Uri.parse(ConfigConstants.CONTENT_URI + "*"));
                }
            } else {
                IMSLog.dump(AUTOCONF_TAG, "Dump of configuration db: mContext is null!", true);
            }
        } else {
            IMSLog.dump(str, "Dump of ACS Encr : ");
            dumpEncrAcsDb(Uri.parse(ConfigConstants.CONTENT_URI + "*"));
        }
        IMSLog.decreaseIndent(str);
        this.mWorkFlowController.dump();
    }

    private void dumpEncrAcsDb(Uri uri) {
        try {
            Cursor query = this.mContext.getContentResolver().query(uri, null, null, null, null);
            try {
                StringBuilder sb = new StringBuilder();
                if (query != null) {
                    query.moveToFirst();
                    for (int i = 0; i < query.getColumnCount(); i++) {
                        if (Arrays.stream(query.getColumnName(i).split("/")).anyMatch(new Predicate() { // from class: com.sec.internal.ims.config.ConfigModule$$ExternalSyntheticLambda0
                            @Override // java.util.function.Predicate
                            public final boolean test(Object obj) {
                                boolean lambda$dumpEncrAcsDb$0;
                                lambda$dumpEncrAcsDb$0 = ConfigModule.this.lambda$dumpEncrAcsDb$0((String) obj);
                                return lambda$dumpEncrAcsDb$0;
                            }
                        })) {
                            sb.append(" ");
                            sb.append(query.getColumnName(i));
                            sb.append(": ");
                            sb.append(query.getString(i));
                            sb.append("\n");
                        }
                        if (query.getColumnCount() < 1) {
                            query.close();
                            return;
                        }
                    }
                }
                if (sb.length() > 0) {
                    IMSLog.dumpEncryptedACS(AUTOCONF_TAG, sb.toString());
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLiteException | SecurityException unused) {
            IMSLog.dump(AUTOCONF_TAG, "  Skip dump encr auto conf db", true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$dumpEncrAcsDb$0(String str) {
        return this.mAcsEncrNeededParams.contains(str);
    }

    private void dumpAutoConfDb(Uri uri) {
        try {
            Cursor query = this.mContext.getContentResolver().query(uri, null, null, null, null);
            try {
                if (query != null) {
                    query.moveToFirst();
                    for (int i = 0; i < query.getColumnCount(); i++) {
                        IMSLog.dump(AUTOCONF_TAG, "  " + query.getColumnName(i) + ": " + query.getString(i), true);
                    }
                    if (query.getColumnCount() < 1) {
                        IMSLog.dump(AUTOCONF_TAG, "  DB is empty", true);
                    }
                } else {
                    IMSLog.dump(AUTOCONF_TAG, "  DB is not available", true);
                }
                if (query != null) {
                    query.close();
                }
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (SQLiteException | SecurityException unused) {
            IMSLog.dump(AUTOCONF_TAG, "  Skip dump auto conf db", true);
        }
    }

    boolean checkMsisdnSkipCount(int i, boolean z) {
        Mno simMno = SimUtil.getSimMno(i);
        String acsServerType = ConfigUtil.getAcsServerType(i);
        if (z || simMno == Mno.SPRINT || ImsConstants.RCS_AS.JIBE.equals(acsServerType)) {
            IMSLog.i(LOG_TAG, i, "no need to check MsisdnSkipCount");
            return false;
        }
        int msisdnSkipCount = this.mWorkFlowController.getMsisdnSkipCount(i);
        IMSLog.i(LOG_TAG, i, "MsisdnSkipCount : " + msisdnSkipCount + ", MobileNetwork : " + this.mMobileNetwork);
        return msisdnSkipCount == 3 && this.mMobileNetwork;
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void showMSIDSNDialog() {
        sendEmptyMessage(16);
    }

    public void notifyDefaultSmsChanged(int i) {
        List<IRegisterTask> pendingRegistration;
        IMSLog.i(LOG_TAG, i, "notifyDefaultSmsChanged:");
        if (this.mJibeRcsAutoConfig.onDefaultSmsPackageChanged(i) || (pendingRegistration = this.mRm.getPendingRegistration(i)) == null) {
            return;
        }
        processChatPolicyforSMSAppChange(checkChatPolicyforSMSAppChange(i), i, pendingRegistration);
    }

    private int checkChatPolicyforSMSAppChange(int i) {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        String acsServerType = ConfigUtil.getAcsServerType(i);
        setAcsTryReason(i, DiagnosisConstants.RCSA_ATRE.CHANGE_MSG_APP);
        int i2 = (simManagerFromSimSlot != null && simManagerFromSimSlot.isSimAvailable() && ImsConstants.RCS_AS.JIBE.equals(acsServerType) && ConfigUtil.isRcsEur(i) && (ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, i) == -1)) ? 0 : ImsRegistry.getInt(i, GlobalSettingsConstants.RCS.SUPPORT_CHAT_ON_DEFAULT_MMS_APP, 0);
        this.mEventLog.logAndAdd(i, "notifyDefaultSmsChanged - SupportChat Type : " + i2);
        return i2;
    }

    void processChatPolicyforSMSAppChange(int i, int i2, List<IRegisterTask> list) {
        boolean z = DmConfigHelper.getImsSwitchValue(this.mContext, DeviceConfigManager.DEFAULTMSGAPPINUSE, i2) == 1;
        IMSLog.c(LogClass.CM_DEFAULT_SMS_CHANGED, i2 + "," + z + "," + i);
        if (i == 1) {
            this.mRm.cancelUpdateSipDelegateRegistration(i2);
            this.mRm.updateChatService(i2, 2);
            return;
        }
        if (i == 2) {
            for (IRegisterTask iRegisterTask : list) {
                if (iRegisterTask.isRcsOnly()) {
                    if (z) {
                        IMSLog.i(LOG_TAG, i2, "notifyDefaultSmsChanged - setStateforACS");
                        getAcsConfig(i2).resetAcsSettings();
                        triggerAutoConfig(false, i2, list);
                    } else if (iRegisterTask.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED)) {
                        iRegisterTask.setDeregiReason(36);
                        this.mRm.deregister(iRegisterTask, false, true, "MsgApp is changed");
                    }
                }
            }
            return;
        }
        if (i != 3) {
            if (i == 4) {
                removeMessages(15);
                startAcsWithDelay(i2);
                return;
            } else {
                if (i != 5) {
                    return;
                }
                Iterator<IRegisterTask> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().getProfile().getNeedAutoconfig()) {
                        getAcsConfig(i2).resetAcsSettings();
                        triggerAutoConfig(false, i2, list);
                    }
                }
                return;
            }
        }
        if (this.mCallState != 0) {
            this.mPendingDeregi = true;
            IMSLog.i(LOG_TAG, i2, "Pending deregistration on active call when MsgApp is changed");
            return;
        }
        for (IRegisterTask iRegisterTask2 : list) {
            if (iRegisterTask2.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED) && iRegisterTask2.getPdnType() != 15) {
                this.mRm.cancelUpdateSipDelegateRegistration(i2);
                iRegisterTask2.setDeregiReason(36);
                this.mRm.deregister(iRegisterTask2, false, true, "MsgApp is changed");
            } else if (z) {
                this.mRm.requestTryRegister(iRegisterTask2.getPhoneId());
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void setDualSimRcsAutoConfig(boolean z) {
        this.mConfigTrigger.setDualSimRcsAutoConfig(z);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public boolean tryAutoconfiguration(IRegisterTask iRegisterTask) {
        return this.mConfigTrigger.tryAutoconfiguration(iRegisterTask);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public boolean isRcsEnabled(int i) {
        return DmConfigHelper.isImsSwitchEnabled(this.mContext, DeviceConfigManager.RCS, i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public boolean isConfigModuleBootUp() {
        return this.mIsConfigModuleBootUp;
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public boolean isMessagingReady() {
        return this.mIsMessagingReady;
    }

    public void onDefaultSmsPackageChanged() {
        Log.i(LOG_TAG, "onDefaultSmsPackageChanged");
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            sendMessage(obtainMessage(18, i, 0, null));
        }
    }

    class IntentReceiver extends BroadcastReceiver {
        private static final String ACTION_AIRPLANE_MODE = "android.intent.action.AIRPLANE_MODE";
        private static final String ACTION_BOOT_COMPLETED = "android.intent.action.BOOT_COMPLETED";
        private static final String IMS_SERVICE_UP_RESPONSE = "com.samsung.android.messaging.IMS_SERVICE_UP_RESPONSE";
        private IntentFilter mIntentFilter;

        public IntentReceiver() {
            IntentFilter intentFilter = new IntentFilter();
            this.mIntentFilter = intentFilter;
            intentFilter.addAction(ACTION_BOOT_COMPLETED);
            this.mIntentFilter.addAction(IMS_SERVICE_UP_RESPONSE);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || intent.getAction() == null) {
                return;
            }
            if (intent.getAction().equals(ACTION_BOOT_COMPLETED)) {
                ConfigModule.this.sendEmptyMessage(23);
                return;
            }
            if (intent.getAction().equals(IMS_SERVICE_UP_RESPONSE)) {
                IMSLog.i(ConfigModule.LOG_TAG, "onReceive: IMS_SERVICE_UP_RESPONSE");
                ConfigModule.this.mIsMessagingReady = true;
                return;
            }
            if (intent.getAction().equals("android.intent.action.AIRPLANE_MODE")) {
                for (ISimManager iSimManager : SimManagerFactory.getAllSimManagers()) {
                    if (iSimManager != null && iSimManager.getSimMno() == Mno.KT) {
                        if (ImsConstants.SystemSettings.AIRPLANE_MODE.get(ConfigModule.this.mContext, 0) == ImsConstants.SystemSettings.AIRPLANE_MODE_ON) {
                            if (ConfigModule.this.mWorkFlowController.getCurrentRcsConfigVersion(iSimManager.getSimSlotIndex()) > 0) {
                                ConfigModule.this.mNeedRetryOverWifi = true;
                            }
                        } else {
                            ConfigModule.this.mNeedRetryOverWifi = false;
                        }
                    }
                }
            }
        }

        public void addActionAirplaneMode() {
            this.mIntentFilter.addAction("android.intent.action.AIRPLANE_MODE");
        }

        public IntentFilter getIntentFilter() {
            return this.mIntentFilter;
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void setMsisdnFromPau(ImsRegistration imsRegistration) {
        String ownNumber = imsRegistration.getOwnNumber();
        if (ownNumber != null) {
            if (ownNumber.startsWith("0")) {
                ownNumber = "+82" + ownNumber.substring(1);
            }
            String str = "IMSI_" + SimManagerFactory.getImsiFromPhoneId(imsRegistration.getPhoneId());
            if (!ownNumber.equals(ImsSharedPrefHelper.getString(imsRegistration.getPhoneId(), this.mContext, IConfigModule.MSISDN_FROM_PAU, str, ""))) {
                this.mEventLog.logAndAdd(imsRegistration.getPhoneId(), "setMsisdnFromPau: " + IMSLog.checker(ownNumber));
                IMSLog.c(LogClass.CM_SET_SP_PAU, imsRegistration.getPhoneId() + "SET_SP_PAU");
                ImsSharedPrefHelper.save(imsRegistration.getPhoneId(), this.mContext, IConfigModule.MSISDN_FROM_PAU, str, ownNumber);
            }
            this.mRm.requestTryRegister(imsRegistration.getPhoneId());
        }
    }

    private void resetMsisdnFromPau(int i) {
        IMSLog.c(LogClass.CM_RES_SP_PAU, i + "RES_SP_PAU");
        this.mEventLog.logAndAdd(i, "reset to MSISDN_FROM_PAU");
        ImsSharedPrefHelper.save(i, this.mContext, IConfigModule.MSISDN_FROM_PAU, "IMSI_" + SimManagerFactory.getImsiFromPhoneId(i), "");
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void resetReadyStateCommand(int i) {
        this.mConfigTrigger.setReadyStartCmdList(i, true);
    }

    void createNetworkListener(final int i, final int i2) {
        IMSLog.i(LOG_TAG, i, "createNetworkListener: " + i2);
        this.mNetworkListeners.get(i).put(Integer.valueOf(i2), new ConnectivityManager.NetworkCallback() { // from class: com.sec.internal.ims.config.ConfigModule.1
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                IMSLog.i(ConfigModule.LOG_TAG, i, "onAvailable : " + network + " networkType: " + i2);
                if (RcsUtils.DualRcs.isDualRcsReg() && i2 == 1) {
                    for (int i3 = 0; i3 < SimUtil.getPhoneCount(); i3++) {
                        ConfigModule configModule = ConfigModule.this;
                        configModule.sendMessage(configModule.obtainMessage(24, i3, i2, network));
                    }
                    return;
                }
                ConfigModule configModule2 = ConfigModule.this;
                configModule2.sendMessage(configModule2.obtainMessage(24, i, i2, network));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                IMSLog.i(ConfigModule.LOG_TAG, i, "onLost : " + network + " networkType: " + i2);
                if (RcsUtils.DualRcs.isDualRcsReg() && i2 == 1) {
                    for (int i3 = 0; i3 < SimUtil.getPhoneCount(); i3++) {
                        ConfigModule configModule = ConfigModule.this;
                        configModule.sendMessage(configModule.obtainMessage(25, i3, i2));
                    }
                    return;
                }
                ConfigModule configModule2 = ConfigModule.this;
                configModule2.sendMessage(configModule2.obtainMessage(25, i, i2));
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    void registerNetworkCallback(int i) {
        boolean z;
        IMSLog.i(LOG_TAG, i, "registerNetworkCallback");
        String networkType = ConfigUtil.getNetworkType(i);
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        int subId = SimUtil.getSubId(i);
        if (subId == -1) {
            return;
        }
        for (String str : networkType.split(",")) {
            int i2 = 1;
            if (TextUtils.isEmpty(str)) {
                registerNetworkCallbackForNetwork(i, 1);
            } else {
                NetworkRequest.Builder builder = new NetworkRequest.Builder();
                str.hashCode();
                switch (str.hashCode()) {
                    case 104399:
                        if (str.equals(DeviceConfigManager.IMS)) {
                            z = false;
                            break;
                        }
                        z = -1;
                        break;
                    case 3649301:
                        if (str.equals("wifi")) {
                            z = true;
                            break;
                        }
                        z = -1;
                        break;
                    case 570410817:
                        if (str.equals("internet")) {
                            z = 2;
                            break;
                        }
                        z = -1;
                        break;
                    default:
                        z = -1;
                        break;
                }
                switch (z) {
                    case false:
                        builder.addTransportType(0).addCapability(4).setNetworkSpecifier(Integer.toString(subId));
                        i2 = 2;
                        break;
                    case true:
                        builder.addTransportType(1).addCapability(12);
                        i2 = 3;
                        break;
                    case true:
                        builder.addTransportType(0).addCapability(12).setNetworkSpecifier(Integer.toString(subId));
                        break;
                    default:
                        i2 = 0;
                        break;
                }
                if (!this.mNetworkListeners.get(i).containsKey(Integer.valueOf(i2))) {
                    createNetworkListener(i, i2);
                    connectivityManager.registerNetworkCallback(builder.build(), this.mNetworkListeners.get(i).get(Integer.valueOf(i2)));
                }
            }
        }
    }

    void registerNetworkCallbackForNetwork(int i, int i2) {
        if (SimUtil.getPhoneCount() > 1) {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
            int i3 = i != 0 ? 0 : 1;
            if (SimUtil.getSubId(i3) == -1) {
                return;
            }
            int subId = SimUtil.getSubId(i);
            if (!RcsUtils.DualRcs.dualRcsPolicyCase(this.mContext, i3) || this.mNetworkListeners.get(i).containsKey(Integer.valueOf(i2))) {
                return;
            }
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            builder.addTransportType(0).addCapability(12).setNetworkSpecifier(Integer.toString(subId));
            createNetworkListener(i, i2);
            connectivityManager.registerNetworkCallback(builder.build(), this.mNetworkListeners.get(i).get(Integer.valueOf(i2)));
        }
    }

    void deregisterNetworkCallback(int i) {
        IMSLog.i(LOG_TAG, i, "deregisterNetworkCallback");
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        Iterator<ConnectivityManager.NetworkCallback> it = this.mNetworkListeners.get(i).values().iterator();
        while (it.hasNext()) {
            connectivityManager.unregisterNetworkCallback(it.next());
        }
        this.mNetworkListeners.get(i).clear();
        this.mNetworkLists.get(i).clear();
    }

    void processConnectionChange(int i, boolean z) {
        if (getAvailableNetwork(i) == null) {
            IMSLog.i(LOG_TAG, i, "No Available network");
            return;
        }
        if (this.mConfigTrigger.getReadyStartCmdListIndexOfKey(i) < 0) {
            return;
        }
        if (this.mConfigTrigger.getReadyStartCmdList(i) || checkMsisdnSkipCount(i, z) || this.mNeedRetryOverNetwork) {
            String str = LOG_TAG;
            IMSLog.i(str, i, "network is ready for phoneId: " + i);
            this.mNeedRetryOverNetwork = false;
            IMSLog.i(str, i, "resend HANDLE_AUTO_CONFIG_START");
            sendMessage(obtainMessage(2, i, 0, null));
        }
    }

    private void onADSChanged(int i) {
        IMSLog.i(LOG_TAG, i, "onADSChanged");
        for (int i2 = 0; i2 < SimUtil.getPhoneCount(); i2++) {
            IWorkflow workflow = this.mWorkFlowController.getWorkflow(i2);
            if (workflow != null) {
                workflow.onADSChanged();
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public Pair<Network, Integer> getAvailableNetwork(int i) {
        this.mMobileNetwork = false;
        this.mWifiNetwork = false;
        this.mReadyNetwork.put(i, Boolean.TRUE);
        if (this.mNetworkLists.get(i).containsKey(1)) {
            this.mMobileNetwork = true;
            return Pair.create(this.mNetworkLists.get(i).get(1), 1);
        }
        if (this.mNetworkLists.get(i).containsKey(2)) {
            this.mMobileNetwork = true;
            return Pair.create(this.mNetworkLists.get(i).get(2), 2);
        }
        if (this.mNetworkLists.get(i).containsKey(3)) {
            this.mWifiNetwork = true;
            return Pair.create(this.mNetworkLists.get(i).get(3), 3);
        }
        this.mReadyNetwork.put(i, Boolean.FALSE);
        return null;
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public Network getAvailableNetworkForNetworkType(int i, int i2) {
        HashMap<Integer, Network> hashMap = this.mNetworkLists.get(i);
        if (hashMap == null || !hashMap.containsKey(Integer.valueOf(i2))) {
            return null;
        }
        return hashMap.get(Integer.valueOf(i2));
    }

    boolean isGcEnabledChange(int i) {
        boolean z = ImsSharedPrefHelper.getBoolean(i, this.mContext, "imsswitch", "isGcEnabledChange", false);
        Log.i(LOG_TAG, "isGcEnabledChange: " + z);
        return z;
    }

    private void setIsGcEnabledChange(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "setIsGcEnabledChange: " + z);
        ImsSharedPrefHelper.save(i, this.mContext, "imsswitch", "isGcEnabledChange", false);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public IStorageAdapter getStorage(int i) {
        return this.mWorkFlowController.getStorage(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void setRcsClientConfiguration(int i, String str, String str2, String str3, String str4, String str5) {
        this.mConfigTrigger.setRcsClientConfiguration(i, this.mWorkFlowController.getWorkflow(i), str, str2, str3, str4, str5);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public void triggerAutoConfiguration(int i) {
        this.mConfigTrigger.triggerAutoConfiguration(i);
    }

    @Override // com.sec.internal.interfaces.ims.config.IConfigModule
    public boolean clearWorkflowByDmaChange(int i) {
        if (!this.mJibeRcsAutoConfig.needClearWorkflowByDmaChange(i)) {
            IMSLog.i(LOG_TAG, i, "clearWorkflowByDmaChange: Do nothing");
            return false;
        }
        this.mEventLog.logAndAdd(i, "clearWorkflowByDmaChange: Clear workflow");
        removeMessages(28, Integer.valueOf(i));
        sendMessage(obtainMessage(28, Integer.valueOf(i)));
        return true;
    }
}
