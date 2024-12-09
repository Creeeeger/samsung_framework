package com.sec.internal.helper.os;

import android.content.Context;
import android.os.SemSystemProperties;
import android.os.UserManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.internal.util.ArrayUtils;
import com.google.gson.JsonElement;
import com.google.gson.JsonIOException;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonReader;
import com.samsung.android.feature.SemCarrierFeature;
import com.samsung.android.service.EngineeringMode.EngineeringModeManager;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.cmstore.CloudMessageProviderContract;
import com.sec.internal.constants.ims.cmstore.data.MessageContextValues;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.config.StringArrayCarrierConfig$$ExternalSyntheticLambda0;
import com.sec.internal.constants.ims.os.SecFeature;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.header.WwwAuthenticateHeader;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.log.IMSLog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

/* loaded from: classes.dex */
public class DeviceUtil {
    private static final String LOG_TAG = "DeviceUtil";
    private static final String OMC_DATA_FILE = "omc_data.json";
    private static final String OMC_PATH_PRISM = "/prism/etc/";
    private static final long PERIOD_ONEDAY = 86400000;
    private static final String[][] REPRESENTATIVE_COUNTRY_ISO = {new String[]{"SE", "NO", "DK", "FI", "IS", "GL"}, new String[]{"LU", "BE"}, new String[]{"LV", "LT", "EE"}, new String[]{"RS", "AL", "MK"}, new String[]{"GB", "IE"}, new String[]{"GR", "CY"}, new String[]{"SI", "HR"}};
    private static final boolean IS_SHIP_BUILD = SemSystemProperties.get("ro.product_ship", MessageContextValues.none).equals(CloudMessageProviderContract.JsonData.TRUE);
    private static final boolean IS_USER = SemSystemProperties.get("ro.build.type", MessageContextValues.none).equals("user");
    private static long mlastQueryTime = 0;
    private static boolean isKeyStringActivated = false;

    public static boolean isTablet() {
        return SemSystemProperties.get("ro.build.characteristics", "").contains("tablet");
    }

    public static boolean isWifiOnlyModel() {
        return "wifi-only".equalsIgnoreCase(SemSystemProperties.get("ro.carrier", WwwAuthenticateHeader.HEADER_PARAM_UNKNOWN_SCHEME)) || "yes".equalsIgnoreCase(SemSystemProperties.get("ro.radio.noril", "no"));
    }

    public static boolean isUSOpenDevice() {
        return SemSystemProperties.get("ro.simbased.changetype", "").contains("SED");
    }

    public static boolean isUSMvnoDevice() {
        return ArrayUtils.contains(new String[]{"TFN", "TFV", "TFA", "TFO", "XAG", "XAR"}, OmcCode.get());
    }

    private static boolean checkKeyStringValidation() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = mlastQueryTime;
        if (j == 0 || currentTimeMillis - j >= PERIOD_ONEDAY) {
            mlastQueryTime = System.currentTimeMillis();
            try {
                EngineeringModeManager engineeringModeManager = new EngineeringModeManager(ImsRegistry.getContext());
                if (engineeringModeManager.isConnected()) {
                    if (engineeringModeManager.getStatus(Integer.parseInt(SemSystemProperties.get("ro.em.version", "10")) < 20 ? 1 : 9) == 1) {
                        IMSLog.i(LOG_TAG, "keyStringActivated!");
                        isKeyStringActivated = true;
                        return true;
                    }
                } else {
                    IMSLog.i(LOG_TAG, "checkToken: EM is null or not connected");
                }
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
            isKeyStringActivated = false;
        }
        return isKeyStringActivated;
    }

    public static boolean isKeyStringActivated() {
        if (IS_USER && IS_SHIP_BUILD && !checkKeyStringValidation()) {
            return false;
        }
        IMSLog.d(LOG_TAG, "checkToken: This is not user nor ship build, or already activated");
        return true;
    }

    public static boolean isUserUnlocked(Context context) {
        UserManager userManager;
        if (context != null && (userManager = (UserManager) context.getSystemService(UserManager.class)) != null) {
            return userManager.isUserUnlocked();
        }
        IMSLog.d(LOG_TAG, "temp log : User is lock");
        return false;
    }

    public static String getModemBoardName() {
        return SemSystemProperties.get("ril.modem.board", "").trim();
    }

    public static String getChipName() {
        return SemSystemProperties.get("ro.hardware.chipname", "").trim();
    }

    public static boolean getGcfMode() {
        return "1".equals(SemSystemProperties.get(ImsConstants.SystemProperties.GCF_MODE_PROPERTY, "0"));
    }

    public static void setGcfMode(boolean z) {
        SemSystemProperties.set(Mno.MOCK_MNO_PROPERTY, z ? Mno.GCF_OPERATOR_CODE : "");
        SemSystemProperties.set(Mno.MOCK_MNONAME_PROPERTY, z ? Mno.GCF_OPERATOR_NAME : "");
        SemSystemProperties.set(ImsConstants.SystemProperties.GCF_MODE_PROPERTY, z ? "1" : "0");
        SemSystemProperties.set(ImsConstants.SystemProperties.GCF_MODE_PROPERTY_P_OS, z ? "1" : "0");
    }

    public static int getWifiStatus(Context context, int i) {
        try {
            i = Settings.Global.getInt(context.getContentResolver(), "wifi_on");
        } catch (Settings.SettingNotFoundException unused) {
        }
        IMSLog.d(LOG_TAG, "getWifiStatus: " + i);
        return i;
    }

    public static boolean isSupport5G(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(TelephonyManager.class);
        if (telephonyManager != null && (telephonyManager.getSupportedRadioAccessFamily() & 524288) > 0) {
            IMSLog.d(LOG_TAG, "Support5G() : true");
            return true;
        }
        IMSLog.d(LOG_TAG, "Support5G() : false");
        return false;
    }

    public static boolean isUnifiedSalesCodeInTSS() {
        String str = SemSystemProperties.get("mdc.unified", ConfigConstants.VALUE.INFO_COMPLETED);
        IMSLog.d(LOG_TAG, "UnifiedSalesCodeInTSS() : " + str);
        return CloudMessageProviderContract.JsonData.TRUE.equalsIgnoreCase(str);
    }

    public static boolean isTSS2_0() {
        String str = OmcCode.get();
        return isUnifiedSalesCodeInTSS() && ("EUX".equals(str) || "EUY".equals(str));
    }

    public static String representativeCountryISO(String str) {
        String str2;
        String[][] strArr = REPRESENTATIVE_COUNTRY_ISO;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                str2 = str;
                break;
            }
            String[] strArr2 = strArr[i];
            if (ArrayUtils.contains(strArr2, str)) {
                str2 = strArr2[0];
                break;
            }
            i++;
        }
        IMSLog.i(LOG_TAG, "representativeCountryISO " + str + " ==> " + str2);
        return str2;
    }

    public static boolean includedSimByTSS(String str) {
        return includedSimByTSS(str, "/prism/etc//omc_data.json");
    }

    public static boolean includedSimByTSS(String str, String str2) {
        if (str2 == null || str == null) {
            IMSLog.e(LOG_TAG, "includedSimByTSS: invalid input mnoname=" + str + "omcDataPath=" + str2);
            return false;
        }
        String str3 = SemSystemProperties.get(OmcCode.OMC_CODE_PROPERTY, "");
        if (str3.isEmpty()) {
            IMSLog.e(LOG_TAG, "includedSimByTSS: empty sales_code");
            return false;
        }
        File file = new File(str2);
        try {
            if (file.length() <= 0) {
                IMSLog.e(LOG_TAG, "includedSimByTSS:not found " + str2);
                return false;
            }
            try {
                JsonReader jsonReader = new JsonReader(new BufferedReader(new FileReader(file)));
                try {
                    JsonElement parse = new JsonParser().parse(jsonReader);
                    if (hasJsonMember(parse, "unified_sales_code_list")) {
                        JsonObject asJsonObject = parse.getAsJsonObject().getAsJsonObject("unified_sales_code_list");
                        if (hasJsonMember(asJsonObject, str3)) {
                            JsonElement jsonElement = asJsonObject.getAsJsonObject().get(str3);
                            String representativeCountryISO = representativeCountryISO(Mno.getCountryFromMnomap(str).getCountryIso());
                            Stream map = StreamSupport.stream(jsonElement.getAsJsonArray().spliterator(), false).map(new StringArrayCarrierConfig$$ExternalSyntheticLambda0());
                            Objects.requireNonNull(representativeCountryISO);
                            boolean anyMatch = map.anyMatch(new DeviceUtil$$ExternalSyntheticLambda0(representativeCountryISO));
                            IMSLog.i(LOG_TAG, "includedSimByTSS: " + anyMatch + " in Unified Sales Code (TSS2.0)");
                            jsonReader.close();
                            return anyMatch;
                        }
                        jsonReader.close();
                        return false;
                    }
                    jsonReader.close();
                    return false;
                } catch (Throwable th) {
                    try {
                        jsonReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (JsonIOException | JsonSyntaxException | IOException e) {
                IMSLog.e(LOG_TAG, "omc_data.json parsing failed by " + e);
                return false;
            }
        } catch (SecurityException e2) {
            IMSLog.e(LOG_TAG, e2.getMessage());
            return false;
        }
    }

    private static boolean hasJsonMember(JsonElement jsonElement, String str) {
        if (jsonElement.isJsonNull() || !jsonElement.isJsonObject()) {
            IMSLog.i(LOG_TAG, "includedSimByTSS: invalid json data");
            return false;
        }
        if (jsonElement.getAsJsonObject().has(str)) {
            return true;
        }
        IMSLog.i(LOG_TAG, "includedSimByTSS: not found " + str);
        return false;
    }

    public static boolean removeVolteMenuByCsc(int i) {
        return SemCarrierFeature.getInstance().getString(i, SecFeature.CARRIER.CONFIGOPSTYLEMOBILENETWORKSETTINGMENU, "", false).toUpperCase(Locale.US).contains("-VOLTECALL");
    }

    public static boolean removeVolteMenuWithSimMobility(int i) {
        String upperCase = SemCarrierFeature.getInstance().getString(i, SecFeature.CARRIER.CONFIGOPSTYLEMOBILENETWORKSETTINGMENU, "", false).toUpperCase(Locale.US);
        if (ImsUtil.isSimMobilityActivated(i)) {
            return upperCase.contains("-VOLTECALL_SIM_MOBILITY");
        }
        return upperCase.contains("-VOLTECALL");
    }

    public static boolean dimVolteMenuBySaMode(int i) {
        return SemCarrierFeature.getInstance().getString(i, SecFeature.CARRIER.CONFIGOPSTYLEFORMOBILENETSETTING, "", false).toUpperCase(Locale.US).contains("SUPPORT_VOLTE_DIM_BY_SA_MODE");
    }

    public static boolean isApAssistedMode() {
        return "AP-Assisted".equalsIgnoreCase(SemSystemProperties.get("ro.telephony.iwlan_operation_mode", "AP-Assisted"));
    }

    public static boolean isSupportNrMode(ITelephonyManager iTelephonyManager, int i) {
        int semGetNrMode = iTelephonyManager.semGetNrMode(i);
        boolean z = semGetNrMode == 0 || semGetNrMode == 2 || semGetNrMode == 3;
        IMSLog.d(LOG_TAG, i, " mTelephonyManager.semGetNrMode : " + semGetNrMode);
        return z;
    }

    public static String getFormattedDeviceId(String str, String str2) {
        String str3;
        if (str != null && str.length() >= 14) {
            return str.substring(0, 8) + CmcConstants.E_NUM_SLOT_SPLIT + str.substring(8, 14) + "-0" + ((String) Optional.ofNullable(str2).filter(new Predicate() { // from class: com.sec.internal.helper.os.DeviceUtil$$ExternalSyntheticLambda1
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean lambda$getFormattedDeviceId$0;
                    lambda$getFormattedDeviceId$0 = DeviceUtil.lambda$getFormattedDeviceId$0((String) obj);
                    return lambda$getFormattedDeviceId$0;
                }
            }).map(new Function() { // from class: com.sec.internal.helper.os.DeviceUtil$$ExternalSyntheticLambda2
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return new Integer((String) obj);
                }
            }).map(new Function() { // from class: com.sec.internal.helper.os.DeviceUtil$$ExternalSyntheticLambda3
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    String lambda$getFormattedDeviceId$1;
                    lambda$getFormattedDeviceId$1 = DeviceUtil.lambda$getFormattedDeviceId$1((Integer) obj);
                    return lambda$getFormattedDeviceId$1;
                }
            }).orElse(""));
        }
        String str4 = LOG_TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("getFormattedDeviceId: ");
        if (str == null) {
            str3 = "null!";
        } else {
            str3 = "length = " + str.length();
        }
        sb.append(str3);
        Log.d(str4, sb.toString());
        return str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getFormattedDeviceId$0(String str) {
        return str.matches("[0-9]?[0-9]");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$getFormattedDeviceId$1(Integer num) {
        return String.format(Locale.US, ";svn=%02d", num);
    }

    public static boolean isAirplaneModeOn(Context context) {
        return ImsConstants.SystemSettings.AIRPLANE_MODE.get(context, 0) == ImsConstants.SystemSettings.AIRPLANE_MODE_ON;
    }
}
