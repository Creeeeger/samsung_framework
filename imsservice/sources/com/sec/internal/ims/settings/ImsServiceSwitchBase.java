package com.sec.internal.ims.settings;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SemSystemProperties;
import android.provider.Settings;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.JsonUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Optional;

/* loaded from: classes.dex */
public class ImsServiceSwitchBase extends ImsServiceSwitch {
    private final String LOG_TAG;
    protected Map<String, Boolean> mServiceMap;

    protected boolean isCscRcsEnabled() {
        return true;
    }

    protected ContentValues overrideImsSwitchForCarrier(ContentValues contentValues) {
        return contentValues;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void unregisterObserver() {
    }

    public ImsServiceSwitchBase(Context context, int i) {
        String simpleName = ImsServiceSwitchBase.class.getSimpleName();
        this.LOG_TAG = simpleName;
        this.mServiceMap = new HashMap();
        this.mContext = context;
        this.mPhoneId = i;
        Log.d(simpleName + "[" + this.mPhoneId + "]", "created");
        this.mEventLog = new SimpleEventLog(this.mContext, i, simpleName, 200);
        initSwitchPref(ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false).contains("volte"));
        dumpServiceSwitch();
    }

    protected void initSwitchPref(boolean z) {
        if (z) {
            loadImsSwitchFromSharedPreferences();
        } else {
            init();
        }
    }

    public void init() {
        boolean z;
        boolean z2;
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "init:");
        String str = SemSystemProperties.get(Mno.MOCK_MNO_PROPERTY, "");
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        int simState = TelephonyManagerWrapper.getInstance(this.mContext).getSimState(this.mPhoneId);
        if (TextUtils.isEmpty(str) && simState != 0 && simState != 1) {
            if (simManagerFromSimSlot == null) {
                Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "init: Not SIM ready yet.");
            } else {
                z = simManagerFromSimSlot.isLabSimCard();
                z2 = simManagerFromSimSlot.isSimLoaded();
                initServiceSwitch(z, z2);
                persist();
            }
        }
        z = false;
        z2 = false;
        initServiceSwitch(z, z2);
        persist();
    }

    public void loadImsSwitchFromResource() {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "loadImsSwitchFromResource");
        if (SimUtil.isSoftphoneEnabled()) {
            this.mEventLog.logAndAdd(this.mPhoneId, "loadImsSwitchFromResource: skip : ATT Softphone");
            return;
        }
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        if (simManagerFromSimSlot != null) {
            if (simManagerFromSimSlot.isLabSimCard() || !simManagerFromSimSlot.isSimLoaded()) {
                SimpleEventLog simpleEventLog = this.mEventLog;
                int i = this.mPhoneId;
                StringBuilder sb = new StringBuilder();
                sb.append("loadImsSwitchFromResource: skip : LAB SIM:");
                sb.append(simManagerFromSimSlot.isLabSimCard());
                sb.append(" or SIM not Loaded:");
                sb.append(!simManagerFromSimSlot.isSimLoaded());
                simpleEventLog.logAndAdd(i, sb.toString());
                return;
            }
            String simMnoName = simManagerFromSimSlot.getSimMnoName();
            String mvnoName = SimUtil.getMvnoName(simMnoName);
            ContentValues loadImsSwitchFromJson = loadImsSwitchFromJson(simManagerFromSimSlot.getSimMno().getName(), mvnoName, 4);
            if (SimUtil.isSimMobilityAvailable(this.mContext, this.mPhoneId, simManagerFromSimSlot.getSimMno()) && !ImsUtil.isSimMobilityActivatedForRcs(this.mPhoneId)) {
                Boolean bool = Boolean.FALSE;
                loadImsSwitchFromJson.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, bool);
                loadImsSwitchFromJson.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, bool);
                this.mEventLog.logAndAdd(this.mPhoneId, "Disable RCS in SimMobility");
            }
            loadImsSwitchFromJson.put(ISimManager.KEY_GLOBALGC_ENABLED, Boolean.valueOf(ConfigUtil.getGlobalGcEnabled(this.mContext, this.mPhoneId)));
            turnOffAllSwitch();
            updateServiceSwitchInternal(loadImsSwitchFromJson);
            saveImsSwitch(loadImsSwitchFromJson);
            enable(this.mServiceMap);
            this.mEventLog.logAndAdd(this.mPhoneId, "loadImsSwitchFromResource: mno:" + simMnoName + " mvno:" + mvnoName + " enableIms:" + CollectionUtils.getBooleanValue(loadImsSwitchFromJson, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, false) + " enableVoWifi:" + CollectionUtils.getBooleanValue(loadImsSwitchFromJson, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, false) + " enableServiceVolte: " + CollectionUtils.getBooleanValue(loadImsSwitchFromJson, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE, false) + " enableServiceVilte: " + CollectionUtils.getBooleanValue(loadImsSwitchFromJson, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL, false) + " enableServiceSmsip: " + CollectionUtils.getBooleanValue(loadImsSwitchFromJson, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, false) + " enableServiceRcs: " + CollectionUtils.getBooleanValue(loadImsSwitchFromJson, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, false) + " enableServiceRcschat:" + CollectionUtils.getBooleanValue(loadImsSwitchFromJson, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, false));
            return;
        }
        IMSLog.e(this.LOG_TAG, this.mPhoneId, "SimManager is null");
    }

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
        this.mVoLteEnabled = sharedPref.getBoolean("volte", false);
        this.mRcsEnabled = sharedPref.getBoolean(DeviceConfigManager.RCS, false);
        this.mSsEnabled = sharedPref.getBoolean("ss", false);
        if (!sharedPref.contains(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION)) {
            Log.d(this.LOG_TAG, "load: new switch chatbot-communication being set to " + this.mRcsEnabled);
            this.mRcsServiceSwitch.put(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION, Boolean.valueOf(this.mRcsEnabled));
            persist();
        }
        dumpServiceSwitch();
        IMSLog.c(LogClass.SWITCH_LOAD, this.mPhoneId + ",LOAD:" + getSwitchDump());
    }

    @SuppressLint({"WorldReadableFiles"})
    protected void persist() {
        Log.d(this.LOG_TAG, "persist.");
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false).edit();
        for (Map.Entry<String, Boolean> entry : this.mVolteServiceSwitch.entrySet()) {
            edit.putBoolean(entry.getKey(), entry.getValue().booleanValue());
        }
        for (Map.Entry<String, Boolean> entry2 : this.mRcsServiceSwitch.entrySet()) {
            edit.putBoolean(entry2.getKey(), entry2.getValue().booleanValue());
        }
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "load: volte [" + this.mVoLteEnabled + "], rcs [" + this.mRcsEnabled + "]");
        edit.putBoolean("volte", this.mVoLteEnabled);
        edit.putBoolean(DeviceConfigManager.RCS, this.mRcsEnabled);
        edit.putBoolean("ss", this.mSsEnabled);
        edit.apply();
        this.mContext.getContentResolver().notifyChange(UriUtil.buildUri("content://com.sec.ims.settings/imsswitch", this.mPhoneId), null);
        this.mContext.getContentResolver().notifyChange(UriUtil.buildUri("content://com.sec.ims.settings/imsswitch/mmtel", this.mPhoneId), null);
        this.mContext.getContentResolver().notifyChange(UriUtil.buildUri("content://com.sec.ims.settings/imsswitch/mmtel-video", this.mPhoneId), null);
    }

    public String getIpmeSpKeyName(String str) {
        return "ipme_status_" + str;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void updateServiceSwitch(ContentValues contentValues) {
        int intValue;
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "updateServiceSwitch:");
        boolean booleanValue = ((Boolean) Optional.ofNullable(contentValues.getAsBoolean(ISimManager.KEY_HAS_SIM)).orElse(Boolean.FALSE)).booleanValue();
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        boolean z = simManagerFromSimSlot != null && simManagerFromSimSlot.isLabSimCard();
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "updateServiceSwitch: isLabSimCard [" + z + "]");
        int intValue2 = ((Integer) Optional.ofNullable(contentValues.getAsInteger(ISimManager.KEY_IMSSWITCH_TYPE)).orElse(0)).intValue();
        if (!booleanValue || (z && intValue2 != 4 && intValue2 != 3)) {
            this.mContext.sendBroadcast(new Intent("android.intent.action.IMS_SETTINGS_UPDATED"));
            IMSLog.e(this.LOG_TAG, this.mPhoneId, "No operator code for settings. Update UI!");
            return;
        }
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "updateMno: hasSim:" + booleanValue + ", imsSwitchType:" + intValue2 + ", mnoinfo:" + contentValues);
        if (intValue2 != 3 && intValue2 != 4 && intValue2 != 5) {
            IMSLog.e(this.LOG_TAG, this.mPhoneId, "can not find a matched ims switch type");
            init();
            return;
        }
        ContentValues loadImsSwitchFromJson = loadImsSwitchFromJson(contentValues.getAsString("mnoname"), contentValues.getAsString(ISimManager.KEY_MVNO_NAME), intValue2);
        if (intValue2 == 4) {
            if (loadImsSwitchFromJson.size() > 0) {
                loadImsSwitchFromJson.remove("mnoname");
                contentValues.putAll(loadImsSwitchFromJson);
            } else {
                Iterator<String> it = ImsServiceSwitch.getImsServiceSwitchTable().iterator();
                while (it.hasNext()) {
                    contentValues.put(it.next(), Boolean.FALSE);
                }
            }
        } else if (intValue2 == 3 && ((intValue = ((Integer) Optional.ofNullable(contentValues.getAsInteger(ISimManager.KEY_SIMMO_TYPE)).orElse(0)).intValue()) == 3 || intValue == 1)) {
            String[] strArr = {ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE};
            for (int i = 0; i < 5; i++) {
                String str = strArr[i];
                contentValues.put(str, loadImsSwitchFromJson.getAsBoolean(str));
            }
        }
        turnOffAllSwitch();
        updateServiceSwitchInternal(contentValues);
        saveImsSwitch(contentValues);
        enable(this.mServiceMap);
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void enable(String str, boolean z) {
        IMSLog.i(this.LOG_TAG + "[" + this.mPhoneId + "]", "enable: " + str + " : " + z);
        if (this.mVolteServiceSwitch.containsKey(str)) {
            this.mVolteServiceSwitch.put(str, Boolean.valueOf(z));
        }
        if (this.mRcsServiceSwitch.containsKey(str)) {
            this.mRcsServiceSwitch.put(str, Boolean.valueOf(z));
        }
        persist();
    }

    public void enable(Map<String, Boolean> map) {
        for (Map.Entry<String, Boolean> entry : map.entrySet()) {
            String key = entry.getKey();
            Boolean valueOf = Boolean.valueOf(entry.getValue().booleanValue());
            if (this.mVolteServiceSwitch.containsKey(key)) {
                this.mVolteServiceSwitch.put(key, valueOf);
            }
            if (this.mRcsServiceSwitch.containsKey(key)) {
                this.mRcsServiceSwitch.put(key, valueOf);
            }
        }
        this.mEventLog.logAndAdd(this.mPhoneId, "enable: volte: " + this.mVolteServiceSwitch.toString());
        this.mEventLog.logAndAdd(this.mPhoneId, "enable: rcs: " + this.mRcsServiceSwitch.toString());
        persist();
    }

    public String toString() {
        return "Simslot[" + this.mPhoneId + "] ImsServiceSwitch mRcsEnabled [" + this.mRcsEnabled + "], mVoLteEnabled [" + this.mVoLteEnabled + "], mVolteServiceSwitch [" + this.mVolteServiceSwitch + "], mRcsServiceSwitch [" + this.mRcsServiceSwitch + "]";
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isImsEnabled() {
        return isVoLteEnabled() || isRcsEnabled();
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isEnabled(String str) {
        if (this.mVolteServiceSwitch.containsKey(str)) {
            return "ss".equals(str) ? (this.mSsEnabled || this.mVoLteEnabled) && this.mVolteServiceSwitch.get(str).booleanValue() : this.mVoLteEnabled && this.mVolteServiceSwitch.get(str).booleanValue();
        }
        if (this.mRcsServiceSwitch.containsKey(str)) {
            return this.mRcsEnabled && this.mRcsServiceSwitch.get(str).booleanValue();
        }
        return false;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isVoLteEnabled() {
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "isVoLteEnabled: " + this.mVoLteEnabled);
        return this.mVoLteEnabled;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void enableVoLte(boolean z) {
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "enableVoLte: " + z);
        this.mVoLteEnabled = z;
        persist();
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isRcsEnabled() {
        return this.mRcsEnabled;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isRcsSwitchEnabled() {
        return this.mRcsEnabled;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void enableRcs(boolean z) {
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "enableRcs: " + z);
        this.mRcsEnabled = z;
        persist();
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public boolean isDefaultMessageAppInUse() {
        String str;
        boolean equals;
        try {
            str = Telephony.Sms.getDefaultSmsPackage(this.mContext);
        } catch (Exception e) {
            Log.e(this.LOG_TAG + "[" + this.mPhoneId + "]", "Failed to getDefaultSmsPackage: ", e);
            str = null;
        }
        if (str == null) {
            str = Settings.Secure.getString(this.mContext.getContentResolver(), "sms_default_application");
            Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "smsApplication is null check from Settings : " + str);
        }
        if (str == null) {
            Log.e(this.LOG_TAG + "[" + this.mPhoneId + "]", "smsApplication is null");
            equals = false;
        } else {
            equals = TextUtils.equals(str, PackageUtils.getMsgAppPkgName(this.mContext));
        }
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "isDefaultMessageAppInUse : Result [" + equals + "] Name [" + str + "] ");
        return equals;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void doInit() {
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "doInit from ImsSettings");
        init();
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public int getVideoCallType(String str) {
        String videoSpKeyName = getVideoSpKeyName(str);
        int i = ImsSharedPrefHelper.getInt(this.mPhoneId, this.mContext, "imsswitch", videoSpKeyName, -1);
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "getVideoCallType: " + videoSpKeyName + " = [" + i + "]");
        return i;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void setVideoCallType(String str, int i) {
        String videoSpKeyName = getVideoSpKeyName(str);
        ImsSharedPrefHelper.save(this.mPhoneId, this.mContext, "imsswitch", videoSpKeyName, i);
        this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] setVideoCallType: " + videoSpKeyName + " = [" + i + "]");
    }

    private String getVideoSpKeyName(String str) {
        return ImsConstants.SystemSettings.VILTE_SLOT1.getName() + "_" + str;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public int getVoiceCallType(String str) {
        String voLteSpKeyName = getVoLteSpKeyName(str);
        int i = ImsSharedPrefHelper.getInt(this.mPhoneId, this.mContext, "imsswitch", voLteSpKeyName, -1);
        IMSLog.i(this.LOG_TAG + "[" + this.mPhoneId + "]", "getVoiceCallType: " + voLteSpKeyName + " = [" + i + "]");
        return i;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void setVoiceCallType(String str, int i) {
        String voLteSpKeyName = getVoLteSpKeyName(str);
        ImsSharedPrefHelper.save(this.mPhoneId, this.mContext, "imsswitch", voLteSpKeyName, i);
        this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] setVoiceCallType: " + voLteSpKeyName + " = [" + i + "]");
    }

    private String getVoLteSpKeyName(String str) {
        return ImsConstants.SystemSettings.VOLTE_SLOT1.getName() + "_" + str;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public int getRcsUserSetting() {
        String rcsUserSettingSpKeyName = getRcsUserSettingSpKeyName();
        int i = ImsSharedPrefHelper.getInt(this.mPhoneId, this.mContext, "imsswitch", rcsUserSettingSpKeyName, -1);
        IMSLog.i(this.LOG_TAG + "[" + this.mPhoneId + "]", "getRcsUserSetting: " + IMSLog.numberChecker(rcsUserSettingSpKeyName) + " = [" + i + "]");
        return i;
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void setRcsUserSetting(int i) {
        ImsSharedPrefHelper.save(this.mPhoneId, this.mContext, "imsswitch", getRcsUserSettingSpKeyName(), i);
    }

    private String getRcsUserSettingSpKeyName() {
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        return ImsConstants.SystemSettings.RCS_USER_SETTING1.getName() + "_" + (simManagerFromSimSlot != null ? simManagerFromSimSlot.getImsi() : "");
    }

    @Override // com.sec.internal.ims.settings.ImsServiceSwitch
    public void dump() {
        this.mEventLog.dump();
        IMSLog.increaseIndent(this.LOG_TAG);
        IMSLog.dump(this.LOG_TAG, "Last state of " + this.LOG_TAG + "<" + this.mPhoneId + ">:");
        IMSLog.increaseIndent(this.LOG_TAG);
        IMSLog.dump(this.LOG_TAG, "mVoLteEnabled [" + this.mVoLteEnabled + "], mRcsEnabled [" + this.mRcsEnabled + "]");
        for (Map.Entry<String, Boolean> entry : this.mVolteServiceSwitch.entrySet()) {
            IMSLog.dump(this.LOG_TAG, "<" + this.mPhoneId + "> " + entry.getKey() + " = " + entry.getValue());
        }
        for (Map.Entry<String, Boolean> entry2 : this.mRcsServiceSwitch.entrySet()) {
            IMSLog.dump(this.LOG_TAG, "<" + this.mPhoneId + "> " + entry2.getKey() + " = " + entry2.getValue());
        }
        IMSLog.decreaseIndent(this.LOG_TAG);
        IMSLog.decreaseIndent(this.LOG_TAG);
    }

    public String getDefaultMessageApp() {
        String str;
        try {
            str = Telephony.Sms.getDefaultSmsPackage(this.mContext);
        } catch (Exception e) {
            Log.e(this.LOG_TAG + "[" + this.mPhoneId + "]", "Failed to getDefaultSmsPackage: ", e);
            str = null;
        }
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "getDefaultMessageApp : [" + str + "] ");
        return str;
    }

    protected void initVolteServiceSwitch(boolean z) {
        this.mVoLteEnabled = z;
        this.mSsEnabled = z;
        for (String str : ImsProfile.getVoLteServiceList()) {
            this.mVolteServiceSwitch.put(str, Boolean.valueOf(z));
        }
    }

    protected void initCallComposer(boolean z, boolean z2) {
        this.mVolteServiceSwitch.put("mmtel-call-composer", Boolean.valueOf(z && z2));
    }

    protected void initRcsServiceSwitch(boolean z) {
        this.mRcsEnabled = z;
        for (String str : ImsProfile.getRcsServiceList()) {
            if (!TextUtils.equals(str, "plug-in")) {
                this.mRcsServiceSwitch.put(str, Boolean.valueOf(z));
            }
        }
    }

    protected void initServiceSwitch(boolean z, boolean z2) {
        if (!DeviceUtil.getGcfMode() && !"GCF".equalsIgnoreCase(OmcCode.get()) && !z && z2 && !SimUtil.isSoftphoneEnabled()) {
            loadImsSwitchFromResource();
            return;
        }
        boolean isCscRcsEnabled = isCscRcsEnabled();
        ContentValues initImsSwitch = getInitImsSwitch();
        if (!isCscRcsEnabled) {
            Boolean bool = Boolean.FALSE;
            initImsSwitch.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, bool);
            initImsSwitch.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, bool);
        }
        saveImsSwitch(initImsSwitch);
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "init: volteEnabled=true");
        initVolteServiceSwitch(true);
        initCallComposer(true, isCscRcsEnabled);
        Log.d(this.LOG_TAG + "[" + this.mPhoneId + "]", "init: rcsEnabled=" + isCscRcsEnabled);
        initRcsServiceSwitch(isCscRcsEnabled);
        StringBuilder sb = new StringBuilder();
        sb.append(this.mPhoneId);
        sb.append(",INIT SW:");
        sb.append("1_");
        sb.append("1_");
        sb.append(isCscRcsEnabled ? "1_" : "0_");
        IMSLog.c(LogClass.SWITCH_INIT_DONE, sb.toString());
    }

    protected ContentValues getInitImsSwitch() {
        ContentValues contentValues = new ContentValues();
        Iterator<String> it = ImsServiceSwitch.getImsServiceSwitchTable().iterator();
        while (it.hasNext()) {
            contentValues.put(it.next(), Boolean.TRUE);
        }
        return contentValues;
    }

    protected void turnOffAllSwitch() {
        this.mServiceMap.clear();
        for (String str : ImsProfile.getVoLteServiceList()) {
            this.mServiceMap.put(str, Boolean.FALSE);
        }
        for (String str2 : ImsProfile.getRcsServiceList()) {
            this.mServiceMap.put(str2, Boolean.FALSE);
        }
        this.mEventLog.logAndAdd(this.mPhoneId, "updateServiceSwitch: Turning all the switches off.");
    }

    protected void parseImsSwitch(ContentValues contentValues) {
        for (Map.Entry<String, String> entry : ImsServiceSwitch.getVolteServiceSwitchTable().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            String asString = contentValues.getAsString(key);
            this.mEventLog.logAndAdd(this.mPhoneId, "CSC(Json) field: " + key + "[" + asString + "] -> Switching " + value);
            if ("TRUE".equalsIgnoreCase(asString)) {
                this.mServiceMap.put(value, Boolean.TRUE);
                IMSLog.c(LogClass.SWITCH_UPDATE_ON, this.mPhoneId + ",ON:" + value);
            }
        }
    }

    protected void enableRcsSwitch(boolean z) {
        for (String str : ImsProfile.getRcsServiceList()) {
            this.mServiceMap.put(str, Boolean.TRUE);
        }
        this.mEventLog.logAndAdd(this.mPhoneId, "updateServiceSwitch: Turning on all the RCS services.");
        if (z) {
            return;
        }
        this.mEventLog.logAndAdd(this.mPhoneId, "updateServiceSwitch: Turning off RCS Chat Service");
        for (String str2 : ImsProfile.getChatServiceList()) {
            this.mServiceMap.put(str2, Boolean.FALSE);
        }
        IMSLog.c(LogClass.SWITCH_UPDATE_OFF_CHAT, this.mPhoneId + ",OFF CHAT SW");
    }

    protected void updateServiceSwitchInternal(ContentValues contentValues) {
        if (CollectionUtils.getBooleanValue(contentValues, ISimManager.KEY_GLOBALGC_ENABLED, false)) {
            ContentValues contentValues2 = new ContentValues();
            Boolean bool = Boolean.TRUE;
            contentValues2.put(ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, bool);
            contentValues2.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, bool);
            contentValues2.put(ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, bool);
            contentValues.putAll(contentValues2);
        }
        if (DeviceUtil.isTablet() && TextUtils.equals("TMobile_US", contentValues.getAsString("mnoname")) && TextUtils.equals("Inbound", contentValues.getAsString(ISimManager.KEY_MVNO_NAME)) && TelephonyManagerWrapper.getInstance(this.mContext).isVoiceCapable()) {
            ContentValues contentValues3 = new ContentValues();
            Boolean bool2 = Boolean.TRUE;
            contentValues3.put(ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, bool2);
            contentValues3.put(ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE, bool2);
            contentValues3.put(ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, bool2);
            contentValues.putAll(contentValues3);
        }
        boolean booleanValue = CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, false);
        boolean booleanValue2 = CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, false);
        boolean z = booleanValue && booleanValue2 && CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, false);
        boolean z2 = booleanValue && (CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE, false) || CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, false) || CollectionUtils.getBooleanValue(contentValues, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, false));
        if (booleanValue) {
            parseImsSwitch(contentValues);
            if (z2) {
                Map<String, Boolean> map = this.mServiceMap;
                Boolean bool3 = Boolean.TRUE;
                map.put("ss", bool3);
                this.mServiceMap.put("datachannel", bool3);
            }
            if (booleanValue2) {
                enableRcsSwitch(z);
                SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false);
                ImsConstants.SystemSettings.SettingsItem settingsItem = ImsConstants.SystemSettings.RCS_USER_SETTING1;
                if (sharedPref.contains(settingsItem.getName()) && (Mno.SPRINT == Mno.fromName(contentValues.getAsString("mnoname")) || ConfigUtil.isRcsChn(Mno.fromName(contentValues.getAsString("mnoname"))))) {
                    booleanValue2 = sharedPref.getBoolean(settingsItem.getName(), true);
                }
                if (booleanValue2 && z2) {
                    this.mServiceMap.put("mmtel-call-composer", Boolean.TRUE);
                }
            }
        }
        this.mEventLog.logAndAdd(this.mPhoneId, "updateServiceSwitch: ims [" + booleanValue + "] volte [" + z2 + "] rcs [" + booleanValue2 + "]");
        this.mVoLteEnabled = z2;
        this.mRcsEnabled = booleanValue2;
    }

    protected ContentValues loadImsSwitchFromJson(String str, String str2, int i) {
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "loadImsSwitchFromJson: mnoname=" + str + ", mvnoname=" + str2 + ", imsSwitchType=" + i);
        ContentValues contentValues = new ContentValues();
        if (TextUtils.isEmpty(str)) {
            IMSLog.e(this.LOG_TAG, this.mPhoneId, "load: loadImsSwitchFromJson is not identified.");
            return contentValues;
        }
        JsonElement imsSwitchFromJson = ImsServiceSwitchLoader.getImsSwitchFromJson(this.mContext, str, this.mPhoneId);
        if (imsSwitchFromJson.isJsonNull()) {
            return contentValues;
        }
        JsonObject asJsonObject = imsSwitchFromJson.getAsJsonObject();
        JsonElement jsonElement = asJsonObject.get("defaultswitch");
        if (jsonElement.isJsonNull()) {
            IMSLog.e(this.LOG_TAG, this.mPhoneId, "load: No default setting.");
            return contentValues;
        }
        JsonElement matchedJsonElement = ImsServiceSwitchLoader.getMatchedJsonElement(this.mContext, asJsonObject, str, str2, this.mPhoneId);
        if (i == 3 && matchedJsonElement.isJsonNull()) {
            IMSLog.d(this.LOG_TAG, "No matched mnoname for SimMobility. Turn all ON");
            String[] strArr = {ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL, ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE};
            for (int i2 = 0; i2 < 5; i2++) {
                contentValues.put(strArr[i2], Boolean.TRUE);
            }
            return contentValues;
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

    protected ContentValues applyCscCustomizationSwitch(ContentValues contentValues, JsonObject jsonObject) {
        JsonArray asJsonArray = jsonObject.getAsJsonArray("csc_customization");
        if (!JsonUtil.isValidJsonElement(asJsonArray)) {
            IMSLog.e(this.LOG_TAG, this.mPhoneId, "applyCscCustomizationSwitch : No csc custom option.");
            return contentValues;
        }
        Iterator it = asJsonArray.iterator();
        while (it.hasNext()) {
            JsonObject asJsonObject = ((JsonElement) it.next()).getAsJsonObject();
            String nWCode = OmcCode.getNWCode(this.mPhoneId);
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "applyCscCustomizationSwitch : salesCode [ " + nWCode + " ], csc [ " + asJsonObject.get("csc").getAsString() + " ]");
            if (nWCode.equals(asJsonObject.get("csc").getAsString())) {
                for (Map.Entry entry : asJsonObject.entrySet()) {
                    contentValues.put((String) entry.getKey(), ((JsonElement) entry.getValue()).getAsString());
                }
            }
        }
        return contentValues;
    }
}
