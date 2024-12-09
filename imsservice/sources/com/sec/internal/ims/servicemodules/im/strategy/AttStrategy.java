package com.sec.internal.ims.servicemodules.im.strategy;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.sec.ims.options.Capabilities;
import com.sec.ims.options.CapabilityRefreshType;
import com.sec.ims.util.ImsUri;
import com.sec.internal.constants.ims.servicemodules.im.ChatData;
import com.sec.internal.constants.ims.servicemodules.im.ImDirection;
import com.sec.internal.constants.ims.servicemodules.im.ImError;
import com.sec.internal.constants.ims.servicemodules.im.reason.CancelReason;
import com.sec.internal.constants.ims.servicemodules.im.reason.ImSessionClosedReason;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceResponse;
import com.sec.internal.constants.ims.servicemodules.presence.PresenceSubscription;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.DmConfigHelper;
import com.sec.internal.helper.translate.MappingTranslator;
import com.sec.internal.ims.registry.ImsRegistry;
import com.sec.internal.ims.servicemodules.im.ImConfig;
import com.sec.internal.ims.servicemodules.im.data.FtResumableOption;
import com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy;
import com.sec.internal.ims.settings.DeviceConfigManager;
import com.sec.internal.ims.settings.RcsPolicySettings;
import com.sec.internal.ims.util.ChatbotUriUtil;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.servicemodules.im.IImModule;
import com.sec.internal.interfaces.ims.servicemodules.options.ICapabilityDiscoveryModule;
import com.sec.internal.log.IMSLog;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;

/* loaded from: classes.dex */
public final class AttStrategy extends DefaultRCSMnoStrategy {
    private static final String TAG = "AttStrategy";
    private final int CONSECUTIVE_SUBSCRIBE_THRESHOLD;
    private final int LIMITED_SUBSCRIBE_INTERVAL;
    private final int MAX_RETRY_COUNT;
    private final int RETRY_AFTER_MAX;
    private final HashSet<ImError> mForceRefreshRemoteCapa;
    private final int[] mFtHttpMOSessionRetryTimerList;
    private final int[] mFtResumeRetryMOTimerList;
    private final int[] mFtResumeRetryMTTimerList;
    private String mRcsPhaseVersion;
    private final long[] mReconfigurationTimerList;
    private final HashSet<ImError> mRetryNeededErrorsForFt;
    private final HashSet<ImError> mRetryNeededErrorsForIm;
    private final HashSet<ImError> mRetryNeededFT_changecontact;
    private final HashSet<ImError> mRetryNeededFT_retryafter;
    private final HashSet<ImError> mRetryNeededIM_changecontact;
    private final HashSet<ImError> mRetryNeededIM_retryafter;
    private final ArrayBlockingQueue<PresenceSubscription> mSubscriptionQueue;

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public int getFtHttpRetryInterval(int i, int i2) {
        return i2 == 0 ? 5 : 3;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isDisplayBotError() {
        return true;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isPresenceReadyToRequest(boolean z, boolean z2) {
        return z && !z2;
    }

    public AttStrategy(Context context, int i) {
        super(context, i);
        this.MAX_RETRY_COUNT = 1;
        this.CONSECUTIVE_SUBSCRIBE_THRESHOLD = 10;
        this.LIMITED_SUBSCRIBE_INTERVAL = 1000;
        this.RETRY_AFTER_MAX = 5;
        this.mSubscriptionQueue = new ArrayBlockingQueue<>(10, true);
        this.mRetryNeededErrorsForIm = new HashSet<>();
        this.mRetryNeededIM_retryafter = new HashSet<>();
        this.mRetryNeededIM_changecontact = new HashSet<>();
        this.mRetryNeededFT_retryafter = new HashSet<>();
        this.mRetryNeededFT_changecontact = new HashSet<>();
        this.mRetryNeededErrorsForFt = new HashSet<>();
        this.mForceRefreshRemoteCapa = new HashSet<>();
        this.mFtResumeRetryMTTimerList = new int[]{1, 600, 3600, 86400, 172800, 259200};
        this.mFtResumeRetryMOTimerList = new int[]{1};
        this.mFtHttpMOSessionRetryTimerList = new int[]{0, 10, 20};
        this.mReconfigurationTimerList = new long[]{0, 14400000, 28800000, 57600000, 115200000};
        init();
    }

    private void init() {
        this.mRcsPhaseVersion = ImsRegistry.getString(this.mPhoneId, GlobalSettingsConstants.RCS.RCS_PHASE_VERSION, "");
        HashSet<ImError> hashSet = this.mRetryNeededErrorsForIm;
        ImError imError = ImError.GONE;
        hashSet.add(imError);
        HashSet<ImError> hashSet2 = this.mRetryNeededErrorsForIm;
        ImError imError2 = ImError.UNSUPPORTED_URI_SCHEME;
        hashSet2.add(imError2);
        this.mRetryNeededErrorsForIm.add(ImError.NETWORK_ERROR);
        HashSet<ImError> hashSet3 = this.mRetryNeededErrorsForIm;
        ImError imError3 = ImError.BAD_GATEWAY;
        hashSet3.add(imError3);
        this.mRetryNeededErrorsForIm.add(ImError.MSRP_DO_NOT_SEND_THIS_MESSAGE);
        HashSet<ImError> hashSet4 = this.mRetryNeededErrorsForIm;
        ImError imError4 = ImError.REQUEST_PENDING;
        hashSet4.add(imError4);
        HashSet<ImError> hashSet5 = this.mRetryNeededErrorsForIm;
        ImError imError5 = ImError.TRANSACTION_DOESNT_EXIST;
        hashSet5.add(imError5);
        HashSet<ImError> hashSet6 = this.mRetryNeededErrorsForIm;
        ImError imError6 = ImError.TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK;
        hashSet6.add(imError6);
        HashSet<ImError> hashSet7 = this.mRetryNeededErrorsForIm;
        ImError imError7 = ImError.LOOP_DETECTED;
        hashSet7.add(imError7);
        HashSet<ImError> hashSet8 = this.mRetryNeededErrorsForIm;
        ImError imError8 = ImError.TOO_MANY_HOPS;
        hashSet8.add(imError8);
        this.mRetryNeededErrorsForFt.add(ImError.FORBIDDEN_RETRY_FALLBACK);
        this.mRetryNeededErrorsForFt.add(imError2);
        this.mRetryNeededErrorsForFt.add(imError3);
        this.mRetryNeededErrorsForFt.add(imError4);
        this.mRetryNeededErrorsForFt.add(imError5);
        this.mRetryNeededErrorsForFt.add(imError6);
        this.mRetryNeededErrorsForFt.add(imError);
        this.mRetryNeededErrorsForFt.add(imError7);
        this.mRetryNeededErrorsForFt.add(imError8);
        HashSet<ImError> hashSet9 = this.mRetryNeededFT_retryafter;
        ImError imError9 = ImError.INTERNAL_SERVER_ERROR;
        hashSet9.add(imError9);
        this.mRetryNeededFT_retryafter.add(ImError.SERVICE_UNAVAILABLE);
        HashSet<ImError> hashSet10 = this.mRetryNeededFT_retryafter;
        ImError imError10 = ImError.BUSY_EVERYWHERE;
        hashSet10.add(imError10);
        this.mRetryNeededIM_retryafter.add(imError9);
        this.mRetryNeededIM_retryafter.add(imError10);
        HashSet<ImError> hashSet11 = this.mRetryNeededFT_changecontact;
        ImError imError11 = ImError.MULTIPLE_CHOICES;
        hashSet11.add(imError11);
        HashSet<ImError> hashSet12 = this.mRetryNeededFT_changecontact;
        ImError imError12 = ImError.MOVED_PERMANENTLY;
        hashSet12.add(imError12);
        HashSet<ImError> hashSet13 = this.mRetryNeededFT_changecontact;
        ImError imError13 = ImError.MOVED_TEMPORARILY;
        hashSet13.add(imError13);
        HashSet<ImError> hashSet14 = this.mRetryNeededFT_changecontact;
        ImError imError14 = ImError.USE_PROXY;
        hashSet14.add(imError14);
        this.mRetryNeededIM_changecontact.add(imError11);
        this.mRetryNeededIM_changecontact.add(imError12);
        this.mRetryNeededIM_changecontact.add(imError13);
        this.mRetryNeededIM_changecontact.add(imError14);
        this.mForceRefreshRemoteCapa.add(ImError.REMOTE_USER_INVALID);
        this.mForceRefreshRemoteCapa.add(imError);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleSendingMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z, boolean z2, boolean z3) {
        IMnoStrategy.StrategyResponse strategyResponse;
        if (z) {
            strategyResponse = handleSlmFailure(imError);
        } else if (z3 && !z2) {
            strategyResponse = handleSendingFtHttpMessageFailure(imError, i);
        } else {
            IMnoStrategy.StatusCode retryStrategy = getRetryStrategy(i, imError, i2, chatType);
            if (retryStrategy == IMnoStrategy.StatusCode.NO_RETRY) {
                strategyResponse = handleImFailure(imError, chatType);
            } else {
                strategyResponse = new IMnoStrategy.StrategyResponse(retryStrategy);
            }
        }
        return z2 ? (strategyResponse.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_SLM || strategyResponse.getStatusCode() == IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY || imError == ImError.GONE || imError == ImError.REQUEST_PENDING) ? new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NO_RETRY) : strategyResponse : strategyResponse;
    }

    private IMnoStrategy.StrategyResponse handleSendingFtHttpMessageFailure(ImError imError, int i) {
        int ftHttpSessionRetryTimer = getFtHttpSessionRetryTimer(i, imError);
        if (ftHttpSessionRetryTimer == -1) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        if (ftHttpSessionRetryTimer == 0) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.RETRY_IMMEDIATE);
        }
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.RETRY_AFTER);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleSendingFtMsrpMessageFailure(ImError imError, int i, int i2, ChatData.ChatType chatType, boolean z) {
        IMnoStrategy.StatusCode ftMsrpRetryStrategy = getFtMsrpRetryStrategy(i, imError, i2);
        if (ftMsrpRetryStrategy == IMnoStrategy.StatusCode.NO_RETRY) {
            return handleFtFailure(imError, chatType);
        }
        return new IMnoStrategy.StrategyResponse(ftMsrpRetryStrategy);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse checkCapability(Set<ImsUri> set, long j, ChatData.ChatType chatType, boolean z) {
        IMSLog.i(TAG, this.mPhoneId, "checkCapability->capability:" + j + ", isBroadcastMsg:" + z);
        if (ChatData.ChatType.isGroupChat(chatType) && z) {
            return getStrategyResponse();
        }
        if (ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        return checkCapability(set, j);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse checkCapability(Set<ImsUri> set, long j) {
        String str;
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        int i = this.mPhoneId;
        if (capDiscModule == null) {
            IMSLog.i(TAG, i, "checkCapability: capDiscModule is null");
            return getStrategyResponse();
        }
        Capabilities[] capabilities = capDiscModule.getCapabilities(new ArrayList(set), CapabilityRefreshType.ONLY_IF_NOT_FRESH, Capabilities.FEATURE_OFFLINE_RCS_USER, i);
        Iterator<ImsUri> it = set.iterator();
        while (it.hasNext()) {
            String str2 = (ImsUri) it.next();
            Capabilities findMatchingCapabilities = findMatchingCapabilities(str2, capabilities);
            if (findMatchingCapabilities == null || !findMatchingCapabilities.isAvailable() || !hasOneOfFeaturesAvailable(findMatchingCapabilities, j)) {
                String str3 = TAG;
                int i2 = this.mPhoneId;
                StringBuilder sb = new StringBuilder();
                sb.append("checkCapability: No capabilities for ");
                sb.append((Object) ((!IMSLog.isShipBuild() || str2 == null) ? str2 : str2.toStringLimit()));
                if (findMatchingCapabilities == null) {
                    str = "";
                } else {
                    str = ": isAvailable=" + findMatchingCapabilities.isAvailable();
                }
                sb.append(str);
                IMSLog.i(str3, i2, sb.toString());
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.mPhoneId);
                sb2.append(",");
                sb2.append(j);
                sb2.append(",NOCAP,");
                sb2.append(str2 != null ? str2.toStringLimit() : "xx");
                IMSLog.c(LogClass.STRATEGY_CHECKCAPA, sb2.toString());
                return getStrategyResponse();
            }
        }
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
    }

    private Capabilities findMatchingCapabilities(ImsUri imsUri, Capabilities[] capabilitiesArr) {
        if (capabilitiesArr == null) {
            IMSLog.e(TAG, this.mPhoneId, "findMatchingCapabilities: capexList is null");
            return null;
        }
        for (Capabilities capabilities : capabilitiesArr) {
            if (capabilities.getUri().equals(imsUri)) {
                return capabilities;
            }
        }
        return null;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StatusCode getRetryStrategy(int i, ImError imError, int i2, ChatData.ChatType chatType) {
        if (i < 1) {
            if (this.mRetryNeededErrorsForIm.contains(imError)) {
                if (imError == ImError.GONE && ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType)) {
                    return IMnoStrategy.StatusCode.NO_RETRY;
                }
                return IMnoStrategy.StatusCode.RETRY_IMMEDIATE;
            }
            if (this.mRetryNeededIM_retryafter.contains(imError)) {
                if (i2 > 0 && i2 <= 5) {
                    return IMnoStrategy.StatusCode.RETRY_AFTER;
                }
                return IMnoStrategy.StatusCode.NO_RETRY;
            }
            if (this.mRetryNeededIM_changecontact.contains(imError)) {
                return IMnoStrategy.StatusCode.NO_RETRY;
            }
        }
        return IMnoStrategy.StatusCode.NO_RETRY;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StatusCode getFtMsrpRetryStrategy(int i, ImError imError, int i2) {
        if (i < 1) {
            if (this.mRetryNeededErrorsForFt.contains(imError)) {
                return IMnoStrategy.StatusCode.RETRY_IMMEDIATE;
            }
            if (this.mRetryNeededFT_retryafter.contains(imError)) {
                if (i2 > 0 && i2 <= 5) {
                    return IMnoStrategy.StatusCode.RETRY_AFTER;
                }
                return IMnoStrategy.StatusCode.NO_RETRY;
            }
            if (this.mRetryNeededFT_changecontact.contains(imError)) {
                return IMnoStrategy.StatusCode.NO_RETRY;
            }
        }
        return IMnoStrategy.StatusCode.NO_RETRY;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCapabilityValidUri(ImsUri imsUri) {
        if (ChatbotUriUtil.hasUriBotPlatform(imsUri, this.mPhoneId)) {
            return true;
        }
        return StrategyUtils.isCapabilityValidUriForUS(imsUri, this.mPhoneId);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public void forceRefreshCapability(Set<ImsUri> set, boolean z, ImError imError) {
        ICapabilityDiscoveryModule capDiscModule = getCapDiscModule();
        int i = this.mPhoneId;
        if (capDiscModule == null) {
            IMSLog.i(TAG, i, "forceRefreshCapability: capDiscModule is null");
            return;
        }
        IMSLog.i(TAG, i, "forceRefreshCapability: uris " + IMSLog.numberChecker(set));
        if (z) {
            capDiscModule.getCapabilities(new ArrayList(set), CapabilityRefreshType.ONLY_IF_NOT_FRESH, Capabilities.FEATURE_FT_SERVICE | Capabilities.FEATURE_CHAT_CPM, i);
        }
        if (imError == null || !this.mForceRefreshRemoteCapa.contains(imError)) {
            return;
        }
        capDiscModule.getCapabilities(new ArrayList(set), CapabilityRefreshType.ALWAYS_FORCE_REFRESH, Capabilities.FEATURE_CHATBOT_CHAT_SESSION | Capabilities.FEATURE_CHATBOT_STANDALONE_MSG, i);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public FtResumableOption getftResumableOption(CancelReason cancelReason, boolean z, ImDirection imDirection, int i) {
        if (cancelReason == null) {
            return FtResumableOption.NOTRESUMABLE;
        }
        if (z) {
            return getResumableOptionGroupFt(cancelReason, imDirection);
        }
        return getResumableOptionSingleFt(cancelReason, imDirection);
    }

    private FtResumableOption getResumableOptionSingleFt(CancelReason cancelReason, ImDirection imDirection) {
        IMSLog.i(TAG, this.mPhoneId, "getResumableOptionSingleFt, cancelreason: " + cancelReason.getId() + " direction:" + imDirection.getId());
        return AttFtCancelReasonResumableOptionCodeMap.translateCancelReason(cancelReason);
    }

    private FtResumableOption getResumableOptionGroupFt(CancelReason cancelReason, ImDirection imDirection) {
        IMSLog.i(TAG, this.mPhoneId, "getResumableOptionGroupFt, cancelreason: " + cancelReason.getId() + " direction:" + imDirection.getId());
        if ((imDirection == ImDirection.INCOMING && cancelReason == CancelReason.CANCELED_BY_REMOTE) || cancelReason == CancelReason.CANCELED_NOTIFICATION) {
            return FtResumableOption.NOTRESUMABLE;
        }
        if (cancelReason == CancelReason.ERROR || cancelReason == CancelReason.DEVICE_UNREGISTERED) {
            return FtResumableOption.MANUALLY_AUTOMATICALLY_RESUMABLE;
        }
        return FtResumableOption.MANUALLY_RESUMABLE_ONLY;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long calSubscribeDelayTime(PresenceSubscription presenceSubscription) {
        long j;
        String str = TAG;
        IMSLog.i(str, this.mPhoneId, "calSubscribeDelayTime");
        try {
            PresenceSubscription m32clone = presenceSubscription.m32clone();
            if (this.mSubscriptionQueue.remainingCapacity() == 0) {
                IMSLog.i(str, this.mPhoneId, "calSubscribeDelayTime: threshold is maxed");
                Date timestamp = this.mSubscriptionQueue.peek() != null ? this.mSubscriptionQueue.peek().getTimestamp() : null;
                if (timestamp != null) {
                    j = m32clone.getTimestamp().getTime() - timestamp.getTime();
                    IMSLog.i(str, this.mPhoneId, "calSubscribeDelayTime: interval from " + timestamp.getTime() + " to " + m32clone.getTimestamp().getTime() + ", offset " + j);
                } else {
                    j = 0;
                }
                if (j >= 0 && j < 1000) {
                    return 1000 - j;
                }
                try {
                    this.mSubscriptionQueue.take();
                } catch (InterruptedException unused) {
                    IMSLog.e(TAG, this.mPhoneId, "calSubscribeDelayTime: current queue is empty");
                }
            }
            this.mSubscriptionQueue.add(m32clone);
            return 0L;
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isSubscribeThrottled(PresenceSubscription presenceSubscription, long j, boolean z, boolean z2) {
        if (presenceSubscription.getState() == 5) {
            IMSLog.i(TAG, this.mPhoneId, "isSubscribeThrottled: retried subscription");
            return false;
        }
        Date date = new Date();
        long time = date.getTime() - presenceSubscription.getTimestamp().getTime();
        IMSLog.i(TAG, this.mPhoneId, "isSubscribeThrottled: state " + presenceSubscription.getState() + " interval from " + presenceSubscription.getTimestamp().getTime() + " to " + date.getTime() + ", offset " + time + " sourceThrottlePublish " + j + " isAlwaysForce " + z2);
        return z2 ? presenceSubscription.getState() == 0 && time < j : time < j;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
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
        if (capabilityRefreshType == CapabilityRefreshType.ALWAYS_FORCE_REFRESH) {
            return true;
        }
        if (capabilityRefreshType == CapabilityRefreshType.FORCE_REFRESH_UCE) {
            if (!capabilities.hasFeature(Capabilities.FEATURE_NON_RCS_USER)) {
                return true;
            }
            IMSLog.i(TAG, this.mPhoneId, "needRefresh: non capabilitydisovery capable user");
            return capabilities.isExpired(j);
        }
        if ((capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH && capabilities.isExpired(j)) || capabilityRefreshType == CapabilityRefreshType.FORCE_REFRESH_SYNC) {
            return true;
        }
        return capabilityRefreshType == CapabilityRefreshType.ONLY_IF_NOT_FRESH_IN_MSG_CTX && capabilities.isExpired(j);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needRefresh(Capabilities capabilities, CapabilityRefreshType capabilityRefreshType, long j, long j2, long j3, long j4) {
        return needRefresh(capabilities, capabilityRefreshType, j, j3);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public int getNextFileTransferAutoResumeTimer(ImDirection imDirection, int i) {
        if (imDirection == ImDirection.INCOMING) {
            int[] iArr = this.mFtResumeRetryMTTimerList;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        if (imDirection != ImDirection.OUTGOING) {
            return -1;
        }
        int[] iArr2 = this.mFtResumeRetryMOTimerList;
        if (i < iArr2.length) {
            return iArr2[i];
        }
        return -1;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public long calThrottledPublishRetryDelayTime(long j, long j2) {
        Date date = new Date();
        if (j2 > 0 && j > 0) {
            long j3 = j2 * 1000;
            if (date.getTime() - j < j3) {
                long time = (j + j3) - date.getTime();
                IMSLog.i(TAG, this.mPhoneId, "calThrottledPublishRetryDelayTime: throttled. retry in " + time + "ms");
                return time;
            }
        }
        return 0L;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFTViaHttp(ImConfig imConfig, Set<ImsUri> set, ChatData.ChatType chatType) {
        Uri ftHttpCsUri = imConfig.getFtHttpCsUri();
        if (!"RCS_ATT_PHASE2".equals(this.mRcsPhaseVersion) || ftHttpCsUri == null || TextUtils.isEmpty(ftHttpCsUri.toString()) || !isFtHttpRegistered()) {
            return false;
        }
        if (chatType == ChatData.ChatType.ONE_TO_ONE_CHAT) {
            return checkFtHttpCapability(set);
        }
        return chatType == ChatData.ChatType.REGULAR_GROUP_CHAT;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFtHttpOnlySupported(boolean z) {
        return "RCS_ATT_PHASE2".equals(this.mRcsPhaseVersion) && z;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public int getFtHttpSessionRetryTimer(int i, ImError imError) {
        if (ImError.MSRP_UNKNOWN_CONTENT_TYPE != imError && ImError.MSRP_TRANSACTION_TIMED_OUT != imError) {
            int[] iArr = this.mFtHttpMOSessionRetryTimerList;
            if (i < iArr.length) {
                return iArr[i];
            }
        }
        return -1;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleFtHttpRequestFailure(CancelReason cancelReason, ImDirection imDirection, boolean z) {
        if (cancelReason.equals(CancelReason.FORBIDDEN_FT_HTTP) || cancelReason.equals(CancelReason.UNAUTHORIZED)) {
            IImModule imModule = getImModule();
            if (imModule != null) {
                imModule.reconfiguration(this.mReconfigurationTimerList);
            }
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        if (imDirection == ImDirection.OUTGOING && cancelReason.equals(CancelReason.ERROR) && !z) {
            return getStrategyResponse();
        }
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean checkMainSwitchOff(Context context, int i) {
        return "RCS_ATT_PHASE2".equals(this.mRcsPhaseVersion) && DmConfigHelper.getImsSwitchValue(context, DeviceConfigManager.RCS, i) != 1;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isHTTPUsedForEmptyFtHttpPOST() {
        return "RCS_ATT_PHASE2".equals(this.mRcsPhaseVersion);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isFTHTTPAutoResumeAndCancelPerConnectionChange() {
        return !"RCS_ATT_PHASE2".equals(this.mRcsPhaseVersion);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isCloseSessionNeeded(ImError imError) {
        return imError.isOneOf(ImError.REMOTE_PARTY_DECLINED, ImError.FORBIDDEN_NO_WARNING_HEADER, ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED, ImError.EXCEED_MAXIMUM_RECIPIENTS);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isNeedToReportToRegiGvn(ImError imError) {
        if ("RCS_ATT_PHASE2".equals(this.mRcsPhaseVersion)) {
            return false;
        }
        return imError.isOneOf(ImError.FORBIDDEN_SERVICE_NOT_AUTHORISED, ImError.FORBIDDEN_NO_WARNING_HEADER);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleImFailure(ImError imError, ChatData.ChatType chatType) {
        if (imError.isOneOf(ImError.REMOTE_PARTY_DECLINED, ImError.FORBIDDEN_NO_WARNING_HEADER, ImError.SESSION_DOESNT_EXIST)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        if (imError.isOneOf(ImError.FORBIDDEN_VERSION_NOT_SUPPORTED, ImError.NORMAL_RELEASE_BEARER_UNAVAILABLE, ImError.GROUPCHAT_DISABLED)) {
            return new IMnoStrategy.StrategyResponse(ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) ? IMnoStrategy.StatusCode.DISPLAY_ERROR : IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
        }
        if (imError.isOneOf(ImError.EXCEED_MAXIMUM_RECIPIENTS)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR, IMnoStrategy.ErrorNotificationId.EXCEED_MAXIMUM_RECIPIENTS);
        }
        return new IMnoStrategy.StrategyResponse(ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) ? IMnoStrategy.StatusCode.DISPLAY_ERROR : IMnoStrategy.StatusCode.FALLBACK_TO_SLM);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleFtFailure(ImError imError, ChatData.ChatType chatType) {
        if (imError.isOneOf(ImError.REMOTE_PARTY_DECLINED, ImError.FORBIDDEN_NO_WARNING_HEADER, ImError.REMOTE_PARTY_CANCELED, ImError.SESSION_DOESNT_EXIST)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR);
        }
        if (imError.isOneOf(ImError.FORBIDDEN_VERSION_NOT_SUPPORTED)) {
            return new IMnoStrategy.StrategyResponse(ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) ? IMnoStrategy.StatusCode.DISPLAY_ERROR : IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
        }
        if (imError.isOneOf(ImError.DEVICE_UNREGISTERED)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.NONE);
        }
        if (imError.isOneOf(ImError.EXCEED_MAXIMUM_RECIPIENTS)) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.DISPLAY_ERROR, IMnoStrategy.ErrorNotificationId.EXCEED_MAXIMUM_RECIPIENTS);
        }
        return new IMnoStrategy.StrategyResponse(ChatData.ChatType.isGroupChatIdBasedGroupChat(chatType) ? IMnoStrategy.StatusCode.DISPLAY_ERROR : IMnoStrategy.StatusCode.FALLBACK_TO_SLM);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public PresenceResponse.PresenceStatusCode handlePresenceFailure(PresenceResponse.PresenceFailureReason presenceFailureReason, boolean z) {
        if (z) {
            if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.BAD_EVENT)) {
                return PresenceResponse.PresenceStatusCode.PRESENCE_AT_BAD_EVENT;
            }
            if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_FOUND)) {
                return PresenceResponse.PresenceStatusCode.PRESENCE_RETRY_EXP_BACKOFF;
            }
            if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.INTERVAL_TOO_SHORT, PresenceResponse.PresenceFailureReason.INVALID_REQUEST)) {
                return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_FULL_PUBLISH;
            }
            return PresenceResponse.PresenceStatusCode.PRESENCE_REQUIRE_RETRY_PUBLISH;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.USER_NOT_FOUND)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_NO_SUBSCRIBE;
        }
        if (presenceFailureReason.isOneOf(PresenceResponse.PresenceFailureReason.NO_RESPONSE)) {
            return PresenceResponse.PresenceStatusCode.PRESENCE_NO_RESPONSE;
        }
        return PresenceResponse.PresenceStatusCode.NONE;
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public IMnoStrategy.StrategyResponse handleAttachFileFailure(ImSessionClosedReason imSessionClosedReason) {
        if (imSessionClosedReason == ImSessionClosedReason.CLOSED_WITH_480_REASON_CODE) {
            return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
        }
        return getStrategyResponse();
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultRCSMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean isDeleteSessionSupported(ChatData.ChatType chatType, int i) {
        return chatType == ChatData.ChatType.REGULAR_GROUP_CHAT;
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
    public IMnoStrategy.StrategyResponse getUploadedFileFallbackSLMTech() {
        return new IMnoStrategy.StrategyResponse(IMnoStrategy.StatusCode.FALLBACK_TO_LEGACY);
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean needToCapabilityCheckForImdn(boolean z) {
        if (!z) {
            return true;
        }
        IMSLog.i(TAG, this.mPhoneId, "needToCapabilityCheckForImdn: failed");
        return false;
    }

    /* renamed from: com.sec.internal.ims.servicemodules.im.strategy.AttStrategy$1, reason: invalid class name */
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
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.TRANSACTION_DOESNT_EXIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.GONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[ImError.SESSION_DOESNT_EXIST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public boolean shouldRestartSession(ImError imError) {
        int i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[imError.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return true;
        }
        return i == 4 && !boolSetting(RcsPolicySettings.RcsPolicy.GONE_SHOULD_ENDSESSION);
    }

    public static class AttFtCancelReasonResumableOptionCodeMap {
        private static final MappingTranslator<CancelReason, FtResumableOption> mAttFtResumableOptionTranslator;

        static {
            MappingTranslator.Builder builder = new MappingTranslator.Builder();
            CancelReason cancelReason = CancelReason.UNKNOWN;
            FtResumableOption ftResumableOption = FtResumableOption.MANUALLY_RESUMABLE_ONLY;
            MappingTranslator.Builder map = builder.map(cancelReason, ftResumableOption).map(CancelReason.CANCELED_BY_USER, ftResumableOption);
            CancelReason cancelReason2 = CancelReason.CANCELED_BY_REMOTE;
            FtResumableOption ftResumableOption2 = FtResumableOption.NOTRESUMABLE;
            MappingTranslator.Builder map2 = map.map(cancelReason2, ftResumableOption2).map(CancelReason.CANCELED_BY_SYSTEM, ftResumableOption2).map(CancelReason.REJECTED_BY_REMOTE, ftResumableOption2).map(CancelReason.TIME_OUT, ftResumableOption).map(CancelReason.REMOTE_TEMPORARILY_UNAVAILABLE, ftResumableOption);
            CancelReason cancelReason3 = CancelReason.ERROR;
            FtResumableOption ftResumableOption3 = FtResumableOption.MANUALLY_AUTOMATICALLY_RESUMABLE;
            mAttFtResumableOptionTranslator = map2.map(cancelReason3, ftResumableOption3).map(CancelReason.CONNECTION_RELEASED, ftResumableOption).map(CancelReason.DEVICE_UNREGISTERED, ftResumableOption3).map(CancelReason.NOT_AUTHORIZED, ftResumableOption2).map(CancelReason.FORBIDDEN_NO_RETRY_FALLBACK, ftResumableOption2).map(CancelReason.MSRP_SESSION_ERROR_NO_RESUME, ftResumableOption2).map(CancelReason.CANCELED_NOTIFICATION, ftResumableOption2).buildTranslator();
        }

        public static FtResumableOption translateCancelReason(CancelReason cancelReason) {
            MappingTranslator<CancelReason, FtResumableOption> mappingTranslator = mAttFtResumableOptionTranslator;
            if (mappingTranslator.isTranslationDefined(cancelReason)) {
                return mappingTranslator.translate(cancelReason);
            }
            return FtResumableOption.MANUALLY_AUTOMATICALLY_RESUMABLE;
        }
    }

    @Override // com.sec.internal.ims.servicemodules.im.strategy.DefaultMnoStrategy, com.sec.internal.ims.servicemodules.im.strategy.IMnoStrategy
    public ImSessionClosedReason handleSessionFailure(ImError imError, boolean z) {
        int i;
        if (z && ((i = AnonymousClass1.$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError[imError.ordinal()]) == 4 || i == 5)) {
            return ImSessionClosedReason.ALL_PARTICIPANTS_LEFT;
        }
        return ImSessionClosedReason.NONE;
    }
}
