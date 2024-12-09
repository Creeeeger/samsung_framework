package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.options.CapabilityConstants;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;
import com.sec.internal.helper.HttpRequest;
import com.sec.internal.helper.RetryTimerUtil;
import com.sec.internal.ims.servicemodules.im.data.FtResumableOption;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.Set;

/* loaded from: classes.dex */
public class DefaultUPMnoStrategy extends DefaultMnoStrategy {
    private static final String TAG = "DefaultUPMnoStrategy";
    protected final int MAX_RETRY_COUNT;

    private boolean hasFeature(long j, long j2) {
        return (j & j2) == j2;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long getThrottledDelay(long j) {
        return j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCloseSessionNeeded(ImError imError) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final boolean isDeleteSessionSupported(ChatData.ChatType chatType, int i) {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isDisplayWarnText() {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final boolean isFTHTTPAutoResumeAndCancelPerConnectionChange() {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final boolean isFirstMsgInvite(boolean z) {
        return z;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFtHttpOnlySupported(boolean z) {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final boolean isResendFTResume(boolean z) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needStopAutoRejoin(ImError imError) {
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long updateAvailableFeatures(Capabilities capabilities, long j, CapabilityConstants.CapExResult capExResult) {
        return j;
    }

    public DefaultUPMnoStrategy(Context context, int i) {
        super(context, i);
        this.MAX_RETRY_COUNT = 1;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleSendingMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z, boolean z2) {
        if (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        if (z) {
            return handleSlmFailure(imError, i);
        }
        return handleImFailure(imError, chatType);
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.DefaultUPMnoStrategy$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError;

        static {
            int[] iArr = new int[ImError.values().length];
            $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError = iArr;
            try {
                iArr[ImError.ALTERNATE_SERVICE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SESSION_TIMED_OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.BUSY_HERE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.CONNECTION_RELEASED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    protected IMnoStrategy.StrategyResponse handleSlmFailure(ImError imError, int i) {
        IMnoStrategy.StatusCode statusCode = IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY;
        int i2 = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[imError.ordinal()];
        if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4 && i < 1) {
            statusCode = IMnoStrategy.StatusCode.RETRY_IMMEDIATE;
        }
        return new IMnoStrategy.StrategyResponse(statusCode);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public FtResumableOption getftResumableOption(CancelReason cancelReason, boolean z, ImDirection imDirection, int i) {
        if (cancelReason == CancelReason.CANCELED_BY_USER || cancelReason == CancelReason.DEVICE_UNREGISTERED || cancelReason == CancelReason.LOW_MEMORY || cancelReason == CancelReason.ERROR || cancelReason == CancelReason.WIFI_DISCONNECTED) {
            return FtResumableOption.MANUALLY_RESUMABLE_ONLY;
        }
        return FtResumableOption.NOTRESUMABLE;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse checkCapability(Set<ImsUri> set, long j, ChatData.ChatType chatType, boolean z) {
        if (chatType == ChatData.ChatType.REGULAR_GROUP_CHAT) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        return checkCapability(set, j);
    }

    protected void logNoCapability(ImsUri imsUri, Capabilities capabilities, long j) {
        String str;
        String str2 = TAG;
        int i = this.mPhoneId;
        StringBuilder sb = new StringBuilder();
        sb.append("checkCapability: No capabilities for ");
        sb.append((!IMSLog.isShipBuild() || imsUri == null) ? imsUri : imsUri.toStringLimit());
        if (capabilities == null) {
            str = "";
        } else {
            str = ": isAvailable=" + capabilities.isAvailable();
        }
        sb.append(str);
        IMSLog.i(str2, i, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.mPhoneId);
        sb2.append(",");
        sb2.append(j);
        sb2.append(",NOCAP,");
        sb2.append(imsUri != null ? imsUri.toStringLimit() : "xx");
        IMSLog.c(LogClass.STRATEGY_CHECKCAPA, sb2.toString());
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse checkCapability(Set<ImsUri> set, long j) {
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        int i = this.mPhoneId;
        if (capDiscModule == null) {
            IMSLog.i(TAG, i, "checkCapability: capDiscModule is null");
            return getStrategyResponse();
        }
        IImModule imModule = getImModule();
        boolean isImCapAlwaysOn = imModule != null ? imModule.getImConfig(i).isImCapAlwaysOn() : false;
        IMSLog.i(TAG, this.mPhoneId, "checkCapability: isCapAlwaysOn = " + isImCapAlwaysOn);
        if (isImCapAlwaysOn) {
            for (ImsUri imsUri : set) {
                Capabilities capabilities = capDiscModule.getCapabilities(imsUri, CapabilityRefreshType.ONLY_IF_NOT_FRESH, i);
                if (capabilities != null && capabilities.getFeature() == Capabilities.FEATURE_OFFLINE_RCS_USER) {
                    return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
                }
                if (capabilities == null || !capabilities.isAvailable() || !hasOneOfFeatures(capabilities, j)) {
                    logNoCapability(imsUri, capabilities, j);
                    return getStrategyResponse();
                }
            }
        } else {
            for (ImsUri imsUri2 : set) {
                Capabilities capabilities2 = capDiscModule.getCapabilities(imsUri2, CapabilityRefreshType.ONLY_IF_NOT_FRESH, i);
                if (capabilities2 == null || !capabilities2.isAvailable() || !hasOneOfFeaturesAvailable(capabilities2, j)) {
                    logNoCapability(imsUri2, capabilities2, j);
                    return getStrategyResponse();
                }
            }
        }
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needCapabilitiesUpdate(CapabilityConstants.CapExResult capExResult, Capabilities capabilities, long j, long j2) {
        if (capabilities == null || capExResult == CapabilityConstants.CapExResult.USER_NOT_FOUND) {
            IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: Capability is null");
            return true;
        }
        if (capExResult == CapabilityConstants.CapExResult.USER_UNAVAILABLE && !capabilities.hasFeature(Capabilities.FEATURE_NOT_UPDATED)) {
            IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: User is offline");
            return false;
        }
        if (capExResult != CapabilityConstants.CapExResult.UNCLASSIFIED_ERROR && capExResult != CapabilityConstants.CapExResult.FORBIDDEN_403) {
            return capExResult != CapabilityConstants.CapExResult.FAILURE;
        }
        IMSLog.i(TAG, this.mPhoneId, "needCapabilitiesUpdate: do not change anything");
        return false;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long updateFeatures(Capabilities capabilities, long j, CapabilityConstants.CapExResult capExResult) {
        if (capabilities == null || capabilities.hasFeature(Capabilities.FEATURE_NOT_UPDATED) || capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER) || j == Capabilities.FEATURE_NON_RCS_USER) {
            IMSLog.i(TAG, this.mPhoneId, "updateFeatures: set features " + Capabilities.dumpFeature(j));
            return j;
        }
        if (j == Capabilities.FEATURE_NOT_UPDATED) {
            IMSLog.i(TAG, this.mPhoneId, "updateFeatures: feature is NOT_UPDATED, remains previous features " + Capabilities.dumpFeature(capabilities.getFeature()));
            return capabilities.getFeature();
        }
        if (capabilities.hasFeature(Capabilities.FEATURE_CHATBOT_ROLE) && !hasFeature(j, Capabilities.FEATURE_CHATBOT_ROLE) && (hasFeature(j, Capabilities.FEATURE_CHATBOT_CHAT_SESSION) || hasFeature(j, Capabilities.FEATURE_CHATBOT_STANDALONE_MSG))) {
            IMSLog.i(TAG, this.mPhoneId, "updateFeatures: remove chatbot role feature " + Capabilities.dumpFeature(j));
            return j;
        }
        IMSLog.i(TAG, this.mPhoneId, "updateFeatures: updated features " + Capabilities.dumpFeature(capabilities.getFeature() | j));
        return capabilities.getFeature() | j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCustomizedFeature(long j) {
        return ((long) Capabilities.FEATURE_GEO_VIA_SMS) == j || ((long) Capabilities.FEATURE_FT_VIA_SMS) == j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needRefresh(Capabilities capabilities, CapabilityRefreshType capabilityRefreshType, long j, long j2, long j3, long j4) {
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
        if ((capabilityRefreshType == CapabilityRefreshType.FORCE_REFRESH_UCE && capabilities.isExpired(j2)) || capabilityRefreshType == CapabilityRefreshType.ALWAYS_FORCE_REFRESH) {
            return true;
        }
        if (capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH && capabilities.isExpired(j)) {
            return true;
        }
        if (capabilityRefreshType != CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX) {
            return false;
        }
        if (capabilities.getLegacyLatching()) {
            j = j2;
        }
        return capabilities.isExpired(j);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final boolean isNeedToReportToRegiGvn(ImError imError) {
        return imError.isOneOf(ImError.FORBIDDEN_NO_WARNING_HEADER);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final IMnoStrategy.StrategyResponse handleFtMsrpInterruption(ImError imError) {
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final IMnoStrategy.StrategyResponse handleSlmFailure(ImError imError) {
        if (imError == ImError.REMOTE_PARTY_DECLINED) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public final IMnoStrategy.StrategyResponse handleAttachFileFailure(ImSessionClosedReason imSessionClosedReason) {
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleImFailure(ImError imError, ChatData.ChatType chatType) {
        if (imError.isOneOf(ImError.MSRP_TRANSACTION_TIMED_OUT, ImError.MSRP_DO_NOT_SEND_THIS_MESSAGE, ImError.MSRP_UNKNOWN_CONTENT_TYPE, ImError.MSRP_PARAMETERS_OUT_OF_BOUND, ImError.MSRP_SESSION_DOES_NOT_EXIST, ImError.MSRP_SESSION_ON_OTHER_CONNECTION, ImError.MSRP_UNKNOWN_ERROR)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        return new IMnoStrategy.StrategyResponse(isSlmEnabled() ? IMnoStrategy.StatusCode.FALLBACK_TO_SLM : IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleFtFailure(ImError imError, ChatData.ChatType chatType) {
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.HttpStrategyResponse handleFtHttpDownloadError(HttpRequest httpRequest) {
        CancelReason cancelReason = CancelReason.ERROR;
        int code = httpRequest.code();
        int i = 3;
        if (code == 403) {
            handleFtHttpRequestFailure(CancelReason.FORBIDDEN_FT_HTTP, ImDirection.INCOMING, false);
        } else if (code == 404 || code == 410) {
            cancelReason = CancelReason.VALIDITY_EXPIRED;
            i = -1;
        } else if (code == 503) {
            i = RetryTimerUtil.getRetryAfter(httpRequest.header(HttpRequest.HEADER_RETRY_AFTER));
        }
        return new IMnoStrategy.HttpStrategyResponse(cancelReason, i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public PresenceResponse.PresenceStatusCode handlePresenceFailure(PresenceResponse.PresenceFailureReason presenceFailureReason, boolean z) {
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_FOUND, PresenceResponse.PresenceFailureReason.DOES_NOT_EXIST_ANYWHERE, PresenceResponse.PresenceFailureReason.METHOD_NOT_ALLOWED, PresenceResponse.PresenceFailureReason.USER_NOT_REGISTERED, PresenceResponse.PresenceFailureReason.USER_NOT_PROVISIONED)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_NO_SUBSCRIBE;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.INTERVAL_TOO_SHORT, PresenceResponse.PresenceFailureReason.INVALID_REQUEST, PresenceResponse.PresenceFailureReason.REQUEST_TIMEOUT_RETRY, PresenceResponse.PresenceFailureReason.CONDITIONAL_REQUEST_FAILED)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_FULL_PUBLISH;
        }
        return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_RETRY_PUBLISH;
    }
}
