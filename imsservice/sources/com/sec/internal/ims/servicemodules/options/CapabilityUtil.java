package com.sec.internal.ims.servicemodules.options;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemProperties;
import android.telephony.ims.ImsException;
import android.telephony.ims.stub.RcsCapabilityExchangeImplBase;
import android.text.TextUtils;
import android.util.Log;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber$PhoneNumber;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.Extensions;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.options.Capabilities;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.SipMsg;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.NetworkEvent;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.NetworkUtil;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.os.ImsGateConfig;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.diagnosis.ImsLogAgentUtil;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.ServiceConstants;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.core.IRegistrationManager;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.presence.IPresenceModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class CapabilityUtil {
    private static final String LOG_TAG = "CapabilityUtil";
    protected CapabilityDiscoveryModule mCapabilityDiscovery;
    private SimpleEventLog mEventLog;
    protected IPresenceModule mPresenceModule = ImsRegistry.getServiceModuleManager().getPresenceModule();

    public static boolean hasFeature(long j, long j2) {
        return (j & j2) == j2;
    }

    CapabilityUtil(CapabilityDiscoveryModule capabilityDiscoveryModule, SimpleEventLog simpleEventLog) {
        this.mCapabilityDiscovery = capabilityDiscoveryModule;
        this.mEventLog = simpleEventLog;
    }

    boolean isCheckRcsSwitch(Context context) {
        Iterator<? extends ISimManager> it = SimManagerFactory.getAllSimManagers().iterator();
        boolean z = false;
        while (it.hasNext()) {
            boolean z2 = true;
            if (DmConfigHelper.getImsSwitchValue(context, DeviceConfigManager.RCS_SWITCH, it.next().getSimSlotIndex()) != 1) {
                z2 = false;
            }
            z |= z2;
        }
        return z;
    }

    boolean isCapabilityDiscoveryDisabled(Context context, int i) {
        return ((DmConfigHelper.getImsSwitchValue(context, "options", i) == 1) || (DmConfigHelper.getImsSwitchValue(context, SipMsg.EVENT_PRESENCE, i) == 1)) ? false : true;
    }

    String extractMsisdnFromUri(String str) {
        if (TextUtils.isEmpty(str)) {
            Log.e(LOG_TAG, "extractMsisdnFromUri uri is empty");
            return "";
        }
        int indexOf = str.indexOf(":");
        if (indexOf >= 0) {
            str = str.substring(indexOf + 1);
        }
        int indexOf2 = str.indexOf("@");
        return indexOf2 >= 0 ? str.substring(0, indexOf2) : str;
    }

    int getCapInfoExpiry(Capabilities capabilities, int i) {
        CapabilityConfig capabilityConfig = this.mCapabilityDiscovery.getCapabilityConfig(i);
        if (capabilities != null && capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER)) {
            return capabilityConfig.getNonRCScapInfoExpiry();
        }
        if (capabilities != null && ChatbotUriUtil.hasUriBotPlatform(capabilities.getUri(), i) && capabilities.getFeature() == Capabilities.FEATURE_OFFLINE_RCS_USER) {
            IMSLog.d(LOG_TAG, i, "getCapInfoExpiry: capex.uri() [" + capabilities.getUri() + "] is chatbot & offline ");
            return 0;
        }
        return capabilityConfig.getCapInfoExpiry();
    }

    boolean isAllowedPrefixesUri(ImsUri imsUri, int i) {
        CapabilityConfig capabilityConfig = this.mCapabilityDiscovery.getCapabilityConfig(i);
        if (capabilityConfig == null) {
            return false;
        }
        String msisdnNumber = UriUtil.getMsisdnNumber(imsUri);
        if (imsUri != null && imsUri.getUriType() == ImsUri.UriType.SIP_URI && msisdnNumber == null) {
            return true;
        }
        if (SimUtil.getSimMno(i).isKor() && msisdnNumber != null && msisdnNumber.equals("+82114")) {
            return false;
        }
        Set<Pattern> capAllowedPrefixes = capabilityConfig.getCapAllowedPrefixes();
        if (capAllowedPrefixes.isEmpty()) {
            return true;
        }
        if (msisdnNumber == null) {
            return false;
        }
        Iterator<Pattern> it = capAllowedPrefixes.iterator();
        while (it.hasNext()) {
            if (it.next().matcher(msisdnNumber).find()) {
                return true;
            }
        }
        return false;
    }

    long getDelayTimeToPoll(long j, int i) {
        if (j == -1) {
            return 0L;
        }
        long throttledDelay = (RcsPolicyManager.getRcsStrategy(i).getThrottledDelay(this.mCapabilityDiscovery.getCapabilityConfig(i).getPollListSubExpiry()) * 1000) - (new Date().getTime() - j);
        IMSLog.i(LOG_TAG, i, "getDelayTimeToPoll: delay = " + throttledDelay + ", lastListSubscribeStamp = " + j);
        if (throttledDelay > 0) {
            return throttledDelay;
        }
        return 0L;
    }

    boolean isRegistrationSupported(ImsRegistration imsRegistration) {
        if (!imsRegistration.hasService(SipMsg.EVENT_PRESENCE) && !imsRegistration.hasService("options")) {
            Log.e(LOG_TAG, "isRegistrationSupported: no presence and options in service list");
            return false;
        }
        if (RcsPolicyManager.getRcsStrategy(imsRegistration.getPhoneId()) == null) {
            Log.e(LOG_TAG, "isRegistrationSupported: getRcsStrategy is null");
            return false;
        }
        if (!RcsPolicyManager.getRcsStrategy(imsRegistration.getPhoneId()).checkImsiBasedRegi(imsRegistration)) {
            return true;
        }
        Log.e(LOG_TAG, "isRegistrationSupported: isImsiBasedRegi is true");
        return false;
    }

    ImsUri getNetworkPreferredUri(ImsUri imsUri) {
        CapabilitiesCache capabilitiesCache = this.mCapabilityDiscovery.getCapabilitiesCache();
        String str = null;
        Capabilities capabilities = capabilitiesCache != null ? capabilitiesCache.get(imsUri) : null;
        if (capabilities == null) {
            return null;
        }
        Iterator it = capabilities.getPAssertedId().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ImsUri imsUri2 = (ImsUri) it.next();
            if (imsUri2.getUriType() == ImsUri.UriType.SIP_URI) {
                str = imsUri2.getHost();
                break;
            }
        }
        return this.mCapabilityDiscovery.getUriGenerator().getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, imsUri, str);
    }

    boolean isCapabilityCacheEmpty(int i) {
        Iterator<Capabilities> it = this.mCapabilityDiscovery.getCapabilitiesCache(i).getCapabilitiesCache().iterator();
        while (it.hasNext()) {
            if (it.next().getContactId() != null) {
                return false;
            }
        }
        return true;
    }

    void changeParalysed(boolean z, int i) {
        IMSLog.i(LOG_TAG, i, "changeParalysed");
        if (this.mPresenceModule.getParalysed(i) != z) {
            this.mPresenceModule.setParalysed(z, i);
            CapabilityConfig capabilityConfig = this.mCapabilityDiscovery.getCapabilityConfig(i);
            if (z && capabilityConfig != null && capabilityConfig.usePresence()) {
                Log.i(LOG_TAG, "call unpublish");
                this.mPresenceModule.unpublish(i);
            }
            if (z || !isCapabilityCacheEmpty(i)) {
                return;
            }
            this.mCapabilityDiscovery.onContactChanged(true);
        }
    }

    void handleRemovedNumbers(int i) {
        List<String> andFlushRemovedNumbers = this.mCapabilityDiscovery.getPhonebook().getAndFlushRemovedNumbers();
        IMSLog.s(LOG_TAG, i, "handleRemovedNumbers: removed numbers " + andFlushRemovedNumbers);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = andFlushRemovedNumbers.iterator();
        while (it.hasNext()) {
            ImsUri normalizedUri = this.mCapabilityDiscovery.getUriGenerator().getNormalizedUri(it.next(), true);
            if (normalizedUri != null) {
                arrayList.add(normalizedUri);
                if (this.mCapabilityDiscovery.updatePollList(normalizedUri, false, i)) {
                    IMSLog.s(LOG_TAG, i, "handleRemovedNumbers: updatePollList, removed uri = " + normalizedUri);
                }
            }
        }
        if (arrayList.size() > 0) {
            this.mCapabilityDiscovery.getCapabilitiesCache(i).remove(arrayList);
            CapabilityConfig capabilityConfig = this.mCapabilityDiscovery.getCapabilityConfig(i);
            if (capabilityConfig == null || !capabilityConfig.usePresence()) {
                return;
            }
            this.mPresenceModule.removePresenceCache(arrayList, i);
        }
    }

    long filterFeaturesWithService(long j, Set<String> set, int i, int i2) {
        if (set == null) {
            return j;
        }
        IMSLog.s(LOG_TAG, i2, "filterFeaturesWithService: features=" + Long.toHexString(j) + ", services=" + set + ", networkType=" + i);
        return j & (checkRcsFeatures(set, i, i2) | checkChatFeatures(set) | 0 | checkCshFeatures(set));
    }

    private long checkChatFeatures(Set<String> set) {
        long j = set.contains(ServiceConstants.SERVICE_CHATBOT_COMMUNICATION) ? 0 | Capabilities.FEATURE_CHATBOT_CHAT_SESSION | Capabilities.FEATURE_CHATBOT_STANDALONE_MSG | Capabilities.FEATURE_CHATBOT_EXTENDED_MSG : 0L;
        if (set.contains("ft_http")) {
            j |= Capabilities.FEATURE_FT_HTTP | Capabilities.FEATURE_FT_VIA_SMS;
        }
        if (set.contains("slm")) {
            j |= Capabilities.FEATURE_STANDALONE_MSG | Capabilities.FEATURE_PUBLIC_MSG;
        }
        if (set.contains("im")) {
            j |= Capabilities.FEATURE_CHAT_CPM | Capabilities.FEATURE_CHAT_SIMPLE_IM | Capabilities.FEATURE_INTEGRATED_MSG | Capabilities.FEATURE_SF_GROUP_CHAT | Capabilities.FEATURE_STICKER | Capabilities.FEATURE_CANCEL_MESSAGE;
        }
        if (set.contains("ft")) {
            j |= Capabilities.FEATURE_FT | Capabilities.FEATURE_FT_STORE | Capabilities.FEATURE_FT_THUMBNAIL | Capabilities.FEATURE_FT_VIA_SMS;
        }
        return set.contains("plug-in") ? j | Capabilities.FEATURE_PLUG_IN : j;
    }

    private long checkCshFeatures(Set<String> set) {
        long j = set.contains("is") ? 0 | Capabilities.FEATURE_ISH : 0L;
        if (set.contains("vs")) {
            j |= Capabilities.FEATURE_VSH;
        }
        if (set.contains("gls")) {
            j |= Capabilities.FEATURE_GEOLOCATION_PULL | Capabilities.FEATURE_GEOLOCATION_PULL_FT | Capabilities.FEATURE_GEOLOCATION_PUSH | Capabilities.FEATURE_GEO_VIA_SMS;
        }
        return set.contains("ec") ? j | Capabilities.FEATURE_ENRICHED_CALL_COMPOSER | Capabilities.FEATURE_ENRICHED_SHARED_MAP | Capabilities.FEATURE_ENRICHED_SHARED_SKETCH | Capabilities.FEATURE_ENRICHED_POST_CALL : j;
    }

    private long checkRcsFeatures(Set<String> set, int i, int i2) {
        long j = set.contains(SipMsg.EVENT_PRESENCE) ? 0 | Capabilities.FEATURE_PRESENCE_DISCOVERY | Capabilities.FEATURE_SOCIAL_PRESENCE : 0L;
        if (set.contains("lastseen")) {
            j |= Capabilities.FEATURE_LAST_SEEN_ACTIVE;
        }
        if (set.contains("mmtel") && isMmtelServiceAvailable(i, i2)) {
            j |= Capabilities.FEATURE_MMTEL | Capabilities.FEATURE_IPCALL;
        }
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i2);
        if (set.contains("mmtel-video") && ((simManagerFromSimSlot != null && simManagerFromSimSlot.getSimMno().isKor()) || isMmtelServiceAvailable(i, i2))) {
            j |= Capabilities.FEATURE_MMTEL_VIDEO | Capabilities.FEATURE_IPCALL_VIDEO | Capabilities.FEATURE_IPCALL_VIDEO_ONLY;
        }
        return (isMmtelServiceAvailable(i, i2) && set.contains("mmtel") && set.contains("mmtel-call-composer")) ? j | Capabilities.FEATURE_MMTEL_CALL_COMPOSER : j;
    }

    long filterFeaturesWithCallState(long j, boolean z, String str) {
        if (z && str != null) {
            return j;
        }
        Log.i(LOG_TAG, "filterFeaturesWithCallState: disable ISH, VSH, ShareMap and ShareSketch");
        return j & (~Capabilities.FEATURE_VSH) & (~Capabilities.FEATURE_ISH) & (~Capabilities.FEATURE_ENRICHED_SHARED_MAP) & (~Capabilities.FEATURE_ENRICHED_SHARED_SKETCH);
    }

    long filterEnrichedCallFeatures(long j) {
        Log.i(LOG_TAG, "filterEnrichedCallFeatures: disable CallComposer, PostCall, ISH, VSH, ShareMap and ShareSketch");
        return j & (~Capabilities.FEATURE_VSH) & (~Capabilities.FEATURE_ISH) & (~Capabilities.FEATURE_ENRICHED_SHARED_MAP) & (~Capabilities.FEATURE_ENRICHED_SHARED_SKETCH) & (~Capabilities.FEATURE_ENRICHED_CALL_COMPOSER) & (~Capabilities.FEATURE_ENRICHED_POST_CALL);
    }

    long filterInCallFeatures(long j, ImsUri imsUri, String str) {
        ImsUri imsUri2;
        ImsUri imsUri3;
        long j2;
        long j3;
        if (imsUri == null) {
            Log.i(LOG_TAG, "Request URI is null, return existing availFeatures");
            return j;
        }
        String msisdn = imsUri.getMsisdn();
        Log.i(LOG_TAG, "request uri[" + IMSLog.checker(msisdn) + "] callNumber[" + IMSLog.checker(str) + "]");
        if (str == null) {
            j2 = j & (~Capabilities.FEATURE_VSH) & (~Capabilities.FEATURE_ISH) & (~Capabilities.FEATURE_ENRICHED_SHARED_MAP);
            j3 = Capabilities.FEATURE_ENRICHED_SHARED_SKETCH;
        } else {
            UriGenerator uriGenerator = this.mCapabilityDiscovery.getUriGenerator();
            if (uriGenerator != null) {
                imsUri2 = uriGenerator.getNormalizedUri(msisdn, true);
                imsUri3 = uriGenerator.getNormalizedUri(str, true);
            } else {
                imsUri2 = null;
                imsUri3 = null;
            }
            if (imsUri2 != null) {
                imsUri = imsUri2;
            }
            Log.i(LOG_TAG, "normalizedReqUri[" + IMSLog.checker(imsUri) + "] normalizedCallNumber[" + IMSLog.checker(imsUri3) + "]");
            if (!imsUri.equals(imsUri3)) {
                Log.i(LOG_TAG, "we're not in call with " + IMSLog.checker(msisdn) + ", remove incall features");
                j2 = j & ((long) (~Capabilities.FEATURE_VSH)) & ((long) (~Capabilities.FEATURE_ISH)) & (~Capabilities.FEATURE_ENRICHED_SHARED_MAP);
                j3 = Capabilities.FEATURE_ENRICHED_SHARED_SKETCH;
            } else {
                Log.i(LOG_TAG, "we're in call with " + IMSLog.checker(msisdn) + ", don't change incall features");
                return j;
            }
        }
        return j2 & (~j3);
    }

    Set<String> filterServicesWithReg(Map<Integer, ImsRegistration> map, IRegistrationManager iRegistrationManager, int i, int i2) {
        if (!map.containsKey(Integer.valueOf(i2))) {
            return null;
        }
        ImsProfile imsProfile = map.get(Integer.valueOf(i2)).getImsProfile();
        int handle = map.get(Integer.valueOf(i2)).getHandle();
        Set<String> services = map.get(Integer.valueOf(i2)).getServices();
        int currentNetwork = iRegistrationManager.getCurrentNetwork(handle);
        if (!ConfigUtil.isRcsEur(SimUtil.getSimMno(i2))) {
            i = currentNetwork;
        }
        Set<String> serviceForNetwork = iRegistrationManager.getServiceForNetwork(imsProfile, i, false, i2);
        HashSet hashSet = new HashSet();
        if (serviceForNetwork != null) {
            for (String str : services) {
                if (serviceForNetwork.contains(str)) {
                    hashSet.add(str);
                }
            }
        }
        return hashSet;
    }

    boolean isMmtelServiceAvailable(int i, int i2) {
        Mno simMno = SimUtil.getSimMno(i2);
        if (simMno == Mno.ATT && !ConfigUtil.isJibeAs(i2)) {
            if (!NetworkUtil.is3gppPsVoiceNetwork(i) && i != 18) {
                ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(i2);
                return simManagerFromSimSlot != null && simManagerFromSimSlot.hasVsim();
            }
        } else if (simMno.isKor()) {
            return NetworkUtil.is3gppPsVoiceNetwork(i);
        }
        return true;
    }

    boolean isPhoneLockState(Context context) {
        String str = SystemProperties.get("ro.crypto.type", "");
        String str2 = SystemProperties.get("vold.decrypt", "");
        if ("block".equals(str) && !"trigger_restart_framework".equals(str2)) {
            Log.i(LOG_TAG, "isPhoneLockState: not required sync contact in lock state");
            IMSLog.c(LogClass.CDM_BOOT_COMP, "N,LOCKED");
            return true;
        }
        if (isCheckRcsSwitch(context)) {
            return false;
        }
        Log.i(LOG_TAG, "isPhoneLockState : rcs switch is disabled");
        return true;
    }

    void sendGateMessage(ImsUri imsUri, long j, int i) {
        try {
            if (ImsGateConfig.isGateEnabled()) {
                IMSLog.i(LOG_TAG, i, "sendGateMessage");
                PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
                Phonenumber$PhoneNumber parse = phoneNumberUtil.parse(UriUtil.getMsisdnNumber(imsUri), "");
                String replace = phoneNumberUtil.format(parse, PhoneNumberUtil.PhoneNumberFormat.NATIONAL).replace(" ", "");
                String format = String.format(Locale.US, "%02d", Integer.valueOf(parse.getCountryCode()));
                IMSLog.g("GATE", "<GATE-M>IPME_CAPABILITY_" + ((hasFeature(j, (long) Capabilities.FEATURE_CHAT_CPM) || hasFeature(j, (long) Capabilities.FEATURE_FT_SERVICE)) ? "ON" : "OFF") + "_+" + format + replace + "</GATE-M>");
            }
        } catch (NumberParseException unused) {
            IMSLog.s(LOG_TAG, "Failed to parse uri : " + imsUri);
        }
    }

    void sendRCSLInfoToHQM(Context context, boolean z, int i) {
        if (i < 0) {
            Log.e(LOG_TAG, "sendRCSLInfoToHQM : phoneId is invalid " + i);
            i = 0;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(DiagnosisConstants.RCSL_KEY_LTCH, String.valueOf(!z ? 1 : 0));
        ImsLogAgentUtil.sendLogToAgent(i, context, DiagnosisConstants.FEATURE_RCSL, contentValues);
    }

    void sendRCSCInfoToHQM(int i) {
        if (i < 0) {
            Log.e(LOG_TAG, "sendRCSCInfoToHQM : phoneId is invalid " + i);
            i = 0;
        }
        this.mCapabilityDiscovery.getCapabilitiesCache(i).sendRCSCInfoToHQM();
    }

    void onImsSettingsUpdate(Context context, int i) {
        this.mCapabilityDiscovery.removeMessages(7);
        if (this.mCapabilityDiscovery.getCapabilityControl(i) != null && this.mCapabilityDiscovery.getCapabilityControl(i) == this.mCapabilityDiscovery.getPresenceModule()) {
            if (DmConfigHelper.readBool(context, ConfigConstants.ConfigPath.OMADM_EAB_SETTING, Boolean.FALSE, i).booleanValue()) {
                if (!this.mCapabilityDiscovery.getPresenceModule().getBadEventProgress(i) && !this.mCapabilityDiscovery.getPresenceModule().isPublishNotFoundProgress(i)) {
                    this.mCapabilityDiscovery.changeParalysed(false, i);
                }
            } else {
                this.mCapabilityDiscovery.getCapabilityControl(i).reset(i);
                this.mCapabilityDiscovery.clearCapabilitiesCache(i);
                this.mCapabilityDiscovery.changeParalysed(true, i);
                IMnoStrategy rcsStrategy = RcsPolicyManager.getRcsStrategy(i);
                if (rcsStrategy != null) {
                    rcsStrategy.updateOmaDmNodes(i);
                    return;
                }
                return;
            }
        }
        if (this.mCapabilityDiscovery.getCapabilityConfig(i) == null || this.mCapabilityDiscovery.getCapabilityControl(i) == null) {
            Log.i(LOG_TAG, "onImsSettingsUpdate: not ready");
            return;
        }
        IMSLog.i(LOG_TAG, i, "onImsSettingsUpdate: refresh configuration");
        this.mCapabilityDiscovery.getCapabilityControl(i).readConfig(i);
        IMnoStrategy rcsStrategy2 = RcsPolicyManager.getRcsStrategy(i);
        if (rcsStrategy2 != null) {
            rcsStrategy2.updateOmaDmNodes(i);
        }
        if (this.mCapabilityDiscovery.getCapabilityConfig(i).isPollingPeriodUpdated() && this.mCapabilityDiscovery.getCapabilityControl(i).isReadyToRequest(i)) {
            CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
            capabilityDiscoveryModule.sendMessage(capabilityDiscoveryModule.obtainMessage(3, Integer.valueOf(i)));
        }
    }

    void onNetworkChanged(Context context, NetworkEvent networkEvent, int i, int i2, Map<Integer, ImsRegistration> map, NetworkEvent networkEvent2) {
        IMSLog.s(LOG_TAG, i, "onNetworkChanged: " + networkEvent);
        if (!RcsUtils.DualRcs.isDualRcsReg() && i2 != i) {
            IMSLog.i(LOG_TAG, i, "onNetworkChanged: mAvailablePhoneId = ! phoneId");
            return;
        }
        int i3 = networkEvent.network;
        if ((i3 == 0 || (networkEvent2 != null && networkEvent2.network == i3)) && !networkEvent.isWifiConnected) {
            return;
        }
        Mno simMno = SimUtil.getSimMno(i);
        if (networkEvent.isWifiConnected && (!simMno.isRjil() || networkEvent.network == 0)) {
            this.mCapabilityDiscovery.setNetworkType(18, i);
        } else {
            this.mCapabilityDiscovery.setNetworkType(networkEvent.network, i);
        }
        this.mCapabilityDiscovery.setNetworkEvent(networkEvent, i);
        this.mCapabilityDiscovery.setNetworkClass(TelephonyManagerExt.getNetworkClass(networkEvent.network), i);
        if (simMno == Mno.ATT && !ConfigUtil.isJibeAs(i)) {
            if (!map.containsKey(Integer.valueOf(i)) || networkEvent2 == null || isMmtelServiceAvailable(networkEvent2.network, i) == isMmtelServiceAvailable(networkEvent.network, i)) {
                return;
            }
            if (!networkEvent2.isWifiConnected && networkEvent.isWifiConnected && !networkEvent.isEpdgConnected) {
                IMSLog.i(LOG_TAG, i, "onNetworkChanged: wifi connected, but epdg is not yet");
                return;
            } else {
                this.mEventLog.logAndAdd(i, "onNetworkChanged: update capability");
                this.mCapabilityDiscovery.setOwnCapabilities(i, true);
                return;
            }
        }
        if (ConfigUtil.isRcsEur(simMno)) {
            Log.i(LOG_TAG, "onNetworkChanged: setOwnCapabilities(false) is called");
            if (!RcsUtils.DualRcs.isDualRcsReg()) {
                if (map.containsKey(Integer.valueOf(i))) {
                    this.mCapabilityDiscovery.updateOwnCapabilities(i);
                    this.mCapabilityDiscovery.setOwnCapabilities(i, false);
                    return;
                }
                return;
            }
            for (int i4 = 0; i4 < 2; i4++) {
                if (RcsUtils.UiUtils.isRcsEnabledinSettings(context, i4) && map.containsKey(Integer.valueOf(i4))) {
                    this.mCapabilityDiscovery.updateOwnCapabilities(i4);
                    this.mCapabilityDiscovery.setOwnCapabilities(i4, false);
                }
            }
        }
    }

    boolean blockOptionsToOwnUri(ImsUri imsUri, int i) {
        if (imsUri == null || this.mCapabilityDiscovery.getCapabilityControl(i) == null || this.mCapabilityDiscovery.getCapabilityControl(i) != this.mCapabilityDiscovery.getOptionsModule()) {
            return false;
        }
        for (Capabilities capabilities : this.mCapabilityDiscovery.getOwnList().values()) {
            if (capabilities.isAvailable() && capabilities.getUri() != null && imsUri.equals(capabilities.getUri()) && (!RcsUtils.DualRcs.isDualRcsReg() || i == capabilities.getPhoneId())) {
                IMSLog.s(LOG_TAG, "blockOptionsToOwnUri: Block for sending OPTIONS to own number " + capabilities.getUri());
                return true;
            }
        }
        return false;
    }

    boolean checkModuleReady(int i) {
        if (!this.mCapabilityDiscovery.isRunning()) {
            IMSLog.e(LOG_TAG, i, "checkModuleReady: module is disabled");
            return false;
        }
        if (this.mCapabilityDiscovery.getUriGenerator() == null) {
            IMSLog.e(LOG_TAG, i, "checkModuleReady: uriGenerator is null");
            return false;
        }
        if (RcsPolicyManager.getRcsStrategy(i) == null) {
            IMSLog.e(LOG_TAG, i, "checkModuleReady: MnoStrategy is null");
            return false;
        }
        if (this.mCapabilityDiscovery.getCapabilityConfig(i) == null) {
            IMSLog.e(LOG_TAG, i, "checkModuleReady: config is null");
            return false;
        }
        if (this.mCapabilityDiscovery.getCapabilityConfig(i).isAvailable()) {
            return true;
        }
        IMSLog.e(LOG_TAG, i, "checkModuleReady: mConfig.isAvailable == false");
        return false;
    }

    void onServiceSwitched(int i, ContentValues contentValues, Map<Integer, Boolean> map, Map<Integer, Boolean> map2, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        IMSLog.i(LOG_TAG, i, "onServiceSwitched: ");
        if (contentValues != null) {
            z3 = ((Integer) contentValues.get(SipMsg.EVENT_PRESENCE)).intValue() == 1;
            z2 = ((Integer) contentValues.get("options")).intValue() == 1;
        } else {
            z2 = false;
            z3 = false;
        }
        if (map.get(Integer.valueOf(i)).booleanValue() != z3) {
            this.mCapabilityDiscovery.setPresenceSwitch(i, z3);
            IMSLog.i(LOG_TAG, i, "onServiceSwitched: presence changed: " + z3);
            z4 = true;
        } else {
            z4 = false;
        }
        if (map2.get(Integer.valueOf(i)).booleanValue() != z2) {
            this.mCapabilityDiscovery.settOptionsSwitch(i, z2);
            IMSLog.i(LOG_TAG, i, "onServiceSwitched: options changed: " + z2);
            z4 = true;
        }
        if (z4) {
            Boolean bool = Boolean.TRUE;
            if (!map.containsValue(bool) && !map2.containsValue(bool)) {
                this.mCapabilityDiscovery.setCapabilityModuleOn(false);
                this.mCapabilityDiscovery.stop();
            } else {
                if (z) {
                    return;
                }
                this.mCapabilityDiscovery.setCapabilityModuleOn(true);
                this.mCapabilityDiscovery.start();
            }
        }
    }

    void onUserSwitched() {
        Log.i(LOG_TAG, "onUserSwitched: userId = " + Extensions.ActivityManager.getCurrentUser());
        for (Integer num : this.mCapabilityDiscovery.getUrisToRequest().keySet()) {
            Set<ImsUri> set = this.mCapabilityDiscovery.getUrisToRequest().get(num);
            synchronized (set) {
                set.clear();
            }
            this.mCapabilityDiscovery.putUrisToRequestList(num.intValue(), set);
        }
        CapabilityDiscoveryModule capabilityDiscoveryModule = this.mCapabilityDiscovery;
        if (capabilityDiscoveryModule.getCapabilityConfig(capabilityDiscoveryModule.getActiveDataPhoneId()) != null) {
            CapabilityDiscoveryModule capabilityDiscoveryModule2 = this.mCapabilityDiscovery;
            if (capabilityDiscoveryModule2.getCapabilityConfig(capabilityDiscoveryModule2.getActiveDataPhoneId()).isDisableInitialScan()) {
                return;
            }
            Log.i(LOG_TAG, "onUserSwitched: start ContactCache");
            this.mCapabilityDiscovery.getPhonebook().stop();
            this.mCapabilityDiscovery.getPhonebook().start();
            this.mCapabilityDiscovery.getPhonebook().sendMessageContactSync();
        }
    }

    long getRandomizedDelayForPeriodicPolling(int i, long j) {
        IMSLog.i(LOG_TAG, i, "getRandomizedDelayForPeriodicPolling: delay: " + (1000 * j));
        return (long) (((Math.random() * 0.2d) + 0.9d) * j);
    }

    void migrateSharedprefWithPhoneId(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("capdiscovery", 0);
        if (sharedPreferences == null) {
            IMSLog.e(LOG_TAG, "migrateSharedprefWithPhoneId: open error");
            return;
        }
        int activeDataPhoneId = SimUtil.getActiveDataPhoneId();
        IMSLog.i(LOG_TAG, activeDataPhoneId, "migrateSharedprefWithPhoneId");
        SharedPreferences.Editor edit = context.getSharedPreferences("capdiscovery_" + activeDataPhoneId, 0).edit();
        for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Boolean) {
                edit.putBoolean(entry.getKey(), ((Boolean) value).booleanValue());
            } else if (value instanceof Integer) {
                edit.putInt(entry.getKey(), ((Integer) value).intValue());
            } else if (value instanceof Long) {
                edit.putLong(entry.getKey(), ((Long) value).longValue());
            } else if (value instanceof String) {
                edit.putString(entry.getKey(), (String) value);
            }
        }
        edit.apply();
        sharedPreferences.edit().clear().apply();
        if (context.deleteSharedPreferences("capdiscovery")) {
            return;
        }
        IMSLog.e(LOG_TAG, "Failed delete shared preferences");
    }

    public static void reportErrorToApp(RcsCapabilityExchangeImplBase.OptionsResponseCallback optionsResponseCallback, int i) {
        try {
            optionsResponseCallback.onCommandError(i);
        } catch (ImsException e) {
            IMSLog.e(LOG_TAG, "reportErrorToApp: failed: " + e.getMessage());
        }
    }
}
