package com.sec.internal.ims.core;

import android.content.ContentValues;
import android.content.Context;
import android.net.Network;
import android.net.Uri;
import android.os.Message;
import android.os.SemSystemProperties;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.core.RegistrationConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.os.VoPsIndication;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.helper.os.ITelephonyManager;
import com.sec.internal.ims.core.SlotBasedConfig;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.IImsFramework;
import com.sec.internal.interfaces.ims.aec.IAECModule;
import com.sec.internal.interfaces.ims.core.IRegisterTask;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.rcs.IRcsPolicyManager;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class RegistrationUtils {
    private static final String LOG_TAG = "RegiMgr-Utils";

    static boolean isCmcPrimaryType(int i) {
        return i == 1 || i == 3 || i == 5 || i == 7;
    }

    static boolean isCmcSecondaryType(int i) {
        return i == 2 || i == 4 || i == 8;
    }

    private RegistrationUtils() {
    }

    static ImsProfile[] getProfileList(int i) {
        List<ImsProfile> profiles = SlotBasedConfig.getInstance(i).getProfiles();
        if (!CollectionUtils.isNullOrEmpty(profiles)) {
            ImsProfile[] imsProfileArr = new ImsProfile[profiles.size()];
            profiles.toArray(imsProfileArr);
            return imsProfileArr;
        }
        Map<Integer, ImsProfile> extendedProfiles = SlotBasedConfig.getInstance(i).getExtendedProfiles();
        int i2 = 0;
        if (CollectionUtils.isNullOrEmpty(extendedProfiles)) {
            return new ImsProfile[0];
        }
        ImsProfile[] imsProfileArr2 = new ImsProfile[extendedProfiles.size()];
        Iterator<Map.Entry<Integer, ImsProfile>> it = extendedProfiles.entrySet().iterator();
        while (it.hasNext()) {
            imsProfileArr2[i2] = it.next().getValue();
            i2++;
        }
        return imsProfileArr2;
    }

    static ImsRegistration[] getRegistrationInfoByPhoneId(int i, ImsRegistration[] imsRegistrationArr) {
        ArrayList arrayList = new ArrayList();
        for (ImsRegistration imsRegistration : imsRegistrationArr) {
            if (imsRegistration.getPhoneId() == i) {
                arrayList.add(imsRegistration);
            }
        }
        if (CollectionUtils.isNullOrEmpty(arrayList)) {
            return null;
        }
        return (ImsRegistration[]) arrayList.toArray(new ImsRegistration[0]);
    }

    static NetworkEvent getNetworkEvent(int i) {
        NetworkEvent networkEvent = SlotBasedConfig.getInstance(i).getNetworkEvent();
        if (networkEvent == null) {
            IMSLog.i(LOG_TAG, i, "getNetworkEvent is not exist. Return null..");
        }
        return networkEvent;
    }

    static ImsRegistration getRegistrationInfo(int i, int i2) {
        if (i2 < 0) {
            Log.i(LOG_TAG, "invalid profileId : " + i2);
            return null;
        }
        return SlotBasedConfig.getInstance(i).getImsRegistrations().get(Integer.valueOf(i2));
    }

    static boolean hasVolteService(int i, ImsProfile imsProfile) {
        NetworkEvent networkEvent = getNetworkEvent(i);
        if (networkEvent == null) {
            return false;
        }
        return ImsProfile.hasVolteService(imsProfile, networkEvent.network);
    }

    static boolean hasRcsService(int i, ImsProfile imsProfile) {
        NetworkEvent networkEvent = SlotBasedConfig.getInstance(i).getNetworkEvent();
        if (networkEvent == null) {
            return false;
        }
        if ((imsProfile.getPdnType() == -1 || imsProfile.getPdnType() == 1) && networkEvent.isWifiConnected) {
            return ImsProfile.hasRcsService(imsProfile, ImsProfile.NETWORK_TYPE.WIFI);
        }
        return ImsProfile.hasRcsService(imsProfile, networkEvent.network);
    }

    static boolean hasRcsService(int i, ImsProfile imsProfile, boolean z) {
        if ((imsProfile.getPdnType() == -1 || imsProfile.getPdnType() == 1) && z) {
            return ImsProfile.hasRcsService(imsProfile, ImsProfile.NETWORK_TYPE.WIFI);
        }
        return hasRcsService(i, imsProfile);
    }

    static boolean supportCsTty(IRegisterTask iRegisterTask) {
        int ttyType = iRegisterTask.getProfile().getTtyType();
        return ttyType == 1 || ttyType == 3;
    }

    static String getPublicUserIdentity(ImsProfile imsProfile, int i, String str, ISimManager iSimManager) {
        String str2;
        if (imsProfile != null && imsProfile.getImpuList().size() > 0 && (str2 = (String) imsProfile.getImpuList().get(0)) != null) {
            IMSLog.s(LOG_TAG, i, "getPublicUserIdentity: impu from ImsProfile - " + str2);
            return str2;
        }
        if (imsProfile != null && !ImsProfile.hasVolteService(imsProfile) && str != null) {
            IMSLog.s(LOG_TAG, i, "getPublicUserIdentity: impu from autoconfig - " + str);
            return str;
        }
        String impuFromSim = iSimManager.getImpuFromSim();
        IMSLog.s(LOG_TAG, i, "getPublicUserIdentity: impu from sim - " + impuFromSim);
        return (imsProfile == null || !Mno.fromName(imsProfile.getMnoName()).isOneOf(Mno.CABLE_PANAMA, Mno.ORANGE_DOMINICANA, Mno.ALE_ECUADOR, Mno.CABLE_BARBADOS, Mno.CABLE_JAMAICA, Mno.VODAFONEPNG_NEWZEALAND)) ? impuFromSim : iSimManager.getDerivedImpu();
    }

    static String getPrivateUserIdentityfromIsim(int i, ITelephonyManager iTelephonyManager, ISimManager iSimManager, Mno mno) {
        String derivedImpi;
        int subId = SimUtil.getSubId(i);
        if (subId < 0) {
            return "";
        }
        String isimImpi = iTelephonyManager.getIsimImpi(subId);
        if (TextUtils.isEmpty(isimImpi)) {
            isimImpi = iSimManager.getDerivedImpi();
        }
        if (!mno.isOneOf(Mno.EE, Mno.EE_ESN) && !mno.isKor()) {
            return mno.isOneOf(Mno.CABLE_PANAMA, Mno.ORANGE_DOMINICANA, Mno.ALE_ECUADOR, Mno.CABLE_BARBADOS, Mno.CABLE_JAMAICA) ? iSimManager.getDerivedImpi() : isimImpi;
        }
        String[] isimImpu = iTelephonyManager.getIsimImpu(subId);
        String isimDomain = iTelephonyManager.getIsimDomain(subId);
        boolean z = false;
        if (isimImpu != null) {
            int length = isimImpu.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (!TextUtils.isEmpty(isimImpu[i2])) {
                    z = true;
                    break;
                }
                i2++;
            }
        }
        IMSLog.i(LOG_TAG, i, "getPrivateUserIdentity: MNO=" + mno + ", found impu=" + z + ", domain=" + isimDomain + ", impi=" + IMSLog.checker(isimImpi));
        if (mno.isKor()) {
            if (z) {
                return isimImpi;
            }
            derivedImpi = iSimManager.getDerivedImpi();
        } else {
            if (z && !TextUtils.isEmpty(isimDomain) && !TextUtils.isEmpty(isimImpi)) {
                return isimImpi;
            }
            derivedImpi = iSimManager.getDerivedImpi();
        }
        return derivedImpi;
    }

    static String getPrivateUserIdentity(Context context, ImsProfile imsProfile, int i, ITelephonyManager iTelephonyManager, IRcsPolicyManager iRcsPolicyManager, ISimManager iSimManager) {
        String derivedImpi;
        int indexOf;
        String impi = imsProfile.getImpi();
        if (!TextUtils.isEmpty(impi)) {
            IMSLog.s(LOG_TAG, i, "impi=" + impi);
            return impi;
        }
        Mno fromName = Mno.fromName(imsProfile.getMnoName());
        if (fromName != Mno.VZW || SimUtil.isCCT(i) || ConfigUtil.isRcsOnly(imsProfile)) {
            if (iSimManager == null) {
                return "";
            }
            if (iSimManager.hasIsim()) {
                derivedImpi = getPrivateUserIdentityfromIsim(i, iTelephonyManager, iSimManager, fromName);
            } else {
                derivedImpi = iSimManager.getDerivedImpi();
            }
            if (!ImsProfile.hasVolteService(imsProfile)) {
                derivedImpi = iRcsPolicyManager.getRcsPrivateUserIdentity(derivedImpi, imsProfile, i);
            }
            IMSLog.s(LOG_TAG, i, "impi=" + derivedImpi);
            return derivedImpi;
        }
        int subId = SimUtil.getSubId(i);
        if (subId < 0) {
            return "";
        }
        String subscriberId = iTelephonyManager.getSubscriberId(subId);
        if (IsNonDirectRoamingCase(context, iSimManager, iTelephonyManager)) {
            String isimImpi = iTelephonyManager.getIsimImpi(subId);
            if (!TextUtils.isEmpty(isimImpi) && (indexOf = isimImpi.indexOf("@")) > 0) {
                subscriberId = isimImpi.substring(0, indexOf);
            }
            IMSLog.e(LOG_TAG, i, "IMPI from ISIM is empty");
        }
        String str = subscriberId + "@" + getHomeNetworkDomain(context, imsProfile, i, iTelephonyManager, iRcsPolicyManager, iSimManager);
        IMSLog.s(LOG_TAG, i, "imsiBasedImpi=" + str);
        return str;
    }

    static boolean IsNonDirectRoamingCase(Context context, ISimManager iSimManager, ITelephonyManager iTelephonyManager) {
        String simOperator;
        String str;
        if (iSimManager == null) {
            IMSLog.i(LOG_TAG, 0, "IsNonDirectRoamingCase, get operator from TelephonyManager.");
            simOperator = ((TelephonyManager) context.getSystemService(PhoneConstants.PHONE_KEY)).getSimOperator();
            str = iTelephonyManager.getGroupIdLevel1();
        } else {
            IMSLog.i(LOG_TAG, 0, "IsNonDirectRoamingCase, get operator from SimManager.");
            simOperator = iSimManager.getSimOperator();
            int subscriptionId = iSimManager.getSubscriptionId();
            String groupIdLevel1 = iTelephonyManager.getGroupIdLevel1(subscriptionId);
            IMSLog.i(LOG_TAG, subscriptionId + "," + simOperator + "," + groupIdLevel1);
            str = groupIdLevel1;
        }
        return TextUtils.equals(simOperator, "20404") && "BAE0000000000000".equalsIgnoreCase(str);
    }

    static String getHomeNetworkDomain(Context context, ImsProfile imsProfile, int i, ITelephonyManager iTelephonyManager, IRcsPolicyManager iRcsPolicyManager, ISimManager iSimManager) {
        String isimDomain = iTelephonyManager.getIsimDomain(SimUtil.getSubId(i));
        Mno fromName = Mno.fromName(imsProfile.getMnoName());
        IMSLog.i(LOG_TAG, i, "getHomeNetworkDomain: mno=" + fromName.getName() + " EFDOMAIN=" + isimDomain + " domain from profile=" + imsProfile.getDomain());
        if (fromName == Mno.VZW && !ConfigUtil.isRcsOnly(imsProfile)) {
            boolean z = imsProfile.getPcscfPreference() == 2;
            if (TextUtils.isEmpty(isimDomain) || z) {
                isimDomain = imsProfile.getDomain();
            }
        } else if (imsProfile.isSoftphoneEnabled() || imsProfile.isSamsungMdmnEnabled()) {
            Iterator it = imsProfile.getImpuList().iterator();
            while (true) {
                if (!it.hasNext()) {
                    isimDomain = null;
                    break;
                }
                String str = (String) it.next();
                if (!TextUtils.isEmpty(str) && str.indexOf("@") > 0 && str.contains("sip")) {
                    isimDomain = str.substring(str.indexOf("@") + 1);
                    break;
                }
            }
        } else {
            if (fromName == Mno.GCF && !TextUtils.isEmpty(isimDomain)) {
                return isimDomain;
            }
            String rcsHomeNetworkDomain = TextUtils.isEmpty(imsProfile.getDomain()) ? iRcsPolicyManager.getRcsHomeNetworkDomain(imsProfile, i) : imsProfile.getDomain();
            if (!TextUtils.isEmpty(rcsHomeNetworkDomain)) {
                isimDomain = rcsHomeNetworkDomain;
            }
        }
        String isDerivedDomainFromImsiRequired = isDerivedDomainFromImsiRequired(fromName, imsProfile, iSimManager, i, isimDomain);
        IMSLog.i(LOG_TAG, i, "getHomeNetworkDomain: domain=" + isDerivedDomainFromImsiRequired);
        return isDerivedDomainFromImsiRequired.replaceAll("[^\\x20-\\x7E]", "");
    }

    private static String isDerivedDomainFromImsiRequired(Mno mno, ImsProfile imsProfile, ISimManager iSimManager, int i, String str) {
        String str2;
        boolean z = true;
        boolean z2 = ((ConfigUtil.isRcsEur(i) && ConfigUtil.isRcsOnly(imsProfile)) || imsProfile.isSamsungMdmnEnabled() || ((!mno.isChn() || ImsProfile.isRcsUpProfile(imsProfile.getRcsProfile())) && !mno.isOneOf(Mno.H3G_DK, Mno.H3G_SE, Mno.METEOR_IRELAND, Mno.EE, Mno.EE_ESN)) || ImsConstants.RCS_AS.JIBE.equalsIgnoreCase(ConfigUtil.getAcsServerType(i)) || iSimManager == null || (iSimManager.hasIsim() && iSimManager.isISimDataValid())) ? false : true;
        if (!TextUtils.isEmpty(str) && ((!mno.isLatin() || !imsProfile.getPdn().equals(DeviceConfigManager.IMS) || iSimManager == null || (iSimManager.hasIsim() && iSimManager.isISimDataValid())) && mno != Mno.ALE_ECUADOR && mno != Mno.CABLE_BARBADOS && mno != Mno.CABLE_JAMAICA && mno != Mno.VINAPHONE && mno != Mno.MASCOM_BOTSWANA)) {
            z = z2;
        } else if (mno == Mno.TWM) {
            return String.format(Locale.US, "%s", "ims.taiwanmobile.com");
        }
        if (!z) {
            return str;
        }
        if (iSimManager == null) {
            str2 = null;
        } else if (mno == Mno.TMOUS) {
            str2 = iSimManager.getHighestPriorityEhplmn();
        } else {
            str2 = iSimManager.getSimOperator();
        }
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        String format = String.format(Locale.US, "ims.mnc%03d.mcc%03d.3gppnetwork.org", Integer.valueOf(Integer.parseInt(str2.substring(3))), Integer.valueOf(Integer.parseInt(str2.substring(0, 3))));
        Log.i(LOG_TAG, "getHomeNetworkDomain: Use derived domain - operator " + str2);
        return format;
    }

    static void saveRegisteredImpu(Context context, ImsRegistration imsRegistration, ISimManager iSimManager) {
        IMSLog.i(LOG_TAG, imsRegistration.getPhoneId(), "saveRegisteredImpu:");
        if (iSimManager == null) {
            return;
        }
        if (!iSimManager.isSimLoaded()) {
            Log.i(LOG_TAG, "SIM not Loaded");
            return;
        }
        Uri parse = Uri.parse("content://com.sec.ims.settings/impu");
        String imsi = iSimManager.getImsi();
        ContentValues contentValues = new ContentValues();
        contentValues.put("imsi", imsi);
        contentValues.put("impu", imsRegistration.getPreferredImpu().getUri().toString());
        contentValues.put("timestamp", Long.valueOf(new Date().getTime()));
        context.getContentResolver().insert(parse, contentValues);
    }

    static boolean hasVoLteSim(int i, ISimManager iSimManager, ITelephonyManager iTelephonyManager, SlotBasedConfig.RegisterTaskList registerTaskList) {
        Mno simMno = iSimManager.getSimMno();
        if (simMno == null || registerTaskList == null) {
            IMSLog.i(LOG_TAG, i, "hasVoLteSim - no mno or no task");
            return false;
        }
        if (CollectionUtils.isNullOrEmpty(getProfileList(i))) {
            IMSLog.i(LOG_TAG, i, "hasVoLteSim - no matched profile with SIM");
            return false;
        }
        if (!Mno.fromSalesCode(OmcCode.get()).isKor() && !isNotNeededCheckPdnFail(iSimManager, iTelephonyManager, simMno)) {
            Iterator<RegisterTask> it = registerTaskList.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (next.getGovernor().isNonVoLteSimByPdnFail()) {
                    IMSLog.i(LOG_TAG, next.getPhoneId(), "hasVoLteSim - Pdn rejected by network");
                    return false;
                }
            }
            if (simMno.isOneOf(Mno.TELEFONICA_UK, Mno.TELEFONICA_UK_LAB)) {
                IAECModule aECModule = ImsRegistry.getAECModule();
                if (aECModule.getEntitlementForVoLte(i) && !aECModule.getVoLteEntitlementStatus(i)) {
                    IMSLog.i(LOG_TAG, i, "hasVoLteSim - Entitlement is not ready");
                    return false;
                }
            }
            NetworkEvent networkEvent = getNetworkEvent(i);
            if (ImsRegistry.getBoolean(i, GlobalSettingsConstants.Registration.VOLTE_SETTING_DIM_BY_VOPS, false) && networkEvent != null && networkEvent.voiceOverPs == VoPsIndication.NOT_SUPPORTED && NetworkUtil.is3gppPsVoiceNetwork(networkEvent.network)) {
                IMSLog.i(LOG_TAG, i, "hasVoLteSim - VoPS not supported in " + TelephonyManagerExt.getNetworkTypeName(networkEvent.network));
                return false;
            }
        }
        return true;
    }

    private static boolean isNotNeededCheckPdnFail(ISimManager iSimManager, ITelephonyManager iTelephonyManager, Mno mno) {
        if (mno != Mno.ORANGE_SPAIN) {
            return false;
        }
        String simOperatorName = iTelephonyManager.getSimOperatorName(iSimManager.getSubscriptionId());
        return "simyo".equalsIgnoreCase(TextUtils.isEmpty(simOperatorName) ? "" : simOperatorName.trim());
    }

    static boolean hasLoadedProfile(int i) {
        IMSLog.i(LOG_TAG, i, "hasLoadedProfile:");
        return (CollectionUtils.isNullOrEmpty(SlotBasedConfig.getInstance(i).getProfiles()) && CollectionUtils.isNullOrEmpty(SlotBasedConfig.getInstance(i).getExtendedProfiles())) ? false : true;
    }

    static void setVoLTESupportProperty(boolean z, int i) {
        String str;
        if (SimUtil.isMultiSimSupported()) {
            if (!z) {
                for (ImsProfile imsProfile : SlotBasedConfig.getInstance(i).getProfiles()) {
                    if (imsProfile.hasService("smsip") || imsProfile.hasService("mmtel") || imsProfile.hasService("mmtel-video")) {
                        str = "1";
                        break;
                    }
                }
            }
            str = "0";
            IMSLog.i(LOG_TAG, i, "setVoLTESupportProperty: volteSupported [" + str + "]");
            StringBuilder sb = new StringBuilder();
            sb.append("persist.sys.ims.supportmmtel");
            sb.append(i + 1);
            SemSystemProperties.set(sb.toString(), str);
        }
    }

    static boolean hasSimMobilityProfile(int i) {
        Iterator<ImsProfile> it = SlotBasedConfig.getInstance(i).getProfiles().iterator();
        while (it.hasNext()) {
            if (it.next().getSimMobility()) {
                return true;
            }
        }
        return false;
    }

    static boolean pendingHasEmergencyTask(int i, Mno mno) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = getPendingRegistrationInternal(i);
        if (pendingRegistrationInternal == null || mno != Mno.VZW) {
            return false;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (it.hasNext()) {
            if (it.next().getProfile().hasEmergencySupport()) {
                return true;
            }
        }
        return false;
    }

    protected static SlotBasedConfig.RegisterTaskList getPendingRegistrationInternal(int i) {
        if (i < 0 || i >= SimUtil.getPhoneCount()) {
            IMSLog.e(LOG_TAG, "getPendingRegistrationInternal : Invalid phoneId : " + i);
            return null;
        }
        return SlotBasedConfig.getInstance(i).getRegistrationTasks();
    }

    static int selectPdnType(ImsProfile imsProfile, int i) {
        int pdnType = imsProfile.getPdnType();
        if (pdnType == -1) {
            pdnType = i == 18 ? 1 : 0;
        }
        if (SimUtil.isSoftphoneEnabled() && pdnType == 0) {
            pdnType = 5;
        }
        Log.i(LOG_TAG, "selectPdnType: rat=" + i + " pdn=" + pdnType);
        return pdnType;
    }

    static boolean checkAusEmergencyCall(Mno mno, int i, ISimManager iSimManager) {
        if (mno.isAus()) {
            return iSimManager.getSimMno().isAus() || ImsUtil.getSystemProperty("gsm.operator.numeric", i, "00101").startsWith("505");
        }
        return false;
    }

    static int getPhoneIdForStartConnectivity(IRegisterTask iRegisterTask) {
        int phoneId = iRegisterTask.getPhoneId();
        if (iRegisterTask.getPdnType() == 0) {
            phoneId = SimUtil.getActiveDataPhoneId();
        }
        IMSLog.i(LOG_TAG, phoneId, "getPhoneIdForStartConnectivity: task: " + iRegisterTask + " phoneId: " + phoneId);
        return phoneId;
    }

    static void sendEmergencyRegistrationFailed(IRegisterTask iRegisterTask) {
        Log.i(LOG_TAG, "sendEmergencyRegistrationFailed");
        iRegisterTask.setState(RegistrationConstants.RegisterTaskState.EMERGENCY);
        if (iRegisterTask.getResultMessage() != null) {
            iRegisterTask.getResultMessage().sendToTarget();
            iRegisterTask.setResultMessage(null);
        } else {
            Log.i(LOG_TAG, "sendEmergencyRegistrationFailed, mResult is NULL");
        }
    }

    static boolean isCmcProfile(ImsProfile imsProfile) {
        return imsProfile.getCmcType() != 0;
    }

    static List<RegisterTask> getPriorityRegiedTask(boolean z, IRegisterTask iRegisterTask) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal;
        IMSLog.i(LOG_TAG, iRegisterTask.getPhoneId(), "getPriorityRegiedTask : isPriority  High? " + z);
        ArrayList arrayList = new ArrayList();
        if (!isCmcProfile(iRegisterTask.getProfile()) && (pendingRegistrationInternal = getPendingRegistrationInternal(iRegisterTask.getPhoneId())) != null) {
            Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
            while (it.hasNext()) {
                RegisterTask next = it.next();
                if (!isCmcProfile(next.getProfile())) {
                    RegistrationConstants.RegisterTaskState registerTaskState = RegistrationConstants.RegisterTaskState.CONNECTING;
                    RegistrationConstants.RegisterTaskState registerTaskState2 = RegistrationConstants.RegisterTaskState.REGISTERING;
                    RegistrationConstants.RegisterTaskState registerTaskState3 = RegistrationConstants.RegisterTaskState.REGISTERED;
                    if (next.isOneOf(registerTaskState, registerTaskState2, registerTaskState3, RegistrationConstants.RegisterTaskState.DEREGISTERING)) {
                        Set allServiceSetFromAllNetwork = next.getProfile().getAllServiceSetFromAllNetwork();
                        allServiceSetFromAllNetwork.retainAll(iRegisterTask.getProfile().getAllServiceSetFromAllNetwork());
                        if (!allServiceSetFromAllNetwork.isEmpty()) {
                            if (z) {
                                if (next.getProfile().getPriority() > iRegisterTask.getProfile().getPriority()) {
                                    arrayList.add(next);
                                }
                            } else if (!next.getProfile().hasEmergencySupport() && next.getProfile().getPriority() < iRegisterTask.getProfile().getPriority()) {
                                arrayList.add(next);
                            }
                        }
                    }
                    if (iRegisterTask.getMno() == Mno.RJIL && z) {
                        IMSLog.i(LOG_TAG, next.getPhoneId(), "Profile is in = " + next.getState());
                        if (!next.getProfile().hasEmergencySupport() && next.getState() != registerTaskState3 && next.getProfile().getPriority() > iRegisterTask.getProfile().getPriority()) {
                            IMSLog.i(LOG_TAG, next.getPhoneId(), "Priority task is pending");
                            arrayList.add(next);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    static String handleExceptionalMnoName(Mno mno, int i, ISimManager iSimManager) {
        IMSLog.i(LOG_TAG, i, "handleExceptionalMnoName:");
        String name = mno.getName();
        if (iSimManager == null) {
            return "";
        }
        if (mno == Mno.ATT && iSimManager.hasVsim()) {
            return name + ":softphone";
        }
        if (!checkAusEmergencyCall(mno, i, iSimManager)) {
            return name;
        }
        String systemProperty = ImsUtil.getSystemProperty("gsm.operator.numeric", i, "00101");
        IMSLog.i(LOG_TAG, i, "handleExceptionalMnoName: nwOperator: " + systemProperty);
        if ("50502".equals(systemProperty)) {
            return Mno.OPTUS.getName();
        }
        if ("50501".equals(systemProperty) || "50571".equals(systemProperty) || "50572".equals(systemProperty)) {
            return Mno.TELSTRA.getName();
        }
        if ("50503".equals(systemProperty) || "50506".equals(systemProperty)) {
            return Mno.VODAFONE_AUSTRALIA.getName();
        }
        "50514".equals(systemProperty);
        return name;
    }

    static void replaceProfilesOnTask(RegisterTask registerTask) {
        IMSLog.i(LOG_TAG, registerTask.getPhoneId(), "ReplaceProfilesOnTask:");
        List<ImsProfile> profiles = SlotBasedConfig.getInstance(registerTask.getPhoneId()).getProfiles();
        if (CollectionUtils.isNullOrEmpty(profiles)) {
            return;
        }
        for (ImsProfile imsProfile : profiles) {
            if (registerTask.getProfile().getId() == imsProfile.getId()) {
                registerTask.setProfile(imsProfile);
            }
        }
    }

    static boolean needToNotifyImsReady(ImsProfile imsProfile, int i) {
        if ((imsProfile.isSoftphoneEnabled() || (imsProfile.isSamsungMdmnEnabled() && imsProfile.getCmcType() == 0)) && !imsProfile.hasEmergencySupport()) {
            return true;
        }
        if (!isCmcSecondaryType(imsProfile.getCmcType())) {
            return false;
        }
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = getPendingRegistrationInternal(i);
        return pendingRegistrationInternal != null && pendingRegistrationInternal.size() == 1;
    }

    static boolean isDelayDeRegForNonADSOnFlightModeChanged(RegisterTask registerTask) {
        SlotBasedConfig.RegisterTaskList pendingRegistrationInternal;
        boolean z;
        if (!SimUtil.isDualIMS() || !SemSystemProperties.get("ro.boot.hardware", "").contains("qcom") || (pendingRegistrationInternal = getPendingRegistrationInternal(SimUtil.getOppositeSimSlot(registerTask.getPhoneId()))) == null) {
            return false;
        }
        Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            RegisterTask next = it.next();
            if (next.isOneOf(RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.DEREGISTERING) && !next.isRcsOnly()) {
                z = true;
                break;
            }
        }
        if (!z || registerTask.getPhoneId() == SimUtil.getActiveDataPhoneId()) {
            return false;
        }
        IMSLog.i(LOG_TAG, registerTask.getPhoneId(), "isDelayDeRegForNonADSOnFlightModeChanged : true");
        return true;
    }

    static Set<String> filterserviceFbe(Context context, Set<String> set, ImsProfile imsProfile) {
        if (set == null) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet(set);
        if (!DeviceUtil.isUserUnlocked(context)) {
            Log.i(LOG_TAG, "filterserviceFbe: rcsonly=" + ConfigUtil.isRcsOnly(imsProfile));
            if (ConfigUtil.isRcsOnly(imsProfile)) {
                return new HashSet();
            }
            for (String str : ImsProfile.getChatServiceList()) {
                hashSet.remove(str);
            }
        }
        return hashSet;
    }

    static void updateImsIcon(final IRegisterTask iRegisterTask) {
        Optional.ofNullable(SlotBasedConfig.getInstance(iRegisterTask.getPhoneId()).getIconManager()).ifPresent(new Consumer() { // from class: com.sec.internal.ims.core.RegistrationUtils$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RegistrationUtils.lambda$updateImsIcon$0(IRegisterTask.this, (ImsIconManager) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateImsIcon$0(IRegisterTask iRegisterTask, ImsIconManager imsIconManager) {
        if (iRegisterTask.getProfile().hasEmergencySupport()) {
            return;
        }
        imsIconManager.updateRegistrationIcon();
    }

    static void initRttMode(Context context) {
        Log.i(LOG_TAG, "initRttMode");
        for (int i = 0; i < SimUtil.getPhoneCount(); i++) {
            SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = getPendingRegistrationInternal(i);
            if (pendingRegistrationInternal != null) {
                Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
                while (it.hasNext()) {
                    RegisterTask next = it.next();
                    if (next.getProfile().getTtyType() == 3 || next.getProfile().getTtyType() == 4) {
                        IMSLog.i(LOG_TAG, i, "initRttMode : " + next.getProfile().getName() + " : " + next.getProfile().getTtyType());
                        SlotBasedConfig.getInstance(i).setRTTMode(Boolean.valueOf(ImsUtil.isRttModeOnFromCallSettings(context, i)));
                        break;
                    }
                }
            }
        }
    }

    public static boolean ignoreSendDeregister(int i, Mno mno, RegisterTask registerTask, int i2) {
        if ((i2 == 3 && registerTask.getPdnType() == 11) || (i2 == 4 && registerTask.getPdnType() != 11)) {
            Log.i(LOG_TAG, "Not matched pdn type. reason: " + i2 + ",pdnType: " + registerTask.getPdnType());
            return true;
        }
        if (i2 == 124 && !registerTask.getProfile().isEpdgSupported()) {
            Log.i(LOG_TAG, "Ignore Epdg deregister due to not support epdg profile : " + registerTask.getProfile().getName());
            return true;
        }
        if (ConfigUtil.isRcsChn(mno) && registerTask.isRcsOnly() && (i2 == 4 || i2 == 3 || i2 == 1)) {
            Log.i(LOG_TAG, "sendDeregister : 4 or 1: RCS not needed");
            return true;
        }
        int i3 = getNetworkEvent(i).network;
        if (mno == Mno.DOCOMO && !NetworkUtil.is3gppPsVoiceNetwork(i3) && (i2 == 4 || i2 == 3)) {
            Log.i(LOG_TAG, "sendDeregister : DCM doesn't need to handle this on 3G");
            return true;
        }
        if (i2 != 143) {
            return false;
        }
        if (!registerTask.isRcsOnly() || !registerTask.getProfile().getNeedAutoconfig()) {
            return true;
        }
        registerTask.setReason("FORCE SMS PUSH");
        return false;
    }

    public static List<String> retrievePcscfByProfileSettings(IRegisterTask iRegisterTask, PdnController pdnController, IRcsPolicyManager iRcsPolicyManager, String[] strArr) {
        int phoneId = iRegisterTask.getPhoneId();
        ImsProfile profile = iRegisterTask.getProfile();
        int pcscfPreference = profile.getPcscfPreference();
        List<String> arrayList = new ArrayList<>();
        if (pcscfPreference == 0 || (pcscfPreference == 4 && !iRegisterTask.isRcsOnly())) {
            arrayList = pdnController.readPcscfFromLinkProperties(pdnController.getLinkProperties(iRegisterTask));
            if ((iRegisterTask.getMno() == Mno.KT || iRegisterTask.getMno() == Mno.SKT) && CollectionUtils.isNullOrEmpty(arrayList)) {
                IMSLog.i(LOG_TAG, phoneId, "getPcscfAddresses: pcscfList invalid call retryDNSQuery");
                iRegisterTask.getGovernor().retryDNSQuery();
                if (getNetworkEvent(phoneId).isDataRoaming) {
                    arrayList = profile.getPcscfList();
                }
            }
        } else if (pcscfPreference == 3 || pcscfPreference == 4) {
            arrayList.add(iRcsPolicyManager.getRcsPcscfAddress(iRegisterTask.getProfile(), iRegisterTask.getPhoneId()));
        } else if (pcscfPreference == 5) {
            arrayList = retrievePcscfViaOmadm(iRegisterTask, pdnController);
        } else if (pcscfPreference == 2) {
            arrayList = profile.getPcscfList();
            if (arrayList.size() == 0) {
                IMSLog.e(LOG_TAG, phoneId, "getPcscfAddress: No P-CSCF address found in profile " + profile.getName());
                return null;
            }
        } else if (pcscfPreference == 1) {
            arrayList = new ArrayList<>(Arrays.asList(strArr));
        }
        IMSLog.i(LOG_TAG, phoneId, "getPcscfAddress: " + arrayList);
        return arrayList;
    }

    static List<String> retrievePcscfViaOmadm(IRegisterTask iRegisterTask, PdnController pdnController) {
        int phoneId = iRegisterTask.getPhoneId();
        ImsProfile profile = iRegisterTask.getProfile();
        if (Mno.fromName(profile.getMnoName()).isKor() && profile.hasEmergencySupport()) {
            List<String> readPcscfFromLinkProperties = pdnController.readPcscfFromLinkProperties(pdnController.getLinkProperties(iRegisterTask));
            if (readPcscfFromLinkProperties.size() != 0) {
                return readPcscfFromLinkProperties;
            }
            IMSLog.e(LOG_TAG, phoneId, "getPcscfAddress: No P-CSCF address found in PCO " + profile.getName());
            SlotBasedConfig.RegisterTaskList pendingRegistrationInternal = getPendingRegistrationInternal(phoneId);
            if (pendingRegistrationInternal != null) {
                Iterator<RegisterTask> it = pendingRegistrationInternal.iterator();
                while (it.hasNext()) {
                    RegisterTask next = it.next();
                    if (!next.getProfile().hasEmergencySupport() || next.getProfile().getName().contains(ImsConstants.EmergencyRat.LTE)) {
                        readPcscfFromLinkProperties = next.getProfile().getPcscfList();
                        IMSLog.e(LOG_TAG, phoneId, "getPcscfAddress: P-CSCF address found in VoLTE profile " + readPcscfFromLinkProperties);
                        break;
                    }
                }
            }
            return readPcscfFromLinkProperties.size() == 0 ? profile.getPcscfList() : readPcscfFromLinkProperties;
        }
        return profile.getPcscfList();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
    
        r4 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean isSatisfiedCarrierRequirement(int r3, com.sec.ims.settings.ImsProfile r4, com.sec.internal.constants.Mno r5, int r6, boolean r7) {
        /*
            com.sec.internal.constants.Mno r0 = com.sec.internal.constants.Mno.TMOUS
            r1 = 0
            r2 = 1
            if (r5 != r0) goto Lb
            if (r6 != r2) goto Lb
            if (r7 != 0) goto Lb
            return r1
        Lb:
            boolean r6 = r5.isKor()
            if (r6 == 0) goto L5c
            boolean r6 = com.sec.ims.settings.ImsProfile.hasVolteService(r4)
            if (r6 != 0) goto L5c
            boolean r4 = r4.getSupportRcsAcrossSalesCode()
            if (r4 != 0) goto L5c
            com.sec.internal.constants.Mno r4 = com.sec.internal.constants.Mno.SKT
            if (r5 != r4) goto L30
            boolean r4 = com.sec.internal.helper.OmcCode.isSKTOmcCode()
            if (r4 != 0) goto L51
            boolean r4 = com.sec.internal.helper.OmcCode.isKorOpenOmcCode()
            if (r4 == 0) goto L2e
            goto L51
        L2e:
            r4 = r1
            goto L52
        L30:
            com.sec.internal.constants.Mno r4 = com.sec.internal.constants.Mno.KT
            if (r5 != r4) goto L41
            boolean r4 = com.sec.internal.helper.OmcCode.isKTTOmcCode()
            if (r4 != 0) goto L51
            boolean r4 = com.sec.internal.helper.OmcCode.isKorOpenOmcCode()
            if (r4 == 0) goto L2e
            goto L51
        L41:
            com.sec.internal.constants.Mno r4 = com.sec.internal.constants.Mno.LGU
            if (r5 != r4) goto L51
            boolean r4 = com.sec.internal.helper.OmcCode.isLGTOmcCode()
            if (r4 != 0) goto L51
            boolean r4 = com.sec.internal.helper.OmcCode.isKorOpenOmcCode()
            if (r4 == 0) goto L2e
        L51:
            r4 = r2
        L52:
            if (r4 != 0) goto L5c
            java.lang.String r4 = "RegiMgr-Utils"
            java.lang.String r5 = "buildTask: Not support device. skip RCS Profile."
            com.sec.internal.log.IMSLog.i(r4, r3, r5)
            return r1
        L5c:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.core.RegistrationUtils.isSatisfiedCarrierRequirement(int, com.sec.ims.settings.ImsProfile, com.sec.internal.constants.Mno, int, boolean):boolean");
    }

    static boolean isCdmConfigured(IImsFramework iImsFramework, int i) {
        ICapabilityDiscoveryModule capabilityDiscoveryModule = iImsFramework.getServiceModuleManager().getCapabilityDiscoveryModule();
        return capabilityDiscoveryModule == null || !capabilityDiscoveryModule.isRunning() || capabilityDiscoveryModule.isConfigured(i);
    }

    static boolean determineUpdateRegistration(RegisterTask registerTask, int i, int i2, Set<String> set, Set<String> set2, boolean z) {
        int phoneId = registerTask.getPhoneId();
        if (z) {
            IMSLog.i(LOG_TAG, phoneId, "determineUpdateRegistration: Force to do Re-register.");
            if (!"".equals(registerTask.getReason())) {
                return true;
            }
            registerTask.setReason("service changed by user");
            return true;
        }
        if (skipReRegi(registerTask, i, i2)) {
            IMSLog.i(LOG_TAG, phoneId, "determineUpdateRegistration: no need to re-register due to the policy. previousRat=" + i + ", rat=" + i2);
        } else {
            if (registerTask.getProfile().getReregiOnRatChange() == 2 && ((i == 20 && i2 != 20) || (i != 20 && i2 == 20))) {
                IMSLog.i(LOG_TAG, phoneId, "determineUpdateRegistration: Need to re-register due to re-registration on NR policy.");
                registerTask.setReason("RAT has changed from/to NR");
                return true;
            }
            if (!set2.equals(set)) {
                if (!"mobile data changed : 0".equals(registerTask.getReason()) || !registerTask.isRcsOnly() || !ConfigUtil.isRcsChn(registerTask.getMno())) {
                    IMSLog.i(LOG_TAG, phoneId, "determineUpdateRegistration: service has changed. Re-register.");
                    registerTask.setReason("service has changed");
                    return true;
                }
            } else {
                IMSLog.i(LOG_TAG, phoneId, "determineUpdateRegistration: Same services. No need to re-register.");
            }
        }
        return false;
    }

    static boolean skipReRegi(RegisterTask registerTask, int i, int i2) {
        if (registerTask.getProfile().getReregiOnRatChange() != 0) {
            return registerTask.getProfile().getReregiOnRatChange() == 1 && i2 != i;
        }
        return true;
    }

    protected static void getHostAddressWithThread(final RegistrationManagerHandler registrationManagerHandler, final IRcsPolicyManager iRcsPolicyManager, final IRegisterTask iRegisterTask, final String str) throws UnknownHostException {
        final int phoneId = iRegisterTask.getPhoneId();
        final Network networkConnected = iRegisterTask.getNetworkConnected();
        final ArrayList arrayList = new ArrayList();
        Thread thread = new Thread(new Runnable() { // from class: com.sec.internal.ims.core.RegistrationUtils$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RegistrationUtils.lambda$getHostAddressWithThread$1(phoneId, networkConnected, str, arrayList, registrationManagerHandler, iRcsPolicyManager, iRegisterTask);
            }
        });
        thread.start();
        Message obtainMessage = registrationManagerHandler.obtainMessage(60);
        obtainMessage.obj = thread;
        obtainMessage.arg1 = iRegisterTask.getProfile().getId();
        registrationManagerHandler.sendMessageDelayed(obtainMessage, 10000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getHostAddressWithThread$1(int i, Network network, String str, List list, RegistrationManagerHandler registrationManagerHandler, IRcsPolicyManager iRcsPolicyManager, IRegisterTask iRegisterTask) {
        InetAddress[] allByName;
        try {
            IMSLog.i(LOG_TAG, i, "getHostAddressWithThread: start runnable");
            if (network != null) {
                allByName = network.getAllByName(str);
            } else {
                allByName = InetAddress.getAllByName(str);
            }
            if (allByName == null || allByName.length <= 0) {
                return;
            }
            synchronized (list) {
                for (InetAddress inetAddress : allByName) {
                    list.add(inetAddress.getHostAddress());
                }
                if (list.size() > 0) {
                    handleHostAddressResponse(registrationManagerHandler, iRcsPolicyManager, iRegisterTask, i, list);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void handleHostAddressResponse(RegistrationManagerHandler registrationManagerHandler, IRcsPolicyManager iRcsPolicyManager, IRegisterTask iRegisterTask, int i, List<String> list) {
        IMSLog.s(LOG_TAG, i, "getHostAddressWithThread: ret " + list);
        List<String> checkValidPcscfIp = iRegisterTask.getGovernor().checkValidPcscfIp(list);
        if (iRegisterTask.getState() == RegistrationConstants.RegisterTaskState.RESOLVING) {
            iRegisterTask.setState(RegistrationConstants.RegisterTaskState.RESOLVED);
        }
        if (registrationManagerHandler.hasMessages(60)) {
            registrationManagerHandler.removeMessages(60);
        }
        if (CollectionUtils.isNullOrEmpty(checkValidPcscfIp)) {
            return;
        }
        iRegisterTask.getGovernor().updatePcscfIpList(checkValidPcscfIp);
        iRcsPolicyManager.updateDualRcsPcscfIp(iRegisterTask, checkValidPcscfIp);
        registrationManagerHandler.sendTryRegister(i);
    }

    public static InetAddress[] getAllByNameWithThread(IRegisterTask iRegisterTask, final String str) throws UnknownHostException {
        final int phoneId = iRegisterTask.getPhoneId();
        final Network networkConnected = iRegisterTask.getNetworkConnected();
        long currentTimeMillis = System.currentTimeMillis() + 5000;
        final LinkedList linkedList = new LinkedList();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Thread thread = new Thread(new Runnable() { // from class: com.sec.internal.ims.core.RegistrationUtils$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RegistrationUtils.lambda$getAllByNameWithThread$2(phoneId, networkConnected, str, linkedList, atomicBoolean);
            }
        });
        thread.start();
        while (true) {
            if (System.currentTimeMillis() < currentTimeMillis) {
                if (atomicBoolean.get()) {
                    IMSLog.i(LOG_TAG, phoneId, "getAllAddressByName: query failed");
                    break;
                }
                synchronized (linkedList) {
                    if (linkedList.size() > 0) {
                        IMSLog.s(LOG_TAG, phoneId, "getAllAddressByName: current result is " + linkedList);
                        return (InetAddress[]) linkedList.toArray(new InetAddress[linkedList.size()]);
                    }
                    try {
                        linkedList.wait(300L);
                    } catch (Throwable unused) {
                        IMSLog.i(LOG_TAG, phoneId, "getAllAddressByName: wait failed");
                    }
                }
            } else {
                break;
            }
        }
        thread.interrupt();
        IMSLog.i(LOG_TAG, phoneId, "getAllAddressByName time out or failed");
        throw new UnknownHostException("cannot resolve host " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getAllByNameWithThread$2(int i, Network network, String str, LinkedList linkedList, AtomicBoolean atomicBoolean) {
        InetAddress[] allByName;
        try {
            IMSLog.i(LOG_TAG, i, "getAllAddressByName: start runnable");
            if (network != null) {
                allByName = network.getAllByName(str);
            } else {
                allByName = InetAddress.getAllByName(str);
            }
            if (allByName == null || allByName.length <= 0) {
                return;
            }
            synchronized (linkedList) {
                if (linkedList.size() > 0) {
                    return;
                }
                for (int i2 = 0; i2 < allByName.length; i2++) {
                    linkedList.add(allByName[i2]);
                    IMSLog.s(LOG_TAG, i, "getAllAddressByName: getAllByName " + allByName[i2]);
                }
                linkedList.notifyAll();
            }
        } catch (Throwable th) {
            atomicBoolean.set(true);
            th.printStackTrace();
        }
    }

    protected static boolean checkInitialRegistrationIsReady(RegisterTask registerTask, List<IRegisterTask> list, boolean z, boolean z2, boolean z3, IRcsPolicyManager iRcsPolicyManager, RegistrationManagerHandler registrationManagerHandler) {
        int phoneId = registerTask.getPhoneId();
        ImsProfile profile = registerTask.getProfile();
        if (z && (!profile.isNetworkEnabled(18) || (registerTask.getMno().isKor() && registerTask.getRegistrationRat() != 18))) {
            IMSLog.i(LOG_TAG, registerTask.getPhoneId(), registerTask.getProfile().getName() + " tryRegister: Airplane mode is on");
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.FLIGHT_MODE_ON.getCode());
            return false;
        }
        if (registerTask.getGovernor().isThrottled() && !registerTask.getGovernor().isReadyToGetReattach()) {
            IMSLog.i(LOG_TAG, registerTask.getPhoneId(), "tryRegister: task " + profile.getName() + " is throttled.");
            if (registerTask.isOneOf(RegistrationConstants.RegisterTaskState.IDLE, RegistrationConstants.RegisterTaskState.CONNECTING, RegistrationConstants.RegisterTaskState.CONNECTED)) {
                long nextRetryMillis = registerTask.getGovernor().getNextRetryMillis();
                if (nextRetryMillis > 0) {
                    IMSLog.i(LOG_TAG, registerTask.getPhoneId(), "tryRegister: retry in " + nextRetryMillis + "ms.");
                    registrationManagerHandler.sendTryRegister(phoneId, nextRetryMillis);
                    IMSLog.lazer(registerTask, "NOT_TRIGGERED : THROTTLED : " + nextRetryMillis + "ms");
                }
            }
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.REGI_THROTTLED.getCode());
            return false;
        }
        if (iRcsPolicyManager.pendingRcsRegister(registerTask, list, registerTask.getPhoneId())) {
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.PENDING_RCS_REGI.getCode());
            return false;
        }
        if (!profile.hasEmergencySupport()) {
            if (supportCsTty(registerTask) && SlotBasedConfig.getInstance(registerTask.getPhoneId()).getTTYMode() && registerTask.getMno() != Mno.VZW && !registerTask.getMno().isKor() && !registerTask.getMno().isOneOf(Mno.TMOUS, Mno.DISH)) {
                IMSLog.i(LOG_TAG, registerTask.getPhoneId(), "RegisterTask : TtyType=" + profile.getTtyType() + " mTTYMode=" + SlotBasedConfig.getInstance(registerTask.getPhoneId()).getTTYMode());
                registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.CS_TTY.getCode());
                return false;
            }
            if (!getPriorityRegiedTask(true, registerTask).isEmpty()) {
                IMSLog.i(LOG_TAG, registerTask.getPhoneId(), "checkHigherPriorityRegiedTask != null");
                registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.HIGHER_PRIORITY.getCode());
                return false;
            }
            if (!iRcsPolicyManager.isRcsRoamingPref(registerTask, z2)) {
                registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.RCS_ROAMING.getCode());
                return false;
            }
        }
        return true;
    }

    public static boolean checkConfigForInitialRegistration(Context context, RegisterTask registerTask, boolean z, boolean z2, boolean z3, boolean z4, IRcsPolicyManager iRcsPolicyManager, RegistrationManagerHandler registrationManagerHandler, NetworkEventController networkEventController) {
        int phoneId = registerTask.getPhoneId();
        ImsProfile profile = registerTask.getProfile();
        boolean z5 = ImsConstants.SystemSettings.AIRPLANE_MODE.get(context, 0) == ImsConstants.SystemSettings.AIRPLANE_MODE_ON;
        if (((registerTask.getMno().isKor() && registerTask.isRcsOnly() && !z5) || !registerTask.getMno().isKor()) && iRcsPolicyManager.tryRcsConfig(registerTask)) {
            IMSLog.i(LOG_TAG, phoneId, "try RCS autoconfiguration");
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.TRY_RCS_CONFIG.getCode());
            return false;
        }
        if (z && profile.getNeedAutoconfig() && !z2 && (!registerTask.getMno().isKor() || registerTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTED)) {
            IMSLog.i(LOG_TAG, phoneId, "capability is not configured");
            registrationManagerHandler.sendTryRegister(phoneId, 500L);
            return false;
        }
        if (registerTask.isNeedOmadmConfig() && registerTask.getGovernor().isOmadmConfigAvailable() && z3 && (!registerTask.getMno().isKor() || registerTask.getState() == RegistrationConstants.RegisterTaskState.CONNECTED)) {
            networkEventController.triggerOmadmConfig(phoneId);
            registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.DM_TRIGGERED.getCode());
            return false;
        }
        if (!profile.hasEmergencySupport()) {
            registerTask.getGovernor().checkProfileUpdateFromDM(false);
        }
        if (registerTask.getMno().isKor() && ConfigUtil.isRcsOnly(profile)) {
            registerTask.getGovernor().checkAcsPcscfListChange();
        }
        if (registerTask.getMno() != Mno.KDDI || !profile.hasEmergencySupport() || z4) {
            return true;
        }
        IMSLog.e(LOG_TAG, phoneId, "No Emergency Call is made,so dont try for Emergency Register");
        registerTask.setRegiFailReason(DiagnosisConstants.REGI_FRSN.KDDI_EMERGENCY.getCode());
        return false;
    }

    static boolean needToSkipTryRegister(RegisterTask registerTask, boolean z, boolean z2, boolean z3, ITelephonyManager iTelephonyManager, PdnController pdnController, boolean z4) {
        int phoneId = registerTask.getPhoneId();
        if (registerTask.isOneOf(RegistrationConstants.RegisterTaskState.CONFIGURING, RegistrationConstants.RegisterTaskState.REGISTERING, RegistrationConstants.RegisterTaskState.REGISTERED, RegistrationConstants.RegisterTaskState.DEREGISTERING, RegistrationConstants.RegisterTaskState.EMERGENCY) || z) {
            return true;
        }
        if (!registerTask.getProfile().hasEmergencySupport() && z3 && !SimUtil.isDualIMS()) {
            IMSLog.e(LOG_TAG, phoneId, "Deregistering is not completed");
            return true;
        }
        if (registerTask.getProfile().getEnableStatus() == 0) {
            IMSLog.i(LOG_TAG, phoneId, "tryRegister: profile is disabled. " + registerTask.getProfile());
            return true;
        }
        if (registerTask.isSuspended()) {
            IMSLog.i(LOG_TAG, phoneId, "tryRegister: suspened");
            return true;
        }
        if (registerTask.getMno() == Mno.KDDI && SimUtil.isDualIMS() && registerTask.getProfile().hasEmergencySupport() && z4 && iTelephonyManager.getCallState(SimUtil.getOppositeSimSlot(phoneId)) != 0) {
            IMSLog.i(LOG_TAG, phoneId, "tryRegister: emergency call is ongoing on other slot");
            return true;
        }
        if (!registerTask.isRcsOnly() || !ConfigUtil.isRcsEurNonRjil(registerTask.getMno()) || iTelephonyManager.getCallState(SimUtil.getOppositeSimSlot(phoneId)) == 0 || pdnController.getDataState(phoneId) != 3) {
            return false;
        }
        IMSLog.i(LOG_TAG, phoneId, "tryRegister: suspended because other slot is on calling ");
        return true;
    }

    static boolean isRcsRegistered(int i, ImsRegistration[] imsRegistrationArr) {
        ImsRegistration[] registrationInfoByPhoneId = getRegistrationInfoByPhoneId(i, imsRegistrationArr);
        if (registrationInfoByPhoneId != null) {
            for (ImsRegistration imsRegistration : registrationInfoByPhoneId) {
                if (imsRegistration.hasRcsService()) {
                    return true;
                }
            }
        }
        return false;
    }

    static String replaceEnablerPlaceholderWithEnablerVersion(Context context, String str, String str2, int i, ImConfig imConfig) {
        if (TextUtils.isEmpty(str) || !str2.contains("[ENABLER]")) {
            return str2;
        }
        String upOmaEnablerVersion = getUpOmaEnablerVersion(str, ImsRegistry.getString(i, GlobalSettingsConstants.RCS.UP_PROFILE, ""));
        if (!upOmaEnablerVersion.isEmpty()) {
            return str2.replace("[ENABLER]", getImMsgTech(imConfig) + "-client/" + upOmaEnablerVersion);
        }
        String replace = str2.replace("[ENABLER]", "IM-client/OMA1.0");
        Log.e(LOG_TAG, "replaceEnablerPlaceholderWithEnablerVersion: Cannot specify omaEnablerVersion for given rcs_profile and rcs_up_profile. Set enabler to IM-client/OMA1.0 as a default.");
        return replace;
    }

    private static String getImMsgTech(ImConfig imConfig) {
        if (imConfig == null) {
            return "IM";
        }
        String str = imConfig.getImMsgTech().toString();
        return ImConstants.ImMsgTech.SIMPLE_IM.toString().equals(str) ? "IM" : str;
    }

    private static String getUpOmaEnablerVersion(String str, String str2) {
        return ImsProfile.isRcsUpTransitionProfile(str2) ? ImsConstants.OmaVersion.OMA_2_0 : ImsProfile.isRcsUp10Profile(str) ? ImsConstants.OmaVersion.OMA_2_1 : ImsProfile.isRcsUp2Profile(str) ? ImsConstants.OmaVersion.OMA_2_2 : "";
    }
}
