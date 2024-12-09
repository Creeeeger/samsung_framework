package com.sec.internal.ims.settings;

import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.SemSystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.samsung.android.emergencymode.SemEmergencyManager;
import com.sec.ims.extensions.SemEmergencyConstantsExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.JsonUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.SystemUtil;
import com.sec.internal.ims.imsservice.ImsServiceStub;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.Map;

/* loaded from: classes.dex */
public class ImsServiceSwitchEur extends ImsServiceSwitchBase {
    private static final String LOG_TAG = "ImsServiceSwitchEur";
    private BroadcastReceiver mDefaultSmsPackageChangeReceiver;
    protected EmergencyEventBroadcastReceiver mEmEventReceiver;
    private boolean mEmergencyEnabled;
    private boolean mUpsmEnabled;

    public ImsServiceSwitchEur(Context context, int i) {
        super(context, i);
        this.mEmEventReceiver = null;
        this.mUpsmEnabled = false;
        this.mEmergencyEnabled = false;
        this.mDefaultSmsPackageChangeReceiver = new BroadcastReceiver() { // from class: com.sec.internal.ims.settings.ImsServiceSwitchEur.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (intent != null && "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL".equals(intent.getAction())) {
                    boolean isDefaultMessageAppInUse = ImsServiceSwitchEur.this.isDefaultMessageAppInUse();
                    Log.i("ImsServiceSwitchEur[" + ImsServiceSwitchEur.this.mPhoneId + "]", "onChange: RCS DefaultSmsObserver. [" + isDefaultMessageAppInUse + "]");
                    ImsServiceSwitchEur imsServiceSwitchEur = ImsServiceSwitchEur.this;
                    SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(imsServiceSwitchEur.mPhoneId, imsServiceSwitchEur.mContext, "imsswitch", 0, false).edit();
                    if (isDefaultMessageAppInUse) {
                        ImsServiceSwitchEur.this.mDefaultSms = true;
                        edit.putBoolean("defaultsms", true);
                    } else {
                        ImsServiceSwitchEur.this.mDefaultSms = false;
                        edit.putBoolean("defaultsms", false);
                    }
                    edit.apply();
                }
                if (Mno.RJIL.equals(SimUtil.getMno(ImsServiceSwitchEur.this.mPhoneId))) {
                    ImsServiceSwitchEur.this.mContext.getContentResolver().notifyChange(UriUtil.buildUri("content://com.sec.ims.settings/imsswitch", ImsServiceSwitchEur.this.mPhoneId), null);
                }
            }
        };
        registerDefaultSmsPackageChangeReceiver();
        SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false);
        if (!sharedPref.contains("defaultsms") || sharedPref.getBoolean("defaultsms", false)) {
            this.mDefaultSms = true;
            SharedPreferences.Editor edit = sharedPref.edit();
            edit.putBoolean("defaultsms", this.mDefaultSms);
            edit.apply();
        } else {
            this.mDefaultSms = false;
        }
        setEmEventReceiver();
    }

    public void registerDefaultSmsPackageChangeReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL");
        this.mContext.registerReceiver(this.mDefaultSmsPackageChangeReceiver, intentFilter);
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase, com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isRcsEnabled() {
        if (this.isLoded && getDefaultMessageApp() != null) {
            boolean isDefaultMessageAppInUse = isDefaultMessageAppInUse();
            SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false).edit();
            this.mDefaultSms = isDefaultMessageAppInUse;
            edit.putBoolean("defaultsms", isDefaultMessageAppInUse);
            edit.apply();
            this.isLoded = false;
        }
        Log.i("ImsServiceSwitchEur[" + this.mPhoneId + "]", " isRcsEnabled: " + this.mRcsEnabled + " mDefaultSms " + this.mDefaultSms + " mUpsmEnabled " + this.mUpsmEnabled + " mEmergencyEnabled " + this.mEmergencyEnabled);
        return this.mRcsEnabled && !this.mUpsmEnabled && this.mDefaultSms && !this.mEmergencyEnabled;
    }

    private void setEmEventReceiver() {
        Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "setEmEventReceiver. ");
        if (this.mEmEventReceiver != null) {
            Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "mEmEventReceiver is not null. ");
            return;
        }
        registerEmEventReceiver();
        SemEmergencyManager semEmergencyManager = SemEmergencyManager.getInstance(this.mContext);
        if (semEmergencyManager == null || !SemEmergencyManager.isEmergencyMode(this.mContext)) {
            return;
        }
        if (SystemUtil.checkUltraPowerSavingMode(semEmergencyManager) || semEmergencyManager.checkModeType(16)) {
            Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "emergency mode is already set, so send upsm event.");
            onEmergencyModeChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onEmergencyModeChanged() {
        Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "onEmergencyModeChanged.");
        SemEmergencyManager semEmergencyManager = SemEmergencyManager.getInstance(this.mContext);
        if (semEmergencyManager == null) {
            Log.e(LOG_TAG, " onEmergencyModeChanged: SemEmergencyManager is null!");
            return;
        }
        Log.i("ImsServiceSwitchEur[" + this.mPhoneId + "]", "Emergency is " + SemEmergencyManager.isEmergencyMode(this.mContext));
        Log.i("ImsServiceSwitchEur[" + this.mPhoneId + "]", "UPSM is " + SystemUtil.checkUltraPowerSavingMode(semEmergencyManager));
        if (SemEmergencyManager.isEmergencyMode(this.mContext) && semEmergencyManager.checkModeType(16)) {
            if (this.mEmergencyEnabled) {
                Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "Emergency mode is already enabled, so skip.");
                return;
            }
            this.mEmergencyEnabled = true;
            if (this.mRcsEnabled) {
                Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "Emergency mode is enabled.");
                persist();
                return;
            }
            Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "Emergency mode is enabled: rcs off, so no change.");
            return;
        }
        if (SemEmergencyManager.isEmergencyMode(this.mContext) && SystemUtil.checkUltraPowerSavingMode(semEmergencyManager)) {
            if (this.mUpsmEnabled) {
                Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "UPSM is already enabled, so skip.");
                return;
            }
            this.mUpsmEnabled = true;
            if (this.mRcsEnabled) {
                Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "UPSM is enabled.");
                persist();
                return;
            }
            Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "UPSM is enabled: rcs off, so no change.");
            return;
        }
        if (this.mEmergencyEnabled) {
            Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "Emergency mode is disabled.");
            this.mEmergencyEnabled = false;
            persist();
            if (this.mRcsEnabled) {
                forceNotifyToApp(this.mPhoneId);
                return;
            }
            return;
        }
        if (this.mUpsmEnabled) {
            Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "UPSM is disabled.");
            this.mUpsmEnabled = false;
            persist();
            if (this.mRcsEnabled) {
                forceNotifyToApp(this.mPhoneId);
            }
        }
    }

    private void forceNotifyToApp(int i) {
        IRegistrationManager registrationManager = ImsServiceStub.makeImsService(this.mContext).getRegistrationManager();
        if (registrationManager != null) {
            registrationManager.forceNotifyToApp(i);
        }
    }

    protected class EmergencyEventBroadcastReceiver extends BroadcastReceiver {
        protected EmergencyEventBroadcastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.i("ImsServiceSwitchEur[" + ImsServiceSwitchEur.this.mPhoneId + "]", "Received EmEvent: " + intent.getAction() + " extra: " + intent.getExtras());
            ImsServiceSwitchEur.this.onEmergencyModeChanged();
        }
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase, com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isEnabled(String str) {
        if (this.mVolteServiceSwitch.containsKey(str)) {
            return "ss".equals(str) ? (this.mSsEnabled || this.mVoLteEnabled) && this.mVolteServiceSwitch.get(str).booleanValue() : this.mVoLteEnabled && this.mVolteServiceSwitch.get(str).booleanValue();
        }
        if (this.mRcsServiceSwitch.containsKey(str)) {
            return isRcsEnabled() && this.mRcsServiceSwitch.get(str).booleanValue();
        }
        return false;
    }

    private void registerEmEventReceiver() {
        Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "registerEmEventReceiver. ");
        this.mEmEventReceiver = new EmergencyEventBroadcastReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_STATE_CHANGED");
        intentFilter.addAction(SemEmergencyConstantsExt.EMERGENCY_CHECK_ABNORMAL_STATE);
        intentFilter.addAction("com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER");
        this.mContext.registerReceiver(this.mEmEventReceiver, intentFilter);
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase, com.sec.internal.ims.settings.ImsServiceSwitch
    public void unregisterObserver() {
        unregisterEventListener();
        unregisterEmEventReceiver();
    }

    private void unregisterEventListener() {
        Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "unregisterEventListener. ");
        try {
            this.mContext.unregisterReceiver(this.mDefaultSmsPackageChangeReceiver);
        } catch (IllegalArgumentException unused) {
            Log.e(LOG_TAG, "DefaultSmsPackageChangeReceiver is not registered!");
        }
    }

    private void unregisterEmEventReceiver() {
        EmergencyEventBroadcastReceiver emergencyEventBroadcastReceiver = this.mEmEventReceiver;
        if (emergencyEventBroadcastReceiver == null) {
            Log.d("ImsServiceSwitchEur[" + this.mPhoneId + "]", "mEmEventReceiver is null. ");
            return;
        }
        try {
            try {
                this.mContext.unregisterReceiver(emergencyEventBroadcastReceiver);
            } catch (IllegalArgumentException unused) {
                Log.e(LOG_TAG, "EmEventReceiver is not registered!");
            }
        } finally {
            this.mEmEventReceiver = null;
        }
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected void initCallComposer(boolean z, boolean z2) {
        this.mVolteServiceSwitch.put("mmtel-call-composer", Boolean.FALSE);
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected void loadImsSwitchFromSharedPreferences() {
        SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false);
        String[] voLteServiceList = ImsProfile.getVoLteServiceList();
        String[] rcsServiceList = ImsProfile.getRcsServiceList();
        for (String str : voLteServiceList) {
            this.mVolteServiceSwitch.put(str, Boolean.valueOf(sharedPref.getBoolean(str, false)));
        }
        for (String str2 : rcsServiceList) {
            this.mRcsServiceSwitch.put(str2, Boolean.valueOf(sharedPref.getBoolean(str2, false)));
        }
        this.mVoLteEnabled = ImsSharedPrefHelper.getBoolean(this.mPhoneId, this.mContext, "imsswitch", "volte", false);
        this.mSsEnabled = ImsSharedPrefHelper.getBoolean(this.mPhoneId, this.mContext, "imsswitch", "ss", false);
        if (DeviceUtil.isTablet()) {
            this.mRcsEnabled = false;
        } else {
            this.mRcsEnabled = sharedPref.getBoolean(DeviceConfigManager.RCS, false);
        }
        if (!sharedPref.contains(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION)) {
            Log.d(LOG_TAG, "load: new switch chatbot-communication being set to " + this.mRcsEnabled);
            this.mRcsServiceSwitch.put(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION, Boolean.valueOf(this.mRcsEnabled));
            persist();
        }
        dumpServiceSwitch();
        IMSLog.c(LogClass.SWITCH_LOAD, this.mPhoneId + ",LOAD:" + getSwitchDump());
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected void updateServiceSwitchInternal(ContentValues contentValues) {
        if (CollectionUtils.getBooleanValue(contentValues, ISimManager.KEY_GLOBALGC_ENABLED, false) && !DeviceUtil.isTablet()) {
            ContentValues contentValues2 = new ContentValues();
            Boolean bool = Boolean.TRUE;
            contentValues2.put(ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, bool);
            contentValues2.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, bool);
            contentValues2.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, bool);
            contentValues.putAll(contentValues2);
        }
        if (DeviceUtil.isTablet()) {
            ContentValues contentValues3 = new ContentValues();
            Boolean bool2 = Boolean.FALSE;
            contentValues3.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, bool2);
            contentValues3.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, bool2);
            contentValues.putAll(contentValues3);
        }
        boolean booleanValue = CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, false);
        boolean booleanValue2 = CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, false);
        boolean z = booleanValue && booleanValue2 && CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, false);
        boolean z2 = booleanValue && CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE, false);
        boolean z3 = booleanValue && CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, false);
        boolean z4 = booleanValue && CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, false);
        if (booleanValue) {
            parseImsSwitch(contentValues);
            if (z2 || z3) {
                Map<String, Boolean> map = this.mServiceMap;
                Boolean bool3 = Boolean.TRUE;
                map.put("mmtel", bool3);
                this.mServiceMap.put("ss", bool3);
                this.mServiceMap.put("datachannel", bool3);
            }
            IMSLog.i(LOG_TAG, this.mPhoneId, "updateServiceSwitch: isEnableRcs : " + booleanValue2);
            if (booleanValue2) {
                enableRcsSwitch(z);
            }
        }
        this.mEventLog.logAndAdd(this.mPhoneId, "updateServiceSwitch: Ims[" + booleanValue + "] Rcs[" + booleanValue2 + "] RcsChat[" + z + "] Volte[" + z2 + "] Vowifi[" + z3 + "] Smsip[" + z4 + "] ");
        this.mVoLteEnabled = z2 || z3 || z4;
        this.mRcsEnabled = booleanValue2;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected ContentValues loadImsSwitchFromJson(String str, String str2, int i) {
        IMSLog.d(LOG_TAG, this.mPhoneId, "loadImsSwitchFromJson: mnoname=" + str + ",  mvnoname=" + str2);
        ContentValues contentValues = new ContentValues();
        if (TextUtils.isEmpty(str)) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "load: loadImsSwitchFromJson is not identified.");
            return contentValues;
        }
        JsonElement imsSwitchFromJson = ImsServiceSwitchLoader.getImsSwitchFromJson(this.mContext, str, this.mPhoneId);
        if (imsSwitchFromJson.isJsonNull()) {
            return contentValues;
        }
        JsonObject asJsonObject = imsSwitchFromJson.getAsJsonObject();
        JsonElement jsonElement = asJsonObject.get("defaultswitch");
        if (jsonElement.isJsonNull()) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "load: No default setting.");
            return contentValues;
        }
        JsonElement matchedJsonElement = ImsServiceSwitchLoader.getMatchedJsonElement(this.mContext, asJsonObject, str, str2, this.mPhoneId);
        if (DeviceUtil.isTablet()) {
            matchedJsonElement = applyTabletPolicy(jsonElement, matchedJsonElement, str, str2);
        }
        JsonElement merge = JsonUtil.merge(jsonElement, matchedJsonElement);
        if (!JsonUtil.isValidJsonElement(merge)) {
            return contentValues;
        }
        JsonObject asJsonObject2 = merge.getAsJsonObject();
        for (Map.Entry entry : asJsonObject2.entrySet()) {
            String str3 = (String) entry.getKey();
            JsonElement jsonElement2 = (JsonElement) entry.getValue();
            if (!str3.equals("csc_customization")) {
                contentValues.put(str3, jsonElement2.getAsString());
            }
        }
        if (contentValues.size() > 0) {
            contentValues = applyCscCustomizationSwitch(contentValues, asJsonObject2);
        }
        return overrideImsSwitchForCarrier(contentValues);
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected ContentValues getInitImsSwitch() {
        ContentValues contentValues = new ContentValues();
        for (String str : ImsServiceSwitch.getImsServiceSwitchTable()) {
            if (str.equals(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS) || str.equals(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE)) {
                contentValues.put(str, Boolean.valueOf(isCscRcsEnabled()));
            } else {
                contentValues.put(str, Boolean.TRUE);
            }
        }
        return contentValues;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected boolean isCscRcsEnabled() {
        return !DeviceUtil.isTablet();
    }

    private boolean needToCheckTabletPolicy(String str, String str2) {
        if (ImsAutoUpdate.getInstance(this.mContext, this.mPhoneId).isMatchedImsSwitch(3, str, str2) || ImsAutoUpdate.getInstance(this.mContext, this.mPhoneId).isMatchedImsSwitch(4, str, str2)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "No need to check Tablet policy - AutoUpdate is matched");
            return false;
        }
        if ("SM-P619".equalsIgnoreCase(Build.MODEL) || SemSystemProperties.getInt(ImsConstants.SystemProperties.FIRST_API_VERSION, 0) < 30) {
            return true;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "No need to check Tablet policy - first API version is more than 30");
        return false;
    }

    private JsonElement applyTabletPolicy(JsonElement jsonElement, JsonElement jsonElement2, String str, String str2) {
        if (!needToCheckTabletPolicy(str, str2)) {
            return jsonElement2;
        }
        if (!JsonUtil.isValidJsonElement(jsonElement2)) {
            Log.i(LOG_TAG, "Not a valid matchedSwitchElement.");
            return jsonElement2;
        }
        Mno fromName = Mno.fromName(jsonElement2.getAsJsonObject().get("mnoname").getAsString());
        if (fromName.isOneOf(Mno.RJIL, Mno.VODAFONE_INDIA, Mno.AIRTEL, Mno.IDEA_INDIA, Mno.BSNL, Mno.TELSTRA, Mno.OPTUS, Mno.VODAFONE_AUSTRALIA, Mno.CELCOM, Mno.DIGI, Mno.P1, Mno.UMOBILE, Mno.YTL, Mno.MAXIS_MY, Mno.SMARTFREN, Mno.TELKOMSEL, Mno.INDOSAT_ID, Mno.XL_ID, Mno.TRI_ID, Mno.VIETTEL, Mno.VIETNAMOBILE, Mno.VINAPHONE, Mno.MOBIFONE, Mno.LAOTEL, Mno.METFONE_CAMBODIA, Mno.SEATEL_CAMBODIA, Mno.SMART_CAMBODIA, Mno.CELLCARD_CAMBODIA, Mno.CHT, Mno.APT, Mno.TSTAR, Mno.FET, Mno.TWM, Mno.DLOG, Mno.MOBITEL_LK, Mno.HUTCH_LK, Mno.NAMASTE, Mno.NCELL, Mno.OOREDOO_MV, Mno.GRAMEENPHONE, Mno.ROBI, Mno.AIRTEL_LK)) {
            Log.i(LOG_TAG, "support ImsService in Tablet");
            return jsonElement2;
        }
        if ((fromName.isNZ() || fromName.isSG()) && "SM-T976B".equalsIgnoreCase(Build.MODEL)) {
            Log.i(LOG_TAG, "NZ, SG support ImsService in SM-T976B Tablet");
            return jsonElement2;
        }
        Log.i(LOG_TAG, "Don't support ImsService in Tablet for this operator");
        return JsonUtil.merge(jsonElement2, jsonElement);
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitchBase
    protected ContentValues overrideImsSwitchForCarrier(ContentValues contentValues) {
        String asString = contentValues.getAsString("mnoname");
        if (("Telstra_AU".equals(asString) || "Telstra_AU:MVNO".equals(asString) || "Vodafone_AU".equals(asString)) && SemSystemProperties.getInt(ImsConstants.SystemProperties.FIRST_API_VERSION, 0) > 30) {
            contentValues.put(ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL, ConfigConstants.VALUE.INFO_COMPLETED);
        }
        return contentValues;
    }
}
