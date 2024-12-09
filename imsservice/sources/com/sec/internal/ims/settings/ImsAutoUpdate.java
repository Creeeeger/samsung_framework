package com.sec.internal.ims.settings;

import android.content.Context;
import android.os.Environment;
import android.os.SemSystemProperties;
import android.os.storage.StorageEventListener;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.samsung.android.feature.SemCarrierFeature;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.SecFeature;
import com.sec.internal.helper.HashManager;
import com.sec.internal.helper.JsonUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.os.SystemWrapper;
import com.sec.internal.ims.settings.SmsSetting;
import com.sec.internal.log.IMSLog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Optional;

/* loaded from: classes.dex */
public class ImsAutoUpdate {
    public static final String GLOBALSETTINGS_UPDATE = "globalsettings_update";
    public static final String IMSPROFILE_UPDATE = "imsprofile_update";
    private static final String IMSSWITCH_UPDATE = "imsswitch_update";
    protected static final String IMSUPDATE_JSON_FILE = "imsupdate.json";
    private static final String LOG_TAG = "ImsAutoUpdate";
    private static final String MNOMAP_UPDATE = "mnomap_update";
    protected static final String MNONAME = "mnoname";
    private static char MVNO_DELIMITER = ':';
    protected static final String NAME = "name";
    private static final String PROVIDERSETTINGS_UPDATE = "providersettings_update";
    private static final String RCSRPOLICY_UPDATE = "rcspolicy_update";
    public static final int RESOURCE_CARRIER_FEATURE = 4;
    public static final int RESOURCE_DOWNLOAD = 2;
    public static final int RESOURCE_IMSUPDATE = 3;
    public static final int RESOURCE_JIBE_UPDATES = 1;
    private static final String SMS_SETTINGS_UPDATE = "sms_settings_update";
    public static final String TAG_DEFAULT_RCS_POLICY = "default_rcs_policy";
    public static final String TAG_DEFAULT_UP_POLICY = "default_up_policy";
    public static final String TAG_GC_BLOCK_MCC_LIST = "gc_block_mcc_list";
    public static final String TAG_GLOBALSETTING = "globalsetting";
    public static final String TAG_GLOBALSETTINGS_DEFAULT = "defaultsetting";
    public static final String TAG_GLOBALSETTINGS_NOHIT = "nohitsetting";
    public static final String TAG_IMSSWITCH = "imsswitch";
    public static final String TAG_MNOMAP_ADD = "add_mnomap";
    public static final String TAG_MNOMAP_REMOVE = "remove_mnomap";
    public static final String TAG_POLICY_NAME = "policy_name";
    public static final String TAG_PROFILE = "profile";
    public static final String TAG_RCS_POLICY = "rcs_policy";
    public static final String TAG_REPLACE_GC_BLOCK_MCC_LIST = "replace_gc_block_mcc_list";
    protected static final String UPDATE_FILE_PATH_CSC = "/system/csc";
    private JsonElement mCarrierUpdate;
    private Context mContext;
    private String mCurrentCarrierFeatureHash;
    private String mCurrentHash;
    protected SimpleEventLog mEventLog;
    private boolean mHashChanged;
    private HashManager mHashManager;
    private boolean mImsSetupMode;
    private boolean mLoaded = false;
    private String mNote;
    private int mPhoneId;
    private boolean mShipBuild;
    private handleSmkConfig mSmkConfig;
    private StorageEventListener mStorageListener;
    private JsonElement mUpdate;
    private boolean mUpdatedGlobalSettings;
    private boolean mUpdatedImsProfile;
    private boolean mUpdatedImsSwitch;
    private static final HashMap<Integer, ImsAutoUpdate> sInstances = new HashMap<>();
    private static JsonArray mUpdateArrays = null;
    private static StorageManager mStorage = null;

    protected ImsAutoUpdate(Context context, int i) {
        JsonNull jsonNull = JsonNull.INSTANCE;
        this.mUpdate = jsonNull;
        this.mCarrierUpdate = jsonNull;
        this.mCurrentHash = "";
        this.mCurrentCarrierFeatureHash = "";
        this.mHashChanged = false;
        this.mUpdatedImsProfile = false;
        this.mUpdatedGlobalSettings = false;
        this.mUpdatedImsSwitch = false;
        this.mShipBuild = SemSystemProperties.get("ro.product_ship", ConfigConstants.VALUE.INFO_COMPLETED).equals(CloudMessageProviderContract.JsonData.TRUE);
        this.mImsSetupMode = SemSystemProperties.get(ImsConstants.SystemProperties.IMSSETUP_MODE, ConfigConstants.VALUE.INFO_COMPLETED).equals(CloudMessageProviderContract.JsonData.TRUE);
        this.mNote = "";
        this.mStorageListener = new StorageEventListener() { // from class: com.sec.internal.ims.settings.ImsAutoUpdate.1
            public void onStorageStateChanged(String str, String str2, String str3) {
                if (str2.equals("checking") && str3.equals("mounted")) {
                    IMSLog.i(ImsAutoUpdate.LOG_TAG, ImsAutoUpdate.this.mPhoneId, "onStorageStateChanged : checking -> mounted");
                    ImsAutoUpdate.mStorage.unregisterListener(ImsAutoUpdate.this.mStorageListener);
                    if (TextUtils.isEmpty(ImsAutoUpdate.this.getExternalStorageImsUpdatePath())) {
                        return;
                    }
                    IMSLog.i(ImsAutoUpdate.LOG_TAG, ImsAutoUpdate.this.mPhoneId, "ImsSetup mode. imsservice restart");
                    SemSystemProperties.set(ImsConstants.SystemProperties.IMSSETUP_MODE, CloudMessageProviderContract.JsonData.TRUE);
                    SystemWrapper.exit(0);
                }
            }
        };
        this.mHashManager = HashManager.getInstance(context, i);
        handleSmkConfig handlesmkconfig = new handleSmkConfig(context);
        this.mSmkConfig = handlesmkconfig;
        handlesmkconfig.load();
        this.mContext = context;
        this.mPhoneId = i;
        this.mEventLog = new SimpleEventLog(context, i, LOG_TAG, 200);
        if (this.mShipBuild || this.mImsSetupMode || mStorage != null) {
            return;
        }
        StorageManager storageManager = (StorageManager) this.mContext.getSystemService(StorageManager.class);
        mStorage = storageManager;
        storageManager.registerListener(this.mStorageListener);
    }

    public static ImsAutoUpdate getInstance(Context context, int i) {
        HashMap<Integer, ImsAutoUpdate> hashMap = sInstances;
        synchronized (hashMap) {
            if (hashMap.containsKey(Integer.valueOf(i))) {
                return hashMap.get(Integer.valueOf(i));
            }
            hashMap.put(Integer.valueOf(i), new ImsAutoUpdate(context, i));
            hashMap.get(Integer.valueOf(i)).checkLoaded();
            return hashMap.get(Integer.valueOf(i));
        }
    }

    public boolean checkLoaded() {
        if (!this.mLoaded) {
            this.mLoaded = (loadImsAutoUpdate() && !this.mUpdate.isJsonNull()) || getSmkConfig() != null;
        }
        return this.mLoaded;
    }

    private boolean loadImsAutoUpdate() {
        boolean z;
        String updateFilePath = getUpdateFilePath();
        String str = LOG_TAG;
        IMSLog.d(str, this.mPhoneId, "Use imsupdate file on " + updateFilePath);
        File file = new File(updateFilePath);
        boolean z2 = false;
        if (file.exists() && file.length() > 0) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file.getAbsolutePath());
                try {
                    JsonReader jsonReader = new JsonReader(new BufferedReader(new InputStreamReader(fileInputStream)));
                    try {
                        JsonElement parse = new JsonParser().parse(jsonReader);
                        this.mUpdate = parse;
                        if (parse.isJsonNull() || !this.mUpdate.isJsonObject()) {
                            z = false;
                        } else {
                            JsonElement jsonElement = this.mUpdate.getAsJsonObject().get("note");
                            if (jsonElement != null && !jsonElement.isJsonNull()) {
                                this.mNote = jsonElement.getAsString();
                                IMSLog.d(str, this.mPhoneId, "imsupdate is ready : " + this.mNote);
                            }
                            try {
                                mUpdateArrays = this.mUpdate.getAsJsonObject().getAsJsonObject(IMSPROFILE_UPDATE).getAsJsonArray("profile");
                            } catch (NullPointerException unused) {
                            }
                            z = true;
                        }
                        byte[] bArr = new byte[(int) file.length()];
                        fileInputStream.getChannel().position(0L);
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            IMSLog.e(LOG_TAG, this.mPhoneId, "Failed to read imsupdate.json! Got [" + read + "]");
                        }
                        try {
                            this.mCurrentHash = this.mHashManager.getHash(bArr);
                        } catch (Exception unused2) {
                        }
                        jsonReader.close();
                        fileInputStream.close();
                        z2 = z;
                    } finally {
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException | JsonParseException e) {
                e.printStackTrace();
                IMSLog.e(LOG_TAG, this.mPhoneId, "imsupdate.json parsing fail.");
            }
        } else {
            IMSLog.e(str, this.mPhoneId, "imsupdate.json not found.");
            this.mCurrentHash = "";
        }
        this.mHashChanged = this.mHashManager.isHashChanged(HashManager.HASH_IMSUPDATE, this.mCurrentHash);
        IMSLog.d(LOG_TAG, this.mPhoneId, "loadImsAutoUpdate: hash changed [" + this.mHashChanged + "]");
        return z2;
    }

    public boolean isCarrierFeatureChanged(int i) {
        String string = SemCarrierFeature.getInstance().getString(i, SecFeature.CARRIER.IMSUPDATE, "", false);
        try {
            if (string.isEmpty()) {
                this.mCurrentCarrierFeatureHash = "";
            } else {
                this.mCurrentCarrierFeatureHash = this.mHashManager.getHash(string.getBytes());
            }
        } catch (Exception unused) {
        }
        return this.mHashManager.isHashChanged(HashManager.HASH_CARRIERFEATURE, this.mCurrentCarrierFeatureHash);
    }

    public void resetCarrierFeatureHash() {
        IMSLog.d(LOG_TAG, this.mPhoneId, "reset carrier feature hash");
        this.mHashManager.saveHash(HashManager.HASH_CARRIERFEATURE, "");
    }

    public boolean loadCarrierFeature() {
        int carrierId = SemCarrierFeature.getInstance().getCarrierId(this.mPhoneId, false);
        int i = SemSystemProperties.getInt(ImsConstants.SystemProperties.CARRIERFEATURE_FORCE_USE, -1);
        String str = LOG_TAG;
        IMSLog.d(str, this.mPhoneId, "loadCarrierFeature  carrierId : " + carrierId + " forceProp : " + i);
        if (carrierId == -1 && i == -1) {
            return false;
        }
        try {
            JsonParser jsonParser = new JsonParser();
            String string = SemCarrierFeature.getInstance().getString(this.mPhoneId, SecFeature.CARRIER.IMSUPDATE, "", false);
            if (TextUtils.isEmpty(string)) {
                IMSLog.e(str, this.mPhoneId, "carrierfeature was not found.");
                return false;
            }
            String hash = this.mHashManager.getHash(string.getBytes());
            this.mCurrentCarrierFeatureHash = hash;
            this.mHashManager.saveHash(HashManager.HASH_CARRIERFEATURE, hash);
            JsonElement parse = jsonParser.parse(string);
            if (!JsonUtil.isValidJsonElement(parse)) {
                return false;
            }
            IMSLog.d(str, this.mPhoneId, "Successfully get carrier feature : " + parse.toString());
            this.mCarrierUpdate = parse;
            return true;
        } catch (Exception e) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "Problem on Carrier feature : " + e.getMessage());
            return false;
        }
    }

    public String getExternalStorageImsUpdatePath() {
        String str;
        boolean equals = Environment.getExternalStorageState().equals("mounted");
        if (this.mShipBuild || !equals) {
            return "";
        }
        try {
            str = (String) Optional.ofNullable((StorageManager) this.mContext.getSystemService(StorageManager.class)).map(new ImsAutoUpdate$$ExternalSyntheticLambda0()).map(new ImsAutoUpdate$$ExternalSyntheticLambda1()).orElse("");
        } catch (ArrayIndexOutOfBoundsException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "getExternalStorageImsUpdatePath() " + e.toString());
            str = "";
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getExternalStorageImsUpdatePath() path=" + str);
        File file = new File(str, IMSUPDATE_JSON_FILE);
        return file.exists() ? file.getPath() : "";
    }

    public void saveHash() {
        this.mHashManager.saveHash(HashManager.HASH_IMSUPDATE, this.mCurrentHash);
        this.mHashManager.saveMemo(HashManager.HASH_IMSUPDATE, this.mNote);
        this.mHashChanged = false;
    }

    protected String getUpdateFilePath() {
        String externalStorageImsUpdatePath = getExternalStorageImsUpdatePath();
        if (!TextUtils.isEmpty(externalStorageImsUpdatePath)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "ImsSetup. getUpdateFilePath() path=" + externalStorageImsUpdatePath);
            return externalStorageImsUpdatePath;
        }
        if (!OmcCode.isOmcModel()) {
            return "/system/csc/imsupdate.json";
        }
        String omcNwPath = OmcCode.getOmcNwPath(this.mPhoneId);
        if (omcNwPath.contains(UPDATE_FILE_PATH_CSC)) {
            return "/system/csc/imsupdate.json";
        }
        String str = omcNwPath + "/" + IMSUPDATE_JSON_FILE;
        if (new File(str).exists()) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "getUpdateFilePath() omcPath : " + omcNwPath);
            return str;
        }
        String etcPath = OmcCode.getEtcPath();
        String substring = etcPath.substring(0, etcPath.length() - 3);
        String nWCode = OmcCode.getNWCode(this.mPhoneId);
        String str2 = substring + nWCode + "/" + IMSUPDATE_JSON_FILE;
        IMSLog.i(LOG_TAG, this.mPhoneId, " getUpdateFilePath() etcPath : " + etcPath + " / nwCode : " + nWCode);
        return str2;
    }

    public boolean isUpdateNeeded() {
        IMSLog.i(LOG_TAG, "checkLoaded : " + checkLoaded());
        return this.mHashChanged || this.mSmkConfig.hasNewSmkConfig();
    }

    public JsonElement selectResource(int i) {
        if (i == 2 && this.mSmkConfig != null) {
            return getSmkConfig() == null ? JsonNull.INSTANCE : getSmkConfig();
        }
        if (i == 3) {
            return this.mUpdate;
        }
        if (i == 4) {
            return this.mCarrierUpdate;
        }
        if (i == 1) {
            return new JibeRcsEnabler(this.mContext).getUpdates();
        }
        return JsonNull.INSTANCE;
    }

    private String sourceToString(int i) {
        if (i == 2) {
            return "SMK";
        }
        if (i == 3) {
            return "IMSUPDATE";
        }
        if (i == 4) {
            return "CARRIER_FEATURE";
        }
        return "UNKNOWN update source " + i;
    }

    public JsonElement getImsProfileUpdate(int i, String str) {
        JsonElement selectResource = selectResource(i);
        try {
            if (selectResource.getAsJsonObject().has(IMSPROFILE_UPDATE)) {
                JsonObject asJsonObject = selectResource.getAsJsonObject().getAsJsonObject(IMSPROFILE_UPDATE);
                if (JsonUtil.isValidJsonElement(asJsonObject) && asJsonObject.has(str)) {
                    return asJsonObject.get(str);
                }
            }
        } catch (IllegalStateException unused) {
        }
        return JsonNull.INSTANCE;
    }

    public JsonElement getImsSwitches(int i, String str) {
        JsonElement selectResource = selectResource(i);
        try {
            if (selectResource.getAsJsonObject().has(IMSSWITCH_UPDATE)) {
                JsonObject asJsonObject = selectResource.getAsJsonObject().getAsJsonObject(IMSSWITCH_UPDATE);
                if (JsonUtil.isValidJsonElement(asJsonObject) && asJsonObject.has(str)) {
                    return asJsonObject.get(str);
                }
            }
        } catch (IllegalStateException unused) {
        }
        return JsonNull.INSTANCE;
    }

    public JsonElement getGlobalSettings(int i, String str) {
        JsonElement selectResource = selectResource(i);
        try {
            if (selectResource.getAsJsonObject().has(GLOBALSETTINGS_UPDATE)) {
                JsonObject asJsonObject = selectResource.getAsJsonObject().getAsJsonObject(GLOBALSETTINGS_UPDATE);
                if (JsonUtil.isValidJsonElement(asJsonObject) && asJsonObject.has(str)) {
                    return asJsonObject.get(str);
                }
            }
        } catch (IllegalStateException unused) {
        }
        return JsonNull.INSTANCE;
    }

    public String getGlobalSettingsSpecificParam(int i, String str, String str2) {
        JsonArray asJsonArray;
        int indexWithMnoname;
        JsonElement globalSettings = getGlobalSettings(i, TAG_GLOBALSETTING);
        if (globalSettings.isJsonNull() || !globalSettings.isJsonArray() || (indexWithMnoname = getIndexWithMnoname((asJsonArray = globalSettings.getAsJsonArray()), str)) == -1) {
            return null;
        }
        IMSLog.d(LOG_TAG, this.mPhoneId, "Found Globalsetting for : " + str);
        JsonObject asJsonObject = asJsonArray.get(indexWithMnoname).getAsJsonObject();
        if (asJsonObject.has(str2)) {
            return asJsonObject.get(str2).getAsString();
        }
        return null;
    }

    public boolean getDefaultGlobalSettingsFromImsUpdate(String str) {
        JsonElement globalSettings = getGlobalSettings(3, TAG_GLOBALSETTINGS_DEFAULT);
        if (!JsonUtil.isValidJsonElement(globalSettings)) {
            return false;
        }
        JsonObject asJsonObject = globalSettings.getAsJsonObject();
        if (JsonUtil.isValidJsonElement(asJsonObject) && asJsonObject.has(str) && asJsonObject.get(str).isJsonPrimitive()) {
            return asJsonObject.get(str).getAsBoolean();
        }
        return false;
    }

    public JsonElement getMnomap(int i, String str) {
        JsonElement selectResource = selectResource(i);
        try {
            if (selectResource.getAsJsonObject().has(MNOMAP_UPDATE)) {
                JsonObject asJsonObject = selectResource.getAsJsonObject().getAsJsonObject(MNOMAP_UPDATE);
                if (JsonUtil.isValidJsonElement(asJsonObject) && asJsonObject.has(str)) {
                    if ("[]".equals(asJsonObject.get(str).toString())) {
                        return JsonNull.INSTANCE;
                    }
                    return asJsonObject.get(str);
                }
            }
        } catch (IllegalStateException unused) {
        }
        return JsonNull.INSTANCE;
    }

    public JsonElement getProviderSettings(int i, String str) {
        JsonElement selectResource = selectResource(i);
        try {
            if (selectResource.getAsJsonObject().has(PROVIDERSETTINGS_UPDATE)) {
                JsonObject asJsonObject = selectResource.getAsJsonObject().getAsJsonObject(PROVIDERSETTINGS_UPDATE);
                if (JsonUtil.isValidJsonElement(asJsonObject) && asJsonObject.has(str)) {
                    if ("[]".equals(asJsonObject.get(str).toString())) {
                        return JsonNull.INSTANCE;
                    }
                    return asJsonObject.get(str);
                }
            }
        } catch (IllegalStateException unused) {
        }
        return JsonNull.INSTANCE;
    }

    public JsonElement applyImsProfileUpdate(JsonArray jsonArray, String str) {
        JsonElement applyImsProfileUpdate = applyImsProfileUpdate(applyImsProfileUpdate(applyImsProfileUpdate(applyImsProfileUpdate(jsonArray.getAsJsonArray(), 1, str).getAsJsonArray(), 2, str).getAsJsonArray(), 3, str).getAsJsonArray(), 4, str);
        this.mUpdatedImsProfile = true;
        if ((this.mUpdatedGlobalSettings || this.mUpdatedImsSwitch) && this.mHashChanged) {
            saveHash();
        }
        return applyImsProfileUpdate;
    }

    public JsonElement applyImsProfileUpdate(JsonArray jsonArray, int i, String str) {
        ImsAutoUpdate imsAutoUpdate = this;
        JsonArray jsonArray2 = jsonArray;
        JsonElement imsProfileUpdate = imsAutoUpdate.getImsProfileUpdate(i, "profile");
        if (!jsonArray.isJsonNull() && !imsProfileUpdate.isJsonNull() && imsProfileUpdate.isJsonArray()) {
            jsonArray2 = (JsonArray) JsonUtil.deepCopy(jsonArray2, JsonArray.class);
            boolean needCheckMvno = needCheckMvno(jsonArray2, str);
            IMSLog.d(LOG_TAG, imsAutoUpdate.mPhoneId, "applyImsProfileUpdate fullNameCheck : " + needCheckMvno);
            Iterator it = imsProfileUpdate.getAsJsonArray().iterator();
            while (it.hasNext()) {
                JsonElement jsonElement = (JsonElement) it.next();
                JsonObject asJsonObject = jsonElement.getAsJsonObject();
                if (asJsonObject.has("name") && asJsonObject.has("mnoname")) {
                    String asString = asJsonObject.get("name").getAsString();
                    String asString2 = asJsonObject.get("mnoname").getAsString();
                    if (TextUtils.isEmpty(str) || isMatchedMnoName(needCheckMvno, asString2, str) || (asJsonObject.get("mdmn_type") != null && asJsonObject.get("mdmn_type").getAsString().equals(str))) {
                        int indexWithNames = getIndexWithNames(jsonArray2, asString, asString2);
                        if (indexWithNames == -1) {
                            jsonArray2.add(jsonElement);
                            imsAutoUpdate.mEventLog.logAndAdd("add imsprofile by resource: " + i + " => " + asString);
                        } else {
                            JsonElement remove = asJsonObject.remove("mnoname");
                            JsonElement jsonElement2 = jsonArray2.get(indexWithNames);
                            imsAutoUpdate.mEventLog.logAndAdd("update imsprofile by resource: " + i + " => " + asString);
                            JsonElement merge = JsonUtil.merge(jsonElement2, jsonElement);
                            if (!merge.isJsonNull()) {
                                jsonArray2.set(indexWithNames, merge);
                            }
                            if (remove != null && !remove.isJsonNull()) {
                                asJsonObject.add("mnoname", remove);
                            }
                        }
                    }
                }
                imsAutoUpdate = this;
            }
        }
        return jsonArray2;
    }

    public JsonElement getUpdatedGlobalSetting(JsonElement jsonElement) {
        JsonElement applyGlobalSettingUpdate = applyGlobalSettingUpdate(applyGlobalSettingUpdate(applyGlobalSettingUpdate(applyGlobalSettingUpdate(jsonElement, 1), 2), 3), 4);
        this.mUpdatedGlobalSettings = true;
        if (this.mUpdatedImsProfile && this.mHashChanged) {
            saveHash();
        }
        return applyGlobalSettingUpdate;
    }

    public JsonElement applyGlobalSettingUpdate(JsonElement jsonElement, int i) {
        JsonElement jsonElement2;
        int indexWithMnoname;
        if (!JsonUtil.isValidJsonElement(jsonElement)) {
            IMSLog.d(LOG_TAG, this.mPhoneId, "Not a valid GlobalElement.");
            return jsonElement;
        }
        String asString = jsonElement.getAsJsonObject().get("mnoname").getAsString();
        JsonElement globalSettings = getGlobalSettings(i, TAG_GLOBALSETTING);
        if (!JsonUtil.isValidJsonElement(globalSettings) || (indexWithMnoname = getIndexWithMnoname(globalSettings.getAsJsonArray(), asString)) == -1) {
            jsonElement2 = jsonElement;
        } else {
            JsonElement jsonElement3 = globalSettings.getAsJsonArray().get(indexWithMnoname);
            this.mEventLog.logAndAdd("update globalsettings by resource: " + i + " => " + jsonElement3);
            jsonElement2 = JsonUtil.merge(jsonElement, jsonElement3);
        }
        return jsonElement2 != JsonNull.INSTANCE ? jsonElement2 : jsonElement;
    }

    public JsonElement getUpdatedImsSwitch(JsonElement jsonElement) {
        JsonElement applyImsSwitchUpdate = applyImsSwitchUpdate(applyImsSwitchUpdate(applyImsSwitchUpdate(jsonElement, 2), 3), 4);
        this.mUpdatedImsSwitch = true;
        if (this.mUpdatedImsProfile && this.mHashChanged) {
            saveHash();
        }
        return applyImsSwitchUpdate;
    }

    public boolean isMatchedImsSwitch(int i, String str, String str2) {
        JsonElement imsSwitches = getImsSwitches(i, "imsswitch");
        if (!TextUtils.isEmpty(str2)) {
            str = str + MVNO_DELIMITER + str2;
        }
        String str3 = LOG_TAG;
        IMSLog.d(str3, this.mPhoneId, "isMatchedImsSwitch source : " + sourceToString(i) + " for : " + str);
        if (!JsonUtil.isValidJsonElement(imsSwitches) || getIndexWithMnoname(imsSwitches.getAsJsonArray(), str) == -1) {
            return false;
        }
        Log.d(str3, "isMatchedImsSwitch for : " + str);
        return true;
    }

    public JsonElement applyImsSwitchUpdate(JsonElement jsonElement, int i) {
        JsonElement jsonElement2;
        int indexWithMnoname;
        if (!JsonUtil.isValidJsonElement(jsonElement)) {
            IMSLog.d(LOG_TAG, this.mPhoneId, "Not a valid imsswitchElement.");
            return jsonElement;
        }
        String asString = jsonElement.getAsJsonObject().get("mnoname").getAsString();
        JsonElement imsSwitches = getImsSwitches(i, "imsswitch");
        if (!JsonUtil.isValidJsonElement(imsSwitches) || (indexWithMnoname = getIndexWithMnoname(imsSwitches.getAsJsonArray(), asString)) == -1) {
            jsonElement2 = jsonElement;
        } else {
            JsonElement jsonElement3 = imsSwitches.getAsJsonArray().get(indexWithMnoname);
            this.mEventLog.logAndAdd("update imsswitch by resource: " + i + " => " + jsonElement3);
            jsonElement2 = JsonUtil.merge(jsonElement, jsonElement3);
        }
        return jsonElement2 != JsonNull.INSTANCE ? jsonElement2 : jsonElement;
    }

    public JsonElement applyNohitSettingUpdate(JsonElement jsonElement) {
        JsonElement globalSettings = getGlobalSettings(2, TAG_GLOBALSETTINGS_NOHIT);
        JsonElement globalSettings2 = getGlobalSettings(3, TAG_GLOBALSETTINGS_NOHIT);
        JsonElement globalSettings3 = getGlobalSettings(4, TAG_GLOBALSETTINGS_NOHIT);
        if (JsonUtil.isValidJsonElement(globalSettings)) {
            JsonElement merge = JsonUtil.merge(jsonElement, globalSettings);
            if (JsonUtil.isValidJsonElement(merge)) {
                jsonElement = merge;
            }
        }
        if (JsonUtil.isValidJsonElement(globalSettings2)) {
            JsonElement merge2 = JsonUtil.merge(jsonElement, globalSettings2);
            if (JsonUtil.isValidJsonElement(merge2)) {
                jsonElement = merge2;
            }
        }
        if (!JsonUtil.isValidJsonElement(globalSettings3)) {
            return jsonElement;
        }
        JsonElement merge3 = JsonUtil.merge(jsonElement, globalSettings3);
        return JsonUtil.isValidJsonElement(merge3) ? merge3 : jsonElement;
    }

    public JsonElement applyDefaultSettingUpdate(JsonElement jsonElement) {
        JsonElement globalSettings = getGlobalSettings(2, TAG_GLOBALSETTINGS_DEFAULT);
        JsonElement globalSettings2 = getGlobalSettings(3, TAG_GLOBALSETTINGS_DEFAULT);
        JsonElement globalSettings3 = getGlobalSettings(4, TAG_GLOBALSETTINGS_DEFAULT);
        if (JsonUtil.isValidJsonElement(globalSettings)) {
            JsonElement merge = JsonUtil.merge(jsonElement, globalSettings);
            if (JsonUtil.isValidJsonElement(merge)) {
                jsonElement = merge;
            }
        }
        if (JsonUtil.isValidJsonElement(globalSettings2)) {
            JsonElement merge2 = JsonUtil.merge(jsonElement, globalSettings2);
            if (JsonUtil.isValidJsonElement(merge2)) {
                jsonElement = merge2;
            }
        }
        if (!JsonUtil.isValidJsonElement(globalSettings3)) {
            return jsonElement;
        }
        JsonElement merge3 = JsonUtil.merge(jsonElement, globalSettings3);
        return JsonUtil.isValidJsonElement(merge3) ? merge3 : jsonElement;
    }

    public JsonElement getRcsDefaultPolicyUpdate(JsonElement jsonElement, boolean z) {
        return applyRcsDefaultPolicyUpdate(applyRcsDefaultPolicyUpdate(applyRcsDefaultPolicyUpdate(jsonElement, 2, z), 3, z), 4, z);
    }

    private JsonElement applyRcsDefaultPolicyUpdate(JsonElement jsonElement, int i, boolean z) {
        String str = z ? TAG_DEFAULT_UP_POLICY : TAG_DEFAULT_RCS_POLICY;
        JsonElement selectResource = selectResource(i);
        JsonElement jsonElement2 = JsonNull.INSTANCE;
        try {
            if (selectResource.getAsJsonObject().has(RCSRPOLICY_UPDATE)) {
                JsonObject asJsonObject = selectResource.getAsJsonObject().getAsJsonObject(RCSRPOLICY_UPDATE);
                if (JsonUtil.isValidJsonElement(asJsonObject) && asJsonObject.has(str)) {
                    jsonElement2 = asJsonObject.get(str);
                }
            }
        } catch (IllegalStateException unused) {
        }
        if (!JsonUtil.isValidJsonElement(jsonElement2)) {
            return jsonElement;
        }
        JsonElement merge = JsonUtil.merge(jsonElement, jsonElement2);
        return JsonUtil.isValidJsonElement(merge) ? merge : jsonElement;
    }

    public JsonElement getRcsPolicyUpdate(JsonElement jsonElement, String str) {
        if (TextUtils.isEmpty(str) || jsonElement.isJsonNull()) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "policyName is not valid or policy is JsonNull");
            return jsonElement;
        }
        return applyRcsPolicySettingUpdate(applyRcsPolicySettingUpdate(applyRcsPolicySettingUpdate(jsonElement, 2, str), 3, str), 4, str);
    }

    private JsonElement applyRcsPolicySettingUpdate(JsonElement jsonElement, int i, String str) {
        JsonElement selectResource = selectResource(i);
        JsonElement jsonElement2 = JsonNull.INSTANCE;
        try {
            if (selectResource.getAsJsonObject().has(RCSRPOLICY_UPDATE)) {
                JsonObject asJsonObject = selectResource.getAsJsonObject().getAsJsonObject(RCSRPOLICY_UPDATE);
                if (JsonUtil.isValidJsonElement(asJsonObject) && asJsonObject.has(TAG_RCS_POLICY)) {
                    Iterator it = asJsonObject.getAsJsonArray(TAG_RCS_POLICY).iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        JsonElement jsonElement3 = (JsonElement) it.next();
                        JsonObject asJsonObject2 = jsonElement3.getAsJsonObject();
                        if (asJsonObject2.has(TAG_POLICY_NAME) && TextUtils.equals(asJsonObject2.get(TAG_POLICY_NAME).getAsString(), str)) {
                            jsonElement2 = jsonElement3;
                            break;
                        }
                    }
                }
            }
        } catch (IllegalStateException unused) {
        }
        if (!JsonUtil.isValidJsonElement(jsonElement2)) {
            return jsonElement;
        }
        JsonElement merge = JsonUtil.merge(jsonElement, jsonElement2);
        return JsonUtil.isValidJsonElement(merge) ? merge : jsonElement;
    }

    JsonElement getUpdatedSmsSetting(JsonElement jsonElement, String str) {
        JsonArray asJsonArray;
        int indexWithMnoname;
        int[] iArr = {2, 3};
        JsonElement jsonElement2 = JsonNull.INSTANCE;
        String asString = jsonElement.getAsJsonObject().get("mnoname").getAsString();
        for (int i = 0; i < 2; i++) {
            try {
                JsonObject asJsonObject = selectResource(iArr[i]).getAsJsonObject().getAsJsonObject(SMS_SETTINGS_UPDATE);
                if (JsonUtil.isValidJsonElement(asJsonObject)) {
                    if (SmsSetting.Properties.DEFAULT_SETTING.equalsIgnoreCase(str)) {
                        jsonElement2 = JsonUtil.merge(jsonElement2, asJsonObject.get(str));
                    } else if ("mnoname".equalsIgnoreCase(str) && (indexWithMnoname = getIndexWithMnoname((asJsonArray = asJsonObject.getAsJsonArray(SmsSetting.Properties.SMS_SETTINGS)), asString)) != -1) {
                        jsonElement2 = JsonUtil.merge(jsonElement2, asJsonArray.get(indexWithMnoname));
                    }
                }
            } catch (ArrayIndexOutOfBoundsException | IllegalStateException unused) {
            }
        }
        JsonElement merge = JsonUtil.merge(jsonElement, jsonElement2);
        return JsonUtil.isValidJsonElement(merge) ? merge : jsonElement;
    }

    public static int getIndexWithMnoname(JsonArray jsonArray, String str) {
        if (jsonArray != null && !jsonArray.isJsonNull() && jsonArray.size() > 0) {
            for (int i = 0; i < jsonArray.size(); i++) {
                try {
                    JsonObject asJsonObject = jsonArray.get(i).getAsJsonObject();
                    JsonElement jsonElement = asJsonObject.get("mnoname");
                    if (jsonElement != null && !asJsonObject.isJsonNull() && jsonElement.getAsString().equalsIgnoreCase(str)) {
                        return i;
                    }
                } catch (ClassCastException | IllegalStateException | NullPointerException e) {
                    e.printStackTrace();
                }
            }
        }
        Log.e(LOG_TAG, "no matched element with mnoname " + str);
        return -1;
    }

    private static boolean needCheckMvno(JsonArray jsonArray, String str) {
        if (jsonArray.isJsonNull() || jsonArray.size() <= 0) {
            return false;
        }
        for (int i = 0; i < jsonArray.size(); i++) {
            try {
                JsonElement jsonElement = jsonArray.get(i).getAsJsonObject().get("mnoname");
                if (jsonElement.getAsString().startsWith(str.split(":")[0]) && jsonElement.getAsString().indexOf(Mno.MVNO_DELIMITER) != -1) {
                    return true;
                }
            } catch (ClassCastException | IllegalStateException | NullPointerException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    private static boolean isMatchedMnoName(boolean z, String str, String str2) {
        if (z && str.equalsIgnoreCase(str2)) {
            return true;
        }
        return !z && str.startsWith(str2.split(":")[0]);
    }

    private static int getIndexWithNames(JsonArray jsonArray, String str, String str2) {
        if (!jsonArray.isJsonNull() && jsonArray.size() > 0) {
            for (int i = 0; i < jsonArray.size(); i++) {
                try {
                    JsonObject asJsonObject = jsonArray.get(i).getAsJsonObject();
                    JsonElement jsonElement = asJsonObject.get("name");
                    JsonElement jsonElement2 = asJsonObject.get("mnoname");
                    if (jsonElement != null && jsonElement2 != null && !asJsonObject.isJsonNull() && jsonElement.getAsString().equalsIgnoreCase(str) && jsonElement2.getAsString().equalsIgnoreCase(str2)) {
                        return i;
                    }
                } catch (ClassCastException | IllegalStateException | NullPointerException e) {
                    e.printStackTrace();
                }
            }
        }
        Log.e(LOG_TAG, "no matched element with name " + str + "and mnoname " + str2);
        return -1;
    }

    public void updateSmkConfig(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.mSmkConfig.saveSmkConfig(new JsonParser().parse(str).getAsJsonObject());
    }

    public void clearSmkConfig() {
        this.mSmkConfig.clearSmkConfig();
    }

    public JsonObject getSmkConfig() {
        return this.mSmkConfig.getSmkConfig();
    }

    public static String readFromJsonFile(String str, String str2) {
        JsonObject asJsonObject;
        JsonArray jsonArray = mUpdateArrays;
        if (jsonArray != null && !jsonArray.isJsonNull()) {
            Iterator it = mUpdateArrays.iterator();
            while (it.hasNext()) {
                try {
                    asJsonObject = ((JsonElement) it.next()).getAsJsonObject();
                } catch (NullPointerException unused) {
                }
                if (str.equals(asJsonObject.get("name").getAsString())) {
                    return asJsonObject.get(str2).getAsString();
                }
            }
        }
        return "";
    }

    public void dump() {
        IMSLog.dump(LOG_TAG, this.mPhoneId, "\nDump of ImsAutoUpdate:");
        this.mEventLog.dump();
    }

    public void resetLoaded() {
        this.mLoaded = false;
    }

    public static class handleSmkConfig {
        private static final String LOG_TAG = "handleSmkConfig";
        private JsonObject mCachedSmkConfig;
        private Context mContext;
        private final File mDownloadedSmkConfig;
        private boolean mHasNewSmkConfig = false;

        public handleSmkConfig(Context context) {
            this.mContext = context;
            this.mDownloadedSmkConfig = new File(this.mContext.getFilesDir(), "smkconfig.json");
        }

        public void load() {
            try {
                if (this.mDownloadedSmkConfig.exists()) {
                    this.mCachedSmkConfig = new JsonParser().parse(new String(Files.readAllBytes(this.mDownloadedSmkConfig.toPath()))).getAsJsonObject();
                }
            } catch (IOException | JsonSyntaxException e) {
                e.printStackTrace();
            }
        }

        public void saveSmkConfig(JsonObject jsonObject) {
            Log.d(LOG_TAG, "Save downloaded Smk Config");
            try {
                if (this.mDownloadedSmkConfig.exists()) {
                    this.mDownloadedSmkConfig.delete();
                }
                this.mDownloadedSmkConfig.createNewFile();
                Files.write(this.mDownloadedSmkConfig.toPath(), jsonObject.toString().getBytes(), new OpenOption[0]);
                Log.d(LOG_TAG, "Store downloaded Smk Config complete");
                this.mCachedSmkConfig = jsonObject;
                this.mHasNewSmkConfig = true;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        public JsonObject getSmkConfig() {
            return this.mCachedSmkConfig;
        }

        public void clearSmkConfig() {
            Log.d(LOG_TAG, "Clear Smk Config");
            if (this.mCachedSmkConfig != null) {
                try {
                    if (this.mDownloadedSmkConfig.exists()) {
                        this.mDownloadedSmkConfig.delete();
                        disableSmkConfig();
                        Log.d(LOG_TAG, "Clear Smk Config Successfully");
                    }
                } catch (Exception unused) {
                    Log.d(LOG_TAG, "has problem for delete Smk Config");
                }
                this.mCachedSmkConfig = null;
            }
        }

        public void disableSmkConfig() {
            this.mHasNewSmkConfig = false;
        }

        public boolean hasNewSmkConfig() {
            return this.mHasNewSmkConfig;
        }
    }
}
