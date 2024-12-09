package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import com.sec.ims.ImsRegistration;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.RoutingType;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImErrorReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionStopReason;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.RetryTimerUtil;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.servicemodules.im.MessageBase;
import com.sec.internal.ims.servicemodules.im.data.FtResumableOption;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.UriGenerator;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class DefaultMnoStrategy implements IMnoStrategy {
    protected static final int MAX_RETRY_COUNT_AFTER_REGI = 4;
    private static final String TAG = "DefaultMnoStrategy";
    protected Context mContext;
    protected final int mPhoneId;
    protected RcsPolicySettings mPolicySettings;
    protected RcsPolicyType mRcsPolicyType = RcsPolicyType.DEFAULT_RCS;

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long calSubscribeDelayTime(PresenceSubscription presenceSubscription) {
        return 0L;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long calThrottledPublishRetryDelayTime(long j, long j2) {
        return 0L;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void changeServiceDescription() {
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean checkCapDiscoveryOption() {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract IMnoStrategy.StrategyResponse checkCapability(Set<ImsUri> set, long j);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract IMnoStrategy.StrategyResponse checkCapability(Set<ImsUri> set, long j, ChatData.ChatType chatType, boolean z);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean checkMainSwitchOff(Context context, int i) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public String checkNeedParsing(String str) {
        return str;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean checkSlmFileType(String str) {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void forceRefreshCapability(Set<ImsUri> set, boolean z, ImError imError) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public int getFtHttpRetryInterval(int i, int i2) {
        return i;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public int getFtHttpSessionRetryTimer(int i, ImError imError) {
        return -1;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public int getNextFileTransferAutoResumeTimer(ImDirection imDirection, int i) {
        return -1;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract long getThrottledDelay(long j);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract IMnoStrategy.StrategyResponse handleAttachFileFailure(ImSessionClosedReason imSessionClosedReason);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract IMnoStrategy.StrategyResponse handleFtFailure(ImError imError, ChatData.ChatType chatType);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract IMnoStrategy.StrategyResponse handleFtMsrpInterruption(ImError imError);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract IMnoStrategy.StrategyResponse handleImFailure(ImError imError, ChatData.ChatType chatType);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract PresenceResponse.PresenceStatusCode handlePresenceFailure(PresenceResponse.PresenceFailureReason presenceFailureReason, boolean z);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract IMnoStrategy.StrategyResponse handleSendingMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z, boolean z2);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract IMnoStrategy.StrategyResponse handleSlmFailure(ImError imError);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isBMode(boolean z) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCapabilityValidUri(ImsUri imsUri) {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean isCloseSessionNeeded(ImError imError);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean isCustomizedFeature(long j);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean isDeleteSessionSupported(ChatData.ChatType chatType, int i);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isDisplayBotError() {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isDisplayWarnText() {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean isFTHTTPAutoResumeAndCancelPerConnectionChange();

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean isFirstMsgInvite(boolean z);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFtHttpOnlySupported(boolean z) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isHTTPUsedForEmptyFtHttpPOST() {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isLocalConfigUsed() {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean isNeedToReportToRegiGvn(ImError imError);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isPresenceReadyToRequest(boolean z, boolean z2) {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isRemoteConfigNeeded(int i) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean isResendFTResume(boolean z);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isRevocationAvailableMessage(MessageBase messageBase) {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long isTdelay(long j) {
        return 0L;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean needCapabilitiesUpdate(CapabilityConstants.CapExResult capExResult, Capabilities capabilities, long j, long j2);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean needRefresh(Capabilities capabilities, CapabilityRefreshType capabilityRefreshType, long j, long j2, long j3, long j4);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract boolean needStopAutoRejoin(ImError imError);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needToCapabilityCheckForImdn(boolean z) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needUnpublish(int i) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needUnpublish(ImsRegistration imsRegistration, ImsRegistration imsRegistration2) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void startServiceBasedOnOmaDmNodes(int i) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract long updateAvailableFeatures(Capabilities capabilities, long j, CapabilityConstants.CapExResult capExResult);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void updateCapDiscoveryOption() {
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public abstract long updateFeatures(Capabilities capabilities, long j, CapabilityConstants.CapExResult capExResult);

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void updateLocalConfigUsedState(boolean z) {
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void updateOmaDmNodes(int i) {
    }

    public DefaultMnoStrategy(Context context, int i) {
        this.mContext = context;
        this.mPhoneId = i;
        this.mPolicySettings = new RcsPolicySettings(context, i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public RcsPolicyType getPolicyType() {
        return this.mRcsPolicyType;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void setPolicyType(RcsPolicyType rcsPolicyType) {
        this.mRcsPolicyType = rcsPolicyType;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean boolSetting(String str) {
        return this.mPolicySettings.readBool(str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public int intSetting(String str) {
        return this.mPolicySettings.readInt(str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public String stringSetting(String str) {
        return this.mPolicySettings.readString(str);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public List<String> stringArraySetting(String str) {
        return this.mPolicySettings.readStringArray(str);
    }

    protected ICapabilityDiscoveryModule getCapDiscModule() {
        if (!ImsRegistry.isReady()) {
            IMSLog.i(TAG, this.mPhoneId, "getCapDiscModule: getInstance is null");
            return null;
        }
        return ImsRegistry.getServiceModuleManager().getCapabilityDiscoveryModule();
    }

    protected IImModule getImModule() {
        if (!ImsRegistry.isReady()) {
            IMSLog.i(TAG, this.mPhoneId, "getImModule: getInstance is null");
            return null;
        }
        return ImsRegistry.getServiceModuleManager().getImModule();
    }

    boolean hasOneOfFeatures(Capabilities capabilities, long j) {
        if (capabilities != null) {
            r0 = (capabilities.getFeature() & j) > 0;
            if (!r0) {
                String str = TAG;
                int i = this.mPhoneId;
                StringBuilder sb = new StringBuilder();
                sb.append("hasOneOfFeatures:");
                sb.append(capabilities.getUri() == null ? "" : capabilities.getUri().toStringLimit());
                sb.append(" getFeature()=");
                sb.append(capabilities.getFeature());
                sb.append(", features=");
                sb.append(j);
                sb.append(", ret=false");
                IMSLog.i(str, i, sb.toString());
            }
        }
        return r0;
    }

    boolean hasOneOfFeaturesAvailable(Capabilities capabilities, long j) {
        if (capabilities != null) {
            r0 = (capabilities.getAvailableFeatures() & j) > 0 || j == ((long) Capabilities.FEATURE_OFFLINE_RCS_USER);
            if (!r0) {
                String str = TAG;
                int i = this.mPhoneId;
                StringBuilder sb = new StringBuilder();
                sb.append("hasOneOfFeaturesAvailable:");
                sb.append(capabilities.getUri() == null ? "" : capabilities.getUri().toStringLimit());
                sb.append(" getFeature()=");
                sb.append(capabilities.getFeature());
                sb.append(", features=");
                sb.append(j);
                sb.append(", ret=false");
                IMSLog.i(str, i, sb.toString());
            }
        }
        return r0;
    }

    protected boolean isSlmEnabled() {
        IImModule imModule = getImModule();
        return imModule != null && imModule.isServiceRegistered(this.mPhoneId, "slm") && imModule.getImConfig(this.mPhoneId).getSlmAuth() == ImConstants.SlmAuth.ENABLED;
    }

    protected IMnoStrategy.StrategyResponse getStrategyResponse() {
        return new IMnoStrategy.StrategyResponse(isSlmEnabled() ? IMnoStrategy.StatusCode.FALLBACK_TO_SLM : IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleSendingMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z, boolean z2, boolean z3) {
        IMnoStrategy.StrategyResponse handleSendingMessageFailure = handleSendingMessageFailure(imError, i, i2, chatType, z, z3);
        return z2 ? (handleSendingMessageFailure.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_SLM || handleSendingMessageFailure.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY || imError == ImError.GONE || imError == ImError.REQUEST_PENDING) ? new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NO_RETRY) : handleSendingMessageFailure : handleSendingMessageFailure;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleSendingFtMsrpMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z) {
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StatusCode getRetryStrategy(int i, ImError imError, int i2, ChatData.ChatType chatType) {
        if (ImError.FORBIDDEN_NO_WARNING_HEADER.equals(imError) && i < 4) {
            IMSLog.i(TAG, "getRetryStrategy FORBIDDEN_NO_WARNING_HEADER; currentRetryCount= " + i);
            return IMnoStrategy.StatusCode.RETRY_AFTER_REGI;
        }
        return IMnoStrategy.StatusCode.NO_RETRY;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StatusCode getFtMsrpRetryStrategy(int i, ImError imError, int i2) {
        return IMnoStrategy.StatusCode.NO_RETRY;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public FtResumableOption getftResumableOption(CancelReason cancelReason, boolean z, ImDirection imDirection, int i) {
        if (cancelReason == CancelReason.CANCELED_BY_USER || cancelReason == CancelReason.LOW_MEMORY) {
            return FtResumableOption.MANUALLY_RESUMABLE_ONLY;
        }
        return FtResumableOption.NOTRESUMABLE;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isSubscribeThrottled(PresenceSubscription presenceSubscription, long j, boolean z, boolean z2) {
        if (presenceSubscription.getState() == 5) {
            IMSLog.i(TAG, this.mPhoneId, "isSubscribeThrottled: retried subscription");
            return false;
        }
        Date date = new Date();
        long time = date.getTime() - presenceSubscription.getTimestamp().getTime();
        IMSLog.i(TAG, this.mPhoneId, "isSubscribeThrottled: interval from " + presenceSubscription.getTimestamp().getTime() + " to " + date.getTime() + ", offset " + time + " sourceThrottlePublish " + j);
        return time < j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needRefresh(Capabilities capabilities, CapabilityRefreshType capabilityRefreshType, long j, long j2) {
        if (capabilityRefreshType == CapabilityRefreshType.DISABLED) {
            return false;
        }
        if (capabilities == null) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: Capability is null");
            return true;
        }
        if (capabilities.hasFeature(Capabilities.FEATURE_NOT_UPDATED)) {
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: fetch failed capabilities");
            return true;
        }
        if (capabilityRefreshType == CapabilityRefreshType.FORCE_REFRESH_UCE || capabilityRefreshType == CapabilityRefreshType.ALWAYS_FORCE_REFRESH || capabilityRefreshType == CapabilityRefreshType.FORCE_REFRESH_SYNC) {
            return true;
        }
        if (capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH && capabilities.isExpired(j)) {
            return true;
        }
        return capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX && capabilities.isExpired(j);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needPoll(Capabilities capabilities, long j) {
        return needRefresh(capabilities, CapabilityRefreshType.ONLY_IF_NOT_FRESH, j, 0L);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public ImDirection convertToImDirection(String str) {
        return ImDirection.INCOMING;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFTViaHttp(ImConfig imConfig, Set<ImsUri> set, ChatData.ChatType chatType) {
        return imConfig.getFtDefaultMech() == ImConstants.FtMech.HTTP && isFtHttpRegistered() && (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) || checkFtHttpCapability(set));
    }

    protected boolean checkFtHttpCapability(Set<ImsUri> set) {
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        if (capDiscModule == null) {
            IMSLog.i(TAG, this.mPhoneId, "checkFtHttpCapability: capDiscModule is null");
            return false;
        }
        Iterator<ImsUri> it = set.iterator();
        while (it.hasNext()) {
            Capabilities capabilities = capDiscModule.getCapabilities(it.next(), CapabilityRefreshType.ONLY_IF_NOT_FRESH, this.mPhoneId);
            String str = TAG;
            int i = this.mPhoneId;
            StringBuilder sb = new StringBuilder();
            sb.append("checkFtHttpCapability, capx: = ");
            sb.append(capabilities != null ? capabilities.toString() : null);
            IMSLog.i(str, i, sb.toString());
            if (capabilities == null || !capabilities.hasFeature(Capabilities.FEATURE_FT_HTTP) || !capabilities.isAvailable()) {
                IMSLog.i(str, this.mPhoneId, "No FT HTTP capability");
                return false;
            }
        }
        return true;
    }

    protected boolean isFtHttpRegistered() {
        IImModule imModule = getImModule();
        return imModule != null && imModule.isServiceRegistered(this.mPhoneId, "ft_http");
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public RoutingType getMsgRoutingType(ImsUri imsUri, ImsUri imsUri2, ImsUri imsUri3, ImsUri imsUri4, boolean z) {
        return RoutingType.NONE;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleFtHttpRequestFailure(CancelReason cancelReason, ImDirection imDirection, boolean z) {
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.HttpStrategyResponse handleFtHttpDownloadError(HttpRequest httpRequest) {
        CancelReason cancelReason = CancelReason.ERROR;
        int code = httpRequest.code();
        int i = 3;
        if (code == 401) {
            handleFtHttpRequestFailure(CancelReason.UNAUTHORIZED, ImDirection.INCOMING, false);
        } else if (code == 403) {
            handleFtHttpRequestFailure(CancelReason.FORBIDDEN_FT_HTTP, ImDirection.INCOMING, false);
        } else if (code == 503) {
            i = RetryTimerUtil.getRetryAfter(httpRequest.header(HttpRequest.HEADER_RETRY_AFTER));
        }
        return new IMnoStrategy.HttpStrategyResponse(cancelReason, i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public String getFtHttpUserAgent(ImConfig imConfig) {
        return imConfig.getUserAgent();
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public Uri getFtHttpCsUri(ImConfig imConfig, Set<ImsUri> set, boolean z, boolean z2) {
        return imConfig.getFtHttpCsUri();
    }

    protected boolean checkUserAvailableOffline(Set<ImsUri> set) {
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        if (capDiscModule == null) {
            IMSLog.i(TAG, this.mPhoneId, "checkUserAvailableOffline: capDiscModule is null");
            return false;
        }
        Iterator<ImsUri> it = set.iterator();
        while (it.hasNext()) {
            Capabilities capabilities = capDiscModule.getCapabilities(it.next(), CapabilityRefreshType.ONLY_IF_NOT_FRESH, this.mPhoneId);
            String str = TAG;
            int i = this.mPhoneId;
            StringBuilder sb = new StringBuilder();
            sb.append("checkUserAvailableOffline, capx: = ");
            sb.append(capabilities != null ? capabilities.toString() : null);
            IMSLog.i(str, i, sb.toString());
            boolean z = capabilities != null;
            boolean z2 = z && capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER);
            boolean z3 = z && capabilities.hasFeature(Capabilities.FEATURE_NOT_UPDATED);
            if (z && !capabilities.isAvailable() && !z2 && !z3) {
                IMSLog.i(str, this.mPhoneId, "USER_AVAILABLE_OFFLINE..!!");
                return true;
            }
        }
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public Set<ImsUri> getNetworkPreferredUri(UriGenerator uriGenerator, Set<ImsUri> set) {
        return uriGenerator.getNetworkPreferredUri(UriGenerator.URIServiceType.RCS_URI, set);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public String getErrorReasonForStrategyResponse(MessageBase messageBase, IMnoStrategy.StrategyResponse strategyResponse) {
        if (strategyResponse == null) {
            return null;
        }
        if (strategyResponse.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY || strategyResponse.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY_CFS) {
            return ImErrorReason.FRAMEWORK_ERROR_FALLBACKFAILED.toString();
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public ImSessionStopReason getSessionStopReason(boolean z) {
        return z ? ImSessionStopReason.INVOLUNTARILY : ImSessionStopReason.CLOSE_1_TO_1_SESSION;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final boolean checkImsiBasedRegi(ImsRegistration imsRegistration) {
        ISimManager simManagerFromSimSlot;
        if (!boolSetting(RcsPolicySettings.RcsPolicy.CHECK_IMSIBASED_REGI) || (simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId)) == null) {
            return false;
        }
        String imsi = simManagerFromSimSlot.getImsi();
        ImsUri registeredImpu = imsRegistration.getRegisteredImpu();
        IMSLog.s(TAG, "checkImsiBasedRegi: impu " + registeredImpu);
        if (registeredImpu != null && imsi != null && registeredImpu.getUser() != null) {
            return registeredImpu.getUser().contains(imsi);
        }
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final boolean isWarnSizeFile(Network network, long j, long j2, boolean z) {
        if (j2 == 0 || j <= j2) {
            return false;
        }
        return (boolSetting(RcsPolicySettings.RcsPolicy.IGNORE_WIFI_WARNSIZE) && z) ? false : true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public ImConstants.ChatbotMessagingTech checkChatbotMessagingTech(ImConfig imConfig, boolean z, Set<ImsUri> set) {
        return ImConstants.ChatbotMessagingTech.NONE;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public Capabilities getCapabilitiesInitialInfo(int i, ImsUri imsUri, String str, String str2, long j, String str3) {
        Capabilities capabilities = new Capabilities(imsUri, str, str2, j, str3);
        capabilities.resetFeatures();
        capabilities.setPhoneId(i);
        return capabilities;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse getUploadedFileFallbackSLMTech() {
        return getStrategyResponse();
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError;

        static {
            int[] iArr = new int[ImError.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError = iArr;
            try {
                iArr[ImError.REMOTE_USER_INVALID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SESSION_DOESNT_EXIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.TRANSACTION_DOESNT_EXIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.GONE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean shouldRestartSession(ImError imError) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[imError.ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            return true;
        }
        return i == 5 && !boolSetting(RcsPolicySettings.RcsPolicy.GONE_SHOULD_ENDSESSION);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean loadRcsSettings(boolean z) {
        return this.mPolicySettings.load(z);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public ImSessionClosedReason handleSessionFailure(ImError imError, boolean z) {
        return ImSessionClosedReason.NONE;
    }
}
