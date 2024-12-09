package com.sec.internal.ims.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.UriMatcher;
import android.database.ContentObserver;
import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.Settings;
import android.util.Log;
import com.sec.ims.extensions.Extensions;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.interfaces.ims.core.IRegistrationHandlerNotifiable;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class RegistrationObserverManager {
    private static final int EVENT_AIRPLANE_MODE = 3;
    private static final int EVENT_DATA_ROAMING = 2;
    private static final int EVENT_DOWNLOAD_CONFIG = 20;
    private static final int EVENT_DYNAMIC_UPDATED = 21;
    private static final int EVENT_ENRICHED_CALL_VBC_SETTING = 33;
    private static final int EVENT_IMS_DM_CONFIG = 9;
    private static final int EVENT_IMS_GLOBAL_SETTING = 6;
    private static final int EVENT_IMS_PROFILE_SETTING = 7;
    private static final int EVENT_MNOMAP_UPDATED = 29;
    private static final int EVENT_MOBILE_DATA = 4;
    private static final int EVENT_MOBILE_DATA_PRESSED = 5;
    private static final int EVENT_RCS_USER_SETTING_SLOT1 = 30;
    private static final int EVENT_RCS_USER_SETTING_SLOT2 = 31;
    private static final int EVENT_RESET_SMK_CONFIG = 22;
    private static final int EVENT_SIM_MOBILITY = 23;
    private static final int EVENT_VILTE_SLOT1 = 1;
    private static final int EVENT_VILTE_SLOT2 = 18;
    private static final int EVENT_VOLTE_ROAMING = 11;
    private static final int EVENT_VOLTE_SLOT1 = 0;
    private static final int EVENT_VOLTE_SLOT2 = 17;
    private static final int EVENT_VOWIFI_SLOT1 = 10;
    private static final int EVENT_VOWIFI_SLOT2 = 19;
    private static final String LOG_TAG = "RegiObsMgr";
    private static final String SILENT_LOG_CHANGED_ACTION = "com.sec.android.app.servicemodeapp.SILENT_LOG_CHANGED";
    private static UriMatcher sUriMatcher;
    protected Context mContext;
    RegContentObserver mRegContentObserver;
    protected RegistrationManagerBase mRegMan;
    protected IRegistrationHandlerNotifiable mRegManHandler;
    protected List<ISimManager> mSimManagers;
    protected HandlerThread mHandlerThread = null;
    protected Handler mHandler = null;
    private int mVoicecall_Type = -1;
    private int mVoicecall_Type2 = -1;
    ContentObserver mImsServiceSwitchObserver = null;
    private ChatbotAgreementObserver mChatbotAgreementObserver = null;
    private CompleteSetupWizardObserver mCompleteSetupWizardObserver = null;
    private BroadcastReceiver mSilentLogReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.RegistrationObserverManager.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean booleanExtra = intent.getBooleanExtra("onoff", false);
            Log.i(RegistrationObserverManager.LOG_TAG, "silentLog is changed " + booleanExtra);
            RegistrationObserverManager.this.mRegMan.setSilentLogEnabled(booleanExtra);
        }
    };
    private final BroadcastReceiver mLocationModeReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.core.RegistrationObserverManager.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean booleanExtra = intent.getBooleanExtra("android.location.extra.LOCATION_ENABLED", false);
            Log.i(RegistrationObserverManager.LOG_TAG, "Location mode is changed to " + booleanExtra);
            RegistrationObserverManager.this.onLocationModeChanged(SimUtil.getActiveDataPhoneId(), booleanExtra);
        }
    };

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        sUriMatcher = uriMatcher;
        ImsConstants.SystemSettings.addUri(uriMatcher, ImsConstants.SystemSettings.VOLTE_SLOT1, 0);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.VOLTE_SLOT2, 17);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.VILTE_SLOT1, 1);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.VILTE_SLOT2, 18);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.DATA_ROAMING, 2);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.AIRPLANE_MODE, 3);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.MOBILE_DATA, 4);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.MOBILE_DATA_PRESSED, 5);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.VOLTE_ROAMING, 11);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.IMS_GLOBAL, 6);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.IMS_PROFILES, 7);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.IMS_PROFILE_WITH_ID, 7);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.IMS_SIM_MOBILITY, 23);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.IMS_NV_STORAGE, 9);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.IMS_DM_CONFIG, 9);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.WIFI_CALL_ENABLE1, 10);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.WIFI_CALL_ENABLE2, 19);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.WIFI_CALL_PREFERRED1, 10);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.WIFI_CALL_PREFERRED2, 19);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.WIFI_CALL_WHEN_ROAMING1, 10);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.WIFI_CALL_WHEN_ROAMING2, 19);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.RESET_SMK_CONFIG, 22);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.MNOMAP_UPDATED, 29);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.DYNAMIC_IMS_UPDATED, 21);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.DOWNLOAD_SMK_CONFIG, 20);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.RCS_USER_SETTING1, 30);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.RCS_USER_SETTING2, 31);
        ImsConstants.SystemSettings.addUri(sUriMatcher, ImsConstants.SystemSettings.ENRICHED_CALL_VBC, 33);
    }

    RegistrationObserverManager(Context context, List<ISimManager> list) {
        this.mContext = context;
        this.mSimManagers = list;
    }

    RegistrationObserverManager(Context context, RegistrationManagerBase registrationManagerBase, List<ISimManager> list, RegistrationManagerHandler registrationManagerHandler) {
        this.mContext = context;
        this.mRegMan = registrationManagerBase;
        this.mSimManagers = list;
        this.mRegManHandler = registrationManagerHandler;
    }

    public void init() {
        HandlerThread handlerThread = new HandlerThread("RegistrationObserverManager");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
        this.mRegContentObserver = new RegContentObserver(this.mHandler);
        this.mImsServiceSwitchObserver = new ImsServiceSwitchObserver(this.mHandler);
        this.mChatbotAgreementObserver = new ChatbotAgreementObserver(this.mHandler);
        this.mCompleteSetupWizardObserver = new CompleteSetupWizardObserver(this.mHandler);
        registerSilentLogIntentReceiver();
        registerLocationModeReceiver();
        registerObservers();
        this.mVoicecall_Type = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, ImsConstants.Phone.SLOT_1);
        this.mVoicecall_Type2 = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, ImsConstants.Phone.SLOT_2);
    }

    void onRcsUserSettingChanged(int i) {
        int rcsUserSetting = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, 1, i);
        Log.i(LOG_TAG, "onRcsUserSettingChanged rcsUserSetting:" + rcsUserSetting);
        this.mRegManHandler.notifyRcsUserSettingChanged(rcsUserSetting, i);
    }

    void onVolteSettingChanged(int i) {
        int voiceCallType = ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, i);
        if (voiceCallType == -1) {
            IMSLog.i(LOG_TAG, i, "onVolteSettingChanged : unknown");
            return;
        }
        if (this.mSimManagers.get(i) == null) {
            return;
        }
        ImsConstants.SystemSettings.SettingsItem settingsItem = i == ImsConstants.Phone.SLOT_1 ? ImsConstants.SystemSettings.VOLTE_SLOT1 : ImsConstants.SystemSettings.VOLTE_SLOT2;
        if ((i == ImsConstants.Phone.SLOT_1 ? this.mVoicecall_Type : this.mVoicecall_Type2) != voiceCallType) {
            SimpleEventLog eventLog = this.mRegMan.getEventLog();
            StringBuilder sb = new StringBuilder();
            sb.append(settingsItem.getName());
            sb.append(" is changed, old ");
            sb.append(i == ImsConstants.Phone.SLOT_1 ? this.mVoicecall_Type : this.mVoicecall_Type2);
            sb.append(", new ");
            sb.append(voiceCallType);
            sb.append(", pkg ");
            sb.append(settingsItem.getPackage());
            eventLog.logAndAdd(sb.toString());
            if (i == ImsConstants.Phone.SLOT_1) {
                this.mVoicecall_Type = voiceCallType;
            } else {
                this.mVoicecall_Type2 = voiceCallType;
            }
        }
        boolean z = voiceCallType == 0;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onVolteSettingChanged : ");
        sb2.append(z ? "VOLTE" : "CS");
        IMSLog.i(LOG_TAG, i, sb2.toString());
        this.mRegManHandler.notifyVolteSettingChanged(z, false, i);
    }

    void onEnrichedCallVbcSettingChanged(int i) {
        IMSLog.i(LOG_TAG, i, "onEnrichedCallVbcSettingChanged");
        this.mRegManHandler.notifyEcVbcSettingChanged(i);
    }

    void onVilteSettingChanged(int i) {
        int videoCallType = ImsConstants.SystemSettings.getVideoCallType(this.mContext, -1, i);
        if (videoCallType == -1) {
            IMSLog.i(LOG_TAG, i, "onVilteSettingChanged : unknown");
            return;
        }
        boolean z = videoCallType == 0;
        IMSLog.i(LOG_TAG, i, "onVilteSettingChanged : " + z);
        this.mRegManHandler.notifyVolteSettingChanged(z, true, i);
    }

    void onVolteRoamingSettingChanged(int i) {
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager == null) {
            return;
        }
        Mno simMno = iSimManager.getSimMno();
        int i2 = ImsConstants.SystemSettings.VOLTE_ROAMING.get(this.mContext, ImsConstants.SystemSettings.VOLTE_ROAMING_ENABLED);
        StringBuilder sb = new StringBuilder();
        sb.append("onVolteRoamingSettingChanged: now [");
        sb.append(i2 == ImsConstants.SystemSettings.VOLTE_ROAMING_ENABLED ? "VOLTE" : "CS");
        sb.append("]");
        Log.i(LOG_TAG, sb.toString());
        if (simMno == Mno.KDDI) {
            this.mRegManHandler.notifyVolteSettingChanged(i2 == ImsConstants.SystemSettings.VOLTE_ROAMING_ENABLED, false, i);
        }
    }

    void onDataRoamingSettingChanged(int i) {
        int i2 = ImsConstants.SystemSettings.DATA_ROAMING.get(this.mContext, ImsConstants.SystemSettings.LTE_DATA_ROAMING_DISABLED);
        StringBuilder sb = new StringBuilder();
        sb.append("onDataRoamingSettingChanged: now [");
        sb.append(i2 == 1);
        sb.append("]");
        Log.i(LOG_TAG, sb.toString());
        this.mRegManHandler.notifyRoamingDataSettigChanged(i2, i);
    }

    void onAirplaneModeSettingChanged() {
        int i = Settings.Global.getInt(this.mContext.getContentResolver(), "airplane_mode_on", 0);
        IMSLog.LAZER_TYPE lazer_type = IMSLog.LAZER_TYPE.REGI;
        StringBuilder sb = new StringBuilder();
        sb.append("Airplane Mode Changed (");
        sb.append(i == 1);
        sb.append(")");
        IMSLog.lazer(lazer_type, sb.toString());
        this.mRegManHandler.notifyAirplaneModeChanged(i);
    }

    void onMobileDataSettingChanged(int i) {
        int i2 = Settings.Global.getInt(this.mContext.getContentResolver(), Extensions.Settings.Global.MOBILE_DATA, 1);
        StringBuilder sb = new StringBuilder();
        sb.append("onMobileDataSettingChanged: now [");
        sb.append(i2 == 1);
        sb.append("]");
        Log.i(LOG_TAG, sb.toString());
        this.mRegManHandler.notifyMobileDataSettingeChanged(i2, i);
    }

    void onMobileDataPressedSettingChanged(int i) {
        int i2 = Settings.Global.getInt(this.mContext.getContentResolver(), ImsConstants.SystemSettings.MOBILE_DATA_PRESSED.getName(), 1);
        StringBuilder sb = new StringBuilder();
        sb.append("onMobileDataPressedSettingChanged: now [");
        sb.append(i2 == 1);
        sb.append("]");
        Log.i(LOG_TAG, sb.toString());
        this.mRegManHandler.notifyMobileDataPressedSettingeChanged(i2, i);
    }

    void onImsSettingsChanged(Uri uri, int i) {
        Log.i(LOG_TAG, "onImsSettingsChanged, phoneId: " + i);
        this.mRegManHandler.notifyImsSettingChanged(uri, i);
    }

    void onMnoMapUpdated(Uri uri, int i) {
        Log.i(LOG_TAG, "onMnoMapUpdated, phoneId: " + i);
        this.mRegManHandler.notifyMnoMapUpdated(uri, i);
    }

    void onImsDmConfigChanged(Uri uri, int i) {
        Log.i(LOG_TAG, "onImsDmConfigChanged, phoneId: " + i);
        this.mRegManHandler.notifyConfigChanged(uri, i);
    }

    void onVoWiFiSettingsChanged(int i) {
        Log.i(LOG_TAG, "onVoWiFiSettingsChanged:");
        this.mRegManHandler.notifyVowifiSettingChanged(i, 0L);
    }

    void onLocationModeChanged(int i, boolean z) {
        Log.i(LOG_TAG, "onLocationModeChanged:");
        ISimManager iSimManager = this.mSimManagers.get(i);
        if (iSimManager != null && iSimManager.getSimMno() == Mno.SPRINT) {
            Log.i(LOG_TAG, "onLocationModeChanged: isLocationEnabled = " + z);
            if (z) {
                this.mRegManHandler.notifyLocationModeChanged();
            }
        }
    }

    void registerObservers(Uri uri, boolean z, ContentObserver contentObserver) {
        Uri parse = Uri.parse(uri.toString().replaceFirst("/\\*$", ""));
        if (!uri.equals(parse)) {
            Log.i(LOG_TAG, "registerObservers: validateUri [" + uri + "] -> [" + parse + "]");
            z = true;
        }
        try {
            this.mContext.getContentResolver().registerContentObserver(parse, z, contentObserver);
        } catch (SQLiteFullException | SecurityException e) {
            this.mRegMan.getEventLog().logAndAdd("registerObservers() : " + parse + " failed!");
            e.printStackTrace();
        }
    }

    void registerObservers() throws SQLiteFullException {
        Log.i(LOG_TAG, "registerObservers:");
        ArrayList arrayList = new ArrayList();
        Iterator<ISimManager> it = this.mSimManagers.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getSimMno());
        }
        registerObservers(ImsConstants.SystemSettings.VOLTE_SLOT1.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.VOLTE_SLOT2.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.RCS_USER_SETTING1.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.RCS_USER_SETTING2.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.VILTE_SLOT1.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.VILTE_SLOT2.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.DATA_ROAMING.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.AIRPLANE_MODE.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.MOBILE_DATA.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.MOBILE_DATA_PRESSED.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.IMS_SWITCHES.getUri(), false, this.mImsServiceSwitchObserver);
        registerObservers(ImsConstants.SystemSettings.WIFI_SETTING.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.IMS_GLOBAL.getUri(), true, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.IMS_PROFILE_WITH_ID.getUri(), true, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.IMS_SIM_MOBILITY.getUri(), true, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.IMS_NV_STORAGE.getUri(), true, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.IMS_DM_CONFIG.getUri(), true, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.ENRICHED_CALL_VBC.getUri(), false, this.mRegContentObserver);
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (((Mno) it2.next()) == Mno.KDDI) {
                registerObservers(ImsConstants.SystemSettings.VOLTE_ROAMING.getUri(), false, this.mRegContentObserver);
                break;
            }
        }
        registerObservers(ImsConstants.SystemSettings.WIFI_CALL_ENABLE1.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.WIFI_CALL_ENABLE2.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.WIFI_CALL_WHEN_ROAMING1.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.WIFI_CALL_WHEN_ROAMING2.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.WIFI_CALL_PREFERRED1.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.WIFI_CALL_PREFERRED2.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.PREFFERED_VOICE_CALL.getUri(), true, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.RESET_SMK_CONFIG.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.DOWNLOAD_SMK_CONFIG.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.MNOMAP_UPDATED.getUri(), false, this.mRegContentObserver);
        registerObservers(ImsConstants.SystemSettings.DYNAMIC_IMS_UPDATED.getUri(), false, this.mRegContentObserver);
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            } else if (((Mno) it3.next()).isKor()) {
                registerObservers(ImsConstants.Uris.MMS_PREFERENCE_PROVIDER_KEY_URI, false, this.mChatbotAgreementObserver);
                break;
            }
        }
        registerObservers(ImsConstants.SystemSettings.SETUP_WIZARD.getUri(), false, this.mCompleteSetupWizardObserver);
    }

    void registerSilentLogIntentReceiver() {
        Log.i(LOG_TAG, "registerSilentLogIntentReceiver");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(SILENT_LOG_CHANGED_ACTION);
        this.mContext.registerReceiver(this.mSilentLogReceiver, intentFilter);
    }

    void registerLocationModeReceiver() {
        Log.i(LOG_TAG, "registerLocationModeReceiver");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.location.MODE_CHANGED");
        this.mContext.registerReceiver(this.mLocationModeReceiver, intentFilter);
    }

    class ImsServiceSwitchObserver extends ContentObserver {
        public ImsServiceSwitchObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            Log.i(RegistrationObserverManager.LOG_TAG, "ImsServiceSwitch updated.");
            if (uri != null) {
                RegistrationObserverManager.this.mRegManHandler.notifyImsSettingUpdated(UriUtil.getSimSlotFromUri(uri));
            }
        }
    }

    class RegContentObserver extends ContentObserver {
        public RegContentObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            int match = RegistrationObserverManager.sUriMatcher.match(uri);
            Log.e(RegistrationObserverManager.LOG_TAG, "onChange: " + uri + " => match [" + match + "]");
            int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
            if (uri.getFragment() != null && uri.getFragment().contains("simslot")) {
                activeDataPhoneId = Character.getNumericValue(uri.getFragment().charAt(7));
                Log.i(RegistrationObserverManager.LOG_TAG, "query : Exist simslot on uri: " + activeDataPhoneId);
            }
            switch (match) {
                case 0:
                case 17:
                    RegistrationObserverManager.this.onVolteSettingChanged(match == 0 ? ImsConstants.Phone.SLOT_1 : ImsConstants.Phone.SLOT_2);
                    break;
                case 1:
                case 18:
                    RegistrationObserverManager.this.onVilteSettingChanged(match == 1 ? ImsConstants.Phone.SLOT_1 : ImsConstants.Phone.SLOT_2);
                    break;
                case 2:
                    RegistrationObserverManager.this.onDataRoamingSettingChanged(activeDataPhoneId);
                    break;
                case 3:
                    RegistrationObserverManager.this.onAirplaneModeSettingChanged();
                    break;
                case 4:
                    RegistrationObserverManager.this.onMobileDataSettingChanged(activeDataPhoneId);
                    break;
                case 5:
                    RegistrationObserverManager.this.onMobileDataPressedSettingChanged(activeDataPhoneId);
                    break;
                case 6:
                case 7:
                case 20:
                case 21:
                case 22:
                case 23:
                    RegistrationObserverManager.this.onImsSettingsChanged(uri, activeDataPhoneId);
                    break;
                case 9:
                    RegistrationObserverManager.this.onImsDmConfigChanged(uri, activeDataPhoneId);
                    break;
                case 10:
                case 19:
                    RegistrationObserverManager.this.onVoWiFiSettingsChanged(match == 10 ? ImsConstants.Phone.SLOT_1 : ImsConstants.Phone.SLOT_2);
                    break;
                case 11:
                    RegistrationObserverManager.this.onVolteRoamingSettingChanged(activeDataPhoneId);
                    break;
                case 29:
                    RegistrationObserverManager.this.onMnoMapUpdated(uri, activeDataPhoneId);
                    break;
                case 30:
                case 31:
                    RegistrationObserverManager.this.onRcsUserSettingChanged(match == 30 ? ImsConstants.Phone.SLOT_1 : ImsConstants.Phone.SLOT_2);
                    break;
                case 33:
                    RegistrationObserverManager.this.onEnrichedCallVbcSettingChanged(activeDataPhoneId);
                    break;
            }
        }
    }

    class ChatbotAgreementObserver extends ContentObserver {
        public ChatbotAgreementObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            int simSlotFromUri;
            ISimManager iSimManager;
            super.onChange(z);
            Log.i(RegistrationObserverManager.LOG_TAG, "ChatbotAgreementObserver onChange");
            if (uri == null || (iSimManager = RegistrationObserverManager.this.mSimManagers.get((simSlotFromUri = UriUtil.getSimSlotFromUri(uri)))) == null || !iSimManager.getSimMno().isKor()) {
                return;
            }
            RegistrationObserverManager.this.mRegManHandler.notifyChatbotAgreementChanged(simSlotFromUri);
        }
    }

    class CompleteSetupWizardObserver extends ContentObserver {
        public CompleteSetupWizardObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            boolean z2 = Settings.Secure.getInt(RegistrationObserverManager.this.mContext.getContentResolver(), "user_setup_complete", 0) == 1;
            Log.i(RegistrationObserverManager.LOG_TAG, "CompleteSetupWizard updated : " + z2);
            if (uri == null || !z2) {
                return;
            }
            RegistrationObserverManager.this.mRegManHandler.notifySetupWizardCompleted();
        }
    }
}
