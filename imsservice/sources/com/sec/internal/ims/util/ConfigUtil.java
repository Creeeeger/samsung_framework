package com.sec.internal.ims.util;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.helper.os.PackageUtils;
import com.sec.internal.helper.os.TelephonyManagerWrapper;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.settings.ImsProfileLoaderInternal;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.ims.settings.ServiceConstants;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class ConfigUtil {
    private static final String ALGORITHM = "AES";
    public static final String LOCAL_CONFIG_FILE = "localconfig";
    private static final String LOG_TAG = "ConfigUtil";
    public static final String SDCARD_CONFIG_FILE = "/localconfig/config-local.xml";
    private static final String SP_KEY_GLOBAL_GC_ENABLED = "globalgcenabled";
    public static final String TRANSFORMATION = "AES/CBC/PKCS5Padding";
    private static final String UTF8 = "UTF-8";
    private static final byte[] mAesKeyBytes = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6};
    private static final byte[] mAesIvBytes = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    public static String getAcsServerType(int i) {
        return ImsRegistry.getString(i, GlobalSettingsConstants.RCS.APPLICATION_SERVER, "");
    }

    public static String getAcsCustomServerUrl(int i) {
        return ImsRegistry.getString(i, GlobalSettingsConstants.RCS.CUSTOM_CONFIG_SERVER_URL, "");
    }

    public static String getNetworkType(int i) {
        return ImsRegistry.getString(i, GlobalSettingsConstants.RCS.NETWORK_TYPE, "ims,internet,wifi");
    }

    public static String getModelName(int i) {
        return ImsRegistry.getString(i, GlobalSettingsConstants.RCS.MODEL_NAME, "");
    }

    public static String getSmsType(int i) {
        return ImsRegistry.getString(i, GlobalSettingsConstants.RCS.OTP_SMS_TYPE, "");
    }

    public static String getSmsPort(int i) {
        return ImsRegistry.getString(i, GlobalSettingsConstants.RCS.OTP_SMS_PORT, "");
    }

    public static String getSetting(String str, int i) {
        return ImsRegistry.getString(i, str, "");
    }

    public static boolean isRcsChatEnabled(Context context, int i, ISimManager iSimManager, boolean z) {
        if (iSimManager != null) {
            ContentValues mnoInfo = iSimManager.getMnoInfo();
            z = (CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_IMS, false) && CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, false) && CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS_CHAT_SERVICE, false)) || RcsUtils.isSingleRegiRequiredAndAndroidMessageAppInUsed(context, i);
            IMSLog.i(LOG_TAG, i, "isRcsChatEnabled: " + z);
        }
        return z;
    }

    public static String getRcsProfileWithFeature(Context context, int i, ImsProfile imsProfile) {
        if (imsProfile == null) {
            IMSLog.e(LOG_TAG, i, "getRcsProfileWithFeature: imsProfile: empty");
            return "";
        }
        String rcsProfile = imsProfile.getRcsProfile();
        String str = LOG_TAG;
        IMSLog.d(str, i, "getRcsProfileWithFeature: rcsProfile from imsProfile: " + rcsProfile);
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        Mno netMno = simManagerFromSimSlot != null ? simManagerFromSimSlot.getNetMno() : Mno.DEFAULT;
        String acsServerType = getAcsServerType(i);
        if (!TextUtils.isEmpty(rcsProfile) && !ImsConstants.RCS_AS.JIBE.equals(acsServerType) && netMno == Mno.VZW) {
            if (!isRcsChatEnabled(context, i, simManagerFromSimSlot, rcsProfile.startsWith("UP"))) {
                IMSLog.d(str, i, "getRcsProfileWithFeature: use default rcsProfile");
                return "";
            }
            IMSLog.d(str, i, "getRcsProfileWithFeature: use " + rcsProfile + " rcsProfile");
        }
        return rcsProfile;
    }

    public static String getRcsProfileLoaderInternalWithFeature(Context context, String str, int i) {
        String rcsProfile;
        Mno mno = Mno.DEFAULT;
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        if (simManagerFromSimSlot != null) {
            rcsProfile = ImsProfileLoaderInternal.getRcsProfile(context, simManagerFromSimSlot.getSimMnoName(), i);
            mno = simManagerFromSimSlot.getNetMno();
        } else {
            rcsProfile = ImsProfileLoaderInternal.getRcsProfile(context, str, i);
        }
        String str2 = LOG_TAG;
        IMSLog.d(str2, i, "getRcsProfileLoaderInternalWithFeature: rcsProfile: " + rcsProfile);
        String acsServerType = getAcsServerType(i);
        if (!TextUtils.isEmpty(rcsProfile) && !ImsConstants.RCS_AS.JIBE.equals(acsServerType) && mno == Mno.VZW) {
            if (!isRcsChatEnabled(context, i, simManagerFromSimSlot, rcsProfile.startsWith("UP"))) {
                IMSLog.d(str2, i, "getRcsProfileLoaderInternalWithFeature: use default rcsProfile");
                return "";
            }
            IMSLog.d(str2, i, "getRcsProfileLoaderInternalWithFeature: rcsProfile: " + rcsProfile);
        }
        return rcsProfile;
    }

    public static int getAutoconfigSourceWithFeature(int i, int i2) {
        int i3 = ImsRegistry.getInt(i, GlobalSettingsConstants.RCS.LOCAL_CONFIG_SERVER, i2);
        String acsServerType = getAcsServerType(i);
        String str = LOG_TAG;
        IMSLog.d(str, i, "getAutoconfigSourceWithFeature: " + i3 + " from globalSettings");
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
        Mno netMno = simManagerFromSimSlot != null ? simManagerFromSimSlot.getNetMno() : Mno.DEFAULT;
        if (!ImsConstants.RCS_AS.JIBE.equals(acsServerType) && netMno == Mno.VZW && i3 == 0) {
            if (!isRcsChatEnabled(ImsRegistry.getContext(), i, simManagerFromSimSlot, true)) {
                i3 = 2;
            }
            IMSLog.d(str, i, "getAutoconfigSourceWithFeature: use " + i3);
        }
        return i3;
    }

    public static boolean hasAcsProfile(Context context, final int i, ISimManager iSimManager) {
        String str = LOG_TAG;
        IMSLog.d(str, i, "hasAcsProfile:");
        if (!isRcsAvailable(context, i, iSimManager)) {
            return false;
        }
        if (iSimManager.getSimMno() == Mno.DEFAULT) {
            IMSLog.e(str, i, "no SIM loaded");
            return false;
        }
        IRegistrationManager registrationManager = ImsRegistry.getRegistrationManager();
        if (registrationManager == null) {
            IMSLog.e(str, i, "no RegistrationManager!");
            return false;
        }
        if (!getGlobalGcEnabled(context, i) && !isSimMobilityRCS(context, i, iSimManager, registrationManager)) {
            IMSLog.e(str, i, "This is a other country SIM, RCS disabled in SIM mobility");
            return false;
        }
        return ((Boolean) Optional.ofNullable(registrationManager.getImsProfile(i, ImsProfile.PROFILE_TYPE.RCS)).map(new Function() { // from class: com.sec.internal.ims.util.ConfigUtil$$ExternalSyntheticLambda2
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((ImsProfile) obj).getNeedAutoconfig());
            }
        }).orElseGet(new Supplier() { // from class: com.sec.internal.ims.util.ConfigUtil$$ExternalSyntheticLambda3
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$hasAcsProfile$0;
                lambda$hasAcsProfile$0 = ConfigUtil.lambda$hasAcsProfile$0(i);
                return lambda$hasAcsProfile$0;
            }
        })).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$hasAcsProfile$0(int i) {
        IMSLog.e(LOG_TAG, i, "No RCS profile found");
        return Boolean.FALSE;
    }

    public static boolean isRcsAvailable(Context context, int i, ISimManager iSimManager) {
        int rcsUserSetting;
        String str = LOG_TAG;
        IMSLog.d(str, i, "isRcsAvailable:");
        if (iSimManager == null || iSimManager.hasNoSim()) {
            return false;
        }
        if (RcsUtils.DualRcs.isRegAllowed(context, i)) {
            return ImsRegistry.getConfigModule().isRcsEnabled(i) && (((iSimManager.getSimMno() == Mno.ATT || iSimManager.getSimMno() == Mno.VZW || isRcsChn(iSimManager.getSimMno())) && !ImsConstants.RCS_AS.JIBE.equals(getAcsServerType(i))) || (rcsUserSetting = ImsConstants.SystemSettings.getRcsUserSetting(context, -1, i)) == 1 || rcsUserSetting == 2);
        }
        IMSLog.d(str, i, "DDS set to other SIM");
        return false;
    }

    public static boolean hasChatbotService(final int i, IRegistrationManager iRegistrationManager) {
        return ((Boolean) Optional.ofNullable(iRegistrationManager).map(new Function() { // from class: com.sec.internal.ims.util.ConfigUtil$$ExternalSyntheticLambda0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImsProfile lambda$hasChatbotService$1;
                lambda$hasChatbotService$1 = ConfigUtil.lambda$hasChatbotService$1(i, (IRegistrationManager) obj);
                return lambda$hasChatbotService$1;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.util.ConfigUtil$$ExternalSyntheticLambda1
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$hasChatbotService$2;
                lambda$hasChatbotService$2 = ConfigUtil.lambda$hasChatbotService$2((ImsProfile) obj);
                return lambda$hasChatbotService$2;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImsProfile lambda$hasChatbotService$1(int i, IRegistrationManager iRegistrationManager) {
        return iRegistrationManager.getImsProfile(i, ImsProfile.PROFILE_TYPE.RCS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$hasChatbotService$2(ImsProfile imsProfile) {
        return Boolean.valueOf(imsProfile.hasService(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION));
    }

    public static boolean isRcsOnly(ImsProfile imsProfile) {
        return (imsProfile.hasService("mmtel") || imsProfile.hasService("mmtel-video") || imsProfile.hasService("smsip")) ? false : true;
    }

    public static boolean isRcsEur(int i) {
        return isRcsEur(SimUtil.getSimMno(i));
    }

    public static boolean isRcsEur(Mno mno) {
        return mno.isEur() || mno.isSea() || mno.isMea() || mno.isSwa();
    }

    public static boolean isRcsCanada(Mno mno) {
        return mno.isCanada();
    }

    public static boolean isRcsChn(Mno mno) {
        return mno == Mno.CTC || mno == Mno.CU || mno == Mno.CMCC || mno == Mno.CBN;
    }

    public static boolean isRcsEurNonRjil(Mno mno) {
        return isRcsEur(mno) && !mno.isRjil();
    }

    public static boolean isSimMobilityRCS(Context context, final int i, ISimManager iSimManager, IRegistrationManager iRegistrationManager) {
        final boolean isSimMobilityActivatedForAmRcs = ImsUtil.isSimMobilityActivatedForAmRcs(context, i);
        if (!ImsUtil.isSimMobilityActivatedForRcs(i) && !isSimMobilityActivatedForAmRcs) {
            IMSLog.d(LOG_TAG, i, "isSimMobilityRCS: no need to check about SimMobility");
            return true;
        }
        boolean booleanValue = ((Boolean) Optional.ofNullable(iRegistrationManager).map(new Function() { // from class: com.sec.internal.ims.util.ConfigUtil$$ExternalSyntheticLambda4
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ImsProfile lambda$isSimMobilityRCS$3;
                lambda$isSimMobilityRCS$3 = ConfigUtil.lambda$isSimMobilityRCS$3(i, (IRegistrationManager) obj);
                return lambda$isSimMobilityRCS$3;
            }
        }).map(new Function() { // from class: com.sec.internal.ims.util.ConfigUtil$$ExternalSyntheticLambda5
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Boolean lambda$isSimMobilityRCS$4;
                lambda$isSimMobilityRCS$4 = ConfigUtil.lambda$isSimMobilityRCS$4(isSimMobilityActivatedForAmRcs, (ImsProfile) obj);
                return lambda$isSimMobilityRCS$4;
            }
        }).orElse(Boolean.FALSE)).booleanValue();
        if (OmcCode.isKorOpenOmcCode() && iSimManager.getSimMno().isKor()) {
            return true;
        }
        return booleanValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ImsProfile lambda$isSimMobilityRCS$3(int i, IRegistrationManager iRegistrationManager) {
        return iRegistrationManager.getImsProfile(i, ImsProfile.PROFILE_TYPE.RCS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$isSimMobilityRCS$4(boolean z, ImsProfile imsProfile) {
        return Boolean.valueOf(imsProfile.getEnableRcs() || z);
    }

    public static boolean isGcForEur(int i) {
        return isRcsEur(i) && ImsConstants.RCS_AS.JIBE.equals(getAcsServerType(i)) && isRcsPreConsent(i);
    }

    public static boolean isRcsPreConsent(int i) {
        return ImsRegistry.getInt(i, GlobalSettingsConstants.RCS.PRE_CONSENT, 0) == 1;
    }

    public static boolean isJibeAs(int i) {
        return ImsConstants.RCS_AS.JIBE.equalsIgnoreCase(getAcsServerType(i));
    }

    public static boolean checkMdmRcsStatus(Context context, int i) {
        String string;
        String valueOf = String.valueOf(i);
        Uri parse = Uri.parse("content://com.sec.knox.provider2/PhoneRestrictionPolicy");
        String[] strArr = {"1", ConfigConstants.VALUE.INFO_COMPLETED, valueOf};
        boolean z = true;
        if (context == null) {
            return true;
        }
        try {
            Cursor query = context.getContentResolver().query(parse, null, "isRCSEnabled", strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst() && (string = query.getString(query.getColumnIndex("isRCSEnabled"))) != null && string.equals(ConfigConstants.VALUE.INFO_COMPLETED)) {
                        IMSLog.d(LOG_TAG, i, "checkMdmRcsStatus: Disabled RCS");
                        z = false;
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (IllegalArgumentException unused) {
            IMSLog.e(LOG_TAG, i, "checkMdmRcsStatus: isAllowed = true due to IllegalArgumentException");
        }
        return z;
    }

    public static boolean shallUsePreviousCookie(int i, Mno mno) {
        return mno == Mno.SWISSCOM && i >= 500 && i != 511;
    }

    public static boolean doesUpRcsProfileMatchProvisioningVersion(String str, String str2) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("UP_1.0") || str.startsWith("UP_T")) {
            return "2.0".equals(str2);
        }
        if (str.startsWith("UP_2.0") || str.startsWith("UP_2.2")) {
            return ConfigConstants.PVALUE.PROVISIONING_VERSION_4_0.equals(str2);
        }
        if (str.startsWith("UP_2.3") || str.startsWith("UP_2.4")) {
            return ConfigConstants.PVALUE.PROVISIONING_VERSION_5_0.equals(str2);
        }
        return false;
    }

    public static int getConfigId(Context context, String str) {
        try {
            return context.getResources().getIdentifier(str, "raw", context.getPackageName());
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String getResourcesFromFile(Context context, int i, String str, String str2) {
        InputStream openRawResource;
        String str3;
        String str4 = LOG_TAG;
        IMSLog.d(str4, i, "getResourcesFromFile: fileName: " + str);
        String str5 = null;
        try {
            if (SDCARD_CONFIG_FILE.equals(str)) {
                openRawResource = new FileInputStream(Environment.getExternalStorageDirectory().getPath() + SDCARD_CONFIG_FILE);
            } else {
                openRawResource = context.getResources().openRawResource(getConfigId(context, LOCAL_CONFIG_FILE));
            }
            try {
                byte[] bArr = new byte[openRawResource.available()];
                if (openRawResource.read(bArr) < 0) {
                    IMSLog.e(str4, i, "fail to read buffer");
                }
                str3 = new String(bArr, str2);
            } finally {
            }
        } catch (IOException | NullPointerException e) {
            e = e;
        }
        try {
            openRawResource.close();
            return str3;
        } catch (IOException | NullPointerException e2) {
            e = e2;
            str5 = str3;
            e.printStackTrace();
            return str5;
        }
    }

    public static String encryptParam(String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(mAesKeyBytes, "AES");
            IvParameterSpec ivParameterSpec = new IvParameterSpec(mAesIvBytes);
            Cipher cipher = Cipher.getInstance(TRANSFORMATION);
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return new String(Base64.encode(cipher.doFinal(str.getBytes("UTF-8")), 0), "UTF-8");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void encryptParams(Map<String, String> map, String... strArr) {
        for (String str : strArr) {
            Locale locale = Locale.US;
            String str2 = map.get(str.toLowerCase(locale));
            if (str2 != null) {
                map.put(str.toLowerCase(locale), new String(Base64.encode(str2.getBytes(), 0)));
            }
        }
    }

    public static String decryptParam(String str, String str2) {
        String str3;
        if (str != null && !"".equals(str)) {
            try {
                byte[] decode = Base64.decode(str.getBytes("UTF-8"), 0);
                if (decode != null) {
                    SecretKeySpec secretKeySpec = new SecretKeySpec(mAesKeyBytes, "AES");
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(mAesIvBytes);
                    Cipher cipher = Cipher.getInstance(TRANSFORMATION);
                    cipher.init(2, secretKeySpec, ivParameterSpec);
                    str3 = new String(cipher.doFinal(decode), "UTF-8");
                } else {
                    str3 = null;
                }
                return str3 != null ? str3 : str2;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str2;
    }

    public static String getFormattedUserAgent(Mno mno, String str, String str2, String str3) {
        String str4;
        if (mno.isKor()) {
            if (OmcCode.isSKTOmcCode()) {
                str4 = "SKT";
            } else if (OmcCode.isKTTOmcCode()) {
                str4 = "KT";
            } else if (OmcCode.isLGTOmcCode()) {
                str4 = "LGU";
            } else {
                str4 = OmcCode.isKorOpenOmcCode() ? "OMD" : "";
            }
            return String.format(ConfigConstants.TEMPLATE.USER_AGENT_KOR, str, str2, str4);
        }
        return String.format(ConfigConstants.TEMPLATE.USER_AGENT, str, str2, str3);
    }

    public static String buildIdentity(Context context, int i) {
        String str;
        int subId = SimUtil.getSubId(i);
        ITelephonyManager telephonyManagerWrapper = TelephonyManagerWrapper.getInstance(context);
        String subscriberId = telephonyManagerWrapper.getSubscriberId(subId);
        String msisdn = telephonyManagerWrapper.getMsisdn(subId);
        String imei = telephonyManagerWrapper.getImei(i);
        if (!TextUtils.isEmpty(subscriberId)) {
            str = "IMSI_" + subscriberId;
        } else if (!TextUtils.isEmpty(msisdn)) {
            str = "MSISDN_" + msisdn;
        } else if (!TextUtils.isEmpty(imei)) {
            str = "IMEI_" + imei;
        } else {
            IMSLog.e(LOG_TAG, i, "identity error");
            str = "";
        }
        String replaceAll = str.replaceAll("[\\W]", "");
        IMSLog.d(LOG_TAG, i, "buildIdentity: " + subId + ", + identity : " + IMSLog.checker(replaceAll));
        return replaceAll;
    }

    public static boolean getGlobalGcEnabled(Context context, int i) {
        return ImsSharedPrefHelper.getBoolean(i, context, ImsSharedPrefHelper.GLOBAL_SETTINGS, "globalgcenabled", false);
    }

    public static boolean isIidTokenNeeded(Context context, int i, String str) {
        long gmsVersion = getGmsVersion(context, i);
        String string = ImsRegistry.getString(i, GlobalSettingsConstants.RCS.RCS_CLIENT_VERSION, "6.0");
        float parseFloat = !TextUtils.isEmpty(string) ? Float.parseFloat(string) : 0.0f;
        IMSLog.d(LOG_TAG, i, "GOOGLE_PLAY_SERVICES_PACKAGE Version : " + gmsVersion + ", clientVersion : " + parseFloat);
        return gmsVersion >= ConfigConstants.IID_TOKEN_MIN_GMS_CORE_VERSION && parseFloat >= 8.5f && isRcsPreConsent(i) && (isSecDmaPackageInuse(context, i) || String.valueOf(WorkflowBase.OpMode.DISABLE_RCS_BY_USER).equals(str));
    }

    public static long getGmsVersion(Context context, int i) {
        long j = 0;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.google.android.gms", 0);
            if (packageInfo != null) {
                j = packageInfo.getLongVersionCode();
            }
        } catch (PackageManager.NameNotFoundException unused) {
            IMSLog.d(LOG_TAG, i, "calling package NameNotFoundException");
        }
        IMSLog.d(LOG_TAG, i, "GmsVersion : " + j);
        return j;
    }

    public static String decryptConfigParams(String str, String str2, Mno mno, boolean z, int i) {
        char c;
        if (!z || mno != Mno.ATT || isJibeAs(i)) {
            return str2;
        }
        try {
            switch (str.hashCode()) {
                case -1051385883:
                    if (str.equals("nc_url")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -612456943:
                    if (str.equals("fthttpcsuser")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                case 110541305:
                    if (str.equals("token")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case 257333303:
                    if (str.equals("fthttpcspwd")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 257337958:
                    if (str.equals("fthttpcsuri")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 2070885700:
                    if (str.equals("nms_url")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            return (c == 0 || c == 1 || c == 2 || c == 3 || c == 4 || c == 5) ? new String(Base64.decode(str2, 0)) : str2;
        } catch (IllegalArgumentException unused) {
            String str3 = LOG_TAG;
            IMSLog.e(str3, "Failed to decrypt this param " + str);
            IMSLog.s(str3, "Wrong param " + str + ", data " + str2);
            return str2;
        }
    }

    public static boolean isSecDmaPackageInuse(Context context, int i) {
        String dmaPackage = getDmaPackage(context, i);
        if (dmaPackage == null) {
            Log.i(LOG_TAG, "default sms app is null");
            return false;
        }
        String msgAppPkgName = PackageUtils.getMsgAppPkgName(context);
        boolean equals = TextUtils.equals(dmaPackage, msgAppPkgName);
        String str = LOG_TAG;
        Log.i(str, "default sms app:" + dmaPackage + " samsungPackage:" + msgAppPkgName);
        StringBuilder sb = new StringBuilder();
        sb.append("isSecDmaPackageInuse : ");
        sb.append(equals);
        Log.i(str, sb.toString());
        return equals;
    }

    public static boolean isGoogDmaPackageInuse(Context context, int i) {
        String dmaPackage = getDmaPackage(context, i);
        if (TextUtils.isEmpty(dmaPackage)) {
            Log.i(LOG_TAG, "default sms app is null");
            return false;
        }
        String string = ImsRegistry.getString(i, GlobalSettingsConstants.RCS.GOOG_MESSAGE_APP_PACKAGE, "");
        boolean equals = TextUtils.equals(dmaPackage, string);
        String str = LOG_TAG;
        Log.i(str, "default sms app:" + dmaPackage + " googlePackage:" + string);
        StringBuilder sb = new StringBuilder();
        sb.append("isGoogDmaPackageInuse : ");
        sb.append(equals);
        Log.i(str, sb.toString());
        return equals;
    }

    public static String getDmaPackage(Context context, int i) {
        String str;
        try {
            str = Telephony.Sms.getDefaultSmsPackage(context);
            try {
                IMSLog.i(LOG_TAG, i, "getDmaPackage: defaultSmsApp from Telephony: " + str);
            } catch (Exception e) {
                e = e;
                IMSLog.i(LOG_TAG, i, "getDmaPackage: fail to get from Telephony: " + e.getMessage());
                return str;
            }
        } catch (Exception e2) {
            e = e2;
            str = null;
        }
        return str;
    }

    public static boolean isValidMsisdn(String str) {
        if (str == null || str.length() < 8) {
            Log.i(LOG_TAG, "invalid msisdn is used");
            return false;
        }
        try {
            if (!"00000000".equals(str.substring(str.length() - 8))) {
                return true;
            }
            Log.i(LOG_TAG, "invalid msisdn is used");
            return false;
        } catch (StringIndexOutOfBoundsException e) {
            Log.e(LOG_TAG, "isValidMsisdn: Exception: " + e.toString());
            return false;
        }
    }
}
