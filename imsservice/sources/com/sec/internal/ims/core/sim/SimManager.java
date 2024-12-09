package com.sec.internal.ims.core.sim;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SemSystemProperties;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.sec.ims.extensions.ContextExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.core.SimConstants;
import com.sec.internal.constants.ims.os.IccCardConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.Registrant;
import com.sec.internal.helper.RegistrantList;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.header.WwwAuthenticateHeader;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.IntentUtil;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.settings.ImsAutoUpdate;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.ims.util.CscParser;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.ISimEventListener;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import com.sec.internal.log.LogRedactor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class SimManager extends Handler implements ISimManager {
    protected static final int EVENT_IMSSWITCH_UPDATED = 7;
    protected static final int EVENT_LOAD_MNOMAP = 8;
    protected static final int EVENT_SIM_REFRESH = 3;
    protected static final int EVENT_SIM_STATE_CHANGED = 1;
    protected static final int EVENT_SOFTPHONE_AUTH_FAILED = 5;
    protected static final int EVENT_UICC_CHANGED = 2;
    private static final String LOG_TAG = "SimManager";
    private static final String SMF_MNONAME_PROP = "sys.smf.mnoname";
    protected static final String SOFTPHONE_OPERATOR_CODE = "310999";
    private static final String sInteractAcrossUsersFullPermission = "android.permission.INTERACT_ACROSS_USERS_FULL";
    String OMCNW_CODE;
    String OMC_CODE;
    final BroadcastReceiver mAkaEventReceiver;
    Context mContext;
    Mno mDevMno;
    private final List<ISimEventListener> mEventListeners;
    SimpleEventLog mEventLog;
    final BroadcastReceiver mGtsAppInstallReceiver;
    private String mHighestPriorityEhplmn;
    protected ContentObserver mImsServiceSwitchObserver;
    private String mImsi;
    String mImsiFromImpi;
    boolean mIsCrashSimEvent;
    protected boolean mIsESim;
    private boolean mIsGtsAppInstalled;
    private boolean mIsOutBoundSIM;
    private boolean mIsRefresh;
    protected boolean mIsimLoaded;
    boolean mLabSimCard;
    private String mLastImsi;
    MnoInfoStorage mMnoInfoStorage;
    MnoMap mMnoMap;
    Mno mNetMno;
    String mOperatorFromImpi;
    SimDataAdaptor mSimDataAdaptor;
    BroadcastReceiver mSimIntentReceiver;
    private String mSimMnoName;
    protected final RegistrantList mSimReadyRegistrants;
    protected final RegistrantList mSimRefreshRegistrants;
    protected final RegistrantList mSimRemovedRegistrants;
    private int mSimSlot;
    SimConstants.SIM_STATE mSimState;
    protected RegistrantList mSimStateChangedRegistrants;
    SimConstants.SIM_STATE mSimStatePrev;
    SimConstants.SoftphoneAccount mSoftphoneAccount;
    int mSubscriptionId;
    ITelephonyManager mTelephonyManager;
    protected final RegistrantList mUiccChangedRegistrants;
    protected boolean notifySimReadyAlreadyDone;
    static final Uri URI_UPDATE_MNO = Uri.parse("content://com.sec.ims.settings/mno");
    static final Uri URI_UPDATE_GLOBAL = Uri.parse("content://com.sec.ims.settings/global");

    public SimManager(Looper looper, Context context, int i, SubscriptionInfo subscriptionInfo, ITelephonyManager iTelephonyManager) {
        super(looper);
        this.mSubscriptionId = -1;
        this.mSimSlot = 0;
        this.mSimDataAdaptor = null;
        this.mLastImsi = null;
        this.mIsRefresh = false;
        this.mIsCrashSimEvent = false;
        this.mHighestPriorityEhplmn = "";
        this.notifySimReadyAlreadyDone = false;
        this.mImsi = "";
        Mno mno = Mno.DEFAULT;
        this.mDevMno = mno;
        this.mNetMno = mno;
        this.mSimMnoName = "";
        this.mLabSimCard = false;
        this.mMnoMap = null;
        SimConstants.SIM_STATE sim_state = SimConstants.SIM_STATE.UNKNOWN;
        this.mSimStatePrev = sim_state;
        this.mSimState = sim_state;
        this.mIsimLoaded = false;
        this.mIsOutBoundSIM = false;
        this.mIsGtsAppInstalled = false;
        this.mSimReadyRegistrants = new RegistrantList();
        this.mUiccChangedRegistrants = new RegistrantList();
        this.mSimRefreshRegistrants = new RegistrantList();
        this.mSimRemovedRegistrants = new RegistrantList();
        this.mSimStateChangedRegistrants = new RegistrantList();
        this.mImsServiceSwitchObserver = null;
        this.mEventListeners = new ArrayList();
        this.mSimIntentReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.sim.SimManager.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                int intExtra = intent.getIntExtra(PhoneConstants.SUBSCRIPTION_KEY, -1);
                int intExtra2 = intent.getIntExtra(PhoneConstants.PHONE_KEY, 0);
                IMSLog.i(SimManager.LOG_TAG, SimManager.this.mSimSlot, "SimIntentReceiver: received action " + action + " subId=" + intExtra + " mSubId=" + SimManager.this.mSubscriptionId);
                if (intExtra2 != SimManager.this.mSimSlot) {
                    IMSLog.i(SimManager.LOG_TAG, SimManager.this.mSimSlot, "phoneId mismatch : " + action + ", " + intExtra2 + ", " + SimManager.this.mSimSlot);
                    return;
                }
                SimManager simManager = SimManager.this;
                if (simManager.mSubscriptionId < 0 && intExtra != Integer.MAX_VALUE) {
                    simManager.mSubscriptionId = intExtra;
                }
                if ("android.intent.action.SIM_STATE_CHANGED".equals(action) || ImsConstants.Intents.ACTION_SIM_REFRESH_FAIL_RECOVERY.equals(action)) {
                    SimManager simManager2 = SimManager.this;
                    simManager2.sendMessage(simManager2.obtainMessage(1, intent.getStringExtra("ss")));
                    return;
                }
                if (ImsConstants.Intents.ACTION_SIM_ISIM_LOADED.equals(action) && SimManagerUtils.isISimAppPresent(SimManager.this.mSimSlot, SimManager.this.mTelephonyManager)) {
                    SimManager simManager3 = SimManager.this;
                    simManager3.sendMessage(simManager3.obtainMessage(1, IccCardConstants.INTENT_VALUE_ICC_ISIM_LOADED));
                } else if (ImsConstants.Intents.ACTION_SIM_REFRESH.equals(action) && !SimManager.this.hasVsim()) {
                    SimManager.this.sendEmptyMessage(3);
                } else if (ImsConstants.Intents.ACTION_SIM_ICCID_CHANGED.equals(action)) {
                    SimManager.this.sendEmptyMessage(2);
                }
            }
        };
        this.mGtsAppInstallReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.sim.SimManager.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if (TextUtils.equals(intent.getData().getSchemeSpecificPart(), "com.google.android.gts.telephony")) {
                    action.hashCode();
                    if (!action.equals("android.intent.action.PACKAGE_REMOVED")) {
                        if (action.equals("android.intent.action.PACKAGE_ADDED") && !SimManager.this.getGtsAppInstalled()) {
                            Log.w(SimManager.LOG_TAG, "ADD GTS package, SendMessage SIM LOAD again");
                            SimManager.this.setGtsAppInstalled(true);
                            SimManager simManager = SimManager.this;
                            simManager.mSimState = SimConstants.SIM_STATE.UNKNOWN;
                            simManager.sendMessage(simManager.obtainMessage(1, IccCardConstants.INTENT_VALUE_ICC_LOADED));
                            return;
                        }
                        return;
                    }
                    if (SimManager.this.getGtsAppInstalled()) {
                        Log.w(SimManager.LOG_TAG, "Remove GTS package, SendMessage SIM LOAD again");
                        SimManager.this.setGtsAppInstalled(false);
                        SimManager simManager2 = SimManager.this;
                        simManager2.mSimState = SimConstants.SIM_STATE.UNKNOWN;
                        simManager2.sendMessage(simManager2.obtainMessage(1, IccCardConstants.INTENT_VALUE_ICC_LOADED));
                    }
                }
            }
        };
        this.mAkaEventReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.sim.SimManager.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                IMSLog.i(SimManager.LOG_TAG, SimManager.this.mSimSlot, "Intent received : " + action);
                IMSLog.i(SimManager.LOG_TAG, SimManager.this.mSimSlot, "id : " + intent.getIntExtra("id", -1));
                SimManager simManager = SimManager.this;
                if (simManager.mSoftphoneAccount == null) {
                    IMSLog.e(SimManager.LOG_TAG, simManager.mSimSlot, "mSoftphoneAccount is null, so skip handling");
                    return;
                }
                if ("com.sec.imsservice.AKA_CHALLENGE_COMPLETE".equals(action)) {
                    int intExtra = intent.getIntExtra("id", -1);
                    SimManager simManager2 = SimManager.this;
                    if (intExtra == simManager2.mSoftphoneAccount.mId) {
                        simManager2.onSoftphoneAuthDone(intent.getStringExtra("result"));
                        return;
                    }
                }
                if ("com.sec.imsservice.AKA_CHALLENGE_FAILED".equals(action)) {
                    SimManager.this.onSoftphoneAuthDone("");
                }
            }
        };
        this.mEventLog = new SimpleEventLog(context, i, LOG_TAG, 300);
        this.mContext = context;
        this.mSimSlot = i;
        this.mTelephonyManager = iTelephonyManager;
        this.mMnoInfoStorage = new MnoInfoStorage();
        IMSLog.i(LOG_TAG, this.mSimSlot, "subId: " + this.mSubscriptionId + ", info: " + subscriptionInfo);
        if (subscriptionInfo != null) {
            this.mSubscriptionId = subscriptionInfo.getSubscriptionId();
            setSubscriptionInfo(subscriptionInfo);
        }
        String str = SemSystemProperties.get(OmcCode.OMC_CODE_PROPERTY, "unknown");
        this.OMC_CODE = str;
        if (!"unknown".equals(str)) {
            this.mDevMno = Mno.fromSalesCode(this.OMC_CODE);
        }
        String nWCode = OmcCode.getNWCode(this.mSimSlot);
        this.OMCNW_CODE = nWCode;
        this.mNetMno = Mno.fromSalesCode(nWCode);
        this.mEventLog.logAndAdd(this.mSimSlot, "OMC_CODE(create): " + this.OMC_CODE + ", mDevMno: " + this.mDevMno.toString());
        this.mEventLog.logAndAdd(this.mSimSlot, "OMCNW_CODE(create): " + this.OMCNW_CODE + ", mNetMno: " + this.mNetMno.toString());
        setSimMno(this.mNetMno, false);
        this.mImsServiceSwitchObserver = new ImsServiceSwitchObserver(this);
        this.mContext.getContentResolver().registerContentObserver(ImsConstants.SystemSettings.IMS_SWITCHES.getUri(), false, this.mImsServiceSwitchObserver);
    }

    class ImsServiceSwitchObserver extends ContentObserver {
        public ImsServiceSwitchObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            IMSLog.i(SimManager.LOG_TAG, SimManager.this.mSimSlot, "ImsServiceSwitch updated.");
            if (uri != null) {
                int simSlotFromUri = UriUtil.getSimSlotFromUri(uri);
                if (simSlotFromUri != SimManager.this.mSimSlot) {
                    IMSLog.i(SimManager.LOG_TAG, SimManager.this.mSimSlot, "phoneId mismatch, No need to update");
                } else {
                    SimManager simManager = SimManager.this;
                    simManager.sendMessage(simManager.obtainMessage(7, Integer.valueOf(simSlotFromUri)));
                }
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void onImsSwitchUpdated(int i) {
        final SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(i, this.mContext, "imsswitch", 0, false);
        final ContentValues contentValues = new ContentValues();
        Arrays.asList(ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE).forEach(new Consumer() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SimManager.lambda$onImsSwitchUpdated$0(contentValues, sharedPref, (String) obj);
            }
        });
        this.mMnoInfoStorage.update(contentValues);
        this.mEventLog.logAndAdd(this.mSimSlot, this.mSimState + ", " + this.mSimMnoName + ", onImsSwitchUpdated : " + contentValues);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$onImsSwitchUpdated$0(ContentValues contentValues, SharedPreferences sharedPreferences, String str) {
        contentValues.put(str, Boolean.valueOf(sharedPreferences.getBoolean(str, false)));
    }

    void updateGlobalSetting(int i) {
        int i2 = this.mMnoInfoStorage.getInt(ISimManager.KEY_IMSSWITCH_TYPE, 0);
        if (i2 == 0 || i2 == 2) {
            return;
        }
        boolean z = this.mMnoInfoStorage.getBoolean(ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, false);
        boolean z2 = this.mMnoInfoStorage.getBoolean(ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE, false);
        boolean z3 = this.mMnoInfoStorage.getBoolean(ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, false);
        if (z && (z2 || z3)) {
            return;
        }
        IMSLog.i(LOG_TAG, i, "updateGlobalSetting: enableIms or enableServiceVolte, enableServiceVowifi : disable");
        ContentValues contentValues = new ContentValues();
        if (OmcCode.isJPNOmcCode()) {
            this.mEventLog.logAndAdd(this.mSimSlot, "updateGlobalSetting: set voice_domain_eutran ps preferred for Data only devices");
            contentValues.put(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, (Integer) 3);
        } else if (getDevMno().isAus()) {
            contentValues.put(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, (Integer) 3);
            contentValues.put(GlobalSettingsConstants.Call.EMERGENCY_CALL_DOMAIN, "PS");
        } else {
            contentValues.put(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, (Integer) 1);
            contentValues.put(GlobalSettingsConstants.Call.EMERGENCY_CALL_DOMAIN, "CS");
        }
        contentValues.put(GlobalSettingsConstants.SS.DOMAIN, "CS_ALWAYS");
        contentValues.put(GlobalSettingsConstants.Call.USSD_DOMAIN, "CS");
        this.mContext.getContentResolver().update(URI_UPDATE_GLOBAL.buildUpon().fragment("simslot" + i).build(), contentValues, null, null);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISequentialInitializable
    public void initSequentially() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SIM_STATE_CHANGED");
        intentFilter.setPriority(1000);
        this.mContext.registerReceiver(this.mSimIntentReceiver, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction(ImsConstants.Intents.ACTION_SIM_ICCID_CHANGED);
        intentFilter2.addAction(ImsConstants.Intents.ACTION_SIM_REFRESH);
        intentFilter2.addAction(ImsConstants.Intents.ACTION_SIM_ISIM_LOADED);
        intentFilter2.addAction(ImsConstants.Intents.ACTION_SIM_REFRESH_FAIL_RECOVERY);
        this.mContext.registerReceiver(this.mSimIntentReceiver, intentFilter2);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter3.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter3.addDataScheme("package");
        this.mContext.registerReceiver(this.mGtsAppInstallReceiver, intentFilter3);
        if (this.mContext.checkSelfPermission(sInteractAcrossUsersFullPermission) == 0) {
            IntentFilter intentFilter4 = new IntentFilter();
            intentFilter4.addAction("android.intent.action.USER_BACKGROUND");
            intentFilter4.addAction("android.intent.action.USER_FOREGROUND");
            IntentFilter intentFilter5 = new IntentFilter();
            intentFilter5.addAction("com.sec.imsservice.AKA_CHALLENGE_COMPLETE");
            intentFilter5.addAction("com.sec.imsservice.AKA_CHALLENGE_FAILED");
            ContextExt.registerReceiverAsUser(this.mContext.getApplicationContext(), this.mAkaEventReceiver, ContextExt.ALL, intentFilter5, (String) null, (Handler) null);
        }
        IMSLog.e(LOG_TAG, this.mSimSlot, "init mno map");
        sendEmptyMessage(8);
    }

    static class AuthRequest {
        Message response;

        AuthRequest() {
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void registerForSimReady(Handler handler, int i, Object obj) {
        IMSLog.i(LOG_TAG, this.mSimSlot, "Register for sim ready");
        Registrant registrant = new Registrant(handler, i, obj);
        this.mSimReadyRegistrants.add(registrant);
        if (this.notifySimReadyAlreadyDone) {
            if (this.mSimState != SimConstants.SIM_STATE.UNKNOWN || SimManagerUtils.needImsUpOnUnknownState(this.mContext, this.mSimSlot)) {
                registrant.notifyResult(Integer.valueOf(this.mSimSlot));
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void deregisterForSimReady(Handler handler) {
        this.mSimReadyRegistrants.remove(handler);
    }

    void notifySimReady(String str) {
        this.mEventLog.logAndAdd(this.mSimSlot, "notifySimReady: state [" + this.mSimState + "]");
        StringBuilder sb = new StringBuilder();
        sb.append(this.mSimSlot);
        sb.append(",NOTI SIM EVT");
        IMSLog.c(LogClass.SIM_NOTIFY_EVENT, sb.toString());
        this.notifySimReadyAlreadyDone = true;
        Intent intent = new Intent(ImsConstants.Intents.ACTION_IMS_ON_SIMLOADED);
        intent.addFlags(32);
        IMSLog.i(LOG_TAG, this.mSimSlot, "send ACTION_IMS_ON_SIMLOADED");
        IntentUtil.sendBroadcast(this.mContext, intent);
        SimConstants.SIM_STATE sim_state = this.mSimState;
        SimConstants.SIM_STATE sim_state2 = SimConstants.SIM_STATE.LOADED;
        boolean z = sim_state != sim_state2;
        if (z || this.mSimStatePrev != sim_state2) {
            this.mSimReadyRegistrants.notifyResult(Integer.valueOf(this.mSimSlot));
        } else {
            SimDataAdaptor simDataAdaptor = this.mSimDataAdaptor;
            if (simDataAdaptor != null && simDataAdaptor.needHandleLoadedAgain(str)) {
                IMSLog.i(LOG_TAG, this.mSimSlot, "SIM READY by needHandleLoadedAgain: " + str);
                this.mSimReadyRegistrants.notifyResult(Integer.valueOf(this.mSimSlot));
            }
        }
        synchronized (this.mEventListeners) {
            Iterator<ISimEventListener> it = this.mEventListeners.iterator();
            while (it.hasNext()) {
                it.next().onReady(this.mSimSlot, z);
            }
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void registerForUiccChanged(Handler handler, int i, Object obj) {
        this.mUiccChangedRegistrants.add(new Registrant(handler, i, obj));
    }

    void notifyUiccChanged() {
        this.mUiccChangedRegistrants.notifyRegistrants();
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void registerForSimRefresh(Handler handler, int i, Object obj) {
        this.mSimRefreshRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void deregisterForSimRefresh(Handler handler) {
        this.mSimRefreshRegistrants.remove(handler);
    }

    private void notifySimRefresh() {
        this.mSimRefreshRegistrants.notifyResult(Integer.valueOf(this.mSimSlot));
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void registerForSimRemoved(Handler handler, int i, Object obj) {
        this.mSimRemovedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void deregisterForSimRemoved(Handler handler) {
        this.mSimRemovedRegistrants.remove(handler);
    }

    private void notifySimRemoved() {
        this.mSimRemovedRegistrants.notifyResult(Integer.valueOf(this.mSimSlot));
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void registerForSimStateChanged(Handler handler, int i, Object obj) {
        this.mSimStateChangedRegistrants.add(new Registrant(handler, i, obj));
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void deregisterForSimStateChanged(Handler handler) {
        this.mSimStateChangedRegistrants.remove(handler);
    }

    void notifySimStateChanged() {
        this.mSimStateChangedRegistrants.notifyResult(Integer.valueOf(this.mSimSlot));
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean isSimAvailable() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "mSimState:" + this.mSimState + ", mIsimLoaded:" + this.mIsimLoaded + ", hasIsim():" + hasIsim());
        return this.mSimState == SimConstants.SIM_STATE.LOADED && (this.mIsimLoaded || !hasIsim());
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean hasNoSim() {
        return this.mSimState != SimConstants.SIM_STATE.LOADED;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void setIsimLoaded() {
        onSimStateChange(IccCardConstants.INTENT_VALUE_ICC_ISIM_LOADED);
    }

    boolean isISimAppLoaded() {
        int i = this.mSimSlot;
        StringBuilder sb = new StringBuilder();
        sb.append("isISimAppLoaded : simstate ");
        sb.append(getSimState());
        sb.append(", subscriptionId ");
        sb.append(getSubscriptionId());
        sb.append(", isISimAppPresent ");
        sb.append(SimManagerUtils.isISimAppPresent(this.mSimSlot, this.mTelephonyManager));
        sb.append(", getboolean ");
        sb.append(!ImsRegistry.getBoolean(this.mSimSlot, GlobalSettingsConstants.Registration.BLOCK_REGI_ON_INVALID_ISIM, true));
        sb.append(", isISimDataValid() ");
        sb.append(isISimDataValid());
        IMSLog.d(LOG_TAG, i, sb.toString());
        if (getSimState() == 5 && getSubscriptionId() >= 0 && SimManagerUtils.isISimAppPresent(this.mSimSlot, this.mTelephonyManager)) {
            return !ImsRegistry.getBoolean(this.mSimSlot, GlobalSettingsConstants.Registration.BLOCK_REGI_ON_INVALID_ISIM, true) || isISimDataValid();
        }
        return false;
    }

    boolean checkOutBoundSIM() {
        if (hasNoSim()) {
            IMSLog.i(LOG_TAG, this.mSimSlot, "isOutboundSim, SIM not ready");
            return false;
        }
        if (isLabSimCard() || DeviceUtil.getGcfMode()) {
            IMSLog.i(LOG_TAG, this.mSimSlot, "isOutboundSim, GCF mode, LabSim card/ Test Bed SIM inserted.");
            return false;
        }
        if (DeviceUtil.isUnifiedSalesCodeInTSS()) {
            return !DeviceUtil.includedSimByTSS(this.mSimMnoName);
        }
        return CollectionUtils.isNullOrEmpty(getNetworkNames());
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public List<String> getNetworkNames() {
        String simOperator;
        String imsi;
        String groupIdLevel1 = this.mTelephonyManager.getGroupIdLevel1(getSubscriptionId());
        Mno simMno = getSimMno();
        boolean z = (TextUtils.isEmpty(groupIdLevel1) || groupIdLevel1.toUpperCase().startsWith("FF")) && simMno.isUSA();
        if (simMno == Mno.RJIL) {
            simOperator = getSimOperatorFromImpi();
            imsi = getImsiFromImpi();
        } else {
            simOperator = getSimOperator();
            imsi = getImsi();
        }
        int subId = SimUtil.getSubId(this.mSimSlot);
        return CscParser.getNetworkNames(simOperator, imsi, groupIdLevel1, this.mTelephonyManager.getGid2(subId), this.mTelephonyManager.getSimOperatorName(subId), this.mSimSlot, z);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean hasIsim() {
        Mno simMno = getSimMno();
        String rilSimOperator = this.mTelephonyManager.getRilSimOperator(this.mSimSlot);
        String str = SemSystemProperties.get("ro.boot.hardware", "");
        boolean z = false;
        if (simMno == Mno.SKT && (("SKCTN".equals(rilSimOperator) || "SKCTD".equals(rilSimOperator)) && OmcCode.isKOROmcCode() && (str.contains("qcom") || str.contains("mt")))) {
            IMSLog.i(LOG_TAG, this.mSimSlot, "hasIsim: watch data SIM. treat it as USIM(by SKT operator)");
            return false;
        }
        if (simMno == Mno.SAFARICOM_KENYA) {
            IMSLog.i(LOG_TAG, this.mSimSlot, "hasIsim safariCom_kenya : false");
            return false;
        }
        boolean isISimAppPresent = SimManagerUtils.isISimAppPresent(this.mSimSlot, this.mTelephonyManager);
        IMSLog.i(LOG_TAG, this.mSimSlot, "hasIsim: [" + isISimAppPresent + "]");
        if (!ImsRegistry.getBoolean(this.mSimSlot, GlobalSettingsConstants.Registration.USE_USIM_ON_INVALID_ISIM, false) && !isEsim()) {
            return isISimAppPresent;
        }
        if (isISimAppPresent && (!this.mIsimLoaded || isISimDataValid())) {
            z = true;
        }
        return z;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean hasVsim() {
        return SimUtil.isSoftphoneEnabled();
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void setSimRefreshed() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "setSimRefreshed:");
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getSimCountryIso() {
        return this.mTelephonyManager.getSimCountryIsoForSubId(SimUtil.getSubId(this.mSimSlot));
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getSimOperator() {
        String mockOperatorCode = Mno.getMockOperatorCode();
        if (!TextUtils.isEmpty(mockOperatorCode)) {
            return mockOperatorCode;
        }
        if (SimUtil.isSoftphoneEnabled()) {
            return SOFTPHONE_OPERATOR_CODE;
        }
        String simOperator = this.mTelephonyManager.getSimOperator(getSubscriptionId());
        IMSLog.i(LOG_TAG, this.mSimSlot, "getSimOperator: value [" + simOperator + "]");
        return simOperator;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getSimOperatorFromImpi() {
        if (TextUtils.isEmpty(this.mOperatorFromImpi)) {
            return getSimOperator();
        }
        return this.mOperatorFromImpi;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean isLabSimCard() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "isLabSimCard: state [" + this.mSimState + "] isLabSim [" + this.mLabSimCard + "]");
        return this.mSimState == SimConstants.SIM_STATE.LOADED && this.mLabSimCard;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean isOutBoundSIM() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "isOutBoundSIM: state [" + this.mSimState + "] isOutBoundSIM [" + this.mIsOutBoundSIM + "]");
        return this.mSimState == SimConstants.SIM_STATE.LOADED && this.mIsOutBoundSIM;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean isGBASupported() {
        if (!hasIsim()) {
            return false;
        }
        boolean isGbaSupported = this.mTelephonyManager.isGbaSupported(getSubscriptionId());
        IMSLog.i(LOG_TAG, this.mSimSlot, "isGbaSupported [" + isGbaSupported + "]");
        return isGbaSupported;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean isISimDataValid() {
        return getISimDataValidity() == 0;
    }

    int getISimDataValidity() {
        SimDataAdaptor simDataAdaptor;
        String isimImpi = this.mTelephonyManager.getIsimImpi(getSubscriptionId());
        String isimDomain = this.mTelephonyManager.getIsimDomain(getSubscriptionId());
        String[] isimImpu = this.mTelephonyManager.getIsimImpu(getSubscriptionId());
        int i = 0;
        if (CollectionUtils.isNullOrEmpty(isimImpu) || (simDataAdaptor = this.mSimDataAdaptor) == null) {
            SimConstants.ISIM_VALIDITY isim_validity = SimConstants.ISIM_VALIDITY.IMPU_NOT_EXISTS;
            i = 0 | isim_validity.getValue();
            IMSLog.e(LOG_TAG, this.mSimSlot, "isIsimDataValid: " + isim_validity);
        } else if (!isValidImpu(simDataAdaptor.getImpuFromList(Arrays.asList(isimImpu)))) {
            SimConstants.ISIM_VALIDITY isim_validity2 = SimConstants.ISIM_VALIDITY.IMPU_INVALID;
            i = 0 | isim_validity2.getValue();
            IMSLog.e(LOG_TAG, this.mSimSlot, "isIsimDataValid: " + isim_validity2);
        }
        if (TextUtils.isEmpty(isimImpi)) {
            SimConstants.ISIM_VALIDITY isim_validity3 = SimConstants.ISIM_VALIDITY.IMPI_NOT_EXIST;
            i |= isim_validity3.getValue();
            IMSLog.e(LOG_TAG, this.mSimSlot, "isIsimDataValid: " + isim_validity3);
        }
        if (!TextUtils.isEmpty(isimDomain)) {
            return i;
        }
        if (getSimMno() == Mno.TMOUS && !this.mHighestPriorityEhplmn.isEmpty()) {
            this.mEventLog.logAndAdd(this.mSimSlot, "Allow empty EF_HOMEDOMAIN only when the EHPLMN is available");
            return i;
        }
        SimConstants.ISIM_VALIDITY isim_validity4 = SimConstants.ISIM_VALIDITY.HOME_DOMAIN_NOT_EXIST;
        int value = i | isim_validity4.getValue();
        IMSLog.e(LOG_TAG, this.mSimSlot, "isIsimDataValid: " + isim_validity4);
        return value;
    }

    public static boolean isValidImpu(String str) {
        ImsUri parse = ImsUri.parse(str);
        if (parse != null && parse.getUriType() == ImsUri.UriType.SIP_URI) {
            return true;
        }
        IMSLog.i(LOG_TAG, "Invalid IMPU: " + LogRedactor.IMPU.redact(str));
        return false;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getIsimAuthentication(String str) {
        int i;
        if (hasIsim()) {
            i = 5;
        } else {
            i = isSimLoaded() ? 2 : 0;
        }
        return getIsimAuthentication(str, i);
    }

    private boolean isValidAkaResponse(String str) {
        if (TextUtils.equals(str, "2wQAAAAAAAA=")) {
            IMSLog.c(LogClass.SIM_AKA_RESPONSE, this.mSimSlot + ", failed to challenge");
            return false;
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "null")) {
            return true;
        }
        IMSLog.c(LogClass.SIM_AKA_RESPONSE, this.mSimSlot + ", empty response");
        return false;
    }

    public String getIsimAuthentication(String str, int i) {
        if (i == 0 || str == null || str.length() % 2 != 0) {
            IMSLog.e(LOG_TAG, this.mSimSlot, "Wrong parameter - AppType : " + i + " nonce : " + str);
            return null;
        }
        IMSLog.i(LOG_TAG, this.mSimSlot, " getIsimAuthentication calling - AppType : " + i);
        byte[] bArr = new byte[str.length() / 2];
        int i2 = 0;
        int i3 = 0;
        while (i2 < str.length()) {
            int i4 = i2 + 2;
            bArr[i3] = (byte) (Integer.parseInt(str.substring(i2, i4), 16) & 255);
            i3++;
            i2 = i4;
        }
        IMSLog.c(LogClass.SIM_AKA_REQUEST, this.mSimSlot + ",REQ ISIM AUTH");
        String iccAuthentication = this.mTelephonyManager.getIccAuthentication(getSubscriptionId(), i, 129, Base64.encodeToString(bArr, 2));
        IMSLog.i(LOG_TAG, this.mSimSlot, "result: " + iccAuthentication);
        if ((getSimMno().isKor() || getSimMno().isChn() || getSimMno().isLatin() || getSimMno().isATTMexico()) && !isValidAkaResponse(iccAuthentication)) {
            this.mEventLog.logAndAdd(this.mSimSlot, "getIsimAuthentication result:" + iccAuthentication);
            return "mGI=";
        }
        if (TextUtils.isEmpty(iccAuthentication) || TextUtils.equals(iccAuthentication, "null")) {
            IMSLog.e(LOG_TAG, this.mSimSlot, "getIccAuthentication failed");
            if (ImsRegistry.getRegistrationManager() != null) {
                ImsRegistry.getRegistrationManager().updateEmergencyTaskByAuthFailure(this.mSimSlot);
            }
            return null;
        }
        IMSLog.c(LogClass.SIM_AKA_RESPONSE, this.mSimSlot + ",LEN:" + iccAuthentication.length());
        try {
            byte[] decode = Base64.decode(iccAuthentication, 2);
            StringBuilder sb = new StringBuilder(decode.length * 2);
            IMSLog.i(LOG_TAG, this.mSimSlot, "resultBytes.length: " + decode.length);
            for (int i5 = 0; i5 < decode.length; i5++) {
                sb.append("0123456789abcdef".charAt((decode[i5] >> 4) & 15));
                sb.append("0123456789abcdef".charAt(decode[i5] & 15));
            }
            String sb2 = sb.toString();
            IMSLog.s(LOG_TAG, "decoded result : " + sb2);
            return sb2;
        } catch (Exception e) {
            IMSLog.e(LOG_TAG, this.mSimSlot, "Failed to decode the AKA RESPONSE - retry as MAC ERROR" + e.getMessage());
            return "9862";
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void requestIsimAuthentication(String str, int i, Message message) {
        String isimAuthentication = getIsimAuthentication(str, i);
        if (isimAuthentication != null) {
            message.obj = new String(isimAuthentication.getBytes());
            message.sendToTarget();
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void requestIsimAuthentication(String str, Message message) {
        String isimAuthentication = getIsimAuthentication(str);
        if (isimAuthentication != null) {
            message.obj = new String(isimAuthentication.getBytes());
            message.sendToTarget();
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void requestSoftphoneAuthentication(String str, String str2, Message message, int i) {
        this.mSoftphoneAccount = new SimConstants.SoftphoneAccount(str, i, str2, message);
        IMSLog.i(LOG_TAG, this.mSimSlot, "requestSoftphoneAuthentication, id = " + i);
        IMSLog.c(LogClass.SIM_SOFTPHONE_AUTH_REQUEST, this.mSimSlot + ",REQ AUTH");
        Intent intent = new Intent("com.sec.imsservice.REQUEST_AKA_CHALLENGE");
        intent.setPackage(this.mContext.getPackageName());
        intent.putExtra(WwwAuthenticateHeader.HEADER_PARAM_NONCE, str);
        intent.putExtra("impi", str2);
        intent.putExtra("id", i);
        ContextExt.sendBroadcastAsUser(this.mContext, intent, ContextExt.ALL);
    }

    void onSoftphoneAuthDone(String str) {
        IMSLog.s(LOG_TAG, "aka result : " + str);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mSimSlot);
        sb.append(",LEN:");
        sb.append(str != null ? Integer.valueOf(str.length()) : "null");
        IMSLog.c(LogClass.SIM_SOFTPHONE_AUTH_RESPONSE, sb.toString());
        if (!TextUtils.isEmpty(str)) {
            Message message = this.mSoftphoneAccount.mResponse;
            if (message != null) {
                message.obj = new String(str.getBytes());
                this.mSoftphoneAccount.mResponse.sendToTarget();
                return;
            }
            return;
        }
        IMSLog.e(LOG_TAG, this.mSimSlot, "aka failed");
        sendEmptyMessage(5);
    }

    void onSoftphoneAuthFailed() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "onSoftphoneAuthFailed");
        Message message = this.mSoftphoneAccount.mResponse;
        message.what = 46;
        message.sendToTarget();
    }

    boolean updateSimState(SimConstants.SIM_STATE sim_state) {
        SimConstants.SIM_STATE sim_state2 = this.mSimState;
        if (sim_state2 == sim_state) {
            return false;
        }
        this.mSimStatePrev = sim_state2;
        this.mSimState = sim_state;
        if (sim_state == SimConstants.SIM_STATE.LOADED) {
            return true;
        }
        this.mIsOutBoundSIM = false;
        return true;
    }

    boolean isValidOperator(String str) {
        return !TextUtils.isEmpty(str) && str.length() >= 5;
    }

    boolean isValidImsi(String str, String str2) {
        return str2 != null && str2.length() > str.length();
    }

    boolean useImsSwitch() {
        return (getSimMno() == Mno.GCF || "GCF".equals(this.OMC_CODE) || "SUP".equals(this.OMC_CODE) || this.mLabSimCard) ? false : true;
    }

    protected void onSimStateChange(String str) {
        boolean z;
        String simOperator = getSimOperator();
        boolean isMultiSimSupported = SimUtil.isMultiSimSupported();
        IMSLog.i(LOG_TAG, this.mSimSlot, "onSimStateChange: [" + this.mSimState + " -> " + str + "], operator: [" + simOperator + "]");
        String imei = this.mTelephonyManager.getImei(this.mSimSlot);
        IMSLog.c(LogClass.SIM_EVENT, this.mSimSlot + "," + simOperator + ",EVT:" + str + "," + LogRedactor.IMEI.redact(imei) + "," + TextUtils.equals(imei, this.mTelephonyManager.getPrimaryImei()));
        if (hasVsim()) {
            handleVsim(simOperator, str);
            return;
        }
        String str2 = "";
        if (IccCardConstants.INTENT_VALUE_ICC_LOADED.equals(str)) {
            str2 = ImsRegistry.getString(this.mSimSlot, "mnoname", "");
            z = handle_Loaded(simOperator);
        } else if (IccCardConstants.DELAYED_ISIM_LOAD.equals(str)) {
            z = handle_Delayed_IsimLoaded();
        } else if (IccCardConstants.INTENT_VALUE_ICC_ISIM_LOADED.equals(str)) {
            z = handle_IsimLoaded();
        } else if (IccCardConstants.INTENT_VALUE_ICC_NOT_READY.equals(str) || "UNKNOWN".equals(str)) {
            handle_NotReadyUnknown(simOperator, str);
            return;
        } else if (IccCardConstants.INTENT_VALUE_ICC_ABSENT.equals(str)) {
            handle_absent(simOperator, isMultiSimSupported);
            return;
        } else {
            if (IccCardConstants.INTENT_VALUE_ICC_LOCKED.equals(str)) {
                handle_Locked(simOperator);
                return;
            }
            z = false;
        }
        if (z) {
            handleSimStateChanged(str2, simOperator);
        }
    }

    void handleVsim(String str, String str2) {
        if (this.mSimDataAdaptor == null) {
            this.mSimDataAdaptor = SimDataAdaptorFactory.create(this);
            IMSLog.i(LOG_TAG, this.mSimSlot, "Enable virtual SIM");
            updateSimState(SimConstants.SIM_STATE.LOADED);
            this.mIsimLoaded = true;
            this.mEventLog.add("VSIM LOADED");
            notifySimReady(str);
            return;
        }
        if (IccCardConstants.INTENT_VALUE_ICC_LOADED.equals(str2)) {
            handleSubscriptionId();
        }
    }

    boolean handleSubscriptionId() {
        SubscriptionManager subscriptionManager = (SubscriptionManager) this.mContext.getSystemService("telephony_subscription_service");
        if (subscriptionManager == null) {
            IMSLog.e(LOG_TAG, this.mSimSlot, "SubscriptionManager is null, should not happen");
            return false;
        }
        SubscriptionInfo activeSubscriptionInfoForSimSlotIndex = subscriptionManager.getActiveSubscriptionInfoForSimSlotIndex(this.mSimSlot);
        if (activeSubscriptionInfoForSimSlotIndex == null) {
            IMSLog.e(LOG_TAG, this.mSimSlot, "onSimStateChange:[LOADED] subInfo is not created yet. retry in 1 sec.");
            IMSLog.c(LogClass.SIM_NO_SUBINFO, this.mSimSlot + ",NO SUBINFO");
            if (!hasVsim()) {
                this.mSimState = SimConstants.SIM_STATE.UNKNOWN;
            }
            sendMessageDelayed(obtainMessage(1, IccCardConstants.INTENT_VALUE_ICC_LOADED), 1000L);
            return false;
        }
        SimManagerFactory.notifySubscriptionIdChanged(activeSubscriptionInfoForSimSlotIndex);
        setSubscriptionInfo(activeSubscriptionInfoForSimSlotIndex);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x04be  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x04c7  */
    @android.annotation.SuppressLint({"MissingPermission"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    boolean handle_Loaded(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 1234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.sim.SimManager.handle_Loaded(java.lang.String):boolean");
    }

    boolean handle_Delayed_IsimLoaded() {
        if (this.mIsimLoaded || this.mSimState != SimConstants.SIM_STATE.LOADED) {
            return false;
        }
        this.mEventLog.logAndAdd(this.mSimSlot, IccCardConstants.INTENT_VALUE_ICC_ISIM_LOADED);
        this.mIsimLoaded = true;
        return true;
    }

    boolean handle_IsimLoaded() {
        this.mEventLog.logAndAdd(this.mSimSlot, IccCardConstants.INTENT_VALUE_ICC_ISIM_LOADED);
        boolean z = !this.mIsimLoaded;
        if (this.mSimState == SimConstants.SIM_STATE.INVALID_ISIM) {
            SimConstants.SIM_STATE sim_state = this.mSimStatePrev;
            SimConstants.SIM_STATE sim_state2 = SimConstants.SIM_STATE.LOADED;
            if (sim_state == sim_state2) {
                updateSimState(sim_state2);
                z = true;
            }
        }
        if (this.mSimState == SimConstants.SIM_STATE.LOADED && getSimMno() == Mno.BELL) {
            IMSLog.i(LOG_TAG, this.mSimSlot, "fix for exceptional case : LOADED notified before ISIM_LOADED");
            z = true;
        }
        this.mIsimLoaded = true;
        return z;
    }

    void handle_NotReadyUnknown(String str, String str2) {
        removeMessages(1, IccCardConstants.INTENT_VALUE_ICC_LOADED);
        if (this.mSimState == SimConstants.SIM_STATE.LOADED || this.mIsRefresh) {
            onSimNotReady();
            return;
        }
        if ("UNKNOWN".equals(str2) && SimManagerUtils.needImsUpOnUnknownState(this.mContext, this.mSimSlot)) {
            String str3 = SemSystemProperties.get(OmcCode.OMC_CODE_PROPERTY, "unknown");
            this.OMC_CODE = str3;
            Mno mno = Mno.DEFAULT;
            if (!"unknown".equals(str3)) {
                mno = Mno.fromSalesCode(this.OMC_CODE);
            }
            this.mDevMno = mno;
            this.mEventLog.logAndAdd(this.mSimSlot, "SIM UNKNOWN");
            this.mEventLog.logAndAdd(this.mSimSlot, "OMC_CODE(unknown): " + this.OMC_CODE + ", mDevMno: " + this.mDevMno.toString());
            setSimMno(this.mDevMno, true);
            StringBuilder sb = new StringBuilder();
            sb.append(SMF_MNONAME_PROP);
            sb.append(this.mSimSlot);
            SemSystemProperties.set(sb.toString(), this.mSimMnoName);
            this.mMnoInfoStorage.init();
            ContentValues contentValues = new ContentValues();
            contentValues.put(ISimManager.KEY_HAS_SIM, Boolean.FALSE);
            contentValues.put("mnoname", this.mDevMno.getName());
            contentValues.put(ISimManager.KEY_MVNO_NAME, SimManagerUtils.getMvnoName(this.mSimMnoName));
            contentValues.put(ISimManager.KEY_IMSSWITCH_TYPE, (Integer) 0);
            updateMno(contentValues);
            notifySimReady(str);
        }
    }

    void handle_absent(String str, boolean z) {
        boolean updateSimState = updateSimState(SimConstants.SIM_STATE.ABSENT);
        ImsLogAgentUtil.requestToSendStoredLog(this.mSimSlot, this.mContext, "DRPT");
        removeMessages(1, IccCardConstants.INTENT_VALUE_ICC_LOADED);
        ImsAutoUpdate.getInstance(this.mContext, this.mSimSlot).resetCarrierFeatureHash();
        SimConstants.SIM_STATE sim_state = this.mSimStatePrev;
        if (sim_state == SimConstants.SIM_STATE.LOADED || sim_state == SimConstants.SIM_STATE.LOCKED) {
            this.mEventLog.logAndAdd(this.mSimSlot, "SIM REMOVED");
            onSimRemoved();
            String string = this.mMnoInfoStorage.getString("mnoname");
            this.mMnoInfoStorage.init();
            ContentValues contentValues = new ContentValues();
            contentValues.clear();
            contentValues.put(ISimManager.KEY_HAS_SIM, Boolean.FALSE);
            contentValues.put("mnoname", string);
            contentValues.put(ISimManager.KEY_MVNO_NAME, this.mMnoInfoStorage.getString(ISimManager.KEY_MVNO_NAME));
            contentValues.put(ISimManager.KEY_IMSSWITCH_TYPE, (Integer) 0);
            updateMno(contentValues);
            return;
        }
        this.mEventLog.logAndAdd(this.mSimSlot + "SIM ABSENT");
        this.mIsimLoaded = false;
        this.mSimDataAdaptor = SimDataAdaptorFactory.create(this);
        if (updateSimState) {
            notifySimReady(str);
        }
        String str2 = SemSystemProperties.get(OmcCode.OMC_CODE_PROPERTY, "unknown");
        this.OMC_CODE = str2;
        if (!"unknown".equals(str2)) {
            this.mDevMno = Mno.fromSalesCode(this.OMC_CODE);
        }
        this.mEventLog.logAndAdd(this.mSimSlot, "OMC_CODE(absent): " + this.OMC_CODE + ", mDevMno: " + this.mDevMno.toString());
        String nWCode = OmcCode.getNWCode(this.mSimSlot);
        this.OMCNW_CODE = nWCode;
        this.mNetMno = Mno.fromSalesCode(nWCode);
        this.mEventLog.logAndAdd(this.mSimSlot, " OMCNW_CODE(absent): " + this.OMCNW_CODE + ", mNetMno: " + this.mNetMno.toString());
        setSimMno(this.mNetMno, true);
        StringBuilder sb = new StringBuilder();
        sb.append(SMF_MNONAME_PROP);
        sb.append(this.mSimSlot);
        SemSystemProperties.set(sb.toString(), this.mSimMnoName + "|ABSENT");
        this.mMnoInfoStorage.init();
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put(ISimManager.KEY_HAS_SIM, Boolean.FALSE);
        contentValues2.put("mnoname", this.mNetMno.getName());
        contentValues2.put(ISimManager.KEY_MVNO_NAME, SimManagerUtils.getMvnoName(this.mSimMnoName));
        contentValues2.put(ISimManager.KEY_IMSSWITCH_TYPE, (Integer) 0);
        if (getSimMno() == Mno.RJIL) {
            int activeDataPhoneIdFromTelephony = SimUtil.getActiveDataPhoneIdFromTelephony();
            if (!z || activeDataPhoneIdFromTelephony == this.mSimSlot) {
                updateMno(contentValues2);
                return;
            }
            return;
        }
        if (SimUtil.isDualIMS() || this.mTelephonyManager.getSimState() == 1) {
            updateMno(contentValues2);
        }
    }

    void handle_Locked(String str) {
        boolean updateSimState = updateSimState(SimConstants.SIM_STATE.LOCKED);
        String str2 = SemSystemProperties.get(OmcCode.OMC_CODE_PROPERTY, "unknown");
        this.OMC_CODE = str2;
        if (!"unknown".equals(str2)) {
            this.mDevMno = Mno.fromSalesCode(this.OMC_CODE);
        }
        this.mEventLog.logAndAdd(this.mSimSlot, "SIM LOCKED");
        this.mEventLog.logAndAdd(this.mSimSlot, "OMC_CODE(locked): " + this.OMC_CODE + ", mDevMno: " + this.mDevMno.toString());
        setSimMno(this.mDevMno, true);
        StringBuilder sb = new StringBuilder();
        sb.append(SMF_MNONAME_PROP);
        sb.append(this.mSimSlot);
        SemSystemProperties.set(sb.toString(), this.mSimMnoName);
        this.mMnoInfoStorage.init();
        ContentValues contentValues = new ContentValues();
        contentValues.put(ISimManager.KEY_HAS_SIM, Boolean.FALSE);
        contentValues.put("mnoname", this.mDevMno.getName());
        contentValues.put(ISimManager.KEY_MVNO_NAME, SimManagerUtils.getMvnoName(this.mSimMnoName));
        contentValues.put(ISimManager.KEY_IMSSWITCH_TYPE, (Integer) 0);
        updateMno(contentValues);
        if (this.mSimStatePrev == SimConstants.SIM_STATE.LOADED || !updateSimState) {
            return;
        }
        notifySimReady(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void handleSimStateChanged(String str, String str2) {
        byte b;
        int iSimDataValidity;
        if (isSimAvailable()) {
            IMSLog.i(LOG_TAG, this.mSimSlot, "handleSimChange: SIM is ready.");
            if (getSimMno().isRjil()) {
                this.mLastImsi = getImsiFromImpi();
            } else {
                this.mLastImsi = this.mTelephonyManager.getSubscriberId(getSubscriptionId());
            }
            ContentValues contentValues = new ContentValues();
            String groupIdLevel1 = this.mTelephonyManager.getGroupIdLevel1(getSubscriptionId());
            contentValues.put(DiagnosisConstants.SIMI_KEY_EVENT_TYPE, Integer.valueOf(DiagnosisConstants.getEventType(this.mSimStatePrev, this.mIsRefresh, TextUtils.equals(this.mSimMnoName, str))));
            contentValues.put(DiagnosisConstants.SIMI_KEY_SUBSCRIPTION_ID, Integer.valueOf(Math.max(getSubscriptionId(), 0)));
            if (!TextUtils.isEmpty(groupIdLevel1)) {
                contentValues.put(DiagnosisConstants.SIMI_KEY_GID1, groupIdLevel1.substring(0, Math.min(16, groupIdLevel1.length())));
            }
            contentValues.put(DiagnosisConstants.SIMI_KEY_ISIM_EXISTS, Integer.valueOf(this.mIsimLoaded ? 1 : 0));
            Context context = this.mContext;
            ImsConstants.SystemSettings.SettingsItem settingsItem = ImsConstants.SystemSettings.VOLTE_SLOT1;
            contentValues.put(DiagnosisConstants.COMMON_KEY_VOLTE_SETTINGS, Integer.valueOf(DmConfigHelper.getImsUserSetting(context, settingsItem.getName(), this.mSimSlot)));
            contentValues.put(DiagnosisConstants.COMMON_KEY_VIDEO_SETTINGS, Integer.valueOf(DmConfigHelper.getImsUserSetting(this.mContext, settingsItem.getName(), this.mSimSlot)));
            int value = (getSimMno() != Mno.TMOUS || isGBASupported()) ? 0 : SimConstants.SIM_VALIDITY.GBA_NOT_SUPPORTED.getValue() | 0;
            SimDataAdaptor simDataAdaptor = this.mSimDataAdaptor;
            if (simDataAdaptor == null || simDataAdaptor.hasValidMsisdn()) {
                b = true;
            } else {
                value |= SimConstants.SIM_VALIDITY.MSISDN_INVALID.getValue();
                IMSLog.e(LOG_TAG, this.mSimSlot, "Invalid MSISDN");
                b = false;
            }
            if (value > 0) {
                contentValues.put(DiagnosisConstants.SIMI_KEY_SIM_VALIDITY, DiagnosisConstants.intToHexStr(value));
            }
            if (this.mIsimLoaded && (iSimDataValidity = getISimDataValidity()) > 0) {
                contentValues.put(DiagnosisConstants.SIMI_KEY_ISIM_VALIDITY, DiagnosisConstants.intToHexStr(iSimDataValidity));
                if (ImsRegistry.getBoolean(this.mSimSlot, GlobalSettingsConstants.Registration.BLOCK_REGI_ON_INVALID_ISIM, true) && !isEsim()) {
                    IMSLog.e(LOG_TAG, this.mSimSlot, "onSimStateChange: invalid ISIM!");
                    updateSimState(SimConstants.SIM_STATE.INVALID_ISIM);
                    this.mEventLog.logAndAdd(this.mSimSlot, "INVALID_FIELD");
                    IMSLog.c(LogClass.SIM_INVALID_ISIM, this.mSimSlot + ",INVLD ISIM," + iSimDataValidity);
                }
            }
            ImsLogAgentUtil.sendLogToAgent(this.mSimSlot, this.mContext, DiagnosisConstants.FEATURE_SIMI, contentValues);
            this.mIsRefresh = false;
            this.mIsCrashSimEvent = false;
            if (b == true) {
                notifySimReady(str2);
                return;
            }
            return;
        }
        if (this.mSimState == SimConstants.SIM_STATE.LOADED && isISimAppLoaded()) {
            if (this.mIsCrashSimEvent) {
                IMSLog.d(LOG_TAG, this.mSimSlot, "send simstate, isim loaded");
                this.mIsCrashSimEvent = false;
                sendMessage(obtainMessage(1, IccCardConstants.INTENT_VALUE_ICC_ISIM_LOADED));
                return;
            }
            sendMessageDelayed(obtainMessage(1, IccCardConstants.DELAYED_ISIM_LOAD), 10000L);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        if (r1.equals(com.sec.internal.constants.ims.os.IccCardConstants.INTENT_VALUE_ICC_LOADED) == false) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void initializeSimState() {
        /*
            r6 = this;
            r0 = 0
            r6.mIsCrashSimEvent = r0
            int r1 = r6.mSimSlot
            com.sec.internal.helper.os.ITelephonyManager r2 = r6.mTelephonyManager
            java.lang.String r1 = com.sec.internal.ims.core.sim.SimManagerUtils.readSimStateProperty(r1, r2)
            int r2 = r6.mSimSlot
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "initializeSimState (gsm.sim.state) : =  "
            r3.append(r4)
            r3.append(r1)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "SimManager"
            com.sec.internal.log.IMSLog.i(r4, r2, r3)
            r1.hashCode()
            int r2 = r1.hashCode()
            java.lang.String r3 = "LOADED"
            r4 = 1
            r5 = -1
            switch(r2) {
                case -2044189691: goto L54;
                case -2044123382: goto L49;
                case 433141802: goto L3e;
                case 1924388665: goto L33;
                default: goto L31;
            }
        L31:
            r0 = r5
            goto L5b
        L33:
            java.lang.String r0 = "ABSENT"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L3c
            goto L31
        L3c:
            r0 = 3
            goto L5b
        L3e:
            java.lang.String r0 = "UNKNOWN"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L47
            goto L31
        L47:
            r0 = 2
            goto L5b
        L49:
            java.lang.String r0 = "LOCKED"
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L52
            goto L31
        L52:
            r0 = r4
            goto L5b
        L54:
            boolean r2 = r1.equals(r3)
            if (r2 != 0) goto L5b
            goto L31
        L5b:
            switch(r0) {
                case 0: goto L67;
                case 1: goto L5f;
                case 2: goto L5f;
                case 3: goto L5f;
                default: goto L5e;
            }
        L5e:
            goto L70
        L5f:
            android.os.Message r0 = r6.obtainMessage(r4, r1)
            r6.sendMessage(r0)
            goto L70
        L67:
            r6.mIsCrashSimEvent = r4
            android.os.Message r0 = r6.obtainMessage(r4, r3)
            r6.sendMessage(r0)
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.sim.SimManager.initializeSimState():void");
    }

    void setSimMno(Mno mno, boolean z) {
        SimUtil.setSimMno(this.mSimSlot, mno);
        if (z) {
            this.mSimMnoName = mno.getName();
        }
    }

    void updateMno(ContentValues contentValues) {
        IMSLog.i(LOG_TAG, this.mSimSlot, "updateMno:");
        contentValues.put("phoneId", Integer.valueOf(this.mSimSlot));
        if (TextUtils.isEmpty(contentValues.getAsString("imsi"))) {
            contentValues.put("imsi", "");
        }
        int intValue = ((Integer) Optional.ofNullable(contentValues.getAsInteger(ISimManager.KEY_IMSSWITCH_TYPE)).orElse(-1)).intValue();
        this.mMnoInfoStorage.update(contentValues);
        IMSLog.c(LogClass.SIM_UPDATE_MNO, this.mSimSlot + "," + this.mSimState + "," + this.mSimMnoName + "," + intValue);
        this.mEventLog.logAndAdd(this.mSimSlot, this.mSimState + ", " + this.mSimMnoName + ", " + this.mMnoInfoStorage);
        if (intValue != 0) {
            IMSLog.c(LogClass.SIM_MNO_INFO, this.mSimSlot + "," + SimManagerUtils.convertMnoInfoToString(this.mMnoInfoStorage.getAll()));
        }
        notifyMnoChanged();
    }

    void notifyMnoChanged() {
        Uri build = URI_UPDATE_MNO.buildUpon().fragment("simslot" + this.mSimSlot).build();
        IMSLog.i(LOG_TAG, this.mSimSlot, "notifyMnoChanged [" + build + "]");
        this.mContext.getContentResolver().update(build, this.mMnoInfoStorage.getAll(), null, null);
    }

    void onSimRefresh() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "onSimRefresh");
        IMSLog.c(LogClass.SIM_REFRESH, this.mSimSlot + ",SIM REFRESH");
        this.mEventLog.logAndAdd(this.mSimSlot, "onSimRefresh");
        updateSimState(SimConstants.SIM_STATE.UNKNOWN);
        this.mIsimLoaded = false;
        this.notifySimReadyAlreadyDone = false;
        this.mSubscriptionId = -1;
        if (!this.mIsRefresh) {
            this.mIsRefresh = true;
            notifySimRefresh();
        }
        this.mTelephonyManager.clearCache();
    }

    protected void onSimRemoved() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "onSimRemoved:");
        this.mIsimLoaded = false;
        this.notifySimReadyAlreadyDone = false;
        this.mSubscriptionId = -1;
        notifySimRemoved();
        this.mTelephonyManager.clearCache();
    }

    protected void onSimNotReady() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "onSimNotReady");
        this.mEventLog.logAndAdd(this.mSimSlot, "onSimNotReady");
        updateSimState(SimConstants.SIM_STATE.UNKNOWN);
        this.mIsimLoaded = false;
        this.notifySimReadyAlreadyDone = false;
        this.mSubscriptionId = -1;
        this.mIsESim = false;
        notifySimRemoved();
        this.mTelephonyManager.clearCache();
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        IMSLog.i(LOG_TAG, this.mSimSlot, "handleMessage: what " + message.what);
        int i = message.what;
        if (i == 1) {
            onSimStateChange((String) message.obj);
            notifySimStateChanged();
            return;
        }
        if (i == 2) {
            notifyUiccChanged();
            return;
        }
        if (i == 3) {
            onSimRefresh();
            return;
        }
        if (i == 5) {
            onSoftphoneAuthFailed();
            return;
        }
        if (i != 7) {
            if (i == 8 && this.mMnoMap == null) {
                this.mMnoMap = new MnoMap(this.mContext, this.mSimSlot);
                return;
            }
            return;
        }
        onImsSwitchUpdated(((Integer) message.obj).intValue());
        updateGlobalSetting(((Integer) message.obj).intValue());
    }

    public int getSimSlotCount() {
        return this.mTelephonyManager.getPhoneCount();
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public int getSubscriptionId() {
        if (this.mSubscriptionId < 0) {
            this.mSubscriptionId = SimUtil.getSubId(this.mSimSlot);
        }
        return this.mSubscriptionId;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public int getSimSlotIndex() {
        return this.mSimSlot;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getHighestPriorityEhplmn() {
        return this.mHighestPriorityEhplmn;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public synchronized void setSubscriptionInfo(SubscriptionInfo subscriptionInfo) {
        if (!hasVsim()) {
            IMSLog.i(LOG_TAG, this.mSimSlot, "setSubscriptionInfo : mSubscriptionId : " + this.mSubscriptionId + " => " + subscriptionInfo.getSubscriptionId() + " mSimSlot : " + this.mSimSlot + " => " + subscriptionInfo.getSimSlotIndex());
            this.mSubscriptionId = subscriptionInfo.getSubscriptionId();
            this.mSimSlot = subscriptionInfo.getSimSlotIndex();
            this.mHighestPriorityEhplmn = SimManagerUtils.getEhplmn(subscriptionInfo);
            int i = this.mSimSlot;
            StringBuilder sb = new StringBuilder();
            sb.append("Stored EHPLMN [");
            sb.append(this.mHighestPriorityEhplmn);
            sb.append("]");
            IMSLog.i(LOG_TAG, i, sb.toString());
            this.mIsESim = subscriptionInfo.isEmbedded();
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean isSimLoaded() {
        return this.mSimState == SimConstants.SIM_STATE.LOADED;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getMsisdn() {
        return this.mTelephonyManager.getMsisdn(getSubscriptionId());
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getLine1Number() {
        return this.mTelephonyManager.getLine1Number();
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getLine1Number(int i) {
        return this.mTelephonyManager.getLine1Number(i);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getImsi() {
        String subscriberId = this.mTelephonyManager.getSubscriberId(getSubscriptionId());
        if (!TextUtils.isEmpty(subscriberId)) {
            this.mImsi = subscriberId;
        }
        return this.mImsi;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getGid1() {
        return this.mTelephonyManager.getGroupIdLevel1(getSubscriptionId());
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getImsiFromImpi() {
        if (TextUtils.isEmpty(this.mImsiFromImpi)) {
            return getImsi();
        }
        return this.mImsiFromImpi;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void registerSimCardEventListener(ISimEventListener iSimEventListener) {
        SimConstants.SIM_STATE sim_state;
        synchronized (this.mEventListeners) {
            if (!this.mEventListeners.contains(iSimEventListener)) {
                this.mEventListeners.add(iSimEventListener);
            }
        }
        if (!this.notifySimReadyAlreadyDone || (sim_state = this.mSimState) == SimConstants.SIM_STATE.UNKNOWN) {
            return;
        }
        iSimEventListener.onReady(this.mSimSlot, sim_state != SimConstants.SIM_STATE.LOADED);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void deRegisterSimCardEventListener(ISimEventListener iSimEventListener) {
        synchronized (this.mEventListeners) {
            this.mEventListeners.remove(iSimEventListener);
        }
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getImpi() {
        return this.mTelephonyManager.getIsimImpi(getSubscriptionId());
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getSimSerialNumber() {
        return this.mTelephonyManager.getSimSerialNumber();
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public int getSimState() {
        if (this.mTelephonyManager == null) {
            return 0;
        }
        if (getSimSlotCount() == 1) {
            return this.mTelephonyManager.getSimState();
        }
        return this.mTelephonyManager.getSimState(getSimSlotIndex());
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getDerivedImpuFromMsisdn() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "getDerivedImpuFromMsisdn:");
        if (this.mSimDataAdaptor == null) {
            this.mSimDataAdaptor = SimDataAdaptorFactory.create(this);
        }
        final String msisdn = getMsisdn();
        if (TextUtils.isEmpty(msisdn)) {
            IMSLog.e(LOG_TAG, this.mSimSlot, "getDerivedImpuFromMsisdn: msisdn is not found");
            return null;
        }
        return (String) Optional.ofNullable(SimManagerUtils.parseMccMnc(this.mSimSlot, getSimOperator())).map(new Function() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getDerivedImpuFromMsisdn$1;
                lambda$getDerivedImpuFromMsisdn$1 = SimManager.this.lambda$getDerivedImpuFromMsisdn$1(msisdn, (Plmn) obj);
                return lambda$getDerivedImpuFromMsisdn$1;
            }
        }).orElseGet(new Supplier() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda3
            @Override // java.util.function.Supplier
            public final Object get() {
                String lambda$getDerivedImpuFromMsisdn$2;
                lambda$getDerivedImpuFromMsisdn$2 = SimManager.this.lambda$getDerivedImpuFromMsisdn$2();
                return lambda$getDerivedImpuFromMsisdn$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getDerivedImpuFromMsisdn$1(String str, Plmn plmn) {
        return this.mSimDataAdaptor.fetchDerivedImpuFromMsisdn(str, plmn);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getDerivedImpuFromMsisdn$2() {
        IMSLog.e(LOG_TAG, this.mSimSlot, "getDerivedImpi: operator is invalid. operator=" + getSimOperator());
        return "111@example.com";
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getDerivedImpi() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "getDerivedImpi:");
        if (this.mSimDataAdaptor == null) {
            this.mSimDataAdaptor = SimDataAdaptorFactory.create(this);
        }
        final String subscriberId = this.mTelephonyManager.getSubscriberId(getSubscriptionId());
        if (subscriberId == null || subscriberId.isEmpty()) {
            IMSLog.e(LOG_TAG, this.mSimSlot, "getDerivedImpi: IMSI is not found. Using [sip:111@example.com]");
            return "111@example.com";
        }
        return (String) Optional.ofNullable(SimManagerUtils.parseMccMnc(this.mSimSlot, getSimOperator())).map(new Function() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getDerivedImpi$3;
                lambda$getDerivedImpi$3 = SimManager.this.lambda$getDerivedImpi$3(subscriberId, (Plmn) obj);
                return lambda$getDerivedImpi$3;
            }
        }).orElse(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getDerivedImpi$3(String str, Plmn plmn) {
        return this.mSimDataAdaptor.fetchDerivedImpi(str, plmn);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getDerivedImpu() {
        IMSLog.i(LOG_TAG, this.mSimSlot, "getDerivedImpu:");
        if (this.mSimDataAdaptor == null) {
            this.mSimDataAdaptor = SimDataAdaptorFactory.create(this);
        }
        final String subscriberId = this.mTelephonyManager.getSubscriberId(getSubscriptionId());
        if (subscriberId == null || subscriberId.isEmpty()) {
            IMSLog.e(LOG_TAG, this.mSimSlot, "getDerivedImpu: IMSI is not found.");
            return null;
        }
        return (String) Optional.ofNullable(SimManagerUtils.parseMccMnc(this.mSimSlot, getSimOperator())).map(new Function() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda6
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String lambda$getDerivedImpu$4;
                lambda$getDerivedImpu$4 = SimManager.this.lambda$getDerivedImpu$4(subscriberId, (Plmn) obj);
                return lambda$getDerivedImpu$4;
            }
        }).orElse(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getDerivedImpu$4(String str, Plmn plmn) {
        return this.mSimDataAdaptor.fetchDerivedImpu(str, plmn);
    }

    public List<String> getEfImpuList() {
        return (List) Arrays.stream((String[]) Optional.ofNullable(this.mTelephonyManager.getIsimImpu(getSubscriptionId())).orElse(new String[0])).filter(new Predicate() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda4
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$getEfImpuList$5;
                lambda$getEfImpuList$5 = SimManager.lambda$getEfImpuList$5((String) obj);
                return lambda$getEfImpuList$5;
            }
        }).collect(Collectors.toList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getEfImpuList$5(String str) {
        return !TextUtils.isEmpty(str);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getImpuFromSim() {
        return (String) Optional.ofNullable(hasIsim() ? this.mSimDataAdaptor.getImpuFromList(getEfImpuList()) : null).orElseGet(new Supplier() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                String lambda$getImpuFromSim$6;
                lambda$getImpuFromSim$6 = SimManager.this.lambda$getImpuFromSim$6();
                return lambda$getImpuFromSim$6;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$getImpuFromSim$6() {
        return getSimMno() == Mno.LGU ? getDerivedImpuFromMsisdn() : getDerivedImpu();
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getEmergencyImpu() {
        if (this.mSimDataAdaptor == null) {
            this.mSimDataAdaptor = SimDataAdaptorFactory.create(this);
        }
        String emergencyImpu = this.mSimDataAdaptor.getEmergencyImpu(getEfImpuList());
        Mno simMno = getSimMno();
        if (emergencyImpu != null) {
            return emergencyImpu;
        }
        if (!hasNoSim()) {
            if (simMno == Mno.BELL) {
                String derivedImpuFromMsisdn = getDerivedImpuFromMsisdn();
                if (derivedImpuFromMsisdn != null) {
                    return derivedImpuFromMsisdn;
                }
            } else if (simMno != Mno.USCC) {
                return getDerivedImpu();
            }
        }
        return "sip:anonymous@anonymous.invalid";
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public Mno getDevMno() {
        return this.mDevMno;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public Mno getNetMno() {
        return this.mNetMno;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public Mno getSimMno() {
        return SimUtil.getSimMno(this.mSimSlot);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public Mno getMnoFromNetworkPlmn(String str) {
        return Mno.fromName(this.mMnoMap.getMnoNamesFromNetworkPlmn(str).stream().findFirst().orElse("DEFAULT"));
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public String getSimMnoName() {
        return this.mSimMnoName;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public void dump() {
        IMSLog.dump(LOG_TAG, this.mSimSlot, "Dump of " + getClass().getSimpleName() + ":");
        IMSLog.increaseIndent(LOG_TAG);
        IMSLog.dump(LOG_TAG, this.mSimSlot, "subID: " + this.mSubscriptionId);
        IMSLog.dump(LOG_TAG, this.mSimSlot, "mSimStatePrev: " + this.mSimStatePrev);
        IMSLog.dump(LOG_TAG, this.mSimSlot, "mSimState: " + this.mSimState);
        IMSLog.dump(LOG_TAG, this.mSimSlot, "mIsimLoaded: " + this.mIsimLoaded);
        IMSLog.dump(LOG_TAG, this.mSimSlot, "mIsOutBound: " + this.mIsOutBoundSIM);
        IMSLog.dump(LOG_TAG, this.mSimSlot, "mIsESim: " + this.mIsESim);
        if (this.mSimDataAdaptor != null) {
            IMSLog.dump(LOG_TAG, this.mSimSlot, "mSimDataAdaptor : " + this.mSimDataAdaptor.getClass().getSimpleName());
        }
        ITelephonyManager iTelephonyManager = this.mTelephonyManager;
        if (iTelephonyManager != null) {
            String imei = iTelephonyManager.getImei(this.mSimSlot);
            String primaryImei = this.mTelephonyManager.getPrimaryImei();
            IMSLog.dump(LOG_TAG, this.mSimSlot, "IMEI: " + LogRedactor.IMEI.redact(imei) + "(isPrimary: " + TextUtils.equals(primaryImei, imei) + ")");
            int i = this.mSimSlot;
            StringBuilder sb = new StringBuilder();
            sb.append("Operator: ");
            sb.append(this.mTelephonyManager.getSimOperator(this.mSubscriptionId));
            IMSLog.dump(LOG_TAG, i, sb.toString());
            IMSLog.dump(LOG_TAG, this.mSimSlot, "MSISDN: " + LogRedactor.MSISDN.redact(this.mTelephonyManager.getMsisdn(getSubscriptionId())));
            IMSLog.dump(LOG_TAG, this.mSimSlot, "IMSI: " + LogRedactor.IMSI.redact(this.mTelephonyManager.getSubscriberId(this.mSubscriptionId)));
            IMSLog.dump(LOG_TAG, this.mSimSlot, "ISIM DOMAIN: " + LogRedactor.DOMAIN.redact(this.mTelephonyManager.getIsimDomain(this.mSubscriptionId)));
            IMSLog.dump(LOG_TAG, this.mSimSlot, "IMPI: " + LogRedactor.IMPI.redact(this.mTelephonyManager.getIsimImpi(this.mSubscriptionId)));
            Optional.ofNullable(this.mTelephonyManager.getIsimImpu(this.mSubscriptionId)).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda7
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SimManager.this.lambda$dump$7((String[]) obj);
                }
            });
        }
        IMSLog.decreaseIndent(LOG_TAG);
        this.mEventLog.dump();
        this.mMnoMap.dump();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dump$7(String[] strArr) {
        int i = this.mSimSlot;
        StringBuilder sb = new StringBuilder();
        sb.append("IMPUs: ");
        Stream stream = Arrays.stream(strArr);
        final LogRedactor logRedactor = LogRedactor.IMPU;
        Objects.requireNonNull(logRedactor);
        sb.append((String) stream.map(new Function() { // from class: com.sec.internal.ims.core.sim.SimManager$$ExternalSyntheticLambda8
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return LogRedactor.this.redact((String) obj);
            }
        }).collect(Collectors.joining(", ", "[", "]")));
        IMSLog.dump(LOG_TAG, i, sb.toString());
    }

    public SimpleEventLog getSimpleEventLog() {
        return this.mEventLog;
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public ContentValues getMnoInfo() {
        return new ContentValues(this.mMnoInfoStorage.getAll());
    }

    protected void setGtsAppInstalled(boolean z) {
        this.mIsGtsAppInstalled = z;
    }

    protected boolean getGtsAppInstalled() {
        return this.mIsGtsAppInstalled;
    }

    String getMnoNameWithoutGcExtension(String str) {
        int indexOf = str.indexOf(Mno.GC_DELIMITER);
        return indexOf != -1 ? str.substring(0, indexOf) : str;
    }

    boolean isMnoHasGcBlockExtension(String str) {
        return str.toUpperCase().endsWith(Mno.GC_BLOCK_EXTENSION);
    }

    @Override // com.sec.internal.interfaces.ims.core.ISimManager
    public boolean isEsim() {
        return this.mIsESim;
    }

    int getSimMobilityType(List<ImsProfile> list) {
        boolean z = false;
        boolean z2 = false;
        for (ImsProfile imsProfile : list) {
            if (imsProfile.getSimMobility()) {
                z = true;
            }
            if (imsProfile.getSimMobilityForRcs()) {
                z2 = (DeviceUtil.isTablet() && SimUtil.getMno(this.mSimSlot).isEmeasewaoce()) ? false : true;
            }
        }
        if (z && z2) {
            return 3;
        }
        if (z) {
            return 1;
        }
        return z2 ? 2 : 0;
    }
}
