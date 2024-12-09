package com.sec.internal.ims.rcs.util;

import android.R;
import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.telephony.CarrierConfigManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.settings.UserConfiguration;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.entitilement.NSDSNamespaces;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;

/* loaded from: classes.dex */
public class RcsUtils {
    private static String LOG_TAG = "RcsUtils";

    public static class DualRcs {
        private static Map<Integer, Boolean> mIsDualRcsRegForSlot = new HashMap();
        private static boolean mIsDualRcsSettings = false;

        public static boolean isDualRcsReg() {
            if (SimUtil.getPhoneCount() < 2) {
                Log.i(RcsUtils.LOG_TAG, "isDualRcsReg: false");
                return false;
            }
            for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                if (!mIsDualRcsRegForSlot.getOrDefault(Integer.valueOf(i), Boolean.FALSE).booleanValue()) {
                    Log.i(RcsUtils.LOG_TAG, "isDualRcsReg: false");
                    return false;
                }
            }
            Log.i(RcsUtils.LOG_TAG, "isDualRcsReg: true");
            return true;
        }

        public static boolean isDualRcsSettings() {
            IMSLog.i(RcsUtils.LOG_TAG, "isDualRcsSettings: " + mIsDualRcsSettings);
            return mIsDualRcsSettings;
        }

        public static void refreshDualRcsReg(Context context) {
            refreshDualRcsSettings(context);
            HashMap hashMap = new HashMap();
            for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                hashMap.put(Integer.valueOf(i), Boolean.valueOf(isRegAllowed(context, i)));
            }
            updateDualRcsRegi(context, hashMap);
        }

        private static void updateDualRcsRegi(Context context, Map<Integer, Boolean> map) {
            IMSLog.i(RcsUtils.LOG_TAG, "updateDualRcsRegi: " + mIsDualRcsRegForSlot + "->" + map);
            int i = 0;
            while (true) {
                if (i >= SimUtil.getPhoneCount()) {
                    break;
                }
                if (mIsDualRcsRegForSlot.getOrDefault(Integer.valueOf(i), Boolean.FALSE) != map.get(Integer.valueOf(i))) {
                    context.getContentResolver().notifyChange(ImsConstants.Uris.RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS, null);
                    break;
                }
                i++;
            }
            mIsDualRcsRegForSlot.putAll(map);
        }

        public static void refreshDualRcsSettings(Context context) {
            if (!SimUtil.isDualIMS()) {
                mIsDualRcsSettings = false;
                return;
            }
            for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
                ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
                if (simManagerFromSimSlot == null || !simManagerFromSimSlot.isSimAvailable()) {
                    mIsDualRcsSettings = false;
                    return;
                }
            }
            for (int i2 = 0; i2 < SimUtil.getPhoneCount(); i2++) {
                if (dualRcsPolicyCase(context, i2)) {
                    mIsDualRcsSettings = true;
                    return;
                }
            }
            mIsDualRcsSettings = false;
        }

        public static boolean needToCheckOmcCodeAndSimMno(int i) {
            int dualRcsPolicy = getDualRcsPolicy(i);
            return dualRcsPolicy == 1 || dualRcsPolicy == 4;
        }

        public static int getDualRcsPolicy(int i) {
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
            if (SimUtil.getSimMno(i) == Mno.GOOGLEGC && simManagerFromSimSlot != null && "us".equalsIgnoreCase(simManagerFromSimSlot.getSimCountryIso())) {
                return 1;
            }
            return ImsRegistry.getInt(i, "dual_rcs_policy", 0);
        }

        public static boolean isRegAllowed(Context context, int i) {
            if (RcsUtils.isSingleRegiRequiredAndAndroidMessageAppInUsed(context, i)) {
                return true;
            }
            if (i == SimUtil.getActiveDataPhoneId() && (!needToCheckOmcCodeAndSimMno(i) || !SimUtil.isDualIMS())) {
                return true;
            }
            if (!SimUtil.isDualIMS()) {
                return false;
            }
            if (SimUtil.isDishCrossOver() || SimUtil.isCctChaCBRS(i)) {
                Log.i(RcsUtils.LOG_TAG, "DishCross or CctChaCBRS - isRegAllowed: return true");
                return true;
            }
            return dualRcsPolicyCase(context, i);
        }

        public static boolean dualRcsPolicyCase(Context context, int i) {
            return DualRcsPolicyType.fromInt(getDualRcsPolicy(i)).isDualRcsPolicyConditionMatch(i);
        }
    }

    private static String[] getProperSalesCodeIfEmpty(String str) {
        String str2;
        if ("GCI_US".equals(str) || "Geoverse_US".equals(str) || "Union_US".equals(str) || "DPAC_US".equals(str) || "GTA_US".equals(str) || "ITE_US".equals(str) || "ASTCA_US".equals(str)) {
            str2 = "XAA";
        } else {
            str2 = "Interop_US".equals(str) ? "ACG" : "";
        }
        return str2.split(",");
    }

    static String getMatchedSalesCode(String str, Mno mno) {
        String[] allSalesCodes = mno.getAllSalesCodes();
        if (TextUtils.isEmpty(allSalesCodes[0])) {
            allSalesCodes = getProperSalesCodeIfEmpty(mno.getName());
        }
        for (String str2 : allSalesCodes) {
            if (str2.equals(str)) {
                return str;
            }
        }
        return allSalesCodes[0];
    }

    public static String getRepresentSalesCode(String str) {
        return TextUtils.equals(str, "APP") ? "ATT" : TextUtils.equals(str, "VPP") ? "VZW" : str;
    }

    public static class UiUtils {
        public static final int RCS_PREF_ALWAYS_ASK = 2;
        public static final int RCS_PREF_ALWAYS_CONNECT = 1;
        public static final int RCS_PREF_NEVER = 0;
        private static boolean mHasRcsUserConsent = false;
        private static AlertDialog mRcsPdnDialog;

        public static boolean isMainSwitchVisible(Context context, int i) throws RemoteException {
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
            if (simManagerFromSimSlot == null || !simManagerFromSimSlot.isSimAvailable()) {
                return false;
            }
            boolean z = ImsRegistry.getBoolean(i, GlobalSettingsConstants.RCS.SHOW_MAIN_SWITCH, false);
            boolean isRcsEnabledinSettings = isRcsEnabledinSettings(context, i);
            IMSLog.i(RcsUtils.LOG_TAG, i, "isMainSwitchVisible: mIsVisible= " + z + ", rcsEnabled= " + isRcsEnabledinSettings);
            return z && isRcsEnabledinSettings;
        }

        public static boolean isRcsEnabledinSettings(Context context, int i) {
            return isRcsEnabledInImsSwitch(context, i);
        }

        private static boolean isRcsEnabledInImsSwitch(Context context, int i) {
            ContentValues mnoInfo;
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
            if (simManagerFromSimSlot == null || (mnoInfo = simManagerFromSimSlot.getMnoInfo()) == null) {
                return false;
            }
            return simManagerFromSimSlot.isLabSimCard() || SimUtil.isSoftphoneEnabled() || CollectionUtils.getBooleanValue(mnoInfo, ImsServiceSwitch.ImsSwitch.RCS.ENABLE_RCS, false) || RcsUtils.isSingleRegiRequiredAndAndroidMessageAppInUsed(context, i);
        }

        public static boolean isSameRcsOperator(ImsProfile imsProfile, ImsProfile imsProfile2) {
            String str;
            String str2;
            String mnoName = imsProfile.getMnoName();
            String rcsConfigMark = imsProfile.getRcsConfigMark();
            if (imsProfile2 != null) {
                str2 = imsProfile2.getRcsConfigMark();
                str = imsProfile2.getMnoName();
                if (str.length() > 3) {
                    str = str.substring(0, str.length() - 3);
                }
            } else {
                str = "";
                str2 = str;
            }
            if (mnoName.length() > 3) {
                mnoName = mnoName.substring(0, mnoName.length() - 3);
            }
            Log.i(RcsUtils.LOG_TAG, "isSameOperatorByProfile: rcsConfigMark = " + rcsConfigMark + ", otherSlotRcsConfigMark = " + str2 + ", mnoName = " + mnoName + ", otherSlotMnoName = " + str);
            return ("".equals(rcsConfigMark) || "".equals(str2)) ? mnoName.equals(str) : rcsConfigMark.equals(str2);
        }

        public static boolean isRcsEnabledEnrichedCalling(final int i) {
            ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i);
            if (simManagerFromSimSlot == null || !simManagerFromSimSlot.isSimAvailable()) {
                return false;
            }
            boolean booleanValue = ((Boolean) Optional.ofNullable(ImsRegistry.getRegistrationManager()).map(new Function() { // from class: com.sec.internal.ims.rcs.util.RcsUtils$UiUtils$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    ImsProfile lambda$isRcsEnabledEnrichedCalling$0;
                    lambda$isRcsEnabledEnrichedCalling$0 = RcsUtils.UiUtils.lambda$isRcsEnabledEnrichedCalling$0(i, (IRegistrationManager) obj);
                    return lambda$isRcsEnabledEnrichedCalling$0;
                }
            }).map(new Function() { // from class: com.sec.internal.ims.rcs.util.RcsUtils$UiUtils$$ExternalSyntheticLambda1
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Boolean lambda$isRcsEnabledEnrichedCalling$1;
                    lambda$isRcsEnabledEnrichedCalling$1 = RcsUtils.UiUtils.lambda$isRcsEnabledEnrichedCalling$1((ImsProfile) obj);
                    return lambda$isRcsEnabledEnrichedCalling$1;
                }
            }).orElse(Boolean.FALSE)).booleanValue();
            Log.i(RcsUtils.LOG_TAG, "isEnrichedCalling = " + booleanValue);
            return booleanValue;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ImsProfile lambda$isRcsEnabledEnrichedCalling$0(int i, IRegistrationManager iRegistrationManager) {
            return iRegistrationManager.getImsProfile(i, ImsProfile.PROFILE_TYPE.RCS);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Boolean lambda$isRcsEnabledEnrichedCalling$1(ImsProfile imsProfile) {
            return Boolean.valueOf(imsProfile.hasService("ec"));
        }

        public static boolean getRcsUserConsent(Context context, ITelephonyManager iTelephonyManager, int i) {
            int userConfig = UserConfiguration.getUserConfig(context, i, "rcs_roaming_pref", 1);
            int userConfig2 = UserConfiguration.getUserConfig(context, i, "rcs_home_pref", 1);
            boolean isNetworkRoaming = iTelephonyManager.isNetworkRoaming();
            if (!isNetworkRoaming) {
                userConfig = userConfig2;
            }
            Log.i(RcsUtils.LOG_TAG, "getRcsUserConsent: rcsConnectPref = " + userConfig + " , isRoaming = " + isNetworkRoaming);
            if (mHasRcsUserConsent) {
                mHasRcsUserConsent = false;
                return true;
            }
            if (userConfig == 0) {
                if (!SimUtil.getSimMno(i).isKor()) {
                    return false;
                }
                setRcsPrefValue(context, i, isNetworkRoaming, 1);
                return true;
            }
            if (userConfig != 2) {
                return true;
            }
            if (NetworkUtil.isMobileDataOn(context) && ImsConstants.SystemSettings.AIRPLANE_MODE.get(context, 0) != ImsConstants.SystemSettings.AIRPLANE_MODE_ON) {
                showPdnConfirmation(context, isNetworkRoaming);
            }
            return false;
        }

        private static DialogInterface.OnClickListener createRcsPdnPrefClickListener(final Context context, final boolean z, final int i) {
            return new DialogInterface.OnClickListener() { // from class: com.sec.internal.ims.rcs.util.RcsUtils.UiUtils.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                    Log.i(RcsUtils.LOG_TAG, "User preference for RCS PDN: " + i + " (roaming: " + z + ")");
                    int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
                    UiUtils.setRcsPrefValue(context, activeDataPhoneId, z, i);
                    if (i != 0) {
                        UiUtils.mHasRcsUserConsent = true;
                        ImsRegistry.getRegistrationManager().requestTryRegister(activeDataPhoneId);
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void setRcsPrefValue(Context context, int i, boolean z, int i2) {
            if (z) {
                UserConfiguration.setUserConfig(context, i, "rcs_roaming_pref", i2);
            } else {
                UserConfiguration.setUserConfig(context, i, "rcs_home_pref", i2);
            }
        }

        private static void showPdnConfirmation(Context context, boolean z) {
            String string;
            if (OmcCode.isKOROmcCode() || OmcCode.isChinaOmcCode() || OmcCode.isJPNOmcCode() || NSDSNamespaces.NSDSSettings.CHANNEL_NAME_TMO.equals(OmcCode.get()) || "VZW".equals(OmcCode.get()) || "ATT".equals(OmcCode.get()) || "APP".equals(OmcCode.get()) || "BMC".equals(OmcCode.get())) {
                return;
            }
            AlertDialog alertDialog = mRcsPdnDialog;
            if (alertDialog == null || !alertDialog.isShowing()) {
                AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.Theme.DeviceDefault.Light.Dialog.Alert);
                builder.setTitle(context.getResources().getString(com.sec.imsservice.R.string.dialog_title_rcs_service));
                if (z) {
                    string = context.getResources().getString(com.sec.imsservice.R.string.dialog_text_rcs_pdn_pref_roaming);
                } else {
                    string = context.getResources().getString(com.sec.imsservice.R.string.dialog_text_rcs_pdn_pref_home);
                }
                builder.setMessage(string);
                builder.setPositiveButton(context.getResources().getString(com.sec.imsservice.R.string.dialog_text_rcs_pdn_pref_allow_always), createRcsPdnPrefClickListener(context, z, 1));
                builder.setNeutralButton(context.getResources().getString(com.sec.imsservice.R.string.dialog_text_rcs_pdn_pref_allow_once), createRcsPdnPrefClickListener(context, z, 2));
                builder.setNegativeButton(context.getResources().getString(com.sec.imsservice.R.string.dialog_text_rcs_pdn_pref_deny), createRcsPdnPrefClickListener(context, z, 0));
                AlertDialog create = builder.create();
                mRcsPdnDialog = create;
                create.getWindow().setType(2038);
                mRcsPdnDialog.getWindow().addFlags(65792);
                mRcsPdnDialog.setCanceledOnTouchOutside(false);
                mRcsPdnDialog.setCancelable(false);
                mRcsPdnDialog.show();
            }
        }
    }

    public static boolean isAutoConfigNeeded(Set<String> set) {
        new HashSet(set).retainAll(Arrays.asList(ImsProfile.getRcsServiceList()));
        return !r0.isEmpty();
    }

    @SuppressLint({"MissingPermission"})
    private static boolean readBooleanCarrierConfigValue(Context context, int i, String str) {
        CarrierConfigManager carrierConfigManager = (CarrierConfigManager) context.getSystemService("carrier_config");
        if (carrierConfigManager == null) {
            IMSLog.e(LOG_TAG, i, "readBooleanCarrierConfigValue: CarrierConfigManager is null");
            return false;
        }
        PersistableBundle configForSubId = carrierConfigManager.getConfigForSubId(SimUtil.getSubId(i));
        if (configForSubId == null) {
            IMSLog.e(LOG_TAG, i, "readBooleanCarrierConfigValue: PersistableBundle is null");
            return false;
        }
        return configForSubId.getBoolean(str, false);
    }

    public static boolean isSingleRegiRequiredAndAndroidMessageAppInUsed(Context context, int i) {
        return SimUtil.getSimMno(i).isUSA() && isImsSingleRegiRequired(context, i) && ConfigUtil.isGoogDmaPackageInuse(context, i);
    }

    public static boolean isImsSingleRegiRequired(Context context, int i) {
        return readBooleanCarrierConfigValue(context, i, "ims.ims_single_registration_required_bool");
    }

    public static boolean isSrRcsOptionsEnabled(Context context, int i) {
        return readBooleanCarrierConfigValue(context, i, "use_rcs_sip_options_bool");
    }

    public static boolean isSrRcsPresenceEnabled(Context context, int i) {
        return readBooleanCarrierConfigValue(context, i, "ims.enable_presence_publish_bool");
    }

    public static long getEpochNanosec(int i) {
        if (i == ImDirection.INCOMING.getId()) {
            return 0L;
        }
        return System.nanoTime() + (((System.currentTimeMillis() - 600000) * 1000000) - System.nanoTime());
    }
}
