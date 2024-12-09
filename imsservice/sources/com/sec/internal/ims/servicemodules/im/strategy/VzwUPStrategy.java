package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import android.os.SemSystemProperties;
import android.telephony.TelephonyManager;
import com.sec.ims.ImsRegistration;
import com.sec.ims.extensions.TelephonyManagerExt;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.presence.ServiceTuple;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class VzwUPStrategy extends DefaultUPMnoStrategy {
    private static final String TAG = "VzwUPStrategy";
    private int lastNetworkType;
    private ICapabilityDiscoveryModule mDiscoveryModule;
    private final HashSet<ImError> mForceRefreshRemoteCapa;
    private boolean mIsCapDiscoveryOption;
    private boolean mIsEABEnabled;
    private boolean mIsLocalConfigUsed;
    private boolean mIsVLTEnabled;
    private final TelephonyManager mTelephonyManager;

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long getThrottledDelay(long j) {
        return j + 3;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isPresenceReadyToRequest(boolean z, boolean z2) {
        return z && !z2;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needPoll(Capabilities capabilities, long j) {
        return true;
    }

    public VzwUPStrategy(Context context, int i) {
        super(context, i);
        this.mForceRefreshRemoteCapa = new HashSet<>();
        this.mTelephonyManager = (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
        this.mDiscoveryModule = ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
        Boolean bool = Boolean.FALSE;
        this.mIsVLTEnabled = DmConfigHelper.readBool(context, ConfigConstants.ConfigPath.OMADM_VOLTE_ENABLED, bool, i).booleanValue();
        this.mIsEABEnabled = DmConfigHelper.readBool(context, ConfigConstants.ConfigPath.OMADM_EAB_SETTING, bool, i).booleanValue();
        this.mIsCapDiscoveryOption = DmConfigHelper.readBool(context, ConfigConstants.ConfigPath.OMADM_CAP_DISCOVERY, bool, i).booleanValue();
        init();
    }

    private void init() {
        this.mForceRefreshRemoteCapa.add(ImError.REMOTE_USER_INVALID);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCustomizedFeature(long j) {
        IImModule imModule;
        return j == ((long) Capabilities.FEATURE_FT_VIA_SMS) && (imModule = getImModule()) != null && imModule.getImConfig(this.mPhoneId).getFtHttpEnabled();
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleSendingMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z, boolean z2) {
        if (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        if (z) {
            return handleSlmFailure(imError, i);
        }
        IMnoStrategy.StatusCode retryStrategy = getRetryStrategy(i, imError, i2, chatType);
        if (retryStrategy == IMnoStrategy.StatusCode.NO_RETRY) {
            IMnoStrategy.StrategyResponse handleImFailure = handleImFailure(imError, chatType);
            return (z2 && handleImFailure.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_SLM) ? new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY) : handleImFailure;
        }
        return new IMnoStrategy.StrategyResponse(retryStrategy);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StatusCode getRetryStrategy(int i, ImError imError, int i2, ChatData.ChatType chatType) {
        if (ImError.MSRP_SESSION_DOES_NOT_EXIST.equals(imError) && i < 1) {
            IMSLog.i(TAG, "getRetryStrategy MSRP_SESSION_DOES_NOT_EXIST; currentRetryCount= " + i);
            return IMnoStrategy.StatusCode.RETRY_AFTER_SESSION;
        }
        if (ImError.FORBIDDEN_NO_WARNING_HEADER.equals(imError) && i < 4) {
            IMSLog.i(TAG, "getRetryStrategy FORBIDDEN_NO_WARNING_HEADER; currentRetryCount= " + i);
            return IMnoStrategy.StatusCode.RETRY_AFTER_REGI;
        }
        return IMnoStrategy.StatusCode.NO_RETRY;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void forceRefreshCapability(Set<ImsUri> set, boolean z, ImError imError) {
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        int i = this.mPhoneId;
        if (capDiscModule == null) {
            IMSLog.i(TAG, i, "forceRefreshCapability: capDiscModule is null");
            return;
        }
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("forceRefreshCapability");
        sb.append(IMSLog.isShipBuild() ? "" : set);
        IMSLog.i(str, i, sb.toString());
        ArrayList arrayList = new ArrayList(set);
        if (z) {
            capDiscModule.getCapabilities(arrayList, CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX, Capabilities.FEATURE_FT_HTTP | Capabilities.FEATURE_CHAT_SIMPLE_IM, i);
        } else {
            if (imError == null || !this.mForceRefreshRemoteCapa.contains(imError)) {
                return;
            }
            capDiscModule.getCapabilities(arrayList, CapabilityRefreshType.ALWAYS_FORCE_REFRESH, Capabilities.FEATURE_FT_HTTP | Capabilities.FEATURE_CHAT_SIMPLE_IM, i);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy
    protected boolean checkFtHttpCapability(Set<ImsUri> set) {
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        if (capDiscModule == null) {
            IMSLog.i(TAG, this.mPhoneId, "checkFtHttpCapability: capDiscModule is null");
            return false;
        }
        Iterator<ImsUri> it = set.iterator();
        while (it.hasNext()) {
            Capabilities capabilities = capDiscModule.getCapabilities(it.next(), CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX, this.mPhoneId);
            IMSLog.i(TAG, this.mPhoneId, "checkFtHttpCapability, capx: = " + capabilities);
            if (capabilities == null || !capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP) || !capabilities.isAvailable()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCapabilityValidUri(ImsUri imsUri) {
        if (ChatbotUriUtil.hasUriBotPlatform(imsUri, this.mPhoneId)) {
            return true;
        }
        return StrategyUtils.isCapabilityValidUriForUS(imsUri, this.mPhoneId);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse checkCapability(Set<ImsUri> set, long j) {
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        int i = this.mPhoneId;
        if (capDiscModule == null) {
            IMSLog.i(TAG, i, "checkCapability: capDiscModule is null");
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
        }
        IImModule imModule = getImModule();
        boolean isImCapAlwaysOn = imModule != null ? imModule.getImConfig(i).isImCapAlwaysOn() : false;
        IMSLog.i(TAG, this.mPhoneId, "checkCapability: isCapAlwaysOn = " + isImCapAlwaysOn);
        if (isImCapAlwaysOn) {
            for (ImsUri imsUri : set) {
                Capabilities capabilities = capDiscModule.getCapabilities(imsUri, CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX, i);
                if (capabilities != null && capabilities.getFeature() == Capabilities.FEATURE_OFFLINE_RCS_USER && imModule.getImConfig(i).getImMsgTech() == ImConstants.ImMsgTech.SIMPLE_IM) {
                    return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
                }
                if (capabilities == null || !capabilities.isAvailable() || !hasOneOfFeatures(capabilities, j)) {
                    logNoCapability(imsUri, capabilities, j);
                    if (isNonRcs(capabilities)) {
                        IMSLog.i(TAG, this.mPhoneId, "checkCapability: Non-RCS user");
                        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
                    }
                    return getStrategyResponse();
                }
            }
        } else {
            for (ImsUri imsUri2 : set) {
                Capabilities capabilities2 = capDiscModule.getCapabilities(imsUri2, CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX, i);
                if (capabilities2 == null || !capabilities2.isAvailable() || !hasOneOfFeatures(capabilities2, j)) {
                    IMSLog.i(TAG, this.mPhoneId, "isCapAlwaysOn is off");
                    logNoCapability(imsUri2, capabilities2, j);
                    return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
                }
            }
        }
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
    }

    public boolean isNonRcs(Capabilities capabilities) {
        return capabilities == null || capabilities.getFeature() == ((long) Capabilities.FEATURE_OFFLINE_RCS_USER) || capabilities.getFeature() == ((long) Capabilities.FEATURE_NON_RCS_USER);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needCapabilitiesUpdate(CapabilityConstants.CapExResult capExResult, Capabilities capabilities, long j, long j2) {
        if (capExResult != CapabilityConstants.CapExResult.USER_NOT_FOUND && capExResult == CapabilityConstants.CapExResult.FAILURE && capabilities != null && capabilities.isAvailable()) {
            return isCapCacheExpired(capabilities, j2);
        }
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needRefresh(Capabilities capabilities, CapabilityRefreshType capabilityRefreshType, long j, long j2, long j3, long j4) {
        ICapabilityDiscoveryModule iCapabilityDiscoveryModule;
        if (this.mIsLocalConfigUsed && (iCapabilityDiscoveryModule = this.mDiscoveryModule) != null && !iCapabilityDiscoveryModule.hasVideoOwnCapability(this.mPhoneId)) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: no videoOwnCapability");
            return false;
        }
        if (capabilityRefreshType == CapabilityRefreshType.DISABLED) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: availability fetch disabled");
            return false;
        }
        if (capabilityRefreshType != CapabilityRefreshType.ALWAYS_FORCE_REFRESH && capabilityRefreshType != CapabilityRefreshType.ONLY_IF_NOT_FRESH && capabilityRefreshType != CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: cannot process this availability fetch type");
            return false;
        }
        if (capabilities == null) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: capex is unknown");
            return true;
        }
        if (isCapCacheExpired(capabilities, j3)) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: capex is reset");
            return true;
        }
        if (capabilityRefreshType == CapabilityRefreshType.ALWAYS_FORCE_REFRESH) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: availability fetch forced");
            return true;
        }
        if (capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER)) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: capex is nonRcsUser");
            return false;
        }
        if (this.mIsLocalConfigUsed || capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: check if capex is expired based on capInfoExpiry");
            return capabilities.isExpired(j);
        }
        if (capabilities.isExpired(j2)) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: capex is expired based on serviceAvailabilityInfoExpiry");
            return true;
        }
        IMSLog.i(TAG, this.mPhoneId, "needRefresh: no need refresh");
        return false;
    }

    private boolean isCapCacheExpired(Capabilities capabilities, long j) {
        boolean z = false;
        if (capabilities == null) {
            IMSLog.i(TAG, this.mPhoneId, "isCapCacheExpired: Capability is null");
            return false;
        }
        Date date = new Date();
        if (date.getTime() - capabilities.getTimestamp().getTime() >= 1000 * j && j > 0) {
            z = true;
        }
        if (z) {
            capabilities.resetFeatures();
            IMSLog.i(TAG, this.mPhoneId, "isCapCacheExpired: " + j + " current " + date.getTime() + " timestamp " + capabilities.getTimestamp().getTime() + " diff " + (date.getTime() - capabilities.getTimestamp().getTime()));
        }
        return z;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long isTdelay(long j) {
        boolean z = SemSystemProperties.getBoolean("ro.ril.svlte1x", false);
        if (z || j < 1) {
            IMSLog.i(TAG, this.mPhoneId, "SVLTE: " + z + ", delay: " + j);
            return 0L;
        }
        int networkType = this.mTelephonyManager.getNetworkType();
        TelephonyManagerExt.NetworkTypeExt networkEnumType = TelephonyManagerExt.getNetworkEnumType(networkType);
        TelephonyManagerExt.NetworkTypeExt networkEnumType2 = TelephonyManagerExt.getNetworkEnumType(this.lastNetworkType);
        IMSLog.i(TAG, this.mPhoneId, "SRLTE, current network: " + networkEnumType + ", last network type : " + networkEnumType2);
        this.lastNetworkType = networkType;
        if (networkEnumType2 == TelephonyManagerExt.NetworkTypeExt.NETWORK_TYPE_EHRPD && networkEnumType == TelephonyManagerExt.NetworkTypeExt.NETWORK_TYPE_LTE) {
            return (j - 1) * 1000;
        }
        return 0L;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long updateFeatures(Capabilities capabilities, long j, CapabilityConstants.CapExResult capExResult) {
        if (capabilities == null || capabilities.hasFeature(Capabilities.FEATURE_NOT_UPDATED) || capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER)) {
            return j;
        }
        IMSLog.i(TAG, this.mPhoneId, "updateFeatures: updated features " + Capabilities.dumpFeature(capabilities.getFeature() | j));
        return capabilities.getFeature() | j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needUnpublish(ImsRegistration imsRegistration, ImsRegistration imsRegistration2) {
        if (imsRegistration == null) {
            IMSLog.i(TAG, this.mPhoneId, "needUnpublish: oldInfo: empty");
            return false;
        }
        int i = ImsConstants.SystemSettings.VOLTE_SLOT1.get(this.mContext, 0);
        String str = TAG;
        int i2 = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("needUnpublish: getVoiceTechType: ");
        sb.append(i == 0 ? "VOLTE" : "CS");
        IMSLog.i(str, i2, sb.toString());
        return (imsRegistration.hasService("mmtel") || imsRegistration.hasService("mmtel-video")) && !imsRegistration2.hasService("mmtel") && !imsRegistration2.hasService("mmtel-video") && i == 1;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needUnpublish(int i) {
        TelephonyManagerExt.NetworkTypeExt networkEnumType = TelephonyManagerExt.getNetworkEnumType(this.mTelephonyManager.getNetworkType());
        if (networkEnumType == TelephonyManagerExt.NetworkTypeExt.NETWORK_TYPE_EHRPD) {
            IMSLog.i(TAG, this.mPhoneId, "needUnpublish: network type: " + networkEnumType);
            return false;
        }
        if (DmConfigHelper.getImsSwitchValue(this.mContext, "volte", i) != 1) {
            IMSLog.i(TAG, this.mPhoneId, "needUnpublish: isVoLteEnabled: off");
            return true;
        }
        if (DmConfigHelper.getImsSwitchValue(this.mContext, "mmtel", i) == 1 || DmConfigHelper.getImsSwitchValue(this.mContext, "mmtel-video", i) == 1) {
            return false;
        }
        IMSLog.i(TAG, this.mPhoneId, "needUnpublish: mmtel/mmtel-video: off");
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isSubscribeThrottled(PresenceSubscription presenceSubscription, long j, boolean z, boolean z2) {
        if (z2) {
            IMSLog.i(TAG, this.mPhoneId, "refresh type is always force.");
            return false;
        }
        CapabilityConstants.RequestType requestType = presenceSubscription.getRequestType();
        if (z && (requestType == CapabilityConstants.RequestType.REQUEST_TYPE_PERIODIC || requestType == CapabilityConstants.RequestType.REQUEST_TYPE_CONTACT_CHANGE)) {
            IMSLog.i(TAG, this.mPhoneId, "isSubscribeThrottled: avail fetch after poll, not throttled");
            return false;
        }
        Date date = new Date();
        long time = date.getTime() - presenceSubscription.getTimestamp().getTime();
        IMSLog.i(TAG, this.mPhoneId, "isSubscribeThrottled: interval from " + presenceSubscription.getTimestamp().getTime() + " to " + date.getTime() + ", offset " + time + " sourceThrottlePublish " + j);
        return time < j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void updateOmaDmNodes(int i) {
        boolean z;
        Context context = this.mContext;
        Boolean bool = Boolean.FALSE;
        boolean booleanValue = DmConfigHelper.readBool(context, ConfigConstants.ConfigPath.OMADM_EAB_SETTING, bool, i).booleanValue();
        boolean z2 = true;
        if (this.mIsEABEnabled != booleanValue) {
            this.mIsEABEnabled = booleanValue;
            z = true;
        } else {
            z = false;
        }
        boolean booleanValue2 = DmConfigHelper.readBool(this.mContext, ConfigConstants.ConfigPath.OMADM_VOLTE_ENABLED, bool, i).booleanValue();
        if (this.mIsVLTEnabled != booleanValue2) {
            this.mIsVLTEnabled = booleanValue2;
        } else {
            z2 = z;
        }
        IMSLog.i(TAG, this.mPhoneId, "updateOmaDmNodes: mIsVLTEnabled: " + this.mIsVLTEnabled + " mIsEABEnabled: " + this.mIsEABEnabled + " modified = " + z2);
        if (z2) {
            startServiceBasedOnOmaDmNodes(i);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void startServiceBasedOnOmaDmNodes(int i) {
        String str = TAG;
        IMSLog.i(str, this.mPhoneId, "startServiceBasedOnOmaDmNodes");
        if (this.mDiscoveryModule != null) {
            IMSLog.i(str, this.mPhoneId, "startServiceBasedOnOmaDmNodes: mIsVLTEnabled: " + this.mIsVLTEnabled + " mIsEABEnabled: " + this.mIsEABEnabled);
            if (this.mIsVLTEnabled) {
                return;
            }
            this.mDiscoveryModule.clearCapabilitiesCache(i);
            this.mDiscoveryModule.changeParalysed(true, i);
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public String checkNeedParsing(String str) {
        if (str == null) {
            return str;
        }
        if (!str.startsWith("*67") && !str.startsWith("*82")) {
            return str;
        }
        String substring = str.substring(3);
        IMSLog.i(TAG, this.mPhoneId, "parsing for special character");
        return substring;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean checkCapDiscoveryOption() {
        if (TelephonyManagerExt.getNetworkEnumType(this.mTelephonyManager.getNetworkType()) != TelephonyManagerExt.NetworkTypeExt.NETWORK_TYPE_LTE) {
            return true;
        }
        IMSLog.i(TAG, this.mPhoneId, "return CapDiscoveryOption: " + this.mIsCapDiscoveryOption);
        return this.mIsCapDiscoveryOption;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void updateCapDiscoveryOption() {
        this.mIsCapDiscoveryOption = DmConfigHelper.readBool(this.mContext, ConfigConstants.ConfigPath.OMADM_CAP_DISCOVERY, Boolean.FALSE, this.mPhoneId).booleanValue();
        IMSLog.i(TAG, this.mPhoneId, "update CapDiscoveryOption: " + this.mIsCapDiscoveryOption);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isLocalConfigUsed() {
        IMSLog.i(TAG, this.mPhoneId, "isLocalConfigUsed: " + this.mIsLocalConfigUsed);
        return this.mIsLocalConfigUsed;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void updateLocalConfigUsedState(boolean z) {
        IMSLog.i(TAG, this.mPhoneId, "updateLocalConfigUsedState: change mIsLocalConfigUsed(" + this.mIsLocalConfigUsed + ") to useLocalConfig(" + z + ")");
        this.mIsLocalConfigUsed = z;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isRemoteConfigNeeded(int i) {
        return ConfigUtil.getAutoconfigSourceWithFeature(i, 0) == 0;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void changeServiceDescription() {
        IMSLog.i(TAG, this.mPhoneId, "changeServiceDescription: VoLTE Capabilities Discovery");
        ServiceTuple.setServiceDescription(Capabilities.FEATURE_PRESENCE_DISCOVERY, "VoLTE Capabilities Discovery");
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needStopAutoRejoin(ImError imError) {
        return imError.isOneOf(ImError.REMOTE_USER_INVALID, ImError.FORBIDDEN_RETRY_FALLBACK, ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED, ImError.FORBIDDEN_VERSION_NOT_SUPPORTED, ImError.FORBIDDEN_RESTART_GC_CLOSED, ImError.FORBIDDEN_SIZE_EXCEEDED, ImError.FORBIDDEN_ANONYMITY_NOT_ALLOWED, ImError.FORBIDDEN_NO_DESTINATIONS, ImError.FORBIDDEN_NO_WARNING_HEADER);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleImFailure(ImError imError, ChatData.ChatType chatType) {
        if (imError.isOneOf(ImError.MSRP_TRANSACTION_TIMED_OUT, ImError.MSRP_DO_NOT_SEND_THIS_MESSAGE, ImError.MSRP_UNKNOWN_CONTENT_TYPE, ImError.MSRP_PARAMETERS_OUT_OF_BOUND, ImError.MSRP_SESSION_DOES_NOT_EXIST, ImError.MSRP_SESSION_ON_OTHER_CONNECTION, ImError.MSRP_UNKNOWN_ERROR)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        return new IMnoStrategy.StrategyResponse(isSlmEnabled() ? IMnoStrategy.StatusCode.FALLBACK_TO_SLM : IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public PresenceResponse.PresenceStatusCode handlePresenceFailure(PresenceResponse.PresenceFailureReason presenceFailureReason, boolean z) {
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.FORBIDDEN)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_FORBIDDEN;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_PROVISIONED)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_AT_NOT_PROVISIONED;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_REGISTERED)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_AT_NOT_REGISTERED;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_FOUND)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_NOT_FOUND;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.REQUEST_TIMEOUT)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_REQUEST_TIMEOUT;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.REQUEST_TIMEOUT_RETRY, PresenceResponse.PresenceFailureReason.CONDITIONAL_REQUEST_FAILED)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_FULL_PUBLISH;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.INTERVAL_TOO_SHORT)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_INTERVAL_TOO_SHORT;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.SERVER_INTERNAL_ERROR, PresenceResponse.PresenceFailureReason.SERVICE_UNAVAILABLE, PresenceResponse.PresenceFailureReason.DECLINE)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_RETRY_EXP_BACKOFF;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.NO_RESPONSE)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_NO_RESPONSE;
        }
        return PresenceResponse.PresenceStatusCode.PRESENCE_DISABLE_MODE;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public Capabilities getCapabilitiesInitialInfo(int i, ImsUri imsUri, String str, String str2, long j, String str3) {
        Capabilities capabilities = new Capabilities(imsUri, str, str2, j, str3);
        capabilities.resetFeatures();
        capabilities.setPhoneId(i);
        capabilities.setTimestamp(new Date(0L));
        return capabilities;
    }
}
