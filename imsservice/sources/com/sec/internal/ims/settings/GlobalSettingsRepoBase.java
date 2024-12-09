package com.sec.internal.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.SemSystemProperties;
import android.telephony.SubscriptionManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.sec.imsservice.R;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.JsonUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.util.CarrierConfigUtil;
import com.sec.internal.ims.util.CscParser;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class GlobalSettingsRepoBase extends GlobalSettingsRepo {
    private final String LOG_TAG;
    protected ImsAutoUpdate mAutoUpdate;
    protected SimpleEventLog mEventLog;
    protected ImsSimMobilityUpdate mImsSimMobilityUpdate;

    protected void cleanUp() {
    }

    protected boolean isRcsUserSettingValueAllowed(int i) {
        return i == -1 || i == 0 || i == 1 || i == 2;
    }

    public GlobalSettingsRepoBase(Context context, int i) {
        String simpleName = GlobalSettingsRepoBase.class.getSimpleName();
        this.LOG_TAG = simpleName;
        this.mContext = context;
        this.mPhoneId = i;
        this.mEventLog = new SimpleEventLog(context, i, simpleName, 200);
        this.mAutoUpdate = ImsAutoUpdate.getInstance(this.mContext, i);
        this.mImsSimMobilityUpdate = ImsSimMobilityUpdate.getInstance(this.mContext);
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public void update(ContentValues contentValues) {
        synchronized (this.mLock) {
            save(contentValues);
        }
    }

    protected void save(JsonObject jsonObject) {
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, 0, false).edit();
        for (Map.Entry entry : jsonObject.entrySet()) {
            String str = (String) entry.getKey();
            JsonElement jsonElement = (JsonElement) entry.getValue();
            String str2 = this.LOG_TAG;
            int i = this.mPhoneId;
            StringBuilder sb = new StringBuilder();
            sb.append("save : ");
            sb.append(str);
            sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            sb.append(jsonElement != null ? jsonElement.toString() : "null");
            IMSLog.d(str2, i, sb.toString());
            if (jsonElement != null) {
                if (jsonElement.isJsonArray() || jsonElement.isJsonObject()) {
                    edit.putString(str, jsonElement.toString());
                } else {
                    JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                    if (asJsonPrimitive.isBoolean()) {
                        if (asJsonPrimitive.getAsBoolean()) {
                            edit.putString(str, "1");
                        } else {
                            edit.putString(str, "0");
                        }
                    } else {
                        edit.putString(str, jsonElement.getAsString());
                    }
                }
            }
        }
        edit.apply();
    }

    protected void save(ContentValues contentValues) {
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, 0, false).edit();
        for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
            String str = this.LOG_TAG;
            int i = this.mPhoneId;
            StringBuilder sb = new StringBuilder();
            sb.append("   ");
            sb.append(entry.getKey());
            sb.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            sb.append(entry.getValue() != null ? entry.getValue().toString() : "null");
            IMSLog.d(str, i, sb.toString());
            if (entry.getValue() != null) {
                edit.putString(entry.getKey(), entry.getValue().toString());
            }
        }
        edit.apply();
    }

    private Map<String, Object> readSettings(String str, String[] strArr) {
        HashMap hashMap = new HashMap();
        SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, str, 0, false);
        if (strArr != null) {
            for (String str2 : strArr) {
                if (!sharedPref.contains(str2)) {
                    Log.e(this.LOG_TAG, str + " No matched key : " + str2);
                    hashMap.put(str2, null);
                }
                try {
                    try {
                        hashMap.put(str2, sharedPref.getString(str2, null));
                    } catch (ClassCastException unused) {
                        hashMap.put(str2, Integer.valueOf(sharedPref.getInt(str2, 0)));
                    }
                } catch (ClassCastException e) {
                    e.printStackTrace();
                    throw new IllegalArgumentException("Boolean type is not supported in globalSettings");
                }
            }
        } else {
            hashMap.putAll(sharedPref.getAll());
        }
        return hashMap;
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public Cursor query(String[] strArr, String str, String[] strArr2) {
        if (!isLoaded()) {
            Log.e(this.LOG_TAG, "query: globalsettings not loaded. loading now.");
            load();
        }
        HashMap hashMap = new HashMap(readSettings(ImsSharedPrefHelper.GLOBAL_SETTINGS, strArr));
        if (getGlobalGcEnabled()) {
            for (Map.Entry<String, Object> entry : readSettings(ImsSharedPrefHelper.GLOBAL_GC_SETTINGS, strArr).entrySet()) {
                if (entry.getValue() != null) {
                    if (TextUtils.equals(entry.getKey(), GlobalSettingsConstants.Registration.BLOCK_REGI_ON_INVALID_ISIM) || TextUtils.equals(entry.getKey(), GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN) || TextUtils.equals(entry.getKey(), GlobalSettingsConstants.Registration.SHOW_REGI_INFO_IN_SEC_SETTINGS) || TextUtils.equals(entry.getKey(), "mnoname")) {
                        Log.i(this.LOG_TAG, "query: Don't override some values");
                    } else {
                        hashMap.put(entry.getKey(), entry.getValue());
                    }
                }
            }
        }
        MatrixCursor matrixCursor = new MatrixCursor((String[]) hashMap.keySet().toArray(new String[0]));
        matrixCursor.addRow(hashMap.values());
        return matrixCursor;
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public void load() {
        synchronized (this.mLock) {
            if (!isLoaded()) {
                String nWCode = OmcCode.getNWCode(this.mPhoneId);
                Mno fromSalesCode = Mno.fromSalesCode(nWCode);
                IMSLog.d(this.LOG_TAG, this.mPhoneId, "load: initial with OMCNW_CODE(" + nWCode + ") Mno=" + fromSalesCode.getName());
                loadGlobalSettingsFromJson(SimUtil.isSoftphoneEnabled(), fromSalesCode.getName(), 0, new ContentValues());
            }
        }
    }

    protected void loadGlobalGcSettings(boolean z) {
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "loadGlobalGcSettings isGlobalGcEnabled=" + z);
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_GC_SETTINGS, 0, false).edit();
        edit.clear();
        if (z) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, " getResources : globalsettings.json");
            try {
                InputStream openRawResource = this.mContext.getResources().openRawResource(R.raw.globalsettings);
                try {
                    JsonReader jsonReader = new JsonReader(new BufferedReader(new InputStreamReader(openRawResource)));
                    try {
                        JsonElement parse = new JsonParser().parse(jsonReader);
                        jsonReader.close();
                        if (openRawResource != null) {
                            openRawResource.close();
                        }
                        JsonArray asJsonArray = parse.getAsJsonObject().getAsJsonArray(ImsAutoUpdate.TAG_GLOBALSETTING);
                        if (!JsonUtil.isValidJsonElement(asJsonArray)) {
                            IMSLog.e(this.LOG_TAG, this.mPhoneId, "load: parse failed.");
                            return;
                        }
                        JsonElement jsonElement = JsonNull.INSTANCE;
                        Iterator it = asJsonArray.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            JsonElement jsonElement2 = (JsonElement) it.next();
                            JsonElement asJsonObject = jsonElement2.getAsJsonObject();
                            if (jsonElement2.getAsJsonObject().get("mnoname").getAsString().equalsIgnoreCase("GoogleGC_ALL")) {
                                IMSLog.d(this.LOG_TAG, this.mPhoneId, "loadGlobalGcSettings GoogleGC_ALL found");
                                jsonElement = asJsonObject;
                                break;
                            }
                        }
                        if (jsonElement.isJsonNull()) {
                            IMSLog.i(this.LOG_TAG, this.mPhoneId, "loadGlobalGcSettings GoogleGC_ALL is not exist");
                            return;
                        }
                        ImsAutoUpdate imsAutoUpdate = this.mAutoUpdate;
                        if (imsAutoUpdate != null) {
                            jsonElement = imsAutoUpdate.getUpdatedGlobalSetting(jsonElement);
                        }
                        for (Map.Entry entry : jsonElement.getAsJsonObject().entrySet()) {
                            String str = (String) entry.getKey();
                            JsonElement jsonElement3 = (JsonElement) entry.getValue();
                            IMSLog.d(this.LOG_TAG, this.mPhoneId, "save : " + str + AuthenticationHeaders.HEADER_PRARAM_SPERATOR + jsonElement3);
                            if (jsonElement3 != null) {
                                if (jsonElement3.isJsonArray()) {
                                    edit.putString(str, jsonElement3.toString());
                                } else {
                                    JsonPrimitive asJsonPrimitive = jsonElement3.getAsJsonPrimitive();
                                    if (asJsonPrimitive.isBoolean()) {
                                        if (asJsonPrimitive.getAsBoolean()) {
                                            edit.putString(str, "1");
                                        } else {
                                            edit.putString(str, "0");
                                        }
                                    } else {
                                        edit.putString(str, jsonElement3.getAsString());
                                    }
                                }
                            }
                        }
                    } finally {
                    }
                } finally {
                }
            } catch (IOException e) {
                e.printStackTrace();
                return;
            }
        }
        edit.apply();
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public void loadByDynamicConfig() {
        synchronized (this.mLock) {
            ContentValues contentValues = this.mMnoinfo;
            if (contentValues != null) {
                Boolean asBoolean = contentValues.getAsBoolean(ISimManager.KEY_HAS_SIM);
                if (asBoolean == null) {
                    asBoolean = Boolean.FALSE;
                }
                Boolean asBoolean2 = this.mMnoinfo.getAsBoolean(ISimManager.KEY_GLOBALGC_ENABLED);
                if (asBoolean2 == null) {
                    asBoolean2 = Boolean.FALSE;
                }
                String asString = this.mMnoinfo.getAsString("mnoname");
                String asString2 = this.mMnoinfo.getAsString(ISimManager.KEY_MVNO_NAME);
                Integer asInteger = this.mMnoinfo.getAsInteger(ISimManager.KEY_IMSSWITCH_TYPE);
                if (asInteger == null) {
                    asInteger = 0;
                }
                loadGlobalSettingsFromJson(asBoolean.booleanValue(), asString, asString2, asInteger.intValue(), this.mMnoinfo);
                loadGlobalGcSettings(asBoolean2.booleanValue());
            }
        }
    }

    public boolean isLoaded() {
        return ImsSharedPrefHelper.getBoolean(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, "loaded", false);
    }

    public void loadGlobalSettingsFromJson(boolean z, String str, int i, ContentValues contentValues) {
        loadGlobalSettingsFromJson(z, str, "", i, contentValues);
    }

    protected void loadGlobalSettingsFromJson(boolean z, String str, String str2, int i, ContentValues contentValues) {
        String str3;
        boolean z2;
        JsonElement merge;
        boolean z3;
        ContentValues contentValues2;
        this.mEventLog.logAndAdd(this.mPhoneId, "loadGlobalSettingsFromJson: from resource: mno:" + str + "mvno:" + str2);
        if (str == null || str.isEmpty()) {
            IMSLog.e(this.LOG_TAG, this.mPhoneId, "load: globalSettings is not identified.");
            return;
        }
        Mno fromName = Mno.fromName(str);
        if (TextUtils.isEmpty(str2)) {
            str3 = str;
            z2 = false;
        } else {
            str3 = str + Mno.MVNO_DELIMITER + str2;
            z2 = true;
        }
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.mContext.getResources().openRawResource(R.raw.globalsettings);
                JsonParser jsonParser = new JsonParser();
                JsonReader jsonReader = new JsonReader(new BufferedReader(new InputStreamReader(inputStream)));
                JsonElement parse = jsonParser.parse(jsonReader);
                jsonReader.close();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
                JsonObject asJsonObject = parse.getAsJsonObject();
                JsonElement jsonElement = asJsonObject.get(ImsAutoUpdate.TAG_GLOBALSETTINGS_DEFAULT);
                if (jsonElement.isJsonNull()) {
                    IMSLog.e(this.LOG_TAG, this.mPhoneId, "load: No default setting.");
                    return;
                }
                JsonElement jsonElement2 = asJsonObject.get(ImsAutoUpdate.TAG_GLOBALSETTINGS_NOHIT);
                ImsAutoUpdate imsAutoUpdate = this.mAutoUpdate;
                if (imsAutoUpdate != null) {
                    jsonElement2 = imsAutoUpdate.applyNohitSettingUpdate(jsonElement2);
                    jsonElement = this.mAutoUpdate.applyDefaultSettingUpdate(jsonElement);
                }
                JsonElement jsonElement3 = JsonNull.INSTANCE;
                if (fromName != Mno.DEFAULT) {
                    JsonArray asJsonArray = asJsonObject.getAsJsonArray(ImsAutoUpdate.TAG_GLOBALSETTING);
                    if (!JsonUtil.isValidJsonElement(asJsonArray)) {
                        IMSLog.e(this.LOG_TAG, this.mPhoneId, "load: parse failed.");
                        return;
                    }
                    Iterator it = asJsonArray.iterator();
                    JsonElement jsonElement4 = jsonElement3;
                    while (it.hasNext()) {
                        JsonElement jsonElement5 = (JsonElement) it.next();
                        JsonElement asJsonObject2 = jsonElement5.getAsJsonObject();
                        String asString = jsonElement5.getAsJsonObject().get("mnoname").getAsString();
                        if (z2) {
                            if (asString.equalsIgnoreCase(str3)) {
                                IMSLog.d(this.LOG_TAG, this.mPhoneId, "loadGlobalSettings - mvnoname on json:" + asString + " found");
                                jsonElement3 = asJsonObject2;
                                break;
                            }
                            if (asString.equalsIgnoreCase(str)) {
                                jsonElement4 = asJsonObject2;
                            }
                        } else if (asString.equalsIgnoreCase(str)) {
                            IMSLog.d(this.LOG_TAG, this.mPhoneId, "loadGlobalSettings - mnoname on json:" + asString + " found");
                            jsonElement3 = asJsonObject2;
                            break;
                        }
                    }
                    if (jsonElement3.isJsonNull()) {
                        JsonElement jsonObject = new JsonObject();
                        jsonObject.addProperty("mnoname", str3);
                        ImsAutoUpdate imsAutoUpdate2 = this.mAutoUpdate;
                        if (imsAutoUpdate2 != null) {
                            jsonObject = imsAutoUpdate2.getUpdatedGlobalSetting(jsonObject);
                        }
                        if (jsonObject.getAsJsonObject().size() <= 1) {
                            IMSLog.d(this.LOG_TAG, this.mPhoneId, "loadGlobalSettings - not matched");
                            if (z2 && !jsonElement4.isJsonNull()) {
                                IMSLog.d(this.LOG_TAG, this.mPhoneId, "loadGlobalSettings - primary mnoname on json:" + str + " found");
                                jsonElement2 = i == 3 ? this.mImsSimMobilityUpdate.overrideGlobalSettingsForSimMobilityUpdateOnDemand(jsonElement4, this.mPhoneId) : jsonElement4;
                                ImsAutoUpdate imsAutoUpdate3 = this.mAutoUpdate;
                                if (imsAutoUpdate3 != null) {
                                    jsonElement2 = imsAutoUpdate3.getUpdatedGlobalSetting(jsonElement2);
                                }
                            } else {
                                IMSLog.e(this.LOG_TAG, this.mPhoneId, "load: No matched setting load default setting");
                            }
                        } else {
                            jsonElement2 = jsonObject;
                        }
                    } else {
                        if (i == 3) {
                            jsonElement3 = this.mImsSimMobilityUpdate.overrideGlobalSettingsForSimMobilityUpdateOnDemand(jsonElement3, this.mPhoneId);
                        }
                        ImsAutoUpdate imsAutoUpdate4 = this.mAutoUpdate;
                        jsonElement2 = imsAutoUpdate4 != null ? imsAutoUpdate4.getUpdatedGlobalSetting(jsonElement3) : jsonElement3;
                    }
                    merge = JsonUtil.merge(jsonElement, jsonElement2);
                } else {
                    merge = JsonUtil.merge(jsonElement, jsonElement2);
                }
                JsonObject asJsonObject3 = merge.getAsJsonObject();
                if ("XAS".equals(OmcCode.getNWCode(this.mPhoneId))) {
                    overwriteXasGlobalSettings(asJsonObject3);
                }
                if (OmcCode.isJPNOmcCode()) {
                    overwriteJpnDataOnlyGlobalSettings(asJsonObject3);
                }
                save(asJsonObject3);
                if (fromName != Mno.DEFAULT) {
                    z3 = z;
                    contentValues2 = contentValues;
                    if (z3) {
                        setInitialSettings(asJsonObject3, contentValues2);
                    }
                } else {
                    z3 = z;
                    contentValues2 = contentValues;
                }
                SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, 0, false).edit();
                edit.putBoolean("loaded", true);
                edit.putString("nwcode", OmcCode.getNWCode(this.mPhoneId));
                edit.putString("mnoname", str);
                edit.putInt("cscimssettingtype", i);
                edit.putBoolean(ISimManager.KEY_HAS_SIM, z3);
                edit.putBoolean("gcfmode", DeviceUtil.getGcfMode());
                edit.putString("buildinfo", saveBuildInfo());
                String asString2 = contentValues2.getAsString("imsi");
                if (!TextUtils.isEmpty(asString2)) {
                    edit.putString("imsi", asString2);
                }
                edit.apply();
                CarrierConfigUtil.overrideConfigFromGlobalSettings(this.mContext, this.mPhoneId, asJsonObject3);
            } catch (IOException e2) {
                e2.printStackTrace();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
            }
        } finally {
        }
    }

    protected void overwriteXasGlobalSettings(JsonObject jsonObject) {
        jsonObject.addProperty(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, DiagnosisConstants.RCSM_ORST_REGI);
        jsonObject.addProperty(GlobalSettingsConstants.Call.EMERGENCY_CALL_DOMAIN, "PS");
        jsonObject.addProperty(GlobalSettingsConstants.SS.DOMAIN, "ps_only_psregied");
    }

    protected void overwriteJpnDataOnlyGlobalSettings(JsonObject jsonObject) {
        IMSLog.i(this.LOG_TAG, "overwriteJpnDataOnlyGlobalSettings");
        jsonObject.addProperty(GlobalSettingsConstants.Registration.VOICE_DOMAIN_PREF_EUTRAN, DiagnosisConstants.RCSM_ORST_REGI);
    }

    protected void setInitialSettings(JsonObject jsonObject, ContentValues contentValues) {
        if (ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, this.mPhoneId) == -1) {
            int i = !jsonObject.get(GlobalSettingsConstants.Registration.VOLTE_DOMESTIC_DEFAULT_ENABLED).getAsBoolean() ? 1 : 0;
            ImsConstants.SystemSettings.setVoiceCallType(this.mContext, i, this.mPhoneId);
            String str = i == 0 ? "1" : "0";
            int subId = SimUtil.getSubId(this.mPhoneId);
            if (subId != -1) {
                SubscriptionManager.setSubscriptionProperty(subId, "volte_vt_enabled", str);
            }
            this.mEventLog.logAndAdd(this.mPhoneId, "Set voicecall_type to [" + i + "] from global settings as initial");
            IMSLog.c(LogClass.GLOBAL_INIT_VOICE_DB, this.mPhoneId + ",INITIAL:" + i + ", SIMINFO:" + str);
        }
        if (ImsConstants.SystemSettings.getVideoCallType(this.mContext, -1, this.mPhoneId) == -1) {
            int i2 = !jsonObject.get(GlobalSettingsConstants.Registration.VIDEO_DEFAULT_ENABLED).getAsBoolean() ? 1 : 0;
            ImsConstants.SystemSettings.setVideoCallType(this.mContext, i2, this.mPhoneId);
            String str2 = i2 != 0 ? "0" : "1";
            int subId2 = SimUtil.getSubId(this.mPhoneId);
            if (subId2 != -1) {
                SubscriptionManager.setSubscriptionProperty(subId2, "vt_ims_enabled", str2);
            }
            this.mEventLog.logAndAdd(this.mPhoneId, "Set videocall_type to [" + i2 + "] from global settings as initial");
            IMSLog.c(LogClass.GLOBAL_INIT_VIDEO_DB, this.mPhoneId + ",INITIAL:" + i2 + ", SIMINFO:" + str2);
        }
        boolean booleanValue = CollectionUtils.getBooleanValue(contentValues, ISimManager.KEY_GLOBALGC_ENABLED, false);
        if (ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -1, this.mPhoneId) != -1 || booleanValue) {
            return;
        }
        int asInt = jsonObject.get(GlobalSettingsConstants.RCS.RCS_DEFAULT_ENABLED).getAsInt();
        ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, asInt, this.mPhoneId);
        this.mEventLog.logAndAdd(this.mPhoneId, "Set rcs_user_setting to [" + asInt + "] from global settings as initial");
        IMSLog.c(LogClass.GLOBAL_INIT_RCS_DB, this.mPhoneId + ",SET INITIAL RCS SETTING:" + asInt);
    }

    protected void logMnoInfo(ContentValues contentValues) {
        ContentValues contentValues2 = new ContentValues(contentValues);
        if (!TextUtils.isEmpty(contentValues2.getAsString("imsi"))) {
            contentValues2.remove("imsi");
        }
        this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] updateMno: mnoInfo:" + contentValues2);
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public boolean updateMno(ContentValues contentValues) {
        boolean booleanValue;
        String asString;
        String stringValue;
        int intValue;
        String asString2;
        int i;
        boolean z;
        synchronized (this.mLock) {
            booleanValue = CollectionUtils.getBooleanValue(contentValues, ISimManager.KEY_HAS_SIM, false);
            asString = contentValues.getAsString("mnoname");
            stringValue = CollectionUtils.getStringValue(contentValues, ISimManager.KEY_MVNO_NAME, "");
            intValue = CollectionUtils.getIntValue(contentValues, ISimManager.KEY_IMSSWITCH_TYPE, 0);
            asString2 = contentValues.getAsString("imsi");
        }
        this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] updateMno: hasSIM:" + booleanValue + ", imsSwitchType:" + intValue);
        logMnoInfo(contentValues);
        boolean prevGcEnabled = getPrevGcEnabled();
        boolean booleanValue2 = CollectionUtils.getBooleanValue(contentValues, ISimManager.KEY_GLOBALGC_ENABLED, false);
        boolean z2 = prevGcEnabled != booleanValue2;
        int readRcsDefaultEnabled = readRcsDefaultEnabled(prevGcEnabled);
        if (z2 && booleanValue) {
            IMSLog.i(this.LOG_TAG, this.mPhoneId, "updateMno: prevGcEnabled: " + prevGcEnabled + ", newGcEnabled: " + booleanValue2);
            i = readRcsDefaultEnabled;
            setSettingsFromSp(false, -1, false, -1, true, readRcsDefaultEnabled(booleanValue2));
            setIsGcEnabledChange(z2);
        } else {
            i = readRcsDefaultEnabled;
        }
        if (booleanValue) {
            setPrevGcEnabled(booleanValue2);
        }
        Mno fromName = Mno.fromName(asString);
        SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, 0, false);
        String previousImsi = getPreviousImsi(sharedPref);
        int imsUserSetting = DmConfigHelper.getImsUserSetting(this.mContext, ImsConstants.SystemSettings.RCS_USER_SETTING1.getName(), this.mPhoneId);
        int imsUserSetting2 = DmConfigHelper.getImsUserSetting(this.mContext, ImsConstants.SystemSettings.VOLTE_SLOT1.getName(), this.mPhoneId);
        int imsUserSetting3 = DmConfigHelper.getImsUserSetting(this.mContext, ImsConstants.SystemSettings.VILTE_SLOT1.getName(), this.mPhoneId);
        boolean z3 = (TextUtils.isEmpty(asString2) || TextUtils.equals(asString2, previousImsi)) ? false : true;
        this.mMnoinfo = contentValues;
        int preUpdateSystemSettings = preUpdateSystemSettings(fromName, imsUserSetting2, z3, booleanValue);
        if (!updateRequires(contentValues)) {
            this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] updateMno: update not requires");
            initRcsUserSetting(imsUserSetting, i);
            if (!z3) {
                return false;
            }
            SharedPreferences.Editor edit = sharedPref.edit();
            edit.putString("imsi", asString2);
            this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] imsi changed:" + IMSLog.checker(previousImsi) + " --> " + IMSLog.checker(asString2));
            edit.apply();
            return false;
        }
        int i2 = i;
        this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] updateMno: update requires");
        String previousMno = getPreviousMno(sharedPref);
        int readVolteDefaultEnabled = readVolteDefaultEnabled();
        boolean z4 = sharedPref.getBoolean(ISimManager.KEY_GLOBALGC_ENABLED, false);
        reset();
        SharedPreferences.Editor edit2 = sharedPref.edit();
        edit2.putBoolean(ISimManager.KEY_GLOBALGC_ENABLED, z4);
        edit2.apply();
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "updateMno: [" + previousMno + "] => [" + asString + "]");
        updateSystemSettings(fromName, contentValues, asString, previousMno, preUpdateSystemSettings, imsUserSetting3);
        synchronized (this.mLock) {
            loadGlobalSettingsFromJson(booleanValue, asString, stringValue, intValue, contentValues);
            if (this.mVersionUpdated) {
                loadGlobalGcSettings(booleanValue2);
            }
        }
        int readRcsDefaultEnabled2 = readRcsDefaultEnabled(booleanValue2);
        int readVolteDefaultEnabled2 = readVolteDefaultEnabled();
        String requiredForceVolteDefaultEnabled = requiredForceVolteDefaultEnabled();
        if (this.mVersionUpdated) {
            if (i2 != readRcsDefaultEnabled2 && booleanValue) {
                this.mEventLog.logAndAdd("updateMno : rcs_default_enabled: [" + i2 + "] => [" + readRcsDefaultEnabled2 + "]");
                setSettingsFromSp(false, -1, false, -1, true, readRcsDefaultEnabled2);
            }
        } else if (fromName != Mno.DEFAULT && booleanValue) {
            initRcsUserSetting(imsUserSetting, readRcsDefaultEnabled2);
        }
        if (!needToCheckResetSetting()) {
            return true;
        }
        if (needResetVolteAsDefault(readVolteDefaultEnabled, readVolteDefaultEnabled2, asString, requiredForceVolteDefaultEnabled)) {
            this.mEventLog.logAndAdd("updateMno : volte_domestic_default_enabled: [" + readVolteDefaultEnabled + "] => [" + readVolteDefaultEnabled2 + "]");
            z = true;
            setSettingsFromSp(true, readVolteDefaultEnabled2 == 1 ? 0 : 1, false, -1, false, -1);
        } else {
            z = true;
        }
        initNeedToCheckResetSetting();
        return z;
    }

    protected boolean needResetVolteAsDefault(int i, int i2, String str, String str2) {
        String upperCase = str2.toUpperCase(Locale.US);
        if (TextUtils.equals(upperCase, "ALWAYS")) {
            return true;
        }
        if (!TextUtils.equals(upperCase, "ONETIME") || !isNotFinishResetVoiceCallType(this.mPhoneId, str)) {
            return false;
        }
        finishResetVoiceCallType(this.mPhoneId, str);
        return true;
    }

    private void finishResetVoiceCallType(int i, String str) {
        ImsSharedPrefHelper.save(i, this.mContext, "imsswitch", "reset_voicecall_type_done_" + str, true);
        IMSLog.s(this.LOG_TAG, i, "finishResetVoiceCallType: Mno(" + str + ")");
    }

    private boolean isNotFinishResetVoiceCallType(int i, String str) {
        boolean z = ImsSharedPrefHelper.getBoolean(i, this.mContext, "imsswitch", "reset_voicecall_type_done_" + str, false);
        String str2 = this.LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("isNotFinishResetVoiceCallType: Mno(");
        sb.append(str);
        sb.append("):");
        sb.append(!z);
        IMSLog.s(str2, i, sb.toString());
        return !z;
    }

    protected boolean needToCheckResetSetting() {
        return this.mVersionUpdated;
    }

    protected void initNeedToCheckResetSetting() {
        this.mVersionUpdated = false;
    }

    protected void setPrevGcEnabled(boolean z) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "setPrevGcEnabled: " + z);
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false).edit();
        edit.putBoolean("prevGcEnabled", z);
        edit.apply();
    }

    protected boolean getPrevGcEnabled() {
        return ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false).getBoolean("prevGcEnabled", false);
    }

    protected void setIsGcEnabledChange(boolean z) {
        IMSLog.i(this.LOG_TAG, this.mPhoneId, "setIsGcEnabledChange: " + z);
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, "imsswitch", 0, false).edit();
        edit.putBoolean("isGcEnabledChange", z);
        edit.apply();
    }

    protected void initRcsUserSetting(int i, int i2) {
        int rcsUserSetting = ImsConstants.SystemSettings.getRcsUserSetting(this.mContext, -3, this.mPhoneId);
        this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] initRcsUserSetting: system [" + rcsUserSetting + "], sp [" + i + "], default [" + i2 + "]");
        if (i == -1) {
            i = i2;
        }
        IMSLog.c(LogClass.GLOBAL_INIT_RCS_DB, this.mPhoneId + "GLB:" + i);
        if (rcsUserSetting == i || !isRcsUserSettingValueAllowed(i)) {
            return;
        }
        ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, i, this.mPhoneId);
    }

    protected void updateSystemSettings(Mno mno, ContentValues contentValues, String str, String str2, int i, int i2) {
        int i3;
        boolean z;
        if (mno.isKor() && !TextUtils.equals(str, str2)) {
            i = -1;
        }
        boolean isNeedToBeSetVoLTE = isNeedToBeSetVoLTE(str, str2);
        if (!DeviceUtil.removeVolteMenuByCsc(this.mPhoneId) || mno.isChn()) {
            i3 = i;
            z = isNeedToBeSetVoLTE;
        } else {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "reset voice and vt call settings db because of VOICECLLCSC CONFIGOPSTYLEMOBILENETWORKSETTINGMENU Feature");
            z = true;
            i3 = -1;
        }
        setSettingsFromSp(z, i3, isNeedToBeSetViLTE(contentValues, str, str2), i2, false, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0099  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected boolean isNeedToBeSetViLTE(android.content.ContentValues r6, java.lang.String r7, java.lang.String r8) {
        /*
            r5 = this;
            int r6 = r5.mPhoneId
            boolean r6 = r5.needResetCallSettingBySim(r6)
            r0 = 1
            java.lang.String r1 = "simSlot["
            if (r6 == 0) goto L29
            com.sec.internal.helper.SimpleEventLog r6 = r5.mEventLog
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r1)
            int r2 = r5.mPhoneId
            r8.append(r2)
            java.lang.String r2 = "] reset vt call settings db by simcard change"
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            r6.logAndAdd(r8)
        L27:
            r6 = r0
            goto L52
        L29:
            boolean r6 = android.text.TextUtils.equals(r7, r8)
            if (r6 != 0) goto L51
            boolean r6 = android.text.TextUtils.isEmpty(r8)
            if (r6 != 0) goto L51
            com.sec.internal.helper.SimpleEventLog r6 = r5.mEventLog
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            r8.append(r1)
            int r2 = r5.mPhoneId
            r8.append(r2)
            java.lang.String r2 = "] reset video call settings db by simcard change"
            r8.append(r2)
            java.lang.String r8 = r8.toString()
            r6.logAndAdd(r8)
            goto L27
        L51:
            r6 = 0
        L52:
            com.sec.internal.constants.Mno r7 = com.sec.internal.constants.Mno.fromName(r7)
            android.content.Context r8 = r5.mContext
            com.sec.internal.constants.ims.ImsConstants$SystemSettings$SettingsItem r2 = com.sec.internal.constants.ims.ImsConstants.SystemSettings.VILTE_SLOT1
            java.lang.String r2 = r2.getName()
            int r3 = r5.mPhoneId
            int r8 = com.sec.internal.helper.DmConfigHelper.getImsUserSetting(r8, r2, r3)
            com.sec.internal.helper.SimpleEventLog r2 = r5.mEventLog
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r1)
            int r4 = r5.mPhoneId
            r3.append(r4)
            java.lang.String r4 = "] videocall_type_"
            r3.append(r4)
            java.lang.String r7 = r7.getName()
            r3.append(r7)
            java.lang.String r7 = ": ["
            r3.append(r7)
            r3.append(r8)
            java.lang.String r7 = "]"
            r3.append(r7)
            java.lang.String r7 = r3.toString()
            r2.logAndAdd(r7)
            boolean r7 = com.sec.internal.helper.os.DeviceUtil.getGcfMode()
            if (r7 != 0) goto Lbb
            com.sec.internal.helper.SimpleEventLog r7 = r5.mEventLog
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            int r5 = r5.mPhoneId
            r2.append(r5)
            java.lang.String r5 = "] NOT Temporal SIM swapped: Set Video DB - "
            r2.append(r5)
            r2.append(r8)
            java.lang.String r5 = r2.toString()
            r7.logAndAdd(r5)
            r5 = -1
            if (r8 == r5) goto Lbb
            goto Lbc
        Lbb:
            r0 = r6
        Lbc:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.settings.GlobalSettingsRepoBase.isNeedToBeSetViLTE(android.content.ContentValues, java.lang.String, java.lang.String):boolean");
    }

    protected boolean isNeedToBeSetVoLTE(String str, String str2) {
        if (DmConfigHelper.getImsUserSetting(this.mContext, ImsConstants.SystemSettings.VOLTE_SLOT1.getName(), this.mPhoneId) != -1) {
            return true;
        }
        if (needResetCallSettingBySim(this.mPhoneId)) {
            this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] reset voice call settings db by simcard change");
            return true;
        }
        if (TextUtils.equals(str, str2) || TextUtils.isEmpty(str2)) {
            return false;
        }
        this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] reset voice call settings db by simcard change");
        return true;
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public void resetUserSettingAsDefault(boolean z, boolean z2, boolean z3) {
        if (z) {
            ImsConstants.SystemSettings.setVoiceCallType(this.mContext, -1, this.mPhoneId);
            IMSLog.c(LogClass.GLOBAL_LOAD_VOICE_DB, this.mPhoneId + ",SET:-1");
        }
        if (z2) {
            ImsConstants.SystemSettings.setVideoCallType(this.mContext, -1, this.mPhoneId);
            IMSLog.c(LogClass.GLOBAL_LOAD_VIDEO_DB, this.mPhoneId + ",SET:-1");
        }
        if (z3) {
            ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, -1, this.mPhoneId);
            IMSLog.c(LogClass.GLOBAL_LOAD_RCS_DB, this.mPhoneId + ",SET:-1");
        }
    }

    protected void setSettingsFromSp(boolean z, int i, boolean z2, int i2, boolean z3, int i3) {
        if (z) {
            ImsConstants.SystemSettings.setVoiceCallType(this.mContext, i, this.mPhoneId);
            IMSLog.c(LogClass.GLOBAL_LOAD_VOICE_DB, this.mPhoneId + ",SET:" + i);
        }
        if (z2) {
            ImsConstants.SystemSettings.setVideoCallType(this.mContext, i2, this.mPhoneId);
            IMSLog.c(LogClass.GLOBAL_LOAD_VIDEO_DB, this.mPhoneId + ",SET:" + i2);
        }
        if (z3) {
            ImsConstants.SystemSettings.setRcsUserSetting(this.mContext, i3, this.mPhoneId);
            IMSLog.c(LogClass.GLOBAL_LOAD_RCS_DB, this.mPhoneId + ",SET RCS DB:" + i3);
        }
    }

    protected boolean updateRequires(ContentValues contentValues) {
        Boolean asBoolean;
        String asString;
        String asString2;
        String asString3;
        Integer asInteger;
        synchronized (this.mLock) {
            asBoolean = contentValues.getAsBoolean(ISimManager.KEY_HAS_SIM);
            if (asBoolean == null) {
                asBoolean = Boolean.FALSE;
            }
            asString = contentValues.getAsString("mnoname");
            asString2 = contentValues.getAsString(ISimManager.KEY_MVNO_NAME);
            asString3 = contentValues.getAsString(ISimManager.KEY_NW_NAME);
            if (asString3 == null) {
                asString3 = "";
            }
            asInteger = contentValues.getAsInteger(ISimManager.KEY_IMSSWITCH_TYPE);
            if (asInteger == null) {
                asInteger = 0;
            }
        }
        SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, 0, false);
        if (isVersionUpdated()) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "PDA or CSC version changed");
            this.mVersionUpdated = true;
            return true;
        }
        if (CscParser.isCscChanged(this.mContext, this.mPhoneId)) {
            this.mEventLog.logAndAdd("update Requires: CSC Info Changed");
            this.mVersionUpdated = true;
            return true;
        }
        if (!getPreviousMno(sharedPref).equals(asString)) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "update Requires: different mnoname");
            this.mMnoNameUpdated = true;
            return true;
        }
        if (!getPreviousMvno(sharedPref).equals(asString2)) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "update Requires: different MVNO name");
            this.mMnoNameUpdated = true;
            return true;
        }
        if (!getPreviousNwCode(sharedPref).equals(OmcCode.getNWCode(this.mPhoneId))) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "update Requires: different omc_nw code");
            return true;
        }
        if (!getPreviousNwName(sharedPref).equals(asString3)) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "update Requires: different network name");
            return true;
        }
        if (getPreviousHasSim(sharedPref) != asBoolean.booleanValue()) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "update Requires: hasSim Changed " + asBoolean);
            return true;
        }
        int previousCscImsSettingType = getPreviousCscImsSettingType(sharedPref);
        if (previousCscImsSettingType != asInteger.intValue()) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "update Requires: cscImsSettingType changed " + previousCscImsSettingType + " => " + asInteger);
            return true;
        }
        ImsAutoUpdate imsAutoUpdate = this.mAutoUpdate;
        if (imsAutoUpdate != null && imsAutoUpdate.isUpdateNeeded()) {
            IMSLog.d(this.LOG_TAG, this.mPhoneId, "imsupdate changed.");
            return true;
        }
        IMSLog.d(this.LOG_TAG, this.mPhoneId, "update not requires: same mno, same version");
        return false;
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public void reset() {
        synchronized (this.mLock) {
            if (isLoaded()) {
                SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, 0, false).edit();
                edit.clear();
                edit.putBoolean("loaded", false);
                edit.apply();
            }
        }
    }

    protected String getPreviousNwCode(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("nwcode", OmcCode.getNWCode(this.mPhoneId));
    }

    protected boolean getPreviousHasSim(SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean(ISimManager.KEY_HAS_SIM, false);
    }

    protected int getPreviousCscImsSettingType(SharedPreferences sharedPreferences) {
        return sharedPreferences.getInt("cscimssettingtype", -1);
    }

    protected boolean getPreviousGcfMode(SharedPreferences sharedPreferences) {
        return sharedPreferences.getBoolean("gcfmode", false);
    }

    protected String getPreviousMno(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("mnoname", "");
    }

    protected String getPreviousMvno(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(ISimManager.KEY_MVNO_NAME, "");
    }

    protected String getPreviousNwName(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString(ISimManager.KEY_NW_NAME, "");
    }

    protected String getPreviousImsi(SharedPreferences sharedPreferences) {
        return sharedPreferences.getString("imsi", "");
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public String getPreviousMno() {
        return ImsSharedPrefHelper.getString(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, "mnoname", "");
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public boolean getGlobalGcEnabled() {
        return ImsSharedPrefHelper.getBoolean(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, ISimManager.KEY_GLOBALGC_ENABLED, false);
    }

    protected boolean isVersionUpdated() {
        String str = SemSystemProperties.get("ro.build.PDA", "");
        String str2 = SemSystemProperties.get("ril.official_cscver", "");
        String string = ImsSharedPrefHelper.getString(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, "buildinfo", "");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("_");
        sb.append(str2);
        return !string.equals(sb.toString());
    }

    protected String saveBuildInfo() {
        return SemSystemProperties.get("ro.build.PDA", "") + "_" + SemSystemProperties.get("ril.official_cscver", "");
    }

    @Override // com.sec.internal.ims.settings.GlobalSettingsRepo
    public void dump() {
        this.mEventLog.dump();
        SharedPreferences sharedPref = ImsSharedPrefHelper.getSharedPref(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, 0, false);
        if (sharedPref == null || !sharedPref.getBoolean("loaded", false)) {
            return;
        }
        Map<String, ?> all = sharedPref.getAll();
        all.remove("imsi");
        IMSLog.increaseIndent(this.LOG_TAG);
        IMSLog.dump(this.LOG_TAG, this.mPhoneId, "\nLast values of GlobalSettings:");
        IMSLog.increaseIndent(this.LOG_TAG);
        for (Map.Entry<String, ?> entry : all.entrySet()) {
            IMSLog.dump(this.LOG_TAG, this.mPhoneId, entry.getKey() + " = [" + entry.getValue() + "]");
        }
        IMSLog.decreaseIndent(this.LOG_TAG);
        IMSLog.decreaseIndent(this.LOG_TAG);
    }

    protected int readVolteDefaultEnabled() {
        return Integer.parseInt(ImsSharedPrefHelper.getString(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, GlobalSettingsConstants.Registration.VOLTE_DOMESTIC_DEFAULT_ENABLED, "-1"));
    }

    protected String requiredForceVolteDefaultEnabled() {
        return ImsSharedPrefHelper.getString(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, "force_volte_default_enabled", "");
    }

    protected int readRcsDefaultEnabled(boolean z) {
        if (z) {
            return Integer.parseInt(ImsSharedPrefHelper.getString(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_GC_SETTINGS, GlobalSettingsConstants.RCS.RCS_DEFAULT_ENABLED, "-1"));
        }
        return Integer.parseInt(ImsSharedPrefHelper.getString(this.mPhoneId, this.mContext, ImsSharedPrefHelper.GLOBAL_SETTINGS, GlobalSettingsConstants.RCS.RCS_DEFAULT_ENABLED, "-1"));
    }
}
